; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133784 () Bool)

(assert start!133784)

(declare-fun b_free!32115 () Bool)

(declare-fun b_next!32115 () Bool)

(assert (=> start!133784 (= b_free!32115 (not b_next!32115))))

(declare-fun tp!113551 () Bool)

(declare-fun b_and!51695 () Bool)

(assert (=> start!133784 (= tp!113551 b_and!51695)))

(declare-fun b!1563873 () Bool)

(declare-fun e!871642 () Bool)

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1563873 (= e!871642 (bvslt (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000))))

(declare-fun b!1563874 () Bool)

(declare-fun e!871643 () Bool)

(assert (=> b!1563874 (= e!871643 e!871642)))

(declare-fun res!1069251 () Bool)

(assert (=> b!1563874 (=> (not res!1069251) (not e!871642))))

(declare-datatypes ((V!59987 0))(
  ( (V!59988 (val!19501 Int)) )
))
(declare-datatypes ((tuple2!25320 0))(
  ( (tuple2!25321 (_1!12670 (_ BitVec 64)) (_2!12670 V!59987)) )
))
(declare-datatypes ((List!36706 0))(
  ( (Nil!36703) (Cons!36702 (h!38149 tuple2!25320) (t!51560 List!36706)) )
))
(declare-datatypes ((ListLongMap!22767 0))(
  ( (ListLongMap!22768 (toList!11399 List!36706)) )
))
(declare-fun lt!671916 () ListLongMap!22767)

(declare-fun contains!10319 (ListLongMap!22767 (_ BitVec 64)) Bool)

