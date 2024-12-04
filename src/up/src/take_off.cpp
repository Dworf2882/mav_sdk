#include <rclcpp/rclcpp.hpp>
#include <mavsdk/mavsdk.h>
#include <mavsdk/plugins/telemetry/telemetry.h>
#include <mavsdk/plugins/action/action.h>

using namespace mavsdk;
class TakeOff : public rclcpp::Node {
    public:
    TakeOff() : Node("take_off") {
        Mavsdk mavsdk{Mavsdk::Configuration{Mavsdk::ComponentType::GroundStation}};
        ConnectionResult connection_result = mavsdk.add_any_connection("udp://:14540");
        auto system = mavsdk.first_autopilot(3.0);
    if (!system) {
        std::cerr << "Timed out waiting for system\n";
    }

    // Instantiate plugins.
    auto telemetry = Telemetry{system.value()};
    auto action = Action{system.value()};

    // We want to listen to the altitude of the drone at 1 Hz.
    const auto set_rate_result = telemetry.set_rate_position(1.0);
    if (set_rate_result != Telemetry::Result::Success) {
        std::cerr << "Setting rate failed: " << set_rate_result << '\n';

    }

    // Set up callback to monitor altitude while the vehicle is in flight
    telemetry.subscribe_position([](Telemetry::Position position) {
        std::cout << "Altitude: " << position.relative_altitude_m << " m\n";
    });

    // Check until vehicle is ready to arm
    if (telemetry.health_all_ok() != true) {
        std::cout << "Vehicle is getting ready to arm\n";
    }

    // Arm vehicle
    std::cout << "Arming...\n";
    const Action::Result arm_result = action.arm();

    if (arm_result != Action::Result::Success) {
        std::cerr << "Arming failed: " << arm_result << '\n';

    }

    // Take off
    std::cout << "Taking off...\n";
    const Action::Result takeoff_result = action.takeoff();
    if (takeoff_result != Action::Result::Success) {
        std::cerr << "Takeoff failed: " << takeoff_result << '\n';

    }

    // Let it hover for a bit before landing again.


    std::cout << "Landing...\n";
    const Action::Result land_result = action.land();
    if (land_result != Action::Result::Success) {
        std::cerr << "Land failed: " << land_result << '\n';

    }

    // Check if vehicle is still in air
    if (telemetry.in_air() == true) {
        std::cout << "Vehicle is landing...\n";

    }
    std::cout << "Landed!\n";

    std::cout << "Finished...\n";

        // if (connection_result != ConnectionResult::Success) {
        //     RCLCPP_ERROR(get_logger(), "Connection failed");
        // }

        // auto system = mavsdk.first_autopilot(3.0);
        // if (!system) {
        //     RCLCPP_ERROR(get_logger(), "No autopilot found");
        // }
        // auto telemetry = Telemetry{system.value()};
        // auto action = Action{system.value()};
        // if(telemetry.health_all_ok() != true) {
        //     RCLCPP_ERROR(get_logger(), "Health not ok");
        // }
        // const Action::Result arm_result = action.arm();
        // if (arm_result != Action::Result::Success) {
        //     RCLCPP_ERROR(get_logger(), "Arming failed");
        // }
        // const Action::Result takeoff_result = action.takeoff();
        // if (takeoff_result != Action::Result::Success) {
        //     RCLCPP_ERROR(get_logger(), "Takeoff failed");
    }
};
int main(int argc, char** argv) {
    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<TakeOff>());
    rclcpp::shutdown();
    return 0;
}
