; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437268 () Bool)

(assert start!437268)

(declare-fun b!4459658 () Bool)

(declare-fun res!1849187 () Bool)

(declare-fun e!2776993 () Bool)

(assert (=> b!4459658 (=> (not res!1849187) (not e!2776993))))

(declare-datatypes ((K!11540 0))(
  ( (K!11541 (val!17503 Int)) )
))
(declare-datatypes ((V!11786 0))(
  ( (V!11787 (val!17504 Int)) )
))
(declare-datatypes ((tuple2!50312 0))(
  ( (tuple2!50313 (_1!28450 K!11540) (_2!28450 V!11786)) )
))
(declare-datatypes ((List!50267 0))(
  ( (Nil!50143) (Cons!50143 (h!55888 tuple2!50312) (t!357217 List!50267)) )
))
(declare-fun l!12755 () List!50267)

(declare-fun key!4289 () K!11540)

(declare-fun containsKey!1372 (List!50267 K!11540) Bool)

(assert (=> b!4459658 (= res!1849187 (not (containsKey!1372 l!12755 key!4289)))))

(declare-fun b!4459659 () Bool)

(assert (=> b!4459659 (= e!2776993 (= (_1!28450 (h!55888 l!12755)) key!4289))))

(declare-datatypes ((ListMap!3189 0))(
  ( (ListMap!3190 (toList!3946 List!50267)) )
))
(declare-fun lt!1650706 () ListMap!3189)

(declare-fun acc!957 () ListMap!3189)

(declare-fun +!1327 (ListMap!3189 tuple2!50312) ListMap!3189)

(assert (=> b!4459659 (= lt!1650706 (+!1327 acc!957 (h!55888 l!12755)))))

(declare-fun b!4459660 () Bool)

(declare-fun e!2776994 () Bool)

(declare-fun tp!1335583 () Bool)

(assert (=> b!4459660 (= e!2776994 tp!1335583)))

(declare-fun tp!1335582 () Bool)

(declare-fun b!4459661 () Bool)

(declare-fun tp_is_empty!27117 () Bool)

(declare-fun e!2776995 () Bool)

(declare-fun tp_is_empty!27119 () Bool)

(assert (=> b!4459661 (= e!2776995 (and tp_is_empty!27117 tp_is_empty!27119 tp!1335582))))

(declare-fun b!4459662 () Bool)

(declare-fun res!1849186 () Bool)

(assert (=> b!4459662 (=> (not res!1849186) (not e!2776993))))

(declare-fun contains!12639 (ListMap!3189 K!11540) Bool)

(declare-fun addToMapMapFromBucket!553 (List!50267 ListMap!3189) ListMap!3189)

(assert (=> b!4459662 (= res!1849186 (contains!12639 (addToMapMapFromBucket!553 l!12755 acc!957) key!4289))))

(declare-fun res!1849189 () Bool)

(assert (=> start!437268 (=> (not res!1849189) (not e!2776993))))

(declare-fun noDuplicateKeys!974 (List!50267) Bool)

(assert (=> start!437268 (= res!1849189 (noDuplicateKeys!974 l!12755))))

(assert (=> start!437268 e!2776993))

(assert (=> start!437268 e!2776995))

(assert (=> start!437268 tp_is_empty!27117))

(declare-fun inv!65724 (ListMap!3189) Bool)

(assert (=> start!437268 (and (inv!65724 acc!957) e!2776994)))

(declare-fun b!4459663 () Bool)

(declare-fun res!1849188 () Bool)

(assert (=> b!4459663 (=> (not res!1849188) (not e!2776993))))

(get-info :version)

(assert (=> b!4459663 (= res!1849188 ((_ is Cons!50143) l!12755))))

(assert (= (and start!437268 res!1849189) b!4459658))

(assert (= (and b!4459658 res!1849187) b!4459662))

(assert (= (and b!4459662 res!1849186) b!4459663))

(assert (= (and b!4459663 res!1849188) b!4459659))

(assert (= (and start!437268 ((_ is Cons!50143) l!12755)) b!4459661))

(assert (= start!437268 b!4459660))

