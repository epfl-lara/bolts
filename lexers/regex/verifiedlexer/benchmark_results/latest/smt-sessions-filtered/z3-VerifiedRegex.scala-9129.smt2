; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487470 () Bool)

(assert start!487470)

(declare-fun b!4765750 () Bool)

(declare-fun b_free!129611 () Bool)

(declare-fun b_next!130401 () Bool)

(assert (=> b!4765750 (= b_free!129611 (not b_next!130401))))

(declare-fun tp!1355258 () Bool)

(declare-fun b_and!341311 () Bool)

(assert (=> b!4765750 (= tp!1355258 b_and!341311)))

(declare-fun b!4765748 () Bool)

(declare-fun b_free!129613 () Bool)

(declare-fun b_next!130403 () Bool)

(assert (=> b!4765748 (= b_free!129613 (not b_next!130403))))

(declare-fun tp!1355257 () Bool)

(declare-fun b_and!341313 () Bool)

(assert (=> b!4765748 (= tp!1355257 b_and!341313)))

(declare-fun b!4765747 () Bool)

(declare-fun e!2974560 () Bool)

(declare-fun e!2974567 () Bool)

(assert (=> b!4765747 (= e!2974560 e!2974567)))

(declare-fun mapIsEmpty!21821 () Bool)

(declare-fun mapRes!21821 () Bool)

(assert (=> mapIsEmpty!21821 mapRes!21821))

(declare-fun e!2974569 () Bool)

(declare-fun e!2974563 () Bool)

(assert (=> b!4765748 (= e!2974569 (and e!2974563 tp!1355257))))

(declare-fun b!4765749 () Bool)

(declare-datatypes ((Unit!138180 0))(
  ( (Unit!138181) )
))
(declare-fun e!2974561 () Unit!138180)

(declare-fun Unit!138182 () Unit!138180)

(assert (=> b!4765749 (= e!2974561 Unit!138182)))

(declare-fun tp!1355256 () Bool)

(declare-fun tp!1355253 () Bool)

