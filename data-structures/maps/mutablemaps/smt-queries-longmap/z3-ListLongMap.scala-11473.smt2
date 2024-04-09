; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133670 () Bool)

(assert start!133670)

(declare-fun b_free!32055 () Bool)

(declare-fun b_next!32055 () Bool)

(assert (=> start!133670 (= b_free!32055 (not b_next!32055))))

(declare-fun tp!113289 () Bool)

(declare-fun b_and!51631 () Bool)

(assert (=> start!133670 (= tp!113289 b_and!51631)))

(declare-fun mapIsEmpty!59457 () Bool)

(declare-fun mapRes!59457 () Bool)

(assert (=> mapIsEmpty!59457 mapRes!59457))

(declare-fun res!1068351 () Bool)

(declare-fun e!870700 () Bool)

(assert (=> start!133670 (=> (not res!1068351) (not e!870700))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133670 (= res!1068351 (validMask!0 mask!947))))

(assert (=> start!133670 e!870700))

(assert (=> start!133670 tp!113289))

(declare-fun tp_is_empty!38721 () Bool)

(assert (=> start!133670 tp_is_empty!38721))

(assert (=> start!133670 true))

(declare-datatypes ((array!104107 0))(
  ( (array!104108 (arr!50241 (Array (_ BitVec 32) (_ BitVec 64))) (size!50792 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104107)

(declare-fun array_inv!38975 (array!104107) Bool)

(assert (=> start!133670 (array_inv!38975 _keys!637)))

(declare-datatypes ((V!59835 0))(
  ( (V!59836 (val!19444 Int)) )
))
(declare-datatypes ((ValueCell!18330 0))(
  ( (ValueCellFull!18330 (v!22193 V!59835)) (EmptyCell!18330) )
))
(declare-datatypes ((array!104109 0))(
  ( (array!104110 (arr!50242 (Array (_ BitVec 32) ValueCell!18330)) (size!50793 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104109)

(declare-fun e!870699 () Bool)

(declare-fun array_inv!38976 (array!104109) Bool)

(assert (=> start!133670 (and (array_inv!38976 _values!487) e!870699)))

(declare-fun b!1562455 () Bool)

(declare-fun e!870697 () Bool)

(assert (=> b!1562455 (= e!870697 tp_is_empty!38721)))

(declare-fun mapNonEmpty!59457 () Bool)

(declare-fun tp!113290 () Bool)

(assert (=> mapNonEmpty!59457 (= mapRes!59457 (and tp!113290 e!870697))))

(declare-fun mapKey!59457 () (_ BitVec 32))

(declare-fun mapValue!59457 () ValueCell!18330)

(declare-fun mapRest!59457 () (Array (_ BitVec 32) ValueCell!18330))

(assert (=> mapNonEmpty!59457 (= (arr!50242 _values!487) (store mapRest!59457 mapKey!59457 mapValue!59457))))

(declare-fun b!1562456 () Bool)

(declare-fun e!870701 () Bool)

(assert (=> b!1562456 (= e!870699 (and e!870701 mapRes!59457))))

(declare-fun condMapEmpty!59457 () Bool)

(declare-fun mapDefault!59457 () ValueCell!18330)

(assert (=> b!1562456 (= condMapEmpty!59457 (= (arr!50242 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18330)) mapDefault!59457)))))

(declare-fun b!1562457 () Bool)

(declare-fun res!1068352 () Bool)

(assert (=> b!1562457 (=> (not res!1068352) (not e!870700))))

(declare-datatypes ((List!36647 0))(
  ( (Nil!36644) (Cons!36643 (h!38090 (_ BitVec 64)) (t!51499 List!36647)) )
))
(declare-fun arrayNoDuplicates!0 (array!104107 (_ BitVec 32) List!36647) Bool)

(assert (=> b!1562457 (= res!1068352 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36644))))

(declare-fun b!1562458 () Bool)

(declare-fun res!1068353 () Bool)

(assert (=> b!1562458 (=> (not res!1068353) (not e!870700))))

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1562458 (= res!1068353 (validKeyInArray!0 (select (arr!50241 _keys!637) from!782)))))

(declare-fun b!1562459 () Bool)

(declare-fun res!1068348 () Bool)

(assert (=> b!1562459 (=> (not res!1068348) (not e!870700))))

(assert (=> b!1562459 (= res!1068348 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50792 _keys!637)) (bvslt from!782 (size!50792 _keys!637))))))

(declare-fun b!1562460 () Bool)

(declare-fun res!1068350 () Bool)

