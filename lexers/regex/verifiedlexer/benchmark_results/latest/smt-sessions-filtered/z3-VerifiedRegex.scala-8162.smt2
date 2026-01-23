; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419796 () Bool)

(assert start!419796)

(declare-fun b!4347894 () Bool)

(declare-fun e!2705617 () Bool)

(declare-fun e!2705615 () Bool)

(assert (=> b!4347894 (= e!2705617 (not e!2705615))))

(declare-fun res!1785822 () Bool)

(assert (=> b!4347894 (=> res!1785822 e!2705615)))

(declare-datatypes ((K!10215 0))(
  ( (K!10216 (val!16443 Int)) )
))
(declare-datatypes ((V!10461 0))(
  ( (V!10462 (val!16444 Int)) )
))
(declare-datatypes ((tuple2!48206 0))(
  ( (tuple2!48207 (_1!27397 K!10215) (_2!27397 V!10461)) )
))
(declare-datatypes ((List!48973 0))(
  ( (Nil!48849) (Cons!48849 (h!54378 tuple2!48206) (t!355893 List!48973)) )
))
(declare-fun newBucket!200 () List!48973)

(declare-fun lt!1562576 () List!48973)

(declare-fun key!3918 () K!10215)

(declare-fun newValue!99 () V!10461)

(declare-fun removePairForKey!429 (List!48973 K!10215) List!48973)

(assert (=> b!4347894 (= res!1785822 (not (= newBucket!200 (Cons!48849 (tuple2!48207 key!3918 newValue!99) (removePairForKey!429 lt!1562576 key!3918)))))))

(declare-fun lambda!138747 () Int)

(declare-datatypes ((tuple2!48208 0))(
  ( (tuple2!48209 (_1!27398 (_ BitVec 64)) (_2!27398 List!48973)) )
))
(declare-datatypes ((List!48974 0))(
  ( (Nil!48850) (Cons!48850 (h!54379 tuple2!48208) (t!355894 List!48974)) )
))
(declare-datatypes ((ListLongMap!1551 0))(
  ( (ListLongMap!1552 (toList!2901 List!48974)) )
))
(declare-fun lm!1707 () ListLongMap!1551)

(declare-datatypes ((Unit!70771 0))(
  ( (Unit!70772) )
))
(declare-fun lt!1562572 () Unit!70771)

(declare-fun lt!1562574 () tuple2!48208)

(declare-fun forallContained!1705 (List!48974 Int tuple2!48208) Unit!70771)

(assert (=> b!4347894 (= lt!1562572 (forallContained!1705 (toList!2901 lm!1707) lambda!138747 lt!1562574))))

(declare-fun contains!11008 (List!48974 tuple2!48208) Bool)

(assert (=> b!4347894 (contains!11008 (toList!2901 lm!1707) lt!1562574)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4347894 (= lt!1562574 (tuple2!48209 hash!377 lt!1562576))))

(declare-fun lt!1562571 () Unit!70771)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!306 (List!48974 (_ BitVec 64) List!48973) Unit!70771)

(assert (=> b!4347894 (= lt!1562571 (lemmaGetValueByKeyImpliesContainsTuple!306 (toList!2901 lm!1707) hash!377 lt!1562576))))

(declare-fun apply!11311 (ListLongMap!1551 (_ BitVec 64)) List!48973)

(assert (=> b!4347894 (= lt!1562576 (apply!11311 lm!1707 hash!377))))

(declare-fun b!4347895 () Bool)

(declare-fun res!1785813 () Bool)

(assert (=> b!4347895 (=> (not res!1785813) (not e!2705617))))

(declare-datatypes ((Hashable!4851 0))(
  ( (HashableExt!4850 (__x!30554 Int)) )
))
(declare-fun hashF!1247 () Hashable!4851)

(declare-fun hash!1450 (Hashable!4851 K!10215) (_ BitVec 64))

(assert (=> b!4347895 (= res!1785813 (= (hash!1450 hashF!1247 key!3918) hash!377))))

(declare-fun b!4347896 () Bool)

(declare-fun e!2705620 () Bool)

(declare-fun lt!1562573 () ListLongMap!1551)

(declare-fun forall!9057 (List!48974 Int) Bool)

(assert (=> b!4347896 (= e!2705620 (forall!9057 (toList!2901 lt!1562573) lambda!138747))))

(declare-fun b!4347897 () Bool)

(declare-fun e!2705614 () Bool)

(declare-fun isEmpty!28157 (ListLongMap!1551) Bool)

(assert (=> b!4347897 (= e!2705614 (not (isEmpty!28157 lm!1707)))))

(declare-datatypes ((ListMap!2145 0))(
  ( (ListMap!2146 (toList!2902 List!48973)) )
))
(declare-fun lt!1562568 () ListMap!2145)

(declare-fun contains!11009 (ListMap!2145 K!10215) Bool)

(assert (=> b!4347897 (contains!11009 lt!1562568 key!3918)))

(declare-fun lt!1562575 () Unit!70771)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!2 (List!48973 K!10215 V!10461 ListMap!2145) Unit!70771)

(assert (=> b!4347897 (= lt!1562575 (lemmaAddToMapContainsAndNotInListThenInAcc!2 (_2!27398 (h!54379 (toList!2901 lm!1707))) key!3918 newValue!99 lt!1562568))))

(declare-fun extractMap!518 (List!48974) ListMap!2145)

(assert (=> b!4347897 (= lt!1562568 (extractMap!518 (t!355894 (toList!2901 lm!1707))))))

(declare-fun e!2705618 () Bool)

(assert (=> b!4347897 e!2705618))

(declare-fun res!1785814 () Bool)

(assert (=> b!4347897 (=> (not res!1785814) (not e!2705618))))

(declare-fun containsKey!618 (List!48973 K!10215) Bool)

(assert (=> b!4347897 (= res!1785814 (not (containsKey!618 (apply!11311 lm!1707 (_1!27398 (h!54379 (toList!2901 lm!1707)))) key!3918)))))

(declare-fun lt!1562570 () Unit!70771)

(declare-fun lemmaNotSameHashThenCannotContainKey!6 (ListLongMap!1551 K!10215 (_ BitVec 64) Hashable!4851) Unit!70771)

(assert (=> b!4347897 (= lt!1562570 (lemmaNotSameHashThenCannotContainKey!6 lm!1707 key!3918 (_1!27398 (h!54379 (toList!2901 lm!1707))) hashF!1247))))

(declare-fun b!4347899 () Bool)

(assert (=> b!4347899 (= e!2705618 (not (containsKey!618 (_2!27398 (h!54379 (toList!2901 lm!1707))) key!3918)))))

(declare-fun b!4347900 () Bool)

(declare-fun res!1785815 () Bool)

(assert (=> b!4347900 (=> (not res!1785815) (not e!2705617))))

(declare-fun allKeysSameHash!417 (List!48973 (_ BitVec 64) Hashable!4851) Bool)

(assert (=> b!4347900 (= res!1785815 (allKeysSameHash!417 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4347901 () Bool)

(declare-fun res!1785823 () Bool)

(assert (=> b!4347901 (=> (not res!1785823) (not e!2705617))))

(declare-fun allKeysSameHashInMap!563 (ListLongMap!1551 Hashable!4851) Bool)

(assert (=> b!4347901 (= res!1785823 (allKeysSameHashInMap!563 lm!1707 hashF!1247))))

(declare-fun b!4347902 () Bool)

(declare-fun e!2705619 () Bool)

(declare-fun tp!1329706 () Bool)

(assert (=> b!4347902 (= e!2705619 tp!1329706)))

(declare-fun b!4347903 () Bool)

(declare-fun res!1785821 () Bool)

(assert (=> b!4347903 (=> res!1785821 e!2705615)))

(declare-fun noDuplicateKeys!459 (List!48973) Bool)

(assert (=> b!4347903 (= res!1785821 (not (noDuplicateKeys!459 newBucket!200)))))

(declare-fun b!4347904 () Bool)

(assert (=> b!4347904 (= e!2705615 e!2705614)))

(declare-fun res!1785816 () Bool)

(assert (=> b!4347904 (=> res!1785816 e!2705614)))

(get-info :version)

(assert (=> b!4347904 (= res!1785816 (or (and ((_ is Cons!48850) (toList!2901 lm!1707)) (= (_1!27398 (h!54379 (toList!2901 lm!1707))) hash!377)) (not ((_ is Cons!48850) (toList!2901 lm!1707))) (= (_1!27398 (h!54379 (toList!2901 lm!1707))) hash!377)))))

(assert (=> b!4347904 e!2705620))

(declare-fun res!1785817 () Bool)

(assert (=> b!4347904 (=> (not res!1785817) (not e!2705620))))

(assert (=> b!4347904 (= res!1785817 (forall!9057 (toList!2901 lt!1562573) lambda!138747))))

(declare-fun +!580 (ListLongMap!1551 tuple2!48208) ListLongMap!1551)

(assert (=> b!4347904 (= lt!1562573 (+!580 lm!1707 (tuple2!48209 hash!377 newBucket!200)))))

(declare-fun lt!1562569 () Unit!70771)

(declare-fun addValidProp!113 (ListLongMap!1551 Int (_ BitVec 64) List!48973) Unit!70771)

(assert (=> b!4347904 (= lt!1562569 (addValidProp!113 lm!1707 lambda!138747 hash!377 newBucket!200))))

(assert (=> b!4347904 (forall!9057 (toList!2901 lm!1707) lambda!138747)))

(declare-fun res!1785820 () Bool)

(assert (=> start!419796 (=> (not res!1785820) (not e!2705617))))

(assert (=> start!419796 (= res!1785820 (forall!9057 (toList!2901 lm!1707) lambda!138747))))

(assert (=> start!419796 e!2705617))

(declare-fun e!2705616 () Bool)

(assert (=> start!419796 e!2705616))

(assert (=> start!419796 true))

(declare-fun inv!64401 (ListLongMap!1551) Bool)

(assert (=> start!419796 (and (inv!64401 lm!1707) e!2705619)))

(declare-fun tp_is_empty!25073 () Bool)

(assert (=> start!419796 tp_is_empty!25073))

(declare-fun tp_is_empty!25075 () Bool)

(assert (=> start!419796 tp_is_empty!25075))

(declare-fun b!4347898 () Bool)

(declare-fun res!1785818 () Bool)

(assert (=> b!4347898 (=> (not res!1785818) (not e!2705617))))

(assert (=> b!4347898 (= res!1785818 (contains!11009 (extractMap!518 (toList!2901 lm!1707)) key!3918))))

(declare-fun b!4347905 () Bool)

(declare-fun tp!1329705 () Bool)

(assert (=> b!4347905 (= e!2705616 (and tp_is_empty!25073 tp_is_empty!25075 tp!1329705))))

(declare-fun b!4347906 () Bool)

(declare-fun res!1785819 () Bool)

(assert (=> b!4347906 (=> (not res!1785819) (not e!2705617))))

(declare-fun contains!11010 (ListLongMap!1551 (_ BitVec 64)) Bool)

(assert (=> b!4347906 (= res!1785819 (contains!11010 lm!1707 hash!377))))

(assert (= (and start!419796 res!1785820) b!4347901))

(assert (= (and b!4347901 res!1785823) b!4347895))

(assert (= (and b!4347895 res!1785813) b!4347900))

(assert (= (and b!4347900 res!1785815) b!4347898))

(assert (= (and b!4347898 res!1785818) b!4347906))

(assert (= (and b!4347906 res!1785819) b!4347894))

(assert (= (and b!4347894 (not res!1785822)) b!4347903))

(assert (= (and b!4347903 (not res!1785821)) b!4347904))

(assert (= (and b!4347904 res!1785817) b!4347896))

(assert (= (and b!4347904 (not res!1785816)) b!4347897))

(assert (= (and b!4347897 res!1785814) b!4347899))

(assert (= (and start!419796 ((_ is Cons!48849) newBucket!200)) b!4347905))

(assert (= start!419796 b!4347902))

(declare-fun m!4956993 () Bool)

(assert (=> b!4347898 m!4956993))

(assert (=> b!4347898 m!4956993))

(declare-fun m!4956995 () Bool)

(assert (=> b!4347898 m!4956995))

(declare-fun m!4956997 () Bool)

(assert (=> b!4347906 m!4956997))

(declare-fun m!4956999 () Bool)

(assert (=> b!4347895 m!4956999))

(declare-fun m!4957001 () Bool)

(assert (=> b!4347897 m!4957001))

(declare-fun m!4957003 () Bool)

(assert (=> b!4347897 m!4957003))

(declare-fun m!4957005 () Bool)

(assert (=> b!4347897 m!4957005))

(declare-fun m!4957007 () Bool)

(assert (=> b!4347897 m!4957007))

(declare-fun m!4957009 () Bool)

(assert (=> b!4347897 m!4957009))

(declare-fun m!4957011 () Bool)

(assert (=> b!4347897 m!4957011))

(assert (=> b!4347897 m!4957011))

(declare-fun m!4957013 () Bool)

(assert (=> b!4347897 m!4957013))

(declare-fun m!4957015 () Bool)

(assert (=> b!4347904 m!4957015))

(declare-fun m!4957017 () Bool)

(assert (=> b!4347904 m!4957017))

(declare-fun m!4957019 () Bool)

(assert (=> b!4347904 m!4957019))

(declare-fun m!4957021 () Bool)

(assert (=> b!4347904 m!4957021))

(declare-fun m!4957023 () Bool)

(assert (=> b!4347900 m!4957023))

(declare-fun m!4957025 () Bool)

(assert (=> b!4347903 m!4957025))

(declare-fun m!4957027 () Bool)

(assert (=> b!4347901 m!4957027))

(assert (=> b!4347896 m!4957015))

(assert (=> start!419796 m!4957021))

(declare-fun m!4957029 () Bool)

(assert (=> start!419796 m!4957029))

(declare-fun m!4957031 () Bool)

(assert (=> b!4347894 m!4957031))

(declare-fun m!4957033 () Bool)

(assert (=> b!4347894 m!4957033))

(declare-fun m!4957035 () Bool)

(assert (=> b!4347894 m!4957035))

(declare-fun m!4957037 () Bool)

(assert (=> b!4347894 m!4957037))

(declare-fun m!4957039 () Bool)

(assert (=> b!4347894 m!4957039))

(declare-fun m!4957041 () Bool)

(assert (=> b!4347899 m!4957041))

(check-sat (not b!4347894) (not b!4347898) (not b!4347903) (not b!4347896) (not b!4347905) (not b!4347899) (not b!4347902) (not b!4347901) tp_is_empty!25073 (not b!4347906) (not start!419796) tp_is_empty!25075 (not b!4347897) (not b!4347900) (not b!4347895) (not b!4347904))
(check-sat)
(get-model)

(declare-fun d!1283705 () Bool)

(declare-fun res!1785837 () Bool)

(declare-fun e!2705634 () Bool)

(assert (=> d!1283705 (=> res!1785837 e!2705634)))

(assert (=> d!1283705 (= res!1785837 ((_ is Nil!48850) (toList!2901 lt!1562573)))))

(assert (=> d!1283705 (= (forall!9057 (toList!2901 lt!1562573) lambda!138747) e!2705634)))

(declare-fun b!4347924 () Bool)

(declare-fun e!2705635 () Bool)

(assert (=> b!4347924 (= e!2705634 e!2705635)))

(declare-fun res!1785838 () Bool)

(assert (=> b!4347924 (=> (not res!1785838) (not e!2705635))))

(declare-fun dynLambda!20601 (Int tuple2!48208) Bool)

(assert (=> b!4347924 (= res!1785838 (dynLambda!20601 lambda!138747 (h!54379 (toList!2901 lt!1562573))))))

(declare-fun b!4347925 () Bool)

(assert (=> b!4347925 (= e!2705635 (forall!9057 (t!355894 (toList!2901 lt!1562573)) lambda!138747))))

(assert (= (and d!1283705 (not res!1785837)) b!4347924))

(assert (= (and b!4347924 res!1785838) b!4347925))

(declare-fun b_lambda!130205 () Bool)

(assert (=> (not b_lambda!130205) (not b!4347924)))

(declare-fun m!4957055 () Bool)

(assert (=> b!4347924 m!4957055))

(declare-fun m!4957057 () Bool)

(assert (=> b!4347925 m!4957057))

(assert (=> b!4347896 d!1283705))

(declare-fun d!1283711 () Bool)

(declare-datatypes ((Option!10424 0))(
  ( (None!10423) (Some!10423 (v!43225 List!48973)) )
))
(declare-fun get!15858 (Option!10424) List!48973)

(declare-fun getValueByKey!410 (List!48974 (_ BitVec 64)) Option!10424)

(assert (=> d!1283711 (= (apply!11311 lm!1707 (_1!27398 (h!54379 (toList!2901 lm!1707)))) (get!15858 (getValueByKey!410 (toList!2901 lm!1707) (_1!27398 (h!54379 (toList!2901 lm!1707))))))))

(declare-fun bs!628132 () Bool)

(assert (= bs!628132 d!1283711))

(declare-fun m!4957065 () Bool)

(assert (=> bs!628132 m!4957065))

(assert (=> bs!628132 m!4957065))

(declare-fun m!4957067 () Bool)

(assert (=> bs!628132 m!4957067))

(assert (=> b!4347897 d!1283711))

(declare-fun d!1283715 () Bool)

(declare-fun res!1785852 () Bool)

(declare-fun e!2705653 () Bool)

(assert (=> d!1283715 (=> res!1785852 e!2705653)))

(assert (=> d!1283715 (= res!1785852 (and ((_ is Cons!48849) (apply!11311 lm!1707 (_1!27398 (h!54379 (toList!2901 lm!1707))))) (= (_1!27397 (h!54378 (apply!11311 lm!1707 (_1!27398 (h!54379 (toList!2901 lm!1707)))))) key!3918)))))

(assert (=> d!1283715 (= (containsKey!618 (apply!11311 lm!1707 (_1!27398 (h!54379 (toList!2901 lm!1707)))) key!3918) e!2705653)))

(declare-fun b!4347947 () Bool)

(declare-fun e!2705654 () Bool)

(assert (=> b!4347947 (= e!2705653 e!2705654)))

(declare-fun res!1785853 () Bool)

(assert (=> b!4347947 (=> (not res!1785853) (not e!2705654))))

(assert (=> b!4347947 (= res!1785853 ((_ is Cons!48849) (apply!11311 lm!1707 (_1!27398 (h!54379 (toList!2901 lm!1707))))))))

(declare-fun b!4347948 () Bool)

(assert (=> b!4347948 (= e!2705654 (containsKey!618 (t!355893 (apply!11311 lm!1707 (_1!27398 (h!54379 (toList!2901 lm!1707))))) key!3918))))

(assert (= (and d!1283715 (not res!1785852)) b!4347947))

(assert (= (and b!4347947 res!1785853) b!4347948))

(declare-fun m!4957075 () Bool)

(assert (=> b!4347948 m!4957075))

(assert (=> b!4347897 d!1283715))

(declare-fun d!1283719 () Bool)

(assert (=> d!1283719 (contains!11009 lt!1562568 key!3918)))

(declare-fun lt!1562591 () Unit!70771)

(declare-fun choose!26700 (List!48973 K!10215 V!10461 ListMap!2145) Unit!70771)

(assert (=> d!1283719 (= lt!1562591 (choose!26700 (_2!27398 (h!54379 (toList!2901 lm!1707))) key!3918 newValue!99 lt!1562568))))

(assert (=> d!1283719 (noDuplicateKeys!459 (_2!27398 (h!54379 (toList!2901 lm!1707))))))

(assert (=> d!1283719 (= (lemmaAddToMapContainsAndNotInListThenInAcc!2 (_2!27398 (h!54379 (toList!2901 lm!1707))) key!3918 newValue!99 lt!1562568) lt!1562591)))

(declare-fun bs!628134 () Bool)

(assert (= bs!628134 d!1283719))

(assert (=> bs!628134 m!4957007))

(declare-fun m!4957091 () Bool)

(assert (=> bs!628134 m!4957091))

(declare-fun m!4957093 () Bool)

(assert (=> bs!628134 m!4957093))

(assert (=> b!4347897 d!1283719))

(declare-fun b!4348027 () Bool)

(declare-fun e!2705709 () Unit!70771)

(declare-fun e!2705711 () Unit!70771)

(assert (=> b!4348027 (= e!2705709 e!2705711)))

(declare-fun c!739104 () Bool)

(declare-fun call!302227 () Bool)

(assert (=> b!4348027 (= c!739104 call!302227)))

(declare-fun b!4348028 () Bool)

(declare-fun e!2705712 () Bool)

(declare-datatypes ((List!48976 0))(
  ( (Nil!48852) (Cons!48852 (h!54383 K!10215) (t!355896 List!48976)) )
))
(declare-fun contains!11012 (List!48976 K!10215) Bool)

(declare-fun keys!16476 (ListMap!2145) List!48976)

(assert (=> b!4348028 (= e!2705712 (not (contains!11012 (keys!16476 lt!1562568) key!3918)))))

(declare-fun b!4348029 () Bool)

(declare-fun e!2705714 () Bool)

(declare-fun e!2705710 () Bool)

(assert (=> b!4348029 (= e!2705714 e!2705710)))

(declare-fun res!1785892 () Bool)

(assert (=> b!4348029 (=> (not res!1785892) (not e!2705710))))

(declare-datatypes ((Option!10425 0))(
  ( (None!10424) (Some!10424 (v!43226 V!10461)) )
))
(declare-fun isDefined!7720 (Option!10425) Bool)

(declare-fun getValueByKey!411 (List!48973 K!10215) Option!10425)

(assert (=> b!4348029 (= res!1785892 (isDefined!7720 (getValueByKey!411 (toList!2902 lt!1562568) key!3918)))))

(declare-fun b!4348030 () Bool)

(declare-fun e!2705713 () List!48976)

(assert (=> b!4348030 (= e!2705713 (keys!16476 lt!1562568))))

(declare-fun b!4348031 () Bool)

(declare-fun Unit!70778 () Unit!70771)

(assert (=> b!4348031 (= e!2705711 Unit!70778)))

(declare-fun d!1283729 () Bool)

(assert (=> d!1283729 e!2705714))

(declare-fun res!1785891 () Bool)

(assert (=> d!1283729 (=> res!1785891 e!2705714)))

(assert (=> d!1283729 (= res!1785891 e!2705712)))

(declare-fun res!1785893 () Bool)

(assert (=> d!1283729 (=> (not res!1785893) (not e!2705712))))

(declare-fun lt!1562651 () Bool)

(assert (=> d!1283729 (= res!1785893 (not lt!1562651))))

(declare-fun lt!1562655 () Bool)

(assert (=> d!1283729 (= lt!1562651 lt!1562655)))

(declare-fun lt!1562654 () Unit!70771)

(assert (=> d!1283729 (= lt!1562654 e!2705709)))

(declare-fun c!739103 () Bool)

(assert (=> d!1283729 (= c!739103 lt!1562655)))

(declare-fun containsKey!621 (List!48973 K!10215) Bool)

(assert (=> d!1283729 (= lt!1562655 (containsKey!621 (toList!2902 lt!1562568) key!3918))))

(assert (=> d!1283729 (= (contains!11009 lt!1562568 key!3918) lt!1562651)))

(declare-fun b!4348032 () Bool)

(assert (=> b!4348032 false))

(declare-fun lt!1562650 () Unit!70771)

(declare-fun lt!1562653 () Unit!70771)

(assert (=> b!4348032 (= lt!1562650 lt!1562653)))

(assert (=> b!4348032 (containsKey!621 (toList!2902 lt!1562568) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!102 (List!48973 K!10215) Unit!70771)

(assert (=> b!4348032 (= lt!1562653 (lemmaInGetKeysListThenContainsKey!102 (toList!2902 lt!1562568) key!3918))))

(declare-fun Unit!70779 () Unit!70771)

(assert (=> b!4348032 (= e!2705711 Unit!70779)))

(declare-fun b!4348033 () Bool)

(declare-fun lt!1562649 () Unit!70771)

(assert (=> b!4348033 (= e!2705709 lt!1562649)))

(declare-fun lt!1562656 () Unit!70771)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!323 (List!48973 K!10215) Unit!70771)

(assert (=> b!4348033 (= lt!1562656 (lemmaContainsKeyImpliesGetValueByKeyDefined!323 (toList!2902 lt!1562568) key!3918))))

(assert (=> b!4348033 (isDefined!7720 (getValueByKey!411 (toList!2902 lt!1562568) key!3918))))

(declare-fun lt!1562652 () Unit!70771)

(assert (=> b!4348033 (= lt!1562652 lt!1562656)))

(declare-fun lemmaInListThenGetKeysListContains!101 (List!48973 K!10215) Unit!70771)

(assert (=> b!4348033 (= lt!1562649 (lemmaInListThenGetKeysListContains!101 (toList!2902 lt!1562568) key!3918))))

(assert (=> b!4348033 call!302227))

(declare-fun b!4348034 () Bool)

(declare-fun getKeysList!104 (List!48973) List!48976)

(assert (=> b!4348034 (= e!2705713 (getKeysList!104 (toList!2902 lt!1562568)))))

(declare-fun b!4348035 () Bool)

(assert (=> b!4348035 (= e!2705710 (contains!11012 (keys!16476 lt!1562568) key!3918))))

(declare-fun bm!302222 () Bool)

(assert (=> bm!302222 (= call!302227 (contains!11012 e!2705713 key!3918))))

(declare-fun c!739105 () Bool)

(assert (=> bm!302222 (= c!739105 c!739103)))

(assert (= (and d!1283729 c!739103) b!4348033))

(assert (= (and d!1283729 (not c!739103)) b!4348027))

(assert (= (and b!4348027 c!739104) b!4348032))

(assert (= (and b!4348027 (not c!739104)) b!4348031))

(assert (= (or b!4348033 b!4348027) bm!302222))

(assert (= (and bm!302222 c!739105) b!4348034))

(assert (= (and bm!302222 (not c!739105)) b!4348030))

(assert (= (and d!1283729 res!1785893) b!4348028))

(assert (= (and d!1283729 (not res!1785891)) b!4348029))

(assert (= (and b!4348029 res!1785892) b!4348035))

(declare-fun m!4957145 () Bool)

(assert (=> b!4348035 m!4957145))

(assert (=> b!4348035 m!4957145))

(declare-fun m!4957147 () Bool)

(assert (=> b!4348035 m!4957147))

(declare-fun m!4957149 () Bool)

(assert (=> d!1283729 m!4957149))

(assert (=> b!4348032 m!4957149))

(declare-fun m!4957151 () Bool)

(assert (=> b!4348032 m!4957151))

(declare-fun m!4957153 () Bool)

(assert (=> b!4348029 m!4957153))

(assert (=> b!4348029 m!4957153))

(declare-fun m!4957155 () Bool)

(assert (=> b!4348029 m!4957155))

(assert (=> b!4348028 m!4957145))

(assert (=> b!4348028 m!4957145))

(assert (=> b!4348028 m!4957147))

(declare-fun m!4957157 () Bool)

(assert (=> b!4348034 m!4957157))

(declare-fun m!4957159 () Bool)

(assert (=> bm!302222 m!4957159))

(assert (=> b!4348030 m!4957145))

(declare-fun m!4957161 () Bool)

(assert (=> b!4348033 m!4957161))

(assert (=> b!4348033 m!4957153))

(assert (=> b!4348033 m!4957153))

(assert (=> b!4348033 m!4957155))

(declare-fun m!4957163 () Bool)

(assert (=> b!4348033 m!4957163))

(assert (=> b!4347897 d!1283729))

(declare-fun bs!628141 () Bool)

(declare-fun d!1283743 () Bool)

(assert (= bs!628141 (and d!1283743 start!419796)))

(declare-fun lambda!138759 () Int)

(assert (=> bs!628141 (= lambda!138759 lambda!138747)))

(assert (=> d!1283743 (not (containsKey!618 (apply!11311 lm!1707 (_1!27398 (h!54379 (toList!2901 lm!1707)))) key!3918))))

(declare-fun lt!1562680 () Unit!70771)

(declare-fun choose!26701 (ListLongMap!1551 K!10215 (_ BitVec 64) Hashable!4851) Unit!70771)

(assert (=> d!1283743 (= lt!1562680 (choose!26701 lm!1707 key!3918 (_1!27398 (h!54379 (toList!2901 lm!1707))) hashF!1247))))

(assert (=> d!1283743 (forall!9057 (toList!2901 lm!1707) lambda!138759)))

(assert (=> d!1283743 (= (lemmaNotSameHashThenCannotContainKey!6 lm!1707 key!3918 (_1!27398 (h!54379 (toList!2901 lm!1707))) hashF!1247) lt!1562680)))

(declare-fun bs!628142 () Bool)

(assert (= bs!628142 d!1283743))

(assert (=> bs!628142 m!4957011))

(assert (=> bs!628142 m!4957011))

(assert (=> bs!628142 m!4957013))

(declare-fun m!4957199 () Bool)

(assert (=> bs!628142 m!4957199))

(declare-fun m!4957201 () Bool)

(assert (=> bs!628142 m!4957201))

(assert (=> b!4347897 d!1283743))

(declare-fun bs!628157 () Bool)

(declare-fun d!1283755 () Bool)

(assert (= bs!628157 (and d!1283755 start!419796)))

(declare-fun lambda!138766 () Int)

(assert (=> bs!628157 (= lambda!138766 lambda!138747)))

(declare-fun bs!628158 () Bool)

(assert (= bs!628158 (and d!1283755 d!1283743)))

(assert (=> bs!628158 (= lambda!138766 lambda!138759)))

(declare-fun lt!1562690 () ListMap!2145)

(declare-fun invariantList!656 (List!48973) Bool)

(assert (=> d!1283755 (invariantList!656 (toList!2902 lt!1562690))))

(declare-fun e!2705739 () ListMap!2145)

(assert (=> d!1283755 (= lt!1562690 e!2705739)))

(declare-fun c!739115 () Bool)

(assert (=> d!1283755 (= c!739115 ((_ is Cons!48850) (t!355894 (toList!2901 lm!1707))))))

(assert (=> d!1283755 (forall!9057 (t!355894 (toList!2901 lm!1707)) lambda!138766)))

(assert (=> d!1283755 (= (extractMap!518 (t!355894 (toList!2901 lm!1707))) lt!1562690)))

(declare-fun b!4348075 () Bool)

(declare-fun addToMapMapFromBucket!163 (List!48973 ListMap!2145) ListMap!2145)

(assert (=> b!4348075 (= e!2705739 (addToMapMapFromBucket!163 (_2!27398 (h!54379 (t!355894 (toList!2901 lm!1707)))) (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))))))

(declare-fun b!4348076 () Bool)

(assert (=> b!4348076 (= e!2705739 (ListMap!2146 Nil!48849))))

(assert (= (and d!1283755 c!739115) b!4348075))

(assert (= (and d!1283755 (not c!739115)) b!4348076))

(declare-fun m!4957227 () Bool)

(assert (=> d!1283755 m!4957227))

(declare-fun m!4957229 () Bool)

(assert (=> d!1283755 m!4957229))

(declare-fun m!4957231 () Bool)

(assert (=> b!4348075 m!4957231))

(assert (=> b!4348075 m!4957231))

(declare-fun m!4957233 () Bool)

(assert (=> b!4348075 m!4957233))

(assert (=> b!4347897 d!1283755))

(declare-fun d!1283771 () Bool)

(declare-fun isEmpty!28159 (List!48974) Bool)

(assert (=> d!1283771 (= (isEmpty!28157 lm!1707) (isEmpty!28159 (toList!2901 lm!1707)))))

(declare-fun bs!628159 () Bool)

(assert (= bs!628159 d!1283771))

(declare-fun m!4957235 () Bool)

(assert (=> bs!628159 m!4957235))

(assert (=> b!4347897 d!1283771))

(declare-fun b!4348077 () Bool)

(declare-fun e!2705740 () Unit!70771)

(declare-fun e!2705742 () Unit!70771)

(assert (=> b!4348077 (= e!2705740 e!2705742)))

(declare-fun c!739117 () Bool)

(declare-fun call!302229 () Bool)

(assert (=> b!4348077 (= c!739117 call!302229)))

(declare-fun b!4348078 () Bool)

(declare-fun e!2705743 () Bool)

(assert (=> b!4348078 (= e!2705743 (not (contains!11012 (keys!16476 (extractMap!518 (toList!2901 lm!1707))) key!3918)))))

(declare-fun b!4348079 () Bool)

(declare-fun e!2705745 () Bool)

(declare-fun e!2705741 () Bool)

(assert (=> b!4348079 (= e!2705745 e!2705741)))

(declare-fun res!1785904 () Bool)

(assert (=> b!4348079 (=> (not res!1785904) (not e!2705741))))

(assert (=> b!4348079 (= res!1785904 (isDefined!7720 (getValueByKey!411 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) key!3918)))))

(declare-fun b!4348080 () Bool)

(declare-fun e!2705744 () List!48976)

(assert (=> b!4348080 (= e!2705744 (keys!16476 (extractMap!518 (toList!2901 lm!1707))))))

(declare-fun b!4348081 () Bool)

(declare-fun Unit!70780 () Unit!70771)

(assert (=> b!4348081 (= e!2705742 Unit!70780)))

(declare-fun d!1283773 () Bool)

(assert (=> d!1283773 e!2705745))

(declare-fun res!1785903 () Bool)

(assert (=> d!1283773 (=> res!1785903 e!2705745)))

(assert (=> d!1283773 (= res!1785903 e!2705743)))

(declare-fun res!1785905 () Bool)

(assert (=> d!1283773 (=> (not res!1785905) (not e!2705743))))

(declare-fun lt!1562693 () Bool)

(assert (=> d!1283773 (= res!1785905 (not lt!1562693))))

(declare-fun lt!1562697 () Bool)

(assert (=> d!1283773 (= lt!1562693 lt!1562697)))

(declare-fun lt!1562696 () Unit!70771)

(assert (=> d!1283773 (= lt!1562696 e!2705740)))

(declare-fun c!739116 () Bool)

(assert (=> d!1283773 (= c!739116 lt!1562697)))

(assert (=> d!1283773 (= lt!1562697 (containsKey!621 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) key!3918))))

(assert (=> d!1283773 (= (contains!11009 (extractMap!518 (toList!2901 lm!1707)) key!3918) lt!1562693)))

(declare-fun b!4348082 () Bool)

(assert (=> b!4348082 false))

(declare-fun lt!1562692 () Unit!70771)

(declare-fun lt!1562695 () Unit!70771)

(assert (=> b!4348082 (= lt!1562692 lt!1562695)))

(assert (=> b!4348082 (containsKey!621 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) key!3918)))

