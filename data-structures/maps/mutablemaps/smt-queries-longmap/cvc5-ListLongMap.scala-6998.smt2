; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88852 () Bool)

(assert start!88852)

(declare-fun res!683619 () Bool)

(declare-fun e!573902 () Bool)

(assert (=> start!88852 (=> (not res!683619) (not e!573902))))

(declare-datatypes ((B!1694 0))(
  ( (B!1695 (val!11931 Int)) )
))
(declare-datatypes ((tuple2!15498 0))(
  ( (tuple2!15499 (_1!7759 (_ BitVec 64)) (_2!7759 B!1694)) )
))
(declare-datatypes ((List!21733 0))(
  ( (Nil!21730) (Cons!21729 (h!22927 tuple2!15498) (t!30747 List!21733)) )
))
(declare-fun l!996 () List!21733)

(declare-fun isStrictlySorted!680 (List!21733) Bool)

(assert (=> start!88852 (= res!683619 (isStrictlySorted!680 l!996))))

(assert (=> start!88852 e!573902))

(declare-fun e!573904 () Bool)

(assert (=> start!88852 e!573904))

(assert (=> start!88852 true))

(declare-fun tp_is_empty!23761 () Bool)

(assert (=> start!88852 tp_is_empty!23761))

(declare-fun b!1019668 () Bool)

(declare-fun e!573903 () Bool)

(declare-fun lt!449707 () List!21733)

(declare-fun length!47 (List!21733) Int)

(assert (=> b!1019668 (= e!573903 (not (= (length!47 lt!449707) (length!47 l!996))))))

(declare-fun b!1019669 () Bool)

(declare-fun tp!71171 () Bool)

(assert (=> b!1019669 (= e!573904 (and tp_is_empty!23761 tp!71171))))

(declare-fun b!1019667 () Bool)

(assert (=> b!1019667 (= e!573902 e!573903)))

(declare-fun res!683618 () Bool)

(assert (=> b!1019667 (=> (not res!683618) (not e!573903))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun value!172 () B!1694)

(assert (=> b!1019667 (= res!683618 (and (bvsge (_1!7759 (h!22927 l!996)) key!261) (is-Cons!21729 l!996) (= (_1!7759 (h!22927 l!996)) key!261) (= lt!449707 (Cons!21729 (tuple2!15499 key!261 value!172) (t!30747 l!996)))))))

(declare-fun insertStrictlySorted!362 (List!21733 (_ BitVec 64) B!1694) List!21733)

(assert (=> b!1019667 (= lt!449707 (insertStrictlySorted!362 l!996 key!261 value!172))))

(declare-fun b!1019666 () Bool)

(declare-fun res!683617 () Bool)

(assert (=> b!1019666 (=> (not res!683617) (not e!573902))))

(declare-fun containsKey!545 (List!21733 (_ BitVec 64)) Bool)

(assert (=> b!1019666 (= res!683617 (containsKey!545 l!996 key!261))))

(assert (= (and start!88852 res!683619) b!1019666))

(assert (= (and b!1019666 res!683617) b!1019667))

(assert (= (and b!1019667 res!683618) b!1019668))

(assert (= (and start!88852 (is-Cons!21729 l!996)) b!1019669))

(declare-fun m!940063 () Bool)

(assert (=> start!88852 m!940063))

(declare-fun m!940065 () Bool)

(assert (=> b!1019668 m!940065))

(declare-fun m!940067 () Bool)

(assert (=> b!1019668 m!940067))

(declare-fun m!940069 () Bool)

(assert (=> b!1019667 m!940069))

(declare-fun m!940071 () Bool)

(assert (=> b!1019666 m!940071))

(push 1)

(assert (not b!1019668))

(assert (not b!1019669))

(assert (not b!1019667))

(assert tp_is_empty!23761)

(assert (not b!1019666))

(assert (not start!88852))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1019756 () Bool)

(declare-fun e!573961 () List!21733)

(declare-fun call!43138 () List!21733)

(assert (=> b!1019756 (= e!573961 call!43138)))

(declare-fun c!103365 () Bool)

(declare-fun b!1019757 () Bool)

(declare-fun c!103364 () Bool)

(declare-fun e!573963 () List!21733)

