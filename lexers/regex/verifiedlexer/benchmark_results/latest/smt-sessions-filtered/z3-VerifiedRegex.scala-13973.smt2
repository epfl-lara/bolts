; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739832 () Bool)

(assert start!739832)

(declare-fun b!7767269 () Bool)

(declare-fun e!4602529 () Bool)

(declare-fun e!4602530 () Bool)

(assert (=> b!7767269 (= e!4602529 e!4602530)))

(declare-fun res!3096483 () Bool)

(assert (=> b!7767269 (=> res!3096483 e!4602530)))

(declare-datatypes ((C!41808 0))(
  ( (C!41809 (val!31344 Int)) )
))
(declare-datatypes ((List!73582 0))(
  ( (Nil!73458) (Cons!73458 (h!79906 C!41808) (t!388317 List!73582)) )
))
(declare-fun s!14904 () List!73582)

(declare-fun isEmpty!42128 (List!73582) Bool)

(assert (=> b!7767269 (= res!3096483 (isEmpty!42128 s!14904))))

(declare-datatypes ((Regex!20741 0))(
  ( (ElementMatch!20741 (c!1431542 C!41808)) (Concat!29586 (regOne!41994 Regex!20741) (regTwo!41994 Regex!20741)) (EmptyExpr!20741) (Star!20741 (reg!21070 Regex!20741)) (EmptyLang!20741) (Union!20741 (regOne!41995 Regex!20741) (regTwo!41995 Regex!20741)) )
))
(declare-fun lt!2671103 () Regex!20741)

(declare-fun lt!2671106 () List!73582)

(declare-datatypes ((tuple2!69848 0))(
  ( (tuple2!69849 (_1!38227 List!73582) (_2!38227 List!73582)) )
))
(declare-fun lt!2671108 () tuple2!69848)

(declare-fun matchR!10203 (Regex!20741 List!73582) Bool)

(declare-fun ++!17897 (List!73582 List!73582) List!73582)

(assert (=> b!7767269 (matchR!10203 lt!2671103 (++!17897 lt!2671106 (_2!38227 lt!2671108)))))

(declare-fun r!25924 () Regex!20741)

(declare-fun lt!2671105 () Regex!20741)

(assert (=> b!7767269 (= lt!2671103 (Concat!29586 r!25924 lt!2671105))))

(declare-datatypes ((Unit!168444 0))(
  ( (Unit!168445) )
))
(declare-fun lt!2671102 () Unit!168444)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!420 (Regex!20741 Regex!20741 List!73582 List!73582) Unit!168444)

(assert (=> b!7767269 (= lt!2671102 (lemmaTwoRegexMatchThenConcatMatchesConcatString!420 r!25924 lt!2671105 lt!2671106 (_2!38227 lt!2671108)))))

(declare-fun b!7767270 () Bool)

(declare-fun e!4602531 () Bool)

(declare-fun tp!2281760 () Bool)

(assert (=> b!7767270 (= e!4602531 tp!2281760)))

(declare-fun b!7767271 () Bool)

(declare-fun e!4602526 () Bool)

(declare-fun e!4602528 () Bool)

(assert (=> b!7767271 (= e!4602526 e!4602528)))

(declare-fun res!3096481 () Bool)

(assert (=> b!7767271 (=> (not res!3096481) (not e!4602528))))

(declare-fun lt!2671104 () Regex!20741)

(declare-fun derivativeStep!6086 (Regex!20741 C!41808) Regex!20741)

(assert (=> b!7767271 (= res!3096481 (= (derivativeStep!6086 lt!2671105 (h!79906 s!14904)) (Concat!29586 lt!2671104 lt!2671105)))))

(assert (=> b!7767271 (= lt!2671104 (derivativeStep!6086 r!25924 (h!79906 s!14904)))))

(declare-fun b!7767272 () Bool)

(declare-fun tp_is_empty!51837 () Bool)

(assert (=> b!7767272 (= e!4602531 tp_is_empty!51837)))

(declare-fun b!7767273 () Bool)

(declare-fun res!3096488 () Bool)

(assert (=> b!7767273 (=> res!3096488 e!4602529)))

(assert (=> b!7767273 (= res!3096488 (not (matchR!10203 lt!2671105 (_2!38227 lt!2671108))))))

(declare-fun b!7767274 () Bool)

(declare-fun e!4602527 () Bool)

(declare-fun tp!2281765 () Bool)

(assert (=> b!7767274 (= e!4602527 (and tp_is_empty!51837 tp!2281765))))

(declare-fun b!7767275 () Bool)

(declare-fun tp!2281761 () Bool)

(declare-fun tp!2281762 () Bool)

(assert (=> b!7767275 (= e!4602531 (and tp!2281761 tp!2281762))))

(declare-fun b!7767276 () Bool)

(declare-fun res!3096485 () Bool)

(assert (=> b!7767276 (=> res!3096485 e!4602529)))

(assert (=> b!7767276 (= res!3096485 (not (matchR!10203 r!25924 lt!2671106)))))

(declare-fun res!3096486 () Bool)

(assert (=> start!739832 (=> (not res!3096486) (not e!4602526))))

(declare-fun validRegex!11155 (Regex!20741) Bool)

(assert (=> start!739832 (= res!3096486 (validRegex!11155 lt!2671105))))

(assert (=> start!739832 (= lt!2671105 (Star!20741 r!25924))))

(assert (=> start!739832 e!4602526))

(assert (=> start!739832 e!4602531))

(assert (=> start!739832 e!4602527))

(declare-fun b!7767277 () Bool)

(declare-fun tp!2281763 () Bool)

(declare-fun tp!2281764 () Bool)

(assert (=> b!7767277 (= e!4602531 (and tp!2281763 tp!2281764))))

(declare-fun b!7767278 () Bool)

(declare-fun res!3096484 () Bool)

(assert (=> b!7767278 (=> (not res!3096484) (not e!4602526))))

(assert (=> b!7767278 (= res!3096484 (matchR!10203 lt!2671105 s!14904))))

(declare-fun b!7767279 () Bool)

(assert (=> b!7767279 (= e!4602528 (not e!4602529))))

(declare-fun res!3096487 () Bool)

(assert (=> b!7767279 (=> res!3096487 e!4602529)))

(assert (=> b!7767279 (= res!3096487 (not (validRegex!11155 r!25924)))))

(assert (=> b!7767279 (= lt!2671106 (Cons!73458 (h!79906 s!14904) (_1!38227 lt!2671108)))))

(declare-datatypes ((Option!17718 0))(
  ( (None!17717) (Some!17717 (v!54852 tuple2!69848)) )
))
(declare-fun lt!2671107 () Option!17718)

(declare-fun get!26223 (Option!17718) tuple2!69848)

(assert (=> b!7767279 (= lt!2671108 (get!26223 lt!2671107))))

(declare-fun isDefined!14330 (Option!17718) Bool)

(assert (=> b!7767279 (isDefined!14330 lt!2671107)))

(declare-fun findConcatSeparation!3748 (Regex!20741 Regex!20741 List!73582 List!73582 List!73582) Option!17718)

(assert (=> b!7767279 (= lt!2671107 (findConcatSeparation!3748 lt!2671104 lt!2671105 Nil!73458 (t!388317 s!14904) (t!388317 s!14904)))))

(declare-fun lt!2671101 () Unit!168444)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!338 (Regex!20741 Regex!20741 List!73582) Unit!168444)

(assert (=> b!7767279 (= lt!2671101 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!338 lt!2671104 lt!2671105 (t!388317 s!14904)))))

(declare-fun b!7767280 () Bool)

(assert (=> b!7767280 (= e!4602530 (validRegex!11155 lt!2671103))))

(declare-fun b!7767281 () Bool)

(declare-fun res!3096482 () Bool)

(assert (=> b!7767281 (=> (not res!3096482) (not e!4602526))))

(get-info :version)

(assert (=> b!7767281 (= res!3096482 ((_ is Cons!73458) s!14904))))

(assert (= (and start!739832 res!3096486) b!7767278))

(assert (= (and b!7767278 res!3096484) b!7767281))

(assert (= (and b!7767281 res!3096482) b!7767271))

(assert (= (and b!7767271 res!3096481) b!7767279))

(assert (= (and b!7767279 (not res!3096487)) b!7767276))

(assert (= (and b!7767276 (not res!3096485)) b!7767273))

(assert (= (and b!7767273 (not res!3096488)) b!7767269))

(assert (= (and b!7767269 (not res!3096483)) b!7767280))

(assert (= (and start!739832 ((_ is ElementMatch!20741) r!25924)) b!7767272))

(assert (= (and start!739832 ((_ is Concat!29586) r!25924)) b!7767277))

(assert (= (and start!739832 ((_ is Star!20741) r!25924)) b!7767270))

(assert (= (and start!739832 ((_ is Union!20741) r!25924)) b!7767275))

(assert (= (and start!739832 ((_ is Cons!73458) s!14904)) b!7767274))

(declare-fun m!8223222 () Bool)

(assert (=> b!7767269 m!8223222))

(declare-fun m!8223224 () Bool)

(assert (=> b!7767269 m!8223224))

(assert (=> b!7767269 m!8223224))

(declare-fun m!8223226 () Bool)

(assert (=> b!7767269 m!8223226))

(declare-fun m!8223228 () Bool)

(assert (=> b!7767269 m!8223228))

(declare-fun m!8223230 () Bool)

(assert (=> b!7767273 m!8223230))

(declare-fun m!8223232 () Bool)

(assert (=> b!7767276 m!8223232))

(declare-fun m!8223234 () Bool)

(assert (=> b!7767278 m!8223234))

(declare-fun m!8223236 () Bool)

(assert (=> b!7767280 m!8223236))

(declare-fun m!8223238 () Bool)

(assert (=> b!7767271 m!8223238))

(declare-fun m!8223240 () Bool)

(assert (=> b!7767271 m!8223240))

(declare-fun m!8223242 () Bool)

(assert (=> start!739832 m!8223242))

(declare-fun m!8223244 () Bool)

(assert (=> b!7767279 m!8223244))

(declare-fun m!8223246 () Bool)

(assert (=> b!7767279 m!8223246))

(declare-fun m!8223248 () Bool)

(assert (=> b!7767279 m!8223248))

(declare-fun m!8223250 () Bool)

(assert (=> b!7767279 m!8223250))

(declare-fun m!8223252 () Bool)

(assert (=> b!7767279 m!8223252))

(check-sat (not b!7767275) (not b!7767273) tp_is_empty!51837 (not start!739832) (not b!7767276) (not b!7767269) (not b!7767277) (not b!7767280) (not b!7767274) (not b!7767270) (not b!7767279) (not b!7767271) (not b!7767278))
(check-sat)
(get-model)

