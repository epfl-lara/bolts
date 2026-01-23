; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!601356 () Bool)

(assert start!601356)

(declare-fun b!5911525 () Bool)

(assert (=> b!5911525 true))

(assert (=> b!5911525 true))

(declare-fun b!5911510 () Bool)

(declare-fun e!3619905 () Bool)

(declare-fun e!3619901 () Bool)

(assert (=> b!5911510 (= e!3619905 (not e!3619901))))

(declare-fun res!2478705 () Bool)

(assert (=> b!5911510 (=> res!2478705 e!3619901)))

(declare-datatypes ((C!32184 0))(
  ( (C!32185 (val!25794 Int)) )
))
(declare-datatypes ((Regex!15957 0))(
  ( (ElementMatch!15957 (c!1050595 C!32184)) (Concat!24802 (regOne!32426 Regex!15957) (regTwo!32426 Regex!15957)) (EmptyExpr!15957) (Star!15957 (reg!16286 Regex!15957)) (EmptyLang!15957) (Union!15957 (regOne!32427 Regex!15957) (regTwo!32427 Regex!15957)) )
))
(declare-datatypes ((List!64170 0))(
  ( (Nil!64046) (Cons!64046 (h!70494 Regex!15957) (t!377559 List!64170)) )
))
(declare-datatypes ((Context!10682 0))(
  ( (Context!10683 (exprs!5841 List!64170)) )
))
(declare-datatypes ((List!64171 0))(
  ( (Nil!64047) (Cons!64047 (h!70495 Context!10682) (t!377560 List!64171)) )
))
(declare-fun zl!343 () List!64171)

(get-info :version)

(assert (=> b!5911510 (= res!2478705 (not ((_ is Cons!64047) zl!343)))))

(declare-fun r!7292 () Regex!15957)

(declare-datatypes ((List!64172 0))(
  ( (Nil!64048) (Cons!64048 (h!70496 C!32184) (t!377561 List!64172)) )
))
(declare-fun s!2326 () List!64172)

(declare-fun matchR!8140 (Regex!15957 List!64172) Bool)

(declare-fun matchRSpec!3058 (Regex!15957 List!64172) Bool)

(assert (=> b!5911510 (= (matchR!8140 r!7292 s!2326) (matchRSpec!3058 r!7292 s!2326))))

(declare-datatypes ((Unit!157185 0))(
  ( (Unit!157186) )
))
(declare-fun lt!2309081 () Unit!157185)

(declare-fun mainMatchTheorem!3058 (Regex!15957 List!64172) Unit!157185)

(assert (=> b!5911510 (= lt!2309081 (mainMatchTheorem!3058 r!7292 s!2326))))

(declare-fun b!5911511 () Bool)

(declare-fun e!3619898 () Bool)

(declare-fun tp_is_empty!41167 () Bool)

(assert (=> b!5911511 (= e!3619898 tp_is_empty!41167)))

(declare-fun b!5911512 () Bool)

(declare-fun e!3619899 () Bool)

(declare-fun tp!1642423 () Bool)

(assert (=> b!5911512 (= e!3619899 tp!1642423)))

(declare-fun b!5911513 () Bool)

(declare-fun tp!1642420 () Bool)

(assert (=> b!5911513 (= e!3619898 tp!1642420)))

(declare-fun b!5911514 () Bool)

(declare-fun e!3619900 () Bool)

(declare-fun tp!1642425 () Bool)

(assert (=> b!5911514 (= e!3619900 tp!1642425)))

(declare-fun b!5911515 () Bool)

(declare-fun res!2478706 () Bool)

(assert (=> b!5911515 (=> (not res!2478706) (not e!3619905))))

(declare-fun unfocusZipper!1699 (List!64171) Regex!15957)

(assert (=> b!5911515 (= res!2478706 (= r!7292 (unfocusZipper!1699 zl!343)))))

(declare-fun b!5911516 () Bool)

(declare-fun res!2478707 () Bool)

(assert (=> b!5911516 (=> res!2478707 e!3619901)))

(declare-fun isEmpty!35900 (List!64171) Bool)

(assert (=> b!5911516 (= res!2478707 (not (isEmpty!35900 (t!377560 zl!343))))))

(declare-fun b!5911517 () Bool)

(declare-fun res!2478710 () Bool)

(assert (=> b!5911517 (=> res!2478710 e!3619901)))

(declare-fun generalisedUnion!1801 (List!64170) Regex!15957)

(declare-fun unfocusZipperList!1378 (List!64171) List!64170)

(assert (=> b!5911517 (= res!2478710 (not (= r!7292 (generalisedUnion!1801 (unfocusZipperList!1378 zl!343)))))))

(declare-fun res!2478711 () Bool)

(assert (=> start!601356 (=> (not res!2478711) (not e!3619905))))

(declare-fun validRegex!7693 (Regex!15957) Bool)

(assert (=> start!601356 (= res!2478711 (validRegex!7693 r!7292))))

(assert (=> start!601356 e!3619905))

(assert (=> start!601356 e!3619898))

(declare-fun condSetEmpty!40096 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10682))

(assert (=> start!601356 (= condSetEmpty!40096 (= z!1189 ((as const (Array Context!10682 Bool)) false)))))

(declare-fun setRes!40096 () Bool)

(assert (=> start!601356 setRes!40096))

(declare-fun e!3619904 () Bool)

(assert (=> start!601356 e!3619904))

(declare-fun e!3619903 () Bool)

(assert (=> start!601356 e!3619903))

(declare-fun b!5911509 () Bool)

(declare-fun e!3619902 () Bool)

(assert (=> b!5911509 (= e!3619902 (validRegex!7693 (regTwo!32426 r!7292)))))

(declare-fun setIsEmpty!40096 () Bool)

(assert (=> setIsEmpty!40096 setRes!40096))

(declare-fun b!5911518 () Bool)

(declare-fun res!2478713 () Bool)

(assert (=> b!5911518 (=> res!2478713 e!3619901)))

(declare-fun generalisedConcat!1554 (List!64170) Regex!15957)

(assert (=> b!5911518 (= res!2478713 (not (= r!7292 (generalisedConcat!1554 (exprs!5841 (h!70495 zl!343))))))))

(declare-fun tp!1642417 () Bool)

(declare-fun setNonEmpty!40096 () Bool)

(declare-fun setElem!40096 () Context!10682)

(declare-fun inv!83139 (Context!10682) Bool)

(assert (=> setNonEmpty!40096 (= setRes!40096 (and tp!1642417 (inv!83139 setElem!40096) e!3619899))))

(declare-fun setRest!40096 () (InoxSet Context!10682))

(assert (=> setNonEmpty!40096 (= z!1189 ((_ map or) (store ((as const (Array Context!10682 Bool)) false) setElem!40096 true) setRest!40096))))

(declare-fun b!5911519 () Bool)

(declare-fun tp!1642424 () Bool)

(declare-fun tp!1642426 () Bool)

(assert (=> b!5911519 (= e!3619898 (and tp!1642424 tp!1642426))))

(declare-fun b!5911520 () Bool)

(declare-fun tp!1642422 () Bool)

(declare-fun tp!1642418 () Bool)

(assert (=> b!5911520 (= e!3619898 (and tp!1642422 tp!1642418))))

(declare-fun tp!1642419 () Bool)

(declare-fun b!5911521 () Bool)

(assert (=> b!5911521 (= e!3619904 (and (inv!83139 (h!70495 zl!343)) e!3619900 tp!1642419))))

(declare-fun b!5911522 () Bool)

(declare-fun res!2478714 () Bool)

(assert (=> b!5911522 (=> res!2478714 e!3619901)))

(assert (=> b!5911522 (= res!2478714 (or ((_ is EmptyExpr!15957) r!7292) ((_ is EmptyLang!15957) r!7292) ((_ is ElementMatch!15957) r!7292) ((_ is Union!15957) r!7292) (not ((_ is Concat!24802) r!7292))))))

(declare-fun b!5911523 () Bool)

(declare-fun res!2478709 () Bool)

(assert (=> b!5911523 (=> res!2478709 e!3619901)))

(assert (=> b!5911523 (= res!2478709 (not ((_ is Cons!64046) (exprs!5841 (h!70495 zl!343)))))))

(declare-fun b!5911524 () Bool)

(declare-fun tp!1642421 () Bool)

(assert (=> b!5911524 (= e!3619903 (and tp_is_empty!41167 tp!1642421))))

(assert (=> b!5911525 (= e!3619901 e!3619902)))

(declare-fun res!2478712 () Bool)

(assert (=> b!5911525 (=> res!2478712 e!3619902)))

(assert (=> b!5911525 (= res!2478712 (not (validRegex!7693 (regOne!32426 r!7292))))))

(declare-fun lambda!322410 () Int)

(declare-datatypes ((tuple2!65872 0))(
  ( (tuple2!65873 (_1!36239 List!64172) (_2!36239 List!64172)) )
))
(declare-datatypes ((Option!15848 0))(
  ( (None!15847) (Some!15847 (v!51941 tuple2!65872)) )
))
(declare-fun isDefined!12551 (Option!15848) Bool)

(declare-fun findConcatSeparation!2262 (Regex!15957 Regex!15957 List!64172 List!64172 List!64172) Option!15848)

(declare-fun Exists!3027 (Int) Bool)

(assert (=> b!5911525 (= (isDefined!12551 (findConcatSeparation!2262 (regOne!32426 r!7292) (regTwo!32426 r!7292) Nil!64048 s!2326 s!2326)) (Exists!3027 lambda!322410))))

(declare-fun lt!2309082 () Unit!157185)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2026 (Regex!15957 Regex!15957 List!64172) Unit!157185)

(assert (=> b!5911525 (= lt!2309082 (lemmaFindConcatSeparationEquivalentToExists!2026 (regOne!32426 r!7292) (regTwo!32426 r!7292) s!2326))))

(declare-fun b!5911526 () Bool)

(declare-fun res!2478708 () Bool)

(assert (=> b!5911526 (=> (not res!2478708) (not e!3619905))))

(declare-fun toList!9741 ((InoxSet Context!10682)) List!64171)

(assert (=> b!5911526 (= res!2478708 (= (toList!9741 z!1189) zl!343))))

