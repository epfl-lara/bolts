; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!706632 () Bool)

(assert start!706632)

(declare-fun b!7256134 () Bool)

(assert (=> b!7256134 true))

(declare-fun b!7256145 () Bool)

(assert (=> b!7256145 true))

(declare-fun b!7256133 () Bool)

(declare-fun e!4350953 () Bool)

(declare-fun tp_is_empty!46793 () Bool)

(declare-fun tp!2038204 () Bool)

(assert (=> b!7256133 (= e!4350953 (and tp_is_empty!46793 tp!2038204))))

(declare-fun e!4350961 () Bool)

(declare-fun e!4350962 () Bool)

(assert (=> b!7256134 (= e!4350961 (not e!4350962))))

(declare-fun res!2942521 () Bool)

(assert (=> b!7256134 (=> res!2942521 e!4350962)))

(declare-datatypes ((C!37602 0))(
  ( (C!37603 (val!28749 Int)) )
))
(declare-datatypes ((Regex!18664 0))(
  ( (ElementMatch!18664 (c!1349187 C!37602)) (Concat!27509 (regOne!37840 Regex!18664) (regTwo!37840 Regex!18664)) (EmptyExpr!18664) (Star!18664 (reg!18993 Regex!18664)) (EmptyLang!18664) (Union!18664 (regOne!37841 Regex!18664) (regTwo!37841 Regex!18664)) )
))
(declare-datatypes ((List!70572 0))(
  ( (Nil!70448) (Cons!70448 (h!76896 Regex!18664) (t!384636 List!70572)) )
))
(declare-datatypes ((Context!15208 0))(
  ( (Context!15209 (exprs!8104 List!70572)) )
))
(declare-fun lt!2587234 () (Set Context!15208))

(declare-fun lambda!445153 () Int)

(declare-fun exists!4406 ((Set Context!15208) Int) Bool)

(assert (=> b!7256134 (= res!2942521 (not (exists!4406 lt!2587234 lambda!445153)))))

(declare-datatypes ((List!70573 0))(
  ( (Nil!70449) (Cons!70449 (h!76897 Context!15208) (t!384637 List!70573)) )
))
(declare-fun lt!2587224 () List!70573)

(declare-fun exists!4407 (List!70573 Int) Bool)

(assert (=> b!7256134 (exists!4407 lt!2587224 lambda!445153)))

(declare-datatypes ((Unit!163924 0))(
  ( (Unit!163925) )
))
(declare-fun lt!2587219 () Unit!163924)

(declare-datatypes ((List!70574 0))(
  ( (Nil!70450) (Cons!70450 (h!76898 C!37602) (t!384638 List!70574)) )
))
(declare-fun s1!1971 () List!70574)

(declare-fun lemmaZipperMatchesExistsMatchingContext!767 (List!70573 List!70574) Unit!163924)

(assert (=> b!7256134 (= lt!2587219 (lemmaZipperMatchesExistsMatchingContext!767 lt!2587224 (t!384638 s1!1971)))))

(declare-fun toList!11493 ((Set Context!15208)) List!70573)

(assert (=> b!7256134 (= lt!2587224 (toList!11493 lt!2587234))))

(declare-fun b!7256135 () Bool)

(declare-fun e!4350965 () Bool)

(assert (=> b!7256135 (= e!4350962 e!4350965)))

(declare-fun res!2942519 () Bool)

(assert (=> b!7256135 (=> res!2942519 e!4350965)))

(declare-fun ct1!232 () Context!15208)

(declare-fun isEmpty!40569 (List!70572) Bool)

(assert (=> b!7256135 (= res!2942519 (isEmpty!40569 (exprs!8104 ct1!232)))))

(declare-fun lt!2587208 () (Set Context!15208))

(declare-fun derivationStepZipperUp!2488 (Context!15208 C!37602) (Set Context!15208))

(assert (=> b!7256135 (= lt!2587208 (derivationStepZipperUp!2488 ct1!232 (h!76898 s1!1971)))))

(declare-fun lambda!445152 () Int)

(declare-fun lt!2587230 () Context!15208)

(declare-fun lt!2587215 () Unit!163924)

(declare-fun ct2!328 () Context!15208)

(declare-fun lemmaConcatPreservesForall!1471 (List!70572 List!70572 Int) Unit!163924)

(assert (=> b!7256135 (= lt!2587215 (lemmaConcatPreservesForall!1471 (exprs!8104 lt!2587230) (exprs!8104 ct2!328) lambda!445152))))

(declare-fun lt!2587229 () List!70572)

(declare-fun lt!2587220 () List!70574)

(declare-fun matchZipper!3574 ((Set Context!15208) List!70574) Bool)

(assert (=> b!7256135 (matchZipper!3574 (set.insert (Context!15209 lt!2587229) (as set.empty (Set Context!15208))) lt!2587220)))

(declare-fun s2!1849 () List!70574)

(declare-fun ++!16590 (List!70574 List!70574) List!70574)

(assert (=> b!7256135 (= lt!2587220 (++!16590 (t!384638 s1!1971) s2!1849))))

(declare-fun ++!16591 (List!70572 List!70572) List!70572)

(assert (=> b!7256135 (= lt!2587229 (++!16591 (exprs!8104 lt!2587230) (exprs!8104 ct2!328)))))

(declare-fun lt!2587225 () Unit!163924)

(assert (=> b!7256135 (= lt!2587225 (lemmaConcatPreservesForall!1471 (exprs!8104 lt!2587230) (exprs!8104 ct2!328) lambda!445152))))

(declare-fun lt!2587218 () Unit!163924)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!409 (Context!15208 Context!15208 List!70574 List!70574) Unit!163924)

(assert (=> b!7256135 (= lt!2587218 (lemmaConcatenateContextMatchesConcatOfStrings!409 lt!2587230 ct2!328 (t!384638 s1!1971) s2!1849))))

(declare-fun getWitness!2234 ((Set Context!15208) Int) Context!15208)

(assert (=> b!7256135 (= lt!2587230 (getWitness!2234 lt!2587234 lambda!445153))))

(declare-fun b!7256136 () Bool)

(declare-fun e!4350963 () Bool)

(declare-fun e!4350958 () Bool)

(assert (=> b!7256136 (= e!4350963 e!4350958)))

(declare-fun res!2942515 () Bool)

(assert (=> b!7256136 (=> (not res!2942515) (not e!4350958))))

(assert (=> b!7256136 (= res!2942515 (and (not (is-Nil!70448 (exprs!8104 ct1!232))) (is-Cons!70450 s1!1971)))))

(declare-fun lt!2587239 () (Set Context!15208))

(declare-fun lt!2587226 () Context!15208)

(assert (=> b!7256136 (= lt!2587239 (set.insert lt!2587226 (as set.empty (Set Context!15208))))))

(declare-fun lt!2587210 () List!70572)

(assert (=> b!7256136 (= lt!2587226 (Context!15209 lt!2587210))))

(assert (=> b!7256136 (= lt!2587210 (++!16591 (exprs!8104 ct1!232) (exprs!8104 ct2!328)))))

(declare-fun lt!2587228 () Unit!163924)

(assert (=> b!7256136 (= lt!2587228 (lemmaConcatPreservesForall!1471 (exprs!8104 ct1!232) (exprs!8104 ct2!328) lambda!445152))))

(declare-fun b!7256137 () Bool)

(declare-fun e!4350955 () Bool)

(assert (=> b!7256137 (= e!4350965 e!4350955)))

(declare-fun res!2942514 () Bool)

(assert (=> b!7256137 (=> res!2942514 e!4350955)))

(assert (=> b!7256137 (= res!2942514 (isEmpty!40569 lt!2587210))))

(declare-fun lt!2587209 () Unit!163924)

(assert (=> b!7256137 (= lt!2587209 (lemmaConcatPreservesForall!1471 (exprs!8104 ct1!232) (exprs!8104 ct2!328) lambda!445152))))

(declare-fun lt!2587237 () (Set Context!15208))

(assert (=> b!7256137 (= lt!2587237 (derivationStepZipperUp!2488 lt!2587226 (h!76898 s1!1971)))))

(declare-fun lt!2587233 () Unit!163924)

(assert (=> b!7256137 (= lt!2587233 (lemmaConcatPreservesForall!1471 (exprs!8104 ct1!232) (exprs!8104 ct2!328) lambda!445152))))

(declare-fun lt!2587211 () (Set Context!15208))

(declare-fun lt!2587222 () Context!15208)

(declare-fun derivationStepZipperDown!2658 (Regex!18664 Context!15208 C!37602) (Set Context!15208))

(assert (=> b!7256137 (= lt!2587211 (derivationStepZipperDown!2658 (h!76896 (exprs!8104 ct1!232)) lt!2587222 (h!76898 s1!1971)))))

(declare-fun tail!14352 (List!70572) List!70572)

(assert (=> b!7256137 (= lt!2587222 (Context!15209 (tail!14352 (exprs!8104 ct1!232))))))

(declare-fun res!2942518 () Bool)

(assert (=> start!706632 (=> (not res!2942518) (not e!4350963))))

(declare-fun lt!2587227 () (Set Context!15208))

(assert (=> start!706632 (= res!2942518 (matchZipper!3574 lt!2587227 s1!1971))))

(assert (=> start!706632 (= lt!2587227 (set.insert ct1!232 (as set.empty (Set Context!15208))))))

(assert (=> start!706632 e!4350963))

(declare-fun e!4350954 () Bool)

(declare-fun inv!89671 (Context!15208) Bool)

(assert (=> start!706632 (and (inv!89671 ct1!232) e!4350954)))

(assert (=> start!706632 e!4350953))

(declare-fun e!4350964 () Bool)

(assert (=> start!706632 e!4350964))

(declare-fun e!4350959 () Bool)

(assert (=> start!706632 (and (inv!89671 ct2!328) e!4350959)))

(declare-fun b!7256138 () Bool)

(declare-fun res!2942517 () Bool)

(assert (=> b!7256138 (=> (not res!2942517) (not e!4350963))))

(assert (=> b!7256138 (= res!2942517 (matchZipper!3574 (set.insert ct2!328 (as set.empty (Set Context!15208))) s2!1849))))

(declare-fun b!7256139 () Bool)

(declare-fun tp!2038206 () Bool)

(assert (=> b!7256139 (= e!4350959 tp!2038206)))

(declare-fun b!7256140 () Bool)

(declare-fun e!4350960 () Unit!163924)

(declare-fun Unit!163926 () Unit!163924)

(assert (=> b!7256140 (= e!4350960 Unit!163926)))

(declare-fun b!7256141 () Bool)

(declare-fun Unit!163927 () Unit!163924)

(assert (=> b!7256141 (= e!4350960 Unit!163927)))

(declare-fun lt!2587213 () Unit!163924)

(assert (=> b!7256141 (= lt!2587213 (lemmaConcatPreservesForall!1471 (exprs!8104 ct1!232) (exprs!8104 ct2!328) lambda!445152))))

(declare-fun lt!2587212 () (Set Context!15208))

(assert (=> b!7256141 (= lt!2587212 (derivationStepZipperUp!2488 lt!2587222 (h!76898 s1!1971)))))

(declare-fun lt!2587216 () Unit!163924)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1719 ((Set Context!15208) (Set Context!15208) List!70574) Unit!163924)

(assert (=> b!7256141 (= lt!2587216 (lemmaZipperConcatMatchesSameAsBothZippers!1719 lt!2587211 lt!2587212 (t!384638 s1!1971)))))

(declare-fun res!2942520 () Bool)

(assert (=> b!7256141 (= res!2942520 (matchZipper!3574 lt!2587211 (t!384638 s1!1971)))))

(declare-fun e!4350957 () Bool)

(assert (=> b!7256141 (=> res!2942520 e!4350957)))

(assert (=> b!7256141 (= (matchZipper!3574 (set.union lt!2587211 lt!2587212) (t!384638 s1!1971)) e!4350957)))

(declare-fun lt!2587235 () Unit!163924)

(assert (=> b!7256141 (= lt!2587235 (lemmaConcatPreservesForall!1471 (exprs!8104 ct1!232) (exprs!8104 ct2!328) lambda!445152))))

(declare-fun lt!2587232 () (Set Context!15208))

(declare-fun lt!2587236 () Context!15208)

(assert (=> b!7256141 (= lt!2587232 (derivationStepZipperUp!2488 lt!2587236 (h!76898 s1!1971)))))

(declare-fun lt!2587231 () (Set Context!15208))

(declare-fun lt!2587214 () Unit!163924)

(assert (=> b!7256141 (= lt!2587214 (lemmaZipperConcatMatchesSameAsBothZippers!1719 lt!2587231 lt!2587232 lt!2587220))))

(declare-fun res!2942516 () Bool)

(assert (=> b!7256141 (= res!2942516 (matchZipper!3574 lt!2587231 lt!2587220))))

(declare-fun e!4350956 () Bool)

(assert (=> b!7256141 (=> res!2942516 e!4350956)))

