; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!703664 () Bool)

(assert start!703664)

(declare-fun b!7241486 () Bool)

(declare-fun e!4341649 () Bool)

(declare-datatypes ((C!37386 0))(
  ( (C!37387 (val!28641 Int)) )
))
(declare-datatypes ((Regex!18556 0))(
  ( (ElementMatch!18556 (c!1344848 C!37386)) (Concat!27401 (regOne!37624 Regex!18556) (regTwo!37624 Regex!18556)) (EmptyExpr!18556) (Star!18556 (reg!18885 Regex!18556)) (EmptyLang!18556) (Union!18556 (regOne!37625 Regex!18556) (regTwo!37625 Regex!18556)) )
))
(declare-datatypes ((List!70276 0))(
  ( (Nil!70152) (Cons!70152 (h!76600 Regex!18556) (t!384327 List!70276)) )
))
(declare-datatypes ((Context!14992 0))(
  ( (Context!14993 (exprs!7996 List!70276)) )
))
(declare-fun lt!2580155 () (Set Context!14992))

(declare-fun lambda!442016 () Int)

(declare-fun exists!4255 ((Set Context!14992) Int) Bool)

(assert (=> b!7241486 (= e!4341649 (not (exists!4255 lt!2580155 lambda!442016)))))

(declare-fun res!2937594 () Bool)

(declare-fun e!4341648 () Bool)

(assert (=> start!703664 (=> (not res!2937594) (not e!4341648))))

(declare-datatypes ((List!70277 0))(
  ( (Nil!70153) (Cons!70153 (h!76601 C!37386) (t!384328 List!70277)) )
))
(declare-fun s1!1971 () List!70277)

(declare-fun matchZipper!3466 ((Set Context!14992) List!70277) Bool)

(assert (=> start!703664 (= res!2937594 (matchZipper!3466 lt!2580155 s1!1971))))

(declare-fun ct1!232 () Context!14992)

(assert (=> start!703664 (= lt!2580155 (set.insert ct1!232 (as set.empty (Set Context!14992))))))

(assert (=> start!703664 e!4341648))

(declare-fun e!4341647 () Bool)

(declare-fun inv!89401 (Context!14992) Bool)

(assert (=> start!703664 (and (inv!89401 ct1!232) e!4341647)))

(declare-fun e!4341646 () Bool)

(assert (=> start!703664 e!4341646))

(declare-fun e!4341650 () Bool)

(assert (=> start!703664 e!4341650))

(declare-fun ct2!328 () Context!14992)

(declare-fun e!4341651 () Bool)

(assert (=> start!703664 (and (inv!89401 ct2!328) e!4341651)))

(declare-fun b!7241487 () Bool)

(declare-fun res!2937591 () Bool)

(assert (=> b!7241487 (=> (not res!2937591) (not e!4341649))))

(declare-fun nullableZipper!2850 ((Set Context!14992)) Bool)

(assert (=> b!7241487 (= res!2937591 (nullableZipper!2850 lt!2580155))))

(declare-fun b!7241488 () Bool)

(declare-fun tp!2035283 () Bool)

(assert (=> b!7241488 (= e!4341647 tp!2035283)))

(declare-fun b!7241489 () Bool)

(declare-fun res!2937593 () Bool)

(assert (=> b!7241489 (=> (not res!2937593) (not e!4341648))))

(declare-fun s2!1849 () List!70277)

(assert (=> b!7241489 (= res!2937593 (matchZipper!3466 (set.insert ct2!328 (as set.empty (Set Context!14992))) s2!1849))))

(declare-fun b!7241490 () Bool)

(assert (=> b!7241490 (= e!4341648 e!4341649)))

(declare-fun res!2937592 () Bool)

(assert (=> b!7241490 (=> (not res!2937592) (not e!4341649))))

(assert (=> b!7241490 (= res!2937592 (and (not (is-Nil!70152 (exprs!7996 ct1!232))) (not (is-Cons!70153 s1!1971))))))

(declare-fun lt!2580157 () List!70276)

(declare-fun ++!16412 (List!70276 List!70276) List!70276)

(assert (=> b!7241490 (= lt!2580157 (++!16412 (exprs!7996 ct1!232) (exprs!7996 ct2!328)))))

