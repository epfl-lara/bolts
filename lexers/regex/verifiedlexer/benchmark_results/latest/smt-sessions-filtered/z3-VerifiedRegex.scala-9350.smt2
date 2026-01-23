; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496872 () Bool)

(assert start!496872)

(declare-fun b!4807686 () Bool)

(declare-fun b_free!129979 () Bool)

(declare-fun b_next!130769 () Bool)

(assert (=> b!4807686 (= b_free!129979 (not b_next!130769))))

(declare-fun tp!1359574 () Bool)

(declare-fun b_and!341747 () Bool)

(assert (=> b!4807686 (= tp!1359574 b_and!341747)))

(declare-fun b!4807690 () Bool)

(declare-fun b_free!129981 () Bool)

(declare-fun b_next!130771 () Bool)

(assert (=> b!4807690 (= b_free!129981 (not b_next!130771))))

(declare-fun tp!1359569 () Bool)

(declare-fun b_and!341749 () Bool)

(assert (=> b!4807690 (= tp!1359569 b_and!341749)))

(declare-fun b!4807680 () Bool)

(declare-fun e!3002930 () Bool)

(declare-fun e!3002933 () Bool)

(assert (=> b!4807680 (= e!3002930 e!3002933)))

(declare-fun res!2045284 () Bool)

(assert (=> b!4807680 (=> (not res!2045284) (not e!3002933))))

