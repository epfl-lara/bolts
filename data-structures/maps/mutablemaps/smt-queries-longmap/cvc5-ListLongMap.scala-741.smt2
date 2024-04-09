; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17250 () Bool)

(assert start!17250)

(declare-fun b!172873 () Bool)

(declare-fun b_free!4285 () Bool)

(declare-fun b_next!4285 () Bool)

(assert (=> b!172873 (= b_free!4285 (not b_next!4285))))

(declare-fun tp!15513 () Bool)

(declare-fun b_and!10743 () Bool)

(assert (=> b!172873 (= tp!15513 b_and!10743)))

(declare-fun res!82092 () Bool)

(declare-fun e!114169 () Bool)

(assert (=> start!17250 (=> (not res!82092) (not e!114169))))

(declare-datatypes ((V!5057 0))(
  ( (V!5058 (val!2073 Int)) )
))
(declare-datatypes ((ValueCell!1685 0))(
  ( (ValueCellFull!1685 (v!3937 V!5057)) (EmptyCell!1685) )
))
(declare-datatypes ((array!7240 0))(
  ( (array!7241 (arr!3440 (Array (_ BitVec 32) (_ BitVec 64))) (size!3739 (_ BitVec 32))) )
))
(declare-datatypes ((array!7242 0))(
  ( (array!7243 (arr!3441 (Array (_ BitVec 32) ValueCell!1685)) (size!3740 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2278 0))(
  ( (LongMapFixedSize!2279 (defaultEntry!3585 Int) (mask!8445 (_ BitVec 32)) (extraKeys!3324 (_ BitVec 32)) (zeroValue!3426 V!5057) (minValue!3428 V!5057) (_size!1188 (_ BitVec 32)) (_keys!5424 array!7240) (_values!3568 array!7242) (_vacant!1188 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2278)

(declare-fun valid!957 (LongMapFixedSize!2278) Bool)

(assert (=> start!17250 (= res!82092 (valid!957 thiss!1248))))

(assert (=> start!17250 e!114169))

(declare-fun e!114165 () Bool)

(assert (=> start!17250 e!114165))

(assert (=> start!17250 true))

(declare-fun b!172867 () Bool)

(declare-fun res!82090 () Bool)

(assert (=> b!172867 (=> (not res!82090) (not e!114169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172867 (= res!82090 (validMask!0 (mask!8445 thiss!1248)))))

(declare-fun b!172868 () Bool)

(declare-fun res!82091 () Bool)

(assert (=> b!172868 (=> (not res!82091) (not e!114169))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172868 (= res!82091 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!172869 () Bool)

(declare-fun e!114164 () Bool)

(declare-fun tp_is_empty!4057 () Bool)

(assert (=> b!172869 (= e!114164 tp_is_empty!4057)))

(declare-fun mapIsEmpty!6906 () Bool)

(declare-fun mapRes!6906 () Bool)

(assert (=> mapIsEmpty!6906 mapRes!6906))

(declare-fun b!172870 () Bool)

(declare-fun e!114168 () Bool)

(assert (=> b!172870 (= e!114168 tp_is_empty!4057)))

(declare-fun mapNonEmpty!6906 () Bool)

(declare-fun tp!15512 () Bool)

(assert (=> mapNonEmpty!6906 (= mapRes!6906 (and tp!15512 e!114164))))

(declare-fun mapValue!6906 () ValueCell!1685)

(declare-fun mapRest!6906 () (Array (_ BitVec 32) ValueCell!1685))

(declare-fun mapKey!6906 () (_ BitVec 32))

(assert (=> mapNonEmpty!6906 (= (arr!3441 (_values!3568 thiss!1248)) (store mapRest!6906 mapKey!6906 mapValue!6906))))

(declare-fun b!172871 () Bool)

(declare-fun e!114167 () Bool)

(assert (=> b!172871 (= e!114167 (and e!114168 mapRes!6906))))

(declare-fun condMapEmpty!6906 () Bool)

(declare-fun mapDefault!6906 () ValueCell!1685)

