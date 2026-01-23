; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!506188 () Bool)

(assert start!506188)

(declare-fun b!4850965 () Bool)

(declare-fun e!3032514 () Bool)

(declare-fun e!3032515 () Bool)

(assert (=> b!4850965 (= e!3032514 e!3032515)))

(declare-fun res!2070500 () Bool)

(assert (=> b!4850965 (=> res!2070500 e!3032515)))

(declare-datatypes ((K!17394 0))(
  ( (K!17395 (val!22221 Int)) )
))
(declare-datatypes ((V!17640 0))(
  ( (V!17641 (val!22222 Int)) )
))
(declare-datatypes ((tuple2!59314 0))(
  ( (tuple2!59315 (_1!32951 K!17394) (_2!32951 V!17640)) )
))
(declare-datatypes ((List!55714 0))(
  ( (Nil!55590) (Cons!55590 (h!62027 tuple2!59314) (t!363210 List!55714)) )
))
(declare-datatypes ((tuple2!59316 0))(
  ( (tuple2!59317 (_1!32952 (_ BitVec 64)) (_2!32952 List!55714)) )
))
(declare-datatypes ((List!55715 0))(
  ( (Nil!55591) (Cons!55591 (h!62028 tuple2!59316) (t!363211 List!55715)) )
))
(declare-datatypes ((ListLongMap!6495 0))(
  ( (ListLongMap!6496 (toList!7876 List!55715)) )
))
(declare-fun lm!2646 () ListLongMap!6495)

(declare-fun key!6445 () K!17394)

(declare-fun containsKey!4712 (List!55714 K!17394) Bool)

(assert (=> b!4850965 (= res!2070500 (containsKey!4712 (_2!32952 (h!62028 (toList!7876 lm!2646))) key!6445))))

(declare-fun apply!13459 (ListLongMap!6495 (_ BitVec 64)) List!55714)

(assert (=> b!4850965 (not (containsKey!4712 (apply!13459 lm!2646 (_1!32952 (h!62028 (toList!7876 lm!2646)))) key!6445))))

(declare-datatypes ((Hashable!7516 0))(
  ( (HashableExt!7515 (__x!33791 Int)) )
))
(declare-fun hashF!1641 () Hashable!7516)

(declare-datatypes ((Unit!145746 0))(
  ( (Unit!145747) )
))
(declare-fun lt!1989878 () Unit!145746)

(declare-fun lemmaNotSameHashThenCannotContainKey!266 (ListLongMap!6495 K!17394 (_ BitVec 64) Hashable!7516) Unit!145746)

(assert (=> b!4850965 (= lt!1989878 (lemmaNotSameHashThenCannotContainKey!266 lm!2646 key!6445 (_1!32952 (h!62028 (toList!7876 lm!2646))) hashF!1641))))

(declare-fun b!4850966 () Bool)

(assert (=> b!4850966 (= e!3032515 true)))

(declare-fun lt!1989877 () Bool)

(declare-fun containsKeyBiggerList!772 (List!55715 K!17394) Bool)

(assert (=> b!4850966 (= lt!1989877 (containsKeyBiggerList!772 (toList!7876 lm!2646) key!6445))))

(declare-fun lt!1989882 () ListLongMap!6495)

(assert (=> b!4850966 (containsKeyBiggerList!772 (toList!7876 lt!1989882) key!6445)))

(declare-fun lt!1989880 () Unit!145746)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!376 (ListLongMap!6495 K!17394 Hashable!7516) Unit!145746)

(assert (=> b!4850966 (= lt!1989880 (lemmaInLongMapThenContainsKeyBiggerList!376 lt!1989882 key!6445 hashF!1641))))

(declare-fun tail!9554 (ListLongMap!6495) ListLongMap!6495)

(assert (=> b!4850966 (= lt!1989882 (tail!9554 lm!2646))))

(declare-fun b!4850967 () Bool)

(declare-fun e!3032517 () Bool)

(assert (=> b!4850967 (= e!3032517 (not e!3032514))))

(declare-fun res!2070498 () Bool)

(assert (=> b!4850967 (=> res!2070498 e!3032514)))

(declare-fun lt!1989883 () List!55714)

(declare-datatypes ((Option!13701 0))(
  ( (None!13700) (Some!13700 (v!49492 tuple2!59314)) )
))
(declare-fun isDefined!10793 (Option!13701) Bool)

(declare-fun getPair!1106 (List!55714 K!17394) Option!13701)

(assert (=> b!4850967 (= res!2070498 (not (isDefined!10793 (getPair!1106 lt!1989883 key!6445))))))

(declare-fun lt!1989876 () tuple2!59316)

(declare-fun lambda!242756 () Int)

(declare-fun lt!1989884 () Unit!145746)

(declare-fun forallContained!4557 (List!55715 Int tuple2!59316) Unit!145746)

(assert (=> b!4850967 (= lt!1989884 (forallContained!4557 (toList!7876 lm!2646) lambda!242756 lt!1989876))))

(declare-fun contains!19259 (List!55715 tuple2!59316) Bool)

(assert (=> b!4850967 (contains!19259 (toList!7876 lm!2646) lt!1989876)))

(declare-fun lt!1989879 () (_ BitVec 64))

(assert (=> b!4850967 (= lt!1989876 (tuple2!59317 lt!1989879 lt!1989883))))

(declare-fun lt!1989881 () Unit!145746)

