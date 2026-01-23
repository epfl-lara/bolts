; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!685638 () Bool)

(assert start!685638)

(declare-fun b!7064311 () Bool)

(assert (=> b!7064311 true))

(declare-fun b!7064306 () Bool)

(assert (=> b!7064306 true))

(declare-fun b!7064305 () Bool)

(assert (=> b!7064305 true))

(declare-fun bs!1879486 () Bool)

(declare-fun b!7064317 () Bool)

(assert (= bs!1879486 (and b!7064317 b!7064311)))

(declare-fun lambda!423171 () Int)

(declare-fun lambda!423167 () Int)

(assert (=> bs!1879486 (not (= lambda!423171 lambda!423167))))

(declare-fun bs!1879487 () Bool)

(declare-fun b!7064328 () Bool)

(assert (= bs!1879487 (and b!7064328 b!7064311)))

(declare-datatypes ((C!35486 0))(
  ( (C!35487 (val!27445 Int)) )
))
(declare-datatypes ((List!68350 0))(
  ( (Nil!68226) (Cons!68226 (h!74674 C!35486) (t!382131 List!68350)) )
))
(declare-datatypes ((tuple2!68218 0))(
  ( (tuple2!68219 (_1!37412 List!68350) (_2!37412 List!68350)) )
))
(declare-fun lt!2539260 () tuple2!68218)

(declare-fun lambda!423172 () Int)

(declare-fun s!7408 () List!68350)

(assert (=> bs!1879487 (= (= (_1!37412 lt!2539260) s!7408) (= lambda!423172 lambda!423167))))

(declare-fun bs!1879488 () Bool)

(assert (= bs!1879488 (and b!7064328 b!7064317)))

(assert (=> bs!1879488 (not (= lambda!423172 lambda!423171))))

(assert (=> b!7064328 true))

(declare-fun b!7064302 () Bool)

(declare-fun e!4246980 () Bool)

(declare-fun e!4246983 () Bool)

(assert (=> b!7064302 (= e!4246980 e!4246983)))

(declare-fun res!2884514 () Bool)

(assert (=> b!7064302 (=> res!2884514 e!4246983)))

(declare-datatypes ((Regex!17608 0))(
  ( (ElementMatch!17608 (c!1317027 C!35486)) (Concat!26453 (regOne!35728 Regex!17608) (regTwo!35728 Regex!17608)) (EmptyExpr!17608) (Star!17608 (reg!17937 Regex!17608)) (EmptyLang!17608) (Union!17608 (regOne!35729 Regex!17608) (regTwo!35729 Regex!17608)) )
))
(declare-datatypes ((List!68351 0))(
  ( (Nil!68227) (Cons!68227 (h!74675 Regex!17608) (t!382132 List!68351)) )
))
(declare-datatypes ((Context!13208 0))(
  ( (Context!13209 (exprs!7104 List!68351)) )
))
(declare-fun lt!2539252 () (Set Context!13208))

(declare-fun lt!2539218 () (Set Context!13208))

(assert (=> b!7064302 (= res!2884514 (not (= lt!2539252 lt!2539218)))))

(declare-fun lt!2539248 () Context!13208)

(assert (=> b!7064302 (= lt!2539252 (set.insert lt!2539248 (as set.empty (Set Context!13208))))))

(declare-fun lt!2539221 () Context!13208)

(declare-fun ct2!306 () Context!13208)

(declare-datatypes ((Unit!161900 0))(
  ( (Unit!161901) )
))
(declare-fun lt!2539235 () Unit!161900)

(declare-fun lambda!423169 () Int)

(declare-fun lemmaConcatPreservesForall!919 (List!68351 List!68351 Int) Unit!161900)

(assert (=> b!7064302 (= lt!2539235 (lemmaConcatPreservesForall!919 (exprs!7104 lt!2539221) (exprs!7104 ct2!306) lambda!423169))))

(declare-fun lt!2539230 () (Set Context!13208))

(declare-fun lt!2539238 () (Set Context!13208))

(declare-datatypes ((Option!16941 0))(
  ( (None!16940) (Some!16940 (v!53234 tuple2!68218)) )
))
(declare-fun call!641930 () Option!16941)

(declare-fun c!1317026 () Bool)

(declare-fun bm!641924 () Bool)

(declare-fun lt!2539209 () (Set Context!13208))

(declare-fun findConcatSeparationZippers!457 ((Set Context!13208) (Set Context!13208) List!68350 List!68350 List!68350) Option!16941)

(assert (=> bm!641924 (= call!641930 (findConcatSeparationZippers!457 (ite c!1317026 lt!2539230 lt!2539238) lt!2539209 Nil!68226 s!7408 s!7408))))

(declare-fun b!7064303 () Bool)

(declare-fun e!4246977 () Unit!161900)

(declare-fun Unit!161902 () Unit!161900)

(assert (=> b!7064303 (= e!4246977 Unit!161902)))

(assert (=> b!7064303 (= lt!2539238 (set.insert lt!2539221 (as set.empty (Set Context!13208))))))

(declare-fun lambda!423170 () Int)

(declare-fun lt!2539233 () Unit!161900)

(declare-fun lemmaFlatMapOnSingletonSet!2043 ((Set Context!13208) Context!13208 Int) Unit!161900)

(assert (=> b!7064303 (= lt!2539233 (lemmaFlatMapOnSingletonSet!2043 lt!2539238 lt!2539221 lambda!423170))))

(declare-fun flatMap!2534 ((Set Context!13208) Int) (Set Context!13208))

(declare-fun derivationStepZipperUp!2192 (Context!13208 C!35486) (Set Context!13208))

(assert (=> b!7064303 (= (flatMap!2534 lt!2539238 lambda!423170) (derivationStepZipperUp!2192 lt!2539221 (h!74674 s!7408)))))

(declare-fun lt!2539210 () (Set Context!13208))

(declare-fun lt!2539247 () Context!13208)

(declare-fun derivationStepZipperDown!2242 (Regex!17608 Context!13208 C!35486) (Set Context!13208))

(assert (=> b!7064303 (= lt!2539210 (derivationStepZipperDown!2242 (h!74675 (exprs!7104 lt!2539221)) lt!2539247 (h!74674 s!7408)))))

(declare-fun lt!2539242 () (Set Context!13208))

(assert (=> b!7064303 (= lt!2539242 (derivationStepZipperUp!2192 lt!2539247 (h!74674 s!7408)))))

(declare-fun lt!2539246 () List!68350)

(declare-fun tail!13764 (List!68350) List!68350)

(assert (=> b!7064303 (= lt!2539246 (tail!13764 (_1!37412 lt!2539260)))))

(declare-fun lt!2539253 () Unit!161900)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1621 ((Set Context!13208) (Set Context!13208) List!68350) Unit!161900)

(assert (=> b!7064303 (= lt!2539253 (lemmaZipperConcatMatchesSameAsBothZippers!1621 lt!2539210 lt!2539242 lt!2539246))))

(declare-fun res!2884519 () Bool)

(declare-fun matchZipper!3148 ((Set Context!13208) List!68350) Bool)

(assert (=> b!7064303 (= res!2884519 (matchZipper!3148 lt!2539210 lt!2539246))))

(declare-fun e!4246979 () Bool)

(assert (=> b!7064303 (=> res!2884519 e!4246979)))

(assert (=> b!7064303 (= (matchZipper!3148 (set.union lt!2539210 lt!2539242) lt!2539246) e!4246979)))

(declare-fun lt!2539250 () (Set Context!13208))

(declare-fun lt!2539220 () Unit!161900)

(assert (=> b!7064303 (= lt!2539220 (lemmaFlatMapOnSingletonSet!2043 lt!2539250 lt!2539247 lambda!423170))))

(assert (=> b!7064303 (= (flatMap!2534 lt!2539250 lambda!423170) (derivationStepZipperUp!2192 lt!2539247 (h!74674 s!7408)))))

(declare-fun lt!2539254 () Unit!161900)

(declare-fun call!641931 () Unit!161900)

(assert (=> b!7064303 (= lt!2539254 call!641931)))

(declare-fun call!641929 () Bool)

(assert (=> b!7064303 call!641929))

(declare-fun b!7064304 () Bool)

(declare-fun e!4246993 () Bool)

(declare-fun e!4246976 () Bool)

(assert (=> b!7064304 (= e!4246993 e!4246976)))

(declare-fun res!2884524 () Bool)

(assert (=> b!7064304 (=> res!2884524 e!4246976)))

(declare-fun lt!2539228 () (Set Context!13208))

(assert (=> b!7064304 (= res!2884524 (not (matchZipper!3148 lt!2539228 (t!382131 s!7408))))))

(declare-fun lt!2539241 () Unit!161900)

(declare-fun lt!2539231 () List!68351)

(assert (=> b!7064304 (= lt!2539241 (lemmaConcatPreservesForall!919 lt!2539231 (exprs!7104 ct2!306) lambda!423169))))

(declare-fun setRes!50070 () Bool)

(declare-fun e!4246985 () Bool)

(declare-fun setNonEmpty!50070 () Bool)

(declare-fun setElem!50070 () Context!13208)

(declare-fun tp!1941385 () Bool)

(declare-fun inv!86880 (Context!13208) Bool)

(assert (=> setNonEmpty!50070 (= setRes!50070 (and tp!1941385 (inv!86880 setElem!50070) e!4246985))))

(declare-fun z1!570 () (Set Context!13208))

(declare-fun setRest!50070 () (Set Context!13208))

(assert (=> setNonEmpty!50070 (= z1!570 (set.union (set.insert setElem!50070 (as set.empty (Set Context!13208))) setRest!50070))))

(declare-fun e!4246991 () Bool)

(assert (=> b!7064305 (= e!4246983 e!4246991)))

(declare-fun res!2884513 () Bool)

(assert (=> b!7064305 (=> res!2884513 e!4246991)))

(declare-fun lt!2539219 () (Set Context!13208))

(declare-fun derivationStepZipper!3058 ((Set Context!13208) C!35486) (Set Context!13208))

(assert (=> b!7064305 (= res!2884513 (not (= (derivationStepZipper!3058 lt!2539252 (h!74674 s!7408)) lt!2539219)))))

(assert (=> b!7064305 (= (flatMap!2534 lt!2539252 lambda!423170) (derivationStepZipperUp!2192 lt!2539248 (h!74674 s!7408)))))

(declare-fun lt!2539268 () Unit!161900)

(assert (=> b!7064305 (= lt!2539268 (lemmaFlatMapOnSingletonSet!2043 lt!2539252 lt!2539248 lambda!423170))))

(assert (=> b!7064305 (= lt!2539219 (derivationStepZipperUp!2192 lt!2539248 (h!74674 s!7408)))))

(declare-fun lt!2539237 () Unit!161900)

(assert (=> b!7064305 (= lt!2539237 (lemmaConcatPreservesForall!919 (exprs!7104 lt!2539221) (exprs!7104 ct2!306) lambda!423169))))

(declare-fun e!4246974 () Bool)

(assert (=> b!7064306 (= e!4246974 e!4246980)))

(declare-fun res!2884512 () Bool)

(assert (=> b!7064306 (=> res!2884512 e!4246980)))

(declare-fun lt!2539225 () Context!13208)

(assert (=> b!7064306 (= res!2884512 (or (not (= lt!2539248 lt!2539225)) (not (set.member lt!2539221 z1!570))))))

(declare-fun ++!15713 (List!68351 List!68351) List!68351)

(assert (=> b!7064306 (= lt!2539248 (Context!13209 (++!15713 (exprs!7104 lt!2539221) (exprs!7104 ct2!306))))))

(declare-fun lt!2539212 () Unit!161900)

(assert (=> b!7064306 (= lt!2539212 (lemmaConcatPreservesForall!919 (exprs!7104 lt!2539221) (exprs!7104 ct2!306) lambda!423169))))

(declare-fun lambda!423168 () Int)

(declare-fun mapPost2!437 ((Set Context!13208) Int Context!13208) Context!13208)

(assert (=> b!7064306 (= lt!2539221 (mapPost2!437 z1!570 lambda!423168 lt!2539225))))

(declare-fun b!7064308 () Bool)

(declare-fun e!4246982 () Bool)

(assert (=> b!7064308 (= e!4246976 e!4246982)))

(declare-fun res!2884517 () Bool)

(assert (=> b!7064308 (=> res!2884517 e!4246982)))

(declare-fun lt!2539224 () (Set Context!13208))

(assert (=> b!7064308 (= res!2884517 (not (= (derivationStepZipper!3058 lt!2539224 (h!74674 s!7408)) lt!2539228)))))

(declare-fun lt!2539204 () Unit!161900)

(assert (=> b!7064308 (= lt!2539204 (lemmaConcatPreservesForall!919 lt!2539231 (exprs!7104 ct2!306) lambda!423169))))

(declare-fun lt!2539266 () Unit!161900)

(assert (=> b!7064308 (= lt!2539266 (lemmaConcatPreservesForall!919 lt!2539231 (exprs!7104 ct2!306) lambda!423169))))

(declare-fun lt!2539217 () Context!13208)

(assert (=> b!7064308 (= (flatMap!2534 lt!2539224 lambda!423170) (derivationStepZipperUp!2192 lt!2539217 (h!74674 s!7408)))))

(declare-fun lt!2539214 () Unit!161900)

(assert (=> b!7064308 (= lt!2539214 (lemmaFlatMapOnSingletonSet!2043 lt!2539224 lt!2539217 lambda!423170))))

(assert (=> b!7064308 (= lt!2539224 (set.insert lt!2539217 (as set.empty (Set Context!13208))))))

(declare-fun lt!2539256 () Unit!161900)

(assert (=> b!7064308 (= lt!2539256 (lemmaConcatPreservesForall!919 lt!2539231 (exprs!7104 ct2!306) lambda!423169))))

(declare-fun lt!2539259 () Unit!161900)

(assert (=> b!7064308 (= lt!2539259 (lemmaConcatPreservesForall!919 lt!2539231 (exprs!7104 ct2!306) lambda!423169))))

(declare-fun b!7064309 () Bool)

(declare-fun res!2884521 () Bool)

(assert (=> b!7064309 (=> res!2884521 e!4246991)))

(assert (=> b!7064309 (= res!2884521 (not (is-Cons!68227 (exprs!7104 lt!2539221))))))

(declare-fun b!7064310 () Bool)

(declare-fun e!4246984 () Bool)

(assert (=> b!7064310 (= e!4246991 e!4246984)))

(declare-fun res!2884525 () Bool)

(assert (=> b!7064310 (=> res!2884525 e!4246984)))

(declare-fun nullable!7291 (Regex!17608) Bool)

(assert (=> b!7064310 (= res!2884525 (not (nullable!7291 (h!74675 (exprs!7104 lt!2539221)))))))

(assert (=> b!7064310 (= lt!2539247 (Context!13209 lt!2539231))))

(declare-fun tail!13765 (List!68351) List!68351)

(assert (=> b!7064310 (= lt!2539231 (tail!13765 (exprs!7104 lt!2539221)))))

(declare-fun e!4246981 () Bool)

(assert (=> b!7064311 (= e!4246981 (not e!4246974))))

(declare-fun res!2884515 () Bool)

(assert (=> b!7064311 (=> res!2884515 e!4246974)))

(assert (=> b!7064311 (= res!2884515 (not (matchZipper!3148 lt!2539218 s!7408)))))

(assert (=> b!7064311 (= lt!2539218 (set.insert lt!2539225 (as set.empty (Set Context!13208))))))

(declare-fun lt!2539216 () (Set Context!13208))

(declare-fun getWitness!1689 ((Set Context!13208) Int) Context!13208)

(assert (=> b!7064311 (= lt!2539225 (getWitness!1689 lt!2539216 lambda!423167))))

(declare-datatypes ((List!68352 0))(
  ( (Nil!68228) (Cons!68228 (h!74676 Context!13208) (t!382133 List!68352)) )
))
(declare-fun lt!2539203 () List!68352)

(declare-fun exists!3626 (List!68352 Int) Bool)

(assert (=> b!7064311 (exists!3626 lt!2539203 lambda!423167)))

(declare-fun lt!2539211 () Unit!161900)

(declare-fun lemmaZipperMatchesExistsMatchingContext!529 (List!68352 List!68350) Unit!161900)

(assert (=> b!7064311 (= lt!2539211 (lemmaZipperMatchesExistsMatchingContext!529 lt!2539203 s!7408))))

(declare-fun toList!10949 ((Set Context!13208)) List!68352)

(assert (=> b!7064311 (= lt!2539203 (toList!10949 lt!2539216))))

(declare-fun b!7064312 () Bool)

(declare-fun e!4246978 () Bool)

(assert (=> b!7064312 (= e!4246978 (not (matchZipper!3148 lt!2539228 (t!382131 s!7408))))))

(declare-fun lt!2539213 () Unit!161900)

(assert (=> b!7064312 (= lt!2539213 (lemmaConcatPreservesForall!919 lt!2539231 (exprs!7104 ct2!306) lambda!423169))))

(declare-fun bm!641925 () Bool)

(declare-fun isDefined!13642 (Option!16941) Bool)

(assert (=> bm!641925 (= call!641929 (isDefined!13642 call!641930))))

(declare-fun b!7064313 () Bool)

(declare-fun e!4246990 () Bool)

(declare-fun tp!1941387 () Bool)

(assert (=> b!7064313 (= e!4246990 tp!1941387)))

(declare-fun b!7064314 () Bool)

(declare-fun res!2884522 () Bool)

(declare-fun e!4246986 () Bool)

(assert (=> b!7064314 (=> res!2884522 e!4246986)))

(declare-fun lt!2539264 () Int)

(declare-fun zipperDepthTotal!573 (List!68352) Int)

(assert (=> b!7064314 (= res!2884522 (>= (zipperDepthTotal!573 (Cons!68228 lt!2539247 Nil!68228)) lt!2539264))))

(declare-fun b!7064315 () Bool)

(declare-fun e!4246987 () Bool)

(assert (=> b!7064315 (= e!4246987 e!4246986)))

(declare-fun res!2884509 () Bool)

(assert (=> b!7064315 (=> res!2884509 e!4246986)))

(declare-fun lt!2539223 () Int)

(declare-fun contextDepthTotal!544 (Context!13208) Int)

(assert (=> b!7064315 (= res!2884509 (<= lt!2539223 (contextDepthTotal!544 lt!2539247)))))

(assert (=> b!7064315 (<= lt!2539223 lt!2539264)))

(declare-fun lt!2539257 () List!68352)

(assert (=> b!7064315 (= lt!2539264 (zipperDepthTotal!573 lt!2539257))))

(assert (=> b!7064315 (= lt!2539223 (contextDepthTotal!544 lt!2539221))))

(declare-fun lt!2539234 () Unit!161900)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!111 (List!68352 Context!13208) Unit!161900)

(assert (=> b!7064315 (= lt!2539234 (lemmaTotalDepthZipperLargerThanOfAnyContext!111 lt!2539257 lt!2539221))))

(assert (=> b!7064315 (= lt!2539257 (toList!10949 z1!570))))

(declare-fun lt!2539249 () Unit!161900)

(assert (=> b!7064315 (= lt!2539249 (lemmaConcatPreservesForall!919 lt!2539231 (exprs!7104 ct2!306) lambda!423169))))

(declare-fun lt!2539239 () Unit!161900)

(assert (=> b!7064315 (= lt!2539239 (lemmaConcatPreservesForall!919 lt!2539231 (exprs!7104 ct2!306) lambda!423169))))

(declare-fun lt!2539267 () Unit!161900)

(assert (=> b!7064315 (= lt!2539267 (lemmaConcatPreservesForall!919 lt!2539231 (exprs!7104 ct2!306) lambda!423169))))

(assert (=> b!7064315 (= (flatMap!2534 lt!2539250 lambda!423170) (derivationStepZipperUp!2192 lt!2539247 (h!74674 s!7408)))))

(declare-fun lt!2539236 () Unit!161900)

(assert (=> b!7064315 (= lt!2539236 (lemmaFlatMapOnSingletonSet!2043 lt!2539250 lt!2539247 lambda!423170))))

(declare-fun map!15945 ((Set Context!13208) Int) (Set Context!13208))

(assert (=> b!7064315 (= (map!15945 lt!2539250 lambda!423168) (set.insert (Context!13209 (++!15713 lt!2539231 (exprs!7104 ct2!306))) (as set.empty (Set Context!13208))))))

(declare-fun lt!2539208 () Unit!161900)

(assert (=> b!7064315 (= lt!2539208 (lemmaConcatPreservesForall!919 lt!2539231 (exprs!7104 ct2!306) lambda!423169))))

(declare-fun lt!2539262 () Unit!161900)

(declare-fun lemmaMapOnSingletonSet!425 ((Set Context!13208) Context!13208 Int) Unit!161900)

(assert (=> b!7064315 (= lt!2539262 (lemmaMapOnSingletonSet!425 lt!2539250 lt!2539247 lambda!423168))))

(assert (=> b!7064315 (= lt!2539250 (set.insert lt!2539247 (as set.empty (Set Context!13208))))))

(declare-fun b!7064316 () Bool)

(declare-fun res!2884505 () Bool)