(declare-datatypes ((K!16039 0))(
  ( (K!16040 (val!21137 Int)) )
))
(declare-datatypes ((array!18394 0))(
  ( (array!18395 (arr!8203 (Array (_ BitVec 32) (_ BitVec 64))) (size!36449 (_ BitVec 32))) )
))
(declare-datatypes ((V!16285 0))(
  ( (V!16286 (val!21138 Int)) )
))
(declare-datatypes ((tuple2!57228 0))(
  ( (tuple2!57229 (_1!31908 K!16039) (_2!31908 V!16285)) )
))
(declare-datatypes ((List!54567 0))(
  ( (Nil!54443) (Cons!54443 (h!60875 tuple2!57228) (t!362031 List!54567)) )
))
(declare-datatypes ((array!18396 0))(
  ( (array!18397 (arr!8204 (Array (_ BitVec 32) List!54567)) (size!36450 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10018 0))(
  ( (LongMapFixedSize!10019 (defaultEntry!5427 Int) (mask!14984 (_ BitVec 32)) (extraKeys!5284 (_ BitVec 32)) (zeroValue!5297 List!54567) (minValue!5297 List!54567) (_size!10043 (_ BitVec 32)) (_keys!5351 array!18394) (_values!5322 array!18396) (_vacant!5074 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19801 0))(
  ( (Cell!19802 (v!48683 LongMapFixedSize!10018)) )
))
(declare-datatypes ((MutLongMap!5009 0))(
  ( (LongMap!5009 (underlying!10225 Cell!19801)) (MutLongMapExt!5008 (__x!33125 Int)) )
))
(declare-datatypes ((Hashable!7020 0))(
  ( (HashableExt!7019 (__x!33126 Int)) )
))
(declare-datatypes ((Cell!19803 0))(
  ( (Cell!19804 (v!48684 MutLongMap!5009)) )
))
(declare-datatypes ((MutableMap!4893 0))(
  ( (MutableMapExt!4892 (__x!33127 Int)) (HashMap!4893 (underlying!10226 Cell!19803) (hashF!13288 Hashable!7020) (_size!10044 (_ BitVec 32)) (defaultValue!5064 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4893)

(declare-fun key!1652 () K!16039)

(declare-datatypes ((ListMap!6515 0))(
  ( (ListMap!6516 (toList!7071 List!54567)) )
))
(declare-fun contains!18116 (ListMap!6515 K!16039) Bool)

(declare-datatypes ((tuple2!57230 0))(
  ( (tuple2!57231 (_1!31909 (_ BitVec 64)) (_2!31909 List!54567)) )
))
(declare-datatypes ((List!54568 0))(
  ( (Nil!54444) (Cons!54444 (h!60876 tuple2!57230) (t!362032 List!54568)) )
))
(declare-fun extractMap!2509 (List!54568) ListMap!6515)

(declare-datatypes ((ListLongMap!5521 0))(
  ( (ListLongMap!5522 (toList!7072 List!54568)) )
))
(declare-fun map!12349 (MutLongMap!5009) ListLongMap!5521)

(assert (=> b!4807680 (= res!2045284 (contains!18116 (extractMap!2509 (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921))))) key!1652))))

(declare-datatypes ((Unit!141335 0))(
  ( (Unit!141336) )
))
(declare-fun lt!1960656 () Unit!141335)

(declare-fun e!3002929 () Unit!141335)

(assert (=> b!4807680 (= lt!1960656 e!3002929)))

(declare-fun c!819408 () Bool)

(declare-fun lt!1960655 () (_ BitVec 64))

(declare-fun contains!18117 (MutLongMap!5009 (_ BitVec 64)) Bool)

(assert (=> b!4807680 (= c!819408 (contains!18117 (v!48684 (underlying!10226 thiss!41921)) lt!1960655))))

(declare-fun hash!5090 (Hashable!7020 K!16039) (_ BitVec 64))

(assert (=> b!4807680 (= lt!1960655 (hash!5090 (hashF!13288 thiss!41921) key!1652))))

(declare-fun mapNonEmpty!22172 () Bool)

(declare-fun mapRes!22172 () Bool)

(declare-fun tp!1359573 () Bool)

(declare-fun tp!1359570 () Bool)

(assert (=> mapNonEmpty!22172 (= mapRes!22172 (and tp!1359573 tp!1359570))))

(declare-fun mapKey!22172 () (_ BitVec 32))

(declare-fun mapValue!22172 () List!54567)

(declare-fun mapRest!22172 () (Array (_ BitVec 32) List!54567))

(assert (=> mapNonEmpty!22172 (= (arr!8204 (_values!5322 (v!48683 (underlying!10225 (v!48684 (underlying!10226 thiss!41921)))))) (store mapRest!22172 mapKey!22172 mapValue!22172))))

(declare-fun b!4807681 () Bool)

(declare-fun Unit!141337 () Unit!141335)

(assert (=> b!4807681 (= e!3002929 Unit!141337)))

(declare-fun b!4807682 () Bool)

(declare-fun e!3002927 () Unit!141335)

(declare-fun Unit!141338 () Unit!141335)

(assert (=> b!4807682 (= e!3002927 Unit!141338)))

(declare-fun b!4807683 () Bool)

(declare-fun e!3002934 () Bool)

(declare-fun tp!1359571 () Bool)

(assert (=> b!4807683 (= e!3002934 (and tp!1359571 mapRes!22172))))

(declare-fun condMapEmpty!22172 () Bool)

(declare-fun mapDefault!22172 () List!54567)

(assert (=> b!4807683 (= condMapEmpty!22172 (= (arr!8204 (_values!5322 (v!48683 (underlying!10225 (v!48684 (underlying!10226 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54567)) mapDefault!22172)))))

(declare-fun b!4807684 () Bool)

(declare-fun res!2045282 () Bool)

(assert (=> b!4807684 (=> (not res!2045282) (not e!3002933))))

(get-info :version)

(assert (=> b!4807684 (= res!2045282 ((_ is LongMap!5009) (v!48684 (underlying!10226 thiss!41921))))))

(declare-fun b!4807685 () Bool)

(declare-fun e!3002932 () Bool)

(declare-fun e!3002936 () Bool)

(assert (=> b!4807685 (= e!3002932 e!3002936)))

(declare-fun tp!1359575 () Bool)

(declare-fun tp!1359572 () Bool)

(declare-fun array_inv!5911 (array!18394) Bool)

(declare-fun array_inv!5912 (array!18396) Bool)

(assert (=> b!4807686 (= e!3002936 (and tp!1359574 tp!1359572 tp!1359575 (array_inv!5911 (_keys!5351 (v!48683 (underlying!10225 (v!48684 (underlying!10226 thiss!41921)))))) (array_inv!5912 (_values!5322 (v!48683 (underlying!10225 (v!48684 (underlying!10226 thiss!41921)))))) e!3002934))))

(declare-fun b!4807687 () Bool)

(declare-fun e!3002937 () Bool)

(assert (=> b!4807687 (= e!3002937 e!3002932)))

(declare-fun b!4807688 () Bool)

(declare-fun res!2045283 () Bool)

(assert (=> b!4807688 (=> (not res!2045283) (not e!3002930))))

(declare-fun valid!4025 (MutableMap!4893) Bool)

(assert (=> b!4807688 (= res!2045283 (valid!4025 thiss!41921))))

(declare-fun mapIsEmpty!22172 () Bool)

(assert (=> mapIsEmpty!22172 mapRes!22172))

(declare-fun res!2045285 () Bool)

(assert (=> start!496872 (=> (not res!2045285) (not e!3002930))))

(assert (=> start!496872 (= res!2045285 ((_ is HashMap!4893) thiss!41921))))

(assert (=> start!496872 e!3002930))

(declare-fun e!3002928 () Bool)

(assert (=> start!496872 e!3002928))

(declare-fun tp_is_empty!33877 () Bool)

(assert (=> start!496872 tp_is_empty!33877))

(declare-fun lambda!233522 () Int)

(declare-fun lt!1960652 () tuple2!57230)

(declare-fun b!4807689 () Bool)

(declare-fun lt!1960650 () ListLongMap!5521)

(declare-fun forallContained!4239 (List!54568 Int tuple2!57230) Unit!141335)

(assert (=> b!4807689 (= e!3002929 (forallContained!4239 (toList!7072 lt!1960650) lambda!233522 lt!1960652))))

(assert (=> b!4807689 (= lt!1960650 (map!12349 (v!48684 (underlying!10226 thiss!41921))))))

(declare-fun lt!1960654 () List!54567)

(declare-fun apply!13093 (MutLongMap!5009 (_ BitVec 64)) List!54567)

(assert (=> b!4807689 (= lt!1960654 (apply!13093 (v!48684 (underlying!10226 thiss!41921)) lt!1960655))))

(assert (=> b!4807689 (= lt!1960652 (tuple2!57231 lt!1960655 lt!1960654))))

(declare-fun c!819407 () Bool)

(declare-fun contains!18118 (List!54568 tuple2!57230) Bool)

(assert (=> b!4807689 (= c!819407 (not (contains!18118 (toList!7072 lt!1960650) lt!1960652)))))

(declare-fun lt!1960649 () Unit!141335)

(assert (=> b!4807689 (= lt!1960649 e!3002927)))

(declare-fun e!3002931 () Bool)

(assert (=> b!4807690 (= e!3002928 (and e!3002931 tp!1359569))))

(declare-fun b!4807691 () Bool)

(declare-fun lt!1960651 () MutLongMap!5009)

(assert (=> b!4807691 (= e!3002931 (and e!3002937 ((_ is LongMap!5009) lt!1960651)))))

(assert (=> b!4807691 (= lt!1960651 (v!48684 (underlying!10226 thiss!41921)))))

(declare-fun b!4807692 () Bool)

(declare-fun valid!4026 (MutLongMap!5009) Bool)

(assert (=> b!4807692 (= e!3002933 (not (valid!4026 (v!48684 (underlying!10226 thiss!41921)))))))

(declare-fun b!4807693 () Bool)

(assert (=> b!4807693 false))

(declare-fun lt!1960653 () Unit!141335)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!966 (List!54568 (_ BitVec 64) List!54567) Unit!141335)

(assert (=> b!4807693 (= lt!1960653 (lemmaGetValueByKeyImpliesContainsTuple!966 (toList!7072 lt!1960650) lt!1960655 lt!1960654))))

(declare-datatypes ((Option!13250 0))(
  ( (None!13249) (Some!13249 (v!48685 List!54567)) )
))
(declare-fun isDefined!10389 (Option!13250) Bool)

(declare-fun getValueByKey!2447 (List!54568 (_ BitVec 64)) Option!13250)

(assert (=> b!4807693 (isDefined!10389 (getValueByKey!2447 (toList!7072 lt!1960650) lt!1960655))))

(declare-fun lt!1960657 () Unit!141335)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2235 (List!54568 (_ BitVec 64)) Unit!141335)

(assert (=> b!4807693 (= lt!1960657 (lemmaContainsKeyImpliesGetValueByKeyDefined!2235 (toList!7072 lt!1960650) lt!1960655))))

(declare-fun containsKey!4102 (List!54568 (_ BitVec 64)) Bool)

(assert (=> b!4807693 (containsKey!4102 (toList!7072 lt!1960650) lt!1960655)))

(declare-fun lt!1960648 () Unit!141335)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!237 (List!54568 (_ BitVec 64)) Unit!141335)

(assert (=> b!4807693 (= lt!1960648 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!237 (toList!7072 lt!1960650) lt!1960655))))

(declare-fun Unit!141339 () Unit!141335)

(assert (=> b!4807693 (= e!3002927 Unit!141339)))

(assert (= (and start!496872 res!2045285) b!4807688))

(assert (= (and b!4807688 res!2045283) b!4807680))

(assert (= (and b!4807680 c!819408) b!4807689))

(assert (= (and b!4807680 (not c!819408)) b!4807681))

(assert (= (and b!4807689 c!819407) b!4807693))

(assert (= (and b!4807689 (not c!819407)) b!4807682))

(assert (= (and b!4807680 res!2045284) b!4807684))

(assert (= (and b!4807684 res!2045282) b!4807692))

(assert (= (and b!4807683 condMapEmpty!22172) mapIsEmpty!22172))

(assert (= (and b!4807683 (not condMapEmpty!22172)) mapNonEmpty!22172))

(assert (= b!4807686 b!4807683))

(assert (= b!4807685 b!4807686))

(assert (= b!4807687 b!4807685))

(assert (= (and b!4807691 ((_ is LongMap!5009) (v!48684 (underlying!10226 thiss!41921)))) b!4807687))

(assert (= b!4807690 b!4807691))

(assert (= (and start!496872 ((_ is HashMap!4893) thiss!41921)) b!4807690))

(declare-fun m!5793854 () Bool)

(assert (=> b!4807693 m!5793854))

(declare-fun m!5793856 () Bool)

(assert (=> b!4807693 m!5793856))

(declare-fun m!5793858 () Bool)

(assert (=> b!4807693 m!5793858))

(assert (=> b!4807693 m!5793858))

(declare-fun m!5793860 () Bool)

(assert (=> b!4807693 m!5793860))

(declare-fun m!5793862 () Bool)

(assert (=> b!4807693 m!5793862))

(declare-fun m!5793864 () Bool)

(assert (=> b!4807693 m!5793864))

(declare-fun m!5793866 () Bool)

(assert (=> b!4807686 m!5793866))

(declare-fun m!5793868 () Bool)

(assert (=> b!4807686 m!5793868))

(declare-fun m!5793870 () Bool)

(assert (=> b!4807688 m!5793870))

(declare-fun m!5793872 () Bool)

(assert (=> mapNonEmpty!22172 m!5793872))

(declare-fun m!5793874 () Bool)

(assert (=> b!4807689 m!5793874))

(declare-fun m!5793876 () Bool)

(assert (=> b!4807689 m!5793876))

(declare-fun m!5793878 () Bool)

(assert (=> b!4807689 m!5793878))

(declare-fun m!5793880 () Bool)

(assert (=> b!4807689 m!5793880))

(declare-fun m!5793882 () Bool)

(assert (=> b!4807680 m!5793882))

(declare-fun m!5793884 () Bool)

(assert (=> b!4807680 m!5793884))

(assert (=> b!4807680 m!5793884))

(declare-fun m!5793886 () Bool)

(assert (=> b!4807680 m!5793886))

(declare-fun m!5793888 () Bool)

(assert (=> b!4807680 m!5793888))

(assert (=> b!4807680 m!5793876))

(declare-fun m!5793890 () Bool)

(assert (=> b!4807692 m!5793890))

(check-sat b_and!341747 (not b!4807693) (not b!4807688) (not b_next!130769) b_and!341749 (not mapNonEmpty!22172) (not b!4807683) (not b_next!130771) (not b!4807680) tp_is_empty!33877 (not b!4807686) (not b!4807692) (not b!4807689))
(check-sat b_and!341747 b_and!341749 (not b_next!130769) (not b_next!130771))
(get-model)

(declare-fun bs!1159938 () Bool)

(declare-fun d!1539953 () Bool)

(assert (= bs!1159938 (and d!1539953 b!4807689)))

(declare-fun lambda!233525 () Int)

(assert (=> bs!1159938 (= lambda!233525 lambda!233522)))

(declare-fun lt!1960660 () ListMap!6515)

(declare-fun invariantList!1768 (List!54567) Bool)

(assert (=> d!1539953 (invariantList!1768 (toList!7071 lt!1960660))))

(declare-fun e!3002940 () ListMap!6515)

(assert (=> d!1539953 (= lt!1960660 e!3002940)))

(declare-fun c!819411 () Bool)

(assert (=> d!1539953 (= c!819411 ((_ is Cons!54444) (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921))))))))

(declare-fun forall!12377 (List!54568 Int) Bool)

(assert (=> d!1539953 (forall!12377 (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921)))) lambda!233525)))

