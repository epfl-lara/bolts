; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!495026 () Bool)

(assert start!495026)

(declare-fun e!2996657 () Bool)

(declare-datatypes ((K!15879 0))(
  ( (K!15880 (val!21009 Int)) )
))
(declare-fun key!5896 () K!15879)

(declare-fun lt!1955290 () (_ BitVec 64))

(declare-datatypes ((V!16125 0))(
  ( (V!16126 (val!21010 Int)) )
))
(declare-datatypes ((tuple2!56992 0))(
  ( (tuple2!56993 (_1!31790 K!15879) (_2!31790 V!16125)) )
))
(declare-datatypes ((List!54428 0))(
  ( (Nil!54304) (Cons!54304 (h!60736 tuple2!56992) (t!361878 List!54428)) )
))
(declare-datatypes ((tuple2!56994 0))(
  ( (tuple2!56995 (_1!31791 (_ BitVec 64)) (_2!31791 List!54428)) )
))
(declare-datatypes ((List!54429 0))(
  ( (Nil!54305) (Cons!54305 (h!60737 tuple2!56994) (t!361879 List!54429)) )
))
(declare-datatypes ((ListLongMap!5413 0))(
  ( (ListLongMap!5414 (toList!6991 List!54429)) )
))
(declare-fun lm!2473 () ListLongMap!5413)

(declare-fun b!4798900 () Bool)

(declare-datatypes ((Option!13164 0))(
  ( (None!13163) (Some!13163 (v!48480 tuple2!56992)) )
))
(declare-fun isDefined!10305 (Option!13164) Bool)

(declare-fun getPair!928 (List!54428 K!15879) Option!13164)

(declare-fun apply!13029 (ListLongMap!5413 (_ BitVec 64)) List!54428)

(assert (=> b!4798900 (= e!2996657 (isDefined!10305 (getPair!928 (apply!13029 lm!2473 lt!1955290) key!5896)))))

(declare-fun b!4798901 () Bool)

(declare-fun e!2996655 () Bool)

(declare-fun e!2996656 () Bool)

(assert (=> b!4798901 (= e!2996655 (not e!2996656))))

(declare-fun res!2040770 () Bool)

(assert (=> b!4798901 (=> res!2040770 e!2996656)))

(declare-fun value!3111 () V!16125)

(declare-fun getValue!144 (List!54429 K!15879) V!16125)