(assert (=> b!4348082 (= lt!1562695 (lemmaInGetKeysListThenContainsKey!102 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) key!3918))))

(declare-fun Unit!70781 () Unit!70771)

(assert (=> b!4348082 (= e!2705742 Unit!70781)))

(declare-fun b!4348083 () Bool)

(declare-fun lt!1562691 () Unit!70771)

(assert (=> b!4348083 (= e!2705740 lt!1562691)))

(declare-fun lt!1562698 () Unit!70771)

(assert (=> b!4348083 (= lt!1562698 (lemmaContainsKeyImpliesGetValueByKeyDefined!323 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) key!3918))))

(assert (=> b!4348083 (isDefined!7720 (getValueByKey!411 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) key!3918))))

(declare-fun lt!1562694 () Unit!70771)

(assert (=> b!4348083 (= lt!1562694 lt!1562698)))

(assert (=> b!4348083 (= lt!1562691 (lemmaInListThenGetKeysListContains!101 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) key!3918))))

(assert (=> b!4348083 call!302229))

(declare-fun b!4348084 () Bool)

(assert (=> b!4348084 (= e!2705744 (getKeysList!104 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))))))

(declare-fun b!4348085 () Bool)

(assert (=> b!4348085 (= e!2705741 (contains!11012 (keys!16476 (extractMap!518 (toList!2901 lm!1707))) key!3918))))

(declare-fun bm!302224 () Bool)

(assert (=> bm!302224 (= call!302229 (contains!11012 e!2705744 key!3918))))

(declare-fun c!739118 () Bool)

(assert (=> bm!302224 (= c!739118 c!739116)))

(assert (= (and d!1283773 c!739116) b!4348083))

(assert (= (and d!1283773 (not c!739116)) b!4348077))

(assert (= (and b!4348077 c!739117) b!4348082))

(assert (= (and b!4348077 (not c!739117)) b!4348081))

(assert (= (or b!4348083 b!4348077) bm!302224))

(assert (= (and bm!302224 c!739118) b!4348084))

(assert (= (and bm!302224 (not c!739118)) b!4348080))

(assert (= (and d!1283773 res!1785905) b!4348078))

(assert (= (and d!1283773 (not res!1785903)) b!4348079))

(assert (= (and b!4348079 res!1785904) b!4348085))

(assert (=> b!4348085 m!4956993))

(declare-fun m!4957237 () Bool)

(assert (=> b!4348085 m!4957237))

(assert (=> b!4348085 m!4957237))

(declare-fun m!4957239 () Bool)

(assert (=> b!4348085 m!4957239))

(declare-fun m!4957241 () Bool)

(assert (=> d!1283773 m!4957241))

(assert (=> b!4348082 m!4957241))

(declare-fun m!4957243 () Bool)

(assert (=> b!4348082 m!4957243))

(declare-fun m!4957245 () Bool)

(assert (=> b!4348079 m!4957245))

(assert (=> b!4348079 m!4957245))

(declare-fun m!4957247 () Bool)

(assert (=> b!4348079 m!4957247))

(assert (=> b!4348078 m!4956993))

(assert (=> b!4348078 m!4957237))

(assert (=> b!4348078 m!4957237))

(assert (=> b!4348078 m!4957239))

(declare-fun m!4957249 () Bool)

(assert (=> b!4348084 m!4957249))

(declare-fun m!4957251 () Bool)

(assert (=> bm!302224 m!4957251))

(assert (=> b!4348080 m!4956993))

(assert (=> b!4348080 m!4957237))

(declare-fun m!4957253 () Bool)

(assert (=> b!4348083 m!4957253))

(assert (=> b!4348083 m!4957245))

(assert (=> b!4348083 m!4957245))

(assert (=> b!4348083 m!4957247))

(declare-fun m!4957255 () Bool)

(assert (=> b!4348083 m!4957255))

(assert (=> b!4347898 d!1283773))

(declare-fun bs!628160 () Bool)

(declare-fun d!1283775 () Bool)

(assert (= bs!628160 (and d!1283775 start!419796)))

(declare-fun lambda!138767 () Int)

(assert (=> bs!628160 (= lambda!138767 lambda!138747)))

(declare-fun bs!628161 () Bool)

(assert (= bs!628161 (and d!1283775 d!1283743)))

(assert (=> bs!628161 (= lambda!138767 lambda!138759)))

(declare-fun bs!628162 () Bool)

(assert (= bs!628162 (and d!1283775 d!1283755)))

(assert (=> bs!628162 (= lambda!138767 lambda!138766)))

(declare-fun lt!1562699 () ListMap!2145)

(assert (=> d!1283775 (invariantList!656 (toList!2902 lt!1562699))))

(declare-fun e!2705746 () ListMap!2145)

(assert (=> d!1283775 (= lt!1562699 e!2705746)))

(declare-fun c!739119 () Bool)

(assert (=> d!1283775 (= c!739119 ((_ is Cons!48850) (toList!2901 lm!1707)))))

(assert (=> d!1283775 (forall!9057 (toList!2901 lm!1707) lambda!138767)))

(assert (=> d!1283775 (= (extractMap!518 (toList!2901 lm!1707)) lt!1562699)))

(declare-fun b!4348086 () Bool)

(assert (=> b!4348086 (= e!2705746 (addToMapMapFromBucket!163 (_2!27398 (h!54379 (toList!2901 lm!1707))) (extractMap!518 (t!355894 (toList!2901 lm!1707)))))))

(declare-fun b!4348087 () Bool)

(assert (=> b!4348087 (= e!2705746 (ListMap!2146 Nil!48849))))

(assert (= (and d!1283775 c!739119) b!4348086))

(assert (= (and d!1283775 (not c!739119)) b!4348087))

(declare-fun m!4957257 () Bool)

(assert (=> d!1283775 m!4957257))

(declare-fun m!4957259 () Bool)

(assert (=> d!1283775 m!4957259))

(assert (=> b!4348086 m!4957001))

(assert (=> b!4348086 m!4957001))

(declare-fun m!4957261 () Bool)

(assert (=> b!4348086 m!4957261))

(assert (=> b!4347898 d!1283775))

(assert (=> b!4347904 d!1283705))

(declare-fun d!1283777 () Bool)

(declare-fun e!2705749 () Bool)

(assert (=> d!1283777 e!2705749))

(declare-fun res!1785910 () Bool)

(assert (=> d!1283777 (=> (not res!1785910) (not e!2705749))))

(declare-fun lt!1562711 () ListLongMap!1551)

(assert (=> d!1283777 (= res!1785910 (contains!11010 lt!1562711 (_1!27398 (tuple2!48209 hash!377 newBucket!200))))))

(declare-fun lt!1562708 () List!48974)

(assert (=> d!1283777 (= lt!1562711 (ListLongMap!1552 lt!1562708))))

(declare-fun lt!1562709 () Unit!70771)

(declare-fun lt!1562710 () Unit!70771)

(assert (=> d!1283777 (= lt!1562709 lt!1562710)))

(assert (=> d!1283777 (= (getValueByKey!410 lt!1562708 (_1!27398 (tuple2!48209 hash!377 newBucket!200))) (Some!10423 (_2!27398 (tuple2!48209 hash!377 newBucket!200))))))

(declare-fun lemmaContainsTupThenGetReturnValue!190 (List!48974 (_ BitVec 64) List!48973) Unit!70771)

(assert (=> d!1283777 (= lt!1562710 (lemmaContainsTupThenGetReturnValue!190 lt!1562708 (_1!27398 (tuple2!48209 hash!377 newBucket!200)) (_2!27398 (tuple2!48209 hash!377 newBucket!200))))))

(declare-fun insertStrictlySorted!113 (List!48974 (_ BitVec 64) List!48973) List!48974)

(assert (=> d!1283777 (= lt!1562708 (insertStrictlySorted!113 (toList!2901 lm!1707) (_1!27398 (tuple2!48209 hash!377 newBucket!200)) (_2!27398 (tuple2!48209 hash!377 newBucket!200))))))

(assert (=> d!1283777 (= (+!580 lm!1707 (tuple2!48209 hash!377 newBucket!200)) lt!1562711)))

(declare-fun b!4348092 () Bool)

(declare-fun res!1785911 () Bool)

(assert (=> b!4348092 (=> (not res!1785911) (not e!2705749))))

(assert (=> b!4348092 (= res!1785911 (= (getValueByKey!410 (toList!2901 lt!1562711) (_1!27398 (tuple2!48209 hash!377 newBucket!200))) (Some!10423 (_2!27398 (tuple2!48209 hash!377 newBucket!200)))))))

(declare-fun b!4348093 () Bool)

(assert (=> b!4348093 (= e!2705749 (contains!11008 (toList!2901 lt!1562711) (tuple2!48209 hash!377 newBucket!200)))))

(assert (= (and d!1283777 res!1785910) b!4348092))

(assert (= (and b!4348092 res!1785911) b!4348093))

(declare-fun m!4957263 () Bool)

(assert (=> d!1283777 m!4957263))

(declare-fun m!4957265 () Bool)

(assert (=> d!1283777 m!4957265))

(declare-fun m!4957267 () Bool)

(assert (=> d!1283777 m!4957267))

(declare-fun m!4957269 () Bool)

(assert (=> d!1283777 m!4957269))

(declare-fun m!4957271 () Bool)

(assert (=> b!4348092 m!4957271))

(declare-fun m!4957273 () Bool)

(assert (=> b!4348093 m!4957273))

(assert (=> b!4347904 d!1283777))

(declare-fun d!1283779 () Bool)

(assert (=> d!1283779 (forall!9057 (toList!2901 (+!580 lm!1707 (tuple2!48209 hash!377 newBucket!200))) lambda!138747)))

(declare-fun lt!1562714 () Unit!70771)

(declare-fun choose!26702 (ListLongMap!1551 Int (_ BitVec 64) List!48973) Unit!70771)

(assert (=> d!1283779 (= lt!1562714 (choose!26702 lm!1707 lambda!138747 hash!377 newBucket!200))))

(declare-fun e!2705752 () Bool)

(assert (=> d!1283779 e!2705752))

(declare-fun res!1785914 () Bool)

(assert (=> d!1283779 (=> (not res!1785914) (not e!2705752))))

(assert (=> d!1283779 (= res!1785914 (forall!9057 (toList!2901 lm!1707) lambda!138747))))

(assert (=> d!1283779 (= (addValidProp!113 lm!1707 lambda!138747 hash!377 newBucket!200) lt!1562714)))

(declare-fun b!4348097 () Bool)

(assert (=> b!4348097 (= e!2705752 (dynLambda!20601 lambda!138747 (tuple2!48209 hash!377 newBucket!200)))))

(assert (= (and d!1283779 res!1785914) b!4348097))

(declare-fun b_lambda!130221 () Bool)

(assert (=> (not b_lambda!130221) (not b!4348097)))

(assert (=> d!1283779 m!4957017))

(declare-fun m!4957275 () Bool)

(assert (=> d!1283779 m!4957275))

(declare-fun m!4957277 () Bool)

(assert (=> d!1283779 m!4957277))

(assert (=> d!1283779 m!4957021))

(declare-fun m!4957279 () Bool)

(assert (=> b!4348097 m!4957279))

(assert (=> b!4347904 d!1283779))

(declare-fun d!1283781 () Bool)

(declare-fun res!1785915 () Bool)

(declare-fun e!2705753 () Bool)

(assert (=> d!1283781 (=> res!1785915 e!2705753)))

(assert (=> d!1283781 (= res!1785915 ((_ is Nil!48850) (toList!2901 lm!1707)))))

(assert (=> d!1283781 (= (forall!9057 (toList!2901 lm!1707) lambda!138747) e!2705753)))

(declare-fun b!4348098 () Bool)

(declare-fun e!2705754 () Bool)

(assert (=> b!4348098 (= e!2705753 e!2705754)))

(declare-fun res!1785916 () Bool)

(assert (=> b!4348098 (=> (not res!1785916) (not e!2705754))))

(assert (=> b!4348098 (= res!1785916 (dynLambda!20601 lambda!138747 (h!54379 (toList!2901 lm!1707))))))

(declare-fun b!4348099 () Bool)

(assert (=> b!4348099 (= e!2705754 (forall!9057 (t!355894 (toList!2901 lm!1707)) lambda!138747))))

(assert (= (and d!1283781 (not res!1785915)) b!4348098))

(assert (= (and b!4348098 res!1785916) b!4348099))

(declare-fun b_lambda!130223 () Bool)

(assert (=> (not b_lambda!130223) (not b!4348098)))

(declare-fun m!4957281 () Bool)

(assert (=> b!4348098 m!4957281))

(declare-fun m!4957283 () Bool)

(assert (=> b!4348099 m!4957283))

(assert (=> b!4347904 d!1283781))

(declare-fun d!1283783 () Bool)

(assert (=> d!1283783 (= (apply!11311 lm!1707 hash!377) (get!15858 (getValueByKey!410 (toList!2901 lm!1707) hash!377)))))

(declare-fun bs!628163 () Bool)

(assert (= bs!628163 d!1283783))

(declare-fun m!4957285 () Bool)

(assert (=> bs!628163 m!4957285))

(assert (=> bs!628163 m!4957285))

(declare-fun m!4957287 () Bool)

(assert (=> bs!628163 m!4957287))

(assert (=> b!4347894 d!1283783))

(declare-fun b!4348110 () Bool)

(declare-fun e!2705760 () List!48973)

(assert (=> b!4348110 (= e!2705760 (Cons!48849 (h!54378 lt!1562576) (removePairForKey!429 (t!355893 lt!1562576) key!3918)))))

(declare-fun d!1283785 () Bool)

(declare-fun lt!1562717 () List!48973)

(assert (=> d!1283785 (not (containsKey!618 lt!1562717 key!3918))))

(declare-fun e!2705759 () List!48973)

(assert (=> d!1283785 (= lt!1562717 e!2705759)))

(declare-fun c!739124 () Bool)

(assert (=> d!1283785 (= c!739124 (and ((_ is Cons!48849) lt!1562576) (= (_1!27397 (h!54378 lt!1562576)) key!3918)))))

(assert (=> d!1283785 (noDuplicateKeys!459 lt!1562576)))

(assert (=> d!1283785 (= (removePairForKey!429 lt!1562576 key!3918) lt!1562717)))

(declare-fun b!4348108 () Bool)

(assert (=> b!4348108 (= e!2705759 (t!355893 lt!1562576))))

(declare-fun b!4348109 () Bool)

(assert (=> b!4348109 (= e!2705759 e!2705760)))

(declare-fun c!739125 () Bool)

(assert (=> b!4348109 (= c!739125 ((_ is Cons!48849) lt!1562576))))

(declare-fun b!4348111 () Bool)

(assert (=> b!4348111 (= e!2705760 Nil!48849)))

(assert (= (and d!1283785 c!739124) b!4348108))

(assert (= (and d!1283785 (not c!739124)) b!4348109))

(assert (= (and b!4348109 c!739125) b!4348110))

(assert (= (and b!4348109 (not c!739125)) b!4348111))

(declare-fun m!4957289 () Bool)

(assert (=> b!4348110 m!4957289))

(declare-fun m!4957291 () Bool)

(assert (=> d!1283785 m!4957291))

(declare-fun m!4957293 () Bool)

(assert (=> d!1283785 m!4957293))

(assert (=> b!4347894 d!1283785))

(declare-fun d!1283787 () Bool)

(declare-fun lt!1562720 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7670 (List!48974) (InoxSet tuple2!48208))

(assert (=> d!1283787 (= lt!1562720 (select (content!7670 (toList!2901 lm!1707)) lt!1562574))))

(declare-fun e!2705766 () Bool)

(assert (=> d!1283787 (= lt!1562720 e!2705766)))

(declare-fun res!1785921 () Bool)

(assert (=> d!1283787 (=> (not res!1785921) (not e!2705766))))

(assert (=> d!1283787 (= res!1785921 ((_ is Cons!48850) (toList!2901 lm!1707)))))

(assert (=> d!1283787 (= (contains!11008 (toList!2901 lm!1707) lt!1562574) lt!1562720)))

(declare-fun b!4348116 () Bool)

(declare-fun e!2705765 () Bool)

(assert (=> b!4348116 (= e!2705766 e!2705765)))

(declare-fun res!1785922 () Bool)

(assert (=> b!4348116 (=> res!1785922 e!2705765)))

(assert (=> b!4348116 (= res!1785922 (= (h!54379 (toList!2901 lm!1707)) lt!1562574))))

(declare-fun b!4348117 () Bool)

(assert (=> b!4348117 (= e!2705765 (contains!11008 (t!355894 (toList!2901 lm!1707)) lt!1562574))))

(assert (= (and d!1283787 res!1785921) b!4348116))

(assert (= (and b!4348116 (not res!1785922)) b!4348117))

(declare-fun m!4957295 () Bool)

(assert (=> d!1283787 m!4957295))

(declare-fun m!4957297 () Bool)

(assert (=> d!1283787 m!4957297))

(declare-fun m!4957299 () Bool)

(assert (=> b!4348117 m!4957299))

(assert (=> b!4347894 d!1283787))

(declare-fun d!1283789 () Bool)

(assert (=> d!1283789 (dynLambda!20601 lambda!138747 lt!1562574)))

(declare-fun lt!1562723 () Unit!70771)

(declare-fun choose!26703 (List!48974 Int tuple2!48208) Unit!70771)

(assert (=> d!1283789 (= lt!1562723 (choose!26703 (toList!2901 lm!1707) lambda!138747 lt!1562574))))

(declare-fun e!2705769 () Bool)

(assert (=> d!1283789 e!2705769))

(declare-fun res!1785925 () Bool)

(assert (=> d!1283789 (=> (not res!1785925) (not e!2705769))))

(assert (=> d!1283789 (= res!1785925 (forall!9057 (toList!2901 lm!1707) lambda!138747))))

(assert (=> d!1283789 (= (forallContained!1705 (toList!2901 lm!1707) lambda!138747 lt!1562574) lt!1562723)))

(declare-fun b!4348120 () Bool)

(assert (=> b!4348120 (= e!2705769 (contains!11008 (toList!2901 lm!1707) lt!1562574))))

(assert (= (and d!1283789 res!1785925) b!4348120))

(declare-fun b_lambda!130225 () Bool)

(assert (=> (not b_lambda!130225) (not d!1283789)))

(declare-fun m!4957301 () Bool)

(assert (=> d!1283789 m!4957301))

(declare-fun m!4957303 () Bool)

(assert (=> d!1283789 m!4957303))

(assert (=> d!1283789 m!4957021))

(assert (=> b!4348120 m!4957037))

(assert (=> b!4347894 d!1283789))

(declare-fun d!1283791 () Bool)

(assert (=> d!1283791 (contains!11008 (toList!2901 lm!1707) (tuple2!48209 hash!377 lt!1562576))))

(declare-fun lt!1562726 () Unit!70771)

(declare-fun choose!26704 (List!48974 (_ BitVec 64) List!48973) Unit!70771)

(assert (=> d!1283791 (= lt!1562726 (choose!26704 (toList!2901 lm!1707) hash!377 lt!1562576))))

(declare-fun e!2705772 () Bool)

(assert (=> d!1283791 e!2705772))

(declare-fun res!1785928 () Bool)

(assert (=> d!1283791 (=> (not res!1785928) (not e!2705772))))

(declare-fun isStrictlySorted!82 (List!48974) Bool)

(assert (=> d!1283791 (= res!1785928 (isStrictlySorted!82 (toList!2901 lm!1707)))))

(assert (=> d!1283791 (= (lemmaGetValueByKeyImpliesContainsTuple!306 (toList!2901 lm!1707) hash!377 lt!1562576) lt!1562726)))

(declare-fun b!4348123 () Bool)

(assert (=> b!4348123 (= e!2705772 (= (getValueByKey!410 (toList!2901 lm!1707) hash!377) (Some!10423 lt!1562576)))))

(assert (= (and d!1283791 res!1785928) b!4348123))

(declare-fun m!4957305 () Bool)

(assert (=> d!1283791 m!4957305))

(declare-fun m!4957307 () Bool)

(assert (=> d!1283791 m!4957307))

(declare-fun m!4957309 () Bool)

(assert (=> d!1283791 m!4957309))

(assert (=> b!4348123 m!4957285))

(assert (=> b!4347894 d!1283791))

(declare-fun d!1283793 () Bool)

(declare-fun hash!1454 (Hashable!4851 K!10215) (_ BitVec 64))

(assert (=> d!1283793 (= (hash!1450 hashF!1247 key!3918) (hash!1454 hashF!1247 key!3918))))

(declare-fun bs!628164 () Bool)

(assert (= bs!628164 d!1283793))

(declare-fun m!4957311 () Bool)

(assert (=> bs!628164 m!4957311))

(assert (=> b!4347895 d!1283793))

(declare-fun d!1283795 () Bool)

(declare-fun e!2705778 () Bool)

(assert (=> d!1283795 e!2705778))

(declare-fun res!1785931 () Bool)

(assert (=> d!1283795 (=> res!1785931 e!2705778)))

(declare-fun lt!1562736 () Bool)

(assert (=> d!1283795 (= res!1785931 (not lt!1562736))))

(declare-fun lt!1562735 () Bool)

(assert (=> d!1283795 (= lt!1562736 lt!1562735)))

(declare-fun lt!1562737 () Unit!70771)

(declare-fun e!2705777 () Unit!70771)

(assert (=> d!1283795 (= lt!1562737 e!2705777)))

(declare-fun c!739128 () Bool)

(assert (=> d!1283795 (= c!739128 lt!1562735)))

(declare-fun containsKey!622 (List!48974 (_ BitVec 64)) Bool)

(assert (=> d!1283795 (= lt!1562735 (containsKey!622 (toList!2901 lm!1707) hash!377))))

