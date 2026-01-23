; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758216 () Bool)

(assert start!758216)

(declare-fun b!8050982 () Bool)

(declare-fun e!4743901 () Bool)

(declare-fun lt!2724851 () Bool)

(assert (=> b!8050982 (= e!4743901 (not lt!2724851))))

(declare-fun b!8050983 () Bool)

(declare-fun e!4743908 () Bool)

(declare-fun e!4743902 () Bool)

(assert (=> b!8050983 (= e!4743908 e!4743902)))

(declare-fun res!3183292 () Bool)

(assert (=> b!8050983 (=> (not res!3183292) (not e!4743902))))

(declare-fun e!4743905 () Bool)

(assert (=> b!8050983 (= res!3183292 e!4743905)))

(declare-fun res!3183295 () Bool)

(assert (=> b!8050983 (=> res!3183295 e!4743905)))

(declare-fun e!4743907 () Bool)

(assert (=> b!8050983 (= res!3183295 e!4743907)))

(declare-fun res!3183291 () Bool)

(assert (=> b!8050983 (=> (not res!3183291) (not e!4743907))))

(assert (=> b!8050983 (= res!3183291 lt!2724851)))

(declare-datatypes ((K!22783 0))(
  ( (K!22784 (val!32899 Int)) )
))
(declare-datatypes ((V!23037 0))(
  ( (V!23038 (val!32900 Int)) )
))
(declare-datatypes ((tuple2!70864 0))(
  ( (tuple2!70865 (_1!38735 K!22783) (_2!38735 V!23037)) )
))
(declare-datatypes ((List!75648 0))(
  ( (Nil!75522) (Cons!75522 (h!81970 tuple2!70864) (t!391420 List!75648)) )
))
(declare-datatypes ((ListMap!7267 0))(
  ( (ListMap!7268 (toList!11908 List!75648)) )
))
(declare-fun acc!1298 () ListMap!7267)

(declare-fun key!6222 () K!22783)

(declare-fun contains!21173 (ListMap!7267 K!22783) Bool)

(assert (=> b!8050983 (= lt!2724851 (contains!21173 acc!1298 key!6222))))

(declare-fun res!3183286 () Bool)

(assert (=> start!758216 (=> (not res!3183286) (not e!4743908))))

(declare-fun l!14636 () List!75648)

(declare-fun noDuplicateKeys!2694 (List!75648) Bool)

(assert (=> start!758216 (= res!3183286 (noDuplicateKeys!2694 l!14636))))

(assert (=> start!758216 e!4743908))

(declare-fun e!4743906 () Bool)

(assert (=> start!758216 e!4743906))

(declare-fun e!4743904 () Bool)

(declare-fun inv!97272 (ListMap!7267) Bool)

(assert (=> start!758216 (and (inv!97272 acc!1298) e!4743904)))

(declare-fun tp_is_empty!54851 () Bool)

(assert (=> start!758216 tp_is_empty!54851))

(declare-fun tp_is_empty!54853 () Bool)

(assert (=> start!758216 tp_is_empty!54853))

(declare-fun b!8050984 () Bool)

(declare-fun e!4743903 () Bool)

(declare-fun containsKey!4829 (List!75648 K!22783) Bool)

(assert (=> b!8050984 (= e!4743903 (containsKey!4829 (t!391420 l!14636) key!6222))))

(declare-fun b!8050985 () Bool)

(declare-fun res!3183289 () Bool)

(assert (=> b!8050985 (=> (not res!3183289) (not e!4743902))))

(get-info :version)

(assert (=> b!8050985 (= res!3183289 (not ((_ is Nil!75522) l!14636)))))

(declare-fun b!8050986 () Bool)

(declare-fun res!3183288 () Bool)

(assert (=> b!8050986 (=> (not res!3183288) (not e!4743907))))

(declare-fun value!3131 () V!23037)

(declare-fun apply!14421 (ListMap!7267 K!22783) V!23037)

(assert (=> b!8050986 (= res!3183288 (= (apply!14421 acc!1298 key!6222) value!3131))))

(declare-fun b!8050987 () Bool)

(assert (=> b!8050987 (= e!4743907 (not (containsKey!4829 l!14636 key!6222)))))

(declare-fun b!8050988 () Bool)

(assert (=> b!8050988 (= e!4743905 e!4743901)))

(declare-fun res!3183287 () Bool)

(assert (=> b!8050988 (=> (not res!3183287) (not e!4743901))))

(assert (=> b!8050988 (= res!3183287 (containsKey!4829 l!14636 key!6222))))

(declare-fun b!8050989 () Bool)

(declare-fun tp!2413620 () Bool)

(assert (=> b!8050989 (= e!4743906 (and tp_is_empty!54851 tp_is_empty!54853 tp!2413620))))

(declare-fun b!8050990 () Bool)

(assert (=> b!8050990 (= e!4743902 e!4743903)))

(declare-fun res!3183293 () Bool)

(assert (=> b!8050990 (=> (not res!3183293) (not e!4743903))))

(assert (=> b!8050990 (= res!3183293 (= (_1!38735 (h!81970 l!14636)) key!6222))))

(declare-fun lt!2724852 () ListMap!7267)

(declare-fun addToMapMapFromBucket!1975 (List!75648 ListMap!7267) ListMap!7267)

(declare-fun +!2659 (ListMap!7267 tuple2!70864) ListMap!7267)

(assert (=> b!8050990 (= lt!2724852 (addToMapMapFromBucket!1975 (t!391420 l!14636) (+!2659 acc!1298 (h!81970 l!14636))))))

(declare-fun b!8050991 () Bool)

(declare-fun tp!2413621 () Bool)

(assert (=> b!8050991 (= e!4743904 tp!2413621)))

(declare-fun b!8050992 () Bool)

(declare-fun res!3183294 () Bool)

(assert (=> b!8050992 (=> (not res!3183294) (not e!4743908))))

(assert (=> b!8050992 (= res!3183294 (contains!21173 (addToMapMapFromBucket!1975 l!14636 acc!1298) key!6222))))

(declare-fun b!8050993 () Bool)

(declare-fun res!3183290 () Bool)

(assert (=> b!8050993 (=> (not res!3183290) (not e!4743901))))

(declare-fun contains!21174 (List!75648 tuple2!70864) Bool)

(assert (=> b!8050993 (= res!3183290 (contains!21174 l!14636 (tuple2!70865 key!6222 value!3131)))))

(assert (= (and start!758216 res!3183286) b!8050992))

(assert (= (and b!8050992 res!3183294) b!8050983))

(assert (= (and b!8050983 res!3183291) b!8050986))

(assert (= (and b!8050986 res!3183288) b!8050987))

(assert (= (and b!8050983 (not res!3183295)) b!8050988))

(assert (= (and b!8050988 res!3183287) b!8050993))

(assert (= (and b!8050993 res!3183290) b!8050982))

(assert (= (and b!8050983 res!3183292) b!8050985))

(assert (= (and b!8050985 res!3183289) b!8050990))

(assert (= (and b!8050990 res!3183293) b!8050984))

(assert (= (and start!758216 ((_ is Cons!75522) l!14636)) b!8050989))

(assert (= start!758216 b!8050991))

(declare-fun m!8401912 () Bool)

(assert (=> start!758216 m!8401912))

(declare-fun m!8401914 () Bool)

(assert (=> start!758216 m!8401914))

(declare-fun m!8401916 () Bool)

(assert (=> b!8050992 m!8401916))

(assert (=> b!8050992 m!8401916))

(declare-fun m!8401918 () Bool)

(assert (=> b!8050992 m!8401918))

(declare-fun m!8401920 () Bool)

(assert (=> b!8050988 m!8401920))

(declare-fun m!8401922 () Bool)

(assert (=> b!8050990 m!8401922))

(assert (=> b!8050990 m!8401922))