(assert (=> b!4798901 (= res!2040770 (not (= (getValue!144 (toList!6991 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!598 (List!54429 K!15879) Bool)

(assert (=> b!4798901 (containsKeyBiggerList!598 (toList!6991 lm!2473) key!5896)))

(declare-datatypes ((Hashable!6956 0))(
  ( (HashableExt!6955 (__x!32979 Int)) )
))
(declare-fun hashF!1559 () Hashable!6956)

(declare-datatypes ((Unit!140515 0))(
  ( (Unit!140516) )
))
(declare-fun lt!1955286 () Unit!140515)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!338 (ListLongMap!5413 K!15879 Hashable!6956) Unit!140515)

(assert (=> b!4798901 (= lt!1955286 (lemmaInLongMapThenContainsKeyBiggerList!338 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4798901 e!2996657))

(declare-fun res!2040771 () Bool)

(assert (=> b!4798901 (=> (not res!2040771) (not e!2996657))))

(declare-fun contains!17951 (ListLongMap!5413 (_ BitVec 64)) Bool)

(assert (=> b!4798901 (= res!2040771 (contains!17951 lm!2473 lt!1955290))))

(declare-fun hash!5007 (Hashable!6956 K!15879) (_ BitVec 64))

(assert (=> b!4798901 (= lt!1955290 (hash!5007 hashF!1559 key!5896))))

(declare-fun lt!1955288 () Unit!140515)

(declare-fun lemmaInGenericMapThenInLongMap!360 (ListLongMap!5413 K!15879 Hashable!6956) Unit!140515)

(assert (=> b!4798901 (= lt!1955288 (lemmaInGenericMapThenInLongMap!360 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4798902 () Bool)

(declare-fun res!2040768 () Bool)

(assert (=> b!4798902 (=> res!2040768 e!2996656)))

(get-info :version)

(assert (=> b!4798902 (= res!2040768 (not ((_ is Cons!54305) (toList!6991 lm!2473))))))

(declare-fun b!4798903 () Bool)

(declare-fun res!2040774 () Bool)

(assert (=> b!4798903 (=> res!2040774 e!2996656)))

(declare-fun containsKey!4014 (List!54428 K!15879) Bool)

(assert (=> b!4798903 (= res!2040774 (containsKey!4014 (_2!31791 (h!60737 (toList!6991 lm!2473))) key!5896))))

(declare-fun b!4798904 () Bool)

(declare-fun e!2996658 () Bool)

(declare-fun tp!1358300 () Bool)

(assert (=> b!4798904 (= e!2996658 tp!1358300)))

(declare-fun b!4798905 () Bool)

(declare-fun e!2996654 () Bool)

(assert (=> b!4798905 (= e!2996656 e!2996654)))

(declare-fun res!2040772 () Bool)

(assert (=> b!4798905 (=> res!2040772 e!2996654)))

(declare-fun lt!1955291 () ListLongMap!5413)

(declare-fun lambda!231973 () Int)

(declare-fun forall!12315 (List!54429 Int) Bool)

(assert (=> b!4798905 (= res!2040772 (not (forall!12315 (toList!6991 lt!1955291) lambda!231973)))))

(declare-fun lt!1955287 () Unit!140515)

(declare-fun e!2996653 () Unit!140515)

(assert (=> b!4798905 (= lt!1955287 e!2996653)))

(declare-fun c!817909 () Bool)

(assert (=> b!4798905 (= c!817909 (not (contains!17951 lt!1955291 lt!1955290)))))

(declare-fun tail!9315 (ListLongMap!5413) ListLongMap!5413)

(assert (=> b!4798905 (= lt!1955291 (tail!9315 lm!2473))))

(declare-fun b!4798906 () Bool)

(declare-fun res!2040773 () Bool)

(assert (=> b!4798906 (=> (not res!2040773) (not e!2996655))))

(declare-fun allKeysSameHashInMap!2361 (ListLongMap!5413 Hashable!6956) Bool)

(assert (=> b!4798906 (= res!2040773 (allKeysSameHashInMap!2361 lm!2473 hashF!1559))))

(declare-fun b!4798907 () Bool)

(declare-fun res!2040767 () Bool)

(assert (=> b!4798907 (=> (not res!2040767) (not e!2996655))))

(declare-datatypes ((ListMap!6463 0))(
  ( (ListMap!6464 (toList!6992 List!54428)) )
))
(declare-fun contains!17952 (ListMap!6463 K!15879) Bool)

(declare-fun extractMap!2483 (List!54429) ListMap!6463)

(assert (=> b!4798907 (= res!2040767 (contains!17952 (extractMap!2483 (toList!6991 lm!2473)) key!5896))))

(declare-fun b!4798908 () Bool)

(declare-fun lt!1955289 () Unit!140515)

(assert (=> b!4798908 (= e!2996653 lt!1955289)))

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!54 (ListLongMap!5413 K!15879 Hashable!6956) Unit!140515)

(assert (=> b!4798908 (= lt!1955289 (lemmaHashNotInLongMapThenNotInGenerated!54 lt!1955291 key!5896 hashF!1559))))

(assert (=> b!4798908 (not (contains!17952 (extractMap!2483 (toList!6991 lt!1955291)) key!5896))))

(declare-fun b!4798909 () Bool)

(declare-fun Unit!140517 () Unit!140515)

(assert (=> b!4798909 (= e!2996653 Unit!140517)))

(declare-fun res!2040769 () Bool)

(assert (=> start!495026 (=> (not res!2040769) (not e!2996655))))

(assert (=> start!495026 (= res!2040769 (forall!12315 (toList!6991 lm!2473) lambda!231973))))

(assert (=> start!495026 e!2996655))

(declare-fun inv!69905 (ListLongMap!5413) Bool)

(assert (=> start!495026 (and (inv!69905 lm!2473) e!2996658)))

(assert (=> start!495026 true))

(declare-fun tp_is_empty!33685 () Bool)

(assert (=> start!495026 tp_is_empty!33685))

(declare-fun tp_is_empty!33687 () Bool)

(assert (=> start!495026 tp_is_empty!33687))

(declare-fun b!4798910 () Bool)

(assert (=> b!4798910 (= e!2996654 (allKeysSameHashInMap!2361 lt!1955291 hashF!1559))))

(assert (= (and start!495026 res!2040769) b!4798906))

(assert (= (and b!4798906 res!2040773) b!4798907))

(assert (= (and b!4798907 res!2040767) b!4798901))

(assert (= (and b!4798901 res!2040771) b!4798900))

(assert (= (and b!4798901 (not res!2040770)) b!4798902))

(assert (= (and b!4798902 (not res!2040768)) b!4798903))

(assert (= (and b!4798903 (not res!2040774)) b!4798905))

(assert (= (and b!4798905 c!817909) b!4798908))

(assert (= (and b!4798905 (not c!817909)) b!4798909))

(assert (= (and b!4798905 (not res!2040772)) b!4798910))

(assert (= start!495026 b!4798904))

(declare-fun m!5781894 () Bool)

(assert (=> b!4798905 m!5781894))

(declare-fun m!5781896 () Bool)

(assert (=> b!4798905 m!5781896))

(declare-fun m!5781898 () Bool)

(assert (=> b!4798905 m!5781898))

(declare-fun m!5781900 () Bool)

(assert (=> b!4798903 m!5781900))

(declare-fun m!5781902 () Bool)

(assert (=> b!4798901 m!5781902))

(declare-fun m!5781904 () Bool)

(assert (=> b!4798901 m!5781904))

(declare-fun m!5781906 () Bool)

(assert (=> b!4798901 m!5781906))

(declare-fun m!5781908 () Bool)

(assert (=> b!4798901 m!5781908))

(declare-fun m!5781910 () Bool)

(assert (=> b!4798901 m!5781910))

(declare-fun m!5781912 () Bool)

(assert (=> b!4798901 m!5781912))

(declare-fun m!5781914 () Bool)

(assert (=> b!4798900 m!5781914))

(assert (=> b!4798900 m!5781914))

(declare-fun m!5781916 () Bool)

(assert (=> b!4798900 m!5781916))

(assert (=> b!4798900 m!5781916))

(declare-fun m!5781918 () Bool)

(assert (=> b!4798900 m!5781918))

(declare-fun m!5781920 () Bool)

(assert (=> b!4798907 m!5781920))

(assert (=> b!4798907 m!5781920))

(declare-fun m!5781922 () Bool)

(assert (=> b!4798907 m!5781922))

(declare-fun m!5781924 () Bool)

(assert (=> b!4798910 m!5781924))

(declare-fun m!5781926 () Bool)

(assert (=> b!4798908 m!5781926))

(declare-fun m!5781928 () Bool)

(assert (=> b!4798908 m!5781928))

(assert (=> b!4798908 m!5781928))

(declare-fun m!5781930 () Bool)

(assert (=> b!4798908 m!5781930))

(declare-fun m!5781932 () Bool)

(assert (=> b!4798906 m!5781932))

(declare-fun m!5781934 () Bool)

(assert (=> start!495026 m!5781934))

(declare-fun m!5781936 () Bool)

(assert (=> start!495026 m!5781936))

(check-sat (not start!495026) tp_is_empty!33685 (not b!4798907) (not b!4798906) tp_is_empty!33687 (not b!4798903) (not b!4798900) (not b!4798908) (not b!4798901) (not b!4798905) (not b!4798910) (not b!4798904))
(check-sat)
(get-model)

(declare-fun b!4798994 () Bool)

(declare-fun e!2996720 () Bool)

(declare-datatypes ((List!54431 0))(
  ( (Nil!54307) (Cons!54307 (h!60739 K!15879) (t!361881 List!54431)) )
))
(declare-fun contains!17955 (List!54431 K!15879) Bool)

(declare-fun keys!19849 (ListMap!6463) List!54431)

(assert (=> b!4798994 (= e!2996720 (not (contains!17955 (keys!19849 (extractMap!2483 (toList!6991 lm!2473))) key!5896)))))

(declare-fun b!4798995 () Bool)

(declare-fun e!2996721 () Bool)

(assert (=> b!4798995 (= e!2996721 (contains!17955 (keys!19849 (extractMap!2483 (toList!6991 lm!2473))) key!5896))))

(declare-fun b!4798996 () Bool)

(declare-fun e!2996722 () Unit!140515)

(declare-fun lt!1955351 () Unit!140515)

(assert (=> b!4798996 (= e!2996722 lt!1955351)))

(declare-fun lt!1955356 () Unit!140515)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2177 (List!54428 K!15879) Unit!140515)

(assert (=> b!4798996 (= lt!1955356 (lemmaContainsKeyImpliesGetValueByKeyDefined!2177 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) key!5896))))

(declare-datatypes ((Option!13167 0))(
  ( (None!13166) (Some!13166 (v!48483 V!16125)) )
))
(declare-fun isDefined!10308 (Option!13167) Bool)

(declare-fun getValueByKey!2386 (List!54428 K!15879) Option!13167)

(assert (=> b!4798996 (isDefined!10308 (getValueByKey!2386 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) key!5896))))

(declare-fun lt!1955352 () Unit!140515)

(assert (=> b!4798996 (= lt!1955352 lt!1955356)))

(declare-fun lemmaInListThenGetKeysListContains!1089 (List!54428 K!15879) Unit!140515)

(assert (=> b!4798996 (= lt!1955351 (lemmaInListThenGetKeysListContains!1089 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) key!5896))))

(declare-fun call!335298 () Bool)

(assert (=> b!4798996 call!335298))

(declare-fun b!4798997 () Bool)

(assert (=> b!4798997 false))

(declare-fun lt!1955350 () Unit!140515)

(declare-fun lt!1955357 () Unit!140515)

(assert (=> b!4798997 (= lt!1955350 lt!1955357)))

(declare-fun containsKey!4017 (List!54428 K!15879) Bool)

(assert (=> b!4798997 (containsKey!4017 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1094 (List!54428 K!15879) Unit!140515)

(assert (=> b!4798997 (= lt!1955357 (lemmaInGetKeysListThenContainsKey!1094 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) key!5896))))

(declare-fun e!2996723 () Unit!140515)

(declare-fun Unit!140524 () Unit!140515)

(assert (=> b!4798997 (= e!2996723 Unit!140524)))

(declare-fun b!4798998 () Bool)

(declare-fun Unit!140525 () Unit!140515)

(assert (=> b!4798998 (= e!2996723 Unit!140525)))

(declare-fun b!4798999 () Bool)

(declare-fun e!2996719 () Bool)

(assert (=> b!4798999 (= e!2996719 e!2996721)))

(declare-fun res!2040814 () Bool)

(assert (=> b!4798999 (=> (not res!2040814) (not e!2996721))))

(assert (=> b!4798999 (= res!2040814 (isDefined!10308 (getValueByKey!2386 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) key!5896)))))

(declare-fun b!4799000 () Bool)

(declare-fun e!2996724 () List!54431)

(assert (=> b!4799000 (= e!2996724 (keys!19849 (extractMap!2483 (toList!6991 lm!2473))))))

(declare-fun b!4799001 () Bool)

(assert (=> b!4799001 (= e!2996722 e!2996723)))

(declare-fun c!817933 () Bool)

(assert (=> b!4799001 (= c!817933 call!335298)))

(declare-fun b!4799002 () Bool)

(declare-fun getKeysList!1094 (List!54428) List!54431)

(assert (=> b!4799002 (= e!2996724 (getKeysList!1094 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))))))

(declare-fun bm!335293 () Bool)

(assert (=> bm!335293 (= call!335298 (contains!17955 e!2996724 key!5896))))

(declare-fun c!817931 () Bool)

(declare-fun c!817932 () Bool)

(assert (=> bm!335293 (= c!817931 c!817932)))

(declare-fun d!1536133 () Bool)

(assert (=> d!1536133 e!2996719))

(declare-fun res!2040816 () Bool)

(assert (=> d!1536133 (=> res!2040816 e!2996719)))

(assert (=> d!1536133 (= res!2040816 e!2996720)))

(declare-fun res!2040815 () Bool)

(assert (=> d!1536133 (=> (not res!2040815) (not e!2996720))))

(declare-fun lt!1955355 () Bool)

(assert (=> d!1536133 (= res!2040815 (not lt!1955355))))

(declare-fun lt!1955353 () Bool)

(assert (=> d!1536133 (= lt!1955355 lt!1955353)))

(declare-fun lt!1955354 () Unit!140515)

(assert (=> d!1536133 (= lt!1955354 e!2996722)))

(assert (=> d!1536133 (= c!817932 lt!1955353)))

(assert (=> d!1536133 (= lt!1955353 (containsKey!4017 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) key!5896))))

(assert (=> d!1536133 (= (contains!17952 (extractMap!2483 (toList!6991 lm!2473)) key!5896) lt!1955355)))

(assert (= (and d!1536133 c!817932) b!4798996))

(assert (= (and d!1536133 (not c!817932)) b!4799001))

(assert (= (and b!4799001 c!817933) b!4798997))

(assert (= (and b!4799001 (not c!817933)) b!4798998))

(assert (= (or b!4798996 b!4799001) bm!335293))

(assert (= (and bm!335293 c!817931) b!4799002))

(assert (= (and bm!335293 (not c!817931)) b!4799000))

(assert (= (and d!1536133 res!2040815) b!4798994))

(assert (= (and d!1536133 (not res!2040816)) b!4798999))

(assert (= (and b!4798999 res!2040814) b!4798995))

(declare-fun m!5782002 () Bool)

(assert (=> b!4799002 m!5782002))

(declare-fun m!5782004 () Bool)

(assert (=> d!1536133 m!5782004))

(declare-fun m!5782006 () Bool)

(assert (=> b!4798999 m!5782006))

(assert (=> b!4798999 m!5782006))

(declare-fun m!5782008 () Bool)

(assert (=> b!4798999 m!5782008))

(assert (=> b!4798994 m!5781920))

(declare-fun m!5782010 () Bool)

(assert (=> b!4798994 m!5782010))

(assert (=> b!4798994 m!5782010))

(declare-fun m!5782012 () Bool)

(assert (=> b!4798994 m!5782012))

(assert (=> b!4798995 m!5781920))

(assert (=> b!4798995 m!5782010))

(assert (=> b!4798995 m!5782010))

(assert (=> b!4798995 m!5782012))

(declare-fun m!5782014 () Bool)

(assert (=> b!4798996 m!5782014))

(assert (=> b!4798996 m!5782006))

(assert (=> b!4798996 m!5782006))

(assert (=> b!4798996 m!5782008))

(declare-fun m!5782016 () Bool)

(assert (=> b!4798996 m!5782016))

(assert (=> b!4798997 m!5782004))

(declare-fun m!5782018 () Bool)

(assert (=> b!4798997 m!5782018))

(assert (=> b!4799000 m!5781920))

(assert (=> b!4799000 m!5782010))

(declare-fun m!5782020 () Bool)

(assert (=> bm!335293 m!5782020))

(assert (=> b!4798907 d!1536133))

(declare-fun bs!1156853 () Bool)

(declare-fun d!1536151 () Bool)

(assert (= bs!1156853 (and d!1536151 start!495026)))

(declare-fun lambda!231993 () Int)

(assert (=> bs!1156853 (= lambda!231993 lambda!231973)))

(declare-fun lt!1955382 () ListMap!6463)

(declare-fun invariantList!1748 (List!54428) Bool)

(assert (=> d!1536151 (invariantList!1748 (toList!6992 lt!1955382))))

(declare-fun e!2996756 () ListMap!6463)

(assert (=> d!1536151 (= lt!1955382 e!2996756)))

(declare-fun c!817950 () Bool)

(assert (=> d!1536151 (= c!817950 ((_ is Cons!54305) (toList!6991 lm!2473)))))

(assert (=> d!1536151 (forall!12315 (toList!6991 lm!2473) lambda!231993)))

(assert (=> d!1536151 (= (extractMap!2483 (toList!6991 lm!2473)) lt!1955382)))

(declare-fun b!4799053 () Bool)

(declare-fun addToMapMapFromBucket!1725 (List!54428 ListMap!6463) ListMap!6463)

(assert (=> b!4799053 (= e!2996756 (addToMapMapFromBucket!1725 (_2!31791 (h!60737 (toList!6991 lm!2473))) (extractMap!2483 (t!361879 (toList!6991 lm!2473)))))))

(declare-fun b!4799054 () Bool)

(assert (=> b!4799054 (= e!2996756 (ListMap!6464 Nil!54304))))

(assert (= (and d!1536151 c!817950) b!4799053))

(assert (= (and d!1536151 (not c!817950)) b!4799054))

(declare-fun m!5782094 () Bool)

(assert (=> d!1536151 m!5782094))

(declare-fun m!5782098 () Bool)

(assert (=> d!1536151 m!5782098))

(declare-fun m!5782100 () Bool)

(assert (=> b!4799053 m!5782100))

(assert (=> b!4799053 m!5782100))

(declare-fun m!5782102 () Bool)

(assert (=> b!4799053 m!5782102))

(assert (=> b!4798907 d!1536151))

(declare-fun d!1536173 () Bool)

(declare-fun res!2040845 () Bool)

(declare-fun e!2996770 () Bool)

(assert (=> d!1536173 (=> res!2040845 e!2996770)))

(assert (=> d!1536173 (= res!2040845 ((_ is Nil!54305) (toList!6991 lm!2473)))))

(assert (=> d!1536173 (= (forall!12315 (toList!6991 lm!2473) lambda!231973) e!2996770)))

(declare-fun b!4799070 () Bool)

(declare-fun e!2996771 () Bool)

(assert (=> b!4799070 (= e!2996770 e!2996771)))

(declare-fun res!2040846 () Bool)

(assert (=> b!4799070 (=> (not res!2040846) (not e!2996771))))

(declare-fun dynLambda!22088 (Int tuple2!56994) Bool)

(assert (=> b!4799070 (= res!2040846 (dynLambda!22088 lambda!231973 (h!60737 (toList!6991 lm!2473))))))

(declare-fun b!4799071 () Bool)

(assert (=> b!4799071 (= e!2996771 (forall!12315 (t!361879 (toList!6991 lm!2473)) lambda!231973))))

(assert (= (and d!1536173 (not res!2040845)) b!4799070))

(assert (= (and b!4799070 res!2040846) b!4799071))

(declare-fun b_lambda!187411 () Bool)

(assert (=> (not b_lambda!187411) (not b!4799070)))

(declare-fun m!5782108 () Bool)

(assert (=> b!4799070 m!5782108))

(declare-fun m!5782110 () Bool)

(assert (=> b!4799071 m!5782110))

(assert (=> start!495026 d!1536173))

(declare-fun d!1536179 () Bool)

(declare-fun isStrictlySorted!895 (List!54429) Bool)

(assert (=> d!1536179 (= (inv!69905 lm!2473) (isStrictlySorted!895 (toList!6991 lm!2473)))))

(declare-fun bs!1156856 () Bool)

(assert (= bs!1156856 d!1536179))

(declare-fun m!5782112 () Bool)

(assert (=> bs!1156856 m!5782112))

(assert (=> start!495026 d!1536179))

(declare-fun bs!1156857 () Bool)

(declare-fun d!1536181 () Bool)

(assert (= bs!1156857 (and d!1536181 start!495026)))

(declare-fun lambda!231996 () Int)

(assert (=> bs!1156857 (not (= lambda!231996 lambda!231973))))

(declare-fun bs!1156858 () Bool)

(assert (= bs!1156858 (and d!1536181 d!1536151)))

(assert (=> bs!1156858 (not (= lambda!231996 lambda!231993))))

(assert (=> d!1536181 true))

(assert (=> d!1536181 (= (allKeysSameHashInMap!2361 lm!2473 hashF!1559) (forall!12315 (toList!6991 lm!2473) lambda!231996))))

(declare-fun bs!1156859 () Bool)

(assert (= bs!1156859 d!1536181))

(declare-fun m!5782114 () Bool)

(assert (=> bs!1156859 m!5782114))

(assert (=> b!4798906 d!1536181))

(declare-fun d!1536183 () Bool)

(declare-fun e!2996777 () Bool)

(assert (=> d!1536183 e!2996777))

(declare-fun res!2040849 () Bool)

(assert (=> d!1536183 (=> res!2040849 e!2996777)))

(declare-fun lt!1955391 () Bool)

(assert (=> d!1536183 (= res!2040849 (not lt!1955391))))

(declare-fun lt!1955394 () Bool)

(assert (=> d!1536183 (= lt!1955391 lt!1955394)))

(declare-fun lt!1955393 () Unit!140515)

(declare-fun e!2996776 () Unit!140515)

(assert (=> d!1536183 (= lt!1955393 e!2996776)))

(declare-fun c!817953 () Bool)

(assert (=> d!1536183 (= c!817953 lt!1955394)))

(declare-fun containsKey!4018 (List!54429 (_ BitVec 64)) Bool)

(assert (=> d!1536183 (= lt!1955394 (containsKey!4018 (toList!6991 lm!2473) lt!1955290))))

(assert (=> d!1536183 (= (contains!17951 lm!2473 lt!1955290) lt!1955391)))

(declare-fun b!4799080 () Bool)

(declare-fun lt!1955392 () Unit!140515)

(assert (=> b!4799080 (= e!2996776 lt!1955392)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2178 (List!54429 (_ BitVec 64)) Unit!140515)

(assert (=> b!4799080 (= lt!1955392 (lemmaContainsKeyImpliesGetValueByKeyDefined!2178 (toList!6991 lm!2473) lt!1955290))))

(declare-datatypes ((Option!13168 0))(
  ( (None!13167) (Some!13167 (v!48484 List!54428)) )
))
(declare-fun isDefined!10309 (Option!13168) Bool)

(declare-fun getValueByKey!2387 (List!54429 (_ BitVec 64)) Option!13168)

(assert (=> b!4799080 (isDefined!10309 (getValueByKey!2387 (toList!6991 lm!2473) lt!1955290))))

(declare-fun b!4799081 () Bool)

(declare-fun Unit!140526 () Unit!140515)

(assert (=> b!4799081 (= e!2996776 Unit!140526)))

(declare-fun b!4799082 () Bool)

(assert (=> b!4799082 (= e!2996777 (isDefined!10309 (getValueByKey!2387 (toList!6991 lm!2473) lt!1955290)))))

(assert (= (and d!1536183 c!817953) b!4799080))

(assert (= (and d!1536183 (not c!817953)) b!4799081))

(assert (= (and d!1536183 (not res!2040849)) b!4799082))

(declare-fun m!5782116 () Bool)

(assert (=> d!1536183 m!5782116))

(declare-fun m!5782118 () Bool)

(assert (=> b!4799080 m!5782118))

(declare-fun m!5782120 () Bool)

(assert (=> b!4799080 m!5782120))

(assert (=> b!4799080 m!5782120))

(declare-fun m!5782122 () Bool)

(assert (=> b!4799080 m!5782122))

(assert (=> b!4799082 m!5782120))

(assert (=> b!4799082 m!5782120))

(assert (=> b!4799082 m!5782122))

(assert (=> b!4798901 d!1536183))

(declare-fun d!1536185 () Bool)

(declare-fun res!2040856 () Bool)

(declare-fun e!2996786 () Bool)

(assert (=> d!1536185 (=> res!2040856 e!2996786)))

(declare-fun e!2996784 () Bool)

(assert (=> d!1536185 (= res!2040856 e!2996784)))

(declare-fun res!2040858 () Bool)

(assert (=> d!1536185 (=> (not res!2040858) (not e!2996784))))

(assert (=> d!1536185 (= res!2040858 ((_ is Cons!54305) (toList!6991 lm!2473)))))

(assert (=> d!1536185 (= (containsKeyBiggerList!598 (toList!6991 lm!2473) key!5896) e!2996786)))

(declare-fun b!4799089 () Bool)

(assert (=> b!4799089 (= e!2996784 (containsKey!4014 (_2!31791 (h!60737 (toList!6991 lm!2473))) key!5896))))

(declare-fun b!4799090 () Bool)

(declare-fun e!2996785 () Bool)

(assert (=> b!4799090 (= e!2996786 e!2996785)))

(declare-fun res!2040857 () Bool)

(assert (=> b!4799090 (=> (not res!2040857) (not e!2996785))))

(assert (=> b!4799090 (= res!2040857 ((_ is Cons!54305) (toList!6991 lm!2473)))))

(declare-fun b!4799091 () Bool)

(assert (=> b!4799091 (= e!2996785 (containsKeyBiggerList!598 (t!361879 (toList!6991 lm!2473)) key!5896))))

(assert (= (and d!1536185 res!2040858) b!4799089))

(assert (= (and d!1536185 (not res!2040856)) b!4799090))

(assert (= (and b!4799090 res!2040857) b!4799091))

(assert (=> b!4799089 m!5781900))

(declare-fun m!5782124 () Bool)

(assert (=> b!4799091 m!5782124))

(assert (=> b!4798901 d!1536185))

(declare-fun bs!1156860 () Bool)

(declare-fun d!1536187 () Bool)

(assert (= bs!1156860 (and d!1536187 start!495026)))

(declare-fun lambda!231999 () Int)

(assert (=> bs!1156860 (= lambda!231999 lambda!231973)))

(declare-fun bs!1156861 () Bool)

(assert (= bs!1156861 (and d!1536187 d!1536151)))

(assert (=> bs!1156861 (= lambda!231999 lambda!231993)))

(declare-fun bs!1156862 () Bool)

(assert (= bs!1156862 (and d!1536187 d!1536181)))

(assert (=> bs!1156862 (not (= lambda!231999 lambda!231996))))

(assert (=> d!1536187 (containsKeyBiggerList!598 (toList!6991 lm!2473) key!5896)))

(declare-fun lt!1955397 () Unit!140515)

(declare-fun choose!34651 (ListLongMap!5413 K!15879 Hashable!6956) Unit!140515)

(assert (=> d!1536187 (= lt!1955397 (choose!34651 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1536187 (forall!12315 (toList!6991 lm!2473) lambda!231999)))

(assert (=> d!1536187 (= (lemmaInLongMapThenContainsKeyBiggerList!338 lm!2473 key!5896 hashF!1559) lt!1955397)))

(declare-fun bs!1156863 () Bool)

(assert (= bs!1156863 d!1536187))

(assert (=> bs!1156863 m!5781902))

(declare-fun m!5782126 () Bool)

(assert (=> bs!1156863 m!5782126))

(declare-fun m!5782128 () Bool)

(assert (=> bs!1156863 m!5782128))

(assert (=> b!4798901 d!1536187))

(declare-fun bs!1156864 () Bool)

(declare-fun d!1536189 () Bool)

(assert (= bs!1156864 (and d!1536189 start!495026)))

(declare-fun lambda!232002 () Int)

(assert (=> bs!1156864 (= lambda!232002 lambda!231973)))

(declare-fun bs!1156865 () Bool)

(assert (= bs!1156865 (and d!1536189 d!1536151)))

(assert (=> bs!1156865 (= lambda!232002 lambda!231993)))

(declare-fun bs!1156866 () Bool)

(assert (= bs!1156866 (and d!1536189 d!1536181)))

(assert (=> bs!1156866 (not (= lambda!232002 lambda!231996))))

(declare-fun bs!1156867 () Bool)

(assert (= bs!1156867 (and d!1536189 d!1536187)))

(assert (=> bs!1156867 (= lambda!232002 lambda!231999)))

(declare-fun e!2996789 () Bool)

(assert (=> d!1536189 e!2996789))

(declare-fun res!2040861 () Bool)

(assert (=> d!1536189 (=> (not res!2040861) (not e!2996789))))

(assert (=> d!1536189 (= res!2040861 (contains!17951 lm!2473 (hash!5007 hashF!1559 key!5896)))))

(declare-fun lt!1955400 () Unit!140515)

(declare-fun choose!34652 (ListLongMap!5413 K!15879 Hashable!6956) Unit!140515)

(assert (=> d!1536189 (= lt!1955400 (choose!34652 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1536189 (forall!12315 (toList!6991 lm!2473) lambda!232002)))

(assert (=> d!1536189 (= (lemmaInGenericMapThenInLongMap!360 lm!2473 key!5896 hashF!1559) lt!1955400)))

(declare-fun b!4799094 () Bool)

(assert (=> b!4799094 (= e!2996789 (isDefined!10305 (getPair!928 (apply!13029 lm!2473 (hash!5007 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1536189 res!2040861) b!4799094))

(assert (=> d!1536189 m!5781906))

(assert (=> d!1536189 m!5781906))

(declare-fun m!5782130 () Bool)

(assert (=> d!1536189 m!5782130))

(declare-fun m!5782132 () Bool)

(assert (=> d!1536189 m!5782132))

(declare-fun m!5782134 () Bool)

(assert (=> d!1536189 m!5782134))

(assert (=> b!4799094 m!5781906))

(assert (=> b!4799094 m!5781906))

(declare-fun m!5782136 () Bool)

(assert (=> b!4799094 m!5782136))

(assert (=> b!4799094 m!5782136))

(declare-fun m!5782138 () Bool)

(assert (=> b!4799094 m!5782138))

(assert (=> b!4799094 m!5782138))

(declare-fun m!5782140 () Bool)

(assert (=> b!4799094 m!5782140))

(assert (=> b!4798901 d!1536189))

(declare-fun d!1536191 () Bool)

(declare-fun c!817956 () Bool)

(declare-fun e!2996795 () Bool)

(assert (=> d!1536191 (= c!817956 e!2996795)))

(declare-fun res!2040864 () Bool)

(assert (=> d!1536191 (=> (not res!2040864) (not e!2996795))))

(assert (=> d!1536191 (= res!2040864 ((_ is Cons!54305) (toList!6991 lm!2473)))))

(declare-fun e!2996794 () V!16125)

(assert (=> d!1536191 (= (getValue!144 (toList!6991 lm!2473) key!5896) e!2996794)))

(declare-fun b!4799103 () Bool)

(assert (=> b!4799103 (= e!2996795 (containsKey!4014 (_2!31791 (h!60737 (toList!6991 lm!2473))) key!5896))))

(declare-fun b!4799101 () Bool)

(declare-fun get!18536 (Option!13164) tuple2!56992)

(assert (=> b!4799101 (= e!2996794 (_2!31790 (get!18536 (getPair!928 (_2!31791 (h!60737 (toList!6991 lm!2473))) key!5896))))))

(declare-fun b!4799102 () Bool)

(assert (=> b!4799102 (= e!2996794 (getValue!144 (t!361879 (toList!6991 lm!2473)) key!5896))))

(assert (= (and d!1536191 res!2040864) b!4799103))

(assert (= (and d!1536191 c!817956) b!4799101))

(assert (= (and d!1536191 (not c!817956)) b!4799102))

(assert (=> b!4799103 m!5781900))

(declare-fun m!5782142 () Bool)

(assert (=> b!4799101 m!5782142))

(assert (=> b!4799101 m!5782142))

(declare-fun m!5782144 () Bool)

(assert (=> b!4799101 m!5782144))

(declare-fun m!5782146 () Bool)

(assert (=> b!4799102 m!5782146))

(assert (=> b!4798901 d!1536191))

(declare-fun d!1536193 () Bool)

(declare-fun hash!5009 (Hashable!6956 K!15879) (_ BitVec 64))

(assert (=> d!1536193 (= (hash!5007 hashF!1559 key!5896) (hash!5009 hashF!1559 key!5896))))

(declare-fun bs!1156868 () Bool)

(assert (= bs!1156868 d!1536193))

(declare-fun m!5782148 () Bool)

(assert (=> bs!1156868 m!5782148))

(assert (=> b!4798901 d!1536193))

(declare-fun d!1536195 () Bool)

(declare-fun isEmpty!29490 (Option!13164) Bool)

(assert (=> d!1536195 (= (isDefined!10305 (getPair!928 (apply!13029 lm!2473 lt!1955290) key!5896)) (not (isEmpty!29490 (getPair!928 (apply!13029 lm!2473 lt!1955290) key!5896))))))

(declare-fun bs!1156869 () Bool)

(assert (= bs!1156869 d!1536195))

(assert (=> bs!1156869 m!5781916))

(declare-fun m!5782150 () Bool)

(assert (=> bs!1156869 m!5782150))

(assert (=> b!4798900 d!1536195))

(declare-fun b!4799120 () Bool)

(declare-fun e!2996806 () Option!13164)

(assert (=> b!4799120 (= e!2996806 None!13163)))

(declare-fun b!4799121 () Bool)

(declare-fun e!2996808 () Option!13164)

(assert (=> b!4799121 (= e!2996808 (Some!13163 (h!60736 (apply!13029 lm!2473 lt!1955290))))))

(declare-fun lt!1955403 () Option!13164)

(declare-fun b!4799122 () Bool)

(declare-fun e!2996809 () Bool)

(declare-fun contains!17956 (List!54428 tuple2!56992) Bool)

(assert (=> b!4799122 (= e!2996809 (contains!17956 (apply!13029 lm!2473 lt!1955290) (get!18536 lt!1955403)))))

(declare-fun e!2996807 () Bool)

(declare-fun b!4799123 () Bool)

(assert (=> b!4799123 (= e!2996807 (not (containsKey!4014 (apply!13029 lm!2473 lt!1955290) key!5896)))))

(declare-fun b!4799124 () Bool)

(assert (=> b!4799124 (= e!2996808 e!2996806)))

(declare-fun c!817962 () Bool)

(assert (=> b!4799124 (= c!817962 ((_ is Cons!54304) (apply!13029 lm!2473 lt!1955290)))))

(declare-fun b!4799125 () Bool)

(assert (=> b!4799125 (= e!2996806 (getPair!928 (t!361878 (apply!13029 lm!2473 lt!1955290)) key!5896))))

(declare-fun d!1536197 () Bool)

(declare-fun e!2996810 () Bool)

(assert (=> d!1536197 e!2996810))

(declare-fun res!2040873 () Bool)

(assert (=> d!1536197 (=> res!2040873 e!2996810)))

(assert (=> d!1536197 (= res!2040873 e!2996807)))

(declare-fun res!2040876 () Bool)

(assert (=> d!1536197 (=> (not res!2040876) (not e!2996807))))

(assert (=> d!1536197 (= res!2040876 (isEmpty!29490 lt!1955403))))

(assert (=> d!1536197 (= lt!1955403 e!2996808)))

(declare-fun c!817961 () Bool)

(assert (=> d!1536197 (= c!817961 (and ((_ is Cons!54304) (apply!13029 lm!2473 lt!1955290)) (= (_1!31790 (h!60736 (apply!13029 lm!2473 lt!1955290))) key!5896)))))

(declare-fun noDuplicateKeys!2357 (List!54428) Bool)

(assert (=> d!1536197 (noDuplicateKeys!2357 (apply!13029 lm!2473 lt!1955290))))

(assert (=> d!1536197 (= (getPair!928 (apply!13029 lm!2473 lt!1955290) key!5896) lt!1955403)))

(declare-fun b!4799126 () Bool)

(declare-fun res!2040874 () Bool)

(assert (=> b!4799126 (=> (not res!2040874) (not e!2996809))))

(assert (=> b!4799126 (= res!2040874 (= (_1!31790 (get!18536 lt!1955403)) key!5896))))

(declare-fun b!4799127 () Bool)

(assert (=> b!4799127 (= e!2996810 e!2996809)))

(declare-fun res!2040875 () Bool)

(assert (=> b!4799127 (=> (not res!2040875) (not e!2996809))))

(assert (=> b!4799127 (= res!2040875 (isDefined!10305 lt!1955403))))

(assert (= (and d!1536197 c!817961) b!4799121))

(assert (= (and d!1536197 (not c!817961)) b!4799124))

(assert (= (and b!4799124 c!817962) b!4799125))

(assert (= (and b!4799124 (not c!817962)) b!4799120))

(assert (= (and d!1536197 res!2040876) b!4799123))

(assert (= (and d!1536197 (not res!2040873)) b!4799127))

(assert (= (and b!4799127 res!2040875) b!4799126))

(assert (= (and b!4799126 res!2040874) b!4799122))

(declare-fun m!5782152 () Bool)

(assert (=> b!4799127 m!5782152))

(declare-fun m!5782154 () Bool)

(assert (=> b!4799125 m!5782154))

(declare-fun m!5782156 () Bool)

(assert (=> b!4799122 m!5782156))

(assert (=> b!4799122 m!5781914))

(assert (=> b!4799122 m!5782156))

(declare-fun m!5782158 () Bool)

(assert (=> b!4799122 m!5782158))

(assert (=> b!4799123 m!5781914))

(declare-fun m!5782160 () Bool)

(assert (=> b!4799123 m!5782160))

(declare-fun m!5782162 () Bool)

(assert (=> d!1536197 m!5782162))

(assert (=> d!1536197 m!5781914))

(declare-fun m!5782164 () Bool)

(assert (=> d!1536197 m!5782164))

(assert (=> b!4799126 m!5782156))

(assert (=> b!4798900 d!1536197))

(declare-fun d!1536199 () Bool)

(declare-fun get!18537 (Option!13168) List!54428)

(assert (=> d!1536199 (= (apply!13029 lm!2473 lt!1955290) (get!18537 (getValueByKey!2387 (toList!6991 lm!2473) lt!1955290)))))

(declare-fun bs!1156870 () Bool)

(assert (= bs!1156870 d!1536199))

(assert (=> bs!1156870 m!5782120))

(assert (=> bs!1156870 m!5782120))

(declare-fun m!5782166 () Bool)

(assert (=> bs!1156870 m!5782166))

(assert (=> b!4798900 d!1536199))

(declare-fun bs!1156871 () Bool)

(declare-fun d!1536201 () Bool)

(assert (= bs!1156871 (and d!1536201 start!495026)))

(declare-fun lambda!232003 () Int)

(assert (=> bs!1156871 (not (= lambda!232003 lambda!231973))))

(declare-fun bs!1156872 () Bool)

(assert (= bs!1156872 (and d!1536201 d!1536151)))

(assert (=> bs!1156872 (not (= lambda!232003 lambda!231993))))

(declare-fun bs!1156873 () Bool)

(assert (= bs!1156873 (and d!1536201 d!1536181)))

(assert (=> bs!1156873 (= lambda!232003 lambda!231996)))

(declare-fun bs!1156874 () Bool)

(assert (= bs!1156874 (and d!1536201 d!1536189)))

(assert (=> bs!1156874 (not (= lambda!232003 lambda!232002))))

(declare-fun bs!1156875 () Bool)

(assert (= bs!1156875 (and d!1536201 d!1536187)))

(assert (=> bs!1156875 (not (= lambda!232003 lambda!231999))))

(assert (=> d!1536201 true))

(assert (=> d!1536201 (= (allKeysSameHashInMap!2361 lt!1955291 hashF!1559) (forall!12315 (toList!6991 lt!1955291) lambda!232003))))

(declare-fun bs!1156876 () Bool)

(assert (= bs!1156876 d!1536201))

(declare-fun m!5782168 () Bool)

(assert (=> bs!1156876 m!5782168))

(assert (=> b!4798910 d!1536201))

(declare-fun d!1536203 () Bool)

(declare-fun res!2040877 () Bool)

(declare-fun e!2996811 () Bool)

(assert (=> d!1536203 (=> res!2040877 e!2996811)))

(assert (=> d!1536203 (= res!2040877 ((_ is Nil!54305) (toList!6991 lt!1955291)))))

(assert (=> d!1536203 (= (forall!12315 (toList!6991 lt!1955291) lambda!231973) e!2996811)))

(declare-fun b!4799128 () Bool)

(declare-fun e!2996812 () Bool)

(assert (=> b!4799128 (= e!2996811 e!2996812)))

(declare-fun res!2040878 () Bool)

(assert (=> b!4799128 (=> (not res!2040878) (not e!2996812))))

(assert (=> b!4799128 (= res!2040878 (dynLambda!22088 lambda!231973 (h!60737 (toList!6991 lt!1955291))))))

(declare-fun b!4799129 () Bool)

(assert (=> b!4799129 (= e!2996812 (forall!12315 (t!361879 (toList!6991 lt!1955291)) lambda!231973))))

(assert (= (and d!1536203 (not res!2040877)) b!4799128))

(assert (= (and b!4799128 res!2040878) b!4799129))

(declare-fun b_lambda!187413 () Bool)

(assert (=> (not b_lambda!187413) (not b!4799128)))

(declare-fun m!5782170 () Bool)

(assert (=> b!4799128 m!5782170))

(declare-fun m!5782172 () Bool)

(assert (=> b!4799129 m!5782172))

(assert (=> b!4798905 d!1536203))

(declare-fun d!1536205 () Bool)

(declare-fun e!2996814 () Bool)

(assert (=> d!1536205 e!2996814))

(declare-fun res!2040879 () Bool)

(assert (=> d!1536205 (=> res!2040879 e!2996814)))

(declare-fun lt!1955404 () Bool)

(assert (=> d!1536205 (= res!2040879 (not lt!1955404))))

(declare-fun lt!1955407 () Bool)

(assert (=> d!1536205 (= lt!1955404 lt!1955407)))

(declare-fun lt!1955406 () Unit!140515)

(declare-fun e!2996813 () Unit!140515)

(assert (=> d!1536205 (= lt!1955406 e!2996813)))

(declare-fun c!817963 () Bool)

(assert (=> d!1536205 (= c!817963 lt!1955407)))

(assert (=> d!1536205 (= lt!1955407 (containsKey!4018 (toList!6991 lt!1955291) lt!1955290))))

(assert (=> d!1536205 (= (contains!17951 lt!1955291 lt!1955290) lt!1955404)))

(declare-fun b!4799130 () Bool)

(declare-fun lt!1955405 () Unit!140515)

(assert (=> b!4799130 (= e!2996813 lt!1955405)))

(assert (=> b!4799130 (= lt!1955405 (lemmaContainsKeyImpliesGetValueByKeyDefined!2178 (toList!6991 lt!1955291) lt!1955290))))

(assert (=> b!4799130 (isDefined!10309 (getValueByKey!2387 (toList!6991 lt!1955291) lt!1955290))))

(declare-fun b!4799131 () Bool)

(declare-fun Unit!140527 () Unit!140515)

(assert (=> b!4799131 (= e!2996813 Unit!140527)))

(declare-fun b!4799132 () Bool)

(assert (=> b!4799132 (= e!2996814 (isDefined!10309 (getValueByKey!2387 (toList!6991 lt!1955291) lt!1955290)))))

(assert (= (and d!1536205 c!817963) b!4799130))

(assert (= (and d!1536205 (not c!817963)) b!4799131))

(assert (= (and d!1536205 (not res!2040879)) b!4799132))

(declare-fun m!5782174 () Bool)

(assert (=> d!1536205 m!5782174))

(declare-fun m!5782176 () Bool)

(assert (=> b!4799130 m!5782176))

(declare-fun m!5782178 () Bool)

(assert (=> b!4799130 m!5782178))

(assert (=> b!4799130 m!5782178))

(declare-fun m!5782180 () Bool)

(assert (=> b!4799130 m!5782180))

(assert (=> b!4799132 m!5782178))

(assert (=> b!4799132 m!5782178))

(assert (=> b!4799132 m!5782180))

(assert (=> b!4798905 d!1536205))

(declare-fun d!1536207 () Bool)

(declare-fun tail!9317 (List!54429) List!54429)

(assert (=> d!1536207 (= (tail!9315 lm!2473) (ListLongMap!5414 (tail!9317 (toList!6991 lm!2473))))))

(declare-fun bs!1156877 () Bool)

(assert (= bs!1156877 d!1536207))

(declare-fun m!5782182 () Bool)

(assert (=> bs!1156877 m!5782182))

(assert (=> b!4798905 d!1536207))

(declare-fun bs!1156878 () Bool)

(declare-fun d!1536209 () Bool)

(assert (= bs!1156878 (and d!1536209 d!1536201)))

(declare-fun lambda!232006 () Int)

(assert (=> bs!1156878 (not (= lambda!232006 lambda!232003))))

(declare-fun bs!1156879 () Bool)

(assert (= bs!1156879 (and d!1536209 start!495026)))

(assert (=> bs!1156879 (= lambda!232006 lambda!231973)))

(declare-fun bs!1156880 () Bool)

(assert (= bs!1156880 (and d!1536209 d!1536151)))

(assert (=> bs!1156880 (= lambda!232006 lambda!231993)))

(declare-fun bs!1156881 () Bool)

(assert (= bs!1156881 (and d!1536209 d!1536181)))

(assert (=> bs!1156881 (not (= lambda!232006 lambda!231996))))

(declare-fun bs!1156882 () Bool)

(assert (= bs!1156882 (and d!1536209 d!1536189)))

(assert (=> bs!1156882 (= lambda!232006 lambda!232002)))

(declare-fun bs!1156883 () Bool)

(assert (= bs!1156883 (and d!1536209 d!1536187)))

(assert (=> bs!1156883 (= lambda!232006 lambda!231999)))

(assert (=> d!1536209 (not (contains!17952 (extractMap!2483 (toList!6991 lt!1955291)) key!5896))))

(declare-fun lt!1955410 () Unit!140515)

(declare-fun choose!34653 (ListLongMap!5413 K!15879 Hashable!6956) Unit!140515)

(assert (=> d!1536209 (= lt!1955410 (choose!34653 lt!1955291 key!5896 hashF!1559))))

(assert (=> d!1536209 (forall!12315 (toList!6991 lt!1955291) lambda!232006)))

(assert (=> d!1536209 (= (lemmaHashNotInLongMapThenNotInGenerated!54 lt!1955291 key!5896 hashF!1559) lt!1955410)))

(declare-fun bs!1156884 () Bool)

(assert (= bs!1156884 d!1536209))

(assert (=> bs!1156884 m!5781928))

(assert (=> bs!1156884 m!5781928))

(assert (=> bs!1156884 m!5781930))

(declare-fun m!5782184 () Bool)

(assert (=> bs!1156884 m!5782184))

(declare-fun m!5782186 () Bool)

(assert (=> bs!1156884 m!5782186))

(assert (=> b!4798908 d!1536209))

(declare-fun b!4799133 () Bool)

(declare-fun e!2996816 () Bool)

(assert (=> b!4799133 (= e!2996816 (not (contains!17955 (keys!19849 (extractMap!2483 (toList!6991 lt!1955291))) key!5896)))))

(declare-fun b!4799134 () Bool)

(declare-fun e!2996817 () Bool)

(assert (=> b!4799134 (= e!2996817 (contains!17955 (keys!19849 (extractMap!2483 (toList!6991 lt!1955291))) key!5896))))

(declare-fun b!4799135 () Bool)

(declare-fun e!2996818 () Unit!140515)

(declare-fun lt!1955412 () Unit!140515)

(assert (=> b!4799135 (= e!2996818 lt!1955412)))

(declare-fun lt!1955417 () Unit!140515)

(assert (=> b!4799135 (= lt!1955417 (lemmaContainsKeyImpliesGetValueByKeyDefined!2177 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) key!5896))))

(assert (=> b!4799135 (isDefined!10308 (getValueByKey!2386 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) key!5896))))

(declare-fun lt!1955413 () Unit!140515)

(assert (=> b!4799135 (= lt!1955413 lt!1955417)))

(assert (=> b!4799135 (= lt!1955412 (lemmaInListThenGetKeysListContains!1089 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) key!5896))))

(declare-fun call!335300 () Bool)

(assert (=> b!4799135 call!335300))

(declare-fun b!4799136 () Bool)

(assert (=> b!4799136 false))

(declare-fun lt!1955411 () Unit!140515)

(declare-fun lt!1955418 () Unit!140515)

(assert (=> b!4799136 (= lt!1955411 lt!1955418)))

(assert (=> b!4799136 (containsKey!4017 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) key!5896)))

(assert (=> b!4799136 (= lt!1955418 (lemmaInGetKeysListThenContainsKey!1094 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) key!5896))))

(declare-fun e!2996819 () Unit!140515)

(declare-fun Unit!140528 () Unit!140515)

(assert (=> b!4799136 (= e!2996819 Unit!140528)))

(declare-fun b!4799137 () Bool)

(declare-fun Unit!140529 () Unit!140515)

(assert (=> b!4799137 (= e!2996819 Unit!140529)))

(declare-fun b!4799138 () Bool)

(declare-fun e!2996815 () Bool)

(assert (=> b!4799138 (= e!2996815 e!2996817)))

(declare-fun res!2040880 () Bool)

(assert (=> b!4799138 (=> (not res!2040880) (not e!2996817))))

(assert (=> b!4799138 (= res!2040880 (isDefined!10308 (getValueByKey!2386 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) key!5896)))))

(declare-fun b!4799139 () Bool)

(declare-fun e!2996820 () List!54431)

(assert (=> b!4799139 (= e!2996820 (keys!19849 (extractMap!2483 (toList!6991 lt!1955291))))))

(declare-fun b!4799140 () Bool)

(assert (=> b!4799140 (= e!2996818 e!2996819)))

(declare-fun c!817966 () Bool)

(assert (=> b!4799140 (= c!817966 call!335300)))

(declare-fun b!4799141 () Bool)

(assert (=> b!4799141 (= e!2996820 (getKeysList!1094 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))))))

(declare-fun bm!335295 () Bool)

(assert (=> bm!335295 (= call!335300 (contains!17955 e!2996820 key!5896))))

(declare-fun c!817964 () Bool)

(declare-fun c!817965 () Bool)

(assert (=> bm!335295 (= c!817964 c!817965)))

(declare-fun d!1536211 () Bool)

(assert (=> d!1536211 e!2996815))

(declare-fun res!2040882 () Bool)

(assert (=> d!1536211 (=> res!2040882 e!2996815)))

(assert (=> d!1536211 (= res!2040882 e!2996816)))

(declare-fun res!2040881 () Bool)

(assert (=> d!1536211 (=> (not res!2040881) (not e!2996816))))

(declare-fun lt!1955416 () Bool)

(assert (=> d!1536211 (= res!2040881 (not lt!1955416))))

(declare-fun lt!1955414 () Bool)

(assert (=> d!1536211 (= lt!1955416 lt!1955414)))

(declare-fun lt!1955415 () Unit!140515)

(assert (=> d!1536211 (= lt!1955415 e!2996818)))

(assert (=> d!1536211 (= c!817965 lt!1955414)))

(assert (=> d!1536211 (= lt!1955414 (containsKey!4017 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) key!5896))))

(assert (=> d!1536211 (= (contains!17952 (extractMap!2483 (toList!6991 lt!1955291)) key!5896) lt!1955416)))

(assert (= (and d!1536211 c!817965) b!4799135))

(assert (= (and d!1536211 (not c!817965)) b!4799140))

(assert (= (and b!4799140 c!817966) b!4799136))

(assert (= (and b!4799140 (not c!817966)) b!4799137))

(assert (= (or b!4799135 b!4799140) bm!335295))

(assert (= (and bm!335295 c!817964) b!4799141))

(assert (= (and bm!335295 (not c!817964)) b!4799139))

(assert (= (and d!1536211 res!2040881) b!4799133))

(assert (= (and d!1536211 (not res!2040882)) b!4799138))

(assert (= (and b!4799138 res!2040880) b!4799134))

(declare-fun m!5782188 () Bool)

(assert (=> b!4799141 m!5782188))

(declare-fun m!5782190 () Bool)

(assert (=> d!1536211 m!5782190))

(declare-fun m!5782192 () Bool)

(assert (=> b!4799138 m!5782192))

(assert (=> b!4799138 m!5782192))

(declare-fun m!5782194 () Bool)

(assert (=> b!4799138 m!5782194))

(assert (=> b!4799133 m!5781928))

(declare-fun m!5782196 () Bool)

(assert (=> b!4799133 m!5782196))

(assert (=> b!4799133 m!5782196))

(declare-fun m!5782198 () Bool)

(assert (=> b!4799133 m!5782198))

(assert (=> b!4799134 m!5781928))

(assert (=> b!4799134 m!5782196))

(assert (=> b!4799134 m!5782196))

(assert (=> b!4799134 m!5782198))

(declare-fun m!5782200 () Bool)

(assert (=> b!4799135 m!5782200))

(assert (=> b!4799135 m!5782192))

(assert (=> b!4799135 m!5782192))

(assert (=> b!4799135 m!5782194))

(declare-fun m!5782202 () Bool)

(assert (=> b!4799135 m!5782202))

(assert (=> b!4799136 m!5782190))

(declare-fun m!5782204 () Bool)

(assert (=> b!4799136 m!5782204))

(assert (=> b!4799139 m!5781928))

(assert (=> b!4799139 m!5782196))

(declare-fun m!5782206 () Bool)

(assert (=> bm!335295 m!5782206))

(assert (=> b!4798908 d!1536211))

(declare-fun bs!1156885 () Bool)

(declare-fun d!1536213 () Bool)

(assert (= bs!1156885 (and d!1536213 d!1536201)))

(declare-fun lambda!232007 () Int)

(assert (=> bs!1156885 (not (= lambda!232007 lambda!232003))))

(declare-fun bs!1156886 () Bool)

(assert (= bs!1156886 (and d!1536213 start!495026)))

(assert (=> bs!1156886 (= lambda!232007 lambda!231973)))

(declare-fun bs!1156887 () Bool)

(assert (= bs!1156887 (and d!1536213 d!1536151)))

(assert (=> bs!1156887 (= lambda!232007 lambda!231993)))

(declare-fun bs!1156888 () Bool)

(assert (= bs!1156888 (and d!1536213 d!1536209)))

(assert (=> bs!1156888 (= lambda!232007 lambda!232006)))

(declare-fun bs!1156889 () Bool)

(assert (= bs!1156889 (and d!1536213 d!1536181)))

(assert (=> bs!1156889 (not (= lambda!232007 lambda!231996))))

(declare-fun bs!1156890 () Bool)

(assert (= bs!1156890 (and d!1536213 d!1536189)))

(assert (=> bs!1156890 (= lambda!232007 lambda!232002)))

(declare-fun bs!1156891 () Bool)

(assert (= bs!1156891 (and d!1536213 d!1536187)))

(assert (=> bs!1156891 (= lambda!232007 lambda!231999)))

(declare-fun lt!1955419 () ListMap!6463)

(assert (=> d!1536213 (invariantList!1748 (toList!6992 lt!1955419))))

(declare-fun e!2996821 () ListMap!6463)

(assert (=> d!1536213 (= lt!1955419 e!2996821)))

(declare-fun c!817967 () Bool)

(assert (=> d!1536213 (= c!817967 ((_ is Cons!54305) (toList!6991 lt!1955291)))))

(assert (=> d!1536213 (forall!12315 (toList!6991 lt!1955291) lambda!232007)))

(assert (=> d!1536213 (= (extractMap!2483 (toList!6991 lt!1955291)) lt!1955419)))

(declare-fun b!4799142 () Bool)

(assert (=> b!4799142 (= e!2996821 (addToMapMapFromBucket!1725 (_2!31791 (h!60737 (toList!6991 lt!1955291))) (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))))))

(declare-fun b!4799143 () Bool)

(assert (=> b!4799143 (= e!2996821 (ListMap!6464 Nil!54304))))

(assert (= (and d!1536213 c!817967) b!4799142))

(assert (= (and d!1536213 (not c!817967)) b!4799143))

(declare-fun m!5782208 () Bool)

(assert (=> d!1536213 m!5782208))

(declare-fun m!5782210 () Bool)

(assert (=> d!1536213 m!5782210))

(declare-fun m!5782212 () Bool)

(assert (=> b!4799142 m!5782212))

(assert (=> b!4799142 m!5782212))

(declare-fun m!5782214 () Bool)

(assert (=> b!4799142 m!5782214))

(assert (=> b!4798908 d!1536213))

(declare-fun d!1536215 () Bool)

(declare-fun res!2040887 () Bool)

(declare-fun e!2996826 () Bool)

(assert (=> d!1536215 (=> res!2040887 e!2996826)))

(assert (=> d!1536215 (= res!2040887 (and ((_ is Cons!54304) (_2!31791 (h!60737 (toList!6991 lm!2473)))) (= (_1!31790 (h!60736 (_2!31791 (h!60737 (toList!6991 lm!2473))))) key!5896)))))

(assert (=> d!1536215 (= (containsKey!4014 (_2!31791 (h!60737 (toList!6991 lm!2473))) key!5896) e!2996826)))

(declare-fun b!4799148 () Bool)

(declare-fun e!2996827 () Bool)

(assert (=> b!4799148 (= e!2996826 e!2996827)))

(declare-fun res!2040888 () Bool)

(assert (=> b!4799148 (=> (not res!2040888) (not e!2996827))))

(assert (=> b!4799148 (= res!2040888 ((_ is Cons!54304) (_2!31791 (h!60737 (toList!6991 lm!2473)))))))

(declare-fun b!4799149 () Bool)

(assert (=> b!4799149 (= e!2996827 (containsKey!4014 (t!361878 (_2!31791 (h!60737 (toList!6991 lm!2473)))) key!5896))))

(assert (= (and d!1536215 (not res!2040887)) b!4799148))

(assert (= (and b!4799148 res!2040888) b!4799149))

(declare-fun m!5782216 () Bool)

(assert (=> b!4799149 m!5782216))

(assert (=> b!4798903 d!1536215))

(declare-fun b!4799154 () Bool)

(declare-fun e!2996830 () Bool)

(declare-fun tp!1358311 () Bool)

(declare-fun tp!1358312 () Bool)

(assert (=> b!4799154 (= e!2996830 (and tp!1358311 tp!1358312))))

(assert (=> b!4798904 (= tp!1358300 e!2996830)))

(assert (= (and b!4798904 ((_ is Cons!54305) (toList!6991 lm!2473))) b!4799154))

(declare-fun b_lambda!187415 () Bool)

(assert (= b_lambda!187411 (or start!495026 b_lambda!187415)))

(declare-fun bs!1156892 () Bool)

(declare-fun d!1536217 () Bool)

(assert (= bs!1156892 (and d!1536217 start!495026)))

(assert (=> bs!1156892 (= (dynLambda!22088 lambda!231973 (h!60737 (toList!6991 lm!2473))) (noDuplicateKeys!2357 (_2!31791 (h!60737 (toList!6991 lm!2473)))))))

(declare-fun m!5782218 () Bool)

(assert (=> bs!1156892 m!5782218))

(assert (=> b!4799070 d!1536217))

(declare-fun b_lambda!187417 () Bool)

(assert (= b_lambda!187413 (or start!495026 b_lambda!187417)))

(declare-fun bs!1156893 () Bool)

(declare-fun d!1536219 () Bool)

(assert (= bs!1156893 (and d!1536219 start!495026)))

(assert (=> bs!1156893 (= (dynLambda!22088 lambda!231973 (h!60737 (toList!6991 lt!1955291))) (noDuplicateKeys!2357 (_2!31791 (h!60737 (toList!6991 lt!1955291)))))))

(declare-fun m!5782220 () Bool)

(assert (=> bs!1156893 m!5782220))

(assert (=> b!4799128 d!1536219))

(check-sat (not d!1536211) (not b!4799142) (not b!4799154) (not b!4799130) (not b!4798997) (not b!4799053) (not d!1536183) (not d!1536181) (not b!4798995) (not d!1536179) (not b!4799132) tp_is_empty!33685 (not b!4799102) (not d!1536209) (not b!4798999) (not d!1536133) (not d!1536195) (not b!4799141) (not b!4799082) (not b!4798996) (not b!4799136) (not d!1536205) (not b!4799103) (not d!1536201) (not b!4799129) (not b_lambda!187417) (not b!4799122) (not b!4799133) (not b!4799134) (not b!4799101) tp_is_empty!33687 (not b!4799126) (not b!4799089) (not bs!1156892) (not d!1536187) (not bm!335293) (not d!1536213) (not d!1536151) (not b!4799094) (not b!4799149) (not d!1536197) (not b!4799138) (not b!4799123) (not b!4799002) (not d!1536199) (not bs!1156893) (not b!4799127) (not b!4799125) (not b!4798994) (not b!4799071) (not d!1536193) (not b!4799080) (not d!1536207) (not b!4799139) (not bm!335295) (not b!4799000) (not b_lambda!187415) (not b!4799135) (not b!4799091) (not d!1536189))
(check-sat)
(get-model)

(declare-fun d!1536235 () Bool)

(declare-fun lt!1955494 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9738 (List!54431) (InoxSet K!15879))

(assert (=> d!1536235 (= lt!1955494 (select (content!9738 (keys!19849 (extractMap!2483 (toList!6991 lt!1955291)))) key!5896))))

(declare-fun e!2996861 () Bool)

(assert (=> d!1536235 (= lt!1955494 e!2996861)))

(declare-fun res!2040912 () Bool)

(assert (=> d!1536235 (=> (not res!2040912) (not e!2996861))))

(assert (=> d!1536235 (= res!2040912 ((_ is Cons!54307) (keys!19849 (extractMap!2483 (toList!6991 lt!1955291)))))))

(assert (=> d!1536235 (= (contains!17955 (keys!19849 (extractMap!2483 (toList!6991 lt!1955291))) key!5896) lt!1955494)))

(declare-fun b!4799200 () Bool)

(declare-fun e!2996862 () Bool)

(assert (=> b!4799200 (= e!2996861 e!2996862)))

(declare-fun res!2040913 () Bool)

(assert (=> b!4799200 (=> res!2040913 e!2996862)))

(assert (=> b!4799200 (= res!2040913 (= (h!60739 (keys!19849 (extractMap!2483 (toList!6991 lt!1955291)))) key!5896))))

(declare-fun b!4799201 () Bool)

(assert (=> b!4799201 (= e!2996862 (contains!17955 (t!361881 (keys!19849 (extractMap!2483 (toList!6991 lt!1955291)))) key!5896))))

(assert (= (and d!1536235 res!2040912) b!4799200))

(assert (= (and b!4799200 (not res!2040913)) b!4799201))

(assert (=> d!1536235 m!5782196))

(declare-fun m!5782284 () Bool)

(assert (=> d!1536235 m!5782284))

(declare-fun m!5782286 () Bool)

(assert (=> d!1536235 m!5782286))

(declare-fun m!5782288 () Bool)

(assert (=> b!4799201 m!5782288))

(assert (=> b!4799134 d!1536235))

(declare-fun b!4799232 () Bool)

(assert (=> b!4799232 true))

(declare-fun d!1536245 () Bool)

(declare-fun e!2996880 () Bool)

(assert (=> d!1536245 e!2996880))

(declare-fun res!2040942 () Bool)

(assert (=> d!1536245 (=> (not res!2040942) (not e!2996880))))

(declare-fun lt!1955501 () List!54431)

(declare-fun noDuplicate!931 (List!54431) Bool)

(assert (=> d!1536245 (= res!2040942 (noDuplicate!931 lt!1955501))))

(assert (=> d!1536245 (= lt!1955501 (getKeysList!1094 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))))))

