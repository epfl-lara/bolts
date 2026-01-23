; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!681238 () Bool)

(assert start!681238)

(declare-fun b!7041488 () Bool)

(assert (=> b!7041488 true))

(declare-fun b!7041493 () Bool)

(assert (=> b!7041493 true))

(declare-fun b!7041473 () Bool)

(assert (=> b!7041473 true))

(declare-datatypes ((C!35256 0))(
  ( (C!35257 (val!27330 Int)) )
))
(declare-datatypes ((Regex!17493 0))(
  ( (ElementMatch!17493 (c!1310669 C!35256)) (Concat!26338 (regOne!35498 Regex!17493) (regTwo!35498 Regex!17493)) (EmptyExpr!17493) (Star!17493 (reg!17822 Regex!17493)) (EmptyLang!17493) (Union!17493 (regOne!35499 Regex!17493) (regTwo!35499 Regex!17493)) )
))
(declare-datatypes ((List!68007 0))(
  ( (Nil!67883) (Cons!67883 (h!74331 Regex!17493) (t!381778 List!68007)) )
))
(declare-datatypes ((Context!12978 0))(
  ( (Context!12979 (exprs!6989 List!68007)) )
))
(declare-fun setElem!49360 () Context!12978)

(declare-fun setNonEmpty!49360 () Bool)

(declare-fun setRes!49360 () Bool)

(declare-fun e!4233074 () Bool)

(declare-fun tp!1937459 () Bool)

(declare-fun inv!86591 (Context!12978) Bool)

(assert (=> setNonEmpty!49360 (= setRes!49360 (and tp!1937459 (inv!86591 setElem!49360) e!4233074))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!570 () (InoxSet Context!12978))

(declare-fun setRest!49360 () (InoxSet Context!12978))

(assert (=> setNonEmpty!49360 (= z1!570 ((_ map or) (store ((as const (Array Context!12978 Bool)) false) setElem!49360 true) setRest!49360))))

(declare-fun b!7041471 () Bool)

(declare-fun res!2874694 () Bool)

(declare-fun e!4233070 () Bool)

(assert (=> b!7041471 (=> res!2874694 e!4233070)))

(declare-fun lt!2524817 () Context!12978)

(declare-fun lt!2524840 () (InoxSet Context!12978))

(assert (=> b!7041471 (= res!2874694 (not (select lt!2524840 lt!2524817)))))

(declare-fun b!7041472 () Bool)

(declare-fun e!4233080 () Bool)

(declare-fun e!4233082 () Bool)

(assert (=> b!7041472 (= e!4233080 e!4233082)))

(declare-fun res!2874707 () Bool)

(assert (=> b!7041472 (=> res!2874707 e!4233082)))

(declare-fun lt!2524818 () (InoxSet Context!12978))

(declare-fun lt!2524815 () (InoxSet Context!12978))

(assert (=> b!7041472 (= res!2874707 (not (= lt!2524818 lt!2524815)))))

(declare-fun lt!2524832 () Context!12978)

(assert (=> b!7041472 (= lt!2524818 (store ((as const (Array Context!12978 Bool)) false) lt!2524832 true))))

(declare-datatypes ((Unit!161666 0))(
  ( (Unit!161667) )
))
(declare-fun lt!2524808 () Unit!161666)

(declare-fun lambda!416961 () Int)

(declare-fun ct2!306 () Context!12978)

(declare-fun lt!2524812 () Context!12978)

(declare-fun lemmaConcatPreservesForall!814 (List!68007 List!68007 Int) Unit!161666)

(assert (=> b!7041472 (= lt!2524808 (lemmaConcatPreservesForall!814 (exprs!6989 lt!2524812) (exprs!6989 ct2!306) lambda!416961))))

(declare-fun e!4233081 () Bool)

(assert (=> b!7041473 (= e!4233082 e!4233081)))

(declare-fun res!2874708 () Bool)

(assert (=> b!7041473 (=> res!2874708 e!4233081)))

(declare-datatypes ((List!68008 0))(
  ( (Nil!67884) (Cons!67884 (h!74332 C!35256) (t!381779 List!68008)) )
))
(declare-fun s!7408 () List!68008)

(declare-fun lt!2524835 () (InoxSet Context!12978))

(declare-fun derivationStepZipper!2949 ((InoxSet Context!12978) C!35256) (InoxSet Context!12978))

(assert (=> b!7041473 (= res!2874708 (not (= (derivationStepZipper!2949 lt!2524818 (h!74332 s!7408)) lt!2524835)))))

(declare-fun lambda!416962 () Int)

(declare-fun flatMap!2440 ((InoxSet Context!12978) Int) (InoxSet Context!12978))

(declare-fun derivationStepZipperUp!2103 (Context!12978 C!35256) (InoxSet Context!12978))

(assert (=> b!7041473 (= (flatMap!2440 lt!2524818 lambda!416962) (derivationStepZipperUp!2103 lt!2524832 (h!74332 s!7408)))))

(declare-fun lt!2524804 () Unit!161666)

(declare-fun lemmaFlatMapOnSingletonSet!1954 ((InoxSet Context!12978) Context!12978 Int) Unit!161666)

(assert (=> b!7041473 (= lt!2524804 (lemmaFlatMapOnSingletonSet!1954 lt!2524818 lt!2524832 lambda!416962))))

(assert (=> b!7041473 (= lt!2524835 (derivationStepZipperUp!2103 lt!2524832 (h!74332 s!7408)))))

(declare-fun lt!2524805 () Unit!161666)

(assert (=> b!7041473 (= lt!2524805 (lemmaConcatPreservesForall!814 (exprs!6989 lt!2524812) (exprs!6989 ct2!306) lambda!416961))))

(declare-fun setIsEmpty!49360 () Bool)

(assert (=> setIsEmpty!49360 setRes!49360))

(declare-fun b!7041474 () Bool)

(declare-fun res!2874699 () Bool)

(assert (=> b!7041474 (=> res!2874699 e!4233081)))

(get-info :version)

(assert (=> b!7041474 (= res!2874699 (not ((_ is Cons!67883) (exprs!6989 lt!2524812))))))

(declare-fun b!7041475 () Bool)

(declare-fun e!4233072 () Bool)

(declare-fun e!4233077 () Bool)

(assert (=> b!7041475 (= e!4233072 e!4233077)))

(declare-fun res!2874692 () Bool)

(assert (=> b!7041475 (=> res!2874692 e!4233077)))

(declare-fun lt!2524801 () Bool)

(assert (=> b!7041475 (= res!2874692 (not lt!2524801))))

(declare-fun lt!2524814 () List!68007)

(declare-fun lt!2524830 () Unit!161666)

(assert (=> b!7041475 (= lt!2524830 (lemmaConcatPreservesForall!814 lt!2524814 (exprs!6989 ct2!306) lambda!416961))))

(declare-fun lt!2524811 () Unit!161666)

(assert (=> b!7041475 (= lt!2524811 (lemmaConcatPreservesForall!814 lt!2524814 (exprs!6989 ct2!306) lambda!416961))))

(declare-fun b!7041476 () Bool)

(declare-fun res!2874696 () Bool)

(assert (=> b!7041476 (=> res!2874696 e!4233081)))

(declare-fun isEmpty!39610 (List!68007) Bool)

(assert (=> b!7041476 (= res!2874696 (isEmpty!39610 (exprs!6989 lt!2524812)))))

(declare-fun b!7041477 () Bool)

(declare-fun res!2874706 () Bool)

(declare-fun e!4233073 () Bool)

(assert (=> b!7041477 (=> res!2874706 e!4233073)))

(declare-fun lt!2524837 () (InoxSet Context!12978))

(declare-datatypes ((tuple2!68124 0))(
  ( (tuple2!68125 (_1!37365 List!68008) (_2!37365 List!68008)) )
))
(declare-fun lt!2524829 () tuple2!68124)

(declare-fun matchZipper!3033 ((InoxSet Context!12978) List!68008) Bool)

(assert (=> b!7041477 (= res!2874706 (not (matchZipper!3033 lt!2524837 (_2!37365 lt!2524829))))))

(declare-fun b!7041478 () Bool)

(declare-fun res!2874689 () Bool)

(declare-fun e!4233075 () Bool)

(assert (=> b!7041478 (=> (not res!2874689) (not e!4233075))))

(assert (=> b!7041478 (= res!2874689 ((_ is Cons!67884) s!7408))))

(declare-fun b!7041479 () Bool)

(declare-fun e!4233069 () Bool)

(assert (=> b!7041479 (= e!4233081 e!4233069)))

(declare-fun res!2874690 () Bool)

(assert (=> b!7041479 (=> res!2874690 e!4233069)))

(declare-fun nullable!7204 (Regex!17493) Bool)

(assert (=> b!7041479 (= res!2874690 (not (nullable!7204 (h!74331 (exprs!6989 lt!2524812)))))))

(declare-fun lt!2524838 () Context!12978)

(assert (=> b!7041479 (= lt!2524838 (Context!12979 lt!2524814))))

(declare-fun tail!13601 (List!68007) List!68007)

(assert (=> b!7041479 (= lt!2524814 (tail!13601 (exprs!6989 lt!2524812)))))

(declare-fun b!7041480 () Bool)

(declare-fun e!4233067 () Bool)

(declare-fun lt!2524806 () (InoxSet Context!12978))

(assert (=> b!7041480 (= e!4233067 (matchZipper!3033 lt!2524806 (t!381779 s!7408)))))

(declare-fun lt!2524819 () (InoxSet Context!12978))

(declare-fun b!7041481 () Bool)

(assert (=> b!7041481 (= e!4233073 (= (derivationStepZipper!2949 lt!2524819 (h!74332 s!7408)) (derivationStepZipperUp!2103 lt!2524812 (h!74332 s!7408))))))

(assert (=> b!7041481 (= (flatMap!2440 lt!2524819 lambda!416962) (derivationStepZipperUp!2103 lt!2524812 (h!74332 s!7408)))))

(declare-fun lt!2524836 () Unit!161666)

(assert (=> b!7041481 (= lt!2524836 (lemmaFlatMapOnSingletonSet!1954 lt!2524819 lt!2524812 lambda!416962))))

(assert (=> b!7041481 (= lt!2524819 (store ((as const (Array Context!12978 Bool)) false) lt!2524812 true))))

(declare-fun b!7041482 () Bool)

(declare-fun e!4233079 () Bool)

(assert (=> b!7041482 (= e!4233069 e!4233079)))

(declare-fun res!2874705 () Bool)

(assert (=> b!7041482 (=> res!2874705 e!4233079)))

(declare-fun lt!2524809 () (InoxSet Context!12978))

(assert (=> b!7041482 (= res!2874705 (not (= lt!2524835 lt!2524809)))))

(declare-fun lt!2524827 () (InoxSet Context!12978))

(assert (=> b!7041482 (= lt!2524809 ((_ map or) lt!2524827 lt!2524806))))

(declare-fun lt!2524803 () Context!12978)

(assert (=> b!7041482 (= lt!2524806 (derivationStepZipperUp!2103 lt!2524803 (h!74332 s!7408)))))

(declare-fun derivationStepZipperDown!2157 (Regex!17493 Context!12978 C!35256) (InoxSet Context!12978))

(assert (=> b!7041482 (= lt!2524827 (derivationStepZipperDown!2157 (h!74331 (exprs!6989 lt!2524812)) lt!2524803 (h!74332 s!7408)))))

(declare-fun ++!15561 (List!68007 List!68007) List!68007)

(assert (=> b!7041482 (= lt!2524803 (Context!12979 (++!15561 lt!2524814 (exprs!6989 ct2!306))))))

(declare-fun lt!2524823 () Unit!161666)

(assert (=> b!7041482 (= lt!2524823 (lemmaConcatPreservesForall!814 lt!2524814 (exprs!6989 ct2!306) lambda!416961))))

(declare-fun lt!2524833 () Unit!161666)

(assert (=> b!7041482 (= lt!2524833 (lemmaConcatPreservesForall!814 lt!2524814 (exprs!6989 ct2!306) lambda!416961))))

(declare-fun b!7041483 () Bool)

(declare-fun e!4233078 () Bool)

(declare-fun tp!1937458 () Bool)

(assert (=> b!7041483 (= e!4233078 tp!1937458)))

(declare-fun b!7041484 () Bool)

(declare-fun e!4233071 () Bool)

(assert (=> b!7041484 (= e!4233071 e!4233072)))

(declare-fun res!2874701 () Bool)

(assert (=> b!7041484 (=> res!2874701 e!4233072)))

(assert (=> b!7041484 (= res!2874701 (matchZipper!3033 lt!2524806 (t!381779 s!7408)))))

(declare-fun lt!2524820 () Unit!161666)

(assert (=> b!7041484 (= lt!2524820 (lemmaConcatPreservesForall!814 lt!2524814 (exprs!6989 ct2!306) lambda!416961))))

(declare-fun b!7041485 () Bool)

(declare-fun tp!1937456 () Bool)

(assert (=> b!7041485 (= e!4233074 tp!1937456)))

(declare-fun b!7041486 () Bool)

(assert (=> b!7041486 (= e!4233077 e!4233073)))

(declare-fun res!2874700 () Bool)

(assert (=> b!7041486 (=> res!2874700 e!4233073)))

(declare-fun lt!2524828 () (InoxSet Context!12978))

(assert (=> b!7041486 (= res!2874700 (not (matchZipper!3033 lt!2524828 (_1!37365 lt!2524829))))))

(declare-datatypes ((Option!16894 0))(
  ( (None!16893) (Some!16893 (v!53183 tuple2!68124)) )
))
(declare-fun lt!2524810 () Option!16894)

(declare-fun get!23791 (Option!16894) tuple2!68124)

(assert (=> b!7041486 (= lt!2524829 (get!23791 lt!2524810))))

(declare-fun isDefined!13595 (Option!16894) Bool)

(assert (=> b!7041486 (isDefined!13595 lt!2524810)))

(declare-fun findConcatSeparationZippers!410 ((InoxSet Context!12978) (InoxSet Context!12978) List!68008 List!68008 List!68008) Option!16894)

(assert (=> b!7041486 (= lt!2524810 (findConcatSeparationZippers!410 lt!2524828 lt!2524837 Nil!67884 (t!381779 s!7408) (t!381779 s!7408)))))

(assert (=> b!7041486 (= lt!2524837 (store ((as const (Array Context!12978 Bool)) false) ct2!306 true))))

(declare-fun lt!2524802 () Unit!161666)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!398 ((InoxSet Context!12978) Context!12978 List!68008) Unit!161666)

