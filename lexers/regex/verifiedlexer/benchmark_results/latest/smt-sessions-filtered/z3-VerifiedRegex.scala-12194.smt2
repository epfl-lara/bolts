; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!686656 () Bool)

(assert start!686656)

(declare-fun b!7069842 () Bool)

(assert (=> b!7069842 true))

(declare-fun b!7069836 () Bool)

(assert (=> b!7069836 true))

(declare-fun b!7069843 () Bool)

(assert (=> b!7069843 true))

(declare-fun b!7069824 () Bool)

(declare-fun e!4250370 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35540 0))(
  ( (C!35541 (val!27472 Int)) )
))
(declare-datatypes ((Regex!17635 0))(
  ( (ElementMatch!17635 (c!1318636 C!35540)) (Concat!26480 (regOne!35782 Regex!17635) (regTwo!35782 Regex!17635)) (EmptyExpr!17635) (Star!17635 (reg!17964 Regex!17635)) (EmptyLang!17635) (Union!17635 (regOne!35783 Regex!17635) (regTwo!35783 Regex!17635)) )
))
(declare-datatypes ((List!68431 0))(
  ( (Nil!68307) (Cons!68307 (h!74755 Regex!17635) (t!382214 List!68431)) )
))
(declare-datatypes ((Context!13262 0))(
  ( (Context!13263 (exprs!7131 List!68431)) )
))
(declare-fun lt!2544145 () (InoxSet Context!13262))

(declare-datatypes ((List!68432 0))(
  ( (Nil!68308) (Cons!68308 (h!74756 C!35540) (t!382215 List!68432)) )
))
(declare-datatypes ((tuple2!68244 0))(
  ( (tuple2!68245 (_1!37425 List!68432) (_2!37425 List!68432)) )
))
(declare-fun lt!2544117 () tuple2!68244)

(declare-fun matchZipper!3175 ((InoxSet Context!13262) List!68432) Bool)

(assert (=> b!7069824 (= e!4250370 (matchZipper!3175 lt!2544145 (_1!37425 lt!2544117)))))

(declare-fun b!7069825 () Bool)

(declare-fun e!4250369 () Bool)

(declare-fun tp!1942088 () Bool)

(assert (=> b!7069825 (= e!4250369 tp!1942088)))

(declare-fun b!7069826 () Bool)

(declare-fun e!4250375 () Bool)

(declare-fun lt!2544114 () (InoxSet Context!13262))

(declare-fun s!7408 () List!68432)

(assert (=> b!7069826 (= e!4250375 (not (matchZipper!3175 lt!2544114 (t!382215 s!7408))))))

(declare-datatypes ((Unit!161980 0))(
  ( (Unit!161981) )
))
(declare-fun lt!2544140 () Unit!161980)

(declare-fun lambda!424995 () Int)

(declare-fun lt!2544153 () List!68431)

(declare-fun ct2!306 () Context!13262)

(declare-fun lemmaConcatPreservesForall!946 (List!68431 List!68431 Int) Unit!161980)

(assert (=> b!7069826 (= lt!2544140 (lemmaConcatPreservesForall!946 lt!2544153 (exprs!7131 ct2!306) lambda!424995))))

(declare-fun setIsEmpty!50210 () Bool)

(declare-fun setRes!50210 () Bool)

(assert (=> setIsEmpty!50210 setRes!50210))

(declare-fun b!7069827 () Bool)

(declare-fun e!4250382 () Bool)

(declare-fun e!4250374 () Bool)

(assert (=> b!7069827 (= e!4250382 e!4250374)))

(declare-fun res!2887126 () Bool)

(assert (=> b!7069827 (=> res!2887126 e!4250374)))

(assert (=> b!7069827 (= res!2887126 (matchZipper!3175 lt!2544114 (t!382215 s!7408)))))

(declare-fun lt!2544149 () Unit!161980)

(assert (=> b!7069827 (= lt!2544149 (lemmaConcatPreservesForall!946 lt!2544153 (exprs!7131 ct2!306) lambda!424995))))

(declare-fun b!7069828 () Bool)

(declare-fun res!2887110 () Bool)

(declare-fun e!4250378 () Bool)

(assert (=> b!7069828 (=> res!2887110 e!4250378)))