(assert (=> d!1283795 (= (contains!11010 lm!1707 hash!377) lt!1562736)))

(declare-fun b!4348130 () Bool)

(declare-fun lt!1562738 () Unit!70771)

(assert (=> b!4348130 (= e!2705777 lt!1562738)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!324 (List!48974 (_ BitVec 64)) Unit!70771)

(assert (=> b!4348130 (= lt!1562738 (lemmaContainsKeyImpliesGetValueByKeyDefined!324 (toList!2901 lm!1707) hash!377))))

(declare-fun isDefined!7721 (Option!10424) Bool)

(assert (=> b!4348130 (isDefined!7721 (getValueByKey!410 (toList!2901 lm!1707) hash!377))))

(declare-fun b!4348131 () Bool)

(declare-fun Unit!70782 () Unit!70771)

(assert (=> b!4348131 (= e!2705777 Unit!70782)))

(declare-fun b!4348132 () Bool)

(assert (=> b!4348132 (= e!2705778 (isDefined!7721 (getValueByKey!410 (toList!2901 lm!1707) hash!377)))))

(assert (= (and d!1283795 c!739128) b!4348130))

(assert (= (and d!1283795 (not c!739128)) b!4348131))

(assert (= (and d!1283795 (not res!1785931)) b!4348132))

(declare-fun m!4957313 () Bool)

(assert (=> d!1283795 m!4957313))

(declare-fun m!4957315 () Bool)

(assert (=> b!4348130 m!4957315))

(assert (=> b!4348130 m!4957285))

(assert (=> b!4348130 m!4957285))

(declare-fun m!4957317 () Bool)

(assert (=> b!4348130 m!4957317))

(assert (=> b!4348132 m!4957285))

(assert (=> b!4348132 m!4957285))

(assert (=> b!4348132 m!4957317))

(assert (=> b!4347906 d!1283795))

(declare-fun d!1283797 () Bool)

(declare-fun res!1785936 () Bool)

(declare-fun e!2705783 () Bool)

(assert (=> d!1283797 (=> res!1785936 e!2705783)))

(assert (=> d!1283797 (= res!1785936 (not ((_ is Cons!48849) newBucket!200)))))

(assert (=> d!1283797 (= (noDuplicateKeys!459 newBucket!200) e!2705783)))

(declare-fun b!4348137 () Bool)

(declare-fun e!2705784 () Bool)

(assert (=> b!4348137 (= e!2705783 e!2705784)))

(declare-fun res!1785937 () Bool)

(assert (=> b!4348137 (=> (not res!1785937) (not e!2705784))))

(assert (=> b!4348137 (= res!1785937 (not (containsKey!618 (t!355893 newBucket!200) (_1!27397 (h!54378 newBucket!200)))))))

(declare-fun b!4348138 () Bool)

(assert (=> b!4348138 (= e!2705784 (noDuplicateKeys!459 (t!355893 newBucket!200)))))

(assert (= (and d!1283797 (not res!1785936)) b!4348137))

(assert (= (and b!4348137 res!1785937) b!4348138))

(declare-fun m!4957319 () Bool)

(assert (=> b!4348137 m!4957319))

(declare-fun m!4957321 () Bool)

(assert (=> b!4348138 m!4957321))

(assert (=> b!4347903 d!1283797))

(declare-fun d!1283799 () Bool)

(declare-fun res!1785938 () Bool)

(declare-fun e!2705785 () Bool)

(assert (=> d!1283799 (=> res!1785938 e!2705785)))

(assert (=> d!1283799 (= res!1785938 (and ((_ is Cons!48849) (_2!27398 (h!54379 (toList!2901 lm!1707)))) (= (_1!27397 (h!54378 (_2!27398 (h!54379 (toList!2901 lm!1707))))) key!3918)))))

(assert (=> d!1283799 (= (containsKey!618 (_2!27398 (h!54379 (toList!2901 lm!1707))) key!3918) e!2705785)))

(declare-fun b!4348139 () Bool)

(declare-fun e!2705786 () Bool)

(assert (=> b!4348139 (= e!2705785 e!2705786)))

(declare-fun res!1785939 () Bool)

(assert (=> b!4348139 (=> (not res!1785939) (not e!2705786))))

(assert (=> b!4348139 (= res!1785939 ((_ is Cons!48849) (_2!27398 (h!54379 (toList!2901 lm!1707)))))))

(declare-fun b!4348140 () Bool)

(assert (=> b!4348140 (= e!2705786 (containsKey!618 (t!355893 (_2!27398 (h!54379 (toList!2901 lm!1707)))) key!3918))))

(assert (= (and d!1283799 (not res!1785938)) b!4348139))

(assert (= (and b!4348139 res!1785939) b!4348140))

(declare-fun m!4957323 () Bool)

(assert (=> b!4348140 m!4957323))

(assert (=> b!4347899 d!1283799))

(assert (=> start!419796 d!1283781))

(declare-fun d!1283801 () Bool)

(assert (=> d!1283801 (= (inv!64401 lm!1707) (isStrictlySorted!82 (toList!2901 lm!1707)))))

(declare-fun bs!628165 () Bool)

(assert (= bs!628165 d!1283801))

(assert (=> bs!628165 m!4957309))

(assert (=> start!419796 d!1283801))

(declare-fun d!1283803 () Bool)

(assert (=> d!1283803 true))

(assert (=> d!1283803 true))

(declare-fun lambda!138770 () Int)

(declare-fun forall!9059 (List!48973 Int) Bool)

(assert (=> d!1283803 (= (allKeysSameHash!417 newBucket!200 hash!377 hashF!1247) (forall!9059 newBucket!200 lambda!138770))))

(declare-fun bs!628166 () Bool)

(assert (= bs!628166 d!1283803))

(declare-fun m!4957325 () Bool)

(assert (=> bs!628166 m!4957325))

(assert (=> b!4347900 d!1283803))

(declare-fun bs!628167 () Bool)

(declare-fun d!1283805 () Bool)

(assert (= bs!628167 (and d!1283805 start!419796)))

(declare-fun lambda!138773 () Int)

(assert (=> bs!628167 (not (= lambda!138773 lambda!138747))))

(declare-fun bs!628168 () Bool)

(assert (= bs!628168 (and d!1283805 d!1283743)))

(assert (=> bs!628168 (not (= lambda!138773 lambda!138759))))

(declare-fun bs!628169 () Bool)

(assert (= bs!628169 (and d!1283805 d!1283755)))

(assert (=> bs!628169 (not (= lambda!138773 lambda!138766))))

(declare-fun bs!628170 () Bool)

(assert (= bs!628170 (and d!1283805 d!1283775)))

(assert (=> bs!628170 (not (= lambda!138773 lambda!138767))))

(assert (=> d!1283805 true))

(assert (=> d!1283805 (= (allKeysSameHashInMap!563 lm!1707 hashF!1247) (forall!9057 (toList!2901 lm!1707) lambda!138773))))

(declare-fun bs!628171 () Bool)

(assert (= bs!628171 d!1283805))

(declare-fun m!4957327 () Bool)

(assert (=> bs!628171 m!4957327))

(assert (=> b!4347901 d!1283805))

(declare-fun b!4348151 () Bool)

(declare-fun e!2705789 () Bool)

(declare-fun tp!1329720 () Bool)

(declare-fun tp!1329721 () Bool)

(assert (=> b!4348151 (= e!2705789 (and tp!1329720 tp!1329721))))

(assert (=> b!4347902 (= tp!1329706 e!2705789)))

(assert (= (and b!4347902 ((_ is Cons!48850) (toList!2901 lm!1707))) b!4348151))

(declare-fun tp!1329724 () Bool)

(declare-fun e!2705792 () Bool)

(declare-fun b!4348156 () Bool)

(assert (=> b!4348156 (= e!2705792 (and tp_is_empty!25073 tp_is_empty!25075 tp!1329724))))

(assert (=> b!4347905 (= tp!1329705 e!2705792)))

(assert (= (and b!4347905 ((_ is Cons!48849) (t!355893 newBucket!200))) b!4348156))

(declare-fun b_lambda!130227 () Bool)

(assert (= b_lambda!130223 (or start!419796 b_lambda!130227)))

(declare-fun bs!628172 () Bool)

(declare-fun d!1283807 () Bool)

(assert (= bs!628172 (and d!1283807 start!419796)))

(assert (=> bs!628172 (= (dynLambda!20601 lambda!138747 (h!54379 (toList!2901 lm!1707))) (noDuplicateKeys!459 (_2!27398 (h!54379 (toList!2901 lm!1707)))))))

(assert (=> bs!628172 m!4957093))

(assert (=> b!4348098 d!1283807))

(declare-fun b_lambda!130229 () Bool)

(assert (= b_lambda!130205 (or start!419796 b_lambda!130229)))

(declare-fun bs!628173 () Bool)

(declare-fun d!1283809 () Bool)

(assert (= bs!628173 (and d!1283809 start!419796)))

(assert (=> bs!628173 (= (dynLambda!20601 lambda!138747 (h!54379 (toList!2901 lt!1562573))) (noDuplicateKeys!459 (_2!27398 (h!54379 (toList!2901 lt!1562573)))))))

(declare-fun m!4957329 () Bool)

(assert (=> bs!628173 m!4957329))

(assert (=> b!4347924 d!1283809))

(declare-fun b_lambda!130231 () Bool)

(assert (= b_lambda!130225 (or start!419796 b_lambda!130231)))

(declare-fun bs!628174 () Bool)

(declare-fun d!1283811 () Bool)

(assert (= bs!628174 (and d!1283811 start!419796)))

(assert (=> bs!628174 (= (dynLambda!20601 lambda!138747 lt!1562574) (noDuplicateKeys!459 (_2!27398 lt!1562574)))))

(declare-fun m!4957331 () Bool)

(assert (=> bs!628174 m!4957331))

(assert (=> d!1283789 d!1283811))

(declare-fun b_lambda!130233 () Bool)

(assert (= b_lambda!130221 (or start!419796 b_lambda!130233)))

(declare-fun bs!628175 () Bool)

(declare-fun d!1283813 () Bool)

(assert (= bs!628175 (and d!1283813 start!419796)))

(assert (=> bs!628175 (= (dynLambda!20601 lambda!138747 (tuple2!48209 hash!377 newBucket!200)) (noDuplicateKeys!459 (_2!27398 (tuple2!48209 hash!377 newBucket!200))))))

(declare-fun m!4957333 () Bool)

(assert (=> bs!628175 m!4957333))

(assert (=> b!4348097 d!1283813))

(check-sat (not b!4348120) (not b!4348028) (not b!4348030) (not b!4348110) tp_is_empty!25073 (not d!1283743) (not d!1283793) (not b!4348083) (not b!4348117) (not b!4348140) (not d!1283803) (not b_lambda!130233) (not b!4348151) (not b!4348078) (not b!4348084) (not b!4348093) (not d!1283729) (not bm!302222) (not b!4348123) (not b!4348085) (not b!4348032) (not b!4348156) (not bs!628175) tp_is_empty!25075 (not d!1283787) (not d!1283775) (not b!4348099) (not b!4348082) (not b!4348075) (not b!4348029) (not d!1283805) (not b!4348034) (not bs!628172) (not b!4348080) (not d!1283711) (not b!4348033) (not d!1283785) (not bs!628173) (not b!4348035) (not bm!302224) (not b!4348137) (not bs!628174) (not b!4348092) (not b!4348138) (not b!4348132) (not d!1283801) (not b!4347948) (not d!1283777) (not d!1283791) (not d!1283789) (not b_lambda!130227) (not d!1283755) (not b!4347925) (not d!1283783) (not b!4348130) (not b!4348086) (not b_lambda!130229) (not b!4348079) (not d!1283773) (not d!1283771) (not d!1283779) (not d!1283795) (not d!1283719) (not b_lambda!130231))
(check-sat)
(get-model)

(declare-fun d!1283817 () Bool)

(declare-fun c!739137 () Bool)

(assert (=> d!1283817 (= c!739137 (and ((_ is Cons!48850) (toList!2901 lt!1562711)) (= (_1!27398 (h!54379 (toList!2901 lt!1562711))) (_1!27398 (tuple2!48209 hash!377 newBucket!200)))))))

(declare-fun e!2705807 () Option!10424)

(assert (=> d!1283817 (= (getValueByKey!410 (toList!2901 lt!1562711) (_1!27398 (tuple2!48209 hash!377 newBucket!200))) e!2705807)))

(declare-fun b!4348187 () Bool)

(declare-fun e!2705808 () Option!10424)

(assert (=> b!4348187 (= e!2705808 None!10423)))

(declare-fun b!4348185 () Bool)

(assert (=> b!4348185 (= e!2705807 e!2705808)))

(declare-fun c!739138 () Bool)

(assert (=> b!4348185 (= c!739138 (and ((_ is Cons!48850) (toList!2901 lt!1562711)) (not (= (_1!27398 (h!54379 (toList!2901 lt!1562711))) (_1!27398 (tuple2!48209 hash!377 newBucket!200))))))))

(declare-fun b!4348184 () Bool)

(assert (=> b!4348184 (= e!2705807 (Some!10423 (_2!27398 (h!54379 (toList!2901 lt!1562711)))))))

(declare-fun b!4348186 () Bool)

(assert (=> b!4348186 (= e!2705808 (getValueByKey!410 (t!355894 (toList!2901 lt!1562711)) (_1!27398 (tuple2!48209 hash!377 newBucket!200))))))

(assert (= (and d!1283817 c!739137) b!4348184))

(assert (= (and d!1283817 (not c!739137)) b!4348185))

(assert (= (and b!4348185 c!739138) b!4348186))

(assert (= (and b!4348185 (not c!739138)) b!4348187))

(declare-fun m!4957375 () Bool)

(assert (=> b!4348186 m!4957375))

(assert (=> b!4348092 d!1283817))

(declare-fun d!1283825 () Bool)

(assert (=> d!1283825 (= (isEmpty!28159 (toList!2901 lm!1707)) ((_ is Nil!48850) (toList!2901 lm!1707)))))

(assert (=> d!1283771 d!1283825))

(declare-fun d!1283827 () Bool)

(declare-fun res!1785949 () Bool)

(declare-fun e!2705809 () Bool)

(assert (=> d!1283827 (=> res!1785949 e!2705809)))

(assert (=> d!1283827 (= res!1785949 (not ((_ is Cons!48849) (_2!27398 (h!54379 (toList!2901 lt!1562573))))))))

(assert (=> d!1283827 (= (noDuplicateKeys!459 (_2!27398 (h!54379 (toList!2901 lt!1562573)))) e!2705809)))

(declare-fun b!4348188 () Bool)

(declare-fun e!2705810 () Bool)

(assert (=> b!4348188 (= e!2705809 e!2705810)))

(declare-fun res!1785950 () Bool)

(assert (=> b!4348188 (=> (not res!1785950) (not e!2705810))))

(assert (=> b!4348188 (= res!1785950 (not (containsKey!618 (t!355893 (_2!27398 (h!54379 (toList!2901 lt!1562573)))) (_1!27397 (h!54378 (_2!27398 (h!54379 (toList!2901 lt!1562573))))))))))

(declare-fun b!4348189 () Bool)

(assert (=> b!4348189 (= e!2705810 (noDuplicateKeys!459 (t!355893 (_2!27398 (h!54379 (toList!2901 lt!1562573))))))))

(assert (= (and d!1283827 (not res!1785949)) b!4348188))

(assert (= (and b!4348188 res!1785950) b!4348189))

(declare-fun m!4957377 () Bool)

(assert (=> b!4348188 m!4957377))

(declare-fun m!4957379 () Bool)

(assert (=> b!4348189 m!4957379))

(assert (=> bs!628173 d!1283827))

(declare-fun d!1283829 () Bool)

(declare-fun noDuplicatedKeys!108 (List!48973) Bool)

(assert (=> d!1283829 (= (invariantList!656 (toList!2902 lt!1562690)) (noDuplicatedKeys!108 (toList!2902 lt!1562690)))))

(declare-fun bs!628187 () Bool)

(assert (= bs!628187 d!1283829))

(declare-fun m!4957381 () Bool)

(assert (=> bs!628187 m!4957381))

(assert (=> d!1283755 d!1283829))

(declare-fun d!1283831 () Bool)

(declare-fun res!1785951 () Bool)

(declare-fun e!2705817 () Bool)

(assert (=> d!1283831 (=> res!1785951 e!2705817)))

(assert (=> d!1283831 (= res!1785951 ((_ is Nil!48850) (t!355894 (toList!2901 lm!1707))))))

(assert (=> d!1283831 (= (forall!9057 (t!355894 (toList!2901 lm!1707)) lambda!138766) e!2705817)))

(declare-fun b!4348202 () Bool)

(declare-fun e!2705818 () Bool)

(assert (=> b!4348202 (= e!2705817 e!2705818)))

(declare-fun res!1785952 () Bool)

(assert (=> b!4348202 (=> (not res!1785952) (not e!2705818))))

(assert (=> b!4348202 (= res!1785952 (dynLambda!20601 lambda!138766 (h!54379 (t!355894 (toList!2901 lm!1707)))))))

(declare-fun b!4348203 () Bool)

(assert (=> b!4348203 (= e!2705818 (forall!9057 (t!355894 (t!355894 (toList!2901 lm!1707))) lambda!138766))))

(assert (= (and d!1283831 (not res!1785951)) b!4348202))

(assert (= (and b!4348202 res!1785952) b!4348203))

(declare-fun b_lambda!130235 () Bool)

(assert (=> (not b_lambda!130235) (not b!4348202)))

(declare-fun m!4957385 () Bool)

(assert (=> b!4348202 m!4957385))

(declare-fun m!4957387 () Bool)

(assert (=> b!4348203 m!4957387))

(assert (=> d!1283755 d!1283831))

(declare-fun d!1283835 () Bool)

(declare-fun c!739147 () Bool)

(assert (=> d!1283835 (= c!739147 ((_ is Nil!48850) (toList!2901 lm!1707)))))

(declare-fun e!2705827 () (InoxSet tuple2!48208))

(assert (=> d!1283835 (= (content!7670 (toList!2901 lm!1707)) e!2705827)))

(declare-fun b!4348214 () Bool)

(assert (=> b!4348214 (= e!2705827 ((as const (Array tuple2!48208 Bool)) false))))

(declare-fun b!4348215 () Bool)

(assert (=> b!4348215 (= e!2705827 ((_ map or) (store ((as const (Array tuple2!48208 Bool)) false) (h!54379 (toList!2901 lm!1707)) true) (content!7670 (t!355894 (toList!2901 lm!1707)))))))

(assert (= (and d!1283835 c!739147) b!4348214))

(assert (= (and d!1283835 (not c!739147)) b!4348215))

(declare-fun m!4957395 () Bool)

(assert (=> b!4348215 m!4957395))

(declare-fun m!4957397 () Bool)

(assert (=> b!4348215 m!4957397))

(assert (=> d!1283787 d!1283835))

(declare-fun d!1283839 () Bool)

(declare-fun choose!26708 (Hashable!4851 K!10215) (_ BitVec 64))

(assert (=> d!1283839 (= (hash!1454 hashF!1247 key!3918) (choose!26708 hashF!1247 key!3918))))

(declare-fun bs!628188 () Bool)

(assert (= bs!628188 d!1283839))

(declare-fun m!4957399 () Bool)

(assert (=> bs!628188 m!4957399))

(assert (=> d!1283793 d!1283839))

(declare-fun d!1283841 () Bool)

(declare-fun lt!1562811 () Bool)

(declare-fun content!7672 (List!48976) (InoxSet K!10215))

(assert (=> d!1283841 (= lt!1562811 (select (content!7672 (keys!16476 lt!1562568)) key!3918))))

(declare-fun e!2705836 () Bool)

(assert (=> d!1283841 (= lt!1562811 e!2705836)))

(declare-fun res!1785973 () Bool)

(assert (=> d!1283841 (=> (not res!1785973) (not e!2705836))))

(assert (=> d!1283841 (= res!1785973 ((_ is Cons!48852) (keys!16476 lt!1562568)))))

(assert (=> d!1283841 (= (contains!11012 (keys!16476 lt!1562568) key!3918) lt!1562811)))

(declare-fun b!4348231 () Bool)

(declare-fun e!2705835 () Bool)

(assert (=> b!4348231 (= e!2705836 e!2705835)))

(declare-fun res!1785972 () Bool)

(assert (=> b!4348231 (=> res!1785972 e!2705835)))

(assert (=> b!4348231 (= res!1785972 (= (h!54383 (keys!16476 lt!1562568)) key!3918))))

(declare-fun b!4348232 () Bool)

(assert (=> b!4348232 (= e!2705835 (contains!11012 (t!355896 (keys!16476 lt!1562568)) key!3918))))

(assert (= (and d!1283841 res!1785973) b!4348231))

(assert (= (and b!4348231 (not res!1785972)) b!4348232))

(assert (=> d!1283841 m!4957145))

(declare-fun m!4957415 () Bool)

(assert (=> d!1283841 m!4957415))

(declare-fun m!4957417 () Bool)

(assert (=> d!1283841 m!4957417))

(declare-fun m!4957419 () Bool)

(assert (=> b!4348232 m!4957419))

(assert (=> b!4348028 d!1283841))

(declare-fun b!4348268 () Bool)

(assert (=> b!4348268 true))

(declare-fun d!1283845 () Bool)

(declare-fun e!2705857 () Bool)

(assert (=> d!1283845 e!2705857))

(declare-fun res!1785988 () Bool)

(assert (=> d!1283845 (=> (not res!1785988) (not e!2705857))))

(declare-fun lt!1562821 () List!48976)

(declare-fun noDuplicate!592 (List!48976) Bool)

(assert (=> d!1283845 (= res!1785988 (noDuplicate!592 lt!1562821))))

(assert (=> d!1283845 (= lt!1562821 (getKeysList!104 (toList!2902 lt!1562568)))))

(assert (=> d!1283845 (= (keys!16476 lt!1562568) lt!1562821)))

(declare-fun b!4348267 () Bool)

(declare-fun res!1785989 () Bool)

(assert (=> b!4348267 (=> (not res!1785989) (not e!2705857))))

(declare-fun length!40 (List!48976) Int)

(declare-fun length!41 (List!48973) Int)

(assert (=> b!4348267 (= res!1785989 (= (length!40 lt!1562821) (length!41 (toList!2902 lt!1562568))))))

(declare-fun res!1785990 () Bool)

(assert (=> b!4348268 (=> (not res!1785990) (not e!2705857))))

(declare-fun lambda!138817 () Int)

(declare-fun forall!9061 (List!48976 Int) Bool)

(assert (=> b!4348268 (= res!1785990 (forall!9061 lt!1562821 lambda!138817))))

(declare-fun b!4348269 () Bool)

(declare-fun lambda!138818 () Int)

(declare-fun map!10618 (List!48973 Int) List!48976)

(assert (=> b!4348269 (= e!2705857 (= (content!7672 lt!1562821) (content!7672 (map!10618 (toList!2902 lt!1562568) lambda!138818))))))

(assert (= (and d!1283845 res!1785988) b!4348267))

(assert (= (and b!4348267 res!1785989) b!4348268))

(assert (= (and b!4348268 res!1785990) b!4348269))

(declare-fun m!4957449 () Bool)

(assert (=> d!1283845 m!4957449))

(assert (=> d!1283845 m!4957157))

(declare-fun m!4957451 () Bool)

(assert (=> b!4348267 m!4957451))

(declare-fun m!4957453 () Bool)

(assert (=> b!4348267 m!4957453))

(declare-fun m!4957455 () Bool)

(assert (=> b!4348268 m!4957455))

(declare-fun m!4957457 () Bool)

(assert (=> b!4348269 m!4957457))

(declare-fun m!4957459 () Bool)

(assert (=> b!4348269 m!4957459))

(assert (=> b!4348269 m!4957459))

(declare-fun m!4957463 () Bool)

(assert (=> b!4348269 m!4957463))

(assert (=> b!4348028 d!1283845))

(declare-fun d!1283867 () Bool)

(declare-fun res!1785993 () Bool)

(declare-fun e!2705860 () Bool)

(assert (=> d!1283867 (=> res!1785993 e!2705860)))

(assert (=> d!1283867 (= res!1785993 (and ((_ is Cons!48849) lt!1562717) (= (_1!27397 (h!54378 lt!1562717)) key!3918)))))

(assert (=> d!1283867 (= (containsKey!618 lt!1562717 key!3918) e!2705860)))

(declare-fun b!4348274 () Bool)

(declare-fun e!2705862 () Bool)

(assert (=> b!4348274 (= e!2705860 e!2705862)))

(declare-fun res!1785994 () Bool)

(assert (=> b!4348274 (=> (not res!1785994) (not e!2705862))))

(assert (=> b!4348274 (= res!1785994 ((_ is Cons!48849) lt!1562717))))

(declare-fun b!4348276 () Bool)

(assert (=> b!4348276 (= e!2705862 (containsKey!618 (t!355893 lt!1562717) key!3918))))

(assert (= (and d!1283867 (not res!1785993)) b!4348274))

(assert (= (and b!4348274 res!1785994) b!4348276))

(declare-fun m!4957467 () Bool)

(assert (=> b!4348276 m!4957467))

(assert (=> d!1283785 d!1283867))

(declare-fun d!1283873 () Bool)

(declare-fun res!1785997 () Bool)

(declare-fun e!2705866 () Bool)

(assert (=> d!1283873 (=> res!1785997 e!2705866)))

(assert (=> d!1283873 (= res!1785997 (not ((_ is Cons!48849) lt!1562576)))))

(assert (=> d!1283873 (= (noDuplicateKeys!459 lt!1562576) e!2705866)))

(declare-fun b!4348282 () Bool)

(declare-fun e!2705867 () Bool)

(assert (=> b!4348282 (= e!2705866 e!2705867)))

(declare-fun res!1785998 () Bool)

(assert (=> b!4348282 (=> (not res!1785998) (not e!2705867))))

(assert (=> b!4348282 (= res!1785998 (not (containsKey!618 (t!355893 lt!1562576) (_1!27397 (h!54378 lt!1562576)))))))

(declare-fun b!4348283 () Bool)

(assert (=> b!4348283 (= e!2705867 (noDuplicateKeys!459 (t!355893 lt!1562576)))))

(assert (= (and d!1283873 (not res!1785997)) b!4348282))

(assert (= (and b!4348282 res!1785998) b!4348283))

(declare-fun m!4957473 () Bool)

(assert (=> b!4348282 m!4957473))

(declare-fun m!4957475 () Bool)

(assert (=> b!4348283 m!4957475))

(assert (=> d!1283785 d!1283873))

(declare-fun bs!628263 () Bool)

(declare-fun b!4348461 () Bool)

(assert (= bs!628263 (and b!4348461 d!1283803)))

(declare-fun lambda!138869 () Int)

(assert (=> bs!628263 (not (= lambda!138869 lambda!138770))))

(assert (=> b!4348461 true))

(declare-fun bs!628264 () Bool)

(declare-fun b!4348464 () Bool)

(assert (= bs!628264 (and b!4348464 d!1283803)))

(declare-fun lambda!138870 () Int)

(assert (=> bs!628264 (not (= lambda!138870 lambda!138770))))

(declare-fun bs!628265 () Bool)

(assert (= bs!628265 (and b!4348464 b!4348461)))

(assert (=> bs!628265 (= lambda!138870 lambda!138869)))

(assert (=> b!4348464 true))

(declare-fun lambda!138871 () Int)

(assert (=> bs!628264 (not (= lambda!138871 lambda!138770))))

(declare-fun lt!1562951 () ListMap!2145)

(assert (=> bs!628265 (= (= lt!1562951 (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))) (= lambda!138871 lambda!138869))))

(assert (=> b!4348464 (= (= lt!1562951 (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))) (= lambda!138871 lambda!138870))))

(assert (=> b!4348464 true))

(declare-fun bs!628266 () Bool)

(declare-fun d!1283877 () Bool)

(assert (= bs!628266 (and d!1283877 d!1283803)))

(declare-fun lambda!138872 () Int)

(assert (=> bs!628266 (not (= lambda!138872 lambda!138770))))

(declare-fun bs!628267 () Bool)

