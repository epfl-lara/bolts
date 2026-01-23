; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!691112 () Bool)

(assert start!691112)

(declare-fun b!7099732 () Bool)

(assert (=> b!7099732 true))

(declare-fun b!7099730 () Bool)

(declare-fun res!2898996 () Bool)

(declare-fun e!4267475 () Bool)

(assert (=> b!7099730 (=> (not res!2898996) (not e!4267475))))

(declare-datatypes ((C!36004 0))(
  ( (C!36005 (val!27708 Int)) )
))
(declare-datatypes ((Regex!17867 0))(
  ( (ElementMatch!17867 (c!1324800 C!36004)) (Concat!26712 (regOne!36246 Regex!17867) (regTwo!36246 Regex!17867)) (EmptyExpr!17867) (Star!17867 (reg!18196 Regex!17867)) (EmptyLang!17867) (Union!17867 (regOne!36247 Regex!17867) (regTwo!36247 Regex!17867)) )
))
(declare-fun r!11554 () Regex!17867)

(get-info :version)

(assert (=> b!7099730 (= res!2898996 (and (not ((_ is Concat!26712) r!11554)) (not ((_ is Star!17867) r!11554))))))

(declare-fun b!7099731 () Bool)

(declare-fun e!4267471 () Bool)

(declare-fun nullable!7505 (Regex!17867) Bool)

(assert (=> b!7099731 (= e!4267471 (not (nullable!7505 (regOne!36246 r!11554))))))

(declare-fun e!4267472 () Bool)

(assert (=> b!7099732 (= e!4267472 e!4267475)))

(declare-fun res!2898994 () Bool)

(assert (=> b!7099732 (=> (not res!2898994) (not e!4267475))))

(declare-fun a!1901 () C!36004)

(assert (=> b!7099732 (= res!2898994 (and (or (not ((_ is ElementMatch!17867) r!11554)) (not (= (c!1324800 r!11554) a!1901))) (not ((_ is Union!17867) r!11554))))))

(declare-fun b!7099733 () Bool)

(declare-fun e!4267473 () Bool)

(declare-fun tp!1951549 () Bool)

(declare-fun tp!1951550 () Bool)

(assert (=> b!7099733 (= e!4267473 (and tp!1951549 tp!1951550))))

(declare-fun b!7099734 () Bool)

(declare-fun tp!1951545 () Bool)

(assert (=> b!7099734 (= e!4267473 tp!1951545)))

(declare-fun b!7099735 () Bool)

(declare-fun tp!1951544 () Bool)

(declare-fun tp!1951548 () Bool)

(assert (=> b!7099735 (= e!4267473 (and tp!1951544 tp!1951548))))

(declare-fun b!7099736 () Bool)

(declare-fun e!4267476 () Bool)

(declare-fun tp!1951546 () Bool)

(assert (=> b!7099736 (= e!4267476 tp!1951546)))

(declare-fun b!7099737 () Bool)

(declare-fun res!2898995 () Bool)

(assert (=> b!7099737 (=> (not res!2898995) (not e!4267475))))

(assert (=> b!7099737 (= res!2898995 e!4267471)))

(declare-fun res!2898992 () Bool)

(assert (=> b!7099737 (=> res!2898992 e!4267471)))

(assert (=> b!7099737 (= res!2898992 (not ((_ is Concat!26712) r!11554)))))

(declare-fun b!7099739 () Bool)

(declare-datatypes ((List!68828 0))(
  ( (Nil!68704) (Cons!68704 (h!75152 Regex!17867) (t!382639 List!68828)) )
))
(declare-datatypes ((Context!13722 0))(
  ( (Context!13723 (exprs!7361 List!68828)) )
))
(declare-fun c!9994 () Context!13722)

(declare-fun lambda!430881 () Int)

(declare-fun forall!16777 (List!68828 Int) Bool)

(assert (=> b!7099739 (= e!4267475 (not (forall!16777 (exprs!7361 c!9994) lambda!430881)))))

(declare-fun lambda!430880 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun map!16207 ((InoxSet Context!13722) Int) (InoxSet Context!13722))

(assert (=> b!7099739 (= (map!16207 ((as const (Array Context!13722 Bool)) false) lambda!430880) ((as const (Array Context!13722 Bool)) false))))

(declare-datatypes ((Unit!162405 0))(
  ( (Unit!162406) )
))
(declare-fun lt!2557968 () Unit!162405)

