; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716486 () Bool)

(assert start!716486)

(declare-fun b!7335164 () Bool)

(declare-fun e!4392357 () Bool)

(declare-fun tp!2082210 () Bool)

(assert (=> b!7335164 (= e!4392357 tp!2082210)))

(declare-fun b!7335165 () Bool)

(declare-fun res!2964009 () Bool)

(declare-fun e!4392354 () Bool)

(assert (=> b!7335165 (=> (not res!2964009) (not e!4392354))))

(declare-datatypes ((C!38418 0))(
  ( (C!38419 (val!29569 Int)) )
))
(declare-datatypes ((Regex!19072 0))(
  ( (ElementMatch!19072 (c!1362342 C!38418)) (Concat!27917 (regOne!38656 Regex!19072) (regTwo!38656 Regex!19072)) (EmptyExpr!19072) (Star!19072 (reg!19401 Regex!19072)) (EmptyLang!19072) (Union!19072 (regOne!38657 Regex!19072) (regTwo!38657 Regex!19072)) )
))
(declare-datatypes ((List!71568 0))(
  ( (Nil!71444) (Cons!71444 (h!77892 Regex!19072) (t!385963 List!71568)) )
))
(declare-datatypes ((Context!16024 0))(
  ( (Context!16025 (exprs!8512 List!71568)) )
))
(declare-fun lt!2609024 () (Set Context!16024))

(declare-fun cWitness!35 () Context!16024)

(declare-fun lt!2609032 () (Set Context!16024))

(assert (=> b!7335165 (= res!2964009 (and (= lt!2609024 lt!2609032) (set.member cWitness!35 lt!2609032)))))

(declare-fun b!7335166 () Bool)

(declare-fun e!4392358 () Bool)

(declare-fun tp!2082208 () Bool)

(assert (=> b!7335166 (= e!4392358 tp!2082208)))

(declare-fun b!7335167 () Bool)

(declare-fun e!4392353 () Bool)

(assert (=> b!7335167 (= e!4392353 e!4392354)))

(declare-fun res!2964013 () Bool)

(assert (=> b!7335167 (=> (not res!2964013) (not e!4392354))))

(declare-fun ct1!256 () Context!16024)

(declare-fun nullable!8173 (Regex!19072) Bool)

(assert (=> b!7335167 (= res!2964013 (not (nullable!8173 (h!77892 (exprs!8512 ct1!256)))))))

(declare-fun c!10305 () C!38418)

(declare-fun lt!2609035 () Context!16024)

(declare-fun derivationStepZipperDown!2899 (Regex!19072 Context!16024 C!38418) (Set Context!16024))

(assert (=> b!7335167 (= lt!2609032 (derivationStepZipperDown!2899 (h!77892 (exprs!8512 ct1!256)) lt!2609035 c!10305))))

(declare-fun lt!2609028 () List!71568)

(assert (=> b!7335167 (= lt!2609035 (Context!16025 lt!2609028))))

(declare-fun tail!14753 (List!71568) List!71568)

(assert (=> b!7335167 (= lt!2609028 (tail!14753 (exprs!8512 ct1!256)))))

(declare-fun res!2964007 () Bool)

(declare-fun e!4392355 () Bool)

(assert (=> start!716486 (=> (not res!2964007) (not e!4392355))))

(assert (=> start!716486 (= res!2964007 (set.member cWitness!35 lt!2609024))))

(declare-fun derivationStepZipperUp!2752 (Context!16024 C!38418) (Set Context!16024))

(assert (=> start!716486 (= lt!2609024 (derivationStepZipperUp!2752 ct1!256 c!10305))))

(assert (=> start!716486 e!4392355))

(declare-fun tp_is_empty!48389 () Bool)

(assert (=> start!716486 tp_is_empty!48389))

(declare-fun inv!91021 (Context!16024) Bool)

(assert (=> start!716486 (and (inv!91021 cWitness!35) e!4392357)))

(declare-fun e!4392356 () Bool)

(assert (=> start!716486 (and (inv!91021 ct1!256) e!4392356)))

(declare-fun ct2!352 () Context!16024)

(assert (=> start!716486 (and (inv!91021 ct2!352) e!4392358)))

(declare-fun b!7335168 () Bool)

(declare-fun e!4392359 () Bool)

(assert (=> b!7335168 (= e!4392354 (not e!4392359))))

(declare-fun res!2964010 () Bool)

(assert (=> b!7335168 (=> res!2964010 e!4392359)))

(declare-fun lt!2609022 () Context!16024)

(declare-fun lt!2609033 () (Set Context!16024))

(assert (=> b!7335168 (= res!2964010 (not (set.member lt!2609022 lt!2609033)))))

(declare-fun lambda!455094 () Int)

(declare-datatypes ((Unit!165105 0))(
  ( (Unit!165106) )
))
(declare-fun lt!2609026 () Unit!165105)

(declare-fun lemmaConcatPreservesForall!1751 (List!71568 List!71568 Int) Unit!165105)

(assert (=> b!7335168 (= lt!2609026 (lemmaConcatPreservesForall!1751 (exprs!8512 cWitness!35) (exprs!8512 ct2!352) lambda!455094))))

(declare-fun ++!16894 (List!71568 List!71568) List!71568)

(assert (=> b!7335168 (set.member lt!2609022 (derivationStepZipperDown!2899 (h!77892 (exprs!8512 ct1!256)) (Context!16025 (++!16894 lt!2609028 (exprs!8512 ct2!352))) c!10305))))

(assert (=> b!7335168 (= lt!2609022 (Context!16025 (++!16894 (exprs!8512 cWitness!35) (exprs!8512 ct2!352))))))

(declare-fun lt!2609027 () Unit!165105)

(assert (=> b!7335168 (= lt!2609027 (lemmaConcatPreservesForall!1751 lt!2609028 (exprs!8512 ct2!352) lambda!455094))))

(declare-fun lt!2609023 () Unit!165105)

(assert (=> b!7335168 (= lt!2609023 (lemmaConcatPreservesForall!1751 (exprs!8512 cWitness!35) (exprs!8512 ct2!352) lambda!455094))))

(declare-fun lt!2609034 () Unit!165105)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!37 (Regex!19072 Context!16024 Context!16024 Context!16024 C!38418) Unit!165105)

(assert (=> b!7335168 (= lt!2609034 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!37 (h!77892 (exprs!8512 ct1!256)) lt!2609035 ct2!352 cWitness!35 c!10305))))

(declare-fun lt!2609030 () List!71568)

(assert (=> b!7335168 (= lt!2609033 (derivationStepZipperDown!2899 (h!77892 (exprs!8512 ct1!256)) (Context!16025 (tail!14753 lt!2609030)) c!10305))))

(declare-fun b!7335169 () Bool)

(declare-fun tp!2082209 () Bool)

(assert (=> b!7335169 (= e!4392356 tp!2082209)))

(declare-fun b!7335170 () Bool)

(assert (=> b!7335170 (= e!4392359 (inv!91021 lt!2609022))))

(declare-fun lt!2609025 () Unit!165105)

(assert (=> b!7335170 (= lt!2609025 (lemmaConcatPreservesForall!1751 (exprs!8512 ct1!256) (exprs!8512 ct2!352) lambda!455094))))

(declare-fun lt!2609029 () Unit!165105)

(assert (=> b!7335170 (= lt!2609029 (lemmaConcatPreservesForall!1751 (exprs!8512 cWitness!35) (exprs!8512 ct2!352) lambda!455094))))