(assert (= bs!628267 (and d!1283877 b!4348461)))

(declare-fun lt!1562939 () ListMap!2145)

(assert (=> bs!628267 (= (= lt!1562939 (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))) (= lambda!138872 lambda!138869))))

(declare-fun bs!628268 () Bool)

(assert (= bs!628268 (and d!1283877 b!4348464)))

(assert (=> bs!628268 (= (= lt!1562939 (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))) (= lambda!138872 lambda!138870))))

(assert (=> bs!628268 (= (= lt!1562939 lt!1562951) (= lambda!138872 lambda!138871))))

(assert (=> d!1283877 true))

(declare-fun e!2705988 () Bool)

(assert (=> d!1283877 e!2705988))

(declare-fun res!1786100 () Bool)

(assert (=> d!1283877 (=> (not res!1786100) (not e!2705988))))

(assert (=> d!1283877 (= res!1786100 (forall!9059 (_2!27398 (h!54379 (t!355894 (toList!2901 lm!1707)))) lambda!138872))))

(declare-fun e!2705987 () ListMap!2145)

(assert (=> d!1283877 (= lt!1562939 e!2705987)))

(declare-fun c!739195 () Bool)

(assert (=> d!1283877 (= c!739195 ((_ is Nil!48849) (_2!27398 (h!54379 (t!355894 (toList!2901 lm!1707))))))))

(assert (=> d!1283877 (noDuplicateKeys!459 (_2!27398 (h!54379 (t!355894 (toList!2901 lm!1707)))))))

(assert (=> d!1283877 (= (addToMapMapFromBucket!163 (_2!27398 (h!54379 (t!355894 (toList!2901 lm!1707)))) (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))) lt!1562939)))

(declare-fun b!4348460 () Bool)

(declare-fun res!1786101 () Bool)

(assert (=> b!4348460 (=> (not res!1786101) (not e!2705988))))

(assert (=> b!4348460 (= res!1786101 (forall!9059 (toList!2902 (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))) lambda!138872))))

(assert (=> b!4348461 (= e!2705987 (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707)))))))

(declare-fun lt!1562956 () Unit!70771)

(declare-fun call!302257 () Unit!70771)

(assert (=> b!4348461 (= lt!1562956 call!302257)))

(declare-fun call!302258 () Bool)

(assert (=> b!4348461 call!302258))

(declare-fun lt!1562943 () Unit!70771)

(assert (=> b!4348461 (= lt!1562943 lt!1562956)))

(declare-fun call!302259 () Bool)

(assert (=> b!4348461 call!302259))

(declare-fun lt!1562950 () Unit!70771)

(declare-fun Unit!70798 () Unit!70771)

(assert (=> b!4348461 (= lt!1562950 Unit!70798)))

(declare-fun bm!302252 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!47 (ListMap!2145) Unit!70771)

(assert (=> bm!302252 (= call!302257 (lemmaContainsAllItsOwnKeys!47 (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))))))

(declare-fun b!4348462 () Bool)

(declare-fun e!2705989 () Bool)

(assert (=> b!4348462 (= e!2705989 call!302258)))

(declare-fun b!4348463 () Bool)

(assert (=> b!4348463 (= e!2705988 (invariantList!656 (toList!2902 lt!1562939)))))

(declare-fun bm!302253 () Bool)

(assert (=> bm!302253 (= call!302258 (forall!9059 (toList!2902 (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))) (ite c!739195 lambda!138869 lambda!138871)))))

(assert (=> b!4348464 (= e!2705987 lt!1562951)))

(declare-fun lt!1562945 () ListMap!2145)

(declare-fun +!582 (ListMap!2145 tuple2!48206) ListMap!2145)

(assert (=> b!4348464 (= lt!1562945 (+!582 (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707)))) (h!54378 (_2!27398 (h!54379 (t!355894 (toList!2901 lm!1707)))))))))

(assert (=> b!4348464 (= lt!1562951 (addToMapMapFromBucket!163 (t!355893 (_2!27398 (h!54379 (t!355894 (toList!2901 lm!1707))))) (+!582 (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707)))) (h!54378 (_2!27398 (h!54379 (t!355894 (toList!2901 lm!1707))))))))))

(declare-fun lt!1562940 () Unit!70771)

(assert (=> b!4348464 (= lt!1562940 call!302257)))

(assert (=> b!4348464 (forall!9059 (toList!2902 (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))) lambda!138870)))

(declare-fun lt!1562952 () Unit!70771)

(assert (=> b!4348464 (= lt!1562952 lt!1562940)))

(assert (=> b!4348464 (forall!9059 (toList!2902 lt!1562945) lambda!138871)))

(declare-fun lt!1562942 () Unit!70771)

(declare-fun Unit!70799 () Unit!70771)

(assert (=> b!4348464 (= lt!1562942 Unit!70799)))

(assert (=> b!4348464 (forall!9059 (t!355893 (_2!27398 (h!54379 (t!355894 (toList!2901 lm!1707))))) lambda!138871)))

(declare-fun lt!1562949 () Unit!70771)

(declare-fun Unit!70800 () Unit!70771)

(assert (=> b!4348464 (= lt!1562949 Unit!70800)))

(declare-fun lt!1562957 () Unit!70771)

(declare-fun Unit!70801 () Unit!70771)

(assert (=> b!4348464 (= lt!1562957 Unit!70801)))

(declare-fun lt!1562954 () Unit!70771)

(declare-fun forallContained!1708 (List!48973 Int tuple2!48206) Unit!70771)

(assert (=> b!4348464 (= lt!1562954 (forallContained!1708 (toList!2902 lt!1562945) lambda!138871 (h!54378 (_2!27398 (h!54379 (t!355894 (toList!2901 lm!1707)))))))))

(assert (=> b!4348464 (contains!11009 lt!1562945 (_1!27397 (h!54378 (_2!27398 (h!54379 (t!355894 (toList!2901 lm!1707)))))))))

(declare-fun lt!1562953 () Unit!70771)

(declare-fun Unit!70802 () Unit!70771)

(assert (=> b!4348464 (= lt!1562953 Unit!70802)))

(assert (=> b!4348464 (contains!11009 lt!1562951 (_1!27397 (h!54378 (_2!27398 (h!54379 (t!355894 (toList!2901 lm!1707)))))))))

(declare-fun lt!1562947 () Unit!70771)

(declare-fun Unit!70805 () Unit!70771)

(assert (=> b!4348464 (= lt!1562947 Unit!70805)))

(assert (=> b!4348464 (forall!9059 (_2!27398 (h!54379 (t!355894 (toList!2901 lm!1707)))) lambda!138871)))

(declare-fun lt!1562941 () Unit!70771)

(declare-fun Unit!70806 () Unit!70771)

(assert (=> b!4348464 (= lt!1562941 Unit!70806)))

(assert (=> b!4348464 call!302259))

(declare-fun lt!1562946 () Unit!70771)

(declare-fun Unit!70808 () Unit!70771)

(assert (=> b!4348464 (= lt!1562946 Unit!70808)))

(declare-fun lt!1562958 () Unit!70771)

(declare-fun Unit!70809 () Unit!70771)

(assert (=> b!4348464 (= lt!1562958 Unit!70809)))

(declare-fun lt!1562948 () Unit!70771)

(declare-fun addForallContainsKeyThenBeforeAdding!47 (ListMap!2145 ListMap!2145 K!10215 V!10461) Unit!70771)

(assert (=> b!4348464 (= lt!1562948 (addForallContainsKeyThenBeforeAdding!47 (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707)))) lt!1562951 (_1!27397 (h!54378 (_2!27398 (h!54379 (t!355894 (toList!2901 lm!1707)))))) (_2!27397 (h!54378 (_2!27398 (h!54379 (t!355894 (toList!2901 lm!1707))))))))))

(assert (=> b!4348464 (forall!9059 (toList!2902 (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))) lambda!138871)))

(declare-fun lt!1562955 () Unit!70771)

(assert (=> b!4348464 (= lt!1562955 lt!1562948)))

(assert (=> b!4348464 (forall!9059 (toList!2902 (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))) lambda!138871)))

(declare-fun lt!1562944 () Unit!70771)

(declare-fun Unit!70810 () Unit!70771)

(assert (=> b!4348464 (= lt!1562944 Unit!70810)))

(declare-fun res!1786099 () Bool)

(assert (=> b!4348464 (= res!1786099 (forall!9059 (_2!27398 (h!54379 (t!355894 (toList!2901 lm!1707)))) lambda!138871))))

(assert (=> b!4348464 (=> (not res!1786099) (not e!2705989))))

(assert (=> b!4348464 e!2705989))

(declare-fun lt!1562959 () Unit!70771)

(declare-fun Unit!70811 () Unit!70771)

(assert (=> b!4348464 (= lt!1562959 Unit!70811)))

(declare-fun bm!302254 () Bool)

(assert (=> bm!302254 (= call!302259 (forall!9059 (ite c!739195 (toList!2902 (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))) (toList!2902 lt!1562945)) (ite c!739195 lambda!138869 lambda!138871)))))

(assert (= (and d!1283877 c!739195) b!4348461))

(assert (= (and d!1283877 (not c!739195)) b!4348464))

(assert (= (and b!4348464 res!1786099) b!4348462))

(assert (= (or b!4348461 b!4348464) bm!302252))

(assert (= (or b!4348461 b!4348464) bm!302254))

(assert (= (or b!4348461 b!4348462) bm!302253))

(assert (= (and d!1283877 res!1786100) b!4348460))

(assert (= (and b!4348460 res!1786101) b!4348463))

(declare-fun m!4957721 () Bool)

(assert (=> b!4348463 m!4957721))

(declare-fun m!4957723 () Bool)

(assert (=> bm!302254 m!4957723))

(declare-fun m!4957725 () Bool)

(assert (=> b!4348460 m!4957725))

(assert (=> bm!302252 m!4957231))

(declare-fun m!4957727 () Bool)

(assert (=> bm!302252 m!4957727))

(declare-fun m!4957729 () Bool)

(assert (=> bm!302253 m!4957729))

(declare-fun m!4957731 () Bool)

(assert (=> d!1283877 m!4957731))

(declare-fun m!4957733 () Bool)

(assert (=> d!1283877 m!4957733))

(declare-fun m!4957735 () Bool)

(assert (=> b!4348464 m!4957735))

(assert (=> b!4348464 m!4957231))

(declare-fun m!4957737 () Bool)

(assert (=> b!4348464 m!4957737))

(declare-fun m!4957739 () Bool)

(assert (=> b!4348464 m!4957739))

(declare-fun m!4957741 () Bool)

(assert (=> b!4348464 m!4957741))

(declare-fun m!4957743 () Bool)

(assert (=> b!4348464 m!4957743))

(declare-fun m!4957745 () Bool)

(assert (=> b!4348464 m!4957745))

(declare-fun m!4957747 () Bool)

(assert (=> b!4348464 m!4957747))

(assert (=> b!4348464 m!4957741))

(declare-fun m!4957749 () Bool)

(assert (=> b!4348464 m!4957749))

(declare-fun m!4957751 () Bool)

(assert (=> b!4348464 m!4957751))

(assert (=> b!4348464 m!4957231))

(declare-fun m!4957753 () Bool)

(assert (=> b!4348464 m!4957753))

(assert (=> b!4348464 m!4957739))

(assert (=> b!4348464 m!4957753))

(declare-fun m!4957755 () Bool)

(assert (=> b!4348464 m!4957755))

(assert (=> b!4348075 d!1283877))

(declare-fun bs!628269 () Bool)

(declare-fun d!1283991 () Bool)

(assert (= bs!628269 (and d!1283991 start!419796)))

(declare-fun lambda!138873 () Int)

(assert (=> bs!628269 (= lambda!138873 lambda!138747)))

(declare-fun bs!628270 () Bool)

(assert (= bs!628270 (and d!1283991 d!1283755)))

(assert (=> bs!628270 (= lambda!138873 lambda!138766)))

(declare-fun bs!628271 () Bool)

(assert (= bs!628271 (and d!1283991 d!1283805)))

(assert (=> bs!628271 (not (= lambda!138873 lambda!138773))))

(declare-fun bs!628272 () Bool)

(assert (= bs!628272 (and d!1283991 d!1283743)))

(assert (=> bs!628272 (= lambda!138873 lambda!138759)))

(declare-fun bs!628273 () Bool)

(assert (= bs!628273 (and d!1283991 d!1283775)))

(assert (=> bs!628273 (= lambda!138873 lambda!138767)))

(declare-fun lt!1562960 () ListMap!2145)

(assert (=> d!1283991 (invariantList!656 (toList!2902 lt!1562960))))

(declare-fun e!2705990 () ListMap!2145)

(assert (=> d!1283991 (= lt!1562960 e!2705990)))

(declare-fun c!739196 () Bool)

(assert (=> d!1283991 (= c!739196 ((_ is Cons!48850) (t!355894 (t!355894 (toList!2901 lm!1707)))))))

(assert (=> d!1283991 (forall!9057 (t!355894 (t!355894 (toList!2901 lm!1707))) lambda!138873)))

(assert (=> d!1283991 (= (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707)))) lt!1562960)))

(declare-fun b!4348467 () Bool)

(assert (=> b!4348467 (= e!2705990 (addToMapMapFromBucket!163 (_2!27398 (h!54379 (t!355894 (t!355894 (toList!2901 lm!1707))))) (extractMap!518 (t!355894 (t!355894 (t!355894 (toList!2901 lm!1707)))))))))

(declare-fun b!4348468 () Bool)

(assert (=> b!4348468 (= e!2705990 (ListMap!2146 Nil!48849))))

(assert (= (and d!1283991 c!739196) b!4348467))

(assert (= (and d!1283991 (not c!739196)) b!4348468))

(declare-fun m!4957757 () Bool)

(assert (=> d!1283991 m!4957757))

(declare-fun m!4957759 () Bool)

(assert (=> d!1283991 m!4957759))

(declare-fun m!4957761 () Bool)

(assert (=> b!4348467 m!4957761))

(assert (=> b!4348467 m!4957761))

(declare-fun m!4957763 () Bool)

(assert (=> b!4348467 m!4957763))

(assert (=> b!4348075 d!1283991))

(declare-fun d!1283993 () Bool)

(declare-fun res!1786106 () Bool)

(declare-fun e!2705995 () Bool)

(assert (=> d!1283993 (=> res!1786106 e!2705995)))

(assert (=> d!1283993 (= res!1786106 (and ((_ is Cons!48849) (toList!2902 lt!1562568)) (= (_1!27397 (h!54378 (toList!2902 lt!1562568))) key!3918)))))

(assert (=> d!1283993 (= (containsKey!621 (toList!2902 lt!1562568) key!3918) e!2705995)))

(declare-fun b!4348473 () Bool)

(declare-fun e!2705996 () Bool)

(assert (=> b!4348473 (= e!2705995 e!2705996)))

(declare-fun res!1786107 () Bool)

(assert (=> b!4348473 (=> (not res!1786107) (not e!2705996))))

(assert (=> b!4348473 (= res!1786107 ((_ is Cons!48849) (toList!2902 lt!1562568)))))

(declare-fun b!4348474 () Bool)

(assert (=> b!4348474 (= e!2705996 (containsKey!621 (t!355893 (toList!2902 lt!1562568)) key!3918))))

(assert (= (and d!1283993 (not res!1786106)) b!4348473))

(assert (= (and b!4348473 res!1786107) b!4348474))

(declare-fun m!4957765 () Bool)

(assert (=> b!4348474 m!4957765))

(assert (=> d!1283729 d!1283993))

(declare-fun d!1283995 () Bool)

(declare-fun isEmpty!28161 (Option!10424) Bool)

(assert (=> d!1283995 (= (isDefined!7721 (getValueByKey!410 (toList!2901 lm!1707) hash!377)) (not (isEmpty!28161 (getValueByKey!410 (toList!2901 lm!1707) hash!377))))))

(declare-fun bs!628274 () Bool)

(assert (= bs!628274 d!1283995))

(assert (=> bs!628274 m!4957285))

(declare-fun m!4957767 () Bool)

(assert (=> bs!628274 m!4957767))

(assert (=> b!4348132 d!1283995))

(declare-fun d!1283997 () Bool)

(declare-fun c!739197 () Bool)

(assert (=> d!1283997 (= c!739197 (and ((_ is Cons!48850) (toList!2901 lm!1707)) (= (_1!27398 (h!54379 (toList!2901 lm!1707))) hash!377)))))

(declare-fun e!2705997 () Option!10424)

(assert (=> d!1283997 (= (getValueByKey!410 (toList!2901 lm!1707) hash!377) e!2705997)))

(declare-fun b!4348478 () Bool)

(declare-fun e!2705998 () Option!10424)

(assert (=> b!4348478 (= e!2705998 None!10423)))

(declare-fun b!4348476 () Bool)

(assert (=> b!4348476 (= e!2705997 e!2705998)))

(declare-fun c!739198 () Bool)

(assert (=> b!4348476 (= c!739198 (and ((_ is Cons!48850) (toList!2901 lm!1707)) (not (= (_1!27398 (h!54379 (toList!2901 lm!1707))) hash!377))))))

(declare-fun b!4348475 () Bool)

(assert (=> b!4348475 (= e!2705997 (Some!10423 (_2!27398 (h!54379 (toList!2901 lm!1707)))))))

(declare-fun b!4348477 () Bool)

(assert (=> b!4348477 (= e!2705998 (getValueByKey!410 (t!355894 (toList!2901 lm!1707)) hash!377))))

(assert (= (and d!1283997 c!739197) b!4348475))

(assert (= (and d!1283997 (not c!739197)) b!4348476))

(assert (= (and b!4348476 c!739198) b!4348477))

(assert (= (and b!4348476 (not c!739198)) b!4348478))

(declare-fun m!4957769 () Bool)

(assert (=> b!4348477 m!4957769))

(assert (=> b!4348132 d!1283997))

(assert (=> b!4348032 d!1283993))

(declare-fun d!1283999 () Bool)

(assert (=> d!1283999 (containsKey!621 (toList!2902 lt!1562568) key!3918)))

(declare-fun lt!1562963 () Unit!70771)

(declare-fun choose!26709 (List!48973 K!10215) Unit!70771)

(assert (=> d!1283999 (= lt!1562963 (choose!26709 (toList!2902 lt!1562568) key!3918))))

(assert (=> d!1283999 (invariantList!656 (toList!2902 lt!1562568))))

(assert (=> d!1283999 (= (lemmaInGetKeysListThenContainsKey!102 (toList!2902 lt!1562568) key!3918) lt!1562963)))

(declare-fun bs!628275 () Bool)

(assert (= bs!628275 d!1283999))

(assert (=> bs!628275 m!4957149))

(declare-fun m!4957771 () Bool)

(assert (=> bs!628275 m!4957771))

(declare-fun m!4957773 () Bool)

(assert (=> bs!628275 m!4957773))

(assert (=> b!4348032 d!1283999))

(declare-fun d!1284001 () Bool)

(declare-fun res!1786108 () Bool)

(declare-fun e!2705999 () Bool)

(assert (=> d!1284001 (=> res!1786108 e!2705999)))

(assert (=> d!1284001 (= res!1786108 (not ((_ is Cons!48849) (_2!27398 (tuple2!48209 hash!377 newBucket!200)))))))

(assert (=> d!1284001 (= (noDuplicateKeys!459 (_2!27398 (tuple2!48209 hash!377 newBucket!200))) e!2705999)))

(declare-fun b!4348479 () Bool)

(declare-fun e!2706000 () Bool)

(assert (=> b!4348479 (= e!2705999 e!2706000)))

(declare-fun res!1786109 () Bool)

(assert (=> b!4348479 (=> (not res!1786109) (not e!2706000))))

(assert (=> b!4348479 (= res!1786109 (not (containsKey!618 (t!355893 (_2!27398 (tuple2!48209 hash!377 newBucket!200))) (_1!27397 (h!54378 (_2!27398 (tuple2!48209 hash!377 newBucket!200)))))))))

(declare-fun b!4348480 () Bool)

(assert (=> b!4348480 (= e!2706000 (noDuplicateKeys!459 (t!355893 (_2!27398 (tuple2!48209 hash!377 newBucket!200)))))))

(assert (= (and d!1284001 (not res!1786108)) b!4348479))

(assert (= (and b!4348479 res!1786109) b!4348480))

(declare-fun m!4957775 () Bool)

(assert (=> b!4348479 m!4957775))

(declare-fun m!4957777 () Bool)

(assert (=> b!4348480 m!4957777))

(assert (=> bs!628175 d!1284001))

(declare-fun d!1284003 () Bool)

(declare-fun res!1786110 () Bool)

(declare-fun e!2706001 () Bool)

(assert (=> d!1284003 (=> res!1786110 e!2706001)))

(assert (=> d!1284003 (= res!1786110 ((_ is Nil!48850) (t!355894 (toList!2901 lm!1707))))))

(assert (=> d!1284003 (= (forall!9057 (t!355894 (toList!2901 lm!1707)) lambda!138747) e!2706001)))

(declare-fun b!4348481 () Bool)

(declare-fun e!2706002 () Bool)

(assert (=> b!4348481 (= e!2706001 e!2706002)))

(declare-fun res!1786111 () Bool)

(assert (=> b!4348481 (=> (not res!1786111) (not e!2706002))))

(assert (=> b!4348481 (= res!1786111 (dynLambda!20601 lambda!138747 (h!54379 (t!355894 (toList!2901 lm!1707)))))))

(declare-fun b!4348482 () Bool)

(assert (=> b!4348482 (= e!2706002 (forall!9057 (t!355894 (t!355894 (toList!2901 lm!1707))) lambda!138747))))

(assert (= (and d!1284003 (not res!1786110)) b!4348481))

(assert (= (and b!4348481 res!1786111) b!4348482))

(declare-fun b_lambda!130273 () Bool)

(assert (=> (not b_lambda!130273) (not b!4348481)))

(declare-fun m!4957779 () Bool)

(assert (=> b!4348481 m!4957779))

(declare-fun m!4957781 () Bool)

(assert (=> b!4348482 m!4957781))

(assert (=> b!4348099 d!1284003))

(declare-fun d!1284005 () Bool)

(assert (=> d!1284005 (isDefined!7721 (getValueByKey!410 (toList!2901 lm!1707) hash!377))))

(declare-fun lt!1562966 () Unit!70771)

(declare-fun choose!26711 (List!48974 (_ BitVec 64)) Unit!70771)

(assert (=> d!1284005 (= lt!1562966 (choose!26711 (toList!2901 lm!1707) hash!377))))

(declare-fun e!2706005 () Bool)

(assert (=> d!1284005 e!2706005))

(declare-fun res!1786114 () Bool)

(assert (=> d!1284005 (=> (not res!1786114) (not e!2706005))))

(assert (=> d!1284005 (= res!1786114 (isStrictlySorted!82 (toList!2901 lm!1707)))))

(assert (=> d!1284005 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!324 (toList!2901 lm!1707) hash!377) lt!1562966)))

(declare-fun b!4348485 () Bool)

(assert (=> b!4348485 (= e!2706005 (containsKey!622 (toList!2901 lm!1707) hash!377))))

(assert (= (and d!1284005 res!1786114) b!4348485))

(assert (=> d!1284005 m!4957285))

(assert (=> d!1284005 m!4957285))

(assert (=> d!1284005 m!4957317))

(declare-fun m!4957783 () Bool)

(assert (=> d!1284005 m!4957783))

(assert (=> d!1284005 m!4957309))

(assert (=> b!4348485 m!4957313))

(assert (=> b!4348130 d!1284005))

(assert (=> b!4348130 d!1283995))

(assert (=> b!4348130 d!1283997))

(declare-fun b!4348488 () Bool)

(declare-fun e!2706007 () List!48973)

(assert (=> b!4348488 (= e!2706007 (Cons!48849 (h!54378 (t!355893 lt!1562576)) (removePairForKey!429 (t!355893 (t!355893 lt!1562576)) key!3918)))))

(declare-fun d!1284007 () Bool)

(declare-fun lt!1562967 () List!48973)

(assert (=> d!1284007 (not (containsKey!618 lt!1562967 key!3918))))

(declare-fun e!2706006 () List!48973)

(assert (=> d!1284007 (= lt!1562967 e!2706006)))

(declare-fun c!739199 () Bool)

(assert (=> d!1284007 (= c!739199 (and ((_ is Cons!48849) (t!355893 lt!1562576)) (= (_1!27397 (h!54378 (t!355893 lt!1562576))) key!3918)))))

(assert (=> d!1284007 (noDuplicateKeys!459 (t!355893 lt!1562576))))

(assert (=> d!1284007 (= (removePairForKey!429 (t!355893 lt!1562576) key!3918) lt!1562967)))

(declare-fun b!4348486 () Bool)

(assert (=> b!4348486 (= e!2706006 (t!355893 (t!355893 lt!1562576)))))

(declare-fun b!4348487 () Bool)

(assert (=> b!4348487 (= e!2706006 e!2706007)))

(declare-fun c!739200 () Bool)

(assert (=> b!4348487 (= c!739200 ((_ is Cons!48849) (t!355893 lt!1562576)))))

(declare-fun b!4348489 () Bool)

(assert (=> b!4348489 (= e!2706007 Nil!48849)))

(assert (= (and d!1284007 c!739199) b!4348486))

(assert (= (and d!1284007 (not c!739199)) b!4348487))

(assert (= (and b!4348487 c!739200) b!4348488))

(assert (= (and b!4348487 (not c!739200)) b!4348489))

(declare-fun m!4957785 () Bool)

(assert (=> b!4348488 m!4957785))

(declare-fun m!4957787 () Bool)

(assert (=> d!1284007 m!4957787))

(assert (=> d!1284007 m!4957475))

(assert (=> b!4348110 d!1284007))

(assert (=> b!4348030 d!1283845))

(declare-fun d!1284009 () Bool)

(declare-fun isEmpty!28162 (Option!10425) Bool)

(assert (=> d!1284009 (= (isDefined!7720 (getValueByKey!411 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) key!3918)) (not (isEmpty!28162 (getValueByKey!411 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) key!3918))))))

(declare-fun bs!628276 () Bool)

(assert (= bs!628276 d!1284009))

(assert (=> bs!628276 m!4957245))

(declare-fun m!4957789 () Bool)

(assert (=> bs!628276 m!4957789))

(assert (=> b!4348079 d!1284009))

(declare-fun b!4348501 () Bool)

(declare-fun e!2706013 () Option!10425)

(assert (=> b!4348501 (= e!2706013 None!10424)))

(declare-fun b!4348498 () Bool)

(declare-fun e!2706012 () Option!10425)

(assert (=> b!4348498 (= e!2706012 (Some!10424 (_2!27397 (h!54378 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))))))))

(declare-fun d!1284011 () Bool)

(declare-fun c!739205 () Bool)

(assert (=> d!1284011 (= c!739205 (and ((_ is Cons!48849) (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) (= (_1!27397 (h!54378 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))) key!3918)))))

(assert (=> d!1284011 (= (getValueByKey!411 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) key!3918) e!2706012)))

(declare-fun b!4348499 () Bool)

(assert (=> b!4348499 (= e!2706012 e!2706013)))

(declare-fun c!739206 () Bool)

(assert (=> b!4348499 (= c!739206 (and ((_ is Cons!48849) (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) (not (= (_1!27397 (h!54378 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))) key!3918))))))

(declare-fun b!4348500 () Bool)

(assert (=> b!4348500 (= e!2706013 (getValueByKey!411 (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) key!3918))))

(assert (= (and d!1284011 c!739205) b!4348498))

(assert (= (and d!1284011 (not c!739205)) b!4348499))

(assert (= (and b!4348499 c!739206) b!4348500))

(assert (= (and b!4348499 (not c!739206)) b!4348501))

(declare-fun m!4957791 () Bool)

(assert (=> b!4348500 m!4957791))

(assert (=> b!4348079 d!1284011))

(declare-fun d!1284013 () Bool)

(assert (=> d!1284013 (isDefined!7720 (getValueByKey!411 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) key!3918))))

(declare-fun lt!1562970 () Unit!70771)

(declare-fun choose!26712 (List!48973 K!10215) Unit!70771)