(declare-fun lemmaMapOnEmptySetIsEmpty!2 ((InoxSet Context!13722) Int) Unit!162405)

(assert (=> b!7099739 (= lt!2557968 (lemmaMapOnEmptySetIsEmpty!2 ((as const (Array Context!13722 Bool)) false) lambda!430880))))

(declare-fun b!7099740 () Bool)

(declare-fun e!4267474 () Bool)

(declare-fun tp!1951547 () Bool)

(assert (=> b!7099740 (= e!4267474 tp!1951547)))

(declare-fun res!2898993 () Bool)

(assert (=> start!691112 (=> (not res!2898993) (not e!4267472))))

(declare-fun validRegex!9140 (Regex!17867) Bool)

(assert (=> start!691112 (= res!2898993 (validRegex!9140 r!11554))))

(assert (=> start!691112 e!4267472))

(assert (=> start!691112 e!4267473))

(declare-fun inv!87530 (Context!13722) Bool)

(assert (=> start!691112 (and (inv!87530 c!9994) e!4267476)))

(declare-fun tp_is_empty!44967 () Bool)

(assert (=> start!691112 tp_is_empty!44967))

(declare-fun auxCtx!45 () Context!13722)

(assert (=> start!691112 (and (inv!87530 auxCtx!45) e!4267474)))

(declare-fun b!7099738 () Bool)

(assert (=> b!7099738 (= e!4267473 tp_is_empty!44967)))

(assert (= (and start!691112 res!2898993) b!7099732))

(assert (= (and b!7099732 res!2898994) b!7099737))

(assert (= (and b!7099737 (not res!2898992)) b!7099731))

(assert (= (and b!7099737 res!2898995) b!7099730))

(assert (= (and b!7099730 res!2898996) b!7099739))

(assert (= (and start!691112 ((_ is ElementMatch!17867) r!11554)) b!7099738))

(assert (= (and start!691112 ((_ is Concat!26712) r!11554)) b!7099735))

(assert (= (and start!691112 ((_ is Star!17867) r!11554)) b!7099734))

(assert (= (and start!691112 ((_ is Union!17867) r!11554)) b!7099733))

(assert (= start!691112 b!7099736))

(assert (= start!691112 b!7099740))

(declare-fun m!7825834 () Bool)

(assert (=> b!7099731 m!7825834))

(declare-fun m!7825836 () Bool)

(assert (=> b!7099739 m!7825836))

(declare-fun m!7825838 () Bool)

(assert (=> b!7099739 m!7825838))

(declare-fun m!7825840 () Bool)

(assert (=> b!7099739 m!7825840))

(declare-fun m!7825842 () Bool)

(assert (=> start!691112 m!7825842))

(declare-fun m!7825844 () Bool)

(assert (=> start!691112 m!7825844))

(declare-fun m!7825846 () Bool)

(assert (=> start!691112 m!7825846))

(check-sat (not b!7099731) (not b!7099736) (not b!7099735) tp_is_empty!44967 (not b!7099740) (not b!7099733) (not start!691112) (not b!7099739) (not b!7099734))
(check-sat)
(get-model)

(declare-fun bm!646394 () Bool)

(declare-fun call!646398 () Bool)

(declare-fun c!1324810 () Bool)

(assert (=> bm!646394 (= call!646398 (validRegex!9140 (ite c!1324810 (regOne!36247 r!11554) (regTwo!36246 r!11554))))))

(declare-fun bm!646395 () Bool)

(declare-fun call!646399 () Bool)

(declare-fun call!646400 () Bool)

(assert (=> bm!646395 (= call!646399 call!646400)))

(declare-fun b!7099779 () Bool)

(declare-fun e!4267506 () Bool)

(declare-fun e!4267505 () Bool)

(assert (=> b!7099779 (= e!4267506 e!4267505)))

(declare-fun res!2899020 () Bool)

(assert (=> b!7099779 (= res!2899020 (not (nullable!7505 (reg!18196 r!11554))))))

(assert (=> b!7099779 (=> (not res!2899020) (not e!4267505))))

(declare-fun b!7099780 () Bool)

(declare-fun e!4267511 () Bool)

(assert (=> b!7099780 (= e!4267506 e!4267511)))

(assert (=> b!7099780 (= c!1324810 ((_ is Union!17867) r!11554))))

(declare-fun b!7099781 () Bool)

(declare-fun res!2899021 () Bool)

(declare-fun e!4267508 () Bool)

