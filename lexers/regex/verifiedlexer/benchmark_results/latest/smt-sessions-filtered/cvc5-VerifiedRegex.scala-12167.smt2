; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!684554 () Bool)

(assert start!684554)

(declare-fun b!7056814 () Bool)

(assert (=> b!7056814 true))

(declare-fun b!7056827 () Bool)

(assert (=> b!7056827 true))

(declare-fun b!7056820 () Bool)

(assert (=> b!7056820 true))

(declare-fun setIsEmpty!49900 () Bool)

(declare-fun setRes!49900 () Bool)

(assert (=> setIsEmpty!49900 setRes!49900))

(declare-fun b!7056813 () Bool)

(declare-fun e!4242442 () Bool)

(declare-datatypes ((C!35430 0))(
  ( (C!35431 (val!27417 Int)) )
))
(declare-datatypes ((Regex!17580 0))(
  ( (ElementMatch!17580 (c!1314827 C!35430)) (Concat!26425 (regOne!35672 Regex!17580) (regTwo!35672 Regex!17580)) (EmptyExpr!17580) (Star!17580 (reg!17909 Regex!17580)) (EmptyLang!17580) (Union!17580 (regOne!35673 Regex!17580) (regTwo!35673 Regex!17580)) )
))
(declare-datatypes ((List!68266 0))(
  ( (Nil!68142) (Cons!68142 (h!74590 Regex!17580) (t!382045 List!68266)) )
))
(declare-datatypes ((Context!13152 0))(
  ( (Context!13153 (exprs!7076 List!68266)) )
))
(declare-fun lt!2533213 () (Set Context!13152))

(declare-datatypes ((List!68267 0))(
  ( (Nil!68143) (Cons!68143 (h!74591 C!35430) (t!382046 List!68267)) )
))
(declare-fun s!7408 () List!68267)

(declare-fun matchZipper!3120 ((Set Context!13152) List!68267) Bool)

(assert (=> b!7056813 (= e!4242442 (not (matchZipper!3120 lt!2533213 (t!382046 s!7408))))))

(declare-fun lt!2533192 () List!68266)

(declare-fun lambda!420877 () Int)

(declare-fun ct2!306 () Context!13152)

(declare-datatypes ((Unit!161833 0))(
  ( (Unit!161834) )
))
(declare-fun lt!2533188 () Unit!161833)

(declare-fun lemmaConcatPreservesForall!891 (List!68266 List!68266 Int) Unit!161833)

(assert (=> b!7056813 (= lt!2533188 (lemmaConcatPreservesForall!891 lt!2533192 (exprs!7076 ct2!306) lambda!420877))))

(declare-fun e!4242449 () Bool)

(declare-fun e!4242447 () Bool)

(assert (=> b!7056814 (= e!4242449 (not e!4242447))))

(declare-fun res!2880981 () Bool)

(assert (=> b!7056814 (=> res!2880981 e!4242447)))

(declare-fun lt!2533200 () (Set Context!13152))

(assert (=> b!7056814 (= res!2880981 (not (matchZipper!3120 lt!2533200 s!7408)))))

(declare-fun lt!2533198 () Context!13152)

(assert (=> b!7056814 (= lt!2533200 (set.insert lt!2533198 (as set.empty (Set Context!13152))))))

(declare-fun lt!2533177 () (Set Context!13152))

(declare-fun lambda!420875 () Int)

(declare-fun getWitness!1649 ((Set Context!13152) Int) Context!13152)

(assert (=> b!7056814 (= lt!2533198 (getWitness!1649 lt!2533177 lambda!420875))))

(declare-datatypes ((List!68268 0))(
  ( (Nil!68144) (Cons!68144 (h!74592 Context!13152) (t!382047 List!68268)) )
))
(declare-fun lt!2533196 () List!68268)

(declare-fun exists!3575 (List!68268 Int) Bool)

(assert (=> b!7056814 (exists!3575 lt!2533196 lambda!420875)))

(declare-fun lt!2533191 () Unit!161833)

(declare-fun lemmaZipperMatchesExistsMatchingContext!501 (List!68268 List!68267) Unit!161833)

(assert (=> b!7056814 (= lt!2533191 (lemmaZipperMatchesExistsMatchingContext!501 lt!2533196 s!7408))))

(declare-fun toList!10921 ((Set Context!13152)) List!68268)

(assert (=> b!7056814 (= lt!2533196 (toList!10921 lt!2533177))))

(declare-fun b!7056815 () Bool)

(declare-fun e!4242445 () Bool)

(declare-fun e!4242453 () Bool)

(assert (=> b!7056815 (= e!4242445 e!4242453)))

(declare-fun res!2880970 () Bool)

(assert (=> b!7056815 (=> res!2880970 e!4242453)))

(declare-fun lt!2533183 () Context!13152)

(declare-fun nullable!7263 (Regex!17580) Bool)

(assert (=> b!7056815 (= res!2880970 (not (nullable!7263 (h!74590 (exprs!7076 lt!2533183)))))))

(declare-fun lt!2533217 () Context!13152)

(assert (=> b!7056815 (= lt!2533217 (Context!13153 lt!2533192))))

(declare-fun tail!13717 (List!68266) List!68266)

(assert (=> b!7056815 (= lt!2533192 (tail!13717 (exprs!7076 lt!2533183)))))

(declare-fun b!7056817 () Bool)

(declare-fun e!4242454 () Bool)

(declare-fun e!4242450 () Bool)

(assert (=> b!7056817 (= e!4242454 e!4242450)))

(declare-fun res!2880972 () Bool)

(assert (=> b!7056817 (=> res!2880972 e!4242450)))

(declare-fun lt!2533204 () (Set Context!13152))

(assert (=> b!7056817 (= res!2880972 (not (= lt!2533204 lt!2533200)))))

(declare-fun lt!2533211 () Context!13152)

(assert (=> b!7056817 (= lt!2533204 (set.insert lt!2533211 (as set.empty (Set Context!13152))))))

(declare-fun lt!2533176 () Unit!161833)

(assert (=> b!7056817 (= lt!2533176 (lemmaConcatPreservesForall!891 (exprs!7076 lt!2533183) (exprs!7076 ct2!306) lambda!420877))))

(declare-fun b!7056818 () Bool)

(declare-fun e!4242443 () Bool)

(declare-fun e!4242455 () Bool)

(assert (=> b!7056818 (= e!4242443 e!4242455)))

(declare-fun res!2880978 () Bool)

(assert (=> b!7056818 (=> res!2880978 e!4242455)))

(assert (=> b!7056818 (= res!2880978 (not (matchZipper!3120 lt!2533213 (t!382046 s!7408))))))

(declare-fun lt!2533195 () Unit!161833)

(assert (=> b!7056818 (= lt!2533195 (lemmaConcatPreservesForall!891 lt!2533192 (exprs!7076 ct2!306) lambda!420877))))

(declare-fun b!7056819 () Bool)

(declare-fun res!2880980 () Bool)

(assert (=> b!7056819 (=> res!2880980 e!4242443)))

(declare-fun lt!2533201 () Bool)

(assert (=> b!7056819 (= res!2880980 (not lt!2533201))))

(assert (=> b!7056820 (= e!4242450 e!4242445)))

(declare-fun res!2880985 () Bool)

(assert (=> b!7056820 (=> res!2880985 e!4242445)))

(declare-fun lt!2533193 () (Set Context!13152))

(declare-fun derivationStepZipper!3030 ((Set Context!13152) C!35430) (Set Context!13152))

(assert (=> b!7056820 (= res!2880985 (not (= (derivationStepZipper!3030 lt!2533204 (h!74591 s!7408)) lt!2533193)))))

(declare-fun lambda!420878 () Int)

(declare-fun flatMap!2506 ((Set Context!13152) Int) (Set Context!13152))

(declare-fun derivationStepZipperUp!2164 (Context!13152 C!35430) (Set Context!13152))

(assert (=> b!7056820 (= (flatMap!2506 lt!2533204 lambda!420878) (derivationStepZipperUp!2164 lt!2533211 (h!74591 s!7408)))))

(declare-fun lt!2533181 () Unit!161833)

(declare-fun lemmaFlatMapOnSingletonSet!2015 ((Set Context!13152) Context!13152 Int) Unit!161833)

(assert (=> b!7056820 (= lt!2533181 (lemmaFlatMapOnSingletonSet!2015 lt!2533204 lt!2533211 lambda!420878))))

(assert (=> b!7056820 (= lt!2533193 (derivationStepZipperUp!2164 lt!2533211 (h!74591 s!7408)))))

(declare-fun lt!2533206 () Unit!161833)

(assert (=> b!7056820 (= lt!2533206 (lemmaConcatPreservesForall!891 (exprs!7076 lt!2533183) (exprs!7076 ct2!306) lambda!420877))))

(declare-fun b!7056821 () Bool)

(declare-fun e!4242456 () Bool)

(declare-fun tp!1940424 () Bool)

(assert (=> b!7056821 (= e!4242456 tp!1940424)))

(declare-fun b!7056822 () Bool)

(declare-fun res!2880979 () Bool)

(assert (=> b!7056822 (=> res!2880979 e!4242445)))

(assert (=> b!7056822 (= res!2880979 (not (is-Cons!68142 (exprs!7076 lt!2533183))))))

(declare-fun b!7056823 () Bool)

(declare-fun e!4242451 () Bool)

(declare-fun tp_is_empty!44385 () Bool)

(declare-fun tp!1940423 () Bool)

(assert (=> b!7056823 (= e!4242451 (and tp_is_empty!44385 tp!1940423))))

(declare-fun b!7056824 () Bool)

(declare-fun e!4242448 () Bool)

(declare-fun e!4242441 () Bool)

(assert (=> b!7056824 (= e!4242448 e!4242441)))

(declare-fun res!2880971 () Bool)

(assert (=> b!7056824 (=> res!2880971 e!4242441)))

(declare-fun lt!2533179 () (Set Context!13152))

(assert (=> b!7056824 (= res!2880971 (not (matchZipper!3120 lt!2533179 s!7408)))))

(declare-fun lt!2533180 () Unit!161833)

(assert (=> b!7056824 (= lt!2533180 (lemmaConcatPreservesForall!891 lt!2533192 (exprs!7076 ct2!306) lambda!420877))))

(declare-fun b!7056825 () Bool)

(declare-fun e!4242446 () Bool)

(declare-fun tp!1940422 () Bool)

(assert (=> b!7056825 (= e!4242446 tp!1940422)))

(declare-fun b!7056826 () Bool)

(declare-fun z1!570 () (Set Context!13152))

(declare-fun contains!20483 (List!68268 Context!13152) Bool)

(assert (=> b!7056826 (= e!4242441 (contains!20483 (toList!10921 z1!570) lt!2533183))))

(declare-fun lt!2533185 () Unit!161833)

(assert (=> b!7056826 (= lt!2533185 (lemmaConcatPreservesForall!891 lt!2533192 (exprs!7076 ct2!306) lambda!420877))))

(declare-fun lt!2533203 () Unit!161833)

(assert (=> b!7056826 (= lt!2533203 (lemmaConcatPreservesForall!891 lt!2533192 (exprs!7076 ct2!306) lambda!420877))))

(declare-fun lt!2533184 () Unit!161833)

(assert (=> b!7056826 (= lt!2533184 (lemmaConcatPreservesForall!891 lt!2533192 (exprs!7076 ct2!306) lambda!420877))))

(declare-fun lt!2533190 () (Set Context!13152))

(assert (=> b!7056826 (= (flatMap!2506 lt!2533190 lambda!420878) (derivationStepZipperUp!2164 lt!2533217 (h!74591 s!7408)))))

(declare-fun lt!2533216 () Unit!161833)

(assert (=> b!7056826 (= lt!2533216 (lemmaFlatMapOnSingletonSet!2015 lt!2533190 lt!2533217 lambda!420878))))

(declare-fun lambda!420876 () Int)

(declare-fun map!15903 ((Set Context!13152) Int) (Set Context!13152))

(declare-fun ++!15663 (List!68266 List!68266) List!68266)

(assert (=> b!7056826 (= (map!15903 lt!2533190 lambda!420876) (set.insert (Context!13153 (++!15663 lt!2533192 (exprs!7076 ct2!306))) (as set.empty (Set Context!13152))))))