(declare-fun ++!15753 (List!68432 List!68432) List!68432)

(assert (=> b!7069828 (= res!2887110 (not (= (++!15753 (_1!37425 lt!2544117) (_2!37425 lt!2544117)) (t!382215 s!7408))))))

(declare-fun tp!1942089 () Bool)

(declare-fun setNonEmpty!50210 () Bool)

(declare-fun setElem!50210 () Context!13262)

(declare-fun e!4250365 () Bool)

(declare-fun inv!86946 (Context!13262) Bool)

(assert (=> setNonEmpty!50210 (= setRes!50210 (and tp!1942089 (inv!86946 setElem!50210) e!4250365))))

(declare-fun z1!570 () (InoxSet Context!13262))

(declare-fun setRest!50210 () (InoxSet Context!13262))

(assert (=> setNonEmpty!50210 (= z1!570 ((_ map or) (store ((as const (Array Context!13262 Bool)) false) setElem!50210 true) setRest!50210))))

(declare-fun res!2887112 () Bool)

(declare-fun e!4250366 () Bool)

(assert (=> start!686656 (=> (not res!2887112) (not e!4250366))))

(declare-fun lt!2544124 () (InoxSet Context!13262))

(assert (=> start!686656 (= res!2887112 (matchZipper!3175 lt!2544124 s!7408))))

(declare-fun appendTo!756 ((InoxSet Context!13262) Context!13262) (InoxSet Context!13262))

(assert (=> start!686656 (= lt!2544124 (appendTo!756 z1!570 ct2!306))))

(assert (=> start!686656 e!4250366))

(declare-fun condSetEmpty!50210 () Bool)

(assert (=> start!686656 (= condSetEmpty!50210 (= z1!570 ((as const (Array Context!13262 Bool)) false)))))

(assert (=> start!686656 setRes!50210))

(assert (=> start!686656 (and (inv!86946 ct2!306) e!4250369)))

(declare-fun e!4250371 () Bool)

(assert (=> start!686656 e!4250371))

(declare-fun b!7069829 () Bool)

(declare-fun e!4250367 () Bool)

(assert (=> b!7069829 (= e!4250367 e!4250382)))

(declare-fun res!2887122 () Bool)

(assert (=> b!7069829 (=> res!2887122 e!4250382)))

(assert (=> b!7069829 (= res!2887122 e!4250375)))

(declare-fun res!2887119 () Bool)

(assert (=> b!7069829 (=> (not res!2887119) (not e!4250375))))

(declare-fun lt!2544146 () Bool)

(declare-fun lt!2544143 () Bool)

(assert (=> b!7069829 (= res!2887119 (not (= lt!2544146 lt!2544143)))))

(declare-fun lt!2544132 () (InoxSet Context!13262))

(assert (=> b!7069829 (= lt!2544146 (matchZipper!3175 lt!2544132 (t!382215 s!7408)))))

(declare-fun lt!2544120 () Unit!161980)

(assert (=> b!7069829 (= lt!2544120 (lemmaConcatPreservesForall!946 lt!2544153 (exprs!7131 ct2!306) lambda!424995))))

(declare-fun lt!2544142 () (InoxSet Context!13262))

(declare-fun e!4250381 () Bool)

(assert (=> b!7069829 (= (matchZipper!3175 lt!2544142 (t!382215 s!7408)) e!4250381)))

(declare-fun res!2887116 () Bool)

(assert (=> b!7069829 (=> res!2887116 e!4250381)))

(assert (=> b!7069829 (= res!2887116 lt!2544143)))

(declare-fun lt!2544134 () (InoxSet Context!13262))

(assert (=> b!7069829 (= lt!2544143 (matchZipper!3175 lt!2544134 (t!382215 s!7408)))))

(declare-fun lt!2544137 () Unit!161980)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1648 ((InoxSet Context!13262) (InoxSet Context!13262) List!68432) Unit!161980)

(assert (=> b!7069829 (= lt!2544137 (lemmaZipperConcatMatchesSameAsBothZippers!1648 lt!2544134 lt!2544114 (t!382215 s!7408)))))

(declare-fun lt!2544115 () Unit!161980)

(assert (=> b!7069829 (= lt!2544115 (lemmaConcatPreservesForall!946 lt!2544153 (exprs!7131 ct2!306) lambda!424995))))

