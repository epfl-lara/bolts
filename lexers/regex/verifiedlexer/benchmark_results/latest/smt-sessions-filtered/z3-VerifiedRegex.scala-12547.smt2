; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!696708 () Bool)

(assert start!696708)

(declare-fun b!7145471 () Bool)

(declare-fun e!4294072 () Bool)

(declare-fun e!4294071 () Bool)

(assert (=> b!7145471 (= e!4294072 e!4294071)))

(declare-fun res!2915444 () Bool)

(assert (=> b!7145471 (=> res!2915444 e!4294071)))

(declare-datatypes ((C!36680 0))(
  ( (C!36681 (val!28288 Int)) )
))
(declare-datatypes ((Regex!18203 0))(
  ( (ElementMatch!18203 (c!1332524 C!36680)) (Concat!27048 (regOne!36918 Regex!18203) (regTwo!36918 Regex!18203)) (EmptyExpr!18203) (Star!18203 (reg!18532 Regex!18203)) (EmptyLang!18203) (Union!18203 (regOne!36919 Regex!18203) (regTwo!36919 Regex!18203)) )
))
(declare-datatypes ((List!69484 0))(
  ( (Nil!69360) (Cons!69360 (h!75808 Regex!18203) (t!383501 List!69484)) )
))
(declare-datatypes ((Context!14394 0))(
  ( (Context!14395 (exprs!7697 List!69484)) )
))
(declare-fun lt!2568729 () Context!14394)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3189 () (InoxSet Context!14394))

(assert (=> b!7145471 (= res!2915444 (not (select z!3189 lt!2568729)))))

(declare-fun lambda!435654 () Int)

(declare-fun getWitness!1990 ((InoxSet Context!14394) Int) Context!14394)

(assert (=> b!7145471 (= lt!2568729 (getWitness!1990 z!3189 lambda!435654))))

(declare-fun b!7145472 () Bool)

(declare-fun e!4294067 () Bool)

(declare-fun tp_is_empty!46043 () Bool)

(assert (=> b!7145472 (= e!4294067 tp_is_empty!46043)))

(declare-fun b!7145473 () Bool)

(declare-fun e!4294074 () Bool)

(declare-fun e!4294068 () Bool)

(assert (=> b!7145473 (= e!4294074 e!4294068)))

(declare-fun res!2915443 () Bool)

(assert (=> b!7145473 (=> (not res!2915443) (not e!4294068))))

(declare-fun r!11483 () Regex!18203)

(declare-datatypes ((List!69485 0))(
  ( (Nil!69361) (Cons!69361 (h!75809 Context!14394) (t!383502 List!69485)) )
))
(declare-fun lt!2568731 () List!69485)

(declare-fun unfocusZipper!2551 (List!69485) Regex!18203)

(assert (=> b!7145473 (= res!2915443 (= r!11483 (unfocusZipper!2551 lt!2568731)))))

(declare-fun toList!11234 ((InoxSet Context!14394)) List!69485)

(assert (=> b!7145473 (= lt!2568731 (toList!11234 z!3189))))

(declare-fun b!7145474 () Bool)

(declare-fun res!2915442 () Bool)

(assert (=> b!7145474 (=> res!2915442 e!4294072)))

(declare-fun exists!4032 ((InoxSet Context!14394) Int) Bool)

(assert (=> b!7145474 (= res!2915442 (not (exists!4032 z!3189 lambda!435654)))))

(declare-fun setIsEmpty!52723 () Bool)

(declare-fun setRes!52723 () Bool)

(assert (=> setIsEmpty!52723 setRes!52723))

(declare-fun b!7145475 () Bool)

(declare-fun res!2915439 () Bool)

(assert (=> b!7145475 (=> res!2915439 e!4294072)))

(declare-fun lt!2568730 () Bool)

(assert (=> b!7145475 (= res!2915439 lt!2568730)))

(declare-fun b!7145476 () Bool)

(declare-fun e!4294069 () Bool)

(declare-fun lt!2568732 () List!69484)

(declare-fun lambda!435653 () Int)

(declare-fun exists!4033 (List!69484 Int) Bool)

(assert (=> b!7145476 (= e!4294069 (not (exists!4033 lt!2568732 lambda!435653)))))

(assert (=> b!7145476 (exists!4033 lt!2568732 lambda!435653)))

(declare-datatypes ((Unit!163273 0))(
  ( (Unit!163274) )
))
(declare-fun lt!2568733 () Unit!163273)

(declare-fun lt!2568726 () Regex!18203)

(declare-fun lemmaContainsThenExists!207 (List!69484 Regex!18203 Int) Unit!163273)

(assert (=> b!7145476 (= lt!2568733 (lemmaContainsThenExists!207 lt!2568732 lt!2568726 lambda!435653))))

(declare-fun b!7145477 () Bool)

(declare-fun tp!1971201 () Bool)

