; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294280 () Bool)

(assert start!294280)

(declare-fun b!3101797 () Bool)

(declare-fun e!1938300 () Bool)

(declare-fun tp!974842 () Bool)

(declare-fun tp!974843 () Bool)

(assert (=> b!3101797 (= e!1938300 (and tp!974842 tp!974843))))

(declare-fun b!3101798 () Bool)

(declare-fun tp_is_empty!16689 () Bool)

(assert (=> b!3101798 (= e!1938300 tp_is_empty!16689)))

(declare-fun b!3101799 () Bool)

(declare-fun e!1938301 () Bool)

(declare-fun e!1938299 () Bool)

(assert (=> b!3101799 (= e!1938301 (not e!1938299))))

(declare-fun res!1270567 () Bool)

(assert (=> b!3101799 (=> res!1270567 e!1938299)))

(declare-fun lt!1055902 () Bool)

(declare-datatypes ((C!19312 0))(
  ( (C!19313 (val!11692 Int)) )
))
(declare-datatypes ((Regex!9563 0))(
  ( (ElementMatch!9563 (c!518333 C!19312)) (Concat!14884 (regOne!19638 Regex!9563) (regTwo!19638 Regex!9563)) (EmptyExpr!9563) (Star!9563 (reg!9892 Regex!9563)) (EmptyLang!9563) (Union!9563 (regOne!19639 Regex!9563) (regTwo!19639 Regex!9563)) )
))
(declare-fun r!17423 () Regex!9563)

(get-info :version)

(assert (=> b!3101799 (= res!1270567 (or lt!1055902 ((_ is Concat!14884) r!17423) (not ((_ is Union!9563) r!17423))))))

(declare-datatypes ((List!35428 0))(
  ( (Nil!35304) (Cons!35304 (h!40724 C!19312) (t!234493 List!35428)) )
))
(declare-fun s!11993 () List!35428)

(declare-fun matchRSpec!1700 (Regex!9563 List!35428) Bool)

(assert (=> b!3101799 (= lt!1055902 (matchRSpec!1700 r!17423 s!11993))))

(declare-fun matchR!4445 (Regex!9563 List!35428) Bool)

(assert (=> b!3101799 (= lt!1055902 (matchR!4445 r!17423 s!11993))))

(declare-datatypes ((Unit!49565 0))(
  ( (Unit!49566) )
))
(declare-fun lt!1055901 () Unit!49565)

(declare-fun mainMatchTheorem!1700 (Regex!9563 List!35428) Unit!49565)

(assert (=> b!3101799 (= lt!1055901 (mainMatchTheorem!1700 r!17423 s!11993))))

(declare-fun b!3101800 () Bool)

(declare-fun e!1938302 () Bool)

(assert (=> b!3101800 (= e!1938299 e!1938302)))

(declare-fun res!1270569 () Bool)

(assert (=> b!3101800 (=> res!1270569 e!1938302)))

(declare-fun lt!1055903 () Regex!9563)

(declare-fun isEmptyLang!614 (Regex!9563) Bool)

(assert (=> b!3101800 (= res!1270569 (not (isEmptyLang!614 lt!1055903)))))

(declare-fun lt!1055904 () Regex!9563)

(declare-fun simplify!518 (Regex!9563) Regex!9563)

(assert (=> b!3101800 (= lt!1055904 (simplify!518 (regTwo!19639 r!17423)))))

(assert (=> b!3101800 (= lt!1055903 (simplify!518 (regOne!19639 r!17423)))))

(declare-fun b!3101801 () Bool)

(declare-fun tp!974844 () Bool)

(declare-fun tp!974841 () Bool)

(assert (=> b!3101801 (= e!1938300 (and tp!974844 tp!974841))))

(declare-fun b!3101802 () Bool)

(declare-fun tp!974845 () Bool)

(assert (=> b!3101802 (= e!1938300 tp!974845)))

(declare-fun b!3101803 () Bool)

(declare-fun e!1938303 () Bool)

(declare-fun tp!974840 () Bool)

(assert (=> b!3101803 (= e!1938303 (and tp_is_empty!16689 tp!974840))))

(declare-fun b!3101804 () Bool)

(declare-fun res!1270570 () Bool)

(assert (=> b!3101804 (=> res!1270570 e!1938302)))

(declare-fun validRegex!4296 (Regex!9563) Bool)

(assert (=> b!3101804 (= res!1270570 (not (validRegex!4296 (regTwo!19639 r!17423))))))

(declare-fun res!1270568 () Bool)

(assert (=> start!294280 (=> (not res!1270568) (not e!1938301))))

(assert (=> start!294280 (= res!1270568 (validRegex!4296 r!17423))))

(assert (=> start!294280 e!1938301))

(assert (=> start!294280 e!1938300))

(assert (=> start!294280 e!1938303))

(declare-fun b!3101805 () Bool)

(declare-fun lt!1055905 () Int)

(declare-fun lt!1055906 () Int)

(declare-fun regexDepth!109 (Regex!9563) Int)

(assert (=> b!3101805 (= e!1938302 (< (+ lt!1055905 lt!1055906) (+ (regexDepth!109 r!17423) lt!1055906)))))

(declare-fun size!26575 (List!35428) Int)

(assert (=> b!3101805 (= lt!1055906 (size!26575 s!11993))))

(assert (=> b!3101805 (= lt!1055905 (regexDepth!109 (regTwo!19639 r!17423)))))

(assert (= (and start!294280 res!1270568) b!3101799))

(assert (= (and b!3101799 (not res!1270567)) b!3101800))

(assert (= (and b!3101800 (not res!1270569)) b!3101804))

(assert (= (and b!3101804 (not res!1270570)) b!3101805))

(assert (= (and start!294280 ((_ is ElementMatch!9563) r!17423)) b!3101798))

(assert (= (and start!294280 ((_ is Concat!14884) r!17423)) b!3101801))

(assert (= (and start!294280 ((_ is Star!9563) r!17423)) b!3101802))

(assert (= (and start!294280 ((_ is Union!9563) r!17423)) b!3101797))

(assert (= (and start!294280 ((_ is Cons!35304) s!11993)) b!3101803))

(declare-fun m!3401343 () Bool)

(assert (=> b!3101799 m!3401343))

(declare-fun m!3401345 () Bool)

(assert (=> b!3101799 m!3401345))

(declare-fun m!3401347 () Bool)

(assert (=> b!3101799 m!3401347))

(declare-fun m!3401349 () Bool)

(assert (=> b!3101805 m!3401349))

(declare-fun m!3401351 () Bool)

(assert (=> b!3101805 m!3401351))

(declare-fun m!3401353 () Bool)

(assert (=> b!3101805 m!3401353))

(declare-fun m!3401355 () Bool)

(assert (=> b!3101804 m!3401355))

(declare-fun m!3401357 () Bool)

(assert (=> start!294280 m!3401357))

(declare-fun m!3401359 () Bool)

(assert (=> b!3101800 m!3401359))

(declare-fun m!3401361 () Bool)

(assert (=> b!3101800 m!3401361))

(declare-fun m!3401363 () Bool)

(assert (=> b!3101800 m!3401363))

(check-sat (not b!3101800) (not b!3101801) (not b!3101802) (not b!3101805) (not b!3101797) (not start!294280) (not b!3101799) tp_is_empty!16689 (not b!3101803) (not b!3101804))
(check-sat)
(get-model)

(declare-fun b!3101840 () Bool)

(declare-fun e!1938333 () Bool)

(declare-fun e!1938330 () Bool)

(assert (=> b!3101840 (= e!1938333 e!1938330)))

(declare-fun c!518345 () Bool)

(assert (=> b!3101840 (= c!518345 ((_ is Union!9563) (regTwo!19639 r!17423)))))

(declare-fun b!3101841 () Bool)

(declare-fun e!1938327 () Bool)

(declare-fun e!1938332 () Bool)

(assert (=> b!3101841 (= e!1938327 e!1938332)))

(declare-fun res!1270587 () Bool)

(assert (=> b!3101841 (=> (not res!1270587) (not e!1938332))))

(declare-fun call!218703 () Bool)

(assert (=> b!3101841 (= res!1270587 call!218703)))

(declare-fun b!3101842 () Bool)

(declare-fun res!1270586 () Bool)

(declare-fun e!1938331 () Bool)

(assert (=> b!3101842 (=> (not res!1270586) (not e!1938331))))

(declare-fun call!218705 () Bool)

(assert (=> b!3101842 (= res!1270586 call!218705)))

(assert (=> b!3101842 (= e!1938330 e!1938331)))

(declare-fun b!3101843 () Bool)

(declare-fun e!1938328 () Bool)

(declare-fun call!218704 () Bool)

(assert (=> b!3101843 (= e!1938328 call!218704)))

(declare-fun b!3101844 () Bool)

(assert (=> b!3101844 (= e!1938333 e!1938328)))

(declare-fun res!1270589 () Bool)

(declare-fun nullable!3209 (Regex!9563) Bool)

(assert (=> b!3101844 (= res!1270589 (not (nullable!3209 (reg!9892 (regTwo!19639 r!17423)))))))

(assert (=> b!3101844 (=> (not res!1270589) (not e!1938328))))

(declare-fun c!518344 () Bool)

(declare-fun bm!218699 () Bool)

(assert (=> bm!218699 (= call!218704 (validRegex!4296 (ite c!518344 (reg!9892 (regTwo!19639 r!17423)) (ite c!518345 (regOne!19639 (regTwo!19639 r!17423)) (regTwo!19638 (regTwo!19639 r!17423))))))))

(declare-fun b!3101845 () Bool)

(assert (=> b!3101845 (= e!1938332 call!218705)))

(declare-fun bm!218698 () Bool)

(assert (=> bm!218698 (= call!218705 call!218704)))

(declare-fun d!861085 () Bool)

(declare-fun res!1270583 () Bool)

(declare-fun e!1938334 () Bool)

