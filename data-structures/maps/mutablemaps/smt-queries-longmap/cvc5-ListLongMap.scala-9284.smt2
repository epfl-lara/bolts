; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111088 () Bool)

(assert start!111088)

(declare-fun b_free!29887 () Bool)

(declare-fun b_next!29887 () Bool)

(assert (=> start!111088 (= b_free!29887 (not b_next!29887))))

(declare-fun tp!104984 () Bool)

(declare-fun b_and!48105 () Bool)

(assert (=> start!111088 (= tp!104984 b_and!48105)))

(declare-fun b!1314717 () Bool)

(declare-fun e!749988 () Bool)

(declare-fun tp_is_empty!35617 () Bool)

(assert (=> b!1314717 (= e!749988 tp_is_empty!35617)))

(declare-fun b!1314718 () Bool)

(declare-fun e!749990 () Bool)

(assert (=> b!1314718 (= e!749990 tp_is_empty!35617)))

(declare-fun b!1314719 () Bool)

(declare-fun e!749986 () Bool)

(declare-fun mapRes!55054 () Bool)

(assert (=> b!1314719 (= e!749986 (and e!749990 mapRes!55054))))

(declare-fun condMapEmpty!55054 () Bool)

(declare-datatypes ((V!52593 0))(
  ( (V!52594 (val!17883 Int)) )
))
(declare-datatypes ((ValueCell!16910 0))(
  ( (ValueCellFull!16910 (v!20508 V!52593)) (EmptyCell!16910) )
))
(declare-datatypes ((array!88167 0))(
  ( (array!88168 (arr!42559 (Array (_ BitVec 32) ValueCell!16910)) (size!43110 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88167)

(declare-fun mapDefault!55054 () ValueCell!16910)

