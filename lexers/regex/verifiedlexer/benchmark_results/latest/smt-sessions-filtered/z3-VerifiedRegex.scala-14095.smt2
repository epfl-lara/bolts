; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742310 () Bool)

(assert start!742310)

(declare-fun b!7835260 () Bool)

(declare-fun res!3116458 () Bool)

(declare-fun e!4633285 () Bool)

(assert (=> b!7835260 (=> (not res!3116458) (not e!4633285))))

(declare-datatypes ((C!42296 0))(
  ( (C!42297 (val!31588 Int)) )
))
(declare-datatypes ((Regex!20985 0))(
  ( (ElementMatch!20985 (c!1440924 C!42296)) (Concat!29830 (regOne!42482 Regex!20985) (regTwo!42482 Regex!20985)) (EmptyExpr!20985) (Star!20985 (reg!21314 Regex!20985)) (EmptyLang!20985) (Union!20985 (regOne!42483 Regex!20985) (regTwo!42483 Regex!20985)) )
))
(declare-fun r1!6261 () Regex!20985)

(declare-datatypes ((List!73822 0))(
  ( (Nil!73698) (Cons!73698 (h!80146 C!42296) (t!388557 List!73822)) )
))
(declare-fun s1!4101 () List!73822)

(declare-fun matchR!10441 (Regex!20985 List!73822) Bool)

(assert (=> b!7835260 (= res!3116458 (matchR!10441 r1!6261 s1!4101))))

(declare-fun b!7835261 () Bool)

(declare-fun e!4633284 () Bool)

(declare-fun tp!2317828 () Bool)

(declare-fun tp!2317825 () Bool)

(assert (=> b!7835261 (= e!4633284 (and tp!2317828 tp!2317825))))

(declare-fun b!7835262 () Bool)

(declare-fun res!3116456 () Bool)

(declare-fun e!4633276 () Bool)

(assert (=> b!7835262 (=> (not res!3116456) (not e!4633276))))

(declare-fun s1Rec!453 () List!73822)

(declare-fun isPrefix!6335 (List!73822 List!73822) Bool)

(assert (=> b!7835262 (= res!3116456 (isPrefix!6335 s1Rec!453 s1!4101))))

(declare-fun b!7835263 () Bool)

(declare-fun e!4633278 () Bool)

(declare-fun tp_is_empty!52325 () Bool)

(declare-fun tp!2317824 () Bool)

(assert (=> b!7835263 (= e!4633278 (and tp_is_empty!52325 tp!2317824))))

(declare-fun b!7835264 () Bool)

(declare-fun res!3116457 () Bool)

(assert (=> b!7835264 (=> (not res!3116457) (not e!4633285))))

(declare-fun e!4633281 () Bool)

(assert (=> b!7835264 (= res!3116457 e!4633281)))

(declare-fun res!3116459 () Bool)

(assert (=> b!7835264 (=> res!3116459 e!4633281)))

(assert (=> b!7835264 (= res!3116459 (not (matchR!10441 r1!6261 s1Rec!453)))))

(declare-fun b!7835265 () Bool)

(declare-fun e!4633287 () Bool)

(declare-fun tp!2317818 () Bool)

(assert (=> b!7835265 (= e!4633287 tp!2317818)))

(declare-fun b!7835266 () Bool)

(declare-fun tp!2317821 () Bool)

(assert (=> b!7835266 (= e!4633284 tp!2317821)))

(declare-fun b!7835267 () Bool)

(assert (=> b!7835267 (= e!4633284 tp_is_empty!52325)))

(declare-fun b!7835268 () Bool)

(declare-fun tp!2317831 () Bool)

(declare-fun tp!2317826 () Bool)

(assert (=> b!7835268 (= e!4633284 (and tp!2317831 tp!2317826))))

(declare-fun b!7835269 () Bool)

(assert (=> b!7835269 (= e!4633276 e!4633285)))

(declare-fun res!3116464 () Bool)

(assert (=> b!7835269 (=> (not res!3116464) (not e!4633285))))

(declare-fun lt!2677617 () List!73822)

(declare-fun s!14274 () List!73822)

(assert (=> b!7835269 (= res!3116464 (= lt!2677617 s!14274))))

(declare-fun s2Rec!453 () List!73822)

(declare-fun ++!18019 (List!73822 List!73822) List!73822)

(assert (=> b!7835269 (= lt!2677617 (++!18019 s1Rec!453 s2Rec!453))))

(declare-fun b!7835270 () Bool)

