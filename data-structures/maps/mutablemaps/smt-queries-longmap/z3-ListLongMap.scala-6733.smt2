; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84400 () Bool)

(assert start!84400)

(declare-fun b_free!19959 () Bool)

(declare-fun b_next!19959 () Bool)

(assert (=> start!84400 (= b_free!19959 (not b_next!19959))))

(declare-fun tp!69653 () Bool)

(declare-fun b_and!32011 () Bool)

(assert (=> start!84400 (= tp!69653 b_and!32011)))

(declare-fun res!660256 () Bool)

(declare-fun e!556474 () Bool)

(assert (=> start!84400 (=> (not res!660256) (not e!556474))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84400 (= res!660256 (validMask!0 mask!1948))))

(assert (=> start!84400 e!556474))

(assert (=> start!84400 true))

(declare-fun tp_is_empty!23175 () Bool)

(assert (=> start!84400 tp_is_empty!23175))

(declare-datatypes ((V!35883 0))(
  ( (V!35884 (val!11638 Int)) )
))
(declare-datatypes ((ValueCell!11106 0))(
  ( (ValueCellFull!11106 (v!14200 V!35883)) (EmptyCell!11106) )
))
(declare-datatypes ((array!62297 0))(
  ( (array!62298 (arr!30002 (Array (_ BitVec 32) ValueCell!11106)) (size!30482 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62297)

(declare-fun e!556475 () Bool)

(declare-fun array_inv!23045 (array!62297) Bool)

(assert (=> start!84400 (and (array_inv!23045 _values!1278) e!556475)))

(assert (=> start!84400 tp!69653))

(declare-datatypes ((array!62299 0))(
  ( (array!62300 (arr!30003 (Array (_ BitVec 32) (_ BitVec 64))) (size!30483 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62299)

(declare-fun array_inv!23046 (array!62299) Bool)

(assert (=> start!84400 (array_inv!23046 _keys!1544)))

(declare-fun b!986745 () Bool)

(declare-fun res!660257 () Bool)

(assert (=> b!986745 (=> (not res!660257) (not e!556474))))

(declare-datatypes ((List!20871 0))(
  ( (Nil!20868) (Cons!20867 (h!22029 (_ BitVec 64)) (t!29778 List!20871)) )
))
(declare-fun arrayNoDuplicates!0 (array!62299 (_ BitVec 32) List!20871) Bool)

(assert (=> b!986745 (= res!660257 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20868))))

(declare-fun b!986746 () Bool)

(declare-fun res!660259 () Bool)

(assert (=> b!986746 (=> (not res!660259) (not e!556474))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!986746 (= res!660259 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30483 _keys!1544))))))

(declare-fun b!986747 () Bool)

(declare-fun e!556471 () Bool)

(assert (=> b!986747 (= e!556471 tp_is_empty!23175)))

(declare-fun b!986748 () Bool)

(declare-fun res!660260 () Bool)

(assert (=> b!986748 (=> (not res!660260) (not e!556474))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!986748 (= res!660260 (validKeyInArray!0 (select (arr!30003 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!36791 () Bool)

(declare-fun mapRes!36791 () Bool)

(declare-fun tp!69652 () Bool)

(assert (=> mapNonEmpty!36791 (= mapRes!36791 (and tp!69652 e!556471))))

(declare-fun mapValue!36791 () ValueCell!11106)

(declare-fun mapRest!36791 () (Array (_ BitVec 32) ValueCell!11106))

(declare-fun mapKey!36791 () (_ BitVec 32))

(assert (=> mapNonEmpty!36791 (= (arr!30002 _values!1278) (store mapRest!36791 mapKey!36791 mapValue!36791))))

(declare-fun b!986749 () Bool)

(declare-fun e!556473 () Bool)

(assert (=> b!986749 (= e!556473 tp_is_empty!23175)))

(declare-fun b!986750 () Bool)

(declare-fun res!660255 () Bool)

(assert (=> b!986750 (=> (not res!660255) (not e!556474))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!986750 (= res!660255 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!986751 () Bool)

(declare-fun res!660261 () Bool)

(assert (=> b!986751 (=> (not res!660261) (not e!556474))))

(assert (=> b!986751 (= res!660261 (and (= (size!30482 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30483 _keys!1544) (size!30482 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!986752 () Bool)

(assert (=> b!986752 (= e!556474 false)))

(declare-fun minValue!1220 () V!35883)

(declare-fun zeroValue!1220 () V!35883)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!14922 0))(
  ( (tuple2!14923 (_1!7471 (_ BitVec 64)) (_2!7471 V!35883)) )
))
(declare-datatypes ((List!20872 0))(
  ( (Nil!20869) (Cons!20868 (h!22030 tuple2!14922) (t!29779 List!20872)) )
))
(declare-datatypes ((ListLongMap!13633 0))(
  ( (ListLongMap!13634 (toList!6832 List!20872)) )
))
(declare-fun lt!437503 () ListLongMap!13633)

(declare-fun +!3020 (ListLongMap!13633 tuple2!14922) ListLongMap!13633)

(declare-fun getCurrentListMapNoExtraKeys!3485 (array!62299 array!62297 (_ BitVec 32) (_ BitVec 32) V!35883 V!35883 (_ BitVec 32) Int) ListLongMap!13633)

(assert (=> b!986752 (= lt!437503 (+!3020 (getCurrentListMapNoExtraKeys!3485 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14923 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!986753 () Bool)

(assert (=> b!986753 (= e!556475 (and e!556473 mapRes!36791))))

(declare-fun condMapEmpty!36791 () Bool)

(declare-fun mapDefault!36791 () ValueCell!11106)

(assert (=> b!986753 (= condMapEmpty!36791 (= (arr!30002 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11106)) mapDefault!36791)))))

(declare-fun b!986754 () Bool)

(declare-fun res!660258 () Bool)

(assert (=> b!986754 (=> (not res!660258) (not e!556474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62299 (_ BitVec 32)) Bool)

(assert (=> b!986754 (= res!660258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36791 () Bool)

(assert (=> mapIsEmpty!36791 mapRes!36791))

(assert (= (and start!84400 res!660256) b!986751))

(assert (= (and b!986751 res!660261) b!986754))

(assert (= (and b!986754 res!660258) b!986745))

(assert (= (and b!986745 res!660257) b!986746))

(assert (= (and b!986746 res!660259) b!986748))

(assert (= (and b!986748 res!660260) b!986750))

(assert (= (and b!986750 res!660255) b!986752))

(assert (= (and b!986753 condMapEmpty!36791) mapIsEmpty!36791))

(assert (= (and b!986753 (not condMapEmpty!36791)) mapNonEmpty!36791))

(get-info :version)

(assert (= (and mapNonEmpty!36791 ((_ is ValueCellFull!11106) mapValue!36791)) b!986747))

(assert (= (and b!986753 ((_ is ValueCellFull!11106) mapDefault!36791)) b!986749))

(assert (= start!84400 b!986753))

(declare-fun m!913519 () Bool)

(assert (=> b!986748 m!913519))

(assert (=> b!986748 m!913519))

(declare-fun m!913521 () Bool)

(assert (=> b!986748 m!913521))

(declare-fun m!913523 () Bool)

(assert (=> b!986745 m!913523))

(declare-fun m!913525 () Bool)

(assert (=> b!986754 m!913525))

(declare-fun m!913527 () Bool)

(assert (=> mapNonEmpty!36791 m!913527))

(declare-fun m!913529 () Bool)

(assert (=> start!84400 m!913529))

(declare-fun m!913531 () Bool)

(assert (=> start!84400 m!913531))

(declare-fun m!913533 () Bool)

(assert (=> start!84400 m!913533))

(declare-fun m!913535 () Bool)

(assert (=> b!986752 m!913535))

(assert (=> b!986752 m!913535))

(declare-fun m!913537 () Bool)

(assert (=> b!986752 m!913537))

(check-sat (not b!986754) (not b_next!19959) (not start!84400) (not b!986752) (not b!986745) b_and!32011 tp_is_empty!23175 (not mapNonEmpty!36791) (not b!986748))
(check-sat b_and!32011 (not b_next!19959))
