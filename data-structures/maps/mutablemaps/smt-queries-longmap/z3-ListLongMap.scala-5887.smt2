; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75882 () Bool)

(assert start!75882)

(declare-fun b!892487 () Bool)

(declare-fun b_free!15825 () Bool)

(declare-fun b_next!15825 () Bool)

(assert (=> b!892487 (= b_free!15825 (not b_next!15825))))

(declare-fun tp!55444 () Bool)

(declare-fun b_and!26091 () Bool)

(assert (=> b!892487 (= tp!55444 b_and!26091)))

(declare-fun b!892477 () Bool)

(declare-fun e!498288 () Bool)

(declare-fun e!498291 () Bool)

(assert (=> b!892477 (= e!498288 (not e!498291))))

(declare-fun res!604719 () Bool)

(assert (=> b!892477 (=> res!604719 e!498291)))

(declare-datatypes ((SeekEntryResult!8844 0))(
  ( (MissingZero!8844 (index!37746 (_ BitVec 32))) (Found!8844 (index!37747 (_ BitVec 32))) (Intermediate!8844 (undefined!9656 Bool) (index!37748 (_ BitVec 32)) (x!75855 (_ BitVec 32))) (Undefined!8844) (MissingVacant!8844 (index!37749 (_ BitVec 32))) )
))
(declare-fun lt!403219 () SeekEntryResult!8844)

(get-info :version)

(assert (=> b!892477 (= res!604719 (not ((_ is Found!8844) lt!403219)))))

(declare-fun e!498295 () Bool)

(assert (=> b!892477 e!498295))

(declare-fun res!604722 () Bool)

(assert (=> b!892477 (=> res!604722 e!498295)))

(assert (=> b!892477 (= res!604722 (not ((_ is Found!8844) lt!403219)))))

(declare-datatypes ((Unit!30369 0))(
  ( (Unit!30370) )
))
(declare-fun lt!403221 () Unit!30369)

