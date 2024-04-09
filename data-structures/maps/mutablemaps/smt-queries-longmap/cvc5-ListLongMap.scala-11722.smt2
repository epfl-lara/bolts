; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137272 () Bool)

(assert start!137272)

(declare-fun b!1580599 () Bool)

(declare-fun res!1079867 () Bool)

(declare-fun e!881845 () Bool)

(assert (=> b!1580599 (=> (not res!1079867) (not e!881845))))

(declare-fun key!405 () (_ BitVec 64))

(declare-datatypes ((B!2672 0))(
  ( (B!2673 (val!19698 Int)) )
))
(declare-fun value!194 () B!2672)

(declare-datatypes ((tuple2!25692 0))(
  ( (tuple2!25693 (_1!12856 (_ BitVec 64)) (_2!12856 B!2672)) )
))
(declare-datatypes ((List!36979 0))(
  ( (Nil!36976) (Cons!36975 (h!38519 tuple2!25692) (t!51900 List!36979)) )
))
(declare-fun l!1390 () List!36979)

(declare-fun contains!10507 (List!36979 tuple2!25692) Bool)

(assert (=> b!1580599 (= res!1079867 (contains!10507 l!1390 (tuple2!25693 key!405 value!194)))))

(declare-fun res!1079861 () Bool)

(assert (=> start!137272 (=> (not res!1079861) (not e!881845))))

(declare-fun isStrictlySorted!1074 (List!36979) Bool)

(assert (=> start!137272 (= res!1079861 (isStrictlySorted!1074 l!1390))))

(assert (=> start!137272 e!881845))

(declare-fun e!881847 () Bool)

(assert (=> start!137272 e!881847))

(assert (=> start!137272 true))

(declare-fun tp_is_empty!39217 () Bool)

(assert (=> start!137272 tp_is_empty!39217))

(declare-fun b!1580600 () Bool)

(declare-fun e!881846 () Bool)

(declare-datatypes ((tuple2!25694 0))(
  ( (tuple2!25695 (_1!12857 tuple2!25692) (_2!12857 List!36979)) )
))
(declare-datatypes ((Option!909 0))(
  ( (Some!908 (v!22408 tuple2!25694)) (None!907) )
))
(declare-fun lt!676729 () Option!909)

(declare-fun get!26826 (Option!909) tuple2!25694)

(assert (=> b!1580600 (= e!881846 (not (is-Nil!36976 (_2!12857 (get!26826 lt!676729)))))))

(declare-fun b!1580601 () Bool)

(declare-fun e!881844 () Bool)

(assert (=> b!1580601 (= e!881845 e!881844)))

(declare-fun res!1079862 () Bool)

(assert (=> b!1580601 (=> (not res!1079862) (not e!881844))))

(assert (=> b!1580601 (= res!1079862 e!881846)))

(declare-fun res!1079864 () Bool)

(assert (=> b!1580601 (=> res!1079864 e!881846)))

(declare-fun isEmpty!1171 (Option!909) Bool)

(assert (=> b!1580601 (= res!1079864 (isEmpty!1171 lt!676729))))

(declare-fun unapply!85 (List!36979) Option!909)

(assert (=> b!1580601 (= lt!676729 (unapply!85 l!1390))))

(declare-fun b!1580602 () Bool)

(declare-fun tp!114508 () Bool)

(assert (=> b!1580602 (= e!881847 (and tp_is_empty!39217 tp!114508))))

(declare-fun b!1580603 () Bool)

(declare-fun res!1079865 () Bool)

(assert (=> b!1580603 (=> (not res!1079865) (not e!881844))))

(assert (=> b!1580603 (= res!1079865 (and (is-Cons!36975 l!1390) (= (_1!12856 (h!38519 l!1390)) key!405)))))

(declare-fun b!1580604 () Bool)

(declare-fun e!881843 () Bool)

(declare-fun containsKey!920 (List!36979 (_ BitVec 64)) Bool)

(assert (=> b!1580604 (= e!881843 (containsKey!920 (t!51900 l!1390) key!405))))

(declare-fun b!1580605 () Bool)

(assert (=> b!1580605 (= e!881844 e!881843)))

(declare-fun res!1079863 () Bool)

(assert (=> b!1580605 (=> res!1079863 e!881843)))

(assert (=> b!1580605 (= res!1079863 (not (isStrictlySorted!1074 (t!51900 l!1390))))))

(declare-fun b!1580606 () Bool)

(declare-fun res!1079866 () Bool)

(assert (=> b!1580606 (=> (not res!1079866) (not e!881845))))

(assert (=> b!1580606 (= res!1079866 (containsKey!920 l!1390 key!405))))

(assert (= (and start!137272 res!1079861) b!1580606))

(assert (= (and b!1580606 res!1079866) b!1580599))

(assert (= (and b!1580599 res!1079867) b!1580601))

(assert (= (and b!1580601 (not res!1079864)) b!1580600))

(assert (= (and b!1580601 res!1079862) b!1580603))

(assert (= (and b!1580603 res!1079865) b!1580605))

