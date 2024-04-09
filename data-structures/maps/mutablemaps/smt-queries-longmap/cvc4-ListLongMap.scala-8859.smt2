; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107532 () Bool)

(assert start!107532)

(declare-fun b!1272982 () Bool)

(declare-fun b_free!27701 () Bool)

(declare-fun b_next!27701 () Bool)

(assert (=> b!1272982 (= b_free!27701 (not b_next!27701))))

(declare-fun tp!97638 () Bool)

(declare-fun b_and!45767 () Bool)

(assert (=> b!1272982 (= tp!97638 b_and!45767)))

(declare-fun res!846696 () Bool)

(declare-fun e!726242 () Bool)

(assert (=> start!107532 (=> (not res!846696) (not e!726242))))

(declare-datatypes ((V!49287 0))(
  ( (V!49288 (val!16610 Int)) )
))
(declare-datatypes ((ValueCell!15682 0))(
  ( (ValueCellFull!15682 (v!19245 V!49287)) (EmptyCell!15682) )
))
(declare-datatypes ((array!83349 0))(
  ( (array!83350 (arr!40199 (Array (_ BitVec 32) ValueCell!15682)) (size!40741 (_ BitVec 32))) )
))
(declare-datatypes ((array!83351 0))(
  ( (array!83352 (arr!40200 (Array (_ BitVec 32) (_ BitVec 64))) (size!40742 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6128 0))(
  ( (LongMapFixedSize!6129 (defaultEntry!6710 Int) (mask!34472 (_ BitVec 32)) (extraKeys!6389 (_ BitVec 32)) (zeroValue!6495 V!49287) (minValue!6495 V!49287) (_size!3119 (_ BitVec 32)) (_keys!12118 array!83351) (_values!6733 array!83349) (_vacant!3119 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6128)

(declare-fun valid!2255 (LongMapFixedSize!6128) Bool)

(assert (=> start!107532 (= res!846696 (valid!2255 thiss!1559))))

(assert (=> start!107532 e!726242))

(declare-fun e!726239 () Bool)

(assert (=> start!107532 e!726239))

(declare-fun b!1272977 () Bool)

(declare-fun res!846694 () Bool)

(assert (=> b!1272977 (=> (not res!846694) (not e!726242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1272977 (= res!846694 (validMask!0 (mask!34472 thiss!1559)))))

(declare-fun b!1272978 () Bool)

(declare-fun e!726240 () Bool)

(declare-fun tp_is_empty!33071 () Bool)

(assert (=> b!1272978 (= e!726240 tp_is_empty!33071)))

(declare-fun b!1272979 () Bool)

(declare-fun e!726243 () Bool)

(assert (=> b!1272979 (= e!726243 tp_is_empty!33071)))

(declare-fun b!1272980 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83351 (_ BitVec 32)) Bool)

(assert (=> b!1272980 (= e!726242 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12118 thiss!1559) (mask!34472 thiss!1559))))))

(declare-fun mapNonEmpty!51216 () Bool)

(declare-fun mapRes!51216 () Bool)

(declare-fun tp!97639 () Bool)

(assert (=> mapNonEmpty!51216 (= mapRes!51216 (and tp!97639 e!726243))))

(declare-fun mapValue!51216 () ValueCell!15682)

(declare-fun mapRest!51216 () (Array (_ BitVec 32) ValueCell!15682))

(declare-fun mapKey!51216 () (_ BitVec 32))

(assert (=> mapNonEmpty!51216 (= (arr!40199 (_values!6733 thiss!1559)) (store mapRest!51216 mapKey!51216 mapValue!51216))))

(declare-fun b!1272981 () Bool)

(declare-fun e!726244 () Bool)

(assert (=> b!1272981 (= e!726244 (and e!726240 mapRes!51216))))

(declare-fun condMapEmpty!51216 () Bool)

(declare-fun mapDefault!51216 () ValueCell!15682)