(declare-fun lt!2533199 () Unit!161833)

(assert (=> b!7056826 (= lt!2533199 (lemmaConcatPreservesForall!891 lt!2533192 (exprs!7076 ct2!306) lambda!420877))))

(declare-fun lt!2533207 () Unit!161833)

(declare-fun lemmaMapOnSingletonSet!397 ((Set Context!13152) Context!13152 Int) Unit!161833)

(assert (=> b!7056826 (= lt!2533207 (lemmaMapOnSingletonSet!397 lt!2533190 lt!2533217 lambda!420876))))

(assert (=> b!7056826 (= lt!2533190 (set.insert lt!2533217 (as set.empty (Set Context!13152))))))

(declare-fun res!2880976 () Bool)

(assert (=> start!684554 (=> (not res!2880976) (not e!4242449))))

(assert (=> start!684554 (= res!2880976 (matchZipper!3120 lt!2533177 s!7408))))

(declare-fun appendTo!701 ((Set Context!13152) Context!13152) (Set Context!13152))

(assert (=> start!684554 (= lt!2533177 (appendTo!701 z1!570 ct2!306))))

(assert (=> start!684554 e!4242449))

(declare-fun condSetEmpty!49900 () Bool)

(assert (=> start!684554 (= condSetEmpty!49900 (= z1!570 (as set.empty (Set Context!13152))))))

(assert (=> start!684554 setRes!49900))

(declare-fun inv!86810 (Context!13152) Bool)

(assert (=> start!684554 (and (inv!86810 ct2!306) e!4242456)))

(assert (=> start!684554 e!4242451))

(declare-fun b!7056816 () Bool)

(declare-fun res!2880983 () Bool)

(assert (=> b!7056816 (=> (not res!2880983) (not e!4242449))))

(assert (=> b!7056816 (= res!2880983 (is-Cons!68143 s!7408))))

(assert (=> b!7056827 (= e!4242447 e!4242454)))

(declare-fun res!2880984 () Bool)

(assert (=> b!7056827 (=> res!2880984 e!4242454)))

(assert (=> b!7056827 (= res!2880984 (or (not (= lt!2533211 lt!2533198)) (not (set.member lt!2533183 z1!570))))))

(assert (=> b!7056827 (= lt!2533211 (Context!13153 (++!15663 (exprs!7076 lt!2533183) (exprs!7076 ct2!306))))))

(declare-fun lt!2533194 () Unit!161833)

(assert (=> b!7056827 (= lt!2533194 (lemmaConcatPreservesForall!891 (exprs!7076 lt!2533183) (exprs!7076 ct2!306) lambda!420877))))

(declare-fun mapPost2!409 ((Set Context!13152) Int Context!13152) Context!13152)

(assert (=> b!7056827 (= lt!2533183 (mapPost2!409 z1!570 lambda!420876 lt!2533198))))

(declare-fun b!7056828 () Bool)

(assert (=> b!7056828 (= e!4242455 e!4242448)))

(declare-fun res!2880969 () Bool)

(assert (=> b!7056828 (=> res!2880969 e!4242448)))

(assert (=> b!7056828 (= res!2880969 (not (= (derivationStepZipper!3030 lt!2533179 (h!74591 s!7408)) lt!2533213)))))

(declare-fun lt!2533214 () Unit!161833)

(assert (=> b!7056828 (= lt!2533214 (lemmaConcatPreservesForall!891 lt!2533192 (exprs!7076 ct2!306) lambda!420877))))

(declare-fun lt!2533218 () Unit!161833)

(assert (=> b!7056828 (= lt!2533218 (lemmaConcatPreservesForall!891 lt!2533192 (exprs!7076 ct2!306) lambda!420877))))

(declare-fun lt!2533208 () Context!13152)

(assert (=> b!7056828 (= (flatMap!2506 lt!2533179 lambda!420878) (derivationStepZipperUp!2164 lt!2533208 (h!74591 s!7408)))))

(declare-fun lt!2533205 () Unit!161833)

(assert (=> b!7056828 (= lt!2533205 (lemmaFlatMapOnSingletonSet!2015 lt!2533179 lt!2533208 lambda!420878))))

(assert (=> b!7056828 (= lt!2533179 (set.insert lt!2533208 (as set.empty (Set Context!13152))))))

(declare-fun lt!2533209 () Unit!161833)

(assert (=> b!7056828 (= lt!2533209 (lemmaConcatPreservesForall!891 lt!2533192 (exprs!7076 ct2!306) lambda!420877))))

(declare-fun lt!2533212 () Unit!161833)

(assert (=> b!7056828 (= lt!2533212 (lemmaConcatPreservesForall!891 lt!2533192 (exprs!7076 ct2!306) lambda!420877))))

(declare-fun b!7056829 () Bool)

(declare-fun e!4242444 () Bool)

(assert (=> b!7056829 (= e!4242453 e!4242444)))

(declare-fun res!2880977 () Bool)

(assert (=> b!7056829 (=> res!2880977 e!4242444)))

(declare-fun lt!2533215 () (Set Context!13152))

(assert (=> b!7056829 (= res!2880977 (not (= lt!2533193 lt!2533215)))))

(declare-fun lt!2533182 () (Set Context!13152))

(assert (=> b!7056829 (= lt!2533215 (set.union lt!2533182 lt!2533213))))

(assert (=> b!7056829 (= lt!2533213 (derivationStepZipperUp!2164 lt!2533208 (h!74591 s!7408)))))

(declare-fun derivationStepZipperDown!2214 (Regex!17580 Context!13152 C!35430) (Set Context!13152))

(assert (=> b!7056829 (= lt!2533182 (derivationStepZipperDown!2214 (h!74590 (exprs!7076 lt!2533183)) lt!2533208 (h!74591 s!7408)))))

(assert (=> b!7056829 (= lt!2533208 (Context!13153 (++!15663 lt!2533192 (exprs!7076 ct2!306))))))

(declare-fun lt!2533187 () Unit!161833)

(assert (=> b!7056829 (= lt!2533187 (lemmaConcatPreservesForall!891 lt!2533192 (exprs!7076 ct2!306) lambda!420877))))

(declare-fun lt!2533186 () Unit!161833)

(assert (=> b!7056829 (= lt!2533186 (lemmaConcatPreservesForall!891 lt!2533192 (exprs!7076 ct2!306) lambda!420877))))

(declare-fun b!7056830 () Bool)

(declare-fun res!2880986 () Bool)

(assert (=> b!7056830 (=> res!2880986 e!4242445)))

(declare-fun isEmpty!39745 (List!68266) Bool)

(assert (=> b!7056830 (= res!2880986 (isEmpty!39745 (exprs!7076 lt!2533183)))))

(declare-fun b!7056831 () Bool)

(declare-fun res!2880974 () Bool)

(assert (=> b!7056831 (=> res!2880974 e!4242447)))

(assert (=> b!7056831 (= res!2880974 (not (set.member lt!2533198 lt!2533177)))))

(declare-fun setElem!49900 () Context!13152)

(declare-fun setNonEmpty!49900 () Bool)

(declare-fun tp!1940421 () Bool)

(assert (=> setNonEmpty!49900 (= setRes!49900 (and tp!1940421 (inv!86810 setElem!49900) e!4242446))))

(declare-fun setRest!49900 () (Set Context!13152))

(assert (=> setNonEmpty!49900 (= z1!570 (set.union (set.insert setElem!49900 (as set.empty (Set Context!13152))) setRest!49900))))

(declare-fun b!7056832 () Bool)

(declare-fun e!4242452 () Bool)

(assert (=> b!7056832 (= e!4242452 (matchZipper!3120 lt!2533213 (t!382046 s!7408)))))

(declare-fun b!7056833 () Bool)

(assert (=> b!7056833 (= e!4242444 e!4242443)))

(declare-fun res!2880975 () Bool)

(assert (=> b!7056833 (=> res!2880975 e!4242443)))

(assert (=> b!7056833 (= res!2880975 e!4242442)))

(declare-fun res!2880982 () Bool)

(assert (=> b!7056833 (=> (not res!2880982) (not e!4242442))))

(declare-fun lt!2533178 () Bool)

(assert (=> b!7056833 (= res!2880982 (not (= lt!2533201 lt!2533178)))))

(assert (=> b!7056833 (= lt!2533201 (matchZipper!3120 lt!2533193 (t!382046 s!7408)))))

(declare-fun lt!2533210 () Unit!161833)

(assert (=> b!7056833 (= lt!2533210 (lemmaConcatPreservesForall!891 lt!2533192 (exprs!7076 ct2!306) lambda!420877))))

(assert (=> b!7056833 (= (matchZipper!3120 lt!2533215 (t!382046 s!7408)) e!4242452)))

(declare-fun res!2880973 () Bool)

(assert (=> b!7056833 (=> res!2880973 e!4242452)))

(assert (=> b!7056833 (= res!2880973 lt!2533178)))

(assert (=> b!7056833 (= lt!2533178 (matchZipper!3120 lt!2533182 (t!382046 s!7408)))))

(declare-fun lt!2533189 () Unit!161833)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1593 ((Set Context!13152) (Set Context!13152) List!68267) Unit!161833)

(assert (=> b!7056833 (= lt!2533189 (lemmaZipperConcatMatchesSameAsBothZippers!1593 lt!2533182 lt!2533213 (t!382046 s!7408)))))

(declare-fun lt!2533197 () Unit!161833)

(assert (=> b!7056833 (= lt!2533197 (lemmaConcatPreservesForall!891 lt!2533192 (exprs!7076 ct2!306) lambda!420877))))

(declare-fun lt!2533202 () Unit!161833)

(assert (=> b!7056833 (= lt!2533202 (lemmaConcatPreservesForall!891 lt!2533192 (exprs!7076 ct2!306) lambda!420877))))

(assert (= (and start!684554 res!2880976) b!7056816))

(assert (= (and b!7056816 res!2880983) b!7056814))

(assert (= (and b!7056814 (not res!2880981)) b!7056831))

(assert (= (and b!7056831 (not res!2880974)) b!7056827))

(assert (= (and b!7056827 (not res!2880984)) b!7056817))

(assert (= (and b!7056817 (not res!2880972)) b!7056820))

(assert (= (and b!7056820 (not res!2880985)) b!7056822))

(assert (= (and b!7056822 (not res!2880979)) b!7056830))

(assert (= (and b!7056830 (not res!2880986)) b!7056815))

(assert (= (and b!7056815 (not res!2880970)) b!7056829))

(assert (= (and b!7056829 (not res!2880977)) b!7056833))

(assert (= (and b!7056833 (not res!2880973)) b!7056832))

(assert (= (and b!7056833 res!2880982) b!7056813))

(assert (= (and b!7056833 (not res!2880975)) b!7056819))

(assert (= (and b!7056819 (not res!2880980)) b!7056818))

(assert (= (and b!7056818 (not res!2880978)) b!7056828))

(assert (= (and b!7056828 (not res!2880969)) b!7056824))

(assert (= (and b!7056824 (not res!2880971)) b!7056826))

(assert (= (and start!684554 condSetEmpty!49900) setIsEmpty!49900))

(assert (= (and start!684554 (not condSetEmpty!49900)) setNonEmpty!49900))

(assert (= setNonEmpty!49900 b!7056825))

(assert (= start!684554 b!7056821))

(assert (= (and start!684554 (is-Cons!68143 s!7408)) b!7056823))

(declare-fun m!7775070 () Bool)

(assert (=> b!7056820 m!7775070))

(declare-fun m!7775072 () Bool)

(assert (=> b!7056820 m!7775072))

(declare-fun m!7775074 () Bool)

(assert (=> b!7056820 m!7775074))

(declare-fun m!7775076 () Bool)

(assert (=> b!7056820 m!7775076))

(declare-fun m!7775078 () Bool)

(assert (=> b!7056820 m!7775078))

(declare-fun m!7775080 () Bool)

(assert (=> b!7056827 m!7775080))

(declare-fun m!7775082 () Bool)

(assert (=> b!7056827 m!7775082))

(assert (=> b!7056827 m!7775070))

(declare-fun m!7775084 () Bool)

(assert (=> b!7056827 m!7775084))

(declare-fun m!7775086 () Bool)

(assert (=> setNonEmpty!49900 m!7775086))

(declare-fun m!7775088 () Bool)

