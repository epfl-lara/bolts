; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!686304 () Bool)

(assert start!686304)

(declare-fun b!7067928 () Bool)

(assert (=> b!7067928 true))

(declare-fun b!7067931 () Bool)

(assert (=> b!7067931 true))

(declare-fun b!7067929 () Bool)

(assert (=> b!7067929 true))

(declare-fun b!7067914 () Bool)

(declare-fun e!4249166 () Bool)

(declare-fun e!4249155 () Bool)

(assert (=> b!7067914 (= e!4249166 e!4249155)))

(declare-fun res!2886290 () Bool)

(assert (=> b!7067914 (=> res!2886290 e!4249155)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35524 0))(
  ( (C!35525 (val!27464 Int)) )
))
(declare-datatypes ((Regex!17627 0))(
  ( (ElementMatch!17627 (c!1318124 C!35524)) (Concat!26472 (regOne!35766 Regex!17627) (regTwo!35766 Regex!17627)) (EmptyExpr!17627) (Star!17627 (reg!17956 Regex!17627)) (EmptyLang!17627) (Union!17627 (regOne!35767 Regex!17627) (regTwo!35767 Regex!17627)) )
))
(declare-datatypes ((List!68407 0))(
  ( (Nil!68283) (Cons!68283 (h!74731 Regex!17627) (t!382188 List!68407)) )
))
(declare-datatypes ((Context!13246 0))(
  ( (Context!13247 (exprs!7123 List!68407)) )
))
(declare-fun lt!2542920 () (InoxSet Context!13246))

(declare-fun lt!2542930 () (InoxSet Context!13246))

(assert (=> b!7067914 (= res!2886290 (not (= lt!2542920 lt!2542930)))))

(declare-fun lt!2542915 () (InoxSet Context!13246))

(declare-fun lt!2542931 () (InoxSet Context!13246))

(assert (=> b!7067914 (= lt!2542930 ((_ map or) lt!2542915 lt!2542931))))

(declare-fun lt!2542923 () Context!13246)

(declare-datatypes ((List!68408 0))(
  ( (Nil!68284) (Cons!68284 (h!74732 C!35524) (t!382189 List!68408)) )
))
(declare-fun s!7408 () List!68408)

(declare-fun derivationStepZipperUp!2211 (Context!13246 C!35524) (InoxSet Context!13246))

(assert (=> b!7067914 (= lt!2542931 (derivationStepZipperUp!2211 lt!2542923 (h!74732 s!7408)))))

(declare-fun lt!2542928 () Context!13246)

(declare-fun derivationStepZipperDown!2261 (Regex!17627 Context!13246 C!35524) (InoxSet Context!13246))

(assert (=> b!7067914 (= lt!2542915 (derivationStepZipperDown!2261 (h!74731 (exprs!7123 lt!2542928)) lt!2542923 (h!74732 s!7408)))))

(declare-fun lt!2542935 () List!68407)

(declare-fun ct2!306 () Context!13246)

(declare-fun ++!15744 (List!68407 List!68407) List!68407)

(assert (=> b!7067914 (= lt!2542923 (Context!13247 (++!15744 lt!2542935 (exprs!7123 ct2!306))))))

(declare-datatypes ((Unit!161962 0))(
  ( (Unit!161963) )
))
(declare-fun lt!2542919 () Unit!161962)

(declare-fun lambda!424491 () Int)

(declare-fun lemmaConcatPreservesForall!938 (List!68407 List!68407 Int) Unit!161962)

(assert (=> b!7067914 (= lt!2542919 (lemmaConcatPreservesForall!938 lt!2542935 (exprs!7123 ct2!306) lambda!424491))))

(declare-fun lt!2542929 () Unit!161962)

(assert (=> b!7067914 (= lt!2542929 (lemmaConcatPreservesForall!938 lt!2542935 (exprs!7123 ct2!306) lambda!424491))))

(declare-fun b!7067915 () Bool)

(declare-fun e!4249160 () Bool)

(declare-fun e!4249158 () Bool)

(assert (=> b!7067915 (= e!4249160 e!4249158)))

(declare-fun res!2886298 () Bool)

(assert (=> b!7067915 (=> res!2886298 e!4249158)))

(declare-fun lt!2542922 () Bool)

(assert (=> b!7067915 (= res!2886298 (not lt!2542922))))

(declare-fun lt!2542938 () Unit!161962)

(assert (=> b!7067915 (= lt!2542938 (lemmaConcatPreservesForall!938 lt!2542935 (exprs!7123 ct2!306) lambda!424491))))

(declare-fun lt!2542913 () Unit!161962)

(assert (=> b!7067915 (= lt!2542913 (lemmaConcatPreservesForall!938 lt!2542935 (exprs!7123 ct2!306) lambda!424491))))

(declare-fun b!7067916 () Bool)

(declare-fun e!4249167 () Bool)

(declare-fun tp_is_empty!44479 () Bool)

(declare-fun tp!1941800 () Bool)

(assert (=> b!7067916 (= e!4249167 (and tp_is_empty!44479 tp!1941800))))

(declare-fun b!7067917 () Bool)

(declare-fun res!2886297 () Bool)

(declare-fun e!4249161 () Bool)

(assert (=> b!7067917 (=> res!2886297 e!4249161)))

(get-info :version)

(assert (=> b!7067917 (= res!2886297 (not ((_ is Cons!68283) (exprs!7123 lt!2542928))))))

(declare-fun b!7067918 () Bool)

(declare-fun res!2886292 () Bool)

(assert (=> b!7067918 (=> res!2886292 e!4249161)))

(declare-fun isEmpty!39848 (List!68407) Bool)

(assert (=> b!7067918 (= res!2886292 (isEmpty!39848 (exprs!7123 lt!2542928)))))

(declare-fun b!7067919 () Bool)

(declare-fun e!4249153 () Bool)

(declare-fun matchZipper!3167 ((InoxSet Context!13246) List!68408) Bool)

(assert (=> b!7067919 (= e!4249153 (matchZipper!3167 lt!2542931 (t!382189 s!7408)))))

(declare-fun b!7067920 () Bool)

(declare-fun res!2886289 () Bool)

(declare-fun e!4249156 () Bool)

(assert (=> b!7067920 (=> res!2886289 e!4249156)))

(declare-fun lt!2542942 () Context!13246)

(declare-fun lt!2542932 () (InoxSet Context!13246))

(assert (=> b!7067920 (= res!2886289 (not (select lt!2542932 lt!2542942)))))

(declare-fun setIsEmpty!50160 () Bool)

(declare-fun setRes!50160 () Bool)

(assert (=> setIsEmpty!50160 setRes!50160))

(declare-fun b!7067921 () Bool)

(declare-fun e!4249165 () Bool)

(declare-fun tp!1941802 () Bool)

(assert (=> b!7067921 (= e!4249165 tp!1941802)))

(declare-fun b!7067922 () Bool)

(declare-fun e!4249154 () Bool)

(assert (=> b!7067922 (= e!4249154 e!4249160)))

(declare-fun res!2886295 () Bool)

(assert (=> b!7067922 (=> res!2886295 e!4249160)))

(assert (=> b!7067922 (= res!2886295 (matchZipper!3167 lt!2542931 (t!382189 s!7408)))))

(declare-fun lt!2542918 () Unit!161962)

(assert (=> b!7067922 (= lt!2542918 (lemmaConcatPreservesForall!938 lt!2542935 (exprs!7123 ct2!306) lambda!424491))))

(declare-fun b!7067923 () Bool)

(declare-fun res!2886291 () Bool)

(declare-fun e!4249157 () Bool)

(assert (=> b!7067923 (=> (not res!2886291) (not e!4249157))))

(assert (=> b!7067923 (= res!2886291 ((_ is Cons!68284) s!7408))))

(declare-fun b!7067924 () Bool)

(declare-fun res!2886293 () Bool)

(assert (=> b!7067924 (=> res!2886293 e!4249154)))

(declare-fun lt!2542921 () Bool)

(assert (=> b!7067924 (= res!2886293 (not lt!2542921))))

(declare-fun b!7067925 () Bool)

(assert (=> b!7067925 (= e!4249161 e!4249166)))

(declare-fun res!2886287 () Bool)

(assert (=> b!7067925 (=> res!2886287 e!4249166)))

(declare-fun nullable!7310 (Regex!17627) Bool)

(assert (=> b!7067925 (= res!2886287 (not (nullable!7310 (h!74731 (exprs!7123 lt!2542928)))))))

(declare-fun tail!13798 (List!68407) List!68407)

(assert (=> b!7067925 (= lt!2542935 (tail!13798 (exprs!7123 lt!2542928)))))

(declare-fun res!2886299 () Bool)

(assert (=> start!686304 (=> (not res!2886299) (not e!4249157))))

(assert (=> start!686304 (= res!2886299 (matchZipper!3167 lt!2542932 s!7408))))

(declare-fun z1!570 () (InoxSet Context!13246))

(declare-fun appendTo!748 ((InoxSet Context!13246) Context!13246) (InoxSet Context!13246))

(assert (=> start!686304 (= lt!2542932 (appendTo!748 z1!570 ct2!306))))

(assert (=> start!686304 e!4249157))

(declare-fun condSetEmpty!50160 () Bool)

(assert (=> start!686304 (= condSetEmpty!50160 (= z1!570 ((as const (Array Context!13246 Bool)) false)))))

(assert (=> start!686304 setRes!50160))

(declare-fun e!4249159 () Bool)

(declare-fun inv!86926 (Context!13246) Bool)

(assert (=> start!686304 (and (inv!86926 ct2!306) e!4249159)))

(assert (=> start!686304 e!4249167))

(declare-fun b!7067926 () Bool)

(declare-fun e!4249163 () Bool)

(assert (=> b!7067926 (= e!4249163 (not (matchZipper!3167 lt!2542931 (t!382189 s!7408))))))

(declare-fun lt!2542927 () Unit!161962)

(assert (=> b!7067926 (= lt!2542927 (lemmaConcatPreservesForall!938 lt!2542935 (exprs!7123 ct2!306) lambda!424491))))

(declare-fun setNonEmpty!50160 () Bool)

(declare-fun setElem!50160 () Context!13246)

(declare-fun tp!1941801 () Bool)

(assert (=> setNonEmpty!50160 (= setRes!50160 (and tp!1941801 (inv!86926 setElem!50160) e!4249165))))

(declare-fun setRest!50160 () (InoxSet Context!13246))

(assert (=> setNonEmpty!50160 (= z1!570 ((_ map or) (store ((as const (Array Context!13246 Bool)) false) setElem!50160 true) setRest!50160))))

(declare-fun b!7067927 () Bool)

(declare-fun e!4249164 () Bool)

(declare-fun e!4249162 () Bool)

(assert (=> b!7067927 (= e!4249164 e!4249162)))

(declare-fun res!2886300 () Bool)

(assert (=> b!7067927 (=> res!2886300 e!4249162)))

(declare-fun lt!2542937 () (InoxSet Context!13246))

(declare-fun lt!2542916 () (InoxSet Context!13246))

(assert (=> b!7067927 (= res!2886300 (not (= lt!2542937 lt!2542916)))))

(declare-fun lt!2542914 () Context!13246)

(assert (=> b!7067927 (= lt!2542937 (store ((as const (Array Context!13246 Bool)) false) lt!2542914 true))))

(declare-fun lt!2542939 () Unit!161962)

(assert (=> b!7067927 (= lt!2542939 (lemmaConcatPreservesForall!938 (exprs!7123 lt!2542928) (exprs!7123 ct2!306) lambda!424491))))

(assert (=> b!7067928 (= e!4249157 (not e!4249156))))

(declare-fun res!2886301 () Bool)

(assert (=> b!7067928 (=> res!2886301 e!4249156)))

(assert (=> b!7067928 (= res!2886301 (not (matchZipper!3167 lt!2542916 s!7408)))))

(assert (=> b!7067928 (= lt!2542916 (store ((as const (Array Context!13246 Bool)) false) lt!2542942 true))))

(declare-fun lambda!424489 () Int)

(declare-fun getWitness!1717 ((InoxSet Context!13246) Int) Context!13246)

(assert (=> b!7067928 (= lt!2542942 (getWitness!1717 lt!2542932 lambda!424489))))

(declare-datatypes ((List!68409 0))(
  ( (Nil!68285) (Cons!68285 (h!74733 Context!13246) (t!382190 List!68409)) )
))
(declare-fun lt!2542924 () List!68409)

(declare-fun exists!3660 (List!68409 Int) Bool)

(assert (=> b!7067928 (exists!3660 lt!2542924 lambda!424489)))

(declare-fun lt!2542941 () Unit!161962)

(declare-fun lemmaZipperMatchesExistsMatchingContext!548 (List!68409 List!68408) Unit!161962)

(assert (=> b!7067928 (= lt!2542941 (lemmaZipperMatchesExistsMatchingContext!548 lt!2542924 s!7408))))

(declare-fun toList!10968 ((InoxSet Context!13246)) List!68409)

(assert (=> b!7067928 (= lt!2542924 (toList!10968 lt!2542932))))

(assert (=> b!7067929 (= e!4249162 e!4249161)))

(declare-fun res!2886294 () Bool)

(assert (=> b!7067929 (=> res!2886294 e!4249161)))

(declare-fun derivationStepZipper!3077 ((InoxSet Context!13246) C!35524) (InoxSet Context!13246))

(assert (=> b!7067929 (= res!2886294 (not (= (derivationStepZipper!3077 lt!2542937 (h!74732 s!7408)) lt!2542920)))))

(declare-fun lambda!424492 () Int)

(declare-fun flatMap!2553 ((InoxSet Context!13246) Int) (InoxSet Context!13246))

(assert (=> b!7067929 (= (flatMap!2553 lt!2542937 lambda!424492) (derivationStepZipperUp!2211 lt!2542914 (h!74732 s!7408)))))

(declare-fun lt!2542917 () Unit!161962)

(declare-fun lemmaFlatMapOnSingletonSet!2062 ((InoxSet Context!13246) Context!13246 Int) Unit!161962)

(assert (=> b!7067929 (= lt!2542917 (lemmaFlatMapOnSingletonSet!2062 lt!2542937 lt!2542914 lambda!424492))))

(assert (=> b!7067929 (= lt!2542920 (derivationStepZipperUp!2211 lt!2542914 (h!74732 s!7408)))))

(declare-fun lt!2542940 () Unit!161962)

(assert (=> b!7067929 (= lt!2542940 (lemmaConcatPreservesForall!938 (exprs!7123 lt!2542928) (exprs!7123 ct2!306) lambda!424491))))

(declare-fun b!7067930 () Bool)

(assert (=> b!7067930 (= e!4249155 e!4249154)))

(declare-fun res!2886296 () Bool)

(assert (=> b!7067930 (=> res!2886296 e!4249154)))

(assert (=> b!7067930 (= res!2886296 e!4249163)))

(declare-fun res!2886285 () Bool)

(assert (=> b!7067930 (=> (not res!2886285) (not e!4249163))))

(assert (=> b!7067930 (= res!2886285 (not (= lt!2542921 lt!2542922)))))

(assert (=> b!7067930 (= lt!2542921 (matchZipper!3167 lt!2542920 (t!382189 s!7408)))))

(declare-fun lt!2542925 () Unit!161962)

(assert (=> b!7067930 (= lt!2542925 (lemmaConcatPreservesForall!938 lt!2542935 (exprs!7123 ct2!306) lambda!424491))))

(assert (=> b!7067930 (= (matchZipper!3167 lt!2542930 (t!382189 s!7408)) e!4249153)))

(declare-fun res!2886288 () Bool)

(assert (=> b!7067930 (=> res!2886288 e!4249153)))

(assert (=> b!7067930 (= res!2886288 lt!2542922)))

(assert (=> b!7067930 (= lt!2542922 (matchZipper!3167 lt!2542915 (t!382189 s!7408)))))

(declare-fun lt!2542933 () Unit!161962)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1640 ((InoxSet Context!13246) (InoxSet Context!13246) List!68408) Unit!161962)

(assert (=> b!7067930 (= lt!2542933 (lemmaZipperConcatMatchesSameAsBothZippers!1640 lt!2542915 lt!2542931 (t!382189 s!7408)))))

(declare-fun lt!2542926 () Unit!161962)

(assert (=> b!7067930 (= lt!2542926 (lemmaConcatPreservesForall!938 lt!2542935 (exprs!7123 ct2!306) lambda!424491))))

(declare-fun lt!2542936 () Unit!161962)

(assert (=> b!7067930 (= lt!2542936 (lemmaConcatPreservesForall!938 lt!2542935 (exprs!7123 ct2!306) lambda!424491))))

(assert (=> b!7067931 (= e!4249156 e!4249164)))

(declare-fun res!2886286 () Bool)

(assert (=> b!7067931 (=> res!2886286 e!4249164)))

(assert (=> b!7067931 (= res!2886286 (or (not (= lt!2542914 lt!2542942)) (not (select z1!570 lt!2542928))))))

(assert (=> b!7067931 (= lt!2542914 (Context!13247 (++!15744 (exprs!7123 lt!2542928) (exprs!7123 ct2!306))))))

(declare-fun lt!2542934 () Unit!161962)

(assert (=> b!7067931 (= lt!2542934 (lemmaConcatPreservesForall!938 (exprs!7123 lt!2542928) (exprs!7123 ct2!306) lambda!424491))))

(declare-fun lambda!424490 () Int)

(declare-fun mapPost2!456 ((InoxSet Context!13246) Int Context!13246) Context!13246)

(assert (=> b!7067931 (= lt!2542928 (mapPost2!456 z1!570 lambda!424490 lt!2542942))))

(declare-fun b!7067932 () Bool)

(declare-fun validRegex!8963 (Regex!17627) Bool)

(assert (=> b!7067932 (= e!4249158 (validRegex!8963 (h!74731 (exprs!7123 lt!2542928))))))

(declare-fun b!7067933 () Bool)

(declare-fun tp!1941803 () Bool)

(assert (=> b!7067933 (= e!4249159 tp!1941803)))

(assert (= (and start!686304 res!2886299) b!7067923))

(assert (= (and b!7067923 res!2886291) b!7067928))

(assert (= (and b!7067928 (not res!2886301)) b!7067920))

(assert (= (and b!7067920 (not res!2886289)) b!7067931))

(assert (= (and b!7067931 (not res!2886286)) b!7067927))

(assert (= (and b!7067927 (not res!2886300)) b!7067929))

(assert (= (and b!7067929 (not res!2886294)) b!7067917))

(assert (= (and b!7067917 (not res!2886297)) b!7067918))

(assert (= (and b!7067918 (not res!2886292)) b!7067925))

(assert (= (and b!7067925 (not res!2886287)) b!7067914))

(assert (= (and b!7067914 (not res!2886290)) b!7067930))

(assert (= (and b!7067930 (not res!2886288)) b!7067919))

(assert (= (and b!7067930 res!2886285) b!7067926))

(assert (= (and b!7067930 (not res!2886296)) b!7067924))

(assert (= (and b!7067924 (not res!2886293)) b!7067922))

(assert (= (and b!7067922 (not res!2886295)) b!7067915))

(assert (= (and b!7067915 (not res!2886298)) b!7067932))

(assert (= (and start!686304 condSetEmpty!50160) setIsEmpty!50160))

(assert (= (and start!686304 (not condSetEmpty!50160)) setNonEmpty!50160))

(assert (= setNonEmpty!50160 b!7067921))

(assert (= start!686304 b!7067933))

(assert (= (and start!686304 ((_ is Cons!68284) s!7408)) b!7067916))

(declare-fun m!7792244 () Bool)

(assert (=> b!7067920 m!7792244))

(declare-fun m!7792246 () Bool)

(assert (=> b!7067922 m!7792246))

(declare-fun m!7792248 () Bool)

(assert (=> b!7067922 m!7792248))

(declare-fun m!7792250 () Bool)

(assert (=> b!7067929 m!7792250))

(declare-fun m!7792252 () Bool)

(assert (=> b!7067929 m!7792252))

(declare-fun m!7792254 () Bool)

(assert (=> b!7067929 m!7792254))

(declare-fun m!7792256 () Bool)

(assert (=> b!7067929 m!7792256))

(declare-fun m!7792258 () Bool)

(assert (=> b!7067929 m!7792258))

(assert (=> b!7067915 m!7792248))

(assert (=> b!7067915 m!7792248))

(declare-fun m!7792260 () Bool)

(assert (=> b!7067925 m!7792260))

(declare-fun m!7792262 () Bool)

(assert (=> b!7067925 m!7792262))

(declare-fun m!7792264 () Bool)

(assert (=> b!7067927 m!7792264))

(assert (=> b!7067927 m!7792250))

(declare-fun m!7792266 () Bool)

(assert (=> b!7067918 m!7792266))

(declare-fun m!7792268 () Bool)

(assert (=> b!7067931 m!7792268))

(declare-fun m!7792270 () Bool)

(assert (=> b!7067931 m!7792270))

(assert (=> b!7067931 m!7792250))

(declare-fun m!7792272 () Bool)

(assert (=> b!7067931 m!7792272))

(declare-fun m!7792274 () Bool)

(assert (=> b!7067932 m!7792274))

(declare-fun m!7792276 () Bool)

(assert (=> b!7067914 m!7792276))

(declare-fun m!7792278 () Bool)

(assert (=> b!7067914 m!7792278))

(assert (=> b!7067914 m!7792248))

(declare-fun m!7792280 () Bool)

(assert (=> b!7067914 m!7792280))

(assert (=> b!7067914 m!7792248))

(declare-fun m!7792282 () Bool)

(assert (=> b!7067928 m!7792282))

(declare-fun m!7792284 () Bool)

(assert (=> b!7067928 m!7792284))

(declare-fun m!7792286 () Bool)

(assert (=> b!7067928 m!7792286))

(declare-fun m!7792288 () Bool)

(assert (=> b!7067928 m!7792288))

(declare-fun m!7792290 () Bool)

(assert (=> b!7067928 m!7792290))

(declare-fun m!7792292 () Bool)

(assert (=> b!7067928 m!7792292))

(assert (=> b!7067930 m!7792248))

(assert (=> b!7067930 m!7792248))

(declare-fun m!7792294 () Bool)

(assert (=> b!7067930 m!7792294))

(declare-fun m!7792296 () Bool)

(assert (=> b!7067930 m!7792296))

(assert (=> b!7067930 m!7792248))

(declare-fun m!7792298 () Bool)

(assert (=> b!7067930 m!7792298))

(declare-fun m!7792300 () Bool)

(assert (=> b!7067930 m!7792300))

(assert (=> b!7067919 m!7792246))

(declare-fun m!7792302 () Bool)

(assert (=> start!686304 m!7792302))

(declare-fun m!7792304 () Bool)

(assert (=> start!686304 m!7792304))

(declare-fun m!7792306 () Bool)

(assert (=> start!686304 m!7792306))

(assert (=> b!7067926 m!7792246))

(assert (=> b!7067926 m!7792248))

(declare-fun m!7792308 () Bool)

(assert (=> setNonEmpty!50160 m!7792308))

(check-sat tp_is_empty!44479 (not b!7067929) (not b!7067916) (not b!7067928) (not b!7067921) (not start!686304) (not b!7067930) (not b!7067918) (not b!7067922) (not b!7067926) (not b!7067914) (not setNonEmpty!50160) (not b!7067915) (not b!7067919) (not b!7067927) (not b!7067931) (not b!7067932) (not b!7067925) (not b!7067933))
(check-sat)
(get-model)

(declare-fun d!2210143 () Bool)

(declare-fun nullableFct!2803 (Regex!17627) Bool)

(assert (=> d!2210143 (= (nullable!7310 (h!74731 (exprs!7123 lt!2542928))) (nullableFct!2803 (h!74731 (exprs!7123 lt!2542928))))))

(declare-fun bs!1880035 () Bool)

(assert (= bs!1880035 d!2210143))

(declare-fun m!7792486 () Bool)

(assert (=> bs!1880035 m!7792486))

(assert (=> b!7067925 d!2210143))

(declare-fun d!2210145 () Bool)

(assert (=> d!2210145 (= (tail!13798 (exprs!7123 lt!2542928)) (t!382188 (exprs!7123 lt!2542928)))))

(assert (=> b!7067925 d!2210145))

(declare-fun d!2210147 () Bool)

(declare-fun forall!16575 (List!68407 Int) Bool)

(assert (=> d!2210147 (forall!16575 (++!15744 lt!2542935 (exprs!7123 ct2!306)) lambda!424491)))

(declare-fun lt!2542974 () Unit!161962)

(declare-fun choose!54115 (List!68407 List!68407 Int) Unit!161962)

(assert (=> d!2210147 (= lt!2542974 (choose!54115 lt!2542935 (exprs!7123 ct2!306) lambda!424491))))

(assert (=> d!2210147 (forall!16575 lt!2542935 lambda!424491)))

(assert (=> d!2210147 (= (lemmaConcatPreservesForall!938 lt!2542935 (exprs!7123 ct2!306) lambda!424491) lt!2542974)))

(declare-fun bs!1880036 () Bool)

(assert (= bs!1880036 d!2210147))

(assert (=> bs!1880036 m!7792276))

(assert (=> bs!1880036 m!7792276))

(declare-fun m!7792488 () Bool)

(assert (=> bs!1880036 m!7792488))

(declare-fun m!7792490 () Bool)

(assert (=> bs!1880036 m!7792490))

(declare-fun m!7792492 () Bool)

(assert (=> bs!1880036 m!7792492))

(assert (=> b!7067915 d!2210147))

(declare-fun d!2210149 () Bool)

(declare-fun c!1318173 () Bool)

(declare-fun isEmpty!39850 (List!68408) Bool)

(assert (=> d!2210149 (= c!1318173 (isEmpty!39850 (t!382189 s!7408)))))

(declare-fun e!4249259 () Bool)

(assert (=> d!2210149 (= (matchZipper!3167 lt!2542931 (t!382189 s!7408)) e!4249259)))

(declare-fun b!7068089 () Bool)

(declare-fun nullableZipper!2688 ((InoxSet Context!13246)) Bool)

(assert (=> b!7068089 (= e!4249259 (nullableZipper!2688 lt!2542931))))

(declare-fun b!7068090 () Bool)

(declare-fun head!14394 (List!68408) C!35524)

(declare-fun tail!13800 (List!68408) List!68408)

(assert (=> b!7068090 (= e!4249259 (matchZipper!3167 (derivationStepZipper!3077 lt!2542931 (head!14394 (t!382189 s!7408))) (tail!13800 (t!382189 s!7408))))))

(assert (= (and d!2210149 c!1318173) b!7068089))

(assert (= (and d!2210149 (not c!1318173)) b!7068090))

(declare-fun m!7792494 () Bool)

(assert (=> d!2210149 m!7792494))

(declare-fun m!7792496 () Bool)

(assert (=> b!7068089 m!7792496))

(declare-fun m!7792498 () Bool)

(assert (=> b!7068090 m!7792498))

(assert (=> b!7068090 m!7792498))

(declare-fun m!7792500 () Bool)

(assert (=> b!7068090 m!7792500))

(declare-fun m!7792502 () Bool)

(assert (=> b!7068090 m!7792502))

(assert (=> b!7068090 m!7792500))

(assert (=> b!7068090 m!7792502))

(declare-fun m!7792504 () Bool)

(assert (=> b!7068090 m!7792504))

(assert (=> b!7067926 d!2210149))

(assert (=> b!7067926 d!2210147))

(declare-fun call!642342 () Bool)

(declare-fun c!1318179 () Bool)

(declare-fun c!1318178 () Bool)

(declare-fun bm!642335 () Bool)

(assert (=> bm!642335 (= call!642342 (validRegex!8963 (ite c!1318178 (reg!17956 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318179 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (regTwo!35766 (h!74731 (exprs!7123 lt!2542928)))))))))

(declare-fun b!7068109 () Bool)

(declare-fun e!4249279 () Bool)

(declare-fun e!4249278 () Bool)

(assert (=> b!7068109 (= e!4249279 e!4249278)))

(assert (=> b!7068109 (= c!1318179 ((_ is Union!17627) (h!74731 (exprs!7123 lt!2542928))))))

(declare-fun b!7068110 () Bool)

(declare-fun e!4249277 () Bool)

(declare-fun e!4249276 () Bool)

(assert (=> b!7068110 (= e!4249277 e!4249276)))

(declare-fun res!2886358 () Bool)

(assert (=> b!7068110 (=> (not res!2886358) (not e!4249276))))

(declare-fun call!642340 () Bool)

(assert (=> b!7068110 (= res!2886358 call!642340)))

(declare-fun b!7068111 () Bool)

(declare-fun res!2886360 () Bool)

(assert (=> b!7068111 (=> res!2886360 e!4249277)))

(assert (=> b!7068111 (= res!2886360 (not ((_ is Concat!26472) (h!74731 (exprs!7123 lt!2542928)))))))

(assert (=> b!7068111 (= e!4249278 e!4249277)))

(declare-fun d!2210151 () Bool)

(declare-fun res!2886356 () Bool)

(declare-fun e!4249275 () Bool)

(assert (=> d!2210151 (=> res!2886356 e!4249275)))

(assert (=> d!2210151 (= res!2886356 ((_ is ElementMatch!17627) (h!74731 (exprs!7123 lt!2542928))))))

(assert (=> d!2210151 (= (validRegex!8963 (h!74731 (exprs!7123 lt!2542928))) e!4249275)))

(declare-fun b!7068112 () Bool)

(declare-fun e!4249274 () Bool)

(assert (=> b!7068112 (= e!4249279 e!4249274)))

(declare-fun res!2886359 () Bool)

(assert (=> b!7068112 (= res!2886359 (not (nullable!7310 (reg!17956 (h!74731 (exprs!7123 lt!2542928))))))))

(assert (=> b!7068112 (=> (not res!2886359) (not e!4249274))))

(declare-fun b!7068113 () Bool)

(declare-fun call!642341 () Bool)

(assert (=> b!7068113 (= e!4249276 call!642341)))

(declare-fun bm!642336 () Bool)

(assert (=> bm!642336 (= call!642340 (validRegex!8963 (ite c!1318179 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))))))

(declare-fun b!7068114 () Bool)

(declare-fun res!2886357 () Bool)

(declare-fun e!4249280 () Bool)

(assert (=> b!7068114 (=> (not res!2886357) (not e!4249280))))

(assert (=> b!7068114 (= res!2886357 call!642340)))

(assert (=> b!7068114 (= e!4249278 e!4249280)))

(declare-fun b!7068115 () Bool)