(assert (=> b!1019757 (= e!573963 (ite c!103364 (t!30747 l!996) (ite c!103365 (Cons!21729 (h!22927 l!996) (t!30747 l!996)) Nil!21730)))))

(declare-fun bm!43133 () Bool)

(declare-fun call!43136 () List!21733)

(declare-fun c!103362 () Bool)

(declare-fun $colon$colon!595 (List!21733 tuple2!15498) List!21733)

(assert (=> bm!43133 (= call!43136 ($colon$colon!595 e!573963 (ite c!103362 (h!22927 l!996) (tuple2!15499 key!261 value!172))))))

(declare-fun c!103363 () Bool)

(assert (=> bm!43133 (= c!103363 c!103362)))

(declare-fun b!1019758 () Bool)

(declare-fun e!573962 () List!21733)

(declare-fun call!43137 () List!21733)

(assert (=> b!1019758 (= e!573962 call!43137)))

(declare-fun bm!43134 () Bool)

(assert (=> bm!43134 (= call!43138 call!43137)))

(declare-fun b!1019759 () Bool)

(declare-fun e!573964 () List!21733)

(assert (=> b!1019759 (= e!573964 e!573962)))

(assert (=> b!1019759 (= c!103364 (and (is-Cons!21729 l!996) (= (_1!7759 (h!22927 l!996)) key!261)))))

(declare-fun b!1019760 () Bool)

(declare-fun res!683660 () Bool)

(declare-fun e!573960 () Bool)

(assert (=> b!1019760 (=> (not res!683660) (not e!573960))))

(declare-fun lt!449719 () List!21733)

(assert (=> b!1019760 (= res!683660 (containsKey!545 lt!449719 key!261))))

(declare-fun b!1019761 () Bool)

(declare-fun contains!5925 (List!21733 tuple2!15498) Bool)

(assert (=> b!1019761 (= e!573960 (contains!5925 lt!449719 (tuple2!15499 key!261 value!172)))))

(declare-fun b!1019763 () Bool)

(assert (=> b!1019763 (= e!573963 (insertStrictlySorted!362 (t!30747 l!996) key!261 value!172))))

(declare-fun b!1019764 () Bool)

(assert (=> b!1019764 (= e!573961 call!43138)))

(declare-fun b!1019762 () Bool)

(assert (=> b!1019762 (= e!573964 call!43136)))

(declare-fun d!122167 () Bool)

(assert (=> d!122167 e!573960))

(declare-fun res!683661 () Bool)

(assert (=> d!122167 (=> (not res!683661) (not e!573960))))

(assert (=> d!122167 (= res!683661 (isStrictlySorted!680 lt!449719))))

(assert (=> d!122167 (= lt!449719 e!573964)))

(assert (=> d!122167 (= c!103362 (and (is-Cons!21729 l!996) (bvslt (_1!7759 (h!22927 l!996)) key!261)))))

(assert (=> d!122167 (isStrictlySorted!680 l!996)))

(assert (=> d!122167 (= (insertStrictlySorted!362 l!996 key!261 value!172) lt!449719)))

(declare-fun bm!43135 () Bool)

(assert (=> bm!43135 (= call!43137 call!43136)))

(declare-fun b!1019765 () Bool)

(assert (=> b!1019765 (= c!103365 (and (is-Cons!21729 l!996) (bvsgt (_1!7759 (h!22927 l!996)) key!261)))))

(assert (=> b!1019765 (= e!573962 e!573961)))

(assert (= (and d!122167 c!103362) b!1019762))

(assert (= (and d!122167 (not c!103362)) b!1019759))

(assert (= (and b!1019759 c!103364) b!1019758))

(assert (= (and b!1019759 (not c!103364)) b!1019765))

(assert (= (and b!1019765 c!103365) b!1019756))

(assert (= (and b!1019765 (not c!103365)) b!1019764))

(assert (= (or b!1019756 b!1019764) bm!43134))

(assert (= (or b!1019758 bm!43134) bm!43135))

(assert (= (or b!1019762 bm!43135) bm!43133))

(assert (= (and bm!43133 c!103363) b!1019763))

(assert (= (and bm!43133 (not c!103363)) b!1019757))

