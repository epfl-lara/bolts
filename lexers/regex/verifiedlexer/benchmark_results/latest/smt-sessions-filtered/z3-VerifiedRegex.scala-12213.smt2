; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!688136 () Bool)

(assert start!688136)

(declare-fun b!7077864 () Bool)

(assert (=> b!7077864 true))

(declare-fun b!7077869 () Bool)

(assert (=> b!7077869 true))

(declare-fun b!7077856 () Bool)

(assert (=> b!7077856 true))

(declare-fun setIsEmpty!50413 () Bool)

(declare-fun setRes!50413 () Bool)

(assert (=> setIsEmpty!50413 setRes!50413))

(declare-fun b!7077854 () Bool)

(declare-fun e!4255222 () Bool)

(declare-fun e!4255219 () Bool)

(assert (=> b!7077854 (= e!4255222 e!4255219)))

(declare-fun res!2891050 () Bool)

(assert (=> b!7077854 (=> res!2891050 e!4255219)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35616 0))(
  ( (C!35617 (val!27510 Int)) )
))
(declare-datatypes ((Regex!17673 0))(
  ( (ElementMatch!17673 (c!1320724 C!35616)) (Concat!26518 (regOne!35858 Regex!17673) (regTwo!35858 Regex!17673)) (EmptyExpr!17673) (Star!17673 (reg!18002 Regex!17673)) (EmptyLang!17673) (Union!17673 (regOne!35859 Regex!17673) (regTwo!35859 Regex!17673)) )
))
(declare-datatypes ((List!68545 0))(
  ( (Nil!68421) (Cons!68421 (h!74869 Regex!17673) (t!382330 List!68545)) )
))
(declare-datatypes ((Context!13338 0))(
  ( (Context!13339 (exprs!7169 List!68545)) )
))
(declare-fun lt!2550151 () (InoxSet Context!13338))

(declare-fun lt!2550155 () (InoxSet Context!13338))

(declare-fun lt!2550161 () (InoxSet Context!13338))

(assert (=> b!7077854 (= res!2891050 (or (not (= lt!2550161 lt!2550155)) (not (= lt!2550161 lt!2550151))))))

(declare-datatypes ((List!68546 0))(
  ( (Nil!68422) (Cons!68422 (h!74870 C!35616) (t!382331 List!68546)) )
))
(declare-fun s!7408 () List!68546)

(declare-fun lt!2550137 () Context!13338)

(declare-fun lambda!427065 () Int)

(declare-fun lt!2550162 () (InoxSet Context!13338))

(declare-fun flatMap!2599 ((InoxSet Context!13338) Int) (InoxSet Context!13338))

(declare-fun derivationStepZipperUp!2257 (Context!13338 C!35616) (InoxSet Context!13338))

(assert (=> b!7077854 (= (flatMap!2599 lt!2550162 lambda!427065) (derivationStepZipperUp!2257 lt!2550137 (h!74870 s!7408)))))

(declare-datatypes ((Unit!162057 0))(
  ( (Unit!162058) )
))
(declare-fun lt!2550148 () Unit!162057)

(declare-fun lemmaFlatMapOnSingletonSet!2108 ((InoxSet Context!13338) Context!13338 Int) Unit!162057)

(assert (=> b!7077854 (= lt!2550148 (lemmaFlatMapOnSingletonSet!2108 lt!2550162 lt!2550137 lambda!427065))))

(assert (=> b!7077854 (= lt!2550155 (derivationStepZipperUp!2257 lt!2550137 (h!74870 s!7408)))))

(declare-fun derivationStepZipper!3123 ((InoxSet Context!13338) C!35616) (InoxSet Context!13338))

(assert (=> b!7077854 (= lt!2550161 (derivationStepZipper!3123 lt!2550162 (h!74870 s!7408)))))

(assert (=> b!7077854 (= lt!2550162 (store ((as const (Array Context!13338 Bool)) false) lt!2550137 true))))