(declare-datatypes ((array!52272 0))(
  ( (array!52273 (arr!25138 (Array (_ BitVec 32) (_ BitVec 64))) (size!25583 (_ BitVec 32))) )
))
(declare-datatypes ((V!29169 0))(
  ( (V!29170 (val!9127 Int)) )
))
(declare-datatypes ((ValueCell!8595 0))(
  ( (ValueCellFull!8595 (v!11599 V!29169)) (EmptyCell!8595) )
))
(declare-datatypes ((array!52274 0))(
  ( (array!52275 (arr!25139 (Array (_ BitVec 32) ValueCell!8595)) (size!25584 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4206 0))(
  ( (LongMapFixedSize!4207 (defaultEntry!5300 Int) (mask!25808 (_ BitVec 32)) (extraKeys!4994 (_ BitVec 32)) (zeroValue!5098 V!29169) (minValue!5098 V!29169) (_size!2158 (_ BitVec 32)) (_keys!9979 array!52272) (_values!5285 array!52274) (_vacant!2158 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4206)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!59 (array!52272 array!52274 (_ BitVec 32) (_ BitVec 32) V!29169 V!29169 (_ BitVec 64)) Unit!30369)

(assert (=> b!892477 (= lt!403221 (lemmaSeekEntryGivesInRangeIndex!59 (_keys!9979 thiss!1181) (_values!5285 thiss!1181) (mask!25808 thiss!1181) (extraKeys!4994 thiss!1181) (zeroValue!5098 thiss!1181) (minValue!5098 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52272 (_ BitVec 32)) SeekEntryResult!8844)

(assert (=> b!892477 (= lt!403219 (seekEntry!0 key!785 (_keys!9979 thiss!1181) (mask!25808 thiss!1181)))))

(declare-fun b!892478 () Bool)

(declare-fun e!498286 () Bool)

(declare-fun tp_is_empty!18153 () Bool)

(assert (=> b!892478 (= e!498286 tp_is_empty!18153)))

(declare-fun b!892479 () Bool)

(declare-fun res!604720 () Bool)

(assert (=> b!892479 (=> (not res!604720) (not e!498288))))

(assert (=> b!892479 (= res!604720 (not (= key!785 (bvneg key!785))))))

(declare-fun b!892480 () Bool)

(declare-fun e!498290 () Bool)

(declare-fun mapRes!28784 () Bool)

(assert (=> b!892480 (= e!498290 (and e!498286 mapRes!28784))))

(declare-fun condMapEmpty!28784 () Bool)

(declare-fun mapDefault!28784 () ValueCell!8595)

(assert (=> b!892480 (= condMapEmpty!28784 (= (arr!25139 (_values!5285 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8595)) mapDefault!28784)))))

(declare-fun res!604717 () Bool)

(assert (=> start!75882 (=> (not res!604717) (not e!498288))))

(declare-fun valid!1615 (LongMapFixedSize!4206) Bool)

(assert (=> start!75882 (= res!604717 (valid!1615 thiss!1181))))

(assert (=> start!75882 e!498288))

(declare-fun e!498294 () Bool)

(assert (=> start!75882 e!498294))

(assert (=> start!75882 true))

(declare-fun b!892481 () Bool)

(declare-fun e!498292 () Bool)

(assert (=> b!892481 (= e!498292 tp_is_empty!18153)))

(declare-fun b!892482 () Bool)

(declare-fun res!604718 () Bool)

(declare-fun e!498285 () Bool)

(assert (=> b!892482 (=> (not res!604718) (not e!498285))))

(assert (=> b!892482 (= res!604718 (not (= (bvand (extraKeys!4994 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!498287 () Bool)

(assert (=> b!892482 (= e!498287 e!498285)))

(declare-fun b!892483 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!892483 (= e!498295 (inRange!0 (index!37747 lt!403219) (mask!25808 thiss!1181)))))

(declare-fun b!892484 () Bool)

(declare-fun e!498289 () Bool)

(declare-fun call!39540 () V!29169)

(assert (=> b!892484 (= e!498289 (= call!39540 (zeroValue!5098 thiss!1181)))))

(declare-fun b!892485 () Bool)

(assert (=> b!892485 (= e!498291 true)))

(declare-fun lt!403216 () Bool)

(declare-fun contains!4359 (LongMapFixedSize!4206 (_ BitVec 64)) Bool)

(assert (=> b!892485 (= lt!403216 (contains!4359 thiss!1181 key!785))))

(declare-fun e!498293 () Bool)

(assert (=> b!892485 e!498293))

(declare-fun c!93892 () Bool)

(assert (=> b!892485 (= c!93892 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!403220 () Unit!30369)

(declare-fun lemmaKeyInListMapThenSameValueInArray!6 (array!52272 array!52274 (_ BitVec 32) (_ BitVec 32) V!29169 V!29169 (_ BitVec 64) (_ BitVec 32) Int) Unit!30369)

(assert (=> b!892485 (= lt!403220 (lemmaKeyInListMapThenSameValueInArray!6 (_keys!9979 thiss!1181) (_values!5285 thiss!1181) (mask!25808 thiss!1181) (extraKeys!4994 thiss!1181) (zeroValue!5098 thiss!1181) (minValue!5098 thiss!1181) key!785 (index!37747 lt!403219) (defaultEntry!5300 thiss!1181)))))

(declare-datatypes ((tuple2!12024 0))(
  ( (tuple2!12025 (_1!6022 (_ BitVec 64)) (_2!6022 V!29169)) )
))
(declare-datatypes ((List!17868 0))(
  ( (Nil!17865) (Cons!17864 (h!18995 tuple2!12024) (t!25185 List!17868)) )
))
(declare-datatypes ((ListLongMap!10735 0))(
  ( (ListLongMap!10736 (toList!5383 List!17868)) )
))
(declare-fun lt!403218 () ListLongMap!10735)

(declare-fun contains!4360 (ListLongMap!10735 (_ BitVec 64)) Bool)

(assert (=> b!892485 (contains!4360 lt!403218 (select (arr!25138 (_keys!9979 thiss!1181)) (index!37747 lt!403219)))))

(declare-fun getCurrentListMap!2633 (array!52272 array!52274 (_ BitVec 32) (_ BitVec 32) V!29169 V!29169 (_ BitVec 32) Int) ListLongMap!10735)

(assert (=> b!892485 (= lt!403218 (getCurrentListMap!2633 (_keys!9979 thiss!1181) (_values!5285 thiss!1181) (mask!25808 thiss!1181) (extraKeys!4994 thiss!1181) (zeroValue!5098 thiss!1181) (minValue!5098 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5300 thiss!1181)))))

(declare-fun lt!403217 () Unit!30369)

(declare-fun lemmaValidKeyInArrayIsInListMap!226 (array!52272 array!52274 (_ BitVec 32) (_ BitVec 32) V!29169 V!29169 (_ BitVec 32) Int) Unit!30369)

(assert (=> b!892485 (= lt!403217 (lemmaValidKeyInArrayIsInListMap!226 (_keys!9979 thiss!1181) (_values!5285 thiss!1181) (mask!25808 thiss!1181) (extraKeys!4994 thiss!1181) (zeroValue!5098 thiss!1181) (minValue!5098 thiss!1181) (index!37747 lt!403219) (defaultEntry!5300 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52272 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!892485 (arrayContainsKey!0 (_keys!9979 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!403215 () Unit!30369)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52272 (_ BitVec 64) (_ BitVec 32)) Unit!30369)

(assert (=> b!892485 (= lt!403215 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9979 thiss!1181) key!785 (index!37747 lt!403219)))))

(declare-fun call!39539 () V!29169)

(declare-fun b!892486 () Bool)

(declare-fun get!13240 (ValueCell!8595 V!29169) V!29169)

(declare-fun dynLambda!1291 (Int (_ BitVec 64)) V!29169)

(assert (=> b!892486 (= e!498287 (= call!39539 (get!13240 (select (arr!25139 (_values!5285 thiss!1181)) (index!37747 lt!403219)) (dynLambda!1291 (defaultEntry!5300 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!39536 () Bool)

(declare-fun apply!403 (ListLongMap!10735 (_ BitVec 64)) V!29169)

(assert (=> bm!39536 (= call!39540 (apply!403 lt!403218 key!785))))

(declare-fun mapIsEmpty!28784 () Bool)

(assert (=> mapIsEmpty!28784 mapRes!28784))

(declare-fun array_inv!19722 (array!52272) Bool)

(declare-fun array_inv!19723 (array!52274) Bool)

(assert (=> b!892487 (= e!498294 (and tp!55444 tp_is_empty!18153 (array_inv!19722 (_keys!9979 thiss!1181)) (array_inv!19723 (_values!5285 thiss!1181)) e!498290))))

(declare-fun b!892488 () Bool)

(assert (=> b!892488 (= e!498293 e!498287)))

(declare-fun c!93893 () Bool)

(assert (=> b!892488 (= c!93893 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!892489 () Bool)

(assert (=> b!892489 (= e!498293 e!498289)))

(declare-fun res!604721 () Bool)

(assert (=> b!892489 (= res!604721 (not (= (bvand (extraKeys!4994 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!892489 (=> (not res!604721) (not e!498289))))

(declare-fun b!892490 () Bool)

(assert (=> b!892490 (= e!498285 (= call!39539 (minValue!5098 thiss!1181)))))

(declare-fun bm!39537 () Bool)

(assert (=> bm!39537 (= call!39539 call!39540)))

(declare-fun mapNonEmpty!28784 () Bool)

(declare-fun tp!55445 () Bool)

(assert (=> mapNonEmpty!28784 (= mapRes!28784 (and tp!55445 e!498292))))

(declare-fun mapKey!28784 () (_ BitVec 32))

(declare-fun mapRest!28784 () (Array (_ BitVec 32) ValueCell!8595))

(declare-fun mapValue!28784 () ValueCell!8595)

(assert (=> mapNonEmpty!28784 (= (arr!25139 (_values!5285 thiss!1181)) (store mapRest!28784 mapKey!28784 mapValue!28784))))

(assert (= (and start!75882 res!604717) b!892479))

(assert (= (and b!892479 res!604720) b!892477))

(assert (= (and b!892477 (not res!604722)) b!892483))

(assert (= (and b!892477 (not res!604719)) b!892485))

(assert (= (and b!892485 c!93892) b!892489))

(assert (= (and b!892485 (not c!93892)) b!892488))

(assert (= (and b!892489 res!604721) b!892484))

(assert (= (and b!892488 c!93893) b!892482))

(assert (= (and b!892488 (not c!93893)) b!892486))

(assert (= (and b!892482 res!604718) b!892490))

(assert (= (or b!892490 b!892486) bm!39537))

(assert (= (or b!892484 bm!39537) bm!39536))

(assert (= (and b!892480 condMapEmpty!28784) mapIsEmpty!28784))

(assert (= (and b!892480 (not condMapEmpty!28784)) mapNonEmpty!28784))

(assert (= (and mapNonEmpty!28784 ((_ is ValueCellFull!8595) mapValue!28784)) b!892481))

(assert (= (and b!892480 ((_ is ValueCellFull!8595) mapDefault!28784)) b!892478))

(assert (= b!892487 b!892480))

(assert (= start!75882 b!892487))

(declare-fun b_lambda!12921 () Bool)

(assert (=> (not b_lambda!12921) (not b!892486)))

(declare-fun t!25184 () Bool)

(declare-fun tb!5167 () Bool)

(assert (=> (and b!892487 (= (defaultEntry!5300 thiss!1181) (defaultEntry!5300 thiss!1181)) t!25184) tb!5167))

(declare-fun result!10037 () Bool)

(assert (=> tb!5167 (= result!10037 tp_is_empty!18153)))

(assert (=> b!892486 t!25184))

(declare-fun b_and!26093 () Bool)

(assert (= b_and!26091 (and (=> t!25184 result!10037) b_and!26093)))

(declare-fun m!830805 () Bool)

(assert (=> b!892486 m!830805))

(declare-fun m!830807 () Bool)

(assert (=> b!892486 m!830807))

(assert (=> b!892486 m!830805))

(assert (=> b!892486 m!830807))

(declare-fun m!830809 () Bool)

(assert (=> b!892486 m!830809))

(declare-fun m!830811 () Bool)

(assert (=> mapNonEmpty!28784 m!830811))

(declare-fun m!830813 () Bool)

(assert (=> b!892483 m!830813))

(declare-fun m!830815 () Bool)

(assert (=> b!892485 m!830815))

(declare-fun m!830817 () Bool)

(assert (=> b!892485 m!830817))

(declare-fun m!830819 () Bool)

(assert (=> b!892485 m!830819))

(declare-fun m!830821 () Bool)

(assert (=> b!892485 m!830821))

(declare-fun m!830823 () Bool)

(assert (=> b!892485 m!830823))

(declare-fun m!830825 () Bool)

(assert (=> b!892485 m!830825))

(declare-fun m!830827 () Bool)

(assert (=> b!892485 m!830827))

(assert (=> b!892485 m!830823))

(declare-fun m!830829 () Bool)

(assert (=> b!892485 m!830829))

(declare-fun m!830831 () Bool)

(assert (=> b!892477 m!830831))

(declare-fun m!830833 () Bool)

(assert (=> b!892477 m!830833))

(declare-fun m!830835 () Bool)

(assert (=> start!75882 m!830835))

(declare-fun m!830837 () Bool)

(assert (=> b!892487 m!830837))

(declare-fun m!830839 () Bool)

(assert (=> b!892487 m!830839))

(declare-fun m!830841 () Bool)

(assert (=> bm!39536 m!830841))

(check-sat tp_is_empty!18153 (not b!892486) (not start!75882) (not b_next!15825) (not b!892487) b_and!26093 (not b_lambda!12921) (not b!892485) (not bm!39536) (not b!892483) (not mapNonEmpty!28784) (not b!892477))
(check-sat b_and!26093 (not b_next!15825))