(declare-fun b!7335171 () Bool)

(declare-fun res!2964012 () Bool)

(assert (=> b!7335171 (=> (not res!2964012) (not e!4392354))))

(declare-fun isEmpty!40984 (List!71568) Bool)

(assert (=> b!7335171 (= res!2964012 (not (isEmpty!40984 lt!2609030)))))

(declare-fun b!7335172 () Bool)

(assert (=> b!7335172 (= e!4392355 e!4392353)))

(declare-fun res!2964008 () Bool)

(assert (=> b!7335172 (=> (not res!2964008) (not e!4392353))))

(assert (=> b!7335172 (= res!2964008 (is-Cons!71444 (exprs!8512 ct1!256)))))

(assert (=> b!7335172 (= lt!2609030 (++!16894 (exprs!8512 ct1!256) (exprs!8512 ct2!352)))))

(declare-fun lt!2609031 () Unit!165105)

(assert (=> b!7335172 (= lt!2609031 (lemmaConcatPreservesForall!1751 (exprs!8512 ct1!256) (exprs!8512 ct2!352) lambda!455094))))

(declare-fun b!7335173 () Bool)

(declare-fun res!2964011 () Bool)

(assert (=> b!7335173 (=> (not res!2964011) (not e!4392353))))

(assert (=> b!7335173 (= res!2964011 (not (isEmpty!40984 (exprs!8512 ct1!256))))))

(assert (= (and start!716486 res!2964007) b!7335172))

(assert (= (and b!7335172 res!2964008) b!7335173))

(assert (= (and b!7335173 res!2964011) b!7335167))

(assert (= (and b!7335167 res!2964013) b!7335165))

(assert (= (and b!7335165 res!2964009) b!7335171))

(assert (= (and b!7335171 res!2964012) b!7335168))

(assert (= (and b!7335168 (not res!2964010)) b!7335170))

(assert (= start!716486 b!7335164))

(assert (= start!716486 b!7335169))

(assert (= start!716486 b!7335166))

(declare-fun m!8001106 () Bool)

(assert (=> b!7335167 m!8001106))

(declare-fun m!8001108 () Bool)

(assert (=> b!7335167 m!8001108))

(declare-fun m!8001110 () Bool)

(assert (=> b!7335167 m!8001110))

(declare-fun m!8001112 () Bool)

(assert (=> b!7335168 m!8001112))

(declare-fun m!8001114 () Bool)

(assert (=> b!7335168 m!8001114))

(declare-fun m!8001116 () Bool)

(assert (=> b!7335168 m!8001116))

(declare-fun m!8001118 () Bool)

(assert (=> b!7335168 m!8001118))

(declare-fun m!8001120 () Bool)

(assert (=> b!7335168 m!8001120))

(declare-fun m!8001122 () Bool)

(assert (=> b!7335168 m!8001122))

(declare-fun m!8001124 () Bool)

(assert (=> b!7335168 m!8001124))

(assert (=> b!7335168 m!8001122))

(declare-fun m!8001126 () Bool)

(assert (=> b!7335168 m!8001126))

(declare-fun m!8001128 () Bool)

(assert (=> b!7335168 m!8001128))

(declare-fun m!8001130 () Bool)

(assert (=> b!7335168 m!8001130))

(declare-fun m!8001132 () Bool)

(assert (=> b!7335170 m!8001132))

(declare-fun m!8001134 () Bool)

(assert (=> b!7335170 m!8001134))

(assert (=> b!7335170 m!8001122))

(declare-fun m!8001136 () Bool)

(assert (=> b!7335172 m!8001136))

(assert (=> b!7335172 m!8001134))

(declare-fun m!8001138 () Bool)

(assert (=> start!716486 m!8001138))

(declare-fun m!8001140 () Bool)

(assert (=> start!716486 m!8001140))

(declare-fun m!8001142 () Bool)

(assert (=> start!716486 m!8001142))

(declare-fun m!8001144 () Bool)

(assert (=> start!716486 m!8001144))

(declare-fun m!8001146 () Bool)

(assert (=> start!716486 m!8001146))

(declare-fun m!8001148 () Bool)

(assert (=> b!7335173 m!8001148))

(declare-fun m!8001150 () Bool)

(assert (=> b!7335171 m!8001150))

(declare-fun m!8001152 () Bool)

(assert (=> b!7335165 m!8001152))

(push 1)

(assert (not b!7335169))

(assert (not b!7335166))

(assert (not b!7335164))

(assert (not b!7335170))

(assert (not b!7335167))

(assert (not b!7335173))

(assert tp_is_empty!48389)

(assert (not b!7335168))

(assert (not b!7335172))

(assert (not b!7335171))

(assert (not start!716486))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2277859 () Bool)

(assert (=> d!2277859 (= (isEmpty!40984 lt!2609030) (is-Nil!71444 lt!2609030))))

(assert (=> b!7335171 d!2277859))

(declare-fun bs!1917904 () Bool)

(declare-fun d!2277861 () Bool)

(assert (= bs!1917904 (and d!2277861 b!7335172)))

(declare-fun lambda!455110 () Int)

(assert (=> bs!1917904 (= lambda!455110 lambda!455094)))

(declare-fun forall!17908 (List!71568 Int) Bool)

(assert (=> d!2277861 (= (inv!91021 lt!2609022) (forall!17908 (exprs!8512 lt!2609022) lambda!455110))))

(declare-fun bs!1917905 () Bool)

(assert (= bs!1917905 d!2277861))

(declare-fun m!8001202 () Bool)

(assert (=> bs!1917905 m!8001202))

(assert (=> b!7335170 d!2277861))

(declare-fun d!2277863 () Bool)

(assert (=> d!2277863 (forall!17908 (++!16894 (exprs!8512 ct1!256) (exprs!8512 ct2!352)) lambda!455094)))

(declare-fun lt!2609080 () Unit!165105)

(declare-fun choose!57057 (List!71568 List!71568 Int) Unit!165105)

(assert (=> d!2277863 (= lt!2609080 (choose!57057 (exprs!8512 ct1!256) (exprs!8512 ct2!352) lambda!455094))))

(assert (=> d!2277863 (forall!17908 (exprs!8512 ct1!256) lambda!455094)))

(assert (=> d!2277863 (= (lemmaConcatPreservesForall!1751 (exprs!8512 ct1!256) (exprs!8512 ct2!352) lambda!455094) lt!2609080)))

(declare-fun bs!1917906 () Bool)

(assert (= bs!1917906 d!2277863))

(assert (=> bs!1917906 m!8001136))

(assert (=> bs!1917906 m!8001136))

(declare-fun m!8001204 () Bool)

(assert (=> bs!1917906 m!8001204))

(declare-fun m!8001206 () Bool)

(assert (=> bs!1917906 m!8001206))

(declare-fun m!8001208 () Bool)

(assert (=> bs!1917906 m!8001208))

(assert (=> b!7335170 d!2277863))

(declare-fun d!2277865 () Bool)

(assert (=> d!2277865 (forall!17908 (++!16894 (exprs!8512 cWitness!35) (exprs!8512 ct2!352)) lambda!455094)))

(declare-fun lt!2609081 () Unit!165105)

(assert (=> d!2277865 (= lt!2609081 (choose!57057 (exprs!8512 cWitness!35) (exprs!8512 ct2!352) lambda!455094))))

