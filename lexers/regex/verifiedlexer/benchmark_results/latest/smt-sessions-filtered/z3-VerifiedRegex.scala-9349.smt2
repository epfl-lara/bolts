; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496868 () Bool)

(assert start!496868)

(declare-fun b!4807597 () Bool)

(declare-fun b_free!129971 () Bool)

(declare-fun b_next!130761 () Bool)

(assert (=> b!4807597 (= b_free!129971 (not b_next!130761))))

(declare-fun tp!1359529 () Bool)

(declare-fun b_and!341739 () Bool)

(assert (=> b!4807597 (= tp!1359529 b_and!341739)))

(declare-fun b!4807599 () Bool)

(declare-fun b_free!129973 () Bool)

(declare-fun b_next!130763 () Bool)

(assert (=> b!4807599 (= b_free!129973 (not b_next!130763))))

(declare-fun tp!1359528 () Bool)

(declare-fun b_and!341741 () Bool)

(assert (=> b!4807599 (= tp!1359528 b_and!341741)))

(declare-fun e!3002864 () Bool)

(declare-fun tp!1359527 () Bool)

(declare-datatypes ((K!16034 0))(
  ( (K!16035 (val!21133 Int)) )
))
(declare-datatypes ((array!18386 0))(
  ( (array!18387 (arr!8199 (Array (_ BitVec 32) (_ BitVec 64))) (size!36445 (_ BitVec 32))) )
))
(declare-datatypes ((V!16280 0))(
  ( (V!16281 (val!21134 Int)) )
))
(declare-datatypes ((tuple2!57220 0))(
  ( (tuple2!57221 (_1!31904 K!16034) (_2!31904 V!16280)) )
))
(declare-datatypes ((List!54563 0))(
  ( (Nil!54439) (Cons!54439 (h!60871 tuple2!57220) (t!362027 List!54563)) )
))
(declare-datatypes ((array!18388 0))(
  ( (array!18389 (arr!8200 (Array (_ BitVec 32) List!54563)) (size!36446 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10014 0))(
  ( (LongMapFixedSize!10015 (defaultEntry!5425 Int) (mask!14981 (_ BitVec 32)) (extraKeys!5282 (_ BitVec 32)) (zeroValue!5295 List!54563) (minValue!5295 List!54563) (_size!10039 (_ BitVec 32)) (_keys!5349 array!18386) (_values!5320 array!18388) (_vacant!5072 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19793 0))(
  ( (Cell!19794 (v!48678 LongMapFixedSize!10014)) )
))
(declare-datatypes ((MutLongMap!5007 0))(
  ( (LongMap!5007 (underlying!10221 Cell!19793)) (MutLongMapExt!5006 (__x!33119 Int)) )
))
(declare-datatypes ((Hashable!7018 0))(
  ( (HashableExt!7017 (__x!33120 Int)) )
))
(declare-datatypes ((Cell!19795 0))(
  ( (Cell!19796 (v!48679 MutLongMap!5007)) )
))
(declare-datatypes ((MutableMap!4891 0))(
  ( (MutableMapExt!4890 (__x!33121 Int)) (HashMap!4891 (underlying!10222 Cell!19795) (hashF!13286 Hashable!7018) (_size!10040 (_ BitVec 32)) (defaultValue!5062 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4891)

(declare-fun e!3002866 () Bool)

(declare-fun tp!1359532 () Bool)

(declare-fun array_inv!5907 (array!18386) Bool)

(declare-fun array_inv!5908 (array!18388) Bool)

(assert (=> b!4807597 (= e!3002866 (and tp!1359529 tp!1359527 tp!1359532 (array_inv!5907 (_keys!5349 (v!48678 (underlying!10221 (v!48679 (underlying!10222 thiss!41921)))))) (array_inv!5908 (_values!5320 (v!48678 (underlying!10221 (v!48679 (underlying!10222 thiss!41921)))))) e!3002864))))

(declare-fun b!4807598 () Bool)

(assert (=> b!4807598 false))

(declare-datatypes ((tuple2!57222 0))(
  ( (tuple2!57223 (_1!31905 (_ BitVec 64)) (_2!31905 List!54563)) )
))
(declare-datatypes ((List!54564 0))(
  ( (Nil!54440) (Cons!54440 (h!60872 tuple2!57222) (t!362028 List!54564)) )
))
(declare-datatypes ((ListLongMap!5517 0))(
  ( (ListLongMap!5518 (toList!7067 List!54564)) )
))
(declare-fun lt!1960596 () ListLongMap!5517)

(declare-fun lt!1960595 () List!54563)

(declare-fun lt!1960594 () (_ BitVec 64))

(declare-datatypes ((Unit!141326 0))(
  ( (Unit!141327) )
))
(declare-fun lt!1960591 () Unit!141326)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!965 (List!54564 (_ BitVec 64) List!54563) Unit!141326)

(assert (=> b!4807598 (= lt!1960591 (lemmaGetValueByKeyImpliesContainsTuple!965 (toList!7067 lt!1960596) lt!1960594 lt!1960595))))

(declare-datatypes ((Option!13249 0))(
  ( (None!13248) (Some!13248 (v!48680 List!54563)) )
))
(declare-fun isDefined!10388 (Option!13249) Bool)

(declare-fun getValueByKey!2446 (List!54564 (_ BitVec 64)) Option!13249)

(assert (=> b!4807598 (isDefined!10388 (getValueByKey!2446 (toList!7067 lt!1960596) lt!1960594))))

(declare-fun lt!1960593 () Unit!141326)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2234 (List!54564 (_ BitVec 64)) Unit!141326)

(assert (=> b!4807598 (= lt!1960593 (lemmaContainsKeyImpliesGetValueByKeyDefined!2234 (toList!7067 lt!1960596) lt!1960594))))

(declare-fun containsKey!4101 (List!54564 (_ BitVec 64)) Bool)

(assert (=> b!4807598 (containsKey!4101 (toList!7067 lt!1960596) lt!1960594)))

(declare-fun lt!1960592 () Unit!141326)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!236 (List!54564 (_ BitVec 64)) Unit!141326)

(assert (=> b!4807598 (= lt!1960592 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!236 (toList!7067 lt!1960596) lt!1960594))))

(declare-fun e!3002870 () Unit!141326)

(declare-fun Unit!141328 () Unit!141326)

(assert (=> b!4807598 (= e!3002870 Unit!141328)))

(declare-fun e!3002867 () Bool)

(declare-fun e!3002865 () Bool)

(assert (=> b!4807599 (= e!3002867 (and e!3002865 tp!1359528))))

(declare-fun b!4807600 () Bool)

(declare-fun e!3002869 () Bool)

(declare-fun e!3002868 () Bool)

(assert (=> b!4807600 (= e!3002869 e!3002868)))

(declare-fun res!2045259 () Bool)

(assert (=> b!4807600 (=> (not res!2045259) (not e!3002868))))

(declare-fun key!1652 () K!16034)

(declare-datatypes ((ListMap!6511 0))(
  ( (ListMap!6512 (toList!7068 List!54563)) )
))
(declare-fun contains!18110 (ListMap!6511 K!16034) Bool)

(declare-fun extractMap!2507 (List!54564) ListMap!6511)

(declare-fun map!12346 (MutLongMap!5007) ListLongMap!5517)

(assert (=> b!4807600 (= res!2045259 (contains!18110 (extractMap!2507 (toList!7067 (map!12346 (v!48679 (underlying!10222 thiss!41921))))) key!1652))))

(declare-fun lt!1960590 () Unit!141326)

(declare-fun e!3002871 () Unit!141326)

(assert (=> b!4807600 (= lt!1960590 e!3002871)))

(declare-fun c!819396 () Bool)

(declare-fun contains!18111 (MutLongMap!5007 (_ BitVec 64)) Bool)

(assert (=> b!4807600 (= c!819396 (contains!18111 (v!48679 (underlying!10222 thiss!41921)) lt!1960594))))

(declare-fun hash!5088 (Hashable!7018 K!16034) (_ BitVec 64))

(assert (=> b!4807600 (= lt!1960594 (hash!5088 (hashF!13286 thiss!41921) key!1652))))

(declare-fun b!4807601 () Bool)

(declare-fun res!2045260 () Bool)

(assert (=> b!4807601 (=> (not res!2045260) (not e!3002869))))

(declare-fun valid!4022 (MutableMap!4891) Bool)

(assert (=> b!4807601 (= res!2045260 (valid!4022 thiss!41921))))

(declare-fun mapIsEmpty!22166 () Bool)

(declare-fun mapRes!22166 () Bool)

(assert (=> mapIsEmpty!22166 mapRes!22166))

(declare-fun b!4807602 () Bool)

(declare-fun e!3002863 () Bool)

(declare-fun lt!1960589 () MutLongMap!5007)

(get-info :version)

(assert (=> b!4807602 (= e!3002865 (and e!3002863 ((_ is LongMap!5007) lt!1960589)))))

(assert (=> b!4807602 (= lt!1960589 (v!48679 (underlying!10222 thiss!41921)))))

(declare-fun b!4807603 () Bool)

(declare-fun Unit!141329 () Unit!141326)

(assert (=> b!4807603 (= e!3002870 Unit!141329)))

(declare-fun res!2045261 () Bool)

(assert (=> start!496868 (=> (not res!2045261) (not e!3002869))))

(assert (=> start!496868 (= res!2045261 ((_ is HashMap!4891) thiss!41921))))

(assert (=> start!496868 e!3002869))

(assert (=> start!496868 e!3002867))

(declare-fun tp_is_empty!33873 () Bool)

(assert (=> start!496868 tp_is_empty!33873))

(declare-fun b!4807604 () Bool)

(assert (=> b!4807604 (= e!3002868 (not ((_ is LongMap!5007) (v!48679 (underlying!10222 thiss!41921)))))))

(declare-fun b!4807605 () Bool)

(declare-fun tp!1359531 () Bool)

(assert (=> b!4807605 (= e!3002864 (and tp!1359531 mapRes!22166))))

(declare-fun condMapEmpty!22166 () Bool)

(declare-fun mapDefault!22166 () List!54563)

(assert (=> b!4807605 (= condMapEmpty!22166 (= (arr!8200 (_values!5320 (v!48678 (underlying!10221 (v!48679 (underlying!10222 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54563)) mapDefault!22166)))))

(declare-fun mapNonEmpty!22166 () Bool)

(declare-fun tp!1359533 () Bool)

(declare-fun tp!1359530 () Bool)

(assert (=> mapNonEmpty!22166 (= mapRes!22166 (and tp!1359533 tp!1359530))))

(declare-fun mapValue!22166 () List!54563)

(declare-fun mapRest!22166 () (Array (_ BitVec 32) List!54563))

(declare-fun mapKey!22166 () (_ BitVec 32))

(assert (=> mapNonEmpty!22166 (= (arr!8200 (_values!5320 (v!48678 (underlying!10221 (v!48679 (underlying!10222 thiss!41921)))))) (store mapRest!22166 mapKey!22166 mapValue!22166))))

(declare-fun b!4807606 () Bool)

(declare-fun e!3002862 () Bool)

(assert (=> b!4807606 (= e!3002862 e!3002866)))

(declare-fun b!4807607 () Bool)

(assert (=> b!4807607 (= e!3002863 e!3002862)))

(declare-fun b!4807608 () Bool)

(declare-fun lambda!233516 () Int)

(declare-fun lt!1960597 () tuple2!57222)

(declare-fun forallContained!4237 (List!54564 Int tuple2!57222) Unit!141326)

(assert (=> b!4807608 (= e!3002871 (forallContained!4237 (toList!7067 lt!1960596) lambda!233516 lt!1960597))))

(assert (=> b!4807608 (= lt!1960596 (map!12346 (v!48679 (underlying!10222 thiss!41921))))))

(declare-fun apply!13091 (MutLongMap!5007 (_ BitVec 64)) List!54563)

(assert (=> b!4807608 (= lt!1960595 (apply!13091 (v!48679 (underlying!10222 thiss!41921)) lt!1960594))))

(assert (=> b!4807608 (= lt!1960597 (tuple2!57223 lt!1960594 lt!1960595))))

(declare-fun c!819395 () Bool)

(declare-fun contains!18112 (List!54564 tuple2!57222) Bool)

(assert (=> b!4807608 (= c!819395 (not (contains!18112 (toList!7067 lt!1960596) lt!1960597)))))

(declare-fun lt!1960588 () Unit!141326)

(assert (=> b!4807608 (= lt!1960588 e!3002870)))

(declare-fun b!4807609 () Bool)

(declare-fun Unit!141330 () Unit!141326)

(assert (=> b!4807609 (= e!3002871 Unit!141330)))

(assert (= (and start!496868 res!2045261) b!4807601))

(assert (= (and b!4807601 res!2045260) b!4807600))

(assert (= (and b!4807600 c!819396) b!4807608))

(assert (= (and b!4807600 (not c!819396)) b!4807609))

(assert (= (and b!4807608 c!819395) b!4807598))

(assert (= (and b!4807608 (not c!819395)) b!4807603))

(assert (= (and b!4807600 res!2045259) b!4807604))

(assert (= (and b!4807605 condMapEmpty!22166) mapIsEmpty!22166))

(assert (= (and b!4807605 (not condMapEmpty!22166)) mapNonEmpty!22166))

(assert (= b!4807597 b!4807605))

(assert (= b!4807606 b!4807597))

(assert (= b!4807607 b!4807606))

(assert (= (and b!4807602 ((_ is LongMap!5007) (v!48679 (underlying!10222 thiss!41921)))) b!4807607))

(assert (= b!4807599 b!4807602))

(assert (= (and start!496868 ((_ is HashMap!4891) thiss!41921)) b!4807599))

(declare-fun m!5793780 () Bool)

(assert (=> b!4807597 m!5793780))

(declare-fun m!5793782 () Bool)

(assert (=> b!4807597 m!5793782))

(declare-fun m!5793784 () Bool)

(assert (=> mapNonEmpty!22166 m!5793784))

(declare-fun m!5793786 () Bool)

(assert (=> b!4807600 m!5793786))

(assert (=> b!4807600 m!5793786))

(declare-fun m!5793788 () Bool)

(assert (=> b!4807600 m!5793788))

(declare-fun m!5793790 () Bool)

(assert (=> b!4807600 m!5793790))

(declare-fun m!5793792 () Bool)

(assert (=> b!4807600 m!5793792))

(declare-fun m!5793794 () Bool)

(assert (=> b!4807600 m!5793794))

(declare-fun m!5793796 () Bool)

(assert (=> b!4807601 m!5793796))

(declare-fun m!5793798 () Bool)

(assert (=> b!4807608 m!5793798))

(assert (=> b!4807608 m!5793794))

(declare-fun m!5793800 () Bool)

(assert (=> b!4807608 m!5793800))

(declare-fun m!5793802 () Bool)

(assert (=> b!4807608 m!5793802))

(declare-fun m!5793804 () Bool)

(assert (=> b!4807598 m!5793804))

(declare-fun m!5793806 () Bool)

(assert (=> b!4807598 m!5793806))

(declare-fun m!5793808 () Bool)

(assert (=> b!4807598 m!5793808))

(declare-fun m!5793810 () Bool)

(assert (=> b!4807598 m!5793810))

(assert (=> b!4807598 m!5793806))

(declare-fun m!5793812 () Bool)

(assert (=> b!4807598 m!5793812))

(declare-fun m!5793814 () Bool)

(assert (=> b!4807598 m!5793814))

(check-sat tp_is_empty!33873 (not b!4807605) (not b!4807597) (not mapNonEmpty!22166) b_and!341739 (not b_next!130761) (not b_next!130763) (not b!4807598) (not b!4807601) b_and!341741 (not b!4807608) (not b!4807600))
(check-sat b_and!341739 b_and!341741 (not b_next!130761) (not b_next!130763))
