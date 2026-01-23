; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!295194 () Bool)

(assert start!295194)

(declare-fun b!3120150 () Bool)

(assert (=> b!3120150 true))

(assert (=> b!3120150 true))

(assert (=> b!3120150 true))

(declare-fun b!3120142 () Bool)

(declare-fun e!1948333 () Bool)

(declare-fun tp!977994 () Bool)

(assert (=> b!3120142 (= e!1948333 tp!977994)))

(declare-fun b!3120143 () Bool)

(declare-fun tp!977992 () Bool)

(declare-fun tp!977995 () Bool)

(assert (=> b!3120143 (= e!1948333 (and tp!977992 tp!977995))))

(declare-fun b!3120144 () Bool)

(declare-fun e!1948337 () Bool)

(declare-fun tp_is_empty!16811 () Bool)

(declare-fun tp!977990 () Bool)

(assert (=> b!3120144 (= e!1948337 (and tp_is_empty!16811 tp!977990))))

(declare-fun b!3120145 () Bool)

(declare-fun e!1948332 () Bool)

(declare-fun e!1948336 () Bool)

(assert (=> b!3120145 (= e!1948332 e!1948336)))

(declare-fun res!1276811 () Bool)

(assert (=> b!3120145 (=> res!1276811 e!1948336)))

(declare-datatypes ((C!19434 0))(
  ( (C!19435 (val!11753 Int)) )
))
(declare-datatypes ((Regex!9624 0))(
  ( (ElementMatch!9624 (c!522934 C!19434)) (Concat!14945 (regOne!19760 Regex!9624) (regTwo!19760 Regex!9624)) (EmptyExpr!9624) (Star!9624 (reg!9953 Regex!9624)) (EmptyLang!9624) (Union!9624 (regOne!19761 Regex!9624) (regTwo!19761 Regex!9624)) )
))
(declare-fun lt!1058893 () Regex!9624)

(declare-datatypes ((List!35489 0))(
  ( (Nil!35365) (Cons!35365 (h!40785 C!19434) (t!234554 List!35489)) )
))
(declare-fun s!11993 () List!35489)

(declare-fun matchR!4506 (Regex!9624 List!35489) Bool)

(assert (=> b!3120145 (= res!1276811 (not (matchR!4506 lt!1058893 s!11993)))))

(declare-fun lt!1058896 () Regex!9624)

(assert (=> b!3120145 (= lt!1058893 (Star!9624 lt!1058896))))

(declare-fun b!3120146 () Bool)

(declare-fun tp!977991 () Bool)

(declare-fun tp!977993 () Bool)

(assert (=> b!3120146 (= e!1948333 (and tp!977991 tp!977993))))

(declare-fun b!3120147 () Bool)

(declare-fun e!1948335 () Bool)

(declare-fun e!1948334 () Bool)

(assert (=> b!3120147 (= e!1948335 (not e!1948334))))

(declare-fun res!1276815 () Bool)

(assert (=> b!3120147 (=> res!1276815 e!1948334)))

(declare-fun lt!1058894 () Bool)

(declare-fun r!17423 () Regex!9624)

(assert (=> b!3120147 (= res!1276815 (or lt!1058894 (is-Concat!14945 r!17423) (is-Union!9624 r!17423) (not (is-Star!9624 r!17423))))))

(declare-fun matchRSpec!1761 (Regex!9624 List!35489) Bool)

(assert (=> b!3120147 (= lt!1058894 (matchRSpec!1761 r!17423 s!11993))))

(assert (=> b!3120147 (= lt!1058894 (matchR!4506 r!17423 s!11993))))

(declare-datatypes ((Unit!49687 0))(
  ( (Unit!49688) )
))
(declare-fun lt!1058892 () Unit!49687)

(declare-fun mainMatchTheorem!1761 (Regex!9624 List!35489) Unit!49687)

(assert (=> b!3120147 (= lt!1058892 (mainMatchTheorem!1761 r!17423 s!11993))))

(declare-fun res!1276813 () Bool)

(assert (=> start!295194 (=> (not res!1276813) (not e!1948335))))

(declare-fun validRegex!4357 (Regex!9624) Bool)

(assert (=> start!295194 (= res!1276813 (validRegex!4357 r!17423))))

(assert (=> start!295194 e!1948335))

(assert (=> start!295194 e!1948333))

(assert (=> start!295194 e!1948337))

(declare-fun b!3120148 () Bool)

(assert (=> b!3120148 (= e!1948333 tp_is_empty!16811)))

(declare-fun b!3120149 () Bool)

(assert (=> b!3120149 (= e!1948334 e!1948332)))

(declare-fun res!1276812 () Bool)

(assert (=> b!3120149 (=> res!1276812 e!1948332)))

(declare-fun isEmptyLang!675 (Regex!9624) Bool)

(assert (=> b!3120149 (= res!1276812 (isEmptyLang!675 lt!1058896))))

(declare-fun simplify!579 (Regex!9624) Regex!9624)

(assert (=> b!3120149 (= lt!1058896 (simplify!579 (reg!9953 r!17423)))))

(declare-fun e!1948338 () Bool)

(assert (=> b!3120150 (= e!1948338 (validRegex!4357 lt!1058896))))

(declare-fun lambda!115231 () Int)

(declare-datatypes ((tuple2!34226 0))(
  ( (tuple2!34227 (_1!20245 List!35489) (_2!20245 List!35489)) )
))
(declare-datatypes ((Option!6845 0))(
  ( (None!6844) (Some!6844 (v!34978 tuple2!34226)) )
))
(declare-fun isDefined!5396 (Option!6845) Bool)

(declare-fun findConcatSeparation!1239 (Regex!9624 Regex!9624 List!35489 List!35489 List!35489) Option!6845)

(declare-fun Exists!1878 (Int) Bool)

(assert (=> b!3120150 (= (isDefined!5396 (findConcatSeparation!1239 lt!1058896 lt!1058893 Nil!35365 s!11993 s!11993)) (Exists!1878 lambda!115231))))

(declare-fun lt!1058891 () Unit!49687)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1009 (Regex!9624 Regex!9624 List!35489) Unit!49687)

(assert (=> b!3120150 (= lt!1058891 (lemmaFindConcatSeparationEquivalentToExists!1009 lt!1058896 lt!1058893 s!11993))))

(declare-fun b!3120151 () Bool)

(assert (=> b!3120151 (= e!1948336 e!1948338)))

(declare-fun res!1276814 () Bool)

(assert (=> b!3120151 (=> res!1276814 e!1948338)))

(declare-fun isEmpty!19708 (List!35489) Bool)

(assert (=> b!3120151 (= res!1276814 (isEmpty!19708 s!11993))))

(assert (=> b!3120151 (matchRSpec!1761 lt!1058893 s!11993)))

(declare-fun lt!1058895 () Unit!49687)

(assert (=> b!3120151 (= lt!1058895 (mainMatchTheorem!1761 lt!1058893 s!11993))))

(assert (= (and start!295194 res!1276813) b!3120147))

(assert (= (and b!3120147 (not res!1276815)) b!3120149))

(assert (= (and b!3120149 (not res!1276812)) b!3120145))

(assert (= (and b!3120145 (not res!1276811)) b!3120151))

(assert (= (and b!3120151 (not res!1276814)) b!3120150))

(assert (= (and start!295194 (is-ElementMatch!9624 r!17423)) b!3120148))

(assert (= (and start!295194 (is-Concat!14945 r!17423)) b!3120146))

(assert (= (and start!295194 (is-Star!9624 r!17423)) b!3120142))

(assert (= (and start!295194 (is-Union!9624 r!17423)) b!3120143))

(assert (= (and start!295194 (is-Cons!35365 s!11993)) b!3120144))

(declare-fun m!3407813 () Bool)

(assert (=> b!3120149 m!3407813))

(declare-fun m!3407815 () Bool)

(assert (=> b!3120149 m!3407815))

(declare-fun m!3407817 () Bool)

(assert (=> b!3120147 m!3407817))

(declare-fun m!3407819 () Bool)

(assert (=> b!3120147 m!3407819))

(declare-fun m!3407821 () Bool)

(assert (=> b!3120147 m!3407821))

(declare-fun m!3407823 () Bool)

(assert (=> b!3120151 m!3407823))

(declare-fun m!3407825 () Bool)

(assert (=> b!3120151 m!3407825))

(declare-fun m!3407827 () Bool)

(assert (=> b!3120151 m!3407827))

(declare-fun m!3407829 () Bool)

(assert (=> b!3120145 m!3407829))

(declare-fun m!3407831 () Bool)

(assert (=> b!3120150 m!3407831))

(declare-fun m!3407833 () Bool)

(assert (=> b!3120150 m!3407833))

(declare-fun m!3407835 () Bool)

(assert (=> b!3120150 m!3407835))

(declare-fun m!3407837 () Bool)

(assert (=> b!3120150 m!3407837))

(assert (=> b!3120150 m!3407835))

(declare-fun m!3407839 () Bool)

(assert (=> b!3120150 m!3407839))

(declare-fun m!3407841 () Bool)

(assert (=> start!295194 m!3407841))

(push 1)

(assert (not start!295194))

(assert (not b!3120151))

(assert (not b!3120146))

(assert (not b!3120142))

(assert tp_is_empty!16811)

(assert (not b!3120144))

(assert (not b!3120145))

(assert (not b!3120143))

(assert (not b!3120147))

(assert (not b!3120149))

(assert (not b!3120150))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!862444 () Bool)

(assert (=> d!862444 (= (isEmpty!19708 s!11993) (is-Nil!35365 s!11993))))