(declare-fun m!8401924 () Bool)

(assert (=> b!8050990 m!8401924))

(assert (=> b!8050987 m!8401920))

(declare-fun m!8401926 () Bool)

(assert (=> b!8050993 m!8401926))

(declare-fun m!8401928 () Bool)

(assert (=> b!8050983 m!8401928))

(declare-fun m!8401930 () Bool)

(assert (=> b!8050986 m!8401930))

(declare-fun m!8401932 () Bool)

(assert (=> b!8050984 m!8401932))

(check-sat (not b!8050987) (not start!758216) (not b!8050991) tp_is_empty!54853 (not b!8050993) (not b!8050992) (not b!8050990) (not b!8050986) (not b!8050989) (not b!8050984) tp_is_empty!54851 (not b!8050983) (not b!8050988))
(check-sat)
(get-model)

(declare-fun d!2397197 () Bool)

(declare-fun res!3183300 () Bool)

(declare-fun e!4743913 () Bool)

(assert (=> d!2397197 (=> res!3183300 e!4743913)))

(assert (=> d!2397197 (= res!3183300 (and ((_ is Cons!75522) (t!391420 l!14636)) (= (_1!38735 (h!81970 (t!391420 l!14636))) key!6222)))))

(assert (=> d!2397197 (= (containsKey!4829 (t!391420 l!14636) key!6222) e!4743913)))

(declare-fun b!8050998 () Bool)

(declare-fun e!4743914 () Bool)

(assert (=> b!8050998 (= e!4743913 e!4743914)))

(declare-fun res!3183301 () Bool)

(assert (=> b!8050998 (=> (not res!3183301) (not e!4743914))))

(assert (=> b!8050998 (= res!3183301 ((_ is Cons!75522) (t!391420 l!14636)))))

(declare-fun b!8050999 () Bool)

(assert (=> b!8050999 (= e!4743914 (containsKey!4829 (t!391420 (t!391420 l!14636)) key!6222))))

(assert (= (and d!2397197 (not res!3183300)) b!8050998))

(assert (= (and b!8050998 res!3183301) b!8050999))

(declare-fun m!8401934 () Bool)

(assert (=> b!8050999 m!8401934))

(assert (=> b!8050984 d!2397197))

(declare-fun b!8051037 () Bool)

(assert (=> b!8051037 true))

(declare-fun bs!1971958 () Bool)

(declare-fun b!8051033 () Bool)

(assert (= bs!1971958 (and b!8051033 b!8051037)))

(declare-fun lambda!473217 () Int)

(declare-fun lambda!473216 () Int)

(assert (=> bs!1971958 (= lambda!473217 lambda!473216)))

(assert (=> b!8051033 true))

(declare-fun lambda!473218 () Int)

(declare-fun lt!2724989 () ListMap!7267)

(assert (=> bs!1971958 (= (= lt!2724989 (+!2659 acc!1298 (h!81970 l!14636))) (= lambda!473218 lambda!473216))))

(assert (=> b!8051033 (= (= lt!2724989 (+!2659 acc!1298 (h!81970 l!14636))) (= lambda!473218 lambda!473217))))

(assert (=> b!8051033 true))

(declare-fun bs!1971959 () Bool)

(declare-fun d!2397199 () Bool)

(assert (= bs!1971959 (and d!2397199 b!8051037)))

(declare-fun lt!2724972 () ListMap!7267)

(declare-fun lambda!473219 () Int)

(assert (=> bs!1971959 (= (= lt!2724972 (+!2659 acc!1298 (h!81970 l!14636))) (= lambda!473219 lambda!473216))))

(declare-fun bs!1971960 () Bool)

(assert (= bs!1971960 (and d!2397199 b!8051033)))

(assert (=> bs!1971960 (= (= lt!2724972 (+!2659 acc!1298 (h!81970 l!14636))) (= lambda!473219 lambda!473217))))

(assert (=> bs!1971960 (= (= lt!2724972 lt!2724989) (= lambda!473219 lambda!473218))))

(assert (=> d!2397199 true))

(declare-fun bm!746938 () Bool)

(declare-datatypes ((Unit!171466 0))(
  ( (Unit!171467) )
))
(declare-fun call!746944 () Unit!171466)

(declare-fun lemmaContainsAllItsOwnKeys!1075 (ListMap!7267) Unit!171466)

(assert (=> bm!746938 (= call!746944 (lemmaContainsAllItsOwnKeys!1075 (+!2659 acc!1298 (h!81970 l!14636))))))

(declare-fun e!4743934 () ListMap!7267)

(assert (=> b!8051033 (= e!4743934 lt!2724989)))

(declare-fun lt!2724970 () ListMap!7267)

(assert (=> b!8051033 (= lt!2724970 (+!2659 (+!2659 acc!1298 (h!81970 l!14636)) (h!81970 (t!391420 l!14636))))))

(assert (=> b!8051033 (= lt!2724989 (addToMapMapFromBucket!1975 (t!391420 (t!391420 l!14636)) (+!2659 (+!2659 acc!1298 (h!81970 l!14636)) (h!81970 (t!391420 l!14636)))))))

(declare-fun lt!2724983 () Unit!171466)

(assert (=> b!8051033 (= lt!2724983 call!746944)))

(declare-fun forall!18492 (List!75648 Int) Bool)

(assert (=> b!8051033 (forall!18492 (toList!11908 (+!2659 acc!1298 (h!81970 l!14636))) lambda!473217)))

(declare-fun lt!2724971 () Unit!171466)

(assert (=> b!8051033 (= lt!2724971 lt!2724983)))

(declare-fun call!746945 () Bool)

(assert (=> b!8051033 call!746945))

(declare-fun lt!2724976 () Unit!171466)

(declare-fun Unit!171468 () Unit!171466)

(assert (=> b!8051033 (= lt!2724976 Unit!171468)))

(assert (=> b!8051033 (forall!18492 (t!391420 (t!391420 l!14636)) lambda!473218)))

(declare-fun lt!2724990 () Unit!171466)

(declare-fun Unit!171469 () Unit!171466)

(assert (=> b!8051033 (= lt!2724990 Unit!171469)))

(declare-fun lt!2724978 () Unit!171466)

(declare-fun Unit!171470 () Unit!171466)

(assert (=> b!8051033 (= lt!2724978 Unit!171470)))

(declare-fun lt!2724985 () Unit!171466)

(declare-fun forallContained!4646 (List!75648 Int tuple2!70864) Unit!171466)

(assert (=> b!8051033 (= lt!2724985 (forallContained!4646 (toList!11908 lt!2724970) lambda!473218 (h!81970 (t!391420 l!14636))))))

(assert (=> b!8051033 (contains!21173 lt!2724970 (_1!38735 (h!81970 (t!391420 l!14636))))))

(declare-fun lt!2724982 () Unit!171466)

(declare-fun Unit!171471 () Unit!171466)

(assert (=> b!8051033 (= lt!2724982 Unit!171471)))

(assert (=> b!8051033 (contains!21173 lt!2724989 (_1!38735 (h!81970 (t!391420 l!14636))))))

(declare-fun lt!2724987 () Unit!171466)

(declare-fun Unit!171472 () Unit!171466)

(assert (=> b!8051033 (= lt!2724987 Unit!171472)))

(assert (=> b!8051033 (forall!18492 (t!391420 l!14636) lambda!473218)))

(declare-fun lt!2724988 () Unit!171466)

(declare-fun Unit!171473 () Unit!171466)

(assert (=> b!8051033 (= lt!2724988 Unit!171473)))

(declare-fun call!746943 () Bool)

(assert (=> b!8051033 call!746943))

(declare-fun lt!2724975 () Unit!171466)

(declare-fun Unit!171475 () Unit!171466)

(assert (=> b!8051033 (= lt!2724975 Unit!171475)))

(declare-fun lt!2724980 () Unit!171466)