(declare-fun lambda!442015 () Int)

(declare-datatypes ((Unit!163698 0))(
  ( (Unit!163699) )
))
(declare-fun lt!2580156 () Unit!163698)

(declare-fun lemmaConcatPreservesForall!1365 (List!70276 List!70276 Int) Unit!163698)

(assert (=> b!7241490 (= lt!2580156 (lemmaConcatPreservesForall!1365 (exprs!7996 ct1!232) (exprs!7996 ct2!328) lambda!442015))))

(declare-fun b!7241491 () Bool)

(declare-fun tp_is_empty!46577 () Bool)

(declare-fun tp!2035282 () Bool)

(assert (=> b!7241491 (= e!4341650 (and tp_is_empty!46577 tp!2035282))))

(declare-fun b!7241492 () Bool)

(declare-fun tp!2035281 () Bool)

(assert (=> b!7241492 (= e!4341646 (and tp_is_empty!46577 tp!2035281))))

(declare-fun b!7241493 () Bool)

(declare-fun tp!2035284 () Bool)

(assert (=> b!7241493 (= e!4341651 tp!2035284)))

(assert (= (and start!703664 res!2937594) b!7241489))

(assert (= (and b!7241489 res!2937593) b!7241490))

(assert (= (and b!7241490 res!2937592) b!7241487))

(assert (= (and b!7241487 res!2937591) b!7241486))

(assert (= start!703664 b!7241488))

(assert (= (and start!703664 (is-Cons!70153 s1!1971)) b!7241492))

(assert (= (and start!703664 (is-Cons!70153 s2!1849)) b!7241491))

(assert (= start!703664 b!7241493))

(declare-fun m!7916012 () Bool)

(assert (=> b!7241489 m!7916012))

(assert (=> b!7241489 m!7916012))

(declare-fun m!7916014 () Bool)

(assert (=> b!7241489 m!7916014))

(declare-fun m!7916016 () Bool)

(assert (=> start!703664 m!7916016))

(declare-fun m!7916018 () Bool)

(assert (=> start!703664 m!7916018))

(declare-fun m!7916020 () Bool)

(assert (=> start!703664 m!7916020))

(declare-fun m!7916022 () Bool)

(assert (=> start!703664 m!7916022))

(declare-fun m!7916024 () Bool)

(assert (=> b!7241487 m!7916024))

(declare-fun m!7916026 () Bool)

(assert (=> b!7241490 m!7916026))

(declare-fun m!7916028 () Bool)

(assert (=> b!7241490 m!7916028))

(declare-fun m!7916030 () Bool)

(assert (=> b!7241486 m!7916030))

(push 1)

(assert (not b!7241491))

(assert tp_is_empty!46577)

(assert (not b!7241493))

(assert (not b!7241488))

(assert (not b!7241487))

(assert (not b!7241490))

(assert (not b!7241492))

(assert (not b!7241486))

(assert (not start!703664))

(assert (not b!7241489))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2249923 () Bool)

(declare-fun lt!2580169 () Bool)

(declare-datatypes ((List!70280 0))(
  ( (Nil!70156) (Cons!70156 (h!76604 Context!14992) (t!384331 List!70280)) )
))
(declare-fun exists!4257 (List!70280 Int) Bool)

(declare-fun toList!11413 ((Set Context!14992)) List!70280)

(assert (=> d!2249923 (= lt!2580169 (exists!4257 (toList!11413 lt!2580155) lambda!442016))))

(declare-fun choose!55787 ((Set Context!14992) Int) Bool)

(assert (=> d!2249923 (= lt!2580169 (choose!55787 lt!2580155 lambda!442016))))

(assert (=> d!2249923 (= (exists!4255 lt!2580155 lambda!442016) lt!2580169)))

(declare-fun bs!1904236 () Bool)

(assert (= bs!1904236 d!2249923))

(declare-fun m!7916052 () Bool)

(assert (=> bs!1904236 m!7916052))

(assert (=> bs!1904236 m!7916052))

(declare-fun m!7916054 () Bool)

(assert (=> bs!1904236 m!7916054))

(declare-fun m!7916056 () Bool)

(assert (=> bs!1904236 m!7916056))

(assert (=> b!7241486 d!2249923))

(declare-fun bs!1904237 () Bool)