(assert (=> d!1539953 (= (extractMap!2509 (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921))))) lt!1960660)))

(declare-fun b!4807698 () Bool)

(declare-fun addToMapMapFromBucket!1745 (List!54567 ListMap!6515) ListMap!6515)

(assert (=> b!4807698 (= e!3002940 (addToMapMapFromBucket!1745 (_2!31909 (h!60876 (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921)))))) (extractMap!2509 (t!362032 (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921))))))))))

(declare-fun b!4807699 () Bool)

(assert (=> b!4807699 (= e!3002940 (ListMap!6516 Nil!54443))))

(assert (= (and d!1539953 c!819411) b!4807698))

(assert (= (and d!1539953 (not c!819411)) b!4807699))

(declare-fun m!5793892 () Bool)

(assert (=> d!1539953 m!5793892))

(declare-fun m!5793894 () Bool)

(assert (=> d!1539953 m!5793894))

(declare-fun m!5793896 () Bool)

(assert (=> b!4807698 m!5793896))

(assert (=> b!4807698 m!5793896))

(declare-fun m!5793898 () Bool)

(assert (=> b!4807698 m!5793898))

(assert (=> b!4807680 d!1539953))

(declare-fun d!1539955 () Bool)

(declare-fun lt!1960663 () Bool)

(declare-fun contains!18119 (ListLongMap!5521 (_ BitVec 64)) Bool)

(assert (=> d!1539955 (= lt!1960663 (contains!18119 (map!12349 (v!48684 (underlying!10226 thiss!41921))) lt!1960655))))

(declare-fun contains!18120 (LongMapFixedSize!10018 (_ BitVec 64)) Bool)

(assert (=> d!1539955 (= lt!1960663 (contains!18120 (v!48683 (underlying!10225 (v!48684 (underlying!10226 thiss!41921)))) lt!1960655))))

(assert (=> d!1539955 (valid!4026 (v!48684 (underlying!10226 thiss!41921)))))

(assert (=> d!1539955 (= (contains!18117 (v!48684 (underlying!10226 thiss!41921)) lt!1960655) lt!1960663)))

(declare-fun bs!1159939 () Bool)

(assert (= bs!1159939 d!1539955))

(assert (=> bs!1159939 m!5793876))

(assert (=> bs!1159939 m!5793876))

(declare-fun m!5793900 () Bool)

(assert (=> bs!1159939 m!5793900))

(declare-fun m!5793902 () Bool)

(assert (=> bs!1159939 m!5793902))

(assert (=> bs!1159939 m!5793890))

(assert (=> b!4807680 d!1539955))

(declare-fun d!1539957 () Bool)

(declare-fun hash!5091 (Hashable!7020 K!16039) (_ BitVec 64))

(assert (=> d!1539957 (= (hash!5090 (hashF!13288 thiss!41921) key!1652) (hash!5091 (hashF!13288 thiss!41921) key!1652))))

(declare-fun bs!1159940 () Bool)

(assert (= bs!1159940 d!1539957))

(declare-fun m!5793904 () Bool)

(assert (=> bs!1159940 m!5793904))