(declare-fun lt!2544129 () Unit!161980)

(assert (=> b!7069829 (= lt!2544129 (lemmaConcatPreservesForall!946 lt!2544153 (exprs!7131 ct2!306) lambda!424995))))

(declare-fun b!7069830 () Bool)

(declare-fun res!2887109 () Bool)

(assert (=> b!7069830 (=> res!2887109 e!4250382)))

(assert (=> b!7069830 (= res!2887109 (not lt!2544146))))

(declare-fun b!7069831 () Bool)

(declare-fun e!4250380 () Bool)

(declare-fun e!4250368 () Bool)

(assert (=> b!7069831 (= e!4250380 e!4250368)))

(declare-fun res!2887128 () Bool)

(assert (=> b!7069831 (=> res!2887128 e!4250368)))

(declare-fun lt!2544152 () Context!13262)

(declare-fun nullable!7318 (Regex!17635) Bool)

(assert (=> b!7069831 (= res!2887128 (not (nullable!7318 (h!74755 (exprs!7131 lt!2544152)))))))

(declare-fun lt!2544121 () Context!13262)

(assert (=> b!7069831 (= lt!2544121 (Context!13263 lt!2544153))))

(declare-fun tail!13812 (List!68431) List!68431)

(assert (=> b!7069831 (= lt!2544153 (tail!13812 (exprs!7131 lt!2544152)))))

(declare-fun b!7069832 () Bool)

(declare-fun e!4250376 () Bool)

(assert (=> b!7069832 (= e!4250376 e!4250378)))

(declare-fun res!2887123 () Bool)

(assert (=> b!7069832 (=> res!2887123 e!4250378)))

(declare-fun lt!2544135 () (InoxSet Context!13262))

(assert (=> b!7069832 (= res!2887123 (not (matchZipper!3175 lt!2544135 (_1!37425 lt!2544117))))))

(declare-datatypes ((Option!16954 0))(
  ( (None!16953) (Some!16953 (v!53247 tuple2!68244)) )
))
(declare-fun lt!2544108 () Option!16954)

(declare-fun get!23922 (Option!16954) tuple2!68244)

(assert (=> b!7069832 (= lt!2544117 (get!23922 lt!2544108))))

(declare-fun isDefined!13655 (Option!16954) Bool)

(assert (=> b!7069832 (isDefined!13655 lt!2544108)))

(declare-fun lt!2544112 () (InoxSet Context!13262))

(declare-fun findConcatSeparationZippers!470 ((InoxSet Context!13262) (InoxSet Context!13262) List!68432 List!68432 List!68432) Option!16954)

(assert (=> b!7069832 (= lt!2544108 (findConcatSeparationZippers!470 lt!2544135 lt!2544112 Nil!68308 (t!382215 s!7408) (t!382215 s!7408)))))

(assert (=> b!7069832 (= lt!2544112 (store ((as const (Array Context!13262 Bool)) false) ct2!306 true))))

(declare-fun lt!2544116 () Unit!161980)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!458 ((InoxSet Context!13262) Context!13262 List!68432) Unit!161980)

(assert (=> b!7069832 (= lt!2544116 (lemmaConcatZipperMatchesStringThenFindConcatDefined!458 lt!2544135 ct2!306 (t!382215 s!7408)))))

(declare-fun lt!2544133 () Unit!161980)

(assert (=> b!7069832 (= lt!2544133 (lemmaConcatPreservesForall!946 lt!2544153 (exprs!7131 ct2!306) lambda!424995))))

(assert (=> b!7069832 (= lt!2544134 (appendTo!756 lt!2544135 ct2!306))))

(declare-fun derivationStepZipperDown!2269 (Regex!17635 Context!13262 C!35540) (InoxSet Context!13262))

(assert (=> b!7069832 (= lt!2544135 (derivationStepZipperDown!2269 (h!74755 (exprs!7131 lt!2544152)) lt!2544121 (h!74756 s!7408)))))

(declare-fun lt!2544126 () Unit!161980)

(assert (=> b!7069832 (= lt!2544126 (lemmaConcatPreservesForall!946 lt!2544153 (exprs!7131 ct2!306) lambda!424995))))

