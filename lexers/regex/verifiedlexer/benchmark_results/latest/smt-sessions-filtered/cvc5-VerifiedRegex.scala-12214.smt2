; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!688138 () Bool)

(assert start!688138)

(declare-fun b!7077934 () Bool)

(assert (=> b!7077934 true))

(declare-fun b!7077933 () Bool)

(assert (=> b!7077933 true))

(declare-fun b!7077919 () Bool)

(assert (=> b!7077919 true))

(declare-fun bs!1881585 () Bool)

(declare-fun b!7077920 () Bool)

(assert (= bs!1881585 (and b!7077920 b!7077934)))

(declare-datatypes ((C!35618 0))(
  ( (C!35619 (val!27511 Int)) )
))
(declare-datatypes ((List!68548 0))(
  ( (Nil!68424) (Cons!68424 (h!74872 C!35618) (t!382333 List!68548)) )
))
(declare-fun s!7408 () List!68548)

(declare-fun lambda!427092 () Int)

(declare-fun lt!2550229 () List!68548)

(declare-fun lambda!427096 () Int)

(assert (=> bs!1881585 (= (= lt!2550229 s!7408) (= lambda!427096 lambda!427092))))

(assert (=> b!7077920 true))

(declare-fun b!7077917 () Bool)

(declare-fun e!4255256 () Bool)

(declare-fun e!4255255 () Bool)

(assert (=> b!7077917 (= e!4255256 e!4255255)))

(declare-fun res!2891110 () Bool)

(assert (=> b!7077917 (=> res!2891110 e!4255255)))

(declare-datatypes ((Regex!17674 0))(
  ( (ElementMatch!17674 (c!1320739 C!35618)) (Concat!26519 (regOne!35860 Regex!17674) (regTwo!35860 Regex!17674)) (EmptyExpr!17674) (Star!17674 (reg!18003 Regex!17674)) (EmptyLang!17674) (Union!17674 (regOne!35861 Regex!17674) (regTwo!35861 Regex!17674)) )
))
(declare-datatypes ((List!68549 0))(
  ( (Nil!68425) (Cons!68425 (h!74873 Regex!17674) (t!382334 List!68549)) )
))
(declare-datatypes ((Context!13340 0))(
  ( (Context!13341 (exprs!7170 List!68549)) )
))
(declare-fun lt!2550230 () (Set Context!13340))

(declare-fun lt!2550253 () (Set Context!13340))

(assert (=> b!7077917 (= res!2891110 (not (= lt!2550230 lt!2550253)))))

(declare-fun lt!2550228 () Context!13340)

(assert (=> b!7077917 (= lt!2550230 (set.insert lt!2550228 (as set.empty (Set Context!13340))))))

(declare-fun lambda!427094 () Int)

(declare-datatypes ((Unit!162059 0))(
  ( (Unit!162060) )
))
(declare-fun lt!2550250 () Unit!162059)

(declare-fun lt!2550254 () Context!13340)

(declare-fun ct2!306 () Context!13340)

(declare-fun lemmaConcatPreservesForall!985 (List!68549 List!68549 Int) Unit!162059)

(assert (=> b!7077917 (= lt!2550250 (lemmaConcatPreservesForall!985 (exprs!7170 lt!2550254) (exprs!7170 ct2!306) lambda!427094))))

(declare-fun b!7077918 () Bool)

(declare-fun res!2891098 () Bool)

(declare-fun e!4255258 () Bool)

(assert (=> b!7077918 (=> res!2891098 e!4255258)))

(declare-datatypes ((tuple2!68306 0))(
  ( (tuple2!68307 (_1!37456 List!68548) (_2!37456 List!68548)) )
))
(declare-fun lt!2550235 () tuple2!68306)

(declare-fun ++!15823 (List!68548 List!68548) List!68548)

(assert (=> b!7077918 (= res!2891098 (not (= (++!15823 (_1!37456 lt!2550235) (_2!37456 lt!2550235)) (t!382333 s!7408))))))

(declare-fun e!4255260 () Bool)

(assert (=> b!7077919 (= e!4255255 e!4255260)))

(declare-fun res!2891100 () Bool)

(assert (=> b!7077919 (=> res!2891100 e!4255260)))

(declare-fun lt!2550256 () (Set Context!13340))

(declare-fun derivationStepZipper!3124 ((Set Context!13340) C!35618) (Set Context!13340))

(assert (=> b!7077919 (= res!2891100 (not (= (derivationStepZipper!3124 lt!2550230 (h!74872 s!7408)) lt!2550256)))))

(declare-fun lambda!427095 () Int)

(declare-fun flatMap!2600 ((Set Context!13340) Int) (Set Context!13340))

(declare-fun derivationStepZipperUp!2258 (Context!13340 C!35618) (Set Context!13340))

(assert (=> b!7077919 (= (flatMap!2600 lt!2550230 lambda!427095) (derivationStepZipperUp!2258 lt!2550228 (h!74872 s!7408)))))

(declare-fun lt!2550239 () Unit!162059)

(declare-fun lemmaFlatMapOnSingletonSet!2109 ((Set Context!13340) Context!13340 Int) Unit!162059)

(assert (=> b!7077919 (= lt!2550239 (lemmaFlatMapOnSingletonSet!2109 lt!2550230 lt!2550228 lambda!427095))))

(assert (=> b!7077919 (= lt!2550256 (derivationStepZipperUp!2258 lt!2550228 (h!74872 s!7408)))))

(declare-fun lt!2550251 () Unit!162059)

(assert (=> b!7077919 (= lt!2550251 (lemmaConcatPreservesForall!985 (exprs!7170 lt!2550254) (exprs!7170 ct2!306) lambda!427094))))

(declare-fun e!4255257 () Bool)

(declare-fun z1!570 () (Set Context!13340))

(declare-datatypes ((List!68550 0))(
  ( (Nil!68426) (Cons!68426 (h!74874 Context!13340) (t!382335 List!68550)) )
))
(declare-fun exists!3743 (List!68550 Int) Bool)

(declare-fun toList!11015 ((Set Context!13340)) List!68550)

(assert (=> b!7077920 (= e!4255257 (exists!3743 (toList!11015 z1!570) lambda!427096))))

(declare-fun exists!3744 ((Set Context!13340) Int) Bool)

(assert (=> b!7077920 (exists!3744 z1!570 lambda!427096)))

(declare-fun lt!2550241 () Unit!162059)

(declare-fun lemmaContainsThenExists!166 ((Set Context!13340) Context!13340 Int) Unit!162059)

(assert (=> b!7077920 (= lt!2550241 (lemmaContainsThenExists!166 z1!570 lt!2550254 lambda!427096))))

(declare-fun lt!2550236 () (Set Context!13340))

(declare-fun lt!2550233 () (Set Context!13340))

(declare-datatypes ((Option!16985 0))(
  ( (None!16984) (Some!16984 (v!53278 tuple2!68306)) )
))
(declare-fun isDefined!13686 (Option!16985) Bool)

(declare-fun findConcatSeparationZippers!501 ((Set Context!13340) (Set Context!13340) List!68548 List!68548 List!68548) Option!16985)

(assert (=> b!7077920 (isDefined!13686 (findConcatSeparationZippers!501 lt!2550236 lt!2550233 Nil!68424 s!7408 s!7408))))

(declare-fun lt!2550245 () Unit!162059)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!87 ((Set Context!13340) (Set Context!13340) List!68548 List!68548 List!68548 List!68548 List!68548) Unit!162059)

(assert (=> b!7077920 (= lt!2550245 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!87 lt!2550236 lt!2550233 lt!2550229 (_2!37456 lt!2550235) s!7408 Nil!68424 s!7408))))

(declare-fun res!2891106 () Bool)

(declare-fun e!4255254 () Bool)

(assert (=> start!688138 (=> (not res!2891106) (not e!4255254))))

(declare-fun lt!2550255 () (Set Context!13340))

(declare-fun matchZipper!3214 ((Set Context!13340) List!68548) Bool)

(assert (=> start!688138 (= res!2891106 (matchZipper!3214 lt!2550255 s!7408))))

(declare-fun appendTo!795 ((Set Context!13340) Context!13340) (Set Context!13340))

(assert (=> start!688138 (= lt!2550255 (appendTo!795 z1!570 ct2!306))))

(assert (=> start!688138 e!4255254))

(declare-fun condSetEmpty!50416 () Bool)

(assert (=> start!688138 (= condSetEmpty!50416 (= z1!570 (as set.empty (Set Context!13340))))))

(declare-fun setRes!50416 () Bool)

(assert (=> start!688138 setRes!50416))

(declare-fun e!4255252 () Bool)

(declare-fun inv!87045 (Context!13340) Bool)

(assert (=> start!688138 (and (inv!87045 ct2!306) e!4255252)))

(declare-fun e!4255261 () Bool)

(assert (=> start!688138 e!4255261))

(declare-fun b!7077921 () Bool)

(declare-fun res!2891095 () Bool)

(assert (=> b!7077921 (=> (not res!2891095) (not e!4255254))))

(assert (=> b!7077921 (= res!2891095 (is-Cons!68424 s!7408))))

(declare-fun e!4255263 () Bool)

(declare-fun setNonEmpty!50416 () Bool)

(declare-fun setElem!50416 () Context!13340)

(declare-fun tp!1943102 () Bool)

(assert (=> setNonEmpty!50416 (= setRes!50416 (and tp!1943102 (inv!87045 setElem!50416) e!4255263))))

(declare-fun setRest!50416 () (Set Context!13340))

(assert (=> setNonEmpty!50416 (= z1!570 (set.union (set.insert setElem!50416 (as set.empty (Set Context!13340))) setRest!50416))))

(declare-fun b!7077922 () Bool)

(declare-fun res!2891104 () Bool)

(assert (=> b!7077922 (=> res!2891104 e!4255260)))

(assert (=> b!7077922 (= res!2891104 (not (is-Cons!68425 (exprs!7170 lt!2550254))))))

(declare-fun b!7077923 () Bool)

(declare-fun e!4255259 () Bool)

(declare-fun e!4255262 () Bool)

(assert (=> b!7077923 (= e!4255259 e!4255262)))

(declare-fun res!2891103 () Bool)

(assert (=> b!7077923 (=> res!2891103 e!4255262)))

(declare-fun lt!2550244 () (Set Context!13340))

(assert (=> b!7077923 (= res!2891103 (not (matchZipper!3214 lt!2550244 (t!382333 s!7408))))))

(declare-fun lt!2550249 () List!68549)

(declare-fun derivationStepZipperDown!2308 (Regex!17674 Context!13340 C!35618) (Set Context!13340))

(declare-fun ++!15824 (List!68549 List!68549) List!68549)

(assert (=> b!7077923 (= lt!2550244 (derivationStepZipperDown!2308 (h!74873 (exprs!7170 lt!2550254)) (Context!13341 (++!15824 lt!2550249 (exprs!7170 ct2!306))) (h!74872 s!7408)))))

(declare-fun lt!2550237 () Unit!162059)

(assert (=> b!7077923 (= lt!2550237 (lemmaConcatPreservesForall!985 lt!2550249 (exprs!7170 ct2!306) lambda!427094))))

(declare-fun b!7077924 () Bool)

(declare-fun tp_is_empty!44573 () Bool)

(declare-fun tp!1943103 () Bool)

(assert (=> b!7077924 (= e!4255261 (and tp_is_empty!44573 tp!1943103))))

(declare-fun b!7077925 () Bool)

(declare-fun e!4255253 () Bool)

(assert (=> b!7077925 (= e!4255258 e!4255253)))

(declare-fun res!2891102 () Bool)

(assert (=> b!7077925 (=> res!2891102 e!4255253)))

(declare-fun lt!2550247 () (Set Context!13340))

(declare-fun lt!2550238 () (Set Context!13340))

(declare-fun lt!2550227 () (Set Context!13340))

(assert (=> b!7077925 (= res!2891102 (or (not (= lt!2550247 lt!2550227)) (not (= lt!2550247 lt!2550238))))))

(assert (=> b!7077925 (= (flatMap!2600 lt!2550236 lambda!427095) (derivationStepZipperUp!2258 lt!2550254 (h!74872 s!7408)))))

(declare-fun lt!2550246 () Unit!162059)

(assert (=> b!7077925 (= lt!2550246 (lemmaFlatMapOnSingletonSet!2109 lt!2550236 lt!2550254 lambda!427095))))

(assert (=> b!7077925 (= lt!2550227 (derivationStepZipperUp!2258 lt!2550254 (h!74872 s!7408)))))

(assert (=> b!7077925 (= lt!2550247 (derivationStepZipper!3124 lt!2550236 (h!74872 s!7408)))))

(assert (=> b!7077925 (= lt!2550236 (set.insert lt!2550254 (as set.empty (Set Context!13340))))))

(declare-fun b!7077926 () Bool)

(declare-fun res!2891109 () Bool)

(assert (=> b!7077926 (=> res!2891109 e!4255258)))

(assert (=> b!7077926 (= res!2891109 (not (matchZipper!3214 lt!2550233 (_2!37456 lt!2550235))))))

(declare-fun b!7077927 () Bool)

(assert (=> b!7077927 (= e!4255253 e!4255257)))

(declare-fun res!2891105 () Bool)

(assert (=> b!7077927 (=> res!2891105 e!4255257)))

(assert (=> b!7077927 (= res!2891105 (not (matchZipper!3214 lt!2550236 lt!2550229)))))

(assert (=> b!7077927 (= lt!2550229 (Cons!68424 (h!74872 s!7408) (_1!37456 lt!2550235)))))

(declare-fun b!7077928 () Bool)

(declare-fun tp!1943104 () Bool)

(assert (=> b!7077928 (= e!4255263 tp!1943104)))

(declare-fun b!7077929 () Bool)

(declare-fun tp!1943101 () Bool)

(assert (=> b!7077929 (= e!4255252 tp!1943101)))

(declare-fun b!7077930 () Bool)

(assert (=> b!7077930 (= e!4255262 e!4255258)))

(declare-fun res!2891108 () Bool)

(assert (=> b!7077930 (=> res!2891108 e!4255258)))

(assert (=> b!7077930 (= res!2891108 (not (matchZipper!3214 lt!2550238 (_1!37456 lt!2550235))))))

(declare-fun lt!2550231 () Option!16985)

(declare-fun get!23973 (Option!16985) tuple2!68306)

(assert (=> b!7077930 (= lt!2550235 (get!23973 lt!2550231))))

(assert (=> b!7077930 (isDefined!13686 lt!2550231)))

(assert (=> b!7077930 (= lt!2550231 (findConcatSeparationZippers!501 lt!2550238 lt!2550233 Nil!68424 (t!382333 s!7408) (t!382333 s!7408)))))

