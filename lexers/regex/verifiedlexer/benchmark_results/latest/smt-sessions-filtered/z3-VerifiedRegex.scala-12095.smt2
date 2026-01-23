; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!678000 () Bool)

(assert start!678000)

(declare-fun b!7024343 () Bool)

(assert (=> b!7024343 true))

(declare-fun b!7024335 () Bool)

(assert (=> b!7024335 true))

(declare-fun b!7024333 () Bool)

(assert (=> b!7024333 true))

(declare-fun b!7024332 () Bool)

(declare-fun res!2867485 () Bool)

(declare-fun e!4222601 () Bool)

(assert (=> b!7024332 (=> res!2867485 e!4222601)))

(declare-datatypes ((C!35144 0))(
  ( (C!35145 (val!27274 Int)) )
))
(declare-datatypes ((Regex!17437 0))(
  ( (ElementMatch!17437 (c!1305586 C!35144)) (Concat!26282 (regOne!35386 Regex!17437) (regTwo!35386 Regex!17437)) (EmptyExpr!17437) (Star!17437 (reg!17766 Regex!17437)) (EmptyLang!17437) (Union!17437 (regOne!35387 Regex!17437) (regTwo!35387 Regex!17437)) )
))
(declare-datatypes ((List!67839 0))(
  ( (Nil!67715) (Cons!67715 (h!74163 Regex!17437) (t!381594 List!67839)) )
))
(declare-datatypes ((Context!12866 0))(
  ( (Context!12867 (exprs!6933 List!67839)) )
))
(declare-fun lt!2513746 () Context!12866)

(declare-fun isEmpty!39483 (List!67839) Bool)

(assert (=> b!7024332 (= res!2867485 (isEmpty!39483 (exprs!6933 lt!2513746)))))

(declare-fun e!4222608 () Bool)

(assert (=> b!7024333 (= e!4222608 e!4222601)))

(declare-fun res!2867493 () Bool)