(assert (=> b!3120151 d!862444))

(declare-fun bs!535928 () Bool)

(declare-fun b!3120234 () Bool)

(assert (= bs!535928 (and b!3120234 b!3120150)))

(declare-fun lambda!115239 () Int)

(assert (=> bs!535928 (not (= lambda!115239 lambda!115231))))

(assert (=> b!3120234 true))

(assert (=> b!3120234 true))

(declare-fun bs!535929 () Bool)

(declare-fun b!3120236 () Bool)

(assert (= bs!535929 (and b!3120236 b!3120150)))

(declare-fun lambda!115240 () Int)

(assert (=> bs!535929 (not (= lambda!115240 lambda!115231))))

(declare-fun bs!535930 () Bool)

(assert (= bs!535930 (and b!3120236 b!3120234)))

(assert (=> bs!535930 (not (= lambda!115240 lambda!115239))))

(assert (=> b!3120236 true))

(assert (=> b!3120236 true))

(declare-fun b!3120226 () Bool)

(declare-fun e!1948381 () Bool)

(assert (=> b!3120226 (= e!1948381 (matchRSpec!1761 (regTwo!19761 lt!1058893) s!11993))))

(declare-fun b!3120227 () Bool)

(declare-fun e!1948382 () Bool)

(declare-fun e!1948380 () Bool)

(assert (=> b!3120227 (= e!1948382 e!1948380)))

(declare-fun res!1276852 () Bool)

(assert (=> b!3120227 (= res!1276852 (not (is-EmptyLang!9624 lt!1058893)))))

(assert (=> b!3120227 (=> (not res!1276852) (not e!1948380))))

(declare-fun c!522944 () Bool)

(declare-fun bm!221718 () Bool)

(declare-fun call!221724 () Bool)

(assert (=> bm!221718 (= call!221724 (Exists!1878 (ite c!522944 lambda!115239 lambda!115240)))))

(declare-fun b!3120229 () Bool)

(declare-fun e!1948384 () Bool)

(declare-fun e!1948386 () Bool)

(assert (=> b!3120229 (= e!1948384 e!1948386)))

(assert (=> b!3120229 (= c!522944 (is-Star!9624 lt!1058893))))

(declare-fun b!3120230 () Bool)

(declare-fun e!1948383 () Bool)

(assert (=> b!3120230 (= e!1948383 (= s!11993 (Cons!35365 (c!522934 lt!1058893) Nil!35365)))))

(declare-fun b!3120231 () Bool)

(declare-fun c!522946 () Bool)

(assert (=> b!3120231 (= c!522946 (is-ElementMatch!9624 lt!1058893))))

(assert (=> b!3120231 (= e!1948380 e!1948383)))

(declare-fun bm!221719 () Bool)

(declare-fun call!221723 () Bool)

(assert (=> bm!221719 (= call!221723 (isEmpty!19708 s!11993))))

(declare-fun b!3120232 () Bool)

(assert (=> b!3120232 (= e!1948382 call!221723)))

(declare-fun b!3120233 () Bool)

(declare-fun c!522947 () Bool)

(assert (=> b!3120233 (= c!522947 (is-Union!9624 lt!1058893))))

(assert (=> b!3120233 (= e!1948383 e!1948384)))

(declare-fun e!1948385 () Bool)

(assert (=> b!3120234 (= e!1948385 call!221724)))

(declare-fun b!3120235 () Bool)

(declare-fun res!1276851 () Bool)

(assert (=> b!3120235 (=> res!1276851 e!1948385)))

(assert (=> b!3120235 (= res!1276851 call!221723)))

(assert (=> b!3120235 (= e!1948386 e!1948385)))

(assert (=> b!3120236 (= e!1948386 call!221724)))

(declare-fun d!862446 () Bool)

(declare-fun c!522945 () Bool)

(assert (=> d!862446 (= c!522945 (is-EmptyExpr!9624 lt!1058893))))

(assert (=> d!862446 (= (matchRSpec!1761 lt!1058893 s!11993) e!1948382)))

(declare-fun b!3120228 () Bool)

(assert (=> b!3120228 (= e!1948384 e!1948381)))

(declare-fun res!1276853 () Bool)

(assert (=> b!3120228 (= res!1276853 (matchRSpec!1761 (regOne!19761 lt!1058893) s!11993))))

(assert (=> b!3120228 (=> res!1276853 e!1948381)))

(assert (= (and d!862446 c!522945) b!3120232))

(assert (= (and d!862446 (not c!522945)) b!3120227))

(assert (= (and b!3120227 res!1276852) b!3120231))

(assert (= (and b!3120231 c!522946) b!3120230))

(assert (= (and b!3120231 (not c!522946)) b!3120233))

(assert (= (and b!3120233 c!522947) b!3120228))

(assert (= (and b!3120233 (not c!522947)) b!3120229))

(assert (= (and b!3120228 (not res!1276853)) b!3120226))

(assert (= (and b!3120229 c!522944) b!3120235))

(assert (= (and b!3120229 (not c!522944)) b!3120236))

(assert (= (and b!3120235 (not res!1276851)) b!3120234))

(assert (= (or b!3120234 b!3120236) bm!221718))

(assert (= (or b!3120232 b!3120235) bm!221719))

(declare-fun m!3407873 () Bool)

(assert (=> b!3120226 m!3407873))

(declare-fun m!3407875 () Bool)

(assert (=> bm!221718 m!3407875))

(assert (=> bm!221719 m!3407823))

(declare-fun m!3407877 () Bool)

(assert (=> b!3120228 m!3407877))

(assert (=> b!3120151 d!862446))

(declare-fun d!862452 () Bool)

(assert (=> d!862452 (= (matchR!4506 lt!1058893 s!11993) (matchRSpec!1761 lt!1058893 s!11993))))

(declare-fun lt!1058919 () Unit!49687)

(declare-fun choose!18449 (Regex!9624 List!35489) Unit!49687)

(assert (=> d!862452 (= lt!1058919 (choose!18449 lt!1058893 s!11993))))

(assert (=> d!862452 (validRegex!4357 lt!1058893)))

(assert (=> d!862452 (= (mainMatchTheorem!1761 lt!1058893 s!11993) lt!1058919)))

(declare-fun bs!535931 () Bool)

(assert (= bs!535931 d!862452))

(assert (=> bs!535931 m!3407829))

(assert (=> bs!535931 m!3407825))

(declare-fun m!3407879 () Bool)

(assert (=> bs!535931 m!3407879))

(declare-fun m!3407881 () Bool)

(assert (=> bs!535931 m!3407881))

(assert (=> b!3120151 d!862452))

(declare-fun bs!535932 () Bool)

(declare-fun b!3120267 () Bool)

(assert (= bs!535932 (and b!3120267 b!3120150)))

(declare-fun lambda!115241 () Int)

(assert (=> bs!535932 (not (= lambda!115241 lambda!115231))))

(declare-fun bs!535933 () Bool)

(assert (= bs!535933 (and b!3120267 b!3120234)))

(assert (=> bs!535933 (= (and (= (reg!9953 r!17423) (reg!9953 lt!1058893)) (= r!17423 lt!1058893)) (= lambda!115241 lambda!115239))))

(declare-fun bs!535934 () Bool)

(assert (= bs!535934 (and b!3120267 b!3120236)))

(assert (=> bs!535934 (not (= lambda!115241 lambda!115240))))

(assert (=> b!3120267 true))

(assert (=> b!3120267 true))

(declare-fun bs!535935 () Bool)

(declare-fun b!3120269 () Bool)

(assert (= bs!535935 (and b!3120269 b!3120150)))

(declare-fun lambda!115242 () Int)

(assert (=> bs!535935 (not (= lambda!115242 lambda!115231))))

(declare-fun bs!535936 () Bool)

(assert (= bs!535936 (and b!3120269 b!3120234)))

(assert (=> bs!535936 (not (= lambda!115242 lambda!115239))))

(declare-fun bs!535937 () Bool)

(assert (= bs!535937 (and b!3120269 b!3120236)))

(assert (=> bs!535937 (= (and (= (regOne!19760 r!17423) (regOne!19760 lt!1058893)) (= (regTwo!19760 r!17423) (regTwo!19760 lt!1058893))) (= lambda!115242 lambda!115240))))

(declare-fun bs!535938 () Bool)

(assert (= bs!535938 (and b!3120269 b!3120267)))

(assert (=> bs!535938 (not (= lambda!115242 lambda!115241))))

(assert (=> b!3120269 true))

(assert (=> b!3120269 true))

(declare-fun b!3120259 () Bool)

(declare-fun e!1948400 () Bool)

(assert (=> b!3120259 (= e!1948400 (matchRSpec!1761 (regTwo!19761 r!17423) s!11993))))

(declare-fun b!3120260 () Bool)

(declare-fun e!1948401 () Bool)

(declare-fun e!1948397 () Bool)

(assert (=> b!3120260 (= e!1948401 e!1948397)))

(declare-fun res!1276857 () Bool)

(assert (=> b!3120260 (= res!1276857 (not (is-EmptyLang!9624 r!17423)))))

(assert (=> b!3120260 (=> (not res!1276857) (not e!1948397))))

(declare-fun c!522958 () Bool)

(declare-fun call!221726 () Bool)

(declare-fun bm!221720 () Bool)

(assert (=> bm!221720 (= call!221726 (Exists!1878 (ite c!522958 lambda!115241 lambda!115242)))))

(declare-fun b!3120262 () Bool)

(declare-fun e!1948403 () Bool)

(declare-fun e!1948405 () Bool)