(assert (=> d!1284013 (= lt!1562970 (choose!26712 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) key!3918))))

(assert (=> d!1284013 (invariantList!656 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))))

(assert (=> d!1284013 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!323 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) key!3918) lt!1562970)))

(declare-fun bs!628277 () Bool)

(assert (= bs!628277 d!1284013))

(assert (=> bs!628277 m!4957245))

(assert (=> bs!628277 m!4957245))

(assert (=> bs!628277 m!4957247))

(declare-fun m!4957793 () Bool)

(assert (=> bs!628277 m!4957793))

(declare-fun m!4957795 () Bool)

(assert (=> bs!628277 m!4957795))

(assert (=> b!4348083 d!1284013))

(assert (=> b!4348083 d!1284009))

(assert (=> b!4348083 d!1284011))

(declare-fun d!1284015 () Bool)

(assert (=> d!1284015 (contains!11012 (getKeysList!104 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) key!3918)))

(declare-fun lt!1562973 () Unit!70771)

(declare-fun choose!26713 (List!48973 K!10215) Unit!70771)

(assert (=> d!1284015 (= lt!1562973 (choose!26713 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) key!3918))))

(assert (=> d!1284015 (invariantList!656 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))))

(assert (=> d!1284015 (= (lemmaInListThenGetKeysListContains!101 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) key!3918) lt!1562973)))

(declare-fun bs!628278 () Bool)

(assert (= bs!628278 d!1284015))

(assert (=> bs!628278 m!4957249))

(assert (=> bs!628278 m!4957249))

(declare-fun m!4957797 () Bool)

(assert (=> bs!628278 m!4957797))

(declare-fun m!4957799 () Bool)

(assert (=> bs!628278 m!4957799))

(assert (=> bs!628278 m!4957795))

(assert (=> b!4348083 d!1284015))

(declare-fun d!1284017 () Bool)

(declare-fun e!2706015 () Bool)

(assert (=> d!1284017 e!2706015))

(declare-fun res!1786115 () Bool)

(assert (=> d!1284017 (=> res!1786115 e!2706015)))

(declare-fun lt!1562975 () Bool)

(assert (=> d!1284017 (= res!1786115 (not lt!1562975))))

(declare-fun lt!1562974 () Bool)

(assert (=> d!1284017 (= lt!1562975 lt!1562974)))

(declare-fun lt!1562976 () Unit!70771)

(declare-fun e!2706014 () Unit!70771)

(assert (=> d!1284017 (= lt!1562976 e!2706014)))

(declare-fun c!739207 () Bool)

(assert (=> d!1284017 (= c!739207 lt!1562974)))

(assert (=> d!1284017 (= lt!1562974 (containsKey!622 (toList!2901 lt!1562711) (_1!27398 (tuple2!48209 hash!377 newBucket!200))))))

(assert (=> d!1284017 (= (contains!11010 lt!1562711 (_1!27398 (tuple2!48209 hash!377 newBucket!200))) lt!1562975)))

(declare-fun b!4348502 () Bool)

(declare-fun lt!1562977 () Unit!70771)

(assert (=> b!4348502 (= e!2706014 lt!1562977)))

(assert (=> b!4348502 (= lt!1562977 (lemmaContainsKeyImpliesGetValueByKeyDefined!324 (toList!2901 lt!1562711) (_1!27398 (tuple2!48209 hash!377 newBucket!200))))))

(assert (=> b!4348502 (isDefined!7721 (getValueByKey!410 (toList!2901 lt!1562711) (_1!27398 (tuple2!48209 hash!377 newBucket!200))))))

(declare-fun b!4348503 () Bool)

(declare-fun Unit!70813 () Unit!70771)

(assert (=> b!4348503 (= e!2706014 Unit!70813)))

(declare-fun b!4348504 () Bool)

(assert (=> b!4348504 (= e!2706015 (isDefined!7721 (getValueByKey!410 (toList!2901 lt!1562711) (_1!27398 (tuple2!48209 hash!377 newBucket!200)))))))

(assert (= (and d!1284017 c!739207) b!4348502))

(assert (= (and d!1284017 (not c!739207)) b!4348503))

(assert (= (and d!1284017 (not res!1786115)) b!4348504))

(declare-fun m!4957801 () Bool)

(assert (=> d!1284017 m!4957801))

(declare-fun m!4957803 () Bool)

(assert (=> b!4348502 m!4957803))

(assert (=> b!4348502 m!4957271))

(assert (=> b!4348502 m!4957271))

(declare-fun m!4957805 () Bool)

(assert (=> b!4348502 m!4957805))

(assert (=> b!4348504 m!4957271))

(assert (=> b!4348504 m!4957271))

(assert (=> b!4348504 m!4957805))

(assert (=> d!1283777 d!1284017))

(declare-fun d!1284019 () Bool)

(declare-fun c!739208 () Bool)

(assert (=> d!1284019 (= c!739208 (and ((_ is Cons!48850) lt!1562708) (= (_1!27398 (h!54379 lt!1562708)) (_1!27398 (tuple2!48209 hash!377 newBucket!200)))))))

(declare-fun e!2706016 () Option!10424)

(assert (=> d!1284019 (= (getValueByKey!410 lt!1562708 (_1!27398 (tuple2!48209 hash!377 newBucket!200))) e!2706016)))

(declare-fun b!4348508 () Bool)

(declare-fun e!2706017 () Option!10424)

(assert (=> b!4348508 (= e!2706017 None!10423)))

(declare-fun b!4348506 () Bool)

(assert (=> b!4348506 (= e!2706016 e!2706017)))

(declare-fun c!739209 () Bool)

(assert (=> b!4348506 (= c!739209 (and ((_ is Cons!48850) lt!1562708) (not (= (_1!27398 (h!54379 lt!1562708)) (_1!27398 (tuple2!48209 hash!377 newBucket!200))))))))

(declare-fun b!4348505 () Bool)

(assert (=> b!4348505 (= e!2706016 (Some!10423 (_2!27398 (h!54379 lt!1562708))))))

(declare-fun b!4348507 () Bool)

(assert (=> b!4348507 (= e!2706017 (getValueByKey!410 (t!355894 lt!1562708) (_1!27398 (tuple2!48209 hash!377 newBucket!200))))))

(assert (= (and d!1284019 c!739208) b!4348505))

(assert (= (and d!1284019 (not c!739208)) b!4348506))

(assert (= (and b!4348506 c!739209) b!4348507))

(assert (= (and b!4348506 (not c!739209)) b!4348508))

(declare-fun m!4957807 () Bool)

(assert (=> b!4348507 m!4957807))

(assert (=> d!1283777 d!1284019))

(declare-fun d!1284021 () Bool)

(assert (=> d!1284021 (= (getValueByKey!410 lt!1562708 (_1!27398 (tuple2!48209 hash!377 newBucket!200))) (Some!10423 (_2!27398 (tuple2!48209 hash!377 newBucket!200))))))

(declare-fun lt!1562980 () Unit!70771)

(declare-fun choose!26714 (List!48974 (_ BitVec 64) List!48973) Unit!70771)

(assert (=> d!1284021 (= lt!1562980 (choose!26714 lt!1562708 (_1!27398 (tuple2!48209 hash!377 newBucket!200)) (_2!27398 (tuple2!48209 hash!377 newBucket!200))))))

(declare-fun e!2706020 () Bool)

(assert (=> d!1284021 e!2706020))

(declare-fun res!1786120 () Bool)

(assert (=> d!1284021 (=> (not res!1786120) (not e!2706020))))

(assert (=> d!1284021 (= res!1786120 (isStrictlySorted!82 lt!1562708))))

(assert (=> d!1284021 (= (lemmaContainsTupThenGetReturnValue!190 lt!1562708 (_1!27398 (tuple2!48209 hash!377 newBucket!200)) (_2!27398 (tuple2!48209 hash!377 newBucket!200))) lt!1562980)))

(declare-fun b!4348513 () Bool)

(declare-fun res!1786121 () Bool)

(assert (=> b!4348513 (=> (not res!1786121) (not e!2706020))))

(assert (=> b!4348513 (= res!1786121 (containsKey!622 lt!1562708 (_1!27398 (tuple2!48209 hash!377 newBucket!200))))))

(declare-fun b!4348514 () Bool)

(assert (=> b!4348514 (= e!2706020 (contains!11008 lt!1562708 (tuple2!48209 (_1!27398 (tuple2!48209 hash!377 newBucket!200)) (_2!27398 (tuple2!48209 hash!377 newBucket!200)))))))

(assert (= (and d!1284021 res!1786120) b!4348513))

(assert (= (and b!4348513 res!1786121) b!4348514))

(assert (=> d!1284021 m!4957265))

(declare-fun m!4957809 () Bool)

(assert (=> d!1284021 m!4957809))

(declare-fun m!4957811 () Bool)

(assert (=> d!1284021 m!4957811))

(declare-fun m!4957813 () Bool)

(assert (=> b!4348513 m!4957813))

(declare-fun m!4957815 () Bool)

(assert (=> b!4348514 m!4957815))

(assert (=> d!1283777 d!1284021))

(declare-fun b!4348535 () Bool)

(declare-fun res!1786126 () Bool)

(declare-fun e!2706033 () Bool)

(assert (=> b!4348535 (=> (not res!1786126) (not e!2706033))))

(declare-fun lt!1562983 () List!48974)

(assert (=> b!4348535 (= res!1786126 (containsKey!622 lt!1562983 (_1!27398 (tuple2!48209 hash!377 newBucket!200))))))

(declare-fun d!1284023 () Bool)

(assert (=> d!1284023 e!2706033))

(declare-fun res!1786127 () Bool)

(assert (=> d!1284023 (=> (not res!1786127) (not e!2706033))))

(assert (=> d!1284023 (= res!1786127 (isStrictlySorted!82 lt!1562983))))

(declare-fun e!2706035 () List!48974)

(assert (=> d!1284023 (= lt!1562983 e!2706035)))

(declare-fun c!739221 () Bool)

(assert (=> d!1284023 (= c!739221 (and ((_ is Cons!48850) (toList!2901 lm!1707)) (bvslt (_1!27398 (h!54379 (toList!2901 lm!1707))) (_1!27398 (tuple2!48209 hash!377 newBucket!200)))))))

(assert (=> d!1284023 (isStrictlySorted!82 (toList!2901 lm!1707))))

(assert (=> d!1284023 (= (insertStrictlySorted!113 (toList!2901 lm!1707) (_1!27398 (tuple2!48209 hash!377 newBucket!200)) (_2!27398 (tuple2!48209 hash!377 newBucket!200))) lt!1562983)))

(declare-fun b!4348536 () Bool)

(declare-fun call!302268 () List!48974)

(assert (=> b!4348536 (= e!2706035 call!302268)))

(declare-fun b!4348537 () Bool)

(declare-fun e!2706032 () List!48974)

(assert (=> b!4348537 (= e!2706035 e!2706032)))

(declare-fun c!739218 () Bool)

(assert (=> b!4348537 (= c!739218 (and ((_ is Cons!48850) (toList!2901 lm!1707)) (= (_1!27398 (h!54379 (toList!2901 lm!1707))) (_1!27398 (tuple2!48209 hash!377 newBucket!200)))))))

(declare-fun b!4348538 () Bool)

(assert (=> b!4348538 (= e!2706033 (contains!11008 lt!1562983 (tuple2!48209 (_1!27398 (tuple2!48209 hash!377 newBucket!200)) (_2!27398 (tuple2!48209 hash!377 newBucket!200)))))))

(declare-fun bm!302261 () Bool)

(declare-fun call!302266 () List!48974)

(assert (=> bm!302261 (= call!302266 call!302268)))

(declare-fun b!4348539 () Bool)

(declare-fun e!2706034 () List!48974)

(declare-fun call!302267 () List!48974)

(assert (=> b!4348539 (= e!2706034 call!302267)))

(declare-fun bm!302262 () Bool)

(declare-fun e!2706031 () List!48974)

(declare-fun $colon$colon!674 (List!48974 tuple2!48208) List!48974)

(assert (=> bm!302262 (= call!302268 ($colon$colon!674 e!2706031 (ite c!739221 (h!54379 (toList!2901 lm!1707)) (tuple2!48209 (_1!27398 (tuple2!48209 hash!377 newBucket!200)) (_2!27398 (tuple2!48209 hash!377 newBucket!200))))))))

(declare-fun c!739220 () Bool)

(assert (=> bm!302262 (= c!739220 c!739221)))

(declare-fun b!4348540 () Bool)

(assert (=> b!4348540 (= e!2706034 call!302267)))

(declare-fun b!4348541 () Bool)

(assert (=> b!4348541 (= e!2706032 call!302266)))

(declare-fun bm!302263 () Bool)

(assert (=> bm!302263 (= call!302267 call!302266)))

(declare-fun c!739219 () Bool)

(declare-fun b!4348542 () Bool)

(assert (=> b!4348542 (= c!739219 (and ((_ is Cons!48850) (toList!2901 lm!1707)) (bvsgt (_1!27398 (h!54379 (toList!2901 lm!1707))) (_1!27398 (tuple2!48209 hash!377 newBucket!200)))))))

(assert (=> b!4348542 (= e!2706032 e!2706034)))

(declare-fun b!4348543 () Bool)

(assert (=> b!4348543 (= e!2706031 (ite c!739218 (t!355894 (toList!2901 lm!1707)) (ite c!739219 (Cons!48850 (h!54379 (toList!2901 lm!1707)) (t!355894 (toList!2901 lm!1707))) Nil!48850)))))

(declare-fun b!4348544 () Bool)

(assert (=> b!4348544 (= e!2706031 (insertStrictlySorted!113 (t!355894 (toList!2901 lm!1707)) (_1!27398 (tuple2!48209 hash!377 newBucket!200)) (_2!27398 (tuple2!48209 hash!377 newBucket!200))))))

(assert (= (and d!1284023 c!739221) b!4348536))

(assert (= (and d!1284023 (not c!739221)) b!4348537))

(assert (= (and b!4348537 c!739218) b!4348541))

(assert (= (and b!4348537 (not c!739218)) b!4348542))

(assert (= (and b!4348542 c!739219) b!4348539))

(assert (= (and b!4348542 (not c!739219)) b!4348540))

(assert (= (or b!4348539 b!4348540) bm!302263))

(assert (= (or b!4348541 bm!302263) bm!302261))

(assert (= (or b!4348536 bm!302261) bm!302262))

(assert (= (and bm!302262 c!739220) b!4348544))

(assert (= (and bm!302262 (not c!739220)) b!4348543))

(assert (= (and d!1284023 res!1786127) b!4348535))

(assert (= (and b!4348535 res!1786126) b!4348538))

(declare-fun m!4957817 () Bool)

(assert (=> b!4348544 m!4957817))

(declare-fun m!4957819 () Bool)

(assert (=> b!4348535 m!4957819))

(declare-fun m!4957821 () Bool)

(assert (=> bm!302262 m!4957821))

(declare-fun m!4957823 () Bool)

(assert (=> d!1284023 m!4957823))

(assert (=> d!1284023 m!4957309))

(declare-fun m!4957825 () Bool)

(assert (=> b!4348538 m!4957825))

(assert (=> d!1283777 d!1284023))

(declare-fun d!1284025 () Bool)

(declare-fun res!1786128 () Bool)

(declare-fun e!2706036 () Bool)

(assert (=> d!1284025 (=> res!1786128 e!2706036)))

(assert (=> d!1284025 (= res!1786128 ((_ is Nil!48850) (toList!2901 lm!1707)))))

(assert (=> d!1284025 (= (forall!9057 (toList!2901 lm!1707) lambda!138773) e!2706036)))

(declare-fun b!4348545 () Bool)

(declare-fun e!2706037 () Bool)

(assert (=> b!4348545 (= e!2706036 e!2706037)))

(declare-fun res!1786129 () Bool)

(assert (=> b!4348545 (=> (not res!1786129) (not e!2706037))))

(assert (=> b!4348545 (= res!1786129 (dynLambda!20601 lambda!138773 (h!54379 (toList!2901 lm!1707))))))

(declare-fun b!4348546 () Bool)

(assert (=> b!4348546 (= e!2706037 (forall!9057 (t!355894 (toList!2901 lm!1707)) lambda!138773))))

(assert (= (and d!1284025 (not res!1786128)) b!4348545))

(assert (= (and b!4348545 res!1786129) b!4348546))

(declare-fun b_lambda!130275 () Bool)

(assert (=> (not b_lambda!130275) (not b!4348545)))

(declare-fun m!4957827 () Bool)

(assert (=> b!4348545 m!4957827))

(declare-fun m!4957829 () Bool)

(assert (=> b!4348546 m!4957829))

(assert (=> d!1283805 d!1284025))

(declare-fun d!1284027 () Bool)

(declare-fun res!1786130 () Bool)

(declare-fun e!2706038 () Bool)

(assert (=> d!1284027 (=> res!1786130 e!2706038)))

(assert (=> d!1284027 (= res!1786130 ((_ is Nil!48850) (t!355894 (toList!2901 lt!1562573))))))

(assert (=> d!1284027 (= (forall!9057 (t!355894 (toList!2901 lt!1562573)) lambda!138747) e!2706038)))

(declare-fun b!4348547 () Bool)

(declare-fun e!2706039 () Bool)

(assert (=> b!4348547 (= e!2706038 e!2706039)))

(declare-fun res!1786131 () Bool)

(assert (=> b!4348547 (=> (not res!1786131) (not e!2706039))))

(assert (=> b!4348547 (= res!1786131 (dynLambda!20601 lambda!138747 (h!54379 (t!355894 (toList!2901 lt!1562573)))))))

(declare-fun b!4348548 () Bool)

(assert (=> b!4348548 (= e!2706039 (forall!9057 (t!355894 (t!355894 (toList!2901 lt!1562573))) lambda!138747))))

(assert (= (and d!1284027 (not res!1786130)) b!4348547))

(assert (= (and b!4348547 res!1786131) b!4348548))

(declare-fun b_lambda!130277 () Bool)

(assert (=> (not b_lambda!130277) (not b!4348547)))

(declare-fun m!4957831 () Bool)

(assert (=> b!4348547 m!4957831))

(declare-fun m!4957833 () Bool)

(assert (=> b!4348548 m!4957833))

(assert (=> b!4347925 d!1284027))

(declare-fun bs!628279 () Bool)

(declare-fun b!4348567 () Bool)

(assert (= bs!628279 (and b!4348567 b!4348268)))

(declare-fun lambda!138882 () Int)

(assert (=> bs!628279 (= (= (t!355893 (toList!2902 lt!1562568)) (toList!2902 lt!1562568)) (= lambda!138882 lambda!138817))))

(assert (=> b!4348567 true))

(declare-fun bs!628280 () Bool)

(declare-fun b!4348573 () Bool)

(assert (= bs!628280 (and b!4348573 b!4348268)))

(declare-fun lambda!138883 () Int)

(assert (=> bs!628280 (= (= (Cons!48849 (h!54378 (toList!2902 lt!1562568)) (t!355893 (toList!2902 lt!1562568))) (toList!2902 lt!1562568)) (= lambda!138883 lambda!138817))))

(declare-fun bs!628281 () Bool)

(assert (= bs!628281 (and b!4348573 b!4348567)))

(assert (=> bs!628281 (= (= (Cons!48849 (h!54378 (toList!2902 lt!1562568)) (t!355893 (toList!2902 lt!1562568))) (t!355893 (toList!2902 lt!1562568))) (= lambda!138883 lambda!138882))))

(assert (=> b!4348573 true))

(declare-fun bs!628282 () Bool)

(declare-fun b!4348571 () Bool)

(assert (= bs!628282 (and b!4348571 b!4348268)))

(declare-fun lambda!138884 () Int)

(assert (=> bs!628282 (= lambda!138884 lambda!138817)))

(declare-fun bs!628283 () Bool)

(assert (= bs!628283 (and b!4348571 b!4348567)))

(assert (=> bs!628283 (= (= (toList!2902 lt!1562568) (t!355893 (toList!2902 lt!1562568))) (= lambda!138884 lambda!138882))))

(declare-fun bs!628284 () Bool)

(assert (= bs!628284 (and b!4348571 b!4348573)))

(assert (=> bs!628284 (= (= (toList!2902 lt!1562568) (Cons!48849 (h!54378 (toList!2902 lt!1562568)) (t!355893 (toList!2902 lt!1562568)))) (= lambda!138884 lambda!138883))))

(assert (=> b!4348571 true))

(declare-fun bs!628285 () Bool)

(declare-fun b!4348568 () Bool)

(assert (= bs!628285 (and b!4348568 b!4348269)))

(declare-fun lambda!138885 () Int)

(assert (=> bs!628285 (= lambda!138885 lambda!138818)))

(assert (=> b!4348567 false))

(declare-fun lt!1563003 () Unit!70771)

(declare-fun forallContained!1709 (List!48976 Int K!10215) Unit!70771)

(assert (=> b!4348567 (= lt!1563003 (forallContained!1709 (getKeysList!104 (t!355893 (toList!2902 lt!1562568))) lambda!138882 (_1!27397 (h!54378 (toList!2902 lt!1562568)))))))

(declare-fun e!2706049 () Unit!70771)

(declare-fun Unit!70815 () Unit!70771)

(assert (=> b!4348567 (= e!2706049 Unit!70815)))

(declare-fun e!2706051 () Bool)

(declare-fun lt!1563001 () List!48976)

(assert (=> b!4348568 (= e!2706051 (= (content!7672 lt!1563001) (content!7672 (map!10618 (toList!2902 lt!1562568) lambda!138885))))))

(declare-fun b!4348569 () Bool)

(declare-fun res!1786139 () Bool)

(assert (=> b!4348569 (=> (not res!1786139) (not e!2706051))))

(assert (=> b!4348569 (= res!1786139 (= (length!40 lt!1563001) (length!41 (toList!2902 lt!1562568))))))

(declare-fun b!4348570 () Bool)

(declare-fun Unit!70816 () Unit!70771)

(assert (=> b!4348570 (= e!2706049 Unit!70816)))

(declare-fun b!4348572 () Bool)

(declare-fun e!2706048 () List!48976)

(assert (=> b!4348572 (= e!2706048 Nil!48852)))

(assert (=> b!4348573 (= e!2706048 (Cons!48852 (_1!27397 (h!54378 (toList!2902 lt!1562568))) (getKeysList!104 (t!355893 (toList!2902 lt!1562568)))))))

(declare-fun c!739230 () Bool)

(assert (=> b!4348573 (= c!739230 (containsKey!621 (t!355893 (toList!2902 lt!1562568)) (_1!27397 (h!54378 (toList!2902 lt!1562568)))))))

(declare-fun lt!1563002 () Unit!70771)

(declare-fun e!2706050 () Unit!70771)

(assert (=> b!4348573 (= lt!1563002 e!2706050)))

(declare-fun c!739228 () Bool)

(assert (=> b!4348573 (= c!739228 (contains!11012 (getKeysList!104 (t!355893 (toList!2902 lt!1562568))) (_1!27397 (h!54378 (toList!2902 lt!1562568)))))))

(declare-fun lt!1563004 () Unit!70771)

(assert (=> b!4348573 (= lt!1563004 e!2706049)))

(declare-fun lt!1562999 () List!48976)

(assert (=> b!4348573 (= lt!1562999 (getKeysList!104 (t!355893 (toList!2902 lt!1562568))))))

(declare-fun lt!1562998 () Unit!70771)

(declare-fun lemmaForallContainsAddHeadPreserves!14 (List!48973 List!48976 tuple2!48206) Unit!70771)

(assert (=> b!4348573 (= lt!1562998 (lemmaForallContainsAddHeadPreserves!14 (t!355893 (toList!2902 lt!1562568)) lt!1562999 (h!54378 (toList!2902 lt!1562568))))))

(assert (=> b!4348573 (forall!9061 lt!1562999 lambda!138883)))

(declare-fun lt!1563000 () Unit!70771)

(assert (=> b!4348573 (= lt!1563000 lt!1562998)))

(declare-fun res!1786138 () Bool)

(assert (=> b!4348571 (=> (not res!1786138) (not e!2706051))))

(assert (=> b!4348571 (= res!1786138 (forall!9061 lt!1563001 lambda!138884))))

(declare-fun d!1284029 () Bool)

(assert (=> d!1284029 e!2706051))

(declare-fun res!1786140 () Bool)

(assert (=> d!1284029 (=> (not res!1786140) (not e!2706051))))

(assert (=> d!1284029 (= res!1786140 (noDuplicate!592 lt!1563001))))

(assert (=> d!1284029 (= lt!1563001 e!2706048)))

(declare-fun c!739229 () Bool)

(assert (=> d!1284029 (= c!739229 ((_ is Cons!48849) (toList!2902 lt!1562568)))))

(assert (=> d!1284029 (invariantList!656 (toList!2902 lt!1562568))))

(assert (=> d!1284029 (= (getKeysList!104 (toList!2902 lt!1562568)) lt!1563001)))

(declare-fun b!4348574 () Bool)

(declare-fun Unit!70817 () Unit!70771)

(assert (=> b!4348574 (= e!2706050 Unit!70817)))

(declare-fun b!4348575 () Bool)

(assert (=> b!4348575 false))

(declare-fun Unit!70818 () Unit!70771)

(assert (=> b!4348575 (= e!2706050 Unit!70818)))

(assert (= (and d!1284029 c!739229) b!4348573))

(assert (= (and d!1284029 (not c!739229)) b!4348572))

(assert (= (and b!4348573 c!739230) b!4348575))

(assert (= (and b!4348573 (not c!739230)) b!4348574))

(assert (= (and b!4348573 c!739228) b!4348567))

(assert (= (and b!4348573 (not c!739228)) b!4348570))

(assert (= (and d!1284029 res!1786140) b!4348569))

(assert (= (and b!4348569 res!1786139) b!4348571))

(assert (= (and b!4348571 res!1786138) b!4348568))

(declare-fun m!4957835 () Bool)

(assert (=> b!4348567 m!4957835))

(assert (=> b!4348567 m!4957835))

(declare-fun m!4957837 () Bool)

(assert (=> b!4348567 m!4957837))

(declare-fun m!4957839 () Bool)

(assert (=> b!4348573 m!4957839))

(declare-fun m!4957841 () Bool)

(assert (=> b!4348573 m!4957841))

(assert (=> b!4348573 m!4957835))

(declare-fun m!4957843 () Bool)

(assert (=> b!4348573 m!4957843))

(assert (=> b!4348573 m!4957835))

(declare-fun m!4957845 () Bool)

(assert (=> b!4348573 m!4957845))

(declare-fun m!4957847 () Bool)

(assert (=> d!1284029 m!4957847))

(assert (=> d!1284029 m!4957773))

(declare-fun m!4957849 () Bool)

(assert (=> b!4348568 m!4957849))

(declare-fun m!4957851 () Bool)

(assert (=> b!4348568 m!4957851))

(assert (=> b!4348568 m!4957851))

(declare-fun m!4957853 () Bool)

(assert (=> b!4348568 m!4957853))

(declare-fun m!4957855 () Bool)

(assert (=> b!4348569 m!4957855))

(assert (=> b!4348569 m!4957453))

(declare-fun m!4957857 () Bool)

(assert (=> b!4348571 m!4957857))

(assert (=> b!4348034 d!1284029))

(declare-fun d!1284031 () Bool)

(declare-fun res!1786141 () Bool)

(declare-fun e!2706052 () Bool)

(assert (=> d!1284031 (=> res!1786141 e!2706052)))

(assert (=> d!1284031 (= res!1786141 (not ((_ is Cons!48849) (t!355893 newBucket!200))))))

(assert (=> d!1284031 (= (noDuplicateKeys!459 (t!355893 newBucket!200)) e!2706052)))

(declare-fun b!4348578 () Bool)

(declare-fun e!2706053 () Bool)

(assert (=> b!4348578 (= e!2706052 e!2706053)))

(declare-fun res!1786142 () Bool)

(assert (=> b!4348578 (=> (not res!1786142) (not e!2706053))))

(assert (=> b!4348578 (= res!1786142 (not (containsKey!618 (t!355893 (t!355893 newBucket!200)) (_1!27397 (h!54378 (t!355893 newBucket!200))))))))

(declare-fun b!4348579 () Bool)

