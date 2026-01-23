; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!702402 () Bool)

(assert start!702402)

(declare-fun b!7235317 () Bool)

(assert (=> b!7235317 true))

(declare-fun b!7235320 () Bool)

(assert (=> b!7235320 true))

(declare-fun b!7235314 () Bool)

(declare-fun e!4337648 () Bool)

(declare-fun e!4337638 () Bool)

(assert (=> b!7235314 (= e!4337648 e!4337638)))

(declare-fun res!2935321 () Bool)

(assert (=> b!7235314 (=> (not res!2935321) (not e!4337638))))

(declare-datatypes ((C!37310 0))(
  ( (C!37311 (val!28603 Int)) )
))
(declare-datatypes ((Regex!18518 0))(
  ( (ElementMatch!18518 (c!1342820 C!37310)) (Concat!27363 (regOne!37548 Regex!18518) (regTwo!37548 Regex!18518)) (EmptyExpr!18518) (Star!18518 (reg!18847 Regex!18518)) (EmptyLang!18518) (Union!18518 (regOne!37549 Regex!18518) (regTwo!37549 Regex!18518)) )
))
(declare-datatypes ((List!70162 0))(
  ( (Nil!70038) (Cons!70038 (h!76486 Regex!18518) (t!384213 List!70162)) )
))
(declare-datatypes ((Context!14916 0))(
  ( (Context!14917 (exprs!7958 List!70162)) )
))
(declare-fun ct1!232 () Context!14916)

(declare-datatypes ((List!70163 0))(
  ( (Nil!70039) (Cons!70039 (h!76487 C!37310) (t!384214 List!70163)) )
))
(declare-fun s1!1971 () List!70163)

(assert (=> b!7235314 (= res!2935321 (and (not (is-Nil!70038 (exprs!7958 ct1!232))) (is-Cons!70039 s1!1971)))))

(declare-fun lt!2575250 () (Set Context!14916))

(declare-fun lt!2575259 () Context!14916)

(assert (=> b!7235314 (= lt!2575250 (set.insert lt!2575259 (as set.empty (Set Context!14916))))))

(declare-fun lt!2575252 () List!70162)

(assert (=> b!7235314 (= lt!2575259 (Context!14917 lt!2575252))))

(declare-fun ct2!328 () Context!14916)

(declare-fun ++!16336 (List!70162 List!70162) List!70162)

(assert (=> b!7235314 (= lt!2575252 (++!16336 (exprs!7958 ct1!232) (exprs!7958 ct2!328)))))

(declare-datatypes ((Unit!163574 0))(
  ( (Unit!163575) )
))
(declare-fun lt!2575245 () Unit!163574)

(declare-fun lambda!440192 () Int)

(declare-fun lemmaConcatPreservesForall!1327 (List!70162 List!70162 Int) Unit!163574)

(assert (=> b!7235314 (= lt!2575245 (lemmaConcatPreservesForall!1327 (exprs!7958 ct1!232) (exprs!7958 ct2!328) lambda!440192))))

(declare-fun res!2935322 () Bool)

(assert (=> start!702402 (=> (not res!2935322) (not e!4337648))))

(declare-fun lt!2575249 () (Set Context!14916))

(declare-fun matchZipper!3428 ((Set Context!14916) List!70163) Bool)

(assert (=> start!702402 (= res!2935322 (matchZipper!3428 lt!2575249 s1!1971))))

(assert (=> start!702402 (= lt!2575249 (set.insert ct1!232 (as set.empty (Set Context!14916))))))

(assert (=> start!702402 e!4337648))

(declare-fun e!4337642 () Bool)

(declare-fun inv!89306 (Context!14916) Bool)

(assert (=> start!702402 (and (inv!89306 ct1!232) e!4337642)))

(declare-fun e!4337647 () Bool)

(assert (=> start!702402 e!4337647))

(declare-fun e!4337645 () Bool)

(assert (=> start!702402 e!4337645))

(declare-fun e!4337639 () Bool)

(assert (=> start!702402 (and (inv!89306 ct2!328) e!4337639)))

(declare-fun b!7235315 () Bool)

(declare-fun e!4337637 () Bool)

(declare-fun e!4337640 () Bool)

(assert (=> b!7235315 (= e!4337637 e!4337640)))

(declare-fun res!2935326 () Bool)

(assert (=> b!7235315 (=> res!2935326 e!4337640)))

(declare-fun forall!17351 (List!70162 Int) Bool)

(assert (=> b!7235315 (= res!2935326 (not (forall!17351 (exprs!7958 ct1!232) lambda!440192)))))

(declare-fun b!7235316 () Bool)

(declare-fun tp_is_empty!46501 () Bool)

(declare-fun tp!2034491 () Bool)

(assert (=> b!7235316 (= e!4337647 (and tp_is_empty!46501 tp!2034491))))

(declare-fun e!4337646 () Bool)

(declare-fun e!4337641 () Bool)

(assert (=> b!7235317 (= e!4337646 (not e!4337641))))

(declare-fun res!2935327 () Bool)

(assert (=> b!7235317 (=> res!2935327 e!4337641)))

(declare-fun lt!2575257 () (Set Context!14916))

(declare-fun lambda!440193 () Int)

(declare-fun exists!4179 ((Set Context!14916) Int) Bool)

(assert (=> b!7235317 (= res!2935327 (not (exists!4179 lt!2575257 lambda!440193)))))

(declare-datatypes ((List!70164 0))(
  ( (Nil!70040) (Cons!70040 (h!76488 Context!14916) (t!384215 List!70164)) )
))
(declare-fun lt!2575255 () List!70164)

(declare-fun exists!4180 (List!70164 Int) Bool)

(assert (=> b!7235317 (exists!4180 lt!2575255 lambda!440193)))

(declare-fun lt!2575239 () Unit!163574)

(declare-fun lemmaZipperMatchesExistsMatchingContext!661 (List!70164 List!70163) Unit!163574)

(assert (=> b!7235317 (= lt!2575239 (lemmaZipperMatchesExistsMatchingContext!661 lt!2575255 (t!384214 s1!1971)))))

(declare-fun toList!11375 ((Set Context!14916)) List!70164)

(assert (=> b!7235317 (= lt!2575255 (toList!11375 lt!2575257))))

(declare-fun b!7235318 () Bool)

(declare-fun e!4337644 () Bool)

(declare-fun e!4337643 () Bool)

(assert (=> b!7235318 (= e!4337644 e!4337643)))

(declare-fun res!2935325 () Bool)

(assert (=> b!7235318 (=> res!2935325 e!4337643)))

(declare-fun isEmpty!40365 (List!70162) Bool)

(assert (=> b!7235318 (= res!2935325 (isEmpty!40365 lt!2575252))))

(declare-fun lt!2575256 () Unit!163574)

(assert (=> b!7235318 (= lt!2575256 (lemmaConcatPreservesForall!1327 (exprs!7958 ct1!232) (exprs!7958 ct2!328) lambda!440192))))

(declare-fun lt!2575258 () (Set Context!14916))

(declare-fun derivationStepZipperUp!2392 (Context!14916 C!37310) (Set Context!14916))

(assert (=> b!7235318 (= lt!2575258 (derivationStepZipperUp!2392 lt!2575259 (h!76487 s1!1971)))))

(declare-fun lt!2575241 () Unit!163574)

(assert (=> b!7235318 (= lt!2575241 (lemmaConcatPreservesForall!1327 (exprs!7958 ct1!232) (exprs!7958 ct2!328) lambda!440192))))

(declare-fun lt!2575244 () (Set Context!14916))

(declare-fun lt!2575247 () Context!14916)

(declare-fun derivationStepZipperDown!2562 (Regex!18518 Context!14916 C!37310) (Set Context!14916))

(assert (=> b!7235318 (= lt!2575244 (derivationStepZipperDown!2562 (h!76486 (exprs!7958 ct1!232)) lt!2575247 (h!76487 s1!1971)))))

(declare-fun tail!14151 (List!70162) List!70162)

(assert (=> b!7235318 (= lt!2575247 (Context!14917 (tail!14151 (exprs!7958 ct1!232))))))

(declare-fun b!7235319 () Bool)

(declare-fun tp!2034489 () Bool)

(assert (=> b!7235319 (= e!4337639 tp!2034489)))

(assert (=> b!7235320 (= e!4337643 e!4337637)))

(declare-fun res!2935319 () Bool)

(assert (=> b!7235320 (=> res!2935319 e!4337637)))

(declare-fun nullable!7831 (Regex!18518) Bool)

(assert (=> b!7235320 (= res!2935319 (not (nullable!7831 (h!76486 (exprs!7958 ct1!232)))))))

(declare-fun lambda!440194 () Int)

(declare-fun flatMap!2722 ((Set Context!14916) Int) (Set Context!14916))

(assert (=> b!7235320 (= (flatMap!2722 lt!2575250 lambda!440194) (derivationStepZipperUp!2392 lt!2575259 (h!76487 s1!1971)))))

(declare-fun lt!2575254 () Unit!163574)

(declare-fun lemmaFlatMapOnSingletonSet!2149 ((Set Context!14916) Context!14916 Int) Unit!163574)

(assert (=> b!7235320 (= lt!2575254 (lemmaFlatMapOnSingletonSet!2149 lt!2575250 lt!2575259 lambda!440194))))

(declare-fun lt!2575242 () Unit!163574)

(assert (=> b!7235320 (= lt!2575242 (lemmaConcatPreservesForall!1327 (exprs!7958 ct1!232) (exprs!7958 ct2!328) lambda!440192))))

(assert (=> b!7235320 (= (flatMap!2722 lt!2575249 lambda!440194) (derivationStepZipperUp!2392 ct1!232 (h!76487 s1!1971)))))

(declare-fun lt!2575243 () Unit!163574)

(assert (=> b!7235320 (= lt!2575243 (lemmaFlatMapOnSingletonSet!2149 lt!2575249 ct1!232 lambda!440194))))

(declare-fun lt!2575251 () (Set Context!14916))

(assert (=> b!7235320 (= lt!2575251 (derivationStepZipperDown!2562 (h!76486 (exprs!7958 ct1!232)) (Context!14917 (tail!14151 lt!2575252)) (h!76487 s1!1971)))))

(declare-fun b!7235321 () Bool)

(declare-fun res!2935324 () Bool)

(assert (=> b!7235321 (=> res!2935324 e!4337637)))

(declare-fun lt!2575238 () (Set Context!14916))

(assert (=> b!7235321 (= res!2935324 (not (= lt!2575238 (set.union lt!2575244 (derivationStepZipperUp!2392 lt!2575247 (h!76487 s1!1971))))))))

(declare-fun b!7235322 () Bool)

(assert (=> b!7235322 (= e!4337638 e!4337646)))

(declare-fun res!2935329 () Bool)

(assert (=> b!7235322 (=> (not res!2935329) (not e!4337646))))

(assert (=> b!7235322 (= res!2935329 (matchZipper!3428 lt!2575257 (t!384214 s1!1971)))))

