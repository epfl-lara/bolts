; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287020 () Bool)

(assert start!287020)

(declare-fun b!2963436 () Bool)

(declare-fun e!1865208 () Bool)

(declare-fun e!1865204 () Bool)

(assert (=> b!2963436 (= e!1865208 (not e!1865204))))

(declare-fun res!1222500 () Bool)

(assert (=> b!2963436 (=> res!1222500 e!1865204)))

(declare-fun lt!1034731 () Bool)

(declare-datatypes ((C!18620 0))(
  ( (C!18621 (val!11346 Int)) )
))
(declare-datatypes ((Regex!9217 0))(
  ( (ElementMatch!9217 (c!485785 C!18620)) (Concat!14538 (regOne!18946 Regex!9217) (regTwo!18946 Regex!9217)) (EmptyExpr!9217) (Star!9217 (reg!9546 Regex!9217)) (EmptyLang!9217) (Union!9217 (regOne!18947 Regex!9217) (regTwo!18947 Regex!9217)) )
))
(declare-fun r!17423 () Regex!9217)

(get-info :version)

(assert (=> b!2963436 (= res!1222500 (or lt!1034731 ((_ is Concat!14538) r!17423) (not ((_ is Union!9217) r!17423))))))

(declare-datatypes ((List!35082 0))(
  ( (Nil!34958) (Cons!34958 (h!40378 C!18620) (t!234147 List!35082)) )
))
(declare-fun s!11993 () List!35082)

(declare-fun matchRSpec!1354 (Regex!9217 List!35082) Bool)

(assert (=> b!2963436 (= lt!1034731 (matchRSpec!1354 r!17423 s!11993))))

(declare-fun matchR!4099 (Regex!9217 List!35082) Bool)

(assert (=> b!2963436 (= lt!1034731 (matchR!4099 r!17423 s!11993))))

(declare-datatypes ((Unit!48813 0))(
  ( (Unit!48814) )
))
(declare-fun lt!1034732 () Unit!48813)

(declare-fun mainMatchTheorem!1354 (Regex!9217 List!35082) Unit!48813)

(assert (=> b!2963436 (= lt!1034732 (mainMatchTheorem!1354 r!17423 s!11993))))

(declare-fun b!2963437 () Bool)

(declare-fun e!1865206 () Bool)

(declare-fun tp!945637 () Bool)

(assert (=> b!2963437 (= e!1865206 tp!945637)))

(declare-fun b!2963439 () Bool)

(declare-fun tp!945634 () Bool)

(declare-fun tp!945635 () Bool)

(assert (=> b!2963439 (= e!1865206 (and tp!945634 tp!945635))))

(declare-fun b!2963440 () Bool)

(declare-fun e!1865205 () Bool)

(assert (=> b!2963440 (= e!1865204 e!1865205)))

(declare-fun res!1222502 () Bool)

(assert (=> b!2963440 (=> res!1222502 e!1865205)))

(declare-fun lt!1034733 () Regex!9217)

(declare-fun isEmptyLang!333 (Regex!9217) Bool)

(assert (=> b!2963440 (= res!1222502 (isEmptyLang!333 lt!1034733))))

(declare-fun lt!1034734 () Regex!9217)

(declare-fun simplify!220 (Regex!9217) Regex!9217)

(assert (=> b!2963440 (= lt!1034734 (simplify!220 (regTwo!18947 r!17423)))))

(assert (=> b!2963440 (= lt!1034733 (simplify!220 (regOne!18947 r!17423)))))

(declare-fun b!2963441 () Bool)

(declare-fun tp_is_empty!15997 () Bool)

(assert (=> b!2963441 (= e!1865206 tp_is_empty!15997)))

(declare-fun b!2963442 () Bool)

(declare-fun tp!945632 () Bool)

(declare-fun tp!945636 () Bool)

(assert (=> b!2963442 (= e!1865206 (and tp!945632 tp!945636))))

(declare-fun b!2963443 () Bool)

(declare-fun e!1865209 () Bool)

(assert (=> b!2963443 (= e!1865205 e!1865209)))

(declare-fun res!1222501 () Bool)

(assert (=> b!2963443 (=> res!1222501 e!1865209)))

(declare-fun lt!1034729 () Bool)

(assert (=> b!2963443 (= res!1222501 lt!1034729)))

(assert (=> b!2963443 (= lt!1034729 (matchR!4099 lt!1034733 s!11993))))

(assert (=> b!2963443 (= lt!1034729 (matchR!4099 (regOne!18947 r!17423) s!11993))))

(declare-fun lt!1034730 () Unit!48813)

(declare-fun lemmaSimplifySound!144 (Regex!9217 List!35082) Unit!48813)

(assert (=> b!2963443 (= lt!1034730 (lemmaSimplifySound!144 (regOne!18947 r!17423) s!11993))))

(declare-fun res!1222503 () Bool)

(assert (=> start!287020 (=> (not res!1222503) (not e!1865208))))

(declare-fun validRegex!3950 (Regex!9217) Bool)

(assert (=> start!287020 (= res!1222503 (validRegex!3950 r!17423))))

(assert (=> start!287020 e!1865208))

(assert (=> start!287020 e!1865206))

(declare-fun e!1865207 () Bool)

(assert (=> start!287020 e!1865207))

(declare-fun b!2963438 () Bool)

(declare-fun tp!945633 () Bool)

(assert (=> b!2963438 (= e!1865207 (and tp_is_empty!15997 tp!945633))))

(declare-fun b!2963444 () Bool)

(assert (=> b!2963444 (= e!1865209 (validRegex!3950 (simplify!220 r!17423)))))

(declare-fun b!2963445 () Bool)

(declare-fun res!1222504 () Bool)

(assert (=> b!2963445 (=> res!1222504 e!1865205)))

(assert (=> b!2963445 (= res!1222504 (not (isEmptyLang!333 lt!1034734)))))

(assert (= (and start!287020 res!1222503) b!2963436))

(assert (= (and b!2963436 (not res!1222500)) b!2963440))

(assert (= (and b!2963440 (not res!1222502)) b!2963445))

(assert (= (and b!2963445 (not res!1222504)) b!2963443))

(assert (= (and b!2963443 (not res!1222501)) b!2963444))

(assert (= (and start!287020 ((_ is ElementMatch!9217) r!17423)) b!2963441))

(assert (= (and start!287020 ((_ is Concat!14538) r!17423)) b!2963442))

(assert (= (and start!287020 ((_ is Star!9217) r!17423)) b!2963437))

(assert (= (and start!287020 ((_ is Union!9217) r!17423)) b!2963439))

(assert (= (and start!287020 ((_ is Cons!34958) s!11993)) b!2963438))

(declare-fun m!3335361 () Bool)

(assert (=> b!2963444 m!3335361))

(assert (=> b!2963444 m!3335361))

(declare-fun m!3335363 () Bool)

(assert (=> b!2963444 m!3335363))

(declare-fun m!3335365 () Bool)

(assert (=> b!2963440 m!3335365))

(declare-fun m!3335367 () Bool)

(assert (=> b!2963440 m!3335367))

(declare-fun m!3335369 () Bool)

(assert (=> b!2963440 m!3335369))

(declare-fun m!3335371 () Bool)

(assert (=> start!287020 m!3335371))

(declare-fun m!3335373 () Bool)

(assert (=> b!2963443 m!3335373))

(declare-fun m!3335375 () Bool)

(assert (=> b!2963443 m!3335375))

(declare-fun m!3335377 () Bool)

(assert (=> b!2963443 m!3335377))

(declare-fun m!3335379 () Bool)

(assert (=> b!2963436 m!3335379))

(declare-fun m!3335381 () Bool)

(assert (=> b!2963436 m!3335381))

(declare-fun m!3335383 () Bool)

(assert (=> b!2963436 m!3335383))

(declare-fun m!3335385 () Bool)

(assert (=> b!2963445 m!3335385))

(check-sat (not b!2963438) (not b!2963442) (not b!2963445) (not b!2963443) (not b!2963436) (not b!2963439) (not start!287020) tp_is_empty!15997 (not b!2963440) (not b!2963444) (not b!2963437))
(check-sat)
(get-model)

(declare-fun b!2963522 () Bool)

(declare-fun e!1865256 () Bool)

(declare-fun e!1865252 () Bool)

(assert (=> b!2963522 (= e!1865256 e!1865252)))

(declare-fun res!1222530 () Bool)

(assert (=> b!2963522 (=> (not res!1222530) (not e!1865252))))

(declare-fun lt!1034749 () Bool)

(assert (=> b!2963522 (= res!1222530 (not lt!1034749))))

(declare-fun b!2963523 () Bool)

(declare-fun e!1865251 () Bool)

(assert (=> b!2963523 (= e!1865252 e!1865251)))

(declare-fun res!1222531 () Bool)

(assert (=> b!2963523 (=> res!1222531 e!1865251)))

(declare-fun call!196713 () Bool)

(assert (=> b!2963523 (= res!1222531 call!196713)))

(declare-fun b!2963524 () Bool)

(declare-fun res!1222529 () Bool)

(declare-fun e!1865254 () Bool)

(assert (=> b!2963524 (=> (not res!1222529) (not e!1865254))))

(assert (=> b!2963524 (= res!1222529 (not call!196713))))

(declare-fun b!2963525 () Bool)

(declare-fun res!1222526 () Bool)

(assert (=> b!2963525 (=> res!1222526 e!1865256)))

(assert (=> b!2963525 (= res!1222526 (not ((_ is ElementMatch!9217) lt!1034733)))))

(declare-fun e!1865255 () Bool)

(assert (=> b!2963525 (= e!1865255 e!1865256)))

(declare-fun b!2963526 () Bool)

(assert (=> b!2963526 (= e!1865255 (not lt!1034749))))

(declare-fun bm!196708 () Bool)

(declare-fun isEmpty!19222 (List!35082) Bool)

(assert (=> bm!196708 (= call!196713 (isEmpty!19222 s!11993))))

(declare-fun b!2963527 () Bool)

(declare-fun res!1222532 () Bool)

(assert (=> b!2963527 (=> res!1222532 e!1865256)))

(assert (=> b!2963527 (= res!1222532 e!1865254)))

(declare-fun res!1222527 () Bool)

(assert (=> b!2963527 (=> (not res!1222527) (not e!1865254))))

(assert (=> b!2963527 (= res!1222527 lt!1034749)))

(declare-fun b!2963528 () Bool)

(declare-fun e!1865253 () Bool)

(declare-fun nullable!2942 (Regex!9217) Bool)

(assert (=> b!2963528 (= e!1865253 (nullable!2942 lt!1034733))))

(declare-fun b!2963529 () Bool)

(declare-fun head!6602 (List!35082) C!18620)

(assert (=> b!2963529 (= e!1865251 (not (= (head!6602 s!11993) (c!485785 lt!1034733))))))

(declare-fun d!842172 () Bool)

(declare-fun e!1865250 () Bool)

(assert (=> d!842172 e!1865250))

(declare-fun c!485816 () Bool)

(assert (=> d!842172 (= c!485816 ((_ is EmptyExpr!9217) lt!1034733))))