(assert (=> b!7077930 (= lt!2550233 (set.insert ct2!306 (as set.empty (Set Context!13340))))))

(declare-fun lt!2550252 () Unit!162059)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!489 ((Set Context!13340) Context!13340 List!68548) Unit!162059)

(assert (=> b!7077930 (= lt!2550252 (lemmaConcatZipperMatchesStringThenFindConcatDefined!489 lt!2550238 ct2!306 (t!382333 s!7408)))))

(assert (=> b!7077930 (= lt!2550244 (appendTo!795 lt!2550238 ct2!306))))

(declare-fun lt!2550232 () Context!13340)

(assert (=> b!7077930 (= lt!2550238 (derivationStepZipperDown!2308 (h!74873 (exprs!7170 lt!2550254)) lt!2550232 (h!74872 s!7408)))))

(declare-fun lt!2550257 () Unit!162059)

(assert (=> b!7077930 (= lt!2550257 (lemmaConcatPreservesForall!985 lt!2550249 (exprs!7170 ct2!306) lambda!427094))))

(declare-fun lt!2550242 () Unit!162059)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!141 (Context!13340 Regex!17674 C!35618 Context!13340) Unit!162059)

(assert (=> b!7077930 (= lt!2550242 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!141 lt!2550232 (h!74873 (exprs!7170 lt!2550254)) (h!74872 s!7408) ct2!306))))

(declare-fun setIsEmpty!50416 () Bool)

(assert (=> setIsEmpty!50416 setRes!50416))

(declare-fun b!7077931 () Bool)

(declare-fun res!2891096 () Bool)

(declare-fun e!4255251 () Bool)

(assert (=> b!7077931 (=> res!2891096 e!4255251)))

(declare-fun lt!2550243 () Context!13340)

(assert (=> b!7077931 (= res!2891096 (not (set.member lt!2550243 lt!2550255)))))

(declare-fun b!7077932 () Bool)

(assert (=> b!7077932 (= e!4255260 e!4255259)))

(declare-fun res!2891107 () Bool)

(assert (=> b!7077932 (=> res!2891107 e!4255259)))

(declare-fun nullable!7357 (Regex!17674) Bool)

(assert (=> b!7077932 (= res!2891107 (nullable!7357 (h!74873 (exprs!7170 lt!2550254))))))

(assert (=> b!7077932 (= lt!2550232 (Context!13341 lt!2550249))))

(declare-fun tail!13876 (List!68549) List!68549)

(assert (=> b!7077932 (= lt!2550249 (tail!13876 (exprs!7170 lt!2550254)))))

(assert (=> b!7077933 (= e!4255251 e!4255256)))

(declare-fun res!2891101 () Bool)

(assert (=> b!7077933 (=> res!2891101 e!4255256)))

(assert (=> b!7077933 (= res!2891101 (or (not (= lt!2550228 lt!2550243)) (not (set.member lt!2550254 z1!570))))))

(assert (=> b!7077933 (= lt!2550228 (Context!13341 (++!15824 (exprs!7170 lt!2550254) (exprs!7170 ct2!306))))))

(declare-fun lt!2550234 () Unit!162059)

(assert (=> b!7077933 (= lt!2550234 (lemmaConcatPreservesForall!985 (exprs!7170 lt!2550254) (exprs!7170 ct2!306) lambda!427094))))

(declare-fun lambda!427093 () Int)

(declare-fun mapPost2!503 ((Set Context!13340) Int Context!13340) Context!13340)

(assert (=> b!7077933 (= lt!2550254 (mapPost2!503 z1!570 lambda!427093 lt!2550243))))

(assert (=> b!7077934 (= e!4255254 (not e!4255251))))

(declare-fun res!2891097 () Bool)

(assert (=> b!7077934 (=> res!2891097 e!4255251)))

(assert (=> b!7077934 (= res!2891097 (not (matchZipper!3214 lt!2550253 s!7408)))))

(assert (=> b!7077934 (= lt!2550253 (set.insert lt!2550243 (as set.empty (Set Context!13340))))))

(declare-fun getWitness!1793 ((Set Context!13340) Int) Context!13340)

(assert (=> b!7077934 (= lt!2550243 (getWitness!1793 lt!2550255 lambda!427092))))

(declare-fun lt!2550248 () List!68550)

(assert (=> b!7077934 (exists!3743 lt!2550248 lambda!427092)))

(declare-fun lt!2550240 () Unit!162059)

(declare-fun lemmaZipperMatchesExistsMatchingContext!595 (List!68550 List!68548) Unit!162059)

(assert (=> b!7077934 (= lt!2550240 (lemmaZipperMatchesExistsMatchingContext!595 lt!2550248 s!7408))))

(assert (=> b!7077934 (= lt!2550248 (toList!11015 lt!2550255))))

(declare-fun b!7077935 () Bool)

(declare-fun res!2891099 () Bool)

(assert (=> b!7077935 (=> res!2891099 e!4255260)))

(declare-fun isEmpty!39941 (List!68549) Bool)

(assert (=> b!7077935 (= res!2891099 (isEmpty!39941 (exprs!7170 lt!2550254)))))

(assert (= (and start!688138 res!2891106) b!7077921))

(assert (= (and b!7077921 res!2891095) b!7077934))

(assert (= (and b!7077934 (not res!2891097)) b!7077931))

(assert (= (and b!7077931 (not res!2891096)) b!7077933))

(assert (= (and b!7077933 (not res!2891101)) b!7077917))

(assert (= (and b!7077917 (not res!2891110)) b!7077919))

(assert (= (and b!7077919 (not res!2891100)) b!7077922))

(assert (= (and b!7077922 (not res!2891104)) b!7077935))

(assert (= (and b!7077935 (not res!2891099)) b!7077932))

(assert (= (and b!7077932 (not res!2891107)) b!7077923))

(assert (= (and b!7077923 (not res!2891103)) b!7077930))

(assert (= (and b!7077930 (not res!2891108)) b!7077926))

(assert (= (and b!7077926 (not res!2891109)) b!7077918))

(assert (= (and b!7077918 (not res!2891098)) b!7077925))

(assert (= (and b!7077925 (not res!2891102)) b!7077927))

(assert (= (and b!7077927 (not res!2891105)) b!7077920))

(assert (= (and start!688138 condSetEmpty!50416) setIsEmpty!50416))

(assert (= (and start!688138 (not condSetEmpty!50416)) setNonEmpty!50416))

(assert (= setNonEmpty!50416 b!7077928))

(assert (= start!688138 b!7077929))

(assert (= (and start!688138 (is-Cons!68424 s!7408)) b!7077924))

(declare-fun m!7806792 () Bool)

(assert (=> b!7077934 m!7806792))

(declare-fun m!7806794 () Bool)

(assert (=> b!7077934 m!7806794))

(declare-fun m!7806796 () Bool)

(assert (=> b!7077934 m!7806796))

(declare-fun m!7806798 () Bool)

(assert (=> b!7077934 m!7806798))

(declare-fun m!7806800 () Bool)

(assert (=> b!7077934 m!7806800))

(declare-fun m!7806802 () Bool)

(assert (=> b!7077934 m!7806802))

(declare-fun m!7806804 () Bool)

(assert (=> b!7077917 m!7806804))

(declare-fun m!7806806 () Bool)

(assert (=> b!7077917 m!7806806))

(declare-fun m!7806808 () Bool)

(assert (=> b!7077925 m!7806808))

(declare-fun m!7806810 () Bool)

(assert (=> b!7077925 m!7806810))

(declare-fun m!7806812 () Bool)

(assert (=> b!7077925 m!7806812))

(declare-fun m!7806814 () Bool)

(assert (=> b!7077925 m!7806814))

(declare-fun m!7806816 () Bool)

(assert (=> b!7077925 m!7806816))

(declare-fun m!7806818 () Bool)

(assert (=> setNonEmpty!50416 m!7806818))

(declare-fun m!7806820 () Bool)

(assert (=> b!7077932 m!7806820))

(declare-fun m!7806822 () Bool)

(assert (=> b!7077932 m!7806822))

(declare-fun m!7806824 () Bool)

(assert (=> b!7077935 m!7806824))

(declare-fun m!7806826 () Bool)

(assert (=> b!7077930 m!7806826))

(declare-fun m!7806828 () Bool)

(assert (=> b!7077930 m!7806828))

(declare-fun m!7806830 () Bool)

(assert (=> b!7077930 m!7806830))

(declare-fun m!7806832 () Bool)

(assert (=> b!7077930 m!7806832))

(declare-fun m!7806834 () Bool)

(assert (=> b!7077930 m!7806834))

(declare-fun m!7806836 () Bool)

(assert (=> b!7077930 m!7806836))

(declare-fun m!7806838 () Bool)

(assert (=> b!7077930 m!7806838))

(declare-fun m!7806840 () Bool)

(assert (=> b!7077930 m!7806840))

(declare-fun m!7806842 () Bool)

(assert (=> b!7077930 m!7806842))

(declare-fun m!7806844 () Bool)

(assert (=> b!7077930 m!7806844))

(declare-fun m!7806846 () Bool)

(assert (=> start!688138 m!7806846))

(declare-fun m!7806848 () Bool)

(assert (=> start!688138 m!7806848))

(declare-fun m!7806850 () Bool)

(assert (=> start!688138 m!7806850))

(declare-fun m!7806852 () Bool)

(assert (=> b!7077933 m!7806852))

(declare-fun m!7806854 () Bool)

(assert (=> b!7077933 m!7806854))

(assert (=> b!7077933 m!7806806))

(declare-fun m!7806856 () Bool)

(assert (=> b!7077933 m!7806856))

(declare-fun m!7806858 () Bool)

(assert (=> b!7077920 m!7806858))

(declare-fun m!7806860 () Bool)

(assert (=> b!7077920 m!7806860))

(declare-fun m!7806862 () Bool)

(assert (=> b!7077920 m!7806862))

(declare-fun m!7806864 () Bool)

(assert (=> b!7077920 m!7806864))

(declare-fun m!7806866 () Bool)

(assert (=> b!7077920 m!7806866))

(assert (=> b!7077920 m!7806858))

(declare-fun m!7806868 () Bool)

(assert (=> b!7077920 m!7806868))

(assert (=> b!7077920 m!7806864))

(declare-fun m!7806870 () Bool)

(assert (=> b!7077920 m!7806870))

(declare-fun m!7806872 () Bool)

(assert (=> b!7077927 m!7806872))

(declare-fun m!7806874 () Bool)

(assert (=> b!7077919 m!7806874))

(declare-fun m!7806876 () Bool)

(assert (=> b!7077919 m!7806876))

(assert (=> b!7077919 m!7806806))

(declare-fun m!7806878 () Bool)

(assert (=> b!7077919 m!7806878))

(declare-fun m!7806880 () Bool)

(assert (=> b!7077919 m!7806880))

(declare-fun m!7806882 () Bool)

(assert (=> b!7077931 m!7806882))

(declare-fun m!7806884 () Bool)

(assert (=> b!7077918 m!7806884))

(declare-fun m!7806886 () Bool)

(assert (=> b!7077926 m!7806886))

(declare-fun m!7806888 () Bool)

(assert (=> b!7077923 m!7806888))

(declare-fun m!7806890 () Bool)

(assert (=> b!7077923 m!7806890))

(declare-fun m!7806892 () Bool)

(assert (=> b!7077923 m!7806892))

(assert (=> b!7077923 m!7806844))

(push 1)

(assert (not b!7077918))

(assert (not b!7077917))

(assert (not b!7077934))

(assert (not start!688138))

(assert (not b!7077925))

(assert (not b!7077928))

(assert (not b!7077935))

(assert (not b!7077932))

(assert tp_is_empty!44573)

(assert (not b!7077920))

(assert (not setNonEmpty!50416))

(assert (not b!7077924))

(assert (not b!7077926))

(assert (not b!7077919))

(assert (not b!7077933))

(assert (not b!7077923))

(assert (not b!7077927))

(assert (not b!7077929))

