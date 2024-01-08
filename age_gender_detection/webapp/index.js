// Require demo baseclass script
const DemoBase = require(global.__basedir + "/demobase")

// Create demo class
class USBCameraHTTPDemp extends DemoBase {
    // Create constructor that excepts application
    constructor(app) {
        // Call super constructor with app and directory path
        super(app, __dirname)

        // Do any other setup you'd like
    }

    // Set up any API endpoints for the demo application
    setupRoutes() {
        // Always call super()
        super.setupRoutes()
    }

    // Handle when request to start demo is received
    startDemo(data) {
        // Run a process on hardware to print all devices
        this.startProcess()
    }

    // Handle when request to stop demo is received
    stopDemo(data) {
        this.stopDemo()
    }
}

// Export class
module.exports = USBCameraHTTPDemp
