; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1618 () Bool)

(assert start!1618)

(declare-fun b_free!461 () Bool)

(declare-fun b_next!461 () Bool)

(assert (=> start!1618 (= b_free!461 (not b_next!461))))

(declare-fun tp!1955 () Bool)

(declare-fun b_and!841 () Bool)

(assert (=> start!1618 (= tp!1955 b_and!841)))

(declare-fun b!11713 () Bool)

(declare-fun res!9706 () Bool)

(declare-fun e!6953 () Bool)

(assert (=> b!11713 (=> (not res!9706) (not e!6953))))

(declare-datatypes ((B!402 0))(
  ( (B!403 (val!296 Int)) )
))
(declare-datatypes ((tuple2!374 0))(
  ( (tuple2!375 (_1!187 (_ BitVec 64)) (_2!187 B!402)) )
))
(declare-datatypes ((List!343 0))(
  ( (Nil!340) (Cons!339 (h!905 tuple2!374) (t!2712 List!343)) )
))
(declare-fun kvs!4 () List!343)

(declare-fun p!216 () Int)

(declare-fun forall!67 (List!343 Int) Bool)

(assert (=> b!11713 (= res!9706 (forall!67 kvs!4 p!216))))

(declare-datatypes ((ListLongMap!355 0))(
  ( (ListLongMap!356 (toList!193 List!343)) )
))
(declare-fun lm!227 () ListLongMap!355)

(declare-fun b!11714 () Bool)

(declare-fun ++!9 (ListLongMap!355 List!343) ListLongMap!355)

(assert (=> b!11714 (= e!6953 (not (forall!67 (toList!193 (++!9 lm!227 kvs!4)) p!216)))))

(declare-fun b!11715 () Bool)

(declare-fun e!6952 () Bool)

(declare-fun tp!1954 () Bool)

(assert (=> b!11715 (= e!6952 tp!1954)))

(declare-fun b!11716 () Bool)

(declare-fun res!9704 () Bool)

(assert (=> b!11716 (=> (not res!9704) (not e!6953))))

(declare-fun isEmpty!74 (List!343) Bool)

(assert (=> b!11716 (= res!9704 (isEmpty!74 kvs!4))))

(declare-fun b!11717 () Bool)

(declare-fun e!6951 () Bool)

(declare-fun tp_is_empty!575 () Bool)

(declare-fun tp!1953 () Bool)

(assert (=> b!11717 (= e!6951 (and tp_is_empty!575 tp!1953))))

(declare-fun res!9705 () Bool)

(assert (=> start!1618 (=> (not res!9705) (not e!6953))))

(assert (=> start!1618 (= res!9705 (forall!67 (toList!193 lm!227) p!216))))

(assert (=> start!1618 e!6953))

(declare-fun inv!576 (ListLongMap!355) Bool)

(assert (=> start!1618 (and (inv!576 lm!227) e!6952)))

(assert (=> start!1618 tp!1955))

(assert (=> start!1618 e!6951))

(assert (= (and start!1618 res!9705) b!11713))

(assert (= (and b!11713 res!9706) b!11716))

(assert (= (and b!11716 res!9704) b!11714))

(assert (= start!1618 b!11715))

(assert (= (and start!1618 (is-Cons!339 kvs!4)) b!11717))

(declare-fun m!8159 () Bool)

(assert (=> b!11713 m!8159))

(declare-fun m!8161 () Bool)

(assert (=> b!11714 m!8161))

(declare-fun m!8163 () Bool)

(assert (=> b!11714 m!8163))

(declare-fun m!8165 () Bool)

(assert (=> b!11716 m!8165))

(declare-fun m!8167 () Bool)

(assert (=> start!1618 m!8167))

(declare-fun m!8169 () Bool)

(assert (=> start!1618 m!8169))

(push 1)

(assert (not b!11716))

(assert (not b!11717))

(assert (not b!11714))

(assert b_and!841)

(assert (not b!11713))

(assert (not b!11715))

(assert (not b_next!461))

(assert (not start!1618))

(assert tp_is_empty!575)

(check-sat)

(pop 1)

(push 1)

(assert b_and!841)

(assert (not b_next!461))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1599 () Bool)

(declare-fun res!9723 () Bool)

(declare-fun e!6970 () Bool)

(assert (=> d!1599 (=> res!9723 e!6970)))

(assert (=> d!1599 (= res!9723 (is-Nil!340 (toList!193 (++!9 lm!227 kvs!4))))))

(assert (=> d!1599 (= (forall!67 (toList!193 (++!9 lm!227 kvs!4)) p!216) e!6970)))

(declare-fun b!11734 () Bool)

(declare-fun e!6971 () Bool)

(assert (=> b!11734 (= e!6970 e!6971)))

(declare-fun res!9724 () Bool)

(assert (=> b!11734 (=> (not res!9724) (not e!6971))))

(declare-fun dynLambda!78 (Int tuple2!374) Bool)

