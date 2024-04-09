; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113010 () Bool)

(assert start!113010)

(declare-fun b!1339038 () Bool)

(declare-fun e!762638 () Bool)

(declare-fun tp_is_empty!37025 () Bool)

(assert (=> b!1339038 (= e!762638 tp_is_empty!37025)))

(declare-fun mapIsEmpty!57244 () Bool)

(declare-fun mapRes!57244 () Bool)

(assert (=> mapIsEmpty!57244 mapRes!57244))

(declare-fun b!1339039 () Bool)

(declare-fun e!762639 () Bool)

(assert (=> b!1339039 (= e!762639 (and e!762638 mapRes!57244))))

(declare-fun condMapEmpty!57244 () Bool)

(declare-datatypes ((V!54469 0))(
  ( (V!54470 (val!18587 Int)) )
))
(declare-datatypes ((ValueCell!17614 0))(
  ( (ValueCellFull!17614 (v!21233 V!54469)) (EmptyCell!17614) )
))
(declare-datatypes ((array!90879 0))(
  ( (array!90880 (arr!43891 (Array (_ BitVec 32) ValueCell!17614)) (size!44442 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90879)

(declare-fun mapDefault!57244 () ValueCell!17614)

