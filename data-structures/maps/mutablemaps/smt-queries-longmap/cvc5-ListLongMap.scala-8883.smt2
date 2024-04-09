; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107894 () Bool)

(assert start!107894)

(declare-fun b!1274806 () Bool)

(declare-fun res!847487 () Bool)

(declare-fun e!727620 () Bool)

(assert (=> b!1274806 (=> (not res!847487) (not e!727620))))

(declare-datatypes ((B!2168 0))(
  ( (B!2169 (val!16680 Int)) )
))
(declare-datatypes ((tuple2!21588 0))(
  ( (tuple2!21589 (_1!10804 (_ BitVec 64)) (_2!10804 B!2168)) )
))
(declare-datatypes ((List!28764 0))(
  ( (Nil!28761) (Cons!28760 (h!29969 tuple2!21588) (t!42304 List!28764)) )
))
(declare-fun l!595 () List!28764)

(declare-fun key!173 () (_ BitVec 64))

(assert (=> b!1274806 (= res!847487 (and (not (= (_1!10804 (h!29969 l!595)) key!173)) (is-Cons!28760 l!595)))))

(declare-fun b!1274809 () Bool)

(declare-fun e!727618 () Bool)

(declare-fun tp_is_empty!33211 () Bool)

(declare-fun tp!98058 () Bool)

(assert (=> b!1274809 (= e!727618 (and tp_is_empty!33211 tp!98058))))

(declare-fun res!847489 () Bool)

(assert (=> start!107894 (=> (not res!847489) (not e!727620))))

(declare-fun isStrictlySorted!855 (List!28764) Bool)

(assert (=> start!107894 (= res!847489 (isStrictlySorted!855 l!595))))

(assert (=> start!107894 e!727620))

(assert (=> start!107894 e!727618))

(assert (=> start!107894 true))

(declare-fun b!1274808 () Bool)

(declare-fun e!727619 () Bool)

(declare-fun lt!575240 () List!28764)

(declare-fun containsKey!701 (List!28764 (_ BitVec 64)) Bool)

(assert (=> b!1274808 (= e!727619 (containsKey!701 lt!575240 key!173))))

(declare-fun b!1274807 () Bool)

(assert (=> b!1274807 (= e!727620 e!727619)))

(declare-fun res!847488 () Bool)

(assert (=> b!1274807 (=> res!847488 e!727619)))

(assert (=> b!1274807 (= res!847488 (not (isStrictlySorted!855 lt!575240)))))

(declare-fun $colon$colon!666 (List!28764 tuple2!21588) List!28764)

(declare-fun removeStrictlySorted!183 (List!28764 (_ BitVec 64)) List!28764)

(assert (=> b!1274807 (= lt!575240 ($colon$colon!666 (removeStrictlySorted!183 (t!42304 l!595) key!173) (h!29969 l!595)))))

(assert (= (and start!107894 res!847489) b!1274806))

(assert (= (and b!1274806 res!847487) b!1274807))

(assert (= (and b!1274807 (not res!847488)) b!1274808))

(assert (= (and start!107894 (is-Cons!28760 l!595)) b!1274809))

(declare-fun m!1171339 () Bool)

(assert (=> start!107894 m!1171339))

(declare-fun m!1171341 () Bool)

(assert (=> b!1274808 m!1171341))

(declare-fun m!1171343 () Bool)

(assert (=> b!1274807 m!1171343))

(declare-fun m!1171345 () Bool)

(assert (=> b!1274807 m!1171345))

(assert (=> b!1274807 m!1171345))

(declare-fun m!1171347 () Bool)

(assert (=> b!1274807 m!1171347))

(push 1)

(assert (not b!1274809))

(assert tp_is_empty!33211)

(assert (not b!1274807))

(assert (not start!107894))

(assert (not b!1274808))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140167 () Bool)

(declare-fun res!847526 () Bool)

(declare-fun e!727658 () Bool)

(assert (=> d!140167 (=> res!847526 e!727658)))

(assert (=> d!140167 (= res!847526 (and (is-Cons!28760 lt!575240) (= (_1!10804 (h!29969 lt!575240)) key!173)))))

(assert (=> d!140167 (= (containsKey!701 lt!575240 key!173) e!727658)))

(declare-fun b!1274852 () Bool)

(declare-fun e!727660 () Bool)

(assert (=> b!1274852 (= e!727658 e!727660)))

(declare-fun res!847529 () Bool)

(assert (=> b!1274852 (=> (not res!847529) (not e!727660))))

