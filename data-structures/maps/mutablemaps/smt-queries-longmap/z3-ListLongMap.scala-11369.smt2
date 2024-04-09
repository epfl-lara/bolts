; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132152 () Bool)

(assert start!132152)

(declare-fun b_free!31833 () Bool)

(declare-fun b_next!31833 () Bool)

(assert (=> start!132152 (= b_free!31833 (not b_next!31833))))

(declare-fun tp!111751 () Bool)

(declare-fun b_and!51253 () Bool)

(assert (=> start!132152 (= tp!111751 b_and!51253)))

(declare-fun bm!70469 () Bool)

(declare-datatypes ((V!59255 0))(
  ( (V!59256 (val!19132 Int)) )
))
(declare-datatypes ((tuple2!24786 0))(
  ( (tuple2!24787 (_1!12403 (_ BitVec 64)) (_2!12403 V!59255)) )
))
(declare-datatypes ((List!36283 0))(
  ( (Nil!36280) (Cons!36279 (h!37725 tuple2!24786) (t!50984 List!36283)) )
))
(declare-datatypes ((ListLongMap!22407 0))(
  ( (ListLongMap!22408 (toList!11219 List!36283)) )
))
(declare-fun call!70472 () ListLongMap!22407)

(declare-fun call!70474 () ListLongMap!22407)

(assert (=> bm!70469 (= call!70472 call!70474)))

(declare-fun b!1549306 () Bool)

(declare-fun res!1061566 () Bool)

(declare-fun e!862425 () Bool)

(assert (=> b!1549306 (=> (not res!1061566) (not e!862425))))

(declare-datatypes ((array!103379 0))(
  ( (array!103380 (arr!49887 (Array (_ BitVec 32) (_ BitVec 64))) (size!50438 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103379)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1549306 (= res!1061566 (validKeyInArray!0 (select (arr!49887 _keys!618) from!762)))))

(declare-fun b!1549307 () Bool)

(declare-fun res!1061569 () Bool)

(declare-fun e!862426 () Bool)

(assert (=> b!1549307 (=> (not res!1061569) (not e!862426))))

(assert (=> b!1549307 (= res!1061569 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50438 _keys!618))))))

(declare-fun b!1549308 () Bool)

(declare-fun c!142311 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun lt!667779 () Bool)

(assert (=> b!1549308 (= c!142311 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!667779))))

(declare-fun e!862429 () ListLongMap!22407)

(declare-fun e!862428 () ListLongMap!22407)

(assert (=> b!1549308 (= e!862429 e!862428)))

(declare-fun bm!70470 () Bool)

(declare-fun call!70475 () ListLongMap!22407)

(assert (=> bm!70470 (= call!70474 call!70475)))

(declare-fun bm!70471 () Bool)

(declare-fun call!70473 () ListLongMap!22407)

(declare-fun call!70476 () ListLongMap!22407)

(assert (=> bm!70471 (= call!70473 call!70476)))

(declare-fun b!1549309 () Bool)

(assert (=> b!1549309 (= e!862425 (not true))))

(declare-fun lt!667781 () ListLongMap!22407)

(declare-fun lt!667787 () Bool)

(declare-fun contains!10099 (ListLongMap!22407 (_ BitVec 64)) Bool)

(assert (=> b!1549309 (= lt!667787 (contains!10099 lt!667781 (select (arr!49887 _keys!618) from!762)))))

(declare-fun lt!667785 () ListLongMap!22407)

(declare-fun lt!667782 () V!59255)

(declare-fun apply!1115 (ListLongMap!22407 (_ BitVec 64)) V!59255)

(assert (=> b!1549309 (= (apply!1115 lt!667785 (select (arr!49887 _keys!618) from!762)) lt!667782)))

(declare-fun zeroValue!436 () V!59255)

(declare-datatypes ((Unit!51560 0))(
  ( (Unit!51561) )
))
(declare-fun lt!667778 () Unit!51560)

