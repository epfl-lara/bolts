; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!680926 () Bool)

(assert start!680926)

(declare-fun b!7039799 () Bool)

(assert (=> b!7039799 true))

(declare-fun b!7039814 () Bool)

(assert (=> b!7039814 true))

(declare-fun b!7039817 () Bool)

(assert (=> b!7039817 true))

(declare-fun e!4232053 () Bool)

(declare-fun e!4232045 () Bool)

(assert (=> b!7039799 (= e!4232053 (not e!4232045))))

(declare-fun res!2873886 () Bool)

(assert (=> b!7039799 (=> res!2873886 e!4232045)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35236 0))(
  ( (C!35237 (val!27320 Int)) )
))
(declare-datatypes ((Regex!17483 0))(
  ( (ElementMatch!17483 (c!1310247 C!35236)) (Concat!26328 (regOne!35478 Regex!17483) (regTwo!35478 Regex!17483)) (EmptyExpr!17483) (Star!17483 (reg!17812 Regex!17483)) (EmptyLang!17483) (Union!17483 (regOne!35479 Regex!17483) (regTwo!35479 Regex!17483)) )
))
(declare-datatypes ((List!67977 0))(
  ( (Nil!67853) (Cons!67853 (h!74301 Regex!17483) (t!381748 List!67977)) )
))
(declare-datatypes ((Context!12958 0))(
  ( (Context!12959 (exprs!6979 List!67977)) )
))
(declare-fun lt!2523383 () (InoxSet Context!12958))

(declare-datatypes ((List!67978 0))(
  ( (Nil!67854) (Cons!67854 (h!74302 C!35236) (t!381749 List!67978)) )
))
(declare-fun s!7408 () List!67978)

(declare-fun matchZipper!3023 ((InoxSet Context!12958) List!67978) Bool)

(assert (=> b!7039799 (= res!2873886 (not (matchZipper!3023 lt!2523383 s!7408)))))

(declare-fun lt!2523372 () Context!12958)

(assert (=> b!7039799 (= lt!2523383 (store ((as const (Array Context!12958 Bool)) false) lt!2523372 true))))

(declare-fun lt!2523363 () (InoxSet Context!12958))

(declare-fun lambda!416403 () Int)

(declare-fun getWitness!1502 ((InoxSet Context!12958) Int) Context!12958)

(assert (=> b!7039799 (= lt!2523372 (getWitness!1502 lt!2523363 lambda!416403))))

(declare-datatypes ((List!67979 0))(
  ( (Nil!67855) (Cons!67855 (h!74303 Context!12958) (t!381750 List!67979)) )
))
(declare-fun lt!2523373 () List!67979)

(declare-fun exists!3423 (List!67979 Int) Bool)

(assert (=> b!7039799 (exists!3423 lt!2523373 lambda!416403)))

(declare-datatypes ((Unit!161646 0))(
  ( (Unit!161647) )
))
(declare-fun lt!2523364 () Unit!161646)

(declare-fun lemmaZipperMatchesExistsMatchingContext!422 (List!67979 List!67978) Unit!161646)

(assert (=> b!7039799 (= lt!2523364 (lemmaZipperMatchesExistsMatchingContext!422 lt!2523373 s!7408))))

(declare-fun toList!10826 ((InoxSet Context!12958)) List!67979)

(assert (=> b!7039799 (= lt!2523373 (toList!10826 lt!2523363))))

(declare-fun b!7039800 () Bool)

(declare-fun res!2873871 () Bool)

(declare-fun e!4232051 () Bool)

(assert (=> b!7039800 (=> res!2873871 e!4232051)))

(declare-fun lt!2523385 () Bool)

(assert (=> b!7039800 (= res!2873871 (not lt!2523385))))

(declare-fun b!7039801 () Bool)

(declare-fun e!4232046 () Bool)

(declare-fun lt!2523367 () (InoxSet Context!12958))

