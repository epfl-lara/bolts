; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16026 () Bool)

(assert start!16026)

(declare-fun b!158937 () Bool)

(declare-fun b_free!3503 () Bool)

(declare-fun b_next!3503 () Bool)

(assert (=> b!158937 (= b_free!3503 (not b_next!3503))))

(declare-fun tp!13073 () Bool)

(declare-fun b_and!9935 () Bool)

(assert (=> b!158937 (= tp!13073 b_and!9935)))

(declare-fun b!158932 () Bool)

(declare-fun res!75060 () Bool)

(declare-fun e!104080 () Bool)

(assert (=> b!158932 (=> (not res!75060) (not e!104080))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4053 0))(
  ( (V!4054 (val!1697 Int)) )
))
(declare-datatypes ((ValueCell!1309 0))(
  ( (ValueCellFull!1309 (v!3558 V!4053)) (EmptyCell!1309) )
))
(declare-datatypes ((array!5684 0))(
  ( (array!5685 (arr!2688 (Array (_ BitVec 32) (_ BitVec 64))) (size!2972 (_ BitVec 32))) )
))
(declare-datatypes ((array!5686 0))(
  ( (array!5687 (arr!2689 (Array (_ BitVec 32) ValueCell!1309)) (size!2973 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1526 0))(
  ( (LongMapFixedSize!1527 (defaultEntry!3205 Int) (mask!7741 (_ BitVec 32)) (extraKeys!2946 (_ BitVec 32)) (zeroValue!3048 V!4053) (minValue!3048 V!4053) (_size!812 (_ BitVec 32)) (_keys!5002 array!5684) (_values!3188 array!5686) (_vacant!812 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1526)

(declare-datatypes ((SeekEntryResult!317 0))(
  ( (MissingZero!317 (index!3436 (_ BitVec 32))) (Found!317 (index!3437 (_ BitVec 32))) (Intermediate!317 (undefined!1129 Bool) (index!3438 (_ BitVec 32)) (x!17565 (_ BitVec 32))) (Undefined!317) (MissingVacant!317 (index!3439 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5684 (_ BitVec 32)) SeekEntryResult!317)

(assert (=> b!158932 (= res!75060 (is-Undefined!317 (seekEntryOrOpen!0 key!828 (_keys!5002 thiss!1248) (mask!7741 thiss!1248))))))

(declare-fun b!158933 () Bool)

(declare-fun res!75061 () Bool)

(assert (=> b!158933 (=> (not res!75061) (not e!104080))))

(assert (=> b!158933 (= res!75061 (not (= key!828 (bvneg key!828))))))

(declare-fun b!158934 () Bool)

(declare-fun res!75063 () Bool)

(assert (=> b!158934 (=> (not res!75063) (not e!104080))))

(assert (=> b!158934 (= res!75063 (and (= (size!2973 (_values!3188 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7741 thiss!1248))) (= (size!2972 (_keys!5002 thiss!1248)) (size!2973 (_values!3188 thiss!1248))) (bvsge (mask!7741 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2946 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2946 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!5639 () Bool)

(declare-fun mapRes!5639 () Bool)

(assert (=> mapIsEmpty!5639 mapRes!5639))

(declare-fun b!158935 () Bool)

(declare-fun e!104079 () Bool)

(declare-fun e!104076 () Bool)

(assert (=> b!158935 (= e!104079 (and e!104076 mapRes!5639))))

(declare-fun condMapEmpty!5639 () Bool)

(declare-fun mapDefault!5639 () ValueCell!1309)