(assert (=> b!7068115 (= e!4249275 e!4249279)))

(assert (=> b!7068115 (= c!1318178 ((_ is Star!17627) (h!74731 (exprs!7123 lt!2542928))))))

(declare-fun b!7068116 () Bool)

(assert (=> b!7068116 (= e!4249274 call!642342)))

(declare-fun bm!642337 () Bool)

(assert (=> bm!642337 (= call!642341 call!642342)))

(declare-fun b!7068117 () Bool)

(assert (=> b!7068117 (= e!4249280 call!642341)))

(assert (= (and d!2210151 (not res!2886356)) b!7068115))

(assert (= (and b!7068115 c!1318178) b!7068112))

(assert (= (and b!7068115 (not c!1318178)) b!7068109))

(assert (= (and b!7068112 res!2886359) b!7068116))

(assert (= (and b!7068109 c!1318179) b!7068114))

(assert (= (and b!7068109 (not c!1318179)) b!7068111))

(assert (= (and b!7068114 res!2886357) b!7068117))

(assert (= (and b!7068111 (not res!2886360)) b!7068110))

(assert (= (and b!7068110 res!2886358) b!7068113))

(assert (= (or b!7068117 b!7068113) bm!642337))

(assert (= (or b!7068114 b!7068110) bm!642336))

(assert (= (or b!7068116 bm!642337) bm!642335))

(declare-fun m!7792506 () Bool)

(assert (=> bm!642335 m!7792506))

(declare-fun m!7792508 () Bool)

(assert (=> b!7068112 m!7792508))

(declare-fun m!7792510 () Bool)

(assert (=> bm!642336 m!7792510))

(assert (=> b!7067932 d!2210151))

(assert (=> b!7067922 d!2210149))

(assert (=> b!7067922 d!2210147))

(declare-fun b!7068128 () Bool)

(declare-fun res!2886365 () Bool)

(declare-fun e!4249285 () Bool)

(assert (=> b!7068128 (=> (not res!2886365) (not e!4249285))))

(declare-fun lt!2542977 () List!68407)

(declare-fun size!41197 (List!68407) Int)

(assert (=> b!7068128 (= res!2886365 (= (size!41197 lt!2542977) (+ (size!41197 (exprs!7123 lt!2542928)) (size!41197 (exprs!7123 ct2!306)))))))

(declare-fun b!7068127 () Bool)

(declare-fun e!4249286 () List!68407)

(assert (=> b!7068127 (= e!4249286 (Cons!68283 (h!74731 (exprs!7123 lt!2542928)) (++!15744 (t!382188 (exprs!7123 lt!2542928)) (exprs!7123 ct2!306))))))

(declare-fun b!7068126 () Bool)

(assert (=> b!7068126 (= e!4249286 (exprs!7123 ct2!306))))

(declare-fun b!7068129 () Bool)

(assert (=> b!7068129 (= e!4249285 (or (not (= (exprs!7123 ct2!306) Nil!68283)) (= lt!2542977 (exprs!7123 lt!2542928))))))

(declare-fun d!2210153 () Bool)

(assert (=> d!2210153 e!4249285))

(declare-fun res!2886366 () Bool)

(assert (=> d!2210153 (=> (not res!2886366) (not e!4249285))))

(declare-fun content!13763 (List!68407) (InoxSet Regex!17627))

(assert (=> d!2210153 (= res!2886366 (= (content!13763 lt!2542977) ((_ map or) (content!13763 (exprs!7123 lt!2542928)) (content!13763 (exprs!7123 ct2!306)))))))

(assert (=> d!2210153 (= lt!2542977 e!4249286)))

(declare-fun c!1318182 () Bool)

(assert (=> d!2210153 (= c!1318182 ((_ is Nil!68283) (exprs!7123 lt!2542928)))))

(assert (=> d!2210153 (= (++!15744 (exprs!7123 lt!2542928) (exprs!7123 ct2!306)) lt!2542977)))

(assert (= (and d!2210153 c!1318182) b!7068126))

(assert (= (and d!2210153 (not c!1318182)) b!7068127))

(assert (= (and d!2210153 res!2886366) b!7068128))

(assert (= (and b!7068128 res!2886365) b!7068129))

(declare-fun m!7792512 () Bool)

(assert (=> b!7068128 m!7792512))

(declare-fun m!7792514 () Bool)

(assert (=> b!7068128 m!7792514))

(declare-fun m!7792516 () Bool)

(assert (=> b!7068128 m!7792516))

(declare-fun m!7792518 () Bool)

(assert (=> b!7068127 m!7792518))

(declare-fun m!7792520 () Bool)

(assert (=> d!2210153 m!7792520))

(declare-fun m!7792522 () Bool)

(assert (=> d!2210153 m!7792522))

(declare-fun m!7792524 () Bool)

(assert (=> d!2210153 m!7792524))

(assert (=> b!7067931 d!2210153))

(declare-fun d!2210155 () Bool)

(assert (=> d!2210155 (forall!16575 (++!15744 (exprs!7123 lt!2542928) (exprs!7123 ct2!306)) lambda!424491)))

(declare-fun lt!2542978 () Unit!161962)

(assert (=> d!2210155 (= lt!2542978 (choose!54115 (exprs!7123 lt!2542928) (exprs!7123 ct2!306) lambda!424491))))

(assert (=> d!2210155 (forall!16575 (exprs!7123 lt!2542928) lambda!424491)))

(assert (=> d!2210155 (= (lemmaConcatPreservesForall!938 (exprs!7123 lt!2542928) (exprs!7123 ct2!306) lambda!424491) lt!2542978)))

(declare-fun bs!1880037 () Bool)

(assert (= bs!1880037 d!2210155))

(assert (=> bs!1880037 m!7792270))

(assert (=> bs!1880037 m!7792270))

(declare-fun m!7792526 () Bool)

(assert (=> bs!1880037 m!7792526))

(declare-fun m!7792528 () Bool)

(assert (=> bs!1880037 m!7792528))

(declare-fun m!7792530 () Bool)

(assert (=> bs!1880037 m!7792530))

(assert (=> b!7067931 d!2210155))

(declare-fun d!2210157 () Bool)

(declare-fun e!4249289 () Bool)

(assert (=> d!2210157 e!4249289))

(declare-fun res!2886369 () Bool)

(assert (=> d!2210157 (=> (not res!2886369) (not e!4249289))))

(declare-fun lt!2542981 () Context!13246)

(declare-fun dynLambda!27753 (Int Context!13246) Context!13246)

(assert (=> d!2210157 (= res!2886369 (= lt!2542942 (dynLambda!27753 lambda!424490 lt!2542981)))))

(declare-fun choose!54116 ((InoxSet Context!13246) Int Context!13246) Context!13246)

(assert (=> d!2210157 (= lt!2542981 (choose!54116 z1!570 lambda!424490 lt!2542942))))

(declare-fun map!15970 ((InoxSet Context!13246) Int) (InoxSet Context!13246))

(assert (=> d!2210157 (select (map!15970 z1!570 lambda!424490) lt!2542942)))

(assert (=> d!2210157 (= (mapPost2!456 z1!570 lambda!424490 lt!2542942) lt!2542981)))

(declare-fun b!7068133 () Bool)

(assert (=> b!7068133 (= e!4249289 (select z1!570 lt!2542981))))

(assert (= (and d!2210157 res!2886369) b!7068133))

(declare-fun b_lambda!269743 () Bool)

(assert (=> (not b_lambda!269743) (not d!2210157)))

(declare-fun m!7792532 () Bool)

(assert (=> d!2210157 m!7792532))

(declare-fun m!7792534 () Bool)

(assert (=> d!2210157 m!7792534))

(declare-fun m!7792536 () Bool)

(assert (=> d!2210157 m!7792536))

(declare-fun m!7792538 () Bool)

(assert (=> d!2210157 m!7792538))

(declare-fun m!7792540 () Bool)

(assert (=> b!7068133 m!7792540))

(assert (=> b!7067931 d!2210157))

(declare-fun b!7068136 () Bool)

(declare-fun res!2886370 () Bool)

(declare-fun e!4249290 () Bool)

(assert (=> b!7068136 (=> (not res!2886370) (not e!4249290))))

(declare-fun lt!2542982 () List!68407)

(assert (=> b!7068136 (= res!2886370 (= (size!41197 lt!2542982) (+ (size!41197 lt!2542935) (size!41197 (exprs!7123 ct2!306)))))))

(declare-fun b!7068135 () Bool)

(declare-fun e!4249291 () List!68407)

(assert (=> b!7068135 (= e!4249291 (Cons!68283 (h!74731 lt!2542935) (++!15744 (t!382188 lt!2542935) (exprs!7123 ct2!306))))))

(declare-fun b!7068134 () Bool)

(assert (=> b!7068134 (= e!4249291 (exprs!7123 ct2!306))))

(declare-fun b!7068137 () Bool)

(assert (=> b!7068137 (= e!4249290 (or (not (= (exprs!7123 ct2!306) Nil!68283)) (= lt!2542982 lt!2542935)))))

(declare-fun d!2210159 () Bool)

(assert (=> d!2210159 e!4249290))

(declare-fun res!2886371 () Bool)

(assert (=> d!2210159 (=> (not res!2886371) (not e!4249290))))

(assert (=> d!2210159 (= res!2886371 (= (content!13763 lt!2542982) ((_ map or) (content!13763 lt!2542935) (content!13763 (exprs!7123 ct2!306)))))))

(assert (=> d!2210159 (= lt!2542982 e!4249291)))

(declare-fun c!1318183 () Bool)

(assert (=> d!2210159 (= c!1318183 ((_ is Nil!68283) lt!2542935))))

(assert (=> d!2210159 (= (++!15744 lt!2542935 (exprs!7123 ct2!306)) lt!2542982)))

(assert (= (and d!2210159 c!1318183) b!7068134))

(assert (= (and d!2210159 (not c!1318183)) b!7068135))

(assert (= (and d!2210159 res!2886371) b!7068136))

(assert (= (and b!7068136 res!2886370) b!7068137))

(declare-fun m!7792542 () Bool)

(assert (=> b!7068136 m!7792542))

(declare-fun m!7792544 () Bool)

(assert (=> b!7068136 m!7792544))

(assert (=> b!7068136 m!7792516))

(declare-fun m!7792546 () Bool)

(assert (=> b!7068135 m!7792546))

(declare-fun m!7792548 () Bool)

(assert (=> d!2210159 m!7792548))

(declare-fun m!7792550 () Bool)

(assert (=> d!2210159 m!7792550))

(assert (=> d!2210159 m!7792524))

(assert (=> b!7067914 d!2210159))

(assert (=> b!7067914 d!2210147))

(declare-fun b!7068160 () Bool)

(declare-fun e!4249309 () Bool)

(assert (=> b!7068160 (= e!4249309 (nullable!7310 (regOne!35766 (h!74731 (exprs!7123 lt!2542928)))))))

(declare-fun bm!642350 () Bool)

(declare-fun call!642355 () List!68407)

(declare-fun call!642356 () List!68407)

(assert (=> bm!642350 (= call!642355 call!642356)))

(declare-fun c!1318195 () Bool)

(declare-fun c!1318197 () Bool)

(declare-fun bm!642351 () Bool)

(declare-fun $colon$colon!2649 (List!68407 Regex!17627) List!68407)

(assert (=> bm!642351 (= call!642356 ($colon$colon!2649 (exprs!7123 lt!2542923) (ite (or c!1318195 c!1318197) (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (h!74731 (exprs!7123 lt!2542928)))))))

(declare-fun b!7068161 () Bool)

(declare-fun e!4249305 () (InoxSet Context!13246))

(declare-fun call!642359 () (InoxSet Context!13246))

(declare-fun call!642358 () (InoxSet Context!13246))

(assert (=> b!7068161 (= e!4249305 ((_ map or) call!642359 call!642358))))

(declare-fun b!7068162 () Bool)

(declare-fun e!4249306 () (InoxSet Context!13246))

(declare-fun call!642360 () (InoxSet Context!13246))

(assert (=> b!7068162 (= e!4249306 call!642360)))

(declare-fun d!2210161 () Bool)

(declare-fun c!1318194 () Bool)

(assert (=> d!2210161 (= c!1318194 (and ((_ is ElementMatch!17627) (h!74731 (exprs!7123 lt!2542928))) (= (c!1318124 (h!74731 (exprs!7123 lt!2542928))) (h!74732 s!7408))))))

(declare-fun e!4249304 () (InoxSet Context!13246))

(assert (=> d!2210161 (= (derivationStepZipperDown!2261 (h!74731 (exprs!7123 lt!2542928)) lt!2542923 (h!74732 s!7408)) e!4249304)))

(declare-fun bm!642352 () Bool)

(declare-fun call!642357 () (InoxSet Context!13246))

(assert (=> bm!642352 (= call!642360 call!642357)))

(declare-fun b!7068163 () Bool)

(assert (=> b!7068163 (= c!1318195 e!4249309)))

(declare-fun res!2886374 () Bool)

(assert (=> b!7068163 (=> (not res!2886374) (not e!4249309))))

(assert (=> b!7068163 (= res!2886374 ((_ is Concat!26472) (h!74731 (exprs!7123 lt!2542928))))))

(declare-fun e!4249307 () (InoxSet Context!13246))

(assert (=> b!7068163 (= e!4249305 e!4249307)))

(declare-fun c!1318198 () Bool)

(declare-fun bm!642353 () Bool)

(assert (=> bm!642353 (= call!642358 (derivationStepZipperDown!2261 (ite c!1318198 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318195 (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318197 (regOne!35766 (h!74731 (exprs!7123 lt!2542928))) (reg!17956 (h!74731 (exprs!7123 lt!2542928)))))) (ite (or c!1318198 c!1318195) lt!2542923 (Context!13247 call!642355)) (h!74732 s!7408)))))

(declare-fun bm!642354 () Bool)

(assert (=> bm!642354 (= call!642359 (derivationStepZipperDown!2261 (ite c!1318198 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928)))) (ite c!1318198 lt!2542923 (Context!13247 call!642356)) (h!74732 s!7408)))))

(declare-fun b!7068164 () Bool)

(declare-fun c!1318196 () Bool)

(assert (=> b!7068164 (= c!1318196 ((_ is Star!17627) (h!74731 (exprs!7123 lt!2542928))))))

(declare-fun e!4249308 () (InoxSet Context!13246))

(assert (=> b!7068164 (= e!4249306 e!4249308)))

(declare-fun b!7068165 () Bool)

(assert (=> b!7068165 (= e!4249308 ((as const (Array Context!13246 Bool)) false))))

(declare-fun b!7068166 () Bool)

(assert (=> b!7068166 (= e!4249308 call!642360)))

(declare-fun bm!642355 () Bool)

(assert (=> bm!642355 (= call!642357 call!642358)))

(declare-fun b!7068167 () Bool)

(assert (=> b!7068167 (= e!4249304 (store ((as const (Array Context!13246 Bool)) false) lt!2542923 true))))

(declare-fun b!7068168 () Bool)

(assert (=> b!7068168 (= e!4249307 ((_ map or) call!642359 call!642357))))

(declare-fun b!7068169 () Bool)

(assert (=> b!7068169 (= e!4249304 e!4249305)))

(assert (=> b!7068169 (= c!1318198 ((_ is Union!17627) (h!74731 (exprs!7123 lt!2542928))))))

(declare-fun b!7068170 () Bool)

(assert (=> b!7068170 (= e!4249307 e!4249306)))

(assert (=> b!7068170 (= c!1318197 ((_ is Concat!26472) (h!74731 (exprs!7123 lt!2542928))))))

(assert (= (and d!2210161 c!1318194) b!7068167))

(assert (= (and d!2210161 (not c!1318194)) b!7068169))

(assert (= (and b!7068169 c!1318198) b!7068161))

(assert (= (and b!7068169 (not c!1318198)) b!7068163))

(assert (= (and b!7068163 res!2886374) b!7068160))

(assert (= (and b!7068163 c!1318195) b!7068168))

(assert (= (and b!7068163 (not c!1318195)) b!7068170))

(assert (= (and b!7068170 c!1318197) b!7068162))

(assert (= (and b!7068170 (not c!1318197)) b!7068164))

(assert (= (and b!7068164 c!1318196) b!7068166))

(assert (= (and b!7068164 (not c!1318196)) b!7068165))

(assert (= (or b!7068162 b!7068166) bm!642350))

(assert (= (or b!7068162 b!7068166) bm!642352))

(assert (= (or b!7068168 bm!642352) bm!642355))

(assert (= (or b!7068168 bm!642350) bm!642351))

(assert (= (or b!7068161 b!7068168) bm!642354))

(assert (= (or b!7068161 bm!642355) bm!642353))

(declare-fun m!7792552 () Bool)

(assert (=> bm!642353 m!7792552))

(declare-fun m!7792554 () Bool)

(assert (=> bm!642354 m!7792554))

(declare-fun m!7792556 () Bool)

(assert (=> b!7068167 m!7792556))

(declare-fun m!7792558 () Bool)

(assert (=> b!7068160 m!7792558))

(declare-fun m!7792560 () Bool)

(assert (=> bm!642351 m!7792560))

(assert (=> b!7067914 d!2210161))

(declare-fun d!2210163 () Bool)

(declare-fun c!1318204 () Bool)

(declare-fun e!4249317 () Bool)

(assert (=> d!2210163 (= c!1318204 e!4249317)))

(declare-fun res!2886377 () Bool)

(assert (=> d!2210163 (=> (not res!2886377) (not e!4249317))))

(assert (=> d!2210163 (= res!2886377 ((_ is Cons!68283) (exprs!7123 lt!2542923)))))

(declare-fun e!4249318 () (InoxSet Context!13246))

(assert (=> d!2210163 (= (derivationStepZipperUp!2211 lt!2542923 (h!74732 s!7408)) e!4249318)))

(declare-fun b!7068181 () Bool)

(declare-fun e!4249316 () (InoxSet Context!13246))

(assert (=> b!7068181 (= e!4249316 ((as const (Array Context!13246 Bool)) false))))

(declare-fun b!7068182 () Bool)

(assert (=> b!7068182 (= e!4249317 (nullable!7310 (h!74731 (exprs!7123 lt!2542923))))))

(declare-fun bm!642358 () Bool)

(declare-fun call!642363 () (InoxSet Context!13246))

(assert (=> bm!642358 (= call!642363 (derivationStepZipperDown!2261 (h!74731 (exprs!7123 lt!2542923)) (Context!13247 (t!382188 (exprs!7123 lt!2542923))) (h!74732 s!7408)))))

(declare-fun b!7068183 () Bool)

(assert (=> b!7068183 (= e!4249316 call!642363)))

(declare-fun b!7068184 () Bool)

(assert (=> b!7068184 (= e!4249318 ((_ map or) call!642363 (derivationStepZipperUp!2211 (Context!13247 (t!382188 (exprs!7123 lt!2542923))) (h!74732 s!7408))))))

(declare-fun b!7068185 () Bool)

(assert (=> b!7068185 (= e!4249318 e!4249316)))

(declare-fun c!1318203 () Bool)

(assert (=> b!7068185 (= c!1318203 ((_ is Cons!68283) (exprs!7123 lt!2542923)))))

(assert (= (and d!2210163 res!2886377) b!7068182))

(assert (= (and d!2210163 c!1318204) b!7068184))

(assert (= (and d!2210163 (not c!1318204)) b!7068185))

(assert (= (and b!7068185 c!1318203) b!7068183))

(assert (= (and b!7068185 (not c!1318203)) b!7068181))

(assert (= (or b!7068184 b!7068183) bm!642358))

(declare-fun m!7792562 () Bool)

(assert (=> b!7068182 m!7792562))

(declare-fun m!7792564 () Bool)

(assert (=> bm!642358 m!7792564))

(declare-fun m!7792566 () Bool)

(assert (=> b!7068184 m!7792566))

(assert (=> b!7067914 d!2210163))

(declare-fun d!2210165 () Bool)

(declare-fun c!1318205 () Bool)

(assert (=> d!2210165 (= c!1318205 (isEmpty!39850 s!7408))))

(declare-fun e!4249319 () Bool)

(assert (=> d!2210165 (= (matchZipper!3167 lt!2542932 s!7408) e!4249319)))

(declare-fun b!7068186 () Bool)

(assert (=> b!7068186 (= e!4249319 (nullableZipper!2688 lt!2542932))))

(declare-fun b!7068187 () Bool)

(assert (=> b!7068187 (= e!4249319 (matchZipper!3167 (derivationStepZipper!3077 lt!2542932 (head!14394 s!7408)) (tail!13800 s!7408)))))

(assert (= (and d!2210165 c!1318205) b!7068186))

(assert (= (and d!2210165 (not c!1318205)) b!7068187))

(declare-fun m!7792568 () Bool)

(assert (=> d!2210165 m!7792568))

(declare-fun m!7792570 () Bool)

(assert (=> b!7068186 m!7792570))

(declare-fun m!7792572 () Bool)

(assert (=> b!7068187 m!7792572))

(assert (=> b!7068187 m!7792572))

(declare-fun m!7792574 () Bool)

(assert (=> b!7068187 m!7792574))

(declare-fun m!7792576 () Bool)

(assert (=> b!7068187 m!7792576))

(assert (=> b!7068187 m!7792574))

(assert (=> b!7068187 m!7792576))

(declare-fun m!7792578 () Bool)

(assert (=> b!7068187 m!7792578))

(assert (=> start!686304 d!2210165))

(declare-fun bs!1880038 () Bool)

(declare-fun d!2210167 () Bool)

(assert (= bs!1880038 (and d!2210167 b!7067931)))

(declare-fun lambda!424515 () Int)

(assert (=> bs!1880038 (= lambda!424515 lambda!424490)))

(assert (=> d!2210167 true))

(assert (=> d!2210167 (= (appendTo!748 z1!570 ct2!306) (map!15970 z1!570 lambda!424515))))

(declare-fun bs!1880039 () Bool)

(assert (= bs!1880039 d!2210167))

(declare-fun m!7792580 () Bool)

(assert (=> bs!1880039 m!7792580))

(assert (=> start!686304 d!2210167))

(declare-fun bs!1880040 () Bool)

(declare-fun d!2210169 () Bool)

(assert (= bs!1880040 (and d!2210169 b!7067931)))

(declare-fun lambda!424518 () Int)

(assert (=> bs!1880040 (= lambda!424518 lambda!424491)))

(assert (=> d!2210169 (= (inv!86926 ct2!306) (forall!16575 (exprs!7123 ct2!306) lambda!424518))))

(declare-fun bs!1880041 () Bool)

(assert (= bs!1880041 d!2210169))

(declare-fun m!7792582 () Bool)

(assert (=> bs!1880041 m!7792582))

(assert (=> start!686304 d!2210169))

(declare-fun d!2210171 () Bool)

(declare-fun c!1318208 () Bool)

(declare-fun e!4249321 () Bool)

(assert (=> d!2210171 (= c!1318208 e!4249321)))

(declare-fun res!2886378 () Bool)

(assert (=> d!2210171 (=> (not res!2886378) (not e!4249321))))

(assert (=> d!2210171 (= res!2886378 ((_ is Cons!68283) (exprs!7123 lt!2542914)))))

(declare-fun e!4249322 () (InoxSet Context!13246))

(assert (=> d!2210171 (= (derivationStepZipperUp!2211 lt!2542914 (h!74732 s!7408)) e!4249322)))

(declare-fun b!7068188 () Bool)

(declare-fun e!4249320 () (InoxSet Context!13246))

(assert (=> b!7068188 (= e!4249320 ((as const (Array Context!13246 Bool)) false))))

(declare-fun b!7068189 () Bool)

(assert (=> b!7068189 (= e!4249321 (nullable!7310 (h!74731 (exprs!7123 lt!2542914))))))

(declare-fun bm!642359 () Bool)

(declare-fun call!642364 () (InoxSet Context!13246))

(assert (=> bm!642359 (= call!642364 (derivationStepZipperDown!2261 (h!74731 (exprs!7123 lt!2542914)) (Context!13247 (t!382188 (exprs!7123 lt!2542914))) (h!74732 s!7408)))))

(declare-fun b!7068190 () Bool)

(assert (=> b!7068190 (= e!4249320 call!642364)))

(declare-fun b!7068191 () Bool)

(assert (=> b!7068191 (= e!4249322 ((_ map or) call!642364 (derivationStepZipperUp!2211 (Context!13247 (t!382188 (exprs!7123 lt!2542914))) (h!74732 s!7408))))))

(declare-fun b!7068192 () Bool)

(assert (=> b!7068192 (= e!4249322 e!4249320)))

(declare-fun c!1318207 () Bool)

(assert (=> b!7068192 (= c!1318207 ((_ is Cons!68283) (exprs!7123 lt!2542914)))))

(assert (= (and d!2210171 res!2886378) b!7068189))

(assert (= (and d!2210171 c!1318208) b!7068191))

(assert (= (and d!2210171 (not c!1318208)) b!7068192))

(assert (= (and b!7068192 c!1318207) b!7068190))

(assert (= (and b!7068192 (not c!1318207)) b!7068188))

(assert (= (or b!7068191 b!7068190) bm!642359))

(declare-fun m!7792584 () Bool)

(assert (=> b!7068189 m!7792584))

(declare-fun m!7792586 () Bool)

(assert (=> bm!642359 m!7792586))

(declare-fun m!7792588 () Bool)

(assert (=> b!7068191 m!7792588))

(assert (=> b!7067929 d!2210171))

(assert (=> b!7067929 d!2210155))

(declare-fun bs!1880042 () Bool)

(declare-fun d!2210173 () Bool)

(assert (= bs!1880042 (and d!2210173 b!7067929)))

(declare-fun lambda!424521 () Int)

(assert (=> bs!1880042 (= lambda!424521 lambda!424492)))

(assert (=> d!2210173 true))

(assert (=> d!2210173 (= (derivationStepZipper!3077 lt!2542937 (h!74732 s!7408)) (flatMap!2553 lt!2542937 lambda!424521))))

(declare-fun bs!1880043 () Bool)

(assert (= bs!1880043 d!2210173))

(declare-fun m!7792590 () Bool)

(assert (=> bs!1880043 m!7792590))

(assert (=> b!7067929 d!2210173))

(declare-fun d!2210175 () Bool)

(declare-fun dynLambda!27754 (Int Context!13246) (InoxSet Context!13246))

(assert (=> d!2210175 (= (flatMap!2553 lt!2542937 lambda!424492) (dynLambda!27754 lambda!424492 lt!2542914))))

(declare-fun lt!2542987 () Unit!161962)

(declare-fun choose!54117 ((InoxSet Context!13246) Context!13246 Int) Unit!161962)

(assert (=> d!2210175 (= lt!2542987 (choose!54117 lt!2542937 lt!2542914 lambda!424492))))

(assert (=> d!2210175 (= lt!2542937 (store ((as const (Array Context!13246 Bool)) false) lt!2542914 true))))

(assert (=> d!2210175 (= (lemmaFlatMapOnSingletonSet!2062 lt!2542937 lt!2542914 lambda!424492) lt!2542987)))

(declare-fun b_lambda!269745 () Bool)

(assert (=> (not b_lambda!269745) (not d!2210175)))

(declare-fun bs!1880044 () Bool)

(assert (= bs!1880044 d!2210175))

(assert (=> bs!1880044 m!7792258))

(declare-fun m!7792592 () Bool)

(assert (=> bs!1880044 m!7792592))

(declare-fun m!7792594 () Bool)

(assert (=> bs!1880044 m!7792594))

(assert (=> bs!1880044 m!7792264))

(assert (=> b!7067929 d!2210175))

(declare-fun d!2210177 () Bool)

(declare-fun choose!54118 ((InoxSet Context!13246) Int) (InoxSet Context!13246))

(assert (=> d!2210177 (= (flatMap!2553 lt!2542937 lambda!424492) (choose!54118 lt!2542937 lambda!424492))))

(declare-fun bs!1880045 () Bool)

(assert (= bs!1880045 d!2210177))

(declare-fun m!7792596 () Bool)

(assert (=> bs!1880045 m!7792596))

(assert (=> b!7067929 d!2210177))

(declare-fun d!2210179 () Bool)

(declare-fun c!1318211 () Bool)

(assert (=> d!2210179 (= c!1318211 (isEmpty!39850 (t!382189 s!7408)))))

(declare-fun e!4249323 () Bool)

(assert (=> d!2210179 (= (matchZipper!3167 lt!2542920 (t!382189 s!7408)) e!4249323)))

(declare-fun b!7068195 () Bool)

(assert (=> b!7068195 (= e!4249323 (nullableZipper!2688 lt!2542920))))

(declare-fun b!7068196 () Bool)

(assert (=> b!7068196 (= e!4249323 (matchZipper!3167 (derivationStepZipper!3077 lt!2542920 (head!14394 (t!382189 s!7408))) (tail!13800 (t!382189 s!7408))))))

(assert (= (and d!2210179 c!1318211) b!7068195))

(assert (= (and d!2210179 (not c!1318211)) b!7068196))

(assert (=> d!2210179 m!7792494))

(declare-fun m!7792598 () Bool)

(assert (=> b!7068195 m!7792598))

(assert (=> b!7068196 m!7792498))

(assert (=> b!7068196 m!7792498))

(declare-fun m!7792600 () Bool)

(assert (=> b!7068196 m!7792600))

(assert (=> b!7068196 m!7792502))

(assert (=> b!7068196 m!7792600))

(assert (=> b!7068196 m!7792502))

(declare-fun m!7792602 () Bool)

(assert (=> b!7068196 m!7792602))

(assert (=> b!7067930 d!2210179))

(declare-fun d!2210181 () Bool)

(declare-fun e!4249326 () Bool)

(assert (=> d!2210181 (= (matchZipper!3167 ((_ map or) lt!2542915 lt!2542931) (t!382189 s!7408)) e!4249326)))

(declare-fun res!2886381 () Bool)

(assert (=> d!2210181 (=> res!2886381 e!4249326)))

(assert (=> d!2210181 (= res!2886381 (matchZipper!3167 lt!2542915 (t!382189 s!7408)))))

(declare-fun lt!2542990 () Unit!161962)

(declare-fun choose!54119 ((InoxSet Context!13246) (InoxSet Context!13246) List!68408) Unit!161962)

(assert (=> d!2210181 (= lt!2542990 (choose!54119 lt!2542915 lt!2542931 (t!382189 s!7408)))))

(assert (=> d!2210181 (= (lemmaZipperConcatMatchesSameAsBothZippers!1640 lt!2542915 lt!2542931 (t!382189 s!7408)) lt!2542990)))