(assert (=> b!4807680 d!1539957))

(declare-fun d!1539959 () Bool)

(declare-fun map!12350 (LongMapFixedSize!10018) ListLongMap!5521)

(assert (=> d!1539959 (= (map!12349 (v!48684 (underlying!10226 thiss!41921))) (map!12350 (v!48683 (underlying!10225 (v!48684 (underlying!10226 thiss!41921))))))))

(declare-fun bs!1159941 () Bool)

(assert (= bs!1159941 d!1539959))

(declare-fun m!5793906 () Bool)

(assert (=> bs!1159941 m!5793906))

(assert (=> b!4807680 d!1539959))

(declare-fun b!4807718 () Bool)

(assert (=> b!4807718 false))

(declare-fun lt!1960685 () Unit!141335)

(declare-fun lt!1960686 () Unit!141335)

(assert (=> b!4807718 (= lt!1960685 lt!1960686)))

(declare-fun containsKey!4103 (List!54567 K!16039) Bool)

(assert (=> b!4807718 (containsKey!4103 (toList!7071 (extractMap!2509 (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921)))))) key!1652)))

(declare-fun lemmaInGetKeysListThenContainsKey!1114 (List!54567 K!16039) Unit!141335)

(assert (=> b!4807718 (= lt!1960686 (lemmaInGetKeysListThenContainsKey!1114 (toList!7071 (extractMap!2509 (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921)))))) key!1652))))

(declare-fun e!3002955 () Unit!141335)

(declare-fun Unit!141340 () Unit!141335)

(assert (=> b!4807718 (= e!3002955 Unit!141340)))

(declare-fun b!4807719 () Bool)

(declare-fun Unit!141341 () Unit!141335)

(assert (=> b!4807719 (= e!3002955 Unit!141341)))

(declare-fun bm!335596 () Bool)

(declare-fun call!335601 () Bool)

(declare-datatypes ((List!54569 0))(
  ( (Nil!54445) (Cons!54445 (h!60877 K!16039) (t!362035 List!54569)) )
))
(declare-fun e!3002957 () List!54569)

(declare-fun contains!18121 (List!54569 K!16039) Bool)

(assert (=> bm!335596 (= call!335601 (contains!18121 e!3002957 key!1652))))

(declare-fun c!819418 () Bool)

(declare-fun c!819420 () Bool)

(assert (=> bm!335596 (= c!819418 c!819420)))

(declare-fun b!4807720 () Bool)

(declare-fun getKeysList!1114 (List!54567) List!54569)

(assert (=> b!4807720 (= e!3002957 (getKeysList!1114 (toList!7071 (extractMap!2509 (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921))))))))))

(declare-fun b!4807721 () Bool)

(declare-fun e!3002956 () Bool)

(declare-fun keys!19933 (ListMap!6515) List!54569)

(assert (=> b!4807721 (= e!3002956 (not (contains!18121 (keys!19933 (extractMap!2509 (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921)))))) key!1652)))))

(declare-fun d!1539961 () Bool)

(declare-fun e!3002953 () Bool)

(assert (=> d!1539961 e!3002953))

(declare-fun res!2045293 () Bool)

(assert (=> d!1539961 (=> res!2045293 e!3002953)))

(assert (=> d!1539961 (= res!2045293 e!3002956)))

(declare-fun res!2045294 () Bool)

(assert (=> d!1539961 (=> (not res!2045294) (not e!3002956))))

(declare-fun lt!1960682 () Bool)

(assert (=> d!1539961 (= res!2045294 (not lt!1960682))))

(declare-fun lt!1960683 () Bool)

(assert (=> d!1539961 (= lt!1960682 lt!1960683)))

(declare-fun lt!1960680 () Unit!141335)

(declare-fun e!3002958 () Unit!141335)

(assert (=> d!1539961 (= lt!1960680 e!3002958)))

(assert (=> d!1539961 (= c!819420 lt!1960683)))

(assert (=> d!1539961 (= lt!1960683 (containsKey!4103 (toList!7071 (extractMap!2509 (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921)))))) key!1652))))

(assert (=> d!1539961 (= (contains!18116 (extractMap!2509 (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921))))) key!1652) lt!1960682)))

(declare-fun b!4807722 () Bool)

(declare-fun e!3002954 () Bool)

(assert (=> b!4807722 (= e!3002954 (contains!18121 (keys!19933 (extractMap!2509 (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921)))))) key!1652))))

(declare-fun b!4807723 () Bool)

(assert (=> b!4807723 (= e!3002953 e!3002954)))

(declare-fun res!2045292 () Bool)

(assert (=> b!4807723 (=> (not res!2045292) (not e!3002954))))

(declare-datatypes ((Option!13251 0))(
  ( (None!13250) (Some!13250 (v!48688 V!16285)) )
))
(declare-fun isDefined!10390 (Option!13251) Bool)

(declare-fun getValueByKey!2448 (List!54567 K!16039) Option!13251)

(assert (=> b!4807723 (= res!2045292 (isDefined!10390 (getValueByKey!2448 (toList!7071 (extractMap!2509 (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921)))))) key!1652)))))

(declare-fun b!4807724 () Bool)

(assert (=> b!4807724 (= e!3002957 (keys!19933 (extractMap!2509 (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921)))))))))

(declare-fun b!4807725 () Bool)

(declare-fun lt!1960687 () Unit!141335)

(assert (=> b!4807725 (= e!3002958 lt!1960687)))

(declare-fun lt!1960681 () Unit!141335)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2236 (List!54567 K!16039) Unit!141335)

(assert (=> b!4807725 (= lt!1960681 (lemmaContainsKeyImpliesGetValueByKeyDefined!2236 (toList!7071 (extractMap!2509 (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921)))))) key!1652))))

(assert (=> b!4807725 (isDefined!10390 (getValueByKey!2448 (toList!7071 (extractMap!2509 (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921)))))) key!1652))))

(declare-fun lt!1960684 () Unit!141335)

(assert (=> b!4807725 (= lt!1960684 lt!1960681)))

(declare-fun lemmaInListThenGetKeysListContains!1109 (List!54567 K!16039) Unit!141335)

(assert (=> b!4807725 (= lt!1960687 (lemmaInListThenGetKeysListContains!1109 (toList!7071 (extractMap!2509 (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921)))))) key!1652))))

(assert (=> b!4807725 call!335601))

(declare-fun b!4807726 () Bool)

(assert (=> b!4807726 (= e!3002958 e!3002955)))

(declare-fun c!819419 () Bool)

(assert (=> b!4807726 (= c!819419 call!335601)))

(assert (= (and d!1539961 c!819420) b!4807725))

(assert (= (and d!1539961 (not c!819420)) b!4807726))

(assert (= (and b!4807726 c!819419) b!4807718))

(assert (= (and b!4807726 (not c!819419)) b!4807719))

(assert (= (or b!4807725 b!4807726) bm!335596))