(assert (=> d!861085 (=> res!1270583 e!1938334)))

(assert (=> d!861085 (= res!1270583 ((_ is ElementMatch!9563) (regTwo!19639 r!17423)))))

(assert (=> d!861085 (= (validRegex!4296 (regTwo!19639 r!17423)) e!1938334)))

(declare-fun b!3101846 () Bool)

(assert (=> b!3101846 (= e!1938334 e!1938333)))

(assert (=> b!3101846 (= c!518344 ((_ is Star!9563) (regTwo!19639 r!17423)))))

(declare-fun bm!218700 () Bool)

(assert (=> bm!218700 (= call!218703 (validRegex!4296 (ite c!518345 (regTwo!19639 (regTwo!19639 r!17423)) (regOne!19638 (regTwo!19639 r!17423)))))))

(declare-fun b!3101847 () Bool)

(assert (=> b!3101847 (= e!1938331 call!218703)))

(declare-fun b!3101848 () Bool)

(declare-fun res!1270588 () Bool)

(assert (=> b!3101848 (=> res!1270588 e!1938327)))

(assert (=> b!3101848 (= res!1270588 (not ((_ is Concat!14884) (regTwo!19639 r!17423))))))

(assert (=> b!3101848 (= e!1938330 e!1938327)))

(assert (= (and d!861085 (not res!1270583)) b!3101846))

(assert (= (and b!3101846 c!518344) b!3101844))

(assert (= (and b!3101846 (not c!518344)) b!3101840))

(assert (= (and b!3101844 res!1270589) b!3101843))

(assert (= (and b!3101840 c!518345) b!3101842))

(assert (= (and b!3101840 (not c!518345)) b!3101848))

(assert (= (and b!3101842 res!1270586) b!3101847))

(assert (= (and b!3101848 (not res!1270588)) b!3101841))

(assert (= (and b!3101841 res!1270587) b!3101845))

(assert (= (or b!3101842 b!3101845) bm!218698))

(assert (= (or b!3101847 b!3101841) bm!218700))

(assert (= (or b!3101843 bm!218698) bm!218699))

(declare-fun m!3401365 () Bool)

(assert (=> b!3101844 m!3401365))

(declare-fun m!3401367 () Bool)

(assert (=> bm!218699 m!3401367))

(declare-fun m!3401369 () Bool)

(assert (=> bm!218700 m!3401369))

(assert (=> b!3101804 d!861085))

(declare-fun b!3102091 () Bool)

(assert (=> b!3102091 true))

(assert (=> b!3102091 true))

(declare-fun bs!535698 () Bool)

(declare-fun b!3102090 () Bool)

(assert (= bs!535698 (and b!3102090 b!3102091)))

(declare-fun lambda!114904 () Int)

(declare-fun lambda!114903 () Int)

(assert (=> bs!535698 (not (= lambda!114904 lambda!114903))))

(assert (=> b!3102090 true))

(assert (=> b!3102090 true))

(declare-fun b!3102088 () Bool)

(declare-fun e!1938469 () Bool)

(assert (=> b!3102088 (= e!1938469 (matchRSpec!1700 (regTwo!19639 r!17423) s!11993))))

(declare-fun bm!218756 () Bool)

(declare-fun call!218762 () Bool)

(declare-fun isEmpty!19655 (List!35428) Bool)

(assert (=> bm!218756 (= call!218762 (isEmpty!19655 s!11993))))

(declare-fun b!3102089 () Bool)

(declare-fun c!518427 () Bool)

(assert (=> b!3102089 (= c!518427 ((_ is ElementMatch!9563) r!17423))))

(declare-fun e!1938466 () Bool)

(declare-fun e!1938465 () Bool)

(assert (=> b!3102089 (= e!1938466 e!1938465)))

(declare-fun e!1938468 () Bool)

(declare-fun call!218761 () Bool)

(assert (=> b!3102090 (= e!1938468 call!218761)))

(declare-fun e!1938470 () Bool)

(assert (=> b!3102091 (= e!1938470 call!218761)))

(declare-fun d!861089 () Bool)

(declare-fun c!518428 () Bool)

(assert (=> d!861089 (= c!518428 ((_ is EmptyExpr!9563) r!17423))))

(declare-fun e!1938467 () Bool)

(assert (=> d!861089 (= (matchRSpec!1700 r!17423 s!11993) e!1938467)))

(declare-fun b!3102092 () Bool)

(assert (=> b!3102092 (= e!1938467 call!218762)))

(declare-fun b!3102093 () Bool)

(declare-fun e!1938471 () Bool)

(assert (=> b!3102093 (= e!1938471 e!1938468)))

(declare-fun c!518430 () Bool)

(assert (=> b!3102093 (= c!518430 ((_ is Star!9563) r!17423))))

(declare-fun b!3102094 () Bool)

(declare-fun res!1270663 () Bool)

(assert (=> b!3102094 (=> res!1270663 e!1938470)))

(assert (=> b!3102094 (= res!1270663 call!218762)))

(assert (=> b!3102094 (= e!1938468 e!1938470)))

(declare-fun bm!218757 () Bool)

(declare-fun Exists!1826 (Int) Bool)

(assert (=> bm!218757 (= call!218761 (Exists!1826 (ite c!518430 lambda!114903 lambda!114904)))))

(declare-fun b!3102095 () Bool)

(declare-fun c!518429 () Bool)

(assert (=> b!3102095 (= c!518429 ((_ is Union!9563) r!17423))))

(assert (=> b!3102095 (= e!1938465 e!1938471)))

(declare-fun b!3102096 () Bool)

(assert (=> b!3102096 (= e!1938471 e!1938469)))

(declare-fun res!1270665 () Bool)

(assert (=> b!3102096 (= res!1270665 (matchRSpec!1700 (regOne!19639 r!17423) s!11993))))

(assert (=> b!3102096 (=> res!1270665 e!1938469)))

(declare-fun b!3102097 () Bool)

(assert (=> b!3102097 (= e!1938467 e!1938466)))

(declare-fun res!1270664 () Bool)

(assert (=> b!3102097 (= res!1270664 (not ((_ is EmptyLang!9563) r!17423)))))

(assert (=> b!3102097 (=> (not res!1270664) (not e!1938466))))

(declare-fun b!3102098 () Bool)

(assert (=> b!3102098 (= e!1938465 (= s!11993 (Cons!35304 (c!518333 r!17423) Nil!35304)))))

(assert (= (and d!861089 c!518428) b!3102092))

(assert (= (and d!861089 (not c!518428)) b!3102097))

(assert (= (and b!3102097 res!1270664) b!3102089))

(assert (= (and b!3102089 c!518427) b!3102098))

(assert (= (and b!3102089 (not c!518427)) b!3102095))

(assert (= (and b!3102095 c!518429) b!3102096))

(assert (= (and b!3102095 (not c!518429)) b!3102093))

(assert (= (and b!3102096 (not res!1270665)) b!3102088))

(assert (= (and b!3102093 c!518430) b!3102094))

(assert (= (and b!3102093 (not c!518430)) b!3102090))

(assert (= (and b!3102094 (not res!1270663)) b!3102091))

(assert (= (or b!3102091 b!3102090) bm!218757))

(assert (= (or b!3102092 b!3102094) bm!218756))

(declare-fun m!3401441 () Bool)

(assert (=> b!3102088 m!3401441))

(declare-fun m!3401443 () Bool)

(assert (=> bm!218756 m!3401443))

(declare-fun m!3401445 () Bool)

(assert (=> bm!218757 m!3401445))

(declare-fun m!3401447 () Bool)

(assert (=> b!3102096 m!3401447))

(assert (=> b!3101799 d!861089))

(declare-fun b!3102221 () Bool)

(declare-fun e!1938545 () Bool)

(declare-fun derivativeStep!2804 (Regex!9563 C!19312) Regex!9563)

(declare-fun head!6863 (List!35428) C!19312)

(declare-fun tail!5089 (List!35428) List!35428)

(assert (=> b!3102221 (= e!1938545 (matchR!4445 (derivativeStep!2804 r!17423 (head!6863 s!11993)) (tail!5089 s!11993)))))

(declare-fun d!861105 () Bool)

(declare-fun e!1938543 () Bool)

(assert (=> d!861105 e!1938543))

(declare-fun c!518463 () Bool)

(assert (=> d!861105 (= c!518463 ((_ is EmptyExpr!9563) r!17423))))

(declare-fun lt!1055946 () Bool)

(assert (=> d!861105 (= lt!1055946 e!1938545)))

(declare-fun c!518462 () Bool)

(assert (=> d!861105 (= c!518462 (isEmpty!19655 s!11993))))

(assert (=> d!861105 (validRegex!4296 r!17423)))

(assert (=> d!861105 (= (matchR!4445 r!17423 s!11993) lt!1055946)))

(declare-fun b!3102222 () Bool)

(declare-fun call!218791 () Bool)

(assert (=> b!3102222 (= e!1938543 (= lt!1055946 call!218791))))

(declare-fun bm!218786 () Bool)

(assert (=> bm!218786 (= call!218791 (isEmpty!19655 s!11993))))

(declare-fun b!3102223 () Bool)

(declare-fun e!1938541 () Bool)

(assert (=> b!3102223 (= e!1938541 (not lt!1055946))))

(declare-fun b!3102224 () Bool)

(assert (=> b!3102224 (= e!1938545 (nullable!3209 r!17423))))

(declare-fun b!3102225 () Bool)

(declare-fun res!1270711 () Bool)

(declare-fun e!1938542 () Bool)

(assert (=> b!3102225 (=> res!1270711 e!1938542)))

(declare-fun e!1938544 () Bool)

(assert (=> b!3102225 (= res!1270711 e!1938544)))

(declare-fun res!1270709 () Bool)

(assert (=> b!3102225 (=> (not res!1270709) (not e!1938544))))