(declare-fun derivationStepZipper!3310 ((Set Context!14916) C!37310) (Set Context!14916))

(assert (=> b!7235322 (= lt!2575257 (derivationStepZipper!3310 lt!2575249 (h!76487 s1!1971)))))

(declare-fun b!7235323 () Bool)

(assert (=> b!7235323 (= e!4337641 e!4337644)))

(declare-fun res!2935323 () Bool)

(assert (=> b!7235323 (=> res!2935323 e!4337644)))

(assert (=> b!7235323 (= res!2935323 (isEmpty!40365 (exprs!7958 ct1!232)))))

(assert (=> b!7235323 (= lt!2575238 (derivationStepZipperUp!2392 ct1!232 (h!76487 s1!1971)))))

(declare-fun lt!2575248 () Context!14916)

(declare-fun lt!2575240 () Unit!163574)

(assert (=> b!7235323 (= lt!2575240 (lemmaConcatPreservesForall!1327 (exprs!7958 lt!2575248) (exprs!7958 ct2!328) lambda!440192))))

(declare-fun s2!1849 () List!70163)

(declare-fun ++!16337 (List!70163 List!70163) List!70163)

(assert (=> b!7235323 (matchZipper!3428 (set.insert (Context!14917 (++!16336 (exprs!7958 lt!2575248) (exprs!7958 ct2!328))) (as set.empty (Set Context!14916))) (++!16337 (t!384214 s1!1971) s2!1849))))

(declare-fun lt!2575246 () Unit!163574)

(assert (=> b!7235323 (= lt!2575246 (lemmaConcatPreservesForall!1327 (exprs!7958 lt!2575248) (exprs!7958 ct2!328) lambda!440192))))

(declare-fun lt!2575253 () Unit!163574)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!309 (Context!14916 Context!14916 List!70163 List!70163) Unit!163574)

(assert (=> b!7235323 (= lt!2575253 (lemmaConcatenateContextMatchesConcatOfStrings!309 lt!2575248 ct2!328 (t!384214 s1!1971) s2!1849))))

(declare-fun getWitness!2049 ((Set Context!14916) Int) Context!14916)

(assert (=> b!7235323 (= lt!2575248 (getWitness!2049 lt!2575257 lambda!440193))))

(declare-fun b!7235324 () Bool)

(declare-fun tp!2034490 () Bool)

(assert (=> b!7235324 (= e!4337645 (and tp_is_empty!46501 tp!2034490))))

(declare-fun b!7235325 () Bool)

(declare-fun tp!2034492 () Bool)

(assert (=> b!7235325 (= e!4337642 tp!2034492)))

(declare-fun b!7235326 () Bool)

(assert (=> b!7235326 (= e!4337640 (forall!17351 (exprs!7958 ct2!328) lambda!440192))))

(declare-fun b!7235327 () Bool)

(declare-fun res!2935328 () Bool)

(assert (=> b!7235327 (=> res!2935328 e!4337637)))

(assert (=> b!7235327 (= res!2935328 (not (= lt!2575257 lt!2575238)))))

(declare-fun b!7235328 () Bool)

(declare-fun res!2935320 () Bool)

(assert (=> b!7235328 (=> (not res!2935320) (not e!4337648))))

(assert (=> b!7235328 (= res!2935320 (matchZipper!3428 (set.insert ct2!328 (as set.empty (Set Context!14916))) s2!1849))))

(assert (= (and start!702402 res!2935322) b!7235328))

(assert (= (and b!7235328 res!2935320) b!7235314))

(assert (= (and b!7235314 res!2935321) b!7235322))

(assert (= (and b!7235322 res!2935329) b!7235317))

(assert (= (and b!7235317 (not res!2935327)) b!7235323))

(assert (= (and b!7235323 (not res!2935323)) b!7235318))

(assert (= (and b!7235318 (not res!2935325)) b!7235320))

(assert (= (and b!7235320 (not res!2935319)) b!7235321))

(assert (= (and b!7235321 (not res!2935324)) b!7235327))

(assert (= (and b!7235327 (not res!2935328)) b!7235315))

(assert (= (and b!7235315 (not res!2935326)) b!7235326))

(assert (= start!702402 b!7235325))

(assert (= (and start!702402 (is-Cons!70039 s1!1971)) b!7235316))

(assert (= (and start!702402 (is-Cons!70039 s2!1849)) b!7235324))

(assert (= start!702402 b!7235319))

(declare-fun m!7905788 () Bool)

(assert (=> start!702402 m!7905788))

(declare-fun m!7905790 () Bool)

(assert (=> start!702402 m!7905790))

(declare-fun m!7905792 () Bool)

(assert (=> start!702402 m!7905792))

(declare-fun m!7905794 () Bool)

(assert (=> start!702402 m!7905794))

(declare-fun m!7905796 () Bool)

(assert (=> b!7235326 m!7905796))

(declare-fun m!7905798 () Bool)

(assert (=> b!7235317 m!7905798))

(declare-fun m!7905800 () Bool)

(assert (=> b!7235317 m!7905800))

(declare-fun m!7905802 () Bool)

(assert (=> b!7235317 m!7905802))

(declare-fun m!7905804 () Bool)

(assert (=> b!7235317 m!7905804))

(declare-fun m!7905806 () Bool)

(assert (=> b!7235321 m!7905806))

(declare-fun m!7905808 () Bool)

(assert (=> b!7235318 m!7905808))

(assert (=> b!7235318 m!7905808))

(declare-fun m!7905810 () Bool)

(assert (=> b!7235318 m!7905810))

(declare-fun m!7905812 () Bool)

(assert (=> b!7235318 m!7905812))

(declare-fun m!7905814 () Bool)

(assert (=> b!7235318 m!7905814))

(declare-fun m!7905816 () Bool)

(assert (=> b!7235318 m!7905816))

(declare-fun m!7905818 () Bool)

(assert (=> b!7235328 m!7905818))

(assert (=> b!7235328 m!7905818))

(declare-fun m!7905820 () Bool)

(assert (=> b!7235328 m!7905820))

(declare-fun m!7905822 () Bool)

(assert (=> b!7235315 m!7905822))

(declare-fun m!7905824 () Bool)

(assert (=> b!7235314 m!7905824))

(declare-fun m!7905826 () Bool)

(assert (=> b!7235314 m!7905826))

(assert (=> b!7235314 m!7905808))

(declare-fun m!7905828 () Bool)

(assert (=> b!7235320 m!7905828))

(declare-fun m!7905830 () Bool)

(assert (=> b!7235320 m!7905830))

(declare-fun m!7905832 () Bool)

(assert (=> b!7235320 m!7905832))

(declare-fun m!7905834 () Bool)

(assert (=> b!7235320 m!7905834))

(declare-fun m!7905836 () Bool)

(assert (=> b!7235320 m!7905836))

(declare-fun m!7905838 () Bool)

(assert (=> b!7235320 m!7905838))

(assert (=> b!7235320 m!7905816))

(assert (=> b!7235320 m!7905808))

(declare-fun m!7905840 () Bool)

(assert (=> b!7235320 m!7905840))

(declare-fun m!7905842 () Bool)

(assert (=> b!7235320 m!7905842))

(declare-fun m!7905844 () Bool)

(assert (=> b!7235322 m!7905844))

(declare-fun m!7905846 () Bool)

(assert (=> b!7235322 m!7905846))

(declare-fun m!7905848 () Bool)

(assert (=> b!7235323 m!7905848))

(assert (=> b!7235323 m!7905834))

(declare-fun m!7905850 () Bool)

(assert (=> b!7235323 m!7905850))

(declare-fun m!7905852 () Bool)

(assert (=> b!7235323 m!7905852))

(declare-fun m!7905854 () Bool)

(assert (=> b!7235323 m!7905854))

(declare-fun m!7905856 () Bool)

(assert (=> b!7235323 m!7905856))

(declare-fun m!7905858 () Bool)

(assert (=> b!7235323 m!7905858))

(assert (=> b!7235323 m!7905858))

(declare-fun m!7905860 () Bool)

(assert (=> b!7235323 m!7905860))

(assert (=> b!7235323 m!7905852))

(assert (=> b!7235323 m!7905850))

(declare-fun m!7905862 () Bool)

(assert (=> b!7235323 m!7905862))

(push 1)

(assert (not b!7235318))

(assert (not b!7235321))

(assert (not b!7235319))

(assert (not b!7235322))

(assert (not b!7235317))

(assert (not b!7235323))

(assert tp_is_empty!46501)

(assert (not b!7235315))

(assert (not b!7235328))

(assert (not b!7235316))

(assert (not b!7235325))

(assert (not b!7235326))

(assert (not b!7235320))

(assert (not b!7235314))

(assert (not start!702402))

(assert (not b!7235324))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2247428 () Bool)

(assert (=> d!2247428 (= (tail!14151 (exprs!7958 ct1!232)) (t!384213 (exprs!7958 ct1!232)))))

(assert (=> b!7235318 d!2247428))

(declare-fun d!2247430 () Bool)

(assert (=> d!2247430 (forall!17351 (++!16336 (exprs!7958 ct1!232) (exprs!7958 ct2!328)) lambda!440192)))

(declare-fun lt!2575328 () Unit!163574)

(declare-fun choose!55611 (List!70162 List!70162 Int) Unit!163574)

(assert (=> d!2247430 (= lt!2575328 (choose!55611 (exprs!7958 ct1!232) (exprs!7958 ct2!328) lambda!440192))))

(assert (=> d!2247430 (forall!17351 (exprs!7958 ct1!232) lambda!440192)))

(assert (=> d!2247430 (= (lemmaConcatPreservesForall!1327 (exprs!7958 ct1!232) (exprs!7958 ct2!328) lambda!440192) lt!2575328)))

(declare-fun bs!1903289 () Bool)

(assert (= bs!1903289 d!2247430))

(assert (=> bs!1903289 m!7905826))

(assert (=> bs!1903289 m!7905826))

(declare-fun m!7905940 () Bool)

(assert (=> bs!1903289 m!7905940))

(declare-fun m!7905942 () Bool)

(assert (=> bs!1903289 m!7905942))

(assert (=> bs!1903289 m!7905822))

(assert (=> b!7235318 d!2247430))

(declare-fun b!7235404 () Bool)

(declare-fun e!4337697 () (Set Context!14916))

(declare-fun e!4337698 () (Set Context!14916))

(assert (=> b!7235404 (= e!4337697 e!4337698)))

(declare-fun c!1342846 () Bool)

(assert (=> b!7235404 (= c!1342846 (is-Union!18518 (h!76486 (exprs!7958 ct1!232))))))

(declare-fun b!7235405 () Bool)

(declare-fun e!4337699 () Bool)

(assert (=> b!7235405 (= e!4337699 (nullable!7831 (regOne!37548 (h!76486 (exprs!7958 ct1!232)))))))

(declare-fun b!7235406 () Bool)

(assert (=> b!7235406 (= e!4337697 (set.insert lt!2575247 (as set.empty (Set Context!14916))))))

