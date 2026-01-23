; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!689428 () Bool)

(assert start!689428)

(declare-fun b!7083517 () Bool)

(assert (=> b!7083517 true))

(declare-fun bs!1882736 () Bool)

(declare-fun b!7083521 () Bool)

(assert (= bs!1882736 (and b!7083521 b!7083517)))

(declare-fun lambda!428757 () Int)

(declare-fun lambda!428756 () Int)

(assert (=> bs!1882736 (not (= lambda!428757 lambda!428756))))

(declare-fun setRes!50641 () Bool)

(declare-datatypes ((C!35708 0))(
  ( (C!35709 (val!27556 Int)) )
))
(declare-datatypes ((Regex!17719 0))(
  ( (ElementMatch!17719 (c!1322216 C!35708)) (Concat!26564 (regOne!35950 Regex!17719) (regTwo!35950 Regex!17719)) (EmptyExpr!17719) (Star!17719 (reg!18048 Regex!17719)) (EmptyLang!17719) (Union!17719 (regOne!35951 Regex!17719) (regTwo!35951 Regex!17719)) )
))
(declare-datatypes ((List!68677 0))(
  ( (Nil!68553) (Cons!68553 (h!75001 Regex!17719) (t!382462 List!68677)) )
))
(declare-datatypes ((Context!13430 0))(
  ( (Context!13431 (exprs!7215 List!68677)) )
))
(declare-fun setElem!50641 () Context!13430)

(declare-fun setNonEmpty!50641 () Bool)

(declare-fun e!4258596 () Bool)

(declare-fun tp!1944164 () Bool)

(declare-fun inv!87156 (Context!13430) Bool)

