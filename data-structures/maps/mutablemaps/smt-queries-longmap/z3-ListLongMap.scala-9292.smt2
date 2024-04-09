; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111138 () Bool)

(assert start!111138)

(declare-fun b_free!29937 () Bool)

(declare-fun b_next!29937 () Bool)

(assert (=> start!111138 (= b_free!29937 (not b_next!29937))))

(declare-fun tp!105134 () Bool)

(declare-fun b_and!48155 () Bool)

(assert (=> start!111138 (= tp!105134 b_and!48155)))

(declare-fun b!1315353 () Bool)

(declare-fun res!873303 () Bool)

(declare-fun e!750363 () Bool)

(assert (=> b!1315353 (=> (not res!873303) (not e!750363))))

(declare-datatypes ((array!88257 0))(
  ( (array!88258 (arr!42604 (Array (_ BitVec 32) (_ BitVec 64))) (size!43155 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88257)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1315353 (= res!873303 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43155 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1315354 () Bool)

(assert (=> b!1315354 (= e!750363 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52659 0))(
  ( (V!52660 (val!17908 Int)) )
))
(declare-fun minValue!1296 () V!52659)

(declare-datatypes ((ValueCell!16935 0))(
  ( (ValueCellFull!16935 (v!20533 V!52659)) (EmptyCell!16935) )
))
(declare-datatypes ((array!88259 0))(
  ( (array!88260 (arr!42605 (Array (_ BitVec 32) ValueCell!16935)) (size!43156 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88259)

(declare-fun zeroValue!1296 () V!52659)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun lt!585847 () Bool)

(declare-datatypes ((tuple2!23254 0))(
  ( (tuple2!23255 (_1!11637 (_ BitVec 64)) (_2!11637 V!52659)) )
))
(declare-datatypes ((List!30421 0))(
  ( (Nil!30418) (Cons!30417 (h!31626 tuple2!23254) (t!44034 List!30421)) )
))
(declare-datatypes ((ListLongMap!20923 0))(
  ( (ListLongMap!20924 (toList!10477 List!30421)) )
))
(declare-fun contains!8563 (ListLongMap!20923 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5433 (array!88257 array!88259 (_ BitVec 32) (_ BitVec 32) V!52659 V!52659 (_ BitVec 32) Int) ListLongMap!20923)

(assert (=> b!1315354 (= lt!585847 (contains!8563 (getCurrentListMap!5433 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun mapIsEmpty!55129 () Bool)

(declare-fun mapRes!55129 () Bool)

(assert (=> mapIsEmpty!55129 mapRes!55129))

(declare-fun b!1315356 () Bool)

(declare-fun res!873301 () Bool)

(assert (=> b!1315356 (=> (not res!873301) (not e!750363))))

(assert (=> b!1315356 (= res!873301 (and (= (size!43156 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43155 _keys!1628) (size!43156 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1315357 () Bool)

(declare-fun res!873302 () Bool)

(assert (=> b!1315357 (=> (not res!873302) (not e!750363))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88257 (_ BitVec 32)) Bool)

(assert (=> b!1315357 (= res!873302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!55129 () Bool)

(declare-fun tp!105133 () Bool)

(declare-fun e!750365 () Bool)

(assert (=> mapNonEmpty!55129 (= mapRes!55129 (and tp!105133 e!750365))))

(declare-fun mapValue!55129 () ValueCell!16935)

(declare-fun mapRest!55129 () (Array (_ BitVec 32) ValueCell!16935))

(declare-fun mapKey!55129 () (_ BitVec 32))

(assert (=> mapNonEmpty!55129 (= (arr!42605 _values!1354) (store mapRest!55129 mapKey!55129 mapValue!55129))))

(declare-fun b!1315358 () Bool)

(declare-fun res!873304 () Bool)

(assert (=> b!1315358 (=> (not res!873304) (not e!750363))))

(declare-datatypes ((List!30422 0))(
  ( (Nil!30419) (Cons!30418 (h!31627 (_ BitVec 64)) (t!44035 List!30422)) )
))
(declare-fun arrayNoDuplicates!0 (array!88257 (_ BitVec 32) List!30422) Bool)

(assert (=> b!1315358 (= res!873304 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30419))))

(declare-fun res!873305 () Bool)

(assert (=> start!111138 (=> (not res!873305) (not e!750363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111138 (= res!873305 (validMask!0 mask!2040))))

(assert (=> start!111138 e!750363))

(assert (=> start!111138 tp!105134))

(declare-fun array_inv!32151 (array!88257) Bool)

(assert (=> start!111138 (array_inv!32151 _keys!1628)))

(assert (=> start!111138 true))

(declare-fun tp_is_empty!35667 () Bool)

(assert (=> start!111138 tp_is_empty!35667))

(declare-fun e!750364 () Bool)

(declare-fun array_inv!32152 (array!88259) Bool)

(assert (=> start!111138 (and (array_inv!32152 _values!1354) e!750364)))

(declare-fun b!1315355 () Bool)

(declare-fun e!750361 () Bool)

(assert (=> b!1315355 (= e!750361 tp_is_empty!35667)))

(declare-fun b!1315359 () Bool)

(assert (=> b!1315359 (= e!750364 (and e!750361 mapRes!55129))))

(declare-fun condMapEmpty!55129 () Bool)

(declare-fun mapDefault!55129 () ValueCell!16935)

(assert (=> b!1315359 (= condMapEmpty!55129 (= (arr!42605 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16935)) mapDefault!55129)))))

(declare-fun b!1315360 () Bool)

(assert (=> b!1315360 (= e!750365 tp_is_empty!35667)))

(assert (= (and start!111138 res!873305) b!1315356))

(assert (= (and b!1315356 res!873301) b!1315357))

(assert (= (and b!1315357 res!873302) b!1315358))

(assert (= (and b!1315358 res!873304) b!1315353))

(assert (= (and b!1315353 res!873303) b!1315354))

(assert (= (and b!1315359 condMapEmpty!55129) mapIsEmpty!55129))

(assert (= (and b!1315359 (not condMapEmpty!55129)) mapNonEmpty!55129))

(get-info :version)

(assert (= (and mapNonEmpty!55129 ((_ is ValueCellFull!16935) mapValue!55129)) b!1315360))

(assert (= (and b!1315359 ((_ is ValueCellFull!16935) mapDefault!55129)) b!1315355))

(assert (= start!111138 b!1315359))

(declare-fun m!1203583 () Bool)

(assert (=> b!1315358 m!1203583))

(declare-fun m!1203585 () Bool)

(assert (=> b!1315357 m!1203585))

(declare-fun m!1203587 () Bool)

(assert (=> mapNonEmpty!55129 m!1203587))

(declare-fun m!1203589 () Bool)

(assert (=> b!1315354 m!1203589))

(assert (=> b!1315354 m!1203589))

(declare-fun m!1203591 () Bool)

(assert (=> b!1315354 m!1203591))

(declare-fun m!1203593 () Bool)

(assert (=> start!111138 m!1203593))

(declare-fun m!1203595 () Bool)

(assert (=> start!111138 m!1203595))

(declare-fun m!1203597 () Bool)

(assert (=> start!111138 m!1203597))

(check-sat (not mapNonEmpty!55129) (not start!111138) tp_is_empty!35667 b_and!48155 (not b!1315357) (not b_next!29937) (not b!1315354) (not b!1315358))
(check-sat b_and!48155 (not b_next!29937))