(assert (=> b!7256141 (= (matchZipper!3574 (set.union lt!2587231 lt!2587232) lt!2587220) e!4350956)))

(declare-fun b!7256142 () Bool)

(declare-fun tp!2038203 () Bool)

(assert (=> b!7256142 (= e!4350954 tp!2038203)))

(declare-fun b!7256143 () Bool)

(assert (=> b!7256143 (= e!4350956 (matchZipper!3574 lt!2587232 lt!2587220))))

(declare-fun b!7256144 () Bool)

(declare-fun tp!2038205 () Bool)

(assert (=> b!7256144 (= e!4350964 (and tp_is_empty!46793 tp!2038205))))

(assert (=> b!7256145 (= e!4350955 (set.member lt!2587230 lt!2587208))))

(declare-fun tail!14353 (List!70574) List!70574)

(assert (=> b!7256145 (= (tail!14353 (++!16590 s1!1971 s2!1849)) lt!2587220)))

(declare-fun lt!2587238 () Unit!163924)

(assert (=> b!7256145 (= lt!2587238 e!4350960)))

(declare-fun c!1349186 () Bool)

(declare-fun nullable!7924 (Regex!18664) Bool)

(assert (=> b!7256145 (= c!1349186 (nullable!7924 (h!76896 (exprs!8104 ct1!232))))))

(declare-fun lambda!445154 () Int)

(declare-fun flatMap!2829 ((Set Context!15208) Int) (Set Context!15208))

(assert (=> b!7256145 (= (flatMap!2829 lt!2587239 lambda!445154) (derivationStepZipperUp!2488 lt!2587226 (h!76898 s1!1971)))))

(declare-fun lt!2587223 () Unit!163924)

(declare-fun lemmaFlatMapOnSingletonSet!2233 ((Set Context!15208) Context!15208 Int) Unit!163924)

(assert (=> b!7256145 (= lt!2587223 (lemmaFlatMapOnSingletonSet!2233 lt!2587239 lt!2587226 lambda!445154))))

(declare-fun lt!2587217 () Unit!163924)

(assert (=> b!7256145 (= lt!2587217 (lemmaConcatPreservesForall!1471 (exprs!8104 ct1!232) (exprs!8104 ct2!328) lambda!445152))))

(assert (=> b!7256145 (= (flatMap!2829 lt!2587227 lambda!445154) (derivationStepZipperUp!2488 ct1!232 (h!76898 s1!1971)))))

(declare-fun lt!2587221 () Unit!163924)

(assert (=> b!7256145 (= lt!2587221 (lemmaFlatMapOnSingletonSet!2233 lt!2587227 ct1!232 lambda!445154))))

(assert (=> b!7256145 (= lt!2587231 (derivationStepZipperDown!2658 (h!76896 (exprs!8104 ct1!232)) lt!2587236 (h!76898 s1!1971)))))

(assert (=> b!7256145 (= lt!2587236 (Context!15209 (tail!14352 lt!2587210)))))

(declare-fun b!7256146 () Bool)

(assert (=> b!7256146 (= e!4350957 (matchZipper!3574 lt!2587212 (t!384638 s1!1971)))))

(declare-fun b!7256147 () Bool)

(assert (=> b!7256147 (= e!4350958 e!4350961)))

(declare-fun res!2942513 () Bool)

(assert (=> b!7256147 (=> (not res!2942513) (not e!4350961))))

(assert (=> b!7256147 (= res!2942513 (matchZipper!3574 lt!2587234 (t!384638 s1!1971)))))

(declare-fun derivationStepZipper!3442 ((Set Context!15208) C!37602) (Set Context!15208))

(assert (=> b!7256147 (= lt!2587234 (derivationStepZipper!3442 lt!2587227 (h!76898 s1!1971)))))

(assert (= (and start!706632 res!2942518) b!7256138))

(assert (= (and b!7256138 res!2942517) b!7256136))

(assert (= (and b!7256136 res!2942515) b!7256147))

(assert (= (and b!7256147 res!2942513) b!7256134))

(assert (= (and b!7256134 (not res!2942521)) b!7256135))

(assert (= (and b!7256135 (not res!2942519)) b!7256137))

(assert (= (and b!7256137 (not res!2942514)) b!7256145))

(assert (= (and b!7256145 c!1349186) b!7256141))

(assert (= (and b!7256145 (not c!1349186)) b!7256140))

(assert (= (and b!7256141 (not res!2942520)) b!7256146))

(assert (= (and b!7256141 (not res!2942516)) b!7256143))

(assert (= start!706632 b!7256142))

(assert (= (and start!706632 (is-Cons!70450 s1!1971)) b!7256133))

(assert (= (and start!706632 (is-Cons!70450 s2!1849)) b!7256144))

(assert (= start!706632 b!7256139))

(declare-fun m!7937400 () Bool)

(assert (=> b!7256134 m!7937400))

(declare-fun m!7937402 () Bool)

(assert (=> b!7256134 m!7937402))

(declare-fun m!7937404 () Bool)

(assert (=> b!7256134 m!7937404))

(declare-fun m!7937406 () Bool)

(assert (=> b!7256134 m!7937406))

(declare-fun m!7937408 () Bool)

(assert (=> b!7256146 m!7937408))

(declare-fun m!7937410 () Bool)

(assert (=> b!7256141 m!7937410))

(declare-fun m!7937412 () Bool)

(assert (=> b!7256141 m!7937412))

(declare-fun m!7937414 () Bool)

(assert (=> b!7256141 m!7937414))

(declare-fun m!7937416 () Bool)

(assert (=> b!7256141 m!7937416))

(declare-fun m!7937418 () Bool)

(assert (=> b!7256141 m!7937418))

(declare-fun m!7937420 () Bool)

(assert (=> b!7256141 m!7937420))

(assert (=> b!7256141 m!7937420))

(declare-fun m!7937422 () Bool)

(assert (=> b!7256141 m!7937422))

(declare-fun m!7937424 () Bool)

(assert (=> b!7256141 m!7937424))

(declare-fun m!7937426 () Bool)

(assert (=> b!7256141 m!7937426))

(declare-fun m!7937428 () Bool)

(assert (=> b!7256136 m!7937428))

(declare-fun m!7937430 () Bool)

(assert (=> b!7256136 m!7937430))

(assert (=> b!7256136 m!7937420))

(declare-fun m!7937432 () Bool)

(assert (=> b!7256147 m!7937432))

(declare-fun m!7937434 () Bool)

(assert (=> b!7256147 m!7937434))

(declare-fun m!7937436 () Bool)

(assert (=> b!7256138 m!7937436))

(assert (=> b!7256138 m!7937436))

(declare-fun m!7937438 () Bool)

(assert (=> b!7256138 m!7937438))

(declare-fun m!7937440 () Bool)

(assert (=> b!7256145 m!7937440))

(declare-fun m!7937442 () Bool)

(assert (=> b!7256145 m!7937442))

(declare-fun m!7937444 () Bool)

(assert (=> b!7256145 m!7937444))

(declare-fun m!7937446 () Bool)

(assert (=> b!7256145 m!7937446))

(declare-fun m!7937448 () Bool)

(assert (=> b!7256145 m!7937448))

(declare-fun m!7937450 () Bool)

(assert (=> b!7256145 m!7937450))

(declare-fun m!7937452 () Bool)

(assert (=> b!7256145 m!7937452))

(declare-fun m!7937454 () Bool)

(assert (=> b!7256145 m!7937454))

(assert (=> b!7256145 m!7937420))

(declare-fun m!7937456 () Bool)

(assert (=> b!7256145 m!7937456))

(declare-fun m!7937458 () Bool)

(assert (=> b!7256145 m!7937458))

(declare-fun m!7937460 () Bool)

(assert (=> b!7256145 m!7937460))

(assert (=> b!7256145 m!7937450))

(declare-fun m!7937462 () Bool)

(assert (=> b!7256145 m!7937462))

(declare-fun m!7937464 () Bool)

(assert (=> b!7256143 m!7937464))

(declare-fun m!7937466 () Bool)

(assert (=> start!706632 m!7937466))

(declare-fun m!7937468 () Bool)

(assert (=> start!706632 m!7937468))

(declare-fun m!7937470 () Bool)

(assert (=> start!706632 m!7937470))

(declare-fun m!7937472 () Bool)

(assert (=> start!706632 m!7937472))

(declare-fun m!7937474 () Bool)

(assert (=> b!7256135 m!7937474))

(declare-fun m!7937476 () Bool)

(assert (=> b!7256135 m!7937476))

(declare-fun m!7937478 () Bool)

(assert (=> b!7256135 m!7937478))

(declare-fun m!7937480 () Bool)

(assert (=> b!7256135 m!7937480))

(declare-fun m!7937482 () Bool)

(assert (=> b!7256135 m!7937482))

(assert (=> b!7256135 m!7937476))

(declare-fun m!7937484 () Bool)

(assert (=> b!7256135 m!7937484))

(assert (=> b!7256135 m!7937480))

(declare-fun m!7937486 () Bool)

(assert (=> b!7256135 m!7937486))

(declare-fun m!7937488 () Bool)

(assert (=> b!7256135 m!7937488))

(assert (=> b!7256135 m!7937448))

(assert (=> b!7256137 m!7937420))

(assert (=> b!7256137 m!7937440))

(declare-fun m!7937490 () Bool)

(assert (=> b!7256137 m!7937490))

(assert (=> b!7256137 m!7937420))

(declare-fun m!7937492 () Bool)

(assert (=> b!7256137 m!7937492))

(declare-fun m!7937494 () Bool)

(assert (=> b!7256137 m!7937494))

(push 1)

(assert (not b!7256144))

(assert (not b!7256139))

(assert (not b!7256136))

(assert (not b!7256145))

(assert (not start!706632))

(assert (not b!7256134))

(assert (not b!7256137))

(assert (not b!7256147))

(assert (not b!7256142))

(assert tp_is_empty!46793)

(assert (not b!7256146))

(assert (not b!7256138))

(assert (not b!7256135))

(assert (not b!7256143))

(assert (not b!7256141))

(assert (not b!7256133))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2256661 () Bool)

(declare-fun c!1349204 () Bool)

(declare-fun isEmpty!40571 (List!70574) Bool)

(assert (=> d!2256661 (= c!1349204 (isEmpty!40571 lt!2587220))))

(declare-fun e!4351007 () Bool)

(assert (=> d!2256661 (= (matchZipper!3574 (set.insert (Context!15209 lt!2587229) (as set.empty (Set Context!15208))) lt!2587220) e!4351007)))

(declare-fun b!7256205 () Bool)

(declare-fun nullableZipper!2925 ((Set Context!15208)) Bool)

(assert (=> b!7256205 (= e!4351007 (nullableZipper!2925 (set.insert (Context!15209 lt!2587229) (as set.empty (Set Context!15208)))))))

(declare-fun b!7256206 () Bool)

(declare-fun head!14922 (List!70574) C!37602)

(assert (=> b!7256206 (= e!4351007 (matchZipper!3574 (derivationStepZipper!3442 (set.insert (Context!15209 lt!2587229) (as set.empty (Set Context!15208))) (head!14922 lt!2587220)) (tail!14353 lt!2587220)))))

(assert (= (and d!2256661 c!1349204) b!7256205))

(assert (= (and d!2256661 (not c!1349204)) b!7256206))

(declare-fun m!7937592 () Bool)

(assert (=> d!2256661 m!7937592))

(assert (=> b!7256205 m!7937480))

(declare-fun m!7937594 () Bool)

(assert (=> b!7256205 m!7937594))

(declare-fun m!7937596 () Bool)

(assert (=> b!7256206 m!7937596))

(assert (=> b!7256206 m!7937480))

(assert (=> b!7256206 m!7937596))

(declare-fun m!7937598 () Bool)

(assert (=> b!7256206 m!7937598))

(declare-fun m!7937600 () Bool)

(assert (=> b!7256206 m!7937600))

(assert (=> b!7256206 m!7937598))

(assert (=> b!7256206 m!7937600))

(declare-fun m!7937602 () Bool)

(assert (=> b!7256206 m!7937602))

(assert (=> b!7256135 d!2256661))

(declare-fun d!2256663 () Bool)

(declare-fun e!4351010 () Bool)

(assert (=> d!2256663 e!4351010))

(declare-fun res!2942551 () Bool)

(assert (=> d!2256663 (=> (not res!2942551) (not e!4351010))))

(declare-fun lt!2587338 () Context!15208)

(declare-fun dynLambda!28783 (Int Context!15208) Bool)

(assert (=> d!2256663 (= res!2942551 (dynLambda!28783 lambda!445153 lt!2587338))))

(declare-fun getWitness!2236 (List!70573 Int) Context!15208)

(assert (=> d!2256663 (= lt!2587338 (getWitness!2236 (toList!11493 lt!2587234) lambda!445153))))

(assert (=> d!2256663 (exists!4406 lt!2587234 lambda!445153)))

(assert (=> d!2256663 (= (getWitness!2234 lt!2587234 lambda!445153) lt!2587338)))

