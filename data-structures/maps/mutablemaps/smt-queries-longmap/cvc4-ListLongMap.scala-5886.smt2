; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75878 () Bool)

(assert start!75878)

(declare-fun b!892389 () Bool)

(declare-fun b_free!15821 () Bool)

(declare-fun b_next!15821 () Bool)

(assert (=> b!892389 (= b_free!15821 (not b_next!15821))))

(declare-fun tp!55432 () Bool)

(declare-fun b_and!26083 () Bool)

(assert (=> b!892389 (= tp!55432 b_and!26083)))

(declare-fun mapIsEmpty!28778 () Bool)

(declare-fun mapRes!28778 () Bool)

(assert (=> mapIsEmpty!28778 mapRes!28778))

(declare-fun tp_is_empty!18149 () Bool)

(declare-fun e!498223 () Bool)

(declare-datatypes ((array!52264 0))(
  ( (array!52265 (arr!25134 (Array (_ BitVec 32) (_ BitVec 64))) (size!25579 (_ BitVec 32))) )
))
(declare-datatypes ((V!29163 0))(
  ( (V!29164 (val!9125 Int)) )
))
(declare-datatypes ((ValueCell!8593 0))(
  ( (ValueCellFull!8593 (v!11597 V!29163)) (EmptyCell!8593) )
))
(declare-datatypes ((array!52266 0))(
  ( (array!52267 (arr!25135 (Array (_ BitVec 32) ValueCell!8593)) (size!25580 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4202 0))(
  ( (LongMapFixedSize!4203 (defaultEntry!5298 Int) (mask!25804 (_ BitVec 32)) (extraKeys!4992 (_ BitVec 32)) (zeroValue!5096 V!29163) (minValue!5096 V!29163) (_size!2156 (_ BitVec 32)) (_keys!9977 array!52264) (_values!5283 array!52266) (_vacant!2156 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4202)

(declare-fun e!498215 () Bool)

(declare-fun array_inv!19718 (array!52264) Bool)

(declare-fun array_inv!19719 (array!52266) Bool)

(assert (=> b!892389 (= e!498215 (and tp!55432 tp_is_empty!18149 (array_inv!19718 (_keys!9977 thiss!1181)) (array_inv!19719 (_values!5283 thiss!1181)) e!498223))))

(declare-fun b!892390 () Bool)

(declare-fun e!498219 () Bool)

(declare-fun call!39527 () V!29163)

(assert (=> b!892390 (= e!498219 (= call!39527 (minValue!5096 thiss!1181)))))

(declare-fun b!892391 () Bool)

(declare-fun res!604682 () Bool)

(declare-fun e!498218 () Bool)

(assert (=> b!892391 (=> (not res!604682) (not e!498218))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!892391 (= res!604682 (not (= key!785 (bvneg key!785))))))

(declare-fun b!892392 () Bool)

(declare-fun e!498213 () Bool)

(declare-fun call!39528 () V!29163)

(assert (=> b!892392 (= e!498213 (= call!39528 (zeroValue!5096 thiss!1181)))))

(declare-fun b!892393 () Bool)

(declare-fun e!498217 () Bool)

(assert (=> b!892393 (= e!498218 (not e!498217))))

(declare-fun res!604681 () Bool)

(assert (=> b!892393 (=> res!604681 e!498217)))

(declare-datatypes ((SeekEntryResult!8842 0))(
  ( (MissingZero!8842 (index!37738 (_ BitVec 32))) (Found!8842 (index!37739 (_ BitVec 32))) (Intermediate!8842 (undefined!9654 Bool) (index!37740 (_ BitVec 32)) (x!75841 (_ BitVec 32))) (Undefined!8842) (MissingVacant!8842 (index!37741 (_ BitVec 32))) )
))
(declare-fun lt!403176 () SeekEntryResult!8842)

(assert (=> b!892393 (= res!604681 (not (is-Found!8842 lt!403176)))))

(declare-fun e!498224 () Bool)

(assert (=> b!892393 e!498224))

(declare-fun res!604684 () Bool)

(assert (=> b!892393 (=> res!604684 e!498224)))

(assert (=> b!892393 (= res!604684 (not (is-Found!8842 lt!403176)))))

(declare-datatypes ((Unit!30365 0))(
  ( (Unit!30366) )
))
(declare-fun lt!403179 () Unit!30365)

(declare-fun lemmaSeekEntryGivesInRangeIndex!57 (array!52264 array!52266 (_ BitVec 32) (_ BitVec 32) V!29163 V!29163 (_ BitVec 64)) Unit!30365)

(assert (=> b!892393 (= lt!403179 (lemmaSeekEntryGivesInRangeIndex!57 (_keys!9977 thiss!1181) (_values!5283 thiss!1181) (mask!25804 thiss!1181) (extraKeys!4992 thiss!1181) (zeroValue!5096 thiss!1181) (minValue!5096 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52264 (_ BitVec 32)) SeekEntryResult!8842)

(assert (=> b!892393 (= lt!403176 (seekEntry!0 key!785 (_keys!9977 thiss!1181) (mask!25804 thiss!1181)))))

(declare-fun b!892394 () Bool)

(declare-fun res!604686 () Bool)

(assert (=> b!892394 (=> (not res!604686) (not e!498219))))

(assert (=> b!892394 (= res!604686 (not (= (bvand (extraKeys!4992 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!498220 () Bool)

(assert (=> b!892394 (= e!498220 e!498219)))

(declare-fun res!604685 () Bool)

(assert (=> start!75878 (=> (not res!604685) (not e!498218))))

(declare-fun valid!1613 (LongMapFixedSize!4202) Bool)

(assert (=> start!75878 (= res!604685 (valid!1613 thiss!1181))))

(assert (=> start!75878 e!498218))

(assert (=> start!75878 e!498215))

(assert (=> start!75878 true))

(declare-fun b!892395 () Bool)

(declare-fun e!498214 () Bool)

(assert (=> b!892395 (= e!498214 e!498213)))

(declare-fun res!604683 () Bool)

(assert (=> b!892395 (= res!604683 (not (= (bvand (extraKeys!4992 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!892395 (=> (not res!604683) (not e!498213))))

(declare-fun bm!39524 () Bool)

(assert (=> bm!39524 (= call!39527 call!39528)))

(declare-fun b!892396 () Bool)

(assert (=> b!892396 (= e!498217 true)))

(assert (=> b!892396 e!498214))

(declare-fun c!93880 () Bool)

(assert (=> b!892396 (= c!93880 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!403174 () Unit!30365)

(declare-fun lemmaKeyInListMapThenSameValueInArray!5 (array!52264 array!52266 (_ BitVec 32) (_ BitVec 32) V!29163 V!29163 (_ BitVec 64) (_ BitVec 32) Int) Unit!30365)

(assert (=> b!892396 (= lt!403174 (lemmaKeyInListMapThenSameValueInArray!5 (_keys!9977 thiss!1181) (_values!5283 thiss!1181) (mask!25804 thiss!1181) (extraKeys!4992 thiss!1181) (zeroValue!5096 thiss!1181) (minValue!5096 thiss!1181) key!785 (index!37739 lt!403176) (defaultEntry!5298 thiss!1181)))))

(declare-datatypes ((tuple2!12020 0))(
  ( (tuple2!12021 (_1!6020 (_ BitVec 64)) (_2!6020 V!29163)) )
))
(declare-datatypes ((List!17866 0))(
  ( (Nil!17863) (Cons!17862 (h!18993 tuple2!12020) (t!25179 List!17866)) )
))
(declare-datatypes ((ListLongMap!10731 0))(
  ( (ListLongMap!10732 (toList!5381 List!17866)) )
))
(declare-fun lt!403178 () ListLongMap!10731)

(declare-fun contains!4358 (ListLongMap!10731 (_ BitVec 64)) Bool)

(assert (=> b!892396 (contains!4358 lt!403178 (select (arr!25134 (_keys!9977 thiss!1181)) (index!37739 lt!403176)))))

(declare-fun getCurrentListMap!2632 (array!52264 array!52266 (_ BitVec 32) (_ BitVec 32) V!29163 V!29163 (_ BitVec 32) Int) ListLongMap!10731)

(assert (=> b!892396 (= lt!403178 (getCurrentListMap!2632 (_keys!9977 thiss!1181) (_values!5283 thiss!1181) (mask!25804 thiss!1181) (extraKeys!4992 thiss!1181) (zeroValue!5096 thiss!1181) (minValue!5096 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5298 thiss!1181)))))

(declare-fun lt!403177 () Unit!30365)

(declare-fun lemmaValidKeyInArrayIsInListMap!225 (array!52264 array!52266 (_ BitVec 32) (_ BitVec 32) V!29163 V!29163 (_ BitVec 32) Int) Unit!30365)

(assert (=> b!892396 (= lt!403177 (lemmaValidKeyInArrayIsInListMap!225 (_keys!9977 thiss!1181) (_values!5283 thiss!1181) (mask!25804 thiss!1181) (extraKeys!4992 thiss!1181) (zeroValue!5096 thiss!1181) (minValue!5096 thiss!1181) (index!37739 lt!403176) (defaultEntry!5298 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52264 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!892396 (arrayContainsKey!0 (_keys!9977 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!403175 () Unit!30365)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52264 (_ BitVec 64) (_ BitVec 32)) Unit!30365)

(assert (=> b!892396 (= lt!403175 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9977 thiss!1181) key!785 (index!37739 lt!403176)))))

(declare-fun b!892397 () Bool)

(declare-fun get!13236 (ValueCell!8593 V!29163) V!29163)

(declare-fun dynLambda!1289 (Int (_ BitVec 64)) V!29163)

(assert (=> b!892397 (= e!498220 (= call!39527 (get!13236 (select (arr!25135 (_values!5283 thiss!1181)) (index!37739 lt!403176)) (dynLambda!1289 (defaultEntry!5298 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!892398 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!892398 (= e!498224 (inRange!0 (index!37739 lt!403176) (mask!25804 thiss!1181)))))

(declare-fun b!892399 () Bool)

(assert (=> b!892399 (= e!498214 e!498220)))

(declare-fun c!93881 () Bool)

(assert (=> b!892399 (= c!93881 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!39525 () Bool)

(declare-fun apply!401 (ListLongMap!10731 (_ BitVec 64)) V!29163)

(assert (=> bm!39525 (= call!39528 (apply!401 lt!403178 key!785))))

(declare-fun b!892400 () Bool)

(declare-fun e!498222 () Bool)

(assert (=> b!892400 (= e!498222 tp_is_empty!18149)))

(declare-fun b!892401 () Bool)

(declare-fun e!498221 () Bool)

(assert (=> b!892401 (= e!498223 (and e!498221 mapRes!28778))))

(declare-fun condMapEmpty!28778 () Bool)

(declare-fun mapDefault!28778 () ValueCell!8593)