(assert (=> d!1536245 (= (keys!19849 (extractMap!2483 (toList!6991 lt!1955291))) lt!1955501)))

(declare-fun b!4799231 () Bool)

(declare-fun res!2040943 () Bool)

(assert (=> b!4799231 (=> (not res!2040943) (not e!2996880))))

(declare-fun length!718 (List!54431) Int)

(declare-fun length!719 (List!54428) Int)

(assert (=> b!4799231 (= res!2040943 (= (length!718 lt!1955501) (length!719 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))))))

(declare-fun res!2040941 () Bool)

(assert (=> b!4799232 (=> (not res!2040941) (not e!2996880))))

(declare-fun lambda!232051 () Int)

(declare-fun forall!12318 (List!54431 Int) Bool)

(assert (=> b!4799232 (= res!2040941 (forall!12318 lt!1955501 lambda!232051))))

(declare-fun b!4799233 () Bool)

(declare-fun lambda!232052 () Int)

(declare-fun map!12270 (List!54428 Int) List!54431)

(assert (=> b!4799233 (= e!2996880 (= (content!9738 lt!1955501) (content!9738 (map!12270 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) lambda!232052))))))

(assert (= (and d!1536245 res!2040942) b!4799231))

(assert (= (and b!4799231 res!2040943) b!4799232))

(assert (= (and b!4799232 res!2040941) b!4799233))

(declare-fun m!5782322 () Bool)

(assert (=> d!1536245 m!5782322))

(assert (=> d!1536245 m!5782188))

(declare-fun m!5782328 () Bool)

(assert (=> b!4799231 m!5782328))

(declare-fun m!5782330 () Bool)

(assert (=> b!4799231 m!5782330))

(declare-fun m!5782332 () Bool)

(assert (=> b!4799232 m!5782332))

(declare-fun m!5782334 () Bool)

(assert (=> b!4799233 m!5782334))

(declare-fun m!5782336 () Bool)

(assert (=> b!4799233 m!5782336))

(assert (=> b!4799233 m!5782336))

(declare-fun m!5782338 () Bool)

(assert (=> b!4799233 m!5782338))

(assert (=> b!4799134 d!1536245))

(declare-fun d!1536263 () Bool)

(declare-fun res!2040948 () Bool)

(declare-fun e!2996886 () Bool)

(assert (=> d!1536263 (=> res!2040948 e!2996886)))

(assert (=> d!1536263 (= res!2040948 ((_ is Nil!54305) (toList!6991 lt!1955291)))))

(assert (=> d!1536263 (= (forall!12315 (toList!6991 lt!1955291) lambda!232003) e!2996886)))

(declare-fun b!4799242 () Bool)

(declare-fun e!2996888 () Bool)

(assert (=> b!4799242 (= e!2996886 e!2996888)))

(declare-fun res!2040950 () Bool)

(assert (=> b!4799242 (=> (not res!2040950) (not e!2996888))))

(assert (=> b!4799242 (= res!2040950 (dynLambda!22088 lambda!232003 (h!60737 (toList!6991 lt!1955291))))))

(declare-fun b!4799244 () Bool)

(assert (=> b!4799244 (= e!2996888 (forall!12315 (t!361879 (toList!6991 lt!1955291)) lambda!232003))))

(assert (= (and d!1536263 (not res!2040948)) b!4799242))

(assert (= (and b!4799242 res!2040950) b!4799244))

(declare-fun b_lambda!187425 () Bool)

(assert (=> (not b_lambda!187425) (not b!4799242)))

(declare-fun m!5782350 () Bool)

(assert (=> b!4799242 m!5782350))

(declare-fun m!5782356 () Bool)

(assert (=> b!4799244 m!5782356))

(assert (=> d!1536201 d!1536263))

(declare-fun d!1536271 () Bool)

(declare-fun lt!1955507 () Bool)

(assert (=> d!1536271 (= lt!1955507 (select (content!9738 e!2996724) key!5896))))

(declare-fun e!2996891 () Bool)

(assert (=> d!1536271 (= lt!1955507 e!2996891)))

(declare-fun res!2040953 () Bool)

(assert (=> d!1536271 (=> (not res!2040953) (not e!2996891))))

(assert (=> d!1536271 (= res!2040953 ((_ is Cons!54307) e!2996724))))

(assert (=> d!1536271 (= (contains!17955 e!2996724 key!5896) lt!1955507)))

(declare-fun b!4799247 () Bool)

(declare-fun e!2996892 () Bool)

(assert (=> b!4799247 (= e!2996891 e!2996892)))

(declare-fun res!2040954 () Bool)

(assert (=> b!4799247 (=> res!2040954 e!2996892)))

(assert (=> b!4799247 (= res!2040954 (= (h!60739 e!2996724) key!5896))))

(declare-fun b!4799248 () Bool)

(assert (=> b!4799248 (= e!2996892 (contains!17955 (t!361881 e!2996724) key!5896))))

(assert (= (and d!1536271 res!2040953) b!4799247))

(assert (= (and b!4799247 (not res!2040954)) b!4799248))

(declare-fun m!5782362 () Bool)

(assert (=> d!1536271 m!5782362))

(declare-fun m!5782364 () Bool)

(assert (=> d!1536271 m!5782364))

(declare-fun m!5782366 () Bool)

(assert (=> b!4799248 m!5782366))

(assert (=> bm!335293 d!1536271))

(declare-fun d!1536277 () Bool)

(declare-fun res!2040959 () Bool)

(declare-fun e!2996899 () Bool)

(assert (=> d!1536277 (=> res!2040959 e!2996899)))

(assert (=> d!1536277 (= res!2040959 (not ((_ is Cons!54304) (_2!31791 (h!60737 (toList!6991 lt!1955291))))))))

(assert (=> d!1536277 (= (noDuplicateKeys!2357 (_2!31791 (h!60737 (toList!6991 lt!1955291)))) e!2996899)))

(declare-fun b!4799257 () Bool)

(declare-fun e!2996900 () Bool)

(assert (=> b!4799257 (= e!2996899 e!2996900)))

(declare-fun res!2040960 () Bool)

(assert (=> b!4799257 (=> (not res!2040960) (not e!2996900))))

(assert (=> b!4799257 (= res!2040960 (not (containsKey!4014 (t!361878 (_2!31791 (h!60737 (toList!6991 lt!1955291)))) (_1!31790 (h!60736 (_2!31791 (h!60737 (toList!6991 lt!1955291))))))))))

(declare-fun b!4799258 () Bool)

(assert (=> b!4799258 (= e!2996900 (noDuplicateKeys!2357 (t!361878 (_2!31791 (h!60737 (toList!6991 lt!1955291))))))))

(assert (= (and d!1536277 (not res!2040959)) b!4799257))

(assert (= (and b!4799257 res!2040960) b!4799258))

(declare-fun m!5782376 () Bool)

(assert (=> b!4799257 m!5782376))

(declare-fun m!5782378 () Bool)

(assert (=> b!4799258 m!5782378))

(assert (=> bs!1156893 d!1536277))

(declare-fun d!1536285 () Bool)

(declare-fun res!2040965 () Bool)

(declare-fun e!2996911 () Bool)

(assert (=> d!1536285 (=> res!2040965 e!2996911)))

(assert (=> d!1536285 (= res!2040965 (and ((_ is Cons!54304) (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (= (_1!31790 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))) key!5896)))))

(assert (=> d!1536285 (= (containsKey!4017 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) key!5896) e!2996911)))

(declare-fun b!4799275 () Bool)

(declare-fun e!2996912 () Bool)

(assert (=> b!4799275 (= e!2996911 e!2996912)))

(declare-fun res!2040966 () Bool)

(assert (=> b!4799275 (=> (not res!2040966) (not e!2996912))))

(assert (=> b!4799275 (= res!2040966 ((_ is Cons!54304) (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))))))

(declare-fun b!4799276 () Bool)

(assert (=> b!4799276 (= e!2996912 (containsKey!4017 (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) key!5896))))

(assert (= (and d!1536285 (not res!2040965)) b!4799275))

(assert (= (and b!4799275 res!2040966) b!4799276))

(declare-fun m!5782382 () Bool)

(assert (=> b!4799276 m!5782382))

(assert (=> d!1536211 d!1536285))

(declare-fun d!1536289 () Bool)

(declare-fun res!2040969 () Bool)

(declare-fun e!2996915 () Bool)

(assert (=> d!1536289 (=> res!2040969 e!2996915)))

(assert (=> d!1536289 (= res!2040969 (and ((_ is Cons!54304) (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (= (_1!31790 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))) key!5896)))))

(assert (=> d!1536289 (= (containsKey!4017 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) key!5896) e!2996915)))

(declare-fun b!4799279 () Bool)

(declare-fun e!2996916 () Bool)

(assert (=> b!4799279 (= e!2996915 e!2996916)))

(declare-fun res!2040970 () Bool)

(assert (=> b!4799279 (=> (not res!2040970) (not e!2996916))))

(assert (=> b!4799279 (= res!2040970 ((_ is Cons!54304) (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))))))

(declare-fun b!4799280 () Bool)

(assert (=> b!4799280 (= e!2996916 (containsKey!4017 (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) key!5896))))

(assert (= (and d!1536289 (not res!2040969)) b!4799279))

(assert (= (and b!4799279 res!2040970) b!4799280))

(declare-fun m!5782390 () Bool)

(assert (=> b!4799280 m!5782390))

(assert (=> b!4798997 d!1536289))

(declare-fun d!1536293 () Bool)

(assert (=> d!1536293 (containsKey!4017 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) key!5896)))

(declare-fun lt!1955513 () Unit!140515)

(declare-fun choose!34659 (List!54428 K!15879) Unit!140515)

(assert (=> d!1536293 (= lt!1955513 (choose!34659 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) key!5896))))

(assert (=> d!1536293 (invariantList!1748 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))))

(assert (=> d!1536293 (= (lemmaInGetKeysListThenContainsKey!1094 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) key!5896) lt!1955513)))

(declare-fun bs!1156917 () Bool)

(assert (= bs!1156917 d!1536293))

(assert (=> bs!1156917 m!5782004))

(declare-fun m!5782406 () Bool)

(assert (=> bs!1156917 m!5782406))

(declare-fun m!5782408 () Bool)

(assert (=> bs!1156917 m!5782408))

(assert (=> b!4798997 d!1536293))

(declare-fun d!1536297 () Bool)

(declare-fun res!2040974 () Bool)

(declare-fun e!2996918 () Bool)

(assert (=> d!1536297 (=> res!2040974 e!2996918)))

(assert (=> d!1536297 (= res!2040974 ((_ is Nil!54305) (toList!6991 lm!2473)))))

(assert (=> d!1536297 (= (forall!12315 (toList!6991 lm!2473) lambda!231996) e!2996918)))

(declare-fun b!4799284 () Bool)

(declare-fun e!2996920 () Bool)

(assert (=> b!4799284 (= e!2996918 e!2996920)))

(declare-fun res!2040975 () Bool)

(assert (=> b!4799284 (=> (not res!2040975) (not e!2996920))))

(assert (=> b!4799284 (= res!2040975 (dynLambda!22088 lambda!231996 (h!60737 (toList!6991 lm!2473))))))

(declare-fun b!4799285 () Bool)

(assert (=> b!4799285 (= e!2996920 (forall!12315 (t!361879 (toList!6991 lm!2473)) lambda!231996))))

(assert (= (and d!1536297 (not res!2040974)) b!4799284))

(assert (= (and b!4799284 res!2040975) b!4799285))

(declare-fun b_lambda!187427 () Bool)

(assert (=> (not b_lambda!187427) (not b!4799284)))

(declare-fun m!5782410 () Bool)

(assert (=> b!4799284 m!5782410))

(declare-fun m!5782412 () Bool)

(assert (=> b!4799285 m!5782412))

(assert (=> d!1536181 d!1536297))

(declare-fun d!1536299 () Bool)

(declare-fun lt!1955514 () Bool)

(assert (=> d!1536299 (= lt!1955514 (select (content!9738 (keys!19849 (extractMap!2483 (toList!6991 lm!2473)))) key!5896))))

(declare-fun e!2996924 () Bool)

(assert (=> d!1536299 (= lt!1955514 e!2996924)))

(declare-fun res!2040980 () Bool)

(assert (=> d!1536299 (=> (not res!2040980) (not e!2996924))))

(assert (=> d!1536299 (= res!2040980 ((_ is Cons!54307) (keys!19849 (extractMap!2483 (toList!6991 lm!2473)))))))

(assert (=> d!1536299 (= (contains!17955 (keys!19849 (extractMap!2483 (toList!6991 lm!2473))) key!5896) lt!1955514)))

(declare-fun b!4799290 () Bool)

(declare-fun e!2996925 () Bool)

(assert (=> b!4799290 (= e!2996924 e!2996925)))

(declare-fun res!2040981 () Bool)

(assert (=> b!4799290 (=> res!2040981 e!2996925)))

(assert (=> b!4799290 (= res!2040981 (= (h!60739 (keys!19849 (extractMap!2483 (toList!6991 lm!2473)))) key!5896))))

(declare-fun b!4799291 () Bool)

(assert (=> b!4799291 (= e!2996925 (contains!17955 (t!361881 (keys!19849 (extractMap!2483 (toList!6991 lm!2473)))) key!5896))))

(assert (= (and d!1536299 res!2040980) b!4799290))

(assert (= (and b!4799290 (not res!2040981)) b!4799291))

(assert (=> d!1536299 m!5782010))

(declare-fun m!5782414 () Bool)

(assert (=> d!1536299 m!5782414))

(declare-fun m!5782416 () Bool)

(assert (=> d!1536299 m!5782416))

(declare-fun m!5782418 () Bool)

(assert (=> b!4799291 m!5782418))

(assert (=> b!4798995 d!1536299))

(declare-fun bs!1156918 () Bool)

(declare-fun b!4799293 () Bool)

(assert (= bs!1156918 (and b!4799293 b!4799232)))

(declare-fun lambda!232055 () Int)

(assert (=> bs!1156918 (= (= (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (= lambda!232055 lambda!232051))))

(assert (=> b!4799293 true))

(declare-fun bs!1156919 () Bool)

(declare-fun b!4799294 () Bool)

(assert (= bs!1156919 (and b!4799294 b!4799233)))

(declare-fun lambda!232056 () Int)

(assert (=> bs!1156919 (= lambda!232056 lambda!232052)))

(declare-fun d!1536301 () Bool)

(declare-fun e!2996926 () Bool)

(assert (=> d!1536301 e!2996926))

(declare-fun res!2040983 () Bool)

(assert (=> d!1536301 (=> (not res!2040983) (not e!2996926))))

(declare-fun lt!1955515 () List!54431)

(assert (=> d!1536301 (= res!2040983 (noDuplicate!931 lt!1955515))))

(assert (=> d!1536301 (= lt!1955515 (getKeysList!1094 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))))))

(assert (=> d!1536301 (= (keys!19849 (extractMap!2483 (toList!6991 lm!2473))) lt!1955515)))

(declare-fun b!4799292 () Bool)

(declare-fun res!2040984 () Bool)

(assert (=> b!4799292 (=> (not res!2040984) (not e!2996926))))

(assert (=> b!4799292 (= res!2040984 (= (length!718 lt!1955515) (length!719 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))))))

