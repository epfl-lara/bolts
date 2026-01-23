; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!704406 () Bool)

(assert start!704406)

(declare-fun b!7245106 () Bool)

(assert (=> b!7245106 true))

(declare-fun b!7245107 () Bool)

(assert (=> b!7245107 true))

(declare-fun b!7245098 () Bool)

(declare-fun e!4343965 () Bool)

(declare-fun e!4343968 () Bool)

(assert (=> b!7245098 (= e!4343965 e!4343968)))

(declare-fun res!2938884 () Bool)

(assert (=> b!7245098 (=> res!2938884 e!4343968)))

(declare-datatypes ((C!37454 0))(
  ( (C!37455 (val!28675 Int)) )
))
(declare-datatypes ((Regex!18590 0))(
  ( (ElementMatch!18590 (c!1345856 C!37454)) (Concat!27435 (regOne!37692 Regex!18590) (regTwo!37692 Regex!18590)) (EmptyExpr!18590) (Star!18590 (reg!18919 Regex!18590)) (EmptyLang!18590) (Union!18590 (regOne!37693 Regex!18590) (regTwo!37693 Regex!18590)) )
))
(declare-datatypes ((List!70367 0))(
  ( (Nil!70243) (Cons!70243 (h!76691 Regex!18590) (t!384419 List!70367)) )
))
(declare-datatypes ((Context!15060 0))(
  ( (Context!15061 (exprs!8030 List!70367)) )
))
(declare-fun ct1!232 () Context!15060)

(declare-fun isEmpty!40466 (List!70367) Bool)

(assert (=> b!7245098 (= res!2938884 (isEmpty!40466 (exprs!8030 ct1!232)))))

(declare-fun lt!2582216 () (Set Context!15060))

(declare-datatypes ((List!70368 0))(
  ( (Nil!70244) (Cons!70244 (h!76692 C!37454) (t!384420 List!70368)) )
))
(declare-fun s1!1971 () List!70368)

(declare-fun derivationStepZipperUp!2444 (Context!15060 C!37454) (Set Context!15060))

(assert (=> b!7245098 (= lt!2582216 (derivationStepZipperUp!2444 ct1!232 (h!76692 s1!1971)))))

(declare-datatypes ((Unit!163767 0))(
  ( (Unit!163768) )
))
(declare-fun lt!2582226 () Unit!163767)

(declare-fun lambda!442898 () Int)

(declare-fun lt!2582215 () Context!15060)

(declare-fun ct2!328 () Context!15060)

(declare-fun lemmaConcatPreservesForall!1399 (List!70367 List!70367 Int) Unit!163767)

(assert (=> b!7245098 (= lt!2582226 (lemmaConcatPreservesForall!1399 (exprs!8030 lt!2582215) (exprs!8030 ct2!328) lambda!442898))))

(declare-fun s2!1849 () List!70368)

(declare-fun matchZipper!3500 ((Set Context!15060) List!70368) Bool)

(declare-fun ++!16464 (List!70367 List!70367) List!70367)

(declare-fun ++!16465 (List!70368 List!70368) List!70368)

(assert (=> b!7245098 (matchZipper!3500 (set.insert (Context!15061 (++!16464 (exprs!8030 lt!2582215) (exprs!8030 ct2!328))) (as set.empty (Set Context!15060))) (++!16465 (t!384420 s1!1971) s2!1849))))

(declare-fun lt!2582224 () Unit!163767)

(assert (=> b!7245098 (= lt!2582224 (lemmaConcatPreservesForall!1399 (exprs!8030 lt!2582215) (exprs!8030 ct2!328) lambda!442898))))

(declare-fun lt!2582234 () Unit!163767)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!363 (Context!15060 Context!15060 List!70368 List!70368) Unit!163767)

(assert (=> b!7245098 (= lt!2582234 (lemmaConcatenateContextMatchesConcatOfStrings!363 lt!2582215 ct2!328 (t!384420 s1!1971) s2!1849))))

(declare-fun lt!2582229 () (Set Context!15060))

(declare-fun lambda!442899 () Int)

(declare-fun getWitness!2143 ((Set Context!15060) Int) Context!15060)

(assert (=> b!7245098 (= lt!2582215 (getWitness!2143 lt!2582229 lambda!442899))))

(declare-fun b!7245099 () Bool)

(declare-fun e!4343970 () Bool)

(declare-fun tp_is_empty!46645 () Bool)

(declare-fun tp!2036104 () Bool)

(assert (=> b!7245099 (= e!4343970 (and tp_is_empty!46645 tp!2036104))))

(declare-fun b!7245100 () Bool)

(declare-fun e!4343961 () Bool)

(declare-fun tp!2036101 () Bool)

(assert (=> b!7245100 (= e!4343961 tp!2036101)))

(declare-fun b!7245101 () Bool)

(declare-fun e!4343966 () Bool)

(assert (=> b!7245101 (= e!4343968 e!4343966)))

(declare-fun res!2938885 () Bool)

(assert (=> b!7245101 (=> res!2938885 e!4343966)))

(declare-fun lt!2582227 () List!70367)

(assert (=> b!7245101 (= res!2938885 (isEmpty!40466 lt!2582227))))

(declare-fun lt!2582221 () Unit!163767)

(assert (=> b!7245101 (= lt!2582221 (lemmaConcatPreservesForall!1399 (exprs!8030 ct1!232) (exprs!8030 ct2!328) lambda!442898))))

(declare-fun lt!2582222 () (Set Context!15060))

(declare-fun lt!2582228 () Context!15060)

(assert (=> b!7245101 (= lt!2582222 (derivationStepZipperUp!2444 lt!2582228 (h!76692 s1!1971)))))

(declare-fun lt!2582219 () Unit!163767)

(assert (=> b!7245101 (= lt!2582219 (lemmaConcatPreservesForall!1399 (exprs!8030 ct1!232) (exprs!8030 ct2!328) lambda!442898))))

(declare-fun lt!2582225 () (Set Context!15060))

(declare-fun derivationStepZipperDown!2614 (Regex!18590 Context!15060 C!37454) (Set Context!15060))

(declare-fun tail!14259 (List!70367) List!70367)

(assert (=> b!7245101 (= lt!2582225 (derivationStepZipperDown!2614 (h!76691 (exprs!8030 ct1!232)) (Context!15061 (tail!14259 (exprs!8030 ct1!232))) (h!76692 s1!1971)))))

(declare-fun b!7245102 () Bool)

(declare-fun e!4343967 () Bool)

(declare-fun tp!2036102 () Bool)

(assert (=> b!7245102 (= e!4343967 (and tp_is_empty!46645 tp!2036102))))

(declare-fun b!7245103 () Bool)

(declare-fun res!2938887 () Bool)

(declare-fun e!4343971 () Bool)

(assert (=> b!7245103 (=> (not res!2938887) (not e!4343971))))

(assert (=> b!7245103 (= res!2938887 (matchZipper!3500 (set.insert ct2!328 (as set.empty (Set Context!15060))) s2!1849))))

(declare-fun b!7245105 () Bool)

(declare-fun e!4343963 () Bool)

(declare-fun e!4343962 () Bool)

(assert (=> b!7245105 (= e!4343963 e!4343962)))

(declare-fun res!2938883 () Bool)

(assert (=> b!7245105 (=> (not res!2938883) (not e!4343962))))

(assert (=> b!7245105 (= res!2938883 (matchZipper!3500 lt!2582229 (t!384420 s1!1971)))))

(declare-fun lt!2582214 () (Set Context!15060))

(declare-fun derivationStepZipper!3378 ((Set Context!15060) C!37454) (Set Context!15060))

(assert (=> b!7245105 (= lt!2582229 (derivationStepZipper!3378 lt!2582214 (h!76692 s1!1971)))))

(assert (=> b!7245106 (= e!4343962 (not e!4343965))))

(declare-fun res!2938880 () Bool)

(assert (=> b!7245106 (=> res!2938880 e!4343965)))

(declare-fun exists!4299 ((Set Context!15060) Int) Bool)

(assert (=> b!7245106 (= res!2938880 (not (exists!4299 lt!2582229 lambda!442899)))))

(declare-datatypes ((List!70369 0))(
  ( (Nil!70245) (Cons!70245 (h!76693 Context!15060) (t!384421 List!70369)) )
))
(declare-fun lt!2582232 () List!70369)

(declare-fun exists!4300 (List!70369 Int) Bool)

(assert (=> b!7245106 (exists!4300 lt!2582232 lambda!442899)))

(declare-fun lt!2582230 () Unit!163767)

(declare-fun lemmaZipperMatchesExistsMatchingContext!717 (List!70369 List!70368) Unit!163767)

(assert (=> b!7245106 (= lt!2582230 (lemmaZipperMatchesExistsMatchingContext!717 lt!2582232 (t!384420 s1!1971)))))

(declare-fun toList!11436 ((Set Context!15060)) List!70369)

(assert (=> b!7245106 (= lt!2582232 (toList!11436 lt!2582229))))

(declare-fun e!4343964 () Bool)

(assert (=> b!7245107 (= e!4343966 e!4343964)))

(declare-fun res!2938881 () Bool)

(assert (=> b!7245107 (=> res!2938881 e!4343964)))

(declare-fun nullable!7883 (Regex!18590) Bool)

(assert (=> b!7245107 (= res!2938881 (nullable!7883 (h!76691 (exprs!8030 ct1!232))))))

(declare-fun lambda!442900 () Int)

(declare-fun lt!2582223 () (Set Context!15060))

(declare-fun flatMap!2778 ((Set Context!15060) Int) (Set Context!15060))

(assert (=> b!7245107 (= (flatMap!2778 lt!2582223 lambda!442900) (derivationStepZipperUp!2444 lt!2582228 (h!76692 s1!1971)))))

(declare-fun lt!2582220 () Unit!163767)

(declare-fun lemmaFlatMapOnSingletonSet!2201 ((Set Context!15060) Context!15060 Int) Unit!163767)

