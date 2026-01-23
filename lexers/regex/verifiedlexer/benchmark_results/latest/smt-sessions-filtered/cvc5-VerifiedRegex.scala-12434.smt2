; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694190 () Bool)

(assert start!694190)

(declare-fun b!7125120 () Bool)

(declare-fun e!4281755 () Bool)

(declare-datatypes ((C!36270 0))(
  ( (C!36271 (val!28061 Int)) )
))
(declare-datatypes ((Regex!18000 0))(
  ( (ElementMatch!18000 (c!1329342 C!36270)) (Concat!26845 (regOne!36512 Regex!18000) (regTwo!36512 Regex!18000)) (EmptyExpr!18000) (Star!18000 (reg!18329 Regex!18000)) (EmptyLang!18000) (Union!18000 (regOne!36513 Regex!18000) (regTwo!36513 Regex!18000)) )
))
(declare-datatypes ((List!69051 0))(
  ( (Nil!68927) (Cons!68927 (h!75375 Regex!18000) (t!383028 List!69051)) )
))
(declare-datatypes ((Context!13988 0))(
  ( (Context!13989 (exprs!7494 List!69051)) )
))
(declare-datatypes ((List!69052 0))(
  ( (Nil!68928) (Cons!68928 (h!75376 Context!13988) (t!383029 List!69052)) )
))
(declare-fun zl!1616 () List!69052)

(assert (=> b!7125120 (= e!4281755 (not (is-Cons!68928 zl!1616)))))

(declare-fun res!2907272 () Bool)

(assert (=> start!694190 (=> (not res!2907272) (not e!4281755))))

(declare-fun c!9962 () Context!13988)

(declare-fun contains!20542 (List!69052 Context!13988) Bool)

(assert (=> start!694190 (= res!2907272 (contains!20542 zl!1616 c!9962))))

(assert (=> start!694190 e!4281755))

(declare-fun e!4281756 () Bool)

(assert (=> start!694190 e!4281756))

(declare-fun e!4281757 () Bool)

(declare-fun inv!88029 (Context!13988) Bool)

(assert (=> start!694190 (and (inv!88029 c!9962) e!4281757)))

(declare-fun b!7125123 () Bool)

(declare-fun tp!1962460 () Bool)

(assert (=> b!7125123 (= e!4281757 tp!1962460)))

(declare-fun e!4281754 () Bool)

(declare-fun tp!1962458 () Bool)

(declare-fun b!7125121 () Bool)

(assert (=> b!7125121 (= e!4281756 (and (inv!88029 (h!75376 zl!1616)) e!4281754 tp!1962458))))

(declare-fun b!7125122 () Bool)

(declare-fun tp!1962459 () Bool)

(assert (=> b!7125122 (= e!4281754 tp!1962459)))

(assert (= (and start!694190 res!2907272) b!7125120))

(assert (= b!7125121 b!7125122))

(assert (= (and start!694190 (is-Cons!68928 zl!1616)) b!7125121))

(assert (= start!694190 b!7125123))

(declare-fun m!7842402 () Bool)

(assert (=> start!694190 m!7842402))

(declare-fun m!7842404 () Bool)

(assert (=> start!694190 m!7842404))

(declare-fun m!7842406 () Bool)

(assert (=> b!7125121 m!7842406))

(push 1)

(assert (not start!694190))

(assert (not b!7125121))

(assert (not b!7125123))

(assert (not b!7125122))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2223537 () Bool)

(declare-fun lt!2563047 () Bool)

(declare-fun content!14109 (List!69052) (Set Context!13988))

(assert (=> d!2223537 (= lt!2563047 (set.member c!9962 (content!14109 zl!1616)))))

(declare-fun e!4281774 () Bool)

(assert (=> d!2223537 (= lt!2563047 e!4281774)))

(declare-fun res!2907281 () Bool)

(assert (=> d!2223537 (=> (not res!2907281) (not e!4281774))))

(assert (=> d!2223537 (= res!2907281 (is-Cons!68928 zl!1616))))

(assert (=> d!2223537 (= (contains!20542 zl!1616 c!9962) lt!2563047)))

(declare-fun b!7125140 () Bool)

(declare-fun e!4281775 () Bool)