(assert (=> b!1563874 (= res!1069251 (not (contains!10319 lt!671916 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59987)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59987)

(declare-datatypes ((array!104329 0))(
  ( (array!104330 (arr!50352 (Array (_ BitVec 32) (_ BitVec 64))) (size!50903 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104329)

(declare-datatypes ((ValueCell!18387 0))(
  ( (ValueCellFull!18387 (v!22250 V!59987)) (EmptyCell!18387) )
))
(declare-datatypes ((array!104331 0))(
  ( (array!104332 (arr!50353 (Array (_ BitVec 32) ValueCell!18387)) (size!50904 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104331)

(declare-fun getCurrentListMapNoExtraKeys!6756 (array!104329 array!104331 (_ BitVec 32) (_ BitVec 32) V!59987 V!59987 (_ BitVec 32) Int) ListLongMap!22767)

(assert (=> b!1563874 (= lt!671916 (getCurrentListMapNoExtraKeys!6756 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun res!1069255 () Bool)

(assert (=> start!133784 (=> (not res!1069255) (not e!871643))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133784 (= res!1069255 (validMask!0 mask!947))))

(assert (=> start!133784 e!871643))

(assert (=> start!133784 tp!113551))

(declare-fun tp_is_empty!38835 () Bool)

(assert (=> start!133784 tp_is_empty!38835))

(assert (=> start!133784 true))

(declare-fun array_inv!39059 (array!104329) Bool)

(assert (=> start!133784 (array_inv!39059 _keys!637)))

(declare-fun e!871639 () Bool)

(declare-fun array_inv!39060 (array!104331) Bool)

(assert (=> start!133784 (and (array_inv!39060 _values!487) e!871639)))

(declare-fun mapIsEmpty!59628 () Bool)

(declare-fun mapRes!59628 () Bool)

(assert (=> mapIsEmpty!59628 mapRes!59628))

(declare-fun b!1563875 () Bool)

(declare-fun res!1069254 () Bool)

(assert (=> b!1563875 (=> (not res!1069254) (not e!871643))))

(assert (=> b!1563875 (= res!1069254 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50903 _keys!637)) (bvslt from!782 (size!50903 _keys!637))))))

(declare-fun b!1563876 () Bool)

(declare-fun res!1069256 () Bool)

(assert (=> b!1563876 (=> (not res!1069256) (not e!871643))))

(declare-datatypes ((List!36707 0))(
  ( (Nil!36704) (Cons!36703 (h!38150 (_ BitVec 64)) (t!51561 List!36707)) )
))
(declare-fun arrayNoDuplicates!0 (array!104329 (_ BitVec 32) List!36707) Bool)

(assert (=> b!1563876 (= res!1069256 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36704))))

(declare-fun mapNonEmpty!59628 () Bool)

(declare-fun tp!113550 () Bool)

(declare-fun e!871641 () Bool)

(assert (=> mapNonEmpty!59628 (= mapRes!59628 (and tp!113550 e!871641))))

(declare-fun mapRest!59628 () (Array (_ BitVec 32) ValueCell!18387))

(declare-fun mapKey!59628 () (_ BitVec 32))

(declare-fun mapValue!59628 () ValueCell!18387)

(assert (=> mapNonEmpty!59628 (= (arr!50353 _values!487) (store mapRest!59628 mapKey!59628 mapValue!59628))))

(declare-fun b!1563877 () Bool)

(declare-fun res!1069249 () Bool)

(assert (=> b!1563877 (=> (not res!1069249) (not e!871643))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104329 (_ BitVec 32)) Bool)

(assert (=> b!1563877 (= res!1069249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1563878 () Bool)

(declare-fun res!1069252 () Bool)

(assert (=> b!1563878 (=> (not res!1069252) (not e!871643))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563878 (= res!1069252 (not (validKeyInArray!0 (select (arr!50352 _keys!637) from!782))))))

(declare-fun b!1563879 () Bool)

(declare-fun res!1069250 () Bool)

(assert (=> b!1563879 (=> (not res!1069250) (not e!871643))))

(assert (=> b!1563879 (= res!1069250 (and (= (size!50904 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50903 _keys!637) (size!50904 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1563880 () Bool)

(declare-fun e!871638 () Bool)

(assert (=> b!1563880 (= e!871638 tp_is_empty!38835)))

(declare-fun b!1563881 () Bool)

(declare-fun res!1069253 () Bool)

(assert (=> b!1563881 (=> (not res!1069253) (not e!871642))))

(assert (=> b!1563881 (= res!1069253 (not (contains!10319 lt!671916 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1563882 () Bool)

(assert (=> b!1563882 (= e!871639 (and e!871638 mapRes!59628))))

(declare-fun condMapEmpty!59628 () Bool)

(declare-fun mapDefault!59628 () ValueCell!18387)

(assert (=> b!1563882 (= condMapEmpty!59628 (= (arr!50353 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18387)) mapDefault!59628)))))

(declare-fun b!1563883 () Bool)

(assert (=> b!1563883 (= e!871641 tp_is_empty!38835)))

(assert (= (and start!133784 res!1069255) b!1563879))

(assert (= (and b!1563879 res!1069250) b!1563877))

(assert (= (and b!1563877 res!1069249) b!1563876))

(assert (= (and b!1563876 res!1069256) b!1563875))

(assert (= (and b!1563875 res!1069254) b!1563878))

(assert (= (and b!1563878 res!1069252) b!1563874))

(assert (= (and b!1563874 res!1069251) b!1563881))

(assert (= (and b!1563881 res!1069253) b!1563873))

(assert (= (and b!1563882 condMapEmpty!59628) mapIsEmpty!59628))

(assert (= (and b!1563882 (not condMapEmpty!59628)) mapNonEmpty!59628))

(get-info :version)

(assert (= (and mapNonEmpty!59628 ((_ is ValueCellFull!18387) mapValue!59628)) b!1563883))

(assert (= (and b!1563882 ((_ is ValueCellFull!18387) mapDefault!59628)) b!1563880))

(assert (= start!133784 b!1563882))

(declare-fun m!1439291 () Bool)

(assert (=> b!1563881 m!1439291))

(declare-fun m!1439293 () Bool)

(assert (=> start!133784 m!1439293))

(declare-fun m!1439295 () Bool)

(assert (=> start!133784 m!1439295))

(declare-fun m!1439297 () Bool)

(assert (=> start!133784 m!1439297))

(declare-fun m!1439299 () Bool)

(assert (=> mapNonEmpty!59628 m!1439299))

(declare-fun m!1439301 () Bool)

(assert (=> b!1563878 m!1439301))

(assert (=> b!1563878 m!1439301))

(declare-fun m!1439303 () Bool)

(assert (=> b!1563878 m!1439303))

(declare-fun m!1439305 () Bool)

(assert (=> b!1563876 m!1439305))

(declare-fun m!1439307 () Bool)

(assert (=> b!1563874 m!1439307))

(declare-fun m!1439309 () Bool)

(assert (=> b!1563874 m!1439309))

(declare-fun m!1439311 () Bool)

(assert (=> b!1563877 m!1439311))

(check-sat b_and!51695 (not b_next!32115) (not b!1563876) (not b!1563881) tp_is_empty!38835 (not b!1563874) (not b!1563878) (not mapNonEmpty!59628) (not start!133784) (not b!1563877))
(check-sat b_and!51695 (not b_next!32115))