(assert (=> b!7245107 (= lt!2582220 (lemmaFlatMapOnSingletonSet!2201 lt!2582223 lt!2582228 lambda!442900))))

(declare-fun lt!2582231 () Unit!163767)

(assert (=> b!7245107 (= lt!2582231 (lemmaConcatPreservesForall!1399 (exprs!8030 ct1!232) (exprs!8030 ct2!328) lambda!442898))))

(assert (=> b!7245107 (= (flatMap!2778 lt!2582214 lambda!442900) (derivationStepZipperUp!2444 ct1!232 (h!76692 s1!1971)))))

(declare-fun lt!2582218 () Unit!163767)

(assert (=> b!7245107 (= lt!2582218 (lemmaFlatMapOnSingletonSet!2201 lt!2582214 ct1!232 lambda!442900))))

(declare-fun lt!2582233 () (Set Context!15060))

(assert (=> b!7245107 (= lt!2582233 (derivationStepZipperDown!2614 (h!76691 (exprs!8030 ct1!232)) (Context!15061 (tail!14259 lt!2582227)) (h!76692 s1!1971)))))

(declare-fun b!7245104 () Bool)

(assert (=> b!7245104 (= e!4343971 e!4343963)))

(declare-fun res!2938882 () Bool)

(assert (=> b!7245104 (=> (not res!2938882) (not e!4343963))))

(assert (=> b!7245104 (= res!2938882 (and (not (is-Nil!70243 (exprs!8030 ct1!232))) (is-Cons!70244 s1!1971)))))

(assert (=> b!7245104 (= lt!2582223 (set.insert lt!2582228 (as set.empty (Set Context!15060))))))

(assert (=> b!7245104 (= lt!2582228 (Context!15061 lt!2582227))))

(assert (=> b!7245104 (= lt!2582227 (++!16464 (exprs!8030 ct1!232) (exprs!8030 ct2!328)))))

(declare-fun lt!2582217 () Unit!163767)

(assert (=> b!7245104 (= lt!2582217 (lemmaConcatPreservesForall!1399 (exprs!8030 ct1!232) (exprs!8030 ct2!328) lambda!442898))))

(declare-fun res!2938886 () Bool)

(assert (=> start!704406 (=> (not res!2938886) (not e!4343971))))

(assert (=> start!704406 (= res!2938886 (matchZipper!3500 lt!2582214 s1!1971))))

(assert (=> start!704406 (= lt!2582214 (set.insert ct1!232 (as set.empty (Set Context!15060))))))

(assert (=> start!704406 e!4343971))

(declare-fun inv!89486 (Context!15060) Bool)

(assert (=> start!704406 (and (inv!89486 ct1!232) e!4343961)))

(assert (=> start!704406 e!4343970))

(assert (=> start!704406 e!4343967))

(declare-fun e!4343969 () Bool)

(assert (=> start!704406 (and (inv!89486 ct2!328) e!4343969)))

(declare-fun b!7245108 () Bool)

(assert (=> b!7245108 (= e!4343964 (= lt!2582216 lt!2582225))))

(declare-fun b!7245109 () Bool)

(declare-fun tp!2036103 () Bool)

(assert (=> b!7245109 (= e!4343969 tp!2036103)))

(assert (= (and start!704406 res!2938886) b!7245103))

(assert (= (and b!7245103 res!2938887) b!7245104))

(assert (= (and b!7245104 res!2938882) b!7245105))

(assert (= (and b!7245105 res!2938883) b!7245106))

(assert (= (and b!7245106 (not res!2938880)) b!7245098))

(assert (= (and b!7245098 (not res!2938884)) b!7245101))

(assert (= (and b!7245101 (not res!2938885)) b!7245107))

(assert (= (and b!7245107 (not res!2938881)) b!7245108))

(assert (= start!704406 b!7245100))

(assert (= (and start!704406 (is-Cons!70244 s1!1971)) b!7245099))

(assert (= (and start!704406 (is-Cons!70244 s2!1849)) b!7245102))

(assert (= start!704406 b!7245109))

(declare-fun m!7921334 () Bool)

(assert (=> b!7245103 m!7921334))

(assert (=> b!7245103 m!7921334))

(declare-fun m!7921336 () Bool)

(assert (=> b!7245103 m!7921336))

(declare-fun m!7921338 () Bool)

(assert (=> b!7245101 m!7921338))

(declare-fun m!7921340 () Bool)

(assert (=> b!7245101 m!7921340))

(declare-fun m!7921342 () Bool)

(assert (=> b!7245101 m!7921342))

(declare-fun m!7921344 () Bool)

(assert (=> b!7245101 m!7921344))

(declare-fun m!7921346 () Bool)

(assert (=> b!7245101 m!7921346))

(assert (=> b!7245101 m!7921344))

(declare-fun m!7921348 () Bool)

(assert (=> b!7245107 m!7921348))

(assert (=> b!7245107 m!7921338))

(declare-fun m!7921350 () Bool)

(assert (=> b!7245107 m!7921350))

(declare-fun m!7921352 () Bool)

(assert (=> b!7245107 m!7921352))

(declare-fun m!7921354 () Bool)

(assert (=> b!7245107 m!7921354))

(declare-fun m!7921356 () Bool)

(assert (=> b!7245107 m!7921356))

(assert (=> b!7245107 m!7921344))

(declare-fun m!7921358 () Bool)

(assert (=> b!7245107 m!7921358))

(declare-fun m!7921360 () Bool)

(assert (=> b!7245107 m!7921360))

(declare-fun m!7921362 () Bool)

(assert (=> b!7245107 m!7921362))

(declare-fun m!7921364 () Bool)

(assert (=> b!7245104 m!7921364))

(declare-fun m!7921366 () Bool)

(assert (=> b!7245104 m!7921366))

(assert (=> b!7245104 m!7921344))

(declare-fun m!7921368 () Bool)

(assert (=> b!7245098 m!7921368))

(declare-fun m!7921370 () Bool)

(assert (=> b!7245098 m!7921370))

(declare-fun m!7921372 () Bool)

(assert (=> b!7245098 m!7921372))

(declare-fun m!7921374 () Bool)

(assert (=> b!7245098 m!7921374))

(assert (=> b!7245098 m!7921372))

(assert (=> b!7245098 m!7921374))

(declare-fun m!7921376 () Bool)

(assert (=> b!7245098 m!7921376))

(declare-fun m!7921378 () Bool)

(assert (=> b!7245098 m!7921378))

(declare-fun m!7921380 () Bool)

(assert (=> b!7245098 m!7921380))

(declare-fun m!7921382 () Bool)

(assert (=> b!7245098 m!7921382))

(assert (=> b!7245098 m!7921352))

(assert (=> b!7245098 m!7921368))

(declare-fun m!7921384 () Bool)

(assert (=> b!7245105 m!7921384))

(declare-fun m!7921386 () Bool)

(assert (=> b!7245105 m!7921386))

(declare-fun m!7921388 () Bool)

(assert (=> start!704406 m!7921388))

(declare-fun m!7921390 () Bool)

(assert (=> start!704406 m!7921390))

(declare-fun m!7921392 () Bool)

(assert (=> start!704406 m!7921392))

(declare-fun m!7921394 () Bool)

(assert (=> start!704406 m!7921394))

(declare-fun m!7921396 () Bool)

(assert (=> b!7245106 m!7921396))

(declare-fun m!7921398 () Bool)

(assert (=> b!7245106 m!7921398))

(declare-fun m!7921400 () Bool)

(assert (=> b!7245106 m!7921400))

(declare-fun m!7921402 () Bool)

(assert (=> b!7245106 m!7921402))

(push 1)

(assert (not b!7245105))

(assert (not b!7245106))

(assert (not b!7245100))

(assert (not b!7245107))

(assert (not b!7245101))

(assert (not b!7245099))

(assert (not start!704406))

(assert (not b!7245098))

(assert (not b!7245104))

(assert (not b!7245102))

(assert tp_is_empty!46645)

(assert (not b!7245109))

(assert (not b!7245103))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7245164 () Bool)

(declare-fun res!2938917 () Bool)

(declare-fun e!4344010 () Bool)

(assert (=> b!7245164 (=> (not res!2938917) (not e!4344010))))

(declare-fun lt!2582300 () List!70367)

(declare-fun size!41659 (List!70367) Int)

(assert (=> b!7245164 (= res!2938917 (= (size!41659 lt!2582300) (+ (size!41659 (exprs!8030 ct1!232)) (size!41659 (exprs!8030 ct2!328)))))))

(declare-fun b!7245162 () Bool)

(declare-fun e!4344009 () List!70367)

(assert (=> b!7245162 (= e!4344009 (exprs!8030 ct2!328))))

(declare-fun b!7245165 () Bool)

(assert (=> b!7245165 (= e!4344010 (or (not (= (exprs!8030 ct2!328) Nil!70243)) (= lt!2582300 (exprs!8030 ct1!232))))))

(declare-fun d!2251386 () Bool)

(assert (=> d!2251386 e!4344010))

(declare-fun res!2938916 () Bool)

(assert (=> d!2251386 (=> (not res!2938916) (not e!4344010))))

(declare-fun content!14533 (List!70367) (Set Regex!18590))

(assert (=> d!2251386 (= res!2938916 (= (content!14533 lt!2582300) (set.union (content!14533 (exprs!8030 ct1!232)) (content!14533 (exprs!8030 ct2!328)))))))

(assert (=> d!2251386 (= lt!2582300 e!4344009)))

(declare-fun c!1345870 () Bool)

(assert (=> d!2251386 (= c!1345870 (is-Nil!70243 (exprs!8030 ct1!232)))))

(assert (=> d!2251386 (= (++!16464 (exprs!8030 ct1!232) (exprs!8030 ct2!328)) lt!2582300)))

(declare-fun b!7245163 () Bool)