(declare-fun b!7068199 () Bool)

(assert (=> b!7068199 (= e!4249326 (matchZipper!3167 lt!2542931 (t!382189 s!7408)))))

(assert (= (and d!2210181 (not res!2886381)) b!7068199))

(declare-fun m!7792604 () Bool)

(assert (=> d!2210181 m!7792604))

(assert (=> d!2210181 m!7792300))

(declare-fun m!7792606 () Bool)

(assert (=> d!2210181 m!7792606))

(assert (=> b!7068199 m!7792246))

(assert (=> b!7067930 d!2210181))

(declare-fun d!2210183 () Bool)

(declare-fun c!1318212 () Bool)

(assert (=> d!2210183 (= c!1318212 (isEmpty!39850 (t!382189 s!7408)))))

(declare-fun e!4249327 () Bool)

(assert (=> d!2210183 (= (matchZipper!3167 lt!2542930 (t!382189 s!7408)) e!4249327)))

(declare-fun b!7068200 () Bool)

(assert (=> b!7068200 (= e!4249327 (nullableZipper!2688 lt!2542930))))

(declare-fun b!7068201 () Bool)

(assert (=> b!7068201 (= e!4249327 (matchZipper!3167 (derivationStepZipper!3077 lt!2542930 (head!14394 (t!382189 s!7408))) (tail!13800 (t!382189 s!7408))))))

(assert (= (and d!2210183 c!1318212) b!7068200))

(assert (= (and d!2210183 (not c!1318212)) b!7068201))

(assert (=> d!2210183 m!7792494))

(declare-fun m!7792608 () Bool)

(assert (=> b!7068200 m!7792608))

(assert (=> b!7068201 m!7792498))

(assert (=> b!7068201 m!7792498))

(declare-fun m!7792610 () Bool)

(assert (=> b!7068201 m!7792610))

(assert (=> b!7068201 m!7792502))

(assert (=> b!7068201 m!7792610))

(assert (=> b!7068201 m!7792502))

(declare-fun m!7792612 () Bool)

(assert (=> b!7068201 m!7792612))

(assert (=> b!7067930 d!2210183))

(assert (=> b!7067930 d!2210147))

(declare-fun d!2210185 () Bool)

(declare-fun c!1318213 () Bool)

(assert (=> d!2210185 (= c!1318213 (isEmpty!39850 (t!382189 s!7408)))))

(declare-fun e!4249328 () Bool)

(assert (=> d!2210185 (= (matchZipper!3167 lt!2542915 (t!382189 s!7408)) e!4249328)))

(declare-fun b!7068202 () Bool)

(assert (=> b!7068202 (= e!4249328 (nullableZipper!2688 lt!2542915))))

(declare-fun b!7068203 () Bool)

(assert (=> b!7068203 (= e!4249328 (matchZipper!3167 (derivationStepZipper!3077 lt!2542915 (head!14394 (t!382189 s!7408))) (tail!13800 (t!382189 s!7408))))))

(assert (= (and d!2210185 c!1318213) b!7068202))

(assert (= (and d!2210185 (not c!1318213)) b!7068203))

(assert (=> d!2210185 m!7792494))

(declare-fun m!7792614 () Bool)

(assert (=> b!7068202 m!7792614))

(assert (=> b!7068203 m!7792498))

(assert (=> b!7068203 m!7792498))

(declare-fun m!7792616 () Bool)

(assert (=> b!7068203 m!7792616))

(assert (=> b!7068203 m!7792502))

(assert (=> b!7068203 m!7792616))

(assert (=> b!7068203 m!7792502))

(declare-fun m!7792618 () Bool)

(assert (=> b!7068203 m!7792618))

(assert (=> b!7067930 d!2210185))

(declare-fun d!2210187 () Bool)

(assert (=> d!2210187 (= (isEmpty!39848 (exprs!7123 lt!2542928)) ((_ is Nil!68283) (exprs!7123 lt!2542928)))))

(assert (=> b!7067918 d!2210187))

(declare-fun bs!1880046 () Bool)

(declare-fun d!2210189 () Bool)

(assert (= bs!1880046 (and d!2210189 b!7067931)))

(declare-fun lambda!424522 () Int)

(assert (=> bs!1880046 (= lambda!424522 lambda!424491)))

(declare-fun bs!1880047 () Bool)

(assert (= bs!1880047 (and d!2210189 d!2210169)))

(assert (=> bs!1880047 (= lambda!424522 lambda!424518)))

(assert (=> d!2210189 (= (inv!86926 setElem!50160) (forall!16575 (exprs!7123 setElem!50160) lambda!424522))))

(declare-fun bs!1880048 () Bool)

(assert (= bs!1880048 d!2210189))

(declare-fun m!7792620 () Bool)

(assert (=> bs!1880048 m!7792620))

(assert (=> setNonEmpty!50160 d!2210189))

(declare-fun d!2210191 () Bool)

(declare-fun e!4249331 () Bool)

(assert (=> d!2210191 e!4249331))

(declare-fun res!2886384 () Bool)

(assert (=> d!2210191 (=> (not res!2886384) (not e!4249331))))

(declare-fun lt!2542993 () List!68409)

(declare-fun noDuplicate!2717 (List!68409) Bool)

(assert (=> d!2210191 (= res!2886384 (noDuplicate!2717 lt!2542993))))

(declare-fun choose!54120 ((InoxSet Context!13246)) List!68409)

(assert (=> d!2210191 (= lt!2542993 (choose!54120 lt!2542932))))

(assert (=> d!2210191 (= (toList!10968 lt!2542932) lt!2542993)))

(declare-fun b!7068206 () Bool)

(declare-fun content!13764 (List!68409) (InoxSet Context!13246))

(assert (=> b!7068206 (= e!4249331 (= (content!13764 lt!2542993) lt!2542932))))

(assert (= (and d!2210191 res!2886384) b!7068206))

(declare-fun m!7792622 () Bool)

(assert (=> d!2210191 m!7792622))

(declare-fun m!7792624 () Bool)

(assert (=> d!2210191 m!7792624))

(declare-fun m!7792626 () Bool)

(assert (=> b!7068206 m!7792626))

(assert (=> b!7067928 d!2210191))

(declare-fun d!2210193 () Bool)

(declare-fun e!4249334 () Bool)

(assert (=> d!2210193 e!4249334))

(declare-fun res!2886387 () Bool)

(assert (=> d!2210193 (=> (not res!2886387) (not e!4249334))))

(declare-fun lt!2542996 () Context!13246)

(declare-fun dynLambda!27755 (Int Context!13246) Bool)

(assert (=> d!2210193 (= res!2886387 (dynLambda!27755 lambda!424489 lt!2542996))))

(declare-fun getWitness!1719 (List!68409 Int) Context!13246)

(assert (=> d!2210193 (= lt!2542996 (getWitness!1719 (toList!10968 lt!2542932) lambda!424489))))

(declare-fun exists!3662 ((InoxSet Context!13246) Int) Bool)

(assert (=> d!2210193 (exists!3662 lt!2542932 lambda!424489)))

(assert (=> d!2210193 (= (getWitness!1717 lt!2542932 lambda!424489) lt!2542996)))

(declare-fun b!7068209 () Bool)

(assert (=> b!7068209 (= e!4249334 (select lt!2542932 lt!2542996))))

(assert (= (and d!2210193 res!2886387) b!7068209))

(declare-fun b_lambda!269747 () Bool)

(assert (=> (not b_lambda!269747) (not d!2210193)))

(declare-fun m!7792628 () Bool)

(assert (=> d!2210193 m!7792628))

(assert (=> d!2210193 m!7792286))

(assert (=> d!2210193 m!7792286))

(declare-fun m!7792630 () Bool)

(assert (=> d!2210193 m!7792630))

(declare-fun m!7792632 () Bool)

(assert (=> d!2210193 m!7792632))

(declare-fun m!7792634 () Bool)

(assert (=> b!7068209 m!7792634))

(assert (=> b!7067928 d!2210193))

(declare-fun bs!1880049 () Bool)

(declare-fun d!2210195 () Bool)

(assert (= bs!1880049 (and d!2210195 b!7067928)))

(declare-fun lambda!424525 () Int)

(assert (=> bs!1880049 (= lambda!424525 lambda!424489)))

(assert (=> d!2210195 true))

(assert (=> d!2210195 (exists!3660 lt!2542924 lambda!424525)))

(declare-fun lt!2542999 () Unit!161962)

(declare-fun choose!54121 (List!68409 List!68408) Unit!161962)

(assert (=> d!2210195 (= lt!2542999 (choose!54121 lt!2542924 s!7408))))

(assert (=> d!2210195 (matchZipper!3167 (content!13764 lt!2542924) s!7408)))

(assert (=> d!2210195 (= (lemmaZipperMatchesExistsMatchingContext!548 lt!2542924 s!7408) lt!2542999)))

(declare-fun bs!1880050 () Bool)

(assert (= bs!1880050 d!2210195))

(declare-fun m!7792636 () Bool)

(assert (=> bs!1880050 m!7792636))

(declare-fun m!7792638 () Bool)

(assert (=> bs!1880050 m!7792638))

(declare-fun m!7792640 () Bool)

(assert (=> bs!1880050 m!7792640))

(assert (=> bs!1880050 m!7792640))

(declare-fun m!7792642 () Bool)

(assert (=> bs!1880050 m!7792642))

(assert (=> b!7067928 d!2210195))

(declare-fun d!2210197 () Bool)

(declare-fun c!1318216 () Bool)

(assert (=> d!2210197 (= c!1318216 (isEmpty!39850 s!7408))))

(declare-fun e!4249335 () Bool)

(assert (=> d!2210197 (= (matchZipper!3167 lt!2542916 s!7408) e!4249335)))

(declare-fun b!7068210 () Bool)

(assert (=> b!7068210 (= e!4249335 (nullableZipper!2688 lt!2542916))))

(declare-fun b!7068211 () Bool)

(assert (=> b!7068211 (= e!4249335 (matchZipper!3167 (derivationStepZipper!3077 lt!2542916 (head!14394 s!7408)) (tail!13800 s!7408)))))

(assert (= (and d!2210197 c!1318216) b!7068210))

(assert (= (and d!2210197 (not c!1318216)) b!7068211))

(assert (=> d!2210197 m!7792568))

(declare-fun m!7792644 () Bool)

(assert (=> b!7068210 m!7792644))

(assert (=> b!7068211 m!7792572))

(assert (=> b!7068211 m!7792572))

(declare-fun m!7792646 () Bool)

(assert (=> b!7068211 m!7792646))

(assert (=> b!7068211 m!7792576))

(assert (=> b!7068211 m!7792646))

(assert (=> b!7068211 m!7792576))

(declare-fun m!7792648 () Bool)

(assert (=> b!7068211 m!7792648))

(assert (=> b!7067928 d!2210197))

(declare-fun bs!1880051 () Bool)

(declare-fun d!2210199 () Bool)

(assert (= bs!1880051 (and d!2210199 b!7067928)))

(declare-fun lambda!424528 () Int)

(assert (=> bs!1880051 (not (= lambda!424528 lambda!424489))))

(declare-fun bs!1880052 () Bool)

(assert (= bs!1880052 (and d!2210199 d!2210195)))

(assert (=> bs!1880052 (not (= lambda!424528 lambda!424525))))

(assert (=> d!2210199 true))

(declare-fun order!28385 () Int)

(declare-fun dynLambda!27756 (Int Int) Int)

(assert (=> d!2210199 (< (dynLambda!27756 order!28385 lambda!424489) (dynLambda!27756 order!28385 lambda!424528))))

(declare-fun forall!16576 (List!68409 Int) Bool)

(assert (=> d!2210199 (= (exists!3660 lt!2542924 lambda!424489) (not (forall!16576 lt!2542924 lambda!424528)))))

(declare-fun bs!1880053 () Bool)

(assert (= bs!1880053 d!2210199))

(declare-fun m!7792650 () Bool)

(assert (=> bs!1880053 m!7792650))

(assert (=> b!7067928 d!2210199))

(assert (=> b!7067919 d!2210149))

(assert (=> b!7067927 d!2210155))

(declare-fun b!7068218 () Bool)

(declare-fun e!4249338 () Bool)

(declare-fun tp!1941825 () Bool)

(declare-fun tp!1941826 () Bool)

(assert (=> b!7068218 (= e!4249338 (and tp!1941825 tp!1941826))))

(assert (=> b!7067921 (= tp!1941802 e!4249338)))

(assert (= (and b!7067921 ((_ is Cons!68283) (exprs!7123 setElem!50160))) b!7068218))

(declare-fun b!7068223 () Bool)

(declare-fun e!4249341 () Bool)

(declare-fun tp!1941829 () Bool)

(assert (=> b!7068223 (= e!4249341 (and tp_is_empty!44479 tp!1941829))))

(assert (=> b!7067916 (= tp!1941800 e!4249341)))

(assert (= (and b!7067916 ((_ is Cons!68284) (t!382189 s!7408))) b!7068223))

(declare-fun condSetEmpty!50166 () Bool)

(assert (=> setNonEmpty!50160 (= condSetEmpty!50166 (= setRest!50160 ((as const (Array Context!13246 Bool)) false)))))

(declare-fun setRes!50166 () Bool)

(assert (=> setNonEmpty!50160 (= tp!1941801 setRes!50166)))

(declare-fun setIsEmpty!50166 () Bool)

(assert (=> setIsEmpty!50166 setRes!50166))

(declare-fun setNonEmpty!50166 () Bool)

(declare-fun tp!1941834 () Bool)

(declare-fun setElem!50166 () Context!13246)

(declare-fun e!4249344 () Bool)

(assert (=> setNonEmpty!50166 (= setRes!50166 (and tp!1941834 (inv!86926 setElem!50166) e!4249344))))

(declare-fun setRest!50166 () (InoxSet Context!13246))

(assert (=> setNonEmpty!50166 (= setRest!50160 ((_ map or) (store ((as const (Array Context!13246 Bool)) false) setElem!50166 true) setRest!50166))))

(declare-fun b!7068228 () Bool)

(declare-fun tp!1941835 () Bool)

(assert (=> b!7068228 (= e!4249344 tp!1941835)))

(assert (= (and setNonEmpty!50160 condSetEmpty!50166) setIsEmpty!50166))

(assert (= (and setNonEmpty!50160 (not condSetEmpty!50166)) setNonEmpty!50166))

(assert (= setNonEmpty!50166 b!7068228))

(declare-fun m!7792652 () Bool)

(assert (=> setNonEmpty!50166 m!7792652))

(declare-fun b!7068229 () Bool)

(declare-fun e!4249345 () Bool)

(declare-fun tp!1941836 () Bool)

(declare-fun tp!1941837 () Bool)

(assert (=> b!7068229 (= e!4249345 (and tp!1941836 tp!1941837))))

(assert (=> b!7067933 (= tp!1941803 e!4249345)))

(assert (= (and b!7067933 ((_ is Cons!68283) (exprs!7123 ct2!306))) b!7068229))

(declare-fun b_lambda!269749 () Bool)

(assert (= b_lambda!269747 (or b!7067928 b_lambda!269749)))

(declare-fun bs!1880054 () Bool)

(declare-fun d!2210201 () Bool)

(assert (= bs!1880054 (and d!2210201 b!7067928)))

(assert (=> bs!1880054 (= (dynLambda!27755 lambda!424489 lt!2542996) (matchZipper!3167 (store ((as const (Array Context!13246 Bool)) false) lt!2542996 true) s!7408))))

(declare-fun m!7792654 () Bool)

(assert (=> bs!1880054 m!7792654))

(assert (=> bs!1880054 m!7792654))

(declare-fun m!7792656 () Bool)

(assert (=> bs!1880054 m!7792656))

(assert (=> d!2210193 d!2210201))

(declare-fun b_lambda!269751 () Bool)

(assert (= b_lambda!269743 (or b!7067931 b_lambda!269751)))

(declare-fun bs!1880055 () Bool)

(declare-fun d!2210203 () Bool)

(assert (= bs!1880055 (and d!2210203 b!7067931)))

(declare-fun lt!2543000 () Unit!161962)

(assert (=> bs!1880055 (= lt!2543000 (lemmaConcatPreservesForall!938 (exprs!7123 lt!2542981) (exprs!7123 ct2!306) lambda!424491))))

(assert (=> bs!1880055 (= (dynLambda!27753 lambda!424490 lt!2542981) (Context!13247 (++!15744 (exprs!7123 lt!2542981) (exprs!7123 ct2!306))))))

(declare-fun m!7792658 () Bool)

(assert (=> bs!1880055 m!7792658))

(declare-fun m!7792660 () Bool)

(assert (=> bs!1880055 m!7792660))

(assert (=> d!2210157 d!2210203))

(declare-fun b_lambda!269753 () Bool)

(assert (= b_lambda!269745 (or b!7067929 b_lambda!269753)))

(declare-fun bs!1880056 () Bool)

(declare-fun d!2210205 () Bool)

(assert (= bs!1880056 (and d!2210205 b!7067929)))

(assert (=> bs!1880056 (= (dynLambda!27754 lambda!424492 lt!2542914) (derivationStepZipperUp!2211 lt!2542914 (h!74732 s!7408)))))

(assert (=> bs!1880056 m!7792254))

(assert (=> d!2210175 d!2210205))

(check-sat (not b!7068182) (not d!2210147) (not b_lambda!269753) (not d!2210169) (not b!7068112) (not b!7068136) (not b!7068203) (not b_lambda!269751) (not b_lambda!269749) (not d!2210179) (not d!2210173) (not b!7068196) (not bm!642336) (not b!7068223) (not b!7068211) (not d!2210197) tp_is_empty!44479 (not b!7068128) (not d!2210175) (not b!7068160) (not d!2210189) (not d!2210149) (not d!2210157) (not d!2210153) (not b!7068201) (not setNonEmpty!50166) (not b!7068089) (not d!2210155) (not d!2210199) (not d!2210185) (not bm!642358) (not bs!1880056) (not b!7068206) (not d!2210183) (not d!2210177) (not d!2210195) (not b!7068200) (not b!7068090) (not b!7068135) (not d!2210165) (not d!2210181) (not bm!642351) (not b!7068187) (not b!7068229) (not b!7068191) (not b!7068218) (not b!7068199) (not bm!642335) (not b!7068186) (not b!7068195) (not b!7068127) (not b!7068184) (not bs!1880055) (not bm!642359) (not b!7068202) (not b!7068228) (not d!2210159) (not b!7068210) (not d!2210167) (not d!2210191) (not bm!642354) (not b!7068189) (not d!2210193) (not bm!642353) (not d!2210143) (not bs!1880054))
(check-sat)
(get-model)

(declare-fun d!2210387 () Bool)

(assert (=> d!2210387 (= (nullable!7310 (regOne!35766 (h!74731 (exprs!7123 lt!2542928)))) (nullableFct!2803 (regOne!35766 (h!74731 (exprs!7123 lt!2542928)))))))

(declare-fun bs!1880176 () Bool)

(assert (= bs!1880176 d!2210387))

(declare-fun m!7792992 () Bool)

(assert (=> bs!1880176 m!7792992))

(assert (=> b!7068160 d!2210387))

(declare-fun d!2210389 () Bool)

(declare-fun res!2886478 () Bool)

(declare-fun e!4249515 () Bool)

(assert (=> d!2210389 (=> res!2886478 e!4249515)))

(assert (=> d!2210389 (= res!2886478 ((_ is Nil!68285) lt!2542993))))

(assert (=> d!2210389 (= (noDuplicate!2717 lt!2542993) e!4249515)))

(declare-fun b!7068484 () Bool)

(declare-fun e!4249516 () Bool)

(assert (=> b!7068484 (= e!4249515 e!4249516)))

(declare-fun res!2886479 () Bool)

(assert (=> b!7068484 (=> (not res!2886479) (not e!4249516))))

(declare-fun contains!20501 (List!68409 Context!13246) Bool)

(assert (=> b!7068484 (= res!2886479 (not (contains!20501 (t!382190 lt!2542993) (h!74733 lt!2542993))))))

(declare-fun b!7068485 () Bool)

(assert (=> b!7068485 (= e!4249516 (noDuplicate!2717 (t!382190 lt!2542993)))))

(assert (= (and d!2210389 (not res!2886478)) b!7068484))

(assert (= (and b!7068484 res!2886479) b!7068485))

(declare-fun m!7792994 () Bool)

(assert (=> b!7068484 m!7792994))

(declare-fun m!7792996 () Bool)

(assert (=> b!7068485 m!7792996))

(assert (=> d!2210191 d!2210389))

(declare-fun d!2210391 () Bool)

(declare-fun e!4249524 () Bool)

(assert (=> d!2210391 e!4249524))

(declare-fun res!2886484 () Bool)

(assert (=> d!2210391 (=> (not res!2886484) (not e!4249524))))

(declare-fun res!2886485 () List!68409)

(assert (=> d!2210391 (= res!2886484 (noDuplicate!2717 res!2886485))))

(declare-fun e!4249525 () Bool)

(assert (=> d!2210391 e!4249525))

(assert (=> d!2210391 (= (choose!54120 lt!2542932) res!2886485)))

(declare-fun b!7068493 () Bool)

(declare-fun e!4249523 () Bool)

(declare-fun tp!1941887 () Bool)

(assert (=> b!7068493 (= e!4249523 tp!1941887)))

(declare-fun b!7068492 () Bool)

(declare-fun tp!1941886 () Bool)

(assert (=> b!7068492 (= e!4249525 (and (inv!86926 (h!74733 res!2886485)) e!4249523 tp!1941886))))

(declare-fun b!7068494 () Bool)

(assert (=> b!7068494 (= e!4249524 (= (content!13764 res!2886485) lt!2542932))))

(assert (= b!7068492 b!7068493))

(assert (= (and d!2210391 ((_ is Cons!68285) res!2886485)) b!7068492))

(assert (= (and d!2210391 res!2886484) b!7068494))

(declare-fun m!7792998 () Bool)

(assert (=> d!2210391 m!7792998))

(declare-fun m!7793000 () Bool)

(assert (=> b!7068492 m!7793000))

(declare-fun m!7793002 () Bool)

(assert (=> b!7068494 m!7793002))

(assert (=> d!2210191 d!2210391))

(declare-fun d!2210393 () Bool)

(declare-fun res!2886490 () Bool)

(declare-fun e!4249530 () Bool)

(assert (=> d!2210393 (=> res!2886490 e!4249530)))

(assert (=> d!2210393 (= res!2886490 ((_ is Nil!68283) (++!15744 lt!2542935 (exprs!7123 ct2!306))))))

(assert (=> d!2210393 (= (forall!16575 (++!15744 lt!2542935 (exprs!7123 ct2!306)) lambda!424491) e!4249530)))

(declare-fun b!7068499 () Bool)

(declare-fun e!4249531 () Bool)

(assert (=> b!7068499 (= e!4249530 e!4249531)))

(declare-fun res!2886491 () Bool)

(assert (=> b!7068499 (=> (not res!2886491) (not e!4249531))))

(declare-fun dynLambda!27758 (Int Regex!17627) Bool)

(assert (=> b!7068499 (= res!2886491 (dynLambda!27758 lambda!424491 (h!74731 (++!15744 lt!2542935 (exprs!7123 ct2!306)))))))

(declare-fun b!7068500 () Bool)

(assert (=> b!7068500 (= e!4249531 (forall!16575 (t!382188 (++!15744 lt!2542935 (exprs!7123 ct2!306))) lambda!424491))))

(assert (= (and d!2210393 (not res!2886490)) b!7068499))

(assert (= (and b!7068499 res!2886491) b!7068500))

(declare-fun b_lambda!269801 () Bool)

(assert (=> (not b_lambda!269801) (not b!7068499)))

(declare-fun m!7793004 () Bool)

(assert (=> b!7068499 m!7793004))

(declare-fun m!7793006 () Bool)

(assert (=> b!7068500 m!7793006))

(assert (=> d!2210147 d!2210393))

(assert (=> d!2210147 d!2210159))

(declare-fun d!2210395 () Bool)

(assert (=> d!2210395 (forall!16575 (++!15744 lt!2542935 (exprs!7123 ct2!306)) lambda!424491)))

(assert (=> d!2210395 true))

(declare-fun _$78!671 () Unit!161962)

(assert (=> d!2210395 (= (choose!54115 lt!2542935 (exprs!7123 ct2!306) lambda!424491) _$78!671)))

(declare-fun bs!1880177 () Bool)

(assert (= bs!1880177 d!2210395))

(assert (=> bs!1880177 m!7792276))

(assert (=> bs!1880177 m!7792276))

(assert (=> bs!1880177 m!7792488))

(assert (=> d!2210147 d!2210395))

(declare-fun d!2210397 () Bool)

(declare-fun res!2886492 () Bool)

(declare-fun e!4249532 () Bool)

(assert (=> d!2210397 (=> res!2886492 e!4249532)))

(assert (=> d!2210397 (= res!2886492 ((_ is Nil!68283) lt!2542935))))

(assert (=> d!2210397 (= (forall!16575 lt!2542935 lambda!424491) e!4249532)))

(declare-fun b!7068501 () Bool)

(declare-fun e!4249533 () Bool)

(assert (=> b!7068501 (= e!4249532 e!4249533)))

(declare-fun res!2886493 () Bool)

(assert (=> b!7068501 (=> (not res!2886493) (not e!4249533))))

(assert (=> b!7068501 (= res!2886493 (dynLambda!27758 lambda!424491 (h!74731 lt!2542935)))))

(declare-fun b!7068502 () Bool)

(assert (=> b!7068502 (= e!4249533 (forall!16575 (t!382188 lt!2542935) lambda!424491))))

(assert (= (and d!2210397 (not res!2886492)) b!7068501))

(assert (= (and b!7068501 res!2886493) b!7068502))

(declare-fun b_lambda!269803 () Bool)

(assert (=> (not b_lambda!269803) (not b!7068501)))

(declare-fun m!7793008 () Bool)

(assert (=> b!7068501 m!7793008))

(declare-fun m!7793010 () Bool)

(assert (=> b!7068502 m!7793010))

(assert (=> d!2210147 d!2210397))

(declare-fun d!2210399 () Bool)

(declare-fun c!1318288 () Bool)

(assert (=> d!2210399 (= c!1318288 (isEmpty!39850 (tail!13800 (t!382189 s!7408))))))

(declare-fun e!4249534 () Bool)

(assert (=> d!2210399 (= (matchZipper!3167 (derivationStepZipper!3077 lt!2542915 (head!14394 (t!382189 s!7408))) (tail!13800 (t!382189 s!7408))) e!4249534)))

(declare-fun b!7068503 () Bool)

(assert (=> b!7068503 (= e!4249534 (nullableZipper!2688 (derivationStepZipper!3077 lt!2542915 (head!14394 (t!382189 s!7408)))))))

(declare-fun b!7068504 () Bool)

(assert (=> b!7068504 (= e!4249534 (matchZipper!3167 (derivationStepZipper!3077 (derivationStepZipper!3077 lt!2542915 (head!14394 (t!382189 s!7408))) (head!14394 (tail!13800 (t!382189 s!7408)))) (tail!13800 (tail!13800 (t!382189 s!7408)))))))

(assert (= (and d!2210399 c!1318288) b!7068503))

(assert (= (and d!2210399 (not c!1318288)) b!7068504))

(assert (=> d!2210399 m!7792502))

(declare-fun m!7793012 () Bool)

(assert (=> d!2210399 m!7793012))

(assert (=> b!7068503 m!7792616))

(declare-fun m!7793014 () Bool)

(assert (=> b!7068503 m!7793014))

(assert (=> b!7068504 m!7792502))

(declare-fun m!7793016 () Bool)

(assert (=> b!7068504 m!7793016))

(assert (=> b!7068504 m!7792616))

(assert (=> b!7068504 m!7793016))

(declare-fun m!7793018 () Bool)

(assert (=> b!7068504 m!7793018))

(assert (=> b!7068504 m!7792502))

(declare-fun m!7793020 () Bool)

(assert (=> b!7068504 m!7793020))

(assert (=> b!7068504 m!7793018))

(assert (=> b!7068504 m!7793020))

(declare-fun m!7793022 () Bool)

(assert (=> b!7068504 m!7793022))

(assert (=> b!7068203 d!2210399))

(declare-fun bs!1880178 () Bool)

(declare-fun d!2210401 () Bool)

(assert (= bs!1880178 (and d!2210401 b!7067929)))

(declare-fun lambda!424548 () Int)

(assert (=> bs!1880178 (= (= (head!14394 (t!382189 s!7408)) (h!74732 s!7408)) (= lambda!424548 lambda!424492))))

(declare-fun bs!1880179 () Bool)

(assert (= bs!1880179 (and d!2210401 d!2210173)))

(assert (=> bs!1880179 (= (= (head!14394 (t!382189 s!7408)) (h!74732 s!7408)) (= lambda!424548 lambda!424521))))

(assert (=> d!2210401 true))

(assert (=> d!2210401 (= (derivationStepZipper!3077 lt!2542915 (head!14394 (t!382189 s!7408))) (flatMap!2553 lt!2542915 lambda!424548))))

(declare-fun bs!1880180 () Bool)

(assert (= bs!1880180 d!2210401))

(declare-fun m!7793024 () Bool)

(assert (=> bs!1880180 m!7793024))

(assert (=> b!7068203 d!2210401))

(declare-fun d!2210403 () Bool)

(assert (=> d!2210403 (= (head!14394 (t!382189 s!7408)) (h!74732 (t!382189 s!7408)))))

(assert (=> b!7068203 d!2210403))

(declare-fun d!2210405 () Bool)

(assert (=> d!2210405 (= (tail!13800 (t!382189 s!7408)) (t!382189 (t!382189 s!7408)))))

(assert (=> b!7068203 d!2210405))

(declare-fun b!7068517 () Bool)

(declare-fun e!4249545 () Context!13246)

(declare-fun e!4249543 () Context!13246)

(assert (=> b!7068517 (= e!4249545 e!4249543)))

(declare-fun c!1318294 () Bool)

(assert (=> b!7068517 (= c!1318294 ((_ is Cons!68285) (toList!10968 lt!2542932)))))

(declare-fun b!7068518 () Bool)

(declare-fun e!4249544 () Bool)

(declare-fun lt!2543027 () Context!13246)

(assert (=> b!7068518 (= e!4249544 (contains!20501 (toList!10968 lt!2542932) lt!2543027))))

(declare-fun d!2210407 () Bool)

(assert (=> d!2210407 e!4249544))