(assert (=> d!842172 (= lt!1034749 e!1865253)))

(declare-fun c!485815 () Bool)

(assert (=> d!842172 (= c!485815 (isEmpty!19222 s!11993))))

(assert (=> d!842172 (validRegex!3950 lt!1034733)))

(assert (=> d!842172 (= (matchR!4099 lt!1034733 s!11993) lt!1034749)))

(declare-fun b!2963530 () Bool)

(declare-fun res!1222525 () Bool)

(assert (=> b!2963530 (=> res!1222525 e!1865251)))

(declare-fun tail!4828 (List!35082) List!35082)

(assert (=> b!2963530 (= res!1222525 (not (isEmpty!19222 (tail!4828 s!11993))))))

(declare-fun b!2963531 () Bool)

(declare-fun derivativeStep!2543 (Regex!9217 C!18620) Regex!9217)

(assert (=> b!2963531 (= e!1865253 (matchR!4099 (derivativeStep!2543 lt!1034733 (head!6602 s!11993)) (tail!4828 s!11993)))))

(declare-fun b!2963532 () Bool)

(assert (=> b!2963532 (= e!1865250 e!1865255)))

(declare-fun c!485814 () Bool)

(assert (=> b!2963532 (= c!485814 ((_ is EmptyLang!9217) lt!1034733))))

(declare-fun b!2963533 () Bool)

(assert (=> b!2963533 (= e!1865250 (= lt!1034749 call!196713))))

(declare-fun b!2963534 () Bool)

(declare-fun res!1222528 () Bool)

(assert (=> b!2963534 (=> (not res!1222528) (not e!1865254))))

(assert (=> b!2963534 (= res!1222528 (isEmpty!19222 (tail!4828 s!11993)))))

(declare-fun b!2963535 () Bool)

(assert (=> b!2963535 (= e!1865254 (= (head!6602 s!11993) (c!485785 lt!1034733)))))

(assert (= (and d!842172 c!485815) b!2963528))

(assert (= (and d!842172 (not c!485815)) b!2963531))

(assert (= (and d!842172 c!485816) b!2963533))

(assert (= (and d!842172 (not c!485816)) b!2963532))

(assert (= (and b!2963532 c!485814) b!2963526))

(assert (= (and b!2963532 (not c!485814)) b!2963525))

(assert (= (and b!2963525 (not res!1222526)) b!2963527))

(assert (= (and b!2963527 res!1222527) b!2963524))

(assert (= (and b!2963524 res!1222529) b!2963534))

(assert (= (and b!2963534 res!1222528) b!2963535))

(assert (= (and b!2963527 (not res!1222532)) b!2963522))

(assert (= (and b!2963522 res!1222530) b!2963523))

(assert (= (and b!2963523 (not res!1222531)) b!2963530))

(assert (= (and b!2963530 (not res!1222525)) b!2963529))

(assert (= (or b!2963533 b!2963523 b!2963524) bm!196708))

(declare-fun m!3335387 () Bool)

(assert (=> b!2963530 m!3335387))

(assert (=> b!2963530 m!3335387))

(declare-fun m!3335389 () Bool)

(assert (=> b!2963530 m!3335389))

(declare-fun m!3335391 () Bool)

(assert (=> b!2963528 m!3335391))

(declare-fun m!3335393 () Bool)

(assert (=> bm!196708 m!3335393))

(assert (=> b!2963534 m!3335387))

(assert (=> b!2963534 m!3335387))

(assert (=> b!2963534 m!3335389))

(declare-fun m!3335395 () Bool)

(assert (=> b!2963531 m!3335395))

(assert (=> b!2963531 m!3335395))

(declare-fun m!3335397 () Bool)

(assert (=> b!2963531 m!3335397))

(assert (=> b!2963531 m!3335387))

(assert (=> b!2963531 m!3335397))

(assert (=> b!2963531 m!3335387))

(declare-fun m!3335399 () Bool)

(assert (=> b!2963531 m!3335399))

(assert (=> b!2963529 m!3335395))

(assert (=> b!2963535 m!3335395))

(assert (=> d!842172 m!3335393))

(declare-fun m!3335401 () Bool)

(assert (=> d!842172 m!3335401))

(assert (=> b!2963443 d!842172))

(declare-fun b!2963536 () Bool)

(declare-fun e!1865263 () Bool)

(declare-fun e!1865259 () Bool)

(assert (=> b!2963536 (= e!1865263 e!1865259)))

(declare-fun res!1222538 () Bool)

(assert (=> b!2963536 (=> (not res!1222538) (not e!1865259))))

(declare-fun lt!1034750 () Bool)

(assert (=> b!2963536 (= res!1222538 (not lt!1034750))))

(declare-fun b!2963537 () Bool)

(declare-fun e!1865258 () Bool)

(assert (=> b!2963537 (= e!1865259 e!1865258)))

(declare-fun res!1222539 () Bool)

(assert (=> b!2963537 (=> res!1222539 e!1865258)))

(declare-fun call!196714 () Bool)

(assert (=> b!2963537 (= res!1222539 call!196714)))

(declare-fun b!2963538 () Bool)

(declare-fun res!1222537 () Bool)

(declare-fun e!1865261 () Bool)

(assert (=> b!2963538 (=> (not res!1222537) (not e!1865261))))

(assert (=> b!2963538 (= res!1222537 (not call!196714))))

(declare-fun b!2963539 () Bool)

(declare-fun res!1222534 () Bool)

(assert (=> b!2963539 (=> res!1222534 e!1865263)))

(assert (=> b!2963539 (= res!1222534 (not ((_ is ElementMatch!9217) (regOne!18947 r!17423))))))

(declare-fun e!1865262 () Bool)

(assert (=> b!2963539 (= e!1865262 e!1865263)))

(declare-fun b!2963540 () Bool)

(assert (=> b!2963540 (= e!1865262 (not lt!1034750))))

(declare-fun bm!196709 () Bool)

(assert (=> bm!196709 (= call!196714 (isEmpty!19222 s!11993))))

(declare-fun b!2963541 () Bool)

(declare-fun res!1222540 () Bool)

(assert (=> b!2963541 (=> res!1222540 e!1865263)))

(assert (=> b!2963541 (= res!1222540 e!1865261)))

(declare-fun res!1222535 () Bool)

(assert (=> b!2963541 (=> (not res!1222535) (not e!1865261))))

(assert (=> b!2963541 (= res!1222535 lt!1034750)))

(declare-fun b!2963542 () Bool)

(declare-fun e!1865260 () Bool)

(assert (=> b!2963542 (= e!1865260 (nullable!2942 (regOne!18947 r!17423)))))

(declare-fun b!2963543 () Bool)

(assert (=> b!2963543 (= e!1865258 (not (= (head!6602 s!11993) (c!485785 (regOne!18947 r!17423)))))))

(declare-fun d!842174 () Bool)

(declare-fun e!1865257 () Bool)

(assert (=> d!842174 e!1865257))

(declare-fun c!485819 () Bool)

(assert (=> d!842174 (= c!485819 ((_ is EmptyExpr!9217) (regOne!18947 r!17423)))))

(assert (=> d!842174 (= lt!1034750 e!1865260)))

(declare-fun c!485818 () Bool)

(assert (=> d!842174 (= c!485818 (isEmpty!19222 s!11993))))

(assert (=> d!842174 (validRegex!3950 (regOne!18947 r!17423))))

(assert (=> d!842174 (= (matchR!4099 (regOne!18947 r!17423) s!11993) lt!1034750)))

(declare-fun b!2963544 () Bool)

(declare-fun res!1222533 () Bool)

(assert (=> b!2963544 (=> res!1222533 e!1865258)))

(assert (=> b!2963544 (= res!1222533 (not (isEmpty!19222 (tail!4828 s!11993))))))

(declare-fun b!2963545 () Bool)

(assert (=> b!2963545 (= e!1865260 (matchR!4099 (derivativeStep!2543 (regOne!18947 r!17423) (head!6602 s!11993)) (tail!4828 s!11993)))))

(declare-fun b!2963546 () Bool)

(assert (=> b!2963546 (= e!1865257 e!1865262)))

(declare-fun c!485817 () Bool)

(assert (=> b!2963546 (= c!485817 ((_ is EmptyLang!9217) (regOne!18947 r!17423)))))

(declare-fun b!2963547 () Bool)

(assert (=> b!2963547 (= e!1865257 (= lt!1034750 call!196714))))

(declare-fun b!2963548 () Bool)

(declare-fun res!1222536 () Bool)

(assert (=> b!2963548 (=> (not res!1222536) (not e!1865261))))

(assert (=> b!2963548 (= res!1222536 (isEmpty!19222 (tail!4828 s!11993)))))

(declare-fun b!2963549 () Bool)

(assert (=> b!2963549 (= e!1865261 (= (head!6602 s!11993) (c!485785 (regOne!18947 r!17423))))))

(assert (= (and d!842174 c!485818) b!2963542))

(assert (= (and d!842174 (not c!485818)) b!2963545))

(assert (= (and d!842174 c!485819) b!2963547))

(assert (= (and d!842174 (not c!485819)) b!2963546))

(assert (= (and b!2963546 c!485817) b!2963540))

(assert (= (and b!2963546 (not c!485817)) b!2963539))

(assert (= (and b!2963539 (not res!1222534)) b!2963541))

(assert (= (and b!2963541 res!1222535) b!2963538))

(assert (= (and b!2963538 res!1222537) b!2963548))

(assert (= (and b!2963548 res!1222536) b!2963549))

(assert (= (and b!2963541 (not res!1222540)) b!2963536))

(assert (= (and b!2963536 res!1222538) b!2963537))

(assert (= (and b!2963537 (not res!1222539)) b!2963544))

(assert (= (and b!2963544 (not res!1222533)) b!2963543))

(assert (= (or b!2963547 b!2963537 b!2963538) bm!196709))

(assert (=> b!2963544 m!3335387))

(assert (=> b!2963544 m!3335387))

(assert (=> b!2963544 m!3335389))

(declare-fun m!3335403 () Bool)

(assert (=> b!2963542 m!3335403))

(assert (=> bm!196709 m!3335393))

(assert (=> b!2963548 m!3335387))

(assert (=> b!2963548 m!3335387))

(assert (=> b!2963548 m!3335389))

(assert (=> b!2963545 m!3335395))

(assert (=> b!2963545 m!3335395))

(declare-fun m!3335405 () Bool)

(assert (=> b!2963545 m!3335405))

(assert (=> b!2963545 m!3335387))

(assert (=> b!2963545 m!3335405))

(assert (=> b!2963545 m!3335387))

(declare-fun m!3335407 () Bool)

(assert (=> b!2963545 m!3335407))

(assert (=> b!2963543 m!3335395))

(assert (=> b!2963549 m!3335395))

(assert (=> d!842174 m!3335393))

(declare-fun m!3335409 () Bool)

(assert (=> d!842174 m!3335409))

(assert (=> b!2963443 d!842174))

(declare-fun d!842176 () Bool)