(assert (= (and start!601356 res!2478711) b!5911526))

(assert (= (and b!5911526 res!2478708) b!5911515))

(assert (= (and b!5911515 res!2478706) b!5911510))

(assert (= (and b!5911510 (not res!2478705)) b!5911516))

(assert (= (and b!5911516 (not res!2478707)) b!5911518))

(assert (= (and b!5911518 (not res!2478713)) b!5911523))

(assert (= (and b!5911523 (not res!2478709)) b!5911517))

(assert (= (and b!5911517 (not res!2478710)) b!5911522))

(assert (= (and b!5911522 (not res!2478714)) b!5911525))

(assert (= (and b!5911525 (not res!2478712)) b!5911509))

(assert (= (and start!601356 ((_ is ElementMatch!15957) r!7292)) b!5911511))

(assert (= (and start!601356 ((_ is Concat!24802) r!7292)) b!5911520))

(assert (= (and start!601356 ((_ is Star!15957) r!7292)) b!5911513))

(assert (= (and start!601356 ((_ is Union!15957) r!7292)) b!5911519))

(assert (= (and start!601356 condSetEmpty!40096) setIsEmpty!40096))

(assert (= (and start!601356 (not condSetEmpty!40096)) setNonEmpty!40096))

(assert (= setNonEmpty!40096 b!5911512))

(assert (= b!5911521 b!5911514))

(assert (= (and start!601356 ((_ is Cons!64047) zl!343)) b!5911521))

(assert (= (and start!601356 ((_ is Cons!64048) s!2326)) b!5911524))

(declare-fun m!6811296 () Bool)

(assert (=> b!5911509 m!6811296))

(declare-fun m!6811298 () Bool)

(assert (=> b!5911515 m!6811298))

(declare-fun m!6811300 () Bool)

(assert (=> b!5911516 m!6811300))

(declare-fun m!6811302 () Bool)

(assert (=> setNonEmpty!40096 m!6811302))

(declare-fun m!6811304 () Bool)

(assert (=> b!5911518 m!6811304))

(declare-fun m!6811306 () Bool)

(assert (=> b!5911526 m!6811306))

(declare-fun m!6811308 () Bool)

(assert (=> b!5911525 m!6811308))

(declare-fun m!6811310 () Bool)

(assert (=> b!5911525 m!6811310))

(declare-fun m!6811312 () Bool)

(assert (=> b!5911525 m!6811312))

(declare-fun m!6811314 () Bool)

(assert (=> b!5911525 m!6811314))

(assert (=> b!5911525 m!6811310))

(declare-fun m!6811316 () Bool)

(assert (=> b!5911525 m!6811316))

(declare-fun m!6811318 () Bool)

(assert (=> b!5911510 m!6811318))

(declare-fun m!6811320 () Bool)

(assert (=> b!5911510 m!6811320))

(declare-fun m!6811322 () Bool)

(assert (=> b!5911510 m!6811322))

(declare-fun m!6811324 () Bool)

(assert (=> b!5911521 m!6811324))

(declare-fun m!6811326 () Bool)

(assert (=> b!5911517 m!6811326))

(assert (=> b!5911517 m!6811326))

(declare-fun m!6811328 () Bool)

(assert (=> b!5911517 m!6811328))

(declare-fun m!6811330 () Bool)

(assert (=> start!601356 m!6811330))

(check-sat (not b!5911526) tp_is_empty!41167 (not b!5911509) (not b!5911525) (not b!5911520) (not b!5911512) (not b!5911524) (not setNonEmpty!40096) (not b!5911514) (not b!5911515) (not b!5911513) (not b!5911521) (not start!601356) (not b!5911519) (not b!5911518) (not b!5911516) (not b!5911517) (not b!5911510))
(check-sat)
(get-model)

(declare-fun d!1854666 () Bool)

(declare-fun lambda!322413 () Int)

(declare-fun forall!15043 (List!64170 Int) Bool)

(assert (=> d!1854666 (= (inv!83139 (h!70495 zl!343)) (forall!15043 (exprs!5841 (h!70495 zl!343)) lambda!322413))))

(declare-fun bs!1399952 () Bool)

(assert (= bs!1399952 d!1854666))

(declare-fun m!6811332 () Bool)

(assert (=> bs!1399952 m!6811332))

(assert (=> b!5911521 d!1854666))

(declare-fun bm!468518 () Bool)

(declare-fun call!468525 () Bool)

(declare-fun call!468524 () Bool)

(assert (=> bm!468518 (= call!468525 call!468524)))

(declare-fun b!5911549 () Bool)

(declare-fun res!2478726 () Bool)

(declare-fun e!3619925 () Bool)

(assert (=> b!5911549 (=> (not res!2478726) (not e!3619925))))

(assert (=> b!5911549 (= res!2478726 call!468525)))

(declare-fun e!3619920 () Bool)

(assert (=> b!5911549 (= e!3619920 e!3619925)))

(declare-fun b!5911550 () Bool)

(declare-fun e!3619924 () Bool)

(assert (=> b!5911550 (= e!3619924 call!468524)))

(declare-fun b!5911551 () Bool)

(declare-fun res!2478729 () Bool)

(declare-fun e!3619921 () Bool)

(assert (=> b!5911551 (=> res!2478729 e!3619921)))

(assert (=> b!5911551 (= res!2478729 (not ((_ is Concat!24802) r!7292)))))

(assert (=> b!5911551 (= e!3619920 e!3619921)))

(declare-fun bm!468519 () Bool)

(declare-fun call!468523 () Bool)

(declare-fun c!1050600 () Bool)

(assert (=> bm!468519 (= call!468523 (validRegex!7693 (ite c!1050600 (regTwo!32427 r!7292) (regTwo!32426 r!7292))))))

(declare-fun b!5911552 () Bool)

(declare-fun e!3619923 () Bool)

(assert (=> b!5911552 (= e!3619923 call!468523)))

(declare-fun b!5911553 () Bool)

(assert (=> b!5911553 (= e!3619925 call!468523)))

(declare-fun b!5911554 () Bool)

(assert (=> b!5911554 (= e!3619921 e!3619923)))

(declare-fun res!2478728 () Bool)

(assert (=> b!5911554 (=> (not res!2478728) (not e!3619923))))

(assert (=> b!5911554 (= res!2478728 call!468525)))

(declare-fun b!5911556 () Bool)

(declare-fun e!3619922 () Bool)

(assert (=> b!5911556 (= e!3619922 e!3619924)))

(declare-fun res!2478727 () Bool)

(declare-fun nullable!5953 (Regex!15957) Bool)

(assert (=> b!5911556 (= res!2478727 (not (nullable!5953 (reg!16286 r!7292))))))

(assert (=> b!5911556 (=> (not res!2478727) (not e!3619924))))

(declare-fun b!5911557 () Bool)

(assert (=> b!5911557 (= e!3619922 e!3619920)))

(assert (=> b!5911557 (= c!1050600 ((_ is Union!15957) r!7292))))

(declare-fun c!1050601 () Bool)

(declare-fun bm!468520 () Bool)

(assert (=> bm!468520 (= call!468524 (validRegex!7693 (ite c!1050601 (reg!16286 r!7292) (ite c!1050600 (regOne!32427 r!7292) (regOne!32426 r!7292)))))))

(declare-fun d!1854668 () Bool)

(declare-fun res!2478725 () Bool)

(declare-fun e!3619926 () Bool)

(assert (=> d!1854668 (=> res!2478725 e!3619926)))

(assert (=> d!1854668 (= res!2478725 ((_ is ElementMatch!15957) r!7292))))

(assert (=> d!1854668 (= (validRegex!7693 r!7292) e!3619926)))

(declare-fun b!5911555 () Bool)

(assert (=> b!5911555 (= e!3619926 e!3619922)))

(assert (=> b!5911555 (= c!1050601 ((_ is Star!15957) r!7292))))

(assert (= (and d!1854668 (not res!2478725)) b!5911555))

(assert (= (and b!5911555 c!1050601) b!5911556))

(assert (= (and b!5911555 (not c!1050601)) b!5911557))

(assert (= (and b!5911556 res!2478727) b!5911550))

(assert (= (and b!5911557 c!1050600) b!5911549))

(assert (= (and b!5911557 (not c!1050600)) b!5911551))

(assert (= (and b!5911549 res!2478726) b!5911553))

(assert (= (and b!5911551 (not res!2478729)) b!5911554))

(assert (= (and b!5911554 res!2478728) b!5911552))

(assert (= (or b!5911553 b!5911552) bm!468519))

(assert (= (or b!5911549 b!5911554) bm!468518))

(assert (= (or b!5911550 bm!468518) bm!468520))

(declare-fun m!6811336 () Bool)

(assert (=> bm!468519 m!6811336))

(declare-fun m!6811338 () Bool)

(assert (=> b!5911556 m!6811338))

(declare-fun m!6811340 () Bool)

(assert (=> bm!468520 m!6811340))

(assert (=> start!601356 d!1854668))

(declare-fun bs!1399954 () Bool)

(declare-fun d!1854674 () Bool)

(assert (= bs!1399954 (and d!1854674 d!1854666)))

(declare-fun lambda!322414 () Int)

(assert (=> bs!1399954 (= lambda!322414 lambda!322413)))

(assert (=> d!1854674 (= (inv!83139 setElem!40096) (forall!15043 (exprs!5841 setElem!40096) lambda!322414))))

(declare-fun bs!1399955 () Bool)

(assert (= bs!1399955 d!1854674))

(declare-fun m!6811342 () Bool)

(assert (=> bs!1399955 m!6811342))

(assert (=> setNonEmpty!40096 d!1854674))

(declare-fun bm!468521 () Bool)

(declare-fun call!468528 () Bool)

(declare-fun call!468527 () Bool)

(assert (=> bm!468521 (= call!468528 call!468527)))

(declare-fun b!5911558 () Bool)

(declare-fun res!2478731 () Bool)

(declare-fun e!3619932 () Bool)

(assert (=> b!5911558 (=> (not res!2478731) (not e!3619932))))

(assert (=> b!5911558 (= res!2478731 call!468528)))

(declare-fun e!3619927 () Bool)

