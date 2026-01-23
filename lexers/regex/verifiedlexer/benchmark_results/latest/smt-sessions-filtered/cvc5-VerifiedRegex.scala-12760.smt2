; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!705008 () Bool)

(assert start!705008)

(declare-fun b!7247744 () Bool)

(assert (=> b!7247744 true))

(declare-fun b!7247739 () Bool)

(declare-fun e!4345712 () Bool)

(declare-fun e!4345711 () Bool)

(assert (=> b!7247739 (= e!4345712 e!4345711)))

(declare-fun res!2939798 () Bool)

(assert (=> b!7247739 (=> (not res!2939798) (not e!4345711))))

(declare-datatypes ((C!37530 0))(
  ( (C!37531 (val!28713 Int)) )
))
(declare-datatypes ((Regex!18628 0))(
  ( (ElementMatch!18628 (c!1346485 C!37530)) (Concat!27473 (regOne!37768 Regex!18628) (regTwo!37768 Regex!18628)) (EmptyExpr!18628) (Star!18628 (reg!18957 Regex!18628)) (EmptyLang!18628) (Union!18628 (regOne!37769 Regex!18628) (regTwo!37769 Regex!18628)) )
))
(declare-datatypes ((List!70464 0))(
  ( (Nil!70340) (Cons!70340 (h!76788 Regex!18628) (t!384516 List!70464)) )
))
(declare-datatypes ((Context!15136 0))(
  ( (Context!15137 (exprs!8068 List!70464)) )
))
(declare-fun ct1!232 () Context!15136)

(declare-datatypes ((List!70465 0))(
  ( (Nil!70341) (Cons!70341 (h!76789 C!37530) (t!384517 List!70465)) )
))
(declare-fun s1!1971 () List!70465)

(assert (=> b!7247739 (= res!2939798 (and (not (is-Nil!70340 (exprs!8068 ct1!232))) (is-Cons!70341 s1!1971)))))

(declare-fun lt!2583557 () List!70464)

(declare-fun ct2!328 () Context!15136)

(declare-fun ++!16518 (List!70464 List!70464) List!70464)

(assert (=> b!7247739 (= lt!2583557 (++!16518 (exprs!8068 ct1!232) (exprs!8068 ct2!328)))))

(declare-datatypes ((Unit!163839 0))(
  ( (Unit!163840) )
))
(declare-fun lt!2583559 () Unit!163839)

(declare-fun lambda!443538 () Int)

(declare-fun lemmaConcatPreservesForall!1435 (List!70464 List!70464 Int) Unit!163839)

(assert (=> b!7247739 (= lt!2583559 (lemmaConcatPreservesForall!1435 (exprs!8068 ct1!232) (exprs!8068 ct2!328) lambda!443538))))

(declare-fun b!7247740 () Bool)

(declare-fun e!4345714 () Bool)

(declare-fun inv!89581 (Context!15136) Bool)

(declare-fun tail!14290 (List!70464) List!70464)

(assert (=> b!7247740 (= e!4345714 (inv!89581 (Context!15137 (tail!14290 (exprs!8068 ct1!232)))))))

(declare-fun b!7247741 () Bool)

(declare-fun e!4345715 () Bool)

(declare-fun tp!2036924 () Bool)

(assert (=> b!7247741 (= e!4345715 tp!2036924)))

(declare-fun b!7247742 () Bool)

(declare-fun e!4345713 () Bool)

(declare-fun tp!2036923 () Bool)

(assert (=> b!7247742 (= e!4345713 tp!2036923)))

(declare-fun b!7247743 () Bool)

(declare-fun e!4345709 () Bool)

(declare-fun tp_is_empty!46721 () Bool)

(declare-fun tp!2036922 () Bool)

(assert (=> b!7247743 (= e!4345709 (and tp_is_empty!46721 tp!2036922))))

(declare-fun b!7247745 () Bool)

(declare-fun e!4345716 () Bool)

(assert (=> b!7247745 (= e!4345716 e!4345714)))

(declare-fun res!2939795 () Bool)

(assert (=> b!7247745 (=> res!2939795 e!4345714)))

(declare-fun isEmpty!40507 (List!70464) Bool)

(assert (=> b!7247745 (= res!2939795 (isEmpty!40507 (exprs!8068 ct1!232)))))

(declare-fun lt!2583563 () (Set Context!15136))

(declare-fun derivationStepZipperUp!2452 (Context!15136 C!37530) (Set Context!15136))

(assert (=> b!7247745 (= lt!2583563 (derivationStepZipperUp!2452 ct1!232 (h!76789 s1!1971)))))

(declare-fun lt!2583556 () Context!15136)

(declare-fun lt!2583558 () Unit!163839)

(assert (=> b!7247745 (= lt!2583558 (lemmaConcatPreservesForall!1435 (exprs!8068 lt!2583556) (exprs!8068 ct2!328) lambda!443538))))

(declare-fun s2!1849 () List!70465)

(declare-fun matchZipper!3538 ((Set Context!15136) List!70465) Bool)

(declare-fun ++!16519 (List!70465 List!70465) List!70465)

(assert (=> b!7247745 (matchZipper!3538 (set.insert (Context!15137 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328))) (as set.empty (Set Context!15136))) (++!16519 (t!384517 s1!1971) s2!1849))))

(declare-fun lt!2583555 () Unit!163839)

(assert (=> b!7247745 (= lt!2583555 (lemmaConcatPreservesForall!1435 (exprs!8068 lt!2583556) (exprs!8068 ct2!328) lambda!443538))))

(declare-fun lt!2583564 () Unit!163839)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!373 (Context!15136 Context!15136 List!70465 List!70465) Unit!163839)

(assert (=> b!7247745 (= lt!2583564 (lemmaConcatenateContextMatchesConcatOfStrings!373 lt!2583556 ct2!328 (t!384517 s1!1971) s2!1849))))

(declare-fun lt!2583560 () (Set Context!15136))

(declare-fun lambda!443539 () Int)

(declare-fun getWitness!2174 ((Set Context!15136) Int) Context!15136)

(assert (=> b!7247745 (= lt!2583556 (getWitness!2174 lt!2583560 lambda!443539))))

(declare-fun b!7247746 () Bool)

(declare-fun e!4345717 () Bool)

(declare-fun tp!2036921 () Bool)

(assert (=> b!7247746 (= e!4345717 (and tp_is_empty!46721 tp!2036921))))

(declare-fun b!7247747 () Bool)

(declare-fun res!2939796 () Bool)

(assert (=> b!7247747 (=> (not res!2939796) (not e!4345712))))

(assert (=> b!7247747 (= res!2939796 (matchZipper!3538 (set.insert ct2!328 (as set.empty (Set Context!15136))) s2!1849))))

(declare-fun b!7247748 () Bool)

(declare-fun e!4345710 () Bool)

(assert (=> b!7247748 (= e!4345711 e!4345710)))

(declare-fun res!2939797 () Bool)

(assert (=> b!7247748 (=> (not res!2939797) (not e!4345710))))

(assert (=> b!7247748 (= res!2939797 (matchZipper!3538 lt!2583560 (t!384517 s1!1971)))))

(declare-fun lt!2583565 () (Set Context!15136))

(declare-fun derivationStepZipper!3406 ((Set Context!15136) C!37530) (Set Context!15136))

(assert (=> b!7247748 (= lt!2583560 (derivationStepZipper!3406 lt!2583565 (h!76789 s1!1971)))))

(assert (=> b!7247744 (= e!4345710 (not e!4345716))))

(declare-fun res!2939800 () Bool)

(assert (=> b!7247744 (=> res!2939800 e!4345716)))

(declare-fun exists!4334 ((Set Context!15136) Int) Bool)

(assert (=> b!7247744 (= res!2939800 (not (exists!4334 lt!2583560 lambda!443539)))))

(declare-datatypes ((List!70466 0))(
  ( (Nil!70342) (Cons!70342 (h!76790 Context!15136) (t!384518 List!70466)) )
))
(declare-fun lt!2583562 () List!70466)

(declare-fun exists!4335 (List!70466 Int) Bool)

(assert (=> b!7247744 (exists!4335 lt!2583562 lambda!443539)))

(declare-fun lt!2583561 () Unit!163839)

(declare-fun lemmaZipperMatchesExistsMatchingContext!731 (List!70466 List!70465) Unit!163839)

(assert (=> b!7247744 (= lt!2583561 (lemmaZipperMatchesExistsMatchingContext!731 lt!2583562 (t!384517 s1!1971)))))

(declare-fun toList!11457 ((Set Context!15136)) List!70466)

(assert (=> b!7247744 (= lt!2583562 (toList!11457 lt!2583560))))

(declare-fun res!2939799 () Bool)

(assert (=> start!705008 (=> (not res!2939799) (not e!4345712))))

(assert (=> start!705008 (= res!2939799 (matchZipper!3538 lt!2583565 s1!1971))))

(assert (=> start!705008 (= lt!2583565 (set.insert ct1!232 (as set.empty (Set Context!15136))))))

(assert (=> start!705008 e!4345712))

(assert (=> start!705008 (and (inv!89581 ct1!232) e!4345713)))

(assert (=> start!705008 e!4345717))

(assert (=> start!705008 e!4345709))

(assert (=> start!705008 (and (inv!89581 ct2!328) e!4345715)))

(assert (= (and start!705008 res!2939799) b!7247747))

(assert (= (and b!7247747 res!2939796) b!7247739))

(assert (= (and b!7247739 res!2939798) b!7247748))

(assert (= (and b!7247748 res!2939797) b!7247744))

(assert (= (and b!7247744 (not res!2939800)) b!7247745))

(assert (= (and b!7247745 (not res!2939795)) b!7247740))

(assert (= start!705008 b!7247742))

(assert (= (and start!705008 (is-Cons!70341 s1!1971)) b!7247746))

(assert (= (and start!705008 (is-Cons!70341 s2!1849)) b!7247743))

(assert (= start!705008 b!7247741))

(declare-fun m!7925242 () Bool)

(assert (=> b!7247748 m!7925242))

(declare-fun m!7925244 () Bool)

(assert (=> b!7247748 m!7925244))

(declare-fun m!7925246 () Bool)

(assert (=> b!7247740 m!7925246))

(declare-fun m!7925248 () Bool)

(assert (=> b!7247740 m!7925248))

(declare-fun m!7925250 () Bool)

(assert (=> start!705008 m!7925250))

(declare-fun m!7925252 () Bool)

(assert (=> start!705008 m!7925252))

(declare-fun m!7925254 () Bool)

(assert (=> start!705008 m!7925254))

(declare-fun m!7925256 () Bool)

(assert (=> start!705008 m!7925256))

(declare-fun m!7925258 () Bool)

(assert (=> b!7247739 m!7925258))

(declare-fun m!7925260 () Bool)

(assert (=> b!7247739 m!7925260))

(declare-fun m!7925262 () Bool)

(assert (=> b!7247744 m!7925262))

(declare-fun m!7925264 () Bool)

(assert (=> b!7247744 m!7925264))

(declare-fun m!7925266 () Bool)

(assert (=> b!7247744 m!7925266))

(declare-fun m!7925268 () Bool)

(assert (=> b!7247744 m!7925268))

(declare-fun m!7925270 () Bool)

(assert (=> b!7247747 m!7925270))

(assert (=> b!7247747 m!7925270))

(declare-fun m!7925272 () Bool)

(assert (=> b!7247747 m!7925272))

(declare-fun m!7925274 () Bool)

(assert (=> b!7247745 m!7925274))

(declare-fun m!7925276 () Bool)

(assert (=> b!7247745 m!7925276))

(declare-fun m!7925278 () Bool)

(assert (=> b!7247745 m!7925278))

(declare-fun m!7925280 () Bool)

(assert (=> b!7247745 m!7925280))

(declare-fun m!7925282 () Bool)

(assert (=> b!7247745 m!7925282))

(declare-fun m!7925284 () Bool)

(assert (=> b!7247745 m!7925284))

(declare-fun m!7925286 () Bool)

(assert (=> b!7247745 m!7925286))

(assert (=> b!7247745 m!7925286))

(assert (=> b!7247745 m!7925278))

(declare-fun m!7925288 () Bool)

(assert (=> b!7247745 m!7925288))

(declare-fun m!7925290 () Bool)

(assert (=> b!7247745 m!7925290))

(assert (=> b!7247745 m!7925284))

(push 1)

(assert tp_is_empty!46721)

(assert (not b!7247747))

(assert (not b!7247739))

(assert (not b!7247746))

(assert (not start!705008))

(assert (not b!7247741))

(assert (not b!7247745))

(assert (not b!7247744))

(assert (not b!7247748))

(assert (not b!7247742))

(assert (not b!7247740))

(assert (not b!7247743))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1905499 () Bool)

(declare-fun d!2252315 () Bool)

(assert (= bs!1905499 (and d!2252315 b!7247739)))

(declare-fun lambda!443556 () Int)

(assert (=> bs!1905499 (= lambda!443556 lambda!443538)))

(declare-fun forall!17467 (List!70464 Int) Bool)

(assert (=> d!2252315 (= (inv!89581 (Context!15137 (tail!14290 (exprs!8068 ct1!232)))) (forall!17467 (exprs!8068 (Context!15137 (tail!14290 (exprs!8068 ct1!232)))) lambda!443556))))

(declare-fun bs!1905500 () Bool)

(assert (= bs!1905500 d!2252315))

(declare-fun m!7925342 () Bool)

(assert (=> bs!1905500 m!7925342))

(assert (=> b!7247740 d!2252315))

(declare-fun d!2252317 () Bool)

(assert (=> d!2252317 (= (tail!14290 (exprs!8068 ct1!232)) (t!384516 (exprs!8068 ct1!232)))))

(assert (=> b!7247740 d!2252317))

(declare-fun bs!1905501 () Bool)

(declare-fun d!2252319 () Bool)

(assert (= bs!1905501 (and d!2252319 b!7247739)))

(declare-fun lambda!443559 () Int)

(assert (=> bs!1905501 (= lambda!443559 lambda!443538)))

(declare-fun bs!1905502 () Bool)

(assert (= bs!1905502 (and d!2252319 d!2252315)))

(assert (=> bs!1905502 (= lambda!443559 lambda!443556)))

(assert (=> d!2252319 (matchZipper!3538 (set.insert (Context!15137 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328))) (as set.empty (Set Context!15136))) (++!16519 (t!384517 s1!1971) s2!1849))))

(declare-fun lt!2583604 () Unit!163839)

(assert (=> d!2252319 (= lt!2583604 (lemmaConcatPreservesForall!1435 (exprs!8068 lt!2583556) (exprs!8068 ct2!328) lambda!443559))))

(declare-fun lt!2583603 () Unit!163839)

(declare-fun choose!55944 (Context!15136 Context!15136 List!70465 List!70465) Unit!163839)

(assert (=> d!2252319 (= lt!2583603 (choose!55944 lt!2583556 ct2!328 (t!384517 s1!1971) s2!1849))))

(assert (=> d!2252319 (matchZipper!3538 (set.insert lt!2583556 (as set.empty (Set Context!15136))) (t!384517 s1!1971))))

(assert (=> d!2252319 (= (lemmaConcatenateContextMatchesConcatOfStrings!373 lt!2583556 ct2!328 (t!384517 s1!1971) s2!1849) lt!2583603)))

(declare-fun bs!1905503 () Bool)

(assert (= bs!1905503 d!2252319))

(declare-fun m!7925344 () Bool)

(assert (=> bs!1905503 m!7925344))

(assert (=> bs!1905503 m!7925286))

(assert (=> bs!1905503 m!7925280))

(assert (=> bs!1905503 m!7925344))

(declare-fun m!7925346 () Bool)

(assert (=> bs!1905503 m!7925346))

(declare-fun m!7925348 () Bool)

(assert (=> bs!1905503 m!7925348))

(assert (=> bs!1905503 m!7925278))

(assert (=> bs!1905503 m!7925286))

(assert (=> bs!1905503 m!7925278))

(assert (=> bs!1905503 m!7925288))

(declare-fun m!7925350 () Bool)

(assert (=> bs!1905503 m!7925350))

(assert (=> b!7247745 d!2252319))

(declare-fun d!2252321 () Bool)

(declare-fun e!4345747 () Bool)

(assert (=> d!2252321 e!4345747))

(declare-fun res!2939821 () Bool)

(assert (=> d!2252321 (=> (not res!2939821) (not e!4345747))))

(declare-fun lt!2583607 () Context!15136)

(declare-fun dynLambda!28708 (Int Context!15136) Bool)

(assert (=> d!2252321 (= res!2939821 (dynLambda!28708 lambda!443539 lt!2583607))))

(declare-fun getWitness!2176 (List!70466 Int) Context!15136)

(assert (=> d!2252321 (= lt!2583607 (getWitness!2176 (toList!11457 lt!2583560) lambda!443539))))

(assert (=> d!2252321 (exists!4334 lt!2583560 lambda!443539)))

(assert (=> d!2252321 (= (getWitness!2174 lt!2583560 lambda!443539) lt!2583607)))

(declare-fun b!7247785 () Bool)

(assert (=> b!7247785 (= e!4345747 (set.member lt!2583607 lt!2583560))))

(assert (= (and d!2252321 res!2939821) b!7247785))

(declare-fun b_lambda!278169 () Bool)

(assert (=> (not b_lambda!278169) (not d!2252321)))

(declare-fun m!7925352 () Bool)

(assert (=> d!2252321 m!7925352))

(assert (=> d!2252321 m!7925268))

(assert (=> d!2252321 m!7925268))

(declare-fun m!7925354 () Bool)

(assert (=> d!2252321 m!7925354))

(assert (=> d!2252321 m!7925262))

(declare-fun m!7925356 () Bool)

(assert (=> b!7247785 m!7925356))

(assert (=> b!7247745 d!2252321))

(declare-fun d!2252323 () Bool)

(declare-fun c!1346495 () Bool)

(declare-fun isEmpty!40509 (List!70465) Bool)

(assert (=> d!2252323 (= c!1346495 (isEmpty!40509 (++!16519 (t!384517 s1!1971) s2!1849)))))

(declare-fun e!4345750 () Bool)

(assert (=> d!2252323 (= (matchZipper!3538 (set.insert (Context!15137 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328))) (as set.empty (Set Context!15136))) (++!16519 (t!384517 s1!1971) s2!1849)) e!4345750)))

(declare-fun b!7247790 () Bool)

(declare-fun nullableZipper!2900 ((Set Context!15136)) Bool)

(assert (=> b!7247790 (= e!4345750 (nullableZipper!2900 (set.insert (Context!15137 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328))) (as set.empty (Set Context!15136)))))))

(declare-fun b!7247791 () Bool)

(declare-fun head!14888 (List!70465) C!37530)

(declare-fun tail!14292 (List!70465) List!70465)

(assert (=> b!7247791 (= e!4345750 (matchZipper!3538 (derivationStepZipper!3406 (set.insert (Context!15137 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328))) (as set.empty (Set Context!15136))) (head!14888 (++!16519 (t!384517 s1!1971) s2!1849))) (tail!14292 (++!16519 (t!384517 s1!1971) s2!1849))))))

(assert (= (and d!2252323 c!1346495) b!7247790))

(assert (= (and d!2252323 (not c!1346495)) b!7247791))

(assert (=> d!2252323 m!7925278))

(declare-fun m!7925358 () Bool)

(assert (=> d!2252323 m!7925358))

(assert (=> b!7247790 m!7925286))

(declare-fun m!7925360 () Bool)

(assert (=> b!7247790 m!7925360))

(assert (=> b!7247791 m!7925278))

(declare-fun m!7925362 () Bool)

(assert (=> b!7247791 m!7925362))

(assert (=> b!7247791 m!7925286))

(assert (=> b!7247791 m!7925362))

(declare-fun m!7925364 () Bool)

(assert (=> b!7247791 m!7925364))

(assert (=> b!7247791 m!7925278))

(declare-fun m!7925366 () Bool)

(assert (=> b!7247791 m!7925366))

(assert (=> b!7247791 m!7925364))

(assert (=> b!7247791 m!7925366))

(declare-fun m!7925368 () Bool)

(assert (=> b!7247791 m!7925368))

(assert (=> b!7247745 d!2252323))

(declare-fun d!2252325 () Bool)

(assert (=> d!2252325 (= (isEmpty!40507 (exprs!8068 ct1!232)) (is-Nil!70340 (exprs!8068 ct1!232)))))

(assert (=> b!7247745 d!2252325))

(declare-fun d!2252327 () Bool)

(assert (=> d!2252327 (forall!17467 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328)) lambda!443538)))

(declare-fun lt!2583610 () Unit!163839)

(declare-fun choose!55945 (List!70464 List!70464 Int) Unit!163839)

