; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417036 () Bool)

(assert start!417036)

(declare-fun res!1774032 () Bool)

(declare-fun e!2693786 () Bool)

(assert (=> start!417036 (=> (not res!1774032) (not e!2693786))))

(declare-datatypes ((K!9798 0))(
  ( (K!9799 (val!16109 Int)) )
))
(declare-datatypes ((V!10044 0))(
  ( (V!10045 (val!16110 Int)) )
))
(declare-datatypes ((tuple2!47574 0))(
  ( (tuple2!47575 (_1!27081 K!9798) (_2!27081 V!10044)) )
))
(declare-datatypes ((List!48615 0))(
  ( (Nil!48491) (Cons!48491 (h!53960 tuple2!47574) (t!355527 List!48615)) )
))
(declare-fun l!13918 () List!48615)

(declare-fun noDuplicateKeys!304 (List!48615) Bool)

(assert (=> start!417036 (= res!1774032 (noDuplicateKeys!304 l!13918))))

(assert (=> start!417036 e!2693786))

(declare-fun e!2693787 () Bool)

(assert (=> start!417036 e!2693787))

(declare-fun tp_is_empty!24405 () Bool)

(assert (=> start!417036 tp_is_empty!24405))

(declare-fun b!4329019 () Bool)

(declare-fun res!1774033 () Bool)

(assert (=> b!4329019 (=> (not res!1774033) (not e!2693786))))

(declare-fun otherK!9 () K!9798)

(declare-fun key!5304 () K!9798)

(assert (=> b!4329019 (= res!1774033 (not (= otherK!9 key!5304)))))

(declare-fun b!4329020 () Bool)

(assert (=> b!4329020 (= e!2693786 false)))

(declare-fun lt!1545362 () Bool)

(declare-fun containsKey!450 (List!48615 K!9798) Bool)

(assert (=> b!4329020 (= lt!1545362 (containsKey!450 l!13918 otherK!9))))

(declare-fun tp_is_empty!24407 () Bool)

(declare-fun tp!1328109 () Bool)

(declare-fun b!4329021 () Bool)

(assert (=> b!4329021 (= e!2693787 (and tp_is_empty!24405 tp_is_empty!24407 tp!1328109))))

(assert (= (and start!417036 res!1774032) b!4329019))

(assert (= (and b!4329019 res!1774033) b!4329020))

(assert (= (and start!417036 (is-Cons!48491 l!13918)) b!4329021))

(declare-fun m!4923661 () Bool)

(assert (=> start!417036 m!4923661))

(declare-fun m!4923663 () Bool)

(assert (=> b!4329020 m!4923663))

(push 1)

(assert tp_is_empty!24405)

(assert tp_is_empty!24407)

(assert (not b!4329021))

(assert (not b!4329020))

(assert (not start!417036))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