(assert (= (and d!122167 res!683661) b!1019760))

(assert (= (and b!1019760 res!683660) b!1019761))

(declare-fun m!940115 () Bool)

(assert (=> bm!43133 m!940115))

(declare-fun m!940117 () Bool)

(assert (=> b!1019761 m!940117))

(declare-fun m!940119 () Bool)

(assert (=> d!122167 m!940119))

(assert (=> d!122167 m!940063))

(declare-fun m!940121 () Bool)

(assert (=> b!1019760 m!940121))

(declare-fun m!940123 () Bool)

(assert (=> b!1019763 m!940123))

(assert (=> b!1019667 d!122167))

(declare-fun d!122179 () Bool)

(declare-fun res!683672 () Bool)

(declare-fun e!573984 () Bool)

(assert (=> d!122179 (=> res!683672 e!573984)))

(assert (=> d!122179 (= res!683672 (and (is-Cons!21729 l!996) (= (_1!7759 (h!22927 l!996)) key!261)))))

(assert (=> d!122179 (= (containsKey!545 l!996 key!261) e!573984)))

(declare-fun b!1019793 () Bool)

(declare-fun e!573985 () Bool)

(assert (=> b!1019793 (= e!573984 e!573985)))

(declare-fun res!683673 () Bool)

(assert (=> b!1019793 (=> (not res!683673) (not e!573985))))

(assert (=> b!1019793 (= res!683673 (and (or (not (is-Cons!21729 l!996)) (bvsle (_1!7759 (h!22927 l!996)) key!261)) (is-Cons!21729 l!996) (bvslt (_1!7759 (h!22927 l!996)) key!261)))))

(declare-fun b!1019794 () Bool)

(assert (=> b!1019794 (= e!573985 (containsKey!545 (t!30747 l!996) key!261))))

(assert (= (and d!122179 (not res!683672)) b!1019793))

(assert (= (and b!1019793 res!683673) b!1019794))

(declare-fun m!940127 () Bool)

(assert (=> b!1019794 m!940127))

(assert (=> b!1019666 d!122179))

(declare-fun d!122181 () Bool)

(declare-fun res!683682 () Bool)

(declare-fun e!573994 () Bool)

(assert (=> d!122181 (=> res!683682 e!573994)))

(assert (=> d!122181 (= res!683682 (or (is-Nil!21730 l!996) (is-Nil!21730 (t!30747 l!996))))))

(assert (=> d!122181 (= (isStrictlySorted!680 l!996) e!573994)))

(declare-fun b!1019807 () Bool)

(declare-fun e!573995 () Bool)

(assert (=> b!1019807 (= e!573994 e!573995)))

(declare-fun res!683683 () Bool)

(assert (=> b!1019807 (=> (not res!683683) (not e!573995))))

(assert (=> b!1019807 (= res!683683 (bvslt (_1!7759 (h!22927 l!996)) (_1!7759 (h!22927 (t!30747 l!996)))))))

(declare-fun b!1019808 () Bool)

(assert (=> b!1019808 (= e!573995 (isStrictlySorted!680 (t!30747 l!996)))))

(assert (= (and d!122181 (not res!683682)) b!1019807))

(assert (= (and b!1019807 res!683683) b!1019808))

(declare-fun m!940129 () Bool)

(assert (=> b!1019808 m!940129))

(assert (=> start!88852 d!122181))

(declare-fun d!122183 () Bool)

(declare-fun size!31151 (List!21733) Int)

(assert (=> d!122183 (= (length!47 lt!449707) (size!31151 lt!449707))))

(declare-fun bs!29707 () Bool)

(assert (= bs!29707 d!122183))

(declare-fun m!940131 () Bool)

(assert (=> bs!29707 m!940131))

(assert (=> b!1019668 d!122183))

(declare-fun d!122185 () Bool)

(assert (=> d!122185 (= (length!47 l!996) (size!31151 l!996))))

(declare-fun bs!29708 () Bool)

(assert (= bs!29708 d!122185))

(declare-fun m!940133 () Bool)

(assert (=> bs!29708 m!940133))

(assert (=> b!1019668 d!122185))

(declare-fun b!1019813 () Bool)

