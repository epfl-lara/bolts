; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!683294 () Bool)

(assert start!683294)

(declare-fun setIsEmpty!49664 () Bool)

(declare-fun setRes!49664 () Bool)

(assert (=> setIsEmpty!49664 setRes!49664))

(declare-fun b!7051515 () Bool)

(declare-fun e!4239200 () Bool)

(declare-fun lt!2529747 () Int)

(declare-fun lt!2529746 () Int)

(assert (=> b!7051515 (= e!4239200 (or (< lt!2529747 0) (< lt!2529746 0)))))

(declare-datatypes ((C!35354 0))(
  ( (C!35355 (val!27379 Int)) )
))
(declare-datatypes ((Regex!17542 0))(
  ( (ElementMatch!17542 (c!1313411 C!35354)) (Concat!26387 (regOne!35596 Regex!17542) (regTwo!35596 Regex!17542)) (EmptyExpr!17542) (Star!17542 (reg!17871 Regex!17542)) (EmptyLang!17542) (Union!17542 (regOne!35597 Regex!17542) (regTwo!35597 Regex!17542)) )
))
(declare-datatypes ((List!68152 0))(
  ( (Nil!68028) (Cons!68028 (h!74476 Regex!17542) (t!381931 List!68152)) )
))
(declare-datatypes ((Context!13076 0))(
  ( (Context!13077 (exprs!7038 List!68152)) )
))
(declare-fun z1!570 () (Set Context!13076))

(declare-datatypes ((List!68153 0))(
  ( (Nil!68029) (Cons!68029 (h!74477 Context!13076) (t!381932 List!68153)) )
))
(declare-fun zipperDepthTotal!545 (List!68153) Int)

(declare-fun toList!10883 ((Set Context!13076)) List!68153)

(assert (=> b!7051515 (= lt!2529746 (zipperDepthTotal!545 (toList!10883 z1!570)))))

(declare-datatypes ((List!68154 0))(
  ( (Nil!68030) (Cons!68030 (h!74478 C!35354) (t!381933 List!68154)) )
))
(declare-fun s!7408 () List!68154)

(declare-fun ListPrimitiveSize!403 (List!68154) Int)

(assert (=> b!7051515 (= lt!2529747 (ListPrimitiveSize!403 s!7408))))

(declare-fun res!2878840 () Bool)

(assert (=> start!683294 (=> (not res!2878840) (not e!4239200))))

(declare-fun ct2!306 () Context!13076)

(declare-fun matchZipper!3082 ((Set Context!13076) List!68154) Bool)

(declare-fun appendTo!663 ((Set Context!13076) Context!13076) (Set Context!13076))

(assert (=> start!683294 (= res!2878840 (matchZipper!3082 (appendTo!663 z1!570 ct2!306) s!7408))))

(assert (=> start!683294 e!4239200))

(declare-fun condSetEmpty!49664 () Bool)

(assert (=> start!683294 (= condSetEmpty!49664 (= z1!570 (as set.empty (Set Context!13076))))))

(assert (=> start!683294 setRes!49664))

(declare-fun e!4239199 () Bool)

(declare-fun inv!86715 (Context!13076) Bool)

(assert (=> start!683294 (and (inv!86715 ct2!306) e!4239199)))

(declare-fun e!4239198 () Bool)

(assert (=> start!683294 e!4239198))

(declare-fun setElem!49664 () Context!13076)

(declare-fun tp!1939214 () Bool)

(declare-fun setNonEmpty!49664 () Bool)

(declare-fun e!4239197 () Bool)

(assert (=> setNonEmpty!49664 (= setRes!49664 (and tp!1939214 (inv!86715 setElem!49664) e!4239197))))

(declare-fun setRest!49664 () (Set Context!13076))

(assert (=> setNonEmpty!49664 (= z1!570 (set.union (set.insert setElem!49664 (as set.empty (Set Context!13076))) setRest!49664))))

(declare-fun b!7051516 () Bool)

(declare-fun tp!1939211 () Bool)

(assert (=> b!7051516 (= e!4239197 tp!1939211)))

(declare-fun b!7051517 () Bool)

(declare-fun tp_is_empty!44309 () Bool)

(declare-fun tp!1939213 () Bool)

(assert (=> b!7051517 (= e!4239198 (and tp_is_empty!44309 tp!1939213))))

