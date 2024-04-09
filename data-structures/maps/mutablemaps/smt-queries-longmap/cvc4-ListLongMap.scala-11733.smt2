; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137624 () Bool)

(assert start!137624)

(declare-fun e!882872 () Bool)

(declare-fun b!1582030 () Bool)

(declare-datatypes ((B!2742 0))(
  ( (B!2743 (val!19733 Int)) )
))
(declare-datatypes ((tuple2!25798 0))(
  ( (tuple2!25799 (_1!12909 (_ BitVec 64)) (_2!12909 B!2742)) )
))
(declare-datatypes ((List!37014 0))(
  ( (Nil!37011) (Cons!37010 (h!38554 tuple2!25798) (t!51935 List!37014)) )
))
(declare-fun l!1356 () List!37014)

(declare-fun value!184 () B!2742)

(declare-fun key!387 () (_ BitVec 64))

(declare-fun contains!10533 (List!37014 tuple2!25798) Bool)

(assert (=> b!1582030 (= e!882872 (contains!10533 l!1356 (tuple2!25799 key!387 value!184)))))

(declare-fun res!1080905 () Bool)

(assert (=> start!137624 (=> (not res!1080905) (not e!882872))))

(declare-fun isStrictlySorted!1106 (List!37014) Bool)

(assert (=> start!137624 (= res!1080905 (isStrictlySorted!1106 l!1356))))

(assert (=> start!137624 e!882872))

(declare-fun e!882873 () Bool)

(assert (=> start!137624 e!882873))

(assert (=> start!137624 true))

(declare-fun tp_is_empty!39287 () Bool)

(assert (=> start!137624 tp_is_empty!39287))

(declare-fun b!1582028 () Bool)

(declare-fun res!1080903 () Bool)

(assert (=> b!1582028 (=> (not res!1080903) (not e!882872))))

(declare-fun containsKey!952 (List!37014 (_ BitVec 64)) Bool)

(assert (=> b!1582028 (= res!1080903 (not (containsKey!952 l!1356 key!387)))))

(declare-fun b!1582029 () Bool)

(declare-fun res!1080904 () Bool)

(assert (=> b!1582029 (=> (not res!1080904) (not e!882872))))

(assert (=> b!1582029 (= res!1080904 (is-Nil!37011 l!1356))))

(declare-fun b!1582031 () Bool)

(declare-fun tp!114685 () Bool)

(assert (=> b!1582031 (= e!882873 (and tp_is_empty!39287 tp!114685))))

(assert (= (and start!137624 res!1080905) b!1582028))

(assert (= (and b!1582028 res!1080903) b!1582029))

(assert (= (and b!1582029 res!1080904) b!1582030))

(assert (= (and start!137624 (is-Cons!37010 l!1356)) b!1582031))

(declare-fun m!1452671 () Bool)

(assert (=> b!1582030 m!1452671))

(declare-fun m!1452673 () Bool)

(assert (=> start!137624 m!1452673))

(declare-fun m!1452675 () Bool)

(assert (=> b!1582028 m!1452675))

(push 1)

(assert (not start!137624))

(assert tp_is_empty!39287)

(assert (not b!1582031))

(assert (not b!1582028))

(assert (not b!1582030))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166853 () Bool)

(declare-fun res!1080916 () Bool)

(declare-fun e!882884 () Bool)

(assert (=> d!166853 (=> res!1080916 e!882884)))

(assert (=> d!166853 (= res!1080916 (and (is-Cons!37010 l!1356) (= (_1!12909 (h!38554 l!1356)) key!387)))))

(assert (=> d!166853 (= (containsKey!952 l!1356 key!387) e!882884)))

(declare-fun b!1582042 () Bool)

(declare-fun e!882885 () Bool)

(assert (=> b!1582042 (= e!882884 e!882885)))

(declare-fun res!1080917 () Bool)

(assert (=> b!1582042 (=> (not res!1080917) (not e!882885))))

(assert (=> b!1582042 (= res!1080917 (and (or (not (is-Cons!37010 l!1356)) (bvsle (_1!12909 (h!38554 l!1356)) key!387)) (is-Cons!37010 l!1356) (bvslt (_1!12909 (h!38554 l!1356)) key!387)))))