(assert (=> d!842176 (= (matchR!4099 (regOne!18947 r!17423) s!11993) (matchR!4099 (simplify!220 (regOne!18947 r!17423)) s!11993))))

(declare-fun lt!1034753 () Unit!48813)

(declare-fun choose!17530 (Regex!9217 List!35082) Unit!48813)

(assert (=> d!842176 (= lt!1034753 (choose!17530 (regOne!18947 r!17423) s!11993))))

(assert (=> d!842176 (validRegex!3950 (regOne!18947 r!17423))))

(assert (=> d!842176 (= (lemmaSimplifySound!144 (regOne!18947 r!17423) s!11993) lt!1034753)))

(declare-fun bs!526380 () Bool)

(assert (= bs!526380 d!842176))

(assert (=> bs!526380 m!3335375))

(assert (=> bs!526380 m!3335369))

(assert (=> bs!526380 m!3335369))

(declare-fun m!3335411 () Bool)

(assert (=> bs!526380 m!3335411))

(assert (=> bs!526380 m!3335409))

(declare-fun m!3335413 () Bool)

(assert (=> bs!526380 m!3335413))

(assert (=> b!2963443 d!842176))

(declare-fun b!2963816 () Bool)

(assert (=> b!2963816 true))

(assert (=> b!2963816 true))

(declare-fun bs!526384 () Bool)

(declare-fun b!2963814 () Bool)

(assert (= bs!526384 (and b!2963814 b!2963816)))

(declare-fun lambda!110422 () Int)

(declare-fun lambda!110421 () Int)

(assert (=> bs!526384 (not (= lambda!110422 lambda!110421))))

(assert (=> b!2963814 true))

(assert (=> b!2963814 true))

(declare-fun b!2963812 () Bool)

(declare-fun e!1865420 () Bool)

(assert (=> b!2963812 (= e!1865420 (matchRSpec!1354 (regTwo!18947 r!17423) s!11993))))

(declare-fun d!842178 () Bool)

(declare-fun c!485896 () Bool)

(assert (=> d!842178 (= c!485896 ((_ is EmptyExpr!9217) r!17423))))

(declare-fun e!1865414 () Bool)

(assert (=> d!842178 (= (matchRSpec!1354 r!17423 s!11993) e!1865414)))

(declare-fun bm!196758 () Bool)

(declare-fun call!196764 () Bool)

(assert (=> bm!196758 (= call!196764 (isEmpty!19222 s!11993))))

(declare-fun b!2963813 () Bool)

(declare-fun c!485897 () Bool)

(assert (=> b!2963813 (= c!485897 ((_ is ElementMatch!9217) r!17423))))

(declare-fun e!1865418 () Bool)

(declare-fun e!1865419 () Bool)

(assert (=> b!2963813 (= e!1865418 e!1865419)))

(declare-fun e!1865416 () Bool)

(declare-fun call!196763 () Bool)

(assert (=> b!2963814 (= e!1865416 call!196763)))

(declare-fun b!2963815 () Bool)

(assert (=> b!2963815 (= e!1865414 call!196764)))

(declare-fun e!1865417 () Bool)

(assert (=> b!2963816 (= e!1865417 call!196763)))

(declare-fun b!2963817 () Bool)

(declare-fun e!1865415 () Bool)

(assert (=> b!2963817 (= e!1865415 e!1865420)))

(declare-fun res!1222648 () Bool)

(assert (=> b!2963817 (= res!1222648 (matchRSpec!1354 (regOne!18947 r!17423) s!11993))))

(assert (=> b!2963817 (=> res!1222648 e!1865420)))

(declare-fun b!2963818 () Bool)

(assert (=> b!2963818 (= e!1865415 e!1865416)))

(declare-fun c!485898 () Bool)

(assert (=> b!2963818 (= c!485898 ((_ is Star!9217) r!17423))))

(declare-fun b!2963819 () Bool)

(assert (=> b!2963819 (= e!1865419 (= s!11993 (Cons!34958 (c!485785 r!17423) Nil!34958)))))

(declare-fun b!2963820 () Bool)

(declare-fun res!1222649 () Bool)

(assert (=> b!2963820 (=> res!1222649 e!1865417)))

(assert (=> b!2963820 (= res!1222649 call!196764)))

(assert (=> b!2963820 (= e!1865416 e!1865417)))

(declare-fun bm!196759 () Bool)

(declare-fun Exists!1527 (Int) Bool)

(assert (=> bm!196759 (= call!196763 (Exists!1527 (ite c!485898 lambda!110421 lambda!110422)))))

(declare-fun b!2963821 () Bool)

(assert (=> b!2963821 (= e!1865414 e!1865418)))

(declare-fun res!1222647 () Bool)

(assert (=> b!2963821 (= res!1222647 (not ((_ is EmptyLang!9217) r!17423)))))

(assert (=> b!2963821 (=> (not res!1222647) (not e!1865418))))

(declare-fun b!2963822 () Bool)

(declare-fun c!485899 () Bool)

(assert (=> b!2963822 (= c!485899 ((_ is Union!9217) r!17423))))

(assert (=> b!2963822 (= e!1865419 e!1865415)))

(assert (= (and d!842178 c!485896) b!2963815))

(assert (= (and d!842178 (not c!485896)) b!2963821))

(assert (= (and b!2963821 res!1222647) b!2963813))

(assert (= (and b!2963813 c!485897) b!2963819))

(assert (= (and b!2963813 (not c!485897)) b!2963822))

(assert (= (and b!2963822 c!485899) b!2963817))

(assert (= (and b!2963822 (not c!485899)) b!2963818))

(assert (= (and b!2963817 (not res!1222648)) b!2963812))

(assert (= (and b!2963818 c!485898) b!2963820))

(assert (= (and b!2963818 (not c!485898)) b!2963814))

(assert (= (and b!2963820 (not res!1222649)) b!2963816))

(assert (= (or b!2963816 b!2963814) bm!196759))

(assert (= (or b!2963815 b!2963820) bm!196758))

(declare-fun m!3335521 () Bool)

(assert (=> b!2963812 m!3335521))

(assert (=> bm!196758 m!3335393))

(declare-fun m!3335523 () Bool)

(assert (=> b!2963817 m!3335523))

(declare-fun m!3335525 () Bool)

(assert (=> bm!196759 m!3335525))

(assert (=> b!2963436 d!842178))

(declare-fun b!2963841 () Bool)

(declare-fun e!1865430 () Bool)

(declare-fun e!1865426 () Bool)

(assert (=> b!2963841 (= e!1865430 e!1865426)))

(declare-fun res!1222655 () Bool)

(assert (=> b!2963841 (=> (not res!1222655) (not e!1865426))))

(declare-fun lt!1034783 () Bool)

(assert (=> b!2963841 (= res!1222655 (not lt!1034783))))

(declare-fun b!2963842 () Bool)

(declare-fun e!1865425 () Bool)

(assert (=> b!2963842 (= e!1865426 e!1865425)))

(declare-fun res!1222656 () Bool)

(assert (=> b!2963842 (=> res!1222656 e!1865425)))

(declare-fun call!196765 () Bool)

(assert (=> b!2963842 (= res!1222656 call!196765)))

(declare-fun b!2963843 () Bool)

(declare-fun res!1222654 () Bool)

(declare-fun e!1865428 () Bool)

(assert (=> b!2963843 (=> (not res!1222654) (not e!1865428))))

(assert (=> b!2963843 (= res!1222654 (not call!196765))))

(declare-fun b!2963844 () Bool)

(declare-fun res!1222651 () Bool)

(assert (=> b!2963844 (=> res!1222651 e!1865430)))

(assert (=> b!2963844 (= res!1222651 (not ((_ is ElementMatch!9217) r!17423)))))

(declare-fun e!1865429 () Bool)

(assert (=> b!2963844 (= e!1865429 e!1865430)))

(declare-fun b!2963845 () Bool)

(assert (=> b!2963845 (= e!1865429 (not lt!1034783))))

(declare-fun bm!196760 () Bool)

(assert (=> bm!196760 (= call!196765 (isEmpty!19222 s!11993))))

(declare-fun b!2963846 () Bool)

(declare-fun res!1222657 () Bool)

(assert (=> b!2963846 (=> res!1222657 e!1865430)))

(assert (=> b!2963846 (= res!1222657 e!1865428)))

(declare-fun res!1222652 () Bool)

(assert (=> b!2963846 (=> (not res!1222652) (not e!1865428))))

(assert (=> b!2963846 (= res!1222652 lt!1034783)))

(declare-fun b!2963847 () Bool)

(declare-fun e!1865427 () Bool)

(assert (=> b!2963847 (= e!1865427 (nullable!2942 r!17423))))

(declare-fun b!2963848 () Bool)

(assert (=> b!2963848 (= e!1865425 (not (= (head!6602 s!11993) (c!485785 r!17423))))))

(declare-fun d!842202 () Bool)

(declare-fun e!1865424 () Bool)

(assert (=> d!842202 e!1865424))

(declare-fun c!485902 () Bool)

(assert (=> d!842202 (= c!485902 ((_ is EmptyExpr!9217) r!17423))))

(assert (=> d!842202 (= lt!1034783 e!1865427)))

(declare-fun c!485901 () Bool)

(assert (=> d!842202 (= c!485901 (isEmpty!19222 s!11993))))

(assert (=> d!842202 (validRegex!3950 r!17423)))

(assert (=> d!842202 (= (matchR!4099 r!17423 s!11993) lt!1034783)))

(declare-fun b!2963849 () Bool)

(declare-fun res!1222650 () Bool)

(assert (=> b!2963849 (=> res!1222650 e!1865425)))

(assert (=> b!2963849 (= res!1222650 (not (isEmpty!19222 (tail!4828 s!11993))))))

(declare-fun b!2963850 () Bool)

(assert (=> b!2963850 (= e!1865427 (matchR!4099 (derivativeStep!2543 r!17423 (head!6602 s!11993)) (tail!4828 s!11993)))))

(declare-fun b!2963851 () Bool)

(assert (=> b!2963851 (= e!1865424 e!1865429)))

(declare-fun c!485900 () Bool)

(assert (=> b!2963851 (= c!485900 ((_ is EmptyLang!9217) r!17423))))

(declare-fun b!2963852 () Bool)

(assert (=> b!2963852 (= e!1865424 (= lt!1034783 call!196765))))

(declare-fun b!2963853 () Bool)

(declare-fun res!1222653 () Bool)

(assert (=> b!2963853 (=> (not res!1222653) (not e!1865428))))

(assert (=> b!2963853 (= res!1222653 (isEmpty!19222 (tail!4828 s!11993)))))

(declare-fun b!2963854 () Bool)

(assert (=> b!2963854 (= e!1865428 (= (head!6602 s!11993) (c!485785 r!17423)))))

(assert (= (and d!842202 c!485901) b!2963847))

(assert (= (and d!842202 (not c!485901)) b!2963850))

(assert (= (and d!842202 c!485902) b!2963852))

(assert (= (and d!842202 (not c!485902)) b!2963851))

(assert (= (and b!2963851 c!485900) b!2963845))