(assert (=> b!3102225 (= res!1270709 lt!1055946)))

(declare-fun b!3102226 () Bool)

(declare-fun e!1938539 () Bool)

(assert (=> b!3102226 (= e!1938539 (not (= (head!6863 s!11993) (c!518333 r!17423))))))

(declare-fun b!3102227 () Bool)

(declare-fun res!1270710 () Bool)

(assert (=> b!3102227 (=> res!1270710 e!1938542)))

(assert (=> b!3102227 (= res!1270710 (not ((_ is ElementMatch!9563) r!17423)))))

(assert (=> b!3102227 (= e!1938541 e!1938542)))

(declare-fun b!3102228 () Bool)

(assert (=> b!3102228 (= e!1938544 (= (head!6863 s!11993) (c!518333 r!17423)))))

(declare-fun b!3102229 () Bool)

(declare-fun res!1270714 () Bool)

(assert (=> b!3102229 (=> res!1270714 e!1938539)))

(assert (=> b!3102229 (= res!1270714 (not (isEmpty!19655 (tail!5089 s!11993))))))

(declare-fun b!3102230 () Bool)

(assert (=> b!3102230 (= e!1938543 e!1938541)))

(declare-fun c!518464 () Bool)

(assert (=> b!3102230 (= c!518464 ((_ is EmptyLang!9563) r!17423))))

(declare-fun b!3102231 () Bool)

(declare-fun res!1270715 () Bool)

(assert (=> b!3102231 (=> (not res!1270715) (not e!1938544))))

(assert (=> b!3102231 (= res!1270715 (not call!218791))))

(declare-fun b!3102232 () Bool)

(declare-fun e!1938546 () Bool)

(assert (=> b!3102232 (= e!1938542 e!1938546)))

(declare-fun res!1270713 () Bool)

(assert (=> b!3102232 (=> (not res!1270713) (not e!1938546))))

(assert (=> b!3102232 (= res!1270713 (not lt!1055946))))

(declare-fun b!3102233 () Bool)

(assert (=> b!3102233 (= e!1938546 e!1938539)))

(declare-fun res!1270712 () Bool)

(assert (=> b!3102233 (=> res!1270712 e!1938539)))

(assert (=> b!3102233 (= res!1270712 call!218791)))

(declare-fun b!3102234 () Bool)

(declare-fun res!1270708 () Bool)

(assert (=> b!3102234 (=> (not res!1270708) (not e!1938544))))

(assert (=> b!3102234 (= res!1270708 (isEmpty!19655 (tail!5089 s!11993)))))

(assert (= (and d!861105 c!518462) b!3102224))

(assert (= (and d!861105 (not c!518462)) b!3102221))

(assert (= (and d!861105 c!518463) b!3102222))

(assert (= (and d!861105 (not c!518463)) b!3102230))

(assert (= (and b!3102230 c!518464) b!3102223))

(assert (= (and b!3102230 (not c!518464)) b!3102227))

(assert (= (and b!3102227 (not res!1270710)) b!3102225))

(assert (= (and b!3102225 res!1270709) b!3102231))

(assert (= (and b!3102231 res!1270715) b!3102234))

(assert (= (and b!3102234 res!1270708) b!3102228))

(assert (= (and b!3102225 (not res!1270711)) b!3102232))

(assert (= (and b!3102232 res!1270713) b!3102233))

(assert (= (and b!3102233 (not res!1270712)) b!3102229))

(assert (= (and b!3102229 (not res!1270714)) b!3102226))

(assert (= (or b!3102222 b!3102231 b!3102233) bm!218786))

(declare-fun m!3401473 () Bool)

(assert (=> b!3102228 m!3401473))

(declare-fun m!3401475 () Bool)

(assert (=> b!3102234 m!3401475))

(assert (=> b!3102234 m!3401475))

(declare-fun m!3401477 () Bool)

(assert (=> b!3102234 m!3401477))

(assert (=> d!861105 m!3401443))

(assert (=> d!861105 m!3401357))

(assert (=> b!3102229 m!3401475))

(assert (=> b!3102229 m!3401475))

(assert (=> b!3102229 m!3401477))

(assert (=> b!3102221 m!3401473))

(assert (=> b!3102221 m!3401473))

(declare-fun m!3401479 () Bool)

(assert (=> b!3102221 m!3401479))

(assert (=> b!3102221 m!3401475))

(assert (=> b!3102221 m!3401479))

(assert (=> b!3102221 m!3401475))

(declare-fun m!3401481 () Bool)

(assert (=> b!3102221 m!3401481))

(assert (=> bm!218786 m!3401443))

(declare-fun m!3401483 () Bool)

(assert (=> b!3102224 m!3401483))

(assert (=> b!3102226 m!3401473))

(assert (=> b!3101799 d!861105))

(declare-fun d!861113 () Bool)

(assert (=> d!861113 (= (matchR!4445 r!17423 s!11993) (matchRSpec!1700 r!17423 s!11993))))

(declare-fun lt!1055949 () Unit!49565)

(declare-fun choose!18353 (Regex!9563 List!35428) Unit!49565)

(assert (=> d!861113 (= lt!1055949 (choose!18353 r!17423 s!11993))))

(assert (=> d!861113 (validRegex!4296 r!17423)))

(assert (=> d!861113 (= (mainMatchTheorem!1700 r!17423 s!11993) lt!1055949)))

(declare-fun bs!535699 () Bool)

(assert (= bs!535699 d!861113))

(assert (=> bs!535699 m!3401345))

(assert (=> bs!535699 m!3401343))

(declare-fun m!3401485 () Bool)

(assert (=> bs!535699 m!3401485))

(assert (=> bs!535699 m!3401357))

(assert (=> b!3101799 d!861113))

(declare-fun b!3102256 () Bool)

(declare-fun e!1938559 () Bool)

(declare-fun e!1938556 () Bool)

(assert (=> b!3102256 (= e!1938559 e!1938556)))

(declare-fun c!518466 () Bool)

(assert (=> b!3102256 (= c!518466 ((_ is Union!9563) r!17423))))

(declare-fun b!3102257 () Bool)

(declare-fun e!1938554 () Bool)

(declare-fun e!1938558 () Bool)

(assert (=> b!3102257 (= e!1938554 e!1938558)))

(declare-fun res!1270718 () Bool)

(assert (=> b!3102257 (=> (not res!1270718) (not e!1938558))))

(declare-fun call!218792 () Bool)

(assert (=> b!3102257 (= res!1270718 call!218792)))

(declare-fun b!3102258 () Bool)

(declare-fun res!1270717 () Bool)

(declare-fun e!1938557 () Bool)

(assert (=> b!3102258 (=> (not res!1270717) (not e!1938557))))

(declare-fun call!218794 () Bool)

(assert (=> b!3102258 (= res!1270717 call!218794)))

(assert (=> b!3102258 (= e!1938556 e!1938557)))

(declare-fun b!3102259 () Bool)

(declare-fun e!1938555 () Bool)

(declare-fun call!218793 () Bool)

(assert (=> b!3102259 (= e!1938555 call!218793)))

(declare-fun b!3102260 () Bool)

(assert (=> b!3102260 (= e!1938559 e!1938555)))

(declare-fun res!1270720 () Bool)

(assert (=> b!3102260 (= res!1270720 (not (nullable!3209 (reg!9892 r!17423))))))

(assert (=> b!3102260 (=> (not res!1270720) (not e!1938555))))

(declare-fun c!518465 () Bool)

(declare-fun bm!218788 () Bool)

(assert (=> bm!218788 (= call!218793 (validRegex!4296 (ite c!518465 (reg!9892 r!17423) (ite c!518466 (regOne!19639 r!17423) (regTwo!19638 r!17423)))))))

(declare-fun b!3102261 () Bool)

(assert (=> b!3102261 (= e!1938558 call!218794)))

(declare-fun bm!218787 () Bool)

(assert (=> bm!218787 (= call!218794 call!218793)))

(declare-fun d!861115 () Bool)

(declare-fun res!1270716 () Bool)

(declare-fun e!1938560 () Bool)

(assert (=> d!861115 (=> res!1270716 e!1938560)))

(assert (=> d!861115 (= res!1270716 ((_ is ElementMatch!9563) r!17423))))

(assert (=> d!861115 (= (validRegex!4296 r!17423) e!1938560)))

(declare-fun b!3102262 () Bool)

(assert (=> b!3102262 (= e!1938560 e!1938559)))

(assert (=> b!3102262 (= c!518465 ((_ is Star!9563) r!17423))))

(declare-fun bm!218789 () Bool)

(assert (=> bm!218789 (= call!218792 (validRegex!4296 (ite c!518466 (regTwo!19639 r!17423) (regOne!19638 r!17423))))))

(declare-fun b!3102263 () Bool)

(assert (=> b!3102263 (= e!1938557 call!218792)))

(declare-fun b!3102264 () Bool)

(declare-fun res!1270719 () Bool)

(assert (=> b!3102264 (=> res!1270719 e!1938554)))

(assert (=> b!3102264 (= res!1270719 (not ((_ is Concat!14884) r!17423)))))

(assert (=> b!3102264 (= e!1938556 e!1938554)))

(assert (= (and d!861115 (not res!1270716)) b!3102262))

(assert (= (and b!3102262 c!518465) b!3102260))

(assert (= (and b!3102262 (not c!518465)) b!3102256))

(assert (= (and b!3102260 res!1270720) b!3102259))

(assert (= (and b!3102256 c!518466) b!3102258))

(assert (= (and b!3102256 (not c!518466)) b!3102264))

(assert (= (and b!3102258 res!1270717) b!3102263))

(assert (= (and b!3102264 (not res!1270719)) b!3102257))

(assert (= (and b!3102257 res!1270718) b!3102261))

(assert (= (or b!3102258 b!3102261) bm!218787))

(assert (= (or b!3102263 b!3102257) bm!218789))

(assert (= (or b!3102259 bm!218787) bm!218788))