(declare-fun b!7051518 () Bool)

(declare-fun tp!1939212 () Bool)

(assert (=> b!7051518 (= e!4239199 tp!1939212)))

(assert (= (and start!683294 res!2878840) b!7051515))

(assert (= (and start!683294 condSetEmpty!49664) setIsEmpty!49664))

(assert (= (and start!683294 (not condSetEmpty!49664)) setNonEmpty!49664))

(assert (= setNonEmpty!49664 b!7051516))

(assert (= start!683294 b!7051518))

(assert (= (and start!683294 (is-Cons!68030 s!7408)) b!7051517))

(declare-fun m!7767894 () Bool)

(assert (=> b!7051515 m!7767894))

(assert (=> b!7051515 m!7767894))

(declare-fun m!7767896 () Bool)

(assert (=> b!7051515 m!7767896))

(declare-fun m!7767898 () Bool)

(assert (=> b!7051515 m!7767898))

(declare-fun m!7767900 () Bool)

(assert (=> start!683294 m!7767900))

(assert (=> start!683294 m!7767900))

(declare-fun m!7767902 () Bool)

(assert (=> start!683294 m!7767902))

(declare-fun m!7767904 () Bool)

(assert (=> start!683294 m!7767904))

(declare-fun m!7767906 () Bool)

(assert (=> setNonEmpty!49664 m!7767906))

(push 1)

(assert (not b!7051515))

(assert (not start!683294))

(assert (not b!7051516))

(assert (not b!7051518))

(assert (not setNonEmpty!49664))

(assert (not b!7051517))

(assert tp_is_empty!44309)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2203377 () Bool)

(declare-fun lambda!419094 () Int)

(declare-fun forall!16475 (List!68152 Int) Bool)

(assert (=> d!2203377 (= (inv!86715 setElem!49664) (forall!16475 (exprs!7038 setElem!49664) lambda!419094))))

(declare-fun bs!1876259 () Bool)

(assert (= bs!1876259 d!2203377))

(declare-fun m!7767934 () Bool)

(assert (=> bs!1876259 m!7767934))

(assert (=> setNonEmpty!49664 d!2203377))

(declare-fun d!2203383 () Bool)

(declare-fun lt!2529756 () Int)

(assert (=> d!2203383 (>= lt!2529756 0)))

(declare-fun e!4239218 () Int)

(assert (=> d!2203383 (= lt!2529756 e!4239218)))

(declare-fun c!1313419 () Bool)

(assert (=> d!2203383 (= c!1313419 (is-Cons!68029 (toList!10883 z1!570)))))

(assert (=> d!2203383 (= (zipperDepthTotal!545 (toList!10883 z1!570)) lt!2529756)))

(declare-fun b!7051541 () Bool)

(declare-fun contextDepthTotal!517 (Context!13076) Int)

(assert (=> b!7051541 (= e!4239218 (+ (contextDepthTotal!517 (h!74477 (toList!10883 z1!570))) (zipperDepthTotal!545 (t!381932 (toList!10883 z1!570)))))))

(declare-fun b!7051542 () Bool)

(assert (=> b!7051542 (= e!4239218 0)))

(assert (= (and d!2203383 c!1313419) b!7051541))

(assert (= (and d!2203383 (not c!1313419)) b!7051542))

(declare-fun m!7767936 () Bool)

(assert (=> b!7051541 m!7767936))

(declare-fun m!7767938 () Bool)

(assert (=> b!7051541 m!7767938))

(assert (=> b!7051515 d!2203383))

(declare-fun d!2203385 () Bool)

(declare-fun e!4239221 () Bool)

(assert (=> d!2203385 e!4239221))

(declare-fun res!2878846 () Bool)

(assert (=> d!2203385 (=> (not res!2878846) (not e!4239221))))

(declare-fun lt!2529759 () List!68153)

(declare-fun noDuplicate!2669 (List!68153) Bool)

(assert (=> d!2203385 (= res!2878846 (noDuplicate!2669 lt!2529759))))

(declare-fun choose!53699 ((Set Context!13076)) List!68153)

(assert (=> d!2203385 (= lt!2529759 (choose!53699 z1!570))))

(assert (=> d!2203385 (= (toList!10883 z1!570) lt!2529759)))

