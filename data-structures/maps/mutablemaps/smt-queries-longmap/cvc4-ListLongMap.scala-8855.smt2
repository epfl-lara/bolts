; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107452 () Bool)

(assert start!107452)

(declare-fun b!1272529 () Bool)

(declare-fun b_free!27677 () Bool)

(declare-fun b_next!27677 () Bool)

(assert (=> b!1272529 (= b_free!27677 (not b_next!27677))))

(declare-fun tp!97551 () Bool)

(declare-fun b_and!45743 () Bool)

(assert (=> b!1272529 (= tp!97551 b_and!45743)))

(declare-fun b!1272526 () Bool)

(declare-fun e!725895 () Bool)

(declare-datatypes ((V!49255 0))(
  ( (V!49256 (val!16598 Int)) )
))
(declare-datatypes ((ValueCell!15670 0))(
  ( (ValueCellFull!15670 (v!19233 V!49255)) (EmptyCell!15670) )
))
(declare-datatypes ((array!83293 0))(
  ( (array!83294 (arr!40175 (Array (_ BitVec 32) ValueCell!15670)) (size!40714 (_ BitVec 32))) )
))
(declare-datatypes ((array!83295 0))(
  ( (array!83296 (arr!40176 (Array (_ BitVec 32) (_ BitVec 64))) (size!40715 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6104 0))(
  ( (LongMapFixedSize!6105 (defaultEntry!6698 Int) (mask!34445 (_ BitVec 32)) (extraKeys!6377 (_ BitVec 32)) (zeroValue!6483 V!49255) (minValue!6483 V!49255) (_size!3107 (_ BitVec 32)) (_keys!12103 array!83295) (_values!6721 array!83293) (_vacant!3107 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6104)

(assert (=> b!1272526 (= e!725895 (and (= (size!40714 (_values!6721 thiss!1559)) (bvadd #b00000000000000000000000000000001 (mask!34445 thiss!1559))) (not (= (size!40715 (_keys!12103 thiss!1559)) (size!40714 (_values!6721 thiss!1559))))))))

(declare-fun b!1272527 () Bool)

(declare-fun e!725891 () Bool)

(declare-fun tp_is_empty!33047 () Bool)

(assert (=> b!1272527 (= e!725891 tp_is_empty!33047)))

(declare-fun b!1272528 () Bool)

(declare-fun e!725893 () Bool)

(declare-fun mapRes!51165 () Bool)

(assert (=> b!1272528 (= e!725893 (and e!725891 mapRes!51165))))

(declare-fun condMapEmpty!51165 () Bool)

(declare-fun mapDefault!51165 () ValueCell!15670)