(assert (=> b!7245163 (= e!4344009 (Cons!70243 (h!76691 (exprs!8030 ct1!232)) (++!16464 (t!384419 (exprs!8030 ct1!232)) (exprs!8030 ct2!328))))))

(assert (= (and d!2251386 c!1345870) b!7245162))

(assert (= (and d!2251386 (not c!1345870)) b!7245163))

(assert (= (and d!2251386 res!2938916) b!7245164))

(assert (= (and b!7245164 res!2938917) b!7245165))

(declare-fun m!7921474 () Bool)

(assert (=> b!7245164 m!7921474))

(declare-fun m!7921476 () Bool)

(assert (=> b!7245164 m!7921476))

(declare-fun m!7921478 () Bool)

(assert (=> b!7245164 m!7921478))

(declare-fun m!7921480 () Bool)

(assert (=> d!2251386 m!7921480))

(declare-fun m!7921482 () Bool)

(assert (=> d!2251386 m!7921482))

(declare-fun m!7921484 () Bool)

(assert (=> d!2251386 m!7921484))

(declare-fun m!7921486 () Bool)

(assert (=> b!7245163 m!7921486))

(assert (=> b!7245104 d!2251386))

(declare-fun d!2251388 () Bool)

(declare-fun forall!17432 (List!70367 Int) Bool)

(assert (=> d!2251388 (forall!17432 (++!16464 (exprs!8030 ct1!232) (exprs!8030 ct2!328)) lambda!442898)))

(declare-fun lt!2582303 () Unit!163767)

(declare-fun choose!55876 (List!70367 List!70367 Int) Unit!163767)

(assert (=> d!2251388 (= lt!2582303 (choose!55876 (exprs!8030 ct1!232) (exprs!8030 ct2!328) lambda!442898))))

(assert (=> d!2251388 (forall!17432 (exprs!8030 ct1!232) lambda!442898)))

(assert (=> d!2251388 (= (lemmaConcatPreservesForall!1399 (exprs!8030 ct1!232) (exprs!8030 ct2!328) lambda!442898) lt!2582303)))

(declare-fun bs!1905070 () Bool)

(assert (= bs!1905070 d!2251388))

(assert (=> bs!1905070 m!7921366))

(assert (=> bs!1905070 m!7921366))

(declare-fun m!7921488 () Bool)

(assert (=> bs!1905070 m!7921488))

(declare-fun m!7921490 () Bool)

(assert (=> bs!1905070 m!7921490))

(declare-fun m!7921492 () Bool)

(assert (=> bs!1905070 m!7921492))

(assert (=> b!7245104 d!2251388))

(declare-fun d!2251390 () Bool)

(declare-fun c!1345873 () Bool)

(declare-fun isEmpty!40468 (List!70368) Bool)

(assert (=> d!2251390 (= c!1345873 (isEmpty!40468 s2!1849))))

(declare-fun e!4344013 () Bool)

(assert (=> d!2251390 (= (matchZipper!3500 (set.insert ct2!328 (as set.empty (Set Context!15060))) s2!1849) e!4344013)))

(declare-fun b!7245170 () Bool)

(declare-fun nullableZipper!2875 ((Set Context!15060)) Bool)

(assert (=> b!7245170 (= e!4344013 (nullableZipper!2875 (set.insert ct2!328 (as set.empty (Set Context!15060)))))))

(declare-fun b!7245171 () Bool)

(declare-fun head!14863 (List!70368) C!37454)

(declare-fun tail!14261 (List!70368) List!70368)

(assert (=> b!7245171 (= e!4344013 (matchZipper!3500 (derivationStepZipper!3378 (set.insert ct2!328 (as set.empty (Set Context!15060))) (head!14863 s2!1849)) (tail!14261 s2!1849)))))

(assert (= (and d!2251390 c!1345873) b!7245170))

(assert (= (and d!2251390 (not c!1345873)) b!7245171))

(declare-fun m!7921494 () Bool)

(assert (=> d!2251390 m!7921494))

(assert (=> b!7245170 m!7921334))

(declare-fun m!7921496 () Bool)

(assert (=> b!7245170 m!7921496))

(declare-fun m!7921498 () Bool)

(assert (=> b!7245171 m!7921498))

(assert (=> b!7245171 m!7921334))

(assert (=> b!7245171 m!7921498))

(declare-fun m!7921500 () Bool)

(assert (=> b!7245171 m!7921500))

(declare-fun m!7921502 () Bool)

(assert (=> b!7245171 m!7921502))

(assert (=> b!7245171 m!7921500))

(assert (=> b!7245171 m!7921502))

(declare-fun m!7921504 () Bool)

(assert (=> b!7245171 m!7921504))

(assert (=> b!7245103 d!2251390))

(declare-fun d!2251394 () Bool)

(declare-fun e!4344016 () Bool)

(assert (=> d!2251394 e!4344016))

(declare-fun res!2938920 () Bool)

(assert (=> d!2251394 (=> (not res!2938920) (not e!4344016))))

(declare-fun lt!2582306 () Context!15060)

(declare-fun dynLambda!28679 (Int Context!15060) Bool)

(assert (=> d!2251394 (= res!2938920 (dynLambda!28679 lambda!442899 lt!2582306))))

(declare-fun getWitness!2145 (List!70369 Int) Context!15060)

(assert (=> d!2251394 (= lt!2582306 (getWitness!2145 (toList!11436 lt!2582229) lambda!442899))))

(assert (=> d!2251394 (exists!4299 lt!2582229 lambda!442899)))

(assert (=> d!2251394 (= (getWitness!2143 lt!2582229 lambda!442899) lt!2582306)))

(declare-fun b!7245174 () Bool)

(assert (=> b!7245174 (= e!4344016 (set.member lt!2582306 lt!2582229))))

(assert (= (and d!2251394 res!2938920) b!7245174))

(declare-fun b_lambda!278045 () Bool)

(assert (=> (not b_lambda!278045) (not d!2251394)))

(declare-fun m!7921506 () Bool)

(assert (=> d!2251394 m!7921506))

(assert (=> d!2251394 m!7921402))

(assert (=> d!2251394 m!7921402))

(declare-fun m!7921508 () Bool)

(assert (=> d!2251394 m!7921508))

(assert (=> d!2251394 m!7921396))

(declare-fun m!7921510 () Bool)

(assert (=> b!7245174 m!7921510))

(assert (=> b!7245098 d!2251394))

(declare-fun d!2251396 () Bool)

(assert (=> d!2251396 (= (isEmpty!40466 (exprs!8030 ct1!232)) (is-Nil!70243 (exprs!8030 ct1!232)))))

(assert (=> b!7245098 d!2251396))

(declare-fun b!7245177 () Bool)

(declare-fun res!2938922 () Bool)

(declare-fun e!4344018 () Bool)

(assert (=> b!7245177 (=> (not res!2938922) (not e!4344018))))

(declare-fun lt!2582307 () List!70367)

(assert (=> b!7245177 (= res!2938922 (= (size!41659 lt!2582307) (+ (size!41659 (exprs!8030 lt!2582215)) (size!41659 (exprs!8030 ct2!328)))))))

(declare-fun b!7245175 () Bool)

(declare-fun e!4344017 () List!70367)

(assert (=> b!7245175 (= e!4344017 (exprs!8030 ct2!328))))

(declare-fun b!7245178 () Bool)

(assert (=> b!7245178 (= e!4344018 (or (not (= (exprs!8030 ct2!328) Nil!70243)) (= lt!2582307 (exprs!8030 lt!2582215))))))

(declare-fun d!2251398 () Bool)

(assert (=> d!2251398 e!4344018))

(declare-fun res!2938921 () Bool)

(assert (=> d!2251398 (=> (not res!2938921) (not e!4344018))))

(assert (=> d!2251398 (= res!2938921 (= (content!14533 lt!2582307) (set.union (content!14533 (exprs!8030 lt!2582215)) (content!14533 (exprs!8030 ct2!328)))))))

(assert (=> d!2251398 (= lt!2582307 e!4344017)))

(declare-fun c!1345874 () Bool)

(assert (=> d!2251398 (= c!1345874 (is-Nil!70243 (exprs!8030 lt!2582215)))))

(assert (=> d!2251398 (= (++!16464 (exprs!8030 lt!2582215) (exprs!8030 ct2!328)) lt!2582307)))

(declare-fun b!7245176 () Bool)

(assert (=> b!7245176 (= e!4344017 (Cons!70243 (h!76691 (exprs!8030 lt!2582215)) (++!16464 (t!384419 (exprs!8030 lt!2582215)) (exprs!8030 ct2!328))))))

(assert (= (and d!2251398 c!1345874) b!7245175))

(assert (= (and d!2251398 (not c!1345874)) b!7245176))

(assert (= (and d!2251398 res!2938921) b!7245177))

(assert (= (and b!7245177 res!2938922) b!7245178))

(declare-fun m!7921512 () Bool)

(assert (=> b!7245177 m!7921512))

(declare-fun m!7921514 () Bool)

(assert (=> b!7245177 m!7921514))

(assert (=> b!7245177 m!7921478))

(declare-fun m!7921516 () Bool)

(assert (=> d!2251398 m!7921516))

(declare-fun m!7921518 () Bool)

(assert (=> d!2251398 m!7921518))

(assert (=> d!2251398 m!7921484))

(declare-fun m!7921520 () Bool)

(assert (=> b!7245176 m!7921520))

(assert (=> b!7245098 d!2251398))

(declare-fun bs!1905071 () Bool)

(declare-fun d!2251400 () Bool)

(assert (= bs!1905071 (and d!2251400 b!7245104)))

(declare-fun lambda!442928 () Int)

(assert (=> bs!1905071 (= lambda!442928 lambda!442898)))

(assert (=> d!2251400 (matchZipper!3500 (set.insert (Context!15061 (++!16464 (exprs!8030 lt!2582215) (exprs!8030 ct2!328))) (as set.empty (Set Context!15060))) (++!16465 (t!384420 s1!1971) s2!1849))))