(assert (=> b!4348579 (= e!2706053 (noDuplicateKeys!459 (t!355893 (t!355893 newBucket!200))))))

(assert (= (and d!1284031 (not res!1786141)) b!4348578))

(assert (= (and b!4348578 res!1786142) b!4348579))

(declare-fun m!4957859 () Bool)

(assert (=> b!4348578 m!4957859))

(declare-fun m!4957861 () Bool)

(assert (=> b!4348579 m!4957861))

(assert (=> b!4348138 d!1284031))

(declare-fun d!1284033 () Bool)

(declare-fun res!1786143 () Bool)

(declare-fun e!2706054 () Bool)

(assert (=> d!1284033 (=> res!1786143 e!2706054)))

(assert (=> d!1284033 (= res!1786143 (not ((_ is Cons!48849) (_2!27398 (h!54379 (toList!2901 lm!1707))))))))

(assert (=> d!1284033 (= (noDuplicateKeys!459 (_2!27398 (h!54379 (toList!2901 lm!1707)))) e!2706054)))

(declare-fun b!4348580 () Bool)

(declare-fun e!2706055 () Bool)

(assert (=> b!4348580 (= e!2706054 e!2706055)))

(declare-fun res!1786144 () Bool)

(assert (=> b!4348580 (=> (not res!1786144) (not e!2706055))))

(assert (=> b!4348580 (= res!1786144 (not (containsKey!618 (t!355893 (_2!27398 (h!54379 (toList!2901 lm!1707)))) (_1!27397 (h!54378 (_2!27398 (h!54379 (toList!2901 lm!1707))))))))))

(declare-fun b!4348581 () Bool)

(assert (=> b!4348581 (= e!2706055 (noDuplicateKeys!459 (t!355893 (_2!27398 (h!54379 (toList!2901 lm!1707))))))))

(assert (= (and d!1284033 (not res!1786143)) b!4348580))

(assert (= (and b!4348580 res!1786144) b!4348581))

(declare-fun m!4957863 () Bool)

(assert (=> b!4348580 m!4957863))

(declare-fun m!4957865 () Bool)

(assert (=> b!4348581 m!4957865))

(assert (=> bs!628172 d!1284033))

(declare-fun d!1284035 () Bool)

(declare-fun lt!1563005 () Bool)

(assert (=> d!1284035 (= lt!1563005 (select (content!7672 (keys!16476 (extractMap!518 (toList!2901 lm!1707)))) key!3918))))

(declare-fun e!2706057 () Bool)

(assert (=> d!1284035 (= lt!1563005 e!2706057)))

(declare-fun res!1786146 () Bool)

(assert (=> d!1284035 (=> (not res!1786146) (not e!2706057))))

(assert (=> d!1284035 (= res!1786146 ((_ is Cons!48852) (keys!16476 (extractMap!518 (toList!2901 lm!1707)))))))

(assert (=> d!1284035 (= (contains!11012 (keys!16476 (extractMap!518 (toList!2901 lm!1707))) key!3918) lt!1563005)))

(declare-fun b!4348582 () Bool)

(declare-fun e!2706056 () Bool)

(assert (=> b!4348582 (= e!2706057 e!2706056)))

(declare-fun res!1786145 () Bool)

(assert (=> b!4348582 (=> res!1786145 e!2706056)))

(assert (=> b!4348582 (= res!1786145 (= (h!54383 (keys!16476 (extractMap!518 (toList!2901 lm!1707)))) key!3918))))

(declare-fun b!4348583 () Bool)

(assert (=> b!4348583 (= e!2706056 (contains!11012 (t!355896 (keys!16476 (extractMap!518 (toList!2901 lm!1707)))) key!3918))))

(assert (= (and d!1284035 res!1786146) b!4348582))

(assert (= (and b!4348582 (not res!1786145)) b!4348583))

(assert (=> d!1284035 m!4957237))

(declare-fun m!4957867 () Bool)

(assert (=> d!1284035 m!4957867))

(declare-fun m!4957869 () Bool)

(assert (=> d!1284035 m!4957869))

(declare-fun m!4957871 () Bool)

(assert (=> b!4348583 m!4957871))

(assert (=> b!4348085 d!1284035))

(declare-fun bs!628286 () Bool)

(declare-fun b!4348585 () Bool)

(assert (= bs!628286 (and b!4348585 b!4348268)))

(declare-fun lambda!138886 () Int)

(assert (=> bs!628286 (= (= (toList!2902 (extractMap!518 (toList!2901 lm!1707))) (toList!2902 lt!1562568)) (= lambda!138886 lambda!138817))))

(declare-fun bs!628287 () Bool)

(assert (= bs!628287 (and b!4348585 b!4348567)))

(assert (=> bs!628287 (= (= (toList!2902 (extractMap!518 (toList!2901 lm!1707))) (t!355893 (toList!2902 lt!1562568))) (= lambda!138886 lambda!138882))))

(declare-fun bs!628288 () Bool)

(assert (= bs!628288 (and b!4348585 b!4348573)))

(assert (=> bs!628288 (= (= (toList!2902 (extractMap!518 (toList!2901 lm!1707))) (Cons!48849 (h!54378 (toList!2902 lt!1562568)) (t!355893 (toList!2902 lt!1562568)))) (= lambda!138886 lambda!138883))))

(declare-fun bs!628289 () Bool)

(assert (= bs!628289 (and b!4348585 b!4348571)))

(assert (=> bs!628289 (= (= (toList!2902 (extractMap!518 (toList!2901 lm!1707))) (toList!2902 lt!1562568)) (= lambda!138886 lambda!138884))))

(assert (=> b!4348585 true))

(declare-fun bs!628290 () Bool)

(declare-fun b!4348586 () Bool)

(assert (= bs!628290 (and b!4348586 b!4348269)))

(declare-fun lambda!138887 () Int)

(assert (=> bs!628290 (= lambda!138887 lambda!138818)))

(declare-fun bs!628291 () Bool)

(assert (= bs!628291 (and b!4348586 b!4348568)))

(assert (=> bs!628291 (= lambda!138887 lambda!138885)))

(declare-fun d!1284037 () Bool)

(declare-fun e!2706058 () Bool)

(assert (=> d!1284037 e!2706058))

(declare-fun res!1786147 () Bool)

(assert (=> d!1284037 (=> (not res!1786147) (not e!2706058))))

(declare-fun lt!1563006 () List!48976)

(assert (=> d!1284037 (= res!1786147 (noDuplicate!592 lt!1563006))))

(assert (=> d!1284037 (= lt!1563006 (getKeysList!104 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))))))

(assert (=> d!1284037 (= (keys!16476 (extractMap!518 (toList!2901 lm!1707))) lt!1563006)))

(declare-fun b!4348584 () Bool)

(declare-fun res!1786148 () Bool)

(assert (=> b!4348584 (=> (not res!1786148) (not e!2706058))))

(assert (=> b!4348584 (= res!1786148 (= (length!40 lt!1563006) (length!41 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))))))

(declare-fun res!1786149 () Bool)

(assert (=> b!4348585 (=> (not res!1786149) (not e!2706058))))

(assert (=> b!4348585 (= res!1786149 (forall!9061 lt!1563006 lambda!138886))))

(assert (=> b!4348586 (= e!2706058 (= (content!7672 lt!1563006) (content!7672 (map!10618 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) lambda!138887))))))

(assert (= (and d!1284037 res!1786147) b!4348584))

(assert (= (and b!4348584 res!1786148) b!4348585))

(assert (= (and b!4348585 res!1786149) b!4348586))

(declare-fun m!4957873 () Bool)

(assert (=> d!1284037 m!4957873))

(assert (=> d!1284037 m!4957249))

(declare-fun m!4957875 () Bool)

(assert (=> b!4348584 m!4957875))

(declare-fun m!4957877 () Bool)

(assert (=> b!4348584 m!4957877))

(declare-fun m!4957879 () Bool)

(assert (=> b!4348585 m!4957879))

(declare-fun m!4957881 () Bool)

(assert (=> b!4348586 m!4957881))

(declare-fun m!4957883 () Bool)

(assert (=> b!4348586 m!4957883))

(assert (=> b!4348586 m!4957883))

(declare-fun m!4957885 () Bool)

(assert (=> b!4348586 m!4957885))

(assert (=> b!4348085 d!1284037))

(declare-fun d!1284039 () Bool)

(assert (=> d!1284039 (= (get!15858 (getValueByKey!410 (toList!2901 lm!1707) hash!377)) (v!43225 (getValueByKey!410 (toList!2901 lm!1707) hash!377)))))

(assert (=> d!1283783 d!1284039))

(assert (=> d!1283783 d!1283997))

(declare-fun d!1284041 () Bool)

(declare-fun lt!1563007 () Bool)

(assert (=> d!1284041 (= lt!1563007 (select (content!7672 e!2705713) key!3918))))

(declare-fun e!2706060 () Bool)

(assert (=> d!1284041 (= lt!1563007 e!2706060)))

(declare-fun res!1786151 () Bool)

(assert (=> d!1284041 (=> (not res!1786151) (not e!2706060))))

(assert (=> d!1284041 (= res!1786151 ((_ is Cons!48852) e!2705713))))

(assert (=> d!1284041 (= (contains!11012 e!2705713 key!3918) lt!1563007)))

(declare-fun b!4348587 () Bool)

(declare-fun e!2706059 () Bool)

(assert (=> b!4348587 (= e!2706060 e!2706059)))

(declare-fun res!1786150 () Bool)

(assert (=> b!4348587 (=> res!1786150 e!2706059)))

(assert (=> b!4348587 (= res!1786150 (= (h!54383 e!2705713) key!3918))))

(declare-fun b!4348588 () Bool)

(assert (=> b!4348588 (= e!2706059 (contains!11012 (t!355896 e!2705713) key!3918))))

(assert (= (and d!1284041 res!1786151) b!4348587))

(assert (= (and b!4348587 (not res!1786150)) b!4348588))

(declare-fun m!4957887 () Bool)

(assert (=> d!1284041 m!4957887))

(declare-fun m!4957889 () Bool)

(assert (=> d!1284041 m!4957889))

(declare-fun m!4957891 () Bool)

(assert (=> b!4348588 m!4957891))

(assert (=> bm!302222 d!1284041))

(declare-fun d!1284043 () Bool)

(declare-fun lt!1563008 () Bool)

(assert (=> d!1284043 (= lt!1563008 (select (content!7670 (toList!2901 lm!1707)) (tuple2!48209 hash!377 lt!1562576)))))

(declare-fun e!2706062 () Bool)

(assert (=> d!1284043 (= lt!1563008 e!2706062)))

(declare-fun res!1786152 () Bool)

(assert (=> d!1284043 (=> (not res!1786152) (not e!2706062))))

(assert (=> d!1284043 (= res!1786152 ((_ is Cons!48850) (toList!2901 lm!1707)))))

(assert (=> d!1284043 (= (contains!11008 (toList!2901 lm!1707) (tuple2!48209 hash!377 lt!1562576)) lt!1563008)))

(declare-fun b!4348589 () Bool)

(declare-fun e!2706061 () Bool)

(assert (=> b!4348589 (= e!2706062 e!2706061)))

(declare-fun res!1786153 () Bool)

(assert (=> b!4348589 (=> res!1786153 e!2706061)))

(assert (=> b!4348589 (= res!1786153 (= (h!54379 (toList!2901 lm!1707)) (tuple2!48209 hash!377 lt!1562576)))))

(declare-fun b!4348590 () Bool)

(assert (=> b!4348590 (= e!2706061 (contains!11008 (t!355894 (toList!2901 lm!1707)) (tuple2!48209 hash!377 lt!1562576)))))

(assert (= (and d!1284043 res!1786152) b!4348589))

(assert (= (and b!4348589 (not res!1786153)) b!4348590))

(assert (=> d!1284043 m!4957295))

(declare-fun m!4957893 () Bool)

(assert (=> d!1284043 m!4957893))

(declare-fun m!4957895 () Bool)

(assert (=> b!4348590 m!4957895))

(assert (=> d!1283791 d!1284043))

(declare-fun d!1284045 () Bool)

(assert (=> d!1284045 (contains!11008 (toList!2901 lm!1707) (tuple2!48209 hash!377 lt!1562576))))

(assert (=> d!1284045 true))

(declare-fun _$14!726 () Unit!70771)

(assert (=> d!1284045 (= (choose!26704 (toList!2901 lm!1707) hash!377 lt!1562576) _$14!726)))

(declare-fun bs!628292 () Bool)

(assert (= bs!628292 d!1284045))

(assert (=> bs!628292 m!4957305))

(assert (=> d!1283791 d!1284045))

(declare-fun d!1284047 () Bool)

(declare-fun res!1786158 () Bool)

(declare-fun e!2706067 () Bool)

(assert (=> d!1284047 (=> res!1786158 e!2706067)))

(assert (=> d!1284047 (= res!1786158 (or ((_ is Nil!48850) (toList!2901 lm!1707)) ((_ is Nil!48850) (t!355894 (toList!2901 lm!1707)))))))

(assert (=> d!1284047 (= (isStrictlySorted!82 (toList!2901 lm!1707)) e!2706067)))

(declare-fun b!4348595 () Bool)

(declare-fun e!2706068 () Bool)

(assert (=> b!4348595 (= e!2706067 e!2706068)))

(declare-fun res!1786159 () Bool)

(assert (=> b!4348595 (=> (not res!1786159) (not e!2706068))))

(assert (=> b!4348595 (= res!1786159 (bvslt (_1!27398 (h!54379 (toList!2901 lm!1707))) (_1!27398 (h!54379 (t!355894 (toList!2901 lm!1707))))))))

(declare-fun b!4348596 () Bool)

(assert (=> b!4348596 (= e!2706068 (isStrictlySorted!82 (t!355894 (toList!2901 lm!1707))))))

(assert (= (and d!1284047 (not res!1786158)) b!4348595))

(assert (= (and b!4348595 res!1786159) b!4348596))

(declare-fun m!4957897 () Bool)

(assert (=> b!4348596 m!4957897))

(assert (=> d!1283791 d!1284047))

(declare-fun d!1284049 () Bool)

(declare-fun res!1786164 () Bool)

(declare-fun e!2706073 () Bool)

(assert (=> d!1284049 (=> res!1786164 e!2706073)))

(assert (=> d!1284049 (= res!1786164 ((_ is Nil!48849) newBucket!200))))

(assert (=> d!1284049 (= (forall!9059 newBucket!200 lambda!138770) e!2706073)))

(declare-fun b!4348601 () Bool)

(declare-fun e!2706074 () Bool)

(assert (=> b!4348601 (= e!2706073 e!2706074)))

(declare-fun res!1786165 () Bool)

(assert (=> b!4348601 (=> (not res!1786165) (not e!2706074))))

(declare-fun dynLambda!20603 (Int tuple2!48206) Bool)

(assert (=> b!4348601 (= res!1786165 (dynLambda!20603 lambda!138770 (h!54378 newBucket!200)))))

(declare-fun b!4348602 () Bool)

(assert (=> b!4348602 (= e!2706074 (forall!9059 (t!355893 newBucket!200) lambda!138770))))

(assert (= (and d!1284049 (not res!1786164)) b!4348601))

(assert (= (and b!4348601 res!1786165) b!4348602))

(declare-fun b_lambda!130279 () Bool)

(assert (=> (not b_lambda!130279) (not b!4348601)))

(declare-fun m!4957899 () Bool)

(assert (=> b!4348601 m!4957899))

(declare-fun m!4957901 () Bool)

(assert (=> b!4348602 m!4957901))

(assert (=> d!1283803 d!1284049))

(declare-fun d!1284051 () Bool)

(assert (=> d!1284051 (= (invariantList!656 (toList!2902 lt!1562699)) (noDuplicatedKeys!108 (toList!2902 lt!1562699)))))

(declare-fun bs!628293 () Bool)

(assert (= bs!628293 d!1284051))

(declare-fun m!4957903 () Bool)

(assert (=> bs!628293 m!4957903))

(assert (=> d!1283775 d!1284051))

(declare-fun d!1284053 () Bool)

(declare-fun res!1786166 () Bool)

(declare-fun e!2706075 () Bool)

(assert (=> d!1284053 (=> res!1786166 e!2706075)))

(assert (=> d!1284053 (= res!1786166 ((_ is Nil!48850) (toList!2901 lm!1707)))))

(assert (=> d!1284053 (= (forall!9057 (toList!2901 lm!1707) lambda!138767) e!2706075)))

(declare-fun b!4348603 () Bool)

(declare-fun e!2706076 () Bool)

(assert (=> b!4348603 (= e!2706075 e!2706076)))

(declare-fun res!1786167 () Bool)

(assert (=> b!4348603 (=> (not res!1786167) (not e!2706076))))

(assert (=> b!4348603 (= res!1786167 (dynLambda!20601 lambda!138767 (h!54379 (toList!2901 lm!1707))))))

(declare-fun b!4348604 () Bool)

(assert (=> b!4348604 (= e!2706076 (forall!9057 (t!355894 (toList!2901 lm!1707)) lambda!138767))))

(assert (= (and d!1284053 (not res!1786166)) b!4348603))

(assert (= (and b!4348603 res!1786167) b!4348604))

(declare-fun b_lambda!130281 () Bool)

(assert (=> (not b_lambda!130281) (not b!4348603)))

(declare-fun m!4957905 () Bool)

(assert (=> b!4348603 m!4957905))

(declare-fun m!4957907 () Bool)

(assert (=> b!4348604 m!4957907))

(assert (=> d!1283775 d!1284053))

(declare-fun bs!628294 () Bool)

(declare-fun b!4348606 () Bool)

(assert (= bs!628294 (and b!4348606 b!4348461)))

(declare-fun lambda!138888 () Int)

(assert (=> bs!628294 (= (= (extractMap!518 (t!355894 (toList!2901 lm!1707))) (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))) (= lambda!138888 lambda!138869))))

(declare-fun bs!628295 () Bool)

(assert (= bs!628295 (and b!4348606 d!1283877)))

(assert (=> bs!628295 (= (= (extractMap!518 (t!355894 (toList!2901 lm!1707))) lt!1562939) (= lambda!138888 lambda!138872))))

(declare-fun bs!628296 () Bool)

(assert (= bs!628296 (and b!4348606 b!4348464)))

(assert (=> bs!628296 (= (= (extractMap!518 (t!355894 (toList!2901 lm!1707))) lt!1562951) (= lambda!138888 lambda!138871))))

(declare-fun bs!628297 () Bool)

(assert (= bs!628297 (and b!4348606 d!1283803)))

(assert (=> bs!628297 (not (= lambda!138888 lambda!138770))))

(assert (=> bs!628296 (= (= (extractMap!518 (t!355894 (toList!2901 lm!1707))) (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))) (= lambda!138888 lambda!138870))))

(assert (=> b!4348606 true))

(declare-fun bs!628298 () Bool)

(declare-fun b!4348609 () Bool)

(assert (= bs!628298 (and b!4348609 b!4348606)))

(declare-fun lambda!138889 () Int)

(assert (=> bs!628298 (= lambda!138889 lambda!138888)))

(declare-fun bs!628299 () Bool)

(assert (= bs!628299 (and b!4348609 b!4348461)))

(assert (=> bs!628299 (= (= (extractMap!518 (t!355894 (toList!2901 lm!1707))) (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))) (= lambda!138889 lambda!138869))))

(declare-fun bs!628300 () Bool)

(assert (= bs!628300 (and b!4348609 d!1283877)))

(assert (=> bs!628300 (= (= (extractMap!518 (t!355894 (toList!2901 lm!1707))) lt!1562939) (= lambda!138889 lambda!138872))))

(declare-fun bs!628301 () Bool)

(assert (= bs!628301 (and b!4348609 b!4348464)))

(assert (=> bs!628301 (= (= (extractMap!518 (t!355894 (toList!2901 lm!1707))) lt!1562951) (= lambda!138889 lambda!138871))))

(declare-fun bs!628302 () Bool)

(assert (= bs!628302 (and b!4348609 d!1283803)))

(assert (=> bs!628302 (not (= lambda!138889 lambda!138770))))

(assert (=> bs!628301 (= (= (extractMap!518 (t!355894 (toList!2901 lm!1707))) (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))) (= lambda!138889 lambda!138870))))

(assert (=> b!4348609 true))

(declare-fun lambda!138890 () Int)

(declare-fun lt!1563021 () ListMap!2145)

(assert (=> bs!628298 (= (= lt!1563021 (extractMap!518 (t!355894 (toList!2901 lm!1707)))) (= lambda!138890 lambda!138888))))

(assert (=> b!4348609 (= (= lt!1563021 (extractMap!518 (t!355894 (toList!2901 lm!1707)))) (= lambda!138890 lambda!138889))))

(assert (=> bs!628299 (= (= lt!1563021 (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))) (= lambda!138890 lambda!138869))))

(assert (=> bs!628300 (= (= lt!1563021 lt!1562939) (= lambda!138890 lambda!138872))))

(assert (=> bs!628301 (= (= lt!1563021 lt!1562951) (= lambda!138890 lambda!138871))))

(assert (=> bs!628302 (not (= lambda!138890 lambda!138770))))

(assert (=> bs!628301 (= (= lt!1563021 (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))) (= lambda!138890 lambda!138870))))

(assert (=> b!4348609 true))

(declare-fun bs!628303 () Bool)

(declare-fun d!1284055 () Bool)

(assert (= bs!628303 (and d!1284055 b!4348606)))

(declare-fun lambda!138891 () Int)

(declare-fun lt!1563009 () ListMap!2145)

(assert (=> bs!628303 (= (= lt!1563009 (extractMap!518 (t!355894 (toList!2901 lm!1707)))) (= lambda!138891 lambda!138888))))

(declare-fun bs!628304 () Bool)

(assert (= bs!628304 (and d!1284055 b!4348609)))

(assert (=> bs!628304 (= (= lt!1563009 (extractMap!518 (t!355894 (toList!2901 lm!1707)))) (= lambda!138891 lambda!138889))))

(declare-fun bs!628305 () Bool)

(assert (= bs!628305 (and d!1284055 b!4348461)))

(assert (=> bs!628305 (= (= lt!1563009 (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))) (= lambda!138891 lambda!138869))))

(assert (=> bs!628304 (= (= lt!1563009 lt!1563021) (= lambda!138891 lambda!138890))))

(declare-fun bs!628306 () Bool)

(assert (= bs!628306 (and d!1284055 d!1283877)))

(assert (=> bs!628306 (= (= lt!1563009 lt!1562939) (= lambda!138891 lambda!138872))))

(declare-fun bs!628307 () Bool)

(assert (= bs!628307 (and d!1284055 b!4348464)))

(assert (=> bs!628307 (= (= lt!1563009 lt!1562951) (= lambda!138891 lambda!138871))))

(declare-fun bs!628308 () Bool)

(assert (= bs!628308 (and d!1284055 d!1283803)))

(assert (=> bs!628308 (not (= lambda!138891 lambda!138770))))

(assert (=> bs!628307 (= (= lt!1563009 (extractMap!518 (t!355894 (t!355894 (toList!2901 lm!1707))))) (= lambda!138891 lambda!138870))))

(assert (=> d!1284055 true))

(declare-fun e!2706078 () Bool)

(assert (=> d!1284055 e!2706078))

(declare-fun res!1786169 () Bool)

(assert (=> d!1284055 (=> (not res!1786169) (not e!2706078))))

(assert (=> d!1284055 (= res!1786169 (forall!9059 (_2!27398 (h!54379 (toList!2901 lm!1707))) lambda!138891))))

(declare-fun e!2706077 () ListMap!2145)

(assert (=> d!1284055 (= lt!1563009 e!2706077)))

(declare-fun c!739231 () Bool)

(assert (=> d!1284055 (= c!739231 ((_ is Nil!48849) (_2!27398 (h!54379 (toList!2901 lm!1707)))))))

(assert (=> d!1284055 (noDuplicateKeys!459 (_2!27398 (h!54379 (toList!2901 lm!1707))))))

(assert (=> d!1284055 (= (addToMapMapFromBucket!163 (_2!27398 (h!54379 (toList!2901 lm!1707))) (extractMap!518 (t!355894 (toList!2901 lm!1707)))) lt!1563009)))

(declare-fun b!4348605 () Bool)

(declare-fun res!1786170 () Bool)

(assert (=> b!4348605 (=> (not res!1786170) (not e!2706078))))

(assert (=> b!4348605 (= res!1786170 (forall!9059 (toList!2902 (extractMap!518 (t!355894 (toList!2901 lm!1707)))) lambda!138891))))

(assert (=> b!4348606 (= e!2706077 (extractMap!518 (t!355894 (toList!2901 lm!1707))))))

(declare-fun lt!1563026 () Unit!70771)

(declare-fun call!302269 () Unit!70771)

(assert (=> b!4348606 (= lt!1563026 call!302269)))

(declare-fun call!302270 () Bool)

(assert (=> b!4348606 call!302270))

(declare-fun lt!1563013 () Unit!70771)

(assert (=> b!4348606 (= lt!1563013 lt!1563026)))

(declare-fun call!302271 () Bool)

(assert (=> b!4348606 call!302271))

(declare-fun lt!1563020 () Unit!70771)

(declare-fun Unit!70830 () Unit!70771)

(assert (=> b!4348606 (= lt!1563020 Unit!70830)))

(declare-fun bm!302264 () Bool)

(assert (=> bm!302264 (= call!302269 (lemmaContainsAllItsOwnKeys!47 (extractMap!518 (t!355894 (toList!2901 lm!1707)))))))

(declare-fun b!4348607 () Bool)

(declare-fun e!2706079 () Bool)

(assert (=> b!4348607 (= e!2706079 call!302270)))

(declare-fun b!4348608 () Bool)

(assert (=> b!4348608 (= e!2706078 (invariantList!656 (toList!2902 lt!1563009)))))

(declare-fun bm!302265 () Bool)

(assert (=> bm!302265 (= call!302270 (forall!9059 (toList!2902 (extractMap!518 (t!355894 (toList!2901 lm!1707)))) (ite c!739231 lambda!138888 lambda!138890)))))

(assert (=> b!4348609 (= e!2706077 lt!1563021)))

(declare-fun lt!1563015 () ListMap!2145)

(assert (=> b!4348609 (= lt!1563015 (+!582 (extractMap!518 (t!355894 (toList!2901 lm!1707))) (h!54378 (_2!27398 (h!54379 (toList!2901 lm!1707))))))))

(assert (=> b!4348609 (= lt!1563021 (addToMapMapFromBucket!163 (t!355893 (_2!27398 (h!54379 (toList!2901 lm!1707)))) (+!582 (extractMap!518 (t!355894 (toList!2901 lm!1707))) (h!54378 (_2!27398 (h!54379 (toList!2901 lm!1707)))))))))

(declare-fun lt!1563010 () Unit!70771)

(assert (=> b!4348609 (= lt!1563010 call!302269)))

(assert (=> b!4348609 (forall!9059 (toList!2902 (extractMap!518 (t!355894 (toList!2901 lm!1707)))) lambda!138889)))

(declare-fun lt!1563022 () Unit!70771)

(assert (=> b!4348609 (= lt!1563022 lt!1563010)))

(assert (=> b!4348609 (forall!9059 (toList!2902 lt!1563015) lambda!138890)))

(declare-fun lt!1563012 () Unit!70771)

(declare-fun Unit!70831 () Unit!70771)

(assert (=> b!4348609 (= lt!1563012 Unit!70831)))

(assert (=> b!4348609 (forall!9059 (t!355893 (_2!27398 (h!54379 (toList!2901 lm!1707)))) lambda!138890)))

(declare-fun lt!1563019 () Unit!70771)

(declare-fun Unit!70832 () Unit!70771)

(assert (=> b!4348609 (= lt!1563019 Unit!70832)))

(declare-fun lt!1563027 () Unit!70771)

(declare-fun Unit!70833 () Unit!70771)

(assert (=> b!4348609 (= lt!1563027 Unit!70833)))

(declare-fun lt!1563024 () Unit!70771)

(assert (=> b!4348609 (= lt!1563024 (forallContained!1708 (toList!2902 lt!1563015) lambda!138890 (h!54378 (_2!27398 (h!54379 (toList!2901 lm!1707))))))))