(declare-fun m!5162589 () Bool)

(assert (=> b!4459658 m!5162589))

(declare-fun m!5162591 () Bool)

(assert (=> b!4459659 m!5162591))

(declare-fun m!5162593 () Bool)

(assert (=> b!4459662 m!5162593))

(assert (=> b!4459662 m!5162593))

(declare-fun m!5162595 () Bool)

(assert (=> b!4459662 m!5162595))

(declare-fun m!5162597 () Bool)

(assert (=> start!437268 m!5162597))

(declare-fun m!5162599 () Bool)

(assert (=> start!437268 m!5162599))

(check-sat (not b!4459662) (not b!4459661) tp_is_empty!27119 (not b!4459660) (not b!4459658) (not start!437268) (not b!4459659) tp_is_empty!27117)
(check-sat)
(get-model)

(declare-fun d!1360004 () Bool)

(declare-fun e!2777004 () Bool)

(assert (=> d!1360004 e!2777004))

(declare-fun res!1849201 () Bool)

(assert (=> d!1360004 (=> (not res!1849201) (not e!2777004))))

(declare-fun lt!1650718 () ListMap!3189)

(assert (=> d!1360004 (= res!1849201 (contains!12639 lt!1650718 (_1!28450 (h!55888 l!12755))))))

(declare-fun lt!1650715 () List!50267)

(assert (=> d!1360004 (= lt!1650718 (ListMap!3190 lt!1650715))))

(declare-datatypes ((Unit!86555 0))(
  ( (Unit!86556) )
))
(declare-fun lt!1650717 () Unit!86555)

(declare-fun lt!1650716 () Unit!86555)

(assert (=> d!1360004 (= lt!1650717 lt!1650716)))

(declare-datatypes ((Option!10875 0))(
  ( (None!10874) (Some!10874 (v!44132 V!11786)) )
))
(declare-fun getValueByKey!861 (List!50267 K!11540) Option!10875)

(assert (=> d!1360004 (= (getValueByKey!861 lt!1650715 (_1!28450 (h!55888 l!12755))) (Some!10874 (_2!28450 (h!55888 l!12755))))))

(declare-fun lemmaContainsTupThenGetReturnValue!558 (List!50267 K!11540 V!11786) Unit!86555)

(assert (=> d!1360004 (= lt!1650716 (lemmaContainsTupThenGetReturnValue!558 lt!1650715 (_1!28450 (h!55888 l!12755)) (_2!28450 (h!55888 l!12755))))))

(declare-fun insertNoDuplicatedKeys!252 (List!50267 K!11540 V!11786) List!50267)

(assert (=> d!1360004 (= lt!1650715 (insertNoDuplicatedKeys!252 (toList!3946 acc!957) (_1!28450 (h!55888 l!12755)) (_2!28450 (h!55888 l!12755))))))

(assert (=> d!1360004 (= (+!1327 acc!957 (h!55888 l!12755)) lt!1650718)))

(declare-fun b!4459674 () Bool)

(declare-fun res!1849200 () Bool)

(assert (=> b!4459674 (=> (not res!1849200) (not e!2777004))))

(assert (=> b!4459674 (= res!1849200 (= (getValueByKey!861 (toList!3946 lt!1650718) (_1!28450 (h!55888 l!12755))) (Some!10874 (_2!28450 (h!55888 l!12755)))))))

(declare-fun b!4459675 () Bool)

(declare-fun contains!12642 (List!50267 tuple2!50312) Bool)

(assert (=> b!4459675 (= e!2777004 (contains!12642 (toList!3946 lt!1650718) (h!55888 l!12755)))))

(assert (= (and d!1360004 res!1849201) b!4459674))

(assert (= (and b!4459674 res!1849200) b!4459675))

(declare-fun m!5162607 () Bool)

(assert (=> d!1360004 m!5162607))

(declare-fun m!5162609 () Bool)

(assert (=> d!1360004 m!5162609))

(declare-fun m!5162611 () Bool)

(assert (=> d!1360004 m!5162611))

(declare-fun m!5162613 () Bool)

(assert (=> d!1360004 m!5162613))

