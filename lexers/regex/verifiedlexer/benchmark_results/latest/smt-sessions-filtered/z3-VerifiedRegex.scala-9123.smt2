; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487360 () Bool)

(assert start!487360)

(declare-fun b!4764981 () Bool)

(declare-fun b_free!129563 () Bool)

(declare-fun b_next!130353 () Bool)

(assert (=> b!4764981 (= b_free!129563 (not b_next!130353))))

(declare-fun tp!1354957 () Bool)

(declare-fun b_and!341257 () Bool)

(assert (=> b!4764981 (= tp!1354957 b_and!341257)))

(declare-fun b!4764984 () Bool)

(declare-fun b_free!129565 () Bool)

(declare-fun b_next!130355 () Bool)

(assert (=> b!4764984 (= b_free!129565 (not b_next!130355))))

(declare-fun tp!1354961 () Bool)

(declare-fun b_and!341259 () Bool)

(assert (=> b!4764984 (= tp!1354961 b_and!341259)))

(declare-fun b!4764979 () Bool)

(declare-fun e!2973999 () Bool)

(declare-fun e!2974008 () Bool)

(assert (=> b!4764979 (= e!2973999 e!2974008)))

(declare-fun res!2020931 () Bool)

(assert (=> b!4764979 (=> (not res!2020931) (not e!2974008))))