(assert (=> b!7056824 m!7775088))

(declare-fun m!7775090 () Bool)

(assert (=> b!7056824 m!7775090))

(declare-fun m!7775092 () Bool)

(assert (=> b!7056831 m!7775092))

(assert (=> b!7056826 m!7775090))

(declare-fun m!7775094 () Bool)

(assert (=> b!7056826 m!7775094))

(declare-fun m!7775096 () Bool)

(assert (=> b!7056826 m!7775096))

(assert (=> b!7056826 m!7775090))

(assert (=> b!7056826 m!7775090))

(declare-fun m!7775098 () Bool)

(assert (=> b!7056826 m!7775098))

(declare-fun m!7775100 () Bool)

(assert (=> b!7056826 m!7775100))

(declare-fun m!7775102 () Bool)

(assert (=> b!7056826 m!7775102))

(declare-fun m!7775104 () Bool)

(assert (=> b!7056826 m!7775104))

(assert (=> b!7056826 m!7775090))

(declare-fun m!7775106 () Bool)

(assert (=> b!7056826 m!7775106))

(declare-fun m!7775108 () Bool)

(assert (=> b!7056826 m!7775108))

(declare-fun m!7775110 () Bool)

(assert (=> b!7056826 m!7775110))

(assert (=> b!7056826 m!7775096))

(declare-fun m!7775112 () Bool)

(assert (=> b!7056826 m!7775112))

(declare-fun m!7775114 () Bool)

(assert (=> b!7056832 m!7775114))

(assert (=> b!7056833 m!7775090))

(declare-fun m!7775116 () Bool)

(assert (=> b!7056833 m!7775116))

(assert (=> b!7056833 m!7775090))

(assert (=> b!7056833 m!7775090))

(declare-fun m!7775118 () Bool)

(assert (=> b!7056833 m!7775118))

(declare-fun m!7775120 () Bool)

(assert (=> b!7056833 m!7775120))

(declare-fun m!7775122 () Bool)

(assert (=> b!7056833 m!7775122))

(declare-fun m!7775124 () Bool)

(assert (=> b!7056817 m!7775124))

(assert (=> b!7056817 m!7775070))

(declare-fun m!7775126 () Bool)

(assert (=> start!684554 m!7775126))

(declare-fun m!7775128 () Bool)

(assert (=> start!684554 m!7775128))

(declare-fun m!7775130 () Bool)

(assert (=> start!684554 m!7775130))

(assert (=> b!7056813 m!7775114))

(assert (=> b!7056813 m!7775090))

(declare-fun m!7775132 () Bool)

(assert (=> b!7056830 m!7775132))

(assert (=> b!7056828 m!7775090))

(assert (=> b!7056828 m!7775090))

(assert (=> b!7056828 m!7775090))

(declare-fun m!7775134 () Bool)

(assert (=> b!7056828 m!7775134))

(declare-fun m!7775136 () Bool)

(assert (=> b!7056828 m!7775136))

(declare-fun m!7775138 () Bool)

(assert (=> b!7056828 m!7775138))

(declare-fun m!7775140 () Bool)

(assert (=> b!7056828 m!7775140))

(declare-fun m!7775142 () Bool)

(assert (=> b!7056828 m!7775142))

(assert (=> b!7056828 m!7775090))

(assert (=> b!7056818 m!7775114))

(assert (=> b!7056818 m!7775090))

(declare-fun m!7775144 () Bool)

(assert (=> b!7056814 m!7775144))

(declare-fun m!7775146 () Bool)

(assert (=> b!7056814 m!7775146))

(declare-fun m!7775148 () Bool)

(assert (=> b!7056814 m!7775148))

(declare-fun m!7775150 () Bool)

(assert (=> b!7056814 m!7775150))

(declare-fun m!7775152 () Bool)

(assert (=> b!7056814 m!7775152))

(declare-fun m!7775154 () Bool)

(assert (=> b!7056814 m!7775154))

(declare-fun m!7775156 () Bool)

(assert (=> b!7056815 m!7775156))

(declare-fun m!7775158 () Bool)

(assert (=> b!7056815 m!7775158))

(assert (=> b!7056829 m!7775094))

(assert (=> b!7056829 m!7775090))

(assert (=> b!7056829 m!7775090))

(declare-fun m!7775160 () Bool)

(assert (=> b!7056829 m!7775160))

(assert (=> b!7056829 m!7775140))

(push 1)

(assert (not b!7056817))

(assert (not b!7056823))

(assert (not b!7056813))

(assert (not b!7056821))

(assert (not setNonEmpty!49900))

(assert (not b!7056826))

(assert (not b!7056832))

(assert (not b!7056825))

(assert (not b!7056830))

(assert (not b!7056829))

(assert (not b!7056828))

(assert (not b!7056818))

(assert tp_is_empty!44385)

(assert (not b!7056814))

(assert (not b!7056815))

(assert (not start!684554))

(assert (not b!7056833))

(assert (not b!7056820))

(assert (not b!7056827))

(assert (not b!7056824))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2205440 () Bool)

(declare-fun forall!16529 (List!68266 Int) Bool)

(assert (=> d!2205440 (forall!16529 (++!15663 (exprs!7076 lt!2533183) (exprs!7076 ct2!306)) lambda!420877)))

(declare-fun lt!2533354 () Unit!161833)

(declare-fun choose!53853 (List!68266 List!68266 Int) Unit!161833)

(assert (=> d!2205440 (= lt!2533354 (choose!53853 (exprs!7076 lt!2533183) (exprs!7076 ct2!306) lambda!420877))))

(assert (=> d!2205440 (forall!16529 (exprs!7076 lt!2533183) lambda!420877)))

(assert (=> d!2205440 (= (lemmaConcatPreservesForall!891 (exprs!7076 lt!2533183) (exprs!7076 ct2!306) lambda!420877) lt!2533354)))

(declare-fun bs!1877256 () Bool)

(assert (= bs!1877256 d!2205440))

(assert (=> bs!1877256 m!7775082))

(assert (=> bs!1877256 m!7775082))

(declare-fun m!7775254 () Bool)

(assert (=> bs!1877256 m!7775254))

(declare-fun m!7775256 () Bool)

(assert (=> bs!1877256 m!7775256))

(declare-fun m!7775258 () Bool)

(assert (=> bs!1877256 m!7775258))

(assert (=> b!7056820 d!2205440))

(declare-fun e!4242513 () (Set Context!13152))

(declare-fun b!7056919 () Bool)

(declare-fun call!641095 () (Set Context!13152))

(assert (=> b!7056919 (= e!4242513 (set.union call!641095 (derivationStepZipperUp!2164 (Context!13153 (t!382045 (exprs!7076 lt!2533211))) (h!74591 s!7408))))))

(declare-fun b!7056920 () Bool)

(declare-fun e!4242512 () (Set Context!13152))

(assert (=> b!7056920 (= e!4242512 (as set.empty (Set Context!13152)))))

(declare-fun b!7056921 () Bool)

(declare-fun e!4242511 () Bool)

(assert (=> b!7056921 (= e!4242511 (nullable!7263 (h!74590 (exprs!7076 lt!2533211))))))

(declare-fun b!7056922 () Bool)

(assert (=> b!7056922 (= e!4242512 call!641095)))

(declare-fun bm!641090 () Bool)

(assert (=> bm!641090 (= call!641095 (derivationStepZipperDown!2214 (h!74590 (exprs!7076 lt!2533211)) (Context!13153 (t!382045 (exprs!7076 lt!2533211))) (h!74591 s!7408)))))

(declare-fun d!2205442 () Bool)

(declare-fun c!1314847 () Bool)

(assert (=> d!2205442 (= c!1314847 e!4242511)))

(declare-fun res!2881045 () Bool)

(assert (=> d!2205442 (=> (not res!2881045) (not e!4242511))))

(assert (=> d!2205442 (= res!2881045 (is-Cons!68142 (exprs!7076 lt!2533211)))))

(assert (=> d!2205442 (= (derivationStepZipperUp!2164 lt!2533211 (h!74591 s!7408)) e!4242513)))

(declare-fun b!7056923 () Bool)

(assert (=> b!7056923 (= e!4242513 e!4242512)))

(declare-fun c!1314848 () Bool)

(assert (=> b!7056923 (= c!1314848 (is-Cons!68142 (exprs!7076 lt!2533211)))))

(assert (= (and d!2205442 res!2881045) b!7056921))

(assert (= (and d!2205442 c!1314847) b!7056919))

(assert (= (and d!2205442 (not c!1314847)) b!7056923))

(assert (= (and b!7056923 c!1314848) b!7056922))

(assert (= (and b!7056923 (not c!1314848)) b!7056920))

(assert (= (or b!7056919 b!7056922) bm!641090))

(declare-fun m!7775260 () Bool)

(assert (=> b!7056919 m!7775260))

(declare-fun m!7775262 () Bool)

(assert (=> b!7056921 m!7775262))

(declare-fun m!7775264 () Bool)

(assert (=> bm!641090 m!7775264))

(assert (=> b!7056820 d!2205442))

(declare-fun d!2205444 () Bool)

(declare-fun choose!53854 ((Set Context!13152) Int) (Set Context!13152))

(assert (=> d!2205444 (= (flatMap!2506 lt!2533204 lambda!420878) (choose!53854 lt!2533204 lambda!420878))))

(declare-fun bs!1877257 () Bool)

(assert (= bs!1877257 d!2205444))

(declare-fun m!7775266 () Bool)

(assert (=> bs!1877257 m!7775266))

(assert (=> b!7056820 d!2205444))

(declare-fun d!2205446 () Bool)

(declare-fun dynLambda!27661 (Int Context!13152) (Set Context!13152))

(assert (=> d!2205446 (= (flatMap!2506 lt!2533204 lambda!420878) (dynLambda!27661 lambda!420878 lt!2533211))))

(declare-fun lt!2533357 () Unit!161833)

(declare-fun choose!53855 ((Set Context!13152) Context!13152 Int) Unit!161833)

(assert (=> d!2205446 (= lt!2533357 (choose!53855 lt!2533204 lt!2533211 lambda!420878))))

(assert (=> d!2205446 (= lt!2533204 (set.insert lt!2533211 (as set.empty (Set Context!13152))))))

(assert (=> d!2205446 (= (lemmaFlatMapOnSingletonSet!2015 lt!2533204 lt!2533211 lambda!420878) lt!2533357)))

(declare-fun b_lambda!268819 () Bool)

(assert (=> (not b_lambda!268819) (not d!2205446)))

(declare-fun bs!1877258 () Bool)

(assert (= bs!1877258 d!2205446))

(assert (=> bs!1877258 m!7775078))

(declare-fun m!7775268 () Bool)

(assert (=> bs!1877258 m!7775268))

(declare-fun m!7775270 () Bool)

(assert (=> bs!1877258 m!7775270))

(assert (=> bs!1877258 m!7775124))

(assert (=> b!7056820 d!2205446))

(declare-fun bs!1877259 () Bool)

(declare-fun d!2205448 () Bool)

(assert (= bs!1877259 (and d!2205448 b!7056820)))

(declare-fun lambda!420941 () Int)

(assert (=> bs!1877259 (= lambda!420941 lambda!420878)))

(assert (=> d!2205448 true))

(assert (=> d!2205448 (= (derivationStepZipper!3030 lt!2533204 (h!74591 s!7408)) (flatMap!2506 lt!2533204 lambda!420941))))

(declare-fun bs!1877260 () Bool)

(assert (= bs!1877260 d!2205448))

(declare-fun m!7775272 () Bool)

(assert (=> bs!1877260 m!7775272))

(assert (=> b!7056820 d!2205448))

(declare-fun d!2205450 () Bool)

(declare-fun c!1314853 () Bool)

(declare-fun isEmpty!39747 (List!68267) Bool)

(assert (=> d!2205450 (= c!1314853 (isEmpty!39747 s!7408))))

(declare-fun e!4242516 () Bool)

(assert (=> d!2205450 (= (matchZipper!3120 lt!2533177 s!7408) e!4242516)))

(declare-fun b!7056930 () Bool)

(declare-fun nullableZipper!2664 ((Set Context!13152)) Bool)

(assert (=> b!7056930 (= e!4242516 (nullableZipper!2664 lt!2533177))))