(assert (=> b!7024333 (=> res!2867493 e!4222601)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2513745 () (InoxSet Context!12866))

(declare-fun lt!2513762 () (InoxSet Context!12866))

(declare-datatypes ((List!67840 0))(
  ( (Nil!67716) (Cons!67716 (h!74164 C!35144) (t!381595 List!67840)) )
))
(declare-fun s!7408 () List!67840)

(declare-fun derivationStepZipper!2893 ((InoxSet Context!12866) C!35144) (InoxSet Context!12866))

(assert (=> b!7024333 (= res!2867493 (not (= (derivationStepZipper!2893 lt!2513762 (h!74164 s!7408)) lt!2513745)))))

(declare-fun lt!2513757 () Context!12866)

(declare-fun lambda!412601 () Int)

(declare-fun flatMap!2384 ((InoxSet Context!12866) Int) (InoxSet Context!12866))

(declare-fun derivationStepZipperUp!2047 (Context!12866 C!35144) (InoxSet Context!12866))

(assert (=> b!7024333 (= (flatMap!2384 lt!2513762 lambda!412601) (derivationStepZipperUp!2047 lt!2513757 (h!74164 s!7408)))))

(declare-datatypes ((Unit!161536 0))(
  ( (Unit!161537) )
))
(declare-fun lt!2513751 () Unit!161536)

(declare-fun lemmaFlatMapOnSingletonSet!1898 ((InoxSet Context!12866) Context!12866 Int) Unit!161536)

(assert (=> b!7024333 (= lt!2513751 (lemmaFlatMapOnSingletonSet!1898 lt!2513762 lt!2513757 lambda!412601))))

(assert (=> b!7024333 (= lt!2513745 (derivationStepZipperUp!2047 lt!2513757 (h!74164 s!7408)))))

(declare-fun lt!2513755 () Unit!161536)

(declare-fun lambda!412600 () Int)

(declare-fun ct2!306 () Context!12866)

(declare-fun lemmaConcatPreservesForall!758 (List!67839 List!67839 Int) Unit!161536)

(assert (=> b!7024333 (= lt!2513755 (lemmaConcatPreservesForall!758 (exprs!6933 lt!2513746) (exprs!6933 ct2!306) lambda!412600))))

(declare-fun b!7024334 () Bool)

(declare-fun e!4222598 () Bool)

(declare-fun e!4222603 () Bool)

(assert (=> b!7024334 (= e!4222598 e!4222603)))

(declare-fun res!2867483 () Bool)

(assert (=> b!7024334 (=> res!2867483 e!4222603)))

(declare-fun lt!2513744 () (InoxSet Context!12866))

(assert (=> b!7024334 (= res!2867483 (not (= lt!2513745 lt!2513744)))))

(declare-fun lt!2513761 () (InoxSet Context!12866))

(declare-fun lt!2513740 () (InoxSet Context!12866))

(assert (=> b!7024334 (= lt!2513744 ((_ map or) lt!2513761 lt!2513740))))

(declare-fun lt!2513764 () Context!12866)

(assert (=> b!7024334 (= lt!2513740 (derivationStepZipperUp!2047 lt!2513764 (h!74164 s!7408)))))

(declare-fun derivationStepZipperDown!2101 (Regex!17437 Context!12866 C!35144) (InoxSet Context!12866))

(assert (=> b!7024334 (= lt!2513761 (derivationStepZipperDown!2101 (h!74163 (exprs!6933 lt!2513746)) lt!2513764 (h!74164 s!7408)))))

(declare-fun lt!2513748 () List!67839)

(declare-fun ++!15470 (List!67839 List!67839) List!67839)

(assert (=> b!7024334 (= lt!2513764 (Context!12867 (++!15470 lt!2513748 (exprs!6933 ct2!306))))))

(declare-fun lt!2513756 () Unit!161536)

(assert (=> b!7024334 (= lt!2513756 (lemmaConcatPreservesForall!758 lt!2513748 (exprs!6933 ct2!306) lambda!412600))))

(declare-fun lt!2513765 () Unit!161536)

(assert (=> b!7024334 (= lt!2513765 (lemmaConcatPreservesForall!758 lt!2513748 (exprs!6933 ct2!306) lambda!412600))))

(declare-fun e!4222602 () Bool)

(declare-fun e!4222607 () Bool)

(assert (=> b!7024335 (= e!4222602 e!4222607)))

(declare-fun res!2867488 () Bool)

(assert (=> b!7024335 (=> res!2867488 e!4222607)))

(declare-fun lt!2513752 () Context!12866)

(declare-fun z1!570 () (InoxSet Context!12866))

(assert (=> b!7024335 (= res!2867488 (or (not (= lt!2513757 lt!2513752)) (not (select z1!570 lt!2513746))))))

(assert (=> b!7024335 (= lt!2513757 (Context!12867 (++!15470 (exprs!6933 lt!2513746) (exprs!6933 ct2!306))))))

(declare-fun lt!2513742 () Unit!161536)

(assert (=> b!7024335 (= lt!2513742 (lemmaConcatPreservesForall!758 (exprs!6933 lt!2513746) (exprs!6933 ct2!306) lambda!412600))))

(declare-fun lambda!412599 () Int)

(declare-fun mapPost2!278 ((InoxSet Context!12866) Int Context!12866) Context!12866)

(assert (=> b!7024335 (= lt!2513746 (mapPost2!278 z1!570 lambda!412599 lt!2513752))))

(declare-fun b!7024336 () Bool)

(declare-fun e!4222606 () Bool)

(declare-fun tp!1935216 () Bool)

(assert (=> b!7024336 (= e!4222606 tp!1935216)))

(declare-fun res!2867482 () Bool)

(declare-fun e!4222605 () Bool)

(assert (=> start!678000 (=> (not res!2867482) (not e!4222605))))

(declare-fun lt!2513743 () (InoxSet Context!12866))

(declare-fun matchZipper!2977 ((InoxSet Context!12866) List!67840) Bool)

(assert (=> start!678000 (= res!2867482 (matchZipper!2977 lt!2513743 s!7408))))

(declare-fun appendTo!558 ((InoxSet Context!12866) Context!12866) (InoxSet Context!12866))

(assert (=> start!678000 (= lt!2513743 (appendTo!558 z1!570 ct2!306))))

(assert (=> start!678000 e!4222605))

(declare-fun condSetEmpty!48938 () Bool)

(assert (=> start!678000 (= condSetEmpty!48938 (= z1!570 ((as const (Array Context!12866 Bool)) false)))))

(declare-fun setRes!48938 () Bool)

(assert (=> start!678000 setRes!48938))

(declare-fun inv!86451 (Context!12866) Bool)

(assert (=> start!678000 (and (inv!86451 ct2!306) e!4222606)))

(declare-fun e!4222600 () Bool)

(assert (=> start!678000 e!4222600))

(declare-fun b!7024337 () Bool)

(declare-fun e!4222609 () Bool)

(declare-fun tp!1935217 () Bool)

(assert (=> b!7024337 (= e!4222609 tp!1935217)))

(declare-fun b!7024338 () Bool)

(assert (=> b!7024338 (= e!4222607 e!4222608)))

(declare-fun res!2867487 () Bool)

(assert (=> b!7024338 (=> res!2867487 e!4222608)))

(declare-fun lt!2513753 () (InoxSet Context!12866))

(assert (=> b!7024338 (= res!2867487 (not (= lt!2513762 lt!2513753)))))

(assert (=> b!7024338 (= lt!2513762 (store ((as const (Array Context!12866 Bool)) false) lt!2513757 true))))

(declare-fun lt!2513758 () Unit!161536)

(assert (=> b!7024338 (= lt!2513758 (lemmaConcatPreservesForall!758 (exprs!6933 lt!2513746) (exprs!6933 ct2!306) lambda!412600))))

(declare-fun b!7024339 () Bool)

(declare-fun res!2867486 () Bool)

(assert (=> b!7024339 (=> (not res!2867486) (not e!4222605))))

(get-info :version)

(assert (=> b!7024339 (= res!2867486 ((_ is Cons!67716) s!7408))))

(declare-fun b!7024340 () Bool)

(declare-fun res!2867494 () Bool)

(assert (=> b!7024340 (=> res!2867494 e!4222601)))

(assert (=> b!7024340 (= res!2867494 (not ((_ is Cons!67715) (exprs!6933 lt!2513746))))))

(declare-fun b!7024341 () Bool)

(declare-fun e!4222599 () Bool)

(assert (=> b!7024341 (= e!4222603 e!4222599)))

(declare-fun res!2867489 () Bool)

(assert (=> b!7024341 (=> res!2867489 e!4222599)))

(declare-fun lt!2513750 () Bool)

(assert (=> b!7024341 (= res!2867489 (= (matchZipper!2977 lt!2513745 (t!381595 s!7408)) lt!2513750))))

(declare-fun lt!2513754 () Unit!161536)

(assert (=> b!7024341 (= lt!2513754 (lemmaConcatPreservesForall!758 lt!2513748 (exprs!6933 ct2!306) lambda!412600))))

(declare-fun e!4222604 () Bool)

(assert (=> b!7024341 (= (matchZipper!2977 lt!2513744 (t!381595 s!7408)) e!4222604)))

(declare-fun res!2867491 () Bool)

(assert (=> b!7024341 (=> res!2867491 e!4222604)))

(assert (=> b!7024341 (= res!2867491 lt!2513750)))

(assert (=> b!7024341 (= lt!2513750 (matchZipper!2977 lt!2513761 (t!381595 s!7408)))))

(declare-fun lt!2513749 () Unit!161536)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1510 ((InoxSet Context!12866) (InoxSet Context!12866) List!67840) Unit!161536)