(assert (= (and b!1580605 (not res!1079863)) b!1580604))

(assert (= (and start!137272 (is-Cons!36975 l!1390)) b!1580602))

(declare-fun m!1451927 () Bool)

(assert (=> b!1580599 m!1451927))

(declare-fun m!1451929 () Bool)

(assert (=> b!1580601 m!1451929))

(declare-fun m!1451931 () Bool)

(assert (=> b!1580601 m!1451931))

(declare-fun m!1451933 () Bool)

(assert (=> b!1580604 m!1451933))

(declare-fun m!1451935 () Bool)

(assert (=> start!137272 m!1451935))

(declare-fun m!1451937 () Bool)

(assert (=> b!1580605 m!1451937))

(declare-fun m!1451939 () Bool)

(assert (=> b!1580606 m!1451939))

(declare-fun m!1451941 () Bool)

(assert (=> b!1580600 m!1451941))

(push 1)

(assert (not b!1580599))

(assert (not b!1580601))

(assert (not b!1580600))

(assert (not b!1580605))

(assert (not b!1580606))

(assert (not b!1580604))

(assert (not start!137272))

(assert (not b!1580602))

(assert tp_is_empty!39217)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166449 () Bool)

(declare-fun res!1079938 () Bool)

(declare-fun e!881906 () Bool)

(assert (=> d!166449 (=> res!1079938 e!881906)))

(assert (=> d!166449 (= res!1079938 (or (is-Nil!36976 l!1390) (is-Nil!36976 (t!51900 l!1390))))))

(assert (=> d!166449 (= (isStrictlySorted!1074 l!1390) e!881906)))

(declare-fun b!1580681 () Bool)

(declare-fun e!881907 () Bool)

(assert (=> b!1580681 (= e!881906 e!881907)))

(declare-fun res!1079939 () Bool)

(assert (=> b!1580681 (=> (not res!1079939) (not e!881907))))

(assert (=> b!1580681 (= res!1079939 (bvslt (_1!12856 (h!38519 l!1390)) (_1!12856 (h!38519 (t!51900 l!1390)))))))

(declare-fun b!1580682 () Bool)

(assert (=> b!1580682 (= e!881907 (isStrictlySorted!1074 (t!51900 l!1390)))))

(assert (= (and d!166449 (not res!1079938)) b!1580681))

(assert (= (and b!1580681 res!1079939) b!1580682))

(assert (=> b!1580682 m!1451937))

(assert (=> start!137272 d!166449))

(declare-fun d!166459 () Bool)

(assert (=> d!166459 (= (isEmpty!1171 lt!676729) (not (is-Some!908 lt!676729)))))

(assert (=> b!1580601 d!166459))

(declare-fun d!166463 () Bool)

(assert (=> d!166463 (= (unapply!85 l!1390) (ite (is-Nil!36976 l!1390) None!907 (Some!908 (tuple2!25695 (h!38519 l!1390) (t!51900 l!1390)))))))

(assert (=> b!1580601 d!166463))

(declare-fun d!166471 () Bool)

(declare-fun res!1079962 () Bool)

(declare-fun e!881933 () Bool)

(assert (=> d!166471 (=> res!1079962 e!881933)))

(assert (=> d!166471 (= res!1079962 (and (is-Cons!36975 l!1390) (= (_1!12856 (h!38519 l!1390)) key!405)))))

(assert (=> d!166471 (= (containsKey!920 l!1390 key!405) e!881933)))

(declare-fun b!1580712 () Bool)

(declare-fun e!881934 () Bool)

(assert (=> b!1580712 (= e!881933 e!881934)))

(declare-fun res!1079963 () Bool)

(assert (=> b!1580712 (=> (not res!1079963) (not e!881934))))

(assert (=> b!1580712 (= res!1079963 (and (or (not (is-Cons!36975 l!1390)) (bvsle (_1!12856 (h!38519 l!1390)) key!405)) (is-Cons!36975 l!1390) (bvslt (_1!12856 (h!38519 l!1390)) key!405)))))

(declare-fun b!1580713 () Bool)

(assert (=> b!1580713 (= e!881934 (containsKey!920 (t!51900 l!1390) key!405))))

(assert (= (and d!166471 (not res!1079962)) b!1580712))

(assert (= (and b!1580712 res!1079963) b!1580713))

(assert (=> b!1580713 m!1451933))

(assert (=> b!1580606 d!166471))

(declare-fun d!166481 () Bool)

(declare-fun res!1079964 () Bool)

(declare-fun e!881935 () Bool)

(assert (=> d!166481 (=> res!1079964 e!881935)))

(assert (=> d!166481 (= res!1079964 (or (is-Nil!36976 (t!51900 l!1390)) (is-Nil!36976 (t!51900 (t!51900 l!1390)))))))

(assert (=> d!166481 (= (isStrictlySorted!1074 (t!51900 l!1390)) e!881935)))

(declare-fun b!1580714 () Bool)

(declare-fun e!881936 () Bool)

(assert (=> b!1580714 (= e!881935 e!881936)))