(declare-fun e!573998 () Bool)

(declare-fun tp!71183 () Bool)

(assert (=> b!1019813 (= e!573998 (and tp_is_empty!23761 tp!71183))))

(assert (=> b!1019669 (= tp!71171 e!573998)))

(assert (= (and b!1019669 (is-Cons!21729 (t!30747 l!996))) b!1019813))

(push 1)

(assert (not b!1019760))

(assert (not b!1019813))

(assert tp_is_empty!23761)

(assert (not d!122183))

(assert (not bm!43133))

(assert (not b!1019808))

(assert (not d!122167))

(assert (not b!1019763))

(assert (not b!1019761))

(assert (not d!122185))

(assert (not b!1019794))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!122189 () Bool)

(assert (=> d!122189 (= ($colon$colon!595 e!573963 (ite c!103362 (h!22927 l!996) (tuple2!15499 key!261 value!172))) (Cons!21729 (ite c!103362 (h!22927 l!996) (tuple2!15499 key!261 value!172)) e!573963))))

(assert (=> bm!43133 d!122189))

(declare-fun d!122191 () Bool)

(declare-fun lt!449725 () Bool)

(declare-fun content!494 (List!21733) (Set tuple2!15498))

(assert (=> d!122191 (= lt!449725 (set.member (tuple2!15499 key!261 value!172) (content!494 lt!449719)))))

(declare-fun e!574017 () Bool)

(assert (=> d!122191 (= lt!449725 e!574017)))

(declare-fun res!683697 () Bool)

(assert (=> d!122191 (=> (not res!683697) (not e!574017))))

(assert (=> d!122191 (= res!683697 (is-Cons!21729 lt!449719))))

(assert (=> d!122191 (= (contains!5925 lt!449719 (tuple2!15499 key!261 value!172)) lt!449725)))

(declare-fun b!1019839 () Bool)

(declare-fun e!574018 () Bool)

(assert (=> b!1019839 (= e!574017 e!574018)))

(declare-fun res!683696 () Bool)

(assert (=> b!1019839 (=> res!683696 e!574018)))

(assert (=> b!1019839 (= res!683696 (= (h!22927 lt!449719) (tuple2!15499 key!261 value!172)))))

(declare-fun b!1019840 () Bool)

(assert (=> b!1019840 (= e!574018 (contains!5925 (t!30747 lt!449719) (tuple2!15499 key!261 value!172)))))

(assert (= (and d!122191 res!683697) b!1019839))

(assert (= (and b!1019839 (not res!683696)) b!1019840))

(declare-fun m!940147 () Bool)

(assert (=> d!122191 m!940147))

(declare-fun m!940149 () Bool)

(assert (=> d!122191 m!940149))

(declare-fun m!940151 () Bool)

(assert (=> b!1019840 m!940151))

(assert (=> b!1019761 d!122191))

(declare-fun d!122193 () Bool)

(declare-fun res!683698 () Bool)

(declare-fun e!574019 () Bool)

(assert (=> d!122193 (=> res!683698 e!574019)))

(assert (=> d!122193 (= res!683698 (or (is-Nil!21730 (t!30747 l!996)) (is-Nil!21730 (t!30747 (t!30747 l!996)))))))

(assert (=> d!122193 (= (isStrictlySorted!680 (t!30747 l!996)) e!574019)))

(declare-fun b!1019841 () Bool)

(declare-fun e!574020 () Bool)

(assert (=> b!1019841 (= e!574019 e!574020)))

(declare-fun res!683699 () Bool)

(assert (=> b!1019841 (=> (not res!683699) (not e!574020))))

(assert (=> b!1019841 (= res!683699 (bvslt (_1!7759 (h!22927 (t!30747 l!996))) (_1!7759 (h!22927 (t!30747 (t!30747 l!996))))))))

(declare-fun b!1019842 () Bool)

(assert (=> b!1019842 (= e!574020 (isStrictlySorted!680 (t!30747 (t!30747 l!996))))))

(assert (= (and d!122193 (not res!683698)) b!1019841))

(assert (= (and b!1019841 res!683699) b!1019842))

(declare-fun m!940153 () Bool)

(assert (=> b!1019842 m!940153))

(assert (=> b!1019808 d!122193))