(assert (=> b!3120262 (= e!1948403 e!1948405)))

(assert (=> b!3120262 (= c!522958 (is-Star!9624 r!17423))))

(declare-fun b!3120263 () Bool)

(declare-fun e!1948402 () Bool)

(assert (=> b!3120263 (= e!1948402 (= s!11993 (Cons!35365 (c!522934 r!17423) Nil!35365)))))

(declare-fun b!3120264 () Bool)

(declare-fun c!522960 () Bool)

(assert (=> b!3120264 (= c!522960 (is-ElementMatch!9624 r!17423))))

(assert (=> b!3120264 (= e!1948397 e!1948402)))

(declare-fun bm!221721 () Bool)

(declare-fun call!221725 () Bool)

(assert (=> bm!221721 (= call!221725 (isEmpty!19708 s!11993))))

(declare-fun b!3120265 () Bool)

(assert (=> b!3120265 (= e!1948401 call!221725)))

(declare-fun b!3120266 () Bool)

(declare-fun c!522961 () Bool)

(assert (=> b!3120266 (= c!522961 (is-Union!9624 r!17423))))

(assert (=> b!3120266 (= e!1948402 e!1948403)))

(declare-fun e!1948404 () Bool)

(assert (=> b!3120267 (= e!1948404 call!221726)))

(declare-fun b!3120268 () Bool)

(declare-fun res!1276856 () Bool)

(assert (=> b!3120268 (=> res!1276856 e!1948404)))

(assert (=> b!3120268 (= res!1276856 call!221725)))

(assert (=> b!3120268 (= e!1948405 e!1948404)))

(assert (=> b!3120269 (= e!1948405 call!221726)))

(declare-fun d!862454 () Bool)

(declare-fun c!522959 () Bool)

(assert (=> d!862454 (= c!522959 (is-EmptyExpr!9624 r!17423))))

(assert (=> d!862454 (= (matchRSpec!1761 r!17423 s!11993) e!1948401)))

(declare-fun b!3120261 () Bool)

(assert (=> b!3120261 (= e!1948403 e!1948400)))

(declare-fun res!1276858 () Bool)

(assert (=> b!3120261 (= res!1276858 (matchRSpec!1761 (regOne!19761 r!17423) s!11993))))

(assert (=> b!3120261 (=> res!1276858 e!1948400)))

(assert (= (and d!862454 c!522959) b!3120265))

(assert (= (and d!862454 (not c!522959)) b!3120260))

(assert (= (and b!3120260 res!1276857) b!3120264))

(assert (= (and b!3120264 c!522960) b!3120263))

(assert (= (and b!3120264 (not c!522960)) b!3120266))

(assert (= (and b!3120266 c!522961) b!3120261))

(assert (= (and b!3120266 (not c!522961)) b!3120262))

(assert (= (and b!3120261 (not res!1276858)) b!3120259))

(assert (= (and b!3120262 c!522958) b!3120268))

(assert (= (and b!3120262 (not c!522958)) b!3120269))

(assert (= (and b!3120268 (not res!1276856)) b!3120267))

(assert (= (or b!3120267 b!3120269) bm!221720))

(assert (= (or b!3120265 b!3120268) bm!221721))

(declare-fun m!3407883 () Bool)

(assert (=> b!3120259 m!3407883))

(declare-fun m!3407885 () Bool)

(assert (=> bm!221720 m!3407885))

(assert (=> bm!221721 m!3407823))

(declare-fun m!3407887 () Bool)

(assert (=> b!3120261 m!3407887))

(assert (=> b!3120147 d!862454))

(declare-fun bm!221738 () Bool)

(declare-fun call!221743 () Bool)

(assert (=> bm!221738 (= call!221743 (isEmpty!19708 s!11993))))

(declare-fun b!3120324 () Bool)

(declare-fun res!1276879 () Bool)

(declare-fun e!1948438 () Bool)

(assert (=> b!3120324 (=> (not res!1276879) (not e!1948438))))

(assert (=> b!3120324 (= res!1276879 (not call!221743))))

(declare-fun b!3120325 () Bool)

(declare-fun e!1948434 () Bool)

(declare-fun e!1948435 () Bool)

(assert (=> b!3120325 (= e!1948434 e!1948435)))

(declare-fun res!1276884 () Bool)

(assert (=> b!3120325 (=> (not res!1276884) (not e!1948435))))

(declare-fun lt!1058932 () Bool)

(assert (=> b!3120325 (= res!1276884 (not lt!1058932))))

(declare-fun b!3120326 () Bool)

(declare-fun e!1948436 () Bool)

(assert (=> b!3120326 (= e!1948435 e!1948436)))

(declare-fun res!1276883 () Bool)

(assert (=> b!3120326 (=> res!1276883 e!1948436)))

(assert (=> b!3120326 (= res!1276883 call!221743)))

(declare-fun b!3120327 () Bool)

(declare-fun e!1948437 () Bool)

(assert (=> b!3120327 (= e!1948437 (not lt!1058932))))

(declare-fun b!3120328 () Bool)

(declare-fun res!1276881 () Bool)

(assert (=> b!3120328 (=> (not res!1276881) (not e!1948438))))

(declare-fun tail!5142 (List!35489) List!35489)

(assert (=> b!3120328 (= res!1276881 (isEmpty!19708 (tail!5142 s!11993)))))

(declare-fun b!3120329 () Bool)

(declare-fun e!1948440 () Bool)

(assert (=> b!3120329 (= e!1948440 e!1948437)))

(declare-fun c!522982 () Bool)

(assert (=> b!3120329 (= c!522982 (is-EmptyLang!9624 r!17423))))

(declare-fun d!862456 () Bool)

(assert (=> d!862456 e!1948440))

(declare-fun c!522980 () Bool)

(assert (=> d!862456 (= c!522980 (is-EmptyExpr!9624 r!17423))))

(declare-fun e!1948439 () Bool)

(assert (=> d!862456 (= lt!1058932 e!1948439)))

(declare-fun c!522981 () Bool)

(assert (=> d!862456 (= c!522981 (isEmpty!19708 s!11993))))

(assert (=> d!862456 (validRegex!4357 r!17423)))

(assert (=> d!862456 (= (matchR!4506 r!17423 s!11993) lt!1058932)))

(declare-fun b!3120330 () Bool)

(declare-fun res!1276878 () Bool)

(assert (=> b!3120330 (=> res!1276878 e!1948436)))

(assert (=> b!3120330 (= res!1276878 (not (isEmpty!19708 (tail!5142 s!11993))))))

(declare-fun b!3120331 () Bool)

(declare-fun head!6916 (List!35489) C!19434)

(assert (=> b!3120331 (= e!1948436 (not (= (head!6916 s!11993) (c!522934 r!17423))))))

(declare-fun b!3120332 () Bool)

(assert (=> b!3120332 (= e!1948440 (= lt!1058932 call!221743))))

(declare-fun b!3120333 () Bool)

(declare-fun res!1276880 () Bool)

(assert (=> b!3120333 (=> res!1276880 e!1948434)))

(assert (=> b!3120333 (= res!1276880 e!1948438)))

(declare-fun res!1276877 () Bool)

(assert (=> b!3120333 (=> (not res!1276877) (not e!1948438))))

(assert (=> b!3120333 (= res!1276877 lt!1058932)))

(declare-fun b!3120334 () Bool)

(declare-fun nullable!3262 (Regex!9624) Bool)

(assert (=> b!3120334 (= e!1948439 (nullable!3262 r!17423))))

(declare-fun b!3120335 () Bool)

(declare-fun derivativeStep!2857 (Regex!9624 C!19434) Regex!9624)

(assert (=> b!3120335 (= e!1948439 (matchR!4506 (derivativeStep!2857 r!17423 (head!6916 s!11993)) (tail!5142 s!11993)))))

(declare-fun b!3120336 () Bool)

(declare-fun res!1276882 () Bool)

(assert (=> b!3120336 (=> res!1276882 e!1948434)))

(assert (=> b!3120336 (= res!1276882 (not (is-ElementMatch!9624 r!17423)))))

(assert (=> b!3120336 (= e!1948437 e!1948434)))

(declare-fun b!3120337 () Bool)

(assert (=> b!3120337 (= e!1948438 (= (head!6916 s!11993) (c!522934 r!17423)))))

(assert (= (and d!862456 c!522981) b!3120334))

(assert (= (and d!862456 (not c!522981)) b!3120335))

(assert (= (and d!862456 c!522980) b!3120332))

(assert (= (and d!862456 (not c!522980)) b!3120329))

(assert (= (and b!3120329 c!522982) b!3120327))

(assert (= (and b!3120329 (not c!522982)) b!3120336))

(assert (= (and b!3120336 (not res!1276882)) b!3120333))

(assert (= (and b!3120333 res!1276877) b!3120324))

(assert (= (and b!3120324 res!1276879) b!3120328))

(assert (= (and b!3120328 res!1276881) b!3120337))

(assert (= (and b!3120333 (not res!1276880)) b!3120325))

(assert (= (and b!3120325 res!1276884) b!3120326))

(assert (= (and b!3120326 (not res!1276883)) b!3120330))

(assert (= (and b!3120330 (not res!1276878)) b!3120331))

(assert (= (or b!3120332 b!3120324 b!3120326) bm!221738))

(declare-fun m!3407889 () Bool)

(assert (=> b!3120328 m!3407889))

(assert (=> b!3120328 m!3407889))

(declare-fun m!3407891 () Bool)

(assert (=> b!3120328 m!3407891))

(assert (=> bm!221738 m!3407823))

