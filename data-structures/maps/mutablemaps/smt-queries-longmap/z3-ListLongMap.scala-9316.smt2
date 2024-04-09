; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111370 () Bool)

(assert start!111370)

(declare-fun b!1317346 () Bool)

(declare-fun e!751747 () Bool)

(declare-fun e!751745 () Bool)

(declare-fun mapRes!55364 () Bool)

(assert (=> b!1317346 (= e!751747 (and e!751745 mapRes!55364))))

(declare-fun condMapEmpty!55364 () Bool)

(declare-datatypes ((V!52851 0))(
  ( (V!52852 (val!17980 Int)) )
))
(declare-datatypes ((ValueCell!17007 0))(
  ( (ValueCellFull!17007 (v!20608 V!52851)) (EmptyCell!17007) )
))
(declare-datatypes ((array!88531 0))(
  ( (array!88532 (arr!42735 (Array (_ BitVec 32) ValueCell!17007)) (size!43286 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88531)

(declare-fun mapDefault!55364 () ValueCell!17007)

(assert (=> b!1317346 (= condMapEmpty!55364 (= (arr!42735 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17007)) mapDefault!55364)))))

(declare-fun b!1317347 () Bool)

(declare-fun e!751743 () Bool)

(assert (=> b!1317347 (= e!751743 false)))

(declare-fun lt!586303 () Bool)

(declare-datatypes ((array!88533 0))(
  ( (array!88534 (arr!42736 (Array (_ BitVec 32) (_ BitVec 64))) (size!43287 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88533)

(declare-datatypes ((List!30485 0))(
  ( (Nil!30482) (Cons!30481 (h!31690 (_ BitVec 64)) (t!44100 List!30485)) )
))
(declare-fun arrayNoDuplicates!0 (array!88533 (_ BitVec 32) List!30485) Bool)

(assert (=> b!1317347 (= lt!586303 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30482))))

(declare-fun b!1317348 () Bool)

(declare-fun res!874408 () Bool)

(assert (=> b!1317348 (=> (not res!874408) (not e!751743))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88533 (_ BitVec 32)) Bool)

(assert (=> b!1317348 (= res!874408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317349 () Bool)

(declare-fun e!751746 () Bool)

(declare-fun tp_is_empty!35811 () Bool)

(assert (=> b!1317349 (= e!751746 tp_is_empty!35811)))

(declare-fun mapIsEmpty!55364 () Bool)

(assert (=> mapIsEmpty!55364 mapRes!55364))

(declare-fun res!874406 () Bool)

(assert (=> start!111370 (=> (not res!874406) (not e!751743))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111370 (= res!874406 (validMask!0 mask!2019))))

(assert (=> start!111370 e!751743))

(assert (=> start!111370 true))

(declare-fun array_inv!32235 (array!88531) Bool)

(assert (=> start!111370 (and (array_inv!32235 _values!1337) e!751747)))

(declare-fun array_inv!32236 (array!88533) Bool)

(assert (=> start!111370 (array_inv!32236 _keys!1609)))

(declare-fun b!1317350 () Bool)

(declare-fun res!874407 () Bool)

(assert (=> b!1317350 (=> (not res!874407) (not e!751743))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1317350 (= res!874407 (and (= (size!43286 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43287 _keys!1609) (size!43286 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!55364 () Bool)

(declare-fun tp!105471 () Bool)

(assert (=> mapNonEmpty!55364 (= mapRes!55364 (and tp!105471 e!751746))))

(declare-fun mapKey!55364 () (_ BitVec 32))

(declare-fun mapRest!55364 () (Array (_ BitVec 32) ValueCell!17007))

(declare-fun mapValue!55364 () ValueCell!17007)

(assert (=> mapNonEmpty!55364 (= (arr!42735 _values!1337) (store mapRest!55364 mapKey!55364 mapValue!55364))))

(declare-fun b!1317351 () Bool)

(assert (=> b!1317351 (= e!751745 tp_is_empty!35811)))

(assert (= (and start!111370 res!874406) b!1317350))

(assert (= (and b!1317350 res!874407) b!1317348))

(assert (= (and b!1317348 res!874408) b!1317347))

(assert (= (and b!1317346 condMapEmpty!55364) mapIsEmpty!55364))

(assert (= (and b!1317346 (not condMapEmpty!55364)) mapNonEmpty!55364))

(get-info :version)

(assert (= (and mapNonEmpty!55364 ((_ is ValueCellFull!17007) mapValue!55364)) b!1317349))

(assert (= (and b!1317346 ((_ is ValueCellFull!17007) mapDefault!55364)) b!1317351))

(assert (= start!111370 b!1317346))

(declare-fun m!1205247 () Bool)

(assert (=> b!1317347 m!1205247))

(declare-fun m!1205249 () Bool)

(assert (=> b!1317348 m!1205249))

(declare-fun m!1205251 () Bool)

(assert (=> start!111370 m!1205251))

(declare-fun m!1205253 () Bool)

(assert (=> start!111370 m!1205253))

(declare-fun m!1205255 () Bool)

(assert (=> start!111370 m!1205255))

(declare-fun m!1205257 () Bool)

(assert (=> mapNonEmpty!55364 m!1205257))

(check-sat (not mapNonEmpty!55364) (not b!1317348) tp_is_empty!35811 (not start!111370) (not b!1317347))
(check-sat)