(assert (=> b!11734 (= res!9724 (dynLambda!78 p!216 (h!905 (toList!193 (++!9 lm!227 kvs!4)))))))

(declare-fun b!11735 () Bool)

(assert (=> b!11735 (= e!6971 (forall!67 (t!2712 (toList!193 (++!9 lm!227 kvs!4))) p!216))))

(assert (= (and d!1599 (not res!9723)) b!11734))

(assert (= (and b!11734 res!9724) b!11735))

(declare-fun b_lambda!807 () Bool)

(assert (=> (not b_lambda!807) (not b!11734)))

(declare-fun t!2718 () Bool)

(declare-fun tb!373 () Bool)

(assert (=> (and start!1618 (= p!216 p!216) t!2718) tb!373))

(declare-fun result!553 () Bool)

(assert (=> tb!373 (= result!553 true)))

(assert (=> b!11734 t!2718))

(declare-fun b_and!847 () Bool)

(assert (= b_and!841 (and (=> t!2718 result!553) b_and!847)))

(declare-fun m!8179 () Bool)

(assert (=> b!11734 m!8179))

(declare-fun m!8181 () Bool)

(assert (=> b!11735 m!8181))

(assert (=> b!11714 d!1599))

(declare-fun d!1609 () Bool)

(declare-fun c!982 () Bool)

(assert (=> d!1609 (= c!982 (is-Nil!340 kvs!4))))

(declare-fun e!6982 () ListLongMap!355)

(assert (=> d!1609 (= (++!9 lm!227 kvs!4) e!6982)))

(declare-fun b!11750 () Bool)

(assert (=> b!11750 (= e!6982 lm!227)))

(declare-fun b!11751 () Bool)

(declare-fun +!32 (ListLongMap!355 tuple2!374) ListLongMap!355)

(assert (=> b!11751 (= e!6982 (++!9 (+!32 lm!227 (h!905 kvs!4)) (t!2712 kvs!4)))))

(assert (= (and d!1609 c!982) b!11750))

(assert (= (and d!1609 (not c!982)) b!11751))

(declare-fun m!8199 () Bool)

(assert (=> b!11751 m!8199))

(assert (=> b!11751 m!8199))

(declare-fun m!8201 () Bool)

(assert (=> b!11751 m!8201))

(assert (=> b!11714 d!1609))

(declare-fun d!1623 () Bool)

(declare-fun res!9731 () Bool)

(declare-fun e!6983 () Bool)

(assert (=> d!1623 (=> res!9731 e!6983)))

(assert (=> d!1623 (= res!9731 (is-Nil!340 kvs!4))))

(assert (=> d!1623 (= (forall!67 kvs!4 p!216) e!6983)))

(declare-fun b!11752 () Bool)

(declare-fun e!6984 () Bool)

(assert (=> b!11752 (= e!6983 e!6984)))

(declare-fun res!9732 () Bool)

(assert (=> b!11752 (=> (not res!9732) (not e!6984))))

(assert (=> b!11752 (= res!9732 (dynLambda!78 p!216 (h!905 kvs!4)))))

(declare-fun b!11753 () Bool)

(assert (=> b!11753 (= e!6984 (forall!67 (t!2712 kvs!4) p!216))))

(assert (= (and d!1623 (not res!9731)) b!11752))

(assert (= (and b!11752 res!9732) b!11753))

(declare-fun b_lambda!815 () Bool)

(assert (=> (not b_lambda!815) (not b!11752)))

(declare-fun t!2726 () Bool)

(declare-fun tb!381 () Bool)

(assert (=> (and start!1618 (= p!216 p!216) t!2726) tb!381))

(declare-fun result!561 () Bool)

(assert (=> tb!381 (= result!561 true)))

(assert (=> b!11752 t!2726))

(declare-fun b_and!855 () Bool)

(assert (= b_and!847 (and (=> t!2726 result!561) b_and!855)))

(declare-fun m!8203 () Bool)

(assert (=> b!11752 m!8203))

(declare-fun m!8205 () Bool)

(assert (=> b!11753 m!8205))

(assert (=> b!11713 d!1623))

(declare-fun d!1625 () Bool)

(declare-fun res!9733 () Bool)

(declare-fun e!6987 () Bool)

(assert (=> d!1625 (=> res!9733 e!6987)))

(assert (=> d!1625 (= res!9733 (is-Nil!340 (toList!193 lm!227)))))

(assert (=> d!1625 (= (forall!67 (toList!193 lm!227) p!216) e!6987)))

(declare-fun b!11760 () Bool)

(declare-fun e!6988 () Bool)

(assert (=> b!11760 (= e!6987 e!6988)))

(declare-fun res!9734 () Bool)

(assert (=> b!11760 (=> (not res!9734) (not e!6988))))

(assert (=> b!11760 (= res!9734 (dynLambda!78 p!216 (h!905 (toList!193 lm!227))))))

