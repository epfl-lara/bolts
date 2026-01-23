; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740154 () Bool)

(assert start!740154)

(declare-fun b!7772867 () Bool)

(declare-fun e!4605283 () Bool)

(declare-datatypes ((C!41860 0))(
  ( (C!41861 (val!31370 Int)) )
))
(declare-datatypes ((Regex!20767 0))(
  ( (ElementMatch!20767 (c!1432596 C!41860)) (Concat!29612 (regOne!42046 Regex!20767) (regTwo!42046 Regex!20767)) (EmptyExpr!20767) (Star!20767 (reg!21096 Regex!20767)) (EmptyLang!20767) (Union!20767 (regOne!42047 Regex!20767) (regTwo!42047 Regex!20767)) )
))
(declare-fun lt!2671654 () Regex!20767)

(declare-fun validRegex!11181 (Regex!20767) Bool)

(assert (=> b!7772867 (= e!4605283 (not (validRegex!11181 lt!2671654)))))

(declare-fun b!7772868 () Bool)

(declare-fun e!4605281 () Bool)

(declare-fun tp_is_empty!51889 () Bool)

(declare-fun tp!2283667 () Bool)

(assert (=> b!7772868 (= e!4605281 (and tp_is_empty!51889 tp!2283667))))

(declare-fun b!7772869 () Bool)

(declare-fun e!4605282 () Bool)

(assert (=> b!7772869 (= e!4605282 tp_is_empty!51889)))

(declare-fun b!7772870 () Bool)

(declare-fun tp!2283666 () Bool)

(assert (=> b!7772870 (= e!4605282 tp!2283666)))

(declare-fun b!7772871 () Bool)

(declare-fun e!4605284 () Bool)

(declare-fun tp!2283671 () Bool)

(declare-fun tp!2283665 () Bool)

(assert (=> b!7772871 (= e!4605284 (and tp!2283671 tp!2283665))))

(declare-fun b!7772872 () Bool)

(declare-fun tp!2283668 () Bool)

(declare-fun tp!2283669 () Bool)

(assert (=> b!7772872 (= e!4605282 (and tp!2283668 tp!2283669))))

(declare-fun b!7772873 () Bool)

(declare-fun res!3098393 () Bool)

(assert (=> b!7772873 (=> (not res!3098393) (not e!4605283))))

(declare-datatypes ((List!73606 0))(
  ( (Nil!73482) (Cons!73482 (h!79930 C!41860) (t!388341 List!73606)) )
))
(declare-fun s!14292 () List!73606)

(get-info :version)

(assert (=> b!7772873 (= res!3098393 ((_ is Cons!73482) s!14292))))

(declare-fun b!7772874 () Bool)

(declare-fun tp!2283661 () Bool)

(declare-fun tp!2283662 () Bool)

(assert (=> b!7772874 (= e!4605284 (and tp!2283661 tp!2283662))))

(declare-fun b!7772876 () Bool)

(assert (=> b!7772876 (= e!4605284 tp_is_empty!51889)))

(declare-fun b!7772877 () Bool)

(declare-fun tp!2283664 () Bool)

(declare-fun tp!2283670 () Bool)

(assert (=> b!7772877 (= e!4605282 (and tp!2283664 tp!2283670))))

(declare-fun b!7772878 () Bool)

(declare-fun e!4605285 () Bool)

(assert (=> b!7772878 (= e!4605285 e!4605283)))

(declare-fun res!3098392 () Bool)

(assert (=> b!7772878 (=> (not res!3098392) (not e!4605283))))

(declare-fun matchR!10227 (Regex!20767 List!73606) Bool)

(assert (=> b!7772878 (= res!3098392 (matchR!10227 lt!2671654 s!14292))))

(declare-fun r1!6279 () Regex!20767)

(declare-fun r2!6217 () Regex!20767)

(assert (=> b!7772878 (= lt!2671654 (Concat!29612 r1!6279 r2!6217))))

(declare-fun b!7772879 () Bool)

(declare-fun tp!2283663 () Bool)

(assert (=> b!7772879 (= e!4605284 tp!2283663)))

(declare-fun res!3098394 () Bool)

(assert (=> start!740154 (=> (not res!3098394) (not e!4605285))))

(assert (=> start!740154 (= res!3098394 (validRegex!11181 r1!6279))))

(assert (=> start!740154 e!4605285))

(assert (=> start!740154 e!4605284))

(assert (=> start!740154 e!4605282))

(assert (=> start!740154 e!4605281))

(declare-fun b!7772875 () Bool)

(declare-fun res!3098391 () Bool)

(assert (=> b!7772875 (=> (not res!3098391) (not e!4605285))))

(assert (=> b!7772875 (= res!3098391 (validRegex!11181 r2!6217))))

(assert (= (and start!740154 res!3098394) b!7772875))

(assert (= (and b!7772875 res!3098391) b!7772878))

(assert (= (and b!7772878 res!3098392) b!7772873))

(assert (= (and b!7772873 res!3098393) b!7772867))

(assert (= (and start!740154 ((_ is ElementMatch!20767) r1!6279)) b!7772876))

(assert (= (and start!740154 ((_ is Concat!29612) r1!6279)) b!7772874))

(assert (= (and start!740154 ((_ is Star!20767) r1!6279)) b!7772879))

(assert (= (and start!740154 ((_ is Union!20767) r1!6279)) b!7772871))