(assert (not b!7077930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2213657 () Bool)

(declare-fun c!1320757 () Bool)

(declare-fun isEmpty!39943 (List!68548) Bool)

(assert (=> d!2213657 (= c!1320757 (isEmpty!39943 s!7408))))

(declare-fun e!4255305 () Bool)

(assert (=> d!2213657 (= (matchZipper!3214 lt!2550253 s!7408) e!4255305)))

(declare-fun b!7078009 () Bool)

(declare-fun nullableZipper!2718 ((Set Context!13340)) Bool)

(assert (=> b!7078009 (= e!4255305 (nullableZipper!2718 lt!2550253))))

(declare-fun b!7078010 () Bool)

(declare-fun head!14427 (List!68548) C!35618)

(declare-fun tail!13878 (List!68548) List!68548)

(assert (=> b!7078010 (= e!4255305 (matchZipper!3214 (derivationStepZipper!3124 lt!2550253 (head!14427 s!7408)) (tail!13878 s!7408)))))

(assert (= (and d!2213657 c!1320757) b!7078009))

(assert (= (and d!2213657 (not c!1320757)) b!7078010))

(declare-fun m!7806996 () Bool)

(assert (=> d!2213657 m!7806996))

(declare-fun m!7806998 () Bool)

(assert (=> b!7078009 m!7806998))

(declare-fun m!7807000 () Bool)

(assert (=> b!7078010 m!7807000))

(assert (=> b!7078010 m!7807000))

(declare-fun m!7807002 () Bool)

(assert (=> b!7078010 m!7807002))

(declare-fun m!7807004 () Bool)

(assert (=> b!7078010 m!7807004))

(assert (=> b!7078010 m!7807002))

(assert (=> b!7078010 m!7807004))

(declare-fun m!7807006 () Bool)

(assert (=> b!7078010 m!7807006))

(assert (=> b!7077934 d!2213657))

(declare-fun d!2213659 () Bool)

(declare-fun e!4255308 () Bool)

(assert (=> d!2213659 e!4255308))

(declare-fun res!2891162 () Bool)

(assert (=> d!2213659 (=> (not res!2891162) (not e!4255308))))

(declare-fun lt!2550355 () List!68550)

(declare-fun noDuplicate!2745 (List!68550) Bool)

(assert (=> d!2213659 (= res!2891162 (noDuplicate!2745 lt!2550355))))

(declare-fun choose!54365 ((Set Context!13340)) List!68550)

(assert (=> d!2213659 (= lt!2550355 (choose!54365 lt!2550255))))

(assert (=> d!2213659 (= (toList!11015 lt!2550255) lt!2550355)))

(declare-fun b!7078013 () Bool)

(declare-fun content!13844 (List!68550) (Set Context!13340))

(assert (=> b!7078013 (= e!4255308 (= (content!13844 lt!2550355) lt!2550255))))

(assert (= (and d!2213659 res!2891162) b!7078013))

(declare-fun m!7807008 () Bool)

(assert (=> d!2213659 m!7807008))

(declare-fun m!7807010 () Bool)

(assert (=> d!2213659 m!7807010))

(declare-fun m!7807012 () Bool)

(assert (=> b!7078013 m!7807012))

(assert (=> b!7077934 d!2213659))

(declare-fun bs!1881587 () Bool)

(declare-fun d!2213661 () Bool)

(assert (= bs!1881587 (and d!2213661 b!7077934)))

(declare-fun lambda!427130 () Int)

(assert (=> bs!1881587 (= lambda!427130 lambda!427092)))

(declare-fun bs!1881588 () Bool)

(assert (= bs!1881588 (and d!2213661 b!7077920)))

(assert (=> bs!1881588 (= (= s!7408 lt!2550229) (= lambda!427130 lambda!427096))))

(assert (=> d!2213661 true))

(assert (=> d!2213661 (exists!3743 lt!2550248 lambda!427130)))

(declare-fun lt!2550358 () Unit!162059)

(declare-fun choose!54366 (List!68550 List!68548) Unit!162059)

(assert (=> d!2213661 (= lt!2550358 (choose!54366 lt!2550248 s!7408))))

(assert (=> d!2213661 (matchZipper!3214 (content!13844 lt!2550248) s!7408)))

(assert (=> d!2213661 (= (lemmaZipperMatchesExistsMatchingContext!595 lt!2550248 s!7408) lt!2550358)))

(declare-fun bs!1881589 () Bool)

(assert (= bs!1881589 d!2213661))

(declare-fun m!7807014 () Bool)

(assert (=> bs!1881589 m!7807014))

(declare-fun m!7807016 () Bool)

(assert (=> bs!1881589 m!7807016))

(declare-fun m!7807018 () Bool)

(assert (=> bs!1881589 m!7807018))

(assert (=> bs!1881589 m!7807018))

(declare-fun m!7807020 () Bool)

(assert (=> bs!1881589 m!7807020))

(assert (=> b!7077934 d!2213661))

(declare-fun d!2213663 () Bool)

(declare-fun e!4255311 () Bool)

(assert (=> d!2213663 e!4255311))

(declare-fun res!2891165 () Bool)

(assert (=> d!2213663 (=> (not res!2891165) (not e!4255311))))

(declare-fun lt!2550361 () Context!13340)

(declare-fun dynLambda!27870 (Int Context!13340) Bool)

(assert (=> d!2213663 (= res!2891165 (dynLambda!27870 lambda!427092 lt!2550361))))

(declare-fun getWitness!1795 (List!68550 Int) Context!13340)

(assert (=> d!2213663 (= lt!2550361 (getWitness!1795 (toList!11015 lt!2550255) lambda!427092))))

(assert (=> d!2213663 (exists!3744 lt!2550255 lambda!427092)))

(assert (=> d!2213663 (= (getWitness!1793 lt!2550255 lambda!427092) lt!2550361)))

(declare-fun b!7078016 () Bool)

(assert (=> b!7078016 (= e!4255311 (set.member lt!2550361 lt!2550255))))

(assert (= (and d!2213663 res!2891165) b!7078016))

(declare-fun b_lambda!270377 () Bool)

(assert (=> (not b_lambda!270377) (not d!2213663)))

(declare-fun m!7807022 () Bool)

(assert (=> d!2213663 m!7807022))

(assert (=> d!2213663 m!7806800))

(assert (=> d!2213663 m!7806800))

(declare-fun m!7807024 () Bool)

(assert (=> d!2213663 m!7807024))

(declare-fun m!7807026 () Bool)

(assert (=> d!2213663 m!7807026))

(declare-fun m!7807028 () Bool)

(assert (=> b!7078016 m!7807028))

(assert (=> b!7077934 d!2213663))

(declare-fun bs!1881590 () Bool)

(declare-fun d!2213665 () Bool)

(assert (= bs!1881590 (and d!2213665 b!7077934)))

(declare-fun lambda!427133 () Int)

(assert (=> bs!1881590 (not (= lambda!427133 lambda!427092))))

(declare-fun bs!1881591 () Bool)

(assert (= bs!1881591 (and d!2213665 b!7077920)))

(assert (=> bs!1881591 (not (= lambda!427133 lambda!427096))))

(declare-fun bs!1881592 () Bool)

(assert (= bs!1881592 (and d!2213665 d!2213661)))

(assert (=> bs!1881592 (not (= lambda!427133 lambda!427130))))

(assert (=> d!2213665 true))

(declare-fun order!28447 () Int)

(declare-fun dynLambda!27871 (Int Int) Int)

(assert (=> d!2213665 (< (dynLambda!27871 order!28447 lambda!427092) (dynLambda!27871 order!28447 lambda!427133))))

(declare-fun forall!16633 (List!68550 Int) Bool)

(assert (=> d!2213665 (= (exists!3743 lt!2550248 lambda!427092) (not (forall!16633 lt!2550248 lambda!427133)))))

(declare-fun bs!1881593 () Bool)

(assert (= bs!1881593 d!2213665))

(declare-fun m!7807030 () Bool)

(assert (=> bs!1881593 m!7807030))

(assert (=> b!7077934 d!2213665))

(declare-fun d!2213667 () Bool)

(declare-fun c!1320760 () Bool)

(assert (=> d!2213667 (= c!1320760 (isEmpty!39943 s!7408))))

(declare-fun e!4255312 () Bool)

(assert (=> d!2213667 (= (matchZipper!3214 lt!2550255 s!7408) e!4255312)))

(declare-fun b!7078019 () Bool)

(assert (=> b!7078019 (= e!4255312 (nullableZipper!2718 lt!2550255))))

(declare-fun b!7078020 () Bool)

(assert (=> b!7078020 (= e!4255312 (matchZipper!3214 (derivationStepZipper!3124 lt!2550255 (head!14427 s!7408)) (tail!13878 s!7408)))))

(assert (= (and d!2213667 c!1320760) b!7078019))

(assert (= (and d!2213667 (not c!1320760)) b!7078020))

(assert (=> d!2213667 m!7806996))

(declare-fun m!7807032 () Bool)

(assert (=> b!7078019 m!7807032))

(assert (=> b!7078020 m!7807000))

(assert (=> b!7078020 m!7807000))

(declare-fun m!7807034 () Bool)

(assert (=> b!7078020 m!7807034))

(assert (=> b!7078020 m!7807004))

(assert (=> b!7078020 m!7807034))

(assert (=> b!7078020 m!7807004))

(declare-fun m!7807036 () Bool)

(assert (=> b!7078020 m!7807036))

(assert (=> start!688138 d!2213667))

(declare-fun bs!1881594 () Bool)

(declare-fun d!2213669 () Bool)

(assert (= bs!1881594 (and d!2213669 b!7077933)))

(declare-fun lambda!427138 () Int)

(assert (=> bs!1881594 (= lambda!427138 lambda!427093)))

(assert (=> d!2213669 true))

(declare-fun map!16024 ((Set Context!13340) Int) (Set Context!13340))

(assert (=> d!2213669 (= (appendTo!795 z1!570 ct2!306) (map!16024 z1!570 lambda!427138))))

(declare-fun bs!1881595 () Bool)

(assert (= bs!1881595 d!2213669))

(declare-fun m!7807038 () Bool)

(assert (=> bs!1881595 m!7807038))

(assert (=> start!688138 d!2213669))

(declare-fun bs!1881596 () Bool)

(declare-fun d!2213671 () Bool)

(assert (= bs!1881596 (and d!2213671 b!7077933)))

(declare-fun lambda!427141 () Int)

(assert (=> bs!1881596 (= lambda!427141 lambda!427094)))

(declare-fun forall!16634 (List!68549 Int) Bool)

(assert (=> d!2213671 (= (inv!87045 ct2!306) (forall!16634 (exprs!7170 ct2!306) lambda!427141))))

(declare-fun bs!1881597 () Bool)

(assert (= bs!1881597 d!2213671))

(declare-fun m!7807040 () Bool)

(assert (=> bs!1881597 m!7807040))

(assert (=> start!688138 d!2213671))

(declare-fun d!2213673 () Bool)

(assert (=> d!2213673 (= (isEmpty!39941 (exprs!7170 lt!2550254)) (is-Nil!68425 (exprs!7170 lt!2550254)))))

(assert (=> b!7077935 d!2213673))

(declare-fun d!2213675 () Bool)

(declare-fun choose!54367 ((Set Context!13340) Int) (Set Context!13340))

(assert (=> d!2213675 (= (flatMap!2600 lt!2550236 lambda!427095) (choose!54367 lt!2550236 lambda!427095))))

(declare-fun bs!1881598 () Bool)

(assert (= bs!1881598 d!2213675))

(declare-fun m!7807042 () Bool)

(assert (=> bs!1881598 m!7807042))

(assert (=> b!7077925 d!2213675))

(declare-fun b!7078031 () Bool)

(declare-fun e!4255319 () (Set Context!13340))

(assert (=> b!7078031 (= e!4255319 (as set.empty (Set Context!13340)))))

(declare-fun b!7078032 () Bool)

(declare-fun e!4255321 () (Set Context!13340))

(assert (=> b!7078032 (= e!4255321 e!4255319)))

(declare-fun c!1320767 () Bool)

(assert (=> b!7078032 (= c!1320767 (is-Cons!68425 (exprs!7170 lt!2550254)))))

(declare-fun bm!643307 () Bool)

(declare-fun call!643312 () (Set Context!13340))

(assert (=> bm!643307 (= call!643312 (derivationStepZipperDown!2308 (h!74873 (exprs!7170 lt!2550254)) (Context!13341 (t!382334 (exprs!7170 lt!2550254))) (h!74872 s!7408)))))

(declare-fun b!7078033 () Bool)

(declare-fun e!4255320 () Bool)

(assert (=> b!7078033 (= e!4255320 (nullable!7357 (h!74873 (exprs!7170 lt!2550254))))))

(declare-fun d!2213677 () Bool)

(declare-fun c!1320766 () Bool)

(assert (=> d!2213677 (= c!1320766 e!4255320)))

(declare-fun res!2891169 () Bool)

(assert (=> d!2213677 (=> (not res!2891169) (not e!4255320))))

(assert (=> d!2213677 (= res!2891169 (is-Cons!68425 (exprs!7170 lt!2550254)))))

(assert (=> d!2213677 (= (derivationStepZipperUp!2258 lt!2550254 (h!74872 s!7408)) e!4255321)))

(declare-fun b!7078034 () Bool)

(assert (=> b!7078034 (= e!4255321 (set.union call!643312 (derivationStepZipperUp!2258 (Context!13341 (t!382334 (exprs!7170 lt!2550254))) (h!74872 s!7408))))))

(declare-fun b!7078035 () Bool)

(assert (=> b!7078035 (= e!4255319 call!643312)))

(assert (= (and d!2213677 res!2891169) b!7078033))

(assert (= (and d!2213677 c!1320766) b!7078034))

(assert (= (and d!2213677 (not c!1320766)) b!7078032))

(assert (= (and b!7078032 c!1320767) b!7078035))

(assert (= (and b!7078032 (not c!1320767)) b!7078031))

(assert (= (or b!7078034 b!7078035) bm!643307))

(declare-fun m!7807044 () Bool)

(assert (=> bm!643307 m!7807044))

(assert (=> b!7078033 m!7806820))

(declare-fun m!7807046 () Bool)

(assert (=> b!7078034 m!7807046))

(assert (=> b!7077925 d!2213677))

(declare-fun d!2213679 () Bool)

(declare-fun dynLambda!27872 (Int Context!13340) (Set Context!13340))

(assert (=> d!2213679 (= (flatMap!2600 lt!2550236 lambda!427095) (dynLambda!27872 lambda!427095 lt!2550254))))

(declare-fun lt!2550366 () Unit!162059)

(declare-fun choose!54368 ((Set Context!13340) Context!13340 Int) Unit!162059)

(assert (=> d!2213679 (= lt!2550366 (choose!54368 lt!2550236 lt!2550254 lambda!427095))))

(assert (=> d!2213679 (= lt!2550236 (set.insert lt!2550254 (as set.empty (Set Context!13340))))))

(assert (=> d!2213679 (= (lemmaFlatMapOnSingletonSet!2109 lt!2550236 lt!2550254 lambda!427095) lt!2550366)))

(declare-fun b_lambda!270379 () Bool)

(assert (=> (not b_lambda!270379) (not d!2213679)))

(declare-fun bs!1881599 () Bool)

(assert (= bs!1881599 d!2213679))

(assert (=> bs!1881599 m!7806814))

(declare-fun m!7807048 () Bool)

(assert (=> bs!1881599 m!7807048))

(declare-fun m!7807050 () Bool)

(assert (=> bs!1881599 m!7807050))

(assert (=> bs!1881599 m!7806810))

(assert (=> b!7077925 d!2213679))

(declare-fun bs!1881600 () Bool)

(declare-fun d!2213681 () Bool)

(assert (= bs!1881600 (and d!2213681 b!7077919)))

(declare-fun lambda!427144 () Int)

(assert (=> bs!1881600 (= lambda!427144 lambda!427095)))

(assert (=> d!2213681 true))

(assert (=> d!2213681 (= (derivationStepZipper!3124 lt!2550236 (h!74872 s!7408)) (flatMap!2600 lt!2550236 lambda!427144))))

(declare-fun bs!1881601 () Bool)

(assert (= bs!1881601 d!2213681))

(declare-fun m!7807052 () Bool)

(assert (=> bs!1881601 m!7807052))

(assert (=> b!7077925 d!2213681))

(declare-fun e!4255327 () Bool)

(declare-fun b!7078049 () Bool)

(declare-fun lt!2550369 () List!68549)

(assert (=> b!7078049 (= e!4255327 (or (not (= (exprs!7170 ct2!306) Nil!68425)) (= lt!2550369 (exprs!7170 lt!2550254))))))

(declare-fun b!7078047 () Bool)

(declare-fun e!4255326 () List!68549)

(assert (=> b!7078047 (= e!4255326 (Cons!68425 (h!74873 (exprs!7170 lt!2550254)) (++!15824 (t!382334 (exprs!7170 lt!2550254)) (exprs!7170 ct2!306))))))

(declare-fun b!7078046 () Bool)

(assert (=> b!7078046 (= e!4255326 (exprs!7170 ct2!306))))

(declare-fun b!7078048 () Bool)

(declare-fun res!2891175 () Bool)

(assert (=> b!7078048 (=> (not res!2891175) (not e!4255327))))

(declare-fun size!41242 (List!68549) Int)

(assert (=> b!7078048 (= res!2891175 (= (size!41242 lt!2550369) (+ (size!41242 (exprs!7170 lt!2550254)) (size!41242 (exprs!7170 ct2!306)))))))

(declare-fun d!2213683 () Bool)

(assert (=> d!2213683 e!4255327))

(declare-fun res!2891174 () Bool)

(assert (=> d!2213683 (=> (not res!2891174) (not e!4255327))))

(declare-fun content!13845 (List!68549) (Set Regex!17674))

(assert (=> d!2213683 (= res!2891174 (= (content!13845 lt!2550369) (set.union (content!13845 (exprs!7170 lt!2550254)) (content!13845 (exprs!7170 ct2!306)))))))

(assert (=> d!2213683 (= lt!2550369 e!4255326)))

(declare-fun c!1320772 () Bool)

(assert (=> d!2213683 (= c!1320772 (is-Nil!68425 (exprs!7170 lt!2550254)))))

(assert (=> d!2213683 (= (++!15824 (exprs!7170 lt!2550254) (exprs!7170 ct2!306)) lt!2550369)))

(assert (= (and d!2213683 c!1320772) b!7078046))

(assert (= (and d!2213683 (not c!1320772)) b!7078047))

(assert (= (and d!2213683 res!2891174) b!7078048))

(assert (= (and b!7078048 res!2891175) b!7078049))

(declare-fun m!7807054 () Bool)

(assert (=> b!7078047 m!7807054))

(declare-fun m!7807056 () Bool)

(assert (=> b!7078048 m!7807056))

(declare-fun m!7807058 () Bool)

(assert (=> b!7078048 m!7807058))

(declare-fun m!7807060 () Bool)

(assert (=> b!7078048 m!7807060))

(declare-fun m!7807062 () Bool)

(assert (=> d!2213683 m!7807062))

(declare-fun m!7807064 () Bool)

(assert (=> d!2213683 m!7807064))

(declare-fun m!7807066 () Bool)

(assert (=> d!2213683 m!7807066))

(assert (=> b!7077933 d!2213683))

(declare-fun d!2213685 () Bool)

(assert (=> d!2213685 (forall!16634 (++!15824 (exprs!7170 lt!2550254) (exprs!7170 ct2!306)) lambda!427094)))

(declare-fun lt!2550372 () Unit!162059)

(declare-fun choose!54369 (List!68549 List!68549 Int) Unit!162059)

(assert (=> d!2213685 (= lt!2550372 (choose!54369 (exprs!7170 lt!2550254) (exprs!7170 ct2!306) lambda!427094))))

(assert (=> d!2213685 (forall!16634 (exprs!7170 lt!2550254) lambda!427094)))

(assert (=> d!2213685 (= (lemmaConcatPreservesForall!985 (exprs!7170 lt!2550254) (exprs!7170 ct2!306) lambda!427094) lt!2550372)))

(declare-fun bs!1881602 () Bool)

(assert (= bs!1881602 d!2213685))

(assert (=> bs!1881602 m!7806854))

(assert (=> bs!1881602 m!7806854))

(declare-fun m!7807068 () Bool)

(assert (=> bs!1881602 m!7807068))

(declare-fun m!7807070 () Bool)

(assert (=> bs!1881602 m!7807070))

(declare-fun m!7807072 () Bool)

(assert (=> bs!1881602 m!7807072))

(assert (=> b!7077933 d!2213685))

(declare-fun d!2213687 () Bool)

(declare-fun e!4255330 () Bool)

(assert (=> d!2213687 e!4255330))

(declare-fun res!2891178 () Bool)

(assert (=> d!2213687 (=> (not res!2891178) (not e!4255330))))

(declare-fun lt!2550375 () Context!13340)

(declare-fun dynLambda!27873 (Int Context!13340) Context!13340)

(assert (=> d!2213687 (= res!2891178 (= lt!2550243 (dynLambda!27873 lambda!427093 lt!2550375)))))

(declare-fun choose!54370 ((Set Context!13340) Int Context!13340) Context!13340)

(assert (=> d!2213687 (= lt!2550375 (choose!54370 z1!570 lambda!427093 lt!2550243))))

(assert (=> d!2213687 (set.member lt!2550243 (map!16024 z1!570 lambda!427093))))

(assert (=> d!2213687 (= (mapPost2!503 z1!570 lambda!427093 lt!2550243) lt!2550375)))

(declare-fun b!7078053 () Bool)

(assert (=> b!7078053 (= e!4255330 (set.member lt!2550375 z1!570))))

(assert (= (and d!2213687 res!2891178) b!7078053))

(declare-fun b_lambda!270381 () Bool)

(assert (=> (not b_lambda!270381) (not d!2213687)))

(declare-fun m!7807074 () Bool)

(assert (=> d!2213687 m!7807074))

(declare-fun m!7807076 () Bool)

(assert (=> d!2213687 m!7807076))

(declare-fun m!7807078 () Bool)

(assert (=> d!2213687 m!7807078))

(declare-fun m!7807080 () Bool)

(assert (=> d!2213687 m!7807080))

(declare-fun m!7807082 () Bool)

(assert (=> b!7078053 m!7807082))

(assert (=> b!7077933 d!2213687))

(declare-fun d!2213689 () Bool)

(declare-fun c!1320773 () Bool)

(assert (=> d!2213689 (= c!1320773 (isEmpty!39943 (t!382333 s!7408)))))

(declare-fun e!4255331 () Bool)

(assert (=> d!2213689 (= (matchZipper!3214 lt!2550244 (t!382333 s!7408)) e!4255331)))

(declare-fun b!7078054 () Bool)

(assert (=> b!7078054 (= e!4255331 (nullableZipper!2718 lt!2550244))))

(declare-fun b!7078055 () Bool)

(assert (=> b!7078055 (= e!4255331 (matchZipper!3214 (derivationStepZipper!3124 lt!2550244 (head!14427 (t!382333 s!7408))) (tail!13878 (t!382333 s!7408))))))

(assert (= (and d!2213689 c!1320773) b!7078054))

(assert (= (and d!2213689 (not c!1320773)) b!7078055))

(declare-fun m!7807084 () Bool)

(assert (=> d!2213689 m!7807084))

(declare-fun m!7807086 () Bool)

(assert (=> b!7078054 m!7807086))

(declare-fun m!7807088 () Bool)

(assert (=> b!7078055 m!7807088))

(assert (=> b!7078055 m!7807088))

(declare-fun m!7807090 () Bool)

(assert (=> b!7078055 m!7807090))

(declare-fun m!7807092 () Bool)

(assert (=> b!7078055 m!7807092))

(assert (=> b!7078055 m!7807090))

(assert (=> b!7078055 m!7807092))

(declare-fun m!7807094 () Bool)

(assert (=> b!7078055 m!7807094))

(assert (=> b!7077923 d!2213689))

(declare-fun bm!643320 () Bool)

(declare-fun call!643325 () (Set Context!13340))

(declare-fun call!643330 () (Set Context!13340))

(assert (=> bm!643320 (= call!643325 call!643330)))

(declare-fun d!2213691 () Bool)

(declare-fun c!1320787 () Bool)

(assert (=> d!2213691 (= c!1320787 (and (is-ElementMatch!17674 (h!74873 (exprs!7170 lt!2550254))) (= (c!1320739 (h!74873 (exprs!7170 lt!2550254))) (h!74872 s!7408))))))

(declare-fun e!4255348 () (Set Context!13340))

(assert (=> d!2213691 (= (derivationStepZipperDown!2308 (h!74873 (exprs!7170 lt!2550254)) (Context!13341 (++!15824 lt!2550249 (exprs!7170 ct2!306))) (h!74872 s!7408)) e!4255348)))

(declare-fun b!7078078 () Bool)

(declare-fun e!4255349 () (Set Context!13340))

(declare-fun e!4255346 () (Set Context!13340))

(assert (=> b!7078078 (= e!4255349 e!4255346)))

(declare-fun c!1320785 () Bool)

(assert (=> b!7078078 (= c!1320785 (is-Concat!26519 (h!74873 (exprs!7170 lt!2550254))))))

(declare-fun b!7078079 () Bool)

(declare-fun call!643326 () (Set Context!13340))

(assert (=> b!7078079 (= e!4255349 (set.union call!643326 call!643330))))

(declare-fun b!7078080 () Bool)

(declare-fun e!4255344 () Bool)

(assert (=> b!7078080 (= e!4255344 (nullable!7357 (regOne!35860 (h!74873 (exprs!7170 lt!2550254)))))))

(declare-fun call!643329 () List!68549)

(declare-fun bm!643321 () Bool)

(declare-fun c!1320784 () Bool)

(assert (=> bm!643321 (= call!643326 (derivationStepZipperDown!2308 (ite c!1320784 (regTwo!35861 (h!74873 (exprs!7170 lt!2550254))) (regOne!35860 (h!74873 (exprs!7170 lt!2550254)))) (ite c!1320784 (Context!13341 (++!15824 lt!2550249 (exprs!7170 ct2!306))) (Context!13341 call!643329)) (h!74872 s!7408)))))

(declare-fun b!7078081 () Bool)

(assert (=> b!7078081 (= e!4255348 (set.insert (Context!13341 (++!15824 lt!2550249 (exprs!7170 ct2!306))) (as set.empty (Set Context!13340))))))

(declare-fun b!7078082 () Bool)

(declare-fun c!1320786 () Bool)

(assert (=> b!7078082 (= c!1320786 e!4255344)))

(declare-fun res!2891181 () Bool)

(assert (=> b!7078082 (=> (not res!2891181) (not e!4255344))))

(assert (=> b!7078082 (= res!2891181 (is-Concat!26519 (h!74873 (exprs!7170 lt!2550254))))))

(declare-fun e!4255347 () (Set Context!13340))

(assert (=> b!7078082 (= e!4255347 e!4255349)))

(declare-fun bm!643322 () Bool)

(declare-fun call!643328 () (Set Context!13340))

(assert (=> bm!643322 (= call!643330 call!643328)))

(declare-fun b!7078083 () Bool)

(assert (=> b!7078083 (= e!4255347 (set.union call!643328 call!643326))))

(declare-fun b!7078084 () Bool)

(assert (=> b!7078084 (= e!4255348 e!4255347)))

(assert (=> b!7078084 (= c!1320784 (is-Union!17674 (h!74873 (exprs!7170 lt!2550254))))))

(declare-fun b!7078085 () Bool)

(declare-fun e!4255345 () (Set Context!13340))

(assert (=> b!7078085 (= e!4255345 (as set.empty (Set Context!13340)))))

(declare-fun b!7078086 () Bool)

(assert (=> b!7078086 (= e!4255346 call!643325)))

(declare-fun b!7078087 () Bool)

(assert (=> b!7078087 (= e!4255345 call!643325)))

(declare-fun bm!643323 () Bool)

(declare-fun $colon$colon!2675 (List!68549 Regex!17674) List!68549)

(assert (=> bm!643323 (= call!643329 ($colon$colon!2675 (exprs!7170 (Context!13341 (++!15824 lt!2550249 (exprs!7170 ct2!306)))) (ite (or c!1320786 c!1320785) (regTwo!35860 (h!74873 (exprs!7170 lt!2550254))) (h!74873 (exprs!7170 lt!2550254)))))))

(declare-fun b!7078088 () Bool)

(declare-fun c!1320788 () Bool)

(assert (=> b!7078088 (= c!1320788 (is-Star!17674 (h!74873 (exprs!7170 lt!2550254))))))

(assert (=> b!7078088 (= e!4255346 e!4255345)))

(declare-fun bm!643324 () Bool)

(declare-fun call!643327 () List!68549)

(assert (=> bm!643324 (= call!643327 call!643329)))

(declare-fun bm!643325 () Bool)

(assert (=> bm!643325 (= call!643328 (derivationStepZipperDown!2308 (ite c!1320784 (regOne!35861 (h!74873 (exprs!7170 lt!2550254))) (ite c!1320786 (regTwo!35860 (h!74873 (exprs!7170 lt!2550254))) (ite c!1320785 (regOne!35860 (h!74873 (exprs!7170 lt!2550254))) (reg!18003 (h!74873 (exprs!7170 lt!2550254)))))) (ite (or c!1320784 c!1320786) (Context!13341 (++!15824 lt!2550249 (exprs!7170 ct2!306))) (Context!13341 call!643327)) (h!74872 s!7408)))))

(assert (= (and d!2213691 c!1320787) b!7078081))

(assert (= (and d!2213691 (not c!1320787)) b!7078084))

(assert (= (and b!7078084 c!1320784) b!7078083))

(assert (= (and b!7078084 (not c!1320784)) b!7078082))

(assert (= (and b!7078082 res!2891181) b!7078080))

(assert (= (and b!7078082 c!1320786) b!7078079))

(assert (= (and b!7078082 (not c!1320786)) b!7078078))

(assert (= (and b!7078078 c!1320785) b!7078086))

(assert (= (and b!7078078 (not c!1320785)) b!7078088))

(assert (= (and b!7078088 c!1320788) b!7078087))

(assert (= (and b!7078088 (not c!1320788)) b!7078085))

(assert (= (or b!7078086 b!7078087) bm!643324))

(assert (= (or b!7078086 b!7078087) bm!643320))

(assert (= (or b!7078079 bm!643320) bm!643322))

(assert (= (or b!7078079 bm!643324) bm!643323))

(assert (= (or b!7078083 bm!643322) bm!643325))

(assert (= (or b!7078083 b!7078079) bm!643321))

(declare-fun m!7807096 () Bool)

(assert (=> bm!643321 m!7807096))

(declare-fun m!7807098 () Bool)

(assert (=> b!7078081 m!7807098))

(declare-fun m!7807100 () Bool)

(assert (=> b!7078080 m!7807100))

(declare-fun m!7807102 () Bool)

(assert (=> bm!643323 m!7807102))

(declare-fun m!7807104 () Bool)

(assert (=> bm!643325 m!7807104))

(assert (=> b!7077923 d!2213691))

(declare-fun b!7078092 () Bool)

(declare-fun lt!2550376 () List!68549)

(declare-fun e!4255351 () Bool)

(assert (=> b!7078092 (= e!4255351 (or (not (= (exprs!7170 ct2!306) Nil!68425)) (= lt!2550376 lt!2550249)))))

(declare-fun b!7078090 () Bool)

(declare-fun e!4255350 () List!68549)

(assert (=> b!7078090 (= e!4255350 (Cons!68425 (h!74873 lt!2550249) (++!15824 (t!382334 lt!2550249) (exprs!7170 ct2!306))))))

(declare-fun b!7078089 () Bool)

(assert (=> b!7078089 (= e!4255350 (exprs!7170 ct2!306))))

(declare-fun b!7078091 () Bool)

(declare-fun res!2891183 () Bool)

(assert (=> b!7078091 (=> (not res!2891183) (not e!4255351))))

(assert (=> b!7078091 (= res!2891183 (= (size!41242 lt!2550376) (+ (size!41242 lt!2550249) (size!41242 (exprs!7170 ct2!306)))))))

(declare-fun d!2213693 () Bool)

(assert (=> d!2213693 e!4255351))

(declare-fun res!2891182 () Bool)

(assert (=> d!2213693 (=> (not res!2891182) (not e!4255351))))

(assert (=> d!2213693 (= res!2891182 (= (content!13845 lt!2550376) (set.union (content!13845 lt!2550249) (content!13845 (exprs!7170 ct2!306)))))))

(assert (=> d!2213693 (= lt!2550376 e!4255350)))

(declare-fun c!1320789 () Bool)

(assert (=> d!2213693 (= c!1320789 (is-Nil!68425 lt!2550249))))

(assert (=> d!2213693 (= (++!15824 lt!2550249 (exprs!7170 ct2!306)) lt!2550376)))

(assert (= (and d!2213693 c!1320789) b!7078089))

(assert (= (and d!2213693 (not c!1320789)) b!7078090))

(assert (= (and d!2213693 res!2891182) b!7078091))

(assert (= (and b!7078091 res!2891183) b!7078092))

(declare-fun m!7807106 () Bool)

(assert (=> b!7078090 m!7807106))

(declare-fun m!7807108 () Bool)

(assert (=> b!7078091 m!7807108))

(declare-fun m!7807110 () Bool)

(assert (=> b!7078091 m!7807110))

(assert (=> b!7078091 m!7807060))

(declare-fun m!7807112 () Bool)

(assert (=> d!2213693 m!7807112))

(declare-fun m!7807114 () Bool)

(assert (=> d!2213693 m!7807114))

(assert (=> d!2213693 m!7807066))

(assert (=> b!7077923 d!2213693))

(declare-fun d!2213695 () Bool)

(assert (=> d!2213695 (forall!16634 (++!15824 lt!2550249 (exprs!7170 ct2!306)) lambda!427094)))

(declare-fun lt!2550377 () Unit!162059)

(assert (=> d!2213695 (= lt!2550377 (choose!54369 lt!2550249 (exprs!7170 ct2!306) lambda!427094))))

(assert (=> d!2213695 (forall!16634 lt!2550249 lambda!427094)))

(assert (=> d!2213695 (= (lemmaConcatPreservesForall!985 lt!2550249 (exprs!7170 ct2!306) lambda!427094) lt!2550377)))

(declare-fun bs!1881603 () Bool)

(assert (= bs!1881603 d!2213695))

(assert (=> bs!1881603 m!7806890))

(assert (=> bs!1881603 m!7806890))

(declare-fun m!7807116 () Bool)

(assert (=> bs!1881603 m!7807116))

(declare-fun m!7807118 () Bool)

(assert (=> bs!1881603 m!7807118))

(declare-fun m!7807120 () Bool)

(assert (=> bs!1881603 m!7807120))

(assert (=> b!7077923 d!2213695))

(declare-fun d!2213697 () Bool)

(declare-fun c!1320790 () Bool)

(assert (=> d!2213697 (= c!1320790 (isEmpty!39943 lt!2550229))))

(declare-fun e!4255352 () Bool)

(assert (=> d!2213697 (= (matchZipper!3214 lt!2550236 lt!2550229) e!4255352)))

(declare-fun b!7078093 () Bool)

(assert (=> b!7078093 (= e!4255352 (nullableZipper!2718 lt!2550236))))

(declare-fun b!7078094 () Bool)

(assert (=> b!7078094 (= e!4255352 (matchZipper!3214 (derivationStepZipper!3124 lt!2550236 (head!14427 lt!2550229)) (tail!13878 lt!2550229)))))

(assert (= (and d!2213697 c!1320790) b!7078093))

(assert (= (and d!2213697 (not c!1320790)) b!7078094))

(declare-fun m!7807122 () Bool)

(assert (=> d!2213697 m!7807122))

(declare-fun m!7807124 () Bool)

(assert (=> b!7078093 m!7807124))

(declare-fun m!7807126 () Bool)

(assert (=> b!7078094 m!7807126))

(assert (=> b!7078094 m!7807126))

(declare-fun m!7807128 () Bool)

(assert (=> b!7078094 m!7807128))

(declare-fun m!7807130 () Bool)

(assert (=> b!7078094 m!7807130))

(assert (=> b!7078094 m!7807128))

(assert (=> b!7078094 m!7807130))

(declare-fun m!7807132 () Bool)

(assert (=> b!7078094 m!7807132))

(assert (=> b!7077927 d!2213697))

(declare-fun b!7078104 () Bool)

(declare-fun e!4255357 () List!68548)

(assert (=> b!7078104 (= e!4255357 (Cons!68424 (h!74872 (_1!37456 lt!2550235)) (++!15823 (t!382333 (_1!37456 lt!2550235)) (_2!37456 lt!2550235))))))

(declare-fun b!7078105 () Bool)

(declare-fun res!2891188 () Bool)

(declare-fun e!4255358 () Bool)

(assert (=> b!7078105 (=> (not res!2891188) (not e!4255358))))

(declare-fun lt!2550380 () List!68548)

(declare-fun size!41243 (List!68548) Int)

(assert (=> b!7078105 (= res!2891188 (= (size!41243 lt!2550380) (+ (size!41243 (_1!37456 lt!2550235)) (size!41243 (_2!37456 lt!2550235)))))))

(declare-fun b!7078106 () Bool)

(assert (=> b!7078106 (= e!4255358 (or (not (= (_2!37456 lt!2550235) Nil!68424)) (= lt!2550380 (_1!37456 lt!2550235))))))

(declare-fun d!2213699 () Bool)

(assert (=> d!2213699 e!4255358))

(declare-fun res!2891189 () Bool)

(assert (=> d!2213699 (=> (not res!2891189) (not e!4255358))))

(declare-fun content!13846 (List!68548) (Set C!35618))

(assert (=> d!2213699 (= res!2891189 (= (content!13846 lt!2550380) (set.union (content!13846 (_1!37456 lt!2550235)) (content!13846 (_2!37456 lt!2550235)))))))

(assert (=> d!2213699 (= lt!2550380 e!4255357)))

(declare-fun c!1320793 () Bool)

(assert (=> d!2213699 (= c!1320793 (is-Nil!68424 (_1!37456 lt!2550235)))))

(assert (=> d!2213699 (= (++!15823 (_1!37456 lt!2550235) (_2!37456 lt!2550235)) lt!2550380)))

(declare-fun b!7078103 () Bool)

(assert (=> b!7078103 (= e!4255357 (_2!37456 lt!2550235))))

(assert (= (and d!2213699 c!1320793) b!7078103))

(assert (= (and d!2213699 (not c!1320793)) b!7078104))

(assert (= (and d!2213699 res!2891189) b!7078105))

(assert (= (and b!7078105 res!2891188) b!7078106))

(declare-fun m!7807134 () Bool)

(assert (=> b!7078104 m!7807134))

(declare-fun m!7807136 () Bool)

(assert (=> b!7078105 m!7807136))

(declare-fun m!7807138 () Bool)

(assert (=> b!7078105 m!7807138))

(declare-fun m!7807140 () Bool)

(assert (=> b!7078105 m!7807140))

(declare-fun m!7807142 () Bool)

(assert (=> d!2213699 m!7807142))

(declare-fun m!7807144 () Bool)

(assert (=> d!2213699 m!7807144))

(declare-fun m!7807146 () Bool)

(assert (=> d!2213699 m!7807146))

(assert (=> b!7077918 d!2213699))

(declare-fun d!2213701 () Bool)

(declare-fun c!1320794 () Bool)

(assert (=> d!2213701 (= c!1320794 (isEmpty!39943 (_2!37456 lt!2550235)))))

(declare-fun e!4255359 () Bool)

(assert (=> d!2213701 (= (matchZipper!3214 lt!2550233 (_2!37456 lt!2550235)) e!4255359)))

(declare-fun b!7078107 () Bool)

(assert (=> b!7078107 (= e!4255359 (nullableZipper!2718 lt!2550233))))

(declare-fun b!7078108 () Bool)

(assert (=> b!7078108 (= e!4255359 (matchZipper!3214 (derivationStepZipper!3124 lt!2550233 (head!14427 (_2!37456 lt!2550235))) (tail!13878 (_2!37456 lt!2550235))))))

(assert (= (and d!2213701 c!1320794) b!7078107))

(assert (= (and d!2213701 (not c!1320794)) b!7078108))

(declare-fun m!7807148 () Bool)

(assert (=> d!2213701 m!7807148))

(declare-fun m!7807150 () Bool)

(assert (=> b!7078107 m!7807150))

(declare-fun m!7807152 () Bool)

(assert (=> b!7078108 m!7807152))

(assert (=> b!7078108 m!7807152))

(declare-fun m!7807154 () Bool)

(assert (=> b!7078108 m!7807154))

(declare-fun m!7807156 () Bool)

(assert (=> b!7078108 m!7807156))

(assert (=> b!7078108 m!7807154))

(assert (=> b!7078108 m!7807156))

(declare-fun m!7807158 () Bool)

(assert (=> b!7078108 m!7807158))

(assert (=> b!7077926 d!2213701))

(assert (=> b!7077917 d!2213685))

(declare-fun d!2213703 () Bool)

(declare-fun c!1320795 () Bool)

(assert (=> d!2213703 (= c!1320795 (isEmpty!39943 (_1!37456 lt!2550235)))))

(declare-fun e!4255360 () Bool)

(assert (=> d!2213703 (= (matchZipper!3214 lt!2550238 (_1!37456 lt!2550235)) e!4255360)))

(declare-fun b!7078109 () Bool)

(assert (=> b!7078109 (= e!4255360 (nullableZipper!2718 lt!2550238))))

(declare-fun b!7078110 () Bool)

(assert (=> b!7078110 (= e!4255360 (matchZipper!3214 (derivationStepZipper!3124 lt!2550238 (head!14427 (_1!37456 lt!2550235))) (tail!13878 (_1!37456 lt!2550235))))))

(assert (= (and d!2213703 c!1320795) b!7078109))

(assert (= (and d!2213703 (not c!1320795)) b!7078110))

(declare-fun m!7807160 () Bool)

(assert (=> d!2213703 m!7807160))

(declare-fun m!7807162 () Bool)

(assert (=> b!7078109 m!7807162))

(declare-fun m!7807164 () Bool)

(assert (=> b!7078110 m!7807164))

(assert (=> b!7078110 m!7807164))

(declare-fun m!7807166 () Bool)

(assert (=> b!7078110 m!7807166))

(declare-fun m!7807168 () Bool)

(assert (=> b!7078110 m!7807168))

(assert (=> b!7078110 m!7807166))

(assert (=> b!7078110 m!7807168))

(declare-fun m!7807170 () Bool)

(assert (=> b!7078110 m!7807170))

(assert (=> b!7077930 d!2213703))

(assert (=> b!7077930 d!2213695))

(declare-fun d!2213705 () Bool)

(assert (=> d!2213705 (= (get!23973 lt!2550231) (v!53278 lt!2550231))))

(assert (=> b!7077930 d!2213705))

(declare-fun d!2213707 () Bool)

(declare-fun isEmpty!39944 (Option!16985) Bool)

(assert (=> d!2213707 (= (isDefined!13686 lt!2550231) (not (isEmpty!39944 lt!2550231)))))

(declare-fun bs!1881604 () Bool)

(assert (= bs!1881604 d!2213707))

(declare-fun m!7807172 () Bool)

(assert (=> bs!1881604 m!7807172))

(assert (=> b!7077930 d!2213707))

(declare-fun d!2213709 () Bool)

(declare-fun e!4255375 () Bool)

(assert (=> d!2213709 e!4255375))

(declare-fun res!2891201 () Bool)

(assert (=> d!2213709 (=> res!2891201 e!4255375)))

(declare-fun e!4255372 () Bool)

(assert (=> d!2213709 (= res!2891201 e!4255372)))

(declare-fun res!2891200 () Bool)

(assert (=> d!2213709 (=> (not res!2891200) (not e!4255372))))

(declare-fun lt!2550388 () Option!16985)

(assert (=> d!2213709 (= res!2891200 (isDefined!13686 lt!2550388))))

(declare-fun e!4255374 () Option!16985)

(assert (=> d!2213709 (= lt!2550388 e!4255374)))

(declare-fun c!1320800 () Bool)

(declare-fun e!4255373 () Bool)

(assert (=> d!2213709 (= c!1320800 e!4255373)))

(declare-fun res!2891202 () Bool)

(assert (=> d!2213709 (=> (not res!2891202) (not e!4255373))))

(assert (=> d!2213709 (= res!2891202 (matchZipper!3214 lt!2550238 Nil!68424))))

(assert (=> d!2213709 (= (++!15823 Nil!68424 (t!382333 s!7408)) (t!382333 s!7408))))

(assert (=> d!2213709 (= (findConcatSeparationZippers!501 lt!2550238 lt!2550233 Nil!68424 (t!382333 s!7408) (t!382333 s!7408)) lt!2550388)))

(declare-fun b!7078129 () Bool)

(declare-fun lt!2550387 () Unit!162059)

(declare-fun lt!2550389 () Unit!162059)

(assert (=> b!7078129 (= lt!2550387 lt!2550389)))

(assert (=> b!7078129 (= (++!15823 (++!15823 Nil!68424 (Cons!68424 (h!74872 (t!382333 s!7408)) Nil!68424)) (t!382333 (t!382333 s!7408))) (t!382333 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2986 (List!68548 C!35618 List!68548 List!68548) Unit!162059)

(assert (=> b!7078129 (= lt!2550389 (lemmaMoveElementToOtherListKeepsConcatEq!2986 Nil!68424 (h!74872 (t!382333 s!7408)) (t!382333 (t!382333 s!7408)) (t!382333 s!7408)))))

(declare-fun e!4255371 () Option!16985)

(assert (=> b!7078129 (= e!4255371 (findConcatSeparationZippers!501 lt!2550238 lt!2550233 (++!15823 Nil!68424 (Cons!68424 (h!74872 (t!382333 s!7408)) Nil!68424)) (t!382333 (t!382333 s!7408)) (t!382333 s!7408)))))

(declare-fun b!7078130 () Bool)

(declare-fun res!2891204 () Bool)

(assert (=> b!7078130 (=> (not res!2891204) (not e!4255372))))

(assert (=> b!7078130 (= res!2891204 (matchZipper!3214 lt!2550233 (_2!37456 (get!23973 lt!2550388))))))

(declare-fun b!7078131 () Bool)

(assert (=> b!7078131 (= e!4255373 (matchZipper!3214 lt!2550233 (t!382333 s!7408)))))

(declare-fun b!7078132 () Bool)

(assert (=> b!7078132 (= e!4255372 (= (++!15823 (_1!37456 (get!23973 lt!2550388)) (_2!37456 (get!23973 lt!2550388))) (t!382333 s!7408)))))

(declare-fun b!7078133 () Bool)

(assert (=> b!7078133 (= e!4255374 e!4255371)))

(declare-fun c!1320801 () Bool)

(assert (=> b!7078133 (= c!1320801 (is-Nil!68424 (t!382333 s!7408)))))

(declare-fun b!7078134 () Bool)

(assert (=> b!7078134 (= e!4255371 None!16984)))

(declare-fun b!7078135 () Bool)

(declare-fun res!2891203 () Bool)

(assert (=> b!7078135 (=> (not res!2891203) (not e!4255372))))

(assert (=> b!7078135 (= res!2891203 (matchZipper!3214 lt!2550238 (_1!37456 (get!23973 lt!2550388))))))

(declare-fun b!7078136 () Bool)

(assert (=> b!7078136 (= e!4255375 (not (isDefined!13686 lt!2550388)))))

(declare-fun b!7078137 () Bool)

(assert (=> b!7078137 (= e!4255374 (Some!16984 (tuple2!68307 Nil!68424 (t!382333 s!7408))))))

(assert (= (and d!2213709 res!2891202) b!7078131))

(assert (= (and d!2213709 c!1320800) b!7078137))

(assert (= (and d!2213709 (not c!1320800)) b!7078133))

(assert (= (and b!7078133 c!1320801) b!7078134))

(assert (= (and b!7078133 (not c!1320801)) b!7078129))

(assert (= (and d!2213709 res!2891200) b!7078135))

(assert (= (and b!7078135 res!2891203) b!7078130))

(assert (= (and b!7078130 res!2891204) b!7078132))

(assert (= (and d!2213709 (not res!2891201)) b!7078136))

(declare-fun m!7807174 () Bool)

(assert (=> b!7078136 m!7807174))

(declare-fun m!7807176 () Bool)

(assert (=> b!7078130 m!7807176))

(declare-fun m!7807178 () Bool)

(assert (=> b!7078130 m!7807178))

(assert (=> d!2213709 m!7807174))

(declare-fun m!7807180 () Bool)

(assert (=> d!2213709 m!7807180))

(declare-fun m!7807182 () Bool)

(assert (=> d!2213709 m!7807182))

(declare-fun m!7807184 () Bool)

(assert (=> b!7078131 m!7807184))

(assert (=> b!7078135 m!7807176))

(declare-fun m!7807186 () Bool)

(assert (=> b!7078135 m!7807186))

(assert (=> b!7078132 m!7807176))

(declare-fun m!7807188 () Bool)

(assert (=> b!7078132 m!7807188))

(declare-fun m!7807190 () Bool)

(assert (=> b!7078129 m!7807190))

(assert (=> b!7078129 m!7807190))

(declare-fun m!7807192 () Bool)

(assert (=> b!7078129 m!7807192))

(declare-fun m!7807194 () Bool)

(assert (=> b!7078129 m!7807194))

(assert (=> b!7078129 m!7807190))

(declare-fun m!7807196 () Bool)

(assert (=> b!7078129 m!7807196))

(assert (=> b!7077930 d!2213709))

(declare-fun bm!643326 () Bool)

(declare-fun call!643331 () (Set Context!13340))

(declare-fun call!643336 () (Set Context!13340))

(assert (=> bm!643326 (= call!643331 call!643336)))

(declare-fun d!2213711 () Bool)

(declare-fun c!1320805 () Bool)

(assert (=> d!2213711 (= c!1320805 (and (is-ElementMatch!17674 (h!74873 (exprs!7170 lt!2550254))) (= (c!1320739 (h!74873 (exprs!7170 lt!2550254))) (h!74872 s!7408))))))

(declare-fun e!4255380 () (Set Context!13340))

(assert (=> d!2213711 (= (derivationStepZipperDown!2308 (h!74873 (exprs!7170 lt!2550254)) lt!2550232 (h!74872 s!7408)) e!4255380)))

(declare-fun b!7078138 () Bool)

(declare-fun e!4255381 () (Set Context!13340))

(declare-fun e!4255378 () (Set Context!13340))

(assert (=> b!7078138 (= e!4255381 e!4255378)))

(declare-fun c!1320803 () Bool)

(assert (=> b!7078138 (= c!1320803 (is-Concat!26519 (h!74873 (exprs!7170 lt!2550254))))))

(declare-fun b!7078139 () Bool)

(declare-fun call!643332 () (Set Context!13340))

(assert (=> b!7078139 (= e!4255381 (set.union call!643332 call!643336))))

(declare-fun b!7078140 () Bool)

(declare-fun e!4255376 () Bool)

(assert (=> b!7078140 (= e!4255376 (nullable!7357 (regOne!35860 (h!74873 (exprs!7170 lt!2550254)))))))

(declare-fun bm!643327 () Bool)

(declare-fun call!643335 () List!68549)

(declare-fun c!1320802 () Bool)

(assert (=> bm!643327 (= call!643332 (derivationStepZipperDown!2308 (ite c!1320802 (regTwo!35861 (h!74873 (exprs!7170 lt!2550254))) (regOne!35860 (h!74873 (exprs!7170 lt!2550254)))) (ite c!1320802 lt!2550232 (Context!13341 call!643335)) (h!74872 s!7408)))))

(declare-fun b!7078141 () Bool)

(assert (=> b!7078141 (= e!4255380 (set.insert lt!2550232 (as set.empty (Set Context!13340))))))

(declare-fun b!7078142 () Bool)

(declare-fun c!1320804 () Bool)

(assert (=> b!7078142 (= c!1320804 e!4255376)))

(declare-fun res!2891205 () Bool)

(assert (=> b!7078142 (=> (not res!2891205) (not e!4255376))))

(assert (=> b!7078142 (= res!2891205 (is-Concat!26519 (h!74873 (exprs!7170 lt!2550254))))))

(declare-fun e!4255379 () (Set Context!13340))

(assert (=> b!7078142 (= e!4255379 e!4255381)))

(declare-fun bm!643328 () Bool)

(declare-fun call!643334 () (Set Context!13340))

(assert (=> bm!643328 (= call!643336 call!643334)))

(declare-fun b!7078143 () Bool)

(assert (=> b!7078143 (= e!4255379 (set.union call!643334 call!643332))))

(declare-fun b!7078144 () Bool)

(assert (=> b!7078144 (= e!4255380 e!4255379)))

(assert (=> b!7078144 (= c!1320802 (is-Union!17674 (h!74873 (exprs!7170 lt!2550254))))))

(declare-fun b!7078145 () Bool)

(declare-fun e!4255377 () (Set Context!13340))

(assert (=> b!7078145 (= e!4255377 (as set.empty (Set Context!13340)))))

(declare-fun b!7078146 () Bool)

(assert (=> b!7078146 (= e!4255378 call!643331)))

(declare-fun b!7078147 () Bool)

(assert (=> b!7078147 (= e!4255377 call!643331)))

(declare-fun bm!643329 () Bool)

(assert (=> bm!643329 (= call!643335 ($colon$colon!2675 (exprs!7170 lt!2550232) (ite (or c!1320804 c!1320803) (regTwo!35860 (h!74873 (exprs!7170 lt!2550254))) (h!74873 (exprs!7170 lt!2550254)))))))

(declare-fun b!7078148 () Bool)

(declare-fun c!1320806 () Bool)

(assert (=> b!7078148 (= c!1320806 (is-Star!17674 (h!74873 (exprs!7170 lt!2550254))))))

(assert (=> b!7078148 (= e!4255378 e!4255377)))

(declare-fun bm!643330 () Bool)

(declare-fun call!643333 () List!68549)

(assert (=> bm!643330 (= call!643333 call!643335)))

(declare-fun bm!643331 () Bool)

(assert (=> bm!643331 (= call!643334 (derivationStepZipperDown!2308 (ite c!1320802 (regOne!35861 (h!74873 (exprs!7170 lt!2550254))) (ite c!1320804 (regTwo!35860 (h!74873 (exprs!7170 lt!2550254))) (ite c!1320803 (regOne!35860 (h!74873 (exprs!7170 lt!2550254))) (reg!18003 (h!74873 (exprs!7170 lt!2550254)))))) (ite (or c!1320802 c!1320804) lt!2550232 (Context!13341 call!643333)) (h!74872 s!7408)))))

(assert (= (and d!2213711 c!1320805) b!7078141))

(assert (= (and d!2213711 (not c!1320805)) b!7078144))

(assert (= (and b!7078144 c!1320802) b!7078143))

(assert (= (and b!7078144 (not c!1320802)) b!7078142))

(assert (= (and b!7078142 res!2891205) b!7078140))

(assert (= (and b!7078142 c!1320804) b!7078139))

(assert (= (and b!7078142 (not c!1320804)) b!7078138))

(assert (= (and b!7078138 c!1320803) b!7078146))

(assert (= (and b!7078138 (not c!1320803)) b!7078148))

(assert (= (and b!7078148 c!1320806) b!7078147))

(assert (= (and b!7078148 (not c!1320806)) b!7078145))

(assert (= (or b!7078146 b!7078147) bm!643330))

(assert (= (or b!7078146 b!7078147) bm!643326))

(assert (= (or b!7078139 bm!643326) bm!643328))

(assert (= (or b!7078139 bm!643330) bm!643329))

(assert (= (or b!7078143 bm!643328) bm!643331))

(assert (= (or b!7078143 b!7078139) bm!643327))

(declare-fun m!7807198 () Bool)

(assert (=> bm!643327 m!7807198))

(declare-fun m!7807200 () Bool)

(assert (=> b!7078141 m!7807200))

(assert (=> b!7078140 m!7807100))

(declare-fun m!7807202 () Bool)

(assert (=> bm!643329 m!7807202))

(declare-fun m!7807204 () Bool)

(assert (=> bm!643331 m!7807204))

(assert (=> b!7077930 d!2213711))

(declare-fun bs!1881605 () Bool)

(declare-fun d!2213713 () Bool)

(assert (= bs!1881605 (and d!2213713 b!7077933)))

(declare-fun lambda!427145 () Int)

(assert (=> bs!1881605 (= lambda!427145 lambda!427093)))

(declare-fun bs!1881606 () Bool)

(assert (= bs!1881606 (and d!2213713 d!2213669)))

(assert (=> bs!1881606 (= lambda!427145 lambda!427138)))

(assert (=> d!2213713 true))

(assert (=> d!2213713 (= (appendTo!795 lt!2550238 ct2!306) (map!16024 lt!2550238 lambda!427145))))

(declare-fun bs!1881607 () Bool)

(assert (= bs!1881607 d!2213713))

(declare-fun m!7807206 () Bool)

(assert (=> bs!1881607 m!7807206))

(assert (=> b!7077930 d!2213713))

(declare-fun bs!1881608 () Bool)

(declare-fun d!2213715 () Bool)

(assert (= bs!1881608 (and d!2213715 b!7077933)))

(declare-fun lambda!427148 () Int)

(assert (=> bs!1881608 (= lambda!427148 lambda!427094)))

(declare-fun bs!1881609 () Bool)

(assert (= bs!1881609 (and d!2213715 d!2213671)))

(assert (=> bs!1881609 (= lambda!427148 lambda!427141)))

(assert (=> d!2213715 (= (derivationStepZipperDown!2308 (h!74873 (exprs!7170 lt!2550254)) (Context!13341 (++!15824 (exprs!7170 lt!2550232) (exprs!7170 ct2!306))) (h!74872 s!7408)) (appendTo!795 (derivationStepZipperDown!2308 (h!74873 (exprs!7170 lt!2550254)) lt!2550232 (h!74872 s!7408)) ct2!306))))

(declare-fun lt!2550395 () Unit!162059)

(assert (=> d!2213715 (= lt!2550395 (lemmaConcatPreservesForall!985 (exprs!7170 lt!2550232) (exprs!7170 ct2!306) lambda!427148))))

(declare-fun lt!2550394 () Unit!162059)

(declare-fun choose!54371 (Context!13340 Regex!17674 C!35618 Context!13340) Unit!162059)

(assert (=> d!2213715 (= lt!2550394 (choose!54371 lt!2550232 (h!74873 (exprs!7170 lt!2550254)) (h!74872 s!7408) ct2!306))))

(declare-fun validRegex!8986 (Regex!17674) Bool)

(assert (=> d!2213715 (validRegex!8986 (h!74873 (exprs!7170 lt!2550254)))))

(assert (=> d!2213715 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!141 lt!2550232 (h!74873 (exprs!7170 lt!2550254)) (h!74872 s!7408) ct2!306) lt!2550394)))

(declare-fun bs!1881610 () Bool)

(assert (= bs!1881610 d!2213715))

(declare-fun m!7807208 () Bool)

(assert (=> bs!1881610 m!7807208))

(declare-fun m!7807210 () Bool)

(assert (=> bs!1881610 m!7807210))

(assert (=> bs!1881610 m!7806840))

(declare-fun m!7807212 () Bool)

(assert (=> bs!1881610 m!7807212))

(assert (=> bs!1881610 m!7806840))

(declare-fun m!7807214 () Bool)

(assert (=> bs!1881610 m!7807214))

(declare-fun m!7807216 () Bool)

(assert (=> bs!1881610 m!7807216))

(declare-fun m!7807218 () Bool)

(assert (=> bs!1881610 m!7807218))

(assert (=> b!7077930 d!2213715))

(declare-fun d!2213717 () Bool)

(assert (=> d!2213717 (isDefined!13686 (findConcatSeparationZippers!501 lt!2550238 (set.insert ct2!306 (as set.empty (Set Context!13340))) Nil!68424 (t!382333 s!7408) (t!382333 s!7408)))))

(declare-fun lt!2550398 () Unit!162059)

(declare-fun choose!54372 ((Set Context!13340) Context!13340 List!68548) Unit!162059)

(assert (=> d!2213717 (= lt!2550398 (choose!54372 lt!2550238 ct2!306 (t!382333 s!7408)))))

(assert (=> d!2213717 (matchZipper!3214 (appendTo!795 lt!2550238 ct2!306) (t!382333 s!7408))))

(assert (=> d!2213717 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!489 lt!2550238 ct2!306 (t!382333 s!7408)) lt!2550398)))

