; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111334 () Bool)

(assert start!111334)

(declare-fun b!1317022 () Bool)

(declare-fun res!874246 () Bool)

(declare-fun e!751476 () Bool)

(assert (=> b!1317022 (=> (not res!874246) (not e!751476))))

(declare-datatypes ((array!88465 0))(
  ( (array!88466 (arr!42702 (Array (_ BitVec 32) (_ BitVec 64))) (size!43253 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88465)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!52803 0))(
  ( (V!52804 (val!17962 Int)) )
))
(declare-datatypes ((ValueCell!16989 0))(
  ( (ValueCellFull!16989 (v!20590 V!52803)) (EmptyCell!16989) )
))
(declare-datatypes ((array!88467 0))(
  ( (array!88468 (arr!42703 (Array (_ BitVec 32) ValueCell!16989)) (size!43254 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88467)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1317022 (= res!874246 (and (= (size!43254 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43253 _keys!1609) (size!43254 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1317023 () Bool)

(declare-fun res!874245 () Bool)

(assert (=> b!1317023 (=> (not res!874245) (not e!751476))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88465 (_ BitVec 32)) Bool)

(assert (=> b!1317023 (= res!874245 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapNonEmpty!55310 () Bool)

(declare-fun mapRes!55310 () Bool)

(declare-fun tp!105417 () Bool)

(declare-fun e!751474 () Bool)

(assert (=> mapNonEmpty!55310 (= mapRes!55310 (and tp!105417 e!751474))))

(declare-fun mapKey!55310 () (_ BitVec 32))

(declare-fun mapRest!55310 () (Array (_ BitVec 32) ValueCell!16989))

(declare-fun mapValue!55310 () ValueCell!16989)

(assert (=> mapNonEmpty!55310 (= (arr!42703 _values!1337) (store mapRest!55310 mapKey!55310 mapValue!55310))))

(declare-fun mapIsEmpty!55310 () Bool)

(assert (=> mapIsEmpty!55310 mapRes!55310))

(declare-fun res!874244 () Bool)

(assert (=> start!111334 (=> (not res!874244) (not e!751476))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111334 (= res!874244 (validMask!0 mask!2019))))

(assert (=> start!111334 e!751476))

(assert (=> start!111334 true))

(declare-fun e!751473 () Bool)

(declare-fun array_inv!32217 (array!88467) Bool)

(assert (=> start!111334 (and (array_inv!32217 _values!1337) e!751473)))

(declare-fun array_inv!32218 (array!88465) Bool)

(assert (=> start!111334 (array_inv!32218 _keys!1609)))

(declare-fun b!1317024 () Bool)

(declare-fun e!751475 () Bool)

(assert (=> b!1317024 (= e!751473 (and e!751475 mapRes!55310))))

(declare-fun condMapEmpty!55310 () Bool)

(declare-fun mapDefault!55310 () ValueCell!16989)

(assert (=> b!1317024 (= condMapEmpty!55310 (= (arr!42703 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!16989)) mapDefault!55310)))))

(declare-fun b!1317025 () Bool)

(declare-fun tp_is_empty!35775 () Bool)

(assert (=> b!1317025 (= e!751475 tp_is_empty!35775)))

(declare-fun b!1317026 () Bool)

(assert (=> b!1317026 (= e!751474 tp_is_empty!35775)))

(declare-fun b!1317027 () Bool)

(assert (=> b!1317027 (= e!751476 false)))

(declare-fun lt!586249 () Bool)

(declare-datatypes ((List!30473 0))(
  ( (Nil!30470) (Cons!30469 (h!31678 (_ BitVec 64)) (t!44088 List!30473)) )
))
(declare-fun arrayNoDuplicates!0 (array!88465 (_ BitVec 32) List!30473) Bool)

(assert (=> b!1317027 (= lt!586249 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30470))))

(assert (= (and start!111334 res!874244) b!1317022))

(assert (= (and b!1317022 res!874246) b!1317023))

(assert (= (and b!1317023 res!874245) b!1317027))

(assert (= (and b!1317024 condMapEmpty!55310) mapIsEmpty!55310))

(assert (= (and b!1317024 (not condMapEmpty!55310)) mapNonEmpty!55310))

(get-info :version)

(assert (= (and mapNonEmpty!55310 ((_ is ValueCellFull!16989) mapValue!55310)) b!1317026))

(assert (= (and b!1317024 ((_ is ValueCellFull!16989) mapDefault!55310)) b!1317025))

(assert (= start!111334 b!1317024))

(declare-fun m!1205031 () Bool)

(assert (=> b!1317023 m!1205031))

(declare-fun m!1205033 () Bool)

(assert (=> mapNonEmpty!55310 m!1205033))

(declare-fun m!1205035 () Bool)

(assert (=> start!111334 m!1205035))

(declare-fun m!1205037 () Bool)

(assert (=> start!111334 m!1205037))

(declare-fun m!1205039 () Bool)

(assert (=> start!111334 m!1205039))

(declare-fun m!1205041 () Bool)

(assert (=> b!1317027 m!1205041))

(check-sat tp_is_empty!35775 (not b!1317023) (not mapNonEmpty!55310) (not b!1317027) (not start!111334))
(check-sat)
