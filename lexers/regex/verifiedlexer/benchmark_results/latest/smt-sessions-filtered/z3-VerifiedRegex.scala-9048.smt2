; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486112 () Bool)

(assert start!486112)

(declare-fun b!4755228 () Bool)

(declare-fun e!2966472 () Bool)

(assert (=> b!4755228 (= e!2966472 false)))

(declare-datatypes ((K!14645 0))(
  ( (K!14646 (val!19987 Int)) )
))
(declare-datatypes ((V!14891 0))(
  ( (V!14892 (val!19988 Int)) )
))
(declare-datatypes ((tuple2!54956 0))(
  ( (tuple2!54957 (_1!30772 K!14645) (_2!30772 V!14891)) )
))
(declare-datatypes ((List!53262 0))(
  ( (Nil!53138) (Cons!53138 (h!59535 tuple2!54956) (t!360606 List!53262)) )
))
(declare-datatypes ((ListMap!5641 0))(
  ( (ListMap!5642 (toList!6166 List!53262)) )
))
(declare-fun lt!1922232 () ListMap!5641)

(declare-fun lhm2!51 () ListMap!5641)

(declare-fun l!13115 () List!53262)

(declare-fun +!2432 (ListMap!5641 tuple2!54956) ListMap!5641)

(assert (=> b!4755228 (= lt!1922232 (+!2432 lhm2!51 (h!59535 l!13115)))))

(declare-fun lt!1922233 () ListMap!5641)

(declare-fun lhm1!51 () ListMap!5641)

(assert (=> b!4755228 (= lt!1922233 (+!2432 lhm1!51 (h!59535 l!13115)))))

(declare-fun res!2017312 () Bool)

(assert (=> start!486112 (=> (not res!2017312) (not e!2966472))))

(declare-fun noDuplicateKeys!2198 (List!53262) Bool)

(assert (=> start!486112 (= res!2017312 (noDuplicateKeys!2198 l!13115))))

(assert (=> start!486112 e!2966472))

(declare-fun e!2966469 () Bool)

(assert (=> start!486112 e!2966469))

(declare-fun e!2966470 () Bool)

(declare-fun inv!68515 (ListMap!5641) Bool)

(assert (=> start!486112 (and (inv!68515 lhm1!51) e!2966470)))

(declare-fun e!2966471 () Bool)

(assert (=> start!486112 (and (inv!68515 lhm2!51) e!2966471)))

(declare-fun b!4755229 () Bool)

(declare-fun res!2017311 () Bool)

(assert (=> b!4755229 (=> (not res!2017311) (not e!2966472))))

(get-info :version)

(assert (=> b!4755229 (= res!2017311 ((_ is Cons!53138) l!13115))))

(declare-fun b!4755230 () Bool)

(declare-fun res!2017313 () Bool)

(assert (=> b!4755230 (=> (not res!2017313) (not e!2966472))))

(declare-fun eq!1261 (ListMap!5641 ListMap!5641) Bool)

(assert (=> b!4755230 (= res!2017313 (eq!1261 lhm1!51 lhm2!51))))

(declare-fun tp_is_empty!32085 () Bool)

(declare-fun b!4755231 () Bool)

(declare-fun tp_is_empty!32087 () Bool)

(declare-fun tp!1350622 () Bool)

(assert (=> b!4755231 (= e!2966469 (and tp_is_empty!32085 tp_is_empty!32087 tp!1350622))))

(declare-fun b!4755232 () Bool)

(declare-fun tp!1350621 () Bool)

(assert (=> b!4755232 (= e!2966470 tp!1350621)))

(declare-fun b!4755233 () Bool)

(declare-fun tp!1350623 () Bool)

(assert (=> b!4755233 (= e!2966471 tp!1350623)))

(assert (= (and start!486112 res!2017312) b!4755230))

(assert (= (and b!4755230 res!2017313) b!4755229))

(assert (= (and b!4755229 res!2017311) b!4755228))

(assert (= (and start!486112 ((_ is Cons!53138) l!13115)) b!4755231))

(assert (= start!486112 b!4755232))

(assert (= start!486112 b!4755233))

(declare-fun m!5725045 () Bool)

(assert (=> b!4755228 m!5725045))

(declare-fun m!5725047 () Bool)

(assert (=> b!4755228 m!5725047))

(declare-fun m!5725049 () Bool)

(assert (=> start!486112 m!5725049))

(declare-fun m!5725051 () Bool)

(assert (=> start!486112 m!5725051))

(declare-fun m!5725053 () Bool)

(assert (=> start!486112 m!5725053))

(declare-fun m!5725055 () Bool)

(assert (=> b!4755230 m!5725055))

(check-sat tp_is_empty!32085 (not b!4755233) (not b!4755231) (not b!4755232) (not b!4755228) tp_is_empty!32087 (not start!486112) (not b!4755230))
(check-sat)