(declare-fun m!3401487 () Bool)

(assert (=> b!3102260 m!3401487))

(declare-fun m!3401489 () Bool)

(assert (=> bm!218788 m!3401489))

(declare-fun m!3401491 () Bool)

(assert (=> bm!218789 m!3401491))

(assert (=> start!294280 d!861115))

(declare-fun d!861117 () Bool)

(assert (=> d!861117 (= (isEmptyLang!614 lt!1055903) ((_ is EmptyLang!9563) lt!1055903))))

(assert (=> b!3101800 d!861117))

(declare-fun b!3102315 () Bool)

(declare-fun e!1938590 () Regex!9563)

(declare-fun e!1938602 () Regex!9563)

(assert (=> b!3102315 (= e!1938590 e!1938602)))

(declare-fun lt!1055964 () Regex!9563)

(declare-fun call!218813 () Regex!9563)

(assert (=> b!3102315 (= lt!1055964 call!218813)))

(declare-fun lt!1055967 () Regex!9563)

(declare-fun call!218811 () Regex!9563)

(assert (=> b!3102315 (= lt!1055967 call!218811)))

(declare-fun c!518497 () Bool)

(declare-fun call!218812 () Bool)

(assert (=> b!3102315 (= c!518497 call!218812)))

(declare-fun b!3102316 () Bool)

(declare-fun e!1938597 () Bool)

(declare-fun call!218809 () Bool)

(assert (=> b!3102316 (= e!1938597 call!218809)))

(declare-fun lt!1055962 () Regex!9563)

(declare-fun bm!218804 () Bool)

(declare-fun c!518491 () Bool)

(declare-fun lt!1055966 () Regex!9563)

(declare-fun isEmptyExpr!620 (Regex!9563) Bool)

(assert (=> bm!218804 (= call!218809 (isEmptyExpr!620 (ite c!518491 lt!1055962 lt!1055966)))))

(declare-fun b!3102317 () Bool)

(declare-fun c!518493 () Bool)

(assert (=> b!3102317 (= c!518493 ((_ is EmptyExpr!9563) (regTwo!19639 r!17423)))))

(declare-fun e!1938601 () Regex!9563)

(declare-fun e!1938599 () Regex!9563)

(assert (=> b!3102317 (= e!1938601 e!1938599)))

(declare-fun b!3102319 () Bool)

(declare-fun e!1938589 () Regex!9563)

(assert (=> b!3102319 (= e!1938590 e!1938589)))

(declare-fun lt!1055965 () Regex!9563)

(assert (=> b!3102319 (= lt!1055965 call!218811)))

(assert (=> b!3102319 (= lt!1055966 call!218813)))

(declare-fun res!1270728 () Bool)

(declare-fun call!218814 () Bool)

(assert (=> b!3102319 (= res!1270728 call!218814)))

(declare-fun e!1938591 () Bool)

(assert (=> b!3102319 (=> res!1270728 e!1938591)))

(declare-fun c!518498 () Bool)

(assert (=> b!3102319 (= c!518498 e!1938591)))

(declare-fun b!3102320 () Bool)

(assert (=> b!3102320 (= e!1938601 (regTwo!19639 r!17423))))

(declare-fun call!218810 () Bool)

(declare-fun bm!218805 () Bool)

(declare-fun c!518494 () Bool)

(assert (=> bm!218805 (= call!218810 (isEmptyLang!614 (ite c!518491 lt!1055962 (ite c!518494 lt!1055964 lt!1055966))))))

(declare-fun b!3102321 () Bool)

(declare-fun e!1938594 () Regex!9563)

(assert (=> b!3102321 (= e!1938594 lt!1055965)))

(declare-fun b!3102322 () Bool)

(declare-fun e!1938595 () Bool)

(declare-fun lt!1055963 () Regex!9563)

(assert (=> b!3102322 (= e!1938595 (= (nullable!3209 lt!1055963) (nullable!3209 (regTwo!19639 r!17423))))))

(declare-fun b!3102323 () Bool)

(declare-fun e!1938592 () Regex!9563)

(assert (=> b!3102323 (= e!1938592 (Star!9563 lt!1055962))))

(declare-fun bm!218806 () Bool)

(assert (=> bm!218806 (= call!218812 call!218810)))

(declare-fun b!3102324 () Bool)

(declare-fun e!1938593 () Regex!9563)

(assert (=> b!3102324 (= e!1938593 EmptyLang!9563)))

(declare-fun b!3102325 () Bool)

(assert (=> b!3102325 (= e!1938594 (Concat!14884 lt!1055965 lt!1055966))))

(declare-fun b!3102326 () Bool)

(assert (=> b!3102326 (= e!1938589 EmptyLang!9563)))

(declare-fun b!3102327 () Bool)

(assert (=> b!3102327 (= e!1938593 e!1938601)))

(declare-fun c!518489 () Bool)

(assert (=> b!3102327 (= c!518489 ((_ is ElementMatch!9563) (regTwo!19639 r!17423)))))

(declare-fun b!3102328 () Bool)

(assert (=> b!3102328 (= e!1938602 lt!1055967)))

(declare-fun b!3102329 () Bool)

(assert (=> b!3102329 (= e!1938592 EmptyExpr!9563)))

(declare-fun b!3102330 () Bool)

(declare-fun e!1938600 () Regex!9563)

(assert (=> b!3102330 (= e!1938600 lt!1055964)))

(declare-fun bm!218807 () Bool)

(assert (=> bm!218807 (= call!218814 (isEmptyLang!614 (ite c!518494 lt!1055967 lt!1055965)))))

(declare-fun b!3102331 () Bool)

(declare-fun e!1938598 () Regex!9563)

(assert (=> b!3102331 (= e!1938598 e!1938594)))

(declare-fun c!518492 () Bool)

(assert (=> b!3102331 (= c!518492 call!218809)))

(declare-fun d!861119 () Bool)

(assert (=> d!861119 e!1938595))

(declare-fun res!1270727 () Bool)

(assert (=> d!861119 (=> (not res!1270727) (not e!1938595))))

(assert (=> d!861119 (= res!1270727 (validRegex!4296 lt!1055963))))

(assert (=> d!861119 (= lt!1055963 e!1938593)))

(declare-fun c!518490 () Bool)

(assert (=> d!861119 (= c!518490 ((_ is EmptyLang!9563) (regTwo!19639 r!17423)))))

(assert (=> d!861119 (validRegex!4296 (regTwo!19639 r!17423))))

(assert (=> d!861119 (= (simplify!518 (regTwo!19639 r!17423)) lt!1055963)))

(declare-fun b!3102318 () Bool)

(declare-fun e!1938596 () Regex!9563)

(assert (=> b!3102318 (= e!1938599 e!1938596)))

(assert (=> b!3102318 (= c!518491 ((_ is Star!9563) (regTwo!19639 r!17423)))))

(declare-fun b!3102332 () Bool)

(assert (=> b!3102332 (= e!1938599 EmptyExpr!9563)))

(declare-fun b!3102333 () Bool)

(assert (=> b!3102333 (= e!1938591 call!218812)))

(declare-fun b!3102334 () Bool)

(declare-fun c!518496 () Bool)

(assert (=> b!3102334 (= c!518496 (isEmptyExpr!620 lt!1055965))))

(assert (=> b!3102334 (= e!1938589 e!1938598)))

(declare-fun bm!218808 () Bool)

(assert (=> bm!218808 (= call!218813 (simplify!518 (ite c!518494 (regOne!19639 (regTwo!19639 r!17423)) (regTwo!19638 (regTwo!19639 r!17423)))))))

(declare-fun b!3102335 () Bool)

(assert (=> b!3102335 (= c!518494 ((_ is Union!9563) (regTwo!19639 r!17423)))))

(assert (=> b!3102335 (= e!1938596 e!1938590)))

(declare-fun bm!218809 () Bool)

(declare-fun call!218815 () Regex!9563)

(assert (=> bm!218809 (= call!218815 (simplify!518 (ite c!518491 (reg!9892 (regTwo!19639 r!17423)) (ite c!518494 (regTwo!19639 (regTwo!19639 r!17423)) (regOne!19638 (regTwo!19639 r!17423))))))))

(declare-fun b!3102336 () Bool)

(declare-fun c!518495 () Bool)

(assert (=> b!3102336 (= c!518495 call!218814)))

(assert (=> b!3102336 (= e!1938602 e!1938600)))

(declare-fun b!3102337 () Bool)

(assert (=> b!3102337 (= e!1938598 lt!1055966)))

(declare-fun b!3102338 () Bool)

(assert (=> b!3102338 (= e!1938600 (Union!9563 lt!1055964 lt!1055967))))

(declare-fun bm!218810 () Bool)

(assert (=> bm!218810 (= call!218811 call!218815)))

(declare-fun b!3102339 () Bool)

(declare-fun c!518499 () Bool)

(assert (=> b!3102339 (= c!518499 e!1938597)))

(declare-fun res!1270729 () Bool)

(assert (=> b!3102339 (=> res!1270729 e!1938597)))

(assert (=> b!3102339 (= res!1270729 call!218810)))

(assert (=> b!3102339 (= lt!1055962 call!218815)))

(assert (=> b!3102339 (= e!1938596 e!1938592)))

(assert (= (and d!861119 c!518490) b!3102324))

(assert (= (and d!861119 (not c!518490)) b!3102327))

(assert (= (and b!3102327 c!518489) b!3102320))

(assert (= (and b!3102327 (not c!518489)) b!3102317))

(assert (= (and b!3102317 c!518493) b!3102332))

(assert (= (and b!3102317 (not c!518493)) b!3102318))

(assert (= (and b!3102318 c!518491) b!3102339))

(assert (= (and b!3102318 (not c!518491)) b!3102335))

(assert (= (and b!3102339 (not res!1270729)) b!3102316))

(assert (= (and b!3102339 c!518499) b!3102329))