(assert (=> b!4348609 (contains!11009 lt!1563015 (_1!27397 (h!54378 (_2!27398 (h!54379 (toList!2901 lm!1707))))))))

(declare-fun lt!1563023 () Unit!70771)

(declare-fun Unit!70834 () Unit!70771)

(assert (=> b!4348609 (= lt!1563023 Unit!70834)))

(assert (=> b!4348609 (contains!11009 lt!1563021 (_1!27397 (h!54378 (_2!27398 (h!54379 (toList!2901 lm!1707))))))))

(declare-fun lt!1563017 () Unit!70771)

(declare-fun Unit!70835 () Unit!70771)

(assert (=> b!4348609 (= lt!1563017 Unit!70835)))

(assert (=> b!4348609 (forall!9059 (_2!27398 (h!54379 (toList!2901 lm!1707))) lambda!138890)))

(declare-fun lt!1563011 () Unit!70771)

(declare-fun Unit!70836 () Unit!70771)

(assert (=> b!4348609 (= lt!1563011 Unit!70836)))

(assert (=> b!4348609 call!302271))

(declare-fun lt!1563016 () Unit!70771)

(declare-fun Unit!70837 () Unit!70771)

(assert (=> b!4348609 (= lt!1563016 Unit!70837)))

(declare-fun lt!1563028 () Unit!70771)

(declare-fun Unit!70838 () Unit!70771)

(assert (=> b!4348609 (= lt!1563028 Unit!70838)))

(declare-fun lt!1563018 () Unit!70771)

(assert (=> b!4348609 (= lt!1563018 (addForallContainsKeyThenBeforeAdding!47 (extractMap!518 (t!355894 (toList!2901 lm!1707))) lt!1563021 (_1!27397 (h!54378 (_2!27398 (h!54379 (toList!2901 lm!1707))))) (_2!27397 (h!54378 (_2!27398 (h!54379 (toList!2901 lm!1707)))))))))

(assert (=> b!4348609 (forall!9059 (toList!2902 (extractMap!518 (t!355894 (toList!2901 lm!1707)))) lambda!138890)))

(declare-fun lt!1563025 () Unit!70771)

(assert (=> b!4348609 (= lt!1563025 lt!1563018)))

(assert (=> b!4348609 (forall!9059 (toList!2902 (extractMap!518 (t!355894 (toList!2901 lm!1707)))) lambda!138890)))

(declare-fun lt!1563014 () Unit!70771)

(declare-fun Unit!70839 () Unit!70771)

(assert (=> b!4348609 (= lt!1563014 Unit!70839)))

(declare-fun res!1786168 () Bool)

(assert (=> b!4348609 (= res!1786168 (forall!9059 (_2!27398 (h!54379 (toList!2901 lm!1707))) lambda!138890))))

(assert (=> b!4348609 (=> (not res!1786168) (not e!2706079))))

(assert (=> b!4348609 e!2706079))

(declare-fun lt!1563029 () Unit!70771)

(declare-fun Unit!70840 () Unit!70771)

(assert (=> b!4348609 (= lt!1563029 Unit!70840)))

(declare-fun bm!302266 () Bool)

(assert (=> bm!302266 (= call!302271 (forall!9059 (ite c!739231 (toList!2902 (extractMap!518 (t!355894 (toList!2901 lm!1707)))) (toList!2902 lt!1563015)) (ite c!739231 lambda!138888 lambda!138890)))))

(assert (= (and d!1284055 c!739231) b!4348606))

(assert (= (and d!1284055 (not c!739231)) b!4348609))

(assert (= (and b!4348609 res!1786168) b!4348607))

(assert (= (or b!4348606 b!4348609) bm!302264))

(assert (= (or b!4348606 b!4348609) bm!302266))

(assert (= (or b!4348606 b!4348607) bm!302265))

(assert (= (and d!1284055 res!1786169) b!4348605))

(assert (= (and b!4348605 res!1786170) b!4348608))

(declare-fun m!4957909 () Bool)

(assert (=> b!4348608 m!4957909))

(declare-fun m!4957911 () Bool)

(assert (=> bm!302266 m!4957911))

(declare-fun m!4957913 () Bool)

(assert (=> b!4348605 m!4957913))

(assert (=> bm!302264 m!4957001))

(declare-fun m!4957915 () Bool)

(assert (=> bm!302264 m!4957915))

(declare-fun m!4957917 () Bool)

(assert (=> bm!302265 m!4957917))

(declare-fun m!4957919 () Bool)

(assert (=> d!1284055 m!4957919))

(assert (=> d!1284055 m!4957093))

(declare-fun m!4957921 () Bool)

(assert (=> b!4348609 m!4957921))

(assert (=> b!4348609 m!4957001))

(declare-fun m!4957923 () Bool)

(assert (=> b!4348609 m!4957923))

(declare-fun m!4957925 () Bool)

(assert (=> b!4348609 m!4957925))

(declare-fun m!4957927 () Bool)

(assert (=> b!4348609 m!4957927))

(declare-fun m!4957929 () Bool)

(assert (=> b!4348609 m!4957929))

(declare-fun m!4957931 () Bool)

(assert (=> b!4348609 m!4957931))

(declare-fun m!4957933 () Bool)

(assert (=> b!4348609 m!4957933))

(assert (=> b!4348609 m!4957927))

(declare-fun m!4957935 () Bool)

(assert (=> b!4348609 m!4957935))

(declare-fun m!4957937 () Bool)

(assert (=> b!4348609 m!4957937))

(assert (=> b!4348609 m!4957001))

(declare-fun m!4957939 () Bool)

(assert (=> b!4348609 m!4957939))

(assert (=> b!4348609 m!4957925))

(assert (=> b!4348609 m!4957939))

(declare-fun m!4957941 () Bool)

(assert (=> b!4348609 m!4957941))

(assert (=> b!4348086 d!1284055))

(assert (=> b!4348086 d!1283755))

(declare-fun d!1284057 () Bool)

(declare-fun lt!1563030 () Bool)

(assert (=> d!1284057 (= lt!1563030 (select (content!7670 (toList!2901 lt!1562711)) (tuple2!48209 hash!377 newBucket!200)))))

(declare-fun e!2706081 () Bool)

(assert (=> d!1284057 (= lt!1563030 e!2706081)))

(declare-fun res!1786171 () Bool)

(assert (=> d!1284057 (=> (not res!1786171) (not e!2706081))))

(assert (=> d!1284057 (= res!1786171 ((_ is Cons!48850) (toList!2901 lt!1562711)))))

(assert (=> d!1284057 (= (contains!11008 (toList!2901 lt!1562711) (tuple2!48209 hash!377 newBucket!200)) lt!1563030)))

(declare-fun b!4348610 () Bool)

(declare-fun e!2706080 () Bool)

(assert (=> b!4348610 (= e!2706081 e!2706080)))

(declare-fun res!1786172 () Bool)

(assert (=> b!4348610 (=> res!1786172 e!2706080)))

(assert (=> b!4348610 (= res!1786172 (= (h!54379 (toList!2901 lt!1562711)) (tuple2!48209 hash!377 newBucket!200)))))

(declare-fun b!4348611 () Bool)

(assert (=> b!4348611 (= e!2706080 (contains!11008 (t!355894 (toList!2901 lt!1562711)) (tuple2!48209 hash!377 newBucket!200)))))

(assert (= (and d!1284057 res!1786171) b!4348610))

(assert (= (and b!4348610 (not res!1786172)) b!4348611))

(declare-fun m!4957943 () Bool)

(assert (=> d!1284057 m!4957943))

(declare-fun m!4957945 () Bool)

(assert (=> d!1284057 m!4957945))

(declare-fun m!4957947 () Bool)

(assert (=> b!4348611 m!4957947))

(assert (=> b!4348093 d!1284057))

(declare-fun d!1284059 () Bool)

(declare-fun res!1786173 () Bool)

(declare-fun e!2706082 () Bool)

(assert (=> d!1284059 (=> res!1786173 e!2706082)))

(assert (=> d!1284059 (= res!1786173 (not ((_ is Cons!48849) (_2!27398 lt!1562574))))))

(assert (=> d!1284059 (= (noDuplicateKeys!459 (_2!27398 lt!1562574)) e!2706082)))

(declare-fun b!4348612 () Bool)

(declare-fun e!2706083 () Bool)

(assert (=> b!4348612 (= e!2706082 e!2706083)))

(declare-fun res!1786174 () Bool)

(assert (=> b!4348612 (=> (not res!1786174) (not e!2706083))))

(assert (=> b!4348612 (= res!1786174 (not (containsKey!618 (t!355893 (_2!27398 lt!1562574)) (_1!27397 (h!54378 (_2!27398 lt!1562574))))))))

(declare-fun b!4348613 () Bool)

(assert (=> b!4348613 (= e!2706083 (noDuplicateKeys!459 (t!355893 (_2!27398 lt!1562574))))))

(assert (= (and d!1284059 (not res!1786173)) b!4348612))

(assert (= (and b!4348612 res!1786174) b!4348613))

(declare-fun m!4957949 () Bool)

(assert (=> b!4348612 m!4957949))

(declare-fun m!4957951 () Bool)

(assert (=> b!4348613 m!4957951))

(assert (=> bs!628174 d!1284059))

(declare-fun d!1284061 () Bool)

(declare-fun lt!1563031 () Bool)

(assert (=> d!1284061 (= lt!1563031 (select (content!7670 (t!355894 (toList!2901 lm!1707))) lt!1562574))))

(declare-fun e!2706085 () Bool)

(assert (=> d!1284061 (= lt!1563031 e!2706085)))

(declare-fun res!1786175 () Bool)

(assert (=> d!1284061 (=> (not res!1786175) (not e!2706085))))

(assert (=> d!1284061 (= res!1786175 ((_ is Cons!48850) (t!355894 (toList!2901 lm!1707))))))

(assert (=> d!1284061 (= (contains!11008 (t!355894 (toList!2901 lm!1707)) lt!1562574) lt!1563031)))

(declare-fun b!4348614 () Bool)

(declare-fun e!2706084 () Bool)

(assert (=> b!4348614 (= e!2706085 e!2706084)))

(declare-fun res!1786176 () Bool)

(assert (=> b!4348614 (=> res!1786176 e!2706084)))

(assert (=> b!4348614 (= res!1786176 (= (h!54379 (t!355894 (toList!2901 lm!1707))) lt!1562574))))

(declare-fun b!4348615 () Bool)

(assert (=> b!4348615 (= e!2706084 (contains!11008 (t!355894 (t!355894 (toList!2901 lm!1707))) lt!1562574))))

(assert (= (and d!1284061 res!1786175) b!4348614))

(assert (= (and b!4348614 (not res!1786176)) b!4348615))

(assert (=> d!1284061 m!4957397))

(declare-fun m!4957953 () Bool)

(assert (=> d!1284061 m!4957953))

(declare-fun m!4957955 () Bool)

(assert (=> b!4348615 m!4957955))

(assert (=> b!4348117 d!1284061))

(declare-fun d!1284063 () Bool)

(assert (=> d!1284063 (= (get!15858 (getValueByKey!410 (toList!2901 lm!1707) (_1!27398 (h!54379 (toList!2901 lm!1707))))) (v!43225 (getValueByKey!410 (toList!2901 lm!1707) (_1!27398 (h!54379 (toList!2901 lm!1707))))))))

(assert (=> d!1283711 d!1284063))

(declare-fun d!1284065 () Bool)

(declare-fun c!739232 () Bool)

(assert (=> d!1284065 (= c!739232 (and ((_ is Cons!48850) (toList!2901 lm!1707)) (= (_1!27398 (h!54379 (toList!2901 lm!1707))) (_1!27398 (h!54379 (toList!2901 lm!1707))))))))

(declare-fun e!2706086 () Option!10424)

(assert (=> d!1284065 (= (getValueByKey!410 (toList!2901 lm!1707) (_1!27398 (h!54379 (toList!2901 lm!1707)))) e!2706086)))

(declare-fun b!4348619 () Bool)

(declare-fun e!2706087 () Option!10424)

(assert (=> b!4348619 (= e!2706087 None!10423)))

(declare-fun b!4348617 () Bool)

(assert (=> b!4348617 (= e!2706086 e!2706087)))

(declare-fun c!739233 () Bool)

(assert (=> b!4348617 (= c!739233 (and ((_ is Cons!48850) (toList!2901 lm!1707)) (not (= (_1!27398 (h!54379 (toList!2901 lm!1707))) (_1!27398 (h!54379 (toList!2901 lm!1707)))))))))

(declare-fun b!4348616 () Bool)

(assert (=> b!4348616 (= e!2706086 (Some!10423 (_2!27398 (h!54379 (toList!2901 lm!1707)))))))

(declare-fun b!4348618 () Bool)

(assert (=> b!4348618 (= e!2706087 (getValueByKey!410 (t!355894 (toList!2901 lm!1707)) (_1!27398 (h!54379 (toList!2901 lm!1707)))))))

(assert (= (and d!1284065 c!739232) b!4348616))

(assert (= (and d!1284065 (not c!739232)) b!4348617))

(assert (= (and b!4348617 c!739233) b!4348618))

(assert (= (and b!4348617 (not c!739233)) b!4348619))

(declare-fun m!4957957 () Bool)

(assert (=> b!4348618 m!4957957))

(assert (=> d!1283711 d!1284065))

(assert (=> b!4348120 d!1283787))

(assert (=> b!4348078 d!1284035))

(assert (=> b!4348078 d!1284037))

(declare-fun d!1284067 () Bool)

(declare-fun res!1786177 () Bool)

(declare-fun e!2706088 () Bool)

(assert (=> d!1284067 (=> res!1786177 e!2706088)))

(assert (=> d!1284067 (= res!1786177 (and ((_ is Cons!48849) (t!355893 (apply!11311 lm!1707 (_1!27398 (h!54379 (toList!2901 lm!1707)))))) (= (_1!27397 (h!54378 (t!355893 (apply!11311 lm!1707 (_1!27398 (h!54379 (toList!2901 lm!1707))))))) key!3918)))))

(assert (=> d!1284067 (= (containsKey!618 (t!355893 (apply!11311 lm!1707 (_1!27398 (h!54379 (toList!2901 lm!1707))))) key!3918) e!2706088)))

(declare-fun b!4348620 () Bool)

(declare-fun e!2706089 () Bool)

(assert (=> b!4348620 (= e!2706088 e!2706089)))

(declare-fun res!1786178 () Bool)

(assert (=> b!4348620 (=> (not res!1786178) (not e!2706089))))

(assert (=> b!4348620 (= res!1786178 ((_ is Cons!48849) (t!355893 (apply!11311 lm!1707 (_1!27398 (h!54379 (toList!2901 lm!1707)))))))))

(declare-fun b!4348621 () Bool)

(assert (=> b!4348621 (= e!2706089 (containsKey!618 (t!355893 (t!355893 (apply!11311 lm!1707 (_1!27398 (h!54379 (toList!2901 lm!1707)))))) key!3918))))

(assert (= (and d!1284067 (not res!1786177)) b!4348620))

(assert (= (and b!4348620 res!1786178) b!4348621))

(declare-fun m!4957959 () Bool)

(assert (=> b!4348621 m!4957959))

(assert (=> b!4347948 d!1284067))

(declare-fun d!1284069 () Bool)

(declare-fun res!1786179 () Bool)

(declare-fun e!2706090 () Bool)

(assert (=> d!1284069 (=> res!1786179 e!2706090)))

(assert (=> d!1284069 (= res!1786179 (and ((_ is Cons!48849) (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) (= (_1!27397 (h!54378 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))) key!3918)))))

(assert (=> d!1284069 (= (containsKey!621 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) key!3918) e!2706090)))

(declare-fun b!4348622 () Bool)

(declare-fun e!2706091 () Bool)

(assert (=> b!4348622 (= e!2706090 e!2706091)))

(declare-fun res!1786180 () Bool)

(assert (=> b!4348622 (=> (not res!1786180) (not e!2706091))))

(assert (=> b!4348622 (= res!1786180 ((_ is Cons!48849) (toList!2902 (extractMap!518 (toList!2901 lm!1707)))))))

(declare-fun b!4348623 () Bool)

(assert (=> b!4348623 (= e!2706091 (containsKey!621 (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) key!3918))))

(assert (= (and d!1284069 (not res!1786179)) b!4348622))

(assert (= (and b!4348622 res!1786180) b!4348623))

(declare-fun m!4957961 () Bool)

(assert (=> b!4348623 m!4957961))

(assert (=> d!1283773 d!1284069))

(declare-fun d!1284071 () Bool)

(assert (=> d!1284071 (isDefined!7720 (getValueByKey!411 (toList!2902 lt!1562568) key!3918))))

(declare-fun lt!1563032 () Unit!70771)

(assert (=> d!1284071 (= lt!1563032 (choose!26712 (toList!2902 lt!1562568) key!3918))))

(assert (=> d!1284071 (invariantList!656 (toList!2902 lt!1562568))))

(assert (=> d!1284071 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!323 (toList!2902 lt!1562568) key!3918) lt!1563032)))

(declare-fun bs!628309 () Bool)

(assert (= bs!628309 d!1284071))

(assert (=> bs!628309 m!4957153))

(assert (=> bs!628309 m!4957153))

(assert (=> bs!628309 m!4957155))

(declare-fun m!4957963 () Bool)

(assert (=> bs!628309 m!4957963))

(assert (=> bs!628309 m!4957773))

(assert (=> b!4348033 d!1284071))

(declare-fun d!1284073 () Bool)

(assert (=> d!1284073 (= (isDefined!7720 (getValueByKey!411 (toList!2902 lt!1562568) key!3918)) (not (isEmpty!28162 (getValueByKey!411 (toList!2902 lt!1562568) key!3918))))))

(declare-fun bs!628310 () Bool)

(assert (= bs!628310 d!1284073))

(assert (=> bs!628310 m!4957153))

(declare-fun m!4957965 () Bool)

(assert (=> bs!628310 m!4957965))

(assert (=> b!4348033 d!1284073))

(declare-fun b!4348627 () Bool)

(declare-fun e!2706093 () Option!10425)

(assert (=> b!4348627 (= e!2706093 None!10424)))

(declare-fun b!4348624 () Bool)

(declare-fun e!2706092 () Option!10425)

(assert (=> b!4348624 (= e!2706092 (Some!10424 (_2!27397 (h!54378 (toList!2902 lt!1562568)))))))

(declare-fun d!1284075 () Bool)

(declare-fun c!739234 () Bool)

(assert (=> d!1284075 (= c!739234 (and ((_ is Cons!48849) (toList!2902 lt!1562568)) (= (_1!27397 (h!54378 (toList!2902 lt!1562568))) key!3918)))))

(assert (=> d!1284075 (= (getValueByKey!411 (toList!2902 lt!1562568) key!3918) e!2706092)))

(declare-fun b!4348625 () Bool)

(assert (=> b!4348625 (= e!2706092 e!2706093)))

(declare-fun c!739235 () Bool)

(assert (=> b!4348625 (= c!739235 (and ((_ is Cons!48849) (toList!2902 lt!1562568)) (not (= (_1!27397 (h!54378 (toList!2902 lt!1562568))) key!3918))))))

(declare-fun b!4348626 () Bool)

(assert (=> b!4348626 (= e!2706093 (getValueByKey!411 (t!355893 (toList!2902 lt!1562568)) key!3918))))

(assert (= (and d!1284075 c!739234) b!4348624))

(assert (= (and d!1284075 (not c!739234)) b!4348625))

(assert (= (and b!4348625 c!739235) b!4348626))

(assert (= (and b!4348625 (not c!739235)) b!4348627))

(declare-fun m!4957967 () Bool)

(assert (=> b!4348626 m!4957967))

(assert (=> b!4348033 d!1284075))

(declare-fun d!1284077 () Bool)

(assert (=> d!1284077 (contains!11012 (getKeysList!104 (toList!2902 lt!1562568)) key!3918)))

(declare-fun lt!1563033 () Unit!70771)

(assert (=> d!1284077 (= lt!1563033 (choose!26713 (toList!2902 lt!1562568) key!3918))))

(assert (=> d!1284077 (invariantList!656 (toList!2902 lt!1562568))))

(assert (=> d!1284077 (= (lemmaInListThenGetKeysListContains!101 (toList!2902 lt!1562568) key!3918) lt!1563033)))

(declare-fun bs!628311 () Bool)

(assert (= bs!628311 d!1284077))

(assert (=> bs!628311 m!4957157))

(assert (=> bs!628311 m!4957157))

(declare-fun m!4957969 () Bool)

(assert (=> bs!628311 m!4957969))

(declare-fun m!4957971 () Bool)

(assert (=> bs!628311 m!4957971))

(assert (=> bs!628311 m!4957773))

(assert (=> b!4348033 d!1284077))

(declare-fun d!1284079 () Bool)

(declare-fun res!1786181 () Bool)

(declare-fun e!2706094 () Bool)

(assert (=> d!1284079 (=> res!1786181 e!2706094)))

(assert (=> d!1284079 (= res!1786181 (and ((_ is Cons!48849) (t!355893 (_2!27398 (h!54379 (toList!2901 lm!1707))))) (= (_1!27397 (h!54378 (t!355893 (_2!27398 (h!54379 (toList!2901 lm!1707)))))) key!3918)))))

(assert (=> d!1284079 (= (containsKey!618 (t!355893 (_2!27398 (h!54379 (toList!2901 lm!1707)))) key!3918) e!2706094)))

(declare-fun b!4348628 () Bool)

(declare-fun e!2706095 () Bool)

(assert (=> b!4348628 (= e!2706094 e!2706095)))

(declare-fun res!1786182 () Bool)

(assert (=> b!4348628 (=> (not res!1786182) (not e!2706095))))

(assert (=> b!4348628 (= res!1786182 ((_ is Cons!48849) (t!355893 (_2!27398 (h!54379 (toList!2901 lm!1707))))))))

(declare-fun b!4348629 () Bool)

(assert (=> b!4348629 (= e!2706095 (containsKey!618 (t!355893 (t!355893 (_2!27398 (h!54379 (toList!2901 lm!1707))))) key!3918))))

(assert (= (and d!1284079 (not res!1786181)) b!4348628))

(assert (= (and b!4348628 res!1786182) b!4348629))

(declare-fun m!4957973 () Bool)

(assert (=> b!4348629 m!4957973))

(assert (=> b!4348140 d!1284079))

(assert (=> b!4348029 d!1284073))

(assert (=> b!4348029 d!1284075))

(assert (=> b!4348080 d!1284037))

(assert (=> d!1283801 d!1284047))

(declare-fun d!1284081 () Bool)

(declare-fun res!1786183 () Bool)

(declare-fun e!2706096 () Bool)

(assert (=> d!1284081 (=> res!1786183 e!2706096)))

(assert (=> d!1284081 (= res!1786183 ((_ is Nil!48850) (toList!2901 (+!580 lm!1707 (tuple2!48209 hash!377 newBucket!200)))))))

(assert (=> d!1284081 (= (forall!9057 (toList!2901 (+!580 lm!1707 (tuple2!48209 hash!377 newBucket!200))) lambda!138747) e!2706096)))

(declare-fun b!4348630 () Bool)

(declare-fun e!2706097 () Bool)

(assert (=> b!4348630 (= e!2706096 e!2706097)))

(declare-fun res!1786184 () Bool)

(assert (=> b!4348630 (=> (not res!1786184) (not e!2706097))))

(assert (=> b!4348630 (= res!1786184 (dynLambda!20601 lambda!138747 (h!54379 (toList!2901 (+!580 lm!1707 (tuple2!48209 hash!377 newBucket!200))))))))

(declare-fun b!4348631 () Bool)

(assert (=> b!4348631 (= e!2706097 (forall!9057 (t!355894 (toList!2901 (+!580 lm!1707 (tuple2!48209 hash!377 newBucket!200)))) lambda!138747))))

(assert (= (and d!1284081 (not res!1786183)) b!4348630))

(assert (= (and b!4348630 res!1786184) b!4348631))

(declare-fun b_lambda!130283 () Bool)

(assert (=> (not b_lambda!130283) (not b!4348630)))

(declare-fun m!4957975 () Bool)

(assert (=> b!4348630 m!4957975))

(declare-fun m!4957977 () Bool)

(assert (=> b!4348631 m!4957977))

(assert (=> d!1283779 d!1284081))

(assert (=> d!1283779 d!1283777))

(declare-fun d!1284083 () Bool)

(assert (=> d!1284083 (forall!9057 (toList!2901 (+!580 lm!1707 (tuple2!48209 hash!377 newBucket!200))) lambda!138747)))

(assert (=> d!1284083 true))

(declare-fun _$31!196 () Unit!70771)

(assert (=> d!1284083 (= (choose!26702 lm!1707 lambda!138747 hash!377 newBucket!200) _$31!196)))

(declare-fun bs!628312 () Bool)

(assert (= bs!628312 d!1284083))

(assert (=> bs!628312 m!4957017))

(assert (=> bs!628312 m!4957275))

(assert (=> d!1283779 d!1284083))

(assert (=> d!1283779 d!1283781))

(declare-fun d!1284085 () Bool)

(assert (=> d!1284085 (dynLambda!20601 lambda!138747 lt!1562574)))

(assert (=> d!1284085 true))

(declare-fun _$7!1441 () Unit!70771)

(assert (=> d!1284085 (= (choose!26703 (toList!2901 lm!1707) lambda!138747 lt!1562574) _$7!1441)))

(declare-fun b_lambda!130285 () Bool)

(assert (=> (not b_lambda!130285) (not d!1284085)))

(declare-fun bs!628313 () Bool)

(assert (= bs!628313 d!1284085))

(assert (=> bs!628313 m!4957301))

(assert (=> d!1283789 d!1284085))

(assert (=> d!1283789 d!1283781))

(assert (=> b!4348082 d!1284069))

(declare-fun d!1284087 () Bool)

(assert (=> d!1284087 (containsKey!621 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) key!3918)))

(declare-fun lt!1563034 () Unit!70771)

(assert (=> d!1284087 (= lt!1563034 (choose!26709 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) key!3918))))

(assert (=> d!1284087 (invariantList!656 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))))

(assert (=> d!1284087 (= (lemmaInGetKeysListThenContainsKey!102 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) key!3918) lt!1563034)))

(declare-fun bs!628314 () Bool)

(assert (= bs!628314 d!1284087))

(assert (=> bs!628314 m!4957241))

(declare-fun m!4957979 () Bool)

(assert (=> bs!628314 m!4957979))

(assert (=> bs!628314 m!4957795))

(assert (=> b!4348082 d!1284087))

(assert (=> d!1283743 d!1283715))

(assert (=> d!1283743 d!1283711))

(declare-fun d!1284089 () Bool)

(assert (=> d!1284089 (not (containsKey!618 (apply!11311 lm!1707 (_1!27398 (h!54379 (toList!2901 lm!1707)))) key!3918))))

(assert (=> d!1284089 true))

(declare-fun _$39!244 () Unit!70771)

(assert (=> d!1284089 (= (choose!26701 lm!1707 key!3918 (_1!27398 (h!54379 (toList!2901 lm!1707))) hashF!1247) _$39!244)))

(declare-fun bs!628315 () Bool)

(assert (= bs!628315 d!1284089))

(assert (=> bs!628315 m!4957011))

(assert (=> bs!628315 m!4957011))

(assert (=> bs!628315 m!4957013))

(assert (=> d!1283743 d!1284089))

(declare-fun d!1284091 () Bool)

(declare-fun res!1786185 () Bool)

(declare-fun e!2706098 () Bool)

(assert (=> d!1284091 (=> res!1786185 e!2706098)))

(assert (=> d!1284091 (= res!1786185 ((_ is Nil!48850) (toList!2901 lm!1707)))))

(assert (=> d!1284091 (= (forall!9057 (toList!2901 lm!1707) lambda!138759) e!2706098)))

(declare-fun b!4348633 () Bool)

(declare-fun e!2706099 () Bool)

(assert (=> b!4348633 (= e!2706098 e!2706099)))

(declare-fun res!1786186 () Bool)

(assert (=> b!4348633 (=> (not res!1786186) (not e!2706099))))