(declare-fun res!2886499 () Bool)

(assert (=> d!2210407 (=> (not res!2886499) (not e!4249544))))

(assert (=> d!2210407 (= res!2886499 (dynLambda!27755 lambda!424489 lt!2543027))))

(assert (=> d!2210407 (= lt!2543027 e!4249545)))

(declare-fun c!1318293 () Bool)

(declare-fun e!4249546 () Bool)

(assert (=> d!2210407 (= c!1318293 e!4249546)))

(declare-fun res!2886498 () Bool)

(assert (=> d!2210407 (=> (not res!2886498) (not e!4249546))))

(assert (=> d!2210407 (= res!2886498 ((_ is Cons!68285) (toList!10968 lt!2542932)))))

(assert (=> d!2210407 (exists!3660 (toList!10968 lt!2542932) lambda!424489)))

(assert (=> d!2210407 (= (getWitness!1719 (toList!10968 lt!2542932) lambda!424489) lt!2543027)))

(declare-fun b!7068519 () Bool)

(declare-fun lt!2543026 () Unit!161962)

(declare-fun Unit!161964 () Unit!161962)

(assert (=> b!7068519 (= lt!2543026 Unit!161964)))

(assert (=> b!7068519 false))

(declare-fun head!14395 (List!68409) Context!13246)

(assert (=> b!7068519 (= e!4249543 (head!14395 (toList!10968 lt!2542932)))))

(declare-fun b!7068520 () Bool)

(assert (=> b!7068520 (= e!4249543 (getWitness!1719 (t!382190 (toList!10968 lt!2542932)) lambda!424489))))

(declare-fun b!7068521 () Bool)

(assert (=> b!7068521 (= e!4249545 (h!74733 (toList!10968 lt!2542932)))))

(declare-fun b!7068522 () Bool)

(assert (=> b!7068522 (= e!4249546 (dynLambda!27755 lambda!424489 (h!74733 (toList!10968 lt!2542932))))))

(assert (= (and d!2210407 res!2886498) b!7068522))

(assert (= (and d!2210407 c!1318293) b!7068521))

(assert (= (and d!2210407 (not c!1318293)) b!7068517))

(assert (= (and b!7068517 c!1318294) b!7068520))

(assert (= (and b!7068517 (not c!1318294)) b!7068519))

(assert (= (and d!2210407 res!2886499) b!7068518))

(declare-fun b_lambda!269805 () Bool)

(assert (=> (not b_lambda!269805) (not d!2210407)))

(declare-fun b_lambda!269807 () Bool)

(assert (=> (not b_lambda!269807) (not b!7068522)))

(assert (=> b!7068519 m!7792286))

(declare-fun m!7793026 () Bool)

(assert (=> b!7068519 m!7793026))

(declare-fun m!7793028 () Bool)

(assert (=> b!7068520 m!7793028))

(assert (=> b!7068518 m!7792286))

(declare-fun m!7793030 () Bool)

(assert (=> b!7068518 m!7793030))

(declare-fun m!7793032 () Bool)

(assert (=> d!2210407 m!7793032))

(assert (=> d!2210407 m!7792286))

(declare-fun m!7793034 () Bool)

(assert (=> d!2210407 m!7793034))

(declare-fun m!7793036 () Bool)

(assert (=> b!7068522 m!7793036))

(assert (=> d!2210193 d!2210407))

(assert (=> d!2210193 d!2210191))

(declare-fun d!2210409 () Bool)

(declare-fun lt!2543030 () Bool)

(assert (=> d!2210409 (= lt!2543030 (exists!3660 (toList!10968 lt!2542932) lambda!424489))))

(declare-fun choose!54123 ((InoxSet Context!13246) Int) Bool)

(assert (=> d!2210409 (= lt!2543030 (choose!54123 lt!2542932 lambda!424489))))

(assert (=> d!2210409 (= (exists!3662 lt!2542932 lambda!424489) lt!2543030)))

(declare-fun bs!1880181 () Bool)

(assert (= bs!1880181 d!2210409))

(assert (=> bs!1880181 m!7792286))

(assert (=> bs!1880181 m!7792286))

(assert (=> bs!1880181 m!7793034))

(declare-fun m!7793038 () Bool)

(assert (=> bs!1880181 m!7793038))

(assert (=> d!2210193 d!2210409))

(declare-fun bs!1880182 () Bool)

(declare-fun d!2210411 () Bool)

(assert (= bs!1880182 (and d!2210411 b!7067928)))

(declare-fun lambda!424551 () Int)

(assert (=> bs!1880182 (not (= lambda!424551 lambda!424489))))

(declare-fun bs!1880183 () Bool)

(assert (= bs!1880183 (and d!2210411 d!2210195)))

(assert (=> bs!1880183 (not (= lambda!424551 lambda!424525))))

(declare-fun bs!1880184 () Bool)

(assert (= bs!1880184 (and d!2210411 d!2210199)))

(assert (=> bs!1880184 (not (= lambda!424551 lambda!424528))))

(assert (=> d!2210411 (= (nullableZipper!2688 lt!2542932) (exists!3662 lt!2542932 lambda!424551))))

(declare-fun bs!1880185 () Bool)

(assert (= bs!1880185 d!2210411))

(declare-fun m!7793040 () Bool)

(assert (=> bs!1880185 m!7793040))

(assert (=> b!7068186 d!2210411))

(declare-fun b!7068537 () Bool)

(declare-fun e!4249562 () Bool)

(declare-fun e!4249560 () Bool)

(assert (=> b!7068537 (= e!4249562 e!4249560)))

(declare-fun res!2886513 () Bool)

(declare-fun call!642407 () Bool)

(assert (=> b!7068537 (= res!2886513 call!642407)))

(assert (=> b!7068537 (=> res!2886513 e!4249560)))

(declare-fun b!7068538 () Bool)

(declare-fun e!4249563 () Bool)

(assert (=> b!7068538 (= e!4249563 e!4249562)))

(declare-fun c!1318299 () Bool)

(assert (=> b!7068538 (= c!1318299 ((_ is Union!17627) (h!74731 (exprs!7123 lt!2542928))))))

(declare-fun b!7068539 () Bool)

(declare-fun call!642408 () Bool)

(assert (=> b!7068539 (= e!4249560 call!642408)))

(declare-fun b!7068541 () Bool)

(declare-fun e!4249561 () Bool)

(declare-fun e!4249564 () Bool)

(assert (=> b!7068541 (= e!4249561 e!4249564)))

(declare-fun res!2886514 () Bool)

(assert (=> b!7068541 (=> (not res!2886514) (not e!4249564))))

(assert (=> b!7068541 (= res!2886514 (and (not ((_ is EmptyLang!17627) (h!74731 (exprs!7123 lt!2542928)))) (not ((_ is ElementMatch!17627) (h!74731 (exprs!7123 lt!2542928))))))))

(declare-fun b!7068540 () Bool)

(declare-fun e!4249559 () Bool)

(assert (=> b!7068540 (= e!4249559 call!642407)))

(declare-fun d!2210413 () Bool)

(declare-fun res!2886510 () Bool)

(assert (=> d!2210413 (=> res!2886510 e!4249561)))

(assert (=> d!2210413 (= res!2886510 ((_ is EmptyExpr!17627) (h!74731 (exprs!7123 lt!2542928))))))

(assert (=> d!2210413 (= (nullableFct!2803 (h!74731 (exprs!7123 lt!2542928))) e!4249561)))

(declare-fun bm!642402 () Bool)

(assert (=> bm!642402 (= call!642408 (nullable!7310 (ite c!1318299 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))))))

(declare-fun b!7068542 () Bool)

(assert (=> b!7068542 (= e!4249562 e!4249559)))

(declare-fun res!2886512 () Bool)

(assert (=> b!7068542 (= res!2886512 call!642408)))

(assert (=> b!7068542 (=> (not res!2886512) (not e!4249559))))

(declare-fun b!7068543 () Bool)

(assert (=> b!7068543 (= e!4249564 e!4249563)))

(declare-fun res!2886511 () Bool)

(assert (=> b!7068543 (=> res!2886511 e!4249563)))

(assert (=> b!7068543 (= res!2886511 ((_ is Star!17627) (h!74731 (exprs!7123 lt!2542928))))))

(declare-fun bm!642403 () Bool)

(assert (=> bm!642403 (= call!642407 (nullable!7310 (ite c!1318299 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))))))))

(assert (= (and d!2210413 (not res!2886510)) b!7068541))

(assert (= (and b!7068541 res!2886514) b!7068543))

(assert (= (and b!7068543 (not res!2886511)) b!7068538))

(assert (= (and b!7068538 c!1318299) b!7068537))

(assert (= (and b!7068538 (not c!1318299)) b!7068542))

(assert (= (and b!7068537 (not res!2886513)) b!7068539))

(assert (= (and b!7068542 res!2886512) b!7068540))

(assert (= (or b!7068539 b!7068542) bm!642402))

(assert (= (or b!7068537 b!7068540) bm!642403))

(declare-fun m!7793042 () Bool)

(assert (=> bm!642402 m!7793042))

(declare-fun m!7793044 () Bool)

(assert (=> bm!642403 m!7793044))

(assert (=> d!2210143 d!2210413))

(declare-fun d!2210415 () Bool)

(assert (=> d!2210415 (= ($colon$colon!2649 (exprs!7123 lt!2542923) (ite (or c!1318195 c!1318197) (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (h!74731 (exprs!7123 lt!2542928)))) (Cons!68283 (ite (or c!1318195 c!1318197) (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (h!74731 (exprs!7123 lt!2542928))) (exprs!7123 lt!2542923)))))

(assert (=> bm!642351 d!2210415))

(declare-fun d!2210417 () Bool)

(assert (=> d!2210417 (= (nullable!7310 (h!74731 (exprs!7123 lt!2542923))) (nullableFct!2803 (h!74731 (exprs!7123 lt!2542923))))))

(declare-fun bs!1880186 () Bool)

(assert (= bs!1880186 d!2210417))

(declare-fun m!7793046 () Bool)

(assert (=> bs!1880186 m!7793046))

(assert (=> b!7068182 d!2210417))

(declare-fun bs!1880187 () Bool)

(declare-fun d!2210419 () Bool)

(assert (= bs!1880187 (and d!2210419 b!7067931)))

(declare-fun lambda!424552 () Int)

(assert (=> bs!1880187 (= lambda!424552 lambda!424491)))

(declare-fun bs!1880188 () Bool)

(assert (= bs!1880188 (and d!2210419 d!2210169)))

(assert (=> bs!1880188 (= lambda!424552 lambda!424518)))

(declare-fun bs!1880189 () Bool)

(assert (= bs!1880189 (and d!2210419 d!2210189)))

(assert (=> bs!1880189 (= lambda!424552 lambda!424522)))

(assert (=> d!2210419 (= (inv!86926 setElem!50166) (forall!16575 (exprs!7123 setElem!50166) lambda!424552))))

(declare-fun bs!1880190 () Bool)

(assert (= bs!1880190 d!2210419))

(declare-fun m!7793048 () Bool)

(assert (=> bs!1880190 m!7793048))

(assert (=> setNonEmpty!50166 d!2210419))

(declare-fun b!7068544 () Bool)

(declare-fun e!4249570 () Bool)

(assert (=> b!7068544 (= e!4249570 (nullable!7310 (regOne!35766 (ite c!1318198 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928)))))))))

(declare-fun bm!642404 () Bool)

(declare-fun call!642409 () List!68407)

(declare-fun call!642410 () List!68407)

(assert (=> bm!642404 (= call!642409 call!642410)))

(declare-fun c!1318303 () Bool)

(declare-fun c!1318301 () Bool)

(declare-fun bm!642405 () Bool)

(assert (=> bm!642405 (= call!642410 ($colon$colon!2649 (exprs!7123 (ite c!1318198 lt!2542923 (Context!13247 call!642356))) (ite (or c!1318301 c!1318303) (regTwo!35766 (ite c!1318198 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))) (ite c!1318198 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928)))))))))

(declare-fun b!7068545 () Bool)

(declare-fun e!4249566 () (InoxSet Context!13246))

(declare-fun call!642413 () (InoxSet Context!13246))

(declare-fun call!642412 () (InoxSet Context!13246))

(assert (=> b!7068545 (= e!4249566 ((_ map or) call!642413 call!642412))))

(declare-fun b!7068546 () Bool)

(declare-fun e!4249567 () (InoxSet Context!13246))

(declare-fun call!642414 () (InoxSet Context!13246))

(assert (=> b!7068546 (= e!4249567 call!642414)))

(declare-fun d!2210421 () Bool)

(declare-fun c!1318300 () Bool)

(assert (=> d!2210421 (= c!1318300 (and ((_ is ElementMatch!17627) (ite c!1318198 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))) (= (c!1318124 (ite c!1318198 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))) (h!74732 s!7408))))))

(declare-fun e!4249565 () (InoxSet Context!13246))

(assert (=> d!2210421 (= (derivationStepZipperDown!2261 (ite c!1318198 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928)))) (ite c!1318198 lt!2542923 (Context!13247 call!642356)) (h!74732 s!7408)) e!4249565)))

(declare-fun bm!642406 () Bool)

(declare-fun call!642411 () (InoxSet Context!13246))

(assert (=> bm!642406 (= call!642414 call!642411)))

(declare-fun b!7068547 () Bool)

(assert (=> b!7068547 (= c!1318301 e!4249570)))

(declare-fun res!2886515 () Bool)

(assert (=> b!7068547 (=> (not res!2886515) (not e!4249570))))

(assert (=> b!7068547 (= res!2886515 ((_ is Concat!26472) (ite c!1318198 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))))))

(declare-fun e!4249568 () (InoxSet Context!13246))

(assert (=> b!7068547 (= e!4249566 e!4249568)))

(declare-fun bm!642407 () Bool)

(declare-fun c!1318304 () Bool)

(assert (=> bm!642407 (= call!642412 (derivationStepZipperDown!2261 (ite c!1318304 (regTwo!35767 (ite c!1318198 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))) (ite c!1318301 (regTwo!35766 (ite c!1318198 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))) (ite c!1318303 (regOne!35766 (ite c!1318198 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))) (reg!17956 (ite c!1318198 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928)))))))) (ite (or c!1318304 c!1318301) (ite c!1318198 lt!2542923 (Context!13247 call!642356)) (Context!13247 call!642409)) (h!74732 s!7408)))))

(declare-fun bm!642408 () Bool)

(assert (=> bm!642408 (= call!642413 (derivationStepZipperDown!2261 (ite c!1318304 (regOne!35767 (ite c!1318198 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))) (regOne!35766 (ite c!1318198 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928)))))) (ite c!1318304 (ite c!1318198 lt!2542923 (Context!13247 call!642356)) (Context!13247 call!642410)) (h!74732 s!7408)))))

(declare-fun b!7068548 () Bool)

(declare-fun c!1318302 () Bool)

(assert (=> b!7068548 (= c!1318302 ((_ is Star!17627) (ite c!1318198 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))))))

(declare-fun e!4249569 () (InoxSet Context!13246))

(assert (=> b!7068548 (= e!4249567 e!4249569)))

(declare-fun b!7068549 () Bool)

(assert (=> b!7068549 (= e!4249569 ((as const (Array Context!13246 Bool)) false))))

(declare-fun b!7068550 () Bool)

(assert (=> b!7068550 (= e!4249569 call!642414)))

(declare-fun bm!642409 () Bool)

(assert (=> bm!642409 (= call!642411 call!642412)))

(declare-fun b!7068551 () Bool)

(assert (=> b!7068551 (= e!4249565 (store ((as const (Array Context!13246 Bool)) false) (ite c!1318198 lt!2542923 (Context!13247 call!642356)) true))))

(declare-fun b!7068552 () Bool)

(assert (=> b!7068552 (= e!4249568 ((_ map or) call!642413 call!642411))))

(declare-fun b!7068553 () Bool)

(assert (=> b!7068553 (= e!4249565 e!4249566)))

(assert (=> b!7068553 (= c!1318304 ((_ is Union!17627) (ite c!1318198 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))))))

(declare-fun b!7068554 () Bool)

(assert (=> b!7068554 (= e!4249568 e!4249567)))

(assert (=> b!7068554 (= c!1318303 ((_ is Concat!26472) (ite c!1318198 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))))))

(assert (= (and d!2210421 c!1318300) b!7068551))

(assert (= (and d!2210421 (not c!1318300)) b!7068553))

(assert (= (and b!7068553 c!1318304) b!7068545))

(assert (= (and b!7068553 (not c!1318304)) b!7068547))

(assert (= (and b!7068547 res!2886515) b!7068544))

(assert (= (and b!7068547 c!1318301) b!7068552))

(assert (= (and b!7068547 (not c!1318301)) b!7068554))

(assert (= (and b!7068554 c!1318303) b!7068546))

(assert (= (and b!7068554 (not c!1318303)) b!7068548))

(assert (= (and b!7068548 c!1318302) b!7068550))

(assert (= (and b!7068548 (not c!1318302)) b!7068549))

(assert (= (or b!7068546 b!7068550) bm!642404))

(assert (= (or b!7068546 b!7068550) bm!642406))

(assert (= (or b!7068552 bm!642406) bm!642409))

(assert (= (or b!7068552 bm!642404) bm!642405))

(assert (= (or b!7068545 b!7068552) bm!642408))

(assert (= (or b!7068545 bm!642409) bm!642407))

(declare-fun m!7793050 () Bool)

(assert (=> bm!642407 m!7793050))

(declare-fun m!7793052 () Bool)

(assert (=> bm!642408 m!7793052))

(declare-fun m!7793054 () Bool)

(assert (=> b!7068551 m!7793054))

(declare-fun m!7793056 () Bool)

(assert (=> b!7068544 m!7793056))

(declare-fun m!7793058 () Bool)

(assert (=> bm!642405 m!7793058))

(assert (=> bm!642354 d!2210421))

(declare-fun d!2210423 () Bool)

(assert (=> d!2210423 (= (flatMap!2553 lt!2542937 lambda!424521) (choose!54118 lt!2542937 lambda!424521))))

(declare-fun bs!1880191 () Bool)

(assert (= bs!1880191 d!2210423))

(declare-fun m!7793060 () Bool)

(assert (=> bs!1880191 m!7793060))

(assert (=> d!2210173 d!2210423))

(declare-fun bs!1880192 () Bool)

(declare-fun d!2210425 () Bool)

(assert (= bs!1880192 (and d!2210425 b!7067928)))

(declare-fun lambda!424553 () Int)

(assert (=> bs!1880192 (not (= lambda!424553 lambda!424489))))

(declare-fun bs!1880193 () Bool)

(assert (= bs!1880193 (and d!2210425 d!2210195)))

(assert (=> bs!1880193 (not (= lambda!424553 lambda!424525))))

(declare-fun bs!1880194 () Bool)

(assert (= bs!1880194 (and d!2210425 d!2210199)))

(assert (=> bs!1880194 (not (= lambda!424553 lambda!424528))))

(declare-fun bs!1880195 () Bool)

(assert (= bs!1880195 (and d!2210425 d!2210411)))

(assert (=> bs!1880195 (= lambda!424553 lambda!424551)))

(assert (=> d!2210425 (= (nullableZipper!2688 lt!2542930) (exists!3662 lt!2542930 lambda!424553))))

(declare-fun bs!1880196 () Bool)

(assert (= bs!1880196 d!2210425))

(declare-fun m!7793062 () Bool)

(assert (=> bs!1880196 m!7793062))

(assert (=> b!7068200 d!2210425))

(declare-fun d!2210427 () Bool)

(declare-fun c!1318305 () Bool)

(assert (=> d!2210427 (= c!1318305 (isEmpty!39850 (tail!13800 (t!382189 s!7408))))))

(declare-fun e!4249571 () Bool)

(assert (=> d!2210427 (= (matchZipper!3167 (derivationStepZipper!3077 lt!2542931 (head!14394 (t!382189 s!7408))) (tail!13800 (t!382189 s!7408))) e!4249571)))

(declare-fun b!7068555 () Bool)

(assert (=> b!7068555 (= e!4249571 (nullableZipper!2688 (derivationStepZipper!3077 lt!2542931 (head!14394 (t!382189 s!7408)))))))

(declare-fun b!7068556 () Bool)

(assert (=> b!7068556 (= e!4249571 (matchZipper!3167 (derivationStepZipper!3077 (derivationStepZipper!3077 lt!2542931 (head!14394 (t!382189 s!7408))) (head!14394 (tail!13800 (t!382189 s!7408)))) (tail!13800 (tail!13800 (t!382189 s!7408)))))))

(assert (= (and d!2210427 c!1318305) b!7068555))

(assert (= (and d!2210427 (not c!1318305)) b!7068556))

(assert (=> d!2210427 m!7792502))

(assert (=> d!2210427 m!7793012))

(assert (=> b!7068555 m!7792500))

(declare-fun m!7793064 () Bool)

(assert (=> b!7068555 m!7793064))

(assert (=> b!7068556 m!7792502))

(assert (=> b!7068556 m!7793016))

(assert (=> b!7068556 m!7792500))

(assert (=> b!7068556 m!7793016))

(declare-fun m!7793066 () Bool)

(assert (=> b!7068556 m!7793066))

(assert (=> b!7068556 m!7792502))

(assert (=> b!7068556 m!7793020))

(assert (=> b!7068556 m!7793066))

(assert (=> b!7068556 m!7793020))

(declare-fun m!7793068 () Bool)

(assert (=> b!7068556 m!7793068))

(assert (=> b!7068090 d!2210427))

(declare-fun bs!1880197 () Bool)

(declare-fun d!2210429 () Bool)

(assert (= bs!1880197 (and d!2210429 b!7067929)))

(declare-fun lambda!424554 () Int)

(assert (=> bs!1880197 (= (= (head!14394 (t!382189 s!7408)) (h!74732 s!7408)) (= lambda!424554 lambda!424492))))

(declare-fun bs!1880198 () Bool)

(assert (= bs!1880198 (and d!2210429 d!2210173)))

(assert (=> bs!1880198 (= (= (head!14394 (t!382189 s!7408)) (h!74732 s!7408)) (= lambda!424554 lambda!424521))))

(declare-fun bs!1880199 () Bool)

(assert (= bs!1880199 (and d!2210429 d!2210401)))

(assert (=> bs!1880199 (= lambda!424554 lambda!424548)))

(assert (=> d!2210429 true))

(assert (=> d!2210429 (= (derivationStepZipper!3077 lt!2542931 (head!14394 (t!382189 s!7408))) (flatMap!2553 lt!2542931 lambda!424554))))

(declare-fun bs!1880200 () Bool)

(assert (= bs!1880200 d!2210429))

(declare-fun m!7793070 () Bool)

(assert (=> bs!1880200 m!7793070))

(assert (=> b!7068090 d!2210429))

(assert (=> b!7068090 d!2210403))

(assert (=> b!7068090 d!2210405))

(declare-fun d!2210431 () Bool)

(declare-fun c!1318306 () Bool)

(assert (=> d!2210431 (= c!1318306 (isEmpty!39850 (tail!13800 (t!382189 s!7408))))))

(declare-fun e!4249572 () Bool)

(assert (=> d!2210431 (= (matchZipper!3167 (derivationStepZipper!3077 lt!2542920 (head!14394 (t!382189 s!7408))) (tail!13800 (t!382189 s!7408))) e!4249572)))

(declare-fun b!7068557 () Bool)

(assert (=> b!7068557 (= e!4249572 (nullableZipper!2688 (derivationStepZipper!3077 lt!2542920 (head!14394 (t!382189 s!7408)))))))

(declare-fun b!7068558 () Bool)

(assert (=> b!7068558 (= e!4249572 (matchZipper!3167 (derivationStepZipper!3077 (derivationStepZipper!3077 lt!2542920 (head!14394 (t!382189 s!7408))) (head!14394 (tail!13800 (t!382189 s!7408)))) (tail!13800 (tail!13800 (t!382189 s!7408)))))))

(assert (= (and d!2210431 c!1318306) b!7068557))

(assert (= (and d!2210431 (not c!1318306)) b!7068558))

(assert (=> d!2210431 m!7792502))

(assert (=> d!2210431 m!7793012))

(assert (=> b!7068557 m!7792600))

(declare-fun m!7793072 () Bool)

(assert (=> b!7068557 m!7793072))

(assert (=> b!7068558 m!7792502))

(assert (=> b!7068558 m!7793016))

(assert (=> b!7068558 m!7792600))

(assert (=> b!7068558 m!7793016))

(declare-fun m!7793074 () Bool)

(assert (=> b!7068558 m!7793074))

(assert (=> b!7068558 m!7792502))

(assert (=> b!7068558 m!7793020))

(assert (=> b!7068558 m!7793074))

(assert (=> b!7068558 m!7793020))

(declare-fun m!7793076 () Bool)

(assert (=> b!7068558 m!7793076))

(assert (=> b!7068196 d!2210431))

(declare-fun bs!1880201 () Bool)

(declare-fun d!2210433 () Bool)

(assert (= bs!1880201 (and d!2210433 b!7067929)))

(declare-fun lambda!424555 () Int)

(assert (=> bs!1880201 (= (= (head!14394 (t!382189 s!7408)) (h!74732 s!7408)) (= lambda!424555 lambda!424492))))

(declare-fun bs!1880202 () Bool)

(assert (= bs!1880202 (and d!2210433 d!2210173)))

(assert (=> bs!1880202 (= (= (head!14394 (t!382189 s!7408)) (h!74732 s!7408)) (= lambda!424555 lambda!424521))))

(declare-fun bs!1880203 () Bool)

(assert (= bs!1880203 (and d!2210433 d!2210401)))

(assert (=> bs!1880203 (= lambda!424555 lambda!424548)))

(declare-fun bs!1880204 () Bool)

(assert (= bs!1880204 (and d!2210433 d!2210429)))

(assert (=> bs!1880204 (= lambda!424555 lambda!424554)))

(assert (=> d!2210433 true))

(assert (=> d!2210433 (= (derivationStepZipper!3077 lt!2542920 (head!14394 (t!382189 s!7408))) (flatMap!2553 lt!2542920 lambda!424555))))

(declare-fun bs!1880205 () Bool)

(assert (= bs!1880205 d!2210433))

(declare-fun m!7793078 () Bool)

(assert (=> bs!1880205 m!7793078))

(assert (=> b!7068196 d!2210433))

(assert (=> b!7068196 d!2210403))

(assert (=> b!7068196 d!2210405))

(declare-fun d!2210435 () Bool)

(declare-fun c!1318307 () Bool)

(assert (=> d!2210435 (= c!1318307 (isEmpty!39850 (tail!13800 s!7408)))))

(declare-fun e!4249573 () Bool)

(assert (=> d!2210435 (= (matchZipper!3167 (derivationStepZipper!3077 lt!2542916 (head!14394 s!7408)) (tail!13800 s!7408)) e!4249573)))

(declare-fun b!7068559 () Bool)

(assert (=> b!7068559 (= e!4249573 (nullableZipper!2688 (derivationStepZipper!3077 lt!2542916 (head!14394 s!7408))))))

(declare-fun b!7068560 () Bool)

(assert (=> b!7068560 (= e!4249573 (matchZipper!3167 (derivationStepZipper!3077 (derivationStepZipper!3077 lt!2542916 (head!14394 s!7408)) (head!14394 (tail!13800 s!7408))) (tail!13800 (tail!13800 s!7408))))))

(assert (= (and d!2210435 c!1318307) b!7068559))

(assert (= (and d!2210435 (not c!1318307)) b!7068560))

(assert (=> d!2210435 m!7792576))

(declare-fun m!7793080 () Bool)

(assert (=> d!2210435 m!7793080))

(assert (=> b!7068559 m!7792646))

(declare-fun m!7793082 () Bool)

(assert (=> b!7068559 m!7793082))

(assert (=> b!7068560 m!7792576))

(declare-fun m!7793084 () Bool)

(assert (=> b!7068560 m!7793084))

(assert (=> b!7068560 m!7792646))

(assert (=> b!7068560 m!7793084))

(declare-fun m!7793086 () Bool)

(assert (=> b!7068560 m!7793086))

(assert (=> b!7068560 m!7792576))

(declare-fun m!7793088 () Bool)

(assert (=> b!7068560 m!7793088))

(assert (=> b!7068560 m!7793086))

(assert (=> b!7068560 m!7793088))

(declare-fun m!7793090 () Bool)

(assert (=> b!7068560 m!7793090))

(assert (=> b!7068211 d!2210435))

(declare-fun bs!1880206 () Bool)

(declare-fun d!2210437 () Bool)

(assert (= bs!1880206 (and d!2210437 d!2210433)))

(declare-fun lambda!424556 () Int)

(assert (=> bs!1880206 (= (= (head!14394 s!7408) (head!14394 (t!382189 s!7408))) (= lambda!424556 lambda!424555))))

(declare-fun bs!1880207 () Bool)

(assert (= bs!1880207 (and d!2210437 d!2210173)))

(assert (=> bs!1880207 (= (= (head!14394 s!7408) (h!74732 s!7408)) (= lambda!424556 lambda!424521))))

(declare-fun bs!1880208 () Bool)

(assert (= bs!1880208 (and d!2210437 d!2210401)))

(assert (=> bs!1880208 (= (= (head!14394 s!7408) (head!14394 (t!382189 s!7408))) (= lambda!424556 lambda!424548))))

(declare-fun bs!1880209 () Bool)

(assert (= bs!1880209 (and d!2210437 b!7067929)))

(assert (=> bs!1880209 (= (= (head!14394 s!7408) (h!74732 s!7408)) (= lambda!424556 lambda!424492))))

(declare-fun bs!1880210 () Bool)

(assert (= bs!1880210 (and d!2210437 d!2210429)))

(assert (=> bs!1880210 (= (= (head!14394 s!7408) (head!14394 (t!382189 s!7408))) (= lambda!424556 lambda!424554))))

(assert (=> d!2210437 true))

(assert (=> d!2210437 (= (derivationStepZipper!3077 lt!2542916 (head!14394 s!7408)) (flatMap!2553 lt!2542916 lambda!424556))))

(declare-fun bs!1880211 () Bool)

(assert (= bs!1880211 d!2210437))

(declare-fun m!7793092 () Bool)

(assert (=> bs!1880211 m!7793092))

(assert (=> b!7068211 d!2210437))

(declare-fun d!2210439 () Bool)

(assert (=> d!2210439 (= (head!14394 s!7408) (h!74732 s!7408))))

(assert (=> b!7068211 d!2210439))