(declare-fun m!5162615 () Bool)

(assert (=> b!4459674 m!5162615))

(declare-fun m!5162617 () Bool)

(assert (=> b!4459675 m!5162617))

(assert (=> b!4459659 d!1360004))

(declare-fun d!1360010 () Bool)

(declare-fun res!1849210 () Bool)

(declare-fun e!2777011 () Bool)

(assert (=> d!1360010 (=> res!1849210 e!2777011)))

(assert (=> d!1360010 (= res!1849210 (not ((_ is Cons!50143) l!12755)))))

(assert (=> d!1360010 (= (noDuplicateKeys!974 l!12755) e!2777011)))

(declare-fun b!4459684 () Bool)

(declare-fun e!2777012 () Bool)

(assert (=> b!4459684 (= e!2777011 e!2777012)))

(declare-fun res!1849211 () Bool)

(assert (=> b!4459684 (=> (not res!1849211) (not e!2777012))))

(assert (=> b!4459684 (= res!1849211 (not (containsKey!1372 (t!357217 l!12755) (_1!28450 (h!55888 l!12755)))))))

(declare-fun b!4459685 () Bool)

(assert (=> b!4459685 (= e!2777012 (noDuplicateKeys!974 (t!357217 l!12755)))))

(assert (= (and d!1360010 (not res!1849210)) b!4459684))

(assert (= (and b!4459684 res!1849211) b!4459685))

(declare-fun m!5162619 () Bool)

(assert (=> b!4459684 m!5162619))

(declare-fun m!5162621 () Bool)

(assert (=> b!4459685 m!5162621))

(assert (=> start!437268 d!1360010))

(declare-fun d!1360012 () Bool)

(declare-fun invariantList!896 (List!50267) Bool)

(assert (=> d!1360012 (= (inv!65724 acc!957) (invariantList!896 (toList!3946 acc!957)))))

(declare-fun bs!791372 () Bool)

(assert (= bs!791372 d!1360012))

(declare-fun m!5162635 () Bool)

(assert (=> bs!791372 m!5162635))

(assert (=> start!437268 d!1360012))

(declare-fun d!1360016 () Bool)

(declare-fun res!1849218 () Bool)

(declare-fun e!2777018 () Bool)

(assert (=> d!1360016 (=> res!1849218 e!2777018)))

(assert (=> d!1360016 (= res!1849218 (and ((_ is Cons!50143) l!12755) (= (_1!28450 (h!55888 l!12755)) key!4289)))))

(assert (=> d!1360016 (= (containsKey!1372 l!12755 key!4289) e!2777018)))

(declare-fun b!4459692 () Bool)

(declare-fun e!2777019 () Bool)

(assert (=> b!4459692 (= e!2777018 e!2777019)))

(declare-fun res!1849219 () Bool)

(assert (=> b!4459692 (=> (not res!1849219) (not e!2777019))))

(assert (=> b!4459692 (= res!1849219 ((_ is Cons!50143) l!12755))))

(declare-fun b!4459693 () Bool)

(assert (=> b!4459693 (= e!2777019 (containsKey!1372 (t!357217 l!12755) key!4289))))

(assert (= (and d!1360016 (not res!1849218)) b!4459692))

(assert (= (and b!4459692 res!1849219) b!4459693))

(declare-fun m!5162637 () Bool)

(assert (=> b!4459693 m!5162637))

(assert (=> b!4459658 d!1360016))

(declare-fun d!1360018 () Bool)

(declare-fun e!2777053 () Bool)

(assert (=> d!1360018 e!2777053))

(declare-fun res!1849235 () Bool)

(assert (=> d!1360018 (=> res!1849235 e!2777053)))

(declare-fun e!2777054 () Bool)

(assert (=> d!1360018 (= res!1849235 e!2777054)))

(declare-fun res!1849236 () Bool)

(assert (=> d!1360018 (=> (not res!1849236) (not e!2777054))))

(declare-fun lt!1650771 () Bool)

(assert (=> d!1360018 (= res!1849236 (not lt!1650771))))

(declare-fun lt!1650776 () Bool)

