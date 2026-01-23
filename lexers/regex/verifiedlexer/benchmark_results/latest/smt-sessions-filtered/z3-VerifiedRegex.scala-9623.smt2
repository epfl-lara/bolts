; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!506244 () Bool)

(assert start!506244)

(declare-fun b!4851168 () Bool)

(declare-fun res!2070635 () Bool)

(declare-fun e!3032659 () Bool)

(assert (=> b!4851168 (=> (not res!2070635) (not e!3032659))))

(declare-datatypes ((K!17404 0))(
  ( (K!17405 (val!22229 Int)) )
))
(declare-datatypes ((V!17650 0))(
  ( (V!17651 (val!22230 Int)) )
))
(declare-datatypes ((tuple2!59330 0))(
  ( (tuple2!59331 (_1!32959 K!17404) (_2!32959 V!17650)) )
))
(declare-datatypes ((List!55722 0))(
  ( (Nil!55598) (Cons!55598 (h!62035 tuple2!59330) (t!363218 List!55722)) )
))
(declare-datatypes ((tuple2!59332 0))(
  ( (tuple2!59333 (_1!32960 (_ BitVec 64)) (_2!32960 List!55722)) )
))
(declare-datatypes ((List!55723 0))(
  ( (Nil!55599) (Cons!55599 (h!62036 tuple2!59332) (t!363219 List!55723)) )
))
(declare-datatypes ((ListLongMap!6503 0))(
  ( (ListLongMap!6504 (toList!7880 List!55723)) )
))
(declare-fun lm!2646 () ListLongMap!6503)

(declare-datatypes ((Hashable!7520 0))(
  ( (HashableExt!7519 (__x!33795 Int)) )
))
(declare-fun hashF!1641 () Hashable!7520)

(declare-fun allKeysSameHashInMap!2836 (ListLongMap!6503 Hashable!7520) Bool)

(assert (=> b!4851168 (= res!2070635 (allKeysSameHashInMap!2836 lm!2646 hashF!1641))))

(declare-fun b!4851169 () Bool)

(declare-fun e!3032661 () Bool)

(assert (=> b!4851169 (= e!3032659 e!3032661)))

(declare-fun res!2070638 () Bool)

(assert (=> b!4851169 (=> (not res!2070638) (not e!3032661))))

(declare-fun lt!1989994 () (_ BitVec 64))

(declare-fun contains!19269 (ListLongMap!6503 (_ BitVec 64)) Bool)

(assert (=> b!4851169 (= res!2070638 (contains!19269 lm!2646 lt!1989994))))

(declare-fun key!6445 () K!17404)

(declare-fun hash!5648 (Hashable!7520 K!17404) (_ BitVec 64))

(assert (=> b!4851169 (= lt!1989994 (hash!5648 hashF!1641 key!6445))))

(declare-fun res!2070639 () Bool)

(assert (=> start!506244 (=> (not res!2070639) (not e!3032659))))

(declare-fun lambda!242782 () Int)

(declare-fun forall!12973 (List!55723 Int) Bool)

(assert (=> start!506244 (= res!2070639 (forall!12973 (toList!7880 lm!2646) lambda!242782))))

(assert (=> start!506244 e!3032659))

(declare-fun e!3032660 () Bool)

(declare-fun inv!71290 (ListLongMap!6503) Bool)

(assert (=> start!506244 (and (inv!71290 lm!2646) e!3032660)))

(assert (=> start!506244 true))

(declare-fun tp_is_empty!35255 () Bool)

(assert (=> start!506244 tp_is_empty!35255))

(declare-fun b!4851170 () Bool)

(declare-fun res!2070636 () Bool)

(declare-fun e!3032662 () Bool)

(assert (=> b!4851170 (=> res!2070636 e!3032662)))

(get-info :version)

(assert (=> b!4851170 (= res!2070636 (or (and ((_ is Cons!55599) (toList!7880 lm!2646)) (= (_1!32960 (h!62036 (toList!7880 lm!2646))) lt!1989994)) ((_ is Cons!55599) (toList!7880 lm!2646))))))

(declare-fun b!4851171 () Bool)

(assert (=> b!4851171 (= e!3032662 true)))