(declare-fun b!1582043 () Bool)

(assert (=> b!1582043 (= e!882885 (containsKey!952 (t!51935 l!1356) key!387))))

(assert (= (and d!166853 (not res!1080916)) b!1582042))

(assert (= (and b!1582042 res!1080917) b!1582043))

(declare-fun m!1452677 () Bool)

(assert (=> b!1582043 m!1452677))

(assert (=> b!1582028 d!166853))

(declare-fun d!166859 () Bool)

(declare-fun lt!676972 () Bool)

(declare-fun content!858 (List!37014) (Set tuple2!25798))

(assert (=> d!166859 (= lt!676972 (member (tuple2!25799 key!387 value!184) (content!858 l!1356)))))

(declare-fun e!882896 () Bool)

(assert (=> d!166859 (= lt!676972 e!882896)))

(declare-fun res!1080929 () Bool)

(assert (=> d!166859 (=> (not res!1080929) (not e!882896))))

(assert (=> d!166859 (= res!1080929 (is-Cons!37010 l!1356))))

(assert (=> d!166859 (= (contains!10533 l!1356 (tuple2!25799 key!387 value!184)) lt!676972)))

(declare-fun b!1582054 () Bool)

(declare-fun e!882897 () Bool)

(assert (=> b!1582054 (= e!882896 e!882897)))

(declare-fun res!1080928 () Bool)

(assert (=> b!1582054 (=> res!1080928 e!882897)))

(assert (=> b!1582054 (= res!1080928 (= (h!38554 l!1356) (tuple2!25799 key!387 value!184)))))

(declare-fun b!1582055 () Bool)

(assert (=> b!1582055 (= e!882897 (contains!10533 (t!51935 l!1356) (tuple2!25799 key!387 value!184)))))

(assert (= (and d!166859 res!1080929) b!1582054))

(assert (= (and b!1582054 (not res!1080928)) b!1582055))

(declare-fun m!1452687 () Bool)

(assert (=> d!166859 m!1452687))

(declare-fun m!1452689 () Bool)

(assert (=> d!166859 m!1452689))

(declare-fun m!1452691 () Bool)

(assert (=> b!1582055 m!1452691))

(assert (=> b!1582030 d!166859))

(declare-fun d!166865 () Bool)

(declare-fun res!1080944 () Bool)

(declare-fun e!882912 () Bool)

(assert (=> d!166865 (=> res!1080944 e!882912)))

(assert (=> d!166865 (= res!1080944 (or (is-Nil!37011 l!1356) (is-Nil!37011 (t!51935 l!1356))))))

(assert (=> d!166865 (= (isStrictlySorted!1106 l!1356) e!882912)))

(declare-fun b!1582070 () Bool)

(declare-fun e!882913 () Bool)

(assert (=> b!1582070 (= e!882912 e!882913)))

(declare-fun res!1080945 () Bool)

(assert (=> b!1582070 (=> (not res!1080945) (not e!882913))))

(assert (=> b!1582070 (= res!1080945 (bvslt (_1!12909 (h!38554 l!1356)) (_1!12909 (h!38554 (t!51935 l!1356)))))))

(declare-fun b!1582071 () Bool)

(assert (=> b!1582071 (= e!882913 (isStrictlySorted!1106 (t!51935 l!1356)))))

(assert (= (and d!166865 (not res!1080944)) b!1582070))

(assert (= (and b!1582070 res!1080945) b!1582071))

(declare-fun m!1452693 () Bool)

(assert (=> b!1582071 m!1452693))

(assert (=> start!137624 d!166865))

(declare-fun b!1582078 () Bool)

(declare-fun e!882918 () Bool)

(declare-fun tp!114688 () Bool)

(assert (=> b!1582078 (= e!882918 (and tp_is_empty!39287 tp!114688))))

(assert (=> b!1582031 (= tp!114685 e!882918)))

(assert (= (and b!1582031 (is-Cons!37010 (t!51935 l!1356))) b!1582078))

(push 1)

(assert (not b!1582055))

(assert (not b!1582071))

(assert (not b!1582078))

(assert (not b!1582043))

(assert (not d!166859))

(assert tp_is_empty!39287)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