(declare-fun res!2891061 () Bool)

(declare-fun e!4255224 () Bool)

(assert (=> start!688136 (=> (not res!2891061) (not e!4255224))))

(declare-fun lt!2550139 () (InoxSet Context!13338))

(declare-fun matchZipper!3213 ((InoxSet Context!13338) List!68546) Bool)

(assert (=> start!688136 (= res!2891061 (matchZipper!3213 lt!2550139 s!7408))))

(declare-fun z1!570 () (InoxSet Context!13338))

(declare-fun ct2!306 () Context!13338)

(declare-fun appendTo!794 ((InoxSet Context!13338) Context!13338) (InoxSet Context!13338))

(assert (=> start!688136 (= lt!2550139 (appendTo!794 z1!570 ct2!306))))

(assert (=> start!688136 e!4255224))

(declare-fun condSetEmpty!50413 () Bool)

(assert (=> start!688136 (= condSetEmpty!50413 (= z1!570 ((as const (Array Context!13338 Bool)) false)))))

(assert (=> start!688136 setRes!50413))

(declare-fun e!4255212 () Bool)

(declare-fun inv!87041 (Context!13338) Bool)

(assert (=> start!688136 (and (inv!87041 ct2!306) e!4255212)))

(declare-fun e!4255218 () Bool)

(assert (=> start!688136 e!4255218))

(declare-fun b!7077855 () Bool)

(declare-fun e!4255213 () Bool)

(declare-fun tp!1943091 () Bool)

(assert (=> b!7077855 (= e!4255213 tp!1943091)))

(declare-fun e!4255215 () Bool)

(declare-fun e!4255221 () Bool)

(assert (=> b!7077856 (= e!4255215 e!4255221)))

(declare-fun res!2891054 () Bool)

(assert (=> b!7077856 (=> res!2891054 e!4255221)))

(declare-fun lt!2550144 () (InoxSet Context!13338))

(declare-fun lt!2550140 () (InoxSet Context!13338))

(assert (=> b!7077856 (= res!2891054 (not (= (derivationStepZipper!3123 lt!2550144 (h!74870 s!7408)) lt!2550140)))))

(declare-fun lt!2550159 () Context!13338)

(assert (=> b!7077856 (= (flatMap!2599 lt!2550144 lambda!427065) (derivationStepZipperUp!2257 lt!2550159 (h!74870 s!7408)))))

(declare-fun lt!2550133 () Unit!162057)

(assert (=> b!7077856 (= lt!2550133 (lemmaFlatMapOnSingletonSet!2108 lt!2550144 lt!2550159 lambda!427065))))

(assert (=> b!7077856 (= lt!2550140 (derivationStepZipperUp!2257 lt!2550159 (h!74870 s!7408)))))

(declare-fun lt!2550150 () Unit!162057)

(declare-fun lambda!427064 () Int)

(declare-fun lemmaConcatPreservesForall!984 (List!68545 List!68545 Int) Unit!162057)

(assert (=> b!7077856 (= lt!2550150 (lemmaConcatPreservesForall!984 (exprs!7169 lt!2550137) (exprs!7169 ct2!306) lambda!427064))))

(declare-fun b!7077857 () Bool)

(declare-fun e!4255214 () Bool)

(assert (=> b!7077857 (= e!4255221 e!4255214)))

(declare-fun res!2891051 () Bool)

(assert (=> b!7077857 (=> res!2891051 e!4255214)))

(declare-fun nullable!7356 (Regex!17673) Bool)

(assert (=> b!7077857 (= res!2891051 (nullable!7356 (h!74869 (exprs!7169 lt!2550137))))))

(declare-fun lt!2550147 () Context!13338)

(declare-fun lt!2550142 () List!68545)

(assert (=> b!7077857 (= lt!2550147 (Context!13339 lt!2550142))))

(declare-fun tail!13875 (List!68545) List!68545)