(declare-fun d!2210441 () Bool)

(assert (=> d!2210441 (= (tail!13800 s!7408) (t!382189 s!7408))))

(assert (=> b!7068211 d!2210441))

(declare-fun d!2210443 () Bool)

(assert (=> d!2210443 (= (isEmpty!39850 (t!382189 s!7408)) ((_ is Nil!68284) (t!382189 s!7408)))))

(assert (=> d!2210179 d!2210443))

(declare-fun d!2210445 () Bool)

(assert (=> d!2210445 (= (isEmpty!39850 s!7408) ((_ is Nil!68284) s!7408))))

(assert (=> d!2210197 d!2210445))

(declare-fun d!2210447 () Bool)

(assert (=> d!2210447 (forall!16575 (++!15744 (exprs!7123 lt!2542981) (exprs!7123 ct2!306)) lambda!424491)))

(declare-fun lt!2543031 () Unit!161962)

(assert (=> d!2210447 (= lt!2543031 (choose!54115 (exprs!7123 lt!2542981) (exprs!7123 ct2!306) lambda!424491))))

(assert (=> d!2210447 (forall!16575 (exprs!7123 lt!2542981) lambda!424491)))

(assert (=> d!2210447 (= (lemmaConcatPreservesForall!938 (exprs!7123 lt!2542981) (exprs!7123 ct2!306) lambda!424491) lt!2543031)))

(declare-fun bs!1880212 () Bool)

(assert (= bs!1880212 d!2210447))

(assert (=> bs!1880212 m!7792660))

(assert (=> bs!1880212 m!7792660))

(declare-fun m!7793094 () Bool)

(assert (=> bs!1880212 m!7793094))

(declare-fun m!7793096 () Bool)

(assert (=> bs!1880212 m!7793096))

(declare-fun m!7793098 () Bool)

(assert (=> bs!1880212 m!7793098))

(assert (=> bs!1880055 d!2210447))

(declare-fun b!7068563 () Bool)

(declare-fun res!2886516 () Bool)

(declare-fun e!4249574 () Bool)

(assert (=> b!7068563 (=> (not res!2886516) (not e!4249574))))

(declare-fun lt!2543032 () List!68407)

(assert (=> b!7068563 (= res!2886516 (= (size!41197 lt!2543032) (+ (size!41197 (exprs!7123 lt!2542981)) (size!41197 (exprs!7123 ct2!306)))))))

(declare-fun b!7068562 () Bool)

(declare-fun e!4249575 () List!68407)

(assert (=> b!7068562 (= e!4249575 (Cons!68283 (h!74731 (exprs!7123 lt!2542981)) (++!15744 (t!382188 (exprs!7123 lt!2542981)) (exprs!7123 ct2!306))))))

(declare-fun b!7068561 () Bool)

(assert (=> b!7068561 (= e!4249575 (exprs!7123 ct2!306))))

(declare-fun b!7068564 () Bool)

(assert (=> b!7068564 (= e!4249574 (or (not (= (exprs!7123 ct2!306) Nil!68283)) (= lt!2543032 (exprs!7123 lt!2542981))))))

(declare-fun d!2210449 () Bool)

(assert (=> d!2210449 e!4249574))

(declare-fun res!2886517 () Bool)

(assert (=> d!2210449 (=> (not res!2886517) (not e!4249574))))

(assert (=> d!2210449 (= res!2886517 (= (content!13763 lt!2543032) ((_ map or) (content!13763 (exprs!7123 lt!2542981)) (content!13763 (exprs!7123 ct2!306)))))))

(assert (=> d!2210449 (= lt!2543032 e!4249575)))

(declare-fun c!1318308 () Bool)

(assert (=> d!2210449 (= c!1318308 ((_ is Nil!68283) (exprs!7123 lt!2542981)))))

(assert (=> d!2210449 (= (++!15744 (exprs!7123 lt!2542981) (exprs!7123 ct2!306)) lt!2543032)))

(assert (= (and d!2210449 c!1318308) b!7068561))

(assert (= (and d!2210449 (not c!1318308)) b!7068562))

(assert (= (and d!2210449 res!2886517) b!7068563))

(assert (= (and b!7068563 res!2886516) b!7068564))

(declare-fun m!7793100 () Bool)

(assert (=> b!7068563 m!7793100))

(declare-fun m!7793102 () Bool)

(assert (=> b!7068563 m!7793102))

(assert (=> b!7068563 m!7792516))

(declare-fun m!7793104 () Bool)

(assert (=> b!7068562 m!7793104))

(declare-fun m!7793106 () Bool)

(assert (=> d!2210449 m!7793106))

(declare-fun m!7793108 () Bool)

(assert (=> d!2210449 m!7793108))

(assert (=> d!2210449 m!7792524))

(assert (=> bs!1880055 d!2210449))

(declare-fun b!7068567 () Bool)

(declare-fun res!2886518 () Bool)

(declare-fun e!4249576 () Bool)

(assert (=> b!7068567 (=> (not res!2886518) (not e!4249576))))

(declare-fun lt!2543033 () List!68407)

(assert (=> b!7068567 (= res!2886518 (= (size!41197 lt!2543033) (+ (size!41197 (t!382188 (exprs!7123 lt!2542928))) (size!41197 (exprs!7123 ct2!306)))))))

(declare-fun b!7068566 () Bool)

(declare-fun e!4249577 () List!68407)

(assert (=> b!7068566 (= e!4249577 (Cons!68283 (h!74731 (t!382188 (exprs!7123 lt!2542928))) (++!15744 (t!382188 (t!382188 (exprs!7123 lt!2542928))) (exprs!7123 ct2!306))))))

(declare-fun b!7068565 () Bool)

(assert (=> b!7068565 (= e!4249577 (exprs!7123 ct2!306))))

(declare-fun b!7068568 () Bool)

(assert (=> b!7068568 (= e!4249576 (or (not (= (exprs!7123 ct2!306) Nil!68283)) (= lt!2543033 (t!382188 (exprs!7123 lt!2542928)))))))

(declare-fun d!2210451 () Bool)

(assert (=> d!2210451 e!4249576))

(declare-fun res!2886519 () Bool)

(assert (=> d!2210451 (=> (not res!2886519) (not e!4249576))))

(assert (=> d!2210451 (= res!2886519 (= (content!13763 lt!2543033) ((_ map or) (content!13763 (t!382188 (exprs!7123 lt!2542928))) (content!13763 (exprs!7123 ct2!306)))))))

(assert (=> d!2210451 (= lt!2543033 e!4249577)))

(declare-fun c!1318309 () Bool)

(assert (=> d!2210451 (= c!1318309 ((_ is Nil!68283) (t!382188 (exprs!7123 lt!2542928))))))

(assert (=> d!2210451 (= (++!15744 (t!382188 (exprs!7123 lt!2542928)) (exprs!7123 ct2!306)) lt!2543033)))

(assert (= (and d!2210451 c!1318309) b!7068565))

(assert (= (and d!2210451 (not c!1318309)) b!7068566))

(assert (= (and d!2210451 res!2886519) b!7068567))

(assert (= (and b!7068567 res!2886518) b!7068568))

(declare-fun m!7793110 () Bool)

(assert (=> b!7068567 m!7793110))

(declare-fun m!7793112 () Bool)

(assert (=> b!7068567 m!7793112))

(assert (=> b!7068567 m!7792516))

(declare-fun m!7793114 () Bool)

(assert (=> b!7068566 m!7793114))

(declare-fun m!7793116 () Bool)

(assert (=> d!2210451 m!7793116))

(declare-fun m!7793118 () Bool)

(assert (=> d!2210451 m!7793118))

(assert (=> d!2210451 m!7792524))

(assert (=> b!7068127 d!2210451))

(assert (=> d!2210165 d!2210445))

(assert (=> b!7068199 d!2210149))

(assert (=> bs!1880056 d!2210171))

(declare-fun d!2210453 () Bool)

(declare-fun e!4249583 () Bool)

(assert (=> d!2210453 e!4249583))

(declare-fun res!2886522 () Bool)

(assert (=> d!2210453 (=> (not res!2886522) (not e!4249583))))

(declare-fun a!13593 () Context!13246)

(assert (=> d!2210453 (= res!2886522 (= lt!2542942 (dynLambda!27753 lambda!424490 a!13593)))))

(declare-fun e!4249582 () Bool)

(assert (=> d!2210453 (and (inv!86926 a!13593) e!4249582)))

(assert (=> d!2210453 (= (choose!54116 z1!570 lambda!424490 lt!2542942) a!13593)))

(declare-fun b!7068574 () Bool)

(declare-fun tp!1941890 () Bool)

(assert (=> b!7068574 (= e!4249582 tp!1941890)))

(declare-fun b!7068575 () Bool)

(assert (=> b!7068575 (= e!4249583 (select z1!570 a!13593))))

(assert (= d!2210453 b!7068574))

(assert (= (and d!2210453 res!2886522) b!7068575))

(declare-fun b_lambda!269809 () Bool)

(assert (=> (not b_lambda!269809) (not d!2210453)))

(declare-fun m!7793120 () Bool)

(assert (=> d!2210453 m!7793120))

(declare-fun m!7793122 () Bool)

(assert (=> d!2210453 m!7793122))

(declare-fun m!7793124 () Bool)

(assert (=> b!7068575 m!7793124))

(assert (=> d!2210157 d!2210453))

(declare-fun d!2210455 () Bool)

(declare-fun choose!54125 ((InoxSet Context!13246) Int) (InoxSet Context!13246))

(assert (=> d!2210455 (= (map!15970 z1!570 lambda!424490) (choose!54125 z1!570 lambda!424490))))

(declare-fun bs!1880213 () Bool)

(assert (= bs!1880213 d!2210455))

(declare-fun m!7793126 () Bool)

(assert (=> bs!1880213 m!7793126))

(assert (=> d!2210157 d!2210455))

(declare-fun b!7068576 () Bool)

(declare-fun e!4249589 () Bool)

(assert (=> b!7068576 (= e!4249589 (nullable!7310 (regOne!35766 (h!74731 (exprs!7123 lt!2542914)))))))

(declare-fun bm!642410 () Bool)

(declare-fun call!642415 () List!68407)

(declare-fun call!642416 () List!68407)

(assert (=> bm!642410 (= call!642415 call!642416)))

(declare-fun bm!642411 () Bool)

(declare-fun c!1318313 () Bool)

(declare-fun c!1318311 () Bool)

(assert (=> bm!642411 (= call!642416 ($colon$colon!2649 (exprs!7123 (Context!13247 (t!382188 (exprs!7123 lt!2542914)))) (ite (or c!1318311 c!1318313) (regTwo!35766 (h!74731 (exprs!7123 lt!2542914))) (h!74731 (exprs!7123 lt!2542914)))))))

(declare-fun b!7068577 () Bool)

(declare-fun e!4249585 () (InoxSet Context!13246))

(declare-fun call!642419 () (InoxSet Context!13246))

(declare-fun call!642418 () (InoxSet Context!13246))

(assert (=> b!7068577 (= e!4249585 ((_ map or) call!642419 call!642418))))

(declare-fun b!7068578 () Bool)

(declare-fun e!4249586 () (InoxSet Context!13246))

(declare-fun call!642420 () (InoxSet Context!13246))

(assert (=> b!7068578 (= e!4249586 call!642420)))

(declare-fun d!2210457 () Bool)

(declare-fun c!1318310 () Bool)

(assert (=> d!2210457 (= c!1318310 (and ((_ is ElementMatch!17627) (h!74731 (exprs!7123 lt!2542914))) (= (c!1318124 (h!74731 (exprs!7123 lt!2542914))) (h!74732 s!7408))))))

(declare-fun e!4249584 () (InoxSet Context!13246))

(assert (=> d!2210457 (= (derivationStepZipperDown!2261 (h!74731 (exprs!7123 lt!2542914)) (Context!13247 (t!382188 (exprs!7123 lt!2542914))) (h!74732 s!7408)) e!4249584)))

(declare-fun bm!642412 () Bool)

(declare-fun call!642417 () (InoxSet Context!13246))

(assert (=> bm!642412 (= call!642420 call!642417)))

(declare-fun b!7068579 () Bool)

(assert (=> b!7068579 (= c!1318311 e!4249589)))

(declare-fun res!2886523 () Bool)

(assert (=> b!7068579 (=> (not res!2886523) (not e!4249589))))

(assert (=> b!7068579 (= res!2886523 ((_ is Concat!26472) (h!74731 (exprs!7123 lt!2542914))))))

(declare-fun e!4249587 () (InoxSet Context!13246))

(assert (=> b!7068579 (= e!4249585 e!4249587)))

(declare-fun c!1318314 () Bool)

(declare-fun bm!642413 () Bool)

(assert (=> bm!642413 (= call!642418 (derivationStepZipperDown!2261 (ite c!1318314 (regTwo!35767 (h!74731 (exprs!7123 lt!2542914))) (ite c!1318311 (regTwo!35766 (h!74731 (exprs!7123 lt!2542914))) (ite c!1318313 (regOne!35766 (h!74731 (exprs!7123 lt!2542914))) (reg!17956 (h!74731 (exprs!7123 lt!2542914)))))) (ite (or c!1318314 c!1318311) (Context!13247 (t!382188 (exprs!7123 lt!2542914))) (Context!13247 call!642415)) (h!74732 s!7408)))))

(declare-fun bm!642414 () Bool)

(assert (=> bm!642414 (= call!642419 (derivationStepZipperDown!2261 (ite c!1318314 (regOne!35767 (h!74731 (exprs!7123 lt!2542914))) (regOne!35766 (h!74731 (exprs!7123 lt!2542914)))) (ite c!1318314 (Context!13247 (t!382188 (exprs!7123 lt!2542914))) (Context!13247 call!642416)) (h!74732 s!7408)))))

(declare-fun b!7068580 () Bool)

(declare-fun c!1318312 () Bool)

(assert (=> b!7068580 (= c!1318312 ((_ is Star!17627) (h!74731 (exprs!7123 lt!2542914))))))

(declare-fun e!4249588 () (InoxSet Context!13246))

(assert (=> b!7068580 (= e!4249586 e!4249588)))

(declare-fun b!7068581 () Bool)

(assert (=> b!7068581 (= e!4249588 ((as const (Array Context!13246 Bool)) false))))

(declare-fun b!7068582 () Bool)

(assert (=> b!7068582 (= e!4249588 call!642420)))

(declare-fun bm!642415 () Bool)

(assert (=> bm!642415 (= call!642417 call!642418)))

(declare-fun b!7068583 () Bool)

(assert (=> b!7068583 (= e!4249584 (store ((as const (Array Context!13246 Bool)) false) (Context!13247 (t!382188 (exprs!7123 lt!2542914))) true))))

(declare-fun b!7068584 () Bool)

(assert (=> b!7068584 (= e!4249587 ((_ map or) call!642419 call!642417))))

(declare-fun b!7068585 () Bool)

(assert (=> b!7068585 (= e!4249584 e!4249585)))

(assert (=> b!7068585 (= c!1318314 ((_ is Union!17627) (h!74731 (exprs!7123 lt!2542914))))))

(declare-fun b!7068586 () Bool)

(assert (=> b!7068586 (= e!4249587 e!4249586)))

(assert (=> b!7068586 (= c!1318313 ((_ is Concat!26472) (h!74731 (exprs!7123 lt!2542914))))))

(assert (= (and d!2210457 c!1318310) b!7068583))

(assert (= (and d!2210457 (not c!1318310)) b!7068585))

(assert (= (and b!7068585 c!1318314) b!7068577))

(assert (= (and b!7068585 (not c!1318314)) b!7068579))

(assert (= (and b!7068579 res!2886523) b!7068576))

(assert (= (and b!7068579 c!1318311) b!7068584))

(assert (= (and b!7068579 (not c!1318311)) b!7068586))

(assert (= (and b!7068586 c!1318313) b!7068578))

(assert (= (and b!7068586 (not c!1318313)) b!7068580))

(assert (= (and b!7068580 c!1318312) b!7068582))

(assert (= (and b!7068580 (not c!1318312)) b!7068581))

(assert (= (or b!7068578 b!7068582) bm!642410))

(assert (= (or b!7068578 b!7068582) bm!642412))

(assert (= (or b!7068584 bm!642412) bm!642415))

(assert (= (or b!7068584 bm!642410) bm!642411))

(assert (= (or b!7068577 b!7068584) bm!642414))

(assert (= (or b!7068577 bm!642415) bm!642413))

(declare-fun m!7793128 () Bool)

(assert (=> bm!642413 m!7793128))

(declare-fun m!7793130 () Bool)

(assert (=> bm!642414 m!7793130))

(declare-fun m!7793132 () Bool)

(assert (=> b!7068583 m!7793132))

(declare-fun m!7793134 () Bool)

(assert (=> b!7068576 m!7793134))

(declare-fun m!7793136 () Bool)

(assert (=> bm!642411 m!7793136))

(assert (=> bm!642359 d!2210457))

(declare-fun d!2210459 () Bool)

(declare-fun lt!2543036 () Int)

(assert (=> d!2210459 (>= lt!2543036 0)))

(declare-fun e!4249592 () Int)

(assert (=> d!2210459 (= lt!2543036 e!4249592)))

(declare-fun c!1318317 () Bool)

(assert (=> d!2210459 (= c!1318317 ((_ is Nil!68283) lt!2542982))))

(assert (=> d!2210459 (= (size!41197 lt!2542982) lt!2543036)))

(declare-fun b!7068591 () Bool)

(assert (=> b!7068591 (= e!4249592 0)))

(declare-fun b!7068592 () Bool)

(assert (=> b!7068592 (= e!4249592 (+ 1 (size!41197 (t!382188 lt!2542982))))))

(assert (= (and d!2210459 c!1318317) b!7068591))

(assert (= (and d!2210459 (not c!1318317)) b!7068592))

(declare-fun m!7793138 () Bool)

(assert (=> b!7068592 m!7793138))

(assert (=> b!7068136 d!2210459))

(declare-fun d!2210461 () Bool)

(declare-fun lt!2543037 () Int)

(assert (=> d!2210461 (>= lt!2543037 0)))

(declare-fun e!4249593 () Int)

(assert (=> d!2210461 (= lt!2543037 e!4249593)))

(declare-fun c!1318318 () Bool)

(assert (=> d!2210461 (= c!1318318 ((_ is Nil!68283) lt!2542935))))

(assert (=> d!2210461 (= (size!41197 lt!2542935) lt!2543037)))

(declare-fun b!7068593 () Bool)

(assert (=> b!7068593 (= e!4249593 0)))

(declare-fun b!7068594 () Bool)

(assert (=> b!7068594 (= e!4249593 (+ 1 (size!41197 (t!382188 lt!2542935))))))

(assert (= (and d!2210461 c!1318318) b!7068593))

(assert (= (and d!2210461 (not c!1318318)) b!7068594))

(declare-fun m!7793140 () Bool)

(assert (=> b!7068594 m!7793140))

(assert (=> b!7068136 d!2210461))

(declare-fun d!2210463 () Bool)

(declare-fun lt!2543038 () Int)

(assert (=> d!2210463 (>= lt!2543038 0)))

(declare-fun e!4249594 () Int)

(assert (=> d!2210463 (= lt!2543038 e!4249594)))

(declare-fun c!1318319 () Bool)

(assert (=> d!2210463 (= c!1318319 ((_ is Nil!68283) (exprs!7123 ct2!306)))))

(assert (=> d!2210463 (= (size!41197 (exprs!7123 ct2!306)) lt!2543038)))

(declare-fun b!7068595 () Bool)

(assert (=> b!7068595 (= e!4249594 0)))

(declare-fun b!7068596 () Bool)

(assert (=> b!7068596 (= e!4249594 (+ 1 (size!41197 (t!382188 (exprs!7123 ct2!306)))))))

(assert (= (and d!2210463 c!1318319) b!7068595))

(assert (= (and d!2210463 (not c!1318319)) b!7068596))

(declare-fun m!7793142 () Bool)

(assert (=> b!7068596 m!7793142))

(assert (=> b!7068136 d!2210463))

(declare-fun d!2210465 () Bool)

(declare-fun c!1318320 () Bool)

(assert (=> d!2210465 (= c!1318320 (isEmpty!39850 (tail!13800 s!7408)))))

(declare-fun e!4249595 () Bool)

(assert (=> d!2210465 (= (matchZipper!3167 (derivationStepZipper!3077 lt!2542932 (head!14394 s!7408)) (tail!13800 s!7408)) e!4249595)))

(declare-fun b!7068597 () Bool)

(assert (=> b!7068597 (= e!4249595 (nullableZipper!2688 (derivationStepZipper!3077 lt!2542932 (head!14394 s!7408))))))

(declare-fun b!7068598 () Bool)

(assert (=> b!7068598 (= e!4249595 (matchZipper!3167 (derivationStepZipper!3077 (derivationStepZipper!3077 lt!2542932 (head!14394 s!7408)) (head!14394 (tail!13800 s!7408))) (tail!13800 (tail!13800 s!7408))))))

(assert (= (and d!2210465 c!1318320) b!7068597))

(assert (= (and d!2210465 (not c!1318320)) b!7068598))

(assert (=> d!2210465 m!7792576))

(assert (=> d!2210465 m!7793080))

(assert (=> b!7068597 m!7792574))

(declare-fun m!7793144 () Bool)

(assert (=> b!7068597 m!7793144))

(assert (=> b!7068598 m!7792576))

(assert (=> b!7068598 m!7793084))

(assert (=> b!7068598 m!7792574))

(assert (=> b!7068598 m!7793084))

(declare-fun m!7793146 () Bool)

(assert (=> b!7068598 m!7793146))

(assert (=> b!7068598 m!7792576))

(assert (=> b!7068598 m!7793088))

(assert (=> b!7068598 m!7793146))

(assert (=> b!7068598 m!7793088))

(declare-fun m!7793148 () Bool)

(assert (=> b!7068598 m!7793148))

(assert (=> b!7068187 d!2210465))

(declare-fun bs!1880214 () Bool)

(declare-fun d!2210467 () Bool)

(assert (= bs!1880214 (and d!2210467 d!2210433)))

(declare-fun lambda!424557 () Int)

(assert (=> bs!1880214 (= (= (head!14394 s!7408) (head!14394 (t!382189 s!7408))) (= lambda!424557 lambda!424555))))

(declare-fun bs!1880215 () Bool)

(assert (= bs!1880215 (and d!2210467 d!2210173)))

(assert (=> bs!1880215 (= (= (head!14394 s!7408) (h!74732 s!7408)) (= lambda!424557 lambda!424521))))

(declare-fun bs!1880216 () Bool)

(assert (= bs!1880216 (and d!2210467 b!7067929)))

(assert (=> bs!1880216 (= (= (head!14394 s!7408) (h!74732 s!7408)) (= lambda!424557 lambda!424492))))

(declare-fun bs!1880217 () Bool)

(assert (= bs!1880217 (and d!2210467 d!2210429)))

(assert (=> bs!1880217 (= (= (head!14394 s!7408) (head!14394 (t!382189 s!7408))) (= lambda!424557 lambda!424554))))

(declare-fun bs!1880218 () Bool)

(assert (= bs!1880218 (and d!2210467 d!2210401)))

(assert (=> bs!1880218 (= (= (head!14394 s!7408) (head!14394 (t!382189 s!7408))) (= lambda!424557 lambda!424548))))

(declare-fun bs!1880219 () Bool)

(assert (= bs!1880219 (and d!2210467 d!2210437)))

(assert (=> bs!1880219 (= lambda!424557 lambda!424556)))

(assert (=> d!2210467 true))

(assert (=> d!2210467 (= (derivationStepZipper!3077 lt!2542932 (head!14394 s!7408)) (flatMap!2553 lt!2542932 lambda!424557))))

(declare-fun bs!1880220 () Bool)

(assert (= bs!1880220 d!2210467))

(declare-fun m!7793150 () Bool)

(assert (=> bs!1880220 m!7793150))

(assert (=> b!7068187 d!2210467))

(assert (=> b!7068187 d!2210439))

(assert (=> b!7068187 d!2210441))

(declare-fun bs!1880221 () Bool)

(declare-fun d!2210469 () Bool)

(assert (= bs!1880221 (and d!2210469 d!2210199)))

(declare-fun lambda!424558 () Int)

(assert (=> bs!1880221 (not (= lambda!424558 lambda!424528))))

(declare-fun bs!1880222 () Bool)

(assert (= bs!1880222 (and d!2210469 d!2210195)))

(assert (=> bs!1880222 (not (= lambda!424558 lambda!424525))))

(declare-fun bs!1880223 () Bool)

(assert (= bs!1880223 (and d!2210469 d!2210425)))

(assert (=> bs!1880223 (= lambda!424558 lambda!424553)))

(declare-fun bs!1880224 () Bool)

(assert (= bs!1880224 (and d!2210469 d!2210411)))

(assert (=> bs!1880224 (= lambda!424558 lambda!424551)))

(declare-fun bs!1880225 () Bool)

(assert (= bs!1880225 (and d!2210469 b!7067928)))

(assert (=> bs!1880225 (not (= lambda!424558 lambda!424489))))

(assert (=> d!2210469 (= (nullableZipper!2688 lt!2542915) (exists!3662 lt!2542915 lambda!424558))))

(declare-fun bs!1880226 () Bool)

(assert (= bs!1880226 d!2210469))

(declare-fun m!7793152 () Bool)

(assert (=> bs!1880226 m!7793152))

(assert (=> b!7068202 d!2210469))

(assert (=> d!2210149 d!2210443))

(declare-fun d!2210471 () Bool)

(declare-fun c!1318322 () Bool)

(declare-fun e!4249597 () Bool)

(assert (=> d!2210471 (= c!1318322 e!4249597)))

(declare-fun res!2886524 () Bool)

(assert (=> d!2210471 (=> (not res!2886524) (not e!4249597))))

(assert (=> d!2210471 (= res!2886524 ((_ is Cons!68283) (exprs!7123 (Context!13247 (t!382188 (exprs!7123 lt!2542914))))))))

(declare-fun e!4249598 () (InoxSet Context!13246))

(assert (=> d!2210471 (= (derivationStepZipperUp!2211 (Context!13247 (t!382188 (exprs!7123 lt!2542914))) (h!74732 s!7408)) e!4249598)))

(declare-fun b!7068599 () Bool)

(declare-fun e!4249596 () (InoxSet Context!13246))

(assert (=> b!7068599 (= e!4249596 ((as const (Array Context!13246 Bool)) false))))

(declare-fun b!7068600 () Bool)

(assert (=> b!7068600 (= e!4249597 (nullable!7310 (h!74731 (exprs!7123 (Context!13247 (t!382188 (exprs!7123 lt!2542914)))))))))

(declare-fun bm!642416 () Bool)

(declare-fun call!642421 () (InoxSet Context!13246))

(assert (=> bm!642416 (= call!642421 (derivationStepZipperDown!2261 (h!74731 (exprs!7123 (Context!13247 (t!382188 (exprs!7123 lt!2542914))))) (Context!13247 (t!382188 (exprs!7123 (Context!13247 (t!382188 (exprs!7123 lt!2542914)))))) (h!74732 s!7408)))))

(declare-fun b!7068601 () Bool)

(assert (=> b!7068601 (= e!4249596 call!642421)))

(declare-fun b!7068602 () Bool)

(assert (=> b!7068602 (= e!4249598 ((_ map or) call!642421 (derivationStepZipperUp!2211 (Context!13247 (t!382188 (exprs!7123 (Context!13247 (t!382188 (exprs!7123 lt!2542914)))))) (h!74732 s!7408))))))

(declare-fun b!7068603 () Bool)

(assert (=> b!7068603 (= e!4249598 e!4249596)))

(declare-fun c!1318321 () Bool)

(assert (=> b!7068603 (= c!1318321 ((_ is Cons!68283) (exprs!7123 (Context!13247 (t!382188 (exprs!7123 lt!2542914))))))))

(assert (= (and d!2210471 res!2886524) b!7068600))

(assert (= (and d!2210471 c!1318322) b!7068602))

(assert (= (and d!2210471 (not c!1318322)) b!7068603))

(assert (= (and b!7068603 c!1318321) b!7068601))

(assert (= (and b!7068603 (not c!1318321)) b!7068599))

(assert (= (or b!7068602 b!7068601) bm!642416))

(declare-fun m!7793154 () Bool)

(assert (=> b!7068600 m!7793154))

(declare-fun m!7793156 () Bool)

(assert (=> bm!642416 m!7793156))

(declare-fun m!7793158 () Bool)

(assert (=> b!7068602 m!7793158))

(assert (=> b!7068191 d!2210471))

(declare-fun call!642424 () Bool)

(declare-fun bm!642417 () Bool)

(declare-fun c!1318324 () Bool)

(declare-fun c!1318323 () Bool)

(assert (=> bm!642417 (= call!642424 (validRegex!8963 (ite c!1318323 (reg!17956 (ite c!1318178 (reg!17956 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318179 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (regTwo!35766 (h!74731 (exprs!7123 lt!2542928)))))) (ite c!1318324 (regTwo!35767 (ite c!1318178 (reg!17956 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318179 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (regTwo!35766 (h!74731 (exprs!7123 lt!2542928)))))) (regTwo!35766 (ite c!1318178 (reg!17956 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318179 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))))))))))))

(declare-fun b!7068604 () Bool)

(declare-fun e!4249604 () Bool)

(declare-fun e!4249603 () Bool)

(assert (=> b!7068604 (= e!4249604 e!4249603)))

(assert (=> b!7068604 (= c!1318324 ((_ is Union!17627) (ite c!1318178 (reg!17956 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318179 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (regTwo!35766 (h!74731 (exprs!7123 lt!2542928)))))))))

(declare-fun b!7068605 () Bool)

(declare-fun e!4249602 () Bool)

(declare-fun e!4249601 () Bool)

(assert (=> b!7068605 (= e!4249602 e!4249601)))

(declare-fun res!2886527 () Bool)

(assert (=> b!7068605 (=> (not res!2886527) (not e!4249601))))

(declare-fun call!642422 () Bool)

(assert (=> b!7068605 (= res!2886527 call!642422)))

(declare-fun b!7068606 () Bool)

(declare-fun res!2886529 () Bool)

(assert (=> b!7068606 (=> res!2886529 e!4249602)))

(assert (=> b!7068606 (= res!2886529 (not ((_ is Concat!26472) (ite c!1318178 (reg!17956 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318179 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))))))))))

(assert (=> b!7068606 (= e!4249603 e!4249602)))

(declare-fun d!2210473 () Bool)