(declare-fun res!1079965 () Bool)

(assert (=> b!1580714 (=> (not res!1079965) (not e!881936))))

(assert (=> b!1580714 (= res!1079965 (bvslt (_1!12856 (h!38519 (t!51900 l!1390))) (_1!12856 (h!38519 (t!51900 (t!51900 l!1390))))))))

(declare-fun b!1580715 () Bool)

(assert (=> b!1580715 (= e!881936 (isStrictlySorted!1074 (t!51900 (t!51900 l!1390))))))

(assert (= (and d!166481 (not res!1079964)) b!1580714))

(assert (= (and b!1580714 res!1079965) b!1580715))

(declare-fun m!1451989 () Bool)

(assert (=> b!1580715 m!1451989))

(assert (=> b!1580605 d!166481))

(declare-fun d!166483 () Bool)

(assert (=> d!166483 (= (get!26826 lt!676729) (v!22408 lt!676729))))

(assert (=> b!1580600 d!166483))

(declare-fun lt!676744 () Bool)

(declare-fun d!166485 () Bool)

(declare-fun content!843 (List!36979) (Set tuple2!25692))

(assert (=> d!166485 (= lt!676744 (set.member (tuple2!25693 key!405 value!194) (content!843 l!1390)))))

(declare-fun e!881947 () Bool)

(assert (=> d!166485 (= lt!676744 e!881947)))

(declare-fun res!1079973 () Bool)

(assert (=> d!166485 (=> (not res!1079973) (not e!881947))))

(assert (=> d!166485 (= res!1079973 (is-Cons!36975 l!1390))))

(assert (=> d!166485 (= (contains!10507 l!1390 (tuple2!25693 key!405 value!194)) lt!676744)))

(declare-fun b!1580727 () Bool)

(declare-fun e!881946 () Bool)

(assert (=> b!1580727 (= e!881947 e!881946)))

(declare-fun res!1079972 () Bool)

(assert (=> b!1580727 (=> res!1079972 e!881946)))

(assert (=> b!1580727 (= res!1079972 (= (h!38519 l!1390) (tuple2!25693 key!405 value!194)))))

(declare-fun b!1580728 () Bool)

(assert (=> b!1580728 (= e!881946 (contains!10507 (t!51900 l!1390) (tuple2!25693 key!405 value!194)))))

(assert (= (and d!166485 res!1079973) b!1580727))

(assert (= (and b!1580727 (not res!1079972)) b!1580728))

(declare-fun m!1451997 () Bool)

(assert (=> d!166485 m!1451997))

(declare-fun m!1451999 () Bool)

(assert (=> d!166485 m!1451999))

(declare-fun m!1452001 () Bool)

(assert (=> b!1580728 m!1452001))

(assert (=> b!1580599 d!166485))

(declare-fun d!166487 () Bool)

(declare-fun res!1079974 () Bool)

(declare-fun e!881948 () Bool)

(assert (=> d!166487 (=> res!1079974 e!881948)))

(assert (=> d!166487 (= res!1079974 (and (is-Cons!36975 (t!51900 l!1390)) (= (_1!12856 (h!38519 (t!51900 l!1390))) key!405)))))

(assert (=> d!166487 (= (containsKey!920 (t!51900 l!1390) key!405) e!881948)))

(declare-fun b!1580729 () Bool)

(declare-fun e!881949 () Bool)

(assert (=> b!1580729 (= e!881948 e!881949)))

(declare-fun res!1079975 () Bool)

(assert (=> b!1580729 (=> (not res!1079975) (not e!881949))))

(assert (=> b!1580729 (= res!1079975 (and (or (not (is-Cons!36975 (t!51900 l!1390))) (bvsle (_1!12856 (h!38519 (t!51900 l!1390))) key!405)) (is-Cons!36975 (t!51900 l!1390)) (bvslt (_1!12856 (h!38519 (t!51900 l!1390))) key!405)))))

(declare-fun b!1580730 () Bool)

(assert (=> b!1580730 (= e!881949 (containsKey!920 (t!51900 (t!51900 l!1390)) key!405))))

(assert (= (and d!166487 (not res!1079974)) b!1580729))

(assert (= (and b!1580729 res!1079975) b!1580730))

(declare-fun m!1452003 () Bool)

(assert (=> b!1580730 m!1452003))

(assert (=> b!1580604 d!166487))

(declare-fun b!1580735 () Bool)

(declare-fun e!881952 () Bool)

(declare-fun tp!114523 () Bool)

(assert (=> b!1580735 (= e!881952 (and tp_is_empty!39217 tp!114523))))

(assert (=> b!1580602 (= tp!114508 e!881952)))

(assert (= (and b!1580602 (is-Cons!36975 (t!51900 l!1390))) b!1580735))

(push 1)

(assert (not d!166485))

(assert (not b!1580730))

(assert (not b!1580735))

(assert (not b!1580728))

(assert (not b!1580715))

(assert (not b!1580713))

(assert tp_is_empty!39217)

(assert (not b!1580682))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