(declare-fun b!7256209 () Bool)

(assert (=> b!7256209 (= e!4351010 (set.member lt!2587338 lt!2587234))))

(assert (= (and d!2256663 res!2942551) b!7256209))

(declare-fun b_lambda!278997 () Bool)

(assert (=> (not b_lambda!278997) (not d!2256663)))

(declare-fun m!7937604 () Bool)

(assert (=> d!2256663 m!7937604))

(assert (=> d!2256663 m!7937406))

(assert (=> d!2256663 m!7937406))

(declare-fun m!7937606 () Bool)

(assert (=> d!2256663 m!7937606))

(assert (=> d!2256663 m!7937400))

(declare-fun m!7937608 () Bool)

(assert (=> b!7256209 m!7937608))

(assert (=> b!7256135 d!2256663))

(declare-fun d!2256665 () Bool)

(assert (=> d!2256665 (= (isEmpty!40569 (exprs!8104 ct1!232)) (is-Nil!70448 (exprs!8104 ct1!232)))))

(assert (=> b!7256135 d!2256665))

(declare-fun bs!1907778 () Bool)

(declare-fun d!2256667 () Bool)

(assert (= bs!1907778 (and d!2256667 b!7256136)))

(declare-fun lambda!445186 () Int)

(assert (=> bs!1907778 (= lambda!445186 lambda!445152)))

(assert (=> d!2256667 (matchZipper!3574 (set.insert (Context!15209 (++!16591 (exprs!8104 lt!2587230) (exprs!8104 ct2!328))) (as set.empty (Set Context!15208))) (++!16590 (t!384638 s1!1971) s2!1849))))

(declare-fun lt!2587344 () Unit!163924)

(assert (=> d!2256667 (= lt!2587344 (lemmaConcatPreservesForall!1471 (exprs!8104 lt!2587230) (exprs!8104 ct2!328) lambda!445186))))

(declare-fun lt!2587343 () Unit!163924)

(declare-fun choose!56104 (Context!15208 Context!15208 List!70574 List!70574) Unit!163924)

(assert (=> d!2256667 (= lt!2587343 (choose!56104 lt!2587230 ct2!328 (t!384638 s1!1971) s2!1849))))

(assert (=> d!2256667 (matchZipper!3574 (set.insert lt!2587230 (as set.empty (Set Context!15208))) (t!384638 s1!1971))))

(assert (=> d!2256667 (= (lemmaConcatenateContextMatchesConcatOfStrings!409 lt!2587230 ct2!328 (t!384638 s1!1971) s2!1849) lt!2587343)))

(declare-fun bs!1907779 () Bool)

(assert (= bs!1907779 d!2256667))

(declare-fun m!7937610 () Bool)

(assert (=> bs!1907779 m!7937610))

(assert (=> bs!1907779 m!7937484))

(declare-fun m!7937612 () Bool)

(assert (=> bs!1907779 m!7937612))

(assert (=> bs!1907779 m!7937610))

(assert (=> bs!1907779 m!7937488))

(declare-fun m!7937614 () Bool)

(assert (=> bs!1907779 m!7937614))

(declare-fun m!7937616 () Bool)

(assert (=> bs!1907779 m!7937616))

(assert (=> bs!1907779 m!7937484))

(assert (=> bs!1907779 m!7937616))

(declare-fun m!7937618 () Bool)

(assert (=> bs!1907779 m!7937618))

(declare-fun m!7937620 () Bool)

(assert (=> bs!1907779 m!7937620))

(assert (=> b!7256135 d!2256667))

(declare-fun b!7256220 () Bool)

(declare-fun res!2942557 () Bool)

(declare-fun e!4351016 () Bool)

(assert (=> b!7256220 (=> (not res!2942557) (not e!4351016))))

(declare-fun lt!2587347 () List!70574)

(declare-fun size!41739 (List!70574) Int)

(assert (=> b!7256220 (= res!2942557 (= (size!41739 lt!2587347) (+ (size!41739 (t!384638 s1!1971)) (size!41739 s2!1849))))))

(declare-fun b!7256218 () Bool)

(declare-fun e!4351015 () List!70574)

(assert (=> b!7256218 (= e!4351015 s2!1849)))

(declare-fun b!7256219 () Bool)

(assert (=> b!7256219 (= e!4351015 (Cons!70450 (h!76898 (t!384638 s1!1971)) (++!16590 (t!384638 (t!384638 s1!1971)) s2!1849)))))

(declare-fun b!7256221 () Bool)

(assert (=> b!7256221 (= e!4351016 (or (not (= s2!1849 Nil!70450)) (= lt!2587347 (t!384638 s1!1971))))))

(declare-fun d!2256669 () Bool)

(assert (=> d!2256669 e!4351016))

(declare-fun res!2942556 () Bool)

(assert (=> d!2256669 (=> (not res!2942556) (not e!4351016))))

(declare-fun content!14644 (List!70574) (Set C!37602))

(assert (=> d!2256669 (= res!2942556 (= (content!14644 lt!2587347) (set.union (content!14644 (t!384638 s1!1971)) (content!14644 s2!1849))))))

(assert (=> d!2256669 (= lt!2587347 e!4351015)))

(declare-fun c!1349207 () Bool)

(assert (=> d!2256669 (= c!1349207 (is-Nil!70450 (t!384638 s1!1971)))))

(assert (=> d!2256669 (= (++!16590 (t!384638 s1!1971) s2!1849) lt!2587347)))

(assert (= (and d!2256669 c!1349207) b!7256218))

(assert (= (and d!2256669 (not c!1349207)) b!7256219))

(assert (= (and d!2256669 res!2942556) b!7256220))

(assert (= (and b!7256220 res!2942557) b!7256221))

(declare-fun m!7937622 () Bool)

(assert (=> b!7256220 m!7937622))

(declare-fun m!7937624 () Bool)

(assert (=> b!7256220 m!7937624))

(declare-fun m!7937626 () Bool)

(assert (=> b!7256220 m!7937626))

(declare-fun m!7937628 () Bool)

(assert (=> b!7256219 m!7937628))

(declare-fun m!7937630 () Bool)

(assert (=> d!2256669 m!7937630))

(declare-fun m!7937632 () Bool)

(assert (=> d!2256669 m!7937632))

(declare-fun m!7937634 () Bool)

(assert (=> d!2256669 m!7937634))

(assert (=> b!7256135 d!2256669))

(declare-fun d!2256671 () Bool)

(declare-fun forall!17516 (List!70572 Int) Bool)

(assert (=> d!2256671 (forall!17516 (++!16591 (exprs!8104 lt!2587230) (exprs!8104 ct2!328)) lambda!445152)))

(declare-fun lt!2587350 () Unit!163924)

(declare-fun choose!56105 (List!70572 List!70572 Int) Unit!163924)

(assert (=> d!2256671 (= lt!2587350 (choose!56105 (exprs!8104 lt!2587230) (exprs!8104 ct2!328) lambda!445152))))

(assert (=> d!2256671 (forall!17516 (exprs!8104 lt!2587230) lambda!445152)))

(assert (=> d!2256671 (= (lemmaConcatPreservesForall!1471 (exprs!8104 lt!2587230) (exprs!8104 ct2!328) lambda!445152) lt!2587350)))

(declare-fun bs!1907780 () Bool)

(assert (= bs!1907780 d!2256671))

(assert (=> bs!1907780 m!7937488))

(assert (=> bs!1907780 m!7937488))

(declare-fun m!7937636 () Bool)

(assert (=> bs!1907780 m!7937636))

(declare-fun m!7937638 () Bool)

(assert (=> bs!1907780 m!7937638))

(declare-fun m!7937640 () Bool)

(assert (=> bs!1907780 m!7937640))

(assert (=> b!7256135 d!2256671))

(declare-fun e!4351025 () (Set Context!15208))

(declare-fun call!661232 () (Set Context!15208))

(declare-fun b!7256232 () Bool)

(assert (=> b!7256232 (= e!4351025 (set.union call!661232 (derivationStepZipperUp!2488 (Context!15209 (t!384636 (exprs!8104 ct1!232))) (h!76898 s1!1971))))))

(declare-fun b!7256233 () Bool)

(declare-fun e!4351024 () Bool)

(assert (=> b!7256233 (= e!4351024 (nullable!7924 (h!76896 (exprs!8104 ct1!232))))))

(declare-fun b!7256234 () Bool)

(declare-fun e!4351023 () (Set Context!15208))

(assert (=> b!7256234 (= e!4351023 call!661232)))

(declare-fun d!2256673 () Bool)

(declare-fun c!1349213 () Bool)

(assert (=> d!2256673 (= c!1349213 e!4351024)))

(declare-fun res!2942560 () Bool)

(assert (=> d!2256673 (=> (not res!2942560) (not e!4351024))))

(assert (=> d!2256673 (= res!2942560 (is-Cons!70448 (exprs!8104 ct1!232)))))

(assert (=> d!2256673 (= (derivationStepZipperUp!2488 ct1!232 (h!76898 s1!1971)) e!4351025)))

(declare-fun bm!661227 () Bool)

(assert (=> bm!661227 (= call!661232 (derivationStepZipperDown!2658 (h!76896 (exprs!8104 ct1!232)) (Context!15209 (t!384636 (exprs!8104 ct1!232))) (h!76898 s1!1971)))))

(declare-fun b!7256235 () Bool)

(assert (=> b!7256235 (= e!4351025 e!4351023)))

(declare-fun c!1349212 () Bool)

(assert (=> b!7256235 (= c!1349212 (is-Cons!70448 (exprs!8104 ct1!232)))))

(declare-fun b!7256236 () Bool)

(assert (=> b!7256236 (= e!4351023 (as set.empty (Set Context!15208)))))

(assert (= (and d!2256673 res!2942560) b!7256233))

(assert (= (and d!2256673 c!1349213) b!7256232))

(assert (= (and d!2256673 (not c!1349213)) b!7256235))

(assert (= (and b!7256235 c!1349212) b!7256234))

(assert (= (and b!7256235 (not c!1349212)) b!7256236))

(assert (= (or b!7256232 b!7256234) bm!661227))

(declare-fun m!7937642 () Bool)

(assert (=> b!7256232 m!7937642))

(assert (=> b!7256233 m!7937460))

(declare-fun m!7937644 () Bool)

(assert (=> bm!661227 m!7937644))

(assert (=> b!7256135 d!2256673))

(declare-fun b!7256245 () Bool)

(declare-fun e!4351030 () List!70572)

(assert (=> b!7256245 (= e!4351030 (exprs!8104 ct2!328))))

(declare-fun b!7256246 () Bool)

(assert (=> b!7256246 (= e!4351030 (Cons!70448 (h!76896 (exprs!8104 lt!2587230)) (++!16591 (t!384636 (exprs!8104 lt!2587230)) (exprs!8104 ct2!328))))))

(declare-fun b!7256247 () Bool)

(declare-fun res!2942565 () Bool)

(declare-fun e!4351031 () Bool)

(assert (=> b!7256247 (=> (not res!2942565) (not e!4351031))))

(declare-fun lt!2587353 () List!70572)

(declare-fun size!41740 (List!70572) Int)

(assert (=> b!7256247 (= res!2942565 (= (size!41740 lt!2587353) (+ (size!41740 (exprs!8104 lt!2587230)) (size!41740 (exprs!8104 ct2!328)))))))

(declare-fun b!7256248 () Bool)

(assert (=> b!7256248 (= e!4351031 (or (not (= (exprs!8104 ct2!328) Nil!70448)) (= lt!2587353 (exprs!8104 lt!2587230))))))

(declare-fun d!2256675 () Bool)

(assert (=> d!2256675 e!4351031))

(declare-fun res!2942566 () Bool)

(assert (=> d!2256675 (=> (not res!2942566) (not e!4351031))))

(declare-fun content!14645 (List!70572) (Set Regex!18664))

(assert (=> d!2256675 (= res!2942566 (= (content!14645 lt!2587353) (set.union (content!14645 (exprs!8104 lt!2587230)) (content!14645 (exprs!8104 ct2!328)))))))

(assert (=> d!2256675 (= lt!2587353 e!4351030)))

(declare-fun c!1349216 () Bool)

(assert (=> d!2256675 (= c!1349216 (is-Nil!70448 (exprs!8104 lt!2587230)))))

(assert (=> d!2256675 (= (++!16591 (exprs!8104 lt!2587230) (exprs!8104 ct2!328)) lt!2587353)))

(assert (= (and d!2256675 c!1349216) b!7256245))

(assert (= (and d!2256675 (not c!1349216)) b!7256246))

(assert (= (and d!2256675 res!2942566) b!7256247))

(assert (= (and b!7256247 res!2942565) b!7256248))

(declare-fun m!7937646 () Bool)

(assert (=> b!7256246 m!7937646))

(declare-fun m!7937648 () Bool)

(assert (=> b!7256247 m!7937648))

(declare-fun m!7937650 () Bool)

(assert (=> b!7256247 m!7937650))

(declare-fun m!7937652 () Bool)