(declare-fun res!2040982 () Bool)

(assert (=> b!4799293 (=> (not res!2040982) (not e!2996926))))

(assert (=> b!4799293 (= res!2040982 (forall!12318 lt!1955515 lambda!232055))))

(assert (=> b!4799294 (= e!2996926 (= (content!9738 lt!1955515) (content!9738 (map!12270 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) lambda!232056))))))

(assert (= (and d!1536301 res!2040983) b!4799292))

(assert (= (and b!4799292 res!2040984) b!4799293))

(assert (= (and b!4799293 res!2040982) b!4799294))

(declare-fun m!5782424 () Bool)

(assert (=> d!1536301 m!5782424))

(assert (=> d!1536301 m!5782002))

(declare-fun m!5782426 () Bool)

(assert (=> b!4799292 m!5782426))

(declare-fun m!5782428 () Bool)

(assert (=> b!4799292 m!5782428))

(declare-fun m!5782430 () Bool)

(assert (=> b!4799293 m!5782430))

(declare-fun m!5782432 () Bool)

(assert (=> b!4799294 m!5782432))

(declare-fun m!5782434 () Bool)

(assert (=> b!4799294 m!5782434))

(assert (=> b!4799294 m!5782434))

(declare-fun m!5782436 () Bool)

(assert (=> b!4799294 m!5782436))

(assert (=> b!4798995 d!1536301))

(declare-fun d!1536305 () Bool)

(declare-fun res!2040987 () Bool)

(declare-fun e!2996929 () Bool)

(assert (=> d!1536305 (=> res!2040987 e!2996929)))

(assert (=> d!1536305 (= res!2040987 ((_ is Nil!54305) (t!361879 (toList!6991 lt!1955291))))))

(assert (=> d!1536305 (= (forall!12315 (t!361879 (toList!6991 lt!1955291)) lambda!231973) e!2996929)))

(declare-fun b!4799297 () Bool)

(declare-fun e!2996930 () Bool)

(assert (=> b!4799297 (= e!2996929 e!2996930)))

(declare-fun res!2040988 () Bool)

(assert (=> b!4799297 (=> (not res!2040988) (not e!2996930))))

(assert (=> b!4799297 (= res!2040988 (dynLambda!22088 lambda!231973 (h!60737 (t!361879 (toList!6991 lt!1955291)))))))

(declare-fun b!4799298 () Bool)

(assert (=> b!4799298 (= e!2996930 (forall!12315 (t!361879 (t!361879 (toList!6991 lt!1955291))) lambda!231973))))

(assert (= (and d!1536305 (not res!2040987)) b!4799297))

(assert (= (and b!4799297 res!2040988) b!4799298))

(declare-fun b_lambda!187429 () Bool)

(assert (=> (not b_lambda!187429) (not b!4799297)))

(declare-fun m!5782438 () Bool)

(assert (=> b!4799297 m!5782438))

(declare-fun m!5782440 () Bool)

(assert (=> b!4799298 m!5782440))

(assert (=> b!4799129 d!1536305))

(declare-fun d!1536307 () Bool)

(assert (=> d!1536307 (= (isEmpty!29490 lt!1955403) (not ((_ is Some!13163) lt!1955403)))))

(assert (=> d!1536197 d!1536307))

(declare-fun d!1536309 () Bool)

(declare-fun res!2040989 () Bool)

(declare-fun e!2996931 () Bool)

(assert (=> d!1536309 (=> res!2040989 e!2996931)))

(assert (=> d!1536309 (= res!2040989 (not ((_ is Cons!54304) (apply!13029 lm!2473 lt!1955290))))))

(assert (=> d!1536309 (= (noDuplicateKeys!2357 (apply!13029 lm!2473 lt!1955290)) e!2996931)))

(declare-fun b!4799299 () Bool)

(declare-fun e!2996932 () Bool)

(assert (=> b!4799299 (= e!2996931 e!2996932)))

(declare-fun res!2040990 () Bool)

(assert (=> b!4799299 (=> (not res!2040990) (not e!2996932))))

(assert (=> b!4799299 (= res!2040990 (not (containsKey!4014 (t!361878 (apply!13029 lm!2473 lt!1955290)) (_1!31790 (h!60736 (apply!13029 lm!2473 lt!1955290))))))))

(declare-fun b!4799300 () Bool)

(assert (=> b!4799300 (= e!2996932 (noDuplicateKeys!2357 (t!361878 (apply!13029 lm!2473 lt!1955290))))))

(assert (= (and d!1536309 (not res!2040989)) b!4799299))

(assert (= (and b!4799299 res!2040990) b!4799300))

(declare-fun m!5782442 () Bool)

(assert (=> b!4799299 m!5782442))

(declare-fun m!5782444 () Bool)

(assert (=> b!4799300 m!5782444))

(assert (=> d!1536197 d!1536309))

(declare-fun d!1536311 () Bool)

(declare-fun isEmpty!29493 (Option!13168) Bool)

(assert (=> d!1536311 (= (isDefined!10309 (getValueByKey!2387 (toList!6991 lt!1955291) lt!1955290)) (not (isEmpty!29493 (getValueByKey!2387 (toList!6991 lt!1955291) lt!1955290))))))

(declare-fun bs!1156920 () Bool)

(assert (= bs!1156920 d!1536311))

(assert (=> bs!1156920 m!5782178))

(declare-fun m!5782446 () Bool)

(assert (=> bs!1156920 m!5782446))

(assert (=> b!4799132 d!1536311))

(declare-fun b!4799313 () Bool)

(declare-fun e!2996940 () Option!13168)

(declare-fun e!2996941 () Option!13168)

(assert (=> b!4799313 (= e!2996940 e!2996941)))

(declare-fun c!817992 () Bool)

(assert (=> b!4799313 (= c!817992 (and ((_ is Cons!54305) (toList!6991 lt!1955291)) (not (= (_1!31791 (h!60737 (toList!6991 lt!1955291))) lt!1955290))))))

(declare-fun b!4799312 () Bool)

(assert (=> b!4799312 (= e!2996940 (Some!13167 (_2!31791 (h!60737 (toList!6991 lt!1955291)))))))

(declare-fun b!4799314 () Bool)

(assert (=> b!4799314 (= e!2996941 (getValueByKey!2387 (t!361879 (toList!6991 lt!1955291)) lt!1955290))))

(declare-fun d!1536313 () Bool)

(declare-fun c!817991 () Bool)

(assert (=> d!1536313 (= c!817991 (and ((_ is Cons!54305) (toList!6991 lt!1955291)) (= (_1!31791 (h!60737 (toList!6991 lt!1955291))) lt!1955290)))))

(assert (=> d!1536313 (= (getValueByKey!2387 (toList!6991 lt!1955291) lt!1955290) e!2996940)))

(declare-fun b!4799315 () Bool)

(assert (=> b!4799315 (= e!2996941 None!13167)))

(assert (= (and d!1536313 c!817991) b!4799312))

(assert (= (and d!1536313 (not c!817991)) b!4799313))

(assert (= (and b!4799313 c!817992) b!4799314))

(assert (= (and b!4799313 (not c!817992)) b!4799315))

(declare-fun m!5782450 () Bool)

(assert (=> b!4799314 m!5782450))

(assert (=> b!4799132 d!1536313))

(declare-fun d!1536317 () Bool)

(assert (=> d!1536317 (= (get!18536 lt!1955403) (v!48480 lt!1955403))))

(assert (=> b!4799126 d!1536317))

(declare-fun b!4799451 () Bool)

(assert (=> b!4799451 true))

(declare-fun bs!1156991 () Bool)

(declare-fun b!4799453 () Bool)

(assert (= bs!1156991 (and b!4799453 b!4799451)))

(declare-fun lambda!232107 () Int)

(declare-fun lambda!232106 () Int)

(assert (=> bs!1156991 (= lambda!232107 lambda!232106)))

(assert (=> b!4799453 true))

(declare-fun lt!1955625 () ListMap!6463)

(declare-fun lambda!232108 () Int)