(declare-fun b!7767300 () Bool)

(declare-fun e!4602546 () Bool)

(declare-fun e!4602550 () Bool)

(assert (=> b!7767300 (= e!4602546 e!4602550)))

(declare-fun c!1431547 () Bool)

(assert (=> b!7767300 (= c!1431547 ((_ is Star!20741) r!25924))))

(declare-fun b!7767301 () Bool)

(declare-fun res!3096500 () Bool)

(declare-fun e!4602549 () Bool)

(assert (=> b!7767301 (=> (not res!3096500) (not e!4602549))))

(declare-fun call!719645 () Bool)

(assert (=> b!7767301 (= res!3096500 call!719645)))

(declare-fun e!4602548 () Bool)

(assert (=> b!7767301 (= e!4602548 e!4602549)))

(declare-fun bm!719638 () Bool)

(declare-fun call!719644 () Bool)

(declare-fun c!1431548 () Bool)

(assert (=> bm!719638 (= call!719644 (validRegex!11155 (ite c!1431548 (regTwo!41995 r!25924) (regOne!41994 r!25924))))))

(declare-fun b!7767302 () Bool)

(assert (=> b!7767302 (= e!4602550 e!4602548)))

(assert (=> b!7767302 (= c!1431548 ((_ is Union!20741) r!25924))))

(declare-fun b!7767303 () Bool)

(declare-fun e!4602552 () Bool)

(assert (=> b!7767303 (= e!4602552 call!719645)))

(declare-fun bm!719639 () Bool)

(declare-fun call!719643 () Bool)

(assert (=> bm!719639 (= call!719645 call!719643)))

(declare-fun b!7767304 () Bool)

(declare-fun e!4602547 () Bool)

(assert (=> b!7767304 (= e!4602547 call!719643)))

(declare-fun b!7767305 () Bool)

(assert (=> b!7767305 (= e!4602549 call!719644)))

(declare-fun bm!719640 () Bool)

(assert (=> bm!719640 (= call!719643 (validRegex!11155 (ite c!1431547 (reg!21070 r!25924) (ite c!1431548 (regOne!41995 r!25924) (regTwo!41994 r!25924)))))))

(declare-fun b!7767306 () Bool)

(declare-fun e!4602551 () Bool)

(assert (=> b!7767306 (= e!4602551 e!4602552)))

(declare-fun res!3096499 () Bool)

(assert (=> b!7767306 (=> (not res!3096499) (not e!4602552))))

(assert (=> b!7767306 (= res!3096499 call!719644)))

(declare-fun d!2344026 () Bool)

(declare-fun res!3096503 () Bool)

(assert (=> d!2344026 (=> res!3096503 e!4602546)))

(assert (=> d!2344026 (= res!3096503 ((_ is ElementMatch!20741) r!25924))))

(assert (=> d!2344026 (= (validRegex!11155 r!25924) e!4602546)))

(declare-fun b!7767307 () Bool)

(declare-fun res!3096501 () Bool)

(assert (=> b!7767307 (=> res!3096501 e!4602551)))

(assert (=> b!7767307 (= res!3096501 (not ((_ is Concat!29586) r!25924)))))

(assert (=> b!7767307 (= e!4602548 e!4602551)))

(declare-fun b!7767308 () Bool)

(assert (=> b!7767308 (= e!4602550 e!4602547)))

(declare-fun res!3096502 () Bool)

(declare-fun nullable!9134 (Regex!20741) Bool)

(assert (=> b!7767308 (= res!3096502 (not (nullable!9134 (reg!21070 r!25924))))))

(assert (=> b!7767308 (=> (not res!3096502) (not e!4602547))))

(assert (= (and d!2344026 (not res!3096503)) b!7767300))

(assert (= (and b!7767300 c!1431547) b!7767308))

(assert (= (and b!7767300 (not c!1431547)) b!7767302))

(assert (= (and b!7767308 res!3096502) b!7767304))

(assert (= (and b!7767302 c!1431548) b!7767301))

(assert (= (and b!7767302 (not c!1431548)) b!7767307))

(assert (= (and b!7767301 res!3096500) b!7767305))

(assert (= (and b!7767307 (not res!3096501)) b!7767306))

(assert (= (and b!7767306 res!3096499) b!7767303))

(assert (= (or b!7767305 b!7767306) bm!719638))

(assert (= (or b!7767301 b!7767303) bm!719639))

(assert (= (or b!7767304 bm!719639) bm!719640))

(declare-fun m!8223254 () Bool)

(assert (=> bm!719638 m!8223254))

(declare-fun m!8223256 () Bool)

(assert (=> bm!719640 m!8223256))

(declare-fun m!8223258 () Bool)

(assert (=> b!7767308 m!8223258))

(assert (=> b!7767279 d!2344026))

(declare-fun b!7767327 () Bool)

(declare-fun e!4602565 () Option!17718)

(assert (=> b!7767327 (= e!4602565 (Some!17717 (tuple2!69849 Nil!73458 (t!388317 s!14904))))))

(declare-fun d!2344028 () Bool)

(declare-fun e!4602567 () Bool)

(assert (=> d!2344028 e!4602567))

(declare-fun res!3096514 () Bool)

(assert (=> d!2344028 (=> res!3096514 e!4602567)))

(declare-fun e!4602563 () Bool)

(assert (=> d!2344028 (= res!3096514 e!4602563)))

(declare-fun res!3096516 () Bool)

(assert (=> d!2344028 (=> (not res!3096516) (not e!4602563))))

(declare-fun lt!2671116 () Option!17718)

(assert (=> d!2344028 (= res!3096516 (isDefined!14330 lt!2671116))))

(assert (=> d!2344028 (= lt!2671116 e!4602565)))

(declare-fun c!1431554 () Bool)

(declare-fun e!4602566 () Bool)

(assert (=> d!2344028 (= c!1431554 e!4602566)))

(declare-fun res!3096515 () Bool)

(assert (=> d!2344028 (=> (not res!3096515) (not e!4602566))))

(assert (=> d!2344028 (= res!3096515 (matchR!10203 lt!2671104 Nil!73458))))

(assert (=> d!2344028 (validRegex!11155 lt!2671104)))

(assert (=> d!2344028 (= (findConcatSeparation!3748 lt!2671104 lt!2671105 Nil!73458 (t!388317 s!14904) (t!388317 s!14904)) lt!2671116)))

(declare-fun b!7767328 () Bool)

(declare-fun e!4602564 () Option!17718)

(assert (=> b!7767328 (= e!4602564 None!17717)))

(declare-fun b!7767329 () Bool)

(declare-fun res!3096517 () Bool)

(assert (=> b!7767329 (=> (not res!3096517) (not e!4602563))))

(assert (=> b!7767329 (= res!3096517 (matchR!10203 lt!2671105 (_2!38227 (get!26223 lt!2671116))))))

(declare-fun b!7767330 () Bool)

(assert (=> b!7767330 (= e!4602563 (= (++!17897 (_1!38227 (get!26223 lt!2671116)) (_2!38227 (get!26223 lt!2671116))) (t!388317 s!14904)))))

(declare-fun b!7767331 () Bool)

(assert (=> b!7767331 (= e!4602565 e!4602564)))

(declare-fun c!1431553 () Bool)

(assert (=> b!7767331 (= c!1431553 ((_ is Nil!73458) (t!388317 s!14904)))))

(declare-fun b!7767332 () Bool)

(assert (=> b!7767332 (= e!4602566 (matchR!10203 lt!2671105 (t!388317 s!14904)))))

(declare-fun b!7767333 () Bool)

(declare-fun lt!2671115 () Unit!168444)

(declare-fun lt!2671117 () Unit!168444)

(assert (=> b!7767333 (= lt!2671115 lt!2671117)))

(assert (=> b!7767333 (= (++!17897 (++!17897 Nil!73458 (Cons!73458 (h!79906 (t!388317 s!14904)) Nil!73458)) (t!388317 (t!388317 s!14904))) (t!388317 s!14904))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3380 (List!73582 C!41808 List!73582 List!73582) Unit!168444)

(assert (=> b!7767333 (= lt!2671117 (lemmaMoveElementToOtherListKeepsConcatEq!3380 Nil!73458 (h!79906 (t!388317 s!14904)) (t!388317 (t!388317 s!14904)) (t!388317 s!14904)))))

(assert (=> b!7767333 (= e!4602564 (findConcatSeparation!3748 lt!2671104 lt!2671105 (++!17897 Nil!73458 (Cons!73458 (h!79906 (t!388317 s!14904)) Nil!73458)) (t!388317 (t!388317 s!14904)) (t!388317 s!14904)))))

(declare-fun b!7767334 () Bool)

(declare-fun res!3096518 () Bool)

(assert (=> b!7767334 (=> (not res!3096518) (not e!4602563))))

(assert (=> b!7767334 (= res!3096518 (matchR!10203 lt!2671104 (_1!38227 (get!26223 lt!2671116))))))

(declare-fun b!7767335 () Bool)

(assert (=> b!7767335 (= e!4602567 (not (isDefined!14330 lt!2671116)))))

(assert (= (and d!2344028 res!3096515) b!7767332))

(assert (= (and d!2344028 c!1431554) b!7767327))

(assert (= (and d!2344028 (not c!1431554)) b!7767331))

(assert (= (and b!7767331 c!1431553) b!7767328))

(assert (= (and b!7767331 (not c!1431553)) b!7767333))

(assert (= (and d!2344028 res!3096516) b!7767334))

(assert (= (and b!7767334 res!3096518) b!7767329))

(assert (= (and b!7767329 res!3096517) b!7767330))

(assert (= (and d!2344028 (not res!3096514)) b!7767335))

(declare-fun m!8223260 () Bool)

(assert (=> b!7767332 m!8223260))

(declare-fun m!8223262 () Bool)

(assert (=> b!7767329 m!8223262))

(declare-fun m!8223264 () Bool)

(assert (=> b!7767329 m!8223264))

(declare-fun m!8223266 () Bool)

(assert (=> b!7767333 m!8223266))

(assert (=> b!7767333 m!8223266))

(declare-fun m!8223268 () Bool)

(assert (=> b!7767333 m!8223268))

(declare-fun m!8223270 () Bool)

(assert (=> b!7767333 m!8223270))

(assert (=> b!7767333 m!8223266))

(declare-fun m!8223272 () Bool)

(assert (=> b!7767333 m!8223272))

(assert (=> b!7767334 m!8223262))

(declare-fun m!8223274 () Bool)

(assert (=> b!7767334 m!8223274))

(declare-fun m!8223276 () Bool)

(assert (=> b!7767335 m!8223276))

(assert (=> b!7767330 m!8223262))

(declare-fun m!8223278 () Bool)

(assert (=> b!7767330 m!8223278))

(assert (=> d!2344028 m!8223276))

(declare-fun m!8223280 () Bool)

(assert (=> d!2344028 m!8223280))

(declare-fun m!8223282 () Bool)

(assert (=> d!2344028 m!8223282))

(assert (=> b!7767279 d!2344028))

(declare-fun d!2344032 () Bool)

(assert (=> d!2344032 (isDefined!14330 (findConcatSeparation!3748 lt!2671104 lt!2671105 Nil!73458 (t!388317 s!14904) (t!388317 s!14904)))))

(declare-fun lt!2671120 () Unit!168444)

(declare-fun choose!59465 (Regex!20741 Regex!20741 List!73582) Unit!168444)

(assert (=> d!2344032 (= lt!2671120 (choose!59465 lt!2671104 lt!2671105 (t!388317 s!14904)))))

(assert (=> d!2344032 (validRegex!11155 lt!2671104)))

(assert (=> d!2344032 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!338 lt!2671104 lt!2671105 (t!388317 s!14904)) lt!2671120)))

