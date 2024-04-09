; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111056 () Bool)

(assert start!111056)

(declare-fun b_free!29855 () Bool)

(declare-fun b_next!29855 () Bool)

(assert (=> start!111056 (= b_free!29855 (not b_next!29855))))

(declare-fun tp!104888 () Bool)

(declare-fun b_and!48073 () Bool)

(assert (=> start!111056 (= tp!104888 b_and!48073)))

(declare-fun b!1314333 () Bool)

(declare-fun e!749748 () Bool)

(declare-fun e!749749 () Bool)

(declare-fun mapRes!55006 () Bool)

(assert (=> b!1314333 (= e!749748 (and e!749749 mapRes!55006))))

(declare-fun condMapEmpty!55006 () Bool)

(declare-datatypes ((V!52549 0))(
  ( (V!52550 (val!17867 Int)) )
))
(declare-datatypes ((ValueCell!16894 0))(
  ( (ValueCellFull!16894 (v!20492 V!52549)) (EmptyCell!16894) )
))
(declare-datatypes ((array!88105 0))(
  ( (array!88106 (arr!42528 (Array (_ BitVec 32) ValueCell!16894)) (size!43079 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88105)

(declare-fun mapDefault!55006 () ValueCell!16894)

