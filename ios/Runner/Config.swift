//
// FaceTec Device SDK config file.
// Auto-generated via the FaceTec SDK Configuration Wizard
//
import UIKit
import Foundation
import FaceTecSDK

class Config {

    static var productionKey = """
    # FaceTec Mobile SDK license
    appId      = "com.gbwallet,com.gbprimepay.gbwallet,com.gbekyc.gbEKyc,com.gb_e_kyc.gb_e_kyc"
    expiryDate = 2022-07-10
    key        = 003044022029b42fa16638e0ff74bc80775a9d408100752f7ae628c1a0ba7ad4f64a8a79650220716a579d64491f404977ddafd7eab2eaacc424a946a9cca6920fcc448d732654
    """

    static let DeviceKeyIdentifier = "d0ROAIJuEB3zug5WFGF0iKzXPpdyeB4D" //Prod
    // static let DeviceKeyIdentifier = "dCevDS3lwvVPXTBurpz7W8ytnGtuvvGX" //Dev

    static let BaseURL = "https://api.gbwallet.co/facetec" //Prod api
    // static let BaseURL = "https://api-uat.gbwallet.co/facetec" //Dev api
    // static let BaseURL = "https://api.facetec.com/api/v3.1/biometrics" //Dev

//    FaceScan Encryption Key Test
     static let PublicFaceScanEncryptionKey = """
         -----BEGIN PUBLIC KEY-----
         MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5PxZ3DLj+zP6T6HFgzzk
         M77LdzP3fojBoLasw7EfzvLMnJNUlyRb5m8e5QyyJxI+wRjsALHvFgLzGwxM8ehz
         DqqBZed+f4w33GgQXFZOS4AOvyPbALgCYoLehigLAbbCNTkeY5RDcmmSI/sbp+s6
         mAiAKKvCdIqe17bltZ/rfEoL3gPKEfLXeN549LTj3XBp0hvG4loQ6eC1E1tRzSkf
         GJD4GIVvR+j12gXAaftj3ahfYxioBH7F7HQxzmWkwDyn3bqU54eaiB7f0ftsPpWM
         ceUaqkL2DZUvgN0efEJjnWy5y1/Gkq5GGWCROI9XG/SwXJ30BbVUehTbVcD70+ZF
         8QIDAQAB
         -----END PUBLIC KEY-----
         """

    //initialize Prod
    static func initializeFaceTecSDKFromAutogeneratedConfig(completion: @escaping (Bool)->()) {
        FaceTec.sdk.initializeInProductionMode(
            productionKeyText: productionKey,
            deviceKeyIdentifier: Config.DeviceKeyIdentifier,
            faceScanEncryptionKey: Config.PublicFaceScanEncryptionKey,
            completion: { initializationSuccessful in completion(initializationSuccessful) }
        )
    }

    //initialize Dev
    // static func initializeFaceTecSDKFromAutogeneratedConfig(completion: @escaping (Bool)->()) {
    //     FaceTec.sdk.initializeInDevelopmentMode(
    //         deviceKeyIdentifier: Config.DeviceKeyIdentifier,
    //         faceScanEncryptionKey: Config.PublicFaceScanEncryptionKey,
    //         completion: { initializationSuccessful in completion(initializationSuccessful) }
    //     )
    // }

