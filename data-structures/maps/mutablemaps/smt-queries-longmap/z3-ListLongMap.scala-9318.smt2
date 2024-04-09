; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111382 () Bool)

(assert start!111382)

(declare-fun b!1317459 () Bool)

(declare-fun e!751834 () Bool)

(declare-fun tp_is_empty!35823 () Bool)

(assert (=> b!1317459 (= e!751834 tp_is_empty!35823)))

(declare-fun b!1317460 () Bool)

(declare-fun e!751837 () Bool)

(assert (=> b!1317460 (= e!751837 tp_is_empty!35823)))

(declare-fun res!874468 () Bool)

(declare-fun e!751835 () Bool)

(assert (=> start!111382 (=> (not res!874468) (not e!751835))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111382 (= res!874468 (validMask!0 mask!2019))))

(assert (=> start!111382 e!751835))

(declare-datatypes ((array!88553 0))(
  ( (array!88554 (arr!42746 (Array (_ BitVec 32) (_ BitVec 64))) (size!43297 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88553)

(declare-fun array_inv!32239 (array!88553) Bool)

(assert (=> start!111382 (array_inv!32239 _keys!1609)))

(assert (=> start!111382 true))

(declare-datatypes ((V!52867 0))(
  ( (V!52868 (val!17986 Int)) )
))
(declare-datatypes ((ValueCell!17013 0))(
  ( (ValueCellFull!17013 (v!20614 V!52867)) (EmptyCell!17013) )
))
(declare-datatypes ((array!88555 0))(
  ( (array!88556 (arr!42747 (Array (_ BitVec 32) ValueCell!17013)) (size!43298 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88555)

(declare-fun e!751833 () Bool)

(declare-fun array_inv!32240 (array!88555) Bool)

(assert (=> start!111382 (and (array_inv!32240 _values!1337) e!751833)))

(declare-fun b!1317461 () Bool)

(declare-fun res!874467 () Bool)

(assert (=> b!1317461 (=> (not res!874467) (not e!751835))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88553 (_ BitVec 32)) Bool)

(assert (=> b!1317461 (= res!874467 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317462 () Bool)

(declare-fun res!874466 () Bool)

(assert (=> b!1317462 (=> (not res!874466) (not e!751835))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1317462 (= res!874466 (and (= (size!43298 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43297 _keys!1609) (size!43298 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1317463 () Bool)

(declare-fun res!874465 () Bool)

(assert (=> b!1317463 (=> (not res!874465) (not e!751835))))

(declare-datatypes ((List!30488 0))(
  ( (Nil!30485) (Cons!30484 (h!31693 (_ BitVec 64)) (t!44103 List!30488)) )
))
(declare-fun arrayNoDuplicates!0 (array!88553 (_ BitVec 32) List!30488) Bool)

(assert (=> b!1317463 (= res!874465 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30485))))

(declare-fun b!1317464 () Bool)

(declare-fun mapRes!55382 () Bool)

(assert (=> b!1317464 (= e!751833 (and e!751837 mapRes!55382))))

(declare-fun condMapEmpty!55382 () Bool)

(declare-fun mapDefault!55382 () ValueCell!17013)

(assert (=> b!1317464 (= condMapEmpty!55382 (= (arr!42747 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17013)) mapDefault!55382)))))

(declare-fun mapNonEmpty!55382 () Bool)

(declare-fun tp!105489 () Bool)

(assert (=> mapNonEmpty!55382 (= mapRes!55382 (and tp!105489 e!751834))))

(declare-fun mapRest!55382 () (Array (_ BitVec 32) ValueCell!17013))

(declare-fun mapKey!55382 () (_ BitVec 32))

(declare-fun mapValue!55382 () ValueCell!17013)

(assert (=> mapNonEmpty!55382 (= (arr!42747 _values!1337) (store mapRest!55382 mapKey!55382 mapValue!55382))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun b!1317465 () Bool)

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1317465 (= e!751835 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43297 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsgt from!2000 (size!43297 _keys!1609))))))

(declare-fun mapIsEmpty!55382 () Bool)

(assert (=> mapIsEmpty!55382 mapRes!55382))

(assert (= (and start!111382 res!874468) b!1317462))

(assert (= (and b!1317462 res!874466) b!1317461))

(assert (= (and b!1317461 res!874467) b!1317463))

(assert (= (and b!1317463 res!874465) b!1317465))

(assert (= (and b!1317464 condMapEmpty!55382) mapIsEmpty!55382))

(assert (= (and b!1317464 (not condMapEmpty!55382)) mapNonEmpty!55382))

(get-info :version)

(assert (= (and mapNonEmpty!55382 ((_ is ValueCellFull!17013) mapValue!55382)) b!1317459))

(assert (= (and b!1317464 ((_ is ValueCellFull!17013) mapDefault!55382)) b!1317460))

(assert (= start!111382 b!1317464))

(declare-fun m!1205319 () Bool)

(assert (=> start!111382 m!1205319))

(declare-fun m!1205321 () Bool)

(assert (=> start!111382 m!1205321))

(declare-fun m!1205323 () Bool)

(assert (=> start!111382 m!1205323))

(declare-fun m!1205325 () Bool)

(assert (=> b!1317461 m!1205325))

(declare-fun m!1205327 () Bool)

(assert (=> b!1317463 m!1205327))

(declare-fun m!1205329 () Bool)

(assert (=> mapNonEmpty!55382 m!1205329))

(check-sat (not b!1317461) tp_is_empty!35823 (not b!1317463) (not mapNonEmpty!55382) (not start!111382))
(check-sat)