(declare-fun lt!1989998 () Bool)

(declare-fun containsKeyBiggerList!776 (List!55723 K!17404) Bool)

(assert (=> b!4851171 (= lt!1989998 (containsKeyBiggerList!776 (toList!7880 lm!2646) key!6445))))

(declare-fun b!4851172 () Bool)

(declare-fun tp!1364872 () Bool)

(assert (=> b!4851172 (= e!3032660 tp!1364872)))

(declare-fun b!4851173 () Bool)

(assert (=> b!4851173 (= e!3032661 (not e!3032662))))

(declare-fun res!2070637 () Bool)

(assert (=> b!4851173 (=> res!2070637 e!3032662)))

(declare-fun lt!1989993 () List!55722)

(declare-datatypes ((Option!13707 0))(
  ( (None!13706) (Some!13706 (v!49500 tuple2!59330)) )
))
(declare-fun isDefined!10799 (Option!13707) Bool)

(declare-fun getPair!1110 (List!55722 K!17404) Option!13707)

(assert (=> b!4851173 (= res!2070637 (not (isDefined!10799 (getPair!1110 lt!1989993 key!6445))))))

(declare-fun lt!1989996 () tuple2!59332)

(declare-datatypes ((Unit!145756 0))(
  ( (Unit!145757) )
))
(declare-fun lt!1989995 () Unit!145756)

(declare-fun forallContained!4561 (List!55723 Int tuple2!59332) Unit!145756)

(assert (=> b!4851173 (= lt!1989995 (forallContained!4561 (toList!7880 lm!2646) lambda!242782 lt!1989996))))

(declare-fun contains!19270 (List!55723 tuple2!59332) Bool)

(assert (=> b!4851173 (contains!19270 (toList!7880 lm!2646) lt!1989996)))

(assert (=> b!4851173 (= lt!1989996 (tuple2!59333 lt!1989994 lt!1989993))))

(declare-fun lt!1989997 () Unit!145756)

(declare-fun lemmaGetValueImpliesTupleContained!787 (ListLongMap!6503 (_ BitVec 64) List!55722) Unit!145756)

(assert (=> b!4851173 (= lt!1989997 (lemmaGetValueImpliesTupleContained!787 lm!2646 lt!1989994 lt!1989993))))

(declare-fun apply!13463 (ListLongMap!6503 (_ BitVec 64)) List!55722)

(assert (=> b!4851173 (= lt!1989993 (apply!13463 lm!2646 lt!1989994))))

(assert (= (and start!506244 res!2070639) b!4851168))

(assert (= (and b!4851168 res!2070635) b!4851169))

(assert (= (and b!4851169 res!2070638) b!4851173))

(assert (= (and b!4851173 (not res!2070637)) b!4851170))

(assert (= (and b!4851170 (not res!2070636)) b!4851171))

(assert (= start!506244 b!4851172))

(declare-fun m!5849764 () Bool)

(assert (=> b!4851169 m!5849764))

(declare-fun m!5849766 () Bool)

(assert (=> b!4851169 m!5849766))

(declare-fun m!5849768 () Bool)

(assert (=> b!4851168 m!5849768))

(declare-fun m!5849770 () Bool)

(assert (=> b!4851171 m!5849770))

(declare-fun m!5849772 () Bool)

(assert (=> start!506244 m!5849772))

(declare-fun m!5849774 () Bool)

(assert (=> start!506244 m!5849774))

(declare-fun m!5849776 () Bool)

(assert (=> b!4851173 m!5849776))

(declare-fun m!5849778 () Bool)

(assert (=> b!4851173 m!5849778))

(declare-fun m!5849780 () Bool)

(assert (=> b!4851173 m!5849780))

(declare-fun m!5849782 () Bool)

(assert (=> b!4851173 m!5849782))

(declare-fun m!5849784 () Bool)

(assert (=> b!4851173 m!5849784))

(assert (=> b!4851173 m!5849780))

(declare-fun m!5849786 () Bool)

(assert (=> b!4851173 m!5849786))

(check-sat (not b!4851173) (not start!506244) tp_is_empty!35255 (not b!4851171) (not b!4851169) (not b!4851172) (not b!4851168))
(check-sat)