(assert (=> d!1360018 (= lt!1650771 lt!1650776)))

(declare-fun lt!1650774 () Unit!86555)

(declare-fun e!2777051 () Unit!86555)

(assert (=> d!1360018 (= lt!1650774 e!2777051)))

(declare-fun c!759027 () Bool)

(assert (=> d!1360018 (= c!759027 lt!1650776)))

(declare-fun containsKey!1374 (List!50267 K!11540) Bool)

(assert (=> d!1360018 (= lt!1650776 (containsKey!1374 (toList!3946 (addToMapMapFromBucket!553 l!12755 acc!957)) key!4289))))

(assert (=> d!1360018 (= (contains!12639 (addToMapMapFromBucket!553 l!12755 acc!957) key!4289) lt!1650771)))

(declare-fun b!4459739 () Bool)

(declare-fun e!2777052 () Unit!86555)

(declare-fun Unit!86559 () Unit!86555)

(assert (=> b!4459739 (= e!2777052 Unit!86559)))

(declare-fun b!4459740 () Bool)

(declare-fun lt!1650772 () Unit!86555)

(assert (=> b!4459740 (= e!2777051 lt!1650772)))

(declare-fun lt!1650775 () Unit!86555)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!766 (List!50267 K!11540) Unit!86555)

(assert (=> b!4459740 (= lt!1650775 (lemmaContainsKeyImpliesGetValueByKeyDefined!766 (toList!3946 (addToMapMapFromBucket!553 l!12755 acc!957)) key!4289))))

(declare-fun isDefined!8163 (Option!10875) Bool)

(assert (=> b!4459740 (isDefined!8163 (getValueByKey!861 (toList!3946 (addToMapMapFromBucket!553 l!12755 acc!957)) key!4289))))

(declare-fun lt!1650773 () Unit!86555)

(assert (=> b!4459740 (= lt!1650773 lt!1650775)))

(declare-fun lemmaInListThenGetKeysListContains!339 (List!50267 K!11540) Unit!86555)

(assert (=> b!4459740 (= lt!1650772 (lemmaInListThenGetKeysListContains!339 (toList!3946 (addToMapMapFromBucket!553 l!12755 acc!957)) key!4289))))

(declare-fun call!310420 () Bool)

(assert (=> b!4459740 call!310420))

(declare-fun b!4459741 () Bool)

(declare-datatypes ((List!50269 0))(
  ( (Nil!50145) (Cons!50145 (h!55890 K!11540) (t!357219 List!50269)) )
))
(declare-fun e!2777050 () List!50269)

(declare-fun getKeysList!343 (List!50267) List!50269)

(assert (=> b!4459741 (= e!2777050 (getKeysList!343 (toList!3946 (addToMapMapFromBucket!553 l!12755 acc!957))))))

(declare-fun b!4459742 () Bool)

(assert (=> b!4459742 false))

(declare-fun lt!1650778 () Unit!86555)

(declare-fun lt!1650777 () Unit!86555)

(assert (=> b!4459742 (= lt!1650778 lt!1650777)))

(assert (=> b!4459742 (containsKey!1374 (toList!3946 (addToMapMapFromBucket!553 l!12755 acc!957)) key!4289)))

(declare-fun lemmaInGetKeysListThenContainsKey!342 (List!50267 K!11540) Unit!86555)

(assert (=> b!4459742 (= lt!1650777 (lemmaInGetKeysListThenContainsKey!342 (toList!3946 (addToMapMapFromBucket!553 l!12755 acc!957)) key!4289))))

(declare-fun Unit!86560 () Unit!86555)

(assert (=> b!4459742 (= e!2777052 Unit!86560)))

(declare-fun b!4459743 () Bool)

(declare-fun keys!17266 (ListMap!3189) List!50269)

(assert (=> b!4459743 (= e!2777050 (keys!17266 (addToMapMapFromBucket!553 l!12755 acc!957)))))

(declare-fun b!4459744 () Bool)

(declare-fun contains!12643 (List!50269 K!11540) Bool)