(assert (=> b!7064316 (=> res!2884505 e!4246974)))

(assert (=> b!7064316 (= res!2884505 (not (set.member lt!2539225 lt!2539216)))))

(declare-fun bm!641926 () Bool)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!57 ((Set Context!13208) (Set Context!13208) List!68350 List!68350 List!68350 List!68350 List!68350) Unit!161900)

(assert (=> bm!641926 (= call!641931 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!57 (ite c!1317026 lt!2539230 lt!2539238) lt!2539209 (_1!37412 lt!2539260) (_2!37412 lt!2539260) s!7408 Nil!68226 s!7408))))

(declare-fun Unit!161903 () Unit!161900)

(assert (=> b!7064317 (= e!4246977 Unit!161903)))

(declare-fun lt!2539240 () Context!13208)

(assert (=> b!7064317 (= lt!2539240 (getWitness!1689 lt!2539250 lambda!423171))))

(declare-fun lt!2539244 () Unit!161900)

(declare-fun lemmaContainsThenExists!140 ((Set Context!13208) Context!13208 Int) Unit!161900)

(assert (=> b!7064317 (= lt!2539244 (lemmaContainsThenExists!140 lt!2539250 lt!2539247 lambda!423171))))

(declare-fun exists!3627 ((Set Context!13208) Int) Bool)

(assert (=> b!7064317 (exists!3627 lt!2539250 lambda!423171)))

(assert (=> b!7064317 (= lt!2539230 (set.insert lt!2539221 (as set.empty (Set Context!13208))))))

(declare-fun lt!2539207 () Unit!161900)

(assert (=> b!7064317 (= lt!2539207 (lemmaContainsThenExists!140 lt!2539230 lt!2539221 lambda!423171))))

(assert (=> b!7064317 (exists!3627 lt!2539230 lambda!423171)))

(declare-fun lt!2539222 () Unit!161900)

(assert (=> b!7064317 (= lt!2539222 call!641931)))

(assert (=> b!7064317 call!641929))

(declare-fun b!7064318 () Bool)

(declare-fun e!4246988 () Bool)

(declare-fun tp_is_empty!44441 () Bool)

(declare-fun tp!1941388 () Bool)

(assert (=> b!7064318 (= e!4246988 (and tp_is_empty!44441 tp!1941388))))

(declare-fun b!7064319 () Bool)

(declare-fun res!2884526 () Bool)

(assert (=> b!7064319 (=> res!2884526 e!4246993)))

(declare-fun lt!2539227 () Bool)

(assert (=> b!7064319 (= res!2884526 (not lt!2539227))))

(declare-fun b!7064320 () Bool)

(declare-fun res!2884508 () Bool)

(declare-fun e!4246975 () Bool)

(assert (=> b!7064320 (=> res!2884508 e!4246975)))

(declare-fun ++!15714 (List!68350 List!68350) List!68350)

(assert (=> b!7064320 (= res!2884508 (not (= (++!15714 (_1!37412 lt!2539260) (_2!37412 lt!2539260)) s!7408)))))

(declare-fun b!7064321 () Bool)

(assert (=> b!7064321 (= e!4246986 e!4246975)))

(declare-fun res!2884527 () Bool)

(assert (=> b!7064321 (=> res!2884527 e!4246975)))

(assert (=> b!7064321 (= res!2884527 (not (matchZipper!3148 lt!2539250 (_1!37412 lt!2539260))))))

(declare-fun lt!2539255 () Option!16941)

(declare-fun get!23896 (Option!16941) tuple2!68218)

(assert (=> b!7064321 (= lt!2539260 (get!23896 lt!2539255))))

(assert (=> b!7064321 (isDefined!13642 lt!2539255)))

(assert (=> b!7064321 (= lt!2539255 (findConcatSeparationZippers!457 lt!2539250 lt!2539209 Nil!68226 s!7408 s!7408))))

(assert (=> b!7064321 (= lt!2539209 (set.insert ct2!306 (as set.empty (Set Context!13208))))))

(declare-fun lt!2539232 () Unit!161900)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!445 ((Set Context!13208) Context!13208 List!68350) Unit!161900)

(assert (=> b!7064321 (= lt!2539232 (lemmaConcatZipperMatchesStringThenFindConcatDefined!445 lt!2539250 ct2!306 s!7408))))

(declare-fun b!7064322 () Bool)

(declare-fun e!4246992 () Bool)

(assert (=> b!7064322 (= e!4246992 (matchZipper!3148 lt!2539228 (t!382131 s!7408)))))

(declare-fun b!7064323 () Bool)

(declare-fun tp!1941386 () Bool)

(assert (=> b!7064323 (= e!4246985 tp!1941386)))

(declare-fun b!7064324 () Bool)

(declare-fun res!2884507 () Bool)

(assert (=> b!7064324 (=> res!2884507 e!4246991)))

(declare-fun isEmpty!39808 (List!68351) Bool)

(assert (=> b!7064324 (= res!2884507 (isEmpty!39808 (exprs!7104 lt!2539221)))))

(declare-fun b!7064325 () Bool)

(assert (=> b!7064325 (= e!4246982 e!4246987)))

(declare-fun res!2884520 () Bool)

(assert (=> b!7064325 (=> res!2884520 e!4246987)))

(assert (=> b!7064325 (= res!2884520 (not (matchZipper!3148 lt!2539224 s!7408)))))

(declare-fun lt!2539206 () Unit!161900)

(assert (=> b!7064325 (= lt!2539206 (lemmaConcatPreservesForall!919 lt!2539231 (exprs!7104 ct2!306) lambda!423169))))

(declare-fun b!7064326 () Bool)

(declare-fun e!4246989 () Bool)

(assert (=> b!7064326 (= e!4246984 e!4246989)))

(declare-fun res!2884511 () Bool)

(assert (=> b!7064326 (=> res!2884511 e!4246989)))

(declare-fun lt!2539263 () (Set Context!13208))

(assert (=> b!7064326 (= res!2884511 (not (= lt!2539219 lt!2539263)))))

(declare-fun lt!2539258 () (Set Context!13208))

(assert (=> b!7064326 (= lt!2539263 (set.union lt!2539258 lt!2539228))))

(assert (=> b!7064326 (= lt!2539228 (derivationStepZipperUp!2192 lt!2539217 (h!74674 s!7408)))))

(assert (=> b!7064326 (= lt!2539258 (derivationStepZipperDown!2242 (h!74675 (exprs!7104 lt!2539221)) lt!2539217 (h!74674 s!7408)))))

(assert (=> b!7064326 (= lt!2539217 (Context!13209 (++!15713 lt!2539231 (exprs!7104 ct2!306))))))

(declare-fun lt!2539245 () Unit!161900)

(assert (=> b!7064326 (= lt!2539245 (lemmaConcatPreservesForall!919 lt!2539231 (exprs!7104 ct2!306) lambda!423169))))

(declare-fun lt!2539205 () Unit!161900)

(assert (=> b!7064326 (= lt!2539205 (lemmaConcatPreservesForall!919 lt!2539231 (exprs!7104 ct2!306) lambda!423169))))

(declare-fun b!7064327 () Bool)

(assert (=> b!7064327 (= e!4246989 e!4246993)))

(declare-fun res!2884523 () Bool)

(assert (=> b!7064327 (=> res!2884523 e!4246993)))

(assert (=> b!7064327 (= res!2884523 e!4246978)))

(declare-fun res!2884516 () Bool)

(assert (=> b!7064327 (=> (not res!2884516) (not e!4246978))))

(declare-fun lt!2539261 () Bool)

(assert (=> b!7064327 (= res!2884516 (not (= lt!2539227 lt!2539261)))))

(assert (=> b!7064327 (= lt!2539227 (matchZipper!3148 lt!2539219 (t!382131 s!7408)))))

(declare-fun lt!2539265 () Unit!161900)

(assert (=> b!7064327 (= lt!2539265 (lemmaConcatPreservesForall!919 lt!2539231 (exprs!7104 ct2!306) lambda!423169))))

(assert (=> b!7064327 (= (matchZipper!3148 lt!2539263 (t!382131 s!7408)) e!4246992)))

(declare-fun res!2884506 () Bool)

(assert (=> b!7064327 (=> res!2884506 e!4246992)))

(assert (=> b!7064327 (= res!2884506 lt!2539261)))

(assert (=> b!7064327 (= lt!2539261 (matchZipper!3148 lt!2539258 (t!382131 s!7408)))))

(declare-fun lt!2539243 () Unit!161900)

(assert (=> b!7064327 (= lt!2539243 (lemmaZipperConcatMatchesSameAsBothZippers!1621 lt!2539258 lt!2539228 (t!382131 s!7408)))))

(declare-fun lt!2539229 () Unit!161900)

(assert (=> b!7064327 (= lt!2539229 (lemmaConcatPreservesForall!919 lt!2539231 (exprs!7104 ct2!306) lambda!423169))))

(declare-fun lt!2539226 () Unit!161900)

(assert (=> b!7064327 (= lt!2539226 (lemmaConcatPreservesForall!919 lt!2539231 (exprs!7104 ct2!306) lambda!423169))))

(declare-fun b!7064307 () Bool)

(declare-fun res!2884528 () Bool)

(assert (=> b!7064307 (=> res!2884528 e!4246975)))

(assert (=> b!7064307 (= res!2884528 (not (matchZipper!3148 lt!2539209 (_2!37412 lt!2539260))))))

(declare-fun res!2884510 () Bool)

(assert (=> start!685638 (=> (not res!2884510) (not e!4246981))))

(assert (=> start!685638 (= res!2884510 (matchZipper!3148 lt!2539216 s!7408))))

(declare-fun appendTo!729 ((Set Context!13208) Context!13208) (Set Context!13208))

(assert (=> start!685638 (= lt!2539216 (appendTo!729 z1!570 ct2!306))))

(assert (=> start!685638 e!4246981))

(declare-fun condSetEmpty!50070 () Bool)

(assert (=> start!685638 (= condSetEmpty!50070 (= z1!570 (as set.empty (Set Context!13208))))))

(assert (=> start!685638 setRes!50070))

(assert (=> start!685638 (and (inv!86880 ct2!306) e!4246990)))

(assert (=> start!685638 e!4246988))

(assert (=> b!7064328 (= e!4246975 (exists!3626 lt!2539257 lambda!423172))))

(assert (=> b!7064328 (exists!3627 z1!570 lambda!423172)))

(declare-fun lt!2539251 () Unit!161900)

(assert (=> b!7064328 (= lt!2539251 (lemmaContainsThenExists!140 z1!570 lt!2539221 lambda!423172))))

(declare-fun lt!2539215 () Unit!161900)

(assert (=> b!7064328 (= lt!2539215 e!4246977)))

(declare-fun isEmpty!39809 (List!68350) Bool)

(assert (=> b!7064328 (= c!1317026 (isEmpty!39809 (_1!37412 lt!2539260)))))

(declare-fun b!7064329 () Bool)

(declare-fun res!2884518 () Bool)

(assert (=> b!7064329 (=> (not res!2884518) (not e!4246981))))

(assert (=> b!7064329 (= res!2884518 (is-Cons!68226 s!7408))))

(declare-fun setIsEmpty!50070 () Bool)

(assert (=> setIsEmpty!50070 setRes!50070))

(declare-fun b!7064330 () Bool)

(assert (=> b!7064330 (= e!4246979 (matchZipper!3148 lt!2539242 lt!2539246))))

(assert (= (and start!685638 res!2884510) b!7064329))

(assert (= (and b!7064329 res!2884518) b!7064311))

(assert (= (and b!7064311 (not res!2884515)) b!7064316))

(assert (= (and b!7064316 (not res!2884505)) b!7064306))

(assert (= (and b!7064306 (not res!2884512)) b!7064302))

(assert (= (and b!7064302 (not res!2884514)) b!7064305))

(assert (= (and b!7064305 (not res!2884513)) b!7064309))

(assert (= (and b!7064309 (not res!2884521)) b!7064324))

(assert (= (and b!7064324 (not res!2884507)) b!7064310))

(assert (= (and b!7064310 (not res!2884525)) b!7064326))

(assert (= (and b!7064326 (not res!2884511)) b!7064327))

(assert (= (and b!7064327 (not res!2884506)) b!7064322))

(assert (= (and b!7064327 res!2884516) b!7064312))

(assert (= (and b!7064327 (not res!2884523)) b!7064319))

(assert (= (and b!7064319 (not res!2884526)) b!7064304))

(assert (= (and b!7064304 (not res!2884524)) b!7064308))

(assert (= (and b!7064308 (not res!2884517)) b!7064325))

(assert (= (and b!7064325 (not res!2884520)) b!7064315))

(assert (= (and b!7064315 (not res!2884509)) b!7064314))

(assert (= (and b!7064314 (not res!2884522)) b!7064321))

(assert (= (and b!7064321 (not res!2884527)) b!7064307))

(assert (= (and b!7064307 (not res!2884528)) b!7064320))

(assert (= (and b!7064320 (not res!2884508)) b!7064328))

(assert (= (and b!7064328 c!1317026) b!7064317))

(assert (= (and b!7064328 (not c!1317026)) b!7064303))

(assert (= (and b!7064303 (not res!2884519)) b!7064330))

(assert (= (or b!7064317 b!7064303) bm!641926))

(assert (= (or b!7064317 b!7064303) bm!641924))

(assert (= (or b!7064317 b!7064303) bm!641925))

(assert (= (and start!685638 condSetEmpty!50070) setIsEmpty!50070))

(assert (= (and start!685638 (not condSetEmpty!50070)) setNonEmpty!50070))

(assert (= setNonEmpty!50070 b!7064323))

(assert (= start!685638 b!7064313))

(assert (= (and start!685638 (is-Cons!68226 s!7408)) b!7064318))

(declare-fun m!7786380 () Bool)

(assert (=> b!7064305 m!7786380))

(declare-fun m!7786382 () Bool)

(assert (=> b!7064305 m!7786382))

(declare-fun m!7786384 () Bool)

(assert (=> b!7064305 m!7786384))

(declare-fun m!7786386 () Bool)

(assert (=> b!7064305 m!7786386))

(declare-fun m!7786388 () Bool)

(assert (=> b!7064305 m!7786388))

(declare-fun m!7786390 () Bool)

(assert (=> b!7064326 m!7786390))

(declare-fun m!7786392 () Bool)

(assert (=> b!7064326 m!7786392))

(declare-fun m!7786394 () Bool)

(assert (=> b!7064326 m!7786394))

(declare-fun m!7786396 () Bool)

(assert (=> b!7064326 m!7786396))

(assert (=> b!7064326 m!7786394))

(declare-fun m!7786398 () Bool)

(assert (=> b!7064307 m!7786398))

(declare-fun m!7786400 () Bool)

(assert (=> b!7064321 m!7786400))

(declare-fun m!7786402 () Bool)

(assert (=> b!7064321 m!7786402))

(declare-fun m!7786404 () Bool)

(assert (=> b!7064321 m!7786404))

(declare-fun m!7786406 () Bool)

(assert (=> b!7064321 m!7786406))

(declare-fun m!7786408 () Bool)

(assert (=> b!7064321 m!7786408))

(declare-fun m!7786410 () Bool)

(assert (=> b!7064321 m!7786410))

(declare-fun m!7786412 () Bool)

(assert (=> b!7064327 m!7786412))

(assert (=> b!7064327 m!7786394))

(assert (=> b!7064327 m!7786394))

(assert (=> b!7064327 m!7786394))

(declare-fun m!7786414 () Bool)

(assert (=> b!7064327 m!7786414))

(declare-fun m!7786416 () Bool)

(assert (=> b!7064327 m!7786416))

(declare-fun m!7786418 () Bool)

(assert (=> b!7064327 m!7786418))

(declare-fun m!7786420 () Bool)

(assert (=> b!7064306 m!7786420))

(declare-fun m!7786422 () Bool)

(assert (=> b!7064306 m!7786422))

(assert (=> b!7064306 m!7786386))

(declare-fun m!7786424 () Bool)

(assert (=> b!7064306 m!7786424))

(declare-fun m!7786426 () Bool)

(assert (=> b!7064324 m!7786426))

(declare-fun m!7786428 () Bool)

(assert (=> start!685638 m!7786428))

(declare-fun m!7786430 () Bool)

(assert (=> start!685638 m!7786430))

(declare-fun m!7786432 () Bool)

(assert (=> start!685638 m!7786432))

(declare-fun m!7786434 () Bool)

(assert (=> b!7064317 m!7786434))

(declare-fun m!7786436 () Bool)

(assert (=> b!7064317 m!7786436))

(declare-fun m!7786438 () Bool)

(assert (=> b!7064317 m!7786438))

(declare-fun m!7786440 () Bool)

(assert (=> b!7064317 m!7786440))

(declare-fun m!7786442 () Bool)

(assert (=> b!7064317 m!7786442))

(declare-fun m!7786444 () Bool)

(assert (=> b!7064317 m!7786444))

(declare-fun m!7786446 () Bool)

(assert (=> b!7064328 m!7786446))

(declare-fun m!7786448 () Bool)

(assert (=> b!7064328 m!7786448))

(declare-fun m!7786450 () Bool)

(assert (=> b!7064328 m!7786450))

(declare-fun m!7786452 () Bool)

(assert (=> b!7064328 m!7786452))

(declare-fun m!7786454 () Bool)

(assert (=> b!7064315 m!7786454))

(declare-fun m!7786456 () Bool)

(assert (=> b!7064315 m!7786456))

(assert (=> b!7064315 m!7786394))

(declare-fun m!7786458 () Bool)

(assert (=> b!7064315 m!7786458))

(assert (=> b!7064315 m!7786394))

(declare-fun m!7786460 () Bool)

(assert (=> b!7064315 m!7786460))

(declare-fun m!7786462 () Bool)

(assert (=> b!7064315 m!7786462))

(declare-fun m!7786464 () Bool)

(assert (=> b!7064315 m!7786464))

(declare-fun m!7786466 () Bool)

(assert (=> b!7064315 m!7786466))

(assert (=> b!7064315 m!7786390))

(declare-fun m!7786468 () Bool)

(assert (=> b!7064315 m!7786468))

(assert (=> b!7064315 m!7786394))

(declare-fun m!7786470 () Bool)

(assert (=> b!7064315 m!7786470))

(assert (=> b!7064315 m!7786394))

(declare-fun m!7786472 () Bool)

(assert (=> b!7064315 m!7786472))

(declare-fun m!7786474 () Bool)

(assert (=> b!7064315 m!7786474))

(declare-fun m!7786476 () Bool)

(assert (=> b!7064315 m!7786476))

(declare-fun m!7786478 () Bool)

(assert (=> bm!641924 m!7786478))

(declare-fun m!7786480 () Bool)

(assert (=> b!7064302 m!7786480))

(assert (=> b!7064302 m!7786386))

(declare-fun m!7786482 () Bool)

(assert (=> b!7064311 m!7786482))

(declare-fun m!7786484 () Bool)

(assert (=> b!7064311 m!7786484))

(declare-fun m!7786486 () Bool)

(assert (=> b!7064311 m!7786486))

(declare-fun m!7786488 () Bool)

(assert (=> b!7064311 m!7786488))

(declare-fun m!7786490 () Bool)

(assert (=> b!7064311 m!7786490))

(declare-fun m!7786492 () Bool)

(assert (=> b!7064311 m!7786492))

(declare-fun m!7786494 () Bool)

(assert (=> b!7064308 m!7786494))

(assert (=> b!7064308 m!7786394))

(assert (=> b!7064308 m!7786394))

(declare-fun m!7786496 () Bool)

(assert (=> b!7064308 m!7786496))

(assert (=> b!7064308 m!7786394))

(assert (=> b!7064308 m!7786394))

(declare-fun m!7786498 () Bool)

(assert (=> b!7064308 m!7786498))

(declare-fun m!7786500 () Bool)

(assert (=> b!7064308 m!7786500))

(assert (=> b!7064308 m!7786396))

(declare-fun m!7786502 () Bool)

(assert (=> setNonEmpty!50070 m!7786502))

(declare-fun m!7786504 () Bool)

(assert (=> b!7064325 m!7786504))

(assert (=> b!7064325 m!7786394))

(declare-fun m!7786506 () Bool)

(assert (=> b!7064322 m!7786506))

(declare-fun m!7786508 () Bool)

(assert (=> b!7064320 m!7786508))

(declare-fun m!7786510 () Bool)

(assert (=> b!7064330 m!7786510))

(declare-fun m!7786512 () Bool)

(assert (=> bm!641926 m!7786512))

(declare-fun m!7786514 () Bool)

(assert (=> bm!641925 m!7786514))

(declare-fun m!7786516 () Bool)

(assert (=> b!7064316 m!7786516))

(declare-fun m!7786518 () Bool)

(assert (=> b!7064314 m!7786518))

(assert (=> b!7064304 m!7786506))

(assert (=> b!7064304 m!7786394))

(declare-fun m!7786520 () Bool)

(assert (=> b!7064303 m!7786520))

(declare-fun m!7786522 () Bool)

(assert (=> b!7064303 m!7786522))

(assert (=> b!7064303 m!7786470))