(assert (=> b!5911558 (= e!3619927 e!3619932)))

(declare-fun b!5911559 () Bool)

(declare-fun e!3619931 () Bool)

(assert (=> b!5911559 (= e!3619931 call!468527)))

(declare-fun b!5911560 () Bool)

(declare-fun res!2478734 () Bool)

(declare-fun e!3619928 () Bool)

(assert (=> b!5911560 (=> res!2478734 e!3619928)))

(assert (=> b!5911560 (= res!2478734 (not ((_ is Concat!24802) (regTwo!32426 r!7292))))))

(assert (=> b!5911560 (= e!3619927 e!3619928)))

(declare-fun bm!468522 () Bool)

(declare-fun call!468526 () Bool)

(declare-fun c!1050602 () Bool)

(assert (=> bm!468522 (= call!468526 (validRegex!7693 (ite c!1050602 (regTwo!32427 (regTwo!32426 r!7292)) (regTwo!32426 (regTwo!32426 r!7292)))))))

(declare-fun b!5911561 () Bool)

(declare-fun e!3619930 () Bool)

(assert (=> b!5911561 (= e!3619930 call!468526)))

(declare-fun b!5911562 () Bool)

(assert (=> b!5911562 (= e!3619932 call!468526)))

(declare-fun b!5911563 () Bool)

(assert (=> b!5911563 (= e!3619928 e!3619930)))

(declare-fun res!2478733 () Bool)

(assert (=> b!5911563 (=> (not res!2478733) (not e!3619930))))

(assert (=> b!5911563 (= res!2478733 call!468528)))

(declare-fun b!5911565 () Bool)

(declare-fun e!3619929 () Bool)

(assert (=> b!5911565 (= e!3619929 e!3619931)))

(declare-fun res!2478732 () Bool)

(assert (=> b!5911565 (= res!2478732 (not (nullable!5953 (reg!16286 (regTwo!32426 r!7292)))))))

(assert (=> b!5911565 (=> (not res!2478732) (not e!3619931))))

(declare-fun b!5911566 () Bool)

(assert (=> b!5911566 (= e!3619929 e!3619927)))

(assert (=> b!5911566 (= c!1050602 ((_ is Union!15957) (regTwo!32426 r!7292)))))

(declare-fun c!1050603 () Bool)

(declare-fun bm!468523 () Bool)

(assert (=> bm!468523 (= call!468527 (validRegex!7693 (ite c!1050603 (reg!16286 (regTwo!32426 r!7292)) (ite c!1050602 (regOne!32427 (regTwo!32426 r!7292)) (regOne!32426 (regTwo!32426 r!7292))))))))

(declare-fun d!1854676 () Bool)

(declare-fun res!2478730 () Bool)

(declare-fun e!3619933 () Bool)

(assert (=> d!1854676 (=> res!2478730 e!3619933)))

(assert (=> d!1854676 (= res!2478730 ((_ is ElementMatch!15957) (regTwo!32426 r!7292)))))

(assert (=> d!1854676 (= (validRegex!7693 (regTwo!32426 r!7292)) e!3619933)))

(declare-fun b!5911564 () Bool)

(assert (=> b!5911564 (= e!3619933 e!3619929)))

(assert (=> b!5911564 (= c!1050603 ((_ is Star!15957) (regTwo!32426 r!7292)))))

(assert (= (and d!1854676 (not res!2478730)) b!5911564))

(assert (= (and b!5911564 c!1050603) b!5911565))

(assert (= (and b!5911564 (not c!1050603)) b!5911566))

(assert (= (and b!5911565 res!2478732) b!5911559))

(assert (= (and b!5911566 c!1050602) b!5911558))

(assert (= (and b!5911566 (not c!1050602)) b!5911560))

(assert (= (and b!5911558 res!2478731) b!5911562))

(assert (= (and b!5911560 (not res!2478734)) b!5911563))

(assert (= (and b!5911563 res!2478733) b!5911561))

(assert (= (or b!5911562 b!5911561) bm!468522))

(assert (= (or b!5911558 b!5911563) bm!468521))

(assert (= (or b!5911559 bm!468521) bm!468523))

(declare-fun m!6811344 () Bool)

(assert (=> bm!468522 m!6811344))

(declare-fun m!6811346 () Bool)

(assert (=> b!5911565 m!6811346))

(declare-fun m!6811348 () Bool)

(assert (=> bm!468523 m!6811348))

(assert (=> b!5911509 d!1854676))

(declare-fun b!5911645 () Bool)

(declare-fun res!2478761 () Bool)

(declare-fun e!3619978 () Bool)

(assert (=> b!5911645 (=> (not res!2478761) (not e!3619978))))

(declare-fun call!468531 () Bool)

(assert (=> b!5911645 (= res!2478761 (not call!468531))))

(declare-fun b!5911646 () Bool)

(declare-fun e!3619981 () Bool)

(declare-fun lt!2309093 () Bool)

(assert (=> b!5911646 (= e!3619981 (not lt!2309093))))

(declare-fun b!5911647 () Bool)

(declare-fun e!3619980 () Bool)

(assert (=> b!5911647 (= e!3619980 (nullable!5953 r!7292))))

(declare-fun bm!468526 () Bool)

(declare-fun isEmpty!35902 (List!64172) Bool)

(assert (=> bm!468526 (= call!468531 (isEmpty!35902 s!2326))))

(declare-fun d!1854678 () Bool)

(declare-fun e!3619982 () Bool)

(assert (=> d!1854678 e!3619982))

(declare-fun c!1050632 () Bool)

(assert (=> d!1854678 (= c!1050632 ((_ is EmptyExpr!15957) r!7292))))

(assert (=> d!1854678 (= lt!2309093 e!3619980)))

(declare-fun c!1050631 () Bool)

(assert (=> d!1854678 (= c!1050631 (isEmpty!35902 s!2326))))

(assert (=> d!1854678 (validRegex!7693 r!7292)))

(assert (=> d!1854678 (= (matchR!8140 r!7292 s!2326) lt!2309093)))

(declare-fun b!5911648 () Bool)

(assert (=> b!5911648 (= e!3619982 (= lt!2309093 call!468531))))

(declare-fun b!5911649 () Bool)

(declare-fun derivativeStep!4691 (Regex!15957 C!32184) Regex!15957)

(declare-fun head!12462 (List!64172) C!32184)

(declare-fun tail!11547 (List!64172) List!64172)

(assert (=> b!5911649 (= e!3619980 (matchR!8140 (derivativeStep!4691 r!7292 (head!12462 s!2326)) (tail!11547 s!2326)))))

(declare-fun b!5911650 () Bool)

(declare-fun e!3619984 () Bool)

(assert (=> b!5911650 (= e!3619984 (not (= (head!12462 s!2326) (c!1050595 r!7292))))))

(declare-fun b!5911651 () Bool)

(declare-fun res!2478762 () Bool)

(assert (=> b!5911651 (=> res!2478762 e!3619984)))

(assert (=> b!5911651 (= res!2478762 (not (isEmpty!35902 (tail!11547 s!2326))))))

(declare-fun b!5911652 () Bool)

(declare-fun e!3619979 () Bool)

(assert (=> b!5911652 (= e!3619979 e!3619984)))

(declare-fun res!2478763 () Bool)

(assert (=> b!5911652 (=> res!2478763 e!3619984)))

(assert (=> b!5911652 (= res!2478763 call!468531)))

(declare-fun b!5911653 () Bool)

(declare-fun e!3619983 () Bool)

(assert (=> b!5911653 (= e!3619983 e!3619979)))

(declare-fun res!2478766 () Bool)

(assert (=> b!5911653 (=> (not res!2478766) (not e!3619979))))

(assert (=> b!5911653 (= res!2478766 (not lt!2309093))))

(declare-fun b!5911654 () Bool)

(declare-fun res!2478768 () Bool)

(assert (=> b!5911654 (=> res!2478768 e!3619983)))

(assert (=> b!5911654 (= res!2478768 e!3619978)))

(declare-fun res!2478765 () Bool)

(assert (=> b!5911654 (=> (not res!2478765) (not e!3619978))))

(assert (=> b!5911654 (= res!2478765 lt!2309093)))

(declare-fun b!5911655 () Bool)

(declare-fun res!2478764 () Bool)

(assert (=> b!5911655 (=> (not res!2478764) (not e!3619978))))

(assert (=> b!5911655 (= res!2478764 (isEmpty!35902 (tail!11547 s!2326)))))

(declare-fun b!5911656 () Bool)

(assert (=> b!5911656 (= e!3619978 (= (head!12462 s!2326) (c!1050595 r!7292)))))

(declare-fun b!5911657 () Bool)

(declare-fun res!2478767 () Bool)

(assert (=> b!5911657 (=> res!2478767 e!3619983)))

(assert (=> b!5911657 (= res!2478767 (not ((_ is ElementMatch!15957) r!7292)))))

(assert (=> b!5911657 (= e!3619981 e!3619983)))

(declare-fun b!5911658 () Bool)

(assert (=> b!5911658 (= e!3619982 e!3619981)))

(declare-fun c!1050630 () Bool)

(assert (=> b!5911658 (= c!1050630 ((_ is EmptyLang!15957) r!7292))))

(assert (= (and d!1854678 c!1050631) b!5911647))

(assert (= (and d!1854678 (not c!1050631)) b!5911649))

(assert (= (and d!1854678 c!1050632) b!5911648))

(assert (= (and d!1854678 (not c!1050632)) b!5911658))

(assert (= (and b!5911658 c!1050630) b!5911646))

(assert (= (and b!5911658 (not c!1050630)) b!5911657))

(assert (= (and b!5911657 (not res!2478767)) b!5911654))

(assert (= (and b!5911654 res!2478765) b!5911645))

(assert (= (and b!5911645 res!2478761) b!5911655))

(assert (= (and b!5911655 res!2478764) b!5911656))

(assert (= (and b!5911654 (not res!2478768)) b!5911653))

(assert (= (and b!5911653 res!2478766) b!5911652))

(assert (= (and b!5911652 (not res!2478763)) b!5911651))

(assert (= (and b!5911651 (not res!2478762)) b!5911650))

