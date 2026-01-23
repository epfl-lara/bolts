; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!486114 () Bool)

(assert start!486114)

(declare-fun res!2017320 () Bool)

(declare-fun e!2966484 () Bool)

(assert (=> start!486114 (=> (not res!2017320) (not e!2966484))))

(declare-datatypes ((K!14648 0))(
  ( (K!14649 (val!19989 Int)) )
))
(declare-datatypes ((V!14894 0))(
  ( (V!14895 (val!19990 Int)) )
))
(declare-datatypes ((tuple2!54958 0))(
  ( (tuple2!54959 (_1!30773 K!14648) (_2!30773 V!14894)) )
))
(declare-datatypes ((List!53263 0))(
  ( (Nil!53139) (Cons!53139 (h!59536 tuple2!54958) (t!360607 List!53263)) )
))
(declare-fun l!13115 () List!53263)

(declare-fun noDuplicateKeys!2199 (List!53263) Bool)

(assert (=> start!486114 (= res!2017320 (noDuplicateKeys!2199 l!13115))))

(assert (=> start!486114 e!2966484))

(declare-fun e!2966481 () Bool)

(assert (=> start!486114 e!2966481))

(declare-datatypes ((ListMap!5643 0))(
  ( (ListMap!5644 (toList!6167 List!53263)) )
))
(declare-fun lhm1!51 () ListMap!5643)

(declare-fun e!2966482 () Bool)

(declare-fun inv!68519 (ListMap!5643) Bool)

(assert (=> start!486114 (and (inv!68519 lhm1!51) e!2966482)))

(declare-fun lhm2!51 () ListMap!5643)

(declare-fun e!2966483 () Bool)

(assert (=> start!486114 (and (inv!68519 lhm2!51) e!2966483)))

(declare-fun b!4755246 () Bool)

(declare-fun tp!1350631 () Bool)

(assert (=> b!4755246 (= e!2966482 tp!1350631)))

(declare-fun b!4755247 () Bool)

(declare-fun res!2017322 () Bool)

(assert (=> b!4755247 (=> (not res!2017322) (not e!2966484))))

(assert (=> b!4755247 (= res!2017322 (is-Cons!53139 l!13115))))

(declare-fun b!4755248 () Bool)

(declare-fun res!2017321 () Bool)

(assert (=> b!4755248 (=> (not res!2017321) (not e!2966484))))

(declare-fun eq!1262 (ListMap!5643 ListMap!5643) Bool)

(assert (=> b!4755248 (= res!2017321 (eq!1262 lhm1!51 lhm2!51))))

(declare-fun b!4755249 () Bool)

(assert (=> b!4755249 (= e!2966484 (not true))))

(declare-fun lt!1922244 () Bool)

(assert (=> b!4755249 (= lt!1922244 (noDuplicateKeys!2199 (t!360607 l!13115)))))

(declare-fun lt!1922245 () ListMap!5643)

(declare-fun lt!1922242 () ListMap!5643)

(assert (=> b!4755249 (eq!1262 lt!1922245 lt!1922242)))

(declare-datatypes ((Unit!137536 0))(
  ( (Unit!137537) )
))
(declare-fun lt!1922243 () Unit!137536)

(declare-fun lemmaAddToEqMapsPreservesEq!117 (ListMap!5643 ListMap!5643 K!14648 V!14894) Unit!137536)

(assert (=> b!4755249 (= lt!1922243 (lemmaAddToEqMapsPreservesEq!117 lhm1!51 lhm2!51 (_1!30773 (h!59536 l!13115)) (_2!30773 (h!59536 l!13115))))))

(declare-fun +!2433 (ListMap!5643 tuple2!54958) ListMap!5643)

(assert (=> b!4755249 (= lt!1922242 (+!2433 lhm2!51 (h!59536 l!13115)))))

(assert (=> b!4755249 (= lt!1922245 (+!2433 lhm1!51 (h!59536 l!13115)))))

(declare-fun b!4755250 () Bool)

(declare-fun tp!1350630 () Bool)

(assert (=> b!4755250 (= e!2966483 tp!1350630)))

(declare-fun tp_is_empty!32089 () Bool)

(declare-fun tp_is_empty!32091 () Bool)

(declare-fun tp!1350632 () Bool)

(declare-fun b!4755251 () Bool)

(assert (=> b!4755251 (= e!2966481 (and tp_is_empty!32089 tp_is_empty!32091 tp!1350632))))

(assert (= (and start!486114 res!2017320) b!4755248))

(assert (= (and b!4755248 res!2017321) b!4755247))

(assert (= (and b!4755247 res!2017322) b!4755249))

(assert (= (and start!486114 (is-Cons!53139 l!13115)) b!4755251))

(assert (= start!486114 b!4755246))

(assert (= start!486114 b!4755250))

(declare-fun m!5725057 () Bool)

(assert (=> start!486114 m!5725057))

(declare-fun m!5725059 () Bool)

(assert (=> start!486114 m!5725059))

(declare-fun m!5725061 () Bool)

(assert (=> start!486114 m!5725061))

(declare-fun m!5725063 () Bool)

(assert (=> b!4755248 m!5725063))

(declare-fun m!5725065 () Bool)

(assert (=> b!4755249 m!5725065))

(declare-fun m!5725067 () Bool)

(assert (=> b!4755249 m!5725067))

(declare-fun m!5725069 () Bool)

(assert (=> b!4755249 m!5725069))

(declare-fun m!5725071 () Bool)

(assert (=> b!4755249 m!5725071))

(declare-fun m!5725073 () Bool)

(assert (=> b!4755249 m!5725073))

(push 1)

(assert tp_is_empty!32089)

(assert (not b!4755249))

(assert (not start!486114))

(assert (not b!4755251))

(assert (not b!4755248))

(assert (not b!4755250))

(assert tp_is_empty!32091)

(assert (not b!4755246))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