(declare-fun m!7786524 () Bool)

(assert (=> b!7064303 m!7786524))

(declare-fun m!7786526 () Bool)

(assert (=> b!7064303 m!7786526))

(assert (=> b!7064303 m!7786462))

(assert (=> b!7064303 m!7786466))

(declare-fun m!7786528 () Bool)

(assert (=> b!7064303 m!7786528))

(declare-fun m!7786530 () Bool)

(assert (=> b!7064303 m!7786530))

(declare-fun m!7786532 () Bool)

(assert (=> b!7064303 m!7786532))

(declare-fun m!7786534 () Bool)

(assert (=> b!7064303 m!7786534))

(assert (=> b!7064303 m!7786444))

(declare-fun m!7786536 () Bool)

(assert (=> b!7064310 m!7786536))

(declare-fun m!7786538 () Bool)

(assert (=> b!7064310 m!7786538))

(assert (=> b!7064312 m!7786506))

(assert (=> b!7064312 m!7786394))

(push 1)

(assert (not b!7064313))

(assert (not b!7064320))

(assert (not start!685638))

(assert (not b!7064324))

(assert (not b!7064308))

(assert (not b!7064311))

(assert (not b!7064326))

(assert (not b!7064328))

(assert (not b!7064325))

(assert (not b!7064306))

(assert (not b!7064330))

(assert (not bm!641925))

(assert (not b!7064303))

(assert (not b!7064323))

(assert (not b!7064302))

(assert (not b!7064312))

(assert (not b!7064305))

(assert (not b!7064327))

(assert (not setNonEmpty!50070))

(assert (not b!7064317))

(assert (not b!7064314))

(assert (not b!7064322))

(assert (not bm!641924))

(assert (not bm!641926))

(assert tp_is_empty!44441)

(assert (not b!7064304))

(assert (not b!7064318))

(assert (not b!7064321))

(assert (not b!7064307))

(assert (not b!7064315))

(assert (not b!7064310))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2208766 () Bool)

(declare-fun dynLambda!27714 (Int Context!13208) Context!13208)

(assert (=> d!2208766 (= (map!15945 lt!2539250 lambda!423168) (set.insert (dynLambda!27714 lambda!423168 lt!2539247) (as set.empty (Set Context!13208))))))

(declare-fun lt!2539473 () Unit!161900)

(declare-fun choose!53999 ((Set Context!13208) Context!13208 Int) Unit!161900)

(assert (=> d!2208766 (= lt!2539473 (choose!53999 lt!2539250 lt!2539247 lambda!423168))))

(assert (=> d!2208766 (= lt!2539250 (set.insert lt!2539247 (as set.empty (Set Context!13208))))))

(assert (=> d!2208766 (= (lemmaMapOnSingletonSet!425 lt!2539250 lt!2539247 lambda!423168) lt!2539473)))

(declare-fun b_lambda!269471 () Bool)

(assert (=> (not b_lambda!269471) (not d!2208766)))

(declare-fun bs!1879492 () Bool)

(assert (= bs!1879492 d!2208766))

(assert (=> bs!1879492 m!7786474))

(declare-fun m!7786700 () Bool)

(assert (=> bs!1879492 m!7786700))

(assert (=> bs!1879492 m!7786454))

(declare-fun m!7786702 () Bool)

(assert (=> bs!1879492 m!7786702))

(assert (=> bs!1879492 m!7786702))

(declare-fun m!7786704 () Bool)

(assert (=> bs!1879492 m!7786704))

(assert (=> b!7064315 d!2208766))

(declare-fun d!2208768 () Bool)

(assert (=> d!2208768 (<= (contextDepthTotal!544 lt!2539221) (zipperDepthTotal!573 lt!2539257))))

(declare-fun lt!2539476 () Unit!161900)

(declare-fun choose!54000 (List!68352 Context!13208) Unit!161900)

(assert (=> d!2208768 (= lt!2539476 (choose!54000 lt!2539257 lt!2539221))))

(declare-fun contains!20495 (List!68352 Context!13208) Bool)

(assert (=> d!2208768 (contains!20495 lt!2539257 lt!2539221)))

(assert (=> d!2208768 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!111 lt!2539257 lt!2539221) lt!2539476)))

(declare-fun bs!1879493 () Bool)

(assert (= bs!1879493 d!2208768))

(assert (=> bs!1879493 m!7786476))

(assert (=> bs!1879493 m!7786464))

(declare-fun m!7786706 () Bool)

(assert (=> bs!1879493 m!7786706))

(declare-fun m!7786708 () Bool)

(assert (=> bs!1879493 m!7786708))

(assert (=> b!7064315 d!2208768))

(declare-fun d!2208770 () Bool)

(declare-fun forall!16556 (List!68351 Int) Bool)

(assert (=> d!2208770 (forall!16556 (++!15713 lt!2539231 (exprs!7104 ct2!306)) lambda!423169)))

(declare-fun lt!2539479 () Unit!161900)

(declare-fun choose!54001 (List!68351 List!68351 Int) Unit!161900)

(assert (=> d!2208770 (= lt!2539479 (choose!54001 lt!2539231 (exprs!7104 ct2!306) lambda!423169))))

(assert (=> d!2208770 (forall!16556 lt!2539231 lambda!423169)))

(assert (=> d!2208770 (= (lemmaConcatPreservesForall!919 lt!2539231 (exprs!7104 ct2!306) lambda!423169) lt!2539479)))

(declare-fun bs!1879494 () Bool)

(assert (= bs!1879494 d!2208770))

(assert (=> bs!1879494 m!7786390))

(assert (=> bs!1879494 m!7786390))

(declare-fun m!7786710 () Bool)

(assert (=> bs!1879494 m!7786710))

(declare-fun m!7786712 () Bool)

(assert (=> bs!1879494 m!7786712))

(declare-fun m!7786714 () Bool)

(assert (=> bs!1879494 m!7786714))

(assert (=> b!7064315 d!2208770))

(declare-fun d!2208772 () Bool)

(declare-fun choose!54002 ((Set Context!13208) Int) (Set Context!13208))

(assert (=> d!2208772 (= (flatMap!2534 lt!2539250 lambda!423170) (choose!54002 lt!2539250 lambda!423170))))

(declare-fun bs!1879495 () Bool)

(assert (= bs!1879495 d!2208772))

(declare-fun m!7786716 () Bool)

(assert (=> bs!1879495 m!7786716))

(assert (=> b!7064315 d!2208772))

(declare-fun d!2208774 () Bool)

(declare-fun e!4247056 () Bool)

(assert (=> d!2208774 e!4247056))

(declare-fun res!2884604 () Bool)

(assert (=> d!2208774 (=> (not res!2884604) (not e!4247056))))

(declare-fun lt!2539482 () List!68352)

(declare-fun noDuplicate!2707 (List!68352) Bool)

(assert (=> d!2208774 (= res!2884604 (noDuplicate!2707 lt!2539482))))

(declare-fun choose!54003 ((Set Context!13208)) List!68352)

(assert (=> d!2208774 (= lt!2539482 (choose!54003 z1!570))))

(assert (=> d!2208774 (= (toList!10949 z1!570) lt!2539482)))

(declare-fun b!7064436 () Bool)

(declare-fun content!13732 (List!68352) (Set Context!13208))

(assert (=> b!7064436 (= e!4247056 (= (content!13732 lt!2539482) z1!570))))

(assert (= (and d!2208774 res!2884604) b!7064436))

(declare-fun m!7786718 () Bool)

(assert (=> d!2208774 m!7786718))

(declare-fun m!7786720 () Bool)

(assert (=> d!2208774 m!7786720))

(declare-fun m!7786722 () Bool)

(assert (=> b!7064436 m!7786722))

(assert (=> b!7064315 d!2208774))

(declare-fun d!2208776 () Bool)

(declare-fun lt!2539485 () Int)

(assert (=> d!2208776 (>= lt!2539485 0)))

(declare-fun e!4247059 () Int)

(assert (=> d!2208776 (= lt!2539485 e!4247059)))

(declare-fun c!1317064 () Bool)

(assert (=> d!2208776 (= c!1317064 (is-Cons!68227 (exprs!7104 lt!2539247)))))

(assert (=> d!2208776 (= (contextDepthTotal!544 lt!2539247) lt!2539485)))

(declare-fun b!7064441 () Bool)

(declare-fun regexDepthTotal!325 (Regex!17608) Int)

(assert (=> b!7064441 (= e!4247059 (+ (regexDepthTotal!325 (h!74675 (exprs!7104 lt!2539247))) (contextDepthTotal!544 (Context!13209 (t!382132 (exprs!7104 lt!2539247))))))))

(declare-fun b!7064442 () Bool)

(assert (=> b!7064442 (= e!4247059 1)))

(assert (= (and d!2208776 c!1317064) b!7064441))

(assert (= (and d!2208776 (not c!1317064)) b!7064442))

(declare-fun m!7786724 () Bool)

(assert (=> b!7064441 m!7786724))

(declare-fun m!7786726 () Bool)

(assert (=> b!7064441 m!7786726))

(assert (=> b!7064315 d!2208776))

(declare-fun d!2208778 () Bool)

(declare-fun lt!2539486 () Int)

(assert (=> d!2208778 (>= lt!2539486 0)))

(declare-fun e!4247060 () Int)

(assert (=> d!2208778 (= lt!2539486 e!4247060)))

(declare-fun c!1317065 () Bool)

(assert (=> d!2208778 (= c!1317065 (is-Cons!68227 (exprs!7104 lt!2539221)))))

(assert (=> d!2208778 (= (contextDepthTotal!544 lt!2539221) lt!2539486)))

(declare-fun b!7064443 () Bool)

(assert (=> b!7064443 (= e!4247060 (+ (regexDepthTotal!325 (h!74675 (exprs!7104 lt!2539221))) (contextDepthTotal!544 (Context!13209 (t!382132 (exprs!7104 lt!2539221))))))))

(declare-fun b!7064444 () Bool)

(assert (=> b!7064444 (= e!4247060 1)))

(assert (= (and d!2208778 c!1317065) b!7064443))

(assert (= (and d!2208778 (not c!1317065)) b!7064444))

(declare-fun m!7786728 () Bool)

(assert (=> b!7064443 m!7786728))

(declare-fun m!7786730 () Bool)

(assert (=> b!7064443 m!7786730))

(assert (=> b!7064315 d!2208778))

(declare-fun d!2208780 () Bool)

(declare-fun lt!2539489 () Int)

(assert (=> d!2208780 (>= lt!2539489 0)))

(declare-fun e!4247063 () Int)

(assert (=> d!2208780 (= lt!2539489 e!4247063)))

(declare-fun c!1317068 () Bool)

(assert (=> d!2208780 (= c!1317068 (is-Cons!68228 lt!2539257))))

(assert (=> d!2208780 (= (zipperDepthTotal!573 lt!2539257) lt!2539489)))

(declare-fun b!7064449 () Bool)

(assert (=> b!7064449 (= e!4247063 (+ (contextDepthTotal!544 (h!74676 lt!2539257)) (zipperDepthTotal!573 (t!382133 lt!2539257))))))

(declare-fun b!7064450 () Bool)

(assert (=> b!7064450 (= e!4247063 0)))

(assert (= (and d!2208780 c!1317068) b!7064449))

(assert (= (and d!2208780 (not c!1317068)) b!7064450))

(declare-fun m!7786732 () Bool)

(assert (=> b!7064449 m!7786732))

(declare-fun m!7786734 () Bool)

(assert (=> b!7064449 m!7786734))

(assert (=> b!7064315 d!2208780))

(declare-fun bm!641938 () Bool)

(declare-fun call!641943 () (Set Context!13208))

(assert (=> bm!641938 (= call!641943 (derivationStepZipperDown!2242 (h!74675 (exprs!7104 lt!2539247)) (Context!13209 (t!382132 (exprs!7104 lt!2539247))) (h!74674 s!7408)))))

(declare-fun b!7064462 () Bool)

(declare-fun e!4247070 () (Set Context!13208))

(assert (=> b!7064462 (= e!4247070 call!641943)))

(declare-fun b!7064463 () Bool)

(assert (=> b!7064463 (= e!4247070 (as set.empty (Set Context!13208)))))

(declare-fun b!7064464 () Bool)

(declare-fun e!4247072 () (Set Context!13208))

(assert (=> b!7064464 (= e!4247072 e!4247070)))

(declare-fun c!1317073 () Bool)

(assert (=> b!7064464 (= c!1317073 (is-Cons!68227 (exprs!7104 lt!2539247)))))

(declare-fun b!7064465 () Bool)

(assert (=> b!7064465 (= e!4247072 (set.union call!641943 (derivationStepZipperUp!2192 (Context!13209 (t!382132 (exprs!7104 lt!2539247))) (h!74674 s!7408))))))

(declare-fun d!2208782 () Bool)

(declare-fun c!1317074 () Bool)

(declare-fun e!4247071 () Bool)

(assert (=> d!2208782 (= c!1317074 e!4247071)))

(declare-fun res!2884607 () Bool)

(assert (=> d!2208782 (=> (not res!2884607) (not e!4247071))))

(assert (=> d!2208782 (= res!2884607 (is-Cons!68227 (exprs!7104 lt!2539247)))))

(assert (=> d!2208782 (= (derivationStepZipperUp!2192 lt!2539247 (h!74674 s!7408)) e!4247072)))

(declare-fun b!7064461 () Bool)

(assert (=> b!7064461 (= e!4247071 (nullable!7291 (h!74675 (exprs!7104 lt!2539247))))))

(assert (= (and d!2208782 res!2884607) b!7064461))

(assert (= (and d!2208782 c!1317074) b!7064465))

(assert (= (and d!2208782 (not c!1317074)) b!7064464))

(assert (= (and b!7064464 c!1317073) b!7064462))

(assert (= (and b!7064464 (not c!1317073)) b!7064463))

(assert (= (or b!7064465 b!7064462) bm!641938))

(declare-fun m!7786736 () Bool)

(assert (=> bm!641938 m!7786736))

(declare-fun m!7786738 () Bool)

(assert (=> b!7064465 m!7786738))

(declare-fun m!7786740 () Bool)

(assert (=> b!7064461 m!7786740))

(assert (=> b!7064315 d!2208782))

(declare-fun e!4247077 () Bool)

(declare-fun b!7064477 () Bool)

(declare-fun lt!2539492 () List!68351)

(assert (=> b!7064477 (= e!4247077 (or (not (= (exprs!7104 ct2!306) Nil!68227)) (= lt!2539492 lt!2539231)))))

(declare-fun d!2208784 () Bool)

(assert (=> d!2208784 e!4247077))

(declare-fun res!2884613 () Bool)

(assert (=> d!2208784 (=> (not res!2884613) (not e!4247077))))

(declare-fun content!13733 (List!68351) (Set Regex!17608))

(assert (=> d!2208784 (= res!2884613 (= (content!13733 lt!2539492) (set.union (content!13733 lt!2539231) (content!13733 (exprs!7104 ct2!306)))))))

(declare-fun e!4247078 () List!68351)

(assert (=> d!2208784 (= lt!2539492 e!4247078)))

(declare-fun c!1317077 () Bool)

(assert (=> d!2208784 (= c!1317077 (is-Nil!68227 lt!2539231))))

(assert (=> d!2208784 (= (++!15713 lt!2539231 (exprs!7104 ct2!306)) lt!2539492)))

(declare-fun b!7064475 () Bool)

(assert (=> b!7064475 (= e!4247078 (Cons!68227 (h!74675 lt!2539231) (++!15713 (t!382132 lt!2539231) (exprs!7104 ct2!306))))))

(declare-fun b!7064474 () Bool)

(assert (=> b!7064474 (= e!4247078 (exprs!7104 ct2!306))))

(declare-fun b!7064476 () Bool)

(declare-fun res!2884612 () Bool)

(assert (=> b!7064476 (=> (not res!2884612) (not e!4247077))))

(declare-fun size!41181 (List!68351) Int)

(assert (=> b!7064476 (= res!2884612 (= (size!41181 lt!2539492) (+ (size!41181 lt!2539231) (size!41181 (exprs!7104 ct2!306)))))))

(assert (= (and d!2208784 c!1317077) b!7064474))

(assert (= (and d!2208784 (not c!1317077)) b!7064475))

(assert (= (and d!2208784 res!2884613) b!7064476))

(assert (= (and b!7064476 res!2884612) b!7064477))

(declare-fun m!7786742 () Bool)

(assert (=> d!2208784 m!7786742))

(declare-fun m!7786744 () Bool)

(assert (=> d!2208784 m!7786744))

(declare-fun m!7786746 () Bool)

(assert (=> d!2208784 m!7786746))

(declare-fun m!7786748 () Bool)

(assert (=> b!7064475 m!7786748))

(declare-fun m!7786750 () Bool)

(assert (=> b!7064476 m!7786750))

(declare-fun m!7786752 () Bool)

(assert (=> b!7064476 m!7786752))

(declare-fun m!7786754 () Bool)

(assert (=> b!7064476 m!7786754))

(assert (=> b!7064315 d!2208784))

(declare-fun d!2208786 () Bool)

(declare-fun choose!54004 ((Set Context!13208) Int) (Set Context!13208))

(assert (=> d!2208786 (= (map!15945 lt!2539250 lambda!423168) (choose!54004 lt!2539250 lambda!423168))))

(declare-fun bs!1879496 () Bool)

(assert (= bs!1879496 d!2208786))

(declare-fun m!7786756 () Bool)

(assert (=> bs!1879496 m!7786756))

(assert (=> b!7064315 d!2208786))

(declare-fun d!2208788 () Bool)

(declare-fun dynLambda!27715 (Int Context!13208) (Set Context!13208))

(assert (=> d!2208788 (= (flatMap!2534 lt!2539250 lambda!423170) (dynLambda!27715 lambda!423170 lt!2539247))))

(declare-fun lt!2539495 () Unit!161900)

(declare-fun choose!54005 ((Set Context!13208) Context!13208 Int) Unit!161900)

(assert (=> d!2208788 (= lt!2539495 (choose!54005 lt!2539250 lt!2539247 lambda!423170))))

(assert (=> d!2208788 (= lt!2539250 (set.insert lt!2539247 (as set.empty (Set Context!13208))))))

(assert (=> d!2208788 (= (lemmaFlatMapOnSingletonSet!2043 lt!2539250 lt!2539247 lambda!423170) lt!2539495)))

(declare-fun b_lambda!269473 () Bool)

(assert (=> (not b_lambda!269473) (not d!2208788)))

(declare-fun bs!1879497 () Bool)

(assert (= bs!1879497 d!2208788))

(assert (=> bs!1879497 m!7786466))

(declare-fun m!7786758 () Bool)

(assert (=> bs!1879497 m!7786758))

(declare-fun m!7786760 () Bool)

(assert (=> bs!1879497 m!7786760))

(assert (=> bs!1879497 m!7786474))

(assert (=> b!7064315 d!2208788))

(declare-fun d!2208790 () Bool)

(declare-fun lt!2539496 () Int)

(assert (=> d!2208790 (>= lt!2539496 0)))

(declare-fun e!4247079 () Int)

(assert (=> d!2208790 (= lt!2539496 e!4247079)))

(declare-fun c!1317078 () Bool)

(assert (=> d!2208790 (= c!1317078 (is-Cons!68228 (Cons!68228 lt!2539247 Nil!68228)))))

(assert (=> d!2208790 (= (zipperDepthTotal!573 (Cons!68228 lt!2539247 Nil!68228)) lt!2539496)))

(declare-fun b!7064478 () Bool)

(assert (=> b!7064478 (= e!4247079 (+ (contextDepthTotal!544 (h!74676 (Cons!68228 lt!2539247 Nil!68228))) (zipperDepthTotal!573 (t!382133 (Cons!68228 lt!2539247 Nil!68228)))))))

(declare-fun b!7064479 () Bool)

(assert (=> b!7064479 (= e!4247079 0)))

(assert (= (and d!2208790 c!1317078) b!7064478))

(assert (= (and d!2208790 (not c!1317078)) b!7064479))

(declare-fun m!7786762 () Bool)

(assert (=> b!7064478 m!7786762))

(declare-fun m!7786764 () Bool)

(assert (=> b!7064478 m!7786764))

(assert (=> b!7064314 d!2208790))

(declare-fun d!2208792 () Bool)

(declare-fun lt!2539499 () Bool)

(assert (=> d!2208792 (= lt!2539499 (exists!3626 (toList!10949 lt!2539230) lambda!423171))))

(declare-fun choose!54006 ((Set Context!13208) Int) Bool)

(assert (=> d!2208792 (= lt!2539499 (choose!54006 lt!2539230 lambda!423171))))

(assert (=> d!2208792 (= (exists!3627 lt!2539230 lambda!423171) lt!2539499)))

(declare-fun bs!1879498 () Bool)

(assert (= bs!1879498 d!2208792))

(declare-fun m!7786766 () Bool)

(assert (=> bs!1879498 m!7786766))

(assert (=> bs!1879498 m!7786766))

(declare-fun m!7786768 () Bool)

(assert (=> bs!1879498 m!7786768))

(declare-fun m!7786770 () Bool)

