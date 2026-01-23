; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759614 () Bool)

(assert start!759614)

(declare-fun res!3188650 () Bool)

(declare-fun e!4749896 () Bool)

(assert (=> start!759614 (=> (not res!3188650) (not e!4749896))))

(declare-datatypes ((B!4535 0))(
  ( (B!4536 (val!33129 Int)) )
))
(declare-datatypes ((K!23071 0))(
  ( (K!23072 (val!33130 Int)) )
))
(declare-datatypes ((tuple2!71094 0))(
  ( (tuple2!71095 (_1!38850 K!23071) (_2!38850 B!4535)) )
))
(declare-datatypes ((List!75812 0))(
  ( (Nil!75686) (Cons!75686 (h!82134 tuple2!71094) (t!391584 List!75812)) )
))
(declare-datatypes ((ListMap!7457 0))(
  ( (ListMap!7458 (toList!12003 List!75812)) )
))
(declare-fun thiss!41813 () ListMap!7457)

(declare-fun key!1573 () K!23071)

(declare-fun containsKey!4956 (List!75812 K!23071) Bool)

(assert (=> start!759614 (= res!3188650 (not (containsKey!4956 (toList!12003 thiss!41813) key!1573)))))

(assert (=> start!759614 e!4749896))

(declare-fun e!4749895 () Bool)

(declare-fun inv!97541 (ListMap!7457) Bool)

(assert (=> start!759614 (and (inv!97541 thiss!41813) e!4749895)))

(declare-fun tp_is_empty!55291 () Bool)

(assert (=> start!759614 tp_is_empty!55291))

(declare-fun b!8059922 () Bool)

(declare-fun res!3188649 () Bool)

(assert (=> b!8059922 (=> (not res!3188649) (not e!4749896))))

(declare-datatypes ((List!75813 0))(
  ( (Nil!75687) (Cons!75687 (h!82135 K!23071) (t!391585 List!75813)) )
))
(declare-fun contains!21345 (List!75813 K!23071) Bool)

(declare-fun keys!30974 (ListMap!7457) List!75813)

(assert (=> b!8059922 (= res!3188649 (contains!21345 (keys!30974 thiss!41813) key!1573))))

(declare-fun b!8059923 () Bool)

(declare-fun invariantList!1991 (List!75812) Bool)

(assert (=> b!8059923 (= e!4749896 (not (invariantList!1991 (toList!12003 thiss!41813))))))

(declare-fun b!8059924 () Bool)

(declare-fun tp!2414475 () Bool)

(assert (=> b!8059924 (= e!4749895 tp!2414475)))

(assert (= (and start!759614 res!3188650) b!8059922))

(assert (= (and b!8059922 res!3188649) b!8059923))

(assert (= start!759614 b!8059924))

(declare-fun m!8413048 () Bool)

(assert (=> start!759614 m!8413048))

(declare-fun m!8413050 () Bool)

(assert (=> start!759614 m!8413050))

(declare-fun m!8413052 () Bool)

(assert (=> b!8059922 m!8413052))

(assert (=> b!8059922 m!8413052))

(declare-fun m!8413054 () Bool)

(assert (=> b!8059922 m!8413054))

(declare-fun m!8413056 () Bool)

(assert (=> b!8059923 m!8413056))

(push 1)

(assert (not b!8059924))

(assert (not b!8059923))

(assert (not start!759614))

(assert tp_is_empty!55291)

(assert (not b!8059922))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2399451 () Bool)

(declare-fun lt!2732967 () Bool)

(declare-fun content!16144 (List!75813) (Set K!23071))

(assert (=> d!2399451 (= lt!2732967 (set.member key!1573 (content!16144 (keys!30974 thiss!41813))))))

(declare-fun e!4749912 () Bool)

(assert (=> d!2399451 (= lt!2732967 e!4749912)))

(declare-fun res!3188666 () Bool)

(assert (=> d!2399451 (=> (not res!3188666) (not e!4749912))))

(assert (=> d!2399451 (= res!3188666 (is-Cons!75687 (keys!30974 thiss!41813)))))

(assert (=> d!2399451 (= (contains!21345 (keys!30974 thiss!41813) key!1573) lt!2732967)))

(declare-fun b!8059942 () Bool)

(declare-fun e!4749911 () Bool)

(assert (=> b!8059942 (= e!4749912 e!4749911)))

(declare-fun res!3188665 () Bool)

(assert (=> b!8059942 (=> res!3188665 e!4749911)))

(assert (=> b!8059942 (= res!3188665 (= (h!82135 (keys!30974 thiss!41813)) key!1573))))

(declare-fun b!8059943 () Bool)

(assert (=> b!8059943 (= e!4749911 (contains!21345 (t!391585 (keys!30974 thiss!41813)) key!1573))))

(assert (= (and d!2399451 res!3188666) b!8059942))

(assert (= (and b!8059942 (not res!3188665)) b!8059943))

(assert (=> d!2399451 m!8413052))

(declare-fun m!8413068 () Bool)

(assert (=> d!2399451 m!8413068))

(declare-fun m!8413070 () Bool)

(assert (=> d!2399451 m!8413070))

(declare-fun m!8413072 () Bool)

(assert (=> b!8059943 m!8413072))

(assert (=> b!8059922 d!2399451))

(declare-fun b!8059963 () Bool)

(assert (=> b!8059963 true))

(declare-fun d!2399455 () Bool)

(declare-fun e!4749925 () Bool)

(assert (=> d!2399455 e!4749925))

(declare-fun res!3188687 () Bool)

(assert (=> d!2399455 (=> (not res!3188687) (not e!4749925))))

(declare-fun lt!2732975 () List!75813)

(declare-fun noDuplicate!3169 (List!75813) Bool)