(assert (=> b!7039801 (= e!4232046 (not (matchZipper!3023 lt!2523367 (t!381749 s!7408))))))

(declare-fun lt!2523389 () List!67977)

(declare-fun ct2!306 () Context!12958)

(declare-fun lt!2523392 () Unit!161646)

(declare-fun lambda!416405 () Int)

(declare-fun lemmaConcatPreservesForall!804 (List!67977 List!67977 Int) Unit!161646)

(assert (=> b!7039801 (= lt!2523392 (lemmaConcatPreservesForall!804 lt!2523389 (exprs!6979 ct2!306) lambda!416405))))

(declare-fun b!7039802 () Bool)

(declare-fun e!4232047 () Bool)

(assert (=> b!7039802 (= e!4232047 e!4232051)))

(declare-fun res!2873876 () Bool)

(assert (=> b!7039802 (=> res!2873876 e!4232051)))

(assert (=> b!7039802 (= res!2873876 e!4232046)))

(declare-fun res!2873881 () Bool)

(assert (=> b!7039802 (=> (not res!2873881) (not e!4232046))))

(declare-fun lt!2523375 () Bool)

(assert (=> b!7039802 (= res!2873881 (not (= lt!2523385 lt!2523375)))))

(declare-fun lt!2523381 () (InoxSet Context!12958))

(assert (=> b!7039802 (= lt!2523385 (matchZipper!3023 lt!2523381 (t!381749 s!7408)))))

(declare-fun lt!2523376 () Unit!161646)

(assert (=> b!7039802 (= lt!2523376 (lemmaConcatPreservesForall!804 lt!2523389 (exprs!6979 ct2!306) lambda!416405))))

(declare-fun lt!2523390 () (InoxSet Context!12958))

(declare-fun e!4232057 () Bool)

(assert (=> b!7039802 (= (matchZipper!3023 lt!2523390 (t!381749 s!7408)) e!4232057)))

(declare-fun res!2873874 () Bool)

(assert (=> b!7039802 (=> res!2873874 e!4232057)))

(assert (=> b!7039802 (= res!2873874 lt!2523375)))

(declare-fun lt!2523384 () (InoxSet Context!12958))

(assert (=> b!7039802 (= lt!2523375 (matchZipper!3023 lt!2523384 (t!381749 s!7408)))))

(declare-fun lt!2523388 () Unit!161646)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1556 ((InoxSet Context!12958) (InoxSet Context!12958) List!67978) Unit!161646)

(assert (=> b!7039802 (= lt!2523388 (lemmaZipperConcatMatchesSameAsBothZippers!1556 lt!2523384 lt!2523367 (t!381749 s!7408)))))

(declare-fun lt!2523377 () Unit!161646)

(assert (=> b!7039802 (= lt!2523377 (lemmaConcatPreservesForall!804 lt!2523389 (exprs!6979 ct2!306) lambda!416405))))

(declare-fun lt!2523370 () Unit!161646)

(assert (=> b!7039802 (= lt!2523370 (lemmaConcatPreservesForall!804 lt!2523389 (exprs!6979 ct2!306) lambda!416405))))

(declare-fun b!7039803 () Bool)

(declare-fun e!4232050 () Bool)

(assert (=> b!7039803 (= e!4232050 e!4232047)))

(declare-fun res!2873885 () Bool)

(assert (=> b!7039803 (=> res!2873885 e!4232047)))

(assert (=> b!7039803 (= res!2873885 (not (= lt!2523381 lt!2523390)))))

(assert (=> b!7039803 (= lt!2523390 ((_ map or) lt!2523384 lt!2523367))))

(declare-fun lt!2523374 () Context!12958)

(declare-fun derivationStepZipperUp!2093 (Context!12958 C!35236) (InoxSet Context!12958))

(assert (=> b!7039803 (= lt!2523367 (derivationStepZipperUp!2093 lt!2523374 (h!74302 s!7408)))))

(declare-fun lt!2523369 () Context!12958)