(declare-fun lemmaGetValueImpliesTupleContained!783 (ListLongMap!6495 (_ BitVec 64) List!55714) Unit!145746)

(assert (=> b!4850967 (= lt!1989881 (lemmaGetValueImpliesTupleContained!783 lm!2646 lt!1989879 lt!1989883))))

(assert (=> b!4850967 (= lt!1989883 (apply!13459 lm!2646 lt!1989879))))

(declare-fun b!4850968 () Bool)

(declare-fun e!3032516 () Bool)

(assert (=> b!4850968 (= e!3032516 e!3032517)))

(declare-fun res!2070499 () Bool)

(assert (=> b!4850968 (=> (not res!2070499) (not e!3032517))))

(declare-fun contains!19260 (ListLongMap!6495 (_ BitVec 64)) Bool)

(assert (=> b!4850968 (= res!2070499 (contains!19260 lm!2646 lt!1989879))))

(declare-fun hash!5642 (Hashable!7516 K!17394) (_ BitVec 64))

(assert (=> b!4850968 (= lt!1989879 (hash!5642 hashF!1641 key!6445))))

(declare-fun res!2070497 () Bool)

(assert (=> start!506188 (=> (not res!2070497) (not e!3032516))))

(declare-fun forall!12969 (List!55715 Int) Bool)

(assert (=> start!506188 (= res!2070497 (forall!12969 (toList!7876 lm!2646) lambda!242756))))

(assert (=> start!506188 e!3032516))

(declare-fun e!3032518 () Bool)

(declare-fun inv!71280 (ListLongMap!6495) Bool)

(assert (=> start!506188 (and (inv!71280 lm!2646) e!3032518)))

(assert (=> start!506188 true))

(declare-fun tp_is_empty!35247 () Bool)

(assert (=> start!506188 tp_is_empty!35247))

(declare-fun b!4850969 () Bool)

(declare-fun res!2070496 () Bool)

(assert (=> b!4850969 (=> res!2070496 e!3032514)))

(get-info :version)

(assert (=> b!4850969 (= res!2070496 (or (and ((_ is Cons!55591) (toList!7876 lm!2646)) (= (_1!32952 (h!62028 (toList!7876 lm!2646))) lt!1989879)) (not ((_ is Cons!55591) (toList!7876 lm!2646))) (= lt!1989879 (_1!32952 (h!62028 (toList!7876 lm!2646))))))))

(declare-fun b!4850970 () Bool)

(declare-fun tp!1364848 () Bool)

(assert (=> b!4850970 (= e!3032518 tp!1364848)))

(declare-fun b!4850971 () Bool)

(declare-fun res!2070501 () Bool)

(assert (=> b!4850971 (=> (not res!2070501) (not e!3032516))))

(declare-fun allKeysSameHashInMap!2832 (ListLongMap!6495 Hashable!7516) Bool)

(assert (=> b!4850971 (= res!2070501 (allKeysSameHashInMap!2832 lm!2646 hashF!1641))))

(assert (= (and start!506188 res!2070497) b!4850971))

(assert (= (and b!4850971 res!2070501) b!4850968))

(assert (= (and b!4850968 res!2070499) b!4850967))

(assert (= (and b!4850967 (not res!2070498)) b!4850969))

(assert (= (and b!4850969 (not res!2070496)) b!4850965))

(assert (= (and b!4850965 (not res!2070500)) b!4850966))

(assert (= start!506188 b!4850970))

(declare-fun m!5849538 () Bool)

(assert (=> b!4850966 m!5849538))

(declare-fun m!5849540 () Bool)

(assert (=> b!4850966 m!5849540))

(declare-fun m!5849542 () Bool)

(assert (=> b!4850966 m!5849542))

(declare-fun m!5849544 () Bool)

(assert (=> b!4850966 m!5849544))

(declare-fun m!5849546 () Bool)

(assert (=> start!506188 m!5849546))

(declare-fun m!5849548 () Bool)

(assert (=> start!506188 m!5849548))

(declare-fun m!5849550 () Bool)

(assert (=> b!4850967 m!5849550))

(declare-fun m!5849552 () Bool)

(assert (=> b!4850967 m!5849552))

(declare-fun m!5849554 () Bool)

(assert (=> b!4850967 m!5849554))

(declare-fun m!5849556 () Bool)

(assert (=> b!4850967 m!5849556))

(assert (=> b!4850967 m!5849550))

(declare-fun m!5849558 () Bool)

(assert (=> b!4850967 m!5849558))

(declare-fun m!5849560 () Bool)

(assert (=> b!4850967 m!5849560))

(declare-fun m!5849562 () Bool)

(assert (=> b!4850968 m!5849562))

(declare-fun m!5849564 () Bool)

(assert (=> b!4850968 m!5849564))

(declare-fun m!5849566 () Bool)

(assert (=> b!4850971 m!5849566))

(declare-fun m!5849568 () Bool)

(assert (=> b!4850965 m!5849568))

(declare-fun m!5849570 () Bool)

(assert (=> b!4850965 m!5849570))

(assert (=> b!4850965 m!5849570))

(declare-fun m!5849572 () Bool)

(assert (=> b!4850965 m!5849572))

(declare-fun m!5849574 () Bool)

(assert (=> b!4850965 m!5849574))

(check-sat (not b!4850970) (not b!4850968) (not b!4850966) (not start!506188) tp_is_empty!35247 (not b!4850967) (not b!4850971) (not b!4850965))
(check-sat)