(declare-fun b!7056931 () Bool)

(declare-fun head!14365 (List!68267) C!35430)

(declare-fun tail!13719 (List!68267) List!68267)

(assert (=> b!7056931 (= e!4242516 (matchZipper!3120 (derivationStepZipper!3030 lt!2533177 (head!14365 s!7408)) (tail!13719 s!7408)))))

(assert (= (and d!2205450 c!1314853) b!7056930))

(assert (= (and d!2205450 (not c!1314853)) b!7056931))

(declare-fun m!7775274 () Bool)

(assert (=> d!2205450 m!7775274))

(declare-fun m!7775276 () Bool)

(assert (=> b!7056930 m!7775276))

(declare-fun m!7775278 () Bool)

(assert (=> b!7056931 m!7775278))

(assert (=> b!7056931 m!7775278))

(declare-fun m!7775280 () Bool)

(assert (=> b!7056931 m!7775280))

(declare-fun m!7775282 () Bool)

(assert (=> b!7056931 m!7775282))

(assert (=> b!7056931 m!7775280))

(assert (=> b!7056931 m!7775282))

(declare-fun m!7775284 () Bool)

(assert (=> b!7056931 m!7775284))

(assert (=> start!684554 d!2205450))

(declare-fun bs!1877261 () Bool)

(declare-fun d!2205452 () Bool)

(assert (= bs!1877261 (and d!2205452 b!7056827)))

(declare-fun lambda!420946 () Int)

(assert (=> bs!1877261 (= lambda!420946 lambda!420876)))

(assert (=> d!2205452 true))

(assert (=> d!2205452 (= (appendTo!701 z1!570 ct2!306) (map!15903 z1!570 lambda!420946))))

(declare-fun bs!1877262 () Bool)

(assert (= bs!1877262 d!2205452))

(declare-fun m!7775286 () Bool)

(assert (=> bs!1877262 m!7775286))

(assert (=> start!684554 d!2205452))

(declare-fun bs!1877263 () Bool)

(declare-fun d!2205454 () Bool)

(assert (= bs!1877263 (and d!2205454 b!7056827)))

(declare-fun lambda!420949 () Int)

(assert (=> bs!1877263 (= lambda!420949 lambda!420877)))

(assert (=> d!2205454 (= (inv!86810 ct2!306) (forall!16529 (exprs!7076 ct2!306) lambda!420949))))

(declare-fun bs!1877264 () Bool)

(assert (= bs!1877264 d!2205454))

(declare-fun m!7775288 () Bool)

(assert (=> bs!1877264 m!7775288))

(assert (=> start!684554 d!2205454))

(declare-fun b!7056932 () Bool)

(declare-fun call!641096 () (Set Context!13152))

(declare-fun e!4242519 () (Set Context!13152))

(assert (=> b!7056932 (= e!4242519 (set.union call!641096 (derivationStepZipperUp!2164 (Context!13153 (t!382045 (exprs!7076 lt!2533208))) (h!74591 s!7408))))))

(declare-fun b!7056933 () Bool)

(declare-fun e!4242518 () (Set Context!13152))

(assert (=> b!7056933 (= e!4242518 (as set.empty (Set Context!13152)))))

(declare-fun b!7056934 () Bool)

(declare-fun e!4242517 () Bool)

(assert (=> b!7056934 (= e!4242517 (nullable!7263 (h!74590 (exprs!7076 lt!2533208))))))

(declare-fun b!7056935 () Bool)

(assert (=> b!7056935 (= e!4242518 call!641096)))

(declare-fun bm!641091 () Bool)

(assert (=> bm!641091 (= call!641096 (derivationStepZipperDown!2214 (h!74590 (exprs!7076 lt!2533208)) (Context!13153 (t!382045 (exprs!7076 lt!2533208))) (h!74591 s!7408)))))

(declare-fun d!2205456 () Bool)

(declare-fun c!1314855 () Bool)

(assert (=> d!2205456 (= c!1314855 e!4242517)))

(declare-fun res!2881046 () Bool)

(assert (=> d!2205456 (=> (not res!2881046) (not e!4242517))))

(assert (=> d!2205456 (= res!2881046 (is-Cons!68142 (exprs!7076 lt!2533208)))))

(assert (=> d!2205456 (= (derivationStepZipperUp!2164 lt!2533208 (h!74591 s!7408)) e!4242519)))

(declare-fun b!7056936 () Bool)

(assert (=> b!7056936 (= e!4242519 e!4242518)))

(declare-fun c!1314856 () Bool)

(assert (=> b!7056936 (= c!1314856 (is-Cons!68142 (exprs!7076 lt!2533208)))))

(assert (= (and d!2205456 res!2881046) b!7056934))

(assert (= (and d!2205456 c!1314855) b!7056932))

(assert (= (and d!2205456 (not c!1314855)) b!7056936))

(assert (= (and b!7056936 c!1314856) b!7056935))

(assert (= (and b!7056936 (not c!1314856)) b!7056933))

(assert (= (or b!7056932 b!7056935) bm!641091))

(declare-fun m!7775290 () Bool)

(assert (=> b!7056932 m!7775290))

(declare-fun m!7775292 () Bool)

(assert (=> b!7056934 m!7775292))

(declare-fun m!7775294 () Bool)

(assert (=> bm!641091 m!7775294))

(assert (=> b!7056829 d!2205456))

(declare-fun bm!641104 () Bool)

(declare-fun call!641110 () List!68266)

(declare-fun call!641114 () List!68266)

(assert (=> bm!641104 (= call!641110 call!641114)))

(declare-fun bm!641105 () Bool)

(declare-fun call!641112 () (Set Context!13152))

(declare-fun c!1314871 () Bool)

(assert (=> bm!641105 (= call!641112 (derivationStepZipperDown!2214 (ite c!1314871 (regTwo!35673 (h!74590 (exprs!7076 lt!2533183))) (regOne!35672 (h!74590 (exprs!7076 lt!2533183)))) (ite c!1314871 lt!2533208 (Context!13153 call!641114)) (h!74591 s!7408)))))

(declare-fun b!7056959 () Bool)

(declare-fun e!4242534 () Bool)

(assert (=> b!7056959 (= e!4242534 (nullable!7263 (regOne!35672 (h!74590 (exprs!7076 lt!2533183)))))))

(declare-fun b!7056960 () Bool)

(declare-fun e!4242533 () (Set Context!13152))

(assert (=> b!7056960 (= e!4242533 (as set.empty (Set Context!13152)))))

(declare-fun b!7056961 () Bool)

(declare-fun c!1314868 () Bool)

(assert (=> b!7056961 (= c!1314868 (is-Star!17580 (h!74590 (exprs!7076 lt!2533183))))))

(declare-fun e!4242532 () (Set Context!13152))

(assert (=> b!7056961 (= e!4242532 e!4242533)))

(declare-fun c!1314867 () Bool)

(declare-fun bm!641106 () Bool)

(declare-fun c!1314869 () Bool)

(declare-fun $colon$colon!2627 (List!68266 Regex!17580) List!68266)

(assert (=> bm!641106 (= call!641114 ($colon$colon!2627 (exprs!7076 lt!2533208) (ite (or c!1314867 c!1314869) (regTwo!35672 (h!74590 (exprs!7076 lt!2533183))) (h!74590 (exprs!7076 lt!2533183)))))))

(declare-fun b!7056962 () Bool)

(assert (=> b!7056962 (= c!1314867 e!4242534)))

(declare-fun res!2881049 () Bool)

(assert (=> b!7056962 (=> (not res!2881049) (not e!4242534))))

(assert (=> b!7056962 (= res!2881049 (is-Concat!26425 (h!74590 (exprs!7076 lt!2533183))))))

(declare-fun e!4242536 () (Set Context!13152))

(declare-fun e!4242537 () (Set Context!13152))

(assert (=> b!7056962 (= e!4242536 e!4242537)))

(declare-fun call!641109 () (Set Context!13152))

(declare-fun bm!641107 () Bool)

(assert (=> bm!641107 (= call!641109 (derivationStepZipperDown!2214 (ite c!1314871 (regOne!35673 (h!74590 (exprs!7076 lt!2533183))) (ite c!1314867 (regTwo!35672 (h!74590 (exprs!7076 lt!2533183))) (ite c!1314869 (regOne!35672 (h!74590 (exprs!7076 lt!2533183))) (reg!17909 (h!74590 (exprs!7076 lt!2533183)))))) (ite (or c!1314871 c!1314867) lt!2533208 (Context!13153 call!641110)) (h!74591 s!7408)))))

(declare-fun b!7056963 () Bool)

(declare-fun e!4242535 () (Set Context!13152))

(assert (=> b!7056963 (= e!4242535 (set.insert lt!2533208 (as set.empty (Set Context!13152))))))

(declare-fun b!7056964 () Bool)

(declare-fun call!641113 () (Set Context!13152))

(assert (=> b!7056964 (= e!4242532 call!641113)))

(declare-fun bm!641108 () Bool)

(declare-fun call!641111 () (Set Context!13152))

(assert (=> bm!641108 (= call!641111 call!641109)))

(declare-fun b!7056965 () Bool)

(assert (=> b!7056965 (= e!4242535 e!4242536)))

(assert (=> b!7056965 (= c!1314871 (is-Union!17580 (h!74590 (exprs!7076 lt!2533183))))))

(declare-fun d!2205458 () Bool)

(declare-fun c!1314870 () Bool)

(assert (=> d!2205458 (= c!1314870 (and (is-ElementMatch!17580 (h!74590 (exprs!7076 lt!2533183))) (= (c!1314827 (h!74590 (exprs!7076 lt!2533183))) (h!74591 s!7408))))))

(assert (=> d!2205458 (= (derivationStepZipperDown!2214 (h!74590 (exprs!7076 lt!2533183)) lt!2533208 (h!74591 s!7408)) e!4242535)))

(declare-fun bm!641109 () Bool)

(assert (=> bm!641109 (= call!641113 call!641111)))

(declare-fun b!7056966 () Bool)

(assert (=> b!7056966 (= e!4242533 call!641113)))

(declare-fun b!7056967 () Bool)

(assert (=> b!7056967 (= e!4242537 (set.union call!641112 call!641111))))

(declare-fun b!7056968 () Bool)

(assert (=> b!7056968 (= e!4242537 e!4242532)))

(assert (=> b!7056968 (= c!1314869 (is-Concat!26425 (h!74590 (exprs!7076 lt!2533183))))))

(declare-fun b!7056969 () Bool)

(assert (=> b!7056969 (= e!4242536 (set.union call!641109 call!641112))))

(assert (= (and d!2205458 c!1314870) b!7056963))

(assert (= (and d!2205458 (not c!1314870)) b!7056965))

(assert (= (and b!7056965 c!1314871) b!7056969))

(assert (= (and b!7056965 (not c!1314871)) b!7056962))

(assert (= (and b!7056962 res!2881049) b!7056959))

(assert (= (and b!7056962 c!1314867) b!7056967))

(assert (= (and b!7056962 (not c!1314867)) b!7056968))

(assert (= (and b!7056968 c!1314869) b!7056964))

(assert (= (and b!7056968 (not c!1314869)) b!7056961))

(assert (= (and b!7056961 c!1314868) b!7056966))

(assert (= (and b!7056961 (not c!1314868)) b!7056960))

(assert (= (or b!7056964 b!7056966) bm!641104))

(assert (= (or b!7056964 b!7056966) bm!641109))

(assert (= (or b!7056967 bm!641109) bm!641108))

(assert (= (or b!7056967 bm!641104) bm!641106))

(assert (= (or b!7056969 bm!641108) bm!641107))

(assert (= (or b!7056969 b!7056967) bm!641105))

(assert (=> b!7056963 m!7775136))

(declare-fun m!7775296 () Bool)

(assert (=> b!7056959 m!7775296))

(declare-fun m!7775298 () Bool)

(assert (=> bm!641105 m!7775298))

(declare-fun m!7775300 () Bool)

(assert (=> bm!641106 m!7775300))

(declare-fun m!7775302 () Bool)

(assert (=> bm!641107 m!7775302))

(assert (=> b!7056829 d!2205458))

(declare-fun d!2205460 () Bool)

(assert (=> d!2205460 (forall!16529 (++!15663 lt!2533192 (exprs!7076 ct2!306)) lambda!420877)))