(declare-fun d!2249925 () Bool)

(assert (= bs!1904237 (and d!2249925 b!7241486)))

(declare-fun lambda!442025 () Int)

(assert (=> bs!1904237 (= lambda!442025 lambda!442016)))

(assert (=> d!2249925 (= (nullableZipper!2850 lt!2580155) (exists!4255 lt!2580155 lambda!442025))))

(declare-fun bs!1904238 () Bool)

(assert (= bs!1904238 d!2249925))

(declare-fun m!7916058 () Bool)

(assert (=> bs!1904238 m!7916058))

(assert (=> b!7241487 d!2249925))

(declare-fun b!7241531 () Bool)

(declare-fun e!4341676 () List!70276)

(assert (=> b!7241531 (= e!4341676 (Cons!70152 (h!76600 (exprs!7996 ct1!232)) (++!16412 (t!384327 (exprs!7996 ct1!232)) (exprs!7996 ct2!328))))))

(declare-fun lt!2580172 () List!70276)

(declare-fun e!4341677 () Bool)

(declare-fun b!7241533 () Bool)

(assert (=> b!7241533 (= e!4341677 (or (not (= (exprs!7996 ct2!328) Nil!70152)) (= lt!2580172 (exprs!7996 ct1!232))))))

(declare-fun d!2249929 () Bool)

(assert (=> d!2249929 e!4341677))

(declare-fun res!2937612 () Bool)

(assert (=> d!2249929 (=> (not res!2937612) (not e!4341677))))

(declare-fun content!14491 (List!70276) (Set Regex!18556))

(assert (=> d!2249929 (= res!2937612 (= (content!14491 lt!2580172) (set.union (content!14491 (exprs!7996 ct1!232)) (content!14491 (exprs!7996 ct2!328)))))))

(assert (=> d!2249929 (= lt!2580172 e!4341676)))

(declare-fun c!1344858 () Bool)

(assert (=> d!2249929 (= c!1344858 (is-Nil!70152 (exprs!7996 ct1!232)))))

(assert (=> d!2249929 (= (++!16412 (exprs!7996 ct1!232) (exprs!7996 ct2!328)) lt!2580172)))

(declare-fun b!7241532 () Bool)

(declare-fun res!2937611 () Bool)

(assert (=> b!7241532 (=> (not res!2937611) (not e!4341677))))

(declare-fun size!41627 (List!70276) Int)

(assert (=> b!7241532 (= res!2937611 (= (size!41627 lt!2580172) (+ (size!41627 (exprs!7996 ct1!232)) (size!41627 (exprs!7996 ct2!328)))))))

(declare-fun b!7241530 () Bool)

(assert (=> b!7241530 (= e!4341676 (exprs!7996 ct2!328))))

(assert (= (and d!2249929 c!1344858) b!7241530))

(assert (= (and d!2249929 (not c!1344858)) b!7241531))

(assert (= (and d!2249929 res!2937612) b!7241532))

(assert (= (and b!7241532 res!2937611) b!7241533))

(declare-fun m!7916060 () Bool)

(assert (=> b!7241531 m!7916060))

(declare-fun m!7916062 () Bool)

(assert (=> d!2249929 m!7916062))

(declare-fun m!7916064 () Bool)

(assert (=> d!2249929 m!7916064))

(declare-fun m!7916066 () Bool)

(assert (=> d!2249929 m!7916066))

(declare-fun m!7916068 () Bool)

(assert (=> b!7241532 m!7916068))

(declare-fun m!7916070 () Bool)

(assert (=> b!7241532 m!7916070))

(declare-fun m!7916072 () Bool)

(assert (=> b!7241532 m!7916072))

(assert (=> b!7241490 d!2249929))

(declare-fun d!2249931 () Bool)

(declare-fun forall!17399 (List!70276 Int) Bool)

(assert (=> d!2249931 (forall!17399 (++!16412 (exprs!7996 ct1!232) (exprs!7996 ct2!328)) lambda!442015)))

(declare-fun lt!2580175 () Unit!163698)

(declare-fun choose!55788 (List!70276 List!70276 Int) Unit!163698)

(assert (=> d!2249931 (= lt!2580175 (choose!55788 (exprs!7996 ct1!232) (exprs!7996 ct2!328) lambda!442015))))