(assert (=> d!2252327 (= lt!2583610 (choose!55945 (exprs!8068 lt!2583556) (exprs!8068 ct2!328) lambda!443538))))

(assert (=> d!2252327 (forall!17467 (exprs!8068 lt!2583556) lambda!443538)))

(assert (=> d!2252327 (= (lemmaConcatPreservesForall!1435 (exprs!8068 lt!2583556) (exprs!8068 ct2!328) lambda!443538) lt!2583610)))

(declare-fun bs!1905504 () Bool)

(assert (= bs!1905504 d!2252327))

(assert (=> bs!1905504 m!7925280))

(assert (=> bs!1905504 m!7925280))

(declare-fun m!7925370 () Bool)

(assert (=> bs!1905504 m!7925370))

(declare-fun m!7925372 () Bool)

(assert (=> bs!1905504 m!7925372))

(declare-fun m!7925374 () Bool)

(assert (=> bs!1905504 m!7925374))

(assert (=> b!7247745 d!2252327))

(declare-fun d!2252329 () Bool)

(declare-fun e!4345755 () Bool)

(assert (=> d!2252329 e!4345755))

(declare-fun res!2939827 () Bool)

(assert (=> d!2252329 (=> (not res!2939827) (not e!4345755))))

(declare-fun lt!2583613 () List!70465)

(declare-fun content!14572 (List!70465) (Set C!37530))

(assert (=> d!2252329 (= res!2939827 (= (content!14572 lt!2583613) (set.union (content!14572 (t!384517 s1!1971)) (content!14572 s2!1849))))))

(declare-fun e!4345756 () List!70465)

(assert (=> d!2252329 (= lt!2583613 e!4345756)))

(declare-fun c!1346498 () Bool)

(assert (=> d!2252329 (= c!1346498 (is-Nil!70341 (t!384517 s1!1971)))))

(assert (=> d!2252329 (= (++!16519 (t!384517 s1!1971) s2!1849) lt!2583613)))

(declare-fun b!7247803 () Bool)

(assert (=> b!7247803 (= e!4345755 (or (not (= s2!1849 Nil!70341)) (= lt!2583613 (t!384517 s1!1971))))))

(declare-fun b!7247800 () Bool)

(assert (=> b!7247800 (= e!4345756 s2!1849)))

(declare-fun b!7247801 () Bool)

(assert (=> b!7247801 (= e!4345756 (Cons!70341 (h!76789 (t!384517 s1!1971)) (++!16519 (t!384517 (t!384517 s1!1971)) s2!1849)))))

(declare-fun b!7247802 () Bool)

(declare-fun res!2939826 () Bool)

(assert (=> b!7247802 (=> (not res!2939826) (not e!4345755))))

(declare-fun size!41690 (List!70465) Int)

(assert (=> b!7247802 (= res!2939826 (= (size!41690 lt!2583613) (+ (size!41690 (t!384517 s1!1971)) (size!41690 s2!1849))))))

(assert (= (and d!2252329 c!1346498) b!7247800))

(assert (= (and d!2252329 (not c!1346498)) b!7247801))

(assert (= (and d!2252329 res!2939827) b!7247802))

(assert (= (and b!7247802 res!2939826) b!7247803))

(declare-fun m!7925376 () Bool)

(assert (=> d!2252329 m!7925376))

(declare-fun m!7925378 () Bool)

(assert (=> d!2252329 m!7925378))

(declare-fun m!7925380 () Bool)

(assert (=> d!2252329 m!7925380))

(declare-fun m!7925382 () Bool)

(assert (=> b!7247801 m!7925382))

(declare-fun m!7925384 () Bool)

(assert (=> b!7247802 m!7925384))

(declare-fun m!7925386 () Bool)

(assert (=> b!7247802 m!7925386))

(declare-fun m!7925388 () Bool)

(assert (=> b!7247802 m!7925388))

(assert (=> b!7247745 d!2252329))

(declare-fun b!7247812 () Bool)

(declare-fun e!4345762 () List!70464)

(assert (=> b!7247812 (= e!4345762 (exprs!8068 ct2!328))))

(declare-fun b!7247814 () Bool)

(declare-fun res!2939833 () Bool)

(declare-fun e!4345761 () Bool)

(assert (=> b!7247814 (=> (not res!2939833) (not e!4345761))))

(declare-fun lt!2583616 () List!70464)

(declare-fun size!41691 (List!70464) Int)

(assert (=> b!7247814 (= res!2939833 (= (size!41691 lt!2583616) (+ (size!41691 (exprs!8068 lt!2583556)) (size!41691 (exprs!8068 ct2!328)))))))

(declare-fun b!7247815 () Bool)

(assert (=> b!7247815 (= e!4345761 (or (not (= (exprs!8068 ct2!328) Nil!70340)) (= lt!2583616 (exprs!8068 lt!2583556))))))

(declare-fun d!2252333 () Bool)

(assert (=> d!2252333 e!4345761))

(declare-fun res!2939832 () Bool)

(assert (=> d!2252333 (=> (not res!2939832) (not e!4345761))))

(declare-fun content!14573 (List!70464) (Set Regex!18628))

(assert (=> d!2252333 (= res!2939832 (= (content!14573 lt!2583616) (set.union (content!14573 (exprs!8068 lt!2583556)) (content!14573 (exprs!8068 ct2!328)))))))

(assert (=> d!2252333 (= lt!2583616 e!4345762)))

(declare-fun c!1346501 () Bool)

(assert (=> d!2252333 (= c!1346501 (is-Nil!70340 (exprs!8068 lt!2583556)))))

(assert (=> d!2252333 (= (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328)) lt!2583616)))

(declare-fun b!7247813 () Bool)

(assert (=> b!7247813 (= e!4345762 (Cons!70340 (h!76788 (exprs!8068 lt!2583556)) (++!16518 (t!384516 (exprs!8068 lt!2583556)) (exprs!8068 ct2!328))))))

(assert (= (and d!2252333 c!1346501) b!7247812))

(assert (= (and d!2252333 (not c!1346501)) b!7247813))

(assert (= (and d!2252333 res!2939832) b!7247814))

(assert (= (and b!7247814 res!2939833) b!7247815))

(declare-fun m!7925392 () Bool)

(assert (=> b!7247814 m!7925392))

(declare-fun m!7925394 () Bool)

(assert (=> b!7247814 m!7925394))

(declare-fun m!7925396 () Bool)

(assert (=> b!7247814 m!7925396))

(declare-fun m!7925398 () Bool)

(assert (=> d!2252333 m!7925398))

(declare-fun m!7925400 () Bool)

(assert (=> d!2252333 m!7925400))

(declare-fun m!7925402 () Bool)

(assert (=> d!2252333 m!7925402))

(declare-fun m!7925404 () Bool)

(assert (=> b!7247813 m!7925404))

(assert (=> b!7247745 d!2252333))

(declare-fun d!2252339 () Bool)

(declare-fun c!1346506 () Bool)

(declare-fun e!4345770 () Bool)

(assert (=> d!2252339 (= c!1346506 e!4345770)))

(declare-fun res!2939836 () Bool)

(assert (=> d!2252339 (=> (not res!2939836) (not e!4345770))))

(assert (=> d!2252339 (= res!2939836 (is-Cons!70340 (exprs!8068 ct1!232)))))

(declare-fun e!4345771 () (Set Context!15136))

(assert (=> d!2252339 (= (derivationStepZipperUp!2452 ct1!232 (h!76789 s1!1971)) e!4345771)))

(declare-fun b!7247826 () Bool)

(declare-fun e!4345769 () (Set Context!15136))

(declare-fun call!659987 () (Set Context!15136))

(assert (=> b!7247826 (= e!4345769 call!659987)))

(declare-fun b!7247827 () Bool)

(assert (=> b!7247827 (= e!4345771 (set.union call!659987 (derivationStepZipperUp!2452 (Context!15137 (t!384516 (exprs!8068 ct1!232))) (h!76789 s1!1971))))))

(declare-fun b!7247828 () Bool)

(assert (=> b!7247828 (= e!4345769 (as set.empty (Set Context!15136)))))

(declare-fun b!7247829 () Bool)

(declare-fun nullable!7891 (Regex!18628) Bool)

(assert (=> b!7247829 (= e!4345770 (nullable!7891 (h!76788 (exprs!8068 ct1!232))))))

(declare-fun b!7247830 () Bool)

(assert (=> b!7247830 (= e!4345771 e!4345769)))

(declare-fun c!1346507 () Bool)

(assert (=> b!7247830 (= c!1346507 (is-Cons!70340 (exprs!8068 ct1!232)))))

(declare-fun bm!659982 () Bool)

(declare-fun derivationStepZipperDown!2622 (Regex!18628 Context!15136 C!37530) (Set Context!15136))

(assert (=> bm!659982 (= call!659987 (derivationStepZipperDown!2622 (h!76788 (exprs!8068 ct1!232)) (Context!15137 (t!384516 (exprs!8068 ct1!232))) (h!76789 s1!1971)))))

(assert (= (and d!2252339 res!2939836) b!7247829))

(assert (= (and d!2252339 c!1346506) b!7247827))

(assert (= (and d!2252339 (not c!1346506)) b!7247830))

(assert (= (and b!7247830 c!1346507) b!7247826))

(assert (= (and b!7247830 (not c!1346507)) b!7247828))

(assert (= (or b!7247827 b!7247826) bm!659982))

(declare-fun m!7925406 () Bool)

(assert (=> b!7247827 m!7925406))

(declare-fun m!7925408 () Bool)

(assert (=> b!7247829 m!7925408))

(declare-fun m!7925410 () Bool)

(assert (=> bm!659982 m!7925410))

(assert (=> b!7247745 d!2252339))

(declare-fun b!7247835 () Bool)

(declare-fun e!4345775 () List!70464)

(assert (=> b!7247835 (= e!4345775 (exprs!8068 ct2!328))))

(declare-fun b!7247837 () Bool)

(declare-fun res!2939838 () Bool)

(declare-fun e!4345774 () Bool)

(assert (=> b!7247837 (=> (not res!2939838) (not e!4345774))))

(declare-fun lt!2583619 () List!70464)

(assert (=> b!7247837 (= res!2939838 (= (size!41691 lt!2583619) (+ (size!41691 (exprs!8068 ct1!232)) (size!41691 (exprs!8068 ct2!328)))))))

(declare-fun b!7247838 () Bool)

(assert (=> b!7247838 (= e!4345774 (or (not (= (exprs!8068 ct2!328) Nil!70340)) (= lt!2583619 (exprs!8068 ct1!232))))))

(declare-fun d!2252341 () Bool)

(assert (=> d!2252341 e!4345774))

(declare-fun res!2939837 () Bool)

(assert (=> d!2252341 (=> (not res!2939837) (not e!4345774))))

(assert (=> d!2252341 (= res!2939837 (= (content!14573 lt!2583619) (set.union (content!14573 (exprs!8068 ct1!232)) (content!14573 (exprs!8068 ct2!328)))))))

(assert (=> d!2252341 (= lt!2583619 e!4345775)))

(declare-fun c!1346510 () Bool)

(assert (=> d!2252341 (= c!1346510 (is-Nil!70340 (exprs!8068 ct1!232)))))

(assert (=> d!2252341 (= (++!16518 (exprs!8068 ct1!232) (exprs!8068 ct2!328)) lt!2583619)))

(declare-fun b!7247836 () Bool)

(assert (=> b!7247836 (= e!4345775 (Cons!70340 (h!76788 (exprs!8068 ct1!232)) (++!16518 (t!384516 (exprs!8068 ct1!232)) (exprs!8068 ct2!328))))))

(assert (= (and d!2252341 c!1346510) b!7247835))

(assert (= (and d!2252341 (not c!1346510)) b!7247836))

(assert (= (and d!2252341 res!2939837) b!7247837))

(assert (= (and b!7247837 res!2939838) b!7247838))

(declare-fun m!7925412 () Bool)

(assert (=> b!7247837 m!7925412))

(declare-fun m!7925414 () Bool)

(assert (=> b!7247837 m!7925414))

(assert (=> b!7247837 m!7925396))

(declare-fun m!7925416 () Bool)

(assert (=> d!2252341 m!7925416))

(declare-fun m!7925418 () Bool)

(assert (=> d!2252341 m!7925418))

(assert (=> d!2252341 m!7925402))

(declare-fun m!7925420 () Bool)

(assert (=> b!7247836 m!7925420))

(assert (=> b!7247739 d!2252341))

(declare-fun d!2252343 () Bool)

(assert (=> d!2252343 (forall!17467 (++!16518 (exprs!8068 ct1!232) (exprs!8068 ct2!328)) lambda!443538)))

(declare-fun lt!2583620 () Unit!163839)

(assert (=> d!2252343 (= lt!2583620 (choose!55945 (exprs!8068 ct1!232) (exprs!8068 ct2!328) lambda!443538))))

(assert (=> d!2252343 (forall!17467 (exprs!8068 ct1!232) lambda!443538)))

(assert (=> d!2252343 (= (lemmaConcatPreservesForall!1435 (exprs!8068 ct1!232) (exprs!8068 ct2!328) lambda!443538) lt!2583620)))

(declare-fun bs!1905507 () Bool)

(assert (= bs!1905507 d!2252343))

(assert (=> bs!1905507 m!7925258))

(assert (=> bs!1905507 m!7925258))

(declare-fun m!7925422 () Bool)

(assert (=> bs!1905507 m!7925422))

(declare-fun m!7925424 () Bool)

(assert (=> bs!1905507 m!7925424))

(declare-fun m!7925426 () Bool)

(assert (=> bs!1905507 m!7925426))

(assert (=> b!7247739 d!2252343))

(declare-fun d!2252345 () Bool)

(declare-fun lt!2583623 () Bool)

(assert (=> d!2252345 (= lt!2583623 (exists!4335 (toList!11457 lt!2583560) lambda!443539))))

(declare-fun choose!55946 ((Set Context!15136) Int) Bool)

(assert (=> d!2252345 (= lt!2583623 (choose!55946 lt!2583560 lambda!443539))))

(assert (=> d!2252345 (= (exists!4334 lt!2583560 lambda!443539) lt!2583623)))

(declare-fun bs!1905508 () Bool)

(assert (= bs!1905508 d!2252345))

(assert (=> bs!1905508 m!7925268))

(assert (=> bs!1905508 m!7925268))

(declare-fun m!7925428 () Bool)

(assert (=> bs!1905508 m!7925428))

(declare-fun m!7925430 () Bool)

(assert (=> bs!1905508 m!7925430))

(assert (=> b!7247744 d!2252345))

(declare-fun bs!1905509 () Bool)

(declare-fun d!2252347 () Bool)

(assert (= bs!1905509 (and d!2252347 b!7247744)))

(declare-fun lambda!443565 () Int)

(assert (=> bs!1905509 (not (= lambda!443565 lambda!443539))))

(assert (=> d!2252347 true))

(declare-fun order!28951 () Int)

(declare-fun dynLambda!28709 (Int Int) Int)

(assert (=> d!2252347 (< (dynLambda!28709 order!28951 lambda!443539) (dynLambda!28709 order!28951 lambda!443565))))

(declare-fun forall!17468 (List!70466 Int) Bool)

(assert (=> d!2252347 (= (exists!4335 lt!2583562 lambda!443539) (not (forall!17468 lt!2583562 lambda!443565)))))

(declare-fun bs!1905510 () Bool)

(assert (= bs!1905510 d!2252347))

(declare-fun m!7925432 () Bool)

(assert (=> bs!1905510 m!7925432))

(assert (=> b!7247744 d!2252347))

(declare-fun bs!1905511 () Bool)

(declare-fun d!2252349 () Bool)

(assert (= bs!1905511 (and d!2252349 b!7247744)))

(declare-fun lambda!443568 () Int)

(assert (=> bs!1905511 (= lambda!443568 lambda!443539)))

(declare-fun bs!1905512 () Bool)

(assert (= bs!1905512 (and d!2252349 d!2252347)))

(assert (=> bs!1905512 (not (= lambda!443568 lambda!443565))))

(assert (=> d!2252349 true))

(assert (=> d!2252349 (exists!4335 lt!2583562 lambda!443568)))

(declare-fun lt!2583627 () Unit!163839)

(declare-fun choose!55947 (List!70466 List!70465) Unit!163839)

(assert (=> d!2252349 (= lt!2583627 (choose!55947 lt!2583562 (t!384517 s1!1971)))))

(declare-fun content!14574 (List!70466) (Set Context!15136))

(assert (=> d!2252349 (matchZipper!3538 (content!14574 lt!2583562) (t!384517 s1!1971))))

(assert (=> d!2252349 (= (lemmaZipperMatchesExistsMatchingContext!731 lt!2583562 (t!384517 s1!1971)) lt!2583627)))

(declare-fun bs!1905513 () Bool)

(assert (= bs!1905513 d!2252349))

(declare-fun m!7925448 () Bool)

(assert (=> bs!1905513 m!7925448))

(declare-fun m!7925450 () Bool)

(assert (=> bs!1905513 m!7925450))

(declare-fun m!7925452 () Bool)

(assert (=> bs!1905513 m!7925452))

(assert (=> bs!1905513 m!7925452))

(declare-fun m!7925454 () Bool)

(assert (=> bs!1905513 m!7925454))

(assert (=> b!7247744 d!2252349))

(declare-fun d!2252353 () Bool)

(declare-fun e!4345782 () Bool)

(assert (=> d!2252353 e!4345782))

(declare-fun res!2939847 () Bool)

(assert (=> d!2252353 (=> (not res!2939847) (not e!4345782))))

(declare-fun lt!2583633 () List!70466)

(declare-fun noDuplicate!2978 (List!70466) Bool)

(assert (=> d!2252353 (= res!2939847 (noDuplicate!2978 lt!2583633))))

(declare-fun choose!55948 ((Set Context!15136)) List!70466)

(assert (=> d!2252353 (= lt!2583633 (choose!55948 lt!2583560))))

(assert (=> d!2252353 (= (toList!11457 lt!2583560) lt!2583633)))

(declare-fun b!7247851 () Bool)

(assert (=> b!7247851 (= e!4345782 (= (content!14574 lt!2583633) lt!2583560))))

(assert (= (and d!2252353 res!2939847) b!7247851))

(declare-fun m!7925458 () Bool)

(assert (=> d!2252353 m!7925458))

(declare-fun m!7925460 () Bool)

(assert (=> d!2252353 m!7925460))

(declare-fun m!7925462 () Bool)

(assert (=> b!7247851 m!7925462))

(assert (=> b!7247744 d!2252353))

(declare-fun d!2252355 () Bool)

(declare-fun c!1346514 () Bool)

(assert (=> d!2252355 (= c!1346514 (isEmpty!40509 s1!1971))))

(declare-fun e!4345783 () Bool)

(assert (=> d!2252355 (= (matchZipper!3538 lt!2583565 s1!1971) e!4345783)))

(declare-fun b!7247852 () Bool)

(assert (=> b!7247852 (= e!4345783 (nullableZipper!2900 lt!2583565))))

(declare-fun b!7247853 () Bool)

(assert (=> b!7247853 (= e!4345783 (matchZipper!3538 (derivationStepZipper!3406 lt!2583565 (head!14888 s1!1971)) (tail!14292 s1!1971)))))

(assert (= (and d!2252355 c!1346514) b!7247852))

(assert (= (and d!2252355 (not c!1346514)) b!7247853))

(declare-fun m!7925468 () Bool)

(assert (=> d!2252355 m!7925468))

(declare-fun m!7925470 () Bool)

(assert (=> b!7247852 m!7925470))

(declare-fun m!7925472 () Bool)

(assert (=> b!7247853 m!7925472))

(assert (=> b!7247853 m!7925472))

(declare-fun m!7925474 () Bool)

(assert (=> b!7247853 m!7925474))

(declare-fun m!7925476 () Bool)

(assert (=> b!7247853 m!7925476))

(assert (=> b!7247853 m!7925474))

(assert (=> b!7247853 m!7925476))

(declare-fun m!7925478 () Bool)

(assert (=> b!7247853 m!7925478))

(assert (=> start!705008 d!2252355))

(declare-fun bs!1905515 () Bool)

(declare-fun d!2252359 () Bool)

(assert (= bs!1905515 (and d!2252359 b!7247739)))

(declare-fun lambda!443569 () Int)

(assert (=> bs!1905515 (= lambda!443569 lambda!443538)))

(declare-fun bs!1905516 () Bool)

(assert (= bs!1905516 (and d!2252359 d!2252315)))

(assert (=> bs!1905516 (= lambda!443569 lambda!443556)))

(declare-fun bs!1905517 () Bool)