(assert (=> b!7041486 (= lt!2524802 (lemmaConcatZipperMatchesStringThenFindConcatDefined!398 lt!2524828 ct2!306 (t!381779 s!7408)))))

(declare-fun lt!2524839 () Unit!161666)

(assert (=> b!7041486 (= lt!2524839 (lemmaConcatPreservesForall!814 lt!2524814 (exprs!6989 ct2!306) lambda!416961))))

(declare-fun appendTo!614 ((InoxSet Context!12978) Context!12978) (InoxSet Context!12978))

(assert (=> b!7041486 (= lt!2524827 (appendTo!614 lt!2524828 ct2!306))))

(assert (=> b!7041486 (= lt!2524828 (derivationStepZipperDown!2157 (h!74331 (exprs!6989 lt!2524812)) lt!2524838 (h!74332 s!7408)))))

(declare-fun lt!2524824 () Unit!161666)

(assert (=> b!7041486 (= lt!2524824 (lemmaConcatPreservesForall!814 lt!2524814 (exprs!6989 ct2!306) lambda!416961))))

(declare-fun lt!2524821 () Unit!161666)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!72 (Context!12978 Regex!17493 C!35256 Context!12978) Unit!161666)

(assert (=> b!7041486 (= lt!2524821 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!72 lt!2524838 (h!74331 (exprs!6989 lt!2524812)) (h!74332 s!7408) ct2!306))))

(declare-fun b!7041487 () Bool)

(declare-fun e!4233068 () Bool)

(declare-fun tp_is_empty!44211 () Bool)

(declare-fun tp!1937457 () Bool)

(assert (=> b!7041487 (= e!4233068 (and tp_is_empty!44211 tp!1937457))))

(assert (=> b!7041488 (= e!4233075 (not e!4233070))))

(declare-fun res!2874702 () Bool)

(assert (=> b!7041488 (=> res!2874702 e!4233070)))

(assert (=> b!7041488 (= res!2874702 (not (matchZipper!3033 lt!2524815 s!7408)))))

(assert (=> b!7041488 (= lt!2524815 (store ((as const (Array Context!12978 Bool)) false) lt!2524817 true))))

(declare-fun lambda!416959 () Int)

(declare-fun getWitness!1517 ((InoxSet Context!12978) Int) Context!12978)

(assert (=> b!7041488 (= lt!2524817 (getWitness!1517 lt!2524840 lambda!416959))))

(declare-datatypes ((List!68009 0))(
  ( (Nil!67885) (Cons!67885 (h!74333 Context!12978) (t!381780 List!68009)) )
))
(declare-fun lt!2524816 () List!68009)

(declare-fun exists!3438 (List!68009 Int) Bool)

(assert (=> b!7041488 (exists!3438 lt!2524816 lambda!416959)))

(declare-fun lt!2524813 () Unit!161666)

(declare-fun lemmaZipperMatchesExistsMatchingContext!432 (List!68009 List!68008) Unit!161666)

(assert (=> b!7041488 (= lt!2524813 (lemmaZipperMatchesExistsMatchingContext!432 lt!2524816 s!7408))))

(declare-fun toList!10836 ((InoxSet Context!12978)) List!68009)

(assert (=> b!7041488 (= lt!2524816 (toList!10836 lt!2524840))))

(declare-fun b!7041489 () Bool)

(declare-fun e!4233076 () Bool)

(assert (=> b!7041489 (= e!4233076 (not (matchZipper!3033 lt!2524806 (t!381779 s!7408))))))

(declare-fun lt!2524825 () Unit!161666)

(assert (=> b!7041489 (= lt!2524825 (lemmaConcatPreservesForall!814 lt!2524814 (exprs!6989 ct2!306) lambda!416961))))

(declare-fun b!7041490 () Bool)

(assert (=> b!7041490 (= e!4233079 e!4233071)))

(declare-fun res!2874703 () Bool)

(assert (=> b!7041490 (=> res!2874703 e!4233071)))

(assert (=> b!7041490 (= res!2874703 e!4233076)))

(declare-fun res!2874704 () Bool)

(assert (=> b!7041490 (=> (not res!2874704) (not e!4233076))))

(declare-fun lt!2524831 () Bool)

(assert (=> b!7041490 (= res!2874704 (not (= lt!2524831 lt!2524801)))))

(assert (=> b!7041490 (= lt!2524831 (matchZipper!3033 lt!2524835 (t!381779 s!7408)))))

(declare-fun lt!2524822 () Unit!161666)

(assert (=> b!7041490 (= lt!2524822 (lemmaConcatPreservesForall!814 lt!2524814 (exprs!6989 ct2!306) lambda!416961))))

(assert (=> b!7041490 (= (matchZipper!3033 lt!2524809 (t!381779 s!7408)) e!4233067)))

(declare-fun res!2874691 () Bool)

(assert (=> b!7041490 (=> res!2874691 e!4233067)))

(assert (=> b!7041490 (= res!2874691 lt!2524801)))

(assert (=> b!7041490 (= lt!2524801 (matchZipper!3033 lt!2524827 (t!381779 s!7408)))))

(declare-fun lt!2524807 () Unit!161666)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1566 ((InoxSet Context!12978) (InoxSet Context!12978) List!68008) Unit!161666)

(assert (=> b!7041490 (= lt!2524807 (lemmaZipperConcatMatchesSameAsBothZippers!1566 lt!2524827 lt!2524806 (t!381779 s!7408)))))

(declare-fun lt!2524834 () Unit!161666)

(assert (=> b!7041490 (= lt!2524834 (lemmaConcatPreservesForall!814 lt!2524814 (exprs!6989 ct2!306) lambda!416961))))

(declare-fun lt!2524826 () Unit!161666)

(assert (=> b!7041490 (= lt!2524826 (lemmaConcatPreservesForall!814 lt!2524814 (exprs!6989 ct2!306) lambda!416961))))

(declare-fun b!7041491 () Bool)

(declare-fun res!2874698 () Bool)

(assert (=> b!7041491 (=> res!2874698 e!4233071)))

(assert (=> b!7041491 (= res!2874698 (not lt!2524831))))

(declare-fun res!2874695 () Bool)

(assert (=> start!681238 (=> (not res!2874695) (not e!4233075))))

(assert (=> start!681238 (= res!2874695 (matchZipper!3033 lt!2524840 s!7408))))

(assert (=> start!681238 (= lt!2524840 (appendTo!614 z1!570 ct2!306))))

(assert (=> start!681238 e!4233075))

(declare-fun condSetEmpty!49360 () Bool)

(assert (=> start!681238 (= condSetEmpty!49360 (= z1!570 ((as const (Array Context!12978 Bool)) false)))))

(assert (=> start!681238 setRes!49360))

(assert (=> start!681238 (and (inv!86591 ct2!306) e!4233078)))

(assert (=> start!681238 e!4233068))

(declare-fun b!7041492 () Bool)

(declare-fun res!2874693 () Bool)

(assert (=> b!7041492 (=> res!2874693 e!4233073)))

(declare-fun ++!15562 (List!68008 List!68008) List!68008)

(assert (=> b!7041492 (= res!2874693 (not (= (++!15562 (_1!37365 lt!2524829) (_2!37365 lt!2524829)) (t!381779 s!7408))))))

(assert (=> b!7041493 (= e!4233070 e!4233080)))

(declare-fun res!2874697 () Bool)

(assert (=> b!7041493 (=> res!2874697 e!4233080)))

(assert (=> b!7041493 (= res!2874697 (or (not (= lt!2524832 lt!2524817)) (not (select z1!570 lt!2524812))))))

(assert (=> b!7041493 (= lt!2524832 (Context!12979 (++!15561 (exprs!6989 lt!2524812) (exprs!6989 ct2!306))))))

(declare-fun lt!2524800 () Unit!161666)

(assert (=> b!7041493 (= lt!2524800 (lemmaConcatPreservesForall!814 (exprs!6989 lt!2524812) (exprs!6989 ct2!306) lambda!416961))))

(declare-fun lambda!416960 () Int)

(declare-fun mapPost2!334 ((InoxSet Context!12978) Int Context!12978) Context!12978)

(assert (=> b!7041493 (= lt!2524812 (mapPost2!334 z1!570 lambda!416960 lt!2524817))))

(assert (= (and start!681238 res!2874695) b!7041478))

(assert (= (and b!7041478 res!2874689) b!7041488))

(assert (= (and b!7041488 (not res!2874702)) b!7041471))

(assert (= (and b!7041471 (not res!2874694)) b!7041493))

(assert (= (and b!7041493 (not res!2874697)) b!7041472))

(assert (= (and b!7041472 (not res!2874707)) b!7041473))

(assert (= (and b!7041473 (not res!2874708)) b!7041474))

(assert (= (and b!7041474 (not res!2874699)) b!7041476))

(assert (= (and b!7041476 (not res!2874696)) b!7041479))

(assert (= (and b!7041479 (not res!2874690)) b!7041482))

(assert (= (and b!7041482 (not res!2874705)) b!7041490))

(assert (= (and b!7041490 (not res!2874691)) b!7041480))

(assert (= (and b!7041490 res!2874704) b!7041489))

(assert (= (and b!7041490 (not res!2874703)) b!7041491))

(assert (= (and b!7041491 (not res!2874698)) b!7041484))

(assert (= (and b!7041484 (not res!2874701)) b!7041475))

(assert (= (and b!7041475 (not res!2874692)) b!7041486))

(assert (= (and b!7041486 (not res!2874700)) b!7041477))

(assert (= (and b!7041477 (not res!2874706)) b!7041492))

(assert (= (and b!7041492 (not res!2874693)) b!7041481))

(assert (= (and start!681238 condSetEmpty!49360) setIsEmpty!49360))

(assert (= (and start!681238 (not condSetEmpty!49360)) setNonEmpty!49360))

(assert (= setNonEmpty!49360 b!7041485))

(assert (= start!681238 b!7041483))

(assert (= (and start!681238 ((_ is Cons!67884) s!7408)) b!7041487))

(declare-fun m!7753006 () Bool)

(assert (=> b!7041480 m!7753006))

(declare-fun m!7753008 () Bool)

(assert (=> b!7041493 m!7753008))

(declare-fun m!7753010 () Bool)

(assert (=> b!7041493 m!7753010))

(declare-fun m!7753012 () Bool)

(assert (=> b!7041493 m!7753012))

(declare-fun m!7753014 () Bool)

(assert (=> b!7041493 m!7753014))

(assert (=> b!7041484 m!7753006))

(declare-fun m!7753016 () Bool)

(assert (=> b!7041484 m!7753016))

(assert (=> b!7041475 m!7753016))

(assert (=> b!7041475 m!7753016))

(declare-fun m!7753018 () Bool)

(assert (=> start!681238 m!7753018))

(declare-fun m!7753020 () Bool)

(assert (=> start!681238 m!7753020))

(declare-fun m!7753022 () Bool)

(assert (=> start!681238 m!7753022))

(declare-fun m!7753024 () Bool)

(assert (=> b!7041472 m!7753024))

(assert (=> b!7041472 m!7753012))

(declare-fun m!7753026 () Bool)

(assert (=> b!7041477 m!7753026))

(assert (=> b!7041489 m!7753006))

(assert (=> b!7041489 m!7753016))

(declare-fun m!7753028 () Bool)

(assert (=> b!7041490 m!7753028))

(declare-fun m!7753030 () Bool)

(assert (=> b!7041490 m!7753030))

(assert (=> b!7041490 m!7753016))

(declare-fun m!7753032 () Bool)

(assert (=> b!7041490 m!7753032))

(declare-fun m!7753034 () Bool)

(assert (=> b!7041490 m!7753034))

(assert (=> b!7041490 m!7753016))

(assert (=> b!7041490 m!7753016))

(declare-fun m!7753036 () Bool)

(assert (=> b!7041479 m!7753036))

(declare-fun m!7753038 () Bool)

(assert (=> b!7041479 m!7753038))

(declare-fun m!7753040 () Bool)

(assert (=> setNonEmpty!49360 m!7753040))

(declare-fun m!7753042 () Bool)

(assert (=> b!7041473 m!7753042))

(declare-fun m!7753044 () Bool)

(assert (=> b!7041473 m!7753044))

(assert (=> b!7041473 m!7753012))

(declare-fun m!7753046 () Bool)

(assert (=> b!7041473 m!7753046))

(declare-fun m!7753048 () Bool)

(assert (=> b!7041473 m!7753048))

(assert (=> b!7041482 m!7753016))

(declare-fun m!7753050 () Bool)

(assert (=> b!7041482 m!7753050))

(assert (=> b!7041482 m!7753016))

(declare-fun m!7753052 () Bool)

(assert (=> b!7041482 m!7753052))

(declare-fun m!7753054 () Bool)

(assert (=> b!7041482 m!7753054))

(declare-fun m!7753056 () Bool)

(assert (=> b!7041486 m!7753056))

(declare-fun m!7753058 () Bool)

(assert (=> b!7041486 m!7753058))

(declare-fun m!7753060 () Bool)

(assert (=> b!7041486 m!7753060))

(declare-fun m!7753062 () Bool)

(assert (=> b!7041486 m!7753062))

(declare-fun m!7753064 () Bool)

(assert (=> b!7041486 m!7753064))

(declare-fun m!7753066 () Bool)

(assert (=> b!7041486 m!7753066))

(assert (=> b!7041486 m!7753016))

(assert (=> b!7041486 m!7753016))

(declare-fun m!7753068 () Bool)

(assert (=> b!7041486 m!7753068))

(declare-fun m!7753070 () Bool)

(assert (=> b!7041486 m!7753070))

(declare-fun m!7753072 () Bool)

(assert (=> b!7041486 m!7753072))

(declare-fun m!7753074 () Bool)

(assert (=> b!7041481 m!7753074))

(declare-fun m!7753076 () Bool)

(assert (=> b!7041481 m!7753076))

(declare-fun m!7753078 () Bool)

(assert (=> b!7041481 m!7753078))

(declare-fun m!7753080 () Bool)

(assert (=> b!7041481 m!7753080))

