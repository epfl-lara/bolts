; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75880 () Bool)

(assert start!75880)

(declare-fun b!892440 () Bool)

(declare-fun b_free!15823 () Bool)

(declare-fun b_next!15823 () Bool)

(assert (=> b!892440 (= b_free!15823 (not b_next!15823))))

(declare-fun tp!55439 () Bool)

(declare-fun b_and!26087 () Bool)

(assert (=> b!892440 (= tp!55439 b_and!26087)))

(declare-fun b!892433 () Bool)

(declare-fun res!604703 () Bool)

(declare-fun e!498251 () Bool)

(assert (=> b!892433 (=> (not res!604703) (not e!498251))))

(declare-datatypes ((array!52268 0))(
  ( (array!52269 (arr!25136 (Array (_ BitVec 32) (_ BitVec 64))) (size!25581 (_ BitVec 32))) )
))
(declare-datatypes ((V!29167 0))(
  ( (V!29168 (val!9126 Int)) )
))
(declare-datatypes ((ValueCell!8594 0))(
  ( (ValueCellFull!8594 (v!11598 V!29167)) (EmptyCell!8594) )
))
(declare-datatypes ((array!52270 0))(
  ( (array!52271 (arr!25137 (Array (_ BitVec 32) ValueCell!8594)) (size!25582 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4204 0))(
  ( (LongMapFixedSize!4205 (defaultEntry!5299 Int) (mask!25807 (_ BitVec 32)) (extraKeys!4993 (_ BitVec 32)) (zeroValue!5097 V!29167) (minValue!5097 V!29167) (_size!2157 (_ BitVec 32)) (_keys!9978 array!52268) (_values!5284 array!52270) (_vacant!2157 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4204)

(assert (=> b!892433 (= res!604703 (not (= (bvand (extraKeys!4993 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!498259 () Bool)

(assert (=> b!892433 (= e!498259 e!498251)))

(declare-fun bm!39530 () Bool)

(declare-fun call!39533 () V!29167)

(declare-fun call!39534 () V!29167)

(assert (=> bm!39530 (= call!39533 call!39534)))

(declare-fun b!892434 () Bool)

(declare-fun e!498253 () Bool)

(declare-datatypes ((SeekEntryResult!8843 0))(
  ( (MissingZero!8843 (index!37742 (_ BitVec 32))) (Found!8843 (index!37743 (_ BitVec 32))) (Intermediate!8843 (undefined!9655 Bool) (index!37744 (_ BitVec 32)) (x!75852 (_ BitVec 32))) (Undefined!8843) (MissingVacant!8843 (index!37745 (_ BitVec 32))) )
))
(declare-fun lt!403199 () SeekEntryResult!8843)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!892434 (= e!498253 (inRange!0 (index!37743 lt!403199) (mask!25807 thiss!1181)))))

(declare-fun b!892435 () Bool)

(declare-fun e!498255 () Bool)

(declare-fun e!498256 () Bool)

(assert (=> b!892435 (= e!498255 e!498256)))

(declare-fun res!604704 () Bool)

(assert (=> b!892435 (= res!604704 (not (= (bvand (extraKeys!4993 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!892435 (=> (not res!604704) (not e!498256))))

(declare-fun bm!39531 () Bool)

(declare-datatypes ((tuple2!12022 0))(
  ( (tuple2!12023 (_1!6021 (_ BitVec 64)) (_2!6021 V!29167)) )
))
(declare-datatypes ((List!17867 0))(
  ( (Nil!17864) (Cons!17863 (h!18994 tuple2!12022) (t!25182 List!17867)) )
))
(declare-datatypes ((ListLongMap!10733 0))(
  ( (ListLongMap!10734 (toList!5382 List!17867)) )
))
(declare-fun lt!403197 () ListLongMap!10733)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun apply!402 (ListLongMap!10733 (_ BitVec 64)) V!29167)

(assert (=> bm!39531 (= call!39534 (apply!402 lt!403197 key!785))))

(declare-fun res!604700 () Bool)

(declare-fun e!498252 () Bool)

(assert (=> start!75880 (=> (not res!604700) (not e!498252))))

(declare-fun valid!1614 (LongMapFixedSize!4204) Bool)

(assert (=> start!75880 (= res!604700 (valid!1614 thiss!1181))))

(assert (=> start!75880 e!498252))

(declare-fun e!498254 () Bool)

(assert (=> start!75880 e!498254))

(assert (=> start!75880 true))

(declare-fun mapNonEmpty!28781 () Bool)

(declare-fun mapRes!28781 () Bool)

(declare-fun tp!55438 () Bool)

(declare-fun e!498257 () Bool)

(assert (=> mapNonEmpty!28781 (= mapRes!28781 (and tp!55438 e!498257))))

(declare-fun mapRest!28781 () (Array (_ BitVec 32) ValueCell!8594))

(declare-fun mapValue!28781 () ValueCell!8594)

(declare-fun mapKey!28781 () (_ BitVec 32))

(assert (=> mapNonEmpty!28781 (= (arr!25137 (_values!5284 thiss!1181)) (store mapRest!28781 mapKey!28781 mapValue!28781))))

(declare-fun b!892436 () Bool)

(declare-fun get!13239 (ValueCell!8594 V!29167) V!29167)

(declare-fun dynLambda!1290 (Int (_ BitVec 64)) V!29167)

(assert (=> b!892436 (= e!498259 (= call!39533 (get!13239 (select (arr!25137 (_values!5284 thiss!1181)) (index!37743 lt!403199)) (dynLambda!1290 (defaultEntry!5299 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!892437 () Bool)

(declare-fun e!498249 () Bool)

(assert (=> b!892437 (= e!498252 (not e!498249))))

(declare-fun res!604702 () Bool)

(assert (=> b!892437 (=> res!604702 e!498249)))

(assert (=> b!892437 (= res!604702 (not (is-Found!8843 lt!403199)))))

(assert (=> b!892437 e!498253))

(declare-fun res!604701 () Bool)

(assert (=> b!892437 (=> res!604701 e!498253)))

(assert (=> b!892437 (= res!604701 (not (is-Found!8843 lt!403199)))))

(declare-datatypes ((Unit!30367 0))(
  ( (Unit!30368) )
))
(declare-fun lt!403195 () Unit!30367)

(declare-fun lemmaSeekEntryGivesInRangeIndex!58 (array!52268 array!52270 (_ BitVec 32) (_ BitVec 32) V!29167 V!29167 (_ BitVec 64)) Unit!30367)

(assert (=> b!892437 (= lt!403195 (lemmaSeekEntryGivesInRangeIndex!58 (_keys!9978 thiss!1181) (_values!5284 thiss!1181) (mask!25807 thiss!1181) (extraKeys!4993 thiss!1181) (zeroValue!5097 thiss!1181) (minValue!5097 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52268 (_ BitVec 32)) SeekEntryResult!8843)

(assert (=> b!892437 (= lt!403199 (seekEntry!0 key!785 (_keys!9978 thiss!1181) (mask!25807 thiss!1181)))))

(declare-fun b!892438 () Bool)

(assert (=> b!892438 (= e!498251 (= call!39533 (minValue!5097 thiss!1181)))))

(declare-fun b!892439 () Bool)

(declare-fun e!498250 () Bool)

(declare-fun tp_is_empty!18151 () Bool)

(assert (=> b!892439 (= e!498250 tp_is_empty!18151)))

(declare-fun e!498260 () Bool)

(declare-fun array_inv!19720 (array!52268) Bool)

(declare-fun array_inv!19721 (array!52270) Bool)

(assert (=> b!892440 (= e!498254 (and tp!55439 tp_is_empty!18151 (array_inv!19720 (_keys!9978 thiss!1181)) (array_inv!19721 (_values!5284 thiss!1181)) e!498260))))

(declare-fun b!892441 () Bool)

(assert (=> b!892441 (= e!498260 (and e!498250 mapRes!28781))))

(declare-fun condMapEmpty!28781 () Bool)

(declare-fun mapDefault!28781 () ValueCell!8594)

