; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21364 () Bool)

(assert start!21364)

(declare-fun b!214685 () Bool)

(declare-fun b_free!5693 () Bool)

(declare-fun b_next!5693 () Bool)

(assert (=> b!214685 (= b_free!5693 (not b_next!5693))))

(declare-fun tp!20176 () Bool)

(declare-fun b_and!12601 () Bool)

(assert (=> b!214685 (= tp!20176 b_and!12601)))

(declare-fun b!214680 () Bool)

(declare-fun res!105097 () Bool)

(declare-fun e!139652 () Bool)

(assert (=> b!214680 (=> (not res!105097) (not e!139652))))

(declare-datatypes ((V!7053 0))(
  ( (V!7054 (val!2822 Int)) )
))
(declare-datatypes ((ValueCell!2434 0))(
  ( (ValueCellFull!2434 (v!4836 V!7053)) (EmptyCell!2434) )
))
(declare-datatypes ((array!10326 0))(
  ( (array!10327 (arr!4895 (Array (_ BitVec 32) ValueCell!2434)) (size!5222 (_ BitVec 32))) )
))
(declare-datatypes ((array!10328 0))(
  ( (array!10329 (arr!4896 (Array (_ BitVec 32) (_ BitVec 64))) (size!5223 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2768 0))(
  ( (LongMapFixedSize!2769 (defaultEntry!4034 Int) (mask!9704 (_ BitVec 32)) (extraKeys!3771 (_ BitVec 32)) (zeroValue!3875 V!7053) (minValue!3875 V!7053) (_size!1433 (_ BitVec 32)) (_keys!6054 array!10328) (_values!4017 array!10326) (_vacant!1433 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2768)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!214680 (= res!105097 (validMask!0 (mask!9704 thiss!1504)))))

(declare-fun res!105096 () Bool)

(assert (=> start!21364 (=> (not res!105096) (not e!139652))))

(declare-fun valid!1124 (LongMapFixedSize!2768) Bool)

(assert (=> start!21364 (= res!105096 (valid!1124 thiss!1504))))

(assert (=> start!21364 e!139652))

(declare-fun e!139648 () Bool)

(assert (=> start!21364 e!139648))

(assert (=> start!21364 true))

(declare-fun b!214681 () Bool)

(assert (=> b!214681 (= e!139652 (and (bvsge (mask!9704 thiss!1504) #b00000000000000000000000000000000) (not (= (size!5223 (_keys!6054 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9704 thiss!1504))))))))

(declare-fun b!214682 () Bool)

(declare-fun e!139647 () Bool)

(declare-fun tp_is_empty!5555 () Bool)

(assert (=> b!214682 (= e!139647 tp_is_empty!5555)))

(declare-fun mapIsEmpty!9457 () Bool)

(declare-fun mapRes!9457 () Bool)

(assert (=> mapIsEmpty!9457 mapRes!9457))

(declare-fun b!214683 () Bool)

(declare-fun res!105095 () Bool)

(assert (=> b!214683 (=> (not res!105095) (not e!139652))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!733 0))(
  ( (MissingZero!733 (index!5102 (_ BitVec 32))) (Found!733 (index!5103 (_ BitVec 32))) (Intermediate!733 (undefined!1545 Bool) (index!5104 (_ BitVec 32)) (x!22408 (_ BitVec 32))) (Undefined!733) (MissingVacant!733 (index!5105 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10328 (_ BitVec 32)) SeekEntryResult!733)

(assert (=> b!214683 (= res!105095 (not (= (seekEntryOrOpen!0 key!932 (_keys!6054 thiss!1504) (mask!9704 thiss!1504)) (MissingZero!733 index!297))))))

(declare-fun mapNonEmpty!9457 () Bool)

(declare-fun tp!20175 () Bool)

(declare-fun e!139649 () Bool)

(assert (=> mapNonEmpty!9457 (= mapRes!9457 (and tp!20175 e!139649))))

(declare-fun mapRest!9457 () (Array (_ BitVec 32) ValueCell!2434))

(declare-fun mapValue!9457 () ValueCell!2434)

(declare-fun mapKey!9457 () (_ BitVec 32))

(assert (=> mapNonEmpty!9457 (= (arr!4895 (_values!4017 thiss!1504)) (store mapRest!9457 mapKey!9457 mapValue!9457))))

(declare-fun b!214684 () Bool)

(declare-fun res!105094 () Bool)

(assert (=> b!214684 (=> (not res!105094) (not e!139652))))

(assert (=> b!214684 (= res!105094 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!139651 () Bool)

(declare-fun array_inv!3229 (array!10328) Bool)

(declare-fun array_inv!3230 (array!10326) Bool)

(assert (=> b!214685 (= e!139648 (and tp!20176 tp_is_empty!5555 (array_inv!3229 (_keys!6054 thiss!1504)) (array_inv!3230 (_values!4017 thiss!1504)) e!139651))))

(declare-fun b!214686 () Bool)

(assert (=> b!214686 (= e!139649 tp_is_empty!5555)))

(declare-fun b!214687 () Bool)

(assert (=> b!214687 (= e!139651 (and e!139647 mapRes!9457))))

(declare-fun condMapEmpty!9457 () Bool)

(declare-fun mapDefault!9457 () ValueCell!2434)

