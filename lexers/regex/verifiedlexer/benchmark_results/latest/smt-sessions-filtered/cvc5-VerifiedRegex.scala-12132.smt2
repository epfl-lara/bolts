; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!682244 () Bool)

(assert start!682244)

(declare-fun b!7046912 () Bool)

(assert (=> b!7046912 true))

(declare-fun b!7046906 () Bool)

(assert (=> b!7046906 true))

(declare-fun b!7046909 () Bool)

(assert (=> b!7046909 true))

(declare-fun e!4236364 () Bool)

(declare-fun e!4236366 () Bool)

(assert (=> b!7046906 (= e!4236364 e!4236366)))

(declare-fun res!2876815 () Bool)

(assert (=> b!7046906 (=> res!2876815 e!4236366)))

(declare-datatypes ((C!35290 0))(
  ( (C!35291 (val!27347 Int)) )
))
(declare-datatypes ((Regex!17510 0))(
  ( (ElementMatch!17510 (c!1312246 C!35290)) (Concat!26355 (regOne!35532 Regex!17510) (regTwo!35532 Regex!17510)) (EmptyExpr!17510) (Star!17510 (reg!17839 Regex!17510)) (EmptyLang!17510) (Union!17510 (regOne!35533 Regex!17510) (regTwo!35533 Regex!17510)) )
))
(declare-datatypes ((List!68058 0))(
  ( (Nil!67934) (Cons!67934 (h!74382 Regex!17510) (t!381835 List!68058)) )
))
(declare-datatypes ((Context!13012 0))(
  ( (Context!13013 (exprs!7006 List!68058)) )
))
(declare-fun lt!2527375 () Context!13012)

(declare-fun lt!2527396 () Context!13012)

(declare-fun z1!570 () (Set Context!13012))

(declare-fun lt!2527392 () Context!13012)

(assert (=> b!7046906 (= res!2876815 (or (not (= lt!2527396 lt!2527375)) (not (set.member lt!2527392 z1!570))))))

(declare-fun ct2!306 () Context!13012)

(declare-fun ++!15591 (List!68058 List!68058) List!68058)

(assert (=> b!7046906 (= lt!2527396 (Context!13013 (++!15591 (exprs!7006 lt!2527392) (exprs!7006 ct2!306))))))

(declare-fun lambda!417991 () Int)

(declare-datatypes ((Unit!161706 0))(
  ( (Unit!161707) )
))
(declare-fun lt!2527380 () Unit!161706)

(declare-fun lemmaConcatPreservesForall!831 (List!68058 List!68058 Int) Unit!161706)

(assert (=> b!7046906 (= lt!2527380 (lemmaConcatPreservesForall!831 (exprs!7006 lt!2527392) (exprs!7006 ct2!306) lambda!417991))))

(declare-fun lambda!417990 () Int)

(declare-fun mapPost2!351 ((Set Context!13012) Int Context!13012) Context!13012)

(assert (=> b!7046906 (= lt!2527392 (mapPost2!351 z1!570 lambda!417990 lt!2527375))))

(declare-fun b!7046907 () Bool)

(declare-fun res!2876823 () Bool)

(declare-fun e!4236371 () Bool)

(assert (=> b!7046907 (=> res!2876823 e!4236371)))

(declare-fun lt!2527394 () (Set Context!13012))

(declare-datatypes ((List!68059 0))(
  ( (Nil!67935) (Cons!67935 (h!74383 C!35290) (t!381836 List!68059)) )
))
(declare-datatypes ((tuple2!68150 0))(
  ( (tuple2!68151 (_1!37378 List!68059) (_2!37378 List!68059)) )
))
(declare-fun lt!2527376 () tuple2!68150)

(declare-fun matchZipper!3050 ((Set Context!13012) List!68059) Bool)

(assert (=> b!7046907 (= res!2876823 (not (matchZipper!3050 lt!2527394 (_2!37378 lt!2527376))))))

(declare-fun b!7046908 () Bool)

(declare-fun e!4236365 () Bool)

(declare-fun e!4236369 () Bool)

(assert (=> b!7046908 (= e!4236365 e!4236369)))

(declare-fun res!2876813 () Bool)

(assert (=> b!7046908 (=> res!2876813 e!4236369)))

(declare-fun nullable!7221 (Regex!17510) Bool)

(assert (=> b!7046908 (= res!2876813 (nullable!7221 (h!74382 (exprs!7006 lt!2527392))))))

(declare-fun lt!2527383 () Context!13012)

(declare-fun lt!2527388 () List!68058)

(assert (=> b!7046908 (= lt!2527383 (Context!13013 lt!2527388))))

(declare-fun tail!13632 (List!68058) List!68058)

(assert (=> b!7046908 (= lt!2527388 (tail!13632 (exprs!7006 lt!2527392)))))

(declare-fun e!4236363 () Bool)

(assert (=> b!7046909 (= e!4236363 e!4236365)))

(declare-fun res!2876819 () Bool)

(assert (=> b!7046909 (=> res!2876819 e!4236365)))

(declare-fun lt!2527398 () (Set Context!13012))

(declare-fun s!7408 () List!68059)

(declare-fun lt!2527389 () (Set Context!13012))

(declare-fun derivationStepZipper!2966 ((Set Context!13012) C!35290) (Set Context!13012))

(assert (=> b!7046909 (= res!2876819 (not (= (derivationStepZipper!2966 lt!2527398 (h!74383 s!7408)) lt!2527389)))))

(declare-fun lambda!417992 () Int)

(declare-fun flatMap!2457 ((Set Context!13012) Int) (Set Context!13012))

(declare-fun derivationStepZipperUp!2120 (Context!13012 C!35290) (Set Context!13012))

(assert (=> b!7046909 (= (flatMap!2457 lt!2527398 lambda!417992) (derivationStepZipperUp!2120 lt!2527396 (h!74383 s!7408)))))

(declare-fun lt!2527382 () Unit!161706)

(declare-fun lemmaFlatMapOnSingletonSet!1971 ((Set Context!13012) Context!13012 Int) Unit!161706)

(assert (=> b!7046909 (= lt!2527382 (lemmaFlatMapOnSingletonSet!1971 lt!2527398 lt!2527396 lambda!417992))))

(assert (=> b!7046909 (= lt!2527389 (derivationStepZipperUp!2120 lt!2527396 (h!74383 s!7408)))))

(declare-fun lt!2527393 () Unit!161706)

(assert (=> b!7046909 (= lt!2527393 (lemmaConcatPreservesForall!831 (exprs!7006 lt!2527392) (exprs!7006 ct2!306) lambda!417991))))

(declare-fun b!7046910 () Bool)

(declare-fun ++!15592 (List!68059 List!68059) List!68059)

(assert (=> b!7046910 (= e!4236371 (= (++!15592 (_1!37378 lt!2527376) (_2!37378 lt!2527376)) (t!381836 s!7408)))))

(declare-fun b!7046911 () Bool)

(declare-fun res!2876821 () Bool)

(assert (=> b!7046911 (=> res!2876821 e!4236364)))

(declare-fun lt!2527384 () (Set Context!13012))

(assert (=> b!7046911 (= res!2876821 (not (set.member lt!2527375 lt!2527384)))))

(declare-fun setRes!49481 () Bool)

(declare-fun setNonEmpty!49481 () Bool)

(declare-fun tp!1938170 () Bool)

(declare-fun e!4236362 () Bool)

(declare-fun setElem!49481 () Context!13012)

(declare-fun inv!86635 (Context!13012) Bool)

(assert (=> setNonEmpty!49481 (= setRes!49481 (and tp!1938170 (inv!86635 setElem!49481) e!4236362))))

(declare-fun setRest!49481 () (Set Context!13012))

(assert (=> setNonEmpty!49481 (= z1!570 (set.union (set.insert setElem!49481 (as set.empty (Set Context!13012))) setRest!49481))))

(declare-fun e!4236361 () Bool)

(assert (=> b!7046912 (= e!4236361 (not e!4236364))))

(declare-fun res!2876822 () Bool)

(assert (=> b!7046912 (=> res!2876822 e!4236364)))

(declare-fun lt!2527378 () (Set Context!13012))

(assert (=> b!7046912 (= res!2876822 (not (matchZipper!3050 lt!2527378 s!7408)))))

(assert (=> b!7046912 (= lt!2527378 (set.insert lt!2527375 (as set.empty (Set Context!13012))))))

(declare-fun lambda!417989 () Int)

(declare-fun getWitness!1547 ((Set Context!13012) Int) Context!13012)

(assert (=> b!7046912 (= lt!2527375 (getWitness!1547 lt!2527384 lambda!417989))))

(declare-datatypes ((List!68060 0))(
  ( (Nil!67936) (Cons!67936 (h!74384 Context!13012) (t!381837 List!68060)) )
))
(declare-fun lt!2527379 () List!68060)

(declare-fun exists!3468 (List!68060 Int) Bool)

(assert (=> b!7046912 (exists!3468 lt!2527379 lambda!417989)))

(declare-fun lt!2527386 () Unit!161706)

(declare-fun lemmaZipperMatchesExistsMatchingContext!449 (List!68060 List!68059) Unit!161706)

(assert (=> b!7046912 (= lt!2527386 (lemmaZipperMatchesExistsMatchingContext!449 lt!2527379 s!7408))))

(declare-fun toList!10853 ((Set Context!13012)) List!68060)

(assert (=> b!7046912 (= lt!2527379 (toList!10853 lt!2527384))))

(declare-fun b!7046913 () Bool)

(declare-fun e!4236368 () Bool)

(assert (=> b!7046913 (= e!4236368 e!4236371)))

(declare-fun res!2876825 () Bool)

(assert (=> b!7046913 (=> res!2876825 e!4236371)))

(declare-fun lt!2527381 () (Set Context!13012))

(assert (=> b!7046913 (= res!2876825 (not (matchZipper!3050 lt!2527381 (_1!37378 lt!2527376))))))

(declare-datatypes ((Option!16907 0))(
  ( (None!16906) (Some!16906 (v!53196 tuple2!68150)) )
))
(declare-fun lt!2527395 () Option!16907)

(declare-fun get!23813 (Option!16907) tuple2!68150)

(assert (=> b!7046913 (= lt!2527376 (get!23813 lt!2527395))))

(declare-fun isDefined!13608 (Option!16907) Bool)

(assert (=> b!7046913 (isDefined!13608 lt!2527395)))

(declare-fun findConcatSeparationZippers!423 ((Set Context!13012) (Set Context!13012) List!68059 List!68059 List!68059) Option!16907)

(assert (=> b!7046913 (= lt!2527395 (findConcatSeparationZippers!423 lt!2527381 lt!2527394 Nil!67935 (t!381836 s!7408) (t!381836 s!7408)))))

(assert (=> b!7046913 (= lt!2527394 (set.insert ct2!306 (as set.empty (Set Context!13012))))))

(declare-fun lt!2527397 () Unit!161706)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!411 ((Set Context!13012) Context!13012 List!68059) Unit!161706)

(assert (=> b!7046913 (= lt!2527397 (lemmaConcatZipperMatchesStringThenFindConcatDefined!411 lt!2527381 ct2!306 (t!381836 s!7408)))))

(declare-fun lt!2527385 () (Set Context!13012))

(declare-fun appendTo!631 ((Set Context!13012) Context!13012) (Set Context!13012))

(assert (=> b!7046913 (= lt!2527385 (appendTo!631 lt!2527381 ct2!306))))