(declare-fun lt!2582316 () Unit!163767)

(assert (=> d!2251400 (= lt!2582316 (lemmaConcatPreservesForall!1399 (exprs!8030 lt!2582215) (exprs!8030 ct2!328) lambda!442928))))

(declare-fun lt!2582315 () Unit!163767)

(declare-fun choose!55877 (Context!15060 Context!15060 List!70368 List!70368) Unit!163767)

(assert (=> d!2251400 (= lt!2582315 (choose!55877 lt!2582215 ct2!328 (t!384420 s1!1971) s2!1849))))

(assert (=> d!2251400 (matchZipper!3500 (set.insert lt!2582215 (as set.empty (Set Context!15060))) (t!384420 s1!1971))))

(assert (=> d!2251400 (= (lemmaConcatenateContextMatchesConcatOfStrings!363 lt!2582215 ct2!328 (t!384420 s1!1971) s2!1849) lt!2582315)))

(declare-fun bs!1905072 () Bool)

(assert (= bs!1905072 d!2251400))

(declare-fun m!7921536 () Bool)

(assert (=> bs!1905072 m!7921536))

(assert (=> bs!1905072 m!7921372))

(assert (=> bs!1905072 m!7921374))

(assert (=> bs!1905072 m!7921376))

(assert (=> bs!1905072 m!7921380))

(declare-fun m!7921538 () Bool)

(assert (=> bs!1905072 m!7921538))

(assert (=> bs!1905072 m!7921538))

(declare-fun m!7921540 () Bool)

(assert (=> bs!1905072 m!7921540))

(declare-fun m!7921542 () Bool)

(assert (=> bs!1905072 m!7921542))

(assert (=> bs!1905072 m!7921374))

(assert (=> bs!1905072 m!7921372))

(assert (=> b!7245098 d!2251400))

(declare-fun d!2251404 () Bool)

(declare-fun c!1345883 () Bool)

(declare-fun e!4344033 () Bool)

(assert (=> d!2251404 (= c!1345883 e!4344033)))

(declare-fun res!2938931 () Bool)

(assert (=> d!2251404 (=> (not res!2938931) (not e!4344033))))

(assert (=> d!2251404 (= res!2938931 (is-Cons!70243 (exprs!8030 ct1!232)))))

(declare-fun e!4344032 () (Set Context!15060))

(assert (=> d!2251404 (= (derivationStepZipperUp!2444 ct1!232 (h!76692 s1!1971)) e!4344032)))

(declare-fun b!7245201 () Bool)

(declare-fun call!659869 () (Set Context!15060))

(assert (=> b!7245201 (= e!4344032 (set.union call!659869 (derivationStepZipperUp!2444 (Context!15061 (t!384419 (exprs!8030 ct1!232))) (h!76692 s1!1971))))))

(declare-fun b!7245202 () Bool)

(assert (=> b!7245202 (= e!4344033 (nullable!7883 (h!76691 (exprs!8030 ct1!232))))))

(declare-fun bm!659864 () Bool)

(assert (=> bm!659864 (= call!659869 (derivationStepZipperDown!2614 (h!76691 (exprs!8030 ct1!232)) (Context!15061 (t!384419 (exprs!8030 ct1!232))) (h!76692 s1!1971)))))

(declare-fun b!7245203 () Bool)

(declare-fun e!4344031 () (Set Context!15060))

(assert (=> b!7245203 (= e!4344031 (as set.empty (Set Context!15060)))))

(declare-fun b!7245204 () Bool)

(assert (=> b!7245204 (= e!4344031 call!659869)))

(declare-fun b!7245205 () Bool)

(assert (=> b!7245205 (= e!4344032 e!4344031)))

(declare-fun c!1345882 () Bool)

(assert (=> b!7245205 (= c!1345882 (is-Cons!70243 (exprs!8030 ct1!232)))))

(assert (= (and d!2251404 res!2938931) b!7245202))

(assert (= (and d!2251404 c!1345883) b!7245201))

(assert (= (and d!2251404 (not c!1345883)) b!7245205))

(assert (= (and b!7245205 c!1345882) b!7245204))

(assert (= (and b!7245205 (not c!1345882)) b!7245203))

(assert (= (or b!7245201 b!7245204) bm!659864))

(declare-fun m!7921550 () Bool)

(assert (=> b!7245201 m!7921550))

(assert (=> b!7245202 m!7921360))

(declare-fun m!7921552 () Bool)

(assert (=> bm!659864 m!7921552))

(assert (=> b!7245098 d!2251404))

(declare-fun d!2251408 () Bool)

(assert (=> d!2251408 (forall!17432 (++!16464 (exprs!8030 lt!2582215) (exprs!8030 ct2!328)) lambda!442898)))

(declare-fun lt!2582320 () Unit!163767)

(assert (=> d!2251408 (= lt!2582320 (choose!55876 (exprs!8030 lt!2582215) (exprs!8030 ct2!328) lambda!442898))))

(assert (=> d!2251408 (forall!17432 (exprs!8030 lt!2582215) lambda!442898)))

(assert (=> d!2251408 (= (lemmaConcatPreservesForall!1399 (exprs!8030 lt!2582215) (exprs!8030 ct2!328) lambda!442898) lt!2582320)))

(declare-fun bs!1905074 () Bool)

(assert (= bs!1905074 d!2251408))

(assert (=> bs!1905074 m!7921380))

(assert (=> bs!1905074 m!7921380))

(declare-fun m!7921554 () Bool)

(assert (=> bs!1905074 m!7921554))

(declare-fun m!7921556 () Bool)

(assert (=> bs!1905074 m!7921556))

(declare-fun m!7921558 () Bool)

(assert (=> bs!1905074 m!7921558))

(assert (=> b!7245098 d!2251408))

(declare-fun b!7245215 () Bool)

(declare-fun e!4344038 () List!70368)

(assert (=> b!7245215 (= e!4344038 (Cons!70244 (h!76692 (t!384420 s1!1971)) (++!16465 (t!384420 (t!384420 s1!1971)) s2!1849)))))

(declare-fun b!7245217 () Bool)

(declare-fun lt!2582323 () List!70368)

(declare-fun e!4344039 () Bool)

(assert (=> b!7245217 (= e!4344039 (or (not (= s2!1849 Nil!70244)) (= lt!2582323 (t!384420 s1!1971))))))

(declare-fun d!2251410 () Bool)

(assert (=> d!2251410 e!4344039))

(declare-fun res!2938937 () Bool)

(assert (=> d!2251410 (=> (not res!2938937) (not e!4344039))))

(declare-fun content!14534 (List!70368) (Set C!37454))

(assert (=> d!2251410 (= res!2938937 (= (content!14534 lt!2582323) (set.union (content!14534 (t!384420 s1!1971)) (content!14534 s2!1849))))))

(assert (=> d!2251410 (= lt!2582323 e!4344038)))

(declare-fun c!1345886 () Bool)

(assert (=> d!2251410 (= c!1345886 (is-Nil!70244 (t!384420 s1!1971)))))

(assert (=> d!2251410 (= (++!16465 (t!384420 s1!1971) s2!1849) lt!2582323)))

(declare-fun b!7245216 () Bool)

(declare-fun res!2938936 () Bool)

(assert (=> b!7245216 (=> (not res!2938936) (not e!4344039))))

(declare-fun size!41660 (List!70368) Int)

(assert (=> b!7245216 (= res!2938936 (= (size!41660 lt!2582323) (+ (size!41660 (t!384420 s1!1971)) (size!41660 s2!1849))))))

(declare-fun b!7245214 () Bool)

(assert (=> b!7245214 (= e!4344038 s2!1849)))

(assert (= (and d!2251410 c!1345886) b!7245214))

(assert (= (and d!2251410 (not c!1345886)) b!7245215))

(assert (= (and d!2251410 res!2938937) b!7245216))

(assert (= (and b!7245216 res!2938936) b!7245217))

(declare-fun m!7921560 () Bool)

(assert (=> b!7245215 m!7921560))

(declare-fun m!7921562 () Bool)

(assert (=> d!2251410 m!7921562))

(declare-fun m!7921564 () Bool)

(assert (=> d!2251410 m!7921564))

(declare-fun m!7921566 () Bool)

(assert (=> d!2251410 m!7921566))

(declare-fun m!7921568 () Bool)

(assert (=> b!7245216 m!7921568))

(declare-fun m!7921570 () Bool)

(assert (=> b!7245216 m!7921570))

(declare-fun m!7921572 () Bool)

(assert (=> b!7245216 m!7921572))

(assert (=> b!7245098 d!2251410))

(declare-fun d!2251412 () Bool)

(declare-fun c!1345887 () Bool)

(assert (=> d!2251412 (= c!1345887 (isEmpty!40468 (++!16465 (t!384420 s1!1971) s2!1849)))))

(declare-fun e!4344040 () Bool)

(assert (=> d!2251412 (= (matchZipper!3500 (set.insert (Context!15061 (++!16464 (exprs!8030 lt!2582215) (exprs!8030 ct2!328))) (as set.empty (Set Context!15060))) (++!16465 (t!384420 s1!1971) s2!1849)) e!4344040)))

(declare-fun b!7245218 () Bool)

(assert (=> b!7245218 (= e!4344040 (nullableZipper!2875 (set.insert (Context!15061 (++!16464 (exprs!8030 lt!2582215) (exprs!8030 ct2!328))) (as set.empty (Set Context!15060)))))))

(declare-fun b!7245219 () Bool)

(assert (=> b!7245219 (= e!4344040 (matchZipper!3500 (derivationStepZipper!3378 (set.insert (Context!15061 (++!16464 (exprs!8030 lt!2582215) (exprs!8030 ct2!328))) (as set.empty (Set Context!15060))) (head!14863 (++!16465 (t!384420 s1!1971) s2!1849))) (tail!14261 (++!16465 (t!384420 s1!1971) s2!1849))))))