(declare-fun m!3407893 () Bool)

(assert (=> b!3120331 m!3407893))

(assert (=> b!3120337 m!3407893))

(declare-fun m!3407895 () Bool)

(assert (=> b!3120334 m!3407895))

(assert (=> b!3120335 m!3407893))

(assert (=> b!3120335 m!3407893))

(declare-fun m!3407897 () Bool)

(assert (=> b!3120335 m!3407897))

(assert (=> b!3120335 m!3407889))

(assert (=> b!3120335 m!3407897))

(assert (=> b!3120335 m!3407889))

(declare-fun m!3407899 () Bool)

(assert (=> b!3120335 m!3407899))

(assert (=> b!3120330 m!3407889))

(assert (=> b!3120330 m!3407889))

(assert (=> b!3120330 m!3407891))

(assert (=> d!862456 m!3407823))

(assert (=> d!862456 m!3407841))

(assert (=> b!3120147 d!862456))

(declare-fun d!862458 () Bool)

(assert (=> d!862458 (= (matchR!4506 r!17423 s!11993) (matchRSpec!1761 r!17423 s!11993))))

(declare-fun lt!1058933 () Unit!49687)

(assert (=> d!862458 (= lt!1058933 (choose!18449 r!17423 s!11993))))

(assert (=> d!862458 (validRegex!4357 r!17423)))

(assert (=> d!862458 (= (mainMatchTheorem!1761 r!17423 s!11993) lt!1058933)))

(declare-fun bs!535939 () Bool)

(assert (= bs!535939 d!862458))

(assert (=> bs!535939 m!3407819))

(assert (=> bs!535939 m!3407817))

(declare-fun m!3407901 () Bool)

(assert (=> bs!535939 m!3407901))

(assert (=> bs!535939 m!3407841))

(assert (=> b!3120147 d!862458))

(declare-fun d!862460 () Bool)

(assert (=> d!862460 (= (isEmptyLang!675 lt!1058896) (is-EmptyLang!9624 lt!1058896))))

(assert (=> b!3120149 d!862460))

(declare-fun b!3120415 () Bool)

(declare-fun e!1948485 () Regex!9624)

(declare-fun e!1948496 () Regex!9624)

(assert (=> b!3120415 (= e!1948485 e!1948496)))

(declare-fun lt!1058956 () Regex!9624)

(declare-fun call!221769 () Regex!9624)

(assert (=> b!3120415 (= lt!1058956 call!221769)))

(declare-fun lt!1058953 () Regex!9624)

(declare-fun call!221770 () Regex!9624)

(assert (=> b!3120415 (= lt!1058953 call!221770)))

(declare-fun res!1276896 () Bool)

(declare-fun call!221766 () Bool)

(assert (=> b!3120415 (= res!1276896 call!221766)))

(declare-fun e!1948498 () Bool)

(assert (=> b!3120415 (=> res!1276896 e!1948498)))

(declare-fun c!523026 () Bool)

(assert (=> b!3120415 (= c!523026 e!1948498)))

(declare-fun b!3120416 () Bool)

(declare-fun e!1948490 () Regex!9624)

(assert (=> b!3120416 (= e!1948485 e!1948490)))

(declare-fun lt!1058957 () Regex!9624)

(assert (=> b!3120416 (= lt!1058957 call!221770)))

(declare-fun lt!1058952 () Regex!9624)

(assert (=> b!3120416 (= lt!1058952 call!221769)))

(declare-fun c!523023 () Bool)

(declare-fun call!221771 () Bool)

(assert (=> b!3120416 (= c!523023 call!221771)))

(declare-fun b!3120417 () Bool)

(declare-fun e!1948489 () Regex!9624)

(declare-fun e!1948494 () Regex!9624)

(assert (=> b!3120417 (= e!1948489 e!1948494)))

(declare-fun c!523017 () Bool)

(assert (=> b!3120417 (= c!523017 (is-Star!9624 (reg!9953 r!17423)))))

(declare-fun b!3120418 () Bool)

(declare-fun c!523025 () Bool)

(assert (=> b!3120418 (= c!523025 (is-Union!9624 (reg!9953 r!17423)))))

(assert (=> b!3120418 (= e!1948494 e!1948485)))

(declare-fun b!3120419 () Bool)

(declare-fun e!1948486 () Bool)

(declare-fun lt!1058954 () Regex!9624)

(assert (=> b!3120419 (= e!1948486 (= (nullable!3262 lt!1058954) (nullable!3262 (reg!9953 r!17423))))))

(declare-fun call!221768 () Bool)

(declare-fun bm!221760 () Bool)

(declare-fun lt!1058955 () Regex!9624)

(assert (=> bm!221760 (= call!221768 (isEmptyLang!675 (ite c!523017 lt!1058955 (ite c!523025 lt!1058952 lt!1058956))))))

(declare-fun bm!221761 () Bool)

(declare-fun call!221767 () Bool)

(declare-fun isEmptyExpr!673 (Regex!9624) Bool)

(assert (=> bm!221761 (= call!221767 (isEmptyExpr!673 (ite c!523017 lt!1058955 lt!1058956)))))

(declare-fun b!3120420 () Bool)

(assert (=> b!3120420 (= e!1948496 EmptyLang!9624)))

(declare-fun b!3120421 () Bool)

(declare-fun e!1948497 () Regex!9624)

(assert (=> b!3120421 (= e!1948497 (Star!9624 lt!1058955))))

(declare-fun b!3120422 () Bool)

(assert (=> b!3120422 (= e!1948497 EmptyExpr!9624)))

(declare-fun d!862462 () Bool)

(assert (=> d!862462 e!1948486))

(declare-fun res!1276898 () Bool)

(assert (=> d!862462 (=> (not res!1276898) (not e!1948486))))

(assert (=> d!862462 (= res!1276898 (validRegex!4357 lt!1058954))))

(declare-fun e!1948488 () Regex!9624)

(assert (=> d!862462 (= lt!1058954 e!1948488)))

(declare-fun c!523022 () Bool)

(assert (=> d!862462 (= c!523022 (is-EmptyLang!9624 (reg!9953 r!17423)))))

(assert (=> d!862462 (validRegex!4357 (reg!9953 r!17423))))

(assert (=> d!862462 (= (simplify!579 (reg!9953 r!17423)) lt!1058954)))

(declare-fun bm!221762 () Bool)

(assert (=> bm!221762 (= call!221770 (simplify!579 (ite c!523025 (regOne!19761 (reg!9953 r!17423)) (regTwo!19760 (reg!9953 r!17423)))))))

(declare-fun b!3120423 () Bool)

(declare-fun e!1948495 () Regex!9624)

(assert (=> b!3120423 (= e!1948495 lt!1058957)))

(declare-fun b!3120424 () Bool)

(assert (=> b!3120424 (= e!1948495 (Union!9624 lt!1058957 lt!1058952))))

(declare-fun b!3120425 () Bool)

(declare-fun c!523024 () Bool)

(assert (=> b!3120425 (= c!523024 call!221766)))

(assert (=> b!3120425 (= e!1948490 e!1948495)))

(declare-fun b!3120426 () Bool)

(assert (=> b!3120426 (= e!1948498 call!221771)))

(declare-fun b!3120427 () Bool)

(assert (=> b!3120427 (= e!1948489 EmptyExpr!9624)))

(declare-fun b!3120428 () Bool)

(declare-fun e!1948487 () Regex!9624)

(assert (=> b!3120428 (= e!1948487 (reg!9953 r!17423))))

(declare-fun b!3120429 () Bool)

(declare-fun e!1948492 () Regex!9624)

(assert (=> b!3120429 (= e!1948492 (Concat!14945 lt!1058956 lt!1058953))))

(declare-fun b!3120430 () Bool)

(declare-fun e!1948491 () Regex!9624)

(assert (=> b!3120430 (= e!1948491 lt!1058953)))

(declare-fun b!3120431 () Bool)

(declare-fun c!523018 () Bool)

(assert (=> b!3120431 (= c!523018 call!221767)))

(assert (=> b!3120431 (= e!1948496 e!1948491)))

(declare-fun b!3120432 () Bool)

(assert (=> b!3120432 (= e!1948490 lt!1058952)))

(declare-fun b!3120433 () Bool)

(declare-fun c!523016 () Bool)

(declare-fun e!1948493 () Bool)

(assert (=> b!3120433 (= c!523016 e!1948493)))

(declare-fun res!1276897 () Bool)

(assert (=> b!3120433 (=> res!1276897 e!1948493)))

(assert (=> b!3120433 (= res!1276897 call!221768)))

(declare-fun call!221765 () Regex!9624)

(assert (=> b!3120433 (= lt!1058955 call!221765)))

(assert (=> b!3120433 (= e!1948494 e!1948497)))

(declare-fun b!3120434 () Bool)

(assert (=> b!3120434 (= e!1948492 lt!1058956)))

(declare-fun b!3120435 () Bool)

(assert (=> b!3120435 (= e!1948493 call!221767)))

(declare-fun bm!221763 () Bool)

(assert (=> bm!221763 (= call!221766 call!221768)))

(declare-fun b!3120436 () Bool)

(assert (=> b!3120436 (= e!1948488 e!1948487)))

(declare-fun c!523019 () Bool)

(assert (=> b!3120436 (= c!523019 (is-ElementMatch!9624 (reg!9953 r!17423)))))

(declare-fun b!3120437 () Bool)

(declare-fun c!523020 () Bool)

(assert (=> b!3120437 (= c!523020 (is-EmptyExpr!9624 (reg!9953 r!17423)))))