(declare-fun bm!658712 () Bool)

(declare-fun c!1342842 () Bool)

(declare-fun call!658717 () List!70162)

(declare-fun c!1342844 () Bool)

(declare-fun $colon$colon!2873 (List!70162 Regex!18518) List!70162)

(assert (=> bm!658712 (= call!658717 ($colon$colon!2873 (exprs!7958 lt!2575247) (ite (or c!1342842 c!1342844) (regTwo!37548 (h!76486 (exprs!7958 ct1!232))) (h!76486 (exprs!7958 ct1!232)))))))

(declare-fun b!7235407 () Bool)

(declare-fun e!4337702 () (Set Context!14916))

(declare-fun call!658721 () (Set Context!14916))

(assert (=> b!7235407 (= e!4337702 call!658721)))

(declare-fun b!7235408 () Bool)

(declare-fun e!4337700 () (Set Context!14916))

(assert (=> b!7235408 (= e!4337700 call!658721)))

(declare-fun bm!658713 () Bool)

(declare-fun call!658719 () (Set Context!14916))

(assert (=> bm!658713 (= call!658721 call!658719)))

(declare-fun call!658720 () List!70162)

(declare-fun bm!658714 () Bool)

(declare-fun call!658722 () (Set Context!14916))

(assert (=> bm!658714 (= call!658722 (derivationStepZipperDown!2562 (ite c!1342846 (regOne!37549 (h!76486 (exprs!7958 ct1!232))) (ite c!1342842 (regTwo!37548 (h!76486 (exprs!7958 ct1!232))) (ite c!1342844 (regOne!37548 (h!76486 (exprs!7958 ct1!232))) (reg!18847 (h!76486 (exprs!7958 ct1!232)))))) (ite (or c!1342846 c!1342842) lt!2575247 (Context!14917 call!658720)) (h!76487 s1!1971)))))

(declare-fun b!7235409 () Bool)

(declare-fun e!4337701 () (Set Context!14916))

(declare-fun call!658718 () (Set Context!14916))

(assert (=> b!7235409 (= e!4337701 (set.union call!658718 call!658719))))

(declare-fun b!7235410 () Bool)

(assert (=> b!7235410 (= e!4337701 e!4337700)))

(assert (=> b!7235410 (= c!1342844 (is-Concat!27363 (h!76486 (exprs!7958 ct1!232))))))

(declare-fun b!7235411 () Bool)

(assert (=> b!7235411 (= e!4337702 (as set.empty (Set Context!14916)))))

(declare-fun b!7235412 () Bool)

(assert (=> b!7235412 (= e!4337698 (set.union call!658722 call!658718))))

(declare-fun bm!658716 () Bool)

(assert (=> bm!658716 (= call!658718 (derivationStepZipperDown!2562 (ite c!1342846 (regTwo!37549 (h!76486 (exprs!7958 ct1!232))) (regOne!37548 (h!76486 (exprs!7958 ct1!232)))) (ite c!1342846 lt!2575247 (Context!14917 call!658717)) (h!76487 s1!1971)))))

(declare-fun b!7235413 () Bool)

(assert (=> b!7235413 (= c!1342842 e!4337699)))

(declare-fun res!2935365 () Bool)

(assert (=> b!7235413 (=> (not res!2935365) (not e!4337699))))

(assert (=> b!7235413 (= res!2935365 (is-Concat!27363 (h!76486 (exprs!7958 ct1!232))))))

(assert (=> b!7235413 (= e!4337698 e!4337701)))

(declare-fun bm!658717 () Bool)

(assert (=> bm!658717 (= call!658719 call!658722)))

(declare-fun b!7235414 () Bool)

(declare-fun c!1342843 () Bool)

(assert (=> b!7235414 (= c!1342843 (is-Star!18518 (h!76486 (exprs!7958 ct1!232))))))

(assert (=> b!7235414 (= e!4337700 e!4337702)))

(declare-fun bm!658715 () Bool)

(assert (=> bm!658715 (= call!658720 call!658717)))

(declare-fun d!2247432 () Bool)

(declare-fun c!1342845 () Bool)

(assert (=> d!2247432 (= c!1342845 (and (is-ElementMatch!18518 (h!76486 (exprs!7958 ct1!232))) (= (c!1342820 (h!76486 (exprs!7958 ct1!232))) (h!76487 s1!1971))))))

(assert (=> d!2247432 (= (derivationStepZipperDown!2562 (h!76486 (exprs!7958 ct1!232)) lt!2575247 (h!76487 s1!1971)) e!4337697)))

(assert (= (and d!2247432 c!1342845) b!7235406))

(assert (= (and d!2247432 (not c!1342845)) b!7235404))

(assert (= (and b!7235404 c!1342846) b!7235412))

(assert (= (and b!7235404 (not c!1342846)) b!7235413))

(assert (= (and b!7235413 res!2935365) b!7235405))

(assert (= (and b!7235413 c!1342842) b!7235409))

(assert (= (and b!7235413 (not c!1342842)) b!7235410))

(assert (= (and b!7235410 c!1342844) b!7235408))

(assert (= (and b!7235410 (not c!1342844)) b!7235414))

(assert (= (and b!7235414 c!1342843) b!7235407))

(assert (= (and b!7235414 (not c!1342843)) b!7235411))

(assert (= (or b!7235408 b!7235407) bm!658715))

(assert (= (or b!7235408 b!7235407) bm!658713))

(assert (= (or b!7235409 bm!658715) bm!658712))

(assert (= (or b!7235409 bm!658713) bm!658717))

(assert (= (or b!7235412 b!7235409) bm!658716))

(assert (= (or b!7235412 bm!658717) bm!658714))

(declare-fun m!7905944 () Bool)

(assert (=> b!7235405 m!7905944))

(declare-fun m!7905946 () Bool)

(assert (=> bm!658712 m!7905946))

(declare-fun m!7905948 () Bool)

(assert (=> bm!658716 m!7905948))

(declare-fun m!7905950 () Bool)

(assert (=> b!7235406 m!7905950))

(declare-fun m!7905952 () Bool)

(assert (=> bm!658714 m!7905952))

(assert (=> b!7235318 d!2247432))

(declare-fun b!7235425 () Bool)

(declare-fun call!658725 () (Set Context!14916))

(declare-fun e!4337710 () (Set Context!14916))

(assert (=> b!7235425 (= e!4337710 (set.union call!658725 (derivationStepZipperUp!2392 (Context!14917 (t!384213 (exprs!7958 lt!2575259))) (h!76487 s1!1971))))))

(declare-fun bm!658720 () Bool)

(assert (=> bm!658720 (= call!658725 (derivationStepZipperDown!2562 (h!76486 (exprs!7958 lt!2575259)) (Context!14917 (t!384213 (exprs!7958 lt!2575259))) (h!76487 s1!1971)))))

(declare-fun b!7235426 () Bool)

(declare-fun e!4337709 () (Set Context!14916))

(assert (=> b!7235426 (= e!4337709 call!658725)))

(declare-fun d!2247434 () Bool)

(declare-fun c!1342852 () Bool)

(declare-fun e!4337711 () Bool)

(assert (=> d!2247434 (= c!1342852 e!4337711)))

(declare-fun res!2935368 () Bool)

(assert (=> d!2247434 (=> (not res!2935368) (not e!4337711))))

(assert (=> d!2247434 (= res!2935368 (is-Cons!70038 (exprs!7958 lt!2575259)))))

(assert (=> d!2247434 (= (derivationStepZipperUp!2392 lt!2575259 (h!76487 s1!1971)) e!4337710)))

(declare-fun b!7235427 () Bool)

(assert (=> b!7235427 (= e!4337711 (nullable!7831 (h!76486 (exprs!7958 lt!2575259))))))

(declare-fun b!7235428 () Bool)

(assert (=> b!7235428 (= e!4337709 (as set.empty (Set Context!14916)))))

(declare-fun b!7235429 () Bool)

(assert (=> b!7235429 (= e!4337710 e!4337709)))

(declare-fun c!1342851 () Bool)

(assert (=> b!7235429 (= c!1342851 (is-Cons!70038 (exprs!7958 lt!2575259)))))

(assert (= (and d!2247434 res!2935368) b!7235427))

(assert (= (and d!2247434 c!1342852) b!7235425))

(assert (= (and d!2247434 (not c!1342852)) b!7235429))

(assert (= (and b!7235429 c!1342851) b!7235426))

(assert (= (and b!7235429 (not c!1342851)) b!7235428))

(assert (= (or b!7235425 b!7235426) bm!658720))

(declare-fun m!7905958 () Bool)

(assert (=> b!7235425 m!7905958))

(declare-fun m!7905960 () Bool)

(assert (=> bm!658720 m!7905960))

(declare-fun m!7905962 () Bool)

(assert (=> b!7235427 m!7905962))

(assert (=> b!7235318 d!2247434))

(declare-fun d!2247440 () Bool)

(assert (=> d!2247440 (= (isEmpty!40365 lt!2575252) (is-Nil!70038 lt!2575252))))

(assert (=> b!7235318 d!2247440))

(declare-fun b!7235442 () Bool)

(declare-fun res!2935373 () Bool)

(declare-fun e!4337716 () Bool)

(assert (=> b!7235442 (=> (not res!2935373) (not e!4337716))))

(declare-fun lt!2575335 () List!70162)

(declare-fun size!41584 (List!70162) Int)

(assert (=> b!7235442 (= res!2935373 (= (size!41584 lt!2575335) (+ (size!41584 (exprs!7958 ct1!232)) (size!41584 (exprs!7958 ct2!328)))))))

(declare-fun b!7235440 () Bool)

(declare-fun e!4337717 () List!70162)

(assert (=> b!7235440 (= e!4337717 (exprs!7958 ct2!328))))

(declare-fun b!7235441 () Bool)

(assert (=> b!7235441 (= e!4337717 (Cons!70038 (h!76486 (exprs!7958 ct1!232)) (++!16336 (t!384213 (exprs!7958 ct1!232)) (exprs!7958 ct2!328))))))

(declare-fun d!2247444 () Bool)

(assert (=> d!2247444 e!4337716))

(declare-fun res!2935374 () Bool)

(assert (=> d!2247444 (=> (not res!2935374) (not e!4337716))))

(declare-fun content!14426 (List!70162) (Set Regex!18518))

(assert (=> d!2247444 (= res!2935374 (= (content!14426 lt!2575335) (set.union (content!14426 (exprs!7958 ct1!232)) (content!14426 (exprs!7958 ct2!328)))))))

(assert (=> d!2247444 (= lt!2575335 e!4337717)))

(declare-fun c!1342855 () Bool)

(assert (=> d!2247444 (= c!1342855 (is-Nil!70038 (exprs!7958 ct1!232)))))

(assert (=> d!2247444 (= (++!16336 (exprs!7958 ct1!232) (exprs!7958 ct2!328)) lt!2575335)))

(declare-fun b!7235443 () Bool)