(assert (= (and b!3102339 (not c!518499)) b!3102323))

(assert (= (and b!3102335 c!518494) b!3102315))

(assert (= (and b!3102335 (not c!518494)) b!3102319))

(assert (= (and b!3102315 c!518497) b!3102328))

(assert (= (and b!3102315 (not c!518497)) b!3102336))

(assert (= (and b!3102336 c!518495) b!3102330))

(assert (= (and b!3102336 (not c!518495)) b!3102338))

(assert (= (and b!3102319 (not res!1270728)) b!3102333))

(assert (= (and b!3102319 c!518498) b!3102326))

(assert (= (and b!3102319 (not c!518498)) b!3102334))

(assert (= (and b!3102334 c!518496) b!3102337))

(assert (= (and b!3102334 (not c!518496)) b!3102331))

(assert (= (and b!3102331 c!518492) b!3102321))

(assert (= (and b!3102331 (not c!518492)) b!3102325))

(assert (= (or b!3102315 b!3102319) bm!218808))

(assert (= (or b!3102315 b!3102319) bm!218810))

(assert (= (or b!3102336 b!3102319) bm!218807))

(assert (= (or b!3102315 b!3102333) bm!218806))

(assert (= (or b!3102316 b!3102331) bm!218804))

(assert (= (or b!3102339 bm!218810) bm!218809))

(assert (= (or b!3102339 bm!218806) bm!218805))

(assert (= (and d!861119 res!1270727) b!3102322))

(declare-fun m!3401493 () Bool)

(assert (=> b!3102334 m!3401493))

(declare-fun m!3401495 () Bool)

(assert (=> bm!218807 m!3401495))

(declare-fun m!3401497 () Bool)

(assert (=> d!861119 m!3401497))

(assert (=> d!861119 m!3401355))

(declare-fun m!3401499 () Bool)

(assert (=> bm!218805 m!3401499))

(declare-fun m!3401501 () Bool)

(assert (=> bm!218808 m!3401501))

(declare-fun m!3401503 () Bool)

(assert (=> bm!218809 m!3401503))

(declare-fun m!3401505 () Bool)

(assert (=> bm!218804 m!3401505))

(declare-fun m!3401507 () Bool)

(assert (=> b!3102322 m!3401507))

(declare-fun m!3401509 () Bool)

(assert (=> b!3102322 m!3401509))

(assert (=> b!3101800 d!861119))

(declare-fun b!3102340 () Bool)

(declare-fun e!1938604 () Regex!9563)

(declare-fun e!1938616 () Regex!9563)

(assert (=> b!3102340 (= e!1938604 e!1938616)))

(declare-fun lt!1055970 () Regex!9563)

(declare-fun call!218820 () Regex!9563)

(assert (=> b!3102340 (= lt!1055970 call!218820)))

(declare-fun lt!1055973 () Regex!9563)

(declare-fun call!218818 () Regex!9563)

(assert (=> b!3102340 (= lt!1055973 call!218818)))

(declare-fun c!518508 () Bool)

(declare-fun call!218819 () Bool)

(assert (=> b!3102340 (= c!518508 call!218819)))

(declare-fun b!3102341 () Bool)

(declare-fun e!1938611 () Bool)

(declare-fun call!218816 () Bool)

(assert (=> b!3102341 (= e!1938611 call!218816)))

(declare-fun bm!218811 () Bool)

(declare-fun c!518502 () Bool)

(declare-fun lt!1055968 () Regex!9563)

(declare-fun lt!1055972 () Regex!9563)

(assert (=> bm!218811 (= call!218816 (isEmptyExpr!620 (ite c!518502 lt!1055968 lt!1055972)))))

(declare-fun b!3102342 () Bool)

(declare-fun c!518504 () Bool)

(assert (=> b!3102342 (= c!518504 ((_ is EmptyExpr!9563) (regOne!19639 r!17423)))))

(declare-fun e!1938615 () Regex!9563)

(declare-fun e!1938613 () Regex!9563)

(assert (=> b!3102342 (= e!1938615 e!1938613)))

(declare-fun b!3102344 () Bool)

(declare-fun e!1938603 () Regex!9563)

(assert (=> b!3102344 (= e!1938604 e!1938603)))

(declare-fun lt!1055971 () Regex!9563)

(assert (=> b!3102344 (= lt!1055971 call!218818)))

(assert (=> b!3102344 (= lt!1055972 call!218820)))

(declare-fun res!1270731 () Bool)

(declare-fun call!218821 () Bool)

(assert (=> b!3102344 (= res!1270731 call!218821)))

(declare-fun e!1938605 () Bool)

(assert (=> b!3102344 (=> res!1270731 e!1938605)))

(declare-fun c!518509 () Bool)

(assert (=> b!3102344 (= c!518509 e!1938605)))

(declare-fun b!3102345 () Bool)

(assert (=> b!3102345 (= e!1938615 (regOne!19639 r!17423))))

(declare-fun bm!218812 () Bool)

(declare-fun call!218817 () Bool)

(declare-fun c!518505 () Bool)

(assert (=> bm!218812 (= call!218817 (isEmptyLang!614 (ite c!518502 lt!1055968 (ite c!518505 lt!1055970 lt!1055972))))))

(declare-fun b!3102346 () Bool)

(declare-fun e!1938608 () Regex!9563)

(assert (=> b!3102346 (= e!1938608 lt!1055971)))

(declare-fun b!3102347 () Bool)

(declare-fun e!1938609 () Bool)

(declare-fun lt!1055969 () Regex!9563)

(assert (=> b!3102347 (= e!1938609 (= (nullable!3209 lt!1055969) (nullable!3209 (regOne!19639 r!17423))))))

(declare-fun b!3102348 () Bool)

(declare-fun e!1938606 () Regex!9563)

(assert (=> b!3102348 (= e!1938606 (Star!9563 lt!1055968))))

(declare-fun bm!218813 () Bool)

(assert (=> bm!218813 (= call!218819 call!218817)))

(declare-fun b!3102349 () Bool)

(declare-fun e!1938607 () Regex!9563)

(assert (=> b!3102349 (= e!1938607 EmptyLang!9563)))

(declare-fun b!3102350 () Bool)

(assert (=> b!3102350 (= e!1938608 (Concat!14884 lt!1055971 lt!1055972))))

(declare-fun b!3102351 () Bool)

(assert (=> b!3102351 (= e!1938603 EmptyLang!9563)))

(declare-fun b!3102352 () Bool)

(assert (=> b!3102352 (= e!1938607 e!1938615)))

(declare-fun c!518500 () Bool)

(assert (=> b!3102352 (= c!518500 ((_ is ElementMatch!9563) (regOne!19639 r!17423)))))

(declare-fun b!3102353 () Bool)

(assert (=> b!3102353 (= e!1938616 lt!1055973)))

(declare-fun b!3102354 () Bool)

(assert (=> b!3102354 (= e!1938606 EmptyExpr!9563)))

(declare-fun b!3102355 () Bool)

(declare-fun e!1938614 () Regex!9563)

(assert (=> b!3102355 (= e!1938614 lt!1055970)))

(declare-fun bm!218814 () Bool)

(assert (=> bm!218814 (= call!218821 (isEmptyLang!614 (ite c!518505 lt!1055973 lt!1055971)))))

(declare-fun b!3102356 () Bool)

(declare-fun e!1938612 () Regex!9563)

(assert (=> b!3102356 (= e!1938612 e!1938608)))

(declare-fun c!518503 () Bool)

(assert (=> b!3102356 (= c!518503 call!218816)))

(declare-fun d!861121 () Bool)

(assert (=> d!861121 e!1938609))

(declare-fun res!1270730 () Bool)

(assert (=> d!861121 (=> (not res!1270730) (not e!1938609))))

(assert (=> d!861121 (= res!1270730 (validRegex!4296 lt!1055969))))

(assert (=> d!861121 (= lt!1055969 e!1938607)))

(declare-fun c!518501 () Bool)

(assert (=> d!861121 (= c!518501 ((_ is EmptyLang!9563) (regOne!19639 r!17423)))))

(assert (=> d!861121 (validRegex!4296 (regOne!19639 r!17423))))

(assert (=> d!861121 (= (simplify!518 (regOne!19639 r!17423)) lt!1055969)))

(declare-fun b!3102343 () Bool)

(declare-fun e!1938610 () Regex!9563)

(assert (=> b!3102343 (= e!1938613 e!1938610)))

(assert (=> b!3102343 (= c!518502 ((_ is Star!9563) (regOne!19639 r!17423)))))

(declare-fun b!3102357 () Bool)

(assert (=> b!3102357 (= e!1938613 EmptyExpr!9563)))

(declare-fun b!3102358 () Bool)

(assert (=> b!3102358 (= e!1938605 call!218819)))

(declare-fun b!3102359 () Bool)

(declare-fun c!518507 () Bool)

(assert (=> b!3102359 (= c!518507 (isEmptyExpr!620 lt!1055971))))

(assert (=> b!3102359 (= e!1938603 e!1938612)))

(declare-fun bm!218815 () Bool)

(assert (=> bm!218815 (= call!218820 (simplify!518 (ite c!518505 (regOne!19639 (regOne!19639 r!17423)) (regTwo!19638 (regOne!19639 r!17423)))))))

(declare-fun b!3102360 () Bool)

(assert (=> b!3102360 (= c!518505 ((_ is Union!9563) (regOne!19639 r!17423)))))

(assert (=> b!3102360 (= e!1938610 e!1938604)))

(declare-fun bm!218816 () Bool)

(declare-fun call!218822 () Regex!9563)

(assert (=> bm!218816 (= call!218822 (simplify!518 (ite c!518502 (reg!9892 (regOne!19639 r!17423)) (ite c!518505 (regTwo!19639 (regOne!19639 r!17423)) (regOne!19638 (regOne!19639 r!17423))))))))