(declare-fun d!122195 () Bool)

(declare-fun res!683700 () Bool)

(declare-fun e!574021 () Bool)

(assert (=> d!122195 (=> res!683700 e!574021)))

(assert (=> d!122195 (= res!683700 (and (is-Cons!21729 lt!449719) (= (_1!7759 (h!22927 lt!449719)) key!261)))))

(assert (=> d!122195 (= (containsKey!545 lt!449719 key!261) e!574021)))

(declare-fun b!1019843 () Bool)

(declare-fun e!574022 () Bool)

(assert (=> b!1019843 (= e!574021 e!574022)))

(declare-fun res!683701 () Bool)

(assert (=> b!1019843 (=> (not res!683701) (not e!574022))))

(assert (=> b!1019843 (= res!683701 (and (or (not (is-Cons!21729 lt!449719)) (bvsle (_1!7759 (h!22927 lt!449719)) key!261)) (is-Cons!21729 lt!449719) (bvslt (_1!7759 (h!22927 lt!449719)) key!261)))))

(declare-fun b!1019844 () Bool)

(assert (=> b!1019844 (= e!574022 (containsKey!545 (t!30747 lt!449719) key!261))))

(assert (= (and d!122195 (not res!683700)) b!1019843))

(assert (= (and b!1019843 res!683701) b!1019844))

(declare-fun m!940155 () Bool)

(assert (=> b!1019844 m!940155))

(assert (=> b!1019760 d!122195))

(declare-fun d!122197 () Bool)

(declare-fun res!683702 () Bool)

(declare-fun e!574023 () Bool)

(assert (=> d!122197 (=> res!683702 e!574023)))

(assert (=> d!122197 (= res!683702 (or (is-Nil!21730 lt!449719) (is-Nil!21730 (t!30747 lt!449719))))))

(assert (=> d!122197 (= (isStrictlySorted!680 lt!449719) e!574023)))

(declare-fun b!1019845 () Bool)

(declare-fun e!574024 () Bool)

(assert (=> b!1019845 (= e!574023 e!574024)))

(declare-fun res!683703 () Bool)

(assert (=> b!1019845 (=> (not res!683703) (not e!574024))))

(assert (=> b!1019845 (= res!683703 (bvslt (_1!7759 (h!22927 lt!449719)) (_1!7759 (h!22927 (t!30747 lt!449719)))))))

(declare-fun b!1019846 () Bool)

(assert (=> b!1019846 (= e!574024 (isStrictlySorted!680 (t!30747 lt!449719)))))

(assert (= (and d!122197 (not res!683702)) b!1019845))

(assert (= (and b!1019845 res!683703) b!1019846))

(declare-fun m!940157 () Bool)

(assert (=> b!1019846 m!940157))

(assert (=> d!122167 d!122197))

(assert (=> d!122167 d!122181))

(declare-fun d!122199 () Bool)

(declare-fun lt!449728 () Int)

(assert (=> d!122199 (>= lt!449728 0)))

(declare-fun e!574027 () Int)

(assert (=> d!122199 (= lt!449728 e!574027)))

(declare-fun c!103380 () Bool)

(assert (=> d!122199 (= c!103380 (is-Nil!21730 lt!449707))))

(assert (=> d!122199 (= (size!31151 lt!449707) lt!449728)))

(declare-fun b!1019851 () Bool)

(assert (=> b!1019851 (= e!574027 0)))

(declare-fun b!1019852 () Bool)

(assert (=> b!1019852 (= e!574027 (+ 1 (size!31151 (t!30747 lt!449707))))))

(assert (= (and d!122199 c!103380) b!1019851))

(assert (= (and d!122199 (not c!103380)) b!1019852))

(declare-fun m!940159 () Bool)

(assert (=> b!1019852 m!940159))

(assert (=> d!122183 d!122199))

(declare-fun b!1019853 () Bool)

(declare-fun e!574029 () List!21733)

(declare-fun call!43150 () List!21733)

(assert (=> b!1019853 (= e!574029 call!43150)))

(declare-fun c!103383 () Bool)

(declare-fun c!103384 () Bool)

(declare-fun b!1019854 () Bool)

(declare-fun e!574031 () List!21733)

