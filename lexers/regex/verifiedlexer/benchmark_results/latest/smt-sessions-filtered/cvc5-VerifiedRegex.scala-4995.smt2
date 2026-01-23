; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252730 () Bool)

(assert start!252730)

(declare-fun b!2600539 () Bool)

(assert (=> b!2600539 true))

(declare-fun b!2600536 () Bool)

(declare-fun res!1095422 () Bool)

(declare-fun e!1641539 () Bool)

(assert (=> b!2600536 (=> (not res!1095422) (not e!1641539))))

(declare-datatypes ((B!2399 0))(
  ( (B!2400 (val!9667 Int)) )
))
(declare-datatypes ((List!30100 0))(
  ( (Nil!30000) (Cons!30000 (h!35420 B!2399) (t!213149 List!30100)) )
))
(declare-fun l!3766 () List!30100)

(declare-fun refHd!9 () B!2399)

(declare-fun contains!5544 (List!30100 B!2399) Bool)

(assert (=> b!2600536 (= res!1095422 (not (contains!5544 l!3766 refHd!9)))))

(declare-fun b!2600537 () Bool)

(declare-fun res!1095420 () Bool)

(assert (=> b!2600537 (=> (not res!1095420) (not e!1641539))))

(declare-fun refL!9 () List!30100)

(declare-fun head!5921 (List!30100) B!2399)

(assert (=> b!2600537 (= res!1095420 (= refHd!9 (head!5921 refL!9)))))

(declare-fun res!1095421 () Bool)

(assert (=> b!2600539 (=> (not res!1095421) (not e!1641539))))

(declare-fun lambda!97269 () Int)

(declare-fun forall!6179 (List!30100 Int) Bool)

(assert (=> b!2600539 (= res!1095421 (forall!6179 l!3766 lambda!97269))))

(declare-fun b!2600540 () Bool)

(declare-fun e!1641540 () Bool)

(declare-fun tp_is_empty!13679 () Bool)

(declare-fun tp!823906 () Bool)

(assert (=> b!2600540 (= e!1641540 (and tp_is_empty!13679 tp!823906))))

(declare-fun b!2600541 () Bool)

(assert (=> b!2600541 (= e!1641539 false)))

(declare-fun res!1095423 () Bool)

(assert (=> start!252730 (=> (not res!1095423) (not e!1641539))))

(declare-fun isEmpty!17153 (List!30100) Bool)

(assert (=> start!252730 (= res!1095423 (not (isEmpty!17153 refL!9)))))

(assert (=> start!252730 e!1641539))

(declare-fun e!1641538 () Bool)

(assert (=> start!252730 e!1641538))

(assert (=> start!252730 e!1641540))

(assert (=> start!252730 tp_is_empty!13679))

(declare-fun b!2600538 () Bool)

(declare-fun tp!823905 () Bool)

(assert (=> b!2600538 (= e!1641538 (and tp_is_empty!13679 tp!823905))))

(assert (= (and start!252730 res!1095423) b!2600539))

(assert (= (and b!2600539 res!1095421) b!2600537))

(assert (= (and b!2600537 res!1095420) b!2600536))

(assert (= (and b!2600536 res!1095422) b!2600541))

(assert (= (and start!252730 (is-Cons!30000 refL!9)) b!2600538))

(assert (= (and start!252730 (is-Cons!30000 l!3766)) b!2600540))

(declare-fun m!2935857 () Bool)

(assert (=> b!2600536 m!2935857))

(declare-fun m!2935859 () Bool)

(assert (=> b!2600537 m!2935859))

(declare-fun m!2935861 () Bool)

(assert (=> b!2600539 m!2935861))

(declare-fun m!2935863 () Bool)

(assert (=> start!252730 m!2935863))

(push 1)

(assert (not b!2600536))

(assert (not b!2600537))

(assert (not b!2600538))

(assert (not start!252730))

(assert tp_is_empty!13679)

(assert (not b!2600540))

(assert (not b!2600539))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