(assert (= (or b!5911648 b!5911645 b!5911652) bm!468526))

(declare-fun m!6811370 () Bool)

(assert (=> b!5911650 m!6811370))

(declare-fun m!6811372 () Bool)

(assert (=> bm!468526 m!6811372))

(declare-fun m!6811374 () Bool)

(assert (=> b!5911647 m!6811374))

(assert (=> b!5911649 m!6811370))

(assert (=> b!5911649 m!6811370))

(declare-fun m!6811376 () Bool)

(assert (=> b!5911649 m!6811376))

(declare-fun m!6811378 () Bool)

(assert (=> b!5911649 m!6811378))

(assert (=> b!5911649 m!6811376))

(assert (=> b!5911649 m!6811378))

(declare-fun m!6811380 () Bool)

(assert (=> b!5911649 m!6811380))

(assert (=> b!5911651 m!6811378))

(assert (=> b!5911651 m!6811378))

(declare-fun m!6811382 () Bool)

(assert (=> b!5911651 m!6811382))

(assert (=> d!1854678 m!6811372))

(assert (=> d!1854678 m!6811330))

(assert (=> b!5911656 m!6811370))

(assert (=> b!5911655 m!6811378))

(assert (=> b!5911655 m!6811378))

(assert (=> b!5911655 m!6811382))

(assert (=> b!5911510 d!1854678))

(declare-fun bs!1399959 () Bool)

(declare-fun b!5911746 () Bool)

(assert (= bs!1399959 (and b!5911746 b!5911525)))

(declare-fun lambda!322428 () Int)

(assert (=> bs!1399959 (not (= lambda!322428 lambda!322410))))

(assert (=> b!5911746 true))

(assert (=> b!5911746 true))

(declare-fun bs!1399960 () Bool)

(declare-fun b!5911753 () Bool)

(assert (= bs!1399960 (and b!5911753 b!5911525)))

(declare-fun lambda!322429 () Int)

(assert (=> bs!1399960 (not (= lambda!322429 lambda!322410))))

(declare-fun bs!1399961 () Bool)

(assert (= bs!1399961 (and b!5911753 b!5911746)))

(assert (=> bs!1399961 (not (= lambda!322429 lambda!322428))))

(assert (=> b!5911753 true))

(assert (=> b!5911753 true))

(declare-fun b!5911743 () Bool)

(declare-fun e!3620040 () Bool)

(declare-fun call!468549 () Bool)

(assert (=> b!5911743 (= e!3620040 call!468549)))

(declare-fun b!5911744 () Bool)

(declare-fun e!3620043 () Bool)

(declare-fun e!3620044 () Bool)

(assert (=> b!5911744 (= e!3620043 e!3620044)))

(declare-fun res!2478807 () Bool)

(assert (=> b!5911744 (= res!2478807 (matchRSpec!3058 (regOne!32427 r!7292) s!2326))))

(assert (=> b!5911744 (=> res!2478807 e!3620044)))

(declare-fun b!5911745 () Bool)

(declare-fun e!3620045 () Bool)

(assert (=> b!5911745 (= e!3620043 e!3620045)))

(declare-fun c!1050657 () Bool)

(assert (=> b!5911745 (= c!1050657 ((_ is Star!15957) r!7292))))

(declare-fun call!468548 () Bool)

(declare-fun bm!468543 () Bool)

(assert (=> bm!468543 (= call!468548 (Exists!3027 (ite c!1050657 lambda!322428 lambda!322429)))))

(declare-fun bm!468544 () Bool)

(assert (=> bm!468544 (= call!468549 (isEmpty!35902 s!2326))))

(declare-fun e!3620042 () Bool)

(assert (=> b!5911746 (= e!3620042 call!468548)))

(declare-fun b!5911747 () Bool)

(declare-fun c!1050659 () Bool)

(assert (=> b!5911747 (= c!1050659 ((_ is Union!15957) r!7292))))

(declare-fun e!3620041 () Bool)

(assert (=> b!5911747 (= e!3620041 e!3620043)))

(declare-fun b!5911748 () Bool)

(declare-fun res!2478809 () Bool)

(assert (=> b!5911748 (=> res!2478809 e!3620042)))

(assert (=> b!5911748 (= res!2478809 call!468549)))

(assert (=> b!5911748 (= e!3620045 e!3620042)))

(declare-fun b!5911749 () Bool)

(declare-fun e!3620046 () Bool)

(assert (=> b!5911749 (= e!3620040 e!3620046)))

(declare-fun res!2478808 () Bool)

(assert (=> b!5911749 (= res!2478808 (not ((_ is EmptyLang!15957) r!7292)))))

(assert (=> b!5911749 (=> (not res!2478808) (not e!3620046))))

(declare-fun b!5911750 () Bool)

(assert (=> b!5911750 (= e!3620041 (= s!2326 (Cons!64048 (c!1050595 r!7292) Nil!64048)))))

(declare-fun b!5911752 () Bool)

(declare-fun c!1050656 () Bool)

(assert (=> b!5911752 (= c!1050656 ((_ is ElementMatch!15957) r!7292))))

(assert (=> b!5911752 (= e!3620046 e!3620041)))

(assert (=> b!5911753 (= e!3620045 call!468548)))

(declare-fun b!5911751 () Bool)

(assert (=> b!5911751 (= e!3620044 (matchRSpec!3058 (regTwo!32427 r!7292) s!2326))))

(declare-fun d!1854682 () Bool)

(declare-fun c!1050658 () Bool)

(assert (=> d!1854682 (= c!1050658 ((_ is EmptyExpr!15957) r!7292))))

(assert (=> d!1854682 (= (matchRSpec!3058 r!7292 s!2326) e!3620040)))

(assert (= (and d!1854682 c!1050658) b!5911743))

(assert (= (and d!1854682 (not c!1050658)) b!5911749))

(assert (= (and b!5911749 res!2478808) b!5911752))

(assert (= (and b!5911752 c!1050656) b!5911750))

(assert (= (and b!5911752 (not c!1050656)) b!5911747))

(assert (= (and b!5911747 c!1050659) b!5911744))

(assert (= (and b!5911747 (not c!1050659)) b!5911745))

(assert (= (and b!5911744 (not res!2478807)) b!5911751))

(assert (= (and b!5911745 c!1050657) b!5911748))

(assert (= (and b!5911745 (not c!1050657)) b!5911753))

(assert (= (and b!5911748 (not res!2478809)) b!5911746))

(assert (= (or b!5911746 b!5911753) bm!468543))

(assert (= (or b!5911743 b!5911748) bm!468544))

(declare-fun m!6811426 () Bool)

(assert (=> b!5911744 m!6811426))

(declare-fun m!6811428 () Bool)

(assert (=> bm!468543 m!6811428))

(assert (=> bm!468544 m!6811372))

(declare-fun m!6811430 () Bool)

(assert (=> b!5911751 m!6811430))

(assert (=> b!5911510 d!1854682))

(declare-fun d!1854696 () Bool)

(assert (=> d!1854696 (= (matchR!8140 r!7292 s!2326) (matchRSpec!3058 r!7292 s!2326))))

(declare-fun lt!2309103 () Unit!157185)

(declare-fun choose!44586 (Regex!15957 List!64172) Unit!157185)

(assert (=> d!1854696 (= lt!2309103 (choose!44586 r!7292 s!2326))))

(assert (=> d!1854696 (validRegex!7693 r!7292)))

(assert (=> d!1854696 (= (mainMatchTheorem!3058 r!7292 s!2326) lt!2309103)))

(declare-fun bs!1399971 () Bool)

(assert (= bs!1399971 d!1854696))

(assert (=> bs!1399971 m!6811318))

(assert (=> bs!1399971 m!6811320))

(declare-fun m!6811436 () Bool)

(assert (=> bs!1399971 m!6811436))

(assert (=> bs!1399971 m!6811330))

(assert (=> b!5911510 d!1854696))

(declare-fun d!1854702 () Bool)

(declare-fun e!3620052 () Bool)

(assert (=> d!1854702 e!3620052))

(declare-fun res!2478815 () Bool)

(assert (=> d!1854702 (=> (not res!2478815) (not e!3620052))))

(declare-fun lt!2309106 () List!64171)

(declare-fun noDuplicate!1818 (List!64171) Bool)

(assert (=> d!1854702 (= res!2478815 (noDuplicate!1818 lt!2309106))))

(declare-fun choose!44587 ((InoxSet Context!10682)) List!64171)

(assert (=> d!1854702 (= lt!2309106 (choose!44587 z!1189))))

(assert (=> d!1854702 (= (toList!9741 z!1189) lt!2309106)))

(declare-fun b!5911759 () Bool)

(declare-fun content!11783 (List!64171) (InoxSet Context!10682))

(assert (=> b!5911759 (= e!3620052 (= (content!11783 lt!2309106) z!1189))))

(assert (= (and d!1854702 res!2478815) b!5911759))

(declare-fun m!6811438 () Bool)

(assert (=> d!1854702 m!6811438))

(declare-fun m!6811440 () Bool)

(assert (=> d!1854702 m!6811440))

(declare-fun m!6811442 () Bool)

(assert (=> b!5911759 m!6811442))

(assert (=> b!5911526 d!1854702))

(declare-fun bs!1399972 () Bool)

(declare-fun d!1854704 () Bool)

(assert (= bs!1399972 (and d!1854704 d!1854666)))

(declare-fun lambda!322436 () Int)

(assert (=> bs!1399972 (= lambda!322436 lambda!322413)))

(declare-fun bs!1399973 () Bool)

(assert (= bs!1399973 (and d!1854704 d!1854674)))

(assert (=> bs!1399973 (= lambda!322436 lambda!322414)))

(declare-fun b!5911798 () Bool)

(declare-fun e!3620076 () Bool)

(declare-fun e!3620079 () Bool)

(assert (=> b!5911798 (= e!3620076 e!3620079)))

(declare-fun c!1050674 () Bool)

(declare-fun isEmpty!35903 (List!64170) Bool)

(assert (=> b!5911798 (= c!1050674 (isEmpty!35903 (unfocusZipperList!1378 zl!343)))))

(declare-fun b!5911799 () Bool)

(declare-fun e!3620075 () Regex!15957)