(assert (= (and b!2963851 (not c!485900)) b!2963844))

(assert (= (and b!2963844 (not res!1222651)) b!2963846))

(assert (= (and b!2963846 res!1222652) b!2963843))

(assert (= (and b!2963843 res!1222654) b!2963853))

(assert (= (and b!2963853 res!1222653) b!2963854))

(assert (= (and b!2963846 (not res!1222657)) b!2963841))

(assert (= (and b!2963841 res!1222655) b!2963842))

(assert (= (and b!2963842 (not res!1222656)) b!2963849))

(assert (= (and b!2963849 (not res!1222650)) b!2963848))

(assert (= (or b!2963852 b!2963842 b!2963843) bm!196760))

(assert (=> b!2963849 m!3335387))

(assert (=> b!2963849 m!3335387))

(assert (=> b!2963849 m!3335389))

(declare-fun m!3335527 () Bool)

(assert (=> b!2963847 m!3335527))

(assert (=> bm!196760 m!3335393))

(assert (=> b!2963853 m!3335387))

(assert (=> b!2963853 m!3335387))

(assert (=> b!2963853 m!3335389))

(assert (=> b!2963850 m!3335395))

(assert (=> b!2963850 m!3335395))

(declare-fun m!3335529 () Bool)

(assert (=> b!2963850 m!3335529))

(assert (=> b!2963850 m!3335387))

(assert (=> b!2963850 m!3335529))

(assert (=> b!2963850 m!3335387))

(declare-fun m!3335531 () Bool)

(assert (=> b!2963850 m!3335531))

(assert (=> b!2963848 m!3335395))

(assert (=> b!2963854 m!3335395))

(assert (=> d!842202 m!3335393))

(assert (=> d!842202 m!3335371))

(assert (=> b!2963436 d!842202))

(declare-fun d!842204 () Bool)

(assert (=> d!842204 (= (matchR!4099 r!17423 s!11993) (matchRSpec!1354 r!17423 s!11993))))

(declare-fun lt!1034786 () Unit!48813)

(declare-fun choose!17532 (Regex!9217 List!35082) Unit!48813)

(assert (=> d!842204 (= lt!1034786 (choose!17532 r!17423 s!11993))))

(assert (=> d!842204 (validRegex!3950 r!17423)))

(assert (=> d!842204 (= (mainMatchTheorem!1354 r!17423 s!11993) lt!1034786)))

(declare-fun bs!526385 () Bool)

(assert (= bs!526385 d!842204))

(assert (=> bs!526385 m!3335381))

(assert (=> bs!526385 m!3335379))

(declare-fun m!3335533 () Bool)

(assert (=> bs!526385 m!3335533))

(assert (=> bs!526385 m!3335371))

(assert (=> b!2963436 d!842204))

(declare-fun d!842206 () Bool)

(assert (=> d!842206 (= (isEmptyLang!333 lt!1034734) ((_ is EmptyLang!9217) lt!1034734))))

(assert (=> b!2963445 d!842206))

(declare-fun bm!196767 () Bool)

(declare-fun call!196773 () Bool)

(declare-fun c!485907 () Bool)

(assert (=> bm!196767 (= call!196773 (validRegex!3950 (ite c!485907 (regOne!18947 r!17423) (regTwo!18946 r!17423))))))

(declare-fun b!2963894 () Bool)

(declare-fun res!1222672 () Bool)

(declare-fun e!1865453 () Bool)

(assert (=> b!2963894 (=> (not res!1222672) (not e!1865453))))

(assert (=> b!2963894 (= res!1222672 call!196773)))

(declare-fun e!1865455 () Bool)

(assert (=> b!2963894 (= e!1865455 e!1865453)))

(declare-fun b!2963895 () Bool)

(declare-fun e!1865456 () Bool)

(declare-fun call!196772 () Bool)

(assert (=> b!2963895 (= e!1865456 call!196772)))

(declare-fun b!2963896 () Bool)

(declare-fun e!1865457 () Bool)

(declare-fun e!1865458 () Bool)

(assert (=> b!2963896 (= e!1865457 e!1865458)))

(declare-fun res!1222671 () Bool)

(assert (=> b!2963896 (=> (not res!1222671) (not e!1865458))))

(declare-fun call!196774 () Bool)

(assert (=> b!2963896 (= res!1222671 call!196774)))

(declare-fun b!2963897 () Bool)

(declare-fun res!1222669 () Bool)

(assert (=> b!2963897 (=> res!1222669 e!1865457)))

(assert (=> b!2963897 (= res!1222669 (not ((_ is Concat!14538) r!17423)))))

(assert (=> b!2963897 (= e!1865455 e!1865457)))

(declare-fun bm!196768 () Bool)

(assert (=> bm!196768 (= call!196774 call!196772)))

(declare-fun b!2963898 () Bool)

(assert (=> b!2963898 (= e!1865453 call!196774)))

(declare-fun c!485908 () Bool)

(declare-fun bm!196769 () Bool)

(assert (=> bm!196769 (= call!196772 (validRegex!3950 (ite c!485908 (reg!9546 r!17423) (ite c!485907 (regTwo!18947 r!17423) (regOne!18946 r!17423)))))))

(declare-fun d!842208 () Bool)

(declare-fun res!1222668 () Bool)

(declare-fun e!1865454 () Bool)

(assert (=> d!842208 (=> res!1222668 e!1865454)))

(assert (=> d!842208 (= res!1222668 ((_ is ElementMatch!9217) r!17423))))

(assert (=> d!842208 (= (validRegex!3950 r!17423) e!1865454)))

(declare-fun b!2963899 () Bool)

(assert (=> b!2963899 (= e!1865458 call!196773)))

(declare-fun b!2963900 () Bool)

(declare-fun e!1865452 () Bool)

(assert (=> b!2963900 (= e!1865452 e!1865456)))

(declare-fun res!1222670 () Bool)

(assert (=> b!2963900 (= res!1222670 (not (nullable!2942 (reg!9546 r!17423))))))

(assert (=> b!2963900 (=> (not res!1222670) (not e!1865456))))

(declare-fun b!2963901 () Bool)

(assert (=> b!2963901 (= e!1865454 e!1865452)))

(assert (=> b!2963901 (= c!485908 ((_ is Star!9217) r!17423))))

(declare-fun b!2963902 () Bool)

(assert (=> b!2963902 (= e!1865452 e!1865455)))

(assert (=> b!2963902 (= c!485907 ((_ is Union!9217) r!17423))))

(assert (= (and d!842208 (not res!1222668)) b!2963901))

(assert (= (and b!2963901 c!485908) b!2963900))

(assert (= (and b!2963901 (not c!485908)) b!2963902))

(assert (= (and b!2963900 res!1222670) b!2963895))

(assert (= (and b!2963902 c!485907) b!2963894))

(assert (= (and b!2963902 (not c!485907)) b!2963897))

(assert (= (and b!2963894 res!1222672) b!2963898))

(assert (= (and b!2963897 (not res!1222669)) b!2963896))

(assert (= (and b!2963896 res!1222671) b!2963899))

(assert (= (or b!2963894 b!2963899) bm!196767))

(assert (= (or b!2963898 b!2963896) bm!196768))

(assert (= (or b!2963895 bm!196768) bm!196769))

(declare-fun m!3335535 () Bool)

(assert (=> bm!196767 m!3335535))

(declare-fun m!3335537 () Bool)

(assert (=> bm!196769 m!3335537))

(declare-fun m!3335539 () Bool)

(assert (=> b!2963900 m!3335539))

(assert (=> start!287020 d!842208))

(declare-fun d!842210 () Bool)

(assert (=> d!842210 (= (isEmptyLang!333 lt!1034733) ((_ is EmptyLang!9217) lt!1034733))))

(assert (=> b!2963440 d!842210))

(declare-fun bm!196784 () Bool)

(declare-fun lt!1034799 () Regex!9217)

(declare-fun c!485933 () Bool)

(declare-fun call!196793 () Bool)

(declare-fun lt!1034801 () Regex!9217)

(assert (=> bm!196784 (= call!196793 (isEmptyLang!333 (ite c!485933 lt!1034799 lt!1034801)))))

(declare-fun call!196794 () Regex!9217)

(declare-fun bm!196785 () Bool)

(declare-fun c!485931 () Bool)

(assert (=> bm!196785 (= call!196794 (simplify!220 (ite c!485931 (reg!9546 (regTwo!18947 r!17423)) (ite c!485933 (regTwo!18947 (regTwo!18947 r!17423)) (regOne!18946 (regTwo!18947 r!17423))))))))

(declare-fun call!196792 () Bool)

(declare-fun lt!1034804 () Regex!9217)

(declare-fun bm!196786 () Bool)

(declare-fun isEmptyExpr!400 (Regex!9217) Bool)

(assert (=> bm!196786 (= call!196792 (isEmptyExpr!400 (ite c!485931 lt!1034804 lt!1034801)))))

(declare-fun bm!196787 () Bool)

(declare-fun call!196791 () Regex!9217)

(assert (=> bm!196787 (= call!196791 (simplify!220 (ite c!485933 (regOne!18947 (regTwo!18947 r!17423)) (regTwo!18946 (regTwo!18947 r!17423)))))))

(declare-fun b!2963953 () Bool)

(declare-fun e!1865498 () Regex!9217)

(assert (=> b!2963953 (= e!1865498 lt!1034799)))

(declare-fun b!2963955 () Bool)

(declare-fun e!1865497 () Regex!9217)

(assert (=> b!2963955 (= e!1865497 EmptyLang!9217)))

(declare-fun b!2963956 () Bool)

(declare-fun c!485939 () Bool)

(assert (=> b!2963956 (= c!485939 call!196792)))

(declare-fun e!1865495 () Regex!9217)

(assert (=> b!2963956 (= e!1865497 e!1865495)))

(declare-fun bm!196788 () Bool)

(declare-fun call!196789 () Bool)

(declare-fun call!196790 () Bool)

(assert (=> bm!196788 (= call!196789 call!196790)))

(declare-fun b!2963957 () Bool)

(declare-fun e!1865499 () Bool)

(assert (=> b!2963957 (= e!1865499 call!196789)))

(declare-fun b!2963958 () Bool)

(declare-fun e!1865487 () Bool)

(declare-fun lt!1034802 () Regex!9217)

(assert (=> b!2963958 (= e!1865487 (= (nullable!2942 lt!1034802) (nullable!2942 (regTwo!18947 r!17423))))))

(declare-fun b!2963959 () Bool)

(declare-fun c!485936 () Bool)

(assert (=> b!2963959 (= c!485936 ((_ is EmptyExpr!9217) (regTwo!18947 r!17423)))))

(declare-fun e!1865489 () Regex!9217)

(declare-fun e!1865494 () Regex!9217)

(assert (=> b!2963959 (= e!1865489 e!1865494)))

(declare-fun b!2963960 () Bool)

(declare-fun e!1865493 () Regex!9217)

(assert (=> b!2963960 (= e!1865495 e!1865493)))

(declare-fun c!485940 () Bool)

(declare-fun lt!1034803 () Regex!9217)