(assert (=> d!2249931 (forall!17399 (exprs!7996 ct1!232) lambda!442015)))

(assert (=> d!2249931 (= (lemmaConcatPreservesForall!1365 (exprs!7996 ct1!232) (exprs!7996 ct2!328) lambda!442015) lt!2580175)))

(declare-fun bs!1904239 () Bool)

(assert (= bs!1904239 d!2249931))

(assert (=> bs!1904239 m!7916026))

(assert (=> bs!1904239 m!7916026))

(declare-fun m!7916084 () Bool)

(assert (=> bs!1904239 m!7916084))

(declare-fun m!7916088 () Bool)

(assert (=> bs!1904239 m!7916088))

(declare-fun m!7916090 () Bool)

(assert (=> bs!1904239 m!7916090))

(assert (=> b!7241490 d!2249931))

(declare-fun d!2249933 () Bool)

(declare-fun c!1344862 () Bool)

(declare-fun isEmpty!40427 (List!70277) Bool)

(assert (=> d!2249933 (= c!1344862 (isEmpty!40427 s1!1971))))

(declare-fun e!4341681 () Bool)

(assert (=> d!2249933 (= (matchZipper!3466 lt!2580155 s1!1971) e!4341681)))

(declare-fun b!7241540 () Bool)

(assert (=> b!7241540 (= e!4341681 (nullableZipper!2850 lt!2580155))))

(declare-fun b!7241541 () Bool)

(declare-fun derivationStepZipper!3348 ((Set Context!14992) C!37386) (Set Context!14992))

(declare-fun head!14839 (List!70277) C!37386)

(declare-fun tail!14222 (List!70277) List!70277)

(assert (=> b!7241541 (= e!4341681 (matchZipper!3466 (derivationStepZipper!3348 lt!2580155 (head!14839 s1!1971)) (tail!14222 s1!1971)))))

(assert (= (and d!2249933 c!1344862) b!7241540))

(assert (= (and d!2249933 (not c!1344862)) b!7241541))

(declare-fun m!7916092 () Bool)

(assert (=> d!2249933 m!7916092))

(assert (=> b!7241540 m!7916024))

(declare-fun m!7916094 () Bool)

(assert (=> b!7241541 m!7916094))

(assert (=> b!7241541 m!7916094))

(declare-fun m!7916096 () Bool)

(assert (=> b!7241541 m!7916096))

(declare-fun m!7916098 () Bool)

(assert (=> b!7241541 m!7916098))

(assert (=> b!7241541 m!7916096))

(assert (=> b!7241541 m!7916098))

(declare-fun m!7916100 () Bool)

(assert (=> b!7241541 m!7916100))

(assert (=> start!703664 d!2249933))

(declare-fun bs!1904240 () Bool)

(declare-fun d!2249937 () Bool)

(assert (= bs!1904240 (and d!2249937 b!7241490)))

(declare-fun lambda!442028 () Int)

(assert (=> bs!1904240 (= lambda!442028 lambda!442015)))

(assert (=> d!2249937 (= (inv!89401 ct1!232) (forall!17399 (exprs!7996 ct1!232) lambda!442028))))

(declare-fun bs!1904241 () Bool)

(assert (= bs!1904241 d!2249937))

(declare-fun m!7916102 () Bool)

(assert (=> bs!1904241 m!7916102))

(assert (=> start!703664 d!2249937))

(declare-fun bs!1904242 () Bool)

(declare-fun d!2249939 () Bool)

(assert (= bs!1904242 (and d!2249939 b!7241490)))

(declare-fun lambda!442029 () Int)

(assert (=> bs!1904242 (= lambda!442029 lambda!442015)))

(declare-fun bs!1904243 () Bool)

(assert (= bs!1904243 (and d!2249939 d!2249937)))

(assert (=> bs!1904243 (= lambda!442029 lambda!442028)))

(assert (=> d!2249939 (= (inv!89401 ct2!328) (forall!17399 (exprs!7996 ct2!328) lambda!442029))))

(declare-fun bs!1904244 () Bool)

(assert (= bs!1904244 d!2249939))

(declare-fun m!7916104 () Bool)

(assert (=> bs!1904244 m!7916104))

(assert (=> start!703664 d!2249939))