(assert (=> b!7256247 m!7937652))

(declare-fun m!7937654 () Bool)

(assert (=> d!2256675 m!7937654))

(declare-fun m!7937656 () Bool)

(assert (=> d!2256675 m!7937656))

(declare-fun m!7937658 () Bool)

(assert (=> d!2256675 m!7937658))

(assert (=> b!7256135 d!2256675))

(declare-fun d!2256677 () Bool)

(declare-fun c!1349217 () Bool)

(assert (=> d!2256677 (= c!1349217 (isEmpty!40571 (t!384638 s1!1971)))))

(declare-fun e!4351032 () Bool)

(assert (=> d!2256677 (= (matchZipper!3574 lt!2587212 (t!384638 s1!1971)) e!4351032)))

(declare-fun b!7256249 () Bool)

(assert (=> b!7256249 (= e!4351032 (nullableZipper!2925 lt!2587212))))

(declare-fun b!7256250 () Bool)

(assert (=> b!7256250 (= e!4351032 (matchZipper!3574 (derivationStepZipper!3442 lt!2587212 (head!14922 (t!384638 s1!1971))) (tail!14353 (t!384638 s1!1971))))))

(assert (= (and d!2256677 c!1349217) b!7256249))

(assert (= (and d!2256677 (not c!1349217)) b!7256250))

(declare-fun m!7937660 () Bool)

(assert (=> d!2256677 m!7937660))

(declare-fun m!7937662 () Bool)

(assert (=> b!7256249 m!7937662))

(declare-fun m!7937664 () Bool)

(assert (=> b!7256250 m!7937664))

(assert (=> b!7256250 m!7937664))

(declare-fun m!7937666 () Bool)

(assert (=> b!7256250 m!7937666))

(declare-fun m!7937668 () Bool)

(assert (=> b!7256250 m!7937668))

(assert (=> b!7256250 m!7937666))

(assert (=> b!7256250 m!7937668))

(declare-fun m!7937670 () Bool)

(assert (=> b!7256250 m!7937670))

(assert (=> b!7256146 d!2256677))

(declare-fun b!7256251 () Bool)

(declare-fun e!4351033 () List!70572)

(assert (=> b!7256251 (= e!4351033 (exprs!8104 ct2!328))))

(declare-fun b!7256252 () Bool)

(assert (=> b!7256252 (= e!4351033 (Cons!70448 (h!76896 (exprs!8104 ct1!232)) (++!16591 (t!384636 (exprs!8104 ct1!232)) (exprs!8104 ct2!328))))))

(declare-fun b!7256253 () Bool)

(declare-fun res!2942567 () Bool)

(declare-fun e!4351034 () Bool)

(assert (=> b!7256253 (=> (not res!2942567) (not e!4351034))))

(declare-fun lt!2587354 () List!70572)

(assert (=> b!7256253 (= res!2942567 (= (size!41740 lt!2587354) (+ (size!41740 (exprs!8104 ct1!232)) (size!41740 (exprs!8104 ct2!328)))))))

(declare-fun b!7256254 () Bool)

(assert (=> b!7256254 (= e!4351034 (or (not (= (exprs!8104 ct2!328) Nil!70448)) (= lt!2587354 (exprs!8104 ct1!232))))))

(declare-fun d!2256679 () Bool)

(assert (=> d!2256679 e!4351034))

(declare-fun res!2942568 () Bool)

(assert (=> d!2256679 (=> (not res!2942568) (not e!4351034))))

(assert (=> d!2256679 (= res!2942568 (= (content!14645 lt!2587354) (set.union (content!14645 (exprs!8104 ct1!232)) (content!14645 (exprs!8104 ct2!328)))))))

(assert (=> d!2256679 (= lt!2587354 e!4351033)))

(declare-fun c!1349218 () Bool)

(assert (=> d!2256679 (= c!1349218 (is-Nil!70448 (exprs!8104 ct1!232)))))

(assert (=> d!2256679 (= (++!16591 (exprs!8104 ct1!232) (exprs!8104 ct2!328)) lt!2587354)))

(assert (= (and d!2256679 c!1349218) b!7256251))

(assert (= (and d!2256679 (not c!1349218)) b!7256252))

(assert (= (and d!2256679 res!2942568) b!7256253))

(assert (= (and b!7256253 res!2942567) b!7256254))

(declare-fun m!7937672 () Bool)

(assert (=> b!7256252 m!7937672))

(declare-fun m!7937674 () Bool)

(assert (=> b!7256253 m!7937674))

(declare-fun m!7937676 () Bool)

(assert (=> b!7256253 m!7937676))

(assert (=> b!7256253 m!7937652))

(declare-fun m!7937678 () Bool)

(assert (=> d!2256679 m!7937678))

(declare-fun m!7937680 () Bool)

(assert (=> d!2256679 m!7937680))

(assert (=> d!2256679 m!7937658))

(assert (=> b!7256136 d!2256679))

(declare-fun d!2256681 () Bool)

(assert (=> d!2256681 (forall!17516 (++!16591 (exprs!8104 ct1!232) (exprs!8104 ct2!328)) lambda!445152)))

(declare-fun lt!2587355 () Unit!163924)

(assert (=> d!2256681 (= lt!2587355 (choose!56105 (exprs!8104 ct1!232) (exprs!8104 ct2!328) lambda!445152))))

(assert (=> d!2256681 (forall!17516 (exprs!8104 ct1!232) lambda!445152)))

(assert (=> d!2256681 (= (lemmaConcatPreservesForall!1471 (exprs!8104 ct1!232) (exprs!8104 ct2!328) lambda!445152) lt!2587355)))

(declare-fun bs!1907781 () Bool)

(assert (= bs!1907781 d!2256681))

(assert (=> bs!1907781 m!7937430))

(assert (=> bs!1907781 m!7937430))

(declare-fun m!7937682 () Bool)

(assert (=> bs!1907781 m!7937682))

(declare-fun m!7937684 () Bool)

(assert (=> bs!1907781 m!7937684))

(declare-fun m!7937686 () Bool)

(assert (=> bs!1907781 m!7937686))

(assert (=> b!7256136 d!2256681))

(declare-fun d!2256683 () Bool)

(declare-fun c!1349219 () Bool)

(assert (=> d!2256683 (= c!1349219 (isEmpty!40571 (t!384638 s1!1971)))))

(declare-fun e!4351035 () Bool)

(assert (=> d!2256683 (= (matchZipper!3574 lt!2587234 (t!384638 s1!1971)) e!4351035)))

(declare-fun b!7256255 () Bool)

(assert (=> b!7256255 (= e!4351035 (nullableZipper!2925 lt!2587234))))

(declare-fun b!7256256 () Bool)

(assert (=> b!7256256 (= e!4351035 (matchZipper!3574 (derivationStepZipper!3442 lt!2587234 (head!14922 (t!384638 s1!1971))) (tail!14353 (t!384638 s1!1971))))))

(assert (= (and d!2256683 c!1349219) b!7256255))

(assert (= (and d!2256683 (not c!1349219)) b!7256256))

(assert (=> d!2256683 m!7937660))

(declare-fun m!7937688 () Bool)

(assert (=> b!7256255 m!7937688))

(assert (=> b!7256256 m!7937664))

(assert (=> b!7256256 m!7937664))

(declare-fun m!7937690 () Bool)

(assert (=> b!7256256 m!7937690))

(assert (=> b!7256256 m!7937668))

(assert (=> b!7256256 m!7937690))

(assert (=> b!7256256 m!7937668))

(declare-fun m!7937692 () Bool)

(assert (=> b!7256256 m!7937692))

(assert (=> b!7256147 d!2256683))

(declare-fun bs!1907782 () Bool)

(declare-fun d!2256685 () Bool)

(assert (= bs!1907782 (and d!2256685 b!7256145)))

(declare-fun lambda!445189 () Int)

(assert (=> bs!1907782 (= lambda!445189 lambda!445154)))

(assert (=> d!2256685 true))

(assert (=> d!2256685 (= (derivationStepZipper!3442 lt!2587227 (h!76898 s1!1971)) (flatMap!2829 lt!2587227 lambda!445189))))

(declare-fun bs!1907783 () Bool)

(assert (= bs!1907783 d!2256685))

(declare-fun m!7937694 () Bool)

(assert (=> bs!1907783 m!7937694))

(assert (=> b!7256147 d!2256685))

(declare-fun d!2256687 () Bool)

(assert (=> d!2256687 (= (tail!14352 (exprs!8104 ct1!232)) (t!384636 (exprs!8104 ct1!232)))))

(assert (=> b!7256137 d!2256687))

(declare-fun e!4351038 () (Set Context!15208))

(declare-fun call!661233 () (Set Context!15208))

(declare-fun b!7256259 () Bool)

(assert (=> b!7256259 (= e!4351038 (set.union call!661233 (derivationStepZipperUp!2488 (Context!15209 (t!384636 (exprs!8104 lt!2587226))) (h!76898 s1!1971))))))

(declare-fun b!7256260 () Bool)

(declare-fun e!4351037 () Bool)

(assert (=> b!7256260 (= e!4351037 (nullable!7924 (h!76896 (exprs!8104 lt!2587226))))))

(declare-fun b!7256261 () Bool)

(declare-fun e!4351036 () (Set Context!15208))

(assert (=> b!7256261 (= e!4351036 call!661233)))

(declare-fun d!2256689 () Bool)

(declare-fun c!1349223 () Bool)

(assert (=> d!2256689 (= c!1349223 e!4351037)))

(declare-fun res!2942569 () Bool)

(assert (=> d!2256689 (=> (not res!2942569) (not e!4351037))))

(assert (=> d!2256689 (= res!2942569 (is-Cons!70448 (exprs!8104 lt!2587226)))))

(assert (=> d!2256689 (= (derivationStepZipperUp!2488 lt!2587226 (h!76898 s1!1971)) e!4351038)))

(declare-fun bm!661228 () Bool)

(assert (=> bm!661228 (= call!661233 (derivationStepZipperDown!2658 (h!76896 (exprs!8104 lt!2587226)) (Context!15209 (t!384636 (exprs!8104 lt!2587226))) (h!76898 s1!1971)))))

(declare-fun b!7256262 () Bool)

(assert (=> b!7256262 (= e!4351038 e!4351036)))

(declare-fun c!1349222 () Bool)

(assert (=> b!7256262 (= c!1349222 (is-Cons!70448 (exprs!8104 lt!2587226)))))

(declare-fun b!7256263 () Bool)

(assert (=> b!7256263 (= e!4351036 (as set.empty (Set Context!15208)))))

(assert (= (and d!2256689 res!2942569) b!7256260))

(assert (= (and d!2256689 c!1349223) b!7256259))

(assert (= (and d!2256689 (not c!1349223)) b!7256262))

(assert (= (and b!7256262 c!1349222) b!7256261))

(assert (= (and b!7256262 (not c!1349222)) b!7256263))

(assert (= (or b!7256259 b!7256261) bm!661228))

(declare-fun m!7937696 () Bool)

(assert (=> b!7256259 m!7937696))

(declare-fun m!7937698 () Bool)

(assert (=> b!7256260 m!7937698))

(declare-fun m!7937700 () Bool)

(assert (=> bm!661228 m!7937700))

(assert (=> b!7256137 d!2256689))

(assert (=> b!7256137 d!2256681))

(declare-fun b!7256286 () Bool)

(declare-fun e!4351052 () (Set Context!15208))

(declare-fun e!4351053 () (Set Context!15208))

(assert (=> b!7256286 (= e!4351052 e!4351053)))

(declare-fun c!1349238 () Bool)

(assert (=> b!7256286 (= c!1349238 (is-Concat!27509 (h!76896 (exprs!8104 ct1!232))))))

(declare-fun bm!661241 () Bool)

(declare-fun call!661251 () List!70572)

(declare-fun c!1349237 () Bool)

(declare-fun $colon$colon!2929 (List!70572 Regex!18664) List!70572)

(assert (=> bm!661241 (= call!661251 ($colon$colon!2929 (exprs!8104 lt!2587222) (ite (or c!1349237 c!1349238) (regTwo!37840 (h!76896 (exprs!8104 ct1!232))) (h!76896 (exprs!8104 ct1!232)))))))

(declare-fun b!7256288 () Bool)

(declare-fun e!4351055 () (Set Context!15208))

(declare-fun e!4351051 () (Set Context!15208))

(assert (=> b!7256288 (= e!4351055 e!4351051)))

(declare-fun c!1349234 () Bool)

(assert (=> b!7256288 (= c!1349234 (is-Union!18664 (h!76896 (exprs!8104 ct1!232))))))

(declare-fun b!7256289 () Bool)

(declare-fun call!661250 () (Set Context!15208))

(declare-fun call!661249 () (Set Context!15208))

(assert (=> b!7256289 (= e!4351052 (set.union call!661250 call!661249))))

(declare-fun bm!661242 () Bool)