(declare-fun addApplyDifferent!618 (ListLongMap!22407 (_ BitVec 64) V!59255 (_ BitVec 64)) Unit!51560)

(assert (=> b!1549309 (= lt!667778 (addApplyDifferent!618 lt!667781 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49887 _keys!618) from!762)))))

(declare-fun lt!667784 () V!59255)

(assert (=> b!1549309 (= lt!667784 lt!667782)))

(assert (=> b!1549309 (= lt!667782 (apply!1115 lt!667781 (select (arr!49887 _keys!618) from!762)))))

(declare-fun minValue!436 () V!59255)

(declare-fun +!4935 (ListLongMap!22407 tuple2!24786) ListLongMap!22407)

(assert (=> b!1549309 (= lt!667784 (apply!1115 (+!4935 lt!667781 (tuple2!24787 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49887 _keys!618) from!762)))))

(declare-fun lt!667786 () Unit!51560)

(assert (=> b!1549309 (= lt!667786 (addApplyDifferent!618 lt!667781 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49887 _keys!618) from!762)))))

(assert (=> b!1549309 (contains!10099 lt!667785 (select (arr!49887 _keys!618) from!762))))

(assert (=> b!1549309 (= lt!667785 (+!4935 lt!667781 (tuple2!24787 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667783 () Unit!51560)

(declare-fun addStillContains!1281 (ListLongMap!22407 (_ BitVec 64) V!59255 (_ BitVec 64)) Unit!51560)

(assert (=> b!1549309 (= lt!667783 (addStillContains!1281 lt!667781 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49887 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18144 0))(
  ( (ValueCellFull!18144 (v!21930 V!59255)) (EmptyCell!18144) )
))
(declare-datatypes ((array!103381 0))(
  ( (array!103382 (arr!49888 (Array (_ BitVec 32) ValueCell!18144)) (size!50439 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103381)

(declare-fun getCurrentListMapNoExtraKeys!6655 (array!103379 array!103381 (_ BitVec 32) (_ BitVec 32) V!59255 V!59255 (_ BitVec 32) Int) ListLongMap!22407)

(assert (=> b!1549309 (= lt!667781 (getCurrentListMapNoExtraKeys!6655 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapNonEmpty!58867 () Bool)

(declare-fun mapRes!58867 () Bool)

(declare-fun tp!111752 () Bool)

(declare-fun e!862422 () Bool)

(assert (=> mapNonEmpty!58867 (= mapRes!58867 (and tp!111752 e!862422))))

(declare-fun mapRest!58867 () (Array (_ BitVec 32) ValueCell!18144))

(declare-fun mapKey!58867 () (_ BitVec 32))

(declare-fun mapValue!58867 () ValueCell!18144)

(assert (=> mapNonEmpty!58867 (= (arr!49888 _values!470) (store mapRest!58867 mapKey!58867 mapValue!58867))))

(declare-fun b!1549310 () Bool)

(declare-fun e!862423 () Bool)

(declare-fun e!862424 () Bool)

(assert (=> b!1549310 (= e!862423 (and e!862424 mapRes!58867))))

(declare-fun condMapEmpty!58867 () Bool)

(declare-fun mapDefault!58867 () ValueCell!18144)

(assert (=> b!1549310 (= condMapEmpty!58867 (= (arr!49888 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18144)) mapDefault!58867)))))

(declare-fun b!1549311 () Bool)

(assert (=> b!1549311 (= e!862429 call!70473)))

(declare-fun b!1549312 () Bool)

(assert (=> b!1549312 (= e!862426 e!862425)))

(declare-fun res!1061568 () Bool)

(assert (=> b!1549312 (=> (not res!1061568) (not e!862425))))

(assert (=> b!1549312 (= res!1061568 (bvslt from!762 (size!50438 _keys!618)))))

(declare-fun lt!667780 () ListLongMap!22407)

(declare-fun e!862421 () ListLongMap!22407)

(assert (=> b!1549312 (= lt!667780 e!862421)))

(declare-fun c!142312 () Bool)

(assert (=> b!1549312 (= c!142312 (and (not lt!667779) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1549312 (= lt!667779 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1549313 () Bool)

(assert (=> b!1549313 (= e!862421 e!862429)))

(declare-fun c!142313 () Bool)

(assert (=> b!1549313 (= c!142313 (and (not lt!667779) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1549314 () Bool)

(assert (=> b!1549314 (= e!862421 (+!4935 call!70476 (tuple2!24787 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1549315 () Bool)

(declare-fun tp_is_empty!38109 () Bool)

(assert (=> b!1549315 (= e!862422 tp_is_empty!38109)))

(declare-fun b!1549316 () Bool)

(assert (=> b!1549316 (= e!862428 call!70473)))

(declare-fun b!1549317 () Bool)

(assert (=> b!1549317 (= e!862424 tp_is_empty!38109)))

(declare-fun bm!70472 () Bool)

(assert (=> bm!70472 (= call!70475 (getCurrentListMapNoExtraKeys!6655 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun res!1061570 () Bool)

(assert (=> start!132152 (=> (not res!1061570) (not e!862426))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132152 (= res!1061570 (validMask!0 mask!926))))

(assert (=> start!132152 e!862426))

(declare-fun array_inv!38717 (array!103379) Bool)

(assert (=> start!132152 (array_inv!38717 _keys!618)))

(assert (=> start!132152 tp_is_empty!38109))

(assert (=> start!132152 true))

(assert (=> start!132152 tp!111751))

(declare-fun array_inv!38718 (array!103381) Bool)

(assert (=> start!132152 (and (array_inv!38718 _values!470) e!862423)))

(declare-fun b!1549318 () Bool)

(declare-fun res!1061567 () Bool)

(assert (=> b!1549318 (=> (not res!1061567) (not e!862426))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103379 (_ BitVec 32)) Bool)

(assert (=> b!1549318 (= res!1061567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1549319 () Bool)

(assert (=> b!1549319 (= e!862428 call!70472)))

(declare-fun bm!70473 () Bool)

(assert (=> bm!70473 (= call!70476 (+!4935 (ite c!142312 call!70475 (ite c!142313 call!70474 call!70472)) (ite (or c!142312 c!142313) (tuple2!24787 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24787 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun mapIsEmpty!58867 () Bool)

(assert (=> mapIsEmpty!58867 mapRes!58867))

(declare-fun b!1549320 () Bool)

(declare-fun res!1061564 () Bool)

(assert (=> b!1549320 (=> (not res!1061564) (not e!862426))))

(assert (=> b!1549320 (= res!1061564 (and (= (size!50439 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50438 _keys!618) (size!50439 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1549321 () Bool)

(declare-fun res!1061565 () Bool)

(assert (=> b!1549321 (=> (not res!1061565) (not e!862426))))

(declare-datatypes ((List!36284 0))(
  ( (Nil!36281) (Cons!36280 (h!37726 (_ BitVec 64)) (t!50985 List!36284)) )
))
(declare-fun arrayNoDuplicates!0 (array!103379 (_ BitVec 32) List!36284) Bool)

(assert (=> b!1549321 (= res!1061565 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36281))))

(assert (= (and start!132152 res!1061570) b!1549320))

(assert (= (and b!1549320 res!1061564) b!1549318))

(assert (= (and b!1549318 res!1061567) b!1549321))

(assert (= (and b!1549321 res!1061565) b!1549307))

(assert (= (and b!1549307 res!1061569) b!1549312))

(assert (= (and b!1549312 c!142312) b!1549314))

(assert (= (and b!1549312 (not c!142312)) b!1549313))

(assert (= (and b!1549313 c!142313) b!1549311))

(assert (= (and b!1549313 (not c!142313)) b!1549308))

(assert (= (and b!1549308 c!142311) b!1549316))

(assert (= (and b!1549308 (not c!142311)) b!1549319))

(assert (= (or b!1549316 b!1549319) bm!70469))

(assert (= (or b!1549311 bm!70469) bm!70470))

(assert (= (or b!1549311 b!1549316) bm!70471))

(assert (= (or b!1549314 bm!70470) bm!70472))

(assert (= (or b!1549314 bm!70471) bm!70473))

(assert (= (and b!1549312 res!1061568) b!1549306))

(assert (= (and b!1549306 res!1061566) b!1549309))

(assert (= (and b!1549310 condMapEmpty!58867) mapIsEmpty!58867))

(assert (= (and b!1549310 (not condMapEmpty!58867)) mapNonEmpty!58867))

(get-info :version)

(assert (= (and mapNonEmpty!58867 ((_ is ValueCellFull!18144) mapValue!58867)) b!1549315))

(assert (= (and b!1549310 ((_ is ValueCellFull!18144) mapDefault!58867)) b!1549317))

(assert (= start!132152 b!1549310))

(declare-fun m!1428595 () Bool)

(assert (=> bm!70472 m!1428595))

(declare-fun m!1428597 () Bool)

(assert (=> b!1549314 m!1428597))

(declare-fun m!1428599 () Bool)

(assert (=> bm!70473 m!1428599))

(declare-fun m!1428601 () Bool)

(assert (=> b!1549306 m!1428601))

(assert (=> b!1549306 m!1428601))

(declare-fun m!1428603 () Bool)

(assert (=> b!1549306 m!1428603))

(declare-fun m!1428605 () Bool)

(assert (=> mapNonEmpty!58867 m!1428605))

(declare-fun m!1428607 () Bool)

(assert (=> start!132152 m!1428607))

(declare-fun m!1428609 () Bool)

(assert (=> start!132152 m!1428609))

(declare-fun m!1428611 () Bool)

(assert (=> start!132152 m!1428611))

(assert (=> b!1549309 m!1428595))

(assert (=> b!1549309 m!1428601))

(assert (=> b!1549309 m!1428601))

(declare-fun m!1428613 () Bool)

(assert (=> b!1549309 m!1428613))

(assert (=> b!1549309 m!1428601))

(declare-fun m!1428615 () Bool)

(assert (=> b!1549309 m!1428615))

(assert (=> b!1549309 m!1428601))

(declare-fun m!1428617 () Bool)

(assert (=> b!1549309 m!1428617))

(assert (=> b!1549309 m!1428601))

(declare-fun m!1428619 () Bool)

(assert (=> b!1549309 m!1428619))

(assert (=> b!1549309 m!1428601))

(declare-fun m!1428621 () Bool)

(assert (=> b!1549309 m!1428621))

(declare-fun m!1428623 () Bool)

(assert (=> b!1549309 m!1428623))

(assert (=> b!1549309 m!1428601))

(declare-fun m!1428625 () Bool)

(assert (=> b!1549309 m!1428625))

(assert (=> b!1549309 m!1428623))

(assert (=> b!1549309 m!1428601))

(declare-fun m!1428627 () Bool)

(assert (=> b!1549309 m!1428627))

(assert (=> b!1549309 m!1428601))

(declare-fun m!1428629 () Bool)

(assert (=> b!1549309 m!1428629))

(declare-fun m!1428631 () Bool)

(assert (=> b!1549309 m!1428631))

(declare-fun m!1428633 () Bool)

(assert (=> b!1549321 m!1428633))

(declare-fun m!1428635 () Bool)

(assert (=> b!1549318 m!1428635))

(check-sat (not start!132152) (not b!1549321) (not b_next!31833) tp_is_empty!38109 (not bm!70473) (not bm!70472) (not mapNonEmpty!58867) (not b!1549318) (not b!1549314) (not b!1549309) (not b!1549306) b_and!51253)
(check-sat b_and!51253 (not b_next!31833))
