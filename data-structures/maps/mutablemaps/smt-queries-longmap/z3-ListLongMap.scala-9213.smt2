; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110664 () Bool)

(assert start!110664)

(declare-fun b_free!29463 () Bool)

(declare-fun b_next!29463 () Bool)

(assert (=> start!110664 (= b_free!29463 (not b_next!29463))))

(declare-fun tp!103712 () Bool)

(declare-fun b_and!47681 () Bool)

(assert (=> start!110664 (= tp!103712 b_and!47681)))

(declare-fun b!1308918 () Bool)

(declare-fun res!869001 () Bool)

(declare-fun e!746809 () Bool)

(assert (=> b!1308918 (=> (not res!869001) (not e!746809))))

(declare-datatypes ((array!87351 0))(
  ( (array!87352 (arr!42151 (Array (_ BitVec 32) (_ BitVec 64))) (size!42702 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87351)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87351 (_ BitVec 32)) Bool)

(assert (=> b!1308918 (= res!869001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54418 () Bool)

(declare-fun mapRes!54418 () Bool)

(assert (=> mapIsEmpty!54418 mapRes!54418))

(declare-fun b!1308919 () Bool)

(declare-fun res!869000 () Bool)

(assert (=> b!1308919 (=> (not res!869000) (not e!746809))))

(declare-datatypes ((List!30092 0))(
  ( (Nil!30089) (Cons!30088 (h!31297 (_ BitVec 64)) (t!43705 List!30092)) )
))
(declare-fun arrayNoDuplicates!0 (array!87351 (_ BitVec 32) List!30092) Bool)

(assert (=> b!1308919 (= res!869000 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30089))))

(declare-fun b!1308920 () Bool)

(declare-fun res!869002 () Bool)

(assert (=> b!1308920 (=> (not res!869002) (not e!746809))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1308920 (= res!869002 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42702 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!54418 () Bool)

(declare-fun tp!103711 () Bool)

(declare-fun e!746810 () Bool)

(assert (=> mapNonEmpty!54418 (= mapRes!54418 (and tp!103711 e!746810))))

(declare-fun mapKey!54418 () (_ BitVec 32))

(declare-datatypes ((V!52027 0))(
  ( (V!52028 (val!17671 Int)) )
))
(declare-datatypes ((ValueCell!16698 0))(
  ( (ValueCellFull!16698 (v!20296 V!52027)) (EmptyCell!16698) )
))
(declare-fun mapRest!54418 () (Array (_ BitVec 32) ValueCell!16698))

(declare-datatypes ((array!87353 0))(
  ( (array!87354 (arr!42152 (Array (_ BitVec 32) ValueCell!16698)) (size!42703 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87353)

(declare-fun mapValue!54418 () ValueCell!16698)

(assert (=> mapNonEmpty!54418 (= (arr!42152 _values!1354) (store mapRest!54418 mapKey!54418 mapValue!54418))))

(declare-fun b!1308921 () Bool)

(declare-fun e!746806 () Bool)

(declare-fun tp_is_empty!35193 () Bool)

(assert (=> b!1308921 (= e!746806 tp_is_empty!35193)))

(declare-fun b!1308922 () Bool)

(declare-fun res!869003 () Bool)

(assert (=> b!1308922 (=> (not res!869003) (not e!746809))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1308922 (= res!869003 (and (= (size!42703 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42702 _keys!1628) (size!42703 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1308923 () Bool)

(assert (=> b!1308923 (= e!746810 tp_is_empty!35193)))

(declare-fun res!868999 () Bool)

(assert (=> start!110664 (=> (not res!868999) (not e!746809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110664 (= res!868999 (validMask!0 mask!2040))))

(assert (=> start!110664 e!746809))

(assert (=> start!110664 tp!103712))

(declare-fun array_inv!31861 (array!87351) Bool)

(assert (=> start!110664 (array_inv!31861 _keys!1628)))

(assert (=> start!110664 true))

(assert (=> start!110664 tp_is_empty!35193))

(declare-fun e!746808 () Bool)

(declare-fun array_inv!31862 (array!87353) Bool)

(assert (=> start!110664 (and (array_inv!31862 _values!1354) e!746808)))

(declare-fun b!1308924 () Bool)

(assert (=> b!1308924 (= e!746809 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585145 () Bool)

(declare-fun minValue!1296 () V!52027)

(declare-fun zeroValue!1296 () V!52027)

(declare-datatypes ((tuple2!22920 0))(
  ( (tuple2!22921 (_1!11470 (_ BitVec 64)) (_2!11470 V!52027)) )
))
(declare-datatypes ((List!30093 0))(
  ( (Nil!30090) (Cons!30089 (h!31298 tuple2!22920) (t!43706 List!30093)) )
))
(declare-datatypes ((ListLongMap!20589 0))(
  ( (ListLongMap!20590 (toList!10310 List!30093)) )
))
(declare-fun contains!8396 (ListLongMap!20589 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5266 (array!87351 array!87353 (_ BitVec 32) (_ BitVec 32) V!52027 V!52027 (_ BitVec 32) Int) ListLongMap!20589)

(assert (=> b!1308924 (= lt!585145 (contains!8396 (getCurrentListMap!5266 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1308925 () Bool)

(assert (=> b!1308925 (= e!746808 (and e!746806 mapRes!54418))))

(declare-fun condMapEmpty!54418 () Bool)

(declare-fun mapDefault!54418 () ValueCell!16698)

(assert (=> b!1308925 (= condMapEmpty!54418 (= (arr!42152 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16698)) mapDefault!54418)))))

(assert (= (and start!110664 res!868999) b!1308922))

(assert (= (and b!1308922 res!869003) b!1308918))

(assert (= (and b!1308918 res!869001) b!1308919))

(assert (= (and b!1308919 res!869000) b!1308920))

(assert (= (and b!1308920 res!869002) b!1308924))

(assert (= (and b!1308925 condMapEmpty!54418) mapIsEmpty!54418))

(assert (= (and b!1308925 (not condMapEmpty!54418)) mapNonEmpty!54418))

(get-info :version)

(assert (= (and mapNonEmpty!54418 ((_ is ValueCellFull!16698) mapValue!54418)) b!1308923))

(assert (= (and b!1308925 ((_ is ValueCellFull!16698) mapDefault!54418)) b!1308921))

(assert (= start!110664 b!1308925))

(declare-fun m!1199179 () Bool)

(assert (=> b!1308924 m!1199179))

(assert (=> b!1308924 m!1199179))

(declare-fun m!1199181 () Bool)

(assert (=> b!1308924 m!1199181))

(declare-fun m!1199183 () Bool)

(assert (=> b!1308919 m!1199183))

(declare-fun m!1199185 () Bool)

(assert (=> mapNonEmpty!54418 m!1199185))

(declare-fun m!1199187 () Bool)

(assert (=> b!1308918 m!1199187))

(declare-fun m!1199189 () Bool)

(assert (=> start!110664 m!1199189))

(declare-fun m!1199191 () Bool)

(assert (=> start!110664 m!1199191))

(declare-fun m!1199193 () Bool)

(assert (=> start!110664 m!1199193))

(check-sat (not b_next!29463) (not start!110664) (not b!1308924) tp_is_empty!35193 (not mapNonEmpty!54418) (not b!1308919) (not b!1308918) b_and!47681)
(check-sat b_and!47681 (not b_next!29463))