(assert (=> setNonEmpty!50641 (= setRes!50641 (and tp!1944164 (inv!87156 setElem!50641) e!4258596))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!570 () (InoxSet Context!13430))

(declare-fun setRest!50641 () (InoxSet Context!13430))

(assert (=> setNonEmpty!50641 (= z1!570 ((_ map or) (store ((as const (Array Context!13430 Bool)) false) setElem!50641 true) setRest!50641))))

(declare-fun b!7083512 () Bool)

(declare-fun res!2893849 () Bool)

(declare-fun e!4258600 () Bool)

(assert (=> b!7083512 (=> res!2893849 e!4258600)))

(declare-datatypes ((List!68678 0))(
  ( (Nil!68554) (Cons!68554 (h!75002 C!35708) (t!382463 List!68678)) )
))
(declare-fun ++!15895 (List!68678 List!68678) List!68678)

(assert (=> b!7083512 (= res!2893849 (not (= (++!15895 Nil!68554 Nil!68554) Nil!68554)))))

(declare-fun b!7083513 () Bool)

(declare-fun res!2893846 () Bool)

(declare-fun e!4258593 () Bool)

(assert (=> b!7083513 (=> (not res!2893846) (not e!4258593))))

(declare-fun lt!2554242 () (InoxSet Context!13430))

(declare-fun nullableZipper!2750 ((InoxSet Context!13430)) Bool)

(assert (=> b!7083513 (= res!2893846 (nullableZipper!2750 lt!2554242))))

(declare-fun b!7083514 () Bool)

(declare-fun e!4258597 () Bool)

(assert (=> b!7083514 (= e!4258593 e!4258597)))

(declare-fun res!2893847 () Bool)

(assert (=> b!7083514 (=> (not res!2893847) (not e!4258597))))

(declare-fun lt!2554238 () Context!13430)

(declare-fun nullableContext!130 (Context!13430) Bool)

(assert (=> b!7083514 (= res!2893847 (nullableContext!130 lt!2554238))))

(declare-fun lambda!428754 () Int)

(declare-fun getWitness!1862 ((InoxSet Context!13430) Int) Context!13430)

(assert (=> b!7083514 (= lt!2554238 (getWitness!1862 lt!2554242 lambda!428754))))

(declare-fun b!7083515 () Bool)

(declare-fun res!2893852 () Bool)

(declare-fun e!4258599 () Bool)

(assert (=> b!7083515 (=> res!2893852 e!4258599)))

(declare-fun ct2!306 () Context!13430)

(assert (=> b!7083515 (= res!2893852 (not (nullableContext!130 ct2!306)))))

(declare-fun b!7083516 () Bool)

(declare-fun res!2893843 () Bool)

(assert (=> b!7083516 (=> (not res!2893843) (not e!4258593))))

(declare-fun s!7408 () List!68678)

(get-info :version)

(assert (=> b!7083516 (= res!2893843 (not ((_ is Cons!68554) s!7408)))))

(declare-fun e!4258595 () Bool)

(assert (=> b!7083517 (= e!4258597 e!4258595)))

(declare-fun res!2893850 () Bool)

(assert (=> b!7083517 (=> (not res!2893850) (not e!4258595))))

(declare-fun lt!2554237 () List!68677)

(assert (=> b!7083517 (= res!2893850 (= (Context!13431 lt!2554237) lt!2554238))))

(declare-fun lt!2554233 () Context!13430)

(declare-fun ++!15896 (List!68677 List!68677) List!68677)

(assert (=> b!7083517 (= lt!2554237 (++!15896 (exprs!7215 lt!2554233) (exprs!7215 ct2!306)))))

(declare-datatypes ((Unit!162149 0))(
  ( (Unit!162150) )
))
(declare-fun lt!2554240 () Unit!162149)

(declare-fun lemmaConcatPreservesForall!1030 (List!68677 List!68677 Int) Unit!162149)

(assert (=> b!7083517 (= lt!2554240 (lemmaConcatPreservesForall!1030 (exprs!7215 lt!2554233) (exprs!7215 ct2!306) lambda!428756))))

(declare-fun lambda!428755 () Int)

(declare-fun mapPost2!546 ((InoxSet Context!13430) Int Context!13430) Context!13430)

(assert (=> b!7083517 (= lt!2554233 (mapPost2!546 z1!570 lambda!428755 lt!2554238))))

(declare-fun b!7083518 () Bool)

(declare-fun res!2893854 () Bool)

(assert (=> b!7083518 (=> (not res!2893854) (not e!4258593))))

(declare-fun exists!3821 ((InoxSet Context!13430) Int) Bool)

(assert (=> b!7083518 (= res!2893854 (exists!3821 lt!2554242 lambda!428754))))

(declare-fun lt!2554239 () (InoxSet Context!13430))

(declare-fun b!7083519 () Bool)

(declare-datatypes ((tuple2!68348 0))(
  ( (tuple2!68349 (_1!37477 List!68678) (_2!37477 List!68678)) )
))
(declare-datatypes ((Option!17006 0))(
  ( (None!17005) (Some!17005 (v!53299 tuple2!68348)) )
))
(declare-fun isDefined!13707 (Option!17006) Bool)

(declare-fun findConcatSeparationZippers!522 ((InoxSet Context!13430) (InoxSet Context!13430) List!68678 List!68678 List!68678) Option!17006)

(assert (=> b!7083519 (= e!4258600 (isDefined!13707 (findConcatSeparationZippers!522 z1!570 lt!2554239 Nil!68554 s!7408 s!7408)))))

(assert (=> b!7083519 (isDefined!13707 (findConcatSeparationZippers!522 z1!570 lt!2554239 Nil!68554 Nil!68554 Nil!68554))))

(declare-fun lt!2554234 () Unit!162149)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!108 ((InoxSet Context!13430) (InoxSet Context!13430) List!68678 List!68678 List!68678 List!68678 List!68678) Unit!162149)

(assert (=> b!7083519 (= lt!2554234 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!108 z1!570 lt!2554239 Nil!68554 Nil!68554 Nil!68554 Nil!68554 Nil!68554))))

(declare-fun setIsEmpty!50641 () Bool)

(assert (=> setIsEmpty!50641 setRes!50641))

(assert (=> b!7083521 (= e!4258595 (not e!4258599))))

(declare-fun res!2893851 () Bool)

(assert (=> b!7083521 (=> res!2893851 e!4258599)))

(assert (=> b!7083521 (= res!2893851 (not (nullableContext!130 lt!2554233)))))

(declare-fun lt!2554230 () Unit!162149)

(declare-fun lemmaContentSubsetPreservesForall!364 (List!68677 List!68677 Int) Unit!162149)

(assert (=> b!7083521 (= lt!2554230 (lemmaContentSubsetPreservesForall!364 lt!2554237 (exprs!7215 ct2!306) lambda!428757))))

(declare-fun lt!2554235 () Unit!162149)

(assert (=> b!7083521 (= lt!2554235 (lemmaContentSubsetPreservesForall!364 lt!2554237 (exprs!7215 lt!2554233) lambda!428757))))

(declare-fun subseq!713 (List!68677 List!68677) Bool)

(assert (=> b!7083521 (subseq!713 (exprs!7215 ct2!306) lt!2554237)))

(declare-fun lt!2554232 () Unit!162149)