(declare-fun bs!1881611 () Bool)

(assert (= bs!1881611 d!2213717))

(assert (=> bs!1881611 m!7806838))

(declare-fun m!7807220 () Bool)

(assert (=> bs!1881611 m!7807220))

(declare-fun m!7807222 () Bool)

(assert (=> bs!1881611 m!7807222))

(assert (=> bs!1881611 m!7806834))

(declare-fun m!7807224 () Bool)

(assert (=> bs!1881611 m!7807224))

(assert (=> bs!1881611 m!7806834))

(assert (=> bs!1881611 m!7806838))

(assert (=> bs!1881611 m!7807220))

(declare-fun m!7807226 () Bool)

(assert (=> bs!1881611 m!7807226))

(assert (=> b!7077930 d!2213717))

(declare-fun bs!1881612 () Bool)

(declare-fun d!2213719 () Bool)

(assert (= bs!1881612 (and d!2213719 b!7077934)))

(declare-fun lambda!427149 () Int)

(assert (=> bs!1881612 (not (= lambda!427149 lambda!427092))))

(declare-fun bs!1881613 () Bool)

(assert (= bs!1881613 (and d!2213719 b!7077920)))

(assert (=> bs!1881613 (not (= lambda!427149 lambda!427096))))

(declare-fun bs!1881614 () Bool)