(assert (= (and start!740154 ((_ is ElementMatch!20767) r2!6217)) b!7772869))

(assert (= (and start!740154 ((_ is Concat!29612) r2!6217)) b!7772872))

(assert (= (and start!740154 ((_ is Star!20767) r2!6217)) b!7772870))

(assert (= (and start!740154 ((_ is Union!20767) r2!6217)) b!7772877))

(assert (= (and start!740154 ((_ is Cons!73482) s!14292)) b!7772868))

(declare-fun m!8225742 () Bool)

(assert (=> b!7772867 m!8225742))

(declare-fun m!8225744 () Bool)

(assert (=> b!7772878 m!8225744))

(declare-fun m!8225746 () Bool)

(assert (=> start!740154 m!8225746))

(declare-fun m!8225748 () Bool)

(assert (=> b!7772875 m!8225748))

(check-sat (not b!7772878) (not b!7772879) (not b!7772867) (not b!7772877) (not b!7772868) tp_is_empty!51889 (not b!7772875) (not b!7772872) (not start!740154) (not b!7772871) (not b!7772874) (not b!7772870))
(check-sat)
(get-model)

(declare-fun bm!720428 () Bool)

(declare-fun call!720433 () Bool)

(declare-fun isEmpty!42156 (List!73606) Bool)

(assert (=> bm!720428 (= call!720433 (isEmpty!42156 s!14292))))

(declare-fun b!7773050 () Bool)

(declare-fun e!4605373 () Bool)

(declare-fun lt!2671660 () Bool)

(assert (=> b!7773050 (= e!4605373 (not lt!2671660))))

(declare-fun b!7773051 () Bool)

(declare-fun res!3098465 () Bool)

(declare-fun e!4605376 () Bool)

(assert (=> b!7773051 (=> (not res!3098465) (not e!4605376))))

(assert (=> b!7773051 (= res!3098465 (not call!720433))))

(declare-fun b!7773052 () Bool)

(declare-fun e!4605374 () Bool)

(assert (=> b!7773052 (= e!4605374 e!4605373)))

(declare-fun c!1432622 () Bool)

(assert (=> b!7773052 (= c!1432622 ((_ is EmptyLang!20767) lt!2671654))))

(declare-fun b!7773053 () Bool)

(declare-fun res!3098462 () Bool)

(declare-fun e!4605371 () Bool)

(assert (=> b!7773053 (=> res!3098462 e!4605371)))

(assert (=> b!7773053 (= res!3098462 (not ((_ is ElementMatch!20767) lt!2671654)))))

(assert (=> b!7773053 (= e!4605373 e!4605371)))

(declare-fun b!7773054 () Bool)

(declare-fun e!4605377 () Bool)

(declare-fun derivativeStep!6110 (Regex!20767 C!41860) Regex!20767)

(declare-fun head!15892 (List!73606) C!41860)

(declare-fun tail!15433 (List!73606) List!73606)

(assert (=> b!7773054 (= e!4605377 (matchR!10227 (derivativeStep!6110 lt!2671654 (head!15892 s!14292)) (tail!15433 s!14292)))))

(declare-fun b!7773055 () Bool)

(declare-fun res!3098463 () Bool)

(assert (=> b!7773055 (=> res!3098463 e!4605371)))

(assert (=> b!7773055 (= res!3098463 e!4605376)))

(declare-fun res!3098467 () Bool)

(assert (=> b!7773055 (=> (not res!3098467) (not e!4605376))))

(assert (=> b!7773055 (= res!3098467 lt!2671660)))

(declare-fun b!7773056 () Bool)

(declare-fun e!4605372 () Bool)

(assert (=> b!7773056 (= e!4605371 e!4605372)))

(declare-fun res!3098464 () Bool)

(assert (=> b!7773056 (=> (not res!3098464) (not e!4605372))))

(assert (=> b!7773056 (= res!3098464 (not lt!2671660))))

(declare-fun b!7773057 () Bool)

(declare-fun nullable!9157 (Regex!20767) Bool)

(assert (=> b!7773057 (= e!4605377 (nullable!9157 lt!2671654))))

(declare-fun b!7773058 () Bool)

(declare-fun e!4605375 () Bool)

(assert (=> b!7773058 (= e!4605375 (not (= (head!15892 s!14292) (c!1432596 lt!2671654))))))

(declare-fun b!7773059 () Bool)

(assert (=> b!7773059 (= e!4605374 (= lt!2671660 call!720433))))

(declare-fun b!7773060 () Bool)

(assert (=> b!7773060 (= e!4605372 e!4605375)))

(declare-fun res!3098461 () Bool)

(assert (=> b!7773060 (=> res!3098461 e!4605375)))

(assert (=> b!7773060 (= res!3098461 call!720433)))

(declare-fun b!7773061 () Bool)

(declare-fun res!3098460 () Bool)

(assert (=> b!7773061 (=> res!3098460 e!4605375)))

(assert (=> b!7773061 (= res!3098460 (not (isEmpty!42156 (tail!15433 s!14292))))))

(declare-fun d!2344643 () Bool)

(assert (=> d!2344643 e!4605374))

(declare-fun c!1432624 () Bool)

(assert (=> d!2344643 (= c!1432624 ((_ is EmptyExpr!20767) lt!2671654))))

(assert (=> d!2344643 (= lt!2671660 e!4605377)))

(declare-fun c!1432623 () Bool)