(assert (=> b!2963960 (= c!485940 (isEmptyExpr!400 lt!1034803))))

(declare-fun b!2963961 () Bool)

(declare-fun e!1865491 () Regex!9217)

(assert (=> b!2963961 (= e!1865491 EmptyExpr!9217)))

(declare-fun b!2963962 () Bool)

(assert (=> b!2963962 (= c!485933 ((_ is Union!9217) (regTwo!18947 r!17423)))))

(declare-fun e!1865496 () Regex!9217)

(declare-fun e!1865490 () Regex!9217)

(assert (=> b!2963962 (= e!1865496 e!1865490)))

(declare-fun b!2963963 () Bool)

(declare-fun c!485937 () Bool)

(assert (=> b!2963963 (= c!485937 call!196793)))

(declare-fun e!1865488 () Regex!9217)

(assert (=> b!2963963 (= e!1865498 e!1865488)))

(declare-fun b!2963964 () Bool)

(assert (=> b!2963964 (= e!1865491 (Star!9217 lt!1034804))))

(declare-fun b!2963965 () Bool)

(declare-fun c!485941 () Bool)

(declare-fun e!1865492 () Bool)

(assert (=> b!2963965 (= c!485941 e!1865492)))

(declare-fun res!1222681 () Bool)

(assert (=> b!2963965 (=> res!1222681 e!1865492)))

(assert (=> b!2963965 (= res!1222681 call!196790)))

(assert (=> b!2963965 (= lt!1034804 call!196794)))

(assert (=> b!2963965 (= e!1865496 e!1865491)))

(declare-fun b!2963966 () Bool)

(assert (=> b!2963966 (= e!1865493 lt!1034801)))

(declare-fun b!2963967 () Bool)

(declare-fun e!1865500 () Regex!9217)

(assert (=> b!2963967 (= e!1865500 e!1865489)))

(declare-fun c!485938 () Bool)

(assert (=> b!2963967 (= c!485938 ((_ is ElementMatch!9217) (regTwo!18947 r!17423)))))

(declare-fun b!2963968 () Bool)

(assert (=> b!2963968 (= e!1865500 EmptyLang!9217)))

(declare-fun b!2963969 () Bool)

(assert (=> b!2963969 (= e!1865495 lt!1034803)))

(declare-fun b!2963970 () Bool)

(assert (=> b!2963970 (= e!1865490 e!1865498)))

(declare-fun lt!1034800 () Regex!9217)

(assert (=> b!2963970 (= lt!1034800 call!196791)))

(declare-fun call!196795 () Regex!9217)

(assert (=> b!2963970 (= lt!1034799 call!196795)))

(declare-fun c!485934 () Bool)

(assert (=> b!2963970 (= c!485934 call!196789)))

(declare-fun b!2963971 () Bool)

(assert (=> b!2963971 (= e!1865488 lt!1034800)))

(declare-fun bm!196789 () Bool)

(assert (=> bm!196789 (= call!196795 call!196794)))

(declare-fun b!2963954 () Bool)

(assert (=> b!2963954 (= e!1865488 (Union!9217 lt!1034800 lt!1034799))))

(declare-fun d!842212 () Bool)

(assert (=> d!842212 e!1865487))

(declare-fun res!1222679 () Bool)

(assert (=> d!842212 (=> (not res!1222679) (not e!1865487))))

(assert (=> d!842212 (= res!1222679 (validRegex!3950 lt!1034802))))

(assert (=> d!842212 (= lt!1034802 e!1865500)))

(declare-fun c!485935 () Bool)

(assert (=> d!842212 (= c!485935 ((_ is EmptyLang!9217) (regTwo!18947 r!17423)))))

(assert (=> d!842212 (validRegex!3950 (regTwo!18947 r!17423))))

(assert (=> d!842212 (= (simplify!220 (regTwo!18947 r!17423)) lt!1034802)))

(declare-fun b!2963972 () Bool)

(assert (=> b!2963972 (= e!1865489 (regTwo!18947 r!17423))))

(declare-fun b!2963973 () Bool)

(assert (=> b!2963973 (= e!1865494 EmptyExpr!9217)))

(declare-fun b!2963974 () Bool)

(assert (=> b!2963974 (= e!1865490 e!1865497)))

(assert (=> b!2963974 (= lt!1034801 call!196795)))

(assert (=> b!2963974 (= lt!1034803 call!196791)))

(declare-fun res!1222680 () Bool)

(assert (=> b!2963974 (= res!1222680 call!196793)))

(assert (=> b!2963974 (=> res!1222680 e!1865499)))

(declare-fun c!485932 () Bool)

(assert (=> b!2963974 (= c!485932 e!1865499)))

(declare-fun b!2963975 () Bool)

(assert (=> b!2963975 (= e!1865493 (Concat!14538 lt!1034801 lt!1034803))))

(declare-fun b!2963976 () Bool)

(assert (=> b!2963976 (= e!1865494 e!1865496)))

(assert (=> b!2963976 (= c!485931 ((_ is Star!9217) (regTwo!18947 r!17423)))))

(declare-fun bm!196790 () Bool)

(assert (=> bm!196790 (= call!196790 (isEmptyLang!333 (ite c!485931 lt!1034804 (ite c!485933 lt!1034800 lt!1034803))))))

(declare-fun b!2963977 () Bool)

(assert (=> b!2963977 (= e!1865492 call!196792)))

(assert (= (and d!842212 c!485935) b!2963968))

(assert (= (and d!842212 (not c!485935)) b!2963967))

(assert (= (and b!2963967 c!485938) b!2963972))

(assert (= (and b!2963967 (not c!485938)) b!2963959))

(assert (= (and b!2963959 c!485936) b!2963973))

(assert (= (and b!2963959 (not c!485936)) b!2963976))

(assert (= (and b!2963976 c!485931) b!2963965))

(assert (= (and b!2963976 (not c!485931)) b!2963962))

(assert (= (and b!2963965 (not res!1222681)) b!2963977))

(assert (= (and b!2963965 c!485941) b!2963961))

(assert (= (and b!2963965 (not c!485941)) b!2963964))

(assert (= (and b!2963962 c!485933) b!2963970))

(assert (= (and b!2963962 (not c!485933)) b!2963974))

(assert (= (and b!2963970 c!485934) b!2963953))

(assert (= (and b!2963970 (not c!485934)) b!2963963))

(assert (= (and b!2963963 c!485937) b!2963971))

(assert (= (and b!2963963 (not c!485937)) b!2963954))

(assert (= (and b!2963974 (not res!1222680)) b!2963957))

(assert (= (and b!2963974 c!485932) b!2963955))

(assert (= (and b!2963974 (not c!485932)) b!2963956))

(assert (= (and b!2963956 c!485939) b!2963969))

(assert (= (and b!2963956 (not c!485939)) b!2963960))

(assert (= (and b!2963960 c!485940) b!2963966))

(assert (= (and b!2963960 (not c!485940)) b!2963975))

(assert (= (or b!2963970 b!2963974) bm!196787))

(assert (= (or b!2963970 b!2963974) bm!196789))

(assert (= (or b!2963970 b!2963957) bm!196788))

(assert (= (or b!2963963 b!2963974) bm!196784))

(assert (= (or b!2963977 b!2963956) bm!196786))

(assert (= (or b!2963965 bm!196789) bm!196785))

(assert (= (or b!2963965 bm!196788) bm!196790))

(assert (= (and d!842212 res!1222679) b!2963958))

(declare-fun m!3335541 () Bool)

(assert (=> b!2963958 m!3335541))

(declare-fun m!3335543 () Bool)

(assert (=> b!2963958 m!3335543))

(declare-fun m!3335545 () Bool)

(assert (=> b!2963960 m!3335545))

(declare-fun m!3335547 () Bool)

(assert (=> bm!196787 m!3335547))

(declare-fun m!3335549 () Bool)

(assert (=> bm!196784 m!3335549))

(declare-fun m!3335551 () Bool)

(assert (=> d!842212 m!3335551))

(declare-fun m!3335553 () Bool)

(assert (=> d!842212 m!3335553))

(declare-fun m!3335555 () Bool)

(assert (=> bm!196790 m!3335555))

(declare-fun m!3335557 () Bool)

(assert (=> bm!196785 m!3335557))

(declare-fun m!3335559 () Bool)

(assert (=> bm!196786 m!3335559))

(assert (=> b!2963440 d!842212))

(declare-fun bm!196791 () Bool)

(declare-fun lt!1034807 () Regex!9217)

(declare-fun c!485944 () Bool)

(declare-fun lt!1034805 () Regex!9217)

(declare-fun call!196800 () Bool)

(assert (=> bm!196791 (= call!196800 (isEmptyLang!333 (ite c!485944 lt!1034805 lt!1034807)))))

(declare-fun c!485942 () Bool)

(declare-fun call!196801 () Regex!9217)

(declare-fun bm!196792 () Bool)

(assert (=> bm!196792 (= call!196801 (simplify!220 (ite c!485942 (reg!9546 (regOne!18947 r!17423)) (ite c!485944 (regTwo!18947 (regOne!18947 r!17423)) (regOne!18946 (regOne!18947 r!17423))))))))

(declare-fun call!196799 () Bool)

(declare-fun bm!196793 () Bool)

(declare-fun lt!1034810 () Regex!9217)

(assert (=> bm!196793 (= call!196799 (isEmptyExpr!400 (ite c!485942 lt!1034810 lt!1034807)))))

(declare-fun bm!196794 () Bool)

(declare-fun call!196798 () Regex!9217)

(assert (=> bm!196794 (= call!196798 (simplify!220 (ite c!485944 (regOne!18947 (regOne!18947 r!17423)) (regTwo!18946 (regOne!18947 r!17423)))))))

(declare-fun b!2963978 () Bool)

(declare-fun e!1865512 () Regex!9217)

(assert (=> b!2963978 (= e!1865512 lt!1034805)))

(declare-fun b!2963980 () Bool)

(declare-fun e!1865511 () Regex!9217)

(assert (=> b!2963980 (= e!1865511 EmptyLang!9217)))

(declare-fun b!2963981 () Bool)

(declare-fun c!485950 () Bool)

(assert (=> b!2963981 (= c!485950 call!196799)))

(declare-fun e!1865509 () Regex!9217)

(assert (=> b!2963981 (= e!1865511 e!1865509)))

(declare-fun bm!196795 () Bool)

(declare-fun call!196796 () Bool)

(declare-fun call!196797 () Bool)

(assert (=> bm!196795 (= call!196796 call!196797)))

(declare-fun b!2963982 () Bool)

(declare-fun e!1865513 () Bool)

(assert (=> b!2963982 (= e!1865513 call!196796)))

(declare-fun b!2963983 () Bool)

(declare-fun e!1865501 () Bool)

(declare-fun lt!1034808 () Regex!9217)

(assert (=> b!2963983 (= e!1865501 (= (nullable!2942 lt!1034808) (nullable!2942 (regOne!18947 r!17423))))))

(declare-fun b!2963984 () Bool)

(declare-fun c!485947 () Bool)