(assert (= bs!1905517 (and d!2252359 d!2252319)))

(assert (=> bs!1905517 (= lambda!443569 lambda!443559)))

(assert (=> d!2252359 (= (inv!89581 ct1!232) (forall!17467 (exprs!8068 ct1!232) lambda!443569))))

(declare-fun bs!1905518 () Bool)

(assert (= bs!1905518 d!2252359))

(declare-fun m!7925480 () Bool)

(assert (=> bs!1905518 m!7925480))

(assert (=> start!705008 d!2252359))

(declare-fun bs!1905519 () Bool)

(declare-fun d!2252361 () Bool)

(assert (= bs!1905519 (and d!2252361 b!7247739)))

(declare-fun lambda!443570 () Int)

(assert (=> bs!1905519 (= lambda!443570 lambda!443538)))

(declare-fun bs!1905520 () Bool)

(assert (= bs!1905520 (and d!2252361 d!2252315)))

(assert (=> bs!1905520 (= lambda!443570 lambda!443556)))

(declare-fun bs!1905521 () Bool)

(assert (= bs!1905521 (and d!2252361 d!2252319)))

(assert (=> bs!1905521 (= lambda!443570 lambda!443559)))

(declare-fun bs!1905522 () Bool)

(assert (= bs!1905522 (and d!2252361 d!2252359)))

(assert (=> bs!1905522 (= lambda!443570 lambda!443569)))

(assert (=> d!2252361 (= (inv!89581 ct2!328) (forall!17467 (exprs!8068 ct2!328) lambda!443570))))

(declare-fun bs!1905523 () Bool)

(assert (= bs!1905523 d!2252361))

(declare-fun m!7925482 () Bool)

(assert (=> bs!1905523 m!7925482))

(assert (=> start!705008 d!2252361))

(declare-fun d!2252363 () Bool)

(declare-fun c!1346515 () Bool)

(assert (=> d!2252363 (= c!1346515 (isEmpty!40509 (t!384517 s1!1971)))))

(declare-fun e!4345784 () Bool)

(assert (=> d!2252363 (= (matchZipper!3538 lt!2583560 (t!384517 s1!1971)) e!4345784)))

(declare-fun b!7247854 () Bool)

(assert (=> b!7247854 (= e!4345784 (nullableZipper!2900 lt!2583560))))

(declare-fun b!7247855 () Bool)

(assert (=> b!7247855 (= e!4345784 (matchZipper!3538 (derivationStepZipper!3406 lt!2583560 (head!14888 (t!384517 s1!1971))) (tail!14292 (t!384517 s1!1971))))))

(assert (= (and d!2252363 c!1346515) b!7247854))

(assert (= (and d!2252363 (not c!1346515)) b!7247855))

(declare-fun m!7925484 () Bool)

(assert (=> d!2252363 m!7925484))

(declare-fun m!7925486 () Bool)

(assert (=> b!7247854 m!7925486))

(declare-fun m!7925488 () Bool)

(assert (=> b!7247855 m!7925488))

(assert (=> b!7247855 m!7925488))

(declare-fun m!7925490 () Bool)

(assert (=> b!7247855 m!7925490))

(declare-fun m!7925492 () Bool)

(assert (=> b!7247855 m!7925492))

(assert (=> b!7247855 m!7925490))

(assert (=> b!7247855 m!7925492))

(declare-fun m!7925494 () Bool)

(assert (=> b!7247855 m!7925494))

(assert (=> b!7247748 d!2252363))

(declare-fun d!2252365 () Bool)

(assert (=> d!2252365 true))

(declare-fun lambda!443573 () Int)

(declare-fun flatMap!2794 ((Set Context!15136) Int) (Set Context!15136))

(assert (=> d!2252365 (= (derivationStepZipper!3406 lt!2583565 (h!76789 s1!1971)) (flatMap!2794 lt!2583565 lambda!443573))))

(declare-fun bs!1905524 () Bool)

(assert (= bs!1905524 d!2252365))

(declare-fun m!7925496 () Bool)

(assert (=> bs!1905524 m!7925496))

(assert (=> b!7247748 d!2252365))

(declare-fun d!2252367 () Bool)

(declare-fun c!1346518 () Bool)

(assert (=> d!2252367 (= c!1346518 (isEmpty!40509 s2!1849))))

(declare-fun e!4345785 () Bool)

(assert (=> d!2252367 (= (matchZipper!3538 (set.insert ct2!328 (as set.empty (Set Context!15136))) s2!1849) e!4345785)))

(declare-fun b!7247858 () Bool)

(assert (=> b!7247858 (= e!4345785 (nullableZipper!2900 (set.insert ct2!328 (as set.empty (Set Context!15136)))))))

(declare-fun b!7247859 () Bool)

(assert (=> b!7247859 (= e!4345785 (matchZipper!3538 (derivationStepZipper!3406 (set.insert ct2!328 (as set.empty (Set Context!15136))) (head!14888 s2!1849)) (tail!14292 s2!1849)))))

(assert (= (and d!2252367 c!1346518) b!7247858))

(assert (= (and d!2252367 (not c!1346518)) b!7247859))

(declare-fun m!7925498 () Bool)

(assert (=> d!2252367 m!7925498))

(assert (=> b!7247858 m!7925270))

(declare-fun m!7925500 () Bool)

(assert (=> b!7247858 m!7925500))

(declare-fun m!7925502 () Bool)

(assert (=> b!7247859 m!7925502))

(assert (=> b!7247859 m!7925270))

(assert (=> b!7247859 m!7925502))

(declare-fun m!7925504 () Bool)

(assert (=> b!7247859 m!7925504))

(declare-fun m!7925506 () Bool)

(assert (=> b!7247859 m!7925506))

(assert (=> b!7247859 m!7925504))

(assert (=> b!7247859 m!7925506))

(declare-fun m!7925508 () Bool)

(assert (=> b!7247859 m!7925508))

(assert (=> b!7247747 d!2252367))

(declare-fun b!7247864 () Bool)

(declare-fun e!4345788 () Bool)

(declare-fun tp!2036939 () Bool)

(assert (=> b!7247864 (= e!4345788 (and tp_is_empty!46721 tp!2036939))))

(assert (=> b!7247743 (= tp!2036922 e!4345788)))

(assert (= (and b!7247743 (is-Cons!70341 (t!384517 s2!1849))) b!7247864))

(declare-fun b!7247869 () Bool)

(declare-fun e!4345791 () Bool)

(declare-fun tp!2036944 () Bool)

(declare-fun tp!2036945 () Bool)

(assert (=> b!7247869 (= e!4345791 (and tp!2036944 tp!2036945))))

(assert (=> b!7247742 (= tp!2036923 e!4345791)))

(assert (= (and b!7247742 (is-Cons!70340 (exprs!8068 ct1!232))) b!7247869))

(declare-fun b!7247870 () Bool)

(declare-fun e!4345792 () Bool)

(declare-fun tp!2036946 () Bool)

(declare-fun tp!2036947 () Bool)

(assert (=> b!7247870 (= e!4345792 (and tp!2036946 tp!2036947))))

(assert (=> b!7247741 (= tp!2036924 e!4345792)))

(assert (= (and b!7247741 (is-Cons!70340 (exprs!8068 ct2!328))) b!7247870))

(declare-fun b!7247871 () Bool)

(declare-fun e!4345793 () Bool)

(declare-fun tp!2036948 () Bool)

(assert (=> b!7247871 (= e!4345793 (and tp_is_empty!46721 tp!2036948))))

(assert (=> b!7247746 (= tp!2036921 e!4345793)))

(assert (= (and b!7247746 (is-Cons!70341 (t!384517 s1!1971))) b!7247871))

(declare-fun b_lambda!278171 () Bool)

(assert (= b_lambda!278169 (or b!7247744 b_lambda!278171)))

(declare-fun bs!1905525 () Bool)

(declare-fun d!2252369 () Bool)

(assert (= bs!1905525 (and d!2252369 b!7247744)))

(assert (=> bs!1905525 (= (dynLambda!28708 lambda!443539 lt!2583607) (matchZipper!3538 (set.insert lt!2583607 (as set.empty (Set Context!15136))) (t!384517 s1!1971)))))

(declare-fun m!7925510 () Bool)

(assert (=> bs!1905525 m!7925510))

(assert (=> bs!1905525 m!7925510))

(declare-fun m!7925512 () Bool)

(assert (=> bs!1905525 m!7925512))

(assert (=> d!2252321 d!2252369))

(push 1)

(assert (not b!7247851))

(assert (not d!2252315))

(assert (not d!2252323))

(assert (not d!2252363))

(assert (not b!7247858))

(assert (not b!7247859))

(assert (not bm!659982))

(assert (not d!2252345))

(assert (not d!2252361))

(assert (not d!2252329))

(assert (not d!2252365))

(assert (not b!7247801))

(assert (not b!7247864))

(assert (not b_lambda!278171))

(assert (not d!2252319))

(assert (not d!2252347))

(assert (not b!7247827))

(assert (not d!2252359))

(assert (not d!2252341))

(assert tp_is_empty!46721)

(assert (not b!7247869))

(assert (not b!7247814))

(assert (not b!7247855))

(assert (not d!2252321))

(assert (not d!2252343))

(assert (not b!7247829))

(assert (not b!7247836))

(assert (not d!2252353))

(assert (not b!7247790))

(assert (not b!7247852))

(assert (not b!7247871))

(assert (not d!2252349))

(assert (not d!2252333))

(assert (not b!7247837))

(assert (not b!7247853))

(assert (not b!7247791))

(assert (not bs!1905525))

(assert (not d!2252355))

(assert (not b!7247802))

(assert (not b!7247813))

(assert (not b!7247870))

(assert (not b!7247854))

(assert (not d!2252367))

(assert (not d!2252327))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2252405 () Bool)

(declare-fun c!1346541 () Bool)

(assert (=> d!2252405 (= c!1346541 (is-Nil!70341 lt!2583613))))

(declare-fun e!4345833 () (Set C!37530))

(assert (=> d!2252405 (= (content!14572 lt!2583613) e!4345833)))

(declare-fun b!7247941 () Bool)

(assert (=> b!7247941 (= e!4345833 (as set.empty (Set C!37530)))))

(declare-fun b!7247942 () Bool)

(assert (=> b!7247942 (= e!4345833 (set.union (set.insert (h!76789 lt!2583613) (as set.empty (Set C!37530))) (content!14572 (t!384517 lt!2583613))))))

(assert (= (and d!2252405 c!1346541) b!7247941))

(assert (= (and d!2252405 (not c!1346541)) b!7247942))

(declare-fun m!7925642 () Bool)

(assert (=> b!7247942 m!7925642))

(declare-fun m!7925644 () Bool)

(assert (=> b!7247942 m!7925644))

(assert (=> d!2252329 d!2252405))

(declare-fun d!2252409 () Bool)

(declare-fun c!1346542 () Bool)

(assert (=> d!2252409 (= c!1346542 (is-Nil!70341 (t!384517 s1!1971)))))

(declare-fun e!4345834 () (Set C!37530))

(assert (=> d!2252409 (= (content!14572 (t!384517 s1!1971)) e!4345834)))

(declare-fun b!7247943 () Bool)

(assert (=> b!7247943 (= e!4345834 (as set.empty (Set C!37530)))))

(declare-fun b!7247944 () Bool)

(assert (=> b!7247944 (= e!4345834 (set.union (set.insert (h!76789 (t!384517 s1!1971)) (as set.empty (Set C!37530))) (content!14572 (t!384517 (t!384517 s1!1971)))))))

(assert (= (and d!2252409 c!1346542) b!7247943))

(assert (= (and d!2252409 (not c!1346542)) b!7247944))

(declare-fun m!7925646 () Bool)

(assert (=> b!7247944 m!7925646))

(declare-fun m!7925648 () Bool)

(assert (=> b!7247944 m!7925648))

(assert (=> d!2252329 d!2252409))

(declare-fun d!2252411 () Bool)

(declare-fun c!1346543 () Bool)

(assert (=> d!2252411 (= c!1346543 (is-Nil!70341 s2!1849))))

(declare-fun e!4345835 () (Set C!37530))

(assert (=> d!2252411 (= (content!14572 s2!1849) e!4345835)))

(declare-fun b!7247945 () Bool)

(assert (=> b!7247945 (= e!4345835 (as set.empty (Set C!37530)))))

(declare-fun b!7247946 () Bool)

(assert (=> b!7247946 (= e!4345835 (set.union (set.insert (h!76789 s2!1849) (as set.empty (Set C!37530))) (content!14572 (t!384517 s2!1849))))))

(assert (= (and d!2252411 c!1346543) b!7247945))

(assert (= (and d!2252411 (not c!1346543)) b!7247946))

(declare-fun m!7925650 () Bool)

(assert (=> b!7247946 m!7925650))

(declare-fun m!7925652 () Bool)

(assert (=> b!7247946 m!7925652))

(assert (=> d!2252329 d!2252411))

(declare-fun d!2252413 () Bool)

(declare-fun c!1346544 () Bool)

(assert (=> d!2252413 (= c!1346544 (isEmpty!40509 (tail!14292 s1!1971)))))

(declare-fun e!4345836 () Bool)

(assert (=> d!2252413 (= (matchZipper!3538 (derivationStepZipper!3406 lt!2583565 (head!14888 s1!1971)) (tail!14292 s1!1971)) e!4345836)))

(declare-fun b!7247947 () Bool)

(assert (=> b!7247947 (= e!4345836 (nullableZipper!2900 (derivationStepZipper!3406 lt!2583565 (head!14888 s1!1971))))))

(declare-fun b!7247948 () Bool)

(assert (=> b!7247948 (= e!4345836 (matchZipper!3538 (derivationStepZipper!3406 (derivationStepZipper!3406 lt!2583565 (head!14888 s1!1971)) (head!14888 (tail!14292 s1!1971))) (tail!14292 (tail!14292 s1!1971))))))

(assert (= (and d!2252413 c!1346544) b!7247947))

(assert (= (and d!2252413 (not c!1346544)) b!7247948))

(assert (=> d!2252413 m!7925476))

(declare-fun m!7925654 () Bool)

(assert (=> d!2252413 m!7925654))

(assert (=> b!7247947 m!7925474))

(declare-fun m!7925656 () Bool)

(assert (=> b!7247947 m!7925656))

(assert (=> b!7247948 m!7925476))

(declare-fun m!7925658 () Bool)

(assert (=> b!7247948 m!7925658))

(assert (=> b!7247948 m!7925474))

(assert (=> b!7247948 m!7925658))

(declare-fun m!7925660 () Bool)

(assert (=> b!7247948 m!7925660))

(assert (=> b!7247948 m!7925476))

(declare-fun m!7925662 () Bool)

(assert (=> b!7247948 m!7925662))

(assert (=> b!7247948 m!7925660))

(assert (=> b!7247948 m!7925662))

(declare-fun m!7925664 () Bool)

(assert (=> b!7247948 m!7925664))

(assert (=> b!7247853 d!2252413))

(declare-fun bs!1905547 () Bool)

(declare-fun d!2252415 () Bool)

(assert (= bs!1905547 (and d!2252415 d!2252365)))

(declare-fun lambda!443588 () Int)

(assert (=> bs!1905547 (= (= (head!14888 s1!1971) (h!76789 s1!1971)) (= lambda!443588 lambda!443573))))

(assert (=> d!2252415 true))

(assert (=> d!2252415 (= (derivationStepZipper!3406 lt!2583565 (head!14888 s1!1971)) (flatMap!2794 lt!2583565 lambda!443588))))

(declare-fun bs!1905548 () Bool)

(assert (= bs!1905548 d!2252415))

(declare-fun m!7925666 () Bool)

(assert (=> bs!1905548 m!7925666))

(assert (=> b!7247853 d!2252415))

(declare-fun d!2252417 () Bool)

(assert (=> d!2252417 (= (head!14888 s1!1971) (h!76789 s1!1971))))

(assert (=> b!7247853 d!2252417))

(declare-fun d!2252419 () Bool)

(assert (=> d!2252419 (= (tail!14292 s1!1971) (t!384517 s1!1971))))

(assert (=> b!7247853 d!2252419))

(declare-fun bs!1905549 () Bool)

(declare-fun d!2252421 () Bool)

(assert (= bs!1905549 (and d!2252421 b!7247744)))

(declare-fun lambda!443591 () Int)

(assert (=> bs!1905549 (not (= lambda!443591 lambda!443539))))

(declare-fun bs!1905550 () Bool)

(assert (= bs!1905550 (and d!2252421 d!2252347)))

(assert (=> bs!1905550 (not (= lambda!443591 lambda!443565))))

(declare-fun bs!1905551 () Bool)

(assert (= bs!1905551 (and d!2252421 d!2252349)))

(assert (=> bs!1905551 (not (= lambda!443591 lambda!443568))))

(assert (=> d!2252421 (= (nullableZipper!2900 lt!2583565) (exists!4334 lt!2583565 lambda!443591))))

(declare-fun bs!1905552 () Bool)

(assert (= bs!1905552 d!2252421))

(declare-fun m!7925668 () Bool)

(assert (=> bs!1905552 m!7925668))

(assert (=> b!7247852 d!2252421))

(declare-fun d!2252423 () Bool)

(declare-fun lt!2583659 () Int)

(assert (=> d!2252423 (>= lt!2583659 0)))

(declare-fun e!4345839 () Int)

(assert (=> d!2252423 (= lt!2583659 e!4345839)))

(declare-fun c!1346549 () Bool)

(assert (=> d!2252423 (= c!1346549 (is-Nil!70341 lt!2583613))))

(assert (=> d!2252423 (= (size!41690 lt!2583613) lt!2583659)))

(declare-fun b!7247953 () Bool)

(assert (=> b!7247953 (= e!4345839 0)))

(declare-fun b!7247954 () Bool)

(assert (=> b!7247954 (= e!4345839 (+ 1 (size!41690 (t!384517 lt!2583613))))))

(assert (= (and d!2252423 c!1346549) b!7247953))

(assert (= (and d!2252423 (not c!1346549)) b!7247954))

(declare-fun m!7925670 () Bool)

(assert (=> b!7247954 m!7925670))

(assert (=> b!7247802 d!2252423))

(declare-fun d!2252425 () Bool)

(declare-fun lt!2583660 () Int)

(assert (=> d!2252425 (>= lt!2583660 0)))

(declare-fun e!4345840 () Int)

(assert (=> d!2252425 (= lt!2583660 e!4345840)))

(declare-fun c!1346550 () Bool)

(assert (=> d!2252425 (= c!1346550 (is-Nil!70341 (t!384517 s1!1971)))))

(assert (=> d!2252425 (= (size!41690 (t!384517 s1!1971)) lt!2583660)))

(declare-fun b!7247955 () Bool)

(assert (=> b!7247955 (= e!4345840 0)))

(declare-fun b!7247956 () Bool)

(assert (=> b!7247956 (= e!4345840 (+ 1 (size!41690 (t!384517 (t!384517 s1!1971)))))))

(assert (= (and d!2252425 c!1346550) b!7247955))

(assert (= (and d!2252425 (not c!1346550)) b!7247956))

(declare-fun m!7925672 () Bool)

(assert (=> b!7247956 m!7925672))

(assert (=> b!7247802 d!2252425))

(declare-fun d!2252427 () Bool)

(declare-fun lt!2583661 () Int)

(assert (=> d!2252427 (>= lt!2583661 0)))

(declare-fun e!4345841 () Int)

(assert (=> d!2252427 (= lt!2583661 e!4345841)))

(declare-fun c!1346551 () Bool)

(assert (=> d!2252427 (= c!1346551 (is-Nil!70341 s2!1849))))

(assert (=> d!2252427 (= (size!41690 s2!1849) lt!2583661)))

(declare-fun b!7247957 () Bool)

(assert (=> b!7247957 (= e!4345841 0)))

(declare-fun b!7247958 () Bool)

(assert (=> b!7247958 (= e!4345841 (+ 1 (size!41690 (t!384517 s2!1849))))))

(assert (= (and d!2252427 c!1346551) b!7247957))

(assert (= (and d!2252427 (not c!1346551)) b!7247958))

(declare-fun m!7925674 () Bool)

(assert (=> b!7247958 m!7925674))

(assert (=> b!7247802 d!2252427))

(declare-fun d!2252429 () Bool)

(declare-fun e!4345842 () Bool)

(assert (=> d!2252429 e!4345842))

(declare-fun res!2939866 () Bool)

(assert (=> d!2252429 (=> (not res!2939866) (not e!4345842))))

(declare-fun lt!2583662 () List!70465)

(assert (=> d!2252429 (= res!2939866 (= (content!14572 lt!2583662) (set.union (content!14572 (t!384517 (t!384517 s1!1971))) (content!14572 s2!1849))))))

