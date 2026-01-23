; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!737756 () Bool)

(assert start!737756)

(declare-fun b!7725529 () Bool)

(assert (=> b!7725529 true))

(assert (=> b!7725529 true))

(declare-fun b!7725521 () Bool)

(declare-fun e!4581977 () Bool)

(declare-datatypes ((C!41444 0))(
  ( (C!41445 (val!31162 Int)) )
))
(declare-datatypes ((Regex!20559 0))(
  ( (ElementMatch!20559 (c!1424144 C!41444)) (Concat!29404 (regOne!41630 Regex!20559) (regTwo!41630 Regex!20559)) (EmptyExpr!20559) (Star!20559 (reg!20888 Regex!20559)) (EmptyLang!20559) (Union!20559 (regOne!41631 Regex!20559) (regTwo!41631 Regex!20559)) )
))
(declare-fun r!14126 () Regex!20559)

(declare-fun validRegex!10977 (Regex!20559) Bool)

(assert (=> b!7725521 (= e!4581977 (validRegex!10977 (regTwo!41630 r!14126)))))

(declare-datatypes ((List!73406 0))(
  ( (Nil!73282) (Cons!73282 (h!79730 C!41444) (t!388141 List!73406)) )
))
(declare-datatypes ((tuple2!69572 0))(
  ( (tuple2!69573 (_1!38089 List!73406) (_2!38089 List!73406)) )
))
(declare-fun lt!2666670 () tuple2!69572)

(declare-fun matchR!10051 (Regex!20559 List!73406) Bool)

(declare-fun matchRSpec!4635 (Regex!20559 List!73406) Bool)

(assert (=> b!7725521 (= (matchR!10051 (regOne!41630 r!14126) (_1!38089 lt!2666670)) (matchRSpec!4635 (regOne!41630 r!14126) (_1!38089 lt!2666670)))))

(declare-datatypes ((Unit!168190 0))(
  ( (Unit!168191) )
))
(declare-fun lt!2666672 () Unit!168190)

(declare-fun mainMatchTheorem!4608 (Regex!20559 List!73406) Unit!168190)

(assert (=> b!7725521 (= lt!2666672 (mainMatchTheorem!4608 (regOne!41630 r!14126) (_1!38089 lt!2666670)))))

(declare-fun lambda!471165 () Int)

(declare-fun pickWitness!526 (Int) tuple2!69572)

(assert (=> b!7725521 (= lt!2666670 (pickWitness!526 lambda!471165))))

(declare-fun b!7725523 () Bool)

(declare-fun e!4581979 () Bool)

(declare-fun tp!2266833 () Bool)

(declare-fun tp!2266836 () Bool)

(assert (=> b!7725523 (= e!4581979 (and tp!2266833 tp!2266836))))

(declare-fun b!7725524 () Bool)

(declare-fun e!4581978 () Bool)

(assert (=> b!7725524 (= e!4581978 e!4581977)))

(declare-fun res!3082053 () Bool)

(assert (=> b!7725524 (=> res!3082053 e!4581977)))

(declare-fun Exists!4680 (Int) Bool)

(assert (=> b!7725524 (= res!3082053 (not (Exists!4680 lambda!471165)))))

(declare-fun lt!2666671 () Bool)

(assert (=> b!7725524 lt!2666671))

(declare-fun lt!2666674 () Unit!168190)

(declare-fun s!9605 () List!73406)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!322 (Regex!20559 Regex!20559 List!73406) Unit!168190)

(assert (=> b!7725524 (= lt!2666674 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!322 (regOne!41630 r!14126) (regTwo!41630 r!14126) s!9605))))

(declare-fun b!7725525 () Bool)

(declare-fun e!4581975 () Bool)

(declare-fun tp_is_empty!51473 () Bool)

(declare-fun tp!2266832 () Bool)

(assert (=> b!7725525 (= e!4581975 (and tp_is_empty!51473 tp!2266832))))

(declare-fun b!7725526 () Bool)

(assert (=> b!7725526 (= e!4581979 tp_is_empty!51473)))

(declare-fun b!7725527 () Bool)

(declare-fun tp!2266837 () Bool)

(assert (=> b!7725527 (= e!4581979 tp!2266837)))

(declare-fun res!3082054 () Bool)

(declare-fun e!4581976 () Bool)

(assert (=> start!737756 (=> (not res!3082054) (not e!4581976))))

(assert (=> start!737756 (= res!3082054 (validRegex!10977 r!14126))))

(assert (=> start!737756 e!4581976))

(assert (=> start!737756 e!4581979))

(assert (=> start!737756 e!4581975))

(declare-fun b!7725522 () Bool)

(declare-fun tp!2266834 () Bool)

(declare-fun tp!2266835 () Bool)

(assert (=> b!7725522 (= e!4581979 (and tp!2266834 tp!2266835))))

(declare-fun b!7725528 () Bool)

(declare-fun res!3082051 () Bool)

(assert (=> b!7725528 (=> (not res!3082051) (not e!4581976))))

(get-info :version)

(assert (=> b!7725528 (= res!3082051 (and (not ((_ is EmptyExpr!20559) r!14126)) (not ((_ is EmptyLang!20559) r!14126)) (not ((_ is ElementMatch!20559) r!14126)) (not ((_ is Union!20559) r!14126)) (not ((_ is Star!20559) r!14126))))))

(assert (=> b!7725529 (= e!4581976 (not e!4581978))))

(declare-fun res!3082052 () Bool)

(assert (=> b!7725529 (=> res!3082052 e!4581978)))

(assert (=> b!7725529 (= res!3082052 (not (matchR!10051 r!14126 s!9605)))))

(assert (=> b!7725529 (= lt!2666671 (Exists!4680 lambda!471165))))

(declare-datatypes ((Option!17580 0))(
  ( (None!17579) (Some!17579 (v!54714 tuple2!69572)) )
))
(declare-fun isDefined!14196 (Option!17580) Bool)

(declare-fun findConcatSeparation!3610 (Regex!20559 Regex!20559 List!73406 List!73406 List!73406) Option!17580)

(assert (=> b!7725529 (= lt!2666671 (isDefined!14196 (findConcatSeparation!3610 (regOne!41630 r!14126) (regTwo!41630 r!14126) Nil!73282 s!9605 s!9605)))))

(declare-fun lt!2666673 () Unit!168190)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3368 (Regex!20559 Regex!20559 List!73406) Unit!168190)

(assert (=> b!7725529 (= lt!2666673 (lemmaFindConcatSeparationEquivalentToExists!3368 (regOne!41630 r!14126) (regTwo!41630 r!14126) s!9605))))

(assert (= (and start!737756 res!3082054) b!7725528))

(assert (= (and b!7725528 res!3082051) b!7725529))

(assert (= (and b!7725529 (not res!3082052)) b!7725524))

(assert (= (and b!7725524 (not res!3082053)) b!7725521))

(assert (= (and start!737756 ((_ is ElementMatch!20559) r!14126)) b!7725526))

(assert (= (and start!737756 ((_ is Concat!29404) r!14126)) b!7725523))

(assert (= (and start!737756 ((_ is Star!20559) r!14126)) b!7725527))

(assert (= (and start!737756 ((_ is Union!20559) r!14126)) b!7725522))

(assert (= (and start!737756 ((_ is Cons!73282) s!9605)) b!7725525))

(declare-fun m!8202526 () Bool)

(assert (=> b!7725521 m!8202526))

(declare-fun m!8202528 () Bool)

(assert (=> b!7725521 m!8202528))

(declare-fun m!8202530 () Bool)

(assert (=> b!7725521 m!8202530))

(declare-fun m!8202532 () Bool)

(assert (=> b!7725521 m!8202532))

(declare-fun m!8202534 () Bool)

(assert (=> b!7725521 m!8202534))