(declare-fun b!3102361 () Bool)

(declare-fun c!518506 () Bool)

(assert (=> b!3102361 (= c!518506 call!218821)))

(assert (=> b!3102361 (= e!1938616 e!1938614)))

(declare-fun b!3102362 () Bool)

(assert (=> b!3102362 (= e!1938612 lt!1055972)))

(declare-fun b!3102363 () Bool)

(assert (=> b!3102363 (= e!1938614 (Union!9563 lt!1055970 lt!1055973))))

(declare-fun bm!218817 () Bool)

(assert (=> bm!218817 (= call!218818 call!218822)))

(declare-fun b!3102364 () Bool)

(declare-fun c!518510 () Bool)

(assert (=> b!3102364 (= c!518510 e!1938611)))

(declare-fun res!1270732 () Bool)

(assert (=> b!3102364 (=> res!1270732 e!1938611)))

(assert (=> b!3102364 (= res!1270732 call!218817)))

(assert (=> b!3102364 (= lt!1055968 call!218822)))

(assert (=> b!3102364 (= e!1938610 e!1938606)))

(assert (= (and d!861121 c!518501) b!3102349))

(assert (= (and d!861121 (not c!518501)) b!3102352))

(assert (= (and b!3102352 c!518500) b!3102345))

(assert (= (and b!3102352 (not c!518500)) b!3102342))

(assert (= (and b!3102342 c!518504) b!3102357))

(assert (= (and b!3102342 (not c!518504)) b!3102343))

(assert (= (and b!3102343 c!518502) b!3102364))

(assert (= (and b!3102343 (not c!518502)) b!3102360))

(assert (= (and b!3102364 (not res!1270732)) b!3102341))

(assert (= (and b!3102364 c!518510) b!3102354))

(assert (= (and b!3102364 (not c!518510)) b!3102348))

(assert (= (and b!3102360 c!518505) b!3102340))

(assert (= (and b!3102360 (not c!518505)) b!3102344))

(assert (= (and b!3102340 c!518508) b!3102353))

(assert (= (and b!3102340 (not c!518508)) b!3102361))

(assert (= (and b!3102361 c!518506) b!3102355))

(assert (= (and b!3102361 (not c!518506)) b!3102363))

(assert (= (and b!3102344 (not res!1270731)) b!3102358))

(assert (= (and b!3102344 c!518509) b!3102351))

(assert (= (and b!3102344 (not c!518509)) b!3102359))

(assert (= (and b!3102359 c!518507) b!3102362))

(assert (= (and b!3102359 (not c!518507)) b!3102356))

(assert (= (and b!3102356 c!518503) b!3102346))

(assert (= (and b!3102356 (not c!518503)) b!3102350))

(assert (= (or b!3102340 b!3102344) bm!218815))

(assert (= (or b!3102340 b!3102344) bm!218817))

(assert (= (or b!3102361 b!3102344) bm!218814))

(assert (= (or b!3102340 b!3102358) bm!218813))

(assert (= (or b!3102341 b!3102356) bm!218811))

(assert (= (or b!3102364 bm!218817) bm!218816))

(assert (= (or b!3102364 bm!218813) bm!218812))

(assert (= (and d!861121 res!1270730) b!3102347))

(declare-fun m!3401511 () Bool)

(assert (=> b!3102359 m!3401511))

(declare-fun m!3401513 () Bool)

(assert (=> bm!218814 m!3401513))

(declare-fun m!3401515 () Bool)

(assert (=> d!861121 m!3401515))

(declare-fun m!3401517 () Bool)

(assert (=> d!861121 m!3401517))

(declare-fun m!3401519 () Bool)

(assert (=> bm!218812 m!3401519))

(declare-fun m!3401521 () Bool)

(assert (=> bm!218815 m!3401521))

(declare-fun m!3401523 () Bool)

(assert (=> bm!218816 m!3401523))

(declare-fun m!3401525 () Bool)

(assert (=> bm!218811 m!3401525))

(declare-fun m!3401527 () Bool)

(assert (=> b!3102347 m!3401527))

(declare-fun m!3401529 () Bool)

(assert (=> b!3102347 m!3401529))

(assert (=> b!3101800 d!861121))

(declare-fun b!3102399 () Bool)

(declare-fun e!1938641 () Bool)

(declare-fun e!1938644 () Bool)

(assert (=> b!3102399 (= e!1938641 e!1938644)))

(declare-fun c!518530 () Bool)

(assert (=> b!3102399 (= c!518530 ((_ is Concat!14884) r!17423))))

(declare-fun b!3102400 () Bool)

(declare-fun e!1938645 () Int)

(declare-fun e!1938639 () Int)

(assert (=> b!3102400 (= e!1938645 e!1938639)))

(declare-fun c!518527 () Bool)

(assert (=> b!3102400 (= c!518527 ((_ is Concat!14884) r!17423))))

(declare-fun b!3102402 () Bool)

(declare-fun e!1938642 () Int)

(declare-fun call!218839 () Int)

(assert (=> b!3102402 (= e!1938642 (+ 1 call!218839))))

(declare-fun b!3102403 () Bool)

(declare-fun e!1938638 () Bool)

(declare-fun lt!1055976 () Int)

(declare-fun call!218837 () Int)

(assert (=> b!3102403 (= e!1938638 (> lt!1055976 call!218837))))

(declare-fun b!3102404 () Bool)

(assert (=> b!3102404 (= e!1938639 1)))

(declare-fun bm!218832 () Bool)

(declare-fun call!218841 () Int)

(declare-fun c!518525 () Bool)

(assert (=> bm!218832 (= call!218841 (regexDepth!109 (ite c!518525 (regOne!19639 r!17423) (regOne!19638 r!17423))))))

(declare-fun b!3102405 () Bool)

(declare-fun e!1938643 () Bool)

(declare-fun call!218840 () Int)

(assert (=> b!3102405 (= e!1938643 (> lt!1055976 call!218840))))

(declare-fun b!3102406 () Bool)

(declare-fun e!1938640 () Int)

(assert (=> b!3102406 (= e!1938640 1)))

(declare-fun b!3102407 () Bool)

(assert (=> b!3102407 (= e!1938640 e!1938642)))

(declare-fun c!518526 () Bool)

(assert (=> b!3102407 (= c!518526 ((_ is Star!9563) r!17423))))

(declare-fun b!3102408 () Bool)

(assert (=> b!3102408 (= e!1938643 (= lt!1055976 1))))

(declare-fun bm!218833 () Bool)

(declare-fun call!218843 () Int)

(assert (=> bm!218833 (= call!218843 call!218839)))

(declare-fun b!3102409 () Bool)

(declare-fun e!1938646 () Bool)

(assert (=> b!3102409 (= e!1938646 (> lt!1055976 call!218840))))

(declare-fun bm!218834 () Bool)

(assert (=> bm!218834 (= call!218837 (regexDepth!109 (ite c!518525 (regTwo!19639 r!17423) (ite c!518530 (regTwo!19638 r!17423) (reg!9892 r!17423)))))))

(declare-fun d!861123 () Bool)

(declare-fun e!1938637 () Bool)

(assert (=> d!861123 e!1938637))

(declare-fun res!1270741 () Bool)

(assert (=> d!861123 (=> (not res!1270741) (not e!1938637))))

(assert (=> d!861123 (= res!1270741 (> lt!1055976 0))))

(assert (=> d!861123 (= lt!1055976 e!1938640)))

(declare-fun c!518528 () Bool)

(assert (=> d!861123 (= c!518528 ((_ is ElementMatch!9563) r!17423))))

(assert (=> d!861123 (= (regexDepth!109 r!17423) lt!1055976)))

(declare-fun b!3102401 () Bool)

(declare-fun c!518529 () Bool)

(assert (=> b!3102401 (= c!518529 ((_ is Union!9563) r!17423))))

(assert (=> b!3102401 (= e!1938642 e!1938645)))

(declare-fun b!3102410 () Bool)

(declare-fun res!1270740 () Bool)

(assert (=> b!3102410 (=> (not res!1270740) (not e!1938646))))

(assert (=> b!3102410 (= res!1270740 (> lt!1055976 call!218841))))

(assert (=> b!3102410 (= e!1938644 e!1938646)))

(declare-fun bm!218835 () Bool)

(assert (=> bm!218835 (= call!218839 (regexDepth!109 (ite c!518526 (reg!9892 r!17423) (ite c!518529 (regTwo!19639 r!17423) (regTwo!19638 r!17423)))))))

(declare-fun b!3102411 () Bool)

(assert (=> b!3102411 (= e!1938641 e!1938638)))

(declare-fun res!1270739 () Bool)

(assert (=> b!3102411 (= res!1270739 (> lt!1055976 call!218841))))

(assert (=> b!3102411 (=> (not res!1270739) (not e!1938638))))

(declare-fun b!3102412 () Bool)

(declare-fun call!218838 () Int)

(assert (=> b!3102412 (= e!1938645 (+ 1 call!218838))))

(declare-fun bm!218836 () Bool)

(declare-fun call!218842 () Int)

(assert (=> bm!218836 (= call!218842 (regexDepth!109 (ite c!518529 (regOne!19639 r!17423) (regOne!19638 r!17423))))))

(declare-fun bm!218837 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!218837 (= call!218838 (maxBigInt!0 call!218842 call!218843))))

(declare-fun bm!218838 () Bool)

(assert (=> bm!218838 (= call!218840 call!218837)))

(declare-fun b!3102413 () Bool)

(assert (=> b!3102413 (= e!1938639 (+ 1 call!218838))))

(declare-fun b!3102414 () Bool)

(assert (=> b!3102414 (= e!1938637 e!1938641)))

(assert (=> b!3102414 (= c!518525 ((_ is Union!9563) r!17423))))

(declare-fun b!3102415 () Bool)

(declare-fun c!518531 () Bool)

(assert (=> b!3102415 (= c!518531 ((_ is Star!9563) r!17423))))