(declare-fun bs!1966059 () Bool)

(assert (= bs!1966059 d!2344032))

(assert (=> bs!1966059 m!8223246))

(assert (=> bs!1966059 m!8223246))

(declare-fun m!8223284 () Bool)

(assert (=> bs!1966059 m!8223284))

(declare-fun m!8223286 () Bool)

(assert (=> bs!1966059 m!8223286))

(assert (=> bs!1966059 m!8223282))

(assert (=> b!7767279 d!2344032))

(declare-fun d!2344034 () Bool)

(assert (=> d!2344034 (= (get!26223 lt!2671107) (v!54852 lt!2671107))))

(assert (=> b!7767279 d!2344034))

(declare-fun d!2344036 () Bool)

(declare-fun isEmpty!42129 (Option!17718) Bool)

(assert (=> d!2344036 (= (isDefined!14330 lt!2671107) (not (isEmpty!42129 lt!2671107)))))

(declare-fun bs!1966060 () Bool)

(assert (= bs!1966060 d!2344036))

(declare-fun m!8223288 () Bool)

(assert (=> bs!1966060 m!8223288))

(assert (=> b!7767279 d!2344036))

(declare-fun b!7767336 () Bool)

(declare-fun e!4602568 () Bool)

(declare-fun e!4602572 () Bool)

(assert (=> b!7767336 (= e!4602568 e!4602572)))

(declare-fun c!1431555 () Bool)

(assert (=> b!7767336 (= c!1431555 ((_ is Star!20741) lt!2671105))))

(declare-fun b!7767337 () Bool)

(declare-fun res!3096520 () Bool)

(declare-fun e!4602571 () Bool)

(assert (=> b!7767337 (=> (not res!3096520) (not e!4602571))))

(declare-fun call!719648 () Bool)

(assert (=> b!7767337 (= res!3096520 call!719648)))

(declare-fun e!4602570 () Bool)

(assert (=> b!7767337 (= e!4602570 e!4602571)))

(declare-fun bm!719641 () Bool)

(declare-fun call!719647 () Bool)

(declare-fun c!1431556 () Bool)

(assert (=> bm!719641 (= call!719647 (validRegex!11155 (ite c!1431556 (regTwo!41995 lt!2671105) (regOne!41994 lt!2671105))))))

(declare-fun b!7767338 () Bool)

(assert (=> b!7767338 (= e!4602572 e!4602570)))

(assert (=> b!7767338 (= c!1431556 ((_ is Union!20741) lt!2671105))))

(declare-fun b!7767339 () Bool)

(declare-fun e!4602574 () Bool)

(assert (=> b!7767339 (= e!4602574 call!719648)))

(declare-fun bm!719642 () Bool)

(declare-fun call!719646 () Bool)

(assert (=> bm!719642 (= call!719648 call!719646)))

(declare-fun b!7767340 () Bool)

(declare-fun e!4602569 () Bool)

(assert (=> b!7767340 (= e!4602569 call!719646)))

(declare-fun b!7767341 () Bool)

(assert (=> b!7767341 (= e!4602571 call!719647)))

(declare-fun bm!719643 () Bool)

(assert (=> bm!719643 (= call!719646 (validRegex!11155 (ite c!1431555 (reg!21070 lt!2671105) (ite c!1431556 (regOne!41995 lt!2671105) (regTwo!41994 lt!2671105)))))))

(declare-fun b!7767342 () Bool)

(declare-fun e!4602573 () Bool)

(assert (=> b!7767342 (= e!4602573 e!4602574)))

(declare-fun res!3096519 () Bool)

(assert (=> b!7767342 (=> (not res!3096519) (not e!4602574))))

(assert (=> b!7767342 (= res!3096519 call!719647)))

(declare-fun d!2344038 () Bool)

(declare-fun res!3096523 () Bool)

(assert (=> d!2344038 (=> res!3096523 e!4602568)))

(assert (=> d!2344038 (= res!3096523 ((_ is ElementMatch!20741) lt!2671105))))

(assert (=> d!2344038 (= (validRegex!11155 lt!2671105) e!4602568)))

(declare-fun b!7767343 () Bool)

(declare-fun res!3096521 () Bool)

(assert (=> b!7767343 (=> res!3096521 e!4602573)))

(assert (=> b!7767343 (= res!3096521 (not ((_ is Concat!29586) lt!2671105)))))

(assert (=> b!7767343 (= e!4602570 e!4602573)))

(declare-fun b!7767344 () Bool)

(assert (=> b!7767344 (= e!4602572 e!4602569)))

(declare-fun res!3096522 () Bool)

(assert (=> b!7767344 (= res!3096522 (not (nullable!9134 (reg!21070 lt!2671105))))))

(assert (=> b!7767344 (=> (not res!3096522) (not e!4602569))))

(assert (= (and d!2344038 (not res!3096523)) b!7767336))

(assert (= (and b!7767336 c!1431555) b!7767344))

(assert (= (and b!7767336 (not c!1431555)) b!7767338))

(assert (= (and b!7767344 res!3096522) b!7767340))

(assert (= (and b!7767338 c!1431556) b!7767337))

(assert (= (and b!7767338 (not c!1431556)) b!7767343))

(assert (= (and b!7767337 res!3096520) b!7767341))

(assert (= (and b!7767343 (not res!3096521)) b!7767342))

(assert (= (and b!7767342 res!3096519) b!7767339))

(assert (= (or b!7767341 b!7767342) bm!719641))

(assert (= (or b!7767337 b!7767339) bm!719642))

(assert (= (or b!7767340 bm!719642) bm!719643))

(declare-fun m!8223290 () Bool)

(assert (=> bm!719641 m!8223290))

(declare-fun m!8223292 () Bool)

(assert (=> bm!719643 m!8223292))

(declare-fun m!8223294 () Bool)

(assert (=> b!7767344 m!8223294))

(assert (=> start!739832 d!2344038))

(declare-fun bm!719648 () Bool)

(declare-fun call!719653 () Bool)

(assert (=> bm!719648 (= call!719653 (isEmpty!42128 (_2!38227 lt!2671108)))))

(declare-fun b!7767401 () Bool)

(declare-fun e!4602603 () Bool)

(declare-fun head!15872 (List!73582) C!41808)

(declare-fun tail!15412 (List!73582) List!73582)

(assert (=> b!7767401 (= e!4602603 (matchR!10203 (derivativeStep!6086 lt!2671105 (head!15872 (_2!38227 lt!2671108))) (tail!15412 (_2!38227 lt!2671108))))))

(declare-fun b!7767402 () Bool)

(declare-fun e!4602607 () Bool)

(declare-fun lt!2671125 () Bool)

(assert (=> b!7767402 (= e!4602607 (not lt!2671125))))

(declare-fun d!2344040 () Bool)

(declare-fun e!4602604 () Bool)

(assert (=> d!2344040 e!4602604))

(declare-fun c!1431571 () Bool)

(assert (=> d!2344040 (= c!1431571 ((_ is EmptyExpr!20741) lt!2671105))))

(assert (=> d!2344040 (= lt!2671125 e!4602603)))

(declare-fun c!1431569 () Bool)

(assert (=> d!2344040 (= c!1431569 (isEmpty!42128 (_2!38227 lt!2671108)))))

(assert (=> d!2344040 (validRegex!11155 lt!2671105)))

(assert (=> d!2344040 (= (matchR!10203 lt!2671105 (_2!38227 lt!2671108)) lt!2671125)))

(declare-fun b!7767403 () Bool)

(assert (=> b!7767403 (= e!4602603 (nullable!9134 lt!2671105))))

(declare-fun b!7767404 () Bool)

(declare-fun e!4602608 () Bool)

(assert (=> b!7767404 (= e!4602608 (not (= (head!15872 (_2!38227 lt!2671108)) (c!1431542 lt!2671105))))))

(declare-fun b!7767405 () Bool)

(declare-fun e!4602605 () Bool)

(assert (=> b!7767405 (= e!4602605 (= (head!15872 (_2!38227 lt!2671108)) (c!1431542 lt!2671105)))))

(declare-fun b!7767406 () Bool)

(assert (=> b!7767406 (= e!4602604 (= lt!2671125 call!719653))))

(declare-fun b!7767407 () Bool)

(declare-fun res!3096558 () Bool)

(assert (=> b!7767407 (=> (not res!3096558) (not e!4602605))))

(assert (=> b!7767407 (= res!3096558 (not call!719653))))

(declare-fun b!7767408 () Bool)

(declare-fun e!4602606 () Bool)

(declare-fun e!4602609 () Bool)

(assert (=> b!7767408 (= e!4602606 e!4602609)))

(declare-fun res!3096562 () Bool)

(assert (=> b!7767408 (=> (not res!3096562) (not e!4602609))))

(assert (=> b!7767408 (= res!3096562 (not lt!2671125))))

(declare-fun b!7767409 () Bool)

(declare-fun res!3096557 () Bool)

(assert (=> b!7767409 (=> res!3096557 e!4602606)))

(assert (=> b!7767409 (= res!3096557 (not ((_ is ElementMatch!20741) lt!2671105)))))

(assert (=> b!7767409 (= e!4602607 e!4602606)))

(declare-fun b!7767410 () Bool)

(declare-fun res!3096563 () Bool)

(assert (=> b!7767410 (=> (not res!3096563) (not e!4602605))))

(assert (=> b!7767410 (= res!3096563 (isEmpty!42128 (tail!15412 (_2!38227 lt!2671108))))))

(declare-fun b!7767411 () Bool)

(assert (=> b!7767411 (= e!4602609 e!4602608)))

(declare-fun res!3096559 () Bool)

(assert (=> b!7767411 (=> res!3096559 e!4602608)))