(assert (= (and bm!335596 c!819418) b!4807720))

(assert (= (and bm!335596 (not c!819418)) b!4807724))

(assert (= (and d!1539961 res!2045294) b!4807721))

(assert (= (and d!1539961 (not res!2045293)) b!4807723))

(assert (= (and b!4807723 res!2045292) b!4807722))

(declare-fun m!5793908 () Bool)

(assert (=> b!4807718 m!5793908))

(declare-fun m!5793910 () Bool)

(assert (=> b!4807718 m!5793910))

(assert (=> d!1539961 m!5793908))

(assert (=> b!4807724 m!5793884))

(declare-fun m!5793912 () Bool)

(assert (=> b!4807724 m!5793912))

(declare-fun m!5793914 () Bool)

(assert (=> b!4807723 m!5793914))

(assert (=> b!4807723 m!5793914))

(declare-fun m!5793916 () Bool)

(assert (=> b!4807723 m!5793916))

(assert (=> b!4807722 m!5793884))

(assert (=> b!4807722 m!5793912))

(assert (=> b!4807722 m!5793912))

(declare-fun m!5793918 () Bool)

(assert (=> b!4807722 m!5793918))

(declare-fun m!5793920 () Bool)

(assert (=> b!4807720 m!5793920))

(assert (=> b!4807721 m!5793884))

(assert (=> b!4807721 m!5793912))

(assert (=> b!4807721 m!5793912))

(assert (=> b!4807721 m!5793918))

(declare-fun m!5793922 () Bool)

(assert (=> b!4807725 m!5793922))

(assert (=> b!4807725 m!5793914))

(assert (=> b!4807725 m!5793914))

(assert (=> b!4807725 m!5793916))

(declare-fun m!5793924 () Bool)

(assert (=> b!4807725 m!5793924))

(declare-fun m!5793926 () Bool)

(assert (=> bm!335596 m!5793926))

(assert (=> b!4807680 d!1539961))

(declare-fun d!1539963 () Bool)

(declare-fun dynLambda!22120 (Int tuple2!57230) Bool)

(assert (=> d!1539963 (dynLambda!22120 lambda!233522 lt!1960652)))

(declare-fun lt!1960690 () Unit!141335)

(declare-fun choose!34816 (List!54568 Int tuple2!57230) Unit!141335)

(assert (=> d!1539963 (= lt!1960690 (choose!34816 (toList!7072 lt!1960650) lambda!233522 lt!1960652))))

(declare-fun e!3002961 () Bool)

(assert (=> d!1539963 e!3002961))

(declare-fun res!2045297 () Bool)

(assert (=> d!1539963 (=> (not res!2045297) (not e!3002961))))

(assert (=> d!1539963 (= res!2045297 (forall!12377 (toList!7072 lt!1960650) lambda!233522))))

(assert (=> d!1539963 (= (forallContained!4239 (toList!7072 lt!1960650) lambda!233522 lt!1960652) lt!1960690)))

(declare-fun b!4807729 () Bool)

(assert (=> b!4807729 (= e!3002961 (contains!18118 (toList!7072 lt!1960650) lt!1960652))))

(assert (= (and d!1539963 res!2045297) b!4807729))

(declare-fun b_lambda!188149 () Bool)

(assert (=> (not b_lambda!188149) (not d!1539963)))

(declare-fun m!5793928 () Bool)

(assert (=> d!1539963 m!5793928))

(declare-fun m!5793930 () Bool)

(assert (=> d!1539963 m!5793930))

(declare-fun m!5793932 () Bool)

(assert (=> d!1539963 m!5793932))

(assert (=> b!4807729 m!5793880))

(assert (=> b!4807689 d!1539963))

(assert (=> b!4807689 d!1539959))

(declare-fun d!1539965 () Bool)

(declare-fun e!3002964 () Bool)

(assert (=> d!1539965 e!3002964))

(declare-fun c!819423 () Bool)

(assert (=> d!1539965 (= c!819423 (contains!18117 (v!48684 (underlying!10226 thiss!41921)) lt!1960655))))

(declare-fun lt!1960693 () List!54567)

(declare-fun apply!13094 (LongMapFixedSize!10018 (_ BitVec 64)) List!54567)

(assert (=> d!1539965 (= lt!1960693 (apply!13094 (v!48683 (underlying!10225 (v!48684 (underlying!10226 thiss!41921)))) lt!1960655))))

(assert (=> d!1539965 (valid!4026 (v!48684 (underlying!10226 thiss!41921)))))

(assert (=> d!1539965 (= (apply!13093 (v!48684 (underlying!10226 thiss!41921)) lt!1960655) lt!1960693)))

(declare-fun b!4807734 () Bool)

(declare-fun get!18624 (Option!13250) List!54567)

(assert (=> b!4807734 (= e!3002964 (= lt!1960693 (get!18624 (getValueByKey!2447 (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921)))) lt!1960655))))))

(declare-fun b!4807735 () Bool)

(declare-fun dynLambda!22121 (Int (_ BitVec 64)) List!54567)

(assert (=> b!4807735 (= e!3002964 (= lt!1960693 (dynLambda!22121 (defaultEntry!5427 (v!48683 (underlying!10225 (v!48684 (underlying!10226 thiss!41921))))) lt!1960655)))))

(assert (=> b!4807735 ((_ is LongMap!5009) (v!48684 (underlying!10226 thiss!41921)))))

(assert (= (and d!1539965 c!819423) b!4807734))

(assert (= (and d!1539965 (not c!819423)) b!4807735))

(declare-fun b_lambda!188151 () Bool)

(assert (=> (not b_lambda!188151) (not b!4807735)))

(declare-fun t!362034 () Bool)

(declare-fun tb!257517 () Bool)

(assert (=> (and b!4807686 (= (defaultEntry!5427 (v!48683 (underlying!10225 (v!48684 (underlying!10226 thiss!41921))))) (defaultEntry!5427 (v!48683 (underlying!10225 (v!48684 (underlying!10226 thiss!41921)))))) t!362034) tb!257517))

(assert (=> b!4807735 t!362034))

(declare-fun result!319564 () Bool)

(declare-fun b_and!341751 () Bool)

(assert (= b_and!341747 (and (=> t!362034 result!319564) b_and!341751)))

(assert (=> d!1539965 m!5793882))

(declare-fun m!5793934 () Bool)

(assert (=> d!1539965 m!5793934))

(assert (=> d!1539965 m!5793890))

(assert (=> b!4807734 m!5793876))

(declare-fun m!5793936 () Bool)

(assert (=> b!4807734 m!5793936))

(assert (=> b!4807734 m!5793936))

(declare-fun m!5793938 () Bool)

(assert (=> b!4807734 m!5793938))

(declare-fun m!5793940 () Bool)

(assert (=> b!4807735 m!5793940))

(assert (=> b!4807689 d!1539965))

