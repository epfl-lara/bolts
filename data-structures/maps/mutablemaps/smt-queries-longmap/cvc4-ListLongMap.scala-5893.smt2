; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76062 () Bool)

(assert start!76062)

(declare-fun b!893755 () Bool)

(declare-fun b_free!15863 () Bool)

(declare-fun b_next!15863 () Bool)

(assert (=> b!893755 (= b_free!15863 (not b_next!15863))))

(declare-fun tp!55569 () Bool)

(declare-fun b_and!26159 () Bool)

(assert (=> b!893755 (= tp!55569 b_and!26159)))

(declare-fun b!893750 () Bool)

(declare-fun res!605175 () Bool)

(declare-fun e!499202 () Bool)

(assert (=> b!893750 (=> (not res!605175) (not e!499202))))

(declare-fun key!785 () (_ BitVec 64))

(declare-datatypes ((array!52354 0))(
  ( (array!52355 (arr!25176 (Array (_ BitVec 32) (_ BitVec 64))) (size!25622 (_ BitVec 32))) )
))
(declare-datatypes ((V!29219 0))(
  ( (V!29220 (val!9146 Int)) )
))
(declare-datatypes ((ValueCell!8614 0))(
  ( (ValueCellFull!8614 (v!11629 V!29219)) (EmptyCell!8614) )
))
(declare-datatypes ((array!52356 0))(
  ( (array!52357 (arr!25177 (Array (_ BitVec 32) ValueCell!8614)) (size!25623 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4244 0))(
  ( (LongMapFixedSize!4245 (defaultEntry!5328 Int) (mask!25865 (_ BitVec 32)) (extraKeys!5024 (_ BitVec 32)) (zeroValue!5128 V!29219) (minValue!5128 V!29219) (_size!2177 (_ BitVec 32)) (_keys!10016 array!52354) (_values!5315 array!52356) (_vacant!2177 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4244)

(assert (=> b!893750 (= res!605175 (and (= key!785 (bvneg key!785)) (or (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (= (bvand (extraKeys!5024 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5024 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!893751 () Bool)

(declare-fun e!499199 () Bool)

(declare-fun e!499203 () Bool)

(declare-fun mapRes!28852 () Bool)

(assert (=> b!893751 (= e!499199 (and e!499203 mapRes!28852))))

(declare-fun condMapEmpty!28852 () Bool)

(declare-fun mapDefault!28852 () ValueCell!8614)

