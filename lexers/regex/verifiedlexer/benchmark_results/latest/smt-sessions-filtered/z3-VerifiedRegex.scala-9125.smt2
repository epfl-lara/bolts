; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487424 () Bool)

(assert start!487424)

(declare-fun b!4765296 () Bool)

(declare-fun b_free!129579 () Bool)

(declare-fun b_next!130369 () Bool)

(assert (=> b!4765296 (= b_free!129579 (not b_next!130369))))

(declare-fun tp!1355072 () Bool)

(declare-fun b_and!341277 () Bool)

(assert (=> b!4765296 (= tp!1355072 b_and!341277)))

(declare-fun b!4765302 () Bool)

(declare-fun b_free!129581 () Bool)

(declare-fun b_next!130371 () Bool)

(assert (=> b!4765302 (= b_free!129581 (not b_next!130371))))

(declare-fun tp!1355070 () Bool)

(declare-fun b_and!341279 () Bool)

(assert (=> b!4765302 (= tp!1355070 b_and!341279)))

(declare-fun b!4765294 () Bool)

(declare-fun e!2974239 () Bool)

(declare-datatypes ((K!14914 0))(
  ( (K!14915 (val!20237 Int)) )
))
(declare-datatypes ((V!15160 0))(
  ( (V!15161 (val!20238 Int)) )
))
(declare-datatypes ((tuple2!55468 0))(
  ( (tuple2!55469 (_1!31028 K!14914) (_2!31028 V!15160)) )
))
(declare-datatypes ((List!53578 0))(
  ( (Nil!53454) (Cons!53454 (h!59866 tuple2!55468) (t!360990 List!53578)) )
))
(declare-fun lt!1927959 () List!53578)

(declare-fun key!1776 () K!14914)

(declare-datatypes ((Option!12641 0))(
  ( (None!12640) (Some!12640 (v!47569 tuple2!55468)) )
))
(declare-fun isDefined!9814 (Option!12641) Bool)

(declare-fun getPair!633 (List!53578 K!14914) Option!12641)

(assert (=> b!4765294 (= e!2974239 (not (isDefined!9814 (getPair!633 lt!1927959 key!1776))))))

(declare-fun lambda!224117 () Int)

(declare-datatypes ((tuple2!55470 0))(
  ( (tuple2!55471 (_1!31029 (_ BitVec 64)) (_2!31029 List!53578)) )
))
(declare-datatypes ((List!53579 0))(
  ( (Nil!53455) (Cons!53455 (h!59867 tuple2!55470) (t!360991 List!53579)) )
))
(declare-datatypes ((ListLongMap!4661 0))(
  ( (ListLongMap!4662 (toList!6264 List!53579)) )
))
(declare-fun lt!1927963 () ListLongMap!4661)

(declare-datatypes ((Unit!138153 0))(
  ( (Unit!138154) )
))
(declare-fun lt!1927964 () Unit!138153)

(declare-fun lt!1927962 () tuple2!55470)

(declare-fun forallContained!3849 (List!53579 Int tuple2!55470) Unit!138153)

(assert (=> b!4765294 (= lt!1927964 (forallContained!3849 (toList!6264 lt!1927963) lambda!224117 lt!1927962))))

(declare-fun lt!1927956 () Unit!138153)

(declare-fun e!2974234 () Unit!138153)

(assert (=> b!4765294 (= lt!1927956 e!2974234)))

(declare-fun c!812866 () Bool)

(declare-fun contains!16777 (List!53579 tuple2!55470) Bool)

(assert (=> b!4765294 (= c!812866 (not (contains!16777 (toList!6264 lt!1927963) lt!1927962)))))

(declare-fun lt!1927960 () (_ BitVec 64))

(assert (=> b!4765294 (= lt!1927962 (tuple2!55471 lt!1927960 lt!1927959))))