(assert (=> b!5911799 (= e!3620075 (h!70494 (unfocusZipperList!1378 zl!343)))))

(declare-fun b!5911800 () Bool)

(declare-fun e!3620077 () Bool)

(declare-fun lt!2309115 () Regex!15957)

(declare-fun isUnion!828 (Regex!15957) Bool)

(assert (=> b!5911800 (= e!3620077 (isUnion!828 lt!2309115))))

(declare-fun b!5911801 () Bool)

(declare-fun e!3620078 () Regex!15957)

(assert (=> b!5911801 (= e!3620078 (Union!15957 (h!70494 (unfocusZipperList!1378 zl!343)) (generalisedUnion!1801 (t!377559 (unfocusZipperList!1378 zl!343)))))))

(declare-fun b!5911802 () Bool)

(declare-fun head!12463 (List!64170) Regex!15957)

(assert (=> b!5911802 (= e!3620077 (= lt!2309115 (head!12463 (unfocusZipperList!1378 zl!343))))))

(assert (=> d!1854704 e!3620076))

(declare-fun res!2478831 () Bool)

(assert (=> d!1854704 (=> (not res!2478831) (not e!3620076))))

(assert (=> d!1854704 (= res!2478831 (validRegex!7693 lt!2309115))))

(assert (=> d!1854704 (= lt!2309115 e!3620075)))

(declare-fun c!1050675 () Bool)

(declare-fun e!3620080 () Bool)

(assert (=> d!1854704 (= c!1050675 e!3620080)))

(declare-fun res!2478830 () Bool)

(assert (=> d!1854704 (=> (not res!2478830) (not e!3620080))))

(assert (=> d!1854704 (= res!2478830 ((_ is Cons!64046) (unfocusZipperList!1378 zl!343)))))

(assert (=> d!1854704 (forall!15043 (unfocusZipperList!1378 zl!343) lambda!322436)))

(assert (=> d!1854704 (= (generalisedUnion!1801 (unfocusZipperList!1378 zl!343)) lt!2309115)))

(declare-fun b!5911803 () Bool)

(assert (=> b!5911803 (= e!3620080 (isEmpty!35903 (t!377559 (unfocusZipperList!1378 zl!343))))))

(declare-fun b!5911804 () Bool)

(assert (=> b!5911804 (= e!3620079 e!3620077)))

(declare-fun c!1050672 () Bool)

(declare-fun tail!11548 (List!64170) List!64170)

(assert (=> b!5911804 (= c!1050672 (isEmpty!35903 (tail!11548 (unfocusZipperList!1378 zl!343))))))

(declare-fun b!5911805 () Bool)

(assert (=> b!5911805 (= e!3620078 EmptyLang!15957)))

(declare-fun b!5911806 () Bool)

(declare-fun isEmptyLang!1398 (Regex!15957) Bool)

(assert (=> b!5911806 (= e!3620079 (isEmptyLang!1398 lt!2309115))))

(declare-fun b!5911807 () Bool)

(assert (=> b!5911807 (= e!3620075 e!3620078)))

(declare-fun c!1050673 () Bool)

(assert (=> b!5911807 (= c!1050673 ((_ is Cons!64046) (unfocusZipperList!1378 zl!343)))))

(assert (= (and d!1854704 res!2478830) b!5911803))

(assert (= (and d!1854704 c!1050675) b!5911799))

(assert (= (and d!1854704 (not c!1050675)) b!5911807))

(assert (= (and b!5911807 c!1050673) b!5911801))

(assert (= (and b!5911807 (not c!1050673)) b!5911805))

(assert (= (and d!1854704 res!2478831) b!5911798))

(assert (= (and b!5911798 c!1050674) b!5911806))

(assert (= (and b!5911798 (not c!1050674)) b!5911804))

(assert (= (and b!5911804 c!1050672) b!5911802))

(assert (= (and b!5911804 (not c!1050672)) b!5911800))

(declare-fun m!6811444 () Bool)

(assert (=> b!5911803 m!6811444))

(declare-fun m!6811446 () Bool)

(assert (=> d!1854704 m!6811446))

(assert (=> d!1854704 m!6811326))

(declare-fun m!6811448 () Bool)

(assert (=> d!1854704 m!6811448))

(declare-fun m!6811450 () Bool)

(assert (=> b!5911800 m!6811450))

(assert (=> b!5911804 m!6811326))

(declare-fun m!6811452 () Bool)

(assert (=> b!5911804 m!6811452))

(assert (=> b!5911804 m!6811452))

(declare-fun m!6811454 () Bool)

(assert (=> b!5911804 m!6811454))

(declare-fun m!6811456 () Bool)

(assert (=> b!5911806 m!6811456))

(assert (=> b!5911798 m!6811326))

(declare-fun m!6811458 () Bool)

(assert (=> b!5911798 m!6811458))

(assert (=> b!5911802 m!6811326))

(declare-fun m!6811460 () Bool)

(assert (=> b!5911802 m!6811460))

(declare-fun m!6811462 () Bool)

(assert (=> b!5911801 m!6811462))

(assert (=> b!5911517 d!1854704))

(declare-fun bs!1399974 () Bool)

(declare-fun d!1854706 () Bool)

(assert (= bs!1399974 (and d!1854706 d!1854666)))

(declare-fun lambda!322439 () Int)

(assert (=> bs!1399974 (= lambda!322439 lambda!322413)))

(declare-fun bs!1399975 () Bool)

(assert (= bs!1399975 (and d!1854706 d!1854674)))

(assert (=> bs!1399975 (= lambda!322439 lambda!322414)))

(declare-fun bs!1399976 () Bool)

(assert (= bs!1399976 (and d!1854706 d!1854704)))

(assert (=> bs!1399976 (= lambda!322439 lambda!322436)))

(declare-fun lt!2309121 () List!64170)

(assert (=> d!1854706 (forall!15043 lt!2309121 lambda!322439)))

(declare-fun e!3620095 () List!64170)

(assert (=> d!1854706 (= lt!2309121 e!3620095)))

(declare-fun c!1050682 () Bool)

(assert (=> d!1854706 (= c!1050682 ((_ is Cons!64047) zl!343))))

(assert (=> d!1854706 (= (unfocusZipperList!1378 zl!343) lt!2309121)))

(declare-fun b!5911830 () Bool)

(assert (=> b!5911830 (= e!3620095 (Cons!64046 (generalisedConcat!1554 (exprs!5841 (h!70495 zl!343))) (unfocusZipperList!1378 (t!377560 zl!343))))))

(declare-fun b!5911831 () Bool)

(assert (=> b!5911831 (= e!3620095 Nil!64046)))

(assert (= (and d!1854706 c!1050682) b!5911830))

(assert (= (and d!1854706 (not c!1050682)) b!5911831))

(declare-fun m!6811492 () Bool)

(assert (=> d!1854706 m!6811492))

(assert (=> b!5911830 m!6811304))

(declare-fun m!6811494 () Bool)

(assert (=> b!5911830 m!6811494))

(assert (=> b!5911517 d!1854706))

(declare-fun bs!1399979 () Bool)

(declare-fun d!1854712 () Bool)

(assert (= bs!1399979 (and d!1854712 d!1854666)))

(declare-fun lambda!322444 () Int)

(assert (=> bs!1399979 (= lambda!322444 lambda!322413)))

(declare-fun bs!1399980 () Bool)

(assert (= bs!1399980 (and d!1854712 d!1854674)))

(assert (=> bs!1399980 (= lambda!322444 lambda!322414)))

(declare-fun bs!1399981 () Bool)

(assert (= bs!1399981 (and d!1854712 d!1854704)))

(assert (=> bs!1399981 (= lambda!322444 lambda!322436)))

(declare-fun bs!1399982 () Bool)

(assert (= bs!1399982 (and d!1854712 d!1854706)))

(assert (=> bs!1399982 (= lambda!322444 lambda!322439)))

(declare-fun b!5911856 () Bool)

(declare-fun e!3620115 () Regex!15957)

(assert (=> b!5911856 (= e!3620115 EmptyExpr!15957)))

(declare-fun b!5911857 () Bool)

(declare-fun e!3620111 () Bool)

(declare-fun lt!2309127 () Regex!15957)

(declare-fun isConcat!912 (Regex!15957) Bool)

(assert (=> b!5911857 (= e!3620111 (isConcat!912 lt!2309127))))

(declare-fun b!5911859 () Bool)

(declare-fun e!3620113 () Regex!15957)

(assert (=> b!5911859 (= e!3620113 e!3620115)))

(declare-fun c!1050691 () Bool)

(assert (=> b!5911859 (= c!1050691 ((_ is Cons!64046) (exprs!5841 (h!70495 zl!343))))))

(declare-fun b!5911860 () Bool)

(declare-fun e!3620110 () Bool)

(declare-fun e!3620112 () Bool)

(assert (=> b!5911860 (= e!3620110 e!3620112)))

(declare-fun c!1050692 () Bool)

(assert (=> b!5911860 (= c!1050692 (isEmpty!35903 (exprs!5841 (h!70495 zl!343))))))

(declare-fun b!5911861 () Bool)

(assert (=> b!5911861 (= e!3620111 (= lt!2309127 (head!12463 (exprs!5841 (h!70495 zl!343)))))))

(declare-fun b!5911862 () Bool)

(assert (=> b!5911862 (= e!3620113 (h!70494 (exprs!5841 (h!70495 zl!343))))))

(declare-fun b!5911863 () Bool)

(declare-fun isEmptyExpr!1389 (Regex!15957) Bool)

(assert (=> b!5911863 (= e!3620112 (isEmptyExpr!1389 lt!2309127))))

(declare-fun b!5911864 () Bool)

(assert (=> b!5911864 (= e!3620112 e!3620111)))

(declare-fun c!1050693 () Bool)

(assert (=> b!5911864 (= c!1050693 (isEmpty!35903 (tail!11548 (exprs!5841 (h!70495 zl!343)))))))

(declare-fun b!5911865 () Bool)

(declare-fun e!3620114 () Bool)

(assert (=> b!5911865 (= e!3620114 (isEmpty!35903 (t!377559 (exprs!5841 (h!70495 zl!343)))))))