(assert (=> b!7099781 (=> (not res!2899021) (not e!4267508))))

(assert (=> b!7099781 (= res!2899021 call!646398)))

(assert (=> b!7099781 (= e!4267511 e!4267508)))

(declare-fun b!7099782 () Bool)

(declare-fun e!4267509 () Bool)

(assert (=> b!7099782 (= e!4267509 call!646398)))

(declare-fun b!7099783 () Bool)

(declare-fun res!2899023 () Bool)

(declare-fun e!4267507 () Bool)

(assert (=> b!7099783 (=> res!2899023 e!4267507)))

(assert (=> b!7099783 (= res!2899023 (not ((_ is Concat!26712) r!11554)))))

(assert (=> b!7099783 (= e!4267511 e!4267507)))

(declare-fun b!7099784 () Bool)

(assert (=> b!7099784 (= e!4267505 call!646400)))

(declare-fun b!7099785 () Bool)

(declare-fun e!4267510 () Bool)

(assert (=> b!7099785 (= e!4267510 e!4267506)))

(declare-fun c!1324809 () Bool)

(assert (=> b!7099785 (= c!1324809 ((_ is Star!17867) r!11554))))

(declare-fun b!7099786 () Bool)

(assert (=> b!7099786 (= e!4267507 e!4267509)))

(declare-fun res!2899019 () Bool)

(assert (=> b!7099786 (=> (not res!2899019) (not e!4267509))))

(assert (=> b!7099786 (= res!2899019 call!646399)))

(declare-fun b!7099787 () Bool)

(assert (=> b!7099787 (= e!4267508 call!646399)))

(declare-fun bm!646393 () Bool)

(assert (=> bm!646393 (= call!646400 (validRegex!9140 (ite c!1324809 (reg!18196 r!11554) (ite c!1324810 (regTwo!36247 r!11554) (regOne!36246 r!11554)))))))

(declare-fun d!2218411 () Bool)

(declare-fun res!2899022 () Bool)

(assert (=> d!2218411 (=> res!2899022 e!4267510)))

(assert (=> d!2218411 (= res!2899022 ((_ is ElementMatch!17867) r!11554))))

(assert (=> d!2218411 (= (validRegex!9140 r!11554) e!4267510)))

(assert (= (and d!2218411 (not res!2899022)) b!7099785))

(assert (= (and b!7099785 c!1324809) b!7099779))

(assert (= (and b!7099785 (not c!1324809)) b!7099780))

(assert (= (and b!7099779 res!2899020) b!7099784))

(assert (= (and b!7099780 c!1324810) b!7099781))

(assert (= (and b!7099780 (not c!1324810)) b!7099783))

(assert (= (and b!7099781 res!2899021) b!7099787))

(assert (= (and b!7099783 (not res!2899023)) b!7099786))

(assert (= (and b!7099786 res!2899019) b!7099782))

(assert (= (or b!7099781 b!7099782) bm!646394))

(assert (= (or b!7099787 b!7099786) bm!646395))

(assert (= (or b!7099784 bm!646395) bm!646393))

(declare-fun m!7825848 () Bool)

(assert (=> bm!646394 m!7825848))

(declare-fun m!7825850 () Bool)

(assert (=> b!7099779 m!7825850))

(declare-fun m!7825852 () Bool)

(assert (=> bm!646393 m!7825852))

(assert (=> start!691112 d!2218411))

(declare-fun bs!1884197 () Bool)

(declare-fun d!2218415 () Bool)

(assert (= bs!1884197 (and d!2218415 b!7099739)))

(declare-fun lambda!430884 () Int)

(assert (=> bs!1884197 (= lambda!430884 lambda!430881)))

(assert (=> d!2218415 (= (inv!87530 c!9994) (forall!16777 (exprs!7361 c!9994) lambda!430884))))

(declare-fun bs!1884198 () Bool)

(assert (= bs!1884198 d!2218415))

(declare-fun m!7825860 () Bool)

(assert (=> bs!1884198 m!7825860))

(assert (=> start!691112 d!2218415))

(declare-fun bs!1884199 () Bool)

(declare-fun d!2218419 () Bool)

(assert (= bs!1884199 (and d!2218419 b!7099739)))

(declare-fun lambda!430885 () Int)

(assert (=> bs!1884199 (= lambda!430885 lambda!430881)))

(declare-fun bs!1884200 () Bool)

(assert (= bs!1884200 (and d!2218419 d!2218415)))