(assert (=> b!1274852 (= res!847529 (and (or (not (is-Cons!28760 lt!575240)) (bvsle (_1!10804 (h!29969 lt!575240)) key!173)) (is-Cons!28760 lt!575240) (bvslt (_1!10804 (h!29969 lt!575240)) key!173)))))

(declare-fun b!1274853 () Bool)

(assert (=> b!1274853 (= e!727660 (containsKey!701 (t!42304 lt!575240) key!173))))

(assert (= (and d!140167 (not res!847526)) b!1274852))

(assert (= (and b!1274852 res!847529) b!1274853))

(declare-fun m!1171373 () Bool)

(assert (=> b!1274853 m!1171373))

(assert (=> b!1274808 d!140167))

(declare-fun d!140173 () Bool)

(declare-fun res!847544 () Bool)

(declare-fun e!727675 () Bool)

(assert (=> d!140173 (=> res!847544 e!727675)))

(assert (=> d!140173 (= res!847544 (or (is-Nil!28761 lt!575240) (is-Nil!28761 (t!42304 lt!575240))))))

(assert (=> d!140173 (= (isStrictlySorted!855 lt!575240) e!727675)))

(declare-fun b!1274870 () Bool)

(declare-fun e!727676 () Bool)

(assert (=> b!1274870 (= e!727675 e!727676)))

(declare-fun res!847545 () Bool)

(assert (=> b!1274870 (=> (not res!847545) (not e!727676))))

(assert (=> b!1274870 (= res!847545 (bvslt (_1!10804 (h!29969 lt!575240)) (_1!10804 (h!29969 (t!42304 lt!575240)))))))

(declare-fun b!1274871 () Bool)

(assert (=> b!1274871 (= e!727676 (isStrictlySorted!855 (t!42304 lt!575240)))))

(assert (= (and d!140173 (not res!847544)) b!1274870))

(assert (= (and b!1274870 res!847545) b!1274871))

(declare-fun m!1171381 () Bool)

(assert (=> b!1274871 m!1171381))

(assert (=> b!1274807 d!140173))

(declare-fun d!140183 () Bool)

(assert (=> d!140183 (= ($colon$colon!666 (removeStrictlySorted!183 (t!42304 l!595) key!173) (h!29969 l!595)) (Cons!28760 (h!29969 l!595) (removeStrictlySorted!183 (t!42304 l!595) key!173)))))

(assert (=> b!1274807 d!140183))

(declare-fun b!1274900 () Bool)

(declare-fun e!727695 () List!28764)

(assert (=> b!1274900 (= e!727695 Nil!28761)))

(declare-fun d!140185 () Bool)

(declare-fun e!727694 () Bool)

(assert (=> d!140185 e!727694))

(declare-fun res!847550 () Bool)

(assert (=> d!140185 (=> (not res!847550) (not e!727694))))

(declare-fun lt!575253 () List!28764)

(assert (=> d!140185 (= res!847550 (isStrictlySorted!855 lt!575253))))

(declare-fun e!727693 () List!28764)

(assert (=> d!140185 (= lt!575253 e!727693)))

(declare-fun c!123847 () Bool)

(assert (=> d!140185 (= c!123847 (and (is-Cons!28760 (t!42304 l!595)) (= (_1!10804 (h!29969 (t!42304 l!595))) key!173)))))

(assert (=> d!140185 (isStrictlySorted!855 (t!42304 l!595))))

(assert (=> d!140185 (= (removeStrictlySorted!183 (t!42304 l!595) key!173) lt!575253)))

(declare-fun b!1274901 () Bool)

(assert (=> b!1274901 (= e!727693 (t!42304 (t!42304 l!595)))))

(declare-fun b!1274902 () Bool)

(assert (=> b!1274902 (= e!727694 (not (containsKey!701 lt!575253 key!173)))))

(declare-fun b!1274903 () Bool)

(assert (=> b!1274903 (= e!727693 e!727695)))

(declare-fun c!123848 () Bool)

(assert (=> b!1274903 (= c!123848 (and (is-Cons!28760 (t!42304 l!595)) (not (= (_1!10804 (h!29969 (t!42304 l!595))) key!173))))))

(declare-fun b!1274904 () Bool)

(assert (=> b!1274904 (= e!727695 ($colon$colon!666 (removeStrictlySorted!183 (t!42304 (t!42304 l!595)) key!173) (h!29969 (t!42304 l!595))))))

(assert (= (and d!140185 c!123847) b!1274901))

(assert (= (and d!140185 (not c!123847)) b!1274903))

(assert (= (and b!1274903 c!123848) b!1274904))

(assert (= (and b!1274903 (not c!123848)) b!1274900))

(assert (= (and d!140185 res!847550) b!1274902))