(assert (=> bs!1156991 (= (= lt!1955625 (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) (= lambda!232108 lambda!232106))))

(assert (=> b!4799453 (= (= lt!1955625 (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) (= lambda!232108 lambda!232107))))

(assert (=> b!4799453 true))

(declare-fun bs!1156992 () Bool)

(declare-fun d!1536319 () Bool)

(assert (= bs!1156992 (and d!1536319 b!4799451)))

(declare-fun lambda!232109 () Int)

(declare-fun lt!1955639 () ListMap!6463)

(assert (=> bs!1156992 (= (= lt!1955639 (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) (= lambda!232109 lambda!232106))))

(declare-fun bs!1156993 () Bool)

(assert (= bs!1156993 (and d!1536319 b!4799453)))

(assert (=> bs!1156993 (= (= lt!1955639 (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) (= lambda!232109 lambda!232107))))

(assert (=> bs!1156993 (= (= lt!1955639 lt!1955625) (= lambda!232109 lambda!232108))))

(assert (=> d!1536319 true))

(declare-fun bm!335314 () Bool)

(declare-fun call!335320 () Unit!140515)

(declare-fun lemmaContainsAllItsOwnKeys!957 (ListMap!6463) Unit!140515)

(assert (=> bm!335314 (= call!335320 (lemmaContainsAllItsOwnKeys!957 (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))))))

(declare-fun e!2997035 () Bool)

(assert (=> d!1536319 e!2997035))

(declare-fun res!2041073 () Bool)

(assert (=> d!1536319 (=> (not res!2041073) (not e!2997035))))

(declare-fun forall!12319 (List!54428 Int) Bool)

(assert (=> d!1536319 (= res!2041073 (forall!12319 (_2!31791 (h!60737 (toList!6991 lt!1955291))) lambda!232109))))

(declare-fun e!2997034 () ListMap!6463)

(assert (=> d!1536319 (= lt!1955639 e!2997034)))

(declare-fun c!818018 () Bool)

(assert (=> d!1536319 (= c!818018 ((_ is Nil!54304) (_2!31791 (h!60737 (toList!6991 lt!1955291)))))))

(assert (=> d!1536319 (noDuplicateKeys!2357 (_2!31791 (h!60737 (toList!6991 lt!1955291))))))

(assert (=> d!1536319 (= (addToMapMapFromBucket!1725 (_2!31791 (h!60737 (toList!6991 lt!1955291))) (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) lt!1955639)))

(assert (=> b!4799451 (= e!2997034 (extractMap!2483 (t!361879 (toList!6991 lt!1955291))))))

(declare-fun lt!1955640 () Unit!140515)

(assert (=> b!4799451 (= lt!1955640 call!335320)))

(declare-fun call!335319 () Bool)

(assert (=> b!4799451 call!335319))

(declare-fun lt!1955635 () Unit!140515)

(assert (=> b!4799451 (= lt!1955635 lt!1955640)))

(declare-fun call!335321 () Bool)

(assert (=> b!4799451 call!335321))

(declare-fun lt!1955636 () Unit!140515)

(declare-fun Unit!140545 () Unit!140515)

(assert (=> b!4799451 (= lt!1955636 Unit!140545)))

(declare-fun bm!335315 () Bool)

(assert (=> bm!335315 (= call!335319 (forall!12319 (ite c!818018 (toList!6992 (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) (t!361878 (_2!31791 (h!60737 (toList!6991 lt!1955291))))) (ite c!818018 lambda!232106 lambda!232108)))))

(declare-fun b!4799452 () Bool)

(declare-fun e!2997036 () Bool)

(assert (=> b!4799452 (= e!2997036 (forall!12319 (toList!6992 (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) lambda!232108))))

(assert (=> b!4799453 (= e!2997034 lt!1955625)))

(declare-fun lt!1955641 () ListMap!6463)

(declare-fun +!2501 (ListMap!6463 tuple2!56992) ListMap!6463)

(assert (=> b!4799453 (= lt!1955641 (+!2501 (extractMap!2483 (t!361879 (toList!6991 lt!1955291))) (h!60736 (_2!31791 (h!60737 (toList!6991 lt!1955291))))))))

(assert (=> b!4799453 (= lt!1955625 (addToMapMapFromBucket!1725 (t!361878 (_2!31791 (h!60737 (toList!6991 lt!1955291)))) (+!2501 (extractMap!2483 (t!361879 (toList!6991 lt!1955291))) (h!60736 (_2!31791 (h!60737 (toList!6991 lt!1955291)))))))))

(declare-fun lt!1955638 () Unit!140515)

(assert (=> b!4799453 (= lt!1955638 call!335320)))

(assert (=> b!4799453 (forall!12319 (toList!6992 (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) lambda!232107)))

(declare-fun lt!1955631 () Unit!140515)

(assert (=> b!4799453 (= lt!1955631 lt!1955638)))

(assert (=> b!4799453 (forall!12319 (toList!6992 lt!1955641) lambda!232108)))

(declare-fun lt!1955624 () Unit!140515)

(declare-fun Unit!140547 () Unit!140515)

(assert (=> b!4799453 (= lt!1955624 Unit!140547)))

(assert (=> b!4799453 call!335319))

(declare-fun lt!1955644 () Unit!140515)

(declare-fun Unit!140548 () Unit!140515)

(assert (=> b!4799453 (= lt!1955644 Unit!140548)))

(declare-fun lt!1955634 () Unit!140515)

(declare-fun Unit!140549 () Unit!140515)

(assert (=> b!4799453 (= lt!1955634 Unit!140549)))

(declare-fun lt!1955628 () Unit!140515)

(declare-fun forallContained!4206 (List!54428 Int tuple2!56992) Unit!140515)

(assert (=> b!4799453 (= lt!1955628 (forallContained!4206 (toList!6992 lt!1955641) lambda!232108 (h!60736 (_2!31791 (h!60737 (toList!6991 lt!1955291))))))))

(assert (=> b!4799453 (contains!17952 lt!1955641 (_1!31790 (h!60736 (_2!31791 (h!60737 (toList!6991 lt!1955291))))))))

(declare-fun lt!1955626 () Unit!140515)

(declare-fun Unit!140550 () Unit!140515)

(assert (=> b!4799453 (= lt!1955626 Unit!140550)))

(assert (=> b!4799453 (contains!17952 lt!1955625 (_1!31790 (h!60736 (_2!31791 (h!60737 (toList!6991 lt!1955291))))))))

(declare-fun lt!1955630 () Unit!140515)

(declare-fun Unit!140551 () Unit!140515)

(assert (=> b!4799453 (= lt!1955630 Unit!140551)))

(assert (=> b!4799453 (forall!12319 (_2!31791 (h!60737 (toList!6991 lt!1955291))) lambda!232108)))

(declare-fun lt!1955637 () Unit!140515)

(declare-fun Unit!140552 () Unit!140515)

(assert (=> b!4799453 (= lt!1955637 Unit!140552)))

(assert (=> b!4799453 call!335321))

(declare-fun lt!1955642 () Unit!140515)

(declare-fun Unit!140553 () Unit!140515)

(assert (=> b!4799453 (= lt!1955642 Unit!140553)))

(declare-fun lt!1955643 () Unit!140515)

(declare-fun Unit!140554 () Unit!140515)

(assert (=> b!4799453 (= lt!1955643 Unit!140554)))

(declare-fun lt!1955633 () Unit!140515)

(declare-fun addForallContainsKeyThenBeforeAdding!956 (ListMap!6463 ListMap!6463 K!15879 V!16125) Unit!140515)

(assert (=> b!4799453 (= lt!1955633 (addForallContainsKeyThenBeforeAdding!956 (extractMap!2483 (t!361879 (toList!6991 lt!1955291))) lt!1955625 (_1!31790 (h!60736 (_2!31791 (h!60737 (toList!6991 lt!1955291))))) (_2!31790 (h!60736 (_2!31791 (h!60737 (toList!6991 lt!1955291)))))))))

(assert (=> b!4799453 (forall!12319 (toList!6992 (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) lambda!232108)))

(declare-fun lt!1955629 () Unit!140515)

(assert (=> b!4799453 (= lt!1955629 lt!1955633)))

(assert (=> b!4799453 (forall!12319 (toList!6992 (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) lambda!232108)))

(declare-fun lt!1955627 () Unit!140515)

(declare-fun Unit!140555 () Unit!140515)

(assert (=> b!4799453 (= lt!1955627 Unit!140555)))

(declare-fun res!2041071 () Bool)

(assert (=> b!4799453 (= res!2041071 (forall!12319 (_2!31791 (h!60737 (toList!6991 lt!1955291))) lambda!232108))))

(assert (=> b!4799453 (=> (not res!2041071) (not e!2997036))))

(assert (=> b!4799453 e!2997036))

(declare-fun lt!1955632 () Unit!140515)

(declare-fun Unit!140556 () Unit!140515)

(assert (=> b!4799453 (= lt!1955632 Unit!140556)))

(declare-fun bm!335316 () Bool)

(assert (=> bm!335316 (= call!335321 (forall!12319 (ite c!818018 (toList!6992 (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) (toList!6992 lt!1955641)) (ite c!818018 lambda!232106 lambda!232108)))))

(declare-fun b!4799454 () Bool)

(assert (=> b!4799454 (= e!2997035 (invariantList!1748 (toList!6992 lt!1955639)))))

(declare-fun b!4799455 () Bool)

(declare-fun res!2041072 () Bool)

(assert (=> b!4799455 (=> (not res!2041072) (not e!2997035))))

(assert (=> b!4799455 (= res!2041072 (forall!12319 (toList!6992 (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) lambda!232109))))

(assert (= (and d!1536319 c!818018) b!4799451))

(assert (= (and d!1536319 (not c!818018)) b!4799453))

(assert (= (and b!4799453 res!2041071) b!4799452))

(assert (= (or b!4799451 b!4799453) bm!335315))

(assert (= (or b!4799451 b!4799453) bm!335316))

(assert (= (or b!4799451 b!4799453) bm!335314))

(assert (= (and d!1536319 res!2041073) b!4799455))

(assert (= (and b!4799455 res!2041072) b!4799454))

(assert (=> b!4799453 m!5782212))

(declare-fun m!5782664 () Bool)

(assert (=> b!4799453 m!5782664))

(declare-fun m!5782666 () Bool)

(assert (=> b!4799453 m!5782666))

(declare-fun m!5782668 () Bool)

(assert (=> b!4799453 m!5782668))

(declare-fun m!5782670 () Bool)

(assert (=> b!4799453 m!5782670))

(declare-fun m!5782672 () Bool)

(assert (=> b!4799453 m!5782672))

(declare-fun m!5782674 () Bool)

(assert (=> b!4799453 m!5782674))

(declare-fun m!5782676 () Bool)

(assert (=> b!4799453 m!5782676))

(declare-fun m!5782678 () Bool)

(assert (=> b!4799453 m!5782678))

(declare-fun m!5782680 () Bool)

(assert (=> b!4799453 m!5782680))

(assert (=> b!4799453 m!5782672))

(assert (=> b!4799453 m!5782212))

(assert (=> b!4799453 m!5782666))

(declare-fun m!5782682 () Bool)

(assert (=> b!4799453 m!5782682))

(assert (=> b!4799453 m!5782676))

(declare-fun m!5782684 () Bool)

(assert (=> d!1536319 m!5782684))

(assert (=> d!1536319 m!5782220))

(declare-fun m!5782686 () Bool)

(assert (=> b!4799454 m!5782686))

(assert (=> b!4799452 m!5782672))

(declare-fun m!5782688 () Bool)

(assert (=> bm!335316 m!5782688))

(assert (=> bm!335314 m!5782212))

(declare-fun m!5782690 () Bool)

(assert (=> bm!335314 m!5782690))

(declare-fun m!5782692 () Bool)

(assert (=> bm!335315 m!5782692))

(declare-fun m!5782694 () Bool)

(assert (=> b!4799455 m!5782694))

(assert (=> b!4799142 d!1536319))

(declare-fun bs!1156994 () Bool)

(declare-fun d!1536413 () Bool)

(assert (= bs!1156994 (and d!1536413 d!1536201)))

(declare-fun lambda!232110 () Int)

(assert (=> bs!1156994 (not (= lambda!232110 lambda!232003))))

(declare-fun bs!1156995 () Bool)

(assert (= bs!1156995 (and d!1536413 start!495026)))

(assert (=> bs!1156995 (= lambda!232110 lambda!231973)))

(declare-fun bs!1156996 () Bool)

(assert (= bs!1156996 (and d!1536413 d!1536151)))

(assert (=> bs!1156996 (= lambda!232110 lambda!231993)))

(declare-fun bs!1156997 () Bool)

(assert (= bs!1156997 (and d!1536413 d!1536209)))

(assert (=> bs!1156997 (= lambda!232110 lambda!232006)))

(declare-fun bs!1156998 () Bool)

(assert (= bs!1156998 (and d!1536413 d!1536181)))

(assert (=> bs!1156998 (not (= lambda!232110 lambda!231996))))

(declare-fun bs!1156999 () Bool)

(assert (= bs!1156999 (and d!1536413 d!1536189)))

(assert (=> bs!1156999 (= lambda!232110 lambda!232002)))

(declare-fun bs!1157000 () Bool)

(assert (= bs!1157000 (and d!1536413 d!1536187)))

(assert (=> bs!1157000 (= lambda!232110 lambda!231999)))

(declare-fun bs!1157001 () Bool)

(assert (= bs!1157001 (and d!1536413 d!1536213)))

(assert (=> bs!1157001 (= lambda!232110 lambda!232007)))

(declare-fun lt!1955645 () ListMap!6463)

(assert (=> d!1536413 (invariantList!1748 (toList!6992 lt!1955645))))

(declare-fun e!2997037 () ListMap!6463)

(assert (=> d!1536413 (= lt!1955645 e!2997037)))

(declare-fun c!818019 () Bool)

(assert (=> d!1536413 (= c!818019 ((_ is Cons!54305) (t!361879 (toList!6991 lt!1955291))))))

(assert (=> d!1536413 (forall!12315 (t!361879 (toList!6991 lt!1955291)) lambda!232110)))

(assert (=> d!1536413 (= (extractMap!2483 (t!361879 (toList!6991 lt!1955291))) lt!1955645)))

(declare-fun b!4799458 () Bool)

(assert (=> b!4799458 (= e!2997037 (addToMapMapFromBucket!1725 (_2!31791 (h!60737 (t!361879 (toList!6991 lt!1955291)))) (extractMap!2483 (t!361879 (t!361879 (toList!6991 lt!1955291))))))))

(declare-fun b!4799459 () Bool)

(assert (=> b!4799459 (= e!2997037 (ListMap!6464 Nil!54304))))

(assert (= (and d!1536413 c!818019) b!4799458))

(assert (= (and d!1536413 (not c!818019)) b!4799459))

(declare-fun m!5782696 () Bool)

(assert (=> d!1536413 m!5782696))

(declare-fun m!5782698 () Bool)

(assert (=> d!1536413 m!5782698))

(declare-fun m!5782700 () Bool)

(assert (=> b!4799458 m!5782700))

(assert (=> b!4799458 m!5782700))

(declare-fun m!5782702 () Bool)

(assert (=> b!4799458 m!5782702))

(assert (=> b!4799142 d!1536413))

(assert (=> d!1536187 d!1536185))

(declare-fun d!1536415 () Bool)

(assert (=> d!1536415 (containsKeyBiggerList!598 (toList!6991 lm!2473) key!5896)))

(assert (=> d!1536415 true))

(declare-fun _$33!868 () Unit!140515)

(assert (=> d!1536415 (= (choose!34651 lm!2473 key!5896 hashF!1559) _$33!868)))

(declare-fun bs!1157002 () Bool)

(assert (= bs!1157002 d!1536415))

(assert (=> bs!1157002 m!5781902))

(assert (=> d!1536187 d!1536415))

(declare-fun d!1536417 () Bool)

(declare-fun res!2041074 () Bool)

(declare-fun e!2997038 () Bool)

(assert (=> d!1536417 (=> res!2041074 e!2997038)))

(assert (=> d!1536417 (= res!2041074 ((_ is Nil!54305) (toList!6991 lm!2473)))))

(assert (=> d!1536417 (= (forall!12315 (toList!6991 lm!2473) lambda!231999) e!2997038)))

(declare-fun b!4799460 () Bool)

(declare-fun e!2997039 () Bool)

(assert (=> b!4799460 (= e!2997038 e!2997039)))

(declare-fun res!2041075 () Bool)

(assert (=> b!4799460 (=> (not res!2041075) (not e!2997039))))

(assert (=> b!4799460 (= res!2041075 (dynLambda!22088 lambda!231999 (h!60737 (toList!6991 lm!2473))))))

(declare-fun b!4799461 () Bool)

(assert (=> b!4799461 (= e!2997039 (forall!12315 (t!361879 (toList!6991 lm!2473)) lambda!231999))))

(assert (= (and d!1536417 (not res!2041074)) b!4799460))

(assert (= (and b!4799460 res!2041075) b!4799461))

(declare-fun b_lambda!187461 () Bool)

(assert (=> (not b_lambda!187461) (not b!4799460)))

(declare-fun m!5782704 () Bool)

(assert (=> b!4799460 m!5782704))

(declare-fun m!5782706 () Bool)

(assert (=> b!4799461 m!5782706))

(assert (=> d!1536187 d!1536417))

(declare-fun d!1536419 () Bool)

(assert (=> d!1536419 (isDefined!10309 (getValueByKey!2387 (toList!6991 lt!1955291) lt!1955290))))

(declare-fun lt!1955648 () Unit!140515)

(declare-fun choose!34660 (List!54429 (_ BitVec 64)) Unit!140515)

(assert (=> d!1536419 (= lt!1955648 (choose!34660 (toList!6991 lt!1955291) lt!1955290))))

(declare-fun e!2997042 () Bool)

(assert (=> d!1536419 e!2997042))

(declare-fun res!2041078 () Bool)

(assert (=> d!1536419 (=> (not res!2041078) (not e!2997042))))

(assert (=> d!1536419 (= res!2041078 (isStrictlySorted!895 (toList!6991 lt!1955291)))))

(assert (=> d!1536419 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2178 (toList!6991 lt!1955291) lt!1955290) lt!1955648)))

(declare-fun b!4799464 () Bool)

(assert (=> b!4799464 (= e!2997042 (containsKey!4018 (toList!6991 lt!1955291) lt!1955290))))

(assert (= (and d!1536419 res!2041078) b!4799464))

(assert (=> d!1536419 m!5782178))

(assert (=> d!1536419 m!5782178))

(assert (=> d!1536419 m!5782180))

(declare-fun m!5782708 () Bool)

(assert (=> d!1536419 m!5782708))

(declare-fun m!5782710 () Bool)

(assert (=> d!1536419 m!5782710))

(assert (=> b!4799464 m!5782174))

(assert (=> b!4799130 d!1536419))

(assert (=> b!4799130 d!1536311))

(assert (=> b!4799130 d!1536313))

(declare-fun d!1536421 () Bool)

(declare-fun res!2041083 () Bool)

(declare-fun e!2997047 () Bool)

(assert (=> d!1536421 (=> res!2041083 e!2997047)))

(assert (=> d!1536421 (= res!2041083 (or ((_ is Nil!54305) (toList!6991 lm!2473)) ((_ is Nil!54305) (t!361879 (toList!6991 lm!2473)))))))

(assert (=> d!1536421 (= (isStrictlySorted!895 (toList!6991 lm!2473)) e!2997047)))

(declare-fun b!4799469 () Bool)

(declare-fun e!2997048 () Bool)

(assert (=> b!4799469 (= e!2997047 e!2997048)))

(declare-fun res!2041084 () Bool)

(assert (=> b!4799469 (=> (not res!2041084) (not e!2997048))))

(assert (=> b!4799469 (= res!2041084 (bvslt (_1!31791 (h!60737 (toList!6991 lm!2473))) (_1!31791 (h!60737 (t!361879 (toList!6991 lm!2473))))))))

(declare-fun b!4799470 () Bool)

(assert (=> b!4799470 (= e!2997048 (isStrictlySorted!895 (t!361879 (toList!6991 lm!2473))))))

(assert (= (and d!1536421 (not res!2041083)) b!4799469))

(assert (= (and b!4799469 res!2041084) b!4799470))

(declare-fun m!5782712 () Bool)

(assert (=> b!4799470 m!5782712))

(assert (=> d!1536179 d!1536421))

(declare-fun lt!1955651 () Bool)

(declare-fun d!1536423 () Bool)

(declare-fun content!9740 (List!54428) (InoxSet tuple2!56992))

(assert (=> d!1536423 (= lt!1955651 (select (content!9740 (apply!13029 lm!2473 lt!1955290)) (get!18536 lt!1955403)))))

(declare-fun e!2997054 () Bool)

(assert (=> d!1536423 (= lt!1955651 e!2997054)))

(declare-fun res!2041090 () Bool)

(assert (=> d!1536423 (=> (not res!2041090) (not e!2997054))))

(assert (=> d!1536423 (= res!2041090 ((_ is Cons!54304) (apply!13029 lm!2473 lt!1955290)))))

(assert (=> d!1536423 (= (contains!17956 (apply!13029 lm!2473 lt!1955290) (get!18536 lt!1955403)) lt!1955651)))

(declare-fun b!4799475 () Bool)

(declare-fun e!2997053 () Bool)

(assert (=> b!4799475 (= e!2997054 e!2997053)))

(declare-fun res!2041089 () Bool)

(assert (=> b!4799475 (=> res!2041089 e!2997053)))

(assert (=> b!4799475 (= res!2041089 (= (h!60736 (apply!13029 lm!2473 lt!1955290)) (get!18536 lt!1955403)))))

(declare-fun b!4799476 () Bool)

(assert (=> b!4799476 (= e!2997053 (contains!17956 (t!361878 (apply!13029 lm!2473 lt!1955290)) (get!18536 lt!1955403)))))

(assert (= (and d!1536423 res!2041090) b!4799475))

(assert (= (and b!4799475 (not res!2041089)) b!4799476))

(assert (=> d!1536423 m!5781914))

(declare-fun m!5782714 () Bool)

(assert (=> d!1536423 m!5782714))

(assert (=> d!1536423 m!5782156))

(declare-fun m!5782716 () Bool)

(assert (=> d!1536423 m!5782716))

(assert (=> b!4799476 m!5782156))

(declare-fun m!5782718 () Bool)

(assert (=> b!4799476 m!5782718))

(assert (=> b!4799122 d!1536423))

(assert (=> b!4799122 d!1536317))

(declare-fun d!1536425 () Bool)

(declare-fun c!818020 () Bool)

(declare-fun e!2997056 () Bool)

(assert (=> d!1536425 (= c!818020 e!2997056)))

(declare-fun res!2041091 () Bool)

(assert (=> d!1536425 (=> (not res!2041091) (not e!2997056))))

(assert (=> d!1536425 (= res!2041091 ((_ is Cons!54305) (t!361879 (toList!6991 lm!2473))))))

(declare-fun e!2997055 () V!16125)

(assert (=> d!1536425 (= (getValue!144 (t!361879 (toList!6991 lm!2473)) key!5896) e!2997055)))

(declare-fun b!4799479 () Bool)

(assert (=> b!4799479 (= e!2997056 (containsKey!4014 (_2!31791 (h!60737 (t!361879 (toList!6991 lm!2473)))) key!5896))))

(declare-fun b!4799477 () Bool)

(assert (=> b!4799477 (= e!2997055 (_2!31790 (get!18536 (getPair!928 (_2!31791 (h!60737 (t!361879 (toList!6991 lm!2473)))) key!5896))))))

(declare-fun b!4799478 () Bool)

(assert (=> b!4799478 (= e!2997055 (getValue!144 (t!361879 (t!361879 (toList!6991 lm!2473))) key!5896))))

(assert (= (and d!1536425 res!2041091) b!4799479))

(assert (= (and d!1536425 c!818020) b!4799477))

(assert (= (and d!1536425 (not c!818020)) b!4799478))

(declare-fun m!5782720 () Bool)

(assert (=> b!4799479 m!5782720))

(declare-fun m!5782722 () Bool)

(assert (=> b!4799477 m!5782722))

(assert (=> b!4799477 m!5782722))

(declare-fun m!5782724 () Bool)

(assert (=> b!4799477 m!5782724))

(declare-fun m!5782726 () Bool)

(assert (=> b!4799478 m!5782726))

(assert (=> b!4799102 d!1536425))

(declare-fun d!1536427 () Bool)

(declare-fun noDuplicatedKeys!450 (List!54428) Bool)

(assert (=> d!1536427 (= (invariantList!1748 (toList!6992 lt!1955419)) (noDuplicatedKeys!450 (toList!6992 lt!1955419)))))

(declare-fun bs!1157003 () Bool)

(assert (= bs!1157003 d!1536427))

(declare-fun m!5782728 () Bool)

(assert (=> bs!1157003 m!5782728))

(assert (=> d!1536213 d!1536427))

(declare-fun d!1536429 () Bool)

(declare-fun res!2041092 () Bool)

(declare-fun e!2997057 () Bool)

(assert (=> d!1536429 (=> res!2041092 e!2997057)))

(assert (=> d!1536429 (= res!2041092 ((_ is Nil!54305) (toList!6991 lt!1955291)))))

(assert (=> d!1536429 (= (forall!12315 (toList!6991 lt!1955291) lambda!232007) e!2997057)))

(declare-fun b!4799480 () Bool)

(declare-fun e!2997058 () Bool)

(assert (=> b!4799480 (= e!2997057 e!2997058)))

(declare-fun res!2041093 () Bool)

(assert (=> b!4799480 (=> (not res!2041093) (not e!2997058))))

(assert (=> b!4799480 (= res!2041093 (dynLambda!22088 lambda!232007 (h!60737 (toList!6991 lt!1955291))))))

(declare-fun b!4799481 () Bool)

(assert (=> b!4799481 (= e!2997058 (forall!12315 (t!361879 (toList!6991 lt!1955291)) lambda!232007))))

(assert (= (and d!1536429 (not res!2041092)) b!4799480))

(assert (= (and b!4799480 res!2041093) b!4799481))

(declare-fun b_lambda!187463 () Bool)

(assert (=> (not b_lambda!187463) (not b!4799480)))

(declare-fun m!5782730 () Bool)

(assert (=> b!4799480 m!5782730))

(declare-fun m!5782732 () Bool)

(assert (=> b!4799481 m!5782732))

(assert (=> d!1536213 d!1536429))

(declare-fun d!1536431 () Bool)

(declare-fun res!2041094 () Bool)

(declare-fun e!2997061 () Bool)

(assert (=> d!1536431 (=> res!2041094 e!2997061)))

(declare-fun e!2997059 () Bool)

(assert (=> d!1536431 (= res!2041094 e!2997059)))

(declare-fun res!2041096 () Bool)

(assert (=> d!1536431 (=> (not res!2041096) (not e!2997059))))

(assert (=> d!1536431 (= res!2041096 ((_ is Cons!54305) (t!361879 (toList!6991 lm!2473))))))

(assert (=> d!1536431 (= (containsKeyBiggerList!598 (t!361879 (toList!6991 lm!2473)) key!5896) e!2997061)))

(declare-fun b!4799482 () Bool)

(assert (=> b!4799482 (= e!2997059 (containsKey!4014 (_2!31791 (h!60737 (t!361879 (toList!6991 lm!2473)))) key!5896))))

(declare-fun b!4799483 () Bool)

(declare-fun e!2997060 () Bool)

(assert (=> b!4799483 (= e!2997061 e!2997060)))

(declare-fun res!2041095 () Bool)

(assert (=> b!4799483 (=> (not res!2041095) (not e!2997060))))

(assert (=> b!4799483 (= res!2041095 ((_ is Cons!54305) (t!361879 (toList!6991 lm!2473))))))

(declare-fun b!4799484 () Bool)

(assert (=> b!4799484 (= e!2997060 (containsKeyBiggerList!598 (t!361879 (t!361879 (toList!6991 lm!2473))) key!5896))))

(assert (= (and d!1536431 res!2041096) b!4799482))

(assert (= (and d!1536431 (not res!2041094)) b!4799483))

(assert (= (and b!4799483 res!2041095) b!4799484))

(assert (=> b!4799482 m!5782720))

(declare-fun m!5782734 () Bool)

(assert (=> b!4799484 m!5782734))

(assert (=> b!4799091 d!1536431))

(assert (=> b!4799089 d!1536215))

(declare-fun d!1536433 () Bool)

(assert (=> d!1536433 (= (isEmpty!29490 (getPair!928 (apply!13029 lm!2473 lt!1955290) key!5896)) (not ((_ is Some!13163) (getPair!928 (apply!13029 lm!2473 lt!1955290) key!5896))))))

(assert (=> d!1536195 d!1536433))

(declare-fun d!1536435 () Bool)

(assert (=> d!1536435 (= (invariantList!1748 (toList!6992 lt!1955382)) (noDuplicatedKeys!450 (toList!6992 lt!1955382)))))

(declare-fun bs!1157004 () Bool)

(assert (= bs!1157004 d!1536435))

(declare-fun m!5782736 () Bool)

(assert (=> bs!1157004 m!5782736))

(assert (=> d!1536151 d!1536435))

(declare-fun d!1536437 () Bool)

(declare-fun res!2041097 () Bool)

(declare-fun e!2997062 () Bool)

(assert (=> d!1536437 (=> res!2041097 e!2997062)))

(assert (=> d!1536437 (= res!2041097 ((_ is Nil!54305) (toList!6991 lm!2473)))))

(assert (=> d!1536437 (= (forall!12315 (toList!6991 lm!2473) lambda!231993) e!2997062)))

(declare-fun b!4799485 () Bool)

(declare-fun e!2997063 () Bool)

(assert (=> b!4799485 (= e!2997062 e!2997063)))

(declare-fun res!2041098 () Bool)

(assert (=> b!4799485 (=> (not res!2041098) (not e!2997063))))

(assert (=> b!4799485 (= res!2041098 (dynLambda!22088 lambda!231993 (h!60737 (toList!6991 lm!2473))))))

(declare-fun b!4799486 () Bool)

(assert (=> b!4799486 (= e!2997063 (forall!12315 (t!361879 (toList!6991 lm!2473)) lambda!231993))))

(assert (= (and d!1536437 (not res!2041097)) b!4799485))

(assert (= (and b!4799485 res!2041098) b!4799486))

(declare-fun b_lambda!187465 () Bool)

(assert (=> (not b_lambda!187465) (not b!4799485)))

(declare-fun m!5782738 () Bool)

(assert (=> b!4799485 m!5782738))

(declare-fun m!5782740 () Bool)

(assert (=> b!4799486 m!5782740))

(assert (=> d!1536151 d!1536437))

(declare-fun d!1536439 () Bool)

(assert (=> d!1536439 (= (isDefined!10305 (getPair!928 (apply!13029 lm!2473 (hash!5007 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29490 (getPair!928 (apply!13029 lm!2473 (hash!5007 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1157005 () Bool)

(assert (= bs!1157005 d!1536439))

(assert (=> bs!1157005 m!5782138))

(declare-fun m!5782742 () Bool)

(assert (=> bs!1157005 m!5782742))

(assert (=> b!4799094 d!1536439))

(declare-fun b!4799487 () Bool)

(declare-fun e!2997064 () Option!13164)

(assert (=> b!4799487 (= e!2997064 None!13163)))

(declare-fun e!2997066 () Option!13164)

(declare-fun b!4799488 () Bool)

(assert (=> b!4799488 (= e!2997066 (Some!13163 (h!60736 (apply!13029 lm!2473 (hash!5007 hashF!1559 key!5896)))))))

(declare-fun e!2997067 () Bool)

(declare-fun b!4799489 () Bool)

(declare-fun lt!1955652 () Option!13164)

(assert (=> b!4799489 (= e!2997067 (contains!17956 (apply!13029 lm!2473 (hash!5007 hashF!1559 key!5896)) (get!18536 lt!1955652)))))

(declare-fun e!2997065 () Bool)

(declare-fun b!4799490 () Bool)

(assert (=> b!4799490 (= e!2997065 (not (containsKey!4014 (apply!13029 lm!2473 (hash!5007 hashF!1559 key!5896)) key!5896)))))

(declare-fun b!4799491 () Bool)

(assert (=> b!4799491 (= e!2997066 e!2997064)))

(declare-fun c!818022 () Bool)

(assert (=> b!4799491 (= c!818022 ((_ is Cons!54304) (apply!13029 lm!2473 (hash!5007 hashF!1559 key!5896))))))

(declare-fun b!4799492 () Bool)

(assert (=> b!4799492 (= e!2997064 (getPair!928 (t!361878 (apply!13029 lm!2473 (hash!5007 hashF!1559 key!5896))) key!5896))))

(declare-fun d!1536441 () Bool)

(declare-fun e!2997068 () Bool)

(assert (=> d!1536441 e!2997068))

(declare-fun res!2041099 () Bool)

(assert (=> d!1536441 (=> res!2041099 e!2997068)))

(assert (=> d!1536441 (= res!2041099 e!2997065)))

(declare-fun res!2041102 () Bool)

(assert (=> d!1536441 (=> (not res!2041102) (not e!2997065))))

(assert (=> d!1536441 (= res!2041102 (isEmpty!29490 lt!1955652))))

(assert (=> d!1536441 (= lt!1955652 e!2997066)))

(declare-fun c!818021 () Bool)

(assert (=> d!1536441 (= c!818021 (and ((_ is Cons!54304) (apply!13029 lm!2473 (hash!5007 hashF!1559 key!5896))) (= (_1!31790 (h!60736 (apply!13029 lm!2473 (hash!5007 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1536441 (noDuplicateKeys!2357 (apply!13029 lm!2473 (hash!5007 hashF!1559 key!5896)))))

(assert (=> d!1536441 (= (getPair!928 (apply!13029 lm!2473 (hash!5007 hashF!1559 key!5896)) key!5896) lt!1955652)))

(declare-fun b!4799493 () Bool)

(declare-fun res!2041100 () Bool)

(assert (=> b!4799493 (=> (not res!2041100) (not e!2997067))))

(assert (=> b!4799493 (= res!2041100 (= (_1!31790 (get!18536 lt!1955652)) key!5896))))

(declare-fun b!4799494 () Bool)

(assert (=> b!4799494 (= e!2997068 e!2997067)))

(declare-fun res!2041101 () Bool)

(assert (=> b!4799494 (=> (not res!2041101) (not e!2997067))))

(assert (=> b!4799494 (= res!2041101 (isDefined!10305 lt!1955652))))

(assert (= (and d!1536441 c!818021) b!4799488))

(assert (= (and d!1536441 (not c!818021)) b!4799491))

(assert (= (and b!4799491 c!818022) b!4799492))

(assert (= (and b!4799491 (not c!818022)) b!4799487))

(assert (= (and d!1536441 res!2041102) b!4799490))

(assert (= (and d!1536441 (not res!2041099)) b!4799494))

(assert (= (and b!4799494 res!2041101) b!4799493))

(assert (= (and b!4799493 res!2041100) b!4799489))

(declare-fun m!5782744 () Bool)

(assert (=> b!4799494 m!5782744))

(declare-fun m!5782746 () Bool)

(assert (=> b!4799492 m!5782746))

(declare-fun m!5782748 () Bool)

(assert (=> b!4799489 m!5782748))

(assert (=> b!4799489 m!5782136))

(assert (=> b!4799489 m!5782748))

(declare-fun m!5782750 () Bool)

(assert (=> b!4799489 m!5782750))

(assert (=> b!4799490 m!5782136))

(declare-fun m!5782752 () Bool)

(assert (=> b!4799490 m!5782752))

(declare-fun m!5782754 () Bool)

(assert (=> d!1536441 m!5782754))

(assert (=> d!1536441 m!5782136))

(declare-fun m!5782756 () Bool)

(assert (=> d!1536441 m!5782756))

(assert (=> b!4799493 m!5782748))

(assert (=> b!4799094 d!1536441))

(declare-fun d!1536443 () Bool)

(assert (=> d!1536443 (= (apply!13029 lm!2473 (hash!5007 hashF!1559 key!5896)) (get!18537 (getValueByKey!2387 (toList!6991 lm!2473) (hash!5007 hashF!1559 key!5896))))))

(declare-fun bs!1157006 () Bool)

(assert (= bs!1157006 d!1536443))

(assert (=> bs!1157006 m!5781906))

(declare-fun m!5782758 () Bool)

(assert (=> bs!1157006 m!5782758))

(assert (=> bs!1157006 m!5782758))

(declare-fun m!5782760 () Bool)

(assert (=> bs!1157006 m!5782760))

(assert (=> b!4799094 d!1536443))

(assert (=> b!4799094 d!1536193))

(declare-fun d!1536445 () Bool)

(declare-fun isEmpty!29494 (Option!13167) Bool)

(assert (=> d!1536445 (= (isDefined!10308 (getValueByKey!2386 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) key!5896)) (not (isEmpty!29494 (getValueByKey!2386 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) key!5896))))))

(declare-fun bs!1157007 () Bool)

(assert (= bs!1157007 d!1536445))

(assert (=> bs!1157007 m!5782192))

(declare-fun m!5782762 () Bool)

(assert (=> bs!1157007 m!5782762))

(assert (=> b!4799138 d!1536445))

(declare-fun b!4799506 () Bool)

(declare-fun e!2997074 () Option!13167)

(assert (=> b!4799506 (= e!2997074 None!13166)))

(declare-fun b!4799505 () Bool)

(assert (=> b!4799505 (= e!2997074 (getValueByKey!2386 (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) key!5896))))

(declare-fun d!1536447 () Bool)

(declare-fun c!818027 () Bool)

(assert (=> d!1536447 (= c!818027 (and ((_ is Cons!54304) (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (= (_1!31790 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))) key!5896)))))

(declare-fun e!2997073 () Option!13167)

(assert (=> d!1536447 (= (getValueByKey!2386 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) key!5896) e!2997073)))

(declare-fun b!4799503 () Bool)

(assert (=> b!4799503 (= e!2997073 (Some!13166 (_2!31790 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))))))))

(declare-fun b!4799504 () Bool)

(assert (=> b!4799504 (= e!2997073 e!2997074)))

(declare-fun c!818028 () Bool)

(assert (=> b!4799504 (= c!818028 (and ((_ is Cons!54304) (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (not (= (_1!31790 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))) key!5896))))))

(assert (= (and d!1536447 c!818027) b!4799503))

(assert (= (and d!1536447 (not c!818027)) b!4799504))

(assert (= (and b!4799504 c!818028) b!4799505))

(assert (= (and b!4799504 (not c!818028)) b!4799506))

(declare-fun m!5782764 () Bool)

(assert (=> b!4799505 m!5782764))

(assert (=> b!4799138 d!1536447))

(declare-fun d!1536449 () Bool)

(declare-fun res!2041107 () Bool)

(declare-fun e!2997079 () Bool)

(assert (=> d!1536449 (=> res!2041107 e!2997079)))

(assert (=> d!1536449 (= res!2041107 (and ((_ is Cons!54305) (toList!6991 lm!2473)) (= (_1!31791 (h!60737 (toList!6991 lm!2473))) lt!1955290)))))

(assert (=> d!1536449 (= (containsKey!4018 (toList!6991 lm!2473) lt!1955290) e!2997079)))

(declare-fun b!4799511 () Bool)

(declare-fun e!2997080 () Bool)

(assert (=> b!4799511 (= e!2997079 e!2997080)))

(declare-fun res!2041108 () Bool)

(assert (=> b!4799511 (=> (not res!2041108) (not e!2997080))))

(assert (=> b!4799511 (= res!2041108 (and (or (not ((_ is Cons!54305) (toList!6991 lm!2473))) (bvsle (_1!31791 (h!60737 (toList!6991 lm!2473))) lt!1955290)) ((_ is Cons!54305) (toList!6991 lm!2473)) (bvslt (_1!31791 (h!60737 (toList!6991 lm!2473))) lt!1955290)))))

(declare-fun b!4799512 () Bool)

(assert (=> b!4799512 (= e!2997080 (containsKey!4018 (t!361879 (toList!6991 lm!2473)) lt!1955290))))

(assert (= (and d!1536449 (not res!2041107)) b!4799511))

(assert (= (and b!4799511 res!2041108) b!4799512))

(declare-fun m!5782766 () Bool)

(assert (=> b!4799512 m!5782766))

(assert (=> d!1536183 d!1536449))

(declare-fun d!1536451 () Bool)

(assert (=> d!1536451 (= (isDefined!10309 (getValueByKey!2387 (toList!6991 lm!2473) lt!1955290)) (not (isEmpty!29493 (getValueByKey!2387 (toList!6991 lm!2473) lt!1955290))))))

(declare-fun bs!1157008 () Bool)

(assert (= bs!1157008 d!1536451))

(assert (=> bs!1157008 m!5782120))

(declare-fun m!5782768 () Bool)

(assert (=> bs!1157008 m!5782768))

(assert (=> b!4799082 d!1536451))

(declare-fun b!4799514 () Bool)

(declare-fun e!2997081 () Option!13168)

(declare-fun e!2997082 () Option!13168)

(assert (=> b!4799514 (= e!2997081 e!2997082)))

(declare-fun c!818030 () Bool)

(assert (=> b!4799514 (= c!818030 (and ((_ is Cons!54305) (toList!6991 lm!2473)) (not (= (_1!31791 (h!60737 (toList!6991 lm!2473))) lt!1955290))))))

(declare-fun b!4799513 () Bool)

(assert (=> b!4799513 (= e!2997081 (Some!13167 (_2!31791 (h!60737 (toList!6991 lm!2473)))))))

(declare-fun b!4799515 () Bool)

(assert (=> b!4799515 (= e!2997082 (getValueByKey!2387 (t!361879 (toList!6991 lm!2473)) lt!1955290))))

(declare-fun d!1536453 () Bool)

(declare-fun c!818029 () Bool)

(assert (=> d!1536453 (= c!818029 (and ((_ is Cons!54305) (toList!6991 lm!2473)) (= (_1!31791 (h!60737 (toList!6991 lm!2473))) lt!1955290)))))

(assert (=> d!1536453 (= (getValueByKey!2387 (toList!6991 lm!2473) lt!1955290) e!2997081)))

(declare-fun b!4799516 () Bool)

(assert (=> b!4799516 (= e!2997082 None!13167)))

(assert (= (and d!1536453 c!818029) b!4799513))

(assert (= (and d!1536453 (not c!818029)) b!4799514))

(assert (= (and b!4799514 c!818030) b!4799515))

(assert (= (and b!4799514 (not c!818030)) b!4799516))

(declare-fun m!5782770 () Bool)

(assert (=> b!4799515 m!5782770))

(assert (=> b!4799082 d!1536453))

(declare-fun d!1536455 () Bool)

(assert (=> d!1536455 (isDefined!10309 (getValueByKey!2387 (toList!6991 lm!2473) lt!1955290))))

(declare-fun lt!1955653 () Unit!140515)

(assert (=> d!1536455 (= lt!1955653 (choose!34660 (toList!6991 lm!2473) lt!1955290))))

(declare-fun e!2997083 () Bool)

(assert (=> d!1536455 e!2997083))

(declare-fun res!2041109 () Bool)

(assert (=> d!1536455 (=> (not res!2041109) (not e!2997083))))

(assert (=> d!1536455 (= res!2041109 (isStrictlySorted!895 (toList!6991 lm!2473)))))

(assert (=> d!1536455 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2178 (toList!6991 lm!2473) lt!1955290) lt!1955653)))

(declare-fun b!4799517 () Bool)

(assert (=> b!4799517 (= e!2997083 (containsKey!4018 (toList!6991 lm!2473) lt!1955290))))

(assert (= (and d!1536455 res!2041109) b!4799517))

(assert (=> d!1536455 m!5782120))

(assert (=> d!1536455 m!5782120))

(assert (=> d!1536455 m!5782122))

(declare-fun m!5782772 () Bool)

(assert (=> d!1536455 m!5782772))

(assert (=> d!1536455 m!5782112))

(assert (=> b!4799517 m!5782116))

(assert (=> b!4799080 d!1536455))

(assert (=> b!4799080 d!1536451))

(assert (=> b!4799080 d!1536453))

(declare-fun d!1536457 () Bool)

(assert (=> d!1536457 (isDefined!10308 (getValueByKey!2386 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) key!5896))))

(declare-fun lt!1955656 () Unit!140515)

(declare-fun choose!34661 (List!54428 K!15879) Unit!140515)

(assert (=> d!1536457 (= lt!1955656 (choose!34661 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) key!5896))))

(assert (=> d!1536457 (invariantList!1748 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))))

(assert (=> d!1536457 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2177 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) key!5896) lt!1955656)))

(declare-fun bs!1157009 () Bool)

(assert (= bs!1157009 d!1536457))

(assert (=> bs!1157009 m!5782192))

(assert (=> bs!1157009 m!5782192))

(assert (=> bs!1157009 m!5782194))

(declare-fun m!5782774 () Bool)

(assert (=> bs!1157009 m!5782774))

(declare-fun m!5782776 () Bool)

(assert (=> bs!1157009 m!5782776))

(assert (=> b!4799135 d!1536457))

(assert (=> b!4799135 d!1536445))

(assert (=> b!4799135 d!1536447))

(declare-fun d!1536459 () Bool)

(assert (=> d!1536459 (contains!17955 (getKeysList!1094 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) key!5896)))

(declare-fun lt!1955659 () Unit!140515)

(declare-fun choose!34662 (List!54428 K!15879) Unit!140515)

(assert (=> d!1536459 (= lt!1955659 (choose!34662 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) key!5896))))

(assert (=> d!1536459 (invariantList!1748 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))))

(assert (=> d!1536459 (= (lemmaInListThenGetKeysListContains!1089 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) key!5896) lt!1955659)))

(declare-fun bs!1157010 () Bool)

(assert (= bs!1157010 d!1536459))

(assert (=> bs!1157010 m!5782188))

(assert (=> bs!1157010 m!5782188))

(declare-fun m!5782778 () Bool)

(assert (=> bs!1157010 m!5782778))

(declare-fun m!5782780 () Bool)

(assert (=> bs!1157010 m!5782780))

(assert (=> bs!1157010 m!5782776))

(assert (=> b!4799135 d!1536459))

(declare-fun d!1536461 () Bool)

(assert (=> d!1536461 (= (isDefined!10308 (getValueByKey!2386 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) key!5896)) (not (isEmpty!29494 (getValueByKey!2386 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) key!5896))))))

(declare-fun bs!1157011 () Bool)

(assert (= bs!1157011 d!1536461))

(assert (=> bs!1157011 m!5782006))

(declare-fun m!5782782 () Bool)

(assert (=> bs!1157011 m!5782782))

(assert (=> b!4798999 d!1536461))

(declare-fun b!4799521 () Bool)

(declare-fun e!2997085 () Option!13167)

(assert (=> b!4799521 (= e!2997085 None!13166)))

(declare-fun b!4799520 () Bool)

(assert (=> b!4799520 (= e!2997085 (getValueByKey!2386 (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) key!5896))))

(declare-fun d!1536463 () Bool)

(declare-fun c!818031 () Bool)

(assert (=> d!1536463 (= c!818031 (and ((_ is Cons!54304) (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (= (_1!31790 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))) key!5896)))))

(declare-fun e!2997084 () Option!13167)

(assert (=> d!1536463 (= (getValueByKey!2386 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) key!5896) e!2997084)))

(declare-fun b!4799518 () Bool)

(assert (=> b!4799518 (= e!2997084 (Some!13166 (_2!31790 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))))))))

(declare-fun b!4799519 () Bool)

(assert (=> b!4799519 (= e!2997084 e!2997085)))

(declare-fun c!818032 () Bool)

(assert (=> b!4799519 (= c!818032 (and ((_ is Cons!54304) (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (not (= (_1!31790 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))) key!5896))))))

(assert (= (and d!1536463 c!818031) b!4799518))

(assert (= (and d!1536463 (not c!818031)) b!4799519))

(assert (= (and b!4799519 c!818032) b!4799520))

(assert (= (and b!4799519 (not c!818032)) b!4799521))

(declare-fun m!5782784 () Bool)

(assert (=> b!4799520 m!5782784))

(assert (=> b!4798999 d!1536463))

(declare-fun d!1536465 () Bool)

(declare-fun res!2041110 () Bool)

(declare-fun e!2997086 () Bool)

(assert (=> d!1536465 (=> res!2041110 e!2997086)))

(assert (=> d!1536465 (= res!2041110 ((_ is Nil!54305) (t!361879 (toList!6991 lm!2473))))))

(assert (=> d!1536465 (= (forall!12315 (t!361879 (toList!6991 lm!2473)) lambda!231973) e!2997086)))

(declare-fun b!4799522 () Bool)

(declare-fun e!2997087 () Bool)

(assert (=> b!4799522 (= e!2997086 e!2997087)))

(declare-fun res!2041111 () Bool)

(assert (=> b!4799522 (=> (not res!2041111) (not e!2997087))))

(assert (=> b!4799522 (= res!2041111 (dynLambda!22088 lambda!231973 (h!60737 (t!361879 (toList!6991 lm!2473)))))))

(declare-fun b!4799523 () Bool)

(assert (=> b!4799523 (= e!2997087 (forall!12315 (t!361879 (t!361879 (toList!6991 lm!2473))) lambda!231973))))

(assert (= (and d!1536465 (not res!2041110)) b!4799522))

(assert (= (and b!4799522 res!2041111) b!4799523))

(declare-fun b_lambda!187467 () Bool)

(assert (=> (not b_lambda!187467) (not b!4799522)))

(declare-fun m!5782786 () Bool)

(assert (=> b!4799522 m!5782786))

(declare-fun m!5782788 () Bool)

(assert (=> b!4799523 m!5782788))

(assert (=> b!4799071 d!1536465))

(assert (=> b!4799133 d!1536235))

(assert (=> b!4799133 d!1536245))

(declare-fun d!1536467 () Bool)

(assert (=> d!1536467 (isDefined!10308 (getValueByKey!2386 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) key!5896))))

(declare-fun lt!1955660 () Unit!140515)

(assert (=> d!1536467 (= lt!1955660 (choose!34661 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) key!5896))))