(assert (=> bs!1884200 (= lambda!430885 lambda!430884)))

(assert (=> d!2218419 (= (inv!87530 auxCtx!45) (forall!16777 (exprs!7361 auxCtx!45) lambda!430885))))

(declare-fun bs!1884201 () Bool)

(assert (= bs!1884201 d!2218419))

(declare-fun m!7825862 () Bool)

(assert (=> bs!1884201 m!7825862))

(assert (=> start!691112 d!2218419))

(declare-fun d!2218421 () Bool)

(declare-fun res!2899033 () Bool)

(declare-fun e!4267523 () Bool)

(assert (=> d!2218421 (=> res!2899033 e!4267523)))

(assert (=> d!2218421 (= res!2899033 ((_ is Nil!68704) (exprs!7361 c!9994)))))

(assert (=> d!2218421 (= (forall!16777 (exprs!7361 c!9994) lambda!430881) e!4267523)))

(declare-fun b!7099801 () Bool)

(declare-fun e!4267524 () Bool)

(assert (=> b!7099801 (= e!4267523 e!4267524)))

(declare-fun res!2899034 () Bool)

(assert (=> b!7099801 (=> (not res!2899034) (not e!4267524))))

(declare-fun dynLambda!28039 (Int Regex!17867) Bool)

(assert (=> b!7099801 (= res!2899034 (dynLambda!28039 lambda!430881 (h!75152 (exprs!7361 c!9994))))))

(declare-fun b!7099802 () Bool)

(assert (=> b!7099802 (= e!4267524 (forall!16777 (t!382639 (exprs!7361 c!9994)) lambda!430881))))

(assert (= (and d!2218421 (not res!2899033)) b!7099801))

(assert (= (and b!7099801 res!2899034) b!7099802))

(declare-fun b_lambda!271265 () Bool)

(assert (=> (not b_lambda!271265) (not b!7099801)))

(declare-fun m!7825868 () Bool)

(assert (=> b!7099801 m!7825868))

(declare-fun m!7825870 () Bool)

(assert (=> b!7099802 m!7825870))

(assert (=> b!7099739 d!2218421))

(declare-fun d!2218427 () Bool)

(declare-fun choose!54741 ((InoxSet Context!13722) Int) (InoxSet Context!13722))

(assert (=> d!2218427 (= (map!16207 ((as const (Array Context!13722 Bool)) false) lambda!430880) (choose!54741 ((as const (Array Context!13722 Bool)) false) lambda!430880))))

(declare-fun bs!1884207 () Bool)

(assert (= bs!1884207 d!2218427))

(declare-fun m!7825872 () Bool)

(assert (=> bs!1884207 m!7825872))

(assert (=> b!7099739 d!2218427))

(declare-fun d!2218429 () Bool)

(assert (=> d!2218429 (= (map!16207 ((as const (Array Context!13722 Bool)) false) lambda!430880) ((as const (Array Context!13722 Bool)) false))))

(declare-fun lt!2557971 () Unit!162405)

(declare-fun choose!54742 ((InoxSet Context!13722) Int) Unit!162405)

(assert (=> d!2218429 (= lt!2557971 (choose!54742 ((as const (Array Context!13722 Bool)) false) lambda!430880))))

(assert (=> d!2218429 (= ((as const (Array Context!13722 Bool)) false) ((as const (Array Context!13722 Bool)) false))))

(assert (=> d!2218429 (= (lemmaMapOnEmptySetIsEmpty!2 ((as const (Array Context!13722 Bool)) false) lambda!430880) lt!2557971)))

(declare-fun bs!1884209 () Bool)

(assert (= bs!1884209 d!2218429))

(assert (=> bs!1884209 m!7825838))

(declare-fun m!7825880 () Bool)

(assert (=> bs!1884209 m!7825880))

(assert (=> b!7099739 d!2218429))

(declare-fun d!2218435 () Bool)

(declare-fun nullableFct!2892 (Regex!17867) Bool)

(assert (=> d!2218435 (= (nullable!7505 (regOne!36246 r!11554)) (nullableFct!2892 (regOne!36246 r!11554)))))

(declare-fun bs!1884210 () Bool)

(assert (= bs!1884210 d!2218435))

(declare-fun m!7825882 () Bool)

(assert (=> bs!1884210 m!7825882))

(assert (=> b!7099731 d!2218435))

(declare-fun e!4267535 () Bool)

(assert (=> b!7099733 (= tp!1951549 e!4267535)))