(declare-fun derivationStepZipperDown!2147 (Regex!17483 Context!12958 C!35236) (InoxSet Context!12958))

(assert (=> b!7039803 (= lt!2523384 (derivationStepZipperDown!2147 (h!74301 (exprs!6979 lt!2523369)) lt!2523374 (h!74302 s!7408)))))

(declare-fun ++!15545 (List!67977 List!67977) List!67977)

(assert (=> b!7039803 (= lt!2523374 (Context!12959 (++!15545 lt!2523389 (exprs!6979 ct2!306))))))

(declare-fun lt!2523378 () Unit!161646)

(assert (=> b!7039803 (= lt!2523378 (lemmaConcatPreservesForall!804 lt!2523389 (exprs!6979 ct2!306) lambda!416405))))

(declare-fun lt!2523366 () Unit!161646)

(assert (=> b!7039803 (= lt!2523366 (lemmaConcatPreservesForall!804 lt!2523389 (exprs!6979 ct2!306) lambda!416405))))

(declare-fun b!7039804 () Bool)

(declare-fun e!4232049 () Bool)

(assert (=> b!7039804 (= e!4232049 e!4232050)))

(declare-fun res!2873882 () Bool)

(assert (=> b!7039804 (=> res!2873882 e!4232050)))

(declare-fun nullable!7194 (Regex!17483) Bool)

(assert (=> b!7039804 (= res!2873882 (not (nullable!7194 (h!74301 (exprs!6979 lt!2523369)))))))

(declare-fun tail!13586 (List!67977) List!67977)

(assert (=> b!7039804 (= lt!2523389 (tail!13586 (exprs!6979 lt!2523369)))))

(declare-fun b!7039805 () Bool)

(declare-fun e!4232052 () Bool)

(declare-fun tp!1937237 () Bool)

(assert (=> b!7039805 (= e!4232052 tp!1937237)))

(declare-fun b!7039806 () Bool)

(declare-fun e!4232058 () Bool)

(assert (=> b!7039806 (= e!4232051 e!4232058)))

(declare-fun res!2873884 () Bool)

(assert (=> b!7039806 (=> res!2873884 e!4232058)))

(assert (=> b!7039806 (= res!2873884 (matchZipper!3023 lt!2523367 (t!381749 s!7408)))))

(declare-fun lt!2523380 () Unit!161646)

(assert (=> b!7039806 (= lt!2523380 (lemmaConcatPreservesForall!804 lt!2523389 (exprs!6979 ct2!306) lambda!416405))))

(declare-fun b!7039807 () Bool)

(declare-fun e!4232055 () Bool)

(declare-fun e!4232048 () Bool)

(assert (=> b!7039807 (= e!4232055 e!4232048)))

(declare-fun res!2873878 () Bool)

(assert (=> b!7039807 (=> res!2873878 e!4232048)))

(declare-fun lt!2523386 () (InoxSet Context!12958))

(assert (=> b!7039807 (= res!2873878 (not (= lt!2523386 lt!2523383)))))

(declare-fun lt!2523371 () Context!12958)

(assert (=> b!7039807 (= lt!2523386 (store ((as const (Array Context!12958 Bool)) false) lt!2523371 true))))

(declare-fun lt!2523365 () Unit!161646)

(assert (=> b!7039807 (= lt!2523365 (lemmaConcatPreservesForall!804 (exprs!6979 lt!2523369) (exprs!6979 ct2!306) lambda!416405))))

(declare-fun b!7039808 () Bool)

(declare-fun e!4232054 () Bool)

(declare-fun tp_is_empty!44191 () Bool)

(declare-fun tp!1937235 () Bool)

(assert (=> b!7039808 (= e!4232054 (and tp_is_empty!44191 tp!1937235))))

(declare-fun setElem!49312 () Context!12958)

(declare-fun tp!1937236 () Bool)

(declare-fun setRes!49312 () Bool)

(declare-fun e!4232056 () Bool)