(declare-fun lt!2533360 () Unit!161833)

(assert (=> d!2205460 (= lt!2533360 (choose!53853 lt!2533192 (exprs!7076 ct2!306) lambda!420877))))

(assert (=> d!2205460 (forall!16529 lt!2533192 lambda!420877)))

(assert (=> d!2205460 (= (lemmaConcatPreservesForall!891 lt!2533192 (exprs!7076 ct2!306) lambda!420877) lt!2533360)))

(declare-fun bs!1877265 () Bool)

(assert (= bs!1877265 d!2205460))

(assert (=> bs!1877265 m!7775094))

(assert (=> bs!1877265 m!7775094))

(declare-fun m!7775304 () Bool)

(assert (=> bs!1877265 m!7775304))

(declare-fun m!7775306 () Bool)

(assert (=> bs!1877265 m!7775306))

(declare-fun m!7775308 () Bool)

(assert (=> bs!1877265 m!7775308))

(assert (=> b!7056829 d!2205460))

(declare-fun b!7056980 () Bool)

(declare-fun res!2881055 () Bool)

(declare-fun e!4242542 () Bool)

(assert (=> b!7056980 (=> (not res!2881055) (not e!4242542))))

(declare-fun lt!2533363 () List!68266)

(declare-fun size!41157 (List!68266) Int)

(assert (=> b!7056980 (= res!2881055 (= (size!41157 lt!2533363) (+ (size!41157 lt!2533192) (size!41157 (exprs!7076 ct2!306)))))))

(declare-fun d!2205462 () Bool)

(assert (=> d!2205462 e!4242542))

(declare-fun res!2881054 () Bool)

(assert (=> d!2205462 (=> (not res!2881054) (not e!4242542))))

(declare-fun content!13696 (List!68266) (Set Regex!17580))

(assert (=> d!2205462 (= res!2881054 (= (content!13696 lt!2533363) (set.union (content!13696 lt!2533192) (content!13696 (exprs!7076 ct2!306)))))))

(declare-fun e!4242543 () List!68266)

(assert (=> d!2205462 (= lt!2533363 e!4242543)))

(declare-fun c!1314874 () Bool)

(assert (=> d!2205462 (= c!1314874 (is-Nil!68142 lt!2533192))))

(assert (=> d!2205462 (= (++!15663 lt!2533192 (exprs!7076 ct2!306)) lt!2533363)))

(declare-fun b!7056979 () Bool)

(assert (=> b!7056979 (= e!4242543 (Cons!68142 (h!74590 lt!2533192) (++!15663 (t!382045 lt!2533192) (exprs!7076 ct2!306))))))

(declare-fun b!7056981 () Bool)

(assert (=> b!7056981 (= e!4242542 (or (not (= (exprs!7076 ct2!306) Nil!68142)) (= lt!2533363 lt!2533192)))))

(declare-fun b!7056978 () Bool)

(assert (=> b!7056978 (= e!4242543 (exprs!7076 ct2!306))))

(assert (= (and d!2205462 c!1314874) b!7056978))

(assert (= (and d!2205462 (not c!1314874)) b!7056979))

(assert (= (and d!2205462 res!2881054) b!7056980))

(assert (= (and b!7056980 res!2881055) b!7056981))

(declare-fun m!7775310 () Bool)

(assert (=> b!7056980 m!7775310))

(declare-fun m!7775312 () Bool)

(assert (=> b!7056980 m!7775312))

(declare-fun m!7775314 () Bool)

(assert (=> b!7056980 m!7775314))

(declare-fun m!7775316 () Bool)

(assert (=> d!2205462 m!7775316))

(declare-fun m!7775318 () Bool)

(assert (=> d!2205462 m!7775318))

(declare-fun m!7775320 () Bool)

(assert (=> d!2205462 m!7775320))

(declare-fun m!7775322 () Bool)

(assert (=> b!7056979 m!7775322))

(assert (=> b!7056829 d!2205462))

(declare-fun d!2205464 () Bool)

(assert (=> d!2205464 (= (isEmpty!39745 (exprs!7076 lt!2533183)) (is-Nil!68142 (exprs!7076 lt!2533183)))))

(assert (=> b!7056830 d!2205464))

(assert (=> b!7056828 d!2205456))

(assert (=> b!7056828 d!2205460))

(declare-fun bs!1877266 () Bool)

(declare-fun d!2205466 () Bool)

(assert (= bs!1877266 (and d!2205466 b!7056820)))

(declare-fun lambda!420950 () Int)

(assert (=> bs!1877266 (= lambda!420950 lambda!420878)))

(declare-fun bs!1877267 () Bool)

(assert (= bs!1877267 (and d!2205466 d!2205448)))

(assert (=> bs!1877267 (= lambda!420950 lambda!420941)))

(assert (=> d!2205466 true))

(assert (=> d!2205466 (= (derivationStepZipper!3030 lt!2533179 (h!74591 s!7408)) (flatMap!2506 lt!2533179 lambda!420950))))

(declare-fun bs!1877268 () Bool)

(assert (= bs!1877268 d!2205466))

(declare-fun m!7775324 () Bool)

(assert (=> bs!1877268 m!7775324))

(assert (=> b!7056828 d!2205466))

(declare-fun d!2205468 () Bool)

(assert (=> d!2205468 (= (flatMap!2506 lt!2533179 lambda!420878) (dynLambda!27661 lambda!420878 lt!2533208))))

(declare-fun lt!2533364 () Unit!161833)

(assert (=> d!2205468 (= lt!2533364 (choose!53855 lt!2533179 lt!2533208 lambda!420878))))

(assert (=> d!2205468 (= lt!2533179 (set.insert lt!2533208 (as set.empty (Set Context!13152))))))

(assert (=> d!2205468 (= (lemmaFlatMapOnSingletonSet!2015 lt!2533179 lt!2533208 lambda!420878) lt!2533364)))

(declare-fun b_lambda!268821 () Bool)

(assert (=> (not b_lambda!268821) (not d!2205468)))

(declare-fun bs!1877269 () Bool)

(assert (= bs!1877269 d!2205468))

(assert (=> bs!1877269 m!7775138))

(declare-fun m!7775326 () Bool)

(assert (=> bs!1877269 m!7775326))

(declare-fun m!7775328 () Bool)

(assert (=> bs!1877269 m!7775328))

(assert (=> bs!1877269 m!7775136))

(assert (=> b!7056828 d!2205468))

(declare-fun d!2205470 () Bool)

(assert (=> d!2205470 (= (flatMap!2506 lt!2533179 lambda!420878) (choose!53854 lt!2533179 lambda!420878))))

(declare-fun bs!1877270 () Bool)

(assert (= bs!1877270 d!2205470))

(declare-fun m!7775330 () Bool)

(assert (=> bs!1877270 m!7775330))

(assert (=> b!7056828 d!2205470))

(assert (=> b!7056817 d!2205440))

(declare-fun d!2205472 () Bool)

(declare-fun c!1314875 () Bool)

(assert (=> d!2205472 (= c!1314875 (isEmpty!39747 (t!382046 s!7408)))))

(declare-fun e!4242544 () Bool)

(assert (=> d!2205472 (= (matchZipper!3120 lt!2533213 (t!382046 s!7408)) e!4242544)))

(declare-fun b!7056982 () Bool)

(assert (=> b!7056982 (= e!4242544 (nullableZipper!2664 lt!2533213))))

(declare-fun b!7056983 () Bool)

(assert (=> b!7056983 (= e!4242544 (matchZipper!3120 (derivationStepZipper!3030 lt!2533213 (head!14365 (t!382046 s!7408))) (tail!13719 (t!382046 s!7408))))))

(assert (= (and d!2205472 c!1314875) b!7056982))

(assert (= (and d!2205472 (not c!1314875)) b!7056983))

(declare-fun m!7775332 () Bool)

(assert (=> d!2205472 m!7775332))

(declare-fun m!7775334 () Bool)

(assert (=> b!7056982 m!7775334))

(declare-fun m!7775336 () Bool)

(assert (=> b!7056983 m!7775336))

(assert (=> b!7056983 m!7775336))

(declare-fun m!7775338 () Bool)

(assert (=> b!7056983 m!7775338))

(declare-fun m!7775340 () Bool)

(assert (=> b!7056983 m!7775340))

(assert (=> b!7056983 m!7775338))

(assert (=> b!7056983 m!7775340))

(declare-fun m!7775342 () Bool)

(assert (=> b!7056983 m!7775342))

(assert (=> b!7056818 d!2205472))

(assert (=> b!7056818 d!2205460))

(declare-fun b!7056986 () Bool)

(declare-fun res!2881057 () Bool)

(declare-fun e!4242545 () Bool)

(assert (=> b!7056986 (=> (not res!2881057) (not e!4242545))))

(declare-fun lt!2533365 () List!68266)

(assert (=> b!7056986 (= res!2881057 (= (size!41157 lt!2533365) (+ (size!41157 (exprs!7076 lt!2533183)) (size!41157 (exprs!7076 ct2!306)))))))

(declare-fun d!2205474 () Bool)

(assert (=> d!2205474 e!4242545))

(declare-fun res!2881056 () Bool)

(assert (=> d!2205474 (=> (not res!2881056) (not e!4242545))))

(assert (=> d!2205474 (= res!2881056 (= (content!13696 lt!2533365) (set.union (content!13696 (exprs!7076 lt!2533183)) (content!13696 (exprs!7076 ct2!306)))))))

(declare-fun e!4242546 () List!68266)

(assert (=> d!2205474 (= lt!2533365 e!4242546)))

(declare-fun c!1314876 () Bool)

(assert (=> d!2205474 (= c!1314876 (is-Nil!68142 (exprs!7076 lt!2533183)))))

(assert (=> d!2205474 (= (++!15663 (exprs!7076 lt!2533183) (exprs!7076 ct2!306)) lt!2533365)))

(declare-fun b!7056985 () Bool)

(assert (=> b!7056985 (= e!4242546 (Cons!68142 (h!74590 (exprs!7076 lt!2533183)) (++!15663 (t!382045 (exprs!7076 lt!2533183)) (exprs!7076 ct2!306))))))

(declare-fun b!7056987 () Bool)

(assert (=> b!7056987 (= e!4242545 (or (not (= (exprs!7076 ct2!306) Nil!68142)) (= lt!2533365 (exprs!7076 lt!2533183))))))

(declare-fun b!7056984 () Bool)

(assert (=> b!7056984 (= e!4242546 (exprs!7076 ct2!306))))

(assert (= (and d!2205474 c!1314876) b!7056984))

(assert (= (and d!2205474 (not c!1314876)) b!7056985))

(assert (= (and d!2205474 res!2881056) b!7056986))

(assert (= (and b!7056986 res!2881057) b!7056987))

(declare-fun m!7775344 () Bool)

(assert (=> b!7056986 m!7775344))

(declare-fun m!7775346 () Bool)

(assert (=> b!7056986 m!7775346))

(assert (=> b!7056986 m!7775314))

(declare-fun m!7775348 () Bool)

(assert (=> d!2205474 m!7775348))

(declare-fun m!7775350 () Bool)

(assert (=> d!2205474 m!7775350))

(assert (=> d!2205474 m!7775320))

(declare-fun m!7775352 () Bool)

(assert (=> b!7056985 m!7775352))

(assert (=> b!7056827 d!2205474))

(assert (=> b!7056827 d!2205440))

(declare-fun d!2205476 () Bool)

(declare-fun e!4242549 () Bool)

(assert (=> d!2205476 e!4242549))

(declare-fun res!2881060 () Bool)

(assert (=> d!2205476 (=> (not res!2881060) (not e!4242549))))

(declare-fun lt!2533368 () Context!13152)

(declare-fun dynLambda!27662 (Int Context!13152) Context!13152)

(assert (=> d!2205476 (= res!2881060 (= lt!2533198 (dynLambda!27662 lambda!420876 lt!2533368)))))

(declare-fun choose!53856 ((Set Context!13152) Int Context!13152) Context!13152)

(assert (=> d!2205476 (= lt!2533368 (choose!53856 z1!570 lambda!420876 lt!2533198))))

(assert (=> d!2205476 (set.member lt!2533198 (map!15903 z1!570 lambda!420876))))