(declare-fun e!4345843 () List!70465)

(assert (=> d!2252429 (= lt!2583662 e!4345843)))

(declare-fun c!1346552 () Bool)

(assert (=> d!2252429 (= c!1346552 (is-Nil!70341 (t!384517 (t!384517 s1!1971))))))

(assert (=> d!2252429 (= (++!16519 (t!384517 (t!384517 s1!1971)) s2!1849) lt!2583662)))

(declare-fun b!7247962 () Bool)

(assert (=> b!7247962 (= e!4345842 (or (not (= s2!1849 Nil!70341)) (= lt!2583662 (t!384517 (t!384517 s1!1971)))))))

(declare-fun b!7247959 () Bool)

(assert (=> b!7247959 (= e!4345843 s2!1849)))

(declare-fun b!7247960 () Bool)

(assert (=> b!7247960 (= e!4345843 (Cons!70341 (h!76789 (t!384517 (t!384517 s1!1971))) (++!16519 (t!384517 (t!384517 (t!384517 s1!1971))) s2!1849)))))

(declare-fun b!7247961 () Bool)

(declare-fun res!2939865 () Bool)

(assert (=> b!7247961 (=> (not res!2939865) (not e!4345842))))

(assert (=> b!7247961 (= res!2939865 (= (size!41690 lt!2583662) (+ (size!41690 (t!384517 (t!384517 s1!1971))) (size!41690 s2!1849))))))

(assert (= (and d!2252429 c!1346552) b!7247959))

(assert (= (and d!2252429 (not c!1346552)) b!7247960))

(assert (= (and d!2252429 res!2939866) b!7247961))

(assert (= (and b!7247961 res!2939865) b!7247962))

(declare-fun m!7925676 () Bool)

(assert (=> d!2252429 m!7925676))

(assert (=> d!2252429 m!7925648))

(assert (=> d!2252429 m!7925380))

(declare-fun m!7925678 () Bool)

(assert (=> b!7247960 m!7925678))

(declare-fun m!7925680 () Bool)

(assert (=> b!7247961 m!7925680))

(assert (=> b!7247961 m!7925672))

(assert (=> b!7247961 m!7925388))

(assert (=> b!7247801 d!2252429))

(declare-fun d!2252431 () Bool)

(declare-fun lt!2583665 () Int)

(assert (=> d!2252431 (>= lt!2583665 0)))

(declare-fun e!4345846 () Int)

(assert (=> d!2252431 (= lt!2583665 e!4345846)))

(declare-fun c!1346555 () Bool)

(assert (=> d!2252431 (= c!1346555 (is-Nil!70340 lt!2583619))))

(assert (=> d!2252431 (= (size!41691 lt!2583619) lt!2583665)))

(declare-fun b!7247967 () Bool)

(assert (=> b!7247967 (= e!4345846 0)))

(declare-fun b!7247968 () Bool)

(assert (=> b!7247968 (= e!4345846 (+ 1 (size!41691 (t!384516 lt!2583619))))))

(assert (= (and d!2252431 c!1346555) b!7247967))

(assert (= (and d!2252431 (not c!1346555)) b!7247968))

(declare-fun m!7925682 () Bool)

(assert (=> b!7247968 m!7925682))

(assert (=> b!7247837 d!2252431))

(declare-fun d!2252433 () Bool)

(declare-fun lt!2583666 () Int)

(assert (=> d!2252433 (>= lt!2583666 0)))

(declare-fun e!4345847 () Int)

(assert (=> d!2252433 (= lt!2583666 e!4345847)))

(declare-fun c!1346556 () Bool)

(assert (=> d!2252433 (= c!1346556 (is-Nil!70340 (exprs!8068 ct1!232)))))

(assert (=> d!2252433 (= (size!41691 (exprs!8068 ct1!232)) lt!2583666)))

(declare-fun b!7247969 () Bool)

(assert (=> b!7247969 (= e!4345847 0)))

(declare-fun b!7247970 () Bool)

(assert (=> b!7247970 (= e!4345847 (+ 1 (size!41691 (t!384516 (exprs!8068 ct1!232)))))))

(assert (= (and d!2252433 c!1346556) b!7247969))

(assert (= (and d!2252433 (not c!1346556)) b!7247970))

(declare-fun m!7925684 () Bool)

(assert (=> b!7247970 m!7925684))

(assert (=> b!7247837 d!2252433))

(declare-fun d!2252435 () Bool)

(declare-fun lt!2583667 () Int)

(assert (=> d!2252435 (>= lt!2583667 0)))

(declare-fun e!4345848 () Int)

(assert (=> d!2252435 (= lt!2583667 e!4345848)))

(declare-fun c!1346557 () Bool)

(assert (=> d!2252435 (= c!1346557 (is-Nil!70340 (exprs!8068 ct2!328)))))

(assert (=> d!2252435 (= (size!41691 (exprs!8068 ct2!328)) lt!2583667)))

(declare-fun b!7247971 () Bool)

(assert (=> b!7247971 (= e!4345848 0)))

(declare-fun b!7247972 () Bool)

(assert (=> b!7247972 (= e!4345848 (+ 1 (size!41691 (t!384516 (exprs!8068 ct2!328)))))))

(assert (= (and d!2252435 c!1346557) b!7247971))

(assert (= (and d!2252435 (not c!1346557)) b!7247972))

(declare-fun m!7925686 () Bool)

(assert (=> b!7247972 m!7925686))

(assert (=> b!7247837 d!2252435))

(declare-fun d!2252437 () Bool)

(declare-fun c!1346558 () Bool)

(assert (=> d!2252437 (= c!1346558 (isEmpty!40509 (tail!14292 (++!16519 (t!384517 s1!1971) s2!1849))))))

(declare-fun e!4345849 () Bool)

(assert (=> d!2252437 (= (matchZipper!3538 (derivationStepZipper!3406 (set.insert (Context!15137 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328))) (as set.empty (Set Context!15136))) (head!14888 (++!16519 (t!384517 s1!1971) s2!1849))) (tail!14292 (++!16519 (t!384517 s1!1971) s2!1849))) e!4345849)))

(declare-fun b!7247973 () Bool)

(assert (=> b!7247973 (= e!4345849 (nullableZipper!2900 (derivationStepZipper!3406 (set.insert (Context!15137 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328))) (as set.empty (Set Context!15136))) (head!14888 (++!16519 (t!384517 s1!1971) s2!1849)))))))

(declare-fun b!7247974 () Bool)

(assert (=> b!7247974 (= e!4345849 (matchZipper!3538 (derivationStepZipper!3406 (derivationStepZipper!3406 (set.insert (Context!15137 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328))) (as set.empty (Set Context!15136))) (head!14888 (++!16519 (t!384517 s1!1971) s2!1849))) (head!14888 (tail!14292 (++!16519 (t!384517 s1!1971) s2!1849)))) (tail!14292 (tail!14292 (++!16519 (t!384517 s1!1971) s2!1849)))))))

(assert (= (and d!2252437 c!1346558) b!7247973))

(assert (= (and d!2252437 (not c!1346558)) b!7247974))

(assert (=> d!2252437 m!7925366))

(declare-fun m!7925688 () Bool)

(assert (=> d!2252437 m!7925688))

(assert (=> b!7247973 m!7925364))

(declare-fun m!7925690 () Bool)

(assert (=> b!7247973 m!7925690))

(assert (=> b!7247974 m!7925366))

(declare-fun m!7925692 () Bool)

(assert (=> b!7247974 m!7925692))

(assert (=> b!7247974 m!7925364))

(assert (=> b!7247974 m!7925692))

(declare-fun m!7925694 () Bool)

(assert (=> b!7247974 m!7925694))

(assert (=> b!7247974 m!7925366))

(declare-fun m!7925696 () Bool)

(assert (=> b!7247974 m!7925696))

(assert (=> b!7247974 m!7925694))

(assert (=> b!7247974 m!7925696))

(declare-fun m!7925698 () Bool)

(assert (=> b!7247974 m!7925698))

(assert (=> b!7247791 d!2252437))

(declare-fun bs!1905553 () Bool)

(declare-fun d!2252439 () Bool)

(assert (= bs!1905553 (and d!2252439 d!2252365)))

(declare-fun lambda!443592 () Int)

(assert (=> bs!1905553 (= (= (head!14888 (++!16519 (t!384517 s1!1971) s2!1849)) (h!76789 s1!1971)) (= lambda!443592 lambda!443573))))

(declare-fun bs!1905554 () Bool)

(assert (= bs!1905554 (and d!2252439 d!2252415)))

(assert (=> bs!1905554 (= (= (head!14888 (++!16519 (t!384517 s1!1971) s2!1849)) (head!14888 s1!1971)) (= lambda!443592 lambda!443588))))

(assert (=> d!2252439 true))

(assert (=> d!2252439 (= (derivationStepZipper!3406 (set.insert (Context!15137 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328))) (as set.empty (Set Context!15136))) (head!14888 (++!16519 (t!384517 s1!1971) s2!1849))) (flatMap!2794 (set.insert (Context!15137 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328))) (as set.empty (Set Context!15136))) lambda!443592))))

(declare-fun bs!1905555 () Bool)

(assert (= bs!1905555 d!2252439))

(assert (=> bs!1905555 m!7925286))

(declare-fun m!7925700 () Bool)

(assert (=> bs!1905555 m!7925700))

(assert (=> b!7247791 d!2252439))

(declare-fun d!2252441 () Bool)

(assert (=> d!2252441 (= (head!14888 (++!16519 (t!384517 s1!1971) s2!1849)) (h!76789 (++!16519 (t!384517 s1!1971) s2!1849)))))

(assert (=> b!7247791 d!2252441))

(declare-fun d!2252443 () Bool)

(assert (=> d!2252443 (= (tail!14292 (++!16519 (t!384517 s1!1971) s2!1849)) (t!384517 (++!16519 (t!384517 s1!1971) s2!1849)))))

(assert (=> b!7247791 d!2252443))

(declare-fun d!2252445 () Bool)

(declare-fun res!2939871 () Bool)

(declare-fun e!4345854 () Bool)

(assert (=> d!2252445 (=> res!2939871 e!4345854)))

(assert (=> d!2252445 (= res!2939871 (is-Nil!70340 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328))))))

(assert (=> d!2252445 (= (forall!17467 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328)) lambda!443538) e!4345854)))

(declare-fun b!7247979 () Bool)

(declare-fun e!4345855 () Bool)

(assert (=> b!7247979 (= e!4345854 e!4345855)))

(declare-fun res!2939872 () Bool)

(assert (=> b!7247979 (=> (not res!2939872) (not e!4345855))))

(declare-fun dynLambda!28712 (Int Regex!18628) Bool)

(assert (=> b!7247979 (= res!2939872 (dynLambda!28712 lambda!443538 (h!76788 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328)))))))

(declare-fun b!7247980 () Bool)

(assert (=> b!7247980 (= e!4345855 (forall!17467 (t!384516 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328))) lambda!443538))))

(assert (= (and d!2252445 (not res!2939871)) b!7247979))

(assert (= (and b!7247979 res!2939872) b!7247980))

(declare-fun b_lambda!278177 () Bool)

(assert (=> (not b_lambda!278177) (not b!7247979)))

(declare-fun m!7925702 () Bool)

(assert (=> b!7247979 m!7925702))

(declare-fun m!7925704 () Bool)

(assert (=> b!7247980 m!7925704))

(assert (=> d!2252327 d!2252445))

(assert (=> d!2252327 d!2252333))

(declare-fun d!2252447 () Bool)

(assert (=> d!2252447 (forall!17467 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328)) lambda!443538)))

(assert (=> d!2252447 true))

(declare-fun _$78!748 () Unit!163839)

(assert (=> d!2252447 (= (choose!55945 (exprs!8068 lt!2583556) (exprs!8068 ct2!328) lambda!443538) _$78!748)))

(declare-fun bs!1905556 () Bool)

(assert (= bs!1905556 d!2252447))

(assert (=> bs!1905556 m!7925280))

(assert (=> bs!1905556 m!7925280))

(assert (=> bs!1905556 m!7925370))

(assert (=> d!2252327 d!2252447))

(declare-fun d!2252449 () Bool)

(declare-fun res!2939873 () Bool)

(declare-fun e!4345856 () Bool)

(assert (=> d!2252449 (=> res!2939873 e!4345856)))

(assert (=> d!2252449 (= res!2939873 (is-Nil!70340 (exprs!8068 lt!2583556)))))

(assert (=> d!2252449 (= (forall!17467 (exprs!8068 lt!2583556) lambda!443538) e!4345856)))

(declare-fun b!7247981 () Bool)

(declare-fun e!4345857 () Bool)

(assert (=> b!7247981 (= e!4345856 e!4345857)))

(declare-fun res!2939874 () Bool)

(assert (=> b!7247981 (=> (not res!2939874) (not e!4345857))))

(assert (=> b!7247981 (= res!2939874 (dynLambda!28712 lambda!443538 (h!76788 (exprs!8068 lt!2583556))))))

(declare-fun b!7247982 () Bool)

(assert (=> b!7247982 (= e!4345857 (forall!17467 (t!384516 (exprs!8068 lt!2583556)) lambda!443538))))

(assert (= (and d!2252449 (not res!2939873)) b!7247981))

(assert (= (and b!7247981 res!2939874) b!7247982))

(declare-fun b_lambda!278179 () Bool)

(assert (=> (not b_lambda!278179) (not b!7247981)))

(declare-fun m!7925706 () Bool)

(assert (=> b!7247981 m!7925706))

(declare-fun m!7925708 () Bool)

(assert (=> b!7247982 m!7925708))

(assert (=> d!2252327 d!2252449))

(declare-fun b!7247983 () Bool)

(declare-fun e!4345859 () List!70464)

(assert (=> b!7247983 (= e!4345859 (exprs!8068 ct2!328))))

(declare-fun b!7247985 () Bool)

(declare-fun res!2939876 () Bool)

(declare-fun e!4345858 () Bool)

(assert (=> b!7247985 (=> (not res!2939876) (not e!4345858))))

(declare-fun lt!2583668 () List!70464)

(assert (=> b!7247985 (= res!2939876 (= (size!41691 lt!2583668) (+ (size!41691 (t!384516 (exprs!8068 ct1!232))) (size!41691 (exprs!8068 ct2!328)))))))

(declare-fun b!7247986 () Bool)

(assert (=> b!7247986 (= e!4345858 (or (not (= (exprs!8068 ct2!328) Nil!70340)) (= lt!2583668 (t!384516 (exprs!8068 ct1!232)))))))

(declare-fun d!2252451 () Bool)

(assert (=> d!2252451 e!4345858))

(declare-fun res!2939875 () Bool)

(assert (=> d!2252451 (=> (not res!2939875) (not e!4345858))))

(assert (=> d!2252451 (= res!2939875 (= (content!14573 lt!2583668) (set.union (content!14573 (t!384516 (exprs!8068 ct1!232))) (content!14573 (exprs!8068 ct2!328)))))))

(assert (=> d!2252451 (= lt!2583668 e!4345859)))

(declare-fun c!1346559 () Bool)

(assert (=> d!2252451 (= c!1346559 (is-Nil!70340 (t!384516 (exprs!8068 ct1!232))))))

(assert (=> d!2252451 (= (++!16518 (t!384516 (exprs!8068 ct1!232)) (exprs!8068 ct2!328)) lt!2583668)))

(declare-fun b!7247984 () Bool)

(assert (=> b!7247984 (= e!4345859 (Cons!70340 (h!76788 (t!384516 (exprs!8068 ct1!232))) (++!16518 (t!384516 (t!384516 (exprs!8068 ct1!232))) (exprs!8068 ct2!328))))))

(assert (= (and d!2252451 c!1346559) b!7247983))

(assert (= (and d!2252451 (not c!1346559)) b!7247984))

(assert (= (and d!2252451 res!2939875) b!7247985))

(assert (= (and b!7247985 res!2939876) b!7247986))

(declare-fun m!7925710 () Bool)

(assert (=> b!7247985 m!7925710))

(assert (=> b!7247985 m!7925684))

(assert (=> b!7247985 m!7925396))

(declare-fun m!7925712 () Bool)

(assert (=> d!2252451 m!7925712))

(declare-fun m!7925714 () Bool)

(assert (=> d!2252451 m!7925714))

(assert (=> d!2252451 m!7925402))

(declare-fun m!7925716 () Bool)

(assert (=> b!7247984 m!7925716))

(assert (=> b!7247836 d!2252451))

(declare-fun bs!1905557 () Bool)

(declare-fun d!2252453 () Bool)

(assert (= bs!1905557 (and d!2252453 b!7247744)))

(declare-fun lambda!443593 () Int)

(assert (=> bs!1905557 (not (= lambda!443593 lambda!443539))))

(declare-fun bs!1905558 () Bool)

(assert (= bs!1905558 (and d!2252453 d!2252347)))

(assert (=> bs!1905558 (not (= lambda!443593 lambda!443565))))

(declare-fun bs!1905559 () Bool)

(assert (= bs!1905559 (and d!2252453 d!2252349)))

(assert (=> bs!1905559 (not (= lambda!443593 lambda!443568))))

(declare-fun bs!1905560 () Bool)

(assert (= bs!1905560 (and d!2252453 d!2252421)))

(assert (=> bs!1905560 (= lambda!443593 lambda!443591)))

(assert (=> d!2252453 (= (nullableZipper!2900 (set.insert (Context!15137 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328))) (as set.empty (Set Context!15136)))) (exists!4334 (set.insert (Context!15137 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328))) (as set.empty (Set Context!15136))) lambda!443593))))

(declare-fun bs!1905561 () Bool)

(assert (= bs!1905561 d!2252453))

(assert (=> bs!1905561 m!7925286))

(declare-fun m!7925718 () Bool)

(assert (=> bs!1905561 m!7925718))

(assert (=> b!7247790 d!2252453))

(declare-fun d!2252455 () Bool)

(declare-fun res!2939877 () Bool)

(declare-fun e!4345860 () Bool)

(assert (=> d!2252455 (=> res!2939877 e!4345860)))

(assert (=> d!2252455 (= res!2939877 (is-Nil!70340 (exprs!8068 ct2!328)))))

(assert (=> d!2252455 (= (forall!17467 (exprs!8068 ct2!328) lambda!443570) e!4345860)))

(declare-fun b!7247987 () Bool)

(declare-fun e!4345861 () Bool)

(assert (=> b!7247987 (= e!4345860 e!4345861)))

(declare-fun res!2939878 () Bool)

(assert (=> b!7247987 (=> (not res!2939878) (not e!4345861))))

(assert (=> b!7247987 (= res!2939878 (dynLambda!28712 lambda!443570 (h!76788 (exprs!8068 ct2!328))))))

(declare-fun b!7247988 () Bool)

(assert (=> b!7247988 (= e!4345861 (forall!17467 (t!384516 (exprs!8068 ct2!328)) lambda!443570))))

(assert (= (and d!2252455 (not res!2939877)) b!7247987))

(assert (= (and b!7247987 res!2939878) b!7247988))

(declare-fun b_lambda!278181 () Bool)

(assert (=> (not b_lambda!278181) (not b!7247987)))

(declare-fun m!7925720 () Bool)

(assert (=> b!7247987 m!7925720))

(declare-fun m!7925722 () Bool)

(assert (=> b!7247988 m!7925722))

(assert (=> d!2252361 d!2252455))

(declare-fun d!2252457 () Bool)

(assert (=> d!2252457 (= (isEmpty!40509 (++!16519 (t!384517 s1!1971) s2!1849)) (is-Nil!70341 (++!16519 (t!384517 s1!1971) s2!1849)))))

(assert (=> d!2252323 d!2252457))

(declare-fun d!2252459 () Bool)

(assert (=> d!2252459 (forall!17467 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328)) lambda!443559)))

(declare-fun lt!2583669 () Unit!163839)

(assert (=> d!2252459 (= lt!2583669 (choose!55945 (exprs!8068 lt!2583556) (exprs!8068 ct2!328) lambda!443559))))

(assert (=> d!2252459 (forall!17467 (exprs!8068 lt!2583556) lambda!443559)))

(assert (=> d!2252459 (= (lemmaConcatPreservesForall!1435 (exprs!8068 lt!2583556) (exprs!8068 ct2!328) lambda!443559) lt!2583669)))

(declare-fun bs!1905562 () Bool)

(assert (= bs!1905562 d!2252459))

(assert (=> bs!1905562 m!7925280))

(assert (=> bs!1905562 m!7925280))

(declare-fun m!7925724 () Bool)

(assert (=> bs!1905562 m!7925724))

(declare-fun m!7925726 () Bool)