(assert (=> d!1536467 (invariantList!1748 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))))

(assert (=> d!1536467 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2177 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) key!5896) lt!1955660)))

(declare-fun bs!1157012 () Bool)

(assert (= bs!1157012 d!1536467))

(assert (=> bs!1157012 m!5782006))

(assert (=> bs!1157012 m!5782006))

(assert (=> bs!1157012 m!5782008))

(declare-fun m!5782790 () Bool)

(assert (=> bs!1157012 m!5782790))

(assert (=> bs!1157012 m!5782408))

(assert (=> b!4798996 d!1536467))

(assert (=> b!4798996 d!1536461))

(assert (=> b!4798996 d!1536463))

(declare-fun d!1536469 () Bool)

(assert (=> d!1536469 (contains!17955 (getKeysList!1094 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) key!5896)))

(declare-fun lt!1955661 () Unit!140515)

(assert (=> d!1536469 (= lt!1955661 (choose!34662 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) key!5896))))

(assert (=> d!1536469 (invariantList!1748 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))))

(assert (=> d!1536469 (= (lemmaInListThenGetKeysListContains!1089 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) key!5896) lt!1955661)))

(declare-fun bs!1157013 () Bool)

(assert (= bs!1157013 d!1536469))

(assert (=> bs!1157013 m!5782002))

(assert (=> bs!1157013 m!5782002))

(declare-fun m!5782792 () Bool)

(assert (=> bs!1157013 m!5782792))

(declare-fun m!5782794 () Bool)

(assert (=> bs!1157013 m!5782794))

(assert (=> bs!1157013 m!5782408))

(assert (=> b!4798996 d!1536469))

(declare-fun d!1536471 () Bool)

(declare-fun choose!34663 (Hashable!6956 K!15879) (_ BitVec 64))

(assert (=> d!1536471 (= (hash!5009 hashF!1559 key!5896) (choose!34663 hashF!1559 key!5896))))

(declare-fun bs!1157014 () Bool)

(assert (= bs!1157014 d!1536471))

(declare-fun m!5782796 () Bool)

(assert (=> bs!1157014 m!5782796))

(assert (=> d!1536193 d!1536471))

(assert (=> b!4798994 d!1536299))

(assert (=> b!4798994 d!1536301))

(declare-fun d!1536473 () Bool)

(declare-fun res!2041112 () Bool)

(declare-fun e!2997088 () Bool)

(assert (=> d!1536473 (=> res!2041112 e!2997088)))

(assert (=> d!1536473 (= res!2041112 (not ((_ is Cons!54304) (_2!31791 (h!60737 (toList!6991 lm!2473))))))))

(assert (=> d!1536473 (= (noDuplicateKeys!2357 (_2!31791 (h!60737 (toList!6991 lm!2473)))) e!2997088)))

(declare-fun b!4799524 () Bool)

(declare-fun e!2997089 () Bool)

(assert (=> b!4799524 (= e!2997088 e!2997089)))

(declare-fun res!2041113 () Bool)

(assert (=> b!4799524 (=> (not res!2041113) (not e!2997089))))

(assert (=> b!4799524 (= res!2041113 (not (containsKey!4014 (t!361878 (_2!31791 (h!60737 (toList!6991 lm!2473)))) (_1!31790 (h!60736 (_2!31791 (h!60737 (toList!6991 lm!2473))))))))))

(declare-fun b!4799525 () Bool)

(assert (=> b!4799525 (= e!2997089 (noDuplicateKeys!2357 (t!361878 (_2!31791 (h!60737 (toList!6991 lm!2473))))))))

(assert (= (and d!1536473 (not res!2041112)) b!4799524))

(assert (= (and b!4799524 res!2041113) b!4799525))

(declare-fun m!5782798 () Bool)

(assert (=> b!4799524 m!5782798))

(declare-fun m!5782800 () Bool)

(assert (=> b!4799525 m!5782800))

(assert (=> bs!1156892 d!1536473))

(assert (=> d!1536133 d!1536289))

(declare-fun d!1536475 () Bool)

(assert (=> d!1536475 (= (isDefined!10305 lt!1955403) (not (isEmpty!29490 lt!1955403)))))

(declare-fun bs!1157015 () Bool)

(assert (= bs!1157015 d!1536475))

(assert (=> bs!1157015 m!5782162))

(assert (=> b!4799127 d!1536475))

(declare-fun b!4799526 () Bool)

(declare-fun e!2997090 () Option!13164)

(assert (=> b!4799526 (= e!2997090 None!13163)))

(declare-fun b!4799527 () Bool)

(declare-fun e!2997092 () Option!13164)

(assert (=> b!4799527 (= e!2997092 (Some!13163 (h!60736 (t!361878 (apply!13029 lm!2473 lt!1955290)))))))

(declare-fun e!2997093 () Bool)

(declare-fun lt!1955662 () Option!13164)

(declare-fun b!4799528 () Bool)

(assert (=> b!4799528 (= e!2997093 (contains!17956 (t!361878 (apply!13029 lm!2473 lt!1955290)) (get!18536 lt!1955662)))))

(declare-fun e!2997091 () Bool)

(declare-fun b!4799529 () Bool)

(assert (=> b!4799529 (= e!2997091 (not (containsKey!4014 (t!361878 (apply!13029 lm!2473 lt!1955290)) key!5896)))))

(declare-fun b!4799530 () Bool)

(assert (=> b!4799530 (= e!2997092 e!2997090)))

(declare-fun c!818034 () Bool)

(assert (=> b!4799530 (= c!818034 ((_ is Cons!54304) (t!361878 (apply!13029 lm!2473 lt!1955290))))))

(declare-fun b!4799531 () Bool)

(assert (=> b!4799531 (= e!2997090 (getPair!928 (t!361878 (t!361878 (apply!13029 lm!2473 lt!1955290))) key!5896))))

(declare-fun d!1536477 () Bool)

(declare-fun e!2997094 () Bool)

(assert (=> d!1536477 e!2997094))

(declare-fun res!2041114 () Bool)

(assert (=> d!1536477 (=> res!2041114 e!2997094)))

(assert (=> d!1536477 (= res!2041114 e!2997091)))

(declare-fun res!2041117 () Bool)

(assert (=> d!1536477 (=> (not res!2041117) (not e!2997091))))

(assert (=> d!1536477 (= res!2041117 (isEmpty!29490 lt!1955662))))

(assert (=> d!1536477 (= lt!1955662 e!2997092)))

(declare-fun c!818033 () Bool)

(assert (=> d!1536477 (= c!818033 (and ((_ is Cons!54304) (t!361878 (apply!13029 lm!2473 lt!1955290))) (= (_1!31790 (h!60736 (t!361878 (apply!13029 lm!2473 lt!1955290)))) key!5896)))))

(assert (=> d!1536477 (noDuplicateKeys!2357 (t!361878 (apply!13029 lm!2473 lt!1955290)))))

(assert (=> d!1536477 (= (getPair!928 (t!361878 (apply!13029 lm!2473 lt!1955290)) key!5896) lt!1955662)))

(declare-fun b!4799532 () Bool)

(declare-fun res!2041115 () Bool)

(assert (=> b!4799532 (=> (not res!2041115) (not e!2997093))))

(assert (=> b!4799532 (= res!2041115 (= (_1!31790 (get!18536 lt!1955662)) key!5896))))

(declare-fun b!4799533 () Bool)

(assert (=> b!4799533 (= e!2997094 e!2997093)))

(declare-fun res!2041116 () Bool)

(assert (=> b!4799533 (=> (not res!2041116) (not e!2997093))))

(assert (=> b!4799533 (= res!2041116 (isDefined!10305 lt!1955662))))

(assert (= (and d!1536477 c!818033) b!4799527))

(assert (= (and d!1536477 (not c!818033)) b!4799530))

(assert (= (and b!4799530 c!818034) b!4799531))

(assert (= (and b!4799530 (not c!818034)) b!4799526))

(assert (= (and d!1536477 res!2041117) b!4799529))

(assert (= (and d!1536477 (not res!2041114)) b!4799533))

(assert (= (and b!4799533 res!2041116) b!4799532))

(assert (= (and b!4799532 res!2041115) b!4799528))

(declare-fun m!5782802 () Bool)

(assert (=> b!4799533 m!5782802))

(declare-fun m!5782804 () Bool)

(assert (=> b!4799531 m!5782804))

(declare-fun m!5782806 () Bool)

(assert (=> b!4799528 m!5782806))

(assert (=> b!4799528 m!5782806))

(declare-fun m!5782808 () Bool)

(assert (=> b!4799528 m!5782808))

(declare-fun m!5782810 () Bool)

(assert (=> b!4799529 m!5782810))

(declare-fun m!5782812 () Bool)

(assert (=> d!1536477 m!5782812))

(assert (=> d!1536477 m!5782444))

(assert (=> b!4799532 m!5782806))

(assert (=> b!4799125 d!1536477))

(declare-fun d!1536479 () Bool)

(assert (=> d!1536479 (= (get!18537 (getValueByKey!2387 (toList!6991 lm!2473) lt!1955290)) (v!48484 (getValueByKey!2387 (toList!6991 lm!2473) lt!1955290)))))

(assert (=> d!1536199 d!1536479))

(assert (=> d!1536199 d!1536453))

(declare-fun d!1536481 () Bool)

(declare-fun res!2041118 () Bool)

(declare-fun e!2997095 () Bool)

(assert (=> d!1536481 (=> res!2041118 e!2997095)))

(assert (=> d!1536481 (= res!2041118 (and ((_ is Cons!54304) (apply!13029 lm!2473 lt!1955290)) (= (_1!31790 (h!60736 (apply!13029 lm!2473 lt!1955290))) key!5896)))))

(assert (=> d!1536481 (= (containsKey!4014 (apply!13029 lm!2473 lt!1955290) key!5896) e!2997095)))

(declare-fun b!4799534 () Bool)

(declare-fun e!2997096 () Bool)

(assert (=> b!4799534 (= e!2997095 e!2997096)))

(declare-fun res!2041119 () Bool)

(assert (=> b!4799534 (=> (not res!2041119) (not e!2997096))))

(assert (=> b!4799534 (= res!2041119 ((_ is Cons!54304) (apply!13029 lm!2473 lt!1955290)))))

(declare-fun b!4799535 () Bool)

(assert (=> b!4799535 (= e!2997096 (containsKey!4014 (t!361878 (apply!13029 lm!2473 lt!1955290)) key!5896))))

(assert (= (and d!1536481 (not res!2041118)) b!4799534))

(assert (= (and b!4799534 res!2041119) b!4799535))

(assert (=> b!4799535 m!5782810))

(assert (=> b!4799123 d!1536481))

(declare-fun d!1536483 () Bool)

(declare-fun res!2041120 () Bool)

(declare-fun e!2997097 () Bool)

(assert (=> d!1536483 (=> res!2041120 e!2997097)))

(assert (=> d!1536483 (= res!2041120 (and ((_ is Cons!54304) (t!361878 (_2!31791 (h!60737 (toList!6991 lm!2473))))) (= (_1!31790 (h!60736 (t!361878 (_2!31791 (h!60737 (toList!6991 lm!2473)))))) key!5896)))))

(assert (=> d!1536483 (= (containsKey!4014 (t!361878 (_2!31791 (h!60737 (toList!6991 lm!2473)))) key!5896) e!2997097)))

(declare-fun b!4799536 () Bool)

(declare-fun e!2997098 () Bool)

(assert (=> b!4799536 (= e!2997097 e!2997098)))

(declare-fun res!2041121 () Bool)

(assert (=> b!4799536 (=> (not res!2041121) (not e!2997098))))

(assert (=> b!4799536 (= res!2041121 ((_ is Cons!54304) (t!361878 (_2!31791 (h!60737 (toList!6991 lm!2473))))))))

(declare-fun b!4799537 () Bool)

(assert (=> b!4799537 (= e!2997098 (containsKey!4014 (t!361878 (t!361878 (_2!31791 (h!60737 (toList!6991 lm!2473))))) key!5896))))

(assert (= (and d!1536483 (not res!2041120)) b!4799536))

(assert (= (and b!4799536 res!2041121) b!4799537))

(declare-fun m!5782814 () Bool)

(assert (=> b!4799537 m!5782814))

(assert (=> b!4799149 d!1536483))

(assert (=> d!1536209 d!1536211))

(assert (=> d!1536209 d!1536213))

(declare-fun d!1536485 () Bool)

(assert (=> d!1536485 (not (contains!17952 (extractMap!2483 (toList!6991 lt!1955291)) key!5896))))

(assert (=> d!1536485 true))

(declare-fun _$28!841 () Unit!140515)

(assert (=> d!1536485 (= (choose!34653 lt!1955291 key!5896 hashF!1559) _$28!841)))

(declare-fun bs!1157016 () Bool)

(assert (= bs!1157016 d!1536485))

(assert (=> bs!1157016 m!5781928))

(assert (=> bs!1157016 m!5781928))

(assert (=> bs!1157016 m!5781930))

(assert (=> d!1536209 d!1536485))

(declare-fun d!1536487 () Bool)

(declare-fun res!2041122 () Bool)

(declare-fun e!2997099 () Bool)

(assert (=> d!1536487 (=> res!2041122 e!2997099)))

(assert (=> d!1536487 (= res!2041122 ((_ is Nil!54305) (toList!6991 lt!1955291)))))

(assert (=> d!1536487 (= (forall!12315 (toList!6991 lt!1955291) lambda!232006) e!2997099)))

(declare-fun b!4799538 () Bool)

(declare-fun e!2997100 () Bool)

(assert (=> b!4799538 (= e!2997099 e!2997100)))

(declare-fun res!2041123 () Bool)

(assert (=> b!4799538 (=> (not res!2041123) (not e!2997100))))

(assert (=> b!4799538 (= res!2041123 (dynLambda!22088 lambda!232006 (h!60737 (toList!6991 lt!1955291))))))

(declare-fun b!4799539 () Bool)

(assert (=> b!4799539 (= e!2997100 (forall!12315 (t!361879 (toList!6991 lt!1955291)) lambda!232006))))

(assert (= (and d!1536487 (not res!2041122)) b!4799538))

(assert (= (and b!4799538 res!2041123) b!4799539))

(declare-fun b_lambda!187469 () Bool)

(assert (=> (not b_lambda!187469) (not b!4799538)))

(declare-fun m!5782816 () Bool)

(assert (=> b!4799538 m!5782816))

(declare-fun m!5782818 () Bool)

(assert (=> b!4799539 m!5782818))

(assert (=> d!1536209 d!1536487))

(declare-fun bs!1157017 () Bool)

(declare-fun b!4799540 () Bool)

(assert (= bs!1157017 (and b!4799540 b!4799451)))

(declare-fun lambda!232111 () Int)

