; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110574 () Bool)

(assert start!110574)

(declare-fun b_free!29373 () Bool)

(declare-fun b_next!29373 () Bool)

(assert (=> start!110574 (= b_free!29373 (not b_next!29373))))

(declare-fun tp!103441 () Bool)

(declare-fun b_and!47591 () Bool)

(assert (=> start!110574 (= tp!103441 b_and!47591)))

(declare-fun b!1307514 () Bool)

(declare-fun res!868003 () Bool)

(declare-fun e!746131 () Bool)

(assert (=> b!1307514 (=> (not res!868003) (not e!746131))))

(declare-datatypes ((array!87179 0))(
  ( (array!87180 (arr!42065 (Array (_ BitVec 32) (_ BitVec 64))) (size!42616 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87179)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87179 (_ BitVec 32)) Bool)

(assert (=> b!1307514 (= res!868003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1307515 () Bool)

(declare-fun e!746133 () Bool)

(declare-fun tp_is_empty!35103 () Bool)

(assert (=> b!1307515 (= e!746133 tp_is_empty!35103)))

(declare-fun mapIsEmpty!54283 () Bool)

(declare-fun mapRes!54283 () Bool)

(assert (=> mapIsEmpty!54283 mapRes!54283))

(declare-fun b!1307516 () Bool)

(declare-fun res!868004 () Bool)

(assert (=> b!1307516 (=> (not res!868004) (not e!746131))))

(declare-datatypes ((List!30027 0))(
  ( (Nil!30024) (Cons!30023 (h!31232 (_ BitVec 64)) (t!43640 List!30027)) )
))
(declare-fun arrayNoDuplicates!0 (array!87179 (_ BitVec 32) List!30027) Bool)

(assert (=> b!1307516 (= res!868004 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30024))))

(declare-fun b!1307517 () Bool)

(declare-fun e!746135 () Bool)

(assert (=> b!1307517 (= e!746135 (and e!746133 mapRes!54283))))

(declare-fun condMapEmpty!54283 () Bool)

(declare-datatypes ((V!51907 0))(
  ( (V!51908 (val!17626 Int)) )
))
(declare-datatypes ((ValueCell!16653 0))(
  ( (ValueCellFull!16653 (v!20251 V!51907)) (EmptyCell!16653) )
))
(declare-datatypes ((array!87181 0))(
  ( (array!87182 (arr!42066 (Array (_ BitVec 32) ValueCell!16653)) (size!42617 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87181)

(declare-fun mapDefault!54283 () ValueCell!16653)

(assert (=> b!1307517 (= condMapEmpty!54283 (= (arr!42066 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16653)) mapDefault!54283)))))

(declare-fun b!1307518 () Bool)

(declare-fun e!746132 () Bool)

(assert (=> b!1307518 (= e!746132 tp_is_empty!35103)))

(declare-fun res!868000 () Bool)

(assert (=> start!110574 (=> (not res!868000) (not e!746131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110574 (= res!868000 (validMask!0 mask!2040))))

(assert (=> start!110574 e!746131))

(assert (=> start!110574 tp!103441))

(declare-fun array_inv!31795 (array!87179) Bool)

(assert (=> start!110574 (array_inv!31795 _keys!1628)))

(assert (=> start!110574 true))

(assert (=> start!110574 tp_is_empty!35103))

(declare-fun array_inv!31796 (array!87181) Bool)

(assert (=> start!110574 (and (array_inv!31796 _values!1354) e!746135)))

(declare-fun mapNonEmpty!54283 () Bool)

(declare-fun tp!103442 () Bool)

(assert (=> mapNonEmpty!54283 (= mapRes!54283 (and tp!103442 e!746132))))

(declare-fun mapValue!54283 () ValueCell!16653)

(declare-fun mapKey!54283 () (_ BitVec 32))

(declare-fun mapRest!54283 () (Array (_ BitVec 32) ValueCell!16653))

(assert (=> mapNonEmpty!54283 (= (arr!42066 _values!1354) (store mapRest!54283 mapKey!54283 mapValue!54283))))

(declare-fun b!1307519 () Bool)

(declare-fun res!868001 () Bool)

(assert (=> b!1307519 (=> (not res!868001) (not e!746131))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1307519 (= res!868001 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42616 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1307520 () Bool)

(declare-fun res!868002 () Bool)

(assert (=> b!1307520 (=> (not res!868002) (not e!746131))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1307520 (= res!868002 (and (= (size!42617 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42616 _keys!1628) (size!42617 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1307521 () Bool)

(assert (=> b!1307521 (= e!746131 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!51907)

(declare-fun zeroValue!1296 () V!51907)

(declare-fun lt!585010 () Bool)

(declare-datatypes ((tuple2!22854 0))(
  ( (tuple2!22855 (_1!11437 (_ BitVec 64)) (_2!11437 V!51907)) )
))
(declare-datatypes ((List!30028 0))(
  ( (Nil!30025) (Cons!30024 (h!31233 tuple2!22854) (t!43641 List!30028)) )
))
(declare-datatypes ((ListLongMap!20523 0))(
  ( (ListLongMap!20524 (toList!10277 List!30028)) )
))
(declare-fun contains!8363 (ListLongMap!20523 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5233 (array!87179 array!87181 (_ BitVec 32) (_ BitVec 32) V!51907 V!51907 (_ BitVec 32) Int) ListLongMap!20523)

(assert (=> b!1307521 (= lt!585010 (contains!8363 (getCurrentListMap!5233 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(assert (= (and start!110574 res!868000) b!1307520))

(assert (= (and b!1307520 res!868002) b!1307514))

(assert (= (and b!1307514 res!868003) b!1307516))

(assert (= (and b!1307516 res!868004) b!1307519))

(assert (= (and b!1307519 res!868001) b!1307521))

(assert (= (and b!1307517 condMapEmpty!54283) mapIsEmpty!54283))

(assert (= (and b!1307517 (not condMapEmpty!54283)) mapNonEmpty!54283))

(get-info :version)

(assert (= (and mapNonEmpty!54283 ((_ is ValueCellFull!16653) mapValue!54283)) b!1307518))

(assert (= (and b!1307517 ((_ is ValueCellFull!16653) mapDefault!54283)) b!1307515))

(assert (= start!110574 b!1307517))

(declare-fun m!1198189 () Bool)

(assert (=> start!110574 m!1198189))

(declare-fun m!1198191 () Bool)

(assert (=> start!110574 m!1198191))

(declare-fun m!1198193 () Bool)

(assert (=> start!110574 m!1198193))

(declare-fun m!1198195 () Bool)

(assert (=> b!1307514 m!1198195))

(declare-fun m!1198197 () Bool)

(assert (=> b!1307516 m!1198197))

(declare-fun m!1198199 () Bool)

(assert (=> b!1307521 m!1198199))

(assert (=> b!1307521 m!1198199))

(declare-fun m!1198201 () Bool)

(assert (=> b!1307521 m!1198201))

(declare-fun m!1198203 () Bool)

(assert (=> mapNonEmpty!54283 m!1198203))

(check-sat (not b!1307521) b_and!47591 (not b_next!29373) (not b!1307514) (not start!110574) (not mapNonEmpty!54283) (not b!1307516) tp_is_empty!35103)
(check-sat b_and!47591 (not b_next!29373))