(declare-fun derivationStepZipperDown!2174 (Regex!17510 Context!13012 C!35290) (Set Context!13012))

(assert (=> b!7046913 (= lt!2527381 (derivationStepZipperDown!2174 (h!74382 (exprs!7006 lt!2527392)) lt!2527383 (h!74383 s!7408)))))

(declare-fun lt!2527377 () Unit!161706)

(assert (=> b!7046913 (= lt!2527377 (lemmaConcatPreservesForall!831 lt!2527388 (exprs!7006 ct2!306) lambda!417991))))

(declare-fun lt!2527391 () Unit!161706)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!87 (Context!13012 Regex!17510 C!35290 Context!13012) Unit!161706)

(assert (=> b!7046913 (= lt!2527391 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!87 lt!2527383 (h!74382 (exprs!7006 lt!2527392)) (h!74383 s!7408) ct2!306))))

(declare-fun b!7046914 () Bool)

(declare-fun res!2876820 () Bool)

(assert (=> b!7046914 (=> res!2876820 e!4236365)))

(assert (=> b!7046914 (= res!2876820 (not (is-Cons!67934 (exprs!7006 lt!2527392))))))

(declare-fun b!7046915 () Bool)

(declare-fun tp!1938172 () Bool)

(assert (=> b!7046915 (= e!4236362 tp!1938172)))

(declare-fun setIsEmpty!49481 () Bool)

(assert (=> setIsEmpty!49481 setRes!49481))

(declare-fun b!7046916 () Bool)

(declare-fun e!4236370 () Bool)

(declare-fun tp!1938171 () Bool)

(assert (=> b!7046916 (= e!4236370 tp!1938171)))

(declare-fun b!7046917 () Bool)

(assert (=> b!7046917 (= e!4236369 e!4236368)))

(declare-fun res!2876818 () Bool)

(assert (=> b!7046917 (=> res!2876818 e!4236368)))

(assert (=> b!7046917 (= res!2876818 (not (matchZipper!3050 lt!2527385 (t!381836 s!7408))))))

(assert (=> b!7046917 (= lt!2527385 (derivationStepZipperDown!2174 (h!74382 (exprs!7006 lt!2527392)) (Context!13013 (++!15591 lt!2527388 (exprs!7006 ct2!306))) (h!74383 s!7408)))))

(declare-fun lt!2527387 () Unit!161706)

(assert (=> b!7046917 (= lt!2527387 (lemmaConcatPreservesForall!831 lt!2527388 (exprs!7006 ct2!306) lambda!417991))))

(declare-fun b!7046918 () Bool)

(declare-fun res!2876816 () Bool)

(assert (=> b!7046918 (=> res!2876816 e!4236365)))

(declare-fun isEmpty!39652 (List!68058) Bool)

(assert (=> b!7046918 (= res!2876816 (isEmpty!39652 (exprs!7006 lt!2527392)))))

(declare-fun b!7046919 () Bool)

(assert (=> b!7046919 (= e!4236366 e!4236363)))

(declare-fun res!2876824 () Bool)

(assert (=> b!7046919 (=> res!2876824 e!4236363)))

(assert (=> b!7046919 (= res!2876824 (not (= lt!2527398 lt!2527378)))))

(assert (=> b!7046919 (= lt!2527398 (set.insert lt!2527396 (as set.empty (Set Context!13012))))))

(declare-fun lt!2527390 () Unit!161706)

(assert (=> b!7046919 (= lt!2527390 (lemmaConcatPreservesForall!831 (exprs!7006 lt!2527392) (exprs!7006 ct2!306) lambda!417991))))

(declare-fun b!7046920 () Bool)

(declare-fun res!2876817 () Bool)

(assert (=> b!7046920 (=> (not res!2876817) (not e!4236361))))

(assert (=> b!7046920 (= res!2876817 (is-Cons!67935 s!7408))))

(declare-fun b!7046921 () Bool)

(declare-fun e!4236367 () Bool)

(declare-fun tp_is_empty!44245 () Bool)

(declare-fun tp!1938173 () Bool)

(assert (=> b!7046921 (= e!4236367 (and tp_is_empty!44245 tp!1938173))))

(declare-fun res!2876814 () Bool)

(assert (=> start!682244 (=> (not res!2876814) (not e!4236361))))

(assert (=> start!682244 (= res!2876814 (matchZipper!3050 lt!2527384 s!7408))))

(assert (=> start!682244 (= lt!2527384 (appendTo!631 z1!570 ct2!306))))

(assert (=> start!682244 e!4236361))

(declare-fun condSetEmpty!49481 () Bool)

(assert (=> start!682244 (= condSetEmpty!49481 (= z1!570 (as set.empty (Set Context!13012))))))

(assert (=> start!682244 setRes!49481))

(assert (=> start!682244 (and (inv!86635 ct2!306) e!4236370)))

(assert (=> start!682244 e!4236367))

(assert (= (and start!682244 res!2876814) b!7046920))

(assert (= (and b!7046920 res!2876817) b!7046912))

(assert (= (and b!7046912 (not res!2876822)) b!7046911))

(assert (= (and b!7046911 (not res!2876821)) b!7046906))

(assert (= (and b!7046906 (not res!2876815)) b!7046919))

(assert (= (and b!7046919 (not res!2876824)) b!7046909))

(assert (= (and b!7046909 (not res!2876819)) b!7046914))

(assert (= (and b!7046914 (not res!2876820)) b!7046918))

(assert (= (and b!7046918 (not res!2876816)) b!7046908))

(assert (= (and b!7046908 (not res!2876813)) b!7046917))

(assert (= (and b!7046917 (not res!2876818)) b!7046913))

(assert (= (and b!7046913 (not res!2876825)) b!7046907))

(assert (= (and b!7046907 (not res!2876823)) b!7046910))

(assert (= (and start!682244 condSetEmpty!49481) setIsEmpty!49481))

(assert (= (and start!682244 (not condSetEmpty!49481)) setNonEmpty!49481))

(assert (= setNonEmpty!49481 b!7046915))

(assert (= start!682244 b!7046916))

(assert (= (and start!682244 (is-Cons!67935 s!7408)) b!7046921))

(declare-fun m!7761062 () Bool)

(assert (=> b!7046919 m!7761062))

(declare-fun m!7761064 () Bool)

(assert (=> b!7046919 m!7761064))

(declare-fun m!7761066 () Bool)

(assert (=> b!7046911 m!7761066))

(declare-fun m!7761068 () Bool)

(assert (=> b!7046910 m!7761068))

(declare-fun m!7761070 () Bool)

(assert (=> b!7046913 m!7761070))

(declare-fun m!7761072 () Bool)

(assert (=> b!7046913 m!7761072))

(declare-fun m!7761074 () Bool)

(assert (=> b!7046913 m!7761074))

(declare-fun m!7761076 () Bool)

(assert (=> b!7046913 m!7761076))

(declare-fun m!7761078 () Bool)

(assert (=> b!7046913 m!7761078))

(declare-fun m!7761080 () Bool)

(assert (=> b!7046913 m!7761080))

(declare-fun m!7761082 () Bool)

(assert (=> b!7046913 m!7761082))

(declare-fun m!7761084 () Bool)

(assert (=> b!7046913 m!7761084))

(declare-fun m!7761086 () Bool)

(assert (=> b!7046913 m!7761086))

(declare-fun m!7761088 () Bool)

(assert (=> b!7046913 m!7761088))

(declare-fun m!7761090 () Bool)

(assert (=> b!7046906 m!7761090))

(declare-fun m!7761092 () Bool)

(assert (=> b!7046906 m!7761092))

(assert (=> b!7046906 m!7761064))

(declare-fun m!7761094 () Bool)

(assert (=> b!7046906 m!7761094))

(declare-fun m!7761096 () Bool)

(assert (=> b!7046912 m!7761096))

(declare-fun m!7761098 () Bool)

(assert (=> b!7046912 m!7761098))

(declare-fun m!7761100 () Bool)

(assert (=> b!7046912 m!7761100))

(declare-fun m!7761102 () Bool)

(assert (=> b!7046912 m!7761102))

(declare-fun m!7761104 () Bool)

(assert (=> b!7046912 m!7761104))

(declare-fun m!7761106 () Bool)

(assert (=> b!7046912 m!7761106))

(assert (=> b!7046909 m!7761064))

(declare-fun m!7761108 () Bool)

(assert (=> b!7046909 m!7761108))

(declare-fun m!7761110 () Bool)

(assert (=> b!7046909 m!7761110))

(declare-fun m!7761112 () Bool)

(assert (=> b!7046909 m!7761112))

(declare-fun m!7761114 () Bool)

(assert (=> b!7046909 m!7761114))

(declare-fun m!7761116 () Bool)

(assert (=> setNonEmpty!49481 m!7761116))

(declare-fun m!7761118 () Bool)

(assert (=> start!682244 m!7761118))

(declare-fun m!7761120 () Bool)

(assert (=> start!682244 m!7761120))

(declare-fun m!7761122 () Bool)

(assert (=> start!682244 m!7761122))

(declare-fun m!7761124 () Bool)

(assert (=> b!7046907 m!7761124))

(declare-fun m!7761126 () Bool)

(assert (=> b!7046918 m!7761126))

(declare-fun m!7761128 () Bool)

(assert (=> b!7046917 m!7761128))

(declare-fun m!7761130 () Bool)

(assert (=> b!7046917 m!7761130))

(declare-fun m!7761132 () Bool)

(assert (=> b!7046917 m!7761132))

(assert (=> b!7046917 m!7761088))

(declare-fun m!7761134 () Bool)

(assert (=> b!7046908 m!7761134))

(declare-fun m!7761136 () Bool)

(assert (=> b!7046908 m!7761136))

(push 1)

(assert (not b!7046908))

(assert (not b!7046912))

(assert (not b!7046921))

(assert (not b!7046918))

(assert (not setNonEmpty!49481))

(assert (not start!682244))

(assert (not b!7046907))

(assert (not b!7046909))

(assert (not b!7046913))

(assert tp_is_empty!44245)

(assert (not b!7046917))

(assert (not b!7046906))

(assert (not b!7046915))

(assert (not b!7046916))

(assert (not b!7046910))

(assert (not b!7046919))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1875026 () Bool)

(declare-fun d!2201091 () Bool)

(assert (= bs!1875026 (and d!2201091 b!7046912)))

(declare-fun lambda!418019 () Int)

(assert (=> bs!1875026 (not (= lambda!418019 lambda!417989))))

(assert (=> d!2201091 true))

(declare-fun order!28241 () Int)

(declare-fun dynLambda!27513 (Int Int) Int)

(assert (=> d!2201091 (< (dynLambda!27513 order!28241 lambda!417989) (dynLambda!27513 order!28241 lambda!418019))))

(declare-fun forall!16442 (List!68060 Int) Bool)

(assert (=> d!2201091 (= (exists!3468 lt!2527379 lambda!417989) (not (forall!16442 lt!2527379 lambda!418019)))))

(declare-fun bs!1875027 () Bool)

(assert (= bs!1875027 d!2201091))

(declare-fun m!7761214 () Bool)

(assert (=> bs!1875027 m!7761214))

(assert (=> b!7046912 d!2201091))

(declare-fun d!2201093 () Bool)

(declare-fun e!4236407 () Bool)

(assert (=> d!2201093 e!4236407))

(declare-fun res!2876868 () Bool)

(assert (=> d!2201093 (=> (not res!2876868) (not e!4236407))))