(assert (= bs!1881614 (and d!2213719 d!2213661)))

(assert (=> bs!1881614 (not (= lambda!427149 lambda!427130))))

(declare-fun bs!1881615 () Bool)

(assert (= bs!1881615 (and d!2213719 d!2213665)))

(assert (=> bs!1881615 (= (= lambda!427096 lambda!427092) (= lambda!427149 lambda!427133))))

(assert (=> d!2213719 true))

(assert (=> d!2213719 (< (dynLambda!27871 order!28447 lambda!427096) (dynLambda!27871 order!28447 lambda!427149))))

(assert (=> d!2213719 (= (exists!3743 (toList!11015 z1!570) lambda!427096) (not (forall!16633 (toList!11015 z1!570) lambda!427149)))))

(declare-fun bs!1881616 () Bool)

(assert (= bs!1881616 d!2213719))

(assert (=> bs!1881616 m!7806858))

(declare-fun m!7807228 () Bool)

(assert (=> bs!1881616 m!7807228))

(assert (=> b!7077920 d!2213719))

(declare-fun d!2213721 () Bool)

(assert (=> d!2213721 (isDefined!13686 (findConcatSeparationZippers!501 lt!2550236 lt!2550233 Nil!68424 s!7408 s!7408))))

(declare-fun lt!2550401 () Unit!162059)