(declare-fun m!8202536 () Bool)

(assert (=> b!7725524 m!8202536))

(declare-fun m!8202538 () Bool)

(assert (=> b!7725524 m!8202538))

(declare-fun m!8202540 () Bool)

(assert (=> start!737756 m!8202540))

(assert (=> b!7725529 m!8202536))

(declare-fun m!8202542 () Bool)

(assert (=> b!7725529 m!8202542))

(declare-fun m!8202544 () Bool)

(assert (=> b!7725529 m!8202544))

(declare-fun m!8202546 () Bool)

(assert (=> b!7725529 m!8202546))

(assert (=> b!7725529 m!8202544))

(declare-fun m!8202548 () Bool)

(assert (=> b!7725529 m!8202548))

(check-sat (not start!737756) (not b!7725527) tp_is_empty!51473 (not b!7725523) (not b!7725521) (not b!7725525) (not b!7725524) (not b!7725522) (not b!7725529))
(check-sat)
(get-model)

(declare-fun d!2338449 () Bool)

(declare-fun choose!59280 (Int) Bool)

(assert (=> d!2338449 (= (Exists!4680 lambda!471165) (choose!59280 lambda!471165))))

(declare-fun bs!1963111 () Bool)

(assert (= bs!1963111 d!2338449))

(declare-fun m!8202550 () Bool)

(assert (=> bs!1963111 m!8202550))

(assert (=> b!7725524 d!2338449))

(declare-fun d!2338451 () Bool)

(assert (=> d!2338451 (isDefined!14196 (findConcatSeparation!3610 (regOne!41630 r!14126) (regTwo!41630 r!14126) Nil!73282 s!9605 s!9605))))

(declare-fun lt!2666680 () Unit!168190)

(declare-fun choose!59281 (Regex!20559 Regex!20559 List!73406) Unit!168190)

(assert (=> d!2338451 (= lt!2666680 (choose!59281 (regOne!41630 r!14126) (regTwo!41630 r!14126) s!9605))))

(assert (=> d!2338451 (validRegex!10977 (regOne!41630 r!14126))))

(assert (=> d!2338451 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!322 (regOne!41630 r!14126) (regTwo!41630 r!14126) s!9605) lt!2666680)))

(declare-fun bs!1963113 () Bool)

(assert (= bs!1963113 d!2338451))

(assert (=> bs!1963113 m!8202544))

(assert (=> bs!1963113 m!8202544))

(assert (=> bs!1963113 m!8202548))

(declare-fun m!8202568 () Bool)

(assert (=> bs!1963113 m!8202568))

(declare-fun m!8202570 () Bool)

(assert (=> bs!1963113 m!8202570))

(assert (=> b!7725524 d!2338451))

(declare-fun b!7725622 () Bool)

(declare-fun res!3082105 () Bool)

(declare-fun e!4582026 () Bool)

(assert (=> b!7725622 (=> (not res!3082105) (not e!4582026))))

(declare-fun isEmpty!41952 (List!73406) Bool)

(declare-fun tail!15334 (List!73406) List!73406)

(assert (=> b!7725622 (= res!3082105 (isEmpty!41952 (tail!15334 s!9605)))))

(declare-fun bm!714471 () Bool)

(declare-fun call!714476 () Bool)

(assert (=> bm!714471 (= call!714476 (isEmpty!41952 s!9605))))

(declare-fun b!7725623 () Bool)

(declare-fun e!4582025 () Bool)

(declare-fun e!4582028 () Bool)

(assert (=> b!7725623 (= e!4582025 e!4582028)))

(declare-fun res!3082108 () Bool)

(assert (=> b!7725623 (=> res!3082108 e!4582028)))

(assert (=> b!7725623 (= res!3082108 call!714476)))

(declare-fun b!7725624 () Bool)

(declare-fun res!3082106 () Bool)

(assert (=> b!7725624 (=> (not res!3082106) (not e!4582026))))

(assert (=> b!7725624 (= res!3082106 (not call!714476))))

(declare-fun b!7725625 () Bool)

(declare-fun e!4582027 () Bool)

(declare-fun lt!2666689 () Bool)

(assert (=> b!7725625 (= e!4582027 (not lt!2666689))))

(declare-fun b!7725626 () Bool)

(declare-fun e!4582029 () Bool)

(declare-fun nullable!9034 (Regex!20559) Bool)

(assert (=> b!7725626 (= e!4582029 (nullable!9034 r!14126))))

(declare-fun d!2338457 () Bool)

(declare-fun e!4582030 () Bool)

(assert (=> d!2338457 e!4582030))

(declare-fun c!1424166 () Bool)

(assert (=> d!2338457 (= c!1424166 ((_ is EmptyExpr!20559) r!14126))))

(assert (=> d!2338457 (= lt!2666689 e!4582029)))

(declare-fun c!1424164 () Bool)

(assert (=> d!2338457 (= c!1424164 (isEmpty!41952 s!9605))))

(assert (=> d!2338457 (validRegex!10977 r!14126)))

(assert (=> d!2338457 (= (matchR!10051 r!14126 s!9605) lt!2666689)))

(declare-fun b!7725627 () Bool)

(declare-fun res!3082111 () Bool)

(assert (=> b!7725627 (=> res!3082111 e!4582028)))

(assert (=> b!7725627 (= res!3082111 (not (isEmpty!41952 (tail!15334 s!9605))))))

(declare-fun b!7725628 () Bool)

(assert (=> b!7725628 (= e!4582030 e!4582027)))

(declare-fun c!1424165 () Bool)

(assert (=> b!7725628 (= c!1424165 ((_ is EmptyLang!20559) r!14126))))

(declare-fun b!7725629 () Bool)

(declare-fun res!3082107 () Bool)

(declare-fun e!4582031 () Bool)

(assert (=> b!7725629 (=> res!3082107 e!4582031)))

(assert (=> b!7725629 (= res!3082107 (not ((_ is ElementMatch!20559) r!14126)))))

(assert (=> b!7725629 (= e!4582027 e!4582031)))

(declare-fun b!7725630 () Bool)

(declare-fun head!15794 (List!73406) C!41444)

(assert (=> b!7725630 (= e!4582028 (not (= (head!15794 s!9605) (c!1424144 r!14126))))))

(declare-fun b!7725631 () Bool)

(assert (=> b!7725631 (= e!4582026 (= (head!15794 s!9605) (c!1424144 r!14126)))))

(declare-fun b!7725632 () Bool)

(assert (=> b!7725632 (= e!4582030 (= lt!2666689 call!714476))))

(declare-fun b!7725633 () Bool)

(assert (=> b!7725633 (= e!4582031 e!4582025)))

(declare-fun res!3082110 () Bool)

(assert (=> b!7725633 (=> (not res!3082110) (not e!4582025))))

(assert (=> b!7725633 (= res!3082110 (not lt!2666689))))

(declare-fun b!7725634 () Bool)

(declare-fun derivativeStep!5994 (Regex!20559 C!41444) Regex!20559)

(assert (=> b!7725634 (= e!4582029 (matchR!10051 (derivativeStep!5994 r!14126 (head!15794 s!9605)) (tail!15334 s!9605)))))

(declare-fun b!7725635 () Bool)

(declare-fun res!3082112 () Bool)

(assert (=> b!7725635 (=> res!3082112 e!4582031)))

(assert (=> b!7725635 (= res!3082112 e!4582026)))

(declare-fun res!3082109 () Bool)

(assert (=> b!7725635 (=> (not res!3082109) (not e!4582026))))

(assert (=> b!7725635 (= res!3082109 lt!2666689)))

(assert (= (and d!2338457 c!1424164) b!7725626))

(assert (= (and d!2338457 (not c!1424164)) b!7725634))