(declare-fun e!4633277 () Bool)

(declare-fun lt!2677614 () List!73822)

(assert (=> b!7835270 (= e!4633277 (isPrefix!6335 lt!2677614 s!14274))))

(declare-fun b!7835271 () Bool)

(declare-datatypes ((Unit!168772 0))(
  ( (Unit!168773) )
))
(declare-fun e!4633286 () Unit!168772)

(declare-fun Unit!168774 () Unit!168772)

(assert (=> b!7835271 (= e!4633286 Unit!168774)))

(declare-fun lt!2677622 () Unit!168772)

(declare-fun s2!3721 () List!73822)

(declare-fun lemmaSamePrefixThenSameSuffix!2919 (List!73822 List!73822 List!73822 List!73822 List!73822) Unit!168772)

(assert (=> b!7835271 (= lt!2677622 (lemmaSamePrefixThenSameSuffix!2919 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274))))

(assert (=> b!7835271 false))

(declare-fun b!7835272 () Bool)

(assert (=> b!7835272 (= e!4633287 tp_is_empty!52325)))

(declare-fun b!7835273 () Bool)

(declare-fun res!3116462 () Bool)

(declare-fun e!4633280 () Bool)

(assert (=> b!7835273 (=> (not res!3116462) (not e!4633280))))

(declare-fun r2!6199 () Regex!20985)

(declare-fun validRegex!11399 (Regex!20985) Bool)

(assert (=> b!7835273 (= res!3116462 (validRegex!11399 r2!6199))))

(declare-fun b!7835274 () Bool)

(declare-fun e!4633275 () Bool)

(declare-fun tp!2317817 () Bool)

(assert (=> b!7835274 (= e!4633275 (and tp_is_empty!52325 tp!2317817))))

(declare-fun b!7835275 () Bool)

(declare-fun tp!2317830 () Bool)

(declare-fun tp!2317820 () Bool)

(assert (=> b!7835275 (= e!4633287 (and tp!2317830 tp!2317820))))

(declare-fun b!7835276 () Bool)

(declare-fun e!4633274 () Bool)

(declare-fun tp!2317819 () Bool)

(assert (=> b!7835276 (= e!4633274 (and tp_is_empty!52325 tp!2317819))))

(declare-fun b!7835277 () Bool)

(declare-fun res!3116460 () Bool)

(assert (=> b!7835277 (=> (not res!3116460) (not e!4633285))))

(assert (=> b!7835277 (= res!3116460 (matchR!10441 r2!6199 s2!3721))))

(declare-fun b!7835278 () Bool)

(declare-fun e!4633279 () Bool)

(declare-fun tp!2317823 () Bool)

(assert (=> b!7835278 (= e!4633279 (and tp_is_empty!52325 tp!2317823))))

(declare-fun res!3116461 () Bool)

(assert (=> start!742310 (=> (not res!3116461) (not e!4633280))))

(assert (=> start!742310 (= res!3116461 (validRegex!11399 r1!6261))))

(assert (=> start!742310 e!4633280))

(assert (=> start!742310 e!4633287))

(declare-fun e!4633282 () Bool)

(assert (=> start!742310 e!4633282))

(assert (=> start!742310 e!4633274))

(assert (=> start!742310 e!4633275))

(assert (=> start!742310 e!4633278))

(assert (=> start!742310 e!4633284))

(assert (=> start!742310 e!4633279))

(declare-fun b!7835279 () Bool)

(declare-fun e!4633283 () Unit!168772)

(declare-fun Unit!168775 () Unit!168772)

(assert (=> b!7835279 (= e!4633283 Unit!168775)))

(declare-fun lt!2677620 () Unit!168772)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1551 (List!73822 List!73822 List!73822) Unit!168772)

(assert (=> b!7835279 (= lt!2677620 (lemmaIsPrefixSameLengthThenSameList!1551 s1!4101 s1Rec!453 s!14274))))

(assert (=> b!7835279 false))

(declare-fun b!7835280 () Bool)

(assert (=> b!7835280 (= e!4633281 (not (matchR!10441 r2!6199 s2Rec!453)))))

(declare-fun b!7835281 () Bool)

(assert (=> b!7835281 (= e!4633280 e!4633276)))

(declare-fun res!3116463 () Bool)

(assert (=> b!7835281 (=> (not res!3116463) (not e!4633276))))

(declare-fun lt!2677621 () List!73822)

(assert (=> b!7835281 (= res!3116463 (= lt!2677621 s!14274))))