(assert (=> b!7235443 (= e!4337716 (or (not (= (exprs!7958 ct2!328) Nil!70038)) (= lt!2575335 (exprs!7958 ct1!232))))))

(assert (= (and d!2247444 c!1342855) b!7235440))

(assert (= (and d!2247444 (not c!1342855)) b!7235441))

(assert (= (and d!2247444 res!2935374) b!7235442))

(assert (= (and b!7235442 res!2935373) b!7235443))

(declare-fun m!7905968 () Bool)

(assert (=> b!7235442 m!7905968))

(declare-fun m!7905970 () Bool)

(assert (=> b!7235442 m!7905970))

(declare-fun m!7905972 () Bool)

(assert (=> b!7235442 m!7905972))

(declare-fun m!7905974 () Bool)

(assert (=> b!7235441 m!7905974))

(declare-fun m!7905976 () Bool)

(assert (=> d!2247444 m!7905976))

(declare-fun m!7905978 () Bool)

(assert (=> d!2247444 m!7905978))

(declare-fun m!7905980 () Bool)

(assert (=> d!2247444 m!7905980))

(assert (=> b!7235314 d!2247444))

(assert (=> b!7235314 d!2247430))

(declare-fun d!2247448 () Bool)

(declare-fun res!2935381 () Bool)

(declare-fun e!4337734 () Bool)

(assert (=> d!2247448 (=> res!2935381 e!4337734)))

(assert (=> d!2247448 (= res!2935381 (is-Nil!70038 (exprs!7958 ct1!232)))))

(assert (=> d!2247448 (= (forall!17351 (exprs!7958 ct1!232) lambda!440192) e!4337734)))

(declare-fun b!7235468 () Bool)

(declare-fun e!4337735 () Bool)

(assert (=> b!7235468 (= e!4337734 e!4337735)))

(declare-fun res!2935382 () Bool)

(assert (=> b!7235468 (=> (not res!2935382) (not e!4337735))))

(declare-fun dynLambda!28568 (Int Regex!18518) Bool)

(assert (=> b!7235468 (= res!2935382 (dynLambda!28568 lambda!440192 (h!76486 (exprs!7958 ct1!232))))))

(declare-fun b!7235469 () Bool)

(assert (=> b!7235469 (= e!4337735 (forall!17351 (t!384213 (exprs!7958 ct1!232)) lambda!440192))))

(assert (= (and d!2247448 (not res!2935381)) b!7235468))

(assert (= (and b!7235468 res!2935382) b!7235469))

(declare-fun b_lambda!277407 () Bool)

(assert (=> (not b_lambda!277407) (not b!7235468)))

(declare-fun m!7905982 () Bool)

(assert (=> b!7235468 m!7905982))

(declare-fun m!7905984 () Bool)

(assert (=> b!7235469 m!7905984))

(assert (=> b!7235315 d!2247448))

(assert (=> b!7235320 d!2247430))

(declare-fun d!2247450 () Bool)

(declare-fun nullableFct!3066 (Regex!18518) Bool)

(assert (=> d!2247450 (= (nullable!7831 (h!76486 (exprs!7958 ct1!232))) (nullableFct!3066 (h!76486 (exprs!7958 ct1!232))))))

(declare-fun bs!1903292 () Bool)

(assert (= bs!1903292 d!2247450))

(declare-fun m!7905986 () Bool)

(assert (=> bs!1903292 m!7905986))

(assert (=> b!7235320 d!2247450))

(assert (=> b!7235320 d!2247434))

(declare-fun d!2247452 () Bool)

(declare-fun choose!55613 ((Set Context!14916) Int) (Set Context!14916))

(assert (=> d!2247452 (= (flatMap!2722 lt!2575249 lambda!440194) (choose!55613 lt!2575249 lambda!440194))))

(declare-fun bs!1903293 () Bool)

(assert (= bs!1903293 d!2247452))

(declare-fun m!7905988 () Bool)

(assert (=> bs!1903293 m!7905988))

(assert (=> b!7235320 d!2247452))

(declare-fun call!658738 () (Set Context!14916))

(declare-fun b!7235470 () Bool)

(declare-fun e!4337737 () (Set Context!14916))

(assert (=> b!7235470 (= e!4337737 (set.union call!658738 (derivationStepZipperUp!2392 (Context!14917 (t!384213 (exprs!7958 ct1!232))) (h!76487 s1!1971))))))

(declare-fun bm!658733 () Bool)

(assert (=> bm!658733 (= call!658738 (derivationStepZipperDown!2562 (h!76486 (exprs!7958 ct1!232)) (Context!14917 (t!384213 (exprs!7958 ct1!232))) (h!76487 s1!1971)))))

(declare-fun b!7235471 () Bool)

(declare-fun e!4337736 () (Set Context!14916))

(assert (=> b!7235471 (= e!4337736 call!658738)))

(declare-fun d!2247454 () Bool)

(declare-fun c!1342867 () Bool)

(declare-fun e!4337738 () Bool)

(assert (=> d!2247454 (= c!1342867 e!4337738)))

(declare-fun res!2935383 () Bool)

(assert (=> d!2247454 (=> (not res!2935383) (not e!4337738))))

(assert (=> d!2247454 (= res!2935383 (is-Cons!70038 (exprs!7958 ct1!232)))))

(assert (=> d!2247454 (= (derivationStepZipperUp!2392 ct1!232 (h!76487 s1!1971)) e!4337737)))

(declare-fun b!7235472 () Bool)

(assert (=> b!7235472 (= e!4337738 (nullable!7831 (h!76486 (exprs!7958 ct1!232))))))

(declare-fun b!7235473 () Bool)

(assert (=> b!7235473 (= e!4337736 (as set.empty (Set Context!14916)))))

(declare-fun b!7235474 () Bool)

(assert (=> b!7235474 (= e!4337737 e!4337736)))

(declare-fun c!1342866 () Bool)

(assert (=> b!7235474 (= c!1342866 (is-Cons!70038 (exprs!7958 ct1!232)))))

(assert (= (and d!2247454 res!2935383) b!7235472))

(assert (= (and d!2247454 c!1342867) b!7235470))

(assert (= (and d!2247454 (not c!1342867)) b!7235474))

(assert (= (and b!7235474 c!1342866) b!7235471))

(assert (= (and b!7235474 (not c!1342866)) b!7235473))

(assert (= (or b!7235470 b!7235471) bm!658733))

(declare-fun m!7905990 () Bool)

(assert (=> b!7235470 m!7905990))

(declare-fun m!7905992 () Bool)

(assert (=> bm!658733 m!7905992))

(assert (=> b!7235472 m!7905832))

(assert (=> b!7235320 d!2247454))

(declare-fun b!7235475 () Bool)

(declare-fun e!4337739 () (Set Context!14916))

(declare-fun e!4337740 () (Set Context!14916))

(assert (=> b!7235475 (= e!4337739 e!4337740)))

(declare-fun c!1342872 () Bool)

(assert (=> b!7235475 (= c!1342872 (is-Union!18518 (h!76486 (exprs!7958 ct1!232))))))

(declare-fun b!7235476 () Bool)

(declare-fun e!4337741 () Bool)

(assert (=> b!7235476 (= e!4337741 (nullable!7831 (regOne!37548 (h!76486 (exprs!7958 ct1!232)))))))

(declare-fun b!7235477 () Bool)

(assert (=> b!7235477 (= e!4337739 (set.insert (Context!14917 (tail!14151 lt!2575252)) (as set.empty (Set Context!14916))))))

(declare-fun bm!658734 () Bool)

(declare-fun call!658739 () List!70162)

(declare-fun c!1342868 () Bool)

(declare-fun c!1342870 () Bool)

(assert (=> bm!658734 (= call!658739 ($colon$colon!2873 (exprs!7958 (Context!14917 (tail!14151 lt!2575252))) (ite (or c!1342868 c!1342870) (regTwo!37548 (h!76486 (exprs!7958 ct1!232))) (h!76486 (exprs!7958 ct1!232)))))))

(declare-fun b!7235478 () Bool)

(declare-fun e!4337744 () (Set Context!14916))

(declare-fun call!658743 () (Set Context!14916))

(assert (=> b!7235478 (= e!4337744 call!658743)))

(declare-fun b!7235479 () Bool)

(declare-fun e!4337742 () (Set Context!14916))

(assert (=> b!7235479 (= e!4337742 call!658743)))

(declare-fun bm!658735 () Bool)

(declare-fun call!658741 () (Set Context!14916))

(assert (=> bm!658735 (= call!658743 call!658741)))

(declare-fun call!658742 () List!70162)

(declare-fun call!658744 () (Set Context!14916))

(declare-fun bm!658736 () Bool)

(assert (=> bm!658736 (= call!658744 (derivationStepZipperDown!2562 (ite c!1342872 (regOne!37549 (h!76486 (exprs!7958 ct1!232))) (ite c!1342868 (regTwo!37548 (h!76486 (exprs!7958 ct1!232))) (ite c!1342870 (regOne!37548 (h!76486 (exprs!7958 ct1!232))) (reg!18847 (h!76486 (exprs!7958 ct1!232)))))) (ite (or c!1342872 c!1342868) (Context!14917 (tail!14151 lt!2575252)) (Context!14917 call!658742)) (h!76487 s1!1971)))))

(declare-fun b!7235480 () Bool)

(declare-fun e!4337743 () (Set Context!14916))

(declare-fun call!658740 () (Set Context!14916))

(assert (=> b!7235480 (= e!4337743 (set.union call!658740 call!658741))))

(declare-fun b!7235481 () Bool)

(assert (=> b!7235481 (= e!4337743 e!4337742)))

(assert (=> b!7235481 (= c!1342870 (is-Concat!27363 (h!76486 (exprs!7958 ct1!232))))))

(declare-fun b!7235482 () Bool)

(assert (=> b!7235482 (= e!4337744 (as set.empty (Set Context!14916)))))

(declare-fun b!7235483 () Bool)

(assert (=> b!7235483 (= e!4337740 (set.union call!658744 call!658740))))

(declare-fun bm!658738 () Bool)

(assert (=> bm!658738 (= call!658740 (derivationStepZipperDown!2562 (ite c!1342872 (regTwo!37549 (h!76486 (exprs!7958 ct1!232))) (regOne!37548 (h!76486 (exprs!7958 ct1!232)))) (ite c!1342872 (Context!14917 (tail!14151 lt!2575252)) (Context!14917 call!658739)) (h!76487 s1!1971)))))

(declare-fun b!7235484 () Bool)

(assert (=> b!7235484 (= c!1342868 e!4337741)))

(declare-fun res!2935384 () Bool)

(assert (=> b!7235484 (=> (not res!2935384) (not e!4337741))))

(assert (=> b!7235484 (= res!2935384 (is-Concat!27363 (h!76486 (exprs!7958 ct1!232))))))

(assert (=> b!7235484 (= e!4337740 e!4337743)))

(declare-fun bm!658739 () Bool)

(assert (=> bm!658739 (= call!658741 call!658744)))

