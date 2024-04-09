; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87394 () Bool)

(assert start!87394)

(declare-fun b!1012284 () Bool)

(assert (=> b!1012284 true))

(assert (=> b!1012284 true))

(declare-datatypes ((Unit!33015 0))(
  ( (Unit!33016) )
))
(declare-fun e!569491 () Unit!33015)

(declare-fun lt!447432 () Unit!33015)

(assert (=> b!1012284 (= e!569491 lt!447432)))

(declare-datatypes ((List!21466 0))(
  ( (Nil!21463) (Cons!21462 (h!22660 (_ BitVec 64)) (t!30475 List!21466)) )
))
(declare-fun lt!447430 () List!21466)

(declare-datatypes ((B!1334 0))(
  ( (B!1335 (val!11751 Int)) )
))
(declare-fun value!115 () B!1334)

(declare-datatypes ((tuple2!15138 0))(
  ( (tuple2!15139 (_1!7579 (_ BitVec 64)) (_2!7579 B!1334)) )
))
(declare-datatypes ((List!21467 0))(
  ( (Nil!21464) (Cons!21463 (h!22661 tuple2!15138) (t!30476 List!21467)) )
))
(declare-fun l!412 () List!21467)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!10 (List!21467 List!21466 B!1334 tuple2!15138) Unit!33015)

(assert (=> b!1012284 (= lt!447432 (lemmaForallGetValueByKeySameWithASmallerHead!10 (t!30476 l!412) lt!447430 value!115 (h!22661 l!412)))))

(declare-fun lambda!341 () Int)

(declare-fun forall!212 (List!21466 Int) Bool)

(assert (=> b!1012284 (forall!212 lt!447430 lambda!341)))

(declare-fun b!1012285 () Bool)

(declare-fun e!569490 () Bool)

(assert (=> b!1012285 (= e!569490 false)))

(declare-fun lt!447431 () Unit!33015)

(assert (=> b!1012285 (= lt!447431 e!569491)))

(declare-fun c!102222 () Bool)

(declare-fun isEmpty!793 (List!21466) Bool)

(assert (=> b!1012285 (= c!102222 (not (isEmpty!793 lt!447430)))))

(declare-fun getKeysOf!16 (List!21467 B!1334) List!21466)

(assert (=> b!1012285 (= lt!447430 (getKeysOf!16 (t!30476 l!412) value!115))))

(declare-fun b!1012286 () Bool)

(declare-fun res!680038 () Bool)

(assert (=> b!1012286 (=> (not res!680038) (not e!569490))))

(assert (=> b!1012286 (= res!680038 (and (is-Cons!21463 l!412) (= (_2!7579 (h!22661 l!412)) value!115)))))

(declare-fun b!1012287 () Bool)

(declare-fun e!569492 () Bool)

(declare-fun tp_is_empty!23401 () Bool)

(declare-fun tp!70275 () Bool)

(assert (=> b!1012287 (= e!569492 (and tp_is_empty!23401 tp!70275))))

(declare-fun res!680037 () Bool)

(assert (=> start!87394 (=> (not res!680037) (not e!569490))))

(declare-fun isStrictlySorted!527 (List!21467) Bool)

(assert (=> start!87394 (= res!680037 (isStrictlySorted!527 l!412))))

(assert (=> start!87394 e!569490))

(assert (=> start!87394 e!569492))

(assert (=> start!87394 tp_is_empty!23401))

(declare-fun b!1012288 () Bool)

(declare-fun Unit!33017 () Unit!33015)

(assert (=> b!1012288 (= e!569491 Unit!33017)))

(assert (= (and start!87394 res!680037) b!1012286))

(assert (= (and b!1012286 res!680038) b!1012285))

(assert (= (and b!1012285 c!102222) b!1012284))

(assert (= (and b!1012285 (not c!102222)) b!1012288))

(assert (= (and start!87394 (is-Cons!21463 l!412)) b!1012287))

(declare-fun m!936063 () Bool)

(assert (=> b!1012284 m!936063))

(declare-fun m!936065 () Bool)

(assert (=> b!1012284 m!936065))

(declare-fun m!936067 () Bool)

(assert (=> b!1012285 m!936067))

(declare-fun m!936069 () Bool)

(assert (=> b!1012285 m!936069))

(declare-fun m!936071 () Bool)

(assert (=> start!87394 m!936071))

(push 1)

(assert (not start!87394))

(assert (not b!1012284))

(assert tp_is_empty!23401)

(assert (not b!1012285))

(assert (not b!1012287))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