(assert (=> bm!661242 (= call!661250 (derivationStepZipperDown!2658 (ite c!1349234 (regTwo!37841 (h!76896 (exprs!8104 ct1!232))) (regOne!37840 (h!76896 (exprs!8104 ct1!232)))) (ite c!1349234 lt!2587222 (Context!15209 call!661251)) (h!76898 s1!1971)))))

(declare-fun b!7256290 () Bool)

(declare-fun e!4351056 () (Set Context!15208))

(declare-fun call!661247 () (Set Context!15208))

(assert (=> b!7256290 (= e!4351056 call!661247)))

(declare-fun b!7256291 () Bool)

(declare-fun e!4351054 () Bool)

(assert (=> b!7256291 (= c!1349237 e!4351054)))

(declare-fun res!2942572 () Bool)

(assert (=> b!7256291 (=> (not res!2942572) (not e!4351054))))

(assert (=> b!7256291 (= res!2942572 (is-Concat!27509 (h!76896 (exprs!8104 ct1!232))))))

(assert (=> b!7256291 (= e!4351051 e!4351052)))

(declare-fun b!7256292 () Bool)

(assert (=> b!7256292 (= e!4351054 (nullable!7924 (regOne!37840 (h!76896 (exprs!8104 ct1!232)))))))

(declare-fun b!7256293 () Bool)

(assert (=> b!7256293 (= e!4351053 call!661247)))

(declare-fun bm!661243 () Bool)

(assert (=> bm!661243 (= call!661247 call!661249)))

(declare-fun b!7256294 () Bool)

(assert (=> b!7256294 (= e!4351056 (as set.empty (Set Context!15208)))))

(declare-fun bm!661244 () Bool)

(declare-fun call!661246 () List!70572)

(assert (=> bm!661244 (= call!661246 call!661251)))

(declare-fun b!7256287 () Bool)

(declare-fun c!1349236 () Bool)

(assert (=> b!7256287 (= c!1349236 (is-Star!18664 (h!76896 (exprs!8104 ct1!232))))))

(assert (=> b!7256287 (= e!4351053 e!4351056)))

(declare-fun d!2256691 () Bool)

(declare-fun c!1349235 () Bool)

(assert (=> d!2256691 (= c!1349235 (and (is-ElementMatch!18664 (h!76896 (exprs!8104 ct1!232))) (= (c!1349187 (h!76896 (exprs!8104 ct1!232))) (h!76898 s1!1971))))))

(assert (=> d!2256691 (= (derivationStepZipperDown!2658 (h!76896 (exprs!8104 ct1!232)) lt!2587222 (h!76898 s1!1971)) e!4351055)))

(declare-fun b!7256295 () Bool)

(assert (=> b!7256295 (= e!4351055 (set.insert lt!2587222 (as set.empty (Set Context!15208))))))

(declare-fun call!661248 () (Set Context!15208))

(declare-fun bm!661245 () Bool)

(assert (=> bm!661245 (= call!661248 (derivationStepZipperDown!2658 (ite c!1349234 (regOne!37841 (h!76896 (exprs!8104 ct1!232))) (ite c!1349237 (regTwo!37840 (h!76896 (exprs!8104 ct1!232))) (ite c!1349238 (regOne!37840 (h!76896 (exprs!8104 ct1!232))) (reg!18993 (h!76896 (exprs!8104 ct1!232)))))) (ite (or c!1349234 c!1349237) lt!2587222 (Context!15209 call!661246)) (h!76898 s1!1971)))))

(declare-fun b!7256296 () Bool)

(assert (=> b!7256296 (= e!4351051 (set.union call!661248 call!661250))))

(declare-fun bm!661246 () Bool)

(assert (=> bm!661246 (= call!661249 call!661248)))

(assert (= (and d!2256691 c!1349235) b!7256295))

(assert (= (and d!2256691 (not c!1349235)) b!7256288))

(assert (= (and b!7256288 c!1349234) b!7256296))

(assert (= (and b!7256288 (not c!1349234)) b!7256291))

(assert (= (and b!7256291 res!2942572) b!7256292))

(assert (= (and b!7256291 c!1349237) b!7256289))

(assert (= (and b!7256291 (not c!1349237)) b!7256286))

(assert (= (and b!7256286 c!1349238) b!7256293))

(assert (= (and b!7256286 (not c!1349238)) b!7256287))

(assert (= (and b!7256287 c!1349236) b!7256290))

(assert (= (and b!7256287 (not c!1349236)) b!7256294))

(assert (= (or b!7256293 b!7256290) bm!661244))

(assert (= (or b!7256293 b!7256290) bm!661243))

(assert (= (or b!7256289 bm!661244) bm!661241))

(assert (= (or b!7256289 bm!661243) bm!661246))

(assert (= (or b!7256296 b!7256289) bm!661242))

(assert (= (or b!7256296 bm!661246) bm!661245))

(declare-fun m!7937702 () Bool)

(assert (=> bm!661241 m!7937702))

(declare-fun m!7937704 () Bool)

(assert (=> b!7256292 m!7937704))

(declare-fun m!7937706 () Bool)

(assert (=> b!7256295 m!7937706))

(declare-fun m!7937708 () Bool)

(assert (=> bm!661245 m!7937708))

(declare-fun m!7937710 () Bool)

(assert (=> bm!661242 m!7937710))

(assert (=> b!7256137 d!2256691))

(declare-fun d!2256693 () Bool)

(assert (=> d!2256693 (= (isEmpty!40569 lt!2587210) (is-Nil!70448 lt!2587210))))

(assert (=> b!7256137 d!2256693))

(declare-fun d!2256695 () Bool)

(declare-fun c!1349239 () Bool)

(assert (=> d!2256695 (= c!1349239 (isEmpty!40571 s2!1849))))

(declare-fun e!4351057 () Bool)

(assert (=> d!2256695 (= (matchZipper!3574 (set.insert ct2!328 (as set.empty (Set Context!15208))) s2!1849) e!4351057)))

(declare-fun b!7256297 () Bool)

(assert (=> b!7256297 (= e!4351057 (nullableZipper!2925 (set.insert ct2!328 (as set.empty (Set Context!15208)))))))

(declare-fun b!7256298 () Bool)

(assert (=> b!7256298 (= e!4351057 (matchZipper!3574 (derivationStepZipper!3442 (set.insert ct2!328 (as set.empty (Set Context!15208))) (head!14922 s2!1849)) (tail!14353 s2!1849)))))

(assert (= (and d!2256695 c!1349239) b!7256297))

(assert (= (and d!2256695 (not c!1349239)) b!7256298))

(declare-fun m!7937712 () Bool)

(assert (=> d!2256695 m!7937712))

(assert (=> b!7256297 m!7937436))

(declare-fun m!7937714 () Bool)

(assert (=> b!7256297 m!7937714))

(declare-fun m!7937716 () Bool)

(assert (=> b!7256298 m!7937716))

(assert (=> b!7256298 m!7937436))

(assert (=> b!7256298 m!7937716))

(declare-fun m!7937718 () Bool)

(assert (=> b!7256298 m!7937718))

(declare-fun m!7937720 () Bool)

(assert (=> b!7256298 m!7937720))

(assert (=> b!7256298 m!7937718))

(assert (=> b!7256298 m!7937720))

(declare-fun m!7937722 () Bool)

(assert (=> b!7256298 m!7937722))

(assert (=> b!7256138 d!2256695))

(declare-fun d!2256697 () Bool)

(declare-fun c!1349240 () Bool)

(assert (=> d!2256697 (= c!1349240 (isEmpty!40571 s1!1971))))

(declare-fun e!4351058 () Bool)

(assert (=> d!2256697 (= (matchZipper!3574 lt!2587227 s1!1971) e!4351058)))

(declare-fun b!7256299 () Bool)

(assert (=> b!7256299 (= e!4351058 (nullableZipper!2925 lt!2587227))))

(declare-fun b!7256300 () Bool)

(assert (=> b!7256300 (= e!4351058 (matchZipper!3574 (derivationStepZipper!3442 lt!2587227 (head!14922 s1!1971)) (tail!14353 s1!1971)))))

(assert (= (and d!2256697 c!1349240) b!7256299))

(assert (= (and d!2256697 (not c!1349240)) b!7256300))

(declare-fun m!7937724 () Bool)

(assert (=> d!2256697 m!7937724))

(declare-fun m!7937726 () Bool)

(assert (=> b!7256299 m!7937726))

(declare-fun m!7937728 () Bool)

(assert (=> b!7256300 m!7937728))

(assert (=> b!7256300 m!7937728))

(declare-fun m!7937730 () Bool)

(assert (=> b!7256300 m!7937730))

(declare-fun m!7937732 () Bool)

(assert (=> b!7256300 m!7937732))

(assert (=> b!7256300 m!7937730))

(assert (=> b!7256300 m!7937732))

(declare-fun m!7937734 () Bool)

(assert (=> b!7256300 m!7937734))

(assert (=> start!706632 d!2256697))

(declare-fun bs!1907784 () Bool)

(declare-fun d!2256699 () Bool)

(assert (= bs!1907784 (and d!2256699 b!7256136)))

(declare-fun lambda!445192 () Int)

(assert (=> bs!1907784 (= lambda!445192 lambda!445152)))

(declare-fun bs!1907785 () Bool)

(assert (= bs!1907785 (and d!2256699 d!2256667)))

(assert (=> bs!1907785 (= lambda!445192 lambda!445186)))

(assert (=> d!2256699 (= (inv!89671 ct1!232) (forall!17516 (exprs!8104 ct1!232) lambda!445192))))

(declare-fun bs!1907786 () Bool)

(assert (= bs!1907786 d!2256699))

(declare-fun m!7937736 () Bool)

(assert (=> bs!1907786 m!7937736))

(assert (=> start!706632 d!2256699))

(declare-fun bs!1907787 () Bool)

(declare-fun d!2256701 () Bool)

(assert (= bs!1907787 (and d!2256701 b!7256136)))

(declare-fun lambda!445193 () Int)

(assert (=> bs!1907787 (= lambda!445193 lambda!445152)))

(declare-fun bs!1907788 () Bool)

(assert (= bs!1907788 (and d!2256701 d!2256667)))

(assert (=> bs!1907788 (= lambda!445193 lambda!445186)))

(declare-fun bs!1907789 () Bool)

(assert (= bs!1907789 (and d!2256701 d!2256699)))

(assert (=> bs!1907789 (= lambda!445193 lambda!445192)))

(assert (=> d!2256701 (= (inv!89671 ct2!328) (forall!17516 (exprs!8104 ct2!328) lambda!445193))))

(declare-fun bs!1907790 () Bool)

(assert (= bs!1907790 d!2256701))

(declare-fun m!7937738 () Bool)

(assert (=> bs!1907790 m!7937738))

(assert (=> start!706632 d!2256701))

(declare-fun d!2256703 () Bool)

(declare-fun c!1349241 () Bool)

(assert (=> d!2256703 (= c!1349241 (isEmpty!40571 (t!384638 s1!1971)))))

(declare-fun e!4351059 () Bool)

(assert (=> d!2256703 (= (matchZipper!3574 (set.union lt!2587211 lt!2587212) (t!384638 s1!1971)) e!4351059)))

(declare-fun b!7256301 () Bool)

(assert (=> b!7256301 (= e!4351059 (nullableZipper!2925 (set.union lt!2587211 lt!2587212)))))

(declare-fun b!7256302 () Bool)

(assert (=> b!7256302 (= e!4351059 (matchZipper!3574 (derivationStepZipper!3442 (set.union lt!2587211 lt!2587212) (head!14922 (t!384638 s1!1971))) (tail!14353 (t!384638 s1!1971))))))

(assert (= (and d!2256703 c!1349241) b!7256301))

(assert (= (and d!2256703 (not c!1349241)) b!7256302))

(assert (=> d!2256703 m!7937660))

(declare-fun m!7937740 () Bool)

(assert (=> b!7256301 m!7937740))

(assert (=> b!7256302 m!7937664))

(assert (=> b!7256302 m!7937664))

(declare-fun m!7937742 () Bool)

(assert (=> b!7256302 m!7937742))

(assert (=> b!7256302 m!7937668))

(assert (=> b!7256302 m!7937742))

(assert (=> b!7256302 m!7937668))

(declare-fun m!7937744 () Bool)

(assert (=> b!7256302 m!7937744))

(assert (=> b!7256141 d!2256703))

(declare-fun d!2256705 () Bool)

(declare-fun c!1349242 () Bool)

(assert (=> d!2256705 (= c!1349242 (isEmpty!40571 lt!2587220))))

(declare-fun e!4351060 () Bool)

(assert (=> d!2256705 (= (matchZipper!3574 (set.union lt!2587231 lt!2587232) lt!2587220) e!4351060)))

(declare-fun b!7256303 () Bool)

(assert (=> b!7256303 (= e!4351060 (nullableZipper!2925 (set.union lt!2587231 lt!2587232)))))

(declare-fun b!7256304 () Bool)

(assert (=> b!7256304 (= e!4351060 (matchZipper!3574 (derivationStepZipper!3442 (set.union lt!2587231 lt!2587232) (head!14922 lt!2587220)) (tail!14353 lt!2587220)))))

