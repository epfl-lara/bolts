; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107580 () Bool)

(assert start!107580)

(declare-fun b!1273265 () Bool)

(declare-fun b_free!27715 () Bool)

(declare-fun b_next!27715 () Bool)

(assert (=> b!1273265 (= b_free!27715 (not b_next!27715))))

(declare-fun tp!97689 () Bool)

(declare-fun b_and!45781 () Bool)

(assert (=> b!1273265 (= tp!97689 b_and!45781)))

(declare-fun b!1273264 () Bool)

(declare-fun e!726447 () Bool)

(declare-fun tp_is_empty!33085 () Bool)

(assert (=> b!1273264 (= e!726447 tp_is_empty!33085)))

(declare-fun e!726444 () Bool)

(declare-fun e!726443 () Bool)

(declare-datatypes ((V!49307 0))(
  ( (V!49308 (val!16617 Int)) )
))
(declare-datatypes ((ValueCell!15689 0))(
  ( (ValueCellFull!15689 (v!19252 V!49307)) (EmptyCell!15689) )
))
(declare-datatypes ((array!83383 0))(
  ( (array!83384 (arr!40213 (Array (_ BitVec 32) ValueCell!15689)) (size!40755 (_ BitVec 32))) )
))
(declare-datatypes ((array!83385 0))(
  ( (array!83386 (arr!40214 (Array (_ BitVec 32) (_ BitVec 64))) (size!40756 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6142 0))(
  ( (LongMapFixedSize!6143 (defaultEntry!6717 Int) (mask!34491 (_ BitVec 32)) (extraKeys!6396 (_ BitVec 32)) (zeroValue!6502 V!49307) (minValue!6502 V!49307) (_size!3126 (_ BitVec 32)) (_keys!12128 array!83385) (_values!6740 array!83383) (_vacant!3126 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6142)

(declare-fun array_inv!30525 (array!83385) Bool)

(declare-fun array_inv!30526 (array!83383) Bool)

(assert (=> b!1273265 (= e!726443 (and tp!97689 tp_is_empty!33085 (array_inv!30525 (_keys!12128 thiss!1551)) (array_inv!30526 (_values!6740 thiss!1551)) e!726444))))

(declare-fun b!1273266 () Bool)

(declare-fun mapRes!51246 () Bool)

(assert (=> b!1273266 (= e!726444 (and e!726447 mapRes!51246))))

(declare-fun condMapEmpty!51246 () Bool)

(declare-fun mapDefault!51246 () ValueCell!15689)