(assert (=> b!4459744 (= e!2777054 (not (contains!12643 (keys!17266 (addToMapMapFromBucket!553 l!12755 acc!957)) key!4289)))))

(declare-fun b!4459745 () Bool)

(assert (=> b!4459745 (= e!2777051 e!2777052)))

(declare-fun c!759028 () Bool)

(assert (=> b!4459745 (= c!759028 call!310420)))

(declare-fun b!4459746 () Bool)

(declare-fun e!2777055 () Bool)

(assert (=> b!4459746 (= e!2777053 e!2777055)))

(declare-fun res!1849237 () Bool)

(assert (=> b!4459746 (=> (not res!1849237) (not e!2777055))))

(assert (=> b!4459746 (= res!1849237 (isDefined!8163 (getValueByKey!861 (toList!3946 (addToMapMapFromBucket!553 l!12755 acc!957)) key!4289)))))

(declare-fun bm!310415 () Bool)

(assert (=> bm!310415 (= call!310420 (contains!12643 e!2777050 key!4289))))

(declare-fun c!759026 () Bool)

(assert (=> bm!310415 (= c!759026 c!759027)))

(declare-fun b!4459747 () Bool)

(assert (=> b!4459747 (= e!2777055 (contains!12643 (keys!17266 (addToMapMapFromBucket!553 l!12755 acc!957)) key!4289))))

(assert (= (and d!1360018 c!759027) b!4459740))

(assert (= (and d!1360018 (not c!759027)) b!4459745))

(assert (= (and b!4459745 c!759028) b!4459742))

(assert (= (and b!4459745 (not c!759028)) b!4459739))

(assert (= (or b!4459740 b!4459745) bm!310415))

(assert (= (and bm!310415 c!759026) b!4459741))

(assert (= (and bm!310415 (not c!759026)) b!4459743))

(assert (= (and d!1360018 res!1849236) b!4459744))

(assert (= (and d!1360018 (not res!1849235)) b!4459746))

(assert (= (and b!4459746 res!1849237) b!4459747))

(declare-fun m!5162659 () Bool)

(assert (=> d!1360018 m!5162659))

(assert (=> b!4459744 m!5162593))

(declare-fun m!5162661 () Bool)

(assert (=> b!4459744 m!5162661))

(assert (=> b!4459744 m!5162661))

(declare-fun m!5162663 () Bool)

(assert (=> b!4459744 m!5162663))

(assert (=> b!4459743 m!5162593))

(assert (=> b!4459743 m!5162661))

(declare-fun m!5162665 () Bool)

(assert (=> b!4459741 m!5162665))

(declare-fun m!5162667 () Bool)

(assert (=> bm!310415 m!5162667))

(declare-fun m!5162669 () Bool)

(assert (=> b!4459740 m!5162669))

(declare-fun m!5162671 () Bool)

(assert (=> b!4459740 m!5162671))

(assert (=> b!4459740 m!5162671))

(declare-fun m!5162673 () Bool)

(assert (=> b!4459740 m!5162673))

(declare-fun m!5162675 () Bool)

(assert (=> b!4459740 m!5162675))

(assert (=> b!4459747 m!5162593))

(assert (=> b!4459747 m!5162661))

(assert (=> b!4459747 m!5162661))

(assert (=> b!4459747 m!5162663))

(assert (=> b!4459742 m!5162659))

(declare-fun m!5162677 () Bool)

(assert (=> b!4459742 m!5162677))

(assert (=> b!4459746 m!5162671))

(assert (=> b!4459746 m!5162671))

(assert (=> b!4459746 m!5162673))

(assert (=> b!4459662 d!1360018))

(declare-fun b!4459788 () Bool)

(assert (=> b!4459788 true))

(declare-fun bs!791376 () Bool)

(declare-fun b!4459791 () Bool)

(assert (= bs!791376 (and b!4459791 b!4459788)))

(declare-fun lambda!161369 () Int)

(declare-fun lambda!161368 () Int)

(assert (=> bs!791376 (= lambda!161369 lambda!161368)))

(assert (=> b!4459791 true))

(declare-fun lambda!161370 () Int)

(declare-fun lt!1650885 () ListMap!3189)