(assert (= (and d!2256705 c!1349242) b!7256303))

(assert (= (and d!2256705 (not c!1349242)) b!7256304))

(assert (=> d!2256705 m!7937592))

(declare-fun m!7937746 () Bool)

(assert (=> b!7256303 m!7937746))

(assert (=> b!7256304 m!7937596))

(assert (=> b!7256304 m!7937596))

(declare-fun m!7937748 () Bool)

(assert (=> b!7256304 m!7937748))

(assert (=> b!7256304 m!7937600))

(assert (=> b!7256304 m!7937748))

(assert (=> b!7256304 m!7937600))

(declare-fun m!7937750 () Bool)

(assert (=> b!7256304 m!7937750))

(assert (=> b!7256141 d!2256705))

(declare-fun d!2256707 () Bool)

(declare-fun e!4351063 () Bool)

(assert (=> d!2256707 (= (matchZipper!3574 (set.union lt!2587211 lt!2587212) (t!384638 s1!1971)) e!4351063)))

(declare-fun res!2942575 () Bool)

(assert (=> d!2256707 (=> res!2942575 e!4351063)))

(assert (=> d!2256707 (= res!2942575 (matchZipper!3574 lt!2587211 (t!384638 s1!1971)))))

(declare-fun lt!2587358 () Unit!163924)

(declare-fun choose!56106 ((Set Context!15208) (Set Context!15208) List!70574) Unit!163924)

(assert (=> d!2256707 (= lt!2587358 (choose!56106 lt!2587211 lt!2587212 (t!384638 s1!1971)))))

(assert (=> d!2256707 (= (lemmaZipperConcatMatchesSameAsBothZippers!1719 lt!2587211 lt!2587212 (t!384638 s1!1971)) lt!2587358)))

(declare-fun b!7256307 () Bool)

(assert (=> b!7256307 (= e!4351063 (matchZipper!3574 lt!2587212 (t!384638 s1!1971)))))

(assert (= (and d!2256707 (not res!2942575)) b!7256307))

(assert (=> d!2256707 m!7937412))

(assert (=> d!2256707 m!7937418))

(declare-fun m!7937752 () Bool)

(assert (=> d!2256707 m!7937752))

(assert (=> b!7256307 m!7937408))

(assert (=> b!7256141 d!2256707))

(declare-fun e!4351064 () Bool)

(declare-fun d!2256709 () Bool)

(assert (=> d!2256709 (= (matchZipper!3574 (set.union lt!2587231 lt!2587232) lt!2587220) e!4351064)))

(declare-fun res!2942576 () Bool)

(assert (=> d!2256709 (=> res!2942576 e!4351064)))

(assert (=> d!2256709 (= res!2942576 (matchZipper!3574 lt!2587231 lt!2587220))))

(declare-fun lt!2587359 () Unit!163924)

(assert (=> d!2256709 (= lt!2587359 (choose!56106 lt!2587231 lt!2587232 lt!2587220))))

(assert (=> d!2256709 (= (lemmaZipperConcatMatchesSameAsBothZippers!1719 lt!2587231 lt!2587232 lt!2587220) lt!2587359)))

(declare-fun b!7256308 () Bool)

(assert (=> b!7256308 (= e!4351064 (matchZipper!3574 lt!2587232 lt!2587220))))

(assert (= (and d!2256709 (not res!2942576)) b!7256308))

(assert (=> d!2256709 m!7937410))

(assert (=> d!2256709 m!7937426))

(declare-fun m!7937754 () Bool)

(assert (=> d!2256709 m!7937754))

(assert (=> b!7256308 m!7937464))

(assert (=> b!7256141 d!2256709))

(declare-fun d!2256711 () Bool)

(declare-fun c!1349243 () Bool)

(assert (=> d!2256711 (= c!1349243 (isEmpty!40571 (t!384638 s1!1971)))))

(declare-fun e!4351065 () Bool)

(assert (=> d!2256711 (= (matchZipper!3574 lt!2587211 (t!384638 s1!1971)) e!4351065)))

(declare-fun b!7256309 () Bool)

(assert (=> b!7256309 (= e!4351065 (nullableZipper!2925 lt!2587211))))

(declare-fun b!7256310 () Bool)

(assert (=> b!7256310 (= e!4351065 (matchZipper!3574 (derivationStepZipper!3442 lt!2587211 (head!14922 (t!384638 s1!1971))) (tail!14353 (t!384638 s1!1971))))))

(assert (= (and d!2256711 c!1349243) b!7256309))

(assert (= (and d!2256711 (not c!1349243)) b!7256310))

(assert (=> d!2256711 m!7937660))

(declare-fun m!7937756 () Bool)

(assert (=> b!7256309 m!7937756))

(assert (=> b!7256310 m!7937664))

(assert (=> b!7256310 m!7937664))

(declare-fun m!7937758 () Bool)

(assert (=> b!7256310 m!7937758))

(assert (=> b!7256310 m!7937668))

(assert (=> b!7256310 m!7937758))

(assert (=> b!7256310 m!7937668))

(declare-fun m!7937760 () Bool)

(assert (=> b!7256310 m!7937760))

(assert (=> b!7256141 d!2256711))

(declare-fun b!7256311 () Bool)

(declare-fun e!4351068 () (Set Context!15208))

(declare-fun call!661252 () (Set Context!15208))

(assert (=> b!7256311 (= e!4351068 (set.union call!661252 (derivationStepZipperUp!2488 (Context!15209 (t!384636 (exprs!8104 lt!2587236))) (h!76898 s1!1971))))))

(declare-fun b!7256312 () Bool)

(declare-fun e!4351067 () Bool)

(assert (=> b!7256312 (= e!4351067 (nullable!7924 (h!76896 (exprs!8104 lt!2587236))))))

(declare-fun b!7256313 () Bool)

(declare-fun e!4351066 () (Set Context!15208))

(assert (=> b!7256313 (= e!4351066 call!661252)))

(declare-fun d!2256713 () Bool)

(declare-fun c!1349245 () Bool)

(assert (=> d!2256713 (= c!1349245 e!4351067)))

(declare-fun res!2942577 () Bool)

(assert (=> d!2256713 (=> (not res!2942577) (not e!4351067))))

(assert (=> d!2256713 (= res!2942577 (is-Cons!70448 (exprs!8104 lt!2587236)))))

(assert (=> d!2256713 (= (derivationStepZipperUp!2488 lt!2587236 (h!76898 s1!1971)) e!4351068)))

(declare-fun bm!661247 () Bool)

(assert (=> bm!661247 (= call!661252 (derivationStepZipperDown!2658 (h!76896 (exprs!8104 lt!2587236)) (Context!15209 (t!384636 (exprs!8104 lt!2587236))) (h!76898 s1!1971)))))

(declare-fun b!7256314 () Bool)

(assert (=> b!7256314 (= e!4351068 e!4351066)))

(declare-fun c!1349244 () Bool)

(assert (=> b!7256314 (= c!1349244 (is-Cons!70448 (exprs!8104 lt!2587236)))))

(declare-fun b!7256315 () Bool)

(assert (=> b!7256315 (= e!4351066 (as set.empty (Set Context!15208)))))

(assert (= (and d!2256713 res!2942577) b!7256312))

(assert (= (and d!2256713 c!1349245) b!7256311))

(assert (= (and d!2256713 (not c!1349245)) b!7256314))

(assert (= (and b!7256314 c!1349244) b!7256313))

(assert (= (and b!7256314 (not c!1349244)) b!7256315))

(assert (= (or b!7256311 b!7256313) bm!661247))

(declare-fun m!7937762 () Bool)

(assert (=> b!7256311 m!7937762))

(declare-fun m!7937764 () Bool)

(assert (=> b!7256312 m!7937764))

(declare-fun m!7937766 () Bool)

(assert (=> bm!661247 m!7937766))

(assert (=> b!7256141 d!2256713))

(declare-fun d!2256715 () Bool)

(declare-fun c!1349246 () Bool)

(assert (=> d!2256715 (= c!1349246 (isEmpty!40571 lt!2587220))))

(declare-fun e!4351069 () Bool)

(assert (=> d!2256715 (= (matchZipper!3574 lt!2587231 lt!2587220) e!4351069)))

(declare-fun b!7256316 () Bool)

(assert (=> b!7256316 (= e!4351069 (nullableZipper!2925 lt!2587231))))

(declare-fun b!7256317 () Bool)

(assert (=> b!7256317 (= e!4351069 (matchZipper!3574 (derivationStepZipper!3442 lt!2587231 (head!14922 lt!2587220)) (tail!14353 lt!2587220)))))

(assert (= (and d!2256715 c!1349246) b!7256316))

(assert (= (and d!2256715 (not c!1349246)) b!7256317))

(assert (=> d!2256715 m!7937592))

(declare-fun m!7937768 () Bool)

(assert (=> b!7256316 m!7937768))

(assert (=> b!7256317 m!7937596))

(assert (=> b!7256317 m!7937596))

(declare-fun m!7937770 () Bool)

(assert (=> b!7256317 m!7937770))

(assert (=> b!7256317 m!7937600))

(assert (=> b!7256317 m!7937770))

(assert (=> b!7256317 m!7937600))

(declare-fun m!7937772 () Bool)

(assert (=> b!7256317 m!7937772))

(assert (=> b!7256141 d!2256715))

(assert (=> b!7256141 d!2256681))

(declare-fun call!661253 () (Set Context!15208))

(declare-fun b!7256318 () Bool)

(declare-fun e!4351072 () (Set Context!15208))

(assert (=> b!7256318 (= e!4351072 (set.union call!661253 (derivationStepZipperUp!2488 (Context!15209 (t!384636 (exprs!8104 lt!2587222))) (h!76898 s1!1971))))))

(declare-fun b!7256319 () Bool)

(declare-fun e!4351071 () Bool)

(assert (=> b!7256319 (= e!4351071 (nullable!7924 (h!76896 (exprs!8104 lt!2587222))))))

(declare-fun b!7256320 () Bool)

(declare-fun e!4351070 () (Set Context!15208))

(assert (=> b!7256320 (= e!4351070 call!661253)))

(declare-fun d!2256717 () Bool)

(declare-fun c!1349248 () Bool)

(assert (=> d!2256717 (= c!1349248 e!4351071)))

(declare-fun res!2942578 () Bool)

(assert (=> d!2256717 (=> (not res!2942578) (not e!4351071))))

(assert (=> d!2256717 (= res!2942578 (is-Cons!70448 (exprs!8104 lt!2587222)))))

(assert (=> d!2256717 (= (derivationStepZipperUp!2488 lt!2587222 (h!76898 s1!1971)) e!4351072)))

(declare-fun bm!661248 () Bool)

(assert (=> bm!661248 (= call!661253 (derivationStepZipperDown!2658 (h!76896 (exprs!8104 lt!2587222)) (Context!15209 (t!384636 (exprs!8104 lt!2587222))) (h!76898 s1!1971)))))

(declare-fun b!7256321 () Bool)

(assert (=> b!7256321 (= e!4351072 e!4351070)))

(declare-fun c!1349247 () Bool)

(assert (=> b!7256321 (= c!1349247 (is-Cons!70448 (exprs!8104 lt!2587222)))))

(declare-fun b!7256322 () Bool)

(assert (=> b!7256322 (= e!4351070 (as set.empty (Set Context!15208)))))

(assert (= (and d!2256717 res!2942578) b!7256319))

(assert (= (and d!2256717 c!1349248) b!7256318))

(assert (= (and d!2256717 (not c!1349248)) b!7256321))

(assert (= (and b!7256321 c!1349247) b!7256320))

(assert (= (and b!7256321 (not c!1349247)) b!7256322))

(assert (= (or b!7256318 b!7256320) bm!661248))

(declare-fun m!7937774 () Bool)

(assert (=> b!7256318 m!7937774))

(declare-fun m!7937776 () Bool)

(assert (=> b!7256319 m!7937776))

(declare-fun m!7937778 () Bool)

(assert (=> bm!661248 m!7937778))

(assert (=> b!7256141 d!2256717))

(declare-fun d!2256719 () Bool)

(declare-fun c!1349249 () Bool)

(assert (=> d!2256719 (= c!1349249 (isEmpty!40571 lt!2587220))))

(declare-fun e!4351073 () Bool)

(assert (=> d!2256719 (= (matchZipper!3574 lt!2587232 lt!2587220) e!4351073)))

(declare-fun b!7256323 () Bool)

(assert (=> b!7256323 (= e!4351073 (nullableZipper!2925 lt!2587232))))

(declare-fun b!7256324 () Bool)

(assert (=> b!7256324 (= e!4351073 (matchZipper!3574 (derivationStepZipper!3442 lt!2587232 (head!14922 lt!2587220)) (tail!14353 lt!2587220)))))

(assert (= (and d!2256719 c!1349249) b!7256323))

(assert (= (and d!2256719 (not c!1349249)) b!7256324))