(assert (= (and d!2251412 c!1345887) b!7245218))

(assert (= (and d!2251412 (not c!1345887)) b!7245219))

(assert (=> d!2251412 m!7921374))

(declare-fun m!7921574 () Bool)

(assert (=> d!2251412 m!7921574))

(assert (=> b!7245218 m!7921372))

(declare-fun m!7921576 () Bool)

(assert (=> b!7245218 m!7921576))

(assert (=> b!7245219 m!7921374))

(declare-fun m!7921578 () Bool)

(assert (=> b!7245219 m!7921578))

(assert (=> b!7245219 m!7921372))

(assert (=> b!7245219 m!7921578))

(declare-fun m!7921580 () Bool)

(assert (=> b!7245219 m!7921580))

(assert (=> b!7245219 m!7921374))

(declare-fun m!7921582 () Bool)

(assert (=> b!7245219 m!7921582))

(assert (=> b!7245219 m!7921580))

(assert (=> b!7245219 m!7921582))

(declare-fun m!7921584 () Bool)

(assert (=> b!7245219 m!7921584))

(assert (=> b!7245098 d!2251412))

(declare-fun d!2251414 () Bool)

(declare-fun c!1345890 () Bool)

(assert (=> d!2251414 (= c!1345890 (isEmpty!40468 (t!384420 s1!1971)))))

(declare-fun e!4344043 () Bool)

(assert (=> d!2251414 (= (matchZipper!3500 lt!2582229 (t!384420 s1!1971)) e!4344043)))

(declare-fun b!7245224 () Bool)

(assert (=> b!7245224 (= e!4344043 (nullableZipper!2875 lt!2582229))))

(declare-fun b!7245225 () Bool)

(assert (=> b!7245225 (= e!4344043 (matchZipper!3500 (derivationStepZipper!3378 lt!2582229 (head!14863 (t!384420 s1!1971))) (tail!14261 (t!384420 s1!1971))))))

(assert (= (and d!2251414 c!1345890) b!7245224))

(assert (= (and d!2251414 (not c!1345890)) b!7245225))

(declare-fun m!7921586 () Bool)

(assert (=> d!2251414 m!7921586))

(declare-fun m!7921588 () Bool)

(assert (=> b!7245224 m!7921588))

(declare-fun m!7921590 () Bool)

(assert (=> b!7245225 m!7921590))

(assert (=> b!7245225 m!7921590))

(declare-fun m!7921592 () Bool)

(assert (=> b!7245225 m!7921592))

(declare-fun m!7921594 () Bool)

(assert (=> b!7245225 m!7921594))

(assert (=> b!7245225 m!7921592))

(assert (=> b!7245225 m!7921594))

(declare-fun m!7921596 () Bool)

(assert (=> b!7245225 m!7921596))

(assert (=> b!7245105 d!2251414))

(declare-fun bs!1905075 () Bool)

(declare-fun d!2251416 () Bool)

(assert (= bs!1905075 (and d!2251416 b!7245107)))

(declare-fun lambda!442931 () Int)

(assert (=> bs!1905075 (= lambda!442931 lambda!442900)))

(assert (=> d!2251416 true))

(assert (=> d!2251416 (= (derivationStepZipper!3378 lt!2582214 (h!76692 s1!1971)) (flatMap!2778 lt!2582214 lambda!442931))))

(declare-fun bs!1905076 () Bool)

(assert (= bs!1905076 d!2251416))

(declare-fun m!7921598 () Bool)

(assert (=> bs!1905076 m!7921598))

(assert (=> b!7245105 d!2251416))

(declare-fun d!2251418 () Bool)

(declare-fun c!1345894 () Bool)

(assert (=> d!2251418 (= c!1345894 (isEmpty!40468 s1!1971))))

(declare-fun e!4344045 () Bool)

(assert (=> d!2251418 (= (matchZipper!3500 lt!2582214 s1!1971) e!4344045)))

(declare-fun b!7245230 () Bool)

(assert (=> b!7245230 (= e!4344045 (nullableZipper!2875 lt!2582214))))

(declare-fun b!7245231 () Bool)

(assert (=> b!7245231 (= e!4344045 (matchZipper!3500 (derivationStepZipper!3378 lt!2582214 (head!14863 s1!1971)) (tail!14261 s1!1971)))))

(assert (= (and d!2251418 c!1345894) b!7245230))

(assert (= (and d!2251418 (not c!1345894)) b!7245231))

(declare-fun m!7921602 () Bool)

(assert (=> d!2251418 m!7921602))

(declare-fun m!7921606 () Bool)

(assert (=> b!7245230 m!7921606))

(declare-fun m!7921608 () Bool)

(assert (=> b!7245231 m!7921608))

(assert (=> b!7245231 m!7921608))

(declare-fun m!7921612 () Bool)

(assert (=> b!7245231 m!7921612))

(declare-fun m!7921614 () Bool)

(assert (=> b!7245231 m!7921614))

(assert (=> b!7245231 m!7921612))

(assert (=> b!7245231 m!7921614))

(declare-fun m!7921618 () Bool)

(assert (=> b!7245231 m!7921618))

(assert (=> start!704406 d!2251418))

(declare-fun bs!1905077 () Bool)

(declare-fun d!2251420 () Bool)

(assert (= bs!1905077 (and d!2251420 b!7245104)))

(declare-fun lambda!442934 () Int)

(assert (=> bs!1905077 (= lambda!442934 lambda!442898)))

(declare-fun bs!1905078 () Bool)

(assert (= bs!1905078 (and d!2251420 d!2251400)))

(assert (=> bs!1905078 (= lambda!442934 lambda!442928)))

(assert (=> d!2251420 (= (inv!89486 ct1!232) (forall!17432 (exprs!8030 ct1!232) lambda!442934))))

(declare-fun bs!1905079 () Bool)

(assert (= bs!1905079 d!2251420))

(declare-fun m!7921624 () Bool)

(assert (=> bs!1905079 m!7921624))

(assert (=> start!704406 d!2251420))

(declare-fun bs!1905080 () Bool)

(declare-fun d!2251424 () Bool)

(assert (= bs!1905080 (and d!2251424 b!7245104)))

(declare-fun lambda!442935 () Int)

(assert (=> bs!1905080 (= lambda!442935 lambda!442898)))

(declare-fun bs!1905081 () Bool)

(assert (= bs!1905081 (and d!2251424 d!2251400)))

(assert (=> bs!1905081 (= lambda!442935 lambda!442928)))

(declare-fun bs!1905082 () Bool)

(assert (= bs!1905082 (and d!2251424 d!2251420)))

(assert (=> bs!1905082 (= lambda!442935 lambda!442934)))

(assert (=> d!2251424 (= (inv!89486 ct2!328) (forall!17432 (exprs!8030 ct2!328) lambda!442935))))

(declare-fun bs!1905083 () Bool)

(assert (= bs!1905083 d!2251424))

(declare-fun m!7921626 () Bool)

(assert (=> bs!1905083 m!7921626))

(assert (=> start!704406 d!2251424))

(declare-fun d!2251426 () Bool)

(assert (=> d!2251426 (= (tail!14259 (exprs!8030 ct1!232)) (t!384419 (exprs!8030 ct1!232)))))

(assert (=> b!7245101 d!2251426))

(assert (=> b!7245101 d!2251388))

(declare-fun d!2251428 () Bool)

(declare-fun c!1345898 () Bool)

(declare-fun e!4344048 () Bool)

(assert (=> d!2251428 (= c!1345898 e!4344048)))

(declare-fun res!2938938 () Bool)

(assert (=> d!2251428 (=> (not res!2938938) (not e!4344048))))

(assert (=> d!2251428 (= res!2938938 (is-Cons!70243 (exprs!8030 lt!2582228)))))

(declare-fun e!4344047 () (Set Context!15060))

(assert (=> d!2251428 (= (derivationStepZipperUp!2444 lt!2582228 (h!76692 s1!1971)) e!4344047)))

(declare-fun call!659870 () (Set Context!15060))

(declare-fun b!7245232 () Bool)

(assert (=> b!7245232 (= e!4344047 (set.union call!659870 (derivationStepZipperUp!2444 (Context!15061 (t!384419 (exprs!8030 lt!2582228))) (h!76692 s1!1971))))))

(declare-fun b!7245233 () Bool)

(assert (=> b!7245233 (= e!4344048 (nullable!7883 (h!76691 (exprs!8030 lt!2582228))))))

(declare-fun bm!659865 () Bool)

(assert (=> bm!659865 (= call!659870 (derivationStepZipperDown!2614 (h!76691 (exprs!8030 lt!2582228)) (Context!15061 (t!384419 (exprs!8030 lt!2582228))) (h!76692 s1!1971)))))

(declare-fun b!7245234 () Bool)

(declare-fun e!4344046 () (Set Context!15060))

(assert (=> b!7245234 (= e!4344046 (as set.empty (Set Context!15060)))))

(declare-fun b!7245235 () Bool)

(assert (=> b!7245235 (= e!4344046 call!659870)))

(declare-fun b!7245236 () Bool)

(assert (=> b!7245236 (= e!4344047 e!4344046)))

(declare-fun c!1345897 () Bool)

(assert (=> b!7245236 (= c!1345897 (is-Cons!70243 (exprs!8030 lt!2582228)))))

(assert (= (and d!2251428 res!2938938) b!7245233))

(assert (= (and d!2251428 c!1345898) b!7245232))

(assert (= (and d!2251428 (not c!1345898)) b!7245236))

(assert (= (and b!7245236 c!1345897) b!7245235))

(assert (= (and b!7245236 (not c!1345897)) b!7245234))

(assert (= (or b!7245232 b!7245235) bm!659865))

(declare-fun m!7921628 () Bool)

(assert (=> b!7245232 m!7921628))