(assert (= (and d!2338457 c!1424166) b!7725632))

(assert (= (and d!2338457 (not c!1424166)) b!7725628))

(assert (= (and b!7725628 c!1424165) b!7725625))

(assert (= (and b!7725628 (not c!1424165)) b!7725629))

(assert (= (and b!7725629 (not res!3082107)) b!7725635))

(assert (= (and b!7725635 res!3082109) b!7725624))

(assert (= (and b!7725624 res!3082106) b!7725622))

(assert (= (and b!7725622 res!3082105) b!7725631))

(assert (= (and b!7725635 (not res!3082112)) b!7725633))

(assert (= (and b!7725633 res!3082110) b!7725623))

(assert (= (and b!7725623 (not res!3082108)) b!7725627))

(assert (= (and b!7725627 (not res!3082111)) b!7725630))

(assert (= (or b!7725632 b!7725623 b!7725624) bm!714471))

(declare-fun m!8202572 () Bool)

(assert (=> b!7725631 m!8202572))

(declare-fun m!8202574 () Bool)

(assert (=> d!2338457 m!8202574))

(assert (=> d!2338457 m!8202540))

(declare-fun m!8202576 () Bool)

(assert (=> b!7725627 m!8202576))

(assert (=> b!7725627 m!8202576))

(declare-fun m!8202578 () Bool)

(assert (=> b!7725627 m!8202578))

(declare-fun m!8202580 () Bool)

(assert (=> b!7725626 m!8202580))

(assert (=> b!7725634 m!8202572))

(assert (=> b!7725634 m!8202572))

(declare-fun m!8202582 () Bool)

(assert (=> b!7725634 m!8202582))

(assert (=> b!7725634 m!8202576))

(assert (=> b!7725634 m!8202582))

(assert (=> b!7725634 m!8202576))

(declare-fun m!8202584 () Bool)

(assert (=> b!7725634 m!8202584))

(assert (=> bm!714471 m!8202574))

(assert (=> b!7725622 m!8202576))

(assert (=> b!7725622 m!8202576))

(assert (=> b!7725622 m!8202578))

(assert (=> b!7725630 m!8202572))

(assert (=> b!7725529 d!2338457))

(declare-fun bs!1963114 () Bool)

(declare-fun d!2338459 () Bool)

(assert (= bs!1963114 (and d!2338459 b!7725529)))

(declare-fun lambda!471168 () Int)

(assert (=> bs!1963114 (= lambda!471168 lambda!471165)))

(assert (=> d!2338459 true))

(assert (=> d!2338459 true))

(assert (=> d!2338459 true))

(assert (=> d!2338459 (= (isDefined!14196 (findConcatSeparation!3610 (regOne!41630 r!14126) (regTwo!41630 r!14126) Nil!73282 s!9605 s!9605)) (Exists!4680 lambda!471168))))

(declare-fun lt!2666697 () Unit!168190)

(declare-fun choose!59283 (Regex!20559 Regex!20559 List!73406) Unit!168190)

(assert (=> d!2338459 (= lt!2666697 (choose!59283 (regOne!41630 r!14126) (regTwo!41630 r!14126) s!9605))))

(assert (=> d!2338459 (validRegex!10977 (regOne!41630 r!14126))))

(assert (=> d!2338459 (= (lemmaFindConcatSeparationEquivalentToExists!3368 (regOne!41630 r!14126) (regTwo!41630 r!14126) s!9605) lt!2666697)))

(declare-fun bs!1963115 () Bool)

(assert (= bs!1963115 d!2338459))

(declare-fun m!8202610 () Bool)

(assert (=> bs!1963115 m!8202610))

(assert (=> bs!1963115 m!8202544))

(assert (=> bs!1963115 m!8202544))

(assert (=> bs!1963115 m!8202548))

(declare-fun m!8202612 () Bool)

(assert (=> bs!1963115 m!8202612))

(assert (=> bs!1963115 m!8202570))

(assert (=> b!7725529 d!2338459))

(declare-fun d!2338463 () Bool)

(declare-fun isEmpty!41953 (Option!17580) Bool)

(assert (=> d!2338463 (= (isDefined!14196 (findConcatSeparation!3610 (regOne!41630 r!14126) (regTwo!41630 r!14126) Nil!73282 s!9605 s!9605)) (not (isEmpty!41953 (findConcatSeparation!3610 (regOne!41630 r!14126) (regTwo!41630 r!14126) Nil!73282 s!9605 s!9605))))))

(declare-fun bs!1963116 () Bool)

(assert (= bs!1963116 d!2338463))

(assert (=> bs!1963116 m!8202544))

(declare-fun m!8202614 () Bool)

(assert (=> bs!1963116 m!8202614))

(assert (=> b!7725529 d!2338463))

(declare-fun b!7725698 () Bool)

(declare-fun e!4582074 () Option!17580)

(assert (=> b!7725698 (= e!4582074 None!17579)))

(declare-fun b!7725699 () Bool)

(declare-fun res!3082153 () Bool)

(declare-fun e!4582076 () Bool)

(assert (=> b!7725699 (=> (not res!3082153) (not e!4582076))))

(declare-fun lt!2666711 () Option!17580)

(declare-fun get!26029 (Option!17580) tuple2!69572)

(assert (=> b!7725699 (= res!3082153 (matchR!10051 (regTwo!41630 r!14126) (_2!38089 (get!26029 lt!2666711))))))

(declare-fun b!7725700 () Bool)

(declare-fun ++!17760 (List!73406 List!73406) List!73406)

(assert (=> b!7725700 (= e!4582076 (= (++!17760 (_1!38089 (get!26029 lt!2666711)) (_2!38089 (get!26029 lt!2666711))) s!9605))))

(declare-fun b!7725701 () Bool)

(declare-fun lt!2666712 () Unit!168190)

(declare-fun lt!2666713 () Unit!168190)

(assert (=> b!7725701 (= lt!2666712 lt!2666713)))