(assert (=> b!7767411 (= res!3096559 call!719653)))

(declare-fun b!7767412 () Bool)

(declare-fun res!3096560 () Bool)

(assert (=> b!7767412 (=> res!3096560 e!4602608)))

(assert (=> b!7767412 (= res!3096560 (not (isEmpty!42128 (tail!15412 (_2!38227 lt!2671108)))))))

(declare-fun b!7767413 () Bool)

(declare-fun res!3096556 () Bool)

(assert (=> b!7767413 (=> res!3096556 e!4602606)))

(assert (=> b!7767413 (= res!3096556 e!4602605)))

(declare-fun res!3096561 () Bool)

(assert (=> b!7767413 (=> (not res!3096561) (not e!4602605))))

(assert (=> b!7767413 (= res!3096561 lt!2671125)))

(declare-fun b!7767414 () Bool)

(assert (=> b!7767414 (= e!4602604 e!4602607)))

(declare-fun c!1431570 () Bool)

(assert (=> b!7767414 (= c!1431570 ((_ is EmptyLang!20741) lt!2671105))))

(assert (= (and d!2344040 c!1431569) b!7767403))

(assert (= (and d!2344040 (not c!1431569)) b!7767401))

(assert (= (and d!2344040 c!1431571) b!7767406))

(assert (= (and d!2344040 (not c!1431571)) b!7767414))

(assert (= (and b!7767414 c!1431570) b!7767402))

(assert (= (and b!7767414 (not c!1431570)) b!7767409))

(assert (= (and b!7767409 (not res!3096557)) b!7767413))

(assert (= (and b!7767413 res!3096561) b!7767407))

(assert (= (and b!7767407 res!3096558) b!7767410))

(assert (= (and b!7767410 res!3096563) b!7767405))

(assert (= (and b!7767413 (not res!3096556)) b!7767408))

(assert (= (and b!7767408 res!3096562) b!7767411))

(assert (= (and b!7767411 (not res!3096559)) b!7767412))

(assert (= (and b!7767412 (not res!3096560)) b!7767404))

(assert (= (or b!7767406 b!7767407 b!7767411) bm!719648))

(declare-fun m!8223296 () Bool)

(assert (=> bm!719648 m!8223296))

(declare-fun m!8223298 () Bool)

(assert (=> b!7767412 m!8223298))

(assert (=> b!7767412 m!8223298))

(declare-fun m!8223300 () Bool)

(assert (=> b!7767412 m!8223300))

(declare-fun m!8223302 () Bool)

(assert (=> b!7767404 m!8223302))

(assert (=> b!7767410 m!8223298))

(assert (=> b!7767410 m!8223298))

(assert (=> b!7767410 m!8223300))

(declare-fun m!8223304 () Bool)

(assert (=> b!7767403 m!8223304))

(assert (=> b!7767405 m!8223302))

(assert (=> d!2344040 m!8223296))

(assert (=> d!2344040 m!8223242))

(assert (=> b!7767401 m!8223302))

(assert (=> b!7767401 m!8223302))

(declare-fun m!8223306 () Bool)

(assert (=> b!7767401 m!8223306))

(assert (=> b!7767401 m!8223298))

(assert (=> b!7767401 m!8223306))

(assert (=> b!7767401 m!8223298))

(declare-fun m!8223308 () Bool)

(assert (=> b!7767401 m!8223308))

(assert (=> b!7767273 d!2344040))

(declare-fun b!7767415 () Bool)

(declare-fun e!4602610 () Bool)

(declare-fun e!4602614 () Bool)

(assert (=> b!7767415 (= e!4602610 e!4602614)))

(declare-fun c!1431572 () Bool)

(assert (=> b!7767415 (= c!1431572 ((_ is Star!20741) lt!2671103))))

(declare-fun b!7767416 () Bool)

(declare-fun res!3096565 () Bool)

(declare-fun e!4602613 () Bool)

(assert (=> b!7767416 (=> (not res!3096565) (not e!4602613))))

(declare-fun call!719656 () Bool)

(assert (=> b!7767416 (= res!3096565 call!719656)))

(declare-fun e!4602612 () Bool)

(assert (=> b!7767416 (= e!4602612 e!4602613)))

(declare-fun bm!719649 () Bool)

(declare-fun call!719655 () Bool)

(declare-fun c!1431573 () Bool)

(assert (=> bm!719649 (= call!719655 (validRegex!11155 (ite c!1431573 (regTwo!41995 lt!2671103) (regOne!41994 lt!2671103))))))

(declare-fun b!7767417 () Bool)

(assert (=> b!7767417 (= e!4602614 e!4602612)))

(assert (=> b!7767417 (= c!1431573 ((_ is Union!20741) lt!2671103))))

(declare-fun b!7767418 () Bool)

(declare-fun e!4602616 () Bool)

(assert (=> b!7767418 (= e!4602616 call!719656)))

(declare-fun bm!719650 () Bool)

(declare-fun call!719654 () Bool)

(assert (=> bm!719650 (= call!719656 call!719654)))

(declare-fun b!7767419 () Bool)

(declare-fun e!4602611 () Bool)

(assert (=> b!7767419 (= e!4602611 call!719654)))

(declare-fun b!7767420 () Bool)

(assert (=> b!7767420 (= e!4602613 call!719655)))

(declare-fun bm!719651 () Bool)

(assert (=> bm!719651 (= call!719654 (validRegex!11155 (ite c!1431572 (reg!21070 lt!2671103) (ite c!1431573 (regOne!41995 lt!2671103) (regTwo!41994 lt!2671103)))))))

(declare-fun b!7767421 () Bool)

(declare-fun e!4602615 () Bool)

(assert (=> b!7767421 (= e!4602615 e!4602616)))

(declare-fun res!3096564 () Bool)

(assert (=> b!7767421 (=> (not res!3096564) (not e!4602616))))

(assert (=> b!7767421 (= res!3096564 call!719655)))

(declare-fun d!2344042 () Bool)

(declare-fun res!3096568 () Bool)

(assert (=> d!2344042 (=> res!3096568 e!4602610)))

(assert (=> d!2344042 (= res!3096568 ((_ is ElementMatch!20741) lt!2671103))))

(assert (=> d!2344042 (= (validRegex!11155 lt!2671103) e!4602610)))

(declare-fun b!7767422 () Bool)

(declare-fun res!3096566 () Bool)

(assert (=> b!7767422 (=> res!3096566 e!4602615)))

(assert (=> b!7767422 (= res!3096566 (not ((_ is Concat!29586) lt!2671103)))))

(assert (=> b!7767422 (= e!4602612 e!4602615)))

(declare-fun b!7767423 () Bool)

(assert (=> b!7767423 (= e!4602614 e!4602611)))

(declare-fun res!3096567 () Bool)

(assert (=> b!7767423 (= res!3096567 (not (nullable!9134 (reg!21070 lt!2671103))))))

(assert (=> b!7767423 (=> (not res!3096567) (not e!4602611))))

(assert (= (and d!2344042 (not res!3096568)) b!7767415))

(assert (= (and b!7767415 c!1431572) b!7767423))

(assert (= (and b!7767415 (not c!1431572)) b!7767417))

(assert (= (and b!7767423 res!3096567) b!7767419))

(assert (= (and b!7767417 c!1431573) b!7767416))

(assert (= (and b!7767417 (not c!1431573)) b!7767422))

(assert (= (and b!7767416 res!3096565) b!7767420))

(assert (= (and b!7767422 (not res!3096566)) b!7767421))

(assert (= (and b!7767421 res!3096564) b!7767418))

(assert (= (or b!7767420 b!7767421) bm!719649))

(assert (= (or b!7767416 b!7767418) bm!719650))

(assert (= (or b!7767419 bm!719650) bm!719651))

(declare-fun m!8223310 () Bool)

(assert (=> bm!719649 m!8223310))

(declare-fun m!8223312 () Bool)

(assert (=> bm!719651 m!8223312))

(declare-fun m!8223314 () Bool)

(assert (=> b!7767423 m!8223314))

(assert (=> b!7767280 d!2344042))

(declare-fun d!2344044 () Bool)

(assert (=> d!2344044 (= (isEmpty!42128 s!14904) ((_ is Nil!73458) s!14904))))

(assert (=> b!7767269 d!2344044))

(declare-fun bm!719652 () Bool)

(declare-fun call!719657 () Bool)

(assert (=> bm!719652 (= call!719657 (isEmpty!42128 (++!17897 lt!2671106 (_2!38227 lt!2671108))))))

(declare-fun e!4602617 () Bool)

(declare-fun b!7767424 () Bool)

(assert (=> b!7767424 (= e!4602617 (matchR!10203 (derivativeStep!6086 lt!2671103 (head!15872 (++!17897 lt!2671106 (_2!38227 lt!2671108)))) (tail!15412 (++!17897 lt!2671106 (_2!38227 lt!2671108)))))))

(declare-fun b!7767425 () Bool)

(declare-fun e!4602621 () Bool)

(declare-fun lt!2671126 () Bool)

(assert (=> b!7767425 (= e!4602621 (not lt!2671126))))

(declare-fun d!2344046 () Bool)

(declare-fun e!4602618 () Bool)

(assert (=> d!2344046 e!4602618))

(declare-fun c!1431576 () Bool)

(assert (=> d!2344046 (= c!1431576 ((_ is EmptyExpr!20741) lt!2671103))))

(assert (=> d!2344046 (= lt!2671126 e!4602617)))

(declare-fun c!1431574 () Bool)

(assert (=> d!2344046 (= c!1431574 (isEmpty!42128 (++!17897 lt!2671106 (_2!38227 lt!2671108))))))

(assert (=> d!2344046 (validRegex!11155 lt!2671103)))

(assert (=> d!2344046 (= (matchR!10203 lt!2671103 (++!17897 lt!2671106 (_2!38227 lt!2671108))) lt!2671126)))

(declare-fun b!7767426 () Bool)

(assert (=> b!7767426 (= e!4602617 (nullable!9134 lt!2671103))))

(declare-fun b!7767427 () Bool)

(declare-fun e!4602622 () Bool)

(assert (=> b!7767427 (= e!4602622 (not (= (head!15872 (++!17897 lt!2671106 (_2!38227 lt!2671108))) (c!1431542 lt!2671103))))))

(declare-fun e!4602619 () Bool)

(declare-fun b!7767428 () Bool)

(assert (=> b!7767428 (= e!4602619 (= (head!15872 (++!17897 lt!2671106 (_2!38227 lt!2671108))) (c!1431542 lt!2671103)))))

(declare-fun b!7767429 () Bool)

(assert (=> b!7767429 (= e!4602618 (= lt!2671126 call!719657))))