(declare-fun lt!2527475 () List!68060)

(declare-fun noDuplicate!2658 (List!68060) Bool)

(assert (=> d!2201093 (= res!2876868 (noDuplicate!2658 lt!2527475))))

(declare-fun choose!53576 ((Set Context!13012)) List!68060)

(assert (=> d!2201093 (= lt!2527475 (choose!53576 lt!2527384))))

(assert (=> d!2201093 (= (toList!10853 lt!2527384) lt!2527475)))

(declare-fun b!7046986 () Bool)

(declare-fun content!13615 (List!68060) (Set Context!13012))

(assert (=> b!7046986 (= e!4236407 (= (content!13615 lt!2527475) lt!2527384))))

(assert (= (and d!2201093 res!2876868) b!7046986))

(declare-fun m!7761216 () Bool)

(assert (=> d!2201093 m!7761216))

(declare-fun m!7761218 () Bool)

(assert (=> d!2201093 m!7761218))

(declare-fun m!7761220 () Bool)

(assert (=> b!7046986 m!7761220))

(assert (=> b!7046912 d!2201093))

(declare-fun bs!1875028 () Bool)

(declare-fun d!2201095 () Bool)

(assert (= bs!1875028 (and d!2201095 b!7046912)))

(declare-fun lambda!418022 () Int)

(assert (=> bs!1875028 (= lambda!418022 lambda!417989)))

(declare-fun bs!1875029 () Bool)

(assert (= bs!1875029 (and d!2201095 d!2201091)))

(assert (=> bs!1875029 (not (= lambda!418022 lambda!418019))))

(assert (=> d!2201095 true))

(assert (=> d!2201095 (exists!3468 lt!2527379 lambda!418022)))

(declare-fun lt!2527478 () Unit!161706)

(declare-fun choose!53577 (List!68060 List!68059) Unit!161706)

(assert (=> d!2201095 (= lt!2527478 (choose!53577 lt!2527379 s!7408))))

(assert (=> d!2201095 (matchZipper!3050 (content!13615 lt!2527379) s!7408)))

(assert (=> d!2201095 (= (lemmaZipperMatchesExistsMatchingContext!449 lt!2527379 s!7408) lt!2527478)))

(declare-fun bs!1875030 () Bool)

(assert (= bs!1875030 d!2201095))

(declare-fun m!7761222 () Bool)

(assert (=> bs!1875030 m!7761222))

(declare-fun m!7761224 () Bool)

(assert (=> bs!1875030 m!7761224))

(declare-fun m!7761226 () Bool)

(assert (=> bs!1875030 m!7761226))

(assert (=> bs!1875030 m!7761226))

(declare-fun m!7761228 () Bool)

(assert (=> bs!1875030 m!7761228))

(assert (=> b!7046912 d!2201095))

(declare-fun d!2201097 () Bool)

(declare-fun e!4236410 () Bool)

(assert (=> d!2201097 e!4236410))

(declare-fun res!2876871 () Bool)

(assert (=> d!2201097 (=> (not res!2876871) (not e!4236410))))

(declare-fun lt!2527481 () Context!13012)

(declare-fun dynLambda!27514 (Int Context!13012) Bool)

(assert (=> d!2201097 (= res!2876871 (dynLambda!27514 lambda!417989 lt!2527481))))

(declare-fun getWitness!1549 (List!68060 Int) Context!13012)

(assert (=> d!2201097 (= lt!2527481 (getWitness!1549 (toList!10853 lt!2527384) lambda!417989))))

(declare-fun exists!3470 ((Set Context!13012) Int) Bool)

(assert (=> d!2201097 (exists!3470 lt!2527384 lambda!417989)))

(assert (=> d!2201097 (= (getWitness!1547 lt!2527384 lambda!417989) lt!2527481)))

(declare-fun b!7046989 () Bool)

(assert (=> b!7046989 (= e!4236410 (set.member lt!2527481 lt!2527384))))

(assert (= (and d!2201097 res!2876871) b!7046989))

(declare-fun b_lambda!267803 () Bool)

(assert (=> (not b_lambda!267803) (not d!2201097)))

(declare-fun m!7761230 () Bool)

(assert (=> d!2201097 m!7761230))

(assert (=> d!2201097 m!7761098))

(assert (=> d!2201097 m!7761098))

(declare-fun m!7761232 () Bool)

(assert (=> d!2201097 m!7761232))

(declare-fun m!7761234 () Bool)

(assert (=> d!2201097 m!7761234))

(declare-fun m!7761236 () Bool)

(assert (=> b!7046989 m!7761236))

(assert (=> b!7046912 d!2201097))

(declare-fun d!2201099 () Bool)

(declare-fun c!1312260 () Bool)

(declare-fun isEmpty!39654 (List!68059) Bool)

(assert (=> d!2201099 (= c!1312260 (isEmpty!39654 s!7408))))

(declare-fun e!4236413 () Bool)

(assert (=> d!2201099 (= (matchZipper!3050 lt!2527378 s!7408) e!4236413)))

(declare-fun b!7046994 () Bool)

(declare-fun nullableZipper!2612 ((Set Context!13012)) Bool)

(assert (=> b!7046994 (= e!4236413 (nullableZipper!2612 lt!2527378))))

(declare-fun b!7046995 () Bool)

(declare-fun head!14309 (List!68059) C!35290)

(declare-fun tail!13634 (List!68059) List!68059)

(assert (=> b!7046995 (= e!4236413 (matchZipper!3050 (derivationStepZipper!2966 lt!2527378 (head!14309 s!7408)) (tail!13634 s!7408)))))

(assert (= (and d!2201099 c!1312260) b!7046994))

(assert (= (and d!2201099 (not c!1312260)) b!7046995))

(declare-fun m!7761238 () Bool)

(assert (=> d!2201099 m!7761238))

(declare-fun m!7761240 () Bool)

(assert (=> b!7046994 m!7761240))

(declare-fun m!7761242 () Bool)

(assert (=> b!7046995 m!7761242))

(assert (=> b!7046995 m!7761242))

(declare-fun m!7761244 () Bool)

(assert (=> b!7046995 m!7761244))

(declare-fun m!7761246 () Bool)

(assert (=> b!7046995 m!7761246))

(assert (=> b!7046995 m!7761244))

(assert (=> b!7046995 m!7761246))

(declare-fun m!7761248 () Bool)

(assert (=> b!7046995 m!7761248))

(assert (=> b!7046912 d!2201099))

(declare-fun bs!1875031 () Bool)

(declare-fun d!2201101 () Bool)

(assert (= bs!1875031 (and d!2201101 b!7046906)))

(declare-fun lambda!418025 () Int)

(assert (=> bs!1875031 (= lambda!418025 lambda!417991)))

(declare-fun forall!16443 (List!68058 Int) Bool)

(assert (=> d!2201101 (= (inv!86635 setElem!49481) (forall!16443 (exprs!7006 setElem!49481) lambda!418025))))

(declare-fun bs!1875032 () Bool)

(assert (= bs!1875032 d!2201101))

(declare-fun m!7761250 () Bool)

(assert (=> bs!1875032 m!7761250))

(assert (=> setNonEmpty!49481 d!2201101))

(declare-fun d!2201103 () Bool)

(declare-fun isEmpty!39655 (Option!16907) Bool)

(assert (=> d!2201103 (= (isDefined!13608 lt!2527395) (not (isEmpty!39655 lt!2527395)))))

(declare-fun bs!1875033 () Bool)

(assert (= bs!1875033 d!2201103))

(declare-fun m!7761252 () Bool)

(assert (=> bs!1875033 m!7761252))

(assert (=> b!7046913 d!2201103))

(declare-fun bs!1875034 () Bool)

(declare-fun d!2201105 () Bool)

(assert (= bs!1875034 (and d!2201105 b!7046906)))

(declare-fun lambda!418028 () Int)

(assert (=> bs!1875034 (= lambda!418028 lambda!417991)))

(declare-fun bs!1875035 () Bool)

(assert (= bs!1875035 (and d!2201105 d!2201101)))

(assert (=> bs!1875035 (= lambda!418028 lambda!418025)))

(assert (=> d!2201105 (= (derivationStepZipperDown!2174 (h!74382 (exprs!7006 lt!2527392)) (Context!13013 (++!15591 (exprs!7006 lt!2527383) (exprs!7006 ct2!306))) (h!74383 s!7408)) (appendTo!631 (derivationStepZipperDown!2174 (h!74382 (exprs!7006 lt!2527392)) lt!2527383 (h!74383 s!7408)) ct2!306))))

(declare-fun lt!2527487 () Unit!161706)

(assert (=> d!2201105 (= lt!2527487 (lemmaConcatPreservesForall!831 (exprs!7006 lt!2527383) (exprs!7006 ct2!306) lambda!418028))))

(declare-fun lt!2527486 () Unit!161706)

(declare-fun choose!53578 (Context!13012 Regex!17510 C!35290 Context!13012) Unit!161706)

(assert (=> d!2201105 (= lt!2527486 (choose!53578 lt!2527383 (h!74382 (exprs!7006 lt!2527392)) (h!74383 s!7408) ct2!306))))

(declare-fun validRegex!8950 (Regex!17510) Bool)

(assert (=> d!2201105 (validRegex!8950 (h!74382 (exprs!7006 lt!2527392)))))

(assert (=> d!2201105 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!87 lt!2527383 (h!74382 (exprs!7006 lt!2527392)) (h!74383 s!7408) ct2!306) lt!2527486)))

(declare-fun bs!1875036 () Bool)

(assert (= bs!1875036 d!2201105))

(declare-fun m!7761254 () Bool)

(assert (=> bs!1875036 m!7761254))

(assert (=> bs!1875036 m!7761072))

(declare-fun m!7761256 () Bool)

(assert (=> bs!1875036 m!7761256))

(declare-fun m!7761258 () Bool)

(assert (=> bs!1875036 m!7761258))

(declare-fun m!7761260 () Bool)

(assert (=> bs!1875036 m!7761260))

(declare-fun m!7761262 () Bool)

(assert (=> bs!1875036 m!7761262))

(assert (=> bs!1875036 m!7761072))

(declare-fun m!7761264 () Bool)

(assert (=> bs!1875036 m!7761264))

(assert (=> b!7046913 d!2201105))

(declare-fun d!2201107 () Bool)

(declare-fun c!1312262 () Bool)

(assert (=> d!2201107 (= c!1312262 (isEmpty!39654 (_1!37378 lt!2527376)))))

(declare-fun e!4236414 () Bool)

(assert (=> d!2201107 (= (matchZipper!3050 lt!2527381 (_1!37378 lt!2527376)) e!4236414)))

(declare-fun b!7046996 () Bool)

(assert (=> b!7046996 (= e!4236414 (nullableZipper!2612 lt!2527381))))

(declare-fun b!7046997 () Bool)

(assert (=> b!7046997 (= e!4236414 (matchZipper!3050 (derivationStepZipper!2966 lt!2527381 (head!14309 (_1!37378 lt!2527376))) (tail!13634 (_1!37378 lt!2527376))))))

(assert (= (and d!2201107 c!1312262) b!7046996))

(assert (= (and d!2201107 (not c!1312262)) b!7046997))

(declare-fun m!7761266 () Bool)

(assert (=> d!2201107 m!7761266))

(declare-fun m!7761268 () Bool)

(assert (=> b!7046996 m!7761268))

(declare-fun m!7761270 () Bool)

