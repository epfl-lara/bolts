; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111168 () Bool)

(assert start!111168)

(declare-fun b_free!29967 () Bool)

(declare-fun b_next!29967 () Bool)

(assert (=> start!111168 (= b_free!29967 (not b_next!29967))))

(declare-fun tp!105223 () Bool)

(declare-fun b_and!48185 () Bool)

(assert (=> start!111168 (= tp!105223 b_and!48185)))

(declare-fun mapIsEmpty!55174 () Bool)

(declare-fun mapRes!55174 () Bool)

(assert (=> mapIsEmpty!55174 mapRes!55174))

(declare-fun res!873528 () Bool)

(declare-fun e!750588 () Bool)

(assert (=> start!111168 (=> (not res!873528) (not e!750588))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111168 (= res!873528 (validMask!0 mask!2040))))

(assert (=> start!111168 e!750588))

(assert (=> start!111168 tp!105223))

(declare-datatypes ((array!88313 0))(
  ( (array!88314 (arr!42632 (Array (_ BitVec 32) (_ BitVec 64))) (size!43183 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88313)

(declare-fun array_inv!32165 (array!88313) Bool)

(assert (=> start!111168 (array_inv!32165 _keys!1628)))

(assert (=> start!111168 true))

(declare-fun tp_is_empty!35697 () Bool)

(assert (=> start!111168 tp_is_empty!35697))

(declare-datatypes ((V!52699 0))(
  ( (V!52700 (val!17923 Int)) )
))
(declare-datatypes ((ValueCell!16950 0))(
  ( (ValueCellFull!16950 (v!20548 V!52699)) (EmptyCell!16950) )
))
(declare-datatypes ((array!88315 0))(
  ( (array!88316 (arr!42633 (Array (_ BitVec 32) ValueCell!16950)) (size!43184 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88315)

(declare-fun e!750589 () Bool)

(declare-fun array_inv!32166 (array!88315) Bool)

(assert (=> start!111168 (and (array_inv!32166 _values!1354) e!750589)))

(declare-fun b!1315713 () Bool)

(declare-fun e!750590 () Bool)

(assert (=> b!1315713 (= e!750589 (and e!750590 mapRes!55174))))

(declare-fun condMapEmpty!55174 () Bool)

(declare-fun mapDefault!55174 () ValueCell!16950)

(assert (=> b!1315713 (= condMapEmpty!55174 (= (arr!42633 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16950)) mapDefault!55174)))))

(declare-fun b!1315714 () Bool)

(assert (=> b!1315714 (= e!750588 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52699)

(declare-fun zeroValue!1296 () V!52699)

(declare-fun lt!585892 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23268 0))(
  ( (tuple2!23269 (_1!11644 (_ BitVec 64)) (_2!11644 V!52699)) )
))
(declare-datatypes ((List!30436 0))(
  ( (Nil!30433) (Cons!30432 (h!31641 tuple2!23268) (t!44049 List!30436)) )
))
(declare-datatypes ((ListLongMap!20937 0))(
  ( (ListLongMap!20938 (toList!10484 List!30436)) )
))
(declare-fun contains!8570 (ListLongMap!20937 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5440 (array!88313 array!88315 (_ BitVec 32) (_ BitVec 32) V!52699 V!52699 (_ BitVec 32) Int) ListLongMap!20937)

(assert (=> b!1315714 (= lt!585892 (contains!8570 (getCurrentListMap!5440 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1315715 () Bool)

(declare-fun res!873527 () Bool)

(assert (=> b!1315715 (=> (not res!873527) (not e!750588))))

(assert (=> b!1315715 (= res!873527 (and (= (size!43184 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43183 _keys!1628) (size!43184 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1315716 () Bool)

(declare-fun res!873530 () Bool)

(assert (=> b!1315716 (=> (not res!873530) (not e!750588))))

(declare-datatypes ((List!30437 0))(
  ( (Nil!30434) (Cons!30433 (h!31642 (_ BitVec 64)) (t!44050 List!30437)) )
))
(declare-fun arrayNoDuplicates!0 (array!88313 (_ BitVec 32) List!30437) Bool)

(assert (=> b!1315716 (= res!873530 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30434))))

(declare-fun b!1315717 () Bool)

(declare-fun res!873526 () Bool)

(assert (=> b!1315717 (=> (not res!873526) (not e!750588))))

(assert (=> b!1315717 (= res!873526 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43183 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1315718 () Bool)

(declare-fun res!873529 () Bool)

(assert (=> b!1315718 (=> (not res!873529) (not e!750588))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88313 (_ BitVec 32)) Bool)

(assert (=> b!1315718 (= res!873529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!55174 () Bool)

(declare-fun tp!105224 () Bool)

(declare-fun e!750587 () Bool)

(assert (=> mapNonEmpty!55174 (= mapRes!55174 (and tp!105224 e!750587))))

(declare-fun mapRest!55174 () (Array (_ BitVec 32) ValueCell!16950))

(declare-fun mapValue!55174 () ValueCell!16950)

(declare-fun mapKey!55174 () (_ BitVec 32))

(assert (=> mapNonEmpty!55174 (= (arr!42633 _values!1354) (store mapRest!55174 mapKey!55174 mapValue!55174))))

(declare-fun b!1315719 () Bool)

(assert (=> b!1315719 (= e!750590 tp_is_empty!35697)))

(declare-fun b!1315720 () Bool)

(assert (=> b!1315720 (= e!750587 tp_is_empty!35697)))

(assert (= (and start!111168 res!873528) b!1315715))

(assert (= (and b!1315715 res!873527) b!1315718))

(assert (= (and b!1315718 res!873529) b!1315716))

(assert (= (and b!1315716 res!873530) b!1315717))

(assert (= (and b!1315717 res!873526) b!1315714))

(assert (= (and b!1315713 condMapEmpty!55174) mapIsEmpty!55174))

(assert (= (and b!1315713 (not condMapEmpty!55174)) mapNonEmpty!55174))

(get-info :version)

(assert (= (and mapNonEmpty!55174 ((_ is ValueCellFull!16950) mapValue!55174)) b!1315720))

(assert (= (and b!1315713 ((_ is ValueCellFull!16950) mapDefault!55174)) b!1315719))

(assert (= start!111168 b!1315713))

(declare-fun m!1203823 () Bool)

(assert (=> b!1315716 m!1203823))

(declare-fun m!1203825 () Bool)

(assert (=> b!1315718 m!1203825))

(declare-fun m!1203827 () Bool)

(assert (=> mapNonEmpty!55174 m!1203827))

(declare-fun m!1203829 () Bool)

(assert (=> b!1315714 m!1203829))

(assert (=> b!1315714 m!1203829))

(declare-fun m!1203831 () Bool)

(assert (=> b!1315714 m!1203831))

(declare-fun m!1203833 () Bool)

(assert (=> start!111168 m!1203833))

(declare-fun m!1203835 () Bool)

(assert (=> start!111168 m!1203835))

(declare-fun m!1203837 () Bool)

(assert (=> start!111168 m!1203837))

(check-sat (not b!1315716) (not mapNonEmpty!55174) tp_is_empty!35697 (not b!1315718) b_and!48185 (not b_next!29967) (not start!111168) (not b!1315714))
(check-sat b_and!48185 (not b_next!29967))
