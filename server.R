server <- function(input,output,session){
  rv <- reactiveValues(contacts = contacts)
  
  crmServer("crm_ns",rv)
  invoiceServer("invoice_ns",rv)
  # youtubeServer("youtube_ns",rv)
  
  output$logo_home <- renderImage({
    # Return a list containing the filename and alt text
    list(src = "www/MDS.PNG")
    
  }, deleteFile = FALSE)
  
  output$home_ui <- renderUI({
    fluidPage(
      useShinyalert(),
      box(title = "Home Page Summary",solidHeader = TRUE,width = 5,height =350,status = "primary",
                   h4("Welcome!",style="font-weight:bold;"),
                   h5("This tool is a lightweight CRM ",
                      style="font-weight:bold;"),
                   h4("To get Started:"),
                   h5("1.  Upload and Update your contacts.",style="font-weight:bold;"),
                   h5("2.  Try creating an Invoice",style="font-weight:bold;"),
                   h5("3.  This is demo/beginning of this package so please provide feedback if you have some!",style="font-weight:bold;")),
      box(title = "shinyCRM Demo",solidHeader = TRUE,width = 7,height =550,color="black",
          HTML('<iframe src="https://drive.google.com/file/d/1bpHOLX8RkjMzXAj5LtHyMrsmpZ06Gipg/preview" width="700" height="480"></iframe>')
      # socialButton(
      #   href = "https://github.com/mattmajestic",
      #   icon = "github"
      # )
      ))
  })

  
}