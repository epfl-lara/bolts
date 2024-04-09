; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111410 () Bool)

(assert start!111410)

(declare-fun b_free!30031 () Bool)

(declare-fun b_next!30031 () Bool)

(assert (=> start!111410 (= b_free!30031 (not b_next!30031))))

(declare-fun tp!105570 () Bool)

(declare-fun b_and!48261 () Bool)

(assert (=> start!111410 (= tp!105570 b_and!48261)))

(declare-fun b!1317791 () Bool)

(declare-fun e!752045 () Bool)

(declare-fun tp_is_empty!35851 () Bool)

(assert (=> b!1317791 (= e!752045 tp_is_empty!35851)))

(declare-fun mapIsEmpty!55424 () Bool)

(declare-fun mapRes!55424 () Bool)

(assert (=> mapIsEmpty!55424 mapRes!55424))

(declare-fun b!1317792 () Bool)

(declare-fun res!874673 () Bool)

(declare-fun e!752047 () Bool)

(assert (=> b!1317792 (=> (not res!874673) (not e!752047))))

(declare-datatypes ((array!88607 0))(
  ( (array!88608 (arr!42773 (Array (_ BitVec 32) (_ BitVec 64))) (size!43324 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88607)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88607 (_ BitVec 32)) Bool)

(assert (=> b!1317792 (= res!874673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317793 () Bool)

(declare-fun res!874672 () Bool)

(assert (=> b!1317793 (=> (not res!874672) (not e!752047))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!52905 0))(
  ( (V!52906 (val!18000 Int)) )
))
(declare-datatypes ((ValueCell!17027 0))(
  ( (ValueCellFull!17027 (v!20628 V!52905)) (EmptyCell!17027) )
))
(declare-datatypes ((array!88609 0))(
  ( (array!88610 (arr!42774 (Array (_ BitVec 32) ValueCell!17027)) (size!43325 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88609)

(assert (=> b!1317793 (= res!874672 (and (= (size!43325 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43324 _keys!1609) (size!43325 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1317794 () Bool)

(declare-fun e!752044 () Bool)

(assert (=> b!1317794 (= e!752044 tp_is_empty!35851)))

(declare-fun b!1317795 () Bool)

(declare-fun e!752043 () Bool)

(assert (=> b!1317795 (= e!752043 (and e!752045 mapRes!55424))))

(declare-fun condMapEmpty!55424 () Bool)

(declare-fun mapDefault!55424 () ValueCell!17027)