(assert (=> d!2277865 (forall!17908 (exprs!8512 cWitness!35) lambda!455094)))

(assert (=> d!2277865 (= (lemmaConcatPreservesForall!1751 (exprs!8512 cWitness!35) (exprs!8512 ct2!352) lambda!455094) lt!2609081)))

(declare-fun bs!1917907 () Bool)

(assert (= bs!1917907 d!2277865))

(assert (=> bs!1917907 m!8001126))

(assert (=> bs!1917907 m!8001126))

(declare-fun m!8001210 () Bool)

(assert (=> bs!1917907 m!8001210))

(declare-fun m!8001212 () Bool)

(assert (=> bs!1917907 m!8001212))

(declare-fun m!8001214 () Bool)

(assert (=> bs!1917907 m!8001214))

(assert (=> b!7335170 d!2277865))

(declare-fun b!7335214 () Bool)

(declare-fun e!4392387 () (Set Context!16024))

(declare-fun e!4392388 () (Set Context!16024))

(assert (=> b!7335214 (= e!4392387 e!4392388)))

(declare-fun c!1362348 () Bool)

(assert (=> b!7335214 (= c!1362348 (is-Cons!71444 (exprs!8512 ct1!256)))))

(declare-fun b!7335215 () Bool)

(declare-fun call!668784 () (Set Context!16024))

(assert (=> b!7335215 (= e!4392388 call!668784)))

(declare-fun b!7335216 () Bool)

(assert (=> b!7335216 (= e!4392388 (as set.empty (Set Context!16024)))))

(declare-fun bm!668779 () Bool)

(assert (=> bm!668779 (= call!668784 (derivationStepZipperDown!2899 (h!77892 (exprs!8512 ct1!256)) (Context!16025 (t!385963 (exprs!8512 ct1!256))) c!10305))))

(declare-fun d!2277867 () Bool)

(declare-fun c!1362349 () Bool)

(declare-fun e!4392389 () Bool)

(assert (=> d!2277867 (= c!1362349 e!4392389)))

(declare-fun res!2964037 () Bool)

(assert (=> d!2277867 (=> (not res!2964037) (not e!4392389))))

(assert (=> d!2277867 (= res!2964037 (is-Cons!71444 (exprs!8512 ct1!256)))))

(assert (=> d!2277867 (= (derivationStepZipperUp!2752 ct1!256 c!10305) e!4392387)))

(declare-fun b!7335217 () Bool)

(assert (=> b!7335217 (= e!4392389 (nullable!8173 (h!77892 (exprs!8512 ct1!256))))))

(declare-fun b!7335218 () Bool)

(assert (=> b!7335218 (= e!4392387 (set.union call!668784 (derivationStepZipperUp!2752 (Context!16025 (t!385963 (exprs!8512 ct1!256))) c!10305)))))

(assert (= (and d!2277867 res!2964037) b!7335217))

(assert (= (and d!2277867 c!1362349) b!7335218))

(assert (= (and d!2277867 (not c!1362349)) b!7335214))

(assert (= (and b!7335214 c!1362348) b!7335215))

(assert (= (and b!7335214 (not c!1362348)) b!7335216))

(assert (= (or b!7335218 b!7335215) bm!668779))

(declare-fun m!8001216 () Bool)

(assert (=> bm!668779 m!8001216))

(assert (=> b!7335217 m!8001106))

(declare-fun m!8001218 () Bool)

(assert (=> b!7335218 m!8001218))

(assert (=> start!716486 d!2277867))

(declare-fun bs!1917908 () Bool)

(declare-fun d!2277871 () Bool)

(assert (= bs!1917908 (and d!2277871 b!7335172)))

(declare-fun lambda!455111 () Int)

(assert (=> bs!1917908 (= lambda!455111 lambda!455094)))

(declare-fun bs!1917909 () Bool)

(assert (= bs!1917909 (and d!2277871 d!2277861)))

(assert (=> bs!1917909 (= lambda!455111 lambda!455110)))

(assert (=> d!2277871 (= (inv!91021 cWitness!35) (forall!17908 (exprs!8512 cWitness!35) lambda!455111))))

(declare-fun bs!1917910 () Bool)

(assert (= bs!1917910 d!2277871))

(declare-fun m!8001220 () Bool)

(assert (=> bs!1917910 m!8001220))

(assert (=> start!716486 d!2277871))

(declare-fun bs!1917911 () Bool)

(declare-fun d!2277873 () Bool)

(assert (= bs!1917911 (and d!2277873 b!7335172)))

(declare-fun lambda!455112 () Int)

(assert (=> bs!1917911 (= lambda!455112 lambda!455094)))

(declare-fun bs!1917912 () Bool)

(assert (= bs!1917912 (and d!2277873 d!2277861)))

(assert (=> bs!1917912 (= lambda!455112 lambda!455110)))

(declare-fun bs!1917913 () Bool)

(assert (= bs!1917913 (and d!2277873 d!2277871)))

(assert (=> bs!1917913 (= lambda!455112 lambda!455111)))

(assert (=> d!2277873 (= (inv!91021 ct1!256) (forall!17908 (exprs!8512 ct1!256) lambda!455112))))

(declare-fun bs!1917914 () Bool)

(assert (= bs!1917914 d!2277873))

(declare-fun m!8001222 () Bool)

(assert (=> bs!1917914 m!8001222))

(assert (=> start!716486 d!2277873))

(declare-fun bs!1917915 () Bool)

(declare-fun d!2277875 () Bool)

(assert (= bs!1917915 (and d!2277875 b!7335172)))

(declare-fun lambda!455113 () Int)

(assert (=> bs!1917915 (= lambda!455113 lambda!455094)))

(declare-fun bs!1917916 () Bool)

(assert (= bs!1917916 (and d!2277875 d!2277861)))

(assert (=> bs!1917916 (= lambda!455113 lambda!455110)))

(declare-fun bs!1917917 () Bool)

(assert (= bs!1917917 (and d!2277875 d!2277871)))

(assert (=> bs!1917917 (= lambda!455113 lambda!455111)))

(declare-fun bs!1917918 () Bool)

(assert (= bs!1917918 (and d!2277875 d!2277873)))

(assert (=> bs!1917918 (= lambda!455113 lambda!455112)))

(assert (=> d!2277875 (= (inv!91021 ct2!352) (forall!17908 (exprs!8512 ct2!352) lambda!455113))))

(declare-fun bs!1917919 () Bool)

(assert (= bs!1917919 d!2277875))

(declare-fun m!8001224 () Bool)

(assert (=> bs!1917919 m!8001224))

(assert (=> start!716486 d!2277875))

(declare-fun b!7335229 () Bool)

(declare-fun res!2964043 () Bool)

(declare-fun e!4392394 () Bool)

(assert (=> b!7335229 (=> (not res!2964043) (not e!4392394))))

(declare-fun lt!2609087 () List!71568)

(declare-fun size!41978 (List!71568) Int)

(assert (=> b!7335229 (= res!2964043 (= (size!41978 lt!2609087) (+ (size!41978 lt!2609028) (size!41978 (exprs!8512 ct2!352)))))))

(declare-fun b!7335227 () Bool)

(declare-fun e!4392395 () List!71568)

(assert (=> b!7335227 (= e!4392395 (exprs!8512 ct2!352))))

(declare-fun b!7335228 () Bool)

(assert (=> b!7335228 (= e!4392395 (Cons!71444 (h!77892 lt!2609028) (++!16894 (t!385963 lt!2609028) (exprs!8512 ct2!352))))))