(assert (=> bs!791376 (= (= lt!1650885 acc!957) (= lambda!161370 lambda!161368))))

(assert (=> b!4459791 (= (= lt!1650885 acc!957) (= lambda!161370 lambda!161369))))

(assert (=> b!4459791 true))

(declare-fun bs!791377 () Bool)

(declare-fun d!1360022 () Bool)

(assert (= bs!791377 (and d!1360022 b!4459788)))

(declare-fun lt!1650897 () ListMap!3189)

(declare-fun lambda!161371 () Int)

(assert (=> bs!791377 (= (= lt!1650897 acc!957) (= lambda!161371 lambda!161368))))

(declare-fun bs!791378 () Bool)

(assert (= bs!791378 (and d!1360022 b!4459791)))

(assert (=> bs!791378 (= (= lt!1650897 acc!957) (= lambda!161371 lambda!161369))))

(assert (=> bs!791378 (= (= lt!1650897 lt!1650885) (= lambda!161371 lambda!161370))))

(assert (=> d!1360022 true))

(declare-fun b!4459787 () Bool)

(declare-fun e!2777082 () Bool)

(declare-fun call!310436 () Bool)

(assert (=> b!4459787 (= e!2777082 call!310436)))

(declare-fun e!2777081 () ListMap!3189)

(assert (=> b!4459788 (= e!2777081 acc!957)))

(declare-fun lt!1650895 () Unit!86555)

(declare-fun call!310438 () Unit!86555)

(assert (=> b!4459788 (= lt!1650895 call!310438)))

(declare-fun call!310437 () Bool)

(assert (=> b!4459788 call!310437))

(declare-fun lt!1650892 () Unit!86555)

(assert (=> b!4459788 (= lt!1650892 lt!1650895)))

(assert (=> b!4459788 call!310436))

(declare-fun lt!1650887 () Unit!86555)

(declare-fun Unit!86565 () Unit!86555)

(assert (=> b!4459788 (= lt!1650887 Unit!86565)))

(declare-fun b!4459789 () Bool)

(declare-fun e!2777083 () Bool)

(assert (=> b!4459789 (= e!2777083 (invariantList!896 (toList!3946 lt!1650897)))))

(declare-fun b!4459790 () Bool)

(declare-fun res!1849261 () Bool)

(assert (=> b!4459790 (=> (not res!1849261) (not e!2777083))))

(declare-fun forall!9905 (List!50267 Int) Bool)

(assert (=> b!4459790 (= res!1849261 (forall!9905 (toList!3946 acc!957) lambda!161371))))

(assert (=> d!1360022 e!2777083))

(declare-fun res!1849259 () Bool)

(assert (=> d!1360022 (=> (not res!1849259) (not e!2777083))))

(assert (=> d!1360022 (= res!1849259 (forall!9905 l!12755 lambda!161371))))

(assert (=> d!1360022 (= lt!1650897 e!2777081)))

(declare-fun c!759034 () Bool)

(assert (=> d!1360022 (= c!759034 ((_ is Nil!50143) l!12755))))

(assert (=> d!1360022 (noDuplicateKeys!974 l!12755)))

(assert (=> d!1360022 (= (addToMapMapFromBucket!553 l!12755 acc!957) lt!1650897)))

(declare-fun bm!310431 () Bool)

(assert (=> bm!310431 (= call!310436 (forall!9905 (toList!3946 acc!957) (ite c!759034 lambda!161368 lambda!161370)))))

(declare-fun bm!310432 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!243 (ListMap!3189) Unit!86555)

(assert (=> bm!310432 (= call!310438 (lemmaContainsAllItsOwnKeys!243 acc!957))))

(declare-fun bm!310433 () Bool)

(assert (=> bm!310433 (= call!310437 (forall!9905 (ite c!759034 (toList!3946 acc!957) (t!357217 l!12755)) (ite c!759034 lambda!161368 lambda!161370)))))

(assert (=> b!4459791 (= e!2777081 lt!1650885)))

(declare-fun lt!1650898 () ListMap!3189)