(declare-fun b!7767430 () Bool)

(declare-fun res!3096571 () Bool)

(assert (=> b!7767430 (=> (not res!3096571) (not e!4602619))))

(assert (=> b!7767430 (= res!3096571 (not call!719657))))

(declare-fun b!7767431 () Bool)

(declare-fun e!4602620 () Bool)

(declare-fun e!4602623 () Bool)

(assert (=> b!7767431 (= e!4602620 e!4602623)))

(declare-fun res!3096575 () Bool)

(assert (=> b!7767431 (=> (not res!3096575) (not e!4602623))))

(assert (=> b!7767431 (= res!3096575 (not lt!2671126))))

(declare-fun b!7767432 () Bool)

(declare-fun res!3096570 () Bool)

(assert (=> b!7767432 (=> res!3096570 e!4602620)))

(assert (=> b!7767432 (= res!3096570 (not ((_ is ElementMatch!20741) lt!2671103)))))

(assert (=> b!7767432 (= e!4602621 e!4602620)))

(declare-fun b!7767433 () Bool)

(declare-fun res!3096576 () Bool)

(assert (=> b!7767433 (=> (not res!3096576) (not e!4602619))))

(assert (=> b!7767433 (= res!3096576 (isEmpty!42128 (tail!15412 (++!17897 lt!2671106 (_2!38227 lt!2671108)))))))

(declare-fun b!7767434 () Bool)

(assert (=> b!7767434 (= e!4602623 e!4602622)))

(declare-fun res!3096572 () Bool)

(assert (=> b!7767434 (=> res!3096572 e!4602622)))

(assert (=> b!7767434 (= res!3096572 call!719657)))

(declare-fun b!7767435 () Bool)

(declare-fun res!3096573 () Bool)

(assert (=> b!7767435 (=> res!3096573 e!4602622)))

(assert (=> b!7767435 (= res!3096573 (not (isEmpty!42128 (tail!15412 (++!17897 lt!2671106 (_2!38227 lt!2671108))))))))

(declare-fun b!7767436 () Bool)

(declare-fun res!3096569 () Bool)

(assert (=> b!7767436 (=> res!3096569 e!4602620)))

(assert (=> b!7767436 (= res!3096569 e!4602619)))

(declare-fun res!3096574 () Bool)

(assert (=> b!7767436 (=> (not res!3096574) (not e!4602619))))

(assert (=> b!7767436 (= res!3096574 lt!2671126)))

(declare-fun b!7767437 () Bool)

(assert (=> b!7767437 (= e!4602618 e!4602621)))

(declare-fun c!1431575 () Bool)

(assert (=> b!7767437 (= c!1431575 ((_ is EmptyLang!20741) lt!2671103))))

(assert (= (and d!2344046 c!1431574) b!7767426))

(assert (= (and d!2344046 (not c!1431574)) b!7767424))

(assert (= (and d!2344046 c!1431576) b!7767429))

(assert (= (and d!2344046 (not c!1431576)) b!7767437))

(assert (= (and b!7767437 c!1431575) b!7767425))

(assert (= (and b!7767437 (not c!1431575)) b!7767432))

(assert (= (and b!7767432 (not res!3096570)) b!7767436))

(assert (= (and b!7767436 res!3096574) b!7767430))

(assert (= (and b!7767430 res!3096571) b!7767433))

(assert (= (and b!7767433 res!3096576) b!7767428))

(assert (= (and b!7767436 (not res!3096569)) b!7767431))

(assert (= (and b!7767431 res!3096575) b!7767434))

(assert (= (and b!7767434 (not res!3096572)) b!7767435))

(assert (= (and b!7767435 (not res!3096573)) b!7767427))

(assert (= (or b!7767429 b!7767430 b!7767434) bm!719652))

(assert (=> bm!719652 m!8223224))

(declare-fun m!8223316 () Bool)

(assert (=> bm!719652 m!8223316))

(assert (=> b!7767435 m!8223224))

(declare-fun m!8223318 () Bool)

(assert (=> b!7767435 m!8223318))

(assert (=> b!7767435 m!8223318))

(declare-fun m!8223320 () Bool)

(assert (=> b!7767435 m!8223320))

(assert (=> b!7767427 m!8223224))

(declare-fun m!8223322 () Bool)

(assert (=> b!7767427 m!8223322))

(assert (=> b!7767433 m!8223224))

(assert (=> b!7767433 m!8223318))

(assert (=> b!7767433 m!8223318))

(assert (=> b!7767433 m!8223320))

(declare-fun m!8223324 () Bool)

(assert (=> b!7767426 m!8223324))

(assert (=> b!7767428 m!8223224))

(assert (=> b!7767428 m!8223322))

(assert (=> d!2344046 m!8223224))

(assert (=> d!2344046 m!8223316))

(assert (=> d!2344046 m!8223236))

(assert (=> b!7767424 m!8223224))

(assert (=> b!7767424 m!8223322))

(assert (=> b!7767424 m!8223322))

(declare-fun m!8223326 () Bool)

(assert (=> b!7767424 m!8223326))

(assert (=> b!7767424 m!8223224))

(assert (=> b!7767424 m!8223318))

(assert (=> b!7767424 m!8223326))

(assert (=> b!7767424 m!8223318))

(declare-fun m!8223328 () Bool)

(assert (=> b!7767424 m!8223328))

(assert (=> b!7767269 d!2344046))

(declare-fun b!7767447 () Bool)

(declare-fun e!4602631 () List!73582)

(assert (=> b!7767447 (= e!4602631 (Cons!73458 (h!79906 lt!2671106) (++!17897 (t!388317 lt!2671106) (_2!38227 lt!2671108))))))

(declare-fun d!2344048 () Bool)

(declare-fun e!4602629 () Bool)

(assert (=> d!2344048 e!4602629))

(declare-fun res!3096584 () Bool)

(assert (=> d!2344048 (=> (not res!3096584) (not e!4602629))))

(declare-fun lt!2671129 () List!73582)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15593 (List!73582) (InoxSet C!41808))

(assert (=> d!2344048 (= res!3096584 (= (content!15593 lt!2671129) ((_ map or) (content!15593 lt!2671106) (content!15593 (_2!38227 lt!2671108)))))))

(assert (=> d!2344048 (= lt!2671129 e!4602631)))

(declare-fun c!1431580 () Bool)

(assert (=> d!2344048 (= c!1431580 ((_ is Nil!73458) lt!2671106))))

(assert (=> d!2344048 (= (++!17897 lt!2671106 (_2!38227 lt!2671108)) lt!2671129)))

(declare-fun b!7767446 () Bool)

(assert (=> b!7767446 (= e!4602631 (_2!38227 lt!2671108))))

(declare-fun b!7767449 () Bool)

(assert (=> b!7767449 (= e!4602629 (or (not (= (_2!38227 lt!2671108) Nil!73458)) (= lt!2671129 lt!2671106)))))

(declare-fun b!7767448 () Bool)

(declare-fun res!3096582 () Bool)

(assert (=> b!7767448 (=> (not res!3096582) (not e!4602629))))

(declare-fun size!42696 (List!73582) Int)

(assert (=> b!7767448 (= res!3096582 (= (size!42696 lt!2671129) (+ (size!42696 lt!2671106) (size!42696 (_2!38227 lt!2671108)))))))

(assert (= (and d!2344048 c!1431580) b!7767446))

(assert (= (and d!2344048 (not c!1431580)) b!7767447))

(assert (= (and d!2344048 res!3096584) b!7767448))

(assert (= (and b!7767448 res!3096582) b!7767449))

(declare-fun m!8223330 () Bool)

(assert (=> b!7767447 m!8223330))

(declare-fun m!8223332 () Bool)

(assert (=> d!2344048 m!8223332))

(declare-fun m!8223334 () Bool)

(assert (=> d!2344048 m!8223334))

(declare-fun m!8223336 () Bool)

(assert (=> d!2344048 m!8223336))

(declare-fun m!8223338 () Bool)

(assert (=> b!7767448 m!8223338))

(declare-fun m!8223340 () Bool)

(assert (=> b!7767448 m!8223340))

(declare-fun m!8223342 () Bool)

(assert (=> b!7767448 m!8223342))

(assert (=> b!7767269 d!2344048))

(declare-fun d!2344050 () Bool)

(assert (=> d!2344050 (matchR!10203 (Concat!29586 r!25924 lt!2671105) (++!17897 lt!2671106 (_2!38227 lt!2671108)))))

(declare-fun lt!2671133 () Unit!168444)

(declare-fun choose!59467 (Regex!20741 Regex!20741 List!73582 List!73582) Unit!168444)

(assert (=> d!2344050 (= lt!2671133 (choose!59467 r!25924 lt!2671105 lt!2671106 (_2!38227 lt!2671108)))))

(declare-fun e!4602639 () Bool)

(assert (=> d!2344050 e!4602639))

(declare-fun res!3096593 () Bool)

(assert (=> d!2344050 (=> (not res!3096593) (not e!4602639))))

(assert (=> d!2344050 (= res!3096593 (validRegex!11155 r!25924))))

(assert (=> d!2344050 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!420 r!25924 lt!2671105 lt!2671106 (_2!38227 lt!2671108)) lt!2671133)))

(declare-fun b!7767466 () Bool)

(assert (=> b!7767466 (= e!4602639 (validRegex!11155 lt!2671105))))

(assert (= (and d!2344050 res!3096593) b!7767466))

(assert (=> d!2344050 m!8223224))

(assert (=> d!2344050 m!8223224))

(declare-fun m!8223356 () Bool)

(assert (=> d!2344050 m!8223356))

(declare-fun m!8223358 () Bool)

(assert (=> d!2344050 m!8223358))

(assert (=> d!2344050 m!8223250))

(assert (=> b!7767466 m!8223242))

(assert (=> b!7767269 d!2344050))

(declare-fun d!2344056 () Bool)

(declare-fun lt!2671139 () Regex!20741)

(assert (=> d!2344056 (validRegex!11155 lt!2671139)))

(declare-fun e!4602650 () Regex!20741)

(assert (=> d!2344056 (= lt!2671139 e!4602650)))

(declare-fun c!1431594 () Bool)

(assert (=> d!2344056 (= c!1431594 (or ((_ is EmptyExpr!20741) lt!2671105) ((_ is EmptyLang!20741) lt!2671105)))))

(assert (=> d!2344056 (validRegex!11155 lt!2671105)))

(assert (=> d!2344056 (= (derivativeStep!6086 lt!2671105 (h!79906 s!14904)) lt!2671139)))

(declare-fun bm!719662 () Bool)

(declare-fun call!719670 () Regex!20741)

(declare-fun call!719669 () Regex!20741)

(assert (=> bm!719662 (= call!719670 call!719669)))