(declare-fun lemmaConcatThenSecondSubseqOfTot!34 (List!68677 List!68677) Unit!162149)

(assert (=> b!7083521 (= lt!2554232 (lemmaConcatThenSecondSubseqOfTot!34 (exprs!7215 lt!2554233) (exprs!7215 ct2!306)))))

(assert (=> b!7083521 (subseq!713 (exprs!7215 lt!2554233) lt!2554237)))

(declare-fun lt!2554241 () Unit!162149)

(declare-fun lemmaConcatThenFirstSubseqOfTot!34 (List!68677 List!68677) Unit!162149)

(assert (=> b!7083521 (= lt!2554241 (lemmaConcatThenFirstSubseqOfTot!34 (exprs!7215 lt!2554233) (exprs!7215 ct2!306)))))

(declare-fun b!7083522 () Bool)

(declare-fun res!2893853 () Bool)

(assert (=> b!7083522 (=> res!2893853 e!4258600)))

(declare-fun isPrefix!5872 (List!68678 List!68678) Bool)

(assert (=> b!7083522 (= res!2893853 (not (isPrefix!5872 Nil!68554 Nil!68554)))))

(declare-fun b!7083523 () Bool)

(declare-fun e!4258594 () Bool)

(declare-fun tp!1944163 () Bool)

(assert (=> b!7083523 (= e!4258594 tp!1944163)))

(declare-fun b!7083524 () Bool)

(declare-fun tp!1944162 () Bool)

(assert (=> b!7083524 (= e!4258596 tp!1944162)))

(declare-fun b!7083525 () Bool)

(declare-fun e!4258598 () Bool)

(declare-fun tp_is_empty!44663 () Bool)

(declare-fun tp!1944161 () Bool)

(assert (=> b!7083525 (= e!4258598 (and tp_is_empty!44663 tp!1944161))))

(declare-fun b!7083526 () Bool)

(assert (=> b!7083526 (= e!4258599 e!4258600)))

(declare-fun res!2893848 () Bool)

(assert (=> b!7083526 (=> res!2893848 e!4258600)))

(declare-fun matchZipper!3259 ((InoxSet Context!13430) List!68678) Bool)

(assert (=> b!7083526 (= res!2893848 (not (matchZipper!3259 z1!570 Nil!68554)))))

(assert (=> b!7083526 (exists!3821 lt!2554239 lambda!428754)))

(declare-fun lt!2554236 () Unit!162149)

(declare-fun lemmaContainsThenExists!195 ((InoxSet Context!13430) Context!13430 Int) Unit!162149)

(assert (=> b!7083526 (= lt!2554236 (lemmaContainsThenExists!195 lt!2554239 ct2!306 lambda!428754))))

(assert (=> b!7083526 (= lt!2554239 (store ((as const (Array Context!13430 Bool)) false) ct2!306 true))))

(assert (=> b!7083526 (exists!3821 z1!570 lambda!428754)))

(declare-fun lt!2554231 () Unit!162149)

(assert (=> b!7083526 (= lt!2554231 (lemmaContainsThenExists!195 z1!570 lt!2554233 lambda!428754))))

(declare-fun b!7083520 () Bool)

(declare-fun res!2893844 () Bool)

(assert (=> b!7083520 (=> res!2893844 e!4258600)))

(assert (=> b!7083520 (= res!2893844 (not (matchZipper!3259 lt!2554239 Nil!68554)))))

(declare-fun res!2893845 () Bool)

(assert (=> start!689428 (=> (not res!2893845) (not e!4258593))))

(assert (=> start!689428 (= res!2893845 (matchZipper!3259 lt!2554242 s!7408))))

(declare-fun appendTo!840 ((InoxSet Context!13430) Context!13430) (InoxSet Context!13430))

(assert (=> start!689428 (= lt!2554242 (appendTo!840 z1!570 ct2!306))))

(assert (=> start!689428 e!4258593))

(declare-fun condSetEmpty!50641 () Bool)

(assert (=> start!689428 (= condSetEmpty!50641 (= z1!570 ((as const (Array Context!13430 Bool)) false)))))

(assert (=> start!689428 setRes!50641))

(assert (=> start!689428 (and (inv!87156 ct2!306) e!4258594)))

(assert (=> start!689428 e!4258598))

(assert (= (and start!689428 res!2893845) b!7083516))

(assert (= (and b!7083516 res!2893843) b!7083513))

(assert (= (and b!7083513 res!2893846) b!7083518))

(assert (= (and b!7083518 res!2893854) b!7083514))

