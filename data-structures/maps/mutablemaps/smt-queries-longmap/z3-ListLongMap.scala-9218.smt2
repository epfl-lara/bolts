; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110694 () Bool)

(assert start!110694)

(declare-fun b_free!29493 () Bool)

(declare-fun b_next!29493 () Bool)

(assert (=> start!110694 (= b_free!29493 (not b_next!29493))))

(declare-fun tp!103801 () Bool)

(declare-fun b_and!47711 () Bool)

(assert (=> start!110694 (= tp!103801 b_and!47711)))

(declare-fun b!1309278 () Bool)

(declare-fun e!747031 () Bool)

(declare-fun tp_is_empty!35223 () Bool)

(assert (=> b!1309278 (= e!747031 tp_is_empty!35223)))

(declare-fun b!1309279 () Bool)

(declare-fun res!869225 () Bool)

(declare-fun e!747034 () Bool)

(assert (=> b!1309279 (=> (not res!869225) (not e!747034))))

(declare-datatypes ((array!87407 0))(
  ( (array!87408 (arr!42179 (Array (_ BitVec 32) (_ BitVec 64))) (size!42730 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87407)

(declare-datatypes ((List!30112 0))(
  ( (Nil!30109) (Cons!30108 (h!31317 (_ BitVec 64)) (t!43725 List!30112)) )
))
(declare-fun arrayNoDuplicates!0 (array!87407 (_ BitVec 32) List!30112) Bool)

(assert (=> b!1309279 (= res!869225 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30109))))

(declare-fun b!1309280 () Bool)

(declare-fun res!869228 () Bool)

(assert (=> b!1309280 (=> (not res!869228) (not e!747034))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87407 (_ BitVec 32)) Bool)

(assert (=> b!1309280 (= res!869228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!54463 () Bool)

(declare-fun mapRes!54463 () Bool)

(declare-fun tp!103802 () Bool)

(declare-fun e!747032 () Bool)

(assert (=> mapNonEmpty!54463 (= mapRes!54463 (and tp!103802 e!747032))))

(declare-datatypes ((V!52067 0))(
  ( (V!52068 (val!17686 Int)) )
))
(declare-datatypes ((ValueCell!16713 0))(
  ( (ValueCellFull!16713 (v!20311 V!52067)) (EmptyCell!16713) )
))
(declare-fun mapRest!54463 () (Array (_ BitVec 32) ValueCell!16713))

(declare-fun mapValue!54463 () ValueCell!16713)

(declare-fun mapKey!54463 () (_ BitVec 32))

(declare-datatypes ((array!87409 0))(
  ( (array!87410 (arr!42180 (Array (_ BitVec 32) ValueCell!16713)) (size!42731 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87409)

(assert (=> mapNonEmpty!54463 (= (arr!42180 _values!1354) (store mapRest!54463 mapKey!54463 mapValue!54463))))

(declare-fun b!1309281 () Bool)

(assert (=> b!1309281 (= e!747032 tp_is_empty!35223)))

(declare-fun b!1309282 () Bool)

(assert (=> b!1309282 (= e!747034 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52067)

(declare-fun zeroValue!1296 () V!52067)

(declare-fun lt!585190 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22942 0))(
  ( (tuple2!22943 (_1!11481 (_ BitVec 64)) (_2!11481 V!52067)) )
))
(declare-datatypes ((List!30113 0))(
  ( (Nil!30110) (Cons!30109 (h!31318 tuple2!22942) (t!43726 List!30113)) )
))
(declare-datatypes ((ListLongMap!20611 0))(
  ( (ListLongMap!20612 (toList!10321 List!30113)) )
))
(declare-fun contains!8407 (ListLongMap!20611 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5277 (array!87407 array!87409 (_ BitVec 32) (_ BitVec 32) V!52067 V!52067 (_ BitVec 32) Int) ListLongMap!20611)

(assert (=> b!1309282 (= lt!585190 (contains!8407 (getCurrentListMap!5277 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1309283 () Bool)

(declare-fun res!869224 () Bool)

(assert (=> b!1309283 (=> (not res!869224) (not e!747034))))

(assert (=> b!1309283 (= res!869224 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42730 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!54463 () Bool)

(assert (=> mapIsEmpty!54463 mapRes!54463))

(declare-fun b!1309284 () Bool)

(declare-fun e!747033 () Bool)

(assert (=> b!1309284 (= e!747033 (and e!747031 mapRes!54463))))

(declare-fun condMapEmpty!54463 () Bool)

(declare-fun mapDefault!54463 () ValueCell!16713)

(assert (=> b!1309284 (= condMapEmpty!54463 (= (arr!42180 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16713)) mapDefault!54463)))))

(declare-fun b!1309285 () Bool)

(declare-fun res!869227 () Bool)

(assert (=> b!1309285 (=> (not res!869227) (not e!747034))))

(assert (=> b!1309285 (= res!869227 (and (= (size!42731 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42730 _keys!1628) (size!42731 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!869226 () Bool)

(assert (=> start!110694 (=> (not res!869226) (not e!747034))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110694 (= res!869226 (validMask!0 mask!2040))))

(assert (=> start!110694 e!747034))

(assert (=> start!110694 tp!103801))

(declare-fun array_inv!31877 (array!87407) Bool)

(assert (=> start!110694 (array_inv!31877 _keys!1628)))

(assert (=> start!110694 true))

(assert (=> start!110694 tp_is_empty!35223))

(declare-fun array_inv!31878 (array!87409) Bool)

(assert (=> start!110694 (and (array_inv!31878 _values!1354) e!747033)))

(assert (= (and start!110694 res!869226) b!1309285))

(assert (= (and b!1309285 res!869227) b!1309280))

(assert (= (and b!1309280 res!869228) b!1309279))

(assert (= (and b!1309279 res!869225) b!1309283))

(assert (= (and b!1309283 res!869224) b!1309282))

(assert (= (and b!1309284 condMapEmpty!54463) mapIsEmpty!54463))

(assert (= (and b!1309284 (not condMapEmpty!54463)) mapNonEmpty!54463))

(get-info :version)

(assert (= (and mapNonEmpty!54463 ((_ is ValueCellFull!16713) mapValue!54463)) b!1309281))

(assert (= (and b!1309284 ((_ is ValueCellFull!16713) mapDefault!54463)) b!1309278))

(assert (= start!110694 b!1309284))

(declare-fun m!1199419 () Bool)

(assert (=> start!110694 m!1199419))

(declare-fun m!1199421 () Bool)

(assert (=> start!110694 m!1199421))

(declare-fun m!1199423 () Bool)

(assert (=> start!110694 m!1199423))

(declare-fun m!1199425 () Bool)

(assert (=> b!1309282 m!1199425))

(assert (=> b!1309282 m!1199425))

(declare-fun m!1199427 () Bool)

(assert (=> b!1309282 m!1199427))

(declare-fun m!1199429 () Bool)

(assert (=> mapNonEmpty!54463 m!1199429))

(declare-fun m!1199431 () Bool)

(assert (=> b!1309279 m!1199431))

(declare-fun m!1199433 () Bool)

(assert (=> b!1309280 m!1199433))

(check-sat (not start!110694) (not b!1309282) (not b!1309279) (not b!1309280) (not mapNonEmpty!54463) tp_is_empty!35223 (not b_next!29493) b_and!47711)
(check-sat b_and!47711 (not b_next!29493))