(declare-fun m!7753082 () Bool)

(assert (=> b!7041481 m!7753082))

(declare-fun m!7753084 () Bool)

(assert (=> b!7041471 m!7753084))

(declare-fun m!7753086 () Bool)

(assert (=> b!7041488 m!7753086))

(declare-fun m!7753088 () Bool)

(assert (=> b!7041488 m!7753088))

(declare-fun m!7753090 () Bool)

(assert (=> b!7041488 m!7753090))

(declare-fun m!7753092 () Bool)

(assert (=> b!7041488 m!7753092))

(declare-fun m!7753094 () Bool)

(assert (=> b!7041488 m!7753094))

(declare-fun m!7753096 () Bool)

(assert (=> b!7041488 m!7753096))

(declare-fun m!7753098 () Bool)

(assert (=> b!7041492 m!7753098))

(declare-fun m!7753100 () Bool)

(assert (=> b!7041476 m!7753100))

(check-sat tp_is_empty!44211 (not b!7041489) (not b!7041486) (not setNonEmpty!49360) (not start!681238) (not b!7041487) (not b!7041481) (not b!7041482) (not b!7041477) (not b!7041493) (not b!7041490) (not b!7041484) (not b!7041492) (not b!7041483) (not b!7041479) (not b!7041488) (not b!7041475) (not b!7041485) (not b!7041473) (not b!7041472) (not b!7041476) (not b!7041480))
(check-sat)
(get-model)

(declare-fun d!2198474 () Bool)

(declare-fun c!1310731 () Bool)

(declare-fun isEmpty!39613 (List!68008) Bool)

(assert (=> d!2198474 (= c!1310731 (isEmpty!39613 (t!381779 s!7408)))))

(declare-fun e!4233181 () Bool)

(assert (=> d!2198474 (= (matchZipper!3033 lt!2524806 (t!381779 s!7408)) e!4233181)))

(declare-fun b!7041675 () Bool)

(declare-fun nullableZipper!2599 ((InoxSet Context!12978)) Bool)

(assert (=> b!7041675 (= e!4233181 (nullableZipper!2599 lt!2524806))))

(declare-fun b!7041676 () Bool)

(declare-fun head!14290 (List!68008) C!35256)

(declare-fun tail!13603 (List!68008) List!68008)

(assert (=> b!7041676 (= e!4233181 (matchZipper!3033 (derivationStepZipper!2949 lt!2524806 (head!14290 (t!381779 s!7408))) (tail!13603 (t!381779 s!7408))))))

(assert (= (and d!2198474 c!1310731) b!7041675))

(assert (= (and d!2198474 (not c!1310731)) b!7041676))

(declare-fun m!7753368 () Bool)

(assert (=> d!2198474 m!7753368))

(declare-fun m!7753370 () Bool)

(assert (=> b!7041675 m!7753370))

(declare-fun m!7753372 () Bool)

(assert (=> b!7041676 m!7753372))

(assert (=> b!7041676 m!7753372))

(declare-fun m!7753374 () Bool)

(assert (=> b!7041676 m!7753374))

(declare-fun m!7753376 () Bool)

(assert (=> b!7041676 m!7753376))

(assert (=> b!7041676 m!7753374))

(assert (=> b!7041676 m!7753376))

(declare-fun m!7753378 () Bool)

(assert (=> b!7041676 m!7753378))

(assert (=> b!7041489 d!2198474))

(declare-fun d!2198476 () Bool)

(declare-fun forall!16417 (List!68007 Int) Bool)

(assert (=> d!2198476 (forall!16417 (++!15561 lt!2524814 (exprs!6989 ct2!306)) lambda!416961)))

(declare-fun lt!2524894 () Unit!161666)

(declare-fun choose!53460 (List!68007 List!68007 Int) Unit!161666)

(assert (=> d!2198476 (= lt!2524894 (choose!53460 lt!2524814 (exprs!6989 ct2!306) lambda!416961))))

(assert (=> d!2198476 (forall!16417 lt!2524814 lambda!416961)))

(assert (=> d!2198476 (= (lemmaConcatPreservesForall!814 lt!2524814 (exprs!6989 ct2!306) lambda!416961) lt!2524894)))

(declare-fun bs!1873353 () Bool)

(assert (= bs!1873353 d!2198476))

(assert (=> bs!1873353 m!7753050))

(assert (=> bs!1873353 m!7753050))

(declare-fun m!7753390 () Bool)

(assert (=> bs!1873353 m!7753390))

(declare-fun m!7753392 () Bool)

(assert (=> bs!1873353 m!7753392))

(declare-fun m!7753394 () Bool)

(assert (=> bs!1873353 m!7753394))

(assert (=> b!7041489 d!2198476))

(declare-fun d!2198486 () Bool)

(declare-fun c!1310732 () Bool)

(assert (=> d!2198486 (= c!1310732 (isEmpty!39613 (_2!37365 lt!2524829)))))

(declare-fun e!4233186 () Bool)

(assert (=> d!2198486 (= (matchZipper!3033 lt!2524837 (_2!37365 lt!2524829)) e!4233186)))

(declare-fun b!7041683 () Bool)

(assert (=> b!7041683 (= e!4233186 (nullableZipper!2599 lt!2524837))))

(declare-fun b!7041684 () Bool)

(assert (=> b!7041684 (= e!4233186 (matchZipper!3033 (derivationStepZipper!2949 lt!2524837 (head!14290 (_2!37365 lt!2524829))) (tail!13603 (_2!37365 lt!2524829))))))

(assert (= (and d!2198486 c!1310732) b!7041683))

(assert (= (and d!2198486 (not c!1310732)) b!7041684))

(declare-fun m!7753396 () Bool)

(assert (=> d!2198486 m!7753396))

(declare-fun m!7753398 () Bool)

(assert (=> b!7041683 m!7753398))

(declare-fun m!7753400 () Bool)

(assert (=> b!7041684 m!7753400))

(assert (=> b!7041684 m!7753400))

(declare-fun m!7753402 () Bool)

(assert (=> b!7041684 m!7753402))

(declare-fun m!7753404 () Bool)

(assert (=> b!7041684 m!7753404))

(assert (=> b!7041684 m!7753402))

(assert (=> b!7041684 m!7753404))

(declare-fun m!7753406 () Bool)

(assert (=> b!7041684 m!7753406))

(assert (=> b!7041477 d!2198486))

(declare-fun bs!1873354 () Bool)

(declare-fun d!2198488 () Bool)

(assert (= bs!1873354 (and d!2198488 b!7041488)))

(declare-fun lambda!416988 () Int)

(assert (=> bs!1873354 (not (= lambda!416988 lambda!416959))))

(assert (=> d!2198488 true))

(declare-fun order!28215 () Int)

(declare-fun dynLambda!27459 (Int Int) Int)

(assert (=> d!2198488 (< (dynLambda!27459 order!28215 lambda!416959) (dynLambda!27459 order!28215 lambda!416988))))

(declare-fun forall!16418 (List!68009 Int) Bool)

(assert (=> d!2198488 (= (exists!3438 lt!2524816 lambda!416959) (not (forall!16418 lt!2524816 lambda!416988)))))

(declare-fun bs!1873355 () Bool)

(assert (= bs!1873355 d!2198488))

(declare-fun m!7753408 () Bool)

(assert (=> bs!1873355 m!7753408))

(assert (=> b!7041488 d!2198488))

(declare-fun bs!1873356 () Bool)

(declare-fun d!2198490 () Bool)

(assert (= bs!1873356 (and d!2198490 b!7041488)))

(declare-fun lambda!416991 () Int)

(assert (=> bs!1873356 (= lambda!416991 lambda!416959)))

(declare-fun bs!1873357 () Bool)

(assert (= bs!1873357 (and d!2198490 d!2198488)))

(assert (=> bs!1873357 (not (= lambda!416991 lambda!416988))))

(assert (=> d!2198490 true))

(assert (=> d!2198490 (exists!3438 lt!2524816 lambda!416991)))

(declare-fun lt!2524897 () Unit!161666)

(declare-fun choose!53461 (List!68009 List!68008) Unit!161666)

(assert (=> d!2198490 (= lt!2524897 (choose!53461 lt!2524816 s!7408))))

(declare-fun content!13583 (List!68009) (InoxSet Context!12978))

(assert (=> d!2198490 (matchZipper!3033 (content!13583 lt!2524816) s!7408)))

(assert (=> d!2198490 (= (lemmaZipperMatchesExistsMatchingContext!432 lt!2524816 s!7408) lt!2524897)))

(declare-fun bs!1873358 () Bool)

(assert (= bs!1873358 d!2198490))

(declare-fun m!7753410 () Bool)

(assert (=> bs!1873358 m!7753410))

(declare-fun m!7753412 () Bool)

(assert (=> bs!1873358 m!7753412))

(declare-fun m!7753414 () Bool)

(assert (=> bs!1873358 m!7753414))

(assert (=> bs!1873358 m!7753414))

(declare-fun m!7753416 () Bool)

(assert (=> bs!1873358 m!7753416))

(assert (=> b!7041488 d!2198490))

(declare-fun d!2198492 () Bool)

(declare-fun e!4233189 () Bool)

(assert (=> d!2198492 e!4233189))

(declare-fun res!2874763 () Bool)

(assert (=> d!2198492 (=> (not res!2874763) (not e!4233189))))

(declare-fun lt!2524900 () List!68009)

(declare-fun noDuplicate!2646 (List!68009) Bool)

(assert (=> d!2198492 (= res!2874763 (noDuplicate!2646 lt!2524900))))

(declare-fun choose!53462 ((InoxSet Context!12978)) List!68009)

(assert (=> d!2198492 (= lt!2524900 (choose!53462 lt!2524840))))

(assert (=> d!2198492 (= (toList!10836 lt!2524840) lt!2524900)))

(declare-fun b!7041689 () Bool)

(assert (=> b!7041689 (= e!4233189 (= (content!13583 lt!2524900) lt!2524840))))

(assert (= (and d!2198492 res!2874763) b!7041689))

(declare-fun m!7753418 () Bool)

(assert (=> d!2198492 m!7753418))

(declare-fun m!7753420 () Bool)

(assert (=> d!2198492 m!7753420))

(declare-fun m!7753422 () Bool)

(assert (=> b!7041689 m!7753422))

(assert (=> b!7041488 d!2198492))

(declare-fun d!2198494 () Bool)

(declare-fun e!4233192 () Bool)

(assert (=> d!2198494 e!4233192))

(declare-fun res!2874766 () Bool)

(assert (=> d!2198494 (=> (not res!2874766) (not e!4233192))))

(declare-fun lt!2524903 () Context!12978)

(declare-fun dynLambda!27460 (Int Context!12978) Bool)

(assert (=> d!2198494 (= res!2874766 (dynLambda!27460 lambda!416959 lt!2524903))))

(declare-fun getWitness!1519 (List!68009 Int) Context!12978)

(assert (=> d!2198494 (= lt!2524903 (getWitness!1519 (toList!10836 lt!2524840) lambda!416959))))

(declare-fun exists!3440 ((InoxSet Context!12978) Int) Bool)

(assert (=> d!2198494 (exists!3440 lt!2524840 lambda!416959)))

(assert (=> d!2198494 (= (getWitness!1517 lt!2524840 lambda!416959) lt!2524903)))

(declare-fun b!7041692 () Bool)

(assert (=> b!7041692 (= e!4233192 (select lt!2524840 lt!2524903))))

(assert (= (and d!2198494 res!2874766) b!7041692))

(declare-fun b_lambda!267327 () Bool)

(assert (=> (not b_lambda!267327) (not d!2198494)))

(declare-fun m!7753424 () Bool)

(assert (=> d!2198494 m!7753424))

(assert (=> d!2198494 m!7753086))

(assert (=> d!2198494 m!7753086))

(declare-fun m!7753426 () Bool)

(assert (=> d!2198494 m!7753426))

(declare-fun m!7753428 () Bool)

(assert (=> d!2198494 m!7753428))

(declare-fun m!7753430 () Bool)

(assert (=> b!7041692 m!7753430))

(assert (=> b!7041488 d!2198494))

(declare-fun d!2198496 () Bool)

(declare-fun c!1310735 () Bool)

(assert (=> d!2198496 (= c!1310735 (isEmpty!39613 s!7408))))

(declare-fun e!4233193 () Bool)

(assert (=> d!2198496 (= (matchZipper!3033 lt!2524815 s!7408) e!4233193)))

(declare-fun b!7041693 () Bool)

(assert (=> b!7041693 (= e!4233193 (nullableZipper!2599 lt!2524815))))

(declare-fun b!7041694 () Bool)

(assert (=> b!7041694 (= e!4233193 (matchZipper!3033 (derivationStepZipper!2949 lt!2524815 (head!14290 s!7408)) (tail!13603 s!7408)))))

(assert (= (and d!2198496 c!1310735) b!7041693))

(assert (= (and d!2198496 (not c!1310735)) b!7041694))

(declare-fun m!7753432 () Bool)

(assert (=> d!2198496 m!7753432))

(declare-fun m!7753434 () Bool)

(assert (=> b!7041693 m!7753434))

(declare-fun m!7753436 () Bool)

(assert (=> b!7041694 m!7753436))

(assert (=> b!7041694 m!7753436))

(declare-fun m!7753438 () Bool)

(assert (=> b!7041694 m!7753438))

(declare-fun m!7753440 () Bool)

(assert (=> b!7041694 m!7753440))

(assert (=> b!7041694 m!7753438))

(assert (=> b!7041694 m!7753440))

(declare-fun m!7753442 () Bool)

(assert (=> b!7041694 m!7753442))

(assert (=> b!7041488 d!2198496))

(assert (=> b!7041475 d!2198476))

(assert (=> b!7041486 d!2198476))

(declare-fun bs!1873359 () Bool)

(declare-fun d!2198498 () Bool)

(assert (= bs!1873359 (and d!2198498 b!7041493)))

(declare-fun lambda!416996 () Int)

(assert (=> bs!1873359 (= lambda!416996 lambda!416960)))

(assert (=> d!2198498 true))

(declare-fun map!15802 ((InoxSet Context!12978) Int) (InoxSet Context!12978))

(assert (=> d!2198498 (= (appendTo!614 lt!2524828 ct2!306) (map!15802 lt!2524828 lambda!416996))))