(declare-fun m!1171383 () Bool)

(assert (=> d!140185 m!1171383))

(declare-fun m!1171385 () Bool)

(assert (=> d!140185 m!1171385))

(declare-fun m!1171387 () Bool)

(assert (=> b!1274902 m!1171387))

(declare-fun m!1171389 () Bool)

(assert (=> b!1274904 m!1171389))

(assert (=> b!1274904 m!1171389))

(declare-fun m!1171391 () Bool)

(assert (=> b!1274904 m!1171391))

(assert (=> b!1274807 d!140185))

(declare-fun d!140189 () Bool)

(declare-fun res!847551 () Bool)

(declare-fun e!727696 () Bool)

(assert (=> d!140189 (=> res!847551 e!727696)))

(assert (=> d!140189 (= res!847551 (or (is-Nil!28761 l!595) (is-Nil!28761 (t!42304 l!595))))))

(assert (=> d!140189 (= (isStrictlySorted!855 l!595) e!727696)))

(declare-fun b!1274905 () Bool)

(declare-fun e!727697 () Bool)

(assert (=> b!1274905 (= e!727696 e!727697)))

(declare-fun res!847552 () Bool)

(assert (=> b!1274905 (=> (not res!847552) (not e!727697))))

(assert (=> b!1274905 (= res!847552 (bvslt (_1!10804 (h!29969 l!595)) (_1!10804 (h!29969 (t!42304 l!595)))))))

(declare-fun b!1274906 () Bool)

(assert (=> b!1274906 (= e!727697 (isStrictlySorted!855 (t!42304 l!595)))))

(assert (= (and d!140189 (not res!847551)) b!1274905))

(assert (= (and b!1274905 res!847552) b!1274906))

(assert (=> b!1274906 m!1171385))

(assert (=> start!107894 d!140189))

(declare-fun b!1274913 () Bool)

(declare-fun e!727702 () Bool)

(declare-fun tp!98067 () Bool)

(assert (=> b!1274913 (= e!727702 (and tp_is_empty!33211 tp!98067))))

(assert (=> b!1274809 (= tp!98058 e!727702)))

(assert (= (and b!1274809 (is-Cons!28760 (t!42304 l!595))) b!1274913))

(push 1)

(assert (not b!1274913))

(assert tp_is_empty!33211)

(assert (not b!1274871))

(assert (not d!140185))

(assert (not b!1274904))

(assert (not b!1274853))

(assert (not b!1274902))

(assert (not b!1274906))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140207 () Bool)

(declare-fun res!847570 () Bool)

(declare-fun e!727731 () Bool)

(assert (=> d!140207 (=> res!847570 e!727731)))

(assert (=> d!140207 (= res!847570 (or (is-Nil!28761 lt!575253) (is-Nil!28761 (t!42304 lt!575253))))))

(assert (=> d!140207 (= (isStrictlySorted!855 lt!575253) e!727731)))

(declare-fun b!1274952 () Bool)

(declare-fun e!727732 () Bool)

(assert (=> b!1274952 (= e!727731 e!727732)))

(declare-fun res!847571 () Bool)

(assert (=> b!1274952 (=> (not res!847571) (not e!727732))))

(assert (=> b!1274952 (= res!847571 (bvslt (_1!10804 (h!29969 lt!575253)) (_1!10804 (h!29969 (t!42304 lt!575253)))))))

(declare-fun b!1274953 () Bool)

(assert (=> b!1274953 (= e!727732 (isStrictlySorted!855 (t!42304 lt!575253)))))

(assert (= (and d!140207 (not res!847570)) b!1274952))

(assert (= (and b!1274952 res!847571) b!1274953))

(declare-fun m!1171429 () Bool)

(assert (=> b!1274953 m!1171429))

(assert (=> d!140185 d!140207))

(declare-fun d!140209 () Bool)

(declare-fun res!847572 () Bool)

(declare-fun e!727733 () Bool)

(assert (=> d!140209 (=> res!847572 e!727733)))

(assert (=> d!140209 (= res!847572 (or (is-Nil!28761 (t!42304 l!595)) (is-Nil!28761 (t!42304 (t!42304 l!595)))))))

(assert (=> d!140209 (= (isStrictlySorted!855 (t!42304 l!595)) e!727733)))

(declare-fun b!1274954 () Bool)

(declare-fun e!727734 () Bool)

(assert (=> b!1274954 (= e!727733 e!727734)))

(declare-fun res!847573 () Bool)

(assert (=> b!1274954 (=> (not res!847573) (not e!727734))))