(declare-fun tp!1971195 () Bool)

(assert (=> b!7145477 (= e!4294067 (and tp!1971201 tp!1971195))))

(declare-fun b!7145478 () Bool)

(assert (=> b!7145478 (= e!4294071 e!4294069)))

(declare-fun res!2915436 () Bool)

(assert (=> b!7145478 (=> res!2915436 e!4294069)))

(declare-fun lt!2568736 () Bool)

(assert (=> b!7145478 (= res!2915436 (not lt!2568736))))

(declare-fun forall!17039 (List!69484 Int) Bool)

(assert (=> b!7145478 (= lt!2568736 (forall!17039 (exprs!7697 lt!2568729) lambda!435653))))

(declare-fun nullable!7720 (Regex!18203) Bool)

(assert (=> b!7145478 (= lt!2568736 (nullable!7720 lt!2568726))))

(declare-fun lt!2568727 () Unit!163273)

(declare-fun nullableGenConcatSpec!24 (Regex!18203 List!69484) Unit!163273)

(assert (=> b!7145478 (= lt!2568727 (nullableGenConcatSpec!24 lt!2568726 (exprs!7697 lt!2568729)))))

(declare-fun contains!20635 (List!69484 Regex!18203) Bool)

(assert (=> b!7145478 (contains!20635 lt!2568732 lt!2568726)))

(declare-fun generalisedConcat!2380 (List!69484) Regex!18203)

(assert (=> b!7145478 (= lt!2568726 (generalisedConcat!2380 (exprs!7697 lt!2568729)))))

(declare-fun lt!2568735 () Unit!163273)

(declare-fun lemmaZipperContainsContextThenUnfocusZipperListContains!26 (List!69485 Context!14394) Unit!163273)

(assert (=> b!7145478 (= lt!2568735 (lemmaZipperContainsContextThenUnfocusZipperListContains!26 lt!2568731 lt!2568729))))

(declare-fun b!7145480 () Bool)

(declare-fun tp!1971198 () Bool)

(declare-fun tp!1971199 () Bool)

(assert (=> b!7145480 (= e!4294067 (and tp!1971198 tp!1971199))))

(declare-fun res!2915445 () Bool)

(assert (=> start!696708 (=> (not res!2915445) (not e!4294074))))

(declare-fun validRegex!9370 (Regex!18203) Bool)

(assert (=> start!696708 (= res!2915445 (validRegex!9370 r!11483))))

(assert (=> start!696708 e!4294074))

(assert (=> start!696708 e!4294067))

(declare-fun condSetEmpty!52723 () Bool)

(assert (=> start!696708 (= condSetEmpty!52723 (= z!3189 ((as const (Array Context!14394 Bool)) false)))))

(assert (=> start!696708 setRes!52723))

(declare-fun b!7145479 () Bool)

(declare-fun e!4294070 () Bool)

(assert (=> b!7145479 (= e!4294068 e!4294070)))

(declare-fun res!2915438 () Bool)

(assert (=> b!7145479 (=> (not res!2915438) (not e!4294070))))

(declare-fun lt!2568734 () Regex!18203)

(assert (=> b!7145479 (= res!2915438 (= r!11483 lt!2568734))))

(declare-fun generalisedUnion!2708 (List!69484) Regex!18203)

(assert (=> b!7145479 (= lt!2568734 (generalisedUnion!2708 lt!2568732))))

(declare-fun unfocusZipperList!2244 (List!69485) List!69484)

(assert (=> b!7145479 (= lt!2568732 (unfocusZipperList!2244 lt!2568731))))

(declare-fun b!7145481 () Bool)

(declare-fun tp!1971196 () Bool)

(assert (=> b!7145481 (= e!4294067 tp!1971196)))

(declare-fun b!7145482 () Bool)

(declare-fun res!2915440 () Bool)

(assert (=> b!7145482 (=> res!2915440 e!4294072)))

(assert (=> b!7145482 (= res!2915440 (exists!4033 lt!2568732 lambda!435653))))

(declare-fun b!7145483 () Bool)

(declare-fun e!4294073 () Bool)

(declare-fun tp!1971197 () Bool)

(assert (=> b!7145483 (= e!4294073 tp!1971197)))

(declare-fun b!7145484 () Bool)

(declare-fun res!2915441 () Bool)

(assert (=> b!7145484 (=> res!2915441 e!4294071)))

(declare-fun nullableContext!168 (Context!14394) Bool)

(assert (=> b!7145484 (= res!2915441 (not (nullableContext!168 lt!2568729)))))

(declare-fun b!7145485 () Bool)

(assert (=> b!7145485 (= e!4294070 (not e!4294072))))

(declare-fun res!2915437 () Bool)

(assert (=> b!7145485 (=> res!2915437 e!4294072)))

(assert (=> b!7145485 (= res!2915437 (not (= lt!2568730 (exists!4033 lt!2568732 lambda!435653))))))