(assert (=> bs!1157017 (= (= (extractMap!2483 (t!361879 (toList!6991 lm!2473))) (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) (= lambda!232111 lambda!232106))))

(declare-fun bs!1157018 () Bool)

(assert (= bs!1157018 (and b!4799540 b!4799453)))

(assert (=> bs!1157018 (= (= (extractMap!2483 (t!361879 (toList!6991 lm!2473))) (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) (= lambda!232111 lambda!232107))))

(assert (=> bs!1157018 (= (= (extractMap!2483 (t!361879 (toList!6991 lm!2473))) lt!1955625) (= lambda!232111 lambda!232108))))

(declare-fun bs!1157019 () Bool)

(assert (= bs!1157019 (and b!4799540 d!1536319)))

(assert (=> bs!1157019 (= (= (extractMap!2483 (t!361879 (toList!6991 lm!2473))) lt!1955639) (= lambda!232111 lambda!232109))))

(assert (=> b!4799540 true))

(declare-fun bs!1157020 () Bool)

(declare-fun b!4799542 () Bool)

(assert (= bs!1157020 (and b!4799542 b!4799540)))

(declare-fun lambda!232112 () Int)

(assert (=> bs!1157020 (= lambda!232112 lambda!232111)))

(declare-fun bs!1157021 () Bool)

(assert (= bs!1157021 (and b!4799542 b!4799453)))

(assert (=> bs!1157021 (= (= (extractMap!2483 (t!361879 (toList!6991 lm!2473))) lt!1955625) (= lambda!232112 lambda!232108))))

(declare-fun bs!1157022 () Bool)

(assert (= bs!1157022 (and b!4799542 b!4799451)))

(assert (=> bs!1157022 (= (= (extractMap!2483 (t!361879 (toList!6991 lm!2473))) (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) (= lambda!232112 lambda!232106))))

(assert (=> bs!1157021 (= (= (extractMap!2483 (t!361879 (toList!6991 lm!2473))) (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) (= lambda!232112 lambda!232107))))

(declare-fun bs!1157023 () Bool)

(assert (= bs!1157023 (and b!4799542 d!1536319)))

(assert (=> bs!1157023 (= (= (extractMap!2483 (t!361879 (toList!6991 lm!2473))) lt!1955639) (= lambda!232112 lambda!232109))))

(assert (=> b!4799542 true))

(declare-fun lt!1955664 () ListMap!6463)

(declare-fun lambda!232113 () Int)

(assert (=> bs!1157020 (= (= lt!1955664 (extractMap!2483 (t!361879 (toList!6991 lm!2473)))) (= lambda!232113 lambda!232111))))

(assert (=> bs!1157021 (= (= lt!1955664 lt!1955625) (= lambda!232113 lambda!232108))))

(assert (=> bs!1157022 (= (= lt!1955664 (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) (= lambda!232113 lambda!232106))))

(assert (=> bs!1157021 (= (= lt!1955664 (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) (= lambda!232113 lambda!232107))))

(assert (=> b!4799542 (= (= lt!1955664 (extractMap!2483 (t!361879 (toList!6991 lm!2473)))) (= lambda!232113 lambda!232112))))

(assert (=> bs!1157023 (= (= lt!1955664 lt!1955639) (= lambda!232113 lambda!232109))))

(assert (=> b!4799542 true))

(declare-fun bs!1157024 () Bool)

(declare-fun d!1536489 () Bool)

(assert (= bs!1157024 (and d!1536489 b!4799540)))

(declare-fun lt!1955678 () ListMap!6463)

(declare-fun lambda!232114 () Int)

(assert (=> bs!1157024 (= (= lt!1955678 (extractMap!2483 (t!361879 (toList!6991 lm!2473)))) (= lambda!232114 lambda!232111))))

(declare-fun bs!1157025 () Bool)

(assert (= bs!1157025 (and d!1536489 b!4799453)))

(assert (=> bs!1157025 (= (= lt!1955678 lt!1955625) (= lambda!232114 lambda!232108))))

(declare-fun bs!1157026 () Bool)

(assert (= bs!1157026 (and d!1536489 b!4799451)))

(assert (=> bs!1157026 (= (= lt!1955678 (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) (= lambda!232114 lambda!232106))))

(assert (=> bs!1157025 (= (= lt!1955678 (extractMap!2483 (t!361879 (toList!6991 lt!1955291)))) (= lambda!232114 lambda!232107))))

(declare-fun bs!1157027 () Bool)

(assert (= bs!1157027 (and d!1536489 b!4799542)))

(assert (=> bs!1157027 (= (= lt!1955678 (extractMap!2483 (t!361879 (toList!6991 lm!2473)))) (= lambda!232114 lambda!232112))))

(declare-fun bs!1157028 () Bool)

(assert (= bs!1157028 (and d!1536489 d!1536319)))

(assert (=> bs!1157028 (= (= lt!1955678 lt!1955639) (= lambda!232114 lambda!232109))))

(assert (=> bs!1157027 (= (= lt!1955678 lt!1955664) (= lambda!232114 lambda!232113))))

(assert (=> d!1536489 true))

(declare-fun bm!335317 () Bool)

(declare-fun call!335323 () Unit!140515)

(assert (=> bm!335317 (= call!335323 (lemmaContainsAllItsOwnKeys!957 (extractMap!2483 (t!361879 (toList!6991 lm!2473)))))))

(declare-fun e!2997102 () Bool)

(assert (=> d!1536489 e!2997102))

(declare-fun res!2041126 () Bool)

(assert (=> d!1536489 (=> (not res!2041126) (not e!2997102))))

(assert (=> d!1536489 (= res!2041126 (forall!12319 (_2!31791 (h!60737 (toList!6991 lm!2473))) lambda!232114))))

(declare-fun e!2997101 () ListMap!6463)

(assert (=> d!1536489 (= lt!1955678 e!2997101)))

(declare-fun c!818035 () Bool)

(assert (=> d!1536489 (= c!818035 ((_ is Nil!54304) (_2!31791 (h!60737 (toList!6991 lm!2473)))))))

(assert (=> d!1536489 (noDuplicateKeys!2357 (_2!31791 (h!60737 (toList!6991 lm!2473))))))

(assert (=> d!1536489 (= (addToMapMapFromBucket!1725 (_2!31791 (h!60737 (toList!6991 lm!2473))) (extractMap!2483 (t!361879 (toList!6991 lm!2473)))) lt!1955678)))

(assert (=> b!4799540 (= e!2997101 (extractMap!2483 (t!361879 (toList!6991 lm!2473))))))

(declare-fun lt!1955679 () Unit!140515)

(assert (=> b!4799540 (= lt!1955679 call!335323)))

(declare-fun call!335322 () Bool)

(assert (=> b!4799540 call!335322))

(declare-fun lt!1955674 () Unit!140515)

(assert (=> b!4799540 (= lt!1955674 lt!1955679)))

(declare-fun call!335324 () Bool)

(assert (=> b!4799540 call!335324))

(declare-fun lt!1955675 () Unit!140515)

(declare-fun Unit!140572 () Unit!140515)

(assert (=> b!4799540 (= lt!1955675 Unit!140572)))

(declare-fun bm!335318 () Bool)

(assert (=> bm!335318 (= call!335322 (forall!12319 (ite c!818035 (toList!6992 (extractMap!2483 (t!361879 (toList!6991 lm!2473)))) (t!361878 (_2!31791 (h!60737 (toList!6991 lm!2473))))) (ite c!818035 lambda!232111 lambda!232113)))))

(declare-fun b!4799541 () Bool)

(declare-fun e!2997103 () Bool)

(assert (=> b!4799541 (= e!2997103 (forall!12319 (toList!6992 (extractMap!2483 (t!361879 (toList!6991 lm!2473)))) lambda!232113))))

(assert (=> b!4799542 (= e!2997101 lt!1955664)))

(declare-fun lt!1955680 () ListMap!6463)

(assert (=> b!4799542 (= lt!1955680 (+!2501 (extractMap!2483 (t!361879 (toList!6991 lm!2473))) (h!60736 (_2!31791 (h!60737 (toList!6991 lm!2473))))))))

(assert (=> b!4799542 (= lt!1955664 (addToMapMapFromBucket!1725 (t!361878 (_2!31791 (h!60737 (toList!6991 lm!2473)))) (+!2501 (extractMap!2483 (t!361879 (toList!6991 lm!2473))) (h!60736 (_2!31791 (h!60737 (toList!6991 lm!2473)))))))))

(declare-fun lt!1955677 () Unit!140515)

(assert (=> b!4799542 (= lt!1955677 call!335323)))

(assert (=> b!4799542 (forall!12319 (toList!6992 (extractMap!2483 (t!361879 (toList!6991 lm!2473)))) lambda!232112)))

(declare-fun lt!1955670 () Unit!140515)

(assert (=> b!4799542 (= lt!1955670 lt!1955677)))

(assert (=> b!4799542 (forall!12319 (toList!6992 lt!1955680) lambda!232113)))

(declare-fun lt!1955663 () Unit!140515)

(declare-fun Unit!140573 () Unit!140515)

(assert (=> b!4799542 (= lt!1955663 Unit!140573)))

(assert (=> b!4799542 call!335322))

(declare-fun lt!1955683 () Unit!140515)

(declare-fun Unit!140574 () Unit!140515)

(assert (=> b!4799542 (= lt!1955683 Unit!140574)))

(declare-fun lt!1955673 () Unit!140515)

(declare-fun Unit!140575 () Unit!140515)

(assert (=> b!4799542 (= lt!1955673 Unit!140575)))

(declare-fun lt!1955667 () Unit!140515)

(assert (=> b!4799542 (= lt!1955667 (forallContained!4206 (toList!6992 lt!1955680) lambda!232113 (h!60736 (_2!31791 (h!60737 (toList!6991 lm!2473))))))))

(assert (=> b!4799542 (contains!17952 lt!1955680 (_1!31790 (h!60736 (_2!31791 (h!60737 (toList!6991 lm!2473))))))))

(declare-fun lt!1955665 () Unit!140515)

(declare-fun Unit!140576 () Unit!140515)

(assert (=> b!4799542 (= lt!1955665 Unit!140576)))

(assert (=> b!4799542 (contains!17952 lt!1955664 (_1!31790 (h!60736 (_2!31791 (h!60737 (toList!6991 lm!2473))))))))

(declare-fun lt!1955669 () Unit!140515)

(declare-fun Unit!140577 () Unit!140515)

(assert (=> b!4799542 (= lt!1955669 Unit!140577)))

(assert (=> b!4799542 (forall!12319 (_2!31791 (h!60737 (toList!6991 lm!2473))) lambda!232113)))

(declare-fun lt!1955676 () Unit!140515)

(declare-fun Unit!140578 () Unit!140515)

(assert (=> b!4799542 (= lt!1955676 Unit!140578)))

(assert (=> b!4799542 call!335324))

(declare-fun lt!1955681 () Unit!140515)

(declare-fun Unit!140579 () Unit!140515)

(assert (=> b!4799542 (= lt!1955681 Unit!140579)))

(declare-fun lt!1955682 () Unit!140515)

(declare-fun Unit!140580 () Unit!140515)

(assert (=> b!4799542 (= lt!1955682 Unit!140580)))

(declare-fun lt!1955672 () Unit!140515)

(assert (=> b!4799542 (= lt!1955672 (addForallContainsKeyThenBeforeAdding!956 (extractMap!2483 (t!361879 (toList!6991 lm!2473))) lt!1955664 (_1!31790 (h!60736 (_2!31791 (h!60737 (toList!6991 lm!2473))))) (_2!31790 (h!60736 (_2!31791 (h!60737 (toList!6991 lm!2473)))))))))

(assert (=> b!4799542 (forall!12319 (toList!6992 (extractMap!2483 (t!361879 (toList!6991 lm!2473)))) lambda!232113)))

(declare-fun lt!1955668 () Unit!140515)

(assert (=> b!4799542 (= lt!1955668 lt!1955672)))

(assert (=> b!4799542 (forall!12319 (toList!6992 (extractMap!2483 (t!361879 (toList!6991 lm!2473)))) lambda!232113)))

(declare-fun lt!1955666 () Unit!140515)

(declare-fun Unit!140581 () Unit!140515)

(assert (=> b!4799542 (= lt!1955666 Unit!140581)))

(declare-fun res!2041124 () Bool)

(assert (=> b!4799542 (= res!2041124 (forall!12319 (_2!31791 (h!60737 (toList!6991 lm!2473))) lambda!232113))))

(assert (=> b!4799542 (=> (not res!2041124) (not e!2997103))))

(assert (=> b!4799542 e!2997103))

(declare-fun lt!1955671 () Unit!140515)

(declare-fun Unit!140582 () Unit!140515)

(assert (=> b!4799542 (= lt!1955671 Unit!140582)))

(declare-fun bm!335319 () Bool)

(assert (=> bm!335319 (= call!335324 (forall!12319 (ite c!818035 (toList!6992 (extractMap!2483 (t!361879 (toList!6991 lm!2473)))) (toList!6992 lt!1955680)) (ite c!818035 lambda!232111 lambda!232113)))))

(declare-fun b!4799543 () Bool)

(assert (=> b!4799543 (= e!2997102 (invariantList!1748 (toList!6992 lt!1955678)))))

(declare-fun b!4799544 () Bool)

(declare-fun res!2041125 () Bool)

(assert (=> b!4799544 (=> (not res!2041125) (not e!2997102))))

(assert (=> b!4799544 (= res!2041125 (forall!12319 (toList!6992 (extractMap!2483 (t!361879 (toList!6991 lm!2473)))) lambda!232114))))

(assert (= (and d!1536489 c!818035) b!4799540))

(assert (= (and d!1536489 (not c!818035)) b!4799542))

(assert (= (and b!4799542 res!2041124) b!4799541))

(assert (= (or b!4799540 b!4799542) bm!335318))

(assert (= (or b!4799540 b!4799542) bm!335319))

(assert (= (or b!4799540 b!4799542) bm!335317))

(assert (= (and d!1536489 res!2041126) b!4799544))

(assert (= (and b!4799544 res!2041125) b!4799543))

(assert (=> b!4799542 m!5782100))

(declare-fun m!5782820 () Bool)

(assert (=> b!4799542 m!5782820))

(declare-fun m!5782822 () Bool)

(assert (=> b!4799542 m!5782822))

(declare-fun m!5782824 () Bool)

(assert (=> b!4799542 m!5782824))

(declare-fun m!5782826 () Bool)

(assert (=> b!4799542 m!5782826))

(declare-fun m!5782828 () Bool)

(assert (=> b!4799542 m!5782828))

(declare-fun m!5782830 () Bool)

(assert (=> b!4799542 m!5782830))

(declare-fun m!5782832 () Bool)

(assert (=> b!4799542 m!5782832))

(declare-fun m!5782834 () Bool)

(assert (=> b!4799542 m!5782834))

(declare-fun m!5782836 () Bool)

(assert (=> b!4799542 m!5782836))

(assert (=> b!4799542 m!5782828))

(assert (=> b!4799542 m!5782100))

(assert (=> b!4799542 m!5782822))

(declare-fun m!5782838 () Bool)

(assert (=> b!4799542 m!5782838))

(assert (=> b!4799542 m!5782832))

(declare-fun m!5782840 () Bool)

(assert (=> d!1536489 m!5782840))

(assert (=> d!1536489 m!5782218))

(declare-fun m!5782842 () Bool)

(assert (=> b!4799543 m!5782842))

(assert (=> b!4799541 m!5782828))

(declare-fun m!5782844 () Bool)

(assert (=> bm!335319 m!5782844))

(assert (=> bm!335317 m!5782100))

(declare-fun m!5782846 () Bool)

(assert (=> bm!335317 m!5782846))

(declare-fun m!5782848 () Bool)

(assert (=> bm!335318 m!5782848))

(declare-fun m!5782850 () Bool)

(assert (=> b!4799544 m!5782850))

(assert (=> b!4799053 d!1536489))

(declare-fun bs!1157029 () Bool)

(declare-fun d!1536491 () Bool)

(assert (= bs!1157029 (and d!1536491 d!1536201)))

(declare-fun lambda!232115 () Int)

(assert (=> bs!1157029 (not (= lambda!232115 lambda!232003))))

(declare-fun bs!1157030 () Bool)

(assert (= bs!1157030 (and d!1536491 start!495026)))

(assert (=> bs!1157030 (= lambda!232115 lambda!231973)))

(declare-fun bs!1157031 () Bool)

(assert (= bs!1157031 (and d!1536491 d!1536151)))

(assert (=> bs!1157031 (= lambda!232115 lambda!231993)))

(declare-fun bs!1157032 () Bool)

(assert (= bs!1157032 (and d!1536491 d!1536209)))

(assert (=> bs!1157032 (= lambda!232115 lambda!232006)))

(declare-fun bs!1157033 () Bool)

(assert (= bs!1157033 (and d!1536491 d!1536181)))

(assert (=> bs!1157033 (not (= lambda!232115 lambda!231996))))

(declare-fun bs!1157034 () Bool)

(assert (= bs!1157034 (and d!1536491 d!1536189)))

(assert (=> bs!1157034 (= lambda!232115 lambda!232002)))

(declare-fun bs!1157035 () Bool)

(assert (= bs!1157035 (and d!1536491 d!1536213)))

(assert (=> bs!1157035 (= lambda!232115 lambda!232007)))

(declare-fun bs!1157036 () Bool)

(assert (= bs!1157036 (and d!1536491 d!1536187)))

(assert (=> bs!1157036 (= lambda!232115 lambda!231999)))

(declare-fun bs!1157037 () Bool)

(assert (= bs!1157037 (and d!1536491 d!1536413)))

(assert (=> bs!1157037 (= lambda!232115 lambda!232110)))

(declare-fun lt!1955684 () ListMap!6463)

(assert (=> d!1536491 (invariantList!1748 (toList!6992 lt!1955684))))

(declare-fun e!2997104 () ListMap!6463)

(assert (=> d!1536491 (= lt!1955684 e!2997104)))

(declare-fun c!818036 () Bool)

(assert (=> d!1536491 (= c!818036 ((_ is Cons!54305) (t!361879 (toList!6991 lm!2473))))))

(assert (=> d!1536491 (forall!12315 (t!361879 (toList!6991 lm!2473)) lambda!232115)))

(assert (=> d!1536491 (= (extractMap!2483 (t!361879 (toList!6991 lm!2473))) lt!1955684)))

(declare-fun b!4799545 () Bool)

(assert (=> b!4799545 (= e!2997104 (addToMapMapFromBucket!1725 (_2!31791 (h!60737 (t!361879 (toList!6991 lm!2473)))) (extractMap!2483 (t!361879 (t!361879 (toList!6991 lm!2473))))))))

(declare-fun b!4799546 () Bool)

(assert (=> b!4799546 (= e!2997104 (ListMap!6464 Nil!54304))))

(assert (= (and d!1536491 c!818036) b!4799545))

(assert (= (and d!1536491 (not c!818036)) b!4799546))

(declare-fun m!5782852 () Bool)

(assert (=> d!1536491 m!5782852))

(declare-fun m!5782854 () Bool)

(assert (=> d!1536491 m!5782854))

(declare-fun m!5782856 () Bool)

(assert (=> b!4799545 m!5782856))

(assert (=> b!4799545 m!5782856))

(declare-fun m!5782858 () Bool)

(assert (=> b!4799545 m!5782858))

(assert (=> b!4799053 d!1536491))

(assert (=> b!4799103 d!1536215))

(declare-fun bs!1157038 () Bool)

(declare-fun b!4799569 () Bool)

(assert (= bs!1157038 (and b!4799569 b!4799232)))

(declare-fun lambda!232124 () Int)

(assert (=> bs!1157038 (= (= (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (= lambda!232124 lambda!232051))))

(declare-fun bs!1157039 () Bool)

(assert (= bs!1157039 (and b!4799569 b!4799293)))

(assert (=> bs!1157039 (= (= (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (= lambda!232124 lambda!232055))))

(assert (=> b!4799569 true))

(declare-fun bs!1157040 () Bool)

(declare-fun b!4799567 () Bool)

(assert (= bs!1157040 (and b!4799567 b!4799232)))

(declare-fun lambda!232125 () Int)

(assert (=> bs!1157040 (= (= (Cons!54304 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))) (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (= lambda!232125 lambda!232051))))

(declare-fun bs!1157041 () Bool)

(assert (= bs!1157041 (and b!4799567 b!4799293)))

(assert (=> bs!1157041 (= (= (Cons!54304 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))) (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (= lambda!232125 lambda!232055))))

(declare-fun bs!1157042 () Bool)

(assert (= bs!1157042 (and b!4799567 b!4799569)))

(assert (=> bs!1157042 (= (= (Cons!54304 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))) (= lambda!232125 lambda!232124))))

(assert (=> b!4799567 true))

(declare-fun bs!1157043 () Bool)

(declare-fun b!4799568 () Bool)

(assert (= bs!1157043 (and b!4799568 b!4799232)))

(declare-fun lambda!232126 () Int)

(assert (=> bs!1157043 (= lambda!232126 lambda!232051)))

(declare-fun bs!1157044 () Bool)

(assert (= bs!1157044 (and b!4799568 b!4799293)))

(assert (=> bs!1157044 (= (= (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (= lambda!232126 lambda!232055))))

(declare-fun bs!1157045 () Bool)

(assert (= bs!1157045 (and b!4799568 b!4799569)))

(assert (=> bs!1157045 (= (= (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))) (= lambda!232126 lambda!232124))))

(declare-fun bs!1157046 () Bool)

(assert (= bs!1157046 (and b!4799568 b!4799567)))

(assert (=> bs!1157046 (= (= (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) (Cons!54304 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))))) (= lambda!232126 lambda!232125))))

(assert (=> b!4799568 true))

(declare-fun bs!1157047 () Bool)

(declare-fun b!4799570 () Bool)

(assert (= bs!1157047 (and b!4799570 b!4799233)))

(declare-fun lambda!232127 () Int)

(assert (=> bs!1157047 (= lambda!232127 lambda!232052)))

(declare-fun bs!1157048 () Bool)

(assert (= bs!1157048 (and b!4799570 b!4799294)))

(assert (=> bs!1157048 (= lambda!232127 lambda!232056)))

(declare-fun b!4799565 () Bool)

(declare-fun e!2997115 () Unit!140515)

(declare-fun Unit!140583 () Unit!140515)

(assert (=> b!4799565 (= e!2997115 Unit!140583)))

(declare-fun b!4799566 () Bool)

(declare-fun res!2041134 () Bool)

(declare-fun e!2997116 () Bool)

(assert (=> b!4799566 (=> (not res!2041134) (not e!2997116))))

(declare-fun lt!1955701 () List!54431)

(assert (=> b!4799566 (= res!2041134 (= (length!718 lt!1955701) (length!719 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))))))

(declare-fun d!1536493 () Bool)

(assert (=> d!1536493 e!2997116))

(declare-fun res!2041133 () Bool)

(assert (=> d!1536493 (=> (not res!2041133) (not e!2997116))))

(assert (=> d!1536493 (= res!2041133 (noDuplicate!931 lt!1955701))))

(declare-fun e!2997114 () List!54431)

(assert (=> d!1536493 (= lt!1955701 e!2997114)))

(declare-fun c!818043 () Bool)

(assert (=> d!1536493 (= c!818043 ((_ is Cons!54304) (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))))))

(assert (=> d!1536493 (invariantList!1748 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))))

(assert (=> d!1536493 (= (getKeysList!1094 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) lt!1955701)))

(assert (=> b!4799567 (= e!2997114 (Cons!54307 (_1!31790 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))) (getKeysList!1094 (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))))))))

(declare-fun c!818044 () Bool)

(assert (=> b!4799567 (= c!818044 (containsKey!4017 (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (_1!31790 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))))))))

(declare-fun lt!1955703 () Unit!140515)

(assert (=> b!4799567 (= lt!1955703 e!2997115)))

(declare-fun c!818045 () Bool)

(assert (=> b!4799567 (= c!818045 (contains!17955 (getKeysList!1094 (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))) (_1!31790 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))))))))

(declare-fun lt!1955702 () Unit!140515)

(declare-fun e!2997113 () Unit!140515)

(assert (=> b!4799567 (= lt!1955702 e!2997113)))

(declare-fun lt!1955704 () List!54431)

(assert (=> b!4799567 (= lt!1955704 (getKeysList!1094 (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))))))

(declare-fun lt!1955705 () Unit!140515)

(declare-fun lemmaForallContainsAddHeadPreserves!346 (List!54428 List!54431 tuple2!56992) Unit!140515)

(assert (=> b!4799567 (= lt!1955705 (lemmaForallContainsAddHeadPreserves!346 (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) lt!1955704 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))))))

(assert (=> b!4799567 (forall!12318 lt!1955704 lambda!232125)))

(declare-fun lt!1955699 () Unit!140515)

(assert (=> b!4799567 (= lt!1955699 lt!1955705)))

(declare-fun res!2041135 () Bool)

(assert (=> b!4799568 (=> (not res!2041135) (not e!2997116))))

(assert (=> b!4799568 (= res!2041135 (forall!12318 lt!1955701 lambda!232126))))

(assert (=> b!4799569 false))

(declare-fun lt!1955700 () Unit!140515)

(declare-fun forallContained!4207 (List!54431 Int K!15879) Unit!140515)

(assert (=> b!4799569 (= lt!1955700 (forallContained!4207 (getKeysList!1094 (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))) lambda!232124 (_1!31790 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))))))))

(declare-fun Unit!140584 () Unit!140515)

(assert (=> b!4799569 (= e!2997113 Unit!140584)))

(assert (=> b!4799570 (= e!2997116 (= (content!9738 lt!1955701) (content!9738 (map!12270 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) lambda!232127))))))

(declare-fun b!4799571 () Bool)

(assert (=> b!4799571 (= e!2997114 Nil!54307)))

(declare-fun b!4799572 () Bool)

(declare-fun Unit!140585 () Unit!140515)

(assert (=> b!4799572 (= e!2997113 Unit!140585)))

(declare-fun b!4799573 () Bool)

(assert (=> b!4799573 false))

(declare-fun Unit!140586 () Unit!140515)

(assert (=> b!4799573 (= e!2997115 Unit!140586)))

(assert (= (and d!1536493 c!818043) b!4799567))

(assert (= (and d!1536493 (not c!818043)) b!4799571))

(assert (= (and b!4799567 c!818044) b!4799573))

(assert (= (and b!4799567 (not c!818044)) b!4799565))

(assert (= (and b!4799567 c!818045) b!4799569))

(assert (= (and b!4799567 (not c!818045)) b!4799572))

(assert (= (and d!1536493 res!2041133) b!4799566))

(assert (= (and b!4799566 res!2041134) b!4799568))

(assert (= (and b!4799568 res!2041135) b!4799570))

(declare-fun m!5782860 () Bool)

(assert (=> d!1536493 m!5782860))

(assert (=> d!1536493 m!5782776))

(declare-fun m!5782862 () Bool)

(assert (=> b!4799569 m!5782862))

(assert (=> b!4799569 m!5782862))

(declare-fun m!5782864 () Bool)

(assert (=> b!4799569 m!5782864))

(declare-fun m!5782866 () Bool)

(assert (=> b!4799566 m!5782866))

(assert (=> b!4799566 m!5782330))

(declare-fun m!5782868 () Bool)

(assert (=> b!4799570 m!5782868))

(declare-fun m!5782870 () Bool)

(assert (=> b!4799570 m!5782870))

(assert (=> b!4799570 m!5782870))

(declare-fun m!5782872 () Bool)

(assert (=> b!4799570 m!5782872))

(declare-fun m!5782874 () Bool)

(assert (=> b!4799568 m!5782874))

(declare-fun m!5782876 () Bool)

(assert (=> b!4799567 m!5782876))

(declare-fun m!5782878 () Bool)

(assert (=> b!4799567 m!5782878))

(declare-fun m!5782880 () Bool)

(assert (=> b!4799567 m!5782880))

(assert (=> b!4799567 m!5782862))

(assert (=> b!4799567 m!5782862))

(declare-fun m!5782882 () Bool)

(assert (=> b!4799567 m!5782882))

(assert (=> b!4799141 d!1536493))

(declare-fun d!1536495 () Bool)

(assert (=> d!1536495 (= (get!18536 (getPair!928 (_2!31791 (h!60737 (toList!6991 lm!2473))) key!5896)) (v!48480 (getPair!928 (_2!31791 (h!60737 (toList!6991 lm!2473))) key!5896)))))

(assert (=> b!4799101 d!1536495))

(declare-fun b!4799576 () Bool)

(declare-fun e!2997117 () Option!13164)

(assert (=> b!4799576 (= e!2997117 None!13163)))

(declare-fun b!4799577 () Bool)

(declare-fun e!2997119 () Option!13164)

(assert (=> b!4799577 (= e!2997119 (Some!13163 (h!60736 (_2!31791 (h!60737 (toList!6991 lm!2473))))))))

(declare-fun b!4799578 () Bool)

(declare-fun e!2997120 () Bool)

(declare-fun lt!1955706 () Option!13164)

(assert (=> b!4799578 (= e!2997120 (contains!17956 (_2!31791 (h!60737 (toList!6991 lm!2473))) (get!18536 lt!1955706)))))

(declare-fun b!4799579 () Bool)

(declare-fun e!2997118 () Bool)

(assert (=> b!4799579 (= e!2997118 (not (containsKey!4014 (_2!31791 (h!60737 (toList!6991 lm!2473))) key!5896)))))

(declare-fun b!4799580 () Bool)

(assert (=> b!4799580 (= e!2997119 e!2997117)))

(declare-fun c!818047 () Bool)

(assert (=> b!4799580 (= c!818047 ((_ is Cons!54304) (_2!31791 (h!60737 (toList!6991 lm!2473)))))))

(declare-fun b!4799581 () Bool)

(assert (=> b!4799581 (= e!2997117 (getPair!928 (t!361878 (_2!31791 (h!60737 (toList!6991 lm!2473)))) key!5896))))

(declare-fun d!1536497 () Bool)

(declare-fun e!2997121 () Bool)

(assert (=> d!1536497 e!2997121))

(declare-fun res!2041136 () Bool)

(assert (=> d!1536497 (=> res!2041136 e!2997121)))

(assert (=> d!1536497 (= res!2041136 e!2997118)))

(declare-fun res!2041139 () Bool)

(assert (=> d!1536497 (=> (not res!2041139) (not e!2997118))))

(assert (=> d!1536497 (= res!2041139 (isEmpty!29490 lt!1955706))))

(assert (=> d!1536497 (= lt!1955706 e!2997119)))

(declare-fun c!818046 () Bool)

(assert (=> d!1536497 (= c!818046 (and ((_ is Cons!54304) (_2!31791 (h!60737 (toList!6991 lm!2473)))) (= (_1!31790 (h!60736 (_2!31791 (h!60737 (toList!6991 lm!2473))))) key!5896)))))

(assert (=> d!1536497 (noDuplicateKeys!2357 (_2!31791 (h!60737 (toList!6991 lm!2473))))))

(assert (=> d!1536497 (= (getPair!928 (_2!31791 (h!60737 (toList!6991 lm!2473))) key!5896) lt!1955706)))

(declare-fun b!4799582 () Bool)

(declare-fun res!2041137 () Bool)

(assert (=> b!4799582 (=> (not res!2041137) (not e!2997120))))

(assert (=> b!4799582 (= res!2041137 (= (_1!31790 (get!18536 lt!1955706)) key!5896))))

(declare-fun b!4799583 () Bool)

(assert (=> b!4799583 (= e!2997121 e!2997120)))

(declare-fun res!2041138 () Bool)

(assert (=> b!4799583 (=> (not res!2041138) (not e!2997120))))

(assert (=> b!4799583 (= res!2041138 (isDefined!10305 lt!1955706))))

(assert (= (and d!1536497 c!818046) b!4799577))

(assert (= (and d!1536497 (not c!818046)) b!4799580))

(assert (= (and b!4799580 c!818047) b!4799581))

(assert (= (and b!4799580 (not c!818047)) b!4799576))

(assert (= (and d!1536497 res!2041139) b!4799579))

(assert (= (and d!1536497 (not res!2041136)) b!4799583))

(assert (= (and b!4799583 res!2041138) b!4799582))

(assert (= (and b!4799582 res!2041137) b!4799578))

(declare-fun m!5782884 () Bool)

(assert (=> b!4799583 m!5782884))

(declare-fun m!5782886 () Bool)

(assert (=> b!4799581 m!5782886))

(declare-fun m!5782888 () Bool)

(assert (=> b!4799578 m!5782888))

(assert (=> b!4799578 m!5782888))

(declare-fun m!5782890 () Bool)

(assert (=> b!4799578 m!5782890))

(assert (=> b!4799579 m!5781900))

(declare-fun m!5782892 () Bool)

(assert (=> d!1536497 m!5782892))

(assert (=> d!1536497 m!5782218))

(assert (=> b!4799582 m!5782888))

(assert (=> b!4799101 d!1536497))

(assert (=> b!4799139 d!1536245))

(declare-fun d!1536499 () Bool)

(declare-fun lt!1955707 () Bool)

(assert (=> d!1536499 (= lt!1955707 (select (content!9738 e!2996820) key!5896))))

(declare-fun e!2997122 () Bool)

(assert (=> d!1536499 (= lt!1955707 e!2997122)))

(declare-fun res!2041140 () Bool)

(assert (=> d!1536499 (=> (not res!2041140) (not e!2997122))))

(assert (=> d!1536499 (= res!2041140 ((_ is Cons!54307) e!2996820))))

(assert (=> d!1536499 (= (contains!17955 e!2996820 key!5896) lt!1955707)))

(declare-fun b!4799584 () Bool)

(declare-fun e!2997123 () Bool)

(assert (=> b!4799584 (= e!2997122 e!2997123)))

(declare-fun res!2041141 () Bool)

(assert (=> b!4799584 (=> res!2041141 e!2997123)))

(assert (=> b!4799584 (= res!2041141 (= (h!60739 e!2996820) key!5896))))

(declare-fun b!4799585 () Bool)

(assert (=> b!4799585 (= e!2997123 (contains!17955 (t!361881 e!2996820) key!5896))))

(assert (= (and d!1536499 res!2041140) b!4799584))

(assert (= (and b!4799584 (not res!2041141)) b!4799585))

(declare-fun m!5782894 () Bool)

(assert (=> d!1536499 m!5782894))

(declare-fun m!5782896 () Bool)

(assert (=> d!1536499 m!5782896))

(declare-fun m!5782898 () Bool)

(assert (=> b!4799585 m!5782898))

(assert (=> bm!335295 d!1536499))

(declare-fun d!1536501 () Bool)

(declare-fun e!2997125 () Bool)

(assert (=> d!1536501 e!2997125))

(declare-fun res!2041142 () Bool)

(assert (=> d!1536501 (=> res!2041142 e!2997125)))

(declare-fun lt!1955708 () Bool)

(assert (=> d!1536501 (= res!2041142 (not lt!1955708))))

(declare-fun lt!1955711 () Bool)

(assert (=> d!1536501 (= lt!1955708 lt!1955711)))

(declare-fun lt!1955710 () Unit!140515)

(declare-fun e!2997124 () Unit!140515)

(assert (=> d!1536501 (= lt!1955710 e!2997124)))

(declare-fun c!818048 () Bool)

(assert (=> d!1536501 (= c!818048 lt!1955711)))

(assert (=> d!1536501 (= lt!1955711 (containsKey!4018 (toList!6991 lm!2473) (hash!5007 hashF!1559 key!5896)))))

(assert (=> d!1536501 (= (contains!17951 lm!2473 (hash!5007 hashF!1559 key!5896)) lt!1955708)))

(declare-fun b!4799586 () Bool)

(declare-fun lt!1955709 () Unit!140515)

(assert (=> b!4799586 (= e!2997124 lt!1955709)))

(assert (=> b!4799586 (= lt!1955709 (lemmaContainsKeyImpliesGetValueByKeyDefined!2178 (toList!6991 lm!2473) (hash!5007 hashF!1559 key!5896)))))

(assert (=> b!4799586 (isDefined!10309 (getValueByKey!2387 (toList!6991 lm!2473) (hash!5007 hashF!1559 key!5896)))))

(declare-fun b!4799587 () Bool)

(declare-fun Unit!140587 () Unit!140515)

(assert (=> b!4799587 (= e!2997124 Unit!140587)))

(declare-fun b!4799588 () Bool)

(assert (=> b!4799588 (= e!2997125 (isDefined!10309 (getValueByKey!2387 (toList!6991 lm!2473) (hash!5007 hashF!1559 key!5896))))))

(assert (= (and d!1536501 c!818048) b!4799586))

(assert (= (and d!1536501 (not c!818048)) b!4799587))

(assert (= (and d!1536501 (not res!2041142)) b!4799588))

(assert (=> d!1536501 m!5781906))

(declare-fun m!5782900 () Bool)