(declare-fun m!7921630 () Bool)

(assert (=> b!7245233 m!7921630))

(declare-fun m!7921632 () Bool)

(assert (=> bm!659865 m!7921632))

(assert (=> b!7245101 d!2251428))

(declare-fun d!2251430 () Bool)

(assert (=> d!2251430 (= (isEmpty!40466 lt!2582227) (is-Nil!70243 lt!2582227))))

(assert (=> b!7245101 d!2251430))

(declare-fun b!7245263 () Bool)

(declare-fun e!4344061 () (Set Context!15060))

(declare-fun call!659883 () (Set Context!15060))

(assert (=> b!7245263 (= e!4344061 call!659883)))

(declare-fun b!7245264 () Bool)

(declare-fun c!1345910 () Bool)

(declare-fun e!4344062 () Bool)

(assert (=> b!7245264 (= c!1345910 e!4344062)))

(declare-fun res!2938941 () Bool)

(assert (=> b!7245264 (=> (not res!2938941) (not e!4344062))))

(assert (=> b!7245264 (= res!2938941 (is-Concat!27435 (h!76691 (exprs!8030 ct1!232))))))

(declare-fun e!4344064 () (Set Context!15060))

(declare-fun e!4344063 () (Set Context!15060))

(assert (=> b!7245264 (= e!4344064 e!4344063)))

(declare-fun b!7245265 () Bool)

(declare-fun c!1345909 () Bool)

(assert (=> b!7245265 (= c!1345909 (is-Star!18590 (h!76691 (exprs!8030 ct1!232))))))

(declare-fun e!4344065 () (Set Context!15060))

(assert (=> b!7245265 (= e!4344061 e!4344065)))

(declare-fun b!7245266 () Bool)

(assert (=> b!7245266 (= e!4344062 (nullable!7883 (regOne!37692 (h!76691 (exprs!8030 ct1!232)))))))

(declare-fun b!7245267 () Bool)

(assert (=> b!7245267 (= e!4344063 e!4344061)))

(declare-fun c!1345911 () Bool)

(assert (=> b!7245267 (= c!1345911 (is-Concat!27435 (h!76691 (exprs!8030 ct1!232))))))

(declare-fun b!7245268 () Bool)

(declare-fun call!659888 () (Set Context!15060))

(declare-fun call!659884 () (Set Context!15060))

(assert (=> b!7245268 (= e!4344064 (set.union call!659888 call!659884))))

(declare-fun call!659885 () List!70367)

(declare-fun bm!659878 () Bool)

(declare-fun $colon$colon!2903 (List!70367 Regex!18590) List!70367)

(assert (=> bm!659878 (= call!659885 ($colon$colon!2903 (exprs!8030 (Context!15061 (tail!14259 (exprs!8030 ct1!232)))) (ite (or c!1345910 c!1345911) (regTwo!37692 (h!76691 (exprs!8030 ct1!232))) (h!76691 (exprs!8030 ct1!232)))))))

(declare-fun bm!659879 () Bool)

(declare-fun call!659886 () (Set Context!15060))

(assert (=> bm!659879 (= call!659883 call!659886)))

(declare-fun b!7245269 () Bool)

(assert (=> b!7245269 (= e!4344063 (set.union call!659888 call!659886))))

(declare-fun bm!659880 () Bool)

(assert (=> bm!659880 (= call!659886 call!659884)))

(declare-fun bm!659881 () Bool)

(declare-fun call!659887 () List!70367)

(declare-fun c!1345913 () Bool)

(assert (=> bm!659881 (= call!659884 (derivationStepZipperDown!2614 (ite c!1345913 (regTwo!37693 (h!76691 (exprs!8030 ct1!232))) (ite c!1345910 (regTwo!37692 (h!76691 (exprs!8030 ct1!232))) (ite c!1345911 (regOne!37692 (h!76691 (exprs!8030 ct1!232))) (reg!18919 (h!76691 (exprs!8030 ct1!232)))))) (ite (or c!1345913 c!1345910) (Context!15061 (tail!14259 (exprs!8030 ct1!232))) (Context!15061 call!659887)) (h!76692 s1!1971)))))

(declare-fun bm!659882 () Bool)

(assert (=> bm!659882 (= call!659887 call!659885)))

(declare-fun b!7245270 () Bool)

(declare-fun e!4344066 () (Set Context!15060))

(assert (=> b!7245270 (= e!4344066 (set.insert (Context!15061 (tail!14259 (exprs!8030 ct1!232))) (as set.empty (Set Context!15060))))))

(declare-fun b!7245271 () Bool)

(assert (=> b!7245271 (= e!4344065 (as set.empty (Set Context!15060)))))

(declare-fun b!7245272 () Bool)

(assert (=> b!7245272 (= e!4344065 call!659883)))

(declare-fun d!2251432 () Bool)

(declare-fun c!1345912 () Bool)

(assert (=> d!2251432 (= c!1345912 (and (is-ElementMatch!18590 (h!76691 (exprs!8030 ct1!232))) (= (c!1345856 (h!76691 (exprs!8030 ct1!232))) (h!76692 s1!1971))))))

(assert (=> d!2251432 (= (derivationStepZipperDown!2614 (h!76691 (exprs!8030 ct1!232)) (Context!15061 (tail!14259 (exprs!8030 ct1!232))) (h!76692 s1!1971)) e!4344066)))

(declare-fun b!7245273 () Bool)

(assert (=> b!7245273 (= e!4344066 e!4344064)))

(assert (=> b!7245273 (= c!1345913 (is-Union!18590 (h!76691 (exprs!8030 ct1!232))))))

(declare-fun bm!659883 () Bool)

(assert (=> bm!659883 (= call!659888 (derivationStepZipperDown!2614 (ite c!1345913 (regOne!37693 (h!76691 (exprs!8030 ct1!232))) (regOne!37692 (h!76691 (exprs!8030 ct1!232)))) (ite c!1345913 (Context!15061 (tail!14259 (exprs!8030 ct1!232))) (Context!15061 call!659885)) (h!76692 s1!1971)))))

(assert (= (and d!2251432 c!1345912) b!7245270))

(assert (= (and d!2251432 (not c!1345912)) b!7245273))

(assert (= (and b!7245273 c!1345913) b!7245268))

(assert (= (and b!7245273 (not c!1345913)) b!7245264))

(assert (= (and b!7245264 res!2938941) b!7245266))

(assert (= (and b!7245264 c!1345910) b!7245269))

(assert (= (and b!7245264 (not c!1345910)) b!7245267))

(assert (= (and b!7245267 c!1345911) b!7245263))

(assert (= (and b!7245267 (not c!1345911)) b!7245265))

(assert (= (and b!7245265 c!1345909) b!7245272))

(assert (= (and b!7245265 (not c!1345909)) b!7245271))

(assert (= (or b!7245263 b!7245272) bm!659882))

(assert (= (or b!7245263 b!7245272) bm!659879))

(assert (= (or b!7245269 bm!659882) bm!659878))

(assert (= (or b!7245269 bm!659879) bm!659880))

(assert (= (or b!7245268 bm!659880) bm!659881))

(assert (= (or b!7245268 b!7245269) bm!659883))

(declare-fun m!7921642 () Bool)

(assert (=> bm!659881 m!7921642))

(declare-fun m!7921644 () Bool)

(assert (=> b!7245266 m!7921644))

(declare-fun m!7921646 () Bool)

(assert (=> bm!659883 m!7921646))

(declare-fun m!7921648 () Bool)

(assert (=> b!7245270 m!7921648))

(declare-fun m!7921650 () Bool)

(assert (=> bm!659878 m!7921650))

(assert (=> b!7245101 d!2251432))

(declare-fun d!2251440 () Bool)

(declare-fun lt!2582329 () Bool)

(assert (=> d!2251440 (= lt!2582329 (exists!4300 (toList!11436 lt!2582229) lambda!442899))))

(declare-fun choose!55878 ((Set Context!15060) Int) Bool)

(assert (=> d!2251440 (= lt!2582329 (choose!55878 lt!2582229 lambda!442899))))

(assert (=> d!2251440 (= (exists!4299 lt!2582229 lambda!442899) lt!2582329)))

(declare-fun bs!1905089 () Bool)

(assert (= bs!1905089 d!2251440))

(assert (=> bs!1905089 m!7921402))

(assert (=> bs!1905089 m!7921402))

(declare-fun m!7921652 () Bool)

(assert (=> bs!1905089 m!7921652))

(declare-fun m!7921654 () Bool)

(assert (=> bs!1905089 m!7921654))

(assert (=> b!7245106 d!2251440))

(declare-fun bs!1905090 () Bool)

(declare-fun d!2251442 () Bool)

(assert (= bs!1905090 (and d!2251442 b!7245106)))

(declare-fun lambda!442944 () Int)

(assert (=> bs!1905090 (not (= lambda!442944 lambda!442899))))

(assert (=> d!2251442 true))

(declare-fun order!28929 () Int)

(declare-fun dynLambda!28680 (Int Int) Int)

(assert (=> d!2251442 (< (dynLambda!28680 order!28929 lambda!442899) (dynLambda!28680 order!28929 lambda!442944))))

(declare-fun forall!17433 (List!70369 Int) Bool)

(assert (=> d!2251442 (= (exists!4300 lt!2582232 lambda!442899) (not (forall!17433 lt!2582232 lambda!442944)))))

(declare-fun bs!1905091 () Bool)

(assert (= bs!1905091 d!2251442))

(declare-fun m!7921656 () Bool)

(assert (=> bs!1905091 m!7921656))

(assert (=> b!7245106 d!2251442))

(declare-fun bs!1905092 () Bool)

(declare-fun d!2251444 () Bool)

(assert (= bs!1905092 (and d!2251444 b!7245106)))

(declare-fun lambda!442949 () Int)

(assert (=> bs!1905092 (= lambda!442949 lambda!442899)))