(assert (=> d!2205476 (= (mapPost2!409 z1!570 lambda!420876 lt!2533198) lt!2533368)))

(declare-fun b!7056991 () Bool)

(assert (=> b!7056991 (= e!4242549 (set.member lt!2533368 z1!570))))

(assert (= (and d!2205476 res!2881060) b!7056991))

(declare-fun b_lambda!268823 () Bool)

(assert (=> (not b_lambda!268823) (not d!2205476)))

(declare-fun m!7775354 () Bool)

(assert (=> d!2205476 m!7775354))

(declare-fun m!7775356 () Bool)

(assert (=> d!2205476 m!7775356))

(declare-fun m!7775358 () Bool)

(assert (=> d!2205476 m!7775358))

(declare-fun m!7775360 () Bool)

(assert (=> d!2205476 m!7775360))

(declare-fun m!7775362 () Bool)

(assert (=> b!7056991 m!7775362))

(assert (=> b!7056827 d!2205476))

(assert (=> b!7056826 d!2205460))

(declare-fun d!2205478 () Bool)

(declare-fun e!4242552 () Bool)

(assert (=> d!2205478 e!4242552))

(declare-fun res!2881063 () Bool)

(assert (=> d!2205478 (=> (not res!2881063) (not e!4242552))))

(declare-fun lt!2533371 () List!68268)

(declare-fun noDuplicate!2695 (List!68268) Bool)

(assert (=> d!2205478 (= res!2881063 (noDuplicate!2695 lt!2533371))))

(declare-fun choose!53857 ((Set Context!13152)) List!68268)

(assert (=> d!2205478 (= lt!2533371 (choose!53857 z1!570))))

(assert (=> d!2205478 (= (toList!10921 z1!570) lt!2533371)))

(declare-fun b!7056994 () Bool)

(declare-fun content!13697 (List!68268) (Set Context!13152))

(assert (=> b!7056994 (= e!4242552 (= (content!13697 lt!2533371) z1!570))))

(assert (= (and d!2205478 res!2881063) b!7056994))

(declare-fun m!7775364 () Bool)

(assert (=> d!2205478 m!7775364))

(declare-fun m!7775366 () Bool)

(assert (=> d!2205478 m!7775366))

(declare-fun m!7775368 () Bool)

(assert (=> b!7056994 m!7775368))

(assert (=> b!7056826 d!2205478))

(declare-fun d!2205480 () Bool)

(declare-fun lt!2533374 () Bool)

(assert (=> d!2205480 (= lt!2533374 (set.member lt!2533183 (content!13697 (toList!10921 z1!570))))))

(declare-fun e!4242558 () Bool)

(assert (=> d!2205480 (= lt!2533374 e!4242558)))

(declare-fun res!2881068 () Bool)

(assert (=> d!2205480 (=> (not res!2881068) (not e!4242558))))

(assert (=> d!2205480 (= res!2881068 (is-Cons!68144 (toList!10921 z1!570)))))

(assert (=> d!2205480 (= (contains!20483 (toList!10921 z1!570) lt!2533183) lt!2533374)))

(declare-fun b!7056999 () Bool)

(declare-fun e!4242557 () Bool)

(assert (=> b!7056999 (= e!4242558 e!4242557)))

(declare-fun res!2881069 () Bool)

(assert (=> b!7056999 (=> res!2881069 e!4242557)))

(assert (=> b!7056999 (= res!2881069 (= (h!74592 (toList!10921 z1!570)) lt!2533183))))

(declare-fun b!7057000 () Bool)

(assert (=> b!7057000 (= e!4242557 (contains!20483 (t!382047 (toList!10921 z1!570)) lt!2533183))))

(assert (= (and d!2205480 res!2881068) b!7056999))

(assert (= (and b!7056999 (not res!2881069)) b!7057000))

(assert (=> d!2205480 m!7775096))

(declare-fun m!7775370 () Bool)

(assert (=> d!2205480 m!7775370))

(declare-fun m!7775372 () Bool)

(assert (=> d!2205480 m!7775372))

(declare-fun m!7775374 () Bool)

(assert (=> b!7057000 m!7775374))

(assert (=> b!7056826 d!2205480))

(declare-fun d!2205482 () Bool)

(declare-fun choose!53858 ((Set Context!13152) Int) (Set Context!13152))

(assert (=> d!2205482 (= (map!15903 lt!2533190 lambda!420876) (choose!53858 lt!2533190 lambda!420876))))

(declare-fun bs!1877271 () Bool)

(assert (= bs!1877271 d!2205482))

(declare-fun m!7775376 () Bool)

(assert (=> bs!1877271 m!7775376))

(assert (=> b!7056826 d!2205482))

(declare-fun d!2205484 () Bool)

(assert (=> d!2205484 (= (map!15903 lt!2533190 lambda!420876) (set.insert (dynLambda!27662 lambda!420876 lt!2533217) (as set.empty (Set Context!13152))))))

(declare-fun lt!2533377 () Unit!161833)

(declare-fun choose!53859 ((Set Context!13152) Context!13152 Int) Unit!161833)

(assert (=> d!2205484 (= lt!2533377 (choose!53859 lt!2533190 lt!2533217 lambda!420876))))

(assert (=> d!2205484 (= lt!2533190 (set.insert lt!2533217 (as set.empty (Set Context!13152))))))

(assert (=> d!2205484 (= (lemmaMapOnSingletonSet!397 lt!2533190 lt!2533217 lambda!420876) lt!2533377)))

(declare-fun b_lambda!268825 () Bool)

(assert (=> (not b_lambda!268825) (not d!2205484)))

(declare-fun bs!1877272 () Bool)

(assert (= bs!1877272 d!2205484))

(assert (=> bs!1877272 m!7775106))

(declare-fun m!7775378 () Bool)

(assert (=> bs!1877272 m!7775378))

(assert (=> bs!1877272 m!7775104))

(declare-fun m!7775380 () Bool)

(assert (=> bs!1877272 m!7775380))

(assert (=> bs!1877272 m!7775380))

(declare-fun m!7775382 () Bool)

(assert (=> bs!1877272 m!7775382))

(assert (=> b!7056826 d!2205484))

(declare-fun b!7057001 () Bool)

(declare-fun e!4242561 () (Set Context!13152))

(declare-fun call!641115 () (Set Context!13152))

(assert (=> b!7057001 (= e!4242561 (set.union call!641115 (derivationStepZipperUp!2164 (Context!13153 (t!382045 (exprs!7076 lt!2533217))) (h!74591 s!7408))))))

(declare-fun b!7057002 () Bool)

(declare-fun e!4242560 () (Set Context!13152))

(assert (=> b!7057002 (= e!4242560 (as set.empty (Set Context!13152)))))

(declare-fun b!7057003 () Bool)

(declare-fun e!4242559 () Bool)

(assert (=> b!7057003 (= e!4242559 (nullable!7263 (h!74590 (exprs!7076 lt!2533217))))))

(declare-fun b!7057004 () Bool)

(assert (=> b!7057004 (= e!4242560 call!641115)))

(declare-fun bm!641110 () Bool)

(assert (=> bm!641110 (= call!641115 (derivationStepZipperDown!2214 (h!74590 (exprs!7076 lt!2533217)) (Context!13153 (t!382045 (exprs!7076 lt!2533217))) (h!74591 s!7408)))))

(declare-fun d!2205486 () Bool)

(declare-fun c!1314877 () Bool)

(assert (=> d!2205486 (= c!1314877 e!4242559)))

(declare-fun res!2881070 () Bool)

(assert (=> d!2205486 (=> (not res!2881070) (not e!4242559))))

(assert (=> d!2205486 (= res!2881070 (is-Cons!68142 (exprs!7076 lt!2533217)))))

(assert (=> d!2205486 (= (derivationStepZipperUp!2164 lt!2533217 (h!74591 s!7408)) e!4242561)))

(declare-fun b!7057005 () Bool)

(assert (=> b!7057005 (= e!4242561 e!4242560)))

(declare-fun c!1314878 () Bool)

(assert (=> b!7057005 (= c!1314878 (is-Cons!68142 (exprs!7076 lt!2533217)))))

(assert (= (and d!2205486 res!2881070) b!7057003))

(assert (= (and d!2205486 c!1314877) b!7057001))

(assert (= (and d!2205486 (not c!1314877)) b!7057005))

(assert (= (and b!7057005 c!1314878) b!7057004))

(assert (= (and b!7057005 (not c!1314878)) b!7057002))

(assert (= (or b!7057001 b!7057004) bm!641110))

(declare-fun m!7775384 () Bool)

(assert (=> b!7057001 m!7775384))

(declare-fun m!7775386 () Bool)

(assert (=> b!7057003 m!7775386))

(declare-fun m!7775388 () Bool)

(assert (=> bm!641110 m!7775388))

(assert (=> b!7056826 d!2205486))

(assert (=> b!7056826 d!2205462))

(declare-fun d!2205488 () Bool)

(assert (=> d!2205488 (= (flatMap!2506 lt!2533190 lambda!420878) (dynLambda!27661 lambda!420878 lt!2533217))))

(declare-fun lt!2533378 () Unit!161833)

(assert (=> d!2205488 (= lt!2533378 (choose!53855 lt!2533190 lt!2533217 lambda!420878))))

(assert (=> d!2205488 (= lt!2533190 (set.insert lt!2533217 (as set.empty (Set Context!13152))))))

(assert (=> d!2205488 (= (lemmaFlatMapOnSingletonSet!2015 lt!2533190 lt!2533217 lambda!420878) lt!2533378)))

(declare-fun b_lambda!268827 () Bool)

(assert (=> (not b_lambda!268827) (not d!2205488)))

(declare-fun bs!1877273 () Bool)

(assert (= bs!1877273 d!2205488))

(assert (=> bs!1877273 m!7775108))

(declare-fun m!7775390 () Bool)

(assert (=> bs!1877273 m!7775390))

(declare-fun m!7775392 () Bool)

(assert (=> bs!1877273 m!7775392))

(assert (=> bs!1877273 m!7775106))

(assert (=> b!7056826 d!2205488))

(declare-fun d!2205490 () Bool)

(assert (=> d!2205490 (= (flatMap!2506 lt!2533190 lambda!420878) (choose!53854 lt!2533190 lambda!420878))))

(declare-fun bs!1877274 () Bool)

(assert (= bs!1877274 d!2205490))

(declare-fun m!7775394 () Bool)

(assert (=> bs!1877274 m!7775394))

(assert (=> b!7056826 d!2205490))

(declare-fun d!2205492 () Bool)

(declare-fun nullableFct!2780 (Regex!17580) Bool)

(assert (=> d!2205492 (= (nullable!7263 (h!74590 (exprs!7076 lt!2533183))) (nullableFct!2780 (h!74590 (exprs!7076 lt!2533183))))))

(declare-fun bs!1877275 () Bool)

(assert (= bs!1877275 d!2205492))

(declare-fun m!7775396 () Bool)

(assert (=> bs!1877275 m!7775396))

(assert (=> b!7056815 d!2205492))

(declare-fun d!2205494 () Bool)

(assert (=> d!2205494 (= (tail!13717 (exprs!7076 lt!2533183)) (t!382045 (exprs!7076 lt!2533183)))))

(assert (=> b!7056815 d!2205494))

(declare-fun d!2205496 () Bool)

(declare-fun c!1314879 () Bool)

(assert (=> d!2205496 (= c!1314879 (isEmpty!39747 s!7408))))

(declare-fun e!4242562 () Bool)

(assert (=> d!2205496 (= (matchZipper!3120 lt!2533179 s!7408) e!4242562)))

(declare-fun b!7057006 () Bool)

(assert (=> b!7057006 (= e!4242562 (nullableZipper!2664 lt!2533179))))

(declare-fun b!7057007 () Bool)

(assert (=> b!7057007 (= e!4242562 (matchZipper!3120 (derivationStepZipper!3030 lt!2533179 (head!14365 s!7408)) (tail!13719 s!7408)))))

(assert (= (and d!2205496 c!1314879) b!7057006))

(assert (= (and d!2205496 (not c!1314879)) b!7057007))

(assert (=> d!2205496 m!7775274))

(declare-fun m!7775398 () Bool)

(assert (=> b!7057006 m!7775398))

(assert (=> b!7057007 m!7775278))

(assert (=> b!7057007 m!7775278))