(declare-fun b!7335230 () Bool)

(assert (=> b!7335230 (= e!4392394 (or (not (= (exprs!8512 ct2!352) Nil!71444)) (= lt!2609087 lt!2609028)))))

(declare-fun d!2277877 () Bool)

(assert (=> d!2277877 e!4392394))

(declare-fun res!2964042 () Bool)

(assert (=> d!2277877 (=> (not res!2964042) (not e!4392394))))

(declare-fun content!14999 (List!71568) (Set Regex!19072))

(assert (=> d!2277877 (= res!2964042 (= (content!14999 lt!2609087) (set.union (content!14999 lt!2609028) (content!14999 (exprs!8512 ct2!352)))))))

(assert (=> d!2277877 (= lt!2609087 e!4392395)))

(declare-fun c!1362352 () Bool)

(assert (=> d!2277877 (= c!1362352 (is-Nil!71444 lt!2609028))))

(assert (=> d!2277877 (= (++!16894 lt!2609028 (exprs!8512 ct2!352)) lt!2609087)))

(assert (= (and d!2277877 c!1362352) b!7335227))

(assert (= (and d!2277877 (not c!1362352)) b!7335228))

(assert (= (and d!2277877 res!2964042) b!7335229))

(assert (= (and b!7335229 res!2964043) b!7335230))

(declare-fun m!8001232 () Bool)

(assert (=> b!7335229 m!8001232))

(declare-fun m!8001234 () Bool)

(assert (=> b!7335229 m!8001234))

(declare-fun m!8001236 () Bool)

(assert (=> b!7335229 m!8001236))

(declare-fun m!8001238 () Bool)

(assert (=> b!7335228 m!8001238))

(declare-fun m!8001240 () Bool)

(assert (=> d!2277877 m!8001240))

(declare-fun m!8001242 () Bool)

(assert (=> d!2277877 m!8001242))

(declare-fun m!8001244 () Bool)

(assert (=> d!2277877 m!8001244))

(assert (=> b!7335168 d!2277877))

(declare-fun b!7335233 () Bool)

(declare-fun res!2964045 () Bool)

(declare-fun e!4392396 () Bool)

(assert (=> b!7335233 (=> (not res!2964045) (not e!4392396))))

(declare-fun lt!2609088 () List!71568)

(assert (=> b!7335233 (= res!2964045 (= (size!41978 lt!2609088) (+ (size!41978 (exprs!8512 cWitness!35)) (size!41978 (exprs!8512 ct2!352)))))))

(declare-fun b!7335231 () Bool)

(declare-fun e!4392397 () List!71568)

(assert (=> b!7335231 (= e!4392397 (exprs!8512 ct2!352))))

(declare-fun b!7335232 () Bool)

(assert (=> b!7335232 (= e!4392397 (Cons!71444 (h!77892 (exprs!8512 cWitness!35)) (++!16894 (t!385963 (exprs!8512 cWitness!35)) (exprs!8512 ct2!352))))))

(declare-fun b!7335234 () Bool)

(assert (=> b!7335234 (= e!4392396 (or (not (= (exprs!8512 ct2!352) Nil!71444)) (= lt!2609088 (exprs!8512 cWitness!35))))))

(declare-fun d!2277881 () Bool)

(assert (=> d!2277881 e!4392396))

(declare-fun res!2964044 () Bool)

(assert (=> d!2277881 (=> (not res!2964044) (not e!4392396))))

(assert (=> d!2277881 (= res!2964044 (= (content!14999 lt!2609088) (set.union (content!14999 (exprs!8512 cWitness!35)) (content!14999 (exprs!8512 ct2!352)))))))

(assert (=> d!2277881 (= lt!2609088 e!4392397)))

(declare-fun c!1362353 () Bool)

(assert (=> d!2277881 (= c!1362353 (is-Nil!71444 (exprs!8512 cWitness!35)))))

(assert (=> d!2277881 (= (++!16894 (exprs!8512 cWitness!35) (exprs!8512 ct2!352)) lt!2609088)))

(assert (= (and d!2277881 c!1362353) b!7335231))

(assert (= (and d!2277881 (not c!1362353)) b!7335232))

(assert (= (and d!2277881 res!2964044) b!7335233))

(assert (= (and b!7335233 res!2964045) b!7335234))

(declare-fun m!8001246 () Bool)

(assert (=> b!7335233 m!8001246))

(declare-fun m!8001248 () Bool)

(assert (=> b!7335233 m!8001248))

(assert (=> b!7335233 m!8001236))

(declare-fun m!8001250 () Bool)

(assert (=> b!7335232 m!8001250))

(declare-fun m!8001252 () Bool)

(assert (=> d!2277881 m!8001252))

(declare-fun m!8001254 () Bool)

(assert (=> d!2277881 m!8001254))

(assert (=> d!2277881 m!8001244))

(assert (=> b!7335168 d!2277881))

(declare-fun call!668807 () List!71568)

(declare-fun c!1362374 () Bool)

(declare-fun call!668809 () (Set Context!16024))

(declare-fun bm!668798 () Bool)

(declare-fun c!1362375 () Bool)

(declare-fun c!1362376 () Bool)

(assert (=> bm!668798 (= call!668809 (derivationStepZipperDown!2899 (ite c!1362375 (regTwo!38657 (h!77892 (exprs!8512 ct1!256))) (ite c!1362376 (regTwo!38656 (h!77892 (exprs!8512 ct1!256))) (ite c!1362374 (regOne!38656 (h!77892 (exprs!8512 ct1!256))) (reg!19401 (h!77892 (exprs!8512 ct1!256)))))) (ite (or c!1362375 c!1362376) (Context!16025 (++!16894 lt!2609028 (exprs!8512 ct2!352))) (Context!16025 call!668807)) c!10305))))

(declare-fun d!2277883 () Bool)

(declare-fun c!1362378 () Bool)

(assert (=> d!2277883 (= c!1362378 (and (is-ElementMatch!19072 (h!77892 (exprs!8512 ct1!256))) (= (c!1362342 (h!77892 (exprs!8512 ct1!256))) c!10305)))))

(declare-fun e!4392427 () (Set Context!16024))

(assert (=> d!2277883 (= (derivationStepZipperDown!2899 (h!77892 (exprs!8512 ct1!256)) (Context!16025 (++!16894 lt!2609028 (exprs!8512 ct2!352))) c!10305) e!4392427)))

(declare-fun b!7335279 () Bool)

(declare-fun e!4392424 () (Set Context!16024))

(declare-fun call!668806 () (Set Context!16024))

(assert (=> b!7335279 (= e!4392424 call!668806)))

(declare-fun b!7335280 () Bool)

(declare-fun e!4392426 () Bool)

(assert (=> b!7335280 (= c!1362376 e!4392426)))

(declare-fun res!2964050 () Bool)

(assert (=> b!7335280 (=> (not res!2964050) (not e!4392426))))

(assert (=> b!7335280 (= res!2964050 (is-Concat!27917 (h!77892 (exprs!8512 ct1!256))))))

(declare-fun e!4392422 () (Set Context!16024))

(declare-fun e!4392425 () (Set Context!16024))

(assert (=> b!7335280 (= e!4392422 e!4392425)))

(declare-fun b!7335281 () Bool)

(assert (=> b!7335281 (= e!4392427 e!4392422)))