(assert (=> b!3120437 (= e!1948487 e!1948489)))

(declare-fun bm!221764 () Bool)

(assert (=> bm!221764 (= call!221769 call!221765)))

(declare-fun b!3120438 () Bool)

(assert (=> b!3120438 (= e!1948491 e!1948492)))

(declare-fun c!523021 () Bool)

(assert (=> b!3120438 (= c!523021 (isEmptyExpr!673 lt!1058953))))

(declare-fun bm!221765 () Bool)

(assert (=> bm!221765 (= call!221771 (isEmptyLang!675 (ite c!523025 lt!1058957 lt!1058953)))))

(declare-fun bm!221766 () Bool)

(assert (=> bm!221766 (= call!221765 (simplify!579 (ite c!523017 (reg!9953 (reg!9953 r!17423)) (ite c!523025 (regTwo!19761 (reg!9953 r!17423)) (regOne!19760 (reg!9953 r!17423))))))))

(declare-fun b!3120439 () Bool)

(assert (=> b!3120439 (= e!1948488 EmptyLang!9624)))

(assert (= (and d!862462 c!523022) b!3120439))

(assert (= (and d!862462 (not c!523022)) b!3120436))

(assert (= (and b!3120436 c!523019) b!3120428))

(assert (= (and b!3120436 (not c!523019)) b!3120437))

(assert (= (and b!3120437 c!523020) b!3120427))

(assert (= (and b!3120437 (not c!523020)) b!3120417))

(assert (= (and b!3120417 c!523017) b!3120433))

(assert (= (and b!3120417 (not c!523017)) b!3120418))

(assert (= (and b!3120433 (not res!1276897)) b!3120435))

(assert (= (and b!3120433 c!523016) b!3120422))

(assert (= (and b!3120433 (not c!523016)) b!3120421))

(assert (= (and b!3120418 c!523025) b!3120416))

(assert (= (and b!3120418 (not c!523025)) b!3120415))

(assert (= (and b!3120416 c!523023) b!3120432))

(assert (= (and b!3120416 (not c!523023)) b!3120425))

(assert (= (and b!3120425 c!523024) b!3120423))

(assert (= (and b!3120425 (not c!523024)) b!3120424))

(assert (= (and b!3120415 (not res!1276896)) b!3120426))

(assert (= (and b!3120415 c!523026) b!3120420))

(assert (= (and b!3120415 (not c!523026)) b!3120431))

(assert (= (and b!3120431 c!523018) b!3120430))

(assert (= (and b!3120431 (not c!523018)) b!3120438))

(assert (= (and b!3120438 c!523021) b!3120434))

(assert (= (and b!3120438 (not c!523021)) b!3120429))

(assert (= (or b!3120416 b!3120415) bm!221762))

(assert (= (or b!3120416 b!3120415) bm!221764))

(assert (= (or b!3120425 b!3120415) bm!221763))

(assert (= (or b!3120416 b!3120426) bm!221765))

(assert (= (or b!3120435 b!3120431) bm!221761))

(assert (= (or b!3120433 bm!221764) bm!221766))

(assert (= (or b!3120433 bm!221763) bm!221760))

(assert (= (and d!862462 res!1276898) b!3120419))

(declare-fun m!3407923 () Bool)

(assert (=> bm!221762 m!3407923))

(declare-fun m!3407925 () Bool)

(assert (=> bm!221765 m!3407925))

(declare-fun m!3407927 () Bool)

(assert (=> b!3120419 m!3407927))

(declare-fun m!3407929 () Bool)

(assert (=> b!3120419 m!3407929))

(declare-fun m!3407931 () Bool)

(assert (=> bm!221766 m!3407931))

(declare-fun m!3407933 () Bool)

(assert (=> b!3120438 m!3407933))

(declare-fun m!3407935 () Bool)

(assert (=> bm!221761 m!3407935))

(declare-fun m!3407937 () Bool)

(assert (=> d!862462 m!3407937))

(declare-fun m!3407939 () Bool)

(assert (=> d!862462 m!3407939))

(declare-fun m!3407941 () Bool)

(assert (=> bm!221760 m!3407941))

(assert (=> b!3120149 d!862462))

(declare-fun b!3120476 () Bool)

(declare-fun res!1276921 () Bool)

(declare-fun e!1948533 () Bool)

(assert (=> b!3120476 (=> (not res!1276921) (not e!1948533))))

(declare-fun call!221785 () Bool)

(assert (=> b!3120476 (= res!1276921 call!221785)))

(declare-fun e!1948532 () Bool)

(assert (=> b!3120476 (= e!1948532 e!1948533)))

(declare-fun b!3120477 () Bool)

(declare-fun call!221786 () Bool)

(assert (=> b!3120477 (= e!1948533 call!221786)))

(declare-fun bm!221779 () Bool)

(declare-fun call!221784 () Bool)

(declare-fun c!523036 () Bool)

(declare-fun c!523035 () Bool)

(assert (=> bm!221779 (= call!221784 (validRegex!4357 (ite c!523035 (reg!9953 r!17423) (ite c!523036 (regTwo!19761 r!17423) (regOne!19760 r!17423)))))))

(declare-fun b!3120478 () Bool)

(declare-fun e!1948529 () Bool)

(declare-fun e!1948527 () Bool)

(assert (=> b!3120478 (= e!1948529 e!1948527)))

(assert (=> b!3120478 (= c!523035 (is-Star!9624 r!17423))))

(declare-fun b!3120479 () Bool)

(declare-fun e!1948528 () Bool)

(declare-fun e!1948530 () Bool)

(assert (=> b!3120479 (= e!1948528 e!1948530)))

(declare-fun res!1276920 () Bool)

(assert (=> b!3120479 (=> (not res!1276920) (not e!1948530))))

(assert (=> b!3120479 (= res!1276920 call!221786)))

(declare-fun bm!221780 () Bool)

(assert (=> bm!221780 (= call!221786 call!221784)))

(declare-fun d!862466 () Bool)

(declare-fun res!1276922 () Bool)

(assert (=> d!862466 (=> res!1276922 e!1948529)))

(assert (=> d!862466 (= res!1276922 (is-ElementMatch!9624 r!17423))))

(assert (=> d!862466 (= (validRegex!4357 r!17423) e!1948529)))

(declare-fun b!3120480 () Bool)

(assert (=> b!3120480 (= e!1948530 call!221785)))

(declare-fun b!3120481 () Bool)

(declare-fun e!1948531 () Bool)

(assert (=> b!3120481 (= e!1948531 call!221784)))

(declare-fun bm!221781 () Bool)

(assert (=> bm!221781 (= call!221785 (validRegex!4357 (ite c!523036 (regOne!19761 r!17423) (regTwo!19760 r!17423))))))

(declare-fun b!3120482 () Bool)

(assert (=> b!3120482 (= e!1948527 e!1948532)))

(assert (=> b!3120482 (= c!523036 (is-Union!9624 r!17423))))

(declare-fun b!3120483 () Bool)

(assert (=> b!3120483 (= e!1948527 e!1948531)))

(declare-fun res!1276923 () Bool)

(assert (=> b!3120483 (= res!1276923 (not (nullable!3262 (reg!9953 r!17423))))))

(assert (=> b!3120483 (=> (not res!1276923) (not e!1948531))))

(declare-fun b!3120484 () Bool)

(declare-fun res!1276919 () Bool)

(assert (=> b!3120484 (=> res!1276919 e!1948528)))

(assert (=> b!3120484 (= res!1276919 (not (is-Concat!14945 r!17423)))))

(assert (=> b!3120484 (= e!1948532 e!1948528)))

(assert (= (and d!862466 (not res!1276922)) b!3120478))

(assert (= (and b!3120478 c!523035) b!3120483))

(assert (= (and b!3120478 (not c!523035)) b!3120482))

(assert (= (and b!3120483 res!1276923) b!3120481))

(assert (= (and b!3120482 c!523036) b!3120476))

(assert (= (and b!3120482 (not c!523036)) b!3120484))

(assert (= (and b!3120476 res!1276921) b!3120477))

(assert (= (and b!3120484 (not res!1276919)) b!3120479))

(assert (= (and b!3120479 res!1276920) b!3120480))

(assert (= (or b!3120476 b!3120480) bm!221781))

(assert (= (or b!3120477 b!3120479) bm!221780))

(assert (= (or b!3120481 bm!221780) bm!221779))

(declare-fun m!3407943 () Bool)

(assert (=> bm!221779 m!3407943))

(declare-fun m!3407945 () Bool)

(assert (=> bm!221781 m!3407945))

(assert (=> b!3120483 m!3407929))

(assert (=> start!295194 d!862466))

(declare-fun bm!221782 () Bool)

(declare-fun call!221787 () Bool)

(assert (=> bm!221782 (= call!221787 (isEmpty!19708 s!11993))))

(declare-fun b!3120485 () Bool)

(declare-fun res!1276926 () Bool)

(declare-fun e!1948538 () Bool)

(assert (=> b!3120485 (=> (not res!1276926) (not e!1948538))))

(assert (=> b!3120485 (= res!1276926 (not call!221787))))

(declare-fun b!3120486 () Bool)

(declare-fun e!1948534 () Bool)

(declare-fun e!1948535 () Bool)

(assert (=> b!3120486 (= e!1948534 e!1948535)))

(declare-fun res!1276931 () Bool)

(assert (=> b!3120486 (=> (not res!1276931) (not e!1948535))))

(declare-fun lt!1058958 () Bool)

(assert (=> b!3120486 (= res!1276931 (not lt!1058958))))