(declare-fun bs!1873360 () Bool)

(assert (= bs!1873360 d!2198498))

(declare-fun m!7753444 () Bool)

(assert (=> bs!1873360 m!7753444))

(assert (=> b!7041486 d!2198498))

(declare-fun d!2198500 () Bool)

(assert (=> d!2198500 (isDefined!13595 (findConcatSeparationZippers!410 lt!2524828 (store ((as const (Array Context!12978 Bool)) false) ct2!306 true) Nil!67884 (t!381779 s!7408) (t!381779 s!7408)))))

(declare-fun lt!2524908 () Unit!161666)

(declare-fun choose!53463 ((InoxSet Context!12978) Context!12978 List!68008) Unit!161666)

(assert (=> d!2198500 (= lt!2524908 (choose!53463 lt!2524828 ct2!306 (t!381779 s!7408)))))

(assert (=> d!2198500 (matchZipper!3033 (appendTo!614 lt!2524828 ct2!306) (t!381779 s!7408))))

(assert (=> d!2198500 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!398 lt!2524828 ct2!306 (t!381779 s!7408)) lt!2524908)))

(declare-fun bs!1873361 () Bool)

(assert (= bs!1873361 d!2198500))

(assert (=> bs!1873361 m!7753062))

(assert (=> bs!1873361 m!7753056))

(declare-fun m!7753446 () Bool)

(assert (=> bs!1873361 m!7753446))

(assert (=> bs!1873361 m!7753056))

(assert (=> bs!1873361 m!7753062))

(declare-fun m!7753448 () Bool)

(assert (=> bs!1873361 m!7753448))

(assert (=> bs!1873361 m!7753448))

(declare-fun m!7753450 () Bool)

(assert (=> bs!1873361 m!7753450))

(declare-fun m!7753452 () Bool)

(assert (=> bs!1873361 m!7753452))

(assert (=> b!7041486 d!2198500))

(declare-fun d!2198502 () Bool)

(declare-fun c!1310737 () Bool)

(assert (=> d!2198502 (= c!1310737 (isEmpty!39613 (_1!37365 lt!2524829)))))

(declare-fun e!4233194 () Bool)

(assert (=> d!2198502 (= (matchZipper!3033 lt!2524828 (_1!37365 lt!2524829)) e!4233194)))

(declare-fun b!7041695 () Bool)

(assert (=> b!7041695 (= e!4233194 (nullableZipper!2599 lt!2524828))))

(declare-fun b!7041696 () Bool)

(assert (=> b!7041696 (= e!4233194 (matchZipper!3033 (derivationStepZipper!2949 lt!2524828 (head!14290 (_1!37365 lt!2524829))) (tail!13603 (_1!37365 lt!2524829))))))

(assert (= (and d!2198502 c!1310737) b!7041695))

(assert (= (and d!2198502 (not c!1310737)) b!7041696))

(declare-fun m!7753454 () Bool)

(assert (=> d!2198502 m!7753454))

(declare-fun m!7753456 () Bool)

(assert (=> b!7041695 m!7753456))

(declare-fun m!7753458 () Bool)

(assert (=> b!7041696 m!7753458))

(assert (=> b!7041696 m!7753458))

(declare-fun m!7753460 () Bool)

(assert (=> b!7041696 m!7753460))

(declare-fun m!7753462 () Bool)

(assert (=> b!7041696 m!7753462))

(assert (=> b!7041696 m!7753460))

(assert (=> b!7041696 m!7753462))

(declare-fun m!7753464 () Bool)

(assert (=> b!7041696 m!7753464))

(assert (=> b!7041486 d!2198502))

(declare-fun d!2198504 () Bool)

(assert (=> d!2198504 (= (get!23791 lt!2524810) (v!53183 lt!2524810))))

(assert (=> b!7041486 d!2198504))

(declare-fun bs!1873362 () Bool)

(declare-fun d!2198506 () Bool)

(assert (= bs!1873362 (and d!2198506 b!7041493)))

(declare-fun lambda!416999 () Int)

(assert (=> bs!1873362 (= lambda!416999 lambda!416961)))

(assert (=> d!2198506 (= (derivationStepZipperDown!2157 (h!74331 (exprs!6989 lt!2524812)) (Context!12979 (++!15561 (exprs!6989 lt!2524838) (exprs!6989 ct2!306))) (h!74332 s!7408)) (appendTo!614 (derivationStepZipperDown!2157 (h!74331 (exprs!6989 lt!2524812)) lt!2524838 (h!74332 s!7408)) ct2!306))))

(declare-fun lt!2524914 () Unit!161666)

(assert (=> d!2198506 (= lt!2524914 (lemmaConcatPreservesForall!814 (exprs!6989 lt!2524838) (exprs!6989 ct2!306) lambda!416999))))

(declare-fun lt!2524913 () Unit!161666)

(declare-fun choose!53464 (Context!12978 Regex!17493 C!35256 Context!12978) Unit!161666)

(assert (=> d!2198506 (= lt!2524913 (choose!53464 lt!2524838 (h!74331 (exprs!6989 lt!2524812)) (h!74332 s!7408) ct2!306))))

(declare-fun validRegex!8938 (Regex!17493) Bool)

(assert (=> d!2198506 (validRegex!8938 (h!74331 (exprs!6989 lt!2524812)))))

(assert (=> d!2198506 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!72 lt!2524838 (h!74331 (exprs!6989 lt!2524812)) (h!74332 s!7408) ct2!306) lt!2524913)))

(declare-fun bs!1873363 () Bool)

(assert (= bs!1873363 d!2198506))

(declare-fun m!7753466 () Bool)

(assert (=> bs!1873363 m!7753466))

(declare-fun m!7753468 () Bool)

(assert (=> bs!1873363 m!7753468))

(declare-fun m!7753470 () Bool)

(assert (=> bs!1873363 m!7753470))

(assert (=> bs!1873363 m!7753066))

(declare-fun m!7753472 () Bool)

(assert (=> bs!1873363 m!7753472))

(declare-fun m!7753474 () Bool)

(assert (=> bs!1873363 m!7753474))

(declare-fun m!7753476 () Bool)

(assert (=> bs!1873363 m!7753476))

(assert (=> bs!1873363 m!7753066))

(assert (=> b!7041486 d!2198506))

(declare-fun b!7041715 () Bool)

(declare-fun e!4233205 () Bool)

(assert (=> b!7041715 (= e!4233205 (matchZipper!3033 lt!2524837 (t!381779 s!7408)))))

(declare-fun b!7041716 () Bool)

(declare-fun res!2874778 () Bool)

(declare-fun e!4233209 () Bool)

(assert (=> b!7041716 (=> (not res!2874778) (not e!4233209))))

(declare-fun lt!2524923 () Option!16894)

(assert (=> b!7041716 (= res!2874778 (matchZipper!3033 lt!2524837 (_2!37365 (get!23791 lt!2524923))))))

(declare-fun b!7041717 () Bool)

(declare-fun lt!2524922 () Unit!161666)

(declare-fun lt!2524921 () Unit!161666)

(assert (=> b!7041717 (= lt!2524922 lt!2524921)))

