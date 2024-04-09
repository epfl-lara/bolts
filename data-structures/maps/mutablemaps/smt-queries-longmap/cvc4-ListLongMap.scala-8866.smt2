; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107644 () Bool)

(assert start!107644)

(declare-fun b!1273608 () Bool)

(declare-fun b_free!27743 () Bool)

(declare-fun b_next!27743 () Bool)

(assert (=> b!1273608 (= b_free!27743 (not b_next!27743))))

(declare-fun tp!97787 () Bool)

(declare-fun b_and!45809 () Bool)

(assert (=> b!1273608 (= tp!97787 b_and!45809)))

(declare-fun b!1273607 () Bool)

(declare-fun e!726748 () Bool)

(declare-fun e!726747 () Bool)

(declare-fun mapRes!51301 () Bool)

(assert (=> b!1273607 (= e!726748 (and e!726747 mapRes!51301))))

(declare-fun condMapEmpty!51301 () Bool)

(declare-datatypes ((V!49343 0))(
  ( (V!49344 (val!16631 Int)) )
))
(declare-datatypes ((ValueCell!15703 0))(
  ( (ValueCellFull!15703 (v!19266 V!49343)) (EmptyCell!15703) )
))
(declare-datatypes ((array!83447 0))(
  ( (array!83448 (arr!40241 (Array (_ BitVec 32) ValueCell!15703)) (size!40787 (_ BitVec 32))) )
))
(declare-datatypes ((array!83449 0))(
  ( (array!83450 (arr!40242 (Array (_ BitVec 32) (_ BitVec 64))) (size!40788 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6170 0))(
  ( (LongMapFixedSize!6171 (defaultEntry!6731 Int) (mask!34516 (_ BitVec 32)) (extraKeys!6410 (_ BitVec 32)) (zeroValue!6516 V!49343) (minValue!6516 V!49343) (_size!3140 (_ BitVec 32)) (_keys!12142 array!83449) (_values!6754 array!83447) (_vacant!3140 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6170)

(declare-fun mapDefault!51301 () ValueCell!15703)