(declare-fun b!3120487 () Bool)

(declare-fun e!1948536 () Bool)

(assert (=> b!3120487 (= e!1948535 e!1948536)))

(declare-fun res!1276930 () Bool)

(assert (=> b!3120487 (=> res!1276930 e!1948536)))

(assert (=> b!3120487 (= res!1276930 call!221787)))

(declare-fun b!3120488 () Bool)

(declare-fun e!1948537 () Bool)

(assert (=> b!3120488 (= e!1948537 (not lt!1058958))))

(declare-fun b!3120489 () Bool)

(declare-fun res!1276928 () Bool)

(assert (=> b!3120489 (=> (not res!1276928) (not e!1948538))))

(assert (=> b!3120489 (= res!1276928 (isEmpty!19708 (tail!5142 s!11993)))))

(declare-fun b!3120490 () Bool)

(declare-fun e!1948540 () Bool)

(assert (=> b!3120490 (= e!1948540 e!1948537)))

(declare-fun c!523039 () Bool)

(assert (=> b!3120490 (= c!523039 (is-EmptyLang!9624 lt!1058893))))

(declare-fun d!862468 () Bool)

(assert (=> d!862468 e!1948540))

(declare-fun c!523037 () Bool)

(assert (=> d!862468 (= c!523037 (is-EmptyExpr!9624 lt!1058893))))

(declare-fun e!1948539 () Bool)

(assert (=> d!862468 (= lt!1058958 e!1948539)))

(declare-fun c!523038 () Bool)

(assert (=> d!862468 (= c!523038 (isEmpty!19708 s!11993))))

(assert (=> d!862468 (validRegex!4357 lt!1058893)))

(assert (=> d!862468 (= (matchR!4506 lt!1058893 s!11993) lt!1058958)))

(declare-fun b!3120491 () Bool)

(declare-fun res!1276925 () Bool)

(assert (=> b!3120491 (=> res!1276925 e!1948536)))

(assert (=> b!3120491 (= res!1276925 (not (isEmpty!19708 (tail!5142 s!11993))))))

(declare-fun b!3120492 () Bool)

(assert (=> b!3120492 (= e!1948536 (not (= (head!6916 s!11993) (c!522934 lt!1058893))))))

(declare-fun b!3120493 () Bool)

(assert (=> b!3120493 (= e!1948540 (= lt!1058958 call!221787))))

(declare-fun b!3120494 () Bool)

(declare-fun res!1276927 () Bool)

(assert (=> b!3120494 (=> res!1276927 e!1948534)))

(assert (=> b!3120494 (= res!1276927 e!1948538)))

(declare-fun res!1276924 () Bool)

(assert (=> b!3120494 (=> (not res!1276924) (not e!1948538))))

(assert (=> b!3120494 (= res!1276924 lt!1058958)))

(declare-fun b!3120495 () Bool)

(assert (=> b!3120495 (= e!1948539 (nullable!3262 lt!1058893))))

(declare-fun b!3120496 () Bool)

(assert (=> b!3120496 (= e!1948539 (matchR!4506 (derivativeStep!2857 lt!1058893 (head!6916 s!11993)) (tail!5142 s!11993)))))

(declare-fun b!3120497 () Bool)

(declare-fun res!1276929 () Bool)

(assert (=> b!3120497 (=> res!1276929 e!1948534)))

(assert (=> b!3120497 (= res!1276929 (not (is-ElementMatch!9624 lt!1058893)))))

(assert (=> b!3120497 (= e!1948537 e!1948534)))

(declare-fun b!3120498 () Bool)

(assert (=> b!3120498 (= e!1948538 (= (head!6916 s!11993) (c!522934 lt!1058893)))))

(assert (= (and d!862468 c!523038) b!3120495))

(assert (= (and d!862468 (not c!523038)) b!3120496))

(assert (= (and d!862468 c!523037) b!3120493))

(assert (= (and d!862468 (not c!523037)) b!3120490))

(assert (= (and b!3120490 c!523039) b!3120488))

(assert (= (and b!3120490 (not c!523039)) b!3120497))

(assert (= (and b!3120497 (not res!1276929)) b!3120494))

(assert (= (and b!3120494 res!1276924) b!3120485))

(assert (= (and b!3120485 res!1276926) b!3120489))

(assert (= (and b!3120489 res!1276928) b!3120498))

(assert (= (and b!3120494 (not res!1276927)) b!3120486))

(assert (= (and b!3120486 res!1276931) b!3120487))

(assert (= (and b!3120487 (not res!1276930)) b!3120491))

(assert (= (and b!3120491 (not res!1276925)) b!3120492))

(assert (= (or b!3120493 b!3120485 b!3120487) bm!221782))

(assert (=> b!3120489 m!3407889))

(assert (=> b!3120489 m!3407889))

(assert (=> b!3120489 m!3407891))

(assert (=> bm!221782 m!3407823))

(assert (=> b!3120492 m!3407893))

(assert (=> b!3120498 m!3407893))

(declare-fun m!3407947 () Bool)

(assert (=> b!3120495 m!3407947))

(assert (=> b!3120496 m!3407893))

(assert (=> b!3120496 m!3407893))

(declare-fun m!3407949 () Bool)

(assert (=> b!3120496 m!3407949))

(assert (=> b!3120496 m!3407889))

(assert (=> b!3120496 m!3407949))

(assert (=> b!3120496 m!3407889))

(declare-fun m!3407951 () Bool)

(assert (=> b!3120496 m!3407951))

(assert (=> b!3120491 m!3407889))

(assert (=> b!3120491 m!3407889))

(assert (=> b!3120491 m!3407891))

(assert (=> d!862468 m!3407823))

(assert (=> d!862468 m!3407881))

(assert (=> b!3120145 d!862468))

(declare-fun b!3120499 () Bool)

(declare-fun res!1276934 () Bool)

(declare-fun e!1948547 () Bool)

(assert (=> b!3120499 (=> (not res!1276934) (not e!1948547))))

(declare-fun call!221789 () Bool)

(assert (=> b!3120499 (= res!1276934 call!221789)))

(declare-fun e!1948546 () Bool)

(assert (=> b!3120499 (= e!1948546 e!1948547)))

(declare-fun b!3120500 () Bool)

(declare-fun call!221790 () Bool)

(assert (=> b!3120500 (= e!1948547 call!221790)))

(declare-fun c!523040 () Bool)

(declare-fun call!221788 () Bool)

(declare-fun c!523041 () Bool)

(declare-fun bm!221783 () Bool)

(assert (=> bm!221783 (= call!221788 (validRegex!4357 (ite c!523040 (reg!9953 lt!1058896) (ite c!523041 (regTwo!19761 lt!1058896) (regOne!19760 lt!1058896)))))))

(declare-fun b!3120501 () Bool)

(declare-fun e!1948543 () Bool)

(declare-fun e!1948541 () Bool)

(assert (=> b!3120501 (= e!1948543 e!1948541)))

(assert (=> b!3120501 (= c!523040 (is-Star!9624 lt!1058896))))

(declare-fun b!3120502 () Bool)

(declare-fun e!1948542 () Bool)

(declare-fun e!1948544 () Bool)

(assert (=> b!3120502 (= e!1948542 e!1948544)))

(declare-fun res!1276933 () Bool)

(assert (=> b!3120502 (=> (not res!1276933) (not e!1948544))))

(assert (=> b!3120502 (= res!1276933 call!221790)))

(declare-fun bm!221784 () Bool)

(assert (=> bm!221784 (= call!221790 call!221788)))

(declare-fun d!862470 () Bool)

(declare-fun res!1276935 () Bool)

(assert (=> d!862470 (=> res!1276935 e!1948543)))

(assert (=> d!862470 (= res!1276935 (is-ElementMatch!9624 lt!1058896))))

(assert (=> d!862470 (= (validRegex!4357 lt!1058896) e!1948543)))

(declare-fun b!3120503 () Bool)

(assert (=> b!3120503 (= e!1948544 call!221789)))

(declare-fun b!3120504 () Bool)

(declare-fun e!1948545 () Bool)

(assert (=> b!3120504 (= e!1948545 call!221788)))

(declare-fun bm!221785 () Bool)

(assert (=> bm!221785 (= call!221789 (validRegex!4357 (ite c!523041 (regOne!19761 lt!1058896) (regTwo!19760 lt!1058896))))))

(declare-fun b!3120505 () Bool)

(assert (=> b!3120505 (= e!1948541 e!1948546)))

(assert (=> b!3120505 (= c!523041 (is-Union!9624 lt!1058896))))

(declare-fun b!3120506 () Bool)

(assert (=> b!3120506 (= e!1948541 e!1948545)))

(declare-fun res!1276936 () Bool)

(assert (=> b!3120506 (= res!1276936 (not (nullable!3262 (reg!9953 lt!1058896))))))

(assert (=> b!3120506 (=> (not res!1276936) (not e!1948545))))

(declare-fun b!3120507 () Bool)

(declare-fun res!1276932 () Bool)

(assert (=> b!3120507 (=> res!1276932 e!1948542)))

(assert (=> b!3120507 (= res!1276932 (not (is-Concat!14945 lt!1058896)))))

(assert (=> b!3120507 (= e!1948546 e!1948542)))

(assert (= (and d!862470 (not res!1276935)) b!3120501))

(assert (= (and b!3120501 c!523040) b!3120506))

(assert (= (and b!3120501 (not c!523040)) b!3120505))

(assert (= (and b!3120506 res!1276936) b!3120504))

(assert (= (and b!3120505 c!523041) b!3120499))