(assert (=> b!7041717 (= (++!15562 (++!15562 Nil!67884 (Cons!67884 (h!74332 (t!381779 s!7408)) Nil!67884)) (t!381779 (t!381779 s!7408))) (t!381779 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2940 (List!68008 C!35256 List!68008 List!68008) Unit!161666)

(assert (=> b!7041717 (= lt!2524921 (lemmaMoveElementToOtherListKeepsConcatEq!2940 Nil!67884 (h!74332 (t!381779 s!7408)) (t!381779 (t!381779 s!7408)) (t!381779 s!7408)))))

(declare-fun e!4233206 () Option!16894)

(assert (=> b!7041717 (= e!4233206 (findConcatSeparationZippers!410 lt!2524828 lt!2524837 (++!15562 Nil!67884 (Cons!67884 (h!74332 (t!381779 s!7408)) Nil!67884)) (t!381779 (t!381779 s!7408)) (t!381779 s!7408)))))

(declare-fun d!2198508 () Bool)

(declare-fun e!4233207 () Bool)

(assert (=> d!2198508 e!4233207))

(declare-fun res!2874781 () Bool)

(assert (=> d!2198508 (=> res!2874781 e!4233207)))

(assert (=> d!2198508 (= res!2874781 e!4233209)))

(declare-fun res!2874779 () Bool)

(assert (=> d!2198508 (=> (not res!2874779) (not e!4233209))))

(assert (=> d!2198508 (= res!2874779 (isDefined!13595 lt!2524923))))

(declare-fun e!4233208 () Option!16894)

(assert (=> d!2198508 (= lt!2524923 e!4233208)))

(declare-fun c!1310744 () Bool)

(assert (=> d!2198508 (= c!1310744 e!4233205)))

(declare-fun res!2874780 () Bool)

(assert (=> d!2198508 (=> (not res!2874780) (not e!4233205))))

(assert (=> d!2198508 (= res!2874780 (matchZipper!3033 lt!2524828 Nil!67884))))

(assert (=> d!2198508 (= (++!15562 Nil!67884 (t!381779 s!7408)) (t!381779 s!7408))))

(assert (=> d!2198508 (= (findConcatSeparationZippers!410 lt!2524828 lt!2524837 Nil!67884 (t!381779 s!7408) (t!381779 s!7408)) lt!2524923)))

(declare-fun b!7041718 () Bool)

(assert (=> b!7041718 (= e!4233206 None!16893)))

(declare-fun b!7041719 () Bool)

(assert (=> b!7041719 (= e!4233208 (Some!16893 (tuple2!68125 Nil!67884 (t!381779 s!7408))))))

(declare-fun b!7041720 () Bool)

(declare-fun res!2874777 () Bool)

(assert (=> b!7041720 (=> (not res!2874777) (not e!4233209))))

(assert (=> b!7041720 (= res!2874777 (matchZipper!3033 lt!2524828 (_1!37365 (get!23791 lt!2524923))))))

(declare-fun b!7041721 () Bool)

(assert (=> b!7041721 (= e!4233208 e!4233206)))

(declare-fun c!1310743 () Bool)

(assert (=> b!7041721 (= c!1310743 ((_ is Nil!67884) (t!381779 s!7408)))))

(declare-fun b!7041722 () Bool)

(assert (=> b!7041722 (= e!4233207 (not (isDefined!13595 lt!2524923)))))

(declare-fun b!7041723 () Bool)

(assert (=> b!7041723 (= e!4233209 (= (++!15562 (_1!37365 (get!23791 lt!2524923)) (_2!37365 (get!23791 lt!2524923))) (t!381779 s!7408)))))

(assert (= (and d!2198508 res!2874780) b!7041715))

(assert (= (and d!2198508 c!1310744) b!7041719))

(assert (= (and d!2198508 (not c!1310744)) b!7041721))

(assert (= (and b!7041721 c!1310743) b!7041718))

(assert (= (and b!7041721 (not c!1310743)) b!7041717))

(assert (= (and d!2198508 res!2874779) b!7041720))

(assert (= (and b!7041720 res!2874777) b!7041716))

(assert (= (and b!7041716 res!2874778) b!7041723))

(assert (= (and d!2198508 (not res!2874781)) b!7041722))

(declare-fun m!7753478 () Bool)

(assert (=> b!7041722 m!7753478))

(declare-fun m!7753480 () Bool)

(assert (=> b!7041717 m!7753480))

(assert (=> b!7041717 m!7753480))

(declare-fun m!7753482 () Bool)

(assert (=> b!7041717 m!7753482))

(declare-fun m!7753484 () Bool)

(assert (=> b!7041717 m!7753484))

(assert (=> b!7041717 m!7753480))

(declare-fun m!7753486 () Bool)

(assert (=> b!7041717 m!7753486))

(declare-fun m!7753488 () Bool)

(assert (=> b!7041720 m!7753488))

(declare-fun m!7753490 () Bool)

(assert (=> b!7041720 m!7753490))

(assert (=> b!7041716 m!7753488))

(declare-fun m!7753492 () Bool)

(assert (=> b!7041716 m!7753492))

(declare-fun m!7753494 () Bool)

(assert (=> b!7041715 m!7753494))

(assert (=> d!2198508 m!7753478))

(declare-fun m!7753496 () Bool)

(assert (=> d!2198508 m!7753496))

(declare-fun m!7753498 () Bool)

(assert (=> d!2198508 m!7753498))

(assert (=> b!7041723 m!7753488))

(declare-fun m!7753500 () Bool)

(assert (=> b!7041723 m!7753500))

(assert (=> b!7041486 d!2198508))

(declare-fun bm!639576 () Bool)

(declare-fun call!639586 () (InoxSet Context!12978))

(declare-fun call!639584 () (InoxSet Context!12978))

(assert (=> bm!639576 (= call!639586 call!639584)))

(declare-fun b!7041746 () Bool)

(declare-fun e!4233222 () (InoxSet Context!12978))

(assert (=> b!7041746 (= e!4233222 ((as const (Array Context!12978 Bool)) false))))

(declare-fun c!1310755 () Bool)

(declare-fun bm!639577 () Bool)

(declare-fun c!1310759 () Bool)

(declare-fun call!639582 () (InoxSet Context!12978))

(declare-fun c!1310758 () Bool)

(declare-fun call!639581 () List!68007)

(assert (=> bm!639577 (= call!639582 (derivationStepZipperDown!2157 (ite c!1310755 (regOne!35499 (h!74331 (exprs!6989 lt!2524812))) (ite c!1310758 (regTwo!35498 (h!74331 (exprs!6989 lt!2524812))) (ite c!1310759 (regOne!35498 (h!74331 (exprs!6989 lt!2524812))) (reg!17822 (h!74331 (exprs!6989 lt!2524812)))))) (ite (or c!1310755 c!1310758) lt!2524838 (Context!12979 call!639581)) (h!74332 s!7408)))))

(declare-fun b!7041747 () Bool)

(declare-fun e!4233223 () (InoxSet Context!12978))

(declare-fun e!4233226 () (InoxSet Context!12978))

(assert (=> b!7041747 (= e!4233223 e!4233226)))

(assert (=> b!7041747 (= c!1310759 ((_ is Concat!26338) (h!74331 (exprs!6989 lt!2524812))))))

(declare-fun d!2198510 () Bool)

(declare-fun c!1310756 () Bool)

(assert (=> d!2198510 (= c!1310756 (and ((_ is ElementMatch!17493) (h!74331 (exprs!6989 lt!2524812))) (= (c!1310669 (h!74331 (exprs!6989 lt!2524812))) (h!74332 s!7408))))))

(declare-fun e!4233225 () (InoxSet Context!12978))

(assert (=> d!2198510 (= (derivationStepZipperDown!2157 (h!74331 (exprs!6989 lt!2524812)) lt!2524838 (h!74332 s!7408)) e!4233225)))

(declare-fun b!7041748 () Bool)

(declare-fun c!1310757 () Bool)

(assert (=> b!7041748 (= c!1310757 ((_ is Star!17493) (h!74331 (exprs!6989 lt!2524812))))))

(assert (=> b!7041748 (= e!4233226 e!4233222)))

(declare-fun b!7041749 () Bool)

(declare-fun e!4233227 () (InoxSet Context!12978))

(assert (=> b!7041749 (= e!4233225 e!4233227)))

(assert (=> b!7041749 (= c!1310755 ((_ is Union!17493) (h!74331 (exprs!6989 lt!2524812))))))

(declare-fun b!7041750 () Bool)

(declare-fun e!4233224 () Bool)

(assert (=> b!7041750 (= e!4233224 (nullable!7204 (regOne!35498 (h!74331 (exprs!6989 lt!2524812)))))))

(declare-fun bm!639578 () Bool)

(assert (=> bm!639578 (= call!639584 call!639582)))

(declare-fun call!639585 () List!68007)

(declare-fun bm!639579 () Bool)

(declare-fun call!639583 () (InoxSet Context!12978))

(assert (=> bm!639579 (= call!639583 (derivationStepZipperDown!2157 (ite c!1310755 (regTwo!35499 (h!74331 (exprs!6989 lt!2524812))) (regOne!35498 (h!74331 (exprs!6989 lt!2524812)))) (ite c!1310755 lt!2524838 (Context!12979 call!639585)) (h!74332 s!7408)))))

(declare-fun bm!639580 () Bool)

(assert (=> bm!639580 (= call!639581 call!639585)))

(declare-fun b!7041751 () Bool)

(assert (=> b!7041751 (= c!1310758 e!4233224)))

(declare-fun res!2874784 () Bool)

(assert (=> b!7041751 (=> (not res!2874784) (not e!4233224))))

(assert (=> b!7041751 (= res!2874784 ((_ is Concat!26338) (h!74331 (exprs!6989 lt!2524812))))))

(assert (=> b!7041751 (= e!4233227 e!4233223)))

(declare-fun b!7041752 () Bool)

(assert (=> b!7041752 (= e!4233225 (store ((as const (Array Context!12978 Bool)) false) lt!2524838 true))))

(declare-fun b!7041753 () Bool)

(assert (=> b!7041753 (= e!4233226 call!639586)))

(declare-fun b!7041754 () Bool)

(assert (=> b!7041754 (= e!4233223 ((_ map or) call!639583 call!639584))))

(declare-fun b!7041755 () Bool)

(assert (=> b!7041755 (= e!4233222 call!639586)))

(declare-fun bm!639581 () Bool)

(declare-fun $colon$colon!2592 (List!68007 Regex!17493) List!68007)

(assert (=> bm!639581 (= call!639585 ($colon$colon!2592 (exprs!6989 lt!2524838) (ite (or c!1310758 c!1310759) (regTwo!35498 (h!74331 (exprs!6989 lt!2524812))) (h!74331 (exprs!6989 lt!2524812)))))))

(declare-fun b!7041756 () Bool)

(assert (=> b!7041756 (= e!4233227 ((_ map or) call!639582 call!639583))))

(assert (= (and d!2198510 c!1310756) b!7041752))

(assert (= (and d!2198510 (not c!1310756)) b!7041749))

(assert (= (and b!7041749 c!1310755) b!7041756))

(assert (= (and b!7041749 (not c!1310755)) b!7041751))

(assert (= (and b!7041751 res!2874784) b!7041750))

(assert (= (and b!7041751 c!1310758) b!7041754))

(assert (= (and b!7041751 (not c!1310758)) b!7041747))

(assert (= (and b!7041747 c!1310759) b!7041753))

(assert (= (and b!7041747 (not c!1310759)) b!7041748))

(assert (= (and b!7041748 c!1310757) b!7041755))

(assert (= (and b!7041748 (not c!1310757)) b!7041746))

(assert (= (or b!7041753 b!7041755) bm!639580))

(assert (= (or b!7041753 b!7041755) bm!639576))

(assert (= (or b!7041754 bm!639576) bm!639578))

(assert (= (or b!7041754 bm!639580) bm!639581))

(assert (= (or b!7041756 bm!639578) bm!639577))

(assert (= (or b!7041756 b!7041754) bm!639579))

(declare-fun m!7753502 () Bool)

(assert (=> bm!639581 m!7753502))

(declare-fun m!7753504 () Bool)

(assert (=> b!7041750 m!7753504))

(declare-fun m!7753506 () Bool)

(assert (=> b!7041752 m!7753506))

(declare-fun m!7753508 () Bool)

(assert (=> bm!639577 m!7753508))

(declare-fun m!7753510 () Bool)

(assert (=> bm!639579 m!7753510))

(assert (=> b!7041486 d!2198510))

(declare-fun d!2198512 () Bool)

(declare-fun isEmpty!39614 (Option!16894) Bool)

(assert (=> d!2198512 (= (isDefined!13595 lt!2524810) (not (isEmpty!39614 lt!2524810)))))

(declare-fun bs!1873364 () Bool)

(assert (= bs!1873364 d!2198512))

(declare-fun m!7753512 () Bool)

(assert (=> bs!1873364 m!7753512))

(assert (=> b!7041486 d!2198512))

(declare-fun d!2198514 () Bool)

(assert (=> d!2198514 (= (isEmpty!39610 (exprs!6989 lt!2524812)) ((_ is Nil!67883) (exprs!6989 lt!2524812)))))

(assert (=> b!7041476 d!2198514))

(assert (=> b!7041484 d!2198474))

(assert (=> b!7041484 d!2198476))

(declare-fun d!2198516 () Bool)

(assert (=> d!2198516 (forall!16417 (++!15561 (exprs!6989 lt!2524812) (exprs!6989 ct2!306)) lambda!416961)))

(declare-fun lt!2524924 () Unit!161666)

(assert (=> d!2198516 (= lt!2524924 (choose!53460 (exprs!6989 lt!2524812) (exprs!6989 ct2!306) lambda!416961))))

(assert (=> d!2198516 (forall!16417 (exprs!6989 lt!2524812) lambda!416961)))

(assert (=> d!2198516 (= (lemmaConcatPreservesForall!814 (exprs!6989 lt!2524812) (exprs!6989 ct2!306) lambda!416961) lt!2524924)))

(declare-fun bs!1873365 () Bool)

(assert (= bs!1873365 d!2198516))

(assert (=> bs!1873365 m!7753010))

(assert (=> bs!1873365 m!7753010))

(declare-fun m!7753514 () Bool)

(assert (=> bs!1873365 m!7753514))

(declare-fun m!7753516 () Bool)

(assert (=> bs!1873365 m!7753516))

(declare-fun m!7753518 () Bool)

(assert (=> bs!1873365 m!7753518))

(assert (=> b!7041472 d!2198516))

(assert (=> b!7041482 d!2198476))

(declare-fun e!4233233 () Bool)

(declare-fun lt!2524927 () List!68007)

(declare-fun b!7041768 () Bool)

(assert (=> b!7041768 (= e!4233233 (or (not (= (exprs!6989 ct2!306) Nil!67883)) (= lt!2524927 lt!2524814)))))

(declare-fun b!7041766 () Bool)

(declare-fun e!4233232 () List!68007)

(assert (=> b!7041766 (= e!4233232 (Cons!67883 (h!74331 lt!2524814) (++!15561 (t!381778 lt!2524814) (exprs!6989 ct2!306))))))

(declare-fun d!2198518 () Bool)

(assert (=> d!2198518 e!4233233))

(declare-fun res!2874789 () Bool)

(assert (=> d!2198518 (=> (not res!2874789) (not e!4233233))))

(declare-fun content!13585 (List!68007) (InoxSet Regex!17493))

(assert (=> d!2198518 (= res!2874789 (= (content!13585 lt!2524927) ((_ map or) (content!13585 lt!2524814) (content!13585 (exprs!6989 ct2!306)))))))

(assert (=> d!2198518 (= lt!2524927 e!4233232)))

(declare-fun c!1310762 () Bool)

(assert (=> d!2198518 (= c!1310762 ((_ is Nil!67883) lt!2524814))))

(assert (=> d!2198518 (= (++!15561 lt!2524814 (exprs!6989 ct2!306)) lt!2524927)))

(declare-fun b!7041767 () Bool)

(declare-fun res!2874790 () Bool)

(assert (=> b!7041767 (=> (not res!2874790) (not e!4233233))))

(declare-fun size!41095 (List!68007) Int)

(assert (=> b!7041767 (= res!2874790 (= (size!41095 lt!2524927) (+ (size!41095 lt!2524814) (size!41095 (exprs!6989 ct2!306)))))))

(declare-fun b!7041765 () Bool)

(assert (=> b!7041765 (= e!4233232 (exprs!6989 ct2!306))))

(assert (= (and d!2198518 c!1310762) b!7041765))

(assert (= (and d!2198518 (not c!1310762)) b!7041766))

(assert (= (and d!2198518 res!2874789) b!7041767))

(assert (= (and b!7041767 res!2874790) b!7041768))

(declare-fun m!7753520 () Bool)

(assert (=> b!7041766 m!7753520))

(declare-fun m!7753522 () Bool)

(assert (=> d!2198518 m!7753522))

(declare-fun m!7753524 () Bool)

(assert (=> d!2198518 m!7753524))

(declare-fun m!7753526 () Bool)

(assert (=> d!2198518 m!7753526))

(declare-fun m!7753528 () Bool)

(assert (=> b!7041767 m!7753528))

(declare-fun m!7753530 () Bool)

(assert (=> b!7041767 m!7753530))

(declare-fun m!7753532 () Bool)

(assert (=> b!7041767 m!7753532))

(assert (=> b!7041482 d!2198518))

(declare-fun e!4233242 () (InoxSet Context!12978))

(declare-fun call!639589 () (InoxSet Context!12978))

(declare-fun b!7041779 () Bool)

(assert (=> b!7041779 (= e!4233242 ((_ map or) call!639589 (derivationStepZipperUp!2103 (Context!12979 (t!381778 (exprs!6989 lt!2524803))) (h!74332 s!7408))))))

(declare-fun b!7041780 () Bool)

(declare-fun e!4233241 () Bool)

(assert (=> b!7041780 (= e!4233241 (nullable!7204 (h!74331 (exprs!6989 lt!2524803))))))

(declare-fun b!7041781 () Bool)

(declare-fun e!4233240 () (InoxSet Context!12978))

(assert (=> b!7041781 (= e!4233242 e!4233240)))

(declare-fun c!1310767 () Bool)

(assert (=> b!7041781 (= c!1310767 ((_ is Cons!67883) (exprs!6989 lt!2524803)))))

(declare-fun b!7041782 () Bool)

(assert (=> b!7041782 (= e!4233240 call!639589)))

(declare-fun bm!639584 () Bool)

(assert (=> bm!639584 (= call!639589 (derivationStepZipperDown!2157 (h!74331 (exprs!6989 lt!2524803)) (Context!12979 (t!381778 (exprs!6989 lt!2524803))) (h!74332 s!7408)))))

(declare-fun b!7041783 () Bool)

(assert (=> b!7041783 (= e!4233240 ((as const (Array Context!12978 Bool)) false))))

(declare-fun d!2198520 () Bool)

(declare-fun c!1310768 () Bool)

(assert (=> d!2198520 (= c!1310768 e!4233241)))

(declare-fun res!2874793 () Bool)

(assert (=> d!2198520 (=> (not res!2874793) (not e!4233241))))

(assert (=> d!2198520 (= res!2874793 ((_ is Cons!67883) (exprs!6989 lt!2524803)))))

(assert (=> d!2198520 (= (derivationStepZipperUp!2103 lt!2524803 (h!74332 s!7408)) e!4233242)))

(assert (= (and d!2198520 res!2874793) b!7041780))

(assert (= (and d!2198520 c!1310768) b!7041779))

(assert (= (and d!2198520 (not c!1310768)) b!7041781))

(assert (= (and b!7041781 c!1310767) b!7041782))

(assert (= (and b!7041781 (not c!1310767)) b!7041783))

(assert (= (or b!7041779 b!7041782) bm!639584))

(declare-fun m!7753534 () Bool)

(assert (=> b!7041779 m!7753534))

(declare-fun m!7753536 () Bool)

(assert (=> b!7041780 m!7753536))

(declare-fun m!7753538 () Bool)

(assert (=> bm!639584 m!7753538))

(assert (=> b!7041482 d!2198520))

(declare-fun bm!639585 () Bool)

(declare-fun call!639595 () (InoxSet Context!12978))

(declare-fun call!639593 () (InoxSet Context!12978))

(assert (=> bm!639585 (= call!639595 call!639593)))

(declare-fun b!7041784 () Bool)

(declare-fun e!4233243 () (InoxSet Context!12978))

(assert (=> b!7041784 (= e!4233243 ((as const (Array Context!12978 Bool)) false))))

(declare-fun call!639591 () (InoxSet Context!12978))

(declare-fun c!1310772 () Bool)

(declare-fun bm!639586 () Bool)

(declare-fun c!1310769 () Bool)

(declare-fun c!1310773 () Bool)

(declare-fun call!639590 () List!68007)

(assert (=> bm!639586 (= call!639591 (derivationStepZipperDown!2157 (ite c!1310769 (regOne!35499 (h!74331 (exprs!6989 lt!2524812))) (ite c!1310772 (regTwo!35498 (h!74331 (exprs!6989 lt!2524812))) (ite c!1310773 (regOne!35498 (h!74331 (exprs!6989 lt!2524812))) (reg!17822 (h!74331 (exprs!6989 lt!2524812)))))) (ite (or c!1310769 c!1310772) lt!2524803 (Context!12979 call!639590)) (h!74332 s!7408)))))

(declare-fun b!7041785 () Bool)

(declare-fun e!4233244 () (InoxSet Context!12978))

(declare-fun e!4233247 () (InoxSet Context!12978))

(assert (=> b!7041785 (= e!4233244 e!4233247)))

(assert (=> b!7041785 (= c!1310773 ((_ is Concat!26338) (h!74331 (exprs!6989 lt!2524812))))))

(declare-fun d!2198522 () Bool)

(declare-fun c!1310770 () Bool)

(assert (=> d!2198522 (= c!1310770 (and ((_ is ElementMatch!17493) (h!74331 (exprs!6989 lt!2524812))) (= (c!1310669 (h!74331 (exprs!6989 lt!2524812))) (h!74332 s!7408))))))

(declare-fun e!4233246 () (InoxSet Context!12978))

(assert (=> d!2198522 (= (derivationStepZipperDown!2157 (h!74331 (exprs!6989 lt!2524812)) lt!2524803 (h!74332 s!7408)) e!4233246)))

(declare-fun b!7041786 () Bool)

(declare-fun c!1310771 () Bool)

(assert (=> b!7041786 (= c!1310771 ((_ is Star!17493) (h!74331 (exprs!6989 lt!2524812))))))

(assert (=> b!7041786 (= e!4233247 e!4233243)))

(declare-fun b!7041787 () Bool)

(declare-fun e!4233248 () (InoxSet Context!12978))

(assert (=> b!7041787 (= e!4233246 e!4233248)))

(assert (=> b!7041787 (= c!1310769 ((_ is Union!17493) (h!74331 (exprs!6989 lt!2524812))))))

(declare-fun b!7041788 () Bool)

(declare-fun e!4233245 () Bool)

(assert (=> b!7041788 (= e!4233245 (nullable!7204 (regOne!35498 (h!74331 (exprs!6989 lt!2524812)))))))

(declare-fun bm!639587 () Bool)

(assert (=> bm!639587 (= call!639593 call!639591)))

(declare-fun call!639592 () (InoxSet Context!12978))

(declare-fun bm!639588 () Bool)

(declare-fun call!639594 () List!68007)

(assert (=> bm!639588 (= call!639592 (derivationStepZipperDown!2157 (ite c!1310769 (regTwo!35499 (h!74331 (exprs!6989 lt!2524812))) (regOne!35498 (h!74331 (exprs!6989 lt!2524812)))) (ite c!1310769 lt!2524803 (Context!12979 call!639594)) (h!74332 s!7408)))))

(declare-fun bm!639589 () Bool)

(assert (=> bm!639589 (= call!639590 call!639594)))

(declare-fun b!7041789 () Bool)

(assert (=> b!7041789 (= c!1310772 e!4233245)))

(declare-fun res!2874794 () Bool)

(assert (=> b!7041789 (=> (not res!2874794) (not e!4233245))))

(assert (=> b!7041789 (= res!2874794 ((_ is Concat!26338) (h!74331 (exprs!6989 lt!2524812))))))

(assert (=> b!7041789 (= e!4233248 e!4233244)))

(declare-fun b!7041790 () Bool)

(assert (=> b!7041790 (= e!4233246 (store ((as const (Array Context!12978 Bool)) false) lt!2524803 true))))

(declare-fun b!7041791 () Bool)

(assert (=> b!7041791 (= e!4233247 call!639595)))

(declare-fun b!7041792 () Bool)

(assert (=> b!7041792 (= e!4233244 ((_ map or) call!639592 call!639593))))

(declare-fun b!7041793 () Bool)

(assert (=> b!7041793 (= e!4233243 call!639595)))

(declare-fun bm!639590 () Bool)

(assert (=> bm!639590 (= call!639594 ($colon$colon!2592 (exprs!6989 lt!2524803) (ite (or c!1310772 c!1310773) (regTwo!35498 (h!74331 (exprs!6989 lt!2524812))) (h!74331 (exprs!6989 lt!2524812)))))))

(declare-fun b!7041794 () Bool)

(assert (=> b!7041794 (= e!4233248 ((_ map or) call!639591 call!639592))))

(assert (= (and d!2198522 c!1310770) b!7041790))

(assert (= (and d!2198522 (not c!1310770)) b!7041787))

(assert (= (and b!7041787 c!1310769) b!7041794))

(assert (= (and b!7041787 (not c!1310769)) b!7041789))

(assert (= (and b!7041789 res!2874794) b!7041788))

(assert (= (and b!7041789 c!1310772) b!7041792))

(assert (= (and b!7041789 (not c!1310772)) b!7041785))

(assert (= (and b!7041785 c!1310773) b!7041791))

(assert (= (and b!7041785 (not c!1310773)) b!7041786))

(assert (= (and b!7041786 c!1310771) b!7041793))

(assert (= (and b!7041786 (not c!1310771)) b!7041784))

(assert (= (or b!7041791 b!7041793) bm!639589))

(assert (= (or b!7041791 b!7041793) bm!639585))

(assert (= (or b!7041792 bm!639585) bm!639587))

(assert (= (or b!7041792 bm!639589) bm!639590))

(assert (= (or b!7041794 bm!639587) bm!639586))

(assert (= (or b!7041794 b!7041792) bm!639588))

(declare-fun m!7753540 () Bool)

(assert (=> bm!639590 m!7753540))

(assert (=> b!7041788 m!7753504))

(declare-fun m!7753542 () Bool)

(assert (=> b!7041790 m!7753542))

(declare-fun m!7753544 () Bool)

(assert (=> bm!639586 m!7753544))

(declare-fun m!7753546 () Bool)

(assert (=> bm!639588 m!7753546))

(assert (=> b!7041482 d!2198522))

(declare-fun lt!2524928 () List!68007)

(declare-fun b!7041798 () Bool)

(declare-fun e!4233250 () Bool)

(assert (=> b!7041798 (= e!4233250 (or (not (= (exprs!6989 ct2!306) Nil!67883)) (= lt!2524928 (exprs!6989 lt!2524812))))))

(declare-fun b!7041796 () Bool)

(declare-fun e!4233249 () List!68007)

(assert (=> b!7041796 (= e!4233249 (Cons!67883 (h!74331 (exprs!6989 lt!2524812)) (++!15561 (t!381778 (exprs!6989 lt!2524812)) (exprs!6989 ct2!306))))))

(declare-fun d!2198524 () Bool)

(assert (=> d!2198524 e!4233250))

(declare-fun res!2874795 () Bool)

(assert (=> d!2198524 (=> (not res!2874795) (not e!4233250))))

(assert (=> d!2198524 (= res!2874795 (= (content!13585 lt!2524928) ((_ map or) (content!13585 (exprs!6989 lt!2524812)) (content!13585 (exprs!6989 ct2!306)))))))

(assert (=> d!2198524 (= lt!2524928 e!4233249)))

(declare-fun c!1310774 () Bool)

(assert (=> d!2198524 (= c!1310774 ((_ is Nil!67883) (exprs!6989 lt!2524812)))))

(assert (=> d!2198524 (= (++!15561 (exprs!6989 lt!2524812) (exprs!6989 ct2!306)) lt!2524928)))

(declare-fun b!7041797 () Bool)

(declare-fun res!2874796 () Bool)

(assert (=> b!7041797 (=> (not res!2874796) (not e!4233250))))

(assert (=> b!7041797 (= res!2874796 (= (size!41095 lt!2524928) (+ (size!41095 (exprs!6989 lt!2524812)) (size!41095 (exprs!6989 ct2!306)))))))

(declare-fun b!7041795 () Bool)

(assert (=> b!7041795 (= e!4233249 (exprs!6989 ct2!306))))

(assert (= (and d!2198524 c!1310774) b!7041795))

(assert (= (and d!2198524 (not c!1310774)) b!7041796))

(assert (= (and d!2198524 res!2874795) b!7041797))

(assert (= (and b!7041797 res!2874796) b!7041798))

(declare-fun m!7753548 () Bool)

(assert (=> b!7041796 m!7753548))

(declare-fun m!7753550 () Bool)

(assert (=> d!2198524 m!7753550))

(declare-fun m!7753552 () Bool)

(assert (=> d!2198524 m!7753552))

(assert (=> d!2198524 m!7753526))

(declare-fun m!7753554 () Bool)

(assert (=> b!7041797 m!7753554))

(declare-fun m!7753556 () Bool)

(assert (=> b!7041797 m!7753556))

(assert (=> b!7041797 m!7753532))

(assert (=> b!7041493 d!2198524))

(assert (=> b!7041493 d!2198516))

(declare-fun d!2198526 () Bool)

(declare-fun e!4233253 () Bool)

(assert (=> d!2198526 e!4233253))

(declare-fun res!2874799 () Bool)

(assert (=> d!2198526 (=> (not res!2874799) (not e!4233253))))

(declare-fun lt!2524931 () Context!12978)

(declare-fun dynLambda!27461 (Int Context!12978) Context!12978)

(assert (=> d!2198526 (= res!2874799 (= lt!2524817 (dynLambda!27461 lambda!416960 lt!2524931)))))

(declare-fun choose!53466 ((InoxSet Context!12978) Int Context!12978) Context!12978)

(assert (=> d!2198526 (= lt!2524931 (choose!53466 z1!570 lambda!416960 lt!2524817))))

(assert (=> d!2198526 (select (map!15802 z1!570 lambda!416960) lt!2524817)))

(assert (=> d!2198526 (= (mapPost2!334 z1!570 lambda!416960 lt!2524817) lt!2524931)))

(declare-fun b!7041802 () Bool)

(assert (=> b!7041802 (= e!4233253 (select z1!570 lt!2524931))))

(assert (= (and d!2198526 res!2874799) b!7041802))

(declare-fun b_lambda!267329 () Bool)

(assert (=> (not b_lambda!267329) (not d!2198526)))

(declare-fun m!7753558 () Bool)

(assert (=> d!2198526 m!7753558))

(declare-fun m!7753560 () Bool)

(assert (=> d!2198526 m!7753560))

(declare-fun m!7753562 () Bool)

(assert (=> d!2198526 m!7753562))

(declare-fun m!7753564 () Bool)

(assert (=> d!2198526 m!7753564))

(declare-fun m!7753566 () Bool)

(assert (=> b!7041802 m!7753566))

(assert (=> b!7041493 d!2198526))

(declare-fun d!2198528 () Bool)

(declare-fun choose!53467 ((InoxSet Context!12978) Int) (InoxSet Context!12978))

(assert (=> d!2198528 (= (flatMap!2440 lt!2524818 lambda!416962) (choose!53467 lt!2524818 lambda!416962))))

(declare-fun bs!1873366 () Bool)

(assert (= bs!1873366 d!2198528))

(declare-fun m!7753568 () Bool)

(assert (=> bs!1873366 m!7753568))

(assert (=> b!7041473 d!2198528))

(assert (=> b!7041473 d!2198516))

(declare-fun e!4233256 () (InoxSet Context!12978))

(declare-fun call!639596 () (InoxSet Context!12978))

(declare-fun b!7041803 () Bool)

(assert (=> b!7041803 (= e!4233256 ((_ map or) call!639596 (derivationStepZipperUp!2103 (Context!12979 (t!381778 (exprs!6989 lt!2524832))) (h!74332 s!7408))))))

(declare-fun b!7041804 () Bool)

(declare-fun e!4233255 () Bool)

(assert (=> b!7041804 (= e!4233255 (nullable!7204 (h!74331 (exprs!6989 lt!2524832))))))

(declare-fun b!7041805 () Bool)

(declare-fun e!4233254 () (InoxSet Context!12978))

(assert (=> b!7041805 (= e!4233256 e!4233254)))

(declare-fun c!1310775 () Bool)

(assert (=> b!7041805 (= c!1310775 ((_ is Cons!67883) (exprs!6989 lt!2524832)))))

(declare-fun b!7041806 () Bool)

(assert (=> b!7041806 (= e!4233254 call!639596)))

(declare-fun bm!639591 () Bool)

(assert (=> bm!639591 (= call!639596 (derivationStepZipperDown!2157 (h!74331 (exprs!6989 lt!2524832)) (Context!12979 (t!381778 (exprs!6989 lt!2524832))) (h!74332 s!7408)))))

(declare-fun b!7041807 () Bool)

(assert (=> b!7041807 (= e!4233254 ((as const (Array Context!12978 Bool)) false))))

(declare-fun d!2198530 () Bool)

(declare-fun c!1310776 () Bool)

(assert (=> d!2198530 (= c!1310776 e!4233255)))

(declare-fun res!2874800 () Bool)

(assert (=> d!2198530 (=> (not res!2874800) (not e!4233255))))

(assert (=> d!2198530 (= res!2874800 ((_ is Cons!67883) (exprs!6989 lt!2524832)))))

(assert (=> d!2198530 (= (derivationStepZipperUp!2103 lt!2524832 (h!74332 s!7408)) e!4233256)))

(assert (= (and d!2198530 res!2874800) b!7041804))

(assert (= (and d!2198530 c!1310776) b!7041803))

(assert (= (and d!2198530 (not c!1310776)) b!7041805))

(assert (= (and b!7041805 c!1310775) b!7041806))

(assert (= (and b!7041805 (not c!1310775)) b!7041807))

(assert (= (or b!7041803 b!7041806) bm!639591))

(declare-fun m!7753570 () Bool)

(assert (=> b!7041803 m!7753570))

(declare-fun m!7753572 () Bool)

(assert (=> b!7041804 m!7753572))

(declare-fun m!7753574 () Bool)

(assert (=> bm!639591 m!7753574))

(assert (=> b!7041473 d!2198530))

(declare-fun bs!1873367 () Bool)

(declare-fun d!2198532 () Bool)

(assert (= bs!1873367 (and d!2198532 b!7041473)))

(declare-fun lambda!417002 () Int)

(assert (=> bs!1873367 (= lambda!417002 lambda!416962)))

(assert (=> d!2198532 true))

(assert (=> d!2198532 (= (derivationStepZipper!2949 lt!2524818 (h!74332 s!7408)) (flatMap!2440 lt!2524818 lambda!417002))))

(declare-fun bs!1873368 () Bool)

(assert (= bs!1873368 d!2198532))

(declare-fun m!7753576 () Bool)

(assert (=> bs!1873368 m!7753576))

(assert (=> b!7041473 d!2198532))

(declare-fun d!2198534 () Bool)

(declare-fun dynLambda!27462 (Int Context!12978) (InoxSet Context!12978))

(assert (=> d!2198534 (= (flatMap!2440 lt!2524818 lambda!416962) (dynLambda!27462 lambda!416962 lt!2524832))))

(declare-fun lt!2524934 () Unit!161666)

(declare-fun choose!53468 ((InoxSet Context!12978) Context!12978 Int) Unit!161666)

(assert (=> d!2198534 (= lt!2524934 (choose!53468 lt!2524818 lt!2524832 lambda!416962))))

(assert (=> d!2198534 (= lt!2524818 (store ((as const (Array Context!12978 Bool)) false) lt!2524832 true))))

(assert (=> d!2198534 (= (lemmaFlatMapOnSingletonSet!1954 lt!2524818 lt!2524832 lambda!416962) lt!2524934)))

(declare-fun b_lambda!267331 () Bool)

(assert (=> (not b_lambda!267331) (not d!2198534)))

(declare-fun bs!1873369 () Bool)

(assert (= bs!1873369 d!2198534))

(assert (=> bs!1873369 m!7753042))

(declare-fun m!7753578 () Bool)

(assert (=> bs!1873369 m!7753578))

(declare-fun m!7753580 () Bool)

(assert (=> bs!1873369 m!7753580))

(assert (=> bs!1873369 m!7753024))

(assert (=> b!7041473 d!2198534))

(declare-fun bs!1873370 () Bool)

(declare-fun d!2198536 () Bool)

(assert (= bs!1873370 (and d!2198536 b!7041473)))

(declare-fun lambda!417003 () Int)

(assert (=> bs!1873370 (= lambda!417003 lambda!416962)))

(declare-fun bs!1873371 () Bool)

(assert (= bs!1873371 (and d!2198536 d!2198532)))

(assert (=> bs!1873371 (= lambda!417003 lambda!417002)))

(assert (=> d!2198536 true))

(assert (=> d!2198536 (= (derivationStepZipper!2949 lt!2524819 (h!74332 s!7408)) (flatMap!2440 lt!2524819 lambda!417003))))

(declare-fun bs!1873372 () Bool)

(assert (= bs!1873372 d!2198536))

(declare-fun m!7753582 () Bool)

(assert (=> bs!1873372 m!7753582))

(assert (=> b!7041481 d!2198536))

(declare-fun call!639597 () (InoxSet Context!12978))

(declare-fun e!4233259 () (InoxSet Context!12978))

(declare-fun b!7041810 () Bool)

(assert (=> b!7041810 (= e!4233259 ((_ map or) call!639597 (derivationStepZipperUp!2103 (Context!12979 (t!381778 (exprs!6989 lt!2524812))) (h!74332 s!7408))))))

(declare-fun b!7041811 () Bool)

(declare-fun e!4233258 () Bool)

(assert (=> b!7041811 (= e!4233258 (nullable!7204 (h!74331 (exprs!6989 lt!2524812))))))

(declare-fun b!7041812 () Bool)

(declare-fun e!4233257 () (InoxSet Context!12978))

(assert (=> b!7041812 (= e!4233259 e!4233257)))

(declare-fun c!1310779 () Bool)

(assert (=> b!7041812 (= c!1310779 ((_ is Cons!67883) (exprs!6989 lt!2524812)))))

(declare-fun b!7041813 () Bool)

(assert (=> b!7041813 (= e!4233257 call!639597)))

(declare-fun bm!639592 () Bool)

(assert (=> bm!639592 (= call!639597 (derivationStepZipperDown!2157 (h!74331 (exprs!6989 lt!2524812)) (Context!12979 (t!381778 (exprs!6989 lt!2524812))) (h!74332 s!7408)))))

(declare-fun b!7041814 () Bool)

(assert (=> b!7041814 (= e!4233257 ((as const (Array Context!12978 Bool)) false))))

(declare-fun d!2198538 () Bool)

(declare-fun c!1310780 () Bool)

(assert (=> d!2198538 (= c!1310780 e!4233258)))

(declare-fun res!2874801 () Bool)

(assert (=> d!2198538 (=> (not res!2874801) (not e!4233258))))

(assert (=> d!2198538 (= res!2874801 ((_ is Cons!67883) (exprs!6989 lt!2524812)))))

(assert (=> d!2198538 (= (derivationStepZipperUp!2103 lt!2524812 (h!74332 s!7408)) e!4233259)))

(assert (= (and d!2198538 res!2874801) b!7041811))

(assert (= (and d!2198538 c!1310780) b!7041810))

(assert (= (and d!2198538 (not c!1310780)) b!7041812))

(assert (= (and b!7041812 c!1310779) b!7041813))

(assert (= (and b!7041812 (not c!1310779)) b!7041814))

(assert (= (or b!7041810 b!7041813) bm!639592))

(declare-fun m!7753584 () Bool)

(assert (=> b!7041810 m!7753584))

(assert (=> b!7041811 m!7753036))

(declare-fun m!7753586 () Bool)

(assert (=> bm!639592 m!7753586))

(assert (=> b!7041481 d!2198538))

(declare-fun d!2198540 () Bool)

(assert (=> d!2198540 (= (flatMap!2440 lt!2524819 lambda!416962) (choose!53467 lt!2524819 lambda!416962))))

(declare-fun bs!1873373 () Bool)

(assert (= bs!1873373 d!2198540))

(declare-fun m!7753588 () Bool)

(assert (=> bs!1873373 m!7753588))

(assert (=> b!7041481 d!2198540))

(declare-fun d!2198542 () Bool)

(assert (=> d!2198542 (= (flatMap!2440 lt!2524819 lambda!416962) (dynLambda!27462 lambda!416962 lt!2524812))))

(declare-fun lt!2524935 () Unit!161666)

(assert (=> d!2198542 (= lt!2524935 (choose!53468 lt!2524819 lt!2524812 lambda!416962))))

(assert (=> d!2198542 (= lt!2524819 (store ((as const (Array Context!12978 Bool)) false) lt!2524812 true))))

(assert (=> d!2198542 (= (lemmaFlatMapOnSingletonSet!1954 lt!2524819 lt!2524812 lambda!416962) lt!2524935)))

(declare-fun b_lambda!267333 () Bool)

(assert (=> (not b_lambda!267333) (not d!2198542)))

(declare-fun bs!1873374 () Bool)

(assert (= bs!1873374 d!2198542))

(assert (=> bs!1873374 m!7753078))

(declare-fun m!7753590 () Bool)

(assert (=> bs!1873374 m!7753590))

(declare-fun m!7753592 () Bool)

(assert (=> bs!1873374 m!7753592))

(assert (=> bs!1873374 m!7753082))

(assert (=> b!7041481 d!2198542))

(declare-fun b!7041823 () Bool)

(declare-fun e!4233264 () List!68008)

(assert (=> b!7041823 (= e!4233264 (_2!37365 lt!2524829))))

(declare-fun b!7041824 () Bool)

(assert (=> b!7041824 (= e!4233264 (Cons!67884 (h!74332 (_1!37365 lt!2524829)) (++!15562 (t!381779 (_1!37365 lt!2524829)) (_2!37365 lt!2524829))))))

(declare-fun b!7041826 () Bool)

(declare-fun e!4233265 () Bool)

(declare-fun lt!2524938 () List!68008)

(assert (=> b!7041826 (= e!4233265 (or (not (= (_2!37365 lt!2524829) Nil!67884)) (= lt!2524938 (_1!37365 lt!2524829))))))

(declare-fun d!2198544 () Bool)

(assert (=> d!2198544 e!4233265))

(declare-fun res!2874806 () Bool)

(assert (=> d!2198544 (=> (not res!2874806) (not e!4233265))))

(declare-fun content!13586 (List!68008) (InoxSet C!35256))

(assert (=> d!2198544 (= res!2874806 (= (content!13586 lt!2524938) ((_ map or) (content!13586 (_1!37365 lt!2524829)) (content!13586 (_2!37365 lt!2524829)))))))

(assert (=> d!2198544 (= lt!2524938 e!4233264)))

(declare-fun c!1310783 () Bool)

(assert (=> d!2198544 (= c!1310783 ((_ is Nil!67884) (_1!37365 lt!2524829)))))

(assert (=> d!2198544 (= (++!15562 (_1!37365 lt!2524829) (_2!37365 lt!2524829)) lt!2524938)))

(declare-fun b!7041825 () Bool)

(declare-fun res!2874807 () Bool)

(assert (=> b!7041825 (=> (not res!2874807) (not e!4233265))))

(declare-fun size!41096 (List!68008) Int)

(assert (=> b!7041825 (= res!2874807 (= (size!41096 lt!2524938) (+ (size!41096 (_1!37365 lt!2524829)) (size!41096 (_2!37365 lt!2524829)))))))

(assert (= (and d!2198544 c!1310783) b!7041823))

(assert (= (and d!2198544 (not c!1310783)) b!7041824))

(assert (= (and d!2198544 res!2874806) b!7041825))

(assert (= (and b!7041825 res!2874807) b!7041826))

(declare-fun m!7753594 () Bool)

(assert (=> b!7041824 m!7753594))

(declare-fun m!7753596 () Bool)

(assert (=> d!2198544 m!7753596))

(declare-fun m!7753598 () Bool)

(assert (=> d!2198544 m!7753598))

(declare-fun m!7753600 () Bool)

(assert (=> d!2198544 m!7753600))

(declare-fun m!7753602 () Bool)

(assert (=> b!7041825 m!7753602))

(declare-fun m!7753604 () Bool)

(assert (=> b!7041825 m!7753604))

(declare-fun m!7753606 () Bool)

(assert (=> b!7041825 m!7753606))

(assert (=> b!7041492 d!2198544))

(declare-fun d!2198546 () Bool)

(declare-fun nullableFct!2745 (Regex!17493) Bool)

(assert (=> d!2198546 (= (nullable!7204 (h!74331 (exprs!6989 lt!2524812))) (nullableFct!2745 (h!74331 (exprs!6989 lt!2524812))))))

(declare-fun bs!1873375 () Bool)

(assert (= bs!1873375 d!2198546))

(declare-fun m!7753608 () Bool)

(assert (=> bs!1873375 m!7753608))

(assert (=> b!7041479 d!2198546))

(declare-fun d!2198548 () Bool)

(assert (=> d!2198548 (= (tail!13601 (exprs!6989 lt!2524812)) (t!381778 (exprs!6989 lt!2524812)))))

(assert (=> b!7041479 d!2198548))

(declare-fun d!2198550 () Bool)

(declare-fun c!1310784 () Bool)

(assert (=> d!2198550 (= c!1310784 (isEmpty!39613 (t!381779 s!7408)))))

(declare-fun e!4233266 () Bool)

(assert (=> d!2198550 (= (matchZipper!3033 lt!2524827 (t!381779 s!7408)) e!4233266)))

(declare-fun b!7041827 () Bool)

(assert (=> b!7041827 (= e!4233266 (nullableZipper!2599 lt!2524827))))

(declare-fun b!7041828 () Bool)

(assert (=> b!7041828 (= e!4233266 (matchZipper!3033 (derivationStepZipper!2949 lt!2524827 (head!14290 (t!381779 s!7408))) (tail!13603 (t!381779 s!7408))))))

(assert (= (and d!2198550 c!1310784) b!7041827))

(assert (= (and d!2198550 (not c!1310784)) b!7041828))

(assert (=> d!2198550 m!7753368))

(declare-fun m!7753610 () Bool)

(assert (=> b!7041827 m!7753610))

(assert (=> b!7041828 m!7753372))

(assert (=> b!7041828 m!7753372))

(declare-fun m!7753612 () Bool)

(assert (=> b!7041828 m!7753612))

(assert (=> b!7041828 m!7753376))

(assert (=> b!7041828 m!7753612))

(assert (=> b!7041828 m!7753376))

(declare-fun m!7753614 () Bool)

(assert (=> b!7041828 m!7753614))

(assert (=> b!7041490 d!2198550))

(assert (=> b!7041490 d!2198476))

(declare-fun d!2198552 () Bool)

(declare-fun c!1310785 () Bool)

(assert (=> d!2198552 (= c!1310785 (isEmpty!39613 (t!381779 s!7408)))))

(declare-fun e!4233267 () Bool)

(assert (=> d!2198552 (= (matchZipper!3033 lt!2524835 (t!381779 s!7408)) e!4233267)))

(declare-fun b!7041829 () Bool)

(assert (=> b!7041829 (= e!4233267 (nullableZipper!2599 lt!2524835))))

(declare-fun b!7041830 () Bool)

(assert (=> b!7041830 (= e!4233267 (matchZipper!3033 (derivationStepZipper!2949 lt!2524835 (head!14290 (t!381779 s!7408))) (tail!13603 (t!381779 s!7408))))))

(assert (= (and d!2198552 c!1310785) b!7041829))

(assert (= (and d!2198552 (not c!1310785)) b!7041830))

(assert (=> d!2198552 m!7753368))

(declare-fun m!7753616 () Bool)

(assert (=> b!7041829 m!7753616))

(assert (=> b!7041830 m!7753372))

(assert (=> b!7041830 m!7753372))

(declare-fun m!7753618 () Bool)

(assert (=> b!7041830 m!7753618))

(assert (=> b!7041830 m!7753376))

(assert (=> b!7041830 m!7753618))

(assert (=> b!7041830 m!7753376))

(declare-fun m!7753620 () Bool)

(assert (=> b!7041830 m!7753620))

(assert (=> b!7041490 d!2198552))

(declare-fun e!4233270 () Bool)

(declare-fun d!2198554 () Bool)

(assert (=> d!2198554 (= (matchZipper!3033 ((_ map or) lt!2524827 lt!2524806) (t!381779 s!7408)) e!4233270)))

(declare-fun res!2874810 () Bool)

(assert (=> d!2198554 (=> res!2874810 e!4233270)))

(assert (=> d!2198554 (= res!2874810 (matchZipper!3033 lt!2524827 (t!381779 s!7408)))))

(declare-fun lt!2524941 () Unit!161666)

(declare-fun choose!53469 ((InoxSet Context!12978) (InoxSet Context!12978) List!68008) Unit!161666)

(assert (=> d!2198554 (= lt!2524941 (choose!53469 lt!2524827 lt!2524806 (t!381779 s!7408)))))

(assert (=> d!2198554 (= (lemmaZipperConcatMatchesSameAsBothZippers!1566 lt!2524827 lt!2524806 (t!381779 s!7408)) lt!2524941)))

(declare-fun b!7041833 () Bool)

(assert (=> b!7041833 (= e!4233270 (matchZipper!3033 lt!2524806 (t!381779 s!7408)))))

(assert (= (and d!2198554 (not res!2874810)) b!7041833))

(declare-fun m!7753622 () Bool)

(assert (=> d!2198554 m!7753622))

(assert (=> d!2198554 m!7753034))

(declare-fun m!7753624 () Bool)

(assert (=> d!2198554 m!7753624))

(assert (=> b!7041833 m!7753006))

(assert (=> b!7041490 d!2198554))

(declare-fun d!2198556 () Bool)

(declare-fun c!1310786 () Bool)

(assert (=> d!2198556 (= c!1310786 (isEmpty!39613 (t!381779 s!7408)))))

(declare-fun e!4233271 () Bool)

(assert (=> d!2198556 (= (matchZipper!3033 lt!2524809 (t!381779 s!7408)) e!4233271)))

(declare-fun b!7041834 () Bool)

(assert (=> b!7041834 (= e!4233271 (nullableZipper!2599 lt!2524809))))

(declare-fun b!7041835 () Bool)

(assert (=> b!7041835 (= e!4233271 (matchZipper!3033 (derivationStepZipper!2949 lt!2524809 (head!14290 (t!381779 s!7408))) (tail!13603 (t!381779 s!7408))))))

(assert (= (and d!2198556 c!1310786) b!7041834))

(assert (= (and d!2198556 (not c!1310786)) b!7041835))

(assert (=> d!2198556 m!7753368))

(declare-fun m!7753626 () Bool)

(assert (=> b!7041834 m!7753626))

(assert (=> b!7041835 m!7753372))

(assert (=> b!7041835 m!7753372))

(declare-fun m!7753628 () Bool)

(assert (=> b!7041835 m!7753628))

(assert (=> b!7041835 m!7753376))

(assert (=> b!7041835 m!7753628))

(assert (=> b!7041835 m!7753376))

(declare-fun m!7753630 () Bool)

(assert (=> b!7041835 m!7753630))

(assert (=> b!7041490 d!2198556))

(declare-fun d!2198558 () Bool)

(declare-fun c!1310787 () Bool)

(assert (=> d!2198558 (= c!1310787 (isEmpty!39613 s!7408))))

(declare-fun e!4233272 () Bool)

(assert (=> d!2198558 (= (matchZipper!3033 lt!2524840 s!7408) e!4233272)))

(declare-fun b!7041836 () Bool)

(assert (=> b!7041836 (= e!4233272 (nullableZipper!2599 lt!2524840))))

(declare-fun b!7041837 () Bool)

(assert (=> b!7041837 (= e!4233272 (matchZipper!3033 (derivationStepZipper!2949 lt!2524840 (head!14290 s!7408)) (tail!13603 s!7408)))))

(assert (= (and d!2198558 c!1310787) b!7041836))

(assert (= (and d!2198558 (not c!1310787)) b!7041837))

(assert (=> d!2198558 m!7753432))

(declare-fun m!7753632 () Bool)

(assert (=> b!7041836 m!7753632))

(assert (=> b!7041837 m!7753436))

(assert (=> b!7041837 m!7753436))

(declare-fun m!7753634 () Bool)

(assert (=> b!7041837 m!7753634))

(assert (=> b!7041837 m!7753440))

(assert (=> b!7041837 m!7753634))

(assert (=> b!7041837 m!7753440))

(declare-fun m!7753636 () Bool)

(assert (=> b!7041837 m!7753636))

(assert (=> start!681238 d!2198558))

(declare-fun bs!1873376 () Bool)

(declare-fun d!2198560 () Bool)

(assert (= bs!1873376 (and d!2198560 b!7041493)))

(declare-fun lambda!417004 () Int)

(assert (=> bs!1873376 (= lambda!417004 lambda!416960)))

(declare-fun bs!1873377 () Bool)

(assert (= bs!1873377 (and d!2198560 d!2198498)))

(assert (=> bs!1873377 (= lambda!417004 lambda!416996)))

(assert (=> d!2198560 true))

(assert (=> d!2198560 (= (appendTo!614 z1!570 ct2!306) (map!15802 z1!570 lambda!417004))))

(declare-fun bs!1873378 () Bool)

(assert (= bs!1873378 d!2198560))

(declare-fun m!7753638 () Bool)

(assert (=> bs!1873378 m!7753638))

(assert (=> start!681238 d!2198560))

(declare-fun bs!1873379 () Bool)

(declare-fun d!2198562 () Bool)

(assert (= bs!1873379 (and d!2198562 b!7041493)))

(declare-fun lambda!417007 () Int)

(assert (=> bs!1873379 (= lambda!417007 lambda!416961)))

(declare-fun bs!1873380 () Bool)

(assert (= bs!1873380 (and d!2198562 d!2198506)))

(assert (=> bs!1873380 (= lambda!417007 lambda!416999)))

(assert (=> d!2198562 (= (inv!86591 ct2!306) (forall!16417 (exprs!6989 ct2!306) lambda!417007))))

(declare-fun bs!1873381 () Bool)

(assert (= bs!1873381 d!2198562))

(declare-fun m!7753640 () Bool)

(assert (=> bs!1873381 m!7753640))

(assert (=> start!681238 d!2198562))

(declare-fun bs!1873382 () Bool)

(declare-fun d!2198564 () Bool)

(assert (= bs!1873382 (and d!2198564 b!7041493)))

(declare-fun lambda!417008 () Int)

(assert (=> bs!1873382 (= lambda!417008 lambda!416961)))

(declare-fun bs!1873383 () Bool)

(assert (= bs!1873383 (and d!2198564 d!2198506)))

(assert (=> bs!1873383 (= lambda!417008 lambda!416999)))

(declare-fun bs!1873384 () Bool)

(assert (= bs!1873384 (and d!2198564 d!2198562)))

(assert (=> bs!1873384 (= lambda!417008 lambda!417007)))

(assert (=> d!2198564 (= (inv!86591 setElem!49360) (forall!16417 (exprs!6989 setElem!49360) lambda!417008))))

(declare-fun bs!1873385 () Bool)

(assert (= bs!1873385 d!2198564))

(declare-fun m!7753642 () Bool)

(assert (=> bs!1873385 m!7753642))

(assert (=> setNonEmpty!49360 d!2198564))

(assert (=> b!7041480 d!2198474))

(declare-fun b!7041842 () Bool)

(declare-fun e!4233275 () Bool)

(declare-fun tp!1937481 () Bool)

(declare-fun tp!1937482 () Bool)

(assert (=> b!7041842 (= e!4233275 (and tp!1937481 tp!1937482))))

(assert (=> b!7041483 (= tp!1937458 e!4233275)))

(assert (= (and b!7041483 ((_ is Cons!67883) (exprs!6989 ct2!306))) b!7041842))

(declare-fun b!7041847 () Bool)

(declare-fun e!4233278 () Bool)

(declare-fun tp!1937485 () Bool)

(assert (=> b!7041847 (= e!4233278 (and tp_is_empty!44211 tp!1937485))))

(assert (=> b!7041487 (= tp!1937457 e!4233278)))

(assert (= (and b!7041487 ((_ is Cons!67884) (t!381779 s!7408))) b!7041847))

(declare-fun condSetEmpty!49366 () Bool)

(assert (=> setNonEmpty!49360 (= condSetEmpty!49366 (= setRest!49360 ((as const (Array Context!12978 Bool)) false)))))

(declare-fun setRes!49366 () Bool)

(assert (=> setNonEmpty!49360 (= tp!1937459 setRes!49366)))

(declare-fun setIsEmpty!49366 () Bool)

(assert (=> setIsEmpty!49366 setRes!49366))

(declare-fun e!4233281 () Bool)

(declare-fun setNonEmpty!49366 () Bool)

(declare-fun tp!1937491 () Bool)

(declare-fun setElem!49366 () Context!12978)

(assert (=> setNonEmpty!49366 (= setRes!49366 (and tp!1937491 (inv!86591 setElem!49366) e!4233281))))

(declare-fun setRest!49366 () (InoxSet Context!12978))

(assert (=> setNonEmpty!49366 (= setRest!49360 ((_ map or) (store ((as const (Array Context!12978 Bool)) false) setElem!49366 true) setRest!49366))))

(declare-fun b!7041852 () Bool)

(declare-fun tp!1937490 () Bool)

(assert (=> b!7041852 (= e!4233281 tp!1937490)))

(assert (= (and setNonEmpty!49360 condSetEmpty!49366) setIsEmpty!49366))

(assert (= (and setNonEmpty!49360 (not condSetEmpty!49366)) setNonEmpty!49366))

(assert (= setNonEmpty!49366 b!7041852))

(declare-fun m!7753644 () Bool)

(assert (=> setNonEmpty!49366 m!7753644))

(declare-fun b!7041853 () Bool)

(declare-fun e!4233282 () Bool)

(declare-fun tp!1937492 () Bool)

(declare-fun tp!1937493 () Bool)

(assert (=> b!7041853 (= e!4233282 (and tp!1937492 tp!1937493))))

(assert (=> b!7041485 (= tp!1937456 e!4233282)))

(assert (= (and b!7041485 ((_ is Cons!67883) (exprs!6989 setElem!49360))) b!7041853))

(declare-fun b_lambda!267335 () Bool)

(assert (= b_lambda!267333 (or b!7041473 b_lambda!267335)))

(declare-fun bs!1873386 () Bool)

(declare-fun d!2198566 () Bool)

(assert (= bs!1873386 (and d!2198566 b!7041473)))

(assert (=> bs!1873386 (= (dynLambda!27462 lambda!416962 lt!2524812) (derivationStepZipperUp!2103 lt!2524812 (h!74332 s!7408)))))

(assert (=> bs!1873386 m!7753080))

(assert (=> d!2198542 d!2198566))

(declare-fun b_lambda!267337 () Bool)

(assert (= b_lambda!267329 (or b!7041493 b_lambda!267337)))

(declare-fun bs!1873387 () Bool)

(declare-fun d!2198568 () Bool)

(assert (= bs!1873387 (and d!2198568 b!7041493)))

(declare-fun lt!2524942 () Unit!161666)

(assert (=> bs!1873387 (= lt!2524942 (lemmaConcatPreservesForall!814 (exprs!6989 lt!2524931) (exprs!6989 ct2!306) lambda!416961))))

(assert (=> bs!1873387 (= (dynLambda!27461 lambda!416960 lt!2524931) (Context!12979 (++!15561 (exprs!6989 lt!2524931) (exprs!6989 ct2!306))))))

(declare-fun m!7753646 () Bool)

(assert (=> bs!1873387 m!7753646))

(declare-fun m!7753648 () Bool)

(assert (=> bs!1873387 m!7753648))

(assert (=> d!2198526 d!2198568))

(declare-fun b_lambda!267339 () Bool)

(assert (= b_lambda!267331 (or b!7041473 b_lambda!267339)))

(declare-fun bs!1873388 () Bool)

(declare-fun d!2198570 () Bool)

(assert (= bs!1873388 (and d!2198570 b!7041473)))

(assert (=> bs!1873388 (= (dynLambda!27462 lambda!416962 lt!2524832) (derivationStepZipperUp!2103 lt!2524832 (h!74332 s!7408)))))

(assert (=> bs!1873388 m!7753044))

(assert (=> d!2198534 d!2198570))

(declare-fun b_lambda!267341 () Bool)

(assert (= b_lambda!267327 (or b!7041488 b_lambda!267341)))

(declare-fun bs!1873389 () Bool)

(declare-fun d!2198572 () Bool)

(assert (= bs!1873389 (and d!2198572 b!7041488)))

(assert (=> bs!1873389 (= (dynLambda!27460 lambda!416959 lt!2524903) (matchZipper!3033 (store ((as const (Array Context!12978 Bool)) false) lt!2524903 true) s!7408))))

(declare-fun m!7753650 () Bool)

(assert (=> bs!1873389 m!7753650))

(assert (=> bs!1873389 m!7753650))

(declare-fun m!7753652 () Bool)

(assert (=> bs!1873389 m!7753652))

(assert (=> d!2198494 d!2198572))

(check-sat (not bm!639590) (not bm!639592) (not b!7041829) (not bm!639581) (not d!2198502) (not bs!1873388) (not d!2198540) (not b!7041715) (not b!7041716) (not d!2198498) (not d!2198492) (not bs!1873386) (not d!2198490) tp_is_empty!44211 (not b!7041804) (not d!2198560) (not d!2198534) (not b!7041830) (not b!7041695) (not d!2198494) (not b_lambda!267341) (not b!7041779) (not b!7041684) (not d!2198550) (not b!7041683) (not d!2198552) (not d!2198546) (not d!2198556) (not b!7041696) (not b!7041780) (not b!7041837) (not d!2198512) (not bm!639584) (not b!7041675) (not bm!639586) (not b_lambda!267335) (not b!7041750) (not b!7041834) (not bm!639591) (not d!2198518) (not d!2198476) (not b!7041722) (not bm!639579) (not b!7041689) (not b!7041842) (not b!7041766) (not d!2198526) (not d!2198564) (not d!2198506) (not b!7041853) (not setNonEmpty!49366) (not b!7041827) (not b!7041788) (not d!2198528) (not b!7041810) (not d!2198488) (not d!2198486) (not b_lambda!267339) (not bs!1873387) (not b!7041828) (not b!7041797) (not d!2198532) (not b!7041676) (not b!7041825) (not d!2198516) (not b!7041693) (not d!2198554) (not d!2198558) (not d!2198562) (not b!7041694) (not d!2198500) (not bs!1873389) (not b!7041803) (not b!7041824) (not d!2198496) (not b!7041717) (not d!2198536) (not bm!639588) (not d!2198474) (not b!7041835) (not b!7041847) (not b_lambda!267337) (not bm!639577) (not b!7041720) (not d!2198544) (not b!7041767) (not d!2198542) (not b!7041796) (not b!7041836) (not b!7041852) (not d!2198524) (not b!7041723) (not b!7041811) (not d!2198508) (not b!7041833))
(check-sat)
