; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17392 () Bool)

(assert start!17392)

(declare-fun b!174418 () Bool)

(declare-fun b_free!4315 () Bool)

(declare-fun b_next!4315 () Bool)

(assert (=> b!174418 (= b_free!4315 (not b_next!4315))))

(declare-fun tp!15613 () Bool)

(declare-fun b_and!10799 () Bool)

(assert (=> b!174418 (= tp!15613 b_and!10799)))

(declare-fun b!174412 () Bool)

(declare-fun e!115186 () Bool)

(declare-datatypes ((V!5097 0))(
  ( (V!5098 (val!2088 Int)) )
))
(declare-datatypes ((ValueCell!1700 0))(
  ( (ValueCellFull!1700 (v!3955 V!5097)) (EmptyCell!1700) )
))
(declare-datatypes ((array!7306 0))(
  ( (array!7307 (arr!3470 (Array (_ BitVec 32) (_ BitVec 64))) (size!3770 (_ BitVec 32))) )
))
(declare-datatypes ((array!7308 0))(
  ( (array!7309 (arr!3471 (Array (_ BitVec 32) ValueCell!1700)) (size!3771 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2308 0))(
  ( (LongMapFixedSize!2309 (defaultEntry!3604 Int) (mask!8481 (_ BitVec 32)) (extraKeys!3341 (_ BitVec 32)) (zeroValue!3445 V!5097) (minValue!3445 V!5097) (_size!1203 (_ BitVec 32)) (_keys!5447 array!7306) (_values!3587 array!7308) (_vacant!1203 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2308)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!174412 (= e!115186 (not (validMask!0 (mask!8481 thiss!1248))))))

(declare-fun b!174413 () Bool)

(declare-fun e!115184 () Bool)

(declare-fun tp_is_empty!4087 () Bool)

(assert (=> b!174413 (= e!115184 tp_is_empty!4087)))

(declare-fun b!174414 () Bool)

(declare-fun res!82743 () Bool)

(assert (=> b!174414 (=> (not res!82743) (not e!115186))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!553 0))(
  ( (MissingZero!553 (index!4380 (_ BitVec 32))) (Found!553 (index!4381 (_ BitVec 32))) (Intermediate!553 (undefined!1365 Bool) (index!4382 (_ BitVec 32)) (x!19223 (_ BitVec 32))) (Undefined!553) (MissingVacant!553 (index!4383 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7306 (_ BitVec 32)) SeekEntryResult!553)

(assert (=> b!174414 (= res!82743 (is-Undefined!553 (seekEntryOrOpen!0 key!828 (_keys!5447 thiss!1248) (mask!8481 thiss!1248))))))

(declare-fun b!174415 () Bool)

(declare-fun res!82740 () Bool)

(assert (=> b!174415 (=> (not res!82740) (not e!115186))))

(declare-datatypes ((tuple2!3240 0))(
  ( (tuple2!3241 (_1!1630 (_ BitVec 64)) (_2!1630 V!5097)) )
))
(declare-datatypes ((List!2229 0))(
  ( (Nil!2226) (Cons!2225 (h!2842 tuple2!3240) (t!7049 List!2229)) )
))
(declare-datatypes ((ListLongMap!2181 0))(
  ( (ListLongMap!2182 (toList!1106 List!2229)) )
))
(declare-fun contains!1156 (ListLongMap!2181 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!753 (array!7306 array!7308 (_ BitVec 32) (_ BitVec 32) V!5097 V!5097 (_ BitVec 32) Int) ListLongMap!2181)

(assert (=> b!174415 (= res!82740 (contains!1156 (getCurrentListMap!753 (_keys!5447 thiss!1248) (_values!3587 thiss!1248) (mask!8481 thiss!1248) (extraKeys!3341 thiss!1248) (zeroValue!3445 thiss!1248) (minValue!3445 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3604 thiss!1248)) key!828))))

(declare-fun b!174416 () Bool)

(declare-fun res!82742 () Bool)

(assert (=> b!174416 (=> (not res!82742) (not e!115186))))

(assert (=> b!174416 (= res!82742 (not (= key!828 (bvneg key!828))))))

(declare-fun b!174417 () Bool)

(declare-fun e!115185 () Bool)

(assert (=> b!174417 (= e!115185 tp_is_empty!4087)))

(declare-fun res!82741 () Bool)

(assert (=> start!17392 (=> (not res!82741) (not e!115186))))

(declare-fun valid!967 (LongMapFixedSize!2308) Bool)

(assert (=> start!17392 (= res!82741 (valid!967 thiss!1248))))

(assert (=> start!17392 e!115186))

(declare-fun e!115187 () Bool)

(assert (=> start!17392 e!115187))

(assert (=> start!17392 true))

(declare-fun e!115182 () Bool)

(declare-fun array_inv!2211 (array!7306) Bool)

(declare-fun array_inv!2212 (array!7308) Bool)

(assert (=> b!174418 (= e!115187 (and tp!15613 tp_is_empty!4087 (array_inv!2211 (_keys!5447 thiss!1248)) (array_inv!2212 (_values!3587 thiss!1248)) e!115182))))

(declare-fun mapIsEmpty!6962 () Bool)

(declare-fun mapRes!6962 () Bool)

(assert (=> mapIsEmpty!6962 mapRes!6962))

(declare-fun mapNonEmpty!6962 () Bool)

(declare-fun tp!15614 () Bool)

(assert (=> mapNonEmpty!6962 (= mapRes!6962 (and tp!15614 e!115184))))

(declare-fun mapValue!6962 () ValueCell!1700)

(declare-fun mapRest!6962 () (Array (_ BitVec 32) ValueCell!1700))

(declare-fun mapKey!6962 () (_ BitVec 32))

(assert (=> mapNonEmpty!6962 (= (arr!3471 (_values!3587 thiss!1248)) (store mapRest!6962 mapKey!6962 mapValue!6962))))

(declare-fun b!174419 () Bool)

(assert (=> b!174419 (= e!115182 (and e!115185 mapRes!6962))))

(declare-fun condMapEmpty!6962 () Bool)

(declare-fun mapDefault!6962 () ValueCell!1700)