(assert (=> b!1274954 (= res!847573 (bvslt (_1!10804 (h!29969 (t!42304 l!595))) (_1!10804 (h!29969 (t!42304 (t!42304 l!595))))))))

(declare-fun b!1274955 () Bool)

(assert (=> b!1274955 (= e!727734 (isStrictlySorted!855 (t!42304 (t!42304 l!595))))))

(assert (= (and d!140209 (not res!847572)) b!1274954))

(assert (= (and b!1274954 res!847573) b!1274955))

(declare-fun m!1171431 () Bool)

(assert (=> b!1274955 m!1171431))

(assert (=> d!140185 d!140209))

(declare-fun d!140211 () Bool)

(declare-fun res!847574 () Bool)

(declare-fun e!727735 () Bool)

(assert (=> d!140211 (=> res!847574 e!727735)))

(assert (=> d!140211 (= res!847574 (and (is-Cons!28760 lt!575253) (= (_1!10804 (h!29969 lt!575253)) key!173)))))

(assert (=> d!140211 (= (containsKey!701 lt!575253 key!173) e!727735)))

(declare-fun b!1274956 () Bool)

(declare-fun e!727736 () Bool)

(assert (=> b!1274956 (= e!727735 e!727736)))

(declare-fun res!847575 () Bool)

(assert (=> b!1274956 (=> (not res!847575) (not e!727736))))

(assert (=> b!1274956 (= res!847575 (and (or (not (is-Cons!28760 lt!575253)) (bvsle (_1!10804 (h!29969 lt!575253)) key!173)) (is-Cons!28760 lt!575253) (bvslt (_1!10804 (h!29969 lt!575253)) key!173)))))

(declare-fun b!1274957 () Bool)

(assert (=> b!1274957 (= e!727736 (containsKey!701 (t!42304 lt!575253) key!173))))

(assert (= (and d!140211 (not res!847574)) b!1274956))

(assert (= (and b!1274956 res!847575) b!1274957))

(declare-fun m!1171433 () Bool)

(assert (=> b!1274957 m!1171433))

(assert (=> b!1274902 d!140211))

(declare-fun d!140213 () Bool)

(declare-fun res!847576 () Bool)

(declare-fun e!727737 () Bool)

(assert (=> d!140213 (=> res!847576 e!727737)))

(assert (=> d!140213 (= res!847576 (or (is-Nil!28761 (t!42304 lt!575240)) (is-Nil!28761 (t!42304 (t!42304 lt!575240)))))))

(assert (=> d!140213 (= (isStrictlySorted!855 (t!42304 lt!575240)) e!727737)))

(declare-fun b!1274958 () Bool)

(declare-fun e!727738 () Bool)

(assert (=> b!1274958 (= e!727737 e!727738)))

(declare-fun res!847577 () Bool)

(assert (=> b!1274958 (=> (not res!847577) (not e!727738))))

(assert (=> b!1274958 (= res!847577 (bvslt (_1!10804 (h!29969 (t!42304 lt!575240))) (_1!10804 (h!29969 (t!42304 (t!42304 lt!575240))))))))

(declare-fun b!1274959 () Bool)

(assert (=> b!1274959 (= e!727738 (isStrictlySorted!855 (t!42304 (t!42304 lt!575240))))))

(assert (= (and d!140213 (not res!847576)) b!1274958))

(assert (= (and b!1274958 res!847577) b!1274959))

(declare-fun m!1171435 () Bool)

(assert (=> b!1274959 m!1171435))

(assert (=> b!1274871 d!140213))

(declare-fun d!140215 () Bool)

(assert (=> d!140215 (= ($colon$colon!666 (removeStrictlySorted!183 (t!42304 (t!42304 l!595)) key!173) (h!29969 (t!42304 l!595))) (Cons!28760 (h!29969 (t!42304 l!595)) (removeStrictlySorted!183 (t!42304 (t!42304 l!595)) key!173)))))

(assert (=> b!1274904 d!140215))

(declare-fun b!1274960 () Bool)

(declare-fun e!727741 () List!28764)

(assert (=> b!1274960 (= e!727741 Nil!28761)))

(declare-fun d!140217 () Bool)

(declare-fun e!727740 () Bool)

(assert (=> d!140217 e!727740))

(declare-fun res!847578 () Bool)

(assert (=> d!140217 (=> (not res!847578) (not e!727740))))

(declare-fun lt!575257 () List!28764)

(assert (=> d!140217 (= res!847578 (isStrictlySorted!855 lt!575257))))

(declare-fun e!727739 () List!28764)

(assert (=> d!140217 (= lt!575257 e!727739)))

(declare-fun c!123855 () Bool)

