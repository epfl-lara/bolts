; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75874 () Bool)

(assert start!75874)

(declare-fun b!892302 () Bool)

(declare-fun b_free!15817 () Bool)

(declare-fun b_next!15817 () Bool)

(assert (=> b!892302 (= b_free!15817 (not b_next!15817))))

(declare-fun tp!55421 () Bool)

(declare-fun b_and!26075 () Bool)

(assert (=> b!892302 (= tp!55421 b_and!26075)))

(declare-fun b!892301 () Bool)

(declare-fun e!498150 () Bool)

(declare-fun e!498152 () Bool)

(assert (=> b!892301 (= e!498150 e!498152)))

(declare-fun c!93869 () Bool)

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!892301 (= c!93869 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!498145 () Bool)

(declare-fun tp_is_empty!18145 () Bool)

(declare-datatypes ((array!52256 0))(
  ( (array!52257 (arr!25130 (Array (_ BitVec 32) (_ BitVec 64))) (size!25575 (_ BitVec 32))) )
))
(declare-datatypes ((V!29159 0))(
  ( (V!29160 (val!9123 Int)) )
))
(declare-datatypes ((ValueCell!8591 0))(
  ( (ValueCellFull!8591 (v!11595 V!29159)) (EmptyCell!8591) )
))
(declare-datatypes ((array!52258 0))(
  ( (array!52259 (arr!25131 (Array (_ BitVec 32) ValueCell!8591)) (size!25576 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4198 0))(
  ( (LongMapFixedSize!4199 (defaultEntry!5296 Int) (mask!25802 (_ BitVec 32)) (extraKeys!4990 (_ BitVec 32)) (zeroValue!5094 V!29159) (minValue!5094 V!29159) (_size!2154 (_ BitVec 32)) (_keys!9975 array!52256) (_values!5281 array!52258) (_vacant!2154 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4198)

(declare-fun e!498142 () Bool)

(declare-fun array_inv!19714 (array!52256) Bool)

(declare-fun array_inv!19715 (array!52258) Bool)

(assert (=> b!892302 (= e!498145 (and tp!55421 tp_is_empty!18145 (array_inv!19714 (_keys!9975 thiss!1181)) (array_inv!19715 (_values!5281 thiss!1181)) e!498142))))

(declare-fun mapIsEmpty!28772 () Bool)

(declare-fun mapRes!28772 () Bool)

(assert (=> mapIsEmpty!28772 mapRes!28772))

(declare-fun b!892303 () Bool)

(declare-fun res!604649 () Bool)

(declare-fun e!498149 () Bool)

(assert (=> b!892303 (=> (not res!604649) (not e!498149))))

(assert (=> b!892303 (= res!604649 (not (= (bvand (extraKeys!4990 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!892303 (= e!498152 e!498149)))

(declare-fun b!892304 () Bool)

(declare-fun e!498144 () Bool)

(assert (=> b!892304 (= e!498144 true)))

(assert (=> b!892304 e!498150))

(declare-fun c!93868 () Bool)

(assert (=> b!892304 (= c!93868 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!30361 0))(
  ( (Unit!30362) )
))
(declare-fun lt!403141 () Unit!30361)

(declare-datatypes ((SeekEntryResult!8840 0))(
  ( (MissingZero!8840 (index!37730 (_ BitVec 32))) (Found!8840 (index!37731 (_ BitVec 32))) (Intermediate!8840 (undefined!9652 Bool) (index!37732 (_ BitVec 32)) (x!75835 (_ BitVec 32))) (Undefined!8840) (MissingVacant!8840 (index!37733 (_ BitVec 32))) )
))
(declare-fun lt!403143 () SeekEntryResult!8840)

(declare-fun lemmaKeyInListMapThenSameValueInArray!3 (array!52256 array!52258 (_ BitVec 32) (_ BitVec 32) V!29159 V!29159 (_ BitVec 64) (_ BitVec 32) Int) Unit!30361)

(assert (=> b!892304 (= lt!403141 (lemmaKeyInListMapThenSameValueInArray!3 (_keys!9975 thiss!1181) (_values!5281 thiss!1181) (mask!25802 thiss!1181) (extraKeys!4990 thiss!1181) (zeroValue!5094 thiss!1181) (minValue!5094 thiss!1181) key!785 (index!37731 lt!403143) (defaultEntry!5296 thiss!1181)))))

(declare-datatypes ((tuple2!12016 0))(
  ( (tuple2!12017 (_1!6018 (_ BitVec 64)) (_2!6018 V!29159)) )
))
(declare-datatypes ((List!17864 0))(
  ( (Nil!17861) (Cons!17860 (h!18991 tuple2!12016) (t!25173 List!17864)) )
))
(declare-datatypes ((ListLongMap!10727 0))(
  ( (ListLongMap!10728 (toList!5379 List!17864)) )
))
(declare-fun lt!403140 () ListLongMap!10727)

(declare-fun contains!4356 (ListLongMap!10727 (_ BitVec 64)) Bool)

(assert (=> b!892304 (contains!4356 lt!403140 (select (arr!25130 (_keys!9975 thiss!1181)) (index!37731 lt!403143)))))

(declare-fun getCurrentListMap!2630 (array!52256 array!52258 (_ BitVec 32) (_ BitVec 32) V!29159 V!29159 (_ BitVec 32) Int) ListLongMap!10727)

(assert (=> b!892304 (= lt!403140 (getCurrentListMap!2630 (_keys!9975 thiss!1181) (_values!5281 thiss!1181) (mask!25802 thiss!1181) (extraKeys!4990 thiss!1181) (zeroValue!5094 thiss!1181) (minValue!5094 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5296 thiss!1181)))))

(declare-fun lt!403139 () Unit!30361)

(declare-fun lemmaValidKeyInArrayIsInListMap!223 (array!52256 array!52258 (_ BitVec 32) (_ BitVec 32) V!29159 V!29159 (_ BitVec 32) Int) Unit!30361)

(assert (=> b!892304 (= lt!403139 (lemmaValidKeyInArrayIsInListMap!223 (_keys!9975 thiss!1181) (_values!5281 thiss!1181) (mask!25802 thiss!1181) (extraKeys!4990 thiss!1181) (zeroValue!5094 thiss!1181) (minValue!5094 thiss!1181) (index!37731 lt!403143) (defaultEntry!5296 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52256 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!892304 (arrayContainsKey!0 (_keys!9975 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!403138 () Unit!30361)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52256 (_ BitVec 64) (_ BitVec 32)) Unit!30361)

(assert (=> b!892304 (= lt!403138 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9975 thiss!1181) key!785 (index!37731 lt!403143)))))

(declare-fun b!892305 () Bool)

(declare-fun e!498151 () Bool)

(assert (=> b!892305 (= e!498151 tp_is_empty!18145)))

(declare-fun b!892306 () Bool)

(declare-fun e!498141 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!892306 (= e!498141 (inRange!0 (index!37731 lt!403143) (mask!25802 thiss!1181)))))

(declare-fun b!892307 () Bool)

(declare-fun e!498143 () Bool)

(declare-fun call!39515 () V!29159)

(assert (=> b!892307 (= e!498143 (= call!39515 (zeroValue!5094 thiss!1181)))))

(declare-fun b!892308 () Bool)

(declare-fun res!604646 () Bool)

(declare-fun e!498148 () Bool)

(assert (=> b!892308 (=> (not res!604646) (not e!498148))))

(assert (=> b!892308 (= res!604646 (not (= key!785 (bvneg key!785))))))

(declare-fun b!892309 () Bool)

(assert (=> b!892309 (= e!498150 e!498143)))

(declare-fun res!604647 () Bool)

(assert (=> b!892309 (= res!604647 (not (= (bvand (extraKeys!4990 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!892309 (=> (not res!604647) (not e!498143))))

(declare-fun call!39516 () V!29159)

(declare-fun b!892310 () Bool)

(declare-fun get!13234 (ValueCell!8591 V!29159) V!29159)

(declare-fun dynLambda!1287 (Int (_ BitVec 64)) V!29159)

(assert (=> b!892310 (= e!498152 (= call!39516 (get!13234 (select (arr!25131 (_values!5281 thiss!1181)) (index!37731 lt!403143)) (dynLambda!1287 (defaultEntry!5296 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!892311 () Bool)

(assert (=> b!892311 (= e!498148 (not e!498144))))

(declare-fun res!604648 () Bool)

(assert (=> b!892311 (=> res!604648 e!498144)))

(assert (=> b!892311 (= res!604648 (not (is-Found!8840 lt!403143)))))

(assert (=> b!892311 e!498141))

(declare-fun res!604650 () Bool)

(assert (=> b!892311 (=> res!604650 e!498141)))

(assert (=> b!892311 (= res!604650 (not (is-Found!8840 lt!403143)))))

(declare-fun lt!403142 () Unit!30361)

(declare-fun lemmaSeekEntryGivesInRangeIndex!55 (array!52256 array!52258 (_ BitVec 32) (_ BitVec 32) V!29159 V!29159 (_ BitVec 64)) Unit!30361)

(assert (=> b!892311 (= lt!403142 (lemmaSeekEntryGivesInRangeIndex!55 (_keys!9975 thiss!1181) (_values!5281 thiss!1181) (mask!25802 thiss!1181) (extraKeys!4990 thiss!1181) (zeroValue!5094 thiss!1181) (minValue!5094 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52256 (_ BitVec 32)) SeekEntryResult!8840)

(assert (=> b!892311 (= lt!403143 (seekEntry!0 key!785 (_keys!9975 thiss!1181) (mask!25802 thiss!1181)))))

(declare-fun bm!39512 () Bool)

(declare-fun apply!399 (ListLongMap!10727 (_ BitVec 64)) V!29159)

(assert (=> bm!39512 (= call!39515 (apply!399 lt!403140 key!785))))

(declare-fun bm!39513 () Bool)

(assert (=> bm!39513 (= call!39516 call!39515)))

(declare-fun b!892312 () Bool)

(assert (=> b!892312 (= e!498149 (= call!39516 (minValue!5094 thiss!1181)))))

(declare-fun res!604645 () Bool)

(assert (=> start!75874 (=> (not res!604645) (not e!498148))))

(declare-fun valid!1611 (LongMapFixedSize!4198) Bool)

(assert (=> start!75874 (= res!604645 (valid!1611 thiss!1181))))

(assert (=> start!75874 e!498148))

(assert (=> start!75874 e!498145))

(assert (=> start!75874 true))

(declare-fun mapNonEmpty!28772 () Bool)

(declare-fun tp!55420 () Bool)

(declare-fun e!498147 () Bool)

(assert (=> mapNonEmpty!28772 (= mapRes!28772 (and tp!55420 e!498147))))

(declare-fun mapRest!28772 () (Array (_ BitVec 32) ValueCell!8591))

(declare-fun mapKey!28772 () (_ BitVec 32))

(declare-fun mapValue!28772 () ValueCell!8591)

(assert (=> mapNonEmpty!28772 (= (arr!25131 (_values!5281 thiss!1181)) (store mapRest!28772 mapKey!28772 mapValue!28772))))

(declare-fun b!892313 () Bool)

(assert (=> b!892313 (= e!498142 (and e!498151 mapRes!28772))))

(declare-fun condMapEmpty!28772 () Bool)

(declare-fun mapDefault!28772 () ValueCell!8591)