(assert (=> b!7077857 (= lt!2550142 (tail!13875 (exprs!7169 lt!2550137)))))

(declare-fun b!7077858 () Bool)

(declare-fun res!2891048 () Bool)

(assert (=> b!7077858 (=> res!2891048 e!4255221)))

(declare-fun isEmpty!39940 (List!68545) Bool)

(assert (=> b!7077858 (= res!2891048 (isEmpty!39940 (exprs!7169 lt!2550137)))))

(declare-fun b!7077859 () Bool)

(declare-fun e!4255223 () Bool)

(assert (=> b!7077859 (= e!4255214 e!4255223)))

(declare-fun res!2891058 () Bool)

(assert (=> b!7077859 (=> res!2891058 e!4255223)))

(declare-fun lt!2550138 () (InoxSet Context!13338))

(assert (=> b!7077859 (= res!2891058 (not (matchZipper!3213 lt!2550138 (t!382331 s!7408))))))

(declare-fun derivationStepZipperDown!2307 (Regex!17673 Context!13338 C!35616) (InoxSet Context!13338))

(declare-fun ++!15821 (List!68545 List!68545) List!68545)

(assert (=> b!7077859 (= lt!2550138 (derivationStepZipperDown!2307 (h!74869 (exprs!7169 lt!2550137)) (Context!13339 (++!15821 lt!2550142 (exprs!7169 ct2!306))) (h!74870 s!7408)))))

(declare-fun lt!2550158 () Unit!162057)

(assert (=> b!7077859 (= lt!2550158 (lemmaConcatPreservesForall!984 lt!2550142 (exprs!7169 ct2!306) lambda!427064))))

(declare-fun e!4255220 () Bool)

(declare-fun lt!2550160 () (InoxSet Context!13338))

(declare-fun lt!2550135 () Context!13338)

(declare-fun lambda!427063 () Int)

(declare-fun b!7077860 () Bool)

(declare-datatypes ((tuple2!68304 0))(
  ( (tuple2!68305 (_1!37455 List!68546) (_2!37455 List!68546)) )
))
(declare-datatypes ((Option!16984 0))(
  ( (None!16983) (Some!16983 (v!53277 tuple2!68304)) )
))
(declare-fun get!23971 (Option!16984) tuple2!68304)

(declare-fun findConcatSeparationZippers!500 ((InoxSet Context!13338) (InoxSet Context!13338) List!68546 List!68546 List!68546) Option!16984)

(declare-fun mapPost2!502 ((InoxSet Context!13338) Int Context!13338) Context!13338)

(assert (=> b!7077860 (= e!4255220 (matchZipper!3213 lt!2550162 (Cons!68422 (h!74870 s!7408) (_1!37455 (get!23971 (findConcatSeparationZippers!500 (derivationStepZipperDown!2307 (h!74869 (exprs!7169 (mapPost2!502 z1!570 lambda!427063 lt!2550135))) (Context!13339 (tail!13875 (exprs!7169 (mapPost2!502 z1!570 lambda!427063 lt!2550135)))) (h!74870 s!7408)) lt!2550160 Nil!68422 (t!382331 s!7408) (t!382331 s!7408)))))))))

(declare-fun isDefined!13685 (Option!16984) Bool)

(assert (=> b!7077860 (isDefined!13685 (findConcatSeparationZippers!500 lt!2550162 lt!2550160 Nil!68422 s!7408 s!7408))))

(declare-fun lt!2550146 () tuple2!68304)

(declare-fun lt!2550143 () Unit!162057)

(declare-fun lt!2550149 () List!68546)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!86 ((InoxSet Context!13338) (InoxSet Context!13338) List!68546 List!68546 List!68546 List!68546 List!68546) Unit!162057)

(assert (=> b!7077860 (= lt!2550143 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!86 lt!2550162 lt!2550160 lt!2550149 (_2!37455 lt!2550146) s!7408 Nil!68422 s!7408))))

(declare-fun b!7077861 () Bool)