    // -------------------------------------
    // This app can modify the customization to demonstrate different look/feel preferences
    // NOTE: This function is auto-populated by the FaceTec SDK Configuration Wizard based on your UI Customizations you picked in the Configuration Wizard GUI.
    public static func retrieveConfigurationWizardCustomization() -> FaceTecCustomization {

        // For Color Customization
        let outerBackgroundColor = UIColor(hexString: "#ffffff")
        let frameColor = UIColor(hexString: "#ffffff")
        let borderColor = UIColor(hexString: "#02416d")
        let ovalColor = UIColor(hexString: "#02416d")
        let dualSpinnerColor = UIColor(hexString: "#02416d")
        let textColor = UIColor(hexString: "#02416d")
        let buttonAndFeedbackBarColor =  UIColor(hexString: "#02416d")
        let buttonAndFeedbackBarTextColor = UIColor(hexString: "#ffffff")
        let buttonColorHighlight =  UIColor(hexString: "#02416d")
        let buttonColorDisabled =  UIColor(hexString: "#B9CCDE")
        let feedbackBackgroundLayer = CAGradientLayer.init()
        feedbackBackgroundLayer.colors = [buttonAndFeedbackBarColor.cgColor, buttonAndFeedbackBarColor.cgColor]
        feedbackBackgroundLayer.locations = [0,1]
        feedbackBackgroundLayer.startPoint = CGPoint.init(x: 0, y: 0)
        feedbackBackgroundLayer.endPoint = CGPoint.init(x: 1, y: 0)

        // For Frame Corner Radius Customization
        let frameCornerRadius: Int32 = 20

        let cancelImage = UIImage(named: "FaceTec_cancel")
        let cancelButtonLocation: FaceTecCancelButtonLocation = .topLeft

        // For image Customization
        let yourAppLogoImage = UIImage(named: "FaceTec_your_app_logo")
        let securityWatermarkImage: FaceTecSecurityWatermarkImage = .faceTec

        // Set a default customization
        let defaultCustomization = FaceTecCustomization()


        // Set Frame Customization
        defaultCustomization.frameCustomization.cornerRadius = frameCornerRadius
        defaultCustomization.frameCustomization.backgroundColor = frameColor
        defaultCustomization.frameCustomization.borderColor = borderColor

        // Set Overlay Customization
        defaultCustomization.overlayCustomization.brandingImage = yourAppLogoImage
        defaultCustomization.overlayCustomization.backgroundColor = outerBackgroundColor

        // Set Guidance Customization
        defaultCustomization.guidanceCustomization.backgroundColors = [frameColor, frameColor]
        defaultCustomization.guidanceCustomization.foregroundColor = textColor
        defaultCustomization.guidanceCustomization.buttonBackgroundNormalColor = buttonAndFeedbackBarColor
        defaultCustomization.guidanceCustomization.buttonBackgroundDisabledColor = buttonColorDisabled
        defaultCustomization.guidanceCustomization.buttonBackgroundHighlightColor = buttonColorHighlight
        defaultCustomization.guidanceCustomization.buttonTextNormalColor = buttonAndFeedbackBarTextColor
        defaultCustomization.guidanceCustomization.buttonTextDisabledColor = buttonAndFeedbackBarTextColor
        defaultCustomization.guidanceCustomization.buttonTextHighlightColor = buttonAndFeedbackBarTextColor
        defaultCustomization.guidanceCustomization.retryScreenImageBorderColor = borderColor
        defaultCustomization.guidanceCustomization.retryScreenOvalStrokeColor = borderColor

        // Set Oval Customization
        defaultCustomization.ovalCustomization.strokeColor = ovalColor
        defaultCustomization.ovalCustomization.progressColor1 = dualSpinnerColor
        defaultCustomization.ovalCustomization.progressColor2 = dualSpinnerColor

        // Set Feedback Customization
        defaultCustomization.feedbackCustomization.backgroundColor = feedbackBackgroundLayer
        defaultCustomization.feedbackCustomization.textColor = buttonAndFeedbackBarTextColor

        // Set Cancel Customization
        defaultCustomization.cancelButtonCustomization.customImage = cancelImage
        defaultCustomization.cancelButtonCustomization.location = cancelButtonLocation

        // Set Result Screen Customization
        defaultCustomization.resultScreenCustomization.backgroundColors = [frameColor, frameColor]
        defaultCustomization.resultScreenCustomization.foregroundColor = textColor
        defaultCustomization.resultScreenCustomization.activityIndicatorColor = buttonAndFeedbackBarColor
        defaultCustomization.resultScreenCustomization.resultAnimationBackgroundColor = buttonAndFeedbackBarColor
        defaultCustomization.resultScreenCustomization.resultAnimationForegroundColor = buttonAndFeedbackBarTextColor
        defaultCustomization.resultScreenCustomization.uploadProgressFillColor = buttonAndFeedbackBarColor

        // Set Security Watermark Customization
        defaultCustomization.securityWatermarkImage = securityWatermarkImage

        // Set ID Scan Customization
        defaultCustomization.idScanCustomization.selectionScreenBackgroundColors = [frameColor, frameColor]
        defaultCustomization.idScanCustomization.selectionScreenForegroundColor = textColor
        defaultCustomization.idScanCustomization.reviewScreenBackgroundColors = [frameColor, frameColor]
        defaultCustomization.idScanCustomization.reviewScreenForegroundColor = buttonAndFeedbackBarTextColor
        defaultCustomization.idScanCustomization.reviewScreenTextBackgroundColor = buttonAndFeedbackBarColor
        defaultCustomization.idScanCustomization.captureScreenForegroundColor = buttonAndFeedbackBarTextColor
        defaultCustomization.idScanCustomization.captureScreenTextBackgroundColor = buttonAndFeedbackBarColor
        defaultCustomization.idScanCustomization.buttonBackgroundNormalColor = buttonAndFeedbackBarColor
        defaultCustomization.idScanCustomization.buttonBackgroundDisabledColor = buttonColorDisabled
        defaultCustomization.idScanCustomization.buttonBackgroundHighlightColor = buttonColorHighlight
        defaultCustomization.idScanCustomization.buttonTextNormalColor = buttonAndFeedbackBarTextColor
        defaultCustomization.idScanCustomization.buttonTextDisabledColor = buttonAndFeedbackBarTextColor
        defaultCustomization.idScanCustomization.buttonTextHighlightColor = buttonAndFeedbackBarTextColor
        defaultCustomization.idScanCustomization.captureScreenBackgroundColor = frameColor
        defaultCustomization.idScanCustomization.captureFrameStrokeColor = borderColor


        return defaultCustomization
    }

    static var currentCustomization: FaceTecCustomization = retrieveConfigurationWizardCustomization()

    // -------------------------------------
    // Boolean to indicate the FaceTec SDK Configuration Wizard was used to generate this file.
    // In this Sample App, if this variable is true, a "Config Wizard Theme" will be added to this App's Design Showcase,
    // and choosing this option will set the FaceTec SDK UI/UX Customizations to the Customizations that you selected in the
    // Configuration Wizard.
    static let wasSDKConfiguredWithConfigWizard = true

}