(assert (=> b!4348633 (= res!1786186 (dynLambda!20601 lambda!138759 (h!54379 (toList!2901 lm!1707))))))

(declare-fun b!4348634 () Bool)

(assert (=> b!4348634 (= e!2706099 (forall!9057 (t!355894 (toList!2901 lm!1707)) lambda!138759))))

(assert (= (and d!1284091 (not res!1786185)) b!4348633))

(assert (= (and b!4348633 res!1786186) b!4348634))

(declare-fun b_lambda!130287 () Bool)

(assert (=> (not b_lambda!130287) (not b!4348633)))

(declare-fun m!4957981 () Bool)

(assert (=> b!4348633 m!4957981))

(declare-fun m!4957983 () Bool)

(assert (=> b!4348634 m!4957983))

(assert (=> d!1283743 d!1284091))

(declare-fun d!1284093 () Bool)

(declare-fun res!1786191 () Bool)

(declare-fun e!2706104 () Bool)

(assert (=> d!1284093 (=> res!1786191 e!2706104)))

(assert (=> d!1284093 (= res!1786191 (and ((_ is Cons!48850) (toList!2901 lm!1707)) (= (_1!27398 (h!54379 (toList!2901 lm!1707))) hash!377)))))

(assert (=> d!1284093 (= (containsKey!622 (toList!2901 lm!1707) hash!377) e!2706104)))

(declare-fun b!4348639 () Bool)

(declare-fun e!2706105 () Bool)

(assert (=> b!4348639 (= e!2706104 e!2706105)))

(declare-fun res!1786192 () Bool)

(assert (=> b!4348639 (=> (not res!1786192) (not e!2706105))))

(assert (=> b!4348639 (= res!1786192 (and (or (not ((_ is Cons!48850) (toList!2901 lm!1707))) (bvsle (_1!27398 (h!54379 (toList!2901 lm!1707))) hash!377)) ((_ is Cons!48850) (toList!2901 lm!1707)) (bvslt (_1!27398 (h!54379 (toList!2901 lm!1707))) hash!377)))))

(declare-fun b!4348640 () Bool)

(assert (=> b!4348640 (= e!2706105 (containsKey!622 (t!355894 (toList!2901 lm!1707)) hash!377))))

(assert (= (and d!1284093 (not res!1786191)) b!4348639))

(assert (= (and b!4348639 res!1786192) b!4348640))

(declare-fun m!4957985 () Bool)

(assert (=> b!4348640 m!4957985))

(assert (=> d!1283795 d!1284093))

(declare-fun d!1284095 () Bool)

(declare-fun lt!1563035 () Bool)

(assert (=> d!1284095 (= lt!1563035 (select (content!7672 e!2705744) key!3918))))

(declare-fun e!2706107 () Bool)

(assert (=> d!1284095 (= lt!1563035 e!2706107)))

(declare-fun res!1786194 () Bool)

(assert (=> d!1284095 (=> (not res!1786194) (not e!2706107))))

(assert (=> d!1284095 (= res!1786194 ((_ is Cons!48852) e!2705744))))

(assert (=> d!1284095 (= (contains!11012 e!2705744 key!3918) lt!1563035)))

(declare-fun b!4348641 () Bool)

(declare-fun e!2706106 () Bool)

(assert (=> b!4348641 (= e!2706107 e!2706106)))

(declare-fun res!1786193 () Bool)

(assert (=> b!4348641 (=> res!1786193 e!2706106)))

(assert (=> b!4348641 (= res!1786193 (= (h!54383 e!2705744) key!3918))))

(declare-fun b!4348642 () Bool)

(assert (=> b!4348642 (= e!2706106 (contains!11012 (t!355896 e!2705744) key!3918))))

(assert (= (and d!1284095 res!1786194) b!4348641))

(assert (= (and b!4348641 (not res!1786193)) b!4348642))

(declare-fun m!4957987 () Bool)

(assert (=> d!1284095 m!4957987))

(declare-fun m!4957989 () Bool)

(assert (=> d!1284095 m!4957989))

(declare-fun m!4957991 () Bool)

(assert (=> b!4348642 m!4957991))

(assert (=> bm!302224 d!1284095))

(assert (=> b!4348123 d!1283997))

(assert (=> b!4348035 d!1283841))

(assert (=> b!4348035 d!1283845))

(declare-fun d!1284097 () Bool)

(declare-fun res!1786195 () Bool)

(declare-fun e!2706108 () Bool)

(assert (=> d!1284097 (=> res!1786195 e!2706108)))

(assert (=> d!1284097 (= res!1786195 (and ((_ is Cons!48849) (t!355893 newBucket!200)) (= (_1!27397 (h!54378 (t!355893 newBucket!200))) (_1!27397 (h!54378 newBucket!200)))))))

(assert (=> d!1284097 (= (containsKey!618 (t!355893 newBucket!200) (_1!27397 (h!54378 newBucket!200))) e!2706108)))

(declare-fun b!4348643 () Bool)

(declare-fun e!2706109 () Bool)

(assert (=> b!4348643 (= e!2706108 e!2706109)))

(declare-fun res!1786196 () Bool)

(assert (=> b!4348643 (=> (not res!1786196) (not e!2706109))))

(assert (=> b!4348643 (= res!1786196 ((_ is Cons!48849) (t!355893 newBucket!200)))))

(declare-fun b!4348644 () Bool)

(assert (=> b!4348644 (= e!2706109 (containsKey!618 (t!355893 (t!355893 newBucket!200)) (_1!27397 (h!54378 newBucket!200))))))

(assert (= (and d!1284097 (not res!1786195)) b!4348643))

(assert (= (and b!4348643 res!1786196) b!4348644))

(declare-fun m!4957993 () Bool)

(assert (=> b!4348644 m!4957993))

(assert (=> b!4348137 d!1284097))

(assert (=> d!1283719 d!1283729))

(declare-fun d!1284099 () Bool)

(assert (=> d!1284099 (contains!11009 lt!1562568 key!3918)))

(assert (=> d!1284099 true))

(declare-fun _$11!1125 () Unit!70771)

(assert (=> d!1284099 (= (choose!26700 (_2!27398 (h!54379 (toList!2901 lm!1707))) key!3918 newValue!99 lt!1562568) _$11!1125)))

(declare-fun bs!628316 () Bool)

(assert (= bs!628316 d!1284099))

(assert (=> bs!628316 m!4957007))

(assert (=> d!1283719 d!1284099))

(assert (=> d!1283719 d!1284033))

(declare-fun bs!628317 () Bool)

(declare-fun b!4348645 () Bool)

(assert (= bs!628317 (and b!4348645 b!4348268)))

(declare-fun lambda!138892 () Int)

(assert (=> bs!628317 (= (= (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) (toList!2902 lt!1562568)) (= lambda!138892 lambda!138817))))

(declare-fun bs!628318 () Bool)

(assert (= bs!628318 (and b!4348645 b!4348585)))

(assert (=> bs!628318 (= (= (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) (= lambda!138892 lambda!138886))))

(declare-fun bs!628319 () Bool)

(assert (= bs!628319 (and b!4348645 b!4348573)))

(assert (=> bs!628319 (= (= (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) (Cons!48849 (h!54378 (toList!2902 lt!1562568)) (t!355893 (toList!2902 lt!1562568)))) (= lambda!138892 lambda!138883))))

(declare-fun bs!628320 () Bool)

(assert (= bs!628320 (and b!4348645 b!4348567)))

(assert (=> bs!628320 (= (= (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) (t!355893 (toList!2902 lt!1562568))) (= lambda!138892 lambda!138882))))

(declare-fun bs!628321 () Bool)

(assert (= bs!628321 (and b!4348645 b!4348571)))

(assert (=> bs!628321 (= (= (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) (toList!2902 lt!1562568)) (= lambda!138892 lambda!138884))))

(assert (=> b!4348645 true))

(declare-fun bs!628322 () Bool)

(declare-fun b!4348651 () Bool)

(assert (= bs!628322 (and b!4348651 b!4348268)))

(declare-fun lambda!138893 () Int)

(assert (=> bs!628322 (= (= (Cons!48849 (h!54378 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))) (toList!2902 lt!1562568)) (= lambda!138893 lambda!138817))))

(declare-fun bs!628323 () Bool)

(assert (= bs!628323 (and b!4348651 b!4348585)))

(assert (=> bs!628323 (= (= (Cons!48849 (h!54378 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))) (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) (= lambda!138893 lambda!138886))))

(declare-fun bs!628324 () Bool)

(assert (= bs!628324 (and b!4348651 b!4348573)))

(assert (=> bs!628324 (= (= (Cons!48849 (h!54378 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))) (Cons!48849 (h!54378 (toList!2902 lt!1562568)) (t!355893 (toList!2902 lt!1562568)))) (= lambda!138893 lambda!138883))))

(declare-fun bs!628325 () Bool)

(assert (= bs!628325 (and b!4348651 b!4348567)))

(assert (=> bs!628325 (= (= (Cons!48849 (h!54378 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))) (t!355893 (toList!2902 lt!1562568))) (= lambda!138893 lambda!138882))))

(declare-fun bs!628326 () Bool)

(assert (= bs!628326 (and b!4348651 b!4348571)))

(assert (=> bs!628326 (= (= (Cons!48849 (h!54378 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))) (toList!2902 lt!1562568)) (= lambda!138893 lambda!138884))))

(declare-fun bs!628327 () Bool)

(assert (= bs!628327 (and b!4348651 b!4348645)))

(assert (=> bs!628327 (= (= (Cons!48849 (h!54378 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))) (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))) (= lambda!138893 lambda!138892))))

(assert (=> b!4348651 true))

(declare-fun bs!628328 () Bool)

(declare-fun b!4348649 () Bool)

(assert (= bs!628328 (and b!4348649 b!4348268)))

(declare-fun lambda!138894 () Int)

(assert (=> bs!628328 (= (= (toList!2902 (extractMap!518 (toList!2901 lm!1707))) (toList!2902 lt!1562568)) (= lambda!138894 lambda!138817))))

(declare-fun bs!628329 () Bool)

(assert (= bs!628329 (and b!4348649 b!4348585)))

(assert (=> bs!628329 (= lambda!138894 lambda!138886)))

(declare-fun bs!628330 () Bool)

(assert (= bs!628330 (and b!4348649 b!4348573)))

(assert (=> bs!628330 (= (= (toList!2902 (extractMap!518 (toList!2901 lm!1707))) (Cons!48849 (h!54378 (toList!2902 lt!1562568)) (t!355893 (toList!2902 lt!1562568)))) (= lambda!138894 lambda!138883))))

(declare-fun bs!628331 () Bool)

(assert (= bs!628331 (and b!4348649 b!4348567)))

(assert (=> bs!628331 (= (= (toList!2902 (extractMap!518 (toList!2901 lm!1707))) (t!355893 (toList!2902 lt!1562568))) (= lambda!138894 lambda!138882))))

(declare-fun bs!628332 () Bool)

(assert (= bs!628332 (and b!4348649 b!4348571)))

(assert (=> bs!628332 (= (= (toList!2902 (extractMap!518 (toList!2901 lm!1707))) (toList!2902 lt!1562568)) (= lambda!138894 lambda!138884))))

(declare-fun bs!628333 () Bool)

(assert (= bs!628333 (and b!4348649 b!4348651)))

(assert (=> bs!628333 (= (= (toList!2902 (extractMap!518 (toList!2901 lm!1707))) (Cons!48849 (h!54378 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))))) (= lambda!138894 lambda!138893))))

(declare-fun bs!628334 () Bool)

(assert (= bs!628334 (and b!4348649 b!4348645)))

(assert (=> bs!628334 (= (= (toList!2902 (extractMap!518 (toList!2901 lm!1707))) (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))) (= lambda!138894 lambda!138892))))

(assert (=> b!4348649 true))

(declare-fun bs!628335 () Bool)

(declare-fun b!4348646 () Bool)

(assert (= bs!628335 (and b!4348646 b!4348269)))

(declare-fun lambda!138895 () Int)

(assert (=> bs!628335 (= lambda!138895 lambda!138818)))

(declare-fun bs!628336 () Bool)

(assert (= bs!628336 (and b!4348646 b!4348568)))

(assert (=> bs!628336 (= lambda!138895 lambda!138885)))

(declare-fun bs!628337 () Bool)

(assert (= bs!628337 (and b!4348646 b!4348586)))

(assert (=> bs!628337 (= lambda!138895 lambda!138887)))

(assert (=> b!4348645 false))

(declare-fun lt!1563041 () Unit!70771)

(assert (=> b!4348645 (= lt!1563041 (forallContained!1709 (getKeysList!104 (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))) lambda!138892 (_1!27397 (h!54378 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))))))))

(declare-fun e!2706111 () Unit!70771)

(declare-fun Unit!70841 () Unit!70771)

(assert (=> b!4348645 (= e!2706111 Unit!70841)))

(declare-fun e!2706113 () Bool)

(declare-fun lt!1563039 () List!48976)

(assert (=> b!4348646 (= e!2706113 (= (content!7672 lt!1563039) (content!7672 (map!10618 (toList!2902 (extractMap!518 (toList!2901 lm!1707))) lambda!138895))))))

(declare-fun b!4348647 () Bool)

(declare-fun res!1786198 () Bool)

(assert (=> b!4348647 (=> (not res!1786198) (not e!2706113))))

(assert (=> b!4348647 (= res!1786198 (= (length!40 lt!1563039) (length!41 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))))))

(declare-fun b!4348648 () Bool)

(declare-fun Unit!70842 () Unit!70771)

(assert (=> b!4348648 (= e!2706111 Unit!70842)))

(declare-fun b!4348650 () Bool)

(declare-fun e!2706110 () List!48976)

(assert (=> b!4348650 (= e!2706110 Nil!48852)))

(assert (=> b!4348651 (= e!2706110 (Cons!48852 (_1!27397 (h!54378 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))) (getKeysList!104 (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))))))))

(declare-fun c!739238 () Bool)

(assert (=> b!4348651 (= c!739238 (containsKey!621 (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) (_1!27397 (h!54378 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))))))))

(declare-fun lt!1563040 () Unit!70771)

(declare-fun e!2706112 () Unit!70771)

(assert (=> b!4348651 (= lt!1563040 e!2706112)))

(declare-fun c!739236 () Bool)

(assert (=> b!4348651 (= c!739236 (contains!11012 (getKeysList!104 (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))) (_1!27397 (h!54378 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))))))))

(declare-fun lt!1563042 () Unit!70771)

(assert (=> b!4348651 (= lt!1563042 e!2706111)))

(declare-fun lt!1563037 () List!48976)

(assert (=> b!4348651 (= lt!1563037 (getKeysList!104 (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))))))

(declare-fun lt!1563036 () Unit!70771)

(assert (=> b!4348651 (= lt!1563036 (lemmaForallContainsAddHeadPreserves!14 (t!355893 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) lt!1563037 (h!54378 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))))))

(assert (=> b!4348651 (forall!9061 lt!1563037 lambda!138893)))

(declare-fun lt!1563038 () Unit!70771)

(assert (=> b!4348651 (= lt!1563038 lt!1563036)))

(declare-fun res!1786197 () Bool)

(assert (=> b!4348649 (=> (not res!1786197) (not e!2706113))))

(assert (=> b!4348649 (= res!1786197 (forall!9061 lt!1563039 lambda!138894))))

(declare-fun d!1284101 () Bool)

(assert (=> d!1284101 e!2706113))

(declare-fun res!1786199 () Bool)

(assert (=> d!1284101 (=> (not res!1786199) (not e!2706113))))

(assert (=> d!1284101 (= res!1786199 (noDuplicate!592 lt!1563039))))

(assert (=> d!1284101 (= lt!1563039 e!2706110)))

(declare-fun c!739237 () Bool)

(assert (=> d!1284101 (= c!739237 ((_ is Cons!48849) (toList!2902 (extractMap!518 (toList!2901 lm!1707)))))))

(assert (=> d!1284101 (invariantList!656 (toList!2902 (extractMap!518 (toList!2901 lm!1707))))))

(assert (=> d!1284101 (= (getKeysList!104 (toList!2902 (extractMap!518 (toList!2901 lm!1707)))) lt!1563039)))

(declare-fun b!4348652 () Bool)

(declare-fun Unit!70843 () Unit!70771)

(assert (=> b!4348652 (= e!2706112 Unit!70843)))

(declare-fun b!4348653 () Bool)

(assert (=> b!4348653 false))

(declare-fun Unit!70844 () Unit!70771)

(assert (=> b!4348653 (= e!2706112 Unit!70844)))

(assert (= (and d!1284101 c!739237) b!4348651))

(assert (= (and d!1284101 (not c!739237)) b!4348650))

(assert (= (and b!4348651 c!739238) b!4348653))

(assert (= (and b!4348651 (not c!739238)) b!4348652))

(assert (= (and b!4348651 c!739236) b!4348645))

(assert (= (and b!4348651 (not c!739236)) b!4348648))

(assert (= (and d!1284101 res!1786199) b!4348647))

(assert (= (and b!4348647 res!1786198) b!4348649))

(assert (= (and b!4348649 res!1786197) b!4348646))

(declare-fun m!4957995 () Bool)

(assert (=> b!4348645 m!4957995))

(assert (=> b!4348645 m!4957995))

(declare-fun m!4957997 () Bool)

(assert (=> b!4348645 m!4957997))

(declare-fun m!4957999 () Bool)

(assert (=> b!4348651 m!4957999))

(declare-fun m!4958001 () Bool)

(assert (=> b!4348651 m!4958001))

(assert (=> b!4348651 m!4957995))

(declare-fun m!4958003 () Bool)

(assert (=> b!4348651 m!4958003))

(assert (=> b!4348651 m!4957995))

(declare-fun m!4958005 () Bool)

(assert (=> b!4348651 m!4958005))

(declare-fun m!4958007 () Bool)

(assert (=> d!1284101 m!4958007))

(assert (=> d!1284101 m!4957795))

(declare-fun m!4958009 () Bool)

(assert (=> b!4348646 m!4958009))

(declare-fun m!4958011 () Bool)

(assert (=> b!4348646 m!4958011))

(assert (=> b!4348646 m!4958011))

(declare-fun m!4958013 () Bool)

(assert (=> b!4348646 m!4958013))

(declare-fun m!4958015 () Bool)

(assert (=> b!4348647 m!4958015))

(assert (=> b!4348647 m!4957877))

(declare-fun m!4958017 () Bool)

(assert (=> b!4348649 m!4958017))

(assert (=> b!4348084 d!1284101))

(declare-fun e!2706114 () Bool)

(declare-fun tp!1329729 () Bool)

(declare-fun b!4348654 () Bool)

(assert (=> b!4348654 (= e!2706114 (and tp_is_empty!25073 tp_is_empty!25075 tp!1329729))))

(assert (=> b!4348151 (= tp!1329720 e!2706114)))

(assert (= (and b!4348151 ((_ is Cons!48849) (_2!27398 (h!54379 (toList!2901 lm!1707))))) b!4348654))

(declare-fun b!4348655 () Bool)

(declare-fun e!2706115 () Bool)

(declare-fun tp!1329730 () Bool)

(declare-fun tp!1329731 () Bool)

(assert (=> b!4348655 (= e!2706115 (and tp!1329730 tp!1329731))))

(assert (=> b!4348151 (= tp!1329721 e!2706115)))

(assert (= (and b!4348151 ((_ is Cons!48850) (t!355894 (toList!2901 lm!1707)))) b!4348655))

(declare-fun e!2706116 () Bool)

(declare-fun tp!1329732 () Bool)

(declare-fun b!4348656 () Bool)

(assert (=> b!4348656 (= e!2706116 (and tp_is_empty!25073 tp_is_empty!25075 tp!1329732))))

(assert (=> b!4348156 (= tp!1329724 e!2706116)))

(assert (= (and b!4348156 ((_ is Cons!48849) (t!355893 (t!355893 newBucket!200)))) b!4348656))

(declare-fun b_lambda!130289 () Bool)

(assert (= b_lambda!130273 (or start!419796 b_lambda!130289)))

(declare-fun bs!628338 () Bool)

(declare-fun d!1284103 () Bool)

(assert (= bs!628338 (and d!1284103 start!419796)))

(assert (=> bs!628338 (= (dynLambda!20601 lambda!138747 (h!54379 (t!355894 (toList!2901 lm!1707)))) (noDuplicateKeys!459 (_2!27398 (h!54379 (t!355894 (toList!2901 lm!1707))))))))

(assert (=> bs!628338 m!4957733))

(assert (=> b!4348481 d!1284103))

(declare-fun b_lambda!130291 () Bool)

(assert (= b_lambda!130283 (or start!419796 b_lambda!130291)))

(declare-fun bs!628339 () Bool)

(declare-fun d!1284105 () Bool)

(assert (= bs!628339 (and d!1284105 start!419796)))

(assert (=> bs!628339 (= (dynLambda!20601 lambda!138747 (h!54379 (toList!2901 (+!580 lm!1707 (tuple2!48209 hash!377 newBucket!200))))) (noDuplicateKeys!459 (_2!27398 (h!54379 (toList!2901 (+!580 lm!1707 (tuple2!48209 hash!377 newBucket!200)))))))))

(declare-fun m!4958019 () Bool)

(assert (=> bs!628339 m!4958019))

(assert (=> b!4348630 d!1284105))

(declare-fun b_lambda!130293 () Bool)

(assert (= b_lambda!130277 (or start!419796 b_lambda!130293)))

(declare-fun bs!628340 () Bool)

(declare-fun d!1284107 () Bool)

(assert (= bs!628340 (and d!1284107 start!419796)))

(assert (=> bs!628340 (= (dynLambda!20601 lambda!138747 (h!54379 (t!355894 (toList!2901 lt!1562573)))) (noDuplicateKeys!459 (_2!27398 (h!54379 (t!355894 (toList!2901 lt!1562573))))))))

(declare-fun m!4958021 () Bool)

(assert (=> bs!628340 m!4958021))

(assert (=> b!4348547 d!1284107))

(declare-fun b_lambda!130295 () Bool)

(assert (= b_lambda!130285 (or start!419796 b_lambda!130295)))

(assert (=> d!1284085 d!1283811))

(declare-fun b_lambda!130297 () Bool)

(assert (= b_lambda!130287 (or d!1283743 b_lambda!130297)))

(declare-fun bs!628341 () Bool)

(declare-fun d!1284109 () Bool)

(assert (= bs!628341 (and d!1284109 d!1283743)))

(assert (=> bs!628341 (= (dynLambda!20601 lambda!138759 (h!54379 (toList!2901 lm!1707))) (noDuplicateKeys!459 (_2!27398 (h!54379 (toList!2901 lm!1707)))))))

(assert (=> bs!628341 m!4957093))

(assert (=> b!4348633 d!1284109))

(declare-fun b_lambda!130299 () Bool)

(assert (= b_lambda!130275 (or d!1283805 b_lambda!130299)))

(declare-fun bs!628342 () Bool)

(declare-fun d!1284111 () Bool)

(assert (= bs!628342 (and d!1284111 d!1283805)))

(assert (=> bs!628342 (= (dynLambda!20601 lambda!138773 (h!54379 (toList!2901 lm!1707))) (allKeysSameHash!417 (_2!27398 (h!54379 (toList!2901 lm!1707))) (_1!27398 (h!54379 (toList!2901 lm!1707))) hashF!1247))))

(declare-fun m!4958023 () Bool)

(assert (=> bs!628342 m!4958023))

(assert (=> b!4348545 d!1284111))

(declare-fun b_lambda!130301 () Bool)

(assert (= b_lambda!130235 (or d!1283755 b_lambda!130301)))

(declare-fun bs!628343 () Bool)

(declare-fun d!1284113 () Bool)

(assert (= bs!628343 (and d!1284113 d!1283755)))

(assert (=> bs!628343 (= (dynLambda!20601 lambda!138766 (h!54379 (t!355894 (toList!2901 lm!1707)))) (noDuplicateKeys!459 (_2!27398 (h!54379 (t!355894 (toList!2901 lm!1707))))))))

(assert (=> bs!628343 m!4957733))

(assert (=> b!4348202 d!1284113))

(declare-fun b_lambda!130303 () Bool)

(assert (= b_lambda!130281 (or d!1283775 b_lambda!130303)))

(declare-fun bs!628344 () Bool)

(declare-fun d!1284115 () Bool)

(assert (= bs!628344 (and d!1284115 d!1283775)))

(assert (=> bs!628344 (= (dynLambda!20601 lambda!138767 (h!54379 (toList!2901 lm!1707))) (noDuplicateKeys!459 (_2!27398 (h!54379 (toList!2901 lm!1707)))))))

(assert (=> bs!628344 m!4957093))

(assert (=> b!4348603 d!1284115))

(declare-fun b_lambda!130305 () Bool)

(assert (= b_lambda!130279 (or d!1283803 b_lambda!130305)))

(declare-fun bs!628345 () Bool)

(declare-fun d!1284117 () Bool)

(assert (= bs!628345 (and d!1284117 d!1283803)))

(assert (=> bs!628345 (= (dynLambda!20603 lambda!138770 (h!54378 newBucket!200)) (= (hash!1450 hashF!1247 (_1!27397 (h!54378 newBucket!200))) hash!377))))

(declare-fun m!4958025 () Bool)

(assert (=> bs!628345 m!4958025))

(assert (=> b!4348601 d!1284117))

(check-sat (not b!4348629) (not d!1284087) (not b!4348583) (not b!4348544) (not d!1283845) (not b!4348640) (not b!4348215) (not b!4348644) (not b!4348590) (not b_lambda!130233) (not b!4348609) (not b!4348623) (not d!1283991) (not d!1284007) (not b!4348500) (not b!4348568) (not b!4348463) (not b!4348502) (not d!1284061) (not b!4348535) (not b!4348479) (not b!4348651) (not d!1284041) (not d!1284037) (not bm!302262) (not b!4348507) (not b!4348480) (not b!4348189) (not d!1284045) (not bs!628344) (not d!1284043) (not b!4348618) (not b!4348513) (not b!4348634) (not d!1284021) (not bm!302265) (not bs!628340) (not d!1284009) (not d!1284083) tp_is_empty!25075 (not b_lambda!130303) (not bm!302266) (not b!4348608) (not d!1284071) (not bs!628343) (not b!4348612) (not b!4348276) (not d!1284073) (not b!4348268) (not d!1284029) (not b!4348573) (not bs!628339) (not b_lambda!130293) (not d!1283839) (not b!4348232) (not b_lambda!130301) (not b!4348464) (not b!4348655) (not d!1284015) (not b!4348586) (not b!4348567) (not d!1283841) (not b!4348474) (not b!4348482) (not b!4348514) (not b!4348488) (not b!4348571) (not d!1283995) (not b!4348645) (not bm!302264) (not b!4348615) (not b!4348546) (not b!4348485) (not b!4348642) (not b!4348611) (not b!4348188) (not d!1284099) (not b!4348267) (not b!4348581) (not bm!302254) (not b!4348203) (not d!1284051) (not b!4348656) (not bs!628341) (not bm!302253) (not b!4348631) (not d!1284077) (not d!1284101) (not b!4348548) (not b!4348580) (not b_lambda!130289) (not d!1284055) (not d!1284023) (not d!1284035) (not d!1283829) (not b_lambda!130297) (not b_lambda!130299) (not b!4348467) (not d!1284013) (not b!4348647) (not b_lambda!130295) (not d!1283999) (not b!4348588) (not b!4348602) (not b!4348585) (not b_lambda!130227) (not b!4348186) (not b!4348460) (not d!1283877) tp_is_empty!25073 (not bs!628342) (not b!4348654) (not b_lambda!130291) (not b!4348578) (not b!4348584) (not d!1284089) (not b!4348538) (not b!4348596) (not b!4348504) (not b!4348269) (not b!4348649) (not b!4348477) (not b!4348605) (not bm!302252) (not b!4348646) (not b_lambda!130305) (not b_lambda!130229) (not bs!628345) (not b!4348604) (not d!1284005) (not b!4348579) (not b!4348282) (not b!4348626) (not d!1284057) (not d!1284095) (not b!4348569) (not b!4348283) (not b!4348621) (not b_lambda!130231) (not d!1284017) (not b!4348613) (not bs!628338))
(check-sat)