(declare-fun res!2886525 () Bool)

(declare-fun e!4249600 () Bool)

(assert (=> d!2210473 (=> res!2886525 e!4249600)))

(assert (=> d!2210473 (= res!2886525 ((_ is ElementMatch!17627) (ite c!1318178 (reg!17956 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318179 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (regTwo!35766 (h!74731 (exprs!7123 lt!2542928)))))))))

(assert (=> d!2210473 (= (validRegex!8963 (ite c!1318178 (reg!17956 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318179 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (regTwo!35766 (h!74731 (exprs!7123 lt!2542928)))))) e!4249600)))

(declare-fun b!7068607 () Bool)

(declare-fun e!4249599 () Bool)

(assert (=> b!7068607 (= e!4249604 e!4249599)))

(declare-fun res!2886528 () Bool)

(assert (=> b!7068607 (= res!2886528 (not (nullable!7310 (reg!17956 (ite c!1318178 (reg!17956 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318179 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (regTwo!35766 (h!74731 (exprs!7123 lt!2542928)))))))))))

(assert (=> b!7068607 (=> (not res!2886528) (not e!4249599))))

(declare-fun b!7068608 () Bool)

(declare-fun call!642423 () Bool)

(assert (=> b!7068608 (= e!4249601 call!642423)))

(declare-fun bm!642418 () Bool)

(assert (=> bm!642418 (= call!642422 (validRegex!8963 (ite c!1318324 (regOne!35767 (ite c!1318178 (reg!17956 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318179 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (regTwo!35766 (h!74731 (exprs!7123 lt!2542928)))))) (regOne!35766 (ite c!1318178 (reg!17956 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318179 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (regTwo!35766 (h!74731 (exprs!7123 lt!2542928)))))))))))

(declare-fun b!7068609 () Bool)

(declare-fun res!2886526 () Bool)

(declare-fun e!4249605 () Bool)

(assert (=> b!7068609 (=> (not res!2886526) (not e!4249605))))

(assert (=> b!7068609 (= res!2886526 call!642422)))

(assert (=> b!7068609 (= e!4249603 e!4249605)))

(declare-fun b!7068610 () Bool)

(assert (=> b!7068610 (= e!4249600 e!4249604)))

(assert (=> b!7068610 (= c!1318323 ((_ is Star!17627) (ite c!1318178 (reg!17956 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318179 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (regTwo!35766 (h!74731 (exprs!7123 lt!2542928)))))))))

(declare-fun b!7068611 () Bool)

(assert (=> b!7068611 (= e!4249599 call!642424)))

(declare-fun bm!642419 () Bool)

(assert (=> bm!642419 (= call!642423 call!642424)))

(declare-fun b!7068612 () Bool)

(assert (=> b!7068612 (= e!4249605 call!642423)))

(assert (= (and d!2210473 (not res!2886525)) b!7068610))

(assert (= (and b!7068610 c!1318323) b!7068607))

(assert (= (and b!7068610 (not c!1318323)) b!7068604))

(assert (= (and b!7068607 res!2886528) b!7068611))

(assert (= (and b!7068604 c!1318324) b!7068609))

(assert (= (and b!7068604 (not c!1318324)) b!7068606))

(assert (= (and b!7068609 res!2886526) b!7068612))

(assert (= (and b!7068606 (not res!2886529)) b!7068605))

(assert (= (and b!7068605 res!2886527) b!7068608))

(assert (= (or b!7068612 b!7068608) bm!642419))

(assert (= (or b!7068609 b!7068605) bm!642418))

(assert (= (or b!7068611 bm!642419) bm!642417))

(declare-fun m!7793160 () Bool)

(assert (=> bm!642417 m!7793160))

(declare-fun m!7793162 () Bool)

(assert (=> b!7068607 m!7793162))

(declare-fun m!7793164 () Bool)

(assert (=> bm!642418 m!7793164))

(assert (=> bm!642335 d!2210473))

(declare-fun d!2210475 () Bool)

(declare-fun c!1318325 () Bool)

(assert (=> d!2210475 (= c!1318325 (isEmpty!39850 s!7408))))

(declare-fun e!4249606 () Bool)

(assert (=> d!2210475 (= (matchZipper!3167 (store ((as const (Array Context!13246 Bool)) false) lt!2542996 true) s!7408) e!4249606)))

(declare-fun b!7068613 () Bool)

(assert (=> b!7068613 (= e!4249606 (nullableZipper!2688 (store ((as const (Array Context!13246 Bool)) false) lt!2542996 true)))))

(declare-fun b!7068614 () Bool)

(assert (=> b!7068614 (= e!4249606 (matchZipper!3167 (derivationStepZipper!3077 (store ((as const (Array Context!13246 Bool)) false) lt!2542996 true) (head!14394 s!7408)) (tail!13800 s!7408)))))

(assert (= (and d!2210475 c!1318325) b!7068613))

(assert (= (and d!2210475 (not c!1318325)) b!7068614))

(assert (=> d!2210475 m!7792568))

(assert (=> b!7068613 m!7792654))

(declare-fun m!7793166 () Bool)

(assert (=> b!7068613 m!7793166))

(assert (=> b!7068614 m!7792572))

(assert (=> b!7068614 m!7792654))

(assert (=> b!7068614 m!7792572))

(declare-fun m!7793168 () Bool)

(assert (=> b!7068614 m!7793168))

(assert (=> b!7068614 m!7792576))

(assert (=> b!7068614 m!7793168))

(assert (=> b!7068614 m!7792576))

(declare-fun m!7793170 () Bool)

(assert (=> b!7068614 m!7793170))

(assert (=> bs!1880054 d!2210475))

(assert (=> d!2210183 d!2210443))

(declare-fun b!7068615 () Bool)

(declare-fun e!4249612 () Bool)

(assert (=> b!7068615 (= e!4249612 (nullable!7310 (regOne!35766 (ite c!1318198 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318195 (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318197 (regOne!35766 (h!74731 (exprs!7123 lt!2542928))) (reg!17956 (h!74731 (exprs!7123 lt!2542928)))))))))))

(declare-fun bm!642420 () Bool)

(declare-fun call!642425 () List!68407)

(declare-fun call!642426 () List!68407)

(assert (=> bm!642420 (= call!642425 call!642426)))

(declare-fun c!1318327 () Bool)

(declare-fun c!1318329 () Bool)

(declare-fun bm!642421 () Bool)

(assert (=> bm!642421 (= call!642426 ($colon$colon!2649 (exprs!7123 (ite (or c!1318198 c!1318195) lt!2542923 (Context!13247 call!642355))) (ite (or c!1318327 c!1318329) (regTwo!35766 (ite c!1318198 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318195 (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318197 (regOne!35766 (h!74731 (exprs!7123 lt!2542928))) (reg!17956 (h!74731 (exprs!7123 lt!2542928))))))) (ite c!1318198 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318195 (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318197 (regOne!35766 (h!74731 (exprs!7123 lt!2542928))) (reg!17956 (h!74731 (exprs!7123 lt!2542928)))))))))))

(declare-fun b!7068616 () Bool)

(declare-fun e!4249608 () (InoxSet Context!13246))

(declare-fun call!642429 () (InoxSet Context!13246))

(declare-fun call!642428 () (InoxSet Context!13246))

(assert (=> b!7068616 (= e!4249608 ((_ map or) call!642429 call!642428))))

(declare-fun b!7068617 () Bool)

(declare-fun e!4249609 () (InoxSet Context!13246))

(declare-fun call!642430 () (InoxSet Context!13246))

(assert (=> b!7068617 (= e!4249609 call!642430)))

(declare-fun d!2210477 () Bool)

(declare-fun c!1318326 () Bool)

(assert (=> d!2210477 (= c!1318326 (and ((_ is ElementMatch!17627) (ite c!1318198 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318195 (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318197 (regOne!35766 (h!74731 (exprs!7123 lt!2542928))) (reg!17956 (h!74731 (exprs!7123 lt!2542928))))))) (= (c!1318124 (ite c!1318198 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318195 (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318197 (regOne!35766 (h!74731 (exprs!7123 lt!2542928))) (reg!17956 (h!74731 (exprs!7123 lt!2542928))))))) (h!74732 s!7408))))))

(declare-fun e!4249607 () (InoxSet Context!13246))

(assert (=> d!2210477 (= (derivationStepZipperDown!2261 (ite c!1318198 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318195 (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318197 (regOne!35766 (h!74731 (exprs!7123 lt!2542928))) (reg!17956 (h!74731 (exprs!7123 lt!2542928)))))) (ite (or c!1318198 c!1318195) lt!2542923 (Context!13247 call!642355)) (h!74732 s!7408)) e!4249607)))

(declare-fun bm!642422 () Bool)

(declare-fun call!642427 () (InoxSet Context!13246))

(assert (=> bm!642422 (= call!642430 call!642427)))

(declare-fun b!7068618 () Bool)

(assert (=> b!7068618 (= c!1318327 e!4249612)))

(declare-fun res!2886530 () Bool)

(assert (=> b!7068618 (=> (not res!2886530) (not e!4249612))))

(assert (=> b!7068618 (= res!2886530 ((_ is Concat!26472) (ite c!1318198 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318195 (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318197 (regOne!35766 (h!74731 (exprs!7123 lt!2542928))) (reg!17956 (h!74731 (exprs!7123 lt!2542928))))))))))

(declare-fun e!4249610 () (InoxSet Context!13246))

(assert (=> b!7068618 (= e!4249608 e!4249610)))

(declare-fun c!1318330 () Bool)

(declare-fun bm!642423 () Bool)

(assert (=> bm!642423 (= call!642428 (derivationStepZipperDown!2261 (ite c!1318330 (regTwo!35767 (ite c!1318198 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318195 (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318197 (regOne!35766 (h!74731 (exprs!7123 lt!2542928))) (reg!17956 (h!74731 (exprs!7123 lt!2542928))))))) (ite c!1318327 (regTwo!35766 (ite c!1318198 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318195 (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318197 (regOne!35766 (h!74731 (exprs!7123 lt!2542928))) (reg!17956 (h!74731 (exprs!7123 lt!2542928))))))) (ite c!1318329 (regOne!35766 (ite c!1318198 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318195 (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318197 (regOne!35766 (h!74731 (exprs!7123 lt!2542928))) (reg!17956 (h!74731 (exprs!7123 lt!2542928))))))) (reg!17956 (ite c!1318198 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318195 (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318197 (regOne!35766 (h!74731 (exprs!7123 lt!2542928))) (reg!17956 (h!74731 (exprs!7123 lt!2542928)))))))))) (ite (or c!1318330 c!1318327) (ite (or c!1318198 c!1318195) lt!2542923 (Context!13247 call!642355)) (Context!13247 call!642425)) (h!74732 s!7408)))))

(declare-fun bm!642424 () Bool)

(assert (=> bm!642424 (= call!642429 (derivationStepZipperDown!2261 (ite c!1318330 (regOne!35767 (ite c!1318198 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318195 (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318197 (regOne!35766 (h!74731 (exprs!7123 lt!2542928))) (reg!17956 (h!74731 (exprs!7123 lt!2542928))))))) (regOne!35766 (ite c!1318198 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318195 (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318197 (regOne!35766 (h!74731 (exprs!7123 lt!2542928))) (reg!17956 (h!74731 (exprs!7123 lt!2542928)))))))) (ite c!1318330 (ite (or c!1318198 c!1318195) lt!2542923 (Context!13247 call!642355)) (Context!13247 call!642426)) (h!74732 s!7408)))))

(declare-fun b!7068619 () Bool)

(declare-fun c!1318328 () Bool)

(assert (=> b!7068619 (= c!1318328 ((_ is Star!17627) (ite c!1318198 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318195 (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318197 (regOne!35766 (h!74731 (exprs!7123 lt!2542928))) (reg!17956 (h!74731 (exprs!7123 lt!2542928))))))))))

(declare-fun e!4249611 () (InoxSet Context!13246))

(assert (=> b!7068619 (= e!4249609 e!4249611)))

(declare-fun b!7068620 () Bool)

(assert (=> b!7068620 (= e!4249611 ((as const (Array Context!13246 Bool)) false))))

(declare-fun b!7068621 () Bool)

(assert (=> b!7068621 (= e!4249611 call!642430)))

(declare-fun bm!642425 () Bool)

(assert (=> bm!642425 (= call!642427 call!642428)))

(declare-fun b!7068622 () Bool)

(assert (=> b!7068622 (= e!4249607 (store ((as const (Array Context!13246 Bool)) false) (ite (or c!1318198 c!1318195) lt!2542923 (Context!13247 call!642355)) true))))

(declare-fun b!7068623 () Bool)

(assert (=> b!7068623 (= e!4249610 ((_ map or) call!642429 call!642427))))

(declare-fun b!7068624 () Bool)

(assert (=> b!7068624 (= e!4249607 e!4249608)))

(assert (=> b!7068624 (= c!1318330 ((_ is Union!17627) (ite c!1318198 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318195 (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318197 (regOne!35766 (h!74731 (exprs!7123 lt!2542928))) (reg!17956 (h!74731 (exprs!7123 lt!2542928))))))))))

(declare-fun b!7068625 () Bool)

(assert (=> b!7068625 (= e!4249610 e!4249609)))

(assert (=> b!7068625 (= c!1318329 ((_ is Concat!26472) (ite c!1318198 (regTwo!35767 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318195 (regTwo!35766 (h!74731 (exprs!7123 lt!2542928))) (ite c!1318197 (regOne!35766 (h!74731 (exprs!7123 lt!2542928))) (reg!17956 (h!74731 (exprs!7123 lt!2542928))))))))))

(assert (= (and d!2210477 c!1318326) b!7068622))

(assert (= (and d!2210477 (not c!1318326)) b!7068624))

(assert (= (and b!7068624 c!1318330) b!7068616))

(assert (= (and b!7068624 (not c!1318330)) b!7068618))

(assert (= (and b!7068618 res!2886530) b!7068615))

(assert (= (and b!7068618 c!1318327) b!7068623))

(assert (= (and b!7068618 (not c!1318327)) b!7068625))

(assert (= (and b!7068625 c!1318329) b!7068617))

(assert (= (and b!7068625 (not c!1318329)) b!7068619))

(assert (= (and b!7068619 c!1318328) b!7068621))

(assert (= (and b!7068619 (not c!1318328)) b!7068620))

(assert (= (or b!7068617 b!7068621) bm!642420))

(assert (= (or b!7068617 b!7068621) bm!642422))

(assert (= (or b!7068623 bm!642422) bm!642425))

(assert (= (or b!7068623 bm!642420) bm!642421))

(assert (= (or b!7068616 b!7068623) bm!642424))

(assert (= (or b!7068616 bm!642425) bm!642423))

(declare-fun m!7793172 () Bool)

(assert (=> bm!642423 m!7793172))

(declare-fun m!7793174 () Bool)

(assert (=> bm!642424 m!7793174))

(declare-fun m!7793176 () Bool)

(assert (=> b!7068622 m!7793176))

(declare-fun m!7793178 () Bool)

(assert (=> b!7068615 m!7793178))

(declare-fun m!7793180 () Bool)

(assert (=> bm!642421 m!7793180))

(assert (=> bm!642353 d!2210477))

(declare-fun d!2210479 () Bool)

(declare-fun c!1318332 () Bool)

(declare-fun e!4249614 () Bool)

(assert (=> d!2210479 (= c!1318332 e!4249614)))

(declare-fun res!2886531 () Bool)

(assert (=> d!2210479 (=> (not res!2886531) (not e!4249614))))

(assert (=> d!2210479 (= res!2886531 ((_ is Cons!68283) (exprs!7123 (Context!13247 (t!382188 (exprs!7123 lt!2542923))))))))

(declare-fun e!4249615 () (InoxSet Context!13246))

(assert (=> d!2210479 (= (derivationStepZipperUp!2211 (Context!13247 (t!382188 (exprs!7123 lt!2542923))) (h!74732 s!7408)) e!4249615)))

(declare-fun b!7068626 () Bool)

(declare-fun e!4249613 () (InoxSet Context!13246))

(assert (=> b!7068626 (= e!4249613 ((as const (Array Context!13246 Bool)) false))))

(declare-fun b!7068627 () Bool)

(assert (=> b!7068627 (= e!4249614 (nullable!7310 (h!74731 (exprs!7123 (Context!13247 (t!382188 (exprs!7123 lt!2542923)))))))))

(declare-fun bm!642426 () Bool)

(declare-fun call!642431 () (InoxSet Context!13246))

(assert (=> bm!642426 (= call!642431 (derivationStepZipperDown!2261 (h!74731 (exprs!7123 (Context!13247 (t!382188 (exprs!7123 lt!2542923))))) (Context!13247 (t!382188 (exprs!7123 (Context!13247 (t!382188 (exprs!7123 lt!2542923)))))) (h!74732 s!7408)))))

(declare-fun b!7068628 () Bool)

(assert (=> b!7068628 (= e!4249613 call!642431)))

(declare-fun b!7068629 () Bool)

(assert (=> b!7068629 (= e!4249615 ((_ map or) call!642431 (derivationStepZipperUp!2211 (Context!13247 (t!382188 (exprs!7123 (Context!13247 (t!382188 (exprs!7123 lt!2542923)))))) (h!74732 s!7408))))))

(declare-fun b!7068630 () Bool)

(assert (=> b!7068630 (= e!4249615 e!4249613)))

(declare-fun c!1318331 () Bool)

(assert (=> b!7068630 (= c!1318331 ((_ is Cons!68283) (exprs!7123 (Context!13247 (t!382188 (exprs!7123 lt!2542923))))))))

(assert (= (and d!2210479 res!2886531) b!7068627))

(assert (= (and d!2210479 c!1318332) b!7068629))

(assert (= (and d!2210479 (not c!1318332)) b!7068630))

(assert (= (and b!7068630 c!1318331) b!7068628))

(assert (= (and b!7068630 (not c!1318331)) b!7068626))

(assert (= (or b!7068629 b!7068628) bm!642426))

(declare-fun m!7793182 () Bool)

(assert (=> b!7068627 m!7793182))

(declare-fun m!7793184 () Bool)

(assert (=> bm!642426 m!7793184))

(declare-fun m!7793186 () Bool)

(assert (=> b!7068629 m!7793186))

(assert (=> b!7068184 d!2210479))

(declare-fun d!2210481 () Bool)

(declare-fun c!1318335 () Bool)

(assert (=> d!2210481 (= c!1318335 ((_ is Nil!68283) lt!2542977))))

(declare-fun e!4249618 () (InoxSet Regex!17627))

(assert (=> d!2210481 (= (content!13763 lt!2542977) e!4249618)))

(declare-fun b!7068635 () Bool)

(assert (=> b!7068635 (= e!4249618 ((as const (Array Regex!17627 Bool)) false))))

(declare-fun b!7068636 () Bool)

(assert (=> b!7068636 (= e!4249618 ((_ map or) (store ((as const (Array Regex!17627 Bool)) false) (h!74731 lt!2542977) true) (content!13763 (t!382188 lt!2542977))))))

(assert (= (and d!2210481 c!1318335) b!7068635))

(assert (= (and d!2210481 (not c!1318335)) b!7068636))

(declare-fun m!7793188 () Bool)

(assert (=> b!7068636 m!7793188))

(declare-fun m!7793190 () Bool)

(assert (=> b!7068636 m!7793190))

(assert (=> d!2210153 d!2210481))

(declare-fun d!2210483 () Bool)

(declare-fun c!1318336 () Bool)

(assert (=> d!2210483 (= c!1318336 ((_ is Nil!68283) (exprs!7123 lt!2542928)))))

(declare-fun e!4249619 () (InoxSet Regex!17627))

(assert (=> d!2210483 (= (content!13763 (exprs!7123 lt!2542928)) e!4249619)))

(declare-fun b!7068637 () Bool)

(assert (=> b!7068637 (= e!4249619 ((as const (Array Regex!17627 Bool)) false))))

(declare-fun b!7068638 () Bool)

(assert (=> b!7068638 (= e!4249619 ((_ map or) (store ((as const (Array Regex!17627 Bool)) false) (h!74731 (exprs!7123 lt!2542928)) true) (content!13763 (t!382188 (exprs!7123 lt!2542928)))))))

(assert (= (and d!2210483 c!1318336) b!7068637))

(assert (= (and d!2210483 (not c!1318336)) b!7068638))

(declare-fun m!7793192 () Bool)

(assert (=> b!7068638 m!7793192))

(assert (=> b!7068638 m!7793118))

(assert (=> d!2210153 d!2210483))

(declare-fun d!2210485 () Bool)

(declare-fun c!1318337 () Bool)

(assert (=> d!2210485 (= c!1318337 ((_ is Nil!68283) (exprs!7123 ct2!306)))))

(declare-fun e!4249620 () (InoxSet Regex!17627))

(assert (=> d!2210485 (= (content!13763 (exprs!7123 ct2!306)) e!4249620)))

(declare-fun b!7068639 () Bool)

(assert (=> b!7068639 (= e!4249620 ((as const (Array Regex!17627 Bool)) false))))

(declare-fun b!7068640 () Bool)

(assert (=> b!7068640 (= e!4249620 ((_ map or) (store ((as const (Array Regex!17627 Bool)) false) (h!74731 (exprs!7123 ct2!306)) true) (content!13763 (t!382188 (exprs!7123 ct2!306)))))))

(assert (= (and d!2210485 c!1318337) b!7068639))

(assert (= (and d!2210485 (not c!1318337)) b!7068640))

(declare-fun m!7793194 () Bool)

(assert (=> b!7068640 m!7793194))

(declare-fun m!7793196 () Bool)

(assert (=> b!7068640 m!7793196))

(assert (=> d!2210153 d!2210485))

(declare-fun d!2210487 () Bool)

(declare-fun c!1318338 () Bool)

(assert (=> d!2210487 (= c!1318338 (isEmpty!39850 (t!382189 s!7408)))))

(declare-fun e!4249621 () Bool)

(assert (=> d!2210487 (= (matchZipper!3167 ((_ map or) lt!2542915 lt!2542931) (t!382189 s!7408)) e!4249621)))

(declare-fun b!7068641 () Bool)

(assert (=> b!7068641 (= e!4249621 (nullableZipper!2688 ((_ map or) lt!2542915 lt!2542931)))))

(declare-fun b!7068642 () Bool)

(assert (=> b!7068642 (= e!4249621 (matchZipper!3167 (derivationStepZipper!3077 ((_ map or) lt!2542915 lt!2542931) (head!14394 (t!382189 s!7408))) (tail!13800 (t!382189 s!7408))))))

(assert (= (and d!2210487 c!1318338) b!7068641))

(assert (= (and d!2210487 (not c!1318338)) b!7068642))

(assert (=> d!2210487 m!7792494))

(declare-fun m!7793198 () Bool)

(assert (=> b!7068641 m!7793198))

(assert (=> b!7068642 m!7792498))

(assert (=> b!7068642 m!7792498))

(declare-fun m!7793200 () Bool)

(assert (=> b!7068642 m!7793200))

(assert (=> b!7068642 m!7792502))

(assert (=> b!7068642 m!7793200))

(assert (=> b!7068642 m!7792502))

(declare-fun m!7793202 () Bool)

(assert (=> b!7068642 m!7793202))

(assert (=> d!2210181 d!2210487))

(assert (=> d!2210181 d!2210185))

(declare-fun e!4249624 () Bool)

(declare-fun d!2210489 () Bool)

(assert (=> d!2210489 (= (matchZipper!3167 ((_ map or) lt!2542915 lt!2542931) (t!382189 s!7408)) e!4249624)))

(declare-fun res!2886534 () Bool)

(assert (=> d!2210489 (=> res!2886534 e!4249624)))

(assert (=> d!2210489 (= res!2886534 (matchZipper!3167 lt!2542915 (t!382189 s!7408)))))

(assert (=> d!2210489 true))

(declare-fun _$48!2530 () Unit!161962)

(assert (=> d!2210489 (= (choose!54119 lt!2542915 lt!2542931 (t!382189 s!7408)) _$48!2530)))

(declare-fun b!7068645 () Bool)

(assert (=> b!7068645 (= e!4249624 (matchZipper!3167 lt!2542931 (t!382189 s!7408)))))

(assert (= (and d!2210489 (not res!2886534)) b!7068645))

(assert (=> d!2210489 m!7792604))

(assert (=> d!2210489 m!7792300))

(assert (=> b!7068645 m!7792246))

(assert (=> d!2210181 d!2210489))

(declare-fun d!2210491 () Bool)

(declare-fun res!2886539 () Bool)

(declare-fun e!4249629 () Bool)

(assert (=> d!2210491 (=> res!2886539 e!4249629)))

(assert (=> d!2210491 (= res!2886539 ((_ is Nil!68285) lt!2542924))))

(assert (=> d!2210491 (= (forall!16576 lt!2542924 lambda!424528) e!4249629)))

(declare-fun b!7068650 () Bool)

(declare-fun e!4249630 () Bool)

(assert (=> b!7068650 (= e!4249629 e!4249630)))

(declare-fun res!2886540 () Bool)

(assert (=> b!7068650 (=> (not res!2886540) (not e!4249630))))

(assert (=> b!7068650 (= res!2886540 (dynLambda!27755 lambda!424528 (h!74733 lt!2542924)))))

(declare-fun b!7068651 () Bool)

(assert (=> b!7068651 (= e!4249630 (forall!16576 (t!382190 lt!2542924) lambda!424528))))

(assert (= (and d!2210491 (not res!2886539)) b!7068650))

(assert (= (and b!7068650 res!2886540) b!7068651))

(declare-fun b_lambda!269811 () Bool)

(assert (=> (not b_lambda!269811) (not b!7068650)))

(declare-fun m!7793204 () Bool)

(assert (=> b!7068650 m!7793204))

(declare-fun m!7793206 () Bool)

(assert (=> b!7068651 m!7793206))

(assert (=> d!2210199 d!2210491))

(declare-fun b!7068652 () Bool)

(declare-fun e!4249636 () Bool)

(assert (=> b!7068652 (= e!4249636 (nullable!7310 (regOne!35766 (h!74731 (exprs!7123 lt!2542923)))))))

(declare-fun bm!642427 () Bool)

(declare-fun call!642432 () List!68407)

(declare-fun call!642433 () List!68407)

(assert (=> bm!642427 (= call!642432 call!642433)))

(declare-fun c!1318340 () Bool)

(declare-fun c!1318342 () Bool)

(declare-fun bm!642428 () Bool)

(assert (=> bm!642428 (= call!642433 ($colon$colon!2649 (exprs!7123 (Context!13247 (t!382188 (exprs!7123 lt!2542923)))) (ite (or c!1318340 c!1318342) (regTwo!35766 (h!74731 (exprs!7123 lt!2542923))) (h!74731 (exprs!7123 lt!2542923)))))))

(declare-fun b!7068653 () Bool)

(declare-fun e!4249632 () (InoxSet Context!13246))

(declare-fun call!642436 () (InoxSet Context!13246))

(declare-fun call!642435 () (InoxSet Context!13246))

(assert (=> b!7068653 (= e!4249632 ((_ map or) call!642436 call!642435))))

(declare-fun b!7068654 () Bool)

(declare-fun e!4249633 () (InoxSet Context!13246))

(declare-fun call!642437 () (InoxSet Context!13246))

(assert (=> b!7068654 (= e!4249633 call!642437)))

(declare-fun d!2210493 () Bool)

(declare-fun c!1318339 () Bool)

(assert (=> d!2210493 (= c!1318339 (and ((_ is ElementMatch!17627) (h!74731 (exprs!7123 lt!2542923))) (= (c!1318124 (h!74731 (exprs!7123 lt!2542923))) (h!74732 s!7408))))))

(declare-fun e!4249631 () (InoxSet Context!13246))

(assert (=> d!2210493 (= (derivationStepZipperDown!2261 (h!74731 (exprs!7123 lt!2542923)) (Context!13247 (t!382188 (exprs!7123 lt!2542923))) (h!74732 s!7408)) e!4249631)))

(declare-fun bm!642429 () Bool)

(declare-fun call!642434 () (InoxSet Context!13246))

(assert (=> bm!642429 (= call!642437 call!642434)))

(declare-fun b!7068655 () Bool)

(assert (=> b!7068655 (= c!1318340 e!4249636)))

(declare-fun res!2886541 () Bool)

(assert (=> b!7068655 (=> (not res!2886541) (not e!4249636))))

(assert (=> b!7068655 (= res!2886541 ((_ is Concat!26472) (h!74731 (exprs!7123 lt!2542923))))))

(declare-fun e!4249634 () (InoxSet Context!13246))

(assert (=> b!7068655 (= e!4249632 e!4249634)))

(declare-fun c!1318343 () Bool)

(declare-fun bm!642430 () Bool)

(assert (=> bm!642430 (= call!642435 (derivationStepZipperDown!2261 (ite c!1318343 (regTwo!35767 (h!74731 (exprs!7123 lt!2542923))) (ite c!1318340 (regTwo!35766 (h!74731 (exprs!7123 lt!2542923))) (ite c!1318342 (regOne!35766 (h!74731 (exprs!7123 lt!2542923))) (reg!17956 (h!74731 (exprs!7123 lt!2542923)))))) (ite (or c!1318343 c!1318340) (Context!13247 (t!382188 (exprs!7123 lt!2542923))) (Context!13247 call!642432)) (h!74732 s!7408)))))

(declare-fun bm!642431 () Bool)

(assert (=> bm!642431 (= call!642436 (derivationStepZipperDown!2261 (ite c!1318343 (regOne!35767 (h!74731 (exprs!7123 lt!2542923))) (regOne!35766 (h!74731 (exprs!7123 lt!2542923)))) (ite c!1318343 (Context!13247 (t!382188 (exprs!7123 lt!2542923))) (Context!13247 call!642433)) (h!74732 s!7408)))))

(declare-fun b!7068656 () Bool)

(declare-fun c!1318341 () Bool)

(assert (=> b!7068656 (= c!1318341 ((_ is Star!17627) (h!74731 (exprs!7123 lt!2542923))))))

(declare-fun e!4249635 () (InoxSet Context!13246))

(assert (=> b!7068656 (= e!4249633 e!4249635)))

(declare-fun b!7068657 () Bool)

(assert (=> b!7068657 (= e!4249635 ((as const (Array Context!13246 Bool)) false))))

(declare-fun b!7068658 () Bool)

(assert (=> b!7068658 (= e!4249635 call!642437)))

(declare-fun bm!642432 () Bool)

(assert (=> bm!642432 (= call!642434 call!642435)))