(assert (= (and b!3120505 (not c!523041)) b!3120507))

(assert (= (and b!3120499 res!1276934) b!3120500))

(assert (= (and b!3120507 (not res!1276932)) b!3120502))

(assert (= (and b!3120502 res!1276933) b!3120503))

(assert (= (or b!3120499 b!3120503) bm!221785))

(assert (= (or b!3120500 b!3120502) bm!221784))

(assert (= (or b!3120504 bm!221784) bm!221783))

(declare-fun m!3407953 () Bool)

(assert (=> bm!221783 m!3407953))

(declare-fun m!3407955 () Bool)

(assert (=> bm!221785 m!3407955))

(declare-fun m!3407957 () Bool)

(assert (=> b!3120506 m!3407957))

(assert (=> b!3120150 d!862470))

(declare-fun d!862472 () Bool)

(declare-fun choose!18450 (Int) Bool)

(assert (=> d!862472 (= (Exists!1878 lambda!115231) (choose!18450 lambda!115231))))

(declare-fun bs!535940 () Bool)

(assert (= bs!535940 d!862472))

(declare-fun m!3407959 () Bool)

(assert (=> bs!535940 m!3407959))

(assert (=> b!3120150 d!862472))

(declare-fun d!862474 () Bool)

(declare-fun isEmpty!19710 (Option!6845) Bool)

(assert (=> d!862474 (= (isDefined!5396 (findConcatSeparation!1239 lt!1058896 lt!1058893 Nil!35365 s!11993 s!11993)) (not (isEmpty!19710 (findConcatSeparation!1239 lt!1058896 lt!1058893 Nil!35365 s!11993 s!11993))))))

(declare-fun bs!535941 () Bool)

(assert (= bs!535941 d!862474))

(assert (=> bs!535941 m!3407835))

(declare-fun m!3407961 () Bool)

(assert (=> bs!535941 m!3407961))

(assert (=> b!3120150 d!862474))

(declare-fun b!3120547 () Bool)

(declare-fun e!1948572 () Bool)

(declare-fun lt!1058969 () Option!6845)

(declare-fun ++!8502 (List!35489 List!35489) List!35489)

(declare-fun get!11123 (Option!6845) tuple2!34226)

(assert (=> b!3120547 (= e!1948572 (= (++!8502 (_1!20245 (get!11123 lt!1058969)) (_2!20245 (get!11123 lt!1058969))) s!11993))))

(declare-fun d!862476 () Bool)

(declare-fun e!1948575 () Bool)

(assert (=> d!862476 e!1948575))

(declare-fun res!1276956 () Bool)

(assert (=> d!862476 (=> res!1276956 e!1948575)))

(assert (=> d!862476 (= res!1276956 e!1948572)))

(declare-fun res!1276954 () Bool)

(assert (=> d!862476 (=> (not res!1276954) (not e!1948572))))

(assert (=> d!862476 (= res!1276954 (isDefined!5396 lt!1058969))))

(declare-fun e!1948573 () Option!6845)

(assert (=> d!862476 (= lt!1058969 e!1948573)))

(declare-fun c!523055 () Bool)

(declare-fun e!1948574 () Bool)

(assert (=> d!862476 (= c!523055 e!1948574)))

(declare-fun res!1276952 () Bool)

(assert (=> d!862476 (=> (not res!1276952) (not e!1948574))))

(assert (=> d!862476 (= res!1276952 (matchR!4506 lt!1058896 Nil!35365))))

(assert (=> d!862476 (validRegex!4357 lt!1058896)))

(assert (=> d!862476 (= (findConcatSeparation!1239 lt!1058896 lt!1058893 Nil!35365 s!11993 s!11993) lt!1058969)))

(declare-fun b!3120548 () Bool)

(declare-fun e!1948571 () Option!6845)

(assert (=> b!3120548 (= e!1948571 None!6844)))

(declare-fun b!3120549 () Bool)

(assert (=> b!3120549 (= e!1948575 (not (isDefined!5396 lt!1058969)))))

(declare-fun b!3120550 () Bool)

(declare-fun lt!1058968 () Unit!49687)

(declare-fun lt!1058967 () Unit!49687)

(assert (=> b!3120550 (= lt!1058968 lt!1058967)))