(declare-fun lt!2544119 () Unit!161980)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!106 (Context!13262 Regex!17635 C!35540 Context!13262) Unit!161980)

(assert (=> b!7069832 (= lt!2544119 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!106 lt!2544121 (h!74755 (exprs!7131 lt!2544152)) (h!74756 s!7408) ct2!306))))

(declare-fun b!7069833 () Bool)

(assert (=> b!7069833 (= e!4250368 e!4250367)))

(declare-fun res!2887121 () Bool)

(assert (=> b!7069833 (=> res!2887121 e!4250367)))

(assert (=> b!7069833 (= res!2887121 (not (= lt!2544132 lt!2544142)))))

(assert (=> b!7069833 (= lt!2544142 ((_ map or) lt!2544134 lt!2544114))))

(declare-fun lt!2544136 () Context!13262)

(declare-fun derivationStepZipperUp!2219 (Context!13262 C!35540) (InoxSet Context!13262))

(assert (=> b!7069833 (= lt!2544114 (derivationStepZipperUp!2219 lt!2544136 (h!74756 s!7408)))))

(assert (=> b!7069833 (= lt!2544134 (derivationStepZipperDown!2269 (h!74755 (exprs!7131 lt!2544152)) lt!2544136 (h!74756 s!7408)))))

(declare-fun ++!15754 (List!68431 List!68431) List!68431)

(assert (=> b!7069833 (= lt!2544136 (Context!13263 (++!15754 lt!2544153 (exprs!7131 ct2!306))))))

(declare-fun lt!2544118 () Unit!161980)

(assert (=> b!7069833 (= lt!2544118 (lemmaConcatPreservesForall!946 lt!2544153 (exprs!7131 ct2!306) lambda!424995))))

(declare-fun lt!2544125 () Unit!161980)

(assert (=> b!7069833 (= lt!2544125 (lemmaConcatPreservesForall!946 lt!2544153 (exprs!7131 ct2!306) lambda!424995))))

(declare-fun b!7069834 () Bool)

(declare-fun res!2887118 () Bool)

(assert (=> b!7069834 (=> (not res!2887118) (not e!4250366))))

(get-info :version)

(assert (=> b!7069834 (= res!2887118 ((_ is Cons!68308) s!7408))))

(declare-fun b!7069835 () Bool)

(declare-fun tp!1942086 () Bool)

(assert (=> b!7069835 (= e!4250365 tp!1942086)))

(declare-fun e!4250383 () Bool)

(declare-fun e!4250372 () Bool)

(assert (=> b!7069836 (= e!4250383 e!4250372)))

(declare-fun res!2887117 () Bool)

(assert (=> b!7069836 (=> res!2887117 e!4250372)))

(declare-fun lt!2544123 () Context!13262)

(declare-fun lt!2544147 () Context!13262)

(assert (=> b!7069836 (= res!2887117 (or (not (= lt!2544147 lt!2544123)) (not (select z1!570 lt!2544152))))))

(assert (=> b!7069836 (= lt!2544147 (Context!13263 (++!15754 (exprs!7131 lt!2544152) (exprs!7131 ct2!306))))))

(declare-fun lt!2544151 () Unit!161980)

(assert (=> b!7069836 (= lt!2544151 (lemmaConcatPreservesForall!946 (exprs!7131 lt!2544152) (exprs!7131 ct2!306) lambda!424995))))

(declare-fun lambda!424994 () Int)

(declare-fun mapPost2!464 ((InoxSet Context!13262) Int Context!13262) Context!13262)

(assert (=> b!7069836 (= lt!2544152 (mapPost2!464 z1!570 lambda!424994 lt!2544123))))

(declare-fun b!7069837 () Bool)

(declare-fun tp_is_empty!44495 () Bool)

(declare-fun tp!1942087 () Bool)

(assert (=> b!7069837 (= e!4250371 (and tp_is_empty!44495 tp!1942087))))

(declare-fun b!7069838 () Bool)

(declare-fun e!4250373 () Bool)

(assert (=> b!7069838 (= e!4250372 e!4250373)))

(declare-fun res!2887127 () Bool)

(assert (=> b!7069838 (=> res!2887127 e!4250373)))

(declare-fun lt!2544110 () (InoxSet Context!13262))

(declare-fun lt!2544122 () (InoxSet Context!13262))