(declare-fun b!7068659 () Bool)

(assert (=> b!7068659 (= e!4249631 (store ((as const (Array Context!13246 Bool)) false) (Context!13247 (t!382188 (exprs!7123 lt!2542923))) true))))

(declare-fun b!7068660 () Bool)

(assert (=> b!7068660 (= e!4249634 ((_ map or) call!642436 call!642434))))

(declare-fun b!7068661 () Bool)

(assert (=> b!7068661 (= e!4249631 e!4249632)))

(assert (=> b!7068661 (= c!1318343 ((_ is Union!17627) (h!74731 (exprs!7123 lt!2542923))))))

(declare-fun b!7068662 () Bool)

(assert (=> b!7068662 (= e!4249634 e!4249633)))

(assert (=> b!7068662 (= c!1318342 ((_ is Concat!26472) (h!74731 (exprs!7123 lt!2542923))))))

(assert (= (and d!2210493 c!1318339) b!7068659))

(assert (= (and d!2210493 (not c!1318339)) b!7068661))

(assert (= (and b!7068661 c!1318343) b!7068653))

(assert (= (and b!7068661 (not c!1318343)) b!7068655))

(assert (= (and b!7068655 res!2886541) b!7068652))

(assert (= (and b!7068655 c!1318340) b!7068660))

(assert (= (and b!7068655 (not c!1318340)) b!7068662))

(assert (= (and b!7068662 c!1318342) b!7068654))

(assert (= (and b!7068662 (not c!1318342)) b!7068656))

(assert (= (and b!7068656 c!1318341) b!7068658))

(assert (= (and b!7068656 (not c!1318341)) b!7068657))

(assert (= (or b!7068654 b!7068658) bm!642427))

(assert (= (or b!7068654 b!7068658) bm!642429))

(assert (= (or b!7068660 bm!642429) bm!642432))

(assert (= (or b!7068660 bm!642427) bm!642428))

(assert (= (or b!7068653 b!7068660) bm!642431))

(assert (= (or b!7068653 bm!642432) bm!642430))

(declare-fun m!7793208 () Bool)

(assert (=> bm!642430 m!7793208))

(declare-fun m!7793210 () Bool)

(assert (=> bm!642431 m!7793210))

(declare-fun m!7793212 () Bool)

(assert (=> b!7068659 m!7793212))

(declare-fun m!7793214 () Bool)

(assert (=> b!7068652 m!7793214))

(declare-fun m!7793216 () Bool)

(assert (=> bm!642428 m!7793216))

(assert (=> bm!642358 d!2210493))

(declare-fun d!2210495 () Bool)

(assert (=> d!2210495 true))

(declare-fun setRes!50173 () Bool)

(assert (=> d!2210495 setRes!50173))

(declare-fun condSetEmpty!50173 () Bool)

(declare-fun res!2886544 () (InoxSet Context!13246))

(assert (=> d!2210495 (= condSetEmpty!50173 (= res!2886544 ((as const (Array Context!13246 Bool)) false)))))

(assert (=> d!2210495 (= (choose!54118 lt!2542937 lambda!424492) res!2886544)))

(declare-fun setIsEmpty!50173 () Bool)

(assert (=> setIsEmpty!50173 setRes!50173))

(declare-fun tp!1941895 () Bool)

(declare-fun setNonEmpty!50173 () Bool)

(declare-fun setElem!50173 () Context!13246)

(declare-fun e!4249639 () Bool)

(assert (=> setNonEmpty!50173 (= setRes!50173 (and tp!1941895 (inv!86926 setElem!50173) e!4249639))))

(declare-fun setRest!50173 () (InoxSet Context!13246))

(assert (=> setNonEmpty!50173 (= res!2886544 ((_ map or) (store ((as const (Array Context!13246 Bool)) false) setElem!50173 true) setRest!50173))))

(declare-fun b!7068665 () Bool)

(declare-fun tp!1941896 () Bool)

(assert (=> b!7068665 (= e!4249639 tp!1941896)))

(assert (= (and d!2210495 condSetEmpty!50173) setIsEmpty!50173))

(assert (= (and d!2210495 (not condSetEmpty!50173)) setNonEmpty!50173))

(assert (= setNonEmpty!50173 b!7068665))

(declare-fun m!7793218 () Bool)

(assert (=> setNonEmpty!50173 m!7793218))

(assert (=> d!2210177 d!2210495))

(declare-fun call!642440 () Bool)

(declare-fun c!1318344 () Bool)

(declare-fun c!1318345 () Bool)

(declare-fun bm!642433 () Bool)

(assert (=> bm!642433 (= call!642440 (validRegex!8963 (ite c!1318344 (reg!17956 (ite c!1318179 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))) (ite c!1318345 (regTwo!35767 (ite c!1318179 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))) (regTwo!35766 (ite c!1318179 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928)))))))))))

(declare-fun b!7068666 () Bool)

(declare-fun e!4249645 () Bool)

(declare-fun e!4249644 () Bool)

(assert (=> b!7068666 (= e!4249645 e!4249644)))

(assert (=> b!7068666 (= c!1318345 ((_ is Union!17627) (ite c!1318179 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))))))

(declare-fun b!7068667 () Bool)

(declare-fun e!4249643 () Bool)

(declare-fun e!4249642 () Bool)

(assert (=> b!7068667 (= e!4249643 e!4249642)))

(declare-fun res!2886547 () Bool)

(assert (=> b!7068667 (=> (not res!2886547) (not e!4249642))))

(declare-fun call!642438 () Bool)

(assert (=> b!7068667 (= res!2886547 call!642438)))

(declare-fun b!7068668 () Bool)

(declare-fun res!2886549 () Bool)

(assert (=> b!7068668 (=> res!2886549 e!4249643)))

(assert (=> b!7068668 (= res!2886549 (not ((_ is Concat!26472) (ite c!1318179 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928)))))))))

(assert (=> b!7068668 (= e!4249644 e!4249643)))

(declare-fun d!2210497 () Bool)

(declare-fun res!2886545 () Bool)

(declare-fun e!4249641 () Bool)

(assert (=> d!2210497 (=> res!2886545 e!4249641)))

(assert (=> d!2210497 (= res!2886545 ((_ is ElementMatch!17627) (ite c!1318179 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))))))

(assert (=> d!2210497 (= (validRegex!8963 (ite c!1318179 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))) e!4249641)))

(declare-fun b!7068669 () Bool)

(declare-fun e!4249640 () Bool)

(assert (=> b!7068669 (= e!4249645 e!4249640)))

(declare-fun res!2886548 () Bool)

(assert (=> b!7068669 (= res!2886548 (not (nullable!7310 (reg!17956 (ite c!1318179 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))))))))

(assert (=> b!7068669 (=> (not res!2886548) (not e!4249640))))

(declare-fun b!7068670 () Bool)

(declare-fun call!642439 () Bool)

(assert (=> b!7068670 (= e!4249642 call!642439)))

(declare-fun bm!642434 () Bool)

(assert (=> bm!642434 (= call!642438 (validRegex!8963 (ite c!1318345 (regOne!35767 (ite c!1318179 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))) (regOne!35766 (ite c!1318179 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))))))))

(declare-fun b!7068671 () Bool)

(declare-fun res!2886546 () Bool)

(declare-fun e!4249646 () Bool)

(assert (=> b!7068671 (=> (not res!2886546) (not e!4249646))))

(assert (=> b!7068671 (= res!2886546 call!642438)))

(assert (=> b!7068671 (= e!4249644 e!4249646)))

(declare-fun b!7068672 () Bool)

(assert (=> b!7068672 (= e!4249641 e!4249645)))

(assert (=> b!7068672 (= c!1318344 ((_ is Star!17627) (ite c!1318179 (regOne!35767 (h!74731 (exprs!7123 lt!2542928))) (regOne!35766 (h!74731 (exprs!7123 lt!2542928))))))))

(declare-fun b!7068673 () Bool)

(assert (=> b!7068673 (= e!4249640 call!642440)))

(declare-fun bm!642435 () Bool)

(assert (=> bm!642435 (= call!642439 call!642440)))

(declare-fun b!7068674 () Bool)

(assert (=> b!7068674 (= e!4249646 call!642439)))

(assert (= (and d!2210497 (not res!2886545)) b!7068672))

(assert (= (and b!7068672 c!1318344) b!7068669))

(assert (= (and b!7068672 (not c!1318344)) b!7068666))

(assert (= (and b!7068669 res!2886548) b!7068673))

(assert (= (and b!7068666 c!1318345) b!7068671))

(assert (= (and b!7068666 (not c!1318345)) b!7068668))

(assert (= (and b!7068671 res!2886546) b!7068674))

(assert (= (and b!7068668 (not res!2886549)) b!7068667))

(assert (= (and b!7068667 res!2886547) b!7068670))

(assert (= (or b!7068674 b!7068670) bm!642435))

(assert (= (or b!7068671 b!7068667) bm!642434))

(assert (= (or b!7068673 bm!642435) bm!642433))

(declare-fun m!7793220 () Bool)

(assert (=> bm!642433 m!7793220))

(declare-fun m!7793222 () Bool)

(assert (=> b!7068669 m!7793222))

(declare-fun m!7793224 () Bool)

(assert (=> bm!642434 m!7793224))

(assert (=> bm!642336 d!2210497))

(declare-fun d!2210499 () Bool)

(assert (=> d!2210499 (= (map!15970 z1!570 lambda!424515) (choose!54125 z1!570 lambda!424515))))

(declare-fun bs!1880227 () Bool)

(assert (= bs!1880227 d!2210499))

(declare-fun m!7793226 () Bool)

(assert (=> bs!1880227 m!7793226))

(assert (=> d!2210167 d!2210499))

(assert (=> d!2210175 d!2210177))

(declare-fun d!2210501 () Bool)

(assert (=> d!2210501 (= (flatMap!2553 lt!2542937 lambda!424492) (dynLambda!27754 lambda!424492 lt!2542914))))

(assert (=> d!2210501 true))

(declare-fun _$13!4555 () Unit!161962)

(assert (=> d!2210501 (= (choose!54117 lt!2542937 lt!2542914 lambda!424492) _$13!4555)))

(declare-fun b_lambda!269813 () Bool)

(assert (=> (not b_lambda!269813) (not d!2210501)))

(declare-fun bs!1880228 () Bool)

(assert (= bs!1880228 d!2210501))

(assert (=> bs!1880228 m!7792258))

(assert (=> bs!1880228 m!7792592))

(assert (=> d!2210175 d!2210501))

(declare-fun bs!1880229 () Bool)

(declare-fun d!2210503 () Bool)

(assert (= bs!1880229 (and d!2210503 d!2210199)))

(declare-fun lambda!424559 () Int)

(assert (=> bs!1880229 (= (= lambda!424525 lambda!424489) (= lambda!424559 lambda!424528))))

(declare-fun bs!1880230 () Bool)

(assert (= bs!1880230 (and d!2210503 d!2210195)))

(assert (=> bs!1880230 (not (= lambda!424559 lambda!424525))))

(declare-fun bs!1880231 () Bool)

(assert (= bs!1880231 (and d!2210503 d!2210425)))

(assert (=> bs!1880231 (not (= lambda!424559 lambda!424553))))

(declare-fun bs!1880232 () Bool)

(assert (= bs!1880232 (and d!2210503 d!2210469)))

(assert (=> bs!1880232 (not (= lambda!424559 lambda!424558))))

(declare-fun bs!1880233 () Bool)

(assert (= bs!1880233 (and d!2210503 d!2210411)))

(assert (=> bs!1880233 (not (= lambda!424559 lambda!424551))))

(declare-fun bs!1880234 () Bool)

(assert (= bs!1880234 (and d!2210503 b!7067928)))

(assert (=> bs!1880234 (not (= lambda!424559 lambda!424489))))

(assert (=> d!2210503 true))

(assert (=> d!2210503 (< (dynLambda!27756 order!28385 lambda!424525) (dynLambda!27756 order!28385 lambda!424559))))

(assert (=> d!2210503 (= (exists!3660 lt!2542924 lambda!424525) (not (forall!16576 lt!2542924 lambda!424559)))))

(declare-fun bs!1880235 () Bool)

(assert (= bs!1880235 d!2210503))

(declare-fun m!7793228 () Bool)

(assert (=> bs!1880235 m!7793228))

(assert (=> d!2210195 d!2210503))

(declare-fun bs!1880236 () Bool)

(declare-fun d!2210505 () Bool)

(assert (= bs!1880236 (and d!2210505 d!2210199)))

(declare-fun lambda!424562 () Int)

(assert (=> bs!1880236 (not (= lambda!424562 lambda!424528))))

(declare-fun bs!1880237 () Bool)

(assert (= bs!1880237 (and d!2210505 d!2210195)))

(assert (=> bs!1880237 (= lambda!424562 lambda!424525)))

(declare-fun bs!1880238 () Bool)

(assert (= bs!1880238 (and d!2210505 d!2210425)))

(assert (=> bs!1880238 (not (= lambda!424562 lambda!424553))))

(declare-fun bs!1880239 () Bool)

(assert (= bs!1880239 (and d!2210505 d!2210503)))

(assert (=> bs!1880239 (not (= lambda!424562 lambda!424559))))

(declare-fun bs!1880240 () Bool)

(assert (= bs!1880240 (and d!2210505 d!2210469)))

(assert (=> bs!1880240 (not (= lambda!424562 lambda!424558))))

(declare-fun bs!1880241 () Bool)

(assert (= bs!1880241 (and d!2210505 d!2210411)))

(assert (=> bs!1880241 (not (= lambda!424562 lambda!424551))))

(declare-fun bs!1880242 () Bool)

(assert (= bs!1880242 (and d!2210505 b!7067928)))

(assert (=> bs!1880242 (= lambda!424562 lambda!424489)))

(assert (=> d!2210505 true))

(assert (=> d!2210505 (exists!3660 lt!2542924 lambda!424562)))

(assert (=> d!2210505 true))

(declare-fun _$60!1180 () Unit!161962)

(assert (=> d!2210505 (= (choose!54121 lt!2542924 s!7408) _$60!1180)))

(declare-fun bs!1880243 () Bool)

(assert (= bs!1880243 d!2210505))

(declare-fun m!7793230 () Bool)

(assert (=> bs!1880243 m!7793230))

(assert (=> d!2210195 d!2210505))

(declare-fun d!2210507 () Bool)

(declare-fun c!1318348 () Bool)

(assert (=> d!2210507 (= c!1318348 (isEmpty!39850 s!7408))))

(declare-fun e!4249647 () Bool)

(assert (=> d!2210507 (= (matchZipper!3167 (content!13764 lt!2542924) s!7408) e!4249647)))

(declare-fun b!7068675 () Bool)

(assert (=> b!7068675 (= e!4249647 (nullableZipper!2688 (content!13764 lt!2542924)))))

(declare-fun b!7068676 () Bool)

(assert (=> b!7068676 (= e!4249647 (matchZipper!3167 (derivationStepZipper!3077 (content!13764 lt!2542924) (head!14394 s!7408)) (tail!13800 s!7408)))))

(assert (= (and d!2210507 c!1318348) b!7068675))

(assert (= (and d!2210507 (not c!1318348)) b!7068676))

(assert (=> d!2210507 m!7792568))

(assert (=> b!7068675 m!7792640))

(declare-fun m!7793232 () Bool)

(assert (=> b!7068675 m!7793232))

(assert (=> b!7068676 m!7792572))

(assert (=> b!7068676 m!7792640))

(assert (=> b!7068676 m!7792572))

(declare-fun m!7793234 () Bool)

(assert (=> b!7068676 m!7793234))

(assert (=> b!7068676 m!7792576))

(assert (=> b!7068676 m!7793234))

(assert (=> b!7068676 m!7792576))

(declare-fun m!7793236 () Bool)

(assert (=> b!7068676 m!7793236))

(assert (=> d!2210195 d!2210507))

(declare-fun d!2210509 () Bool)

(declare-fun c!1318351 () Bool)

(assert (=> d!2210509 (= c!1318351 ((_ is Nil!68285) lt!2542924))))

(declare-fun e!4249650 () (InoxSet Context!13246))

(assert (=> d!2210509 (= (content!13764 lt!2542924) e!4249650)))

(declare-fun b!7068681 () Bool)

(assert (=> b!7068681 (= e!4249650 ((as const (Array Context!13246 Bool)) false))))

(declare-fun b!7068682 () Bool)

(assert (=> b!7068682 (= e!4249650 ((_ map or) (store ((as const (Array Context!13246 Bool)) false) (h!74733 lt!2542924) true) (content!13764 (t!382190 lt!2542924))))))

(assert (= (and d!2210509 c!1318351) b!7068681))

(assert (= (and d!2210509 (not c!1318351)) b!7068682))

(declare-fun m!7793238 () Bool)

(assert (=> b!7068682 m!7793238))

(declare-fun m!7793240 () Bool)

(assert (=> b!7068682 m!7793240))

(assert (=> d!2210195 d!2210509))

(declare-fun d!2210511 () Bool)

(declare-fun res!2886550 () Bool)

(declare-fun e!4249651 () Bool)

(assert (=> d!2210511 (=> res!2886550 e!4249651)))

(assert (=> d!2210511 (= res!2886550 ((_ is Nil!68283) (++!15744 (exprs!7123 lt!2542928) (exprs!7123 ct2!306))))))

(assert (=> d!2210511 (= (forall!16575 (++!15744 (exprs!7123 lt!2542928) (exprs!7123 ct2!306)) lambda!424491) e!4249651)))

(declare-fun b!7068683 () Bool)

(declare-fun e!4249652 () Bool)

(assert (=> b!7068683 (= e!4249651 e!4249652)))

(declare-fun res!2886551 () Bool)

(assert (=> b!7068683 (=> (not res!2886551) (not e!4249652))))

(assert (=> b!7068683 (= res!2886551 (dynLambda!27758 lambda!424491 (h!74731 (++!15744 (exprs!7123 lt!2542928) (exprs!7123 ct2!306)))))))

(declare-fun b!7068684 () Bool)

(assert (=> b!7068684 (= e!4249652 (forall!16575 (t!382188 (++!15744 (exprs!7123 lt!2542928) (exprs!7123 ct2!306))) lambda!424491))))

(assert (= (and d!2210511 (not res!2886550)) b!7068683))

(assert (= (and b!7068683 res!2886551) b!7068684))

(declare-fun b_lambda!269815 () Bool)

(assert (=> (not b_lambda!269815) (not b!7068683)))

(declare-fun m!7793242 () Bool)

(assert (=> b!7068683 m!7793242))

(declare-fun m!7793244 () Bool)

(assert (=> b!7068684 m!7793244))

(assert (=> d!2210155 d!2210511))

(assert (=> d!2210155 d!2210153))

(declare-fun d!2210513 () Bool)

(assert (=> d!2210513 (forall!16575 (++!15744 (exprs!7123 lt!2542928) (exprs!7123 ct2!306)) lambda!424491)))

(assert (=> d!2210513 true))

(declare-fun _$78!672 () Unit!161962)

(assert (=> d!2210513 (= (choose!54115 (exprs!7123 lt!2542928) (exprs!7123 ct2!306) lambda!424491) _$78!672)))

(declare-fun bs!1880244 () Bool)

(assert (= bs!1880244 d!2210513))

(assert (=> bs!1880244 m!7792270))

(assert (=> bs!1880244 m!7792270))

(assert (=> bs!1880244 m!7792526))

(assert (=> d!2210155 d!2210513))

(declare-fun d!2210515 () Bool)

(declare-fun res!2886552 () Bool)

(declare-fun e!4249653 () Bool)

(assert (=> d!2210515 (=> res!2886552 e!4249653)))

(assert (=> d!2210515 (= res!2886552 ((_ is Nil!68283) (exprs!7123 lt!2542928)))))

(assert (=> d!2210515 (= (forall!16575 (exprs!7123 lt!2542928) lambda!424491) e!4249653)))

(declare-fun b!7068685 () Bool)

(declare-fun e!4249654 () Bool)

(assert (=> b!7068685 (= e!4249653 e!4249654)))

(declare-fun res!2886553 () Bool)

(assert (=> b!7068685 (=> (not res!2886553) (not e!4249654))))

(assert (=> b!7068685 (= res!2886553 (dynLambda!27758 lambda!424491 (h!74731 (exprs!7123 lt!2542928))))))

(declare-fun b!7068686 () Bool)

(assert (=> b!7068686 (= e!4249654 (forall!16575 (t!382188 (exprs!7123 lt!2542928)) lambda!424491))))

(assert (= (and d!2210515 (not res!2886552)) b!7068685))

(assert (= (and b!7068685 res!2886553) b!7068686))

(declare-fun b_lambda!269817 () Bool)

(assert (=> (not b_lambda!269817) (not b!7068685)))

(declare-fun m!7793246 () Bool)

(assert (=> b!7068685 m!7793246))

(declare-fun m!7793248 () Bool)

(assert (=> b!7068686 m!7793248))

(assert (=> d!2210155 d!2210515))

(declare-fun d!2210517 () Bool)

(assert (=> d!2210517 (= (nullable!7310 (reg!17956 (h!74731 (exprs!7123 lt!2542928)))) (nullableFct!2803 (reg!17956 (h!74731 (exprs!7123 lt!2542928)))))))

(declare-fun bs!1880245 () Bool)

(assert (= bs!1880245 d!2210517))

(declare-fun m!7793250 () Bool)

(assert (=> bs!1880245 m!7793250))

(assert (=> b!7068112 d!2210517))

(declare-fun d!2210519 () Bool)

(declare-fun c!1318352 () Bool)

(assert (=> d!2210519 (= c!1318352 ((_ is Nil!68283) lt!2542982))))

(declare-fun e!4249655 () (InoxSet Regex!17627))

(assert (=> d!2210519 (= (content!13763 lt!2542982) e!4249655)))

(declare-fun b!7068687 () Bool)

(assert (=> b!7068687 (= e!4249655 ((as const (Array Regex!17627 Bool)) false))))

(declare-fun b!7068688 () Bool)

(assert (=> b!7068688 (= e!4249655 ((_ map or) (store ((as const (Array Regex!17627 Bool)) false) (h!74731 lt!2542982) true) (content!13763 (t!382188 lt!2542982))))))

(assert (= (and d!2210519 c!1318352) b!7068687))

(assert (= (and d!2210519 (not c!1318352)) b!7068688))

(declare-fun m!7793252 () Bool)

(assert (=> b!7068688 m!7793252))

(declare-fun m!7793254 () Bool)

(assert (=> b!7068688 m!7793254))

(assert (=> d!2210159 d!2210519))

(declare-fun d!2210521 () Bool)

(declare-fun c!1318353 () Bool)

(assert (=> d!2210521 (= c!1318353 ((_ is Nil!68283) lt!2542935))))

(declare-fun e!4249656 () (InoxSet Regex!17627))

(assert (=> d!2210521 (= (content!13763 lt!2542935) e!4249656)))

(declare-fun b!7068689 () Bool)

(assert (=> b!7068689 (= e!4249656 ((as const (Array Regex!17627 Bool)) false))))

(declare-fun b!7068690 () Bool)

(assert (=> b!7068690 (= e!4249656 ((_ map or) (store ((as const (Array Regex!17627 Bool)) false) (h!74731 lt!2542935) true) (content!13763 (t!382188 lt!2542935))))))

(assert (= (and d!2210521 c!1318353) b!7068689))

(assert (= (and d!2210521 (not c!1318353)) b!7068690))

(declare-fun m!7793256 () Bool)

(assert (=> b!7068690 m!7793256))

(declare-fun m!7793258 () Bool)

(assert (=> b!7068690 m!7793258))

(assert (=> d!2210159 d!2210521))

(assert (=> d!2210159 d!2210485))

(declare-fun d!2210523 () Bool)

(declare-fun c!1318354 () Bool)

(assert (=> d!2210523 (= c!1318354 (isEmpty!39850 (tail!13800 (t!382189 s!7408))))))

(declare-fun e!4249657 () Bool)

(assert (=> d!2210523 (= (matchZipper!3167 (derivationStepZipper!3077 lt!2542930 (head!14394 (t!382189 s!7408))) (tail!13800 (t!382189 s!7408))) e!4249657)))

(declare-fun b!7068691 () Bool)

(assert (=> b!7068691 (= e!4249657 (nullableZipper!2688 (derivationStepZipper!3077 lt!2542930 (head!14394 (t!382189 s!7408)))))))

(declare-fun b!7068692 () Bool)

(assert (=> b!7068692 (= e!4249657 (matchZipper!3167 (derivationStepZipper!3077 (derivationStepZipper!3077 lt!2542930 (head!14394 (t!382189 s!7408))) (head!14394 (tail!13800 (t!382189 s!7408)))) (tail!13800 (tail!13800 (t!382189 s!7408)))))))

(assert (= (and d!2210523 c!1318354) b!7068691))

(assert (= (and d!2210523 (not c!1318354)) b!7068692))

(assert (=> d!2210523 m!7792502))

(assert (=> d!2210523 m!7793012))

(assert (=> b!7068691 m!7792610))

(declare-fun m!7793260 () Bool)

(assert (=> b!7068691 m!7793260))

(assert (=> b!7068692 m!7792502))

(assert (=> b!7068692 m!7793016))

(assert (=> b!7068692 m!7792610))

(assert (=> b!7068692 m!7793016))

(declare-fun m!7793262 () Bool)

(assert (=> b!7068692 m!7793262))

(assert (=> b!7068692 m!7792502))

(assert (=> b!7068692 m!7793020))

(assert (=> b!7068692 m!7793262))

(assert (=> b!7068692 m!7793020))

(declare-fun m!7793264 () Bool)

(assert (=> b!7068692 m!7793264))

(assert (=> b!7068201 d!2210523))

(declare-fun bs!1880246 () Bool)

(declare-fun d!2210525 () Bool)

(assert (= bs!1880246 (and d!2210525 d!2210433)))

(declare-fun lambda!424563 () Int)

(assert (=> bs!1880246 (= lambda!424563 lambda!424555)))

(declare-fun bs!1880247 () Bool)

(assert (= bs!1880247 (and d!2210525 d!2210173)))

(assert (=> bs!1880247 (= (= (head!14394 (t!382189 s!7408)) (h!74732 s!7408)) (= lambda!424563 lambda!424521))))

(declare-fun bs!1880248 () Bool)

(assert (= bs!1880248 (and d!2210525 b!7067929)))

(assert (=> bs!1880248 (= (= (head!14394 (t!382189 s!7408)) (h!74732 s!7408)) (= lambda!424563 lambda!424492))))

(declare-fun bs!1880249 () Bool)

(assert (= bs!1880249 (and d!2210525 d!2210429)))

(assert (=> bs!1880249 (= lambda!424563 lambda!424554)))

(declare-fun bs!1880250 () Bool)

(assert (= bs!1880250 (and d!2210525 d!2210467)))

(assert (=> bs!1880250 (= (= (head!14394 (t!382189 s!7408)) (head!14394 s!7408)) (= lambda!424563 lambda!424557))))

(declare-fun bs!1880251 () Bool)

(assert (= bs!1880251 (and d!2210525 d!2210401)))

(assert (=> bs!1880251 (= lambda!424563 lambda!424548)))

(declare-fun bs!1880252 () Bool)

(assert (= bs!1880252 (and d!2210525 d!2210437)))

(assert (=> bs!1880252 (= (= (head!14394 (t!382189 s!7408)) (head!14394 s!7408)) (= lambda!424563 lambda!424556))))

(assert (=> d!2210525 true))

(assert (=> d!2210525 (= (derivationStepZipper!3077 lt!2542930 (head!14394 (t!382189 s!7408))) (flatMap!2553 lt!2542930 lambda!424563))))

(declare-fun bs!1880253 () Bool)

(assert (= bs!1880253 d!2210525))

(declare-fun m!7793266 () Bool)

(assert (=> bs!1880253 m!7793266))

(assert (=> b!7068201 d!2210525))

(assert (=> b!7068201 d!2210403))

(assert (=> b!7068201 d!2210405))

(declare-fun bs!1880254 () Bool)

(declare-fun d!2210527 () Bool)

(assert (= bs!1880254 (and d!2210527 d!2210199)))

(declare-fun lambda!424564 () Int)

(assert (=> bs!1880254 (not (= lambda!424564 lambda!424528))))

(declare-fun bs!1880255 () Bool)

(assert (= bs!1880255 (and d!2210527 d!2210505)))

(assert (=> bs!1880255 (not (= lambda!424564 lambda!424562))))

(declare-fun bs!1880256 () Bool)

(assert (= bs!1880256 (and d!2210527 d!2210195)))

(assert (=> bs!1880256 (not (= lambda!424564 lambda!424525))))

(declare-fun bs!1880257 () Bool)

(assert (= bs!1880257 (and d!2210527 d!2210425)))

(assert (=> bs!1880257 (= lambda!424564 lambda!424553)))

(declare-fun bs!1880258 () Bool)

(assert (= bs!1880258 (and d!2210527 d!2210503)))

(assert (=> bs!1880258 (not (= lambda!424564 lambda!424559))))

(declare-fun bs!1880259 () Bool)

(assert (= bs!1880259 (and d!2210527 d!2210469)))

(assert (=> bs!1880259 (= lambda!424564 lambda!424558)))

(declare-fun bs!1880260 () Bool)

(assert (= bs!1880260 (and d!2210527 d!2210411)))

(assert (=> bs!1880260 (= lambda!424564 lambda!424551)))

(declare-fun bs!1880261 () Bool)

(assert (= bs!1880261 (and d!2210527 b!7067928)))

(assert (=> bs!1880261 (not (= lambda!424564 lambda!424489))))

(assert (=> d!2210527 (= (nullableZipper!2688 lt!2542916) (exists!3662 lt!2542916 lambda!424564))))

(declare-fun bs!1880262 () Bool)

(assert (= bs!1880262 d!2210527))

(declare-fun m!7793268 () Bool)

(assert (=> bs!1880262 m!7793268))

(assert (=> b!7068210 d!2210527))

(declare-fun bs!1880263 () Bool)

(declare-fun d!2210529 () Bool)

(assert (= bs!1880263 (and d!2210529 d!2210199)))

(declare-fun lambda!424565 () Int)

(assert (=> bs!1880263 (not (= lambda!424565 lambda!424528))))

(declare-fun bs!1880264 () Bool)

(assert (= bs!1880264 (and d!2210529 d!2210527)))

(assert (=> bs!1880264 (= lambda!424565 lambda!424564)))

(declare-fun bs!1880265 () Bool)