(assert (=> b!3120550 (= (++!8502 (++!8502 Nil!35365 (Cons!35365 (h!40785 s!11993) Nil!35365)) (t!234554 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1095 (List!35489 C!19434 List!35489 List!35489) Unit!49687)

(assert (=> b!3120550 (= lt!1058967 (lemmaMoveElementToOtherListKeepsConcatEq!1095 Nil!35365 (h!40785 s!11993) (t!234554 s!11993) s!11993))))

(assert (=> b!3120550 (= e!1948571 (findConcatSeparation!1239 lt!1058896 lt!1058893 (++!8502 Nil!35365 (Cons!35365 (h!40785 s!11993) Nil!35365)) (t!234554 s!11993) s!11993))))

(declare-fun b!3120551 () Bool)

(declare-fun res!1276955 () Bool)

(assert (=> b!3120551 (=> (not res!1276955) (not e!1948572))))

(assert (=> b!3120551 (= res!1276955 (matchR!4506 lt!1058893 (_2!20245 (get!11123 lt!1058969))))))

(declare-fun b!3120552 () Bool)

(assert (=> b!3120552 (= e!1948573 e!1948571)))

(declare-fun c!523054 () Bool)

(assert (=> b!3120552 (= c!523054 (is-Nil!35365 s!11993))))

(declare-fun b!3120553 () Bool)

(assert (=> b!3120553 (= e!1948574 (matchR!4506 lt!1058893 s!11993))))

(declare-fun b!3120554 () Bool)

(declare-fun res!1276953 () Bool)

(assert (=> b!3120554 (=> (not res!1276953) (not e!1948572))))

(assert (=> b!3120554 (= res!1276953 (matchR!4506 lt!1058896 (_1!20245 (get!11123 lt!1058969))))))

(declare-fun b!3120555 () Bool)

(assert (=> b!3120555 (= e!1948573 (Some!6844 (tuple2!34227 Nil!35365 s!11993)))))

(assert (= (and d!862476 res!1276952) b!3120553))

(assert (= (and d!862476 c!523055) b!3120555))

(assert (= (and d!862476 (not c!523055)) b!3120552))

(assert (= (and b!3120552 c!523054) b!3120548))

(assert (= (and b!3120552 (not c!523054)) b!3120550))

(assert (= (and d!862476 res!1276954) b!3120554))

(assert (= (and b!3120554 res!1276953) b!3120551))

(assert (= (and b!3120551 res!1276955) b!3120547))

(assert (= (and d!862476 (not res!1276956)) b!3120549))

(assert (=> b!3120553 m!3407829))

(declare-fun m!3407967 () Bool)

(assert (=> b!3120554 m!3407967))

(declare-fun m!3407969 () Bool)

(assert (=> b!3120554 m!3407969))

(declare-fun m!3407971 () Bool)

(assert (=> d!862476 m!3407971))

(declare-fun m!3407973 () Bool)

(assert (=> d!862476 m!3407973))

(assert (=> d!862476 m!3407837))

(assert (=> b!3120549 m!3407971))

(declare-fun m!3407975 () Bool)

(assert (=> b!3120550 m!3407975))

(assert (=> b!3120550 m!3407975))

(declare-fun m!3407977 () Bool)

(assert (=> b!3120550 m!3407977))

(declare-fun m!3407979 () Bool)

(assert (=> b!3120550 m!3407979))

(assert (=> b!3120550 m!3407975))

(declare-fun m!3407981 () Bool)

(assert (=> b!3120550 m!3407981))

(assert (=> b!3120547 m!3407967))

(declare-fun m!3407983 () Bool)

(assert (=> b!3120547 m!3407983))

(assert (=> b!3120551 m!3407967))

(declare-fun m!3407985 () Bool)

(assert (=> b!3120551 m!3407985))

(assert (=> b!3120150 d!862476))

(declare-fun bs!535942 () Bool)

(declare-fun d!862480 () Bool)

(assert (= bs!535942 (and d!862480 b!3120269)))

(declare-fun lambda!115245 () Int)

(assert (=> bs!535942 (not (= lambda!115245 lambda!115242))))

(declare-fun bs!535943 () Bool)

(assert (= bs!535943 (and d!862480 b!3120236)))

(assert (=> bs!535943 (not (= lambda!115245 lambda!115240))))

(declare-fun bs!535944 () Bool)

(assert (= bs!535944 (and d!862480 b!3120234)))

(assert (=> bs!535944 (not (= lambda!115245 lambda!115239))))

(declare-fun bs!535945 () Bool)

(assert (= bs!535945 (and d!862480 b!3120150)))

(assert (=> bs!535945 (= lambda!115245 lambda!115231)))

(declare-fun bs!535946 () Bool)

(assert (= bs!535946 (and d!862480 b!3120267)))

(assert (=> bs!535946 (not (= lambda!115245 lambda!115241))))

(assert (=> d!862480 true))

(assert (=> d!862480 true))

(assert (=> d!862480 true))

(assert (=> d!862480 (= (isDefined!5396 (findConcatSeparation!1239 lt!1058896 lt!1058893 Nil!35365 s!11993 s!11993)) (Exists!1878 lambda!115245))))

(declare-fun lt!1058972 () Unit!49687)

(declare-fun choose!18451 (Regex!9624 Regex!9624 List!35489) Unit!49687)

(assert (=> d!862480 (= lt!1058972 (choose!18451 lt!1058896 lt!1058893 s!11993))))

(assert (=> d!862480 (validRegex!4357 lt!1058896)))

(assert (=> d!862480 (= (lemmaFindConcatSeparationEquivalentToExists!1009 lt!1058896 lt!1058893 s!11993) lt!1058972)))

(declare-fun bs!535947 () Bool)

(assert (= bs!535947 d!862480))

(assert (=> bs!535947 m!3407835))

(declare-fun m!3407987 () Bool)

(assert (=> bs!535947 m!3407987))

(assert (=> bs!535947 m!3407835))

(assert (=> bs!535947 m!3407839))

(assert (=> bs!535947 m!3407837))

(declare-fun m!3407989 () Bool)

(assert (=> bs!535947 m!3407989))

(assert (=> b!3120150 d!862480))

(declare-fun e!1948595 () Bool)

(assert (=> b!3120146 (= tp!977991 e!1948595)))

(declare-fun b!3120601 () Bool)

(declare-fun tp!978027 () Bool)

(declare-fun tp!978025 () Bool)

(assert (=> b!3120601 (= e!1948595 (and tp!978027 tp!978025))))

(declare-fun b!3120600 () Bool)

(assert (=> b!3120600 (= e!1948595 tp_is_empty!16811)))

(declare-fun b!3120603 () Bool)

(declare-fun tp!978024 () Bool)

(declare-fun tp!978028 () Bool)

(assert (=> b!3120603 (= e!1948595 (and tp!978024 tp!978028))))

(declare-fun b!3120602 () Bool)

(declare-fun tp!978026 () Bool)

(assert (=> b!3120602 (= e!1948595 tp!978026)))

(assert (= (and b!3120146 (is-ElementMatch!9624 (regOne!19760 r!17423))) b!3120600))

(assert (= (and b!3120146 (is-Concat!14945 (regOne!19760 r!17423))) b!3120601))

(assert (= (and b!3120146 (is-Star!9624 (regOne!19760 r!17423))) b!3120602))

(assert (= (and b!3120146 (is-Union!9624 (regOne!19760 r!17423))) b!3120603))

(declare-fun e!1948596 () Bool)

(assert (=> b!3120146 (= tp!977993 e!1948596)))

(declare-fun b!3120605 () Bool)

(declare-fun tp!978032 () Bool)

(declare-fun tp!978030 () Bool)

(assert (=> b!3120605 (= e!1948596 (and tp!978032 tp!978030))))

(declare-fun b!3120604 () Bool)

(assert (=> b!3120604 (= e!1948596 tp_is_empty!16811)))

(declare-fun b!3120607 () Bool)

(declare-fun tp!978029 () Bool)

(declare-fun tp!978033 () Bool)

(assert (=> b!3120607 (= e!1948596 (and tp!978029 tp!978033))))

(declare-fun b!3120606 () Bool)

(declare-fun tp!978031 () Bool)

(assert (=> b!3120606 (= e!1948596 tp!978031)))

(assert (= (and b!3120146 (is-ElementMatch!9624 (regTwo!19760 r!17423))) b!3120604))

(assert (= (and b!3120146 (is-Concat!14945 (regTwo!19760 r!17423))) b!3120605))

(assert (= (and b!3120146 (is-Star!9624 (regTwo!19760 r!17423))) b!3120606))

(assert (= (and b!3120146 (is-Union!9624 (regTwo!19760 r!17423))) b!3120607))

(declare-fun e!1948597 () Bool)

(assert (=> b!3120142 (= tp!977994 e!1948597)))

(declare-fun b!3120609 () Bool)

(declare-fun tp!978037 () Bool)

(declare-fun tp!978035 () Bool)

(assert (=> b!3120609 (= e!1948597 (and tp!978037 tp!978035))))

(declare-fun b!3120608 () Bool)

(assert (=> b!3120608 (= e!1948597 tp_is_empty!16811)))

(declare-fun b!3120611 () Bool)

(declare-fun tp!978034 () Bool)

(declare-fun tp!978038 () Bool)

(assert (=> b!3120611 (= e!1948597 (and tp!978034 tp!978038))))

(declare-fun b!3120610 () Bool)

(declare-fun tp!978036 () Bool)

(assert (=> b!3120610 (= e!1948597 tp!978036)))

(assert (= (and b!3120142 (is-ElementMatch!9624 (reg!9953 r!17423))) b!3120608))

(assert (= (and b!3120142 (is-Concat!14945 (reg!9953 r!17423))) b!3120609))

(assert (= (and b!3120142 (is-Star!9624 (reg!9953 r!17423))) b!3120610))

(assert (= (and b!3120142 (is-Union!9624 (reg!9953 r!17423))) b!3120611))

(declare-fun b!3120616 () Bool)

(declare-fun e!1948600 () Bool)

(declare-fun tp!978041 () Bool)

(assert (=> b!3120616 (= e!1948600 (and tp_is_empty!16811 tp!978041))))

(assert (=> b!3120144 (= tp!977990 e!1948600)))

(assert (= (and b!3120144 (is-Cons!35365 (t!234554 s!11993))) b!3120616))

(declare-fun e!1948601 () Bool)

(assert (=> b!3120143 (= tp!977992 e!1948601)))

(declare-fun b!3120618 () Bool)

(declare-fun tp!978045 () Bool)

(declare-fun tp!978043 () Bool)

(assert (=> b!3120618 (= e!1948601 (and tp!978045 tp!978043))))

(declare-fun b!3120617 () Bool)

(assert (=> b!3120617 (= e!1948601 tp_is_empty!16811)))

(declare-fun b!3120620 () Bool)

(declare-fun tp!978042 () Bool)

(declare-fun tp!978046 () Bool)

(assert (=> b!3120620 (= e!1948601 (and tp!978042 tp!978046))))

(declare-fun b!3120619 () Bool)

(declare-fun tp!978044 () Bool)

(assert (=> b!3120619 (= e!1948601 tp!978044)))

(assert (= (and b!3120143 (is-ElementMatch!9624 (regOne!19761 r!17423))) b!3120617))

(assert (= (and b!3120143 (is-Concat!14945 (regOne!19761 r!17423))) b!3120618))

(assert (= (and b!3120143 (is-Star!9624 (regOne!19761 r!17423))) b!3120619))

(assert (= (and b!3120143 (is-Union!9624 (regOne!19761 r!17423))) b!3120620))

(declare-fun e!1948602 () Bool)

(assert (=> b!3120143 (= tp!977995 e!1948602)))

(declare-fun b!3120622 () Bool)

(declare-fun tp!978050 () Bool)

(declare-fun tp!978048 () Bool)

(assert (=> b!3120622 (= e!1948602 (and tp!978050 tp!978048))))

(declare-fun b!3120621 () Bool)

(assert (=> b!3120621 (= e!1948602 tp_is_empty!16811)))

(declare-fun b!3120624 () Bool)

(declare-fun tp!978047 () Bool)

(declare-fun tp!978051 () Bool)

(assert (=> b!3120624 (= e!1948602 (and tp!978047 tp!978051))))

(declare-fun b!3120623 () Bool)

(declare-fun tp!978049 () Bool)

(assert (=> b!3120623 (= e!1948602 tp!978049)))

(assert (= (and b!3120143 (is-ElementMatch!9624 (regTwo!19761 r!17423))) b!3120621))

(assert (= (and b!3120143 (is-Concat!14945 (regTwo!19761 r!17423))) b!3120622))

(assert (= (and b!3120143 (is-Star!9624 (regTwo!19761 r!17423))) b!3120623))

(assert (= (and b!3120143 (is-Union!9624 (regTwo!19761 r!17423))) b!3120624))

(push 1)

(assert (not bm!221718))

(assert (not b!3120622))

(assert (not d!862476))

(assert (not d!862456))

(assert (not b!3120550))

(assert (not bm!221785))

(assert (not d!862458))

(assert (not b!3120337))

(assert (not b!3120226))

(assert (not bm!221719))

(assert (not b!3120334))

(assert (not bm!221779))

(assert (not bm!221721))

(assert (not bm!221720))

(assert (not b!3120419))

(assert (not b!3120603))

(assert (not b!3120623))

(assert (not b!3120498))

(assert (not b!3120330))

(assert (not b!3120606))

(assert (not d!862474))

(assert (not b!3120259))

(assert (not b!3120618))

(assert (not b!3120602))

(assert (not d!862468))

(assert (not b!3120551))

(assert (not b!3120335))

(assert (not b!3120495))

(assert tp_is_empty!16811)

(assert (not d!862480))

(assert (not bm!221765))

(assert (not b!3120331))

(assert (not b!3120438))

(assert (not b!3120607))

(assert (not bm!221760))

(assert (not bm!221761))

(assert (not b!3120492))

(assert (not b!3120610))

(assert (not b!3120619))

(assert (not b!3120549))

(assert (not bm!221766))

(assert (not b!3120228))

(assert (not d!862452))

(assert (not b!3120328))

(assert (not b!3120605))

(assert (not b!3120554))

(assert (not b!3120489))

(assert (not b!3120506))

(assert (not b!3120261))

(assert (not d!862462))

(assert (not b!3120547))

(assert (not b!3120496))

(assert (not bm!221782))

(assert (not bm!221762))

(assert (not b!3120609))

(assert (not b!3120616))

(assert (not b!3120611))

(assert (not b!3120601))

(assert (not b!3120624))

(assert (not b!3120483))

(assert (not bm!221781))

(assert (not b!3120620))

(assert (not b!3120491))

(assert (not b!3120553))

(assert (not bm!221738))

(assert (not d!862472))

(assert (not bm!221783))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