(declare-fun b!7767487 () Bool)

(assert (=> b!7767487 (= e!4602650 EmptyLang!20741)))

(declare-fun b!7767488 () Bool)

(declare-fun c!1431597 () Bool)

(assert (=> b!7767488 (= c!1431597 ((_ is Union!20741) lt!2671105))))

(declare-fun e!4602654 () Regex!20741)

(declare-fun e!4602653 () Regex!20741)

(assert (=> b!7767488 (= e!4602654 e!4602653)))

(declare-fun b!7767489 () Bool)

(declare-fun c!1431596 () Bool)

(assert (=> b!7767489 (= c!1431596 (nullable!9134 (regOne!41994 lt!2671105)))))

(declare-fun e!4602652 () Regex!20741)

(declare-fun e!4602651 () Regex!20741)

(assert (=> b!7767489 (= e!4602652 e!4602651)))

(declare-fun bm!719663 () Bool)

(declare-fun c!1431593 () Bool)

(declare-fun call!719667 () Regex!20741)

(assert (=> bm!719663 (= call!719667 (derivativeStep!6086 (ite c!1431597 (regOne!41995 lt!2671105) (ite c!1431593 (reg!21070 lt!2671105) (regOne!41994 lt!2671105))) (h!79906 s!14904)))))

(declare-fun bm!719664 () Bool)

(assert (=> bm!719664 (= call!719669 call!719667)))

(declare-fun b!7767490 () Bool)

(assert (=> b!7767490 (= e!4602652 (Concat!29586 call!719669 lt!2671105))))

(declare-fun b!7767491 () Bool)

(assert (=> b!7767491 (= e!4602654 (ite (= (h!79906 s!14904) (c!1431542 lt!2671105)) EmptyExpr!20741 EmptyLang!20741))))

(declare-fun b!7767492 () Bool)

(declare-fun call!719668 () Regex!20741)

(assert (=> b!7767492 (= e!4602653 (Union!20741 call!719667 call!719668))))

(declare-fun b!7767493 () Bool)

(assert (=> b!7767493 (= e!4602651 (Union!20741 (Concat!29586 call!719670 (regTwo!41994 lt!2671105)) EmptyLang!20741))))

(declare-fun b!7767494 () Bool)

(assert (=> b!7767494 (= e!4602651 (Union!20741 (Concat!29586 call!719670 (regTwo!41994 lt!2671105)) call!719668))))

(declare-fun bm!719665 () Bool)

(assert (=> bm!719665 (= call!719668 (derivativeStep!6086 (ite c!1431597 (regTwo!41995 lt!2671105) (regTwo!41994 lt!2671105)) (h!79906 s!14904)))))

(declare-fun b!7767495 () Bool)

(assert (=> b!7767495 (= e!4602650 e!4602654)))

(declare-fun c!1431595 () Bool)

(assert (=> b!7767495 (= c!1431595 ((_ is ElementMatch!20741) lt!2671105))))

(declare-fun b!7767496 () Bool)

(assert (=> b!7767496 (= e!4602653 e!4602652)))

(assert (=> b!7767496 (= c!1431593 ((_ is Star!20741) lt!2671105))))

(assert (= (and d!2344056 c!1431594) b!7767487))

(assert (= (and d!2344056 (not c!1431594)) b!7767495))

(assert (= (and b!7767495 c!1431595) b!7767491))

(assert (= (and b!7767495 (not c!1431595)) b!7767488))

(assert (= (and b!7767488 c!1431597) b!7767492))

(assert (= (and b!7767488 (not c!1431597)) b!7767496))

(assert (= (and b!7767496 c!1431593) b!7767490))

(assert (= (and b!7767496 (not c!1431593)) b!7767489))

(assert (= (and b!7767489 c!1431596) b!7767494))

(assert (= (and b!7767489 (not c!1431596)) b!7767493))

(assert (= (or b!7767494 b!7767493) bm!719662))

(assert (= (or b!7767490 bm!719662) bm!719664))

(assert (= (or b!7767492 b!7767494) bm!719665))

(assert (= (or b!7767492 bm!719664) bm!719663))

(declare-fun m!8223368 () Bool)

(assert (=> d!2344056 m!8223368))

(assert (=> d!2344056 m!8223242))

(declare-fun m!8223370 () Bool)

(assert (=> b!7767489 m!8223370))

(declare-fun m!8223372 () Bool)

(assert (=> bm!719663 m!8223372))

(declare-fun m!8223374 () Bool)

(assert (=> bm!719665 m!8223374))

(assert (=> b!7767271 d!2344056))

(declare-fun d!2344062 () Bool)

(declare-fun lt!2671140 () Regex!20741)

(assert (=> d!2344062 (validRegex!11155 lt!2671140)))

(declare-fun e!4602655 () Regex!20741)

(assert (=> d!2344062 (= lt!2671140 e!4602655)))

(declare-fun c!1431599 () Bool)

(assert (=> d!2344062 (= c!1431599 (or ((_ is EmptyExpr!20741) r!25924) ((_ is EmptyLang!20741) r!25924)))))

(assert (=> d!2344062 (validRegex!11155 r!25924)))

(assert (=> d!2344062 (= (derivativeStep!6086 r!25924 (h!79906 s!14904)) lt!2671140)))

(declare-fun bm!719666 () Bool)

(declare-fun call!719674 () Regex!20741)

(declare-fun call!719673 () Regex!20741)

(assert (=> bm!719666 (= call!719674 call!719673)))

(declare-fun b!7767497 () Bool)

(assert (=> b!7767497 (= e!4602655 EmptyLang!20741)))

(declare-fun b!7767498 () Bool)

(declare-fun c!1431602 () Bool)

(assert (=> b!7767498 (= c!1431602 ((_ is Union!20741) r!25924))))

(declare-fun e!4602659 () Regex!20741)

(declare-fun e!4602658 () Regex!20741)

(assert (=> b!7767498 (= e!4602659 e!4602658)))

(declare-fun b!7767499 () Bool)

(declare-fun c!1431601 () Bool)

(assert (=> b!7767499 (= c!1431601 (nullable!9134 (regOne!41994 r!25924)))))

(declare-fun e!4602657 () Regex!20741)

(declare-fun e!4602656 () Regex!20741)

(assert (=> b!7767499 (= e!4602657 e!4602656)))

(declare-fun call!719671 () Regex!20741)

(declare-fun bm!719667 () Bool)

(declare-fun c!1431598 () Bool)

(assert (=> bm!719667 (= call!719671 (derivativeStep!6086 (ite c!1431602 (regOne!41995 r!25924) (ite c!1431598 (reg!21070 r!25924) (regOne!41994 r!25924))) (h!79906 s!14904)))))

(declare-fun bm!719668 () Bool)

(assert (=> bm!719668 (= call!719673 call!719671)))

(declare-fun b!7767500 () Bool)

(assert (=> b!7767500 (= e!4602657 (Concat!29586 call!719673 r!25924))))

(declare-fun b!7767501 () Bool)

(assert (=> b!7767501 (= e!4602659 (ite (= (h!79906 s!14904) (c!1431542 r!25924)) EmptyExpr!20741 EmptyLang!20741))))

(declare-fun b!7767502 () Bool)

(declare-fun call!719672 () Regex!20741)

(assert (=> b!7767502 (= e!4602658 (Union!20741 call!719671 call!719672))))

(declare-fun b!7767503 () Bool)

(assert (=> b!7767503 (= e!4602656 (Union!20741 (Concat!29586 call!719674 (regTwo!41994 r!25924)) EmptyLang!20741))))

(declare-fun b!7767504 () Bool)

(assert (=> b!7767504 (= e!4602656 (Union!20741 (Concat!29586 call!719674 (regTwo!41994 r!25924)) call!719672))))

(declare-fun bm!719669 () Bool)

(assert (=> bm!719669 (= call!719672 (derivativeStep!6086 (ite c!1431602 (regTwo!41995 r!25924) (regTwo!41994 r!25924)) (h!79906 s!14904)))))

(declare-fun b!7767505 () Bool)

(assert (=> b!7767505 (= e!4602655 e!4602659)))

(declare-fun c!1431600 () Bool)

(assert (=> b!7767505 (= c!1431600 ((_ is ElementMatch!20741) r!25924))))

(declare-fun b!7767506 () Bool)

(assert (=> b!7767506 (= e!4602658 e!4602657)))

(assert (=> b!7767506 (= c!1431598 ((_ is Star!20741) r!25924))))

(assert (= (and d!2344062 c!1431599) b!7767497))

(assert (= (and d!2344062 (not c!1431599)) b!7767505))

(assert (= (and b!7767505 c!1431600) b!7767501))

(assert (= (and b!7767505 (not c!1431600)) b!7767498))

(assert (= (and b!7767498 c!1431602) b!7767502))

(assert (= (and b!7767498 (not c!1431602)) b!7767506))

(assert (= (and b!7767506 c!1431598) b!7767500))

(assert (= (and b!7767506 (not c!1431598)) b!7767499))

(assert (= (and b!7767499 c!1431601) b!7767504))

(assert (= (and b!7767499 (not c!1431601)) b!7767503))

(assert (= (or b!7767504 b!7767503) bm!719666))

(assert (= (or b!7767500 bm!719666) bm!719668))

(assert (= (or b!7767502 b!7767504) bm!719669))

(assert (= (or b!7767502 bm!719668) bm!719667))

(declare-fun m!8223376 () Bool)

(assert (=> d!2344062 m!8223376))

(assert (=> d!2344062 m!8223250))

(declare-fun m!8223378 () Bool)

(assert (=> b!7767499 m!8223378))

(declare-fun m!8223380 () Bool)

(assert (=> bm!719667 m!8223380))

(declare-fun m!8223382 () Bool)

(assert (=> bm!719669 m!8223382))

(assert (=> b!7767271 d!2344062))

(declare-fun bm!719670 () Bool)

(declare-fun call!719675 () Bool)

(assert (=> bm!719670 (= call!719675 (isEmpty!42128 lt!2671106))))

(declare-fun b!7767507 () Bool)

(declare-fun e!4602660 () Bool)

(assert (=> b!7767507 (= e!4602660 (matchR!10203 (derivativeStep!6086 r!25924 (head!15872 lt!2671106)) (tail!15412 lt!2671106)))))

(declare-fun b!7767508 () Bool)

(declare-fun e!4602664 () Bool)

(declare-fun lt!2671141 () Bool)

(assert (=> b!7767508 (= e!4602664 (not lt!2671141))))

(declare-fun d!2344064 () Bool)

(declare-fun e!4602661 () Bool)

(assert (=> d!2344064 e!4602661))

(declare-fun c!1431605 () Bool)