(declare-fun choose!54373 ((Set Context!13340) (Set Context!13340) List!68548 List!68548 List!68548 List!68548 List!68548) Unit!162059)

(assert (=> d!2213721 (= lt!2550401 (choose!54373 lt!2550236 lt!2550233 lt!2550229 (_2!37456 lt!2550235) s!7408 Nil!68424 s!7408))))

(assert (=> d!2213721 (matchZipper!3214 lt!2550236 lt!2550229)))

(assert (=> d!2213721 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!87 lt!2550236 lt!2550233 lt!2550229 (_2!37456 lt!2550235) s!7408 Nil!68424 s!7408) lt!2550401)))

(declare-fun bs!1881617 () Bool)

(assert (= bs!1881617 d!2213721))

(assert (=> bs!1881617 m!7806864))

(assert (=> bs!1881617 m!7806864))

(assert (=> bs!1881617 m!7806866))

(declare-fun m!7807230 () Bool)

(assert (=> bs!1881617 m!7807230))

(assert (=> bs!1881617 m!7806872))

(assert (=> b!7077920 d!2213721))

(declare-fun d!2213725 () Bool)

(declare-fun lt!2550404 () Bool)

(assert (=> d!2213725 (= lt!2550404 (exists!3743 (toList!11015 z1!570) lambda!427096))))

