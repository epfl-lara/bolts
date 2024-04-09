; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111376 () Bool)

(assert start!111376)

(declare-fun b!1317400 () Bool)

(declare-fun res!874433 () Bool)

(declare-fun e!751791 () Bool)

(assert (=> b!1317400 (=> (not res!874433) (not e!751791))))

(declare-datatypes ((array!88541 0))(
  ( (array!88542 (arr!42740 (Array (_ BitVec 32) (_ BitVec 64))) (size!43291 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88541)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!52859 0))(
  ( (V!52860 (val!17983 Int)) )
))
(declare-datatypes ((ValueCell!17010 0))(
  ( (ValueCellFull!17010 (v!20611 V!52859)) (EmptyCell!17010) )
))
(declare-datatypes ((array!88543 0))(
  ( (array!88544 (arr!42741 (Array (_ BitVec 32) ValueCell!17010)) (size!43292 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88543)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1317400 (= res!874433 (and (= (size!43292 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43291 _keys!1609) (size!43292 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1317401 () Bool)

(declare-fun e!751788 () Bool)

(declare-fun tp_is_empty!35817 () Bool)

(assert (=> b!1317401 (= e!751788 tp_is_empty!35817)))

(declare-fun mapIsEmpty!55373 () Bool)

(declare-fun mapRes!55373 () Bool)

(assert (=> mapIsEmpty!55373 mapRes!55373))

(declare-fun b!1317402 () Bool)

(declare-fun e!751792 () Bool)

(assert (=> b!1317402 (= e!751792 tp_is_empty!35817)))

(declare-fun b!1317403 () Bool)

(assert (=> b!1317403 (= e!751791 false)))

(declare-fun lt!586312 () Bool)

(declare-datatypes ((List!30487 0))(
  ( (Nil!30484) (Cons!30483 (h!31692 (_ BitVec 64)) (t!44102 List!30487)) )
))
(declare-fun arrayNoDuplicates!0 (array!88541 (_ BitVec 32) List!30487) Bool)

(assert (=> b!1317403 (= lt!586312 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30484))))

(declare-fun res!874434 () Bool)

(assert (=> start!111376 (=> (not res!874434) (not e!751791))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111376 (= res!874434 (validMask!0 mask!2019))))

(assert (=> start!111376 e!751791))

(assert (=> start!111376 true))

(declare-fun e!751789 () Bool)

(declare-fun array_inv!32237 (array!88543) Bool)

(assert (=> start!111376 (and (array_inv!32237 _values!1337) e!751789)))

(declare-fun array_inv!32238 (array!88541) Bool)

(assert (=> start!111376 (array_inv!32238 _keys!1609)))

(declare-fun b!1317404 () Bool)

(declare-fun res!874435 () Bool)

(assert (=> b!1317404 (=> (not res!874435) (not e!751791))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88541 (_ BitVec 32)) Bool)

(assert (=> b!1317404 (= res!874435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapNonEmpty!55373 () Bool)

(declare-fun tp!105480 () Bool)

(assert (=> mapNonEmpty!55373 (= mapRes!55373 (and tp!105480 e!751792))))

(declare-fun mapKey!55373 () (_ BitVec 32))

(declare-fun mapRest!55373 () (Array (_ BitVec 32) ValueCell!17010))

(declare-fun mapValue!55373 () ValueCell!17010)

(assert (=> mapNonEmpty!55373 (= (arr!42741 _values!1337) (store mapRest!55373 mapKey!55373 mapValue!55373))))

(declare-fun b!1317405 () Bool)

(assert (=> b!1317405 (= e!751789 (and e!751788 mapRes!55373))))

(declare-fun condMapEmpty!55373 () Bool)

(declare-fun mapDefault!55373 () ValueCell!17010)

(assert (=> b!1317405 (= condMapEmpty!55373 (= (arr!42741 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17010)) mapDefault!55373)))))

(assert (= (and start!111376 res!874434) b!1317400))

(assert (= (and b!1317400 res!874433) b!1317404))

(assert (= (and b!1317404 res!874435) b!1317403))

(assert (= (and b!1317405 condMapEmpty!55373) mapIsEmpty!55373))

(assert (= (and b!1317405 (not condMapEmpty!55373)) mapNonEmpty!55373))

(get-info :version)

(assert (= (and mapNonEmpty!55373 ((_ is ValueCellFull!17010) mapValue!55373)) b!1317402))

(assert (= (and b!1317405 ((_ is ValueCellFull!17010) mapDefault!55373)) b!1317401))

(assert (= start!111376 b!1317405))

(declare-fun m!1205283 () Bool)

(assert (=> b!1317403 m!1205283))

(declare-fun m!1205285 () Bool)

(assert (=> start!111376 m!1205285))

(declare-fun m!1205287 () Bool)

(assert (=> start!111376 m!1205287))

(declare-fun m!1205289 () Bool)

(assert (=> start!111376 m!1205289))

(declare-fun m!1205291 () Bool)

(assert (=> b!1317404 m!1205291))

(declare-fun m!1205293 () Bool)

(assert (=> mapNonEmpty!55373 m!1205293))

(check-sat (not b!1317404) tp_is_empty!35817 (not mapNonEmpty!55373) (not b!1317403) (not start!111376))
(check-sat)