(assert (=> b!3102415 (= e!1938644 e!1938643)))

(assert (= (and d!861123 c!518528) b!3102406))

(assert (= (and d!861123 (not c!518528)) b!3102407))

(assert (= (and b!3102407 c!518526) b!3102402))

(assert (= (and b!3102407 (not c!518526)) b!3102401))

(assert (= (and b!3102401 c!518529) b!3102412))

(assert (= (and b!3102401 (not c!518529)) b!3102400))

(assert (= (and b!3102400 c!518527) b!3102413))

(assert (= (and b!3102400 (not c!518527)) b!3102404))

(assert (= (or b!3102412 b!3102413) bm!218833))

(assert (= (or b!3102412 b!3102413) bm!218836))

(assert (= (or b!3102412 b!3102413) bm!218837))

(assert (= (or b!3102402 bm!218833) bm!218835))

(assert (= (and d!861123 res!1270741) b!3102414))

(assert (= (and b!3102414 c!518525) b!3102411))

(assert (= (and b!3102414 (not c!518525)) b!3102399))

(assert (= (and b!3102411 res!1270739) b!3102403))

(assert (= (and b!3102399 c!518530) b!3102410))

(assert (= (and b!3102399 (not c!518530)) b!3102415))

(assert (= (and b!3102410 res!1270740) b!3102409))

(assert (= (and b!3102415 c!518531) b!3102405))

(assert (= (and b!3102415 (not c!518531)) b!3102408))

(assert (= (or b!3102409 b!3102405) bm!218838))

(assert (= (or b!3102403 bm!218838) bm!218834))

(assert (= (or b!3102411 b!3102410) bm!218832))

(declare-fun m!3401531 () Bool)

(assert (=> bm!218832 m!3401531))

(declare-fun m!3401533 () Bool)

(assert (=> bm!218837 m!3401533))

(declare-fun m!3401535 () Bool)

(assert (=> bm!218834 m!3401535))

(declare-fun m!3401537 () Bool)

(assert (=> bm!218835 m!3401537))

(declare-fun m!3401539 () Bool)

(assert (=> bm!218836 m!3401539))

(assert (=> b!3101805 d!861123))

(declare-fun d!861125 () Bool)

(declare-fun lt!1055979 () Int)

(assert (=> d!861125 (>= lt!1055979 0)))

(declare-fun e!1938649 () Int)

(assert (=> d!861125 (= lt!1055979 e!1938649)))

(declare-fun c!518534 () Bool)

(assert (=> d!861125 (= c!518534 ((_ is Nil!35304) s!11993))))

(assert (=> d!861125 (= (size!26575 s!11993) lt!1055979)))

(declare-fun b!3102420 () Bool)

(assert (=> b!3102420 (= e!1938649 0)))

(declare-fun b!3102421 () Bool)

(assert (=> b!3102421 (= e!1938649 (+ 1 (size!26575 (t!234493 s!11993))))))

(assert (= (and d!861125 c!518534) b!3102420))

(assert (= (and d!861125 (not c!518534)) b!3102421))

(declare-fun m!3401541 () Bool)

(assert (=> b!3102421 m!3401541))

(assert (=> b!3101805 d!861125))

(declare-fun b!3102422 () Bool)

(declare-fun e!1938654 () Bool)

(declare-fun e!1938657 () Bool)

(assert (=> b!3102422 (= e!1938654 e!1938657)))

(declare-fun c!518540 () Bool)

(assert (=> b!3102422 (= c!518540 ((_ is Concat!14884) (regTwo!19639 r!17423)))))

(declare-fun b!3102423 () Bool)

(declare-fun e!1938658 () Int)

(declare-fun e!1938652 () Int)

(assert (=> b!3102423 (= e!1938658 e!1938652)))

(declare-fun c!518537 () Bool)

(assert (=> b!3102423 (= c!518537 ((_ is Concat!14884) (regTwo!19639 r!17423)))))

(declare-fun b!3102425 () Bool)

(declare-fun e!1938655 () Int)

(declare-fun call!218846 () Int)

(assert (=> b!3102425 (= e!1938655 (+ 1 call!218846))))

(declare-fun b!3102426 () Bool)

(declare-fun e!1938651 () Bool)

(declare-fun lt!1055980 () Int)

(declare-fun call!218844 () Int)

(assert (=> b!3102426 (= e!1938651 (> lt!1055980 call!218844))))

(declare-fun b!3102427 () Bool)

(assert (=> b!3102427 (= e!1938652 1)))

(declare-fun bm!218839 () Bool)

(declare-fun call!218848 () Int)

(declare-fun c!518535 () Bool)

(assert (=> bm!218839 (= call!218848 (regexDepth!109 (ite c!518535 (regOne!19639 (regTwo!19639 r!17423)) (regOne!19638 (regTwo!19639 r!17423)))))))

(declare-fun b!3102428 () Bool)

(declare-fun e!1938656 () Bool)

(declare-fun call!218847 () Int)

(assert (=> b!3102428 (= e!1938656 (> lt!1055980 call!218847))))

(declare-fun b!3102429 () Bool)

(declare-fun e!1938653 () Int)

(assert (=> b!3102429 (= e!1938653 1)))

(declare-fun b!3102430 () Bool)

(assert (=> b!3102430 (= e!1938653 e!1938655)))

(declare-fun c!518536 () Bool)

(assert (=> b!3102430 (= c!518536 ((_ is Star!9563) (regTwo!19639 r!17423)))))

(declare-fun b!3102431 () Bool)

(assert (=> b!3102431 (= e!1938656 (= lt!1055980 1))))

(declare-fun bm!218840 () Bool)

(declare-fun call!218850 () Int)

(assert (=> bm!218840 (= call!218850 call!218846)))

(declare-fun b!3102432 () Bool)

(declare-fun e!1938659 () Bool)

(assert (=> b!3102432 (= e!1938659 (> lt!1055980 call!218847))))

(declare-fun bm!218841 () Bool)

(assert (=> bm!218841 (= call!218844 (regexDepth!109 (ite c!518535 (regTwo!19639 (regTwo!19639 r!17423)) (ite c!518540 (regTwo!19638 (regTwo!19639 r!17423)) (reg!9892 (regTwo!19639 r!17423))))))))

(declare-fun d!861127 () Bool)

(declare-fun e!1938650 () Bool)

(assert (=> d!861127 e!1938650))

(declare-fun res!1270744 () Bool)

(assert (=> d!861127 (=> (not res!1270744) (not e!1938650))))

(assert (=> d!861127 (= res!1270744 (> lt!1055980 0))))

(assert (=> d!861127 (= lt!1055980 e!1938653)))

(declare-fun c!518538 () Bool)

(assert (=> d!861127 (= c!518538 ((_ is ElementMatch!9563) (regTwo!19639 r!17423)))))

(assert (=> d!861127 (= (regexDepth!109 (regTwo!19639 r!17423)) lt!1055980)))

(declare-fun b!3102424 () Bool)

(declare-fun c!518539 () Bool)

(assert (=> b!3102424 (= c!518539 ((_ is Union!9563) (regTwo!19639 r!17423)))))

(assert (=> b!3102424 (= e!1938655 e!1938658)))

(declare-fun b!3102433 () Bool)

(declare-fun res!1270743 () Bool)

(assert (=> b!3102433 (=> (not res!1270743) (not e!1938659))))

(assert (=> b!3102433 (= res!1270743 (> lt!1055980 call!218848))))

(assert (=> b!3102433 (= e!1938657 e!1938659)))

(declare-fun bm!218842 () Bool)

(assert (=> bm!218842 (= call!218846 (regexDepth!109 (ite c!518536 (reg!9892 (regTwo!19639 r!17423)) (ite c!518539 (regTwo!19639 (regTwo!19639 r!17423)) (regTwo!19638 (regTwo!19639 r!17423))))))))

(declare-fun b!3102434 () Bool)

(assert (=> b!3102434 (= e!1938654 e!1938651)))

(declare-fun res!1270742 () Bool)

(assert (=> b!3102434 (= res!1270742 (> lt!1055980 call!218848))))

(assert (=> b!3102434 (=> (not res!1270742) (not e!1938651))))

(declare-fun b!3102435 () Bool)

(declare-fun call!218845 () Int)

(assert (=> b!3102435 (= e!1938658 (+ 1 call!218845))))

(declare-fun bm!218843 () Bool)

(declare-fun call!218849 () Int)

(assert (=> bm!218843 (= call!218849 (regexDepth!109 (ite c!518539 (regOne!19639 (regTwo!19639 r!17423)) (regOne!19638 (regTwo!19639 r!17423)))))))

(declare-fun bm!218844 () Bool)

(assert (=> bm!218844 (= call!218845 (maxBigInt!0 call!218849 call!218850))))

(declare-fun bm!218845 () Bool)

(assert (=> bm!218845 (= call!218847 call!218844)))

(declare-fun b!3102436 () Bool)

(assert (=> b!3102436 (= e!1938652 (+ 1 call!218845))))

(declare-fun b!3102437 () Bool)

(assert (=> b!3102437 (= e!1938650 e!1938654)))

(assert (=> b!3102437 (= c!518535 ((_ is Union!9563) (regTwo!19639 r!17423)))))

(declare-fun b!3102438 () Bool)

(declare-fun c!518541 () Bool)

(assert (=> b!3102438 (= c!518541 ((_ is Star!9563) (regTwo!19639 r!17423)))))

(assert (=> b!3102438 (= e!1938657 e!1938656)))

(assert (= (and d!861127 c!518538) b!3102429))

(assert (= (and d!861127 (not c!518538)) b!3102430))

(assert (= (and b!3102430 c!518536) b!3102425))

(assert (= (and b!3102430 (not c!518536)) b!3102424))

(assert (= (and b!3102424 c!518539) b!3102435))

(assert (= (and b!3102424 (not c!518539)) b!3102423))