(assert (=> d!2344064 (= c!1431605 ((_ is EmptyExpr!20741) r!25924))))

(assert (=> d!2344064 (= lt!2671141 e!4602660)))

(declare-fun c!1431603 () Bool)

(assert (=> d!2344064 (= c!1431603 (isEmpty!42128 lt!2671106))))

(assert (=> d!2344064 (validRegex!11155 r!25924)))

(assert (=> d!2344064 (= (matchR!10203 r!25924 lt!2671106) lt!2671141)))

(declare-fun b!7767509 () Bool)

(assert (=> b!7767509 (= e!4602660 (nullable!9134 r!25924))))

(declare-fun b!7767510 () Bool)

(declare-fun e!4602665 () Bool)

(assert (=> b!7767510 (= e!4602665 (not (= (head!15872 lt!2671106) (c!1431542 r!25924))))))

(declare-fun b!7767511 () Bool)

(declare-fun e!4602662 () Bool)

(assert (=> b!7767511 (= e!4602662 (= (head!15872 lt!2671106) (c!1431542 r!25924)))))

(declare-fun b!7767512 () Bool)

(assert (=> b!7767512 (= e!4602661 (= lt!2671141 call!719675))))

(declare-fun b!7767513 () Bool)

(declare-fun res!3096596 () Bool)

(assert (=> b!7767513 (=> (not res!3096596) (not e!4602662))))

(assert (=> b!7767513 (= res!3096596 (not call!719675))))

(declare-fun b!7767514 () Bool)

(declare-fun e!4602663 () Bool)

(declare-fun e!4602666 () Bool)

(assert (=> b!7767514 (= e!4602663 e!4602666)))

(declare-fun res!3096600 () Bool)

(assert (=> b!7767514 (=> (not res!3096600) (not e!4602666))))

(assert (=> b!7767514 (= res!3096600 (not lt!2671141))))

(declare-fun b!7767515 () Bool)

(declare-fun res!3096595 () Bool)

(assert (=> b!7767515 (=> res!3096595 e!4602663)))

(assert (=> b!7767515 (= res!3096595 (not ((_ is ElementMatch!20741) r!25924)))))

(assert (=> b!7767515 (= e!4602664 e!4602663)))

(declare-fun b!7767516 () Bool)

(declare-fun res!3096601 () Bool)

(assert (=> b!7767516 (=> (not res!3096601) (not e!4602662))))

(assert (=> b!7767516 (= res!3096601 (isEmpty!42128 (tail!15412 lt!2671106)))))

(declare-fun b!7767517 () Bool)

(assert (=> b!7767517 (= e!4602666 e!4602665)))

(declare-fun res!3096597 () Bool)

(assert (=> b!7767517 (=> res!3096597 e!4602665)))

(assert (=> b!7767517 (= res!3096597 call!719675)))

(declare-fun b!7767518 () Bool)

(declare-fun res!3096598 () Bool)

(assert (=> b!7767518 (=> res!3096598 e!4602665)))

(assert (=> b!7767518 (= res!3096598 (not (isEmpty!42128 (tail!15412 lt!2671106))))))

(declare-fun b!7767519 () Bool)

(declare-fun res!3096594 () Bool)

(assert (=> b!7767519 (=> res!3096594 e!4602663)))

(assert (=> b!7767519 (= res!3096594 e!4602662)))

(declare-fun res!3096599 () Bool)

(assert (=> b!7767519 (=> (not res!3096599) (not e!4602662))))

(assert (=> b!7767519 (= res!3096599 lt!2671141)))

(declare-fun b!7767520 () Bool)

(assert (=> b!7767520 (= e!4602661 e!4602664)))

(declare-fun c!1431604 () Bool)

(assert (=> b!7767520 (= c!1431604 ((_ is EmptyLang!20741) r!25924))))

(assert (= (and d!2344064 c!1431603) b!7767509))

(assert (= (and d!2344064 (not c!1431603)) b!7767507))

(assert (= (and d!2344064 c!1431605) b!7767512))

(assert (= (and d!2344064 (not c!1431605)) b!7767520))

(assert (= (and b!7767520 c!1431604) b!7767508))

(assert (= (and b!7767520 (not c!1431604)) b!7767515))

(assert (= (and b!7767515 (not res!3096595)) b!7767519))

(assert (= (and b!7767519 res!3096599) b!7767513))

(assert (= (and b!7767513 res!3096596) b!7767516))

(assert (= (and b!7767516 res!3096601) b!7767511))

(assert (= (and b!7767519 (not res!3096594)) b!7767514))

(assert (= (and b!7767514 res!3096600) b!7767517))

(assert (= (and b!7767517 (not res!3096597)) b!7767518))

(assert (= (and b!7767518 (not res!3096598)) b!7767510))

(assert (= (or b!7767512 b!7767513 b!7767517) bm!719670))

(declare-fun m!8223384 () Bool)

(assert (=> bm!719670 m!8223384))

(declare-fun m!8223386 () Bool)

(assert (=> b!7767518 m!8223386))

(assert (=> b!7767518 m!8223386))

(declare-fun m!8223388 () Bool)

(assert (=> b!7767518 m!8223388))

(declare-fun m!8223390 () Bool)

(assert (=> b!7767510 m!8223390))

(assert (=> b!7767516 m!8223386))

(assert (=> b!7767516 m!8223386))

(assert (=> b!7767516 m!8223388))

(declare-fun m!8223392 () Bool)

(assert (=> b!7767509 m!8223392))

(assert (=> b!7767511 m!8223390))

(assert (=> d!2344064 m!8223384))

(assert (=> d!2344064 m!8223250))

(assert (=> b!7767507 m!8223390))

(assert (=> b!7767507 m!8223390))

(declare-fun m!8223394 () Bool)

(assert (=> b!7767507 m!8223394))

(assert (=> b!7767507 m!8223386))

(assert (=> b!7767507 m!8223394))

(assert (=> b!7767507 m!8223386))

(declare-fun m!8223396 () Bool)

(assert (=> b!7767507 m!8223396))

(assert (=> b!7767276 d!2344064))

(declare-fun bm!719671 () Bool)

(declare-fun call!719676 () Bool)

(assert (=> bm!719671 (= call!719676 (isEmpty!42128 s!14904))))

(declare-fun b!7767521 () Bool)

(declare-fun e!4602667 () Bool)

(assert (=> b!7767521 (= e!4602667 (matchR!10203 (derivativeStep!6086 lt!2671105 (head!15872 s!14904)) (tail!15412 s!14904)))))

(declare-fun b!7767522 () Bool)

(declare-fun e!4602671 () Bool)

(declare-fun lt!2671142 () Bool)

(assert (=> b!7767522 (= e!4602671 (not lt!2671142))))

(declare-fun d!2344066 () Bool)

(declare-fun e!4602668 () Bool)

(assert (=> d!2344066 e!4602668))

(declare-fun c!1431608 () Bool)

(assert (=> d!2344066 (= c!1431608 ((_ is EmptyExpr!20741) lt!2671105))))

(assert (=> d!2344066 (= lt!2671142 e!4602667)))

(declare-fun c!1431606 () Bool)

(assert (=> d!2344066 (= c!1431606 (isEmpty!42128 s!14904))))

(assert (=> d!2344066 (validRegex!11155 lt!2671105)))

(assert (=> d!2344066 (= (matchR!10203 lt!2671105 s!14904) lt!2671142)))

(declare-fun b!7767523 () Bool)

(assert (=> b!7767523 (= e!4602667 (nullable!9134 lt!2671105))))

(declare-fun b!7767524 () Bool)

(declare-fun e!4602672 () Bool)

(assert (=> b!7767524 (= e!4602672 (not (= (head!15872 s!14904) (c!1431542 lt!2671105))))))

(declare-fun b!7767525 () Bool)

(declare-fun e!4602669 () Bool)

(assert (=> b!7767525 (= e!4602669 (= (head!15872 s!14904) (c!1431542 lt!2671105)))))

(declare-fun b!7767526 () Bool)

(assert (=> b!7767526 (= e!4602668 (= lt!2671142 call!719676))))

(declare-fun b!7767527 () Bool)

(declare-fun res!3096604 () Bool)

(assert (=> b!7767527 (=> (not res!3096604) (not e!4602669))))

(assert (=> b!7767527 (= res!3096604 (not call!719676))))

(declare-fun b!7767528 () Bool)

(declare-fun e!4602670 () Bool)

(declare-fun e!4602673 () Bool)

(assert (=> b!7767528 (= e!4602670 e!4602673)))

(declare-fun res!3096608 () Bool)

(assert (=> b!7767528 (=> (not res!3096608) (not e!4602673))))

(assert (=> b!7767528 (= res!3096608 (not lt!2671142))))

(declare-fun b!7767529 () Bool)

(declare-fun res!3096603 () Bool)

(assert (=> b!7767529 (=> res!3096603 e!4602670)))

(assert (=> b!7767529 (= res!3096603 (not ((_ is ElementMatch!20741) lt!2671105)))))

(assert (=> b!7767529 (= e!4602671 e!4602670)))

(declare-fun b!7767530 () Bool)

(declare-fun res!3096609 () Bool)

(assert (=> b!7767530 (=> (not res!3096609) (not e!4602669))))

(assert (=> b!7767530 (= res!3096609 (isEmpty!42128 (tail!15412 s!14904)))))

(declare-fun b!7767531 () Bool)

(assert (=> b!7767531 (= e!4602673 e!4602672)))

(declare-fun res!3096605 () Bool)

(assert (=> b!7767531 (=> res!3096605 e!4602672)))

(assert (=> b!7767531 (= res!3096605 call!719676)))

(declare-fun b!7767532 () Bool)

(declare-fun res!3096606 () Bool)

(assert (=> b!7767532 (=> res!3096606 e!4602672)))

(assert (=> b!7767532 (= res!3096606 (not (isEmpty!42128 (tail!15412 s!14904))))))

(declare-fun b!7767533 () Bool)

(declare-fun res!3096602 () Bool)

(assert (=> b!7767533 (=> res!3096602 e!4602670)))

(assert (=> b!7767533 (= res!3096602 e!4602669)))

(declare-fun res!3096607 () Bool)

(assert (=> b!7767533 (=> (not res!3096607) (not e!4602669))))

(assert (=> b!7767533 (= res!3096607 lt!2671142)))

(declare-fun b!7767534 () Bool)

(assert (=> b!7767534 (= e!4602668 e!4602671)))

(declare-fun c!1431607 () Bool)

(assert (=> b!7767534 (= c!1431607 ((_ is EmptyLang!20741) lt!2671105))))

(assert (= (and d!2344066 c!1431606) b!7767523))

(assert (= (and d!2344066 (not c!1431606)) b!7767521))