(assert (=> b!7335281 (= c!1362375 (is-Union!19072 (h!77892 (exprs!8512 ct1!256))))))

(declare-fun b!7335282 () Bool)

(assert (=> b!7335282 (= e!4392425 e!4392424)))

(assert (=> b!7335282 (= c!1362374 (is-Concat!27917 (h!77892 (exprs!8512 ct1!256))))))

(declare-fun bm!668799 () Bool)

(declare-fun call!668808 () List!71568)

(declare-fun call!668810 () (Set Context!16024))

(assert (=> bm!668799 (= call!668810 (derivationStepZipperDown!2899 (ite c!1362375 (regOne!38657 (h!77892 (exprs!8512 ct1!256))) (regOne!38656 (h!77892 (exprs!8512 ct1!256)))) (ite c!1362375 (Context!16025 (++!16894 lt!2609028 (exprs!8512 ct2!352))) (Context!16025 call!668808)) c!10305))))

(declare-fun b!7335283 () Bool)

(declare-fun c!1362377 () Bool)

(assert (=> b!7335283 (= c!1362377 (is-Star!19072 (h!77892 (exprs!8512 ct1!256))))))

(declare-fun e!4392423 () (Set Context!16024))

(assert (=> b!7335283 (= e!4392424 e!4392423)))

(declare-fun b!7335284 () Bool)

(declare-fun call!668805 () (Set Context!16024))

(assert (=> b!7335284 (= e!4392425 (set.union call!668810 call!668805))))

(declare-fun bm!668800 () Bool)

(assert (=> bm!668800 (= call!668806 call!668805)))

(declare-fun b!7335285 () Bool)

(assert (=> b!7335285 (= e!4392422 (set.union call!668810 call!668809))))

(declare-fun b!7335286 () Bool)

(assert (=> b!7335286 (= e!4392426 (nullable!8173 (regOne!38656 (h!77892 (exprs!8512 ct1!256)))))))

(declare-fun bm!668801 () Bool)

(declare-fun $colon$colon!3081 (List!71568 Regex!19072) List!71568)

(assert (=> bm!668801 (= call!668808 ($colon$colon!3081 (exprs!8512 (Context!16025 (++!16894 lt!2609028 (exprs!8512 ct2!352)))) (ite (or c!1362376 c!1362374) (regTwo!38656 (h!77892 (exprs!8512 ct1!256))) (h!77892 (exprs!8512 ct1!256)))))))

(declare-fun b!7335287 () Bool)

(assert (=> b!7335287 (= e!4392423 call!668806)))

(declare-fun bm!668802 () Bool)

(assert (=> bm!668802 (= call!668807 call!668808)))

(declare-fun b!7335288 () Bool)

(assert (=> b!7335288 (= e!4392423 (as set.empty (Set Context!16024)))))

(declare-fun bm!668803 () Bool)

(assert (=> bm!668803 (= call!668805 call!668809)))

(declare-fun b!7335289 () Bool)

(assert (=> b!7335289 (= e!4392427 (set.insert (Context!16025 (++!16894 lt!2609028 (exprs!8512 ct2!352))) (as set.empty (Set Context!16024))))))

(assert (= (and d!2277883 c!1362378) b!7335289))

(assert (= (and d!2277883 (not c!1362378)) b!7335281))

(assert (= (and b!7335281 c!1362375) b!7335285))

(assert (= (and b!7335281 (not c!1362375)) b!7335280))

(assert (= (and b!7335280 res!2964050) b!7335286))

(assert (= (and b!7335280 c!1362376) b!7335284))

(assert (= (and b!7335280 (not c!1362376)) b!7335282))

(assert (= (and b!7335282 c!1362374) b!7335279))

(assert (= (and b!7335282 (not c!1362374)) b!7335283))

(assert (= (and b!7335283 c!1362377) b!7335287))

(assert (= (and b!7335283 (not c!1362377)) b!7335288))

(assert (= (or b!7335279 b!7335287) bm!668802))

(assert (= (or b!7335279 b!7335287) bm!668800))

(assert (= (or b!7335284 bm!668800) bm!668803))

(assert (= (or b!7335284 bm!668802) bm!668801))

(assert (= (or b!7335285 bm!668803) bm!668798))

(assert (= (or b!7335285 b!7335284) bm!668799))

(declare-fun m!8001256 () Bool)

(assert (=> b!7335289 m!8001256))

(declare-fun m!8001258 () Bool)

(assert (=> b!7335286 m!8001258))

(declare-fun m!8001260 () Bool)

(assert (=> bm!668799 m!8001260))

(declare-fun m!8001262 () Bool)

(assert (=> bm!668798 m!8001262))

(declare-fun m!8001264 () Bool)

(assert (=> bm!668801 m!8001264))

(assert (=> b!7335168 d!2277883))

(declare-fun call!668813 () List!71568)

(declare-fun call!668815 () (Set Context!16024))

(declare-fun bm!668806 () Bool)

(declare-fun c!1362381 () Bool)

(declare-fun c!1362380 () Bool)

(declare-fun c!1362379 () Bool)

(assert (=> bm!668806 (= call!668815 (derivationStepZipperDown!2899 (ite c!1362380 (regTwo!38657 (h!77892 (exprs!8512 ct1!256))) (ite c!1362381 (regTwo!38656 (h!77892 (exprs!8512 ct1!256))) (ite c!1362379 (regOne!38656 (h!77892 (exprs!8512 ct1!256))) (reg!19401 (h!77892 (exprs!8512 ct1!256)))))) (ite (or c!1362380 c!1362381) (Context!16025 (tail!14753 lt!2609030)) (Context!16025 call!668813)) c!10305))))

(declare-fun d!2277885 () Bool)

(declare-fun c!1362383 () Bool)

(assert (=> d!2277885 (= c!1362383 (and (is-ElementMatch!19072 (h!77892 (exprs!8512 ct1!256))) (= (c!1362342 (h!77892 (exprs!8512 ct1!256))) c!10305)))))

(declare-fun e!4392433 () (Set Context!16024))

(assert (=> d!2277885 (= (derivationStepZipperDown!2899 (h!77892 (exprs!8512 ct1!256)) (Context!16025 (tail!14753 lt!2609030)) c!10305) e!4392433)))

(declare-fun b!7335290 () Bool)

(declare-fun e!4392430 () (Set Context!16024))

(declare-fun call!668812 () (Set Context!16024))

(assert (=> b!7335290 (= e!4392430 call!668812)))

(declare-fun b!7335291 () Bool)

(declare-fun e!4392432 () Bool)

(assert (=> b!7335291 (= c!1362381 e!4392432)))

(declare-fun res!2964051 () Bool)

(assert (=> b!7335291 (=> (not res!2964051) (not e!4392432))))

(assert (=> b!7335291 (= res!2964051 (is-Concat!27917 (h!77892 (exprs!8512 ct1!256))))))

(declare-fun e!4392428 () (Set Context!16024))

(declare-fun e!4392431 () (Set Context!16024))

(assert (=> b!7335291 (= e!4392428 e!4392431)))

(declare-fun b!7335292 () Bool)

(assert (=> b!7335292 (= e!4392433 e!4392428)))

(assert (=> b!7335292 (= c!1362380 (is-Union!19072 (h!77892 (exprs!8512 ct1!256))))))

(declare-fun b!7335293 () Bool)

(assert (=> b!7335293 (= e!4392431 e!4392430)))

