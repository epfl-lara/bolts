; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742290 () Bool)

(assert start!742290)

(declare-fun b!7834446 () Bool)

(declare-fun e!4632880 () Bool)

(declare-fun e!4632884 () Bool)

(assert (=> b!7834446 (= e!4632880 (not e!4632884))))

(declare-fun res!3116123 () Bool)

(assert (=> b!7834446 (=> res!3116123 e!4632884)))

(declare-datatypes ((C!42276 0))(
  ( (C!42277 (val!31578 Int)) )
))
(declare-datatypes ((List!73812 0))(
  ( (Nil!73688) (Cons!73688 (h!80136 C!42276) (t!388547 List!73812)) )
))
(declare-fun s1Rec!453 () List!73812)

(declare-fun s1!4101 () List!73812)

(declare-fun size!42765 (List!73812) Int)

(assert (=> b!7834446 (= res!3116123 (not (= (size!42765 s1Rec!453) (size!42765 s1!4101))))))

(declare-fun lt!2677274 () List!73812)

(declare-fun lt!2677275 () List!73812)

(declare-fun isPrefix!6325 (List!73812 List!73812) Bool)

(assert (=> b!7834446 (isPrefix!6325 lt!2677274 lt!2677275)))

(declare-datatypes ((Unit!168726 0))(
  ( (Unit!168727) )
))
(declare-fun lt!2677277 () Unit!168726)

(declare-fun s2Rec!453 () List!73812)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3771 (List!73812 List!73812) Unit!168726)

(assert (=> b!7834446 (= lt!2677277 (lemmaConcatTwoListThenFirstIsPrefix!3771 lt!2677274 (t!388547 s2Rec!453)))))

(declare-fun s!14274 () List!73812)

(assert (=> b!7834446 (= lt!2677275 s!14274)))

(declare-fun ++!18009 (List!73812 List!73812) List!73812)

(assert (=> b!7834446 (= lt!2677275 (++!18009 lt!2677274 (t!388547 s2Rec!453)))))

(assert (=> b!7834446 (= lt!2677274 (++!18009 s1Rec!453 (Cons!73688 (h!80136 s2Rec!453) Nil!73688)))))

(declare-fun lt!2677276 () Unit!168726)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3436 (List!73812 C!42276 List!73812 List!73812) Unit!168726)

(assert (=> b!7834446 (= lt!2677276 (lemmaMoveElementToOtherListKeepsConcatEq!3436 s1Rec!453 (h!80136 s2Rec!453) (t!388547 s2Rec!453) s!14274))))

(declare-fun lt!2677273 () Unit!168726)

(declare-fun e!4632881 () Unit!168726)

(assert (=> b!7834446 (= lt!2677273 e!4632881)))

(declare-fun c!1440871 () Bool)

(assert (=> b!7834446 (= c!1440871 (= s1Rec!453 s1!4101))))

(declare-fun lt!2677279 () List!73812)

(assert (=> b!7834446 (isPrefix!6325 s1Rec!453 lt!2677279)))

(declare-fun lt!2677272 () Unit!168726)

(assert (=> b!7834446 (= lt!2677272 (lemmaConcatTwoListThenFirstIsPrefix!3771 s1Rec!453 s2Rec!453))))

(declare-fun lt!2677271 () List!73812)

(assert (=> b!7834446 (isPrefix!6325 s1!4101 lt!2677271)))

(declare-fun lt!2677280 () Unit!168726)

(declare-fun s2!3721 () List!73812)

(assert (=> b!7834446 (= lt!2677280 (lemmaConcatTwoListThenFirstIsPrefix!3771 s1!4101 s2!3721))))

(declare-fun b!7834447 () Bool)

(declare-fun e!4632879 () Bool)

(declare-datatypes ((Regex!20975 0))(
  ( (ElementMatch!20975 (c!1440872 C!42276)) (Concat!29820 (regOne!42462 Regex!20975) (regTwo!42462 Regex!20975)) (EmptyExpr!20975) (Star!20975 (reg!21304 Regex!20975)) (EmptyLang!20975) (Union!20975 (regOne!42463 Regex!20975) (regTwo!42463 Regex!20975)) )
))
(declare-fun r2!6199 () Regex!20975)