(declare-fun Unit!171476 () Unit!171466)

(assert (=> b!8051033 (= lt!2724980 Unit!171476)))

(declare-fun lt!2724986 () Unit!171466)

(declare-fun addForallContainsKeyThenBeforeAdding!1073 (ListMap!7267 ListMap!7267 K!22783 V!23037) Unit!171466)

(assert (=> b!8051033 (= lt!2724986 (addForallContainsKeyThenBeforeAdding!1073 (+!2659 acc!1298 (h!81970 l!14636)) lt!2724989 (_1!38735 (h!81970 (t!391420 l!14636))) (_2!38735 (h!81970 (t!391420 l!14636)))))))

(assert (=> b!8051033 (forall!18492 (toList!11908 (+!2659 acc!1298 (h!81970 l!14636))) lambda!473218)))

(declare-fun lt!2724984 () Unit!171466)

(assert (=> b!8051033 (= lt!2724984 lt!2724986)))

(assert (=> b!8051033 (forall!18492 (toList!11908 (+!2659 acc!1298 (h!81970 l!14636))) lambda!473218)))

(declare-fun lt!2724977 () Unit!171466)

(declare-fun Unit!171477 () Unit!171466)

(assert (=> b!8051033 (= lt!2724977 Unit!171477)))

(declare-fun res!3183323 () Bool)

(assert (=> b!8051033 (= res!3183323 (forall!18492 (t!391420 l!14636) lambda!473218))))

(declare-fun e!4743933 () Bool)

(assert (=> b!8051033 (=> (not res!3183323) (not e!4743933))))

(assert (=> b!8051033 e!4743933))

(declare-fun lt!2724973 () Unit!171466)

(declare-fun Unit!171478 () Unit!171466)

(assert (=> b!8051033 (= lt!2724973 Unit!171478)))

(declare-fun b!8051034 () Bool)

(assert (=> b!8051034 (= e!4743933 (forall!18492 (toList!11908 (+!2659 acc!1298 (h!81970 l!14636))) lambda!473218))))

(declare-fun c!1475835 () Bool)

(declare-fun bm!746939 () Bool)

(assert (=> bm!746939 (= call!746945 (forall!18492 (ite c!1475835 (toList!11908 (+!2659 acc!1298 (h!81970 l!14636))) (toList!11908 lt!2724970)) (ite c!1475835 lambda!473216 lambda!473218)))))

(declare-fun b!8051036 () Bool)

(declare-fun res!3183324 () Bool)

(declare-fun e!4743935 () Bool)

(assert (=> b!8051036 (=> (not res!3183324) (not e!4743935))))

(assert (=> b!8051036 (= res!3183324 (forall!18492 (toList!11908 (+!2659 acc!1298 (h!81970 l!14636))) lambda!473219))))

(declare-fun bm!746940 () Bool)

(assert (=> bm!746940 (= call!746943 (forall!18492 (ite c!1475835 (toList!11908 (+!2659 acc!1298 (h!81970 l!14636))) (toList!11908 lt!2724970)) (ite c!1475835 lambda!473216 lambda!473218)))))

(assert (=> b!8051037 (= e!4743934 (+!2659 acc!1298 (h!81970 l!14636)))))

(declare-fun lt!2724981 () Unit!171466)

(assert (=> b!8051037 (= lt!2724981 call!746944)))

(assert (=> b!8051037 call!746945))

(declare-fun lt!2724979 () Unit!171466)

(assert (=> b!8051037 (= lt!2724979 lt!2724981)))

(assert (=> b!8051037 call!746943))

(declare-fun lt!2724974 () Unit!171466)

(declare-fun Unit!171480 () Unit!171466)

(assert (=> b!8051037 (= lt!2724974 Unit!171480)))

(assert (=> d!2397199 e!4743935))

(declare-fun res!3183325 () Bool)

(assert (=> d!2397199 (=> (not res!3183325) (not e!4743935))))

(assert (=> d!2397199 (= res!3183325 (forall!18492 (t!391420 l!14636) lambda!473219))))

(assert (=> d!2397199 (= lt!2724972 e!4743934)))

(assert (=> d!2397199 (= c!1475835 ((_ is Nil!75522) (t!391420 l!14636)))))

(assert (=> d!2397199 (noDuplicateKeys!2694 (t!391420 l!14636))))

(assert (=> d!2397199 (= (addToMapMapFromBucket!1975 (t!391420 l!14636) (+!2659 acc!1298 (h!81970 l!14636))) lt!2724972)))

(declare-fun b!8051035 () Bool)

(declare-fun invariantList!1923 (List!75648) Bool)

(assert (=> b!8051035 (= e!4743935 (invariantList!1923 (toList!11908 lt!2724972)))))

(assert (= (and d!2397199 c!1475835) b!8051037))

(assert (= (and d!2397199 (not c!1475835)) b!8051033))

(assert (= (and b!8051033 res!3183323) b!8051034))

(assert (= (or b!8051037 b!8051033) bm!746940))

(assert (= (or b!8051037 b!8051033) bm!746939))

(assert (= (or b!8051037 b!8051033) bm!746938))

(assert (= (and d!2397199 res!3183325) b!8051036))

(assert (= (and b!8051036 res!3183324) b!8051035))

(declare-fun m!8401986 () Bool)

(assert (=> bm!746940 m!8401986))

(assert (=> bm!746939 m!8401986))

(declare-fun m!8401988 () Bool)

(assert (=> b!8051034 m!8401988))

(assert (=> bm!746938 m!8401922))

(declare-fun m!8401990 () Bool)

(assert (=> bm!746938 m!8401990))

(declare-fun m!8401992 () Bool)

(assert (=> d!2397199 m!8401992))

(declare-fun m!8401994 () Bool)

(assert (=> d!2397199 m!8401994))

(declare-fun m!8401996 () Bool)

(assert (=> b!8051035 m!8401996))

(declare-fun m!8401998 () Bool)

(assert (=> b!8051033 m!8401998))

(declare-fun m!8402000 () Bool)

(assert (=> b!8051033 m!8402000))

(assert (=> b!8051033 m!8401988))

(declare-fun m!8402002 () Bool)

(assert (=> b!8051033 m!8402002))

(assert (=> b!8051033 m!8401922))

(declare-fun m!8402004 () Bool)

(assert (=> b!8051033 m!8402004))

(declare-fun m!8402006 () Bool)

(assert (=> b!8051033 m!8402006))

(assert (=> b!8051033 m!8401998))

(assert (=> b!8051033 m!8402004))

(declare-fun m!8402008 () Bool)

(assert (=> b!8051033 m!8402008))

(declare-fun m!8402010 () Bool)

(assert (=> b!8051033 m!8402010))

(declare-fun m!8402012 () Bool)

(assert (=> b!8051033 m!8402012))

(assert (=> b!8051033 m!8401922))

(declare-fun m!8402014 () Bool)

(assert (=> b!8051033 m!8402014))

(assert (=> b!8051033 m!8401988))

(declare-fun m!8402016 () Bool)

(assert (=> b!8051036 m!8402016))

(assert (=> b!8050990 d!2397199))

(declare-fun d!2397207 () Bool)

(declare-fun e!4743944 () Bool)

(assert (=> d!2397207 e!4743944))

(declare-fun res!3183336 () Bool)

(assert (=> d!2397207 (=> (not res!3183336) (not e!4743944))))

(declare-fun lt!2725002 () ListMap!7267)

(assert (=> d!2397207 (= res!3183336 (contains!21173 lt!2725002 (_1!38735 (h!81970 l!14636))))))

(declare-fun lt!2724999 () List!75648)

(assert (=> d!2397207 (= lt!2725002 (ListMap!7268 lt!2724999))))

(declare-fun lt!2725000 () Unit!171466)

(declare-fun lt!2725001 () Unit!171466)

