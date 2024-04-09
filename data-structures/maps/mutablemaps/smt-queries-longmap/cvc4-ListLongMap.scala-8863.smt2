; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107596 () Bool)

(assert start!107596)

(declare-fun b!1273361 () Bool)

(declare-fun b_free!27725 () Bool)

(declare-fun b_next!27725 () Bool)

(assert (=> b!1273361 (= b_free!27725 (not b_next!27725))))

(declare-fun tp!97723 () Bool)

(declare-fun b_and!45791 () Bool)

(assert (=> b!1273361 (= tp!97723 b_and!45791)))

(declare-fun mapIsEmpty!51264 () Bool)

(declare-fun mapRes!51264 () Bool)

(assert (=> mapIsEmpty!51264 mapRes!51264))

(declare-fun b!1273359 () Bool)

(declare-fun e!726545 () Bool)

(declare-fun tp_is_empty!33095 () Bool)

(assert (=> b!1273359 (= e!726545 tp_is_empty!33095)))

(declare-fun res!846870 () Bool)

(declare-fun e!726542 () Bool)

(assert (=> start!107596 (=> (not res!846870) (not e!726542))))

(declare-datatypes ((V!49319 0))(
  ( (V!49320 (val!16622 Int)) )
))
(declare-datatypes ((ValueCell!15694 0))(
  ( (ValueCellFull!15694 (v!19257 V!49319)) (EmptyCell!15694) )
))
(declare-datatypes ((array!83405 0))(
  ( (array!83406 (arr!40223 (Array (_ BitVec 32) ValueCell!15694)) (size!40766 (_ BitVec 32))) )
))
(declare-datatypes ((array!83407 0))(
  ( (array!83408 (arr!40224 (Array (_ BitVec 32) (_ BitVec 64))) (size!40767 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6152 0))(
  ( (LongMapFixedSize!6153 (defaultEntry!6722 Int) (mask!34498 (_ BitVec 32)) (extraKeys!6401 (_ BitVec 32)) (zeroValue!6507 V!49319) (minValue!6507 V!49319) (_size!3131 (_ BitVec 32)) (_keys!12133 array!83407) (_values!6745 array!83405) (_vacant!3131 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6152)

(declare-fun simpleValid!466 (LongMapFixedSize!6152) Bool)

(assert (=> start!107596 (= res!846870 (simpleValid!466 thiss!1551))))

(assert (=> start!107596 e!726542))

(declare-fun e!726543 () Bool)

(assert (=> start!107596 e!726543))

(declare-fun b!1273360 () Bool)

(declare-fun e!726547 () Bool)

(declare-fun e!726546 () Bool)

(assert (=> b!1273360 (= e!726547 (and e!726546 mapRes!51264))))

(declare-fun condMapEmpty!51264 () Bool)

(declare-fun mapDefault!51264 () ValueCell!15694)