(assert (=> d!140217 (= c!123855 (and (is-Cons!28760 (t!42304 (t!42304 l!595))) (= (_1!10804 (h!29969 (t!42304 (t!42304 l!595)))) key!173)))))

(assert (=> d!140217 (isStrictlySorted!855 (t!42304 (t!42304 l!595)))))

(assert (=> d!140217 (= (removeStrictlySorted!183 (t!42304 (t!42304 l!595)) key!173) lt!575257)))

(declare-fun b!1274961 () Bool)

(assert (=> b!1274961 (= e!727739 (t!42304 (t!42304 (t!42304 l!595))))))

(declare-fun b!1274962 () Bool)

(assert (=> b!1274962 (= e!727740 (not (containsKey!701 lt!575257 key!173)))))

(declare-fun b!1274963 () Bool)

(assert (=> b!1274963 (= e!727739 e!727741)))

(declare-fun c!123856 () Bool)

(assert (=> b!1274963 (= c!123856 (and (is-Cons!28760 (t!42304 (t!42304 l!595))) (not (= (_1!10804 (h!29969 (t!42304 (t!42304 l!595)))) key!173))))))

(declare-fun b!1274964 () Bool)

(assert (=> b!1274964 (= e!727741 ($colon$colon!666 (removeStrictlySorted!183 (t!42304 (t!42304 (t!42304 l!595))) key!173) (h!29969 (t!42304 (t!42304 l!595)))))))

(assert (= (and d!140217 c!123855) b!1274961))

(assert (= (and d!140217 (not c!123855)) b!1274963))

(assert (= (and b!1274963 c!123856) b!1274964))

(assert (= (and b!1274963 (not c!123856)) b!1274960))

(assert (= (and d!140217 res!847578) b!1274962))

(declare-fun m!1171437 () Bool)

(assert (=> d!140217 m!1171437))

(assert (=> d!140217 m!1171431))

(declare-fun m!1171439 () Bool)

(assert (=> b!1274962 m!1171439))

(declare-fun m!1171441 () Bool)

(assert (=> b!1274964 m!1171441))

(assert (=> b!1274964 m!1171441))

(declare-fun m!1171443 () Bool)

(assert (=> b!1274964 m!1171443))

(assert (=> b!1274904 d!140217))

(declare-fun d!140219 () Bool)

(declare-fun res!847579 () Bool)

(declare-fun e!727742 () Bool)

(assert (=> d!140219 (=> res!847579 e!727742)))

(assert (=> d!140219 (= res!847579 (and (is-Cons!28760 (t!42304 lt!575240)) (= (_1!10804 (h!29969 (t!42304 lt!575240))) key!173)))))

(assert (=> d!140219 (= (containsKey!701 (t!42304 lt!575240) key!173) e!727742)))

(declare-fun b!1274965 () Bool)

(declare-fun e!727743 () Bool)

(assert (=> b!1274965 (= e!727742 e!727743)))

(declare-fun res!847580 () Bool)

(assert (=> b!1274965 (=> (not res!847580) (not e!727743))))

(assert (=> b!1274965 (= res!847580 (and (or (not (is-Cons!28760 (t!42304 lt!575240))) (bvsle (_1!10804 (h!29969 (t!42304 lt!575240))) key!173)) (is-Cons!28760 (t!42304 lt!575240)) (bvslt (_1!10804 (h!29969 (t!42304 lt!575240))) key!173)))))

(declare-fun b!1274966 () Bool)

(assert (=> b!1274966 (= e!727743 (containsKey!701 (t!42304 (t!42304 lt!575240)) key!173))))

(assert (= (and d!140219 (not res!847579)) b!1274965))

(assert (= (and b!1274965 res!847580) b!1274966))

(declare-fun m!1171445 () Bool)

(assert (=> b!1274966 m!1171445))

(assert (=> b!1274853 d!140219))

(assert (=> b!1274906 d!140209))

(declare-fun b!1274967 () Bool)

(declare-fun e!727744 () Bool)

(declare-fun tp!98075 () Bool)

(assert (=> b!1274967 (= e!727744 (and tp_is_empty!33211 tp!98075))))

(assert (=> b!1274913 (= tp!98067 e!727744)))

(assert (= (and b!1274913 (is-Cons!28760 (t!42304 (t!42304 l!595)))) b!1274967))

(push 1)

(assert (not b!1274957))

(assert (not b!1274953))

(assert (not b!1274967))

(assert (not b!1274955))

(assert (not b!1274962))

(assert (not b!1274966))

(assert tp_is_empty!33211)

(assert (not b!1274959))

(assert (not b!1274964))

(assert (not d!140217))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