(assert (=> b!2963984 (= c!485947 ((_ is EmptyExpr!9217) (regOne!18947 r!17423)))))

(declare-fun e!1865503 () Regex!9217)

(declare-fun e!1865508 () Regex!9217)

(assert (=> b!2963984 (= e!1865503 e!1865508)))

(declare-fun b!2963985 () Bool)

(declare-fun e!1865507 () Regex!9217)

(assert (=> b!2963985 (= e!1865509 e!1865507)))

(declare-fun c!485951 () Bool)

(declare-fun lt!1034809 () Regex!9217)

(assert (=> b!2963985 (= c!485951 (isEmptyExpr!400 lt!1034809))))

(declare-fun b!2963986 () Bool)

(declare-fun e!1865505 () Regex!9217)

(assert (=> b!2963986 (= e!1865505 EmptyExpr!9217)))

(declare-fun b!2963987 () Bool)

(assert (=> b!2963987 (= c!485944 ((_ is Union!9217) (regOne!18947 r!17423)))))

(declare-fun e!1865510 () Regex!9217)

(declare-fun e!1865504 () Regex!9217)

(assert (=> b!2963987 (= e!1865510 e!1865504)))

(declare-fun b!2963988 () Bool)

(declare-fun c!485948 () Bool)

(assert (=> b!2963988 (= c!485948 call!196800)))

(declare-fun e!1865502 () Regex!9217)

(assert (=> b!2963988 (= e!1865512 e!1865502)))

(declare-fun b!2963989 () Bool)

(assert (=> b!2963989 (= e!1865505 (Star!9217 lt!1034810))))

(declare-fun b!2963990 () Bool)

(declare-fun c!485952 () Bool)

(declare-fun e!1865506 () Bool)

(assert (=> b!2963990 (= c!485952 e!1865506)))

(declare-fun res!1222684 () Bool)

(assert (=> b!2963990 (=> res!1222684 e!1865506)))

(assert (=> b!2963990 (= res!1222684 call!196797)))

(assert (=> b!2963990 (= lt!1034810 call!196801)))

(assert (=> b!2963990 (= e!1865510 e!1865505)))

(declare-fun b!2963991 () Bool)

(assert (=> b!2963991 (= e!1865507 lt!1034807)))

(declare-fun b!2963992 () Bool)

(declare-fun e!1865514 () Regex!9217)

(assert (=> b!2963992 (= e!1865514 e!1865503)))

(declare-fun c!485949 () Bool)

(assert (=> b!2963992 (= c!485949 ((_ is ElementMatch!9217) (regOne!18947 r!17423)))))

(declare-fun b!2963993 () Bool)

(assert (=> b!2963993 (= e!1865514 EmptyLang!9217)))

(declare-fun b!2963994 () Bool)

(assert (=> b!2963994 (= e!1865509 lt!1034809)))

(declare-fun b!2963995 () Bool)

(assert (=> b!2963995 (= e!1865504 e!1865512)))

(declare-fun lt!1034806 () Regex!9217)

(assert (=> b!2963995 (= lt!1034806 call!196798)))

(declare-fun call!196802 () Regex!9217)

(assert (=> b!2963995 (= lt!1034805 call!196802)))

(declare-fun c!485945 () Bool)

(assert (=> b!2963995 (= c!485945 call!196796)))

(declare-fun b!2963996 () Bool)

(assert (=> b!2963996 (= e!1865502 lt!1034806)))

(declare-fun bm!196796 () Bool)

(assert (=> bm!196796 (= call!196802 call!196801)))

(declare-fun b!2963979 () Bool)

(assert (=> b!2963979 (= e!1865502 (Union!9217 lt!1034806 lt!1034805))))

(declare-fun d!842214 () Bool)

(assert (=> d!842214 e!1865501))

(declare-fun res!1222682 () Bool)

(assert (=> d!842214 (=> (not res!1222682) (not e!1865501))))

(assert (=> d!842214 (= res!1222682 (validRegex!3950 lt!1034808))))

(assert (=> d!842214 (= lt!1034808 e!1865514)))

(declare-fun c!485946 () Bool)

(assert (=> d!842214 (= c!485946 ((_ is EmptyLang!9217) (regOne!18947 r!17423)))))

(assert (=> d!842214 (validRegex!3950 (regOne!18947 r!17423))))

(assert (=> d!842214 (= (simplify!220 (regOne!18947 r!17423)) lt!1034808)))

(declare-fun b!2963997 () Bool)

(assert (=> b!2963997 (= e!1865503 (regOne!18947 r!17423))))

(declare-fun b!2963998 () Bool)

(assert (=> b!2963998 (= e!1865508 EmptyExpr!9217)))

(declare-fun b!2963999 () Bool)

(assert (=> b!2963999 (= e!1865504 e!1865511)))

(assert (=> b!2963999 (= lt!1034807 call!196802)))

(assert (=> b!2963999 (= lt!1034809 call!196798)))

(declare-fun res!1222683 () Bool)

(assert (=> b!2963999 (= res!1222683 call!196800)))

(assert (=> b!2963999 (=> res!1222683 e!1865513)))

(declare-fun c!485943 () Bool)

(assert (=> b!2963999 (= c!485943 e!1865513)))

(declare-fun b!2964000 () Bool)

(assert (=> b!2964000 (= e!1865507 (Concat!14538 lt!1034807 lt!1034809))))

(declare-fun b!2964001 () Bool)

(assert (=> b!2964001 (= e!1865508 e!1865510)))

(assert (=> b!2964001 (= c!485942 ((_ is Star!9217) (regOne!18947 r!17423)))))

(declare-fun bm!196797 () Bool)

(assert (=> bm!196797 (= call!196797 (isEmptyLang!333 (ite c!485942 lt!1034810 (ite c!485944 lt!1034806 lt!1034809))))))

(declare-fun b!2964002 () Bool)

(assert (=> b!2964002 (= e!1865506 call!196799)))

(assert (= (and d!842214 c!485946) b!2963993))

(assert (= (and d!842214 (not c!485946)) b!2963992))

(assert (= (and b!2963992 c!485949) b!2963997))

(assert (= (and b!2963992 (not c!485949)) b!2963984))

(assert (= (and b!2963984 c!485947) b!2963998))

(assert (= (and b!2963984 (not c!485947)) b!2964001))

(assert (= (and b!2964001 c!485942) b!2963990))

(assert (= (and b!2964001 (not c!485942)) b!2963987))

(assert (= (and b!2963990 (not res!1222684)) b!2964002))

(assert (= (and b!2963990 c!485952) b!2963986))

(assert (= (and b!2963990 (not c!485952)) b!2963989))

(assert (= (and b!2963987 c!485944) b!2963995))

(assert (= (and b!2963987 (not c!485944)) b!2963999))

(assert (= (and b!2963995 c!485945) b!2963978))

(assert (= (and b!2963995 (not c!485945)) b!2963988))

(assert (= (and b!2963988 c!485948) b!2963996))

(assert (= (and b!2963988 (not c!485948)) b!2963979))

(assert (= (and b!2963999 (not res!1222683)) b!2963982))

(assert (= (and b!2963999 c!485943) b!2963980))

(assert (= (and b!2963999 (not c!485943)) b!2963981))

(assert (= (and b!2963981 c!485950) b!2963994))

(assert (= (and b!2963981 (not c!485950)) b!2963985))

(assert (= (and b!2963985 c!485951) b!2963991))

(assert (= (and b!2963985 (not c!485951)) b!2964000))

(assert (= (or b!2963995 b!2963999) bm!196794))

(assert (= (or b!2963995 b!2963999) bm!196796))

(assert (= (or b!2963995 b!2963982) bm!196795))

(assert (= (or b!2963988 b!2963999) bm!196791))

(assert (= (or b!2964002 b!2963981) bm!196793))

(assert (= (or b!2963990 bm!196796) bm!196792))

(assert (= (or b!2963990 bm!196795) bm!196797))

(assert (= (and d!842214 res!1222682) b!2963983))

(declare-fun m!3335561 () Bool)

(assert (=> b!2963983 m!3335561))

(assert (=> b!2963983 m!3335403))

(declare-fun m!3335563 () Bool)

(assert (=> b!2963985 m!3335563))

(declare-fun m!3335565 () Bool)

(assert (=> bm!196794 m!3335565))

(declare-fun m!3335567 () Bool)

(assert (=> bm!196791 m!3335567))

(declare-fun m!3335569 () Bool)

(assert (=> d!842214 m!3335569))

(assert (=> d!842214 m!3335409))

(declare-fun m!3335571 () Bool)

(assert (=> bm!196797 m!3335571))

(declare-fun m!3335573 () Bool)

(assert (=> bm!196792 m!3335573))

(declare-fun m!3335575 () Bool)

(assert (=> bm!196793 m!3335575))

(assert (=> b!2963440 d!842214))

(declare-fun bm!196798 () Bool)

(declare-fun call!196804 () Bool)

(declare-fun c!485953 () Bool)

(assert (=> bm!196798 (= call!196804 (validRegex!3950 (ite c!485953 (regOne!18947 (simplify!220 r!17423)) (regTwo!18946 (simplify!220 r!17423)))))))

(declare-fun b!2964003 () Bool)

(declare-fun res!1222689 () Bool)

(declare-fun e!1865516 () Bool)

(assert (=> b!2964003 (=> (not res!1222689) (not e!1865516))))

(assert (=> b!2964003 (= res!1222689 call!196804)))

(declare-fun e!1865518 () Bool)

(assert (=> b!2964003 (= e!1865518 e!1865516)))

(declare-fun b!2964004 () Bool)

(declare-fun e!1865519 () Bool)

(declare-fun call!196803 () Bool)

(assert (=> b!2964004 (= e!1865519 call!196803)))

(declare-fun b!2964005 () Bool)

(declare-fun e!1865520 () Bool)

(declare-fun e!1865521 () Bool)

(assert (=> b!2964005 (= e!1865520 e!1865521)))

(declare-fun res!1222688 () Bool)

(assert (=> b!2964005 (=> (not res!1222688) (not e!1865521))))

(declare-fun call!196805 () Bool)

(assert (=> b!2964005 (= res!1222688 call!196805)))

(declare-fun b!2964006 () Bool)

(declare-fun res!1222686 () Bool)

(assert (=> b!2964006 (=> res!1222686 e!1865520)))

(assert (=> b!2964006 (= res!1222686 (not ((_ is Concat!14538) (simplify!220 r!17423))))))

(assert (=> b!2964006 (= e!1865518 e!1865520)))

(declare-fun bm!196799 () Bool)

(assert (=> bm!196799 (= call!196805 call!196803)))

(declare-fun b!2964007 () Bool)

(assert (=> b!2964007 (= e!1865516 call!196805)))

(declare-fun bm!196800 () Bool)

(declare-fun c!485954 () Bool)

(assert (=> bm!196800 (= call!196803 (validRegex!3950 (ite c!485954 (reg!9546 (simplify!220 r!17423)) (ite c!485953 (regTwo!18947 (simplify!220 r!17423)) (regOne!18946 (simplify!220 r!17423))))))))