(assert (=> b!7069838 (= res!2887127 (not (= lt!2544110 lt!2544122)))))

(assert (=> b!7069838 (= lt!2544110 (store ((as const (Array Context!13262 Bool)) false) lt!2544147 true))))

(declare-fun lt!2544111 () Unit!161980)

(assert (=> b!7069838 (= lt!2544111 (lemmaConcatPreservesForall!946 (exprs!7131 lt!2544152) (exprs!7131 ct2!306) lambda!424995))))

(declare-fun b!7069839 () Bool)

(declare-fun res!2887107 () Bool)

(assert (=> b!7069839 (=> res!2887107 e!4250380)))

(assert (=> b!7069839 (= res!2887107 (not ((_ is Cons!68307) (exprs!7131 lt!2544152))))))

(declare-fun b!7069840 () Bool)

(assert (=> b!7069840 (= e!4250381 (matchZipper!3175 lt!2544114 (t!382215 s!7408)))))

(declare-fun b!7069841 () Bool)

(declare-fun res!2887125 () Bool)

(assert (=> b!7069841 (=> res!2887125 e!4250383)))

(assert (=> b!7069841 (= res!2887125 (not (select lt!2544124 lt!2544123)))))

(assert (=> b!7069842 (= e!4250366 (not e!4250383))))

(declare-fun res!2887124 () Bool)

(assert (=> b!7069842 (=> res!2887124 e!4250383)))

(assert (=> b!7069842 (= res!2887124 (not (matchZipper!3175 lt!2544122 s!7408)))))

(assert (=> b!7069842 (= lt!2544122 (store ((as const (Array Context!13262 Bool)) false) lt!2544123 true))))

(declare-fun lambda!424993 () Int)

(declare-fun getWitness!1731 ((InoxSet Context!13262) Int) Context!13262)

(assert (=> b!7069842 (= lt!2544123 (getWitness!1731 lt!2544124 lambda!424993))))

(declare-datatypes ((List!68433 0))(
  ( (Nil!68309) (Cons!68309 (h!74757 Context!13262) (t!382216 List!68433)) )
))
(declare-fun lt!2544139 () List!68433)

(declare-fun exists!3674 (List!68433 Int) Bool)

(assert (=> b!7069842 (exists!3674 lt!2544139 lambda!424993)))

(declare-fun lt!2544127 () Unit!161980)

(declare-fun lemmaZipperMatchesExistsMatchingContext!556 (List!68433 List!68432) Unit!161980)

(assert (=> b!7069842 (= lt!2544127 (lemmaZipperMatchesExistsMatchingContext!556 lt!2544139 s!7408))))

(declare-fun toList!10976 ((InoxSet Context!13262)) List!68433)

(assert (=> b!7069842 (= lt!2544139 (toList!10976 lt!2544124))))

(assert (=> b!7069843 (= e!4250373 e!4250380)))

(declare-fun res!2887111 () Bool)

(assert (=> b!7069843 (=> res!2887111 e!4250380)))

(declare-fun derivationStepZipper!3085 ((InoxSet Context!13262) C!35540) (InoxSet Context!13262))

(assert (=> b!7069843 (= res!2887111 (not (= (derivationStepZipper!3085 lt!2544110 (h!74756 s!7408)) lt!2544132)))))

(declare-fun lambda!424996 () Int)

(declare-fun flatMap!2561 ((InoxSet Context!13262) Int) (InoxSet Context!13262))

(assert (=> b!7069843 (= (flatMap!2561 lt!2544110 lambda!424996) (derivationStepZipperUp!2219 lt!2544147 (h!74756 s!7408)))))

(declare-fun lt!2544128 () Unit!161980)

(declare-fun lemmaFlatMapOnSingletonSet!2070 ((InoxSet Context!13262) Context!13262 Int) Unit!161980)

(assert (=> b!7069843 (= lt!2544128 (lemmaFlatMapOnSingletonSet!2070 lt!2544110 lt!2544147 lambda!424996))))

(assert (=> b!7069843 (= lt!2544132 (derivationStepZipperUp!2219 lt!2544147 (h!74756 s!7408)))))

(declare-fun lt!2544141 () Unit!161980)