(declare-fun m!7775400 () Bool)

(assert (=> b!7057007 m!7775400))

(assert (=> b!7057007 m!7775282))

(assert (=> b!7057007 m!7775400))

(assert (=> b!7057007 m!7775282))

(declare-fun m!7775402 () Bool)

(assert (=> b!7057007 m!7775402))

(assert (=> b!7056824 d!2205496))

(assert (=> b!7056824 d!2205460))

(assert (=> b!7056813 d!2205472))

(assert (=> b!7056813 d!2205460))

(declare-fun d!2205498 () Bool)

(declare-fun e!4242563 () Bool)

(assert (=> d!2205498 e!4242563))

(declare-fun res!2881071 () Bool)

(assert (=> d!2205498 (=> (not res!2881071) (not e!4242563))))

(declare-fun lt!2533379 () List!68268)

(assert (=> d!2205498 (= res!2881071 (noDuplicate!2695 lt!2533379))))

(assert (=> d!2205498 (= lt!2533379 (choose!53857 lt!2533177))))

(assert (=> d!2205498 (= (toList!10921 lt!2533177) lt!2533379)))

(declare-fun b!7057008 () Bool)

(assert (=> b!7057008 (= e!4242563 (= (content!13697 lt!2533379) lt!2533177))))

(assert (= (and d!2205498 res!2881071) b!7057008))

(declare-fun m!7775404 () Bool)

(assert (=> d!2205498 m!7775404))

(declare-fun m!7775406 () Bool)

(assert (=> d!2205498 m!7775406))

(declare-fun m!7775408 () Bool)

(assert (=> b!7057008 m!7775408))

(assert (=> b!7056814 d!2205498))

(declare-fun bs!1877276 () Bool)

(declare-fun d!2205500 () Bool)

(assert (= bs!1877276 (and d!2205500 b!7056814)))

(declare-fun lambda!420953 () Int)

(assert (=> bs!1877276 (= lambda!420953 lambda!420875)))

(assert (=> d!2205500 true))

(assert (=> d!2205500 (exists!3575 lt!2533196 lambda!420953)))

(declare-fun lt!2533382 () Unit!161833)

(declare-fun choose!53860 (List!68268 List!68267) Unit!161833)

(assert (=> d!2205500 (= lt!2533382 (choose!53860 lt!2533196 s!7408))))

(assert (=> d!2205500 (matchZipper!3120 (content!13697 lt!2533196) s!7408)))

(assert (=> d!2205500 (= (lemmaZipperMatchesExistsMatchingContext!501 lt!2533196 s!7408) lt!2533382)))

(declare-fun bs!1877277 () Bool)

(assert (= bs!1877277 d!2205500))

(declare-fun m!7775410 () Bool)

(assert (=> bs!1877277 m!7775410))

(declare-fun m!7775412 () Bool)

(assert (=> bs!1877277 m!7775412))

(declare-fun m!7775414 () Bool)

(assert (=> bs!1877277 m!7775414))

(assert (=> bs!1877277 m!7775414))

(declare-fun m!7775416 () Bool)

(assert (=> bs!1877277 m!7775416))

(assert (=> b!7056814 d!2205500))

(declare-fun bs!1877278 () Bool)

(declare-fun d!2205502 () Bool)

(assert (= bs!1877278 (and d!2205502 b!7056814)))

(declare-fun lambda!420956 () Int)

(assert (=> bs!1877278 (not (= lambda!420956 lambda!420875))))

(declare-fun bs!1877279 () Bool)

(assert (= bs!1877279 (and d!2205502 d!2205500)))

(assert (=> bs!1877279 (not (= lambda!420956 lambda!420953))))

(assert (=> d!2205502 true))

(declare-fun order!28333 () Int)

(declare-fun dynLambda!27663 (Int Int) Int)

(assert (=> d!2205502 (< (dynLambda!27663 order!28333 lambda!420875) (dynLambda!27663 order!28333 lambda!420956))))

(declare-fun forall!16530 (List!68268 Int) Bool)

(assert (=> d!2205502 (= (exists!3575 lt!2533196 lambda!420875) (not (forall!16530 lt!2533196 lambda!420956)))))

(declare-fun bs!1877280 () Bool)

(assert (= bs!1877280 d!2205502))

(declare-fun m!7775418 () Bool)

(assert (=> bs!1877280 m!7775418))

(assert (=> b!7056814 d!2205502))

(declare-fun d!2205504 () Bool)

(declare-fun e!4242566 () Bool)

(assert (=> d!2205504 e!4242566))

(declare-fun res!2881074 () Bool)

(assert (=> d!2205504 (=> (not res!2881074) (not e!4242566))))

(declare-fun lt!2533385 () Context!13152)

(declare-fun dynLambda!27664 (Int Context!13152) Bool)

(assert (=> d!2205504 (= res!2881074 (dynLambda!27664 lambda!420875 lt!2533385))))

(declare-fun getWitness!1651 (List!68268 Int) Context!13152)

(assert (=> d!2205504 (= lt!2533385 (getWitness!1651 (toList!10921 lt!2533177) lambda!420875))))

(declare-fun exists!3577 ((Set Context!13152) Int) Bool)

(assert (=> d!2205504 (exists!3577 lt!2533177 lambda!420875)))

(assert (=> d!2205504 (= (getWitness!1649 lt!2533177 lambda!420875) lt!2533385)))

(declare-fun b!7057013 () Bool)

(assert (=> b!7057013 (= e!4242566 (set.member lt!2533385 lt!2533177))))

(assert (= (and d!2205504 res!2881074) b!7057013))

(declare-fun b_lambda!268829 () Bool)

(assert (=> (not b_lambda!268829) (not d!2205504)))

(declare-fun m!7775420 () Bool)

(assert (=> d!2205504 m!7775420))

(assert (=> d!2205504 m!7775150))

(assert (=> d!2205504 m!7775150))

(declare-fun m!7775422 () Bool)

(assert (=> d!2205504 m!7775422))

(declare-fun m!7775424 () Bool)

(assert (=> d!2205504 m!7775424))

(declare-fun m!7775426 () Bool)

(assert (=> b!7057013 m!7775426))

(assert (=> b!7056814 d!2205504))

(declare-fun d!2205506 () Bool)

(declare-fun c!1314882 () Bool)

(assert (=> d!2205506 (= c!1314882 (isEmpty!39747 s!7408))))

(declare-fun e!4242567 () Bool)

(assert (=> d!2205506 (= (matchZipper!3120 lt!2533200 s!7408) e!4242567)))

(declare-fun b!7057014 () Bool)

(assert (=> b!7057014 (= e!4242567 (nullableZipper!2664 lt!2533200))))

(declare-fun b!7057015 () Bool)

(assert (=> b!7057015 (= e!4242567 (matchZipper!3120 (derivationStepZipper!3030 lt!2533200 (head!14365 s!7408)) (tail!13719 s!7408)))))

(assert (= (and d!2205506 c!1314882) b!7057014))

(assert (= (and d!2205506 (not c!1314882)) b!7057015))

(assert (=> d!2205506 m!7775274))

(declare-fun m!7775428 () Bool)

(assert (=> b!7057014 m!7775428))

(assert (=> b!7057015 m!7775278))

(assert (=> b!7057015 m!7775278))

(declare-fun m!7775430 () Bool)

(assert (=> b!7057015 m!7775430))

(assert (=> b!7057015 m!7775282))

(assert (=> b!7057015 m!7775430))

(assert (=> b!7057015 m!7775282))

(declare-fun m!7775432 () Bool)

(assert (=> b!7057015 m!7775432))

(assert (=> b!7056814 d!2205506))

(assert (=> b!7056832 d!2205472))

(assert (=> b!7056833 d!2205460))

(declare-fun d!2205508 () Bool)

(declare-fun c!1314883 () Bool)

(assert (=> d!2205508 (= c!1314883 (isEmpty!39747 (t!382046 s!7408)))))

(declare-fun e!4242568 () Bool)

(assert (=> d!2205508 (= (matchZipper!3120 lt!2533182 (t!382046 s!7408)) e!4242568)))

(declare-fun b!7057016 () Bool)

(assert (=> b!7057016 (= e!4242568 (nullableZipper!2664 lt!2533182))))

(declare-fun b!7057017 () Bool)

(assert (=> b!7057017 (= e!4242568 (matchZipper!3120 (derivationStepZipper!3030 lt!2533182 (head!14365 (t!382046 s!7408))) (tail!13719 (t!382046 s!7408))))))

(assert (= (and d!2205508 c!1314883) b!7057016))

(assert (= (and d!2205508 (not c!1314883)) b!7057017))

(assert (=> d!2205508 m!7775332))

(declare-fun m!7775434 () Bool)

(assert (=> b!7057016 m!7775434))

(assert (=> b!7057017 m!7775336))

(assert (=> b!7057017 m!7775336))

(declare-fun m!7775436 () Bool)

(assert (=> b!7057017 m!7775436))

(assert (=> b!7057017 m!7775340))

(assert (=> b!7057017 m!7775436))

(assert (=> b!7057017 m!7775340))

(declare-fun m!7775438 () Bool)

(assert (=> b!7057017 m!7775438))

(assert (=> b!7056833 d!2205508))

(declare-fun d!2205510 () Bool)

(declare-fun c!1314884 () Bool)

(assert (=> d!2205510 (= c!1314884 (isEmpty!39747 (t!382046 s!7408)))))

(declare-fun e!4242569 () Bool)

(assert (=> d!2205510 (= (matchZipper!3120 lt!2533193 (t!382046 s!7408)) e!4242569)))

(declare-fun b!7057018 () Bool)

(assert (=> b!7057018 (= e!4242569 (nullableZipper!2664 lt!2533193))))

(declare-fun b!7057019 () Bool)

(assert (=> b!7057019 (= e!4242569 (matchZipper!3120 (derivationStepZipper!3030 lt!2533193 (head!14365 (t!382046 s!7408))) (tail!13719 (t!382046 s!7408))))))

(assert (= (and d!2205510 c!1314884) b!7057018))

(assert (= (and d!2205510 (not c!1314884)) b!7057019))

(assert (=> d!2205510 m!7775332))

(declare-fun m!7775440 () Bool)

(assert (=> b!7057018 m!7775440))

(assert (=> b!7057019 m!7775336))

(assert (=> b!7057019 m!7775336))

(declare-fun m!7775442 () Bool)

(assert (=> b!7057019 m!7775442))

(assert (=> b!7057019 m!7775340))

(assert (=> b!7057019 m!7775442))

(assert (=> b!7057019 m!7775340))

(declare-fun m!7775444 () Bool)

(assert (=> b!7057019 m!7775444))

(assert (=> b!7056833 d!2205510))

(declare-fun d!2205512 () Bool)

(declare-fun c!1314885 () Bool)

(assert (=> d!2205512 (= c!1314885 (isEmpty!39747 (t!382046 s!7408)))))

(declare-fun e!4242570 () Bool)

(assert (=> d!2205512 (= (matchZipper!3120 lt!2533215 (t!382046 s!7408)) e!4242570)))

(declare-fun b!7057020 () Bool)

(assert (=> b!7057020 (= e!4242570 (nullableZipper!2664 lt!2533215))))

(declare-fun b!7057021 () Bool)

(assert (=> b!7057021 (= e!4242570 (matchZipper!3120 (derivationStepZipper!3030 lt!2533215 (head!14365 (t!382046 s!7408))) (tail!13719 (t!382046 s!7408))))))

(assert (= (and d!2205512 c!1314885) b!7057020))

(assert (= (and d!2205512 (not c!1314885)) b!7057021))

(assert (=> d!2205512 m!7775332))

(declare-fun m!7775446 () Bool)

(assert (=> b!7057020 m!7775446))

(assert (=> b!7057021 m!7775336))

(assert (=> b!7057021 m!7775336))

(declare-fun m!7775448 () Bool)

(assert (=> b!7057021 m!7775448))

(assert (=> b!7057021 m!7775340))

(assert (=> b!7057021 m!7775448))

(assert (=> b!7057021 m!7775340))

(declare-fun m!7775450 () Bool)

(assert (=> b!7057021 m!7775450))

(assert (=> b!7056833 d!2205512))

(declare-fun e!4242573 () Bool)

(declare-fun d!2205514 () Bool)