(declare-fun b!7099825 () Bool)

(declare-fun tp!1951565 () Bool)

(assert (=> b!7099825 (= e!4267535 tp!1951565)))

(declare-fun b!7099823 () Bool)

(assert (=> b!7099823 (= e!4267535 tp_is_empty!44967)))

(declare-fun b!7099826 () Bool)

(declare-fun tp!1951566 () Bool)

(declare-fun tp!1951567 () Bool)

(assert (=> b!7099826 (= e!4267535 (and tp!1951566 tp!1951567))))

(declare-fun b!7099824 () Bool)

(declare-fun tp!1951569 () Bool)

(declare-fun tp!1951568 () Bool)

(assert (=> b!7099824 (= e!4267535 (and tp!1951569 tp!1951568))))

(assert (= (and b!7099733 ((_ is ElementMatch!17867) (regOne!36247 r!11554))) b!7099823))

(assert (= (and b!7099733 ((_ is Concat!26712) (regOne!36247 r!11554))) b!7099824))

(assert (= (and b!7099733 ((_ is Star!17867) (regOne!36247 r!11554))) b!7099825))

(assert (= (and b!7099733 ((_ is Union!17867) (regOne!36247 r!11554))) b!7099826))

(declare-fun e!4267537 () Bool)

(assert (=> b!7099733 (= tp!1951550 e!4267537)))

(declare-fun b!7099830 () Bool)

(declare-fun tp!1951572 () Bool)

(assert (=> b!7099830 (= e!4267537 tp!1951572)))

(declare-fun b!7099828 () Bool)

(assert (=> b!7099828 (= e!4267537 tp_is_empty!44967)))

(declare-fun b!7099831 () Bool)

(declare-fun tp!1951573 () Bool)

(declare-fun tp!1951574 () Bool)

(assert (=> b!7099831 (= e!4267537 (and tp!1951573 tp!1951574))))

(declare-fun b!7099829 () Bool)

(declare-fun tp!1951576 () Bool)

(declare-fun tp!1951575 () Bool)

(assert (=> b!7099829 (= e!4267537 (and tp!1951576 tp!1951575))))

(assert (= (and b!7099733 ((_ is ElementMatch!17867) (regTwo!36247 r!11554))) b!7099828))

(assert (= (and b!7099733 ((_ is Concat!26712) (regTwo!36247 r!11554))) b!7099829))

(assert (= (and b!7099733 ((_ is Star!17867) (regTwo!36247 r!11554))) b!7099830))

(assert (= (and b!7099733 ((_ is Union!17867) (regTwo!36247 r!11554))) b!7099831))

(declare-fun e!4267540 () Bool)

(assert (=> b!7099734 (= tp!1951545 e!4267540)))

(declare-fun b!7099840 () Bool)

(declare-fun tp!1951581 () Bool)

(assert (=> b!7099840 (= e!4267540 tp!1951581)))

(declare-fun b!7099838 () Bool)

(assert (=> b!7099838 (= e!4267540 tp_is_empty!44967)))

(declare-fun b!7099841 () Bool)

(declare-fun tp!1951582 () Bool)

(declare-fun tp!1951583 () Bool)

(assert (=> b!7099841 (= e!4267540 (and tp!1951582 tp!1951583))))

(declare-fun b!7099839 () Bool)

(declare-fun tp!1951585 () Bool)

(declare-fun tp!1951584 () Bool)

(assert (=> b!7099839 (= e!4267540 (and tp!1951585 tp!1951584))))

(assert (= (and b!7099734 ((_ is ElementMatch!17867) (reg!18196 r!11554))) b!7099838))

(assert (= (and b!7099734 ((_ is Concat!26712) (reg!18196 r!11554))) b!7099839))

(assert (= (and b!7099734 ((_ is Star!17867) (reg!18196 r!11554))) b!7099840))

(assert (= (and b!7099734 ((_ is Union!17867) (reg!18196 r!11554))) b!7099841))

(declare-fun b!7099850 () Bool)

(declare-fun e!4267543 () Bool)

(declare-fun tp!1951596 () Bool)

(declare-fun tp!1951597 () Bool)

(assert (=> b!7099850 (= e!4267543 (and tp!1951596 tp!1951597))))

(assert (=> b!7099740 (= tp!1951547 e!4267543)))

(assert (= (and b!7099740 ((_ is Cons!68704) (exprs!7361 auxCtx!45))) b!7099850))

(declare-fun e!4267544 () Bool)