(assert (=> d!1536501 m!5782900))

(assert (=> b!4799586 m!5781906))

(declare-fun m!5782902 () Bool)

(assert (=> b!4799586 m!5782902))

(assert (=> b!4799586 m!5781906))

(assert (=> b!4799586 m!5782758))

(assert (=> b!4799586 m!5782758))

(declare-fun m!5782904 () Bool)

(assert (=> b!4799586 m!5782904))

(assert (=> b!4799588 m!5781906))

(assert (=> b!4799588 m!5782758))

(assert (=> b!4799588 m!5782758))

(assert (=> b!4799588 m!5782904))

(assert (=> d!1536189 d!1536501))

(assert (=> d!1536189 d!1536193))

(declare-fun d!1536503 () Bool)

(declare-fun e!2997128 () Bool)

(assert (=> d!1536503 e!2997128))

(declare-fun res!2041145 () Bool)

(assert (=> d!1536503 (=> (not res!2041145) (not e!2997128))))

(assert (=> d!1536503 (= res!2041145 (contains!17951 lm!2473 (hash!5007 hashF!1559 key!5896)))))

(assert (=> d!1536503 true))

(declare-fun _$5!250 () Unit!140515)

(assert (=> d!1536503 (= (choose!34652 lm!2473 key!5896 hashF!1559) _$5!250)))

(declare-fun b!4799591 () Bool)

(assert (=> b!4799591 (= e!2997128 (isDefined!10305 (getPair!928 (apply!13029 lm!2473 (hash!5007 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1536503 res!2041145) b!4799591))

(assert (=> d!1536503 m!5781906))

(assert (=> d!1536503 m!5781906))

(assert (=> d!1536503 m!5782130))

(assert (=> b!4799591 m!5781906))

(assert (=> b!4799591 m!5781906))

(assert (=> b!4799591 m!5782136))

(assert (=> b!4799591 m!5782136))

(assert (=> b!4799591 m!5782138))

(assert (=> b!4799591 m!5782138))

(assert (=> b!4799591 m!5782140))

(assert (=> d!1536189 d!1536503))

(declare-fun d!1536505 () Bool)

(declare-fun res!2041146 () Bool)

(declare-fun e!2997129 () Bool)

(assert (=> d!1536505 (=> res!2041146 e!2997129)))

(assert (=> d!1536505 (= res!2041146 ((_ is Nil!54305) (toList!6991 lm!2473)))))

(assert (=> d!1536505 (= (forall!12315 (toList!6991 lm!2473) lambda!232002) e!2997129)))

(declare-fun b!4799592 () Bool)

(declare-fun e!2997130 () Bool)

(assert (=> b!4799592 (= e!2997129 e!2997130)))

(declare-fun res!2041147 () Bool)

(assert (=> b!4799592 (=> (not res!2041147) (not e!2997130))))

(assert (=> b!4799592 (= res!2041147 (dynLambda!22088 lambda!232002 (h!60737 (toList!6991 lm!2473))))))

(declare-fun b!4799593 () Bool)

(assert (=> b!4799593 (= e!2997130 (forall!12315 (t!361879 (toList!6991 lm!2473)) lambda!232002))))

(assert (= (and d!1536505 (not res!2041146)) b!4799592))

(assert (= (and b!4799592 res!2041147) b!4799593))

(declare-fun b_lambda!187471 () Bool)

(assert (=> (not b_lambda!187471) (not b!4799592)))

(declare-fun m!5782906 () Bool)

(assert (=> b!4799592 m!5782906))

(declare-fun m!5782908 () Bool)

(assert (=> b!4799593 m!5782908))

(assert (=> d!1536189 d!1536505))

(declare-fun bs!1157049 () Bool)

(declare-fun b!4799598 () Bool)

(assert (= bs!1157049 (and b!4799598 b!4799569)))

(declare-fun lambda!232128 () Int)

(assert (=> bs!1157049 (= (= (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))) (= lambda!232128 lambda!232124))))

(declare-fun bs!1157050 () Bool)

(assert (= bs!1157050 (and b!4799598 b!4799232)))

(assert (=> bs!1157050 (= (= (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (= lambda!232128 lambda!232051))))

(declare-fun bs!1157051 () Bool)

(assert (= bs!1157051 (and b!4799598 b!4799568)))

(assert (=> bs!1157051 (= (= (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (= lambda!232128 lambda!232126))))

(declare-fun bs!1157052 () Bool)

(assert (= bs!1157052 (and b!4799598 b!4799567)))

(assert (=> bs!1157052 (= (= (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (Cons!54304 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))))) (= lambda!232128 lambda!232125))))

(declare-fun bs!1157053 () Bool)

(assert (= bs!1157053 (and b!4799598 b!4799293)))

(assert (=> bs!1157053 (= (= (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (= lambda!232128 lambda!232055))))

(assert (=> b!4799598 true))

(declare-fun bs!1157054 () Bool)

(declare-fun b!4799596 () Bool)

(assert (= bs!1157054 (and b!4799596 b!4799569)))

(declare-fun lambda!232129 () Int)

(assert (=> bs!1157054 (= (= (Cons!54304 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))) (= lambda!232129 lambda!232124))))

(declare-fun bs!1157055 () Bool)

(assert (= bs!1157055 (and b!4799596 b!4799232)))

(assert (=> bs!1157055 (= (= (Cons!54304 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))) (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (= lambda!232129 lambda!232051))))

(declare-fun bs!1157056 () Bool)

(assert (= bs!1157056 (and b!4799596 b!4799568)))

(assert (=> bs!1157056 (= (= (Cons!54304 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))) (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (= lambda!232129 lambda!232126))))

(declare-fun bs!1157057 () Bool)

(assert (= bs!1157057 (and b!4799596 b!4799598)))

(assert (=> bs!1157057 (= (= (Cons!54304 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))) (= lambda!232129 lambda!232128))))

(declare-fun bs!1157058 () Bool)

(assert (= bs!1157058 (and b!4799596 b!4799567)))

(assert (=> bs!1157058 (= (= (Cons!54304 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))) (Cons!54304 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))))) (= lambda!232129 lambda!232125))))

(declare-fun bs!1157059 () Bool)

(assert (= bs!1157059 (and b!4799596 b!4799293)))

(assert (=> bs!1157059 (= (= (Cons!54304 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))) (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (= lambda!232129 lambda!232055))))

(assert (=> b!4799596 true))

(declare-fun bs!1157060 () Bool)

(declare-fun b!4799597 () Bool)

(assert (= bs!1157060 (and b!4799597 b!4799569)))

(declare-fun lambda!232130 () Int)

(assert (=> bs!1157060 (= (= (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))) (= lambda!232130 lambda!232124))))

(declare-fun bs!1157061 () Bool)

(assert (= bs!1157061 (and b!4799597 b!4799596)))

(assert (=> bs!1157061 (= (= (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) (Cons!54304 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))))) (= lambda!232130 lambda!232129))))

(declare-fun bs!1157062 () Bool)

(assert (= bs!1157062 (and b!4799597 b!4799232)))

(assert (=> bs!1157062 (= (= (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (= lambda!232130 lambda!232051))))

(declare-fun bs!1157063 () Bool)

(assert (= bs!1157063 (and b!4799597 b!4799568)))

(assert (=> bs!1157063 (= (= (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (= lambda!232130 lambda!232126))))

(declare-fun bs!1157064 () Bool)

(assert (= bs!1157064 (and b!4799597 b!4799598)))

(assert (=> bs!1157064 (= (= (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))) (= lambda!232130 lambda!232128))))

(declare-fun bs!1157065 () Bool)

(assert (= bs!1157065 (and b!4799597 b!4799567)))

(assert (=> bs!1157065 (= (= (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) (Cons!54304 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))) (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291)))))) (= lambda!232130 lambda!232125))))

(declare-fun bs!1157066 () Bool)

(assert (= bs!1157066 (and b!4799597 b!4799293)))

(assert (=> bs!1157066 (= lambda!232130 lambda!232055)))

(assert (=> b!4799597 true))

(declare-fun bs!1157067 () Bool)

(declare-fun b!4799599 () Bool)

(assert (= bs!1157067 (and b!4799599 b!4799233)))

(declare-fun lambda!232131 () Int)

(assert (=> bs!1157067 (= lambda!232131 lambda!232052)))

(declare-fun bs!1157068 () Bool)

(assert (= bs!1157068 (and b!4799599 b!4799294)))

(assert (=> bs!1157068 (= lambda!232131 lambda!232056)))

(declare-fun bs!1157069 () Bool)

(assert (= bs!1157069 (and b!4799599 b!4799570)))

(assert (=> bs!1157069 (= lambda!232131 lambda!232127)))

(declare-fun b!4799594 () Bool)

(declare-fun e!2997133 () Unit!140515)

(declare-fun Unit!140588 () Unit!140515)

(assert (=> b!4799594 (= e!2997133 Unit!140588)))

(declare-fun b!4799595 () Bool)

(declare-fun res!2041149 () Bool)

(declare-fun e!2997134 () Bool)

(assert (=> b!4799595 (=> (not res!2041149) (not e!2997134))))

(declare-fun lt!1955714 () List!54431)

(assert (=> b!4799595 (= res!2041149 (= (length!718 lt!1955714) (length!719 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))))))

(declare-fun d!1536507 () Bool)

(assert (=> d!1536507 e!2997134))

(declare-fun res!2041148 () Bool)

(assert (=> d!1536507 (=> (not res!2041148) (not e!2997134))))

(assert (=> d!1536507 (= res!2041148 (noDuplicate!931 lt!1955714))))

(declare-fun e!2997132 () List!54431)

(assert (=> d!1536507 (= lt!1955714 e!2997132)))

(declare-fun c!818049 () Bool)

(assert (=> d!1536507 (= c!818049 ((_ is Cons!54304) (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))))))

(assert (=> d!1536507 (invariantList!1748 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))))

(assert (=> d!1536507 (= (getKeysList!1094 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) lt!1955714)))

(assert (=> b!4799596 (= e!2997132 (Cons!54307 (_1!31790 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))) (getKeysList!1094 (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))))))))

(declare-fun c!818050 () Bool)

(assert (=> b!4799596 (= c!818050 (containsKey!4017 (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) (_1!31790 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))))))))

(declare-fun lt!1955716 () Unit!140515)

(assert (=> b!4799596 (= lt!1955716 e!2997133)))

(declare-fun c!818051 () Bool)

(assert (=> b!4799596 (= c!818051 (contains!17955 (getKeysList!1094 (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))) (_1!31790 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))))))))

(declare-fun lt!1955715 () Unit!140515)

(declare-fun e!2997131 () Unit!140515)

(assert (=> b!4799596 (= lt!1955715 e!2997131)))

(declare-fun lt!1955717 () List!54431)

(assert (=> b!4799596 (= lt!1955717 (getKeysList!1094 (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))))))

(declare-fun lt!1955718 () Unit!140515)

(assert (=> b!4799596 (= lt!1955718 (lemmaForallContainsAddHeadPreserves!346 (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))) lt!1955717 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))))))

(assert (=> b!4799596 (forall!12318 lt!1955717 lambda!232129)))

(declare-fun lt!1955712 () Unit!140515)

(assert (=> b!4799596 (= lt!1955712 lt!1955718)))

(declare-fun res!2041150 () Bool)

(assert (=> b!4799597 (=> (not res!2041150) (not e!2997134))))

(assert (=> b!4799597 (= res!2041150 (forall!12318 lt!1955714 lambda!232130))))

(assert (=> b!4799598 false))

(declare-fun lt!1955713 () Unit!140515)

(assert (=> b!4799598 (= lt!1955713 (forallContained!4207 (getKeysList!1094 (t!361878 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))))) lambda!232128 (_1!31790 (h!60736 (toList!6992 (extractMap!2483 (toList!6991 lm!2473)))))))))

(declare-fun Unit!140589 () Unit!140515)

(assert (=> b!4799598 (= e!2997131 Unit!140589)))

(assert (=> b!4799599 (= e!2997134 (= (content!9738 lt!1955714) (content!9738 (map!12270 (toList!6992 (extractMap!2483 (toList!6991 lm!2473))) lambda!232131))))))

(declare-fun b!4799600 () Bool)

(assert (=> b!4799600 (= e!2997132 Nil!54307)))

(declare-fun b!4799601 () Bool)

(declare-fun Unit!140590 () Unit!140515)

(assert (=> b!4799601 (= e!2997131 Unit!140590)))

(declare-fun b!4799602 () Bool)

(assert (=> b!4799602 false))

(declare-fun Unit!140591 () Unit!140515)

(assert (=> b!4799602 (= e!2997133 Unit!140591)))

(assert (= (and d!1536507 c!818049) b!4799596))

(assert (= (and d!1536507 (not c!818049)) b!4799600))

(assert (= (and b!4799596 c!818050) b!4799602))

(assert (= (and b!4799596 (not c!818050)) b!4799594))

(assert (= (and b!4799596 c!818051) b!4799598))

(assert (= (and b!4799596 (not c!818051)) b!4799601))

(assert (= (and d!1536507 res!2041148) b!4799595))

(assert (= (and b!4799595 res!2041149) b!4799597))

(assert (= (and b!4799597 res!2041150) b!4799599))

(declare-fun m!5782910 () Bool)

(assert (=> d!1536507 m!5782910))

(assert (=> d!1536507 m!5782408))

(declare-fun m!5782912 () Bool)

(assert (=> b!4799598 m!5782912))

(assert (=> b!4799598 m!5782912))

(declare-fun m!5782914 () Bool)

(assert (=> b!4799598 m!5782914))

(declare-fun m!5782916 () Bool)

(assert (=> b!4799595 m!5782916))

(assert (=> b!4799595 m!5782428))

(declare-fun m!5782918 () Bool)

(assert (=> b!4799599 m!5782918))

(declare-fun m!5782920 () Bool)

(assert (=> b!4799599 m!5782920))

(assert (=> b!4799599 m!5782920))

(declare-fun m!5782922 () Bool)

(assert (=> b!4799599 m!5782922))

(declare-fun m!5782924 () Bool)

(assert (=> b!4799597 m!5782924))

(declare-fun m!5782926 () Bool)

(assert (=> b!4799596 m!5782926))

(declare-fun m!5782928 () Bool)

(assert (=> b!4799596 m!5782928))

(declare-fun m!5782930 () Bool)

(assert (=> b!4799596 m!5782930))

(assert (=> b!4799596 m!5782912))

(assert (=> b!4799596 m!5782912))

(declare-fun m!5782932 () Bool)

(assert (=> b!4799596 m!5782932))

(assert (=> b!4799002 d!1536507))

(declare-fun d!1536509 () Bool)

(declare-fun res!2041151 () Bool)

(declare-fun e!2997135 () Bool)

(assert (=> d!1536509 (=> res!2041151 e!2997135)))

(assert (=> d!1536509 (= res!2041151 (and ((_ is Cons!54305) (toList!6991 lt!1955291)) (= (_1!31791 (h!60737 (toList!6991 lt!1955291))) lt!1955290)))))

(assert (=> d!1536509 (= (containsKey!4018 (toList!6991 lt!1955291) lt!1955290) e!2997135)))

(declare-fun b!4799603 () Bool)

(declare-fun e!2997136 () Bool)

(assert (=> b!4799603 (= e!2997135 e!2997136)))

(declare-fun res!2041152 () Bool)

(assert (=> b!4799603 (=> (not res!2041152) (not e!2997136))))

(assert (=> b!4799603 (= res!2041152 (and (or (not ((_ is Cons!54305) (toList!6991 lt!1955291))) (bvsle (_1!31791 (h!60737 (toList!6991 lt!1955291))) lt!1955290)) ((_ is Cons!54305) (toList!6991 lt!1955291)) (bvslt (_1!31791 (h!60737 (toList!6991 lt!1955291))) lt!1955290)))))

(declare-fun b!4799604 () Bool)

(assert (=> b!4799604 (= e!2997136 (containsKey!4018 (t!361879 (toList!6991 lt!1955291)) lt!1955290))))

(assert (= (and d!1536509 (not res!2041151)) b!4799603))

(assert (= (and b!4799603 res!2041152) b!4799604))

(declare-fun m!5782934 () Bool)

(assert (=> b!4799604 m!5782934))

(assert (=> d!1536205 d!1536509))

(declare-fun d!1536511 () Bool)

(assert (=> d!1536511 (= (tail!9317 (toList!6991 lm!2473)) (t!361879 (toList!6991 lm!2473)))))

(assert (=> d!1536207 d!1536511))

(assert (=> b!4799000 d!1536301))

(assert (=> b!4799136 d!1536285))

(declare-fun d!1536513 () Bool)

(assert (=> d!1536513 (containsKey!4017 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) key!5896)))

(declare-fun lt!1955719 () Unit!140515)

(assert (=> d!1536513 (= lt!1955719 (choose!34659 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) key!5896))))

(assert (=> d!1536513 (invariantList!1748 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))))))

(assert (=> d!1536513 (= (lemmaInGetKeysListThenContainsKey!1094 (toList!6992 (extractMap!2483 (toList!6991 lt!1955291))) key!5896) lt!1955719)))

(declare-fun bs!1157070 () Bool)

(assert (= bs!1157070 d!1536513))

(assert (=> bs!1157070 m!5782190))

(declare-fun m!5782936 () Bool)

(assert (=> bs!1157070 m!5782936))

(assert (=> bs!1157070 m!5782776))

(assert (=> b!4799136 d!1536513))

(declare-fun tp!1358320 () Bool)

(declare-fun e!2997139 () Bool)

(declare-fun b!4799609 () Bool)

(assert (=> b!4799609 (= e!2997139 (and tp_is_empty!33685 tp_is_empty!33687 tp!1358320))))

(assert (=> b!4799154 (= tp!1358311 e!2997139)))

(assert (= (and b!4799154 ((_ is Cons!54304) (_2!31791 (h!60737 (toList!6991 lm!2473))))) b!4799609))

(declare-fun b!4799610 () Bool)

(declare-fun e!2997140 () Bool)

(declare-fun tp!1358321 () Bool)

(declare-fun tp!1358322 () Bool)

(assert (=> b!4799610 (= e!2997140 (and tp!1358321 tp!1358322))))

(assert (=> b!4799154 (= tp!1358312 e!2997140)))

(assert (= (and b!4799154 ((_ is Cons!54305) (t!361879 (toList!6991 lm!2473)))) b!4799610))

(declare-fun b_lambda!187473 () Bool)

(assert (= b_lambda!187461 (or d!1536187 b_lambda!187473)))

(declare-fun bs!1157071 () Bool)

(declare-fun d!1536515 () Bool)

(assert (= bs!1157071 (and d!1536515 d!1536187)))

(assert (=> bs!1157071 (= (dynLambda!22088 lambda!231999 (h!60737 (toList!6991 lm!2473))) (noDuplicateKeys!2357 (_2!31791 (h!60737 (toList!6991 lm!2473)))))))

(assert (=> bs!1157071 m!5782218))

(assert (=> b!4799460 d!1536515))

(declare-fun b_lambda!187475 () Bool)

(assert (= b_lambda!187465 (or d!1536151 b_lambda!187475)))

(declare-fun bs!1157072 () Bool)

(declare-fun d!1536517 () Bool)

(assert (= bs!1157072 (and d!1536517 d!1536151)))

(assert (=> bs!1157072 (= (dynLambda!22088 lambda!231993 (h!60737 (toList!6991 lm!2473))) (noDuplicateKeys!2357 (_2!31791 (h!60737 (toList!6991 lm!2473)))))))

(assert (=> bs!1157072 m!5782218))

(assert (=> b!4799485 d!1536517))

(declare-fun b_lambda!187477 () Bool)

(assert (= b_lambda!187467 (or start!495026 b_lambda!187477)))

(declare-fun bs!1157073 () Bool)

(declare-fun d!1536519 () Bool)

(assert (= bs!1157073 (and d!1536519 start!495026)))

(assert (=> bs!1157073 (= (dynLambda!22088 lambda!231973 (h!60737 (t!361879 (toList!6991 lm!2473)))) (noDuplicateKeys!2357 (_2!31791 (h!60737 (t!361879 (toList!6991 lm!2473))))))))

(declare-fun m!5782938 () Bool)

(assert (=> bs!1157073 m!5782938))

(assert (=> b!4799522 d!1536519))

(declare-fun b_lambda!187479 () Bool)

(assert (= b_lambda!187469 (or d!1536209 b_lambda!187479)))

(declare-fun bs!1157074 () Bool)

(declare-fun d!1536521 () Bool)

(assert (= bs!1157074 (and d!1536521 d!1536209)))

(assert (=> bs!1157074 (= (dynLambda!22088 lambda!232006 (h!60737 (toList!6991 lt!1955291))) (noDuplicateKeys!2357 (_2!31791 (h!60737 (toList!6991 lt!1955291)))))))

(assert (=> bs!1157074 m!5782220))

(assert (=> b!4799538 d!1536521))

(declare-fun b_lambda!187481 () Bool)

(assert (= b_lambda!187429 (or start!495026 b_lambda!187481)))

(declare-fun bs!1157075 () Bool)

(declare-fun d!1536523 () Bool)

(assert (= bs!1157075 (and d!1536523 start!495026)))

(assert (=> bs!1157075 (= (dynLambda!22088 lambda!231973 (h!60737 (t!361879 (toList!6991 lt!1955291)))) (noDuplicateKeys!2357 (_2!31791 (h!60737 (t!361879 (toList!6991 lt!1955291))))))))

(declare-fun m!5782940 () Bool)

(assert (=> bs!1157075 m!5782940))

(assert (=> b!4799297 d!1536523))

(declare-fun b_lambda!187483 () Bool)

(assert (= b_lambda!187427 (or d!1536181 b_lambda!187483)))

(declare-fun bs!1157076 () Bool)

(declare-fun d!1536525 () Bool)

(assert (= bs!1157076 (and d!1536525 d!1536181)))

(declare-fun allKeysSameHash!1973 (List!54428 (_ BitVec 64) Hashable!6956) Bool)

(assert (=> bs!1157076 (= (dynLambda!22088 lambda!231996 (h!60737 (toList!6991 lm!2473))) (allKeysSameHash!1973 (_2!31791 (h!60737 (toList!6991 lm!2473))) (_1!31791 (h!60737 (toList!6991 lm!2473))) hashF!1559))))

(declare-fun m!5782942 () Bool)

(assert (=> bs!1157076 m!5782942))

(assert (=> b!4799284 d!1536525))

(declare-fun b_lambda!187485 () Bool)

(assert (= b_lambda!187463 (or d!1536213 b_lambda!187485)))

(declare-fun bs!1157077 () Bool)

(declare-fun d!1536527 () Bool)

(assert (= bs!1157077 (and d!1536527 d!1536213)))

(assert (=> bs!1157077 (= (dynLambda!22088 lambda!232007 (h!60737 (toList!6991 lt!1955291))) (noDuplicateKeys!2357 (_2!31791 (h!60737 (toList!6991 lt!1955291)))))))

(assert (=> bs!1157077 m!5782220))

(assert (=> b!4799480 d!1536527))

(declare-fun b_lambda!187487 () Bool)

(assert (= b_lambda!187471 (or d!1536189 b_lambda!187487)))

(declare-fun bs!1157078 () Bool)

(declare-fun d!1536529 () Bool)

(assert (= bs!1157078 (and d!1536529 d!1536189)))

(assert (=> bs!1157078 (= (dynLambda!22088 lambda!232002 (h!60737 (toList!6991 lm!2473))) (noDuplicateKeys!2357 (_2!31791 (h!60737 (toList!6991 lm!2473)))))))

(assert (=> bs!1157078 m!5782218))

(assert (=> b!4799592 d!1536529))

(declare-fun b_lambda!187489 () Bool)

(assert (= b_lambda!187425 (or d!1536201 b_lambda!187489)))

(declare-fun bs!1157079 () Bool)

(declare-fun d!1536531 () Bool)

(assert (= bs!1157079 (and d!1536531 d!1536201)))

(assert (=> bs!1157079 (= (dynLambda!22088 lambda!232003 (h!60737 (toList!6991 lt!1955291))) (allKeysSameHash!1973 (_2!31791 (h!60737 (toList!6991 lt!1955291))) (_1!31791 (h!60737 (toList!6991 lt!1955291))) hashF!1559))))

(declare-fun m!5782944 () Bool)

(assert (=> bs!1157079 m!5782944))

(assert (=> b!4799242 d!1536531))

(check-sat (not b!4799476) (not b!4799588) (not b!4799598) (not d!1536471) (not b_lambda!187475) (not b!4799314) (not d!1536501) (not bm!335316) tp_is_empty!33685 (not b!4799479) (not b!4799257) (not b!4799244) (not b!4799586) (not b!4799470) (not d!1536413) (not bs!1157073) (not b!4799292) (not b!4799515) (not d!1536461) (not d!1536469) (not b!4799285) (not bs!1157072) (not b!4799568) (not b!4799529) (not b!4799512) (not b!4799452) (not b!4799461) (not b_lambda!187481) (not d!1536245) (not bs!1157077) (not b!4799455) (not b!4799593) (not b!4799581) (not d!1536491) (not b_lambda!187417) (not b!4799300) (not d!1536439) (not d!1536271) (not b!4799567) (not d!1536457) (not b!4799582) (not b!4799481) (not b!4799482) (not d!1536451) (not b!4799453) (not b!4799578) (not b!4799276) (not b!4799542) (not bs!1157074) (not b!4799477) (not b!4799293) (not b!4799599) (not b!4799570) (not d!1536301) (not bs!1157076) (not d!1536299) tp_is_empty!33687 (not b!4799610) (not d!1536513) (not bm!335314) (not b!4799544) (not b!4799478) (not b!4799492) (not b!4799258) (not b!4799585) (not b!4799591) (not b!4799291) (not d!1536503) (not d!1536455) (not b!4799545) (not b!4799541) (not b!4799280) (not b!4799569) (not b!4799294) (not b_lambda!187477) (not d!1536477) (not d!1536423) (not d!1536445) (not b!4799494) (not d!1536443) (not b!4799298) (not b!4799233) (not b!4799493) (not d!1536459) (not b!4799537) (not d!1536475) (not d!1536319) (not b!4799454) (not b!4799543) (not b!4799458) (not d!1536467) (not b!4799490) (not b!4799528) (not b!4799535) (not d!1536493) (not d!1536435) (not b!4799486) (not bs!1157078) (not b!4799604) (not b!4799523) (not b!4799596) (not b!4799532) (not d!1536235) (not b!4799489) (not d!1536485) (not bm!335319) (not b!4799539) (not b!4799231) (not b!4799525) (not bs!1157079) (not b!4799248) (not bm!335317) (not b!4799232) (not b!4799595) (not b!4799517) (not b!4799464) (not b!4799597) (not bm!335318) (not d!1536497) (not b!4799505) (not b!4799520) (not d!1536499) (not bs!1157075) (not d!1536419) (not d!1536489) (not b!4799299) (not bm!335315) (not b!4799583) (not d!1536427) (not b!4799201) (not b!4799524) (not d!1536293) (not d!1536311) (not b_lambda!187415) (not bs!1157071) (not b_lambda!187489) (not b_lambda!187473) (not b!4799566) (not d!1536415) (not b!4799533) (not b_lambda!187479) (not b!4799609) (not b_lambda!187485) (not b!4799484) (not b!4799531) (not d!1536441) (not d!1536507) (not b_lambda!187483) (not b_lambda!187487) (not b!4799579))
(check-sat)
