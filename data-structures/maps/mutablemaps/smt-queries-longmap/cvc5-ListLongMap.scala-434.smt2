; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8174 () Bool)

(assert start!8174)

(declare-fun b!51558 () Bool)

(declare-fun b_free!1597 () Bool)

(declare-fun b_next!1597 () Bool)

(assert (=> b!51558 (= b_free!1597 (not b_next!1597))))

(declare-fun tp!6880 () Bool)

(declare-fun b_and!2817 () Bool)

(assert (=> b!51558 (= tp!6880 b_and!2817)))

(declare-fun b!51556 () Bool)

(declare-fun b_free!1599 () Bool)

(declare-fun b_next!1599 () Bool)

(assert (=> b!51556 (= b_free!1599 (not b_next!1599))))

(declare-fun tp!6881 () Bool)

(declare-fun b_and!2819 () Bool)

(assert (=> b!51556 (= tp!6881 b_and!2819)))

(declare-fun mapNonEmpty!2303 () Bool)

(declare-fun mapRes!2304 () Bool)

(declare-fun tp!6882 () Bool)

(declare-fun e!33438 () Bool)

(assert (=> mapNonEmpty!2303 (= mapRes!2304 (and tp!6882 e!33438))))

(declare-datatypes ((V!2601 0))(
  ( (V!2602 (val!1152 Int)) )
))
(declare-datatypes ((ValueCell!764 0))(
  ( (ValueCellFull!764 (v!2190 V!2601)) (EmptyCell!764) )
))
(declare-fun mapRest!2303 () (Array (_ BitVec 32) ValueCell!764))

(declare-fun mapKey!2303 () (_ BitVec 32))

(declare-fun mapValue!2304 () ValueCell!764)

(declare-datatypes ((array!3348 0))(
  ( (array!3349 (arr!1598 (Array (_ BitVec 32) (_ BitVec 64))) (size!1825 (_ BitVec 32))) )
))
(declare-datatypes ((array!3350 0))(
  ( (array!3351 (arr!1599 (Array (_ BitVec 32) ValueCell!764)) (size!1826 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!436 0))(
  ( (LongMapFixedSize!437 (defaultEntry!1932 Int) (mask!5741 (_ BitVec 32)) (extraKeys!1823 (_ BitVec 32)) (zeroValue!1850 V!2601) (minValue!1850 V!2601) (_size!267 (_ BitVec 32)) (_keys!3548 array!3348) (_values!1915 array!3350) (_vacant!267 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!436)

(assert (=> mapNonEmpty!2303 (= (arr!1599 (_values!1915 newMap!16)) (store mapRest!2303 mapKey!2303 mapValue!2304))))

(declare-fun b!51555 () Bool)

(declare-fun e!33447 () Bool)

(declare-fun e!33444 () Bool)

(declare-fun mapRes!2303 () Bool)

(assert (=> b!51555 (= e!33447 (and e!33444 mapRes!2303))))

(declare-fun condMapEmpty!2303 () Bool)

(declare-datatypes ((Cell!256 0))(
  ( (Cell!257 (v!2191 LongMapFixedSize!436)) )
))
(declare-datatypes ((LongMap!256 0))(
  ( (LongMap!257 (underlying!139 Cell!256)) )
))
(declare-fun thiss!992 () LongMap!256)

(declare-fun mapDefault!2303 () ValueCell!764)