(assert (=> bs!1879498 m!7786770))

(assert (=> b!7064317 d!2208792))

(declare-fun d!2208794 () Bool)

(declare-fun lt!2539500 () Bool)

(assert (=> d!2208794 (= lt!2539500 (exists!3626 (toList!10949 lt!2539250) lambda!423171))))

(assert (=> d!2208794 (= lt!2539500 (choose!54006 lt!2539250 lambda!423171))))

(assert (=> d!2208794 (= (exists!3627 lt!2539250 lambda!423171) lt!2539500)))

(declare-fun bs!1879499 () Bool)

(assert (= bs!1879499 d!2208794))

(declare-fun m!7786772 () Bool)

(assert (=> bs!1879499 m!7786772))

(assert (=> bs!1879499 m!7786772))

(declare-fun m!7786774 () Bool)

(assert (=> bs!1879499 m!7786774))

(declare-fun m!7786776 () Bool)

(assert (=> bs!1879499 m!7786776))

(assert (=> b!7064317 d!2208794))

(declare-fun d!2208796 () Bool)

(declare-fun e!4247082 () Bool)

(assert (=> d!2208796 e!4247082))

(declare-fun res!2884616 () Bool)

(assert (=> d!2208796 (=> (not res!2884616) (not e!4247082))))

(declare-fun lt!2539503 () Context!13208)

(declare-fun dynLambda!27716 (Int Context!13208) Bool)

(assert (=> d!2208796 (= res!2884616 (dynLambda!27716 lambda!423171 lt!2539503))))

(declare-fun getWitness!1691 (List!68352 Int) Context!13208)

(assert (=> d!2208796 (= lt!2539503 (getWitness!1691 (toList!10949 lt!2539250) lambda!423171))))

(assert (=> d!2208796 (exists!3627 lt!2539250 lambda!423171)))

(assert (=> d!2208796 (= (getWitness!1689 lt!2539250 lambda!423171) lt!2539503)))

(declare-fun b!7064482 () Bool)

(assert (=> b!7064482 (= e!4247082 (set.member lt!2539503 lt!2539250))))

(assert (= (and d!2208796 res!2884616) b!7064482))

(declare-fun b_lambda!269475 () Bool)

(assert (=> (not b_lambda!269475) (not d!2208796)))

(declare-fun m!7786778 () Bool)

(assert (=> d!2208796 m!7786778))

(assert (=> d!2208796 m!7786772))

(assert (=> d!2208796 m!7786772))

(declare-fun m!7786780 () Bool)

(assert (=> d!2208796 m!7786780))

(assert (=> d!2208796 m!7786436))

(declare-fun m!7786782 () Bool)

(assert (=> b!7064482 m!7786782))

(assert (=> b!7064317 d!2208796))

(declare-fun d!2208798 () Bool)

(assert (=> d!2208798 (exists!3627 lt!2539250 lambda!423171)))

(declare-fun lt!2539506 () Unit!161900)

(declare-fun choose!54007 ((Set Context!13208) Context!13208 Int) Unit!161900)

(assert (=> d!2208798 (= lt!2539506 (choose!54007 lt!2539250 lt!2539247 lambda!423171))))

(assert (=> d!2208798 (set.member lt!2539247 lt!2539250)))

(assert (=> d!2208798 (= (lemmaContainsThenExists!140 lt!2539250 lt!2539247 lambda!423171) lt!2539506)))

(declare-fun bs!1879500 () Bool)

(assert (= bs!1879500 d!2208798))

(assert (=> bs!1879500 m!7786436))

(declare-fun m!7786784 () Bool)

(assert (=> bs!1879500 m!7786784))

(declare-fun m!7786786 () Bool)

(assert (=> bs!1879500 m!7786786))

(assert (=> b!7064317 d!2208798))

(declare-fun d!2208800 () Bool)

(assert (=> d!2208800 (exists!3627 lt!2539230 lambda!423171)))

(declare-fun lt!2539507 () Unit!161900)

(assert (=> d!2208800 (= lt!2539507 (choose!54007 lt!2539230 lt!2539221 lambda!423171))))

(assert (=> d!2208800 (set.member lt!2539221 lt!2539230)))

(assert (=> d!2208800 (= (lemmaContainsThenExists!140 lt!2539230 lt!2539221 lambda!423171) lt!2539507)))

(declare-fun bs!1879501 () Bool)

(assert (= bs!1879501 d!2208800))

(assert (=> bs!1879501 m!7786442))

(declare-fun m!7786788 () Bool)

(assert (=> bs!1879501 m!7786788))

(declare-fun m!7786790 () Bool)

(assert (=> bs!1879501 m!7786790))

(assert (=> b!7064317 d!2208800))

(declare-fun d!2208802 () Bool)

(assert (=> d!2208802 (isDefined!13642 (findConcatSeparationZippers!457 (ite c!1317026 lt!2539230 lt!2539238) lt!2539209 Nil!68226 s!7408 s!7408))))

(declare-fun lt!2539510 () Unit!161900)

(declare-fun choose!54008 ((Set Context!13208) (Set Context!13208) List!68350 List!68350 List!68350 List!68350 List!68350) Unit!161900)

(assert (=> d!2208802 (= lt!2539510 (choose!54008 (ite c!1317026 lt!2539230 lt!2539238) lt!2539209 (_1!37412 lt!2539260) (_2!37412 lt!2539260) s!7408 Nil!68226 s!7408))))

(assert (=> d!2208802 (matchZipper!3148 (ite c!1317026 lt!2539230 lt!2539238) (_1!37412 lt!2539260))))

(assert (=> d!2208802 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!57 (ite c!1317026 lt!2539230 lt!2539238) lt!2539209 (_1!37412 lt!2539260) (_2!37412 lt!2539260) s!7408 Nil!68226 s!7408) lt!2539510)))

(declare-fun bs!1879502 () Bool)

(assert (= bs!1879502 d!2208802))

(assert (=> bs!1879502 m!7786478))

(assert (=> bs!1879502 m!7786478))

(declare-fun m!7786792 () Bool)

(assert (=> bs!1879502 m!7786792))

(declare-fun m!7786794 () Bool)

(assert (=> bs!1879502 m!7786794))

(declare-fun m!7786796 () Bool)

(assert (=> bs!1879502 m!7786796))

(assert (=> bm!641926 d!2208802))

(declare-fun d!2208804 () Bool)

(assert (=> d!2208804 (forall!16556 (++!15713 (exprs!7104 lt!2539221) (exprs!7104 ct2!306)) lambda!423169)))

(declare-fun lt!2539511 () Unit!161900)

(assert (=> d!2208804 (= lt!2539511 (choose!54001 (exprs!7104 lt!2539221) (exprs!7104 ct2!306) lambda!423169))))

(assert (=> d!2208804 (forall!16556 (exprs!7104 lt!2539221) lambda!423169)))

(assert (=> d!2208804 (= (lemmaConcatPreservesForall!919 (exprs!7104 lt!2539221) (exprs!7104 ct2!306) lambda!423169) lt!2539511)))

(declare-fun bs!1879503 () Bool)

(assert (= bs!1879503 d!2208804))

(assert (=> bs!1879503 m!7786422))

(assert (=> bs!1879503 m!7786422))

(declare-fun m!7786798 () Bool)

(assert (=> bs!1879503 m!7786798))

(declare-fun m!7786800 () Bool)

(assert (=> bs!1879503 m!7786800))

(declare-fun m!7786802 () Bool)

(assert (=> bs!1879503 m!7786802))

(assert (=> b!7064302 d!2208804))

(declare-fun d!2208806 () Bool)

(declare-fun c!1317081 () Bool)

(assert (=> d!2208806 (= c!1317081 (isEmpty!39809 (t!382131 s!7408)))))

(declare-fun e!4247086 () Bool)

(assert (=> d!2208806 (= (matchZipper!3148 lt!2539228 (t!382131 s!7408)) e!4247086)))

(declare-fun b!7064487 () Bool)

(declare-fun nullableZipper!2678 ((Set Context!13208)) Bool)

(assert (=> b!7064487 (= e!4247086 (nullableZipper!2678 lt!2539228))))

(declare-fun b!7064488 () Bool)

(declare-fun head!14384 (List!68350) C!35486)

(assert (=> b!7064488 (= e!4247086 (matchZipper!3148 (derivationStepZipper!3058 lt!2539228 (head!14384 (t!382131 s!7408))) (tail!13764 (t!382131 s!7408))))))

(assert (= (and d!2208806 c!1317081) b!7064487))

(assert (= (and d!2208806 (not c!1317081)) b!7064488))

(declare-fun m!7786804 () Bool)

(assert (=> d!2208806 m!7786804))

(declare-fun m!7786806 () Bool)

(assert (=> b!7064487 m!7786806))

(declare-fun m!7786808 () Bool)

(assert (=> b!7064488 m!7786808))

(assert (=> b!7064488 m!7786808))

(declare-fun m!7786810 () Bool)

(assert (=> b!7064488 m!7786810))

(declare-fun m!7786812 () Bool)

(assert (=> b!7064488 m!7786812))

(assert (=> b!7064488 m!7786810))

(assert (=> b!7064488 m!7786812))

(declare-fun m!7786814 () Bool)

(assert (=> b!7064488 m!7786814))

(assert (=> b!7064304 d!2208806))

(assert (=> b!7064304 d!2208770))

(assert (=> b!7064322 d!2208806))

(declare-fun d!2208808 () Bool)

(assert (=> d!2208808 (= (tail!13764 (_1!37412 lt!2539260)) (t!382131 (_1!37412 lt!2539260)))))

(assert (=> b!7064303 d!2208808))

(declare-fun e!4247089 () Bool)

(declare-fun d!2208810 () Bool)

(assert (=> d!2208810 (= (matchZipper!3148 (set.union lt!2539210 lt!2539242) lt!2539246) e!4247089)))

(declare-fun res!2884619 () Bool)

(assert (=> d!2208810 (=> res!2884619 e!4247089)))

(assert (=> d!2208810 (= res!2884619 (matchZipper!3148 lt!2539210 lt!2539246))))

(declare-fun lt!2539514 () Unit!161900)

(declare-fun choose!54009 ((Set Context!13208) (Set Context!13208) List!68350) Unit!161900)

(assert (=> d!2208810 (= lt!2539514 (choose!54009 lt!2539210 lt!2539242 lt!2539246))))

(assert (=> d!2208810 (= (lemmaZipperConcatMatchesSameAsBothZippers!1621 lt!2539210 lt!2539242 lt!2539246) lt!2539514)))

(declare-fun b!7064491 () Bool)

(assert (=> b!7064491 (= e!4247089 (matchZipper!3148 lt!2539242 lt!2539246))))

(assert (= (and d!2208810 (not res!2884619)) b!7064491))

(assert (=> d!2208810 m!7786532))

(assert (=> d!2208810 m!7786524))

(declare-fun m!7786816 () Bool)

(assert (=> d!2208810 m!7786816))

(assert (=> b!7064491 m!7786510))

(assert (=> b!7064303 d!2208810))

(declare-fun d!2208812 () Bool)

(declare-fun c!1317082 () Bool)

(assert (=> d!2208812 (= c!1317082 (isEmpty!39809 lt!2539246))))

(declare-fun e!4247090 () Bool)

(assert (=> d!2208812 (= (matchZipper!3148 (set.union lt!2539210 lt!2539242) lt!2539246) e!4247090)))

(declare-fun b!7064492 () Bool)

(assert (=> b!7064492 (= e!4247090 (nullableZipper!2678 (set.union lt!2539210 lt!2539242)))))

(declare-fun b!7064493 () Bool)

(assert (=> b!7064493 (= e!4247090 (matchZipper!3148 (derivationStepZipper!3058 (set.union lt!2539210 lt!2539242) (head!14384 lt!2539246)) (tail!13764 lt!2539246)))))

(assert (= (and d!2208812 c!1317082) b!7064492))

(assert (= (and d!2208812 (not c!1317082)) b!7064493))

(declare-fun m!7786818 () Bool)

(assert (=> d!2208812 m!7786818))

(declare-fun m!7786820 () Bool)

(assert (=> b!7064492 m!7786820))

(declare-fun m!7786822 () Bool)

(assert (=> b!7064493 m!7786822))

(assert (=> b!7064493 m!7786822))

(declare-fun m!7786824 () Bool)

(assert (=> b!7064493 m!7786824))

(declare-fun m!7786826 () Bool)

(assert (=> b!7064493 m!7786826))

(assert (=> b!7064493 m!7786824))

(assert (=> b!7064493 m!7786826))

(declare-fun m!7786828 () Bool)

(assert (=> b!7064493 m!7786828))

(assert (=> b!7064303 d!2208812))

(declare-fun d!2208814 () Bool)

(declare-fun c!1317083 () Bool)

(assert (=> d!2208814 (= c!1317083 (isEmpty!39809 lt!2539246))))

(declare-fun e!4247091 () Bool)

(assert (=> d!2208814 (= (matchZipper!3148 lt!2539210 lt!2539246) e!4247091)))

(declare-fun b!7064494 () Bool)

(assert (=> b!7064494 (= e!4247091 (nullableZipper!2678 lt!2539210))))

(declare-fun b!7064495 () Bool)

(assert (=> b!7064495 (= e!4247091 (matchZipper!3148 (derivationStepZipper!3058 lt!2539210 (head!14384 lt!2539246)) (tail!13764 lt!2539246)))))

(assert (= (and d!2208814 c!1317083) b!7064494))

(assert (= (and d!2208814 (not c!1317083)) b!7064495))

(assert (=> d!2208814 m!7786818))

(declare-fun m!7786830 () Bool)

(assert (=> b!7064494 m!7786830))

(assert (=> b!7064495 m!7786822))

(assert (=> b!7064495 m!7786822))

(declare-fun m!7786832 () Bool)

(assert (=> b!7064495 m!7786832))

(assert (=> b!7064495 m!7786826))

(assert (=> b!7064495 m!7786832))

(assert (=> b!7064495 m!7786826))

(declare-fun m!7786834 () Bool)

(assert (=> b!7064495 m!7786834))

(assert (=> b!7064303 d!2208814))

(assert (=> b!7064303 d!2208788))

(declare-fun d!2208816 () Bool)

(assert (=> d!2208816 (= (flatMap!2534 lt!2539238 lambda!423170) (dynLambda!27715 lambda!423170 lt!2539221))))

(declare-fun lt!2539515 () Unit!161900)

(assert (=> d!2208816 (= lt!2539515 (choose!54005 lt!2539238 lt!2539221 lambda!423170))))

(assert (=> d!2208816 (= lt!2539238 (set.insert lt!2539221 (as set.empty (Set Context!13208))))))

(assert (=> d!2208816 (= (lemmaFlatMapOnSingletonSet!2043 lt!2539238 lt!2539221 lambda!423170) lt!2539515)))

(declare-fun b_lambda!269477 () Bool)

(assert (=> (not b_lambda!269477) (not d!2208816)))

(declare-fun bs!1879504 () Bool)

(assert (= bs!1879504 d!2208816))

(assert (=> bs!1879504 m!7786522))

(declare-fun m!7786836 () Bool)

(assert (=> bs!1879504 m!7786836))

(declare-fun m!7786838 () Bool)

(assert (=> bs!1879504 m!7786838))

(assert (=> bs!1879504 m!7786444))

(assert (=> b!7064303 d!2208816))

(declare-fun b!7064518 () Bool)

(declare-fun c!1317094 () Bool)

(assert (=> b!7064518 (= c!1317094 (is-Star!17608 (h!74675 (exprs!7104 lt!2539221))))))

(declare-fun e!4247107 () (Set Context!13208))

(declare-fun e!4247108 () (Set Context!13208))

(assert (=> b!7064518 (= e!4247107 e!4247108)))

(declare-fun d!2208818 () Bool)

(declare-fun c!1317097 () Bool)

(assert (=> d!2208818 (= c!1317097 (and (is-ElementMatch!17608 (h!74675 (exprs!7104 lt!2539221))) (= (c!1317027 (h!74675 (exprs!7104 lt!2539221))) (h!74674 s!7408))))))

(declare-fun e!4247106 () (Set Context!13208))

(assert (=> d!2208818 (= (derivationStepZipperDown!2242 (h!74675 (exprs!7104 lt!2539221)) lt!2539247 (h!74674 s!7408)) e!4247106)))

(declare-fun b!7064519 () Bool)

(declare-fun e!4247104 () Bool)

(assert (=> b!7064519 (= e!4247104 (nullable!7291 (regOne!35728 (h!74675 (exprs!7104 lt!2539221)))))))

(declare-fun call!641960 () List!68351)

(declare-fun c!1317095 () Bool)

(declare-fun bm!641951 () Bool)

(declare-fun c!1317098 () Bool)

(declare-fun $colon$colon!2639 (List!68351 Regex!17608) List!68351)

(assert (=> bm!641951 (= call!641960 ($colon$colon!2639 (exprs!7104 lt!2539247) (ite (or c!1317098 c!1317095) (regTwo!35728 (h!74675 (exprs!7104 lt!2539221))) (h!74675 (exprs!7104 lt!2539221)))))))

(declare-fun b!7064520 () Bool)

(declare-fun call!641956 () (Set Context!13208))

(assert (=> b!7064520 (= e!4247107 call!641956)))

(declare-fun call!641957 () (Set Context!13208))

(declare-fun c!1317096 () Bool)

(declare-fun call!641958 () List!68351)

(declare-fun bm!641952 () Bool)

(assert (=> bm!641952 (= call!641957 (derivationStepZipperDown!2242 (ite c!1317096 (regTwo!35729 (h!74675 (exprs!7104 lt!2539221))) (ite c!1317098 (regTwo!35728 (h!74675 (exprs!7104 lt!2539221))) (ite c!1317095 (regOne!35728 (h!74675 (exprs!7104 lt!2539221))) (reg!17937 (h!74675 (exprs!7104 lt!2539221)))))) (ite (or c!1317096 c!1317098) lt!2539247 (Context!13209 call!641958)) (h!74674 s!7408)))))

(declare-fun b!7064521 () Bool)

(assert (=> b!7064521 (= e!4247108 call!641956)))

(declare-fun b!7064522 () Bool)

(assert (=> b!7064522 (= e!4247106 (set.insert lt!2539247 (as set.empty (Set Context!13208))))))

(declare-fun bm!641953 () Bool)

(declare-fun call!641959 () (Set Context!13208))

(assert (=> bm!641953 (= call!641959 (derivationStepZipperDown!2242 (ite c!1317096 (regOne!35729 (h!74675 (exprs!7104 lt!2539221))) (regOne!35728 (h!74675 (exprs!7104 lt!2539221)))) (ite c!1317096 lt!2539247 (Context!13209 call!641960)) (h!74674 s!7408)))))

(declare-fun b!7064523 () Bool)

(declare-fun e!4247109 () (Set Context!13208))

(assert (=> b!7064523 (= e!4247109 e!4247107)))

(assert (=> b!7064523 (= c!1317095 (is-Concat!26453 (h!74675 (exprs!7104 lt!2539221))))))

(declare-fun b!7064524 () Bool)

(declare-fun call!641961 () (Set Context!13208))

(assert (=> b!7064524 (= e!4247109 (set.union call!641959 call!641961))))

(declare-fun b!7064525 () Bool)

(declare-fun e!4247105 () (Set Context!13208))

(assert (=> b!7064525 (= e!4247105 (set.union call!641959 call!641957))))

(declare-fun bm!641954 () Bool)

(assert (=> bm!641954 (= call!641956 call!641961)))

(declare-fun b!7064526 () Bool)

(assert (=> b!7064526 (= e!4247106 e!4247105)))

(assert (=> b!7064526 (= c!1317096 (is-Union!17608 (h!74675 (exprs!7104 lt!2539221))))))

(declare-fun bm!641955 () Bool)

(assert (=> bm!641955 (= call!641958 call!641960)))

(declare-fun b!7064527 () Bool)

(assert (=> b!7064527 (= c!1317098 e!4247104)))

(declare-fun res!2884622 () Bool)

(assert (=> b!7064527 (=> (not res!2884622) (not e!4247104))))

(assert (=> b!7064527 (= res!2884622 (is-Concat!26453 (h!74675 (exprs!7104 lt!2539221))))))

(assert (=> b!7064527 (= e!4247105 e!4247109)))

(declare-fun bm!641956 () Bool)

(assert (=> bm!641956 (= call!641961 call!641957)))

(declare-fun b!7064528 () Bool)

(assert (=> b!7064528 (= e!4247108 (as set.empty (Set Context!13208)))))

(assert (= (and d!2208818 c!1317097) b!7064522))

(assert (= (and d!2208818 (not c!1317097)) b!7064526))

(assert (= (and b!7064526 c!1317096) b!7064525))

(assert (= (and b!7064526 (not c!1317096)) b!7064527))

(assert (= (and b!7064527 res!2884622) b!7064519))

(assert (= (and b!7064527 c!1317098) b!7064524))

(assert (= (and b!7064527 (not c!1317098)) b!7064523))

(assert (= (and b!7064523 c!1317095) b!7064520))

(assert (= (and b!7064523 (not c!1317095)) b!7064518))

