; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87916 () Bool)

(assert start!87916)

(declare-fun b!1015338 () Bool)

(assert (=> b!1015338 true))

(assert (=> b!1015338 true))

(declare-fun res!681162 () Bool)

(declare-fun e!571216 () Bool)

(assert (=> start!87916 (=> (not res!681162) (not e!571216))))

(declare-datatypes ((B!1460 0))(
  ( (B!1461 (val!11814 Int)) )
))
(declare-datatypes ((tuple2!15264 0))(
  ( (tuple2!15265 (_1!7642 (_ BitVec 64)) (_2!7642 B!1460)) )
))
(declare-datatypes ((List!21574 0))(
  ( (Nil!21571) (Cons!21570 (h!22768 tuple2!15264) (t!30583 List!21574)) )
))
(declare-fun l!412 () List!21574)

(declare-fun isStrictlySorted!584 (List!21574) Bool)

(assert (=> start!87916 (= res!681162 (isStrictlySorted!584 l!412))))

(assert (=> start!87916 e!571216))

(declare-fun e!571217 () Bool)

(assert (=> start!87916 e!571217))

(declare-fun tp_is_empty!23527 () Bool)

(assert (=> start!87916 tp_is_empty!23527))

(declare-fun b!1015337 () Bool)

(declare-fun res!681163 () Bool)

(assert (=> b!1015337 (=> (not res!681163) (not e!571216))))

(declare-fun value!115 () B!1460)

(assert (=> b!1015337 (= res!681163 (and (or (not (is-Cons!21570 l!412)) (not (= (_2!7642 (h!22768 l!412)) value!115))) (or (not (is-Cons!21570 l!412)) (= (_2!7642 (h!22768 l!412)) value!115)) (is-Nil!21571 l!412)))))

(declare-fun lambda!893 () Int)

(declare-datatypes ((List!21575 0))(
  ( (Nil!21572) (Cons!21571 (h!22769 (_ BitVec 64)) (t!30584 List!21575)) )
))
(declare-fun forall!256 (List!21575 Int) Bool)

(assert (=> b!1015338 (= e!571216 (not (forall!256 Nil!21572 lambda!893)))))

(declare-fun b!1015339 () Bool)

(declare-fun tp!70611 () Bool)

(assert (=> b!1015339 (= e!571217 (and tp_is_empty!23527 tp!70611))))

(assert (= (and start!87916 res!681162) b!1015337))

(assert (= (and b!1015337 res!681163) b!1015338))

(assert (= (and start!87916 (is-Cons!21570 l!412)) b!1015339))

(declare-fun m!937623 () Bool)

(assert (=> start!87916 m!937623))

(declare-fun m!937625 () Bool)

(assert (=> b!1015338 m!937625))

(push 1)

(assert (not start!87916))

(assert (not b!1015338))

(assert (not b!1015339))

(assert tp_is_empty!23527)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120937 () Bool)

(declare-fun res!681188 () Bool)

(declare-fun e!571242 () Bool)

(assert (=> d!120937 (=> res!681188 e!571242)))

(assert (=> d!120937 (= res!681188 (or (is-Nil!21571 l!412) (is-Nil!21571 (t!30583 l!412))))))

(assert (=> d!120937 (= (isStrictlySorted!584 l!412) e!571242)))

(declare-fun b!1015382 () Bool)

(declare-fun e!571244 () Bool)

(assert (=> b!1015382 (= e!571242 e!571244)))

(declare-fun res!681190 () Bool)

(assert (=> b!1015382 (=> (not res!681190) (not e!571244))))

(assert (=> b!1015382 (= res!681190 (bvslt (_1!7642 (h!22768 l!412)) (_1!7642 (h!22768 (t!30583 l!412)))))))

(declare-fun b!1015384 () Bool)

(assert (=> b!1015384 (= e!571244 (isStrictlySorted!584 (t!30583 l!412)))))

(assert (= (and d!120937 (not res!681188)) b!1015382))

(assert (= (and b!1015382 res!681190) b!1015384))

(declare-fun m!937637 () Bool)

(assert (=> b!1015384 m!937637))

(assert (=> start!87916 d!120937))

(declare-fun d!120941 () Bool)

(declare-fun res!681206 () Bool)

(declare-fun e!571260 () Bool)

(assert (=> d!120941 (=> res!681206 e!571260)))

(assert (=> d!120941 (= res!681206 (is-Nil!21572 Nil!21572))))

(assert (=> d!120941 (= (forall!256 Nil!21572 lambda!893) e!571260)))

(declare-fun b!1015400 () Bool)

(declare-fun e!571261 () Bool)

(assert (=> b!1015400 (= e!571260 e!571261)))

(declare-fun res!681207 () Bool)

(assert (=> b!1015400 (=> (not res!681207) (not e!571261))))

(declare-fun dynLambda!1904 (Int (_ BitVec 64)) Bool)

(assert (=> b!1015400 (= res!681207 (dynLambda!1904 lambda!893 (h!22769 Nil!21572)))))

(declare-fun b!1015401 () Bool)

(assert (=> b!1015401 (= e!571261 (forall!256 (t!30584 Nil!21572) lambda!893))))

(assert (= (and d!120941 (not res!681206)) b!1015400))

(assert (= (and b!1015400 res!681207) b!1015401))

(declare-fun b_lambda!15448 () Bool)

(assert (=> (not b_lambda!15448) (not b!1015400)))

(declare-fun m!937644 () Bool)

(assert (=> b!1015400 m!937644))

(declare-fun m!937647 () Bool)

(assert (=> b!1015401 m!937647))

(assert (=> b!1015338 d!120941))

(declare-fun b!1015415 () Bool)

(declare-fun e!571271 () Bool)

(declare-fun tp!70623 () Bool)

(assert (=> b!1015415 (= e!571271 (and tp_is_empty!23527 tp!70623))))

(assert (=> b!1015339 (= tp!70611 e!571271)))

(assert (= (and b!1015339 (is-Cons!21570 (t!30583 l!412))) b!1015415))

(declare-fun b_lambda!15452 () Bool)

(assert (= b_lambda!15448 (or b!1015338 b_lambda!15452)))

(declare-fun bs!29433 () Bool)

(declare-fun d!120946 () Bool)

(assert (= bs!29433 (and d!120946 b!1015338)))

(declare-datatypes ((Option!588 0))(
  ( (Some!587 (v!14436 B!1460)) (None!586) )
))
(declare-fun getValueByKey!537 (List!21574 (_ BitVec 64)) Option!588)

(assert (=> bs!29433 (= (dynLambda!1904 lambda!893 (h!22769 Nil!21572)) (= (getValueByKey!537 l!412 (h!22769 Nil!21572)) (Some!587 value!115)))))

(declare-fun m!937655 () Bool)

(assert (=> bs!29433 m!937655))

(assert (=> b!1015400 d!120946))

(push 1)