(assert (=> bs!1905562 m!7925726))

(declare-fun m!7925728 () Bool)

(assert (=> bs!1905562 m!7925728))

(assert (=> d!2252319 d!2252459))

(assert (=> d!2252319 d!2252323))

(assert (=> d!2252319 d!2252329))

(declare-fun bs!1905563 () Bool)

(declare-fun d!2252461 () Bool)

(assert (= bs!1905563 (and d!2252461 d!2252315)))

(declare-fun lambda!443596 () Int)

(assert (=> bs!1905563 (= lambda!443596 lambda!443556)))

(declare-fun bs!1905564 () Bool)

(assert (= bs!1905564 (and d!2252461 d!2252361)))

(assert (=> bs!1905564 (= lambda!443596 lambda!443570)))

(declare-fun bs!1905565 () Bool)

(assert (= bs!1905565 (and d!2252461 d!2252359)))

(assert (=> bs!1905565 (= lambda!443596 lambda!443569)))

(declare-fun bs!1905566 () Bool)

(assert (= bs!1905566 (and d!2252461 d!2252319)))

(assert (=> bs!1905566 (= lambda!443596 lambda!443559)))

(declare-fun bs!1905567 () Bool)

(assert (= bs!1905567 (and d!2252461 b!7247739)))

(assert (=> bs!1905567 (= lambda!443596 lambda!443538)))

(assert (=> d!2252461 (matchZipper!3538 (set.insert (Context!15137 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328))) (as set.empty (Set Context!15136))) (++!16519 (t!384517 s1!1971) s2!1849))))

(declare-fun lt!2583672 () Unit!163839)

(assert (=> d!2252461 (= lt!2583672 (lemmaConcatPreservesForall!1435 (exprs!8068 lt!2583556) (exprs!8068 ct2!328) lambda!443596))))

(assert (=> d!2252461 true))

(declare-fun _$56!494 () Unit!163839)

(assert (=> d!2252461 (= (choose!55944 lt!2583556 ct2!328 (t!384517 s1!1971) s2!1849) _$56!494)))

(declare-fun bs!1905568 () Bool)

(assert (= bs!1905568 d!2252461))

(assert (=> bs!1905568 m!7925280))

(assert (=> bs!1905568 m!7925286))

(assert (=> bs!1905568 m!7925278))

(assert (=> bs!1905568 m!7925288))

(assert (=> bs!1905568 m!7925286))

(declare-fun m!7925730 () Bool)

(assert (=> bs!1905568 m!7925730))

(assert (=> bs!1905568 m!7925278))

(assert (=> d!2252319 d!2252461))

(assert (=> d!2252319 d!2252333))

(declare-fun d!2252463 () Bool)

(declare-fun c!1346560 () Bool)

(assert (=> d!2252463 (= c!1346560 (isEmpty!40509 (t!384517 s1!1971)))))

(declare-fun e!4345862 () Bool)

(assert (=> d!2252463 (= (matchZipper!3538 (set.insert lt!2583556 (as set.empty (Set Context!15136))) (t!384517 s1!1971)) e!4345862)))

(declare-fun b!7247989 () Bool)

(assert (=> b!7247989 (= e!4345862 (nullableZipper!2900 (set.insert lt!2583556 (as set.empty (Set Context!15136)))))))

(declare-fun b!7247990 () Bool)

(assert (=> b!7247990 (= e!4345862 (matchZipper!3538 (derivationStepZipper!3406 (set.insert lt!2583556 (as set.empty (Set Context!15136))) (head!14888 (t!384517 s1!1971))) (tail!14292 (t!384517 s1!1971))))))

(assert (= (and d!2252463 c!1346560) b!7247989))

(assert (= (and d!2252463 (not c!1346560)) b!7247990))

(assert (=> d!2252463 m!7925484))

(assert (=> b!7247989 m!7925344))

(declare-fun m!7925732 () Bool)

(assert (=> b!7247989 m!7925732))

(assert (=> b!7247990 m!7925488))

(assert (=> b!7247990 m!7925344))

(assert (=> b!7247990 m!7925488))

(declare-fun m!7925734 () Bool)

(assert (=> b!7247990 m!7925734))

(assert (=> b!7247990 m!7925492))

(assert (=> b!7247990 m!7925734))

(assert (=> b!7247990 m!7925492))

(declare-fun m!7925736 () Bool)

(assert (=> b!7247990 m!7925736))

(assert (=> d!2252319 d!2252463))

(declare-fun d!2252465 () Bool)

(declare-fun c!1346563 () Bool)

(assert (=> d!2252465 (= c!1346563 (is-Nil!70342 lt!2583633))))

(declare-fun e!4345865 () (Set Context!15136))

(assert (=> d!2252465 (= (content!14574 lt!2583633) e!4345865)))

(declare-fun b!7247995 () Bool)

(assert (=> b!7247995 (= e!4345865 (as set.empty (Set Context!15136)))))

(declare-fun b!7247996 () Bool)

(assert (=> b!7247996 (= e!4345865 (set.union (set.insert (h!76790 lt!2583633) (as set.empty (Set Context!15136))) (content!14574 (t!384518 lt!2583633))))))

(assert (= (and d!2252465 c!1346563) b!7247995))

(assert (= (and d!2252465 (not c!1346563)) b!7247996))

(declare-fun m!7925738 () Bool)

(assert (=> b!7247996 m!7925738))

(declare-fun m!7925740 () Bool)

(assert (=> b!7247996 m!7925740))

(assert (=> b!7247851 d!2252465))

(declare-fun d!2252467 () Bool)

(declare-fun res!2939883 () Bool)

(declare-fun e!4345870 () Bool)

(assert (=> d!2252467 (=> res!2939883 e!4345870)))

(assert (=> d!2252467 (= res!2939883 (is-Nil!70342 lt!2583633))))

(assert (=> d!2252467 (= (noDuplicate!2978 lt!2583633) e!4345870)))

(declare-fun b!7248001 () Bool)

(declare-fun e!4345871 () Bool)

(assert (=> b!7248001 (= e!4345870 e!4345871)))

(declare-fun res!2939884 () Bool)

(assert (=> b!7248001 (=> (not res!2939884) (not e!4345871))))

(declare-fun contains!20740 (List!70466 Context!15136) Bool)

(assert (=> b!7248001 (= res!2939884 (not (contains!20740 (t!384518 lt!2583633) (h!76790 lt!2583633))))))

(declare-fun b!7248002 () Bool)

(assert (=> b!7248002 (= e!4345871 (noDuplicate!2978 (t!384518 lt!2583633)))))

(assert (= (and d!2252467 (not res!2939883)) b!7248001))

(assert (= (and b!7248001 res!2939884) b!7248002))

(declare-fun m!7925742 () Bool)

(assert (=> b!7248001 m!7925742))

(declare-fun m!7925744 () Bool)

(assert (=> b!7248002 m!7925744))

(assert (=> d!2252353 d!2252467))

(declare-fun d!2252469 () Bool)

(declare-fun e!4345880 () Bool)

(assert (=> d!2252469 e!4345880))

(declare-fun res!2939889 () Bool)

(assert (=> d!2252469 (=> (not res!2939889) (not e!4345880))))

(declare-fun res!2939890 () List!70466)

(assert (=> d!2252469 (= res!2939889 (noDuplicate!2978 res!2939890))))

(declare-fun e!4345878 () Bool)

(assert (=> d!2252469 e!4345878))

(assert (=> d!2252469 (= (choose!55948 lt!2583560) res!2939890)))

(declare-fun b!7248010 () Bool)

(declare-fun e!4345879 () Bool)

(declare-fun tp!2036965 () Bool)

(assert (=> b!7248010 (= e!4345879 tp!2036965)))

(declare-fun b!7248009 () Bool)

(declare-fun tp!2036966 () Bool)

(assert (=> b!7248009 (= e!4345878 (and (inv!89581 (h!76790 res!2939890)) e!4345879 tp!2036966))))

(declare-fun b!7248011 () Bool)

(assert (=> b!7248011 (= e!4345880 (= (content!14574 res!2939890) lt!2583560))))

(assert (= b!7248009 b!7248010))

(assert (= (and d!2252469 (is-Cons!70342 res!2939890)) b!7248009))

(assert (= (and d!2252469 res!2939889) b!7248011))

(declare-fun m!7925746 () Bool)

(assert (=> d!2252469 m!7925746))

(declare-fun m!7925748 () Bool)

(assert (=> b!7248009 m!7925748))

(declare-fun m!7925750 () Bool)

(assert (=> b!7248011 m!7925750))

(assert (=> d!2252353 d!2252469))

(declare-fun d!2252471 () Bool)

(declare-fun res!2939895 () Bool)

(declare-fun e!4345885 () Bool)

(assert (=> d!2252471 (=> res!2939895 e!4345885)))

(assert (=> d!2252471 (= res!2939895 (is-Nil!70342 lt!2583562))))

(assert (=> d!2252471 (= (forall!17468 lt!2583562 lambda!443565) e!4345885)))

(declare-fun b!7248016 () Bool)

(declare-fun e!4345886 () Bool)

(assert (=> b!7248016 (= e!4345885 e!4345886)))

(declare-fun res!2939896 () Bool)

(assert (=> b!7248016 (=> (not res!2939896) (not e!4345886))))

(assert (=> b!7248016 (= res!2939896 (dynLambda!28708 lambda!443565 (h!76790 lt!2583562)))))

(declare-fun b!7248017 () Bool)

(assert (=> b!7248017 (= e!4345886 (forall!17468 (t!384518 lt!2583562) lambda!443565))))

(assert (= (and d!2252471 (not res!2939895)) b!7248016))

(assert (= (and b!7248016 res!2939896) b!7248017))

(declare-fun b_lambda!278183 () Bool)

(assert (=> (not b_lambda!278183) (not b!7248016)))

(declare-fun m!7925752 () Bool)

(assert (=> b!7248016 m!7925752))

(declare-fun m!7925754 () Bool)

(assert (=> b!7248017 m!7925754))

(assert (=> d!2252347 d!2252471))

(declare-fun d!2252473 () Bool)

(declare-fun res!2939897 () Bool)

(declare-fun e!4345887 () Bool)

(assert (=> d!2252473 (=> res!2939897 e!4345887)))

(assert (=> d!2252473 (= res!2939897 (is-Nil!70340 (exprs!8068 (Context!15137 (tail!14290 (exprs!8068 ct1!232))))))))

(assert (=> d!2252473 (= (forall!17467 (exprs!8068 (Context!15137 (tail!14290 (exprs!8068 ct1!232)))) lambda!443556) e!4345887)))

(declare-fun b!7248018 () Bool)

(declare-fun e!4345888 () Bool)

(assert (=> b!7248018 (= e!4345887 e!4345888)))

(declare-fun res!2939898 () Bool)

(assert (=> b!7248018 (=> (not res!2939898) (not e!4345888))))

(assert (=> b!7248018 (= res!2939898 (dynLambda!28712 lambda!443556 (h!76788 (exprs!8068 (Context!15137 (tail!14290 (exprs!8068 ct1!232)))))))))

(declare-fun b!7248019 () Bool)

(assert (=> b!7248019 (= e!4345888 (forall!17467 (t!384516 (exprs!8068 (Context!15137 (tail!14290 (exprs!8068 ct1!232))))) lambda!443556))))

(assert (= (and d!2252473 (not res!2939897)) b!7248018))

(assert (= (and b!7248018 res!2939898) b!7248019))

(declare-fun b_lambda!278185 () Bool)

(assert (=> (not b_lambda!278185) (not b!7248018)))

(declare-fun m!7925756 () Bool)

(assert (=> b!7248018 m!7925756))

(declare-fun m!7925758 () Bool)

(assert (=> b!7248019 m!7925758))

(assert (=> d!2252315 d!2252473))

(declare-fun d!2252475 () Bool)

(declare-fun choose!55954 ((Set Context!15136) Int) (Set Context!15136))

(assert (=> d!2252475 (= (flatMap!2794 lt!2583565 lambda!443573) (choose!55954 lt!2583565 lambda!443573))))

(declare-fun bs!1905569 () Bool)

(assert (= bs!1905569 d!2252475))

(declare-fun m!7925760 () Bool)

(assert (=> bs!1905569 m!7925760))

(assert (=> d!2252365 d!2252475))

(declare-fun d!2252477 () Bool)

(declare-fun c!1346564 () Bool)

(declare-fun e!4345890 () Bool)

(assert (=> d!2252477 (= c!1346564 e!4345890)))

(declare-fun res!2939899 () Bool)

(assert (=> d!2252477 (=> (not res!2939899) (not e!4345890))))

(assert (=> d!2252477 (= res!2939899 (is-Cons!70340 (exprs!8068 (Context!15137 (t!384516 (exprs!8068 ct1!232))))))))

(declare-fun e!4345891 () (Set Context!15136))

(assert (=> d!2252477 (= (derivationStepZipperUp!2452 (Context!15137 (t!384516 (exprs!8068 ct1!232))) (h!76789 s1!1971)) e!4345891)))

(declare-fun b!7248020 () Bool)

(declare-fun e!4345889 () (Set Context!15136))

(declare-fun call!659991 () (Set Context!15136))

(assert (=> b!7248020 (= e!4345889 call!659991)))

(declare-fun b!7248021 () Bool)

(assert (=> b!7248021 (= e!4345891 (set.union call!659991 (derivationStepZipperUp!2452 (Context!15137 (t!384516 (exprs!8068 (Context!15137 (t!384516 (exprs!8068 ct1!232)))))) (h!76789 s1!1971))))))

(declare-fun b!7248022 () Bool)

(assert (=> b!7248022 (= e!4345889 (as set.empty (Set Context!15136)))))

(declare-fun b!7248023 () Bool)

(assert (=> b!7248023 (= e!4345890 (nullable!7891 (h!76788 (exprs!8068 (Context!15137 (t!384516 (exprs!8068 ct1!232)))))))))

(declare-fun b!7248024 () Bool)

(assert (=> b!7248024 (= e!4345891 e!4345889)))

(declare-fun c!1346565 () Bool)

(assert (=> b!7248024 (= c!1346565 (is-Cons!70340 (exprs!8068 (Context!15137 (t!384516 (exprs!8068 ct1!232))))))))

(declare-fun bm!659986 () Bool)

(assert (=> bm!659986 (= call!659991 (derivationStepZipperDown!2622 (h!76788 (exprs!8068 (Context!15137 (t!384516 (exprs!8068 ct1!232))))) (Context!15137 (t!384516 (exprs!8068 (Context!15137 (t!384516 (exprs!8068 ct1!232)))))) (h!76789 s1!1971)))))

(assert (= (and d!2252477 res!2939899) b!7248023))

(assert (= (and d!2252477 c!1346564) b!7248021))

(assert (= (and d!2252477 (not c!1346564)) b!7248024))

(assert (= (and b!7248024 c!1346565) b!7248020))

(assert (= (and b!7248024 (not c!1346565)) b!7248022))

(assert (= (or b!7248021 b!7248020) bm!659986))

(declare-fun m!7925762 () Bool)

(assert (=> b!7248021 m!7925762))

(declare-fun m!7925764 () Bool)

(assert (=> b!7248023 m!7925764))

(declare-fun m!7925766 () Bool)

(assert (=> bm!659986 m!7925766))

(assert (=> b!7247827 d!2252477))

(declare-fun bs!1905570 () Bool)

(declare-fun d!2252479 () Bool)

(assert (= bs!1905570 (and d!2252479 b!7247744)))

(declare-fun lambda!443597 () Int)

(assert (=> bs!1905570 (not (= lambda!443597 lambda!443539))))

(declare-fun bs!1905571 () Bool)

(assert (= bs!1905571 (and d!2252479 d!2252421)))

(assert (=> bs!1905571 (not (= lambda!443597 lambda!443591))))

(declare-fun bs!1905572 () Bool)

(assert (= bs!1905572 (and d!2252479 d!2252453)))

(assert (=> bs!1905572 (not (= lambda!443597 lambda!443593))))

(declare-fun bs!1905573 () Bool)

(assert (= bs!1905573 (and d!2252479 d!2252349)))

(assert (=> bs!1905573 (not (= lambda!443597 lambda!443568))))

(declare-fun bs!1905574 () Bool)

(assert (= bs!1905574 (and d!2252479 d!2252347)))

(assert (=> bs!1905574 (= lambda!443597 lambda!443565)))

(assert (=> d!2252479 true))

(assert (=> d!2252479 (< (dynLambda!28709 order!28951 lambda!443539) (dynLambda!28709 order!28951 lambda!443597))))

(assert (=> d!2252479 (= (exists!4335 (toList!11457 lt!2583560) lambda!443539) (not (forall!17468 (toList!11457 lt!2583560) lambda!443597)))))

(declare-fun bs!1905575 () Bool)

(assert (= bs!1905575 d!2252479))

(assert (=> bs!1905575 m!7925268))

(declare-fun m!7925768 () Bool)

(assert (=> bs!1905575 m!7925768))

(assert (=> d!2252345 d!2252479))

(assert (=> d!2252345 d!2252353))

(declare-fun d!2252481 () Bool)

(declare-fun res!2939902 () Bool)

(assert (=> d!2252481 (= res!2939902 (exists!4335 (toList!11457 lt!2583560) lambda!443539))))

(assert (=> d!2252481 true))

(assert (=> d!2252481 (= (choose!55946 lt!2583560 lambda!443539) res!2939902)))

(declare-fun bs!1905576 () Bool)

(assert (= bs!1905576 d!2252481))

(assert (=> bs!1905576 m!7925268))

(assert (=> bs!1905576 m!7925268))

(assert (=> bs!1905576 m!7925428))

(assert (=> d!2252345 d!2252481))

(declare-fun d!2252483 () Bool)

(declare-fun nullableFct!3097 (Regex!18628) Bool)

(assert (=> d!2252483 (= (nullable!7891 (h!76788 (exprs!8068 ct1!232))) (nullableFct!3097 (h!76788 (exprs!8068 ct1!232))))))

(declare-fun bs!1905577 () Bool)

(assert (= bs!1905577 d!2252483))

(declare-fun m!7925770 () Bool)

(assert (=> bs!1905577 m!7925770))

(assert (=> b!7247829 d!2252483))

(declare-fun bs!1905578 () Bool)

(declare-fun d!2252485 () Bool)

(assert (= bs!1905578 (and d!2252485 b!7247744)))

(declare-fun lambda!443598 () Int)

(assert (=> bs!1905578 (not (= lambda!443598 lambda!443539))))

(declare-fun bs!1905579 () Bool)

(assert (= bs!1905579 (and d!2252485 d!2252421)))

(assert (=> bs!1905579 (not (= lambda!443598 lambda!443591))))

(declare-fun bs!1905580 () Bool)

(assert (= bs!1905580 (and d!2252485 d!2252453)))

(assert (=> bs!1905580 (not (= lambda!443598 lambda!443593))))

(declare-fun bs!1905581 () Bool)

(assert (= bs!1905581 (and d!2252485 d!2252349)))

(assert (=> bs!1905581 (not (= lambda!443598 lambda!443568))))

(declare-fun bs!1905582 () Bool)

(assert (= bs!1905582 (and d!2252485 d!2252347)))

(assert (=> bs!1905582 (= (= lambda!443568 lambda!443539) (= lambda!443598 lambda!443565))))

(declare-fun bs!1905583 () Bool)

(assert (= bs!1905583 (and d!2252485 d!2252479)))

(assert (=> bs!1905583 (= (= lambda!443568 lambda!443539) (= lambda!443598 lambda!443597))))

(assert (=> d!2252485 true))

(assert (=> d!2252485 (< (dynLambda!28709 order!28951 lambda!443568) (dynLambda!28709 order!28951 lambda!443598))))

(assert (=> d!2252485 (= (exists!4335 lt!2583562 lambda!443568) (not (forall!17468 lt!2583562 lambda!443598)))))

(declare-fun bs!1905584 () Bool)

(assert (= bs!1905584 d!2252485))

(declare-fun m!7925772 () Bool)

(assert (=> bs!1905584 m!7925772))

(assert (=> d!2252349 d!2252485))

(declare-fun bs!1905585 () Bool)

(declare-fun d!2252487 () Bool)

(assert (= bs!1905585 (and d!2252487 b!7247744)))

(declare-fun lambda!443601 () Int)

(assert (=> bs!1905585 (= lambda!443601 lambda!443539)))

(declare-fun bs!1905586 () Bool)

(assert (= bs!1905586 (and d!2252487 d!2252421)))

(assert (=> bs!1905586 (not (= lambda!443601 lambda!443591))))

(declare-fun bs!1905587 () Bool)

(assert (= bs!1905587 (and d!2252487 d!2252485)))