(assert (=> d!2397207 (= lt!2725000 lt!2725001)))

(declare-datatypes ((Option!17988 0))(
  ( (None!17987) (Some!17987 (v!55282 V!23037)) )
))
(declare-fun getValueByKey!2772 (List!75648 K!22783) Option!17988)

(assert (=> d!2397207 (= (getValueByKey!2772 lt!2724999 (_1!38735 (h!81970 l!14636))) (Some!17987 (_2!38735 (h!81970 l!14636))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1265 (List!75648 K!22783 V!23037) Unit!171466)

(assert (=> d!2397207 (= lt!2725001 (lemmaContainsTupThenGetReturnValue!1265 lt!2724999 (_1!38735 (h!81970 l!14636)) (_2!38735 (h!81970 l!14636))))))

(declare-fun insertNoDuplicatedKeys!773 (List!75648 K!22783 V!23037) List!75648)

(assert (=> d!2397207 (= lt!2724999 (insertNoDuplicatedKeys!773 (toList!11908 acc!1298) (_1!38735 (h!81970 l!14636)) (_2!38735 (h!81970 l!14636))))))

(assert (=> d!2397207 (= (+!2659 acc!1298 (h!81970 l!14636)) lt!2725002)))

(declare-fun b!8051050 () Bool)

(declare-fun res!3183337 () Bool)

(assert (=> b!8051050 (=> (not res!3183337) (not e!4743944))))

(assert (=> b!8051050 (= res!3183337 (= (getValueByKey!2772 (toList!11908 lt!2725002) (_1!38735 (h!81970 l!14636))) (Some!17987 (_2!38735 (h!81970 l!14636)))))))

(declare-fun b!8051051 () Bool)

(assert (=> b!8051051 (= e!4743944 (contains!21174 (toList!11908 lt!2725002) (h!81970 l!14636)))))

(assert (= (and d!2397207 res!3183336) b!8051050))

(assert (= (and b!8051050 res!3183337) b!8051051))

(declare-fun m!8402018 () Bool)

(assert (=> d!2397207 m!8402018))

(declare-fun m!8402020 () Bool)

(assert (=> d!2397207 m!8402020))

(declare-fun m!8402022 () Bool)

(assert (=> d!2397207 m!8402022))

(declare-fun m!8402024 () Bool)

(assert (=> d!2397207 m!8402024))

(declare-fun m!8402026 () Bool)

(assert (=> b!8051050 m!8402026))

(declare-fun m!8402028 () Bool)

(assert (=> b!8051051 m!8402028))

(assert (=> b!8050990 d!2397207))

(declare-fun lt!2725021 () Bool)

(declare-fun d!2397209 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16095 (List!75648) (InoxSet tuple2!70864))

(assert (=> d!2397209 (= lt!2725021 (select (content!16095 l!14636) (tuple2!70865 key!6222 value!3131)))))

(declare-fun e!4743961 () Bool)

(assert (=> d!2397209 (= lt!2725021 e!4743961)))

(declare-fun res!3183349 () Bool)

(assert (=> d!2397209 (=> (not res!3183349) (not e!4743961))))

(assert (=> d!2397209 (= res!3183349 ((_ is Cons!75522) l!14636))))

(assert (=> d!2397209 (= (contains!21174 l!14636 (tuple2!70865 key!6222 value!3131)) lt!2725021)))

(declare-fun b!8051074 () Bool)

(declare-fun e!4743962 () Bool)

(assert (=> b!8051074 (= e!4743961 e!4743962)))

(declare-fun res!3183348 () Bool)

(assert (=> b!8051074 (=> res!3183348 e!4743962)))

(assert (=> b!8051074 (= res!3183348 (= (h!81970 l!14636) (tuple2!70865 key!6222 value!3131)))))

(declare-fun b!8051075 () Bool)

(assert (=> b!8051075 (= e!4743962 (contains!21174 (t!391420 l!14636) (tuple2!70865 key!6222 value!3131)))))

(assert (= (and d!2397209 res!3183349) b!8051074))

(assert (= (and b!8051074 (not res!3183348)) b!8051075))

(declare-fun m!8402030 () Bool)

(assert (=> d!2397209 m!8402030))

(declare-fun m!8402032 () Bool)

(assert (=> d!2397209 m!8402032))

(declare-fun m!8402034 () Bool)

(assert (=> b!8051075 m!8402034))

(assert (=> b!8050993 d!2397209))

(declare-fun d!2397211 () Bool)

(declare-fun res!3183350 () Bool)

(declare-fun e!4743963 () Bool)

(assert (=> d!2397211 (=> res!3183350 e!4743963)))

(assert (=> d!2397211 (= res!3183350 (and ((_ is Cons!75522) l!14636) (= (_1!38735 (h!81970 l!14636)) key!6222)))))

(assert (=> d!2397211 (= (containsKey!4829 l!14636 key!6222) e!4743963)))

(declare-fun b!8051076 () Bool)

(declare-fun e!4743964 () Bool)

(assert (=> b!8051076 (= e!4743963 e!4743964)))

(declare-fun res!3183351 () Bool)

(assert (=> b!8051076 (=> (not res!3183351) (not e!4743964))))

(assert (=> b!8051076 (= res!3183351 ((_ is Cons!75522) l!14636))))

(declare-fun b!8051077 () Bool)

(assert (=> b!8051077 (= e!4743964 (containsKey!4829 (t!391420 l!14636) key!6222))))

(assert (= (and d!2397211 (not res!3183350)) b!8051076))

(assert (= (and b!8051076 res!3183351) b!8051077))

(assert (=> b!8051077 m!8401932))

(assert (=> b!8050988 d!2397211))

(declare-fun b!8051139 () Bool)

(declare-fun e!4744010 () Bool)

(declare-datatypes ((List!75650 0))(
  ( (Nil!75524) (Cons!75524 (h!81972 K!22783) (t!391422 List!75650)) )
))
(declare-fun contains!21176 (List!75650 K!22783) Bool)

(declare-fun keys!30814 (ListMap!7267) List!75650)

(assert (=> b!8051139 (= e!4744010 (contains!21176 (keys!30814 acc!1298) key!6222))))

(declare-fun b!8051140 () Bool)

(declare-fun e!4744013 () Unit!171466)

(declare-fun lt!2725082 () Unit!171466)

(assert (=> b!8051140 (= e!4744013 lt!2725082)))

(declare-fun lt!2725078 () Unit!171466)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2543 (List!75648 K!22783) Unit!171466)

(assert (=> b!8051140 (= lt!2725078 (lemmaContainsKeyImpliesGetValueByKeyDefined!2543 (toList!11908 acc!1298) key!6222))))

(declare-fun isDefined!14521 (Option!17988) Bool)

(assert (=> b!8051140 (isDefined!14521 (getValueByKey!2772 (toList!11908 acc!1298) key!6222))))

(declare-fun lt!2725081 () Unit!171466)

(assert (=> b!8051140 (= lt!2725081 lt!2725078)))

(declare-fun lemmaInListThenGetKeysListContains!1226 (List!75648 K!22783) Unit!171466)

(assert (=> b!8051140 (= lt!2725082 (lemmaInListThenGetKeysListContains!1226 (toList!11908 acc!1298) key!6222))))

(declare-fun call!746955 () Bool)

(assert (=> b!8051140 call!746955))

(declare-fun b!8051141 () Bool)

(declare-fun e!4744015 () List!75650)

(declare-fun getKeysList!1231 (List!75648) List!75650)

(assert (=> b!8051141 (= e!4744015 (getKeysList!1231 (toList!11908 acc!1298)))))

(declare-fun d!2397213 () Bool)

(declare-fun e!4744014 () Bool)

(assert (=> d!2397213 e!4744014))

(declare-fun res!3183383 () Bool)

(assert (=> d!2397213 (=> res!3183383 e!4744014)))

(declare-fun e!4744012 () Bool)

(assert (=> d!2397213 (= res!3183383 e!4744012)))

(declare-fun res!3183381 () Bool)

(assert (=> d!2397213 (=> (not res!3183381) (not e!4744012))))

(declare-fun lt!2725080 () Bool)

(assert (=> d!2397213 (= res!3183381 (not lt!2725080))))

(declare-fun lt!2725085 () Bool)

(assert (=> d!2397213 (= lt!2725080 lt!2725085)))

(declare-fun lt!2725084 () Unit!171466)

(assert (=> d!2397213 (= lt!2725084 e!4744013)))

(declare-fun c!1475856 () Bool)

(assert (=> d!2397213 (= c!1475856 lt!2725085)))

(declare-fun containsKey!4831 (List!75648 K!22783) Bool)

(assert (=> d!2397213 (= lt!2725085 (containsKey!4831 (toList!11908 acc!1298) key!6222))))

(assert (=> d!2397213 (= (contains!21173 acc!1298 key!6222) lt!2725080)))

(declare-fun bm!746950 () Bool)

(assert (=> bm!746950 (= call!746955 (contains!21176 e!4744015 key!6222))))

(declare-fun c!1475855 () Bool)

(assert (=> bm!746950 (= c!1475855 c!1475856)))

(declare-fun b!8051142 () Bool)

(declare-fun e!4744011 () Unit!171466)

(declare-fun Unit!171491 () Unit!171466)

(assert (=> b!8051142 (= e!4744011 Unit!171491)))

(declare-fun b!8051143 () Bool)

(assert (=> b!8051143 false))

(declare-fun lt!2725079 () Unit!171466)

(declare-fun lt!2725083 () Unit!171466)

(assert (=> b!8051143 (= lt!2725079 lt!2725083)))

(assert (=> b!8051143 (containsKey!4831 (toList!11908 acc!1298) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1231 (List!75648 K!22783) Unit!171466)

(assert (=> b!8051143 (= lt!2725083 (lemmaInGetKeysListThenContainsKey!1231 (toList!11908 acc!1298) key!6222))))

(declare-fun Unit!171493 () Unit!171466)

(assert (=> b!8051143 (= e!4744011 Unit!171493)))

(declare-fun b!8051144 () Bool)

(assert (=> b!8051144 (= e!4744015 (keys!30814 acc!1298))))

(declare-fun b!8051145 () Bool)

(assert (=> b!8051145 (= e!4744014 e!4744010)))

(declare-fun res!3183382 () Bool)

(assert (=> b!8051145 (=> (not res!3183382) (not e!4744010))))

(assert (=> b!8051145 (= res!3183382 (isDefined!14521 (getValueByKey!2772 (toList!11908 acc!1298) key!6222)))))

(declare-fun b!8051146 () Bool)

(assert (=> b!8051146 (= e!4744013 e!4744011)))

(declare-fun c!1475857 () Bool)

(assert (=> b!8051146 (= c!1475857 call!746955)))

(declare-fun b!8051147 () Bool)

(assert (=> b!8051147 (= e!4744012 (not (contains!21176 (keys!30814 acc!1298) key!6222)))))

(assert (= (and d!2397213 c!1475856) b!8051140))

(assert (= (and d!2397213 (not c!1475856)) b!8051146))

(assert (= (and b!8051146 c!1475857) b!8051143))

(assert (= (and b!8051146 (not c!1475857)) b!8051142))

(assert (= (or b!8051140 b!8051146) bm!746950))

(assert (= (and bm!746950 c!1475855) b!8051141))

(assert (= (and bm!746950 (not c!1475855)) b!8051144))

(assert (= (and d!2397213 res!3183381) b!8051147))

(assert (= (and d!2397213 (not res!3183383)) b!8051145))

(assert (= (and b!8051145 res!3183382) b!8051139))

(declare-fun m!8402118 () Bool)

(assert (=> bm!746950 m!8402118))

(declare-fun m!8402120 () Bool)

(assert (=> b!8051140 m!8402120))

(declare-fun m!8402122 () Bool)

(assert (=> b!8051140 m!8402122))

(assert (=> b!8051140 m!8402122))

(declare-fun m!8402124 () Bool)

(assert (=> b!8051140 m!8402124))

(declare-fun m!8402126 () Bool)

(assert (=> b!8051140 m!8402126))

(declare-fun m!8402128 () Bool)

(assert (=> b!8051139 m!8402128))

(assert (=> b!8051139 m!8402128))

(declare-fun m!8402130 () Bool)

(assert (=> b!8051139 m!8402130))

(assert (=> b!8051147 m!8402128))

(assert (=> b!8051147 m!8402128))

(assert (=> b!8051147 m!8402130))

(declare-fun m!8402132 () Bool)

(assert (=> b!8051143 m!8402132))

(declare-fun m!8402134 () Bool)

(assert (=> b!8051143 m!8402134))

(assert (=> d!2397213 m!8402132))

(assert (=> b!8051144 m!8402128))

(declare-fun m!8402136 () Bool)

(assert (=> b!8051141 m!8402136))

(assert (=> b!8051145 m!8402122))

(assert (=> b!8051145 m!8402122))

(assert (=> b!8051145 m!8402124))

(assert (=> b!8050983 d!2397213))

(declare-fun d!2397229 () Bool)

(declare-fun res!3183388 () Bool)

(declare-fun e!4744020 () Bool)

(assert (=> d!2397229 (=> res!3183388 e!4744020)))

(assert (=> d!2397229 (= res!3183388 (not ((_ is Cons!75522) l!14636)))))

(assert (=> d!2397229 (= (noDuplicateKeys!2694 l!14636) e!4744020)))

(declare-fun b!8051152 () Bool)

(declare-fun e!4744021 () Bool)

(assert (=> b!8051152 (= e!4744020 e!4744021)))

(declare-fun res!3183389 () Bool)

(assert (=> b!8051152 (=> (not res!3183389) (not e!4744021))))

(assert (=> b!8051152 (= res!3183389 (not (containsKey!4829 (t!391420 l!14636) (_1!38735 (h!81970 l!14636)))))))

(declare-fun b!8051153 () Bool)

(assert (=> b!8051153 (= e!4744021 (noDuplicateKeys!2694 (t!391420 l!14636)))))

(assert (= (and d!2397229 (not res!3183388)) b!8051152))

(assert (= (and b!8051152 res!3183389) b!8051153))

(declare-fun m!8402138 () Bool)

(assert (=> b!8051152 m!8402138))

(assert (=> b!8051153 m!8401994))

(assert (=> start!758216 d!2397229))

(declare-fun d!2397231 () Bool)

(assert (=> d!2397231 (= (inv!97272 acc!1298) (invariantList!1923 (toList!11908 acc!1298)))))

(declare-fun bs!1971975 () Bool)

(assert (= bs!1971975 d!2397231))

(declare-fun m!8402140 () Bool)

(assert (=> bs!1971975 m!8402140))

(assert (=> start!758216 d!2397231))

(declare-fun b!8051154 () Bool)

(declare-fun e!4744022 () Bool)

(assert (=> b!8051154 (= e!4744022 (contains!21176 (keys!30814 (addToMapMapFromBucket!1975 l!14636 acc!1298)) key!6222))))

(declare-fun b!8051155 () Bool)

(declare-fun e!4744025 () Unit!171466)

(declare-fun lt!2725090 () Unit!171466)

(assert (=> b!8051155 (= e!4744025 lt!2725090)))

(declare-fun lt!2725086 () Unit!171466)

(assert (=> b!8051155 (= lt!2725086 (lemmaContainsKeyImpliesGetValueByKeyDefined!2543 (toList!11908 (addToMapMapFromBucket!1975 l!14636 acc!1298)) key!6222))))

(assert (=> b!8051155 (isDefined!14521 (getValueByKey!2772 (toList!11908 (addToMapMapFromBucket!1975 l!14636 acc!1298)) key!6222))))

(declare-fun lt!2725089 () Unit!171466)

(assert (=> b!8051155 (= lt!2725089 lt!2725086)))

(assert (=> b!8051155 (= lt!2725090 (lemmaInListThenGetKeysListContains!1226 (toList!11908 (addToMapMapFromBucket!1975 l!14636 acc!1298)) key!6222))))

(declare-fun call!746956 () Bool)

(assert (=> b!8051155 call!746956))

(declare-fun b!8051156 () Bool)

(declare-fun e!4744027 () List!75650)

(assert (=> b!8051156 (= e!4744027 (getKeysList!1231 (toList!11908 (addToMapMapFromBucket!1975 l!14636 acc!1298))))))

(declare-fun d!2397233 () Bool)

(declare-fun e!4744026 () Bool)

(assert (=> d!2397233 e!4744026))

(declare-fun res!3183392 () Bool)

(assert (=> d!2397233 (=> res!3183392 e!4744026)))

(declare-fun e!4744024 () Bool)

(assert (=> d!2397233 (= res!3183392 e!4744024)))

(declare-fun res!3183390 () Bool)

(assert (=> d!2397233 (=> (not res!3183390) (not e!4744024))))

(declare-fun lt!2725088 () Bool)

(assert (=> d!2397233 (= res!3183390 (not lt!2725088))))

(declare-fun lt!2725093 () Bool)

(assert (=> d!2397233 (= lt!2725088 lt!2725093)))

(declare-fun lt!2725092 () Unit!171466)

(assert (=> d!2397233 (= lt!2725092 e!4744025)))

(declare-fun c!1475859 () Bool)

(assert (=> d!2397233 (= c!1475859 lt!2725093)))

(assert (=> d!2397233 (= lt!2725093 (containsKey!4831 (toList!11908 (addToMapMapFromBucket!1975 l!14636 acc!1298)) key!6222))))

(assert (=> d!2397233 (= (contains!21173 (addToMapMapFromBucket!1975 l!14636 acc!1298) key!6222) lt!2725088)))

(declare-fun bm!746951 () Bool)

(assert (=> bm!746951 (= call!746956 (contains!21176 e!4744027 key!6222))))

(declare-fun c!1475858 () Bool)

(assert (=> bm!746951 (= c!1475858 c!1475859)))

(declare-fun b!8051157 () Bool)

(declare-fun e!4744023 () Unit!171466)

(declare-fun Unit!171494 () Unit!171466)

(assert (=> b!8051157 (= e!4744023 Unit!171494)))

(declare-fun b!8051158 () Bool)

(assert (=> b!8051158 false))

(declare-fun lt!2725087 () Unit!171466)

(declare-fun lt!2725091 () Unit!171466)

(assert (=> b!8051158 (= lt!2725087 lt!2725091)))

(assert (=> b!8051158 (containsKey!4831 (toList!11908 (addToMapMapFromBucket!1975 l!14636 acc!1298)) key!6222)))

(assert (=> b!8051158 (= lt!2725091 (lemmaInGetKeysListThenContainsKey!1231 (toList!11908 (addToMapMapFromBucket!1975 l!14636 acc!1298)) key!6222))))

(declare-fun Unit!171495 () Unit!171466)

(assert (=> b!8051158 (= e!4744023 Unit!171495)))

(declare-fun b!8051159 () Bool)

(assert (=> b!8051159 (= e!4744027 (keys!30814 (addToMapMapFromBucket!1975 l!14636 acc!1298)))))

(declare-fun b!8051160 () Bool)

(assert (=> b!8051160 (= e!4744026 e!4744022)))

(declare-fun res!3183391 () Bool)

(assert (=> b!8051160 (=> (not res!3183391) (not e!4744022))))

(assert (=> b!8051160 (= res!3183391 (isDefined!14521 (getValueByKey!2772 (toList!11908 (addToMapMapFromBucket!1975 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8051161 () Bool)

(assert (=> b!8051161 (= e!4744025 e!4744023)))

(declare-fun c!1475860 () Bool)

(assert (=> b!8051161 (= c!1475860 call!746956)))

(declare-fun b!8051162 () Bool)

(assert (=> b!8051162 (= e!4744024 (not (contains!21176 (keys!30814 (addToMapMapFromBucket!1975 l!14636 acc!1298)) key!6222)))))

(assert (= (and d!2397233 c!1475859) b!8051155))

(assert (= (and d!2397233 (not c!1475859)) b!8051161))

(assert (= (and b!8051161 c!1475860) b!8051158))

(assert (= (and b!8051161 (not c!1475860)) b!8051157))

(assert (= (or b!8051155 b!8051161) bm!746951))

(assert (= (and bm!746951 c!1475858) b!8051156))

(assert (= (and bm!746951 (not c!1475858)) b!8051159))

(assert (= (and d!2397233 res!3183390) b!8051162))

(assert (= (and d!2397233 (not res!3183392)) b!8051160))

(assert (= (and b!8051160 res!3183391) b!8051154))

(declare-fun m!8402142 () Bool)

(assert (=> bm!746951 m!8402142))

(declare-fun m!8402144 () Bool)

(assert (=> b!8051155 m!8402144))

(declare-fun m!8402146 () Bool)

(assert (=> b!8051155 m!8402146))

(assert (=> b!8051155 m!8402146))

(declare-fun m!8402148 () Bool)

(assert (=> b!8051155 m!8402148))

(declare-fun m!8402150 () Bool)

(assert (=> b!8051155 m!8402150))

(assert (=> b!8051154 m!8401916))

(declare-fun m!8402152 () Bool)

(assert (=> b!8051154 m!8402152))

(assert (=> b!8051154 m!8402152))

(declare-fun m!8402154 () Bool)

(assert (=> b!8051154 m!8402154))

(assert (=> b!8051162 m!8401916))

(assert (=> b!8051162 m!8402152))

(assert (=> b!8051162 m!8402152))

(assert (=> b!8051162 m!8402154))

(declare-fun m!8402156 () Bool)

(assert (=> b!8051158 m!8402156))

(declare-fun m!8402158 () Bool)

(assert (=> b!8051158 m!8402158))

(assert (=> d!2397233 m!8402156))

(assert (=> b!8051159 m!8401916))

(assert (=> b!8051159 m!8402152))

(declare-fun m!8402160 () Bool)

(assert (=> b!8051156 m!8402160))

(assert (=> b!8051160 m!8402146))

(assert (=> b!8051160 m!8402146))

(assert (=> b!8051160 m!8402148))

(assert (=> b!8050992 d!2397233))

(declare-fun bs!1971976 () Bool)

(declare-fun b!8051167 () Bool)

(assert (= bs!1971976 (and b!8051167 b!8051037)))

(declare-fun lambda!473224 () Int)

(assert (=> bs!1971976 (= (= acc!1298 (+!2659 acc!1298 (h!81970 l!14636))) (= lambda!473224 lambda!473216))))

(declare-fun bs!1971977 () Bool)

(assert (= bs!1971977 (and b!8051167 b!8051033)))

(assert (=> bs!1971977 (= (= acc!1298 (+!2659 acc!1298 (h!81970 l!14636))) (= lambda!473224 lambda!473217))))

(assert (=> bs!1971977 (= (= acc!1298 lt!2724989) (= lambda!473224 lambda!473218))))

(declare-fun bs!1971978 () Bool)

(assert (= bs!1971978 (and b!8051167 d!2397199)))

(assert (=> bs!1971978 (= (= acc!1298 lt!2724972) (= lambda!473224 lambda!473219))))

(assert (=> b!8051167 true))

(declare-fun bs!1971979 () Bool)

(declare-fun b!8051163 () Bool)

(assert (= bs!1971979 (and b!8051163 d!2397199)))

(declare-fun lambda!473225 () Int)

(assert (=> bs!1971979 (= (= acc!1298 lt!2724972) (= lambda!473225 lambda!473219))))

(declare-fun bs!1971980 () Bool)

(assert (= bs!1971980 (and b!8051163 b!8051167)))

(assert (=> bs!1971980 (= lambda!473225 lambda!473224)))

(declare-fun bs!1971981 () Bool)

(assert (= bs!1971981 (and b!8051163 b!8051033)))

(assert (=> bs!1971981 (= (= acc!1298 (+!2659 acc!1298 (h!81970 l!14636))) (= lambda!473225 lambda!473217))))

(declare-fun bs!1971982 () Bool)

(assert (= bs!1971982 (and b!8051163 b!8051037)))

(assert (=> bs!1971982 (= (= acc!1298 (+!2659 acc!1298 (h!81970 l!14636))) (= lambda!473225 lambda!473216))))

(assert (=> bs!1971981 (= (= acc!1298 lt!2724989) (= lambda!473225 lambda!473218))))

(assert (=> b!8051163 true))

(declare-fun lt!2725113 () ListMap!7267)

(declare-fun lambda!473226 () Int)

(assert (=> bs!1971979 (= (= lt!2725113 lt!2724972) (= lambda!473226 lambda!473219))))

(assert (=> bs!1971980 (= (= lt!2725113 acc!1298) (= lambda!473226 lambda!473224))))

(assert (=> bs!1971981 (= (= lt!2725113 (+!2659 acc!1298 (h!81970 l!14636))) (= lambda!473226 lambda!473217))))

(assert (=> b!8051163 (= (= lt!2725113 acc!1298) (= lambda!473226 lambda!473225))))

(assert (=> bs!1971982 (= (= lt!2725113 (+!2659 acc!1298 (h!81970 l!14636))) (= lambda!473226 lambda!473216))))

(assert (=> bs!1971981 (= (= lt!2725113 lt!2724989) (= lambda!473226 lambda!473218))))

(assert (=> b!8051163 true))

(declare-fun bs!1971983 () Bool)

(declare-fun d!2397235 () Bool)

(assert (= bs!1971983 (and d!2397235 d!2397199)))

(declare-fun lt!2725096 () ListMap!7267)

(declare-fun lambda!473227 () Int)

(assert (=> bs!1971983 (= (= lt!2725096 lt!2724972) (= lambda!473227 lambda!473219))))

(declare-fun bs!1971984 () Bool)

(assert (= bs!1971984 (and d!2397235 b!8051167)))

(assert (=> bs!1971984 (= (= lt!2725096 acc!1298) (= lambda!473227 lambda!473224))))

(declare-fun bs!1971985 () Bool)

(assert (= bs!1971985 (and d!2397235 b!8051033)))

(assert (=> bs!1971985 (= (= lt!2725096 (+!2659 acc!1298 (h!81970 l!14636))) (= lambda!473227 lambda!473217))))

(declare-fun bs!1971986 () Bool)

(assert (= bs!1971986 (and d!2397235 b!8051163)))

(assert (=> bs!1971986 (= (= lt!2725096 lt!2725113) (= lambda!473227 lambda!473226))))

(assert (=> bs!1971986 (= (= lt!2725096 acc!1298) (= lambda!473227 lambda!473225))))

(declare-fun bs!1971987 () Bool)

(assert (= bs!1971987 (and d!2397235 b!8051037)))

(assert (=> bs!1971987 (= (= lt!2725096 (+!2659 acc!1298 (h!81970 l!14636))) (= lambda!473227 lambda!473216))))

(assert (=> bs!1971985 (= (= lt!2725096 lt!2724989) (= lambda!473227 lambda!473218))))

(assert (=> d!2397235 true))

(declare-fun bm!746952 () Bool)

(declare-fun call!746958 () Unit!171466)

(assert (=> bm!746952 (= call!746958 (lemmaContainsAllItsOwnKeys!1075 acc!1298))))

(declare-fun e!4744029 () ListMap!7267)

(assert (=> b!8051163 (= e!4744029 lt!2725113)))

(declare-fun lt!2725094 () ListMap!7267)

(assert (=> b!8051163 (= lt!2725094 (+!2659 acc!1298 (h!81970 l!14636)))))

(assert (=> b!8051163 (= lt!2725113 (addToMapMapFromBucket!1975 (t!391420 l!14636) (+!2659 acc!1298 (h!81970 l!14636))))))

(declare-fun lt!2725107 () Unit!171466)

(assert (=> b!8051163 (= lt!2725107 call!746958)))

(assert (=> b!8051163 (forall!18492 (toList!11908 acc!1298) lambda!473225)))

(declare-fun lt!2725095 () Unit!171466)

(assert (=> b!8051163 (= lt!2725095 lt!2725107)))

(declare-fun call!746959 () Bool)

(assert (=> b!8051163 call!746959))

(declare-fun lt!2725100 () Unit!171466)

(declare-fun Unit!171498 () Unit!171466)

(assert (=> b!8051163 (= lt!2725100 Unit!171498)))

(assert (=> b!8051163 (forall!18492 (t!391420 l!14636) lambda!473226)))

(declare-fun lt!2725114 () Unit!171466)

(declare-fun Unit!171499 () Unit!171466)

(assert (=> b!8051163 (= lt!2725114 Unit!171499)))

(declare-fun lt!2725102 () Unit!171466)

(declare-fun Unit!171500 () Unit!171466)

(assert (=> b!8051163 (= lt!2725102 Unit!171500)))

(declare-fun lt!2725109 () Unit!171466)

(assert (=> b!8051163 (= lt!2725109 (forallContained!4646 (toList!11908 lt!2725094) lambda!473226 (h!81970 l!14636)))))

(assert (=> b!8051163 (contains!21173 lt!2725094 (_1!38735 (h!81970 l!14636)))))

(declare-fun lt!2725106 () Unit!171466)

(declare-fun Unit!171501 () Unit!171466)

(assert (=> b!8051163 (= lt!2725106 Unit!171501)))

(assert (=> b!8051163 (contains!21173 lt!2725113 (_1!38735 (h!81970 l!14636)))))

(declare-fun lt!2725111 () Unit!171466)

(declare-fun Unit!171502 () Unit!171466)

(assert (=> b!8051163 (= lt!2725111 Unit!171502)))

(assert (=> b!8051163 (forall!18492 l!14636 lambda!473226)))

(declare-fun lt!2725112 () Unit!171466)

(declare-fun Unit!171503 () Unit!171466)

(assert (=> b!8051163 (= lt!2725112 Unit!171503)))

(declare-fun call!746957 () Bool)

(assert (=> b!8051163 call!746957))

(declare-fun lt!2725099 () Unit!171466)

(declare-fun Unit!171504 () Unit!171466)

(assert (=> b!8051163 (= lt!2725099 Unit!171504)))

(declare-fun lt!2725104 () Unit!171466)

(declare-fun Unit!171505 () Unit!171466)

(assert (=> b!8051163 (= lt!2725104 Unit!171505)))

(declare-fun lt!2725110 () Unit!171466)

(assert (=> b!8051163 (= lt!2725110 (addForallContainsKeyThenBeforeAdding!1073 acc!1298 lt!2725113 (_1!38735 (h!81970 l!14636)) (_2!38735 (h!81970 l!14636))))))

(assert (=> b!8051163 (forall!18492 (toList!11908 acc!1298) lambda!473226)))

(declare-fun lt!2725108 () Unit!171466)

(assert (=> b!8051163 (= lt!2725108 lt!2725110)))

(assert (=> b!8051163 (forall!18492 (toList!11908 acc!1298) lambda!473226)))

(declare-fun lt!2725101 () Unit!171466)

(declare-fun Unit!171506 () Unit!171466)

(assert (=> b!8051163 (= lt!2725101 Unit!171506)))

(declare-fun res!3183393 () Bool)

(assert (=> b!8051163 (= res!3183393 (forall!18492 l!14636 lambda!473226))))

(declare-fun e!4744028 () Bool)

(assert (=> b!8051163 (=> (not res!3183393) (not e!4744028))))

(assert (=> b!8051163 e!4744028))

(declare-fun lt!2725097 () Unit!171466)

(declare-fun Unit!171507 () Unit!171466)

(assert (=> b!8051163 (= lt!2725097 Unit!171507)))

(declare-fun b!8051164 () Bool)

(assert (=> b!8051164 (= e!4744028 (forall!18492 (toList!11908 acc!1298) lambda!473226))))

(declare-fun c!1475861 () Bool)

(declare-fun bm!746953 () Bool)

(assert (=> bm!746953 (= call!746959 (forall!18492 (ite c!1475861 (toList!11908 acc!1298) (toList!11908 lt!2725094)) (ite c!1475861 lambda!473224 lambda!473226)))))

(declare-fun b!8051166 () Bool)

(declare-fun res!3183394 () Bool)

(declare-fun e!4744030 () Bool)

(assert (=> b!8051166 (=> (not res!3183394) (not e!4744030))))

(assert (=> b!8051166 (= res!3183394 (forall!18492 (toList!11908 acc!1298) lambda!473227))))

(declare-fun bm!746954 () Bool)

(assert (=> bm!746954 (= call!746957 (forall!18492 (ite c!1475861 (toList!11908 acc!1298) (toList!11908 lt!2725094)) (ite c!1475861 lambda!473224 lambda!473226)))))

(assert (=> b!8051167 (= e!4744029 acc!1298)))

(declare-fun lt!2725105 () Unit!171466)

(assert (=> b!8051167 (= lt!2725105 call!746958)))

(assert (=> b!8051167 call!746959))

(declare-fun lt!2725103 () Unit!171466)

(assert (=> b!8051167 (= lt!2725103 lt!2725105)))

(assert (=> b!8051167 call!746957))

(declare-fun lt!2725098 () Unit!171466)

(declare-fun Unit!171508 () Unit!171466)

(assert (=> b!8051167 (= lt!2725098 Unit!171508)))

(assert (=> d!2397235 e!4744030))

(declare-fun res!3183395 () Bool)

(assert (=> d!2397235 (=> (not res!3183395) (not e!4744030))))

(assert (=> d!2397235 (= res!3183395 (forall!18492 l!14636 lambda!473227))))

(assert (=> d!2397235 (= lt!2725096 e!4744029)))

(assert (=> d!2397235 (= c!1475861 ((_ is Nil!75522) l!14636))))

(assert (=> d!2397235 (noDuplicateKeys!2694 l!14636)))

(assert (=> d!2397235 (= (addToMapMapFromBucket!1975 l!14636 acc!1298) lt!2725096)))

(declare-fun b!8051165 () Bool)

(assert (=> b!8051165 (= e!4744030 (invariantList!1923 (toList!11908 lt!2725096)))))

(assert (= (and d!2397235 c!1475861) b!8051167))

(assert (= (and d!2397235 (not c!1475861)) b!8051163))

(assert (= (and b!8051163 res!3183393) b!8051164))

(assert (= (or b!8051167 b!8051163) bm!746954))

(assert (= (or b!8051167 b!8051163) bm!746953))

(assert (= (or b!8051167 b!8051163) bm!746952))

(assert (= (and d!2397235 res!3183395) b!8051166))

(assert (= (and b!8051166 res!3183394) b!8051165))

(declare-fun m!8402162 () Bool)

(assert (=> bm!746954 m!8402162))

(assert (=> bm!746953 m!8402162))

(declare-fun m!8402164 () Bool)

(assert (=> b!8051164 m!8402164))

(declare-fun m!8402166 () Bool)

(assert (=> bm!746952 m!8402166))

(declare-fun m!8402168 () Bool)

(assert (=> d!2397235 m!8402168))

(assert (=> d!2397235 m!8401912))

(declare-fun m!8402170 () Bool)

(assert (=> b!8051165 m!8402170))

(declare-fun m!8402172 () Bool)

(assert (=> b!8051163 m!8402172))

(declare-fun m!8402174 () Bool)

(assert (=> b!8051163 m!8402174))

(assert (=> b!8051163 m!8402164))

(declare-fun m!8402176 () Bool)

(assert (=> b!8051163 m!8402176))

(assert (=> b!8051163 m!8401922))

(declare-fun m!8402178 () Bool)

(assert (=> b!8051163 m!8402178))

(assert (=> b!8051163 m!8402172))

(assert (=> b!8051163 m!8401922))

(assert (=> b!8051163 m!8401924))

(declare-fun m!8402180 () Bool)

(assert (=> b!8051163 m!8402180))

(declare-fun m!8402182 () Bool)

(assert (=> b!8051163 m!8402182))

(declare-fun m!8402184 () Bool)

(assert (=> b!8051163 m!8402184))

(assert (=> b!8051163 m!8402164))

(declare-fun m!8402186 () Bool)

(assert (=> b!8051166 m!8402186))

(assert (=> b!8050992 d!2397235))

(assert (=> b!8050987 d!2397211))

(declare-fun d!2397237 () Bool)

(declare-fun get!27200 (Option!17988) V!23037)

(assert (=> d!2397237 (= (apply!14421 acc!1298 key!6222) (get!27200 (getValueByKey!2772 (toList!11908 acc!1298) key!6222)))))

(declare-fun bs!1971988 () Bool)

(assert (= bs!1971988 d!2397237))

(assert (=> bs!1971988 m!8402122))

(assert (=> bs!1971988 m!8402122))

(declare-fun m!8402188 () Bool)

(assert (=> bs!1971988 m!8402188))

(assert (=> b!8050986 d!2397237))

(declare-fun tp!2413628 () Bool)

(declare-fun b!8051172 () Bool)

(declare-fun e!4744033 () Bool)

(assert (=> b!8051172 (= e!4744033 (and tp_is_empty!54851 tp_is_empty!54853 tp!2413628))))

(assert (=> b!8050989 (= tp!2413620 e!4744033)))

(assert (= (and b!8050989 ((_ is Cons!75522) (t!391420 l!14636))) b!8051172))

(declare-fun tp!2413629 () Bool)

(declare-fun e!4744034 () Bool)

(declare-fun b!8051173 () Bool)

(assert (=> b!8051173 (= e!4744034 (and tp_is_empty!54851 tp_is_empty!54853 tp!2413629))))

(assert (=> b!8050991 (= tp!2413621 e!4744034)))

(assert (= (and b!8050991 ((_ is Cons!75522) (toList!11908 acc!1298))) b!8051173))

(check-sat (not b!8051051) (not bm!746940) (not b!8051165) (not b!8051152) tp_is_empty!54853 (not b!8051173) (not b!8051034) (not b!8051163) (not b!8051166) (not b!8051075) (not bm!746951) (not b!8051147) (not b!8051156) (not d!2397199) (not b!8051164) (not b!8051159) (not b!8051155) (not b!8051077) (not b!8051141) (not d!2397233) (not b!8051172) (not d!2397231) (not b!8051153) (not d!2397207) (not bm!746954) (not b!8050999) (not bm!746939) (not b!8051035) (not b!8051160) (not b!8051033) (not b!8051154) (not b!8051158) (not d!2397213) (not bm!746950) (not d!2397237) (not bm!746953) (not b!8051139) (not d!2397235) (not b!8051036) (not b!8051140) tp_is_empty!54851 (not b!8051050) (not b!8051162) (not bm!746952) (not bm!746938) (not b!8051143) (not d!2397209) (not b!8051145) (not b!8051144))
(check-sat)
