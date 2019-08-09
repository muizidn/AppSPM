import Foundation
import CLib
import CxxWrapper
import StaticLib

public struct App {
    public init() {}
    public func run() {
        run_from_c()
        run_from_cxxwrapper()
        run_from_staticlib()
    }
}