(assert (=> b!7145485 (= lt!2568730 (exists!4033 lt!2568732 lambda!435653))))

(assert (=> b!7145485 (= lt!2568730 (nullable!7720 lt!2568734))))

(declare-fun lt!2568728 () Unit!163273)

(declare-fun nullableGenUnionSpec!84 (Regex!18203 List!69484) Unit!163273)

(assert (=> b!7145485 (= lt!2568728 (nullableGenUnionSpec!84 lt!2568734 lt!2568732))))

(declare-fun setNonEmpty!52723 () Bool)

(declare-fun setElem!52723 () Context!14394)

(declare-fun tp!1971200 () Bool)

(declare-fun inv!88571 (Context!14394) Bool)

(assert (=> setNonEmpty!52723 (= setRes!52723 (and tp!1971200 (inv!88571 setElem!52723) e!4294073))))

(declare-fun setRest!52723 () (InoxSet Context!14394))

(assert (=> setNonEmpty!52723 (= z!3189 ((_ map or) (store ((as const (Array Context!14394 Bool)) false) setElem!52723 true) setRest!52723))))

(assert (= (and start!696708 res!2915445) b!7145473))

(assert (= (and b!7145473 res!2915443) b!7145479))

(assert (= (and b!7145479 res!2915438) b!7145485))

(assert (= (and b!7145485 (not res!2915437)) b!7145475))

(assert (= (and b!7145475 (not res!2915439)) b!7145482))

(assert (= (and b!7145482 (not res!2915440)) b!7145474))

(assert (= (and b!7145474 (not res!2915442)) b!7145471))

(assert (= (and b!7145471 (not res!2915444)) b!7145484))

(assert (= (and b!7145484 (not res!2915441)) b!7145478))

(assert (= (and b!7145478 (not res!2915436)) b!7145476))

(get-info :version)

(assert (= (and start!696708 ((_ is ElementMatch!18203) r!11483)) b!7145472))

(assert (= (and start!696708 ((_ is Concat!27048) r!11483)) b!7145480))

(assert (= (and start!696708 ((_ is Star!18203) r!11483)) b!7145481))

(assert (= (and start!696708 ((_ is Union!18203) r!11483)) b!7145477))

(assert (= (and start!696708 condSetEmpty!52723) setIsEmpty!52723))

(assert (= (and start!696708 (not condSetEmpty!52723)) setNonEmpty!52723))

(assert (= setNonEmpty!52723 b!7145483))

(declare-fun m!7858850 () Bool)

(assert (=> b!7145474 m!7858850))

(declare-fun m!7858852 () Bool)

(assert (=> b!7145471 m!7858852))

(declare-fun m!7858854 () Bool)

(assert (=> b!7145471 m!7858854))

(declare-fun m!7858856 () Bool)

(assert (=> setNonEmpty!52723 m!7858856))

(declare-fun m!7858858 () Bool)

(assert (=> b!7145473 m!7858858))

(declare-fun m!7858860 () Bool)

(assert (=> b!7145473 m!7858860))

(declare-fun m!7858862 () Bool)

(assert (=> b!7145484 m!7858862))

(declare-fun m!7858864 () Bool)

(assert (=> b!7145482 m!7858864))

(assert (=> b!7145485 m!7858864))

(assert (=> b!7145485 m!7858864))

(declare-fun m!7858866 () Bool)

(assert (=> b!7145485 m!7858866))

(declare-fun m!7858868 () Bool)

(assert (=> b!7145485 m!7858868))

(assert (=> b!7145476 m!7858864))

(assert (=> b!7145476 m!7858864))

(declare-fun m!7858870 () Bool)

(assert (=> b!7145476 m!7858870))

(declare-fun m!7858872 () Bool)

(assert (=> b!7145479 m!7858872))

(declare-fun m!7858874 () Bool)

(assert (=> b!7145479 m!7858874))

(declare-fun m!7858876 () Bool)

(assert (=> start!696708 m!7858876))

(declare-fun m!7858878 () Bool)

(assert (=> b!7145478 m!7858878))

(declare-fun m!7858880 () Bool)

(assert (=> b!7145478 m!7858880))

(declare-fun m!7858882 () Bool)

(assert (=> b!7145478 m!7858882))

(declare-fun m!7858884 () Bool)

(assert (=> b!7145478 m!7858884))

(declare-fun m!7858886 () Bool)

(assert (=> b!7145478 m!7858886))

(declare-fun m!7858888 () Bool)

(assert (=> b!7145478 m!7858888))

(check-sat (not b!7145477) (not b!7145478) (not b!7145473) (not b!7145474) (not b!7145476) (not b!7145480) tp_is_empty!46043 (not b!7145482) (not start!696708) (not b!7145484) (not b!7145481) (not setNonEmpty!52723) (not b!7145485) (not b!7145471) (not b!7145483) (not b!7145479))
(check-sat)