(assert (=> b!7046997 m!7761270))

(assert (=> b!7046997 m!7761270))

(declare-fun m!7761272 () Bool)

(assert (=> b!7046997 m!7761272))

(declare-fun m!7761274 () Bool)

(assert (=> b!7046997 m!7761274))

(assert (=> b!7046997 m!7761272))

(assert (=> b!7046997 m!7761274))

(declare-fun m!7761276 () Bool)

(assert (=> b!7046997 m!7761276))

(assert (=> b!7046913 d!2201107))

(declare-fun bs!1875037 () Bool)

(declare-fun d!2201109 () Bool)

(assert (= bs!1875037 (and d!2201109 b!7046906)))

(declare-fun lambda!418033 () Int)

(assert (=> bs!1875037 (= lambda!418033 lambda!417990)))

(assert (=> d!2201109 true))

(declare-fun map!15823 ((Set Context!13012) Int) (Set Context!13012))

(assert (=> d!2201109 (= (appendTo!631 lt!2527381 ct2!306) (map!15823 lt!2527381 lambda!418033))))

(declare-fun bs!1875038 () Bool)

(assert (= bs!1875038 d!2201109))

(declare-fun m!7761278 () Bool)

(assert (=> bs!1875038 m!7761278))

(assert (=> b!7046913 d!2201109))

(declare-fun d!2201111 () Bool)

(assert (=> d!2201111 (isDefined!13608 (findConcatSeparationZippers!423 lt!2527381 (set.insert ct2!306 (as set.empty (Set Context!13012))) Nil!67935 (t!381836 s!7408) (t!381836 s!7408)))))

(declare-fun lt!2527492 () Unit!161706)

(declare-fun choose!53579 ((Set Context!13012) Context!13012 List!68059) Unit!161706)

(assert (=> d!2201111 (= lt!2527492 (choose!53579 lt!2527381 ct2!306 (t!381836 s!7408)))))

(assert (=> d!2201111 (matchZipper!3050 (appendTo!631 lt!2527381 ct2!306) (t!381836 s!7408))))

(assert (=> d!2201111 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!411 lt!2527381 ct2!306 (t!381836 s!7408)) lt!2527492)))

(declare-fun bs!1875039 () Bool)

(assert (= bs!1875039 d!2201111))

(declare-fun m!7761280 () Bool)

(assert (=> bs!1875039 m!7761280))

(declare-fun m!7761282 () Bool)

(assert (=> bs!1875039 m!7761282))

(declare-fun m!7761284 () Bool)

(assert (=> bs!1875039 m!7761284))

(assert (=> bs!1875039 m!7761074))

(assert (=> bs!1875039 m!7761280))

(assert (=> bs!1875039 m!7761074))

(assert (=> bs!1875039 m!7761084))

(declare-fun m!7761286 () Bool)

(assert (=> bs!1875039 m!7761286))

(assert (=> bs!1875039 m!7761084))

(assert (=> b!7046913 d!2201111))

(declare-fun d!2201113 () Bool)

(assert (=> d!2201113 (forall!16443 (++!15591 lt!2527388 (exprs!7006 ct2!306)) lambda!417991)))

(declare-fun lt!2527495 () Unit!161706)

(declare-fun choose!53580 (List!68058 List!68058 Int) Unit!161706)

(assert (=> d!2201113 (= lt!2527495 (choose!53580 lt!2527388 (exprs!7006 ct2!306) lambda!417991))))

(assert (=> d!2201113 (forall!16443 lt!2527388 lambda!417991)))

(assert (=> d!2201113 (= (lemmaConcatPreservesForall!831 lt!2527388 (exprs!7006 ct2!306) lambda!417991) lt!2527495)))

(declare-fun bs!1875040 () Bool)

(assert (= bs!1875040 d!2201113))

(assert (=> bs!1875040 m!7761130))

(assert (=> bs!1875040 m!7761130))

(declare-fun m!7761288 () Bool)

(assert (=> bs!1875040 m!7761288))

(declare-fun m!7761290 () Bool)

(assert (=> bs!1875040 m!7761290))

(declare-fun m!7761292 () Bool)

(assert (=> bs!1875040 m!7761292))

(assert (=> b!7046913 d!2201113))

(declare-fun d!2201115 () Bool)

(declare-fun e!4236435 () Bool)

(assert (=> d!2201115 e!4236435))

(declare-fun res!2876887 () Bool)

(assert (=> d!2201115 (=> res!2876887 e!4236435)))

(declare-fun e!4236436 () Bool)

(assert (=> d!2201115 (= res!2876887 e!4236436)))

(declare-fun res!2876890 () Bool)

(assert (=> d!2201115 (=> (not res!2876890) (not e!4236436))))

(declare-fun lt!2527504 () Option!16907)

(assert (=> d!2201115 (= res!2876890 (isDefined!13608 lt!2527504))))

(declare-fun e!4236438 () Option!16907)

(assert (=> d!2201115 (= lt!2527504 e!4236438)))

(declare-fun c!1312275 () Bool)

(declare-fun e!4236434 () Bool)

(assert (=> d!2201115 (= c!1312275 e!4236434)))

(declare-fun res!2876888 () Bool)

(assert (=> d!2201115 (=> (not res!2876888) (not e!4236434))))

(assert (=> d!2201115 (= res!2876888 (matchZipper!3050 lt!2527381 Nil!67935))))

(assert (=> d!2201115 (= (++!15592 Nil!67935 (t!381836 s!7408)) (t!381836 s!7408))))

(assert (=> d!2201115 (= (findConcatSeparationZippers!423 lt!2527381 lt!2527394 Nil!67935 (t!381836 s!7408) (t!381836 s!7408)) lt!2527504)))

(declare-fun b!7047031 () Bool)

(assert (=> b!7047031 (= e!4236438 (Some!16906 (tuple2!68151 Nil!67935 (t!381836 s!7408))))))

(declare-fun b!7047032 () Bool)

(declare-fun lt!2527502 () Unit!161706)

(declare-fun lt!2527503 () Unit!161706)

(assert (=> b!7047032 (= lt!2527502 lt!2527503)))