(declare-fun b!7235485 () Bool)

(declare-fun c!1342869 () Bool)

(assert (=> b!7235485 (= c!1342869 (is-Star!18518 (h!76486 (exprs!7958 ct1!232))))))

(assert (=> b!7235485 (= e!4337742 e!4337744)))

(declare-fun bm!658737 () Bool)

(assert (=> bm!658737 (= call!658742 call!658739)))

(declare-fun d!2247456 () Bool)

(declare-fun c!1342871 () Bool)

(assert (=> d!2247456 (= c!1342871 (and (is-ElementMatch!18518 (h!76486 (exprs!7958 ct1!232))) (= (c!1342820 (h!76486 (exprs!7958 ct1!232))) (h!76487 s1!1971))))))

(assert (=> d!2247456 (= (derivationStepZipperDown!2562 (h!76486 (exprs!7958 ct1!232)) (Context!14917 (tail!14151 lt!2575252)) (h!76487 s1!1971)) e!4337739)))

(assert (= (and d!2247456 c!1342871) b!7235477))

(assert (= (and d!2247456 (not c!1342871)) b!7235475))

(assert (= (and b!7235475 c!1342872) b!7235483))

(assert (= (and b!7235475 (not c!1342872)) b!7235484))

(assert (= (and b!7235484 res!2935384) b!7235476))

(assert (= (and b!7235484 c!1342868) b!7235480))

(assert (= (and b!7235484 (not c!1342868)) b!7235481))

(assert (= (and b!7235481 c!1342870) b!7235479))

(assert (= (and b!7235481 (not c!1342870)) b!7235485))

(assert (= (and b!7235485 c!1342869) b!7235478))

(assert (= (and b!7235485 (not c!1342869)) b!7235482))

(assert (= (or b!7235479 b!7235478) bm!658737))

(assert (= (or b!7235479 b!7235478) bm!658735))

(assert (= (or b!7235480 bm!658737) bm!658734))

(assert (= (or b!7235480 bm!658735) bm!658739))

(assert (= (or b!7235483 b!7235480) bm!658738))

(assert (= (or b!7235483 bm!658739) bm!658736))

(assert (=> b!7235476 m!7905944))

(declare-fun m!7905994 () Bool)

(assert (=> bm!658734 m!7905994))

(declare-fun m!7905996 () Bool)

(assert (=> bm!658738 m!7905996))

(declare-fun m!7905998 () Bool)

(assert (=> b!7235477 m!7905998))

(declare-fun m!7906000 () Bool)

(assert (=> bm!658736 m!7906000))

(assert (=> b!7235320 d!2247456))

(declare-fun d!2247458 () Bool)

(declare-fun dynLambda!28569 (Int Context!14916) (Set Context!14916))

(assert (=> d!2247458 (= (flatMap!2722 lt!2575249 lambda!440194) (dynLambda!28569 lambda!440194 ct1!232))))

(declare-fun lt!2575338 () Unit!163574)

(declare-fun choose!55614 ((Set Context!14916) Context!14916 Int) Unit!163574)

(assert (=> d!2247458 (= lt!2575338 (choose!55614 lt!2575249 ct1!232 lambda!440194))))

(assert (=> d!2247458 (= lt!2575249 (set.insert ct1!232 (as set.empty (Set Context!14916))))))

(assert (=> d!2247458 (= (lemmaFlatMapOnSingletonSet!2149 lt!2575249 ct1!232 lambda!440194) lt!2575338)))

(declare-fun b_lambda!277409 () Bool)

(assert (=> (not b_lambda!277409) (not d!2247458)))

(declare-fun bs!1903294 () Bool)

(assert (= bs!1903294 d!2247458))

(assert (=> bs!1903294 m!7905840))

(declare-fun m!7906002 () Bool)

(assert (=> bs!1903294 m!7906002))

(declare-fun m!7906004 () Bool)

(assert (=> bs!1903294 m!7906004))

(assert (=> bs!1903294 m!7905790))

(assert (=> b!7235320 d!2247458))

(declare-fun d!2247460 () Bool)

(assert (=> d!2247460 (= (flatMap!2722 lt!2575250 lambda!440194) (dynLambda!28569 lambda!440194 lt!2575259))))

(declare-fun lt!2575339 () Unit!163574)

(assert (=> d!2247460 (= lt!2575339 (choose!55614 lt!2575250 lt!2575259 lambda!440194))))

(assert (=> d!2247460 (= lt!2575250 (set.insert lt!2575259 (as set.empty (Set Context!14916))))))

(assert (=> d!2247460 (= (lemmaFlatMapOnSingletonSet!2149 lt!2575250 lt!2575259 lambda!440194) lt!2575339)))

(declare-fun b_lambda!277411 () Bool)

(assert (=> (not b_lambda!277411) (not d!2247460)))

(declare-fun bs!1903295 () Bool)

(assert (= bs!1903295 d!2247460))

(assert (=> bs!1903295 m!7905836))

(declare-fun m!7906006 () Bool)

(assert (=> bs!1903295 m!7906006))

(declare-fun m!7906008 () Bool)

(assert (=> bs!1903295 m!7906008))

(assert (=> bs!1903295 m!7905824))

(assert (=> b!7235320 d!2247460))

(declare-fun d!2247462 () Bool)

(assert (=> d!2247462 (= (tail!14151 lt!2575252) (t!384213 lt!2575252))))

(assert (=> b!7235320 d!2247462))

(declare-fun d!2247464 () Bool)

(assert (=> d!2247464 (= (flatMap!2722 lt!2575250 lambda!440194) (choose!55613 lt!2575250 lambda!440194))))

(declare-fun bs!1903296 () Bool)

(assert (= bs!1903296 d!2247464))

(declare-fun m!7906010 () Bool)

(assert (=> bs!1903296 m!7906010))

(assert (=> b!7235320 d!2247464))

(declare-fun b!7235497 () Bool)

(declare-fun call!658751 () (Set Context!14916))

(declare-fun e!4337752 () (Set Context!14916))

(assert (=> b!7235497 (= e!4337752 (set.union call!658751 (derivationStepZipperUp!2392 (Context!14917 (t!384213 (exprs!7958 lt!2575247))) (h!76487 s1!1971))))))

(declare-fun bm!658746 () Bool)

(assert (=> bm!658746 (= call!658751 (derivationStepZipperDown!2562 (h!76486 (exprs!7958 lt!2575247)) (Context!14917 (t!384213 (exprs!7958 lt!2575247))) (h!76487 s1!1971)))))

(declare-fun b!7235498 () Bool)

(declare-fun e!4337751 () (Set Context!14916))

(assert (=> b!7235498 (= e!4337751 call!658751)))

(declare-fun d!2247466 () Bool)

(declare-fun c!1342879 () Bool)

(declare-fun e!4337753 () Bool)

(assert (=> d!2247466 (= c!1342879 e!4337753)))

(declare-fun res!2935386 () Bool)

(assert (=> d!2247466 (=> (not res!2935386) (not e!4337753))))

(assert (=> d!2247466 (= res!2935386 (is-Cons!70038 (exprs!7958 lt!2575247)))))

(assert (=> d!2247466 (= (derivationStepZipperUp!2392 lt!2575247 (h!76487 s1!1971)) e!4337752)))

(declare-fun b!7235499 () Bool)

(assert (=> b!7235499 (= e!4337753 (nullable!7831 (h!76486 (exprs!7958 lt!2575247))))))

(declare-fun b!7235500 () Bool)

(assert (=> b!7235500 (= e!4337751 (as set.empty (Set Context!14916)))))

(declare-fun b!7235501 () Bool)

(assert (=> b!7235501 (= e!4337752 e!4337751)))

(declare-fun c!1342878 () Bool)

(assert (=> b!7235501 (= c!1342878 (is-Cons!70038 (exprs!7958 lt!2575247)))))

(assert (= (and d!2247466 res!2935386) b!7235499))

(assert (= (and d!2247466 c!1342879) b!7235497))

(assert (= (and d!2247466 (not c!1342879)) b!7235501))

(assert (= (and b!7235501 c!1342878) b!7235498))

(assert (= (and b!7235501 (not c!1342878)) b!7235500))

(assert (= (or b!7235497 b!7235498) bm!658746))

(declare-fun m!7906018 () Bool)

(assert (=> b!7235497 m!7906018))

(declare-fun m!7906024 () Bool)

(assert (=> bm!658746 m!7906024))

(declare-fun m!7906026 () Bool)

(assert (=> b!7235499 m!7906026))

(assert (=> b!7235321 d!2247466))

(declare-fun d!2247470 () Bool)

(declare-fun res!2935387 () Bool)

(declare-fun e!4337754 () Bool)

(assert (=> d!2247470 (=> res!2935387 e!4337754)))

(assert (=> d!2247470 (= res!2935387 (is-Nil!70038 (exprs!7958 ct2!328)))))

(assert (=> d!2247470 (= (forall!17351 (exprs!7958 ct2!328) lambda!440192) e!4337754)))

(declare-fun b!7235502 () Bool)

(declare-fun e!4337755 () Bool)

(assert (=> b!7235502 (= e!4337754 e!4337755)))

(declare-fun res!2935388 () Bool)

(assert (=> b!7235502 (=> (not res!2935388) (not e!4337755))))

(assert (=> b!7235502 (= res!2935388 (dynLambda!28568 lambda!440192 (h!76486 (exprs!7958 ct2!328))))))

(declare-fun b!7235503 () Bool)

(assert (=> b!7235503 (= e!4337755 (forall!17351 (t!384213 (exprs!7958 ct2!328)) lambda!440192))))

(assert (= (and d!2247470 (not res!2935387)) b!7235502))

(assert (= (and b!7235502 res!2935388) b!7235503))

(declare-fun b_lambda!277413 () Bool)

(assert (=> (not b_lambda!277413) (not b!7235502)))

(declare-fun m!7906028 () Bool)

(assert (=> b!7235502 m!7906028))

(declare-fun m!7906030 () Bool)

(assert (=> b!7235503 m!7906030))

(assert (=> b!7235326 d!2247470))

(declare-fun d!2247472 () Bool)

(declare-fun lt!2575342 () Bool)

(assert (=> d!2247472 (= lt!2575342 (exists!4180 (toList!11375 lt!2575257) lambda!440193))))

(declare-fun choose!55616 ((Set Context!14916) Int) Bool)

(assert (=> d!2247472 (= lt!2575342 (choose!55616 lt!2575257 lambda!440193))))

(assert (=> d!2247472 (= (exists!4179 lt!2575257 lambda!440193) lt!2575342)))

(declare-fun bs!1903298 () Bool)

(assert (= bs!1903298 d!2247472))

(assert (=> bs!1903298 m!7905804))

(assert (=> bs!1903298 m!7905804))

(declare-fun m!7906034 () Bool)

(assert (=> bs!1903298 m!7906034))

(declare-fun m!7906036 () Bool)

(assert (=> bs!1903298 m!7906036))

(assert (=> b!7235317 d!2247472))