(assert (=> d!2344643 (= c!1432623 (isEmpty!42156 s!14292))))

(assert (=> d!2344643 (validRegex!11181 lt!2671654)))

(assert (=> d!2344643 (= (matchR!10227 lt!2671654 s!14292) lt!2671660)))

(declare-fun b!7773062 () Bool)

(declare-fun res!3098466 () Bool)

(assert (=> b!7773062 (=> (not res!3098466) (not e!4605376))))

(assert (=> b!7773062 (= res!3098466 (isEmpty!42156 (tail!15433 s!14292)))))

(declare-fun b!7773063 () Bool)

(assert (=> b!7773063 (= e!4605376 (= (head!15892 s!14292) (c!1432596 lt!2671654)))))

(assert (= (and d!2344643 c!1432623) b!7773057))

(assert (= (and d!2344643 (not c!1432623)) b!7773054))

(assert (= (and d!2344643 c!1432624) b!7773059))

(assert (= (and d!2344643 (not c!1432624)) b!7773052))

(assert (= (and b!7773052 c!1432622) b!7773050))

(assert (= (and b!7773052 (not c!1432622)) b!7773053))

(assert (= (and b!7773053 (not res!3098462)) b!7773055))

(assert (= (and b!7773055 res!3098467) b!7773051))

(assert (= (and b!7773051 res!3098465) b!7773062))

(assert (= (and b!7773062 res!3098466) b!7773063))

(assert (= (and b!7773055 (not res!3098463)) b!7773056))

(assert (= (and b!7773056 res!3098464) b!7773060))

(assert (= (and b!7773060 (not res!3098461)) b!7773061))

(assert (= (and b!7773061 (not res!3098460)) b!7773058))

(assert (= (or b!7773059 b!7773051 b!7773060) bm!720428))

(declare-fun m!8225782 () Bool)

(assert (=> b!7773062 m!8225782))

(assert (=> b!7773062 m!8225782))

(declare-fun m!8225784 () Bool)

(assert (=> b!7773062 m!8225784))

(declare-fun m!8225786 () Bool)

(assert (=> d!2344643 m!8225786))

(assert (=> d!2344643 m!8225742))

(assert (=> b!7773061 m!8225782))

(assert (=> b!7773061 m!8225782))

(assert (=> b!7773061 m!8225784))

(declare-fun m!8225788 () Bool)

(assert (=> b!7773058 m!8225788))

(declare-fun m!8225790 () Bool)

(assert (=> b!7773057 m!8225790))

(assert (=> b!7773063 m!8225788))

(assert (=> bm!720428 m!8225786))

(assert (=> b!7773054 m!8225788))

(assert (=> b!7773054 m!8225788))

(declare-fun m!8225792 () Bool)

(assert (=> b!7773054 m!8225792))

(assert (=> b!7773054 m!8225782))

(assert (=> b!7773054 m!8225792))

(assert (=> b!7773054 m!8225782))

(declare-fun m!8225794 () Bool)

(assert (=> b!7773054 m!8225794))

(assert (=> b!7772878 d!2344643))

(declare-fun b!7773083 () Bool)

(declare-fun e!4605392 () Bool)

(declare-fun e!4605393 () Bool)

(assert (=> b!7773083 (= e!4605392 e!4605393)))

(declare-fun c!1432630 () Bool)

(assert (=> b!7773083 (= c!1432630 ((_ is Union!20767) lt!2671654))))

(declare-fun b!7773084 () Bool)

(declare-fun e!4605397 () Bool)

(declare-fun call!720441 () Bool)

(assert (=> b!7773084 (= e!4605397 call!720441)))

(declare-fun b!7773085 () Bool)

(declare-fun e!4605396 () Bool)

(declare-fun call!720442 () Bool)

(assert (=> b!7773085 (= e!4605396 call!720442)))

(declare-fun b!7773086 () Bool)

(declare-fun res!3098479 () Bool)

(declare-fun e!4605398 () Bool)

(assert (=> b!7773086 (=> res!3098479 e!4605398)))

(assert (=> b!7773086 (= res!3098479 (not ((_ is Concat!29612) lt!2671654)))))

(assert (=> b!7773086 (= e!4605393 e!4605398)))

(declare-fun c!1432629 () Bool)

(declare-fun bm!720435 () Bool)

(assert (=> bm!720435 (= call!720441 (validRegex!11181 (ite c!1432629 (reg!21096 lt!2671654) (ite c!1432630 (regTwo!42047 lt!2671654) (regTwo!42046 lt!2671654)))))))

(declare-fun b!7773087 () Bool)

(declare-fun res!3098481 () Bool)

(declare-fun e!4605394 () Bool)

(assert (=> b!7773087 (=> (not res!3098481) (not e!4605394))))

(declare-fun call!720440 () Bool)

(assert (=> b!7773087 (= res!3098481 call!720440)))

(assert (=> b!7773087 (= e!4605393 e!4605394)))

(declare-fun b!7773082 () Bool)

(assert (=> b!7773082 (= e!4605398 e!4605396)))

(declare-fun res!3098478 () Bool)

(assert (=> b!7773082 (=> (not res!3098478) (not e!4605396))))

(assert (=> b!7773082 (= res!3098478 call!720440)))

(declare-fun d!2344653 () Bool)

(declare-fun res!3098482 () Bool)

(declare-fun e!4605395 () Bool)