(declare-fun setNonEmpty!49312 () Bool)

(declare-fun inv!86566 (Context!12958) Bool)

(assert (=> setNonEmpty!49312 (= setRes!49312 (and tp!1937236 (inv!86566 setElem!49312) e!4232056))))

(declare-fun z1!570 () (InoxSet Context!12958))

(declare-fun setRest!49312 () (InoxSet Context!12958))

(assert (=> setNonEmpty!49312 (= z1!570 ((_ map or) (store ((as const (Array Context!12958 Bool)) false) setElem!49312 true) setRest!49312))))

(declare-fun b!7039809 () Bool)

(declare-fun tp!1937234 () Bool)

(assert (=> b!7039809 (= e!4232056 tp!1937234)))

(declare-fun b!7039810 () Bool)

(declare-fun res!2873880 () Bool)

(assert (=> b!7039810 (=> res!2873880 e!4232045)))

(assert (=> b!7039810 (= res!2873880 (not (select lt!2523363 lt!2523372)))))

(declare-fun res!2873877 () Bool)

(assert (=> start!680926 (=> (not res!2873877) (not e!4232053))))

(assert (=> start!680926 (= res!2873877 (matchZipper!3023 lt!2523363 s!7408))))

(declare-fun appendTo!604 ((InoxSet Context!12958) Context!12958) (InoxSet Context!12958))

(assert (=> start!680926 (= lt!2523363 (appendTo!604 z1!570 ct2!306))))

(assert (=> start!680926 e!4232053))

(declare-fun condSetEmpty!49312 () Bool)

(assert (=> start!680926 (= condSetEmpty!49312 (= z1!570 ((as const (Array Context!12958 Bool)) false)))))

(assert (=> start!680926 setRes!49312))

(assert (=> start!680926 (and (inv!86566 ct2!306) e!4232052)))

(assert (=> start!680926 e!4232054))

(declare-fun b!7039811 () Bool)

(assert (=> b!7039811 (= e!4232057 (matchZipper!3023 lt!2523367 (t!381749 s!7408)))))

(declare-fun b!7039812 () Bool)

(assert (=> b!7039812 (= e!4232058 lt!2523375)))

(declare-fun lt!2523368 () Unit!161646)

(assert (=> b!7039812 (= lt!2523368 (lemmaConcatPreservesForall!804 lt!2523389 (exprs!6979 ct2!306) lambda!416405))))

(declare-fun lt!2523379 () Unit!161646)

(assert (=> b!7039812 (= lt!2523379 (lemmaConcatPreservesForall!804 lt!2523389 (exprs!6979 ct2!306) lambda!416405))))

(declare-fun setIsEmpty!49312 () Bool)

(assert (=> setIsEmpty!49312 setRes!49312))

(declare-fun b!7039813 () Bool)

(declare-fun res!2873875 () Bool)

(assert (=> b!7039813 (=> res!2873875 e!4232049)))

(get-info :version)

(assert (=> b!7039813 (= res!2873875 (not ((_ is Cons!67853) (exprs!6979 lt!2523369))))))

(assert (=> b!7039814 (= e!4232045 e!4232055)))

(declare-fun res!2873873 () Bool)

(assert (=> b!7039814 (=> res!2873873 e!4232055)))

(assert (=> b!7039814 (= res!2873873 (or (not (= lt!2523371 lt!2523372)) (not (select z1!570 lt!2523369))))))

(assert (=> b!7039814 (= lt!2523371 (Context!12959 (++!15545 (exprs!6979 lt!2523369) (exprs!6979 ct2!306))))))

(declare-fun lt!2523391 () Unit!161646)

(assert (=> b!7039814 (= lt!2523391 (lemmaConcatPreservesForall!804 (exprs!6979 lt!2523369) (exprs!6979 ct2!306) lambda!416405))))

(declare-fun lambda!416404 () Int)

(declare-fun mapPost2!324 ((InoxSet Context!12958) Int Context!12958) Context!12958)

