; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87398 () Bool)

(assert start!87398)

(declare-fun b!1012326 () Bool)

(assert (=> b!1012326 true))

(assert (=> b!1012326 true))

(declare-fun res!680049 () Bool)

(declare-fun e!569509 () Bool)

(assert (=> start!87398 (=> (not res!680049) (not e!569509))))

(declare-datatypes ((B!1338 0))(
  ( (B!1339 (val!11753 Int)) )
))
(declare-datatypes ((tuple2!15142 0))(
  ( (tuple2!15143 (_1!7581 (_ BitVec 64)) (_2!7581 B!1338)) )
))
(declare-datatypes ((List!21470 0))(
  ( (Nil!21467) (Cons!21466 (h!22664 tuple2!15142) (t!30479 List!21470)) )
))
(declare-fun l!412 () List!21470)

(declare-fun isStrictlySorted!529 (List!21470) Bool)

(assert (=> start!87398 (= res!680049 (isStrictlySorted!529 l!412))))

(assert (=> start!87398 e!569509))

(declare-fun e!569510 () Bool)

(assert (=> start!87398 e!569510))

(declare-fun tp_is_empty!23405 () Bool)

(assert (=> start!87398 tp_is_empty!23405))

(declare-fun b!1012322 () Bool)

(assert (=> b!1012322 (= e!569509 false)))

(declare-datatypes ((Unit!33021 0))(
  ( (Unit!33022) )
))
(declare-fun lt!447448 () Unit!33021)

(declare-fun e!569508 () Unit!33021)

(assert (=> b!1012322 (= lt!447448 e!569508)))

(declare-fun c!102228 () Bool)

(declare-datatypes ((List!21471 0))(
  ( (Nil!21468) (Cons!21467 (h!22665 (_ BitVec 64)) (t!30480 List!21471)) )
))
(declare-fun lt!447449 () List!21471)

(declare-fun isEmpty!795 (List!21471) Bool)

(assert (=> b!1012322 (= c!102228 (not (isEmpty!795 lt!447449)))))

(declare-fun value!115 () B!1338)

(declare-fun getKeysOf!18 (List!21470 B!1338) List!21471)

(assert (=> b!1012322 (= lt!447449 (getKeysOf!18 (t!30479 l!412) value!115))))

(declare-fun b!1012323 () Bool)

(declare-fun res!680050 () Bool)

(assert (=> b!1012323 (=> (not res!680050) (not e!569509))))

(assert (=> b!1012323 (= res!680050 (and (is-Cons!21466 l!412) (= (_2!7581 (h!22664 l!412)) value!115)))))

(declare-fun b!1012324 () Bool)

(declare-fun tp!70281 () Bool)

(assert (=> b!1012324 (= e!569510 (and tp_is_empty!23405 tp!70281))))

(declare-fun b!1012325 () Bool)

(declare-fun Unit!33023 () Unit!33021)

(assert (=> b!1012325 (= e!569508 Unit!33023)))

(declare-fun lt!447450 () Unit!33021)

(assert (=> b!1012326 (= e!569508 lt!447450)))

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!12 (List!21470 List!21471 B!1338 tuple2!15142) Unit!33021)

(assert (=> b!1012326 (= lt!447450 (lemmaForallGetValueByKeySameWithASmallerHead!12 (t!30479 l!412) lt!447449 value!115 (h!22664 l!412)))))

(declare-fun lambda!347 () Int)

(declare-fun forall!214 (List!21471 Int) Bool)

(assert (=> b!1012326 (forall!214 lt!447449 lambda!347)))

(assert (= (and start!87398 res!680049) b!1012323))

(assert (= (and b!1012323 res!680050) b!1012322))

(assert (= (and b!1012322 c!102228) b!1012326))

(assert (= (and b!1012322 (not c!102228)) b!1012325))

(assert (= (and start!87398 (is-Cons!21466 l!412)) b!1012324))

(declare-fun m!936083 () Bool)

(assert (=> start!87398 m!936083))

(declare-fun m!936085 () Bool)

(assert (=> b!1012322 m!936085))

(declare-fun m!936087 () Bool)

(assert (=> b!1012322 m!936087))

(declare-fun m!936089 () Bool)

(assert (=> b!1012326 m!936089))

(declare-fun m!936091 () Bool)

(assert (=> b!1012326 m!936091))

(push 1)

(assert (not b!1012322))

(assert (not b!1012326))

(assert tp_is_empty!23405)

(assert (not b!1012324))

(assert (not start!87398))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