(assert (=> b!7835281 (= lt!2677621 (++!18019 s1!4101 s2!3721))))

(declare-fun b!7835282 () Bool)

(declare-fun Unit!168776 () Unit!168772)

(assert (=> b!7835282 (= e!4633283 Unit!168776)))

(declare-fun b!7835283 () Bool)

(declare-fun Unit!168777 () Unit!168772)

(assert (=> b!7835283 (= e!4633286 Unit!168777)))

(declare-fun b!7835284 () Bool)

(declare-fun res!3116466 () Bool)

(assert (=> b!7835284 (=> (not res!3116466) (not e!4633285))))

(get-info :version)

(assert (=> b!7835284 (= res!3116466 (not ((_ is Nil!73698) s2Rec!453)))))

(declare-fun b!7835285 () Bool)

(assert (=> b!7835285 (= e!4633285 (not e!4633277))))

(declare-fun res!3116465 () Bool)

(assert (=> b!7835285 (=> res!3116465 e!4633277)))

(assert (=> b!7835285 (= res!3116465 (not (isPrefix!6335 s1!4101 s!14274)))))

(declare-fun lt!2677619 () Unit!168772)

(assert (=> b!7835285 (= lt!2677619 e!4633283)))

(declare-fun c!1440923 () Bool)

(declare-fun size!42775 (List!73822) Int)

(assert (=> b!7835285 (= c!1440923 (= (size!42775 s1Rec!453) (size!42775 s1!4101)))))

(declare-fun lt!2677616 () List!73822)

(assert (=> b!7835285 (isPrefix!6335 lt!2677614 lt!2677616)))

(declare-fun lt!2677611 () Unit!168772)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3781 (List!73822 List!73822) Unit!168772)

(assert (=> b!7835285 (= lt!2677611 (lemmaConcatTwoListThenFirstIsPrefix!3781 lt!2677614 (t!388557 s2Rec!453)))))

(assert (=> b!7835285 (= lt!2677616 s!14274)))

(assert (=> b!7835285 (= lt!2677616 (++!18019 lt!2677614 (t!388557 s2Rec!453)))))

(assert (=> b!7835285 (= lt!2677614 (++!18019 s1Rec!453 (Cons!73698 (h!80146 s2Rec!453) Nil!73698)))))

(declare-fun lt!2677612 () Unit!168772)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3446 (List!73822 C!42296 List!73822 List!73822) Unit!168772)

(assert (=> b!7835285 (= lt!2677612 (lemmaMoveElementToOtherListKeepsConcatEq!3446 s1Rec!453 (h!80146 s2Rec!453) (t!388557 s2Rec!453) s!14274))))

(declare-fun lt!2677618 () Unit!168772)

(assert (=> b!7835285 (= lt!2677618 e!4633286)))

(declare-fun c!1440922 () Bool)

(assert (=> b!7835285 (= c!1440922 (= s1Rec!453 s1!4101))))

(assert (=> b!7835285 (isPrefix!6335 s1Rec!453 lt!2677617)))

(declare-fun lt!2677613 () Unit!168772)

(assert (=> b!7835285 (= lt!2677613 (lemmaConcatTwoListThenFirstIsPrefix!3781 s1Rec!453 s2Rec!453))))

(assert (=> b!7835285 (isPrefix!6335 s1!4101 lt!2677621)))

(declare-fun lt!2677615 () Unit!168772)

(assert (=> b!7835285 (= lt!2677615 (lemmaConcatTwoListThenFirstIsPrefix!3781 s1!4101 s2!3721))))

(declare-fun b!7835286 () Bool)

(declare-fun tp!2317822 () Bool)

(assert (=> b!7835286 (= e!4633282 (and tp_is_empty!52325 tp!2317822))))

(declare-fun b!7835287 () Bool)

(declare-fun tp!2317827 () Bool)

(declare-fun tp!2317829 () Bool)

(assert (=> b!7835287 (= e!4633287 (and tp!2317827 tp!2317829))))

(assert (= (and start!742310 res!3116461) b!7835273))

(assert (= (and b!7835273 res!3116462) b!7835281))

(assert (= (and b!7835281 res!3116463) b!7835262))

(assert (= (and b!7835262 res!3116456) b!7835269))

(assert (= (and b!7835269 res!3116464) b!7835260))

(assert (= (and b!7835260 res!3116458) b!7835277))

(assert (= (and b!7835277 res!3116460) b!7835264))

(assert (= (and b!7835264 (not res!3116459)) b!7835280))