(assert (=> d!2256719 m!7937592))

(declare-fun m!7937780 () Bool)

(assert (=> b!7256323 m!7937780))

(assert (=> b!7256324 m!7937596))

(assert (=> b!7256324 m!7937596))

(declare-fun m!7937782 () Bool)

(assert (=> b!7256324 m!7937782))

(assert (=> b!7256324 m!7937600))

(assert (=> b!7256324 m!7937782))

(assert (=> b!7256324 m!7937600))

(declare-fun m!7937784 () Bool)

(assert (=> b!7256324 m!7937784))

(assert (=> b!7256143 d!2256719))

(declare-fun d!2256721 () Bool)

(declare-fun lt!2587362 () Bool)

(assert (=> d!2256721 (= lt!2587362 (exists!4407 (toList!11493 lt!2587234) lambda!445153))))

(declare-fun choose!56107 ((Set Context!15208) Int) Bool)

(assert (=> d!2256721 (= lt!2587362 (choose!56107 lt!2587234 lambda!445153))))

(assert (=> d!2256721 (= (exists!4406 lt!2587234 lambda!445153) lt!2587362)))

(declare-fun bs!1907791 () Bool)

(assert (= bs!1907791 d!2256721))

(assert (=> bs!1907791 m!7937406))

(assert (=> bs!1907791 m!7937406))

(declare-fun m!7937786 () Bool)

(assert (=> bs!1907791 m!7937786))

(declare-fun m!7937788 () Bool)

(assert (=> bs!1907791 m!7937788))

(assert (=> b!7256134 d!2256721))

(declare-fun bs!1907792 () Bool)

(declare-fun d!2256723 () Bool)

(assert (= bs!1907792 (and d!2256723 b!7256134)))

(declare-fun lambda!445196 () Int)

(assert (=> bs!1907792 (not (= lambda!445196 lambda!445153))))

(assert (=> d!2256723 true))

(declare-fun order!29005 () Int)

(declare-fun dynLambda!28784 (Int Int) Int)

(assert (=> d!2256723 (< (dynLambda!28784 order!29005 lambda!445153) (dynLambda!28784 order!29005 lambda!445196))))

(declare-fun forall!17517 (List!70573 Int) Bool)

(assert (=> d!2256723 (= (exists!4407 lt!2587224 lambda!445153) (not (forall!17517 lt!2587224 lambda!445196)))))

(declare-fun bs!1907793 () Bool)

(assert (= bs!1907793 d!2256723))

(declare-fun m!7937790 () Bool)

(assert (=> bs!1907793 m!7937790))

(assert (=> b!7256134 d!2256723))

(declare-fun bs!1907794 () Bool)

(declare-fun d!2256725 () Bool)

(assert (= bs!1907794 (and d!2256725 b!7256134)))

(declare-fun lambda!445199 () Int)

(assert (=> bs!1907794 (= lambda!445199 lambda!445153)))

(declare-fun bs!1907795 () Bool)

(assert (= bs!1907795 (and d!2256725 d!2256723)))

(assert (=> bs!1907795 (not (= lambda!445199 lambda!445196))))

(assert (=> d!2256725 true))

(assert (=> d!2256725 (exists!4407 lt!2587224 lambda!445199)))

(declare-fun lt!2587365 () Unit!163924)

(declare-fun choose!56108 (List!70573 List!70574) Unit!163924)

(assert (=> d!2256725 (= lt!2587365 (choose!56108 lt!2587224 (t!384638 s1!1971)))))

(declare-fun content!14646 (List!70573) (Set Context!15208))

(assert (=> d!2256725 (matchZipper!3574 (content!14646 lt!2587224) (t!384638 s1!1971))))

(assert (=> d!2256725 (= (lemmaZipperMatchesExistsMatchingContext!767 lt!2587224 (t!384638 s1!1971)) lt!2587365)))

(declare-fun bs!1907796 () Bool)

(assert (= bs!1907796 d!2256725))

(declare-fun m!7937792 () Bool)

(assert (=> bs!1907796 m!7937792))

(declare-fun m!7937794 () Bool)

(assert (=> bs!1907796 m!7937794))

(declare-fun m!7937796 () Bool)

(assert (=> bs!1907796 m!7937796))

(assert (=> bs!1907796 m!7937796))

(declare-fun m!7937798 () Bool)

(assert (=> bs!1907796 m!7937798))

(assert (=> b!7256134 d!2256725))

(declare-fun d!2256727 () Bool)

(declare-fun e!4351076 () Bool)

(assert (=> d!2256727 e!4351076))

(declare-fun res!2942581 () Bool)

(assert (=> d!2256727 (=> (not res!2942581) (not e!4351076))))

(declare-fun lt!2587368 () List!70573)

(declare-fun noDuplicate!3001 (List!70573) Bool)

(assert (=> d!2256727 (= res!2942581 (noDuplicate!3001 lt!2587368))))

(declare-fun choose!56109 ((Set Context!15208)) List!70573)

(assert (=> d!2256727 (= lt!2587368 (choose!56109 lt!2587234))))

(assert (=> d!2256727 (= (toList!11493 lt!2587234) lt!2587368)))

(declare-fun b!7256329 () Bool)

(assert (=> b!7256329 (= e!4351076 (= (content!14646 lt!2587368) lt!2587234))))

(assert (= (and d!2256727 res!2942581) b!7256329))

(declare-fun m!7937800 () Bool)

(assert (=> d!2256727 m!7937800))

(declare-fun m!7937802 () Bool)

(assert (=> d!2256727 m!7937802))

(declare-fun m!7937804 () Bool)

(assert (=> b!7256329 m!7937804))

(assert (=> b!7256134 d!2256727))

(declare-fun d!2256729 () Bool)

(declare-fun choose!56110 ((Set Context!15208) Int) (Set Context!15208))

(assert (=> d!2256729 (= (flatMap!2829 lt!2587239 lambda!445154) (choose!56110 lt!2587239 lambda!445154))))

(declare-fun bs!1907797 () Bool)

(assert (= bs!1907797 d!2256729))

(declare-fun m!7937806 () Bool)

(assert (=> bs!1907797 m!7937806))

(assert (=> b!7256145 d!2256729))

(declare-fun d!2256731 () Bool)

(assert (=> d!2256731 (= (tail!14352 lt!2587210) (t!384636 lt!2587210))))

(assert (=> b!7256145 d!2256731))

(declare-fun d!2256733 () Bool)

(assert (=> d!2256733 (= (flatMap!2829 lt!2587227 lambda!445154) (choose!56110 lt!2587227 lambda!445154))))

(declare-fun bs!1907798 () Bool)

(assert (= bs!1907798 d!2256733))

(declare-fun m!7937808 () Bool)

(assert (=> bs!1907798 m!7937808))

(assert (=> b!7256145 d!2256733))

(declare-fun d!2256735 () Bool)

(declare-fun dynLambda!28785 (Int Context!15208) (Set Context!15208))

(assert (=> d!2256735 (= (flatMap!2829 lt!2587227 lambda!445154) (dynLambda!28785 lambda!445154 ct1!232))))

(declare-fun lt!2587371 () Unit!163924)

(declare-fun choose!56111 ((Set Context!15208) Context!15208 Int) Unit!163924)

(assert (=> d!2256735 (= lt!2587371 (choose!56111 lt!2587227 ct1!232 lambda!445154))))

(assert (=> d!2256735 (= lt!2587227 (set.insert ct1!232 (as set.empty (Set Context!15208))))))

(assert (=> d!2256735 (= (lemmaFlatMapOnSingletonSet!2233 lt!2587227 ct1!232 lambda!445154) lt!2587371)))

(declare-fun b_lambda!278999 () Bool)

(assert (=> (not b_lambda!278999) (not d!2256735)))

(declare-fun bs!1907799 () Bool)

(assert (= bs!1907799 d!2256735))

(assert (=> bs!1907799 m!7937452))

(declare-fun m!7937810 () Bool)

(assert (=> bs!1907799 m!7937810))

(declare-fun m!7937812 () Bool)

(assert (=> bs!1907799 m!7937812))

(assert (=> bs!1907799 m!7937468))

(assert (=> b!7256145 d!2256735))

(assert (=> b!7256145 d!2256689))

(assert (=> b!7256145 d!2256681))

(declare-fun d!2256737 () Bool)

(declare-fun nullableFct!3114 (Regex!18664) Bool)

(assert (=> d!2256737 (= (nullable!7924 (h!76896 (exprs!8104 ct1!232))) (nullableFct!3114 (h!76896 (exprs!8104 ct1!232))))))

(declare-fun bs!1907800 () Bool)

(assert (= bs!1907800 d!2256737))

(declare-fun m!7937814 () Bool)

(assert (=> bs!1907800 m!7937814))

(assert (=> b!7256145 d!2256737))

(declare-fun b!7256332 () Bool)

(declare-fun res!2942583 () Bool)

(declare-fun e!4351078 () Bool)

(assert (=> b!7256332 (=> (not res!2942583) (not e!4351078))))

(declare-fun lt!2587372 () List!70574)

(assert (=> b!7256332 (= res!2942583 (= (size!41739 lt!2587372) (+ (size!41739 s1!1971) (size!41739 s2!1849))))))

(declare-fun b!7256330 () Bool)

(declare-fun e!4351077 () List!70574)

(assert (=> b!7256330 (= e!4351077 s2!1849)))

(declare-fun b!7256331 () Bool)

(assert (=> b!7256331 (= e!4351077 (Cons!70450 (h!76898 s1!1971) (++!16590 (t!384638 s1!1971) s2!1849)))))

(declare-fun b!7256333 () Bool)

(assert (=> b!7256333 (= e!4351078 (or (not (= s2!1849 Nil!70450)) (= lt!2587372 s1!1971)))))

(declare-fun d!2256739 () Bool)

(assert (=> d!2256739 e!4351078))

(declare-fun res!2942582 () Bool)

(assert (=> d!2256739 (=> (not res!2942582) (not e!4351078))))

(assert (=> d!2256739 (= res!2942582 (= (content!14644 lt!2587372) (set.union (content!14644 s1!1971) (content!14644 s2!1849))))))

(assert (=> d!2256739 (= lt!2587372 e!4351077)))

(declare-fun c!1349252 () Bool)

(assert (=> d!2256739 (= c!1349252 (is-Nil!70450 s1!1971))))

(assert (=> d!2256739 (= (++!16590 s1!1971 s2!1849) lt!2587372)))

(assert (= (and d!2256739 c!1349252) b!7256330))

(assert (= (and d!2256739 (not c!1349252)) b!7256331))

(assert (= (and d!2256739 res!2942582) b!7256332))

(assert (= (and b!7256332 res!2942583) b!7256333))

(declare-fun m!7937816 () Bool)

(assert (=> b!7256332 m!7937816))

(declare-fun m!7937818 () Bool)

(assert (=> b!7256332 m!7937818))

(assert (=> b!7256332 m!7937626))

(assert (=> b!7256331 m!7937484))

(declare-fun m!7937820 () Bool)

(assert (=> d!2256739 m!7937820))

(declare-fun m!7937822 () Bool)

(assert (=> d!2256739 m!7937822))

(assert (=> d!2256739 m!7937634))

(assert (=> b!7256145 d!2256739))

(assert (=> b!7256145 d!2256673))

(declare-fun d!2256741 () Bool)

(assert (=> d!2256741 (= (tail!14353 (++!16590 s1!1971 s2!1849)) (t!384638 (++!16590 s1!1971 s2!1849)))))

(assert (=> b!7256145 d!2256741))

(declare-fun d!2256743 () Bool)

(assert (=> d!2256743 (= (flatMap!2829 lt!2587239 lambda!445154) (dynLambda!28785 lambda!445154 lt!2587226))))

(declare-fun lt!2587373 () Unit!163924)

(assert (=> d!2256743 (= lt!2587373 (choose!56111 lt!2587239 lt!2587226 lambda!445154))))

(assert (=> d!2256743 (= lt!2587239 (set.insert lt!2587226 (as set.empty (Set Context!15208))))))

(assert (=> d!2256743 (= (lemmaFlatMapOnSingletonSet!2233 lt!2587239 lt!2587226 lambda!445154) lt!2587373)))

(declare-fun b_lambda!279001 () Bool)

(assert (=> (not b_lambda!279001) (not d!2256743)))

(declare-fun bs!1907801 () Bool)

(assert (= bs!1907801 d!2256743))

(assert (=> bs!1907801 m!7937456))

(declare-fun m!7937824 () Bool)

(assert (=> bs!1907801 m!7937824))

(declare-fun m!7937826 () Bool)

(assert (=> bs!1907801 m!7937826))

(assert (=> bs!1907801 m!7937428))

(assert (=> b!7256145 d!2256743))

(declare-fun b!7256334 () Bool)

(declare-fun e!4351080 () (Set Context!15208))

(declare-fun e!4351081 () (Set Context!15208))

(assert (=> b!7256334 (= e!4351080 e!4351081)))

(declare-fun c!1349257 () Bool)