(assert (=> b!4459791 (= lt!1650898 (+!1327 acc!957 (h!55888 l!12755)))))

(assert (=> b!4459791 (= lt!1650885 (addToMapMapFromBucket!553 (t!357217 l!12755) (+!1327 acc!957 (h!55888 l!12755))))))

(declare-fun lt!1650903 () Unit!86555)

(assert (=> b!4459791 (= lt!1650903 call!310438)))

(assert (=> b!4459791 (forall!9905 (toList!3946 acc!957) lambda!161369)))

(declare-fun lt!1650893 () Unit!86555)

(assert (=> b!4459791 (= lt!1650893 lt!1650903)))

(assert (=> b!4459791 (forall!9905 (toList!3946 lt!1650898) lambda!161370)))

(declare-fun lt!1650899 () Unit!86555)

(declare-fun Unit!86571 () Unit!86555)

(assert (=> b!4459791 (= lt!1650899 Unit!86571)))

(assert (=> b!4459791 call!310437))

(declare-fun lt!1650896 () Unit!86555)

(declare-fun Unit!86572 () Unit!86555)

(assert (=> b!4459791 (= lt!1650896 Unit!86572)))

(declare-fun lt!1650886 () Unit!86555)

(declare-fun Unit!86574 () Unit!86555)

(assert (=> b!4459791 (= lt!1650886 Unit!86574)))

(declare-fun lt!1650900 () Unit!86555)

(declare-fun forallContained!2194 (List!50267 Int tuple2!50312) Unit!86555)

(assert (=> b!4459791 (= lt!1650900 (forallContained!2194 (toList!3946 lt!1650898) lambda!161370 (h!55888 l!12755)))))

(assert (=> b!4459791 (contains!12639 lt!1650898 (_1!28450 (h!55888 l!12755)))))

(declare-fun lt!1650889 () Unit!86555)

(declare-fun Unit!86575 () Unit!86555)

(assert (=> b!4459791 (= lt!1650889 Unit!86575)))

(assert (=> b!4459791 (contains!12639 lt!1650885 (_1!28450 (h!55888 l!12755)))))

(declare-fun lt!1650890 () Unit!86555)

(declare-fun Unit!86576 () Unit!86555)

(assert (=> b!4459791 (= lt!1650890 Unit!86576)))

(assert (=> b!4459791 (forall!9905 l!12755 lambda!161370)))

(declare-fun lt!1650884 () Unit!86555)

(declare-fun Unit!86577 () Unit!86555)

(assert (=> b!4459791 (= lt!1650884 Unit!86577)))

(assert (=> b!4459791 (forall!9905 (toList!3946 lt!1650898) lambda!161370)))

(declare-fun lt!1650901 () Unit!86555)

(declare-fun Unit!86578 () Unit!86555)

(assert (=> b!4459791 (= lt!1650901 Unit!86578)))

(declare-fun lt!1650891 () Unit!86555)

(declare-fun Unit!86579 () Unit!86555)

(assert (=> b!4459791 (= lt!1650891 Unit!86579)))

(declare-fun lt!1650904 () Unit!86555)

(declare-fun addForallContainsKeyThenBeforeAdding!243 (ListMap!3189 ListMap!3189 K!11540 V!11786) Unit!86555)

(assert (=> b!4459791 (= lt!1650904 (addForallContainsKeyThenBeforeAdding!243 acc!957 lt!1650885 (_1!28450 (h!55888 l!12755)) (_2!28450 (h!55888 l!12755))))))

(assert (=> b!4459791 (forall!9905 (toList!3946 acc!957) lambda!161370)))

(declare-fun lt!1650894 () Unit!86555)

(assert (=> b!4459791 (= lt!1650894 lt!1650904)))

(assert (=> b!4459791 (forall!9905 (toList!3946 acc!957) lambda!161370)))

(declare-fun lt!1650888 () Unit!86555)

(declare-fun Unit!86581 () Unit!86555)

(assert (=> b!4459791 (= lt!1650888 Unit!86581)))

(declare-fun res!1849260 () Bool)

(assert (=> b!4459791 (= res!1849260 (forall!9905 l!12755 lambda!161370))))

