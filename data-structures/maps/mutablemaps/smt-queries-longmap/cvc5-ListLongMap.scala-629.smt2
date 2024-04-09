; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16134 () Bool)

(assert start!16134)

(declare-fun b!160381 () Bool)

(declare-fun b_free!3583 () Bool)

(declare-fun b_next!3583 () Bool)

(assert (=> b!160381 (= b_free!3583 (not b_next!3583))))

(declare-fun tp!13319 () Bool)

(declare-fun b_and!10015 () Bool)

(assert (=> b!160381 (= tp!13319 b_and!10015)))

(declare-fun b!160375 () Bool)

(declare-fun res!75949 () Bool)

(declare-fun e!104878 () Bool)

(assert (=> b!160375 (=> (not res!75949) (not e!104878))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4161 0))(
  ( (V!4162 (val!1737 Int)) )
))
(declare-datatypes ((ValueCell!1349 0))(
  ( (ValueCellFull!1349 (v!3598 V!4161)) (EmptyCell!1349) )
))
(declare-datatypes ((array!5848 0))(
  ( (array!5849 (arr!2768 (Array (_ BitVec 32) (_ BitVec 64))) (size!3052 (_ BitVec 32))) )
))
(declare-datatypes ((array!5850 0))(
  ( (array!5851 (arr!2769 (Array (_ BitVec 32) ValueCell!1349)) (size!3053 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1606 0))(
  ( (LongMapFixedSize!1607 (defaultEntry!3245 Int) (mask!7815 (_ BitVec 32)) (extraKeys!2986 (_ BitVec 32)) (zeroValue!3088 V!4161) (minValue!3088 V!4161) (_size!852 (_ BitVec 32)) (_keys!5046 array!5848) (_values!3228 array!5850) (_vacant!852 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1606)

(declare-datatypes ((SeekEntryResult!342 0))(
  ( (MissingZero!342 (index!3536 (_ BitVec 32))) (Found!342 (index!3537 (_ BitVec 32))) (Intermediate!342 (undefined!1154 Bool) (index!3538 (_ BitVec 32)) (x!17718 (_ BitVec 32))) (Undefined!342) (MissingVacant!342 (index!3539 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5848 (_ BitVec 32)) SeekEntryResult!342)

(assert (=> b!160375 (= res!75949 (is-Undefined!342 (seekEntryOrOpen!0 key!828 (_keys!5046 thiss!1248) (mask!7815 thiss!1248))))))

(declare-fun b!160376 () Bool)

(declare-fun e!104877 () Bool)

(declare-fun e!104875 () Bool)

(declare-fun mapRes!5765 () Bool)

(assert (=> b!160376 (= e!104877 (and e!104875 mapRes!5765))))

(declare-fun condMapEmpty!5765 () Bool)

(declare-fun mapDefault!5765 () ValueCell!1349)