(declare-fun matchR!10431 (Regex!20975 List!73812) Bool)

(assert (=> b!7834447 (= e!4632879 (not (matchR!10431 r2!6199 s2Rec!453)))))

(declare-fun b!7834448 () Bool)

(declare-fun res!3116117 () Bool)

(declare-fun e!4632888 () Bool)

(assert (=> b!7834448 (=> (not res!3116117) (not e!4632888))))

(assert (=> b!7834448 (= res!3116117 (isPrefix!6325 s1Rec!453 s1!4101))))

(declare-fun b!7834449 () Bool)

(declare-fun e!4632887 () Bool)

(declare-fun tp!2317371 () Bool)

(declare-fun tp!2317375 () Bool)

(assert (=> b!7834449 (= e!4632887 (and tp!2317371 tp!2317375))))

(declare-fun b!7834450 () Bool)

(declare-fun e!4632883 () Bool)

(declare-fun tp_is_empty!52305 () Bool)

(declare-fun tp!2317377 () Bool)

(assert (=> b!7834450 (= e!4632883 (and tp_is_empty!52305 tp!2317377))))

(declare-fun b!7834451 () Bool)

(declare-fun res!3116124 () Bool)

(declare-fun e!4632885 () Bool)

(assert (=> b!7834451 (=> (not res!3116124) (not e!4632885))))

(declare-fun validRegex!11389 (Regex!20975) Bool)

(assert (=> b!7834451 (= res!3116124 (validRegex!11389 r2!6199))))

(declare-fun b!7834452 () Bool)

(assert (=> b!7834452 (= e!4632887 tp_is_empty!52305)))

(declare-fun b!7834453 () Bool)

(declare-fun res!3116118 () Bool)

(assert (=> b!7834453 (=> (not res!3116118) (not e!4632880))))

(assert (=> b!7834453 (= res!3116118 e!4632879)))

(declare-fun res!3116122 () Bool)

(assert (=> b!7834453 (=> res!3116122 e!4632879)))

(declare-fun r1!6261 () Regex!20975)

(assert (=> b!7834453 (= res!3116122 (not (matchR!10431 r1!6261 s1Rec!453)))))

(declare-fun b!7834454 () Bool)

(declare-fun e!4632891 () Bool)

(declare-fun tp!2317380 () Bool)

(assert (=> b!7834454 (= e!4632891 (and tp_is_empty!52305 tp!2317380))))

(declare-fun b!7834455 () Bool)

(declare-fun e!4632882 () Bool)

(declare-fun tp!2317376 () Bool)

(declare-fun tp!2317370 () Bool)

(assert (=> b!7834455 (= e!4632882 (and tp!2317376 tp!2317370))))

(declare-fun b!7834456 () Bool)

(assert (=> b!7834456 (= e!4632888 e!4632880)))

(declare-fun res!3116114 () Bool)

(assert (=> b!7834456 (=> (not res!3116114) (not e!4632880))))

(assert (=> b!7834456 (= res!3116114 (= lt!2677279 s!14274))))

(assert (=> b!7834456 (= lt!2677279 (++!18009 s1Rec!453 s2Rec!453))))

(declare-fun b!7834457 () Bool)

(declare-fun res!3116115 () Bool)

(assert (=> b!7834457 (=> (not res!3116115) (not e!4632880))))

(get-info :version)

(assert (=> b!7834457 (= res!3116115 (not ((_ is Nil!73688) s2Rec!453)))))

(declare-fun b!7834458 () Bool)

(declare-fun tp!2317381 () Bool)

(declare-fun tp!2317373 () Bool)

(assert (=> b!7834458 (= e!4632887 (and tp!2317381 tp!2317373))))

(declare-fun b!7834459 () Bool)

(declare-fun res!3116120 () Bool)

(assert (=> b!7834459 (=> (not res!3116120) (not e!4632880))))

(assert (=> b!7834459 (= res!3116120 (matchR!10431 r2!6199 s2!3721))))

(declare-fun b!7834460 () Bool)

