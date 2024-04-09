; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106824 () Bool)

(assert start!106824)

(declare-fun b!1267318 () Bool)

(declare-fun res!843696 () Bool)

(declare-fun e!721989 () Bool)

(assert (=> b!1267318 (=> (not res!843696) (not e!721989))))

(declare-datatypes ((B!2080 0))(
  ( (B!2081 (val!16375 Int)) )
))
(declare-datatypes ((tuple2!21418 0))(
  ( (tuple2!21419 (_1!10719 (_ BitVec 64)) (_2!10719 B!2080)) )
))
(declare-datatypes ((List!28542 0))(
  ( (Nil!28539) (Cons!28538 (h!29747 tuple2!21418) (t!42076 List!28542)) )
))
(declare-fun l!874 () List!28542)

(declare-fun key!235 () (_ BitVec 64))

(declare-fun containsKey!681 (List!28542 (_ BitVec 64)) Bool)

(assert (=> b!1267318 (= res!843696 (not (containsKey!681 l!874 key!235)))))

(declare-fun res!843695 () Bool)

(assert (=> start!106824 (=> (not res!843695) (not e!721989))))

(declare-fun isStrictlySorted!820 (List!28542) Bool)

(assert (=> start!106824 (= res!843695 (isStrictlySorted!820 l!874))))

(assert (=> start!106824 e!721989))

(declare-fun e!721990 () Bool)

(assert (=> start!106824 e!721990))

(assert (=> start!106824 true))

(declare-fun b!1267319 () Bool)

(assert (=> b!1267319 (= e!721989 (containsKey!681 (t!42076 l!874) key!235))))

(declare-fun b!1267320 () Bool)

(declare-fun res!843697 () Bool)

(assert (=> b!1267320 (=> (not res!843697) (not e!721989))))

(get-info :version)

(assert (=> b!1267320 (= res!843697 ((_ is Cons!28538) l!874))))

(declare-fun b!1267321 () Bool)

(declare-fun res!843694 () Bool)

(assert (=> b!1267321 (=> (not res!843694) (not e!721989))))

(assert (=> b!1267321 (= res!843694 (isStrictlySorted!820 (t!42076 l!874)))))

(declare-fun b!1267322 () Bool)

(declare-fun tp_is_empty!32601 () Bool)

(declare-fun tp!96609 () Bool)

(assert (=> b!1267322 (= e!721990 (and tp_is_empty!32601 tp!96609))))

(assert (= (and start!106824 res!843695) b!1267318))

(assert (= (and b!1267318 res!843696) b!1267320))

(assert (= (and b!1267320 res!843697) b!1267321))

(assert (= (and b!1267321 res!843694) b!1267319))

(assert (= (and start!106824 ((_ is Cons!28538) l!874)) b!1267322))

(declare-fun m!1166675 () Bool)

(assert (=> b!1267318 m!1166675))

(declare-fun m!1166677 () Bool)

(assert (=> start!106824 m!1166677))

(declare-fun m!1166679 () Bool)

(assert (=> b!1267319 m!1166679))

(declare-fun m!1166681 () Bool)

(assert (=> b!1267321 m!1166681))

(check-sat (not start!106824) (not b!1267318) (not b!1267319) (not b!1267321) (not b!1267322) tp_is_empty!32601)
(check-sat)
(get-model)

(declare-fun d!139379 () Bool)

(declare-fun res!843728 () Bool)

(declare-fun e!722015 () Bool)

(assert (=> d!139379 (=> res!843728 e!722015)))

(assert (=> d!139379 (= res!843728 (and ((_ is Cons!28538) (t!42076 l!874)) (= (_1!10719 (h!29747 (t!42076 l!874))) key!235)))))

(assert (=> d!139379 (= (containsKey!681 (t!42076 l!874) key!235) e!722015)))

(declare-fun b!1267356 () Bool)

(declare-fun e!722016 () Bool)

(assert (=> b!1267356 (= e!722015 e!722016)))

(declare-fun res!843729 () Bool)

(assert (=> b!1267356 (=> (not res!843729) (not e!722016))))

(assert (=> b!1267356 (= res!843729 (and (or (not ((_ is Cons!28538) (t!42076 l!874))) (bvsle (_1!10719 (h!29747 (t!42076 l!874))) key!235)) ((_ is Cons!28538) (t!42076 l!874)) (bvslt (_1!10719 (h!29747 (t!42076 l!874))) key!235)))))

(declare-fun b!1267357 () Bool)

(assert (=> b!1267357 (= e!722016 (containsKey!681 (t!42076 (t!42076 l!874)) key!235))))

(assert (= (and d!139379 (not res!843728)) b!1267356))

(assert (= (and b!1267356 res!843729) b!1267357))

