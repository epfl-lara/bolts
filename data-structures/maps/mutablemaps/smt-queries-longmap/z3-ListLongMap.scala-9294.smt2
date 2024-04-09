; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111150 () Bool)

(assert start!111150)

(declare-fun b_free!29949 () Bool)

(declare-fun b_next!29949 () Bool)

(assert (=> start!111150 (= b_free!29949 (not b_next!29949))))

(declare-fun tp!105169 () Bool)

(declare-fun b_and!48167 () Bool)

(assert (=> start!111150 (= tp!105169 b_and!48167)))

(declare-fun b!1315497 () Bool)

(declare-fun e!750455 () Bool)

(declare-fun e!750453 () Bool)

(declare-fun mapRes!55147 () Bool)

(assert (=> b!1315497 (= e!750455 (and e!750453 mapRes!55147))))

(declare-fun condMapEmpty!55147 () Bool)

(declare-datatypes ((V!52675 0))(
  ( (V!52676 (val!17914 Int)) )
))
(declare-datatypes ((ValueCell!16941 0))(
  ( (ValueCellFull!16941 (v!20539 V!52675)) (EmptyCell!16941) )
))
(declare-datatypes ((array!88281 0))(
  ( (array!88282 (arr!42616 (Array (_ BitVec 32) ValueCell!16941)) (size!43167 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88281)

(declare-fun mapDefault!55147 () ValueCell!16941)

(assert (=> b!1315497 (= condMapEmpty!55147 (= (arr!42616 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16941)) mapDefault!55147)))))

(declare-fun b!1315498 () Bool)

(declare-fun res!873391 () Bool)

(declare-fun e!750454 () Bool)

(assert (=> b!1315498 (=> (not res!873391) (not e!750454))))

(declare-datatypes ((array!88283 0))(
  ( (array!88284 (arr!42617 (Array (_ BitVec 32) (_ BitVec 64))) (size!43168 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88283)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1315498 (= res!873391 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43168 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1315499 () Bool)

(declare-fun tp_is_empty!35679 () Bool)

(assert (=> b!1315499 (= e!750453 tp_is_empty!35679)))

(declare-fun b!1315500 () Bool)

(declare-fun e!750452 () Bool)

(assert (=> b!1315500 (= e!750452 tp_is_empty!35679)))

(declare-fun b!1315501 () Bool)

(declare-fun res!873393 () Bool)

(assert (=> b!1315501 (=> (not res!873393) (not e!750454))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88283 (_ BitVec 32)) Bool)

(assert (=> b!1315501 (= res!873393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1315502 () Bool)

(declare-fun res!873392 () Bool)

(assert (=> b!1315502 (=> (not res!873392) (not e!750454))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1315502 (= res!873392 (and (= (size!43167 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43168 _keys!1628) (size!43167 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!873395 () Bool)

(assert (=> start!111150 (=> (not res!873395) (not e!750454))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111150 (= res!873395 (validMask!0 mask!2040))))

(assert (=> start!111150 e!750454))

(assert (=> start!111150 tp!105169))

(declare-fun array_inv!32157 (array!88283) Bool)

(assert (=> start!111150 (array_inv!32157 _keys!1628)))

(assert (=> start!111150 true))

(assert (=> start!111150 tp_is_empty!35679))

(declare-fun array_inv!32158 (array!88281) Bool)

(assert (=> start!111150 (and (array_inv!32158 _values!1354) e!750455)))

(declare-fun b!1315503 () Bool)

(declare-fun res!873394 () Bool)

(assert (=> b!1315503 (=> (not res!873394) (not e!750454))))

(declare-datatypes ((List!30428 0))(
  ( (Nil!30425) (Cons!30424 (h!31633 (_ BitVec 64)) (t!44041 List!30428)) )
))
(declare-fun arrayNoDuplicates!0 (array!88283 (_ BitVec 32) List!30428) Bool)

(assert (=> b!1315503 (= res!873394 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30425))))

(declare-fun b!1315504 () Bool)

(assert (=> b!1315504 (= e!750454 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52675)

(declare-fun zeroValue!1296 () V!52675)

(declare-fun lt!585865 () Bool)

(declare-datatypes ((tuple2!23258 0))(
  ( (tuple2!23259 (_1!11639 (_ BitVec 64)) (_2!11639 V!52675)) )
))
(declare-datatypes ((List!30429 0))(
  ( (Nil!30426) (Cons!30425 (h!31634 tuple2!23258) (t!44042 List!30429)) )
))
(declare-datatypes ((ListLongMap!20927 0))(
  ( (ListLongMap!20928 (toList!10479 List!30429)) )
))
(declare-fun contains!8565 (ListLongMap!20927 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5435 (array!88283 array!88281 (_ BitVec 32) (_ BitVec 32) V!52675 V!52675 (_ BitVec 32) Int) ListLongMap!20927)

(assert (=> b!1315504 (= lt!585865 (contains!8565 (getCurrentListMap!5435 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun mapIsEmpty!55147 () Bool)

(assert (=> mapIsEmpty!55147 mapRes!55147))

(declare-fun mapNonEmpty!55147 () Bool)

(declare-fun tp!105170 () Bool)

(assert (=> mapNonEmpty!55147 (= mapRes!55147 (and tp!105170 e!750452))))

(declare-fun mapKey!55147 () (_ BitVec 32))

(declare-fun mapValue!55147 () ValueCell!16941)

(declare-fun mapRest!55147 () (Array (_ BitVec 32) ValueCell!16941))

(assert (=> mapNonEmpty!55147 (= (arr!42616 _values!1354) (store mapRest!55147 mapKey!55147 mapValue!55147))))

(assert (= (and start!111150 res!873395) b!1315502))

(assert (= (and b!1315502 res!873392) b!1315501))

(assert (= (and b!1315501 res!873393) b!1315503))

(assert (= (and b!1315503 res!873394) b!1315498))

(assert (= (and b!1315498 res!873391) b!1315504))

(assert (= (and b!1315497 condMapEmpty!55147) mapIsEmpty!55147))

(assert (= (and b!1315497 (not condMapEmpty!55147)) mapNonEmpty!55147))

(get-info :version)

(assert (= (and mapNonEmpty!55147 ((_ is ValueCellFull!16941) mapValue!55147)) b!1315500))

(assert (= (and b!1315497 ((_ is ValueCellFull!16941) mapDefault!55147)) b!1315499))

(assert (= start!111150 b!1315497))

(declare-fun m!1203679 () Bool)

(assert (=> b!1315501 m!1203679))

(declare-fun m!1203681 () Bool)

(assert (=> b!1315503 m!1203681))

(declare-fun m!1203683 () Bool)

(assert (=> mapNonEmpty!55147 m!1203683))

(declare-fun m!1203685 () Bool)

(assert (=> b!1315504 m!1203685))

(assert (=> b!1315504 m!1203685))

(declare-fun m!1203687 () Bool)

(assert (=> b!1315504 m!1203687))

(declare-fun m!1203689 () Bool)

(assert (=> start!111150 m!1203689))

(declare-fun m!1203691 () Bool)

(assert (=> start!111150 m!1203691))

(declare-fun m!1203693 () Bool)

(assert (=> start!111150 m!1203693))

(check-sat (not start!111150) (not b!1315504) (not mapNonEmpty!55147) (not b_next!29949) tp_is_empty!35679 (not b!1315503) b_and!48167 (not b!1315501))
(check-sat b_and!48167 (not b_next!29949))