(assert (=> d!2205514 (= (matchZipper!3120 (set.union lt!2533182 lt!2533213) (t!382046 s!7408)) e!4242573)))

(declare-fun res!2881077 () Bool)

(assert (=> d!2205514 (=> res!2881077 e!4242573)))

(assert (=> d!2205514 (= res!2881077 (matchZipper!3120 lt!2533182 (t!382046 s!7408)))))

(declare-fun lt!2533388 () Unit!161833)

(declare-fun choose!53861 ((Set Context!13152) (Set Context!13152) List!68267) Unit!161833)

(assert (=> d!2205514 (= lt!2533388 (choose!53861 lt!2533182 lt!2533213 (t!382046 s!7408)))))

(assert (=> d!2205514 (= (lemmaZipperConcatMatchesSameAsBothZippers!1593 lt!2533182 lt!2533213 (t!382046 s!7408)) lt!2533388)))

(declare-fun b!7057024 () Bool)

(assert (=> b!7057024 (= e!4242573 (matchZipper!3120 lt!2533213 (t!382046 s!7408)))))

(assert (= (and d!2205514 (not res!2881077)) b!7057024))

(declare-fun m!7775452 () Bool)

(assert (=> d!2205514 m!7775452))

(assert (=> d!2205514 m!7775122))

(declare-fun m!7775454 () Bool)

(assert (=> d!2205514 m!7775454))

(assert (=> b!7057024 m!7775114))

(assert (=> b!7056833 d!2205514))

(declare-fun bs!1877281 () Bool)

(declare-fun d!2205516 () Bool)

(assert (= bs!1877281 (and d!2205516 b!7056827)))

(declare-fun lambda!420957 () Int)

(assert (=> bs!1877281 (= lambda!420957 lambda!420877)))

(declare-fun bs!1877282 () Bool)

(assert (= bs!1877282 (and d!2205516 d!2205454)))

(assert (=> bs!1877282 (= lambda!420957 lambda!420949)))

(assert (=> d!2205516 (= (inv!86810 setElem!49900) (forall!16529 (exprs!7076 setElem!49900) lambda!420957))))

(declare-fun bs!1877283 () Bool)

(assert (= bs!1877283 d!2205516))

(declare-fun m!7775456 () Bool)

(assert (=> bs!1877283 m!7775456))

(assert (=> setNonEmpty!49900 d!2205516))

(declare-fun b!7057029 () Bool)

(declare-fun e!4242576 () Bool)

(declare-fun tp!1940441 () Bool)

(declare-fun tp!1940442 () Bool)

(assert (=> b!7057029 (= e!4242576 (and tp!1940441 tp!1940442))))

(assert (=> b!7056825 (= tp!1940422 e!4242576)))

(assert (= (and b!7056825 (is-Cons!68142 (exprs!7076 setElem!49900))) b!7057029))

(declare-fun b!7057034 () Bool)

(declare-fun e!4242579 () Bool)

(declare-fun tp!1940445 () Bool)

(assert (=> b!7057034 (= e!4242579 (and tp_is_empty!44385 tp!1940445))))

(assert (=> b!7056823 (= tp!1940423 e!4242579)))

(assert (= (and b!7056823 (is-Cons!68143 (t!382046 s!7408))) b!7057034))

(declare-fun condSetEmpty!49906 () Bool)

(assert (=> setNonEmpty!49900 (= condSetEmpty!49906 (= setRest!49900 (as set.empty (Set Context!13152))))))

(declare-fun setRes!49906 () Bool)

(assert (=> setNonEmpty!49900 (= tp!1940421 setRes!49906)))

(declare-fun setIsEmpty!49906 () Bool)

(assert (=> setIsEmpty!49906 setRes!49906))

(declare-fun setNonEmpty!49906 () Bool)

(declare-fun tp!1940450 () Bool)

(declare-fun e!4242582 () Bool)

(declare-fun setElem!49906 () Context!13152)

(assert (=> setNonEmpty!49906 (= setRes!49906 (and tp!1940450 (inv!86810 setElem!49906) e!4242582))))

(declare-fun setRest!49906 () (Set Context!13152))

(assert (=> setNonEmpty!49906 (= setRest!49900 (set.union (set.insert setElem!49906 (as set.empty (Set Context!13152))) setRest!49906))))

(declare-fun b!7057039 () Bool)

(declare-fun tp!1940451 () Bool)

(assert (=> b!7057039 (= e!4242582 tp!1940451)))

(assert (= (and setNonEmpty!49900 condSetEmpty!49906) setIsEmpty!49906))

(assert (= (and setNonEmpty!49900 (not condSetEmpty!49906)) setNonEmpty!49906))

(assert (= setNonEmpty!49906 b!7057039))

(declare-fun m!7775458 () Bool)

(assert (=> setNonEmpty!49906 m!7775458))

(declare-fun b!7057040 () Bool)

(declare-fun e!4242583 () Bool)

(declare-fun tp!1940452 () Bool)

(declare-fun tp!1940453 () Bool)

(assert (=> b!7057040 (= e!4242583 (and tp!1940452 tp!1940453))))

(assert (=> b!7056821 (= tp!1940424 e!4242583)))

(assert (= (and b!7056821 (is-Cons!68142 (exprs!7076 ct2!306))) b!7057040))

(declare-fun b_lambda!268831 () Bool)

(assert (= b_lambda!268825 (or b!7056827 b_lambda!268831)))

(declare-fun bs!1877284 () Bool)

(declare-fun d!2205518 () Bool)

(assert (= bs!1877284 (and d!2205518 b!7056827)))

(declare-fun lt!2533389 () Unit!161833)

(assert (=> bs!1877284 (= lt!2533389 (lemmaConcatPreservesForall!891 (exprs!7076 lt!2533217) (exprs!7076 ct2!306) lambda!420877))))

(assert (=> bs!1877284 (= (dynLambda!27662 lambda!420876 lt!2533217) (Context!13153 (++!15663 (exprs!7076 lt!2533217) (exprs!7076 ct2!306))))))

(declare-fun m!7775460 () Bool)

(assert (=> bs!1877284 m!7775460))

(declare-fun m!7775462 () Bool)

(assert (=> bs!1877284 m!7775462))

(assert (=> d!2205484 d!2205518))

(declare-fun b_lambda!268833 () Bool)

(assert (= b_lambda!268821 (or b!7056820 b_lambda!268833)))

(declare-fun bs!1877285 () Bool)

(declare-fun d!2205520 () Bool)

(assert (= bs!1877285 (and d!2205520 b!7056820)))

(assert (=> bs!1877285 (= (dynLambda!27661 lambda!420878 lt!2533208) (derivationStepZipperUp!2164 lt!2533208 (h!74591 s!7408)))))

(assert (=> bs!1877285 m!7775140))

(assert (=> d!2205468 d!2205520))

(declare-fun b_lambda!268835 () Bool)

(assert (= b_lambda!268819 (or b!7056820 b_lambda!268835)))

(declare-fun bs!1877286 () Bool)

(declare-fun d!2205522 () Bool)

(assert (= bs!1877286 (and d!2205522 b!7056820)))

(assert (=> bs!1877286 (= (dynLambda!27661 lambda!420878 lt!2533211) (derivationStepZipperUp!2164 lt!2533211 (h!74591 s!7408)))))

(assert (=> bs!1877286 m!7775076))

(assert (=> d!2205446 d!2205522))

(declare-fun b_lambda!268837 () Bool)

(assert (= b_lambda!268823 (or b!7056827 b_lambda!268837)))

(declare-fun bs!1877287 () Bool)

(declare-fun d!2205524 () Bool)

(assert (= bs!1877287 (and d!2205524 b!7056827)))

(declare-fun lt!2533390 () Unit!161833)

(assert (=> bs!1877287 (= lt!2533390 (lemmaConcatPreservesForall!891 (exprs!7076 lt!2533368) (exprs!7076 ct2!306) lambda!420877))))

(assert (=> bs!1877287 (= (dynLambda!27662 lambda!420876 lt!2533368) (Context!13153 (++!15663 (exprs!7076 lt!2533368) (exprs!7076 ct2!306))))))

(declare-fun m!7775464 () Bool)

(assert (=> bs!1877287 m!7775464))

(declare-fun m!7775466 () Bool)

(assert (=> bs!1877287 m!7775466))

(assert (=> d!2205476 d!2205524))

(declare-fun b_lambda!268839 () Bool)

(assert (= b_lambda!268829 (or b!7056814 b_lambda!268839)))

(declare-fun bs!1877288 () Bool)

(declare-fun d!2205526 () Bool)

(assert (= bs!1877288 (and d!2205526 b!7056814)))

(assert (=> bs!1877288 (= (dynLambda!27664 lambda!420875 lt!2533385) (matchZipper!3120 (set.insert lt!2533385 (as set.empty (Set Context!13152))) s!7408))))

(declare-fun m!7775468 () Bool)

(assert (=> bs!1877288 m!7775468))

(assert (=> bs!1877288 m!7775468))

(declare-fun m!7775470 () Bool)

(assert (=> bs!1877288 m!7775470))

(assert (=> d!2205504 d!2205526))

(declare-fun b_lambda!268841 () Bool)

(assert (= b_lambda!268827 (or b!7056820 b_lambda!268841)))

(declare-fun bs!1877289 () Bool)

(declare-fun d!2205528 () Bool)

(assert (= bs!1877289 (and d!2205528 b!7056820)))

(assert (=> bs!1877289 (= (dynLambda!27661 lambda!420878 lt!2533217) (derivationStepZipperUp!2164 lt!2533217 (h!74591 s!7408)))))

(assert (=> bs!1877289 m!7775098))

(assert (=> d!2205488 d!2205528))

(push 1)

(assert (not b!7056930))

(assert (not d!2205496))

(assert (not d!2205482))

(assert (not d!2205510))

(assert (not d!2205488))

(assert (not b!7056994))

(assert (not bs!1877286))

(assert (not b!7057014))

(assert (not b!7057001))

(assert (not bs!1877287))

(assert (not setNonEmpty!49906))

(assert (not d!2205478))

(assert (not b_lambda!268833))

(assert (not b!7057000))

(assert (not b!7056983))

(assert (not b_lambda!268839))

(assert (not b!7057040))

(assert (not d!2205500))

(assert (not d!2205466))

(assert (not b!7057006))

(assert (not b!7056932))

(assert (not b!7057015))

(assert (not b!7056986))

(assert (not d!2205480))

(assert (not b_lambda!268841))

(assert (not b!7056959))

(assert (not b!7056934))

(assert (not b!7057016))

(assert (not b_lambda!268837))

(assert (not b!7057020))

(assert (not b!7057007))

(assert (not bm!641105))

(assert (not d!2205468))

(assert (not d!2205502))

(assert (not bs!1877285))

(assert (not d!2205450))

(assert (not b!7056919))

(assert (not d!2205446))

(assert (not b!7057003))

(assert (not b!7056980))

(assert (not d!2205470))

(assert (not bs!1877289))

(assert (not b!7056985))

(assert (not b!7057029))

(assert (not d!2205462))

(assert (not b!7056979))

(assert (not d!2205514))

(assert (not d!2205444))

(assert (not d!2205516))

(assert (not d!2205460))

(assert (not d!2205484))

(assert (not bm!641090))

(assert (not d!2205454))

(assert (not b!7057034))

(assert (not bm!641091))

(assert (not bm!641106))

(assert (not d!2205474))

(assert (not d!2205512))

(assert (not d!2205490))

(assert (not bs!1877284))

(assert (not bs!1877288))

(assert (not b!7056982))

(assert (not b_lambda!268831))

(assert (not b!7057019))

(assert (not b_lambda!268835))

(assert (not d!2205472))

(assert (not b!7056931))

(assert (not b!7057018))

(assert (not b!7057039))

(assert (not bm!641107))

(assert (not bm!641110))

(assert tp_is_empty!44385)

(assert (not d!2205506))

(assert (not d!2205498))

(assert (not d!2205476))

(assert (not b!7056921))

(assert (not b!7057024))

(assert (not d!2205452))

(assert (not d!2205504))

(assert (not d!2205440))

(assert (not b!7057008))

(assert (not d!2205508))

(assert (not b!7057021))

(assert (not d!2205448))

(assert (not b!7057017))

(assert (not d!2205492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