(declare-datatypes ((array!17944 0))(
  ( (array!17945 (arr!8003 (Array (_ BitVec 32) (_ BitVec 64))) (size!36233 (_ BitVec 32))) )
))
(declare-datatypes ((array!17946 0))(
  ( (array!17947 (arr!8004 (Array (_ BitVec 32) List!53578)) (size!36234 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6570 0))(
  ( (HashableExt!6569 (__x!32475 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9818 0))(
  ( (LongMapFixedSize!9819 (defaultEntry!5327 Int) (mask!14659 (_ BitVec 32)) (extraKeys!5184 (_ BitVec 32)) (zeroValue!5197 List!53578) (minValue!5197 List!53578) (_size!9843 (_ BitVec 32)) (_keys!5251 array!17944) (_values!5222 array!17946) (_vacant!4974 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19401 0))(
  ( (Cell!19402 (v!47570 LongMapFixedSize!9818)) )
))
(declare-datatypes ((MutLongMap!4909 0))(
  ( (LongMap!4909 (underlying!10025 Cell!19401)) (MutLongMapExt!4908 (__x!32476 Int)) )
))
(declare-datatypes ((Cell!19403 0))(
  ( (Cell!19404 (v!47571 MutLongMap!4909)) )
))
(declare-datatypes ((MutableMap!4793 0))(
  ( (MutableMapExt!4792 (__x!32477 Int)) (HashMap!4793 (underlying!10026 Cell!19403) (hashF!12395 Hashable!6570) (_size!9844 (_ BitVec 32)) (defaultValue!4964 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4793)

(declare-fun apply!12598 (MutLongMap!4909 (_ BitVec 64)) List!53578)

(assert (=> b!4765294 (= lt!1927959 (apply!12598 (v!47571 (underlying!10026 thiss!42052)) lt!1927960))))

(declare-fun map!11956 (MutLongMap!4909) ListLongMap!4661)

(assert (=> b!4765294 (= lt!1927963 (map!11956 (v!47571 (underlying!10026 thiss!42052))))))

(declare-fun hash!4553 (Hashable!6570 K!14914) (_ BitVec 64))

(assert (=> b!4765294 (= lt!1927960 (hash!4553 (hashF!12395 thiss!42052) key!1776))))

(declare-fun b!4765295 () Bool)

(declare-fun Unit!138155 () Unit!138153)

(assert (=> b!4765295 (= e!2974234 Unit!138155)))

(declare-fun tp!1355076 () Bool)

(declare-fun e!2974235 () Bool)

(declare-fun e!2974241 () Bool)

(declare-fun tp!1355074 () Bool)

(declare-fun array_inv!5759 (array!17944) Bool)

(declare-fun array_inv!5760 (array!17946) Bool)

(assert (=> b!4765296 (= e!2974235 (and tp!1355072 tp!1355076 tp!1355074 (array_inv!5759 (_keys!5251 (v!47570 (underlying!10025 (v!47571 (underlying!10026 thiss!42052)))))) (array_inv!5760 (_values!5222 (v!47570 (underlying!10025 (v!47571 (underlying!10026 thiss!42052)))))) e!2974241))))

(declare-fun b!4765297 () Bool)

(declare-fun Unit!138156 () Unit!138153)

(assert (=> b!4765297 (= e!2974234 Unit!138156)))

(declare-fun lt!1927958 () Unit!138153)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1975 (List!53579 (_ BitVec 64)) Unit!138153)

(assert (=> b!4765297 (= lt!1927958 (lemmaContainsKeyImpliesGetValueByKeyDefined!1975 (toList!6264 lt!1927963) lt!1927960))))

(declare-datatypes ((Option!12642 0))(
  ( (None!12641) (Some!12641 (v!47572 List!53578)) )
))
(declare-fun isDefined!9815 (Option!12642) Bool)

(declare-fun getValueByKey!2161 (List!53579 (_ BitVec 64)) Option!12642)

(assert (=> b!4765297 (isDefined!9815 (getValueByKey!2161 (toList!6264 lt!1927963) lt!1927960))))

(declare-fun lt!1927961 () Unit!138153)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!919 (List!53579 (_ BitVec 64) List!53578) Unit!138153)

(assert (=> b!4765297 (= lt!1927961 (lemmaGetValueByKeyImpliesContainsTuple!919 (toList!6264 lt!1927963) lt!1927960 lt!1927959))))

(assert (=> b!4765297 false))

(declare-fun b!4765298 () Bool)

(declare-fun e!2974237 () Bool)

(declare-fun e!2974240 () Bool)

(assert (=> b!4765298 (= e!2974237 e!2974240)))

(declare-fun b!4765299 () Bool)

(declare-fun res!2021033 () Bool)

(assert (=> b!4765299 (=> (not res!2021033) (not e!2974239))))

(declare-fun contains!16778 (MutableMap!4793 K!14914) Bool)

(assert (=> b!4765299 (= res!2021033 (contains!16778 thiss!42052 key!1776))))

(declare-fun res!2021034 () Bool)

(assert (=> start!487424 (=> (not res!2021034) (not e!2974239))))

(get-info :version)

(assert (=> start!487424 (= res!2021034 ((_ is HashMap!4793) thiss!42052))))

(assert (=> start!487424 e!2974239))

(declare-fun e!2974238 () Bool)

(assert (=> start!487424 e!2974238))

(declare-fun tp_is_empty!32403 () Bool)

(assert (=> start!487424 tp_is_empty!32403))

(declare-fun b!4765300 () Bool)

(declare-fun res!2021035 () Bool)

(assert (=> b!4765300 (=> (not res!2021035) (not e!2974239))))

(declare-fun valid!3908 (MutableMap!4793) Bool)

(assert (=> b!4765300 (= res!2021035 (valid!3908 thiss!42052))))

(declare-fun mapNonEmpty!21794 () Bool)

(declare-fun mapRes!21794 () Bool)

(declare-fun tp!1355071 () Bool)

(declare-fun tp!1355075 () Bool)

(assert (=> mapNonEmpty!21794 (= mapRes!21794 (and tp!1355071 tp!1355075))))

(declare-fun mapRest!21794 () (Array (_ BitVec 32) List!53578))

(declare-fun mapKey!21794 () (_ BitVec 32))

(declare-fun mapValue!21794 () List!53578)

(assert (=> mapNonEmpty!21794 (= (arr!8004 (_values!5222 (v!47570 (underlying!10025 (v!47571 (underlying!10026 thiss!42052)))))) (store mapRest!21794 mapKey!21794 mapValue!21794))))

(declare-fun b!4765301 () Bool)

(assert (=> b!4765301 (= e!2974240 e!2974235)))

(declare-fun e!2974236 () Bool)

(assert (=> b!4765302 (= e!2974238 (and e!2974236 tp!1355070))))

(declare-fun b!4765303 () Bool)

(declare-fun lt!1927957 () MutLongMap!4909)

(assert (=> b!4765303 (= e!2974236 (and e!2974237 ((_ is LongMap!4909) lt!1927957)))))

(assert (=> b!4765303 (= lt!1927957 (v!47571 (underlying!10026 thiss!42052)))))

(declare-fun b!4765304 () Bool)

(declare-fun tp!1355073 () Bool)

(assert (=> b!4765304 (= e!2974241 (and tp!1355073 mapRes!21794))))

(declare-fun condMapEmpty!21794 () Bool)

(declare-fun mapDefault!21794 () List!53578)

(assert (=> b!4765304 (= condMapEmpty!21794 (= (arr!8004 (_values!5222 (v!47570 (underlying!10025 (v!47571 (underlying!10026 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53578)) mapDefault!21794)))))

(declare-fun mapIsEmpty!21794 () Bool)

(assert (=> mapIsEmpty!21794 mapRes!21794))

(assert (= (and start!487424 res!2021034) b!4765300))

(assert (= (and b!4765300 res!2021035) b!4765299))

(assert (= (and b!4765299 res!2021033) b!4765294))

(assert (= (and b!4765294 c!812866) b!4765297))

(assert (= (and b!4765294 (not c!812866)) b!4765295))

(assert (= (and b!4765304 condMapEmpty!21794) mapIsEmpty!21794))

(assert (= (and b!4765304 (not condMapEmpty!21794)) mapNonEmpty!21794))

(assert (= b!4765296 b!4765304))

(assert (= b!4765301 b!4765296))

(assert (= b!4765298 b!4765301))

(assert (= (and b!4765303 ((_ is LongMap!4909) (v!47571 (underlying!10026 thiss!42052)))) b!4765298))

(assert (= b!4765302 b!4765303))

(assert (= (and start!487424 ((_ is HashMap!4793) thiss!42052)) b!4765302))

(declare-fun m!5735754 () Bool)

(assert (=> b!4765296 m!5735754))

(declare-fun m!5735756 () Bool)

(assert (=> b!4765296 m!5735756))

(declare-fun m!5735758 () Bool)

(assert (=> b!4765300 m!5735758))

(declare-fun m!5735760 () Bool)

(assert (=> mapNonEmpty!21794 m!5735760))

(declare-fun m!5735762 () Bool)

(assert (=> b!4765297 m!5735762))

(declare-fun m!5735764 () Bool)

(assert (=> b!4765297 m!5735764))

(assert (=> b!4765297 m!5735764))

(declare-fun m!5735766 () Bool)

(assert (=> b!4765297 m!5735766))

(declare-fun m!5735768 () Bool)

(assert (=> b!4765297 m!5735768))

(declare-fun m!5735770 () Bool)

(assert (=> b!4765299 m!5735770))

(declare-fun m!5735772 () Bool)

(assert (=> b!4765294 m!5735772))

(declare-fun m!5735774 () Bool)

(assert (=> b!4765294 m!5735774))

(declare-fun m!5735776 () Bool)

(assert (=> b!4765294 m!5735776))

(declare-fun m!5735778 () Bool)

(assert (=> b!4765294 m!5735778))

(declare-fun m!5735780 () Bool)

(assert (=> b!4765294 m!5735780))

(declare-fun m!5735782 () Bool)

(assert (=> b!4765294 m!5735782))

(assert (=> b!4765294 m!5735780))

(declare-fun m!5735784 () Bool)

(assert (=> b!4765294 m!5735784))

(check-sat (not b!4765297) b_and!341277 (not b_next!130371) tp_is_empty!32403 (not b!4765300) (not b!4765304) (not b!4765299) (not b!4765296) (not b_next!130369) (not mapNonEmpty!21794) b_and!341279 (not b!4765294))
(check-sat b_and!341279 b_and!341277 (not b_next!130371) (not b_next!130369))
(get-model)

(declare-fun d!1523376 () Bool)

(assert (=> d!1523376 (isDefined!9815 (getValueByKey!2161 (toList!6264 lt!1927963) lt!1927960))))

(declare-fun lt!1927967 () Unit!138153)

(declare-fun choose!33940 (List!53579 (_ BitVec 64)) Unit!138153)

(assert (=> d!1523376 (= lt!1927967 (choose!33940 (toList!6264 lt!1927963) lt!1927960))))

(declare-fun e!2974245 () Bool)

(assert (=> d!1523376 e!2974245))

(declare-fun res!2021038 () Bool)

(assert (=> d!1523376 (=> (not res!2021038) (not e!2974245))))

(declare-fun isStrictlySorted!803 (List!53579) Bool)

(assert (=> d!1523376 (= res!2021038 (isStrictlySorted!803 (toList!6264 lt!1927963)))))

(assert (=> d!1523376 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1975 (toList!6264 lt!1927963) lt!1927960) lt!1927967)))

(declare-fun b!4765307 () Bool)

(declare-fun containsKey!3655 (List!53579 (_ BitVec 64)) Bool)

(assert (=> b!4765307 (= e!2974245 (containsKey!3655 (toList!6264 lt!1927963) lt!1927960))))

(assert (= (and d!1523376 res!2021038) b!4765307))

(assert (=> d!1523376 m!5735764))

(assert (=> d!1523376 m!5735764))

(assert (=> d!1523376 m!5735766))

(declare-fun m!5735786 () Bool)

(assert (=> d!1523376 m!5735786))

(declare-fun m!5735788 () Bool)

(assert (=> d!1523376 m!5735788))

(declare-fun m!5735790 () Bool)

(assert (=> b!4765307 m!5735790))

(assert (=> b!4765297 d!1523376))

(declare-fun d!1523378 () Bool)

(declare-fun isEmpty!29270 (Option!12642) Bool)

(assert (=> d!1523378 (= (isDefined!9815 (getValueByKey!2161 (toList!6264 lt!1927963) lt!1927960)) (not (isEmpty!29270 (getValueByKey!2161 (toList!6264 lt!1927963) lt!1927960))))))

(declare-fun bs!1148763 () Bool)

(assert (= bs!1148763 d!1523378))

(assert (=> bs!1148763 m!5735764))

(declare-fun m!5735792 () Bool)

(assert (=> bs!1148763 m!5735792))

(assert (=> b!4765297 d!1523378))

(declare-fun b!4765319 () Bool)

(declare-fun e!2974251 () Option!12642)

(assert (=> b!4765319 (= e!2974251 None!12641)))

(declare-fun b!4765317 () Bool)

(declare-fun e!2974250 () Option!12642)

(assert (=> b!4765317 (= e!2974250 e!2974251)))

(declare-fun c!812872 () Bool)

(assert (=> b!4765317 (= c!812872 (and ((_ is Cons!53455) (toList!6264 lt!1927963)) (not (= (_1!31029 (h!59867 (toList!6264 lt!1927963))) lt!1927960))))))

(declare-fun b!4765318 () Bool)

(assert (=> b!4765318 (= e!2974251 (getValueByKey!2161 (t!360991 (toList!6264 lt!1927963)) lt!1927960))))

(declare-fun d!1523380 () Bool)

(declare-fun c!812871 () Bool)

(assert (=> d!1523380 (= c!812871 (and ((_ is Cons!53455) (toList!6264 lt!1927963)) (= (_1!31029 (h!59867 (toList!6264 lt!1927963))) lt!1927960)))))

(assert (=> d!1523380 (= (getValueByKey!2161 (toList!6264 lt!1927963) lt!1927960) e!2974250)))

(declare-fun b!4765316 () Bool)

(assert (=> b!4765316 (= e!2974250 (Some!12641 (_2!31029 (h!59867 (toList!6264 lt!1927963)))))))

(assert (= (and d!1523380 c!812871) b!4765316))

(assert (= (and d!1523380 (not c!812871)) b!4765317))

(assert (= (and b!4765317 c!812872) b!4765318))

(assert (= (and b!4765317 (not c!812872)) b!4765319))

(declare-fun m!5735794 () Bool)

(assert (=> b!4765318 m!5735794))

(assert (=> b!4765297 d!1523380))

(declare-fun d!1523382 () Bool)

(assert (=> d!1523382 (contains!16777 (toList!6264 lt!1927963) (tuple2!55471 lt!1927960 lt!1927959))))

(declare-fun lt!1927970 () Unit!138153)

(declare-fun choose!33941 (List!53579 (_ BitVec 64) List!53578) Unit!138153)

(assert (=> d!1523382 (= lt!1927970 (choose!33941 (toList!6264 lt!1927963) lt!1927960 lt!1927959))))

(declare-fun e!2974254 () Bool)

(assert (=> d!1523382 e!2974254))

(declare-fun res!2021041 () Bool)

(assert (=> d!1523382 (=> (not res!2021041) (not e!2974254))))

(assert (=> d!1523382 (= res!2021041 (isStrictlySorted!803 (toList!6264 lt!1927963)))))

(assert (=> d!1523382 (= (lemmaGetValueByKeyImpliesContainsTuple!919 (toList!6264 lt!1927963) lt!1927960 lt!1927959) lt!1927970)))

(declare-fun b!4765322 () Bool)

(assert (=> b!4765322 (= e!2974254 (= (getValueByKey!2161 (toList!6264 lt!1927963) lt!1927960) (Some!12641 lt!1927959)))))

(assert (= (and d!1523382 res!2021041) b!4765322))

(declare-fun m!5735796 () Bool)

(assert (=> d!1523382 m!5735796))

(declare-fun m!5735798 () Bool)

(assert (=> d!1523382 m!5735798))

(assert (=> d!1523382 m!5735788))

(assert (=> b!4765322 m!5735764))

(assert (=> b!4765297 d!1523382))

(declare-fun bs!1148764 () Bool)

(declare-fun b!4765352 () Bool)

(assert (= bs!1148764 (and b!4765352 b!4765294)))

(declare-fun lambda!224120 () Int)

(assert (=> bs!1148764 (= lambda!224120 lambda!224117)))

(declare-fun bm!334118 () Bool)

(declare-fun call!334124 () (_ BitVec 64))

(assert (=> bm!334118 (= call!334124 (hash!4553 (hashF!12395 thiss!42052) key!1776))))

(declare-fun b!4765345 () Bool)

(assert (=> b!4765345 false))

(declare-fun lt!1928013 () Unit!138153)

(declare-fun lt!1928024 () Unit!138153)

(assert (=> b!4765345 (= lt!1928013 lt!1928024)))

(declare-fun lt!1928028 () ListLongMap!4661)

(declare-datatypes ((ListMap!5761 0))(
  ( (ListMap!5762 (toList!6265 List!53578)) )
))
(declare-fun contains!16779 (ListMap!5761 K!14914) Bool)

(declare-fun extractMap!2133 (List!53579) ListMap!5761)

(assert (=> b!4765345 (contains!16779 (extractMap!2133 (toList!6264 lt!1928028)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!197 (ListLongMap!4661 K!14914 Hashable!6570) Unit!138153)

(assert (=> b!4765345 (= lt!1928024 (lemmaInLongMapThenInGenericMap!197 lt!1928028 key!1776 (hashF!12395 thiss!42052)))))

(declare-fun call!334125 () ListLongMap!4661)

(assert (=> b!4765345 (= lt!1928028 call!334125)))

(declare-fun e!2974273 () Unit!138153)

(declare-fun Unit!138157 () Unit!138153)

(assert (=> b!4765345 (= e!2974273 Unit!138157)))

(declare-fun b!4765346 () Bool)

(declare-fun e!2974271 () Unit!138153)

(declare-fun Unit!138158 () Unit!138153)

(assert (=> b!4765346 (= e!2974271 Unit!138158)))

(declare-fun lt!1928019 () ListLongMap!4661)

(declare-fun c!812884 () Bool)

(declare-fun call!334127 () List!53578)

(declare-fun bm!334119 () Bool)

(declare-fun apply!12599 (ListLongMap!4661 (_ BitVec 64)) List!53578)

(assert (=> bm!334119 (= call!334127 (apply!12599 (ite c!812884 lt!1928019 call!334125) call!334124))))

(declare-fun b!4765347 () Bool)

(declare-fun e!2974275 () Unit!138153)

(declare-fun Unit!138159 () Unit!138153)

(assert (=> b!4765347 (= e!2974275 Unit!138159)))

(declare-fun b!4765348 () Bool)

(declare-fun Unit!138160 () Unit!138153)

(assert (=> b!4765348 (= e!2974273 Unit!138160)))

(declare-fun b!4765349 () Bool)

(declare-fun e!2974270 () Bool)

(declare-fun call!334128 () Bool)

(assert (=> b!4765349 (= e!2974270 call!334128)))

(declare-fun bm!334120 () Bool)

(declare-fun call!334126 () Bool)

(declare-fun contains!16780 (ListLongMap!4661 (_ BitVec 64)) Bool)

(assert (=> bm!334120 (= call!334126 (contains!16780 (ite c!812884 lt!1928019 call!334125) call!334124))))

(declare-fun bm!334121 () Bool)

(declare-fun call!334123 () Option!12641)

(assert (=> bm!334121 (= call!334128 (isDefined!9814 call!334123))))

(declare-fun e!2974269 () Bool)

(declare-fun lt!1928022 () (_ BitVec 64))

(declare-fun b!4765351 () Bool)

(assert (=> b!4765351 (= e!2974269 (isDefined!9814 (getPair!633 (apply!12598 (v!47571 (underlying!10026 thiss!42052)) lt!1928022) key!1776)))))

(declare-fun bm!334122 () Bool)

(assert (=> bm!334122 (= call!334125 (map!11956 (v!47571 (underlying!10026 thiss!42052))))))

(assert (=> b!4765352 (= e!2974271 (forallContained!3849 (toList!6264 (map!11956 (v!47571 (underlying!10026 thiss!42052)))) lambda!224120 (tuple2!55471 lt!1928022 (apply!12598 (v!47571 (underlying!10026 thiss!42052)) lt!1928022))))))

(declare-fun c!812883 () Bool)

(assert (=> b!4765352 (= c!812883 (not (contains!16777 (toList!6264 (map!11956 (v!47571 (underlying!10026 thiss!42052)))) (tuple2!55471 lt!1928022 (apply!12598 (v!47571 (underlying!10026 thiss!42052)) lt!1928022)))))))

(declare-fun lt!1928012 () Unit!138153)

(assert (=> b!4765352 (= lt!1928012 e!2974275)))

(declare-fun b!4765353 () Bool)

(declare-fun e!2974272 () Unit!138153)

(assert (=> b!4765353 (= e!2974272 e!2974273)))

(declare-fun res!2021049 () Bool)

(assert (=> b!4765353 (= res!2021049 call!334126)))

(assert (=> b!4765353 (=> (not res!2021049) (not e!2974270))))

(declare-fun c!812881 () Bool)

(assert (=> b!4765353 (= c!812881 e!2974270)))

(declare-fun b!4765354 () Bool)

(declare-fun lt!1928021 () Unit!138153)

(assert (=> b!4765354 (= e!2974272 lt!1928021)))

(assert (=> b!4765354 (= lt!1928019 call!334125)))

(declare-fun lemmaInGenericMapThenInLongMap!197 (ListLongMap!4661 K!14914 Hashable!6570) Unit!138153)

(assert (=> b!4765354 (= lt!1928021 (lemmaInGenericMapThenInLongMap!197 lt!1928019 key!1776 (hashF!12395 thiss!42052)))))

(declare-fun res!2021048 () Bool)

(assert (=> b!4765354 (= res!2021048 call!334126)))

(declare-fun e!2974274 () Bool)

(assert (=> b!4765354 (=> (not res!2021048) (not e!2974274))))

(assert (=> b!4765354 e!2974274))

(declare-fun b!4765355 () Bool)

(assert (=> b!4765355 false))

(declare-fun lt!1928029 () Unit!138153)

(declare-fun lt!1928014 () Unit!138153)

(assert (=> b!4765355 (= lt!1928029 lt!1928014)))

(declare-fun lt!1928030 () List!53579)

(declare-fun lt!1928027 () List!53578)

(assert (=> b!4765355 (contains!16777 lt!1928030 (tuple2!55471 lt!1928022 lt!1928027))))

(assert (=> b!4765355 (= lt!1928014 (lemmaGetValueByKeyImpliesContainsTuple!919 lt!1928030 lt!1928022 lt!1928027))))

(assert (=> b!4765355 (= lt!1928027 (apply!12598 (v!47571 (underlying!10026 thiss!42052)) lt!1928022))))

(assert (=> b!4765355 (= lt!1928030 (toList!6264 (map!11956 (v!47571 (underlying!10026 thiss!42052)))))))

(declare-fun lt!1928020 () Unit!138153)

(declare-fun lt!1928026 () Unit!138153)

(assert (=> b!4765355 (= lt!1928020 lt!1928026)))

(declare-fun lt!1928018 () List!53579)

(assert (=> b!4765355 (isDefined!9815 (getValueByKey!2161 lt!1928018 lt!1928022))))

(assert (=> b!4765355 (= lt!1928026 (lemmaContainsKeyImpliesGetValueByKeyDefined!1975 lt!1928018 lt!1928022))))

(assert (=> b!4765355 (= lt!1928018 (toList!6264 (map!11956 (v!47571 (underlying!10026 thiss!42052)))))))

(declare-fun lt!1928015 () Unit!138153)

(declare-fun lt!1928023 () Unit!138153)

(assert (=> b!4765355 (= lt!1928015 lt!1928023)))

(declare-fun lt!1928011 () List!53579)

(assert (=> b!4765355 (containsKey!3655 lt!1928011 lt!1928022)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!198 (List!53579 (_ BitVec 64)) Unit!138153)

(assert (=> b!4765355 (= lt!1928023 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!198 lt!1928011 lt!1928022))))

(assert (=> b!4765355 (= lt!1928011 (toList!6264 (map!11956 (v!47571 (underlying!10026 thiss!42052)))))))

(declare-fun Unit!138161 () Unit!138153)

(assert (=> b!4765355 (= e!2974275 Unit!138161)))

(declare-fun bm!334123 () Bool)

(assert (=> bm!334123 (= call!334123 (getPair!633 call!334127 key!1776))))

(declare-fun d!1523384 () Bool)

(declare-fun lt!1928016 () Bool)

(declare-fun map!11957 (MutableMap!4793) ListMap!5761)

(assert (=> d!1523384 (= lt!1928016 (contains!16779 (map!11957 thiss!42052) key!1776))))

(assert (=> d!1523384 (= lt!1928016 e!2974269)))

(declare-fun res!2021050 () Bool)

(assert (=> d!1523384 (=> (not res!2021050) (not e!2974269))))

(declare-fun contains!16781 (MutLongMap!4909 (_ BitVec 64)) Bool)

(assert (=> d!1523384 (= res!2021050 (contains!16781 (v!47571 (underlying!10026 thiss!42052)) lt!1928022))))

(declare-fun lt!1928025 () Unit!138153)

(assert (=> d!1523384 (= lt!1928025 e!2974272)))

(assert (=> d!1523384 (= c!812884 (contains!16779 (extractMap!2133 (toList!6264 (map!11956 (v!47571 (underlying!10026 thiss!42052))))) key!1776))))

(declare-fun lt!1928017 () Unit!138153)

(assert (=> d!1523384 (= lt!1928017 e!2974271)))

(declare-fun c!812882 () Bool)

(assert (=> d!1523384 (= c!812882 (contains!16781 (v!47571 (underlying!10026 thiss!42052)) lt!1928022))))

(assert (=> d!1523384 (= lt!1928022 (hash!4553 (hashF!12395 thiss!42052) key!1776))))

(assert (=> d!1523384 (valid!3908 thiss!42052)))

(assert (=> d!1523384 (= (contains!16778 thiss!42052 key!1776) lt!1928016)))

(declare-fun b!4765350 () Bool)

(assert (=> b!4765350 (= e!2974274 call!334128)))

(assert (= (and d!1523384 c!812882) b!4765352))

(assert (= (and d!1523384 (not c!812882)) b!4765346))

(assert (= (and b!4765352 c!812883) b!4765355))

(assert (= (and b!4765352 (not c!812883)) b!4765347))

(assert (= (and d!1523384 c!812884) b!4765354))

(assert (= (and d!1523384 (not c!812884)) b!4765353))

(assert (= (and b!4765354 res!2021048) b!4765350))

(assert (= (and b!4765353 res!2021049) b!4765349))

(assert (= (and b!4765353 c!812881) b!4765345))

(assert (= (and b!4765353 (not c!812881)) b!4765348))

(assert (= (or b!4765354 b!4765350 b!4765353 b!4765349) bm!334118))

(assert (= (or b!4765354 b!4765353 b!4765349 b!4765345) bm!334122))

(assert (= (or b!4765350 b!4765349) bm!334119))

(assert (= (or b!4765354 b!4765353) bm!334120))

(assert (= (or b!4765350 b!4765349) bm!334123))

(assert (= (or b!4765350 b!4765349) bm!334121))

(assert (= (and d!1523384 res!2021050) b!4765351))

(assert (=> bm!334118 m!5735774))

(assert (=> b!4765352 m!5735772))

(declare-fun m!5735800 () Bool)

(assert (=> b!4765352 m!5735800))

(declare-fun m!5735802 () Bool)

(assert (=> b!4765352 m!5735802))

(declare-fun m!5735804 () Bool)

(assert (=> b!4765352 m!5735804))

(declare-fun m!5735806 () Bool)

(assert (=> bm!334121 m!5735806))

(declare-fun m!5735808 () Bool)

(assert (=> bm!334123 m!5735808))

(declare-fun m!5735810 () Bool)

(assert (=> bm!334120 m!5735810))

(declare-fun m!5735812 () Bool)

(assert (=> bm!334119 m!5735812))

(assert (=> b!4765351 m!5735800))

(assert (=> b!4765351 m!5735800))

(declare-fun m!5735814 () Bool)

(assert (=> b!4765351 m!5735814))

(assert (=> b!4765351 m!5735814))

(declare-fun m!5735816 () Bool)

(assert (=> b!4765351 m!5735816))

(declare-fun m!5735818 () Bool)

(assert (=> b!4765345 m!5735818))

(assert (=> b!4765345 m!5735818))

(declare-fun m!5735820 () Bool)

(assert (=> b!4765345 m!5735820))

(declare-fun m!5735822 () Bool)

(assert (=> b!4765345 m!5735822))

(declare-fun m!5735824 () Bool)

(assert (=> b!4765354 m!5735824))

(assert (=> bm!334122 m!5735772))

(declare-fun m!5735826 () Bool)

(assert (=> b!4765355 m!5735826))

(declare-fun m!5735828 () Bool)

(assert (=> b!4765355 m!5735828))

(declare-fun m!5735830 () Bool)

(assert (=> b!4765355 m!5735830))

(assert (=> b!4765355 m!5735828))

(declare-fun m!5735832 () Bool)

(assert (=> b!4765355 m!5735832))

(assert (=> b!4765355 m!5735772))

(assert (=> b!4765355 m!5735800))

(declare-fun m!5735834 () Bool)

(assert (=> b!4765355 m!5735834))

(declare-fun m!5735836 () Bool)

(assert (=> b!4765355 m!5735836))

(declare-fun m!5735838 () Bool)

(assert (=> b!4765355 m!5735838))

(declare-fun m!5735840 () Bool)

(assert (=> d!1523384 m!5735840))

(declare-fun m!5735842 () Bool)

(assert (=> d!1523384 m!5735842))

(assert (=> d!1523384 m!5735772))

(declare-fun m!5735844 () Bool)

(assert (=> d!1523384 m!5735844))

(assert (=> d!1523384 m!5735774))

(declare-fun m!5735846 () Bool)

(assert (=> d!1523384 m!5735846))

(declare-fun m!5735848 () Bool)

(assert (=> d!1523384 m!5735848))

(assert (=> d!1523384 m!5735846))

(assert (=> d!1523384 m!5735758))

(assert (=> d!1523384 m!5735840))

(assert (=> b!4765299 d!1523384))

(declare-fun bs!1148765 () Bool)

(declare-fun b!4765360 () Bool)

(assert (= bs!1148765 (and b!4765360 b!4765294)))

(declare-fun lambda!224123 () Int)

(assert (=> bs!1148765 (= lambda!224123 lambda!224117)))

(declare-fun bs!1148766 () Bool)

(assert (= bs!1148766 (and b!4765360 b!4765352)))

(assert (=> bs!1148766 (= lambda!224123 lambda!224120)))

(declare-fun d!1523386 () Bool)

(declare-fun res!2021055 () Bool)

(declare-fun e!2974278 () Bool)

(assert (=> d!1523386 (=> (not res!2021055) (not e!2974278))))

(declare-fun valid!3909 (MutLongMap!4909) Bool)

(assert (=> d!1523386 (= res!2021055 (valid!3909 (v!47571 (underlying!10026 thiss!42052))))))

(assert (=> d!1523386 (= (valid!3908 thiss!42052) e!2974278)))

(declare-fun res!2021056 () Bool)

(assert (=> b!4765360 (=> (not res!2021056) (not e!2974278))))

(declare-fun forall!11867 (List!53579 Int) Bool)

(assert (=> b!4765360 (= res!2021056 (forall!11867 (toList!6264 (map!11956 (v!47571 (underlying!10026 thiss!42052)))) lambda!224123))))

(declare-fun b!4765361 () Bool)

(declare-fun allKeysSameHashInMap!2014 (ListLongMap!4661 Hashable!6570) Bool)

(assert (=> b!4765361 (= e!2974278 (allKeysSameHashInMap!2014 (map!11956 (v!47571 (underlying!10026 thiss!42052))) (hashF!12395 thiss!42052)))))

(assert (= (and d!1523386 res!2021055) b!4765360))

(assert (= (and b!4765360 res!2021056) b!4765361))

(declare-fun m!5735850 () Bool)

(assert (=> d!1523386 m!5735850))

(assert (=> b!4765360 m!5735772))

(declare-fun m!5735852 () Bool)

(assert (=> b!4765360 m!5735852))

(assert (=> b!4765361 m!5735772))

(assert (=> b!4765361 m!5735772))

(declare-fun m!5735854 () Bool)

(assert (=> b!4765361 m!5735854))

(assert (=> b!4765300 d!1523386))

(declare-fun d!1523388 () Bool)

(declare-fun map!11958 (LongMapFixedSize!9818) ListLongMap!4661)

(assert (=> d!1523388 (= (map!11956 (v!47571 (underlying!10026 thiss!42052))) (map!11958 (v!47570 (underlying!10025 (v!47571 (underlying!10026 thiss!42052))))))))

(declare-fun bs!1148767 () Bool)

(assert (= bs!1148767 d!1523388))

(declare-fun m!5735856 () Bool)

(assert (=> bs!1148767 m!5735856))

(assert (=> b!4765294 d!1523388))

(declare-fun d!1523390 () Bool)

(declare-fun hash!4554 (Hashable!6570 K!14914) (_ BitVec 64))

(assert (=> d!1523390 (= (hash!4553 (hashF!12395 thiss!42052) key!1776) (hash!4554 (hashF!12395 thiss!42052) key!1776))))

(declare-fun bs!1148768 () Bool)

(assert (= bs!1148768 d!1523390))

(declare-fun m!5735858 () Bool)

(assert (=> bs!1148768 m!5735858))

(assert (=> b!4765294 d!1523390))

(declare-fun d!1523392 () Bool)

(declare-fun e!2974281 () Bool)

(assert (=> d!1523392 e!2974281))

(declare-fun c!812887 () Bool)

(assert (=> d!1523392 (= c!812887 (contains!16781 (v!47571 (underlying!10026 thiss!42052)) lt!1927960))))

(declare-fun lt!1928033 () List!53578)

(declare-fun apply!12600 (LongMapFixedSize!9818 (_ BitVec 64)) List!53578)

(assert (=> d!1523392 (= lt!1928033 (apply!12600 (v!47570 (underlying!10025 (v!47571 (underlying!10026 thiss!42052)))) lt!1927960))))

(assert (=> d!1523392 (valid!3909 (v!47571 (underlying!10026 thiss!42052)))))

(assert (=> d!1523392 (= (apply!12598 (v!47571 (underlying!10026 thiss!42052)) lt!1927960) lt!1928033)))

(declare-fun b!4765366 () Bool)

(declare-fun get!18001 (Option!12642) List!53578)

(assert (=> b!4765366 (= e!2974281 (= lt!1928033 (get!18001 (getValueByKey!2161 (toList!6264 (map!11956 (v!47571 (underlying!10026 thiss!42052)))) lt!1927960))))))

(declare-fun b!4765367 () Bool)

(declare-fun dynLambda!21942 (Int (_ BitVec 64)) List!53578)

(assert (=> b!4765367 (= e!2974281 (= lt!1928033 (dynLambda!21942 (defaultEntry!5327 (v!47570 (underlying!10025 (v!47571 (underlying!10026 thiss!42052))))) lt!1927960)))))

(assert (=> b!4765367 ((_ is LongMap!4909) (v!47571 (underlying!10026 thiss!42052)))))

(assert (= (and d!1523392 c!812887) b!4765366))

(assert (= (and d!1523392 (not c!812887)) b!4765367))

(declare-fun b_lambda!184299 () Bool)

(assert (=> (not b_lambda!184299) (not b!4765367)))

(declare-fun t!360993 () Bool)

(declare-fun tb!257465 () Bool)

(assert (=> (and b!4765296 (= (defaultEntry!5327 (v!47570 (underlying!10025 (v!47571 (underlying!10026 thiss!42052))))) (defaultEntry!5327 (v!47570 (underlying!10025 (v!47571 (underlying!10026 thiss!42052)))))) t!360993) tb!257465))

(assert (=> b!4765367 t!360993))

(declare-fun result!319084 () Bool)

(declare-fun b_and!341281 () Bool)

(assert (= b_and!341277 (and (=> t!360993 result!319084) b_and!341281)))

(declare-fun m!5735860 () Bool)

(assert (=> d!1523392 m!5735860))

(declare-fun m!5735862 () Bool)

(assert (=> d!1523392 m!5735862))

(assert (=> d!1523392 m!5735850))

(assert (=> b!4765366 m!5735772))

(declare-fun m!5735864 () Bool)

(assert (=> b!4765366 m!5735864))

(assert (=> b!4765366 m!5735864))

(declare-fun m!5735866 () Bool)

(assert (=> b!4765366 m!5735866))

(declare-fun m!5735868 () Bool)

(assert (=> b!4765367 m!5735868))

(assert (=> b!4765294 d!1523392))

(declare-fun d!1523394 () Bool)

(declare-fun isEmpty!29271 (Option!12641) Bool)

(assert (=> d!1523394 (= (isDefined!9814 (getPair!633 lt!1927959 key!1776)) (not (isEmpty!29271 (getPair!633 lt!1927959 key!1776))))))

(declare-fun bs!1148769 () Bool)

(assert (= bs!1148769 d!1523394))

(assert (=> bs!1148769 m!5735780))

(declare-fun m!5735870 () Bool)

(assert (=> bs!1148769 m!5735870))

(assert (=> b!4765294 d!1523394))

(declare-fun d!1523396 () Bool)

(declare-fun dynLambda!21943 (Int tuple2!55470) Bool)

(assert (=> d!1523396 (dynLambda!21943 lambda!224117 lt!1927962)))

(declare-fun lt!1928036 () Unit!138153)

(declare-fun choose!33942 (List!53579 Int tuple2!55470) Unit!138153)

(assert (=> d!1523396 (= lt!1928036 (choose!33942 (toList!6264 lt!1927963) lambda!224117 lt!1927962))))

(declare-fun e!2974284 () Bool)

(assert (=> d!1523396 e!2974284))

(declare-fun res!2021059 () Bool)

(assert (=> d!1523396 (=> (not res!2021059) (not e!2974284))))

(assert (=> d!1523396 (= res!2021059 (forall!11867 (toList!6264 lt!1927963) lambda!224117))))

(assert (=> d!1523396 (= (forallContained!3849 (toList!6264 lt!1927963) lambda!224117 lt!1927962) lt!1928036)))

(declare-fun b!4765370 () Bool)

(assert (=> b!4765370 (= e!2974284 (contains!16777 (toList!6264 lt!1927963) lt!1927962))))

(assert (= (and d!1523396 res!2021059) b!4765370))

(declare-fun b_lambda!184301 () Bool)

(assert (=> (not b_lambda!184301) (not d!1523396)))

(declare-fun m!5735872 () Bool)

(assert (=> d!1523396 m!5735872))

(declare-fun m!5735874 () Bool)

(assert (=> d!1523396 m!5735874))

(declare-fun m!5735876 () Bool)

(assert (=> d!1523396 m!5735876))

(assert (=> b!4765370 m!5735784))

(assert (=> b!4765294 d!1523396))

(declare-fun d!1523398 () Bool)

(declare-fun lt!1928039 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9582 (List!53579) (InoxSet tuple2!55470))

(assert (=> d!1523398 (= lt!1928039 (select (content!9582 (toList!6264 lt!1927963)) lt!1927962))))

(declare-fun e!2974289 () Bool)

(assert (=> d!1523398 (= lt!1928039 e!2974289)))

(declare-fun res!2021064 () Bool)

(assert (=> d!1523398 (=> (not res!2021064) (not e!2974289))))

(assert (=> d!1523398 (= res!2021064 ((_ is Cons!53455) (toList!6264 lt!1927963)))))

(assert (=> d!1523398 (= (contains!16777 (toList!6264 lt!1927963) lt!1927962) lt!1928039)))

(declare-fun b!4765375 () Bool)

(declare-fun e!2974290 () Bool)

(assert (=> b!4765375 (= e!2974289 e!2974290)))

(declare-fun res!2021065 () Bool)

(assert (=> b!4765375 (=> res!2021065 e!2974290)))

(assert (=> b!4765375 (= res!2021065 (= (h!59867 (toList!6264 lt!1927963)) lt!1927962))))

(declare-fun b!4765376 () Bool)

(assert (=> b!4765376 (= e!2974290 (contains!16777 (t!360991 (toList!6264 lt!1927963)) lt!1927962))))

(assert (= (and d!1523398 res!2021064) b!4765375))

(assert (= (and b!4765375 (not res!2021065)) b!4765376))

(declare-fun m!5735878 () Bool)

(assert (=> d!1523398 m!5735878))

(declare-fun m!5735880 () Bool)

(assert (=> d!1523398 m!5735880))

(declare-fun m!5735882 () Bool)

(assert (=> b!4765376 m!5735882))

(assert (=> b!4765294 d!1523398))

(declare-fun b!4765393 () Bool)

(declare-fun e!2974305 () Option!12641)

(declare-fun e!2974304 () Option!12641)

(assert (=> b!4765393 (= e!2974305 e!2974304)))

(declare-fun c!812892 () Bool)

(assert (=> b!4765393 (= c!812892 ((_ is Cons!53454) lt!1927959))))

(declare-fun b!4765394 () Bool)

(assert (=> b!4765394 (= e!2974304 (getPair!633 (t!360990 lt!1927959) key!1776))))

(declare-fun b!4765395 () Bool)

(declare-fun e!2974301 () Bool)

(declare-fun e!2974303 () Bool)

(assert (=> b!4765395 (= e!2974301 e!2974303)))

(declare-fun res!2021077 () Bool)

(assert (=> b!4765395 (=> (not res!2021077) (not e!2974303))))

(declare-fun lt!1928042 () Option!12641)

(assert (=> b!4765395 (= res!2021077 (isDefined!9814 lt!1928042))))

(declare-fun b!4765397 () Bool)

(declare-fun e!2974302 () Bool)

(declare-fun containsKey!3656 (List!53578 K!14914) Bool)

(assert (=> b!4765397 (= e!2974302 (not (containsKey!3656 lt!1927959 key!1776)))))

(declare-fun b!4765398 () Bool)

(assert (=> b!4765398 (= e!2974304 None!12640)))

(declare-fun b!4765399 () Bool)

(assert (=> b!4765399 (= e!2974305 (Some!12640 (h!59866 lt!1927959)))))

(declare-fun b!4765400 () Bool)

(declare-fun res!2021076 () Bool)

(assert (=> b!4765400 (=> (not res!2021076) (not e!2974303))))

(declare-fun get!18002 (Option!12641) tuple2!55468)

(assert (=> b!4765400 (= res!2021076 (= (_1!31028 (get!18002 lt!1928042)) key!1776))))

(declare-fun d!1523400 () Bool)

(assert (=> d!1523400 e!2974301))

(declare-fun res!2021075 () Bool)

(assert (=> d!1523400 (=> res!2021075 e!2974301)))

(assert (=> d!1523400 (= res!2021075 e!2974302)))

(declare-fun res!2021074 () Bool)

(assert (=> d!1523400 (=> (not res!2021074) (not e!2974302))))

(assert (=> d!1523400 (= res!2021074 (isEmpty!29271 lt!1928042))))

(assert (=> d!1523400 (= lt!1928042 e!2974305)))

(declare-fun c!812893 () Bool)

(assert (=> d!1523400 (= c!812893 (and ((_ is Cons!53454) lt!1927959) (= (_1!31028 (h!59866 lt!1927959)) key!1776)))))

(declare-fun noDuplicateKeys!2249 (List!53578) Bool)

(assert (=> d!1523400 (noDuplicateKeys!2249 lt!1927959)))

(assert (=> d!1523400 (= (getPair!633 lt!1927959 key!1776) lt!1928042)))

(declare-fun b!4765396 () Bool)

(declare-fun contains!16782 (List!53578 tuple2!55468) Bool)

(assert (=> b!4765396 (= e!2974303 (contains!16782 lt!1927959 (get!18002 lt!1928042)))))

(assert (= (and d!1523400 c!812893) b!4765399))

(assert (= (and d!1523400 (not c!812893)) b!4765393))

(assert (= (and b!4765393 c!812892) b!4765394))

(assert (= (and b!4765393 (not c!812892)) b!4765398))

(assert (= (and d!1523400 res!2021074) b!4765397))

(assert (= (and d!1523400 (not res!2021075)) b!4765395))

(assert (= (and b!4765395 res!2021077) b!4765400))

(assert (= (and b!4765400 res!2021076) b!4765396))

(declare-fun m!5735884 () Bool)

(assert (=> b!4765394 m!5735884))

(declare-fun m!5735886 () Bool)

(assert (=> b!4765395 m!5735886))

(declare-fun m!5735888 () Bool)

(assert (=> b!4765397 m!5735888))

(declare-fun m!5735890 () Bool)

(assert (=> d!1523400 m!5735890))

(declare-fun m!5735892 () Bool)

(assert (=> d!1523400 m!5735892))

(declare-fun m!5735894 () Bool)

(assert (=> b!4765400 m!5735894))

(assert (=> b!4765396 m!5735894))

(assert (=> b!4765396 m!5735894))

(declare-fun m!5735896 () Bool)

(assert (=> b!4765396 m!5735896))

(assert (=> b!4765294 d!1523400))

(declare-fun d!1523402 () Bool)

(assert (=> d!1523402 (= (array_inv!5759 (_keys!5251 (v!47570 (underlying!10025 (v!47571 (underlying!10026 thiss!42052)))))) (bvsge (size!36233 (_keys!5251 (v!47570 (underlying!10025 (v!47571 (underlying!10026 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4765296 d!1523402))

(declare-fun d!1523404 () Bool)

(assert (=> d!1523404 (= (array_inv!5760 (_values!5222 (v!47570 (underlying!10025 (v!47571 (underlying!10026 thiss!42052)))))) (bvsge (size!36234 (_values!5222 (v!47570 (underlying!10025 (v!47571 (underlying!10026 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4765296 d!1523404))

(declare-fun e!2974308 () Bool)

(declare-fun tp_is_empty!32405 () Bool)

(declare-fun b!4765405 () Bool)

(declare-fun tp!1355079 () Bool)

(assert (=> b!4765405 (= e!2974308 (and tp_is_empty!32403 tp_is_empty!32405 tp!1355079))))

(assert (=> b!4765304 (= tp!1355073 e!2974308)))

(assert (= (and b!4765304 ((_ is Cons!53454) mapDefault!21794)) b!4765405))

(declare-fun tp!1355080 () Bool)

(declare-fun e!2974309 () Bool)

(declare-fun b!4765406 () Bool)

(assert (=> b!4765406 (= e!2974309 (and tp_is_empty!32403 tp_is_empty!32405 tp!1355080))))

(assert (=> b!4765296 (= tp!1355076 e!2974309)))

(assert (= (and b!4765296 ((_ is Cons!53454) (zeroValue!5197 (v!47570 (underlying!10025 (v!47571 (underlying!10026 thiss!42052))))))) b!4765406))

(declare-fun b!4765407 () Bool)

(declare-fun e!2974310 () Bool)

(declare-fun tp!1355081 () Bool)

(assert (=> b!4765407 (= e!2974310 (and tp_is_empty!32403 tp_is_empty!32405 tp!1355081))))

(assert (=> b!4765296 (= tp!1355074 e!2974310)))

(assert (= (and b!4765296 ((_ is Cons!53454) (minValue!5197 (v!47570 (underlying!10025 (v!47571 (underlying!10026 thiss!42052))))))) b!4765407))

(declare-fun mapNonEmpty!21797 () Bool)

(declare-fun mapRes!21797 () Bool)

(declare-fun tp!1355089 () Bool)

(declare-fun e!2974316 () Bool)

(assert (=> mapNonEmpty!21797 (= mapRes!21797 (and tp!1355089 e!2974316))))

(declare-fun mapValue!21797 () List!53578)

(declare-fun mapKey!21797 () (_ BitVec 32))

(declare-fun mapRest!21797 () (Array (_ BitVec 32) List!53578))

(assert (=> mapNonEmpty!21797 (= mapRest!21794 (store mapRest!21797 mapKey!21797 mapValue!21797))))

(declare-fun mapIsEmpty!21797 () Bool)

(assert (=> mapIsEmpty!21797 mapRes!21797))

(declare-fun tp!1355088 () Bool)

(declare-fun b!4765414 () Bool)

(assert (=> b!4765414 (= e!2974316 (and tp_is_empty!32403 tp_is_empty!32405 tp!1355088))))

(declare-fun e!2974315 () Bool)

(declare-fun b!4765415 () Bool)

(declare-fun tp!1355090 () Bool)

(assert (=> b!4765415 (= e!2974315 (and tp_is_empty!32403 tp_is_empty!32405 tp!1355090))))

(declare-fun condMapEmpty!21797 () Bool)

(declare-fun mapDefault!21797 () List!53578)

(assert (=> mapNonEmpty!21794 (= condMapEmpty!21797 (= mapRest!21794 ((as const (Array (_ BitVec 32) List!53578)) mapDefault!21797)))))

(assert (=> mapNonEmpty!21794 (= tp!1355071 (and e!2974315 mapRes!21797))))

(assert (= (and mapNonEmpty!21794 condMapEmpty!21797) mapIsEmpty!21797))

(assert (= (and mapNonEmpty!21794 (not condMapEmpty!21797)) mapNonEmpty!21797))

(assert (= (and mapNonEmpty!21797 ((_ is Cons!53454) mapValue!21797)) b!4765414))

(assert (= (and mapNonEmpty!21794 ((_ is Cons!53454) mapDefault!21797)) b!4765415))

(declare-fun m!5735898 () Bool)

(assert (=> mapNonEmpty!21797 m!5735898))

(declare-fun b!4765416 () Bool)

(declare-fun tp!1355091 () Bool)

(declare-fun e!2974317 () Bool)

(assert (=> b!4765416 (= e!2974317 (and tp_is_empty!32403 tp_is_empty!32405 tp!1355091))))

(assert (=> mapNonEmpty!21794 (= tp!1355075 e!2974317)))

(assert (= (and mapNonEmpty!21794 ((_ is Cons!53454) mapValue!21794)) b!4765416))

(declare-fun b_lambda!184303 () Bool)

(assert (= b_lambda!184299 (or (and b!4765296 b_free!129579) b_lambda!184303)))

(declare-fun b_lambda!184305 () Bool)

(assert (= b_lambda!184301 (or b!4765294 b_lambda!184305)))

(declare-fun bs!1148770 () Bool)

(declare-fun d!1523406 () Bool)

(assert (= bs!1148770 (and d!1523406 b!4765294)))

(assert (=> bs!1148770 (= (dynLambda!21943 lambda!224117 lt!1927962) (noDuplicateKeys!2249 (_2!31029 lt!1927962)))))

(declare-fun m!5735900 () Bool)

(assert (=> bs!1148770 m!5735900))

(assert (=> d!1523396 d!1523406))

(check-sat (not b!4765394) (not b!4765354) (not tb!257465) (not b!4765406) (not b!4765414) (not b!4765397) (not b!4765307) (not b!4765361) (not d!1523398) (not bm!334120) (not b!4765318) (not b_lambda!184305) b_and!341279 (not b!4765370) (not d!1523378) (not b!4765355) (not b!4765415) (not b!4765351) (not bm!334123) (not mapNonEmpty!21797) (not bm!334122) (not b!4765396) (not bs!1148770) (not d!1523396) (not b_next!130371) b_and!341281 (not bm!334121) (not b!4765416) (not b!4765376) tp_is_empty!32403 (not b!4765345) (not d!1523384) (not bm!334118) (not d!1523394) (not d!1523392) (not b_lambda!184303) tp_is_empty!32405 (not b!4765400) (not d!1523382) (not b!4765395) (not b!4765322) (not d!1523400) (not d!1523388) (not d!1523386) (not b!4765407) (not b!4765366) (not b!4765360) (not b!4765405) (not d!1523390) (not d!1523376) (not bm!334119) (not b!4765352) (not b_next!130369))
(check-sat b_and!341279 b_and!341281 (not b_next!130371) (not b_next!130369))
