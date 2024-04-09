; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137516 () Bool)

(assert start!137516)

(declare-fun b!1581617 () Bool)

(declare-fun e!882571 () Bool)

(declare-datatypes ((B!2706 0))(
  ( (B!2707 (val!19715 Int)) )
))
(declare-datatypes ((tuple2!25760 0))(
  ( (tuple2!25761 (_1!12890 (_ BitVec 64)) (_2!12890 B!2706)) )
))
(declare-datatypes ((List!36996 0))(
  ( (Nil!36993) (Cons!36992 (h!38536 tuple2!25760) (t!51917 List!36996)) )
))
(declare-datatypes ((tuple2!25762 0))(
  ( (tuple2!25763 (_1!12891 tuple2!25760) (_2!12891 List!36996)) )
))
(declare-datatypes ((Option!934 0))(
  ( (Some!933 (v!22448 tuple2!25762)) (None!932) )
))
(declare-fun lt!676930 () Option!934)

(declare-fun get!26853 (Option!934) tuple2!25762)

(assert (=> b!1581617 (= e!882571 (not (is-Nil!36993 (_2!12891 (get!26853 lt!676930)))))))

(declare-fun l!1390 () List!36996)

(declare-fun b!1581618 () Bool)

(declare-fun value!194 () B!2706)

(declare-fun e!882572 () Bool)

(declare-fun key!405 () (_ BitVec 64))

(declare-datatypes ((Option!935 0))(
  ( (Some!934 (v!22449 B!2706)) (None!933) )
))
(declare-fun getValueByKey!827 (List!36996 (_ BitVec 64)) Option!935)

(assert (=> b!1581618 (= e!882572 (not (= (getValueByKey!827 l!1390 key!405) (Some!934 value!194))))))

(declare-fun b!1581619 () Bool)

(declare-fun e!882570 () Bool)

(declare-fun tp_is_empty!39251 () Bool)

(declare-fun tp!114604 () Bool)

(assert (=> b!1581619 (= e!882570 (and tp_is_empty!39251 tp!114604))))

(declare-fun b!1581620 () Bool)

(declare-fun res!1080646 () Bool)

(assert (=> b!1581620 (=> (not res!1080646) (not e!882572))))

(assert (=> b!1581620 (= res!1080646 (not (is-Cons!36992 l!1390)))))

(declare-fun b!1581621 () Bool)

(declare-fun e!882573 () Bool)

(assert (=> b!1581621 (= e!882573 e!882572)))

(declare-fun res!1080647 () Bool)

(assert (=> b!1581621 (=> (not res!1080647) (not e!882572))))

(assert (=> b!1581621 (= res!1080647 e!882571)))

(declare-fun res!1080649 () Bool)

(assert (=> b!1581621 (=> res!1080649 e!882571)))

(declare-fun isEmpty!1188 (Option!934) Bool)

(assert (=> b!1581621 (= res!1080649 (isEmpty!1188 lt!676930))))

(declare-fun unapply!102 (List!36996) Option!934)

(assert (=> b!1581621 (= lt!676930 (unapply!102 l!1390))))

(declare-fun res!1080650 () Bool)

(assert (=> start!137516 (=> (not res!1080650) (not e!882573))))

(declare-fun isStrictlySorted!1091 (List!36996) Bool)

(assert (=> start!137516 (= res!1080650 (isStrictlySorted!1091 l!1390))))

(assert (=> start!137516 e!882573))

(assert (=> start!137516 e!882570))

(assert (=> start!137516 true))

(assert (=> start!137516 tp_is_empty!39251))

(declare-fun b!1581622 () Bool)

(declare-fun res!1080648 () Bool)

(assert (=> b!1581622 (=> (not res!1080648) (not e!882573))))

(declare-fun containsKey!937 (List!36996 (_ BitVec 64)) Bool)

(assert (=> b!1581622 (= res!1080648 (containsKey!937 l!1390 key!405))))

(declare-fun b!1581623 () Bool)

(declare-fun res!1080645 () Bool)

(assert (=> b!1581623 (=> (not res!1080645) (not e!882573))))

(declare-fun contains!10524 (List!36996 tuple2!25760) Bool)

(assert (=> b!1581623 (= res!1080645 (contains!10524 l!1390 (tuple2!25761 key!405 value!194)))))

(assert (= (and start!137516 res!1080650) b!1581622))

(assert (= (and b!1581622 res!1080648) b!1581623))

(assert (= (and b!1581623 res!1080645) b!1581621))

