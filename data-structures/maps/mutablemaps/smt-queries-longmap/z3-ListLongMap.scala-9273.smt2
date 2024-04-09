; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111024 () Bool)

(assert start!111024)

(declare-fun b_free!29823 () Bool)

(declare-fun b_next!29823 () Bool)

(assert (=> start!111024 (= b_free!29823 (not b_next!29823))))

(declare-fun tp!104791 () Bool)

(declare-fun b_and!48041 () Bool)

(assert (=> start!111024 (= tp!104791 b_and!48041)))

(declare-fun b!1313913 () Bool)

(declare-fun e!749507 () Bool)

(assert (=> b!1313913 (= e!749507 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!88045 0))(
  ( (array!88046 (arr!42498 (Array (_ BitVec 32) (_ BitVec 64))) (size!43049 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88045)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun lt!585676 () Bool)

(declare-datatypes ((V!52507 0))(
  ( (V!52508 (val!17851 Int)) )
))
(declare-fun minValue!1296 () V!52507)

(declare-datatypes ((ValueCell!16878 0))(
  ( (ValueCellFull!16878 (v!20476 V!52507)) (EmptyCell!16878) )
))
(declare-datatypes ((array!88047 0))(
  ( (array!88048 (arr!42499 (Array (_ BitVec 32) ValueCell!16878)) (size!43050 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88047)

(declare-fun zeroValue!1296 () V!52507)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23190 0))(
  ( (tuple2!23191 (_1!11605 (_ BitVec 64)) (_2!11605 V!52507)) )
))
(declare-datatypes ((List!30352 0))(
  ( (Nil!30349) (Cons!30348 (h!31557 tuple2!23190) (t!43965 List!30352)) )
))
(declare-datatypes ((ListLongMap!20859 0))(
  ( (ListLongMap!20860 (toList!10445 List!30352)) )
))
(declare-fun contains!8531 (ListLongMap!20859 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5401 (array!88045 array!88047 (_ BitVec 32) (_ BitVec 32) V!52507 V!52507 (_ BitVec 32) Int) ListLongMap!20859)

(assert (=> b!1313913 (= lt!585676 (contains!8531 (getCurrentListMap!5401 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun mapIsEmpty!54958 () Bool)

(declare-fun mapRes!54958 () Bool)

(assert (=> mapIsEmpty!54958 mapRes!54958))

(declare-fun mapNonEmpty!54958 () Bool)

(declare-fun tp!104792 () Bool)

(declare-fun e!749509 () Bool)

(assert (=> mapNonEmpty!54958 (= mapRes!54958 (and tp!104792 e!749509))))

(declare-fun mapKey!54958 () (_ BitVec 32))

(declare-fun mapRest!54958 () (Array (_ BitVec 32) ValueCell!16878))

(declare-fun mapValue!54958 () ValueCell!16878)

(assert (=> mapNonEmpty!54958 (= (arr!42499 _values!1354) (store mapRest!54958 mapKey!54958 mapValue!54958))))

(declare-fun res!872377 () Bool)

(assert (=> start!111024 (=> (not res!872377) (not e!749507))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111024 (= res!872377 (validMask!0 mask!2040))))

(assert (=> start!111024 e!749507))

(assert (=> start!111024 tp!104791))

(declare-fun array_inv!32077 (array!88045) Bool)

(assert (=> start!111024 (array_inv!32077 _keys!1628)))

(assert (=> start!111024 true))

(declare-fun tp_is_empty!35553 () Bool)

(assert (=> start!111024 tp_is_empty!35553))

(declare-fun e!749508 () Bool)

(declare-fun array_inv!32078 (array!88047) Bool)

(assert (=> start!111024 (and (array_inv!32078 _values!1354) e!749508)))

(declare-fun b!1313914 () Bool)

(declare-fun e!749506 () Bool)

(assert (=> b!1313914 (= e!749506 tp_is_empty!35553)))

(declare-fun b!1313915 () Bool)

(declare-fun res!872375 () Bool)

(assert (=> b!1313915 (=> (not res!872375) (not e!749507))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88045 (_ BitVec 32)) Bool)

(assert (=> b!1313915 (= res!872375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1313916 () Bool)

(assert (=> b!1313916 (= e!749509 tp_is_empty!35553)))

(declare-fun b!1313917 () Bool)

(declare-fun res!872378 () Bool)

(assert (=> b!1313917 (=> (not res!872378) (not e!749507))))

(assert (=> b!1313917 (= res!872378 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43049 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313918 () Bool)

(declare-fun res!872376 () Bool)

(assert (=> b!1313918 (=> (not res!872376) (not e!749507))))

(assert (=> b!1313918 (= res!872376 (and (= (size!43050 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43049 _keys!1628) (size!43050 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1313919 () Bool)

(declare-fun res!872374 () Bool)

(assert (=> b!1313919 (=> (not res!872374) (not e!749507))))

(declare-datatypes ((List!30353 0))(
  ( (Nil!30350) (Cons!30349 (h!31558 (_ BitVec 64)) (t!43966 List!30353)) )
))
(declare-fun arrayNoDuplicates!0 (array!88045 (_ BitVec 32) List!30353) Bool)

(assert (=> b!1313919 (= res!872374 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30350))))

(declare-fun b!1313920 () Bool)

(assert (=> b!1313920 (= e!749508 (and e!749506 mapRes!54958))))

(declare-fun condMapEmpty!54958 () Bool)

(declare-fun mapDefault!54958 () ValueCell!16878)

(assert (=> b!1313920 (= condMapEmpty!54958 (= (arr!42499 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16878)) mapDefault!54958)))))

(assert (= (and start!111024 res!872377) b!1313918))

(assert (= (and b!1313918 res!872376) b!1313915))

(assert (= (and b!1313915 res!872375) b!1313919))

(assert (= (and b!1313919 res!872374) b!1313917))

(assert (= (and b!1313917 res!872378) b!1313913))

(assert (= (and b!1313920 condMapEmpty!54958) mapIsEmpty!54958))

(assert (= (and b!1313920 (not condMapEmpty!54958)) mapNonEmpty!54958))

(get-info :version)

(assert (= (and mapNonEmpty!54958 ((_ is ValueCellFull!16878) mapValue!54958)) b!1313916))

(assert (= (and b!1313920 ((_ is ValueCellFull!16878) mapDefault!54958)) b!1313914))

(assert (= start!111024 b!1313920))

(declare-fun m!1202611 () Bool)

(assert (=> start!111024 m!1202611))

(declare-fun m!1202613 () Bool)

(assert (=> start!111024 m!1202613))

(declare-fun m!1202615 () Bool)

(assert (=> start!111024 m!1202615))

(declare-fun m!1202617 () Bool)

(assert (=> b!1313915 m!1202617))

(declare-fun m!1202619 () Bool)

(assert (=> b!1313913 m!1202619))

(assert (=> b!1313913 m!1202619))

(declare-fun m!1202621 () Bool)

(assert (=> b!1313913 m!1202621))

(declare-fun m!1202623 () Bool)

(assert (=> b!1313919 m!1202623))

(declare-fun m!1202625 () Bool)

(assert (=> mapNonEmpty!54958 m!1202625))

(check-sat (not start!111024) (not b!1313915) tp_is_empty!35553 (not b!1313919) (not b_next!29823) (not b!1313913) (not mapNonEmpty!54958) b_and!48041)
(check-sat b_and!48041 (not b_next!29823))
