; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110712 () Bool)

(assert start!110712)

(declare-fun b_free!29511 () Bool)

(declare-fun b_next!29511 () Bool)

(assert (=> start!110712 (= b_free!29511 (not b_next!29511))))

(declare-fun tp!103856 () Bool)

(declare-fun b_and!47729 () Bool)

(assert (=> start!110712 (= tp!103856 b_and!47729)))

(declare-fun res!869361 () Bool)

(declare-fun e!747169 () Bool)

(assert (=> start!110712 (=> (not res!869361) (not e!747169))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110712 (= res!869361 (validMask!0 mask!2040))))

(assert (=> start!110712 e!747169))

(assert (=> start!110712 tp!103856))

(declare-datatypes ((array!87439 0))(
  ( (array!87440 (arr!42195 (Array (_ BitVec 32) (_ BitVec 64))) (size!42746 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87439)

(declare-fun array_inv!31885 (array!87439) Bool)

(assert (=> start!110712 (array_inv!31885 _keys!1628)))

(assert (=> start!110712 true))

(declare-fun tp_is_empty!35241 () Bool)

(assert (=> start!110712 tp_is_empty!35241))

(declare-datatypes ((V!52091 0))(
  ( (V!52092 (val!17695 Int)) )
))
(declare-datatypes ((ValueCell!16722 0))(
  ( (ValueCellFull!16722 (v!20320 V!52091)) (EmptyCell!16722) )
))
(declare-datatypes ((array!87441 0))(
  ( (array!87442 (arr!42196 (Array (_ BitVec 32) ValueCell!16722)) (size!42747 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87441)

(declare-fun e!747170 () Bool)

(declare-fun array_inv!31886 (array!87441) Bool)

(assert (=> start!110712 (and (array_inv!31886 _values!1354) e!747170)))

(declare-fun b!1309494 () Bool)

(declare-fun res!869362 () Bool)

(assert (=> b!1309494 (=> (not res!869362) (not e!747169))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1309494 (= res!869362 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42746 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309495 () Bool)

(declare-fun e!747168 () Bool)

(assert (=> b!1309495 (= e!747168 tp_is_empty!35241)))

(declare-fun b!1309496 () Bool)

(declare-fun res!869359 () Bool)

(assert (=> b!1309496 (=> (not res!869359) (not e!747169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87439 (_ BitVec 32)) Bool)

(assert (=> b!1309496 (= res!869359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1309497 () Bool)

(declare-fun res!869360 () Bool)

(assert (=> b!1309497 (=> (not res!869360) (not e!747169))))

(declare-datatypes ((List!30123 0))(
  ( (Nil!30120) (Cons!30119 (h!31328 (_ BitVec 64)) (t!43736 List!30123)) )
))
(declare-fun arrayNoDuplicates!0 (array!87439 (_ BitVec 32) List!30123) Bool)

(assert (=> b!1309497 (= res!869360 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30120))))

(declare-fun b!1309498 () Bool)

(declare-fun mapRes!54490 () Bool)

(assert (=> b!1309498 (= e!747170 (and e!747168 mapRes!54490))))

(declare-fun condMapEmpty!54490 () Bool)

(declare-fun mapDefault!54490 () ValueCell!16722)

(assert (=> b!1309498 (= condMapEmpty!54490 (= (arr!42196 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16722)) mapDefault!54490)))))

(declare-fun mapIsEmpty!54490 () Bool)

(assert (=> mapIsEmpty!54490 mapRes!54490))

(declare-fun b!1309499 () Bool)

(declare-fun res!869363 () Bool)

(assert (=> b!1309499 (=> (not res!869363) (not e!747169))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1309499 (= res!869363 (and (= (size!42747 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42746 _keys!1628) (size!42747 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309500 () Bool)

(assert (=> b!1309500 (= e!747169 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52091)

(declare-fun zeroValue!1296 () V!52091)

(declare-fun lt!585217 () Bool)

(declare-datatypes ((tuple2!22956 0))(
  ( (tuple2!22957 (_1!11488 (_ BitVec 64)) (_2!11488 V!52091)) )
))
(declare-datatypes ((List!30124 0))(
  ( (Nil!30121) (Cons!30120 (h!31329 tuple2!22956) (t!43737 List!30124)) )
))
(declare-datatypes ((ListLongMap!20625 0))(
  ( (ListLongMap!20626 (toList!10328 List!30124)) )
))
(declare-fun contains!8414 (ListLongMap!20625 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5284 (array!87439 array!87441 (_ BitVec 32) (_ BitVec 32) V!52091 V!52091 (_ BitVec 32) Int) ListLongMap!20625)

(assert (=> b!1309500 (= lt!585217 (contains!8414 (getCurrentListMap!5284 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1309501 () Bool)

(declare-fun e!747167 () Bool)

(assert (=> b!1309501 (= e!747167 tp_is_empty!35241)))

(declare-fun mapNonEmpty!54490 () Bool)

(declare-fun tp!103855 () Bool)

(assert (=> mapNonEmpty!54490 (= mapRes!54490 (and tp!103855 e!747167))))

(declare-fun mapValue!54490 () ValueCell!16722)

(declare-fun mapRest!54490 () (Array (_ BitVec 32) ValueCell!16722))

(declare-fun mapKey!54490 () (_ BitVec 32))

(assert (=> mapNonEmpty!54490 (= (arr!42196 _values!1354) (store mapRest!54490 mapKey!54490 mapValue!54490))))

(assert (= (and start!110712 res!869361) b!1309499))

(assert (= (and b!1309499 res!869363) b!1309496))

(assert (= (and b!1309496 res!869359) b!1309497))

(assert (= (and b!1309497 res!869360) b!1309494))

(assert (= (and b!1309494 res!869362) b!1309500))

(assert (= (and b!1309498 condMapEmpty!54490) mapIsEmpty!54490))

(assert (= (and b!1309498 (not condMapEmpty!54490)) mapNonEmpty!54490))

(get-info :version)

(assert (= (and mapNonEmpty!54490 ((_ is ValueCellFull!16722) mapValue!54490)) b!1309501))

(assert (= (and b!1309498 ((_ is ValueCellFull!16722) mapDefault!54490)) b!1309495))

(assert (= start!110712 b!1309498))

(declare-fun m!1199563 () Bool)

(assert (=> b!1309500 m!1199563))

(assert (=> b!1309500 m!1199563))

(declare-fun m!1199565 () Bool)

(assert (=> b!1309500 m!1199565))

(declare-fun m!1199567 () Bool)

(assert (=> b!1309497 m!1199567))

(declare-fun m!1199569 () Bool)

(assert (=> b!1309496 m!1199569))

(declare-fun m!1199571 () Bool)

(assert (=> mapNonEmpty!54490 m!1199571))

(declare-fun m!1199573 () Bool)

(assert (=> start!110712 m!1199573))

(declare-fun m!1199575 () Bool)

(assert (=> start!110712 m!1199575))

(declare-fun m!1199577 () Bool)

(assert (=> start!110712 m!1199577))

(check-sat (not b_next!29511) (not mapNonEmpty!54490) (not b!1309497) b_and!47729 (not b!1309496) (not start!110712) (not b!1309500) tp_is_empty!35241)
(check-sat b_and!47729 (not b_next!29511))