(declare-fun res!2891052 () Bool)

(declare-fun e!4255217 () Bool)

(assert (=> b!7077861 (=> res!2891052 e!4255217)))

(assert (=> b!7077861 (= res!2891052 (not (select lt!2550139 lt!2550135)))))

(declare-fun b!7077862 () Bool)

(declare-fun res!2891055 () Bool)

(assert (=> b!7077862 (=> res!2891055 e!4255222)))

(declare-fun ++!15822 (List!68546 List!68546) List!68546)

(assert (=> b!7077862 (= res!2891055 (not (= (++!15822 (_1!37455 lt!2550146) (_2!37455 lt!2550146)) (t!382331 s!7408))))))

(declare-fun b!7077863 () Bool)

(declare-fun res!2891056 () Bool)

(assert (=> b!7077863 (=> res!2891056 e!4255222)))

(assert (=> b!7077863 (= res!2891056 (not (matchZipper!3213 lt!2550160 (_2!37455 lt!2550146))))))

(assert (=> b!7077864 (= e!4255224 (not e!4255217))))

(declare-fun res!2891049 () Bool)

(assert (=> b!7077864 (=> res!2891049 e!4255217)))

(declare-fun lt!2550152 () (InoxSet Context!13338))

(assert (=> b!7077864 (= res!2891049 (not (matchZipper!3213 lt!2550152 s!7408)))))

(assert (=> b!7077864 (= lt!2550152 (store ((as const (Array Context!13338 Bool)) false) lt!2550135 true))))

(declare-fun lambda!427062 () Int)

(declare-fun getWitness!1792 ((InoxSet Context!13338) Int) Context!13338)

(assert (=> b!7077864 (= lt!2550135 (getWitness!1792 lt!2550139 lambda!427062))))

(declare-datatypes ((List!68547 0))(
  ( (Nil!68423) (Cons!68423 (h!74871 Context!13338) (t!382332 List!68547)) )
))
(declare-fun lt!2550156 () List!68547)

(declare-fun exists!3742 (List!68547 Int) Bool)

(assert (=> b!7077864 (exists!3742 lt!2550156 lambda!427062)))

(declare-fun lt!2550134 () Unit!162057)

(declare-fun lemmaZipperMatchesExistsMatchingContext!594 (List!68547 List!68546) Unit!162057)

(assert (=> b!7077864 (= lt!2550134 (lemmaZipperMatchesExistsMatchingContext!594 lt!2550156 s!7408))))

(declare-fun toList!11014 ((InoxSet Context!13338)) List!68547)

(assert (=> b!7077864 (= lt!2550156 (toList!11014 lt!2550139))))

(declare-fun b!7077865 () Bool)

(declare-fun res!2891062 () Bool)

(assert (=> b!7077865 (=> res!2891062 e!4255221)))

(get-info :version)

(assert (=> b!7077865 (= res!2891062 (not ((_ is Cons!68421) (exprs!7169 lt!2550137))))))

(declare-fun setNonEmpty!50413 () Bool)

(declare-fun setElem!50413 () Context!13338)

(declare-fun tp!1943089 () Bool)

(assert (=> setNonEmpty!50413 (= setRes!50413 (and tp!1943089 (inv!87041 setElem!50413) e!4255213))))

(declare-fun setRest!50413 () (InoxSet Context!13338))

(assert (=> setNonEmpty!50413 (= z1!570 ((_ map or) (store ((as const (Array Context!13338 Bool)) false) setElem!50413 true) setRest!50413))))

(declare-fun b!7077866 () Bool)

(assert (=> b!7077866 (= e!4255219 e!4255220)))

(declare-fun res!2891059 () Bool)

(assert (=> b!7077866 (=> res!2891059 e!4255220)))

(assert (=> b!7077866 (= res!2891059 (not (matchZipper!3213 lt!2550162 lt!2550149)))))