(assert (= (and b!3102423 c!518537) b!3102436))

(assert (= (and b!3102423 (not c!518537)) b!3102427))

(assert (= (or b!3102435 b!3102436) bm!218840))

(assert (= (or b!3102435 b!3102436) bm!218843))

(assert (= (or b!3102435 b!3102436) bm!218844))

(assert (= (or b!3102425 bm!218840) bm!218842))

(assert (= (and d!861127 res!1270744) b!3102437))

(assert (= (and b!3102437 c!518535) b!3102434))

(assert (= (and b!3102437 (not c!518535)) b!3102422))

(assert (= (and b!3102434 res!1270742) b!3102426))

(assert (= (and b!3102422 c!518540) b!3102433))

(assert (= (and b!3102422 (not c!518540)) b!3102438))

(assert (= (and b!3102433 res!1270743) b!3102432))

(assert (= (and b!3102438 c!518541) b!3102428))

(assert (= (and b!3102438 (not c!518541)) b!3102431))

(assert (= (or b!3102432 b!3102428) bm!218845))

(assert (= (or b!3102426 bm!218845) bm!218841))

(assert (= (or b!3102434 b!3102433) bm!218839))

(declare-fun m!3401543 () Bool)

(assert (=> bm!218839 m!3401543))

(declare-fun m!3401545 () Bool)

(assert (=> bm!218844 m!3401545))

(declare-fun m!3401547 () Bool)

(assert (=> bm!218841 m!3401547))

(declare-fun m!3401549 () Bool)

(assert (=> bm!218842 m!3401549))

(declare-fun m!3401551 () Bool)

(assert (=> bm!218843 m!3401551))

(assert (=> b!3101805 d!861127))

(declare-fun b!3102443 () Bool)

(declare-fun e!1938662 () Bool)

(declare-fun tp!974886 () Bool)

(assert (=> b!3102443 (= e!1938662 (and tp_is_empty!16689 tp!974886))))

(assert (=> b!3101803 (= tp!974840 e!1938662)))

(assert (= (and b!3101803 ((_ is Cons!35304) (t!234493 s!11993))) b!3102443))

(declare-fun b!3102456 () Bool)

(declare-fun e!1938665 () Bool)

(declare-fun tp!974899 () Bool)

(assert (=> b!3102456 (= e!1938665 tp!974899)))

(declare-fun b!3102454 () Bool)

(assert (=> b!3102454 (= e!1938665 tp_is_empty!16689)))

(declare-fun b!3102455 () Bool)

(declare-fun tp!974897 () Bool)

(declare-fun tp!974898 () Bool)

(assert (=> b!3102455 (= e!1938665 (and tp!974897 tp!974898))))

(assert (=> b!3101802 (= tp!974845 e!1938665)))

(declare-fun b!3102457 () Bool)

(declare-fun tp!974901 () Bool)

(declare-fun tp!974900 () Bool)

(assert (=> b!3102457 (= e!1938665 (and tp!974901 tp!974900))))

(assert (= (and b!3101802 ((_ is ElementMatch!9563) (reg!9892 r!17423))) b!3102454))

(assert (= (and b!3101802 ((_ is Concat!14884) (reg!9892 r!17423))) b!3102455))

(assert (= (and b!3101802 ((_ is Star!9563) (reg!9892 r!17423))) b!3102456))

(assert (= (and b!3101802 ((_ is Union!9563) (reg!9892 r!17423))) b!3102457))

(declare-fun b!3102460 () Bool)

(declare-fun e!1938666 () Bool)

(declare-fun tp!974904 () Bool)

(assert (=> b!3102460 (= e!1938666 tp!974904)))

(declare-fun b!3102458 () Bool)

(assert (=> b!3102458 (= e!1938666 tp_is_empty!16689)))

(declare-fun b!3102459 () Bool)

(declare-fun tp!974902 () Bool)

(declare-fun tp!974903 () Bool)

(assert (=> b!3102459 (= e!1938666 (and tp!974902 tp!974903))))

(assert (=> b!3101797 (= tp!974842 e!1938666)))

(declare-fun b!3102461 () Bool)

(declare-fun tp!974906 () Bool)

(declare-fun tp!974905 () Bool)

(assert (=> b!3102461 (= e!1938666 (and tp!974906 tp!974905))))

(assert (= (and b!3101797 ((_ is ElementMatch!9563) (regOne!19639 r!17423))) b!3102458))

(assert (= (and b!3101797 ((_ is Concat!14884) (regOne!19639 r!17423))) b!3102459))

(assert (= (and b!3101797 ((_ is Star!9563) (regOne!19639 r!17423))) b!3102460))

(assert (= (and b!3101797 ((_ is Union!9563) (regOne!19639 r!17423))) b!3102461))

(declare-fun b!3102464 () Bool)

(declare-fun e!1938667 () Bool)

(declare-fun tp!974909 () Bool)

(assert (=> b!3102464 (= e!1938667 tp!974909)))

(declare-fun b!3102462 () Bool)

(assert (=> b!3102462 (= e!1938667 tp_is_empty!16689)))

(declare-fun b!3102463 () Bool)

(declare-fun tp!974907 () Bool)

(declare-fun tp!974908 () Bool)

(assert (=> b!3102463 (= e!1938667 (and tp!974907 tp!974908))))

(assert (=> b!3101797 (= tp!974843 e!1938667)))

(declare-fun b!3102465 () Bool)

(declare-fun tp!974911 () Bool)

(declare-fun tp!974910 () Bool)

(assert (=> b!3102465 (= e!1938667 (and tp!974911 tp!974910))))

(assert (= (and b!3101797 ((_ is ElementMatch!9563) (regTwo!19639 r!17423))) b!3102462))

(assert (= (and b!3101797 ((_ is Concat!14884) (regTwo!19639 r!17423))) b!3102463))

(assert (= (and b!3101797 ((_ is Star!9563) (regTwo!19639 r!17423))) b!3102464))

(assert (= (and b!3101797 ((_ is Union!9563) (regTwo!19639 r!17423))) b!3102465))

(declare-fun b!3102468 () Bool)

(declare-fun e!1938668 () Bool)

(declare-fun tp!974914 () Bool)

(assert (=> b!3102468 (= e!1938668 tp!974914)))

(declare-fun b!3102466 () Bool)

(assert (=> b!3102466 (= e!1938668 tp_is_empty!16689)))

(declare-fun b!3102467 () Bool)

(declare-fun tp!974912 () Bool)

(declare-fun tp!974913 () Bool)

(assert (=> b!3102467 (= e!1938668 (and tp!974912 tp!974913))))

(assert (=> b!3101801 (= tp!974844 e!1938668)))

(declare-fun b!3102469 () Bool)

(declare-fun tp!974916 () Bool)

(declare-fun tp!974915 () Bool)

(assert (=> b!3102469 (= e!1938668 (and tp!974916 tp!974915))))

(assert (= (and b!3101801 ((_ is ElementMatch!9563) (regOne!19638 r!17423))) b!3102466))

(assert (= (and b!3101801 ((_ is Concat!14884) (regOne!19638 r!17423))) b!3102467))

(assert (= (and b!3101801 ((_ is Star!9563) (regOne!19638 r!17423))) b!3102468))

(assert (= (and b!3101801 ((_ is Union!9563) (regOne!19638 r!17423))) b!3102469))

(declare-fun b!3102472 () Bool)

(declare-fun e!1938669 () Bool)

(declare-fun tp!974919 () Bool)

(assert (=> b!3102472 (= e!1938669 tp!974919)))

(declare-fun b!3102470 () Bool)

(assert (=> b!3102470 (= e!1938669 tp_is_empty!16689)))

(declare-fun b!3102471 () Bool)

(declare-fun tp!974917 () Bool)

(declare-fun tp!974918 () Bool)

(assert (=> b!3102471 (= e!1938669 (and tp!974917 tp!974918))))

(assert (=> b!3101801 (= tp!974841 e!1938669)))

(declare-fun b!3102473 () Bool)

(declare-fun tp!974921 () Bool)

(declare-fun tp!974920 () Bool)

(assert (=> b!3102473 (= e!1938669 (and tp!974921 tp!974920))))

(assert (= (and b!3101801 ((_ is ElementMatch!9563) (regTwo!19638 r!17423))) b!3102470))

(assert (= (and b!3101801 ((_ is Concat!14884) (regTwo!19638 r!17423))) b!3102471))

(assert (= (and b!3101801 ((_ is Star!9563) (regTwo!19638 r!17423))) b!3102472))

(assert (= (and b!3101801 ((_ is Union!9563) (regTwo!19638 r!17423))) b!3102473))

(check-sat (not b!3102473) (not b!3102461) (not b!3102226) (not b!3102221) (not b!3102456) (not b!3102468) (not bm!218789) (not b!3102096) (not bm!218839) (not b!3102234) (not bm!218835) (not b!3102443) (not d!861121) (not b!3102465) (not b!3102472) (not b!3102260) (not bm!218812) (not b!3101844) (not d!861113) (not b!3102467) (not bm!218843) (not bm!218788) (not bm!218804) (not d!861105) (not bm!218842) (not b!3102224) (not bm!218814) (not b!3102421) (not bm!218757) (not b!3102457) (not d!861119) (not b!3102460) (not bm!218844) (not b!3102228) (not bm!218808) (not bm!218815) (not b!3102088) (not b!3102334) (not bm!218786) (not bm!218699) (not bm!218807) (not b!3102459) (not bm!218834) (not b!3102471) (not b!3102347) (not bm!218805) (not bm!218756) (not b!3102463) (not bm!218809) (not bm!218811) (not b!3102229) tp_is_empty!16689 (not b!3102359) (not bm!218816) (not bm!218836) (not b!3102464) (not b!3102455) (not b!3102469) (not bm!218700) (not bm!218837) (not b!3102322) (not bm!218841) (not bm!218832))
(check-sat)