(declare-fun d!1539967 () Bool)

(declare-fun lt!1960696 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9768 (List!54568) (InoxSet tuple2!57230))

(assert (=> d!1539967 (= lt!1960696 (select (content!9768 (toList!7072 lt!1960650)) lt!1960652))))

(declare-fun e!3002969 () Bool)

(assert (=> d!1539967 (= lt!1960696 e!3002969)))

(declare-fun res!2045302 () Bool)

(assert (=> d!1539967 (=> (not res!2045302) (not e!3002969))))

(assert (=> d!1539967 (= res!2045302 ((_ is Cons!54444) (toList!7072 lt!1960650)))))

(assert (=> d!1539967 (= (contains!18118 (toList!7072 lt!1960650) lt!1960652) lt!1960696)))

(declare-fun b!4807740 () Bool)

(declare-fun e!3002970 () Bool)

(assert (=> b!4807740 (= e!3002969 e!3002970)))

(declare-fun res!2045303 () Bool)

(assert (=> b!4807740 (=> res!2045303 e!3002970)))

(assert (=> b!4807740 (= res!2045303 (= (h!60876 (toList!7072 lt!1960650)) lt!1960652))))

(declare-fun b!4807741 () Bool)

(assert (=> b!4807741 (= e!3002970 (contains!18118 (t!362032 (toList!7072 lt!1960650)) lt!1960652))))

(assert (= (and d!1539967 res!2045302) b!4807740))

(assert (= (and b!4807740 (not res!2045303)) b!4807741))

(declare-fun m!5793942 () Bool)

(assert (=> d!1539967 m!5793942))

(declare-fun m!5793944 () Bool)

(assert (=> d!1539967 m!5793944))

(declare-fun m!5793946 () Bool)

(assert (=> b!4807741 m!5793946))

(assert (=> b!4807689 d!1539967))

(declare-fun d!1539969 () Bool)