(assert (=> d!2344653 (=> res!3098482 e!4605395)))

(assert (=> d!2344653 (= res!3098482 ((_ is ElementMatch!20767) lt!2671654))))

(assert (=> d!2344653 (= (validRegex!11181 lt!2671654) e!4605395)))

(declare-fun b!7773088 () Bool)

(assert (=> b!7773088 (= e!4605394 call!720442)))

(declare-fun b!7773089 () Bool)

(assert (=> b!7773089 (= e!4605395 e!4605392)))

(assert (=> b!7773089 (= c!1432629 ((_ is Star!20767) lt!2671654))))

(declare-fun b!7773090 () Bool)

(assert (=> b!7773090 (= e!4605392 e!4605397)))

(declare-fun res!3098480 () Bool)

(assert (=> b!7773090 (= res!3098480 (not (nullable!9157 (reg!21096 lt!2671654))))))

(assert (=> b!7773090 (=> (not res!3098480) (not e!4605397))))

(declare-fun bm!720436 () Bool)

(assert (=> bm!720436 (= call!720442 call!720441)))

(declare-fun bm!720437 () Bool)

(assert (=> bm!720437 (= call!720440 (validRegex!11181 (ite c!1432630 (regOne!42047 lt!2671654) (regOne!42046 lt!2671654))))))

(assert (= (and d!2344653 (not res!3098482)) b!7773089))

(assert (= (and b!7773089 c!1432629) b!7773090))

(assert (= (and b!7773089 (not c!1432629)) b!7773083))

(assert (= (and b!7773090 res!3098480) b!7773084))

(assert (= (and b!7773083 c!1432630) b!7773087))

(assert (= (and b!7773083 (not c!1432630)) b!7773086))

(assert (= (and b!7773087 res!3098481) b!7773088))

(assert (= (and b!7773086 (not res!3098479)) b!7773082))

(assert (= (and b!7773082 res!3098478) b!7773085))

(assert (= (or b!7773087 b!7773082) bm!720437))

(assert (= (or b!7773088 b!7773085) bm!720436))

(assert (= (or b!7773084 bm!720436) bm!720435))

(declare-fun m!8225796 () Bool)

(assert (=> bm!720435 m!8225796))

(declare-fun m!8225798 () Bool)

(assert (=> b!7773090 m!8225798))

(declare-fun m!8225800 () Bool)

(assert (=> bm!720437 m!8225800))

(assert (=> b!7772867 d!2344653))

(declare-fun b!7773092 () Bool)

(declare-fun e!4605399 () Bool)

(declare-fun e!4605400 () Bool)

(assert (=> b!7773092 (= e!4605399 e!4605400)))

(declare-fun c!1432632 () Bool)

(assert (=> b!7773092 (= c!1432632 ((_ is Union!20767) r1!6279))))

(declare-fun b!7773093 () Bool)

(declare-fun e!4605404 () Bool)

(declare-fun call!720444 () Bool)

(assert (=> b!7773093 (= e!4605404 call!720444)))

(declare-fun b!7773094 () Bool)

(declare-fun e!4605403 () Bool)

(declare-fun call!720445 () Bool)

(assert (=> b!7773094 (= e!4605403 call!720445)))

(declare-fun b!7773095 () Bool)

(declare-fun res!3098484 () Bool)

(declare-fun e!4605405 () Bool)

(assert (=> b!7773095 (=> res!3098484 e!4605405)))

(assert (=> b!7773095 (= res!3098484 (not ((_ is Concat!29612) r1!6279)))))

(assert (=> b!7773095 (= e!4605400 e!4605405)))

(declare-fun bm!720438 () Bool)

(declare-fun c!1432631 () Bool)

(assert (=> bm!720438 (= call!720444 (validRegex!11181 (ite c!1432631 (reg!21096 r1!6279) (ite c!1432632 (regTwo!42047 r1!6279) (regTwo!42046 r1!6279)))))))

(declare-fun b!7773096 () Bool)

(declare-fun res!3098486 () Bool)

(declare-fun e!4605401 () Bool)

(assert (=> b!7773096 (=> (not res!3098486) (not e!4605401))))

(declare-fun call!720443 () Bool)

(assert (=> b!7773096 (= res!3098486 call!720443)))

(assert (=> b!7773096 (= e!4605400 e!4605401)))

(declare-fun b!7773091 () Bool)

(assert (=> b!7773091 (= e!4605405 e!4605403)))

(declare-fun res!3098483 () Bool)

(assert (=> b!7773091 (=> (not res!3098483) (not e!4605403))))

(assert (=> b!7773091 (= res!3098483 call!720443)))

(declare-fun d!2344655 () Bool)

(declare-fun res!3098487 () Bool)

(declare-fun e!4605402 () Bool)

(assert (=> d!2344655 (=> res!3098487 e!4605402)))

(assert (=> d!2344655 (= res!3098487 ((_ is ElementMatch!20767) r1!6279))))

(assert (=> d!2344655 (= (validRegex!11181 r1!6279) e!4605402)))

(declare-fun b!7773097 () Bool)

(assert (=> b!7773097 (= e!4605401 call!720445)))

(declare-fun b!7773098 () Bool)

(assert (=> b!7773098 (= e!4605402 e!4605399)))

(assert (=> b!7773098 (= c!1432631 ((_ is Star!20767) r1!6279))))

(declare-fun b!7773099 () Bool)