(declare-fun bs!1903299 () Bool)

(declare-fun d!2247476 () Bool)

(assert (= bs!1903299 (and d!2247476 b!7235317)))

(declare-fun lambda!440224 () Int)

(assert (=> bs!1903299 (not (= lambda!440224 lambda!440193))))

(assert (=> d!2247476 true))

(declare-fun order!28851 () Int)

(declare-fun dynLambda!28570 (Int Int) Int)

(assert (=> d!2247476 (< (dynLambda!28570 order!28851 lambda!440193) (dynLambda!28570 order!28851 lambda!440224))))

(declare-fun forall!17353 (List!70164 Int) Bool)

(assert (=> d!2247476 (= (exists!4180 lt!2575255 lambda!440193) (not (forall!17353 lt!2575255 lambda!440224)))))

(declare-fun bs!1903300 () Bool)

(assert (= bs!1903300 d!2247476))

(declare-fun m!7906038 () Bool)

(assert (=> bs!1903300 m!7906038))

(assert (=> b!7235317 d!2247476))

(declare-fun bs!1903304 () Bool)

(declare-fun d!2247478 () Bool)

(assert (= bs!1903304 (and d!2247478 b!7235317)))

(declare-fun lambda!440227 () Int)

(assert (=> bs!1903304 (= lambda!440227 lambda!440193)))

(declare-fun bs!1903305 () Bool)

(assert (= bs!1903305 (and d!2247478 d!2247476)))

(assert (=> bs!1903305 (not (= lambda!440227 lambda!440224))))

(assert (=> d!2247478 true))

(assert (=> d!2247478 (exists!4180 lt!2575255 lambda!440227)))

(declare-fun lt!2575348 () Unit!163574)

(declare-fun choose!55618 (List!70164 List!70163) Unit!163574)

(assert (=> d!2247478 (= lt!2575348 (choose!55618 lt!2575255 (t!384214 s1!1971)))))

(declare-fun content!14427 (List!70164) (Set Context!14916))

(assert (=> d!2247478 (matchZipper!3428 (content!14427 lt!2575255) (t!384214 s1!1971))))

(assert (=> d!2247478 (= (lemmaZipperMatchesExistsMatchingContext!661 lt!2575255 (t!384214 s1!1971)) lt!2575348)))

(declare-fun bs!1903306 () Bool)

(assert (= bs!1903306 d!2247478))

(declare-fun m!7906058 () Bool)

(assert (=> bs!1903306 m!7906058))

(declare-fun m!7906060 () Bool)

(assert (=> bs!1903306 m!7906060))

(declare-fun m!7906062 () Bool)

(assert (=> bs!1903306 m!7906062))

(assert (=> bs!1903306 m!7906062))

(declare-fun m!7906064 () Bool)

(assert (=> bs!1903306 m!7906064))

(assert (=> b!7235317 d!2247478))

(declare-fun d!2247490 () Bool)

(declare-fun e!4337770 () Bool)

(assert (=> d!2247490 e!4337770))

(declare-fun res!2935395 () Bool)

(assert (=> d!2247490 (=> (not res!2935395) (not e!4337770))))

(declare-fun lt!2575351 () List!70164)

(declare-fun noDuplicate!2936 (List!70164) Bool)

(assert (=> d!2247490 (= res!2935395 (noDuplicate!2936 lt!2575351))))

(declare-fun choose!55619 ((Set Context!14916)) List!70164)

(assert (=> d!2247490 (= lt!2575351 (choose!55619 lt!2575257))))

(assert (=> d!2247490 (= (toList!11375 lt!2575257) lt!2575351)))

(declare-fun b!7235528 () Bool)

(assert (=> b!7235528 (= e!4337770 (= (content!14427 lt!2575351) lt!2575257))))

(assert (= (and d!2247490 res!2935395) b!7235528))

(declare-fun m!7906066 () Bool)

(assert (=> d!2247490 m!7906066))

(declare-fun m!7906068 () Bool)

(assert (=> d!2247490 m!7906068))

(declare-fun m!7906070 () Bool)

(assert (=> b!7235528 m!7906070))

(assert (=> b!7235317 d!2247490))

(declare-fun d!2247492 () Bool)

(declare-fun c!1342895 () Bool)

(declare-fun isEmpty!40367 (List!70163) Bool)

(assert (=> d!2247492 (= c!1342895 (isEmpty!40367 (t!384214 s1!1971)))))

(declare-fun e!4337779 () Bool)

(assert (=> d!2247492 (= (matchZipper!3428 lt!2575257 (t!384214 s1!1971)) e!4337779)))

(declare-fun b!7235545 () Bool)

(declare-fun nullableZipper!2826 ((Set Context!14916)) Bool)

(assert (=> b!7235545 (= e!4337779 (nullableZipper!2826 lt!2575257))))

(declare-fun b!7235546 () Bool)

(declare-fun head!14815 (List!70163) C!37310)

(declare-fun tail!14153 (List!70163) List!70163)

(assert (=> b!7235546 (= e!4337779 (matchZipper!3428 (derivationStepZipper!3310 lt!2575257 (head!14815 (t!384214 s1!1971))) (tail!14153 (t!384214 s1!1971))))))

(assert (= (and d!2247492 c!1342895) b!7235545))

(assert (= (and d!2247492 (not c!1342895)) b!7235546))

(declare-fun m!7906086 () Bool)

(assert (=> d!2247492 m!7906086))

(declare-fun m!7906088 () Bool)

(assert (=> b!7235545 m!7906088))

(declare-fun m!7906090 () Bool)

(assert (=> b!7235546 m!7906090))

(assert (=> b!7235546 m!7906090))

(declare-fun m!7906092 () Bool)

(assert (=> b!7235546 m!7906092))

(declare-fun m!7906094 () Bool)

(assert (=> b!7235546 m!7906094))

(assert (=> b!7235546 m!7906092))

(assert (=> b!7235546 m!7906094))

(declare-fun m!7906096 () Bool)

(assert (=> b!7235546 m!7906096))

(assert (=> b!7235322 d!2247492))

(declare-fun bs!1903307 () Bool)

(declare-fun d!2247496 () Bool)

(assert (= bs!1903307 (and d!2247496 b!7235320)))

(declare-fun lambda!440230 () Int)

(assert (=> bs!1903307 (= lambda!440230 lambda!440194)))

(assert (=> d!2247496 true))

(assert (=> d!2247496 (= (derivationStepZipper!3310 lt!2575249 (h!76487 s1!1971)) (flatMap!2722 lt!2575249 lambda!440230))))

(declare-fun bs!1903308 () Bool)

(assert (= bs!1903308 d!2247496))

(declare-fun m!7906098 () Bool)

(assert (=> bs!1903308 m!7906098))

(assert (=> b!7235322 d!2247496))

(declare-fun d!2247498 () Bool)

(declare-fun c!1342900 () Bool)

(assert (=> d!2247498 (= c!1342900 (isEmpty!40367 s1!1971))))

(declare-fun e!4337782 () Bool)

(assert (=> d!2247498 (= (matchZipper!3428 lt!2575249 s1!1971) e!4337782)))

(declare-fun b!7235553 () Bool)

(assert (=> b!7235553 (= e!4337782 (nullableZipper!2826 lt!2575249))))

(declare-fun b!7235554 () Bool)

(assert (=> b!7235554 (= e!4337782 (matchZipper!3428 (derivationStepZipper!3310 lt!2575249 (head!14815 s1!1971)) (tail!14153 s1!1971)))))

(assert (= (and d!2247498 c!1342900) b!7235553))

(assert (= (and d!2247498 (not c!1342900)) b!7235554))

(declare-fun m!7906100 () Bool)

(assert (=> d!2247498 m!7906100))

(declare-fun m!7906102 () Bool)

(assert (=> b!7235553 m!7906102))

(declare-fun m!7906104 () Bool)

(assert (=> b!7235554 m!7906104))

(assert (=> b!7235554 m!7906104))

(declare-fun m!7906106 () Bool)

(assert (=> b!7235554 m!7906106))

(declare-fun m!7906108 () Bool)

(assert (=> b!7235554 m!7906108))

(assert (=> b!7235554 m!7906106))

(assert (=> b!7235554 m!7906108))

(declare-fun m!7906116 () Bool)

(assert (=> b!7235554 m!7906116))

(assert (=> start!702402 d!2247498))

(declare-fun bs!1903309 () Bool)

(declare-fun d!2247500 () Bool)

(assert (= bs!1903309 (and d!2247500 b!7235314)))

(declare-fun lambda!440235 () Int)

(assert (=> bs!1903309 (= lambda!440235 lambda!440192)))

(assert (=> d!2247500 (= (inv!89306 ct1!232) (forall!17351 (exprs!7958 ct1!232) lambda!440235))))

(declare-fun bs!1903310 () Bool)

(assert (= bs!1903310 d!2247500))

(declare-fun m!7906124 () Bool)

(assert (=> bs!1903310 m!7906124))

(assert (=> start!702402 d!2247500))

(declare-fun bs!1903312 () Bool)

(declare-fun d!2247504 () Bool)

(assert (= bs!1903312 (and d!2247504 b!7235314)))

(declare-fun lambda!440237 () Int)

(assert (=> bs!1903312 (= lambda!440237 lambda!440192)))

(declare-fun bs!1903313 () Bool)

(assert (= bs!1903313 (and d!2247504 d!2247500)))

(assert (=> bs!1903313 (= lambda!440237 lambda!440235)))

(assert (=> d!2247504 (= (inv!89306 ct2!328) (forall!17351 (exprs!7958 ct2!328) lambda!440237))))

(declare-fun bs!1903315 () Bool)

(assert (= bs!1903315 d!2247504))

(declare-fun m!7906128 () Bool)

(assert (=> bs!1903315 m!7906128))

(assert (=> start!702402 d!2247504))

(declare-fun d!2247508 () Bool)

(assert (=> d!2247508 (forall!17351 (++!16336 (exprs!7958 lt!2575248) (exprs!7958 ct2!328)) lambda!440192)))

(declare-fun lt!2575355 () Unit!163574)

(assert (=> d!2247508 (= lt!2575355 (choose!55611 (exprs!7958 lt!2575248) (exprs!7958 ct2!328) lambda!440192))))

(assert (=> d!2247508 (forall!17351 (exprs!7958 lt!2575248) lambda!440192)))

(assert (=> d!2247508 (= (lemmaConcatPreservesForall!1327 (exprs!7958 lt!2575248) (exprs!7958 ct2!328) lambda!440192) lt!2575355)))

(declare-fun bs!1903318 () Bool)

(assert (= bs!1903318 d!2247508))

(assert (=> bs!1903318 m!7905854))

(assert (=> bs!1903318 m!7905854))

(declare-fun m!7906132 () Bool)

(assert (=> bs!1903318 m!7906132))

(declare-fun m!7906134 () Bool)

(assert (=> bs!1903318 m!7906134))

(declare-fun m!7906136 () Bool)

(assert (=> bs!1903318 m!7906136))