(assert (=> b!7024341 (= lt!2513749 (lemmaZipperConcatMatchesSameAsBothZippers!1510 lt!2513761 lt!2513740 (t!381595 s!7408)))))

(declare-fun lt!2513760 () Unit!161536)

(assert (=> b!7024341 (= lt!2513760 (lemmaConcatPreservesForall!758 lt!2513748 (exprs!6933 ct2!306) lambda!412600))))

(declare-fun lt!2513763 () Unit!161536)

(assert (=> b!7024341 (= lt!2513763 (lemmaConcatPreservesForall!758 lt!2513748 (exprs!6933 ct2!306) lambda!412600))))

(declare-fun b!7024342 () Bool)

(declare-fun tp_is_empty!44099 () Bool)

(declare-fun tp!1935215 () Bool)

(assert (=> b!7024342 (= e!4222600 (and tp_is_empty!44099 tp!1935215))))

(assert (=> b!7024343 (= e!4222605 (not e!4222602))))

(declare-fun res!2867492 () Bool)

(assert (=> b!7024343 (=> res!2867492 e!4222602)))

(assert (=> b!7024343 (= res!2867492 (not (matchZipper!2977 lt!2513753 s!7408)))))

(assert (=> b!7024343 (= lt!2513753 (store ((as const (Array Context!12866 Bool)) false) lt!2513752 true))))

