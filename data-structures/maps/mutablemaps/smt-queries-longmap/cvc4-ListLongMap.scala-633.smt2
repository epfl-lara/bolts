; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16162 () Bool)

(assert start!16162)

(declare-fun b!160843 () Bool)

(declare-fun b_free!3611 () Bool)

(declare-fun b_next!3611 () Bool)

(assert (=> b!160843 (= b_free!3611 (not b_next!3611))))

(declare-fun tp!13403 () Bool)

(declare-fun b_and!10043 () Bool)

(assert (=> b!160843 (= tp!13403 b_and!10043)))

(declare-fun b!160838 () Bool)

(declare-fun e!105128 () Bool)

(declare-fun e!105127 () Bool)

(declare-fun mapRes!5807 () Bool)

(assert (=> b!160838 (= e!105128 (and e!105127 mapRes!5807))))

(declare-fun condMapEmpty!5807 () Bool)

(declare-datatypes ((V!4197 0))(
  ( (V!4198 (val!1751 Int)) )
))
(declare-datatypes ((ValueCell!1363 0))(
  ( (ValueCellFull!1363 (v!3612 V!4197)) (EmptyCell!1363) )
))
(declare-datatypes ((array!5904 0))(
  ( (array!5905 (arr!2796 (Array (_ BitVec 32) (_ BitVec 64))) (size!3080 (_ BitVec 32))) )
))
(declare-datatypes ((array!5906 0))(
  ( (array!5907 (arr!2797 (Array (_ BitVec 32) ValueCell!1363)) (size!3081 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1634 0))(
  ( (LongMapFixedSize!1635 (defaultEntry!3259 Int) (mask!7837 (_ BitVec 32)) (extraKeys!3000 (_ BitVec 32)) (zeroValue!3102 V!4197) (minValue!3102 V!4197) (_size!866 (_ BitVec 32)) (_keys!5060 array!5904) (_values!3242 array!5906) (_vacant!866 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1634)

(declare-fun mapDefault!5807 () ValueCell!1363)

