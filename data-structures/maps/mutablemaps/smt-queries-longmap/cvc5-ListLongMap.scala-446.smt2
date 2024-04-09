; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8300 () Bool)

(assert start!8300)

(declare-fun b!53801 () Bool)

(declare-fun b_free!1741 () Bool)

(declare-fun b_next!1741 () Bool)

(assert (=> b!53801 (= b_free!1741 (not b_next!1741))))

(declare-fun tp!7325 () Bool)

(declare-fun b_and!3033 () Bool)

(assert (=> b!53801 (= tp!7325 b_and!3033)))

(declare-fun b!53788 () Bool)

(declare-fun b_free!1743 () Bool)

(declare-fun b_next!1743 () Bool)

(assert (=> b!53788 (= b_free!1743 (not b_next!1743))))

(declare-fun tp!7324 () Bool)

(declare-fun b_and!3035 () Bool)

(assert (=> b!53788 (= tp!7324 b_and!3035)))

(declare-fun tp_is_empty!2287 () Bool)

(declare-datatypes ((V!2697 0))(
  ( (V!2698 (val!1188 Int)) )
))
(declare-datatypes ((array!3496 0))(
  ( (array!3497 (arr!1670 (Array (_ BitVec 32) (_ BitVec 64))) (size!1899 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!800 0))(
  ( (ValueCellFull!800 (v!2260 V!2697)) (EmptyCell!800) )
))
(declare-datatypes ((array!3498 0))(
  ( (array!3499 (arr!1671 (Array (_ BitVec 32) ValueCell!800)) (size!1900 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!508 0))(
  ( (LongMapFixedSize!509 (defaultEntry!1968 Int) (mask!5807 (_ BitVec 32)) (extraKeys!1859 (_ BitVec 32)) (zeroValue!1886 V!2697) (minValue!1886 V!2697) (_size!303 (_ BitVec 32)) (_keys!3588 array!3496) (_values!1951 array!3498) (_vacant!303 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!508)

(declare-fun e!35107 () Bool)

(declare-fun e!35114 () Bool)

(declare-fun array_inv!979 (array!3496) Bool)

(declare-fun array_inv!980 (array!3498) Bool)

(assert (=> b!53788 (= e!35114 (and tp!7324 tp_is_empty!2287 (array_inv!979 (_keys!3588 newMap!16)) (array_inv!980 (_values!1951 newMap!16)) e!35107))))

(declare-fun mapNonEmpty!2531 () Bool)

(declare-fun mapRes!2531 () Bool)

(declare-fun tp!7323 () Bool)

(declare-fun e!35110 () Bool)

(assert (=> mapNonEmpty!2531 (= mapRes!2531 (and tp!7323 e!35110))))

(declare-fun mapValue!2531 () ValueCell!800)

(declare-fun mapRest!2532 () (Array (_ BitVec 32) ValueCell!800))

(declare-fun mapKey!2532 () (_ BitVec 32))

(assert (=> mapNonEmpty!2531 (= (arr!1671 (_values!1951 newMap!16)) (store mapRest!2532 mapKey!2532 mapValue!2531))))

(declare-fun b!53789 () Bool)

(declare-fun e!35105 () Bool)

(assert (=> b!53789 (= e!35107 (and e!35105 mapRes!2531))))

(declare-fun condMapEmpty!2532 () Bool)

(declare-fun mapDefault!2532 () ValueCell!800)