(declare-fun choose!54374 ((Set Context!13340) Int) Bool)

(assert (=> d!2213725 (= lt!2550404 (choose!54374 z1!570 lambda!427096))))

(assert (=> d!2213725 (= (exists!3744 z1!570 lambda!427096) lt!2550404)))

(declare-fun bs!1881621 () Bool)

(assert (= bs!1881621 d!2213725))

(assert (=> bs!1881621 m!7806858))

(assert (=> bs!1881621 m!7806858))

(assert (=> bs!1881621 m!7806868))

(declare-fun m!7807234 () Bool)

(assert (=> bs!1881621 m!7807234))

(assert (=> b!7077920 d!2213725))

(declare-fun d!2213729 () Bool)

(assert (=> d!2213729 (= (isDefined!13686 (findConcatSeparationZippers!501 lt!2550236 lt!2550233 Nil!68424 s!7408 s!7408)) (not (isEmpty!39944 (findConcatSeparationZippers!501 lt!2550236 lt!2550233 Nil!68424 s!7408 s!7408))))))

(declare-fun bs!1881622 () Bool)

(assert (= bs!1881622 d!2213729))

(assert (=> bs!1881622 m!7806864))

(declare-fun m!7807236 () Bool)

(assert (=> bs!1881622 m!7807236))

(assert (=> b!7077920 d!2213729))

(declare-fun d!2213731 () Bool)

(declare-fun e!4255386 () Bool)

(assert (=> d!2213731 e!4255386))

(declare-fun res!2891207 () Bool)

(assert (=> d!2213731 (=> res!2891207 e!4255386)))

(declare-fun e!4255383 () Bool)

(assert (=> d!2213731 (= res!2891207 e!4255383)))

(declare-fun res!2891206 () Bool)

(assert (=> d!2213731 (=> (not res!2891206) (not e!4255383))))

(declare-fun lt!2550406 () Option!16985)

(assert (=> d!2213731 (= res!2891206 (isDefined!13686 lt!2550406))))

(declare-fun e!4255385 () Option!16985)

(assert (=> d!2213731 (= lt!2550406 e!4255385)))

(declare-fun c!1320808 () Bool)

(declare-fun e!4255384 () Bool)

(assert (=> d!2213731 (= c!1320808 e!4255384)))

(declare-fun res!2891208 () Bool)

(assert (=> d!2213731 (=> (not res!2891208) (not e!4255384))))

(assert (=> d!2213731 (= res!2891208 (matchZipper!3214 lt!2550236 Nil!68424))))

(assert (=> d!2213731 (= (++!15823 Nil!68424 s!7408) s!7408)))

(assert (=> d!2213731 (= (findConcatSeparationZippers!501 lt!2550236 lt!2550233 Nil!68424 s!7408 s!7408) lt!2550406)))

(declare-fun b!7078151 () Bool)

(declare-fun lt!2550405 () Unit!162059)

(declare-fun lt!2550407 () Unit!162059)

(assert (=> b!7078151 (= lt!2550405 lt!2550407)))

(assert (=> b!7078151 (= (++!15823 (++!15823 Nil!68424 (Cons!68424 (h!74872 s!7408) Nil!68424)) (t!382333 s!7408)) s!7408)))

(assert (=> b!7078151 (= lt!2550407 (lemmaMoveElementToOtherListKeepsConcatEq!2986 Nil!68424 (h!74872 s!7408) (t!382333 s!7408) s!7408))))

(declare-fun e!4255382 () Option!16985)

(assert (=> b!7078151 (= e!4255382 (findConcatSeparationZippers!501 lt!2550236 lt!2550233 (++!15823 Nil!68424 (Cons!68424 (h!74872 s!7408) Nil!68424)) (t!382333 s!7408) s!7408))))

(declare-fun b!7078152 () Bool)

(declare-fun res!2891210 () Bool)

(assert (=> b!7078152 (=> (not res!2891210) (not e!4255383))))

(assert (=> b!7078152 (= res!2891210 (matchZipper!3214 lt!2550233 (_2!37456 (get!23973 lt!2550406))))))

(declare-fun b!7078153 () Bool)

(assert (=> b!7078153 (= e!4255384 (matchZipper!3214 lt!2550233 s!7408))))

(declare-fun b!7078154 () Bool)

(assert (=> b!7078154 (= e!4255383 (= (++!15823 (_1!37456 (get!23973 lt!2550406)) (_2!37456 (get!23973 lt!2550406))) s!7408))))

(declare-fun b!7078155 () Bool)

(assert (=> b!7078155 (= e!4255385 e!4255382)))

(declare-fun c!1320809 () Bool)

(assert (=> b!7078155 (= c!1320809 (is-Nil!68424 s!7408))))

(declare-fun b!7078156 () Bool)

(assert (=> b!7078156 (= e!4255382 None!16984)))

(declare-fun b!7078157 () Bool)

(declare-fun res!2891209 () Bool)

(assert (=> b!7078157 (=> (not res!2891209) (not e!4255383))))

(assert (=> b!7078157 (= res!2891209 (matchZipper!3214 lt!2550236 (_1!37456 (get!23973 lt!2550406))))))

(declare-fun b!7078158 () Bool)

(assert (=> b!7078158 (= e!4255386 (not (isDefined!13686 lt!2550406)))))

(declare-fun b!7078159 () Bool)

(assert (=> b!7078159 (= e!4255385 (Some!16984 (tuple2!68307 Nil!68424 s!7408)))))

(assert (= (and d!2213731 res!2891208) b!7078153))

(assert (= (and d!2213731 c!1320808) b!7078159))

(assert (= (and d!2213731 (not c!1320808)) b!7078155))

(assert (= (and b!7078155 c!1320809) b!7078156))

(assert (= (and b!7078155 (not c!1320809)) b!7078151))

(assert (= (and d!2213731 res!2891206) b!7078157))

(assert (= (and b!7078157 res!2891209) b!7078152))

(assert (= (and b!7078152 res!2891210) b!7078154))

(assert (= (and d!2213731 (not res!2891207)) b!7078158))

(declare-fun m!7807238 () Bool)

(assert (=> b!7078158 m!7807238))

(declare-fun m!7807240 () Bool)

(assert (=> b!7078152 m!7807240))

(declare-fun m!7807242 () Bool)

(assert (=> b!7078152 m!7807242))

(assert (=> d!2213731 m!7807238))

(declare-fun m!7807244 () Bool)

(assert (=> d!2213731 m!7807244))

(declare-fun m!7807246 () Bool)

(assert (=> d!2213731 m!7807246))

(declare-fun m!7807248 () Bool)

(assert (=> b!7078153 m!7807248))

(assert (=> b!7078157 m!7807240))

(declare-fun m!7807250 () Bool)

(assert (=> b!7078157 m!7807250))

(assert (=> b!7078154 m!7807240))

(declare-fun m!7807252 () Bool)

(assert (=> b!7078154 m!7807252))

(declare-fun m!7807254 () Bool)

(assert (=> b!7078151 m!7807254))

(assert (=> b!7078151 m!7807254))

(declare-fun m!7807256 () Bool)

(assert (=> b!7078151 m!7807256))

(declare-fun m!7807258 () Bool)

(assert (=> b!7078151 m!7807258))

(assert (=> b!7078151 m!7807254))

(declare-fun m!7807260 () Bool)

(assert (=> b!7078151 m!7807260))

(assert (=> b!7077920 d!2213731))

(declare-fun d!2213733 () Bool)

(declare-fun e!4255387 () Bool)

(assert (=> d!2213733 e!4255387))

(declare-fun res!2891211 () Bool)

(assert (=> d!2213733 (=> (not res!2891211) (not e!4255387))))

(declare-fun lt!2550408 () List!68550)

(assert (=> d!2213733 (= res!2891211 (noDuplicate!2745 lt!2550408))))

(assert (=> d!2213733 (= lt!2550408 (choose!54365 z1!570))))

(assert (=> d!2213733 (= (toList!11015 z1!570) lt!2550408)))

(declare-fun b!7078160 () Bool)

(assert (=> b!7078160 (= e!4255387 (= (content!13844 lt!2550408) z1!570))))

(assert (= (and d!2213733 res!2891211) b!7078160))

(declare-fun m!7807262 () Bool)

(assert (=> d!2213733 m!7807262))

(declare-fun m!7807264 () Bool)

(assert (=> d!2213733 m!7807264))

(declare-fun m!7807266 () Bool)

(assert (=> b!7078160 m!7807266))

(assert (=> b!7077920 d!2213733))

(declare-fun d!2213735 () Bool)

(assert (=> d!2213735 (exists!3744 z1!570 lambda!427096)))

(declare-fun lt!2550414 () Unit!162059)

(declare-fun choose!54375 ((Set Context!13340) Context!13340 Int) Unit!162059)

(assert (=> d!2213735 (= lt!2550414 (choose!54375 z1!570 lt!2550254 lambda!427096))))

(assert (=> d!2213735 (set.member lt!2550254 z1!570)))

(assert (=> d!2213735 (= (lemmaContainsThenExists!166 z1!570 lt!2550254 lambda!427096) lt!2550414)))

(declare-fun bs!1881623 () Bool)

(assert (= bs!1881623 d!2213735))

(assert (=> bs!1881623 m!7806862))

(declare-fun m!7807274 () Bool)

(assert (=> bs!1881623 m!7807274))

(assert (=> bs!1881623 m!7806852))

(assert (=> b!7077920 d!2213735))

(declare-fun d!2213739 () Bool)

(assert (=> d!2213739 (= (flatMap!2600 lt!2550230 lambda!427095) (dynLambda!27872 lambda!427095 lt!2550228))))

(declare-fun lt!2550415 () Unit!162059)

(assert (=> d!2213739 (= lt!2550415 (choose!54368 lt!2550230 lt!2550228 lambda!427095))))

(assert (=> d!2213739 (= lt!2550230 (set.insert lt!2550228 (as set.empty (Set Context!13340))))))

(assert (=> d!2213739 (= (lemmaFlatMapOnSingletonSet!2109 lt!2550230 lt!2550228 lambda!427095) lt!2550415)))

(declare-fun b_lambda!270383 () Bool)

(assert (=> (not b_lambda!270383) (not d!2213739)))

(declare-fun bs!1881624 () Bool)

(assert (= bs!1881624 d!2213739))

(assert (=> bs!1881624 m!7806876))

(declare-fun m!7807276 () Bool)

(assert (=> bs!1881624 m!7807276))

(declare-fun m!7807278 () Bool)

(assert (=> bs!1881624 m!7807278))

(assert (=> bs!1881624 m!7806804))

(assert (=> b!7077919 d!2213739))

