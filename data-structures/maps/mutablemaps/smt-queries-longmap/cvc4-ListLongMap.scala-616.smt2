; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16046 () Bool)

(assert start!16046)

(declare-fun b!159095 () Bool)

(declare-fun b_free!3509 () Bool)

(declare-fun b_next!3509 () Bool)

(assert (=> b!159095 (= b_free!3509 (not b_next!3509))))

(declare-fun tp!13094 () Bool)

(declare-fun b_and!9941 () Bool)

(assert (=> b!159095 (= tp!13094 b_and!9941)))

(declare-fun b!159092 () Bool)

(declare-fun res!75147 () Bool)

(declare-fun e!104172 () Bool)

(assert (=> b!159092 (=> (not res!75147) (not e!104172))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!159092 (= res!75147 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!5651 () Bool)

(declare-fun mapRes!5651 () Bool)

(declare-fun tp!13093 () Bool)

(declare-fun e!104173 () Bool)

(assert (=> mapNonEmpty!5651 (= mapRes!5651 (and tp!13093 e!104173))))

(declare-fun mapKey!5651 () (_ BitVec 32))

(declare-datatypes ((V!4061 0))(
  ( (V!4062 (val!1700 Int)) )
))
(declare-datatypes ((ValueCell!1312 0))(
  ( (ValueCellFull!1312 (v!3561 V!4061)) (EmptyCell!1312) )
))
(declare-fun mapValue!5651 () ValueCell!1312)

(declare-datatypes ((array!5698 0))(
  ( (array!5699 (arr!2694 (Array (_ BitVec 32) (_ BitVec 64))) (size!2978 (_ BitVec 32))) )
))
(declare-datatypes ((array!5700 0))(
  ( (array!5701 (arr!2695 (Array (_ BitVec 32) ValueCell!1312)) (size!2979 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1532 0))(
  ( (LongMapFixedSize!1533 (defaultEntry!3208 Int) (mask!7749 (_ BitVec 32)) (extraKeys!2949 (_ BitVec 32)) (zeroValue!3051 V!4061) (minValue!3051 V!4061) (_size!815 (_ BitVec 32)) (_keys!5007 array!5698) (_values!3191 array!5700) (_vacant!815 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1532)

(declare-fun mapRest!5651 () (Array (_ BitVec 32) ValueCell!1312))

(assert (=> mapNonEmpty!5651 (= (arr!2695 (_values!3191 thiss!1248)) (store mapRest!5651 mapKey!5651 mapValue!5651))))

(declare-fun b!159093 () Bool)

(declare-fun res!75146 () Bool)

(assert (=> b!159093 (=> (not res!75146) (not e!104172))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5698 (_ BitVec 32)) Bool)

(assert (=> b!159093 (= res!75146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5007 thiss!1248) (mask!7749 thiss!1248)))))

(declare-fun b!159094 () Bool)

(declare-fun tp_is_empty!3311 () Bool)

(assert (=> b!159094 (= e!104173 tp_is_empty!3311)))

(declare-fun b!159096 () Bool)

(declare-fun res!75149 () Bool)

(assert (=> b!159096 (=> (not res!75149) (not e!104172))))

(declare-datatypes ((List!1911 0))(
  ( (Nil!1908) (Cons!1907 (h!2520 (_ BitVec 64)) (t!6721 List!1911)) )
))
(declare-fun arrayNoDuplicates!0 (array!5698 (_ BitVec 32) List!1911) Bool)

(assert (=> b!159096 (= res!75149 (arrayNoDuplicates!0 (_keys!5007 thiss!1248) #b00000000000000000000000000000000 Nil!1908))))

(declare-fun b!159097 () Bool)

(declare-fun res!75152 () Bool)

(assert (=> b!159097 (=> (not res!75152) (not e!104172))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!159097 (= res!75152 (validMask!0 (mask!7749 thiss!1248)))))

(declare-fun b!159098 () Bool)

(declare-fun e!104171 () Bool)

(declare-fun e!104169 () Bool)

(assert (=> b!159098 (= e!104171 (and e!104169 mapRes!5651))))

(declare-fun condMapEmpty!5651 () Bool)

(declare-fun mapDefault!5651 () ValueCell!1312)

