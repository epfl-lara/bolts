; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111066 () Bool)

(assert start!111066)

(declare-fun b_free!29865 () Bool)

(declare-fun b_next!29865 () Bool)

(assert (=> start!111066 (= b_free!29865 (not b_next!29865))))

(declare-fun tp!104917 () Bool)

(declare-fun b_and!48083 () Bool)

(assert (=> start!111066 (= tp!104917 b_and!48083)))

(declare-fun b!1314454 () Bool)

(declare-fun res!872729 () Bool)

(declare-fun e!749823 () Bool)

(assert (=> b!1314454 (=> (not res!872729) (not e!749823))))

(declare-datatypes ((array!88123 0))(
  ( (array!88124 (arr!42537 (Array (_ BitVec 32) (_ BitVec 64))) (size!43088 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88123)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88123 (_ BitVec 32)) Bool)

(assert (=> b!1314454 (= res!872729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314455 () Bool)

(declare-fun res!872727 () Bool)

(assert (=> b!1314455 (=> (not res!872727) (not e!749823))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1314455 (= res!872727 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43088 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!55021 () Bool)

(declare-fun mapRes!55021 () Bool)

(declare-fun tp!104918 () Bool)

(declare-fun e!749821 () Bool)

(assert (=> mapNonEmpty!55021 (= mapRes!55021 (and tp!104918 e!749821))))

(declare-fun mapKey!55021 () (_ BitVec 32))

(declare-datatypes ((V!52563 0))(
  ( (V!52564 (val!17872 Int)) )
))
(declare-datatypes ((ValueCell!16899 0))(
  ( (ValueCellFull!16899 (v!20497 V!52563)) (EmptyCell!16899) )
))
(declare-fun mapValue!55021 () ValueCell!16899)

(declare-datatypes ((array!88125 0))(
  ( (array!88126 (arr!42538 (Array (_ BitVec 32) ValueCell!16899)) (size!43089 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88125)

(declare-fun mapRest!55021 () (Array (_ BitVec 32) ValueCell!16899))

(assert (=> mapNonEmpty!55021 (= (arr!42538 _values!1354) (store mapRest!55021 mapKey!55021 mapValue!55021))))

(declare-fun b!1314456 () Bool)

(declare-fun tp_is_empty!35595 () Bool)

(assert (=> b!1314456 (= e!749821 tp_is_empty!35595)))

(declare-fun b!1314457 () Bool)

(declare-fun e!749824 () Bool)

(declare-fun e!749822 () Bool)

(assert (=> b!1314457 (= e!749824 (and e!749822 mapRes!55021))))

(declare-fun condMapEmpty!55021 () Bool)

(declare-fun mapDefault!55021 () ValueCell!16899)

(assert (=> b!1314457 (= condMapEmpty!55021 (= (arr!42538 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16899)) mapDefault!55021)))))

(declare-fun b!1314458 () Bool)

(declare-fun res!872726 () Bool)

(assert (=> b!1314458 (=> (not res!872726) (not e!749823))))

(declare-datatypes ((List!30378 0))(
  ( (Nil!30375) (Cons!30374 (h!31583 (_ BitVec 64)) (t!43991 List!30378)) )
))
(declare-fun arrayNoDuplicates!0 (array!88123 (_ BitVec 32) List!30378) Bool)

(assert (=> b!1314458 (= res!872726 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30375))))

(declare-fun mapIsEmpty!55021 () Bool)

(assert (=> mapIsEmpty!55021 mapRes!55021))

(declare-fun b!1314453 () Bool)

(declare-fun res!872728 () Bool)

(assert (=> b!1314453 (=> (not res!872728) (not e!749823))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1314453 (= res!872728 (and (= (size!43089 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43088 _keys!1628) (size!43089 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!872725 () Bool)

(assert (=> start!111066 (=> (not res!872725) (not e!749823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111066 (= res!872725 (validMask!0 mask!2040))))

(assert (=> start!111066 e!749823))

(assert (=> start!111066 tp!104917))

(declare-fun array_inv!32105 (array!88123) Bool)

(assert (=> start!111066 (array_inv!32105 _keys!1628)))

(assert (=> start!111066 true))

(assert (=> start!111066 tp_is_empty!35595))

(declare-fun array_inv!32106 (array!88125) Bool)

(assert (=> start!111066 (and (array_inv!32106 _values!1354) e!749824)))

(declare-fun b!1314459 () Bool)

(assert (=> b!1314459 (= e!749822 tp_is_empty!35595)))

(declare-fun b!1314460 () Bool)

(assert (=> b!1314460 (= e!749823 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52563)

(declare-fun zeroValue!1296 () V!52563)

(declare-fun lt!585739 () Bool)

(declare-datatypes ((tuple2!23214 0))(
  ( (tuple2!23215 (_1!11617 (_ BitVec 64)) (_2!11617 V!52563)) )
))
(declare-datatypes ((List!30379 0))(
  ( (Nil!30376) (Cons!30375 (h!31584 tuple2!23214) (t!43992 List!30379)) )
))
(declare-datatypes ((ListLongMap!20883 0))(
  ( (ListLongMap!20884 (toList!10457 List!30379)) )
))
(declare-fun contains!8543 (ListLongMap!20883 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5413 (array!88123 array!88125 (_ BitVec 32) (_ BitVec 32) V!52563 V!52563 (_ BitVec 32) Int) ListLongMap!20883)

(assert (=> b!1314460 (= lt!585739 (contains!8543 (getCurrentListMap!5413 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(assert (= (and start!111066 res!872725) b!1314453))

(assert (= (and b!1314453 res!872728) b!1314454))

(assert (= (and b!1314454 res!872729) b!1314458))

(assert (= (and b!1314458 res!872726) b!1314455))

(assert (= (and b!1314455 res!872727) b!1314460))

(assert (= (and b!1314457 condMapEmpty!55021) mapIsEmpty!55021))

(assert (= (and b!1314457 (not condMapEmpty!55021)) mapNonEmpty!55021))

(get-info :version)

(assert (= (and mapNonEmpty!55021 ((_ is ValueCellFull!16899) mapValue!55021)) b!1314456))

(assert (= (and b!1314457 ((_ is ValueCellFull!16899) mapDefault!55021)) b!1314459))

(assert (= start!111066 b!1314457))

(declare-fun m!1202977 () Bool)

(assert (=> mapNonEmpty!55021 m!1202977))

(declare-fun m!1202979 () Bool)

(assert (=> b!1314458 m!1202979))

(declare-fun m!1202981 () Bool)

(assert (=> start!111066 m!1202981))

(declare-fun m!1202983 () Bool)

(assert (=> start!111066 m!1202983))

(declare-fun m!1202985 () Bool)

(assert (=> start!111066 m!1202985))

(declare-fun m!1202987 () Bool)

(assert (=> b!1314454 m!1202987))

(declare-fun m!1202989 () Bool)

(assert (=> b!1314460 m!1202989))

(assert (=> b!1314460 m!1202989))

(declare-fun m!1202991 () Bool)

(assert (=> b!1314460 m!1202991))

(check-sat b_and!48083 (not b!1314454) (not mapNonEmpty!55021) (not start!111066) (not b!1314458) (not b_next!29865) tp_is_empty!35595 (not b!1314460))
(check-sat b_and!48083 (not b_next!29865))