(declare-fun tp!2317379 () Bool)

(declare-fun tp!2317378 () Bool)

(assert (=> b!7834460 (= e!4632882 (and tp!2317379 tp!2317378))))

(declare-fun b!7834461 () Bool)

(declare-fun Unit!168728 () Unit!168726)

(assert (=> b!7834461 (= e!4632881 Unit!168728)))

(declare-fun lt!2677278 () Unit!168726)

(declare-fun lemmaSamePrefixThenSameSuffix!2909 (List!73812 List!73812 List!73812 List!73812 List!73812) Unit!168726)

(assert (=> b!7834461 (= lt!2677278 (lemmaSamePrefixThenSameSuffix!2909 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274))))

(assert (=> b!7834461 false))

(declare-fun b!7834462 () Bool)

(assert (=> b!7834462 (= e!4632884 (isPrefix!6325 s1!4101 s!14274))))

(declare-fun b!7834463 () Bool)

(declare-fun tp!2317369 () Bool)

(assert (=> b!7834463 (= e!4632882 tp!2317369)))

(declare-fun b!7834464 () Bool)

(declare-fun res!3116119 () Bool)

(assert (=> b!7834464 (=> (not res!3116119) (not e!4632880))))

(assert (=> b!7834464 (= res!3116119 (matchR!10431 r1!6261 s1!4101))))

(declare-fun b!7834465 () Bool)

(declare-fun e!4632890 () Bool)

(declare-fun tp!2317368 () Bool)

(assert (=> b!7834465 (= e!4632890 (and tp_is_empty!52305 tp!2317368))))

(declare-fun b!7834466 () Bool)

(assert (=> b!7834466 (= e!4632882 tp_is_empty!52305)))

(declare-fun b!7834467 () Bool)

(declare-fun tp!2317372 () Bool)

(assert (=> b!7834467 (= e!4632887 tp!2317372)))

(declare-fun b!7834468 () Bool)

(declare-fun e!4632889 () Bool)

(declare-fun tp!2317367 () Bool)

(assert (=> b!7834468 (= e!4632889 (and tp_is_empty!52305 tp!2317367))))

(declare-fun b!7834469 () Bool)

(declare-fun e!4632886 () Bool)

(declare-fun tp!2317374 () Bool)

(assert (=> b!7834469 (= e!4632886 (and tp_is_empty!52305 tp!2317374))))

(declare-fun b!7834470 () Bool)

(assert (=> b!7834470 (= e!4632885 e!4632888)))

(declare-fun res!3116116 () Bool)

(assert (=> b!7834470 (=> (not res!3116116) (not e!4632888))))

(assert (=> b!7834470 (= res!3116116 (= lt!2677271 s!14274))))

(assert (=> b!7834470 (= lt!2677271 (++!18009 s1!4101 s2!3721))))

(declare-fun b!7834471 () Bool)

(declare-fun Unit!168729 () Unit!168726)

(assert (=> b!7834471 (= e!4632881 Unit!168729)))

(declare-fun res!3116121 () Bool)

(assert (=> start!742290 (=> (not res!3116121) (not e!4632885))))

(assert (=> start!742290 (= res!3116121 (validRegex!11389 r1!6261))))

(assert (=> start!742290 e!4632885))

(assert (=> start!742290 e!4632882))

(assert (=> start!742290 e!4632886))

(assert (=> start!742290 e!4632889))

(assert (=> start!742290 e!4632890))

(assert (=> start!742290 e!4632883))

(assert (=> start!742290 e!4632887))

(assert (=> start!742290 e!4632891))

(assert (= (and start!742290 res!3116121) b!7834451))

(assert (= (and b!7834451 res!3116124) b!7834470))

(assert (= (and b!7834470 res!3116116) b!7834448))

(assert (= (and b!7834448 res!3116117) b!7834456))

(assert (= (and b!7834456 res!3116114) b!7834464))

(assert (= (and b!7834464 res!3116119) b!7834459))

(assert (= (and b!7834459 res!3116120) b!7834453))

(assert (= (and b!7834453 (not res!3116122)) b!7834447))

(assert (= (and b!7834453 res!3116118) b!7834457))

