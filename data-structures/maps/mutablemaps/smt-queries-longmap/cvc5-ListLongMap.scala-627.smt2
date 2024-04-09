; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16122 () Bool)

(assert start!16122)

(declare-fun b!160181 () Bool)

(declare-fun b_free!3571 () Bool)

(declare-fun b_next!3571 () Bool)

(assert (=> b!160181 (= b_free!3571 (not b_next!3571))))

(declare-fun tp!13282 () Bool)

(declare-fun b_and!10003 () Bool)

(assert (=> b!160181 (= tp!13282 b_and!10003)))

(declare-fun b!160177 () Bool)

(declare-fun res!75824 () Bool)

(declare-fun e!104767 () Bool)

(assert (=> b!160177 (=> (not res!75824) (not e!104767))))

(declare-datatypes ((V!4145 0))(
  ( (V!4146 (val!1731 Int)) )
))
(declare-datatypes ((ValueCell!1343 0))(
  ( (ValueCellFull!1343 (v!3592 V!4145)) (EmptyCell!1343) )
))
(declare-datatypes ((array!5824 0))(
  ( (array!5825 (arr!2756 (Array (_ BitVec 32) (_ BitVec 64))) (size!3040 (_ BitVec 32))) )
))
(declare-datatypes ((array!5826 0))(
  ( (array!5827 (arr!2757 (Array (_ BitVec 32) ValueCell!1343)) (size!3041 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1594 0))(
  ( (LongMapFixedSize!1595 (defaultEntry!3239 Int) (mask!7805 (_ BitVec 32)) (extraKeys!2980 (_ BitVec 32)) (zeroValue!3082 V!4145) (minValue!3082 V!4145) (_size!846 (_ BitVec 32)) (_keys!5040 array!5824) (_values!3222 array!5826) (_vacant!846 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1594)

(assert (=> b!160177 (= res!75824 (and (= (size!3041 (_values!3222 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7805 thiss!1248))) (= (size!3040 (_keys!5040 thiss!1248)) (size!3041 (_values!3222 thiss!1248))) (bvsge (mask!7805 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2980 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2980 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!160179 () Bool)

(declare-fun e!104770 () Bool)

(declare-fun tp_is_empty!3373 () Bool)

(assert (=> b!160179 (= e!104770 tp_is_empty!3373)))

(declare-fun b!160180 () Bool)

(declare-fun res!75823 () Bool)

(assert (=> b!160180 (=> (not res!75823) (not e!104767))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!160180 (= res!75823 (validMask!0 (mask!7805 thiss!1248)))))

(declare-fun e!104766 () Bool)

(declare-fun e!104769 () Bool)

(declare-fun array_inv!1749 (array!5824) Bool)

(declare-fun array_inv!1750 (array!5826) Bool)

(assert (=> b!160181 (= e!104766 (and tp!13282 tp_is_empty!3373 (array_inv!1749 (_keys!5040 thiss!1248)) (array_inv!1750 (_values!3222 thiss!1248)) e!104769))))

(declare-fun b!160182 () Bool)

(declare-fun res!75827 () Bool)

(assert (=> b!160182 (=> (not res!75827) (not e!104767))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!160182 (= res!75827 (not (= key!828 (bvneg key!828))))))

(declare-fun b!160183 () Bool)

(declare-fun mapRes!5747 () Bool)

(assert (=> b!160183 (= e!104769 (and e!104770 mapRes!5747))))

(declare-fun condMapEmpty!5747 () Bool)

(declare-fun mapDefault!5747 () ValueCell!1343)