(declare-fun b!7051545 () Bool)

(declare-fun content!13647 (List!68153) (Set Context!13076))

(assert (=> b!7051545 (= e!4239221 (= (content!13647 lt!2529759) z1!570))))

(assert (= (and d!2203385 res!2878846) b!7051545))

(declare-fun m!7767940 () Bool)

(assert (=> d!2203385 m!7767940))

(declare-fun m!7767942 () Bool)

(assert (=> d!2203385 m!7767942))

(declare-fun m!7767944 () Bool)

(assert (=> b!7051545 m!7767944))

(assert (=> b!7051515 d!2203385))

(declare-fun d!2203387 () Bool)

(declare-fun lt!2529762 () Int)

(assert (=> d!2203387 (>= lt!2529762 0)))

(declare-fun e!4239224 () Int)

(assert (=> d!2203387 (= lt!2529762 e!4239224)))

(declare-fun c!1313422 () Bool)

(assert (=> d!2203387 (= c!1313422 (is-Nil!68030 s!7408))))

(assert (=> d!2203387 (= (ListPrimitiveSize!403 s!7408) lt!2529762)))

(declare-fun b!7051550 () Bool)

(assert (=> b!7051550 (= e!4239224 0)))

(declare-fun b!7051551 () Bool)

(assert (=> b!7051551 (= e!4239224 (+ 1 (ListPrimitiveSize!403 (t!381933 s!7408))))))

(assert (= (and d!2203387 c!1313422) b!7051550))

(assert (= (and d!2203387 (not c!1313422)) b!7051551))

(declare-fun m!7767946 () Bool)

(assert (=> b!7051551 m!7767946))

(assert (=> b!7051515 d!2203387))

(declare-fun d!2203389 () Bool)

(declare-fun c!1313425 () Bool)

(declare-fun isEmpty!39690 (List!68154) Bool)

(assert (=> d!2203389 (= c!1313425 (isEmpty!39690 s!7408))))

(declare-fun e!4239227 () Bool)

(assert (=> d!2203389 (= (matchZipper!3082 (appendTo!663 z1!570 ct2!306) s!7408) e!4239227)))

(declare-fun b!7051556 () Bool)

(declare-fun nullableZipper!2635 ((Set Context!13076)) Bool)

(assert (=> b!7051556 (= e!4239227 (nullableZipper!2635 (appendTo!663 z1!570 ct2!306)))))

(declare-fun b!7051557 () Bool)

(declare-fun derivationStepZipper!2995 ((Set Context!13076) C!35354) (Set Context!13076))

(declare-fun head!14335 (List!68154) C!35354)

(declare-fun tail!13664 (List!68154) List!68154)

(assert (=> b!7051557 (= e!4239227 (matchZipper!3082 (derivationStepZipper!2995 (appendTo!663 z1!570 ct2!306) (head!14335 s!7408)) (tail!13664 s!7408)))))

(assert (= (and d!2203389 c!1313425) b!7051556))

(assert (= (and d!2203389 (not c!1313425)) b!7051557))

(declare-fun m!7767948 () Bool)

(assert (=> d!2203389 m!7767948))

(assert (=> b!7051556 m!7767900))

(declare-fun m!7767950 () Bool)

(assert (=> b!7051556 m!7767950))

(declare-fun m!7767952 () Bool)

(assert (=> b!7051557 m!7767952))

(assert (=> b!7051557 m!7767900))

(assert (=> b!7051557 m!7767952))

(declare-fun m!7767954 () Bool)

(assert (=> b!7051557 m!7767954))

(declare-fun m!7767956 () Bool)

(assert (=> b!7051557 m!7767956))

(assert (=> b!7051557 m!7767954))

(assert (=> b!7051557 m!7767956))

(declare-fun m!7767958 () Bool)

(assert (=> b!7051557 m!7767958))

(assert (=> start!683294 d!2203389))

(declare-fun d!2203391 () Bool)

(assert (=> d!2203391 true))

(declare-fun lambda!419099 () Int)

(declare-fun map!15858 ((Set Context!13076) Int) (Set Context!13076))

(assert (=> d!2203391 (= (appendTo!663 z1!570 ct2!306) (map!15858 z1!570 lambda!419099))))

(declare-fun bs!1876260 () Bool)

(assert (= bs!1876260 d!2203391))