(assert (= (and b!7834457 res!3116115) b!7834446))

(assert (= (and b!7834446 c!1440871) b!7834461))

(assert (= (and b!7834446 (not c!1440871)) b!7834471))

(assert (= (and b!7834446 (not res!3116123)) b!7834462))

(assert (= (and start!742290 ((_ is ElementMatch!20975) r2!6199)) b!7834466))

(assert (= (and start!742290 ((_ is Concat!29820) r2!6199)) b!7834455))

(assert (= (and start!742290 ((_ is Star!20975) r2!6199)) b!7834463))

(assert (= (and start!742290 ((_ is Union!20975) r2!6199)) b!7834460))

(assert (= (and start!742290 ((_ is Cons!73688) s1!4101)) b!7834469))

(assert (= (and start!742290 ((_ is Cons!73688) s2!3721)) b!7834468))

(assert (= (and start!742290 ((_ is Cons!73688) s2Rec!453)) b!7834465))

(assert (= (and start!742290 ((_ is Cons!73688) s!14274)) b!7834450))

(assert (= (and start!742290 ((_ is ElementMatch!20975) r1!6261)) b!7834452))

(assert (= (and start!742290 ((_ is Concat!29820) r1!6261)) b!7834449))

(assert (= (and start!742290 ((_ is Star!20975) r1!6261)) b!7834467))

(assert (= (and start!742290 ((_ is Union!20975) r1!6261)) b!7834458))

(assert (= (and start!742290 ((_ is Cons!73688) s1Rec!453)) b!7834454))

(declare-fun m!8250050 () Bool)

(assert (=> b!7834464 m!8250050))

(declare-fun m!8250052 () Bool)

(assert (=> start!742290 m!8250052))

(declare-fun m!8250054 () Bool)

(assert (=> b!7834447 m!8250054))

(declare-fun m!8250056 () Bool)

(assert (=> b!7834448 m!8250056))

(declare-fun m!8250058 () Bool)

(assert (=> b!7834456 m!8250058))

(declare-fun m!8250060 () Bool)

(assert (=> b!7834459 m!8250060))

(declare-fun m!8250062 () Bool)

(assert (=> b!7834446 m!8250062))

(declare-fun m!8250064 () Bool)

(assert (=> b!7834446 m!8250064))

(declare-fun m!8250066 () Bool)

(assert (=> b!7834446 m!8250066))

(declare-fun m!8250068 () Bool)

(assert (=> b!7834446 m!8250068))

(declare-fun m!8250070 () Bool)

(assert (=> b!7834446 m!8250070))

(declare-fun m!8250072 () Bool)

(assert (=> b!7834446 m!8250072))

(declare-fun m!8250074 () Bool)

(assert (=> b!7834446 m!8250074))

(declare-fun m!8250076 () Bool)

(assert (=> b!7834446 m!8250076))

(declare-fun m!8250078 () Bool)

(assert (=> b!7834446 m!8250078))

(declare-fun m!8250080 () Bool)

(assert (=> b!7834446 m!8250080))

(declare-fun m!8250082 () Bool)

(assert (=> b!7834446 m!8250082))

(declare-fun m!8250084 () Bool)

(assert (=> b!7834453 m!8250084))

(declare-fun m!8250086 () Bool)

(assert (=> b!7834461 m!8250086))

(declare-fun m!8250088 () Bool)

(assert (=> b!7834451 m!8250088))

(declare-fun m!8250090 () Bool)

(assert (=> b!7834470 m!8250090))

(declare-fun m!8250092 () Bool)

(assert (=> b!7834462 m!8250092))

(check-sat (not b!7834454) (not b!7834458) (not b!7834459) (not b!7834462) (not b!7834460) (not b!7834468) (not b!7834465) (not b!7834456) tp_is_empty!52305 (not b!7834446) (not start!742290) (not b!7834463) (not b!7834467) (not b!7834450) (not b!7834449) (not b!7834448) (not b!7834469) (not b!7834447) (not b!7834451) (not b!7834461) (not b!7834453) (not b!7834464) (not b!7834470) (not b!7834455))
(check-sat)