(assert (=> d!2399455 (= res!3188687 (noDuplicate!3169 lt!2732975))))

(declare-fun getKeysList!1279 (List!75812) List!75813)

(assert (=> d!2399455 (= lt!2732975 (getKeysList!1279 (toList!12003 thiss!41813)))))

(assert (=> d!2399455 (= (keys!30974 thiss!41813) lt!2732975)))

(declare-fun b!8059962 () Bool)

(declare-fun res!3188688 () Bool)

(assert (=> b!8059962 (=> (not res!3188688) (not e!4749925))))

(declare-fun length!830 (List!75813) Int)

(declare-fun length!831 (List!75812) Int)

(assert (=> b!8059962 (= res!3188688 (= (length!830 lt!2732975) (length!831 (toList!12003 thiss!41813))))))

(declare-fun res!3188689 () Bool)

(assert (=> b!8059963 (=> (not res!3188689) (not e!4749925))))

(declare-fun lambda!475353 () Int)

(declare-fun forall!18557 (List!75813 Int) Bool)

(assert (=> b!8059963 (= res!3188689 (forall!18557 lt!2732975 lambda!475353))))

(declare-fun b!8059964 () Bool)

(declare-fun lambda!475354 () Int)

(declare-fun map!18853 (List!75812 Int) List!75813)

(assert (=> b!8059964 (= e!4749925 (= (content!16144 lt!2732975) (content!16144 (map!18853 (toList!12003 thiss!41813) lambda!475354))))))

(assert (= (and d!2399455 res!3188687) b!8059962))

(assert (= (and b!8059962 res!3188688) b!8059963))

(assert (= (and b!8059963 res!3188689) b!8059964))

(declare-fun m!8413084 () Bool)

(assert (=> d!2399455 m!8413084))

(declare-fun m!8413086 () Bool)

(assert (=> d!2399455 m!8413086))

(declare-fun m!8413088 () Bool)

(assert (=> b!8059962 m!8413088))

(declare-fun m!8413090 () Bool)

(assert (=> b!8059962 m!8413090))

(declare-fun m!8413092 () Bool)

(assert (=> b!8059963 m!8413092))

(declare-fun m!8413094 () Bool)

(assert (=> b!8059964 m!8413094))

(declare-fun m!8413096 () Bool)

(assert (=> b!8059964 m!8413096))

(assert (=> b!8059964 m!8413096))

(declare-fun m!8413098 () Bool)

(assert (=> b!8059964 m!8413098))

(assert (=> b!8059922 d!2399455))

(declare-fun d!2399465 () Bool)

(declare-fun res!3188694 () Bool)

(declare-fun e!4749930 () Bool)

(assert (=> d!2399465 (=> res!3188694 e!4749930)))

(assert (=> d!2399465 (= res!3188694 (and (is-Cons!75686 (toList!12003 thiss!41813)) (= (_1!38850 (h!82134 (toList!12003 thiss!41813))) key!1573)))))

(assert (=> d!2399465 (= (containsKey!4956 (toList!12003 thiss!41813) key!1573) e!4749930)))

(declare-fun b!8059971 () Bool)

(declare-fun e!4749931 () Bool)

(assert (=> b!8059971 (= e!4749930 e!4749931)))

(declare-fun res!3188695 () Bool)

(assert (=> b!8059971 (=> (not res!3188695) (not e!4749931))))

(assert (=> b!8059971 (= res!3188695 (is-Cons!75686 (toList!12003 thiss!41813)))))

(declare-fun b!8059972 () Bool)

(assert (=> b!8059972 (= e!4749931 (containsKey!4956 (t!391584 (toList!12003 thiss!41813)) key!1573))))

(assert (= (and d!2399465 (not res!3188694)) b!8059971))

(assert (= (and b!8059971 res!3188695) b!8059972))

(declare-fun m!8413100 () Bool)

(assert (=> b!8059972 m!8413100))

(assert (=> start!759614 d!2399465))

(declare-fun d!2399467 () Bool)

(assert (=> d!2399467 (= (inv!97541 thiss!41813) (invariantList!1991 (toList!12003 thiss!41813)))))

(declare-fun bs!1973603 () Bool)

(assert (= bs!1973603 d!2399467))

(assert (=> bs!1973603 m!8413056))

(assert (=> start!759614 d!2399467))

(declare-fun d!2399469 () Bool)

(declare-fun noDuplicatedKeys!527 (List!75812) Bool)

(assert (=> d!2399469 (= (invariantList!1991 (toList!12003 thiss!41813)) (noDuplicatedKeys!527 (toList!12003 thiss!41813)))))

(declare-fun bs!1973604 () Bool)

(assert (= bs!1973604 d!2399469))

(declare-fun m!8413102 () Bool)

(assert (=> bs!1973604 m!8413102))

(assert (=> b!8059923 d!2399469))

(declare-fun e!4749934 () Bool)

(declare-fun tp!2414481 () Bool)

(declare-fun b!8059977 () Bool)

(declare-fun tp_is_empty!55295 () Bool)

(assert (=> b!8059977 (= e!4749934 (and tp_is_empty!55291 tp_is_empty!55295 tp!2414481))))

(assert (=> b!8059924 (= tp!2414475 e!4749934)))

(assert (= (and b!8059924 (is-Cons!75686 (toList!12003 thiss!41813))) b!8059977))

(push 1)

(assert tp_is_empty!55295)

(assert (not d!2399469))

(assert (not b!8059963))

(assert (not d!2399467))

(assert (not b!8059962))

(assert (not d!2399451))

(assert (not d!2399455))

(assert (not b!8059943))

(assert tp_is_empty!55291)

(assert (not b!8059972))

(assert (not b!8059977))

(assert (not b!8059964))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