(assert (=> b!7069843 (= lt!2544141 (lemmaConcatPreservesForall!946 (exprs!7131 lt!2544152) (exprs!7131 ct2!306) lambda!424995))))

(declare-fun b!7069844 () Bool)

(declare-fun e!4250379 () Bool)

(assert (=> b!7069844 (= e!4250379 true)))

(declare-fun lt!2544113 () Bool)

(assert (=> b!7069844 (= lt!2544113 e!4250370)))

(declare-fun res!2887108 () Bool)

(assert (=> b!7069844 (=> res!2887108 e!4250370)))

(declare-fun lt!2544109 () (InoxSet Context!13262))

(assert (=> b!7069844 (= res!2887108 (matchZipper!3175 lt!2544109 (Cons!68308 (h!74756 s!7408) (_1!37425 lt!2544117))))))

(declare-fun lt!2544131 () (InoxSet Context!13262))

(assert (=> b!7069844 (matchZipper!3175 lt!2544131 (_1!37425 lt!2544117))))

(declare-fun lt!2544138 () Unit!161980)

(assert (=> b!7069844 (= lt!2544138 (lemmaZipperConcatMatchesSameAsBothZippers!1648 lt!2544135 lt!2544145 (_1!37425 lt!2544117)))))

(declare-fun b!7069845 () Bool)

(declare-fun e!4250377 () Bool)

(assert (=> b!7069845 (= e!4250377 e!4250379)))

(declare-fun res!2887114 () Bool)

(assert (=> b!7069845 (=> res!2887114 e!4250379)))

(declare-fun lt!2544150 () (InoxSet Context!13262))

(assert (=> b!7069845 (= res!2887114 (not (= lt!2544150 lt!2544131)))))

(assert (=> b!7069845 (= lt!2544131 ((_ map or) lt!2544135 lt!2544145))))

(assert (=> b!7069845 (= lt!2544145 (derivationStepZipperUp!2219 lt!2544121 (h!74756 s!7408)))))

(declare-fun b!7069846 () Bool)

(declare-fun res!2887113 () Bool)

(assert (=> b!7069846 (=> res!2887113 e!4250378)))

(assert (=> b!7069846 (= res!2887113 (not (matchZipper!3175 lt!2544112 (_2!37425 lt!2544117))))))

(declare-fun b!7069847 () Bool)

(assert (=> b!7069847 (= e!4250378 e!4250377)))

(declare-fun res!2887129 () Bool)

(assert (=> b!7069847 (=> res!2887129 e!4250377)))

(declare-fun lt!2544130 () (InoxSet Context!13262))

(assert (=> b!7069847 (= res!2887129 (not (= lt!2544150 lt!2544130)))))

(assert (=> b!7069847 (= (flatMap!2561 lt!2544109 lambda!424996) (derivationStepZipperUp!2219 lt!2544152 (h!74756 s!7408)))))

(declare-fun lt!2544144 () Unit!161980)

(assert (=> b!7069847 (= lt!2544144 (lemmaFlatMapOnSingletonSet!2070 lt!2544109 lt!2544152 lambda!424996))))

(assert (=> b!7069847 (= lt!2544130 (derivationStepZipperUp!2219 lt!2544152 (h!74756 s!7408)))))

(assert (=> b!7069847 (= lt!2544150 (derivationStepZipper!3085 lt!2544109 (h!74756 s!7408)))))

(assert (=> b!7069847 (= lt!2544109 (store ((as const (Array Context!13262 Bool)) false) lt!2544152 true))))

(declare-fun b!7069848 () Bool)

(declare-fun res!2887115 () Bool)

(assert (=> b!7069848 (=> res!2887115 e!4250380)))

(declare-fun isEmpty!39862 (List!68431) Bool)

(assert (=> b!7069848 (= res!2887115 (isEmpty!39862 (exprs!7131 lt!2544152)))))

(declare-fun b!7069849 () Bool)

(assert (=> b!7069849 (= e!4250374 e!4250376)))

(declare-fun res!2887120 () Bool)

(assert (=> b!7069849 (=> res!2887120 e!4250376)))

(assert (=> b!7069849 (= res!2887120 (not lt!2544143))))

(declare-fun lt!2544154 () Unit!161980)

(assert (=> b!7069849 (= lt!2544154 (lemmaConcatPreservesForall!946 lt!2544153 (exprs!7131 ct2!306) lambda!424995))))

