; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16594 () Bool)

(assert start!16594)

(declare-fun b!165238 () Bool)

(declare-fun b_free!3887 () Bool)

(declare-fun b_next!3887 () Bool)

(assert (=> b!165238 (= b_free!3887 (not b_next!3887))))

(declare-fun tp!14261 () Bool)

(declare-fun b_and!10319 () Bool)

(assert (=> b!165238 (= tp!14261 b_and!10319)))

(declare-fun b!165228 () Bool)

(declare-fun e!108398 () Bool)

(declare-fun tp_is_empty!3689 () Bool)

(assert (=> b!165228 (= e!108398 tp_is_empty!3689)))

(declare-fun b!165229 () Bool)

(declare-fun res!78383 () Bool)

(declare-fun e!108402 () Bool)

(assert (=> b!165229 (=> (not res!78383) (not e!108402))))

(declare-datatypes ((V!4565 0))(
  ( (V!4566 (val!1889 Int)) )
))
(declare-datatypes ((ValueCell!1501 0))(
  ( (ValueCellFull!1501 (v!3750 V!4565)) (EmptyCell!1501) )
))
(declare-datatypes ((array!6474 0))(
  ( (array!6475 (arr!3072 (Array (_ BitVec 32) (_ BitVec 64))) (size!3360 (_ BitVec 32))) )
))
(declare-datatypes ((array!6476 0))(
  ( (array!6477 (arr!3073 (Array (_ BitVec 32) ValueCell!1501)) (size!3361 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1910 0))(
  ( (LongMapFixedSize!1911 (defaultEntry!3397 Int) (mask!8104 (_ BitVec 32)) (extraKeys!3138 (_ BitVec 32)) (zeroValue!3240 V!4565) (minValue!3240 V!4565) (_size!1004 (_ BitVec 32)) (_keys!5222 array!6474) (_values!3380 array!6476) (_vacant!1004 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1910)

(assert (=> b!165229 (= res!78383 (and (= (size!3361 (_values!3380 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8104 thiss!1248))) (= (size!3360 (_keys!5222 thiss!1248)) (size!3361 (_values!3380 thiss!1248))) (bvsge (mask!8104 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3138 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3138 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!165230 () Bool)

(declare-fun res!78382 () Bool)

(assert (=> b!165230 (=> (not res!78382) (not e!108402))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6474 (_ BitVec 32)) Bool)

(assert (=> b!165230 (= res!78382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5222 thiss!1248) (mask!8104 thiss!1248)))))

(declare-fun b!165231 () Bool)

(declare-fun res!78380 () Bool)

(assert (=> b!165231 (=> (not res!78380) (not e!108402))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165231 (= res!78380 (validMask!0 (mask!8104 thiss!1248)))))

(declare-fun b!165232 () Bool)

(declare-fun res!78381 () Bool)

(assert (=> b!165232 (=> (not res!78381) (not e!108402))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3056 0))(
  ( (tuple2!3057 (_1!1538 (_ BitVec 64)) (_2!1538 V!4565)) )
))
(declare-datatypes ((List!2063 0))(
  ( (Nil!2060) (Cons!2059 (h!2676 tuple2!3056) (t!6873 List!2063)) )
))
(declare-datatypes ((ListLongMap!2025 0))(
  ( (ListLongMap!2026 (toList!1028 List!2063)) )
))
(declare-fun contains!1064 (ListLongMap!2025 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!681 (array!6474 array!6476 (_ BitVec 32) (_ BitVec 32) V!4565 V!4565 (_ BitVec 32) Int) ListLongMap!2025)

(assert (=> b!165232 (= res!78381 (not (contains!1064 (getCurrentListMap!681 (_keys!5222 thiss!1248) (_values!3380 thiss!1248) (mask!8104 thiss!1248) (extraKeys!3138 thiss!1248) (zeroValue!3240 thiss!1248) (minValue!3240 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3397 thiss!1248)) key!828)))))

(declare-fun b!165233 () Bool)

(declare-fun res!78378 () Bool)

(declare-fun e!108400 () Bool)

(assert (=> b!165233 (=> (not res!78378) (not e!108400))))

(assert (=> b!165233 (= res!78378 (not (= key!828 (bvneg key!828))))))

(declare-fun res!78379 () Bool)

(assert (=> start!16594 (=> (not res!78379) (not e!108400))))

(declare-fun valid!837 (LongMapFixedSize!1910) Bool)

(assert (=> start!16594 (= res!78379 (valid!837 thiss!1248))))

(assert (=> start!16594 e!108400))

(declare-fun e!108397 () Bool)

(assert (=> start!16594 e!108397))

(assert (=> start!16594 true))

(declare-fun mapNonEmpty!6252 () Bool)

(declare-fun mapRes!6252 () Bool)

(declare-fun tp!14262 () Bool)

(declare-fun e!108399 () Bool)

(assert (=> mapNonEmpty!6252 (= mapRes!6252 (and tp!14262 e!108399))))

(declare-fun mapRest!6252 () (Array (_ BitVec 32) ValueCell!1501))

(declare-fun mapValue!6252 () ValueCell!1501)

(declare-fun mapKey!6252 () (_ BitVec 32))

(assert (=> mapNonEmpty!6252 (= (arr!3073 (_values!3380 thiss!1248)) (store mapRest!6252 mapKey!6252 mapValue!6252))))

(declare-fun b!165234 () Bool)

(assert (=> b!165234 (= e!108400 e!108402)))

(declare-fun res!78384 () Bool)

(assert (=> b!165234 (=> (not res!78384) (not e!108402))))

(declare-datatypes ((SeekEntryResult!442 0))(
  ( (MissingZero!442 (index!3936 (_ BitVec 32))) (Found!442 (index!3937 (_ BitVec 32))) (Intermediate!442 (undefined!1254 Bool) (index!3938 (_ BitVec 32)) (x!18326 (_ BitVec 32))) (Undefined!442) (MissingVacant!442 (index!3939 (_ BitVec 32))) )
))
(declare-fun lt!83062 () SeekEntryResult!442)

(assert (=> b!165234 (= res!78384 (and (not (is-Undefined!442 lt!83062)) (not (is-MissingVacant!442 lt!83062)) (not (is-MissingZero!442 lt!83062)) (is-Found!442 lt!83062)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6474 (_ BitVec 32)) SeekEntryResult!442)

(assert (=> b!165234 (= lt!83062 (seekEntryOrOpen!0 key!828 (_keys!5222 thiss!1248) (mask!8104 thiss!1248)))))

(declare-fun b!165235 () Bool)

(assert (=> b!165235 (= e!108402 false)))

(declare-fun lt!83063 () Bool)

(declare-datatypes ((List!2064 0))(
  ( (Nil!2061) (Cons!2060 (h!2677 (_ BitVec 64)) (t!6874 List!2064)) )
))
(declare-fun arrayNoDuplicates!0 (array!6474 (_ BitVec 32) List!2064) Bool)

(assert (=> b!165235 (= lt!83063 (arrayNoDuplicates!0 (_keys!5222 thiss!1248) #b00000000000000000000000000000000 Nil!2061))))

(declare-fun b!165236 () Bool)

(assert (=> b!165236 (= e!108399 tp_is_empty!3689)))

(declare-fun mapIsEmpty!6252 () Bool)

(assert (=> mapIsEmpty!6252 mapRes!6252))

(declare-fun b!165237 () Bool)

(declare-fun e!108403 () Bool)

(assert (=> b!165237 (= e!108403 (and e!108398 mapRes!6252))))

(declare-fun condMapEmpty!6252 () Bool)

(declare-fun mapDefault!6252 () ValueCell!1501)