(declare-fun m!7767960 () Bool)

(assert (=> bs!1876260 m!7767960))

(assert (=> start!683294 d!2203391))

(declare-fun bs!1876261 () Bool)

(declare-fun d!2203393 () Bool)

(assert (= bs!1876261 (and d!2203393 d!2203377)))

(declare-fun lambda!419100 () Int)

(assert (=> bs!1876261 (= lambda!419100 lambda!419094)))

(assert (=> d!2203393 (= (inv!86715 ct2!306) (forall!16475 (exprs!7038 ct2!306) lambda!419100))))

(declare-fun bs!1876262 () Bool)

(assert (= bs!1876262 d!2203393))

(declare-fun m!7767962 () Bool)

(assert (=> bs!1876262 m!7767962))

(assert (=> start!683294 d!2203393))

(declare-fun b!7051564 () Bool)

(declare-fun e!4239230 () Bool)

(declare-fun tp!1939231 () Bool)

(declare-fun tp!1939232 () Bool)

(assert (=> b!7051564 (= e!4239230 (and tp!1939231 tp!1939232))))

(assert (=> b!7051516 (= tp!1939211 e!4239230)))

(assert (= (and b!7051516 (is-Cons!68028 (exprs!7038 setElem!49664))) b!7051564))

(declare-fun condSetEmpty!49670 () Bool)

(assert (=> setNonEmpty!49664 (= condSetEmpty!49670 (= setRest!49664 (as set.empty (Set Context!13076))))))

(declare-fun setRes!49670 () Bool)

(assert (=> setNonEmpty!49664 (= tp!1939214 setRes!49670)))

(declare-fun setIsEmpty!49670 () Bool)

(assert (=> setIsEmpty!49670 setRes!49670))

(declare-fun setElem!49670 () Context!13076)

(declare-fun setNonEmpty!49670 () Bool)

(declare-fun e!4239233 () Bool)

(declare-fun tp!1939237 () Bool)

(assert (=> setNonEmpty!49670 (= setRes!49670 (and tp!1939237 (inv!86715 setElem!49670) e!4239233))))

(declare-fun setRest!49670 () (Set Context!13076))

(assert (=> setNonEmpty!49670 (= setRest!49664 (set.union (set.insert setElem!49670 (as set.empty (Set Context!13076))) setRest!49670))))

(declare-fun b!7051569 () Bool)

(declare-fun tp!1939238 () Bool)

(assert (=> b!7051569 (= e!4239233 tp!1939238)))

(assert (= (and setNonEmpty!49664 condSetEmpty!49670) setIsEmpty!49670))

(assert (= (and setNonEmpty!49664 (not condSetEmpty!49670)) setNonEmpty!49670))

(assert (= setNonEmpty!49670 b!7051569))

(declare-fun m!7767964 () Bool)

(assert (=> setNonEmpty!49670 m!7767964))

(declare-fun b!7051570 () Bool)

(declare-fun e!4239234 () Bool)

(declare-fun tp!1939239 () Bool)

(declare-fun tp!1939240 () Bool)

(assert (=> b!7051570 (= e!4239234 (and tp!1939239 tp!1939240))))

(assert (=> b!7051518 (= tp!1939212 e!4239234)))

(assert (= (and b!7051518 (is-Cons!68028 (exprs!7038 ct2!306))) b!7051570))

(declare-fun b!7051575 () Bool)

(declare-fun e!4239237 () Bool)

(declare-fun tp!1939243 () Bool)

(assert (=> b!7051575 (= e!4239237 (and tp_is_empty!44309 tp!1939243))))

(assert (=> b!7051517 (= tp!1939213 e!4239237)))

(assert (= (and b!7051517 (is-Cons!68030 (t!381933 s!7408))) b!7051575))

(push 1)

(assert (not b!7051551))

(assert (not b!7051575))

(assert (not b!7051569))

(assert (not d!2203393))

(assert (not b!7051545))

(assert (not d!2203389))

(assert (not b!7051556))

(assert (not setNonEmpty!49670))

(assert (not b!7051564))

(assert (not d!2203377))

(assert (not b!7051570))

(assert (not d!2203385))

(assert (not b!7051541))

(assert (not d!2203391))

(assert (not b!7051557))

(assert tp_is_empty!44309)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