(assert (= (and b!7835264 res!3116457) b!7835284))

(assert (= (and b!7835284 res!3116466) b!7835285))

(assert (= (and b!7835285 c!1440922) b!7835271))

(assert (= (and b!7835285 (not c!1440922)) b!7835283))

(assert (= (and b!7835285 c!1440923) b!7835279))

(assert (= (and b!7835285 (not c!1440923)) b!7835282))

(assert (= (and b!7835285 (not res!3116465)) b!7835270))

(assert (= (and start!742310 ((_ is ElementMatch!20985) r2!6199)) b!7835272))

(assert (= (and start!742310 ((_ is Concat!29830) r2!6199)) b!7835287))

(assert (= (and start!742310 ((_ is Star!20985) r2!6199)) b!7835265))

(assert (= (and start!742310 ((_ is Union!20985) r2!6199)) b!7835275))

(assert (= (and start!742310 ((_ is Cons!73698) s1!4101)) b!7835286))

(assert (= (and start!742310 ((_ is Cons!73698) s2!3721)) b!7835276))

(assert (= (and start!742310 ((_ is Cons!73698) s2Rec!453)) b!7835274))

(assert (= (and start!742310 ((_ is Cons!73698) s!14274)) b!7835263))

(assert (= (and start!742310 ((_ is ElementMatch!20985) r1!6261)) b!7835267))

(assert (= (and start!742310 ((_ is Concat!29830) r1!6261)) b!7835268))

(assert (= (and start!742310 ((_ is Star!20985) r1!6261)) b!7835266))

(assert (= (and start!742310 ((_ is Union!20985) r1!6261)) b!7835261))

(assert (= (and start!742310 ((_ is Cons!73698) s1Rec!453)) b!7835278))

(declare-fun m!8250506 () Bool)

(assert (=> b!7835269 m!8250506))

(declare-fun m!8250508 () Bool)

(assert (=> b!7835277 m!8250508))

(declare-fun m!8250510 () Bool)

(assert (=> b!7835280 m!8250510))

(declare-fun m!8250512 () Bool)

(assert (=> b!7835285 m!8250512))

(declare-fun m!8250514 () Bool)

(assert (=> b!7835285 m!8250514))

(declare-fun m!8250516 () Bool)

(assert (=> b!7835285 m!8250516))

(declare-fun m!8250518 () Bool)

(assert (=> b!7835285 m!8250518))

(declare-fun m!8250520 () Bool)

(assert (=> b!7835285 m!8250520))

(declare-fun m!8250522 () Bool)

(assert (=> b!7835285 m!8250522))

(declare-fun m!8250524 () Bool)

(assert (=> b!7835285 m!8250524))

(declare-fun m!8250526 () Bool)

(assert (=> b!7835285 m!8250526))

(declare-fun m!8250528 () Bool)

(assert (=> b!7835285 m!8250528))

(declare-fun m!8250530 () Bool)

(assert (=> b!7835285 m!8250530))

(declare-fun m!8250532 () Bool)

(assert (=> b!7835285 m!8250532))

(declare-fun m!8250534 () Bool)

(assert (=> b!7835285 m!8250534))

(declare-fun m!8250536 () Bool)

(assert (=> b!7835262 m!8250536))

(declare-fun m!8250538 () Bool)

(assert (=> start!742310 m!8250538))

(declare-fun m!8250540 () Bool)

(assert (=> b!7835271 m!8250540))

(declare-fun m!8250542 () Bool)

(assert (=> b!7835270 m!8250542))

(declare-fun m!8250544 () Bool)

(assert (=> b!7835281 m!8250544))

(declare-fun m!8250546 () Bool)

(assert (=> b!7835279 m!8250546))

(declare-fun m!8250548 () Bool)

(assert (=> b!7835260 m!8250548))

(declare-fun m!8250550 () Bool)

(assert (=> b!7835273 m!8250550))

(declare-fun m!8250552 () Bool)

(assert (=> b!7835264 m!8250552))

(check-sat tp_is_empty!52325 (not b!7835271) (not b!7835262) (not b!7835287) (not b!7835263) (not b!7835286) (not b!7835273) (not b!7835266) (not b!7835269) (not b!7835270) (not b!7835268) (not start!742310) (not b!7835281) (not b!7835280) (not b!7835276) (not b!7835278) (not b!7835264) (not b!7835265) (not b!7835285) (not b!7835274) (not b!7835261) (not b!7835260) (not b!7835277) (not b!7835279) (not b!7835275))
(check-sat)