(declare-fun bs!1905093 () Bool)

(assert (= bs!1905093 (and d!2251444 d!2251442)))

(assert (=> bs!1905093 (not (= lambda!442949 lambda!442944))))

(assert (=> d!2251444 true))

(assert (=> d!2251444 (exists!4300 lt!2582232 lambda!442949)))

(declare-fun lt!2582334 () Unit!163767)

(declare-fun choose!55879 (List!70369 List!70368) Unit!163767)

(assert (=> d!2251444 (= lt!2582334 (choose!55879 lt!2582232 (t!384420 s1!1971)))))

(declare-fun content!14535 (List!70369) (Set Context!15060))

(assert (=> d!2251444 (matchZipper!3500 (content!14535 lt!2582232) (t!384420 s1!1971))))

(assert (=> d!2251444 (= (lemmaZipperMatchesExistsMatchingContext!717 lt!2582232 (t!384420 s1!1971)) lt!2582334)))

(declare-fun bs!1905094 () Bool)

(assert (= bs!1905094 d!2251444))

(declare-fun m!7921658 () Bool)

(assert (=> bs!1905094 m!7921658))

(declare-fun m!7921660 () Bool)

(assert (=> bs!1905094 m!7921660))

(declare-fun m!7921662 () Bool)

(assert (=> bs!1905094 m!7921662))

(assert (=> bs!1905094 m!7921662))

(declare-fun m!7921664 () Bool)

(assert (=> bs!1905094 m!7921664))

(assert (=> b!7245106 d!2251444))

(declare-fun d!2251446 () Bool)

(declare-fun e!4344069 () Bool)

(assert (=> d!2251446 e!4344069))

(declare-fun res!2938944 () Bool)

(assert (=> d!2251446 (=> (not res!2938944) (not e!4344069))))

(declare-fun lt!2582338 () List!70369)

(declare-fun noDuplicate!2967 (List!70369) Bool)

(assert (=> d!2251446 (= res!2938944 (noDuplicate!2967 lt!2582338))))

(declare-fun choose!55880 ((Set Context!15060)) List!70369)

(assert (=> d!2251446 (= lt!2582338 (choose!55880 lt!2582229))))

(assert (=> d!2251446 (= (toList!11436 lt!2582229) lt!2582338)))

(declare-fun b!7245278 () Bool)

(assert (=> b!7245278 (= e!4344069 (= (content!14535 lt!2582338) lt!2582229))))

(assert (= (and d!2251446 res!2938944) b!7245278))

(declare-fun m!7921674 () Bool)

(assert (=> d!2251446 m!7921674))

(declare-fun m!7921676 () Bool)

(assert (=> d!2251446 m!7921676))

(declare-fun m!7921678 () Bool)

(assert (=> b!7245278 m!7921678))

(assert (=> b!7245106 d!2251446))

(declare-fun b!7245279 () Bool)

(declare-fun e!4344070 () (Set Context!15060))

(declare-fun call!659889 () (Set Context!15060))

(assert (=> b!7245279 (= e!4344070 call!659889)))

(declare-fun b!7245280 () Bool)

(declare-fun c!1345919 () Bool)

(declare-fun e!4344071 () Bool)

(assert (=> b!7245280 (= c!1345919 e!4344071)))

(declare-fun res!2938945 () Bool)

(assert (=> b!7245280 (=> (not res!2938945) (not e!4344071))))

(assert (=> b!7245280 (= res!2938945 (is-Concat!27435 (h!76691 (exprs!8030 ct1!232))))))

(declare-fun e!4344073 () (Set Context!15060))

(declare-fun e!4344072 () (Set Context!15060))

(assert (=> b!7245280 (= e!4344073 e!4344072)))

(declare-fun b!7245281 () Bool)

(declare-fun c!1345918 () Bool)

(assert (=> b!7245281 (= c!1345918 (is-Star!18590 (h!76691 (exprs!8030 ct1!232))))))

(declare-fun e!4344074 () (Set Context!15060))

(assert (=> b!7245281 (= e!4344070 e!4344074)))

(declare-fun b!7245282 () Bool)

(assert (=> b!7245282 (= e!4344071 (nullable!7883 (regOne!37692 (h!76691 (exprs!8030 ct1!232)))))))

(declare-fun b!7245283 () Bool)

(assert (=> b!7245283 (= e!4344072 e!4344070)))

(declare-fun c!1345920 () Bool)

(assert (=> b!7245283 (= c!1345920 (is-Concat!27435 (h!76691 (exprs!8030 ct1!232))))))

(declare-fun b!7245284 () Bool)

(declare-fun call!659894 () (Set Context!15060))

(declare-fun call!659890 () (Set Context!15060))

(assert (=> b!7245284 (= e!4344073 (set.union call!659894 call!659890))))

(declare-fun call!659891 () List!70367)

(declare-fun bm!659884 () Bool)

(assert (=> bm!659884 (= call!659891 ($colon$colon!2903 (exprs!8030 (Context!15061 (tail!14259 lt!2582227))) (ite (or c!1345919 c!1345920) (regTwo!37692 (h!76691 (exprs!8030 ct1!232))) (h!76691 (exprs!8030 ct1!232)))))))

(declare-fun bm!659885 () Bool)

(declare-fun call!659892 () (Set Context!15060))

(assert (=> bm!659885 (= call!659889 call!659892)))

(declare-fun b!7245285 () Bool)

(assert (=> b!7245285 (= e!4344072 (set.union call!659894 call!659892))))

(declare-fun bm!659886 () Bool)

(assert (=> bm!659886 (= call!659892 call!659890)))

(declare-fun bm!659887 () Bool)

(declare-fun c!1345922 () Bool)

(declare-fun call!659893 () List!70367)

(assert (=> bm!659887 (= call!659890 (derivationStepZipperDown!2614 (ite c!1345922 (regTwo!37693 (h!76691 (exprs!8030 ct1!232))) (ite c!1345919 (regTwo!37692 (h!76691 (exprs!8030 ct1!232))) (ite c!1345920 (regOne!37692 (h!76691 (exprs!8030 ct1!232))) (reg!18919 (h!76691 (exprs!8030 ct1!232)))))) (ite (or c!1345922 c!1345919) (Context!15061 (tail!14259 lt!2582227)) (Context!15061 call!659893)) (h!76692 s1!1971)))))

(declare-fun bm!659888 () Bool)

(assert (=> bm!659888 (= call!659893 call!659891)))

(declare-fun b!7245286 () Bool)

(declare-fun e!4344075 () (Set Context!15060))

(assert (=> b!7245286 (= e!4344075 (set.insert (Context!15061 (tail!14259 lt!2582227)) (as set.empty (Set Context!15060))))))

(declare-fun b!7245287 () Bool)

(assert (=> b!7245287 (= e!4344074 (as set.empty (Set Context!15060)))))

(declare-fun b!7245288 () Bool)

(assert (=> b!7245288 (= e!4344074 call!659889)))

(declare-fun d!2251450 () Bool)

(declare-fun c!1345921 () Bool)

(assert (=> d!2251450 (= c!1345921 (and (is-ElementMatch!18590 (h!76691 (exprs!8030 ct1!232))) (= (c!1345856 (h!76691 (exprs!8030 ct1!232))) (h!76692 s1!1971))))))

(assert (=> d!2251450 (= (derivationStepZipperDown!2614 (h!76691 (exprs!8030 ct1!232)) (Context!15061 (tail!14259 lt!2582227)) (h!76692 s1!1971)) e!4344075)))

(declare-fun b!7245289 () Bool)

(assert (=> b!7245289 (= e!4344075 e!4344073)))

(assert (=> b!7245289 (= c!1345922 (is-Union!18590 (h!76691 (exprs!8030 ct1!232))))))

(declare-fun bm!659889 () Bool)

(assert (=> bm!659889 (= call!659894 (derivationStepZipperDown!2614 (ite c!1345922 (regOne!37693 (h!76691 (exprs!8030 ct1!232))) (regOne!37692 (h!76691 (exprs!8030 ct1!232)))) (ite c!1345922 (Context!15061 (tail!14259 lt!2582227)) (Context!15061 call!659891)) (h!76692 s1!1971)))))

(assert (= (and d!2251450 c!1345921) b!7245286))

(assert (= (and d!2251450 (not c!1345921)) b!7245289))

(assert (= (and b!7245289 c!1345922) b!7245284))

(assert (= (and b!7245289 (not c!1345922)) b!7245280))

(assert (= (and b!7245280 res!2938945) b!7245282))

(assert (= (and b!7245280 c!1345919) b!7245285))

(assert (= (and b!7245280 (not c!1345919)) b!7245283))

(assert (= (and b!7245283 c!1345920) b!7245279))

(assert (= (and b!7245283 (not c!1345920)) b!7245281))

(assert (= (and b!7245281 c!1345918) b!7245288))

(assert (= (and b!7245281 (not c!1345918)) b!7245287))

(assert (= (or b!7245279 b!7245288) bm!659888))

(assert (= (or b!7245279 b!7245288) bm!659885))

(assert (= (or b!7245285 bm!659888) bm!659884))

(assert (= (or b!7245285 bm!659885) bm!659886))

(assert (= (or b!7245284 bm!659886) bm!659887))

(assert (= (or b!7245284 b!7245285) bm!659889))

(declare-fun m!7921680 () Bool)

(assert (=> bm!659887 m!7921680))

(assert (=> b!7245282 m!7921644))

(declare-fun m!7921682 () Bool)

(assert (=> bm!659889 m!7921682))

(declare-fun m!7921684 () Bool)

(assert (=> b!7245286 m!7921684))

(declare-fun m!7921686 () Bool)

(assert (=> bm!659884 m!7921686))

(assert (=> b!7245107 d!2251450))

(declare-fun d!2251452 () Bool)

(declare-fun dynLambda!28681 (Int Context!15060) (Set Context!15060))