(assert (=> b!7335293 (= c!1362379 (is-Concat!27917 (h!77892 (exprs!8512 ct1!256))))))

(declare-fun bm!668807 () Bool)

(declare-fun call!668814 () List!71568)

(declare-fun call!668816 () (Set Context!16024))

(assert (=> bm!668807 (= call!668816 (derivationStepZipperDown!2899 (ite c!1362380 (regOne!38657 (h!77892 (exprs!8512 ct1!256))) (regOne!38656 (h!77892 (exprs!8512 ct1!256)))) (ite c!1362380 (Context!16025 (tail!14753 lt!2609030)) (Context!16025 call!668814)) c!10305))))

(declare-fun b!7335294 () Bool)

(declare-fun c!1362382 () Bool)

(assert (=> b!7335294 (= c!1362382 (is-Star!19072 (h!77892 (exprs!8512 ct1!256))))))

(declare-fun e!4392429 () (Set Context!16024))

(assert (=> b!7335294 (= e!4392430 e!4392429)))

(declare-fun b!7335295 () Bool)

(declare-fun call!668811 () (Set Context!16024))

(assert (=> b!7335295 (= e!4392431 (set.union call!668816 call!668811))))

(declare-fun bm!668808 () Bool)

(assert (=> bm!668808 (= call!668812 call!668811)))

(declare-fun b!7335296 () Bool)

(assert (=> b!7335296 (= e!4392428 (set.union call!668816 call!668815))))

(declare-fun b!7335297 () Bool)

(assert (=> b!7335297 (= e!4392432 (nullable!8173 (regOne!38656 (h!77892 (exprs!8512 ct1!256)))))))

(declare-fun bm!668809 () Bool)

(assert (=> bm!668809 (= call!668814 ($colon$colon!3081 (exprs!8512 (Context!16025 (tail!14753 lt!2609030))) (ite (or c!1362381 c!1362379) (regTwo!38656 (h!77892 (exprs!8512 ct1!256))) (h!77892 (exprs!8512 ct1!256)))))))

(declare-fun b!7335298 () Bool)

(assert (=> b!7335298 (= e!4392429 call!668812)))

(declare-fun bm!668810 () Bool)

(assert (=> bm!668810 (= call!668813 call!668814)))

(declare-fun b!7335299 () Bool)

(assert (=> b!7335299 (= e!4392429 (as set.empty (Set Context!16024)))))

(declare-fun bm!668811 () Bool)

(assert (=> bm!668811 (= call!668811 call!668815)))

(declare-fun b!7335300 () Bool)

(assert (=> b!7335300 (= e!4392433 (set.insert (Context!16025 (tail!14753 lt!2609030)) (as set.empty (Set Context!16024))))))

(assert (= (and d!2277885 c!1362383) b!7335300))

(assert (= (and d!2277885 (not c!1362383)) b!7335292))

(assert (= (and b!7335292 c!1362380) b!7335296))

(assert (= (and b!7335292 (not c!1362380)) b!7335291))

(assert (= (and b!7335291 res!2964051) b!7335297))

(assert (= (and b!7335291 c!1362381) b!7335295))

(assert (= (and b!7335291 (not c!1362381)) b!7335293))

(assert (= (and b!7335293 c!1362379) b!7335290))

(assert (= (and b!7335293 (not c!1362379)) b!7335294))

(assert (= (and b!7335294 c!1362382) b!7335298))

(assert (= (and b!7335294 (not c!1362382)) b!7335299))

(assert (= (or b!7335290 b!7335298) bm!668810))

(assert (= (or b!7335290 b!7335298) bm!668808))

(assert (= (or b!7335295 bm!668808) bm!668811))

(assert (= (or b!7335295 bm!668810) bm!668809))

(assert (= (or b!7335296 bm!668811) bm!668806))

(assert (= (or b!7335296 b!7335295) bm!668807))

(declare-fun m!8001266 () Bool)

(assert (=> b!7335300 m!8001266))

(assert (=> b!7335297 m!8001258))

(declare-fun m!8001268 () Bool)

(assert (=> bm!668807 m!8001268))

(declare-fun m!8001270 () Bool)

(assert (=> bm!668806 m!8001270))

(declare-fun m!8001272 () Bool)

(assert (=> bm!668809 m!8001272))

(assert (=> b!7335168 d!2277885))

(assert (=> b!7335168 d!2277865))

(declare-fun bs!1917921 () Bool)

(declare-fun d!2277887 () Bool)

(assert (= bs!1917921 (and d!2277887 b!7335172)))

(declare-fun lambda!455118 () Int)

(assert (=> bs!1917921 (= lambda!455118 lambda!455094)))

(declare-fun bs!1917922 () Bool)

(assert (= bs!1917922 (and d!2277887 d!2277875)))

(assert (=> bs!1917922 (= lambda!455118 lambda!455113)))

(declare-fun bs!1917923 () Bool)

(assert (= bs!1917923 (and d!2277887 d!2277873)))

(assert (=> bs!1917923 (= lambda!455118 lambda!455112)))

(declare-fun bs!1917924 () Bool)

(assert (= bs!1917924 (and d!2277887 d!2277871)))

(assert (=> bs!1917924 (= lambda!455118 lambda!455111)))

(declare-fun bs!1917925 () Bool)

(assert (= bs!1917925 (and d!2277887 d!2277861)))

(assert (=> bs!1917925 (= lambda!455118 lambda!455110)))

(assert (=> d!2277887 (set.member (Context!16025 (++!16894 (exprs!8512 cWitness!35) (exprs!8512 ct2!352))) (derivationStepZipperDown!2899 (h!77892 (exprs!8512 ct1!256)) (Context!16025 (++!16894 (exprs!8512 lt!2609035) (exprs!8512 ct2!352))) c!10305))))

(declare-fun lt!2609097 () Unit!165105)

(assert (=> d!2277887 (= lt!2609097 (lemmaConcatPreservesForall!1751 (exprs!8512 lt!2609035) (exprs!8512 ct2!352) lambda!455118))))

(declare-fun lt!2609096 () Unit!165105)

(assert (=> d!2277887 (= lt!2609096 (lemmaConcatPreservesForall!1751 (exprs!8512 cWitness!35) (exprs!8512 ct2!352) lambda!455118))))

(declare-fun lt!2609095 () Unit!165105)

(declare-fun choose!57058 (Regex!19072 Context!16024 Context!16024 Context!16024 C!38418) Unit!165105)