(declare-fun lambda!412598 () Int)

(declare-fun getWitness!1424 ((InoxSet Context!12866) Int) Context!12866)

(assert (=> b!7024343 (= lt!2513752 (getWitness!1424 lt!2513743 lambda!412598))))

(declare-datatypes ((List!67841 0))(
  ( (Nil!67717) (Cons!67717 (h!74165 Context!12866) (t!381596 List!67841)) )
))
(declare-fun lt!2513741 () List!67841)

(declare-fun exists!3343 (List!67841 Int) Bool)

(assert (=> b!7024343 (exists!3343 lt!2513741 lambda!412598)))

(declare-fun lt!2513747 () Unit!161536)

(declare-fun lemmaZipperMatchesExistsMatchingContext!376 (List!67841 List!67840) Unit!161536)

(assert (=> b!7024343 (= lt!2513747 (lemmaZipperMatchesExistsMatchingContext!376 lt!2513741 s!7408))))

(declare-fun toList!10780 ((InoxSet Context!12866)) List!67841)

(assert (=> b!7024343 (= lt!2513741 (toList!10780 lt!2513743))))

(declare-fun setIsEmpty!48938 () Bool)

(assert (=> setIsEmpty!48938 setRes!48938))

(declare-fun b!7024344 () Bool)

(assert (=> b!7024344 (= e!4222599 (matchZipper!2977 lt!2513740 (t!381595 s!7408)))))

(declare-fun lt!2513759 () Unit!161536)

(assert (=> b!7024344 (= lt!2513759 (lemmaConcatPreservesForall!758 lt!2513748 (exprs!6933 ct2!306) lambda!412600))))

(declare-fun b!7024345 () Bool)

(assert (=> b!7024345 (= e!4222601 e!4222598)))

(declare-fun res!2867484 () Bool)

(assert (=> b!7024345 (=> res!2867484 e!4222598)))

(declare-fun nullable!7148 (Regex!17437) Bool)

(assert (=> b!7024345 (= res!2867484 (not (nullable!7148 (h!74163 (exprs!6933 lt!2513746)))))))

(declare-fun tail!13504 (List!67839) List!67839)

(assert (=> b!7024345 (= lt!2513748 (tail!13504 (exprs!6933 lt!2513746)))))

(declare-fun setNonEmpty!48938 () Bool)

(declare-fun tp!1935214 () Bool)

(declare-fun setElem!48938 () Context!12866)

(assert (=> setNonEmpty!48938 (= setRes!48938 (and tp!1935214 (inv!86451 setElem!48938) e!4222609))))

(declare-fun setRest!48938 () (InoxSet Context!12866))

(assert (=> setNonEmpty!48938 (= z1!570 ((_ map or) (store ((as const (Array Context!12866 Bool)) false) setElem!48938 true) setRest!48938))))

(declare-fun b!7024346 () Bool)

(declare-fun res!2867490 () Bool)

(assert (=> b!7024346 (=> res!2867490 e!4222602)))

(assert (=> b!7024346 (= res!2867490 (not (select lt!2513743 lt!2513752)))))

(declare-fun b!7024347 () Bool)

(assert (=> b!7024347 (= e!4222604 (matchZipper!2977 lt!2513740 (t!381595 s!7408)))))

(assert (= (and start!678000 res!2867482) b!7024339))

(assert (= (and b!7024339 res!2867486) b!7024343))

(assert (= (and b!7024343 (not res!2867492)) b!7024346))

(assert (= (and b!7024346 (not res!2867490)) b!7024335))

(assert (= (and b!7024335 (not res!2867488)) b!7024338))

(assert (= (and b!7024338 (not res!2867487)) b!7024333))

(assert (= (and b!7024333 (not res!2867493)) b!7024340))

(assert (= (and b!7024340 (not res!2867494)) b!7024332))

(assert (= (and b!7024332 (not res!2867485)) b!7024345))

(assert (= (and b!7024345 (not res!2867484)) b!7024334))

(assert (= (and b!7024334 (not res!2867483)) b!7024341))

