; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!486126 () Bool)

(assert start!486126)

(declare-fun b!4755364 () Bool)

(declare-fun e!2966567 () Bool)

(declare-fun tp!1350685 () Bool)

(assert (=> b!4755364 (= e!2966567 tp!1350685)))

(declare-fun b!4755365 () Bool)

(declare-fun e!2966565 () Bool)

(declare-fun tp!1350684 () Bool)

(assert (=> b!4755365 (= e!2966565 tp!1350684)))

(declare-fun res!2017382 () Bool)

(declare-fun e!2966566 () Bool)

(assert (=> start!486126 (=> (not res!2017382) (not e!2966566))))

(declare-datatypes ((K!14663 0))(
  ( (K!14664 (val!20001 Int)) )
))
(declare-datatypes ((V!14909 0))(
  ( (V!14910 (val!20002 Int)) )
))
(declare-datatypes ((tuple2!54970 0))(
  ( (tuple2!54971 (_1!30779 K!14663) (_2!30779 V!14909)) )
))
(declare-datatypes ((List!53269 0))(
  ( (Nil!53145) (Cons!53145 (h!59542 tuple2!54970) (t!360613 List!53269)) )
))
(declare-fun l!13115 () List!53269)

(declare-fun noDuplicateKeys!2205 (List!53269) Bool)

(assert (=> start!486126 (= res!2017382 (noDuplicateKeys!2205 l!13115))))

(assert (=> start!486126 e!2966566))

(declare-fun e!2966568 () Bool)

(assert (=> start!486126 e!2966568))

(declare-datatypes ((ListMap!5655 0))(
  ( (ListMap!5656 (toList!6173 List!53269)) )
))
(declare-fun lhm1!51 () ListMap!5655)

(declare-fun inv!68534 (ListMap!5655) Bool)

(assert (=> start!486126 (and (inv!68534 lhm1!51) e!2966567)))

(declare-fun lhm2!51 () ListMap!5655)

(assert (=> start!486126 (and (inv!68534 lhm2!51) e!2966565)))

(declare-fun b!4755362 () Bool)

(assert (=> b!4755362 (= e!2966566 false)))

(declare-fun lt!1922314 () Bool)

(declare-fun eq!1268 (ListMap!5655 ListMap!5655) Bool)

(assert (=> b!4755362 (= lt!1922314 (eq!1268 lhm1!51 lhm2!51))))

(declare-fun tp_is_empty!32115 () Bool)

(declare-fun tp_is_empty!32113 () Bool)

(declare-fun tp!1350686 () Bool)

(declare-fun b!4755363 () Bool)

(assert (=> b!4755363 (= e!2966568 (and tp_is_empty!32113 tp_is_empty!32115 tp!1350686))))

(assert (= (and start!486126 res!2017382) b!4755362))

(assert (= (and start!486126 (is-Cons!53145 l!13115)) b!4755363))

(assert (= start!486126 b!4755364))

(assert (= start!486126 b!4755365))

(declare-fun m!5725201 () Bool)

(assert (=> start!486126 m!5725201))

(declare-fun m!5725203 () Bool)

(assert (=> start!486126 m!5725203))

(declare-fun m!5725205 () Bool)

(assert (=> start!486126 m!5725205))

(declare-fun m!5725207 () Bool)

(assert (=> b!4755362 m!5725207))

(push 1)

(assert tp_is_empty!32113)

(assert (not b!4755365))

(assert (not b!4755364))

(assert (not start!486126))

(assert tp_is_empty!32115)

(assert (not b!4755363))

(assert (not b!4755362))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

