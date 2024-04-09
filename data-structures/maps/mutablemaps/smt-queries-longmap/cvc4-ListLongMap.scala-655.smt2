; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16294 () Bool)

(assert start!16294)

(declare-fun b!162390 () Bool)

(declare-fun b_free!3743 () Bool)

(declare-fun b_next!3743 () Bool)

(assert (=> b!162390 (= b_free!3743 (not b_next!3743))))

(declare-fun tp!13798 () Bool)

(declare-fun b_and!10175 () Bool)

(assert (=> b!162390 (= tp!13798 b_and!10175)))

(declare-fun b!162389 () Bool)

(declare-fun res!76913 () Bool)

(declare-fun e!106431 () Bool)

(assert (=> b!162389 (=> (not res!76913) (not e!106431))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!162389 (= res!76913 (not (= key!828 (bvneg key!828))))))

(declare-fun tp_is_empty!3545 () Bool)

(declare-fun e!106436 () Bool)

(declare-fun e!106430 () Bool)

(declare-datatypes ((V!4373 0))(
  ( (V!4374 (val!1817 Int)) )
))
(declare-datatypes ((ValueCell!1429 0))(
  ( (ValueCellFull!1429 (v!3678 V!4373)) (EmptyCell!1429) )
))
(declare-datatypes ((array!6168 0))(
  ( (array!6169 (arr!2928 (Array (_ BitVec 32) (_ BitVec 64))) (size!3212 (_ BitVec 32))) )
))
(declare-datatypes ((array!6170 0))(
  ( (array!6171 (arr!2929 (Array (_ BitVec 32) ValueCell!1429)) (size!3213 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1766 0))(
  ( (LongMapFixedSize!1767 (defaultEntry!3325 Int) (mask!7947 (_ BitVec 32)) (extraKeys!3066 (_ BitVec 32)) (zeroValue!3168 V!4373) (minValue!3168 V!4373) (_size!932 (_ BitVec 32)) (_keys!5126 array!6168) (_values!3308 array!6170) (_vacant!932 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1766)

(declare-fun array_inv!1865 (array!6168) Bool)

(declare-fun array_inv!1866 (array!6170) Bool)

(assert (=> b!162390 (= e!106436 (and tp!13798 tp_is_empty!3545 (array_inv!1865 (_keys!5126 thiss!1248)) (array_inv!1866 (_values!3308 thiss!1248)) e!106430))))

(declare-fun mapIsEmpty!6005 () Bool)

(declare-fun mapRes!6005 () Bool)

(assert (=> mapIsEmpty!6005 mapRes!6005))

(declare-fun res!76912 () Bool)

(assert (=> start!16294 (=> (not res!76912) (not e!106431))))

(declare-fun valid!791 (LongMapFixedSize!1766) Bool)

(assert (=> start!16294 (= res!76912 (valid!791 thiss!1248))))

(assert (=> start!16294 e!106431))

(assert (=> start!16294 e!106436))

(assert (=> start!16294 true))

(assert (=> start!16294 tp_is_empty!3545))

(declare-fun b!162391 () Bool)

(declare-fun e!106433 () Bool)

(assert (=> b!162391 (= e!106433 tp_is_empty!3545)))

(declare-fun mapNonEmpty!6005 () Bool)

(declare-fun tp!13799 () Bool)

(assert (=> mapNonEmpty!6005 (= mapRes!6005 (and tp!13799 e!106433))))

(declare-fun mapValue!6005 () ValueCell!1429)

(declare-fun mapKey!6005 () (_ BitVec 32))

(declare-fun mapRest!6005 () (Array (_ BitVec 32) ValueCell!1429))

(assert (=> mapNonEmpty!6005 (= (arr!2929 (_values!3308 thiss!1248)) (store mapRest!6005 mapKey!6005 mapValue!6005))))

(declare-fun b!162392 () Bool)

(declare-fun e!106434 () Bool)

(assert (=> b!162392 (= e!106430 (and e!106434 mapRes!6005))))

(declare-fun condMapEmpty!6005 () Bool)

(declare-fun mapDefault!6005 () ValueCell!1429)