(declare-fun bs!1881625 () Bool)

(declare-fun d!2213741 () Bool)

(assert (= bs!1881625 (and d!2213741 b!7077919)))

(declare-fun lambda!427153 () Int)

(assert (=> bs!1881625 (= lambda!427153 lambda!427095)))

(declare-fun bs!1881626 () Bool)

(assert (= bs!1881626 (and d!2213741 d!2213681)))

(assert (=> bs!1881626 (= lambda!427153 lambda!427144)))

(assert (=> d!2213741 true))

(assert (=> d!2213741 (= (derivationStepZipper!3124 lt!2550230 (h!74872 s!7408)) (flatMap!2600 lt!2550230 lambda!427153))))

(declare-fun bs!1881627 () Bool)

(assert (= bs!1881627 d!2213741))

(declare-fun m!7807280 () Bool)

(assert (=> bs!1881627 m!7807280))

(assert (=> b!7077919 d!2213741))

(declare-fun b!7078164 () Bool)

(declare-fun e!4255392 () (Set Context!13340))

(assert (=> b!7078164 (= e!4255392 (as set.empty (Set Context!13340)))))

(declare-fun b!7078165 () Bool)

(declare-fun e!4255394 () (Set Context!13340))

(assert (=> b!7078165 (= e!4255394 e!4255392)))

(declare-fun c!1320811 () Bool)

(assert (=> b!7078165 (= c!1320811 (is-Cons!68425 (exprs!7170 lt!2550228)))))

(declare-fun bm!643332 () Bool)

(declare-fun call!643337 () (Set Context!13340))

(assert (=> bm!643332 (= call!643337 (derivationStepZipperDown!2308 (h!74873 (exprs!7170 lt!2550228)) (Context!13341 (t!382334 (exprs!7170 lt!2550228))) (h!74872 s!7408)))))

(declare-fun b!7078166 () Bool)

(declare-fun e!4255393 () Bool)

(assert (=> b!7078166 (= e!4255393 (nullable!7357 (h!74873 (exprs!7170 lt!2550228))))))

(declare-fun d!2213743 () Bool)

(declare-fun c!1320810 () Bool)

(assert (=> d!2213743 (= c!1320810 e!4255393)))

(declare-fun res!2891215 () Bool)

(assert (=> d!2213743 (=> (not res!2891215) (not e!4255393))))

(assert (=> d!2213743 (= res!2891215 (is-Cons!68425 (exprs!7170 lt!2550228)))))

(assert (=> d!2213743 (= (derivationStepZipperUp!2258 lt!2550228 (h!74872 s!7408)) e!4255394)))

(declare-fun b!7078167 () Bool)

(assert (=> b!7078167 (= e!4255394 (set.union call!643337 (derivationStepZipperUp!2258 (Context!13341 (t!382334 (exprs!7170 lt!2550228))) (h!74872 s!7408))))))

(declare-fun b!7078168 () Bool)

(assert (=> b!7078168 (= e!4255392 call!643337)))

(assert (= (and d!2213743 res!2891215) b!7078166))

(assert (= (and d!2213743 c!1320810) b!7078167))

(assert (= (and d!2213743 (not c!1320810)) b!7078165))

(assert (= (and b!7078165 c!1320811) b!7078168))

(assert (= (and b!7078165 (not c!1320811)) b!7078164))

(assert (= (or b!7078167 b!7078168) bm!643332))

(declare-fun m!7807282 () Bool)

(assert (=> bm!643332 m!7807282))

(declare-fun m!7807284 () Bool)

(assert (=> b!7078166 m!7807284))

(declare-fun m!7807286 () Bool)

(assert (=> b!7078167 m!7807286))

(assert (=> b!7077919 d!2213743))

(assert (=> b!7077919 d!2213685))

(declare-fun d!2213745 () Bool)

(assert (=> d!2213745 (= (flatMap!2600 lt!2550230 lambda!427095) (choose!54367 lt!2550230 lambda!427095))))

(declare-fun bs!1881628 () Bool)

(assert (= bs!1881628 d!2213745))

(declare-fun m!7807288 () Bool)

(assert (=> bs!1881628 m!7807288))

(assert (=> b!7077919 d!2213745))

(declare-fun d!2213747 () Bool)

(declare-fun nullableFct!2830 (Regex!17674) Bool)

(assert (=> d!2213747 (= (nullable!7357 (h!74873 (exprs!7170 lt!2550254))) (nullableFct!2830 (h!74873 (exprs!7170 lt!2550254))))))

(declare-fun bs!1881629 () Bool)

(assert (= bs!1881629 d!2213747))

(declare-fun m!7807290 () Bool)

(assert (=> bs!1881629 m!7807290))

(assert (=> b!7077932 d!2213747))

(declare-fun d!2213749 () Bool)

(assert (=> d!2213749 (= (tail!13876 (exprs!7170 lt!2550254)) (t!382334 (exprs!7170 lt!2550254)))))

(assert (=> b!7077932 d!2213749))

(declare-fun bs!1881630 () Bool)

(declare-fun d!2213751 () Bool)

(assert (= bs!1881630 (and d!2213751 b!7077933)))

(declare-fun lambda!427154 () Int)

(assert (=> bs!1881630 (= lambda!427154 lambda!427094)))

(declare-fun bs!1881631 () Bool)

(assert (= bs!1881631 (and d!2213751 d!2213671)))

(assert (=> bs!1881631 (= lambda!427154 lambda!427141)))

(declare-fun bs!1881632 () Bool)

(assert (= bs!1881632 (and d!2213751 d!2213715)))

(assert (=> bs!1881632 (= lambda!427154 lambda!427148)))

(assert (=> d!2213751 (= (inv!87045 setElem!50416) (forall!16634 (exprs!7170 setElem!50416) lambda!427154))))

(declare-fun bs!1881633 () Bool)

(assert (= bs!1881633 d!2213751))

(declare-fun m!7807292 () Bool)

(assert (=> bs!1881633 m!7807292))

(assert (=> setNonEmpty!50416 d!2213751))

(declare-fun b!7078173 () Bool)

(declare-fun e!4255397 () Bool)

(declare-fun tp!1943119 () Bool)

(assert (=> b!7078173 (= e!4255397 (and tp_is_empty!44573 tp!1943119))))

(assert (=> b!7077924 (= tp!1943103 e!4255397)))

(assert (= (and b!7077924 (is-Cons!68424 (t!382333 s!7408))) b!7078173))

(declare-fun b!7078178 () Bool)

(declare-fun e!4255401 () Bool)

(declare-fun tp!1943124 () Bool)

(declare-fun tp!1943125 () Bool)

(assert (=> b!7078178 (= e!4255401 (and tp!1943124 tp!1943125))))

(assert (=> b!7077929 (= tp!1943101 e!4255401)))

(assert (= (and b!7077929 (is-Cons!68425 (exprs!7170 ct2!306))) b!7078178))

(declare-fun b!7078179 () Bool)

(declare-fun e!4255402 () Bool)

(declare-fun tp!1943126 () Bool)

(declare-fun tp!1943127 () Bool)

(assert (=> b!7078179 (= e!4255402 (and tp!1943126 tp!1943127))))

(assert (=> b!7077928 (= tp!1943104 e!4255402)))

(assert (= (and b!7077928 (is-Cons!68425 (exprs!7170 setElem!50416))) b!7078179))

(declare-fun condSetEmpty!50422 () Bool)

(assert (=> setNonEmpty!50416 (= condSetEmpty!50422 (= setRest!50416 (as set.empty (Set Context!13340))))))

(declare-fun setRes!50422 () Bool)

(assert (=> setNonEmpty!50416 (= tp!1943102 setRes!50422)))

(declare-fun setIsEmpty!50422 () Bool)

(assert (=> setIsEmpty!50422 setRes!50422))

(declare-fun setNonEmpty!50422 () Bool)

(declare-fun setElem!50422 () Context!13340)

(declare-fun e!4255405 () Bool)

(declare-fun tp!1943132 () Bool)

(assert (=> setNonEmpty!50422 (= setRes!50422 (and tp!1943132 (inv!87045 setElem!50422) e!4255405))))

(declare-fun setRest!50422 () (Set Context!13340))

(assert (=> setNonEmpty!50422 (= setRest!50416 (set.union (set.insert setElem!50422 (as set.empty (Set Context!13340))) setRest!50422))))

(declare-fun b!7078184 () Bool)

(declare-fun tp!1943133 () Bool)

(assert (=> b!7078184 (= e!4255405 tp!1943133)))

(assert (= (and setNonEmpty!50416 condSetEmpty!50422) setIsEmpty!50422))

(assert (= (and setNonEmpty!50416 (not condSetEmpty!50422)) setNonEmpty!50422))

(assert (= setNonEmpty!50422 b!7078184))

(declare-fun m!7807294 () Bool)

(assert (=> setNonEmpty!50422 m!7807294))

(declare-fun b_lambda!270385 () Bool)

(assert (= b_lambda!270379 (or b!7077919 b_lambda!270385)))

(declare-fun bs!1881635 () Bool)

(declare-fun d!2213753 () Bool)

(assert (= bs!1881635 (and d!2213753 b!7077919)))

(assert (=> bs!1881635 (= (dynLambda!27872 lambda!427095 lt!2550254) (derivationStepZipperUp!2258 lt!2550254 (h!74872 s!7408)))))

(assert (=> bs!1881635 m!7806812))

(assert (=> d!2213679 d!2213753))

(declare-fun b_lambda!270387 () Bool)

(assert (= b_lambda!270381 (or b!7077933 b_lambda!270387)))

(declare-fun bs!1881636 () Bool)

(declare-fun d!2213757 () Bool)

(assert (= bs!1881636 (and d!2213757 b!7077933)))

(declare-fun lt!2550419 () Unit!162059)

(assert (=> bs!1881636 (= lt!2550419 (lemmaConcatPreservesForall!985 (exprs!7170 lt!2550375) (exprs!7170 ct2!306) lambda!427094))))

(assert (=> bs!1881636 (= (dynLambda!27873 lambda!427093 lt!2550375) (Context!13341 (++!15824 (exprs!7170 lt!2550375) (exprs!7170 ct2!306))))))

(declare-fun m!7807298 () Bool)

(assert (=> bs!1881636 m!7807298))

(declare-fun m!7807300 () Bool)

(assert (=> bs!1881636 m!7807300))

(assert (=> d!2213687 d!2213757))

(declare-fun b_lambda!270389 () Bool)

(assert (= b_lambda!270377 (or b!7077934 b_lambda!270389)))

(declare-fun bs!1881637 () Bool)

(declare-fun d!2213759 () Bool)

(assert (= bs!1881637 (and d!2213759 b!7077934)))

(assert (=> bs!1881637 (= (dynLambda!27870 lambda!427092 lt!2550361) (matchZipper!3214 (set.insert lt!2550361 (as set.empty (Set Context!13340))) s!7408))))

(declare-fun m!7807302 () Bool)

(assert (=> bs!1881637 m!7807302))

(assert (=> bs!1881637 m!7807302))

(declare-fun m!7807304 () Bool)

(assert (=> bs!1881637 m!7807304))

(assert (=> d!2213663 d!2213759))

(declare-fun b_lambda!270391 () Bool)

(assert (= b_lambda!270383 (or b!7077919 b_lambda!270391)))

(declare-fun bs!1881638 () Bool)

(declare-fun d!2213761 () Bool)

(assert (= bs!1881638 (and d!2213761 b!7077919)))

(assert (=> bs!1881638 (= (dynLambda!27872 lambda!427095 lt!2550228) (derivationStepZipperUp!2258 lt!2550228 (h!74872 s!7408)))))

(assert (=> bs!1881638 m!7806874))

(assert (=> d!2213739 d!2213761))

(push 1)

(assert (not b!7078136))

(assert (not b_lambda!270385))

(assert (not d!2213733))

(assert (not b!7078104))

(assert (not b!7078013))

(assert (not d!2213715))

(assert (not b!7078093))

(assert (not d!2213717))

(assert (not bm!643321))

(assert (not b!7078153))

(assert (not d!2213739))

(assert (not d!2213683))

(assert (not d!2213667))

(assert (not b!7078080))

(assert (not b!7078157))

(assert (not d!2213699))

(assert (not d!2213707))

(assert (not d!2213687))

(assert (not b!7078107))

(assert (not b!7078009))

(assert tp_is_empty!44573)

(assert (not d!2213745))

(assert (not d!2213729))

(assert (not b!7078154))

(assert (not d!2213669))

(assert (not bm!643307))

(assert (not d!2213701))

(assert (not d!2213735))

(assert (not d!2213721))

(assert (not b!7078179))

(assert (not bs!1881637))

(assert (not b!7078131))

(assert (not b!7078110))

(assert (not b!7078132))

(assert (not b!7078054))

(assert (not setNonEmpty!50422))

(assert (not b!7078048))

(assert (not bm!643325))

(assert (not b!7078160))

(assert (not b!7078090))

(assert (not d!2213741))

(assert (not d!2213693))

(assert (not d!2213719))

(assert (not b!7078130))

(assert (not b!7078178))

(assert (not d!2213689))

(assert (not b!7078091))

(assert (not b!7078094))

(assert (not b!7078019))

(assert (not d!2213661))

(assert (not b!7078105))

(assert (not d!2213751))

(assert (not b!7078034))

(assert (not bs!1881638))

(assert (not d!2213725))

(assert (not d!2213695))

(assert (not b_lambda!270389))

(assert (not d!2213657))

(assert (not d!2213675))

(assert (not b!7078152))

(assert (not d!2213713))

(assert (not d!2213685))

(assert (not b!7078109))

(assert (not b!7078108))

(assert (not d!2213747))

(assert (not d!2213681))

(assert (not b!7078135))

(assert (not b!7078129))

(assert (not b!7078166))

(assert (not d!2213697))

(assert (not bm!643332))

(assert (not b!7078055))

(assert (not bs!1881636))

(assert (not b!7078010))

(assert (not b!7078173))

(assert (not d!2213703))

(assert (not b!7078033))

(assert (not bm!643329))

(assert (not b!7078158))

(assert (not bm!643331))

(assert (not b_lambda!270391))

(assert (not b!7078151))

(assert (not b_lambda!270387))

(assert (not d!2213679))

(assert (not d!2213671))

(assert (not bs!1881635))

(assert (not d!2213731))

(assert (not bm!643327))

(assert (not b!7078047))

(assert (not b!7078140))

(assert (not d!2213709))

(assert (not b!7078020))

(assert (not bm!643323))

(assert (not d!2213665))

(assert (not d!2213659))

(assert (not b!7078167))

(assert (not d!2213663))

(assert (not b!7078184))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

