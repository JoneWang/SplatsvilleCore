import Foundation

public struct SplatsvilleCore {
    var text = "Hello, World!"
    
    public static func requestSchedule(completion: (() -> Void)? = nil) {
        let sessionConfigure = URLSessionConfiguration.default
        sessionConfigure.httpAdditionalHeaders = ["Content-Type": "application/json"]
        sessionConfigure.timeoutIntervalForRequest = 30
        sessionConfigure.requestCachePolicy = .reloadIgnoringLocalCacheData
        let session = URLSession(configuration: sessionConfigure)

        guard let url = URL(string: "https://api.imink.jone.wang/schedules") else {
               return
        }
        let urlRequest = URLRequest(url: url)
        let task = session.dataTask(with: urlRequest) { (data, response, error) in
            guard let resultData = data else {
                return
            }
            do {
                let jsonObject = try JSONSerialization.jsonObject(with: resultData, options: .mutableLeaves)
                print(jsonObject)
            } catch {
                print("Error")
            }
        }
        task.resume()
    }
}