(assert (= bs!1880265 (and d!2210529 d!2210505)))

(assert (=> bs!1880265 (not (= lambda!424565 lambda!424562))))

(declare-fun bs!1880266 () Bool)

(assert (= bs!1880266 (and d!2210529 d!2210195)))

(assert (=> bs!1880266 (not (= lambda!424565 lambda!424525))))

(declare-fun bs!1880267 () Bool)

(assert (= bs!1880267 (and d!2210529 d!2210425)))

(assert (=> bs!1880267 (= lambda!424565 lambda!424553)))

(declare-fun bs!1880268 () Bool)

(assert (= bs!1880268 (and d!2210529 d!2210503)))

(assert (=> bs!1880268 (not (= lambda!424565 lambda!424559))))

(declare-fun bs!1880269 () Bool)

(assert (= bs!1880269 (and d!2210529 d!2210469)))

(assert (=> bs!1880269 (= lambda!424565 lambda!424558)))

(declare-fun bs!1880270 () Bool)

(assert (= bs!1880270 (and d!2210529 d!2210411)))

(assert (=> bs!1880270 (= lambda!424565 lambda!424551)))

(declare-fun bs!1880271 () Bool)

(assert (= bs!1880271 (and d!2210529 b!7067928)))

(assert (=> bs!1880271 (not (= lambda!424565 lambda!424489))))

(assert (=> d!2210529 (= (nullableZipper!2688 lt!2542931) (exists!3662 lt!2542931 lambda!424565))))

(declare-fun bs!1880272 () Bool)

(assert (= bs!1880272 d!2210529))

(declare-fun m!7793270 () Bool)

(assert (=> bs!1880272 m!7793270))

(assert (=> b!7068089 d!2210529))

(declare-fun d!2210531 () Bool)

(declare-fun res!2886554 () Bool)

(declare-fun e!4249658 () Bool)

(assert (=> d!2210531 (=> res!2886554 e!4249658)))

(assert (=> d!2210531 (= res!2886554 ((_ is Nil!68283) (exprs!7123 ct2!306)))))

(assert (=> d!2210531 (= (forall!16575 (exprs!7123 ct2!306) lambda!424518) e!4249658)))

(declare-fun b!7068693 () Bool)

(declare-fun e!4249659 () Bool)

(assert (=> b!7068693 (= e!4249658 e!4249659)))

(declare-fun res!2886555 () Bool)

(assert (=> b!7068693 (=> (not res!2886555) (not e!4249659))))

(assert (=> b!7068693 (= res!2886555 (dynLambda!27758 lambda!424518 (h!74731 (exprs!7123 ct2!306))))))

(declare-fun b!7068694 () Bool)

(assert (=> b!7068694 (= e!4249659 (forall!16575 (t!382188 (exprs!7123 ct2!306)) lambda!424518))))

(assert (= (and d!2210531 (not res!2886554)) b!7068693))

(assert (= (and b!7068693 res!2886555) b!7068694))

(declare-fun b_lambda!269819 () Bool)

(assert (=> (not b_lambda!269819) (not b!7068693)))

(declare-fun m!7793272 () Bool)

(assert (=> b!7068693 m!7793272))

(declare-fun m!7793274 () Bool)

(assert (=> b!7068694 m!7793274))

(assert (=> d!2210169 d!2210531))

(declare-fun bs!1880273 () Bool)

(declare-fun d!2210533 () Bool)

(assert (= bs!1880273 (and d!2210533 d!2210199)))

(declare-fun lambda!424566 () Int)

(assert (=> bs!1880273 (not (= lambda!424566 lambda!424528))))

(declare-fun bs!1880274 () Bool)

(assert (= bs!1880274 (and d!2210533 d!2210527)))

(assert (=> bs!1880274 (= lambda!424566 lambda!424564)))

(declare-fun bs!1880275 () Bool)

(assert (= bs!1880275 (and d!2210533 d!2210505)))

(assert (=> bs!1880275 (not (= lambda!424566 lambda!424562))))

(declare-fun bs!1880276 () Bool)

(assert (= bs!1880276 (and d!2210533 d!2210425)))

(assert (=> bs!1880276 (= lambda!424566 lambda!424553)))

(declare-fun bs!1880277 () Bool)

(assert (= bs!1880277 (and d!2210533 d!2210503)))

(assert (=> bs!1880277 (not (= lambda!424566 lambda!424559))))

(declare-fun bs!1880278 () Bool)

(assert (= bs!1880278 (and d!2210533 d!2210469)))

(assert (=> bs!1880278 (= lambda!424566 lambda!424558)))

(declare-fun bs!1880279 () Bool)

(assert (= bs!1880279 (and d!2210533 d!2210411)))

(assert (=> bs!1880279 (= lambda!424566 lambda!424551)))

(declare-fun bs!1880280 () Bool)

(assert (= bs!1880280 (and d!2210533 b!7067928)))

(assert (=> bs!1880280 (not (= lambda!424566 lambda!424489))))

(declare-fun bs!1880281 () Bool)

(assert (= bs!1880281 (and d!2210533 d!2210195)))

(assert (=> bs!1880281 (not (= lambda!424566 lambda!424525))))

(declare-fun bs!1880282 () Bool)

(assert (= bs!1880282 (and d!2210533 d!2210529)))

(assert (=> bs!1880282 (= lambda!424566 lambda!424565)))

(assert (=> d!2210533 (= (nullableZipper!2688 lt!2542920) (exists!3662 lt!2542920 lambda!424566))))

(declare-fun bs!1880283 () Bool)

(assert (= bs!1880283 d!2210533))

(declare-fun m!7793276 () Bool)

(assert (=> bs!1880283 m!7793276))

(assert (=> b!7068195 d!2210533))

(declare-fun d!2210535 () Bool)

(assert (=> d!2210535 (= (nullable!7310 (h!74731 (exprs!7123 lt!2542914))) (nullableFct!2803 (h!74731 (exprs!7123 lt!2542914))))))

(declare-fun bs!1880284 () Bool)

(assert (= bs!1880284 d!2210535))

(declare-fun m!7793278 () Bool)

(assert (=> bs!1880284 m!7793278))

(assert (=> b!7068189 d!2210535))

(declare-fun b!7068697 () Bool)

(declare-fun res!2886556 () Bool)

(declare-fun e!4249660 () Bool)

(assert (=> b!7068697 (=> (not res!2886556) (not e!4249660))))

(declare-fun lt!2543039 () List!68407)

(assert (=> b!7068697 (= res!2886556 (= (size!41197 lt!2543039) (+ (size!41197 (t!382188 lt!2542935)) (size!41197 (exprs!7123 ct2!306)))))))

(declare-fun b!7068696 () Bool)

(declare-fun e!4249661 () List!68407)

(assert (=> b!7068696 (= e!4249661 (Cons!68283 (h!74731 (t!382188 lt!2542935)) (++!15744 (t!382188 (t!382188 lt!2542935)) (exprs!7123 ct2!306))))))

(declare-fun b!7068695 () Bool)

(assert (=> b!7068695 (= e!4249661 (exprs!7123 ct2!306))))

(declare-fun b!7068698 () Bool)

(assert (=> b!7068698 (= e!4249660 (or (not (= (exprs!7123 ct2!306) Nil!68283)) (= lt!2543039 (t!382188 lt!2542935))))))

(declare-fun d!2210537 () Bool)

(assert (=> d!2210537 e!4249660))

(declare-fun res!2886557 () Bool)

(assert (=> d!2210537 (=> (not res!2886557) (not e!4249660))))

(assert (=> d!2210537 (= res!2886557 (= (content!13763 lt!2543039) ((_ map or) (content!13763 (t!382188 lt!2542935)) (content!13763 (exprs!7123 ct2!306)))))))

(assert (=> d!2210537 (= lt!2543039 e!4249661)))

(declare-fun c!1318355 () Bool)

(assert (=> d!2210537 (= c!1318355 ((_ is Nil!68283) (t!382188 lt!2542935)))))

(assert (=> d!2210537 (= (++!15744 (t!382188 lt!2542935) (exprs!7123 ct2!306)) lt!2543039)))

(assert (= (and d!2210537 c!1318355) b!7068695))

(assert (= (and d!2210537 (not c!1318355)) b!7068696))

(assert (= (and d!2210537 res!2886557) b!7068697))

(assert (= (and b!7068697 res!2886556) b!7068698))

(declare-fun m!7793280 () Bool)

(assert (=> b!7068697 m!7793280))

(assert (=> b!7068697 m!7793140))

(assert (=> b!7068697 m!7792516))

(declare-fun m!7793282 () Bool)

(assert (=> b!7068696 m!7793282))

(declare-fun m!7793284 () Bool)

(assert (=> d!2210537 m!7793284))

(assert (=> d!2210537 m!7793258))

(assert (=> d!2210537 m!7792524))

(assert (=> b!7068135 d!2210537))

(assert (=> d!2210185 d!2210443))

(declare-fun d!2210539 () Bool)

(declare-fun res!2886558 () Bool)

(declare-fun e!4249662 () Bool)

(assert (=> d!2210539 (=> res!2886558 e!4249662)))

(assert (=> d!2210539 (= res!2886558 ((_ is Nil!68283) (exprs!7123 setElem!50160)))))

(assert (=> d!2210539 (= (forall!16575 (exprs!7123 setElem!50160) lambda!424522) e!4249662)))

(declare-fun b!7068699 () Bool)

(declare-fun e!4249663 () Bool)

(assert (=> b!7068699 (= e!4249662 e!4249663)))

(declare-fun res!2886559 () Bool)

(assert (=> b!7068699 (=> (not res!2886559) (not e!4249663))))

(assert (=> b!7068699 (= res!2886559 (dynLambda!27758 lambda!424522 (h!74731 (exprs!7123 setElem!50160))))))

(declare-fun b!7068700 () Bool)

(assert (=> b!7068700 (= e!4249663 (forall!16575 (t!382188 (exprs!7123 setElem!50160)) lambda!424522))))

(assert (= (and d!2210539 (not res!2886558)) b!7068699))

(assert (= (and b!7068699 res!2886559) b!7068700))

(declare-fun b_lambda!269821 () Bool)

(assert (=> (not b_lambda!269821) (not b!7068699)))

(declare-fun m!7793286 () Bool)

(assert (=> b!7068699 m!7793286))

(declare-fun m!7793288 () Bool)

(assert (=> b!7068700 m!7793288))

(assert (=> d!2210189 d!2210539))

(declare-fun d!2210541 () Bool)

(declare-fun lt!2543040 () Int)

(assert (=> d!2210541 (>= lt!2543040 0)))

(declare-fun e!4249664 () Int)

(assert (=> d!2210541 (= lt!2543040 e!4249664)))

(declare-fun c!1318356 () Bool)

(assert (=> d!2210541 (= c!1318356 ((_ is Nil!68283) lt!2542977))))

(assert (=> d!2210541 (= (size!41197 lt!2542977) lt!2543040)))

(declare-fun b!7068701 () Bool)

(assert (=> b!7068701 (= e!4249664 0)))

(declare-fun b!7068702 () Bool)

(assert (=> b!7068702 (= e!4249664 (+ 1 (size!41197 (t!382188 lt!2542977))))))

(assert (= (and d!2210541 c!1318356) b!7068701))

(assert (= (and d!2210541 (not c!1318356)) b!7068702))

(declare-fun m!7793290 () Bool)

(assert (=> b!7068702 m!7793290))

(assert (=> b!7068128 d!2210541))

(declare-fun d!2210543 () Bool)

(declare-fun lt!2543041 () Int)

(assert (=> d!2210543 (>= lt!2543041 0)))

(declare-fun e!4249665 () Int)

(assert (=> d!2210543 (= lt!2543041 e!4249665)))

(declare-fun c!1318357 () Bool)

(assert (=> d!2210543 (= c!1318357 ((_ is Nil!68283) (exprs!7123 lt!2542928)))))

(assert (=> d!2210543 (= (size!41197 (exprs!7123 lt!2542928)) lt!2543041)))

(declare-fun b!7068703 () Bool)

(assert (=> b!7068703 (= e!4249665 0)))

(declare-fun b!7068704 () Bool)

(assert (=> b!7068704 (= e!4249665 (+ 1 (size!41197 (t!382188 (exprs!7123 lt!2542928)))))))

(assert (= (and d!2210543 c!1318357) b!7068703))

(assert (= (and d!2210543 (not c!1318357)) b!7068704))

(assert (=> b!7068704 m!7793112))

(assert (=> b!7068128 d!2210543))

(assert (=> b!7068128 d!2210463))

(declare-fun d!2210545 () Bool)

(declare-fun c!1318358 () Bool)

(assert (=> d!2210545 (= c!1318358 ((_ is Nil!68285) lt!2542993))))

(declare-fun e!4249666 () (InoxSet Context!13246))

(assert (=> d!2210545 (= (content!13764 lt!2542993) e!4249666)))

(declare-fun b!7068705 () Bool)

(assert (=> b!7068705 (= e!4249666 ((as const (Array Context!13246 Bool)) false))))

(declare-fun b!7068706 () Bool)

(assert (=> b!7068706 (= e!4249666 ((_ map or) (store ((as const (Array Context!13246 Bool)) false) (h!74733 lt!2542993) true) (content!13764 (t!382190 lt!2542993))))))

(assert (= (and d!2210545 c!1318358) b!7068705))

(assert (= (and d!2210545 (not c!1318358)) b!7068706))

(declare-fun m!7793292 () Bool)

(assert (=> b!7068706 m!7793292))

(declare-fun m!7793294 () Bool)

(assert (=> b!7068706 m!7793294))

(assert (=> b!7068206 d!2210545))

(declare-fun condSetEmpty!50174 () Bool)

(assert (=> setNonEmpty!50166 (= condSetEmpty!50174 (= setRest!50166 ((as const (Array Context!13246 Bool)) false)))))

(declare-fun setRes!50174 () Bool)

(assert (=> setNonEmpty!50166 (= tp!1941834 setRes!50174)))

(declare-fun setIsEmpty!50174 () Bool)

(assert (=> setIsEmpty!50174 setRes!50174))

(declare-fun setNonEmpty!50174 () Bool)

(declare-fun setElem!50174 () Context!13246)

(declare-fun e!4249667 () Bool)

(declare-fun tp!1941897 () Bool)

(assert (=> setNonEmpty!50174 (= setRes!50174 (and tp!1941897 (inv!86926 setElem!50174) e!4249667))))

(declare-fun setRest!50174 () (InoxSet Context!13246))

(assert (=> setNonEmpty!50174 (= setRest!50166 ((_ map or) (store ((as const (Array Context!13246 Bool)) false) setElem!50174 true) setRest!50174))))

(declare-fun b!7068707 () Bool)

(declare-fun tp!1941898 () Bool)

(assert (=> b!7068707 (= e!4249667 tp!1941898)))

(assert (= (and setNonEmpty!50166 condSetEmpty!50174) setIsEmpty!50174))

(assert (= (and setNonEmpty!50166 (not condSetEmpty!50174)) setNonEmpty!50174))

(assert (= setNonEmpty!50174 b!7068707))

(declare-fun m!7793296 () Bool)

(assert (=> setNonEmpty!50174 m!7793296))

(declare-fun b!7068708 () Bool)

(declare-fun e!4249668 () Bool)

(declare-fun tp!1941899 () Bool)

(declare-fun tp!1941900 () Bool)

(assert (=> b!7068708 (= e!4249668 (and tp!1941899 tp!1941900))))

(assert (=> b!7068228 (= tp!1941835 e!4249668)))

(assert (= (and b!7068228 ((_ is Cons!68283) (exprs!7123 setElem!50166))) b!7068708))

(declare-fun b!7068720 () Bool)

(declare-fun e!4249671 () Bool)

(declare-fun tp!1941914 () Bool)

(declare-fun tp!1941915 () Bool)

(assert (=> b!7068720 (= e!4249671 (and tp!1941914 tp!1941915))))

(declare-fun b!7068721 () Bool)

(declare-fun tp!1941913 () Bool)

(assert (=> b!7068721 (= e!4249671 tp!1941913)))

(declare-fun b!7068719 () Bool)

(assert (=> b!7068719 (= e!4249671 tp_is_empty!44479)))

(declare-fun b!7068722 () Bool)

(declare-fun tp!1941911 () Bool)

(declare-fun tp!1941912 () Bool)

(assert (=> b!7068722 (= e!4249671 (and tp!1941911 tp!1941912))))

(assert (=> b!7068229 (= tp!1941836 e!4249671)))

(assert (= (and b!7068229 ((_ is ElementMatch!17627) (h!74731 (exprs!7123 ct2!306)))) b!7068719))

(assert (= (and b!7068229 ((_ is Concat!26472) (h!74731 (exprs!7123 ct2!306)))) b!7068720))

(assert (= (and b!7068229 ((_ is Star!17627) (h!74731 (exprs!7123 ct2!306)))) b!7068721))

(assert (= (and b!7068229 ((_ is Union!17627) (h!74731 (exprs!7123 ct2!306)))) b!7068722))

(declare-fun b!7068723 () Bool)

(declare-fun e!4249672 () Bool)

(declare-fun tp!1941916 () Bool)

(declare-fun tp!1941917 () Bool)

(assert (=> b!7068723 (= e!4249672 (and tp!1941916 tp!1941917))))

(assert (=> b!7068229 (= tp!1941837 e!4249672)))

(assert (= (and b!7068229 ((_ is Cons!68283) (t!382188 (exprs!7123 ct2!306)))) b!7068723))

(declare-fun b!7068724 () Bool)

(declare-fun e!4249673 () Bool)

(declare-fun tp!1941918 () Bool)

(assert (=> b!7068724 (= e!4249673 (and tp_is_empty!44479 tp!1941918))))

(assert (=> b!7068223 (= tp!1941829 e!4249673)))

(assert (= (and b!7068223 ((_ is Cons!68284) (t!382189 (t!382189 s!7408)))) b!7068724))

(declare-fun b!7068726 () Bool)

(declare-fun e!4249674 () Bool)

(declare-fun tp!1941922 () Bool)

(declare-fun tp!1941923 () Bool)

(assert (=> b!7068726 (= e!4249674 (and tp!1941922 tp!1941923))))

(declare-fun b!7068727 () Bool)

(declare-fun tp!1941921 () Bool)

(assert (=> b!7068727 (= e!4249674 tp!1941921)))

(declare-fun b!7068725 () Bool)

(assert (=> b!7068725 (= e!4249674 tp_is_empty!44479)))

(declare-fun b!7068728 () Bool)

(declare-fun tp!1941919 () Bool)

(declare-fun tp!1941920 () Bool)

(assert (=> b!7068728 (= e!4249674 (and tp!1941919 tp!1941920))))

(assert (=> b!7068218 (= tp!1941825 e!4249674)))

(assert (= (and b!7068218 ((_ is ElementMatch!17627) (h!74731 (exprs!7123 setElem!50160)))) b!7068725))

(assert (= (and b!7068218 ((_ is Concat!26472) (h!74731 (exprs!7123 setElem!50160)))) b!7068726))

(assert (= (and b!7068218 ((_ is Star!17627) (h!74731 (exprs!7123 setElem!50160)))) b!7068727))

(assert (= (and b!7068218 ((_ is Union!17627) (h!74731 (exprs!7123 setElem!50160)))) b!7068728))

(declare-fun b!7068729 () Bool)

(declare-fun e!4249675 () Bool)

(declare-fun tp!1941924 () Bool)

(declare-fun tp!1941925 () Bool)

(assert (=> b!7068729 (= e!4249675 (and tp!1941924 tp!1941925))))

(assert (=> b!7068218 (= tp!1941826 e!4249675)))

(assert (= (and b!7068218 ((_ is Cons!68283) (t!382188 (exprs!7123 setElem!50160)))) b!7068729))

(declare-fun b_lambda!269823 () Bool)

(assert (= b_lambda!269821 (or d!2210189 b_lambda!269823)))

(declare-fun bs!1880285 () Bool)

(declare-fun d!2210547 () Bool)

(assert (= bs!1880285 (and d!2210547 d!2210189)))

(assert (=> bs!1880285 (= (dynLambda!27758 lambda!424522 (h!74731 (exprs!7123 setElem!50160))) (validRegex!8963 (h!74731 (exprs!7123 setElem!50160))))))

(declare-fun m!7793298 () Bool)

(assert (=> bs!1880285 m!7793298))

(assert (=> b!7068699 d!2210547))

(declare-fun b_lambda!269825 () Bool)

(assert (= b_lambda!269813 (or b!7067929 b_lambda!269825)))

(assert (=> d!2210501 d!2210205))

(declare-fun b_lambda!269827 () Bool)

(assert (= b_lambda!269815 (or b!7067931 b_lambda!269827)))

(declare-fun bs!1880286 () Bool)

(declare-fun d!2210549 () Bool)

(assert (= bs!1880286 (and d!2210549 b!7067931)))

(assert (=> bs!1880286 (= (dynLambda!27758 lambda!424491 (h!74731 (++!15744 (exprs!7123 lt!2542928) (exprs!7123 ct2!306)))) (validRegex!8963 (h!74731 (++!15744 (exprs!7123 lt!2542928) (exprs!7123 ct2!306)))))))

(declare-fun m!7793300 () Bool)

(assert (=> bs!1880286 m!7793300))

(assert (=> b!7068683 d!2210549))

(declare-fun b_lambda!269829 () Bool)

(assert (= b_lambda!269807 (or b!7067928 b_lambda!269829)))

(declare-fun bs!1880287 () Bool)

(declare-fun d!2210551 () Bool)

(assert (= bs!1880287 (and d!2210551 b!7067928)))

(assert (=> bs!1880287 (= (dynLambda!27755 lambda!424489 (h!74733 (toList!10968 lt!2542932))) (matchZipper!3167 (store ((as const (Array Context!13246 Bool)) false) (h!74733 (toList!10968 lt!2542932)) true) s!7408))))

(declare-fun m!7793302 () Bool)

(assert (=> bs!1880287 m!7793302))

(assert (=> bs!1880287 m!7793302))

(declare-fun m!7793304 () Bool)

(assert (=> bs!1880287 m!7793304))

(assert (=> b!7068522 d!2210551))

(declare-fun b_lambda!269831 () Bool)

(assert (= b_lambda!269817 (or b!7067931 b_lambda!269831)))

(declare-fun bs!1880288 () Bool)

(declare-fun d!2210553 () Bool)

(assert (= bs!1880288 (and d!2210553 b!7067931)))

(assert (=> bs!1880288 (= (dynLambda!27758 lambda!424491 (h!74731 (exprs!7123 lt!2542928))) (validRegex!8963 (h!74731 (exprs!7123 lt!2542928))))))

(assert (=> bs!1880288 m!7792274))

(assert (=> b!7068685 d!2210553))

(declare-fun b_lambda!269833 () Bool)

(assert (= b_lambda!269819 (or d!2210169 b_lambda!269833)))

(declare-fun bs!1880289 () Bool)

(declare-fun d!2210555 () Bool)

(assert (= bs!1880289 (and d!2210555 d!2210169)))

(assert (=> bs!1880289 (= (dynLambda!27758 lambda!424518 (h!74731 (exprs!7123 ct2!306))) (validRegex!8963 (h!74731 (exprs!7123 ct2!306))))))

(declare-fun m!7793306 () Bool)

(assert (=> bs!1880289 m!7793306))

(assert (=> b!7068693 d!2210555))

(declare-fun b_lambda!269835 () Bool)

(assert (= b_lambda!269811 (or d!2210199 b_lambda!269835)))

(declare-fun bs!1880290 () Bool)

(declare-fun d!2210557 () Bool)

(assert (= bs!1880290 (and d!2210557 d!2210199)))

(assert (=> bs!1880290 (= (dynLambda!27755 lambda!424528 (h!74733 lt!2542924)) (not (dynLambda!27755 lambda!424489 (h!74733 lt!2542924))))))

(declare-fun b_lambda!269845 () Bool)

(assert (=> (not b_lambda!269845) (not bs!1880290)))

(declare-fun m!7793308 () Bool)

(assert (=> bs!1880290 m!7793308))

(assert (=> b!7068650 d!2210557))

(declare-fun b_lambda!269837 () Bool)

(assert (= b_lambda!269803 (or b!7067931 b_lambda!269837)))

(declare-fun bs!1880291 () Bool)

(declare-fun d!2210559 () Bool)

(assert (= bs!1880291 (and d!2210559 b!7067931)))

(assert (=> bs!1880291 (= (dynLambda!27758 lambda!424491 (h!74731 lt!2542935)) (validRegex!8963 (h!74731 lt!2542935)))))

(declare-fun m!7793310 () Bool)

(assert (=> bs!1880291 m!7793310))

(assert (=> b!7068501 d!2210559))

(declare-fun b_lambda!269839 () Bool)

(assert (= b_lambda!269801 (or b!7067931 b_lambda!269839)))

(declare-fun bs!1880292 () Bool)

(declare-fun d!2210561 () Bool)

(assert (= bs!1880292 (and d!2210561 b!7067931)))

(assert (=> bs!1880292 (= (dynLambda!27758 lambda!424491 (h!74731 (++!15744 lt!2542935 (exprs!7123 ct2!306)))) (validRegex!8963 (h!74731 (++!15744 lt!2542935 (exprs!7123 ct2!306)))))))

(declare-fun m!7793312 () Bool)

(assert (=> bs!1880292 m!7793312))

(assert (=> b!7068499 d!2210561))

(declare-fun b_lambda!269841 () Bool)

(assert (= b_lambda!269809 (or b!7067931 b_lambda!269841)))

(declare-fun bs!1880293 () Bool)

(declare-fun d!2210563 () Bool)

(assert (= bs!1880293 (and d!2210563 b!7067931)))

(declare-fun lt!2543042 () Unit!161962)

(assert (=> bs!1880293 (= lt!2543042 (lemmaConcatPreservesForall!938 (exprs!7123 a!13593) (exprs!7123 ct2!306) lambda!424491))))

(assert (=> bs!1880293 (= (dynLambda!27753 lambda!424490 a!13593) (Context!13247 (++!15744 (exprs!7123 a!13593) (exprs!7123 ct2!306))))))

(declare-fun m!7793314 () Bool)

(assert (=> bs!1880293 m!7793314))

(declare-fun m!7793316 () Bool)

(assert (=> bs!1880293 m!7793316))

(assert (=> d!2210453 d!2210563))

(declare-fun b_lambda!269843 () Bool)

(assert (= b_lambda!269805 (or b!7067928 b_lambda!269843)))

(declare-fun bs!1880294 () Bool)

(declare-fun d!2210565 () Bool)

(assert (= bs!1880294 (and d!2210565 b!7067928)))

(assert (=> bs!1880294 (= (dynLambda!27755 lambda!424489 lt!2543027) (matchZipper!3167 (store ((as const (Array Context!13246 Bool)) false) lt!2543027 true) s!7408))))

(declare-fun m!7793318 () Bool)

(assert (=> bs!1880294 m!7793318))

(assert (=> bs!1880294 m!7793318))

(declare-fun m!7793320 () Bool)

(assert (=> bs!1880294 m!7793320))

(assert (=> d!2210407 d!2210565))

(check-sat (not b!7068494) (not d!2210437) (not bs!1880286) (not b!7068642) (not b!7068700) (not b!7068669) (not b!7068641) (not d!2210449) (not d!2210401) (not b!7068594) (not d!2210467) (not b!7068720) (not b_lambda!269751) (not bm!642414) (not b!7068520) (not d!2210535) (not b_lambda!269749) (not b!7068645) (not bm!642402) (not setNonEmpty!50173) (not d!2210447) (not d!2210533) (not bm!642434) (not b!7068684) (not b!7068707) (not b!7068686) (not b!7068638) (not d!2210435) (not b_lambda!269843) tp_is_empty!44479 (not bm!642423) (not bm!642417) (not b!7068484) (not bs!1880285) (not d!2210427) (not bm!642411) (not b!7068694) (not b!7068574) (not b_lambda!269831) (not b!7068691) (not d!2210489) (not b_lambda!269825) (not b!7068614) (not d!2210425) (not d!2210419) (not b_lambda!269839) (not b!7068665) (not b!7068697) (not d!2210529) (not bs!1880287) (not d!2210517) (not bm!642421) (not bm!642433) (not b!7068722) (not d!2210411) (not b!7068576) (not d!2210525) (not b_lambda!269833) (not b!7068600) (not bs!1880289) (not bm!642430) (not bm!642416) (not d!2210507) (not b!7068724) (not b_lambda!269753) (not b_lambda!269835) (not d!2210469) (not bm!642405) (not b!7068566) (not b!7068503) (not d!2210423) (not b!7068636) (not bs!1880294) (not b!7068696) (not b!7068727) (not bs!1880293) (not d!2210505) (not d!2210451) (not b!7068676) (not b!7068555) (not b!7068728) (not bm!642431) (not b!7068640) (not b!7068602) (not d!2210391) (not d!2210487) (not b!7068519) (not b!7068556) (not b!7068692) (not b!7068558) (not b_lambda!269837) (not b!7068485) (not d!2210475) (not b!7068690) (not d!2210407) (not bs!1880291) (not b!7068615) (not b!7068567) (not b!7068596) (not b!7068562) (not bs!1880288) (not bm!642413) (not d!2210465) (not d!2210523) (not b!7068651) (not bm!642408) (not b!7068560) (not b!7068723) (not d!2210429) (not b!7068704) (not b!7068598) (not b!7068706) (not b!7068544) (not b!7068729) (not d!2210499) (not b!7068504) (not d!2210409) (not d!2210537) (not d!2210527) (not b!7068559) (not bs!1880292) (not bm!642424) (not bm!642403) (not b_lambda!269829) (not b!7068597) (not d!2210387) (not d!2210455) (not d!2210453) (not b!7068492) (not d!2210433) (not b!7068500) (not b!7068629) (not b!7068607) (not setNonEmpty!50174) (not b!7068502) (not b_lambda!269845) (not b!7068563) (not b!7068493) (not b!7068688) (not bm!642407) (not bm!642428) (not d!2210417) (not b!7068592) (not d!2210501) (not b!7068721) (not d!2210395) (not d!2210431) (not b!7068613) (not b_lambda!269841) (not d!2210399) (not b!7068675) (not b!7068708) (not b!7068682) (not b!7068557) (not bm!642418) (not d!2210503) (not b_lambda!269823) (not b!7068518) (not bm!642426) (not d!2210513) (not b!7068726) (not b!7068702) (not b!7068652) (not b!7068627) (not b_lambda!269827))
(check-sat)
