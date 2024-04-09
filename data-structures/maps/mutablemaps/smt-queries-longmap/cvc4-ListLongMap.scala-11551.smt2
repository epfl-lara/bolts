; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134504 () Bool)

(assert start!134504)

(declare-fun b!1569697 () Bool)

(declare-fun res!1072808 () Bool)

(declare-fun e!875097 () Bool)

(assert (=> b!1569697 (=> (not res!1072808) (not e!875097))))

(declare-datatypes ((B!2544 0))(
  ( (B!2545 (val!19634 Int)) )
))
(declare-datatypes ((tuple2!25534 0))(
  ( (tuple2!25535 (_1!12777 (_ BitVec 64)) (_2!12777 B!2544)) )
))
(declare-datatypes ((List!36915 0))(
  ( (Nil!36912) (Cons!36911 (h!38359 tuple2!25534) (t!51830 List!36915)) )
))
(declare-fun l!750 () List!36915)

(declare-fun isStrictlySorted!1016 (List!36915) Bool)

(assert (=> b!1569697 (= res!1072808 (isStrictlySorted!1016 (t!51830 l!750)))))

(declare-fun b!1569698 () Bool)

(declare-fun ListPrimitiveSize!192 (List!36915) Int)

(assert (=> b!1569698 (= e!875097 (>= (ListPrimitiveSize!192 (t!51830 l!750)) (ListPrimitiveSize!192 l!750)))))

(declare-fun b!1569699 () Bool)

(declare-fun e!875096 () Bool)

(declare-fun tp_is_empty!39095 () Bool)

(declare-fun tp!114199 () Bool)

(assert (=> b!1569699 (= e!875096 (and tp_is_empty!39095 tp!114199))))

(declare-fun res!1072811 () Bool)

(assert (=> start!134504 (=> (not res!1072811) (not e!875097))))

(declare-fun key1!37 () (_ BitVec 64))

(declare-fun key2!21 () (_ BitVec 64))

(assert (=> start!134504 (= res!1072811 (not (= key1!37 key2!21)))))

(assert (=> start!134504 e!875097))

(assert (=> start!134504 true))

(assert (=> start!134504 e!875096))

(declare-fun b!1569700 () Bool)

(declare-fun res!1072810 () Bool)

(assert (=> b!1569700 (=> (not res!1072810) (not e!875097))))

(assert (=> b!1569700 (= res!1072810 (isStrictlySorted!1016 l!750))))

(declare-fun b!1569701 () Bool)

(declare-fun res!1072809 () Bool)

(assert (=> b!1569701 (=> (not res!1072809) (not e!875097))))

(assert (=> b!1569701 (= res!1072809 (and (is-Cons!36911 l!750) (bvslt (_1!12777 (h!38359 l!750)) key1!37) (bvslt (_1!12777 (h!38359 l!750)) key2!21)))))

(assert (= (and start!134504 res!1072811) b!1569700))

(assert (= (and b!1569700 res!1072810) b!1569701))

(assert (= (and b!1569701 res!1072809) b!1569697))

(assert (= (and b!1569697 res!1072808) b!1569698))

(assert (= (and start!134504 (is-Cons!36911 l!750)) b!1569699))

(declare-fun m!1443839 () Bool)

(assert (=> b!1569697 m!1443839))

(declare-fun m!1443841 () Bool)

(assert (=> b!1569698 m!1443841))

(declare-fun m!1443843 () Bool)

(assert (=> b!1569698 m!1443843))

(declare-fun m!1443845 () Bool)

(assert (=> b!1569700 m!1443845))

(push 1)

(assert (not b!1569697))

(assert (not b!1569698))

(assert (not b!1569699))

(assert (not b!1569700))

(assert tp_is_empty!39095)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163879 () Bool)

(declare-fun res!1072829 () Bool)

(declare-fun e!875126 () Bool)

(assert (=> d!163879 (=> res!1072829 e!875126)))

(assert (=> d!163879 (= res!1072829 (or (is-Nil!36912 l!750) (is-Nil!36912 (t!51830 l!750))))))

(assert (=> d!163879 (= (isStrictlySorted!1016 l!750) e!875126)))

(declare-fun b!1569739 () Bool)

(declare-fun e!875128 () Bool)

(assert (=> b!1569739 (= e!875126 e!875128)))

(declare-fun res!1072831 () Bool)

(assert (=> b!1569739 (=> (not res!1072831) (not e!875128))))

(assert (=> b!1569739 (= res!1072831 (bvslt (_1!12777 (h!38359 l!750)) (_1!12777 (h!38359 (t!51830 l!750)))))))

(declare-fun b!1569741 () Bool)

(assert (=> b!1569741 (= e!875128 (isStrictlySorted!1016 (t!51830 l!750)))))

(assert (= (and d!163879 (not res!1072829)) b!1569739))

(assert (= (and b!1569739 res!1072831) b!1569741))

(assert (=> b!1569741 m!1443839))

(assert (=> b!1569700 d!163879))

(declare-fun d!163884 () Bool)

(declare-fun lt!673257 () Int)

(assert (=> d!163884 (>= lt!673257 0)))

(declare-fun e!875136 () Int)

(assert (=> d!163884 (= lt!673257 e!875136)))

(declare-fun c!144728 () Bool)

(assert (=> d!163884 (= c!144728 (is-Nil!36912 (t!51830 l!750)))))

(assert (=> d!163884 (= (ListPrimitiveSize!192 (t!51830 l!750)) lt!673257)))

(declare-fun b!1569754 () Bool)

(assert (=> b!1569754 (= e!875136 0)))

(declare-fun b!1569755 () Bool)

(assert (=> b!1569755 (= e!875136 (+ 1 (ListPrimitiveSize!192 (t!51830 (t!51830 l!750)))))))

(assert (= (and d!163884 c!144728) b!1569754))

(assert (= (and d!163884 (not c!144728)) b!1569755))

(declare-fun m!1443855 () Bool)

(assert (=> b!1569755 m!1443855))

(assert (=> b!1569698 d!163884))

(declare-fun d!163887 () Bool)

(declare-fun lt!673258 () Int)

(assert (=> d!163887 (>= lt!673258 0)))

(declare-fun e!875137 () Int)