(declare-fun d!842216 () Bool)

(declare-fun res!1222685 () Bool)

(declare-fun e!1865517 () Bool)

(assert (=> d!842216 (=> res!1222685 e!1865517)))

(assert (=> d!842216 (= res!1222685 ((_ is ElementMatch!9217) (simplify!220 r!17423)))))

(assert (=> d!842216 (= (validRegex!3950 (simplify!220 r!17423)) e!1865517)))

(declare-fun b!2964008 () Bool)

(assert (=> b!2964008 (= e!1865521 call!196804)))

(declare-fun b!2964009 () Bool)

(declare-fun e!1865515 () Bool)

(assert (=> b!2964009 (= e!1865515 e!1865519)))

(declare-fun res!1222687 () Bool)

(assert (=> b!2964009 (= res!1222687 (not (nullable!2942 (reg!9546 (simplify!220 r!17423)))))))

(assert (=> b!2964009 (=> (not res!1222687) (not e!1865519))))

(declare-fun b!2964010 () Bool)

(assert (=> b!2964010 (= e!1865517 e!1865515)))

(assert (=> b!2964010 (= c!485954 ((_ is Star!9217) (simplify!220 r!17423)))))

(declare-fun b!2964011 () Bool)

(assert (=> b!2964011 (= e!1865515 e!1865518)))

(assert (=> b!2964011 (= c!485953 ((_ is Union!9217) (simplify!220 r!17423)))))

(assert (= (and d!842216 (not res!1222685)) b!2964010))

(assert (= (and b!2964010 c!485954) b!2964009))

(assert (= (and b!2964010 (not c!485954)) b!2964011))

(assert (= (and b!2964009 res!1222687) b!2964004))

(assert (= (and b!2964011 c!485953) b!2964003))

(assert (= (and b!2964011 (not c!485953)) b!2964006))

(assert (= (and b!2964003 res!1222689) b!2964007))

(assert (= (and b!2964006 (not res!1222686)) b!2964005))

(assert (= (and b!2964005 res!1222688) b!2964008))

(assert (= (or b!2964003 b!2964008) bm!196798))

(assert (= (or b!2964007 b!2964005) bm!196799))

(assert (= (or b!2964004 bm!196799) bm!196800))

(declare-fun m!3335577 () Bool)

(assert (=> bm!196798 m!3335577))

(declare-fun m!3335579 () Bool)

(assert (=> bm!196800 m!3335579))

(declare-fun m!3335581 () Bool)

(assert (=> b!2964009 m!3335581))

(assert (=> b!2963444 d!842216))

(declare-fun lt!1034811 () Regex!9217)

(declare-fun bm!196801 () Bool)

(declare-fun lt!1034813 () Regex!9217)

(declare-fun call!196810 () Bool)

(declare-fun c!485957 () Bool)

(assert (=> bm!196801 (= call!196810 (isEmptyLang!333 (ite c!485957 lt!1034811 lt!1034813)))))

(declare-fun call!196811 () Regex!9217)

(declare-fun bm!196802 () Bool)

(declare-fun c!485955 () Bool)

(assert (=> bm!196802 (= call!196811 (simplify!220 (ite c!485955 (reg!9546 r!17423) (ite c!485957 (regTwo!18947 r!17423) (regOne!18946 r!17423)))))))

(declare-fun call!196809 () Bool)

(declare-fun lt!1034816 () Regex!9217)

(declare-fun bm!196803 () Bool)

(assert (=> bm!196803 (= call!196809 (isEmptyExpr!400 (ite c!485955 lt!1034816 lt!1034813)))))

(declare-fun bm!196804 () Bool)

(declare-fun call!196808 () Regex!9217)

(assert (=> bm!196804 (= call!196808 (simplify!220 (ite c!485957 (regOne!18947 r!17423) (regTwo!18946 r!17423))))))

(declare-fun b!2964012 () Bool)

(declare-fun e!1865533 () Regex!9217)

(assert (=> b!2964012 (= e!1865533 lt!1034811)))

(declare-fun b!2964014 () Bool)

(declare-fun e!1865532 () Regex!9217)

(assert (=> b!2964014 (= e!1865532 EmptyLang!9217)))

(declare-fun b!2964015 () Bool)

(declare-fun c!485963 () Bool)

(assert (=> b!2964015 (= c!485963 call!196809)))

(declare-fun e!1865530 () Regex!9217)

(assert (=> b!2964015 (= e!1865532 e!1865530)))

(declare-fun bm!196805 () Bool)

(declare-fun call!196806 () Bool)

(declare-fun call!196807 () Bool)

(assert (=> bm!196805 (= call!196806 call!196807)))

(declare-fun b!2964016 () Bool)

(declare-fun e!1865534 () Bool)

(assert (=> b!2964016 (= e!1865534 call!196806)))

(declare-fun b!2964017 () Bool)

(declare-fun e!1865522 () Bool)

(declare-fun lt!1034814 () Regex!9217)

(assert (=> b!2964017 (= e!1865522 (= (nullable!2942 lt!1034814) (nullable!2942 r!17423)))))

(declare-fun b!2964018 () Bool)

(declare-fun c!485960 () Bool)

(assert (=> b!2964018 (= c!485960 ((_ is EmptyExpr!9217) r!17423))))

(declare-fun e!1865524 () Regex!9217)

(declare-fun e!1865529 () Regex!9217)

(assert (=> b!2964018 (= e!1865524 e!1865529)))

(declare-fun b!2964019 () Bool)

(declare-fun e!1865528 () Regex!9217)

(assert (=> b!2964019 (= e!1865530 e!1865528)))

(declare-fun c!485964 () Bool)

(declare-fun lt!1034815 () Regex!9217)

(assert (=> b!2964019 (= c!485964 (isEmptyExpr!400 lt!1034815))))

(declare-fun b!2964020 () Bool)

(declare-fun e!1865526 () Regex!9217)

(assert (=> b!2964020 (= e!1865526 EmptyExpr!9217)))

(declare-fun b!2964021 () Bool)

(assert (=> b!2964021 (= c!485957 ((_ is Union!9217) r!17423))))

(declare-fun e!1865531 () Regex!9217)

(declare-fun e!1865525 () Regex!9217)

(assert (=> b!2964021 (= e!1865531 e!1865525)))

(declare-fun b!2964022 () Bool)

(declare-fun c!485961 () Bool)

(assert (=> b!2964022 (= c!485961 call!196810)))

(declare-fun e!1865523 () Regex!9217)

(assert (=> b!2964022 (= e!1865533 e!1865523)))

(declare-fun b!2964023 () Bool)

(assert (=> b!2964023 (= e!1865526 (Star!9217 lt!1034816))))

(declare-fun b!2964024 () Bool)

(declare-fun c!485965 () Bool)

(declare-fun e!1865527 () Bool)

(assert (=> b!2964024 (= c!485965 e!1865527)))

(declare-fun res!1222692 () Bool)

(assert (=> b!2964024 (=> res!1222692 e!1865527)))

(assert (=> b!2964024 (= res!1222692 call!196807)))

(assert (=> b!2964024 (= lt!1034816 call!196811)))

(assert (=> b!2964024 (= e!1865531 e!1865526)))

(declare-fun b!2964025 () Bool)

(assert (=> b!2964025 (= e!1865528 lt!1034813)))

(declare-fun b!2964026 () Bool)

(declare-fun e!1865535 () Regex!9217)

(assert (=> b!2964026 (= e!1865535 e!1865524)))

(declare-fun c!485962 () Bool)

(assert (=> b!2964026 (= c!485962 ((_ is ElementMatch!9217) r!17423))))

(declare-fun b!2964027 () Bool)

(assert (=> b!2964027 (= e!1865535 EmptyLang!9217)))

(declare-fun b!2964028 () Bool)

(assert (=> b!2964028 (= e!1865530 lt!1034815)))

(declare-fun b!2964029 () Bool)

(assert (=> b!2964029 (= e!1865525 e!1865533)))

(declare-fun lt!1034812 () Regex!9217)

(assert (=> b!2964029 (= lt!1034812 call!196808)))

(declare-fun call!196812 () Regex!9217)

(assert (=> b!2964029 (= lt!1034811 call!196812)))

(declare-fun c!485958 () Bool)

(assert (=> b!2964029 (= c!485958 call!196806)))

(declare-fun b!2964030 () Bool)

(assert (=> b!2964030 (= e!1865523 lt!1034812)))

(declare-fun bm!196806 () Bool)

(assert (=> bm!196806 (= call!196812 call!196811)))

(declare-fun b!2964013 () Bool)

(assert (=> b!2964013 (= e!1865523 (Union!9217 lt!1034812 lt!1034811))))

(declare-fun d!842218 () Bool)

(assert (=> d!842218 e!1865522))

(declare-fun res!1222690 () Bool)

(assert (=> d!842218 (=> (not res!1222690) (not e!1865522))))

(assert (=> d!842218 (= res!1222690 (validRegex!3950 lt!1034814))))

(assert (=> d!842218 (= lt!1034814 e!1865535)))

(declare-fun c!485959 () Bool)

(assert (=> d!842218 (= c!485959 ((_ is EmptyLang!9217) r!17423))))

(assert (=> d!842218 (validRegex!3950 r!17423)))

(assert (=> d!842218 (= (simplify!220 r!17423) lt!1034814)))

(declare-fun b!2964031 () Bool)

(assert (=> b!2964031 (= e!1865524 r!17423)))

(declare-fun b!2964032 () Bool)

(assert (=> b!2964032 (= e!1865529 EmptyExpr!9217)))

(declare-fun b!2964033 () Bool)

(assert (=> b!2964033 (= e!1865525 e!1865532)))

(assert (=> b!2964033 (= lt!1034813 call!196812)))

(assert (=> b!2964033 (= lt!1034815 call!196808)))

(declare-fun res!1222691 () Bool)

(assert (=> b!2964033 (= res!1222691 call!196810)))

(assert (=> b!2964033 (=> res!1222691 e!1865534)))

(declare-fun c!485956 () Bool)

(assert (=> b!2964033 (= c!485956 e!1865534)))

(declare-fun b!2964034 () Bool)

(assert (=> b!2964034 (= e!1865528 (Concat!14538 lt!1034813 lt!1034815))))

(declare-fun b!2964035 () Bool)

(assert (=> b!2964035 (= e!1865529 e!1865531)))

(assert (=> b!2964035 (= c!485955 ((_ is Star!9217) r!17423))))

(declare-fun bm!196807 () Bool)

(assert (=> bm!196807 (= call!196807 (isEmptyLang!333 (ite c!485955 lt!1034816 (ite c!485957 lt!1034812 lt!1034815))))))

(declare-fun b!2964036 () Bool)

(assert (=> b!2964036 (= e!1865527 call!196809)))

(assert (= (and d!842218 c!485959) b!2964027))

(assert (= (and d!842218 (not c!485959)) b!2964026))

(assert (= (and b!2964026 c!485962) b!2964031))

(assert (= (and b!2964026 (not c!485962)) b!2964018))

(assert (= (and b!2964018 c!485960) b!2964032))