(assert (=> b!7039814 (= lt!2523369 (mapPost2!324 z1!570 lambda!416404 lt!2523372))))

(declare-fun b!7039815 () Bool)

(declare-fun res!2873883 () Bool)

(assert (=> b!7039815 (=> res!2873883 e!4232049)))

(declare-fun isEmpty!39591 (List!67977) Bool)

(assert (=> b!7039815 (= res!2873883 (isEmpty!39591 (exprs!6979 lt!2523369)))))

(declare-fun b!7039816 () Bool)

(declare-fun res!2873879 () Bool)

(assert (=> b!7039816 (=> (not res!2873879) (not e!4232053))))

(assert (=> b!7039816 (= res!2873879 ((_ is Cons!67854) s!7408))))

(assert (=> b!7039817 (= e!4232048 e!4232049)))

(declare-fun res!2873872 () Bool)

(assert (=> b!7039817 (=> res!2873872 e!4232049)))

(declare-fun derivationStepZipper!2939 ((InoxSet Context!12958) C!35236) (InoxSet Context!12958))

(assert (=> b!7039817 (= res!2873872 (not (= (derivationStepZipper!2939 lt!2523386 (h!74302 s!7408)) lt!2523381)))))

(declare-fun lambda!416406 () Int)

(declare-fun flatMap!2430 ((InoxSet Context!12958) Int) (InoxSet Context!12958))

(assert (=> b!7039817 (= (flatMap!2430 lt!2523386 lambda!416406) (derivationStepZipperUp!2093 lt!2523371 (h!74302 s!7408)))))

(declare-fun lt!2523382 () Unit!161646)

(declare-fun lemmaFlatMapOnSingletonSet!1944 ((InoxSet Context!12958) Context!12958 Int) Unit!161646)

(assert (=> b!7039817 (= lt!2523382 (lemmaFlatMapOnSingletonSet!1944 lt!2523386 lt!2523371 lambda!416406))))

(assert (=> b!7039817 (= lt!2523381 (derivationStepZipperUp!2093 lt!2523371 (h!74302 s!7408)))))

(declare-fun lt!2523387 () Unit!161646)

(assert (=> b!7039817 (= lt!2523387 (lemmaConcatPreservesForall!804 (exprs!6979 lt!2523369) (exprs!6979 ct2!306) lambda!416405))))

(assert (= (and start!680926 res!2873877) b!7039816))

(assert (= (and b!7039816 res!2873879) b!7039799))

(assert (= (and b!7039799 (not res!2873886)) b!7039810))

(assert (= (and b!7039810 (not res!2873880)) b!7039814))

(assert (= (and b!7039814 (not res!2873873)) b!7039807))

(assert (= (and b!7039807 (not res!2873878)) b!7039817))

(assert (= (and b!7039817 (not res!2873872)) b!7039813))

(assert (= (and b!7039813 (not res!2873875)) b!7039815))

(assert (= (and b!7039815 (not res!2873883)) b!7039804))

(assert (= (and b!7039804 (not res!2873882)) b!7039803))

(assert (= (and b!7039803 (not res!2873885)) b!7039802))

(assert (= (and b!7039802 (not res!2873874)) b!7039811))

(assert (= (and b!7039802 res!2873881) b!7039801))

(assert (= (and b!7039802 (not res!2873876)) b!7039800))

(assert (= (and b!7039800 (not res!2873871)) b!7039806))

(assert (= (and b!7039806 (not res!2873884)) b!7039812))

(assert (= (and start!680926 condSetEmpty!49312) setIsEmpty!49312))

(assert (= (and start!680926 (not condSetEmpty!49312)) setNonEmpty!49312))

(assert (= setNonEmpty!49312 b!7039809))

(assert (= start!680926 b!7039805))

(assert (= (and start!680926 ((_ is Cons!67854) s!7408)) b!7039808))

(declare-fun m!7750702 () Bool)