(assert (=> d!2251452 (= (flatMap!2778 lt!2582223 lambda!442900) (dynLambda!28681 lambda!442900 lt!2582228))))

(declare-fun lt!2582343 () Unit!163767)

(declare-fun choose!55882 ((Set Context!15060) Context!15060 Int) Unit!163767)

(assert (=> d!2251452 (= lt!2582343 (choose!55882 lt!2582223 lt!2582228 lambda!442900))))

(assert (=> d!2251452 (= lt!2582223 (set.insert lt!2582228 (as set.empty (Set Context!15060))))))

(assert (=> d!2251452 (= (lemmaFlatMapOnSingletonSet!2201 lt!2582223 lt!2582228 lambda!442900) lt!2582343)))

(declare-fun b_lambda!278047 () Bool)

(assert (=> (not b_lambda!278047) (not d!2251452)))

(declare-fun bs!1905098 () Bool)

(assert (= bs!1905098 d!2251452))

(assert (=> bs!1905098 m!7921356))

(declare-fun m!7921688 () Bool)

(assert (=> bs!1905098 m!7921688))

(declare-fun m!7921690 () Bool)

(assert (=> bs!1905098 m!7921690))

(assert (=> bs!1905098 m!7921364))

(assert (=> b!7245107 d!2251452))

(declare-fun d!2251454 () Bool)

(assert (=> d!2251454 (= (tail!14259 lt!2582227) (t!384419 lt!2582227))))

(assert (=> b!7245107 d!2251454))

(declare-fun d!2251456 () Bool)

(assert (=> d!2251456 (= (flatMap!2778 lt!2582214 lambda!442900) (dynLambda!28681 lambda!442900 ct1!232))))

(declare-fun lt!2582345 () Unit!163767)

(assert (=> d!2251456 (= lt!2582345 (choose!55882 lt!2582214 ct1!232 lambda!442900))))

(assert (=> d!2251456 (= lt!2582214 (set.insert ct1!232 (as set.empty (Set Context!15060))))))

(assert (=> d!2251456 (= (lemmaFlatMapOnSingletonSet!2201 lt!2582214 ct1!232 lambda!442900) lt!2582345)))

(declare-fun b_lambda!278049 () Bool)

(assert (=> (not b_lambda!278049) (not d!2251456)))

(declare-fun bs!1905099 () Bool)

(assert (= bs!1905099 d!2251456))

(assert (=> bs!1905099 m!7921354))

(declare-fun m!7921692 () Bool)

(assert (=> bs!1905099 m!7921692))

(declare-fun m!7921694 () Bool)

(assert (=> bs!1905099 m!7921694))

(assert (=> bs!1905099 m!7921390))

(assert (=> b!7245107 d!2251456))

(declare-fun d!2251458 () Bool)

(declare-fun nullableFct!3093 (Regex!18590) Bool)

(assert (=> d!2251458 (= (nullable!7883 (h!76691 (exprs!8030 ct1!232))) (nullableFct!3093 (h!76691 (exprs!8030 ct1!232))))))

(declare-fun bs!1905100 () Bool)

(assert (= bs!1905100 d!2251458))

(declare-fun m!7921702 () Bool)

(assert (=> bs!1905100 m!7921702))

(assert (=> b!7245107 d!2251458))

(declare-fun d!2251462 () Bool)

(declare-fun choose!55883 ((Set Context!15060) Int) (Set Context!15060))

(assert (=> d!2251462 (= (flatMap!2778 lt!2582223 lambda!442900) (choose!55883 lt!2582223 lambda!442900))))

(declare-fun bs!1905101 () Bool)

(assert (= bs!1905101 d!2251462))

(declare-fun m!7921704 () Bool)

(assert (=> bs!1905101 m!7921704))

(assert (=> b!7245107 d!2251462))

(assert (=> b!7245107 d!2251404))

(assert (=> b!7245107 d!2251388))

(assert (=> b!7245107 d!2251428))

(declare-fun d!2251464 () Bool)

(assert (=> d!2251464 (= (flatMap!2778 lt!2582214 lambda!442900) (choose!55883 lt!2582214 lambda!442900))))

(declare-fun bs!1905102 () Bool)

(assert (= bs!1905102 d!2251464))

(declare-fun m!7921706 () Bool)

(assert (=> bs!1905102 m!7921706))

(assert (=> b!7245107 d!2251464))

(declare-fun b!7245297 () Bool)

(declare-fun e!4344081 () Bool)

(declare-fun tp!2036121 () Bool)

(declare-fun tp!2036122 () Bool)

(assert (=> b!7245297 (= e!4344081 (and tp!2036121 tp!2036122))))

(assert (=> b!7245109 (= tp!2036103 e!4344081)))

(assert (= (and b!7245109 (is-Cons!70243 (exprs!8030 ct2!328))) b!7245297))

(declare-fun b!7245298 () Bool)

(declare-fun e!4344082 () Bool)

(declare-fun tp!2036123 () Bool)

(declare-fun tp!2036124 () Bool)

(assert (=> b!7245298 (= e!4344082 (and tp!2036123 tp!2036124))))

(assert (=> b!7245100 (= tp!2036101 e!4344082)))

(assert (= (and b!7245100 (is-Cons!70243 (exprs!8030 ct1!232))) b!7245298))

(declare-fun b!7245303 () Bool)

(declare-fun e!4344085 () Bool)

(declare-fun tp!2036127 () Bool)

(assert (=> b!7245303 (= e!4344085 (and tp_is_empty!46645 tp!2036127))))

(assert (=> b!7245099 (= tp!2036104 e!4344085)))

(assert (= (and b!7245099 (is-Cons!70244 (t!384420 s1!1971))) b!7245303))

(declare-fun b!7245304 () Bool)

(declare-fun e!4344086 () Bool)

(declare-fun tp!2036128 () Bool)

(assert (=> b!7245304 (= e!4344086 (and tp_is_empty!46645 tp!2036128))))

(assert (=> b!7245102 (= tp!2036102 e!4344086)))

(assert (= (and b!7245102 (is-Cons!70244 (t!384420 s2!1849))) b!7245304))

(declare-fun b_lambda!278051 () Bool)

(assert (= b_lambda!278045 (or b!7245106 b_lambda!278051)))

(declare-fun bs!1905103 () Bool)

(declare-fun d!2251466 () Bool)

(assert (= bs!1905103 (and d!2251466 b!7245106)))

(assert (=> bs!1905103 (= (dynLambda!28679 lambda!442899 lt!2582306) (matchZipper!3500 (set.insert lt!2582306 (as set.empty (Set Context!15060))) (t!384420 s1!1971)))))

(declare-fun m!7921708 () Bool)

(assert (=> bs!1905103 m!7921708))

(assert (=> bs!1905103 m!7921708))

(declare-fun m!7921710 () Bool)

(assert (=> bs!1905103 m!7921710))

(assert (=> d!2251394 d!2251466))

(declare-fun b_lambda!278053 () Bool)

(assert (= b_lambda!278047 (or b!7245107 b_lambda!278053)))

(declare-fun bs!1905104 () Bool)

(declare-fun d!2251468 () Bool)

(assert (= bs!1905104 (and d!2251468 b!7245107)))

(assert (=> bs!1905104 (= (dynLambda!28681 lambda!442900 lt!2582228) (derivationStepZipperUp!2444 lt!2582228 (h!76692 s1!1971)))))

(assert (=> bs!1905104 m!7921338))

(assert (=> d!2251452 d!2251468))

(declare-fun b_lambda!278055 () Bool)

(assert (= b_lambda!278049 (or b!7245107 b_lambda!278055)))

(declare-fun bs!1905105 () Bool)

(declare-fun d!2251470 () Bool)

(assert (= bs!1905105 (and d!2251470 b!7245107)))

(assert (=> bs!1905105 (= (dynLambda!28681 lambda!442900 ct1!232) (derivationStepZipperUp!2444 ct1!232 (h!76692 s1!1971)))))

(assert (=> bs!1905105 m!7921352))

(assert (=> d!2251456 d!2251470))

(push 1)

(assert (not b!7245297))

(assert (not d!2251412))

(assert (not d!2251408))

(assert (not b!7245176))

(assert (not d!2251464))

(assert tp_is_empty!46645)

(assert (not b!7245233))

(assert (not b!7245202))

(assert (not b!7245215))

(assert (not b!7245266))

(assert (not b!7245282))

(assert (not bm!659889))

(assert (not d!2251452))

(assert (not b!7245219))

(assert (not bm!659887))

(assert (not d!2251420))

(assert (not bm!659864))

(assert (not b!7245218))

(assert (not b!7245278))

(assert (not b!7245163))

(assert (not d!2251442))

(assert (not bs!1905103))

(assert (not b!7245177))

(assert (not b!7245201))

(assert (not d!2251398))

(assert (not d!2251414))

(assert (not d!2251424))

(assert (not b!7245224))

(assert (not d!2251410))

(assert (not d!2251388))

(assert (not bm!659883))

(assert (not b!7245303))

(assert (not b!7245230))

(assert (not d!2251418))

(assert (not b_lambda!278051))

(assert (not b!7245216))

(assert (not b!7245170))

(assert (not b_lambda!278055))

(assert (not d!2251416))

(assert (not bs!1905104))

(assert (not b!7245164))

(assert (not b!7245232))

(assert (not b!7245225))

(assert (not bm!659881))

(assert (not d!2251390))

(assert (not d!2251444))

(assert (not d!2251458))

(assert (not d!2251386))

(assert (not b!7245231))

(assert (not b_lambda!278053))

(assert (not d!2251446))

(assert (not bm!659884))

(assert (not d!2251400))

(assert (not b!7245298))

(assert (not d!2251440))

(assert (not b!7245304))

(assert (not bs!1905105))

(assert (not bm!659878))

(assert (not d!2251456))

(assert (not d!2251462))

(assert (not d!2251394))

(assert (not bm!659865))

(assert (not b!7245171))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