(declare-fun lt!2544148 () Unit!161980)

(assert (=> b!7069849 (= lt!2544148 (lemmaConcatPreservesForall!946 lt!2544153 (exprs!7131 ct2!306) lambda!424995))))

(assert (= (and start!686656 res!2887112) b!7069834))

(assert (= (and b!7069834 res!2887118) b!7069842))

(assert (= (and b!7069842 (not res!2887124)) b!7069841))

(assert (= (and b!7069841 (not res!2887125)) b!7069836))

(assert (= (and b!7069836 (not res!2887117)) b!7069838))

(assert (= (and b!7069838 (not res!2887127)) b!7069843))

(assert (= (and b!7069843 (not res!2887111)) b!7069839))

(assert (= (and b!7069839 (not res!2887107)) b!7069848))

(assert (= (and b!7069848 (not res!2887115)) b!7069831))

(assert (= (and b!7069831 (not res!2887128)) b!7069833))

(assert (= (and b!7069833 (not res!2887121)) b!7069829))

(assert (= (and b!7069829 (not res!2887116)) b!7069840))

(assert (= (and b!7069829 res!2887119) b!7069826))

(assert (= (and b!7069829 (not res!2887122)) b!7069830))

(assert (= (and b!7069830 (not res!2887109)) b!7069827))

(assert (= (and b!7069827 (not res!2887126)) b!7069849))

(assert (= (and b!7069849 (not res!2887120)) b!7069832))

(assert (= (and b!7069832 (not res!2887123)) b!7069846))

(assert (= (and b!7069846 (not res!2887113)) b!7069828))

(assert (= (and b!7069828 (not res!2887110)) b!7069847))

(assert (= (and b!7069847 (not res!2887129)) b!7069845))

(assert (= (and b!7069845 (not res!2887114)) b!7069844))

(assert (= (and b!7069844 (not res!2887108)) b!7069824))

(assert (= (and start!686656 condSetEmpty!50210) setIsEmpty!50210))

(assert (= (and start!686656 (not condSetEmpty!50210)) setNonEmpty!50210))

(assert (= setNonEmpty!50210 b!7069835))

(assert (= start!686656 b!7069825))

(assert (= (and start!686656 ((_ is Cons!68308) s!7408)) b!7069837))

(declare-fun m!7794708 () Bool)

(assert (=> b!7069845 m!7794708))

(declare-fun m!7794710 () Bool)

(assert (=> b!7069849 m!7794710))

(assert (=> b!7069849 m!7794710))

(declare-fun m!7794712 () Bool)

(assert (=> b!7069832 m!7794712))

(declare-fun m!7794714 () Bool)

(assert (=> b!7069832 m!7794714))

(declare-fun m!7794716 () Bool)

(assert (=> b!7069832 m!7794716))

(declare-fun m!7794718 () Bool)

(assert (=> b!7069832 m!7794718))

(assert (=> b!7069832 m!7794710))

(declare-fun m!7794720 () Bool)

(assert (=> b!7069832 m!7794720))

(assert (=> b!7069832 m!7794710))

(declare-fun m!7794722 () Bool)

(assert (=> b!7069832 m!7794722))

(declare-fun m!7794724 () Bool)

(assert (=> b!7069832 m!7794724))

(declare-fun m!7794726 () Bool)

(assert (=> b!7069832 m!7794726))

(declare-fun m!7794728 () Bool)

(assert (=> b!7069832 m!7794728))

(declare-fun m!7794730 () Bool)

(assert (=> b!7069836 m!7794730))

(declare-fun m!7794732 () Bool)

(assert (=> b!7069836 m!7794732))

(declare-fun m!7794734 () Bool)

(assert (=> b!7069836 m!7794734))

(declare-fun m!7794736 () Bool)

(assert (=> b!7069836 m!7794736))

(declare-fun m!7794738 () Bool)

(assert (=> b!7069842 m!7794738))

(declare-fun m!7794740 () Bool)

(assert (=> b!7069842 m!7794740))

(declare-fun m!7794742 () Bool)

(assert (=> b!7069842 m!7794742))

(declare-fun m!7794744 () Bool)

(assert (=> b!7069842 m!7794744))

