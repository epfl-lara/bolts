; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487824 () Bool)

(assert start!487824)

(declare-fun b!4767660 () Bool)

(declare-fun b_free!129675 () Bool)

(declare-fun b_next!130465 () Bool)

(assert (=> b!4767660 (= b_free!129675 (not b_next!130465))))

(declare-fun tp!1355676 () Bool)

(declare-fun b_and!341393 () Bool)

(assert (=> b!4767660 (= tp!1355676 b_and!341393)))

(declare-fun b!4767656 () Bool)

(declare-fun b_free!129677 () Bool)

(declare-fun b_next!130467 () Bool)

(assert (=> b!4767656 (= b_free!129677 (not b_next!130467))))

(declare-fun tp!1355675 () Bool)

(declare-fun b_and!341395 () Bool)

(assert (=> b!4767656 (= tp!1355675 b_and!341395)))

(declare-fun res!2022073 () Bool)

(declare-fun e!2975908 () Bool)

(assert (=> start!487824 (=> (not res!2022073) (not e!2975908))))

(declare-datatypes ((K!14974 0))(
  ( (K!14975 (val!20285 Int)) )
))
(declare-datatypes ((V!15220 0))(
  ( (V!15221 (val!20286 Int)) )
))
(declare-datatypes ((tuple2!55554 0))(
  ( (tuple2!55555 (_1!31071 K!14974) (_2!31071 V!15220)) )
))
(declare-datatypes ((array!18052 0))(
  ( (array!18053 (arr!8051 (Array (_ BitVec 32) (_ BitVec 64))) (size!36281 (_ BitVec 32))) )
))
(declare-datatypes ((List!53622 0))(
  ( (Nil!53498) (Cons!53498 (h!59910 tuple2!55554) (t!361048 List!53622)) )
))
(declare-datatypes ((array!18054 0))(
  ( (array!18055 (arr!8052 (Array (_ BitVec 32) List!53622)) (size!36282 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6594 0))(
  ( (HashableExt!6593 (__x!32547 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9866 0))(
  ( (LongMapFixedSize!9867 (defaultEntry!5351 Int) (mask!14695 (_ BitVec 32)) (extraKeys!5208 (_ BitVec 32)) (zeroValue!5221 List!53622) (minValue!5221 List!53622) (_size!9891 (_ BitVec 32)) (_keys!5275 array!18052) (_values!5246 array!18054) (_vacant!4998 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19497 0))(
  ( (Cell!19498 (v!47700 LongMapFixedSize!9866)) )
))
(declare-datatypes ((MutLongMap!4933 0))(
  ( (LongMap!4933 (underlying!10073 Cell!19497)) (MutLongMapExt!4932 (__x!32548 Int)) )
))
(declare-datatypes ((Cell!19499 0))(
  ( (Cell!19500 (v!47701 MutLongMap!4933)) )
))
(declare-datatypes ((MutableMap!4817 0))(
  ( (MutableMapExt!4816 (__x!32549 Int)) (HashMap!4817 (underlying!10074 Cell!19499) (hashF!12455 Hashable!6594) (_size!9892 (_ BitVec 32)) (defaultValue!4988 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4817)

(get-info :version)

(assert (=> start!487824 (= res!2022073 ((_ is HashMap!4817) thiss!42052))))

(assert (=> start!487824 e!2975908))

(declare-fun e!2975906 () Bool)

(assert (=> start!487824 e!2975906))

(declare-fun tp_is_empty!32463 () Bool)

(assert (=> start!487824 tp_is_empty!32463))

(declare-fun e!2975905 () Bool)

(assert (=> b!4767656 (= e!2975906 (and e!2975905 tp!1355675))))

(declare-fun b!4767657 () Bool)

(declare-fun e!2975904 () Bool)

(declare-fun tp!1355674 () Bool)

(declare-fun mapRes!21885 () Bool)

(assert (=> b!4767657 (= e!2975904 (and tp!1355674 mapRes!21885))))

(declare-fun condMapEmpty!21885 () Bool)

(declare-fun mapDefault!21885 () List!53622)

(assert (=> b!4767657 (= condMapEmpty!21885 (= (arr!8052 (_values!5246 (v!47700 (underlying!10073 (v!47701 (underlying!10074 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53622)) mapDefault!21885)))))

(declare-fun b!4767658 () Bool)

(declare-fun e!2975909 () Bool)

(declare-datatypes ((tuple2!55556 0))(
  ( (tuple2!55557 (_1!31072 (_ BitVec 64)) (_2!31072 List!53622)) )
))
(declare-datatypes ((List!53623 0))(
  ( (Nil!53499) (Cons!53499 (h!59911 tuple2!55556) (t!361049 List!53623)) )
))
(declare-datatypes ((ListLongMap!4699 0))(
  ( (ListLongMap!4700 (toList!6301 List!53623)) )
))
(declare-fun lt!1930526 () ListLongMap!4699)

(declare-fun key!1776 () K!14974)

(declare-datatypes ((Option!12689 0))(
  ( (None!12688) (Some!12688 (v!47702 tuple2!55554)) )
))
(declare-fun lt!1930524 () Option!12689)

(declare-fun get!18050 (Option!12689) tuple2!55554)

(declare-datatypes ((Option!12690 0))(
  ( (None!12689) (Some!12689 (v!47703 V!15220)) )
))
(declare-fun get!18051 (Option!12690) V!15220)

(declare-fun getValueByKey!2190 (List!53622 K!14974) Option!12690)

(declare-datatypes ((ListMap!5797 0))(
  ( (ListMap!5798 (toList!6302 List!53622)) )
))
(declare-fun extractMap!2150 (List!53623) ListMap!5797)

(assert (=> b!4767658 (= e!2975909 (= (_2!31071 (get!18050 lt!1930524)) (get!18051 (getValueByKey!2190 (toList!6302 (extractMap!2150 (toList!6301 lt!1930526))) key!1776))))))

(declare-fun b!4767659 () Bool)

(declare-datatypes ((Unit!138281 0))(
  ( (Unit!138282) )
))
(declare-fun e!2975902 () Unit!138281)

(declare-fun Unit!138283 () Unit!138281)

(assert (=> b!4767659 (= e!2975902 Unit!138283)))

(declare-fun lt!1930527 () Unit!138281)

(declare-fun lt!1930528 () (_ BitVec 64))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1992 (List!53623 (_ BitVec 64)) Unit!138281)

(assert (=> b!4767659 (= lt!1930527 (lemmaContainsKeyImpliesGetValueByKeyDefined!1992 (toList!6301 lt!1930526) lt!1930528))))

(declare-datatypes ((Option!12691 0))(
  ( (None!12690) (Some!12690 (v!47704 List!53622)) )
))
(declare-fun isDefined!9847 (Option!12691) Bool)

(declare-fun getValueByKey!2191 (List!53623 (_ BitVec 64)) Option!12691)

(assert (=> b!4767659 (isDefined!9847 (getValueByKey!2191 (toList!6301 lt!1930526) lt!1930528))))

(declare-fun lt!1930532 () List!53622)

(declare-fun lt!1930525 () Unit!138281)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!935 (List!53623 (_ BitVec 64) List!53622) Unit!138281)

(assert (=> b!4767659 (= lt!1930525 (lemmaGetValueByKeyImpliesContainsTuple!935 (toList!6301 lt!1930526) lt!1930528 lt!1930532))))

(assert (=> b!4767659 false))

(declare-fun mapIsEmpty!21885 () Bool)

(assert (=> mapIsEmpty!21885 mapRes!21885))

(declare-fun tp!1355677 () Bool)

(declare-fun tp!1355678 () Bool)

(declare-fun e!2975903 () Bool)

(declare-fun array_inv!5795 (array!18052) Bool)

(declare-fun array_inv!5796 (array!18054) Bool)

(assert (=> b!4767660 (= e!2975903 (and tp!1355676 tp!1355677 tp!1355678 (array_inv!5795 (_keys!5275 (v!47700 (underlying!10073 (v!47701 (underlying!10074 thiss!42052)))))) (array_inv!5796 (_values!5246 (v!47700 (underlying!10073 (v!47701 (underlying!10074 thiss!42052)))))) e!2975904))))

(declare-fun b!4767661 () Bool)

(declare-fun e!2975910 () Bool)

(assert (=> b!4767661 (= e!2975908 (not e!2975910))))

(declare-fun res!2022075 () Bool)

(assert (=> b!4767661 (=> res!2022075 e!2975910)))

(declare-fun lt!1930529 () tuple2!55554)

(declare-fun map!11998 (MutableMap!4817) ListMap!5797)

(assert (=> b!4767661 (= res!2022075 (not (= (_2!31071 lt!1930529) (get!18051 (getValueByKey!2190 (toList!6302 (map!11998 thiss!42052)) key!1776)))))))

(assert (=> b!4767661 e!2975909))

(declare-fun res!2022072 () Bool)

(assert (=> b!4767661 (=> (not res!2022072) (not e!2975909))))

(declare-fun isDefined!9848 (Option!12689) Bool)

(assert (=> b!4767661 (= res!2022072 (isDefined!9848 lt!1930524))))

(declare-fun lt!1930533 () List!53622)

(declare-fun getPair!649 (List!53622 K!14974) Option!12689)

(assert (=> b!4767661 (= lt!1930524 (getPair!649 lt!1930533 key!1776))))

(declare-fun lt!1930523 () tuple2!55556)

(declare-fun lambda!224532 () Int)

(declare-fun lt!1930534 () Unit!138281)

(declare-fun forallContained!3866 (List!53623 Int tuple2!55556) Unit!138281)

(assert (=> b!4767661 (= lt!1930534 (forallContained!3866 (toList!6301 lt!1930526) lambda!224532 lt!1930523))))

(declare-fun lt!1930535 () Unit!138281)

(declare-fun lemmaInGenMapThenGetPairDefined!432 (ListLongMap!4699 K!14974 Hashable!6594) Unit!138281)

(assert (=> b!4767661 (= lt!1930535 (lemmaInGenMapThenGetPairDefined!432 lt!1930526 key!1776 (hashF!12455 thiss!42052)))))

(declare-fun lt!1930522 () Unit!138281)

(assert (=> b!4767661 (= lt!1930522 (forallContained!3866 (toList!6301 lt!1930526) lambda!224532 lt!1930523))))

(declare-fun contains!16850 (List!53623 tuple2!55556) Bool)

(assert (=> b!4767661 (contains!16850 (toList!6301 lt!1930526) lt!1930523)))

(assert (=> b!4767661 (= lt!1930523 (tuple2!55557 lt!1930528 lt!1930533))))

(declare-fun lt!1930520 () Unit!138281)

(declare-fun lemmaGetValueImpliesTupleContained!441 (ListLongMap!4699 (_ BitVec 64) List!53622) Unit!138281)

(assert (=> b!4767661 (= lt!1930520 (lemmaGetValueImpliesTupleContained!441 lt!1930526 lt!1930528 lt!1930533))))

(declare-fun apply!12636 (ListLongMap!4699 (_ BitVec 64)) List!53622)

(assert (=> b!4767661 (= lt!1930533 (apply!12636 lt!1930526 lt!1930528))))

(declare-fun contains!16851 (ListLongMap!4699 (_ BitVec 64)) Bool)

(assert (=> b!4767661 (contains!16851 lt!1930526 lt!1930528)))

(declare-fun lt!1930519 () Unit!138281)

(declare-fun lemmaInGenMapThenLongMapContainsHash!842 (ListLongMap!4699 K!14974 Hashable!6594) Unit!138281)

(assert (=> b!4767661 (= lt!1930519 (lemmaInGenMapThenLongMapContainsHash!842 lt!1930526 key!1776 (hashF!12455 thiss!42052)))))

(declare-fun lt!1930518 () Unit!138281)

(declare-fun lemmaGetPairGetSameValueAsMap!64 (ListLongMap!4699 K!14974 V!15220 Hashable!6594) Unit!138281)

(assert (=> b!4767661 (= lt!1930518 (lemmaGetPairGetSameValueAsMap!64 lt!1930526 key!1776 (_2!31071 lt!1930529) (hashF!12455 thiss!42052)))))

(assert (=> b!4767661 (= lt!1930529 (get!18050 (getPair!649 lt!1930532 key!1776)))))

(declare-fun lt!1930531 () tuple2!55556)

(declare-fun lt!1930530 () Unit!138281)

(assert (=> b!4767661 (= lt!1930530 (forallContained!3866 (toList!6301 lt!1930526) lambda!224532 lt!1930531))))

(declare-fun lt!1930517 () Unit!138281)

(assert (=> b!4767661 (= lt!1930517 e!2975902)))

(declare-fun c!813254 () Bool)

(assert (=> b!4767661 (= c!813254 (not (contains!16850 (toList!6301 lt!1930526) lt!1930531)))))

(assert (=> b!4767661 (= lt!1930531 (tuple2!55557 lt!1930528 lt!1930532))))

(declare-fun apply!12637 (MutLongMap!4933 (_ BitVec 64)) List!53622)

(assert (=> b!4767661 (= lt!1930532 (apply!12637 (v!47701 (underlying!10074 thiss!42052)) lt!1930528))))

(declare-fun map!11999 (MutLongMap!4933) ListLongMap!4699)

(assert (=> b!4767661 (= lt!1930526 (map!11999 (v!47701 (underlying!10074 thiss!42052))))))

(declare-fun hash!4575 (Hashable!6594 K!14974) (_ BitVec 64))

(assert (=> b!4767661 (= lt!1930528 (hash!4575 (hashF!12455 thiss!42052) key!1776))))

(declare-fun b!4767662 () Bool)

(declare-fun res!2022076 () Bool)

(assert (=> b!4767662 (=> (not res!2022076) (not e!2975908))))

(declare-fun valid!3937 (MutableMap!4817) Bool)

(assert (=> b!4767662 (= res!2022076 (valid!3937 thiss!42052))))

(declare-fun b!4767663 () Bool)

(declare-fun noDuplicateKeys!2256 (List!53622) Bool)

(assert (=> b!4767663 (= e!2975910 (noDuplicateKeys!2256 lt!1930532))))

(declare-fun b!4767664 () Bool)

(declare-fun e!2975900 () Bool)

(declare-fun lt!1930521 () MutLongMap!4933)

(assert (=> b!4767664 (= e!2975905 (and e!2975900 ((_ is LongMap!4933) lt!1930521)))))

(assert (=> b!4767664 (= lt!1930521 (v!47701 (underlying!10074 thiss!42052)))))

(declare-fun b!4767665 () Bool)

(declare-fun e!2975901 () Bool)

(assert (=> b!4767665 (= e!2975901 e!2975903)))

(declare-fun b!4767666 () Bool)

(assert (=> b!4767666 (= e!2975900 e!2975901)))

(declare-fun b!4767667 () Bool)

(declare-fun res!2022074 () Bool)

(assert (=> b!4767667 (=> (not res!2022074) (not e!2975908))))

(declare-fun contains!16852 (MutableMap!4817 K!14974) Bool)

(assert (=> b!4767667 (= res!2022074 (contains!16852 thiss!42052 key!1776))))

(declare-fun mapNonEmpty!21885 () Bool)

(declare-fun tp!1355680 () Bool)

(declare-fun tp!1355679 () Bool)

(assert (=> mapNonEmpty!21885 (= mapRes!21885 (and tp!1355680 tp!1355679))))

(declare-fun mapValue!21885 () List!53622)

(declare-fun mapRest!21885 () (Array (_ BitVec 32) List!53622))

(declare-fun mapKey!21885 () (_ BitVec 32))

(assert (=> mapNonEmpty!21885 (= (arr!8052 (_values!5246 (v!47700 (underlying!10073 (v!47701 (underlying!10074 thiss!42052)))))) (store mapRest!21885 mapKey!21885 mapValue!21885))))

(declare-fun b!4767668 () Bool)

(declare-fun Unit!138284 () Unit!138281)

(assert (=> b!4767668 (= e!2975902 Unit!138284)))

(assert (= (and start!487824 res!2022073) b!4767662))

(assert (= (and b!4767662 res!2022076) b!4767667))

(assert (= (and b!4767667 res!2022074) b!4767661))

(assert (= (and b!4767661 c!813254) b!4767659))

(assert (= (and b!4767661 (not c!813254)) b!4767668))

(assert (= (and b!4767661 res!2022072) b!4767658))

(assert (= (and b!4767661 (not res!2022075)) b!4767663))

(assert (= (and b!4767657 condMapEmpty!21885) mapIsEmpty!21885))

(assert (= (and b!4767657 (not condMapEmpty!21885)) mapNonEmpty!21885))

(assert (= b!4767660 b!4767657))

(assert (= b!4767665 b!4767660))

(assert (= b!4767666 b!4767665))

(assert (= (and b!4767664 ((_ is LongMap!4933) (v!47701 (underlying!10074 thiss!42052)))) b!4767666))

(assert (= b!4767656 b!4767664))

(assert (= (and start!487824 ((_ is HashMap!4817) thiss!42052)) b!4767656))

(declare-fun m!5738896 () Bool)

(assert (=> b!4767663 m!5738896))

(declare-fun m!5738898 () Bool)

(assert (=> b!4767661 m!5738898))

(declare-fun m!5738900 () Bool)

(assert (=> b!4767661 m!5738900))

(declare-fun m!5738902 () Bool)

(assert (=> b!4767661 m!5738902))

(declare-fun m!5738904 () Bool)

(assert (=> b!4767661 m!5738904))

(declare-fun m!5738906 () Bool)

(assert (=> b!4767661 m!5738906))

(declare-fun m!5738908 () Bool)

(assert (=> b!4767661 m!5738908))

(declare-fun m!5738910 () Bool)

(assert (=> b!4767661 m!5738910))

(declare-fun m!5738912 () Bool)

(assert (=> b!4767661 m!5738912))

(declare-fun m!5738914 () Bool)

(assert (=> b!4767661 m!5738914))

(declare-fun m!5738916 () Bool)

(assert (=> b!4767661 m!5738916))

(declare-fun m!5738918 () Bool)

(assert (=> b!4767661 m!5738918))

(assert (=> b!4767661 m!5738902))

(declare-fun m!5738920 () Bool)

(assert (=> b!4767661 m!5738920))

(declare-fun m!5738922 () Bool)

(assert (=> b!4767661 m!5738922))

(declare-fun m!5738924 () Bool)

(assert (=> b!4767661 m!5738924))

(declare-fun m!5738926 () Bool)

(assert (=> b!4767661 m!5738926))

(declare-fun m!5738928 () Bool)

(assert (=> b!4767661 m!5738928))

(assert (=> b!4767661 m!5738924))

(declare-fun m!5738930 () Bool)

(assert (=> b!4767661 m!5738930))

(declare-fun m!5738932 () Bool)

(assert (=> b!4767661 m!5738932))

(assert (=> b!4767661 m!5738908))

(declare-fun m!5738934 () Bool)

(assert (=> b!4767661 m!5738934))

(declare-fun m!5738936 () Bool)

(assert (=> b!4767661 m!5738936))

(declare-fun m!5738938 () Bool)

(assert (=> mapNonEmpty!21885 m!5738938))

(declare-fun m!5738940 () Bool)

(assert (=> b!4767660 m!5738940))

(declare-fun m!5738942 () Bool)

(assert (=> b!4767660 m!5738942))

(declare-fun m!5738944 () Bool)

(assert (=> b!4767659 m!5738944))

(declare-fun m!5738946 () Bool)

(assert (=> b!4767659 m!5738946))

(assert (=> b!4767659 m!5738946))

(declare-fun m!5738948 () Bool)

(assert (=> b!4767659 m!5738948))

(declare-fun m!5738950 () Bool)

(assert (=> b!4767659 m!5738950))

(declare-fun m!5738952 () Bool)

(assert (=> b!4767658 m!5738952))

(declare-fun m!5738954 () Bool)

(assert (=> b!4767658 m!5738954))

(declare-fun m!5738956 () Bool)

(assert (=> b!4767658 m!5738956))

(assert (=> b!4767658 m!5738956))

(declare-fun m!5738958 () Bool)

(assert (=> b!4767658 m!5738958))

(declare-fun m!5738960 () Bool)

(assert (=> b!4767667 m!5738960))

(declare-fun m!5738962 () Bool)

(assert (=> b!4767662 m!5738962))

(check-sat (not b!4767657) b_and!341393 (not b!4767663) (not b!4767660) (not mapNonEmpty!21885) (not b_next!130467) (not b_next!130465) (not b!4767659) (not b!4767661) b_and!341395 tp_is_empty!32463 (not b!4767662) (not b!4767658) (not b!4767667))
(check-sat b_and!341395 b_and!341393 (not b_next!130467) (not b_next!130465))
(get-model)

(declare-fun bs!1149091 () Bool)

(declare-fun b!4767701 () Bool)

(assert (= bs!1149091 (and b!4767701 b!4767661)))

(declare-fun lambda!224535 () Int)

(assert (=> bs!1149091 (= lambda!224535 lambda!224532)))

(declare-fun b!4767691 () Bool)

(declare-fun e!2975927 () Unit!138281)

(declare-fun lt!1930592 () Unit!138281)

(assert (=> b!4767691 (= e!2975927 lt!1930592)))

(declare-fun lt!1930579 () ListLongMap!4699)

(declare-fun call!334260 () ListLongMap!4699)

(assert (=> b!4767691 (= lt!1930579 call!334260)))

(declare-fun lemmaInGenericMapThenInLongMap!203 (ListLongMap!4699 K!14974 Hashable!6594) Unit!138281)

(assert (=> b!4767691 (= lt!1930592 (lemmaInGenericMapThenInLongMap!203 lt!1930579 key!1776 (hashF!12455 thiss!42052)))))

(declare-fun res!2022083 () Bool)

(declare-fun call!334261 () Bool)

(assert (=> b!4767691 (= res!2022083 call!334261)))

(declare-fun e!2975926 () Bool)

(assert (=> b!4767691 (=> (not res!2022083) (not e!2975926))))

(assert (=> b!4767691 e!2975926))

(declare-fun bm!334253 () Bool)

(declare-fun call!334259 () (_ BitVec 64))

(declare-fun call!334258 () List!53622)

(declare-fun c!813263 () Bool)

(assert (=> bm!334253 (= call!334258 (apply!12636 (ite c!813263 lt!1930579 call!334260) call!334259))))

(declare-fun bm!334254 () Bool)

(declare-fun call!334262 () Option!12689)

(assert (=> bm!334254 (= call!334262 (getPair!649 call!334258 key!1776))))

(declare-fun bm!334256 () Bool)

(assert (=> bm!334256 (= call!334261 (contains!16851 (ite c!813263 lt!1930579 call!334260) call!334259))))

(declare-fun lt!1930593 () (_ BitVec 64))

(declare-fun e!2975930 () Bool)

(declare-fun b!4767692 () Bool)

(assert (=> b!4767692 (= e!2975930 (isDefined!9848 (getPair!649 (apply!12637 (v!47701 (underlying!10074 thiss!42052)) lt!1930593) key!1776)))))

(declare-fun b!4767693 () Bool)

(declare-fun e!2975931 () Bool)

(declare-fun call!334263 () Bool)

(assert (=> b!4767693 (= e!2975931 call!334263)))

(declare-fun bm!334257 () Bool)

(assert (=> bm!334257 (= call!334260 (map!11999 (v!47701 (underlying!10074 thiss!42052))))))

(declare-fun b!4767694 () Bool)

(assert (=> b!4767694 false))

(declare-fun lt!1930583 () Unit!138281)

(declare-fun lt!1930584 () Unit!138281)

(assert (=> b!4767694 (= lt!1930583 lt!1930584)))

(declare-fun lt!1930582 () ListLongMap!4699)

(declare-fun contains!16853 (ListMap!5797 K!14974) Bool)

(assert (=> b!4767694 (contains!16853 (extractMap!2150 (toList!6301 lt!1930582)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!203 (ListLongMap!4699 K!14974 Hashable!6594) Unit!138281)

(assert (=> b!4767694 (= lt!1930584 (lemmaInLongMapThenInGenericMap!203 lt!1930582 key!1776 (hashF!12455 thiss!42052)))))

(assert (=> b!4767694 (= lt!1930582 call!334260)))

(declare-fun e!2975925 () Unit!138281)

(declare-fun Unit!138285 () Unit!138281)

(assert (=> b!4767694 (= e!2975925 Unit!138285)))

(declare-fun b!4767695 () Bool)

(declare-fun e!2975928 () Unit!138281)

(declare-fun Unit!138286 () Unit!138281)

(assert (=> b!4767695 (= e!2975928 Unit!138286)))

(declare-fun b!4767696 () Bool)

(assert (=> b!4767696 false))

(declare-fun lt!1930587 () Unit!138281)

(declare-fun lt!1930588 () Unit!138281)

(assert (=> b!4767696 (= lt!1930587 lt!1930588)))

(declare-fun lt!1930590 () List!53623)

(declare-fun lt!1930578 () List!53622)

(assert (=> b!4767696 (contains!16850 lt!1930590 (tuple2!55557 lt!1930593 lt!1930578))))

(assert (=> b!4767696 (= lt!1930588 (lemmaGetValueByKeyImpliesContainsTuple!935 lt!1930590 lt!1930593 lt!1930578))))

(assert (=> b!4767696 (= lt!1930578 (apply!12637 (v!47701 (underlying!10074 thiss!42052)) lt!1930593))))

(assert (=> b!4767696 (= lt!1930590 (toList!6301 (map!11999 (v!47701 (underlying!10074 thiss!42052)))))))

(declare-fun lt!1930595 () Unit!138281)

(declare-fun lt!1930581 () Unit!138281)

(assert (=> b!4767696 (= lt!1930595 lt!1930581)))

(declare-fun lt!1930589 () List!53623)

(assert (=> b!4767696 (isDefined!9847 (getValueByKey!2191 lt!1930589 lt!1930593))))

(assert (=> b!4767696 (= lt!1930581 (lemmaContainsKeyImpliesGetValueByKeyDefined!1992 lt!1930589 lt!1930593))))

(assert (=> b!4767696 (= lt!1930589 (toList!6301 (map!11999 (v!47701 (underlying!10074 thiss!42052)))))))

(declare-fun lt!1930576 () Unit!138281)

(declare-fun lt!1930594 () Unit!138281)

(assert (=> b!4767696 (= lt!1930576 lt!1930594)))

(declare-fun lt!1930580 () List!53623)

(declare-fun containsKey!3668 (List!53623 (_ BitVec 64)) Bool)

(assert (=> b!4767696 (containsKey!3668 lt!1930580 lt!1930593)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!204 (List!53623 (_ BitVec 64)) Unit!138281)

(assert (=> b!4767696 (= lt!1930594 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!204 lt!1930580 lt!1930593))))

(assert (=> b!4767696 (= lt!1930580 (toList!6301 (map!11999 (v!47701 (underlying!10074 thiss!42052)))))))

(declare-fun Unit!138287 () Unit!138281)

(assert (=> b!4767696 (= e!2975928 Unit!138287)))

(declare-fun b!4767697 () Bool)

(declare-fun Unit!138288 () Unit!138281)

(assert (=> b!4767697 (= e!2975925 Unit!138288)))

(declare-fun b!4767698 () Bool)

(declare-fun e!2975929 () Unit!138281)

(declare-fun Unit!138289 () Unit!138281)

(assert (=> b!4767698 (= e!2975929 Unit!138289)))

(declare-fun d!1523970 () Bool)

(declare-fun lt!1930585 () Bool)

(assert (=> d!1523970 (= lt!1930585 (contains!16853 (map!11998 thiss!42052) key!1776))))

(assert (=> d!1523970 (= lt!1930585 e!2975930)))

(declare-fun res!2022084 () Bool)

(assert (=> d!1523970 (=> (not res!2022084) (not e!2975930))))

(declare-fun contains!16854 (MutLongMap!4933 (_ BitVec 64)) Bool)

(assert (=> d!1523970 (= res!2022084 (contains!16854 (v!47701 (underlying!10074 thiss!42052)) lt!1930593))))

(declare-fun lt!1930591 () Unit!138281)

(assert (=> d!1523970 (= lt!1930591 e!2975927)))

(assert (=> d!1523970 (= c!813263 (contains!16853 (extractMap!2150 (toList!6301 (map!11999 (v!47701 (underlying!10074 thiss!42052))))) key!1776))))

(declare-fun lt!1930586 () Unit!138281)

(assert (=> d!1523970 (= lt!1930586 e!2975929)))

(declare-fun c!813264 () Bool)

(assert (=> d!1523970 (= c!813264 (contains!16854 (v!47701 (underlying!10074 thiss!42052)) lt!1930593))))

(assert (=> d!1523970 (= lt!1930593 (hash!4575 (hashF!12455 thiss!42052) key!1776))))

(assert (=> d!1523970 (valid!3937 thiss!42052)))

(assert (=> d!1523970 (= (contains!16852 thiss!42052 key!1776) lt!1930585)))

(declare-fun bm!334255 () Bool)

(assert (=> bm!334255 (= call!334259 (hash!4575 (hashF!12455 thiss!42052) key!1776))))

(declare-fun b!4767699 () Bool)

(assert (=> b!4767699 (= e!2975926 call!334263)))

(declare-fun b!4767700 () Bool)

(assert (=> b!4767700 (= e!2975927 e!2975925)))

(declare-fun res!2022085 () Bool)

(assert (=> b!4767700 (= res!2022085 call!334261)))

(assert (=> b!4767700 (=> (not res!2022085) (not e!2975931))))

(declare-fun c!813265 () Bool)

(assert (=> b!4767700 (= c!813265 e!2975931)))

(assert (=> b!4767701 (= e!2975929 (forallContained!3866 (toList!6301 (map!11999 (v!47701 (underlying!10074 thiss!42052)))) lambda!224535 (tuple2!55557 lt!1930593 (apply!12637 (v!47701 (underlying!10074 thiss!42052)) lt!1930593))))))

(declare-fun c!813266 () Bool)

(assert (=> b!4767701 (= c!813266 (not (contains!16850 (toList!6301 (map!11999 (v!47701 (underlying!10074 thiss!42052)))) (tuple2!55557 lt!1930593 (apply!12637 (v!47701 (underlying!10074 thiss!42052)) lt!1930593)))))))

(declare-fun lt!1930577 () Unit!138281)

(assert (=> b!4767701 (= lt!1930577 e!2975928)))

(declare-fun bm!334258 () Bool)

(assert (=> bm!334258 (= call!334263 (isDefined!9848 call!334262))))

(assert (= (and d!1523970 c!813264) b!4767701))

(assert (= (and d!1523970 (not c!813264)) b!4767698))

(assert (= (and b!4767701 c!813266) b!4767696))

(assert (= (and b!4767701 (not c!813266)) b!4767695))

(assert (= (and d!1523970 c!813263) b!4767691))

(assert (= (and d!1523970 (not c!813263)) b!4767700))

(assert (= (and b!4767691 res!2022083) b!4767699))

(assert (= (and b!4767700 res!2022085) b!4767693))

(assert (= (and b!4767700 c!813265) b!4767694))

(assert (= (and b!4767700 (not c!813265)) b!4767697))

(assert (= (or b!4767691 b!4767700 b!4767693 b!4767694) bm!334257))

(assert (= (or b!4767691 b!4767699 b!4767700 b!4767693) bm!334255))

(assert (= (or b!4767691 b!4767700) bm!334256))

(assert (= (or b!4767699 b!4767693) bm!334253))

(assert (= (or b!4767699 b!4767693) bm!334254))

(assert (= (or b!4767699 b!4767693) bm!334258))

(assert (= (and d!1523970 res!2022084) b!4767692))

(declare-fun m!5738964 () Bool)

(assert (=> bm!334253 m!5738964))

(assert (=> b!4767701 m!5738932))

(declare-fun m!5738966 () Bool)

(assert (=> b!4767701 m!5738966))

(declare-fun m!5738968 () Bool)

(assert (=> b!4767701 m!5738968))

(declare-fun m!5738970 () Bool)

(assert (=> b!4767701 m!5738970))

(declare-fun m!5738972 () Bool)

(assert (=> b!4767696 m!5738972))

(declare-fun m!5738974 () Bool)

(assert (=> b!4767696 m!5738974))

(assert (=> b!4767696 m!5738966))

(declare-fun m!5738976 () Bool)

(assert (=> b!4767696 m!5738976))

(declare-fun m!5738978 () Bool)

(assert (=> b!4767696 m!5738978))

(declare-fun m!5738980 () Bool)

(assert (=> b!4767696 m!5738980))

(assert (=> b!4767696 m!5738932))

(declare-fun m!5738982 () Bool)

(assert (=> b!4767696 m!5738982))

(assert (=> b!4767696 m!5738976))

(declare-fun m!5738984 () Bool)

(assert (=> b!4767696 m!5738984))

(assert (=> d!1523970 m!5738934))

(declare-fun m!5738986 () Bool)

(assert (=> d!1523970 m!5738986))

(declare-fun m!5738988 () Bool)

(assert (=> d!1523970 m!5738988))

(declare-fun m!5738990 () Bool)

(assert (=> d!1523970 m!5738990))

(assert (=> d!1523970 m!5738988))

(assert (=> d!1523970 m!5738932))

(assert (=> d!1523970 m!5738928))

(declare-fun m!5738992 () Bool)

(assert (=> d!1523970 m!5738992))

(assert (=> d!1523970 m!5738928))

(assert (=> d!1523970 m!5738962))

(declare-fun m!5738994 () Bool)

(assert (=> bm!334258 m!5738994))

(declare-fun m!5738996 () Bool)

(assert (=> bm!334254 m!5738996))

(assert (=> bm!334255 m!5738934))

(declare-fun m!5738998 () Bool)

(assert (=> b!4767691 m!5738998))

(assert (=> bm!334257 m!5738932))

(declare-fun m!5739000 () Bool)

(assert (=> bm!334256 m!5739000))

(declare-fun m!5739002 () Bool)

(assert (=> b!4767694 m!5739002))

(assert (=> b!4767694 m!5739002))

(declare-fun m!5739004 () Bool)

(assert (=> b!4767694 m!5739004))

(declare-fun m!5739006 () Bool)

(assert (=> b!4767694 m!5739006))

(assert (=> b!4767692 m!5738966))

(assert (=> b!4767692 m!5738966))

(declare-fun m!5739008 () Bool)

(assert (=> b!4767692 m!5739008))

(assert (=> b!4767692 m!5739008))

(declare-fun m!5739010 () Bool)

(assert (=> b!4767692 m!5739010))

(assert (=> b!4767667 d!1523970))

(declare-fun d!1523972 () Bool)

(assert (=> d!1523972 (= (get!18050 lt!1930524) (v!47702 lt!1930524))))

(assert (=> b!4767658 d!1523972))

(declare-fun d!1523974 () Bool)

(assert (=> d!1523974 (= (get!18051 (getValueByKey!2190 (toList!6302 (extractMap!2150 (toList!6301 lt!1930526))) key!1776)) (v!47703 (getValueByKey!2190 (toList!6302 (extractMap!2150 (toList!6301 lt!1930526))) key!1776)))))

(assert (=> b!4767658 d!1523974))

(declare-fun b!4767711 () Bool)

(declare-fun e!2975936 () Option!12690)

(declare-fun e!2975937 () Option!12690)

(assert (=> b!4767711 (= e!2975936 e!2975937)))

(declare-fun c!813272 () Bool)

(assert (=> b!4767711 (= c!813272 (and ((_ is Cons!53498) (toList!6302 (extractMap!2150 (toList!6301 lt!1930526)))) (not (= (_1!31071 (h!59910 (toList!6302 (extractMap!2150 (toList!6301 lt!1930526))))) key!1776))))))

(declare-fun b!4767712 () Bool)

(assert (=> b!4767712 (= e!2975937 (getValueByKey!2190 (t!361048 (toList!6302 (extractMap!2150 (toList!6301 lt!1930526)))) key!1776))))

(declare-fun d!1523976 () Bool)

(declare-fun c!813271 () Bool)

(assert (=> d!1523976 (= c!813271 (and ((_ is Cons!53498) (toList!6302 (extractMap!2150 (toList!6301 lt!1930526)))) (= (_1!31071 (h!59910 (toList!6302 (extractMap!2150 (toList!6301 lt!1930526))))) key!1776)))))

(assert (=> d!1523976 (= (getValueByKey!2190 (toList!6302 (extractMap!2150 (toList!6301 lt!1930526))) key!1776) e!2975936)))

(declare-fun b!4767710 () Bool)

(assert (=> b!4767710 (= e!2975936 (Some!12689 (_2!31071 (h!59910 (toList!6302 (extractMap!2150 (toList!6301 lt!1930526)))))))))

(declare-fun b!4767713 () Bool)

(assert (=> b!4767713 (= e!2975937 None!12689)))

(assert (= (and d!1523976 c!813271) b!4767710))

(assert (= (and d!1523976 (not c!813271)) b!4767711))

(assert (= (and b!4767711 c!813272) b!4767712))

(assert (= (and b!4767711 (not c!813272)) b!4767713))

(declare-fun m!5739012 () Bool)

(assert (=> b!4767712 m!5739012))

(assert (=> b!4767658 d!1523976))

(declare-fun bs!1149092 () Bool)

(declare-fun d!1523978 () Bool)

(assert (= bs!1149092 (and d!1523978 b!4767661)))

(declare-fun lambda!224538 () Int)

(assert (=> bs!1149092 (= lambda!224538 lambda!224532)))

(declare-fun bs!1149093 () Bool)

(assert (= bs!1149093 (and d!1523978 b!4767701)))

(assert (=> bs!1149093 (= lambda!224538 lambda!224535)))

(declare-fun lt!1930598 () ListMap!5797)

(declare-fun invariantList!1662 (List!53622) Bool)

(assert (=> d!1523978 (invariantList!1662 (toList!6302 lt!1930598))))

(declare-fun e!2975940 () ListMap!5797)

(assert (=> d!1523978 (= lt!1930598 e!2975940)))

(declare-fun c!813275 () Bool)

(assert (=> d!1523978 (= c!813275 ((_ is Cons!53499) (toList!6301 lt!1930526)))))

(declare-fun forall!11878 (List!53623 Int) Bool)

(assert (=> d!1523978 (forall!11878 (toList!6301 lt!1930526) lambda!224538)))

(assert (=> d!1523978 (= (extractMap!2150 (toList!6301 lt!1930526)) lt!1930598)))

(declare-fun b!4767718 () Bool)

(declare-fun addToMapMapFromBucket!1627 (List!53622 ListMap!5797) ListMap!5797)

(assert (=> b!4767718 (= e!2975940 (addToMapMapFromBucket!1627 (_2!31072 (h!59911 (toList!6301 lt!1930526))) (extractMap!2150 (t!361049 (toList!6301 lt!1930526)))))))

(declare-fun b!4767719 () Bool)

(assert (=> b!4767719 (= e!2975940 (ListMap!5798 Nil!53498))))

(assert (= (and d!1523978 c!813275) b!4767718))

(assert (= (and d!1523978 (not c!813275)) b!4767719))

(declare-fun m!5739014 () Bool)

(assert (=> d!1523978 m!5739014))

(declare-fun m!5739016 () Bool)

(assert (=> d!1523978 m!5739016))

(declare-fun m!5739018 () Bool)

(assert (=> b!4767718 m!5739018))

(assert (=> b!4767718 m!5739018))

(declare-fun m!5739020 () Bool)

(assert (=> b!4767718 m!5739020))

(assert (=> b!4767658 d!1523978))

(declare-fun bs!1149094 () Bool)

(declare-fun b!4767724 () Bool)

(assert (= bs!1149094 (and b!4767724 b!4767661)))

(declare-fun lambda!224541 () Int)

(assert (=> bs!1149094 (= lambda!224541 lambda!224532)))

(declare-fun bs!1149095 () Bool)

(assert (= bs!1149095 (and b!4767724 b!4767701)))

(assert (=> bs!1149095 (= lambda!224541 lambda!224535)))

(declare-fun bs!1149096 () Bool)

(assert (= bs!1149096 (and b!4767724 d!1523978)))

(assert (=> bs!1149096 (= lambda!224541 lambda!224538)))

(declare-fun d!1523980 () Bool)

(declare-fun res!2022090 () Bool)

(declare-fun e!2975943 () Bool)

(assert (=> d!1523980 (=> (not res!2022090) (not e!2975943))))

(declare-fun valid!3938 (MutLongMap!4933) Bool)

(assert (=> d!1523980 (= res!2022090 (valid!3938 (v!47701 (underlying!10074 thiss!42052))))))

(assert (=> d!1523980 (= (valid!3937 thiss!42052) e!2975943)))

(declare-fun res!2022091 () Bool)

(assert (=> b!4767724 (=> (not res!2022091) (not e!2975943))))

(assert (=> b!4767724 (= res!2022091 (forall!11878 (toList!6301 (map!11999 (v!47701 (underlying!10074 thiss!42052)))) lambda!224541))))

(declare-fun b!4767725 () Bool)

(declare-fun allKeysSameHashInMap!2023 (ListLongMap!4699 Hashable!6594) Bool)

(assert (=> b!4767725 (= e!2975943 (allKeysSameHashInMap!2023 (map!11999 (v!47701 (underlying!10074 thiss!42052))) (hashF!12455 thiss!42052)))))

(assert (= (and d!1523980 res!2022090) b!4767724))

(assert (= (and b!4767724 res!2022091) b!4767725))

(declare-fun m!5739022 () Bool)

(assert (=> d!1523980 m!5739022))

(assert (=> b!4767724 m!5738932))

(declare-fun m!5739024 () Bool)

(assert (=> b!4767724 m!5739024))

(assert (=> b!4767725 m!5738932))

(assert (=> b!4767725 m!5738932))

(declare-fun m!5739026 () Bool)

(assert (=> b!4767725 m!5739026))

(assert (=> b!4767662 d!1523980))

(declare-fun d!1523982 () Bool)

(declare-fun res!2022096 () Bool)

(declare-fun e!2975948 () Bool)

(assert (=> d!1523982 (=> res!2022096 e!2975948)))

(assert (=> d!1523982 (= res!2022096 (not ((_ is Cons!53498) lt!1930532)))))

(assert (=> d!1523982 (= (noDuplicateKeys!2256 lt!1930532) e!2975948)))

(declare-fun b!4767730 () Bool)

(declare-fun e!2975949 () Bool)

(assert (=> b!4767730 (= e!2975948 e!2975949)))

(declare-fun res!2022097 () Bool)

(assert (=> b!4767730 (=> (not res!2022097) (not e!2975949))))

(declare-fun containsKey!3669 (List!53622 K!14974) Bool)

(assert (=> b!4767730 (= res!2022097 (not (containsKey!3669 (t!361048 lt!1930532) (_1!31071 (h!59910 lt!1930532)))))))

(declare-fun b!4767731 () Bool)

(assert (=> b!4767731 (= e!2975949 (noDuplicateKeys!2256 (t!361048 lt!1930532)))))

(assert (= (and d!1523982 (not res!2022096)) b!4767730))

(assert (= (and b!4767730 res!2022097) b!4767731))

(declare-fun m!5739028 () Bool)

(assert (=> b!4767730 m!5739028))

(declare-fun m!5739030 () Bool)

(assert (=> b!4767731 m!5739030))

(assert (=> b!4767663 d!1523982))

(declare-fun d!1523984 () Bool)

(assert (=> d!1523984 (isDefined!9847 (getValueByKey!2191 (toList!6301 lt!1930526) lt!1930528))))

(declare-fun lt!1930601 () Unit!138281)

(declare-fun choose!33982 (List!53623 (_ BitVec 64)) Unit!138281)

(assert (=> d!1523984 (= lt!1930601 (choose!33982 (toList!6301 lt!1930526) lt!1930528))))

(declare-fun e!2975952 () Bool)

(assert (=> d!1523984 e!2975952))

(declare-fun res!2022100 () Bool)

(assert (=> d!1523984 (=> (not res!2022100) (not e!2975952))))

(declare-fun isStrictlySorted!809 (List!53623) Bool)

(assert (=> d!1523984 (= res!2022100 (isStrictlySorted!809 (toList!6301 lt!1930526)))))

(assert (=> d!1523984 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1992 (toList!6301 lt!1930526) lt!1930528) lt!1930601)))

(declare-fun b!4767734 () Bool)

(assert (=> b!4767734 (= e!2975952 (containsKey!3668 (toList!6301 lt!1930526) lt!1930528))))

(assert (= (and d!1523984 res!2022100) b!4767734))

(assert (=> d!1523984 m!5738946))

(assert (=> d!1523984 m!5738946))

(assert (=> d!1523984 m!5738948))

(declare-fun m!5739032 () Bool)

(assert (=> d!1523984 m!5739032))

(declare-fun m!5739034 () Bool)

(assert (=> d!1523984 m!5739034))

(declare-fun m!5739036 () Bool)

(assert (=> b!4767734 m!5739036))

(assert (=> b!4767659 d!1523984))

(declare-fun d!1523986 () Bool)

(declare-fun isEmpty!29283 (Option!12691) Bool)

(assert (=> d!1523986 (= (isDefined!9847 (getValueByKey!2191 (toList!6301 lt!1930526) lt!1930528)) (not (isEmpty!29283 (getValueByKey!2191 (toList!6301 lt!1930526) lt!1930528))))))

(declare-fun bs!1149097 () Bool)

(assert (= bs!1149097 d!1523986))

(assert (=> bs!1149097 m!5738946))

(declare-fun m!5739038 () Bool)

(assert (=> bs!1149097 m!5739038))

(assert (=> b!4767659 d!1523986))

(declare-fun d!1523988 () Bool)

(declare-fun c!813280 () Bool)

(assert (=> d!1523988 (= c!813280 (and ((_ is Cons!53499) (toList!6301 lt!1930526)) (= (_1!31072 (h!59911 (toList!6301 lt!1930526))) lt!1930528)))))

(declare-fun e!2975957 () Option!12691)

(assert (=> d!1523988 (= (getValueByKey!2191 (toList!6301 lt!1930526) lt!1930528) e!2975957)))

(declare-fun b!4767744 () Bool)

(declare-fun e!2975958 () Option!12691)

(assert (=> b!4767744 (= e!2975957 e!2975958)))

(declare-fun c!813281 () Bool)

(assert (=> b!4767744 (= c!813281 (and ((_ is Cons!53499) (toList!6301 lt!1930526)) (not (= (_1!31072 (h!59911 (toList!6301 lt!1930526))) lt!1930528))))))

(declare-fun b!4767745 () Bool)

(assert (=> b!4767745 (= e!2975958 (getValueByKey!2191 (t!361049 (toList!6301 lt!1930526)) lt!1930528))))

(declare-fun b!4767746 () Bool)

(assert (=> b!4767746 (= e!2975958 None!12690)))

(declare-fun b!4767743 () Bool)

(assert (=> b!4767743 (= e!2975957 (Some!12690 (_2!31072 (h!59911 (toList!6301 lt!1930526)))))))

(assert (= (and d!1523988 c!813280) b!4767743))

(assert (= (and d!1523988 (not c!813280)) b!4767744))

(assert (= (and b!4767744 c!813281) b!4767745))

(assert (= (and b!4767744 (not c!813281)) b!4767746))

(declare-fun m!5739040 () Bool)

(assert (=> b!4767745 m!5739040))

(assert (=> b!4767659 d!1523988))

(declare-fun d!1523990 () Bool)

(assert (=> d!1523990 (contains!16850 (toList!6301 lt!1930526) (tuple2!55557 lt!1930528 lt!1930532))))

(declare-fun lt!1930604 () Unit!138281)

(declare-fun choose!33983 (List!53623 (_ BitVec 64) List!53622) Unit!138281)

(assert (=> d!1523990 (= lt!1930604 (choose!33983 (toList!6301 lt!1930526) lt!1930528 lt!1930532))))

(declare-fun e!2975961 () Bool)

(assert (=> d!1523990 e!2975961))

(declare-fun res!2022103 () Bool)

(assert (=> d!1523990 (=> (not res!2022103) (not e!2975961))))

(assert (=> d!1523990 (= res!2022103 (isStrictlySorted!809 (toList!6301 lt!1930526)))))

(assert (=> d!1523990 (= (lemmaGetValueByKeyImpliesContainsTuple!935 (toList!6301 lt!1930526) lt!1930528 lt!1930532) lt!1930604)))

(declare-fun b!4767749 () Bool)

(assert (=> b!4767749 (= e!2975961 (= (getValueByKey!2191 (toList!6301 lt!1930526) lt!1930528) (Some!12690 lt!1930532)))))

(assert (= (and d!1523990 res!2022103) b!4767749))

(declare-fun m!5739042 () Bool)

(assert (=> d!1523990 m!5739042))

(declare-fun m!5739044 () Bool)

(assert (=> d!1523990 m!5739044))

(assert (=> d!1523990 m!5739034))

(assert (=> b!4767749 m!5738946))

(assert (=> b!4767659 d!1523990))

(declare-fun d!1523992 () Bool)

(assert (=> d!1523992 (= (array_inv!5795 (_keys!5275 (v!47700 (underlying!10073 (v!47701 (underlying!10074 thiss!42052)))))) (bvsge (size!36281 (_keys!5275 (v!47700 (underlying!10073 (v!47701 (underlying!10074 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4767660 d!1523992))

(declare-fun d!1523994 () Bool)

(assert (=> d!1523994 (= (array_inv!5796 (_values!5246 (v!47700 (underlying!10073 (v!47701 (underlying!10074 thiss!42052)))))) (bvsge (size!36282 (_values!5246 (v!47700 (underlying!10073 (v!47701 (underlying!10074 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4767660 d!1523994))

(declare-fun d!1523996 () Bool)

(assert (=> d!1523996 (contains!16850 (toList!6301 lt!1930526) (tuple2!55557 lt!1930528 lt!1930533))))

(declare-fun lt!1930607 () Unit!138281)

(declare-fun choose!33984 (ListLongMap!4699 (_ BitVec 64) List!53622) Unit!138281)

(assert (=> d!1523996 (= lt!1930607 (choose!33984 lt!1930526 lt!1930528 lt!1930533))))

(assert (=> d!1523996 (contains!16851 lt!1930526 lt!1930528)))

(assert (=> d!1523996 (= (lemmaGetValueImpliesTupleContained!441 lt!1930526 lt!1930528 lt!1930533) lt!1930607)))

(declare-fun bs!1149098 () Bool)

(assert (= bs!1149098 d!1523996))

(declare-fun m!5739046 () Bool)

(assert (=> bs!1149098 m!5739046))

(declare-fun m!5739048 () Bool)

(assert (=> bs!1149098 m!5739048))

(assert (=> bs!1149098 m!5738904))

(assert (=> b!4767661 d!1523996))

(declare-fun d!1523998 () Bool)

(declare-fun dynLambda!21954 (Int tuple2!55556) Bool)

(assert (=> d!1523998 (dynLambda!21954 lambda!224532 lt!1930531)))

(declare-fun lt!1930610 () Unit!138281)

(declare-fun choose!33985 (List!53623 Int tuple2!55556) Unit!138281)

(assert (=> d!1523998 (= lt!1930610 (choose!33985 (toList!6301 lt!1930526) lambda!224532 lt!1930531))))

(declare-fun e!2975964 () Bool)

(assert (=> d!1523998 e!2975964))

(declare-fun res!2022106 () Bool)

(assert (=> d!1523998 (=> (not res!2022106) (not e!2975964))))

(assert (=> d!1523998 (= res!2022106 (forall!11878 (toList!6301 lt!1930526) lambda!224532))))

(assert (=> d!1523998 (= (forallContained!3866 (toList!6301 lt!1930526) lambda!224532 lt!1930531) lt!1930610)))

(declare-fun b!4767753 () Bool)

(assert (=> b!4767753 (= e!2975964 (contains!16850 (toList!6301 lt!1930526) lt!1930531))))

(assert (= (and d!1523998 res!2022106) b!4767753))

(declare-fun b_lambda!184427 () Bool)

(assert (=> (not b_lambda!184427) (not d!1523998)))

(declare-fun m!5739050 () Bool)

(assert (=> d!1523998 m!5739050))

(declare-fun m!5739052 () Bool)

(assert (=> d!1523998 m!5739052))

(declare-fun m!5739054 () Bool)

(assert (=> d!1523998 m!5739054))

(assert (=> b!4767753 m!5738918))

(assert (=> b!4767661 d!1523998))

(declare-fun b!4767755 () Bool)

(declare-fun e!2975965 () Option!12690)

(declare-fun e!2975966 () Option!12690)

(assert (=> b!4767755 (= e!2975965 e!2975966)))

(declare-fun c!813283 () Bool)

(assert (=> b!4767755 (= c!813283 (and ((_ is Cons!53498) (toList!6302 (map!11998 thiss!42052))) (not (= (_1!31071 (h!59910 (toList!6302 (map!11998 thiss!42052)))) key!1776))))))

(declare-fun b!4767756 () Bool)

(assert (=> b!4767756 (= e!2975966 (getValueByKey!2190 (t!361048 (toList!6302 (map!11998 thiss!42052))) key!1776))))

(declare-fun d!1524000 () Bool)

(declare-fun c!813282 () Bool)

(assert (=> d!1524000 (= c!813282 (and ((_ is Cons!53498) (toList!6302 (map!11998 thiss!42052))) (= (_1!31071 (h!59910 (toList!6302 (map!11998 thiss!42052)))) key!1776)))))

(assert (=> d!1524000 (= (getValueByKey!2190 (toList!6302 (map!11998 thiss!42052)) key!1776) e!2975965)))

(declare-fun b!4767754 () Bool)

(assert (=> b!4767754 (= e!2975965 (Some!12689 (_2!31071 (h!59910 (toList!6302 (map!11998 thiss!42052))))))))

(declare-fun b!4767757 () Bool)

(assert (=> b!4767757 (= e!2975966 None!12689)))

(assert (= (and d!1524000 c!813282) b!4767754))

(assert (= (and d!1524000 (not c!813282)) b!4767755))

(assert (= (and b!4767755 c!813283) b!4767756))

(assert (= (and b!4767755 (not c!813283)) b!4767757))

(declare-fun m!5739056 () Bool)

(assert (=> b!4767756 m!5739056))

(assert (=> b!4767661 d!1524000))

(declare-fun d!1524002 () Bool)

(declare-fun map!12000 (LongMapFixedSize!9866) ListLongMap!4699)

(assert (=> d!1524002 (= (map!11999 (v!47701 (underlying!10074 thiss!42052))) (map!12000 (v!47700 (underlying!10073 (v!47701 (underlying!10074 thiss!42052))))))))

(declare-fun bs!1149099 () Bool)

(assert (= bs!1149099 d!1524002))

(declare-fun m!5739058 () Bool)

(assert (=> bs!1149099 m!5739058))

(assert (=> b!4767661 d!1524002))

(declare-fun d!1524004 () Bool)

(declare-fun lt!1930613 () ListMap!5797)

(assert (=> d!1524004 (invariantList!1662 (toList!6302 lt!1930613))))

(assert (=> d!1524004 (= lt!1930613 (extractMap!2150 (toList!6301 (map!11999 (v!47701 (underlying!10074 thiss!42052))))))))

(assert (=> d!1524004 (valid!3937 thiss!42052)))

(assert (=> d!1524004 (= (map!11998 thiss!42052) lt!1930613)))

(declare-fun bs!1149100 () Bool)

(assert (= bs!1149100 d!1524004))

(declare-fun m!5739060 () Bool)

(assert (=> bs!1149100 m!5739060))

(assert (=> bs!1149100 m!5738932))

(assert (=> bs!1149100 m!5738988))

(assert (=> bs!1149100 m!5738962))

(assert (=> b!4767661 d!1524004))

(declare-fun d!1524006 () Bool)

(assert (=> d!1524006 (= (get!18050 (getPair!649 lt!1930532 key!1776)) (v!47702 (getPair!649 lt!1930532 key!1776)))))

(assert (=> b!4767661 d!1524006))

(declare-fun d!1524008 () Bool)

(declare-fun lt!1930616 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9589 (List!53623) (InoxSet tuple2!55556))

(assert (=> d!1524008 (= lt!1930616 (select (content!9589 (toList!6301 lt!1930526)) lt!1930523))))

(declare-fun e!2975971 () Bool)

(assert (=> d!1524008 (= lt!1930616 e!2975971)))

(declare-fun res!2022111 () Bool)

(assert (=> d!1524008 (=> (not res!2022111) (not e!2975971))))

(assert (=> d!1524008 (= res!2022111 ((_ is Cons!53499) (toList!6301 lt!1930526)))))

(assert (=> d!1524008 (= (contains!16850 (toList!6301 lt!1930526) lt!1930523) lt!1930616)))

(declare-fun b!4767762 () Bool)

(declare-fun e!2975972 () Bool)

(assert (=> b!4767762 (= e!2975971 e!2975972)))

(declare-fun res!2022112 () Bool)

(assert (=> b!4767762 (=> res!2022112 e!2975972)))

(assert (=> b!4767762 (= res!2022112 (= (h!59911 (toList!6301 lt!1930526)) lt!1930523))))

(declare-fun b!4767763 () Bool)

(assert (=> b!4767763 (= e!2975972 (contains!16850 (t!361049 (toList!6301 lt!1930526)) lt!1930523))))

(assert (= (and d!1524008 res!2022111) b!4767762))

(assert (= (and b!4767762 (not res!2022112)) b!4767763))

(declare-fun m!5739062 () Bool)

(assert (=> d!1524008 m!5739062))

(declare-fun m!5739064 () Bool)

(assert (=> d!1524008 m!5739064))

(declare-fun m!5739066 () Bool)

(assert (=> b!4767763 m!5739066))

(assert (=> b!4767661 d!1524008))

(declare-fun d!1524010 () Bool)

(declare-fun e!2975975 () Bool)

(assert (=> d!1524010 e!2975975))

(declare-fun c!813286 () Bool)

(assert (=> d!1524010 (= c!813286 (contains!16854 (v!47701 (underlying!10074 thiss!42052)) lt!1930528))))

(declare-fun lt!1930619 () List!53622)

(declare-fun apply!12638 (LongMapFixedSize!9866 (_ BitVec 64)) List!53622)

(assert (=> d!1524010 (= lt!1930619 (apply!12638 (v!47700 (underlying!10073 (v!47701 (underlying!10074 thiss!42052)))) lt!1930528))))

(assert (=> d!1524010 (valid!3938 (v!47701 (underlying!10074 thiss!42052)))))

(assert (=> d!1524010 (= (apply!12637 (v!47701 (underlying!10074 thiss!42052)) lt!1930528) lt!1930619)))

(declare-fun b!4767768 () Bool)

(declare-fun get!18052 (Option!12691) List!53622)

(assert (=> b!4767768 (= e!2975975 (= lt!1930619 (get!18052 (getValueByKey!2191 (toList!6301 (map!11999 (v!47701 (underlying!10074 thiss!42052)))) lt!1930528))))))

(declare-fun b!4767769 () Bool)

(declare-fun dynLambda!21955 (Int (_ BitVec 64)) List!53622)

(assert (=> b!4767769 (= e!2975975 (= lt!1930619 (dynLambda!21955 (defaultEntry!5351 (v!47700 (underlying!10073 (v!47701 (underlying!10074 thiss!42052))))) lt!1930528)))))

(assert (=> b!4767769 ((_ is LongMap!4933) (v!47701 (underlying!10074 thiss!42052)))))

(assert (= (and d!1524010 c!813286) b!4767768))

(assert (= (and d!1524010 (not c!813286)) b!4767769))

(declare-fun b_lambda!184429 () Bool)

(assert (=> (not b_lambda!184429) (not b!4767769)))

(declare-fun t!361051 () Bool)

(declare-fun tb!257479 () Bool)

(assert (=> (and b!4767660 (= (defaultEntry!5351 (v!47700 (underlying!10073 (v!47701 (underlying!10074 thiss!42052))))) (defaultEntry!5351 (v!47700 (underlying!10073 (v!47701 (underlying!10074 thiss!42052)))))) t!361051) tb!257479))

(assert (=> b!4767769 t!361051))

(declare-fun result!319122 () Bool)

(declare-fun b_and!341397 () Bool)

(assert (= b_and!341393 (and (=> t!361051 result!319122) b_and!341397)))

(declare-fun m!5739068 () Bool)

(assert (=> d!1524010 m!5739068))

(declare-fun m!5739070 () Bool)

(assert (=> d!1524010 m!5739070))

(assert (=> d!1524010 m!5739022))

(assert (=> b!4767768 m!5738932))

(declare-fun m!5739072 () Bool)

(assert (=> b!4767768 m!5739072))

(assert (=> b!4767768 m!5739072))

(declare-fun m!5739074 () Bool)

(assert (=> b!4767768 m!5739074))

(declare-fun m!5739076 () Bool)

(assert (=> b!4767769 m!5739076))

(assert (=> b!4767661 d!1524010))

(declare-fun d!1524012 () Bool)

(declare-fun hash!4576 (Hashable!6594 K!14974) (_ BitVec 64))

(assert (=> d!1524012 (= (hash!4575 (hashF!12455 thiss!42052) key!1776) (hash!4576 (hashF!12455 thiss!42052) key!1776))))

(declare-fun bs!1149101 () Bool)

(assert (= bs!1149101 d!1524012))

(declare-fun m!5739078 () Bool)

(assert (=> bs!1149101 m!5739078))

(assert (=> b!4767661 d!1524012))

(declare-fun b!4767786 () Bool)

(declare-fun e!2975990 () Option!12689)

(assert (=> b!4767786 (= e!2975990 (Some!12688 (h!59910 lt!1930533)))))

(declare-fun d!1524014 () Bool)

(declare-fun e!2975989 () Bool)

(assert (=> d!1524014 e!2975989))

(declare-fun res!2022122 () Bool)

(assert (=> d!1524014 (=> res!2022122 e!2975989)))

(declare-fun e!2975987 () Bool)

(assert (=> d!1524014 (= res!2022122 e!2975987)))

(declare-fun res!2022121 () Bool)

(assert (=> d!1524014 (=> (not res!2022121) (not e!2975987))))

(declare-fun lt!1930622 () Option!12689)

(declare-fun isEmpty!29284 (Option!12689) Bool)

(assert (=> d!1524014 (= res!2022121 (isEmpty!29284 lt!1930622))))

(assert (=> d!1524014 (= lt!1930622 e!2975990)))

(declare-fun c!813291 () Bool)

(assert (=> d!1524014 (= c!813291 (and ((_ is Cons!53498) lt!1930533) (= (_1!31071 (h!59910 lt!1930533)) key!1776)))))

(assert (=> d!1524014 (noDuplicateKeys!2256 lt!1930533)))

(assert (=> d!1524014 (= (getPair!649 lt!1930533 key!1776) lt!1930622)))

(declare-fun b!4767787 () Bool)

(assert (=> b!4767787 (= e!2975987 (not (containsKey!3669 lt!1930533 key!1776)))))

(declare-fun b!4767788 () Bool)

(declare-fun e!2975986 () Bool)

(declare-fun contains!16855 (List!53622 tuple2!55554) Bool)

(assert (=> b!4767788 (= e!2975986 (contains!16855 lt!1930533 (get!18050 lt!1930622)))))

(declare-fun b!4767789 () Bool)

(assert (=> b!4767789 (= e!2975989 e!2975986)))

(declare-fun res!2022124 () Bool)

(assert (=> b!4767789 (=> (not res!2022124) (not e!2975986))))

(assert (=> b!4767789 (= res!2022124 (isDefined!9848 lt!1930622))))

(declare-fun b!4767790 () Bool)

(declare-fun e!2975988 () Option!12689)

(assert (=> b!4767790 (= e!2975990 e!2975988)))

(declare-fun c!813292 () Bool)

(assert (=> b!4767790 (= c!813292 ((_ is Cons!53498) lt!1930533))))

(declare-fun b!4767791 () Bool)

(assert (=> b!4767791 (= e!2975988 None!12688)))

(declare-fun b!4767792 () Bool)

(declare-fun res!2022123 () Bool)

(assert (=> b!4767792 (=> (not res!2022123) (not e!2975986))))

(assert (=> b!4767792 (= res!2022123 (= (_1!31071 (get!18050 lt!1930622)) key!1776))))

(declare-fun b!4767793 () Bool)

(assert (=> b!4767793 (= e!2975988 (getPair!649 (t!361048 lt!1930533) key!1776))))

(assert (= (and d!1524014 c!813291) b!4767786))

(assert (= (and d!1524014 (not c!813291)) b!4767790))

(assert (= (and b!4767790 c!813292) b!4767793))

(assert (= (and b!4767790 (not c!813292)) b!4767791))

(assert (= (and d!1524014 res!2022121) b!4767787))

(assert (= (and d!1524014 (not res!2022122)) b!4767789))

(assert (= (and b!4767789 res!2022124) b!4767792))

(assert (= (and b!4767792 res!2022123) b!4767788))

(declare-fun m!5739080 () Bool)

(assert (=> d!1524014 m!5739080))

(declare-fun m!5739082 () Bool)

(assert (=> d!1524014 m!5739082))

(declare-fun m!5739084 () Bool)

(assert (=> b!4767787 m!5739084))

(declare-fun m!5739086 () Bool)

(assert (=> b!4767788 m!5739086))

(assert (=> b!4767788 m!5739086))

(declare-fun m!5739088 () Bool)

(assert (=> b!4767788 m!5739088))

(declare-fun m!5739090 () Bool)

(assert (=> b!4767789 m!5739090))

(assert (=> b!4767792 m!5739086))

(declare-fun m!5739092 () Bool)

(assert (=> b!4767793 m!5739092))

(assert (=> b!4767661 d!1524014))

(declare-fun bs!1149102 () Bool)

(declare-fun d!1524016 () Bool)

(assert (= bs!1149102 (and d!1524016 b!4767661)))

(declare-fun lambda!224554 () Int)

(assert (=> bs!1149102 (= lambda!224554 lambda!224532)))

(declare-fun bs!1149103 () Bool)

(assert (= bs!1149103 (and d!1524016 b!4767701)))

(assert (=> bs!1149103 (= lambda!224554 lambda!224535)))

(declare-fun bs!1149104 () Bool)

(assert (= bs!1149104 (and d!1524016 d!1523978)))

(assert (=> bs!1149104 (= lambda!224554 lambda!224538)))

(declare-fun bs!1149105 () Bool)

(assert (= bs!1149105 (and d!1524016 b!4767724)))

(assert (=> bs!1149105 (= lambda!224554 lambda!224541)))

(declare-fun b!4767814 () Bool)

(declare-fun res!2022145 () Bool)

(declare-fun e!2976003 () Bool)

(assert (=> b!4767814 (=> (not res!2022145) (not e!2976003))))

(assert (=> b!4767814 (= res!2022145 (allKeysSameHashInMap!2023 lt!1930526 (hashF!12455 thiss!42052)))))

(declare-fun b!4767815 () Bool)

(declare-fun res!2022148 () Bool)

(declare-fun e!2976002 () Bool)

(assert (=> b!4767815 (=> (not res!2022148) (not e!2976002))))

(assert (=> b!4767815 (= res!2022148 (allKeysSameHashInMap!2023 lt!1930526 (hashF!12455 thiss!42052)))))

(declare-fun b!4767816 () Bool)

(assert (=> b!4767816 (= e!2976003 (contains!16853 (extractMap!2150 (toList!6301 lt!1930526)) key!1776))))

(declare-fun b!4767817 () Bool)

(declare-fun res!2022151 () Bool)

(declare-fun e!2976005 () Bool)

(assert (=> b!4767817 (=> (not res!2022151) (not e!2976005))))

(assert (=> b!4767817 (= res!2022151 (allKeysSameHashInMap!2023 lt!1930526 (hashF!12455 thiss!42052)))))

(declare-fun lt!1930663 () List!53622)

(declare-fun e!2976004 () Bool)

(declare-fun lt!1930660 () (_ BitVec 64))

(declare-fun b!4767818 () Bool)

(assert (=> b!4767818 (= e!2976004 (= (getValueByKey!2191 (toList!6301 lt!1930526) lt!1930660) (Some!12690 lt!1930663)))))

(declare-fun b!4767819 () Bool)

(assert (=> b!4767819 (= e!2976005 (= (_2!31071 (get!18050 (getPair!649 (apply!12636 lt!1930526 (hash!4575 (hashF!12455 thiss!42052) key!1776)) key!1776))) (get!18051 (getValueByKey!2190 (toList!6302 (extractMap!2150 (toList!6301 lt!1930526))) key!1776))))))

(declare-fun lt!1930662 () Unit!138281)

(declare-fun lt!1930657 () Unit!138281)

(assert (=> b!4767819 (= lt!1930662 lt!1930657)))

(assert (=> b!4767819 e!2976002))

(declare-fun res!2022150 () Bool)

(assert (=> b!4767819 (=> (not res!2022150) (not e!2976002))))

(assert (=> b!4767819 (= res!2022150 (forall!11878 (toList!6301 lt!1930526) lambda!224554))))

(assert (=> b!4767819 (= lt!1930657 (lemmaInGenMapThenGetPairDefined!432 lt!1930526 key!1776 (hashF!12455 thiss!42052)))))

(assert (=> b!4767819 e!2976003))

(declare-fun res!2022149 () Bool)

(assert (=> b!4767819 (=> (not res!2022149) (not e!2976003))))

(assert (=> b!4767819 (= res!2022149 (forall!11878 (toList!6301 lt!1930526) lambda!224554))))

(declare-fun lt!1930673 () Unit!138281)

(assert (=> b!4767819 (= lt!1930673 (forallContained!3866 (toList!6301 lt!1930526) lambda!224554 (tuple2!55557 (hash!4575 (hashF!12455 thiss!42052) key!1776) (apply!12636 lt!1930526 (hash!4575 (hashF!12455 thiss!42052) key!1776)))))))

(declare-fun lt!1930670 () Unit!138281)

(declare-fun lt!1930661 () Unit!138281)

(assert (=> b!4767819 (= lt!1930670 lt!1930661)))

(assert (=> b!4767819 (contains!16850 (toList!6301 lt!1930526) (tuple2!55557 lt!1930660 lt!1930663))))

(assert (=> b!4767819 (= lt!1930661 (lemmaGetValueImpliesTupleContained!441 lt!1930526 lt!1930660 lt!1930663))))

(assert (=> b!4767819 e!2976004))

(declare-fun res!2022146 () Bool)

(assert (=> b!4767819 (=> (not res!2022146) (not e!2976004))))

(assert (=> b!4767819 (= res!2022146 (contains!16851 lt!1930526 lt!1930660))))

(assert (=> b!4767819 (= lt!1930663 (apply!12636 lt!1930526 (hash!4575 (hashF!12455 thiss!42052) key!1776)))))

(assert (=> b!4767819 (= lt!1930660 (hash!4575 (hashF!12455 thiss!42052) key!1776))))

(declare-fun lt!1930668 () Unit!138281)

(declare-fun lt!1930665 () Unit!138281)

(assert (=> b!4767819 (= lt!1930668 lt!1930665)))

(assert (=> b!4767819 (contains!16851 lt!1930526 (hash!4575 (hashF!12455 thiss!42052) key!1776))))

(assert (=> b!4767819 (= lt!1930665 (lemmaInGenMapThenLongMapContainsHash!842 lt!1930526 key!1776 (hashF!12455 thiss!42052)))))

(declare-fun b!4767820 () Bool)

(declare-fun res!2022154 () Bool)

(assert (=> b!4767820 (=> (not res!2022154) (not e!2976002))))

(assert (=> b!4767820 (= res!2022154 (contains!16853 (extractMap!2150 (toList!6301 lt!1930526)) key!1776))))

(declare-fun b!4767821 () Bool)

(declare-fun res!2022147 () Bool)

(assert (=> b!4767821 (=> (not res!2022147) (not e!2976005))))

(assert (=> b!4767821 (= res!2022147 (contains!16853 (extractMap!2150 (toList!6301 lt!1930526)) key!1776))))

(declare-fun b!4767822 () Bool)

(assert (=> b!4767822 (= e!2976002 (isDefined!9848 (getPair!649 (apply!12636 lt!1930526 (hash!4575 (hashF!12455 thiss!42052) key!1776)) key!1776)))))

(declare-fun lt!1930669 () Unit!138281)

(assert (=> b!4767822 (= lt!1930669 (forallContained!3866 (toList!6301 lt!1930526) lambda!224554 (tuple2!55557 (hash!4575 (hashF!12455 thiss!42052) key!1776) (apply!12636 lt!1930526 (hash!4575 (hashF!12455 thiss!42052) key!1776)))))))

(declare-fun lt!1930672 () Unit!138281)

(declare-fun lt!1930658 () Unit!138281)

(assert (=> b!4767822 (= lt!1930672 lt!1930658)))

(declare-fun lt!1930667 () (_ BitVec 64))

(declare-fun lt!1930664 () List!53622)

(assert (=> b!4767822 (contains!16850 (toList!6301 lt!1930526) (tuple2!55557 lt!1930667 lt!1930664))))

(assert (=> b!4767822 (= lt!1930658 (lemmaGetValueImpliesTupleContained!441 lt!1930526 lt!1930667 lt!1930664))))

(declare-fun e!2976001 () Bool)

(assert (=> b!4767822 e!2976001))

(declare-fun res!2022152 () Bool)

(assert (=> b!4767822 (=> (not res!2022152) (not e!2976001))))

(assert (=> b!4767822 (= res!2022152 (contains!16851 lt!1930526 lt!1930667))))

(assert (=> b!4767822 (= lt!1930664 (apply!12636 lt!1930526 (hash!4575 (hashF!12455 thiss!42052) key!1776)))))

(assert (=> b!4767822 (= lt!1930667 (hash!4575 (hashF!12455 thiss!42052) key!1776))))

(declare-fun lt!1930659 () Unit!138281)

(declare-fun lt!1930666 () Unit!138281)

(assert (=> b!4767822 (= lt!1930659 lt!1930666)))

(assert (=> b!4767822 (contains!16851 lt!1930526 (hash!4575 (hashF!12455 thiss!42052) key!1776))))

(assert (=> b!4767822 (= lt!1930666 (lemmaInGenMapThenLongMapContainsHash!842 lt!1930526 key!1776 (hashF!12455 thiss!42052)))))

(declare-fun b!4767823 () Bool)

(assert (=> b!4767823 (= e!2976001 (= (getValueByKey!2191 (toList!6301 lt!1930526) lt!1930667) (Some!12690 lt!1930664)))))

(assert (=> d!1524016 e!2976005))

(declare-fun res!2022153 () Bool)

(assert (=> d!1524016 (=> (not res!2022153) (not e!2976005))))

(assert (=> d!1524016 (= res!2022153 (forall!11878 (toList!6301 lt!1930526) lambda!224554))))

(declare-fun lt!1930671 () Unit!138281)

(declare-fun choose!33986 (ListLongMap!4699 K!14974 V!15220 Hashable!6594) Unit!138281)

(assert (=> d!1524016 (= lt!1930671 (choose!33986 lt!1930526 key!1776 (_2!31071 lt!1930529) (hashF!12455 thiss!42052)))))

(assert (=> d!1524016 (forall!11878 (toList!6301 lt!1930526) lambda!224554)))

(assert (=> d!1524016 (= (lemmaGetPairGetSameValueAsMap!64 lt!1930526 key!1776 (_2!31071 lt!1930529) (hashF!12455 thiss!42052)) lt!1930671)))

(assert (= (and d!1524016 res!2022153) b!4767817))

(assert (= (and b!4767817 res!2022151) b!4767821))

(assert (= (and b!4767821 res!2022147) b!4767819))

(assert (= (and b!4767819 res!2022146) b!4767818))

(assert (= (and b!4767819 res!2022149) b!4767814))

(assert (= (and b!4767814 res!2022145) b!4767816))

(assert (= (and b!4767819 res!2022150) b!4767815))

(assert (= (and b!4767815 res!2022148) b!4767820))

(assert (= (and b!4767820 res!2022154) b!4767822))

(assert (= (and b!4767822 res!2022152) b!4767823))

(assert (=> b!4767816 m!5738954))

(assert (=> b!4767816 m!5738954))

(declare-fun m!5739094 () Bool)

(assert (=> b!4767816 m!5739094))

(declare-fun m!5739096 () Bool)

(assert (=> b!4767814 m!5739096))

(assert (=> b!4767820 m!5738954))

(assert (=> b!4767820 m!5738954))

(assert (=> b!4767820 m!5739094))

(assert (=> b!4767819 m!5738900))

(declare-fun m!5739098 () Bool)

(assert (=> b!4767819 m!5739098))

(assert (=> b!4767819 m!5738934))

(declare-fun m!5739100 () Bool)

(assert (=> b!4767819 m!5739100))

(declare-fun m!5739102 () Bool)

(assert (=> b!4767819 m!5739102))

(assert (=> b!4767819 m!5738954))

(declare-fun m!5739104 () Bool)

(assert (=> b!4767819 m!5739104))

(assert (=> b!4767819 m!5738914))

(assert (=> b!4767819 m!5738934))

(declare-fun m!5739106 () Bool)

(assert (=> b!4767819 m!5739106))

(assert (=> b!4767819 m!5739106))

(declare-fun m!5739108 () Bool)

(assert (=> b!4767819 m!5739108))

(declare-fun m!5739110 () Bool)

(assert (=> b!4767819 m!5739110))

(assert (=> b!4767819 m!5738934))

(assert (=> b!4767819 m!5739098))

(assert (=> b!4767819 m!5738956))

(assert (=> b!4767819 m!5738958))

(assert (=> b!4767819 m!5739108))

(declare-fun m!5739112 () Bool)

(assert (=> b!4767819 m!5739112))

(declare-fun m!5739114 () Bool)

(assert (=> b!4767819 m!5739114))

(assert (=> b!4767819 m!5738956))

(declare-fun m!5739116 () Bool)

(assert (=> b!4767818 m!5739116))

(assert (=> b!4767822 m!5738900))

(declare-fun m!5739118 () Bool)

(assert (=> b!4767822 m!5739118))

(assert (=> b!4767822 m!5738934))

(assert (=> b!4767822 m!5739100))

(assert (=> b!4767822 m!5738934))

(assert (=> b!4767822 m!5739104))

(declare-fun m!5739120 () Bool)

(assert (=> b!4767822 m!5739120))

(assert (=> b!4767822 m!5739108))

(declare-fun m!5739122 () Bool)

(assert (=> b!4767822 m!5739122))

(assert (=> b!4767822 m!5738934))

(assert (=> b!4767822 m!5739106))

(declare-fun m!5739124 () Bool)

(assert (=> b!4767822 m!5739124))

(assert (=> b!4767822 m!5739106))

(assert (=> b!4767822 m!5739108))

(assert (=> d!1524016 m!5739098))

(declare-fun m!5739126 () Bool)

(assert (=> d!1524016 m!5739126))

(assert (=> d!1524016 m!5739098))

(declare-fun m!5739128 () Bool)

(assert (=> b!4767823 m!5739128))

(assert (=> b!4767817 m!5739096))

(assert (=> b!4767815 m!5739096))

(assert (=> b!4767821 m!5738954))

(assert (=> b!4767821 m!5738954))

(assert (=> b!4767821 m!5739094))

(assert (=> b!4767661 d!1524016))

(declare-fun d!1524018 () Bool)

(declare-fun lt!1930674 () Bool)

(assert (=> d!1524018 (= lt!1930674 (select (content!9589 (toList!6301 lt!1930526)) lt!1930531))))

(declare-fun e!2976006 () Bool)

(assert (=> d!1524018 (= lt!1930674 e!2976006)))

(declare-fun res!2022155 () Bool)

(assert (=> d!1524018 (=> (not res!2022155) (not e!2976006))))

(assert (=> d!1524018 (= res!2022155 ((_ is Cons!53499) (toList!6301 lt!1930526)))))

(assert (=> d!1524018 (= (contains!16850 (toList!6301 lt!1930526) lt!1930531) lt!1930674)))

(declare-fun b!4767824 () Bool)

(declare-fun e!2976007 () Bool)

(assert (=> b!4767824 (= e!2976006 e!2976007)))

(declare-fun res!2022156 () Bool)

(assert (=> b!4767824 (=> res!2022156 e!2976007)))

(assert (=> b!4767824 (= res!2022156 (= (h!59911 (toList!6301 lt!1930526)) lt!1930531))))

(declare-fun b!4767825 () Bool)

(assert (=> b!4767825 (= e!2976007 (contains!16850 (t!361049 (toList!6301 lt!1930526)) lt!1930531))))

(assert (= (and d!1524018 res!2022155) b!4767824))

(assert (= (and b!4767824 (not res!2022156)) b!4767825))

(assert (=> d!1524018 m!5739062))

(declare-fun m!5739130 () Bool)

(assert (=> d!1524018 m!5739130))

(declare-fun m!5739132 () Bool)

(assert (=> b!4767825 m!5739132))

(assert (=> b!4767661 d!1524018))

(declare-fun d!1524020 () Bool)

(assert (=> d!1524020 (= (get!18051 (getValueByKey!2190 (toList!6302 (map!11998 thiss!42052)) key!1776)) (v!47703 (getValueByKey!2190 (toList!6302 (map!11998 thiss!42052)) key!1776)))))

(assert (=> b!4767661 d!1524020))

(declare-fun d!1524022 () Bool)

(assert (=> d!1524022 (dynLambda!21954 lambda!224532 lt!1930523)))

(declare-fun lt!1930675 () Unit!138281)

(assert (=> d!1524022 (= lt!1930675 (choose!33985 (toList!6301 lt!1930526) lambda!224532 lt!1930523))))

(declare-fun e!2976008 () Bool)

(assert (=> d!1524022 e!2976008))

(declare-fun res!2022157 () Bool)

(assert (=> d!1524022 (=> (not res!2022157) (not e!2976008))))

(assert (=> d!1524022 (= res!2022157 (forall!11878 (toList!6301 lt!1930526) lambda!224532))))

(assert (=> d!1524022 (= (forallContained!3866 (toList!6301 lt!1930526) lambda!224532 lt!1930523) lt!1930675)))

(declare-fun b!4767826 () Bool)

(assert (=> b!4767826 (= e!2976008 (contains!16850 (toList!6301 lt!1930526) lt!1930523))))

(assert (= (and d!1524022 res!2022157) b!4767826))

(declare-fun b_lambda!184431 () Bool)

(assert (=> (not b_lambda!184431) (not d!1524022)))

(declare-fun m!5739134 () Bool)

(assert (=> d!1524022 m!5739134))

(declare-fun m!5739136 () Bool)

(assert (=> d!1524022 m!5739136))

(assert (=> d!1524022 m!5739054))

(assert (=> b!4767826 m!5738916))

(assert (=> b!4767661 d!1524022))

(declare-fun b!4767827 () Bool)

(declare-fun e!2976013 () Option!12689)

(assert (=> b!4767827 (= e!2976013 (Some!12688 (h!59910 lt!1930532)))))

(declare-fun d!1524024 () Bool)

(declare-fun e!2976012 () Bool)

(assert (=> d!1524024 e!2976012))

(declare-fun res!2022159 () Bool)

(assert (=> d!1524024 (=> res!2022159 e!2976012)))

(declare-fun e!2976010 () Bool)

(assert (=> d!1524024 (= res!2022159 e!2976010)))

(declare-fun res!2022158 () Bool)

(assert (=> d!1524024 (=> (not res!2022158) (not e!2976010))))

(declare-fun lt!1930676 () Option!12689)

(assert (=> d!1524024 (= res!2022158 (isEmpty!29284 lt!1930676))))

(assert (=> d!1524024 (= lt!1930676 e!2976013)))

(declare-fun c!813293 () Bool)

(assert (=> d!1524024 (= c!813293 (and ((_ is Cons!53498) lt!1930532) (= (_1!31071 (h!59910 lt!1930532)) key!1776)))))

(assert (=> d!1524024 (noDuplicateKeys!2256 lt!1930532)))

(assert (=> d!1524024 (= (getPair!649 lt!1930532 key!1776) lt!1930676)))

(declare-fun b!4767828 () Bool)

(assert (=> b!4767828 (= e!2976010 (not (containsKey!3669 lt!1930532 key!1776)))))

(declare-fun b!4767829 () Bool)

(declare-fun e!2976009 () Bool)

(assert (=> b!4767829 (= e!2976009 (contains!16855 lt!1930532 (get!18050 lt!1930676)))))

(declare-fun b!4767830 () Bool)

(assert (=> b!4767830 (= e!2976012 e!2976009)))

(declare-fun res!2022161 () Bool)

(assert (=> b!4767830 (=> (not res!2022161) (not e!2976009))))

(assert (=> b!4767830 (= res!2022161 (isDefined!9848 lt!1930676))))

(declare-fun b!4767831 () Bool)

(declare-fun e!2976011 () Option!12689)

(assert (=> b!4767831 (= e!2976013 e!2976011)))

(declare-fun c!813294 () Bool)

(assert (=> b!4767831 (= c!813294 ((_ is Cons!53498) lt!1930532))))

(declare-fun b!4767832 () Bool)

(assert (=> b!4767832 (= e!2976011 None!12688)))

(declare-fun b!4767833 () Bool)

(declare-fun res!2022160 () Bool)

(assert (=> b!4767833 (=> (not res!2022160) (not e!2976009))))

(assert (=> b!4767833 (= res!2022160 (= (_1!31071 (get!18050 lt!1930676)) key!1776))))

(declare-fun b!4767834 () Bool)

(assert (=> b!4767834 (= e!2976011 (getPair!649 (t!361048 lt!1930532) key!1776))))

(assert (= (and d!1524024 c!813293) b!4767827))

(assert (= (and d!1524024 (not c!813293)) b!4767831))

(assert (= (and b!4767831 c!813294) b!4767834))

(assert (= (and b!4767831 (not c!813294)) b!4767832))

(assert (= (and d!1524024 res!2022158) b!4767828))

(assert (= (and d!1524024 (not res!2022159)) b!4767830))

(assert (= (and b!4767830 res!2022161) b!4767833))

(assert (= (and b!4767833 res!2022160) b!4767829))

(declare-fun m!5739138 () Bool)

(assert (=> d!1524024 m!5739138))

(assert (=> d!1524024 m!5738896))

(declare-fun m!5739140 () Bool)

(assert (=> b!4767828 m!5739140))

(declare-fun m!5739142 () Bool)

(assert (=> b!4767829 m!5739142))

(assert (=> b!4767829 m!5739142))

(declare-fun m!5739144 () Bool)

(assert (=> b!4767829 m!5739144))

(declare-fun m!5739146 () Bool)

(assert (=> b!4767830 m!5739146))

(assert (=> b!4767833 m!5739142))

(declare-fun m!5739148 () Bool)

(assert (=> b!4767834 m!5739148))

(assert (=> b!4767661 d!1524024))

(declare-fun bs!1149106 () Bool)

(declare-fun d!1524026 () Bool)

(assert (= bs!1149106 (and d!1524026 d!1524016)))

(declare-fun lambda!224561 () Int)

(assert (=> bs!1149106 (= lambda!224561 lambda!224554)))

(declare-fun bs!1149107 () Bool)

(assert (= bs!1149107 (and d!1524026 d!1523978)))

(assert (=> bs!1149107 (= lambda!224561 lambda!224538)))

(declare-fun bs!1149108 () Bool)

(assert (= bs!1149108 (and d!1524026 b!4767661)))

(assert (=> bs!1149108 (= lambda!224561 lambda!224532)))

(declare-fun bs!1149109 () Bool)

(assert (= bs!1149109 (and d!1524026 b!4767701)))

(assert (=> bs!1149109 (= lambda!224561 lambda!224535)))

(declare-fun bs!1149110 () Bool)

(assert (= bs!1149110 (and d!1524026 b!4767724)))

(assert (=> bs!1149110 (= lambda!224561 lambda!224541)))

(declare-fun e!2976018 () Bool)

(assert (=> d!1524026 e!2976018))

(declare-fun res!2022173 () Bool)

(assert (=> d!1524026 (=> (not res!2022173) (not e!2976018))))

(assert (=> d!1524026 (= res!2022173 (forall!11878 (toList!6301 lt!1930526) lambda!224561))))

(declare-fun lt!1930694 () Unit!138281)

(declare-fun choose!33987 (ListLongMap!4699 K!14974 Hashable!6594) Unit!138281)

(assert (=> d!1524026 (= lt!1930694 (choose!33987 lt!1930526 key!1776 (hashF!12455 thiss!42052)))))

(assert (=> d!1524026 (forall!11878 (toList!6301 lt!1930526) lambda!224561)))

(assert (=> d!1524026 (= (lemmaInGenMapThenGetPairDefined!432 lt!1930526 key!1776 (hashF!12455 thiss!42052)) lt!1930694)))

(declare-fun b!4767845 () Bool)

(assert (=> b!4767845 (= e!2976018 (isDefined!9848 (getPair!649 (apply!12636 lt!1930526 (hash!4575 (hashF!12455 thiss!42052) key!1776)) key!1776)))))

(declare-fun lt!1930697 () Unit!138281)

(assert (=> b!4767845 (= lt!1930697 (forallContained!3866 (toList!6301 lt!1930526) lambda!224561 (tuple2!55557 (hash!4575 (hashF!12455 thiss!42052) key!1776) (apply!12636 lt!1930526 (hash!4575 (hashF!12455 thiss!42052) key!1776)))))))

(declare-fun lt!1930699 () Unit!138281)

(declare-fun lt!1930696 () Unit!138281)

(assert (=> b!4767845 (= lt!1930699 lt!1930696)))

(declare-fun lt!1930695 () (_ BitVec 64))

(declare-fun lt!1930700 () List!53622)

(assert (=> b!4767845 (contains!16850 (toList!6301 lt!1930526) (tuple2!55557 lt!1930695 lt!1930700))))

(assert (=> b!4767845 (= lt!1930696 (lemmaGetValueImpliesTupleContained!441 lt!1930526 lt!1930695 lt!1930700))))

(declare-fun e!2976019 () Bool)

(assert (=> b!4767845 e!2976019))

(declare-fun res!2022172 () Bool)

(assert (=> b!4767845 (=> (not res!2022172) (not e!2976019))))

(assert (=> b!4767845 (= res!2022172 (contains!16851 lt!1930526 lt!1930695))))

(assert (=> b!4767845 (= lt!1930700 (apply!12636 lt!1930526 (hash!4575 (hashF!12455 thiss!42052) key!1776)))))

(assert (=> b!4767845 (= lt!1930695 (hash!4575 (hashF!12455 thiss!42052) key!1776))))

(declare-fun lt!1930698 () Unit!138281)

(declare-fun lt!1930693 () Unit!138281)

(assert (=> b!4767845 (= lt!1930698 lt!1930693)))

(assert (=> b!4767845 (contains!16851 lt!1930526 (hash!4575 (hashF!12455 thiss!42052) key!1776))))

(assert (=> b!4767845 (= lt!1930693 (lemmaInGenMapThenLongMapContainsHash!842 lt!1930526 key!1776 (hashF!12455 thiss!42052)))))

(declare-fun b!4767843 () Bool)

(declare-fun res!2022171 () Bool)

(assert (=> b!4767843 (=> (not res!2022171) (not e!2976018))))

(assert (=> b!4767843 (= res!2022171 (allKeysSameHashInMap!2023 lt!1930526 (hashF!12455 thiss!42052)))))

(declare-fun b!4767844 () Bool)

(declare-fun res!2022170 () Bool)

(assert (=> b!4767844 (=> (not res!2022170) (not e!2976018))))

(assert (=> b!4767844 (= res!2022170 (contains!16853 (extractMap!2150 (toList!6301 lt!1930526)) key!1776))))

(declare-fun b!4767846 () Bool)

(assert (=> b!4767846 (= e!2976019 (= (getValueByKey!2191 (toList!6301 lt!1930526) lt!1930695) (Some!12690 lt!1930700)))))

(assert (= (and d!1524026 res!2022173) b!4767843))

(assert (= (and b!4767843 res!2022171) b!4767844))

(assert (= (and b!4767844 res!2022170) b!4767845))

(assert (= (and b!4767845 res!2022172) b!4767846))

(declare-fun m!5739150 () Bool)

(assert (=> b!4767846 m!5739150))

(assert (=> b!4767843 m!5739096))

(assert (=> b!4767844 m!5738954))

(assert (=> b!4767844 m!5738954))

(assert (=> b!4767844 m!5739094))

(declare-fun m!5739152 () Bool)

(assert (=> b!4767845 m!5739152))

(declare-fun m!5739154 () Bool)

(assert (=> b!4767845 m!5739154))

(assert (=> b!4767845 m!5738934))

(assert (=> b!4767845 m!5739106))

(declare-fun m!5739156 () Bool)

(assert (=> b!4767845 m!5739156))

(assert (=> b!4767845 m!5739108))

(assert (=> b!4767845 m!5739122))

(assert (=> b!4767845 m!5739106))

(assert (=> b!4767845 m!5739108))

(assert (=> b!4767845 m!5738934))

(assert (=> b!4767845 m!5738934))

(assert (=> b!4767845 m!5739100))

(assert (=> b!4767845 m!5738900))

(declare-fun m!5739158 () Bool)

(assert (=> b!4767845 m!5739158))

(declare-fun m!5739160 () Bool)

(assert (=> d!1524026 m!5739160))

(declare-fun m!5739162 () Bool)

(assert (=> d!1524026 m!5739162))

(assert (=> d!1524026 m!5739160))

(assert (=> b!4767661 d!1524026))

(declare-fun d!1524028 () Bool)

(declare-fun e!2976025 () Bool)

(assert (=> d!1524028 e!2976025))

(declare-fun res!2022176 () Bool)

(assert (=> d!1524028 (=> res!2022176 e!2976025)))

(declare-fun lt!1930709 () Bool)

(assert (=> d!1524028 (= res!2022176 (not lt!1930709))))

(declare-fun lt!1930712 () Bool)

(assert (=> d!1524028 (= lt!1930709 lt!1930712)))

(declare-fun lt!1930711 () Unit!138281)

(declare-fun e!2976024 () Unit!138281)

(assert (=> d!1524028 (= lt!1930711 e!2976024)))

(declare-fun c!813297 () Bool)

(assert (=> d!1524028 (= c!813297 lt!1930712)))

(assert (=> d!1524028 (= lt!1930712 (containsKey!3668 (toList!6301 lt!1930526) lt!1930528))))

(assert (=> d!1524028 (= (contains!16851 lt!1930526 lt!1930528) lt!1930709)))

(declare-fun b!4767853 () Bool)

(declare-fun lt!1930710 () Unit!138281)

(assert (=> b!4767853 (= e!2976024 lt!1930710)))

(assert (=> b!4767853 (= lt!1930710 (lemmaContainsKeyImpliesGetValueByKeyDefined!1992 (toList!6301 lt!1930526) lt!1930528))))

(assert (=> b!4767853 (isDefined!9847 (getValueByKey!2191 (toList!6301 lt!1930526) lt!1930528))))

(declare-fun b!4767854 () Bool)

(declare-fun Unit!138290 () Unit!138281)

(assert (=> b!4767854 (= e!2976024 Unit!138290)))

(declare-fun b!4767855 () Bool)

(assert (=> b!4767855 (= e!2976025 (isDefined!9847 (getValueByKey!2191 (toList!6301 lt!1930526) lt!1930528)))))

(assert (= (and d!1524028 c!813297) b!4767853))

(assert (= (and d!1524028 (not c!813297)) b!4767854))

(assert (= (and d!1524028 (not res!2022176)) b!4767855))

(assert (=> d!1524028 m!5739036))

(assert (=> b!4767853 m!5738944))

(assert (=> b!4767853 m!5738946))

(assert (=> b!4767853 m!5738946))

(assert (=> b!4767853 m!5738948))

(assert (=> b!4767855 m!5738946))

(assert (=> b!4767855 m!5738946))

(assert (=> b!4767855 m!5738948))

(assert (=> b!4767661 d!1524028))

(declare-fun bs!1149111 () Bool)

(declare-fun d!1524030 () Bool)

(assert (= bs!1149111 (and d!1524030 d!1524016)))

(declare-fun lambda!224564 () Int)

(assert (=> bs!1149111 (= lambda!224564 lambda!224554)))

(declare-fun bs!1149112 () Bool)

(assert (= bs!1149112 (and d!1524030 d!1523978)))

(assert (=> bs!1149112 (= lambda!224564 lambda!224538)))

(declare-fun bs!1149113 () Bool)

(assert (= bs!1149113 (and d!1524030 d!1524026)))

(assert (=> bs!1149113 (= lambda!224564 lambda!224561)))

(declare-fun bs!1149114 () Bool)

(assert (= bs!1149114 (and d!1524030 b!4767661)))

(assert (=> bs!1149114 (= lambda!224564 lambda!224532)))

(declare-fun bs!1149115 () Bool)

(assert (= bs!1149115 (and d!1524030 b!4767701)))

(assert (=> bs!1149115 (= lambda!224564 lambda!224535)))

(declare-fun bs!1149116 () Bool)

(assert (= bs!1149116 (and d!1524030 b!4767724)))

(assert (=> bs!1149116 (= lambda!224564 lambda!224541)))

(assert (=> d!1524030 (contains!16851 lt!1930526 (hash!4575 (hashF!12455 thiss!42052) key!1776))))

(declare-fun lt!1930715 () Unit!138281)

(declare-fun choose!33988 (ListLongMap!4699 K!14974 Hashable!6594) Unit!138281)

(assert (=> d!1524030 (= lt!1930715 (choose!33988 lt!1930526 key!1776 (hashF!12455 thiss!42052)))))

(assert (=> d!1524030 (forall!11878 (toList!6301 lt!1930526) lambda!224564)))

(assert (=> d!1524030 (= (lemmaInGenMapThenLongMapContainsHash!842 lt!1930526 key!1776 (hashF!12455 thiss!42052)) lt!1930715)))

(declare-fun bs!1149117 () Bool)

(assert (= bs!1149117 d!1524030))

(assert (=> bs!1149117 m!5738934))

(assert (=> bs!1149117 m!5738934))

(assert (=> bs!1149117 m!5739100))

(declare-fun m!5739164 () Bool)

(assert (=> bs!1149117 m!5739164))

(declare-fun m!5739166 () Bool)

(assert (=> bs!1149117 m!5739166))

(assert (=> b!4767661 d!1524030))

(declare-fun d!1524032 () Bool)

(assert (=> d!1524032 (= (apply!12636 lt!1930526 lt!1930528) (get!18052 (getValueByKey!2191 (toList!6301 lt!1930526) lt!1930528)))))

(declare-fun bs!1149118 () Bool)

(assert (= bs!1149118 d!1524032))

(assert (=> bs!1149118 m!5738946))

(assert (=> bs!1149118 m!5738946))

(declare-fun m!5739168 () Bool)

(assert (=> bs!1149118 m!5739168))

(assert (=> b!4767661 d!1524032))

(declare-fun d!1524034 () Bool)

(assert (=> d!1524034 (= (isDefined!9848 lt!1930524) (not (isEmpty!29284 lt!1930524)))))

(declare-fun bs!1149119 () Bool)

(assert (= bs!1149119 d!1524034))

(declare-fun m!5739170 () Bool)

(assert (=> bs!1149119 m!5739170))

(assert (=> b!4767661 d!1524034))

(declare-fun b!4767860 () Bool)

(declare-fun e!2976028 () Bool)

(declare-fun tp!1355683 () Bool)

(declare-fun tp_is_empty!32465 () Bool)

(assert (=> b!4767860 (= e!2976028 (and tp_is_empty!32463 tp_is_empty!32465 tp!1355683))))

(assert (=> b!4767657 (= tp!1355674 e!2976028)))

(assert (= (and b!4767657 ((_ is Cons!53498) mapDefault!21885)) b!4767860))

(declare-fun mapNonEmpty!21888 () Bool)

(declare-fun mapRes!21888 () Bool)

(declare-fun tp!1355691 () Bool)

(declare-fun e!2976034 () Bool)

(assert (=> mapNonEmpty!21888 (= mapRes!21888 (and tp!1355691 e!2976034))))

(declare-fun mapKey!21888 () (_ BitVec 32))

(declare-fun mapValue!21888 () List!53622)

(declare-fun mapRest!21888 () (Array (_ BitVec 32) List!53622))

(assert (=> mapNonEmpty!21888 (= mapRest!21885 (store mapRest!21888 mapKey!21888 mapValue!21888))))

(declare-fun e!2976033 () Bool)

(declare-fun b!4767868 () Bool)

(declare-fun tp!1355692 () Bool)

(assert (=> b!4767868 (= e!2976033 (and tp_is_empty!32463 tp_is_empty!32465 tp!1355692))))

(declare-fun mapIsEmpty!21888 () Bool)

(assert (=> mapIsEmpty!21888 mapRes!21888))

(declare-fun tp!1355690 () Bool)

(declare-fun b!4767867 () Bool)

(assert (=> b!4767867 (= e!2976034 (and tp_is_empty!32463 tp_is_empty!32465 tp!1355690))))

(declare-fun condMapEmpty!21888 () Bool)

(declare-fun mapDefault!21888 () List!53622)

(assert (=> mapNonEmpty!21885 (= condMapEmpty!21888 (= mapRest!21885 ((as const (Array (_ BitVec 32) List!53622)) mapDefault!21888)))))

(assert (=> mapNonEmpty!21885 (= tp!1355680 (and e!2976033 mapRes!21888))))

(assert (= (and mapNonEmpty!21885 condMapEmpty!21888) mapIsEmpty!21888))

(assert (= (and mapNonEmpty!21885 (not condMapEmpty!21888)) mapNonEmpty!21888))

(assert (= (and mapNonEmpty!21888 ((_ is Cons!53498) mapValue!21888)) b!4767867))

(assert (= (and mapNonEmpty!21885 ((_ is Cons!53498) mapDefault!21888)) b!4767868))

(declare-fun m!5739172 () Bool)

(assert (=> mapNonEmpty!21888 m!5739172))

(declare-fun e!2976035 () Bool)

(declare-fun b!4767869 () Bool)

(declare-fun tp!1355693 () Bool)

(assert (=> b!4767869 (= e!2976035 (and tp_is_empty!32463 tp_is_empty!32465 tp!1355693))))

(assert (=> mapNonEmpty!21885 (= tp!1355679 e!2976035)))

(assert (= (and mapNonEmpty!21885 ((_ is Cons!53498) mapValue!21885)) b!4767869))

(declare-fun tp!1355694 () Bool)

(declare-fun b!4767870 () Bool)

(declare-fun e!2976036 () Bool)

(assert (=> b!4767870 (= e!2976036 (and tp_is_empty!32463 tp_is_empty!32465 tp!1355694))))

(assert (=> b!4767660 (= tp!1355677 e!2976036)))

(assert (= (and b!4767660 ((_ is Cons!53498) (zeroValue!5221 (v!47700 (underlying!10073 (v!47701 (underlying!10074 thiss!42052))))))) b!4767870))

(declare-fun b!4767871 () Bool)

(declare-fun e!2976037 () Bool)

(declare-fun tp!1355695 () Bool)

(assert (=> b!4767871 (= e!2976037 (and tp_is_empty!32463 tp_is_empty!32465 tp!1355695))))

(assert (=> b!4767660 (= tp!1355678 e!2976037)))

(assert (= (and b!4767660 ((_ is Cons!53498) (minValue!5221 (v!47700 (underlying!10073 (v!47701 (underlying!10074 thiss!42052))))))) b!4767871))

(declare-fun b_lambda!184433 () Bool)

(assert (= b_lambda!184429 (or (and b!4767660 b_free!129675) b_lambda!184433)))

(declare-fun b_lambda!184435 () Bool)

(assert (= b_lambda!184427 (or b!4767661 b_lambda!184435)))

(declare-fun bs!1149120 () Bool)

(declare-fun d!1524036 () Bool)

(assert (= bs!1149120 (and d!1524036 b!4767661)))

(assert (=> bs!1149120 (= (dynLambda!21954 lambda!224532 lt!1930531) (noDuplicateKeys!2256 (_2!31072 lt!1930531)))))

(declare-fun m!5739174 () Bool)

(assert (=> bs!1149120 m!5739174))

(assert (=> d!1523998 d!1524036))

(declare-fun b_lambda!184437 () Bool)

(assert (= b_lambda!184431 (or b!4767661 b_lambda!184437)))

(declare-fun bs!1149121 () Bool)

(declare-fun d!1524038 () Bool)

(assert (= bs!1149121 (and d!1524038 b!4767661)))

(assert (=> bs!1149121 (= (dynLambda!21954 lambda!224532 lt!1930523) (noDuplicateKeys!2256 (_2!31072 lt!1930523)))))

(declare-fun m!5739176 () Bool)

(assert (=> bs!1149121 m!5739176))

(assert (=> d!1524022 d!1524038))

(check-sat (not mapNonEmpty!21888) (not b!4767825) (not d!1523986) (not b!4767731) (not bm!334254) (not b!4767725) (not d!1524018) (not d!1524010) (not b!4767712) (not b!4767819) (not b!4767753) (not b!4767818) (not d!1523996) (not b!4767734) (not d!1524008) (not b!4767833) (not b!4767845) (not b!4767814) (not b!4767830) (not b!4767817) (not bm!334253) (not b!4767828) (not d!1524004) (not bs!1149120) (not b!4767696) (not b!4767871) (not b!4767834) (not b!4767843) (not b!4767821) (not b_lambda!184433) (not d!1524030) (not b!4767822) (not bm!334256) (not b!4767793) (not b_lambda!184435) (not b!4767846) (not b!4767826) (not b_lambda!184437) (not d!1523978) (not b!4767745) (not bm!334257) (not b!4767844) (not d!1524012) (not b!4767768) (not d!1523970) (not b_next!130467) (not d!1524016) (not b!4767701) (not b!4767718) (not b!4767763) (not d!1524026) (not b!4767869) (not b!4767730) (not b_next!130465) (not b!4767855) (not bm!334255) b_and!341395 (not d!1524002) (not b!4767816) (not tb!257479) (not b!4767792) (not b!4767860) (not b!4767853) (not b!4767692) (not d!1524022) (not b!4767787) (not b!4767691) (not d!1524032) tp_is_empty!32463 (not d!1524024) (not d!1523980) b_and!341397 (not d!1523998) (not d!1524028) (not b!4767820) (not bs!1149121) (not b!4767694) (not b!4767868) (not b!4767867) (not b!4767724) (not bm!334258) (not b!4767829) (not b!4767788) (not b!4767870) (not b!4767823) (not b!4767749) (not d!1523984) (not b!4767789) (not d!1524014) (not d!1523990) (not d!1524034) (not b!4767815) (not b!4767756) tp_is_empty!32465)
(check-sat b_and!341395 b_and!341397 (not b_next!130467) (not b_next!130465))