(assert (= (and b!7064518 c!1317094) b!7064521))

(assert (= (and b!7064518 (not c!1317094)) b!7064528))

(assert (= (or b!7064520 b!7064521) bm!641955))

(assert (= (or b!7064520 b!7064521) bm!641954))

(assert (= (or b!7064524 bm!641954) bm!641956))

(assert (= (or b!7064524 bm!641955) bm!641951))

(assert (= (or b!7064525 b!7064524) bm!641953))

(assert (= (or b!7064525 bm!641956) bm!641952))

(declare-fun m!7786840 () Bool)

(assert (=> bm!641953 m!7786840))

(declare-fun m!7786842 () Bool)

(assert (=> bm!641951 m!7786842))

(declare-fun m!7786844 () Bool)

(assert (=> b!7064519 m!7786844))

(assert (=> b!7064522 m!7786474))

(declare-fun m!7786846 () Bool)

(assert (=> bm!641952 m!7786846))

(assert (=> b!7064303 d!2208818))

(assert (=> b!7064303 d!2208782))

(declare-fun bm!641957 () Bool)

(declare-fun call!641962 () (Set Context!13208))

(assert (=> bm!641957 (= call!641962 (derivationStepZipperDown!2242 (h!74675 (exprs!7104 lt!2539221)) (Context!13209 (t!382132 (exprs!7104 lt!2539221))) (h!74674 s!7408)))))

(declare-fun b!7064530 () Bool)

(declare-fun e!4247110 () (Set Context!13208))

(assert (=> b!7064530 (= e!4247110 call!641962)))

(declare-fun b!7064531 () Bool)

(assert (=> b!7064531 (= e!4247110 (as set.empty (Set Context!13208)))))

(declare-fun b!7064532 () Bool)

(declare-fun e!4247112 () (Set Context!13208))

(assert (=> b!7064532 (= e!4247112 e!4247110)))

(declare-fun c!1317099 () Bool)

(assert (=> b!7064532 (= c!1317099 (is-Cons!68227 (exprs!7104 lt!2539221)))))

(declare-fun b!7064533 () Bool)

(assert (=> b!7064533 (= e!4247112 (set.union call!641962 (derivationStepZipperUp!2192 (Context!13209 (t!382132 (exprs!7104 lt!2539221))) (h!74674 s!7408))))))

(declare-fun d!2208820 () Bool)

(declare-fun c!1317100 () Bool)

(declare-fun e!4247111 () Bool)

(assert (=> d!2208820 (= c!1317100 e!4247111)))

(declare-fun res!2884623 () Bool)

(assert (=> d!2208820 (=> (not res!2884623) (not e!4247111))))

(assert (=> d!2208820 (= res!2884623 (is-Cons!68227 (exprs!7104 lt!2539221)))))

(assert (=> d!2208820 (= (derivationStepZipperUp!2192 lt!2539221 (h!74674 s!7408)) e!4247112)))

(declare-fun b!7064529 () Bool)

(assert (=> b!7064529 (= e!4247111 (nullable!7291 (h!74675 (exprs!7104 lt!2539221))))))

(assert (= (and d!2208820 res!2884623) b!7064529))

(assert (= (and d!2208820 c!1317100) b!7064533))

(assert (= (and d!2208820 (not c!1317100)) b!7064532))

(assert (= (and b!7064532 c!1317099) b!7064530))

(assert (= (and b!7064532 (not c!1317099)) b!7064531))

(assert (= (or b!7064533 b!7064530) bm!641957))

(declare-fun m!7786848 () Bool)

(assert (=> bm!641957 m!7786848))

(declare-fun m!7786850 () Bool)

(assert (=> b!7064533 m!7786850))

(assert (=> b!7064529 m!7786536))

(assert (=> b!7064303 d!2208820))

(assert (=> b!7064303 d!2208772))

(declare-fun d!2208822 () Bool)

(assert (=> d!2208822 (= (flatMap!2534 lt!2539238 lambda!423170) (choose!54002 lt!2539238 lambda!423170))))

(declare-fun bs!1879505 () Bool)

(assert (= bs!1879505 d!2208822))

(declare-fun m!7786852 () Bool)

(assert (=> bs!1879505 m!7786852))

(assert (=> b!7064303 d!2208822))

(declare-fun d!2208824 () Bool)

(declare-fun c!1317101 () Bool)

(assert (=> d!2208824 (= c!1317101 (isEmpty!39809 (_1!37412 lt!2539260)))))

(declare-fun e!4247113 () Bool)

(assert (=> d!2208824 (= (matchZipper!3148 lt!2539250 (_1!37412 lt!2539260)) e!4247113)))

(declare-fun b!7064534 () Bool)

(assert (=> b!7064534 (= e!4247113 (nullableZipper!2678 lt!2539250))))

(declare-fun b!7064535 () Bool)

(assert (=> b!7064535 (= e!4247113 (matchZipper!3148 (derivationStepZipper!3058 lt!2539250 (head!14384 (_1!37412 lt!2539260))) (tail!13764 (_1!37412 lt!2539260))))))

(assert (= (and d!2208824 c!1317101) b!7064534))

(assert (= (and d!2208824 (not c!1317101)) b!7064535))

(assert (=> d!2208824 m!7786452))

(declare-fun m!7786854 () Bool)

(assert (=> b!7064534 m!7786854))

(declare-fun m!7786856 () Bool)

(assert (=> b!7064535 m!7786856))

(assert (=> b!7064535 m!7786856))

(declare-fun m!7786858 () Bool)

(assert (=> b!7064535 m!7786858))

(assert (=> b!7064535 m!7786528))

(assert (=> b!7064535 m!7786858))

(assert (=> b!7064535 m!7786528))

(declare-fun m!7786860 () Bool)

(assert (=> b!7064535 m!7786860))

(assert (=> b!7064321 d!2208824))

(declare-fun d!2208826 () Bool)

(declare-fun isEmpty!39812 (Option!16941) Bool)

(assert (=> d!2208826 (= (isDefined!13642 lt!2539255) (not (isEmpty!39812 lt!2539255)))))

(declare-fun bs!1879506 () Bool)

(assert (= bs!1879506 d!2208826))

(declare-fun m!7786862 () Bool)

(assert (=> bs!1879506 m!7786862))

(assert (=> b!7064321 d!2208826))

(declare-fun d!2208828 () Bool)

(assert (=> d!2208828 (= (get!23896 lt!2539255) (v!53234 lt!2539255))))

(assert (=> b!7064321 d!2208828))

(declare-fun b!7064554 () Bool)

(declare-fun e!4247126 () Option!16941)

(assert (=> b!7064554 (= e!4247126 None!16940)))

(declare-fun b!7064555 () Bool)

(declare-fun e!4247124 () Bool)

(assert (=> b!7064555 (= e!4247124 (matchZipper!3148 lt!2539209 s!7408))))

(declare-fun b!7064557 () Bool)

(declare-fun e!4247127 () Option!16941)

(assert (=> b!7064557 (= e!4247127 e!4247126)))

(declare-fun c!1317107 () Bool)

(assert (=> b!7064557 (= c!1317107 (is-Nil!68226 s!7408))))

(declare-fun b!7064558 () Bool)

(declare-fun res!2884637 () Bool)

(declare-fun e!4247128 () Bool)

(assert (=> b!7064558 (=> (not res!2884637) (not e!4247128))))

(declare-fun lt!2539522 () Option!16941)

(assert (=> b!7064558 (= res!2884637 (matchZipper!3148 lt!2539250 (_1!37412 (get!23896 lt!2539522))))))

(declare-fun b!7064559 () Bool)

(declare-fun lt!2539523 () Unit!161900)

(declare-fun lt!2539524 () Unit!161900)

(assert (=> b!7064559 (= lt!2539523 lt!2539524)))

