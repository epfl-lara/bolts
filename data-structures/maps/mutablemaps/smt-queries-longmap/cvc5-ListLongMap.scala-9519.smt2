; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113012 () Bool)

(assert start!113012)

(declare-fun mapNonEmpty!57247 () Bool)

(declare-fun mapRes!57247 () Bool)

(declare-fun tp!108947 () Bool)

(declare-fun e!762654 () Bool)

(assert (=> mapNonEmpty!57247 (= mapRes!57247 (and tp!108947 e!762654))))

(declare-datatypes ((V!54473 0))(
  ( (V!54474 (val!18588 Int)) )
))
(declare-datatypes ((ValueCell!17615 0))(
  ( (ValueCellFull!17615 (v!21234 V!54473)) (EmptyCell!17615) )
))
(declare-fun mapRest!57247 () (Array (_ BitVec 32) ValueCell!17615))

(declare-fun mapValue!57247 () ValueCell!17615)

(declare-fun mapKey!57247 () (_ BitVec 32))

(declare-datatypes ((array!90881 0))(
  ( (array!90882 (arr!43892 (Array (_ BitVec 32) ValueCell!17615)) (size!44443 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90881)

(assert (=> mapNonEmpty!57247 (= (arr!43892 _values!1303) (store mapRest!57247 mapKey!57247 mapValue!57247))))

(declare-fun b!1339056 () Bool)

(declare-fun e!762653 () Bool)

(declare-fun e!762652 () Bool)

(assert (=> b!1339056 (= e!762653 (and e!762652 mapRes!57247))))

(declare-fun condMapEmpty!57247 () Bool)

(declare-fun mapDefault!57247 () ValueCell!17615)