(assert (=> d!1854712 e!3620110))

(declare-fun res!2478851 () Bool)

(assert (=> d!1854712 (=> (not res!2478851) (not e!3620110))))

(assert (=> d!1854712 (= res!2478851 (validRegex!7693 lt!2309127))))

(assert (=> d!1854712 (= lt!2309127 e!3620113)))

(declare-fun c!1050694 () Bool)

(assert (=> d!1854712 (= c!1050694 e!3620114)))

(declare-fun res!2478850 () Bool)

(assert (=> d!1854712 (=> (not res!2478850) (not e!3620114))))

(assert (=> d!1854712 (= res!2478850 ((_ is Cons!64046) (exprs!5841 (h!70495 zl!343))))))

(assert (=> d!1854712 (forall!15043 (exprs!5841 (h!70495 zl!343)) lambda!322444)))

(assert (=> d!1854712 (= (generalisedConcat!1554 (exprs!5841 (h!70495 zl!343))) lt!2309127)))

(declare-fun b!5911858 () Bool)

(assert (=> b!5911858 (= e!3620115 (Concat!24802 (h!70494 (exprs!5841 (h!70495 zl!343))) (generalisedConcat!1554 (t!377559 (exprs!5841 (h!70495 zl!343))))))))

(assert (= (and d!1854712 res!2478850) b!5911865))

(assert (= (and d!1854712 c!1050694) b!5911862))

(assert (= (and d!1854712 (not c!1050694)) b!5911859))

(assert (= (and b!5911859 c!1050691) b!5911858))

(assert (= (and b!5911859 (not c!1050691)) b!5911856))

(assert (= (and d!1854712 res!2478851) b!5911860))

(assert (= (and b!5911860 c!1050692) b!5911863))

(assert (= (and b!5911860 (not c!1050692)) b!5911864))

(assert (= (and b!5911864 c!1050693) b!5911861))

(assert (= (and b!5911864 (not c!1050693)) b!5911857))

(declare-fun m!6811504 () Bool)

(assert (=> b!5911861 m!6811504))

(declare-fun m!6811506 () Bool)

(assert (=> b!5911863 m!6811506))

(declare-fun m!6811508 () Bool)

(assert (=> b!5911860 m!6811508))

(declare-fun m!6811510 () Bool)

(assert (=> b!5911865 m!6811510))

(declare-fun m!6811512 () Bool)

(assert (=> b!5911864 m!6811512))

(assert (=> b!5911864 m!6811512))

(declare-fun m!6811514 () Bool)

(assert (=> b!5911864 m!6811514))

(declare-fun m!6811516 () Bool)

(assert (=> b!5911857 m!6811516))

(declare-fun m!6811518 () Bool)

(assert (=> d!1854712 m!6811518))

(declare-fun m!6811520 () Bool)

(assert (=> d!1854712 m!6811520))

(declare-fun m!6811522 () Bool)

(assert (=> b!5911858 m!6811522))

(assert (=> b!5911518 d!1854712))

(declare-fun d!1854720 () Bool)

(declare-fun lt!2309130 () Regex!15957)

(assert (=> d!1854720 (validRegex!7693 lt!2309130)))

(assert (=> d!1854720 (= lt!2309130 (generalisedUnion!1801 (unfocusZipperList!1378 zl!343)))))

(assert (=> d!1854720 (= (unfocusZipper!1699 zl!343) lt!2309130)))

(declare-fun bs!1399985 () Bool)

(assert (= bs!1399985 d!1854720))

(declare-fun m!6811524 () Bool)

(assert (=> bs!1399985 m!6811524))

(assert (=> bs!1399985 m!6811326))

(assert (=> bs!1399985 m!6811326))

(assert (=> bs!1399985 m!6811328))

(assert (=> b!5911515 d!1854720))

(declare-fun d!1854722 () Bool)

(assert (=> d!1854722 (= (isEmpty!35900 (t!377560 zl!343)) ((_ is Nil!64047) (t!377560 zl!343)))))

(assert (=> b!5911516 d!1854722))

(declare-fun b!5911948 () Bool)

(declare-fun e!3620162 () Bool)

(assert (=> b!5911948 (= e!3620162 (matchR!8140 (regTwo!32426 r!7292) s!2326))))

(declare-fun b!5911950 () Bool)

(declare-fun res!2478895 () Bool)

(declare-fun e!3620163 () Bool)

(assert (=> b!5911950 (=> (not res!2478895) (not e!3620163))))

(declare-fun lt!2309140 () Option!15848)

(declare-fun get!22052 (Option!15848) tuple2!65872)

(assert (=> b!5911950 (= res!2478895 (matchR!8140 (regTwo!32426 r!7292) (_2!36239 (get!22052 lt!2309140))))))

(declare-fun b!5911951 () Bool)

(declare-fun e!3620161 () Option!15848)

(assert (=> b!5911951 (= e!3620161 (Some!15847 (tuple2!65873 Nil!64048 s!2326)))))

(declare-fun b!5911952 () Bool)

(declare-fun e!3620164 () Option!15848)

(assert (=> b!5911952 (= e!3620161 e!3620164)))

(declare-fun c!1050716 () Bool)

(assert (=> b!5911952 (= c!1050716 ((_ is Nil!64048) s!2326))))

(declare-fun b!5911953 () Bool)

(declare-fun res!2478893 () Bool)

(assert (=> b!5911953 (=> (not res!2478893) (not e!3620163))))

(assert (=> b!5911953 (= res!2478893 (matchR!8140 (regOne!32426 r!7292) (_1!36239 (get!22052 lt!2309140))))))

(declare-fun b!5911954 () Bool)

(declare-fun e!3620165 () Bool)

(assert (=> b!5911954 (= e!3620165 (not (isDefined!12551 lt!2309140)))))

(declare-fun b!5911955 () Bool)

(declare-fun lt!2309142 () Unit!157185)

(declare-fun lt!2309141 () Unit!157185)

(assert (=> b!5911955 (= lt!2309142 lt!2309141)))

(declare-fun ++!14058 (List!64172 List!64172) List!64172)