(declare-datatypes ((K!14934 0))(
  ( (K!14935 (val!20253 Int)) )
))
(declare-datatypes ((V!15180 0))(
  ( (V!15181 (val!20254 Int)) )
))
(declare-datatypes ((tuple2!55494 0))(
  ( (tuple2!55495 (_1!31041 K!14934) (_2!31041 V!15180)) )
))
(declare-datatypes ((array!17978 0))(
  ( (array!17979 (arr!8019 (Array (_ BitVec 32) (_ BitVec 64))) (size!36249 (_ BitVec 32))) )
))
(declare-datatypes ((List!53591 0))(
  ( (Nil!53467) (Cons!53467 (h!59879 tuple2!55494) (t!361005 List!53591)) )
))
(declare-datatypes ((array!17980 0))(
  ( (array!17981 (arr!8020 (Array (_ BitVec 32) List!53591)) (size!36250 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6578 0))(
  ( (HashableExt!6577 (__x!32499 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9834 0))(
  ( (LongMapFixedSize!9835 (defaultEntry!5335 Int) (mask!14671 (_ BitVec 32)) (extraKeys!5192 (_ BitVec 32)) (zeroValue!5205 List!53591) (minValue!5205 List!53591) (_size!9859 (_ BitVec 32)) (_keys!5259 array!17978) (_values!5230 array!17980) (_vacant!4982 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19433 0))(
  ( (Cell!19434 (v!47596 LongMapFixedSize!9834)) )
))
(declare-datatypes ((MutLongMap!4917 0))(
  ( (LongMap!4917 (underlying!10041 Cell!19433)) (MutLongMapExt!4916 (__x!32500 Int)) )
))
(declare-datatypes ((Cell!19435 0))(
  ( (Cell!19436 (v!47597 MutLongMap!4917)) )
))
(declare-datatypes ((MutableMap!4801 0))(
  ( (MutableMapExt!4800 (__x!32501 Int)) (HashMap!4801 (underlying!10042 Cell!19435) (hashF!12403 Hashable!6578) (_size!9860 (_ BitVec 32)) (defaultValue!4972 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4801)

(declare-fun e!2974564 () Bool)

(declare-fun array_inv!5771 (array!17978) Bool)

(declare-fun array_inv!5772 (array!17980) Bool)

(assert (=> b!4765750 (= e!2974567 (and tp!1355258 tp!1355253 tp!1355256 (array_inv!5771 (_keys!5259 (v!47596 (underlying!10041 (v!47597 (underlying!10042 thiss!42052)))))) (array_inv!5772 (_values!5230 (v!47596 (underlying!10041 (v!47597 (underlying!10042 thiss!42052)))))) e!2974564))))

(declare-fun b!4765751 () Bool)

(declare-fun key!1776 () K!14934)

(declare-fun e!2974565 () Bool)

(declare-datatypes ((Option!12650 0))(
  ( (None!12649) (Some!12649 (v!47598 tuple2!55494)) )
))
(declare-fun lt!1928467 () Option!12650)

(declare-datatypes ((tuple2!55496 0))(
  ( (tuple2!55497 (_1!31042 (_ BitVec 64)) (_2!31042 List!53591)) )
))
(declare-datatypes ((List!53592 0))(
  ( (Nil!53468) (Cons!53468 (h!59880 tuple2!55496) (t!361006 List!53592)) )
))
(declare-datatypes ((ListLongMap!4671 0))(
  ( (ListLongMap!4672 (toList!6274 List!53592)) )
))
(declare-fun lt!1928471 () ListLongMap!4671)

(declare-fun get!18010 (Option!12650) tuple2!55494)

(declare-datatypes ((Option!12651 0))(
  ( (None!12650) (Some!12650 (v!47599 V!15180)) )
))
(declare-fun get!18011 (Option!12651) V!15180)

(declare-fun getValueByKey!2165 (List!53591 K!14934) Option!12651)

(declare-datatypes ((ListMap!5771 0))(
  ( (ListMap!5772 (toList!6275 List!53591)) )
))
(declare-fun extractMap!2138 (List!53592) ListMap!5771)

(assert (=> b!4765751 (= e!2974565 (= (_2!31041 (get!18010 lt!1928467)) (get!18011 (getValueByKey!2165 (toList!6275 (extractMap!2138 (toList!6274 lt!1928471))) key!1776))))))

(declare-fun b!4765752 () Bool)

(declare-fun e!2974568 () Bool)

(get-info :version)

(assert (=> b!4765752 (= e!2974568 (not ((_ is LongMap!4917) (v!47597 (underlying!10042 thiss!42052)))))))

(assert (=> b!4765752 e!2974565))

(declare-fun res!2021224 () Bool)

(assert (=> b!4765752 (=> (not res!2021224) (not e!2974565))))

(declare-fun isDefined!9823 (Option!12650) Bool)

(assert (=> b!4765752 (= res!2021224 (isDefined!9823 lt!1928467))))

(declare-fun lt!1928473 () List!53591)

(declare-fun getPair!638 (List!53591 K!14934) Option!12650)

(assert (=> b!4765752 (= lt!1928467 (getPair!638 lt!1928473 key!1776))))

(declare-fun lambda!224207 () Int)

(declare-fun lt!1928480 () tuple2!55496)

(declare-fun lt!1928476 () Unit!138180)

(declare-fun forallContained!3854 (List!53592 Int tuple2!55496) Unit!138180)

(assert (=> b!4765752 (= lt!1928476 (forallContained!3854 (toList!6274 lt!1928471) lambda!224207 lt!1928480))))

(declare-fun lt!1928477 () Unit!138180)

(declare-fun lemmaInGenMapThenGetPairDefined!421 (ListLongMap!4671 K!14934 Hashable!6578) Unit!138180)

(assert (=> b!4765752 (= lt!1928477 (lemmaInGenMapThenGetPairDefined!421 lt!1928471 key!1776 (hashF!12403 thiss!42052)))))

(declare-fun lt!1928465 () Unit!138180)

(assert (=> b!4765752 (= lt!1928465 (forallContained!3854 (toList!6274 lt!1928471) lambda!224207 lt!1928480))))

(declare-fun contains!16800 (List!53592 tuple2!55496) Bool)

(assert (=> b!4765752 (contains!16800 (toList!6274 lt!1928471) lt!1928480)))

(declare-fun lt!1928464 () (_ BitVec 64))

(assert (=> b!4765752 (= lt!1928480 (tuple2!55497 lt!1928464 lt!1928473))))

(declare-fun lt!1928466 () Unit!138180)

(declare-fun lemmaGetValueImpliesTupleContained!430 (ListLongMap!4671 (_ BitVec 64) List!53591) Unit!138180)

(assert (=> b!4765752 (= lt!1928466 (lemmaGetValueImpliesTupleContained!430 lt!1928471 lt!1928464 lt!1928473))))

(declare-fun apply!12609 (ListLongMap!4671 (_ BitVec 64)) List!53591)

(assert (=> b!4765752 (= lt!1928473 (apply!12609 lt!1928471 lt!1928464))))

(declare-fun contains!16801 (ListLongMap!4671 (_ BitVec 64)) Bool)

(assert (=> b!4765752 (contains!16801 lt!1928471 lt!1928464)))

(declare-fun lt!1928469 () Unit!138180)

(declare-fun lemmaInGenMapThenLongMapContainsHash!831 (ListLongMap!4671 K!14934 Hashable!6578) Unit!138180)

(assert (=> b!4765752 (= lt!1928469 (lemmaInGenMapThenLongMapContainsHash!831 lt!1928471 key!1776 (hashF!12403 thiss!42052)))))

(declare-fun lt!1928470 () List!53591)

(declare-fun lt!1928463 () Unit!138180)

(declare-fun lemmaGetPairGetSameValueAsMap!53 (ListLongMap!4671 K!14934 V!15180 Hashable!6578) Unit!138180)

(assert (=> b!4765752 (= lt!1928463 (lemmaGetPairGetSameValueAsMap!53 lt!1928471 key!1776 (_2!31041 (get!18010 (getPair!638 lt!1928470 key!1776))) (hashF!12403 thiss!42052)))))

(declare-fun lt!1928479 () Unit!138180)

(declare-fun lt!1928474 () tuple2!55496)

(assert (=> b!4765752 (= lt!1928479 (forallContained!3854 (toList!6274 lt!1928471) lambda!224207 lt!1928474))))

(declare-fun lt!1928478 () Unit!138180)

(assert (=> b!4765752 (= lt!1928478 e!2974561)))

(declare-fun c!812917 () Bool)

(assert (=> b!4765752 (= c!812917 (not (contains!16800 (toList!6274 lt!1928471) lt!1928474)))))

(assert (=> b!4765752 (= lt!1928474 (tuple2!55497 lt!1928464 lt!1928470))))

(declare-fun apply!12610 (MutLongMap!4917 (_ BitVec 64)) List!53591)

(assert (=> b!4765752 (= lt!1928470 (apply!12610 (v!47597 (underlying!10042 thiss!42052)) lt!1928464))))

(declare-fun map!11967 (MutLongMap!4917) ListLongMap!4671)

(assert (=> b!4765752 (= lt!1928471 (map!11967 (v!47597 (underlying!10042 thiss!42052))))))

(declare-fun hash!4559 (Hashable!6578 K!14934) (_ BitVec 64))

(assert (=> b!4765752 (= lt!1928464 (hash!4559 (hashF!12403 thiss!42052) key!1776))))

(declare-fun b!4765754 () Bool)

(declare-fun Unit!138183 () Unit!138180)

(assert (=> b!4765754 (= e!2974561 Unit!138183)))

(declare-fun lt!1928472 () Unit!138180)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1979 (List!53592 (_ BitVec 64)) Unit!138180)

(assert (=> b!4765754 (= lt!1928472 (lemmaContainsKeyImpliesGetValueByKeyDefined!1979 (toList!6274 lt!1928471) lt!1928464))))

(declare-datatypes ((Option!12652 0))(
  ( (None!12651) (Some!12651 (v!47600 List!53591)) )
))
(declare-fun isDefined!9824 (Option!12652) Bool)

(declare-fun getValueByKey!2166 (List!53592 (_ BitVec 64)) Option!12652)

(assert (=> b!4765754 (isDefined!9824 (getValueByKey!2166 (toList!6274 lt!1928471) lt!1928464))))

(declare-fun lt!1928475 () Unit!138180)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!923 (List!53592 (_ BitVec 64) List!53591) Unit!138180)

(assert (=> b!4765754 (= lt!1928475 (lemmaGetValueByKeyImpliesContainsTuple!923 (toList!6274 lt!1928471) lt!1928464 lt!1928470))))

(assert (=> b!4765754 false))

(declare-fun b!4765755 () Bool)

(declare-fun e!2974562 () Bool)

(assert (=> b!4765755 (= e!2974562 e!2974560)))

(declare-fun mapNonEmpty!21821 () Bool)

(declare-fun tp!1355255 () Bool)

(declare-fun tp!1355254 () Bool)

(assert (=> mapNonEmpty!21821 (= mapRes!21821 (and tp!1355255 tp!1355254))))

(declare-fun mapValue!21821 () List!53591)

(declare-fun mapKey!21821 () (_ BitVec 32))

(declare-fun mapRest!21821 () (Array (_ BitVec 32) List!53591))

(assert (=> mapNonEmpty!21821 (= (arr!8020 (_values!5230 (v!47596 (underlying!10041 (v!47597 (underlying!10042 thiss!42052)))))) (store mapRest!21821 mapKey!21821 mapValue!21821))))

(declare-fun b!4765756 () Bool)

(declare-fun lt!1928468 () MutLongMap!4917)

(assert (=> b!4765756 (= e!2974563 (and e!2974562 ((_ is LongMap!4917) lt!1928468)))))

(assert (=> b!4765756 (= lt!1928468 (v!47597 (underlying!10042 thiss!42052)))))

(declare-fun b!4765757 () Bool)

(declare-fun res!2021227 () Bool)

(assert (=> b!4765757 (=> (not res!2021227) (not e!2974568))))

(declare-fun contains!16802 (MutableMap!4801 K!14934) Bool)

(assert (=> b!4765757 (= res!2021227 (contains!16802 thiss!42052 key!1776))))

(declare-fun b!4765758 () Bool)

(declare-fun tp!1355259 () Bool)

(assert (=> b!4765758 (= e!2974564 (and tp!1355259 mapRes!21821))))

(declare-fun condMapEmpty!21821 () Bool)

(declare-fun mapDefault!21821 () List!53591)

(assert (=> b!4765758 (= condMapEmpty!21821 (= (arr!8020 (_values!5230 (v!47596 (underlying!10041 (v!47597 (underlying!10042 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53591)) mapDefault!21821)))))

(declare-fun b!4765753 () Bool)

(declare-fun res!2021225 () Bool)

(assert (=> b!4765753 (=> (not res!2021225) (not e!2974568))))

(declare-fun valid!3914 (MutableMap!4801) Bool)

(assert (=> b!4765753 (= res!2021225 (valid!3914 thiss!42052))))

(declare-fun res!2021226 () Bool)

(assert (=> start!487470 (=> (not res!2021226) (not e!2974568))))

(assert (=> start!487470 (= res!2021226 ((_ is HashMap!4801) thiss!42052))))

(assert (=> start!487470 e!2974568))

(assert (=> start!487470 e!2974569))

(declare-fun tp_is_empty!32421 () Bool)

(assert (=> start!487470 tp_is_empty!32421))

(assert (= (and start!487470 res!2021226) b!4765753))

(assert (= (and b!4765753 res!2021225) b!4765757))

(assert (= (and b!4765757 res!2021227) b!4765752))

(assert (= (and b!4765752 c!812917) b!4765754))

(assert (= (and b!4765752 (not c!812917)) b!4765749))

(assert (= (and b!4765752 res!2021224) b!4765751))

(assert (= (and b!4765758 condMapEmpty!21821) mapIsEmpty!21821))

(assert (= (and b!4765758 (not condMapEmpty!21821)) mapNonEmpty!21821))

(assert (= b!4765750 b!4765758))

(assert (= b!4765747 b!4765750))

(assert (= b!4765755 b!4765747))

(assert (= (and b!4765756 ((_ is LongMap!4917) (v!47597 (underlying!10042 thiss!42052)))) b!4765755))

(assert (= b!4765748 b!4765756))

(assert (= (and start!487470 ((_ is HashMap!4801) thiss!42052)) b!4765748))

(declare-fun m!5736314 () Bool)

(assert (=> b!4765752 m!5736314))

(declare-fun m!5736316 () Bool)

(assert (=> b!4765752 m!5736316))

(declare-fun m!5736318 () Bool)

(assert (=> b!4765752 m!5736318))

(declare-fun m!5736320 () Bool)

(assert (=> b!4765752 m!5736320))

(declare-fun m!5736322 () Bool)

(assert (=> b!4765752 m!5736322))

(declare-fun m!5736324 () Bool)

(assert (=> b!4765752 m!5736324))

(declare-fun m!5736326 () Bool)

(assert (=> b!4765752 m!5736326))

(declare-fun m!5736328 () Bool)

(assert (=> b!4765752 m!5736328))

(declare-fun m!5736330 () Bool)

(assert (=> b!4765752 m!5736330))

(declare-fun m!5736332 () Bool)

(assert (=> b!4765752 m!5736332))

(declare-fun m!5736334 () Bool)

(assert (=> b!4765752 m!5736334))

(declare-fun m!5736336 () Bool)

(assert (=> b!4765752 m!5736336))

(declare-fun m!5736338 () Bool)

(assert (=> b!4765752 m!5736338))

(declare-fun m!5736340 () Bool)

(assert (=> b!4765752 m!5736340))

(assert (=> b!4765752 m!5736320))

(declare-fun m!5736342 () Bool)

(assert (=> b!4765752 m!5736342))

(declare-fun m!5736344 () Bool)

(assert (=> b!4765752 m!5736344))

(declare-fun m!5736346 () Bool)

(assert (=> b!4765752 m!5736346))

(assert (=> b!4765752 m!5736324))

(declare-fun m!5736348 () Bool)

(assert (=> b!4765757 m!5736348))

(declare-fun m!5736350 () Bool)

(assert (=> b!4765753 m!5736350))

(declare-fun m!5736352 () Bool)

(assert (=> mapNonEmpty!21821 m!5736352))

(declare-fun m!5736354 () Bool)

(assert (=> b!4765751 m!5736354))

(declare-fun m!5736356 () Bool)

(assert (=> b!4765751 m!5736356))

(declare-fun m!5736358 () Bool)

(assert (=> b!4765751 m!5736358))

(assert (=> b!4765751 m!5736358))

(declare-fun m!5736360 () Bool)

(assert (=> b!4765751 m!5736360))

(declare-fun m!5736362 () Bool)

(assert (=> b!4765754 m!5736362))

(declare-fun m!5736364 () Bool)

(assert (=> b!4765754 m!5736364))

(assert (=> b!4765754 m!5736364))

(declare-fun m!5736366 () Bool)

(assert (=> b!4765754 m!5736366))

(declare-fun m!5736368 () Bool)

(assert (=> b!4765754 m!5736368))

(declare-fun m!5736370 () Bool)

(assert (=> b!4765750 m!5736370))

(declare-fun m!5736372 () Bool)

(assert (=> b!4765750 m!5736372))

(check-sat tp_is_empty!32421 (not b!4765751) (not b!4765752) (not b!4765754) (not mapNonEmpty!21821) (not b!4765753) (not b!4765758) (not b!4765757) (not b!4765750) b_and!341311 (not b_next!130401) (not b_next!130403) b_and!341313)
(check-sat b_and!341313 b_and!341311 (not b_next!130403) (not b_next!130401))
