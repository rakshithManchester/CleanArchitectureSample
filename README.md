Sample application MVVMVGSeries has Three screens 
  a) Login b) Home c) Detail.

  a) Login : LoginViewController
         : LoginCoordinator
         : Login(Storyboard)
         : LoginViewModel
         
b) Home  : HomeViewController
         : HomeCoordinator
         : Home(Storyboard)
         : HomeViewModel
         : TableViewDelegate
         : WeatherTableViewCell
         : WeatherForecastBusinessModel
         : WeatherForecast
         
c) Detail : DetailViewController
         : LoginCoordinator
         : Detail(Storyboard)
         : DetailCoordinator

Common files are - Coordinator
                   MainCoordinator
                   Utils
                   StoryBoarded
                   SceneDelegate
                   AppDelegate