(assert (=> b!7773099 (= e!4605399 e!4605404)))

(declare-fun res!3098485 () Bool)

(assert (=> b!7773099 (= res!3098485 (not (nullable!9157 (reg!21096 r1!6279))))))

(assert (=> b!7773099 (=> (not res!3098485) (not e!4605404))))

(declare-fun bm!720439 () Bool)

(assert (=> bm!720439 (= call!720445 call!720444)))

(declare-fun bm!720440 () Bool)

(assert (=> bm!720440 (= call!720443 (validRegex!11181 (ite c!1432632 (regOne!42047 r1!6279) (regOne!42046 r1!6279))))))

(assert (= (and d!2344655 (not res!3098487)) b!7773098))

(assert (= (and b!7773098 c!1432631) b!7773099))

(assert (= (and b!7773098 (not c!1432631)) b!7773092))

(assert (= (and b!7773099 res!3098485) b!7773093))

(assert (= (and b!7773092 c!1432632) b!7773096))

(assert (= (and b!7773092 (not c!1432632)) b!7773095))

(assert (= (and b!7773096 res!3098486) b!7773097))

(assert (= (and b!7773095 (not res!3098484)) b!7773091))

(assert (= (and b!7773091 res!3098483) b!7773094))

(assert (= (or b!7773096 b!7773091) bm!720440))

(assert (= (or b!7773097 b!7773094) bm!720439))

(assert (= (or b!7773093 bm!720439) bm!720438))

(declare-fun m!8225802 () Bool)

(assert (=> bm!720438 m!8225802))

(declare-fun m!8225804 () Bool)

(assert (=> b!7773099 m!8225804))

(declare-fun m!8225806 () Bool)

(assert (=> bm!720440 m!8225806))

(assert (=> start!740154 d!2344655))

(declare-fun b!7773101 () Bool)

(declare-fun e!4605406 () Bool)

(declare-fun e!4605407 () Bool)

(assert (=> b!7773101 (= e!4605406 e!4605407)))

(declare-fun c!1432634 () Bool)

(assert (=> b!7773101 (= c!1432634 ((_ is Union!20767) r2!6217))))

(declare-fun b!7773102 () Bool)

(declare-fun e!4605411 () Bool)

(declare-fun call!720447 () Bool)

(assert (=> b!7773102 (= e!4605411 call!720447)))

(declare-fun b!7773103 () Bool)

(declare-fun e!4605410 () Bool)

(declare-fun call!720448 () Bool)

(assert (=> b!7773103 (= e!4605410 call!720448)))

(declare-fun b!7773104 () Bool)

(declare-fun res!3098489 () Bool)

(declare-fun e!4605412 () Bool)

(assert (=> b!7773104 (=> res!3098489 e!4605412)))

(assert (=> b!7773104 (= res!3098489 (not ((_ is Concat!29612) r2!6217)))))

(assert (=> b!7773104 (= e!4605407 e!4605412)))

(declare-fun c!1432633 () Bool)

(declare-fun bm!720441 () Bool)

(assert (=> bm!720441 (= call!720447 (validRegex!11181 (ite c!1432633 (reg!21096 r2!6217) (ite c!1432634 (regTwo!42047 r2!6217) (regTwo!42046 r2!6217)))))))

(declare-fun b!7773105 () Bool)

(declare-fun res!3098491 () Bool)

(declare-fun e!4605408 () Bool)

(assert (=> b!7773105 (=> (not res!3098491) (not e!4605408))))

(declare-fun call!720446 () Bool)

(assert (=> b!7773105 (= res!3098491 call!720446)))

(assert (=> b!7773105 (= e!4605407 e!4605408)))

(declare-fun b!7773100 () Bool)

(assert (=> b!7773100 (= e!4605412 e!4605410)))

(declare-fun res!3098488 () Bool)

(assert (=> b!7773100 (=> (not res!3098488) (not e!4605410))))

(assert (=> b!7773100 (= res!3098488 call!720446)))

(declare-fun d!2344657 () Bool)

(declare-fun res!3098492 () Bool)

(declare-fun e!4605409 () Bool)

(assert (=> d!2344657 (=> res!3098492 e!4605409)))

(assert (=> d!2344657 (= res!3098492 ((_ is ElementMatch!20767) r2!6217))))

(assert (=> d!2344657 (= (validRegex!11181 r2!6217) e!4605409)))

(declare-fun b!7773106 () Bool)

(assert (=> b!7773106 (= e!4605408 call!720448)))

(declare-fun b!7773107 () Bool)

(assert (=> b!7773107 (= e!4605409 e!4605406)))

(assert (=> b!7773107 (= c!1432633 ((_ is Star!20767) r2!6217))))

(declare-fun b!7773108 () Bool)

(assert (=> b!7773108 (= e!4605406 e!4605411)))

(declare-fun res!3098490 () Bool)

(assert (=> b!7773108 (= res!3098490 (not (nullable!9157 (reg!21096 r2!6217))))))

(assert (=> b!7773108 (=> (not res!3098490) (not e!4605411))))

(declare-fun bm!720442 () Bool)

(assert (=> bm!720442 (= call!720448 call!720447)))

(declare-fun bm!720443 () Bool)

(assert (=> bm!720443 (= call!720446 (validRegex!11181 (ite c!1432634 (regOne!42047 r2!6217) (regOne!42046 r2!6217))))))