(declare-fun m!1166693 () Bool)

(assert (=> b!1267357 m!1166693))

(assert (=> b!1267319 d!139379))

(declare-fun d!139391 () Bool)

(declare-fun res!843730 () Bool)

(declare-fun e!722017 () Bool)

(assert (=> d!139391 (=> res!843730 e!722017)))

(assert (=> d!139391 (= res!843730 (and ((_ is Cons!28538) l!874) (= (_1!10719 (h!29747 l!874)) key!235)))))

(assert (=> d!139391 (= (containsKey!681 l!874 key!235) e!722017)))

(declare-fun b!1267358 () Bool)

(declare-fun e!722018 () Bool)

(assert (=> b!1267358 (= e!722017 e!722018)))

(declare-fun res!843731 () Bool)

(assert (=> b!1267358 (=> (not res!843731) (not e!722018))))

(assert (=> b!1267358 (= res!843731 (and (or (not ((_ is Cons!28538) l!874)) (bvsle (_1!10719 (h!29747 l!874)) key!235)) ((_ is Cons!28538) l!874) (bvslt (_1!10719 (h!29747 l!874)) key!235)))))

(declare-fun b!1267359 () Bool)

(assert (=> b!1267359 (= e!722018 (containsKey!681 (t!42076 l!874) key!235))))

(assert (= (and d!139391 (not res!843730)) b!1267358))

(assert (= (and b!1267358 res!843731) b!1267359))

(assert (=> b!1267359 m!1166679))

(assert (=> b!1267318 d!139391))

(declare-fun d!139393 () Bool)

(declare-fun res!843748 () Bool)

(declare-fun e!722035 () Bool)

(assert (=> d!139393 (=> res!843748 e!722035)))

(assert (=> d!139393 (= res!843748 (or ((_ is Nil!28539) l!874) ((_ is Nil!28539) (t!42076 l!874))))))

(assert (=> d!139393 (= (isStrictlySorted!820 l!874) e!722035)))

(declare-fun b!1267376 () Bool)

(declare-fun e!722036 () Bool)

(assert (=> b!1267376 (= e!722035 e!722036)))

(declare-fun res!843749 () Bool)

(assert (=> b!1267376 (=> (not res!843749) (not e!722036))))

(assert (=> b!1267376 (= res!843749 (bvslt (_1!10719 (h!29747 l!874)) (_1!10719 (h!29747 (t!42076 l!874)))))))

(declare-fun b!1267377 () Bool)

(assert (=> b!1267377 (= e!722036 (isStrictlySorted!820 (t!42076 l!874)))))

(assert (= (and d!139393 (not res!843748)) b!1267376))

(assert (= (and b!1267376 res!843749) b!1267377))

(assert (=> b!1267377 m!1166681))

(assert (=> start!106824 d!139393))

(declare-fun d!139399 () Bool)

(declare-fun res!843754 () Bool)

(declare-fun e!722041 () Bool)

(assert (=> d!139399 (=> res!843754 e!722041)))

(assert (=> d!139399 (= res!843754 (or ((_ is Nil!28539) (t!42076 l!874)) ((_ is Nil!28539) (t!42076 (t!42076 l!874)))))))

(assert (=> d!139399 (= (isStrictlySorted!820 (t!42076 l!874)) e!722041)))

(declare-fun b!1267382 () Bool)

(declare-fun e!722042 () Bool)

(assert (=> b!1267382 (= e!722041 e!722042)))

(declare-fun res!843755 () Bool)

(assert (=> b!1267382 (=> (not res!843755) (not e!722042))))

(assert (=> b!1267382 (= res!843755 (bvslt (_1!10719 (h!29747 (t!42076 l!874))) (_1!10719 (h!29747 (t!42076 (t!42076 l!874))))))))

(declare-fun b!1267383 () Bool)

(assert (=> b!1267383 (= e!722042 (isStrictlySorted!820 (t!42076 (t!42076 l!874))))))

(assert (= (and d!139399 (not res!843754)) b!1267382))

(assert (= (and b!1267382 res!843755) b!1267383))

(declare-fun m!1166697 () Bool)

(assert (=> b!1267383 m!1166697))

(assert (=> b!1267321 d!139399))

(declare-fun b!1267398 () Bool)

(declare-fun e!722051 () Bool)

(declare-fun tp!96619 () Bool)

(assert (=> b!1267398 (= e!722051 (and tp_is_empty!32601 tp!96619))))

(assert (=> b!1267322 (= tp!96609 e!722051)))

(assert (= (and b!1267322 ((_ is Cons!28538) (t!42076 l!874))) b!1267398))

(check-sat (not b!1267398) (not b!1267377) tp_is_empty!32601 (not b!1267383) (not b!1267359) (not b!1267357))
(check-sat)