(assert (=> b!7099735 (= tp!1951544 e!4267544)))

(declare-fun b!7099853 () Bool)

(declare-fun tp!1951598 () Bool)

(assert (=> b!7099853 (= e!4267544 tp!1951598)))

(declare-fun b!7099851 () Bool)

(assert (=> b!7099851 (= e!4267544 tp_is_empty!44967)))

(declare-fun b!7099854 () Bool)

(declare-fun tp!1951599 () Bool)

(declare-fun tp!1951600 () Bool)

(assert (=> b!7099854 (= e!4267544 (and tp!1951599 tp!1951600))))

(declare-fun b!7099852 () Bool)

(declare-fun tp!1951602 () Bool)

(declare-fun tp!1951601 () Bool)

(assert (=> b!7099852 (= e!4267544 (and tp!1951602 tp!1951601))))

(assert (= (and b!7099735 ((_ is ElementMatch!17867) (regOne!36246 r!11554))) b!7099851))

(assert (= (and b!7099735 ((_ is Concat!26712) (regOne!36246 r!11554))) b!7099852))

(assert (= (and b!7099735 ((_ is Star!17867) (regOne!36246 r!11554))) b!7099853))

(assert (= (and b!7099735 ((_ is Union!17867) (regOne!36246 r!11554))) b!7099854))

(declare-fun e!4267546 () Bool)

(assert (=> b!7099735 (= tp!1951548 e!4267546)))

(declare-fun b!7099861 () Bool)

(declare-fun tp!1951608 () Bool)

(assert (=> b!7099861 (= e!4267546 tp!1951608)))

(declare-fun b!7099859 () Bool)

(assert (=> b!7099859 (= e!4267546 tp_is_empty!44967)))

(declare-fun b!7099862 () Bool)

(declare-fun tp!1951609 () Bool)

(declare-fun tp!1951610 () Bool)

(assert (=> b!7099862 (= e!4267546 (and tp!1951609 tp!1951610))))

(declare-fun b!7099860 () Bool)

(declare-fun tp!1951612 () Bool)

(declare-fun tp!1951611 () Bool)

(assert (=> b!7099860 (= e!4267546 (and tp!1951612 tp!1951611))))

(assert (= (and b!7099735 ((_ is ElementMatch!17867) (regTwo!36246 r!11554))) b!7099859))

(assert (= (and b!7099735 ((_ is Concat!26712) (regTwo!36246 r!11554))) b!7099860))

(assert (= (and b!7099735 ((_ is Star!17867) (regTwo!36246 r!11554))) b!7099861))

(assert (= (and b!7099735 ((_ is Union!17867) (regTwo!36246 r!11554))) b!7099862))

(declare-fun b!7099868 () Bool)

(declare-fun e!4267549 () Bool)

(declare-fun tp!1951620 () Bool)

(declare-fun tp!1951621 () Bool)

(assert (=> b!7099868 (= e!4267549 (and tp!1951620 tp!1951621))))

(assert (=> b!7099736 (= tp!1951546 e!4267549)))

(assert (= (and b!7099736 ((_ is Cons!68704) (exprs!7361 c!9994))) b!7099868))

(declare-fun b_lambda!271269 () Bool)

(assert (= b_lambda!271265 (or b!7099739 b_lambda!271269)))

(declare-fun bs!1884213 () Bool)

(declare-fun d!2218439 () Bool)

(assert (= bs!1884213 (and d!2218439 b!7099739)))

(assert (=> bs!1884213 (= (dynLambda!28039 lambda!430881 (h!75152 (exprs!7361 c!9994))) (validRegex!9140 (h!75152 (exprs!7361 c!9994))))))

(declare-fun m!7825888 () Bool)

(assert (=> bs!1884213 m!7825888))

(assert (=> b!7099801 d!2218439))

(check-sat (not b!7099839) (not b!7099825) (not b!7099862) (not b!7099852) (not b!7099831) (not b!7099824) (not bm!646394) (not bs!1884213) (not b!7099841) (not b!7099868) (not b_lambda!271269) (not b!7099860) (not b!7099826) (not b!7099853) (not d!2218427) (not b!7099854) (not bm!646393) (not b!7099829) (not b!7099830) (not b!7099840) (not b!7099850) (not b!7099861) (not b!7099779) tp_is_empty!44967 (not d!2218419) (not d!2218415) (not d!2218429) (not d!2218435) (not b!7099802))
(check-sat)