(assert (=> b!1019854 (= e!574031 (ite c!103383 (t!30747 (t!30747 l!996)) (ite c!103384 (Cons!21729 (h!22927 (t!30747 l!996)) (t!30747 (t!30747 l!996))) Nil!21730)))))

(declare-fun call!43148 () List!21733)

(declare-fun bm!43145 () Bool)

(declare-fun c!103381 () Bool)

(assert (=> bm!43145 (= call!43148 ($colon$colon!595 e!574031 (ite c!103381 (h!22927 (t!30747 l!996)) (tuple2!15499 key!261 value!172))))))

(declare-fun c!103382 () Bool)

(assert (=> bm!43145 (= c!103382 c!103381)))

(declare-fun b!1019855 () Bool)

(declare-fun e!574030 () List!21733)

(declare-fun call!43149 () List!21733)

(assert (=> b!1019855 (= e!574030 call!43149)))

(declare-fun bm!43146 () Bool)

(assert (=> bm!43146 (= call!43150 call!43149)))

(declare-fun b!1019856 () Bool)

(declare-fun e!574032 () List!21733)

(assert (=> b!1019856 (= e!574032 e!574030)))

(assert (=> b!1019856 (= c!103383 (and (is-Cons!21729 (t!30747 l!996)) (= (_1!7759 (h!22927 (t!30747 l!996))) key!261)))))

(declare-fun b!1019857 () Bool)

(declare-fun res!683704 () Bool)

(declare-fun e!574028 () Bool)

(assert (=> b!1019857 (=> (not res!683704) (not e!574028))))

(declare-fun lt!449729 () List!21733)

(assert (=> b!1019857 (= res!683704 (containsKey!545 lt!449729 key!261))))

(declare-fun b!1019858 () Bool)

(assert (=> b!1019858 (= e!574028 (contains!5925 lt!449729 (tuple2!15499 key!261 value!172)))))

(declare-fun b!1019860 () Bool)

(assert (=> b!1019860 (= e!574031 (insertStrictlySorted!362 (t!30747 (t!30747 l!996)) key!261 value!172))))

(declare-fun b!1019861 () Bool)

(assert (=> b!1019861 (= e!574029 call!43150)))

(declare-fun b!1019859 () Bool)

(assert (=> b!1019859 (= e!574032 call!43148)))

(declare-fun d!122201 () Bool)

(assert (=> d!122201 e!574028))

(declare-fun res!683705 () Bool)

(assert (=> d!122201 (=> (not res!683705) (not e!574028))))

(assert (=> d!122201 (= res!683705 (isStrictlySorted!680 lt!449729))))

(assert (=> d!122201 (= lt!449729 e!574032)))

(assert (=> d!122201 (= c!103381 (and (is-Cons!21729 (t!30747 l!996)) (bvslt (_1!7759 (h!22927 (t!30747 l!996))) key!261)))))

(assert (=> d!122201 (isStrictlySorted!680 (t!30747 l!996))))

(assert (=> d!122201 (= (insertStrictlySorted!362 (t!30747 l!996) key!261 value!172) lt!449729)))

(declare-fun bm!43147 () Bool)

(assert (=> bm!43147 (= call!43149 call!43148)))

(declare-fun b!1019862 () Bool)

(assert (=> b!1019862 (= c!103384 (and (is-Cons!21729 (t!30747 l!996)) (bvsgt (_1!7759 (h!22927 (t!30747 l!996))) key!261)))))

(assert (=> b!1019862 (= e!574030 e!574029)))

(assert (= (and d!122201 c!103381) b!1019859))

(assert (= (and d!122201 (not c!103381)) b!1019856))

(assert (= (and b!1019856 c!103383) b!1019855))

(assert (= (and b!1019856 (not c!103383)) b!1019862))

(assert (= (and b!1019862 c!103384) b!1019853))

(assert (= (and b!1019862 (not c!103384)) b!1019861))

(assert (= (or b!1019853 b!1019861) bm!43146))

(assert (= (or b!1019855 bm!43146) bm!43147))

(assert (= (or b!1019859 bm!43147) bm!43145))

(assert (= (and bm!43145 c!103382) b!1019860))