(assert (= (and b!2964018 (not c!485960)) b!2964035))

(assert (= (and b!2964035 c!485955) b!2964024))

(assert (= (and b!2964035 (not c!485955)) b!2964021))

(assert (= (and b!2964024 (not res!1222692)) b!2964036))

(assert (= (and b!2964024 c!485965) b!2964020))

(assert (= (and b!2964024 (not c!485965)) b!2964023))

(assert (= (and b!2964021 c!485957) b!2964029))

(assert (= (and b!2964021 (not c!485957)) b!2964033))

(assert (= (and b!2964029 c!485958) b!2964012))

(assert (= (and b!2964029 (not c!485958)) b!2964022))

(assert (= (and b!2964022 c!485961) b!2964030))

(assert (= (and b!2964022 (not c!485961)) b!2964013))

(assert (= (and b!2964033 (not res!1222691)) b!2964016))

(assert (= (and b!2964033 c!485956) b!2964014))

(assert (= (and b!2964033 (not c!485956)) b!2964015))

(assert (= (and b!2964015 c!485963) b!2964028))

(assert (= (and b!2964015 (not c!485963)) b!2964019))

(assert (= (and b!2964019 c!485964) b!2964025))

(assert (= (and b!2964019 (not c!485964)) b!2964034))

(assert (= (or b!2964029 b!2964033) bm!196804))

(assert (= (or b!2964029 b!2964033) bm!196806))

(assert (= (or b!2964029 b!2964016) bm!196805))

(assert (= (or b!2964022 b!2964033) bm!196801))

(assert (= (or b!2964036 b!2964015) bm!196803))

(assert (= (or b!2964024 bm!196806) bm!196802))

(assert (= (or b!2964024 bm!196805) bm!196807))

(assert (= (and d!842218 res!1222690) b!2964017))

(declare-fun m!3335583 () Bool)

(assert (=> b!2964017 m!3335583))

(assert (=> b!2964017 m!3335527))

(declare-fun m!3335585 () Bool)

(assert (=> b!2964019 m!3335585))

(declare-fun m!3335587 () Bool)

(assert (=> bm!196804 m!3335587))

(declare-fun m!3335589 () Bool)

(assert (=> bm!196801 m!3335589))

(declare-fun m!3335591 () Bool)

(assert (=> d!842218 m!3335591))

(assert (=> d!842218 m!3335371))

(declare-fun m!3335593 () Bool)

(assert (=> bm!196807 m!3335593))

(declare-fun m!3335595 () Bool)

(assert (=> bm!196802 m!3335595))

(declare-fun m!3335597 () Bool)

(assert (=> bm!196803 m!3335597))

(assert (=> b!2963444 d!842218))

(declare-fun e!1865538 () Bool)

(assert (=> b!2963437 (= tp!945637 e!1865538)))

(declare-fun b!2964050 () Bool)

(declare-fun tp!945687 () Bool)

(declare-fun tp!945689 () Bool)

(assert (=> b!2964050 (= e!1865538 (and tp!945687 tp!945689))))

(declare-fun b!2964049 () Bool)

(declare-fun tp!945690 () Bool)

(assert (=> b!2964049 (= e!1865538 tp!945690)))

(declare-fun b!2964048 () Bool)

(declare-fun tp!945688 () Bool)

(declare-fun tp!945686 () Bool)

(assert (=> b!2964048 (= e!1865538 (and tp!945688 tp!945686))))

(declare-fun b!2964047 () Bool)

(assert (=> b!2964047 (= e!1865538 tp_is_empty!15997)))

(assert (= (and b!2963437 ((_ is ElementMatch!9217) (reg!9546 r!17423))) b!2964047))

(assert (= (and b!2963437 ((_ is Concat!14538) (reg!9546 r!17423))) b!2964048))

(assert (= (and b!2963437 ((_ is Star!9217) (reg!9546 r!17423))) b!2964049))

(assert (= (and b!2963437 ((_ is Union!9217) (reg!9546 r!17423))) b!2964050))

(declare-fun e!1865539 () Bool)

(assert (=> b!2963442 (= tp!945632 e!1865539)))

(declare-fun b!2964054 () Bool)

(declare-fun tp!945692 () Bool)

(declare-fun tp!945694 () Bool)

(assert (=> b!2964054 (= e!1865539 (and tp!945692 tp!945694))))

(declare-fun b!2964053 () Bool)

(declare-fun tp!945695 () Bool)

(assert (=> b!2964053 (= e!1865539 tp!945695)))

(declare-fun b!2964052 () Bool)

(declare-fun tp!945693 () Bool)

(declare-fun tp!945691 () Bool)

(assert (=> b!2964052 (= e!1865539 (and tp!945693 tp!945691))))

(declare-fun b!2964051 () Bool)

(assert (=> b!2964051 (= e!1865539 tp_is_empty!15997)))

(assert (= (and b!2963442 ((_ is ElementMatch!9217) (regOne!18946 r!17423))) b!2964051))

(assert (= (and b!2963442 ((_ is Concat!14538) (regOne!18946 r!17423))) b!2964052))

(assert (= (and b!2963442 ((_ is Star!9217) (regOne!18946 r!17423))) b!2964053))

(assert (= (and b!2963442 ((_ is Union!9217) (regOne!18946 r!17423))) b!2964054))

(declare-fun e!1865540 () Bool)

(assert (=> b!2963442 (= tp!945636 e!1865540)))

(declare-fun b!2964058 () Bool)

(declare-fun tp!945697 () Bool)

(declare-fun tp!945699 () Bool)

(assert (=> b!2964058 (= e!1865540 (and tp!945697 tp!945699))))

(declare-fun b!2964057 () Bool)

(declare-fun tp!945700 () Bool)

(assert (=> b!2964057 (= e!1865540 tp!945700)))

(declare-fun b!2964056 () Bool)

(declare-fun tp!945698 () Bool)

(declare-fun tp!945696 () Bool)

(assert (=> b!2964056 (= e!1865540 (and tp!945698 tp!945696))))

(declare-fun b!2964055 () Bool)

(assert (=> b!2964055 (= e!1865540 tp_is_empty!15997)))

(assert (= (and b!2963442 ((_ is ElementMatch!9217) (regTwo!18946 r!17423))) b!2964055))

(assert (= (and b!2963442 ((_ is Concat!14538) (regTwo!18946 r!17423))) b!2964056))

(assert (= (and b!2963442 ((_ is Star!9217) (regTwo!18946 r!17423))) b!2964057))

(assert (= (and b!2963442 ((_ is Union!9217) (regTwo!18946 r!17423))) b!2964058))

(declare-fun b!2964063 () Bool)

(declare-fun e!1865543 () Bool)

(declare-fun tp!945703 () Bool)

(assert (=> b!2964063 (= e!1865543 (and tp_is_empty!15997 tp!945703))))

(assert (=> b!2963438 (= tp!945633 e!1865543)))

(assert (= (and b!2963438 ((_ is Cons!34958) (t!234147 s!11993))) b!2964063))

(declare-fun e!1865544 () Bool)

(assert (=> b!2963439 (= tp!945634 e!1865544)))

(declare-fun b!2964067 () Bool)

(declare-fun tp!945705 () Bool)

(declare-fun tp!945707 () Bool)

(assert (=> b!2964067 (= e!1865544 (and tp!945705 tp!945707))))

(declare-fun b!2964066 () Bool)

(declare-fun tp!945708 () Bool)

(assert (=> b!2964066 (= e!1865544 tp!945708)))

(declare-fun b!2964065 () Bool)

(declare-fun tp!945706 () Bool)

(declare-fun tp!945704 () Bool)

(assert (=> b!2964065 (= e!1865544 (and tp!945706 tp!945704))))

(declare-fun b!2964064 () Bool)

(assert (=> b!2964064 (= e!1865544 tp_is_empty!15997)))

(assert (= (and b!2963439 ((_ is ElementMatch!9217) (regOne!18947 r!17423))) b!2964064))

(assert (= (and b!2963439 ((_ is Concat!14538) (regOne!18947 r!17423))) b!2964065))

(assert (= (and b!2963439 ((_ is Star!9217) (regOne!18947 r!17423))) b!2964066))

(assert (= (and b!2963439 ((_ is Union!9217) (regOne!18947 r!17423))) b!2964067))

(declare-fun e!1865545 () Bool)

(assert (=> b!2963439 (= tp!945635 e!1865545)))

(declare-fun b!2964071 () Bool)

(declare-fun tp!945710 () Bool)

(declare-fun tp!945712 () Bool)

(assert (=> b!2964071 (= e!1865545 (and tp!945710 tp!945712))))

(declare-fun b!2964070 () Bool)

(declare-fun tp!945713 () Bool)

(assert (=> b!2964070 (= e!1865545 tp!945713)))

(declare-fun b!2964069 () Bool)

(declare-fun tp!945711 () Bool)

(declare-fun tp!945709 () Bool)

(assert (=> b!2964069 (= e!1865545 (and tp!945711 tp!945709))))

(declare-fun b!2964068 () Bool)

(assert (=> b!2964068 (= e!1865545 tp_is_empty!15997)))

(assert (= (and b!2963439 ((_ is ElementMatch!9217) (regTwo!18947 r!17423))) b!2964068))

(assert (= (and b!2963439 ((_ is Concat!14538) (regTwo!18947 r!17423))) b!2964069))

(assert (= (and b!2963439 ((_ is Star!9217) (regTwo!18947 r!17423))) b!2964070))

(assert (= (and b!2963439 ((_ is Union!9217) (regTwo!18947 r!17423))) b!2964071))

(check-sat (not b!2964058) (not b!2964057) (not bm!196759) (not bm!196797) (not bm!196758) (not bm!196803) (not b!2964056) (not b!2963849) (not bm!196791) (not bm!196784) (not b!2963960) (not bm!196769) (not bm!196709) (not b!2963549) (not b!2963542) (not d!842218) (not b!2964049) (not b!2963528) (not b!2963534) (not b!2964009) (not b!2963545) (not b!2963847) (not b!2963817) (not b!2963544) (not b!2963543) (not b!2963958) (not d!842212) (not b!2964065) (not d!842214) (not b!2964050) (not bm!196800) (not b!2963531) (not bm!196794) (not b!2963854) (not b!2963853) (not bm!196804) (not d!842174) (not bm!196787) (not d!842202) (not b!2963530) (not b!2964052) (not b!2963900) (not d!842172) (not b!2964070) (not bm!196792) (not b!2963529) (not b!2963983) (not b!2963812) (not b!2963850) (not b!2964069) (not bm!196798) (not b!2964054) (not b!2963548) (not b!2964048) (not bm!196767) (not bm!196760) (not b!2964067) (not b!2963985) (not b!2964063) (not b!2964017) (not d!842176) (not bm!196801) (not b!2963848) (not bm!196807) tp_is_empty!15997 (not b!2963535) (not bm!196793) (not b!2964019) (not d!842204) (not bm!196785) (not b!2964071) (not b!2964066) (not bm!196708) (not bm!196786) (not bm!196790) (not b!2964053) (not bm!196802))
(check-sat)