(assert (= (and b!1581621 (not res!1080649)) b!1581617))

(assert (= (and b!1581621 res!1080647) b!1581620))

(assert (= (and b!1581620 res!1080646) b!1581618))

(assert (= (and start!137516 (is-Cons!36992 l!1390)) b!1581619))

(declare-fun m!1452501 () Bool)

(assert (=> b!1581618 m!1452501))

(declare-fun m!1452503 () Bool)

(assert (=> b!1581623 m!1452503))

(declare-fun m!1452505 () Bool)

(assert (=> b!1581617 m!1452505))

(declare-fun m!1452507 () Bool)

(assert (=> b!1581622 m!1452507))

(declare-fun m!1452509 () Bool)

(assert (=> b!1581621 m!1452509))

(declare-fun m!1452511 () Bool)

(assert (=> b!1581621 m!1452511))

(declare-fun m!1452513 () Bool)

(assert (=> start!137516 m!1452513))

(push 1)

(assert (not b!1581623))

(assert (not start!137516))

(assert (not b!1581622))

(assert (not b!1581617))

(assert tp_is_empty!39251)

(assert (not b!1581618))

(assert (not b!1581621))

(assert (not b!1581619))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166759 () Bool)

(assert (=> d!166759 (= (isEmpty!1188 lt!676930) (not (is-Some!933 lt!676930)))))

(assert (=> b!1581621 d!166759))

(declare-fun d!166763 () Bool)

(assert (=> d!166763 (= (unapply!102 l!1390) (ite (is-Nil!36993 l!1390) None!932 (Some!933 (tuple2!25763 (h!38536 l!1390) (t!51917 l!1390)))))))

(assert (=> b!1581621 d!166763))

(declare-fun d!166765 () Bool)

(declare-fun res!1080671 () Bool)

(declare-fun e!882594 () Bool)

(assert (=> d!166765 (=> res!1080671 e!882594)))

(assert (=> d!166765 (= res!1080671 (and (is-Cons!36992 l!1390) (= (_1!12890 (h!38536 l!1390)) key!405)))))

(assert (=> d!166765 (= (containsKey!937 l!1390 key!405) e!882594)))

(declare-fun b!1581644 () Bool)

(declare-fun e!882595 () Bool)

(assert (=> b!1581644 (= e!882594 e!882595)))

(declare-fun res!1080672 () Bool)

(assert (=> b!1581644 (=> (not res!1080672) (not e!882595))))

(assert (=> b!1581644 (= res!1080672 (and (or (not (is-Cons!36992 l!1390)) (bvsle (_1!12890 (h!38536 l!1390)) key!405)) (is-Cons!36992 l!1390) (bvslt (_1!12890 (h!38536 l!1390)) key!405)))))

(declare-fun b!1581645 () Bool)

(assert (=> b!1581645 (= e!882595 (containsKey!937 (t!51917 l!1390) key!405))))

(assert (= (and d!166765 (not res!1080671)) b!1581644))

(assert (= (and b!1581644 res!1080672) b!1581645))

(declare-fun m!1452519 () Bool)

(assert (=> b!1581645 m!1452519))

(assert (=> b!1581622 d!166765))

(declare-fun d!166777 () Bool)

(assert (=> d!166777 (= (get!26853 lt!676930) (v!22448 lt!676930))))

(assert (=> b!1581617 d!166777))

(declare-fun d!166779 () Bool)

(declare-fun res!1080685 () Bool)

(declare-fun e!882614 () Bool)

(assert (=> d!166779 (=> res!1080685 e!882614)))

(assert (=> d!166779 (= res!1080685 (or (is-Nil!36993 l!1390) (is-Nil!36993 (t!51917 l!1390))))))

(assert (=> d!166779 (= (isStrictlySorted!1091 l!1390) e!882614)))

(declare-fun b!1581670 () Bool)

(declare-fun e!882615 () Bool)

(assert (=> b!1581670 (= e!882614 e!882615)))

(declare-fun res!1080686 () Bool)

(assert (=> b!1581670 (=> (not res!1080686) (not e!882615))))

(assert (=> b!1581670 (= res!1080686 (bvslt (_1!12890 (h!38536 l!1390)) (_1!12890 (h!38536 (t!51917 l!1390)))))))

(declare-fun b!1581671 () Bool)

(assert (=> b!1581671 (= e!882615 (isStrictlySorted!1091 (t!51917 l!1390)))))

(assert (= (and d!166779 (not res!1080685)) b!1581670))

(assert (= (and b!1581670 res!1080686) b!1581671))

