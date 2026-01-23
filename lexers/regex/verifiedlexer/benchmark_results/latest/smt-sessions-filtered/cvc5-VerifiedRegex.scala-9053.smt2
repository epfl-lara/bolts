; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!486130 () Bool)

(assert start!486130)

(declare-fun b!4755390 () Bool)

(declare-fun e!2966590 () Bool)

(declare-fun tp!1350704 () Bool)

(assert (=> b!4755390 (= e!2966590 tp!1350704)))

(declare-fun b!4755391 () Bool)

(declare-fun e!2966591 () Bool)

(assert (=> b!4755391 (= e!2966591 false)))

(declare-datatypes ((K!14668 0))(
  ( (K!14669 (val!20005 Int)) )
))
(declare-datatypes ((V!14914 0))(
  ( (V!14915 (val!20006 Int)) )
))
(declare-datatypes ((tuple2!54974 0))(
  ( (tuple2!54975 (_1!30781 K!14668) (_2!30781 V!14914)) )
))
(declare-datatypes ((List!53271 0))(
  ( (Nil!53147) (Cons!53147 (h!59544 tuple2!54974) (t!360615 List!53271)) )
))
(declare-datatypes ((ListMap!5659 0))(
  ( (ListMap!5660 (toList!6175 List!53271)) )
))
(declare-fun lt!1922320 () ListMap!5659)

(declare-fun l!13115 () List!53271)

(declare-fun lhm1!51 () ListMap!5659)

(declare-fun addToMapMapFromBucket!1615 (List!53271 ListMap!5659) ListMap!5659)

(assert (=> b!4755391 (= lt!1922320 (addToMapMapFromBucket!1615 l!13115 lhm1!51))))

(declare-fun b!4755392 () Bool)

(declare-fun res!2017394 () Bool)

(assert (=> b!4755392 (=> (not res!2017394) (not e!2966591))))

(assert (=> b!4755392 (= res!2017394 (not (is-Cons!53147 l!13115)))))

(declare-fun b!4755393 () Bool)

(declare-fun e!2966589 () Bool)

(declare-fun tp!1350703 () Bool)

(assert (=> b!4755393 (= e!2966589 tp!1350703)))

(declare-fun res!2017393 () Bool)

(assert (=> start!486130 (=> (not res!2017393) (not e!2966591))))

(declare-fun noDuplicateKeys!2207 (List!53271) Bool)

(assert (=> start!486130 (= res!2017393 (noDuplicateKeys!2207 l!13115))))

(assert (=> start!486130 e!2966591))

(declare-fun e!2966592 () Bool)

(assert (=> start!486130 e!2966592))

(declare-fun inv!68539 (ListMap!5659) Bool)

(assert (=> start!486130 (and (inv!68539 lhm1!51) e!2966590)))

(declare-fun lhm2!51 () ListMap!5659)

(assert (=> start!486130 (and (inv!68539 lhm2!51) e!2966589)))

(declare-fun b!4755394 () Bool)

(declare-fun res!2017392 () Bool)

(assert (=> b!4755394 (=> (not res!2017392) (not e!2966591))))

(declare-fun eq!1270 (ListMap!5659 ListMap!5659) Bool)

(assert (=> b!4755394 (= res!2017392 (eq!1270 lhm1!51 lhm2!51))))

(declare-fun b!4755395 () Bool)

(declare-fun tp!1350702 () Bool)

(declare-fun tp_is_empty!32121 () Bool)

(declare-fun tp_is_empty!32123 () Bool)

(assert (=> b!4755395 (= e!2966592 (and tp_is_empty!32121 tp_is_empty!32123 tp!1350702))))

(assert (= (and start!486130 res!2017393) b!4755394))

(assert (= (and b!4755394 res!2017392) b!4755392))

(assert (= (and b!4755392 res!2017394) b!4755391))

(assert (= (and start!486130 (is-Cons!53147 l!13115)) b!4755395))

(assert (= start!486130 b!4755390))

(assert (= start!486130 b!4755393))

(declare-fun m!5725217 () Bool)

(assert (=> b!4755391 m!5725217))

(declare-fun m!5725219 () Bool)

(assert (=> start!486130 m!5725219))

(declare-fun m!5725221 () Bool)

(assert (=> start!486130 m!5725221))

(declare-fun m!5725223 () Bool)

(assert (=> start!486130 m!5725223))

(declare-fun m!5725225 () Bool)

(assert (=> b!4755394 m!5725225))

(push 1)

(assert (not b!4755394))

(assert (not b!4755395))

(assert (not b!4755391))

(assert tp_is_empty!32121)

(assert tp_is_empty!32123)

(assert (not b!4755390))

(assert (not start!486130))

(assert (not b!4755393))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