(assert (= (and bm!43145 (not c!103382)) b!1019854))

(assert (= (and d!122201 res!683705) b!1019857))

(assert (= (and b!1019857 res!683704) b!1019858))

(declare-fun m!940161 () Bool)

(assert (=> bm!43145 m!940161))

(declare-fun m!940163 () Bool)

(assert (=> b!1019858 m!940163))

(declare-fun m!940165 () Bool)

(assert (=> d!122201 m!940165))

(assert (=> d!122201 m!940129))

(declare-fun m!940167 () Bool)

(assert (=> b!1019857 m!940167))

(declare-fun m!940169 () Bool)

(assert (=> b!1019860 m!940169))

(assert (=> b!1019763 d!122201))

(declare-fun d!122203 () Bool)

(declare-fun lt!449730 () Int)

(assert (=> d!122203 (>= lt!449730 0)))

(declare-fun e!574033 () Int)

(assert (=> d!122203 (= lt!449730 e!574033)))

(declare-fun c!103385 () Bool)

(assert (=> d!122203 (= c!103385 (is-Nil!21730 l!996))))

(assert (=> d!122203 (= (size!31151 l!996) lt!449730)))

(declare-fun b!1019863 () Bool)

(assert (=> b!1019863 (= e!574033 0)))

(declare-fun b!1019864 () Bool)

(assert (=> b!1019864 (= e!574033 (+ 1 (size!31151 (t!30747 l!996))))))

(assert (= (and d!122203 c!103385) b!1019863))

(assert (= (and d!122203 (not c!103385)) b!1019864))

(declare-fun m!940171 () Bool)

(assert (=> b!1019864 m!940171))

(assert (=> d!122185 d!122203))

(declare-fun d!122205 () Bool)

(declare-fun res!683706 () Bool)

(declare-fun e!574034 () Bool)

(assert (=> d!122205 (=> res!683706 e!574034)))

(assert (=> d!122205 (= res!683706 (and (is-Cons!21729 (t!30747 l!996)) (= (_1!7759 (h!22927 (t!30747 l!996))) key!261)))))

(assert (=> d!122205 (= (containsKey!545 (t!30747 l!996) key!261) e!574034)))

(declare-fun b!1019865 () Bool)

(declare-fun e!574035 () Bool)

(assert (=> b!1019865 (= e!574034 e!574035)))

(declare-fun res!683707 () Bool)

(assert (=> b!1019865 (=> (not res!683707) (not e!574035))))

(assert (=> b!1019865 (= res!683707 (and (or (not (is-Cons!21729 (t!30747 l!996))) (bvsle (_1!7759 (h!22927 (t!30747 l!996))) key!261)) (is-Cons!21729 (t!30747 l!996)) (bvslt (_1!7759 (h!22927 (t!30747 l!996))) key!261)))))

(declare-fun b!1019866 () Bool)

(assert (=> b!1019866 (= e!574035 (containsKey!545 (t!30747 (t!30747 l!996)) key!261))))

(assert (= (and d!122205 (not res!683706)) b!1019865))

(assert (= (and b!1019865 res!683707) b!1019866))

(declare-fun m!940173 () Bool)

(assert (=> b!1019866 m!940173))

(assert (=> b!1019794 d!122205))

(declare-fun b!1019867 () Bool)

(declare-fun e!574036 () Bool)

(declare-fun tp!71187 () Bool)

(assert (=> b!1019867 (= e!574036 (and tp_is_empty!23761 tp!71187))))

(assert (=> b!1019813 (= tp!71183 e!574036)))

(assert (= (and b!1019813 (is-Cons!21729 (t!30747 (t!30747 l!996)))) b!1019867))

(push 1)

(assert (not b!1019852))

(assert (not d!122201))

(assert (not b!1019858))

(assert (not d!122191))

(assert (not b!1019840))

(assert (not b!1019857))

(assert tp_is_empty!23761)

(assert (not b!1019866))

(assert (not b!1019864))

(assert (not b!1019846))

(assert (not b!1019867))

(assert (not b!1019844))

(assert (not bm!43145))

(assert (not b!1019860))

(assert (not b!1019842))

(check-sat)

(pop 1)

(push 1)

(check-sat)