(assert (=> b!7077866 (= lt!2550149 (Cons!68422 (h!74870 s!7408) (_1!37455 lt!2550146)))))

(declare-fun b!7077867 () Bool)

(declare-fun e!4255216 () Bool)

(assert (=> b!7077867 (= e!4255216 e!4255215)))

(declare-fun res!2891047 () Bool)

(assert (=> b!7077867 (=> res!2891047 e!4255215)))

(assert (=> b!7077867 (= res!2891047 (not (= lt!2550144 lt!2550152)))))

(assert (=> b!7077867 (= lt!2550144 (store ((as const (Array Context!13338 Bool)) false) lt!2550159 true))))

(declare-fun lt!2550153 () Unit!162057)

(assert (=> b!7077867 (= lt!2550153 (lemmaConcatPreservesForall!984 (exprs!7169 lt!2550137) (exprs!7169 ct2!306) lambda!427064))))

(declare-fun b!7077868 () Bool)

(declare-fun tp_is_empty!44571 () Bool)

(declare-fun tp!1943090 () Bool)

(assert (=> b!7077868 (= e!4255218 (and tp_is_empty!44571 tp!1943090))))

(assert (=> b!7077869 (= e!4255217 e!4255216)))

(declare-fun res!2891057 () Bool)

(assert (=> b!7077869 (=> res!2891057 e!4255216)))

(assert (=> b!7077869 (= res!2891057 (or (not (= lt!2550159 lt!2550135)) (not (select z1!570 lt!2550137))))))

(assert (=> b!7077869 (= lt!2550159 (Context!13339 (++!15821 (exprs!7169 lt!2550137) (exprs!7169 ct2!306))))))

(declare-fun lt!2550145 () Unit!162057)

(assert (=> b!7077869 (= lt!2550145 (lemmaConcatPreservesForall!984 (exprs!7169 lt!2550137) (exprs!7169 ct2!306) lambda!427064))))

(assert (=> b!7077869 (= lt!2550137 (mapPost2!502 z1!570 lambda!427063 lt!2550135))))

(declare-fun b!7077870 () Bool)

(assert (=> b!7077870 (= e!4255223 e!4255222)))

(declare-fun res!2891053 () Bool)

(assert (=> b!7077870 (=> res!2891053 e!4255222)))

(assert (=> b!7077870 (= res!2891053 (not (matchZipper!3213 lt!2550151 (_1!37455 lt!2550146))))))

(declare-fun lt!2550154 () Option!16984)

(assert (=> b!7077870 (= lt!2550146 (get!23971 lt!2550154))))

(assert (=> b!7077870 (isDefined!13685 lt!2550154)))

(assert (=> b!7077870 (= lt!2550154 (findConcatSeparationZippers!500 lt!2550151 lt!2550160 Nil!68422 (t!382331 s!7408) (t!382331 s!7408)))))

(assert (=> b!7077870 (= lt!2550160 (store ((as const (Array Context!13338 Bool)) false) ct2!306 true))))

(declare-fun lt!2550136 () Unit!162057)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!488 ((InoxSet Context!13338) Context!13338 List!68546) Unit!162057)

(assert (=> b!7077870 (= lt!2550136 (lemmaConcatZipperMatchesStringThenFindConcatDefined!488 lt!2550151 ct2!306 (t!382331 s!7408)))))

(assert (=> b!7077870 (= lt!2550138 (appendTo!794 lt!2550151 ct2!306))))

(assert (=> b!7077870 (= lt!2550151 (derivationStepZipperDown!2307 (h!74869 (exprs!7169 lt!2550137)) lt!2550147 (h!74870 s!7408)))))

(declare-fun lt!2550141 () Unit!162057)

(assert (=> b!7077870 (= lt!2550141 (lemmaConcatPreservesForall!984 lt!2550142 (exprs!7169 ct2!306) lambda!427064))))

(declare-fun lt!2550157 () Unit!162057)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!140 (Context!13338 Regex!17673 C!35616 Context!13338) Unit!162057)