(assert (= (and d!2344657 (not res!3098492)) b!7773107))

(assert (= (and b!7773107 c!1432633) b!7773108))

(assert (= (and b!7773107 (not c!1432633)) b!7773101))

(assert (= (and b!7773108 res!3098490) b!7773102))

(assert (= (and b!7773101 c!1432634) b!7773105))

(assert (= (and b!7773101 (not c!1432634)) b!7773104))

(assert (= (and b!7773105 res!3098491) b!7773106))

(assert (= (and b!7773104 (not res!3098489)) b!7773100))

(assert (= (and b!7773100 res!3098488) b!7773103))

(assert (= (or b!7773105 b!7773100) bm!720443))

(assert (= (or b!7773106 b!7773103) bm!720442))

(assert (= (or b!7773102 bm!720442) bm!720441))

(declare-fun m!8225808 () Bool)

(assert (=> bm!720441 m!8225808))

(declare-fun m!8225810 () Bool)

(assert (=> b!7773108 m!8225810))

(declare-fun m!8225812 () Bool)

(assert (=> bm!720443 m!8225812))

(assert (=> b!7772875 d!2344657))

(declare-fun b!7773120 () Bool)

(declare-fun e!4605415 () Bool)

(declare-fun tp!2283748 () Bool)

(declare-fun tp!2283745 () Bool)

(assert (=> b!7773120 (= e!4605415 (and tp!2283748 tp!2283745))))

(declare-fun b!7773119 () Bool)

(assert (=> b!7773119 (= e!4605415 tp_is_empty!51889)))

(declare-fun b!7773122 () Bool)

(declare-fun tp!2283747 () Bool)

(declare-fun tp!2283746 () Bool)

(assert (=> b!7773122 (= e!4605415 (and tp!2283747 tp!2283746))))

(declare-fun b!7773121 () Bool)

(declare-fun tp!2283749 () Bool)

(assert (=> b!7773121 (= e!4605415 tp!2283749)))

(assert (=> b!7772874 (= tp!2283661 e!4605415)))

(assert (= (and b!7772874 ((_ is ElementMatch!20767) (regOne!42046 r1!6279))) b!7773119))

(assert (= (and b!7772874 ((_ is Concat!29612) (regOne!42046 r1!6279))) b!7773120))

(assert (= (and b!7772874 ((_ is Star!20767) (regOne!42046 r1!6279))) b!7773121))

(assert (= (and b!7772874 ((_ is Union!20767) (regOne!42046 r1!6279))) b!7773122))

(declare-fun b!7773124 () Bool)

(declare-fun e!4605416 () Bool)

(declare-fun tp!2283753 () Bool)

(declare-fun tp!2283750 () Bool)

(assert (=> b!7773124 (= e!4605416 (and tp!2283753 tp!2283750))))

(declare-fun b!7773123 () Bool)

(assert (=> b!7773123 (= e!4605416 tp_is_empty!51889)))

(declare-fun b!7773126 () Bool)

(declare-fun tp!2283752 () Bool)

(declare-fun tp!2283751 () Bool)

(assert (=> b!7773126 (= e!4605416 (and tp!2283752 tp!2283751))))

(declare-fun b!7773125 () Bool)

(declare-fun tp!2283754 () Bool)

(assert (=> b!7773125 (= e!4605416 tp!2283754)))

(assert (=> b!7772874 (= tp!2283662 e!4605416)))

(assert (= (and b!7772874 ((_ is ElementMatch!20767) (regTwo!42046 r1!6279))) b!7773123))

(assert (= (and b!7772874 ((_ is Concat!29612) (regTwo!42046 r1!6279))) b!7773124))

(assert (= (and b!7772874 ((_ is Star!20767) (regTwo!42046 r1!6279))) b!7773125))

(assert (= (and b!7772874 ((_ is Union!20767) (regTwo!42046 r1!6279))) b!7773126))

(declare-fun b!7773128 () Bool)

(declare-fun e!4605417 () Bool)

(declare-fun tp!2283758 () Bool)

(declare-fun tp!2283755 () Bool)

(assert (=> b!7773128 (= e!4605417 (and tp!2283758 tp!2283755))))

(declare-fun b!7773127 () Bool)

(assert (=> b!7773127 (= e!4605417 tp_is_empty!51889)))

(declare-fun b!7773130 () Bool)

(declare-fun tp!2283757 () Bool)

(declare-fun tp!2283756 () Bool)

(assert (=> b!7773130 (= e!4605417 (and tp!2283757 tp!2283756))))

(declare-fun b!7773129 () Bool)

(declare-fun tp!2283759 () Bool)

(assert (=> b!7773129 (= e!4605417 tp!2283759)))

(assert (=> b!7772879 (= tp!2283663 e!4605417)))

(assert (= (and b!7772879 ((_ is ElementMatch!20767) (reg!21096 r1!6279))) b!7773127))

(assert (= (and b!7772879 ((_ is Concat!29612) (reg!21096 r1!6279))) b!7773128))

(assert (= (and b!7772879 ((_ is Star!20767) (reg!21096 r1!6279))) b!7773129))

(assert (= (and b!7772879 ((_ is Union!20767) (reg!21096 r1!6279))) b!7773130))

(declare-fun b!7773135 () Bool)

(declare-fun e!4605420 () Bool)

(declare-fun tp!2283762 () Bool)

(assert (=> b!7773135 (= e!4605420 (and tp_is_empty!51889 tp!2283762))))