(assert (=> bs!1905587 (not (= lambda!443601 lambda!443598))))

(declare-fun bs!1905588 () Bool)

(assert (= bs!1905588 (and d!2252487 d!2252453)))

(assert (=> bs!1905588 (not (= lambda!443601 lambda!443593))))

(declare-fun bs!1905589 () Bool)

(assert (= bs!1905589 (and d!2252487 d!2252349)))

(assert (=> bs!1905589 (= lambda!443601 lambda!443568)))

(declare-fun bs!1905590 () Bool)

(assert (= bs!1905590 (and d!2252487 d!2252347)))

(assert (=> bs!1905590 (not (= lambda!443601 lambda!443565))))

(declare-fun bs!1905591 () Bool)

(assert (= bs!1905591 (and d!2252487 d!2252479)))

(assert (=> bs!1905591 (not (= lambda!443601 lambda!443597))))

(assert (=> d!2252487 true))

(assert (=> d!2252487 (exists!4335 lt!2583562 lambda!443601)))

(assert (=> d!2252487 true))

(declare-fun _$60!1213 () Unit!163839)

(assert (=> d!2252487 (= (choose!55947 lt!2583562 (t!384517 s1!1971)) _$60!1213)))

(declare-fun bs!1905592 () Bool)

(assert (= bs!1905592 d!2252487))

(declare-fun m!7925774 () Bool)

(assert (=> bs!1905592 m!7925774))

(assert (=> d!2252349 d!2252487))

(declare-fun d!2252489 () Bool)

(declare-fun c!1346568 () Bool)

(assert (=> d!2252489 (= c!1346568 (isEmpty!40509 (t!384517 s1!1971)))))

(declare-fun e!4345892 () Bool)

(assert (=> d!2252489 (= (matchZipper!3538 (content!14574 lt!2583562) (t!384517 s1!1971)) e!4345892)))

(declare-fun b!7248025 () Bool)

(assert (=> b!7248025 (= e!4345892 (nullableZipper!2900 (content!14574 lt!2583562)))))

(declare-fun b!7248026 () Bool)

(assert (=> b!7248026 (= e!4345892 (matchZipper!3538 (derivationStepZipper!3406 (content!14574 lt!2583562) (head!14888 (t!384517 s1!1971))) (tail!14292 (t!384517 s1!1971))))))

(assert (= (and d!2252489 c!1346568) b!7248025))

(assert (= (and d!2252489 (not c!1346568)) b!7248026))

(assert (=> d!2252489 m!7925484))

(assert (=> b!7248025 m!7925452))

(declare-fun m!7925776 () Bool)

(assert (=> b!7248025 m!7925776))

(assert (=> b!7248026 m!7925488))

(assert (=> b!7248026 m!7925452))

(assert (=> b!7248026 m!7925488))

(declare-fun m!7925778 () Bool)

(assert (=> b!7248026 m!7925778))

(assert (=> b!7248026 m!7925492))

(assert (=> b!7248026 m!7925778))

(assert (=> b!7248026 m!7925492))

(declare-fun m!7925780 () Bool)

(assert (=> b!7248026 m!7925780))

(assert (=> d!2252349 d!2252489))

(declare-fun d!2252491 () Bool)

(declare-fun c!1346569 () Bool)

(assert (=> d!2252491 (= c!1346569 (is-Nil!70342 lt!2583562))))

(declare-fun e!4345893 () (Set Context!15136))

(assert (=> d!2252491 (= (content!14574 lt!2583562) e!4345893)))

(declare-fun b!7248027 () Bool)

(assert (=> b!7248027 (= e!4345893 (as set.empty (Set Context!15136)))))

(declare-fun b!7248028 () Bool)

(assert (=> b!7248028 (= e!4345893 (set.union (set.insert (h!76790 lt!2583562) (as set.empty (Set Context!15136))) (content!14574 (t!384518 lt!2583562))))))

(assert (= (and d!2252491 c!1346569) b!7248027))

(assert (= (and d!2252491 (not c!1346569)) b!7248028))

(declare-fun m!7925782 () Bool)

(assert (=> b!7248028 m!7925782))

(declare-fun m!7925784 () Bool)

(assert (=> b!7248028 m!7925784))

(assert (=> d!2252349 d!2252491))

(declare-fun d!2252493 () Bool)

(declare-fun c!1346570 () Bool)

(assert (=> d!2252493 (= c!1346570 (isEmpty!40509 (t!384517 s1!1971)))))

(declare-fun e!4345894 () Bool)

(assert (=> d!2252493 (= (matchZipper!3538 (set.insert lt!2583607 (as set.empty (Set Context!15136))) (t!384517 s1!1971)) e!4345894)))

(declare-fun b!7248029 () Bool)

(assert (=> b!7248029 (= e!4345894 (nullableZipper!2900 (set.insert lt!2583607 (as set.empty (Set Context!15136)))))))

(declare-fun b!7248030 () Bool)

(assert (=> b!7248030 (= e!4345894 (matchZipper!3538 (derivationStepZipper!3406 (set.insert lt!2583607 (as set.empty (Set Context!15136))) (head!14888 (t!384517 s1!1971))) (tail!14292 (t!384517 s1!1971))))))

(assert (= (and d!2252493 c!1346570) b!7248029))

(assert (= (and d!2252493 (not c!1346570)) b!7248030))

(assert (=> d!2252493 m!7925484))

(assert (=> b!7248029 m!7925510))

(declare-fun m!7925786 () Bool)

(assert (=> b!7248029 m!7925786))

(assert (=> b!7248030 m!7925488))

(assert (=> b!7248030 m!7925510))

(assert (=> b!7248030 m!7925488))

(declare-fun m!7925788 () Bool)

(assert (=> b!7248030 m!7925788))

(assert (=> b!7248030 m!7925492))

(assert (=> b!7248030 m!7925788))

(assert (=> b!7248030 m!7925492))

(declare-fun m!7925790 () Bool)

(assert (=> b!7248030 m!7925790))

(assert (=> bs!1905525 d!2252493))

(declare-fun d!2252495 () Bool)

(declare-fun c!1346573 () Bool)

(assert (=> d!2252495 (= c!1346573 (is-Nil!70340 lt!2583616))))

(declare-fun e!4345897 () (Set Regex!18628))

(assert (=> d!2252495 (= (content!14573 lt!2583616) e!4345897)))

(declare-fun b!7248035 () Bool)

(assert (=> b!7248035 (= e!4345897 (as set.empty (Set Regex!18628)))))

(declare-fun b!7248036 () Bool)

(assert (=> b!7248036 (= e!4345897 (set.union (set.insert (h!76788 lt!2583616) (as set.empty (Set Regex!18628))) (content!14573 (t!384516 lt!2583616))))))

(assert (= (and d!2252495 c!1346573) b!7248035))

(assert (= (and d!2252495 (not c!1346573)) b!7248036))

(declare-fun m!7925792 () Bool)

(assert (=> b!7248036 m!7925792))

(declare-fun m!7925794 () Bool)

(assert (=> b!7248036 m!7925794))

(assert (=> d!2252333 d!2252495))

(declare-fun d!2252497 () Bool)

(declare-fun c!1346574 () Bool)

(assert (=> d!2252497 (= c!1346574 (is-Nil!70340 (exprs!8068 lt!2583556)))))

(declare-fun e!4345898 () (Set Regex!18628))

(assert (=> d!2252497 (= (content!14573 (exprs!8068 lt!2583556)) e!4345898)))

(declare-fun b!7248037 () Bool)

(assert (=> b!7248037 (= e!4345898 (as set.empty (Set Regex!18628)))))

(declare-fun b!7248038 () Bool)

(assert (=> b!7248038 (= e!4345898 (set.union (set.insert (h!76788 (exprs!8068 lt!2583556)) (as set.empty (Set Regex!18628))) (content!14573 (t!384516 (exprs!8068 lt!2583556)))))))

(assert (= (and d!2252497 c!1346574) b!7248037))

(assert (= (and d!2252497 (not c!1346574)) b!7248038))

(declare-fun m!7925796 () Bool)

(assert (=> b!7248038 m!7925796))

(declare-fun m!7925798 () Bool)

(assert (=> b!7248038 m!7925798))

(assert (=> d!2252333 d!2252497))

(declare-fun d!2252499 () Bool)

(declare-fun c!1346575 () Bool)

(assert (=> d!2252499 (= c!1346575 (is-Nil!70340 (exprs!8068 ct2!328)))))

(declare-fun e!4345899 () (Set Regex!18628))

(assert (=> d!2252499 (= (content!14573 (exprs!8068 ct2!328)) e!4345899)))

(declare-fun b!7248039 () Bool)

(assert (=> b!7248039 (= e!4345899 (as set.empty (Set Regex!18628)))))

(declare-fun b!7248040 () Bool)

(assert (=> b!7248040 (= e!4345899 (set.union (set.insert (h!76788 (exprs!8068 ct2!328)) (as set.empty (Set Regex!18628))) (content!14573 (t!384516 (exprs!8068 ct2!328)))))))

(assert (= (and d!2252499 c!1346575) b!7248039))

(assert (= (and d!2252499 (not c!1346575)) b!7248040))

(declare-fun m!7925800 () Bool)

(assert (=> b!7248040 m!7925800))

(declare-fun m!7925802 () Bool)

(assert (=> b!7248040 m!7925802))

(assert (=> d!2252333 d!2252499))

(declare-fun d!2252501 () Bool)

(declare-fun res!2939903 () Bool)

(declare-fun e!4345900 () Bool)

(assert (=> d!2252501 (=> res!2939903 e!4345900)))

(assert (=> d!2252501 (= res!2939903 (is-Nil!70340 (++!16518 (exprs!8068 ct1!232) (exprs!8068 ct2!328))))))

(assert (=> d!2252501 (= (forall!17467 (++!16518 (exprs!8068 ct1!232) (exprs!8068 ct2!328)) lambda!443538) e!4345900)))

(declare-fun b!7248041 () Bool)

(declare-fun e!4345901 () Bool)

(assert (=> b!7248041 (= e!4345900 e!4345901)))

(declare-fun res!2939904 () Bool)

(assert (=> b!7248041 (=> (not res!2939904) (not e!4345901))))

(assert (=> b!7248041 (= res!2939904 (dynLambda!28712 lambda!443538 (h!76788 (++!16518 (exprs!8068 ct1!232) (exprs!8068 ct2!328)))))))

(declare-fun b!7248042 () Bool)

(assert (=> b!7248042 (= e!4345901 (forall!17467 (t!384516 (++!16518 (exprs!8068 ct1!232) (exprs!8068 ct2!328))) lambda!443538))))

(assert (= (and d!2252501 (not res!2939903)) b!7248041))

(assert (= (and b!7248041 res!2939904) b!7248042))

(declare-fun b_lambda!278187 () Bool)

(assert (=> (not b_lambda!278187) (not b!7248041)))

(declare-fun m!7925804 () Bool)

(assert (=> b!7248041 m!7925804))

(declare-fun m!7925806 () Bool)

(assert (=> b!7248042 m!7925806))

(assert (=> d!2252343 d!2252501))

(assert (=> d!2252343 d!2252341))

(declare-fun d!2252503 () Bool)

(assert (=> d!2252503 (forall!17467 (++!16518 (exprs!8068 ct1!232) (exprs!8068 ct2!328)) lambda!443538)))

(assert (=> d!2252503 true))

(declare-fun _$78!749 () Unit!163839)

(assert (=> d!2252503 (= (choose!55945 (exprs!8068 ct1!232) (exprs!8068 ct2!328) lambda!443538) _$78!749)))

(declare-fun bs!1905593 () Bool)

(assert (= bs!1905593 d!2252503))

(assert (=> bs!1905593 m!7925258))

(assert (=> bs!1905593 m!7925258))

(assert (=> bs!1905593 m!7925422))

(assert (=> d!2252343 d!2252503))

(declare-fun d!2252505 () Bool)

(declare-fun res!2939905 () Bool)

(declare-fun e!4345902 () Bool)

(assert (=> d!2252505 (=> res!2939905 e!4345902)))

(assert (=> d!2252505 (= res!2939905 (is-Nil!70340 (exprs!8068 ct1!232)))))

(assert (=> d!2252505 (= (forall!17467 (exprs!8068 ct1!232) lambda!443538) e!4345902)))

(declare-fun b!7248043 () Bool)

(declare-fun e!4345903 () Bool)

(assert (=> b!7248043 (= e!4345902 e!4345903)))

(declare-fun res!2939906 () Bool)

(assert (=> b!7248043 (=> (not res!2939906) (not e!4345903))))

(assert (=> b!7248043 (= res!2939906 (dynLambda!28712 lambda!443538 (h!76788 (exprs!8068 ct1!232))))))

(declare-fun b!7248044 () Bool)

(assert (=> b!7248044 (= e!4345903 (forall!17467 (t!384516 (exprs!8068 ct1!232)) lambda!443538))))

(assert (= (and d!2252505 (not res!2939905)) b!7248043))

(assert (= (and b!7248043 res!2939906) b!7248044))

(declare-fun b_lambda!278189 () Bool)

(assert (=> (not b_lambda!278189) (not b!7248043)))

(declare-fun m!7925808 () Bool)

(assert (=> b!7248043 m!7925808))

(declare-fun m!7925810 () Bool)

(assert (=> b!7248044 m!7925810))

(assert (=> d!2252343 d!2252505))

(declare-fun d!2252507 () Bool)

(declare-fun res!2939907 () Bool)

(declare-fun e!4345904 () Bool)

(assert (=> d!2252507 (=> res!2939907 e!4345904)))

(assert (=> d!2252507 (= res!2939907 (is-Nil!70340 (exprs!8068 ct1!232)))))

(assert (=> d!2252507 (= (forall!17467 (exprs!8068 ct1!232) lambda!443569) e!4345904)))

(declare-fun b!7248045 () Bool)

(declare-fun e!4345905 () Bool)

(assert (=> b!7248045 (= e!4345904 e!4345905)))

(declare-fun res!2939908 () Bool)

(assert (=> b!7248045 (=> (not res!2939908) (not e!4345905))))

(assert (=> b!7248045 (= res!2939908 (dynLambda!28712 lambda!443569 (h!76788 (exprs!8068 ct1!232))))))

(declare-fun b!7248046 () Bool)

(assert (=> b!7248046 (= e!4345905 (forall!17467 (t!384516 (exprs!8068 ct1!232)) lambda!443569))))

(assert (= (and d!2252507 (not res!2939907)) b!7248045))

(assert (= (and b!7248045 res!2939908) b!7248046))

(declare-fun b_lambda!278191 () Bool)

(assert (=> (not b_lambda!278191) (not b!7248045)))

(declare-fun m!7925812 () Bool)

(assert (=> b!7248045 m!7925812))

(declare-fun m!7925814 () Bool)

(assert (=> b!7248046 m!7925814))

(assert (=> d!2252359 d!2252507))

(declare-fun d!2252509 () Bool)

(declare-fun c!1346576 () Bool)

(assert (=> d!2252509 (= c!1346576 (is-Nil!70340 lt!2583619))))

(declare-fun e!4345906 () (Set Regex!18628))

(assert (=> d!2252509 (= (content!14573 lt!2583619) e!4345906)))

(declare-fun b!7248047 () Bool)

(assert (=> b!7248047 (= e!4345906 (as set.empty (Set Regex!18628)))))

(declare-fun b!7248048 () Bool)

(assert (=> b!7248048 (= e!4345906 (set.union (set.insert (h!76788 lt!2583619) (as set.empty (Set Regex!18628))) (content!14573 (t!384516 lt!2583619))))))

(assert (= (and d!2252509 c!1346576) b!7248047))

(assert (= (and d!2252509 (not c!1346576)) b!7248048))

(declare-fun m!7925816 () Bool)

(assert (=> b!7248048 m!7925816))

(declare-fun m!7925818 () Bool)

(assert (=> b!7248048 m!7925818))

(assert (=> d!2252341 d!2252509))

(declare-fun d!2252511 () Bool)

(declare-fun c!1346577 () Bool)

(assert (=> d!2252511 (= c!1346577 (is-Nil!70340 (exprs!8068 ct1!232)))))

(declare-fun e!4345907 () (Set Regex!18628))

(assert (=> d!2252511 (= (content!14573 (exprs!8068 ct1!232)) e!4345907)))

(declare-fun b!7248049 () Bool)

(assert (=> b!7248049 (= e!4345907 (as set.empty (Set Regex!18628)))))

(declare-fun b!7248050 () Bool)

(assert (=> b!7248050 (= e!4345907 (set.union (set.insert (h!76788 (exprs!8068 ct1!232)) (as set.empty (Set Regex!18628))) (content!14573 (t!384516 (exprs!8068 ct1!232)))))))

(assert (= (and d!2252511 c!1346577) b!7248049))

(assert (= (and d!2252511 (not c!1346577)) b!7248050))

(declare-fun m!7925820 () Bool)

(assert (=> b!7248050 m!7925820))

(assert (=> b!7248050 m!7925714))

(assert (=> d!2252341 d!2252511))

(assert (=> d!2252341 d!2252499))

(declare-fun d!2252513 () Bool)

(assert (=> d!2252513 (= (isEmpty!40509 s1!1971) (is-Nil!70341 s1!1971))))

(assert (=> d!2252355 d!2252513))

(declare-fun c!1346590 () Bool)

(declare-fun c!1346591 () Bool)

(declare-fun call!660009 () List!70464)

(declare-fun bm!659999 () Bool)

(declare-fun $colon$colon!2907 (List!70464 Regex!18628) List!70464)

(assert (=> bm!659999 (= call!660009 ($colon$colon!2907 (exprs!8068 (Context!15137 (t!384516 (exprs!8068 ct1!232)))) (ite (or c!1346590 c!1346591) (regTwo!37768 (h!76788 (exprs!8068 ct1!232))) (h!76788 (exprs!8068 ct1!232)))))))

(declare-fun b!7248073 () Bool)

(declare-fun e!4345922 () (Set Context!15136))

(declare-fun call!660006 () (Set Context!15136))

(assert (=> b!7248073 (= e!4345922 call!660006)))

(declare-fun bm!660000 () Bool)

(declare-fun call!660008 () (Set Context!15136))

(declare-fun call!660004 () (Set Context!15136))

(assert (=> bm!660000 (= call!660008 call!660004)))

(declare-fun bm!660001 () Bool)

(assert (=> bm!660001 (= call!660006 call!660008)))

(declare-fun b!7248074 () Bool)

(declare-fun e!4345925 () Bool)

(assert (=> b!7248074 (= e!4345925 (nullable!7891 (regOne!37768 (h!76788 (exprs!8068 ct1!232)))))))

(declare-fun c!1346588 () Bool)

(declare-fun bm!660002 () Bool)

(declare-fun call!660007 () List!70464)

(assert (=> bm!660002 (= call!660004 (derivationStepZipperDown!2622 (ite c!1346588 (regTwo!37769 (h!76788 (exprs!8068 ct1!232))) (ite c!1346590 (regTwo!37768 (h!76788 (exprs!8068 ct1!232))) (ite c!1346591 (regOne!37768 (h!76788 (exprs!8068 ct1!232))) (reg!18957 (h!76788 (exprs!8068 ct1!232)))))) (ite (or c!1346588 c!1346590) (Context!15137 (t!384516 (exprs!8068 ct1!232))) (Context!15137 call!660007)) (h!76789 s1!1971)))))

(declare-fun b!7248075 () Bool)

(declare-fun e!4345920 () (Set Context!15136))

(assert (=> b!7248075 (= e!4345920 (set.insert (Context!15137 (t!384516 (exprs!8068 ct1!232))) (as set.empty (Set Context!15136))))))

(declare-fun b!7248076 () Bool)

(assert (=> b!7248076 (= c!1346590 e!4345925)))

(declare-fun res!2939911 () Bool)

(assert (=> b!7248076 (=> (not res!2939911) (not e!4345925))))

(assert (=> b!7248076 (= res!2939911 (is-Concat!27473 (h!76788 (exprs!8068 ct1!232))))))

(declare-fun e!4345923 () (Set Context!15136))

(declare-fun e!4345921 () (Set Context!15136))

(assert (=> b!7248076 (= e!4345923 e!4345921)))

(declare-fun b!7248077 () Bool)

(declare-fun e!4345924 () (Set Context!15136))

(assert (=> b!7248077 (= e!4345921 e!4345924)))

(assert (=> b!7248077 (= c!1346591 (is-Concat!27473 (h!76788 (exprs!8068 ct1!232))))))

(declare-fun b!7248078 () Bool)

(declare-fun call!660005 () (Set Context!15136))

(assert (=> b!7248078 (= e!4345921 (set.union call!660005 call!660008))))

