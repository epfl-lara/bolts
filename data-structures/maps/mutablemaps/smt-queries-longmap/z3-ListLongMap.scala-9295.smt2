; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111156 () Bool)

(assert start!111156)

(declare-fun b_free!29955 () Bool)

(declare-fun b_next!29955 () Bool)

(assert (=> start!111156 (= b_free!29955 (not b_next!29955))))

(declare-fun tp!105187 () Bool)

(declare-fun b_and!48173 () Bool)

(assert (=> start!111156 (= tp!105187 b_and!48173)))

(declare-fun mapNonEmpty!55156 () Bool)

(declare-fun mapRes!55156 () Bool)

(declare-fun tp!105188 () Bool)

(declare-fun e!750499 () Bool)

(assert (=> mapNonEmpty!55156 (= mapRes!55156 (and tp!105188 e!750499))))

(declare-fun mapKey!55156 () (_ BitVec 32))

(declare-datatypes ((V!52683 0))(
  ( (V!52684 (val!17917 Int)) )
))
(declare-datatypes ((ValueCell!16944 0))(
  ( (ValueCellFull!16944 (v!20542 V!52683)) (EmptyCell!16944) )
))
(declare-datatypes ((array!88293 0))(
  ( (array!88294 (arr!42622 (Array (_ BitVec 32) ValueCell!16944)) (size!43173 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88293)

(declare-fun mapRest!55156 () (Array (_ BitVec 32) ValueCell!16944))

(declare-fun mapValue!55156 () ValueCell!16944)

(assert (=> mapNonEmpty!55156 (= (arr!42622 _values!1354) (store mapRest!55156 mapKey!55156 mapValue!55156))))

(declare-fun b!1315569 () Bool)

(declare-fun res!873440 () Bool)

(declare-fun e!750500 () Bool)

(assert (=> b!1315569 (=> (not res!873440) (not e!750500))))

(declare-datatypes ((array!88295 0))(
  ( (array!88296 (arr!42623 (Array (_ BitVec 32) (_ BitVec 64))) (size!43174 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88295)

(declare-datatypes ((List!30431 0))(
  ( (Nil!30428) (Cons!30427 (h!31636 (_ BitVec 64)) (t!44044 List!30431)) )
))
(declare-fun arrayNoDuplicates!0 (array!88295 (_ BitVec 32) List!30431) Bool)

(assert (=> b!1315569 (= res!873440 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30428))))

(declare-fun b!1315570 () Bool)

(assert (=> b!1315570 (= e!750500 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun lt!585874 () Bool)

(declare-fun minValue!1296 () V!52683)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun zeroValue!1296 () V!52683)

(declare-datatypes ((tuple2!23262 0))(
  ( (tuple2!23263 (_1!11641 (_ BitVec 64)) (_2!11641 V!52683)) )
))
(declare-datatypes ((List!30432 0))(
  ( (Nil!30429) (Cons!30428 (h!31637 tuple2!23262) (t!44045 List!30432)) )
))
(declare-datatypes ((ListLongMap!20931 0))(
  ( (ListLongMap!20932 (toList!10481 List!30432)) )
))
(declare-fun contains!8567 (ListLongMap!20931 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5437 (array!88295 array!88293 (_ BitVec 32) (_ BitVec 32) V!52683 V!52683 (_ BitVec 32) Int) ListLongMap!20931)

(assert (=> b!1315570 (= lt!585874 (contains!8567 (getCurrentListMap!5437 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1315571 () Bool)

(declare-fun tp_is_empty!35685 () Bool)

(assert (=> b!1315571 (= e!750499 tp_is_empty!35685)))

(declare-fun b!1315572 () Bool)

(declare-fun e!750496 () Bool)

(declare-fun e!750498 () Bool)

(assert (=> b!1315572 (= e!750496 (and e!750498 mapRes!55156))))

(declare-fun condMapEmpty!55156 () Bool)

(declare-fun mapDefault!55156 () ValueCell!16944)

(assert (=> b!1315572 (= condMapEmpty!55156 (= (arr!42622 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16944)) mapDefault!55156)))))

(declare-fun b!1315573 () Bool)

(declare-fun res!873436 () Bool)

(assert (=> b!1315573 (=> (not res!873436) (not e!750500))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88295 (_ BitVec 32)) Bool)

(assert (=> b!1315573 (= res!873436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1315574 () Bool)

(assert (=> b!1315574 (= e!750498 tp_is_empty!35685)))

(declare-fun b!1315575 () Bool)

(declare-fun res!873439 () Bool)

(assert (=> b!1315575 (=> (not res!873439) (not e!750500))))

(assert (=> b!1315575 (= res!873439 (and (= (size!43173 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43174 _keys!1628) (size!43173 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1315576 () Bool)

(declare-fun res!873437 () Bool)

(assert (=> b!1315576 (=> (not res!873437) (not e!750500))))

(assert (=> b!1315576 (= res!873437 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43174 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!873438 () Bool)

(assert (=> start!111156 (=> (not res!873438) (not e!750500))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111156 (= res!873438 (validMask!0 mask!2040))))

(assert (=> start!111156 e!750500))

(assert (=> start!111156 tp!105187))

(declare-fun array_inv!32161 (array!88295) Bool)

(assert (=> start!111156 (array_inv!32161 _keys!1628)))

(assert (=> start!111156 true))

(assert (=> start!111156 tp_is_empty!35685))

(declare-fun array_inv!32162 (array!88293) Bool)

(assert (=> start!111156 (and (array_inv!32162 _values!1354) e!750496)))

(declare-fun mapIsEmpty!55156 () Bool)

(assert (=> mapIsEmpty!55156 mapRes!55156))

(assert (= (and start!111156 res!873438) b!1315575))

(assert (= (and b!1315575 res!873439) b!1315573))

(assert (= (and b!1315573 res!873436) b!1315569))

(assert (= (and b!1315569 res!873440) b!1315576))

(assert (= (and b!1315576 res!873437) b!1315570))

(assert (= (and b!1315572 condMapEmpty!55156) mapIsEmpty!55156))

(assert (= (and b!1315572 (not condMapEmpty!55156)) mapNonEmpty!55156))

(get-info :version)

(assert (= (and mapNonEmpty!55156 ((_ is ValueCellFull!16944) mapValue!55156)) b!1315571))

(assert (= (and b!1315572 ((_ is ValueCellFull!16944) mapDefault!55156)) b!1315574))

(assert (= start!111156 b!1315572))

(declare-fun m!1203727 () Bool)

(assert (=> b!1315569 m!1203727))

(declare-fun m!1203729 () Bool)

(assert (=> mapNonEmpty!55156 m!1203729))

(declare-fun m!1203731 () Bool)

(assert (=> b!1315573 m!1203731))

(declare-fun m!1203733 () Bool)

(assert (=> start!111156 m!1203733))

(declare-fun m!1203735 () Bool)

(assert (=> start!111156 m!1203735))

(declare-fun m!1203737 () Bool)

(assert (=> start!111156 m!1203737))

(declare-fun m!1203739 () Bool)

(assert (=> b!1315570 m!1203739))

(assert (=> b!1315570 m!1203739))

(declare-fun m!1203741 () Bool)

(assert (=> b!1315570 m!1203741))

(check-sat (not mapNonEmpty!55156) tp_is_empty!35685 (not b!1315570) (not b!1315573) (not b_next!29955) (not b!1315569) (not start!111156) b_and!48173)
(check-sat b_and!48173 (not b_next!29955))