(assert (=> b!7725701 (= (++!17760 (++!17760 Nil!73282 (Cons!73282 (h!79730 s!9605) Nil!73282)) (t!388141 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3311 (List!73406 C!41444 List!73406 List!73406) Unit!168190)

(assert (=> b!7725701 (= lt!2666713 (lemmaMoveElementToOtherListKeepsConcatEq!3311 Nil!73282 (h!79730 s!9605) (t!388141 s!9605) s!9605))))

(assert (=> b!7725701 (= e!4582074 (findConcatSeparation!3610 (regOne!41630 r!14126) (regTwo!41630 r!14126) (++!17760 Nil!73282 (Cons!73282 (h!79730 s!9605) Nil!73282)) (t!388141 s!9605) s!9605))))

(declare-fun b!7725702 () Bool)

(declare-fun e!4582075 () Bool)

(assert (=> b!7725702 (= e!4582075 (matchR!10051 (regTwo!41630 r!14126) s!9605))))

(declare-fun b!7725703 () Bool)

(declare-fun e!4582073 () Option!17580)

(assert (=> b!7725703 (= e!4582073 e!4582074)))

(declare-fun c!1424180 () Bool)

(assert (=> b!7725703 (= c!1424180 ((_ is Nil!73282) s!9605))))

(declare-fun b!7725704 () Bool)

(declare-fun e!4582072 () Bool)

(assert (=> b!7725704 (= e!4582072 (not (isDefined!14196 lt!2666711)))))

(declare-fun d!2338465 () Bool)

(assert (=> d!2338465 e!4582072))

(declare-fun res!3082151 () Bool)

(assert (=> d!2338465 (=> res!3082151 e!4582072)))

(assert (=> d!2338465 (= res!3082151 e!4582076)))

(declare-fun res!3082155 () Bool)

(assert (=> d!2338465 (=> (not res!3082155) (not e!4582076))))

(assert (=> d!2338465 (= res!3082155 (isDefined!14196 lt!2666711))))

(assert (=> d!2338465 (= lt!2666711 e!4582073)))

(declare-fun c!1424179 () Bool)

(assert (=> d!2338465 (= c!1424179 e!4582075)))

(declare-fun res!3082154 () Bool)

(assert (=> d!2338465 (=> (not res!3082154) (not e!4582075))))

(assert (=> d!2338465 (= res!3082154 (matchR!10051 (regOne!41630 r!14126) Nil!73282))))

(assert (=> d!2338465 (validRegex!10977 (regOne!41630 r!14126))))

(assert (=> d!2338465 (= (findConcatSeparation!3610 (regOne!41630 r!14126) (regTwo!41630 r!14126) Nil!73282 s!9605 s!9605) lt!2666711)))

(declare-fun b!7725705 () Bool)

(assert (=> b!7725705 (= e!4582073 (Some!17579 (tuple2!69573 Nil!73282 s!9605)))))

(declare-fun b!7725706 () Bool)

(declare-fun res!3082152 () Bool)

(assert (=> b!7725706 (=> (not res!3082152) (not e!4582076))))

(assert (=> b!7725706 (= res!3082152 (matchR!10051 (regOne!41630 r!14126) (_1!38089 (get!26029 lt!2666711))))))

(assert (= (and d!2338465 res!3082154) b!7725702))

(assert (= (and d!2338465 c!1424179) b!7725705))

(assert (= (and d!2338465 (not c!1424179)) b!7725703))

(assert (= (and b!7725703 c!1424180) b!7725698))

(assert (= (and b!7725703 (not c!1424180)) b!7725701))

(assert (= (and d!2338465 res!3082155) b!7725706))

(assert (= (and b!7725706 res!3082152) b!7725699))

(assert (= (and b!7725699 res!3082153) b!7725700))

(assert (= (and d!2338465 (not res!3082151)) b!7725704))

(declare-fun m!8202634 () Bool)

(assert (=> b!7725706 m!8202634))

(declare-fun m!8202636 () Bool)

(assert (=> b!7725706 m!8202636))

(declare-fun m!8202638 () Bool)

(assert (=> b!7725704 m!8202638))

(assert (=> b!7725699 m!8202634))

(declare-fun m!8202640 () Bool)

(assert (=> b!7725699 m!8202640))

(declare-fun m!8202642 () Bool)

(assert (=> b!7725702 m!8202642))

(declare-fun m!8202644 () Bool)

(assert (=> b!7725701 m!8202644))

(assert (=> b!7725701 m!8202644))

(declare-fun m!8202646 () Bool)

(assert (=> b!7725701 m!8202646))

(declare-fun m!8202648 () Bool)

(assert (=> b!7725701 m!8202648))

(assert (=> b!7725701 m!8202644))

(declare-fun m!8202650 () Bool)

(assert (=> b!7725701 m!8202650))

(assert (=> b!7725700 m!8202634))

(declare-fun m!8202652 () Bool)

(assert (=> b!7725700 m!8202652))

(assert (=> d!2338465 m!8202638))

(declare-fun m!8202654 () Bool)

(assert (=> d!2338465 m!8202654))

(assert (=> d!2338465 m!8202570))

(assert (=> b!7725529 d!2338465))

(assert (=> b!7725529 d!2338449))

(declare-fun b!7725739 () Bool)

(declare-fun e!4582099 () Bool)

(declare-fun e!4582103 () Bool)

(assert (=> b!7725739 (= e!4582099 e!4582103)))

(declare-fun res!3082178 () Bool)

(assert (=> b!7725739 (= res!3082178 (not (nullable!9034 (reg!20888 r!14126))))))

(assert (=> b!7725739 (=> (not res!3082178) (not e!4582103))))

(declare-fun b!7725740 () Bool)

(declare-fun res!3082177 () Bool)

(declare-fun e!4582102 () Bool)

(assert (=> b!7725740 (=> res!3082177 e!4582102)))

(assert (=> b!7725740 (= res!3082177 (not ((_ is Concat!29404) r!14126)))))

(declare-fun e!4582098 () Bool)

(assert (=> b!7725740 (= e!4582098 e!4582102)))

(declare-fun b!7725741 () Bool)

(declare-fun call!714495 () Bool)

(assert (=> b!7725741 (= e!4582103 call!714495)))

(declare-fun d!2338477 () Bool)

(declare-fun res!3082174 () Bool)

(declare-fun e!4582101 () Bool)

(assert (=> d!2338477 (=> res!3082174 e!4582101)))

(assert (=> d!2338477 (= res!3082174 ((_ is ElementMatch!20559) r!14126))))

(assert (=> d!2338477 (= (validRegex!10977 r!14126) e!4582101)))

(declare-fun b!7725742 () Bool)

(declare-fun e!4582100 () Bool)

(declare-fun call!714494 () Bool)

(assert (=> b!7725742 (= e!4582100 call!714494)))

(declare-fun b!7725743 () Bool)

(declare-fun e!4582104 () Bool)

(assert (=> b!7725743 (= e!4582104 call!714494)))

(declare-fun bm!714488 () Bool)

(assert (=> bm!714488 (= call!714494 call!714495)))

(declare-fun c!1424188 () Bool)

(declare-fun c!1424189 () Bool)

(declare-fun bm!714489 () Bool)

(assert (=> bm!714489 (= call!714495 (validRegex!10977 (ite c!1424189 (reg!20888 r!14126) (ite c!1424188 (regTwo!41631 r!14126) (regTwo!41630 r!14126)))))))

(declare-fun b!7725744 () Bool)

(assert (=> b!7725744 (= e!4582099 e!4582098)))

(assert (=> b!7725744 (= c!1424188 ((_ is Union!20559) r!14126))))

(declare-fun b!7725745 () Bool)

(assert (=> b!7725745 (= e!4582102 e!4582100)))

(declare-fun res!3082176 () Bool)

(assert (=> b!7725745 (=> (not res!3082176) (not e!4582100))))

(declare-fun call!714493 () Bool)

(assert (=> b!7725745 (= res!3082176 call!714493)))

(declare-fun b!7725746 () Bool)

(declare-fun res!3082175 () Bool)

(assert (=> b!7725746 (=> (not res!3082175) (not e!4582104))))

(assert (=> b!7725746 (= res!3082175 call!714493)))

(assert (=> b!7725746 (= e!4582098 e!4582104)))

(declare-fun b!7725747 () Bool)

(assert (=> b!7725747 (= e!4582101 e!4582099)))

(assert (=> b!7725747 (= c!1424189 ((_ is Star!20559) r!14126))))

(declare-fun bm!714490 () Bool)

(assert (=> bm!714490 (= call!714493 (validRegex!10977 (ite c!1424188 (regOne!41631 r!14126) (regOne!41630 r!14126))))))

(assert (= (and d!2338477 (not res!3082174)) b!7725747))

(assert (= (and b!7725747 c!1424189) b!7725739))

(assert (= (and b!7725747 (not c!1424189)) b!7725744))

(assert (= (and b!7725739 res!3082178) b!7725741))

(assert (= (and b!7725744 c!1424188) b!7725746))

(assert (= (and b!7725744 (not c!1424188)) b!7725740))

(assert (= (and b!7725746 res!3082175) b!7725743))

(assert (= (and b!7725740 (not res!3082177)) b!7725745))

(assert (= (and b!7725745 res!3082176) b!7725742))

(assert (= (or b!7725746 b!7725745) bm!714490))

(assert (= (or b!7725743 b!7725742) bm!714488))

(assert (= (or b!7725741 bm!714488) bm!714489))

(declare-fun m!8202672 () Bool)

(assert (=> b!7725739 m!8202672))

(declare-fun m!8202674 () Bool)

(assert (=> bm!714489 m!8202674))

(declare-fun m!8202676 () Bool)

(assert (=> bm!714490 m!8202676))

(assert (=> start!737756 d!2338477))

(declare-fun b!7725748 () Bool)

(declare-fun res!3082179 () Bool)

(declare-fun e!4582106 () Bool)

(assert (=> b!7725748 (=> (not res!3082179) (not e!4582106))))

(assert (=> b!7725748 (= res!3082179 (isEmpty!41952 (tail!15334 (_1!38089 lt!2666670))))))

(declare-fun bm!714491 () Bool)

(declare-fun call!714496 () Bool)

(assert (=> bm!714491 (= call!714496 (isEmpty!41952 (_1!38089 lt!2666670)))))

(declare-fun b!7725749 () Bool)

(declare-fun e!4582105 () Bool)

(declare-fun e!4582108 () Bool)

(assert (=> b!7725749 (= e!4582105 e!4582108)))

(declare-fun res!3082182 () Bool)

(assert (=> b!7725749 (=> res!3082182 e!4582108)))

(assert (=> b!7725749 (= res!3082182 call!714496)))

(declare-fun b!7725750 () Bool)

(declare-fun res!3082180 () Bool)

(assert (=> b!7725750 (=> (not res!3082180) (not e!4582106))))

(assert (=> b!7725750 (= res!3082180 (not call!714496))))

(declare-fun b!7725751 () Bool)

(declare-fun e!4582107 () Bool)

(declare-fun lt!2666718 () Bool)

(assert (=> b!7725751 (= e!4582107 (not lt!2666718))))

(declare-fun b!7725752 () Bool)

(declare-fun e!4582109 () Bool)

(assert (=> b!7725752 (= e!4582109 (nullable!9034 (regOne!41630 r!14126)))))

(declare-fun d!2338483 () Bool)

(declare-fun e!4582110 () Bool)

(assert (=> d!2338483 e!4582110))

(declare-fun c!1424192 () Bool)

(assert (=> d!2338483 (= c!1424192 ((_ is EmptyExpr!20559) (regOne!41630 r!14126)))))

(assert (=> d!2338483 (= lt!2666718 e!4582109)))

(declare-fun c!1424190 () Bool)

(assert (=> d!2338483 (= c!1424190 (isEmpty!41952 (_1!38089 lt!2666670)))))

(assert (=> d!2338483 (validRegex!10977 (regOne!41630 r!14126))))

(assert (=> d!2338483 (= (matchR!10051 (regOne!41630 r!14126) (_1!38089 lt!2666670)) lt!2666718)))

(declare-fun b!7725753 () Bool)

(declare-fun res!3082185 () Bool)

(assert (=> b!7725753 (=> res!3082185 e!4582108)))

(assert (=> b!7725753 (= res!3082185 (not (isEmpty!41952 (tail!15334 (_1!38089 lt!2666670)))))))

(declare-fun b!7725754 () Bool)

(assert (=> b!7725754 (= e!4582110 e!4582107)))

(declare-fun c!1424191 () Bool)

(assert (=> b!7725754 (= c!1424191 ((_ is EmptyLang!20559) (regOne!41630 r!14126)))))

(declare-fun b!7725755 () Bool)

(declare-fun res!3082181 () Bool)

(declare-fun e!4582111 () Bool)

(assert (=> b!7725755 (=> res!3082181 e!4582111)))

(assert (=> b!7725755 (= res!3082181 (not ((_ is ElementMatch!20559) (regOne!41630 r!14126))))))

(assert (=> b!7725755 (= e!4582107 e!4582111)))

(declare-fun b!7725756 () Bool)

(assert (=> b!7725756 (= e!4582108 (not (= (head!15794 (_1!38089 lt!2666670)) (c!1424144 (regOne!41630 r!14126)))))))

(declare-fun b!7725757 () Bool)

(assert (=> b!7725757 (= e!4582106 (= (head!15794 (_1!38089 lt!2666670)) (c!1424144 (regOne!41630 r!14126))))))

(declare-fun b!7725758 () Bool)

(assert (=> b!7725758 (= e!4582110 (= lt!2666718 call!714496))))

(declare-fun b!7725759 () Bool)

(assert (=> b!7725759 (= e!4582111 e!4582105)))

(declare-fun res!3082184 () Bool)

(assert (=> b!7725759 (=> (not res!3082184) (not e!4582105))))

(assert (=> b!7725759 (= res!3082184 (not lt!2666718))))

(declare-fun b!7725760 () Bool)

(assert (=> b!7725760 (= e!4582109 (matchR!10051 (derivativeStep!5994 (regOne!41630 r!14126) (head!15794 (_1!38089 lt!2666670))) (tail!15334 (_1!38089 lt!2666670))))))

(declare-fun b!7725761 () Bool)

(declare-fun res!3082186 () Bool)

(assert (=> b!7725761 (=> res!3082186 e!4582111)))

(assert (=> b!7725761 (= res!3082186 e!4582106)))

(declare-fun res!3082183 () Bool)

(assert (=> b!7725761 (=> (not res!3082183) (not e!4582106))))

(assert (=> b!7725761 (= res!3082183 lt!2666718)))

(assert (= (and d!2338483 c!1424190) b!7725752))

(assert (= (and d!2338483 (not c!1424190)) b!7725760))

(assert (= (and d!2338483 c!1424192) b!7725758))

(assert (= (and d!2338483 (not c!1424192)) b!7725754))

(assert (= (and b!7725754 c!1424191) b!7725751))

(assert (= (and b!7725754 (not c!1424191)) b!7725755))

(assert (= (and b!7725755 (not res!3082181)) b!7725761))

(assert (= (and b!7725761 res!3082183) b!7725750))

(assert (= (and b!7725750 res!3082180) b!7725748))

(assert (= (and b!7725748 res!3082179) b!7725757))

(assert (= (and b!7725761 (not res!3082186)) b!7725759))

(assert (= (and b!7725759 res!3082184) b!7725749))

(assert (= (and b!7725749 (not res!3082182)) b!7725753))

(assert (= (and b!7725753 (not res!3082185)) b!7725756))

(assert (= (or b!7725758 b!7725749 b!7725750) bm!714491))

(declare-fun m!8202678 () Bool)

(assert (=> b!7725757 m!8202678))

(declare-fun m!8202680 () Bool)

(assert (=> d!2338483 m!8202680))

(assert (=> d!2338483 m!8202570))

(declare-fun m!8202682 () Bool)

(assert (=> b!7725753 m!8202682))

(assert (=> b!7725753 m!8202682))

(declare-fun m!8202684 () Bool)

(assert (=> b!7725753 m!8202684))

(declare-fun m!8202686 () Bool)

(assert (=> b!7725752 m!8202686))

(assert (=> b!7725760 m!8202678))

(assert (=> b!7725760 m!8202678))

(declare-fun m!8202688 () Bool)

(assert (=> b!7725760 m!8202688))

(assert (=> b!7725760 m!8202682))

(assert (=> b!7725760 m!8202688))

(assert (=> b!7725760 m!8202682))

(declare-fun m!8202690 () Bool)

(assert (=> b!7725760 m!8202690))

(assert (=> bm!714491 m!8202680))

(assert (=> b!7725748 m!8202682))

(assert (=> b!7725748 m!8202682))

(assert (=> b!7725748 m!8202684))

(assert (=> b!7725756 m!8202678))

(assert (=> b!7725521 d!2338483))

(declare-fun d!2338485 () Bool)

(assert (=> d!2338485 (= (matchR!10051 (regOne!41630 r!14126) (_1!38089 lt!2666670)) (matchRSpec!4635 (regOne!41630 r!14126) (_1!38089 lt!2666670)))))

(declare-fun lt!2666721 () Unit!168190)

(declare-fun choose!59288 (Regex!20559 List!73406) Unit!168190)

(assert (=> d!2338485 (= lt!2666721 (choose!59288 (regOne!41630 r!14126) (_1!38089 lt!2666670)))))

(assert (=> d!2338485 (validRegex!10977 (regOne!41630 r!14126))))

(assert (=> d!2338485 (= (mainMatchTheorem!4608 (regOne!41630 r!14126) (_1!38089 lt!2666670)) lt!2666721)))

(declare-fun bs!1963123 () Bool)

(assert (= bs!1963123 d!2338485))

(assert (=> bs!1963123 m!8202530))

(assert (=> bs!1963123 m!8202528))

(declare-fun m!8202692 () Bool)

(assert (=> bs!1963123 m!8202692))

(assert (=> bs!1963123 m!8202570))

(assert (=> b!7725521 d!2338485))

(declare-fun b!7725790 () Bool)

(declare-fun e!4582129 () Bool)

(declare-fun e!4582133 () Bool)

(assert (=> b!7725790 (= e!4582129 e!4582133)))

(declare-fun res!3082203 () Bool)

(assert (=> b!7725790 (= res!3082203 (not (nullable!9034 (reg!20888 (regTwo!41630 r!14126)))))))

(assert (=> b!7725790 (=> (not res!3082203) (not e!4582133))))

(declare-fun b!7725791 () Bool)

(declare-fun res!3082202 () Bool)

(declare-fun e!4582132 () Bool)

(assert (=> b!7725791 (=> res!3082202 e!4582132)))

(assert (=> b!7725791 (= res!3082202 (not ((_ is Concat!29404) (regTwo!41630 r!14126))))))

(declare-fun e!4582128 () Bool)

(assert (=> b!7725791 (= e!4582128 e!4582132)))

(declare-fun b!7725792 () Bool)

(declare-fun call!714499 () Bool)

(assert (=> b!7725792 (= e!4582133 call!714499)))

(declare-fun d!2338487 () Bool)

(declare-fun res!3082199 () Bool)

(declare-fun e!4582131 () Bool)

(assert (=> d!2338487 (=> res!3082199 e!4582131)))

(assert (=> d!2338487 (= res!3082199 ((_ is ElementMatch!20559) (regTwo!41630 r!14126)))))

(assert (=> d!2338487 (= (validRegex!10977 (regTwo!41630 r!14126)) e!4582131)))

(declare-fun b!7725793 () Bool)

(declare-fun e!4582130 () Bool)

(declare-fun call!714498 () Bool)

(assert (=> b!7725793 (= e!4582130 call!714498)))

(declare-fun b!7725794 () Bool)

(declare-fun e!4582134 () Bool)

(assert (=> b!7725794 (= e!4582134 call!714498)))

(declare-fun bm!714492 () Bool)

(assert (=> bm!714492 (= call!714498 call!714499)))

(declare-fun c!1424201 () Bool)

(declare-fun bm!714493 () Bool)

(declare-fun c!1424202 () Bool)

(assert (=> bm!714493 (= call!714499 (validRegex!10977 (ite c!1424202 (reg!20888 (regTwo!41630 r!14126)) (ite c!1424201 (regTwo!41631 (regTwo!41630 r!14126)) (regTwo!41630 (regTwo!41630 r!14126))))))))

(declare-fun b!7725795 () Bool)

(assert (=> b!7725795 (= e!4582129 e!4582128)))

(assert (=> b!7725795 (= c!1424201 ((_ is Union!20559) (regTwo!41630 r!14126)))))

(declare-fun b!7725796 () Bool)

(assert (=> b!7725796 (= e!4582132 e!4582130)))

(declare-fun res!3082201 () Bool)

(assert (=> b!7725796 (=> (not res!3082201) (not e!4582130))))

(declare-fun call!714497 () Bool)

(assert (=> b!7725796 (= res!3082201 call!714497)))

(declare-fun b!7725797 () Bool)

(declare-fun res!3082200 () Bool)

(assert (=> b!7725797 (=> (not res!3082200) (not e!4582134))))

(assert (=> b!7725797 (= res!3082200 call!714497)))

(assert (=> b!7725797 (= e!4582128 e!4582134)))

(declare-fun b!7725798 () Bool)

(assert (=> b!7725798 (= e!4582131 e!4582129)))

(assert (=> b!7725798 (= c!1424202 ((_ is Star!20559) (regTwo!41630 r!14126)))))

(declare-fun bm!714494 () Bool)

(assert (=> bm!714494 (= call!714497 (validRegex!10977 (ite c!1424201 (regOne!41631 (regTwo!41630 r!14126)) (regOne!41630 (regTwo!41630 r!14126)))))))

(assert (= (and d!2338487 (not res!3082199)) b!7725798))

(assert (= (and b!7725798 c!1424202) b!7725790))

(assert (= (and b!7725798 (not c!1424202)) b!7725795))

(assert (= (and b!7725790 res!3082203) b!7725792))

(assert (= (and b!7725795 c!1424201) b!7725797))

(assert (= (and b!7725795 (not c!1424201)) b!7725791))

(assert (= (and b!7725797 res!3082200) b!7725794))

(assert (= (and b!7725791 (not res!3082202)) b!7725796))

(assert (= (and b!7725796 res!3082201) b!7725793))

(assert (= (or b!7725797 b!7725796) bm!714494))

(assert (= (or b!7725794 b!7725793) bm!714492))

(assert (= (or b!7725792 bm!714492) bm!714493))

(declare-fun m!8202694 () Bool)

(assert (=> b!7725790 m!8202694))

(declare-fun m!8202696 () Bool)

(assert (=> bm!714493 m!8202696))

(declare-fun m!8202698 () Bool)

(assert (=> bm!714494 m!8202698))

(assert (=> b!7725521 d!2338487))

(declare-fun bs!1963130 () Bool)

(declare-fun b!7725893 () Bool)

(assert (= bs!1963130 (and b!7725893 b!7725529)))

(declare-fun lambda!471182 () Int)

(assert (=> bs!1963130 (not (= lambda!471182 lambda!471165))))

(declare-fun bs!1963131 () Bool)

(assert (= bs!1963131 (and b!7725893 d!2338459)))

(assert (=> bs!1963131 (not (= lambda!471182 lambda!471168))))

(assert (=> b!7725893 true))

(assert (=> b!7725893 true))

(declare-fun bs!1963132 () Bool)

(declare-fun b!7725900 () Bool)

(assert (= bs!1963132 (and b!7725900 b!7725529)))

(declare-fun lambda!471183 () Int)

(assert (=> bs!1963132 (not (= lambda!471183 lambda!471165))))

(declare-fun bs!1963133 () Bool)

(assert (= bs!1963133 (and b!7725900 d!2338459)))

(assert (=> bs!1963133 (not (= lambda!471183 lambda!471168))))

(declare-fun bs!1963134 () Bool)

(assert (= bs!1963134 (and b!7725900 b!7725893)))

(assert (=> bs!1963134 (not (= lambda!471183 lambda!471182))))

(assert (=> b!7725900 true))

(assert (=> b!7725900 true))

(declare-fun d!2338489 () Bool)

(declare-fun c!1424218 () Bool)

(assert (=> d!2338489 (= c!1424218 ((_ is EmptyExpr!20559) (regOne!41630 r!14126)))))

(declare-fun e!4582183 () Bool)

(assert (=> d!2338489 (= (matchRSpec!4635 (regOne!41630 r!14126) (_1!38089 lt!2666670)) e!4582183)))

(declare-fun bm!714508 () Bool)

(declare-fun call!714513 () Bool)

(assert (=> bm!714508 (= call!714513 (isEmpty!41952 (_1!38089 lt!2666670)))))

(declare-fun b!7725892 () Bool)

(declare-fun e!4582180 () Bool)

(declare-fun e!4582182 () Bool)

(assert (=> b!7725892 (= e!4582180 e!4582182)))

(declare-fun res!3082235 () Bool)

(assert (=> b!7725892 (= res!3082235 (matchRSpec!4635 (regOne!41631 (regOne!41630 r!14126)) (_1!38089 lt!2666670)))))

(assert (=> b!7725892 (=> res!3082235 e!4582182)))

(declare-fun e!4582185 () Bool)

(declare-fun call!714514 () Bool)

(assert (=> b!7725893 (= e!4582185 call!714514)))

(declare-fun b!7725894 () Bool)

(declare-fun c!1424219 () Bool)

(assert (=> b!7725894 (= c!1424219 ((_ is Union!20559) (regOne!41630 r!14126)))))

(declare-fun e!4582184 () Bool)

(assert (=> b!7725894 (= e!4582184 e!4582180)))

(declare-fun b!7725895 () Bool)

(declare-fun res!3082234 () Bool)

(assert (=> b!7725895 (=> res!3082234 e!4582185)))

(assert (=> b!7725895 (= res!3082234 call!714513)))

(declare-fun e!4582186 () Bool)

(assert (=> b!7725895 (= e!4582186 e!4582185)))

(declare-fun b!7725896 () Bool)

(assert (=> b!7725896 (= e!4582183 call!714513)))

(declare-fun b!7725897 () Bool)

(declare-fun c!1424217 () Bool)

(assert (=> b!7725897 (= c!1424217 ((_ is ElementMatch!20559) (regOne!41630 r!14126)))))

(declare-fun e!4582181 () Bool)

(assert (=> b!7725897 (= e!4582181 e!4582184)))

(declare-fun b!7725898 () Bool)

(assert (=> b!7725898 (= e!4582180 e!4582186)))

(declare-fun c!1424220 () Bool)

(assert (=> b!7725898 (= c!1424220 ((_ is Star!20559) (regOne!41630 r!14126)))))

(declare-fun b!7725899 () Bool)

(assert (=> b!7725899 (= e!4582183 e!4582181)))

(declare-fun res!3082236 () Bool)

(assert (=> b!7725899 (= res!3082236 (not ((_ is EmptyLang!20559) (regOne!41630 r!14126))))))

(assert (=> b!7725899 (=> (not res!3082236) (not e!4582181))))

(declare-fun bm!714509 () Bool)

(assert (=> bm!714509 (= call!714514 (Exists!4680 (ite c!1424220 lambda!471182 lambda!471183)))))

(assert (=> b!7725900 (= e!4582186 call!714514)))

(declare-fun b!7725901 () Bool)

(assert (=> b!7725901 (= e!4582184 (= (_1!38089 lt!2666670) (Cons!73282 (c!1424144 (regOne!41630 r!14126)) Nil!73282)))))

(declare-fun b!7725902 () Bool)

(assert (=> b!7725902 (= e!4582182 (matchRSpec!4635 (regTwo!41631 (regOne!41630 r!14126)) (_1!38089 lt!2666670)))))

(assert (= (and d!2338489 c!1424218) b!7725896))

(assert (= (and d!2338489 (not c!1424218)) b!7725899))

(assert (= (and b!7725899 res!3082236) b!7725897))

(assert (= (and b!7725897 c!1424217) b!7725901))

(assert (= (and b!7725897 (not c!1424217)) b!7725894))

(assert (= (and b!7725894 c!1424219) b!7725892))

(assert (= (and b!7725894 (not c!1424219)) b!7725898))

(assert (= (and b!7725892 (not res!3082235)) b!7725902))

(assert (= (and b!7725898 c!1424220) b!7725895))

(assert (= (and b!7725898 (not c!1424220)) b!7725900))

(assert (= (and b!7725895 (not res!3082234)) b!7725893))

(assert (= (or b!7725893 b!7725900) bm!714509))

(assert (= (or b!7725896 b!7725895) bm!714508))

(assert (=> bm!714508 m!8202680))

(declare-fun m!8202718 () Bool)

(assert (=> b!7725892 m!8202718))

(declare-fun m!8202720 () Bool)

(assert (=> bm!714509 m!8202720))

(declare-fun m!8202722 () Bool)

(assert (=> b!7725902 m!8202722))

(assert (=> b!7725521 d!2338489))

(declare-fun d!2338495 () Bool)

(declare-fun lt!2666724 () tuple2!69572)

(declare-fun dynLambda!29963 (Int tuple2!69572) Bool)

(assert (=> d!2338495 (dynLambda!29963 lambda!471165 lt!2666724)))

(declare-fun choose!59289 (Int) tuple2!69572)

(assert (=> d!2338495 (= lt!2666724 (choose!59289 lambda!471165))))

(assert (=> d!2338495 (Exists!4680 lambda!471165)))

(assert (=> d!2338495 (= (pickWitness!526 lambda!471165) lt!2666724)))

(declare-fun b_lambda!289295 () Bool)

(assert (=> (not b_lambda!289295) (not d!2338495)))

(declare-fun bs!1963135 () Bool)

(assert (= bs!1963135 d!2338495))

(declare-fun m!8202724 () Bool)

(assert (=> bs!1963135 m!8202724))

(declare-fun m!8202726 () Bool)

(assert (=> bs!1963135 m!8202726))

(assert (=> bs!1963135 m!8202536))

(assert (=> b!7725521 d!2338495))

(declare-fun e!4582189 () Bool)

(assert (=> b!7725523 (= tp!2266833 e!4582189)))

(declare-fun b!7725914 () Bool)

(declare-fun tp!2266890 () Bool)

(declare-fun tp!2266889 () Bool)

(assert (=> b!7725914 (= e!4582189 (and tp!2266890 tp!2266889))))

(declare-fun b!7725916 () Bool)

(declare-fun tp!2266888 () Bool)

(declare-fun tp!2266887 () Bool)

(assert (=> b!7725916 (= e!4582189 (and tp!2266888 tp!2266887))))

(declare-fun b!7725913 () Bool)

(assert (=> b!7725913 (= e!4582189 tp_is_empty!51473)))

(declare-fun b!7725915 () Bool)

(declare-fun tp!2266886 () Bool)

(assert (=> b!7725915 (= e!4582189 tp!2266886)))

(assert (= (and b!7725523 ((_ is ElementMatch!20559) (regOne!41630 r!14126))) b!7725913))

(assert (= (and b!7725523 ((_ is Concat!29404) (regOne!41630 r!14126))) b!7725914))

(assert (= (and b!7725523 ((_ is Star!20559) (regOne!41630 r!14126))) b!7725915))

(assert (= (and b!7725523 ((_ is Union!20559) (regOne!41630 r!14126))) b!7725916))

(declare-fun e!4582190 () Bool)

(assert (=> b!7725523 (= tp!2266836 e!4582190)))

(declare-fun b!7725918 () Bool)

(declare-fun tp!2266895 () Bool)

(declare-fun tp!2266894 () Bool)

(assert (=> b!7725918 (= e!4582190 (and tp!2266895 tp!2266894))))

(declare-fun b!7725920 () Bool)

(declare-fun tp!2266893 () Bool)

(declare-fun tp!2266892 () Bool)

(assert (=> b!7725920 (= e!4582190 (and tp!2266893 tp!2266892))))

(declare-fun b!7725917 () Bool)

(assert (=> b!7725917 (= e!4582190 tp_is_empty!51473)))

(declare-fun b!7725919 () Bool)

(declare-fun tp!2266891 () Bool)

(assert (=> b!7725919 (= e!4582190 tp!2266891)))

(assert (= (and b!7725523 ((_ is ElementMatch!20559) (regTwo!41630 r!14126))) b!7725917))

(assert (= (and b!7725523 ((_ is Concat!29404) (regTwo!41630 r!14126))) b!7725918))

(assert (= (and b!7725523 ((_ is Star!20559) (regTwo!41630 r!14126))) b!7725919))

(assert (= (and b!7725523 ((_ is Union!20559) (regTwo!41630 r!14126))) b!7725920))

(declare-fun e!4582191 () Bool)

(assert (=> b!7725522 (= tp!2266834 e!4582191)))

(declare-fun b!7725922 () Bool)

(declare-fun tp!2266900 () Bool)

(declare-fun tp!2266899 () Bool)

(assert (=> b!7725922 (= e!4582191 (and tp!2266900 tp!2266899))))

(declare-fun b!7725924 () Bool)

(declare-fun tp!2266898 () Bool)

(declare-fun tp!2266897 () Bool)

(assert (=> b!7725924 (= e!4582191 (and tp!2266898 tp!2266897))))

(declare-fun b!7725921 () Bool)

(assert (=> b!7725921 (= e!4582191 tp_is_empty!51473)))

(declare-fun b!7725923 () Bool)

(declare-fun tp!2266896 () Bool)

(assert (=> b!7725923 (= e!4582191 tp!2266896)))

(assert (= (and b!7725522 ((_ is ElementMatch!20559) (regOne!41631 r!14126))) b!7725921))

(assert (= (and b!7725522 ((_ is Concat!29404) (regOne!41631 r!14126))) b!7725922))

(assert (= (and b!7725522 ((_ is Star!20559) (regOne!41631 r!14126))) b!7725923))

(assert (= (and b!7725522 ((_ is Union!20559) (regOne!41631 r!14126))) b!7725924))

(declare-fun e!4582192 () Bool)

(assert (=> b!7725522 (= tp!2266835 e!4582192)))

(declare-fun b!7725926 () Bool)

(declare-fun tp!2266905 () Bool)

(declare-fun tp!2266904 () Bool)

(assert (=> b!7725926 (= e!4582192 (and tp!2266905 tp!2266904))))

(declare-fun b!7725928 () Bool)

(declare-fun tp!2266903 () Bool)

(declare-fun tp!2266902 () Bool)

(assert (=> b!7725928 (= e!4582192 (and tp!2266903 tp!2266902))))

(declare-fun b!7725925 () Bool)

(assert (=> b!7725925 (= e!4582192 tp_is_empty!51473)))

(declare-fun b!7725927 () Bool)

(declare-fun tp!2266901 () Bool)

(assert (=> b!7725927 (= e!4582192 tp!2266901)))

(assert (= (and b!7725522 ((_ is ElementMatch!20559) (regTwo!41631 r!14126))) b!7725925))

(assert (= (and b!7725522 ((_ is Concat!29404) (regTwo!41631 r!14126))) b!7725926))

(assert (= (and b!7725522 ((_ is Star!20559) (regTwo!41631 r!14126))) b!7725927))

(assert (= (and b!7725522 ((_ is Union!20559) (regTwo!41631 r!14126))) b!7725928))

(declare-fun e!4582193 () Bool)

(assert (=> b!7725527 (= tp!2266837 e!4582193)))

(declare-fun b!7725930 () Bool)

(declare-fun tp!2266910 () Bool)

(declare-fun tp!2266909 () Bool)

(assert (=> b!7725930 (= e!4582193 (and tp!2266910 tp!2266909))))

(declare-fun b!7725932 () Bool)

(declare-fun tp!2266908 () Bool)

(declare-fun tp!2266907 () Bool)

(assert (=> b!7725932 (= e!4582193 (and tp!2266908 tp!2266907))))

(declare-fun b!7725929 () Bool)

(assert (=> b!7725929 (= e!4582193 tp_is_empty!51473)))

(declare-fun b!7725931 () Bool)

(declare-fun tp!2266906 () Bool)

(assert (=> b!7725931 (= e!4582193 tp!2266906)))

(assert (= (and b!7725527 ((_ is ElementMatch!20559) (reg!20888 r!14126))) b!7725929))

(assert (= (and b!7725527 ((_ is Concat!29404) (reg!20888 r!14126))) b!7725930))

(assert (= (and b!7725527 ((_ is Star!20559) (reg!20888 r!14126))) b!7725931))

(assert (= (and b!7725527 ((_ is Union!20559) (reg!20888 r!14126))) b!7725932))

(declare-fun b!7725937 () Bool)

(declare-fun e!4582196 () Bool)

(declare-fun tp!2266913 () Bool)

(assert (=> b!7725937 (= e!4582196 (and tp_is_empty!51473 tp!2266913))))

(assert (=> b!7725525 (= tp!2266832 e!4582196)))

(assert (= (and b!7725525 ((_ is Cons!73282) (t!388141 s!9605))) b!7725937))

(declare-fun b_lambda!289297 () Bool)

(assert (= b_lambda!289295 (or b!7725529 b_lambda!289297)))

(declare-fun bs!1963136 () Bool)

(declare-fun d!2338497 () Bool)

(assert (= bs!1963136 (and d!2338497 b!7725529)))

(declare-fun res!3082237 () Bool)

(declare-fun e!4582197 () Bool)

(assert (=> bs!1963136 (=> (not res!3082237) (not e!4582197))))

(assert (=> bs!1963136 (= res!3082237 (= (++!17760 (_1!38089 lt!2666724) (_2!38089 lt!2666724)) s!9605))))

(assert (=> bs!1963136 (= (dynLambda!29963 lambda!471165 lt!2666724) e!4582197)))

(declare-fun b!7725938 () Bool)

(declare-fun res!3082238 () Bool)

(assert (=> b!7725938 (=> (not res!3082238) (not e!4582197))))

(assert (=> b!7725938 (= res!3082238 (matchR!10051 (regOne!41630 r!14126) (_1!38089 lt!2666724)))))

(declare-fun b!7725939 () Bool)

(assert (=> b!7725939 (= e!4582197 (matchR!10051 (regTwo!41630 r!14126) (_2!38089 lt!2666724)))))

(assert (= (and bs!1963136 res!3082237) b!7725938))

(assert (= (and b!7725938 res!3082238) b!7725939))

(declare-fun m!8202728 () Bool)

(assert (=> bs!1963136 m!8202728))

(declare-fun m!8202730 () Bool)

(assert (=> b!7725938 m!8202730))

(declare-fun m!8202732 () Bool)

(assert (=> b!7725939 m!8202732))

(assert (=> d!2338495 d!2338497))

(check-sat (not d!2338459) (not b!7725931) tp_is_empty!51473 (not b!7725701) (not b!7725926) (not d!2338449) (not bm!714489) (not b!7725756) (not b!7725699) (not b!7725922) (not b!7725627) (not b!7725939) (not b!7725631) (not b!7725790) (not b!7725930) (not bm!714491) (not b!7725757) (not b!7725914) (not b!7725700) (not b!7725752) (not b!7725920) (not b!7725938) (not b!7725630) (not d!2338465) (not b!7725937) (not b!7725753) (not b!7725622) (not d!2338483) (not b!7725918) (not b!7725892) (not d!2338485) (not b!7725634) (not b!7725760) (not d!2338457) (not b!7725706) (not b!7725748) (not b!7725923) (not b!7725915) (not b!7725739) (not b!7725702) (not bm!714493) (not b!7725916) (not b!7725932) (not bm!714471) (not b!7725919) (not bm!714509) (not b!7725626) (not d!2338463) (not b!7725927) (not bm!714494) (not b_lambda!289297) (not b!7725704) (not b!7725902) (not b!7725928) (not d!2338451) (not bm!714490) (not bs!1963136) (not d!2338495) (not b!7725924) (not bm!714508))
(check-sat)