(assert (=> b!7772868 (= tp!2283667 e!4605420)))

(assert (= (and b!7772868 ((_ is Cons!73482) (t!388341 s!14292))) b!7773135))

(declare-fun b!7773137 () Bool)

(declare-fun e!4605421 () Bool)

(declare-fun tp!2283766 () Bool)

(declare-fun tp!2283763 () Bool)

(assert (=> b!7773137 (= e!4605421 (and tp!2283766 tp!2283763))))

(declare-fun b!7773136 () Bool)

(assert (=> b!7773136 (= e!4605421 tp_is_empty!51889)))

(declare-fun b!7773139 () Bool)

(declare-fun tp!2283765 () Bool)

(declare-fun tp!2283764 () Bool)

(assert (=> b!7773139 (= e!4605421 (and tp!2283765 tp!2283764))))

(declare-fun b!7773138 () Bool)

(declare-fun tp!2283767 () Bool)

(assert (=> b!7773138 (= e!4605421 tp!2283767)))

(assert (=> b!7772872 (= tp!2283668 e!4605421)))

(assert (= (and b!7772872 ((_ is ElementMatch!20767) (regOne!42046 r2!6217))) b!7773136))

(assert (= (and b!7772872 ((_ is Concat!29612) (regOne!42046 r2!6217))) b!7773137))

(assert (= (and b!7772872 ((_ is Star!20767) (regOne!42046 r2!6217))) b!7773138))

(assert (= (and b!7772872 ((_ is Union!20767) (regOne!42046 r2!6217))) b!7773139))

(declare-fun b!7773141 () Bool)

(declare-fun e!4605422 () Bool)

(declare-fun tp!2283771 () Bool)

(declare-fun tp!2283768 () Bool)

(assert (=> b!7773141 (= e!4605422 (and tp!2283771 tp!2283768))))

(declare-fun b!7773140 () Bool)

(assert (=> b!7773140 (= e!4605422 tp_is_empty!51889)))

(declare-fun b!7773143 () Bool)

(declare-fun tp!2283770 () Bool)

(declare-fun tp!2283769 () Bool)

(assert (=> b!7773143 (= e!4605422 (and tp!2283770 tp!2283769))))

(declare-fun b!7773142 () Bool)

(declare-fun tp!2283772 () Bool)

(assert (=> b!7773142 (= e!4605422 tp!2283772)))

(assert (=> b!7772872 (= tp!2283669 e!4605422)))

(assert (= (and b!7772872 ((_ is ElementMatch!20767) (regTwo!42046 r2!6217))) b!7773140))

(assert (= (and b!7772872 ((_ is Concat!29612) (regTwo!42046 r2!6217))) b!7773141))

(assert (= (and b!7772872 ((_ is Star!20767) (regTwo!42046 r2!6217))) b!7773142))

(assert (= (and b!7772872 ((_ is Union!20767) (regTwo!42046 r2!6217))) b!7773143))

(declare-fun b!7773145 () Bool)

(declare-fun e!4605423 () Bool)

(declare-fun tp!2283776 () Bool)

(declare-fun tp!2283773 () Bool)

(assert (=> b!7773145 (= e!4605423 (and tp!2283776 tp!2283773))))

(declare-fun b!7773144 () Bool)

(assert (=> b!7773144 (= e!4605423 tp_is_empty!51889)))

(declare-fun b!7773147 () Bool)

(declare-fun tp!2283775 () Bool)

(declare-fun tp!2283774 () Bool)

(assert (=> b!7773147 (= e!4605423 (and tp!2283775 tp!2283774))))

(declare-fun b!7773146 () Bool)

(declare-fun tp!2283777 () Bool)

(assert (=> b!7773146 (= e!4605423 tp!2283777)))

(assert (=> b!7772877 (= tp!2283664 e!4605423)))

(assert (= (and b!7772877 ((_ is ElementMatch!20767) (regOne!42047 r2!6217))) b!7773144))

(assert (= (and b!7772877 ((_ is Concat!29612) (regOne!42047 r2!6217))) b!7773145))

(assert (= (and b!7772877 ((_ is Star!20767) (regOne!42047 r2!6217))) b!7773146))

(assert (= (and b!7772877 ((_ is Union!20767) (regOne!42047 r2!6217))) b!7773147))

(declare-fun b!7773149 () Bool)

(declare-fun e!4605424 () Bool)

(declare-fun tp!2283781 () Bool)

(declare-fun tp!2283778 () Bool)

(assert (=> b!7773149 (= e!4605424 (and tp!2283781 tp!2283778))))

(declare-fun b!7773148 () Bool)

(assert (=> b!7773148 (= e!4605424 tp_is_empty!51889)))

(declare-fun b!7773151 () Bool)

(declare-fun tp!2283780 () Bool)

(declare-fun tp!2283779 () Bool)

(assert (=> b!7773151 (= e!4605424 (and tp!2283780 tp!2283779))))

(declare-fun b!7773150 () Bool)

(declare-fun tp!2283782 () Bool)

(assert (=> b!7773150 (= e!4605424 tp!2283782)))

(assert (=> b!7772877 (= tp!2283670 e!4605424)))

(assert (= (and b!7772877 ((_ is ElementMatch!20767) (regTwo!42047 r2!6217))) b!7773148))

(assert (= (and b!7772877 ((_ is Concat!29612) (regTwo!42047 r2!6217))) b!7773149))

