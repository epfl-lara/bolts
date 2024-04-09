; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107592 () Bool)

(assert start!107592)

(declare-fun b!1273332 () Bool)

(declare-fun b_free!27721 () Bool)

(declare-fun b_next!27721 () Bool)

(assert (=> b!1273332 (= b_free!27721 (not b_next!27721))))

(declare-fun tp!97710 () Bool)

(declare-fun b_and!45787 () Bool)

(assert (=> b!1273332 (= tp!97710 b_and!45787)))

(declare-fun b!1273329 () Bool)

(declare-fun e!726510 () Bool)

(declare-fun e!726506 () Bool)

(declare-fun mapRes!51258 () Bool)

(assert (=> b!1273329 (= e!726510 (and e!726506 mapRes!51258))))

(declare-fun condMapEmpty!51258 () Bool)

(declare-datatypes ((V!49315 0))(
  ( (V!49316 (val!16620 Int)) )
))
(declare-datatypes ((ValueCell!15692 0))(
  ( (ValueCellFull!15692 (v!19255 V!49315)) (EmptyCell!15692) )
))
(declare-datatypes ((array!83397 0))(
  ( (array!83398 (arr!40219 (Array (_ BitVec 32) ValueCell!15692)) (size!40762 (_ BitVec 32))) )
))
(declare-datatypes ((array!83399 0))(
  ( (array!83400 (arr!40220 (Array (_ BitVec 32) (_ BitVec 64))) (size!40763 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6148 0))(
  ( (LongMapFixedSize!6149 (defaultEntry!6720 Int) (mask!34496 (_ BitVec 32)) (extraKeys!6399 (_ BitVec 32)) (zeroValue!6505 V!49315) (minValue!6505 V!49315) (_size!3129 (_ BitVec 32)) (_keys!12131 array!83399) (_values!6743 array!83397) (_vacant!3129 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6148)

(declare-fun mapDefault!51258 () ValueCell!15692)

