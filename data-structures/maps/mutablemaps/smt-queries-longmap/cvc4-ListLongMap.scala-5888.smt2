; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75890 () Bool)

(assert start!75890)

(declare-fun b!892672 () Bool)

(declare-fun b_free!15833 () Bool)

(declare-fun b_next!15833 () Bool)

(assert (=> b!892672 (= b_free!15833 (not b_next!15833))))

(declare-fun tp!55469 () Bool)

(declare-fun b_and!26107 () Bool)

(assert (=> b!892672 (= tp!55469 b_and!26107)))

(declare-fun res!604803 () Bool)

(declare-fun e!498444 () Bool)

(assert (=> start!75890 (=> (not res!604803) (not e!498444))))

(declare-datatypes ((array!52288 0))(
  ( (array!52289 (arr!25146 (Array (_ BitVec 32) (_ BitVec 64))) (size!25591 (_ BitVec 32))) )
))
(declare-datatypes ((V!29179 0))(
  ( (V!29180 (val!9131 Int)) )
))
(declare-datatypes ((ValueCell!8599 0))(
  ( (ValueCellFull!8599 (v!11605 V!29179)) (EmptyCell!8599) )
))
(declare-datatypes ((array!52290 0))(
  ( (array!52291 (arr!25147 (Array (_ BitVec 32) ValueCell!8599)) (size!25592 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4214 0))(
  ( (LongMapFixedSize!4215 (defaultEntry!5304 Int) (mask!25814 (_ BitVec 32)) (extraKeys!4998 (_ BitVec 32)) (zeroValue!5102 V!29179) (minValue!5102 V!29179) (_size!2162 (_ BitVec 32)) (_keys!9983 array!52288) (_values!5289 array!52290) (_vacant!2162 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4214)

(declare-fun valid!1619 (LongMapFixedSize!4214) Bool)

(assert (=> start!75890 (= res!604803 (valid!1619 thiss!1181))))

(assert (=> start!75890 e!498444))

(declare-fun e!498441 () Bool)

(assert (=> start!75890 e!498441))

(assert (=> start!75890 true))

(declare-fun bm!39560 () Bool)

(declare-fun call!39563 () V!29179)

(declare-fun call!39564 () V!29179)

(assert (=> bm!39560 (= call!39563 call!39564)))

(declare-fun e!498438 () Bool)

(declare-datatypes ((SeekEntryResult!8848 0))(
  ( (MissingZero!8848 (index!37762 (_ BitVec 32))) (Found!8848 (index!37763 (_ BitVec 32))) (Intermediate!8848 (undefined!9660 Bool) (index!37764 (_ BitVec 32)) (x!75875 (_ BitVec 32))) (Undefined!8848) (MissingVacant!8848 (index!37765 (_ BitVec 32))) )
))
(declare-fun lt!403291 () SeekEntryResult!8848)

(declare-fun b!892661 () Bool)

(declare-fun get!13246 (ValueCell!8599 V!29179) V!29179)

(declare-fun dynLambda!1295 (Int (_ BitVec 64)) V!29179)

(assert (=> b!892661 (= e!498438 (= call!39563 (get!13246 (select (arr!25147 (_values!5289 thiss!1181)) (index!37763 lt!403291)) (dynLambda!1295 (defaultEntry!5304 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!892662 () Bool)

(declare-fun res!604801 () Bool)

(assert (=> b!892662 (=> (not res!604801) (not e!498444))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!892662 (= res!604801 (not (= key!785 (bvneg key!785))))))

(declare-fun b!892663 () Bool)

(declare-fun e!498446 () Bool)

(declare-datatypes ((Option!450 0))(
  ( (Some!449 (v!11606 V!29179)) (None!448) )
))
(declare-fun isDefined!325 (Option!450) Bool)

(declare-datatypes ((tuple2!12030 0))(
  ( (tuple2!12031 (_1!6025 (_ BitVec 64)) (_2!6025 V!29179)) )
))
(declare-datatypes ((List!17871 0))(
  ( (Nil!17868) (Cons!17867 (h!18998 tuple2!12030) (t!25196 List!17871)) )
))
(declare-fun getValueByKey!444 (List!17871 (_ BitVec 64)) Option!450)

(declare-datatypes ((ListLongMap!10741 0))(
  ( (ListLongMap!10742 (toList!5386 List!17871)) )
))
(declare-fun map!12203 (LongMapFixedSize!4214) ListLongMap!10741)

(assert (=> b!892663 (= e!498446 (isDefined!325 (getValueByKey!444 (toList!5386 (map!12203 thiss!1181)) key!785)))))

(declare-fun mapIsEmpty!28796 () Bool)

(declare-fun mapRes!28796 () Bool)

(assert (=> mapIsEmpty!28796 mapRes!28796))

(declare-fun b!892664 () Bool)

(declare-fun e!498449 () Bool)

(assert (=> b!892664 (= e!498449 e!498438)))

(declare-fun c!93916 () Bool)

(assert (=> b!892664 (= c!93916 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!39561 () Bool)

(declare-fun lt!403292 () ListLongMap!10741)

(declare-fun apply!406 (ListLongMap!10741 (_ BitVec 64)) V!29179)

(assert (=> bm!39561 (= call!39564 (apply!406 lt!403292 key!785))))

(declare-fun b!892665 () Bool)

(declare-fun e!498447 () Bool)

(assert (=> b!892665 (= e!498444 (not e!498447))))

(declare-fun res!604798 () Bool)

(assert (=> b!892665 (=> res!604798 e!498447)))

(assert (=> b!892665 (= res!604798 (not (is-Found!8848 lt!403291)))))

(declare-fun e!498445 () Bool)

(assert (=> b!892665 e!498445))

(declare-fun res!604797 () Bool)

(assert (=> b!892665 (=> res!604797 e!498445)))

(assert (=> b!892665 (= res!604797 (not (is-Found!8848 lt!403291)))))

(declare-datatypes ((Unit!30377 0))(
  ( (Unit!30378) )
))
(declare-fun lt!403296 () Unit!30377)

(declare-fun lemmaSeekEntryGivesInRangeIndex!62 (array!52288 array!52290 (_ BitVec 32) (_ BitVec 32) V!29179 V!29179 (_ BitVec 64)) Unit!30377)

(assert (=> b!892665 (= lt!403296 (lemmaSeekEntryGivesInRangeIndex!62 (_keys!9983 thiss!1181) (_values!5289 thiss!1181) (mask!25814 thiss!1181) (extraKeys!4998 thiss!1181) (zeroValue!5102 thiss!1181) (minValue!5102 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52288 (_ BitVec 32)) SeekEntryResult!8848)

(assert (=> b!892665 (= lt!403291 (seekEntry!0 key!785 (_keys!9983 thiss!1181) (mask!25814 thiss!1181)))))

(declare-fun mapNonEmpty!28796 () Bool)

(declare-fun tp!55468 () Bool)

(declare-fun e!498440 () Bool)

(assert (=> mapNonEmpty!28796 (= mapRes!28796 (and tp!55468 e!498440))))

(declare-fun mapValue!28796 () ValueCell!8599)

(declare-fun mapKey!28796 () (_ BitVec 32))

(declare-fun mapRest!28796 () (Array (_ BitVec 32) ValueCell!8599))

(assert (=> mapNonEmpty!28796 (= (arr!25147 (_values!5289 thiss!1181)) (store mapRest!28796 mapKey!28796 mapValue!28796))))

(declare-fun b!892666 () Bool)

(declare-fun e!498442 () Bool)

(assert (=> b!892666 (= e!498442 (= call!39563 (minValue!5102 thiss!1181)))))

(declare-fun b!892667 () Bool)

(declare-fun e!498437 () Bool)

(declare-fun e!498439 () Bool)

(assert (=> b!892667 (= e!498437 (and e!498439 mapRes!28796))))

(declare-fun condMapEmpty!28796 () Bool)

(declare-fun mapDefault!28796 () ValueCell!8599)