(declare-datatypes ((K!14904 0))(
  ( (K!14905 (val!20229 Int)) )
))
(declare-datatypes ((V!15150 0))(
  ( (V!15151 (val!20230 Int)) )
))
(declare-datatypes ((tuple2!55456 0))(
  ( (tuple2!55457 (_1!31022 K!14904) (_2!31022 V!15150)) )
))
(declare-datatypes ((array!17924 0))(
  ( (array!17925 (arr!7995 (Array (_ BitVec 32) (_ BitVec 64))) (size!36225 (_ BitVec 32))) )
))
(declare-datatypes ((List!53572 0))(
  ( (Nil!53448) (Cons!53448 (h!59860 tuple2!55456) (t!360980 List!53572)) )
))
(declare-datatypes ((array!17926 0))(
  ( (array!17927 (arr!7996 (Array (_ BitVec 32) List!53572)) (size!36226 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6566 0))(
  ( (HashableExt!6565 (__x!32463 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9810 0))(
  ( (LongMapFixedSize!9811 (defaultEntry!5323 Int) (mask!14653 (_ BitVec 32)) (extraKeys!5180 (_ BitVec 32)) (zeroValue!5193 List!53572) (minValue!5193 List!53572) (_size!9835 (_ BitVec 32)) (_keys!5247 array!17924) (_values!5218 array!17926) (_vacant!4970 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19385 0))(
  ( (Cell!19386 (v!47553 LongMapFixedSize!9810)) )
))
(declare-datatypes ((MutLongMap!4905 0))(
  ( (LongMap!4905 (underlying!10017 Cell!19385)) (MutLongMapExt!4904 (__x!32464 Int)) )
))
(declare-datatypes ((Cell!19387 0))(
  ( (Cell!19388 (v!47554 MutLongMap!4905)) )
))
(declare-datatypes ((MutableMap!4789 0))(
  ( (MutableMapExt!4788 (__x!32465 Int)) (HashMap!4789 (underlying!10018 Cell!19387) (hashF!12391 Hashable!6566) (_size!9836 (_ BitVec 32)) (defaultValue!4960 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4789)

(get-info :version)

(assert (=> b!4764979 (= res!2020931 ((_ is LongMap!4905) (v!47554 (underlying!10018 thiss!42052))))))

(declare-datatypes ((tuple2!55458 0))(
  ( (tuple2!55459 (_1!31023 (_ BitVec 64)) (_2!31023 List!53572)) )
))
(declare-fun lt!1927698 () tuple2!55458)

(declare-fun lambda!224093 () Int)

(declare-datatypes ((Unit!138135 0))(
  ( (Unit!138136) )
))
(declare-fun lt!1927700 () Unit!138135)

(declare-datatypes ((List!53573 0))(
  ( (Nil!53449) (Cons!53449 (h!59861 tuple2!55458) (t!360981 List!53573)) )
))
(declare-datatypes ((ListLongMap!4657 0))(
  ( (ListLongMap!4658 (toList!6260 List!53573)) )
))
(declare-fun lt!1927701 () ListLongMap!4657)

(declare-fun forallContained!3847 (List!53573 Int tuple2!55458) Unit!138135)

(assert (=> b!4764979 (= lt!1927700 (forallContained!3847 (toList!6260 lt!1927701) lambda!224093 lt!1927698))))

(declare-fun lt!1927704 () Unit!138135)

(declare-fun e!2974004 () Unit!138135)

(assert (=> b!4764979 (= lt!1927704 e!2974004)))

(declare-fun c!812812 () Bool)

(declare-fun contains!16767 (List!53573 tuple2!55458) Bool)

(assert (=> b!4764979 (= c!812812 (not (contains!16767 (toList!6260 lt!1927701) lt!1927698)))))

(declare-fun lt!1927703 () (_ BitVec 64))

(declare-fun lt!1927706 () List!53572)

(assert (=> b!4764979 (= lt!1927698 (tuple2!55459 lt!1927703 lt!1927706))))

(declare-fun apply!12592 (MutLongMap!4905 (_ BitVec 64)) List!53572)

(assert (=> b!4764979 (= lt!1927706 (apply!12592 (v!47554 (underlying!10018 thiss!42052)) lt!1927703))))

(declare-fun map!11948 (MutLongMap!4905) ListLongMap!4657)

(assert (=> b!4764979 (= lt!1927701 (map!11948 (v!47554 (underlying!10018 thiss!42052))))))

(declare-fun key!1776 () K!14904)

(declare-fun hash!4549 (Hashable!6566 K!14904) (_ BitVec 64))

(assert (=> b!4764979 (= lt!1927703 (hash!4549 (hashF!12391 thiss!42052) key!1776))))

(declare-fun b!4764980 () Bool)

(declare-fun e!2974002 () Bool)

(declare-fun e!2974007 () Bool)

(declare-fun lt!1927699 () MutLongMap!4905)

(assert (=> b!4764980 (= e!2974002 (and e!2974007 ((_ is LongMap!4905) lt!1927699)))))

(assert (=> b!4764980 (= lt!1927699 (v!47554 (underlying!10018 thiss!42052)))))

(declare-fun tp!1354958 () Bool)

(declare-fun e!2974001 () Bool)

(declare-fun e!2974003 () Bool)

(declare-fun tp!1354962 () Bool)

(declare-fun array_inv!5753 (array!17924) Bool)

(declare-fun array_inv!5754 (array!17926) Bool)

(assert (=> b!4764981 (= e!2974001 (and tp!1354957 tp!1354962 tp!1354958 (array_inv!5753 (_keys!5247 (v!47553 (underlying!10017 (v!47554 (underlying!10018 thiss!42052)))))) (array_inv!5754 (_values!5218 (v!47553 (underlying!10017 (v!47554 (underlying!10018 thiss!42052)))))) e!2974003))))

(declare-fun res!2020933 () Bool)

(assert (=> start!487360 (=> (not res!2020933) (not e!2973999))))

(assert (=> start!487360 (= res!2020933 ((_ is HashMap!4789) thiss!42052))))

(assert (=> start!487360 e!2973999))

(declare-fun e!2974000 () Bool)

(assert (=> start!487360 e!2974000))

(declare-fun tp_is_empty!32391 () Bool)

(assert (=> start!487360 tp_is_empty!32391))

(declare-fun b!4764982 () Bool)

(declare-fun res!2020932 () Bool)

(assert (=> b!4764982 (=> (not res!2020932) (not e!2973999))))

(declare-fun contains!16768 (MutableMap!4789 K!14904) Bool)

(assert (=> b!4764982 (= res!2020932 (contains!16768 thiss!42052 key!1776))))

(declare-fun b!4764983 () Bool)

(declare-fun e!2974006 () Bool)

(assert (=> b!4764983 (= e!2974007 e!2974006)))

(assert (=> b!4764984 (= e!2974000 (and e!2974002 tp!1354961))))

(declare-fun b!4764985 () Bool)

(declare-fun tp!1354956 () Bool)

(declare-fun mapRes!21776 () Bool)

(assert (=> b!4764985 (= e!2974003 (and tp!1354956 mapRes!21776))))

(declare-fun condMapEmpty!21776 () Bool)

(declare-fun mapDefault!21776 () List!53572)

(assert (=> b!4764985 (= condMapEmpty!21776 (= (arr!7996 (_values!5218 (v!47553 (underlying!10017 (v!47554 (underlying!10018 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53572)) mapDefault!21776)))))

(declare-fun b!4764986 () Bool)

(declare-fun Unit!138137 () Unit!138135)

(assert (=> b!4764986 (= e!2974004 Unit!138137)))

(declare-fun lt!1927702 () Unit!138135)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1973 (List!53573 (_ BitVec 64)) Unit!138135)

(assert (=> b!4764986 (= lt!1927702 (lemmaContainsKeyImpliesGetValueByKeyDefined!1973 (toList!6260 lt!1927701) lt!1927703))))

(declare-datatypes ((Option!12637 0))(
  ( (None!12636) (Some!12636 (v!47555 List!53572)) )
))
(declare-fun isDefined!9810 (Option!12637) Bool)

(declare-fun getValueByKey!2159 (List!53573 (_ BitVec 64)) Option!12637)

(assert (=> b!4764986 (isDefined!9810 (getValueByKey!2159 (toList!6260 lt!1927701) lt!1927703))))

(declare-fun lt!1927705 () Unit!138135)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!917 (List!53573 (_ BitVec 64) List!53572) Unit!138135)

(assert (=> b!4764986 (= lt!1927705 (lemmaGetValueByKeyImpliesContainsTuple!917 (toList!6260 lt!1927701) lt!1927703 lt!1927706))))

(assert (=> b!4764986 false))

(declare-fun mapNonEmpty!21776 () Bool)

(declare-fun tp!1354959 () Bool)

(declare-fun tp!1354960 () Bool)

(assert (=> mapNonEmpty!21776 (= mapRes!21776 (and tp!1354959 tp!1354960))))

(declare-fun mapValue!21776 () List!53572)

(declare-fun mapRest!21776 () (Array (_ BitVec 32) List!53572))

(declare-fun mapKey!21776 () (_ BitVec 32))

(assert (=> mapNonEmpty!21776 (= (arr!7996 (_values!5218 (v!47553 (underlying!10017 (v!47554 (underlying!10018 thiss!42052)))))) (store mapRest!21776 mapKey!21776 mapValue!21776))))

(declare-fun b!4764987 () Bool)

(declare-fun Unit!138138 () Unit!138135)

(assert (=> b!4764987 (= e!2974004 Unit!138138)))

(declare-fun b!4764988 () Bool)

(declare-fun res!2020930 () Bool)

(assert (=> b!4764988 (=> (not res!2020930) (not e!2973999))))

(declare-fun valid!3903 (MutableMap!4789) Bool)

(assert (=> b!4764988 (= res!2020930 (valid!3903 thiss!42052))))

(declare-fun b!4764989 () Bool)

(assert (=> b!4764989 (= e!2974006 e!2974001)))

(declare-fun b!4764990 () Bool)

(declare-fun valid!3904 (MutLongMap!4905) Bool)

(assert (=> b!4764990 (= e!2974008 (not (valid!3904 (v!47554 (underlying!10018 thiss!42052)))))))

(declare-fun mapIsEmpty!21776 () Bool)

(assert (=> mapIsEmpty!21776 mapRes!21776))

(assert (= (and start!487360 res!2020933) b!4764988))

(assert (= (and b!4764988 res!2020930) b!4764982))

(assert (= (and b!4764982 res!2020932) b!4764979))

(assert (= (and b!4764979 c!812812) b!4764986))

(assert (= (and b!4764979 (not c!812812)) b!4764987))

(assert (= (and b!4764979 res!2020931) b!4764990))

(assert (= (and b!4764985 condMapEmpty!21776) mapIsEmpty!21776))

(assert (= (and b!4764985 (not condMapEmpty!21776)) mapNonEmpty!21776))

(assert (= b!4764981 b!4764985))

(assert (= b!4764989 b!4764981))

(assert (= b!4764983 b!4764989))

(assert (= (and b!4764980 ((_ is LongMap!4905) (v!47554 (underlying!10018 thiss!42052)))) b!4764983))

(assert (= b!4764984 b!4764980))

(assert (= (and start!487360 ((_ is HashMap!4789) thiss!42052)) b!4764984))

(declare-fun m!5735428 () Bool)

(assert (=> b!4764990 m!5735428))

(declare-fun m!5735430 () Bool)

(assert (=> b!4764982 m!5735430))

(declare-fun m!5735432 () Bool)

(assert (=> b!4764988 m!5735432))

(declare-fun m!5735434 () Bool)

(assert (=> b!4764979 m!5735434))

(declare-fun m!5735436 () Bool)

(assert (=> b!4764979 m!5735436))

(declare-fun m!5735438 () Bool)

(assert (=> b!4764979 m!5735438))

(declare-fun m!5735440 () Bool)

(assert (=> b!4764979 m!5735440))

(declare-fun m!5735442 () Bool)

(assert (=> b!4764979 m!5735442))

(declare-fun m!5735444 () Bool)

(assert (=> b!4764981 m!5735444))

(declare-fun m!5735446 () Bool)

(assert (=> b!4764981 m!5735446))

(declare-fun m!5735448 () Bool)

(assert (=> mapNonEmpty!21776 m!5735448))

(declare-fun m!5735450 () Bool)

(assert (=> b!4764986 m!5735450))

(declare-fun m!5735452 () Bool)

(assert (=> b!4764986 m!5735452))

(assert (=> b!4764986 m!5735452))

(declare-fun m!5735454 () Bool)

(assert (=> b!4764986 m!5735454))

(declare-fun m!5735456 () Bool)

(assert (=> b!4764986 m!5735456))

(check-sat (not b!4764986) b_and!341259 (not b!4764979) (not b!4764982) (not b_next!130353) (not b!4764985) tp_is_empty!32391 (not mapNonEmpty!21776) b_and!341257 (not b_next!130355) (not b!4764988) (not b!4764981) (not b!4764990))
(check-sat b_and!341259 b_and!341257 (not b_next!130355) (not b_next!130353))
(get-model)

(declare-fun bs!1148744 () Bool)

(declare-fun b!4764995 () Bool)

(assert (= bs!1148744 (and b!4764995 b!4764979)))

(declare-fun lambda!224096 () Int)

(assert (=> bs!1148744 (= lambda!224096 lambda!224093)))

(declare-fun d!1523314 () Bool)

(declare-fun res!2020938 () Bool)

(declare-fun e!2974011 () Bool)

(assert (=> d!1523314 (=> (not res!2020938) (not e!2974011))))

(assert (=> d!1523314 (= res!2020938 (valid!3904 (v!47554 (underlying!10018 thiss!42052))))))

(assert (=> d!1523314 (= (valid!3903 thiss!42052) e!2974011)))

(declare-fun res!2020939 () Bool)

(assert (=> b!4764995 (=> (not res!2020939) (not e!2974011))))

(declare-fun forall!11865 (List!53573 Int) Bool)

(assert (=> b!4764995 (= res!2020939 (forall!11865 (toList!6260 (map!11948 (v!47554 (underlying!10018 thiss!42052)))) lambda!224096))))

(declare-fun b!4764996 () Bool)

(declare-fun allKeysSameHashInMap!2012 (ListLongMap!4657 Hashable!6566) Bool)

(assert (=> b!4764996 (= e!2974011 (allKeysSameHashInMap!2012 (map!11948 (v!47554 (underlying!10018 thiss!42052))) (hashF!12391 thiss!42052)))))

(assert (= (and d!1523314 res!2020938) b!4764995))

(assert (= (and b!4764995 res!2020939) b!4764996))

(assert (=> d!1523314 m!5735428))

(assert (=> b!4764995 m!5735436))

(declare-fun m!5735458 () Bool)

(assert (=> b!4764995 m!5735458))

(assert (=> b!4764996 m!5735436))

(assert (=> b!4764996 m!5735436))

(declare-fun m!5735460 () Bool)

(assert (=> b!4764996 m!5735460))

(assert (=> b!4764988 d!1523314))

(declare-fun bs!1148745 () Bool)

(declare-fun b!4765022 () Bool)

(assert (= bs!1148745 (and b!4765022 b!4764979)))

(declare-fun lambda!224099 () Int)

(assert (=> bs!1148745 (= lambda!224099 lambda!224093)))

(declare-fun bs!1148746 () Bool)

(assert (= bs!1148746 (and b!4765022 b!4764995)))

(assert (=> bs!1148746 (= lambda!224099 lambda!224096)))

(declare-fun bm!334082 () Bool)

(declare-fun call!334089 () ListLongMap!4657)

(assert (=> bm!334082 (= call!334089 (map!11948 (v!47554 (underlying!10018 thiss!42052))))))

(declare-fun bm!334083 () Bool)

(declare-fun call!334092 () (_ BitVec 64))

(assert (=> bm!334083 (= call!334092 (hash!4549 (hashF!12391 thiss!42052) key!1776))))

(declare-fun b!4765019 () Bool)

(assert (=> b!4765019 false))

(declare-fun lt!1927753 () Unit!138135)

(declare-fun lt!1927756 () Unit!138135)

(assert (=> b!4765019 (= lt!1927753 lt!1927756)))

(declare-fun lt!1927751 () ListLongMap!4657)

(declare-datatypes ((ListMap!5757 0))(
  ( (ListMap!5758 (toList!6261 List!53572)) )
))
(declare-fun contains!16769 (ListMap!5757 K!14904) Bool)

(declare-fun extractMap!2131 (List!53573) ListMap!5757)

(assert (=> b!4765019 (contains!16769 (extractMap!2131 (toList!6260 lt!1927751)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!195 (ListLongMap!4657 K!14904 Hashable!6566) Unit!138135)

(assert (=> b!4765019 (= lt!1927756 (lemmaInLongMapThenInGenericMap!195 lt!1927751 key!1776 (hashF!12391 thiss!42052)))))

(assert (=> b!4765019 (= lt!1927751 call!334089)))

(declare-fun e!2974031 () Unit!138135)

(declare-fun Unit!138139 () Unit!138135)

(assert (=> b!4765019 (= e!2974031 Unit!138139)))

(declare-fun bm!334084 () Bool)

(declare-fun call!334087 () Bool)

(declare-datatypes ((Option!12638 0))(
  ( (None!12637) (Some!12637 (v!47558 tuple2!55456)) )
))
(declare-fun call!334091 () Option!12638)

(declare-fun isDefined!9811 (Option!12638) Bool)

(assert (=> bm!334084 (= call!334087 (isDefined!9811 call!334091))))

(declare-fun b!4765020 () Bool)

(declare-fun Unit!138140 () Unit!138135)

(assert (=> b!4765020 (= e!2974031 Unit!138140)))

(declare-fun d!1523316 () Bool)

(declare-fun lt!1927765 () Bool)

(declare-fun map!11949 (MutableMap!4789) ListMap!5757)

(assert (=> d!1523316 (= lt!1927765 (contains!16769 (map!11949 thiss!42052) key!1776))))

(declare-fun e!2974026 () Bool)

(assert (=> d!1523316 (= lt!1927765 e!2974026)))

(declare-fun res!2020948 () Bool)

(assert (=> d!1523316 (=> (not res!2020948) (not e!2974026))))

(declare-fun lt!1927764 () (_ BitVec 64))

(declare-fun contains!16770 (MutLongMap!4905 (_ BitVec 64)) Bool)

(assert (=> d!1523316 (= res!2020948 (contains!16770 (v!47554 (underlying!10018 thiss!42052)) lt!1927764))))

(declare-fun lt!1927762 () Unit!138135)

(declare-fun e!2974027 () Unit!138135)

(assert (=> d!1523316 (= lt!1927762 e!2974027)))

(declare-fun c!812821 () Bool)

(assert (=> d!1523316 (= c!812821 (contains!16769 (extractMap!2131 (toList!6260 (map!11948 (v!47554 (underlying!10018 thiss!42052))))) key!1776))))

(declare-fun lt!1927760 () Unit!138135)

(declare-fun e!2974028 () Unit!138135)

(assert (=> d!1523316 (= lt!1927760 e!2974028)))

(declare-fun c!812824 () Bool)

(assert (=> d!1523316 (= c!812824 (contains!16770 (v!47554 (underlying!10018 thiss!42052)) lt!1927764))))

(assert (=> d!1523316 (= lt!1927764 (hash!4549 (hashF!12391 thiss!42052) key!1776))))

(assert (=> d!1523316 (valid!3903 thiss!42052)))

(assert (=> d!1523316 (= (contains!16768 thiss!42052 key!1776) lt!1927765)))

(declare-fun b!4765021 () Bool)

(declare-fun getPair!631 (List!53572 K!14904) Option!12638)

(assert (=> b!4765021 (= e!2974026 (isDefined!9811 (getPair!631 (apply!12592 (v!47554 (underlying!10018 thiss!42052)) lt!1927764) key!1776)))))

(declare-fun call!334090 () Bool)

(declare-fun lt!1927758 () ListLongMap!4657)

(declare-fun bm!334085 () Bool)

(declare-fun contains!16771 (ListLongMap!4657 (_ BitVec 64)) Bool)

(assert (=> bm!334085 (= call!334090 (contains!16771 (ite c!812821 lt!1927758 call!334089) call!334092))))

(declare-fun bm!334086 () Bool)

(declare-fun call!334088 () List!53572)

(declare-fun apply!12593 (ListLongMap!4657 (_ BitVec 64)) List!53572)

(assert (=> bm!334086 (= call!334088 (apply!12593 (ite c!812821 lt!1927758 call!334089) call!334092))))

(assert (=> b!4765022 (= e!2974028 (forallContained!3847 (toList!6260 (map!11948 (v!47554 (underlying!10018 thiss!42052)))) lambda!224099 (tuple2!55459 lt!1927764 (apply!12592 (v!47554 (underlying!10018 thiss!42052)) lt!1927764))))))

(declare-fun c!812823 () Bool)

(assert (=> b!4765022 (= c!812823 (not (contains!16767 (toList!6260 (map!11948 (v!47554 (underlying!10018 thiss!42052)))) (tuple2!55459 lt!1927764 (apply!12592 (v!47554 (underlying!10018 thiss!42052)) lt!1927764)))))))

(declare-fun lt!1927754 () Unit!138135)

(declare-fun e!2974032 () Unit!138135)

(assert (=> b!4765022 (= lt!1927754 e!2974032)))

(declare-fun b!4765023 () Bool)

(declare-fun lt!1927749 () Unit!138135)

(assert (=> b!4765023 (= e!2974027 lt!1927749)))

(assert (=> b!4765023 (= lt!1927758 call!334089)))

(declare-fun lemmaInGenericMapThenInLongMap!195 (ListLongMap!4657 K!14904 Hashable!6566) Unit!138135)

(assert (=> b!4765023 (= lt!1927749 (lemmaInGenericMapThenInLongMap!195 lt!1927758 key!1776 (hashF!12391 thiss!42052)))))

(declare-fun res!2020947 () Bool)

(assert (=> b!4765023 (= res!2020947 call!334090)))

(declare-fun e!2974030 () Bool)

(assert (=> b!4765023 (=> (not res!2020947) (not e!2974030))))

(assert (=> b!4765023 e!2974030))

(declare-fun b!4765024 () Bool)

(assert (=> b!4765024 (= e!2974027 e!2974031)))

(declare-fun res!2020946 () Bool)

(assert (=> b!4765024 (= res!2020946 call!334090)))

(declare-fun e!2974029 () Bool)

(assert (=> b!4765024 (=> (not res!2020946) (not e!2974029))))

(declare-fun c!812822 () Bool)

(assert (=> b!4765024 (= c!812822 e!2974029)))

(declare-fun b!4765025 () Bool)

(declare-fun Unit!138141 () Unit!138135)

(assert (=> b!4765025 (= e!2974028 Unit!138141)))

(declare-fun b!4765026 () Bool)

(declare-fun Unit!138142 () Unit!138135)

(assert (=> b!4765026 (= e!2974032 Unit!138142)))

(declare-fun b!4765027 () Bool)

(assert (=> b!4765027 (= e!2974030 call!334087)))

(declare-fun bm!334087 () Bool)

(assert (=> bm!334087 (= call!334091 (getPair!631 call!334088 key!1776))))

(declare-fun b!4765028 () Bool)

(assert (=> b!4765028 (= e!2974029 call!334087)))

(declare-fun b!4765029 () Bool)

(assert (=> b!4765029 false))

(declare-fun lt!1927750 () Unit!138135)

(declare-fun lt!1927755 () Unit!138135)

(assert (=> b!4765029 (= lt!1927750 lt!1927755)))

(declare-fun lt!1927761 () List!53573)

(declare-fun lt!1927763 () List!53572)

(assert (=> b!4765029 (contains!16767 lt!1927761 (tuple2!55459 lt!1927764 lt!1927763))))

(assert (=> b!4765029 (= lt!1927755 (lemmaGetValueByKeyImpliesContainsTuple!917 lt!1927761 lt!1927764 lt!1927763))))

(assert (=> b!4765029 (= lt!1927763 (apply!12592 (v!47554 (underlying!10018 thiss!42052)) lt!1927764))))

(assert (=> b!4765029 (= lt!1927761 (toList!6260 (map!11948 (v!47554 (underlying!10018 thiss!42052)))))))

(declare-fun lt!1927752 () Unit!138135)

(declare-fun lt!1927748 () Unit!138135)

(assert (=> b!4765029 (= lt!1927752 lt!1927748)))

(declare-fun lt!1927766 () List!53573)

(assert (=> b!4765029 (isDefined!9810 (getValueByKey!2159 lt!1927766 lt!1927764))))

(assert (=> b!4765029 (= lt!1927748 (lemmaContainsKeyImpliesGetValueByKeyDefined!1973 lt!1927766 lt!1927764))))

(assert (=> b!4765029 (= lt!1927766 (toList!6260 (map!11948 (v!47554 (underlying!10018 thiss!42052)))))))

(declare-fun lt!1927757 () Unit!138135)

(declare-fun lt!1927747 () Unit!138135)

(assert (=> b!4765029 (= lt!1927757 lt!1927747)))

(declare-fun lt!1927759 () List!53573)

(declare-fun containsKey!3652 (List!53573 (_ BitVec 64)) Bool)

(assert (=> b!4765029 (containsKey!3652 lt!1927759 lt!1927764)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!196 (List!53573 (_ BitVec 64)) Unit!138135)

(assert (=> b!4765029 (= lt!1927747 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!196 lt!1927759 lt!1927764))))

(assert (=> b!4765029 (= lt!1927759 (toList!6260 (map!11948 (v!47554 (underlying!10018 thiss!42052)))))))

(declare-fun Unit!138143 () Unit!138135)

(assert (=> b!4765029 (= e!2974032 Unit!138143)))

(assert (= (and d!1523316 c!812824) b!4765022))

(assert (= (and d!1523316 (not c!812824)) b!4765025))

(assert (= (and b!4765022 c!812823) b!4765029))

(assert (= (and b!4765022 (not c!812823)) b!4765026))

(assert (= (and d!1523316 c!812821) b!4765023))

(assert (= (and d!1523316 (not c!812821)) b!4765024))

(assert (= (and b!4765023 res!2020947) b!4765027))

(assert (= (and b!4765024 res!2020946) b!4765028))

(assert (= (and b!4765024 c!812822) b!4765019))

(assert (= (and b!4765024 (not c!812822)) b!4765020))

(assert (= (or b!4765023 b!4765024 b!4765028 b!4765019) bm!334082))

(assert (= (or b!4765023 b!4765027 b!4765024 b!4765028) bm!334083))

(assert (= (or b!4765023 b!4765024) bm!334085))

(assert (= (or b!4765027 b!4765028) bm!334086))

(assert (= (or b!4765027 b!4765028) bm!334087))

(assert (= (or b!4765027 b!4765028) bm!334084))

(assert (= (and d!1523316 res!2020948) b!4765021))

(assert (=> b!4765029 m!5735436))

(declare-fun m!5735462 () Bool)

(assert (=> b!4765029 m!5735462))

(declare-fun m!5735464 () Bool)

(assert (=> b!4765029 m!5735464))

(declare-fun m!5735466 () Bool)

(assert (=> b!4765029 m!5735466))

(declare-fun m!5735468 () Bool)

(assert (=> b!4765029 m!5735468))

(assert (=> b!4765029 m!5735466))

(declare-fun m!5735470 () Bool)

(assert (=> b!4765029 m!5735470))

(declare-fun m!5735472 () Bool)

(assert (=> b!4765029 m!5735472))

(declare-fun m!5735474 () Bool)

(assert (=> b!4765029 m!5735474))

(declare-fun m!5735476 () Bool)

(assert (=> b!4765029 m!5735476))

(declare-fun m!5735478 () Bool)

(assert (=> bm!334087 m!5735478))

(declare-fun m!5735480 () Bool)

(assert (=> b!4765023 m!5735480))

(assert (=> d!1523316 m!5735436))

(declare-fun m!5735482 () Bool)

(assert (=> d!1523316 m!5735482))

(declare-fun m!5735484 () Bool)

(assert (=> d!1523316 m!5735484))

(assert (=> d!1523316 m!5735482))

(declare-fun m!5735486 () Bool)

(assert (=> d!1523316 m!5735486))

(assert (=> d!1523316 m!5735432))

(declare-fun m!5735488 () Bool)

(assert (=> d!1523316 m!5735488))

(declare-fun m!5735490 () Bool)

(assert (=> d!1523316 m!5735490))

(assert (=> d!1523316 m!5735438))

(assert (=> d!1523316 m!5735488))

(declare-fun m!5735492 () Bool)

(assert (=> bm!334085 m!5735492))

(assert (=> b!4765021 m!5735474))

(assert (=> b!4765021 m!5735474))

(declare-fun m!5735494 () Bool)

(assert (=> b!4765021 m!5735494))

(assert (=> b!4765021 m!5735494))

(declare-fun m!5735496 () Bool)

(assert (=> b!4765021 m!5735496))

(assert (=> bm!334083 m!5735438))

(declare-fun m!5735498 () Bool)

(assert (=> b!4765019 m!5735498))

(assert (=> b!4765019 m!5735498))

(declare-fun m!5735500 () Bool)

(assert (=> b!4765019 m!5735500))

(declare-fun m!5735502 () Bool)

(assert (=> b!4765019 m!5735502))

(declare-fun m!5735504 () Bool)

(assert (=> bm!334084 m!5735504))

(assert (=> b!4765022 m!5735436))

(assert (=> b!4765022 m!5735474))

(declare-fun m!5735506 () Bool)

(assert (=> b!4765022 m!5735506))

(declare-fun m!5735508 () Bool)

(assert (=> b!4765022 m!5735508))

(assert (=> bm!334082 m!5735436))

(declare-fun m!5735510 () Bool)

(assert (=> bm!334086 m!5735510))

(assert (=> b!4764982 d!1523316))

(declare-fun d!1523318 () Bool)

(assert (=> d!1523318 (= (array_inv!5753 (_keys!5247 (v!47553 (underlying!10017 (v!47554 (underlying!10018 thiss!42052)))))) (bvsge (size!36225 (_keys!5247 (v!47553 (underlying!10017 (v!47554 (underlying!10018 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4764981 d!1523318))

(declare-fun d!1523320 () Bool)

(assert (=> d!1523320 (= (array_inv!5754 (_values!5218 (v!47553 (underlying!10017 (v!47554 (underlying!10018 thiss!42052)))))) (bvsge (size!36226 (_values!5218 (v!47553 (underlying!10017 (v!47554 (underlying!10018 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4764981 d!1523320))

(declare-fun d!1523322 () Bool)

(declare-fun valid!3905 (LongMapFixedSize!9810) Bool)

(assert (=> d!1523322 (= (valid!3904 (v!47554 (underlying!10018 thiss!42052))) (valid!3905 (v!47553 (underlying!10017 (v!47554 (underlying!10018 thiss!42052))))))))

(declare-fun bs!1148747 () Bool)

(assert (= bs!1148747 d!1523322))

(declare-fun m!5735512 () Bool)

(assert (=> bs!1148747 m!5735512))

(assert (=> b!4764990 d!1523322))

(declare-fun d!1523324 () Bool)

(assert (=> d!1523324 (isDefined!9810 (getValueByKey!2159 (toList!6260 lt!1927701) lt!1927703))))

(declare-fun lt!1927769 () Unit!138135)

(declare-fun choose!33934 (List!53573 (_ BitVec 64)) Unit!138135)

(assert (=> d!1523324 (= lt!1927769 (choose!33934 (toList!6260 lt!1927701) lt!1927703))))

(declare-fun e!2974035 () Bool)

(assert (=> d!1523324 e!2974035))

(declare-fun res!2020951 () Bool)

(assert (=> d!1523324 (=> (not res!2020951) (not e!2974035))))

(declare-fun isStrictlySorted!801 (List!53573) Bool)

(assert (=> d!1523324 (= res!2020951 (isStrictlySorted!801 (toList!6260 lt!1927701)))))

(assert (=> d!1523324 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1973 (toList!6260 lt!1927701) lt!1927703) lt!1927769)))

(declare-fun b!4765032 () Bool)

(assert (=> b!4765032 (= e!2974035 (containsKey!3652 (toList!6260 lt!1927701) lt!1927703))))

(assert (= (and d!1523324 res!2020951) b!4765032))

(assert (=> d!1523324 m!5735452))

(assert (=> d!1523324 m!5735452))

(assert (=> d!1523324 m!5735454))

(declare-fun m!5735514 () Bool)

(assert (=> d!1523324 m!5735514))

(declare-fun m!5735516 () Bool)

(assert (=> d!1523324 m!5735516))

(declare-fun m!5735518 () Bool)

(assert (=> b!4765032 m!5735518))

(assert (=> b!4764986 d!1523324))

(declare-fun d!1523326 () Bool)

(declare-fun isEmpty!29268 (Option!12637) Bool)

(assert (=> d!1523326 (= (isDefined!9810 (getValueByKey!2159 (toList!6260 lt!1927701) lt!1927703)) (not (isEmpty!29268 (getValueByKey!2159 (toList!6260 lt!1927701) lt!1927703))))))

(declare-fun bs!1148748 () Bool)

(assert (= bs!1148748 d!1523326))

(assert (=> bs!1148748 m!5735452))

(declare-fun m!5735520 () Bool)

(assert (=> bs!1148748 m!5735520))

(assert (=> b!4764986 d!1523326))

(declare-fun b!4765044 () Bool)

(declare-fun e!2974041 () Option!12637)

(assert (=> b!4765044 (= e!2974041 None!12636)))

(declare-fun b!4765043 () Bool)

(assert (=> b!4765043 (= e!2974041 (getValueByKey!2159 (t!360981 (toList!6260 lt!1927701)) lt!1927703))))

(declare-fun d!1523328 () Bool)

(declare-fun c!812829 () Bool)

(assert (=> d!1523328 (= c!812829 (and ((_ is Cons!53449) (toList!6260 lt!1927701)) (= (_1!31023 (h!59861 (toList!6260 lt!1927701))) lt!1927703)))))

(declare-fun e!2974040 () Option!12637)

(assert (=> d!1523328 (= (getValueByKey!2159 (toList!6260 lt!1927701) lt!1927703) e!2974040)))

(declare-fun b!4765041 () Bool)

(assert (=> b!4765041 (= e!2974040 (Some!12636 (_2!31023 (h!59861 (toList!6260 lt!1927701)))))))

(declare-fun b!4765042 () Bool)

(assert (=> b!4765042 (= e!2974040 e!2974041)))

(declare-fun c!812830 () Bool)

(assert (=> b!4765042 (= c!812830 (and ((_ is Cons!53449) (toList!6260 lt!1927701)) (not (= (_1!31023 (h!59861 (toList!6260 lt!1927701))) lt!1927703))))))

(assert (= (and d!1523328 c!812829) b!4765041))

(assert (= (and d!1523328 (not c!812829)) b!4765042))

(assert (= (and b!4765042 c!812830) b!4765043))

(assert (= (and b!4765042 (not c!812830)) b!4765044))

(declare-fun m!5735522 () Bool)

(assert (=> b!4765043 m!5735522))

(assert (=> b!4764986 d!1523328))

(declare-fun d!1523330 () Bool)

(assert (=> d!1523330 (contains!16767 (toList!6260 lt!1927701) (tuple2!55459 lt!1927703 lt!1927706))))

(declare-fun lt!1927772 () Unit!138135)

(declare-fun choose!33935 (List!53573 (_ BitVec 64) List!53572) Unit!138135)

(assert (=> d!1523330 (= lt!1927772 (choose!33935 (toList!6260 lt!1927701) lt!1927703 lt!1927706))))

(declare-fun e!2974044 () Bool)

(assert (=> d!1523330 e!2974044))

(declare-fun res!2020954 () Bool)

(assert (=> d!1523330 (=> (not res!2020954) (not e!2974044))))

(assert (=> d!1523330 (= res!2020954 (isStrictlySorted!801 (toList!6260 lt!1927701)))))

(assert (=> d!1523330 (= (lemmaGetValueByKeyImpliesContainsTuple!917 (toList!6260 lt!1927701) lt!1927703 lt!1927706) lt!1927772)))

(declare-fun b!4765047 () Bool)

(assert (=> b!4765047 (= e!2974044 (= (getValueByKey!2159 (toList!6260 lt!1927701) lt!1927703) (Some!12636 lt!1927706)))))

(assert (= (and d!1523330 res!2020954) b!4765047))

(declare-fun m!5735524 () Bool)

(assert (=> d!1523330 m!5735524))

(declare-fun m!5735526 () Bool)

(assert (=> d!1523330 m!5735526))

(assert (=> d!1523330 m!5735516))

(assert (=> b!4765047 m!5735452))

(assert (=> b!4764986 d!1523330))

(declare-fun d!1523332 () Bool)

(declare-fun lt!1927775 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9580 (List!53573) (InoxSet tuple2!55458))

(assert (=> d!1523332 (= lt!1927775 (select (content!9580 (toList!6260 lt!1927701)) lt!1927698))))

(declare-fun e!2974050 () Bool)

(assert (=> d!1523332 (= lt!1927775 e!2974050)))

(declare-fun res!2020959 () Bool)

(assert (=> d!1523332 (=> (not res!2020959) (not e!2974050))))

(assert (=> d!1523332 (= res!2020959 ((_ is Cons!53449) (toList!6260 lt!1927701)))))

(assert (=> d!1523332 (= (contains!16767 (toList!6260 lt!1927701) lt!1927698) lt!1927775)))

(declare-fun b!4765052 () Bool)

(declare-fun e!2974049 () Bool)

(assert (=> b!4765052 (= e!2974050 e!2974049)))

(declare-fun res!2020960 () Bool)

(assert (=> b!4765052 (=> res!2020960 e!2974049)))

(assert (=> b!4765052 (= res!2020960 (= (h!59861 (toList!6260 lt!1927701)) lt!1927698))))

(declare-fun b!4765053 () Bool)

(assert (=> b!4765053 (= e!2974049 (contains!16767 (t!360981 (toList!6260 lt!1927701)) lt!1927698))))

(assert (= (and d!1523332 res!2020959) b!4765052))

(assert (= (and b!4765052 (not res!2020960)) b!4765053))

(declare-fun m!5735528 () Bool)

(assert (=> d!1523332 m!5735528))

(declare-fun m!5735530 () Bool)

(assert (=> d!1523332 m!5735530))

(declare-fun m!5735532 () Bool)

(assert (=> b!4765053 m!5735532))

(assert (=> b!4764979 d!1523332))

(declare-fun d!1523334 () Bool)

(declare-fun e!2974053 () Bool)

(assert (=> d!1523334 e!2974053))

(declare-fun c!812833 () Bool)

(assert (=> d!1523334 (= c!812833 (contains!16770 (v!47554 (underlying!10018 thiss!42052)) lt!1927703))))

(declare-fun lt!1927778 () List!53572)

(declare-fun apply!12594 (LongMapFixedSize!9810 (_ BitVec 64)) List!53572)

(assert (=> d!1523334 (= lt!1927778 (apply!12594 (v!47553 (underlying!10017 (v!47554 (underlying!10018 thiss!42052)))) lt!1927703))))

(assert (=> d!1523334 (valid!3904 (v!47554 (underlying!10018 thiss!42052)))))

(assert (=> d!1523334 (= (apply!12592 (v!47554 (underlying!10018 thiss!42052)) lt!1927703) lt!1927778)))

(declare-fun b!4765058 () Bool)

(declare-fun get!17997 (Option!12637) List!53572)

(assert (=> b!4765058 (= e!2974053 (= lt!1927778 (get!17997 (getValueByKey!2159 (toList!6260 (map!11948 (v!47554 (underlying!10018 thiss!42052)))) lt!1927703))))))

(declare-fun b!4765059 () Bool)

(declare-fun dynLambda!21938 (Int (_ BitVec 64)) List!53572)

(assert (=> b!4765059 (= e!2974053 (= lt!1927778 (dynLambda!21938 (defaultEntry!5323 (v!47553 (underlying!10017 (v!47554 (underlying!10018 thiss!42052))))) lt!1927703)))))

(assert (=> b!4765059 ((_ is LongMap!4905) (v!47554 (underlying!10018 thiss!42052)))))

(assert (= (and d!1523334 c!812833) b!4765058))

(assert (= (and d!1523334 (not c!812833)) b!4765059))

(declare-fun b_lambda!184283 () Bool)

(assert (=> (not b_lambda!184283) (not b!4765059)))

(declare-fun t!360983 () Bool)

(declare-fun tb!257461 () Bool)

(assert (=> (and b!4764981 (= (defaultEntry!5323 (v!47553 (underlying!10017 (v!47554 (underlying!10018 thiss!42052))))) (defaultEntry!5323 (v!47553 (underlying!10017 (v!47554 (underlying!10018 thiss!42052)))))) t!360983) tb!257461))

(assert (=> b!4765059 t!360983))

(declare-fun result!319072 () Bool)

(declare-fun b_and!341261 () Bool)

(assert (= b_and!341257 (and (=> t!360983 result!319072) b_and!341261)))

(declare-fun m!5735534 () Bool)

(assert (=> d!1523334 m!5735534))

(declare-fun m!5735536 () Bool)

(assert (=> d!1523334 m!5735536))

(assert (=> d!1523334 m!5735428))

(assert (=> b!4765058 m!5735436))

(declare-fun m!5735538 () Bool)

(assert (=> b!4765058 m!5735538))

(assert (=> b!4765058 m!5735538))

(declare-fun m!5735540 () Bool)

(assert (=> b!4765058 m!5735540))

(declare-fun m!5735542 () Bool)

(assert (=> b!4765059 m!5735542))

(assert (=> b!4764979 d!1523334))

(declare-fun d!1523336 () Bool)

(declare-fun hash!4550 (Hashable!6566 K!14904) (_ BitVec 64))

(assert (=> d!1523336 (= (hash!4549 (hashF!12391 thiss!42052) key!1776) (hash!4550 (hashF!12391 thiss!42052) key!1776))))

(declare-fun bs!1148749 () Bool)

(assert (= bs!1148749 d!1523336))

(declare-fun m!5735544 () Bool)

(assert (=> bs!1148749 m!5735544))

(assert (=> b!4764979 d!1523336))

(declare-fun d!1523338 () Bool)

(declare-fun dynLambda!21939 (Int tuple2!55458) Bool)

(assert (=> d!1523338 (dynLambda!21939 lambda!224093 lt!1927698)))

(declare-fun lt!1927781 () Unit!138135)

(declare-fun choose!33936 (List!53573 Int tuple2!55458) Unit!138135)

(assert (=> d!1523338 (= lt!1927781 (choose!33936 (toList!6260 lt!1927701) lambda!224093 lt!1927698))))

(declare-fun e!2974056 () Bool)

(assert (=> d!1523338 e!2974056))

(declare-fun res!2020963 () Bool)

(assert (=> d!1523338 (=> (not res!2020963) (not e!2974056))))

(assert (=> d!1523338 (= res!2020963 (forall!11865 (toList!6260 lt!1927701) lambda!224093))))

(assert (=> d!1523338 (= (forallContained!3847 (toList!6260 lt!1927701) lambda!224093 lt!1927698) lt!1927781)))

(declare-fun b!4765062 () Bool)

(assert (=> b!4765062 (= e!2974056 (contains!16767 (toList!6260 lt!1927701) lt!1927698))))

(assert (= (and d!1523338 res!2020963) b!4765062))

(declare-fun b_lambda!184285 () Bool)

(assert (=> (not b_lambda!184285) (not d!1523338)))

(declare-fun m!5735546 () Bool)

(assert (=> d!1523338 m!5735546))

(declare-fun m!5735548 () Bool)

(assert (=> d!1523338 m!5735548))

(declare-fun m!5735550 () Bool)

(assert (=> d!1523338 m!5735550))

(assert (=> b!4765062 m!5735434))

(assert (=> b!4764979 d!1523338))

(declare-fun d!1523340 () Bool)

(declare-fun map!11950 (LongMapFixedSize!9810) ListLongMap!4657)

(assert (=> d!1523340 (= (map!11948 (v!47554 (underlying!10018 thiss!42052))) (map!11950 (v!47553 (underlying!10017 (v!47554 (underlying!10018 thiss!42052))))))))

(declare-fun bs!1148750 () Bool)

(assert (= bs!1148750 d!1523340))

(declare-fun m!5735552 () Bool)

(assert (=> bs!1148750 m!5735552))

(assert (=> b!4764979 d!1523340))

(declare-fun mapNonEmpty!21779 () Bool)

(declare-fun mapRes!21779 () Bool)

(declare-fun tp!1354971 () Bool)

(declare-fun e!2974062 () Bool)

(assert (=> mapNonEmpty!21779 (= mapRes!21779 (and tp!1354971 e!2974062))))

(declare-fun mapRest!21779 () (Array (_ BitVec 32) List!53572))

(declare-fun mapValue!21779 () List!53572)

(declare-fun mapKey!21779 () (_ BitVec 32))

(assert (=> mapNonEmpty!21779 (= mapRest!21776 (store mapRest!21779 mapKey!21779 mapValue!21779))))

(declare-fun tp!1354969 () Bool)

(declare-fun b!4765069 () Bool)

(declare-fun tp_is_empty!32393 () Bool)

(assert (=> b!4765069 (= e!2974062 (and tp_is_empty!32391 tp_is_empty!32393 tp!1354969))))

(declare-fun condMapEmpty!21779 () Bool)

(declare-fun mapDefault!21779 () List!53572)

(assert (=> mapNonEmpty!21776 (= condMapEmpty!21779 (= mapRest!21776 ((as const (Array (_ BitVec 32) List!53572)) mapDefault!21779)))))

(declare-fun e!2974061 () Bool)

(assert (=> mapNonEmpty!21776 (= tp!1354959 (and e!2974061 mapRes!21779))))

(declare-fun mapIsEmpty!21779 () Bool)

(assert (=> mapIsEmpty!21779 mapRes!21779))

(declare-fun b!4765070 () Bool)

(declare-fun tp!1354970 () Bool)

(assert (=> b!4765070 (= e!2974061 (and tp_is_empty!32391 tp_is_empty!32393 tp!1354970))))

(assert (= (and mapNonEmpty!21776 condMapEmpty!21779) mapIsEmpty!21779))

(assert (= (and mapNonEmpty!21776 (not condMapEmpty!21779)) mapNonEmpty!21779))

(assert (= (and mapNonEmpty!21779 ((_ is Cons!53448) mapValue!21779)) b!4765069))

(assert (= (and mapNonEmpty!21776 ((_ is Cons!53448) mapDefault!21779)) b!4765070))

(declare-fun m!5735554 () Bool)

(assert (=> mapNonEmpty!21779 m!5735554))

(declare-fun e!2974065 () Bool)

(declare-fun tp!1354974 () Bool)

(declare-fun b!4765075 () Bool)

(assert (=> b!4765075 (= e!2974065 (and tp_is_empty!32391 tp_is_empty!32393 tp!1354974))))

(assert (=> mapNonEmpty!21776 (= tp!1354960 e!2974065)))

(assert (= (and mapNonEmpty!21776 ((_ is Cons!53448) mapValue!21776)) b!4765075))

(declare-fun b!4765076 () Bool)

(declare-fun tp!1354975 () Bool)

(declare-fun e!2974066 () Bool)

(assert (=> b!4765076 (= e!2974066 (and tp_is_empty!32391 tp_is_empty!32393 tp!1354975))))

(assert (=> b!4764981 (= tp!1354962 e!2974066)))

(assert (= (and b!4764981 ((_ is Cons!53448) (zeroValue!5193 (v!47553 (underlying!10017 (v!47554 (underlying!10018 thiss!42052))))))) b!4765076))

(declare-fun tp!1354976 () Bool)

(declare-fun b!4765077 () Bool)

(declare-fun e!2974067 () Bool)

(assert (=> b!4765077 (= e!2974067 (and tp_is_empty!32391 tp_is_empty!32393 tp!1354976))))

(assert (=> b!4764981 (= tp!1354958 e!2974067)))

(assert (= (and b!4764981 ((_ is Cons!53448) (minValue!5193 (v!47553 (underlying!10017 (v!47554 (underlying!10018 thiss!42052))))))) b!4765077))

(declare-fun e!2974068 () Bool)

(declare-fun b!4765078 () Bool)

(declare-fun tp!1354977 () Bool)

(assert (=> b!4765078 (= e!2974068 (and tp_is_empty!32391 tp_is_empty!32393 tp!1354977))))

(assert (=> b!4764985 (= tp!1354956 e!2974068)))

(assert (= (and b!4764985 ((_ is Cons!53448) mapDefault!21776)) b!4765078))

(declare-fun b_lambda!184287 () Bool)

(assert (= b_lambda!184285 (or b!4764979 b_lambda!184287)))

(declare-fun bs!1148751 () Bool)

(declare-fun d!1523342 () Bool)

(assert (= bs!1148751 (and d!1523342 b!4764979)))

(declare-fun noDuplicateKeys!2247 (List!53572) Bool)

(assert (=> bs!1148751 (= (dynLambda!21939 lambda!224093 lt!1927698) (noDuplicateKeys!2247 (_2!31023 lt!1927698)))))

(declare-fun m!5735556 () Bool)

(assert (=> bs!1148751 m!5735556))

(assert (=> d!1523338 d!1523342))

(declare-fun b_lambda!184289 () Bool)

(assert (= b_lambda!184283 (or (and b!4764981 b_free!129563) b_lambda!184289)))

(check-sat (not b!4765023) b_and!341259 (not d!1523324) (not d!1523322) (not d!1523316) (not b!4765029) (not b_next!130355) (not d!1523326) (not d!1523334) (not b!4765058) (not tb!257461) (not b!4764995) (not d!1523314) b_and!341261 (not b_lambda!184287) (not b!4764996) (not d!1523332) (not d!1523336) (not b!4765070) (not b!4765075) (not b!4765047) (not bm!334083) (not b_next!130353) (not b!4765069) (not bm!334087) (not b!4765021) (not bs!1148751) (not b!4765019) (not b!4765076) (not bm!334082) tp_is_empty!32391 (not b!4765077) (not d!1523338) (not b!4765053) (not bm!334084) (not mapNonEmpty!21779) (not b!4765022) (not b!4765078) tp_is_empty!32393 (not d!1523340) (not b!4765032) (not b!4765043) (not bm!334085) (not bm!334086) (not b!4765062) (not b_lambda!184289) (not d!1523330))
(check-sat b_and!341259 b_and!341261 (not b_next!130355) (not b_next!130353))