(assert (=> b!7256334 (= c!1349257 (is-Concat!27509 (h!76896 (exprs!8104 ct1!232))))))

(declare-fun c!1349256 () Bool)

(declare-fun bm!661249 () Bool)

(declare-fun call!661259 () List!70572)

(assert (=> bm!661249 (= call!661259 ($colon$colon!2929 (exprs!8104 lt!2587236) (ite (or c!1349256 c!1349257) (regTwo!37840 (h!76896 (exprs!8104 ct1!232))) (h!76896 (exprs!8104 ct1!232)))))))

(declare-fun b!7256336 () Bool)

(declare-fun e!4351083 () (Set Context!15208))

(declare-fun e!4351079 () (Set Context!15208))

(assert (=> b!7256336 (= e!4351083 e!4351079)))

(declare-fun c!1349253 () Bool)

(assert (=> b!7256336 (= c!1349253 (is-Union!18664 (h!76896 (exprs!8104 ct1!232))))))

(declare-fun b!7256337 () Bool)

(declare-fun call!661258 () (Set Context!15208))

(declare-fun call!661257 () (Set Context!15208))

(assert (=> b!7256337 (= e!4351080 (set.union call!661258 call!661257))))

(declare-fun bm!661250 () Bool)

(assert (=> bm!661250 (= call!661258 (derivationStepZipperDown!2658 (ite c!1349253 (regTwo!37841 (h!76896 (exprs!8104 ct1!232))) (regOne!37840 (h!76896 (exprs!8104 ct1!232)))) (ite c!1349253 lt!2587236 (Context!15209 call!661259)) (h!76898 s1!1971)))))

(declare-fun b!7256338 () Bool)

(declare-fun e!4351084 () (Set Context!15208))

(declare-fun call!661255 () (Set Context!15208))

(assert (=> b!7256338 (= e!4351084 call!661255)))

(declare-fun b!7256339 () Bool)

(declare-fun e!4351082 () Bool)

(assert (=> b!7256339 (= c!1349256 e!4351082)))

(declare-fun res!2942584 () Bool)

(assert (=> b!7256339 (=> (not res!2942584) (not e!4351082))))

(assert (=> b!7256339 (= res!2942584 (is-Concat!27509 (h!76896 (exprs!8104 ct1!232))))))

(assert (=> b!7256339 (= e!4351079 e!4351080)))

(declare-fun b!7256340 () Bool)

(assert (=> b!7256340 (= e!4351082 (nullable!7924 (regOne!37840 (h!76896 (exprs!8104 ct1!232)))))))

(declare-fun b!7256341 () Bool)

(assert (=> b!7256341 (= e!4351081 call!661255)))

(declare-fun bm!661251 () Bool)

(assert (=> bm!661251 (= call!661255 call!661257)))

(declare-fun b!7256342 () Bool)

(assert (=> b!7256342 (= e!4351084 (as set.empty (Set Context!15208)))))

(declare-fun bm!661252 () Bool)

(declare-fun call!661254 () List!70572)

(assert (=> bm!661252 (= call!661254 call!661259)))

(declare-fun b!7256335 () Bool)

(declare-fun c!1349255 () Bool)

(assert (=> b!7256335 (= c!1349255 (is-Star!18664 (h!76896 (exprs!8104 ct1!232))))))

(assert (=> b!7256335 (= e!4351081 e!4351084)))

(declare-fun d!2256745 () Bool)

(declare-fun c!1349254 () Bool)

(assert (=> d!2256745 (= c!1349254 (and (is-ElementMatch!18664 (h!76896 (exprs!8104 ct1!232))) (= (c!1349187 (h!76896 (exprs!8104 ct1!232))) (h!76898 s1!1971))))))

(assert (=> d!2256745 (= (derivationStepZipperDown!2658 (h!76896 (exprs!8104 ct1!232)) lt!2587236 (h!76898 s1!1971)) e!4351083)))

(declare-fun b!7256343 () Bool)

(assert (=> b!7256343 (= e!4351083 (set.insert lt!2587236 (as set.empty (Set Context!15208))))))

(declare-fun call!661256 () (Set Context!15208))

(declare-fun bm!661253 () Bool)

(assert (=> bm!661253 (= call!661256 (derivationStepZipperDown!2658 (ite c!1349253 (regOne!37841 (h!76896 (exprs!8104 ct1!232))) (ite c!1349256 (regTwo!37840 (h!76896 (exprs!8104 ct1!232))) (ite c!1349257 (regOne!37840 (h!76896 (exprs!8104 ct1!232))) (reg!18993 (h!76896 (exprs!8104 ct1!232)))))) (ite (or c!1349253 c!1349256) lt!2587236 (Context!15209 call!661254)) (h!76898 s1!1971)))))

(declare-fun b!7256344 () Bool)

(assert (=> b!7256344 (= e!4351079 (set.union call!661256 call!661258))))

(declare-fun bm!661254 () Bool)

(assert (=> bm!661254 (= call!661257 call!661256)))

(assert (= (and d!2256745 c!1349254) b!7256343))

(assert (= (and d!2256745 (not c!1349254)) b!7256336))

(assert (= (and b!7256336 c!1349253) b!7256344))

(assert (= (and b!7256336 (not c!1349253)) b!7256339))

(assert (= (and b!7256339 res!2942584) b!7256340))

(assert (= (and b!7256339 c!1349256) b!7256337))

(assert (= (and b!7256339 (not c!1349256)) b!7256334))

(assert (= (and b!7256334 c!1349257) b!7256341))

(assert (= (and b!7256334 (not c!1349257)) b!7256335))

(assert (= (and b!7256335 c!1349255) b!7256338))

(assert (= (and b!7256335 (not c!1349255)) b!7256342))

(assert (= (or b!7256341 b!7256338) bm!661252))

(assert (= (or b!7256341 b!7256338) bm!661251))

(assert (= (or b!7256337 bm!661252) bm!661249))

(assert (= (or b!7256337 bm!661251) bm!661254))

(assert (= (or b!7256344 b!7256337) bm!661250))

(assert (= (or b!7256344 bm!661254) bm!661253))

(declare-fun m!7937828 () Bool)

(assert (=> bm!661249 m!7937828))

(assert (=> b!7256340 m!7937704))

(declare-fun m!7937830 () Bool)

(assert (=> b!7256343 m!7937830))

(declare-fun m!7937832 () Bool)

(assert (=> bm!661253 m!7937832))

(declare-fun m!7937834 () Bool)

(assert (=> bm!661250 m!7937834))

(assert (=> b!7256145 d!2256745))

(declare-fun b!7256349 () Bool)

(declare-fun e!4351087 () Bool)

(declare-fun tp!2038223 () Bool)

(declare-fun tp!2038224 () Bool)

(assert (=> b!7256349 (= e!4351087 (and tp!2038223 tp!2038224))))

(assert (=> b!7256142 (= tp!2038203 e!4351087)))

(assert (= (and b!7256142 (is-Cons!70448 (exprs!8104 ct1!232))) b!7256349))

(declare-fun b!7256354 () Bool)

(declare-fun e!4351090 () Bool)

(declare-fun tp!2038227 () Bool)

(assert (=> b!7256354 (= e!4351090 (and tp_is_empty!46793 tp!2038227))))

(assert (=> b!7256133 (= tp!2038204 e!4351090)))

(assert (= (and b!7256133 (is-Cons!70450 (t!384638 s1!1971))) b!7256354))

(declare-fun b!7256355 () Bool)

(declare-fun e!4351091 () Bool)

(declare-fun tp!2038228 () Bool)

(assert (=> b!7256355 (= e!4351091 (and tp_is_empty!46793 tp!2038228))))

(assert (=> b!7256144 (= tp!2038205 e!4351091)))

(assert (= (and b!7256144 (is-Cons!70450 (t!384638 s2!1849))) b!7256355))

(declare-fun b!7256356 () Bool)

(declare-fun e!4351092 () Bool)

(declare-fun tp!2038229 () Bool)

(declare-fun tp!2038230 () Bool)

(assert (=> b!7256356 (= e!4351092 (and tp!2038229 tp!2038230))))

(assert (=> b!7256139 (= tp!2038206 e!4351092)))

(assert (= (and b!7256139 (is-Cons!70448 (exprs!8104 ct2!328))) b!7256356))

(declare-fun b_lambda!279003 () Bool)

(assert (= b_lambda!278997 (or b!7256134 b_lambda!279003)))

(declare-fun bs!1907802 () Bool)

(declare-fun d!2256747 () Bool)

(assert (= bs!1907802 (and d!2256747 b!7256134)))

(assert (=> bs!1907802 (= (dynLambda!28783 lambda!445153 lt!2587338) (matchZipper!3574 (set.insert lt!2587338 (as set.empty (Set Context!15208))) (t!384638 s1!1971)))))

(declare-fun m!7937836 () Bool)

(assert (=> bs!1907802 m!7937836))

(assert (=> bs!1907802 m!7937836))

(declare-fun m!7937838 () Bool)

(assert (=> bs!1907802 m!7937838))

(assert (=> d!2256663 d!2256747))

(declare-fun b_lambda!279005 () Bool)

(assert (= b_lambda!278999 (or b!7256145 b_lambda!279005)))

(declare-fun bs!1907803 () Bool)

(declare-fun d!2256749 () Bool)

(assert (= bs!1907803 (and d!2256749 b!7256145)))

(assert (=> bs!1907803 (= (dynLambda!28785 lambda!445154 ct1!232) (derivationStepZipperUp!2488 ct1!232 (h!76898 s1!1971)))))

(assert (=> bs!1907803 m!7937448))

(assert (=> d!2256735 d!2256749))

(declare-fun b_lambda!279007 () Bool)

(assert (= b_lambda!279001 (or b!7256145 b_lambda!279007)))

(declare-fun bs!1907804 () Bool)

(declare-fun d!2256751 () Bool)

(assert (= bs!1907804 (and d!2256751 b!7256145)))

(assert (=> bs!1907804 (= (dynLambda!28785 lambda!445154 lt!2587226) (derivationStepZipperUp!2488 lt!2587226 (h!76898 s1!1971)))))

(assert (=> bs!1907804 m!7937440))

(assert (=> d!2256743 d!2256751))

(push 1)

(assert (not b!7256329))

(assert (not b_lambda!279007))

(assert (not d!2256681))

(assert (not bm!661242))

(assert (not d!2256729))

(assert (not b!7256354))

(assert (not b!7256356))

(assert (not b!7256249))

(assert (not b!7256292))

(assert (not d!2256683))

(assert (not d!2256669))

(assert tp_is_empty!46793)

(assert (not d!2256725))

(assert (not d!2256705))

(assert (not b!7256323))

(assert (not b!7256355))

(assert (not b!7256259))

(assert (not d!2256735))

(assert (not d!2256743))

(assert (not b!7256303))

(assert (not b!7256299))

(assert (not b!7256298))

(assert (not bm!661249))

(assert (not b!7256308))

(assert (not b!7256256))

(assert (not b!7256255))

(assert (not bm!661248))

(assert (not b!7256349))

(assert (not b_lambda!279005))

(assert (not b!7256316))

(assert (not b!7256232))

(assert (not b!7256304))

(assert (not b_lambda!279003))

(assert (not b!7256332))

(assert (not b!7256250))

(assert (not d!2256677))

(assert (not d!2256733))

(assert (not bm!661253))

(assert (not d!2256723))

(assert (not d!2256707))

(assert (not b!7256340))

(assert (not d!2256721))

(assert (not b!7256300))

(assert (not d!2256727))

(assert (not bs!1907802))

(assert (not bm!661250))

(assert (not d!2256661))

(assert (not bs!1907803))

(assert (not bs!1907804))

(assert (not b!7256319))

(assert (not d!2256675))

(assert (not d!2256679))

(assert (not d!2256703))

(assert (not b!7256309))

(assert (not d!2256663))

(assert (not b!7256205))

(assert (not d!2256685))

(assert (not d!2256697))

(assert (not d!2256667))

(assert (not b!7256233))

(assert (not b!7256220))

(assert (not b!7256297))

(assert (not b!7256253))

(assert (not b!7256317))

(assert (not d!2256719))

(assert (not bm!661241))

(assert (not b!7256318))

(assert (not d!2256695))

(assert (not b!7256312))

(assert (not b!7256301))

(assert (not d!2256739))

(assert (not bm!661245))

(assert (not bm!661228))

(assert (not b!7256252))

(assert (not b!7256206))

(assert (not b!7256219))

(assert (not b!7256307))

(assert (not bm!661227))

(assert (not d!2256699))

(assert (not d!2256737))

(assert (not b!7256302))

(assert (not d!2256709))

(assert (not d!2256671))

(assert (not b!7256246))

(assert (not b!7256247))

(assert (not b!7256310))

(assert (not b!7256324))

(assert (not b!7256311))

(assert (not d!2256711))

(assert (not d!2256715))

(assert (not bm!661247))

(assert (not b!7256331))

(assert (not d!2256701))

(assert (not b!7256260))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