(assert (=> b!7125140 (= e!4281774 e!4281775)))

(declare-fun res!2907280 () Bool)

(assert (=> b!7125140 (=> res!2907280 e!4281775)))

(assert (=> b!7125140 (= res!2907280 (= (h!75376 zl!1616) c!9962))))

(declare-fun b!7125141 () Bool)

(assert (=> b!7125141 (= e!4281775 (contains!20542 (t!383029 zl!1616) c!9962))))

(assert (= (and d!2223537 res!2907281) b!7125140))

(assert (= (and b!7125140 (not res!2907280)) b!7125141))

(declare-fun m!7842414 () Bool)

(assert (=> d!2223537 m!7842414))

(declare-fun m!7842416 () Bool)

(assert (=> d!2223537 m!7842416))

(declare-fun m!7842418 () Bool)

(assert (=> b!7125141 m!7842418))

(assert (=> start!694190 d!2223537))

(declare-fun d!2223539 () Bool)

(declare-fun lambda!432995 () Int)

(declare-fun forall!16909 (List!69051 Int) Bool)

(assert (=> d!2223539 (= (inv!88029 c!9962) (forall!16909 (exprs!7494 c!9962) lambda!432995))))

(declare-fun bs!1886317 () Bool)

(assert (= bs!1886317 d!2223539))

(declare-fun m!7842426 () Bool)

(assert (=> bs!1886317 m!7842426))

(assert (=> start!694190 d!2223539))

(declare-fun bs!1886318 () Bool)

(declare-fun d!2223545 () Bool)

(assert (= bs!1886318 (and d!2223545 d!2223539)))

(declare-fun lambda!432996 () Int)

(assert (=> bs!1886318 (= lambda!432996 lambda!432995)))

(assert (=> d!2223545 (= (inv!88029 (h!75376 zl!1616)) (forall!16909 (exprs!7494 (h!75376 zl!1616)) lambda!432996))))

(declare-fun bs!1886319 () Bool)

(assert (= bs!1886319 d!2223545))

(declare-fun m!7842428 () Bool)

(assert (=> bs!1886319 m!7842428))

(assert (=> b!7125121 d!2223545))

(declare-fun b!7125152 () Bool)

(declare-fun e!4281784 () Bool)

(declare-fun tp!1962474 () Bool)

(declare-fun tp!1962475 () Bool)

(assert (=> b!7125152 (= e!4281784 (and tp!1962474 tp!1962475))))

(assert (=> b!7125123 (= tp!1962460 e!4281784)))

(assert (= (and b!7125123 (is-Cons!68927 (exprs!7494 c!9962))) b!7125152))

(declare-fun b!7125160 () Bool)

(declare-fun e!4281790 () Bool)

(declare-fun tp!1962480 () Bool)

(assert (=> b!7125160 (= e!4281790 tp!1962480)))

(declare-fun tp!1962481 () Bool)

(declare-fun e!4281789 () Bool)

(declare-fun b!7125159 () Bool)

(assert (=> b!7125159 (= e!4281789 (and (inv!88029 (h!75376 (t!383029 zl!1616))) e!4281790 tp!1962481))))

(assert (=> b!7125121 (= tp!1962458 e!4281789)))

(assert (= b!7125159 b!7125160))

(assert (= (and b!7125121 (is-Cons!68928 (t!383029 zl!1616))) b!7125159))

(declare-fun m!7842430 () Bool)

(assert (=> b!7125159 m!7842430))

(declare-fun b!7125161 () Bool)

(declare-fun e!4281791 () Bool)

(declare-fun tp!1962482 () Bool)

(declare-fun tp!1962483 () Bool)

(assert (=> b!7125161 (= e!4281791 (and tp!1962482 tp!1962483))))

(assert (=> b!7125122 (= tp!1962459 e!4281791)))

(assert (= (and b!7125122 (is-Cons!68927 (exprs!7494 (h!75376 zl!1616)))) b!7125161))

(push 1)

(assert (not d!2223537))

(assert (not b!7125159))

(assert (not b!7125152))

(assert (not d!2223545))

(assert (not b!7125141))

(assert (not b!7125161))

(assert (not d!2223539))

(assert (not b!7125160))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