(declare-fun d!2249941 () Bool)

(declare-fun c!1344865 () Bool)

(assert (=> d!2249941 (= c!1344865 (isEmpty!40427 s2!1849))))

(declare-fun e!4341686 () Bool)

(assert (=> d!2249941 (= (matchZipper!3466 (set.insert ct2!328 (as set.empty (Set Context!14992))) s2!1849) e!4341686)))

(declare-fun b!7241550 () Bool)

(assert (=> b!7241550 (= e!4341686 (nullableZipper!2850 (set.insert ct2!328 (as set.empty (Set Context!14992)))))))

(declare-fun b!7241551 () Bool)

(assert (=> b!7241551 (= e!4341686 (matchZipper!3466 (derivationStepZipper!3348 (set.insert ct2!328 (as set.empty (Set Context!14992))) (head!14839 s2!1849)) (tail!14222 s2!1849)))))

(assert (= (and d!2249941 c!1344865) b!7241550))

(assert (= (and d!2249941 (not c!1344865)) b!7241551))

(declare-fun m!7916106 () Bool)

(assert (=> d!2249941 m!7916106))

(assert (=> b!7241550 m!7916012))

(declare-fun m!7916108 () Bool)

(assert (=> b!7241550 m!7916108))

(declare-fun m!7916110 () Bool)

(assert (=> b!7241551 m!7916110))

(assert (=> b!7241551 m!7916012))

(assert (=> b!7241551 m!7916110))

(declare-fun m!7916112 () Bool)

(assert (=> b!7241551 m!7916112))

(declare-fun m!7916114 () Bool)

(assert (=> b!7241551 m!7916114))

(assert (=> b!7241551 m!7916112))

(assert (=> b!7241551 m!7916114))

(declare-fun m!7916116 () Bool)

(assert (=> b!7241551 m!7916116))

(assert (=> b!7241489 d!2249941))

(declare-fun b!7241556 () Bool)

(declare-fun e!4341689 () Bool)

(declare-fun tp!2035301 () Bool)

(declare-fun tp!2035302 () Bool)

(assert (=> b!7241556 (= e!4341689 (and tp!2035301 tp!2035302))))

(assert (=> b!7241493 (= tp!2035284 e!4341689)))

(assert (= (and b!7241493 (is-Cons!70152 (exprs!7996 ct2!328))) b!7241556))

(declare-fun b!7241557 () Bool)

(declare-fun e!4341690 () Bool)

(declare-fun tp!2035303 () Bool)

(declare-fun tp!2035304 () Bool)

(assert (=> b!7241557 (= e!4341690 (and tp!2035303 tp!2035304))))

(assert (=> b!7241488 (= tp!2035283 e!4341690)))

(assert (= (and b!7241488 (is-Cons!70152 (exprs!7996 ct1!232))) b!7241557))

(declare-fun b!7241562 () Bool)

(declare-fun e!4341693 () Bool)

(declare-fun tp!2035307 () Bool)

(assert (=> b!7241562 (= e!4341693 (and tp_is_empty!46577 tp!2035307))))

(assert (=> b!7241492 (= tp!2035281 e!4341693)))

(assert (= (and b!7241492 (is-Cons!70153 (t!384328 s1!1971))) b!7241562))

(declare-fun b!7241563 () Bool)

(declare-fun e!4341694 () Bool)

(declare-fun tp!2035308 () Bool)

(assert (=> b!7241563 (= e!4341694 (and tp_is_empty!46577 tp!2035308))))

(assert (=> b!7241491 (= tp!2035282 e!4341694)))

(assert (= (and b!7241491 (is-Cons!70153 (t!384328 s2!1849))) b!7241563))

(push 1)

(assert (not d!2249925))

(assert tp_is_empty!46577)

(assert (not d!2249937))

(assert (not b!7241550))

(assert (not b!7241541))

(assert (not d!2249923))

(assert (not b!7241562))

(assert (not d!2249931))

(assert (not b!7241531))

(assert (not b!7241540))

(assert (not d!2249933))

(assert (not b!7241556))

(assert (not b!7241532))

(assert (not d!2249929))

(assert (not d!2249941))

(assert (not b!7241563))

(assert (not b!7241557))

(assert (not d!2249939))

(assert (not b!7241551))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