(assert (= (and b!7024341 (not res!2867491)) b!7024347))

(assert (= (and b!7024341 (not res!2867489)) b!7024344))

(assert (= (and start!678000 condSetEmpty!48938) setIsEmpty!48938))

(assert (= (and start!678000 (not condSetEmpty!48938)) setNonEmpty!48938))

(assert (= setNonEmpty!48938 b!7024337))

(assert (= start!678000 b!7024336))

(assert (= (and start!678000 ((_ is Cons!67716) s!7408)) b!7024342))

(declare-fun m!7727060 () Bool)

(assert (=> b!7024333 m!7727060))

(declare-fun m!7727062 () Bool)

(assert (=> b!7024333 m!7727062))

(declare-fun m!7727064 () Bool)

(assert (=> b!7024333 m!7727064))

(declare-fun m!7727066 () Bool)

(assert (=> b!7024333 m!7727066))

(declare-fun m!7727068 () Bool)

(assert (=> b!7024333 m!7727068))

(declare-fun m!7727070 () Bool)

(assert (=> start!678000 m!7727070))

(declare-fun m!7727072 () Bool)

(assert (=> start!678000 m!7727072))

(declare-fun m!7727074 () Bool)

(assert (=> start!678000 m!7727074))

(declare-fun m!7727076 () Bool)

(assert (=> setNonEmpty!48938 m!7727076))

(declare-fun m!7727078 () Bool)

(assert (=> b!7024347 m!7727078))

(declare-fun m!7727080 () Bool)

(assert (=> b!7024332 m!7727080))

(declare-fun m!7727082 () Bool)

(assert (=> b!7024345 m!7727082))

(declare-fun m!7727084 () Bool)

(assert (=> b!7024345 m!7727084))

(assert (=> b!7024344 m!7727078))

(declare-fun m!7727086 () Bool)

(assert (=> b!7024344 m!7727086))

(assert (=> b!7024341 m!7727086))

(declare-fun m!7727088 () Bool)

(assert (=> b!7024341 m!7727088))

(declare-fun m!7727090 () Bool)

(assert (=> b!7024341 m!7727090))

(assert (=> b!7024341 m!7727086))

(declare-fun m!7727092 () Bool)

(assert (=> b!7024341 m!7727092))

(declare-fun m!7727094 () Bool)

(assert (=> b!7024341 m!7727094))

(assert (=> b!7024341 m!7727086))

(declare-fun m!7727096 () Bool)

(assert (=> b!7024335 m!7727096))

(declare-fun m!7727098 () Bool)

(assert (=> b!7024335 m!7727098))

(assert (=> b!7024335 m!7727060))

(declare-fun m!7727100 () Bool)

(assert (=> b!7024335 m!7727100))

(declare-fun m!7727102 () Bool)

(assert (=> b!7024343 m!7727102))

(declare-fun m!7727104 () Bool)

(assert (=> b!7024343 m!7727104))

(declare-fun m!7727106 () Bool)

(assert (=> b!7024343 m!7727106))

(declare-fun m!7727108 () Bool)

(assert (=> b!7024343 m!7727108))

(declare-fun m!7727110 () Bool)

(assert (=> b!7024343 m!7727110))

(declare-fun m!7727112 () Bool)

(assert (=> b!7024343 m!7727112))

(declare-fun m!7727114 () Bool)

(assert (=> b!7024334 m!7727114))

(declare-fun m!7727116 () Bool)

(assert (=> b!7024334 m!7727116))

(assert (=> b!7024334 m!7727086))

(assert (=> b!7024334 m!7727086))

(declare-fun m!7727118 () Bool)

(assert (=> b!7024334 m!7727118))

(declare-fun m!7727120 () Bool)

(assert (=> b!7024338 m!7727120))

(assert (=> b!7024338 m!7727060))

(declare-fun m!7727122 () Bool)

(assert (=> b!7024346 m!7727122))

(check-sat (not b!7024345) (not start!678000) (not b!7024342) (not setNonEmpty!48938) (not b!7024336) (not b!7024332) (not b!7024343) tp_is_empty!44099 (not b!7024337) (not b!7024333) (not b!7024341) (not b!7024344) (not b!7024334) (not b!7024338) (not b!7024347) (not b!7024335))
(check-sat)