(assert (=> b!7077870 (= lt!2550157 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!140 lt!2550147 (h!74869 (exprs!7169 lt!2550137)) (h!74870 s!7408) ct2!306))))

(declare-fun b!7077871 () Bool)

(declare-fun res!2891060 () Bool)

(assert (=> b!7077871 (=> (not res!2891060) (not e!4255224))))

(assert (=> b!7077871 (= res!2891060 ((_ is Cons!68422) s!7408))))

(declare-fun b!7077872 () Bool)

(declare-fun tp!1943092 () Bool)

(assert (=> b!7077872 (= e!4255212 tp!1943092)))

(assert (= (and start!688136 res!2891061) b!7077871))

(assert (= (and b!7077871 res!2891060) b!7077864))

(assert (= (and b!7077864 (not res!2891049)) b!7077861))

(assert (= (and b!7077861 (not res!2891052)) b!7077869))

(assert (= (and b!7077869 (not res!2891057)) b!7077867))

(assert (= (and b!7077867 (not res!2891047)) b!7077856))

(assert (= (and b!7077856 (not res!2891054)) b!7077865))

(assert (= (and b!7077865 (not res!2891062)) b!7077858))

(assert (= (and b!7077858 (not res!2891048)) b!7077857))

(assert (= (and b!7077857 (not res!2891051)) b!7077859))

(assert (= (and b!7077859 (not res!2891058)) b!7077870))

(assert (= (and b!7077870 (not res!2891053)) b!7077863))

(assert (= (and b!7077863 (not res!2891056)) b!7077862))

(assert (= (and b!7077862 (not res!2891055)) b!7077854))

(assert (= (and b!7077854 (not res!2891050)) b!7077866))

(assert (= (and b!7077866 (not res!2891059)) b!7077860))

(assert (= (and start!688136 condSetEmpty!50413) setIsEmpty!50413))

(assert (= (and start!688136 (not condSetEmpty!50413)) setNonEmpty!50413))

(assert (= setNonEmpty!50413 b!7077855))

(assert (= start!688136 b!7077872))

(assert (= (and start!688136 ((_ is Cons!68422) s!7408)) b!7077868))

(declare-fun m!7806688 () Bool)

(assert (=> start!688136 m!7806688))

(declare-fun m!7806690 () Bool)

(assert (=> start!688136 m!7806690))

(declare-fun m!7806692 () Bool)

(assert (=> start!688136 m!7806692))

(declare-fun m!7806694 () Bool)

(assert (=> setNonEmpty!50413 m!7806694))

(declare-fun m!7806696 () Bool)

(assert (=> b!7077861 m!7806696))

(declare-fun m!7806698 () Bool)

(assert (=> b!7077870 m!7806698))

(declare-fun m!7806700 () Bool)

(assert (=> b!7077870 m!7806700))

(declare-fun m!7806702 () Bool)

(assert (=> b!7077870 m!7806702))

(declare-fun m!7806704 () Bool)

(assert (=> b!7077870 m!7806704))

(declare-fun m!7806706 () Bool)

(assert (=> b!7077870 m!7806706))

(declare-fun m!7806708 () Bool)

(assert (=> b!7077870 m!7806708))

(declare-fun m!7806710 () Bool)

(assert (=> b!7077870 m!7806710))

(declare-fun m!7806712 () Bool)

(assert (=> b!7077870 m!7806712))

(declare-fun m!7806714 () Bool)

(assert (=> b!7077870 m!7806714))

(declare-fun m!7806716 () Bool)

(assert (=> b!7077870 m!7806716))

(declare-fun m!7806718 () Bool)

(assert (=> b!7077856 m!7806718))

(declare-fun m!7806720 () Bool)

(assert (=> b!7077856 m!7806720))

(declare-fun m!7806722 () Bool)

(assert (=> b!7077856 m!7806722))

(declare-fun m!7806724 () Bool)