(assert (=> b!4459791 (=> (not res!1849260) (not e!2777082))))

(assert (=> b!4459791 e!2777082))

(declare-fun lt!1650902 () Unit!86555)

(declare-fun Unit!86582 () Unit!86555)

(assert (=> b!4459791 (= lt!1650902 Unit!86582)))

(assert (= (and d!1360022 c!759034) b!4459788))

(assert (= (and d!1360022 (not c!759034)) b!4459791))

(assert (= (and b!4459791 res!1849260) b!4459787))

(assert (= (or b!4459788 b!4459787) bm!310431))

(assert (= (or b!4459788 b!4459791) bm!310433))

(assert (= (or b!4459788 b!4459791) bm!310432))

(assert (= (and d!1360022 res!1849259) b!4459790))

(assert (= (and b!4459790 res!1849261) b!4459789))

(declare-fun m!5162711 () Bool)

(assert (=> bm!310431 m!5162711))

(declare-fun m!5162713 () Bool)

(assert (=> d!1360022 m!5162713))

(assert (=> d!1360022 m!5162597))

(declare-fun m!5162715 () Bool)

(assert (=> bm!310432 m!5162715))

(declare-fun m!5162717 () Bool)

(assert (=> b!4459791 m!5162717))

(declare-fun m!5162719 () Bool)

(assert (=> b!4459791 m!5162719))

(declare-fun m!5162721 () Bool)

(assert (=> b!4459791 m!5162721))

(declare-fun m!5162723 () Bool)

(assert (=> b!4459791 m!5162723))

(assert (=> b!4459791 m!5162721))

(declare-fun m!5162725 () Bool)

(assert (=> b!4459791 m!5162725))

(assert (=> b!4459791 m!5162717))

(declare-fun m!5162727 () Bool)

(assert (=> b!4459791 m!5162727))

(declare-fun m!5162729 () Bool)

(assert (=> b!4459791 m!5162729))

(assert (=> b!4459791 m!5162723))

(declare-fun m!5162731 () Bool)

(assert (=> b!4459791 m!5162731))

(assert (=> b!4459791 m!5162591))

(assert (=> b!4459791 m!5162591))

(declare-fun m!5162733 () Bool)

(assert (=> b!4459791 m!5162733))

(declare-fun m!5162735 () Bool)

(assert (=> b!4459790 m!5162735))

(declare-fun m!5162737 () Bool)

(assert (=> b!4459789 m!5162737))

(declare-fun m!5162739 () Bool)

(assert (=> bm!310433 m!5162739))

(assert (=> b!4459662 d!1360022))

(declare-fun tp!1335590 () Bool)

(declare-fun e!2777086 () Bool)

(declare-fun b!4459798 () Bool)

(assert (=> b!4459798 (= e!2777086 (and tp_is_empty!27117 tp_is_empty!27119 tp!1335590))))

(assert (=> b!4459661 (= tp!1335582 e!2777086)))

(assert (= (and b!4459661 ((_ is Cons!50143) (t!357217 l!12755))) b!4459798))

(declare-fun tp!1335591 () Bool)

(declare-fun e!2777087 () Bool)

(declare-fun b!4459799 () Bool)

(assert (=> b!4459799 (= e!2777087 (and tp_is_empty!27117 tp_is_empty!27119 tp!1335591))))

(assert (=> b!4459660 (= tp!1335583 e!2777087)))

(assert (= (and b!4459660 ((_ is Cons!50143) (toList!3946 acc!957))) b!4459799))

(check-sat (not b!4459790) (not d!1360018) (not bm!310432) (not bm!310433) (not d!1360004) (not b!4459741) (not b!4459684) (not b!4459674) (not b!4459746) (not d!1360022) (not d!1360012) (not b!4459744) (not bm!310415) (not b!4459791) (not b!4459685) (not b!4459799) (not b!4459743) (not b!4459798) (not b!4459693) tp_is_empty!27117 (not b!4459742) (not b!4459747) (not b!4459740) tp_is_empty!27119 (not b!4459789) (not b!4459675) (not bm!310431))
(check-sat)