(assert (=> b!7039815 m!7750702))

(declare-fun m!7750704 () Bool)

(assert (=> b!7039811 m!7750704))

(declare-fun m!7750706 () Bool)

(assert (=> b!7039810 m!7750706))

(declare-fun m!7750708 () Bool)

(assert (=> b!7039802 m!7750708))

(declare-fun m!7750710 () Bool)

(assert (=> b!7039802 m!7750710))

(declare-fun m!7750712 () Bool)

(assert (=> b!7039802 m!7750712))

(assert (=> b!7039802 m!7750710))

(declare-fun m!7750714 () Bool)

(assert (=> b!7039802 m!7750714))

(assert (=> b!7039802 m!7750710))

(declare-fun m!7750716 () Bool)

(assert (=> b!7039802 m!7750716))

(assert (=> b!7039801 m!7750704))

(assert (=> b!7039801 m!7750710))

(declare-fun m!7750718 () Bool)

(assert (=> start!680926 m!7750718))

(declare-fun m!7750720 () Bool)

(assert (=> start!680926 m!7750720))

(declare-fun m!7750722 () Bool)

(assert (=> start!680926 m!7750722))

(declare-fun m!7750724 () Bool)

(assert (=> b!7039817 m!7750724))

(declare-fun m!7750726 () Bool)

(assert (=> b!7039817 m!7750726))

(declare-fun m!7750728 () Bool)

(assert (=> b!7039817 m!7750728))

(declare-fun m!7750730 () Bool)

(assert (=> b!7039817 m!7750730))

(declare-fun m!7750732 () Bool)

(assert (=> b!7039817 m!7750732))

(declare-fun m!7750734 () Bool)

(assert (=> setNonEmpty!49312 m!7750734))

(declare-fun m!7750736 () Bool)

(assert (=> b!7039799 m!7750736))

(declare-fun m!7750738 () Bool)

(assert (=> b!7039799 m!7750738))

(declare-fun m!7750740 () Bool)

(assert (=> b!7039799 m!7750740))

(declare-fun m!7750742 () Bool)

(assert (=> b!7039799 m!7750742))

(declare-fun m!7750744 () Bool)

(assert (=> b!7039799 m!7750744))

(declare-fun m!7750746 () Bool)

(assert (=> b!7039799 m!7750746))

(declare-fun m!7750748 () Bool)

(assert (=> b!7039804 m!7750748))

(declare-fun m!7750750 () Bool)

(assert (=> b!7039804 m!7750750))

(declare-fun m!7750752 () Bool)

(assert (=> b!7039814 m!7750752))

(declare-fun m!7750754 () Bool)

(assert (=> b!7039814 m!7750754))

(assert (=> b!7039814 m!7750730))

(declare-fun m!7750756 () Bool)

(assert (=> b!7039814 m!7750756))

(assert (=> b!7039812 m!7750710))

(assert (=> b!7039812 m!7750710))

(assert (=> b!7039806 m!7750704))

(assert (=> b!7039806 m!7750710))

(declare-fun m!7750758 () Bool)

(assert (=> b!7039807 m!7750758))

(assert (=> b!7039807 m!7750730))

(declare-fun m!7750760 () Bool)

(assert (=> b!7039803 m!7750760))

(declare-fun m!7750762 () Bool)

(assert (=> b!7039803 m!7750762))

(assert (=> b!7039803 m!7750710))

(declare-fun m!7750764 () Bool)

(assert (=> b!7039803 m!7750764))

(assert (=> b!7039803 m!7750710))

(check-sat (not b!7039811) (not setNonEmpty!49312) (not b!7039808) (not b!7039807) (not b!7039812) (not b!7039799) (not b!7039802) (not b!7039804) (not b!7039817) (not b!7039814) (not b!7039803) (not start!680926) tp_is_empty!44191 (not b!7039809) (not b!7039805) (not b!7039801) (not b!7039806) (not b!7039815))
(check-sat)