(assert (= (and d!2344066 c!1431608) b!7767526))

(assert (= (and d!2344066 (not c!1431608)) b!7767534))

(assert (= (and b!7767534 c!1431607) b!7767522))

(assert (= (and b!7767534 (not c!1431607)) b!7767529))

(assert (= (and b!7767529 (not res!3096603)) b!7767533))

(assert (= (and b!7767533 res!3096607) b!7767527))

(assert (= (and b!7767527 res!3096604) b!7767530))

(assert (= (and b!7767530 res!3096609) b!7767525))

(assert (= (and b!7767533 (not res!3096602)) b!7767528))

(assert (= (and b!7767528 res!3096608) b!7767531))

(assert (= (and b!7767531 (not res!3096605)) b!7767532))

(assert (= (and b!7767532 (not res!3096606)) b!7767524))

(assert (= (or b!7767526 b!7767527 b!7767531) bm!719671))

(assert (=> bm!719671 m!8223222))

(declare-fun m!8223398 () Bool)

(assert (=> b!7767532 m!8223398))

(assert (=> b!7767532 m!8223398))

(declare-fun m!8223400 () Bool)

(assert (=> b!7767532 m!8223400))

(declare-fun m!8223402 () Bool)

(assert (=> b!7767524 m!8223402))

(assert (=> b!7767530 m!8223398))

(assert (=> b!7767530 m!8223398))

(assert (=> b!7767530 m!8223400))

(assert (=> b!7767523 m!8223304))

(assert (=> b!7767525 m!8223402))

(assert (=> d!2344066 m!8223222))

(assert (=> d!2344066 m!8223242))

(assert (=> b!7767521 m!8223402))

(assert (=> b!7767521 m!8223402))

(declare-fun m!8223404 () Bool)

(assert (=> b!7767521 m!8223404))

(assert (=> b!7767521 m!8223398))

(assert (=> b!7767521 m!8223404))

(assert (=> b!7767521 m!8223398))

(declare-fun m!8223406 () Bool)

(assert (=> b!7767521 m!8223406))

(assert (=> b!7767278 d!2344066))

(declare-fun b!7767539 () Bool)

(declare-fun e!4602676 () Bool)

(declare-fun tp!2281768 () Bool)

(assert (=> b!7767539 (= e!4602676 (and tp_is_empty!51837 tp!2281768))))

(assert (=> b!7767274 (= tp!2281765 e!4602676)))

(assert (= (and b!7767274 ((_ is Cons!73458) (t!388317 s!14904))) b!7767539))

(declare-fun b!7767551 () Bool)

(declare-fun e!4602679 () Bool)

(declare-fun tp!2281783 () Bool)

(declare-fun tp!2281779 () Bool)

(assert (=> b!7767551 (= e!4602679 (and tp!2281783 tp!2281779))))

(declare-fun b!7767552 () Bool)

(declare-fun tp!2281780 () Bool)

(assert (=> b!7767552 (= e!4602679 tp!2281780)))

(declare-fun b!7767550 () Bool)

(assert (=> b!7767550 (= e!4602679 tp_is_empty!51837)))

(assert (=> b!7767270 (= tp!2281760 e!4602679)))

(declare-fun b!7767553 () Bool)

(declare-fun tp!2281781 () Bool)

(declare-fun tp!2281782 () Bool)

(assert (=> b!7767553 (= e!4602679 (and tp!2281781 tp!2281782))))

(assert (= (and b!7767270 ((_ is ElementMatch!20741) (reg!21070 r!25924))) b!7767550))

(assert (= (and b!7767270 ((_ is Concat!29586) (reg!21070 r!25924))) b!7767551))

(assert (= (and b!7767270 ((_ is Star!20741) (reg!21070 r!25924))) b!7767552))

(assert (= (and b!7767270 ((_ is Union!20741) (reg!21070 r!25924))) b!7767553))

(declare-fun b!7767555 () Bool)

(declare-fun e!4602680 () Bool)

(declare-fun tp!2281788 () Bool)

(declare-fun tp!2281784 () Bool)

(assert (=> b!7767555 (= e!4602680 (and tp!2281788 tp!2281784))))

(declare-fun b!7767556 () Bool)

(declare-fun tp!2281785 () Bool)

(assert (=> b!7767556 (= e!4602680 tp!2281785)))

(declare-fun b!7767554 () Bool)

(assert (=> b!7767554 (= e!4602680 tp_is_empty!51837)))

(assert (=> b!7767275 (= tp!2281761 e!4602680)))

(declare-fun b!7767557 () Bool)

(declare-fun tp!2281786 () Bool)

(declare-fun tp!2281787 () Bool)

(assert (=> b!7767557 (= e!4602680 (and tp!2281786 tp!2281787))))

(assert (= (and b!7767275 ((_ is ElementMatch!20741) (regOne!41995 r!25924))) b!7767554))

(assert (= (and b!7767275 ((_ is Concat!29586) (regOne!41995 r!25924))) b!7767555))

(assert (= (and b!7767275 ((_ is Star!20741) (regOne!41995 r!25924))) b!7767556))

(assert (= (and b!7767275 ((_ is Union!20741) (regOne!41995 r!25924))) b!7767557))

(declare-fun b!7767559 () Bool)

(declare-fun e!4602681 () Bool)

(declare-fun tp!2281793 () Bool)

(declare-fun tp!2281789 () Bool)

(assert (=> b!7767559 (= e!4602681 (and tp!2281793 tp!2281789))))

(declare-fun b!7767560 () Bool)

(declare-fun tp!2281790 () Bool)

(assert (=> b!7767560 (= e!4602681 tp!2281790)))

(declare-fun b!7767558 () Bool)

(assert (=> b!7767558 (= e!4602681 tp_is_empty!51837)))

(assert (=> b!7767275 (= tp!2281762 e!4602681)))

(declare-fun b!7767561 () Bool)

(declare-fun tp!2281791 () Bool)

(declare-fun tp!2281792 () Bool)

(assert (=> b!7767561 (= e!4602681 (and tp!2281791 tp!2281792))))

(assert (= (and b!7767275 ((_ is ElementMatch!20741) (regTwo!41995 r!25924))) b!7767558))

(assert (= (and b!7767275 ((_ is Concat!29586) (regTwo!41995 r!25924))) b!7767559))

(assert (= (and b!7767275 ((_ is Star!20741) (regTwo!41995 r!25924))) b!7767560))

(assert (= (and b!7767275 ((_ is Union!20741) (regTwo!41995 r!25924))) b!7767561))

(declare-fun b!7767563 () Bool)

(declare-fun e!4602682 () Bool)

(declare-fun tp!2281798 () Bool)

(declare-fun tp!2281794 () Bool)

(assert (=> b!7767563 (= e!4602682 (and tp!2281798 tp!2281794))))

(declare-fun b!7767564 () Bool)

(declare-fun tp!2281795 () Bool)

(assert (=> b!7767564 (= e!4602682 tp!2281795)))

(declare-fun b!7767562 () Bool)

(assert (=> b!7767562 (= e!4602682 tp_is_empty!51837)))

(assert (=> b!7767277 (= tp!2281763 e!4602682)))

(declare-fun b!7767565 () Bool)

(declare-fun tp!2281796 () Bool)

(declare-fun tp!2281797 () Bool)

(assert (=> b!7767565 (= e!4602682 (and tp!2281796 tp!2281797))))

(assert (= (and b!7767277 ((_ is ElementMatch!20741) (regOne!41994 r!25924))) b!7767562))

(assert (= (and b!7767277 ((_ is Concat!29586) (regOne!41994 r!25924))) b!7767563))

(assert (= (and b!7767277 ((_ is Star!20741) (regOne!41994 r!25924))) b!7767564))

(assert (= (and b!7767277 ((_ is Union!20741) (regOne!41994 r!25924))) b!7767565))

(declare-fun b!7767567 () Bool)

(declare-fun e!4602683 () Bool)

(declare-fun tp!2281803 () Bool)

(declare-fun tp!2281799 () Bool)

(assert (=> b!7767567 (= e!4602683 (and tp!2281803 tp!2281799))))

(declare-fun b!7767568 () Bool)

(declare-fun tp!2281800 () Bool)

(assert (=> b!7767568 (= e!4602683 tp!2281800)))

(declare-fun b!7767566 () Bool)

(assert (=> b!7767566 (= e!4602683 tp_is_empty!51837)))

(assert (=> b!7767277 (= tp!2281764 e!4602683)))

(declare-fun b!7767569 () Bool)

(declare-fun tp!2281801 () Bool)

(declare-fun tp!2281802 () Bool)

(assert (=> b!7767569 (= e!4602683 (and tp!2281801 tp!2281802))))

(assert (= (and b!7767277 ((_ is ElementMatch!20741) (regTwo!41994 r!25924))) b!7767566))

(assert (= (and b!7767277 ((_ is Concat!29586) (regTwo!41994 r!25924))) b!7767567))

(assert (= (and b!7767277 ((_ is Star!20741) (regTwo!41994 r!25924))) b!7767568))

(assert (= (and b!7767277 ((_ is Union!20741) (regTwo!41994 r!25924))) b!7767569))

(check-sat (not d!2344062) (not b!7767405) (not bm!719663) (not b!7767510) (not b!7767410) (not b!7767424) (not d!2344048) (not b!7767551) (not b!7767555) (not d!2344050) (not b!7767560) (not d!2344032) (not b!7767448) (not b!7767552) (not bm!719669) (not b!7767523) (not b!7767556) (not b!7767518) (not d!2344066) (not d!2344064) (not b!7767433) (not b!7767521) (not bm!719671) (not b!7767565) (not b!7767412) (not bm!719641) (not b!7767568) (not b!7767516) (not b!7767333) (not b!7767511) (not b!7767539) tp_is_empty!51837 (not b!7767563) (not b!7767344) (not bm!719648) (not b!7767334) (not b!7767567) (not b!7767428) (not d!2344040) (not bm!719652) (not b!7767426) (not b!7767569) (not d!2344028) (not d!2344056) (not b!7767401) (not b!7767489) (not bm!719670) (not bm!719649) (not b!7767435) (not b!7767466) (not bm!719667) (not b!7767329) (not bm!719643) (not b!7767335) (not b!7767557) (not bm!719665) (not bm!719651) (not b!7767564) (not b!7767525) (not d!2344036) (not bm!719638) (not b!7767561) (not b!7767559) (not b!7767524) (not b!7767332) (not b!7767507) (not b!7767403) (not bm!719640) (not b!7767530) (not b!7767499) (not b!7767553) (not b!7767330) (not b!7767427) (not d!2344046) (not b!7767509) (not b!7767308) (not b!7767404) (not b!7767532) (not b!7767447) (not b!7767423))
(check-sat)