(assert (= (and b!7772877 ((_ is Star!20767) (regTwo!42047 r2!6217))) b!7773150))

(assert (= (and b!7772877 ((_ is Union!20767) (regTwo!42047 r2!6217))) b!7773151))

(declare-fun b!7773153 () Bool)

(declare-fun e!4605425 () Bool)

(declare-fun tp!2283786 () Bool)

(declare-fun tp!2283783 () Bool)

(assert (=> b!7773153 (= e!4605425 (and tp!2283786 tp!2283783))))

(declare-fun b!7773152 () Bool)

(assert (=> b!7773152 (= e!4605425 tp_is_empty!51889)))

(declare-fun b!7773155 () Bool)

(declare-fun tp!2283785 () Bool)

(declare-fun tp!2283784 () Bool)

(assert (=> b!7773155 (= e!4605425 (and tp!2283785 tp!2283784))))

(declare-fun b!7773154 () Bool)

(declare-fun tp!2283787 () Bool)

(assert (=> b!7773154 (= e!4605425 tp!2283787)))

(assert (=> b!7772871 (= tp!2283671 e!4605425)))

(assert (= (and b!7772871 ((_ is ElementMatch!20767) (regOne!42047 r1!6279))) b!7773152))

(assert (= (and b!7772871 ((_ is Concat!29612) (regOne!42047 r1!6279))) b!7773153))

(assert (= (and b!7772871 ((_ is Star!20767) (regOne!42047 r1!6279))) b!7773154))

(assert (= (and b!7772871 ((_ is Union!20767) (regOne!42047 r1!6279))) b!7773155))

(declare-fun b!7773157 () Bool)

(declare-fun e!4605426 () Bool)

(declare-fun tp!2283791 () Bool)

(declare-fun tp!2283788 () Bool)

(assert (=> b!7773157 (= e!4605426 (and tp!2283791 tp!2283788))))

(declare-fun b!7773156 () Bool)

(assert (=> b!7773156 (= e!4605426 tp_is_empty!51889)))

(declare-fun b!7773159 () Bool)

(declare-fun tp!2283790 () Bool)

(declare-fun tp!2283789 () Bool)

(assert (=> b!7773159 (= e!4605426 (and tp!2283790 tp!2283789))))

(declare-fun b!7773158 () Bool)

(declare-fun tp!2283792 () Bool)

(assert (=> b!7773158 (= e!4605426 tp!2283792)))

(assert (=> b!7772871 (= tp!2283665 e!4605426)))

(assert (= (and b!7772871 ((_ is ElementMatch!20767) (regTwo!42047 r1!6279))) b!7773156))

(assert (= (and b!7772871 ((_ is Concat!29612) (regTwo!42047 r1!6279))) b!7773157))

(assert (= (and b!7772871 ((_ is Star!20767) (regTwo!42047 r1!6279))) b!7773158))

(assert (= (and b!7772871 ((_ is Union!20767) (regTwo!42047 r1!6279))) b!7773159))

(declare-fun b!7773161 () Bool)

(declare-fun e!4605427 () Bool)

(declare-fun tp!2283796 () Bool)

(declare-fun tp!2283793 () Bool)

(assert (=> b!7773161 (= e!4605427 (and tp!2283796 tp!2283793))))

(declare-fun b!7773160 () Bool)

(assert (=> b!7773160 (= e!4605427 tp_is_empty!51889)))

(declare-fun b!7773163 () Bool)

(declare-fun tp!2283795 () Bool)

(declare-fun tp!2283794 () Bool)

(assert (=> b!7773163 (= e!4605427 (and tp!2283795 tp!2283794))))

(declare-fun b!7773162 () Bool)

(declare-fun tp!2283797 () Bool)

(assert (=> b!7773162 (= e!4605427 tp!2283797)))

(assert (=> b!7772870 (= tp!2283666 e!4605427)))

(assert (= (and b!7772870 ((_ is ElementMatch!20767) (reg!21096 r2!6217))) b!7773160))

(assert (= (and b!7772870 ((_ is Concat!29612) (reg!21096 r2!6217))) b!7773161))

(assert (= (and b!7772870 ((_ is Star!20767) (reg!21096 r2!6217))) b!7773162))

(assert (= (and b!7772870 ((_ is Union!20767) (reg!21096 r2!6217))) b!7773163))

(check-sat (not bm!720438) (not b!7773090) (not b!7773150) (not b!7773161) (not b!7773149) (not b!7773120) (not b!7773143) (not b!7773159) (not b!7773153) (not b!7773126) (not b!7773139) (not b!7773108) (not b!7773057) (not b!7773146) (not b!7773162) (not b!7773129) (not b!7773138) (not b!7773124) (not bm!720441) (not b!7773130) (not bm!720428) (not b!7773062) (not d!2344643) (not b!7773145) (not b!7773163) (not bm!720435) (not b!7773058) (not b!7773135) (not b!7773063) (not b!7773142) (not b!7773121) (not b!7773099) (not bm!720440) (not b!7773155) (not b!7773137) (not b!7773128) (not b!7773141) tp_is_empty!51889 (not b!7773157) (not b!7773154) (not b!7773151) (not bm!720443) (not b!7773125) (not b!7773147) (not b!7773061) (not b!7773122) (not b!7773054) (not bm!720437) (not b!7773158))
(check-sat)