(declare-fun b!7248079 () Bool)

(assert (=> b!7248079 (= e!4345920 e!4345923)))

(assert (=> b!7248079 (= c!1346588 (is-Union!18628 (h!76788 (exprs!8068 ct1!232))))))

(declare-fun bm!660004 () Bool)

(assert (=> bm!660004 (= call!660005 (derivationStepZipperDown!2622 (ite c!1346588 (regOne!37769 (h!76788 (exprs!8068 ct1!232))) (regOne!37768 (h!76788 (exprs!8068 ct1!232)))) (ite c!1346588 (Context!15137 (t!384516 (exprs!8068 ct1!232))) (Context!15137 call!660009)) (h!76789 s1!1971)))))

(declare-fun b!7248080 () Bool)

(declare-fun c!1346592 () Bool)

(assert (=> b!7248080 (= c!1346592 (is-Star!18628 (h!76788 (exprs!8068 ct1!232))))))

(assert (=> b!7248080 (= e!4345924 e!4345922)))

(declare-fun b!7248081 () Bool)

(assert (=> b!7248081 (= e!4345923 (set.union call!660005 call!660004))))

(declare-fun bm!660003 () Bool)

(assert (=> bm!660003 (= call!660007 call!660009)))

(declare-fun d!2252515 () Bool)

(declare-fun c!1346589 () Bool)

(assert (=> d!2252515 (= c!1346589 (and (is-ElementMatch!18628 (h!76788 (exprs!8068 ct1!232))) (= (c!1346485 (h!76788 (exprs!8068 ct1!232))) (h!76789 s1!1971))))))

(assert (=> d!2252515 (= (derivationStepZipperDown!2622 (h!76788 (exprs!8068 ct1!232)) (Context!15137 (t!384516 (exprs!8068 ct1!232))) (h!76789 s1!1971)) e!4345920)))

(declare-fun b!7248082 () Bool)

(assert (=> b!7248082 (= e!4345922 (as set.empty (Set Context!15136)))))

(declare-fun b!7248083 () Bool)

(assert (=> b!7248083 (= e!4345924 call!660006)))

(assert (= (and d!2252515 c!1346589) b!7248075))

(assert (= (and d!2252515 (not c!1346589)) b!7248079))

(assert (= (and b!7248079 c!1346588) b!7248081))

(assert (= (and b!7248079 (not c!1346588)) b!7248076))

(assert (= (and b!7248076 res!2939911) b!7248074))

(assert (= (and b!7248076 c!1346590) b!7248078))

(assert (= (and b!7248076 (not c!1346590)) b!7248077))

(assert (= (and b!7248077 c!1346591) b!7248083))

(assert (= (and b!7248077 (not c!1346591)) b!7248080))

(assert (= (and b!7248080 c!1346592) b!7248073))

(assert (= (and b!7248080 (not c!1346592)) b!7248082))

(assert (= (or b!7248083 b!7248073) bm!660003))

(assert (= (or b!7248083 b!7248073) bm!660001))

(assert (= (or b!7248078 bm!660003) bm!659999))

(assert (= (or b!7248078 bm!660001) bm!660000))

(assert (= (or b!7248081 bm!660000) bm!660002))

(assert (= (or b!7248081 b!7248078) bm!660004))

(declare-fun m!7925822 () Bool)

(assert (=> bm!659999 m!7925822))

(declare-fun m!7925824 () Bool)

(assert (=> bm!660004 m!7925824))

(declare-fun m!7925826 () Bool)

(assert (=> b!7248075 m!7925826))

(declare-fun m!7925828 () Bool)

(assert (=> bm!660002 m!7925828))

(declare-fun m!7925830 () Bool)

(assert (=> b!7248074 m!7925830))

(assert (=> bm!659982 d!2252515))

(declare-fun d!2252517 () Bool)

(assert (=> d!2252517 (= (isEmpty!40509 (t!384517 s1!1971)) (is-Nil!70341 (t!384517 s1!1971)))))

(assert (=> d!2252363 d!2252517))

(declare-fun d!2252519 () Bool)

(assert (=> d!2252519 (= (isEmpty!40509 s2!1849) (is-Nil!70341 s2!1849))))

(assert (=> d!2252367 d!2252519))

(declare-fun d!2252521 () Bool)

(declare-fun lt!2583673 () Int)

(assert (=> d!2252521 (>= lt!2583673 0)))

(declare-fun e!4345926 () Int)

(assert (=> d!2252521 (= lt!2583673 e!4345926)))

(declare-fun c!1346593 () Bool)

(assert (=> d!2252521 (= c!1346593 (is-Nil!70340 lt!2583616))))

(assert (=> d!2252521 (= (size!41691 lt!2583616) lt!2583673)))

(declare-fun b!7248084 () Bool)

(assert (=> b!7248084 (= e!4345926 0)))

(declare-fun b!7248085 () Bool)

(assert (=> b!7248085 (= e!4345926 (+ 1 (size!41691 (t!384516 lt!2583616))))))

(assert (= (and d!2252521 c!1346593) b!7248084))

(assert (= (and d!2252521 (not c!1346593)) b!7248085))

(declare-fun m!7925832 () Bool)

(assert (=> b!7248085 m!7925832))

(assert (=> b!7247814 d!2252521))

(declare-fun d!2252523 () Bool)

(declare-fun lt!2583674 () Int)

(assert (=> d!2252523 (>= lt!2583674 0)))

(declare-fun e!4345927 () Int)

(assert (=> d!2252523 (= lt!2583674 e!4345927)))

(declare-fun c!1346594 () Bool)

(assert (=> d!2252523 (= c!1346594 (is-Nil!70340 (exprs!8068 lt!2583556)))))

(assert (=> d!2252523 (= (size!41691 (exprs!8068 lt!2583556)) lt!2583674)))

(declare-fun b!7248086 () Bool)

(assert (=> b!7248086 (= e!4345927 0)))

(declare-fun b!7248087 () Bool)

(assert (=> b!7248087 (= e!4345927 (+ 1 (size!41691 (t!384516 (exprs!8068 lt!2583556)))))))

(assert (= (and d!2252523 c!1346594) b!7248086))

(assert (= (and d!2252523 (not c!1346594)) b!7248087))

(declare-fun m!7925834 () Bool)

(assert (=> b!7248087 m!7925834))

(assert (=> b!7247814 d!2252523))

(assert (=> b!7247814 d!2252435))

(declare-fun d!2252525 () Bool)

(declare-fun c!1346595 () Bool)

(assert (=> d!2252525 (= c!1346595 (isEmpty!40509 (tail!14292 (t!384517 s1!1971))))))

(declare-fun e!4345928 () Bool)

(assert (=> d!2252525 (= (matchZipper!3538 (derivationStepZipper!3406 lt!2583560 (head!14888 (t!384517 s1!1971))) (tail!14292 (t!384517 s1!1971))) e!4345928)))

(declare-fun b!7248088 () Bool)

(assert (=> b!7248088 (= e!4345928 (nullableZipper!2900 (derivationStepZipper!3406 lt!2583560 (head!14888 (t!384517 s1!1971)))))))

(declare-fun b!7248089 () Bool)

(assert (=> b!7248089 (= e!4345928 (matchZipper!3538 (derivationStepZipper!3406 (derivationStepZipper!3406 lt!2583560 (head!14888 (t!384517 s1!1971))) (head!14888 (tail!14292 (t!384517 s1!1971)))) (tail!14292 (tail!14292 (t!384517 s1!1971)))))))

(assert (= (and d!2252525 c!1346595) b!7248088))

(assert (= (and d!2252525 (not c!1346595)) b!7248089))

(assert (=> d!2252525 m!7925492))

(declare-fun m!7925836 () Bool)

(assert (=> d!2252525 m!7925836))

(assert (=> b!7248088 m!7925490))

(declare-fun m!7925838 () Bool)

(assert (=> b!7248088 m!7925838))

(assert (=> b!7248089 m!7925492))

(declare-fun m!7925840 () Bool)

(assert (=> b!7248089 m!7925840))

(assert (=> b!7248089 m!7925490))

(assert (=> b!7248089 m!7925840))

(declare-fun m!7925842 () Bool)

(assert (=> b!7248089 m!7925842))

(assert (=> b!7248089 m!7925492))

(declare-fun m!7925844 () Bool)

(assert (=> b!7248089 m!7925844))

(assert (=> b!7248089 m!7925842))

(assert (=> b!7248089 m!7925844))

(declare-fun m!7925846 () Bool)

(assert (=> b!7248089 m!7925846))

(assert (=> b!7247855 d!2252525))

(declare-fun bs!1905594 () Bool)

(declare-fun d!2252527 () Bool)

(assert (= bs!1905594 (and d!2252527 d!2252365)))

(declare-fun lambda!443602 () Int)

(assert (=> bs!1905594 (= (= (head!14888 (t!384517 s1!1971)) (h!76789 s1!1971)) (= lambda!443602 lambda!443573))))

(declare-fun bs!1905595 () Bool)

(assert (= bs!1905595 (and d!2252527 d!2252415)))

(assert (=> bs!1905595 (= (= (head!14888 (t!384517 s1!1971)) (head!14888 s1!1971)) (= lambda!443602 lambda!443588))))

(declare-fun bs!1905596 () Bool)

(assert (= bs!1905596 (and d!2252527 d!2252439)))

(assert (=> bs!1905596 (= (= (head!14888 (t!384517 s1!1971)) (head!14888 (++!16519 (t!384517 s1!1971) s2!1849))) (= lambda!443602 lambda!443592))))

(assert (=> d!2252527 true))

(assert (=> d!2252527 (= (derivationStepZipper!3406 lt!2583560 (head!14888 (t!384517 s1!1971))) (flatMap!2794 lt!2583560 lambda!443602))))

(declare-fun bs!1905597 () Bool)

(assert (= bs!1905597 d!2252527))

(declare-fun m!7925848 () Bool)

(assert (=> bs!1905597 m!7925848))

(assert (=> b!7247855 d!2252527))

(declare-fun d!2252529 () Bool)

(assert (=> d!2252529 (= (head!14888 (t!384517 s1!1971)) (h!76789 (t!384517 s1!1971)))))

(assert (=> b!7247855 d!2252529))

(declare-fun d!2252531 () Bool)

(assert (=> d!2252531 (= (tail!14292 (t!384517 s1!1971)) (t!384517 (t!384517 s1!1971)))))

(assert (=> b!7247855 d!2252531))

(declare-fun d!2252533 () Bool)

(declare-fun c!1346596 () Bool)

(assert (=> d!2252533 (= c!1346596 (isEmpty!40509 (tail!14292 s2!1849)))))

(declare-fun e!4345929 () Bool)

(assert (=> d!2252533 (= (matchZipper!3538 (derivationStepZipper!3406 (set.insert ct2!328 (as set.empty (Set Context!15136))) (head!14888 s2!1849)) (tail!14292 s2!1849)) e!4345929)))

(declare-fun b!7248090 () Bool)

(assert (=> b!7248090 (= e!4345929 (nullableZipper!2900 (derivationStepZipper!3406 (set.insert ct2!328 (as set.empty (Set Context!15136))) (head!14888 s2!1849))))))

(declare-fun b!7248091 () Bool)

(assert (=> b!7248091 (= e!4345929 (matchZipper!3538 (derivationStepZipper!3406 (derivationStepZipper!3406 (set.insert ct2!328 (as set.empty (Set Context!15136))) (head!14888 s2!1849)) (head!14888 (tail!14292 s2!1849))) (tail!14292 (tail!14292 s2!1849))))))

(assert (= (and d!2252533 c!1346596) b!7248090))

(assert (= (and d!2252533 (not c!1346596)) b!7248091))

(assert (=> d!2252533 m!7925506))

(declare-fun m!7925850 () Bool)

(assert (=> d!2252533 m!7925850))

(assert (=> b!7248090 m!7925504))

(declare-fun m!7925852 () Bool)

(assert (=> b!7248090 m!7925852))

(assert (=> b!7248091 m!7925506))

(declare-fun m!7925854 () Bool)

(assert (=> b!7248091 m!7925854))

(assert (=> b!7248091 m!7925504))

(assert (=> b!7248091 m!7925854))

(declare-fun m!7925856 () Bool)

(assert (=> b!7248091 m!7925856))

(assert (=> b!7248091 m!7925506))

(declare-fun m!7925858 () Bool)

(assert (=> b!7248091 m!7925858))

(assert (=> b!7248091 m!7925856))

(assert (=> b!7248091 m!7925858))

(declare-fun m!7925860 () Bool)

(assert (=> b!7248091 m!7925860))

(assert (=> b!7247859 d!2252533))

(declare-fun bs!1905598 () Bool)

(declare-fun d!2252535 () Bool)

(assert (= bs!1905598 (and d!2252535 d!2252365)))

(declare-fun lambda!443603 () Int)

(assert (=> bs!1905598 (= (= (head!14888 s2!1849) (h!76789 s1!1971)) (= lambda!443603 lambda!443573))))

(declare-fun bs!1905599 () Bool)

(assert (= bs!1905599 (and d!2252535 d!2252415)))

(assert (=> bs!1905599 (= (= (head!14888 s2!1849) (head!14888 s1!1971)) (= lambda!443603 lambda!443588))))

(declare-fun bs!1905600 () Bool)

(assert (= bs!1905600 (and d!2252535 d!2252439)))

(assert (=> bs!1905600 (= (= (head!14888 s2!1849) (head!14888 (++!16519 (t!384517 s1!1971) s2!1849))) (= lambda!443603 lambda!443592))))

(declare-fun bs!1905601 () Bool)

(assert (= bs!1905601 (and d!2252535 d!2252527)))

(assert (=> bs!1905601 (= (= (head!14888 s2!1849) (head!14888 (t!384517 s1!1971))) (= lambda!443603 lambda!443602))))

(assert (=> d!2252535 true))

(assert (=> d!2252535 (= (derivationStepZipper!3406 (set.insert ct2!328 (as set.empty (Set Context!15136))) (head!14888 s2!1849)) (flatMap!2794 (set.insert ct2!328 (as set.empty (Set Context!15136))) lambda!443603))))

(declare-fun bs!1905602 () Bool)

(assert (= bs!1905602 d!2252535))

(assert (=> bs!1905602 m!7925270))

(declare-fun m!7925862 () Bool)

(assert (=> bs!1905602 m!7925862))

(assert (=> b!7247859 d!2252535))

(declare-fun d!2252537 () Bool)

(assert (=> d!2252537 (= (head!14888 s2!1849) (h!76789 s2!1849))))

(assert (=> b!7247859 d!2252537))

(declare-fun d!2252539 () Bool)

(assert (=> d!2252539 (= (tail!14292 s2!1849) (t!384517 s2!1849))))

(assert (=> b!7247859 d!2252539))

(declare-fun b!7248092 () Bool)

(declare-fun e!4345931 () List!70464)

(assert (=> b!7248092 (= e!4345931 (exprs!8068 ct2!328))))

(declare-fun b!7248094 () Bool)

(declare-fun res!2939913 () Bool)

(declare-fun e!4345930 () Bool)

(assert (=> b!7248094 (=> (not res!2939913) (not e!4345930))))

(declare-fun lt!2583675 () List!70464)

(assert (=> b!7248094 (= res!2939913 (= (size!41691 lt!2583675) (+ (size!41691 (t!384516 (exprs!8068 lt!2583556))) (size!41691 (exprs!8068 ct2!328)))))))

(declare-fun b!7248095 () Bool)

(assert (=> b!7248095 (= e!4345930 (or (not (= (exprs!8068 ct2!328) Nil!70340)) (= lt!2583675 (t!384516 (exprs!8068 lt!2583556)))))))

(declare-fun d!2252541 () Bool)

(assert (=> d!2252541 e!4345930))

(declare-fun res!2939912 () Bool)

(assert (=> d!2252541 (=> (not res!2939912) (not e!4345930))))

(assert (=> d!2252541 (= res!2939912 (= (content!14573 lt!2583675) (set.union (content!14573 (t!384516 (exprs!8068 lt!2583556))) (content!14573 (exprs!8068 ct2!328)))))))

(assert (=> d!2252541 (= lt!2583675 e!4345931)))

(declare-fun c!1346597 () Bool)

(assert (=> d!2252541 (= c!1346597 (is-Nil!70340 (t!384516 (exprs!8068 lt!2583556))))))

(assert (=> d!2252541 (= (++!16518 (t!384516 (exprs!8068 lt!2583556)) (exprs!8068 ct2!328)) lt!2583675)))

(declare-fun b!7248093 () Bool)

(assert (=> b!7248093 (= e!4345931 (Cons!70340 (h!76788 (t!384516 (exprs!8068 lt!2583556))) (++!16518 (t!384516 (t!384516 (exprs!8068 lt!2583556))) (exprs!8068 ct2!328))))))

(assert (= (and d!2252541 c!1346597) b!7248092))

(assert (= (and d!2252541 (not c!1346597)) b!7248093))

(assert (= (and d!2252541 res!2939912) b!7248094))

(assert (= (and b!7248094 res!2939913) b!7248095))

(declare-fun m!7925864 () Bool)

(assert (=> b!7248094 m!7925864))

(assert (=> b!7248094 m!7925834))

(assert (=> b!7248094 m!7925396))

(declare-fun m!7925866 () Bool)

(assert (=> d!2252541 m!7925866))

(assert (=> d!2252541 m!7925798))

(assert (=> d!2252541 m!7925402))

(declare-fun m!7925868 () Bool)

(assert (=> b!7248093 m!7925868))

(assert (=> b!7247813 d!2252541))

(declare-fun bs!1905603 () Bool)

(declare-fun d!2252543 () Bool)

(assert (= bs!1905603 (and d!2252543 b!7247744)))

(declare-fun lambda!443604 () Int)

(assert (=> bs!1905603 (not (= lambda!443604 lambda!443539))))

(declare-fun bs!1905604 () Bool)

(assert (= bs!1905604 (and d!2252543 d!2252421)))

(assert (=> bs!1905604 (= lambda!443604 lambda!443591)))

(declare-fun bs!1905605 () Bool)

(assert (= bs!1905605 (and d!2252543 d!2252485)))

(assert (=> bs!1905605 (not (= lambda!443604 lambda!443598))))

(declare-fun bs!1905606 () Bool)

(assert (= bs!1905606 (and d!2252543 d!2252453)))

(assert (=> bs!1905606 (= lambda!443604 lambda!443593)))

(declare-fun bs!1905607 () Bool)

(assert (= bs!1905607 (and d!2252543 d!2252349)))

(assert (=> bs!1905607 (not (= lambda!443604 lambda!443568))))

(declare-fun bs!1905608 () Bool)

(assert (= bs!1905608 (and d!2252543 d!2252347)))

(assert (=> bs!1905608 (not (= lambda!443604 lambda!443565))))

(declare-fun bs!1905609 () Bool)

(assert (= bs!1905609 (and d!2252543 d!2252487)))

(assert (=> bs!1905609 (not (= lambda!443604 lambda!443601))))

(declare-fun bs!1905610 () Bool)

(assert (= bs!1905610 (and d!2252543 d!2252479)))

(assert (=> bs!1905610 (not (= lambda!443604 lambda!443597))))

(assert (=> d!2252543 (= (nullableZipper!2900 (set.insert ct2!328 (as set.empty (Set Context!15136)))) (exists!4334 (set.insert ct2!328 (as set.empty (Set Context!15136))) lambda!443604))))

(declare-fun bs!1905611 () Bool)

(assert (= bs!1905611 d!2252543))

(assert (=> bs!1905611 m!7925270))

(declare-fun m!7925870 () Bool)

(assert (=> bs!1905611 m!7925870))

(assert (=> b!7247858 d!2252543))

(declare-fun b!7248108 () Bool)

(declare-fun e!4345940 () Bool)

(assert (=> b!7248108 (= e!4345940 (dynLambda!28708 lambda!443539 (h!76790 (toList!11457 lt!2583560))))))

(declare-fun b!7248109 () Bool)

(declare-fun e!4345943 () Bool)

(declare-fun lt!2583681 () Context!15136)

(assert (=> b!7248109 (= e!4345943 (contains!20740 (toList!11457 lt!2583560) lt!2583681))))

(declare-fun b!7248110 () Bool)

(declare-fun e!4345942 () Context!15136)

(assert (=> b!7248110 (= e!4345942 (h!76790 (toList!11457 lt!2583560)))))

(declare-fun b!7248111 () Bool)

(declare-fun lt!2583680 () Unit!163839)

(declare-fun Unit!163843 () Unit!163839)

(assert (=> b!7248111 (= lt!2583680 Unit!163843)))

(assert (=> b!7248111 false))