(assert (=> b!7235323 d!2247508))

(declare-fun d!2247512 () Bool)

(declare-fun c!1342902 () Bool)

(assert (=> d!2247512 (= c!1342902 (isEmpty!40367 (++!16337 (t!384214 s1!1971) s2!1849)))))

(declare-fun e!4337784 () Bool)

(assert (=> d!2247512 (= (matchZipper!3428 (set.insert (Context!14917 (++!16336 (exprs!7958 lt!2575248) (exprs!7958 ct2!328))) (as set.empty (Set Context!14916))) (++!16337 (t!384214 s1!1971) s2!1849)) e!4337784)))

(declare-fun b!7235557 () Bool)

(assert (=> b!7235557 (= e!4337784 (nullableZipper!2826 (set.insert (Context!14917 (++!16336 (exprs!7958 lt!2575248) (exprs!7958 ct2!328))) (as set.empty (Set Context!14916)))))))

(declare-fun b!7235558 () Bool)

(assert (=> b!7235558 (= e!4337784 (matchZipper!3428 (derivationStepZipper!3310 (set.insert (Context!14917 (++!16336 (exprs!7958 lt!2575248) (exprs!7958 ct2!328))) (as set.empty (Set Context!14916))) (head!14815 (++!16337 (t!384214 s1!1971) s2!1849))) (tail!14153 (++!16337 (t!384214 s1!1971) s2!1849))))))

(assert (= (and d!2247512 c!1342902) b!7235557))

(assert (= (and d!2247512 (not c!1342902)) b!7235558))

(assert (=> d!2247512 m!7905850))

(declare-fun m!7906138 () Bool)

(assert (=> d!2247512 m!7906138))

(assert (=> b!7235557 m!7905852))

(declare-fun m!7906140 () Bool)

(assert (=> b!7235557 m!7906140))

(assert (=> b!7235558 m!7905850))

(declare-fun m!7906142 () Bool)

(assert (=> b!7235558 m!7906142))

(assert (=> b!7235558 m!7905852))

(assert (=> b!7235558 m!7906142))

(declare-fun m!7906144 () Bool)

(assert (=> b!7235558 m!7906144))

(assert (=> b!7235558 m!7905850))

(declare-fun m!7906146 () Bool)

(assert (=> b!7235558 m!7906146))

(assert (=> b!7235558 m!7906144))

(assert (=> b!7235558 m!7906146))

(declare-fun m!7906148 () Bool)

(assert (=> b!7235558 m!7906148))

(assert (=> b!7235323 d!2247512))

(declare-fun bs!1903323 () Bool)

(declare-fun d!2247514 () Bool)

(assert (= bs!1903323 (and d!2247514 b!7235314)))

(declare-fun lambda!440246 () Int)

(assert (=> bs!1903323 (= lambda!440246 lambda!440192)))

(declare-fun bs!1903324 () Bool)

(assert (= bs!1903324 (and d!2247514 d!2247500)))

(assert (=> bs!1903324 (= lambda!440246 lambda!440235)))

(declare-fun bs!1903325 () Bool)

(assert (= bs!1903325 (and d!2247514 d!2247504)))

(assert (=> bs!1903325 (= lambda!440246 lambda!440237)))

(assert (=> d!2247514 (matchZipper!3428 (set.insert (Context!14917 (++!16336 (exprs!7958 lt!2575248) (exprs!7958 ct2!328))) (as set.empty (Set Context!14916))) (++!16337 (t!384214 s1!1971) s2!1849))))

(declare-fun lt!2575366 () Unit!163574)

(assert (=> d!2247514 (= lt!2575366 (lemmaConcatPreservesForall!1327 (exprs!7958 lt!2575248) (exprs!7958 ct2!328) lambda!440246))))

(declare-fun lt!2575365 () Unit!163574)

(declare-fun choose!55622 (Context!14916 Context!14916 List!70163 List!70163) Unit!163574)

(assert (=> d!2247514 (= lt!2575365 (choose!55622 lt!2575248 ct2!328 (t!384214 s1!1971) s2!1849))))

(assert (=> d!2247514 (matchZipper!3428 (set.insert lt!2575248 (as set.empty (Set Context!14916))) (t!384214 s1!1971))))

(assert (=> d!2247514 (= (lemmaConcatenateContextMatchesConcatOfStrings!309 lt!2575248 ct2!328 (t!384214 s1!1971) s2!1849) lt!2575365)))

(declare-fun bs!1903326 () Bool)

(assert (= bs!1903326 d!2247514))

(assert (=> bs!1903326 m!7905852))

(declare-fun m!7906156 () Bool)

(assert (=> bs!1903326 m!7906156))

(assert (=> bs!1903326 m!7906156))

(declare-fun m!7906158 () Bool)

(assert (=> bs!1903326 m!7906158))

(declare-fun m!7906160 () Bool)

(assert (=> bs!1903326 m!7906160))

(declare-fun m!7906162 () Bool)

(assert (=> bs!1903326 m!7906162))

(assert (=> bs!1903326 m!7905854))

(assert (=> bs!1903326 m!7905850))

(assert (=> bs!1903326 m!7905852))

(assert (=> bs!1903326 m!7905850))

(assert (=> bs!1903326 m!7905862))

(assert (=> b!7235323 d!2247514))

(declare-fun lt!2575373 () List!70163)

(declare-fun e!4337792 () Bool)

(declare-fun b!7235575 () Bool)

(assert (=> b!7235575 (= e!4337792 (or (not (= s2!1849 Nil!70039)) (= lt!2575373 (t!384214 s1!1971))))))

(declare-fun b!7235573 () Bool)

(declare-fun e!4337793 () List!70163)

(assert (=> b!7235573 (= e!4337793 (Cons!70039 (h!76487 (t!384214 s1!1971)) (++!16337 (t!384214 (t!384214 s1!1971)) s2!1849)))))

(declare-fun d!2247520 () Bool)

(assert (=> d!2247520 e!4337792))

(declare-fun res!2935409 () Bool)

(assert (=> d!2247520 (=> (not res!2935409) (not e!4337792))))

(declare-fun content!14430 (List!70163) (Set C!37310))

(assert (=> d!2247520 (= res!2935409 (= (content!14430 lt!2575373) (set.union (content!14430 (t!384214 s1!1971)) (content!14430 s2!1849))))))

(assert (=> d!2247520 (= lt!2575373 e!4337793)))

(declare-fun c!1342907 () Bool)

(assert (=> d!2247520 (= c!1342907 (is-Nil!70039 (t!384214 s1!1971)))))

(assert (=> d!2247520 (= (++!16337 (t!384214 s1!1971) s2!1849) lt!2575373)))

(declare-fun b!7235574 () Bool)

(declare-fun res!2935410 () Bool)

(assert (=> b!7235574 (=> (not res!2935410) (not e!4337792))))

(declare-fun size!41587 (List!70163) Int)

(assert (=> b!7235574 (= res!2935410 (= (size!41587 lt!2575373) (+ (size!41587 (t!384214 s1!1971)) (size!41587 s2!1849))))))

(declare-fun b!7235572 () Bool)

(assert (=> b!7235572 (= e!4337793 s2!1849)))

(assert (= (and d!2247520 c!1342907) b!7235572))

(assert (= (and d!2247520 (not c!1342907)) b!7235573))

(assert (= (and d!2247520 res!2935409) b!7235574))

(assert (= (and b!7235574 res!2935410) b!7235575))

(declare-fun m!7906178 () Bool)

(assert (=> b!7235573 m!7906178))

(declare-fun m!7906180 () Bool)

(assert (=> d!2247520 m!7906180))

(declare-fun m!7906182 () Bool)

(assert (=> d!2247520 m!7906182))

(declare-fun m!7906184 () Bool)

(assert (=> d!2247520 m!7906184))

(declare-fun m!7906186 () Bool)

(assert (=> b!7235574 m!7906186))

(declare-fun m!7906188 () Bool)

(assert (=> b!7235574 m!7906188))

(declare-fun m!7906190 () Bool)

(assert (=> b!7235574 m!7906190))

(assert (=> b!7235323 d!2247520))

(assert (=> b!7235323 d!2247454))

(declare-fun d!2247528 () Bool)

(declare-fun e!4337802 () Bool)

(assert (=> d!2247528 e!4337802))

(declare-fun res!2935419 () Bool)

(assert (=> d!2247528 (=> (not res!2935419) (not e!4337802))))

(declare-fun lt!2575380 () Context!14916)

(declare-fun dynLambda!28572 (Int Context!14916) Bool)

(assert (=> d!2247528 (= res!2935419 (dynLambda!28572 lambda!440193 lt!2575380))))

(declare-fun getWitness!2051 (List!70164 Int) Context!14916)

(assert (=> d!2247528 (= lt!2575380 (getWitness!2051 (toList!11375 lt!2575257) lambda!440193))))

(assert (=> d!2247528 (exists!4179 lt!2575257 lambda!440193)))

(assert (=> d!2247528 (= (getWitness!2049 lt!2575257 lambda!440193) lt!2575380)))

(declare-fun b!7235590 () Bool)

(assert (=> b!7235590 (= e!4337802 (set.member lt!2575380 lt!2575257))))

(assert (= (and d!2247528 res!2935419) b!7235590))

(declare-fun b_lambda!277415 () Bool)

(assert (=> (not b_lambda!277415) (not d!2247528)))

(declare-fun m!7906212 () Bool)

(assert (=> d!2247528 m!7906212))

(assert (=> d!2247528 m!7905804))

(assert (=> d!2247528 m!7905804))

(declare-fun m!7906214 () Bool)

(assert (=> d!2247528 m!7906214))

(assert (=> d!2247528 m!7905798))

(declare-fun m!7906216 () Bool)

(assert (=> b!7235590 m!7906216))

(assert (=> b!7235323 d!2247528))

(declare-fun d!2247534 () Bool)

(assert (=> d!2247534 (= (isEmpty!40365 (exprs!7958 ct1!232)) (is-Nil!70038 (exprs!7958 ct1!232)))))

(assert (=> b!7235323 d!2247534))

(declare-fun b!7235595 () Bool)

(declare-fun res!2935420 () Bool)

(declare-fun e!4337804 () Bool)

(assert (=> b!7235595 (=> (not res!2935420) (not e!4337804))))

(declare-fun lt!2575381 () List!70162)

(assert (=> b!7235595 (= res!2935420 (= (size!41584 lt!2575381) (+ (size!41584 (exprs!7958 lt!2575248)) (size!41584 (exprs!7958 ct2!328)))))))

(declare-fun b!7235593 () Bool)

(declare-fun e!4337805 () List!70162)

(assert (=> b!7235593 (= e!4337805 (exprs!7958 ct2!328))))

(declare-fun b!7235594 () Bool)

(assert (=> b!7235594 (= e!4337805 (Cons!70038 (h!76486 (exprs!7958 lt!2575248)) (++!16336 (t!384213 (exprs!7958 lt!2575248)) (exprs!7958 ct2!328))))))