(assert (=> d!2277887 (= lt!2609095 (choose!57058 (h!77892 (exprs!8512 ct1!256)) lt!2609035 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9670 (Regex!19072) Bool)

(assert (=> d!2277887 (validRegex!9670 (h!77892 (exprs!8512 ct1!256)))))

(assert (=> d!2277887 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!37 (h!77892 (exprs!8512 ct1!256)) lt!2609035 ct2!352 cWitness!35 c!10305) lt!2609095)))

(declare-fun bs!1917926 () Bool)

(assert (= bs!1917926 d!2277887))

(declare-fun m!8001274 () Bool)

(assert (=> bs!1917926 m!8001274))

(declare-fun m!8001276 () Bool)

(assert (=> bs!1917926 m!8001276))

(declare-fun m!8001278 () Bool)

(assert (=> bs!1917926 m!8001278))

(declare-fun m!8001280 () Bool)

(assert (=> bs!1917926 m!8001280))

(declare-fun m!8001282 () Bool)

(assert (=> bs!1917926 m!8001282))

(assert (=> bs!1917926 m!8001126))

(declare-fun m!8001284 () Bool)

(assert (=> bs!1917926 m!8001284))

(declare-fun m!8001286 () Bool)

(assert (=> bs!1917926 m!8001286))

(assert (=> b!7335168 d!2277887))

(declare-fun d!2277889 () Bool)

(assert (=> d!2277889 (= (tail!14753 lt!2609030) (t!385963 lt!2609030))))

(assert (=> b!7335168 d!2277889))

(declare-fun d!2277891 () Bool)

(assert (=> d!2277891 (forall!17908 (++!16894 lt!2609028 (exprs!8512 ct2!352)) lambda!455094)))

(declare-fun lt!2609098 () Unit!165105)

(assert (=> d!2277891 (= lt!2609098 (choose!57057 lt!2609028 (exprs!8512 ct2!352) lambda!455094))))

(assert (=> d!2277891 (forall!17908 lt!2609028 lambda!455094)))

(assert (=> d!2277891 (= (lemmaConcatPreservesForall!1751 lt!2609028 (exprs!8512 ct2!352) lambda!455094) lt!2609098)))

(declare-fun bs!1917927 () Bool)

(assert (= bs!1917927 d!2277891))

(assert (=> bs!1917927 m!8001116))

(assert (=> bs!1917927 m!8001116))

(declare-fun m!8001288 () Bool)

(assert (=> bs!1917927 m!8001288))

(declare-fun m!8001290 () Bool)

(assert (=> bs!1917927 m!8001290))

(declare-fun m!8001292 () Bool)

(assert (=> bs!1917927 m!8001292))

(assert (=> b!7335168 d!2277891))

(declare-fun d!2277893 () Bool)

(assert (=> d!2277893 (= (isEmpty!40984 (exprs!8512 ct1!256)) (is-Nil!71444 (exprs!8512 ct1!256)))))

(assert (=> b!7335173 d!2277893))

(declare-fun b!7335303 () Bool)

(declare-fun res!2964053 () Bool)

(declare-fun e!4392434 () Bool)

(assert (=> b!7335303 (=> (not res!2964053) (not e!4392434))))

(declare-fun lt!2609099 () List!71568)

(assert (=> b!7335303 (= res!2964053 (= (size!41978 lt!2609099) (+ (size!41978 (exprs!8512 ct1!256)) (size!41978 (exprs!8512 ct2!352)))))))

(declare-fun b!7335301 () Bool)

(declare-fun e!4392435 () List!71568)

(assert (=> b!7335301 (= e!4392435 (exprs!8512 ct2!352))))

(declare-fun b!7335302 () Bool)

(assert (=> b!7335302 (= e!4392435 (Cons!71444 (h!77892 (exprs!8512 ct1!256)) (++!16894 (t!385963 (exprs!8512 ct1!256)) (exprs!8512 ct2!352))))))

(declare-fun b!7335304 () Bool)

(assert (=> b!7335304 (= e!4392434 (or (not (= (exprs!8512 ct2!352) Nil!71444)) (= lt!2609099 (exprs!8512 ct1!256))))))

(declare-fun d!2277895 () Bool)

(assert (=> d!2277895 e!4392434))

(declare-fun res!2964052 () Bool)

(assert (=> d!2277895 (=> (not res!2964052) (not e!4392434))))

(assert (=> d!2277895 (= res!2964052 (= (content!14999 lt!2609099) (set.union (content!14999 (exprs!8512 ct1!256)) (content!14999 (exprs!8512 ct2!352)))))))

(assert (=> d!2277895 (= lt!2609099 e!4392435)))

(declare-fun c!1362385 () Bool)

(assert (=> d!2277895 (= c!1362385 (is-Nil!71444 (exprs!8512 ct1!256)))))

(assert (=> d!2277895 (= (++!16894 (exprs!8512 ct1!256) (exprs!8512 ct2!352)) lt!2609099)))

(assert (= (and d!2277895 c!1362385) b!7335301))

(assert (= (and d!2277895 (not c!1362385)) b!7335302))

(assert (= (and d!2277895 res!2964052) b!7335303))

(assert (= (and b!7335303 res!2964053) b!7335304))

(declare-fun m!8001294 () Bool)

(assert (=> b!7335303 m!8001294))

(declare-fun m!8001296 () Bool)

(assert (=> b!7335303 m!8001296))

(assert (=> b!7335303 m!8001236))

(declare-fun m!8001298 () Bool)

(assert (=> b!7335302 m!8001298))

(declare-fun m!8001300 () Bool)

(assert (=> d!2277895 m!8001300))

(declare-fun m!8001302 () Bool)

(assert (=> d!2277895 m!8001302))

(assert (=> d!2277895 m!8001244))

(assert (=> b!7335172 d!2277895))

(assert (=> b!7335172 d!2277863))

(declare-fun d!2277897 () Bool)

(declare-fun nullableFct!3263 (Regex!19072) Bool)

(assert (=> d!2277897 (= (nullable!8173 (h!77892 (exprs!8512 ct1!256))) (nullableFct!3263 (h!77892 (exprs!8512 ct1!256))))))

(declare-fun bs!1917928 () Bool)

(assert (= bs!1917928 d!2277897))

(declare-fun m!8001304 () Bool)

(assert (=> bs!1917928 m!8001304))

(assert (=> b!7335167 d!2277897))

(declare-fun c!1362392 () Bool)

(declare-fun c!1362393 () Bool)

(declare-fun call!668831 () (Set Context!16024))

(declare-fun call!668829 () List!71568)

(declare-fun bm!668822 () Bool)

(declare-fun c!1362391 () Bool)

(assert (=> bm!668822 (= call!668831 (derivationStepZipperDown!2899 (ite c!1362392 (regTwo!38657 (h!77892 (exprs!8512 ct1!256))) (ite c!1362393 (regTwo!38656 (h!77892 (exprs!8512 ct1!256))) (ite c!1362391 (regOne!38656 (h!77892 (exprs!8512 ct1!256))) (reg!19401 (h!77892 (exprs!8512 ct1!256)))))) (ite (or c!1362392 c!1362393) lt!2609035 (Context!16025 call!668829)) c!10305))))

(declare-fun d!2277899 () Bool)

(declare-fun c!1362395 () Bool)

(assert (=> d!2277899 (= c!1362395 (and (is-ElementMatch!19072 (h!77892 (exprs!8512 ct1!256))) (= (c!1362342 (h!77892 (exprs!8512 ct1!256))) c!10305)))))

(declare-fun e!4392447 () (Set Context!16024))

(assert (=> d!2277899 (= (derivationStepZipperDown!2899 (h!77892 (exprs!8512 ct1!256)) lt!2609035 c!10305) e!4392447)))

(declare-fun b!7335316 () Bool)

(declare-fun e!4392444 () (Set Context!16024))

(declare-fun call!668828 () (Set Context!16024))

(assert (=> b!7335316 (= e!4392444 call!668828)))

(declare-fun b!7335317 () Bool)

(declare-fun e!4392446 () Bool)

(assert (=> b!7335317 (= c!1362393 e!4392446)))

(declare-fun res!2964055 () Bool)

(assert (=> b!7335317 (=> (not res!2964055) (not e!4392446))))

(assert (=> b!7335317 (= res!2964055 (is-Concat!27917 (h!77892 (exprs!8512 ct1!256))))))

(declare-fun e!4392442 () (Set Context!16024))

(declare-fun e!4392445 () (Set Context!16024))

(assert (=> b!7335317 (= e!4392442 e!4392445)))

(declare-fun b!7335318 () Bool)

(assert (=> b!7335318 (= e!4392447 e!4392442)))

(assert (=> b!7335318 (= c!1362392 (is-Union!19072 (h!77892 (exprs!8512 ct1!256))))))

(declare-fun b!7335319 () Bool)

(assert (=> b!7335319 (= e!4392445 e!4392444)))

(assert (=> b!7335319 (= c!1362391 (is-Concat!27917 (h!77892 (exprs!8512 ct1!256))))))

(declare-fun bm!668823 () Bool)

(declare-fun call!668830 () List!71568)

(declare-fun call!668832 () (Set Context!16024))

(assert (=> bm!668823 (= call!668832 (derivationStepZipperDown!2899 (ite c!1362392 (regOne!38657 (h!77892 (exprs!8512 ct1!256))) (regOne!38656 (h!77892 (exprs!8512 ct1!256)))) (ite c!1362392 lt!2609035 (Context!16025 call!668830)) c!10305))))

(declare-fun b!7335320 () Bool)

(declare-fun c!1362394 () Bool)

(assert (=> b!7335320 (= c!1362394 (is-Star!19072 (h!77892 (exprs!8512 ct1!256))))))

(declare-fun e!4392443 () (Set Context!16024))

(assert (=> b!7335320 (= e!4392444 e!4392443)))

(declare-fun b!7335321 () Bool)

(declare-fun call!668827 () (Set Context!16024))

(assert (=> b!7335321 (= e!4392445 (set.union call!668832 call!668827))))

(declare-fun bm!668824 () Bool)

(assert (=> bm!668824 (= call!668828 call!668827)))

(declare-fun b!7335322 () Bool)

(assert (=> b!7335322 (= e!4392442 (set.union call!668832 call!668831))))

(declare-fun b!7335323 () Bool)

(assert (=> b!7335323 (= e!4392446 (nullable!8173 (regOne!38656 (h!77892 (exprs!8512 ct1!256)))))))

(declare-fun bm!668825 () Bool)

(assert (=> bm!668825 (= call!668830 ($colon$colon!3081 (exprs!8512 lt!2609035) (ite (or c!1362393 c!1362391) (regTwo!38656 (h!77892 (exprs!8512 ct1!256))) (h!77892 (exprs!8512 ct1!256)))))))

(declare-fun b!7335324 () Bool)

(assert (=> b!7335324 (= e!4392443 call!668828)))

(declare-fun bm!668826 () Bool)

(assert (=> bm!668826 (= call!668829 call!668830)))

(declare-fun b!7335325 () Bool)

(assert (=> b!7335325 (= e!4392443 (as set.empty (Set Context!16024)))))

(declare-fun bm!668827 () Bool)

(assert (=> bm!668827 (= call!668827 call!668831)))

(declare-fun b!7335326 () Bool)

(assert (=> b!7335326 (= e!4392447 (set.insert lt!2609035 (as set.empty (Set Context!16024))))))

(assert (= (and d!2277899 c!1362395) b!7335326))

(assert (= (and d!2277899 (not c!1362395)) b!7335318))

(assert (= (and b!7335318 c!1362392) b!7335322))

(assert (= (and b!7335318 (not c!1362392)) b!7335317))

(assert (= (and b!7335317 res!2964055) b!7335323))

(assert (= (and b!7335317 c!1362393) b!7335321))

(assert (= (and b!7335317 (not c!1362393)) b!7335319))

(assert (= (and b!7335319 c!1362391) b!7335316))

(assert (= (and b!7335319 (not c!1362391)) b!7335320))

(assert (= (and b!7335320 c!1362394) b!7335324))

(assert (= (and b!7335320 (not c!1362394)) b!7335325))

(assert (= (or b!7335316 b!7335324) bm!668826))

(assert (= (or b!7335316 b!7335324) bm!668824))

(assert (= (or b!7335321 bm!668824) bm!668827))

(assert (= (or b!7335321 bm!668826) bm!668825))

(assert (= (or b!7335322 bm!668827) bm!668822))

(assert (= (or b!7335322 b!7335321) bm!668823))

(declare-fun m!8001306 () Bool)

(assert (=> b!7335326 m!8001306))

(assert (=> b!7335323 m!8001258))

(declare-fun m!8001308 () Bool)

(assert (=> bm!668823 m!8001308))

(declare-fun m!8001310 () Bool)

(assert (=> bm!668822 m!8001310))

(declare-fun m!8001312 () Bool)

(assert (=> bm!668825 m!8001312))

(assert (=> b!7335167 d!2277899))

(declare-fun d!2277901 () Bool)

(assert (=> d!2277901 (= (tail!14753 (exprs!8512 ct1!256)) (t!385963 (exprs!8512 ct1!256)))))

(assert (=> b!7335167 d!2277901))

(declare-fun b!7335331 () Bool)

(declare-fun e!4392450 () Bool)

(declare-fun tp!2082224 () Bool)

(declare-fun tp!2082225 () Bool)

(assert (=> b!7335331 (= e!4392450 (and tp!2082224 tp!2082225))))

(assert (=> b!7335164 (= tp!2082210 e!4392450)))

(assert (= (and b!7335164 (is-Cons!71444 (exprs!8512 cWitness!35))) b!7335331))

(declare-fun b!7335332 () Bool)

(declare-fun e!4392451 () Bool)

(declare-fun tp!2082226 () Bool)

(declare-fun tp!2082227 () Bool)

(assert (=> b!7335332 (= e!4392451 (and tp!2082226 tp!2082227))))

(assert (=> b!7335169 (= tp!2082209 e!4392451)))

(assert (= (and b!7335169 (is-Cons!71444 (exprs!8512 ct1!256))) b!7335332))

(declare-fun b!7335333 () Bool)

(declare-fun e!4392452 () Bool)

(declare-fun tp!2082228 () Bool)

(declare-fun tp!2082229 () Bool)

(assert (=> b!7335333 (= e!4392452 (and tp!2082228 tp!2082229))))

(assert (=> b!7335166 (= tp!2082208 e!4392452)))

(assert (= (and b!7335166 (is-Cons!71444 (exprs!8512 ct2!352))) b!7335333))

(push 1)

(assert (not bm!668807))

(assert (not b!7335286))

(assert (not b!7335297))

(assert (not b!7335217))

(assert (not d!2277891))

(assert (not d!2277877))

(assert (not b!7335228))

(assert (not d!2277875))

(assert (not b!7335218))

(assert (not d!2277873))

(assert (not d!2277865))

(assert (not d!2277897))

(assert (not d!2277871))

(assert (not bm!668823))

(assert (not d!2277863))

(assert (not b!7335333))

(assert (not bm!668801))

(assert (not bm!668799))

(assert (not bm!668806))

(assert (not d!2277887))

(assert (not b!7335233))

(assert (not b!7335331))

(assert (not d!2277861))

(assert (not b!7335229))

(assert (not bm!668825))

(assert tp_is_empty!48389)

(assert (not b!7335323))

(assert (not b!7335332))

(assert (not bm!668798))

(assert (not d!2277895))

(assert (not b!7335303))

(assert (not b!7335302))

(assert (not bm!668779))

(assert (not b!7335232))

(assert (not bm!668822))

(assert (not bm!668809))

(assert (not d!2277881))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