(declare-fun e!4345941 () Context!15136)

(declare-fun head!14890 (List!70466) Context!15136)

(assert (=> b!7248111 (= e!4345941 (head!14890 (toList!11457 lt!2583560)))))

(declare-fun b!7248112 () Bool)

(assert (=> b!7248112 (= e!4345941 (getWitness!2176 (t!384518 (toList!11457 lt!2583560)) lambda!443539))))

(declare-fun b!7248113 () Bool)

(assert (=> b!7248113 (= e!4345942 e!4345941)))

(declare-fun c!1346602 () Bool)

(assert (=> b!7248113 (= c!1346602 (is-Cons!70342 (toList!11457 lt!2583560)))))

(declare-fun d!2252545 () Bool)

(assert (=> d!2252545 e!4345943))

(declare-fun res!2939919 () Bool)

(assert (=> d!2252545 (=> (not res!2939919) (not e!4345943))))

(assert (=> d!2252545 (= res!2939919 (dynLambda!28708 lambda!443539 lt!2583681))))

(assert (=> d!2252545 (= lt!2583681 e!4345942)))

(declare-fun c!1346603 () Bool)

(assert (=> d!2252545 (= c!1346603 e!4345940)))

(declare-fun res!2939918 () Bool)

(assert (=> d!2252545 (=> (not res!2939918) (not e!4345940))))

(assert (=> d!2252545 (= res!2939918 (is-Cons!70342 (toList!11457 lt!2583560)))))

(assert (=> d!2252545 (exists!4335 (toList!11457 lt!2583560) lambda!443539)))

(assert (=> d!2252545 (= (getWitness!2176 (toList!11457 lt!2583560) lambda!443539) lt!2583681)))

(assert (= (and d!2252545 res!2939918) b!7248108))

(assert (= (and d!2252545 c!1346603) b!7248110))

(assert (= (and d!2252545 (not c!1346603)) b!7248113))

(assert (= (and b!7248113 c!1346602) b!7248112))

(assert (= (and b!7248113 (not c!1346602)) b!7248111))

(assert (= (and d!2252545 res!2939919) b!7248109))

(declare-fun b_lambda!278193 () Bool)

(assert (=> (not b_lambda!278193) (not b!7248108)))

(declare-fun b_lambda!278195 () Bool)

(assert (=> (not b_lambda!278195) (not d!2252545)))

(assert (=> b!7248109 m!7925268))

(declare-fun m!7925872 () Bool)

(assert (=> b!7248109 m!7925872))

(assert (=> b!7248111 m!7925268))

(declare-fun m!7925874 () Bool)

(assert (=> b!7248111 m!7925874))

(declare-fun m!7925876 () Bool)

(assert (=> b!7248108 m!7925876))

(declare-fun m!7925878 () Bool)

(assert (=> b!7248112 m!7925878))

(declare-fun m!7925880 () Bool)

(assert (=> d!2252545 m!7925880))

(assert (=> d!2252545 m!7925268))

(assert (=> d!2252545 m!7925428))

(assert (=> d!2252321 d!2252545))

(assert (=> d!2252321 d!2252353))

(assert (=> d!2252321 d!2252345))

(declare-fun bs!1905612 () Bool)

(declare-fun d!2252547 () Bool)

(assert (= bs!1905612 (and d!2252547 b!7247744)))

(declare-fun lambda!443605 () Int)

(assert (=> bs!1905612 (not (= lambda!443605 lambda!443539))))

(declare-fun bs!1905613 () Bool)

(assert (= bs!1905613 (and d!2252547 d!2252421)))

(assert (=> bs!1905613 (= lambda!443605 lambda!443591)))

(declare-fun bs!1905614 () Bool)

(assert (= bs!1905614 (and d!2252547 d!2252453)))

(assert (=> bs!1905614 (= lambda!443605 lambda!443593)))

(declare-fun bs!1905615 () Bool)

(assert (= bs!1905615 (and d!2252547 d!2252349)))

(assert (=> bs!1905615 (not (= lambda!443605 lambda!443568))))

(declare-fun bs!1905616 () Bool)

(assert (= bs!1905616 (and d!2252547 d!2252347)))

(assert (=> bs!1905616 (not (= lambda!443605 lambda!443565))))

(declare-fun bs!1905617 () Bool)

(assert (= bs!1905617 (and d!2252547 d!2252487)))

(assert (=> bs!1905617 (not (= lambda!443605 lambda!443601))))

(declare-fun bs!1905618 () Bool)

(assert (= bs!1905618 (and d!2252547 d!2252479)))

(assert (=> bs!1905618 (not (= lambda!443605 lambda!443597))))

(declare-fun bs!1905619 () Bool)

(assert (= bs!1905619 (and d!2252547 d!2252543)))

(assert (=> bs!1905619 (= lambda!443605 lambda!443604)))

(declare-fun bs!1905620 () Bool)

(assert (= bs!1905620 (and d!2252547 d!2252485)))

(assert (=> bs!1905620 (not (= lambda!443605 lambda!443598))))

(assert (=> d!2252547 (= (nullableZipper!2900 lt!2583560) (exists!4334 lt!2583560 lambda!443605))))

(declare-fun bs!1905621 () Bool)

(assert (= bs!1905621 d!2252547))

(declare-fun m!7925882 () Bool)

(assert (=> bs!1905621 m!7925882))

(assert (=> b!7247854 d!2252547))

(declare-fun e!4345946 () Bool)

(assert (=> b!7247869 (= tp!2036944 e!4345946)))

(declare-fun b!7248125 () Bool)

(declare-fun tp!2036981 () Bool)

(declare-fun tp!2036980 () Bool)

(assert (=> b!7248125 (= e!4345946 (and tp!2036981 tp!2036980))))

(declare-fun b!7248127 () Bool)

(declare-fun tp!2036979 () Bool)

(declare-fun tp!2036978 () Bool)

(assert (=> b!7248127 (= e!4345946 (and tp!2036979 tp!2036978))))

(declare-fun b!7248126 () Bool)

(declare-fun tp!2036977 () Bool)

(assert (=> b!7248126 (= e!4345946 tp!2036977)))

(declare-fun b!7248124 () Bool)

(assert (=> b!7248124 (= e!4345946 tp_is_empty!46721)))

(assert (= (and b!7247869 (is-ElementMatch!18628 (h!76788 (exprs!8068 ct1!232)))) b!7248124))

(assert (= (and b!7247869 (is-Concat!27473 (h!76788 (exprs!8068 ct1!232)))) b!7248125))

(assert (= (and b!7247869 (is-Star!18628 (h!76788 (exprs!8068 ct1!232)))) b!7248126))

(assert (= (and b!7247869 (is-Union!18628 (h!76788 (exprs!8068 ct1!232)))) b!7248127))

(declare-fun b!7248128 () Bool)

(declare-fun e!4345947 () Bool)

(declare-fun tp!2036982 () Bool)

(declare-fun tp!2036983 () Bool)

(assert (=> b!7248128 (= e!4345947 (and tp!2036982 tp!2036983))))

(assert (=> b!7247869 (= tp!2036945 e!4345947)))

(assert (= (and b!7247869 (is-Cons!70340 (t!384516 (exprs!8068 ct1!232)))) b!7248128))

(declare-fun e!4345948 () Bool)

(assert (=> b!7247870 (= tp!2036946 e!4345948)))

(declare-fun b!7248130 () Bool)

(declare-fun tp!2036988 () Bool)

(declare-fun tp!2036987 () Bool)

(assert (=> b!7248130 (= e!4345948 (and tp!2036988 tp!2036987))))

(declare-fun b!7248132 () Bool)

(declare-fun tp!2036986 () Bool)

(declare-fun tp!2036985 () Bool)

(assert (=> b!7248132 (= e!4345948 (and tp!2036986 tp!2036985))))

(declare-fun b!7248131 () Bool)

(declare-fun tp!2036984 () Bool)

(assert (=> b!7248131 (= e!4345948 tp!2036984)))

(declare-fun b!7248129 () Bool)

(assert (=> b!7248129 (= e!4345948 tp_is_empty!46721)))

(assert (= (and b!7247870 (is-ElementMatch!18628 (h!76788 (exprs!8068 ct2!328)))) b!7248129))

(assert (= (and b!7247870 (is-Concat!27473 (h!76788 (exprs!8068 ct2!328)))) b!7248130))

(assert (= (and b!7247870 (is-Star!18628 (h!76788 (exprs!8068 ct2!328)))) b!7248131))

(assert (= (and b!7247870 (is-Union!18628 (h!76788 (exprs!8068 ct2!328)))) b!7248132))

(declare-fun b!7248133 () Bool)

(declare-fun e!4345949 () Bool)

(declare-fun tp!2036989 () Bool)

(declare-fun tp!2036990 () Bool)

(assert (=> b!7248133 (= e!4345949 (and tp!2036989 tp!2036990))))

(assert (=> b!7247870 (= tp!2036947 e!4345949)))

(assert (= (and b!7247870 (is-Cons!70340 (t!384516 (exprs!8068 ct2!328)))) b!7248133))

(declare-fun b!7248134 () Bool)

(declare-fun e!4345950 () Bool)

(declare-fun tp!2036991 () Bool)

(assert (=> b!7248134 (= e!4345950 (and tp_is_empty!46721 tp!2036991))))

(assert (=> b!7247864 (= tp!2036939 e!4345950)))

(assert (= (and b!7247864 (is-Cons!70341 (t!384517 (t!384517 s2!1849)))) b!7248134))

(declare-fun b!7248135 () Bool)

(declare-fun e!4345951 () Bool)

(declare-fun tp!2036992 () Bool)

(assert (=> b!7248135 (= e!4345951 (and tp_is_empty!46721 tp!2036992))))

(assert (=> b!7247871 (= tp!2036948 e!4345951)))

(assert (= (and b!7247871 (is-Cons!70341 (t!384517 (t!384517 s1!1971)))) b!7248135))

(declare-fun b_lambda!278197 () Bool)

(assert (= b_lambda!278187 (or b!7247739 b_lambda!278197)))

(declare-fun bs!1905622 () Bool)

(declare-fun d!2252549 () Bool)

(assert (= bs!1905622 (and d!2252549 b!7247739)))

(declare-fun validRegex!9539 (Regex!18628) Bool)

(assert (=> bs!1905622 (= (dynLambda!28712 lambda!443538 (h!76788 (++!16518 (exprs!8068 ct1!232) (exprs!8068 ct2!328)))) (validRegex!9539 (h!76788 (++!16518 (exprs!8068 ct1!232) (exprs!8068 ct2!328)))))))

(declare-fun m!7925884 () Bool)

(assert (=> bs!1905622 m!7925884))

(assert (=> b!7248041 d!2252549))

(declare-fun b_lambda!278199 () Bool)

(assert (= b_lambda!278177 (or b!7247739 b_lambda!278199)))

(declare-fun bs!1905623 () Bool)

(declare-fun d!2252551 () Bool)

(assert (= bs!1905623 (and d!2252551 b!7247739)))

(assert (=> bs!1905623 (= (dynLambda!28712 lambda!443538 (h!76788 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328)))) (validRegex!9539 (h!76788 (++!16518 (exprs!8068 lt!2583556) (exprs!8068 ct2!328)))))))

(declare-fun m!7925886 () Bool)

(assert (=> bs!1905623 m!7925886))

(assert (=> b!7247979 d!2252551))

(declare-fun b_lambda!278201 () Bool)

(assert (= b_lambda!278189 (or b!7247739 b_lambda!278201)))

(declare-fun bs!1905624 () Bool)

(declare-fun d!2252553 () Bool)

(assert (= bs!1905624 (and d!2252553 b!7247739)))

(assert (=> bs!1905624 (= (dynLambda!28712 lambda!443538 (h!76788 (exprs!8068 ct1!232))) (validRegex!9539 (h!76788 (exprs!8068 ct1!232))))))

(declare-fun m!7925888 () Bool)

(assert (=> bs!1905624 m!7925888))

(assert (=> b!7248043 d!2252553))

(declare-fun b_lambda!278203 () Bool)

(assert (= b_lambda!278185 (or d!2252315 b_lambda!278203)))

(declare-fun bs!1905625 () Bool)

(declare-fun d!2252555 () Bool)

(assert (= bs!1905625 (and d!2252555 d!2252315)))

(assert (=> bs!1905625 (= (dynLambda!28712 lambda!443556 (h!76788 (exprs!8068 (Context!15137 (tail!14290 (exprs!8068 ct1!232)))))) (validRegex!9539 (h!76788 (exprs!8068 (Context!15137 (tail!14290 (exprs!8068 ct1!232)))))))))

(declare-fun m!7925890 () Bool)

(assert (=> bs!1905625 m!7925890))

(assert (=> b!7248018 d!2252555))

(declare-fun b_lambda!278205 () Bool)

(assert (= b_lambda!278183 (or d!2252347 b_lambda!278205)))

(declare-fun bs!1905626 () Bool)

(declare-fun d!2252557 () Bool)

(assert (= bs!1905626 (and d!2252557 d!2252347)))

(assert (=> bs!1905626 (= (dynLambda!28708 lambda!443565 (h!76790 lt!2583562)) (not (dynLambda!28708 lambda!443539 (h!76790 lt!2583562))))))

(declare-fun b_lambda!278217 () Bool)

(assert (=> (not b_lambda!278217) (not bs!1905626)))

(declare-fun m!7925892 () Bool)

(assert (=> bs!1905626 m!7925892))

(assert (=> b!7248016 d!2252557))

(declare-fun b_lambda!278207 () Bool)

(assert (= b_lambda!278193 (or b!7247744 b_lambda!278207)))

(declare-fun bs!1905627 () Bool)

(declare-fun d!2252559 () Bool)

(assert (= bs!1905627 (and d!2252559 b!7247744)))

(assert (=> bs!1905627 (= (dynLambda!28708 lambda!443539 (h!76790 (toList!11457 lt!2583560))) (matchZipper!3538 (set.insert (h!76790 (toList!11457 lt!2583560)) (as set.empty (Set Context!15136))) (t!384517 s1!1971)))))

(declare-fun m!7925894 () Bool)

(assert (=> bs!1905627 m!7925894))

(assert (=> bs!1905627 m!7925894))

(declare-fun m!7925896 () Bool)

(assert (=> bs!1905627 m!7925896))

(assert (=> b!7248108 d!2252559))

(declare-fun b_lambda!278209 () Bool)

(assert (= b_lambda!278181 (or d!2252361 b_lambda!278209)))

(declare-fun bs!1905628 () Bool)

(declare-fun d!2252561 () Bool)

(assert (= bs!1905628 (and d!2252561 d!2252361)))

(assert (=> bs!1905628 (= (dynLambda!28712 lambda!443570 (h!76788 (exprs!8068 ct2!328))) (validRegex!9539 (h!76788 (exprs!8068 ct2!328))))))

(declare-fun m!7925898 () Bool)

(assert (=> bs!1905628 m!7925898))

(assert (=> b!7247987 d!2252561))

(declare-fun b_lambda!278211 () Bool)

(assert (= b_lambda!278191 (or d!2252359 b_lambda!278211)))

(declare-fun bs!1905629 () Bool)

(declare-fun d!2252563 () Bool)

(assert (= bs!1905629 (and d!2252563 d!2252359)))

(assert (=> bs!1905629 (= (dynLambda!28712 lambda!443569 (h!76788 (exprs!8068 ct1!232))) (validRegex!9539 (h!76788 (exprs!8068 ct1!232))))))

(assert (=> bs!1905629 m!7925888))

(assert (=> b!7248045 d!2252563))

(declare-fun b_lambda!278213 () Bool)

(assert (= b_lambda!278179 (or b!7247739 b_lambda!278213)))

(declare-fun bs!1905630 () Bool)

(declare-fun d!2252565 () Bool)

(assert (= bs!1905630 (and d!2252565 b!7247739)))

(assert (=> bs!1905630 (= (dynLambda!28712 lambda!443538 (h!76788 (exprs!8068 lt!2583556))) (validRegex!9539 (h!76788 (exprs!8068 lt!2583556))))))

(declare-fun m!7925900 () Bool)

(assert (=> bs!1905630 m!7925900))

(assert (=> b!7247981 d!2252565))

(declare-fun b_lambda!278215 () Bool)

(assert (= b_lambda!278195 (or b!7247744 b_lambda!278215)))

(declare-fun bs!1905631 () Bool)

(declare-fun d!2252567 () Bool)

(assert (= bs!1905631 (and d!2252567 b!7247744)))

(assert (=> bs!1905631 (= (dynLambda!28708 lambda!443539 lt!2583681) (matchZipper!3538 (set.insert lt!2583681 (as set.empty (Set Context!15136))) (t!384517 s1!1971)))))

(declare-fun m!7925902 () Bool)

(assert (=> bs!1905631 m!7925902))

(assert (=> bs!1905631 m!7925902))

(declare-fun m!7925904 () Bool)

(assert (=> bs!1905631 m!7925904))

(assert (=> d!2252545 d!2252567))

(push 1)

(assert (not bs!1905628))

(assert (not d!2252479))

(assert (not b_lambda!278205))

(assert (not b!7248085))

(assert (not b!7248112))

(assert (not d!2252415))

(assert (not b!7247989))

(assert (not b_lambda!278171))

(assert (not bs!1905624))

(assert (not b!7247974))

(assert (not b_lambda!278199))

(assert (not bm!660002))

(assert (not d!2252533))

(assert (not b!7248038))

(assert (not b_lambda!278217))

(assert (not b!7248040))

(assert (not b!7248048))

(assert (not b_lambda!278207))

(assert (not b!7248001))

(assert (not d!2252541))

(assert (not d!2252543))

(assert (not b!7247946))

(assert (not d!2252439))

(assert (not d!2252493))

(assert (not b!7248029))

(assert (not bm!659986))

(assert (not b!7248042))

(assert (not b!7247988))

(assert (not b!7248131))

(assert (not b!7247948))

(assert (not b!7247984))

(assert (not d!2252447))

(assert (not b_lambda!278209))

(assert (not b!7247980))

(assert (not b!7248009))

(assert (not b!7248128))

(assert (not b!7248109))

(assert (not b!7248028))

(assert (not b!7247990))

(assert (not b!7248010))

(assert (not b!7247958))

(assert tp_is_empty!46721)

(assert (not b!7248127))

(assert (not b!7248126))

(assert (not b!7247961))

(assert (not b!7248093))

(assert (not bm!659999))

(assert (not d!2252547))

(assert (not b!7248111))

(assert (not d!2252453))

(assert (not b_lambda!278201))

(assert (not d!2252469))

(assert (not b!7247972))

(assert (not b_lambda!278197))

(assert (not b!7248002))

(assert (not b!7248132))

(assert (not bs!1905629))

(assert (not b!7248130))

(assert (not b!7247947))

(assert (not b_lambda!278213))

(assert (not b!7248046))

(assert (not b!7248134))

(assert (not b_lambda!278203))

(assert (not b!7247970))

(assert (not b!7248050))

(assert (not d!2252459))

(assert (not b!7248011))

(assert (not b!7248023))

(assert (not d!2252475))

(assert (not bm!660004))

(assert (not d!2252429))

(assert (not b!7248017))

(assert (not b!7247973))

(assert (not b!7248125))

(assert (not b!7248019))

(assert (not b!7248030))

(assert (not d!2252489))

(assert (not b!7248087))

(assert (not b!7248133))

(assert (not b_lambda!278211))

(assert (not b!7247942))

(assert (not b!7247960))

(assert (not d!2252483))

(assert (not b!7248074))

(assert (not d!2252437))

(assert (not b!7248094))

(assert (not d!2252485))

(assert (not b!7248135))

(assert (not bs!1905623))

(assert (not b!7247996))

(assert (not b_lambda!278215))

(assert (not b!7248089))

(assert (not b!7248036))

(assert (not bs!1905625))

(assert (not b!7248044))

(assert (not b!7248090))

(assert (not d!2252463))

(assert (not d!2252413))

(assert (not b!7247985))

(assert (not b!7248025))

(assert (not b!7247956))

(assert (not b!7248026))

(assert (not b!7247944))

(assert (not b!7247968))

(assert (not d!2252535))

(assert (not bs!1905630))

(assert (not bs!1905622))

(assert (not d!2252525))

(assert (not d!2252503))

(assert (not d!2252545))

(assert (not b!7248021))

(assert (not b!7248091))

(assert (not bs!1905631))

(assert (not d!2252451))

(assert (not b!7248088))

(assert (not b!7247954))

(assert (not d!2252421))

(assert (not d!2252527))

(assert (not b!7247982))

(assert (not d!2252461))

(assert (not bs!1905627))

(assert (not d!2252481))

(assert (not d!2252487))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

