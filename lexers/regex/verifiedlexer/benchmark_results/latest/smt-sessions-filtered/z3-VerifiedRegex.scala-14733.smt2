; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758332 () Bool)

(assert start!758332)

(declare-fun b!8051812 () Bool)

(declare-fun res!3183837 () Bool)

(declare-fun e!4744471 () Bool)

(assert (=> b!8051812 (=> res!3183837 e!4744471)))

(declare-fun e!4744468 () Bool)

(assert (=> b!8051812 (= res!3183837 e!4744468)))

(declare-fun res!3183840 () Bool)

(assert (=> b!8051812 (=> (not res!3183840) (not e!4744468))))

(declare-datatypes ((K!22798 0))(
  ( (K!22799 (val!32911 Int)) )
))
(declare-datatypes ((V!23052 0))(
  ( (V!23053 (val!32912 Int)) )
))
(declare-datatypes ((tuple2!70876 0))(
  ( (tuple2!70877 (_1!38741 K!22798) (_2!38741 V!23052)) )
))
(declare-datatypes ((List!75660 0))(
  ( (Nil!75534) (Cons!75534 (h!81982 tuple2!70876) (t!391432 List!75660)) )
))
(declare-datatypes ((ListMap!7279 0))(
  ( (ListMap!7280 (toList!11914 List!75660)) )
))
(declare-fun lt!2725732 () ListMap!7279)

(declare-fun key!6222 () K!22798)

(declare-fun contains!21191 (ListMap!7279 K!22798) Bool)

(assert (=> b!8051812 (= res!3183840 (contains!21191 lt!2725732 key!6222))))

(declare-fun b!8051813 () Bool)

(declare-fun e!4744472 () Bool)

(declare-fun l!14636 () List!75660)

(declare-fun containsKey!4841 (List!75660 K!22798) Bool)

(assert (=> b!8051813 (= e!4744472 (not (containsKey!4841 l!14636 key!6222)))))

(declare-fun b!8051814 () Bool)

(declare-fun res!3183839 () Bool)

(assert (=> b!8051814 (=> (not res!3183839) (not e!4744472))))

(declare-fun value!3131 () V!23052)

(declare-fun acc!1298 () ListMap!7279)

(declare-fun apply!14427 (ListMap!7279 K!22798) V!23052)

(assert (=> b!8051814 (= res!3183839 (= (apply!14427 acc!1298 key!6222) value!3131))))

(declare-fun b!8051815 () Bool)

(declare-fun res!3183835 () Bool)

(assert (=> b!8051815 (=> (not res!3183835) (not e!4744468))))

(assert (=> b!8051815 (= res!3183835 (= (apply!14427 lt!2725732 key!6222) value!3131))))

(declare-fun b!8051816 () Bool)

(declare-fun e!4744473 () Bool)

(declare-fun e!4744470 () Bool)

(assert (=> b!8051816 (= e!4744473 e!4744470)))

(declare-fun res!3183833 () Bool)

(assert (=> b!8051816 (=> (not res!3183833) (not e!4744470))))

(assert (=> b!8051816 (= res!3183833 (= (_1!38741 (h!81982 l!14636)) key!6222))))

(declare-fun lt!2725734 () ListMap!7279)

(declare-fun addToMapMapFromBucket!1981 (List!75660 ListMap!7279) ListMap!7279)

(assert (=> b!8051816 (= lt!2725734 (addToMapMapFromBucket!1981 (t!391432 l!14636) lt!2725732))))

(declare-fun +!2665 (ListMap!7279 tuple2!70876) ListMap!7279)

(assert (=> b!8051816 (= lt!2725732 (+!2665 acc!1298 (h!81982 l!14636)))))

(declare-fun res!3183830 () Bool)

(declare-fun e!4744474 () Bool)

(assert (=> start!758332 (=> (not res!3183830) (not e!4744474))))

(declare-fun noDuplicateKeys!2700 (List!75660) Bool)

(assert (=> start!758332 (= res!3183830 (noDuplicateKeys!2700 l!14636))))

(assert (=> start!758332 e!4744474))

(declare-fun e!4744466 () Bool)

(assert (=> start!758332 e!4744466))

(declare-fun e!4744467 () Bool)

(declare-fun inv!97287 (ListMap!7279) Bool)

(assert (=> start!758332 (and (inv!97287 acc!1298) e!4744467)))

(declare-fun tp_is_empty!54875 () Bool)

(assert (=> start!758332 tp_is_empty!54875))

(declare-fun tp_is_empty!54877 () Bool)

(assert (=> start!758332 tp_is_empty!54877))

(declare-fun b!8051817 () Bool)

(declare-fun res!3183836 () Bool)

(assert (=> b!8051817 (=> (not res!3183836) (not e!4744473))))

(get-info :version)

(assert (=> b!8051817 (= res!3183836 (not ((_ is Nil!75534) l!14636)))))

(declare-fun b!8051818 () Bool)

(declare-fun res!3183828 () Bool)

(assert (=> b!8051818 (=> res!3183828 e!4744471)))

(assert (=> b!8051818 (= res!3183828 (not (contains!21191 lt!2725734 key!6222)))))

(declare-fun b!8051819 () Bool)

(declare-fun res!3183834 () Bool)

(assert (=> b!8051819 (=> (not res!3183834) (not e!4744474))))

(assert (=> b!8051819 (= res!3183834 (contains!21191 (addToMapMapFromBucket!1981 l!14636 acc!1298) key!6222))))

(declare-fun b!8051820 () Bool)

(declare-fun e!4744465 () Bool)

(declare-fun e!4744469 () Bool)

(assert (=> b!8051820 (= e!4744465 e!4744469)))

(declare-fun res!3183841 () Bool)

(assert (=> b!8051820 (=> (not res!3183841) (not e!4744469))))

(assert (=> b!8051820 (= res!3183841 (containsKey!4841 l!14636 key!6222))))

(declare-fun b!8051821 () Bool)

(declare-fun res!3183842 () Bool)

(assert (=> b!8051821 (=> (not res!3183842) (not e!4744469))))

(declare-fun contains!21192 (List!75660 tuple2!70876) Bool)

(assert (=> b!8051821 (= res!3183842 (contains!21192 l!14636 (tuple2!70877 key!6222 value!3131)))))

(declare-fun b!8051822 () Bool)

(declare-fun tp!2413681 () Bool)

(assert (=> b!8051822 (= e!4744466 (and tp_is_empty!54875 tp_is_empty!54877 tp!2413681))))

(declare-fun b!8051823 () Bool)

(declare-fun res!3183832 () Bool)

(assert (=> b!8051823 (=> res!3183832 e!4744471)))

(assert (=> b!8051823 (= res!3183832 (not (noDuplicateKeys!2700 (t!391432 l!14636))))))

(declare-fun b!8051824 () Bool)

(assert (=> b!8051824 (= e!4744474 e!4744473)))

(declare-fun res!3183838 () Bool)

(assert (=> b!8051824 (=> (not res!3183838) (not e!4744473))))

(assert (=> b!8051824 (= res!3183838 e!4744465)))

(declare-fun res!3183843 () Bool)

(assert (=> b!8051824 (=> res!3183843 e!4744465)))

(assert (=> b!8051824 (= res!3183843 e!4744472)))

(declare-fun res!3183831 () Bool)

(assert (=> b!8051824 (=> (not res!3183831) (not e!4744472))))

(declare-fun lt!2725736 () Bool)

(assert (=> b!8051824 (= res!3183831 lt!2725736)))

(assert (=> b!8051824 (= lt!2725736 (contains!21191 acc!1298 key!6222))))

(declare-fun b!8051825 () Bool)

(assert (=> b!8051825 (= e!4744470 (not e!4744471))))

(declare-fun res!3183829 () Bool)

(assert (=> b!8051825 (=> res!3183829 e!4744471)))

(assert (=> b!8051825 (= res!3183829 (not (= (_2!38741 (h!81982 l!14636)) value!3131)))))

(assert (=> b!8051825 (not (contains!21192 (t!391432 l!14636) (tuple2!70877 key!6222 value!3131)))))

(declare-datatypes ((Unit!171627 0))(
  ( (Unit!171628) )
))
(declare-fun lt!2725733 () Unit!171627)

(declare-fun lemmaNotContainsKeyThenCannotContainPair!20 (List!75660 K!22798 V!23052) Unit!171627)

(assert (=> b!8051825 (= lt!2725733 (lemmaNotContainsKeyThenCannotContainPair!20 (t!391432 l!14636) key!6222 value!3131))))

(declare-fun b!8051826 () Bool)

(assert (=> b!8051826 (= e!4744469 (not lt!2725736))))

(declare-fun b!8051827 () Bool)

(declare-fun tp!2413680 () Bool)

(assert (=> b!8051827 (= e!4744467 tp!2413680)))

(declare-fun b!8051828 () Bool)

(assert (=> b!8051828 (= e!4744471 false)))

(declare-fun lt!2725735 () Bool)

(assert (=> b!8051828 (= lt!2725735 (containsKey!4841 (t!391432 l!14636) key!6222))))

(declare-fun b!8051829 () Bool)

(assert (=> b!8051829 (= e!4744468 (not (containsKey!4841 (t!391432 l!14636) key!6222)))))

(assert (= (and start!758332 res!3183830) b!8051819))

(assert (= (and b!8051819 res!3183834) b!8051824))

(assert (= (and b!8051824 res!3183831) b!8051814))

(assert (= (and b!8051814 res!3183839) b!8051813))

(assert (= (and b!8051824 (not res!3183843)) b!8051820))

(assert (= (and b!8051820 res!3183841) b!8051821))

(assert (= (and b!8051821 res!3183842) b!8051826))

(assert (= (and b!8051824 res!3183838) b!8051817))

(assert (= (and b!8051817 res!3183836) b!8051816))

(assert (= (and b!8051816 res!3183833) b!8051825))

(assert (= (and b!8051825 (not res!3183829)) b!8051823))

(assert (= (and b!8051823 (not res!3183832)) b!8051818))

(assert (= (and b!8051818 (not res!3183828)) b!8051812))

(assert (= (and b!8051812 res!3183840) b!8051815))

(assert (= (and b!8051815 res!3183835) b!8051829))

(assert (= (and b!8051812 (not res!3183837)) b!8051828))

(assert (= (and start!758332 ((_ is Cons!75534) l!14636)) b!8051822))

(assert (= start!758332 b!8051827))

(declare-fun m!8402928 () Bool)

(assert (=> b!8051818 m!8402928))

(declare-fun m!8402930 () Bool)

(assert (=> b!8051812 m!8402930))

(declare-fun m!8402932 () Bool)

(assert (=> b!8051828 m!8402932))

(declare-fun m!8402934 () Bool)

(assert (=> b!8051821 m!8402934))

(declare-fun m!8402936 () Bool)

(assert (=> b!8051815 m!8402936))

(declare-fun m!8402938 () Bool)

(assert (=> b!8051820 m!8402938))

(declare-fun m!8402940 () Bool)

(assert (=> b!8051823 m!8402940))

(assert (=> b!8051813 m!8402938))

(declare-fun m!8402942 () Bool)

(assert (=> b!8051819 m!8402942))

(assert (=> b!8051819 m!8402942))

(declare-fun m!8402944 () Bool)

(assert (=> b!8051819 m!8402944))

(assert (=> b!8051829 m!8402932))

(declare-fun m!8402946 () Bool)

(assert (=> b!8051816 m!8402946))

(declare-fun m!8402948 () Bool)

(assert (=> b!8051816 m!8402948))

(declare-fun m!8402950 () Bool)

(assert (=> b!8051824 m!8402950))

(declare-fun m!8402952 () Bool)

(assert (=> b!8051825 m!8402952))

(declare-fun m!8402954 () Bool)

(assert (=> b!8051825 m!8402954))

(declare-fun m!8402956 () Bool)

(assert (=> b!8051814 m!8402956))

(declare-fun m!8402958 () Bool)

(assert (=> start!758332 m!8402958))

(declare-fun m!8402960 () Bool)

(assert (=> start!758332 m!8402960))

(check-sat (not b!8051818) (not b!8051824) (not b!8051821) (not b!8051813) (not b!8051815) (not b!8051828) (not start!758332) (not b!8051825) tp_is_empty!54877 (not b!8051814) tp_is_empty!54875 (not b!8051827) (not b!8051823) (not b!8051822) (not b!8051819) (not b!8051820) (not b!8051816) (not b!8051812) (not b!8051829))
(check-sat)
(get-model)

(declare-fun d!2397352 () Bool)

(declare-fun res!3183854 () Bool)

(declare-fun e!4744485 () Bool)

(assert (=> d!2397352 (=> res!3183854 e!4744485)))

(assert (=> d!2397352 (= res!3183854 (and ((_ is Cons!75534) l!14636) (= (_1!38741 (h!81982 l!14636)) key!6222)))))

(assert (=> d!2397352 (= (containsKey!4841 l!14636 key!6222) e!4744485)))

(declare-fun b!8051840 () Bool)

(declare-fun e!4744486 () Bool)

(assert (=> b!8051840 (= e!4744485 e!4744486)))

(declare-fun res!3183855 () Bool)

(assert (=> b!8051840 (=> (not res!3183855) (not e!4744486))))

(assert (=> b!8051840 (= res!3183855 ((_ is Cons!75534) l!14636))))

(declare-fun b!8051841 () Bool)

(assert (=> b!8051841 (= e!4744486 (containsKey!4841 (t!391432 l!14636) key!6222))))

(assert (= (and d!2397352 (not res!3183854)) b!8051840))

(assert (= (and b!8051840 res!3183855) b!8051841))

(assert (=> b!8051841 m!8402932))

(assert (=> b!8051813 d!2397352))

(declare-fun b!8051880 () Bool)

(declare-fun e!4744516 () Bool)

(declare-fun e!4744519 () Bool)

(assert (=> b!8051880 (= e!4744516 e!4744519)))

(declare-fun res!3183876 () Bool)

(assert (=> b!8051880 (=> (not res!3183876) (not e!4744519))))

(declare-datatypes ((Option!17994 0))(
  ( (None!17993) (Some!17993 (v!55300 V!23052)) )
))
(declare-fun isDefined!14527 (Option!17994) Bool)

(declare-fun getValueByKey!2778 (List!75660 K!22798) Option!17994)

(assert (=> b!8051880 (= res!3183876 (isDefined!14527 (getValueByKey!2778 (toList!11914 acc!1298) key!6222)))))

(declare-fun b!8051881 () Bool)

(declare-fun e!4744520 () Unit!171627)

(declare-fun lt!2725780 () Unit!171627)

(assert (=> b!8051881 (= e!4744520 lt!2725780)))

(declare-fun lt!2725776 () Unit!171627)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2549 (List!75660 K!22798) Unit!171627)

(assert (=> b!8051881 (= lt!2725776 (lemmaContainsKeyImpliesGetValueByKeyDefined!2549 (toList!11914 acc!1298) key!6222))))

(assert (=> b!8051881 (isDefined!14527 (getValueByKey!2778 (toList!11914 acc!1298) key!6222))))

(declare-fun lt!2725777 () Unit!171627)

(assert (=> b!8051881 (= lt!2725777 lt!2725776)))

(declare-fun lemmaInListThenGetKeysListContains!1232 (List!75660 K!22798) Unit!171627)

(assert (=> b!8051881 (= lt!2725780 (lemmaInListThenGetKeysListContains!1232 (toList!11914 acc!1298) key!6222))))

(declare-fun call!747028 () Bool)

(assert (=> b!8051881 call!747028))

(declare-fun b!8051882 () Bool)

(declare-fun e!4744515 () Bool)

(declare-datatypes ((List!75662 0))(
  ( (Nil!75536) (Cons!75536 (h!81984 K!22798) (t!391434 List!75662)) )
))
(declare-fun contains!21194 (List!75662 K!22798) Bool)

(declare-fun keys!30826 (ListMap!7279) List!75662)

(assert (=> b!8051882 (= e!4744515 (not (contains!21194 (keys!30826 acc!1298) key!6222)))))

(declare-fun b!8051883 () Bool)

(assert (=> b!8051883 false))

(declare-fun lt!2725779 () Unit!171627)

(declare-fun lt!2725781 () Unit!171627)

(assert (=> b!8051883 (= lt!2725779 lt!2725781)))

(declare-fun containsKey!4843 (List!75660 K!22798) Bool)

(assert (=> b!8051883 (containsKey!4843 (toList!11914 acc!1298) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1237 (List!75660 K!22798) Unit!171627)

(assert (=> b!8051883 (= lt!2725781 (lemmaInGetKeysListThenContainsKey!1237 (toList!11914 acc!1298) key!6222))))

(declare-fun e!4744517 () Unit!171627)

(declare-fun Unit!171641 () Unit!171627)

(assert (=> b!8051883 (= e!4744517 Unit!171641)))

(declare-fun b!8051884 () Bool)

(assert (=> b!8051884 (= e!4744519 (contains!21194 (keys!30826 acc!1298) key!6222))))

(declare-fun b!8051885 () Bool)

(assert (=> b!8051885 (= e!4744520 e!4744517)))

(declare-fun c!1475943 () Bool)

(assert (=> b!8051885 (= c!1475943 call!747028)))

(declare-fun b!8051886 () Bool)

(declare-fun e!4744518 () List!75662)

(declare-fun getKeysList!1237 (List!75660) List!75662)

(assert (=> b!8051886 (= e!4744518 (getKeysList!1237 (toList!11914 acc!1298)))))

(declare-fun b!8051887 () Bool)

(declare-fun Unit!171643 () Unit!171627)

(assert (=> b!8051887 (= e!4744517 Unit!171643)))

(declare-fun d!2397356 () Bool)

(assert (=> d!2397356 e!4744516))

(declare-fun res!3183874 () Bool)

(assert (=> d!2397356 (=> res!3183874 e!4744516)))

(assert (=> d!2397356 (= res!3183874 e!4744515)))

(declare-fun res!3183875 () Bool)

(assert (=> d!2397356 (=> (not res!3183875) (not e!4744515))))

(declare-fun lt!2725775 () Bool)

(assert (=> d!2397356 (= res!3183875 (not lt!2725775))))

(declare-fun lt!2725778 () Bool)

(assert (=> d!2397356 (= lt!2725775 lt!2725778)))

(declare-fun lt!2725782 () Unit!171627)

(assert (=> d!2397356 (= lt!2725782 e!4744520)))

(declare-fun c!1475942 () Bool)

(assert (=> d!2397356 (= c!1475942 lt!2725778)))

(assert (=> d!2397356 (= lt!2725778 (containsKey!4843 (toList!11914 acc!1298) key!6222))))

(assert (=> d!2397356 (= (contains!21191 acc!1298 key!6222) lt!2725775)))

(declare-fun b!8051888 () Bool)

(assert (=> b!8051888 (= e!4744518 (keys!30826 acc!1298))))

(declare-fun bm!747023 () Bool)

(assert (=> bm!747023 (= call!747028 (contains!21194 e!4744518 key!6222))))

(declare-fun c!1475944 () Bool)

(assert (=> bm!747023 (= c!1475944 c!1475942)))

(assert (= (and d!2397356 c!1475942) b!8051881))

(assert (= (and d!2397356 (not c!1475942)) b!8051885))

(assert (= (and b!8051885 c!1475943) b!8051883))

(assert (= (and b!8051885 (not c!1475943)) b!8051887))

(assert (= (or b!8051881 b!8051885) bm!747023))

(assert (= (and bm!747023 c!1475944) b!8051886))

(assert (= (and bm!747023 (not c!1475944)) b!8051888))

(assert (= (and d!2397356 res!3183875) b!8051882))

(assert (= (and d!2397356 (not res!3183874)) b!8051880))

(assert (= (and b!8051880 res!3183876) b!8051884))

(declare-fun m!8402974 () Bool)

(assert (=> b!8051888 m!8402974))

(assert (=> b!8051884 m!8402974))

(assert (=> b!8051884 m!8402974))

(declare-fun m!8402976 () Bool)

(assert (=> b!8051884 m!8402976))

(declare-fun m!8402978 () Bool)

(assert (=> b!8051880 m!8402978))

(assert (=> b!8051880 m!8402978))

(declare-fun m!8402980 () Bool)

(assert (=> b!8051880 m!8402980))

(declare-fun m!8402982 () Bool)

(assert (=> b!8051883 m!8402982))

(declare-fun m!8402984 () Bool)

(assert (=> b!8051883 m!8402984))

(declare-fun m!8402986 () Bool)

(assert (=> b!8051881 m!8402986))

(assert (=> b!8051881 m!8402978))

(assert (=> b!8051881 m!8402978))

(assert (=> b!8051881 m!8402980))

(declare-fun m!8402988 () Bool)

(assert (=> b!8051881 m!8402988))

(assert (=> b!8051882 m!8402974))

(assert (=> b!8051882 m!8402974))

(assert (=> b!8051882 m!8402976))

(declare-fun m!8402990 () Bool)

(assert (=> bm!747023 m!8402990))

(declare-fun m!8402992 () Bool)

(assert (=> b!8051886 m!8402992))

(assert (=> d!2397356 m!8402982))

(assert (=> b!8051824 d!2397356))

(declare-fun d!2397366 () Bool)

(declare-fun res!3183887 () Bool)

(declare-fun e!4744533 () Bool)

(assert (=> d!2397366 (=> res!3183887 e!4744533)))

(assert (=> d!2397366 (= res!3183887 (not ((_ is Cons!75534) (t!391432 l!14636))))))

(assert (=> d!2397366 (= (noDuplicateKeys!2700 (t!391432 l!14636)) e!4744533)))

(declare-fun b!8051903 () Bool)

(declare-fun e!4744534 () Bool)

(assert (=> b!8051903 (= e!4744533 e!4744534)))

(declare-fun res!3183888 () Bool)

(assert (=> b!8051903 (=> (not res!3183888) (not e!4744534))))

(assert (=> b!8051903 (= res!3183888 (not (containsKey!4841 (t!391432 (t!391432 l!14636)) (_1!38741 (h!81982 (t!391432 l!14636))))))))

(declare-fun b!8051904 () Bool)

(assert (=> b!8051904 (= e!4744534 (noDuplicateKeys!2700 (t!391432 (t!391432 l!14636))))))

(assert (= (and d!2397366 (not res!3183887)) b!8051903))

(assert (= (and b!8051903 res!3183888) b!8051904))

(declare-fun m!8402994 () Bool)

(assert (=> b!8051903 m!8402994))

(declare-fun m!8402996 () Bool)

(assert (=> b!8051904 m!8402996))

(assert (=> b!8051823 d!2397366))

(declare-fun b!8051914 () Bool)

(declare-fun e!4744542 () Bool)

(declare-fun e!4744545 () Bool)

(assert (=> b!8051914 (= e!4744542 e!4744545)))

(declare-fun res!3183894 () Bool)

(assert (=> b!8051914 (=> (not res!3183894) (not e!4744545))))

(assert (=> b!8051914 (= res!3183894 (isDefined!14527 (getValueByKey!2778 (toList!11914 lt!2725732) key!6222)))))

(declare-fun b!8051915 () Bool)

(declare-fun e!4744546 () Unit!171627)

(declare-fun lt!2725796 () Unit!171627)

(assert (=> b!8051915 (= e!4744546 lt!2725796)))

(declare-fun lt!2725792 () Unit!171627)

(assert (=> b!8051915 (= lt!2725792 (lemmaContainsKeyImpliesGetValueByKeyDefined!2549 (toList!11914 lt!2725732) key!6222))))

(assert (=> b!8051915 (isDefined!14527 (getValueByKey!2778 (toList!11914 lt!2725732) key!6222))))

(declare-fun lt!2725793 () Unit!171627)

(assert (=> b!8051915 (= lt!2725793 lt!2725792)))

(assert (=> b!8051915 (= lt!2725796 (lemmaInListThenGetKeysListContains!1232 (toList!11914 lt!2725732) key!6222))))

(declare-fun call!747032 () Bool)

(assert (=> b!8051915 call!747032))

(declare-fun b!8051916 () Bool)

(declare-fun e!4744541 () Bool)

(assert (=> b!8051916 (= e!4744541 (not (contains!21194 (keys!30826 lt!2725732) key!6222)))))

(declare-fun b!8051917 () Bool)

(assert (=> b!8051917 false))

(declare-fun lt!2725795 () Unit!171627)

(declare-fun lt!2725797 () Unit!171627)

(assert (=> b!8051917 (= lt!2725795 lt!2725797)))

(assert (=> b!8051917 (containsKey!4843 (toList!11914 lt!2725732) key!6222)))

(assert (=> b!8051917 (= lt!2725797 (lemmaInGetKeysListThenContainsKey!1237 (toList!11914 lt!2725732) key!6222))))

(declare-fun e!4744543 () Unit!171627)

(declare-fun Unit!171645 () Unit!171627)

(assert (=> b!8051917 (= e!4744543 Unit!171645)))

(declare-fun b!8051918 () Bool)

(assert (=> b!8051918 (= e!4744545 (contains!21194 (keys!30826 lt!2725732) key!6222))))

(declare-fun b!8051919 () Bool)

(assert (=> b!8051919 (= e!4744546 e!4744543)))

(declare-fun c!1475951 () Bool)

(assert (=> b!8051919 (= c!1475951 call!747032)))

(declare-fun b!8051920 () Bool)

(declare-fun e!4744544 () List!75662)

(assert (=> b!8051920 (= e!4744544 (getKeysList!1237 (toList!11914 lt!2725732)))))

(declare-fun b!8051921 () Bool)

(declare-fun Unit!171646 () Unit!171627)

(assert (=> b!8051921 (= e!4744543 Unit!171646)))

(declare-fun d!2397368 () Bool)

(assert (=> d!2397368 e!4744542))

(declare-fun res!3183892 () Bool)

(assert (=> d!2397368 (=> res!3183892 e!4744542)))

(assert (=> d!2397368 (= res!3183892 e!4744541)))

(declare-fun res!3183893 () Bool)

(assert (=> d!2397368 (=> (not res!3183893) (not e!4744541))))

(declare-fun lt!2725791 () Bool)

(assert (=> d!2397368 (= res!3183893 (not lt!2725791))))

(declare-fun lt!2725794 () Bool)

(assert (=> d!2397368 (= lt!2725791 lt!2725794)))

(declare-fun lt!2725798 () Unit!171627)

(assert (=> d!2397368 (= lt!2725798 e!4744546)))

(declare-fun c!1475950 () Bool)

(assert (=> d!2397368 (= c!1475950 lt!2725794)))

(assert (=> d!2397368 (= lt!2725794 (containsKey!4843 (toList!11914 lt!2725732) key!6222))))

(assert (=> d!2397368 (= (contains!21191 lt!2725732 key!6222) lt!2725791)))

(declare-fun b!8051922 () Bool)

(assert (=> b!8051922 (= e!4744544 (keys!30826 lt!2725732))))

(declare-fun bm!747027 () Bool)

(assert (=> bm!747027 (= call!747032 (contains!21194 e!4744544 key!6222))))

(declare-fun c!1475952 () Bool)

(assert (=> bm!747027 (= c!1475952 c!1475950)))

(assert (= (and d!2397368 c!1475950) b!8051915))

(assert (= (and d!2397368 (not c!1475950)) b!8051919))

(assert (= (and b!8051919 c!1475951) b!8051917))

(assert (= (and b!8051919 (not c!1475951)) b!8051921))

(assert (= (or b!8051915 b!8051919) bm!747027))

(assert (= (and bm!747027 c!1475952) b!8051920))

(assert (= (and bm!747027 (not c!1475952)) b!8051922))

(assert (= (and d!2397368 res!3183893) b!8051916))

(assert (= (and d!2397368 (not res!3183892)) b!8051914))

(assert (= (and b!8051914 res!3183894) b!8051918))

(declare-fun m!8403008 () Bool)

(assert (=> b!8051922 m!8403008))

(assert (=> b!8051918 m!8403008))

(assert (=> b!8051918 m!8403008))

(declare-fun m!8403012 () Bool)

(assert (=> b!8051918 m!8403012))

(declare-fun m!8403016 () Bool)

(assert (=> b!8051914 m!8403016))

(assert (=> b!8051914 m!8403016))

(declare-fun m!8403020 () Bool)

(assert (=> b!8051914 m!8403020))

(declare-fun m!8403022 () Bool)

(assert (=> b!8051917 m!8403022))

(declare-fun m!8403026 () Bool)

(assert (=> b!8051917 m!8403026))

(declare-fun m!8403028 () Bool)

(assert (=> b!8051915 m!8403028))

(assert (=> b!8051915 m!8403016))

(assert (=> b!8051915 m!8403016))

(assert (=> b!8051915 m!8403020))

(declare-fun m!8403032 () Bool)

(assert (=> b!8051915 m!8403032))

(assert (=> b!8051916 m!8403008))

(assert (=> b!8051916 m!8403008))

(assert (=> b!8051916 m!8403012))

(declare-fun m!8403034 () Bool)

(assert (=> bm!747027 m!8403034))

(declare-fun m!8403036 () Bool)

(assert (=> b!8051920 m!8403036))

(assert (=> d!2397368 m!8403022))

(assert (=> b!8051812 d!2397368))

(declare-fun b!8051993 () Bool)

(assert (=> b!8051993 true))

(declare-fun bs!1972086 () Bool)

(declare-fun b!8051996 () Bool)

(assert (= bs!1972086 (and b!8051996 b!8051993)))

(declare-fun lambda!473437 () Int)

(declare-fun lambda!473436 () Int)

(assert (=> bs!1972086 (= lambda!473437 lambda!473436)))

(assert (=> b!8051996 true))

(declare-fun lambda!473438 () Int)

(declare-fun lt!2725971 () ListMap!7279)

(assert (=> bs!1972086 (= (= lt!2725971 lt!2725732) (= lambda!473438 lambda!473436))))

(assert (=> b!8051996 (= (= lt!2725971 lt!2725732) (= lambda!473438 lambda!473437))))

(assert (=> b!8051996 true))

(declare-fun bs!1972087 () Bool)

(declare-fun d!2397372 () Bool)

(assert (= bs!1972087 (and d!2397372 b!8051993)))

(declare-fun lt!2725966 () ListMap!7279)

(declare-fun lambda!473439 () Int)

(assert (=> bs!1972087 (= (= lt!2725966 lt!2725732) (= lambda!473439 lambda!473436))))

(declare-fun bs!1972088 () Bool)

(assert (= bs!1972088 (and d!2397372 b!8051996)))

(assert (=> bs!1972088 (= (= lt!2725966 lt!2725732) (= lambda!473439 lambda!473437))))

(assert (=> bs!1972088 (= (= lt!2725966 lt!2725971) (= lambda!473439 lambda!473438))))

(assert (=> d!2397372 true))

(declare-fun bm!747049 () Bool)

(declare-fun c!1475968 () Bool)

(declare-fun call!747055 () Bool)

(declare-fun forall!18498 (List!75660 Int) Bool)

(assert (=> bm!747049 (= call!747055 (forall!18498 (ite c!1475968 (toList!11914 lt!2725732) (t!391432 l!14636)) (ite c!1475968 lambda!473436 lambda!473438)))))

(declare-fun b!8051992 () Bool)

(declare-fun res!3183934 () Bool)

(declare-fun e!4744592 () Bool)

(assert (=> b!8051992 (=> (not res!3183934) (not e!4744592))))

(assert (=> b!8051992 (= res!3183934 (forall!18498 (toList!11914 lt!2725732) lambda!473439))))

(declare-fun e!4744590 () ListMap!7279)

(assert (=> b!8051993 (= e!4744590 lt!2725732)))

(declare-fun lt!2725964 () Unit!171627)

(declare-fun call!747056 () Unit!171627)

(assert (=> b!8051993 (= lt!2725964 call!747056)))

(assert (=> b!8051993 call!747055))

(declare-fun lt!2725974 () Unit!171627)

(assert (=> b!8051993 (= lt!2725974 lt!2725964)))

(declare-fun call!747054 () Bool)

(assert (=> b!8051993 call!747054))

(declare-fun lt!2725965 () Unit!171627)

(declare-fun Unit!171649 () Unit!171627)

(assert (=> b!8051993 (= lt!2725965 Unit!171649)))

(declare-fun b!8051994 () Bool)

(declare-fun invariantList!1929 (List!75660) Bool)

(assert (=> b!8051994 (= e!4744592 (invariantList!1929 (toList!11914 lt!2725966)))))

(declare-fun lt!2725980 () ListMap!7279)

(declare-fun bm!747050 () Bool)

(assert (=> bm!747050 (= call!747054 (forall!18498 (ite c!1475968 (toList!11914 lt!2725732) (toList!11914 lt!2725980)) (ite c!1475968 lambda!473436 lambda!473438)))))

(declare-fun b!8051995 () Bool)

(declare-fun e!4744591 () Bool)

(assert (=> b!8051995 (= e!4744591 (forall!18498 (toList!11914 lt!2725732) lambda!473438))))

(declare-fun bm!747051 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1081 (ListMap!7279) Unit!171627)

(assert (=> bm!747051 (= call!747056 (lemmaContainsAllItsOwnKeys!1081 lt!2725732))))

(assert (=> d!2397372 e!4744592))

(declare-fun res!3183933 () Bool)

(assert (=> d!2397372 (=> (not res!3183933) (not e!4744592))))

(assert (=> d!2397372 (= res!3183933 (forall!18498 (t!391432 l!14636) lambda!473439))))

(assert (=> d!2397372 (= lt!2725966 e!4744590)))

(assert (=> d!2397372 (= c!1475968 ((_ is Nil!75534) (t!391432 l!14636)))))

(assert (=> d!2397372 (noDuplicateKeys!2700 (t!391432 l!14636))))

(assert (=> d!2397372 (= (addToMapMapFromBucket!1981 (t!391432 l!14636) lt!2725732) lt!2725966)))

(assert (=> b!8051996 (= e!4744590 lt!2725971)))

(assert (=> b!8051996 (= lt!2725980 (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))))))

(assert (=> b!8051996 (= lt!2725971 (addToMapMapFromBucket!1981 (t!391432 (t!391432 l!14636)) (+!2665 lt!2725732 (h!81982 (t!391432 l!14636)))))))

(declare-fun lt!2725981 () Unit!171627)

(assert (=> b!8051996 (= lt!2725981 call!747056)))

(assert (=> b!8051996 (forall!18498 (toList!11914 lt!2725732) lambda!473437)))

(declare-fun lt!2725968 () Unit!171627)

(assert (=> b!8051996 (= lt!2725968 lt!2725981)))

(assert (=> b!8051996 (forall!18498 (toList!11914 lt!2725980) lambda!473438)))

(declare-fun lt!2725977 () Unit!171627)

(declare-fun Unit!171651 () Unit!171627)

(assert (=> b!8051996 (= lt!2725977 Unit!171651)))

(assert (=> b!8051996 (forall!18498 (t!391432 (t!391432 l!14636)) lambda!473438)))

(declare-fun lt!2725969 () Unit!171627)

(declare-fun Unit!171652 () Unit!171627)

(assert (=> b!8051996 (= lt!2725969 Unit!171652)))

(declare-fun lt!2725972 () Unit!171627)

(declare-fun Unit!171653 () Unit!171627)

(assert (=> b!8051996 (= lt!2725972 Unit!171653)))

(declare-fun lt!2725975 () Unit!171627)

(declare-fun forallContained!4652 (List!75660 Int tuple2!70876) Unit!171627)

(assert (=> b!8051996 (= lt!2725975 (forallContained!4652 (toList!11914 lt!2725980) lambda!473438 (h!81982 (t!391432 l!14636))))))

(assert (=> b!8051996 (contains!21191 lt!2725980 (_1!38741 (h!81982 (t!391432 l!14636))))))

(declare-fun lt!2725973 () Unit!171627)

(declare-fun Unit!171654 () Unit!171627)

(assert (=> b!8051996 (= lt!2725973 Unit!171654)))

(assert (=> b!8051996 (contains!21191 lt!2725971 (_1!38741 (h!81982 (t!391432 l!14636))))))

(declare-fun lt!2725979 () Unit!171627)

(declare-fun Unit!171655 () Unit!171627)

(assert (=> b!8051996 (= lt!2725979 Unit!171655)))

(assert (=> b!8051996 (forall!18498 (t!391432 l!14636) lambda!473438)))

(declare-fun lt!2725963 () Unit!171627)

(declare-fun Unit!171656 () Unit!171627)

(assert (=> b!8051996 (= lt!2725963 Unit!171656)))

(assert (=> b!8051996 call!747054))

(declare-fun lt!2725962 () Unit!171627)

(declare-fun Unit!171657 () Unit!171627)

(assert (=> b!8051996 (= lt!2725962 Unit!171657)))

(declare-fun lt!2725970 () Unit!171627)

(declare-fun Unit!171658 () Unit!171627)

(assert (=> b!8051996 (= lt!2725970 Unit!171658)))

(declare-fun lt!2725978 () Unit!171627)

(declare-fun addForallContainsKeyThenBeforeAdding!1079 (ListMap!7279 ListMap!7279 K!22798 V!23052) Unit!171627)

(assert (=> b!8051996 (= lt!2725978 (addForallContainsKeyThenBeforeAdding!1079 lt!2725732 lt!2725971 (_1!38741 (h!81982 (t!391432 l!14636))) (_2!38741 (h!81982 (t!391432 l!14636)))))))

(assert (=> b!8051996 (forall!18498 (toList!11914 lt!2725732) lambda!473438)))

(declare-fun lt!2725967 () Unit!171627)

(assert (=> b!8051996 (= lt!2725967 lt!2725978)))

(assert (=> b!8051996 (forall!18498 (toList!11914 lt!2725732) lambda!473438)))

(declare-fun lt!2725982 () Unit!171627)

(declare-fun Unit!171659 () Unit!171627)

(assert (=> b!8051996 (= lt!2725982 Unit!171659)))

(declare-fun res!3183932 () Bool)

(assert (=> b!8051996 (= res!3183932 call!747055)))

(assert (=> b!8051996 (=> (not res!3183932) (not e!4744591))))

(assert (=> b!8051996 e!4744591))

(declare-fun lt!2725976 () Unit!171627)

(declare-fun Unit!171660 () Unit!171627)

(assert (=> b!8051996 (= lt!2725976 Unit!171660)))

(assert (= (and d!2397372 c!1475968) b!8051993))

(assert (= (and d!2397372 (not c!1475968)) b!8051996))

(assert (= (and b!8051996 res!3183932) b!8051995))

(assert (= (or b!8051993 b!8051996) bm!747050))

(assert (= (or b!8051993 b!8051996) bm!747049))

(assert (= (or b!8051993 b!8051996) bm!747051))

(assert (= (and d!2397372 res!3183933) b!8051992))

(assert (= (and b!8051992 res!3183934) b!8051994))

(declare-fun m!8403190 () Bool)

(assert (=> b!8051992 m!8403190))

(declare-fun m!8403192 () Bool)

(assert (=> d!2397372 m!8403192))

(assert (=> d!2397372 m!8402940))

(declare-fun m!8403194 () Bool)

(assert (=> bm!747049 m!8403194))

(declare-fun m!8403196 () Bool)

(assert (=> b!8051994 m!8403196))

(declare-fun m!8403198 () Bool)

(assert (=> bm!747051 m!8403198))

(declare-fun m!8403200 () Bool)

(assert (=> b!8051995 m!8403200))

(declare-fun m!8403202 () Bool)

(assert (=> bm!747050 m!8403202))

(declare-fun m!8403204 () Bool)

(assert (=> b!8051996 m!8403204))

(declare-fun m!8403206 () Bool)

(assert (=> b!8051996 m!8403206))

(assert (=> b!8051996 m!8403200))

(declare-fun m!8403208 () Bool)

(assert (=> b!8051996 m!8403208))

(declare-fun m!8403210 () Bool)

(assert (=> b!8051996 m!8403210))

(declare-fun m!8403212 () Bool)

(assert (=> b!8051996 m!8403212))

(declare-fun m!8403214 () Bool)

(assert (=> b!8051996 m!8403214))

(assert (=> b!8051996 m!8403210))

(declare-fun m!8403216 () Bool)

(assert (=> b!8051996 m!8403216))

(declare-fun m!8403218 () Bool)

(assert (=> b!8051996 m!8403218))

(assert (=> b!8051996 m!8403200))

(declare-fun m!8403220 () Bool)

(assert (=> b!8051996 m!8403220))

(declare-fun m!8403222 () Bool)

(assert (=> b!8051996 m!8403222))

(assert (=> b!8051816 d!2397372))

(declare-fun d!2397394 () Bool)

(declare-fun e!4744601 () Bool)

(assert (=> d!2397394 e!4744601))

(declare-fun res!3183942 () Bool)

(assert (=> d!2397394 (=> (not res!3183942) (not e!4744601))))

(declare-fun lt!2725991 () ListMap!7279)

(assert (=> d!2397394 (= res!3183942 (contains!21191 lt!2725991 (_1!38741 (h!81982 l!14636))))))

(declare-fun lt!2725993 () List!75660)

(assert (=> d!2397394 (= lt!2725991 (ListMap!7280 lt!2725993))))

(declare-fun lt!2725992 () Unit!171627)

(declare-fun lt!2725994 () Unit!171627)

(assert (=> d!2397394 (= lt!2725992 lt!2725994)))

(assert (=> d!2397394 (= (getValueByKey!2778 lt!2725993 (_1!38741 (h!81982 l!14636))) (Some!17993 (_2!38741 (h!81982 l!14636))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1270 (List!75660 K!22798 V!23052) Unit!171627)

(assert (=> d!2397394 (= lt!2725994 (lemmaContainsTupThenGetReturnValue!1270 lt!2725993 (_1!38741 (h!81982 l!14636)) (_2!38741 (h!81982 l!14636))))))

(declare-fun insertNoDuplicatedKeys!778 (List!75660 K!22798 V!23052) List!75660)

(assert (=> d!2397394 (= lt!2725993 (insertNoDuplicatedKeys!778 (toList!11914 acc!1298) (_1!38741 (h!81982 l!14636)) (_2!38741 (h!81982 l!14636))))))

(assert (=> d!2397394 (= (+!2665 acc!1298 (h!81982 l!14636)) lt!2725991)))

(declare-fun b!8052011 () Bool)

(declare-fun res!3183941 () Bool)

(assert (=> b!8052011 (=> (not res!3183941) (not e!4744601))))

(assert (=> b!8052011 (= res!3183941 (= (getValueByKey!2778 (toList!11914 lt!2725991) (_1!38741 (h!81982 l!14636))) (Some!17993 (_2!38741 (h!81982 l!14636)))))))

(declare-fun b!8052012 () Bool)

(assert (=> b!8052012 (= e!4744601 (contains!21192 (toList!11914 lt!2725991) (h!81982 l!14636)))))

(assert (= (and d!2397394 res!3183942) b!8052011))

(assert (= (and b!8052011 res!3183941) b!8052012))

(declare-fun m!8403224 () Bool)

(assert (=> d!2397394 m!8403224))

(declare-fun m!8403226 () Bool)

(assert (=> d!2397394 m!8403226))

(declare-fun m!8403228 () Bool)

(assert (=> d!2397394 m!8403228))

(declare-fun m!8403230 () Bool)

(assert (=> d!2397394 m!8403230))

(declare-fun m!8403232 () Bool)

(assert (=> b!8052011 m!8403232))

(declare-fun m!8403234 () Bool)

(assert (=> b!8052012 m!8403234))

(assert (=> b!8051816 d!2397394))

(declare-fun d!2397396 () Bool)

(declare-fun get!27209 (Option!17994) V!23052)

(assert (=> d!2397396 (= (apply!14427 lt!2725732 key!6222) (get!27209 (getValueByKey!2778 (toList!11914 lt!2725732) key!6222)))))

(declare-fun bs!1972089 () Bool)

(assert (= bs!1972089 d!2397396))

(assert (=> bs!1972089 m!8403016))

(assert (=> bs!1972089 m!8403016))

(declare-fun m!8403236 () Bool)

(assert (=> bs!1972089 m!8403236))

(assert (=> b!8051815 d!2397396))

(declare-fun lt!2725997 () Bool)

(declare-fun d!2397398 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16102 (List!75660) (InoxSet tuple2!70876))

(assert (=> d!2397398 (= lt!2725997 (select (content!16102 (t!391432 l!14636)) (tuple2!70877 key!6222 value!3131)))))

(declare-fun e!4744606 () Bool)

(assert (=> d!2397398 (= lt!2725997 e!4744606)))

(declare-fun res!3183948 () Bool)

(assert (=> d!2397398 (=> (not res!3183948) (not e!4744606))))

(assert (=> d!2397398 (= res!3183948 ((_ is Cons!75534) (t!391432 l!14636)))))

(assert (=> d!2397398 (= (contains!21192 (t!391432 l!14636) (tuple2!70877 key!6222 value!3131)) lt!2725997)))

(declare-fun b!8052017 () Bool)

(declare-fun e!4744607 () Bool)

(assert (=> b!8052017 (= e!4744606 e!4744607)))

(declare-fun res!3183947 () Bool)

(assert (=> b!8052017 (=> res!3183947 e!4744607)))

(assert (=> b!8052017 (= res!3183947 (= (h!81982 (t!391432 l!14636)) (tuple2!70877 key!6222 value!3131)))))

(declare-fun b!8052018 () Bool)

(assert (=> b!8052018 (= e!4744607 (contains!21192 (t!391432 (t!391432 l!14636)) (tuple2!70877 key!6222 value!3131)))))

(assert (= (and d!2397398 res!3183948) b!8052017))

(assert (= (and b!8052017 (not res!3183947)) b!8052018))

(declare-fun m!8403238 () Bool)

(assert (=> d!2397398 m!8403238))

(declare-fun m!8403240 () Bool)

(assert (=> d!2397398 m!8403240))

(declare-fun m!8403242 () Bool)

(assert (=> b!8052018 m!8403242))

(assert (=> b!8051825 d!2397398))

(declare-fun d!2397400 () Bool)

(assert (=> d!2397400 (not (contains!21192 (t!391432 l!14636) (tuple2!70877 key!6222 value!3131)))))

(declare-fun lt!2726000 () Unit!171627)

(declare-fun choose!60498 (List!75660 K!22798 V!23052) Unit!171627)

(assert (=> d!2397400 (= lt!2726000 (choose!60498 (t!391432 l!14636) key!6222 value!3131))))

(assert (=> d!2397400 (not (containsKey!4841 (t!391432 l!14636) key!6222))))

(assert (=> d!2397400 (= (lemmaNotContainsKeyThenCannotContainPair!20 (t!391432 l!14636) key!6222 value!3131) lt!2726000)))

(declare-fun bs!1972090 () Bool)

(assert (= bs!1972090 d!2397400))

(assert (=> bs!1972090 m!8402952))

(declare-fun m!8403244 () Bool)

(assert (=> bs!1972090 m!8403244))

(assert (=> bs!1972090 m!8402932))

(assert (=> b!8051825 d!2397400))

(declare-fun d!2397402 () Bool)

(assert (=> d!2397402 (= (apply!14427 acc!1298 key!6222) (get!27209 (getValueByKey!2778 (toList!11914 acc!1298) key!6222)))))

(declare-fun bs!1972091 () Bool)

(assert (= bs!1972091 d!2397402))

(assert (=> bs!1972091 m!8402978))

(assert (=> bs!1972091 m!8402978))

(declare-fun m!8403246 () Bool)

(assert (=> bs!1972091 m!8403246))

(assert (=> b!8051814 d!2397402))

(declare-fun d!2397404 () Bool)

(declare-fun res!3183949 () Bool)

(declare-fun e!4744608 () Bool)

(assert (=> d!2397404 (=> res!3183949 e!4744608)))

(assert (=> d!2397404 (= res!3183949 (and ((_ is Cons!75534) (t!391432 l!14636)) (= (_1!38741 (h!81982 (t!391432 l!14636))) key!6222)))))

(assert (=> d!2397404 (= (containsKey!4841 (t!391432 l!14636) key!6222) e!4744608)))

(declare-fun b!8052019 () Bool)

(declare-fun e!4744609 () Bool)

(assert (=> b!8052019 (= e!4744608 e!4744609)))

(declare-fun res!3183950 () Bool)

(assert (=> b!8052019 (=> (not res!3183950) (not e!4744609))))

(assert (=> b!8052019 (= res!3183950 ((_ is Cons!75534) (t!391432 l!14636)))))

(declare-fun b!8052020 () Bool)

(assert (=> b!8052020 (= e!4744609 (containsKey!4841 (t!391432 (t!391432 l!14636)) key!6222))))

(assert (= (and d!2397404 (not res!3183949)) b!8052019))

(assert (= (and b!8052019 res!3183950) b!8052020))

(declare-fun m!8403248 () Bool)

(assert (=> b!8052020 m!8403248))

(assert (=> b!8051829 d!2397404))

(declare-fun b!8052021 () Bool)

(declare-fun e!4744611 () Bool)

(declare-fun e!4744614 () Bool)

(assert (=> b!8052021 (= e!4744611 e!4744614)))

(declare-fun res!3183953 () Bool)

(assert (=> b!8052021 (=> (not res!3183953) (not e!4744614))))

(assert (=> b!8052021 (= res!3183953 (isDefined!14527 (getValueByKey!2778 (toList!11914 lt!2725734) key!6222)))))

(declare-fun b!8052022 () Bool)

(declare-fun e!4744615 () Unit!171627)

(declare-fun lt!2726006 () Unit!171627)

(assert (=> b!8052022 (= e!4744615 lt!2726006)))

(declare-fun lt!2726002 () Unit!171627)

(assert (=> b!8052022 (= lt!2726002 (lemmaContainsKeyImpliesGetValueByKeyDefined!2549 (toList!11914 lt!2725734) key!6222))))

(assert (=> b!8052022 (isDefined!14527 (getValueByKey!2778 (toList!11914 lt!2725734) key!6222))))

(declare-fun lt!2726003 () Unit!171627)

(assert (=> b!8052022 (= lt!2726003 lt!2726002)))

(assert (=> b!8052022 (= lt!2726006 (lemmaInListThenGetKeysListContains!1232 (toList!11914 lt!2725734) key!6222))))

(declare-fun call!747057 () Bool)

(assert (=> b!8052022 call!747057))

(declare-fun b!8052023 () Bool)

(declare-fun e!4744610 () Bool)

(assert (=> b!8052023 (= e!4744610 (not (contains!21194 (keys!30826 lt!2725734) key!6222)))))

(declare-fun b!8052024 () Bool)

(assert (=> b!8052024 false))

(declare-fun lt!2726005 () Unit!171627)

(declare-fun lt!2726007 () Unit!171627)

(assert (=> b!8052024 (= lt!2726005 lt!2726007)))

(assert (=> b!8052024 (containsKey!4843 (toList!11914 lt!2725734) key!6222)))

(assert (=> b!8052024 (= lt!2726007 (lemmaInGetKeysListThenContainsKey!1237 (toList!11914 lt!2725734) key!6222))))

(declare-fun e!4744612 () Unit!171627)

(declare-fun Unit!171672 () Unit!171627)

(assert (=> b!8052024 (= e!4744612 Unit!171672)))

(declare-fun b!8052025 () Bool)

(assert (=> b!8052025 (= e!4744614 (contains!21194 (keys!30826 lt!2725734) key!6222))))

(declare-fun b!8052026 () Bool)

(assert (=> b!8052026 (= e!4744615 e!4744612)))

(declare-fun c!1475970 () Bool)

(assert (=> b!8052026 (= c!1475970 call!747057)))

(declare-fun b!8052027 () Bool)

(declare-fun e!4744613 () List!75662)

(assert (=> b!8052027 (= e!4744613 (getKeysList!1237 (toList!11914 lt!2725734)))))

(declare-fun b!8052028 () Bool)

(declare-fun Unit!171673 () Unit!171627)

(assert (=> b!8052028 (= e!4744612 Unit!171673)))

(declare-fun d!2397406 () Bool)

(assert (=> d!2397406 e!4744611))

(declare-fun res!3183951 () Bool)

(assert (=> d!2397406 (=> res!3183951 e!4744611)))

(assert (=> d!2397406 (= res!3183951 e!4744610)))

(declare-fun res!3183952 () Bool)

(assert (=> d!2397406 (=> (not res!3183952) (not e!4744610))))

(declare-fun lt!2726001 () Bool)

(assert (=> d!2397406 (= res!3183952 (not lt!2726001))))

(declare-fun lt!2726004 () Bool)

(assert (=> d!2397406 (= lt!2726001 lt!2726004)))

(declare-fun lt!2726008 () Unit!171627)

(assert (=> d!2397406 (= lt!2726008 e!4744615)))

(declare-fun c!1475969 () Bool)

(assert (=> d!2397406 (= c!1475969 lt!2726004)))

(assert (=> d!2397406 (= lt!2726004 (containsKey!4843 (toList!11914 lt!2725734) key!6222))))

(assert (=> d!2397406 (= (contains!21191 lt!2725734 key!6222) lt!2726001)))

(declare-fun b!8052029 () Bool)

(assert (=> b!8052029 (= e!4744613 (keys!30826 lt!2725734))))

(declare-fun bm!747052 () Bool)

(assert (=> bm!747052 (= call!747057 (contains!21194 e!4744613 key!6222))))

(declare-fun c!1475971 () Bool)

(assert (=> bm!747052 (= c!1475971 c!1475969)))

(assert (= (and d!2397406 c!1475969) b!8052022))

(assert (= (and d!2397406 (not c!1475969)) b!8052026))

(assert (= (and b!8052026 c!1475970) b!8052024))

(assert (= (and b!8052026 (not c!1475970)) b!8052028))

(assert (= (or b!8052022 b!8052026) bm!747052))

(assert (= (and bm!747052 c!1475971) b!8052027))

(assert (= (and bm!747052 (not c!1475971)) b!8052029))

(assert (= (and d!2397406 res!3183952) b!8052023))

(assert (= (and d!2397406 (not res!3183951)) b!8052021))

(assert (= (and b!8052021 res!3183953) b!8052025))

(declare-fun m!8403250 () Bool)

(assert (=> b!8052029 m!8403250))

(assert (=> b!8052025 m!8403250))

(assert (=> b!8052025 m!8403250))

(declare-fun m!8403252 () Bool)

(assert (=> b!8052025 m!8403252))

(declare-fun m!8403254 () Bool)

(assert (=> b!8052021 m!8403254))

(assert (=> b!8052021 m!8403254))

(declare-fun m!8403256 () Bool)

(assert (=> b!8052021 m!8403256))

(declare-fun m!8403258 () Bool)

(assert (=> b!8052024 m!8403258))

(declare-fun m!8403260 () Bool)

(assert (=> b!8052024 m!8403260))

(declare-fun m!8403262 () Bool)

(assert (=> b!8052022 m!8403262))

(assert (=> b!8052022 m!8403254))

(assert (=> b!8052022 m!8403254))

(assert (=> b!8052022 m!8403256))

(declare-fun m!8403264 () Bool)

(assert (=> b!8052022 m!8403264))

(assert (=> b!8052023 m!8403250))

(assert (=> b!8052023 m!8403250))

(assert (=> b!8052023 m!8403252))

(declare-fun m!8403266 () Bool)

(assert (=> bm!747052 m!8403266))

(declare-fun m!8403268 () Bool)

(assert (=> b!8052027 m!8403268))

(assert (=> d!2397406 m!8403258))

(assert (=> b!8051818 d!2397406))

(assert (=> b!8051828 d!2397404))

(declare-fun d!2397408 () Bool)

(declare-fun lt!2726009 () Bool)

(assert (=> d!2397408 (= lt!2726009 (select (content!16102 l!14636) (tuple2!70877 key!6222 value!3131)))))

(declare-fun e!4744616 () Bool)

(assert (=> d!2397408 (= lt!2726009 e!4744616)))

(declare-fun res!3183955 () Bool)

(assert (=> d!2397408 (=> (not res!3183955) (not e!4744616))))

(assert (=> d!2397408 (= res!3183955 ((_ is Cons!75534) l!14636))))

(assert (=> d!2397408 (= (contains!21192 l!14636 (tuple2!70877 key!6222 value!3131)) lt!2726009)))

(declare-fun b!8052030 () Bool)

(declare-fun e!4744617 () Bool)

(assert (=> b!8052030 (= e!4744616 e!4744617)))

(declare-fun res!3183954 () Bool)

(assert (=> b!8052030 (=> res!3183954 e!4744617)))

(assert (=> b!8052030 (= res!3183954 (= (h!81982 l!14636) (tuple2!70877 key!6222 value!3131)))))

(declare-fun b!8052031 () Bool)

(assert (=> b!8052031 (= e!4744617 (contains!21192 (t!391432 l!14636) (tuple2!70877 key!6222 value!3131)))))

(assert (= (and d!2397408 res!3183955) b!8052030))

(assert (= (and b!8052030 (not res!3183954)) b!8052031))

(declare-fun m!8403270 () Bool)

(assert (=> d!2397408 m!8403270))

(declare-fun m!8403272 () Bool)

(assert (=> d!2397408 m!8403272))

(assert (=> b!8052031 m!8402952))

(assert (=> b!8051821 d!2397408))

(declare-fun d!2397410 () Bool)

(declare-fun res!3183956 () Bool)

(declare-fun e!4744618 () Bool)

(assert (=> d!2397410 (=> res!3183956 e!4744618)))

(assert (=> d!2397410 (= res!3183956 (not ((_ is Cons!75534) l!14636)))))

(assert (=> d!2397410 (= (noDuplicateKeys!2700 l!14636) e!4744618)))

(declare-fun b!8052032 () Bool)

(declare-fun e!4744619 () Bool)

(assert (=> b!8052032 (= e!4744618 e!4744619)))

(declare-fun res!3183957 () Bool)

(assert (=> b!8052032 (=> (not res!3183957) (not e!4744619))))

(assert (=> b!8052032 (= res!3183957 (not (containsKey!4841 (t!391432 l!14636) (_1!38741 (h!81982 l!14636)))))))

(declare-fun b!8052033 () Bool)

(assert (=> b!8052033 (= e!4744619 (noDuplicateKeys!2700 (t!391432 l!14636)))))

(assert (= (and d!2397410 (not res!3183956)) b!8052032))

(assert (= (and b!8052032 res!3183957) b!8052033))

(declare-fun m!8403274 () Bool)

(assert (=> b!8052032 m!8403274))

(assert (=> b!8052033 m!8402940))

(assert (=> start!758332 d!2397410))

(declare-fun d!2397412 () Bool)

(assert (=> d!2397412 (= (inv!97287 acc!1298) (invariantList!1929 (toList!11914 acc!1298)))))

(declare-fun bs!1972092 () Bool)

(assert (= bs!1972092 d!2397412))

(declare-fun m!8403276 () Bool)

(assert (=> bs!1972092 m!8403276))

(assert (=> start!758332 d!2397412))

(assert (=> b!8051820 d!2397352))

(declare-fun b!8052034 () Bool)

(declare-fun e!4744621 () Bool)

(declare-fun e!4744624 () Bool)

(assert (=> b!8052034 (= e!4744621 e!4744624)))

(declare-fun res!3183960 () Bool)

(assert (=> b!8052034 (=> (not res!3183960) (not e!4744624))))

(assert (=> b!8052034 (= res!3183960 (isDefined!14527 (getValueByKey!2778 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8052035 () Bool)

(declare-fun e!4744625 () Unit!171627)

(declare-fun lt!2726015 () Unit!171627)

(assert (=> b!8052035 (= e!4744625 lt!2726015)))

(declare-fun lt!2726011 () Unit!171627)

(assert (=> b!8052035 (= lt!2726011 (lemmaContainsKeyImpliesGetValueByKeyDefined!2549 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222))))

(assert (=> b!8052035 (isDefined!14527 (getValueByKey!2778 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222))))

(declare-fun lt!2726012 () Unit!171627)

(assert (=> b!8052035 (= lt!2726012 lt!2726011)))

(assert (=> b!8052035 (= lt!2726015 (lemmaInListThenGetKeysListContains!1232 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222))))

(declare-fun call!747058 () Bool)

(assert (=> b!8052035 call!747058))

(declare-fun b!8052036 () Bool)

(declare-fun e!4744620 () Bool)

(assert (=> b!8052036 (= e!4744620 (not (contains!21194 (keys!30826 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8052037 () Bool)

(assert (=> b!8052037 false))

(declare-fun lt!2726014 () Unit!171627)

(declare-fun lt!2726016 () Unit!171627)

(assert (=> b!8052037 (= lt!2726014 lt!2726016)))

(assert (=> b!8052037 (containsKey!4843 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222)))

(assert (=> b!8052037 (= lt!2726016 (lemmaInGetKeysListThenContainsKey!1237 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222))))

(declare-fun e!4744622 () Unit!171627)

(declare-fun Unit!171676 () Unit!171627)

(assert (=> b!8052037 (= e!4744622 Unit!171676)))

(declare-fun b!8052038 () Bool)

(assert (=> b!8052038 (= e!4744624 (contains!21194 (keys!30826 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222))))

(declare-fun b!8052039 () Bool)

(assert (=> b!8052039 (= e!4744625 e!4744622)))

(declare-fun c!1475973 () Bool)

(assert (=> b!8052039 (= c!1475973 call!747058)))

(declare-fun b!8052040 () Bool)

(declare-fun e!4744623 () List!75662)

(assert (=> b!8052040 (= e!4744623 (getKeysList!1237 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))))))

(declare-fun b!8052041 () Bool)

(declare-fun Unit!171677 () Unit!171627)

(assert (=> b!8052041 (= e!4744622 Unit!171677)))

(declare-fun d!2397414 () Bool)

(assert (=> d!2397414 e!4744621))

(declare-fun res!3183958 () Bool)

(assert (=> d!2397414 (=> res!3183958 e!4744621)))

(assert (=> d!2397414 (= res!3183958 e!4744620)))

(declare-fun res!3183959 () Bool)

(assert (=> d!2397414 (=> (not res!3183959) (not e!4744620))))

(declare-fun lt!2726010 () Bool)

(assert (=> d!2397414 (= res!3183959 (not lt!2726010))))

(declare-fun lt!2726013 () Bool)

(assert (=> d!2397414 (= lt!2726010 lt!2726013)))

(declare-fun lt!2726017 () Unit!171627)

(assert (=> d!2397414 (= lt!2726017 e!4744625)))

(declare-fun c!1475972 () Bool)

(assert (=> d!2397414 (= c!1475972 lt!2726013)))

(assert (=> d!2397414 (= lt!2726013 (containsKey!4843 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222))))

(assert (=> d!2397414 (= (contains!21191 (addToMapMapFromBucket!1981 l!14636 acc!1298) key!6222) lt!2726010)))

(declare-fun b!8052042 () Bool)

(assert (=> b!8052042 (= e!4744623 (keys!30826 (addToMapMapFromBucket!1981 l!14636 acc!1298)))))

(declare-fun bm!747053 () Bool)

(assert (=> bm!747053 (= call!747058 (contains!21194 e!4744623 key!6222))))

(declare-fun c!1475974 () Bool)

(assert (=> bm!747053 (= c!1475974 c!1475972)))

(assert (= (and d!2397414 c!1475972) b!8052035))

(assert (= (and d!2397414 (not c!1475972)) b!8052039))

(assert (= (and b!8052039 c!1475973) b!8052037))

(assert (= (and b!8052039 (not c!1475973)) b!8052041))

(assert (= (or b!8052035 b!8052039) bm!747053))

(assert (= (and bm!747053 c!1475974) b!8052040))

(assert (= (and bm!747053 (not c!1475974)) b!8052042))

(assert (= (and d!2397414 res!3183959) b!8052036))

(assert (= (and d!2397414 (not res!3183958)) b!8052034))

(assert (= (and b!8052034 res!3183960) b!8052038))

(assert (=> b!8052042 m!8402942))

(declare-fun m!8403278 () Bool)

(assert (=> b!8052042 m!8403278))

(assert (=> b!8052038 m!8402942))

(assert (=> b!8052038 m!8403278))

(assert (=> b!8052038 m!8403278))

(declare-fun m!8403280 () Bool)

(assert (=> b!8052038 m!8403280))

(declare-fun m!8403282 () Bool)

(assert (=> b!8052034 m!8403282))

(assert (=> b!8052034 m!8403282))

(declare-fun m!8403284 () Bool)

(assert (=> b!8052034 m!8403284))

(declare-fun m!8403286 () Bool)

(assert (=> b!8052037 m!8403286))

(declare-fun m!8403288 () Bool)

(assert (=> b!8052037 m!8403288))

(declare-fun m!8403290 () Bool)

(assert (=> b!8052035 m!8403290))

(assert (=> b!8052035 m!8403282))

(assert (=> b!8052035 m!8403282))

(assert (=> b!8052035 m!8403284))

(declare-fun m!8403292 () Bool)

(assert (=> b!8052035 m!8403292))

(assert (=> b!8052036 m!8402942))

(assert (=> b!8052036 m!8403278))

(assert (=> b!8052036 m!8403278))

(assert (=> b!8052036 m!8403280))

(declare-fun m!8403294 () Bool)

(assert (=> bm!747053 m!8403294))

(declare-fun m!8403296 () Bool)

(assert (=> b!8052040 m!8403296))

(assert (=> d!2397414 m!8403286))

(assert (=> b!8051819 d!2397414))

(declare-fun bs!1972093 () Bool)

(declare-fun b!8052044 () Bool)

(assert (= bs!1972093 (and b!8052044 b!8051993)))

(declare-fun lambda!473440 () Int)

(assert (=> bs!1972093 (= (= acc!1298 lt!2725732) (= lambda!473440 lambda!473436))))

(declare-fun bs!1972094 () Bool)

(assert (= bs!1972094 (and b!8052044 b!8051996)))

(assert (=> bs!1972094 (= (= acc!1298 lt!2725732) (= lambda!473440 lambda!473437))))

(assert (=> bs!1972094 (= (= acc!1298 lt!2725971) (= lambda!473440 lambda!473438))))

(declare-fun bs!1972095 () Bool)

(assert (= bs!1972095 (and b!8052044 d!2397372)))

(assert (=> bs!1972095 (= (= acc!1298 lt!2725966) (= lambda!473440 lambda!473439))))

(assert (=> b!8052044 true))

(declare-fun bs!1972096 () Bool)

(declare-fun b!8052047 () Bool)

(assert (= bs!1972096 (and b!8052047 b!8051996)))

(declare-fun lambda!473441 () Int)

(assert (=> bs!1972096 (= (= acc!1298 lt!2725971) (= lambda!473441 lambda!473438))))

(declare-fun bs!1972097 () Bool)

(assert (= bs!1972097 (and b!8052047 b!8051993)))

(assert (=> bs!1972097 (= (= acc!1298 lt!2725732) (= lambda!473441 lambda!473436))))

(assert (=> bs!1972096 (= (= acc!1298 lt!2725732) (= lambda!473441 lambda!473437))))

(declare-fun bs!1972098 () Bool)

(assert (= bs!1972098 (and b!8052047 b!8052044)))

(assert (=> bs!1972098 (= lambda!473441 lambda!473440)))

(declare-fun bs!1972099 () Bool)

(assert (= bs!1972099 (and b!8052047 d!2397372)))

(assert (=> bs!1972099 (= (= acc!1298 lt!2725966) (= lambda!473441 lambda!473439))))

(assert (=> b!8052047 true))

(declare-fun lambda!473442 () Int)

(declare-fun lt!2726027 () ListMap!7279)

(assert (=> bs!1972096 (= (= lt!2726027 lt!2725971) (= lambda!473442 lambda!473438))))

(assert (=> bs!1972097 (= (= lt!2726027 lt!2725732) (= lambda!473442 lambda!473436))))

(assert (=> bs!1972096 (= (= lt!2726027 lt!2725732) (= lambda!473442 lambda!473437))))

(assert (=> b!8052047 (= (= lt!2726027 acc!1298) (= lambda!473442 lambda!473441))))

(assert (=> bs!1972098 (= (= lt!2726027 acc!1298) (= lambda!473442 lambda!473440))))

(assert (=> bs!1972099 (= (= lt!2726027 lt!2725966) (= lambda!473442 lambda!473439))))

(assert (=> b!8052047 true))

(declare-fun bs!1972100 () Bool)

(declare-fun d!2397416 () Bool)

(assert (= bs!1972100 (and d!2397416 b!8052047)))

(declare-fun lt!2726022 () ListMap!7279)

(declare-fun lambda!473443 () Int)

(assert (=> bs!1972100 (= (= lt!2726022 lt!2726027) (= lambda!473443 lambda!473442))))

(declare-fun bs!1972101 () Bool)

(assert (= bs!1972101 (and d!2397416 b!8051996)))

(assert (=> bs!1972101 (= (= lt!2726022 lt!2725971) (= lambda!473443 lambda!473438))))

(declare-fun bs!1972102 () Bool)

(assert (= bs!1972102 (and d!2397416 b!8051993)))

(assert (=> bs!1972102 (= (= lt!2726022 lt!2725732) (= lambda!473443 lambda!473436))))

(assert (=> bs!1972101 (= (= lt!2726022 lt!2725732) (= lambda!473443 lambda!473437))))

(assert (=> bs!1972100 (= (= lt!2726022 acc!1298) (= lambda!473443 lambda!473441))))

(declare-fun bs!1972103 () Bool)

(assert (= bs!1972103 (and d!2397416 b!8052044)))

(assert (=> bs!1972103 (= (= lt!2726022 acc!1298) (= lambda!473443 lambda!473440))))

(declare-fun bs!1972104 () Bool)

(assert (= bs!1972104 (and d!2397416 d!2397372)))

(assert (=> bs!1972104 (= (= lt!2726022 lt!2725966) (= lambda!473443 lambda!473439))))

(assert (=> d!2397416 true))

(declare-fun bm!747054 () Bool)

(declare-fun call!747060 () Bool)

(declare-fun c!1475975 () Bool)

(assert (=> bm!747054 (= call!747060 (forall!18498 (ite c!1475975 (toList!11914 acc!1298) l!14636) (ite c!1475975 lambda!473440 lambda!473442)))))

(declare-fun b!8052043 () Bool)

(declare-fun res!3183963 () Bool)

(declare-fun e!4744628 () Bool)

(assert (=> b!8052043 (=> (not res!3183963) (not e!4744628))))

(assert (=> b!8052043 (= res!3183963 (forall!18498 (toList!11914 acc!1298) lambda!473443))))

(declare-fun e!4744626 () ListMap!7279)

(assert (=> b!8052044 (= e!4744626 acc!1298)))

(declare-fun lt!2726020 () Unit!171627)

(declare-fun call!747061 () Unit!171627)

(assert (=> b!8052044 (= lt!2726020 call!747061)))

(assert (=> b!8052044 call!747060))

(declare-fun lt!2726030 () Unit!171627)

(assert (=> b!8052044 (= lt!2726030 lt!2726020)))

(declare-fun call!747059 () Bool)

(assert (=> b!8052044 call!747059))

(declare-fun lt!2726021 () Unit!171627)

(declare-fun Unit!171678 () Unit!171627)

(assert (=> b!8052044 (= lt!2726021 Unit!171678)))

(declare-fun b!8052045 () Bool)

(assert (=> b!8052045 (= e!4744628 (invariantList!1929 (toList!11914 lt!2726022)))))

(declare-fun lt!2726036 () ListMap!7279)

(declare-fun bm!747055 () Bool)

(assert (=> bm!747055 (= call!747059 (forall!18498 (ite c!1475975 (toList!11914 acc!1298) (toList!11914 lt!2726036)) (ite c!1475975 lambda!473440 lambda!473442)))))

(declare-fun b!8052046 () Bool)

(declare-fun e!4744627 () Bool)

(assert (=> b!8052046 (= e!4744627 (forall!18498 (toList!11914 acc!1298) lambda!473442))))

(declare-fun bm!747056 () Bool)

(assert (=> bm!747056 (= call!747061 (lemmaContainsAllItsOwnKeys!1081 acc!1298))))

(assert (=> d!2397416 e!4744628))

(declare-fun res!3183962 () Bool)

(assert (=> d!2397416 (=> (not res!3183962) (not e!4744628))))

(assert (=> d!2397416 (= res!3183962 (forall!18498 l!14636 lambda!473443))))

(assert (=> d!2397416 (= lt!2726022 e!4744626)))

(assert (=> d!2397416 (= c!1475975 ((_ is Nil!75534) l!14636))))

(assert (=> d!2397416 (noDuplicateKeys!2700 l!14636)))

(assert (=> d!2397416 (= (addToMapMapFromBucket!1981 l!14636 acc!1298) lt!2726022)))

(assert (=> b!8052047 (= e!4744626 lt!2726027)))

(assert (=> b!8052047 (= lt!2726036 (+!2665 acc!1298 (h!81982 l!14636)))))

(assert (=> b!8052047 (= lt!2726027 (addToMapMapFromBucket!1981 (t!391432 l!14636) (+!2665 acc!1298 (h!81982 l!14636))))))

(declare-fun lt!2726037 () Unit!171627)

(assert (=> b!8052047 (= lt!2726037 call!747061)))

(assert (=> b!8052047 (forall!18498 (toList!11914 acc!1298) lambda!473441)))

(declare-fun lt!2726024 () Unit!171627)

(assert (=> b!8052047 (= lt!2726024 lt!2726037)))

(assert (=> b!8052047 (forall!18498 (toList!11914 lt!2726036) lambda!473442)))

(declare-fun lt!2726033 () Unit!171627)

(declare-fun Unit!171679 () Unit!171627)

(assert (=> b!8052047 (= lt!2726033 Unit!171679)))

(assert (=> b!8052047 (forall!18498 (t!391432 l!14636) lambda!473442)))

(declare-fun lt!2726025 () Unit!171627)

(declare-fun Unit!171680 () Unit!171627)

(assert (=> b!8052047 (= lt!2726025 Unit!171680)))

(declare-fun lt!2726028 () Unit!171627)

(declare-fun Unit!171681 () Unit!171627)

(assert (=> b!8052047 (= lt!2726028 Unit!171681)))

(declare-fun lt!2726031 () Unit!171627)

(assert (=> b!8052047 (= lt!2726031 (forallContained!4652 (toList!11914 lt!2726036) lambda!473442 (h!81982 l!14636)))))

(assert (=> b!8052047 (contains!21191 lt!2726036 (_1!38741 (h!81982 l!14636)))))

(declare-fun lt!2726029 () Unit!171627)

(declare-fun Unit!171682 () Unit!171627)

(assert (=> b!8052047 (= lt!2726029 Unit!171682)))

(assert (=> b!8052047 (contains!21191 lt!2726027 (_1!38741 (h!81982 l!14636)))))

(declare-fun lt!2726035 () Unit!171627)

(declare-fun Unit!171683 () Unit!171627)

(assert (=> b!8052047 (= lt!2726035 Unit!171683)))

(assert (=> b!8052047 (forall!18498 l!14636 lambda!473442)))

(declare-fun lt!2726019 () Unit!171627)

(declare-fun Unit!171684 () Unit!171627)

(assert (=> b!8052047 (= lt!2726019 Unit!171684)))

(assert (=> b!8052047 call!747059))

(declare-fun lt!2726018 () Unit!171627)

(declare-fun Unit!171685 () Unit!171627)

(assert (=> b!8052047 (= lt!2726018 Unit!171685)))

(declare-fun lt!2726026 () Unit!171627)

(declare-fun Unit!171686 () Unit!171627)

(assert (=> b!8052047 (= lt!2726026 Unit!171686)))

(declare-fun lt!2726034 () Unit!171627)

(assert (=> b!8052047 (= lt!2726034 (addForallContainsKeyThenBeforeAdding!1079 acc!1298 lt!2726027 (_1!38741 (h!81982 l!14636)) (_2!38741 (h!81982 l!14636))))))

(assert (=> b!8052047 (forall!18498 (toList!11914 acc!1298) lambda!473442)))

(declare-fun lt!2726023 () Unit!171627)

(assert (=> b!8052047 (= lt!2726023 lt!2726034)))

(assert (=> b!8052047 (forall!18498 (toList!11914 acc!1298) lambda!473442)))

(declare-fun lt!2726038 () Unit!171627)

(declare-fun Unit!171687 () Unit!171627)

(assert (=> b!8052047 (= lt!2726038 Unit!171687)))

(declare-fun res!3183961 () Bool)

(assert (=> b!8052047 (= res!3183961 call!747060)))

(assert (=> b!8052047 (=> (not res!3183961) (not e!4744627))))

(assert (=> b!8052047 e!4744627))

(declare-fun lt!2726032 () Unit!171627)

(declare-fun Unit!171688 () Unit!171627)

(assert (=> b!8052047 (= lt!2726032 Unit!171688)))

(assert (= (and d!2397416 c!1475975) b!8052044))

(assert (= (and d!2397416 (not c!1475975)) b!8052047))

(assert (= (and b!8052047 res!3183961) b!8052046))

(assert (= (or b!8052044 b!8052047) bm!747055))

(assert (= (or b!8052044 b!8052047) bm!747054))

(assert (= (or b!8052044 b!8052047) bm!747056))

(assert (= (and d!2397416 res!3183962) b!8052043))

(assert (= (and b!8052043 res!3183963) b!8052045))

(declare-fun m!8403298 () Bool)

(assert (=> b!8052043 m!8403298))

(declare-fun m!8403300 () Bool)

(assert (=> d!2397416 m!8403300))

(assert (=> d!2397416 m!8402958))

(declare-fun m!8403302 () Bool)

(assert (=> bm!747054 m!8403302))

(declare-fun m!8403304 () Bool)

(assert (=> b!8052045 m!8403304))

(declare-fun m!8403306 () Bool)

(assert (=> bm!747056 m!8403306))

(declare-fun m!8403308 () Bool)

(assert (=> b!8052046 m!8403308))

(declare-fun m!8403310 () Bool)

(assert (=> bm!747055 m!8403310))

(declare-fun m!8403312 () Bool)

(assert (=> b!8052047 m!8403312))

(declare-fun m!8403314 () Bool)

(assert (=> b!8052047 m!8403314))

(assert (=> b!8052047 m!8403308))

(declare-fun m!8403316 () Bool)

(assert (=> b!8052047 m!8403316))

(assert (=> b!8052047 m!8402948))

(declare-fun m!8403318 () Bool)

(assert (=> b!8052047 m!8403318))

(declare-fun m!8403320 () Bool)

(assert (=> b!8052047 m!8403320))

(assert (=> b!8052047 m!8402948))

(declare-fun m!8403322 () Bool)

(assert (=> b!8052047 m!8403322))

(declare-fun m!8403324 () Bool)

(assert (=> b!8052047 m!8403324))

(assert (=> b!8052047 m!8403308))

(declare-fun m!8403326 () Bool)

(assert (=> b!8052047 m!8403326))

(declare-fun m!8403328 () Bool)

(assert (=> b!8052047 m!8403328))

(assert (=> b!8051819 d!2397416))

(declare-fun b!8052052 () Bool)

(declare-fun tp!2413688 () Bool)

(declare-fun e!4744631 () Bool)

(assert (=> b!8052052 (= e!4744631 (and tp_is_empty!54875 tp_is_empty!54877 tp!2413688))))

(assert (=> b!8051827 (= tp!2413680 e!4744631)))

(assert (= (and b!8051827 ((_ is Cons!75534) (toList!11914 acc!1298))) b!8052052))

(declare-fun e!4744632 () Bool)

(declare-fun tp!2413689 () Bool)

(declare-fun b!8052053 () Bool)

(assert (=> b!8052053 (= e!4744632 (and tp_is_empty!54875 tp_is_empty!54877 tp!2413689))))

(assert (=> b!8051822 (= tp!2413681 e!4744632)))

(assert (= (and b!8051822 ((_ is Cons!75534) (t!391432 l!14636))) b!8052053))

(check-sat (not b!8052018) (not b!8052040) (not b!8051922) (not d!2397368) (not b!8051881) (not b!8052046) (not b!8051915) tp_is_empty!54875 (not b!8051917) (not b!8051916) (not b!8052036) (not b!8051994) (not b!8051886) (not b!8051841) (not d!2397416) (not bm!747051) (not b!8051883) (not bm!747053) (not d!2397406) (not d!2397414) (not b!8052045) (not b!8051884) (not b!8051882) (not d!2397400) (not b!8052024) (not bm!747055) (not d!2397408) (not b!8052031) (not b!8052021) (not b!8052032) (not b!8051914) (not b!8051992) (not d!2397396) (not b!8052027) (not bm!747027) (not bm!747023) (not b!8051903) (not b!8052034) (not b!8051995) (not b!8052052) (not b!8052037) (not bm!747054) (not b!8052035) (not b!8052029) (not b!8051888) (not b!8052012) (not d!2397412) (not b!8052020) tp_is_empty!54877 (not b!8052053) (not b!8052011) (not bm!747052) (not b!8051996) (not b!8052025) (not b!8052043) (not b!8051920) (not d!2397356) (not bm!747050) (not bm!747049) (not b!8052047) (not b!8052042) (not b!8052023) (not d!2397402) (not d!2397394) (not d!2397372) (not bm!747056) (not b!8051918) (not d!2397398) (not b!8051904) (not b!8052022) (not b!8051880) (not b!8052038) (not b!8052033))
(check-sat)
(get-model)

(declare-fun d!2397418 () Bool)

(declare-fun res!3183964 () Bool)

(declare-fun e!4744633 () Bool)

(assert (=> d!2397418 (=> res!3183964 e!4744633)))

(assert (=> d!2397418 (= res!3183964 (not ((_ is Cons!75534) (t!391432 (t!391432 l!14636)))))))

(assert (=> d!2397418 (= (noDuplicateKeys!2700 (t!391432 (t!391432 l!14636))) e!4744633)))

(declare-fun b!8052054 () Bool)

(declare-fun e!4744634 () Bool)

(assert (=> b!8052054 (= e!4744633 e!4744634)))

(declare-fun res!3183965 () Bool)

(assert (=> b!8052054 (=> (not res!3183965) (not e!4744634))))

(assert (=> b!8052054 (= res!3183965 (not (containsKey!4841 (t!391432 (t!391432 (t!391432 l!14636))) (_1!38741 (h!81982 (t!391432 (t!391432 l!14636)))))))))

(declare-fun b!8052055 () Bool)

(assert (=> b!8052055 (= e!4744634 (noDuplicateKeys!2700 (t!391432 (t!391432 (t!391432 l!14636)))))))

(assert (= (and d!2397418 (not res!3183964)) b!8052054))

(assert (= (and b!8052054 res!3183965) b!8052055))

(declare-fun m!8403330 () Bool)

(assert (=> b!8052054 m!8403330))

(declare-fun m!8403332 () Bool)

(assert (=> b!8052055 m!8403332))

(assert (=> b!8051904 d!2397418))

(declare-fun d!2397420 () Bool)

(declare-fun res!3183970 () Bool)

(declare-fun e!4744639 () Bool)

(assert (=> d!2397420 (=> res!3183970 e!4744639)))

(assert (=> d!2397420 (= res!3183970 ((_ is Nil!75534) (toList!11914 lt!2725732)))))

(assert (=> d!2397420 (= (forall!18498 (toList!11914 lt!2725732) lambda!473439) e!4744639)))

(declare-fun b!8052060 () Bool)

(declare-fun e!4744640 () Bool)

(assert (=> b!8052060 (= e!4744639 e!4744640)))

(declare-fun res!3183971 () Bool)

(assert (=> b!8052060 (=> (not res!3183971) (not e!4744640))))

(declare-fun dynLambda!30269 (Int tuple2!70876) Bool)

(assert (=> b!8052060 (= res!3183971 (dynLambda!30269 lambda!473439 (h!81982 (toList!11914 lt!2725732))))))

(declare-fun b!8052061 () Bool)

(assert (=> b!8052061 (= e!4744640 (forall!18498 (t!391432 (toList!11914 lt!2725732)) lambda!473439))))

(assert (= (and d!2397420 (not res!3183970)) b!8052060))

(assert (= (and b!8052060 res!3183971) b!8052061))

(declare-fun b_lambda!290359 () Bool)

(assert (=> (not b_lambda!290359) (not b!8052060)))

(declare-fun m!8403334 () Bool)

(assert (=> b!8052060 m!8403334))

(declare-fun m!8403336 () Bool)

(assert (=> b!8052061 m!8403336))

(assert (=> b!8051992 d!2397420))

(declare-fun d!2397422 () Bool)

(declare-fun res!3183972 () Bool)

(declare-fun e!4744641 () Bool)

(assert (=> d!2397422 (=> res!3183972 e!4744641)))

(assert (=> d!2397422 (= res!3183972 ((_ is Nil!75534) (toList!11914 lt!2726036)))))

(assert (=> d!2397422 (= (forall!18498 (toList!11914 lt!2726036) lambda!473442) e!4744641)))

(declare-fun b!8052062 () Bool)

(declare-fun e!4744642 () Bool)

(assert (=> b!8052062 (= e!4744641 e!4744642)))

(declare-fun res!3183973 () Bool)

(assert (=> b!8052062 (=> (not res!3183973) (not e!4744642))))

(assert (=> b!8052062 (= res!3183973 (dynLambda!30269 lambda!473442 (h!81982 (toList!11914 lt!2726036))))))

(declare-fun b!8052063 () Bool)

(assert (=> b!8052063 (= e!4744642 (forall!18498 (t!391432 (toList!11914 lt!2726036)) lambda!473442))))

(assert (= (and d!2397422 (not res!3183972)) b!8052062))

(assert (= (and b!8052062 res!3183973) b!8052063))

(declare-fun b_lambda!290361 () Bool)

(assert (=> (not b_lambda!290361) (not b!8052062)))

(declare-fun m!8403338 () Bool)

(assert (=> b!8052062 m!8403338))

(declare-fun m!8403340 () Bool)

(assert (=> b!8052063 m!8403340))

(assert (=> b!8052047 d!2397422))

(declare-fun b!8052064 () Bool)

(declare-fun e!4744644 () Bool)

(declare-fun e!4744647 () Bool)

(assert (=> b!8052064 (= e!4744644 e!4744647)))

(declare-fun res!3183976 () Bool)

(assert (=> b!8052064 (=> (not res!3183976) (not e!4744647))))

(assert (=> b!8052064 (= res!3183976 (isDefined!14527 (getValueByKey!2778 (toList!11914 lt!2726027) (_1!38741 (h!81982 l!14636)))))))

(declare-fun b!8052065 () Bool)

(declare-fun e!4744648 () Unit!171627)

(declare-fun lt!2726044 () Unit!171627)

(assert (=> b!8052065 (= e!4744648 lt!2726044)))

(declare-fun lt!2726040 () Unit!171627)

(assert (=> b!8052065 (= lt!2726040 (lemmaContainsKeyImpliesGetValueByKeyDefined!2549 (toList!11914 lt!2726027) (_1!38741 (h!81982 l!14636))))))

(assert (=> b!8052065 (isDefined!14527 (getValueByKey!2778 (toList!11914 lt!2726027) (_1!38741 (h!81982 l!14636))))))

(declare-fun lt!2726041 () Unit!171627)

(assert (=> b!8052065 (= lt!2726041 lt!2726040)))

(assert (=> b!8052065 (= lt!2726044 (lemmaInListThenGetKeysListContains!1232 (toList!11914 lt!2726027) (_1!38741 (h!81982 l!14636))))))

(declare-fun call!747062 () Bool)

(assert (=> b!8052065 call!747062))

(declare-fun b!8052066 () Bool)

(declare-fun e!4744643 () Bool)

(assert (=> b!8052066 (= e!4744643 (not (contains!21194 (keys!30826 lt!2726027) (_1!38741 (h!81982 l!14636)))))))

(declare-fun b!8052067 () Bool)

(assert (=> b!8052067 false))

(declare-fun lt!2726043 () Unit!171627)

(declare-fun lt!2726045 () Unit!171627)

(assert (=> b!8052067 (= lt!2726043 lt!2726045)))

(assert (=> b!8052067 (containsKey!4843 (toList!11914 lt!2726027) (_1!38741 (h!81982 l!14636)))))

(assert (=> b!8052067 (= lt!2726045 (lemmaInGetKeysListThenContainsKey!1237 (toList!11914 lt!2726027) (_1!38741 (h!81982 l!14636))))))

(declare-fun e!4744645 () Unit!171627)

(declare-fun Unit!171689 () Unit!171627)

(assert (=> b!8052067 (= e!4744645 Unit!171689)))

(declare-fun b!8052068 () Bool)

(assert (=> b!8052068 (= e!4744647 (contains!21194 (keys!30826 lt!2726027) (_1!38741 (h!81982 l!14636))))))

(declare-fun b!8052069 () Bool)

(assert (=> b!8052069 (= e!4744648 e!4744645)))

(declare-fun c!1475977 () Bool)

(assert (=> b!8052069 (= c!1475977 call!747062)))

(declare-fun b!8052070 () Bool)

(declare-fun e!4744646 () List!75662)

(assert (=> b!8052070 (= e!4744646 (getKeysList!1237 (toList!11914 lt!2726027)))))

(declare-fun b!8052071 () Bool)

(declare-fun Unit!171690 () Unit!171627)

(assert (=> b!8052071 (= e!4744645 Unit!171690)))

(declare-fun d!2397424 () Bool)

(assert (=> d!2397424 e!4744644))

(declare-fun res!3183974 () Bool)

(assert (=> d!2397424 (=> res!3183974 e!4744644)))

(assert (=> d!2397424 (= res!3183974 e!4744643)))

(declare-fun res!3183975 () Bool)

(assert (=> d!2397424 (=> (not res!3183975) (not e!4744643))))

(declare-fun lt!2726039 () Bool)

(assert (=> d!2397424 (= res!3183975 (not lt!2726039))))

(declare-fun lt!2726042 () Bool)

(assert (=> d!2397424 (= lt!2726039 lt!2726042)))

(declare-fun lt!2726046 () Unit!171627)

(assert (=> d!2397424 (= lt!2726046 e!4744648)))

(declare-fun c!1475976 () Bool)

(assert (=> d!2397424 (= c!1475976 lt!2726042)))

(assert (=> d!2397424 (= lt!2726042 (containsKey!4843 (toList!11914 lt!2726027) (_1!38741 (h!81982 l!14636))))))

(assert (=> d!2397424 (= (contains!21191 lt!2726027 (_1!38741 (h!81982 l!14636))) lt!2726039)))

(declare-fun b!8052072 () Bool)

(assert (=> b!8052072 (= e!4744646 (keys!30826 lt!2726027))))

(declare-fun bm!747057 () Bool)

(assert (=> bm!747057 (= call!747062 (contains!21194 e!4744646 (_1!38741 (h!81982 l!14636))))))

(declare-fun c!1475978 () Bool)

(assert (=> bm!747057 (= c!1475978 c!1475976)))

(assert (= (and d!2397424 c!1475976) b!8052065))

(assert (= (and d!2397424 (not c!1475976)) b!8052069))

(assert (= (and b!8052069 c!1475977) b!8052067))

(assert (= (and b!8052069 (not c!1475977)) b!8052071))

(assert (= (or b!8052065 b!8052069) bm!747057))

(assert (= (and bm!747057 c!1475978) b!8052070))

(assert (= (and bm!747057 (not c!1475978)) b!8052072))

(assert (= (and d!2397424 res!3183975) b!8052066))

(assert (= (and d!2397424 (not res!3183974)) b!8052064))

(assert (= (and b!8052064 res!3183976) b!8052068))

(declare-fun m!8403342 () Bool)

(assert (=> b!8052072 m!8403342))

(assert (=> b!8052068 m!8403342))

(assert (=> b!8052068 m!8403342))

(declare-fun m!8403344 () Bool)

(assert (=> b!8052068 m!8403344))

(declare-fun m!8403346 () Bool)

(assert (=> b!8052064 m!8403346))

(assert (=> b!8052064 m!8403346))

(declare-fun m!8403348 () Bool)

(assert (=> b!8052064 m!8403348))

(declare-fun m!8403350 () Bool)

(assert (=> b!8052067 m!8403350))

(declare-fun m!8403352 () Bool)

(assert (=> b!8052067 m!8403352))

(declare-fun m!8403354 () Bool)

(assert (=> b!8052065 m!8403354))

(assert (=> b!8052065 m!8403346))

(assert (=> b!8052065 m!8403346))

(assert (=> b!8052065 m!8403348))

(declare-fun m!8403356 () Bool)

(assert (=> b!8052065 m!8403356))

(assert (=> b!8052066 m!8403342))

(assert (=> b!8052066 m!8403342))

(assert (=> b!8052066 m!8403344))

(declare-fun m!8403358 () Bool)

(assert (=> bm!747057 m!8403358))

(declare-fun m!8403360 () Bool)

(assert (=> b!8052070 m!8403360))

(assert (=> d!2397424 m!8403350))

(assert (=> b!8052047 d!2397424))

(declare-fun d!2397426 () Bool)

(assert (=> d!2397426 (dynLambda!30269 lambda!473442 (h!81982 l!14636))))

(declare-fun lt!2726049 () Unit!171627)

(declare-fun choose!60499 (List!75660 Int tuple2!70876) Unit!171627)

(assert (=> d!2397426 (= lt!2726049 (choose!60499 (toList!11914 lt!2726036) lambda!473442 (h!81982 l!14636)))))

(declare-fun e!4744651 () Bool)

(assert (=> d!2397426 e!4744651))

(declare-fun res!3183979 () Bool)

(assert (=> d!2397426 (=> (not res!3183979) (not e!4744651))))

(assert (=> d!2397426 (= res!3183979 (forall!18498 (toList!11914 lt!2726036) lambda!473442))))

(assert (=> d!2397426 (= (forallContained!4652 (toList!11914 lt!2726036) lambda!473442 (h!81982 l!14636)) lt!2726049)))

(declare-fun b!8052075 () Bool)

(assert (=> b!8052075 (= e!4744651 (contains!21192 (toList!11914 lt!2726036) (h!81982 l!14636)))))

(assert (= (and d!2397426 res!3183979) b!8052075))

(declare-fun b_lambda!290363 () Bool)

(assert (=> (not b_lambda!290363) (not d!2397426)))

(declare-fun m!8403362 () Bool)

(assert (=> d!2397426 m!8403362))

(declare-fun m!8403364 () Bool)

(assert (=> d!2397426 m!8403364))

(assert (=> d!2397426 m!8403320))

(declare-fun m!8403366 () Bool)

(assert (=> b!8052075 m!8403366))

(assert (=> b!8052047 d!2397426))

(declare-fun bs!1972105 () Bool)

(declare-fun b!8052077 () Bool)

(assert (= bs!1972105 (and b!8052077 b!8052047)))

(declare-fun lambda!473444 () Int)

(assert (=> bs!1972105 (= (= (+!2665 acc!1298 (h!81982 l!14636)) lt!2726027) (= lambda!473444 lambda!473442))))

(declare-fun bs!1972106 () Bool)

(assert (= bs!1972106 (and b!8052077 b!8051996)))

(assert (=> bs!1972106 (= (= (+!2665 acc!1298 (h!81982 l!14636)) lt!2725971) (= lambda!473444 lambda!473438))))

(declare-fun bs!1972107 () Bool)

(assert (= bs!1972107 (and b!8052077 b!8051993)))

(assert (=> bs!1972107 (= (= (+!2665 acc!1298 (h!81982 l!14636)) lt!2725732) (= lambda!473444 lambda!473436))))

(declare-fun bs!1972108 () Bool)

(assert (= bs!1972108 (and b!8052077 d!2397416)))

(assert (=> bs!1972108 (= (= (+!2665 acc!1298 (h!81982 l!14636)) lt!2726022) (= lambda!473444 lambda!473443))))

(assert (=> bs!1972106 (= (= (+!2665 acc!1298 (h!81982 l!14636)) lt!2725732) (= lambda!473444 lambda!473437))))

(assert (=> bs!1972105 (= (= (+!2665 acc!1298 (h!81982 l!14636)) acc!1298) (= lambda!473444 lambda!473441))))

(declare-fun bs!1972109 () Bool)

(assert (= bs!1972109 (and b!8052077 b!8052044)))

(assert (=> bs!1972109 (= (= (+!2665 acc!1298 (h!81982 l!14636)) acc!1298) (= lambda!473444 lambda!473440))))

(declare-fun bs!1972110 () Bool)

(assert (= bs!1972110 (and b!8052077 d!2397372)))

(assert (=> bs!1972110 (= (= (+!2665 acc!1298 (h!81982 l!14636)) lt!2725966) (= lambda!473444 lambda!473439))))

(assert (=> b!8052077 true))

(declare-fun bs!1972111 () Bool)

(declare-fun b!8052080 () Bool)

(assert (= bs!1972111 (and b!8052080 b!8052047)))

(declare-fun lambda!473445 () Int)

(assert (=> bs!1972111 (= (= (+!2665 acc!1298 (h!81982 l!14636)) lt!2726027) (= lambda!473445 lambda!473442))))

(declare-fun bs!1972112 () Bool)

(assert (= bs!1972112 (and b!8052080 b!8051996)))

(assert (=> bs!1972112 (= (= (+!2665 acc!1298 (h!81982 l!14636)) lt!2725971) (= lambda!473445 lambda!473438))))

(declare-fun bs!1972113 () Bool)

(assert (= bs!1972113 (and b!8052080 b!8051993)))

(assert (=> bs!1972113 (= (= (+!2665 acc!1298 (h!81982 l!14636)) lt!2725732) (= lambda!473445 lambda!473436))))

(declare-fun bs!1972114 () Bool)

(assert (= bs!1972114 (and b!8052080 d!2397416)))

(assert (=> bs!1972114 (= (= (+!2665 acc!1298 (h!81982 l!14636)) lt!2726022) (= lambda!473445 lambda!473443))))

(assert (=> bs!1972112 (= (= (+!2665 acc!1298 (h!81982 l!14636)) lt!2725732) (= lambda!473445 lambda!473437))))

(assert (=> bs!1972111 (= (= (+!2665 acc!1298 (h!81982 l!14636)) acc!1298) (= lambda!473445 lambda!473441))))

(declare-fun bs!1972115 () Bool)

(assert (= bs!1972115 (and b!8052080 b!8052077)))

(assert (=> bs!1972115 (= lambda!473445 lambda!473444)))

(declare-fun bs!1972116 () Bool)

(assert (= bs!1972116 (and b!8052080 b!8052044)))

(assert (=> bs!1972116 (= (= (+!2665 acc!1298 (h!81982 l!14636)) acc!1298) (= lambda!473445 lambda!473440))))

(declare-fun bs!1972117 () Bool)

(assert (= bs!1972117 (and b!8052080 d!2397372)))

(assert (=> bs!1972117 (= (= (+!2665 acc!1298 (h!81982 l!14636)) lt!2725966) (= lambda!473445 lambda!473439))))

(assert (=> b!8052080 true))

(declare-fun lt!2726059 () ListMap!7279)

(declare-fun lambda!473446 () Int)

(assert (=> bs!1972111 (= (= lt!2726059 lt!2726027) (= lambda!473446 lambda!473442))))

(assert (=> b!8052080 (= (= lt!2726059 (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473446 lambda!473445))))

(assert (=> bs!1972112 (= (= lt!2726059 lt!2725971) (= lambda!473446 lambda!473438))))

(assert (=> bs!1972113 (= (= lt!2726059 lt!2725732) (= lambda!473446 lambda!473436))))

(assert (=> bs!1972114 (= (= lt!2726059 lt!2726022) (= lambda!473446 lambda!473443))))

(assert (=> bs!1972112 (= (= lt!2726059 lt!2725732) (= lambda!473446 lambda!473437))))

(assert (=> bs!1972111 (= (= lt!2726059 acc!1298) (= lambda!473446 lambda!473441))))

(assert (=> bs!1972115 (= (= lt!2726059 (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473446 lambda!473444))))

(assert (=> bs!1972116 (= (= lt!2726059 acc!1298) (= lambda!473446 lambda!473440))))

(assert (=> bs!1972117 (= (= lt!2726059 lt!2725966) (= lambda!473446 lambda!473439))))

(assert (=> b!8052080 true))

(declare-fun bs!1972118 () Bool)

(declare-fun d!2397428 () Bool)

(assert (= bs!1972118 (and d!2397428 b!8052047)))

(declare-fun lt!2726054 () ListMap!7279)

(declare-fun lambda!473447 () Int)

(assert (=> bs!1972118 (= (= lt!2726054 lt!2726027) (= lambda!473447 lambda!473442))))

(declare-fun bs!1972119 () Bool)

(assert (= bs!1972119 (and d!2397428 b!8052080)))

(assert (=> bs!1972119 (= (= lt!2726054 (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473447 lambda!473445))))

(declare-fun bs!1972120 () Bool)

(assert (= bs!1972120 (and d!2397428 b!8051996)))

(assert (=> bs!1972120 (= (= lt!2726054 lt!2725971) (= lambda!473447 lambda!473438))))

(declare-fun bs!1972121 () Bool)

(assert (= bs!1972121 (and d!2397428 b!8051993)))

(assert (=> bs!1972121 (= (= lt!2726054 lt!2725732) (= lambda!473447 lambda!473436))))

(declare-fun bs!1972122 () Bool)

(assert (= bs!1972122 (and d!2397428 d!2397416)))

(assert (=> bs!1972122 (= (= lt!2726054 lt!2726022) (= lambda!473447 lambda!473443))))

(assert (=> bs!1972120 (= (= lt!2726054 lt!2725732) (= lambda!473447 lambda!473437))))

(assert (=> bs!1972119 (= (= lt!2726054 lt!2726059) (= lambda!473447 lambda!473446))))

(assert (=> bs!1972118 (= (= lt!2726054 acc!1298) (= lambda!473447 lambda!473441))))

(declare-fun bs!1972123 () Bool)

(assert (= bs!1972123 (and d!2397428 b!8052077)))

(assert (=> bs!1972123 (= (= lt!2726054 (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473447 lambda!473444))))

(declare-fun bs!1972124 () Bool)

(assert (= bs!1972124 (and d!2397428 b!8052044)))

(assert (=> bs!1972124 (= (= lt!2726054 acc!1298) (= lambda!473447 lambda!473440))))

(declare-fun bs!1972125 () Bool)

(assert (= bs!1972125 (and d!2397428 d!2397372)))

(assert (=> bs!1972125 (= (= lt!2726054 lt!2725966) (= lambda!473447 lambda!473439))))

(assert (=> d!2397428 true))

(declare-fun c!1475979 () Bool)

(declare-fun call!747064 () Bool)

(declare-fun bm!747058 () Bool)

(assert (=> bm!747058 (= call!747064 (forall!18498 (ite c!1475979 (toList!11914 (+!2665 acc!1298 (h!81982 l!14636))) (t!391432 l!14636)) (ite c!1475979 lambda!473444 lambda!473446)))))

(declare-fun b!8052076 () Bool)

(declare-fun res!3183982 () Bool)

(declare-fun e!4744654 () Bool)

(assert (=> b!8052076 (=> (not res!3183982) (not e!4744654))))

(assert (=> b!8052076 (= res!3183982 (forall!18498 (toList!11914 (+!2665 acc!1298 (h!81982 l!14636))) lambda!473447))))

(declare-fun e!4744652 () ListMap!7279)

(assert (=> b!8052077 (= e!4744652 (+!2665 acc!1298 (h!81982 l!14636)))))

(declare-fun lt!2726052 () Unit!171627)

(declare-fun call!747065 () Unit!171627)

(assert (=> b!8052077 (= lt!2726052 call!747065)))

(assert (=> b!8052077 call!747064))

(declare-fun lt!2726062 () Unit!171627)

(assert (=> b!8052077 (= lt!2726062 lt!2726052)))

(declare-fun call!747063 () Bool)

(assert (=> b!8052077 call!747063))

(declare-fun lt!2726053 () Unit!171627)

(declare-fun Unit!171691 () Unit!171627)

(assert (=> b!8052077 (= lt!2726053 Unit!171691)))

(declare-fun b!8052078 () Bool)

(assert (=> b!8052078 (= e!4744654 (invariantList!1929 (toList!11914 lt!2726054)))))

(declare-fun bm!747059 () Bool)

(declare-fun lt!2726068 () ListMap!7279)

(assert (=> bm!747059 (= call!747063 (forall!18498 (ite c!1475979 (toList!11914 (+!2665 acc!1298 (h!81982 l!14636))) (toList!11914 lt!2726068)) (ite c!1475979 lambda!473444 lambda!473446)))))

(declare-fun b!8052079 () Bool)

(declare-fun e!4744653 () Bool)

(assert (=> b!8052079 (= e!4744653 (forall!18498 (toList!11914 (+!2665 acc!1298 (h!81982 l!14636))) lambda!473446))))

(declare-fun bm!747060 () Bool)

(assert (=> bm!747060 (= call!747065 (lemmaContainsAllItsOwnKeys!1081 (+!2665 acc!1298 (h!81982 l!14636))))))

(assert (=> d!2397428 e!4744654))

(declare-fun res!3183981 () Bool)

(assert (=> d!2397428 (=> (not res!3183981) (not e!4744654))))

(assert (=> d!2397428 (= res!3183981 (forall!18498 (t!391432 l!14636) lambda!473447))))

(assert (=> d!2397428 (= lt!2726054 e!4744652)))

(assert (=> d!2397428 (= c!1475979 ((_ is Nil!75534) (t!391432 l!14636)))))

(assert (=> d!2397428 (noDuplicateKeys!2700 (t!391432 l!14636))))

(assert (=> d!2397428 (= (addToMapMapFromBucket!1981 (t!391432 l!14636) (+!2665 acc!1298 (h!81982 l!14636))) lt!2726054)))

(assert (=> b!8052080 (= e!4744652 lt!2726059)))

(assert (=> b!8052080 (= lt!2726068 (+!2665 (+!2665 acc!1298 (h!81982 l!14636)) (h!81982 (t!391432 l!14636))))))

(assert (=> b!8052080 (= lt!2726059 (addToMapMapFromBucket!1981 (t!391432 (t!391432 l!14636)) (+!2665 (+!2665 acc!1298 (h!81982 l!14636)) (h!81982 (t!391432 l!14636)))))))

(declare-fun lt!2726069 () Unit!171627)

(assert (=> b!8052080 (= lt!2726069 call!747065)))

(assert (=> b!8052080 (forall!18498 (toList!11914 (+!2665 acc!1298 (h!81982 l!14636))) lambda!473445)))

(declare-fun lt!2726056 () Unit!171627)

(assert (=> b!8052080 (= lt!2726056 lt!2726069)))

(assert (=> b!8052080 (forall!18498 (toList!11914 lt!2726068) lambda!473446)))

(declare-fun lt!2726065 () Unit!171627)

(declare-fun Unit!171692 () Unit!171627)

(assert (=> b!8052080 (= lt!2726065 Unit!171692)))

(assert (=> b!8052080 (forall!18498 (t!391432 (t!391432 l!14636)) lambda!473446)))

(declare-fun lt!2726057 () Unit!171627)

(declare-fun Unit!171693 () Unit!171627)

(assert (=> b!8052080 (= lt!2726057 Unit!171693)))

(declare-fun lt!2726060 () Unit!171627)

(declare-fun Unit!171694 () Unit!171627)

(assert (=> b!8052080 (= lt!2726060 Unit!171694)))

(declare-fun lt!2726063 () Unit!171627)

(assert (=> b!8052080 (= lt!2726063 (forallContained!4652 (toList!11914 lt!2726068) lambda!473446 (h!81982 (t!391432 l!14636))))))

(assert (=> b!8052080 (contains!21191 lt!2726068 (_1!38741 (h!81982 (t!391432 l!14636))))))

(declare-fun lt!2726061 () Unit!171627)

(declare-fun Unit!171695 () Unit!171627)

(assert (=> b!8052080 (= lt!2726061 Unit!171695)))

(assert (=> b!8052080 (contains!21191 lt!2726059 (_1!38741 (h!81982 (t!391432 l!14636))))))

(declare-fun lt!2726067 () Unit!171627)

(declare-fun Unit!171696 () Unit!171627)

(assert (=> b!8052080 (= lt!2726067 Unit!171696)))

(assert (=> b!8052080 (forall!18498 (t!391432 l!14636) lambda!473446)))

(declare-fun lt!2726051 () Unit!171627)

(declare-fun Unit!171697 () Unit!171627)

(assert (=> b!8052080 (= lt!2726051 Unit!171697)))

(assert (=> b!8052080 call!747063))

(declare-fun lt!2726050 () Unit!171627)

(declare-fun Unit!171698 () Unit!171627)

(assert (=> b!8052080 (= lt!2726050 Unit!171698)))

(declare-fun lt!2726058 () Unit!171627)

(declare-fun Unit!171699 () Unit!171627)

(assert (=> b!8052080 (= lt!2726058 Unit!171699)))

(declare-fun lt!2726066 () Unit!171627)

(assert (=> b!8052080 (= lt!2726066 (addForallContainsKeyThenBeforeAdding!1079 (+!2665 acc!1298 (h!81982 l!14636)) lt!2726059 (_1!38741 (h!81982 (t!391432 l!14636))) (_2!38741 (h!81982 (t!391432 l!14636)))))))

(assert (=> b!8052080 (forall!18498 (toList!11914 (+!2665 acc!1298 (h!81982 l!14636))) lambda!473446)))

(declare-fun lt!2726055 () Unit!171627)

(assert (=> b!8052080 (= lt!2726055 lt!2726066)))

(assert (=> b!8052080 (forall!18498 (toList!11914 (+!2665 acc!1298 (h!81982 l!14636))) lambda!473446)))

(declare-fun lt!2726070 () Unit!171627)

(declare-fun Unit!171700 () Unit!171627)

(assert (=> b!8052080 (= lt!2726070 Unit!171700)))

(declare-fun res!3183980 () Bool)

(assert (=> b!8052080 (= res!3183980 call!747064)))

(assert (=> b!8052080 (=> (not res!3183980) (not e!4744653))))

(assert (=> b!8052080 e!4744653))

(declare-fun lt!2726064 () Unit!171627)

(declare-fun Unit!171701 () Unit!171627)

(assert (=> b!8052080 (= lt!2726064 Unit!171701)))

(assert (= (and d!2397428 c!1475979) b!8052077))

(assert (= (and d!2397428 (not c!1475979)) b!8052080))

(assert (= (and b!8052080 res!3183980) b!8052079))

(assert (= (or b!8052077 b!8052080) bm!747059))

(assert (= (or b!8052077 b!8052080) bm!747058))

(assert (= (or b!8052077 b!8052080) bm!747060))

(assert (= (and d!2397428 res!3183981) b!8052076))

(assert (= (and b!8052076 res!3183982) b!8052078))

(declare-fun m!8403368 () Bool)

(assert (=> b!8052076 m!8403368))

(declare-fun m!8403370 () Bool)

(assert (=> d!2397428 m!8403370))

(assert (=> d!2397428 m!8402940))

(declare-fun m!8403372 () Bool)

(assert (=> bm!747058 m!8403372))

(declare-fun m!8403374 () Bool)

(assert (=> b!8052078 m!8403374))

(assert (=> bm!747060 m!8402948))

(declare-fun m!8403376 () Bool)

(assert (=> bm!747060 m!8403376))

(declare-fun m!8403378 () Bool)

(assert (=> b!8052079 m!8403378))

(declare-fun m!8403380 () Bool)

(assert (=> bm!747059 m!8403380))

(declare-fun m!8403382 () Bool)

(assert (=> b!8052080 m!8403382))

(declare-fun m!8403384 () Bool)

(assert (=> b!8052080 m!8403384))

(assert (=> b!8052080 m!8403378))

(declare-fun m!8403386 () Bool)

(assert (=> b!8052080 m!8403386))

(assert (=> b!8052080 m!8402948))

(declare-fun m!8403388 () Bool)

(assert (=> b!8052080 m!8403388))

(declare-fun m!8403390 () Bool)

(assert (=> b!8052080 m!8403390))

(declare-fun m!8403392 () Bool)

(assert (=> b!8052080 m!8403392))

(assert (=> b!8052080 m!8403388))

(declare-fun m!8403394 () Bool)

(assert (=> b!8052080 m!8403394))

(declare-fun m!8403396 () Bool)

(assert (=> b!8052080 m!8403396))

(assert (=> b!8052080 m!8403378))

(assert (=> b!8052080 m!8402948))

(declare-fun m!8403398 () Bool)

(assert (=> b!8052080 m!8403398))

(declare-fun m!8403400 () Bool)

(assert (=> b!8052080 m!8403400))

(assert (=> b!8052047 d!2397428))

(declare-fun bs!1972126 () Bool)

(declare-fun d!2397430 () Bool)

(assert (= bs!1972126 (and d!2397430 b!8052047)))

(declare-fun lambda!473452 () Int)

(assert (=> bs!1972126 (= lambda!473452 lambda!473442)))

(declare-fun bs!1972127 () Bool)

(assert (= bs!1972127 (and d!2397430 b!8052080)))

(assert (=> bs!1972127 (= (= lt!2726027 (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473452 lambda!473445))))

(declare-fun bs!1972128 () Bool)

(assert (= bs!1972128 (and d!2397430 b!8051996)))

(assert (=> bs!1972128 (= (= lt!2726027 lt!2725971) (= lambda!473452 lambda!473438))))

(declare-fun bs!1972129 () Bool)

(assert (= bs!1972129 (and d!2397430 b!8051993)))

(assert (=> bs!1972129 (= (= lt!2726027 lt!2725732) (= lambda!473452 lambda!473436))))

(declare-fun bs!1972130 () Bool)

(assert (= bs!1972130 (and d!2397430 d!2397416)))

(assert (=> bs!1972130 (= (= lt!2726027 lt!2726022) (= lambda!473452 lambda!473443))))

(assert (=> bs!1972128 (= (= lt!2726027 lt!2725732) (= lambda!473452 lambda!473437))))

(assert (=> bs!1972127 (= (= lt!2726027 lt!2726059) (= lambda!473452 lambda!473446))))

(assert (=> bs!1972126 (= (= lt!2726027 acc!1298) (= lambda!473452 lambda!473441))))

(declare-fun bs!1972131 () Bool)

(assert (= bs!1972131 (and d!2397430 d!2397428)))

(assert (=> bs!1972131 (= (= lt!2726027 lt!2726054) (= lambda!473452 lambda!473447))))

(declare-fun bs!1972132 () Bool)

(assert (= bs!1972132 (and d!2397430 b!8052077)))

(assert (=> bs!1972132 (= (= lt!2726027 (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473452 lambda!473444))))

(declare-fun bs!1972133 () Bool)

(assert (= bs!1972133 (and d!2397430 b!8052044)))

(assert (=> bs!1972133 (= (= lt!2726027 acc!1298) (= lambda!473452 lambda!473440))))

(declare-fun bs!1972134 () Bool)

(assert (= bs!1972134 (and d!2397430 d!2397372)))

(assert (=> bs!1972134 (= (= lt!2726027 lt!2725966) (= lambda!473452 lambda!473439))))

(assert (=> d!2397430 true))

(assert (=> d!2397430 (forall!18498 (toList!11914 acc!1298) lambda!473452)))

(declare-fun lt!2726073 () Unit!171627)

(declare-fun choose!60500 (ListMap!7279 ListMap!7279 K!22798 V!23052) Unit!171627)

(assert (=> d!2397430 (= lt!2726073 (choose!60500 acc!1298 lt!2726027 (_1!38741 (h!81982 l!14636)) (_2!38741 (h!81982 l!14636))))))

(assert (=> d!2397430 (forall!18498 (toList!11914 (+!2665 acc!1298 (tuple2!70877 (_1!38741 (h!81982 l!14636)) (_2!38741 (h!81982 l!14636))))) lambda!473452)))

(assert (=> d!2397430 (= (addForallContainsKeyThenBeforeAdding!1079 acc!1298 lt!2726027 (_1!38741 (h!81982 l!14636)) (_2!38741 (h!81982 l!14636))) lt!2726073)))

(declare-fun bs!1972135 () Bool)

(assert (= bs!1972135 d!2397430))

(declare-fun m!8403402 () Bool)

(assert (=> bs!1972135 m!8403402))

(declare-fun m!8403404 () Bool)

(assert (=> bs!1972135 m!8403404))

(declare-fun m!8403406 () Bool)

(assert (=> bs!1972135 m!8403406))

(declare-fun m!8403408 () Bool)

(assert (=> bs!1972135 m!8403408))

(assert (=> b!8052047 d!2397430))

(declare-fun b!8052082 () Bool)

(declare-fun e!4744656 () Bool)

(declare-fun e!4744659 () Bool)

(assert (=> b!8052082 (= e!4744656 e!4744659)))

(declare-fun res!3183985 () Bool)

(assert (=> b!8052082 (=> (not res!3183985) (not e!4744659))))

(assert (=> b!8052082 (= res!3183985 (isDefined!14527 (getValueByKey!2778 (toList!11914 lt!2726036) (_1!38741 (h!81982 l!14636)))))))

(declare-fun b!8052083 () Bool)

(declare-fun e!4744660 () Unit!171627)

(declare-fun lt!2726079 () Unit!171627)

(assert (=> b!8052083 (= e!4744660 lt!2726079)))

(declare-fun lt!2726075 () Unit!171627)

(assert (=> b!8052083 (= lt!2726075 (lemmaContainsKeyImpliesGetValueByKeyDefined!2549 (toList!11914 lt!2726036) (_1!38741 (h!81982 l!14636))))))

(assert (=> b!8052083 (isDefined!14527 (getValueByKey!2778 (toList!11914 lt!2726036) (_1!38741 (h!81982 l!14636))))))

(declare-fun lt!2726076 () Unit!171627)

(assert (=> b!8052083 (= lt!2726076 lt!2726075)))

(assert (=> b!8052083 (= lt!2726079 (lemmaInListThenGetKeysListContains!1232 (toList!11914 lt!2726036) (_1!38741 (h!81982 l!14636))))))

(declare-fun call!747066 () Bool)

(assert (=> b!8052083 call!747066))

(declare-fun b!8052084 () Bool)

(declare-fun e!4744655 () Bool)

(assert (=> b!8052084 (= e!4744655 (not (contains!21194 (keys!30826 lt!2726036) (_1!38741 (h!81982 l!14636)))))))

(declare-fun b!8052085 () Bool)

(assert (=> b!8052085 false))

(declare-fun lt!2726078 () Unit!171627)

(declare-fun lt!2726080 () Unit!171627)

(assert (=> b!8052085 (= lt!2726078 lt!2726080)))

(assert (=> b!8052085 (containsKey!4843 (toList!11914 lt!2726036) (_1!38741 (h!81982 l!14636)))))

(assert (=> b!8052085 (= lt!2726080 (lemmaInGetKeysListThenContainsKey!1237 (toList!11914 lt!2726036) (_1!38741 (h!81982 l!14636))))))

(declare-fun e!4744657 () Unit!171627)

(declare-fun Unit!171702 () Unit!171627)

(assert (=> b!8052085 (= e!4744657 Unit!171702)))

(declare-fun b!8052086 () Bool)

(assert (=> b!8052086 (= e!4744659 (contains!21194 (keys!30826 lt!2726036) (_1!38741 (h!81982 l!14636))))))

(declare-fun b!8052087 () Bool)

(assert (=> b!8052087 (= e!4744660 e!4744657)))

(declare-fun c!1475981 () Bool)

(assert (=> b!8052087 (= c!1475981 call!747066)))

(declare-fun b!8052088 () Bool)

(declare-fun e!4744658 () List!75662)

(assert (=> b!8052088 (= e!4744658 (getKeysList!1237 (toList!11914 lt!2726036)))))

(declare-fun b!8052089 () Bool)

(declare-fun Unit!171703 () Unit!171627)

(assert (=> b!8052089 (= e!4744657 Unit!171703)))

(declare-fun d!2397432 () Bool)

(assert (=> d!2397432 e!4744656))

(declare-fun res!3183983 () Bool)

(assert (=> d!2397432 (=> res!3183983 e!4744656)))

(assert (=> d!2397432 (= res!3183983 e!4744655)))

(declare-fun res!3183984 () Bool)

(assert (=> d!2397432 (=> (not res!3183984) (not e!4744655))))

(declare-fun lt!2726074 () Bool)

(assert (=> d!2397432 (= res!3183984 (not lt!2726074))))

(declare-fun lt!2726077 () Bool)

(assert (=> d!2397432 (= lt!2726074 lt!2726077)))

(declare-fun lt!2726081 () Unit!171627)

(assert (=> d!2397432 (= lt!2726081 e!4744660)))

(declare-fun c!1475980 () Bool)

(assert (=> d!2397432 (= c!1475980 lt!2726077)))

(assert (=> d!2397432 (= lt!2726077 (containsKey!4843 (toList!11914 lt!2726036) (_1!38741 (h!81982 l!14636))))))

(assert (=> d!2397432 (= (contains!21191 lt!2726036 (_1!38741 (h!81982 l!14636))) lt!2726074)))

(declare-fun b!8052090 () Bool)

(assert (=> b!8052090 (= e!4744658 (keys!30826 lt!2726036))))

(declare-fun bm!747061 () Bool)

(assert (=> bm!747061 (= call!747066 (contains!21194 e!4744658 (_1!38741 (h!81982 l!14636))))))

(declare-fun c!1475982 () Bool)

(assert (=> bm!747061 (= c!1475982 c!1475980)))

(assert (= (and d!2397432 c!1475980) b!8052083))

(assert (= (and d!2397432 (not c!1475980)) b!8052087))

(assert (= (and b!8052087 c!1475981) b!8052085))

(assert (= (and b!8052087 (not c!1475981)) b!8052089))

(assert (= (or b!8052083 b!8052087) bm!747061))

(assert (= (and bm!747061 c!1475982) b!8052088))

(assert (= (and bm!747061 (not c!1475982)) b!8052090))

(assert (= (and d!2397432 res!3183984) b!8052084))

(assert (= (and d!2397432 (not res!3183983)) b!8052082))

(assert (= (and b!8052082 res!3183985) b!8052086))

(declare-fun m!8403410 () Bool)

(assert (=> b!8052090 m!8403410))

(assert (=> b!8052086 m!8403410))

(assert (=> b!8052086 m!8403410))

(declare-fun m!8403412 () Bool)

(assert (=> b!8052086 m!8403412))

(declare-fun m!8403414 () Bool)

(assert (=> b!8052082 m!8403414))

(assert (=> b!8052082 m!8403414))

(declare-fun m!8403416 () Bool)

(assert (=> b!8052082 m!8403416))

(declare-fun m!8403418 () Bool)

(assert (=> b!8052085 m!8403418))

(declare-fun m!8403420 () Bool)

(assert (=> b!8052085 m!8403420))

(declare-fun m!8403422 () Bool)

(assert (=> b!8052083 m!8403422))

(assert (=> b!8052083 m!8403414))

(assert (=> b!8052083 m!8403414))

(assert (=> b!8052083 m!8403416))

(declare-fun m!8403424 () Bool)

(assert (=> b!8052083 m!8403424))

(assert (=> b!8052084 m!8403410))

(assert (=> b!8052084 m!8403410))

(assert (=> b!8052084 m!8403412))

(declare-fun m!8403426 () Bool)

(assert (=> bm!747061 m!8403426))

(declare-fun m!8403428 () Bool)

(assert (=> b!8052088 m!8403428))

(assert (=> d!2397432 m!8403418))

(assert (=> b!8052047 d!2397432))

(declare-fun d!2397434 () Bool)

(declare-fun res!3183986 () Bool)

(declare-fun e!4744661 () Bool)

(assert (=> d!2397434 (=> res!3183986 e!4744661)))

(assert (=> d!2397434 (= res!3183986 ((_ is Nil!75534) l!14636))))

(assert (=> d!2397434 (= (forall!18498 l!14636 lambda!473442) e!4744661)))

(declare-fun b!8052091 () Bool)

(declare-fun e!4744662 () Bool)

(assert (=> b!8052091 (= e!4744661 e!4744662)))

(declare-fun res!3183987 () Bool)

(assert (=> b!8052091 (=> (not res!3183987) (not e!4744662))))

(assert (=> b!8052091 (= res!3183987 (dynLambda!30269 lambda!473442 (h!81982 l!14636)))))

(declare-fun b!8052092 () Bool)

(assert (=> b!8052092 (= e!4744662 (forall!18498 (t!391432 l!14636) lambda!473442))))

(assert (= (and d!2397434 (not res!3183986)) b!8052091))

(assert (= (and b!8052091 res!3183987) b!8052092))

(declare-fun b_lambda!290365 () Bool)

(assert (=> (not b_lambda!290365) (not b!8052091)))

(assert (=> b!8052091 m!8403362))

(assert (=> b!8052092 m!8403312))

(assert (=> b!8052047 d!2397434))

(assert (=> b!8052047 d!2397394))

(declare-fun d!2397436 () Bool)

(declare-fun res!3183988 () Bool)

(declare-fun e!4744663 () Bool)

(assert (=> d!2397436 (=> res!3183988 e!4744663)))

(assert (=> d!2397436 (= res!3183988 ((_ is Nil!75534) (t!391432 l!14636)))))

(assert (=> d!2397436 (= (forall!18498 (t!391432 l!14636) lambda!473442) e!4744663)))

(declare-fun b!8052093 () Bool)

(declare-fun e!4744664 () Bool)

(assert (=> b!8052093 (= e!4744663 e!4744664)))

(declare-fun res!3183989 () Bool)

(assert (=> b!8052093 (=> (not res!3183989) (not e!4744664))))

(assert (=> b!8052093 (= res!3183989 (dynLambda!30269 lambda!473442 (h!81982 (t!391432 l!14636))))))

(declare-fun b!8052094 () Bool)

(assert (=> b!8052094 (= e!4744664 (forall!18498 (t!391432 (t!391432 l!14636)) lambda!473442))))

(assert (= (and d!2397436 (not res!3183988)) b!8052093))

(assert (= (and b!8052093 res!3183989) b!8052094))

(declare-fun b_lambda!290367 () Bool)

(assert (=> (not b_lambda!290367) (not b!8052093)))

(declare-fun m!8403430 () Bool)

(assert (=> b!8052093 m!8403430))

(declare-fun m!8403432 () Bool)

(assert (=> b!8052094 m!8403432))

(assert (=> b!8052047 d!2397436))

(declare-fun d!2397438 () Bool)

(declare-fun res!3183990 () Bool)

(declare-fun e!4744665 () Bool)

(assert (=> d!2397438 (=> res!3183990 e!4744665)))

(assert (=> d!2397438 (= res!3183990 ((_ is Nil!75534) (toList!11914 acc!1298)))))

(assert (=> d!2397438 (= (forall!18498 (toList!11914 acc!1298) lambda!473442) e!4744665)))

(declare-fun b!8052095 () Bool)

(declare-fun e!4744666 () Bool)

(assert (=> b!8052095 (= e!4744665 e!4744666)))

(declare-fun res!3183991 () Bool)

(assert (=> b!8052095 (=> (not res!3183991) (not e!4744666))))

(assert (=> b!8052095 (= res!3183991 (dynLambda!30269 lambda!473442 (h!81982 (toList!11914 acc!1298))))))

(declare-fun b!8052096 () Bool)

(assert (=> b!8052096 (= e!4744666 (forall!18498 (t!391432 (toList!11914 acc!1298)) lambda!473442))))

(assert (= (and d!2397438 (not res!3183990)) b!8052095))

(assert (= (and b!8052095 res!3183991) b!8052096))

(declare-fun b_lambda!290369 () Bool)

(assert (=> (not b_lambda!290369) (not b!8052095)))

(declare-fun m!8403434 () Bool)

(assert (=> b!8052095 m!8403434))

(declare-fun m!8403436 () Bool)

(assert (=> b!8052096 m!8403436))

(assert (=> b!8052047 d!2397438))

(declare-fun d!2397440 () Bool)

(declare-fun res!3183992 () Bool)

(declare-fun e!4744667 () Bool)

(assert (=> d!2397440 (=> res!3183992 e!4744667)))

(assert (=> d!2397440 (= res!3183992 ((_ is Nil!75534) (toList!11914 acc!1298)))))

(assert (=> d!2397440 (= (forall!18498 (toList!11914 acc!1298) lambda!473441) e!4744667)))

(declare-fun b!8052097 () Bool)

(declare-fun e!4744668 () Bool)

(assert (=> b!8052097 (= e!4744667 e!4744668)))

(declare-fun res!3183993 () Bool)

(assert (=> b!8052097 (=> (not res!3183993) (not e!4744668))))

(assert (=> b!8052097 (= res!3183993 (dynLambda!30269 lambda!473441 (h!81982 (toList!11914 acc!1298))))))

(declare-fun b!8052098 () Bool)

(assert (=> b!8052098 (= e!4744668 (forall!18498 (t!391432 (toList!11914 acc!1298)) lambda!473441))))

(assert (= (and d!2397440 (not res!3183992)) b!8052097))

(assert (= (and b!8052097 res!3183993) b!8052098))

(declare-fun b_lambda!290371 () Bool)

(assert (=> (not b_lambda!290371) (not b!8052097)))

(declare-fun m!8403438 () Bool)

(assert (=> b!8052097 m!8403438))

(declare-fun m!8403440 () Bool)

(assert (=> b!8052098 m!8403440))

(assert (=> b!8052047 d!2397440))

(assert (=> b!8052046 d!2397438))

(declare-fun d!2397442 () Bool)

(declare-fun lt!2726084 () Bool)

(declare-fun content!16103 (List!75662) (InoxSet K!22798))

(assert (=> d!2397442 (= lt!2726084 (select (content!16103 (keys!30826 lt!2725732)) key!6222))))

(declare-fun e!4744674 () Bool)

(assert (=> d!2397442 (= lt!2726084 e!4744674)))

(declare-fun res!3183999 () Bool)

(assert (=> d!2397442 (=> (not res!3183999) (not e!4744674))))

(assert (=> d!2397442 (= res!3183999 ((_ is Cons!75536) (keys!30826 lt!2725732)))))

(assert (=> d!2397442 (= (contains!21194 (keys!30826 lt!2725732) key!6222) lt!2726084)))

(declare-fun b!8052103 () Bool)

(declare-fun e!4744673 () Bool)

(assert (=> b!8052103 (= e!4744674 e!4744673)))

(declare-fun res!3183998 () Bool)

(assert (=> b!8052103 (=> res!3183998 e!4744673)))

(assert (=> b!8052103 (= res!3183998 (= (h!81984 (keys!30826 lt!2725732)) key!6222))))

(declare-fun b!8052104 () Bool)

(assert (=> b!8052104 (= e!4744673 (contains!21194 (t!391434 (keys!30826 lt!2725732)) key!6222))))

(assert (= (and d!2397442 res!3183999) b!8052103))

(assert (= (and b!8052103 (not res!3183998)) b!8052104))

(assert (=> d!2397442 m!8403008))

(declare-fun m!8403442 () Bool)

(assert (=> d!2397442 m!8403442))

(declare-fun m!8403444 () Bool)

(assert (=> d!2397442 m!8403444))

(declare-fun m!8403446 () Bool)

(assert (=> b!8052104 m!8403446))

(assert (=> b!8051918 d!2397442))

(declare-fun b!8052112 () Bool)

(assert (=> b!8052112 true))

(declare-fun d!2397444 () Bool)

(declare-fun e!4744677 () Bool)

(assert (=> d!2397444 e!4744677))

(declare-fun res!3184006 () Bool)

(assert (=> d!2397444 (=> (not res!3184006) (not e!4744677))))

(declare-fun lt!2726087 () List!75662)

(declare-fun noDuplicate!3167 (List!75662) Bool)

(assert (=> d!2397444 (= res!3184006 (noDuplicate!3167 lt!2726087))))

(assert (=> d!2397444 (= lt!2726087 (getKeysList!1237 (toList!11914 lt!2725732)))))

(assert (=> d!2397444 (= (keys!30826 lt!2725732) lt!2726087)))

(declare-fun b!8052111 () Bool)

(declare-fun res!3184007 () Bool)

(assert (=> b!8052111 (=> (not res!3184007) (not e!4744677))))

(declare-fun length!826 (List!75662) Int)

(declare-fun length!827 (List!75660) Int)

(assert (=> b!8052111 (= res!3184007 (= (length!826 lt!2726087) (length!827 (toList!11914 lt!2725732))))))

(declare-fun res!3184008 () Bool)

(assert (=> b!8052112 (=> (not res!3184008) (not e!4744677))))

(declare-fun lambda!473457 () Int)

(declare-fun forall!18499 (List!75662 Int) Bool)

(assert (=> b!8052112 (= res!3184008 (forall!18499 lt!2726087 lambda!473457))))

(declare-fun lambda!473458 () Int)

(declare-fun b!8052113 () Bool)

(declare-fun map!18796 (List!75660 Int) List!75662)

(assert (=> b!8052113 (= e!4744677 (= (content!16103 lt!2726087) (content!16103 (map!18796 (toList!11914 lt!2725732) lambda!473458))))))

(assert (= (and d!2397444 res!3184006) b!8052111))

(assert (= (and b!8052111 res!3184007) b!8052112))

(assert (= (and b!8052112 res!3184008) b!8052113))

(declare-fun m!8403448 () Bool)

(assert (=> d!2397444 m!8403448))

(assert (=> d!2397444 m!8403036))

(declare-fun m!8403450 () Bool)

(assert (=> b!8052111 m!8403450))

(declare-fun m!8403452 () Bool)

(assert (=> b!8052111 m!8403452))

(declare-fun m!8403454 () Bool)

(assert (=> b!8052112 m!8403454))

(declare-fun m!8403456 () Bool)

(assert (=> b!8052113 m!8403456))

(declare-fun m!8403458 () Bool)

(assert (=> b!8052113 m!8403458))

(assert (=> b!8052113 m!8403458))

(declare-fun m!8403460 () Bool)

(assert (=> b!8052113 m!8403460))

(assert (=> b!8051918 d!2397444))

(declare-fun d!2397448 () Bool)

(assert (=> d!2397448 (= (get!27209 (getValueByKey!2778 (toList!11914 acc!1298) key!6222)) (v!55300 (getValueByKey!2778 (toList!11914 acc!1298) key!6222)))))

(assert (=> d!2397402 d!2397448))

(declare-fun b!8052133 () Bool)

(declare-fun e!4744689 () Option!17994)

(assert (=> b!8052133 (= e!4744689 None!17993)))

(declare-fun b!8052131 () Bool)

(declare-fun e!4744688 () Option!17994)

(assert (=> b!8052131 (= e!4744688 e!4744689)))

(declare-fun c!1475988 () Bool)

(assert (=> b!8052131 (= c!1475988 (and ((_ is Cons!75534) (toList!11914 acc!1298)) (not (= (_1!38741 (h!81982 (toList!11914 acc!1298))) key!6222))))))

(declare-fun d!2397450 () Bool)

(declare-fun c!1475987 () Bool)

(assert (=> d!2397450 (= c!1475987 (and ((_ is Cons!75534) (toList!11914 acc!1298)) (= (_1!38741 (h!81982 (toList!11914 acc!1298))) key!6222)))))

(assert (=> d!2397450 (= (getValueByKey!2778 (toList!11914 acc!1298) key!6222) e!4744688)))

(declare-fun b!8052130 () Bool)

(assert (=> b!8052130 (= e!4744688 (Some!17993 (_2!38741 (h!81982 (toList!11914 acc!1298)))))))

(declare-fun b!8052132 () Bool)

(assert (=> b!8052132 (= e!4744689 (getValueByKey!2778 (t!391432 (toList!11914 acc!1298)) key!6222))))

(assert (= (and d!2397450 c!1475987) b!8052130))

(assert (= (and d!2397450 (not c!1475987)) b!8052131))

(assert (= (and b!8052131 c!1475988) b!8052132))

(assert (= (and b!8052131 (not c!1475988)) b!8052133))

(declare-fun m!8403468 () Bool)

(assert (=> b!8052132 m!8403468))

(assert (=> d!2397402 d!2397450))

(declare-fun d!2397456 () Bool)

(declare-fun lt!2726088 () Bool)

(assert (=> d!2397456 (= lt!2726088 (select (content!16102 (toList!11914 lt!2725991)) (h!81982 l!14636)))))

(declare-fun e!4744690 () Bool)

(assert (=> d!2397456 (= lt!2726088 e!4744690)))

(declare-fun res!3184016 () Bool)

(assert (=> d!2397456 (=> (not res!3184016) (not e!4744690))))

(assert (=> d!2397456 (= res!3184016 ((_ is Cons!75534) (toList!11914 lt!2725991)))))

(assert (=> d!2397456 (= (contains!21192 (toList!11914 lt!2725991) (h!81982 l!14636)) lt!2726088)))

(declare-fun b!8052134 () Bool)

(declare-fun e!4744691 () Bool)

(assert (=> b!8052134 (= e!4744690 e!4744691)))

(declare-fun res!3184015 () Bool)

(assert (=> b!8052134 (=> res!3184015 e!4744691)))

(assert (=> b!8052134 (= res!3184015 (= (h!81982 (toList!11914 lt!2725991)) (h!81982 l!14636)))))

(declare-fun b!8052135 () Bool)

(assert (=> b!8052135 (= e!4744691 (contains!21192 (t!391432 (toList!11914 lt!2725991)) (h!81982 l!14636)))))

(assert (= (and d!2397456 res!3184016) b!8052134))

(assert (= (and b!8052134 (not res!3184015)) b!8052135))

(declare-fun m!8403470 () Bool)

(assert (=> d!2397456 m!8403470))

(declare-fun m!8403472 () Bool)

(assert (=> d!2397456 m!8403472))

(declare-fun m!8403474 () Bool)

(assert (=> b!8052135 m!8403474))

(assert (=> b!8052012 d!2397456))

(declare-fun d!2397458 () Bool)

(declare-fun lt!2726089 () Bool)

(assert (=> d!2397458 (= lt!2726089 (select (content!16103 e!4744613) key!6222))))

(declare-fun e!4744693 () Bool)

(assert (=> d!2397458 (= lt!2726089 e!4744693)))

(declare-fun res!3184018 () Bool)

(assert (=> d!2397458 (=> (not res!3184018) (not e!4744693))))

(assert (=> d!2397458 (= res!3184018 ((_ is Cons!75536) e!4744613))))

(assert (=> d!2397458 (= (contains!21194 e!4744613 key!6222) lt!2726089)))

(declare-fun b!8052136 () Bool)

(declare-fun e!4744692 () Bool)

(assert (=> b!8052136 (= e!4744693 e!4744692)))

(declare-fun res!3184017 () Bool)

(assert (=> b!8052136 (=> res!3184017 e!4744692)))

(assert (=> b!8052136 (= res!3184017 (= (h!81984 e!4744613) key!6222))))

(declare-fun b!8052137 () Bool)

(assert (=> b!8052137 (= e!4744692 (contains!21194 (t!391434 e!4744613) key!6222))))

(assert (= (and d!2397458 res!3184018) b!8052136))

(assert (= (and b!8052136 (not res!3184017)) b!8052137))

(declare-fun m!8403476 () Bool)

(assert (=> d!2397458 m!8403476))

(declare-fun m!8403478 () Bool)

(assert (=> d!2397458 m!8403478))

(declare-fun m!8403480 () Bool)

(assert (=> b!8052137 m!8403480))

(assert (=> bm!747052 d!2397458))

(assert (=> b!8051922 d!2397444))

(declare-fun d!2397460 () Bool)

(declare-fun lt!2726090 () Bool)

(assert (=> d!2397460 (= lt!2726090 (select (content!16103 e!4744623) key!6222))))

(declare-fun e!4744695 () Bool)

(assert (=> d!2397460 (= lt!2726090 e!4744695)))

(declare-fun res!3184020 () Bool)

(assert (=> d!2397460 (=> (not res!3184020) (not e!4744695))))

(assert (=> d!2397460 (= res!3184020 ((_ is Cons!75536) e!4744623))))

(assert (=> d!2397460 (= (contains!21194 e!4744623 key!6222) lt!2726090)))

(declare-fun b!8052138 () Bool)

(declare-fun e!4744694 () Bool)

(assert (=> b!8052138 (= e!4744695 e!4744694)))

(declare-fun res!3184019 () Bool)

(assert (=> b!8052138 (=> res!3184019 e!4744694)))

(assert (=> b!8052138 (= res!3184019 (= (h!81984 e!4744623) key!6222))))

(declare-fun b!8052139 () Bool)

(assert (=> b!8052139 (= e!4744694 (contains!21194 (t!391434 e!4744623) key!6222))))

(assert (= (and d!2397460 res!3184020) b!8052138))

(assert (= (and b!8052138 (not res!3184019)) b!8052139))

(declare-fun m!8403482 () Bool)

(assert (=> d!2397460 m!8403482))

(declare-fun m!8403484 () Bool)

(assert (=> d!2397460 m!8403484))

(declare-fun m!8403486 () Bool)

(assert (=> b!8052139 m!8403486))

(assert (=> bm!747053 d!2397460))

(declare-fun bs!1972137 () Bool)

(declare-fun b!8052211 () Bool)

(assert (= bs!1972137 (and b!8052211 b!8052112)))

(declare-fun lambda!473467 () Int)

(assert (=> bs!1972137 (= (= (t!391432 (toList!11914 lt!2725732)) (toList!11914 lt!2725732)) (= lambda!473467 lambda!473457))))

(assert (=> b!8052211 true))

(declare-fun bs!1972138 () Bool)

(declare-fun b!8052212 () Bool)

(assert (= bs!1972138 (and b!8052212 b!8052112)))

(declare-fun lambda!473468 () Int)

(assert (=> bs!1972138 (= (= (Cons!75534 (h!81982 (toList!11914 lt!2725732)) (t!391432 (toList!11914 lt!2725732))) (toList!11914 lt!2725732)) (= lambda!473468 lambda!473457))))

(declare-fun bs!1972139 () Bool)

(assert (= bs!1972139 (and b!8052212 b!8052211)))

(assert (=> bs!1972139 (= (= (Cons!75534 (h!81982 (toList!11914 lt!2725732)) (t!391432 (toList!11914 lt!2725732))) (t!391432 (toList!11914 lt!2725732))) (= lambda!473468 lambda!473467))))

(assert (=> b!8052212 true))

(declare-fun bs!1972140 () Bool)

(declare-fun b!8052209 () Bool)

(assert (= bs!1972140 (and b!8052209 b!8052112)))

(declare-fun lambda!473469 () Int)

(assert (=> bs!1972140 (= lambda!473469 lambda!473457)))

(declare-fun bs!1972141 () Bool)

(assert (= bs!1972141 (and b!8052209 b!8052211)))

(assert (=> bs!1972141 (= (= (toList!11914 lt!2725732) (t!391432 (toList!11914 lt!2725732))) (= lambda!473469 lambda!473467))))

(declare-fun bs!1972142 () Bool)

(assert (= bs!1972142 (and b!8052209 b!8052212)))

(assert (=> bs!1972142 (= (= (toList!11914 lt!2725732) (Cons!75534 (h!81982 (toList!11914 lt!2725732)) (t!391432 (toList!11914 lt!2725732)))) (= lambda!473469 lambda!473468))))

(assert (=> b!8052209 true))

(declare-fun bs!1972143 () Bool)

(declare-fun b!8052208 () Bool)

(assert (= bs!1972143 (and b!8052208 b!8052113)))

(declare-fun lambda!473470 () Int)

(assert (=> bs!1972143 (= lambda!473470 lambda!473458)))

(declare-fun b!8052207 () Bool)

(declare-fun res!3184054 () Bool)

(declare-fun e!4744743 () Bool)

(assert (=> b!8052207 (=> (not res!3184054) (not e!4744743))))

(declare-fun lt!2726124 () List!75662)

(assert (=> b!8052207 (= res!3184054 (= (length!826 lt!2726124) (length!827 (toList!11914 lt!2725732))))))

(assert (=> b!8052208 (= e!4744743 (= (content!16103 lt!2726124) (content!16103 (map!18796 (toList!11914 lt!2725732) lambda!473470))))))

(declare-fun res!3184053 () Bool)

(assert (=> b!8052209 (=> (not res!3184053) (not e!4744743))))

(assert (=> b!8052209 (= res!3184053 (forall!18499 lt!2726124 lambda!473469))))

(declare-fun d!2397462 () Bool)

(assert (=> d!2397462 e!4744743))

(declare-fun res!3184052 () Bool)

(assert (=> d!2397462 (=> (not res!3184052) (not e!4744743))))

(assert (=> d!2397462 (= res!3184052 (noDuplicate!3167 lt!2726124))))

(declare-fun e!4744744 () List!75662)

(assert (=> d!2397462 (= lt!2726124 e!4744744)))

(declare-fun c!1476009 () Bool)

(assert (=> d!2397462 (= c!1476009 ((_ is Cons!75534) (toList!11914 lt!2725732)))))

(assert (=> d!2397462 (invariantList!1929 (toList!11914 lt!2725732))))

(assert (=> d!2397462 (= (getKeysList!1237 (toList!11914 lt!2725732)) lt!2726124)))

(declare-fun b!8052210 () Bool)

(assert (=> b!8052210 false))

(declare-fun e!4744741 () Unit!171627)

(declare-fun Unit!171708 () Unit!171627)

(assert (=> b!8052210 (= e!4744741 Unit!171708)))

(assert (=> b!8052211 false))

(declare-fun lt!2726130 () Unit!171627)

(declare-fun forallContained!4653 (List!75662 Int K!22798) Unit!171627)

(assert (=> b!8052211 (= lt!2726130 (forallContained!4653 (getKeysList!1237 (t!391432 (toList!11914 lt!2725732))) lambda!473467 (_1!38741 (h!81982 (toList!11914 lt!2725732)))))))

(declare-fun e!4744742 () Unit!171627)

(declare-fun Unit!171709 () Unit!171627)

(assert (=> b!8052211 (= e!4744742 Unit!171709)))

(assert (=> b!8052212 (= e!4744744 (Cons!75536 (_1!38741 (h!81982 (toList!11914 lt!2725732))) (getKeysList!1237 (t!391432 (toList!11914 lt!2725732)))))))

(declare-fun c!1476007 () Bool)

(assert (=> b!8052212 (= c!1476007 (containsKey!4843 (t!391432 (toList!11914 lt!2725732)) (_1!38741 (h!81982 (toList!11914 lt!2725732)))))))

(declare-fun lt!2726127 () Unit!171627)

(assert (=> b!8052212 (= lt!2726127 e!4744741)))

(declare-fun c!1476008 () Bool)

(assert (=> b!8052212 (= c!1476008 (contains!21194 (getKeysList!1237 (t!391432 (toList!11914 lt!2725732))) (_1!38741 (h!81982 (toList!11914 lt!2725732)))))))

(declare-fun lt!2726128 () Unit!171627)

(assert (=> b!8052212 (= lt!2726128 e!4744742)))

(declare-fun lt!2726126 () List!75662)

(assert (=> b!8052212 (= lt!2726126 (getKeysList!1237 (t!391432 (toList!11914 lt!2725732))))))

(declare-fun lt!2726129 () Unit!171627)

(declare-fun lemmaForallContainsAddHeadPreserves!397 (List!75660 List!75662 tuple2!70876) Unit!171627)

(assert (=> b!8052212 (= lt!2726129 (lemmaForallContainsAddHeadPreserves!397 (t!391432 (toList!11914 lt!2725732)) lt!2726126 (h!81982 (toList!11914 lt!2725732))))))

(assert (=> b!8052212 (forall!18499 lt!2726126 lambda!473468)))

(declare-fun lt!2726125 () Unit!171627)

(assert (=> b!8052212 (= lt!2726125 lt!2726129)))

(declare-fun b!8052213 () Bool)

(declare-fun Unit!171710 () Unit!171627)

(assert (=> b!8052213 (= e!4744741 Unit!171710)))

(declare-fun b!8052214 () Bool)

(declare-fun Unit!171711 () Unit!171627)

(assert (=> b!8052214 (= e!4744742 Unit!171711)))

(declare-fun b!8052215 () Bool)

(assert (=> b!8052215 (= e!4744744 Nil!75536)))

(assert (= (and d!2397462 c!1476009) b!8052212))

(assert (= (and d!2397462 (not c!1476009)) b!8052215))

(assert (= (and b!8052212 c!1476007) b!8052210))

(assert (= (and b!8052212 (not c!1476007)) b!8052213))

(assert (= (and b!8052212 c!1476008) b!8052211))

(assert (= (and b!8052212 (not c!1476008)) b!8052214))

(assert (= (and d!2397462 res!3184052) b!8052207))

(assert (= (and b!8052207 res!3184054) b!8052209))

(assert (= (and b!8052209 res!3184053) b!8052208))

(declare-fun m!8403554 () Bool)

(assert (=> b!8052212 m!8403554))

(declare-fun m!8403556 () Bool)

(assert (=> b!8052212 m!8403556))

(declare-fun m!8403558 () Bool)

(assert (=> b!8052212 m!8403558))

(declare-fun m!8403560 () Bool)

(assert (=> b!8052212 m!8403560))

(assert (=> b!8052212 m!8403558))

(declare-fun m!8403562 () Bool)

(assert (=> b!8052212 m!8403562))

(declare-fun m!8403564 () Bool)

(assert (=> d!2397462 m!8403564))

(declare-fun m!8403566 () Bool)

(assert (=> d!2397462 m!8403566))

(declare-fun m!8403568 () Bool)

(assert (=> b!8052209 m!8403568))

(assert (=> b!8052211 m!8403558))

(assert (=> b!8052211 m!8403558))

(declare-fun m!8403570 () Bool)

(assert (=> b!8052211 m!8403570))

(declare-fun m!8403572 () Bool)

(assert (=> b!8052207 m!8403572))

(assert (=> b!8052207 m!8403452))

(declare-fun m!8403574 () Bool)

(assert (=> b!8052208 m!8403574))

(declare-fun m!8403576 () Bool)

(assert (=> b!8052208 m!8403576))

(assert (=> b!8052208 m!8403576))

(declare-fun m!8403578 () Bool)

(assert (=> b!8052208 m!8403578))

(assert (=> b!8051920 d!2397462))

(declare-fun d!2397484 () Bool)

(declare-fun res!3184055 () Bool)

(declare-fun e!4744745 () Bool)

(assert (=> d!2397484 (=> res!3184055 e!4744745)))

(assert (=> d!2397484 (= res!3184055 (and ((_ is Cons!75534) (t!391432 l!14636)) (= (_1!38741 (h!81982 (t!391432 l!14636))) (_1!38741 (h!81982 l!14636)))))))

(assert (=> d!2397484 (= (containsKey!4841 (t!391432 l!14636) (_1!38741 (h!81982 l!14636))) e!4744745)))

(declare-fun b!8052218 () Bool)

(declare-fun e!4744746 () Bool)

(assert (=> b!8052218 (= e!4744745 e!4744746)))

(declare-fun res!3184056 () Bool)

(assert (=> b!8052218 (=> (not res!3184056) (not e!4744746))))

(assert (=> b!8052218 (= res!3184056 ((_ is Cons!75534) (t!391432 l!14636)))))

(declare-fun b!8052219 () Bool)

(assert (=> b!8052219 (= e!4744746 (containsKey!4841 (t!391432 (t!391432 l!14636)) (_1!38741 (h!81982 l!14636))))))

(assert (= (and d!2397484 (not res!3184055)) b!8052218))

(assert (= (and b!8052218 res!3184056) b!8052219))

(declare-fun m!8403580 () Bool)

(assert (=> b!8052219 m!8403580))

(assert (=> b!8052032 d!2397484))

(declare-fun d!2397486 () Bool)

(assert (=> d!2397486 (isDefined!14527 (getValueByKey!2778 (toList!11914 lt!2725734) key!6222))))

(declare-fun lt!2726135 () Unit!171627)

(declare-fun choose!60503 (List!75660 K!22798) Unit!171627)

(assert (=> d!2397486 (= lt!2726135 (choose!60503 (toList!11914 lt!2725734) key!6222))))

(assert (=> d!2397486 (invariantList!1929 (toList!11914 lt!2725734))))

(assert (=> d!2397486 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2549 (toList!11914 lt!2725734) key!6222) lt!2726135)))

(declare-fun bs!1972144 () Bool)

(assert (= bs!1972144 d!2397486))

(assert (=> bs!1972144 m!8403254))

(assert (=> bs!1972144 m!8403254))

(assert (=> bs!1972144 m!8403256))

(declare-fun m!8403582 () Bool)

(assert (=> bs!1972144 m!8403582))

(declare-fun m!8403584 () Bool)

(assert (=> bs!1972144 m!8403584))

(assert (=> b!8052022 d!2397486))

(declare-fun d!2397488 () Bool)

(declare-fun isEmpty!43033 (Option!17994) Bool)

(assert (=> d!2397488 (= (isDefined!14527 (getValueByKey!2778 (toList!11914 lt!2725734) key!6222)) (not (isEmpty!43033 (getValueByKey!2778 (toList!11914 lt!2725734) key!6222))))))

(declare-fun bs!1972145 () Bool)

(assert (= bs!1972145 d!2397488))

(assert (=> bs!1972145 m!8403254))

(declare-fun m!8403586 () Bool)

(assert (=> bs!1972145 m!8403586))

(assert (=> b!8052022 d!2397488))

(declare-fun b!8052224 () Bool)

(declare-fun e!4744748 () Option!17994)

(assert (=> b!8052224 (= e!4744748 None!17993)))

(declare-fun b!8052222 () Bool)

(declare-fun e!4744747 () Option!17994)

(assert (=> b!8052222 (= e!4744747 e!4744748)))

(declare-fun c!1476011 () Bool)

(assert (=> b!8052222 (= c!1476011 (and ((_ is Cons!75534) (toList!11914 lt!2725734)) (not (= (_1!38741 (h!81982 (toList!11914 lt!2725734))) key!6222))))))

(declare-fun d!2397490 () Bool)

(declare-fun c!1476010 () Bool)

(assert (=> d!2397490 (= c!1476010 (and ((_ is Cons!75534) (toList!11914 lt!2725734)) (= (_1!38741 (h!81982 (toList!11914 lt!2725734))) key!6222)))))

(assert (=> d!2397490 (= (getValueByKey!2778 (toList!11914 lt!2725734) key!6222) e!4744747)))

(declare-fun b!8052221 () Bool)

(assert (=> b!8052221 (= e!4744747 (Some!17993 (_2!38741 (h!81982 (toList!11914 lt!2725734)))))))

(declare-fun b!8052223 () Bool)

(assert (=> b!8052223 (= e!4744748 (getValueByKey!2778 (t!391432 (toList!11914 lt!2725734)) key!6222))))

(assert (= (and d!2397490 c!1476010) b!8052221))

(assert (= (and d!2397490 (not c!1476010)) b!8052222))

(assert (= (and b!8052222 c!1476011) b!8052223))

(assert (= (and b!8052222 (not c!1476011)) b!8052224))

(declare-fun m!8403588 () Bool)

(assert (=> b!8052223 m!8403588))

(assert (=> b!8052022 d!2397490))

(declare-fun d!2397492 () Bool)

(assert (=> d!2397492 (contains!21194 (getKeysList!1237 (toList!11914 lt!2725734)) key!6222)))

(declare-fun lt!2726160 () Unit!171627)

(declare-fun choose!60504 (List!75660 K!22798) Unit!171627)

(assert (=> d!2397492 (= lt!2726160 (choose!60504 (toList!11914 lt!2725734) key!6222))))

(assert (=> d!2397492 (invariantList!1929 (toList!11914 lt!2725734))))

(assert (=> d!2397492 (= (lemmaInListThenGetKeysListContains!1232 (toList!11914 lt!2725734) key!6222) lt!2726160)))

(declare-fun bs!1972161 () Bool)

(assert (= bs!1972161 d!2397492))

(assert (=> bs!1972161 m!8403268))

(assert (=> bs!1972161 m!8403268))

(declare-fun m!8403598 () Bool)

(assert (=> bs!1972161 m!8403598))

(declare-fun m!8403600 () Bool)

(assert (=> bs!1972161 m!8403600))

(assert (=> bs!1972161 m!8403584))

(assert (=> b!8052022 d!2397492))

(declare-fun d!2397496 () Bool)

(declare-fun res!3184060 () Bool)

(declare-fun e!4744752 () Bool)

(assert (=> d!2397496 (=> res!3184060 e!4744752)))

(assert (=> d!2397496 (= res!3184060 ((_ is Nil!75534) (toList!11914 acc!1298)))))

(assert (=> d!2397496 (= (forall!18498 (toList!11914 acc!1298) lambda!473443) e!4744752)))

(declare-fun b!8052230 () Bool)

(declare-fun e!4744753 () Bool)

(assert (=> b!8052230 (= e!4744752 e!4744753)))

(declare-fun res!3184061 () Bool)

(assert (=> b!8052230 (=> (not res!3184061) (not e!4744753))))

(assert (=> b!8052230 (= res!3184061 (dynLambda!30269 lambda!473443 (h!81982 (toList!11914 acc!1298))))))

(declare-fun b!8052231 () Bool)

(assert (=> b!8052231 (= e!4744753 (forall!18498 (t!391432 (toList!11914 acc!1298)) lambda!473443))))

(assert (= (and d!2397496 (not res!3184060)) b!8052230))

(assert (= (and b!8052230 res!3184061) b!8052231))

(declare-fun b_lambda!290387 () Bool)

(assert (=> (not b_lambda!290387) (not b!8052230)))

(declare-fun m!8403602 () Bool)

(assert (=> b!8052230 m!8403602))

(declare-fun m!8403604 () Bool)

(assert (=> b!8052231 m!8403604))

(assert (=> b!8052043 d!2397496))

(declare-fun d!2397498 () Bool)

(assert (=> d!2397498 (= (isDefined!14527 (getValueByKey!2778 (toList!11914 lt!2725732) key!6222)) (not (isEmpty!43033 (getValueByKey!2778 (toList!11914 lt!2725732) key!6222))))))

(declare-fun bs!1972169 () Bool)

(assert (= bs!1972169 d!2397498))

(assert (=> bs!1972169 m!8403016))

(declare-fun m!8403606 () Bool)

(assert (=> bs!1972169 m!8403606))

(assert (=> b!8051914 d!2397498))

(declare-fun b!8052235 () Bool)

(declare-fun e!4744755 () Option!17994)

(assert (=> b!8052235 (= e!4744755 None!17993)))

(declare-fun b!8052233 () Bool)

(declare-fun e!4744754 () Option!17994)

(assert (=> b!8052233 (= e!4744754 e!4744755)))

(declare-fun c!1476014 () Bool)

(assert (=> b!8052233 (= c!1476014 (and ((_ is Cons!75534) (toList!11914 lt!2725732)) (not (= (_1!38741 (h!81982 (toList!11914 lt!2725732))) key!6222))))))

(declare-fun d!2397500 () Bool)

(declare-fun c!1476013 () Bool)

(assert (=> d!2397500 (= c!1476013 (and ((_ is Cons!75534) (toList!11914 lt!2725732)) (= (_1!38741 (h!81982 (toList!11914 lt!2725732))) key!6222)))))

(assert (=> d!2397500 (= (getValueByKey!2778 (toList!11914 lt!2725732) key!6222) e!4744754)))

(declare-fun b!8052232 () Bool)

(assert (=> b!8052232 (= e!4744754 (Some!17993 (_2!38741 (h!81982 (toList!11914 lt!2725732)))))))

(declare-fun b!8052234 () Bool)

(assert (=> b!8052234 (= e!4744755 (getValueByKey!2778 (t!391432 (toList!11914 lt!2725732)) key!6222))))

(assert (= (and d!2397500 c!1476013) b!8052232))

(assert (= (and d!2397500 (not c!1476013)) b!8052233))

(assert (= (and b!8052233 c!1476014) b!8052234))

(assert (= (and b!8052233 (not c!1476014)) b!8052235))

(declare-fun m!8403608 () Bool)

(assert (=> b!8052234 m!8403608))

(assert (=> b!8051914 d!2397500))

(declare-fun d!2397502 () Bool)

(assert (=> d!2397502 (isDefined!14527 (getValueByKey!2778 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222))))

(declare-fun lt!2726161 () Unit!171627)

(assert (=> d!2397502 (= lt!2726161 (choose!60503 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222))))

(assert (=> d!2397502 (invariantList!1929 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))))

(assert (=> d!2397502 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2549 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222) lt!2726161)))

(declare-fun bs!1972170 () Bool)

(assert (= bs!1972170 d!2397502))

(assert (=> bs!1972170 m!8403282))

(assert (=> bs!1972170 m!8403282))

(assert (=> bs!1972170 m!8403284))

(declare-fun m!8403610 () Bool)

(assert (=> bs!1972170 m!8403610))

(declare-fun m!8403612 () Bool)

(assert (=> bs!1972170 m!8403612))

(assert (=> b!8052035 d!2397502))

(declare-fun d!2397504 () Bool)

(assert (=> d!2397504 (= (isDefined!14527 (getValueByKey!2778 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222)) (not (isEmpty!43033 (getValueByKey!2778 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222))))))

(declare-fun bs!1972171 () Bool)

(assert (= bs!1972171 d!2397504))

(assert (=> bs!1972171 m!8403282))

(declare-fun m!8403614 () Bool)

(assert (=> bs!1972171 m!8403614))

(assert (=> b!8052035 d!2397504))

(declare-fun b!8052239 () Bool)

(declare-fun e!4744757 () Option!17994)

(assert (=> b!8052239 (= e!4744757 None!17993)))

(declare-fun b!8052237 () Bool)

(declare-fun e!4744756 () Option!17994)

(assert (=> b!8052237 (= e!4744756 e!4744757)))

(declare-fun c!1476016 () Bool)

(assert (=> b!8052237 (= c!1476016 (and ((_ is Cons!75534) (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (not (= (_1!38741 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) key!6222))))))

(declare-fun d!2397506 () Bool)

(declare-fun c!1476015 () Bool)

(assert (=> d!2397506 (= c!1476015 (and ((_ is Cons!75534) (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (= (_1!38741 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) key!6222)))))

(assert (=> d!2397506 (= (getValueByKey!2778 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222) e!4744756)))

(declare-fun b!8052236 () Bool)

(assert (=> b!8052236 (= e!4744756 (Some!17993 (_2!38741 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))))))))

(declare-fun b!8052238 () Bool)

(assert (=> b!8052238 (= e!4744757 (getValueByKey!2778 (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) key!6222))))

(assert (= (and d!2397506 c!1476015) b!8052236))

(assert (= (and d!2397506 (not c!1476015)) b!8052237))

(assert (= (and b!8052237 c!1476016) b!8052238))

(assert (= (and b!8052237 (not c!1476016)) b!8052239))

(declare-fun m!8403616 () Bool)

(assert (=> b!8052238 m!8403616))

(assert (=> b!8052035 d!2397506))

(declare-fun d!2397508 () Bool)

(assert (=> d!2397508 (contains!21194 (getKeysList!1237 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) key!6222)))

(declare-fun lt!2726162 () Unit!171627)

(assert (=> d!2397508 (= lt!2726162 (choose!60504 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222))))

(assert (=> d!2397508 (invariantList!1929 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))))

(assert (=> d!2397508 (= (lemmaInListThenGetKeysListContains!1232 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222) lt!2726162)))

(declare-fun bs!1972172 () Bool)

(assert (= bs!1972172 d!2397508))

(assert (=> bs!1972172 m!8403296))

(assert (=> bs!1972172 m!8403296))

(declare-fun m!8403618 () Bool)

(assert (=> bs!1972172 m!8403618))

(declare-fun m!8403620 () Bool)

(assert (=> bs!1972172 m!8403620))

(assert (=> bs!1972172 m!8403612))

(assert (=> b!8052035 d!2397508))

(declare-fun d!2397510 () Bool)

(declare-fun res!3184066 () Bool)

(declare-fun e!4744762 () Bool)

(assert (=> d!2397510 (=> res!3184066 e!4744762)))

(assert (=> d!2397510 (= res!3184066 (and ((_ is Cons!75534) (toList!11914 lt!2725734)) (= (_1!38741 (h!81982 (toList!11914 lt!2725734))) key!6222)))))

(assert (=> d!2397510 (= (containsKey!4843 (toList!11914 lt!2725734) key!6222) e!4744762)))

(declare-fun b!8052244 () Bool)

(declare-fun e!4744763 () Bool)

(assert (=> b!8052244 (= e!4744762 e!4744763)))

(declare-fun res!3184067 () Bool)

(assert (=> b!8052244 (=> (not res!3184067) (not e!4744763))))

(assert (=> b!8052244 (= res!3184067 ((_ is Cons!75534) (toList!11914 lt!2725734)))))

(declare-fun b!8052245 () Bool)

(assert (=> b!8052245 (= e!4744763 (containsKey!4843 (t!391432 (toList!11914 lt!2725734)) key!6222))))

(assert (= (and d!2397510 (not res!3184066)) b!8052244))

(assert (= (and b!8052244 res!3184067) b!8052245))

(declare-fun m!8403622 () Bool)

(assert (=> b!8052245 m!8403622))

(assert (=> d!2397406 d!2397510))

(declare-fun d!2397512 () Bool)

(declare-fun res!3184068 () Bool)

(declare-fun e!4744764 () Bool)

(assert (=> d!2397512 (=> res!3184068 e!4744764)))

(assert (=> d!2397512 (= res!3184068 (and ((_ is Cons!75534) (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (= (_1!38741 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) key!6222)))))

(assert (=> d!2397512 (= (containsKey!4843 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222) e!4744764)))

(declare-fun b!8052246 () Bool)

(declare-fun e!4744765 () Bool)

(assert (=> b!8052246 (= e!4744764 e!4744765)))

(declare-fun res!3184069 () Bool)

(assert (=> b!8052246 (=> (not res!3184069) (not e!4744765))))

(assert (=> b!8052246 (= res!3184069 ((_ is Cons!75534) (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))))))

(declare-fun b!8052247 () Bool)

(assert (=> b!8052247 (= e!4744765 (containsKey!4843 (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) key!6222))))

(assert (= (and d!2397512 (not res!3184068)) b!8052246))

(assert (= (and b!8052246 res!3184069) b!8052247))

(declare-fun m!8403624 () Bool)

(assert (=> b!8052247 m!8403624))

(assert (=> d!2397414 d!2397512))

(assert (=> b!8052037 d!2397512))

(declare-fun d!2397514 () Bool)

(assert (=> d!2397514 (containsKey!4843 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222)))

(declare-fun lt!2726165 () Unit!171627)

(declare-fun choose!60507 (List!75660 K!22798) Unit!171627)

(assert (=> d!2397514 (= lt!2726165 (choose!60507 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222))))

(assert (=> d!2397514 (invariantList!1929 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))))

(assert (=> d!2397514 (= (lemmaInGetKeysListThenContainsKey!1237 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222) lt!2726165)))

(declare-fun bs!1972182 () Bool)

(assert (= bs!1972182 d!2397514))

(assert (=> bs!1972182 m!8403286))

(declare-fun m!8403660 () Bool)

(assert (=> bs!1972182 m!8403660))

(assert (=> bs!1972182 m!8403612))

(assert (=> b!8052037 d!2397514))

(assert (=> b!8051916 d!2397442))

(assert (=> b!8051916 d!2397444))

(declare-fun d!2397518 () Bool)

(declare-fun lt!2726166 () Bool)

(assert (=> d!2397518 (= lt!2726166 (select (content!16102 (t!391432 (t!391432 l!14636))) (tuple2!70877 key!6222 value!3131)))))

(declare-fun e!4744766 () Bool)

(assert (=> d!2397518 (= lt!2726166 e!4744766)))

(declare-fun res!3184071 () Bool)

(assert (=> d!2397518 (=> (not res!3184071) (not e!4744766))))

(assert (=> d!2397518 (= res!3184071 ((_ is Cons!75534) (t!391432 (t!391432 l!14636))))))

(assert (=> d!2397518 (= (contains!21192 (t!391432 (t!391432 l!14636)) (tuple2!70877 key!6222 value!3131)) lt!2726166)))

(declare-fun b!8052248 () Bool)

(declare-fun e!4744767 () Bool)

(assert (=> b!8052248 (= e!4744766 e!4744767)))

(declare-fun res!3184070 () Bool)

(assert (=> b!8052248 (=> res!3184070 e!4744767)))

(assert (=> b!8052248 (= res!3184070 (= (h!81982 (t!391432 (t!391432 l!14636))) (tuple2!70877 key!6222 value!3131)))))

(declare-fun b!8052249 () Bool)

(assert (=> b!8052249 (= e!4744767 (contains!21192 (t!391432 (t!391432 (t!391432 l!14636))) (tuple2!70877 key!6222 value!3131)))))

(assert (= (and d!2397518 res!3184071) b!8052248))

(assert (= (and b!8052248 (not res!3184070)) b!8052249))

(declare-fun m!8403662 () Bool)

(assert (=> d!2397518 m!8403662))

(declare-fun m!8403664 () Bool)

(assert (=> d!2397518 m!8403664))

(declare-fun m!8403666 () Bool)

(assert (=> b!8052249 m!8403666))

(assert (=> b!8052018 d!2397518))

(assert (=> b!8052024 d!2397510))

(declare-fun d!2397520 () Bool)

(assert (=> d!2397520 (containsKey!4843 (toList!11914 lt!2725734) key!6222)))

(declare-fun lt!2726167 () Unit!171627)

(assert (=> d!2397520 (= lt!2726167 (choose!60507 (toList!11914 lt!2725734) key!6222))))

(assert (=> d!2397520 (invariantList!1929 (toList!11914 lt!2725734))))

(assert (=> d!2397520 (= (lemmaInGetKeysListThenContainsKey!1237 (toList!11914 lt!2725734) key!6222) lt!2726167)))

(declare-fun bs!1972183 () Bool)

(assert (= bs!1972183 d!2397520))

(assert (=> bs!1972183 m!8403258))

(declare-fun m!8403668 () Bool)

(assert (=> bs!1972183 m!8403668))

(assert (=> bs!1972183 m!8403584))

(assert (=> b!8052024 d!2397520))

(declare-fun d!2397522 () Bool)

(declare-fun noDuplicatedKeys!512 (List!75660) Bool)

(assert (=> d!2397522 (= (invariantList!1929 (toList!11914 lt!2726022)) (noDuplicatedKeys!512 (toList!11914 lt!2726022)))))

(declare-fun bs!1972184 () Bool)

(assert (= bs!1972184 d!2397522))

(declare-fun m!8403670 () Bool)

(assert (=> bs!1972184 m!8403670))

(assert (=> b!8052045 d!2397522))

(declare-fun d!2397524 () Bool)

(assert (=> d!2397524 (= (get!27209 (getValueByKey!2778 (toList!11914 lt!2725732) key!6222)) (v!55300 (getValueByKey!2778 (toList!11914 lt!2725732) key!6222)))))

(assert (=> d!2397396 d!2397524))

(assert (=> d!2397396 d!2397500))

(declare-fun d!2397526 () Bool)

(declare-fun res!3184072 () Bool)

(declare-fun e!4744768 () Bool)

(assert (=> d!2397526 (=> res!3184072 e!4744768)))

(assert (=> d!2397526 (= res!3184072 (and ((_ is Cons!75534) (t!391432 (t!391432 l!14636))) (= (_1!38741 (h!81982 (t!391432 (t!391432 l!14636)))) key!6222)))))

(assert (=> d!2397526 (= (containsKey!4841 (t!391432 (t!391432 l!14636)) key!6222) e!4744768)))

(declare-fun b!8052250 () Bool)

(declare-fun e!4744769 () Bool)

(assert (=> b!8052250 (= e!4744768 e!4744769)))

(declare-fun res!3184073 () Bool)

(assert (=> b!8052250 (=> (not res!3184073) (not e!4744769))))

(assert (=> b!8052250 (= res!3184073 ((_ is Cons!75534) (t!391432 (t!391432 l!14636))))))

(declare-fun b!8052251 () Bool)

(assert (=> b!8052251 (= e!4744769 (containsKey!4841 (t!391432 (t!391432 (t!391432 l!14636))) key!6222))))

(assert (= (and d!2397526 (not res!3184072)) b!8052250))

(assert (= (and b!8052250 res!3184073) b!8052251))

(declare-fun m!8403672 () Bool)

(assert (=> b!8052251 m!8403672))

(assert (=> b!8052020 d!2397526))

(declare-fun d!2397528 () Bool)

(declare-fun c!1476021 () Bool)

(assert (=> d!2397528 (= c!1476021 ((_ is Nil!75534) (t!391432 l!14636)))))

(declare-fun e!4744774 () (InoxSet tuple2!70876))

(assert (=> d!2397528 (= (content!16102 (t!391432 l!14636)) e!4744774)))

(declare-fun b!8052260 () Bool)

(assert (=> b!8052260 (= e!4744774 ((as const (Array tuple2!70876 Bool)) false))))

(declare-fun b!8052261 () Bool)

(assert (=> b!8052261 (= e!4744774 ((_ map or) (store ((as const (Array tuple2!70876 Bool)) false) (h!81982 (t!391432 l!14636)) true) (content!16102 (t!391432 (t!391432 l!14636)))))))

(assert (= (and d!2397528 c!1476021) b!8052260))

(assert (= (and d!2397528 (not c!1476021)) b!8052261))

(declare-fun m!8403680 () Bool)

(assert (=> b!8052261 m!8403680))

(assert (=> b!8052261 m!8403662))

(assert (=> d!2397398 d!2397528))

(declare-fun d!2397536 () Bool)

(declare-fun lt!2726171 () Bool)

(assert (=> d!2397536 (= lt!2726171 (select (content!16103 e!4744518) key!6222))))

(declare-fun e!4744776 () Bool)

(assert (=> d!2397536 (= lt!2726171 e!4744776)))

(declare-fun res!3184075 () Bool)

(assert (=> d!2397536 (=> (not res!3184075) (not e!4744776))))

(assert (=> d!2397536 (= res!3184075 ((_ is Cons!75536) e!4744518))))

(assert (=> d!2397536 (= (contains!21194 e!4744518 key!6222) lt!2726171)))

(declare-fun b!8052262 () Bool)

(declare-fun e!4744775 () Bool)

(assert (=> b!8052262 (= e!4744776 e!4744775)))

(declare-fun res!3184074 () Bool)

(assert (=> b!8052262 (=> res!3184074 e!4744775)))

(assert (=> b!8052262 (= res!3184074 (= (h!81984 e!4744518) key!6222))))

(declare-fun b!8052263 () Bool)

(assert (=> b!8052263 (= e!4744775 (contains!21194 (t!391434 e!4744518) key!6222))))

(assert (= (and d!2397536 res!3184075) b!8052262))

(assert (= (and b!8052262 (not res!3184074)) b!8052263))

(declare-fun m!8403682 () Bool)

(assert (=> d!2397536 m!8403682))

(declare-fun m!8403684 () Bool)

(assert (=> d!2397536 m!8403684))

(declare-fun m!8403686 () Bool)

(assert (=> b!8052263 m!8403686))

(assert (=> bm!747023 d!2397536))

(declare-fun d!2397538 () Bool)

(declare-fun c!1476022 () Bool)

(assert (=> d!2397538 (= c!1476022 ((_ is Nil!75534) l!14636))))

(declare-fun e!4744777 () (InoxSet tuple2!70876))

(assert (=> d!2397538 (= (content!16102 l!14636) e!4744777)))

(declare-fun b!8052264 () Bool)

(assert (=> b!8052264 (= e!4744777 ((as const (Array tuple2!70876 Bool)) false))))

(declare-fun b!8052265 () Bool)

(assert (=> b!8052265 (= e!4744777 ((_ map or) (store ((as const (Array tuple2!70876 Bool)) false) (h!81982 l!14636) true) (content!16102 (t!391432 l!14636))))))

(assert (= (and d!2397538 c!1476022) b!8052264))

(assert (= (and d!2397538 (not c!1476022)) b!8052265))

(declare-fun m!8403688 () Bool)

(assert (=> b!8052265 m!8403688))

(assert (=> b!8052265 m!8403238))

(assert (=> d!2397408 d!2397538))

(declare-fun d!2397540 () Bool)

(declare-fun res!3184076 () Bool)

(declare-fun e!4744778 () Bool)

(assert (=> d!2397540 (=> res!3184076 e!4744778)))

(assert (=> d!2397540 (= res!3184076 ((_ is Nil!75534) (ite c!1475968 (toList!11914 lt!2725732) (toList!11914 lt!2725980))))))

(assert (=> d!2397540 (= (forall!18498 (ite c!1475968 (toList!11914 lt!2725732) (toList!11914 lt!2725980)) (ite c!1475968 lambda!473436 lambda!473438)) e!4744778)))

(declare-fun b!8052266 () Bool)

(declare-fun e!4744779 () Bool)

(assert (=> b!8052266 (= e!4744778 e!4744779)))

(declare-fun res!3184077 () Bool)

(assert (=> b!8052266 (=> (not res!3184077) (not e!4744779))))

(assert (=> b!8052266 (= res!3184077 (dynLambda!30269 (ite c!1475968 lambda!473436 lambda!473438) (h!81982 (ite c!1475968 (toList!11914 lt!2725732) (toList!11914 lt!2725980)))))))

(declare-fun b!8052267 () Bool)

(assert (=> b!8052267 (= e!4744779 (forall!18498 (t!391432 (ite c!1475968 (toList!11914 lt!2725732) (toList!11914 lt!2725980))) (ite c!1475968 lambda!473436 lambda!473438)))))

(assert (= (and d!2397540 (not res!3184076)) b!8052266))

(assert (= (and b!8052266 res!3184077) b!8052267))

(declare-fun b_lambda!290389 () Bool)

(assert (=> (not b_lambda!290389) (not b!8052266)))

(declare-fun m!8403690 () Bool)

(assert (=> b!8052266 m!8403690))

(declare-fun m!8403692 () Bool)

(assert (=> b!8052267 m!8403692))

(assert (=> bm!747050 d!2397540))

(declare-fun d!2397542 () Bool)

(declare-fun res!3184078 () Bool)

(declare-fun e!4744780 () Bool)

(assert (=> d!2397542 (=> res!3184078 e!4744780)))

(assert (=> d!2397542 (= res!3184078 ((_ is Nil!75534) (t!391432 l!14636)))))

(assert (=> d!2397542 (= (forall!18498 (t!391432 l!14636) lambda!473439) e!4744780)))

(declare-fun b!8052268 () Bool)

(declare-fun e!4744781 () Bool)

(assert (=> b!8052268 (= e!4744780 e!4744781)))

(declare-fun res!3184079 () Bool)

(assert (=> b!8052268 (=> (not res!3184079) (not e!4744781))))

(assert (=> b!8052268 (= res!3184079 (dynLambda!30269 lambda!473439 (h!81982 (t!391432 l!14636))))))

(declare-fun b!8052269 () Bool)

(assert (=> b!8052269 (= e!4744781 (forall!18498 (t!391432 (t!391432 l!14636)) lambda!473439))))

(assert (= (and d!2397542 (not res!3184078)) b!8052268))

(assert (= (and b!8052268 res!3184079) b!8052269))

(declare-fun b_lambda!290391 () Bool)

(assert (=> (not b_lambda!290391) (not b!8052268)))

(declare-fun m!8403694 () Bool)

(assert (=> b!8052268 m!8403694))

(declare-fun m!8403696 () Bool)

(assert (=> b!8052269 m!8403696))

(assert (=> d!2397372 d!2397542))

(assert (=> d!2397372 d!2397366))

(declare-fun d!2397544 () Bool)

(declare-fun lt!2726174 () Bool)

(assert (=> d!2397544 (= lt!2726174 (select (content!16103 e!4744544) key!6222))))

(declare-fun e!4744783 () Bool)

(assert (=> d!2397544 (= lt!2726174 e!4744783)))

(declare-fun res!3184081 () Bool)

(assert (=> d!2397544 (=> (not res!3184081) (not e!4744783))))

(assert (=> d!2397544 (= res!3184081 ((_ is Cons!75536) e!4744544))))

(assert (=> d!2397544 (= (contains!21194 e!4744544 key!6222) lt!2726174)))

(declare-fun b!8052270 () Bool)

(declare-fun e!4744782 () Bool)

(assert (=> b!8052270 (= e!4744783 e!4744782)))

(declare-fun res!3184080 () Bool)

(assert (=> b!8052270 (=> res!3184080 e!4744782)))

(assert (=> b!8052270 (= res!3184080 (= (h!81984 e!4744544) key!6222))))

(declare-fun b!8052271 () Bool)

(assert (=> b!8052271 (= e!4744782 (contains!21194 (t!391434 e!4744544) key!6222))))

(assert (= (and d!2397544 res!3184081) b!8052270))

(assert (= (and b!8052270 (not res!3184080)) b!8052271))

(declare-fun m!8403698 () Bool)

(assert (=> d!2397544 m!8403698))

(declare-fun m!8403700 () Bool)

(assert (=> d!2397544 m!8403700))

(declare-fun m!8403702 () Bool)

(assert (=> b!8052271 m!8403702))

(assert (=> bm!747027 d!2397544))

(declare-fun d!2397546 () Bool)

(assert (=> d!2397546 (isDefined!14527 (getValueByKey!2778 (toList!11914 acc!1298) key!6222))))

(declare-fun lt!2726176 () Unit!171627)

(assert (=> d!2397546 (= lt!2726176 (choose!60503 (toList!11914 acc!1298) key!6222))))

(assert (=> d!2397546 (invariantList!1929 (toList!11914 acc!1298))))

(assert (=> d!2397546 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2549 (toList!11914 acc!1298) key!6222) lt!2726176)))

(declare-fun bs!1972188 () Bool)

(assert (= bs!1972188 d!2397546))

(assert (=> bs!1972188 m!8402978))

(assert (=> bs!1972188 m!8402978))

(assert (=> bs!1972188 m!8402980))

(declare-fun m!8403708 () Bool)

(assert (=> bs!1972188 m!8403708))

(assert (=> bs!1972188 m!8403276))

(assert (=> b!8051881 d!2397546))

(declare-fun d!2397550 () Bool)

(assert (=> d!2397550 (= (isDefined!14527 (getValueByKey!2778 (toList!11914 acc!1298) key!6222)) (not (isEmpty!43033 (getValueByKey!2778 (toList!11914 acc!1298) key!6222))))))

(declare-fun bs!1972189 () Bool)

(assert (= bs!1972189 d!2397550))

(assert (=> bs!1972189 m!8402978))

(declare-fun m!8403710 () Bool)

(assert (=> bs!1972189 m!8403710))

(assert (=> b!8051881 d!2397550))

(assert (=> b!8051881 d!2397450))

(declare-fun d!2397552 () Bool)

(assert (=> d!2397552 (contains!21194 (getKeysList!1237 (toList!11914 acc!1298)) key!6222)))

(declare-fun lt!2726177 () Unit!171627)

(assert (=> d!2397552 (= lt!2726177 (choose!60504 (toList!11914 acc!1298) key!6222))))

(assert (=> d!2397552 (invariantList!1929 (toList!11914 acc!1298))))

(assert (=> d!2397552 (= (lemmaInListThenGetKeysListContains!1232 (toList!11914 acc!1298) key!6222) lt!2726177)))

(declare-fun bs!1972190 () Bool)

(assert (= bs!1972190 d!2397552))

(assert (=> bs!1972190 m!8402992))

(assert (=> bs!1972190 m!8402992))

(declare-fun m!8403716 () Bool)

(assert (=> bs!1972190 m!8403716))

(declare-fun m!8403718 () Bool)

(assert (=> bs!1972190 m!8403718))

(assert (=> bs!1972190 m!8403276))

(assert (=> b!8051881 d!2397552))

(declare-fun d!2397556 () Bool)

(declare-fun res!3184084 () Bool)

(declare-fun e!4744786 () Bool)

(assert (=> d!2397556 (=> res!3184084 e!4744786)))

(assert (=> d!2397556 (= res!3184084 ((_ is Nil!75534) l!14636))))

(assert (=> d!2397556 (= (forall!18498 l!14636 lambda!473443) e!4744786)))

(declare-fun b!8052274 () Bool)

(declare-fun e!4744787 () Bool)

(assert (=> b!8052274 (= e!4744786 e!4744787)))

(declare-fun res!3184085 () Bool)

(assert (=> b!8052274 (=> (not res!3184085) (not e!4744787))))

(assert (=> b!8052274 (= res!3184085 (dynLambda!30269 lambda!473443 (h!81982 l!14636)))))

(declare-fun b!8052275 () Bool)

(assert (=> b!8052275 (= e!4744787 (forall!18498 (t!391432 l!14636) lambda!473443))))

(assert (= (and d!2397556 (not res!3184084)) b!8052274))

(assert (= (and b!8052274 res!3184085) b!8052275))

(declare-fun b_lambda!290395 () Bool)

(assert (=> (not b_lambda!290395) (not b!8052274)))

(declare-fun m!8403720 () Bool)

(assert (=> b!8052274 m!8403720))

(declare-fun m!8403722 () Bool)

(assert (=> b!8052275 m!8403722))

(assert (=> d!2397416 d!2397556))

(assert (=> d!2397416 d!2397410))

(declare-fun bs!1972191 () Bool)

(declare-fun d!2397558 () Bool)

(assert (= bs!1972191 (and d!2397558 b!8052047)))

(declare-fun lambda!473482 () Int)

(assert (=> bs!1972191 (= (= lt!2725732 lt!2726027) (= lambda!473482 lambda!473442))))

(declare-fun bs!1972192 () Bool)

(assert (= bs!1972192 (and d!2397558 b!8052080)))

(assert (=> bs!1972192 (= (= lt!2725732 (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473482 lambda!473445))))

(declare-fun bs!1972193 () Bool)

(assert (= bs!1972193 (and d!2397558 b!8051996)))

(assert (=> bs!1972193 (= (= lt!2725732 lt!2725971) (= lambda!473482 lambda!473438))))

(declare-fun bs!1972194 () Bool)

(assert (= bs!1972194 (and d!2397558 b!8051993)))

(assert (=> bs!1972194 (= lambda!473482 lambda!473436)))

(declare-fun bs!1972195 () Bool)

(assert (= bs!1972195 (and d!2397558 d!2397416)))

(assert (=> bs!1972195 (= (= lt!2725732 lt!2726022) (= lambda!473482 lambda!473443))))

(assert (=> bs!1972193 (= lambda!473482 lambda!473437)))

(assert (=> bs!1972192 (= (= lt!2725732 lt!2726059) (= lambda!473482 lambda!473446))))

(assert (=> bs!1972191 (= (= lt!2725732 acc!1298) (= lambda!473482 lambda!473441))))

(declare-fun bs!1972196 () Bool)

(assert (= bs!1972196 (and d!2397558 d!2397430)))

(assert (=> bs!1972196 (= (= lt!2725732 lt!2726027) (= lambda!473482 lambda!473452))))

(declare-fun bs!1972197 () Bool)

(assert (= bs!1972197 (and d!2397558 d!2397428)))

(assert (=> bs!1972197 (= (= lt!2725732 lt!2726054) (= lambda!473482 lambda!473447))))

(declare-fun bs!1972198 () Bool)

(assert (= bs!1972198 (and d!2397558 b!8052077)))

(assert (=> bs!1972198 (= (= lt!2725732 (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473482 lambda!473444))))

(declare-fun bs!1972199 () Bool)

(assert (= bs!1972199 (and d!2397558 b!8052044)))

(assert (=> bs!1972199 (= (= lt!2725732 acc!1298) (= lambda!473482 lambda!473440))))

(declare-fun bs!1972200 () Bool)

(assert (= bs!1972200 (and d!2397558 d!2397372)))

(assert (=> bs!1972200 (= (= lt!2725732 lt!2725966) (= lambda!473482 lambda!473439))))

(assert (=> d!2397558 true))

(assert (=> d!2397558 (forall!18498 (toList!11914 lt!2725732) lambda!473482)))

(declare-fun lt!2726183 () Unit!171627)

(declare-fun choose!60508 (ListMap!7279) Unit!171627)

(assert (=> d!2397558 (= lt!2726183 (choose!60508 lt!2725732))))

(assert (=> d!2397558 (= (lemmaContainsAllItsOwnKeys!1081 lt!2725732) lt!2726183)))

(declare-fun bs!1972201 () Bool)

(assert (= bs!1972201 d!2397558))

(declare-fun m!8403730 () Bool)

(assert (=> bs!1972201 m!8403730))

(declare-fun m!8403732 () Bool)

(assert (=> bs!1972201 m!8403732))

(assert (=> bm!747051 d!2397558))

(assert (=> d!2397400 d!2397398))

(declare-fun d!2397562 () Bool)

(assert (=> d!2397562 (not (contains!21192 (t!391432 l!14636) (tuple2!70877 key!6222 value!3131)))))

(assert (=> d!2397562 true))

(declare-fun _$40!410 () Unit!171627)

(assert (=> d!2397562 (= (choose!60498 (t!391432 l!14636) key!6222 value!3131) _$40!410)))

(declare-fun bs!1972202 () Bool)

(assert (= bs!1972202 d!2397562))

(assert (=> bs!1972202 m!8402952))

(assert (=> d!2397400 d!2397562))

(assert (=> d!2397400 d!2397404))

(declare-fun d!2397564 () Bool)

(assert (=> d!2397564 (= (invariantList!1929 (toList!11914 acc!1298)) (noDuplicatedKeys!512 (toList!11914 acc!1298)))))

(declare-fun bs!1972203 () Bool)

(assert (= bs!1972203 d!2397564))

(declare-fun m!8403734 () Bool)

(assert (=> bs!1972203 m!8403734))

(assert (=> d!2397412 d!2397564))

(declare-fun d!2397566 () Bool)

(declare-fun res!3184092 () Bool)

(declare-fun e!4744794 () Bool)

(assert (=> d!2397566 (=> res!3184092 e!4744794)))

(assert (=> d!2397566 (= res!3184092 (and ((_ is Cons!75534) (toList!11914 acc!1298)) (= (_1!38741 (h!81982 (toList!11914 acc!1298))) key!6222)))))

(assert (=> d!2397566 (= (containsKey!4843 (toList!11914 acc!1298) key!6222) e!4744794)))

(declare-fun b!8052282 () Bool)

(declare-fun e!4744795 () Bool)

(assert (=> b!8052282 (= e!4744794 e!4744795)))

(declare-fun res!3184093 () Bool)

(assert (=> b!8052282 (=> (not res!3184093) (not e!4744795))))

(assert (=> b!8052282 (= res!3184093 ((_ is Cons!75534) (toList!11914 acc!1298)))))

(declare-fun b!8052283 () Bool)

(assert (=> b!8052283 (= e!4744795 (containsKey!4843 (t!391432 (toList!11914 acc!1298)) key!6222))))

(assert (= (and d!2397566 (not res!3184092)) b!8052282))

(assert (= (and b!8052282 res!3184093) b!8052283))

(declare-fun m!8403736 () Bool)

(assert (=> b!8052283 m!8403736))

(assert (=> b!8051883 d!2397566))

(declare-fun d!2397568 () Bool)

(assert (=> d!2397568 (containsKey!4843 (toList!11914 acc!1298) key!6222)))

(declare-fun lt!2726184 () Unit!171627)

(assert (=> d!2397568 (= lt!2726184 (choose!60507 (toList!11914 acc!1298) key!6222))))

(assert (=> d!2397568 (invariantList!1929 (toList!11914 acc!1298))))

(assert (=> d!2397568 (= (lemmaInGetKeysListThenContainsKey!1237 (toList!11914 acc!1298) key!6222) lt!2726184)))

(declare-fun bs!1972204 () Bool)

(assert (= bs!1972204 d!2397568))

(assert (=> bs!1972204 m!8402982))

(declare-fun m!8403738 () Bool)

(assert (=> bs!1972204 m!8403738))

(assert (=> bs!1972204 m!8403276))

(assert (=> b!8051883 d!2397568))

(declare-fun d!2397570 () Bool)

(declare-fun res!3184094 () Bool)

(declare-fun e!4744796 () Bool)

(assert (=> d!2397570 (=> res!3184094 e!4744796)))

(assert (=> d!2397570 (= res!3184094 ((_ is Nil!75534) (ite c!1475968 (toList!11914 lt!2725732) (t!391432 l!14636))))))

(assert (=> d!2397570 (= (forall!18498 (ite c!1475968 (toList!11914 lt!2725732) (t!391432 l!14636)) (ite c!1475968 lambda!473436 lambda!473438)) e!4744796)))

(declare-fun b!8052284 () Bool)

(declare-fun e!4744797 () Bool)

(assert (=> b!8052284 (= e!4744796 e!4744797)))

(declare-fun res!3184095 () Bool)

(assert (=> b!8052284 (=> (not res!3184095) (not e!4744797))))

(assert (=> b!8052284 (= res!3184095 (dynLambda!30269 (ite c!1475968 lambda!473436 lambda!473438) (h!81982 (ite c!1475968 (toList!11914 lt!2725732) (t!391432 l!14636)))))))

(declare-fun b!8052285 () Bool)

(assert (=> b!8052285 (= e!4744797 (forall!18498 (t!391432 (ite c!1475968 (toList!11914 lt!2725732) (t!391432 l!14636))) (ite c!1475968 lambda!473436 lambda!473438)))))

(assert (= (and d!2397570 (not res!3184094)) b!8052284))

(assert (= (and b!8052284 res!3184095) b!8052285))

(declare-fun b_lambda!290397 () Bool)

(assert (=> (not b_lambda!290397) (not b!8052284)))

(declare-fun m!8403740 () Bool)

(assert (=> b!8052284 m!8403740))

(declare-fun m!8403742 () Bool)

(assert (=> b!8052285 m!8403742))

(assert (=> bm!747049 d!2397570))

(declare-fun bs!1972205 () Bool)

(declare-fun b!8052290 () Bool)

(assert (= bs!1972205 (and b!8052290 b!8052112)))

(declare-fun lambda!473483 () Int)

(assert (=> bs!1972205 (= (= (t!391432 (toList!11914 lt!2725734)) (toList!11914 lt!2725732)) (= lambda!473483 lambda!473457))))

(declare-fun bs!1972206 () Bool)

(assert (= bs!1972206 (and b!8052290 b!8052211)))

(assert (=> bs!1972206 (= (= (t!391432 (toList!11914 lt!2725734)) (t!391432 (toList!11914 lt!2725732))) (= lambda!473483 lambda!473467))))

(declare-fun bs!1972207 () Bool)

(assert (= bs!1972207 (and b!8052290 b!8052212)))

(assert (=> bs!1972207 (= (= (t!391432 (toList!11914 lt!2725734)) (Cons!75534 (h!81982 (toList!11914 lt!2725732)) (t!391432 (toList!11914 lt!2725732)))) (= lambda!473483 lambda!473468))))

(declare-fun bs!1972208 () Bool)

(assert (= bs!1972208 (and b!8052290 b!8052209)))

(assert (=> bs!1972208 (= (= (t!391432 (toList!11914 lt!2725734)) (toList!11914 lt!2725732)) (= lambda!473483 lambda!473469))))

(assert (=> b!8052290 true))

(declare-fun bs!1972209 () Bool)

(declare-fun b!8052291 () Bool)

(assert (= bs!1972209 (and b!8052291 b!8052112)))

(declare-fun lambda!473484 () Int)

(assert (=> bs!1972209 (= (= (Cons!75534 (h!81982 (toList!11914 lt!2725734)) (t!391432 (toList!11914 lt!2725734))) (toList!11914 lt!2725732)) (= lambda!473484 lambda!473457))))

(declare-fun bs!1972210 () Bool)

(assert (= bs!1972210 (and b!8052291 b!8052211)))

(assert (=> bs!1972210 (= (= (Cons!75534 (h!81982 (toList!11914 lt!2725734)) (t!391432 (toList!11914 lt!2725734))) (t!391432 (toList!11914 lt!2725732))) (= lambda!473484 lambda!473467))))

(declare-fun bs!1972211 () Bool)

(assert (= bs!1972211 (and b!8052291 b!8052212)))

(assert (=> bs!1972211 (= (= (Cons!75534 (h!81982 (toList!11914 lt!2725734)) (t!391432 (toList!11914 lt!2725734))) (Cons!75534 (h!81982 (toList!11914 lt!2725732)) (t!391432 (toList!11914 lt!2725732)))) (= lambda!473484 lambda!473468))))

(declare-fun bs!1972212 () Bool)

(assert (= bs!1972212 (and b!8052291 b!8052209)))

(assert (=> bs!1972212 (= (= (Cons!75534 (h!81982 (toList!11914 lt!2725734)) (t!391432 (toList!11914 lt!2725734))) (toList!11914 lt!2725732)) (= lambda!473484 lambda!473469))))

(declare-fun bs!1972213 () Bool)

(assert (= bs!1972213 (and b!8052291 b!8052290)))

(assert (=> bs!1972213 (= (= (Cons!75534 (h!81982 (toList!11914 lt!2725734)) (t!391432 (toList!11914 lt!2725734))) (t!391432 (toList!11914 lt!2725734))) (= lambda!473484 lambda!473483))))

(assert (=> b!8052291 true))

(declare-fun bs!1972214 () Bool)

(declare-fun b!8052288 () Bool)

(assert (= bs!1972214 (and b!8052288 b!8052112)))

(declare-fun lambda!473485 () Int)

(assert (=> bs!1972214 (= (= (toList!11914 lt!2725734) (toList!11914 lt!2725732)) (= lambda!473485 lambda!473457))))

(declare-fun bs!1972215 () Bool)

(assert (= bs!1972215 (and b!8052288 b!8052211)))

(assert (=> bs!1972215 (= (= (toList!11914 lt!2725734) (t!391432 (toList!11914 lt!2725732))) (= lambda!473485 lambda!473467))))

(declare-fun bs!1972216 () Bool)

(assert (= bs!1972216 (and b!8052288 b!8052212)))

(assert (=> bs!1972216 (= (= (toList!11914 lt!2725734) (Cons!75534 (h!81982 (toList!11914 lt!2725732)) (t!391432 (toList!11914 lt!2725732)))) (= lambda!473485 lambda!473468))))

(declare-fun bs!1972217 () Bool)

(assert (= bs!1972217 (and b!8052288 b!8052209)))

(assert (=> bs!1972217 (= (= (toList!11914 lt!2725734) (toList!11914 lt!2725732)) (= lambda!473485 lambda!473469))))

(declare-fun bs!1972218 () Bool)

(assert (= bs!1972218 (and b!8052288 b!8052290)))

(assert (=> bs!1972218 (= (= (toList!11914 lt!2725734) (t!391432 (toList!11914 lt!2725734))) (= lambda!473485 lambda!473483))))

(declare-fun bs!1972219 () Bool)

(assert (= bs!1972219 (and b!8052288 b!8052291)))

(assert (=> bs!1972219 (= (= (toList!11914 lt!2725734) (Cons!75534 (h!81982 (toList!11914 lt!2725734)) (t!391432 (toList!11914 lt!2725734)))) (= lambda!473485 lambda!473484))))

(assert (=> b!8052288 true))

(declare-fun bs!1972220 () Bool)

(declare-fun b!8052287 () Bool)

(assert (= bs!1972220 (and b!8052287 b!8052113)))

(declare-fun lambda!473486 () Int)

(assert (=> bs!1972220 (= lambda!473486 lambda!473458)))

(declare-fun bs!1972221 () Bool)

(assert (= bs!1972221 (and b!8052287 b!8052208)))

(assert (=> bs!1972221 (= lambda!473486 lambda!473470)))

(declare-fun b!8052286 () Bool)

(declare-fun res!3184098 () Bool)

(declare-fun e!4744800 () Bool)

(assert (=> b!8052286 (=> (not res!3184098) (not e!4744800))))

(declare-fun lt!2726185 () List!75662)

(assert (=> b!8052286 (= res!3184098 (= (length!826 lt!2726185) (length!827 (toList!11914 lt!2725734))))))

(assert (=> b!8052287 (= e!4744800 (= (content!16103 lt!2726185) (content!16103 (map!18796 (toList!11914 lt!2725734) lambda!473486))))))

(declare-fun res!3184097 () Bool)

(assert (=> b!8052288 (=> (not res!3184097) (not e!4744800))))

(assert (=> b!8052288 (= res!3184097 (forall!18499 lt!2726185 lambda!473485))))

(declare-fun d!2397572 () Bool)

(assert (=> d!2397572 e!4744800))

(declare-fun res!3184096 () Bool)

(assert (=> d!2397572 (=> (not res!3184096) (not e!4744800))))

(assert (=> d!2397572 (= res!3184096 (noDuplicate!3167 lt!2726185))))

(declare-fun e!4744801 () List!75662)

(assert (=> d!2397572 (= lt!2726185 e!4744801)))

(declare-fun c!1476025 () Bool)

(assert (=> d!2397572 (= c!1476025 ((_ is Cons!75534) (toList!11914 lt!2725734)))))

(assert (=> d!2397572 (invariantList!1929 (toList!11914 lt!2725734))))

(assert (=> d!2397572 (= (getKeysList!1237 (toList!11914 lt!2725734)) lt!2726185)))

(declare-fun b!8052289 () Bool)

(assert (=> b!8052289 false))

(declare-fun e!4744798 () Unit!171627)

(declare-fun Unit!171727 () Unit!171627)

(assert (=> b!8052289 (= e!4744798 Unit!171727)))

(assert (=> b!8052290 false))

(declare-fun lt!2726191 () Unit!171627)

(assert (=> b!8052290 (= lt!2726191 (forallContained!4653 (getKeysList!1237 (t!391432 (toList!11914 lt!2725734))) lambda!473483 (_1!38741 (h!81982 (toList!11914 lt!2725734)))))))

(declare-fun e!4744799 () Unit!171627)

(declare-fun Unit!171728 () Unit!171627)

(assert (=> b!8052290 (= e!4744799 Unit!171728)))

(assert (=> b!8052291 (= e!4744801 (Cons!75536 (_1!38741 (h!81982 (toList!11914 lt!2725734))) (getKeysList!1237 (t!391432 (toList!11914 lt!2725734)))))))

(declare-fun c!1476023 () Bool)

(assert (=> b!8052291 (= c!1476023 (containsKey!4843 (t!391432 (toList!11914 lt!2725734)) (_1!38741 (h!81982 (toList!11914 lt!2725734)))))))

(declare-fun lt!2726188 () Unit!171627)

(assert (=> b!8052291 (= lt!2726188 e!4744798)))

(declare-fun c!1476024 () Bool)

(assert (=> b!8052291 (= c!1476024 (contains!21194 (getKeysList!1237 (t!391432 (toList!11914 lt!2725734))) (_1!38741 (h!81982 (toList!11914 lt!2725734)))))))

(declare-fun lt!2726189 () Unit!171627)

(assert (=> b!8052291 (= lt!2726189 e!4744799)))

(declare-fun lt!2726187 () List!75662)

(assert (=> b!8052291 (= lt!2726187 (getKeysList!1237 (t!391432 (toList!11914 lt!2725734))))))

(declare-fun lt!2726190 () Unit!171627)

(assert (=> b!8052291 (= lt!2726190 (lemmaForallContainsAddHeadPreserves!397 (t!391432 (toList!11914 lt!2725734)) lt!2726187 (h!81982 (toList!11914 lt!2725734))))))

(assert (=> b!8052291 (forall!18499 lt!2726187 lambda!473484)))

(declare-fun lt!2726186 () Unit!171627)

(assert (=> b!8052291 (= lt!2726186 lt!2726190)))

(declare-fun b!8052292 () Bool)

(declare-fun Unit!171729 () Unit!171627)

(assert (=> b!8052292 (= e!4744798 Unit!171729)))

(declare-fun b!8052293 () Bool)

(declare-fun Unit!171730 () Unit!171627)

(assert (=> b!8052293 (= e!4744799 Unit!171730)))

(declare-fun b!8052294 () Bool)

(assert (=> b!8052294 (= e!4744801 Nil!75536)))

(assert (= (and d!2397572 c!1476025) b!8052291))

(assert (= (and d!2397572 (not c!1476025)) b!8052294))

(assert (= (and b!8052291 c!1476023) b!8052289))

(assert (= (and b!8052291 (not c!1476023)) b!8052292))

(assert (= (and b!8052291 c!1476024) b!8052290))

(assert (= (and b!8052291 (not c!1476024)) b!8052293))

(assert (= (and d!2397572 res!3184096) b!8052286))

(assert (= (and b!8052286 res!3184098) b!8052288))

(assert (= (and b!8052288 res!3184097) b!8052287))

(declare-fun m!8403744 () Bool)

(assert (=> b!8052291 m!8403744))

(declare-fun m!8403746 () Bool)

(assert (=> b!8052291 m!8403746))

(declare-fun m!8403748 () Bool)

(assert (=> b!8052291 m!8403748))

(declare-fun m!8403750 () Bool)

(assert (=> b!8052291 m!8403750))

(assert (=> b!8052291 m!8403748))

(declare-fun m!8403752 () Bool)

(assert (=> b!8052291 m!8403752))

(declare-fun m!8403754 () Bool)

(assert (=> d!2397572 m!8403754))

(assert (=> d!2397572 m!8403584))

(declare-fun m!8403756 () Bool)

(assert (=> b!8052288 m!8403756))

(assert (=> b!8052290 m!8403748))

(assert (=> b!8052290 m!8403748))

(declare-fun m!8403758 () Bool)

(assert (=> b!8052290 m!8403758))

(declare-fun m!8403760 () Bool)

(assert (=> b!8052286 m!8403760))

(declare-fun m!8403762 () Bool)

(assert (=> b!8052286 m!8403762))

(declare-fun m!8403764 () Bool)

(assert (=> b!8052287 m!8403764))

(declare-fun m!8403766 () Bool)

(assert (=> b!8052287 m!8403766))

(assert (=> b!8052287 m!8403766))

(declare-fun m!8403768 () Bool)

(assert (=> b!8052287 m!8403768))

(assert (=> b!8052027 d!2397572))

(assert (=> b!8051841 d!2397404))

(declare-fun bs!1972222 () Bool)

(declare-fun b!8052299 () Bool)

(assert (= bs!1972222 (and b!8052299 b!8052112)))

(declare-fun lambda!473487 () Int)

(assert (=> bs!1972222 (= (= (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (toList!11914 lt!2725732)) (= lambda!473487 lambda!473457))))

(declare-fun bs!1972223 () Bool)

(assert (= bs!1972223 (and b!8052299 b!8052211)))

(assert (=> bs!1972223 (= (= (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (t!391432 (toList!11914 lt!2725732))) (= lambda!473487 lambda!473467))))

(declare-fun bs!1972224 () Bool)

(assert (= bs!1972224 (and b!8052299 b!8052209)))

(assert (=> bs!1972224 (= (= (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (toList!11914 lt!2725732)) (= lambda!473487 lambda!473469))))

(declare-fun bs!1972225 () Bool)

(assert (= bs!1972225 (and b!8052299 b!8052290)))

(assert (=> bs!1972225 (= (= (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (t!391432 (toList!11914 lt!2725734))) (= lambda!473487 lambda!473483))))

(declare-fun bs!1972226 () Bool)

(assert (= bs!1972226 (and b!8052299 b!8052291)))

(assert (=> bs!1972226 (= (= (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (Cons!75534 (h!81982 (toList!11914 lt!2725734)) (t!391432 (toList!11914 lt!2725734)))) (= lambda!473487 lambda!473484))))

(declare-fun bs!1972227 () Bool)

(assert (= bs!1972227 (and b!8052299 b!8052212)))

(assert (=> bs!1972227 (= (= (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (Cons!75534 (h!81982 (toList!11914 lt!2725732)) (t!391432 (toList!11914 lt!2725732)))) (= lambda!473487 lambda!473468))))

(declare-fun bs!1972228 () Bool)

(assert (= bs!1972228 (and b!8052299 b!8052288)))

(assert (=> bs!1972228 (= (= (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (toList!11914 lt!2725734)) (= lambda!473487 lambda!473485))))

(assert (=> b!8052299 true))

(declare-fun bs!1972229 () Bool)

(declare-fun b!8052300 () Bool)

(assert (= bs!1972229 (and b!8052300 b!8052112)))

(declare-fun lambda!473488 () Int)

(assert (=> bs!1972229 (= (= (Cons!75534 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) (toList!11914 lt!2725732)) (= lambda!473488 lambda!473457))))

(declare-fun bs!1972230 () Bool)

(assert (= bs!1972230 (and b!8052300 b!8052211)))

(assert (=> bs!1972230 (= (= (Cons!75534 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) (t!391432 (toList!11914 lt!2725732))) (= lambda!473488 lambda!473467))))

(declare-fun bs!1972231 () Bool)

(assert (= bs!1972231 (and b!8052300 b!8052209)))

(assert (=> bs!1972231 (= (= (Cons!75534 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) (toList!11914 lt!2725732)) (= lambda!473488 lambda!473469))))

(declare-fun bs!1972232 () Bool)

(assert (= bs!1972232 (and b!8052300 b!8052290)))

(assert (=> bs!1972232 (= (= (Cons!75534 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) (t!391432 (toList!11914 lt!2725734))) (= lambda!473488 lambda!473483))))

(declare-fun bs!1972233 () Bool)

(assert (= bs!1972233 (and b!8052300 b!8052299)))

(assert (=> bs!1972233 (= (= (Cons!75534 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) (= lambda!473488 lambda!473487))))

(declare-fun bs!1972234 () Bool)

(assert (= bs!1972234 (and b!8052300 b!8052291)))

(assert (=> bs!1972234 (= (= (Cons!75534 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) (Cons!75534 (h!81982 (toList!11914 lt!2725734)) (t!391432 (toList!11914 lt!2725734)))) (= lambda!473488 lambda!473484))))

(declare-fun bs!1972235 () Bool)

(assert (= bs!1972235 (and b!8052300 b!8052212)))

(assert (=> bs!1972235 (= (= (Cons!75534 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) (Cons!75534 (h!81982 (toList!11914 lt!2725732)) (t!391432 (toList!11914 lt!2725732)))) (= lambda!473488 lambda!473468))))

(declare-fun bs!1972236 () Bool)

(assert (= bs!1972236 (and b!8052300 b!8052288)))

(assert (=> bs!1972236 (= (= (Cons!75534 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) (toList!11914 lt!2725734)) (= lambda!473488 lambda!473485))))

(assert (=> b!8052300 true))

(declare-fun bs!1972237 () Bool)

(declare-fun b!8052297 () Bool)

(assert (= bs!1972237 (and b!8052297 b!8052112)))

(declare-fun lambda!473489 () Int)

(assert (=> bs!1972237 (= (= (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) (toList!11914 lt!2725732)) (= lambda!473489 lambda!473457))))

(declare-fun bs!1972238 () Bool)

(assert (= bs!1972238 (and b!8052297 b!8052211)))

(assert (=> bs!1972238 (= (= (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) (t!391432 (toList!11914 lt!2725732))) (= lambda!473489 lambda!473467))))

(declare-fun bs!1972239 () Bool)

(assert (= bs!1972239 (and b!8052297 b!8052209)))

(assert (=> bs!1972239 (= (= (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) (toList!11914 lt!2725732)) (= lambda!473489 lambda!473469))))

(declare-fun bs!1972240 () Bool)

(assert (= bs!1972240 (and b!8052297 b!8052290)))

(assert (=> bs!1972240 (= (= (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) (t!391432 (toList!11914 lt!2725734))) (= lambda!473489 lambda!473483))))

(declare-fun bs!1972241 () Bool)

(assert (= bs!1972241 (and b!8052297 b!8052299)))

(assert (=> bs!1972241 (= (= (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) (= lambda!473489 lambda!473487))))

(declare-fun bs!1972242 () Bool)

(assert (= bs!1972242 (and b!8052297 b!8052212)))

(assert (=> bs!1972242 (= (= (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) (Cons!75534 (h!81982 (toList!11914 lt!2725732)) (t!391432 (toList!11914 lt!2725732)))) (= lambda!473489 lambda!473468))))

(declare-fun bs!1972243 () Bool)

(assert (= bs!1972243 (and b!8052297 b!8052288)))

(assert (=> bs!1972243 (= (= (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) (toList!11914 lt!2725734)) (= lambda!473489 lambda!473485))))

(declare-fun bs!1972244 () Bool)

(assert (= bs!1972244 (and b!8052297 b!8052300)))

(assert (=> bs!1972244 (= (= (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) (Cons!75534 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))))) (= lambda!473489 lambda!473488))))

(declare-fun bs!1972245 () Bool)

(assert (= bs!1972245 (and b!8052297 b!8052291)))

(assert (=> bs!1972245 (= (= (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) (Cons!75534 (h!81982 (toList!11914 lt!2725734)) (t!391432 (toList!11914 lt!2725734)))) (= lambda!473489 lambda!473484))))

(assert (=> b!8052297 true))

(declare-fun bs!1972246 () Bool)

(declare-fun b!8052296 () Bool)

(assert (= bs!1972246 (and b!8052296 b!8052113)))

(declare-fun lambda!473490 () Int)

(assert (=> bs!1972246 (= lambda!473490 lambda!473458)))

(declare-fun bs!1972247 () Bool)

(assert (= bs!1972247 (and b!8052296 b!8052208)))

(assert (=> bs!1972247 (= lambda!473490 lambda!473470)))

(declare-fun bs!1972248 () Bool)

(assert (= bs!1972248 (and b!8052296 b!8052287)))

(assert (=> bs!1972248 (= lambda!473490 lambda!473486)))

(declare-fun b!8052295 () Bool)

(declare-fun res!3184101 () Bool)

(declare-fun e!4744804 () Bool)

(assert (=> b!8052295 (=> (not res!3184101) (not e!4744804))))

(declare-fun lt!2726192 () List!75662)

(assert (=> b!8052295 (= res!3184101 (= (length!826 lt!2726192) (length!827 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))))))

(assert (=> b!8052296 (= e!4744804 (= (content!16103 lt!2726192) (content!16103 (map!18796 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) lambda!473490))))))

(declare-fun res!3184100 () Bool)

(assert (=> b!8052297 (=> (not res!3184100) (not e!4744804))))

(assert (=> b!8052297 (= res!3184100 (forall!18499 lt!2726192 lambda!473489))))

(declare-fun d!2397574 () Bool)

(assert (=> d!2397574 e!4744804))

(declare-fun res!3184099 () Bool)

(assert (=> d!2397574 (=> (not res!3184099) (not e!4744804))))

(assert (=> d!2397574 (= res!3184099 (noDuplicate!3167 lt!2726192))))

(declare-fun e!4744805 () List!75662)

(assert (=> d!2397574 (= lt!2726192 e!4744805)))

(declare-fun c!1476028 () Bool)

(assert (=> d!2397574 (= c!1476028 ((_ is Cons!75534) (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))))))

(assert (=> d!2397574 (invariantList!1929 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))))

(assert (=> d!2397574 (= (getKeysList!1237 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) lt!2726192)))

(declare-fun b!8052298 () Bool)

(assert (=> b!8052298 false))

(declare-fun e!4744802 () Unit!171627)

(declare-fun Unit!171731 () Unit!171627)

(assert (=> b!8052298 (= e!4744802 Unit!171731)))

(assert (=> b!8052299 false))

(declare-fun lt!2726198 () Unit!171627)

(assert (=> b!8052299 (= lt!2726198 (forallContained!4653 (getKeysList!1237 (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) lambda!473487 (_1!38741 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))))))))

(declare-fun e!4744803 () Unit!171627)

(declare-fun Unit!171732 () Unit!171627)

(assert (=> b!8052299 (= e!4744803 Unit!171732)))

(assert (=> b!8052300 (= e!4744805 (Cons!75536 (_1!38741 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) (getKeysList!1237 (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))))))))

(declare-fun c!1476026 () Bool)

(assert (=> b!8052300 (= c!1476026 (containsKey!4843 (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (_1!38741 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))))))))

(declare-fun lt!2726195 () Unit!171627)

(assert (=> b!8052300 (= lt!2726195 e!4744802)))

(declare-fun c!1476027 () Bool)

(assert (=> b!8052300 (= c!1476027 (contains!21194 (getKeysList!1237 (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) (_1!38741 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))))))))

(declare-fun lt!2726196 () Unit!171627)

(assert (=> b!8052300 (= lt!2726196 e!4744803)))

(declare-fun lt!2726194 () List!75662)

(assert (=> b!8052300 (= lt!2726194 (getKeysList!1237 (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))))))

(declare-fun lt!2726197 () Unit!171627)

(assert (=> b!8052300 (= lt!2726197 (lemmaForallContainsAddHeadPreserves!397 (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) lt!2726194 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))))))

(assert (=> b!8052300 (forall!18499 lt!2726194 lambda!473488)))

(declare-fun lt!2726193 () Unit!171627)

(assert (=> b!8052300 (= lt!2726193 lt!2726197)))

(declare-fun b!8052301 () Bool)

(declare-fun Unit!171733 () Unit!171627)

(assert (=> b!8052301 (= e!4744802 Unit!171733)))

(declare-fun b!8052302 () Bool)

(declare-fun Unit!171734 () Unit!171627)

(assert (=> b!8052302 (= e!4744803 Unit!171734)))

(declare-fun b!8052303 () Bool)

(assert (=> b!8052303 (= e!4744805 Nil!75536)))

(assert (= (and d!2397574 c!1476028) b!8052300))

(assert (= (and d!2397574 (not c!1476028)) b!8052303))

(assert (= (and b!8052300 c!1476026) b!8052298))

(assert (= (and b!8052300 (not c!1476026)) b!8052301))

(assert (= (and b!8052300 c!1476027) b!8052299))

(assert (= (and b!8052300 (not c!1476027)) b!8052302))

(assert (= (and d!2397574 res!3184099) b!8052295))

(assert (= (and b!8052295 res!3184101) b!8052297))

(assert (= (and b!8052297 res!3184100) b!8052296))

(declare-fun m!8403770 () Bool)

(assert (=> b!8052300 m!8403770))

(declare-fun m!8403772 () Bool)

(assert (=> b!8052300 m!8403772))

(declare-fun m!8403774 () Bool)

(assert (=> b!8052300 m!8403774))

(declare-fun m!8403776 () Bool)

(assert (=> b!8052300 m!8403776))

(assert (=> b!8052300 m!8403774))

(declare-fun m!8403778 () Bool)

(assert (=> b!8052300 m!8403778))

(declare-fun m!8403780 () Bool)

(assert (=> d!2397574 m!8403780))

(assert (=> d!2397574 m!8403612))

(declare-fun m!8403782 () Bool)

(assert (=> b!8052297 m!8403782))

(assert (=> b!8052299 m!8403774))

(assert (=> b!8052299 m!8403774))

(declare-fun m!8403784 () Bool)

(assert (=> b!8052299 m!8403784))

(declare-fun m!8403786 () Bool)

(assert (=> b!8052295 m!8403786))

(declare-fun m!8403788 () Bool)

(assert (=> b!8052295 m!8403788))

(declare-fun m!8403790 () Bool)

(assert (=> b!8052296 m!8403790))

(declare-fun m!8403792 () Bool)

(assert (=> b!8052296 m!8403792))

(assert (=> b!8052296 m!8403792))

(declare-fun m!8403794 () Bool)

(assert (=> b!8052296 m!8403794))

(assert (=> b!8052040 d!2397574))

(declare-fun lt!2726207 () Bool)

(declare-fun d!2397576 () Bool)

(assert (=> d!2397576 (= lt!2726207 (select (content!16103 (keys!30826 (addToMapMapFromBucket!1981 l!14636 acc!1298))) key!6222))))

(declare-fun e!4744813 () Bool)

(assert (=> d!2397576 (= lt!2726207 e!4744813)))

(declare-fun res!3184103 () Bool)

(assert (=> d!2397576 (=> (not res!3184103) (not e!4744813))))

(assert (=> d!2397576 (= res!3184103 ((_ is Cons!75536) (keys!30826 (addToMapMapFromBucket!1981 l!14636 acc!1298))))))

(assert (=> d!2397576 (= (contains!21194 (keys!30826 (addToMapMapFromBucket!1981 l!14636 acc!1298)) key!6222) lt!2726207)))

(declare-fun b!8052316 () Bool)

(declare-fun e!4744812 () Bool)

(assert (=> b!8052316 (= e!4744813 e!4744812)))

(declare-fun res!3184102 () Bool)

(assert (=> b!8052316 (=> res!3184102 e!4744812)))

(assert (=> b!8052316 (= res!3184102 (= (h!81984 (keys!30826 (addToMapMapFromBucket!1981 l!14636 acc!1298))) key!6222))))

(declare-fun b!8052317 () Bool)

(assert (=> b!8052317 (= e!4744812 (contains!21194 (t!391434 (keys!30826 (addToMapMapFromBucket!1981 l!14636 acc!1298))) key!6222))))

(assert (= (and d!2397576 res!3184103) b!8052316))

(assert (= (and b!8052316 (not res!3184102)) b!8052317))

(assert (=> d!2397576 m!8403278))

(declare-fun m!8403796 () Bool)

(assert (=> d!2397576 m!8403796))

(declare-fun m!8403798 () Bool)

(assert (=> d!2397576 m!8403798))

(declare-fun m!8403800 () Bool)

(assert (=> b!8052317 m!8403800))

(assert (=> b!8052038 d!2397576))

(declare-fun bs!1972249 () Bool)

(declare-fun b!8052319 () Bool)

(assert (= bs!1972249 (and b!8052319 b!8052112)))

(declare-fun lambda!473493 () Int)

(assert (=> bs!1972249 (= (= (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) (toList!11914 lt!2725732)) (= lambda!473493 lambda!473457))))

(declare-fun bs!1972250 () Bool)

(assert (= bs!1972250 (and b!8052319 b!8052209)))

(assert (=> bs!1972250 (= (= (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) (toList!11914 lt!2725732)) (= lambda!473493 lambda!473469))))

(declare-fun bs!1972251 () Bool)

(assert (= bs!1972251 (and b!8052319 b!8052290)))

(assert (=> bs!1972251 (= (= (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) (t!391432 (toList!11914 lt!2725734))) (= lambda!473493 lambda!473483))))

(declare-fun bs!1972252 () Bool)

(assert (= bs!1972252 (and b!8052319 b!8052299)))

(assert (=> bs!1972252 (= (= (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) (= lambda!473493 lambda!473487))))

(declare-fun bs!1972253 () Bool)

(assert (= bs!1972253 (and b!8052319 b!8052297)))

(assert (=> bs!1972253 (= lambda!473493 lambda!473489)))

(declare-fun bs!1972254 () Bool)

(assert (= bs!1972254 (and b!8052319 b!8052211)))

(assert (=> bs!1972254 (= (= (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) (t!391432 (toList!11914 lt!2725732))) (= lambda!473493 lambda!473467))))

(declare-fun bs!1972255 () Bool)

(assert (= bs!1972255 (and b!8052319 b!8052212)))

(assert (=> bs!1972255 (= (= (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) (Cons!75534 (h!81982 (toList!11914 lt!2725732)) (t!391432 (toList!11914 lt!2725732)))) (= lambda!473493 lambda!473468))))

(declare-fun bs!1972256 () Bool)

(assert (= bs!1972256 (and b!8052319 b!8052288)))

(assert (=> bs!1972256 (= (= (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) (toList!11914 lt!2725734)) (= lambda!473493 lambda!473485))))

(declare-fun bs!1972257 () Bool)

(assert (= bs!1972257 (and b!8052319 b!8052300)))

(assert (=> bs!1972257 (= (= (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) (Cons!75534 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))))) (= lambda!473493 lambda!473488))))

(declare-fun bs!1972258 () Bool)

(assert (= bs!1972258 (and b!8052319 b!8052291)))

(assert (=> bs!1972258 (= (= (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) (Cons!75534 (h!81982 (toList!11914 lt!2725734)) (t!391432 (toList!11914 lt!2725734)))) (= lambda!473493 lambda!473484))))

(assert (=> b!8052319 true))

(declare-fun bs!1972259 () Bool)

(declare-fun b!8052320 () Bool)

(assert (= bs!1972259 (and b!8052320 b!8052113)))

(declare-fun lambda!473496 () Int)

(assert (=> bs!1972259 (= lambda!473496 lambda!473458)))

(declare-fun bs!1972260 () Bool)

(assert (= bs!1972260 (and b!8052320 b!8052208)))

(assert (=> bs!1972260 (= lambda!473496 lambda!473470)))

(declare-fun bs!1972261 () Bool)

(assert (= bs!1972261 (and b!8052320 b!8052287)))

(assert (=> bs!1972261 (= lambda!473496 lambda!473486)))

(declare-fun bs!1972262 () Bool)

(assert (= bs!1972262 (and b!8052320 b!8052296)))

(assert (=> bs!1972262 (= lambda!473496 lambda!473490)))

(declare-fun d!2397578 () Bool)

(declare-fun e!4744814 () Bool)

(assert (=> d!2397578 e!4744814))

(declare-fun res!3184104 () Bool)

(assert (=> d!2397578 (=> (not res!3184104) (not e!4744814))))

(declare-fun lt!2726208 () List!75662)

(assert (=> d!2397578 (= res!3184104 (noDuplicate!3167 lt!2726208))))

(assert (=> d!2397578 (= lt!2726208 (getKeysList!1237 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))))))

(assert (=> d!2397578 (= (keys!30826 (addToMapMapFromBucket!1981 l!14636 acc!1298)) lt!2726208)))

(declare-fun b!8052318 () Bool)

(declare-fun res!3184105 () Bool)

(assert (=> b!8052318 (=> (not res!3184105) (not e!4744814))))

(assert (=> b!8052318 (= res!3184105 (= (length!826 lt!2726208) (length!827 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))))))

(declare-fun res!3184106 () Bool)

(assert (=> b!8052319 (=> (not res!3184106) (not e!4744814))))

(assert (=> b!8052319 (= res!3184106 (forall!18499 lt!2726208 lambda!473493))))

(assert (=> b!8052320 (= e!4744814 (= (content!16103 lt!2726208) (content!16103 (map!18796 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)) lambda!473496))))))

(assert (= (and d!2397578 res!3184104) b!8052318))

(assert (= (and b!8052318 res!3184105) b!8052319))

(assert (= (and b!8052319 res!3184106) b!8052320))

(declare-fun m!8403802 () Bool)

(assert (=> d!2397578 m!8403802))

(assert (=> d!2397578 m!8403296))

(declare-fun m!8403804 () Bool)

(assert (=> b!8052318 m!8403804))

(assert (=> b!8052318 m!8403788))

(declare-fun m!8403806 () Bool)

(assert (=> b!8052319 m!8403806))

(declare-fun m!8403808 () Bool)

(assert (=> b!8052320 m!8403808))

(declare-fun m!8403810 () Bool)

(assert (=> b!8052320 m!8403810))

(assert (=> b!8052320 m!8403810))

(declare-fun m!8403812 () Bool)

(assert (=> b!8052320 m!8403812))

(assert (=> b!8052038 d!2397578))

(declare-fun d!2397580 () Bool)

(declare-fun res!3184113 () Bool)

(declare-fun e!4744817 () Bool)

(assert (=> d!2397580 (=> res!3184113 e!4744817)))

(assert (=> d!2397580 (= res!3184113 (and ((_ is Cons!75534) (t!391432 (t!391432 l!14636))) (= (_1!38741 (h!81982 (t!391432 (t!391432 l!14636)))) (_1!38741 (h!81982 (t!391432 l!14636))))))))

(assert (=> d!2397580 (= (containsKey!4841 (t!391432 (t!391432 l!14636)) (_1!38741 (h!81982 (t!391432 l!14636)))) e!4744817)))

(declare-fun b!8052325 () Bool)

(declare-fun e!4744818 () Bool)

(assert (=> b!8052325 (= e!4744817 e!4744818)))

(declare-fun res!3184114 () Bool)

(assert (=> b!8052325 (=> (not res!3184114) (not e!4744818))))

(assert (=> b!8052325 (= res!3184114 ((_ is Cons!75534) (t!391432 (t!391432 l!14636))))))

(declare-fun b!8052326 () Bool)

(assert (=> b!8052326 (= e!4744818 (containsKey!4841 (t!391432 (t!391432 (t!391432 l!14636))) (_1!38741 (h!81982 (t!391432 l!14636)))))))

(assert (= (and d!2397580 (not res!3184113)) b!8052325))

(assert (= (and b!8052325 res!3184114) b!8052326))

(declare-fun m!8403814 () Bool)

(assert (=> b!8052326 m!8403814))

(assert (=> b!8051903 d!2397580))

(declare-fun d!2397582 () Bool)

(declare-fun res!3184115 () Bool)

(declare-fun e!4744819 () Bool)

(assert (=> d!2397582 (=> res!3184115 e!4744819)))

(assert (=> d!2397582 (= res!3184115 (and ((_ is Cons!75534) (toList!11914 lt!2725732)) (= (_1!38741 (h!81982 (toList!11914 lt!2725732))) key!6222)))))

(assert (=> d!2397582 (= (containsKey!4843 (toList!11914 lt!2725732) key!6222) e!4744819)))

(declare-fun b!8052327 () Bool)

(declare-fun e!4744820 () Bool)

(assert (=> b!8052327 (= e!4744819 e!4744820)))

(declare-fun res!3184116 () Bool)

(assert (=> b!8052327 (=> (not res!3184116) (not e!4744820))))

(assert (=> b!8052327 (= res!3184116 ((_ is Cons!75534) (toList!11914 lt!2725732)))))

(declare-fun b!8052328 () Bool)

(assert (=> b!8052328 (= e!4744820 (containsKey!4843 (t!391432 (toList!11914 lt!2725732)) key!6222))))

(assert (= (and d!2397582 (not res!3184115)) b!8052327))

(assert (= (and b!8052327 res!3184116) b!8052328))

(declare-fun m!8403816 () Bool)

(assert (=> b!8052328 m!8403816))

(assert (=> b!8051917 d!2397582))

(declare-fun d!2397584 () Bool)

(assert (=> d!2397584 (containsKey!4843 (toList!11914 lt!2725732) key!6222)))

(declare-fun lt!2726215 () Unit!171627)

(assert (=> d!2397584 (= lt!2726215 (choose!60507 (toList!11914 lt!2725732) key!6222))))

(assert (=> d!2397584 (invariantList!1929 (toList!11914 lt!2725732))))

(assert (=> d!2397584 (= (lemmaInGetKeysListThenContainsKey!1237 (toList!11914 lt!2725732) key!6222) lt!2726215)))

(declare-fun bs!1972263 () Bool)

(assert (= bs!1972263 d!2397584))

(assert (=> bs!1972263 m!8403022))

(declare-fun m!8403818 () Bool)

(assert (=> bs!1972263 m!8403818))

(assert (=> bs!1972263 m!8403566))

(assert (=> b!8051917 d!2397584))

(declare-fun bs!1972264 () Bool)

(declare-fun d!2397586 () Bool)

(assert (= bs!1972264 (and d!2397586 b!8052047)))

(declare-fun lambda!473501 () Int)

(assert (=> bs!1972264 (= (= acc!1298 lt!2726027) (= lambda!473501 lambda!473442))))

(declare-fun bs!1972265 () Bool)

(assert (= bs!1972265 (and d!2397586 b!8052080)))

(assert (=> bs!1972265 (= (= acc!1298 (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473501 lambda!473445))))

(declare-fun bs!1972266 () Bool)

(assert (= bs!1972266 (and d!2397586 b!8051996)))

(assert (=> bs!1972266 (= (= acc!1298 lt!2725971) (= lambda!473501 lambda!473438))))

(declare-fun bs!1972267 () Bool)

(assert (= bs!1972267 (and d!2397586 b!8051993)))

(assert (=> bs!1972267 (= (= acc!1298 lt!2725732) (= lambda!473501 lambda!473436))))

(declare-fun bs!1972268 () Bool)

(assert (= bs!1972268 (and d!2397586 d!2397416)))

(assert (=> bs!1972268 (= (= acc!1298 lt!2726022) (= lambda!473501 lambda!473443))))

(assert (=> bs!1972266 (= (= acc!1298 lt!2725732) (= lambda!473501 lambda!473437))))

(assert (=> bs!1972264 (= lambda!473501 lambda!473441)))

(declare-fun bs!1972269 () Bool)

(assert (= bs!1972269 (and d!2397586 d!2397430)))

(assert (=> bs!1972269 (= (= acc!1298 lt!2726027) (= lambda!473501 lambda!473452))))

(declare-fun bs!1972270 () Bool)

(assert (= bs!1972270 (and d!2397586 d!2397428)))

(assert (=> bs!1972270 (= (= acc!1298 lt!2726054) (= lambda!473501 lambda!473447))))

(declare-fun bs!1972271 () Bool)

(assert (= bs!1972271 (and d!2397586 b!8052077)))

(assert (=> bs!1972271 (= (= acc!1298 (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473501 lambda!473444))))

(assert (=> bs!1972265 (= (= acc!1298 lt!2726059) (= lambda!473501 lambda!473446))))

(declare-fun bs!1972272 () Bool)

(assert (= bs!1972272 (and d!2397586 d!2397558)))

(assert (=> bs!1972272 (= (= acc!1298 lt!2725732) (= lambda!473501 lambda!473482))))

(declare-fun bs!1972273 () Bool)

(assert (= bs!1972273 (and d!2397586 b!8052044)))

(assert (=> bs!1972273 (= lambda!473501 lambda!473440)))

(declare-fun bs!1972274 () Bool)

(assert (= bs!1972274 (and d!2397586 d!2397372)))

(assert (=> bs!1972274 (= (= acc!1298 lt!2725966) (= lambda!473501 lambda!473439))))

(assert (=> d!2397586 true))

(assert (=> d!2397586 (forall!18498 (toList!11914 acc!1298) lambda!473501)))

(declare-fun lt!2726216 () Unit!171627)

(assert (=> d!2397586 (= lt!2726216 (choose!60508 acc!1298))))

(assert (=> d!2397586 (= (lemmaContainsAllItsOwnKeys!1081 acc!1298) lt!2726216)))

(declare-fun bs!1972275 () Bool)

(assert (= bs!1972275 d!2397586))

(declare-fun m!8403820 () Bool)

(assert (=> bs!1972275 m!8403820))

(declare-fun m!8403822 () Bool)

(assert (=> bs!1972275 m!8403822))

(assert (=> bm!747056 d!2397586))

(assert (=> b!8052042 d!2397578))

(assert (=> b!8052033 d!2397366))

(assert (=> d!2397356 d!2397566))

(declare-fun b!8052334 () Bool)

(declare-fun e!4744822 () Option!17994)

(assert (=> b!8052334 (= e!4744822 None!17993)))

(declare-fun b!8052332 () Bool)

(declare-fun e!4744821 () Option!17994)

(assert (=> b!8052332 (= e!4744821 e!4744822)))

(declare-fun c!1476036 () Bool)

(assert (=> b!8052332 (= c!1476036 (and ((_ is Cons!75534) (toList!11914 lt!2725991)) (not (= (_1!38741 (h!81982 (toList!11914 lt!2725991))) (_1!38741 (h!81982 l!14636))))))))

(declare-fun d!2397588 () Bool)

(declare-fun c!1476035 () Bool)

(assert (=> d!2397588 (= c!1476035 (and ((_ is Cons!75534) (toList!11914 lt!2725991)) (= (_1!38741 (h!81982 (toList!11914 lt!2725991))) (_1!38741 (h!81982 l!14636)))))))

(assert (=> d!2397588 (= (getValueByKey!2778 (toList!11914 lt!2725991) (_1!38741 (h!81982 l!14636))) e!4744821)))

(declare-fun b!8052331 () Bool)

(assert (=> b!8052331 (= e!4744821 (Some!17993 (_2!38741 (h!81982 (toList!11914 lt!2725991)))))))

(declare-fun b!8052333 () Bool)

(assert (=> b!8052333 (= e!4744822 (getValueByKey!2778 (t!391432 (toList!11914 lt!2725991)) (_1!38741 (h!81982 l!14636))))))

(assert (= (and d!2397588 c!1476035) b!8052331))

(assert (= (and d!2397588 (not c!1476035)) b!8052332))

(assert (= (and b!8052332 c!1476036) b!8052333))

(assert (= (and b!8052332 (not c!1476036)) b!8052334))

(declare-fun m!8403824 () Bool)

(assert (=> b!8052333 m!8403824))

(assert (=> b!8052011 d!2397588))

(declare-fun bs!1972276 () Bool)

(declare-fun b!8052336 () Bool)

(assert (= bs!1972276 (and b!8052336 b!8052112)))

(declare-fun lambda!473502 () Int)

(assert (=> bs!1972276 (= (= (toList!11914 lt!2725734) (toList!11914 lt!2725732)) (= lambda!473502 lambda!473457))))

(declare-fun bs!1972277 () Bool)

(assert (= bs!1972277 (and b!8052336 b!8052290)))

(assert (=> bs!1972277 (= (= (toList!11914 lt!2725734) (t!391432 (toList!11914 lt!2725734))) (= lambda!473502 lambda!473483))))

(declare-fun bs!1972278 () Bool)

(assert (= bs!1972278 (and b!8052336 b!8052299)))

(assert (=> bs!1972278 (= (= (toList!11914 lt!2725734) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) (= lambda!473502 lambda!473487))))

(declare-fun bs!1972279 () Bool)

(assert (= bs!1972279 (and b!8052336 b!8052297)))

(assert (=> bs!1972279 (= (= (toList!11914 lt!2725734) (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (= lambda!473502 lambda!473489))))

(declare-fun bs!1972280 () Bool)

(assert (= bs!1972280 (and b!8052336 b!8052211)))

(assert (=> bs!1972280 (= (= (toList!11914 lt!2725734) (t!391432 (toList!11914 lt!2725732))) (= lambda!473502 lambda!473467))))

(declare-fun bs!1972281 () Bool)

(assert (= bs!1972281 (and b!8052336 b!8052212)))

(assert (=> bs!1972281 (= (= (toList!11914 lt!2725734) (Cons!75534 (h!81982 (toList!11914 lt!2725732)) (t!391432 (toList!11914 lt!2725732)))) (= lambda!473502 lambda!473468))))

(declare-fun bs!1972282 () Bool)

(assert (= bs!1972282 (and b!8052336 b!8052288)))

(assert (=> bs!1972282 (= lambda!473502 lambda!473485)))

(declare-fun bs!1972283 () Bool)

(assert (= bs!1972283 (and b!8052336 b!8052319)))

(assert (=> bs!1972283 (= (= (toList!11914 lt!2725734) (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (= lambda!473502 lambda!473493))))

(declare-fun bs!1972284 () Bool)

(assert (= bs!1972284 (and b!8052336 b!8052209)))

(assert (=> bs!1972284 (= (= (toList!11914 lt!2725734) (toList!11914 lt!2725732)) (= lambda!473502 lambda!473469))))

(declare-fun bs!1972285 () Bool)

(assert (= bs!1972285 (and b!8052336 b!8052300)))

(assert (=> bs!1972285 (= (= (toList!11914 lt!2725734) (Cons!75534 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))))) (= lambda!473502 lambda!473488))))

(declare-fun bs!1972286 () Bool)

(assert (= bs!1972286 (and b!8052336 b!8052291)))

(assert (=> bs!1972286 (= (= (toList!11914 lt!2725734) (Cons!75534 (h!81982 (toList!11914 lt!2725734)) (t!391432 (toList!11914 lt!2725734)))) (= lambda!473502 lambda!473484))))

(assert (=> b!8052336 true))

(declare-fun bs!1972287 () Bool)

(declare-fun b!8052337 () Bool)

(assert (= bs!1972287 (and b!8052337 b!8052287)))

(declare-fun lambda!473503 () Int)

(assert (=> bs!1972287 (= lambda!473503 lambda!473486)))

(declare-fun bs!1972288 () Bool)

(assert (= bs!1972288 (and b!8052337 b!8052296)))

(assert (=> bs!1972288 (= lambda!473503 lambda!473490)))

(declare-fun bs!1972289 () Bool)

(assert (= bs!1972289 (and b!8052337 b!8052113)))

(assert (=> bs!1972289 (= lambda!473503 lambda!473458)))

(declare-fun bs!1972290 () Bool)

(assert (= bs!1972290 (and b!8052337 b!8052208)))

(assert (=> bs!1972290 (= lambda!473503 lambda!473470)))

(declare-fun bs!1972291 () Bool)

(assert (= bs!1972291 (and b!8052337 b!8052320)))

(assert (=> bs!1972291 (= lambda!473503 lambda!473496)))

(declare-fun d!2397590 () Bool)

(declare-fun e!4744823 () Bool)

(assert (=> d!2397590 e!4744823))

(declare-fun res!3184117 () Bool)

(assert (=> d!2397590 (=> (not res!3184117) (not e!4744823))))

(declare-fun lt!2726217 () List!75662)

(assert (=> d!2397590 (= res!3184117 (noDuplicate!3167 lt!2726217))))

(assert (=> d!2397590 (= lt!2726217 (getKeysList!1237 (toList!11914 lt!2725734)))))

(assert (=> d!2397590 (= (keys!30826 lt!2725734) lt!2726217)))

(declare-fun b!8052335 () Bool)

(declare-fun res!3184118 () Bool)

(assert (=> b!8052335 (=> (not res!3184118) (not e!4744823))))

(assert (=> b!8052335 (= res!3184118 (= (length!826 lt!2726217) (length!827 (toList!11914 lt!2725734))))))

(declare-fun res!3184119 () Bool)

(assert (=> b!8052336 (=> (not res!3184119) (not e!4744823))))

(assert (=> b!8052336 (= res!3184119 (forall!18499 lt!2726217 lambda!473502))))

(assert (=> b!8052337 (= e!4744823 (= (content!16103 lt!2726217) (content!16103 (map!18796 (toList!11914 lt!2725734) lambda!473503))))))

(assert (= (and d!2397590 res!3184117) b!8052335))

(assert (= (and b!8052335 res!3184118) b!8052336))

(assert (= (and b!8052336 res!3184119) b!8052337))

(declare-fun m!8403826 () Bool)

(assert (=> d!2397590 m!8403826))

(assert (=> d!2397590 m!8403268))

(declare-fun m!8403828 () Bool)

(assert (=> b!8052335 m!8403828))

(assert (=> b!8052335 m!8403762))

(declare-fun m!8403830 () Bool)

(assert (=> b!8052336 m!8403830))

(declare-fun m!8403832 () Bool)

(assert (=> b!8052337 m!8403832))

(declare-fun m!8403834 () Bool)

(assert (=> b!8052337 m!8403834))

(assert (=> b!8052337 m!8403834))

(declare-fun m!8403836 () Bool)

(assert (=> b!8052337 m!8403836))

(assert (=> b!8052029 d!2397590))

(assert (=> b!8052034 d!2397504))

(assert (=> b!8052034 d!2397506))

(declare-fun d!2397592 () Bool)

(declare-fun res!3184123 () Bool)

(declare-fun e!4744828 () Bool)

(assert (=> d!2397592 (=> res!3184123 e!4744828)))

(assert (=> d!2397592 (= res!3184123 ((_ is Nil!75534) (ite c!1475975 (toList!11914 acc!1298) l!14636)))))

(assert (=> d!2397592 (= (forall!18498 (ite c!1475975 (toList!11914 acc!1298) l!14636) (ite c!1475975 lambda!473440 lambda!473442)) e!4744828)))

(declare-fun b!8052349 () Bool)

(declare-fun e!4744829 () Bool)

(assert (=> b!8052349 (= e!4744828 e!4744829)))

(declare-fun res!3184124 () Bool)

(assert (=> b!8052349 (=> (not res!3184124) (not e!4744829))))

(assert (=> b!8052349 (= res!3184124 (dynLambda!30269 (ite c!1475975 lambda!473440 lambda!473442) (h!81982 (ite c!1475975 (toList!11914 acc!1298) l!14636))))))

(declare-fun b!8052350 () Bool)

(assert (=> b!8052350 (= e!4744829 (forall!18498 (t!391432 (ite c!1475975 (toList!11914 acc!1298) l!14636)) (ite c!1475975 lambda!473440 lambda!473442)))))

(assert (= (and d!2397592 (not res!3184123)) b!8052349))

(assert (= (and b!8052349 res!3184124) b!8052350))

(declare-fun b_lambda!290399 () Bool)

(assert (=> (not b_lambda!290399) (not b!8052349)))

(declare-fun m!8403838 () Bool)

(assert (=> b!8052349 m!8403838))

(declare-fun m!8403840 () Bool)

(assert (=> b!8052350 m!8403840))

(assert (=> bm!747054 d!2397592))

(assert (=> b!8052021 d!2397488))

(assert (=> b!8052021 d!2397490))

(declare-fun d!2397594 () Bool)

(declare-fun res!3184125 () Bool)

(declare-fun e!4744830 () Bool)

(assert (=> d!2397594 (=> res!3184125 e!4744830)))

(assert (=> d!2397594 (= res!3184125 ((_ is Nil!75534) (ite c!1475975 (toList!11914 acc!1298) (toList!11914 lt!2726036))))))

(assert (=> d!2397594 (= (forall!18498 (ite c!1475975 (toList!11914 acc!1298) (toList!11914 lt!2726036)) (ite c!1475975 lambda!473440 lambda!473442)) e!4744830)))

(declare-fun b!8052351 () Bool)

(declare-fun e!4744831 () Bool)

(assert (=> b!8052351 (= e!4744830 e!4744831)))

(declare-fun res!3184126 () Bool)

(assert (=> b!8052351 (=> (not res!3184126) (not e!4744831))))

(assert (=> b!8052351 (= res!3184126 (dynLambda!30269 (ite c!1475975 lambda!473440 lambda!473442) (h!81982 (ite c!1475975 (toList!11914 acc!1298) (toList!11914 lt!2726036)))))))

(declare-fun b!8052352 () Bool)

(assert (=> b!8052352 (= e!4744831 (forall!18498 (t!391432 (ite c!1475975 (toList!11914 acc!1298) (toList!11914 lt!2726036))) (ite c!1475975 lambda!473440 lambda!473442)))))

(assert (= (and d!2397594 (not res!3184125)) b!8052351))

(assert (= (and b!8052351 res!3184126) b!8052352))

(declare-fun b_lambda!290401 () Bool)

(assert (=> (not b_lambda!290401) (not b!8052351)))

(declare-fun m!8403848 () Bool)

(assert (=> b!8052351 m!8403848))

(declare-fun m!8403854 () Bool)

(assert (=> b!8052352 m!8403854))

(assert (=> bm!747055 d!2397594))

(declare-fun d!2397596 () Bool)

(declare-fun lt!2726225 () Bool)

(assert (=> d!2397596 (= lt!2726225 (select (content!16103 (keys!30826 lt!2725734)) key!6222))))

(declare-fun e!4744833 () Bool)

(assert (=> d!2397596 (= lt!2726225 e!4744833)))

(declare-fun res!3184128 () Bool)

(assert (=> d!2397596 (=> (not res!3184128) (not e!4744833))))

(assert (=> d!2397596 (= res!3184128 ((_ is Cons!75536) (keys!30826 lt!2725734)))))

(assert (=> d!2397596 (= (contains!21194 (keys!30826 lt!2725734) key!6222) lt!2726225)))

(declare-fun b!8052353 () Bool)

(declare-fun e!4744832 () Bool)

(assert (=> b!8052353 (= e!4744833 e!4744832)))

(declare-fun res!3184127 () Bool)

(assert (=> b!8052353 (=> res!3184127 e!4744832)))

(assert (=> b!8052353 (= res!3184127 (= (h!81984 (keys!30826 lt!2725734)) key!6222))))

(declare-fun b!8052354 () Bool)

(assert (=> b!8052354 (= e!4744832 (contains!21194 (t!391434 (keys!30826 lt!2725734)) key!6222))))

(assert (= (and d!2397596 res!3184128) b!8052353))

(assert (= (and b!8052353 (not res!3184127)) b!8052354))

(assert (=> d!2397596 m!8403250))

(declare-fun m!8403874 () Bool)

(assert (=> d!2397596 m!8403874))

(declare-fun m!8403876 () Bool)

(assert (=> d!2397596 m!8403876))

(declare-fun m!8403878 () Bool)

(assert (=> b!8052354 m!8403878))

(assert (=> b!8052025 d!2397596))

(assert (=> b!8052025 d!2397590))

(declare-fun d!2397600 () Bool)

(assert (=> d!2397600 (isDefined!14527 (getValueByKey!2778 (toList!11914 lt!2725732) key!6222))))

(declare-fun lt!2726226 () Unit!171627)

(assert (=> d!2397600 (= lt!2726226 (choose!60503 (toList!11914 lt!2725732) key!6222))))

(assert (=> d!2397600 (invariantList!1929 (toList!11914 lt!2725732))))

(assert (=> d!2397600 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2549 (toList!11914 lt!2725732) key!6222) lt!2726226)))

(declare-fun bs!1972295 () Bool)

(assert (= bs!1972295 d!2397600))

(assert (=> bs!1972295 m!8403016))

(assert (=> bs!1972295 m!8403016))

(assert (=> bs!1972295 m!8403020))

(declare-fun m!8403880 () Bool)

(assert (=> bs!1972295 m!8403880))

(assert (=> bs!1972295 m!8403566))

(assert (=> b!8051915 d!2397600))

(assert (=> b!8051915 d!2397498))

(assert (=> b!8051915 d!2397500))

(declare-fun d!2397602 () Bool)

(assert (=> d!2397602 (contains!21194 (getKeysList!1237 (toList!11914 lt!2725732)) key!6222)))

(declare-fun lt!2726227 () Unit!171627)

(assert (=> d!2397602 (= lt!2726227 (choose!60504 (toList!11914 lt!2725732) key!6222))))

(assert (=> d!2397602 (invariantList!1929 (toList!11914 lt!2725732))))

(assert (=> d!2397602 (= (lemmaInListThenGetKeysListContains!1232 (toList!11914 lt!2725732) key!6222) lt!2726227)))

(declare-fun bs!1972296 () Bool)

(assert (= bs!1972296 d!2397602))

(assert (=> bs!1972296 m!8403036))

(assert (=> bs!1972296 m!8403036))

(declare-fun m!8403884 () Bool)

(assert (=> bs!1972296 m!8403884))

(declare-fun m!8403886 () Bool)

(assert (=> bs!1972296 m!8403886))

(assert (=> bs!1972296 m!8403566))

(assert (=> b!8051915 d!2397602))

(assert (=> b!8052023 d!2397596))

(assert (=> b!8052023 d!2397590))

(assert (=> b!8052036 d!2397576))

(assert (=> b!8052036 d!2397578))

(declare-fun bs!1972297 () Bool)

(declare-fun b!8052361 () Bool)

(assert (= bs!1972297 (and b!8052361 b!8052112)))

(declare-fun lambda!473508 () Int)

(assert (=> bs!1972297 (= (= (t!391432 (toList!11914 acc!1298)) (toList!11914 lt!2725732)) (= lambda!473508 lambda!473457))))

(declare-fun bs!1972298 () Bool)

(assert (= bs!1972298 (and b!8052361 b!8052336)))

(assert (=> bs!1972298 (= (= (t!391432 (toList!11914 acc!1298)) (toList!11914 lt!2725734)) (= lambda!473508 lambda!473502))))

(declare-fun bs!1972299 () Bool)

(assert (= bs!1972299 (and b!8052361 b!8052290)))

(assert (=> bs!1972299 (= (= (t!391432 (toList!11914 acc!1298)) (t!391432 (toList!11914 lt!2725734))) (= lambda!473508 lambda!473483))))

(declare-fun bs!1972300 () Bool)

(assert (= bs!1972300 (and b!8052361 b!8052299)))

(assert (=> bs!1972300 (= (= (t!391432 (toList!11914 acc!1298)) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) (= lambda!473508 lambda!473487))))

(declare-fun bs!1972301 () Bool)

(assert (= bs!1972301 (and b!8052361 b!8052297)))

(assert (=> bs!1972301 (= (= (t!391432 (toList!11914 acc!1298)) (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (= lambda!473508 lambda!473489))))

(declare-fun bs!1972302 () Bool)

(assert (= bs!1972302 (and b!8052361 b!8052211)))

(assert (=> bs!1972302 (= (= (t!391432 (toList!11914 acc!1298)) (t!391432 (toList!11914 lt!2725732))) (= lambda!473508 lambda!473467))))

(declare-fun bs!1972303 () Bool)

(assert (= bs!1972303 (and b!8052361 b!8052212)))

(assert (=> bs!1972303 (= (= (t!391432 (toList!11914 acc!1298)) (Cons!75534 (h!81982 (toList!11914 lt!2725732)) (t!391432 (toList!11914 lt!2725732)))) (= lambda!473508 lambda!473468))))

(declare-fun bs!1972304 () Bool)

(assert (= bs!1972304 (and b!8052361 b!8052288)))

(assert (=> bs!1972304 (= (= (t!391432 (toList!11914 acc!1298)) (toList!11914 lt!2725734)) (= lambda!473508 lambda!473485))))

(declare-fun bs!1972305 () Bool)

(assert (= bs!1972305 (and b!8052361 b!8052319)))

(assert (=> bs!1972305 (= (= (t!391432 (toList!11914 acc!1298)) (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (= lambda!473508 lambda!473493))))

(declare-fun bs!1972306 () Bool)

(assert (= bs!1972306 (and b!8052361 b!8052209)))

(assert (=> bs!1972306 (= (= (t!391432 (toList!11914 acc!1298)) (toList!11914 lt!2725732)) (= lambda!473508 lambda!473469))))

(declare-fun bs!1972307 () Bool)

(assert (= bs!1972307 (and b!8052361 b!8052300)))

(assert (=> bs!1972307 (= (= (t!391432 (toList!11914 acc!1298)) (Cons!75534 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))))) (= lambda!473508 lambda!473488))))

(declare-fun bs!1972308 () Bool)

(assert (= bs!1972308 (and b!8052361 b!8052291)))

(assert (=> bs!1972308 (= (= (t!391432 (toList!11914 acc!1298)) (Cons!75534 (h!81982 (toList!11914 lt!2725734)) (t!391432 (toList!11914 lt!2725734)))) (= lambda!473508 lambda!473484))))

(assert (=> b!8052361 true))

(declare-fun bs!1972309 () Bool)

(declare-fun b!8052362 () Bool)

(assert (= bs!1972309 (and b!8052362 b!8052112)))

(declare-fun lambda!473509 () Int)

(assert (=> bs!1972309 (= (= (Cons!75534 (h!81982 (toList!11914 acc!1298)) (t!391432 (toList!11914 acc!1298))) (toList!11914 lt!2725732)) (= lambda!473509 lambda!473457))))

(declare-fun bs!1972310 () Bool)

(assert (= bs!1972310 (and b!8052362 b!8052336)))

(assert (=> bs!1972310 (= (= (Cons!75534 (h!81982 (toList!11914 acc!1298)) (t!391432 (toList!11914 acc!1298))) (toList!11914 lt!2725734)) (= lambda!473509 lambda!473502))))

(declare-fun bs!1972311 () Bool)

(assert (= bs!1972311 (and b!8052362 b!8052290)))

(assert (=> bs!1972311 (= (= (Cons!75534 (h!81982 (toList!11914 acc!1298)) (t!391432 (toList!11914 acc!1298))) (t!391432 (toList!11914 lt!2725734))) (= lambda!473509 lambda!473483))))

(declare-fun bs!1972312 () Bool)

(assert (= bs!1972312 (and b!8052362 b!8052297)))

(assert (=> bs!1972312 (= (= (Cons!75534 (h!81982 (toList!11914 acc!1298)) (t!391432 (toList!11914 acc!1298))) (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (= lambda!473509 lambda!473489))))

(declare-fun bs!1972313 () Bool)

(assert (= bs!1972313 (and b!8052362 b!8052211)))

(assert (=> bs!1972313 (= (= (Cons!75534 (h!81982 (toList!11914 acc!1298)) (t!391432 (toList!11914 acc!1298))) (t!391432 (toList!11914 lt!2725732))) (= lambda!473509 lambda!473467))))

(declare-fun bs!1972314 () Bool)

(assert (= bs!1972314 (and b!8052362 b!8052212)))

(assert (=> bs!1972314 (= (= (Cons!75534 (h!81982 (toList!11914 acc!1298)) (t!391432 (toList!11914 acc!1298))) (Cons!75534 (h!81982 (toList!11914 lt!2725732)) (t!391432 (toList!11914 lt!2725732)))) (= lambda!473509 lambda!473468))))

(declare-fun bs!1972315 () Bool)

(assert (= bs!1972315 (and b!8052362 b!8052288)))

(assert (=> bs!1972315 (= (= (Cons!75534 (h!81982 (toList!11914 acc!1298)) (t!391432 (toList!11914 acc!1298))) (toList!11914 lt!2725734)) (= lambda!473509 lambda!473485))))

(declare-fun bs!1972316 () Bool)

(assert (= bs!1972316 (and b!8052362 b!8052319)))

(assert (=> bs!1972316 (= (= (Cons!75534 (h!81982 (toList!11914 acc!1298)) (t!391432 (toList!11914 acc!1298))) (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (= lambda!473509 lambda!473493))))

(declare-fun bs!1972317 () Bool)

(assert (= bs!1972317 (and b!8052362 b!8052209)))

(assert (=> bs!1972317 (= (= (Cons!75534 (h!81982 (toList!11914 acc!1298)) (t!391432 (toList!11914 acc!1298))) (toList!11914 lt!2725732)) (= lambda!473509 lambda!473469))))

(declare-fun bs!1972318 () Bool)

(assert (= bs!1972318 (and b!8052362 b!8052299)))

(assert (=> bs!1972318 (= (= (Cons!75534 (h!81982 (toList!11914 acc!1298)) (t!391432 (toList!11914 acc!1298))) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) (= lambda!473509 lambda!473487))))

(declare-fun bs!1972320 () Bool)

(assert (= bs!1972320 (and b!8052362 b!8052361)))

(assert (=> bs!1972320 (= (= (Cons!75534 (h!81982 (toList!11914 acc!1298)) (t!391432 (toList!11914 acc!1298))) (t!391432 (toList!11914 acc!1298))) (= lambda!473509 lambda!473508))))

(declare-fun bs!1972321 () Bool)

(assert (= bs!1972321 (and b!8052362 b!8052300)))

(assert (=> bs!1972321 (= (= (Cons!75534 (h!81982 (toList!11914 acc!1298)) (t!391432 (toList!11914 acc!1298))) (Cons!75534 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))))) (= lambda!473509 lambda!473488))))

(declare-fun bs!1972322 () Bool)

(assert (= bs!1972322 (and b!8052362 b!8052291)))

(assert (=> bs!1972322 (= (= (Cons!75534 (h!81982 (toList!11914 acc!1298)) (t!391432 (toList!11914 acc!1298))) (Cons!75534 (h!81982 (toList!11914 lt!2725734)) (t!391432 (toList!11914 lt!2725734)))) (= lambda!473509 lambda!473484))))

(assert (=> b!8052362 true))

(declare-fun bs!1972323 () Bool)

(declare-fun b!8052359 () Bool)

(assert (= bs!1972323 (and b!8052359 b!8052112)))

(declare-fun lambda!473510 () Int)

(assert (=> bs!1972323 (= (= (toList!11914 acc!1298) (toList!11914 lt!2725732)) (= lambda!473510 lambda!473457))))

(declare-fun bs!1972324 () Bool)

(assert (= bs!1972324 (and b!8052359 b!8052362)))

(assert (=> bs!1972324 (= (= (toList!11914 acc!1298) (Cons!75534 (h!81982 (toList!11914 acc!1298)) (t!391432 (toList!11914 acc!1298)))) (= lambda!473510 lambda!473509))))

(declare-fun bs!1972325 () Bool)

(assert (= bs!1972325 (and b!8052359 b!8052336)))

(assert (=> bs!1972325 (= (= (toList!11914 acc!1298) (toList!11914 lt!2725734)) (= lambda!473510 lambda!473502))))

(declare-fun bs!1972326 () Bool)

(assert (= bs!1972326 (and b!8052359 b!8052290)))

(assert (=> bs!1972326 (= (= (toList!11914 acc!1298) (t!391432 (toList!11914 lt!2725734))) (= lambda!473510 lambda!473483))))

(declare-fun bs!1972327 () Bool)

(assert (= bs!1972327 (and b!8052359 b!8052297)))

(assert (=> bs!1972327 (= (= (toList!11914 acc!1298) (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (= lambda!473510 lambda!473489))))

(declare-fun bs!1972328 () Bool)

(assert (= bs!1972328 (and b!8052359 b!8052211)))

(assert (=> bs!1972328 (= (= (toList!11914 acc!1298) (t!391432 (toList!11914 lt!2725732))) (= lambda!473510 lambda!473467))))

(declare-fun bs!1972329 () Bool)

(assert (= bs!1972329 (and b!8052359 b!8052212)))

(assert (=> bs!1972329 (= (= (toList!11914 acc!1298) (Cons!75534 (h!81982 (toList!11914 lt!2725732)) (t!391432 (toList!11914 lt!2725732)))) (= lambda!473510 lambda!473468))))

(declare-fun bs!1972330 () Bool)

(assert (= bs!1972330 (and b!8052359 b!8052288)))

(assert (=> bs!1972330 (= (= (toList!11914 acc!1298) (toList!11914 lt!2725734)) (= lambda!473510 lambda!473485))))

(declare-fun bs!1972331 () Bool)

(assert (= bs!1972331 (and b!8052359 b!8052319)))

(assert (=> bs!1972331 (= (= (toList!11914 acc!1298) (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (= lambda!473510 lambda!473493))))

(declare-fun bs!1972332 () Bool)

(assert (= bs!1972332 (and b!8052359 b!8052209)))

(assert (=> bs!1972332 (= (= (toList!11914 acc!1298) (toList!11914 lt!2725732)) (= lambda!473510 lambda!473469))))

(declare-fun bs!1972333 () Bool)

(assert (= bs!1972333 (and b!8052359 b!8052299)))

(assert (=> bs!1972333 (= (= (toList!11914 acc!1298) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) (= lambda!473510 lambda!473487))))

(declare-fun bs!1972334 () Bool)

(assert (= bs!1972334 (and b!8052359 b!8052361)))

(assert (=> bs!1972334 (= (= (toList!11914 acc!1298) (t!391432 (toList!11914 acc!1298))) (= lambda!473510 lambda!473508))))

(declare-fun bs!1972335 () Bool)

(assert (= bs!1972335 (and b!8052359 b!8052300)))

(assert (=> bs!1972335 (= (= (toList!11914 acc!1298) (Cons!75534 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))))) (= lambda!473510 lambda!473488))))

(declare-fun bs!1972336 () Bool)

(assert (= bs!1972336 (and b!8052359 b!8052291)))

(assert (=> bs!1972336 (= (= (toList!11914 acc!1298) (Cons!75534 (h!81982 (toList!11914 lt!2725734)) (t!391432 (toList!11914 lt!2725734)))) (= lambda!473510 lambda!473484))))

(assert (=> b!8052359 true))

(declare-fun bs!1972337 () Bool)

(declare-fun b!8052358 () Bool)

(assert (= bs!1972337 (and b!8052358 b!8052337)))

(declare-fun lambda!473511 () Int)

(assert (=> bs!1972337 (= lambda!473511 lambda!473503)))

(declare-fun bs!1972338 () Bool)

(assert (= bs!1972338 (and b!8052358 b!8052287)))

(assert (=> bs!1972338 (= lambda!473511 lambda!473486)))

(declare-fun bs!1972339 () Bool)

(assert (= bs!1972339 (and b!8052358 b!8052296)))

(assert (=> bs!1972339 (= lambda!473511 lambda!473490)))

(declare-fun bs!1972340 () Bool)

(assert (= bs!1972340 (and b!8052358 b!8052113)))

(assert (=> bs!1972340 (= lambda!473511 lambda!473458)))

(declare-fun bs!1972341 () Bool)

(assert (= bs!1972341 (and b!8052358 b!8052208)))

(assert (=> bs!1972341 (= lambda!473511 lambda!473470)))

(declare-fun bs!1972342 () Bool)

(assert (= bs!1972342 (and b!8052358 b!8052320)))

(assert (=> bs!1972342 (= lambda!473511 lambda!473496)))

(declare-fun b!8052357 () Bool)

(declare-fun res!3184133 () Bool)

(declare-fun e!4744838 () Bool)

(assert (=> b!8052357 (=> (not res!3184133) (not e!4744838))))

(declare-fun lt!2726228 () List!75662)

(assert (=> b!8052357 (= res!3184133 (= (length!826 lt!2726228) (length!827 (toList!11914 acc!1298))))))

(assert (=> b!8052358 (= e!4744838 (= (content!16103 lt!2726228) (content!16103 (map!18796 (toList!11914 acc!1298) lambda!473511))))))

(declare-fun res!3184132 () Bool)

(assert (=> b!8052359 (=> (not res!3184132) (not e!4744838))))

(assert (=> b!8052359 (= res!3184132 (forall!18499 lt!2726228 lambda!473510))))

(declare-fun d!2397606 () Bool)

(assert (=> d!2397606 e!4744838))

(declare-fun res!3184131 () Bool)

(assert (=> d!2397606 (=> (not res!3184131) (not e!4744838))))

(assert (=> d!2397606 (= res!3184131 (noDuplicate!3167 lt!2726228))))

(declare-fun e!4744839 () List!75662)

(assert (=> d!2397606 (= lt!2726228 e!4744839)))

(declare-fun c!1476042 () Bool)

(assert (=> d!2397606 (= c!1476042 ((_ is Cons!75534) (toList!11914 acc!1298)))))

(assert (=> d!2397606 (invariantList!1929 (toList!11914 acc!1298))))

(assert (=> d!2397606 (= (getKeysList!1237 (toList!11914 acc!1298)) lt!2726228)))

(declare-fun b!8052360 () Bool)

(assert (=> b!8052360 false))

(declare-fun e!4744836 () Unit!171627)

(declare-fun Unit!171739 () Unit!171627)

(assert (=> b!8052360 (= e!4744836 Unit!171739)))

(assert (=> b!8052361 false))

(declare-fun lt!2726234 () Unit!171627)

(assert (=> b!8052361 (= lt!2726234 (forallContained!4653 (getKeysList!1237 (t!391432 (toList!11914 acc!1298))) lambda!473508 (_1!38741 (h!81982 (toList!11914 acc!1298)))))))

(declare-fun e!4744837 () Unit!171627)

(declare-fun Unit!171740 () Unit!171627)

(assert (=> b!8052361 (= e!4744837 Unit!171740)))

(assert (=> b!8052362 (= e!4744839 (Cons!75536 (_1!38741 (h!81982 (toList!11914 acc!1298))) (getKeysList!1237 (t!391432 (toList!11914 acc!1298)))))))

(declare-fun c!1476040 () Bool)

(assert (=> b!8052362 (= c!1476040 (containsKey!4843 (t!391432 (toList!11914 acc!1298)) (_1!38741 (h!81982 (toList!11914 acc!1298)))))))

(declare-fun lt!2726231 () Unit!171627)

(assert (=> b!8052362 (= lt!2726231 e!4744836)))

(declare-fun c!1476041 () Bool)

(assert (=> b!8052362 (= c!1476041 (contains!21194 (getKeysList!1237 (t!391432 (toList!11914 acc!1298))) (_1!38741 (h!81982 (toList!11914 acc!1298)))))))

(declare-fun lt!2726232 () Unit!171627)

(assert (=> b!8052362 (= lt!2726232 e!4744837)))

(declare-fun lt!2726230 () List!75662)

(assert (=> b!8052362 (= lt!2726230 (getKeysList!1237 (t!391432 (toList!11914 acc!1298))))))

(declare-fun lt!2726233 () Unit!171627)

(assert (=> b!8052362 (= lt!2726233 (lemmaForallContainsAddHeadPreserves!397 (t!391432 (toList!11914 acc!1298)) lt!2726230 (h!81982 (toList!11914 acc!1298))))))

(assert (=> b!8052362 (forall!18499 lt!2726230 lambda!473509)))

(declare-fun lt!2726229 () Unit!171627)

(assert (=> b!8052362 (= lt!2726229 lt!2726233)))

(declare-fun b!8052363 () Bool)

(declare-fun Unit!171741 () Unit!171627)

(assert (=> b!8052363 (= e!4744836 Unit!171741)))

(declare-fun b!8052364 () Bool)

(declare-fun Unit!171742 () Unit!171627)

(assert (=> b!8052364 (= e!4744837 Unit!171742)))

(declare-fun b!8052365 () Bool)

(assert (=> b!8052365 (= e!4744839 Nil!75536)))

(assert (= (and d!2397606 c!1476042) b!8052362))

(assert (= (and d!2397606 (not c!1476042)) b!8052365))

(assert (= (and b!8052362 c!1476040) b!8052360))

(assert (= (and b!8052362 (not c!1476040)) b!8052363))

(assert (= (and b!8052362 c!1476041) b!8052361))

(assert (= (and b!8052362 (not c!1476041)) b!8052364))

(assert (= (and d!2397606 res!3184131) b!8052357))

(assert (= (and b!8052357 res!3184133) b!8052359))

(assert (= (and b!8052359 res!3184132) b!8052358))

(declare-fun m!8403898 () Bool)

(assert (=> b!8052362 m!8403898))

(declare-fun m!8403900 () Bool)

(assert (=> b!8052362 m!8403900))

(declare-fun m!8403902 () Bool)

(assert (=> b!8052362 m!8403902))

(declare-fun m!8403904 () Bool)

(assert (=> b!8052362 m!8403904))

(assert (=> b!8052362 m!8403902))

(declare-fun m!8403906 () Bool)

(assert (=> b!8052362 m!8403906))

(declare-fun m!8403908 () Bool)

(assert (=> d!2397606 m!8403908))

(assert (=> d!2397606 m!8403276))

(declare-fun m!8403910 () Bool)

(assert (=> b!8052359 m!8403910))

(assert (=> b!8052361 m!8403902))

(assert (=> b!8052361 m!8403902))

(declare-fun m!8403912 () Bool)

(assert (=> b!8052361 m!8403912))

(declare-fun m!8403914 () Bool)

(assert (=> b!8052357 m!8403914))

(declare-fun m!8403916 () Bool)

(assert (=> b!8052357 m!8403916))

(declare-fun m!8403918 () Bool)

(assert (=> b!8052358 m!8403918))

(declare-fun m!8403920 () Bool)

(assert (=> b!8052358 m!8403920))

(assert (=> b!8052358 m!8403920))

(declare-fun m!8403922 () Bool)

(assert (=> b!8052358 m!8403922))

(assert (=> b!8051886 d!2397606))

(assert (=> d!2397368 d!2397582))

(declare-fun bs!1972343 () Bool)

(declare-fun b!8052375 () Bool)

(assert (= bs!1972343 (and b!8052375 b!8052112)))

(declare-fun lambda!473512 () Int)

(assert (=> bs!1972343 (= (= (toList!11914 acc!1298) (toList!11914 lt!2725732)) (= lambda!473512 lambda!473457))))

(declare-fun bs!1972344 () Bool)

(assert (= bs!1972344 (and b!8052375 b!8052362)))

(assert (=> bs!1972344 (= (= (toList!11914 acc!1298) (Cons!75534 (h!81982 (toList!11914 acc!1298)) (t!391432 (toList!11914 acc!1298)))) (= lambda!473512 lambda!473509))))

(declare-fun bs!1972345 () Bool)

(assert (= bs!1972345 (and b!8052375 b!8052336)))

(assert (=> bs!1972345 (= (= (toList!11914 acc!1298) (toList!11914 lt!2725734)) (= lambda!473512 lambda!473502))))

(declare-fun bs!1972346 () Bool)

(assert (= bs!1972346 (and b!8052375 b!8052297)))

(assert (=> bs!1972346 (= (= (toList!11914 acc!1298) (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (= lambda!473512 lambda!473489))))

(declare-fun bs!1972347 () Bool)

(assert (= bs!1972347 (and b!8052375 b!8052211)))

(assert (=> bs!1972347 (= (= (toList!11914 acc!1298) (t!391432 (toList!11914 lt!2725732))) (= lambda!473512 lambda!473467))))

(declare-fun bs!1972348 () Bool)

(assert (= bs!1972348 (and b!8052375 b!8052212)))

(assert (=> bs!1972348 (= (= (toList!11914 acc!1298) (Cons!75534 (h!81982 (toList!11914 lt!2725732)) (t!391432 (toList!11914 lt!2725732)))) (= lambda!473512 lambda!473468))))

(declare-fun bs!1972349 () Bool)

(assert (= bs!1972349 (and b!8052375 b!8052288)))

(assert (=> bs!1972349 (= (= (toList!11914 acc!1298) (toList!11914 lt!2725734)) (= lambda!473512 lambda!473485))))

(declare-fun bs!1972350 () Bool)

(assert (= bs!1972350 (and b!8052375 b!8052319)))

(assert (=> bs!1972350 (= (= (toList!11914 acc!1298) (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (= lambda!473512 lambda!473493))))

(declare-fun bs!1972351 () Bool)

(assert (= bs!1972351 (and b!8052375 b!8052209)))

(assert (=> bs!1972351 (= (= (toList!11914 acc!1298) (toList!11914 lt!2725732)) (= lambda!473512 lambda!473469))))

(declare-fun bs!1972352 () Bool)

(assert (= bs!1972352 (and b!8052375 b!8052290)))

(assert (=> bs!1972352 (= (= (toList!11914 acc!1298) (t!391432 (toList!11914 lt!2725734))) (= lambda!473512 lambda!473483))))

(declare-fun bs!1972353 () Bool)

(assert (= bs!1972353 (and b!8052375 b!8052359)))

(assert (=> bs!1972353 (= lambda!473512 lambda!473510)))

(declare-fun bs!1972354 () Bool)

(assert (= bs!1972354 (and b!8052375 b!8052299)))

(assert (=> bs!1972354 (= (= (toList!11914 acc!1298) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298)))) (= lambda!473512 lambda!473487))))

(declare-fun bs!1972355 () Bool)

(assert (= bs!1972355 (and b!8052375 b!8052361)))

(assert (=> bs!1972355 (= (= (toList!11914 acc!1298) (t!391432 (toList!11914 acc!1298))) (= lambda!473512 lambda!473508))))

(declare-fun bs!1972356 () Bool)

(assert (= bs!1972356 (and b!8052375 b!8052300)))

(assert (=> bs!1972356 (= (= (toList!11914 acc!1298) (Cons!75534 (h!81982 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))) (t!391432 (toList!11914 (addToMapMapFromBucket!1981 l!14636 acc!1298))))) (= lambda!473512 lambda!473488))))

(declare-fun bs!1972357 () Bool)

(assert (= bs!1972357 (and b!8052375 b!8052291)))

(assert (=> bs!1972357 (= (= (toList!11914 acc!1298) (Cons!75534 (h!81982 (toList!11914 lt!2725734)) (t!391432 (toList!11914 lt!2725734)))) (= lambda!473512 lambda!473484))))

(assert (=> b!8052375 true))

(declare-fun bs!1972358 () Bool)

(declare-fun b!8052376 () Bool)

(assert (= bs!1972358 (and b!8052376 b!8052337)))

(declare-fun lambda!473515 () Int)

(assert (=> bs!1972358 (= lambda!473515 lambda!473503)))

(declare-fun bs!1972359 () Bool)

(assert (= bs!1972359 (and b!8052376 b!8052287)))

(assert (=> bs!1972359 (= lambda!473515 lambda!473486)))

(declare-fun bs!1972360 () Bool)

(assert (= bs!1972360 (and b!8052376 b!8052296)))

(assert (=> bs!1972360 (= lambda!473515 lambda!473490)))

(declare-fun bs!1972361 () Bool)

(assert (= bs!1972361 (and b!8052376 b!8052358)))

(assert (=> bs!1972361 (= lambda!473515 lambda!473511)))

(declare-fun bs!1972362 () Bool)

(assert (= bs!1972362 (and b!8052376 b!8052113)))

(assert (=> bs!1972362 (= lambda!473515 lambda!473458)))

(declare-fun bs!1972363 () Bool)

(assert (= bs!1972363 (and b!8052376 b!8052208)))

(assert (=> bs!1972363 (= lambda!473515 lambda!473470)))

(declare-fun bs!1972364 () Bool)

(assert (= bs!1972364 (and b!8052376 b!8052320)))

(assert (=> bs!1972364 (= lambda!473515 lambda!473496)))

(declare-fun d!2397614 () Bool)

(declare-fun e!4744845 () Bool)

(assert (=> d!2397614 e!4744845))

(declare-fun res!3184136 () Bool)

(assert (=> d!2397614 (=> (not res!3184136) (not e!4744845))))

(declare-fun lt!2726236 () List!75662)

(assert (=> d!2397614 (= res!3184136 (noDuplicate!3167 lt!2726236))))

(assert (=> d!2397614 (= lt!2726236 (getKeysList!1237 (toList!11914 acc!1298)))))

(assert (=> d!2397614 (= (keys!30826 acc!1298) lt!2726236)))

(declare-fun b!8052374 () Bool)

(declare-fun res!3184137 () Bool)

(assert (=> b!8052374 (=> (not res!3184137) (not e!4744845))))

(assert (=> b!8052374 (= res!3184137 (= (length!826 lt!2726236) (length!827 (toList!11914 acc!1298))))))

(declare-fun res!3184138 () Bool)

(assert (=> b!8052375 (=> (not res!3184138) (not e!4744845))))

(assert (=> b!8052375 (= res!3184138 (forall!18499 lt!2726236 lambda!473512))))

(assert (=> b!8052376 (= e!4744845 (= (content!16103 lt!2726236) (content!16103 (map!18796 (toList!11914 acc!1298) lambda!473515))))))

(assert (= (and d!2397614 res!3184136) b!8052374))

(assert (= (and b!8052374 res!3184137) b!8052375))

(assert (= (and b!8052375 res!3184138) b!8052376))

(declare-fun m!8403924 () Bool)

(assert (=> d!2397614 m!8403924))

(assert (=> d!2397614 m!8402992))

(declare-fun m!8403926 () Bool)

(assert (=> b!8052374 m!8403926))

(assert (=> b!8052374 m!8403916))

(declare-fun m!8403928 () Bool)

(assert (=> b!8052375 m!8403928))

(declare-fun m!8403930 () Bool)

(assert (=> b!8052376 m!8403930))

(declare-fun m!8403932 () Bool)

(assert (=> b!8052376 m!8403932))

(assert (=> b!8052376 m!8403932))

(declare-fun m!8403934 () Bool)

(assert (=> b!8052376 m!8403934))

(assert (=> b!8051888 d!2397614))

(assert (=> b!8052031 d!2397398))

(declare-fun d!2397616 () Bool)

(declare-fun lt!2726239 () Bool)

(assert (=> d!2397616 (= lt!2726239 (select (content!16103 (keys!30826 acc!1298)) key!6222))))

(declare-fun e!4744849 () Bool)

(assert (=> d!2397616 (= lt!2726239 e!4744849)))

(declare-fun res!3184146 () Bool)

(assert (=> d!2397616 (=> (not res!3184146) (not e!4744849))))

(assert (=> d!2397616 (= res!3184146 ((_ is Cons!75536) (keys!30826 acc!1298)))))

(assert (=> d!2397616 (= (contains!21194 (keys!30826 acc!1298) key!6222) lt!2726239)))

(declare-fun b!8052383 () Bool)

(declare-fun e!4744848 () Bool)

(assert (=> b!8052383 (= e!4744849 e!4744848)))

(declare-fun res!3184145 () Bool)

(assert (=> b!8052383 (=> res!3184145 e!4744848)))

(assert (=> b!8052383 (= res!3184145 (= (h!81984 (keys!30826 acc!1298)) key!6222))))

(declare-fun b!8052384 () Bool)

(assert (=> b!8052384 (= e!4744848 (contains!21194 (t!391434 (keys!30826 acc!1298)) key!6222))))

(assert (= (and d!2397616 res!3184146) b!8052383))

(assert (= (and b!8052383 (not res!3184145)) b!8052384))

(assert (=> d!2397616 m!8402974))

(declare-fun m!8403936 () Bool)

(assert (=> d!2397616 m!8403936))

(declare-fun m!8403938 () Bool)

(assert (=> d!2397616 m!8403938))

(declare-fun m!8403940 () Bool)

(assert (=> b!8052384 m!8403940))

(assert (=> b!8051882 d!2397616))

(assert (=> b!8051882 d!2397614))

(assert (=> b!8051880 d!2397550))

(assert (=> b!8051880 d!2397450))

(declare-fun d!2397618 () Bool)

(assert (=> d!2397618 (= (invariantList!1929 (toList!11914 lt!2725966)) (noDuplicatedKeys!512 (toList!11914 lt!2725966)))))

(declare-fun bs!1972365 () Bool)

(assert (= bs!1972365 d!2397618))

(declare-fun m!8403942 () Bool)

(assert (=> bs!1972365 m!8403942))

(assert (=> b!8051994 d!2397618))

(assert (=> b!8051884 d!2397616))

(assert (=> b!8051884 d!2397614))

(declare-fun d!2397620 () Bool)

(declare-fun res!3184150 () Bool)

(declare-fun e!4744851 () Bool)

(assert (=> d!2397620 (=> res!3184150 e!4744851)))

(assert (=> d!2397620 (= res!3184150 ((_ is Nil!75534) (t!391432 (t!391432 l!14636))))))

(assert (=> d!2397620 (= (forall!18498 (t!391432 (t!391432 l!14636)) lambda!473438) e!4744851)))

(declare-fun b!8052388 () Bool)

(declare-fun e!4744852 () Bool)

(assert (=> b!8052388 (= e!4744851 e!4744852)))

(declare-fun res!3184151 () Bool)

(assert (=> b!8052388 (=> (not res!3184151) (not e!4744852))))

(assert (=> b!8052388 (= res!3184151 (dynLambda!30269 lambda!473438 (h!81982 (t!391432 (t!391432 l!14636)))))))

(declare-fun b!8052389 () Bool)

(assert (=> b!8052389 (= e!4744852 (forall!18498 (t!391432 (t!391432 (t!391432 l!14636))) lambda!473438))))

(assert (= (and d!2397620 (not res!3184150)) b!8052388))

(assert (= (and b!8052388 res!3184151) b!8052389))

(declare-fun b_lambda!290403 () Bool)

(assert (=> (not b_lambda!290403) (not b!8052388)))

(declare-fun m!8403944 () Bool)

(assert (=> b!8052388 m!8403944))

(declare-fun m!8403946 () Bool)

(assert (=> b!8052389 m!8403946))

(assert (=> b!8051996 d!2397620))

(declare-fun d!2397622 () Bool)

(declare-fun res!3184152 () Bool)

(declare-fun e!4744853 () Bool)

(assert (=> d!2397622 (=> res!3184152 e!4744853)))

(assert (=> d!2397622 (= res!3184152 ((_ is Nil!75534) (toList!11914 lt!2725980)))))

(assert (=> d!2397622 (= (forall!18498 (toList!11914 lt!2725980) lambda!473438) e!4744853)))

(declare-fun b!8052392 () Bool)

(declare-fun e!4744854 () Bool)

(assert (=> b!8052392 (= e!4744853 e!4744854)))

(declare-fun res!3184153 () Bool)

(assert (=> b!8052392 (=> (not res!3184153) (not e!4744854))))

(assert (=> b!8052392 (= res!3184153 (dynLambda!30269 lambda!473438 (h!81982 (toList!11914 lt!2725980))))))

(declare-fun b!8052393 () Bool)

(assert (=> b!8052393 (= e!4744854 (forall!18498 (t!391432 (toList!11914 lt!2725980)) lambda!473438))))

(assert (= (and d!2397622 (not res!3184152)) b!8052392))

(assert (= (and b!8052392 res!3184153) b!8052393))

(declare-fun b_lambda!290405 () Bool)

(assert (=> (not b_lambda!290405) (not b!8052392)))

(declare-fun m!8403948 () Bool)

(assert (=> b!8052392 m!8403948))

(declare-fun m!8403950 () Bool)

(assert (=> b!8052393 m!8403950))

(assert (=> b!8051996 d!2397622))

(declare-fun bs!1972370 () Bool)

(declare-fun b!8052395 () Bool)

(assert (= bs!1972370 (and b!8052395 b!8052047)))

(declare-fun lambda!473520 () Int)

(assert (=> bs!1972370 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2726027) (= lambda!473520 lambda!473442))))

(declare-fun bs!1972371 () Bool)

(assert (= bs!1972371 (and b!8052395 b!8052080)))

(assert (=> bs!1972371 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473520 lambda!473445))))

(declare-fun bs!1972372 () Bool)

(assert (= bs!1972372 (and b!8052395 b!8051996)))

(assert (=> bs!1972372 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2725971) (= lambda!473520 lambda!473438))))

(declare-fun bs!1972373 () Bool)

(assert (= bs!1972373 (and b!8052395 b!8051993)))

(assert (=> bs!1972373 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2725732) (= lambda!473520 lambda!473436))))

(declare-fun bs!1972374 () Bool)

(assert (= bs!1972374 (and b!8052395 d!2397416)))

(assert (=> bs!1972374 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2726022) (= lambda!473520 lambda!473443))))

(assert (=> bs!1972372 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2725732) (= lambda!473520 lambda!473437))))

(assert (=> bs!1972370 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) acc!1298) (= lambda!473520 lambda!473441))))

(declare-fun bs!1972375 () Bool)

(assert (= bs!1972375 (and b!8052395 d!2397428)))

(assert (=> bs!1972375 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2726054) (= lambda!473520 lambda!473447))))

(declare-fun bs!1972376 () Bool)

(assert (= bs!1972376 (and b!8052395 b!8052077)))

(assert (=> bs!1972376 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473520 lambda!473444))))

(assert (=> bs!1972371 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2726059) (= lambda!473520 lambda!473446))))

(declare-fun bs!1972377 () Bool)

(assert (= bs!1972377 (and b!8052395 d!2397558)))

(assert (=> bs!1972377 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2725732) (= lambda!473520 lambda!473482))))

(declare-fun bs!1972378 () Bool)

(assert (= bs!1972378 (and b!8052395 d!2397430)))

(assert (=> bs!1972378 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2726027) (= lambda!473520 lambda!473452))))

(declare-fun bs!1972379 () Bool)

(assert (= bs!1972379 (and b!8052395 d!2397586)))

(assert (=> bs!1972379 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) acc!1298) (= lambda!473520 lambda!473501))))

(declare-fun bs!1972380 () Bool)

(assert (= bs!1972380 (and b!8052395 b!8052044)))

(assert (=> bs!1972380 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) acc!1298) (= lambda!473520 lambda!473440))))

(declare-fun bs!1972381 () Bool)

(assert (= bs!1972381 (and b!8052395 d!2397372)))

(assert (=> bs!1972381 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2725966) (= lambda!473520 lambda!473439))))

(assert (=> b!8052395 true))

(declare-fun bs!1972387 () Bool)

(declare-fun b!8052398 () Bool)

(assert (= bs!1972387 (and b!8052398 b!8052047)))

(declare-fun lambda!473522 () Int)

(assert (=> bs!1972387 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2726027) (= lambda!473522 lambda!473442))))

(declare-fun bs!1972389 () Bool)

(assert (= bs!1972389 (and b!8052398 b!8052080)))

(assert (=> bs!1972389 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473522 lambda!473445))))

(declare-fun bs!1972390 () Bool)

(assert (= bs!1972390 (and b!8052398 b!8051996)))

(assert (=> bs!1972390 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2725971) (= lambda!473522 lambda!473438))))

(declare-fun bs!1972391 () Bool)

(assert (= bs!1972391 (and b!8052398 b!8051993)))

(assert (=> bs!1972391 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2725732) (= lambda!473522 lambda!473436))))

(declare-fun bs!1972392 () Bool)

(assert (= bs!1972392 (and b!8052398 b!8052395)))

(assert (=> bs!1972392 (= lambda!473522 lambda!473520)))

(declare-fun bs!1972393 () Bool)

(assert (= bs!1972393 (and b!8052398 d!2397416)))

(assert (=> bs!1972393 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2726022) (= lambda!473522 lambda!473443))))

(assert (=> bs!1972390 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2725732) (= lambda!473522 lambda!473437))))

(assert (=> bs!1972387 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) acc!1298) (= lambda!473522 lambda!473441))))

(declare-fun bs!1972394 () Bool)

(assert (= bs!1972394 (and b!8052398 d!2397428)))

(assert (=> bs!1972394 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2726054) (= lambda!473522 lambda!473447))))

(declare-fun bs!1972395 () Bool)

(assert (= bs!1972395 (and b!8052398 b!8052077)))

(assert (=> bs!1972395 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473522 lambda!473444))))

(assert (=> bs!1972389 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2726059) (= lambda!473522 lambda!473446))))

(declare-fun bs!1972396 () Bool)

(assert (= bs!1972396 (and b!8052398 d!2397558)))

(assert (=> bs!1972396 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2725732) (= lambda!473522 lambda!473482))))

(declare-fun bs!1972397 () Bool)

(assert (= bs!1972397 (and b!8052398 d!2397430)))

(assert (=> bs!1972397 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2726027) (= lambda!473522 lambda!473452))))

(declare-fun bs!1972398 () Bool)

(assert (= bs!1972398 (and b!8052398 d!2397586)))

(assert (=> bs!1972398 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) acc!1298) (= lambda!473522 lambda!473501))))

(declare-fun bs!1972399 () Bool)

(assert (= bs!1972399 (and b!8052398 b!8052044)))

(assert (=> bs!1972399 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) acc!1298) (= lambda!473522 lambda!473440))))

(declare-fun bs!1972400 () Bool)

(assert (= bs!1972400 (and b!8052398 d!2397372)))

(assert (=> bs!1972400 (= (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2725966) (= lambda!473522 lambda!473439))))

(assert (=> b!8052398 true))

(declare-fun lambda!473524 () Int)

(declare-fun lt!2726250 () ListMap!7279)

(assert (=> bs!1972387 (= (= lt!2726250 lt!2726027) (= lambda!473524 lambda!473442))))

(assert (=> bs!1972389 (= (= lt!2726250 (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473524 lambda!473445))))

(assert (=> bs!1972390 (= (= lt!2726250 lt!2725971) (= lambda!473524 lambda!473438))))

(assert (=> bs!1972391 (= (= lt!2726250 lt!2725732) (= lambda!473524 lambda!473436))))

(assert (=> bs!1972392 (= (= lt!2726250 (+!2665 lt!2725732 (h!81982 (t!391432 l!14636)))) (= lambda!473524 lambda!473520))))

(assert (=> bs!1972393 (= (= lt!2726250 lt!2726022) (= lambda!473524 lambda!473443))))

(assert (=> bs!1972390 (= (= lt!2726250 lt!2725732) (= lambda!473524 lambda!473437))))

(assert (=> bs!1972387 (= (= lt!2726250 acc!1298) (= lambda!473524 lambda!473441))))

(assert (=> b!8052398 (= (= lt!2726250 (+!2665 lt!2725732 (h!81982 (t!391432 l!14636)))) (= lambda!473524 lambda!473522))))

(assert (=> bs!1972394 (= (= lt!2726250 lt!2726054) (= lambda!473524 lambda!473447))))

(assert (=> bs!1972395 (= (= lt!2726250 (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473524 lambda!473444))))

(assert (=> bs!1972389 (= (= lt!2726250 lt!2726059) (= lambda!473524 lambda!473446))))

(assert (=> bs!1972396 (= (= lt!2726250 lt!2725732) (= lambda!473524 lambda!473482))))

(assert (=> bs!1972397 (= (= lt!2726250 lt!2726027) (= lambda!473524 lambda!473452))))

(assert (=> bs!1972398 (= (= lt!2726250 acc!1298) (= lambda!473524 lambda!473501))))

(assert (=> bs!1972399 (= (= lt!2726250 acc!1298) (= lambda!473524 lambda!473440))))

(assert (=> bs!1972400 (= (= lt!2726250 lt!2725966) (= lambda!473524 lambda!473439))))

(assert (=> b!8052398 true))

(declare-fun bs!1972401 () Bool)

(declare-fun d!2397624 () Bool)

(assert (= bs!1972401 (and d!2397624 b!8052047)))

(declare-fun lt!2726245 () ListMap!7279)

(declare-fun lambda!473525 () Int)

(assert (=> bs!1972401 (= (= lt!2726245 lt!2726027) (= lambda!473525 lambda!473442))))

(declare-fun bs!1972402 () Bool)

(assert (= bs!1972402 (and d!2397624 b!8052080)))

(assert (=> bs!1972402 (= (= lt!2726245 (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473525 lambda!473445))))

(declare-fun bs!1972403 () Bool)

(assert (= bs!1972403 (and d!2397624 b!8051996)))

(assert (=> bs!1972403 (= (= lt!2726245 lt!2725971) (= lambda!473525 lambda!473438))))

(declare-fun bs!1972404 () Bool)

(assert (= bs!1972404 (and d!2397624 b!8051993)))

(assert (=> bs!1972404 (= (= lt!2726245 lt!2725732) (= lambda!473525 lambda!473436))))

(declare-fun bs!1972405 () Bool)

(assert (= bs!1972405 (and d!2397624 b!8052395)))

(assert (=> bs!1972405 (= (= lt!2726245 (+!2665 lt!2725732 (h!81982 (t!391432 l!14636)))) (= lambda!473525 lambda!473520))))

(declare-fun bs!1972406 () Bool)

(assert (= bs!1972406 (and d!2397624 d!2397416)))

(assert (=> bs!1972406 (= (= lt!2726245 lt!2726022) (= lambda!473525 lambda!473443))))

(assert (=> bs!1972403 (= (= lt!2726245 lt!2725732) (= lambda!473525 lambda!473437))))

(assert (=> bs!1972401 (= (= lt!2726245 acc!1298) (= lambda!473525 lambda!473441))))

(declare-fun bs!1972407 () Bool)

(assert (= bs!1972407 (and d!2397624 b!8052398)))

(assert (=> bs!1972407 (= (= lt!2726245 (+!2665 lt!2725732 (h!81982 (t!391432 l!14636)))) (= lambda!473525 lambda!473522))))

(declare-fun bs!1972408 () Bool)

(assert (= bs!1972408 (and d!2397624 d!2397428)))

(assert (=> bs!1972408 (= (= lt!2726245 lt!2726054) (= lambda!473525 lambda!473447))))

(declare-fun bs!1972409 () Bool)

(assert (= bs!1972409 (and d!2397624 b!8052077)))

(assert (=> bs!1972409 (= (= lt!2726245 (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473525 lambda!473444))))

(assert (=> bs!1972402 (= (= lt!2726245 lt!2726059) (= lambda!473525 lambda!473446))))

(declare-fun bs!1972410 () Bool)

(assert (= bs!1972410 (and d!2397624 d!2397558)))

(assert (=> bs!1972410 (= (= lt!2726245 lt!2725732) (= lambda!473525 lambda!473482))))

(declare-fun bs!1972411 () Bool)

(assert (= bs!1972411 (and d!2397624 d!2397430)))

(assert (=> bs!1972411 (= (= lt!2726245 lt!2726027) (= lambda!473525 lambda!473452))))

(declare-fun bs!1972412 () Bool)

(assert (= bs!1972412 (and d!2397624 d!2397586)))

(assert (=> bs!1972412 (= (= lt!2726245 acc!1298) (= lambda!473525 lambda!473501))))

(declare-fun bs!1972413 () Bool)

(assert (= bs!1972413 (and d!2397624 b!8052044)))

(assert (=> bs!1972413 (= (= lt!2726245 acc!1298) (= lambda!473525 lambda!473440))))

(declare-fun bs!1972414 () Bool)

(assert (= bs!1972414 (and d!2397624 d!2397372)))

(assert (=> bs!1972414 (= (= lt!2726245 lt!2725966) (= lambda!473525 lambda!473439))))

(assert (=> bs!1972407 (= (= lt!2726245 lt!2726250) (= lambda!473525 lambda!473524))))

(assert (=> d!2397624 true))

(declare-fun call!747073 () Bool)

(declare-fun c!1476046 () Bool)

(declare-fun bm!747067 () Bool)

(assert (=> bm!747067 (= call!747073 (forall!18498 (ite c!1476046 (toList!11914 (+!2665 lt!2725732 (h!81982 (t!391432 l!14636)))) (t!391432 (t!391432 l!14636))) (ite c!1476046 lambda!473520 lambda!473524)))))

(declare-fun b!8052394 () Bool)

(declare-fun res!3184156 () Bool)

(declare-fun e!4744857 () Bool)

(assert (=> b!8052394 (=> (not res!3184156) (not e!4744857))))

(assert (=> b!8052394 (= res!3184156 (forall!18498 (toList!11914 (+!2665 lt!2725732 (h!81982 (t!391432 l!14636)))) lambda!473525))))

(declare-fun e!4744855 () ListMap!7279)

(assert (=> b!8052395 (= e!4744855 (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))))))

(declare-fun lt!2726243 () Unit!171627)

(declare-fun call!747074 () Unit!171627)

(assert (=> b!8052395 (= lt!2726243 call!747074)))

(assert (=> b!8052395 call!747073))

(declare-fun lt!2726253 () Unit!171627)

(assert (=> b!8052395 (= lt!2726253 lt!2726243)))

(declare-fun call!747072 () Bool)

(assert (=> b!8052395 call!747072))

(declare-fun lt!2726244 () Unit!171627)

(declare-fun Unit!171747 () Unit!171627)

(assert (=> b!8052395 (= lt!2726244 Unit!171747)))

(declare-fun b!8052396 () Bool)

(assert (=> b!8052396 (= e!4744857 (invariantList!1929 (toList!11914 lt!2726245)))))

(declare-fun lt!2726259 () ListMap!7279)

(declare-fun bm!747068 () Bool)

(assert (=> bm!747068 (= call!747072 (forall!18498 (ite c!1476046 (toList!11914 (+!2665 lt!2725732 (h!81982 (t!391432 l!14636)))) (toList!11914 lt!2726259)) (ite c!1476046 lambda!473520 lambda!473524)))))

(declare-fun e!4744856 () Bool)

(declare-fun b!8052397 () Bool)

(assert (=> b!8052397 (= e!4744856 (forall!18498 (toList!11914 (+!2665 lt!2725732 (h!81982 (t!391432 l!14636)))) lambda!473524))))

(declare-fun bm!747069 () Bool)

(assert (=> bm!747069 (= call!747074 (lemmaContainsAllItsOwnKeys!1081 (+!2665 lt!2725732 (h!81982 (t!391432 l!14636)))))))

(assert (=> d!2397624 e!4744857))

(declare-fun res!3184155 () Bool)

(assert (=> d!2397624 (=> (not res!3184155) (not e!4744857))))

(assert (=> d!2397624 (= res!3184155 (forall!18498 (t!391432 (t!391432 l!14636)) lambda!473525))))

(assert (=> d!2397624 (= lt!2726245 e!4744855)))

(assert (=> d!2397624 (= c!1476046 ((_ is Nil!75534) (t!391432 (t!391432 l!14636))))))

(assert (=> d!2397624 (noDuplicateKeys!2700 (t!391432 (t!391432 l!14636)))))

(assert (=> d!2397624 (= (addToMapMapFromBucket!1981 (t!391432 (t!391432 l!14636)) (+!2665 lt!2725732 (h!81982 (t!391432 l!14636)))) lt!2726245)))

(assert (=> b!8052398 (= e!4744855 lt!2726250)))

(assert (=> b!8052398 (= lt!2726259 (+!2665 (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) (h!81982 (t!391432 (t!391432 l!14636)))))))

(assert (=> b!8052398 (= lt!2726250 (addToMapMapFromBucket!1981 (t!391432 (t!391432 (t!391432 l!14636))) (+!2665 (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) (h!81982 (t!391432 (t!391432 l!14636))))))))

(declare-fun lt!2726260 () Unit!171627)

(assert (=> b!8052398 (= lt!2726260 call!747074)))

(assert (=> b!8052398 (forall!18498 (toList!11914 (+!2665 lt!2725732 (h!81982 (t!391432 l!14636)))) lambda!473522)))

(declare-fun lt!2726247 () Unit!171627)

(assert (=> b!8052398 (= lt!2726247 lt!2726260)))

(assert (=> b!8052398 (forall!18498 (toList!11914 lt!2726259) lambda!473524)))

(declare-fun lt!2726256 () Unit!171627)

(declare-fun Unit!171748 () Unit!171627)

(assert (=> b!8052398 (= lt!2726256 Unit!171748)))

(assert (=> b!8052398 (forall!18498 (t!391432 (t!391432 (t!391432 l!14636))) lambda!473524)))

(declare-fun lt!2726248 () Unit!171627)

(declare-fun Unit!171749 () Unit!171627)

(assert (=> b!8052398 (= lt!2726248 Unit!171749)))

(declare-fun lt!2726251 () Unit!171627)

(declare-fun Unit!171750 () Unit!171627)

(assert (=> b!8052398 (= lt!2726251 Unit!171750)))

(declare-fun lt!2726254 () Unit!171627)

(assert (=> b!8052398 (= lt!2726254 (forallContained!4652 (toList!11914 lt!2726259) lambda!473524 (h!81982 (t!391432 (t!391432 l!14636)))))))

(assert (=> b!8052398 (contains!21191 lt!2726259 (_1!38741 (h!81982 (t!391432 (t!391432 l!14636)))))))

(declare-fun lt!2726252 () Unit!171627)

(declare-fun Unit!171751 () Unit!171627)

(assert (=> b!8052398 (= lt!2726252 Unit!171751)))

(assert (=> b!8052398 (contains!21191 lt!2726250 (_1!38741 (h!81982 (t!391432 (t!391432 l!14636)))))))

(declare-fun lt!2726258 () Unit!171627)

(declare-fun Unit!171752 () Unit!171627)

(assert (=> b!8052398 (= lt!2726258 Unit!171752)))

(assert (=> b!8052398 (forall!18498 (t!391432 (t!391432 l!14636)) lambda!473524)))

(declare-fun lt!2726242 () Unit!171627)

(declare-fun Unit!171753 () Unit!171627)

(assert (=> b!8052398 (= lt!2726242 Unit!171753)))

(assert (=> b!8052398 call!747072))

(declare-fun lt!2726241 () Unit!171627)

(declare-fun Unit!171754 () Unit!171627)

(assert (=> b!8052398 (= lt!2726241 Unit!171754)))

(declare-fun lt!2726249 () Unit!171627)

(declare-fun Unit!171755 () Unit!171627)

(assert (=> b!8052398 (= lt!2726249 Unit!171755)))

(declare-fun lt!2726257 () Unit!171627)

(assert (=> b!8052398 (= lt!2726257 (addForallContainsKeyThenBeforeAdding!1079 (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2726250 (_1!38741 (h!81982 (t!391432 (t!391432 l!14636)))) (_2!38741 (h!81982 (t!391432 (t!391432 l!14636))))))))

(assert (=> b!8052398 (forall!18498 (toList!11914 (+!2665 lt!2725732 (h!81982 (t!391432 l!14636)))) lambda!473524)))

(declare-fun lt!2726246 () Unit!171627)

(assert (=> b!8052398 (= lt!2726246 lt!2726257)))

(assert (=> b!8052398 (forall!18498 (toList!11914 (+!2665 lt!2725732 (h!81982 (t!391432 l!14636)))) lambda!473524)))

(declare-fun lt!2726261 () Unit!171627)

(declare-fun Unit!171756 () Unit!171627)

(assert (=> b!8052398 (= lt!2726261 Unit!171756)))

(declare-fun res!3184154 () Bool)

(assert (=> b!8052398 (= res!3184154 call!747073)))

(assert (=> b!8052398 (=> (not res!3184154) (not e!4744856))))

(assert (=> b!8052398 e!4744856))

(declare-fun lt!2726255 () Unit!171627)

(declare-fun Unit!171757 () Unit!171627)

(assert (=> b!8052398 (= lt!2726255 Unit!171757)))

(assert (= (and d!2397624 c!1476046) b!8052395))

(assert (= (and d!2397624 (not c!1476046)) b!8052398))

(assert (= (and b!8052398 res!3184154) b!8052397))

(assert (= (or b!8052395 b!8052398) bm!747068))

(assert (= (or b!8052395 b!8052398) bm!747067))

(assert (= (or b!8052395 b!8052398) bm!747069))

(assert (= (and d!2397624 res!3184155) b!8052394))

(assert (= (and b!8052394 res!3184156) b!8052396))

(declare-fun m!8403990 () Bool)

(assert (=> b!8052394 m!8403990))

(declare-fun m!8403992 () Bool)

(assert (=> d!2397624 m!8403992))

(assert (=> d!2397624 m!8402996))

(declare-fun m!8403994 () Bool)

(assert (=> bm!747067 m!8403994))

(declare-fun m!8403996 () Bool)

(assert (=> b!8052396 m!8403996))

(assert (=> bm!747069 m!8403210))

(declare-fun m!8403998 () Bool)

(assert (=> bm!747069 m!8403998))

(declare-fun m!8404000 () Bool)

(assert (=> b!8052397 m!8404000))

(declare-fun m!8404002 () Bool)

(assert (=> bm!747068 m!8404002))

(declare-fun m!8404004 () Bool)

(assert (=> b!8052398 m!8404004))

(declare-fun m!8404006 () Bool)

(assert (=> b!8052398 m!8404006))

(assert (=> b!8052398 m!8404000))

(declare-fun m!8404012 () Bool)

(assert (=> b!8052398 m!8404012))

(assert (=> b!8052398 m!8403210))

(declare-fun m!8404014 () Bool)

(assert (=> b!8052398 m!8404014))

(declare-fun m!8404016 () Bool)

(assert (=> b!8052398 m!8404016))

(declare-fun m!8404018 () Bool)

(assert (=> b!8052398 m!8404018))

(assert (=> b!8052398 m!8404014))

(declare-fun m!8404020 () Bool)

(assert (=> b!8052398 m!8404020))

(declare-fun m!8404022 () Bool)

(assert (=> b!8052398 m!8404022))

(assert (=> b!8052398 m!8404000))

(assert (=> b!8052398 m!8403210))

(declare-fun m!8404028 () Bool)

(assert (=> b!8052398 m!8404028))

(declare-fun m!8404030 () Bool)

(assert (=> b!8052398 m!8404030))

(assert (=> b!8051996 d!2397624))

(declare-fun d!2397638 () Bool)

(declare-fun res!3184164 () Bool)

(declare-fun e!4744864 () Bool)

(assert (=> d!2397638 (=> res!3184164 e!4744864)))

(assert (=> d!2397638 (= res!3184164 ((_ is Nil!75534) (toList!11914 lt!2725732)))))

(assert (=> d!2397638 (= (forall!18498 (toList!11914 lt!2725732) lambda!473437) e!4744864)))

(declare-fun b!8052408 () Bool)

(declare-fun e!4744866 () Bool)

(assert (=> b!8052408 (= e!4744864 e!4744866)))

(declare-fun res!3184165 () Bool)

(assert (=> b!8052408 (=> (not res!3184165) (not e!4744866))))

(assert (=> b!8052408 (= res!3184165 (dynLambda!30269 lambda!473437 (h!81982 (toList!11914 lt!2725732))))))

(declare-fun b!8052410 () Bool)

(assert (=> b!8052410 (= e!4744866 (forall!18498 (t!391432 (toList!11914 lt!2725732)) lambda!473437))))

(assert (= (and d!2397638 (not res!3184164)) b!8052408))

(assert (= (and b!8052408 res!3184165) b!8052410))

(declare-fun b_lambda!290409 () Bool)

(assert (=> (not b_lambda!290409) (not b!8052408)))

(declare-fun m!8404034 () Bool)

(assert (=> b!8052408 m!8404034))

(declare-fun m!8404038 () Bool)

(assert (=> b!8052410 m!8404038))

(assert (=> b!8051996 d!2397638))

(declare-fun b!8052412 () Bool)

(declare-fun e!4744868 () Bool)

(declare-fun e!4744871 () Bool)

(assert (=> b!8052412 (= e!4744868 e!4744871)))

(declare-fun res!3184168 () Bool)

(assert (=> b!8052412 (=> (not res!3184168) (not e!4744871))))

(assert (=> b!8052412 (= res!3184168 (isDefined!14527 (getValueByKey!2778 (toList!11914 lt!2725980) (_1!38741 (h!81982 (t!391432 l!14636))))))))

(declare-fun b!8052413 () Bool)

(declare-fun e!4744872 () Unit!171627)

(declare-fun lt!2726274 () Unit!171627)

(assert (=> b!8052413 (= e!4744872 lt!2726274)))

(declare-fun lt!2726270 () Unit!171627)

(assert (=> b!8052413 (= lt!2726270 (lemmaContainsKeyImpliesGetValueByKeyDefined!2549 (toList!11914 lt!2725980) (_1!38741 (h!81982 (t!391432 l!14636)))))))

(assert (=> b!8052413 (isDefined!14527 (getValueByKey!2778 (toList!11914 lt!2725980) (_1!38741 (h!81982 (t!391432 l!14636)))))))

(declare-fun lt!2726271 () Unit!171627)

(assert (=> b!8052413 (= lt!2726271 lt!2726270)))

(assert (=> b!8052413 (= lt!2726274 (lemmaInListThenGetKeysListContains!1232 (toList!11914 lt!2725980) (_1!38741 (h!81982 (t!391432 l!14636)))))))

(declare-fun call!747075 () Bool)

(assert (=> b!8052413 call!747075))

(declare-fun b!8052414 () Bool)

(declare-fun e!4744867 () Bool)

(assert (=> b!8052414 (= e!4744867 (not (contains!21194 (keys!30826 lt!2725980) (_1!38741 (h!81982 (t!391432 l!14636))))))))

(declare-fun b!8052415 () Bool)

(assert (=> b!8052415 false))

(declare-fun lt!2726273 () Unit!171627)

(declare-fun lt!2726275 () Unit!171627)

(assert (=> b!8052415 (= lt!2726273 lt!2726275)))

(assert (=> b!8052415 (containsKey!4843 (toList!11914 lt!2725980) (_1!38741 (h!81982 (t!391432 l!14636))))))

(assert (=> b!8052415 (= lt!2726275 (lemmaInGetKeysListThenContainsKey!1237 (toList!11914 lt!2725980) (_1!38741 (h!81982 (t!391432 l!14636)))))))

(declare-fun e!4744869 () Unit!171627)

(declare-fun Unit!171759 () Unit!171627)

(assert (=> b!8052415 (= e!4744869 Unit!171759)))

(declare-fun b!8052416 () Bool)

(assert (=> b!8052416 (= e!4744871 (contains!21194 (keys!30826 lt!2725980) (_1!38741 (h!81982 (t!391432 l!14636)))))))

(declare-fun b!8052417 () Bool)

(assert (=> b!8052417 (= e!4744872 e!4744869)))

(declare-fun c!1476050 () Bool)

(assert (=> b!8052417 (= c!1476050 call!747075)))

(declare-fun b!8052418 () Bool)

(declare-fun e!4744870 () List!75662)

(assert (=> b!8052418 (= e!4744870 (getKeysList!1237 (toList!11914 lt!2725980)))))

(declare-fun b!8052419 () Bool)

(declare-fun Unit!171761 () Unit!171627)

(assert (=> b!8052419 (= e!4744869 Unit!171761)))

(declare-fun d!2397644 () Bool)

(assert (=> d!2397644 e!4744868))

(declare-fun res!3184166 () Bool)

(assert (=> d!2397644 (=> res!3184166 e!4744868)))

(assert (=> d!2397644 (= res!3184166 e!4744867)))

(declare-fun res!3184167 () Bool)

(assert (=> d!2397644 (=> (not res!3184167) (not e!4744867))))

(declare-fun lt!2726269 () Bool)

(assert (=> d!2397644 (= res!3184167 (not lt!2726269))))

(declare-fun lt!2726272 () Bool)

(assert (=> d!2397644 (= lt!2726269 lt!2726272)))

(declare-fun lt!2726276 () Unit!171627)

(assert (=> d!2397644 (= lt!2726276 e!4744872)))

(declare-fun c!1476049 () Bool)

(assert (=> d!2397644 (= c!1476049 lt!2726272)))

(assert (=> d!2397644 (= lt!2726272 (containsKey!4843 (toList!11914 lt!2725980) (_1!38741 (h!81982 (t!391432 l!14636)))))))

(assert (=> d!2397644 (= (contains!21191 lt!2725980 (_1!38741 (h!81982 (t!391432 l!14636)))) lt!2726269)))

(declare-fun b!8052420 () Bool)

(assert (=> b!8052420 (= e!4744870 (keys!30826 lt!2725980))))

(declare-fun bm!747070 () Bool)

(assert (=> bm!747070 (= call!747075 (contains!21194 e!4744870 (_1!38741 (h!81982 (t!391432 l!14636)))))))

(declare-fun c!1476051 () Bool)

(assert (=> bm!747070 (= c!1476051 c!1476049)))

(assert (= (and d!2397644 c!1476049) b!8052413))

(assert (= (and d!2397644 (not c!1476049)) b!8052417))

(assert (= (and b!8052417 c!1476050) b!8052415))

(assert (= (and b!8052417 (not c!1476050)) b!8052419))

(assert (= (or b!8052413 b!8052417) bm!747070))

(assert (= (and bm!747070 c!1476051) b!8052418))

(assert (= (and bm!747070 (not c!1476051)) b!8052420))

(assert (= (and d!2397644 res!3184167) b!8052414))

(assert (= (and d!2397644 (not res!3184166)) b!8052412))

(assert (= (and b!8052412 res!3184168) b!8052416))

(declare-fun m!8404056 () Bool)

(assert (=> b!8052420 m!8404056))

(assert (=> b!8052416 m!8404056))

(assert (=> b!8052416 m!8404056))

(declare-fun m!8404058 () Bool)

(assert (=> b!8052416 m!8404058))

(declare-fun m!8404060 () Bool)

(assert (=> b!8052412 m!8404060))

(assert (=> b!8052412 m!8404060))

(declare-fun m!8404062 () Bool)

(assert (=> b!8052412 m!8404062))

(declare-fun m!8404064 () Bool)

(assert (=> b!8052415 m!8404064))

(declare-fun m!8404066 () Bool)

(assert (=> b!8052415 m!8404066))

(declare-fun m!8404068 () Bool)

(assert (=> b!8052413 m!8404068))

(assert (=> b!8052413 m!8404060))

(assert (=> b!8052413 m!8404060))

(assert (=> b!8052413 m!8404062))

(declare-fun m!8404072 () Bool)

(assert (=> b!8052413 m!8404072))

(assert (=> b!8052414 m!8404056))

(assert (=> b!8052414 m!8404056))

(assert (=> b!8052414 m!8404058))

(declare-fun m!8404074 () Bool)

(assert (=> bm!747070 m!8404074))

(declare-fun m!8404076 () Bool)

(assert (=> b!8052418 m!8404076))

(assert (=> d!2397644 m!8404064))

(assert (=> b!8051996 d!2397644))

(declare-fun d!2397656 () Bool)

(declare-fun res!3184171 () Bool)

(declare-fun e!4744877 () Bool)

(assert (=> d!2397656 (=> res!3184171 e!4744877)))

(assert (=> d!2397656 (= res!3184171 ((_ is Nil!75534) (toList!11914 lt!2725732)))))

(assert (=> d!2397656 (= (forall!18498 (toList!11914 lt!2725732) lambda!473438) e!4744877)))

(declare-fun b!8052427 () Bool)

(declare-fun e!4744878 () Bool)

(assert (=> b!8052427 (= e!4744877 e!4744878)))

(declare-fun res!3184172 () Bool)

(assert (=> b!8052427 (=> (not res!3184172) (not e!4744878))))

(assert (=> b!8052427 (= res!3184172 (dynLambda!30269 lambda!473438 (h!81982 (toList!11914 lt!2725732))))))

(declare-fun b!8052428 () Bool)

(assert (=> b!8052428 (= e!4744878 (forall!18498 (t!391432 (toList!11914 lt!2725732)) lambda!473438))))

(assert (= (and d!2397656 (not res!3184171)) b!8052427))

(assert (= (and b!8052427 res!3184172) b!8052428))

(declare-fun b_lambda!290411 () Bool)

(assert (=> (not b_lambda!290411) (not b!8052427)))

(declare-fun m!8404082 () Bool)

(assert (=> b!8052427 m!8404082))

(declare-fun m!8404088 () Bool)

(assert (=> b!8052428 m!8404088))

(assert (=> b!8051996 d!2397656))

(declare-fun b!8052434 () Bool)

(declare-fun e!4744882 () Bool)

(declare-fun e!4744886 () Bool)

(assert (=> b!8052434 (= e!4744882 e!4744886)))

(declare-fun res!3184180 () Bool)

(assert (=> b!8052434 (=> (not res!3184180) (not e!4744886))))

(assert (=> b!8052434 (= res!3184180 (isDefined!14527 (getValueByKey!2778 (toList!11914 lt!2725971) (_1!38741 (h!81982 (t!391432 l!14636))))))))

(declare-fun b!8052435 () Bool)

(declare-fun e!4744887 () Unit!171627)

(declare-fun lt!2726287 () Unit!171627)

(assert (=> b!8052435 (= e!4744887 lt!2726287)))

(declare-fun lt!2726283 () Unit!171627)

(assert (=> b!8052435 (= lt!2726283 (lemmaContainsKeyImpliesGetValueByKeyDefined!2549 (toList!11914 lt!2725971) (_1!38741 (h!81982 (t!391432 l!14636)))))))

(assert (=> b!8052435 (isDefined!14527 (getValueByKey!2778 (toList!11914 lt!2725971) (_1!38741 (h!81982 (t!391432 l!14636)))))))

(declare-fun lt!2726284 () Unit!171627)

(assert (=> b!8052435 (= lt!2726284 lt!2726283)))

(assert (=> b!8052435 (= lt!2726287 (lemmaInListThenGetKeysListContains!1232 (toList!11914 lt!2725971) (_1!38741 (h!81982 (t!391432 l!14636)))))))

(declare-fun call!747076 () Bool)

(assert (=> b!8052435 call!747076))

(declare-fun b!8052436 () Bool)

(declare-fun e!4744881 () Bool)

(assert (=> b!8052436 (= e!4744881 (not (contains!21194 (keys!30826 lt!2725971) (_1!38741 (h!81982 (t!391432 l!14636))))))))

(declare-fun b!8052437 () Bool)

(assert (=> b!8052437 false))

(declare-fun lt!2726286 () Unit!171627)

(declare-fun lt!2726288 () Unit!171627)

(assert (=> b!8052437 (= lt!2726286 lt!2726288)))

(assert (=> b!8052437 (containsKey!4843 (toList!11914 lt!2725971) (_1!38741 (h!81982 (t!391432 l!14636))))))

(assert (=> b!8052437 (= lt!2726288 (lemmaInGetKeysListThenContainsKey!1237 (toList!11914 lt!2725971) (_1!38741 (h!81982 (t!391432 l!14636)))))))

(declare-fun e!4744884 () Unit!171627)

(declare-fun Unit!171764 () Unit!171627)

(assert (=> b!8052437 (= e!4744884 Unit!171764)))

(declare-fun b!8052438 () Bool)

(assert (=> b!8052438 (= e!4744886 (contains!21194 (keys!30826 lt!2725971) (_1!38741 (h!81982 (t!391432 l!14636)))))))

(declare-fun b!8052439 () Bool)

(assert (=> b!8052439 (= e!4744887 e!4744884)))

(declare-fun c!1476055 () Bool)

(assert (=> b!8052439 (= c!1476055 call!747076)))

(declare-fun b!8052440 () Bool)

(declare-fun e!4744885 () List!75662)

(assert (=> b!8052440 (= e!4744885 (getKeysList!1237 (toList!11914 lt!2725971)))))

(declare-fun b!8052441 () Bool)

(declare-fun Unit!171766 () Unit!171627)

(assert (=> b!8052441 (= e!4744884 Unit!171766)))

(declare-fun d!2397660 () Bool)

(assert (=> d!2397660 e!4744882))

(declare-fun res!3184178 () Bool)

(assert (=> d!2397660 (=> res!3184178 e!4744882)))

(assert (=> d!2397660 (= res!3184178 e!4744881)))

(declare-fun res!3184179 () Bool)

(assert (=> d!2397660 (=> (not res!3184179) (not e!4744881))))

(declare-fun lt!2726281 () Bool)

(assert (=> d!2397660 (= res!3184179 (not lt!2726281))))

(declare-fun lt!2726285 () Bool)

(assert (=> d!2397660 (= lt!2726281 lt!2726285)))

(declare-fun lt!2726289 () Unit!171627)

(assert (=> d!2397660 (= lt!2726289 e!4744887)))

(declare-fun c!1476054 () Bool)

(assert (=> d!2397660 (= c!1476054 lt!2726285)))

(assert (=> d!2397660 (= lt!2726285 (containsKey!4843 (toList!11914 lt!2725971) (_1!38741 (h!81982 (t!391432 l!14636)))))))

(assert (=> d!2397660 (= (contains!21191 lt!2725971 (_1!38741 (h!81982 (t!391432 l!14636)))) lt!2726281)))

(declare-fun b!8052442 () Bool)

(assert (=> b!8052442 (= e!4744885 (keys!30826 lt!2725971))))

(declare-fun bm!747071 () Bool)

(assert (=> bm!747071 (= call!747076 (contains!21194 e!4744885 (_1!38741 (h!81982 (t!391432 l!14636)))))))

(declare-fun c!1476056 () Bool)

(assert (=> bm!747071 (= c!1476056 c!1476054)))

(assert (= (and d!2397660 c!1476054) b!8052435))

(assert (= (and d!2397660 (not c!1476054)) b!8052439))

(assert (= (and b!8052439 c!1476055) b!8052437))

(assert (= (and b!8052439 (not c!1476055)) b!8052441))

(assert (= (or b!8052435 b!8052439) bm!747071))

(assert (= (and bm!747071 c!1476056) b!8052440))

(assert (= (and bm!747071 (not c!1476056)) b!8052442))

(assert (= (and d!2397660 res!3184179) b!8052436))

(assert (= (and d!2397660 (not res!3184178)) b!8052434))

(assert (= (and b!8052434 res!3184180) b!8052438))

(declare-fun m!8404092 () Bool)

(assert (=> b!8052442 m!8404092))

(assert (=> b!8052438 m!8404092))

(assert (=> b!8052438 m!8404092))

(declare-fun m!8404094 () Bool)

(assert (=> b!8052438 m!8404094))

(declare-fun m!8404096 () Bool)

(assert (=> b!8052434 m!8404096))

(assert (=> b!8052434 m!8404096))

(declare-fun m!8404098 () Bool)

(assert (=> b!8052434 m!8404098))

(declare-fun m!8404100 () Bool)

(assert (=> b!8052437 m!8404100))

(declare-fun m!8404102 () Bool)

(assert (=> b!8052437 m!8404102))

(declare-fun m!8404104 () Bool)

(assert (=> b!8052435 m!8404104))

(assert (=> b!8052435 m!8404096))

(assert (=> b!8052435 m!8404096))

(assert (=> b!8052435 m!8404098))

(declare-fun m!8404106 () Bool)

(assert (=> b!8052435 m!8404106))

(assert (=> b!8052436 m!8404092))

(assert (=> b!8052436 m!8404092))

(assert (=> b!8052436 m!8404094))

(declare-fun m!8404108 () Bool)

(assert (=> bm!747071 m!8404108))

(declare-fun m!8404112 () Bool)

(assert (=> b!8052440 m!8404112))

(assert (=> d!2397660 m!8404100))

(assert (=> b!8051996 d!2397660))

(declare-fun bs!1972440 () Bool)

(declare-fun d!2397664 () Bool)

(assert (= bs!1972440 (and d!2397664 b!8052047)))

(declare-fun lambda!473531 () Int)

(assert (=> bs!1972440 (= (= lt!2725971 lt!2726027) (= lambda!473531 lambda!473442))))

(declare-fun bs!1972441 () Bool)

(assert (= bs!1972441 (and d!2397664 b!8052080)))

(assert (=> bs!1972441 (= (= lt!2725971 (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473531 lambda!473445))))

(declare-fun bs!1972442 () Bool)

(assert (= bs!1972442 (and d!2397664 b!8051996)))

(assert (=> bs!1972442 (= lambda!473531 lambda!473438)))

(declare-fun bs!1972443 () Bool)

(assert (= bs!1972443 (and d!2397664 b!8051993)))

(assert (=> bs!1972443 (= (= lt!2725971 lt!2725732) (= lambda!473531 lambda!473436))))

(declare-fun bs!1972444 () Bool)

(assert (= bs!1972444 (and d!2397664 b!8052395)))

(assert (=> bs!1972444 (= (= lt!2725971 (+!2665 lt!2725732 (h!81982 (t!391432 l!14636)))) (= lambda!473531 lambda!473520))))

(declare-fun bs!1972445 () Bool)

(assert (= bs!1972445 (and d!2397664 d!2397416)))

(assert (=> bs!1972445 (= (= lt!2725971 lt!2726022) (= lambda!473531 lambda!473443))))

(assert (=> bs!1972442 (= (= lt!2725971 lt!2725732) (= lambda!473531 lambda!473437))))

(assert (=> bs!1972440 (= (= lt!2725971 acc!1298) (= lambda!473531 lambda!473441))))

(declare-fun bs!1972446 () Bool)

(assert (= bs!1972446 (and d!2397664 b!8052398)))

(assert (=> bs!1972446 (= (= lt!2725971 (+!2665 lt!2725732 (h!81982 (t!391432 l!14636)))) (= lambda!473531 lambda!473522))))

(declare-fun bs!1972447 () Bool)

(assert (= bs!1972447 (and d!2397664 d!2397428)))

(assert (=> bs!1972447 (= (= lt!2725971 lt!2726054) (= lambda!473531 lambda!473447))))

(declare-fun bs!1972448 () Bool)

(assert (= bs!1972448 (and d!2397664 b!8052077)))

(assert (=> bs!1972448 (= (= lt!2725971 (+!2665 acc!1298 (h!81982 l!14636))) (= lambda!473531 lambda!473444))))

(declare-fun bs!1972449 () Bool)

(assert (= bs!1972449 (and d!2397664 d!2397624)))

(assert (=> bs!1972449 (= (= lt!2725971 lt!2726245) (= lambda!473531 lambda!473525))))

(assert (=> bs!1972441 (= (= lt!2725971 lt!2726059) (= lambda!473531 lambda!473446))))

(declare-fun bs!1972450 () Bool)

(assert (= bs!1972450 (and d!2397664 d!2397558)))

(assert (=> bs!1972450 (= (= lt!2725971 lt!2725732) (= lambda!473531 lambda!473482))))

(declare-fun bs!1972451 () Bool)

(assert (= bs!1972451 (and d!2397664 d!2397430)))

(assert (=> bs!1972451 (= (= lt!2725971 lt!2726027) (= lambda!473531 lambda!473452))))

(declare-fun bs!1972452 () Bool)

(assert (= bs!1972452 (and d!2397664 d!2397586)))

(assert (=> bs!1972452 (= (= lt!2725971 acc!1298) (= lambda!473531 lambda!473501))))

(declare-fun bs!1972453 () Bool)

(assert (= bs!1972453 (and d!2397664 b!8052044)))

(assert (=> bs!1972453 (= (= lt!2725971 acc!1298) (= lambda!473531 lambda!473440))))

(declare-fun bs!1972454 () Bool)

(assert (= bs!1972454 (and d!2397664 d!2397372)))

(assert (=> bs!1972454 (= (= lt!2725971 lt!2725966) (= lambda!473531 lambda!473439))))

(assert (=> bs!1972446 (= (= lt!2725971 lt!2726250) (= lambda!473531 lambda!473524))))

(assert (=> d!2397664 true))

(assert (=> d!2397664 (forall!18498 (toList!11914 lt!2725732) lambda!473531)))

(declare-fun lt!2726290 () Unit!171627)

(assert (=> d!2397664 (= lt!2726290 (choose!60500 lt!2725732 lt!2725971 (_1!38741 (h!81982 (t!391432 l!14636))) (_2!38741 (h!81982 (t!391432 l!14636)))))))

(assert (=> d!2397664 (forall!18498 (toList!11914 (+!2665 lt!2725732 (tuple2!70877 (_1!38741 (h!81982 (t!391432 l!14636))) (_2!38741 (h!81982 (t!391432 l!14636)))))) lambda!473531)))

(assert (=> d!2397664 (= (addForallContainsKeyThenBeforeAdding!1079 lt!2725732 lt!2725971 (_1!38741 (h!81982 (t!391432 l!14636))) (_2!38741 (h!81982 (t!391432 l!14636)))) lt!2726290)))

(declare-fun bs!1972455 () Bool)

(assert (= bs!1972455 d!2397664))

(declare-fun m!8404146 () Bool)

(assert (=> bs!1972455 m!8404146))

(declare-fun m!8404148 () Bool)

(assert (=> bs!1972455 m!8404148))

(declare-fun m!8404150 () Bool)

(assert (=> bs!1972455 m!8404150))

(declare-fun m!8404152 () Bool)

(assert (=> bs!1972455 m!8404152))

(assert (=> b!8051996 d!2397664))

(declare-fun d!2397672 () Bool)

(declare-fun e!4744896 () Bool)

(assert (=> d!2397672 e!4744896))

(declare-fun res!3184185 () Bool)

(assert (=> d!2397672 (=> (not res!3184185) (not e!4744896))))

(declare-fun lt!2726299 () ListMap!7279)

(assert (=> d!2397672 (= res!3184185 (contains!21191 lt!2726299 (_1!38741 (h!81982 (t!391432 l!14636)))))))

(declare-fun lt!2726301 () List!75660)

(assert (=> d!2397672 (= lt!2726299 (ListMap!7280 lt!2726301))))

(declare-fun lt!2726300 () Unit!171627)

(declare-fun lt!2726302 () Unit!171627)

(assert (=> d!2397672 (= lt!2726300 lt!2726302)))

(assert (=> d!2397672 (= (getValueByKey!2778 lt!2726301 (_1!38741 (h!81982 (t!391432 l!14636)))) (Some!17993 (_2!38741 (h!81982 (t!391432 l!14636)))))))

(assert (=> d!2397672 (= lt!2726302 (lemmaContainsTupThenGetReturnValue!1270 lt!2726301 (_1!38741 (h!81982 (t!391432 l!14636))) (_2!38741 (h!81982 (t!391432 l!14636)))))))

(assert (=> d!2397672 (= lt!2726301 (insertNoDuplicatedKeys!778 (toList!11914 lt!2725732) (_1!38741 (h!81982 (t!391432 l!14636))) (_2!38741 (h!81982 (t!391432 l!14636)))))))

(assert (=> d!2397672 (= (+!2665 lt!2725732 (h!81982 (t!391432 l!14636))) lt!2726299)))

(declare-fun b!8052456 () Bool)

(declare-fun res!3184184 () Bool)

(assert (=> b!8052456 (=> (not res!3184184) (not e!4744896))))

(assert (=> b!8052456 (= res!3184184 (= (getValueByKey!2778 (toList!11914 lt!2726299) (_1!38741 (h!81982 (t!391432 l!14636)))) (Some!17993 (_2!38741 (h!81982 (t!391432 l!14636))))))))

(declare-fun b!8052457 () Bool)

(assert (=> b!8052457 (= e!4744896 (contains!21192 (toList!11914 lt!2726299) (h!81982 (t!391432 l!14636))))))

(assert (= (and d!2397672 res!3184185) b!8052456))

(assert (= (and b!8052456 res!3184184) b!8052457))

(declare-fun m!8404154 () Bool)

(assert (=> d!2397672 m!8404154))

(declare-fun m!8404156 () Bool)

(assert (=> d!2397672 m!8404156))

(declare-fun m!8404158 () Bool)

(assert (=> d!2397672 m!8404158))

(declare-fun m!8404160 () Bool)

(assert (=> d!2397672 m!8404160))

(declare-fun m!8404162 () Bool)

(assert (=> b!8052456 m!8404162))

(declare-fun m!8404164 () Bool)

(assert (=> b!8052457 m!8404164))

(assert (=> b!8051996 d!2397672))

(declare-fun d!2397674 () Bool)

(assert (=> d!2397674 (dynLambda!30269 lambda!473438 (h!81982 (t!391432 l!14636)))))

(declare-fun lt!2726303 () Unit!171627)

(assert (=> d!2397674 (= lt!2726303 (choose!60499 (toList!11914 lt!2725980) lambda!473438 (h!81982 (t!391432 l!14636))))))

(declare-fun e!4744897 () Bool)

(assert (=> d!2397674 e!4744897))

(declare-fun res!3184186 () Bool)

(assert (=> d!2397674 (=> (not res!3184186) (not e!4744897))))

(assert (=> d!2397674 (= res!3184186 (forall!18498 (toList!11914 lt!2725980) lambda!473438))))

(assert (=> d!2397674 (= (forallContained!4652 (toList!11914 lt!2725980) lambda!473438 (h!81982 (t!391432 l!14636))) lt!2726303)))

(declare-fun b!8052458 () Bool)

(assert (=> b!8052458 (= e!4744897 (contains!21192 (toList!11914 lt!2725980) (h!81982 (t!391432 l!14636))))))

(assert (= (and d!2397674 res!3184186) b!8052458))

(declare-fun b_lambda!290413 () Bool)

(assert (=> (not b_lambda!290413) (not d!2397674)))

(declare-fun m!8404166 () Bool)

(assert (=> d!2397674 m!8404166))

(declare-fun m!8404168 () Bool)

(assert (=> d!2397674 m!8404168))

(assert (=> d!2397674 m!8403214))

(declare-fun m!8404170 () Bool)

(assert (=> b!8052458 m!8404170))

(assert (=> b!8051996 d!2397674))

(declare-fun d!2397676 () Bool)

(declare-fun res!3184187 () Bool)

(declare-fun e!4744898 () Bool)

(assert (=> d!2397676 (=> res!3184187 e!4744898)))

(assert (=> d!2397676 (= res!3184187 ((_ is Nil!75534) (t!391432 l!14636)))))

(assert (=> d!2397676 (= (forall!18498 (t!391432 l!14636) lambda!473438) e!4744898)))

(declare-fun b!8052459 () Bool)

(declare-fun e!4744899 () Bool)

(assert (=> b!8052459 (= e!4744898 e!4744899)))

(declare-fun res!3184188 () Bool)

(assert (=> b!8052459 (=> (not res!3184188) (not e!4744899))))

(assert (=> b!8052459 (= res!3184188 (dynLambda!30269 lambda!473438 (h!81982 (t!391432 l!14636))))))

(declare-fun b!8052460 () Bool)

(assert (=> b!8052460 (= e!4744899 (forall!18498 (t!391432 (t!391432 l!14636)) lambda!473438))))

(assert (= (and d!2397676 (not res!3184187)) b!8052459))

(assert (= (and b!8052459 res!3184188) b!8052460))

(declare-fun b_lambda!290415 () Bool)

(assert (=> (not b_lambda!290415) (not b!8052459)))

(assert (=> b!8052459 m!8404166))

(assert (=> b!8052460 m!8403204))

(assert (=> b!8051996 d!2397676))

(assert (=> b!8051995 d!2397656))

(declare-fun b!8052465 () Bool)

(declare-fun e!4744903 () Bool)

(declare-fun e!4744906 () Bool)

(assert (=> b!8052465 (= e!4744903 e!4744906)))

(declare-fun res!3184195 () Bool)

(assert (=> b!8052465 (=> (not res!3184195) (not e!4744906))))

(assert (=> b!8052465 (= res!3184195 (isDefined!14527 (getValueByKey!2778 (toList!11914 lt!2725991) (_1!38741 (h!81982 l!14636)))))))

(declare-fun b!8052466 () Bool)

(declare-fun e!4744907 () Unit!171627)

(declare-fun lt!2726311 () Unit!171627)

(assert (=> b!8052466 (= e!4744907 lt!2726311)))

(declare-fun lt!2726307 () Unit!171627)

(assert (=> b!8052466 (= lt!2726307 (lemmaContainsKeyImpliesGetValueByKeyDefined!2549 (toList!11914 lt!2725991) (_1!38741 (h!81982 l!14636))))))

(assert (=> b!8052466 (isDefined!14527 (getValueByKey!2778 (toList!11914 lt!2725991) (_1!38741 (h!81982 l!14636))))))

(declare-fun lt!2726308 () Unit!171627)

(assert (=> b!8052466 (= lt!2726308 lt!2726307)))

(assert (=> b!8052466 (= lt!2726311 (lemmaInListThenGetKeysListContains!1232 (toList!11914 lt!2725991) (_1!38741 (h!81982 l!14636))))))

(declare-fun call!747078 () Bool)

(assert (=> b!8052466 call!747078))

(declare-fun b!8052467 () Bool)

(declare-fun e!4744902 () Bool)

(assert (=> b!8052467 (= e!4744902 (not (contains!21194 (keys!30826 lt!2725991) (_1!38741 (h!81982 l!14636)))))))

(declare-fun b!8052468 () Bool)

(assert (=> b!8052468 false))

(declare-fun lt!2726310 () Unit!171627)

(declare-fun lt!2726312 () Unit!171627)

(assert (=> b!8052468 (= lt!2726310 lt!2726312)))

(assert (=> b!8052468 (containsKey!4843 (toList!11914 lt!2725991) (_1!38741 (h!81982 l!14636)))))

(assert (=> b!8052468 (= lt!2726312 (lemmaInGetKeysListThenContainsKey!1237 (toList!11914 lt!2725991) (_1!38741 (h!81982 l!14636))))))

(declare-fun e!4744904 () Unit!171627)

(declare-fun Unit!171768 () Unit!171627)

(assert (=> b!8052468 (= e!4744904 Unit!171768)))

(declare-fun b!8052469 () Bool)

(assert (=> b!8052469 (= e!4744906 (contains!21194 (keys!30826 lt!2725991) (_1!38741 (h!81982 l!14636))))))

(declare-fun b!8052470 () Bool)

(assert (=> b!8052470 (= e!4744907 e!4744904)))

(declare-fun c!1476063 () Bool)

(assert (=> b!8052470 (= c!1476063 call!747078)))

(declare-fun b!8052471 () Bool)

(declare-fun e!4744905 () List!75662)

(assert (=> b!8052471 (= e!4744905 (getKeysList!1237 (toList!11914 lt!2725991)))))

(declare-fun b!8052472 () Bool)

(declare-fun Unit!171769 () Unit!171627)

(assert (=> b!8052472 (= e!4744904 Unit!171769)))

(declare-fun d!2397678 () Bool)

(assert (=> d!2397678 e!4744903))

(declare-fun res!3184193 () Bool)

(assert (=> d!2397678 (=> res!3184193 e!4744903)))

(assert (=> d!2397678 (= res!3184193 e!4744902)))

(declare-fun res!3184194 () Bool)

(assert (=> d!2397678 (=> (not res!3184194) (not e!4744902))))

(declare-fun lt!2726306 () Bool)

(assert (=> d!2397678 (= res!3184194 (not lt!2726306))))

(declare-fun lt!2726309 () Bool)

(assert (=> d!2397678 (= lt!2726306 lt!2726309)))

(declare-fun lt!2726313 () Unit!171627)

(assert (=> d!2397678 (= lt!2726313 e!4744907)))

(declare-fun c!1476062 () Bool)

(assert (=> d!2397678 (= c!1476062 lt!2726309)))

(assert (=> d!2397678 (= lt!2726309 (containsKey!4843 (toList!11914 lt!2725991) (_1!38741 (h!81982 l!14636))))))

(assert (=> d!2397678 (= (contains!21191 lt!2725991 (_1!38741 (h!81982 l!14636))) lt!2726306)))

(declare-fun b!8052473 () Bool)

(assert (=> b!8052473 (= e!4744905 (keys!30826 lt!2725991))))

(declare-fun bm!747073 () Bool)

(assert (=> bm!747073 (= call!747078 (contains!21194 e!4744905 (_1!38741 (h!81982 l!14636))))))

(declare-fun c!1476064 () Bool)

(assert (=> bm!747073 (= c!1476064 c!1476062)))

(assert (= (and d!2397678 c!1476062) b!8052466))

(assert (= (and d!2397678 (not c!1476062)) b!8052470))

(assert (= (and b!8052470 c!1476063) b!8052468))

(assert (= (and b!8052470 (not c!1476063)) b!8052472))

(assert (= (or b!8052466 b!8052470) bm!747073))

(assert (= (and bm!747073 c!1476064) b!8052471))

(assert (= (and bm!747073 (not c!1476064)) b!8052473))

(assert (= (and d!2397678 res!3184194) b!8052467))

(assert (= (and d!2397678 (not res!3184193)) b!8052465))

(assert (= (and b!8052465 res!3184195) b!8052469))

(declare-fun m!8404172 () Bool)

(assert (=> b!8052473 m!8404172))

(assert (=> b!8052469 m!8404172))

(assert (=> b!8052469 m!8404172))

(declare-fun m!8404174 () Bool)

(assert (=> b!8052469 m!8404174))

(assert (=> b!8052465 m!8403232))

(assert (=> b!8052465 m!8403232))

(declare-fun m!8404176 () Bool)

(assert (=> b!8052465 m!8404176))

(declare-fun m!8404178 () Bool)

(assert (=> b!8052468 m!8404178))

(declare-fun m!8404180 () Bool)

(assert (=> b!8052468 m!8404180))

(declare-fun m!8404182 () Bool)

(assert (=> b!8052466 m!8404182))

(assert (=> b!8052466 m!8403232))

(assert (=> b!8052466 m!8403232))

(assert (=> b!8052466 m!8404176))

(declare-fun m!8404184 () Bool)

(assert (=> b!8052466 m!8404184))

(assert (=> b!8052467 m!8404172))

(assert (=> b!8052467 m!8404172))

(assert (=> b!8052467 m!8404174))

(declare-fun m!8404186 () Bool)

(assert (=> bm!747073 m!8404186))

(declare-fun m!8404188 () Bool)

(assert (=> b!8052471 m!8404188))

(assert (=> d!2397678 m!8404178))

(assert (=> d!2397394 d!2397678))

(declare-fun b!8052479 () Bool)

(declare-fun e!4744910 () Option!17994)

(assert (=> b!8052479 (= e!4744910 None!17993)))

(declare-fun b!8052477 () Bool)

(declare-fun e!4744909 () Option!17994)

(assert (=> b!8052477 (= e!4744909 e!4744910)))

(declare-fun c!1476066 () Bool)

(assert (=> b!8052477 (= c!1476066 (and ((_ is Cons!75534) lt!2725993) (not (= (_1!38741 (h!81982 lt!2725993)) (_1!38741 (h!81982 l!14636))))))))

(declare-fun d!2397680 () Bool)

(declare-fun c!1476065 () Bool)

(assert (=> d!2397680 (= c!1476065 (and ((_ is Cons!75534) lt!2725993) (= (_1!38741 (h!81982 lt!2725993)) (_1!38741 (h!81982 l!14636)))))))

(assert (=> d!2397680 (= (getValueByKey!2778 lt!2725993 (_1!38741 (h!81982 l!14636))) e!4744909)))

(declare-fun b!8052476 () Bool)

(assert (=> b!8052476 (= e!4744909 (Some!17993 (_2!38741 (h!81982 lt!2725993))))))

(declare-fun b!8052478 () Bool)

(assert (=> b!8052478 (= e!4744910 (getValueByKey!2778 (t!391432 lt!2725993) (_1!38741 (h!81982 l!14636))))))

(assert (= (and d!2397680 c!1476065) b!8052476))

(assert (= (and d!2397680 (not c!1476065)) b!8052477))

(assert (= (and b!8052477 c!1476066) b!8052478))

(assert (= (and b!8052477 (not c!1476066)) b!8052479))

(declare-fun m!8404198 () Bool)

(assert (=> b!8052478 m!8404198))

(assert (=> d!2397394 d!2397680))

(declare-fun d!2397684 () Bool)

(assert (=> d!2397684 (= (getValueByKey!2778 lt!2725993 (_1!38741 (h!81982 l!14636))) (Some!17993 (_2!38741 (h!81982 l!14636))))))

(declare-fun lt!2726317 () Unit!171627)

(declare-fun choose!60512 (List!75660 K!22798 V!23052) Unit!171627)

(assert (=> d!2397684 (= lt!2726317 (choose!60512 lt!2725993 (_1!38741 (h!81982 l!14636)) (_2!38741 (h!81982 l!14636))))))

(declare-fun e!4744913 () Bool)

(assert (=> d!2397684 e!4744913))

(declare-fun res!3184202 () Bool)

(assert (=> d!2397684 (=> (not res!3184202) (not e!4744913))))

(assert (=> d!2397684 (= res!3184202 (invariantList!1929 lt!2725993))))

(assert (=> d!2397684 (= (lemmaContainsTupThenGetReturnValue!1270 lt!2725993 (_1!38741 (h!81982 l!14636)) (_2!38741 (h!81982 l!14636))) lt!2726317)))

(declare-fun b!8052484 () Bool)

(declare-fun res!3184203 () Bool)

(assert (=> b!8052484 (=> (not res!3184203) (not e!4744913))))

(assert (=> b!8052484 (= res!3184203 (containsKey!4843 lt!2725993 (_1!38741 (h!81982 l!14636))))))

(declare-fun b!8052485 () Bool)

(assert (=> b!8052485 (= e!4744913 (contains!21192 lt!2725993 (tuple2!70877 (_1!38741 (h!81982 l!14636)) (_2!38741 (h!81982 l!14636)))))))

(assert (= (and d!2397684 res!3184202) b!8052484))

(assert (= (and b!8052484 res!3184203) b!8052485))

(assert (=> d!2397684 m!8403226))

(declare-fun m!8404200 () Bool)

(assert (=> d!2397684 m!8404200))

(declare-fun m!8404202 () Bool)

(assert (=> d!2397684 m!8404202))

(declare-fun m!8404204 () Bool)

(assert (=> b!8052484 m!8404204))

(declare-fun m!8404206 () Bool)

(assert (=> b!8052485 m!8404206))

(assert (=> d!2397394 d!2397684))

(declare-fun b!8052560 () Bool)

(assert (=> b!8052560 false))

(declare-fun lt!2726380 () Unit!171627)

(declare-fun lt!2726381 () Unit!171627)

(assert (=> b!8052560 (= lt!2726380 lt!2726381)))

(assert (=> b!8052560 (containsKey!4843 (t!391432 (toList!11914 acc!1298)) (_1!38741 (h!81982 (toList!11914 acc!1298))))))

(assert (=> b!8052560 (= lt!2726381 (lemmaInGetKeysListThenContainsKey!1237 (t!391432 (toList!11914 acc!1298)) (_1!38741 (h!81982 (toList!11914 acc!1298)))))))

(declare-fun lt!2726382 () Unit!171627)

(declare-fun lt!2726377 () Unit!171627)

(assert (=> b!8052560 (= lt!2726382 lt!2726377)))

(declare-fun call!747102 () List!75662)

(assert (=> b!8052560 (contains!21194 call!747102 (_1!38741 (h!81982 (toList!11914 acc!1298))))))

(declare-fun lt!2726386 () List!75660)

(assert (=> b!8052560 (= lt!2726377 (lemmaInListThenGetKeysListContains!1232 lt!2726386 (_1!38741 (h!81982 (toList!11914 acc!1298)))))))

(assert (=> b!8052560 (= lt!2726386 (insertNoDuplicatedKeys!778 (t!391432 (toList!11914 acc!1298)) (_1!38741 (h!81982 l!14636)) (_2!38741 (h!81982 l!14636))))))

(declare-fun e!4744953 () Unit!171627)

(declare-fun Unit!171771 () Unit!171627)

(assert (=> b!8052560 (= e!4744953 Unit!171771)))

(declare-fun b!8052561 () Bool)

(declare-fun e!4744957 () List!75660)

(declare-fun call!747101 () List!75660)

(assert (=> b!8052561 (= e!4744957 call!747101)))

(declare-fun lt!2726385 () List!75662)

(assert (=> b!8052561 (= lt!2726385 call!747102)))

(declare-fun lt!2726378 () Unit!171627)

(declare-fun lemmaSubseqRefl!207 (List!75662) Unit!171627)

(assert (=> b!8052561 (= lt!2726378 (lemmaSubseqRefl!207 lt!2726385))))

(declare-fun subseq!929 (List!75662 List!75662) Bool)

(assert (=> b!8052561 (subseq!929 lt!2726385 lt!2726385)))

(declare-fun lt!2726379 () Unit!171627)

(assert (=> b!8052561 (= lt!2726379 lt!2726378)))

(declare-fun b!8052562 () Bool)

(declare-fun e!4744956 () List!75660)

(assert (=> b!8052562 (= e!4744957 e!4744956)))

(declare-fun res!3184230 () Bool)

(assert (=> b!8052562 (= res!3184230 ((_ is Cons!75534) (toList!11914 acc!1298)))))

(declare-fun e!4744959 () Bool)

(assert (=> b!8052562 (=> (not res!3184230) (not e!4744959))))

(declare-fun c!1476092 () Bool)

(assert (=> b!8052562 (= c!1476092 e!4744959)))

(declare-fun b!8052563 () Bool)

(declare-fun e!4744958 () List!75660)

(declare-fun lt!2726384 () List!75660)

(assert (=> b!8052563 (= e!4744958 lt!2726384)))

(declare-fun call!747099 () List!75660)

(assert (=> b!8052563 (= lt!2726384 call!747099)))

(declare-fun c!1476093 () Bool)

(assert (=> b!8052563 (= c!1476093 (containsKey!4843 (insertNoDuplicatedKeys!778 (t!391432 (toList!11914 acc!1298)) (_1!38741 (h!81982 l!14636)) (_2!38741 (h!81982 l!14636))) (_1!38741 (h!81982 (toList!11914 acc!1298)))))))

(declare-fun lt!2726376 () Unit!171627)

(assert (=> b!8052563 (= lt!2726376 e!4744953)))

(declare-fun b!8052564 () Bool)

(assert (=> b!8052564 (= e!4744958 call!747099)))

(declare-fun b!8052565 () Bool)

(declare-fun c!1476094 () Bool)

(assert (=> b!8052565 (= c!1476094 ((_ is Cons!75534) (toList!11914 acc!1298)))))

(assert (=> b!8052565 (= e!4744956 e!4744958)))

(declare-fun b!8052566 () Bool)

(assert (=> b!8052566 (= e!4744959 (not (containsKey!4843 (toList!11914 acc!1298) (_1!38741 (h!81982 l!14636)))))))

(declare-fun d!2397686 () Bool)

(declare-fun e!4744954 () Bool)

(assert (=> d!2397686 e!4744954))

(declare-fun res!3184231 () Bool)

(assert (=> d!2397686 (=> (not res!3184231) (not e!4744954))))

(declare-fun lt!2726383 () List!75660)

(assert (=> d!2397686 (= res!3184231 (invariantList!1929 lt!2726383))))

(assert (=> d!2397686 (= lt!2726383 e!4744957)))

(declare-fun c!1476096 () Bool)

(assert (=> d!2397686 (= c!1476096 (and ((_ is Cons!75534) (toList!11914 acc!1298)) (= (_1!38741 (h!81982 (toList!11914 acc!1298))) (_1!38741 (h!81982 l!14636)))))))

(assert (=> d!2397686 (invariantList!1929 (toList!11914 acc!1298))))

(assert (=> d!2397686 (= (insertNoDuplicatedKeys!778 (toList!11914 acc!1298) (_1!38741 (h!81982 l!14636)) (_2!38741 (h!81982 l!14636))) lt!2726383)))

(declare-fun b!8052567 () Bool)

(declare-fun e!4744955 () List!75660)

(assert (=> b!8052567 (= e!4744955 Nil!75534)))

(declare-fun b!8052568 () Bool)

(declare-fun Unit!171781 () Unit!171627)

(assert (=> b!8052568 (= e!4744953 Unit!171781)))

(declare-fun b!8052569 () Bool)

(declare-fun res!3184229 () Bool)

(assert (=> b!8052569 (=> (not res!3184229) (not e!4744954))))

(assert (=> b!8052569 (= res!3184229 (containsKey!4843 lt!2726383 (_1!38741 (h!81982 l!14636))))))

(declare-fun b!8052570 () Bool)

(assert (=> b!8052570 (= e!4744954 (= (content!16103 (getKeysList!1237 lt!2726383)) ((_ map or) (content!16103 (getKeysList!1237 (toList!11914 acc!1298))) (store ((as const (Array K!22798 Bool)) false) (_1!38741 (h!81982 l!14636)) true))))))

(declare-fun b!8052571 () Bool)

(declare-fun call!747100 () List!75660)

(assert (=> b!8052571 (= e!4744956 call!747100)))

(declare-fun bm!747094 () Bool)

(declare-fun $colon$colon!3429 (List!75660 tuple2!70876) List!75660)

(assert (=> bm!747094 (= call!747101 ($colon$colon!3429 (ite c!1476096 (t!391432 (toList!11914 acc!1298)) (ite c!1476092 (toList!11914 acc!1298) e!4744955)) (ite (or c!1476096 c!1476092) (tuple2!70877 (_1!38741 (h!81982 l!14636)) (_2!38741 (h!81982 l!14636))) (ite c!1476094 (h!81982 (toList!11914 acc!1298)) (tuple2!70877 (_1!38741 (h!81982 l!14636)) (_2!38741 (h!81982 l!14636)))))))))

(declare-fun bm!747095 () Bool)

(assert (=> bm!747095 (= call!747100 call!747101)))

(declare-fun b!8052572 () Bool)

(declare-fun res!3184228 () Bool)

(assert (=> b!8052572 (=> (not res!3184228) (not e!4744954))))

(assert (=> b!8052572 (= res!3184228 (contains!21192 lt!2726383 (tuple2!70877 (_1!38741 (h!81982 l!14636)) (_2!38741 (h!81982 l!14636)))))))

(declare-fun bm!747096 () Bool)

(assert (=> bm!747096 (= call!747099 call!747100)))

(declare-fun c!1476095 () Bool)

(assert (=> bm!747096 (= c!1476095 c!1476094)))

(declare-fun bm!747097 () Bool)

(assert (=> bm!747097 (= call!747102 (getKeysList!1237 (ite c!1476096 (toList!11914 acc!1298) lt!2726386)))))

(declare-fun b!8052573 () Bool)

(assert (=> b!8052573 (= e!4744955 (insertNoDuplicatedKeys!778 (t!391432 (toList!11914 acc!1298)) (_1!38741 (h!81982 l!14636)) (_2!38741 (h!81982 l!14636))))))

(assert (= (and d!2397686 c!1476096) b!8052561))

(assert (= (and d!2397686 (not c!1476096)) b!8052562))

(assert (= (and b!8052562 res!3184230) b!8052566))

(assert (= (and b!8052562 c!1476092) b!8052571))

(assert (= (and b!8052562 (not c!1476092)) b!8052565))

(assert (= (and b!8052565 c!1476094) b!8052563))

(assert (= (and b!8052565 (not c!1476094)) b!8052564))

(assert (= (and b!8052563 c!1476093) b!8052560))

(assert (= (and b!8052563 (not c!1476093)) b!8052568))

(assert (= (or b!8052563 b!8052564) bm!747096))

(assert (= (and bm!747096 c!1476095) b!8052573))

(assert (= (and bm!747096 (not c!1476095)) b!8052567))

(assert (= (or b!8052571 bm!747096) bm!747095))

(assert (= (or b!8052561 bm!747095) bm!747094))

(assert (= (or b!8052561 b!8052560) bm!747097))

(assert (= (and d!2397686 res!3184231) b!8052569))

(assert (= (and b!8052569 res!3184229) b!8052572))

(assert (= (and b!8052572 res!3184228) b!8052570))

(declare-fun m!8404260 () Bool)

(assert (=> b!8052566 m!8404260))

(declare-fun m!8404262 () Bool)

(assert (=> d!2397686 m!8404262))

(assert (=> d!2397686 m!8403276))

(declare-fun m!8404264 () Bool)

(assert (=> b!8052561 m!8404264))

(declare-fun m!8404266 () Bool)

(assert (=> b!8052561 m!8404266))

(declare-fun m!8404268 () Bool)

(assert (=> b!8052560 m!8404268))

(declare-fun m!8404270 () Bool)

(assert (=> b!8052560 m!8404270))

(declare-fun m!8404272 () Bool)

(assert (=> b!8052560 m!8404272))

(declare-fun m!8404274 () Bool)

(assert (=> b!8052560 m!8404274))

(assert (=> b!8052560 m!8403906))

(assert (=> b!8052563 m!8404270))

(assert (=> b!8052563 m!8404270))

(declare-fun m!8404276 () Bool)

(assert (=> b!8052563 m!8404276))

(assert (=> b!8052573 m!8404270))

(declare-fun m!8404278 () Bool)

(assert (=> b!8052572 m!8404278))

(declare-fun m!8404280 () Bool)

(assert (=> b!8052570 m!8404280))

(assert (=> b!8052570 m!8402992))

(assert (=> b!8052570 m!8402992))

(declare-fun m!8404282 () Bool)

(assert (=> b!8052570 m!8404282))

(declare-fun m!8404284 () Bool)

(assert (=> b!8052570 m!8404284))

(assert (=> b!8052570 m!8404284))

(declare-fun m!8404286 () Bool)

(assert (=> b!8052570 m!8404286))

(declare-fun m!8404288 () Bool)

(assert (=> bm!747097 m!8404288))

(declare-fun m!8404290 () Bool)

(assert (=> bm!747094 m!8404290))

(declare-fun m!8404292 () Bool)

(assert (=> b!8052569 m!8404292))

(assert (=> d!2397394 d!2397686))

(declare-fun b!8052581 () Bool)

(declare-fun e!4744965 () Bool)

(declare-fun tp!2413690 () Bool)

(assert (=> b!8052581 (= e!4744965 (and tp_is_empty!54875 tp_is_empty!54877 tp!2413690))))

(assert (=> b!8052052 (= tp!2413688 e!4744965)))

(assert (= (and b!8052052 ((_ is Cons!75534) (t!391432 (toList!11914 acc!1298)))) b!8052581))

(declare-fun tp!2413691 () Bool)

(declare-fun b!8052582 () Bool)

(declare-fun e!4744966 () Bool)

(assert (=> b!8052582 (= e!4744966 (and tp_is_empty!54875 tp_is_empty!54877 tp!2413691))))

(assert (=> b!8052053 (= tp!2413689 e!4744966)))

(assert (= (and b!8052053 ((_ is Cons!75534) (t!391432 (t!391432 l!14636)))) b!8052582))

(declare-fun b_lambda!290421 () Bool)

(assert (= b_lambda!290405 (or b!8051996 b_lambda!290421)))

(declare-fun bs!1972469 () Bool)

(declare-fun d!2397706 () Bool)

(assert (= bs!1972469 (and d!2397706 b!8051996)))

(assert (=> bs!1972469 (= (dynLambda!30269 lambda!473438 (h!81982 (toList!11914 lt!2725980))) (contains!21191 lt!2725971 (_1!38741 (h!81982 (toList!11914 lt!2725980)))))))

(declare-fun m!8404310 () Bool)

(assert (=> bs!1972469 m!8404310))

(assert (=> b!8052392 d!2397706))

(declare-fun b_lambda!290423 () Bool)

(assert (= b_lambda!290395 (or d!2397416 b_lambda!290423)))

(declare-fun bs!1972470 () Bool)

(declare-fun d!2397710 () Bool)

(assert (= bs!1972470 (and d!2397710 d!2397416)))

(assert (=> bs!1972470 (= (dynLambda!30269 lambda!473443 (h!81982 l!14636)) (contains!21191 lt!2726022 (_1!38741 (h!81982 l!14636))))))

(declare-fun m!8404312 () Bool)

(assert (=> bs!1972470 m!8404312))

(assert (=> b!8052274 d!2397710))

(declare-fun b_lambda!290425 () Bool)

(assert (= b_lambda!290363 (or b!8052047 b_lambda!290425)))

(declare-fun bs!1972471 () Bool)

(declare-fun d!2397712 () Bool)

(assert (= bs!1972471 (and d!2397712 b!8052047)))

(assert (=> bs!1972471 (= (dynLambda!30269 lambda!473442 (h!81982 l!14636)) (contains!21191 lt!2726027 (_1!38741 (h!81982 l!14636))))))

(assert (=> bs!1972471 m!8403318))

(assert (=> d!2397426 d!2397712))

(declare-fun b_lambda!290427 () Bool)

(assert (= b_lambda!290403 (or b!8051996 b_lambda!290427)))

(declare-fun bs!1972472 () Bool)

(declare-fun d!2397716 () Bool)

(assert (= bs!1972472 (and d!2397716 b!8051996)))

(assert (=> bs!1972472 (= (dynLambda!30269 lambda!473438 (h!81982 (t!391432 (t!391432 l!14636)))) (contains!21191 lt!2725971 (_1!38741 (h!81982 (t!391432 (t!391432 l!14636))))))))

(declare-fun m!8404318 () Bool)

(assert (=> bs!1972472 m!8404318))

(assert (=> b!8052388 d!2397716))

(declare-fun b_lambda!290429 () Bool)

(assert (= b_lambda!290391 (or d!2397372 b_lambda!290429)))

(declare-fun bs!1972473 () Bool)

(declare-fun d!2397718 () Bool)

(assert (= bs!1972473 (and d!2397718 d!2397372)))

(assert (=> bs!1972473 (= (dynLambda!30269 lambda!473439 (h!81982 (t!391432 l!14636))) (contains!21191 lt!2725966 (_1!38741 (h!81982 (t!391432 l!14636)))))))

(declare-fun m!8404320 () Bool)

(assert (=> bs!1972473 m!8404320))

(assert (=> b!8052268 d!2397718))

(declare-fun b_lambda!290431 () Bool)

(assert (= b_lambda!290365 (or b!8052047 b_lambda!290431)))

(assert (=> b!8052091 d!2397712))

(declare-fun b_lambda!290433 () Bool)

(assert (= b_lambda!290413 (or b!8051996 b_lambda!290433)))

(declare-fun bs!1972474 () Bool)

(declare-fun d!2397720 () Bool)

(assert (= bs!1972474 (and d!2397720 b!8051996)))

(assert (=> bs!1972474 (= (dynLambda!30269 lambda!473438 (h!81982 (t!391432 l!14636))) (contains!21191 lt!2725971 (_1!38741 (h!81982 (t!391432 l!14636)))))))

(assert (=> bs!1972474 m!8403212))

(assert (=> d!2397674 d!2397720))

(declare-fun b_lambda!290435 () Bool)

(assert (= b_lambda!290359 (or d!2397372 b_lambda!290435)))

(declare-fun bs!1972475 () Bool)

(declare-fun d!2397724 () Bool)

(assert (= bs!1972475 (and d!2397724 d!2397372)))

(assert (=> bs!1972475 (= (dynLambda!30269 lambda!473439 (h!81982 (toList!11914 lt!2725732))) (contains!21191 lt!2725966 (_1!38741 (h!81982 (toList!11914 lt!2725732)))))))

(declare-fun m!8404326 () Bool)

(assert (=> bs!1972475 m!8404326))

(assert (=> b!8052060 d!2397724))

(declare-fun b_lambda!290437 () Bool)

(assert (= b_lambda!290387 (or d!2397416 b_lambda!290437)))

(declare-fun bs!1972476 () Bool)

(declare-fun d!2397726 () Bool)

(assert (= bs!1972476 (and d!2397726 d!2397416)))

(assert (=> bs!1972476 (= (dynLambda!30269 lambda!473443 (h!81982 (toList!11914 acc!1298))) (contains!21191 lt!2726022 (_1!38741 (h!81982 (toList!11914 acc!1298)))))))

(declare-fun m!8404328 () Bool)

(assert (=> bs!1972476 m!8404328))

(assert (=> b!8052230 d!2397726))

(declare-fun b_lambda!290439 () Bool)

(assert (= b_lambda!290409 (or b!8051996 b_lambda!290439)))

(declare-fun bs!1972477 () Bool)

(declare-fun d!2397728 () Bool)

(assert (= bs!1972477 (and d!2397728 b!8051996)))

(assert (=> bs!1972477 (= (dynLambda!30269 lambda!473437 (h!81982 (toList!11914 lt!2725732))) (contains!21191 lt!2725732 (_1!38741 (h!81982 (toList!11914 lt!2725732)))))))

(declare-fun m!8404334 () Bool)

(assert (=> bs!1972477 m!8404334))

(assert (=> b!8052408 d!2397728))

(declare-fun b_lambda!290441 () Bool)

(assert (= b_lambda!290369 (or b!8052047 b_lambda!290441)))

(declare-fun bs!1972478 () Bool)

(declare-fun d!2397731 () Bool)

(assert (= bs!1972478 (and d!2397731 b!8052047)))

(assert (=> bs!1972478 (= (dynLambda!30269 lambda!473442 (h!81982 (toList!11914 acc!1298))) (contains!21191 lt!2726027 (_1!38741 (h!81982 (toList!11914 acc!1298)))))))

(declare-fun m!8404338 () Bool)

(assert (=> bs!1972478 m!8404338))

(assert (=> b!8052095 d!2397731))

(declare-fun b_lambda!290443 () Bool)

(assert (= b_lambda!290371 (or b!8052047 b_lambda!290443)))

(declare-fun bs!1972479 () Bool)

(declare-fun d!2397734 () Bool)

(assert (= bs!1972479 (and d!2397734 b!8052047)))

(assert (=> bs!1972479 (= (dynLambda!30269 lambda!473441 (h!81982 (toList!11914 acc!1298))) (contains!21191 acc!1298 (_1!38741 (h!81982 (toList!11914 acc!1298)))))))

(declare-fun m!8404340 () Bool)

(assert (=> bs!1972479 m!8404340))

(assert (=> b!8052097 d!2397734))

(declare-fun b_lambda!290445 () Bool)

(assert (= b_lambda!290411 (or b!8051996 b_lambda!290445)))

(declare-fun bs!1972480 () Bool)

(declare-fun d!2397736 () Bool)

(assert (= bs!1972480 (and d!2397736 b!8051996)))

(assert (=> bs!1972480 (= (dynLambda!30269 lambda!473438 (h!81982 (toList!11914 lt!2725732))) (contains!21191 lt!2725971 (_1!38741 (h!81982 (toList!11914 lt!2725732)))))))

(declare-fun m!8404342 () Bool)

(assert (=> bs!1972480 m!8404342))

(assert (=> b!8052427 d!2397736))

(declare-fun b_lambda!290447 () Bool)

(assert (= b_lambda!290367 (or b!8052047 b_lambda!290447)))

(declare-fun bs!1972482 () Bool)

(declare-fun d!2397738 () Bool)

(assert (= bs!1972482 (and d!2397738 b!8052047)))

(assert (=> bs!1972482 (= (dynLambda!30269 lambda!473442 (h!81982 (t!391432 l!14636))) (contains!21191 lt!2726027 (_1!38741 (h!81982 (t!391432 l!14636)))))))

(declare-fun m!8404344 () Bool)

(assert (=> bs!1972482 m!8404344))

(assert (=> b!8052093 d!2397738))

(declare-fun b_lambda!290449 () Bool)

(assert (= b_lambda!290415 (or b!8051996 b_lambda!290449)))

(assert (=> b!8052459 d!2397720))

(declare-fun b_lambda!290451 () Bool)

(assert (= b_lambda!290361 (or b!8052047 b_lambda!290451)))

(declare-fun bs!1972485 () Bool)

(declare-fun d!2397740 () Bool)

(assert (= bs!1972485 (and d!2397740 b!8052047)))

(assert (=> bs!1972485 (= (dynLambda!30269 lambda!473442 (h!81982 (toList!11914 lt!2726036))) (contains!21191 lt!2726027 (_1!38741 (h!81982 (toList!11914 lt!2726036)))))))

(declare-fun m!8404346 () Bool)

(assert (=> bs!1972485 m!8404346))

(assert (=> b!8052062 d!2397740))

(check-sat (not b_lambda!290399) (not b!8052209) (not d!2397584) (not bs!1972476) (not b_lambda!290431) (not b!8052393) (not b!8052397) (not b!8052283) (not b!8052440) (not b!8052458) (not d!2397486) (not d!2397522) (not b!8052090) (not d!2397602) (not b_lambda!290425) (not b!8052251) (not bm!747073) (not d!2397504) (not d!2397672) (not d!2397578) (not d!2397624) (not b!8052478) (not bs!1972480) (not d!2397596) (not b!8052570) (not b!8052285) (not b!8052104) (not b!8052111) (not b_lambda!290401) (not bm!747059) (not bs!1972475) (not b!8052132) (not d!2397572) (not b!8052271) (not b_lambda!290423) (not b!8052295) (not b!8052398) (not d!2397590) (not bs!1972477) (not d!2397616) (not b!8052079) (not b!8052078) (not b!8052561) (not b_lambda!290397) (not b!8052072) (not b!8052098) (not b!8052207) (not b!8052336) (not b!8052320) (not d!2397488) (not b!8052350) (not b!8052088) (not bm!747070) (not b!8052286) (not b!8052275) (not b!8052428) (not d!2397552) (not b!8052219) (not d!2397576) (not b!8052410) (not b_lambda!290429) (not b!8052442) (not b!8052420) (not bm!747061) (not b_lambda!290441) (not b_lambda!290449) (not b!8052096) (not b!8052139) (not b!8052265) (not d!2397498) (not b!8052291) (not d!2397492) (not b!8052414) (not b!8052569) (not d!2397442) (not b!8052290) (not b!8052456) (not b!8052326) (not b_lambda!290439) (not b_lambda!290447) (not b!8052300) (not b!8052065) (not b!8052438) (not b!8052223) (not b!8052560) (not bs!1972478) (not b!8052238) (not b!8052572) (not b!8052080) (not b!8052362) (not d!2397606) (not b!8052137) (not d!2397586) (not d!2397568) (not b!8052297) (not b!8052288) (not b!8052337) (not b!8052231) (not b!8052094) (not b!8052457) (not bm!747060) (not b!8052211) (not b!8052084) (not b!8052416) (not bm!747071) (not b!8052485) (not b!8052412) (not b!8052076) (not b!8052064) (not bs!1972472) (not b_lambda!290421) (not b_lambda!290443) (not d!2397424) (not b!8052413) (not bs!1972482) (not b!8052357) (not b!8052085) (not b!8052335) (not b!8052376) (not b!8052573) (not b_lambda!290437) (not bm!747069) (not b!8052469) (not b!8052434) (not b!8052359) (not d!2397564) (not b!8052296) (not b!8052358) (not b!8052352) (not b!8052435) (not b!8052083) (not b!8052328) (not b!8052263) (not b!8052245) (not d!2397550) (not b!8052466) (not b!8052267) (not b!8052467) (not b!8052269) (not d!2397508) (not b!8052563) (not b!8052460) (not d!2397684) (not d!2397514) (not b!8052249) (not b!8052061) (not b!8052063) (not b!8052465) (not b!8052066) (not b!8052319) (not b!8052473) (not b!8052354) (not bm!747058) (not bs!1972471) (not b!8052299) (not b!8052317) (not b!8052582) (not d!2397546) (not b!8052135) (not d!2397430) (not d!2397558) tp_is_empty!54877 (not b!8052112) (not d!2397520) (not b!8052471) (not b!8052092) (not bs!1972479) (not b!8052054) (not b!8052375) (not bm!747097) (not d!2397686) (not d!2397664) (not bm!747068) (not b!8052396) (not d!2397458) (not b!8052070) (not b!8052418) (not bs!1972470) (not d!2397502) (not d!2397674) (not bs!1972474) (not d!2397460) (not b_lambda!290445) (not b!8052415) (not b_lambda!290451) (not b!8052361) (not d!2397574) (not b!8052436) (not b_lambda!290435) (not b!8052468) (not d!2397614) (not b!8052068) (not b!8052318) (not b!8052287) (not b!8052394) (not d!2397678) (not b!8052234) (not b!8052261) (not b_lambda!290433) (not b!8052055) (not d!2397660) (not b!8052075) (not d!2397544) (not bs!1972473) (not d!2397644) (not d!2397600) (not b!8052581) (not bs!1972469) (not d!2397432) tp_is_empty!54875 (not d!2397462) (not b!8052082) (not d!2397426) (not b!8052389) (not b!8052067) (not b!8052212) (not d!2397536) (not d!2397456) (not d!2397444) (not b!8052384) (not b!8052484) (not bs!1972485) (not bm!747067) (not b!8052086) (not b_lambda!290427) (not b!8052113) (not bm!747094) (not b!8052437) (not d!2397562) (not d!2397518) (not d!2397618) (not b!8052208) (not d!2397428) (not b!8052333) (not bm!747057) (not b!8052247) (not b!8052566) (not b!8052374) (not b_lambda!290389))
(check-sat)
