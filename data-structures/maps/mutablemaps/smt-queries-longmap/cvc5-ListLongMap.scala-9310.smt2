; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111332 () Bool)

(assert start!111332)

(declare-fun b!1317004 () Bool)

(declare-fun res!874237 () Bool)

(declare-fun e!751461 () Bool)

(assert (=> b!1317004 (=> (not res!874237) (not e!751461))))

(declare-datatypes ((array!88461 0))(
  ( (array!88462 (arr!42700 (Array (_ BitVec 32) (_ BitVec 64))) (size!43251 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88461)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!52801 0))(
  ( (V!52802 (val!17961 Int)) )
))
(declare-datatypes ((ValueCell!16988 0))(
  ( (ValueCellFull!16988 (v!20589 V!52801)) (EmptyCell!16988) )
))
(declare-datatypes ((array!88463 0))(
  ( (array!88464 (arr!42701 (Array (_ BitVec 32) ValueCell!16988)) (size!43252 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88463)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1317004 (= res!874237 (and (= (size!43252 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43251 _keys!1609) (size!43252 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!874236 () Bool)

(assert (=> start!111332 (=> (not res!874236) (not e!751461))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111332 (= res!874236 (validMask!0 mask!2019))))

(assert (=> start!111332 e!751461))

(assert (=> start!111332 true))

(declare-fun e!751462 () Bool)

(declare-fun array_inv!32215 (array!88463) Bool)

(assert (=> start!111332 (and (array_inv!32215 _values!1337) e!751462)))

(declare-fun array_inv!32216 (array!88461) Bool)

(assert (=> start!111332 (array_inv!32216 _keys!1609)))

(declare-fun mapIsEmpty!55307 () Bool)

(declare-fun mapRes!55307 () Bool)

(assert (=> mapIsEmpty!55307 mapRes!55307))

(declare-fun mapNonEmpty!55307 () Bool)

(declare-fun tp!105414 () Bool)

(declare-fun e!751460 () Bool)

(assert (=> mapNonEmpty!55307 (= mapRes!55307 (and tp!105414 e!751460))))

(declare-fun mapValue!55307 () ValueCell!16988)

(declare-fun mapRest!55307 () (Array (_ BitVec 32) ValueCell!16988))

(declare-fun mapKey!55307 () (_ BitVec 32))

(assert (=> mapNonEmpty!55307 (= (arr!42701 _values!1337) (store mapRest!55307 mapKey!55307 mapValue!55307))))

(declare-fun b!1317005 () Bool)

(declare-fun res!874235 () Bool)

(assert (=> b!1317005 (=> (not res!874235) (not e!751461))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88461 (_ BitVec 32)) Bool)

(assert (=> b!1317005 (= res!874235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317006 () Bool)

(assert (=> b!1317006 (= e!751461 false)))

(declare-fun lt!586246 () Bool)

(declare-datatypes ((List!30472 0))(
  ( (Nil!30469) (Cons!30468 (h!31677 (_ BitVec 64)) (t!44087 List!30472)) )
))
(declare-fun arrayNoDuplicates!0 (array!88461 (_ BitVec 32) List!30472) Bool)

(assert (=> b!1317006 (= lt!586246 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30469))))

(declare-fun b!1317007 () Bool)

(declare-fun e!751459 () Bool)

(declare-fun tp_is_empty!35773 () Bool)

(assert (=> b!1317007 (= e!751459 tp_is_empty!35773)))

(declare-fun b!1317008 () Bool)

(assert (=> b!1317008 (= e!751460 tp_is_empty!35773)))

(declare-fun b!1317009 () Bool)

(assert (=> b!1317009 (= e!751462 (and e!751459 mapRes!55307))))

(declare-fun condMapEmpty!55307 () Bool)

(declare-fun mapDefault!55307 () ValueCell!16988)

