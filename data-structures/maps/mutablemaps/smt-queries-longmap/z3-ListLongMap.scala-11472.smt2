; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133664 () Bool)

(assert start!133664)

(declare-fun b_free!32049 () Bool)

(declare-fun b_next!32049 () Bool)

(assert (=> start!133664 (= b_free!32049 (not b_next!32049))))

(declare-fun tp!113271 () Bool)

(declare-fun b_and!51619 () Bool)

(assert (=> start!133664 (= tp!113271 b_and!51619)))

(declare-fun b!1562368 () Bool)

(declare-fun res!1068298 () Bool)

(declare-fun e!870653 () Bool)

(assert (=> b!1562368 (=> (not res!1068298) (not e!870653))))

(declare-datatypes ((array!104097 0))(
  ( (array!104098 (arr!50236 (Array (_ BitVec 32) (_ BitVec 64))) (size!50787 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104097)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1562368 (= res!1068298 (validKeyInArray!0 (select (arr!50236 _keys!637) from!782)))))

(declare-fun mapIsEmpty!59448 () Bool)

(declare-fun mapRes!59448 () Bool)

(assert (=> mapIsEmpty!59448 mapRes!59448))

(declare-fun b!1562370 () Bool)

(assert (=> b!1562370 (= e!870653 (not true))))

(declare-fun lt!671614 () Bool)

(declare-datatypes ((V!59827 0))(
  ( (V!59828 (val!19441 Int)) )
))
(declare-datatypes ((tuple2!25268 0))(
  ( (tuple2!25269 (_1!12644 (_ BitVec 64)) (_2!12644 V!59827)) )
))
(declare-datatypes ((List!36643 0))(
  ( (Nil!36640) (Cons!36639 (h!38086 tuple2!25268) (t!51489 List!36643)) )
))
(declare-datatypes ((ListLongMap!22715 0))(
  ( (ListLongMap!22716 (toList!11373 List!36643)) )
))
(declare-fun lt!671615 () ListLongMap!22715)

(declare-fun contains!10293 (ListLongMap!22715 (_ BitVec 64)) Bool)

(assert (=> b!1562370 (= lt!671614 (contains!10293 lt!671615 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1562370 (not (contains!10293 lt!671615 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671613 () V!59827)

(declare-fun lt!671616 () ListLongMap!22715)

(declare-fun +!5027 (ListLongMap!22715 tuple2!25268) ListLongMap!22715)

(assert (=> b!1562370 (= lt!671615 (+!5027 lt!671616 (tuple2!25269 (select (arr!50236 _keys!637) from!782) lt!671613)))))

(declare-datatypes ((Unit!51918 0))(
  ( (Unit!51919) )
))
(declare-fun lt!671612 () Unit!51918)

(declare-fun addStillNotContains!563 (ListLongMap!22715 (_ BitVec 64) V!59827 (_ BitVec 64)) Unit!51918)

(assert (=> b!1562370 (= lt!671612 (addStillNotContains!563 lt!671616 (select (arr!50236 _keys!637) from!782) lt!671613 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18327 0))(
  ( (ValueCellFull!18327 (v!22190 V!59827)) (EmptyCell!18327) )
))
(declare-datatypes ((array!104099 0))(
  ( (array!104100 (arr!50237 (Array (_ BitVec 32) ValueCell!18327)) (size!50788 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104099)

(declare-fun get!26283 (ValueCell!18327 V!59827) V!59827)

(declare-fun dynLambda!3916 (Int (_ BitVec 64)) V!59827)

(assert (=> b!1562370 (= lt!671613 (get!26283 (select (arr!50237 _values!487) from!782) (dynLambda!3916 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59827)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59827)

(declare-fun getCurrentListMapNoExtraKeys!6733 (array!104097 array!104099 (_ BitVec 32) (_ BitVec 32) V!59827 V!59827 (_ BitVec 32) Int) ListLongMap!22715)

(assert (=> b!1562370 (= lt!671616 (getCurrentListMapNoExtraKeys!6733 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1562371 () Bool)

(declare-fun res!1068294 () Bool)

(assert (=> b!1562371 (=> (not res!1068294) (not e!870653))))

(assert (=> b!1562371 (= res!1068294 (and (= (size!50788 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50787 _keys!637) (size!50788 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562372 () Bool)

(declare-fun res!1068297 () Bool)

(assert (=> b!1562372 (=> (not res!1068297) (not e!870653))))

(declare-datatypes ((List!36644 0))(
  ( (Nil!36641) (Cons!36640 (h!38087 (_ BitVec 64)) (t!51490 List!36644)) )
))
(declare-fun arrayNoDuplicates!0 (array!104097 (_ BitVec 32) List!36644) Bool)

(assert (=> b!1562372 (= res!1068297 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36641))))

(declare-fun b!1562373 () Bool)

(declare-fun res!1068299 () Bool)

(assert (=> b!1562373 (=> (not res!1068299) (not e!870653))))

(assert (=> b!1562373 (= res!1068299 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50787 _keys!637)) (bvslt from!782 (size!50787 _keys!637))))))

(declare-fun b!1562369 () Bool)

(declare-fun e!870656 () Bool)

(declare-fun tp_is_empty!38715 () Bool)

(assert (=> b!1562369 (= e!870656 tp_is_empty!38715)))

(declare-fun res!1068296 () Bool)

(assert (=> start!133664 (=> (not res!1068296) (not e!870653))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133664 (= res!1068296 (validMask!0 mask!947))))

(assert (=> start!133664 e!870653))

(assert (=> start!133664 tp!113271))

(assert (=> start!133664 tp_is_empty!38715))

(assert (=> start!133664 true))

(declare-fun array_inv!38971 (array!104097) Bool)

(assert (=> start!133664 (array_inv!38971 _keys!637)))

(declare-fun e!870655 () Bool)

(declare-fun array_inv!38972 (array!104099) Bool)

(assert (=> start!133664 (and (array_inv!38972 _values!487) e!870655)))

(declare-fun b!1562374 () Bool)

(declare-fun e!870654 () Bool)

(assert (=> b!1562374 (= e!870654 tp_is_empty!38715)))

(declare-fun mapNonEmpty!59448 () Bool)

(declare-fun tp!113272 () Bool)

(assert (=> mapNonEmpty!59448 (= mapRes!59448 (and tp!113272 e!870656))))

(declare-fun mapRest!59448 () (Array (_ BitVec 32) ValueCell!18327))

(declare-fun mapValue!59448 () ValueCell!18327)

(declare-fun mapKey!59448 () (_ BitVec 32))

(assert (=> mapNonEmpty!59448 (= (arr!50237 _values!487) (store mapRest!59448 mapKey!59448 mapValue!59448))))

(declare-fun b!1562375 () Bool)

(declare-fun res!1068295 () Bool)

(assert (=> b!1562375 (=> (not res!1068295) (not e!870653))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104097 (_ BitVec 32)) Bool)

(assert (=> b!1562375 (= res!1068295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562376 () Bool)

(assert (=> b!1562376 (= e!870655 (and e!870654 mapRes!59448))))

(declare-fun condMapEmpty!59448 () Bool)

(declare-fun mapDefault!59448 () ValueCell!18327)

(assert (=> b!1562376 (= condMapEmpty!59448 (= (arr!50237 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18327)) mapDefault!59448)))))

(assert (= (and start!133664 res!1068296) b!1562371))

(assert (= (and b!1562371 res!1068294) b!1562375))

(assert (= (and b!1562375 res!1068295) b!1562372))

(assert (= (and b!1562372 res!1068297) b!1562373))

(assert (= (and b!1562373 res!1068299) b!1562368))

(assert (= (and b!1562368 res!1068298) b!1562370))

(assert (= (and b!1562376 condMapEmpty!59448) mapIsEmpty!59448))

(assert (= (and b!1562376 (not condMapEmpty!59448)) mapNonEmpty!59448))

(get-info :version)

(assert (= (and mapNonEmpty!59448 ((_ is ValueCellFull!18327) mapValue!59448)) b!1562369))

(assert (= (and b!1562376 ((_ is ValueCellFull!18327) mapDefault!59448)) b!1562374))

(assert (= start!133664 b!1562376))

(declare-fun b_lambda!24933 () Bool)

(assert (=> (not b_lambda!24933) (not b!1562370)))

(declare-fun t!51488 () Bool)

(declare-fun tb!12601 () Bool)

(assert (=> (and start!133664 (= defaultEntry!495 defaultEntry!495) t!51488) tb!12601))

(declare-fun result!26475 () Bool)

(assert (=> tb!12601 (= result!26475 tp_is_empty!38715)))

(assert (=> b!1562370 t!51488))

(declare-fun b_and!51621 () Bool)

(assert (= b_and!51619 (and (=> t!51488 result!26475) b_and!51621)))

(declare-fun m!1438179 () Bool)

(assert (=> mapNonEmpty!59448 m!1438179))

(declare-fun m!1438181 () Bool)

(assert (=> b!1562370 m!1438181))

(declare-fun m!1438183 () Bool)

(assert (=> b!1562370 m!1438183))

(declare-fun m!1438185 () Bool)

(assert (=> b!1562370 m!1438185))

(declare-fun m!1438187 () Bool)

(assert (=> b!1562370 m!1438187))

(declare-fun m!1438189 () Bool)

(assert (=> b!1562370 m!1438189))

(assert (=> b!1562370 m!1438183))

(declare-fun m!1438191 () Bool)

(assert (=> b!1562370 m!1438191))

(assert (=> b!1562370 m!1438181))

(declare-fun m!1438193 () Bool)

(assert (=> b!1562370 m!1438193))

(declare-fun m!1438195 () Bool)

(assert (=> b!1562370 m!1438195))

(declare-fun m!1438197 () Bool)

(assert (=> b!1562370 m!1438197))

(assert (=> b!1562370 m!1438195))

(assert (=> b!1562368 m!1438195))

(assert (=> b!1562368 m!1438195))

(declare-fun m!1438199 () Bool)

(assert (=> b!1562368 m!1438199))

(declare-fun m!1438201 () Bool)

(assert (=> b!1562372 m!1438201))

(declare-fun m!1438203 () Bool)

(assert (=> b!1562375 m!1438203))

(declare-fun m!1438205 () Bool)

(assert (=> start!133664 m!1438205))

(declare-fun m!1438207 () Bool)

(assert (=> start!133664 m!1438207))

(declare-fun m!1438209 () Bool)

(assert (=> start!133664 m!1438209))

(check-sat (not b_lambda!24933) tp_is_empty!38715 (not b!1562375) b_and!51621 (not start!133664) (not b!1562370) (not mapNonEmpty!59448) (not b!1562372) (not b_next!32049) (not b!1562368))
(check-sat b_and!51621 (not b_next!32049))