(declare-fun m!7794746 () Bool)

(assert (=> b!7069842 m!7794746))

(declare-fun m!7794748 () Bool)

(assert (=> b!7069842 m!7794748))

(declare-fun m!7794750 () Bool)

(assert (=> b!7069844 m!7794750))

(declare-fun m!7794752 () Bool)

(assert (=> b!7069844 m!7794752))

(declare-fun m!7794754 () Bool)

(assert (=> b!7069844 m!7794754))

(declare-fun m!7794756 () Bool)

(assert (=> start!686656 m!7794756))

(declare-fun m!7794758 () Bool)

(assert (=> start!686656 m!7794758))

(declare-fun m!7794760 () Bool)

(assert (=> start!686656 m!7794760))

(declare-fun m!7794762 () Bool)

(assert (=> b!7069848 m!7794762))

(declare-fun m!7794764 () Bool)

(assert (=> b!7069828 m!7794764))

(declare-fun m!7794766 () Bool)

(assert (=> b!7069833 m!7794766))

(assert (=> b!7069833 m!7794710))

(assert (=> b!7069833 m!7794710))

(declare-fun m!7794768 () Bool)

(assert (=> b!7069833 m!7794768))

(declare-fun m!7794770 () Bool)

(assert (=> b!7069833 m!7794770))

(declare-fun m!7794772 () Bool)

(assert (=> b!7069847 m!7794772))

(declare-fun m!7794774 () Bool)

(assert (=> b!7069847 m!7794774))

(declare-fun m!7794776 () Bool)

(assert (=> b!7069847 m!7794776))

(declare-fun m!7794778 () Bool)

(assert (=> b!7069847 m!7794778))

(declare-fun m!7794780 () Bool)

(assert (=> b!7069847 m!7794780))

(declare-fun m!7794782 () Bool)

(assert (=> b!7069827 m!7794782))

(assert (=> b!7069827 m!7794710))

(declare-fun m!7794784 () Bool)

(assert (=> b!7069846 m!7794784))

(assert (=> b!7069826 m!7794782))

(assert (=> b!7069826 m!7794710))

(declare-fun m!7794786 () Bool)

(assert (=> b!7069831 m!7794786))

(declare-fun m!7794788 () Bool)

(assert (=> b!7069831 m!7794788))

(declare-fun m!7794790 () Bool)

(assert (=> setNonEmpty!50210 m!7794790))

(declare-fun m!7794792 () Bool)

(assert (=> b!7069824 m!7794792))

(declare-fun m!7794794 () Bool)

(assert (=> b!7069841 m!7794794))

(declare-fun m!7794796 () Bool)

(assert (=> b!7069838 m!7794796))

(assert (=> b!7069838 m!7794734))

(assert (=> b!7069840 m!7794782))

(declare-fun m!7794798 () Bool)

(assert (=> b!7069843 m!7794798))

(declare-fun m!7794800 () Bool)

(assert (=> b!7069843 m!7794800))

(declare-fun m!7794802 () Bool)

(assert (=> b!7069843 m!7794802))

(declare-fun m!7794804 () Bool)

(assert (=> b!7069843 m!7794804))

(assert (=> b!7069843 m!7794734))

(assert (=> b!7069829 m!7794710))

(assert (=> b!7069829 m!7794710))

(assert (=> b!7069829 m!7794710))

(declare-fun m!7794806 () Bool)

(assert (=> b!7069829 m!7794806))

(declare-fun m!7794808 () Bool)

(assert (=> b!7069829 m!7794808))

(declare-fun m!7794810 () Bool)

(assert (=> b!7069829 m!7794810))

(declare-fun m!7794812 () Bool)

(assert (=> b!7069829 m!7794812))

(check-sat (not b!7069842) (not b!7069846) (not b!7069838) tp_is_empty!44495 (not b!7069824) (not b!7069847) (not b!7069837) (not b!7069827) (not start!686656) (not b!7069826) (not b!7069832) (not b!7069848) (not b!7069831) (not b!7069836) (not b!7069829) (not b!7069844) (not b!7069833) (not b!7069840) (not b!7069828) (not b!7069845) (not b!7069835) (not setNonEmpty!50210) (not b!7069843) (not b!7069825) (not b!7069849))
(check-sat)