(assert (=> b!7047032 (= (++!15592 (++!15592 Nil!67935 (Cons!67935 (h!74383 (t!381836 s!7408)) Nil!67935)) (t!381836 (t!381836 s!7408))) (t!381836 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2950 (List!68059 C!35290 List!68059 List!68059) Unit!161706)

(assert (=> b!7047032 (= lt!2527503 (lemmaMoveElementToOtherListKeepsConcatEq!2950 Nil!67935 (h!74383 (t!381836 s!7408)) (t!381836 (t!381836 s!7408)) (t!381836 s!7408)))))

(declare-fun e!4236437 () Option!16907)

(assert (=> b!7047032 (= e!4236437 (findConcatSeparationZippers!423 lt!2527381 lt!2527394 (++!15592 Nil!67935 (Cons!67935 (h!74383 (t!381836 s!7408)) Nil!67935)) (t!381836 (t!381836 s!7408)) (t!381836 s!7408)))))

(declare-fun b!7047033 () Bool)

(assert (=> b!7047033 (= e!4236435 (not (isDefined!13608 lt!2527504)))))

(declare-fun b!7047034 () Bool)

(declare-fun res!2876889 () Bool)

(assert (=> b!7047034 (=> (not res!2876889) (not e!4236436))))

(assert (=> b!7047034 (= res!2876889 (matchZipper!3050 lt!2527381 (_1!37378 (get!23813 lt!2527504))))))

(declare-fun b!7047035 () Bool)

(assert (=> b!7047035 (= e!4236434 (matchZipper!3050 lt!2527394 (t!381836 s!7408)))))

(declare-fun b!7047036 () Bool)

(assert (=> b!7047036 (= e!4236437 None!16906)))

(declare-fun b!7047037 () Bool)

(assert (=> b!7047037 (= e!4236436 (= (++!15592 (_1!37378 (get!23813 lt!2527504)) (_2!37378 (get!23813 lt!2527504))) (t!381836 s!7408)))))

(declare-fun b!7047038 () Bool)

(declare-fun res!2876886 () Bool)

(assert (=> b!7047038 (=> (not res!2876886) (not e!4236436))))

(assert (=> b!7047038 (= res!2876886 (matchZipper!3050 lt!2527394 (_2!37378 (get!23813 lt!2527504))))))

(declare-fun b!7047039 () Bool)

(assert (=> b!7047039 (= e!4236438 e!4236437)))

(declare-fun c!1312274 () Bool)

(assert (=> b!7047039 (= c!1312274 (is-Nil!67935 (t!381836 s!7408)))))

(assert (= (and d!2201115 res!2876888) b!7047035))

(assert (= (and d!2201115 c!1312275) b!7047031))

(assert (= (and d!2201115 (not c!1312275)) b!7047039))

(assert (= (and b!7047039 c!1312274) b!7047036))

(assert (= (and b!7047039 (not c!1312274)) b!7047032))

(assert (= (and d!2201115 res!2876890) b!7047034))

(assert (= (and b!7047034 res!2876889) b!7047038))

(assert (= (and b!7047038 res!2876886) b!7047037))

(assert (= (and d!2201115 (not res!2876887)) b!7047033))

(declare-fun m!7761300 () Bool)

(assert (=> b!7047037 m!7761300))

(declare-fun m!7761302 () Bool)

(assert (=> b!7047037 m!7761302))

(assert (=> b!7047038 m!7761300))

(declare-fun m!7761304 () Bool)

(assert (=> b!7047038 m!7761304))

(declare-fun m!7761306 () Bool)

(assert (=> b!7047033 m!7761306))

(assert (=> d!2201115 m!7761306))

(declare-fun m!7761308 () Bool)

(assert (=> d!2201115 m!7761308))

(declare-fun m!7761310 () Bool)

(assert (=> d!2201115 m!7761310))

(assert (=> b!7047034 m!7761300))

(declare-fun m!7761312 () Bool)

(assert (=> b!7047034 m!7761312))

(declare-fun m!7761314 () Bool)

(assert (=> b!7047035 m!7761314))

(declare-fun m!7761316 () Bool)

(assert (=> b!7047032 m!7761316))

(assert (=> b!7047032 m!7761316))

(declare-fun m!7761318 () Bool)

(assert (=> b!7047032 m!7761318))

(declare-fun m!7761320 () Bool)

(assert (=> b!7047032 m!7761320))

(assert (=> b!7047032 m!7761316))

(declare-fun m!7761322 () Bool)

(assert (=> b!7047032 m!7761322))

(assert (=> b!7046913 d!2201115))

(declare-fun d!2201121 () Bool)

(assert (=> d!2201121 (= (get!23813 lt!2527395) (v!53196 lt!2527395))))

(assert (=> b!7046913 d!2201121))

(declare-fun b!7047064 () Bool)

(declare-fun c!1312290 () Bool)

(assert (=> b!7047064 (= c!1312290 (is-Star!17510 (h!74382 (exprs!7006 lt!2527392))))))

(declare-fun e!4236453 () (Set Context!13012))

(declare-fun e!4236455 () (Set Context!13012))

(assert (=> b!7047064 (= e!4236453 e!4236455)))

(declare-fun d!2201123 () Bool)

(declare-fun c!1312288 () Bool)

(assert (=> d!2201123 (= c!1312288 (and (is-ElementMatch!17510 (h!74382 (exprs!7006 lt!2527392))) (= (c!1312246 (h!74382 (exprs!7006 lt!2527392))) (h!74383 s!7408))))))

(declare-fun e!4236452 () (Set Context!13012))

(assert (=> d!2201123 (= (derivationStepZipperDown!2174 (h!74382 (exprs!7006 lt!2527392)) lt!2527383 (h!74383 s!7408)) e!4236452)))

(declare-fun b!7047065 () Bool)

(assert (=> b!7047065 (= e!4236455 (as set.empty (Set Context!13012)))))

(declare-fun bm!640280 () Bool)

(declare-fun call!640289 () List!68058)

(declare-fun call!640286 () List!68058)

(assert (=> bm!640280 (= call!640289 call!640286)))

(declare-fun c!1312289 () Bool)

(declare-fun bm!640281 () Bool)

(declare-fun c!1312292 () Bool)

(declare-fun $colon$colon!2605 (List!68058 Regex!17510) List!68058)

(assert (=> bm!640281 (= call!640286 ($colon$colon!2605 (exprs!7006 lt!2527383) (ite (or c!1312289 c!1312292) (regTwo!35532 (h!74382 (exprs!7006 lt!2527392))) (h!74382 (exprs!7006 lt!2527392)))))))

(declare-fun b!7047066 () Bool)

(declare-fun e!4236454 () (Set Context!13012))

(declare-fun call!640285 () (Set Context!13012))

(declare-fun call!640288 () (Set Context!13012))

(assert (=> b!7047066 (= e!4236454 (set.union call!640285 call!640288))))

(declare-fun c!1312291 () Bool)

(declare-fun call!640290 () (Set Context!13012))

(declare-fun bm!640282 () Bool)

(assert (=> bm!640282 (= call!640290 (derivationStepZipperDown!2174 (ite c!1312291 (regTwo!35533 (h!74382 (exprs!7006 lt!2527392))) (ite c!1312289 (regTwo!35532 (h!74382 (exprs!7006 lt!2527392))) (ite c!1312292 (regOne!35532 (h!74382 (exprs!7006 lt!2527392))) (reg!17839 (h!74382 (exprs!7006 lt!2527392)))))) (ite (or c!1312291 c!1312289) lt!2527383 (Context!13013 call!640289)) (h!74383 s!7408)))))

(declare-fun bm!640283 () Bool)

(assert (=> bm!640283 (= call!640285 (derivationStepZipperDown!2174 (ite c!1312291 (regOne!35533 (h!74382 (exprs!7006 lt!2527392))) (regOne!35532 (h!74382 (exprs!7006 lt!2527392)))) (ite c!1312291 lt!2527383 (Context!13013 call!640286)) (h!74383 s!7408)))))

(declare-fun b!7047067 () Bool)

(assert (=> b!7047067 (= e!4236454 e!4236453)))

(assert (=> b!7047067 (= c!1312292 (is-Concat!26355 (h!74382 (exprs!7006 lt!2527392))))))

(declare-fun b!7047068 () Bool)

(assert (=> b!7047068 (= e!4236452 (set.insert lt!2527383 (as set.empty (Set Context!13012))))))

(declare-fun b!7047069 () Bool)

(declare-fun e!4236451 () (Set Context!13012))

(assert (=> b!7047069 (= e!4236451 (set.union call!640285 call!640290))))

(declare-fun bm!640284 () Bool)

(declare-fun call!640287 () (Set Context!13012))

(assert (=> bm!640284 (= call!640287 call!640288)))

(declare-fun b!7047070 () Bool)

(assert (=> b!7047070 (= e!4236455 call!640287)))

(declare-fun b!7047071 () Bool)

(assert (=> b!7047071 (= e!4236453 call!640287)))

(declare-fun b!7047072 () Bool)

(declare-fun e!4236456 () Bool)

(assert (=> b!7047072 (= c!1312289 e!4236456)))

(declare-fun res!2876893 () Bool)

(assert (=> b!7047072 (=> (not res!2876893) (not e!4236456))))

(assert (=> b!7047072 (= res!2876893 (is-Concat!26355 (h!74382 (exprs!7006 lt!2527392))))))

(assert (=> b!7047072 (= e!4236451 e!4236454)))

(declare-fun bm!640285 () Bool)

(assert (=> bm!640285 (= call!640288 call!640290)))

(declare-fun b!7047073 () Bool)

(assert (=> b!7047073 (= e!4236452 e!4236451)))

(assert (=> b!7047073 (= c!1312291 (is-Union!17510 (h!74382 (exprs!7006 lt!2527392))))))

(declare-fun b!7047074 () Bool)

(assert (=> b!7047074 (= e!4236456 (nullable!7221 (regOne!35532 (h!74382 (exprs!7006 lt!2527392)))))))

(assert (= (and d!2201123 c!1312288) b!7047068))

(assert (= (and d!2201123 (not c!1312288)) b!7047073))

(assert (= (and b!7047073 c!1312291) b!7047069))

(assert (= (and b!7047073 (not c!1312291)) b!7047072))

(assert (= (and b!7047072 res!2876893) b!7047074))

(assert (= (and b!7047072 c!1312289) b!7047066))

(assert (= (and b!7047072 (not c!1312289)) b!7047067))

(assert (= (and b!7047067 c!1312292) b!7047071))

(assert (= (and b!7047067 (not c!1312292)) b!7047064))

(assert (= (and b!7047064 c!1312290) b!7047070))

(assert (= (and b!7047064 (not c!1312290)) b!7047065))

(assert (= (or b!7047071 b!7047070) bm!640280))

(assert (= (or b!7047071 b!7047070) bm!640284))

(assert (= (or b!7047066 bm!640284) bm!640285))

(assert (= (or b!7047066 bm!640280) bm!640281))

(assert (= (or b!7047069 b!7047066) bm!640283))

(assert (= (or b!7047069 bm!640285) bm!640282))

(declare-fun m!7761330 () Bool)

(assert (=> bm!640281 m!7761330))

(declare-fun m!7761332 () Bool)

(assert (=> bm!640282 m!7761332))

(declare-fun m!7761334 () Bool)

(assert (=> b!7047068 m!7761334))

(declare-fun m!7761336 () Bool)

(assert (=> bm!640283 m!7761336))

(declare-fun m!7761338 () Bool)

(assert (=> b!7047074 m!7761338))

(assert (=> b!7046913 d!2201123))

(declare-fun d!2201129 () Bool)

(declare-fun nullableFct!2757 (Regex!17510) Bool)

(assert (=> d!2201129 (= (nullable!7221 (h!74382 (exprs!7006 lt!2527392))) (nullableFct!2757 (h!74382 (exprs!7006 lt!2527392))))))

(declare-fun bs!1875044 () Bool)

(assert (= bs!1875044 d!2201129))

(declare-fun m!7761340 () Bool)

(assert (=> bs!1875044 m!7761340))

(assert (=> b!7046908 d!2201129))

(declare-fun d!2201131 () Bool)

(assert (=> d!2201131 (= (tail!13632 (exprs!7006 lt!2527392)) (t!381835 (exprs!7006 lt!2527392)))))

(assert (=> b!7046908 d!2201131))

(declare-fun d!2201133 () Bool)

(declare-fun c!1312293 () Bool)

(assert (=> d!2201133 (= c!1312293 (isEmpty!39654 s!7408))))

(declare-fun e!4236457 () Bool)

(assert (=> d!2201133 (= (matchZipper!3050 lt!2527384 s!7408) e!4236457)))

(declare-fun b!7047075 () Bool)

(assert (=> b!7047075 (= e!4236457 (nullableZipper!2612 lt!2527384))))

(declare-fun b!7047076 () Bool)

(assert (=> b!7047076 (= e!4236457 (matchZipper!3050 (derivationStepZipper!2966 lt!2527384 (head!14309 s!7408)) (tail!13634 s!7408)))))

(assert (= (and d!2201133 c!1312293) b!7047075))

(assert (= (and d!2201133 (not c!1312293)) b!7047076))

(assert (=> d!2201133 m!7761238))

(declare-fun m!7761342 () Bool)

(assert (=> b!7047075 m!7761342))

(assert (=> b!7047076 m!7761242))

(assert (=> b!7047076 m!7761242))

(declare-fun m!7761344 () Bool)

(assert (=> b!7047076 m!7761344))

(assert (=> b!7047076 m!7761246))

(assert (=> b!7047076 m!7761344))

(assert (=> b!7047076 m!7761246))

(declare-fun m!7761346 () Bool)

(assert (=> b!7047076 m!7761346))

(assert (=> start!682244 d!2201133))

(declare-fun bs!1875045 () Bool)

(declare-fun d!2201135 () Bool)

(assert (= bs!1875045 (and d!2201135 b!7046906)))

(declare-fun lambda!418037 () Int)

(assert (=> bs!1875045 (= lambda!418037 lambda!417990)))

(declare-fun bs!1875047 () Bool)

(assert (= bs!1875047 (and d!2201135 d!2201109)))

(assert (=> bs!1875047 (= lambda!418037 lambda!418033)))

(assert (=> d!2201135 true))

(assert (=> d!2201135 (= (appendTo!631 z1!570 ct2!306) (map!15823 z1!570 lambda!418037))))

(declare-fun bs!1875048 () Bool)

(assert (= bs!1875048 d!2201135))

(declare-fun m!7761352 () Bool)

(assert (=> bs!1875048 m!7761352))

(assert (=> start!682244 d!2201135))

(declare-fun bs!1875049 () Bool)

(declare-fun d!2201137 () Bool)

(assert (= bs!1875049 (and d!2201137 b!7046906)))

(declare-fun lambda!418038 () Int)

(assert (=> bs!1875049 (= lambda!418038 lambda!417991)))

(declare-fun bs!1875050 () Bool)

(assert (= bs!1875050 (and d!2201137 d!2201101)))

(assert (=> bs!1875050 (= lambda!418038 lambda!418025)))

(declare-fun bs!1875051 () Bool)

(assert (= bs!1875051 (and d!2201137 d!2201105)))

(assert (=> bs!1875051 (= lambda!418038 lambda!418028)))

(assert (=> d!2201137 (= (inv!86635 ct2!306) (forall!16443 (exprs!7006 ct2!306) lambda!418038))))

(declare-fun bs!1875052 () Bool)

(assert (= bs!1875052 d!2201137))

(declare-fun m!7761356 () Bool)

(assert (=> bs!1875052 m!7761356))

(assert (=> start!682244 d!2201137))

(declare-fun d!2201141 () Bool)

(declare-fun c!1312294 () Bool)

(assert (=> d!2201141 (= c!1312294 (isEmpty!39654 (_2!37378 lt!2527376)))))

(declare-fun e!4236458 () Bool)

(assert (=> d!2201141 (= (matchZipper!3050 lt!2527394 (_2!37378 lt!2527376)) e!4236458)))

(declare-fun b!7047077 () Bool)

(assert (=> b!7047077 (= e!4236458 (nullableZipper!2612 lt!2527394))))

(declare-fun b!7047078 () Bool)

(assert (=> b!7047078 (= e!4236458 (matchZipper!3050 (derivationStepZipper!2966 lt!2527394 (head!14309 (_2!37378 lt!2527376))) (tail!13634 (_2!37378 lt!2527376))))))

(assert (= (and d!2201141 c!1312294) b!7047077))

(assert (= (and d!2201141 (not c!1312294)) b!7047078))

(declare-fun m!7761358 () Bool)

(assert (=> d!2201141 m!7761358))

(declare-fun m!7761360 () Bool)

(assert (=> b!7047077 m!7761360))

(declare-fun m!7761362 () Bool)

(assert (=> b!7047078 m!7761362))

(assert (=> b!7047078 m!7761362))

(declare-fun m!7761364 () Bool)

(assert (=> b!7047078 m!7761364))

(declare-fun m!7761366 () Bool)

(assert (=> b!7047078 m!7761366))

(assert (=> b!7047078 m!7761364))

(assert (=> b!7047078 m!7761366))

(declare-fun m!7761368 () Bool)

(assert (=> b!7047078 m!7761368))

(assert (=> b!7046907 d!2201141))

(declare-fun d!2201143 () Bool)

(declare-fun e!4236463 () Bool)

(assert (=> d!2201143 e!4236463))

(declare-fun res!2876898 () Bool)

(assert (=> d!2201143 (=> (not res!2876898) (not e!4236463))))

(declare-fun lt!2527513 () List!68058)

(declare-fun content!13616 (List!68058) (Set Regex!17510))

(assert (=> d!2201143 (= res!2876898 (= (content!13616 lt!2527513) (set.union (content!13616 (exprs!7006 lt!2527392)) (content!13616 (exprs!7006 ct2!306)))))))

(declare-fun e!4236464 () List!68058)

(assert (=> d!2201143 (= lt!2527513 e!4236464)))

(declare-fun c!1312297 () Bool)

(assert (=> d!2201143 (= c!1312297 (is-Nil!67934 (exprs!7006 lt!2527392)))))

(assert (=> d!2201143 (= (++!15591 (exprs!7006 lt!2527392) (exprs!7006 ct2!306)) lt!2527513)))

(declare-fun b!7047090 () Bool)

(assert (=> b!7047090 (= e!4236463 (or (not (= (exprs!7006 ct2!306) Nil!67934)) (= lt!2527513 (exprs!7006 lt!2527392))))))

(declare-fun b!7047087 () Bool)

(assert (=> b!7047087 (= e!4236464 (exprs!7006 ct2!306))))

(declare-fun b!7047089 () Bool)

(declare-fun res!2876899 () Bool)

(assert (=> b!7047089 (=> (not res!2876899) (not e!4236463))))

(declare-fun size!41114 (List!68058) Int)

(assert (=> b!7047089 (= res!2876899 (= (size!41114 lt!2527513) (+ (size!41114 (exprs!7006 lt!2527392)) (size!41114 (exprs!7006 ct2!306)))))))

(declare-fun b!7047088 () Bool)

(assert (=> b!7047088 (= e!4236464 (Cons!67934 (h!74382 (exprs!7006 lt!2527392)) (++!15591 (t!381835 (exprs!7006 lt!2527392)) (exprs!7006 ct2!306))))))

(assert (= (and d!2201143 c!1312297) b!7047087))

(assert (= (and d!2201143 (not c!1312297)) b!7047088))

(assert (= (and d!2201143 res!2876898) b!7047089))

(assert (= (and b!7047089 res!2876899) b!7047090))

(declare-fun m!7761372 () Bool)

(assert (=> d!2201143 m!7761372))

(declare-fun m!7761374 () Bool)

(assert (=> d!2201143 m!7761374))

(declare-fun m!7761376 () Bool)

(assert (=> d!2201143 m!7761376))

(declare-fun m!7761378 () Bool)

(assert (=> b!7047089 m!7761378))

(declare-fun m!7761380 () Bool)

(assert (=> b!7047089 m!7761380))

(declare-fun m!7761382 () Bool)

(assert (=> b!7047089 m!7761382))

(declare-fun m!7761384 () Bool)

(assert (=> b!7047088 m!7761384))

(assert (=> b!7046906 d!2201143))

(declare-fun d!2201147 () Bool)

(assert (=> d!2201147 (forall!16443 (++!15591 (exprs!7006 lt!2527392) (exprs!7006 ct2!306)) lambda!417991)))

(declare-fun lt!2527514 () Unit!161706)

(assert (=> d!2201147 (= lt!2527514 (choose!53580 (exprs!7006 lt!2527392) (exprs!7006 ct2!306) lambda!417991))))

(assert (=> d!2201147 (forall!16443 (exprs!7006 lt!2527392) lambda!417991)))

(assert (=> d!2201147 (= (lemmaConcatPreservesForall!831 (exprs!7006 lt!2527392) (exprs!7006 ct2!306) lambda!417991) lt!2527514)))

(declare-fun bs!1875054 () Bool)

(assert (= bs!1875054 d!2201147))

(assert (=> bs!1875054 m!7761092))

(assert (=> bs!1875054 m!7761092))

(declare-fun m!7761386 () Bool)

(assert (=> bs!1875054 m!7761386))

(declare-fun m!7761388 () Bool)

(assert (=> bs!1875054 m!7761388))

(declare-fun m!7761390 () Bool)

(assert (=> bs!1875054 m!7761390))

(assert (=> b!7046906 d!2201147))

(declare-fun d!2201149 () Bool)

(declare-fun e!4236469 () Bool)

(assert (=> d!2201149 e!4236469))

(declare-fun res!2876902 () Bool)

(assert (=> d!2201149 (=> (not res!2876902) (not e!4236469))))

(declare-fun lt!2527517 () Context!13012)

(declare-fun dynLambda!27515 (Int Context!13012) Context!13012)

(assert (=> d!2201149 (= res!2876902 (= lt!2527375 (dynLambda!27515 lambda!417990 lt!2527517)))))

(declare-fun choose!53581 ((Set Context!13012) Int Context!13012) Context!13012)

(assert (=> d!2201149 (= lt!2527517 (choose!53581 z1!570 lambda!417990 lt!2527375))))

(assert (=> d!2201149 (set.member lt!2527375 (map!15823 z1!570 lambda!417990))))

(assert (=> d!2201149 (= (mapPost2!351 z1!570 lambda!417990 lt!2527375) lt!2527517)))

(declare-fun b!7047098 () Bool)

(assert (=> b!7047098 (= e!4236469 (set.member lt!2527517 z1!570))))

(assert (= (and d!2201149 res!2876902) b!7047098))

(declare-fun b_lambda!267807 () Bool)

(assert (=> (not b_lambda!267807) (not d!2201149)))

(declare-fun m!7761392 () Bool)

(assert (=> d!2201149 m!7761392))

(declare-fun m!7761394 () Bool)

(assert (=> d!2201149 m!7761394))

(declare-fun m!7761396 () Bool)

(assert (=> d!2201149 m!7761396))

(declare-fun m!7761398 () Bool)

(assert (=> d!2201149 m!7761398))

(declare-fun m!7761400 () Bool)

(assert (=> b!7047098 m!7761400))

(assert (=> b!7046906 d!2201149))

(assert (=> b!7046919 d!2201147))

(declare-fun b!7047109 () Bool)

(declare-fun e!4236476 () List!68059)

(assert (=> b!7047109 (= e!4236476 (_2!37378 lt!2527376))))

(declare-fun d!2201151 () Bool)

(declare-fun e!4236475 () Bool)

(assert (=> d!2201151 e!4236475))

(declare-fun res!2876907 () Bool)

(assert (=> d!2201151 (=> (not res!2876907) (not e!4236475))))

(declare-fun lt!2527520 () List!68059)

(declare-fun content!13617 (List!68059) (Set C!35290))

(assert (=> d!2201151 (= res!2876907 (= (content!13617 lt!2527520) (set.union (content!13617 (_1!37378 lt!2527376)) (content!13617 (_2!37378 lt!2527376)))))))

(assert (=> d!2201151 (= lt!2527520 e!4236476)))

(declare-fun c!1312303 () Bool)

(assert (=> d!2201151 (= c!1312303 (is-Nil!67935 (_1!37378 lt!2527376)))))

(assert (=> d!2201151 (= (++!15592 (_1!37378 lt!2527376) (_2!37378 lt!2527376)) lt!2527520)))

(declare-fun b!7047110 () Bool)

(assert (=> b!7047110 (= e!4236476 (Cons!67935 (h!74383 (_1!37378 lt!2527376)) (++!15592 (t!381836 (_1!37378 lt!2527376)) (_2!37378 lt!2527376))))))

(declare-fun b!7047112 () Bool)

(assert (=> b!7047112 (= e!4236475 (or (not (= (_2!37378 lt!2527376) Nil!67935)) (= lt!2527520 (_1!37378 lt!2527376))))))

(declare-fun b!7047111 () Bool)

(declare-fun res!2876908 () Bool)

(assert (=> b!7047111 (=> (not res!2876908) (not e!4236475))))

(declare-fun size!41115 (List!68059) Int)

(assert (=> b!7047111 (= res!2876908 (= (size!41115 lt!2527520) (+ (size!41115 (_1!37378 lt!2527376)) (size!41115 (_2!37378 lt!2527376)))))))

(assert (= (and d!2201151 c!1312303) b!7047109))

(assert (= (and d!2201151 (not c!1312303)) b!7047110))

(assert (= (and d!2201151 res!2876907) b!7047111))

(assert (= (and b!7047111 res!2876908) b!7047112))

(declare-fun m!7761414 () Bool)

(assert (=> d!2201151 m!7761414))

(declare-fun m!7761416 () Bool)

(assert (=> d!2201151 m!7761416))

(declare-fun m!7761418 () Bool)

(assert (=> d!2201151 m!7761418))

(declare-fun m!7761420 () Bool)

(assert (=> b!7047110 m!7761420))

(declare-fun m!7761422 () Bool)

(assert (=> b!7047111 m!7761422))

(declare-fun m!7761424 () Bool)

(assert (=> b!7047111 m!7761424))

(declare-fun m!7761426 () Bool)

(assert (=> b!7047111 m!7761426))

(assert (=> b!7046910 d!2201151))

(declare-fun d!2201155 () Bool)

(assert (=> d!2201155 (= (isEmpty!39652 (exprs!7006 lt!2527392)) (is-Nil!67934 (exprs!7006 lt!2527392)))))

(assert (=> b!7046918 d!2201155))

(declare-fun bs!1875055 () Bool)

(declare-fun d!2201157 () Bool)

(assert (= bs!1875055 (and d!2201157 b!7046909)))

(declare-fun lambda!418041 () Int)

(assert (=> bs!1875055 (= lambda!418041 lambda!417992)))

(assert (=> d!2201157 true))

(assert (=> d!2201157 (= (derivationStepZipper!2966 lt!2527398 (h!74383 s!7408)) (flatMap!2457 lt!2527398 lambda!418041))))

(declare-fun bs!1875056 () Bool)

(assert (= bs!1875056 d!2201157))

(declare-fun m!7761428 () Bool)

(assert (=> bs!1875056 m!7761428))

(assert (=> b!7046909 d!2201157))

(declare-fun d!2201159 () Bool)

(declare-fun choose!53582 ((Set Context!13012) Int) (Set Context!13012))

(assert (=> d!2201159 (= (flatMap!2457 lt!2527398 lambda!417992) (choose!53582 lt!2527398 lambda!417992))))

(declare-fun bs!1875057 () Bool)

(assert (= bs!1875057 d!2201159))

(declare-fun m!7761430 () Bool)

(assert (=> bs!1875057 m!7761430))

(assert (=> b!7046909 d!2201159))

(declare-fun b!7047147 () Bool)

(declare-fun call!640295 () (Set Context!13012))

(declare-fun e!4236496 () (Set Context!13012))

(assert (=> b!7047147 (= e!4236496 (set.union call!640295 (derivationStepZipperUp!2120 (Context!13013 (t!381835 (exprs!7006 lt!2527396))) (h!74383 s!7408))))))

(declare-fun b!7047149 () Bool)

(declare-fun e!4236497 () Bool)

(assert (=> b!7047149 (= e!4236497 (nullable!7221 (h!74382 (exprs!7006 lt!2527396))))))

(declare-fun bm!640290 () Bool)

(assert (=> bm!640290 (= call!640295 (derivationStepZipperDown!2174 (h!74382 (exprs!7006 lt!2527396)) (Context!13013 (t!381835 (exprs!7006 lt!2527396))) (h!74383 s!7408)))))

(declare-fun b!7047150 () Bool)

(declare-fun e!4236495 () (Set Context!13012))

(assert (=> b!7047150 (= e!4236496 e!4236495)))

(declare-fun c!1312320 () Bool)

(assert (=> b!7047150 (= c!1312320 (is-Cons!67934 (exprs!7006 lt!2527396)))))

(declare-fun b!7047151 () Bool)

(assert (=> b!7047151 (= e!4236495 (as set.empty (Set Context!13012)))))

(declare-fun b!7047148 () Bool)

(assert (=> b!7047148 (= e!4236495 call!640295)))

(declare-fun d!2201161 () Bool)

(declare-fun c!1312321 () Bool)

(assert (=> d!2201161 (= c!1312321 e!4236497)))

(declare-fun res!2876913 () Bool)

(assert (=> d!2201161 (=> (not res!2876913) (not e!4236497))))

(assert (=> d!2201161 (= res!2876913 (is-Cons!67934 (exprs!7006 lt!2527396)))))

(assert (=> d!2201161 (= (derivationStepZipperUp!2120 lt!2527396 (h!74383 s!7408)) e!4236496)))

(assert (= (and d!2201161 res!2876913) b!7047149))

(assert (= (and d!2201161 c!1312321) b!7047147))

(assert (= (and d!2201161 (not c!1312321)) b!7047150))

(assert (= (and b!7047150 c!1312320) b!7047148))

(assert (= (and b!7047150 (not c!1312320)) b!7047151))

(assert (= (or b!7047147 b!7047148) bm!640290))

(declare-fun m!7761432 () Bool)

(assert (=> b!7047147 m!7761432))

(declare-fun m!7761434 () Bool)

(assert (=> b!7047149 m!7761434))

(declare-fun m!7761436 () Bool)

(assert (=> bm!640290 m!7761436))

(assert (=> b!7046909 d!2201161))

(assert (=> b!7046909 d!2201147))

(declare-fun d!2201163 () Bool)

(declare-fun dynLambda!27516 (Int Context!13012) (Set Context!13012))

(assert (=> d!2201163 (= (flatMap!2457 lt!2527398 lambda!417992) (dynLambda!27516 lambda!417992 lt!2527396))))

(declare-fun lt!2527523 () Unit!161706)

(declare-fun choose!53583 ((Set Context!13012) Context!13012 Int) Unit!161706)

(assert (=> d!2201163 (= lt!2527523 (choose!53583 lt!2527398 lt!2527396 lambda!417992))))

(assert (=> d!2201163 (= lt!2527398 (set.insert lt!2527396 (as set.empty (Set Context!13012))))))

(assert (=> d!2201163 (= (lemmaFlatMapOnSingletonSet!1971 lt!2527398 lt!2527396 lambda!417992) lt!2527523)))

(declare-fun b_lambda!267809 () Bool)

(assert (=> (not b_lambda!267809) (not d!2201163)))

(declare-fun bs!1875058 () Bool)

(assert (= bs!1875058 d!2201163))

(assert (=> bs!1875058 m!7761110))

(declare-fun m!7761438 () Bool)

(assert (=> bs!1875058 m!7761438))

(declare-fun m!7761440 () Bool)

(assert (=> bs!1875058 m!7761440))

(assert (=> bs!1875058 m!7761062))

(assert (=> b!7046909 d!2201163))

(declare-fun d!2201165 () Bool)

(declare-fun c!1312322 () Bool)

(assert (=> d!2201165 (= c!1312322 (isEmpty!39654 (t!381836 s!7408)))))

(declare-fun e!4236498 () Bool)

(assert (=> d!2201165 (= (matchZipper!3050 lt!2527385 (t!381836 s!7408)) e!4236498)))

(declare-fun b!7047152 () Bool)

(assert (=> b!7047152 (= e!4236498 (nullableZipper!2612 lt!2527385))))

(declare-fun b!7047153 () Bool)

(assert (=> b!7047153 (= e!4236498 (matchZipper!3050 (derivationStepZipper!2966 lt!2527385 (head!14309 (t!381836 s!7408))) (tail!13634 (t!381836 s!7408))))))

(assert (= (and d!2201165 c!1312322) b!7047152))

(assert (= (and d!2201165 (not c!1312322)) b!7047153))

(declare-fun m!7761442 () Bool)

(assert (=> d!2201165 m!7761442))

(declare-fun m!7761444 () Bool)

(assert (=> b!7047152 m!7761444))

(declare-fun m!7761446 () Bool)

(assert (=> b!7047153 m!7761446))

(assert (=> b!7047153 m!7761446))

(declare-fun m!7761448 () Bool)

(assert (=> b!7047153 m!7761448))

(declare-fun m!7761450 () Bool)

(assert (=> b!7047153 m!7761450))

(assert (=> b!7047153 m!7761448))

(assert (=> b!7047153 m!7761450))

(declare-fun m!7761452 () Bool)

(assert (=> b!7047153 m!7761452))

(assert (=> b!7046917 d!2201165))

(declare-fun b!7047154 () Bool)

(declare-fun c!1312325 () Bool)

(assert (=> b!7047154 (= c!1312325 (is-Star!17510 (h!74382 (exprs!7006 lt!2527392))))))

(declare-fun e!4236501 () (Set Context!13012))

(declare-fun e!4236503 () (Set Context!13012))

(assert (=> b!7047154 (= e!4236501 e!4236503)))

(declare-fun d!2201167 () Bool)

(declare-fun c!1312323 () Bool)

(assert (=> d!2201167 (= c!1312323 (and (is-ElementMatch!17510 (h!74382 (exprs!7006 lt!2527392))) (= (c!1312246 (h!74382 (exprs!7006 lt!2527392))) (h!74383 s!7408))))))

(declare-fun e!4236500 () (Set Context!13012))

(assert (=> d!2201167 (= (derivationStepZipperDown!2174 (h!74382 (exprs!7006 lt!2527392)) (Context!13013 (++!15591 lt!2527388 (exprs!7006 ct2!306))) (h!74383 s!7408)) e!4236500)))

(declare-fun b!7047155 () Bool)

(assert (=> b!7047155 (= e!4236503 (as set.empty (Set Context!13012)))))

(declare-fun bm!640297 () Bool)

(declare-fun call!640306 () List!68058)

(declare-fun call!640303 () List!68058)

(assert (=> bm!640297 (= call!640306 call!640303)))

(declare-fun c!1312324 () Bool)

(declare-fun bm!640298 () Bool)

(declare-fun c!1312327 () Bool)

(assert (=> bm!640298 (= call!640303 ($colon$colon!2605 (exprs!7006 (Context!13013 (++!15591 lt!2527388 (exprs!7006 ct2!306)))) (ite (or c!1312324 c!1312327) (regTwo!35532 (h!74382 (exprs!7006 lt!2527392))) (h!74382 (exprs!7006 lt!2527392)))))))

(declare-fun b!7047156 () Bool)

(declare-fun e!4236502 () (Set Context!13012))

(declare-fun call!640302 () (Set Context!13012))

(declare-fun call!640305 () (Set Context!13012))

(assert (=> b!7047156 (= e!4236502 (set.union call!640302 call!640305))))

(declare-fun call!640307 () (Set Context!13012))

(declare-fun c!1312326 () Bool)

(declare-fun bm!640299 () Bool)

(assert (=> bm!640299 (= call!640307 (derivationStepZipperDown!2174 (ite c!1312326 (regTwo!35533 (h!74382 (exprs!7006 lt!2527392))) (ite c!1312324 (regTwo!35532 (h!74382 (exprs!7006 lt!2527392))) (ite c!1312327 (regOne!35532 (h!74382 (exprs!7006 lt!2527392))) (reg!17839 (h!74382 (exprs!7006 lt!2527392)))))) (ite (or c!1312326 c!1312324) (Context!13013 (++!15591 lt!2527388 (exprs!7006 ct2!306))) (Context!13013 call!640306)) (h!74383 s!7408)))))

(declare-fun bm!640300 () Bool)

(assert (=> bm!640300 (= call!640302 (derivationStepZipperDown!2174 (ite c!1312326 (regOne!35533 (h!74382 (exprs!7006 lt!2527392))) (regOne!35532 (h!74382 (exprs!7006 lt!2527392)))) (ite c!1312326 (Context!13013 (++!15591 lt!2527388 (exprs!7006 ct2!306))) (Context!13013 call!640303)) (h!74383 s!7408)))))

(declare-fun b!7047157 () Bool)

(assert (=> b!7047157 (= e!4236502 e!4236501)))

(assert (=> b!7047157 (= c!1312327 (is-Concat!26355 (h!74382 (exprs!7006 lt!2527392))))))

(declare-fun b!7047158 () Bool)

(assert (=> b!7047158 (= e!4236500 (set.insert (Context!13013 (++!15591 lt!2527388 (exprs!7006 ct2!306))) (as set.empty (Set Context!13012))))))

(declare-fun b!7047159 () Bool)

(declare-fun e!4236499 () (Set Context!13012))

(assert (=> b!7047159 (= e!4236499 (set.union call!640302 call!640307))))

(declare-fun bm!640301 () Bool)

(declare-fun call!640304 () (Set Context!13012))

(assert (=> bm!640301 (= call!640304 call!640305)))

(declare-fun b!7047160 () Bool)

(assert (=> b!7047160 (= e!4236503 call!640304)))

(declare-fun b!7047161 () Bool)

(assert (=> b!7047161 (= e!4236501 call!640304)))

(declare-fun b!7047162 () Bool)

(declare-fun e!4236504 () Bool)

(assert (=> b!7047162 (= c!1312324 e!4236504)))

(declare-fun res!2876914 () Bool)

(assert (=> b!7047162 (=> (not res!2876914) (not e!4236504))))

(assert (=> b!7047162 (= res!2876914 (is-Concat!26355 (h!74382 (exprs!7006 lt!2527392))))))

(assert (=> b!7047162 (= e!4236499 e!4236502)))

(declare-fun bm!640302 () Bool)

(assert (=> bm!640302 (= call!640305 call!640307)))

(declare-fun b!7047163 () Bool)

(assert (=> b!7047163 (= e!4236500 e!4236499)))

(assert (=> b!7047163 (= c!1312326 (is-Union!17510 (h!74382 (exprs!7006 lt!2527392))))))

(declare-fun b!7047164 () Bool)

(assert (=> b!7047164 (= e!4236504 (nullable!7221 (regOne!35532 (h!74382 (exprs!7006 lt!2527392)))))))

(assert (= (and d!2201167 c!1312323) b!7047158))

(assert (= (and d!2201167 (not c!1312323)) b!7047163))

(assert (= (and b!7047163 c!1312326) b!7047159))

(assert (= (and b!7047163 (not c!1312326)) b!7047162))

(assert (= (and b!7047162 res!2876914) b!7047164))

(assert (= (and b!7047162 c!1312324) b!7047156))

(assert (= (and b!7047162 (not c!1312324)) b!7047157))

(assert (= (and b!7047157 c!1312327) b!7047161))

(assert (= (and b!7047157 (not c!1312327)) b!7047154))

(assert (= (and b!7047154 c!1312325) b!7047160))

(assert (= (and b!7047154 (not c!1312325)) b!7047155))

(assert (= (or b!7047161 b!7047160) bm!640297))

(assert (= (or b!7047161 b!7047160) bm!640301))

(assert (= (or b!7047156 bm!640301) bm!640302))

(assert (= (or b!7047156 bm!640297) bm!640298))

(assert (= (or b!7047159 b!7047156) bm!640300))

(assert (= (or b!7047159 bm!640302) bm!640299))

(declare-fun m!7761454 () Bool)

(assert (=> bm!640298 m!7761454))

(declare-fun m!7761456 () Bool)

(assert (=> bm!640299 m!7761456))

(declare-fun m!7761458 () Bool)

(assert (=> b!7047158 m!7761458))

(declare-fun m!7761460 () Bool)

(assert (=> bm!640300 m!7761460))

(assert (=> b!7047164 m!7761338))

(assert (=> b!7046917 d!2201167))

(declare-fun d!2201169 () Bool)

(declare-fun e!4236505 () Bool)

(assert (=> d!2201169 e!4236505))

(declare-fun res!2876915 () Bool)

(assert (=> d!2201169 (=> (not res!2876915) (not e!4236505))))

(declare-fun lt!2527524 () List!68058)

(assert (=> d!2201169 (= res!2876915 (= (content!13616 lt!2527524) (set.union (content!13616 lt!2527388) (content!13616 (exprs!7006 ct2!306)))))))

(declare-fun e!4236506 () List!68058)

(assert (=> d!2201169 (= lt!2527524 e!4236506)))

(declare-fun c!1312328 () Bool)

(assert (=> d!2201169 (= c!1312328 (is-Nil!67934 lt!2527388))))

(assert (=> d!2201169 (= (++!15591 lt!2527388 (exprs!7006 ct2!306)) lt!2527524)))

(declare-fun b!7047168 () Bool)

(assert (=> b!7047168 (= e!4236505 (or (not (= (exprs!7006 ct2!306) Nil!67934)) (= lt!2527524 lt!2527388)))))

(declare-fun b!7047165 () Bool)

(assert (=> b!7047165 (= e!4236506 (exprs!7006 ct2!306))))

(declare-fun b!7047167 () Bool)

(declare-fun res!2876916 () Bool)

(assert (=> b!7047167 (=> (not res!2876916) (not e!4236505))))

(assert (=> b!7047167 (= res!2876916 (= (size!41114 lt!2527524) (+ (size!41114 lt!2527388) (size!41114 (exprs!7006 ct2!306)))))))

(declare-fun b!7047166 () Bool)

(assert (=> b!7047166 (= e!4236506 (Cons!67934 (h!74382 lt!2527388) (++!15591 (t!381835 lt!2527388) (exprs!7006 ct2!306))))))

(assert (= (and d!2201169 c!1312328) b!7047165))

(assert (= (and d!2201169 (not c!1312328)) b!7047166))

(assert (= (and d!2201169 res!2876915) b!7047167))

(assert (= (and b!7047167 res!2876916) b!7047168))

(declare-fun m!7761462 () Bool)

(assert (=> d!2201169 m!7761462))

(declare-fun m!7761464 () Bool)

(assert (=> d!2201169 m!7761464))

(assert (=> d!2201169 m!7761376))

(declare-fun m!7761466 () Bool)

(assert (=> b!7047167 m!7761466))

(declare-fun m!7761468 () Bool)

(assert (=> b!7047167 m!7761468))

(assert (=> b!7047167 m!7761382))

(declare-fun m!7761470 () Bool)

(assert (=> b!7047166 m!7761470))

(assert (=> b!7046917 d!2201169))

(assert (=> b!7046917 d!2201113))

(declare-fun b!7047173 () Bool)

(declare-fun e!4236509 () Bool)

(declare-fun tp!1938190 () Bool)

(declare-fun tp!1938191 () Bool)

(assert (=> b!7047173 (= e!4236509 (and tp!1938190 tp!1938191))))

(assert (=> b!7046916 (= tp!1938171 e!4236509)))

(assert (= (and b!7046916 (is-Cons!67934 (exprs!7006 ct2!306))) b!7047173))

(declare-fun b!7047178 () Bool)

(declare-fun e!4236512 () Bool)

(declare-fun tp!1938194 () Bool)

(assert (=> b!7047178 (= e!4236512 (and tp_is_empty!44245 tp!1938194))))

(assert (=> b!7046921 (= tp!1938173 e!4236512)))

(assert (= (and b!7046921 (is-Cons!67935 (t!381836 s!7408))) b!7047178))

(declare-fun condSetEmpty!49487 () Bool)

(assert (=> setNonEmpty!49481 (= condSetEmpty!49487 (= setRest!49481 (as set.empty (Set Context!13012))))))

(declare-fun setRes!49487 () Bool)

(assert (=> setNonEmpty!49481 (= tp!1938170 setRes!49487)))

(declare-fun setIsEmpty!49487 () Bool)

(assert (=> setIsEmpty!49487 setRes!49487))

(declare-fun setNonEmpty!49487 () Bool)

(declare-fun e!4236515 () Bool)

(declare-fun tp!1938200 () Bool)

(declare-fun setElem!49487 () Context!13012)

(assert (=> setNonEmpty!49487 (= setRes!49487 (and tp!1938200 (inv!86635 setElem!49487) e!4236515))))

(declare-fun setRest!49487 () (Set Context!13012))

(assert (=> setNonEmpty!49487 (= setRest!49481 (set.union (set.insert setElem!49487 (as set.empty (Set Context!13012))) setRest!49487))))

(declare-fun b!7047183 () Bool)

(declare-fun tp!1938199 () Bool)

(assert (=> b!7047183 (= e!4236515 tp!1938199)))

(assert (= (and setNonEmpty!49481 condSetEmpty!49487) setIsEmpty!49487))

(assert (= (and setNonEmpty!49481 (not condSetEmpty!49487)) setNonEmpty!49487))

(assert (= setNonEmpty!49487 b!7047183))

(declare-fun m!7761472 () Bool)

(assert (=> setNonEmpty!49487 m!7761472))

(declare-fun b!7047184 () Bool)

(declare-fun e!4236516 () Bool)

(declare-fun tp!1938201 () Bool)

(declare-fun tp!1938202 () Bool)

(assert (=> b!7047184 (= e!4236516 (and tp!1938201 tp!1938202))))

(assert (=> b!7046915 (= tp!1938172 e!4236516)))

(assert (= (and b!7046915 (is-Cons!67934 (exprs!7006 setElem!49481))) b!7047184))

(declare-fun b_lambda!267811 () Bool)

(assert (= b_lambda!267803 (or b!7046912 b_lambda!267811)))

(declare-fun bs!1875059 () Bool)

(declare-fun d!2201171 () Bool)

(assert (= bs!1875059 (and d!2201171 b!7046912)))

(assert (=> bs!1875059 (= (dynLambda!27514 lambda!417989 lt!2527481) (matchZipper!3050 (set.insert lt!2527481 (as set.empty (Set Context!13012))) s!7408))))

(declare-fun m!7761474 () Bool)

(assert (=> bs!1875059 m!7761474))

(assert (=> bs!1875059 m!7761474))

(declare-fun m!7761476 () Bool)

(assert (=> bs!1875059 m!7761476))

(assert (=> d!2201097 d!2201171))

(declare-fun b_lambda!267813 () Bool)

(assert (= b_lambda!267809 (or b!7046909 b_lambda!267813)))

(declare-fun bs!1875060 () Bool)

(declare-fun d!2201173 () Bool)

(assert (= bs!1875060 (and d!2201173 b!7046909)))

(assert (=> bs!1875060 (= (dynLambda!27516 lambda!417992 lt!2527396) (derivationStepZipperUp!2120 lt!2527396 (h!74383 s!7408)))))

(assert (=> bs!1875060 m!7761108))

(assert (=> d!2201163 d!2201173))

(declare-fun b_lambda!267815 () Bool)

(assert (= b_lambda!267807 (or b!7046906 b_lambda!267815)))

(declare-fun bs!1875061 () Bool)

(declare-fun d!2201175 () Bool)

(assert (= bs!1875061 (and d!2201175 b!7046906)))

(declare-fun lt!2527525 () Unit!161706)

(assert (=> bs!1875061 (= lt!2527525 (lemmaConcatPreservesForall!831 (exprs!7006 lt!2527517) (exprs!7006 ct2!306) lambda!417991))))

(assert (=> bs!1875061 (= (dynLambda!27515 lambda!417990 lt!2527517) (Context!13013 (++!15591 (exprs!7006 lt!2527517) (exprs!7006 ct2!306))))))

(declare-fun m!7761478 () Bool)

(assert (=> bs!1875061 m!7761478))

(declare-fun m!7761480 () Bool)

(assert (=> bs!1875061 m!7761480))

(assert (=> d!2201149 d!2201175))

(push 1)

(assert (not d!2201133))

(assert (not d!2201149))

(assert (not bs!1875061))

(assert (not d!2201159))

(assert (not d!2201097))

(assert (not d!2201093))

(assert (not b!7047074))

(assert (not d!2201163))

(assert (not b!7047077))

(assert (not d!2201115))

(assert (not b!7047110))

(assert tp_is_empty!44245)

(assert (not b_lambda!267813))

(assert (not d!2201143))

(assert (not d!2201135))

(assert (not d!2201111))

(assert (not b!7047147))

(assert (not b!7047034))

(assert (not b!7047088))

(assert (not d!2201157))

(assert (not b!7047167))

(assert (not setNonEmpty!49487))

(assert (not d!2201147))

(assert (not bs!1875059))

(assert (not b!7046995))

(assert (not d!2201099))

(assert (not d!2201095))

(assert (not b!7047164))

(assert (not d!2201129))

(assert (not b!7046986))

(assert (not bm!640283))

(assert (not b_lambda!267815))

(assert (not b!7047149))

(assert (not bs!1875060))

(assert (not d!2201105))

(assert (not bm!640281))

(assert (not b!7047075))

(assert (not b!7047111))

(assert (not bm!640299))

(assert (not d!2201141))

(assert (not b!7047184))

(assert (not bm!640298))

(assert (not b!7047035))

(assert (not b!7047078))

(assert (not d!2201091))

(assert (not b!7047153))

(assert (not d!2201113))

(assert (not b!7046996))

(assert (not bm!640300))

(assert (not d!2201137))

(assert (not b!7047076))

(assert (not d!2201103))

(assert (not bm!640290))

(assert (not b!7047178))

(assert (not b!7047032))

(assert (not b!7047183))

(assert (not d!2201109))

(assert (not bm!640282))

(assert (not b!7047173))

(assert (not b!7046997))

(assert (not b!7047037))

(assert (not d!2201101))

(assert (not b!7047152))

(assert (not d!2201151))

(assert (not d!2201107))

(assert (not b_lambda!267811))

(assert (not b!7047166))

(assert (not b!7047033))

(assert (not b!7047038))

(assert (not b!7047089))

(assert (not b!7046994))

(assert (not d!2201169))

(assert (not d!2201165))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