(declare-fun d!2247536 () Bool)

(assert (=> d!2247536 e!4337804))

(declare-fun res!2935421 () Bool)

(assert (=> d!2247536 (=> (not res!2935421) (not e!4337804))))

(assert (=> d!2247536 (= res!2935421 (= (content!14426 lt!2575381) (set.union (content!14426 (exprs!7958 lt!2575248)) (content!14426 (exprs!7958 ct2!328)))))))

(assert (=> d!2247536 (= lt!2575381 e!4337805)))

(declare-fun c!1342912 () Bool)

(assert (=> d!2247536 (= c!1342912 (is-Nil!70038 (exprs!7958 lt!2575248)))))

(assert (=> d!2247536 (= (++!16336 (exprs!7958 lt!2575248) (exprs!7958 ct2!328)) lt!2575381)))

(declare-fun b!7235596 () Bool)

(assert (=> b!7235596 (= e!4337804 (or (not (= (exprs!7958 ct2!328) Nil!70038)) (= lt!2575381 (exprs!7958 lt!2575248))))))

(assert (= (and d!2247536 c!1342912) b!7235593))

(assert (= (and d!2247536 (not c!1342912)) b!7235594))

(assert (= (and d!2247536 res!2935421) b!7235595))

(assert (= (and b!7235595 res!2935420) b!7235596))

(declare-fun m!7906230 () Bool)

(assert (=> b!7235595 m!7906230))

(declare-fun m!7906232 () Bool)

(assert (=> b!7235595 m!7906232))

(assert (=> b!7235595 m!7905972))

(declare-fun m!7906234 () Bool)

(assert (=> b!7235594 m!7906234))

(declare-fun m!7906236 () Bool)

(assert (=> d!2247536 m!7906236))

(declare-fun m!7906238 () Bool)

(assert (=> d!2247536 m!7906238))

(assert (=> d!2247536 m!7905980))

(assert (=> b!7235323 d!2247536))

(declare-fun d!2247540 () Bool)

(declare-fun c!1342913 () Bool)

(assert (=> d!2247540 (= c!1342913 (isEmpty!40367 s2!1849))))

(declare-fun e!4337806 () Bool)

(assert (=> d!2247540 (= (matchZipper!3428 (set.insert ct2!328 (as set.empty (Set Context!14916))) s2!1849) e!4337806)))

(declare-fun b!7235597 () Bool)

(assert (=> b!7235597 (= e!4337806 (nullableZipper!2826 (set.insert ct2!328 (as set.empty (Set Context!14916)))))))

(declare-fun b!7235598 () Bool)

(assert (=> b!7235598 (= e!4337806 (matchZipper!3428 (derivationStepZipper!3310 (set.insert ct2!328 (as set.empty (Set Context!14916))) (head!14815 s2!1849)) (tail!14153 s2!1849)))))

(assert (= (and d!2247540 c!1342913) b!7235597))

(assert (= (and d!2247540 (not c!1342913)) b!7235598))

(declare-fun m!7906240 () Bool)

(assert (=> d!2247540 m!7906240))

(assert (=> b!7235597 m!7905818))

(declare-fun m!7906242 () Bool)

(assert (=> b!7235597 m!7906242))

(declare-fun m!7906244 () Bool)

(assert (=> b!7235598 m!7906244))

(assert (=> b!7235598 m!7905818))

(assert (=> b!7235598 m!7906244))

(declare-fun m!7906246 () Bool)

(assert (=> b!7235598 m!7906246))

(declare-fun m!7906248 () Bool)

(assert (=> b!7235598 m!7906248))

(assert (=> b!7235598 m!7906246))

(assert (=> b!7235598 m!7906248))

(declare-fun m!7906250 () Bool)

(assert (=> b!7235598 m!7906250))

(assert (=> b!7235328 d!2247540))

(declare-fun b!7235603 () Bool)

(declare-fun e!4337809 () Bool)

(declare-fun tp!2034509 () Bool)

(declare-fun tp!2034510 () Bool)

(assert (=> b!7235603 (= e!4337809 (and tp!2034509 tp!2034510))))

(assert (=> b!7235319 (= tp!2034489 e!4337809)))

(assert (= (and b!7235319 (is-Cons!70038 (exprs!7958 ct2!328))) b!7235603))

(declare-fun b!7235608 () Bool)

(declare-fun e!4337812 () Bool)

(declare-fun tp!2034513 () Bool)

(assert (=> b!7235608 (= e!4337812 (and tp_is_empty!46501 tp!2034513))))

(assert (=> b!7235324 (= tp!2034490 e!4337812)))

(assert (= (and b!7235324 (is-Cons!70039 (t!384214 s2!1849))) b!7235608))

(declare-fun b!7235609 () Bool)

(declare-fun e!4337813 () Bool)

(declare-fun tp!2034514 () Bool)

(declare-fun tp!2034515 () Bool)

(assert (=> b!7235609 (= e!4337813 (and tp!2034514 tp!2034515))))

(assert (=> b!7235325 (= tp!2034492 e!4337813)))

(assert (= (and b!7235325 (is-Cons!70038 (exprs!7958 ct1!232))) b!7235609))

(declare-fun b!7235610 () Bool)

(declare-fun e!4337814 () Bool)

(declare-fun tp!2034516 () Bool)

(assert (=> b!7235610 (= e!4337814 (and tp_is_empty!46501 tp!2034516))))

(assert (=> b!7235316 (= tp!2034491 e!4337814)))

(assert (= (and b!7235316 (is-Cons!70039 (t!384214 s1!1971))) b!7235610))

(declare-fun b_lambda!277417 () Bool)

(assert (= b_lambda!277415 (or b!7235317 b_lambda!277417)))

(declare-fun bs!1903331 () Bool)

(declare-fun d!2247542 () Bool)

(assert (= bs!1903331 (and d!2247542 b!7235317)))

(assert (=> bs!1903331 (= (dynLambda!28572 lambda!440193 lt!2575380) (matchZipper!3428 (set.insert lt!2575380 (as set.empty (Set Context!14916))) (t!384214 s1!1971)))))

(declare-fun m!7906252 () Bool)

(assert (=> bs!1903331 m!7906252))

(assert (=> bs!1903331 m!7906252))

(declare-fun m!7906254 () Bool)

(assert (=> bs!1903331 m!7906254))

(assert (=> d!2247528 d!2247542))

(declare-fun b_lambda!277419 () Bool)

(assert (= b_lambda!277413 (or b!7235314 b_lambda!277419)))

(declare-fun bs!1903332 () Bool)

(declare-fun d!2247544 () Bool)

(assert (= bs!1903332 (and d!2247544 b!7235314)))

(declare-fun validRegex!9521 (Regex!18518) Bool)

(assert (=> bs!1903332 (= (dynLambda!28568 lambda!440192 (h!76486 (exprs!7958 ct2!328))) (validRegex!9521 (h!76486 (exprs!7958 ct2!328))))))

(declare-fun m!7906256 () Bool)

(assert (=> bs!1903332 m!7906256))

(assert (=> b!7235502 d!2247544))

(declare-fun b_lambda!277421 () Bool)

(assert (= b_lambda!277411 (or b!7235320 b_lambda!277421)))

(declare-fun bs!1903333 () Bool)

(declare-fun d!2247546 () Bool)

(assert (= bs!1903333 (and d!2247546 b!7235320)))

(assert (=> bs!1903333 (= (dynLambda!28569 lambda!440194 lt!2575259) (derivationStepZipperUp!2392 lt!2575259 (h!76487 s1!1971)))))

(assert (=> bs!1903333 m!7905816))

(assert (=> d!2247460 d!2247546))

(declare-fun b_lambda!277423 () Bool)

(assert (= b_lambda!277409 (or b!7235320 b_lambda!277423)))

(declare-fun bs!1903334 () Bool)

(declare-fun d!2247548 () Bool)

(assert (= bs!1903334 (and d!2247548 b!7235320)))

(assert (=> bs!1903334 (= (dynLambda!28569 lambda!440194 ct1!232) (derivationStepZipperUp!2392 ct1!232 (h!76487 s1!1971)))))

(assert (=> bs!1903334 m!7905834))

(assert (=> d!2247458 d!2247548))

(declare-fun b_lambda!277425 () Bool)

(assert (= b_lambda!277407 (or b!7235314 b_lambda!277425)))

(declare-fun bs!1903335 () Bool)

(declare-fun d!2247550 () Bool)

(assert (= bs!1903335 (and d!2247550 b!7235314)))

(assert (=> bs!1903335 (= (dynLambda!28568 lambda!440192 (h!76486 (exprs!7958 ct1!232))) (validRegex!9521 (h!76486 (exprs!7958 ct1!232))))))

(declare-fun m!7906258 () Bool)

(assert (=> bs!1903335 m!7906258))

(assert (=> b!7235468 d!2247550))

(push 1)

(assert (not b!7235497))

(assert (not d!2247504))

(assert (not b!7235553))

(assert (not b!7235573))

(assert (not d!2247430))

(assert (not b!7235470))

(assert (not b!7235476))

(assert (not d!2247452))

(assert (not b!7235405))

(assert (not bm!658716))

(assert (not d!2247472))

(assert (not d!2247508))

(assert (not bs!1903332))

(assert (not b!7235610))

(assert (not d!2247460))

(assert (not b!7235442))

(assert (not d!2247496))

(assert (not d!2247536))

(assert (not b!7235594))

(assert (not b!7235554))

(assert (not b!7235441))

(assert (not b!7235545))

(assert (not b!7235469))

(assert (not b!7235595))

(assert (not b!7235598))

(assert (not bs!1903333))

(assert (not bm!658736))

(assert (not b_lambda!277417))

(assert (not d!2247476))

(assert (not b!7235609))

(assert tp_is_empty!46501)

(assert (not bm!658746))

(assert (not bm!658712))

(assert (not b!7235603))

(assert (not bm!658734))

(assert (not bs!1903335))

(assert (not d!2247444))

(assert (not b!7235546))

(assert (not b_lambda!277419))

(assert (not b!7235557))

(assert (not d!2247464))

(assert (not b_lambda!277421))

(assert (not b_lambda!277423))

(assert (not b!7235528))

(assert (not d!2247458))

(assert (not d!2247512))

(assert (not b!7235503))

(assert (not d!2247492))

(assert (not bm!658738))

(assert (not d!2247540))

(assert (not bs!1903334))

(assert (not bs!1903331))

(assert (not d!2247514))

(assert (not bm!658733))

(assert (not d!2247528))

(assert (not b!7235558))

(assert (not b_lambda!277425))

(assert (not bm!658720))

(assert (not b!7235574))

(assert (not d!2247500))

(assert (not b!7235597))

(assert (not d!2247498))

(assert (not bm!658714))

(assert (not b!7235427))

(assert (not d!2247490))

(assert (not b!7235472))

(assert (not d!2247520))

(assert (not b!7235499))

(assert (not d!2247478))

(assert (not d!2247450))

(assert (not b!7235425))

(assert (not b!7235608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