(assert (=> b!7064559 (= (++!15714 (++!15714 Nil!68226 (Cons!68226 (h!74674 s!7408) Nil!68226)) (t!382131 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2964 (List!68350 C!35486 List!68350 List!68350) Unit!161900)

(assert (=> b!7064559 (= lt!2539524 (lemmaMoveElementToOtherListKeepsConcatEq!2964 Nil!68226 (h!74674 s!7408) (t!382131 s!7408) s!7408))))

(assert (=> b!7064559 (= e!4247126 (findConcatSeparationZippers!457 lt!2539250 lt!2539209 (++!15714 Nil!68226 (Cons!68226 (h!74674 s!7408) Nil!68226)) (t!382131 s!7408) s!7408))))

(declare-fun b!7064560 () Bool)

(declare-fun e!4247125 () Bool)

(assert (=> b!7064560 (= e!4247125 (not (isDefined!13642 lt!2539522)))))

(declare-fun b!7064561 () Bool)

(assert (=> b!7064561 (= e!4247127 (Some!16940 (tuple2!68219 Nil!68226 s!7408)))))

(declare-fun b!7064562 () Bool)

(declare-fun res!2884634 () Bool)

(assert (=> b!7064562 (=> (not res!2884634) (not e!4247128))))

(assert (=> b!7064562 (= res!2884634 (matchZipper!3148 lt!2539209 (_2!37412 (get!23896 lt!2539522))))))

(declare-fun d!2208830 () Bool)

(assert (=> d!2208830 e!4247125))

(declare-fun res!2884638 () Bool)

(assert (=> d!2208830 (=> res!2884638 e!4247125)))

(assert (=> d!2208830 (= res!2884638 e!4247128)))

(declare-fun res!2884635 () Bool)

(assert (=> d!2208830 (=> (not res!2884635) (not e!4247128))))

(assert (=> d!2208830 (= res!2884635 (isDefined!13642 lt!2539522))))

(assert (=> d!2208830 (= lt!2539522 e!4247127)))

(declare-fun c!1317106 () Bool)

(assert (=> d!2208830 (= c!1317106 e!4247124)))

(declare-fun res!2884636 () Bool)

(assert (=> d!2208830 (=> (not res!2884636) (not e!4247124))))

(assert (=> d!2208830 (= res!2884636 (matchZipper!3148 lt!2539250 Nil!68226))))

(assert (=> d!2208830 (= (++!15714 Nil!68226 s!7408) s!7408)))

(assert (=> d!2208830 (= (findConcatSeparationZippers!457 lt!2539250 lt!2539209 Nil!68226 s!7408 s!7408) lt!2539522)))

(declare-fun b!7064556 () Bool)

(assert (=> b!7064556 (= e!4247128 (= (++!15714 (_1!37412 (get!23896 lt!2539522)) (_2!37412 (get!23896 lt!2539522))) s!7408))))

(assert (= (and d!2208830 res!2884636) b!7064555))

(assert (= (and d!2208830 c!1317106) b!7064561))

(assert (= (and d!2208830 (not c!1317106)) b!7064557))

(assert (= (and b!7064557 c!1317107) b!7064554))

(assert (= (and b!7064557 (not c!1317107)) b!7064559))

(assert (= (and d!2208830 res!2884635) b!7064558))

(assert (= (and b!7064558 res!2884637) b!7064562))

(assert (= (and b!7064562 res!2884634) b!7064556))

(assert (= (and d!2208830 (not res!2884638)) b!7064560))

(declare-fun m!7786864 () Bool)

(assert (=> b!7064559 m!7786864))

(assert (=> b!7064559 m!7786864))

(declare-fun m!7786866 () Bool)

(assert (=> b!7064559 m!7786866))

(declare-fun m!7786868 () Bool)

(assert (=> b!7064559 m!7786868))

(assert (=> b!7064559 m!7786864))

(declare-fun m!7786870 () Bool)

(assert (=> b!7064559 m!7786870))

(declare-fun m!7786872 () Bool)

(assert (=> b!7064562 m!7786872))

(declare-fun m!7786874 () Bool)

(assert (=> b!7064562 m!7786874))

(assert (=> b!7064556 m!7786872))

(declare-fun m!7786876 () Bool)

(assert (=> b!7064556 m!7786876))

(assert (=> b!7064558 m!7786872))

(declare-fun m!7786878 () Bool)

(assert (=> b!7064558 m!7786878))

(declare-fun m!7786880 () Bool)

(assert (=> b!7064560 m!7786880))

(assert (=> d!2208830 m!7786880))

(declare-fun m!7786882 () Bool)

(assert (=> d!2208830 m!7786882))

(declare-fun m!7786884 () Bool)

(assert (=> d!2208830 m!7786884))

(declare-fun m!7786886 () Bool)

(assert (=> b!7064555 m!7786886))

(assert (=> b!7064321 d!2208830))

(declare-fun d!2208832 () Bool)

(assert (=> d!2208832 (isDefined!13642 (findConcatSeparationZippers!457 lt!2539250 (set.insert ct2!306 (as set.empty (Set Context!13208))) Nil!68226 s!7408 s!7408))))

(declare-fun lt!2539527 () Unit!161900)

(declare-fun choose!54010 ((Set Context!13208) Context!13208 List!68350) Unit!161900)

(assert (=> d!2208832 (= lt!2539527 (choose!54010 lt!2539250 ct2!306 s!7408))))

(assert (=> d!2208832 (matchZipper!3148 (appendTo!729 lt!2539250 ct2!306) s!7408)))

(assert (=> d!2208832 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!445 lt!2539250 ct2!306 s!7408) lt!2539527)))

(declare-fun bs!1879507 () Bool)

(assert (= bs!1879507 d!2208832))

(declare-fun m!7786888 () Bool)

(assert (=> bs!1879507 m!7786888))

(declare-fun m!7786890 () Bool)

(assert (=> bs!1879507 m!7786890))

(declare-fun m!7786892 () Bool)

(assert (=> bs!1879507 m!7786892))

(assert (=> bs!1879507 m!7786402))

(declare-fun m!7786894 () Bool)

(assert (=> bs!1879507 m!7786894))

(declare-fun m!7786896 () Bool)

(assert (=> bs!1879507 m!7786896))

(assert (=> bs!1879507 m!7786402))

(assert (=> bs!1879507 m!7786890))

(assert (=> bs!1879507 m!7786894))

(assert (=> b!7064321 d!2208832))

(declare-fun b!7064563 () Bool)

(declare-fun e!4247131 () Option!16941)

(assert (=> b!7064563 (= e!4247131 None!16940)))

(declare-fun b!7064564 () Bool)

(declare-fun e!4247129 () Bool)

(assert (=> b!7064564 (= e!4247129 (matchZipper!3148 lt!2539209 s!7408))))

(declare-fun b!7064566 () Bool)

(declare-fun e!4247132 () Option!16941)

(assert (=> b!7064566 (= e!4247132 e!4247131)))

(declare-fun c!1317109 () Bool)

(assert (=> b!7064566 (= c!1317109 (is-Nil!68226 s!7408))))

(declare-fun b!7064567 () Bool)

(declare-fun res!2884642 () Bool)

(declare-fun e!4247133 () Bool)

(assert (=> b!7064567 (=> (not res!2884642) (not e!4247133))))

(declare-fun lt!2539528 () Option!16941)

(assert (=> b!7064567 (= res!2884642 (matchZipper!3148 (ite c!1317026 lt!2539230 lt!2539238) (_1!37412 (get!23896 lt!2539528))))))

(declare-fun b!7064568 () Bool)

(declare-fun lt!2539529 () Unit!161900)

(declare-fun lt!2539530 () Unit!161900)

(assert (=> b!7064568 (= lt!2539529 lt!2539530)))

(assert (=> b!7064568 (= (++!15714 (++!15714 Nil!68226 (Cons!68226 (h!74674 s!7408) Nil!68226)) (t!382131 s!7408)) s!7408)))

(assert (=> b!7064568 (= lt!2539530 (lemmaMoveElementToOtherListKeepsConcatEq!2964 Nil!68226 (h!74674 s!7408) (t!382131 s!7408) s!7408))))

(assert (=> b!7064568 (= e!4247131 (findConcatSeparationZippers!457 (ite c!1317026 lt!2539230 lt!2539238) lt!2539209 (++!15714 Nil!68226 (Cons!68226 (h!74674 s!7408) Nil!68226)) (t!382131 s!7408) s!7408))))

(declare-fun b!7064569 () Bool)

(declare-fun e!4247130 () Bool)

(assert (=> b!7064569 (= e!4247130 (not (isDefined!13642 lt!2539528)))))

(declare-fun b!7064570 () Bool)

(assert (=> b!7064570 (= e!4247132 (Some!16940 (tuple2!68219 Nil!68226 s!7408)))))

(declare-fun b!7064571 () Bool)

(declare-fun res!2884639 () Bool)

(assert (=> b!7064571 (=> (not res!2884639) (not e!4247133))))

(assert (=> b!7064571 (= res!2884639 (matchZipper!3148 lt!2539209 (_2!37412 (get!23896 lt!2539528))))))

(declare-fun d!2208834 () Bool)

(assert (=> d!2208834 e!4247130))

(declare-fun res!2884643 () Bool)

(assert (=> d!2208834 (=> res!2884643 e!4247130)))

(assert (=> d!2208834 (= res!2884643 e!4247133)))

(declare-fun res!2884640 () Bool)

(assert (=> d!2208834 (=> (not res!2884640) (not e!4247133))))

(assert (=> d!2208834 (= res!2884640 (isDefined!13642 lt!2539528))))

(assert (=> d!2208834 (= lt!2539528 e!4247132)))

(declare-fun c!1317108 () Bool)

(assert (=> d!2208834 (= c!1317108 e!4247129)))

(declare-fun res!2884641 () Bool)

(assert (=> d!2208834 (=> (not res!2884641) (not e!4247129))))

(assert (=> d!2208834 (= res!2884641 (matchZipper!3148 (ite c!1317026 lt!2539230 lt!2539238) Nil!68226))))

(assert (=> d!2208834 (= (++!15714 Nil!68226 s!7408) s!7408)))

(assert (=> d!2208834 (= (findConcatSeparationZippers!457 (ite c!1317026 lt!2539230 lt!2539238) lt!2539209 Nil!68226 s!7408 s!7408) lt!2539528)))

(declare-fun b!7064565 () Bool)

(assert (=> b!7064565 (= e!4247133 (= (++!15714 (_1!37412 (get!23896 lt!2539528)) (_2!37412 (get!23896 lt!2539528))) s!7408))))

(assert (= (and d!2208834 res!2884641) b!7064564))

(assert (= (and d!2208834 c!1317108) b!7064570))

(assert (= (and d!2208834 (not c!1317108)) b!7064566))

(assert (= (and b!7064566 c!1317109) b!7064563))

(assert (= (and b!7064566 (not c!1317109)) b!7064568))

(assert (= (and d!2208834 res!2884640) b!7064567))

(assert (= (and b!7064567 res!2884642) b!7064571))

(assert (= (and b!7064571 res!2884639) b!7064565))

(assert (= (and d!2208834 (not res!2884643)) b!7064569))

(assert (=> b!7064568 m!7786864))

(assert (=> b!7064568 m!7786864))

(assert (=> b!7064568 m!7786866))

(assert (=> b!7064568 m!7786868))

(assert (=> b!7064568 m!7786864))

(declare-fun m!7786898 () Bool)

(assert (=> b!7064568 m!7786898))

(declare-fun m!7786900 () Bool)

(assert (=> b!7064571 m!7786900))

(declare-fun m!7786902 () Bool)

(assert (=> b!7064571 m!7786902))

(assert (=> b!7064565 m!7786900))

(declare-fun m!7786904 () Bool)

(assert (=> b!7064565 m!7786904))

(assert (=> b!7064567 m!7786900))

(declare-fun m!7786906 () Bool)

(assert (=> b!7064567 m!7786906))

(declare-fun m!7786908 () Bool)

(assert (=> b!7064569 m!7786908))

(assert (=> d!2208834 m!7786908))

(declare-fun m!7786910 () Bool)

(assert (=> d!2208834 m!7786910))

(assert (=> d!2208834 m!7786884))

(assert (=> b!7064564 m!7786886))

(assert (=> bm!641924 d!2208834))

(declare-fun b!7064581 () Bool)

(declare-fun e!4247139 () List!68350)

(assert (=> b!7064581 (= e!4247139 (Cons!68226 (h!74674 (_1!37412 lt!2539260)) (++!15714 (t!382131 (_1!37412 lt!2539260)) (_2!37412 lt!2539260))))))

(declare-fun b!7064580 () Bool)

(assert (=> b!7064580 (= e!4247139 (_2!37412 lt!2539260))))

(declare-fun b!7064582 () Bool)

(declare-fun res!2884648 () Bool)

(declare-fun e!4247138 () Bool)

(assert (=> b!7064582 (=> (not res!2884648) (not e!4247138))))

(declare-fun lt!2539533 () List!68350)

(declare-fun size!41182 (List!68350) Int)

(assert (=> b!7064582 (= res!2884648 (= (size!41182 lt!2539533) (+ (size!41182 (_1!37412 lt!2539260)) (size!41182 (_2!37412 lt!2539260)))))))

(declare-fun d!2208836 () Bool)

(assert (=> d!2208836 e!4247138))

(declare-fun res!2884649 () Bool)

(assert (=> d!2208836 (=> (not res!2884649) (not e!4247138))))

(declare-fun content!13734 (List!68350) (Set C!35486))

(assert (=> d!2208836 (= res!2884649 (= (content!13734 lt!2539533) (set.union (content!13734 (_1!37412 lt!2539260)) (content!13734 (_2!37412 lt!2539260)))))))

(assert (=> d!2208836 (= lt!2539533 e!4247139)))

(declare-fun c!1317112 () Bool)

(assert (=> d!2208836 (= c!1317112 (is-Nil!68226 (_1!37412 lt!2539260)))))

(assert (=> d!2208836 (= (++!15714 (_1!37412 lt!2539260) (_2!37412 lt!2539260)) lt!2539533)))

(declare-fun b!7064583 () Bool)

(assert (=> b!7064583 (= e!4247138 (or (not (= (_2!37412 lt!2539260) Nil!68226)) (= lt!2539533 (_1!37412 lt!2539260))))))

(assert (= (and d!2208836 c!1317112) b!7064580))

(assert (= (and d!2208836 (not c!1317112)) b!7064581))

(assert (= (and d!2208836 res!2884649) b!7064582))

(assert (= (and b!7064582 res!2884648) b!7064583))

(declare-fun m!7786912 () Bool)

(assert (=> b!7064581 m!7786912))

(declare-fun m!7786914 () Bool)

(assert (=> b!7064582 m!7786914))

(declare-fun m!7786916 () Bool)

(assert (=> b!7064582 m!7786916))

(declare-fun m!7786918 () Bool)

(assert (=> b!7064582 m!7786918))

(declare-fun m!7786920 () Bool)

(assert (=> d!2208836 m!7786920))

(declare-fun m!7786922 () Bool)

(assert (=> d!2208836 m!7786922))

(declare-fun m!7786924 () Bool)

(assert (=> d!2208836 m!7786924))

(assert (=> b!7064320 d!2208836))

(declare-fun d!2208838 () Bool)

(declare-fun c!1317113 () Bool)

(assert (=> d!2208838 (= c!1317113 (isEmpty!39809 s!7408))))

(declare-fun e!4247140 () Bool)

(assert (=> d!2208838 (= (matchZipper!3148 lt!2539216 s!7408) e!4247140)))

(declare-fun b!7064584 () Bool)

(assert (=> b!7064584 (= e!4247140 (nullableZipper!2678 lt!2539216))))

(declare-fun b!7064585 () Bool)

(assert (=> b!7064585 (= e!4247140 (matchZipper!3148 (derivationStepZipper!3058 lt!2539216 (head!14384 s!7408)) (tail!13764 s!7408)))))

(assert (= (and d!2208838 c!1317113) b!7064584))

(assert (= (and d!2208838 (not c!1317113)) b!7064585))

(declare-fun m!7786926 () Bool)

(assert (=> d!2208838 m!7786926))

(declare-fun m!7786928 () Bool)

(assert (=> b!7064584 m!7786928))

(declare-fun m!7786930 () Bool)

(assert (=> b!7064585 m!7786930))

(assert (=> b!7064585 m!7786930))

(declare-fun m!7786932 () Bool)

(assert (=> b!7064585 m!7786932))

(declare-fun m!7786934 () Bool)

(assert (=> b!7064585 m!7786934))

(assert (=> b!7064585 m!7786932))

(assert (=> b!7064585 m!7786934))

(declare-fun m!7786936 () Bool)

(assert (=> b!7064585 m!7786936))

(assert (=> start!685638 d!2208838))

(declare-fun bs!1879508 () Bool)

(declare-fun d!2208840 () Bool)

(assert (= bs!1879508 (and d!2208840 b!7064306)))

(declare-fun lambda!423253 () Int)

(assert (=> bs!1879508 (= lambda!423253 lambda!423168)))

(assert (=> d!2208840 true))

(assert (=> d!2208840 (= (appendTo!729 z1!570 ct2!306) (map!15945 z1!570 lambda!423253))))

(declare-fun bs!1879509 () Bool)

(assert (= bs!1879509 d!2208840))

(declare-fun m!7786938 () Bool)

(assert (=> bs!1879509 m!7786938))

(assert (=> start!685638 d!2208840))

(declare-fun bs!1879510 () Bool)

(declare-fun d!2208842 () Bool)

(assert (= bs!1879510 (and d!2208842 b!7064306)))

(declare-fun lambda!423256 () Int)

(assert (=> bs!1879510 (= lambda!423256 lambda!423169)))

(assert (=> d!2208842 (= (inv!86880 ct2!306) (forall!16556 (exprs!7104 ct2!306) lambda!423256))))

(declare-fun bs!1879511 () Bool)

(assert (= bs!1879511 d!2208842))

(declare-fun m!7786940 () Bool)

(assert (=> bs!1879511 m!7786940))

(assert (=> start!685638 d!2208842))

(declare-fun d!2208844 () Bool)

(declare-fun c!1317115 () Bool)

(assert (=> d!2208844 (= c!1317115 (isEmpty!39809 s!7408))))

(declare-fun e!4247141 () Bool)

(assert (=> d!2208844 (= (matchZipper!3148 lt!2539224 s!7408) e!4247141)))

(declare-fun b!7064586 () Bool)

(assert (=> b!7064586 (= e!4247141 (nullableZipper!2678 lt!2539224))))

(declare-fun b!7064587 () Bool)

(assert (=> b!7064587 (= e!4247141 (matchZipper!3148 (derivationStepZipper!3058 lt!2539224 (head!14384 s!7408)) (tail!13764 s!7408)))))

(assert (= (and d!2208844 c!1317115) b!7064586))

(assert (= (and d!2208844 (not c!1317115)) b!7064587))

(assert (=> d!2208844 m!7786926))

(declare-fun m!7786942 () Bool)

(assert (=> b!7064586 m!7786942))

(assert (=> b!7064587 m!7786930))

(assert (=> b!7064587 m!7786930))

(declare-fun m!7786944 () Bool)

(assert (=> b!7064587 m!7786944))

(assert (=> b!7064587 m!7786934))

(assert (=> b!7064587 m!7786944))

(assert (=> b!7064587 m!7786934))

(declare-fun m!7786946 () Bool)

(assert (=> b!7064587 m!7786946))

(assert (=> b!7064325 d!2208844))

(assert (=> b!7064325 d!2208770))

(declare-fun bm!641958 () Bool)

(declare-fun call!641963 () (Set Context!13208))

(assert (=> bm!641958 (= call!641963 (derivationStepZipperDown!2242 (h!74675 (exprs!7104 lt!2539248)) (Context!13209 (t!382132 (exprs!7104 lt!2539248))) (h!74674 s!7408)))))

(declare-fun b!7064589 () Bool)

(declare-fun e!4247142 () (Set Context!13208))

(assert (=> b!7064589 (= e!4247142 call!641963)))

(declare-fun b!7064590 () Bool)

(assert (=> b!7064590 (= e!4247142 (as set.empty (Set Context!13208)))))

(declare-fun b!7064591 () Bool)

(declare-fun e!4247144 () (Set Context!13208))

(assert (=> b!7064591 (= e!4247144 e!4247142)))

(declare-fun c!1317116 () Bool)

(assert (=> b!7064591 (= c!1317116 (is-Cons!68227 (exprs!7104 lt!2539248)))))

(declare-fun b!7064592 () Bool)

(assert (=> b!7064592 (= e!4247144 (set.union call!641963 (derivationStepZipperUp!2192 (Context!13209 (t!382132 (exprs!7104 lt!2539248))) (h!74674 s!7408))))))

(declare-fun d!2208846 () Bool)

(declare-fun c!1317117 () Bool)

(declare-fun e!4247143 () Bool)

(assert (=> d!2208846 (= c!1317117 e!4247143)))

(declare-fun res!2884650 () Bool)

(assert (=> d!2208846 (=> (not res!2884650) (not e!4247143))))

(assert (=> d!2208846 (= res!2884650 (is-Cons!68227 (exprs!7104 lt!2539248)))))

(assert (=> d!2208846 (= (derivationStepZipperUp!2192 lt!2539248 (h!74674 s!7408)) e!4247144)))

(declare-fun b!7064588 () Bool)

(assert (=> b!7064588 (= e!4247143 (nullable!7291 (h!74675 (exprs!7104 lt!2539248))))))

(assert (= (and d!2208846 res!2884650) b!7064588))

(assert (= (and d!2208846 c!1317117) b!7064592))

(assert (= (and d!2208846 (not c!1317117)) b!7064591))

(assert (= (and b!7064591 c!1317116) b!7064589))

(assert (= (and b!7064591 (not c!1317116)) b!7064590))

(assert (= (or b!7064592 b!7064589) bm!641958))

(declare-fun m!7786948 () Bool)

(assert (=> bm!641958 m!7786948))

(declare-fun m!7786950 () Bool)

(assert (=> b!7064592 m!7786950))

(declare-fun m!7786952 () Bool)

(assert (=> b!7064588 m!7786952))

(assert (=> b!7064305 d!2208846))

(declare-fun bs!1879512 () Bool)

(declare-fun d!2208848 () Bool)

(assert (= bs!1879512 (and d!2208848 b!7064305)))

(declare-fun lambda!423259 () Int)

(assert (=> bs!1879512 (= lambda!423259 lambda!423170)))

(assert (=> d!2208848 true))

(assert (=> d!2208848 (= (derivationStepZipper!3058 lt!2539252 (h!74674 s!7408)) (flatMap!2534 lt!2539252 lambda!423259))))

(declare-fun bs!1879513 () Bool)

(assert (= bs!1879513 d!2208848))

(declare-fun m!7786954 () Bool)

(assert (=> bs!1879513 m!7786954))

(assert (=> b!7064305 d!2208848))

(assert (=> b!7064305 d!2208804))

(declare-fun d!2208850 () Bool)

(assert (=> d!2208850 (= (flatMap!2534 lt!2539252 lambda!423170) (choose!54002 lt!2539252 lambda!423170))))

(declare-fun bs!1879514 () Bool)

(assert (= bs!1879514 d!2208850))

(declare-fun m!7786956 () Bool)

(assert (=> bs!1879514 m!7786956))

(assert (=> b!7064305 d!2208850))

(declare-fun d!2208852 () Bool)

(assert (=> d!2208852 (= (flatMap!2534 lt!2539252 lambda!423170) (dynLambda!27715 lambda!423170 lt!2539248))))

(declare-fun lt!2539536 () Unit!161900)

(assert (=> d!2208852 (= lt!2539536 (choose!54005 lt!2539252 lt!2539248 lambda!423170))))

(assert (=> d!2208852 (= lt!2539252 (set.insert lt!2539248 (as set.empty (Set Context!13208))))))

(assert (=> d!2208852 (= (lemmaFlatMapOnSingletonSet!2043 lt!2539252 lt!2539248 lambda!423170) lt!2539536)))

(declare-fun b_lambda!269479 () Bool)

(assert (=> (not b_lambda!269479) (not d!2208852)))

(declare-fun bs!1879515 () Bool)

(assert (= bs!1879515 d!2208852))

(assert (=> bs!1879515 m!7786382))

(declare-fun m!7786958 () Bool)

(assert (=> bs!1879515 m!7786958))

(declare-fun m!7786960 () Bool)

(assert (=> bs!1879515 m!7786960))

(assert (=> bs!1879515 m!7786480))

(assert (=> b!7064305 d!2208852))

(declare-fun d!2208854 () Bool)

(assert (=> d!2208854 (= (isEmpty!39808 (exprs!7104 lt!2539221)) (is-Nil!68227 (exprs!7104 lt!2539221)))))

(assert (=> b!7064324 d!2208854))

(declare-fun bs!1879516 () Bool)

(declare-fun d!2208856 () Bool)

(assert (= bs!1879516 (and d!2208856 b!7064306)))

(declare-fun lambda!423260 () Int)

(assert (=> bs!1879516 (= lambda!423260 lambda!423169)))

(declare-fun bs!1879517 () Bool)

(assert (= bs!1879517 (and d!2208856 d!2208842)))

(assert (=> bs!1879517 (= lambda!423260 lambda!423256)))

(assert (=> d!2208856 (= (inv!86880 setElem!50070) (forall!16556 (exprs!7104 setElem!50070) lambda!423260))))

(declare-fun bs!1879518 () Bool)

(assert (= bs!1879518 d!2208856))

(declare-fun m!7786962 () Bool)

(assert (=> bs!1879518 m!7786962))

(assert (=> setNonEmpty!50070 d!2208856))

(declare-fun bm!641959 () Bool)

(declare-fun call!641964 () (Set Context!13208))

(assert (=> bm!641959 (= call!641964 (derivationStepZipperDown!2242 (h!74675 (exprs!7104 lt!2539217)) (Context!13209 (t!382132 (exprs!7104 lt!2539217))) (h!74674 s!7408)))))

(declare-fun b!7064596 () Bool)

(declare-fun e!4247145 () (Set Context!13208))

(assert (=> b!7064596 (= e!4247145 call!641964)))

(declare-fun b!7064597 () Bool)

(assert (=> b!7064597 (= e!4247145 (as set.empty (Set Context!13208)))))

(declare-fun b!7064598 () Bool)

(declare-fun e!4247147 () (Set Context!13208))

(assert (=> b!7064598 (= e!4247147 e!4247145)))

(declare-fun c!1317120 () Bool)

(assert (=> b!7064598 (= c!1317120 (is-Cons!68227 (exprs!7104 lt!2539217)))))

(declare-fun b!7064599 () Bool)

(assert (=> b!7064599 (= e!4247147 (set.union call!641964 (derivationStepZipperUp!2192 (Context!13209 (t!382132 (exprs!7104 lt!2539217))) (h!74674 s!7408))))))

(declare-fun d!2208858 () Bool)

(declare-fun c!1317121 () Bool)

(declare-fun e!4247146 () Bool)

(assert (=> d!2208858 (= c!1317121 e!4247146)))

(declare-fun res!2884651 () Bool)

(assert (=> d!2208858 (=> (not res!2884651) (not e!4247146))))

(assert (=> d!2208858 (= res!2884651 (is-Cons!68227 (exprs!7104 lt!2539217)))))

(assert (=> d!2208858 (= (derivationStepZipperUp!2192 lt!2539217 (h!74674 s!7408)) e!4247147)))

(declare-fun b!7064595 () Bool)

(assert (=> b!7064595 (= e!4247146 (nullable!7291 (h!74675 (exprs!7104 lt!2539217))))))

(assert (= (and d!2208858 res!2884651) b!7064595))

(assert (= (and d!2208858 c!1317121) b!7064599))

(assert (= (and d!2208858 (not c!1317121)) b!7064598))

(assert (= (and b!7064598 c!1317120) b!7064596))

(assert (= (and b!7064598 (not c!1317120)) b!7064597))

(assert (= (or b!7064599 b!7064596) bm!641959))

(declare-fun m!7786964 () Bool)

(assert (=> bm!641959 m!7786964))

(declare-fun m!7786966 () Bool)

(assert (=> b!7064599 m!7786966))

(declare-fun m!7786968 () Bool)

(assert (=> b!7064595 m!7786968))

(assert (=> b!7064308 d!2208858))

(assert (=> b!7064308 d!2208770))

(declare-fun d!2208860 () Bool)

(assert (=> d!2208860 (= (flatMap!2534 lt!2539224 lambda!423170) (dynLambda!27715 lambda!423170 lt!2539217))))

(declare-fun lt!2539537 () Unit!161900)

(assert (=> d!2208860 (= lt!2539537 (choose!54005 lt!2539224 lt!2539217 lambda!423170))))

(assert (=> d!2208860 (= lt!2539224 (set.insert lt!2539217 (as set.empty (Set Context!13208))))))

(assert (=> d!2208860 (= (lemmaFlatMapOnSingletonSet!2043 lt!2539224 lt!2539217 lambda!423170) lt!2539537)))

(declare-fun b_lambda!269481 () Bool)

(assert (=> (not b_lambda!269481) (not d!2208860)))

(declare-fun bs!1879519 () Bool)

(assert (= bs!1879519 d!2208860))

(assert (=> bs!1879519 m!7786498))

(declare-fun m!7786970 () Bool)

(assert (=> bs!1879519 m!7786970))

(declare-fun m!7786972 () Bool)

(assert (=> bs!1879519 m!7786972))

(assert (=> bs!1879519 m!7786494))

(assert (=> b!7064308 d!2208860))

(declare-fun d!2208862 () Bool)

(assert (=> d!2208862 (= (flatMap!2534 lt!2539224 lambda!423170) (choose!54002 lt!2539224 lambda!423170))))

(declare-fun bs!1879520 () Bool)

(assert (= bs!1879520 d!2208862))

(declare-fun m!7786974 () Bool)

(assert (=> bs!1879520 m!7786974))

(assert (=> b!7064308 d!2208862))

(declare-fun bs!1879521 () Bool)

(declare-fun d!2208864 () Bool)

(assert (= bs!1879521 (and d!2208864 b!7064305)))

(declare-fun lambda!423261 () Int)

(assert (=> bs!1879521 (= lambda!423261 lambda!423170)))

(declare-fun bs!1879522 () Bool)

(assert (= bs!1879522 (and d!2208864 d!2208848)))

(assert (=> bs!1879522 (= lambda!423261 lambda!423259)))

(assert (=> d!2208864 true))

(assert (=> d!2208864 (= (derivationStepZipper!3058 lt!2539224 (h!74674 s!7408)) (flatMap!2534 lt!2539224 lambda!423261))))

(declare-fun bs!1879523 () Bool)

(assert (= bs!1879523 d!2208864))

(declare-fun m!7786976 () Bool)

(assert (=> bs!1879523 m!7786976))

(assert (=> b!7064308 d!2208864))

(assert (=> b!7064327 d!2208770))

(declare-fun d!2208866 () Bool)

(declare-fun c!1317122 () Bool)

(assert (=> d!2208866 (= c!1317122 (isEmpty!39809 (t!382131 s!7408)))))

(declare-fun e!4247148 () Bool)

(assert (=> d!2208866 (= (matchZipper!3148 lt!2539258 (t!382131 s!7408)) e!4247148)))

(declare-fun b!7064600 () Bool)

(assert (=> b!7064600 (= e!4247148 (nullableZipper!2678 lt!2539258))))

(declare-fun b!7064601 () Bool)

(assert (=> b!7064601 (= e!4247148 (matchZipper!3148 (derivationStepZipper!3058 lt!2539258 (head!14384 (t!382131 s!7408))) (tail!13764 (t!382131 s!7408))))))

(assert (= (and d!2208866 c!1317122) b!7064600))

(assert (= (and d!2208866 (not c!1317122)) b!7064601))

(assert (=> d!2208866 m!7786804))

(declare-fun m!7786978 () Bool)

(assert (=> b!7064600 m!7786978))

(assert (=> b!7064601 m!7786808))

(assert (=> b!7064601 m!7786808))

(declare-fun m!7786980 () Bool)

(assert (=> b!7064601 m!7786980))

(assert (=> b!7064601 m!7786812))

(assert (=> b!7064601 m!7786980))

(assert (=> b!7064601 m!7786812))

(declare-fun m!7786982 () Bool)

(assert (=> b!7064601 m!7786982))

(assert (=> b!7064327 d!2208866))

(declare-fun d!2208868 () Bool)

(declare-fun c!1317123 () Bool)

(assert (=> d!2208868 (= c!1317123 (isEmpty!39809 (t!382131 s!7408)))))

(declare-fun e!4247149 () Bool)

(assert (=> d!2208868 (= (matchZipper!3148 lt!2539219 (t!382131 s!7408)) e!4247149)))

(declare-fun b!7064602 () Bool)

(assert (=> b!7064602 (= e!4247149 (nullableZipper!2678 lt!2539219))))

(declare-fun b!7064603 () Bool)

(assert (=> b!7064603 (= e!4247149 (matchZipper!3148 (derivationStepZipper!3058 lt!2539219 (head!14384 (t!382131 s!7408))) (tail!13764 (t!382131 s!7408))))))

(assert (= (and d!2208868 c!1317123) b!7064602))

(assert (= (and d!2208868 (not c!1317123)) b!7064603))

(assert (=> d!2208868 m!7786804))

(declare-fun m!7786984 () Bool)

(assert (=> b!7064602 m!7786984))

(assert (=> b!7064603 m!7786808))

(assert (=> b!7064603 m!7786808))

(declare-fun m!7786986 () Bool)

(assert (=> b!7064603 m!7786986))

(assert (=> b!7064603 m!7786812))

(assert (=> b!7064603 m!7786986))

(assert (=> b!7064603 m!7786812))

(declare-fun m!7786988 () Bool)

(assert (=> b!7064603 m!7786988))

(assert (=> b!7064327 d!2208868))

(declare-fun d!2208870 () Bool)

(declare-fun e!4247150 () Bool)

(assert (=> d!2208870 (= (matchZipper!3148 (set.union lt!2539258 lt!2539228) (t!382131 s!7408)) e!4247150)))

(declare-fun res!2884652 () Bool)

(assert (=> d!2208870 (=> res!2884652 e!4247150)))

(assert (=> d!2208870 (= res!2884652 (matchZipper!3148 lt!2539258 (t!382131 s!7408)))))

(declare-fun lt!2539538 () Unit!161900)

(assert (=> d!2208870 (= lt!2539538 (choose!54009 lt!2539258 lt!2539228 (t!382131 s!7408)))))

(assert (=> d!2208870 (= (lemmaZipperConcatMatchesSameAsBothZippers!1621 lt!2539258 lt!2539228 (t!382131 s!7408)) lt!2539538)))

(declare-fun b!7064604 () Bool)

(assert (=> b!7064604 (= e!4247150 (matchZipper!3148 lt!2539228 (t!382131 s!7408)))))

(assert (= (and d!2208870 (not res!2884652)) b!7064604))

(declare-fun m!7786990 () Bool)

(assert (=> d!2208870 m!7786990))

(assert (=> d!2208870 m!7786414))

(declare-fun m!7786992 () Bool)

(assert (=> d!2208870 m!7786992))

(assert (=> b!7064604 m!7786506))

(assert (=> b!7064327 d!2208870))

(declare-fun d!2208872 () Bool)

(declare-fun c!1317124 () Bool)

(assert (=> d!2208872 (= c!1317124 (isEmpty!39809 (t!382131 s!7408)))))

(declare-fun e!4247151 () Bool)

(assert (=> d!2208872 (= (matchZipper!3148 lt!2539263 (t!382131 s!7408)) e!4247151)))

(declare-fun b!7064605 () Bool)

(assert (=> b!7064605 (= e!4247151 (nullableZipper!2678 lt!2539263))))

(declare-fun b!7064606 () Bool)

(assert (=> b!7064606 (= e!4247151 (matchZipper!3148 (derivationStepZipper!3058 lt!2539263 (head!14384 (t!382131 s!7408))) (tail!13764 (t!382131 s!7408))))))

(assert (= (and d!2208872 c!1317124) b!7064605))

(assert (= (and d!2208872 (not c!1317124)) b!7064606))

(assert (=> d!2208872 m!7786804))

(declare-fun m!7786994 () Bool)

(assert (=> b!7064605 m!7786994))

(assert (=> b!7064606 m!7786808))

(assert (=> b!7064606 m!7786808))

(declare-fun m!7786996 () Bool)

(assert (=> b!7064606 m!7786996))

(assert (=> b!7064606 m!7786812))

(assert (=> b!7064606 m!7786996))

(assert (=> b!7064606 m!7786812))

(declare-fun m!7786998 () Bool)

(assert (=> b!7064606 m!7786998))

(assert (=> b!7064327 d!2208872))

(declare-fun d!2208874 () Bool)

(declare-fun c!1317125 () Bool)

(assert (=> d!2208874 (= c!1317125 (isEmpty!39809 (_2!37412 lt!2539260)))))

(declare-fun e!4247152 () Bool)

(assert (=> d!2208874 (= (matchZipper!3148 lt!2539209 (_2!37412 lt!2539260)) e!4247152)))

(declare-fun b!7064607 () Bool)

(assert (=> b!7064607 (= e!4247152 (nullableZipper!2678 lt!2539209))))

(declare-fun b!7064608 () Bool)

(assert (=> b!7064608 (= e!4247152 (matchZipper!3148 (derivationStepZipper!3058 lt!2539209 (head!14384 (_2!37412 lt!2539260))) (tail!13764 (_2!37412 lt!2539260))))))

(assert (= (and d!2208874 c!1317125) b!7064607))

(assert (= (and d!2208874 (not c!1317125)) b!7064608))

(declare-fun m!7787000 () Bool)

(assert (=> d!2208874 m!7787000))

(declare-fun m!7787002 () Bool)

(assert (=> b!7064607 m!7787002))

(declare-fun m!7787004 () Bool)

(assert (=> b!7064608 m!7787004))

(assert (=> b!7064608 m!7787004))

(declare-fun m!7787006 () Bool)

(assert (=> b!7064608 m!7787006))

(declare-fun m!7787008 () Bool)

(assert (=> b!7064608 m!7787008))

(assert (=> b!7064608 m!7787006))

(assert (=> b!7064608 m!7787008))

(declare-fun m!7787010 () Bool)

(assert (=> b!7064608 m!7787010))

(assert (=> b!7064307 d!2208874))

(assert (=> b!7064326 d!2208770))

(declare-fun b!7064609 () Bool)

(declare-fun c!1317126 () Bool)

(assert (=> b!7064609 (= c!1317126 (is-Star!17608 (h!74675 (exprs!7104 lt!2539221))))))

(declare-fun e!4247156 () (Set Context!13208))

(declare-fun e!4247157 () (Set Context!13208))

(assert (=> b!7064609 (= e!4247156 e!4247157)))

(declare-fun d!2208876 () Bool)

(declare-fun c!1317129 () Bool)

(assert (=> d!2208876 (= c!1317129 (and (is-ElementMatch!17608 (h!74675 (exprs!7104 lt!2539221))) (= (c!1317027 (h!74675 (exprs!7104 lt!2539221))) (h!74674 s!7408))))))

(declare-fun e!4247155 () (Set Context!13208))

(assert (=> d!2208876 (= (derivationStepZipperDown!2242 (h!74675 (exprs!7104 lt!2539221)) lt!2539217 (h!74674 s!7408)) e!4247155)))

(declare-fun b!7064610 () Bool)

(declare-fun e!4247153 () Bool)

(assert (=> b!7064610 (= e!4247153 (nullable!7291 (regOne!35728 (h!74675 (exprs!7104 lt!2539221)))))))

(declare-fun bm!641960 () Bool)

(declare-fun call!641969 () List!68351)

(declare-fun c!1317127 () Bool)

(declare-fun c!1317130 () Bool)

(assert (=> bm!641960 (= call!641969 ($colon$colon!2639 (exprs!7104 lt!2539217) (ite (or c!1317130 c!1317127) (regTwo!35728 (h!74675 (exprs!7104 lt!2539221))) (h!74675 (exprs!7104 lt!2539221)))))))

(declare-fun b!7064611 () Bool)

(declare-fun call!641965 () (Set Context!13208))

(assert (=> b!7064611 (= e!4247156 call!641965)))

(declare-fun c!1317128 () Bool)

(declare-fun bm!641961 () Bool)

(declare-fun call!641967 () List!68351)

(declare-fun call!641966 () (Set Context!13208))

(assert (=> bm!641961 (= call!641966 (derivationStepZipperDown!2242 (ite c!1317128 (regTwo!35729 (h!74675 (exprs!7104 lt!2539221))) (ite c!1317130 (regTwo!35728 (h!74675 (exprs!7104 lt!2539221))) (ite c!1317127 (regOne!35728 (h!74675 (exprs!7104 lt!2539221))) (reg!17937 (h!74675 (exprs!7104 lt!2539221)))))) (ite (or c!1317128 c!1317130) lt!2539217 (Context!13209 call!641967)) (h!74674 s!7408)))))

(declare-fun b!7064612 () Bool)

(assert (=> b!7064612 (= e!4247157 call!641965)))

(declare-fun b!7064613 () Bool)

(assert (=> b!7064613 (= e!4247155 (set.insert lt!2539217 (as set.empty (Set Context!13208))))))

(declare-fun call!641968 () (Set Context!13208))

(declare-fun bm!641962 () Bool)

(assert (=> bm!641962 (= call!641968 (derivationStepZipperDown!2242 (ite c!1317128 (regOne!35729 (h!74675 (exprs!7104 lt!2539221))) (regOne!35728 (h!74675 (exprs!7104 lt!2539221)))) (ite c!1317128 lt!2539217 (Context!13209 call!641969)) (h!74674 s!7408)))))

(declare-fun b!7064614 () Bool)

(declare-fun e!4247158 () (Set Context!13208))

(assert (=> b!7064614 (= e!4247158 e!4247156)))

(assert (=> b!7064614 (= c!1317127 (is-Concat!26453 (h!74675 (exprs!7104 lt!2539221))))))

(declare-fun b!7064615 () Bool)

(declare-fun call!641970 () (Set Context!13208))

(assert (=> b!7064615 (= e!4247158 (set.union call!641968 call!641970))))

(declare-fun b!7064616 () Bool)

(declare-fun e!4247154 () (Set Context!13208))

(assert (=> b!7064616 (= e!4247154 (set.union call!641968 call!641966))))

(declare-fun bm!641963 () Bool)

(assert (=> bm!641963 (= call!641965 call!641970)))

(declare-fun b!7064617 () Bool)

(assert (=> b!7064617 (= e!4247155 e!4247154)))

(assert (=> b!7064617 (= c!1317128 (is-Union!17608 (h!74675 (exprs!7104 lt!2539221))))))

(declare-fun bm!641964 () Bool)

(assert (=> bm!641964 (= call!641967 call!641969)))

(declare-fun b!7064618 () Bool)

(assert (=> b!7064618 (= c!1317130 e!4247153)))

(declare-fun res!2884653 () Bool)

(assert (=> b!7064618 (=> (not res!2884653) (not e!4247153))))

(assert (=> b!7064618 (= res!2884653 (is-Concat!26453 (h!74675 (exprs!7104 lt!2539221))))))

(assert (=> b!7064618 (= e!4247154 e!4247158)))

(declare-fun bm!641965 () Bool)

(assert (=> bm!641965 (= call!641970 call!641966)))

(declare-fun b!7064619 () Bool)

(assert (=> b!7064619 (= e!4247157 (as set.empty (Set Context!13208)))))

(assert (= (and d!2208876 c!1317129) b!7064613))

(assert (= (and d!2208876 (not c!1317129)) b!7064617))

(assert (= (and b!7064617 c!1317128) b!7064616))

(assert (= (and b!7064617 (not c!1317128)) b!7064618))

(assert (= (and b!7064618 res!2884653) b!7064610))

(assert (= (and b!7064618 c!1317130) b!7064615))

(assert (= (and b!7064618 (not c!1317130)) b!7064614))

(assert (= (and b!7064614 c!1317127) b!7064611))

(assert (= (and b!7064614 (not c!1317127)) b!7064609))

(assert (= (and b!7064609 c!1317126) b!7064612))

(assert (= (and b!7064609 (not c!1317126)) b!7064619))

(assert (= (or b!7064611 b!7064612) bm!641964))

(assert (= (or b!7064611 b!7064612) bm!641963))

(assert (= (or b!7064615 bm!641963) bm!641965))

(assert (= (or b!7064615 bm!641964) bm!641960))

(assert (= (or b!7064616 b!7064615) bm!641962))

(assert (= (or b!7064616 bm!641965) bm!641961))

(declare-fun m!7787012 () Bool)

(assert (=> bm!641962 m!7787012))

(declare-fun m!7787014 () Bool)

(assert (=> bm!641960 m!7787014))

(assert (=> b!7064610 m!7786844))

(assert (=> b!7064613 m!7786494))

(declare-fun m!7787016 () Bool)

(assert (=> bm!641961 m!7787016))

(assert (=> b!7064326 d!2208876))

(assert (=> b!7064326 d!2208858))

(assert (=> b!7064326 d!2208784))

(declare-fun lt!2539539 () List!68351)

(declare-fun e!4247159 () Bool)

(declare-fun b!7064623 () Bool)

(assert (=> b!7064623 (= e!4247159 (or (not (= (exprs!7104 ct2!306) Nil!68227)) (= lt!2539539 (exprs!7104 lt!2539221))))))

(declare-fun d!2208878 () Bool)

(assert (=> d!2208878 e!4247159))

(declare-fun res!2884655 () Bool)

(assert (=> d!2208878 (=> (not res!2884655) (not e!4247159))))

(assert (=> d!2208878 (= res!2884655 (= (content!13733 lt!2539539) (set.union (content!13733 (exprs!7104 lt!2539221)) (content!13733 (exprs!7104 ct2!306)))))))

(declare-fun e!4247160 () List!68351)

(assert (=> d!2208878 (= lt!2539539 e!4247160)))

(declare-fun c!1317131 () Bool)

(assert (=> d!2208878 (= c!1317131 (is-Nil!68227 (exprs!7104 lt!2539221)))))

(assert (=> d!2208878 (= (++!15713 (exprs!7104 lt!2539221) (exprs!7104 ct2!306)) lt!2539539)))

(declare-fun b!7064621 () Bool)

(assert (=> b!7064621 (= e!4247160 (Cons!68227 (h!74675 (exprs!7104 lt!2539221)) (++!15713 (t!382132 (exprs!7104 lt!2539221)) (exprs!7104 ct2!306))))))

(declare-fun b!7064620 () Bool)

(assert (=> b!7064620 (= e!4247160 (exprs!7104 ct2!306))))

(declare-fun b!7064622 () Bool)

(declare-fun res!2884654 () Bool)

(assert (=> b!7064622 (=> (not res!2884654) (not e!4247159))))

(assert (=> b!7064622 (= res!2884654 (= (size!41181 lt!2539539) (+ (size!41181 (exprs!7104 lt!2539221)) (size!41181 (exprs!7104 ct2!306)))))))

(assert (= (and d!2208878 c!1317131) b!7064620))

(assert (= (and d!2208878 (not c!1317131)) b!7064621))

(assert (= (and d!2208878 res!2884655) b!7064622))

(assert (= (and b!7064622 res!2884654) b!7064623))

(declare-fun m!7787018 () Bool)

(assert (=> d!2208878 m!7787018))

(declare-fun m!7787020 () Bool)

(assert (=> d!2208878 m!7787020))

(assert (=> d!2208878 m!7786746))

(declare-fun m!7787022 () Bool)

(assert (=> b!7064621 m!7787022))

(declare-fun m!7787024 () Bool)

(assert (=> b!7064622 m!7787024))

(declare-fun m!7787026 () Bool)

(assert (=> b!7064622 m!7787026))

(assert (=> b!7064622 m!7786754))

(assert (=> b!7064306 d!2208878))

(assert (=> b!7064306 d!2208804))

(declare-fun d!2208880 () Bool)

(declare-fun e!4247163 () Bool)

(assert (=> d!2208880 e!4247163))

(declare-fun res!2884658 () Bool)

(assert (=> d!2208880 (=> (not res!2884658) (not e!4247163))))

(declare-fun lt!2539542 () Context!13208)

(assert (=> d!2208880 (= res!2884658 (= lt!2539225 (dynLambda!27714 lambda!423168 lt!2539542)))))

(declare-fun choose!54011 ((Set Context!13208) Int Context!13208) Context!13208)

(assert (=> d!2208880 (= lt!2539542 (choose!54011 z1!570 lambda!423168 lt!2539225))))

(assert (=> d!2208880 (set.member lt!2539225 (map!15945 z1!570 lambda!423168))))

(assert (=> d!2208880 (= (mapPost2!437 z1!570 lambda!423168 lt!2539225) lt!2539542)))

(declare-fun b!7064627 () Bool)

(assert (=> b!7064627 (= e!4247163 (set.member lt!2539542 z1!570))))

(assert (= (and d!2208880 res!2884658) b!7064627))

(declare-fun b_lambda!269483 () Bool)

(assert (=> (not b_lambda!269483) (not d!2208880)))

(declare-fun m!7787028 () Bool)

(assert (=> d!2208880 m!7787028))

(declare-fun m!7787030 () Bool)

(assert (=> d!2208880 m!7787030))

(declare-fun m!7787032 () Bool)

(assert (=> d!2208880 m!7787032))

(declare-fun m!7787034 () Bool)

(assert (=> d!2208880 m!7787034))

(declare-fun m!7787036 () Bool)

(assert (=> b!7064627 m!7787036))

(assert (=> b!7064306 d!2208880))

(declare-fun d!2208882 () Bool)

(declare-fun e!4247164 () Bool)

(assert (=> d!2208882 e!4247164))

(declare-fun res!2884659 () Bool)

(assert (=> d!2208882 (=> (not res!2884659) (not e!4247164))))

(declare-fun lt!2539543 () Context!13208)

(assert (=> d!2208882 (= res!2884659 (dynLambda!27716 lambda!423167 lt!2539543))))

(assert (=> d!2208882 (= lt!2539543 (getWitness!1691 (toList!10949 lt!2539216) lambda!423167))))

(assert (=> d!2208882 (exists!3627 lt!2539216 lambda!423167)))

(assert (=> d!2208882 (= (getWitness!1689 lt!2539216 lambda!423167) lt!2539543)))

(declare-fun b!7064628 () Bool)

(assert (=> b!7064628 (= e!4247164 (set.member lt!2539543 lt!2539216))))

(assert (= (and d!2208882 res!2884659) b!7064628))

(declare-fun b_lambda!269485 () Bool)

(assert (=> (not b_lambda!269485) (not d!2208882)))

(declare-fun m!7787038 () Bool)

(assert (=> d!2208882 m!7787038))

(assert (=> d!2208882 m!7786490))

(assert (=> d!2208882 m!7786490))

(declare-fun m!7787040 () Bool)

(assert (=> d!2208882 m!7787040))

(declare-fun m!7787042 () Bool)

(assert (=> d!2208882 m!7787042))

(declare-fun m!7787044 () Bool)

(assert (=> b!7064628 m!7787044))

(assert (=> b!7064311 d!2208882))

(declare-fun bs!1879524 () Bool)

(declare-fun d!2208884 () Bool)

(assert (= bs!1879524 (and d!2208884 b!7064311)))

(declare-fun lambda!423264 () Int)

(assert (=> bs!1879524 (not (= lambda!423264 lambda!423167))))

(declare-fun bs!1879525 () Bool)

(assert (= bs!1879525 (and d!2208884 b!7064317)))

(assert (=> bs!1879525 (not (= lambda!423264 lambda!423171))))

(declare-fun bs!1879526 () Bool)

(assert (= bs!1879526 (and d!2208884 b!7064328)))

(assert (=> bs!1879526 (not (= lambda!423264 lambda!423172))))

(assert (=> d!2208884 true))

(declare-fun order!28363 () Int)

(declare-fun dynLambda!27717 (Int Int) Int)

(assert (=> d!2208884 (< (dynLambda!27717 order!28363 lambda!423167) (dynLambda!27717 order!28363 lambda!423264))))

(declare-fun forall!16557 (List!68352 Int) Bool)

(assert (=> d!2208884 (= (exists!3626 lt!2539203 lambda!423167) (not (forall!16557 lt!2539203 lambda!423264)))))

(declare-fun bs!1879527 () Bool)

(assert (= bs!1879527 d!2208884))

(declare-fun m!7787046 () Bool)

(assert (=> bs!1879527 m!7787046))

(assert (=> b!7064311 d!2208884))

(declare-fun d!2208886 () Bool)

(declare-fun c!1317132 () Bool)

(assert (=> d!2208886 (= c!1317132 (isEmpty!39809 s!7408))))

(declare-fun e!4247165 () Bool)

(assert (=> d!2208886 (= (matchZipper!3148 lt!2539218 s!7408) e!4247165)))

(declare-fun b!7064631 () Bool)

(assert (=> b!7064631 (= e!4247165 (nullableZipper!2678 lt!2539218))))

(declare-fun b!7064632 () Bool)

(assert (=> b!7064632 (= e!4247165 (matchZipper!3148 (derivationStepZipper!3058 lt!2539218 (head!14384 s!7408)) (tail!13764 s!7408)))))

(assert (= (and d!2208886 c!1317132) b!7064631))

(assert (= (and d!2208886 (not c!1317132)) b!7064632))

(assert (=> d!2208886 m!7786926))

(declare-fun m!7787048 () Bool)

(assert (=> b!7064631 m!7787048))

(assert (=> b!7064632 m!7786930))

(assert (=> b!7064632 m!7786930))

(declare-fun m!7787050 () Bool)

(assert (=> b!7064632 m!7787050))

(assert (=> b!7064632 m!7786934))

(assert (=> b!7064632 m!7787050))

(assert (=> b!7064632 m!7786934))

(declare-fun m!7787052 () Bool)

(assert (=> b!7064632 m!7787052))

(assert (=> b!7064311 d!2208886))

(declare-fun bs!1879528 () Bool)

(declare-fun d!2208888 () Bool)

(assert (= bs!1879528 (and d!2208888 b!7064311)))

(declare-fun lambda!423267 () Int)

(assert (=> bs!1879528 (= lambda!423267 lambda!423167)))

(declare-fun bs!1879529 () Bool)

(assert (= bs!1879529 (and d!2208888 b!7064317)))

(assert (=> bs!1879529 (not (= lambda!423267 lambda!423171))))

(declare-fun bs!1879530 () Bool)

(assert (= bs!1879530 (and d!2208888 b!7064328)))

(assert (=> bs!1879530 (= (= s!7408 (_1!37412 lt!2539260)) (= lambda!423267 lambda!423172))))

(declare-fun bs!1879531 () Bool)

(assert (= bs!1879531 (and d!2208888 d!2208884)))

(assert (=> bs!1879531 (not (= lambda!423267 lambda!423264))))

(assert (=> d!2208888 true))

(assert (=> d!2208888 (exists!3626 lt!2539203 lambda!423267)))

(declare-fun lt!2539546 () Unit!161900)

(declare-fun choose!54012 (List!68352 List!68350) Unit!161900)

(assert (=> d!2208888 (= lt!2539546 (choose!54012 lt!2539203 s!7408))))

(assert (=> d!2208888 (matchZipper!3148 (content!13732 lt!2539203) s!7408)))

(assert (=> d!2208888 (= (lemmaZipperMatchesExistsMatchingContext!529 lt!2539203 s!7408) lt!2539546)))

(declare-fun bs!1879532 () Bool)

(assert (= bs!1879532 d!2208888))

(declare-fun m!7787054 () Bool)

(assert (=> bs!1879532 m!7787054))

(declare-fun m!7787056 () Bool)

(assert (=> bs!1879532 m!7787056))

(declare-fun m!7787058 () Bool)

(assert (=> bs!1879532 m!7787058))

(assert (=> bs!1879532 m!7787058))

(declare-fun m!7787060 () Bool)

(assert (=> bs!1879532 m!7787060))

(assert (=> b!7064311 d!2208888))

(declare-fun d!2208890 () Bool)

(declare-fun e!4247166 () Bool)

(assert (=> d!2208890 e!4247166))

(declare-fun res!2884660 () Bool)

(assert (=> d!2208890 (=> (not res!2884660) (not e!4247166))))

(declare-fun lt!2539547 () List!68352)

(assert (=> d!2208890 (= res!2884660 (noDuplicate!2707 lt!2539547))))

(assert (=> d!2208890 (= lt!2539547 (choose!54003 lt!2539216))))

(assert (=> d!2208890 (= (toList!10949 lt!2539216) lt!2539547)))

(declare-fun b!7064633 () Bool)

(assert (=> b!7064633 (= e!4247166 (= (content!13732 lt!2539547) lt!2539216))))

(assert (= (and d!2208890 res!2884660) b!7064633))

(declare-fun m!7787062 () Bool)

(assert (=> d!2208890 m!7787062))

(declare-fun m!7787064 () Bool)

(assert (=> d!2208890 m!7787064))

(declare-fun m!7787066 () Bool)

(assert (=> b!7064633 m!7787066))

(assert (=> b!7064311 d!2208890))

(declare-fun d!2208892 () Bool)

(declare-fun nullableFct!2793 (Regex!17608) Bool)

(assert (=> d!2208892 (= (nullable!7291 (h!74675 (exprs!7104 lt!2539221))) (nullableFct!2793 (h!74675 (exprs!7104 lt!2539221))))))

(declare-fun bs!1879533 () Bool)

(assert (= bs!1879533 d!2208892))

(declare-fun m!7787068 () Bool)

(assert (=> bs!1879533 m!7787068))

(assert (=> b!7064310 d!2208892))

(declare-fun d!2208894 () Bool)

(assert (=> d!2208894 (= (tail!13765 (exprs!7104 lt!2539221)) (t!382132 (exprs!7104 lt!2539221)))))

(assert (=> b!7064310 d!2208894))

(declare-fun bs!1879534 () Bool)

(declare-fun d!2208896 () Bool)

(assert (= bs!1879534 (and d!2208896 d!2208888)))

(declare-fun lambda!423268 () Int)

(assert (=> bs!1879534 (not (= lambda!423268 lambda!423267))))

(declare-fun bs!1879535 () Bool)

(assert (= bs!1879535 (and d!2208896 b!7064317)))

(assert (=> bs!1879535 (not (= lambda!423268 lambda!423171))))

(declare-fun bs!1879536 () Bool)

(assert (= bs!1879536 (and d!2208896 b!7064328)))

(assert (=> bs!1879536 (not (= lambda!423268 lambda!423172))))

(declare-fun bs!1879537 () Bool)

(assert (= bs!1879537 (and d!2208896 b!7064311)))

(assert (=> bs!1879537 (not (= lambda!423268 lambda!423167))))

(declare-fun bs!1879538 () Bool)

(assert (= bs!1879538 (and d!2208896 d!2208884)))

(assert (=> bs!1879538 (= (= lambda!423172 lambda!423167) (= lambda!423268 lambda!423264))))

(assert (=> d!2208896 true))

(assert (=> d!2208896 (< (dynLambda!27717 order!28363 lambda!423172) (dynLambda!27717 order!28363 lambda!423268))))

(assert (=> d!2208896 (= (exists!3626 lt!2539257 lambda!423172) (not (forall!16557 lt!2539257 lambda!423268)))))

(declare-fun bs!1879539 () Bool)

(assert (= bs!1879539 d!2208896))

(declare-fun m!7787070 () Bool)

(assert (=> bs!1879539 m!7787070))

(assert (=> b!7064328 d!2208896))

(declare-fun d!2208898 () Bool)

(declare-fun lt!2539548 () Bool)

(assert (=> d!2208898 (= lt!2539548 (exists!3626 (toList!10949 z1!570) lambda!423172))))

(assert (=> d!2208898 (= lt!2539548 (choose!54006 z1!570 lambda!423172))))

(assert (=> d!2208898 (= (exists!3627 z1!570 lambda!423172) lt!2539548)))

(declare-fun bs!1879540 () Bool)

(assert (= bs!1879540 d!2208898))

(assert (=> bs!1879540 m!7786468))

(assert (=> bs!1879540 m!7786468))

(declare-fun m!7787072 () Bool)

(assert (=> bs!1879540 m!7787072))

(declare-fun m!7787074 () Bool)

(assert (=> bs!1879540 m!7787074))

(assert (=> b!7064328 d!2208898))

(declare-fun d!2208900 () Bool)

(assert (=> d!2208900 (exists!3627 z1!570 lambda!423172)))

(declare-fun lt!2539549 () Unit!161900)

(assert (=> d!2208900 (= lt!2539549 (choose!54007 z1!570 lt!2539221 lambda!423172))))

(assert (=> d!2208900 (set.member lt!2539221 z1!570)))

(assert (=> d!2208900 (= (lemmaContainsThenExists!140 z1!570 lt!2539221 lambda!423172) lt!2539549)))

(declare-fun bs!1879541 () Bool)

(assert (= bs!1879541 d!2208900))

(assert (=> bs!1879541 m!7786448))

(declare-fun m!7787076 () Bool)

(assert (=> bs!1879541 m!7787076))

(assert (=> bs!1879541 m!7786420))

(assert (=> b!7064328 d!2208900))

(declare-fun d!2208902 () Bool)

(assert (=> d!2208902 (= (isEmpty!39809 (_1!37412 lt!2539260)) (is-Nil!68226 (_1!37412 lt!2539260)))))

(assert (=> b!7064328 d!2208902))

(declare-fun d!2208904 () Bool)

(assert (=> d!2208904 (= (isDefined!13642 call!641930) (not (isEmpty!39812 call!641930)))))

(declare-fun bs!1879542 () Bool)

(assert (= bs!1879542 d!2208904))

(declare-fun m!7787078 () Bool)

(assert (=> bs!1879542 m!7787078))

(assert (=> bm!641925 d!2208904))

(assert (=> b!7064312 d!2208806))

(assert (=> b!7064312 d!2208770))

(declare-fun d!2208906 () Bool)

(declare-fun c!1317135 () Bool)

(assert (=> d!2208906 (= c!1317135 (isEmpty!39809 lt!2539246))))

(declare-fun e!4247167 () Bool)

(assert (=> d!2208906 (= (matchZipper!3148 lt!2539242 lt!2539246) e!4247167)))

(declare-fun b!7064634 () Bool)

(assert (=> b!7064634 (= e!4247167 (nullableZipper!2678 lt!2539242))))

(declare-fun b!7064635 () Bool)

(assert (=> b!7064635 (= e!4247167 (matchZipper!3148 (derivationStepZipper!3058 lt!2539242 (head!14384 lt!2539246)) (tail!13764 lt!2539246)))))

(assert (= (and d!2208906 c!1317135) b!7064634))

(assert (= (and d!2208906 (not c!1317135)) b!7064635))

(assert (=> d!2208906 m!7786818))

(declare-fun m!7787080 () Bool)

(assert (=> b!7064634 m!7787080))

(assert (=> b!7064635 m!7786822))

(assert (=> b!7064635 m!7786822))

(declare-fun m!7787082 () Bool)

(assert (=> b!7064635 m!7787082))

(assert (=> b!7064635 m!7786826))

(assert (=> b!7064635 m!7787082))

(assert (=> b!7064635 m!7786826))

(declare-fun m!7787084 () Bool)

(assert (=> b!7064635 m!7787084))

(assert (=> b!7064330 d!2208906))

(declare-fun b!7064640 () Bool)

(declare-fun e!4247170 () Bool)

(declare-fun tp!1941403 () Bool)

(assert (=> b!7064640 (= e!4247170 (and tp_is_empty!44441 tp!1941403))))

(assert (=> b!7064318 (= tp!1941388 e!4247170)))

(assert (= (and b!7064318 (is-Cons!68226 (t!382131 s!7408))) b!7064640))

(declare-fun condSetEmpty!50076 () Bool)

(assert (=> setNonEmpty!50070 (= condSetEmpty!50076 (= setRest!50070 (as set.empty (Set Context!13208))))))

(declare-fun setRes!50076 () Bool)

(assert (=> setNonEmpty!50070 (= tp!1941385 setRes!50076)))

(declare-fun setIsEmpty!50076 () Bool)

(assert (=> setIsEmpty!50076 setRes!50076))

(declare-fun tp!1941408 () Bool)

(declare-fun setNonEmpty!50076 () Bool)

(declare-fun e!4247173 () Bool)

(declare-fun setElem!50076 () Context!13208)

(assert (=> setNonEmpty!50076 (= setRes!50076 (and tp!1941408 (inv!86880 setElem!50076) e!4247173))))

(declare-fun setRest!50076 () (Set Context!13208))

(assert (=> setNonEmpty!50076 (= setRest!50070 (set.union (set.insert setElem!50076 (as set.empty (Set Context!13208))) setRest!50076))))

(declare-fun b!7064645 () Bool)

(declare-fun tp!1941409 () Bool)

(assert (=> b!7064645 (= e!4247173 tp!1941409)))

(assert (= (and setNonEmpty!50070 condSetEmpty!50076) setIsEmpty!50076))

(assert (= (and setNonEmpty!50070 (not condSetEmpty!50076)) setNonEmpty!50076))

(assert (= setNonEmpty!50076 b!7064645))

(declare-fun m!7787086 () Bool)

(assert (=> setNonEmpty!50076 m!7787086))

(declare-fun b!7064650 () Bool)

(declare-fun e!4247176 () Bool)

(declare-fun tp!1941414 () Bool)

(declare-fun tp!1941415 () Bool)

(assert (=> b!7064650 (= e!4247176 (and tp!1941414 tp!1941415))))

(assert (=> b!7064323 (= tp!1941386 e!4247176)))

(assert (= (and b!7064323 (is-Cons!68227 (exprs!7104 setElem!50070))) b!7064650))

(declare-fun b!7064651 () Bool)

(declare-fun e!4247177 () Bool)

(declare-fun tp!1941416 () Bool)

(declare-fun tp!1941417 () Bool)

(assert (=> b!7064651 (= e!4247177 (and tp!1941416 tp!1941417))))

(assert (=> b!7064313 (= tp!1941387 e!4247177)))

(assert (= (and b!7064313 (is-Cons!68227 (exprs!7104 ct2!306))) b!7064651))

(declare-fun b_lambda!269487 () Bool)

(assert (= b_lambda!269483 (or b!7064306 b_lambda!269487)))

(declare-fun bs!1879543 () Bool)

(declare-fun d!2208908 () Bool)

(assert (= bs!1879543 (and d!2208908 b!7064306)))

(declare-fun lt!2539550 () Unit!161900)

(assert (=> bs!1879543 (= lt!2539550 (lemmaConcatPreservesForall!919 (exprs!7104 lt!2539542) (exprs!7104 ct2!306) lambda!423169))))

(assert (=> bs!1879543 (= (dynLambda!27714 lambda!423168 lt!2539542) (Context!13209 (++!15713 (exprs!7104 lt!2539542) (exprs!7104 ct2!306))))))

(declare-fun m!7787088 () Bool)

(assert (=> bs!1879543 m!7787088))

(declare-fun m!7787090 () Bool)

(assert (=> bs!1879543 m!7787090))

(assert (=> d!2208880 d!2208908))

(declare-fun b_lambda!269489 () Bool)

(assert (= b_lambda!269477 (or b!7064305 b_lambda!269489)))

(declare-fun bs!1879544 () Bool)

(declare-fun d!2208910 () Bool)

(assert (= bs!1879544 (and d!2208910 b!7064305)))

(assert (=> bs!1879544 (= (dynLambda!27715 lambda!423170 lt!2539221) (derivationStepZipperUp!2192 lt!2539221 (h!74674 s!7408)))))

(assert (=> bs!1879544 m!7786520))

(assert (=> d!2208816 d!2208910))

(declare-fun b_lambda!269491 () Bool)

(assert (= b_lambda!269481 (or b!7064305 b_lambda!269491)))

(declare-fun bs!1879545 () Bool)

(declare-fun d!2208912 () Bool)

(assert (= bs!1879545 (and d!2208912 b!7064305)))

(assert (=> bs!1879545 (= (dynLambda!27715 lambda!423170 lt!2539217) (derivationStepZipperUp!2192 lt!2539217 (h!74674 s!7408)))))

(assert (=> bs!1879545 m!7786396))

(assert (=> d!2208860 d!2208912))

(declare-fun b_lambda!269493 () Bool)

(assert (= b_lambda!269473 (or b!7064305 b_lambda!269493)))

(declare-fun bs!1879546 () Bool)

(declare-fun d!2208914 () Bool)

(assert (= bs!1879546 (and d!2208914 b!7064305)))

(assert (=> bs!1879546 (= (dynLambda!27715 lambda!423170 lt!2539247) (derivationStepZipperUp!2192 lt!2539247 (h!74674 s!7408)))))

(assert (=> bs!1879546 m!7786470))

(assert (=> d!2208788 d!2208914))

(declare-fun b_lambda!269495 () Bool)

(assert (= b_lambda!269471 (or b!7064306 b_lambda!269495)))

(declare-fun bs!1879547 () Bool)

(declare-fun d!2208916 () Bool)

(assert (= bs!1879547 (and d!2208916 b!7064306)))

(declare-fun lt!2539551 () Unit!161900)

(assert (=> bs!1879547 (= lt!2539551 (lemmaConcatPreservesForall!919 (exprs!7104 lt!2539247) (exprs!7104 ct2!306) lambda!423169))))

(assert (=> bs!1879547 (= (dynLambda!27714 lambda!423168 lt!2539247) (Context!13209 (++!15713 (exprs!7104 lt!2539247) (exprs!7104 ct2!306))))))

(declare-fun m!7787092 () Bool)

(assert (=> bs!1879547 m!7787092))

(declare-fun m!7787094 () Bool)

(assert (=> bs!1879547 m!7787094))

(assert (=> d!2208766 d!2208916))

(declare-fun b_lambda!269497 () Bool)

(assert (= b_lambda!269475 (or b!7064317 b_lambda!269497)))

(declare-fun bs!1879548 () Bool)

(declare-fun d!2208918 () Bool)

(assert (= bs!1879548 (and d!2208918 b!7064317)))

(declare-fun nullableContext!111 (Context!13208) Bool)

(assert (=> bs!1879548 (= (dynLambda!27716 lambda!423171 lt!2539503) (nullableContext!111 lt!2539503))))

(declare-fun m!7787096 () Bool)

(assert (=> bs!1879548 m!7787096))

(assert (=> d!2208796 d!2208918))

(declare-fun b_lambda!269499 () Bool)

(assert (= b_lambda!269485 (or b!7064311 b_lambda!269499)))

(declare-fun bs!1879549 () Bool)

(declare-fun d!2208920 () Bool)

(assert (= bs!1879549 (and d!2208920 b!7064311)))

(assert (=> bs!1879549 (= (dynLambda!27716 lambda!423167 lt!2539543) (matchZipper!3148 (set.insert lt!2539543 (as set.empty (Set Context!13208))) s!7408))))

(declare-fun m!7787098 () Bool)

(assert (=> bs!1879549 m!7787098))

(assert (=> bs!1879549 m!7787098))

(declare-fun m!7787100 () Bool)

(assert (=> bs!1879549 m!7787100))

(assert (=> d!2208882 d!2208920))

(declare-fun b_lambda!269501 () Bool)

(assert (= b_lambda!269479 (or b!7064305 b_lambda!269501)))

(declare-fun bs!1879550 () Bool)

(declare-fun d!2208922 () Bool)

(assert (= bs!1879550 (and d!2208922 b!7064305)))

(assert (=> bs!1879550 (= (dynLambda!27715 lambda!423170 lt!2539248) (derivationStepZipperUp!2192 lt!2539248 (h!74674 s!7408)))))

(assert (=> bs!1879550 m!7786380))

(assert (=> d!2208852 d!2208922))

(push 1)

(assert (not bm!641958))

(assert (not d!2208868))

(assert (not b!7064581))

(assert (not b_lambda!269501))

(assert (not b!7064606))

(assert (not bm!641952))

(assert (not d!2208870))

(assert (not b_lambda!269487))

(assert (not d!2208836))

(assert (not d!2208770))

(assert (not b!7064491))

(assert (not d!2208830))

(assert (not b!7064529))

(assert (not d!2208890))

(assert (not b!7064555))

(assert (not b!7064476))

(assert (not b!7064569))

(assert (not d!2208788))

(assert (not d!2208900))

(assert (not d!2208864))

(assert (not b!7064607))

(assert (not bm!641951))

(assert (not bs!1879549))

(assert (not b!7064602))

(assert (not b!7064610))

(assert (not b_lambda!269497))

(assert (not d!2208812))

(assert (not b!7064640))

(assert (not d!2208906))

(assert (not b!7064475))

(assert (not bs!1879547))

(assert (not b!7064443))

(assert (not b!7064567))

(assert (not b!7064595))

(assert (not bs!1879546))

(assert (not b!7064534))

(assert (not b_lambda!269489))

(assert (not d!2208834))

(assert (not b!7064604))

(assert (not b!7064587))

(assert (not b!7064571))

(assert (not d!2208848))

(assert (not d!2208824))

(assert (not d!2208814))

(assert (not bm!641959))

(assert (not d!2208832))

(assert (not b!7064533))

(assert (not b!7064632))

(assert (not b!7064494))

(assert (not b!7064600))

(assert (not b!7064645))

(assert (not d!2208802))

(assert (not b!7064565))

(assert (not b!7064564))

(assert (not b!7064562))

(assert (not b!7064601))

(assert (not d!2208796))

(assert (not b!7064608))

(assert (not d!2208904))

(assert (not b!7064493))

(assert (not d!2208798))

(assert (not d!2208844))

(assert (not d!2208898))

(assert (not b!7064599))

(assert (not d!2208840))

(assert (not setNonEmpty!50076))

(assert (not b!7064465))

(assert (not d!2208822))

(assert (not d!2208884))

(assert (not b_lambda!269495))

(assert (not d!2208878))

(assert (not b!7064535))

(assert (not b!7064592))

(assert (not d!2208794))

(assert (not b!7064631))

(assert (not b!7064449))

(assert (not b!7064635))

(assert (not b_lambda!269499))

(assert (not b!7064568))

(assert (not b!7064488))

(assert (not d!2208872))

(assert (not d!2208784))

(assert (not d!2208826))

(assert (not b!7064622))

(assert (not d!2208766))

(assert (not b!7064584))

(assert (not d!2208792))

(assert (not b!7064633))

(assert (not d!2208804))

(assert (not d!2208888))

(assert (not d!2208866))

(assert (not d!2208786))

(assert (not b!7064559))

(assert (not d!2208850))

(assert (not b!7064441))

(assert (not b!7064436))

(assert (not b!7064556))

(assert (not b!7064487))

(assert (not d!2208862))

(assert (not b!7064582))

(assert (not d!2208860))

(assert (not b!7064461))

(assert (not d!2208838))

(assert (not b_lambda!269491))

(assert (not d!2208810))

(assert (not b!7064634))

(assert (not bs!1879548))

(assert (not d!2208852))

(assert tp_is_empty!44441)

(assert (not b!7064519))

(assert (not d!2208774))

(assert (not d!2208772))

(assert (not d!2208896))

(assert (not bs!1879550))

(assert (not bm!641962))

(assert (not b!7064585))

(assert (not bm!641957))

(assert (not b!7064650))

(assert (not bm!641953))

(assert (not d!2208886))

(assert (not b!7064588))

(assert (not d!2208880))

(assert (not d!2208806))

(assert (not b!7064495))

(assert (not bs!1879544))

(assert (not b!7064558))

(assert (not b!7064603))

(assert (not bs!1879545))

(assert (not bm!641960))

(assert (not b!7064560))

(assert (not b!7064478))

(assert (not d!2208874))

(assert (not d!2208816))

(assert (not d!2208882))

(assert (not b!7064586))

(assert (not d!2208842))

(assert (not d!2208800))

(assert (not b!7064492))

(assert (not d!2208856))

(assert (not b!7064621))

(assert (not b!7064651))

(assert (not b!7064605))

(assert (not d!2208892))

(assert (not bm!641938))

(assert (not bm!641961))

(assert (not b_lambda!269493))

(assert (not d!2208768))

(assert (not bs!1879543))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