(assert (= (and b!7083514 res!2893847) b!7083517))

(assert (= (and b!7083517 res!2893850) b!7083521))

(assert (= (and b!7083521 (not res!2893851)) b!7083515))

(assert (= (and b!7083515 (not res!2893852)) b!7083526))

(assert (= (and b!7083526 (not res!2893848)) b!7083520))

(assert (= (and b!7083520 (not res!2893844)) b!7083512))

(assert (= (and b!7083512 (not res!2893849)) b!7083522))

(assert (= (and b!7083522 (not res!2893853)) b!7083519))

(assert (= (and start!689428 condSetEmpty!50641) setIsEmpty!50641))

(assert (= (and start!689428 (not condSetEmpty!50641)) setNonEmpty!50641))

(assert (= setNonEmpty!50641 b!7083524))

(assert (= start!689428 b!7083523))

(assert (= (and start!689428 ((_ is Cons!68554) s!7408)) b!7083525))

(declare-fun m!7815662 () Bool)

(assert (=> b!7083526 m!7815662))

(declare-fun m!7815664 () Bool)

(assert (=> b!7083526 m!7815664))

(declare-fun m!7815666 () Bool)

(assert (=> b!7083526 m!7815666))

(declare-fun m!7815668 () Bool)

(assert (=> b!7083526 m!7815668))

(declare-fun m!7815670 () Bool)

(assert (=> b!7083526 m!7815670))

(declare-fun m!7815672 () Bool)

(assert (=> b!7083526 m!7815672))

(declare-fun m!7815674 () Bool)

(assert (=> b!7083519 m!7815674))

(declare-fun m!7815676 () Bool)

(assert (=> b!7083519 m!7815676))

(declare-fun m!7815678 () Bool)

(assert (=> b!7083519 m!7815678))

(assert (=> b!7083519 m!7815678))

(declare-fun m!7815680 () Bool)

(assert (=> b!7083519 m!7815680))

(assert (=> b!7083519 m!7815676))

(declare-fun m!7815682 () Bool)

(assert (=> b!7083519 m!7815682))

(declare-fun m!7815684 () Bool)

(assert (=> b!7083515 m!7815684))

(declare-fun m!7815686 () Bool)

(assert (=> start!689428 m!7815686))

(declare-fun m!7815688 () Bool)

(assert (=> start!689428 m!7815688))

(declare-fun m!7815690 () Bool)

(assert (=> start!689428 m!7815690))

(declare-fun m!7815692 () Bool)

(assert (=> setNonEmpty!50641 m!7815692))

(declare-fun m!7815694 () Bool)

(assert (=> b!7083520 m!7815694))

(declare-fun m!7815696 () Bool)

(assert (=> b!7083518 m!7815696))

(declare-fun m!7815698 () Bool)

(assert (=> b!7083512 m!7815698))

(declare-fun m!7815700 () Bool)

(assert (=> b!7083521 m!7815700))

(declare-fun m!7815702 () Bool)

(assert (=> b!7083521 m!7815702))

(declare-fun m!7815704 () Bool)

(assert (=> b!7083521 m!7815704))

(declare-fun m!7815706 () Bool)

(assert (=> b!7083521 m!7815706))

(declare-fun m!7815708 () Bool)

(assert (=> b!7083521 m!7815708))

(declare-fun m!7815710 () Bool)

(assert (=> b!7083521 m!7815710))

(declare-fun m!7815712 () Bool)

(assert (=> b!7083521 m!7815712))

(declare-fun m!7815714 () Bool)

(assert (=> b!7083517 m!7815714))

(declare-fun m!7815716 () Bool)

(assert (=> b!7083517 m!7815716))

(declare-fun m!7815718 () Bool)

(assert (=> b!7083517 m!7815718))

(declare-fun m!7815720 () Bool)

(assert (=> b!7083522 m!7815720))

(declare-fun m!7815722 () Bool)

(assert (=> b!7083513 m!7815722))

(declare-fun m!7815724 () Bool)

(assert (=> b!7083514 m!7815724))

(declare-fun m!7815726 () Bool)

(assert (=> b!7083514 m!7815726))

(check-sat (not b!7083521) (not b!7083514) (not b!7083520) (not b!7083525) (not b!7083513) (not start!689428) tp_is_empty!44663 (not setNonEmpty!50641) (not b!7083515) (not b!7083526) (not b!7083522) (not b!7083512) (not b!7083517) (not b!7083524) (not b!7083518) (not b!7083519) (not b!7083523))
(check-sat)
