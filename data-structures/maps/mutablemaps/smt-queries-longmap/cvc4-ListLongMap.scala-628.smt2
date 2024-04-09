; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16132 () Bool)

(assert start!16132)

(declare-fun b!160345 () Bool)

(declare-fun b_free!3581 () Bool)

(declare-fun b_next!3581 () Bool)

(assert (=> b!160345 (= b_free!3581 (not b_next!3581))))

(declare-fun tp!13313 () Bool)

(declare-fun b_and!10013 () Bool)

(assert (=> b!160345 (= tp!13313 b_and!10013)))

(declare-fun b!160342 () Bool)

(declare-fun res!75927 () Bool)

(declare-fun e!104860 () Bool)

(assert (=> b!160342 (=> (not res!75927) (not e!104860))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!160342 (= res!75927 (not (= key!828 (bvneg key!828))))))

(declare-fun b!160343 () Bool)

(declare-fun res!75932 () Bool)

(assert (=> b!160343 (=> (not res!75932) (not e!104860))))

(declare-datatypes ((V!4157 0))(
  ( (V!4158 (val!1736 Int)) )
))
(declare-datatypes ((ValueCell!1348 0))(
  ( (ValueCellFull!1348 (v!3597 V!4157)) (EmptyCell!1348) )
))
(declare-datatypes ((array!5844 0))(
  ( (array!5845 (arr!2766 (Array (_ BitVec 32) (_ BitVec 64))) (size!3050 (_ BitVec 32))) )
))
(declare-datatypes ((array!5846 0))(
  ( (array!5847 (arr!2767 (Array (_ BitVec 32) ValueCell!1348)) (size!3051 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1604 0))(
  ( (LongMapFixedSize!1605 (defaultEntry!3244 Int) (mask!7812 (_ BitVec 32)) (extraKeys!2985 (_ BitVec 32)) (zeroValue!3087 V!4157) (minValue!3087 V!4157) (_size!851 (_ BitVec 32)) (_keys!5045 array!5844) (_values!3227 array!5846) (_vacant!851 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1604)

(declare-datatypes ((SeekEntryResult!341 0))(
  ( (MissingZero!341 (index!3532 (_ BitVec 32))) (Found!341 (index!3533 (_ BitVec 32))) (Intermediate!341 (undefined!1153 Bool) (index!3534 (_ BitVec 32)) (x!17709 (_ BitVec 32))) (Undefined!341) (MissingVacant!341 (index!3535 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5844 (_ BitVec 32)) SeekEntryResult!341)

(assert (=> b!160343 (= res!75932 (is-Undefined!341 (seekEntryOrOpen!0 key!828 (_keys!5045 thiss!1248) (mask!7812 thiss!1248))))))

(declare-fun b!160344 () Bool)

(declare-fun e!104857 () Bool)

(declare-fun tp_is_empty!3383 () Bool)

(assert (=> b!160344 (= e!104857 tp_is_empty!3383)))

(declare-fun e!104861 () Bool)

(declare-fun e!104856 () Bool)

(declare-fun array_inv!1757 (array!5844) Bool)

(declare-fun array_inv!1758 (array!5846) Bool)

(assert (=> b!160345 (= e!104861 (and tp!13313 tp_is_empty!3383 (array_inv!1757 (_keys!5045 thiss!1248)) (array_inv!1758 (_values!3227 thiss!1248)) e!104856))))

(declare-fun b!160346 () Bool)

(declare-fun mapRes!5762 () Bool)

(assert (=> b!160346 (= e!104856 (and e!104857 mapRes!5762))))

(declare-fun condMapEmpty!5762 () Bool)

(declare-fun mapDefault!5762 () ValueCell!1348)