(assert (=> d!1539969 (= (array_inv!5911 (_keys!5351 (v!48683 (underlying!10225 (v!48684 (underlying!10226 thiss!41921)))))) (bvsge (size!36449 (_keys!5351 (v!48683 (underlying!10225 (v!48684 (underlying!10226 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4807686 d!1539969))

(declare-fun d!1539971 () Bool)

(assert (=> d!1539971 (= (array_inv!5912 (_values!5322 (v!48683 (underlying!10225 (v!48684 (underlying!10226 thiss!41921)))))) (bvsge (size!36450 (_values!5322 (v!48683 (underlying!10225 (v!48684 (underlying!10226 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4807686 d!1539971))

(declare-fun d!1539973 () Bool)

(declare-fun valid!4027 (LongMapFixedSize!10018) Bool)

(assert (=> d!1539973 (= (valid!4026 (v!48684 (underlying!10226 thiss!41921))) (valid!4027 (v!48683 (underlying!10225 (v!48684 (underlying!10226 thiss!41921))))))))

(declare-fun bs!1159942 () Bool)

(assert (= bs!1159942 d!1539973))

(declare-fun m!5793948 () Bool)

(assert (=> bs!1159942 m!5793948))

(assert (=> b!4807692 d!1539973))

(declare-fun d!1539975 () Bool)

(declare-fun isEmpty!29539 (Option!13250) Bool)

(assert (=> d!1539975 (= (isDefined!10389 (getValueByKey!2447 (toList!7072 lt!1960650) lt!1960655)) (not (isEmpty!29539 (getValueByKey!2447 (toList!7072 lt!1960650) lt!1960655))))))

(declare-fun bs!1159943 () Bool)

(assert (= bs!1159943 d!1539975))

(assert (=> bs!1159943 m!5793858))

(declare-fun m!5793950 () Bool)

(assert (=> bs!1159943 m!5793950))

(assert (=> b!4807693 d!1539975))

(declare-fun d!1539977 () Bool)

(assert (=> d!1539977 (contains!18118 (toList!7072 lt!1960650) (tuple2!57231 lt!1960655 lt!1960654))))

(declare-fun lt!1960699 () Unit!141335)

(declare-fun choose!34817 (List!54568 (_ BitVec 64) List!54567) Unit!141335)

(assert (=> d!1539977 (= lt!1960699 (choose!34817 (toList!7072 lt!1960650) lt!1960655 lt!1960654))))

(declare-fun e!3002973 () Bool)

(assert (=> d!1539977 e!3002973))

(declare-fun res!2045306 () Bool)

(assert (=> d!1539977 (=> (not res!2045306) (not e!3002973))))

(declare-fun isStrictlySorted!921 (List!54568) Bool)

(assert (=> d!1539977 (= res!2045306 (isStrictlySorted!921 (toList!7072 lt!1960650)))))

(assert (=> d!1539977 (= (lemmaGetValueByKeyImpliesContainsTuple!966 (toList!7072 lt!1960650) lt!1960655 lt!1960654) lt!1960699)))

(declare-fun b!4807744 () Bool)

(assert (=> b!4807744 (= e!3002973 (= (getValueByKey!2447 (toList!7072 lt!1960650) lt!1960655) (Some!13249 lt!1960654)))))

(assert (= (and d!1539977 res!2045306) b!4807744))

(declare-fun m!5793952 () Bool)

(assert (=> d!1539977 m!5793952))

(declare-fun m!5793954 () Bool)

(assert (=> d!1539977 m!5793954))

(declare-fun m!5793956 () Bool)

(assert (=> d!1539977 m!5793956))

(assert (=> b!4807744 m!5793858))

(assert (=> b!4807693 d!1539977))

(declare-fun d!1539979 () Bool)

(declare-fun res!2045311 () Bool)

(declare-fun e!3002978 () Bool)

(assert (=> d!1539979 (=> res!2045311 e!3002978)))

(assert (=> d!1539979 (= res!2045311 (and ((_ is Cons!54444) (toList!7072 lt!1960650)) (= (_1!31909 (h!60876 (toList!7072 lt!1960650))) lt!1960655)))))

(assert (=> d!1539979 (= (containsKey!4102 (toList!7072 lt!1960650) lt!1960655) e!3002978)))

(declare-fun b!4807749 () Bool)

(declare-fun e!3002979 () Bool)

(assert (=> b!4807749 (= e!3002978 e!3002979)))

(declare-fun res!2045312 () Bool)

(assert (=> b!4807749 (=> (not res!2045312) (not e!3002979))))

(assert (=> b!4807749 (= res!2045312 (and (or (not ((_ is Cons!54444) (toList!7072 lt!1960650))) (bvsle (_1!31909 (h!60876 (toList!7072 lt!1960650))) lt!1960655)) ((_ is Cons!54444) (toList!7072 lt!1960650)) (bvslt (_1!31909 (h!60876 (toList!7072 lt!1960650))) lt!1960655)))))

(declare-fun b!4807750 () Bool)

(assert (=> b!4807750 (= e!3002979 (containsKey!4102 (t!362032 (toList!7072 lt!1960650)) lt!1960655))))

(assert (= (and d!1539979 (not res!2045311)) b!4807749))

(assert (= (and b!4807749 res!2045312) b!4807750))

(declare-fun m!5793958 () Bool)

(assert (=> b!4807750 m!5793958))

(assert (=> b!4807693 d!1539979))

(declare-fun d!1539981 () Bool)

(assert (=> d!1539981 (isDefined!10389 (getValueByKey!2447 (toList!7072 lt!1960650) lt!1960655))))

(declare-fun lt!1960702 () Unit!141335)

(declare-fun choose!34818 (List!54568 (_ BitVec 64)) Unit!141335)

(assert (=> d!1539981 (= lt!1960702 (choose!34818 (toList!7072 lt!1960650) lt!1960655))))

(declare-fun e!3002982 () Bool)

(assert (=> d!1539981 e!3002982))

(declare-fun res!2045315 () Bool)

(assert (=> d!1539981 (=> (not res!2045315) (not e!3002982))))

(assert (=> d!1539981 (= res!2045315 (isStrictlySorted!921 (toList!7072 lt!1960650)))))

(assert (=> d!1539981 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2235 (toList!7072 lt!1960650) lt!1960655) lt!1960702)))

(declare-fun b!4807753 () Bool)

(assert (=> b!4807753 (= e!3002982 (containsKey!4102 (toList!7072 lt!1960650) lt!1960655))))

(assert (= (and d!1539981 res!2045315) b!4807753))

(assert (=> d!1539981 m!5793858))

(assert (=> d!1539981 m!5793858))

(assert (=> d!1539981 m!5793860))

(declare-fun m!5793960 () Bool)

(assert (=> d!1539981 m!5793960))

(assert (=> d!1539981 m!5793956))

(assert (=> b!4807753 m!5793856))

(assert (=> b!4807693 d!1539981))

(declare-fun b!4807764 () Bool)

(declare-fun e!3002988 () Option!13250)

(assert (=> b!4807764 (= e!3002988 (getValueByKey!2447 (t!362032 (toList!7072 lt!1960650)) lt!1960655))))

(declare-fun d!1539983 () Bool)

(declare-fun c!819428 () Bool)

(assert (=> d!1539983 (= c!819428 (and ((_ is Cons!54444) (toList!7072 lt!1960650)) (= (_1!31909 (h!60876 (toList!7072 lt!1960650))) lt!1960655)))))

(declare-fun e!3002987 () Option!13250)

(assert (=> d!1539983 (= (getValueByKey!2447 (toList!7072 lt!1960650) lt!1960655) e!3002987)))

(declare-fun b!4807763 () Bool)

(assert (=> b!4807763 (= e!3002987 e!3002988)))

(declare-fun c!819429 () Bool)

(assert (=> b!4807763 (= c!819429 (and ((_ is Cons!54444) (toList!7072 lt!1960650)) (not (= (_1!31909 (h!60876 (toList!7072 lt!1960650))) lt!1960655))))))

(declare-fun b!4807765 () Bool)

(assert (=> b!4807765 (= e!3002988 None!13249)))

(declare-fun b!4807762 () Bool)

(assert (=> b!4807762 (= e!3002987 (Some!13249 (_2!31909 (h!60876 (toList!7072 lt!1960650)))))))

(assert (= (and d!1539983 c!819428) b!4807762))

(assert (= (and d!1539983 (not c!819428)) b!4807763))

(assert (= (and b!4807763 c!819429) b!4807764))

(assert (= (and b!4807763 (not c!819429)) b!4807765))

(declare-fun m!5793962 () Bool)

(assert (=> b!4807764 m!5793962))

(assert (=> b!4807693 d!1539983))

(declare-fun d!1539985 () Bool)

(assert (=> d!1539985 (containsKey!4102 (toList!7072 lt!1960650) lt!1960655)))

(declare-fun lt!1960705 () Unit!141335)

(declare-fun choose!34819 (List!54568 (_ BitVec 64)) Unit!141335)

(assert (=> d!1539985 (= lt!1960705 (choose!34819 (toList!7072 lt!1960650) lt!1960655))))

(declare-fun e!3002991 () Bool)

(assert (=> d!1539985 e!3002991))

(declare-fun res!2045318 () Bool)

(assert (=> d!1539985 (=> (not res!2045318) (not e!3002991))))

(assert (=> d!1539985 (= res!2045318 (isStrictlySorted!921 (toList!7072 lt!1960650)))))

(assert (=> d!1539985 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!237 (toList!7072 lt!1960650) lt!1960655) lt!1960705)))

(declare-fun b!4807768 () Bool)

(assert (=> b!4807768 (= e!3002991 (isDefined!10389 (getValueByKey!2447 (toList!7072 lt!1960650) lt!1960655)))))

(assert (= (and d!1539985 res!2045318) b!4807768))

(assert (=> d!1539985 m!5793856))

(declare-fun m!5793964 () Bool)

(assert (=> d!1539985 m!5793964))

(assert (=> d!1539985 m!5793956))

(assert (=> b!4807768 m!5793858))

(assert (=> b!4807768 m!5793858))

(assert (=> b!4807768 m!5793860))

(assert (=> b!4807693 d!1539985))

(declare-fun bs!1159944 () Bool)

(declare-fun b!4807773 () Bool)

(assert (= bs!1159944 (and b!4807773 b!4807689)))

(declare-fun lambda!233528 () Int)

(assert (=> bs!1159944 (= lambda!233528 lambda!233522)))

(declare-fun bs!1159945 () Bool)

(assert (= bs!1159945 (and b!4807773 d!1539953)))

(assert (=> bs!1159945 (= lambda!233528 lambda!233525)))

(declare-fun d!1539987 () Bool)

(declare-fun res!2045323 () Bool)

(declare-fun e!3002994 () Bool)

(assert (=> d!1539987 (=> (not res!2045323) (not e!3002994))))

(assert (=> d!1539987 (= res!2045323 (valid!4026 (v!48684 (underlying!10226 thiss!41921))))))

(assert (=> d!1539987 (= (valid!4025 thiss!41921) e!3002994)))

(declare-fun res!2045324 () Bool)

(assert (=> b!4807773 (=> (not res!2045324) (not e!3002994))))

(assert (=> b!4807773 (= res!2045324 (forall!12377 (toList!7072 (map!12349 (v!48684 (underlying!10226 thiss!41921)))) lambda!233528))))

(declare-fun b!4807774 () Bool)

(declare-fun allKeysSameHashInMap!2393 (ListLongMap!5521 Hashable!7020) Bool)

(assert (=> b!4807774 (= e!3002994 (allKeysSameHashInMap!2393 (map!12349 (v!48684 (underlying!10226 thiss!41921))) (hashF!13288 thiss!41921)))))

(assert (= (and d!1539987 res!2045323) b!4807773))

(assert (= (and b!4807773 res!2045324) b!4807774))

(assert (=> d!1539987 m!5793890))

(assert (=> b!4807773 m!5793876))

(declare-fun m!5793966 () Bool)

(assert (=> b!4807773 m!5793966))

(assert (=> b!4807774 m!5793876))

(assert (=> b!4807774 m!5793876))

(declare-fun m!5793968 () Bool)

(assert (=> b!4807774 m!5793968))

(assert (=> b!4807688 d!1539987))

(declare-fun tp!1359578 () Bool)

(declare-fun e!3002997 () Bool)

(declare-fun tp_is_empty!33879 () Bool)

(declare-fun b!4807779 () Bool)

(assert (=> b!4807779 (= e!3002997 (and tp_is_empty!33877 tp_is_empty!33879 tp!1359578))))

(assert (=> b!4807683 (= tp!1359571 e!3002997)))

(assert (= (and b!4807683 ((_ is Cons!54443) mapDefault!22172)) b!4807779))

(declare-fun mapIsEmpty!22175 () Bool)

(declare-fun mapRes!22175 () Bool)

(assert (=> mapIsEmpty!22175 mapRes!22175))

(declare-fun mapNonEmpty!22175 () Bool)

(declare-fun tp!1359585 () Bool)

(declare-fun e!3003003 () Bool)

(assert (=> mapNonEmpty!22175 (= mapRes!22175 (and tp!1359585 e!3003003))))

(declare-fun mapKey!22175 () (_ BitVec 32))

(declare-fun mapRest!22175 () (Array (_ BitVec 32) List!54567))

(declare-fun mapValue!22175 () List!54567)

(assert (=> mapNonEmpty!22175 (= mapRest!22172 (store mapRest!22175 mapKey!22175 mapValue!22175))))

(declare-fun tp!1359587 () Bool)

(declare-fun b!4807786 () Bool)

(assert (=> b!4807786 (= e!3003003 (and tp_is_empty!33877 tp_is_empty!33879 tp!1359587))))

(declare-fun condMapEmpty!22175 () Bool)

(declare-fun mapDefault!22175 () List!54567)

(assert (=> mapNonEmpty!22172 (= condMapEmpty!22175 (= mapRest!22172 ((as const (Array (_ BitVec 32) List!54567)) mapDefault!22175)))))

(declare-fun e!3003002 () Bool)

(assert (=> mapNonEmpty!22172 (= tp!1359573 (and e!3003002 mapRes!22175))))

(declare-fun b!4807787 () Bool)

(declare-fun tp!1359586 () Bool)

(assert (=> b!4807787 (= e!3003002 (and tp_is_empty!33877 tp_is_empty!33879 tp!1359586))))

(assert (= (and mapNonEmpty!22172 condMapEmpty!22175) mapIsEmpty!22175))

(assert (= (and mapNonEmpty!22172 (not condMapEmpty!22175)) mapNonEmpty!22175))

(assert (= (and mapNonEmpty!22175 ((_ is Cons!54443) mapValue!22175)) b!4807786))

(assert (= (and mapNonEmpty!22172 ((_ is Cons!54443) mapDefault!22175)) b!4807787))

(declare-fun m!5793970 () Bool)

(assert (=> mapNonEmpty!22175 m!5793970))

(declare-fun e!3003004 () Bool)

(declare-fun b!4807788 () Bool)

(declare-fun tp!1359588 () Bool)

(assert (=> b!4807788 (= e!3003004 (and tp_is_empty!33877 tp_is_empty!33879 tp!1359588))))

(assert (=> mapNonEmpty!22172 (= tp!1359570 e!3003004)))

(assert (= (and mapNonEmpty!22172 ((_ is Cons!54443) mapValue!22172)) b!4807788))

(declare-fun b!4807789 () Bool)

(declare-fun tp!1359589 () Bool)

(declare-fun e!3003005 () Bool)

(assert (=> b!4807789 (= e!3003005 (and tp_is_empty!33877 tp_is_empty!33879 tp!1359589))))

(assert (=> b!4807686 (= tp!1359572 e!3003005)))

(assert (= (and b!4807686 ((_ is Cons!54443) (zeroValue!5297 (v!48683 (underlying!10225 (v!48684 (underlying!10226 thiss!41921))))))) b!4807789))

(declare-fun tp!1359590 () Bool)

(declare-fun e!3003006 () Bool)

(declare-fun b!4807790 () Bool)

(assert (=> b!4807790 (= e!3003006 (and tp_is_empty!33877 tp_is_empty!33879 tp!1359590))))

(assert (=> b!4807686 (= tp!1359575 e!3003006)))

(assert (= (and b!4807686 ((_ is Cons!54443) (minValue!5297 (v!48683 (underlying!10225 (v!48684 (underlying!10226 thiss!41921))))))) b!4807790))

(declare-fun b_lambda!188153 () Bool)

(assert (= b_lambda!188149 (or b!4807689 b_lambda!188153)))

(declare-fun bs!1159946 () Bool)

(declare-fun d!1539989 () Bool)

(assert (= bs!1159946 (and d!1539989 b!4807689)))

(declare-fun noDuplicateKeys!2380 (List!54567) Bool)

(assert (=> bs!1159946 (= (dynLambda!22120 lambda!233522 lt!1960652) (noDuplicateKeys!2380 (_2!31909 lt!1960652)))))

(declare-fun m!5793972 () Bool)

(assert (=> bs!1159946 m!5793972))

(assert (=> d!1539963 d!1539989))

(declare-fun b_lambda!188155 () Bool)

(assert (= b_lambda!188151 (or (and b!4807686 b_free!129979) b_lambda!188155)))

(check-sat (not b!4807786) (not b!4807744) (not d!1539957) (not b_next!130769) b_and!341749 tp_is_empty!33879 (not d!1539963) (not b!4807773) (not d!1539977) (not d!1539953) (not b!4807698) (not mapNonEmpty!22175) (not d!1539965) (not b_lambda!188155) (not d!1539985) (not b_lambda!188153) (not d!1539955) (not b!4807725) (not b!4807788) (not b!4807724) (not d!1539961) (not b!4807734) (not b!4807764) (not b!4807741) (not tb!257517) (not b!4807722) (not d!1539967) (not b!4807753) (not b!4807723) (not b!4807790) (not b!4807774) (not b!4807789) (not d!1539975) (not b!4807779) (not bm!335596) (not b!4807750) (not b_next!130771) (not b!4807729) (not b!4807787) (not b!4807720) (not b!4807721) (not d!1539987) (not d!1539959) (not b!4807768) (not bs!1159946) (not d!1539981) tp_is_empty!33877 (not b!4807718) b_and!341751 (not d!1539973))
(check-sat b_and!341751 b_and!341749 (not b_next!130769) (not b_next!130771))
