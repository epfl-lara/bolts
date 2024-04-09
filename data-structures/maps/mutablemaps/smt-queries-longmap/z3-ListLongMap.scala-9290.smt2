; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111126 () Bool)

(assert start!111126)

(declare-fun b_free!29925 () Bool)

(declare-fun b_next!29925 () Bool)

(assert (=> start!111126 (= b_free!29925 (not b_next!29925))))

(declare-fun tp!105098 () Bool)

(declare-fun b_and!48143 () Bool)

(assert (=> start!111126 (= tp!105098 b_and!48143)))

(declare-fun mapNonEmpty!55111 () Bool)

(declare-fun mapRes!55111 () Bool)

(declare-fun tp!105097 () Bool)

(declare-fun e!750274 () Bool)

(assert (=> mapNonEmpty!55111 (= mapRes!55111 (and tp!105097 e!750274))))

(declare-fun mapKey!55111 () (_ BitVec 32))

(declare-datatypes ((V!52643 0))(
  ( (V!52644 (val!17902 Int)) )
))
(declare-datatypes ((ValueCell!16929 0))(
  ( (ValueCellFull!16929 (v!20527 V!52643)) (EmptyCell!16929) )
))
(declare-datatypes ((array!88237 0))(
  ( (array!88238 (arr!42594 (Array (_ BitVec 32) ValueCell!16929)) (size!43145 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88237)

(declare-fun mapRest!55111 () (Array (_ BitVec 32) ValueCell!16929))

(declare-fun mapValue!55111 () ValueCell!16929)

(assert (=> mapNonEmpty!55111 (= (arr!42594 _values!1354) (store mapRest!55111 mapKey!55111 mapValue!55111))))

(declare-fun b!1315209 () Bool)

(declare-fun e!750271 () Bool)

(declare-fun e!750272 () Bool)

(assert (=> b!1315209 (= e!750271 (and e!750272 mapRes!55111))))

(declare-fun condMapEmpty!55111 () Bool)

(declare-fun mapDefault!55111 () ValueCell!16929)

(assert (=> b!1315209 (= condMapEmpty!55111 (= (arr!42594 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16929)) mapDefault!55111)))))

(declare-fun b!1315210 () Bool)

(declare-fun res!873215 () Bool)

(declare-fun e!750275 () Bool)

(assert (=> b!1315210 (=> (not res!873215) (not e!750275))))

(declare-datatypes ((array!88239 0))(
  ( (array!88240 (arr!42595 (Array (_ BitVec 32) (_ BitVec 64))) (size!43146 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88239)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1315210 (= res!873215 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43146 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1315211 () Bool)

(assert (=> b!1315211 (= e!750275 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun minValue!1296 () V!52643)

(declare-fun zeroValue!1296 () V!52643)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun lt!585829 () Bool)

(declare-datatypes ((tuple2!23248 0))(
  ( (tuple2!23249 (_1!11634 (_ BitVec 64)) (_2!11634 V!52643)) )
))
(declare-datatypes ((List!30415 0))(
  ( (Nil!30412) (Cons!30411 (h!31620 tuple2!23248) (t!44028 List!30415)) )
))
(declare-datatypes ((ListLongMap!20917 0))(
  ( (ListLongMap!20918 (toList!10474 List!30415)) )
))
(declare-fun contains!8560 (ListLongMap!20917 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5430 (array!88239 array!88237 (_ BitVec 32) (_ BitVec 32) V!52643 V!52643 (_ BitVec 32) Int) ListLongMap!20917)

(assert (=> b!1315211 (= lt!585829 (contains!8560 (getCurrentListMap!5430 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun res!873213 () Bool)

(assert (=> start!111126 (=> (not res!873213) (not e!750275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111126 (= res!873213 (validMask!0 mask!2040))))

(assert (=> start!111126 e!750275))

(assert (=> start!111126 tp!105098))

(declare-fun array_inv!32145 (array!88239) Bool)

(assert (=> start!111126 (array_inv!32145 _keys!1628)))

(assert (=> start!111126 true))

(declare-fun tp_is_empty!35655 () Bool)

(assert (=> start!111126 tp_is_empty!35655))

(declare-fun array_inv!32146 (array!88237) Bool)

(assert (=> start!111126 (and (array_inv!32146 _values!1354) e!750271)))

(declare-fun b!1315212 () Bool)

(declare-fun res!873211 () Bool)

(assert (=> b!1315212 (=> (not res!873211) (not e!750275))))

(assert (=> b!1315212 (= res!873211 (and (= (size!43145 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43146 _keys!1628) (size!43145 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1315213 () Bool)

(declare-fun res!873214 () Bool)

(assert (=> b!1315213 (=> (not res!873214) (not e!750275))))

(declare-datatypes ((List!30416 0))(
  ( (Nil!30413) (Cons!30412 (h!31621 (_ BitVec 64)) (t!44029 List!30416)) )
))
(declare-fun arrayNoDuplicates!0 (array!88239 (_ BitVec 32) List!30416) Bool)

(assert (=> b!1315213 (= res!873214 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30413))))

(declare-fun b!1315214 () Bool)

(declare-fun res!873212 () Bool)

(assert (=> b!1315214 (=> (not res!873212) (not e!750275))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88239 (_ BitVec 32)) Bool)

(assert (=> b!1315214 (= res!873212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1315215 () Bool)

(assert (=> b!1315215 (= e!750272 tp_is_empty!35655)))

(declare-fun mapIsEmpty!55111 () Bool)

(assert (=> mapIsEmpty!55111 mapRes!55111))

(declare-fun b!1315216 () Bool)

(assert (=> b!1315216 (= e!750274 tp_is_empty!35655)))

(assert (= (and start!111126 res!873213) b!1315212))

(assert (= (and b!1315212 res!873211) b!1315214))

(assert (= (and b!1315214 res!873212) b!1315213))

(assert (= (and b!1315213 res!873214) b!1315210))

(assert (= (and b!1315210 res!873215) b!1315211))

(assert (= (and b!1315209 condMapEmpty!55111) mapIsEmpty!55111))

(assert (= (and b!1315209 (not condMapEmpty!55111)) mapNonEmpty!55111))

(get-info :version)

(assert (= (and mapNonEmpty!55111 ((_ is ValueCellFull!16929) mapValue!55111)) b!1315216))

(assert (= (and b!1315209 ((_ is ValueCellFull!16929) mapDefault!55111)) b!1315215))

(assert (= start!111126 b!1315209))

(declare-fun m!1203487 () Bool)

(assert (=> start!111126 m!1203487))

(declare-fun m!1203489 () Bool)

(assert (=> start!111126 m!1203489))

(declare-fun m!1203491 () Bool)

(assert (=> start!111126 m!1203491))

(declare-fun m!1203493 () Bool)

(assert (=> mapNonEmpty!55111 m!1203493))

(declare-fun m!1203495 () Bool)

(assert (=> b!1315214 m!1203495))

(declare-fun m!1203497 () Bool)

(assert (=> b!1315213 m!1203497))

(declare-fun m!1203499 () Bool)

(assert (=> b!1315211 m!1203499))

(assert (=> b!1315211 m!1203499))

(declare-fun m!1203501 () Bool)

(assert (=> b!1315211 m!1203501))

(check-sat (not b!1315211) (not start!111126) (not b!1315213) (not b!1315214) (not b_next!29925) b_and!48143 (not mapNonEmpty!55111) tp_is_empty!35655)
(check-sat b_and!48143 (not b_next!29925))