(assert (=> b!7077856 m!7806724))

(declare-fun m!7806726 () Bool)

(assert (=> b!7077856 m!7806726))

(declare-fun m!7806728 () Bool)

(assert (=> b!7077857 m!7806728))

(declare-fun m!7806730 () Bool)

(assert (=> b!7077857 m!7806730))

(declare-fun m!7806732 () Bool)

(assert (=> b!7077860 m!7806732))

(declare-fun m!7806734 () Bool)

(assert (=> b!7077860 m!7806734))

(declare-fun m!7806736 () Bool)

(assert (=> b!7077860 m!7806736))

(declare-fun m!7806738 () Bool)

(assert (=> b!7077860 m!7806738))

(declare-fun m!7806740 () Bool)

(assert (=> b!7077860 m!7806740))

(assert (=> b!7077860 m!7806736))

(declare-fun m!7806742 () Bool)

(assert (=> b!7077860 m!7806742))

(assert (=> b!7077860 m!7806742))

(declare-fun m!7806744 () Bool)

(assert (=> b!7077860 m!7806744))

(declare-fun m!7806746 () Bool)

(assert (=> b!7077860 m!7806746))

(assert (=> b!7077860 m!7806734))

(declare-fun m!7806748 () Bool)

(assert (=> b!7077860 m!7806748))

(assert (=> b!7077860 m!7806738))

(declare-fun m!7806750 () Bool)

(assert (=> b!7077854 m!7806750))

(declare-fun m!7806752 () Bool)

(assert (=> b!7077854 m!7806752))

(declare-fun m!7806754 () Bool)

(assert (=> b!7077854 m!7806754))

(declare-fun m!7806756 () Bool)

(assert (=> b!7077854 m!7806756))

(declare-fun m!7806758 () Bool)

(assert (=> b!7077854 m!7806758))

(declare-fun m!7806760 () Bool)

(assert (=> b!7077867 m!7806760))

(assert (=> b!7077867 m!7806724))

(declare-fun m!7806762 () Bool)

(assert (=> b!7077864 m!7806762))

(declare-fun m!7806764 () Bool)

(assert (=> b!7077864 m!7806764))

(declare-fun m!7806766 () Bool)

(assert (=> b!7077864 m!7806766))

(declare-fun m!7806768 () Bool)

(assert (=> b!7077864 m!7806768))

(declare-fun m!7806770 () Bool)

(assert (=> b!7077864 m!7806770))

(declare-fun m!7806772 () Bool)

(assert (=> b!7077864 m!7806772))

(declare-fun m!7806774 () Bool)

(assert (=> b!7077859 m!7806774))

(declare-fun m!7806776 () Bool)

(assert (=> b!7077859 m!7806776))

(declare-fun m!7806778 () Bool)

(assert (=> b!7077859 m!7806778))

(assert (=> b!7077859 m!7806702))

(declare-fun m!7806780 () Bool)

(assert (=> b!7077869 m!7806780))

(declare-fun m!7806782 () Bool)

(assert (=> b!7077869 m!7806782))

(assert (=> b!7077869 m!7806724))

(assert (=> b!7077869 m!7806734))

(declare-fun m!7806784 () Bool)

(assert (=> b!7077858 m!7806784))

(declare-fun m!7806786 () Bool)

(assert (=> b!7077862 m!7806786))

(declare-fun m!7806788 () Bool)

(assert (=> b!7077863 m!7806788))

(declare-fun m!7806790 () Bool)

(assert (=> b!7077866 m!7806790))

(check-sat (not b!7077857) (not b!7077869) (not b!7077864) (not b!7077870) tp_is_empty!44571 (not setNonEmpty!50413) (not b!7077872) (not b!7077862) (not b!7077858) (not b!7077859) (not b!7077867) (not b!7077863) (not b!7077855) (not start!688136) (not b!7077860) (not b!7077866) (not b!7077856) (not b!7077868) (not b!7077854))
(check-sat)