(assert (=> b!5911955 (= (++!14058 (++!14058 Nil!64048 (Cons!64048 (h!70496 s!2326) Nil!64048)) (t!377561 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2153 (List!64172 C!32184 List!64172 List!64172) Unit!157185)

(assert (=> b!5911955 (= lt!2309141 (lemmaMoveElementToOtherListKeepsConcatEq!2153 Nil!64048 (h!70496 s!2326) (t!377561 s!2326) s!2326))))

(assert (=> b!5911955 (= e!3620164 (findConcatSeparation!2262 (regOne!32426 r!7292) (regTwo!32426 r!7292) (++!14058 Nil!64048 (Cons!64048 (h!70496 s!2326) Nil!64048)) (t!377561 s!2326) s!2326))))

(declare-fun b!5911956 () Bool)

(assert (=> b!5911956 (= e!3620164 None!15847)))

(declare-fun b!5911949 () Bool)

(assert (=> b!5911949 (= e!3620163 (= (++!14058 (_1!36239 (get!22052 lt!2309140)) (_2!36239 (get!22052 lt!2309140))) s!2326))))

(declare-fun d!1854724 () Bool)

(assert (=> d!1854724 e!3620165))

(declare-fun res!2478892 () Bool)

(assert (=> d!1854724 (=> res!2478892 e!3620165)))

(assert (=> d!1854724 (= res!2478892 e!3620163)))

(declare-fun res!2478896 () Bool)

(assert (=> d!1854724 (=> (not res!2478896) (not e!3620163))))

(assert (=> d!1854724 (= res!2478896 (isDefined!12551 lt!2309140))))

(assert (=> d!1854724 (= lt!2309140 e!3620161)))

(declare-fun c!1050717 () Bool)

(assert (=> d!1854724 (= c!1050717 e!3620162)))

(declare-fun res!2478894 () Bool)

(assert (=> d!1854724 (=> (not res!2478894) (not e!3620162))))

(assert (=> d!1854724 (= res!2478894 (matchR!8140 (regOne!32426 r!7292) Nil!64048))))

(assert (=> d!1854724 (validRegex!7693 (regOne!32426 r!7292))))

(assert (=> d!1854724 (= (findConcatSeparation!2262 (regOne!32426 r!7292) (regTwo!32426 r!7292) Nil!64048 s!2326 s!2326) lt!2309140)))

(assert (= (and d!1854724 res!2478894) b!5911948))

(assert (= (and d!1854724 c!1050717) b!5911951))

(assert (= (and d!1854724 (not c!1050717)) b!5911952))

(assert (= (and b!5911952 c!1050716) b!5911956))

(assert (= (and b!5911952 (not c!1050716)) b!5911955))

(assert (= (and d!1854724 res!2478896) b!5911953))

(assert (= (and b!5911953 res!2478893) b!5911950))

(assert (= (and b!5911950 res!2478895) b!5911949))

(assert (= (and d!1854724 (not res!2478892)) b!5911954))

(declare-fun m!6811540 () Bool)

(assert (=> b!5911948 m!6811540))

(declare-fun m!6811542 () Bool)

(assert (=> b!5911955 m!6811542))

(assert (=> b!5911955 m!6811542))

(declare-fun m!6811544 () Bool)

(assert (=> b!5911955 m!6811544))

(declare-fun m!6811546 () Bool)

(assert (=> b!5911955 m!6811546))

(assert (=> b!5911955 m!6811542))

(declare-fun m!6811548 () Bool)

(assert (=> b!5911955 m!6811548))

(declare-fun m!6811550 () Bool)

(assert (=> b!5911954 m!6811550))

(declare-fun m!6811552 () Bool)

(assert (=> b!5911949 m!6811552))

(declare-fun m!6811554 () Bool)

(assert (=> b!5911949 m!6811554))

(assert (=> d!1854724 m!6811550))

(declare-fun m!6811556 () Bool)

(assert (=> d!1854724 m!6811556))

(assert (=> d!1854724 m!6811308))

(assert (=> b!5911950 m!6811552))

(declare-fun m!6811558 () Bool)

(assert (=> b!5911950 m!6811558))

(assert (=> b!5911953 m!6811552))

(declare-fun m!6811560 () Bool)

(assert (=> b!5911953 m!6811560))

(assert (=> b!5911525 d!1854724))

(declare-fun d!1854728 () Bool)

(declare-fun choose!44591 (Int) Bool)

(assert (=> d!1854728 (= (Exists!3027 lambda!322410) (choose!44591 lambda!322410))))

(declare-fun bs!1399986 () Bool)

(assert (= bs!1399986 d!1854728))

(declare-fun m!6811562 () Bool)

(assert (=> bs!1399986 m!6811562))

(assert (=> b!5911525 d!1854728))

(declare-fun bm!468551 () Bool)

(declare-fun call!468558 () Bool)

(declare-fun call!468557 () Bool)

(assert (=> bm!468551 (= call!468558 call!468557)))

(declare-fun b!5911963 () Bool)

(declare-fun res!2478904 () Bool)

(declare-fun e!3620173 () Bool)

(assert (=> b!5911963 (=> (not res!2478904) (not e!3620173))))

(assert (=> b!5911963 (= res!2478904 call!468558)))

(declare-fun e!3620168 () Bool)

(assert (=> b!5911963 (= e!3620168 e!3620173)))

(declare-fun b!5911964 () Bool)

(declare-fun e!3620172 () Bool)

(assert (=> b!5911964 (= e!3620172 call!468557)))

(declare-fun b!5911965 () Bool)

(declare-fun res!2478907 () Bool)

(declare-fun e!3620169 () Bool)

(assert (=> b!5911965 (=> res!2478907 e!3620169)))

(assert (=> b!5911965 (= res!2478907 (not ((_ is Concat!24802) (regOne!32426 r!7292))))))

(assert (=> b!5911965 (= e!3620168 e!3620169)))

(declare-fun bm!468552 () Bool)

(declare-fun call!468556 () Bool)

(declare-fun c!1050718 () Bool)

(assert (=> bm!468552 (= call!468556 (validRegex!7693 (ite c!1050718 (regTwo!32427 (regOne!32426 r!7292)) (regTwo!32426 (regOne!32426 r!7292)))))))

(declare-fun b!5911966 () Bool)

(declare-fun e!3620171 () Bool)

(assert (=> b!5911966 (= e!3620171 call!468556)))

(declare-fun b!5911967 () Bool)

(assert (=> b!5911967 (= e!3620173 call!468556)))

(declare-fun b!5911968 () Bool)

(assert (=> b!5911968 (= e!3620169 e!3620171)))

(declare-fun res!2478906 () Bool)

(assert (=> b!5911968 (=> (not res!2478906) (not e!3620171))))

(assert (=> b!5911968 (= res!2478906 call!468558)))

(declare-fun b!5911970 () Bool)

(declare-fun e!3620170 () Bool)

(assert (=> b!5911970 (= e!3620170 e!3620172)))

(declare-fun res!2478905 () Bool)

(assert (=> b!5911970 (= res!2478905 (not (nullable!5953 (reg!16286 (regOne!32426 r!7292)))))))

(assert (=> b!5911970 (=> (not res!2478905) (not e!3620172))))

(declare-fun b!5911971 () Bool)

(assert (=> b!5911971 (= e!3620170 e!3620168)))

(assert (=> b!5911971 (= c!1050718 ((_ is Union!15957) (regOne!32426 r!7292)))))

(declare-fun bm!468553 () Bool)

(declare-fun c!1050719 () Bool)

(assert (=> bm!468553 (= call!468557 (validRegex!7693 (ite c!1050719 (reg!16286 (regOne!32426 r!7292)) (ite c!1050718 (regOne!32427 (regOne!32426 r!7292)) (regOne!32426 (regOne!32426 r!7292))))))))

(declare-fun d!1854730 () Bool)

(declare-fun res!2478903 () Bool)

(declare-fun e!3620174 () Bool)

(assert (=> d!1854730 (=> res!2478903 e!3620174)))

(assert (=> d!1854730 (= res!2478903 ((_ is ElementMatch!15957) (regOne!32426 r!7292)))))

(assert (=> d!1854730 (= (validRegex!7693 (regOne!32426 r!7292)) e!3620174)))

(declare-fun b!5911969 () Bool)

(assert (=> b!5911969 (= e!3620174 e!3620170)))

(assert (=> b!5911969 (= c!1050719 ((_ is Star!15957) (regOne!32426 r!7292)))))

(assert (= (and d!1854730 (not res!2478903)) b!5911969))

(assert (= (and b!5911969 c!1050719) b!5911970))

(assert (= (and b!5911969 (not c!1050719)) b!5911971))

(assert (= (and b!5911970 res!2478905) b!5911964))

(assert (= (and b!5911971 c!1050718) b!5911963))

(assert (= (and b!5911971 (not c!1050718)) b!5911965))

(assert (= (and b!5911963 res!2478904) b!5911967))

(assert (= (and b!5911965 (not res!2478907)) b!5911968))

(assert (= (and b!5911968 res!2478906) b!5911966))

(assert (= (or b!5911967 b!5911966) bm!468552))

(assert (= (or b!5911963 b!5911968) bm!468551))

(assert (= (or b!5911964 bm!468551) bm!468553))

(declare-fun m!6811564 () Bool)

(assert (=> bm!468552 m!6811564))

(declare-fun m!6811566 () Bool)

(assert (=> b!5911970 m!6811566))

(declare-fun m!6811568 () Bool)

(assert (=> bm!468553 m!6811568))

(assert (=> b!5911525 d!1854730))

(declare-fun d!1854732 () Bool)

(declare-fun isEmpty!35906 (Option!15848) Bool)

(assert (=> d!1854732 (= (isDefined!12551 (findConcatSeparation!2262 (regOne!32426 r!7292) (regTwo!32426 r!7292) Nil!64048 s!2326 s!2326)) (not (isEmpty!35906 (findConcatSeparation!2262 (regOne!32426 r!7292) (regTwo!32426 r!7292) Nil!64048 s!2326 s!2326))))))

(declare-fun bs!1399987 () Bool)

(assert (= bs!1399987 d!1854732))

(assert (=> bs!1399987 m!6811310))

(declare-fun m!6811570 () Bool)

(assert (=> bs!1399987 m!6811570))

(assert (=> b!5911525 d!1854732))

(declare-fun bs!1399993 () Bool)

(declare-fun d!1854734 () Bool)

(assert (= bs!1399993 (and d!1854734 b!5911525)))

(declare-fun lambda!322454 () Int)

(assert (=> bs!1399993 (= lambda!322454 lambda!322410)))

(declare-fun bs!1399994 () Bool)

(assert (= bs!1399994 (and d!1854734 b!5911746)))

(assert (=> bs!1399994 (not (= lambda!322454 lambda!322428))))

(declare-fun bs!1399995 () Bool)

(assert (= bs!1399995 (and d!1854734 b!5911753)))

(assert (=> bs!1399995 (not (= lambda!322454 lambda!322429))))

(assert (=> d!1854734 true))

(assert (=> d!1854734 true))

(assert (=> d!1854734 true))

(assert (=> d!1854734 (= (isDefined!12551 (findConcatSeparation!2262 (regOne!32426 r!7292) (regTwo!32426 r!7292) Nil!64048 s!2326 s!2326)) (Exists!3027 lambda!322454))))

(declare-fun lt!2309145 () Unit!157185)

(declare-fun choose!44592 (Regex!15957 Regex!15957 List!64172) Unit!157185)

(assert (=> d!1854734 (= lt!2309145 (choose!44592 (regOne!32426 r!7292) (regTwo!32426 r!7292) s!2326))))

(assert (=> d!1854734 (validRegex!7693 (regOne!32426 r!7292))))

(assert (=> d!1854734 (= (lemmaFindConcatSeparationEquivalentToExists!2026 (regOne!32426 r!7292) (regTwo!32426 r!7292) s!2326) lt!2309145)))

(declare-fun bs!1399996 () Bool)

(assert (= bs!1399996 d!1854734))

(declare-fun m!6811578 () Bool)

(assert (=> bs!1399996 m!6811578))

(assert (=> bs!1399996 m!6811308))

(assert (=> bs!1399996 m!6811310))

(assert (=> bs!1399996 m!6811312))

(declare-fun m!6811580 () Bool)

(assert (=> bs!1399996 m!6811580))

(assert (=> bs!1399996 m!6811310))

(assert (=> b!5911525 d!1854734))

(declare-fun b!5911995 () Bool)

(declare-fun e!3620188 () Bool)

(declare-fun tp!1642431 () Bool)

(declare-fun tp!1642432 () Bool)

(assert (=> b!5911995 (= e!3620188 (and tp!1642431 tp!1642432))))

(assert (=> b!5911512 (= tp!1642423 e!3620188)))

(assert (= (and b!5911512 ((_ is Cons!64046) (exprs!5841 setElem!40096))) b!5911995))

(declare-fun b!5912003 () Bool)

(declare-fun e!3620194 () Bool)

(declare-fun tp!1642437 () Bool)

(assert (=> b!5912003 (= e!3620194 tp!1642437)))

(declare-fun e!3620193 () Bool)

(declare-fun b!5912002 () Bool)

(declare-fun tp!1642438 () Bool)

(assert (=> b!5912002 (= e!3620193 (and (inv!83139 (h!70495 (t!377560 zl!343))) e!3620194 tp!1642438))))

(assert (=> b!5911521 (= tp!1642419 e!3620193)))

(assert (= b!5912002 b!5912003))

(assert (= (and b!5911521 ((_ is Cons!64047) (t!377560 zl!343))) b!5912002))

(declare-fun m!6811582 () Bool)

(assert (=> b!5912002 m!6811582))

(declare-fun b!5912020 () Bool)

(declare-fun e!3620199 () Bool)

(assert (=> b!5912020 (= e!3620199 tp_is_empty!41167)))

(declare-fun b!5912021 () Bool)

(declare-fun tp!1642455 () Bool)

(declare-fun tp!1642453 () Bool)

(assert (=> b!5912021 (= e!3620199 (and tp!1642455 tp!1642453))))

(declare-fun b!5912022 () Bool)

(declare-fun tp!1642457 () Bool)

(assert (=> b!5912022 (= e!3620199 tp!1642457)))

(assert (=> b!5911513 (= tp!1642420 e!3620199)))

(declare-fun b!5912023 () Bool)

(declare-fun tp!1642456 () Bool)

(declare-fun tp!1642454 () Bool)

(assert (=> b!5912023 (= e!3620199 (and tp!1642456 tp!1642454))))

(assert (= (and b!5911513 ((_ is ElementMatch!15957) (reg!16286 r!7292))) b!5912020))

(assert (= (and b!5911513 ((_ is Concat!24802) (reg!16286 r!7292))) b!5912021))

(assert (= (and b!5911513 ((_ is Star!15957) (reg!16286 r!7292))) b!5912022))

(assert (= (and b!5911513 ((_ is Union!15957) (reg!16286 r!7292))) b!5912023))

(declare-fun b!5912028 () Bool)

(declare-fun e!3620200 () Bool)

(declare-fun tp!1642464 () Bool)

(declare-fun tp!1642465 () Bool)

(assert (=> b!5912028 (= e!3620200 (and tp!1642464 tp!1642465))))

(assert (=> b!5911514 (= tp!1642425 e!3620200)))

(assert (= (and b!5911514 ((_ is Cons!64046) (exprs!5841 (h!70495 zl!343)))) b!5912028))

(declare-fun condSetEmpty!40099 () Bool)

(assert (=> setNonEmpty!40096 (= condSetEmpty!40099 (= setRest!40096 ((as const (Array Context!10682 Bool)) false)))))

(declare-fun setRes!40099 () Bool)

(assert (=> setNonEmpty!40096 (= tp!1642417 setRes!40099)))

(declare-fun setIsEmpty!40099 () Bool)

(assert (=> setIsEmpty!40099 setRes!40099))

(declare-fun tp!1642480 () Bool)

(declare-fun setNonEmpty!40099 () Bool)

(declare-fun setElem!40099 () Context!10682)

(declare-fun e!3620205 () Bool)

(assert (=> setNonEmpty!40099 (= setRes!40099 (and tp!1642480 (inv!83139 setElem!40099) e!3620205))))

(declare-fun setRest!40099 () (InoxSet Context!10682))

(assert (=> setNonEmpty!40099 (= setRest!40096 ((_ map or) (store ((as const (Array Context!10682 Bool)) false) setElem!40099 true) setRest!40099))))

(declare-fun b!5912043 () Bool)

(declare-fun tp!1642481 () Bool)

(assert (=> b!5912043 (= e!3620205 tp!1642481)))

(assert (= (and setNonEmpty!40096 condSetEmpty!40099) setIsEmpty!40099))

(assert (= (and setNonEmpty!40096 (not condSetEmpty!40099)) setNonEmpty!40099))

(assert (= setNonEmpty!40099 b!5912043))

(declare-fun m!6811586 () Bool)

(assert (=> setNonEmpty!40099 m!6811586))

(declare-fun b!5912055 () Bool)

(declare-fun e!3620212 () Bool)

(declare-fun tp!1642492 () Bool)

(assert (=> b!5912055 (= e!3620212 (and tp_is_empty!41167 tp!1642492))))

(assert (=> b!5911524 (= tp!1642421 e!3620212)))

(assert (= (and b!5911524 ((_ is Cons!64048) (t!377561 s!2326))) b!5912055))

(declare-fun b!5912060 () Bool)

(declare-fun e!3620214 () Bool)

(assert (=> b!5912060 (= e!3620214 tp_is_empty!41167)))

(declare-fun b!5912061 () Bool)

(declare-fun tp!1642500 () Bool)

(declare-fun tp!1642498 () Bool)

(assert (=> b!5912061 (= e!3620214 (and tp!1642500 tp!1642498))))

(declare-fun b!5912062 () Bool)

(declare-fun tp!1642502 () Bool)

(assert (=> b!5912062 (= e!3620214 tp!1642502)))

(assert (=> b!5911519 (= tp!1642424 e!3620214)))

(declare-fun b!5912063 () Bool)

(declare-fun tp!1642501 () Bool)

(declare-fun tp!1642499 () Bool)

(assert (=> b!5912063 (= e!3620214 (and tp!1642501 tp!1642499))))

(assert (= (and b!5911519 ((_ is ElementMatch!15957) (regOne!32427 r!7292))) b!5912060))

(assert (= (and b!5911519 ((_ is Concat!24802) (regOne!32427 r!7292))) b!5912061))

(assert (= (and b!5911519 ((_ is Star!15957) (regOne!32427 r!7292))) b!5912062))

(assert (= (and b!5911519 ((_ is Union!15957) (regOne!32427 r!7292))) b!5912063))

(declare-fun b!5912068 () Bool)

(declare-fun e!3620216 () Bool)

(assert (=> b!5912068 (= e!3620216 tp_is_empty!41167)))

(declare-fun b!5912069 () Bool)

(declare-fun tp!1642510 () Bool)

(declare-fun tp!1642508 () Bool)

(assert (=> b!5912069 (= e!3620216 (and tp!1642510 tp!1642508))))

(declare-fun b!5912070 () Bool)

(declare-fun tp!1642512 () Bool)

(assert (=> b!5912070 (= e!3620216 tp!1642512)))

(assert (=> b!5911519 (= tp!1642426 e!3620216)))

(declare-fun b!5912071 () Bool)

(declare-fun tp!1642511 () Bool)

(declare-fun tp!1642509 () Bool)

(assert (=> b!5912071 (= e!3620216 (and tp!1642511 tp!1642509))))

(assert (= (and b!5911519 ((_ is ElementMatch!15957) (regTwo!32427 r!7292))) b!5912068))

(assert (= (and b!5911519 ((_ is Concat!24802) (regTwo!32427 r!7292))) b!5912069))

(assert (= (and b!5911519 ((_ is Star!15957) (regTwo!32427 r!7292))) b!5912070))

(assert (= (and b!5911519 ((_ is Union!15957) (regTwo!32427 r!7292))) b!5912071))

(declare-fun b!5912074 () Bool)

(declare-fun e!3620217 () Bool)

(assert (=> b!5912074 (= e!3620217 tp_is_empty!41167)))

(declare-fun b!5912075 () Bool)

(declare-fun tp!1642515 () Bool)

(declare-fun tp!1642513 () Bool)

(assert (=> b!5912075 (= e!3620217 (and tp!1642515 tp!1642513))))

(declare-fun b!5912076 () Bool)

(declare-fun tp!1642517 () Bool)

(assert (=> b!5912076 (= e!3620217 tp!1642517)))

(assert (=> b!5911520 (= tp!1642422 e!3620217)))

(declare-fun b!5912077 () Bool)

(declare-fun tp!1642516 () Bool)

(declare-fun tp!1642514 () Bool)

(assert (=> b!5912077 (= e!3620217 (and tp!1642516 tp!1642514))))

(assert (= (and b!5911520 ((_ is ElementMatch!15957) (regOne!32426 r!7292))) b!5912074))

(assert (= (and b!5911520 ((_ is Concat!24802) (regOne!32426 r!7292))) b!5912075))

(assert (= (and b!5911520 ((_ is Star!15957) (regOne!32426 r!7292))) b!5912076))

(assert (= (and b!5911520 ((_ is Union!15957) (regOne!32426 r!7292))) b!5912077))

(declare-fun b!5912080 () Bool)

(declare-fun e!3620220 () Bool)

(assert (=> b!5912080 (= e!3620220 tp_is_empty!41167)))

(declare-fun b!5912081 () Bool)

(declare-fun tp!1642524 () Bool)

(declare-fun tp!1642522 () Bool)

(assert (=> b!5912081 (= e!3620220 (and tp!1642524 tp!1642522))))

(declare-fun b!5912082 () Bool)

(declare-fun tp!1642526 () Bool)

(assert (=> b!5912082 (= e!3620220 tp!1642526)))

(assert (=> b!5911520 (= tp!1642418 e!3620220)))

(declare-fun b!5912083 () Bool)

(declare-fun tp!1642525 () Bool)

(declare-fun tp!1642523 () Bool)

(assert (=> b!5912083 (= e!3620220 (and tp!1642525 tp!1642523))))

(assert (= (and b!5911520 ((_ is ElementMatch!15957) (regTwo!32426 r!7292))) b!5912080))

(assert (= (and b!5911520 ((_ is Concat!24802) (regTwo!32426 r!7292))) b!5912081))

(assert (= (and b!5911520 ((_ is Star!15957) (regTwo!32426 r!7292))) b!5912082))

(assert (= (and b!5911520 ((_ is Union!15957) (regTwo!32426 r!7292))) b!5912083))

(check-sat (not b!5911804) (not b!5912075) (not bm!468553) (not b!5912069) (not bm!468522) (not b!5912021) (not b!5912055) (not b!5912022) tp_is_empty!41167 (not b!5911860) (not b!5912043) (not bm!468520) (not b!5911655) (not b!5912063) (not b!5911865) (not b!5912083) (not b!5911802) (not b!5911953) (not d!1854674) (not b!5912002) (not b!5911656) (not d!1854704) (not b!5911803) (not b!5911861) (not b!5911949) (not d!1854732) (not b!5911857) (not b!5911863) (not d!1854724) (not bm!468519) (not b!5911950) (not b!5911650) (not b!5912082) (not b!5911948) (not b!5911995) (not d!1854666) (not b!5911954) (not d!1854706) (not b!5911565) (not d!1854696) (not setNonEmpty!40099) (not b!5912061) (not bm!468543) (not b!5911801) (not b!5911556) (not b!5911806) (not b!5911864) (not b!5911651) (not b!5912076) (not b!5911744) (not d!1854712) (not b!5912071) (not b!5911759) (not b!5912081) (not bm!468526) (not b!5911647) (not b!5912028) (not b!5911751) (not d!1854678) (not b!5911830) (not bm!468544) (not b!5911649) (not b!5911970) (not b!5912077) (not b!5912062) (not b!5911800) (not bm!468552) (not b!5912070) (not d!1854720) (not bm!468523) (not b!5911955) (not b!5912003) (not b!5912023) (not b!5911798) (not d!1854728) (not d!1854702) (not b!5911858) (not d!1854734))
(check-sat)
