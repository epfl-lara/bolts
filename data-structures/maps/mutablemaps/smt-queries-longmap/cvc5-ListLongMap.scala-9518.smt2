; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113006 () Bool)

(assert start!113006)

(declare-fun b!1339002 () Bool)

(declare-fun e!762607 () Bool)

(declare-fun tp_is_empty!37021 () Bool)

(assert (=> b!1339002 (= e!762607 tp_is_empty!37021)))

(declare-fun mapIsEmpty!57238 () Bool)

(declare-fun mapRes!57238 () Bool)

(assert (=> mapIsEmpty!57238 mapRes!57238))

(declare-fun b!1339003 () Bool)

(declare-fun e!762611 () Bool)

(assert (=> b!1339003 (= e!762611 (and e!762607 mapRes!57238))))

(declare-fun condMapEmpty!57238 () Bool)

(declare-datatypes ((V!54465 0))(
  ( (V!54466 (val!18585 Int)) )
))
(declare-datatypes ((ValueCell!17612 0))(
  ( (ValueCellFull!17612 (v!21231 V!54465)) (EmptyCell!17612) )
))
(declare-datatypes ((array!90873 0))(
  ( (array!90874 (arr!43888 (Array (_ BitVec 32) ValueCell!17612)) (size!44439 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90873)

(declare-fun mapDefault!57238 () ValueCell!17612)