(assert (=> b!1562460 (=> (not res!1068350) (not e!870700))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1562460 (= res!1068350 (and (= (size!50793 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50792 _keys!637) (size!50793 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562461 () Bool)

(declare-fun res!1068349 () Bool)

(assert (=> b!1562461 (=> (not res!1068349) (not e!870700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104107 (_ BitVec 32)) Bool)

(assert (=> b!1562461 (= res!1068349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562462 () Bool)

(assert (=> b!1562462 (= e!870700 (not true))))

(declare-fun lt!671661 () Bool)

(declare-datatypes ((tuple2!25272 0))(
  ( (tuple2!25273 (_1!12646 (_ BitVec 64)) (_2!12646 V!59835)) )
))
(declare-datatypes ((List!36648 0))(
  ( (Nil!36645) (Cons!36644 (h!38091 tuple2!25272) (t!51500 List!36648)) )
))
(declare-datatypes ((ListLongMap!22719 0))(
  ( (ListLongMap!22720 (toList!11375 List!36648)) )
))
(declare-fun lt!671660 () ListLongMap!22719)

(declare-fun contains!10295 (ListLongMap!22719 (_ BitVec 64)) Bool)

(assert (=> b!1562462 (= lt!671661 (contains!10295 lt!671660 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1562462 (not (contains!10295 lt!671660 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671659 () V!59835)

(declare-fun lt!671658 () ListLongMap!22719)

(declare-fun +!5029 (ListLongMap!22719 tuple2!25272) ListLongMap!22719)

(assert (=> b!1562462 (= lt!671660 (+!5029 lt!671658 (tuple2!25273 (select (arr!50241 _keys!637) from!782) lt!671659)))))

(declare-datatypes ((Unit!51922 0))(
  ( (Unit!51923) )
))
(declare-fun lt!671657 () Unit!51922)

(declare-fun addStillNotContains!565 (ListLongMap!22719 (_ BitVec 64) V!59835 (_ BitVec 64)) Unit!51922)

(assert (=> b!1562462 (= lt!671657 (addStillNotContains!565 lt!671658 (select (arr!50241 _keys!637) from!782) lt!671659 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26287 (ValueCell!18330 V!59835) V!59835)

(declare-fun dynLambda!3918 (Int (_ BitVec 64)) V!59835)

(assert (=> b!1562462 (= lt!671659 (get!26287 (select (arr!50242 _values!487) from!782) (dynLambda!3918 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59835)

(declare-fun minValue!453 () V!59835)

(declare-fun getCurrentListMapNoExtraKeys!6735 (array!104107 array!104109 (_ BitVec 32) (_ BitVec 32) V!59835 V!59835 (_ BitVec 32) Int) ListLongMap!22719)

(assert (=> b!1562462 (= lt!671658 (getCurrentListMapNoExtraKeys!6735 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1562463 () Bool)

(assert (=> b!1562463 (= e!870701 tp_is_empty!38721)))

(assert (= (and start!133670 res!1068351) b!1562460))

(assert (= (and b!1562460 res!1068350) b!1562461))

(assert (= (and b!1562461 res!1068349) b!1562457))

(assert (= (and b!1562457 res!1068352) b!1562459))

(assert (= (and b!1562459 res!1068348) b!1562458))

(assert (= (and b!1562458 res!1068353) b!1562462))

(assert (= (and b!1562456 condMapEmpty!59457) mapIsEmpty!59457))

(assert (= (and b!1562456 (not condMapEmpty!59457)) mapNonEmpty!59457))

(get-info :version)

(assert (= (and mapNonEmpty!59457 ((_ is ValueCellFull!18330) mapValue!59457)) b!1562455))

(assert (= (and b!1562456 ((_ is ValueCellFull!18330) mapDefault!59457)) b!1562463))

(assert (= start!133670 b!1562456))

(declare-fun b_lambda!24939 () Bool)

(assert (=> (not b_lambda!24939) (not b!1562462)))

(declare-fun t!51498 () Bool)

(declare-fun tb!12607 () Bool)

(assert (=> (and start!133670 (= defaultEntry!495 defaultEntry!495) t!51498) tb!12607))

(declare-fun result!26487 () Bool)

(assert (=> tb!12607 (= result!26487 tp_is_empty!38721)))

(assert (=> b!1562462 t!51498))

(declare-fun b_and!51633 () Bool)

(assert (= b_and!51631 (and (=> t!51498 result!26487) b_and!51633)))

(declare-fun m!1438275 () Bool)

(assert (=> b!1562461 m!1438275))

(declare-fun m!1438277 () Bool)

(assert (=> b!1562462 m!1438277))

(declare-fun m!1438279 () Bool)

(assert (=> b!1562462 m!1438279))

(declare-fun m!1438281 () Bool)

(assert (=> b!1562462 m!1438281))

(assert (=> b!1562462 m!1438277))

(declare-fun m!1438283 () Bool)

(assert (=> b!1562462 m!1438283))

(declare-fun m!1438285 () Bool)

(assert (=> b!1562462 m!1438285))

(declare-fun m!1438287 () Bool)

(assert (=> b!1562462 m!1438287))

(assert (=> b!1562462 m!1438279))

(assert (=> b!1562462 m!1438285))

(declare-fun m!1438289 () Bool)

(assert (=> b!1562462 m!1438289))

(declare-fun m!1438291 () Bool)

(assert (=> b!1562462 m!1438291))

(declare-fun m!1438293 () Bool)

(assert (=> b!1562462 m!1438293))

(declare-fun m!1438295 () Bool)

(assert (=> mapNonEmpty!59457 m!1438295))

(declare-fun m!1438297 () Bool)

(assert (=> start!133670 m!1438297))

(declare-fun m!1438299 () Bool)

(assert (=> start!133670 m!1438299))

(declare-fun m!1438301 () Bool)

(assert (=> start!133670 m!1438301))

(declare-fun m!1438303 () Bool)

(assert (=> b!1562457 m!1438303))

(assert (=> b!1562458 m!1438285))

(assert (=> b!1562458 m!1438285))

(declare-fun m!1438305 () Bool)

(assert (=> b!1562458 m!1438305))

(check-sat (not start!133670) (not b!1562458) (not b_lambda!24939) (not b_next!32055) (not b!1562457) (not mapNonEmpty!59457) (not b!1562461) b_and!51633 (not b!1562462) tp_is_empty!38721)
(check-sat b_and!51633 (not b_next!32055))
