; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132286 () Bool)

(assert start!132286)

(declare-fun b_free!31905 () Bool)

(declare-fun b_next!31905 () Bool)

(assert (=> start!132286 (= b_free!31905 (not b_next!31905))))

(declare-fun tp!111977 () Bool)

(declare-fun b_and!51349 () Bool)

(assert (=> start!132286 (= tp!111977 b_and!51349)))

(declare-fun b!1551483 () Bool)

(declare-fun e!863699 () Bool)

(declare-fun e!863704 () Bool)

(assert (=> b!1551483 (= e!863699 (not e!863704))))

(declare-fun res!1062527 () Bool)

(assert (=> b!1551483 (=> (not res!1062527) (not e!863704))))

(declare-datatypes ((array!103519 0))(
  ( (array!103520 (arr!49954 (Array (_ BitVec 32) (_ BitVec 64))) (size!50505 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103519)

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((V!59351 0))(
  ( (V!59352 (val!19168 Int)) )
))
(declare-datatypes ((tuple2!24852 0))(
  ( (tuple2!24853 (_1!12436 (_ BitVec 64)) (_2!12436 V!59351)) )
))
(declare-datatypes ((List!36335 0))(
  ( (Nil!36332) (Cons!36331 (h!37777 tuple2!24852) (t!51054 List!36335)) )
))
(declare-datatypes ((ListLongMap!22473 0))(
  ( (ListLongMap!22474 (toList!11252 List!36335)) )
))
(declare-fun lt!668700 () ListLongMap!22473)

(declare-fun contains!10122 (ListLongMap!22473 (_ BitVec 64)) Bool)

(assert (=> b!1551483 (= res!1062527 (contains!10122 lt!668700 (select (arr!49954 _keys!618) from!762)))))

(declare-fun lt!668703 () V!59351)

(declare-fun lt!668702 () ListLongMap!22473)

(declare-fun apply!1127 (ListLongMap!22473 (_ BitVec 64)) V!59351)

(assert (=> b!1551483 (= (apply!1127 lt!668702 (select (arr!49954 _keys!618) from!762)) lt!668703)))

(declare-fun zeroValue!436 () V!59351)

(declare-datatypes ((Unit!51605 0))(
  ( (Unit!51606) )
))
(declare-fun lt!668697 () Unit!51605)

(declare-fun addApplyDifferent!628 (ListLongMap!22473 (_ BitVec 64) V!59351 (_ BitVec 64)) Unit!51605)

(assert (=> b!1551483 (= lt!668697 (addApplyDifferent!628 lt!668700 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49954 _keys!618) from!762)))))

(declare-fun lt!668699 () V!59351)

(assert (=> b!1551483 (= lt!668699 lt!668703)))

(assert (=> b!1551483 (= lt!668703 (apply!1127 lt!668700 (select (arr!49954 _keys!618) from!762)))))

(declare-fun minValue!436 () V!59351)

(declare-fun +!4959 (ListLongMap!22473 tuple2!24852) ListLongMap!22473)

(assert (=> b!1551483 (= lt!668699 (apply!1127 (+!4959 lt!668700 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49954 _keys!618) from!762)))))

(declare-fun lt!668698 () Unit!51605)

(assert (=> b!1551483 (= lt!668698 (addApplyDifferent!628 lt!668700 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49954 _keys!618) from!762)))))

(assert (=> b!1551483 (contains!10122 lt!668702 (select (arr!49954 _keys!618) from!762))))

(assert (=> b!1551483 (= lt!668702 (+!4959 lt!668700 (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!668696 () Unit!51605)

(declare-fun addStillContains!1295 (ListLongMap!22473 (_ BitVec 64) V!59351 (_ BitVec 64)) Unit!51605)

(assert (=> b!1551483 (= lt!668696 (addStillContains!1295 lt!668700 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49954 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18180 0))(
  ( (ValueCellFull!18180 (v!21969 V!59351)) (EmptyCell!18180) )
))
(declare-datatypes ((array!103521 0))(
  ( (array!103522 (arr!49955 (Array (_ BitVec 32) ValueCell!18180)) (size!50506 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103521)

(declare-fun getCurrentListMapNoExtraKeys!6677 (array!103519 array!103521 (_ BitVec 32) (_ BitVec 32) V!59351 V!59351 (_ BitVec 32) Int) ListLongMap!22473)

(assert (=> b!1551483 (= lt!668700 (getCurrentListMapNoExtraKeys!6677 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1551484 () Bool)

(declare-fun e!863706 () Bool)

(declare-fun tp_is_empty!38181 () Bool)

(assert (=> b!1551484 (= e!863706 tp_is_empty!38181)))

(declare-fun b!1551485 () Bool)

(declare-fun e!863708 () Bool)

(assert (=> b!1551485 (= e!863708 tp_is_empty!38181)))

(declare-fun b!1551486 () Bool)

(declare-fun res!1062522 () Bool)

(declare-fun e!863703 () Bool)

(assert (=> b!1551486 (=> (not res!1062522) (not e!863703))))

(declare-datatypes ((List!36336 0))(
  ( (Nil!36333) (Cons!36332 (h!37778 (_ BitVec 64)) (t!51055 List!36336)) )
))
(declare-fun arrayNoDuplicates!0 (array!103519 (_ BitVec 32) List!36336) Bool)

(assert (=> b!1551486 (= res!1062522 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36333))))

(declare-fun call!71049 () ListLongMap!22473)

(declare-fun call!71050 () ListLongMap!22473)

(declare-fun c!142737 () Bool)

(declare-fun call!71052 () ListLongMap!22473)

(declare-fun call!71048 () ListLongMap!22473)

(declare-fun bm!71045 () Bool)

(declare-fun c!142736 () Bool)

(assert (=> bm!71045 (= call!71048 (+!4959 (ite c!142736 call!71052 (ite c!142737 call!71050 call!71049)) (ite (or c!142736 c!142737) (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1551487 () Bool)

(declare-fun e!863702 () ListLongMap!22473)

(declare-fun e!863701 () ListLongMap!22473)

(assert (=> b!1551487 (= e!863702 e!863701)))

(declare-fun lt!668704 () Bool)

(assert (=> b!1551487 (= c!142737 (and (not lt!668704) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1551489 () Bool)

(assert (=> b!1551489 (= e!863704 (not (= (select (arr!49954 _keys!618) from!762) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1551490 () Bool)

(declare-fun res!1062524 () Bool)

(assert (=> b!1551490 (=> (not res!1062524) (not e!863703))))

(assert (=> b!1551490 (= res!1062524 (and (= (size!50506 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50505 _keys!618) (size!50506 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1551491 () Bool)

(declare-fun res!1062525 () Bool)

(assert (=> b!1551491 (=> (not res!1062525) (not e!863699))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1551491 (= res!1062525 (validKeyInArray!0 (select (arr!49954 _keys!618) from!762)))))

(declare-fun b!1551492 () Bool)

(declare-fun call!71051 () ListLongMap!22473)

(assert (=> b!1551492 (= e!863701 call!71051)))

(declare-fun b!1551493 () Bool)

(declare-fun e!863705 () ListLongMap!22473)

(assert (=> b!1551493 (= e!863705 call!71051)))

(declare-fun bm!71046 () Bool)

(assert (=> bm!71046 (= call!71050 call!71052)))

(declare-fun mapNonEmpty!58984 () Bool)

(declare-fun mapRes!58984 () Bool)

(declare-fun tp!111976 () Bool)

(assert (=> mapNonEmpty!58984 (= mapRes!58984 (and tp!111976 e!863708))))

(declare-fun mapRest!58984 () (Array (_ BitVec 32) ValueCell!18180))

(declare-fun mapValue!58984 () ValueCell!18180)

(declare-fun mapKey!58984 () (_ BitVec 32))

(assert (=> mapNonEmpty!58984 (= (arr!49955 _values!470) (store mapRest!58984 mapKey!58984 mapValue!58984))))

(declare-fun b!1551494 () Bool)

(declare-fun e!863700 () Bool)

(assert (=> b!1551494 (= e!863700 (and e!863706 mapRes!58984))))

(declare-fun condMapEmpty!58984 () Bool)

(declare-fun mapDefault!58984 () ValueCell!18180)

(assert (=> b!1551494 (= condMapEmpty!58984 (= (arr!49955 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18180)) mapDefault!58984)))))

(declare-fun b!1551495 () Bool)

(declare-fun res!1062529 () Bool)

(assert (=> b!1551495 (=> (not res!1062529) (not e!863703))))

(assert (=> b!1551495 (= res!1062529 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50505 _keys!618))))))

(declare-fun bm!71047 () Bool)

(assert (=> bm!71047 (= call!71051 call!71048)))

(declare-fun mapIsEmpty!58984 () Bool)

(assert (=> mapIsEmpty!58984 mapRes!58984))

(declare-fun b!1551496 () Bool)

(declare-fun res!1062528 () Bool)

(assert (=> b!1551496 (=> (not res!1062528) (not e!863703))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103519 (_ BitVec 32)) Bool)

(assert (=> b!1551496 (= res!1062528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun bm!71048 () Bool)

(assert (=> bm!71048 (= call!71049 call!71050)))

(declare-fun bm!71049 () Bool)

(assert (=> bm!71049 (= call!71052 (getCurrentListMapNoExtraKeys!6677 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1551497 () Bool)

(assert (=> b!1551497 (= e!863705 call!71049)))

(declare-fun b!1551498 () Bool)

(assert (=> b!1551498 (= e!863702 (+!4959 call!71048 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1551499 () Bool)

(assert (=> b!1551499 (= e!863703 e!863699)))

(declare-fun res!1062526 () Bool)

(assert (=> b!1551499 (=> (not res!1062526) (not e!863699))))

(assert (=> b!1551499 (= res!1062526 (bvslt from!762 (size!50505 _keys!618)))))

(declare-fun lt!668701 () ListLongMap!22473)

(assert (=> b!1551499 (= lt!668701 e!863702)))

(assert (=> b!1551499 (= c!142736 (and (not lt!668704) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1551499 (= lt!668704 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun res!1062523 () Bool)

(assert (=> start!132286 (=> (not res!1062523) (not e!863703))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132286 (= res!1062523 (validMask!0 mask!926))))

(assert (=> start!132286 e!863703))

(declare-fun array_inv!38759 (array!103519) Bool)

(assert (=> start!132286 (array_inv!38759 _keys!618)))

(assert (=> start!132286 tp_is_empty!38181))

(assert (=> start!132286 true))

(assert (=> start!132286 tp!111977))

(declare-fun array_inv!38760 (array!103521) Bool)

(assert (=> start!132286 (and (array_inv!38760 _values!470) e!863700)))

(declare-fun b!1551488 () Bool)

(declare-fun c!142738 () Bool)

(assert (=> b!1551488 (= c!142738 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!668704))))

(assert (=> b!1551488 (= e!863701 e!863705)))

(assert (= (and start!132286 res!1062523) b!1551490))

(assert (= (and b!1551490 res!1062524) b!1551496))

(assert (= (and b!1551496 res!1062528) b!1551486))

(assert (= (and b!1551486 res!1062522) b!1551495))

(assert (= (and b!1551495 res!1062529) b!1551499))

(assert (= (and b!1551499 c!142736) b!1551498))

(assert (= (and b!1551499 (not c!142736)) b!1551487))

(assert (= (and b!1551487 c!142737) b!1551492))

(assert (= (and b!1551487 (not c!142737)) b!1551488))

(assert (= (and b!1551488 c!142738) b!1551493))

(assert (= (and b!1551488 (not c!142738)) b!1551497))

(assert (= (or b!1551493 b!1551497) bm!71048))

(assert (= (or b!1551492 bm!71048) bm!71046))

(assert (= (or b!1551492 b!1551493) bm!71047))

(assert (= (or b!1551498 bm!71046) bm!71049))

(assert (= (or b!1551498 bm!71047) bm!71045))

(assert (= (and b!1551499 res!1062526) b!1551491))

(assert (= (and b!1551491 res!1062525) b!1551483))

(assert (= (and b!1551483 res!1062527) b!1551489))

(assert (= (and b!1551494 condMapEmpty!58984) mapIsEmpty!58984))

(assert (= (and b!1551494 (not condMapEmpty!58984)) mapNonEmpty!58984))

(get-info :version)

(assert (= (and mapNonEmpty!58984 ((_ is ValueCellFull!18180) mapValue!58984)) b!1551485))

(assert (= (and b!1551494 ((_ is ValueCellFull!18180) mapDefault!58984)) b!1551484))

(assert (= start!132286 b!1551494))

(declare-fun m!1430171 () Bool)

(assert (=> bm!71049 m!1430171))

(declare-fun m!1430173 () Bool)

(assert (=> start!132286 m!1430173))

(declare-fun m!1430175 () Bool)

(assert (=> start!132286 m!1430175))

(declare-fun m!1430177 () Bool)

(assert (=> start!132286 m!1430177))

(declare-fun m!1430179 () Bool)

(assert (=> mapNonEmpty!58984 m!1430179))

(declare-fun m!1430181 () Bool)

(assert (=> b!1551496 m!1430181))

(declare-fun m!1430183 () Bool)

(assert (=> b!1551491 m!1430183))

(assert (=> b!1551491 m!1430183))

(declare-fun m!1430185 () Bool)

(assert (=> b!1551491 m!1430185))

(assert (=> b!1551489 m!1430183))

(declare-fun m!1430187 () Bool)

(assert (=> b!1551498 m!1430187))

(declare-fun m!1430189 () Bool)

(assert (=> bm!71045 m!1430189))

(declare-fun m!1430191 () Bool)

(assert (=> b!1551486 m!1430191))

(assert (=> b!1551483 m!1430171))

(assert (=> b!1551483 m!1430183))

(assert (=> b!1551483 m!1430183))

(declare-fun m!1430193 () Bool)

(assert (=> b!1551483 m!1430193))

(assert (=> b!1551483 m!1430183))

(declare-fun m!1430195 () Bool)

(assert (=> b!1551483 m!1430195))

(declare-fun m!1430197 () Bool)

(assert (=> b!1551483 m!1430197))

(assert (=> b!1551483 m!1430183))

(declare-fun m!1430199 () Bool)

(assert (=> b!1551483 m!1430199))

(assert (=> b!1551483 m!1430183))

(declare-fun m!1430201 () Bool)

(assert (=> b!1551483 m!1430201))

(assert (=> b!1551483 m!1430183))

(declare-fun m!1430203 () Bool)

(assert (=> b!1551483 m!1430203))

(assert (=> b!1551483 m!1430183))

(declare-fun m!1430205 () Bool)

(assert (=> b!1551483 m!1430205))

(assert (=> b!1551483 m!1430183))

(declare-fun m!1430207 () Bool)

(assert (=> b!1551483 m!1430207))

(declare-fun m!1430209 () Bool)

(assert (=> b!1551483 m!1430209))

(assert (=> b!1551483 m!1430197))

(assert (=> b!1551483 m!1430183))

(declare-fun m!1430211 () Bool)

(assert (=> b!1551483 m!1430211))

(check-sat (not start!132286) (not b!1551491) (not b!1551483) (not b_next!31905) (not bm!71045) (not b!1551496) tp_is_empty!38181 (not mapNonEmpty!58984) (not b!1551486) (not b!1551498) (not bm!71049) b_and!51349)
(check-sat b_and!51349 (not b_next!31905))
(get-model)

(declare-fun d!160915 () Bool)

(assert (=> d!160915 (= (validKeyInArray!0 (select (arr!49954 _keys!618) from!762)) (and (not (= (select (arr!49954 _keys!618) from!762) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49954 _keys!618) from!762) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1551491 d!160915))

(declare-fun bm!71067 () Bool)

(declare-fun call!71070 () Bool)

(declare-fun c!142750 () Bool)

(assert (=> bm!71067 (= call!71070 (arrayNoDuplicates!0 _keys!618 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!142750 (Cons!36332 (select (arr!49954 _keys!618) #b00000000000000000000000000000000) Nil!36333) Nil!36333)))))

(declare-fun b!1551561 () Bool)

(declare-fun e!863747 () Bool)

(declare-fun contains!10123 (List!36336 (_ BitVec 64)) Bool)

(assert (=> b!1551561 (= e!863747 (contains!10123 Nil!36333 (select (arr!49954 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun b!1551562 () Bool)

(declare-fun e!863750 () Bool)

(declare-fun e!863748 () Bool)

(assert (=> b!1551562 (= e!863750 e!863748)))

(assert (=> b!1551562 (= c!142750 (validKeyInArray!0 (select (arr!49954 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun d!160917 () Bool)

(declare-fun res!1062562 () Bool)

(declare-fun e!863749 () Bool)

(assert (=> d!160917 (=> res!1062562 e!863749)))

(assert (=> d!160917 (= res!1062562 (bvsge #b00000000000000000000000000000000 (size!50505 _keys!618)))))

(assert (=> d!160917 (= (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36333) e!863749)))

(declare-fun b!1551563 () Bool)

(assert (=> b!1551563 (= e!863749 e!863750)))

(declare-fun res!1062561 () Bool)

(assert (=> b!1551563 (=> (not res!1062561) (not e!863750))))

(assert (=> b!1551563 (= res!1062561 (not e!863747))))

(declare-fun res!1062560 () Bool)

(assert (=> b!1551563 (=> (not res!1062560) (not e!863747))))

(assert (=> b!1551563 (= res!1062560 (validKeyInArray!0 (select (arr!49954 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun b!1551564 () Bool)

(assert (=> b!1551564 (= e!863748 call!71070)))

(declare-fun b!1551565 () Bool)

(assert (=> b!1551565 (= e!863748 call!71070)))

(assert (= (and d!160917 (not res!1062562)) b!1551563))

(assert (= (and b!1551563 res!1062560) b!1551561))

(assert (= (and b!1551563 res!1062561) b!1551562))

(assert (= (and b!1551562 c!142750) b!1551564))

(assert (= (and b!1551562 (not c!142750)) b!1551565))

(assert (= (or b!1551564 b!1551565) bm!71067))

(declare-fun m!1430255 () Bool)

(assert (=> bm!71067 m!1430255))

(declare-fun m!1430257 () Bool)

(assert (=> bm!71067 m!1430257))

(assert (=> b!1551561 m!1430255))

(assert (=> b!1551561 m!1430255))

(declare-fun m!1430259 () Bool)

(assert (=> b!1551561 m!1430259))

(assert (=> b!1551562 m!1430255))

(assert (=> b!1551562 m!1430255))

(declare-fun m!1430261 () Bool)

(assert (=> b!1551562 m!1430261))

(assert (=> b!1551563 m!1430255))

(assert (=> b!1551563 m!1430255))

(assert (=> b!1551563 m!1430261))

(assert (=> b!1551486 d!160917))

(declare-fun d!160919 () Bool)

(declare-fun e!863753 () Bool)

(assert (=> d!160919 e!863753))

(declare-fun res!1062568 () Bool)

(assert (=> d!160919 (=> (not res!1062568) (not e!863753))))

(declare-fun lt!668740 () ListLongMap!22473)

(assert (=> d!160919 (= res!1062568 (contains!10122 lt!668740 (_1!12436 (ite (or c!142736 c!142737) (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun lt!668741 () List!36335)

(assert (=> d!160919 (= lt!668740 (ListLongMap!22474 lt!668741))))

(declare-fun lt!668742 () Unit!51605)

(declare-fun lt!668743 () Unit!51605)

(assert (=> d!160919 (= lt!668742 lt!668743)))

(declare-datatypes ((Option!808 0))(
  ( (Some!807 (v!21971 V!59351)) (None!806) )
))
(declare-fun getValueByKey!733 (List!36335 (_ BitVec 64)) Option!808)

(assert (=> d!160919 (= (getValueByKey!733 lt!668741 (_1!12436 (ite (or c!142736 c!142737) (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) (Some!807 (_2!12436 (ite (or c!142736 c!142737) (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!373 (List!36335 (_ BitVec 64) V!59351) Unit!51605)

(assert (=> d!160919 (= lt!668743 (lemmaContainsTupThenGetReturnValue!373 lt!668741 (_1!12436 (ite (or c!142736 c!142737) (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12436 (ite (or c!142736 c!142737) (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun insertStrictlySorted!502 (List!36335 (_ BitVec 64) V!59351) List!36335)

(assert (=> d!160919 (= lt!668741 (insertStrictlySorted!502 (toList!11252 (ite c!142736 call!71052 (ite c!142737 call!71050 call!71049))) (_1!12436 (ite (or c!142736 c!142737) (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12436 (ite (or c!142736 c!142737) (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!160919 (= (+!4959 (ite c!142736 call!71052 (ite c!142737 call!71050 call!71049)) (ite (or c!142736 c!142737) (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) lt!668740)))

(declare-fun b!1551570 () Bool)

(declare-fun res!1062567 () Bool)

(assert (=> b!1551570 (=> (not res!1062567) (not e!863753))))

(assert (=> b!1551570 (= res!1062567 (= (getValueByKey!733 (toList!11252 lt!668740) (_1!12436 (ite (or c!142736 c!142737) (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) (Some!807 (_2!12436 (ite (or c!142736 c!142737) (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun b!1551571 () Bool)

(declare-fun contains!10124 (List!36335 tuple2!24852) Bool)

(assert (=> b!1551571 (= e!863753 (contains!10124 (toList!11252 lt!668740) (ite (or c!142736 c!142737) (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (= (and d!160919 res!1062568) b!1551570))

(assert (= (and b!1551570 res!1062567) b!1551571))

(declare-fun m!1430263 () Bool)

(assert (=> d!160919 m!1430263))

(declare-fun m!1430265 () Bool)

(assert (=> d!160919 m!1430265))

(declare-fun m!1430267 () Bool)

(assert (=> d!160919 m!1430267))

(declare-fun m!1430269 () Bool)

(assert (=> d!160919 m!1430269))

(declare-fun m!1430271 () Bool)

(assert (=> b!1551570 m!1430271))

(declare-fun m!1430273 () Bool)

(assert (=> b!1551571 m!1430273))

(assert (=> bm!71045 d!160919))

(declare-fun bm!71070 () Bool)

(declare-fun call!71073 () ListLongMap!22473)

(assert (=> bm!71070 (= call!71073 (getCurrentListMapNoExtraKeys!6677 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 (bvadd from!762 #b00000000000000000000000000000001) defaultEntry!478))))

(declare-fun b!1551596 () Bool)

(declare-fun e!863770 () ListLongMap!22473)

(assert (=> b!1551596 (= e!863770 call!71073)))

(declare-fun b!1551597 () Bool)

(declare-fun e!863772 () ListLongMap!22473)

(assert (=> b!1551597 (= e!863772 e!863770)))

(declare-fun c!142761 () Bool)

(assert (=> b!1551597 (= c!142761 (validKeyInArray!0 (select (arr!49954 _keys!618) from!762)))))

(declare-fun b!1551598 () Bool)

(declare-fun e!863768 () Bool)

(declare-fun e!863769 () Bool)

(assert (=> b!1551598 (= e!863768 e!863769)))

(declare-fun c!142762 () Bool)

(assert (=> b!1551598 (= c!142762 (bvslt from!762 (size!50505 _keys!618)))))

(declare-fun b!1551599 () Bool)

(declare-fun e!863773 () Bool)

(assert (=> b!1551599 (= e!863773 (validKeyInArray!0 (select (arr!49954 _keys!618) from!762)))))

(assert (=> b!1551599 (bvsge from!762 #b00000000000000000000000000000000)))

(declare-fun b!1551600 () Bool)

(declare-fun e!863774 () Bool)

(assert (=> b!1551600 (= e!863774 e!863768)))

(declare-fun c!142760 () Bool)

(assert (=> b!1551600 (= c!142760 e!863773)))

(declare-fun res!1062579 () Bool)

(assert (=> b!1551600 (=> (not res!1062579) (not e!863773))))

(assert (=> b!1551600 (= res!1062579 (bvslt from!762 (size!50505 _keys!618)))))

(declare-fun b!1551601 () Bool)

(declare-fun e!863771 () Bool)

(assert (=> b!1551601 (= e!863768 e!863771)))

(assert (=> b!1551601 (and (bvsge from!762 #b00000000000000000000000000000000) (bvslt from!762 (size!50505 _keys!618)))))

(declare-fun lt!668758 () ListLongMap!22473)

(declare-fun res!1062580 () Bool)

(assert (=> b!1551601 (= res!1062580 (contains!10122 lt!668758 (select (arr!49954 _keys!618) from!762)))))

(assert (=> b!1551601 (=> (not res!1062580) (not e!863771))))

(declare-fun b!1551602 () Bool)

(declare-fun isEmpty!1133 (ListLongMap!22473) Bool)

(assert (=> b!1551602 (= e!863769 (isEmpty!1133 lt!668758))))

(declare-fun b!1551604 () Bool)

(declare-fun lt!668762 () Unit!51605)

(declare-fun lt!668760 () Unit!51605)

(assert (=> b!1551604 (= lt!668762 lt!668760)))

(declare-fun lt!668761 () (_ BitVec 64))

(declare-fun lt!668764 () V!59351)

(declare-fun lt!668759 () ListLongMap!22473)

(declare-fun lt!668763 () (_ BitVec 64))

(assert (=> b!1551604 (not (contains!10122 (+!4959 lt!668759 (tuple2!24853 lt!668763 lt!668764)) lt!668761))))

(declare-fun addStillNotContains!521 (ListLongMap!22473 (_ BitVec 64) V!59351 (_ BitVec 64)) Unit!51605)

(assert (=> b!1551604 (= lt!668760 (addStillNotContains!521 lt!668759 lt!668763 lt!668764 lt!668761))))

(assert (=> b!1551604 (= lt!668761 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!26051 (ValueCell!18180 V!59351) V!59351)

(declare-fun dynLambda!3873 (Int (_ BitVec 64)) V!59351)

(assert (=> b!1551604 (= lt!668764 (get!26051 (select (arr!49955 _values!470) from!762) (dynLambda!3873 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1551604 (= lt!668763 (select (arr!49954 _keys!618) from!762))))

(assert (=> b!1551604 (= lt!668759 call!71073)))

(assert (=> b!1551604 (= e!863770 (+!4959 call!71073 (tuple2!24853 (select (arr!49954 _keys!618) from!762) (get!26051 (select (arr!49955 _values!470) from!762) (dynLambda!3873 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1551605 () Bool)

(declare-fun res!1062577 () Bool)

(assert (=> b!1551605 (=> (not res!1062577) (not e!863774))))

(assert (=> b!1551605 (= res!1062577 (not (contains!10122 lt!668758 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1551606 () Bool)

(assert (=> b!1551606 (= e!863772 (ListLongMap!22474 Nil!36332))))

(declare-fun b!1551607 () Bool)

(assert (=> b!1551607 (and (bvsge from!762 #b00000000000000000000000000000000) (bvslt from!762 (size!50505 _keys!618)))))

(assert (=> b!1551607 (and (bvsge from!762 #b00000000000000000000000000000000) (bvslt from!762 (size!50506 _values!470)))))

(assert (=> b!1551607 (= e!863771 (= (apply!1127 lt!668758 (select (arr!49954 _keys!618) from!762)) (get!26051 (select (arr!49955 _values!470) from!762) (dynLambda!3873 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!160921 () Bool)

(assert (=> d!160921 e!863774))

(declare-fun res!1062578 () Bool)

(assert (=> d!160921 (=> (not res!1062578) (not e!863774))))

(assert (=> d!160921 (= res!1062578 (not (contains!10122 lt!668758 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!160921 (= lt!668758 e!863772)))

(declare-fun c!142759 () Bool)

(assert (=> d!160921 (= c!142759 (bvsge from!762 (size!50505 _keys!618)))))

(assert (=> d!160921 (validMask!0 mask!926)))

(assert (=> d!160921 (= (getCurrentListMapNoExtraKeys!6677 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478) lt!668758)))

(declare-fun b!1551603 () Bool)

(assert (=> b!1551603 (= e!863769 (= lt!668758 (getCurrentListMapNoExtraKeys!6677 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 (bvadd from!762 #b00000000000000000000000000000001) defaultEntry!478)))))

(assert (= (and d!160921 c!142759) b!1551606))

(assert (= (and d!160921 (not c!142759)) b!1551597))

(assert (= (and b!1551597 c!142761) b!1551604))

(assert (= (and b!1551597 (not c!142761)) b!1551596))

(assert (= (or b!1551604 b!1551596) bm!71070))

(assert (= (and d!160921 res!1062578) b!1551605))

(assert (= (and b!1551605 res!1062577) b!1551600))

(assert (= (and b!1551600 res!1062579) b!1551599))

(assert (= (and b!1551600 c!142760) b!1551601))

(assert (= (and b!1551600 (not c!142760)) b!1551598))

(assert (= (and b!1551601 res!1062580) b!1551607))

(assert (= (and b!1551598 c!142762) b!1551603))

(assert (= (and b!1551598 (not c!142762)) b!1551602))

(declare-fun b_lambda!24789 () Bool)

(assert (=> (not b_lambda!24789) (not b!1551604)))

(declare-fun t!51058 () Bool)

(declare-fun tb!12489 () Bool)

(assert (=> (and start!132286 (= defaultEntry!478 defaultEntry!478) t!51058) tb!12489))

(declare-fun result!26087 () Bool)

(assert (=> tb!12489 (= result!26087 tp_is_empty!38181)))

(assert (=> b!1551604 t!51058))

(declare-fun b_and!51353 () Bool)

(assert (= b_and!51349 (and (=> t!51058 result!26087) b_and!51353)))

(declare-fun b_lambda!24791 () Bool)

(assert (=> (not b_lambda!24791) (not b!1551607)))

(assert (=> b!1551607 t!51058))

(declare-fun b_and!51355 () Bool)

(assert (= b_and!51353 (and (=> t!51058 result!26087) b_and!51355)))

(declare-fun m!1430275 () Bool)

(assert (=> b!1551607 m!1430275))

(declare-fun m!1430277 () Bool)

(assert (=> b!1551607 m!1430277))

(declare-fun m!1430279 () Bool)

(assert (=> b!1551607 m!1430279))

(assert (=> b!1551607 m!1430183))

(assert (=> b!1551607 m!1430183))

(declare-fun m!1430281 () Bool)

(assert (=> b!1551607 m!1430281))

(assert (=> b!1551607 m!1430277))

(assert (=> b!1551607 m!1430275))

(assert (=> b!1551597 m!1430183))

(assert (=> b!1551597 m!1430183))

(assert (=> b!1551597 m!1430185))

(declare-fun m!1430283 () Bool)

(assert (=> b!1551602 m!1430283))

(declare-fun m!1430285 () Bool)

(assert (=> b!1551603 m!1430285))

(assert (=> b!1551601 m!1430183))

(assert (=> b!1551601 m!1430183))

(declare-fun m!1430287 () Bool)

(assert (=> b!1551601 m!1430287))

(declare-fun m!1430289 () Bool)

(assert (=> d!160921 m!1430289))

(assert (=> d!160921 m!1430173))

(declare-fun m!1430291 () Bool)

(assert (=> b!1551604 m!1430291))

(declare-fun m!1430293 () Bool)

(assert (=> b!1551604 m!1430293))

(assert (=> b!1551604 m!1430275))

(assert (=> b!1551604 m!1430277))

(assert (=> b!1551604 m!1430279))

(assert (=> b!1551604 m!1430183))

(declare-fun m!1430295 () Bool)

(assert (=> b!1551604 m!1430295))

(assert (=> b!1551604 m!1430293))

(declare-fun m!1430297 () Bool)

(assert (=> b!1551604 m!1430297))

(assert (=> b!1551604 m!1430277))

(assert (=> b!1551604 m!1430275))

(assert (=> b!1551599 m!1430183))

(assert (=> b!1551599 m!1430183))

(assert (=> b!1551599 m!1430185))

(assert (=> bm!71070 m!1430285))

(declare-fun m!1430299 () Bool)

(assert (=> b!1551605 m!1430299))

(assert (=> bm!71049 d!160921))

(declare-fun d!160923 () Bool)

(declare-fun e!863775 () Bool)

(assert (=> d!160923 e!863775))

(declare-fun res!1062582 () Bool)

(assert (=> d!160923 (=> (not res!1062582) (not e!863775))))

(declare-fun lt!668765 () ListLongMap!22473)

(assert (=> d!160923 (= res!1062582 (contains!10122 lt!668765 (_1!12436 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun lt!668766 () List!36335)

(assert (=> d!160923 (= lt!668765 (ListLongMap!22474 lt!668766))))

(declare-fun lt!668767 () Unit!51605)

(declare-fun lt!668768 () Unit!51605)

(assert (=> d!160923 (= lt!668767 lt!668768)))

(assert (=> d!160923 (= (getValueByKey!733 lt!668766 (_1!12436 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!807 (_2!12436 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!160923 (= lt!668768 (lemmaContainsTupThenGetReturnValue!373 lt!668766 (_1!12436 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12436 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!160923 (= lt!668766 (insertStrictlySorted!502 (toList!11252 call!71048) (_1!12436 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12436 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!160923 (= (+!4959 call!71048 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) lt!668765)))

(declare-fun b!1551610 () Bool)

(declare-fun res!1062581 () Bool)

(assert (=> b!1551610 (=> (not res!1062581) (not e!863775))))

(assert (=> b!1551610 (= res!1062581 (= (getValueByKey!733 (toList!11252 lt!668765) (_1!12436 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!807 (_2!12436 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1551611 () Bool)

(assert (=> b!1551611 (= e!863775 (contains!10124 (toList!11252 lt!668765) (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(assert (= (and d!160923 res!1062582) b!1551610))

(assert (= (and b!1551610 res!1062581) b!1551611))

(declare-fun m!1430301 () Bool)

(assert (=> d!160923 m!1430301))

(declare-fun m!1430303 () Bool)

(assert (=> d!160923 m!1430303))

(declare-fun m!1430305 () Bool)

(assert (=> d!160923 m!1430305))

(declare-fun m!1430307 () Bool)

(assert (=> d!160923 m!1430307))

(declare-fun m!1430309 () Bool)

(assert (=> b!1551610 m!1430309))

(declare-fun m!1430311 () Bool)

(assert (=> b!1551611 m!1430311))

(assert (=> b!1551498 d!160923))

(declare-fun d!160925 () Bool)

(declare-fun e!863776 () Bool)

(assert (=> d!160925 e!863776))

(declare-fun res!1062584 () Bool)

(assert (=> d!160925 (=> (not res!1062584) (not e!863776))))

(declare-fun lt!668769 () ListLongMap!22473)

(assert (=> d!160925 (= res!1062584 (contains!10122 lt!668769 (_1!12436 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun lt!668770 () List!36335)

(assert (=> d!160925 (= lt!668769 (ListLongMap!22474 lt!668770))))

(declare-fun lt!668771 () Unit!51605)

(declare-fun lt!668772 () Unit!51605)

(assert (=> d!160925 (= lt!668771 lt!668772)))

(assert (=> d!160925 (= (getValueByKey!733 lt!668770 (_1!12436 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!807 (_2!12436 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!160925 (= lt!668772 (lemmaContainsTupThenGetReturnValue!373 lt!668770 (_1!12436 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12436 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!160925 (= lt!668770 (insertStrictlySorted!502 (toList!11252 lt!668700) (_1!12436 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12436 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!160925 (= (+!4959 lt!668700 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) lt!668769)))

(declare-fun b!1551612 () Bool)

(declare-fun res!1062583 () Bool)

(assert (=> b!1551612 (=> (not res!1062583) (not e!863776))))

(assert (=> b!1551612 (= res!1062583 (= (getValueByKey!733 (toList!11252 lt!668769) (_1!12436 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!807 (_2!12436 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1551613 () Bool)

(assert (=> b!1551613 (= e!863776 (contains!10124 (toList!11252 lt!668769) (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(assert (= (and d!160925 res!1062584) b!1551612))

(assert (= (and b!1551612 res!1062583) b!1551613))

(declare-fun m!1430313 () Bool)

(assert (=> d!160925 m!1430313))

(declare-fun m!1430315 () Bool)

(assert (=> d!160925 m!1430315))

(declare-fun m!1430317 () Bool)

(assert (=> d!160925 m!1430317))

(declare-fun m!1430319 () Bool)

(assert (=> d!160925 m!1430319))

(declare-fun m!1430321 () Bool)

(assert (=> b!1551612 m!1430321))

(declare-fun m!1430323 () Bool)

(assert (=> b!1551613 m!1430323))

(assert (=> b!1551483 d!160925))

(declare-fun d!160927 () Bool)

(declare-fun get!26052 (Option!808) V!59351)

(assert (=> d!160927 (= (apply!1127 lt!668702 (select (arr!49954 _keys!618) from!762)) (get!26052 (getValueByKey!733 (toList!11252 lt!668702) (select (arr!49954 _keys!618) from!762))))))

(declare-fun bs!44571 () Bool)

(assert (= bs!44571 d!160927))

(assert (=> bs!44571 m!1430183))

(declare-fun m!1430325 () Bool)

(assert (=> bs!44571 m!1430325))

(assert (=> bs!44571 m!1430325))

(declare-fun m!1430327 () Bool)

(assert (=> bs!44571 m!1430327))

(assert (=> b!1551483 d!160927))

(declare-fun d!160929 () Bool)

(assert (=> d!160929 (= (apply!1127 lt!668700 (select (arr!49954 _keys!618) from!762)) (get!26052 (getValueByKey!733 (toList!11252 lt!668700) (select (arr!49954 _keys!618) from!762))))))

(declare-fun bs!44572 () Bool)

(assert (= bs!44572 d!160929))

(assert (=> bs!44572 m!1430183))

(declare-fun m!1430329 () Bool)

(assert (=> bs!44572 m!1430329))

(assert (=> bs!44572 m!1430329))

(declare-fun m!1430331 () Bool)

(assert (=> bs!44572 m!1430331))

(assert (=> b!1551483 d!160929))

(declare-fun d!160931 () Bool)

(assert (=> d!160931 (= (apply!1127 (+!4959 lt!668700 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49954 _keys!618) from!762)) (get!26052 (getValueByKey!733 (toList!11252 (+!4959 lt!668700 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (select (arr!49954 _keys!618) from!762))))))

(declare-fun bs!44573 () Bool)

(assert (= bs!44573 d!160931))

(assert (=> bs!44573 m!1430183))

(declare-fun m!1430333 () Bool)

(assert (=> bs!44573 m!1430333))

(assert (=> bs!44573 m!1430333))

(declare-fun m!1430335 () Bool)

(assert (=> bs!44573 m!1430335))

(assert (=> b!1551483 d!160931))

(declare-fun d!160933 () Bool)

(assert (=> d!160933 (= (apply!1127 (+!4959 lt!668700 (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49954 _keys!618) from!762)) (apply!1127 lt!668700 (select (arr!49954 _keys!618) from!762)))))

(declare-fun lt!668775 () Unit!51605)

(declare-fun choose!2040 (ListLongMap!22473 (_ BitVec 64) V!59351 (_ BitVec 64)) Unit!51605)

(assert (=> d!160933 (= lt!668775 (choose!2040 lt!668700 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49954 _keys!618) from!762)))))

(declare-fun e!863779 () Bool)

(assert (=> d!160933 e!863779))

(declare-fun res!1062587 () Bool)

(assert (=> d!160933 (=> (not res!1062587) (not e!863779))))

(assert (=> d!160933 (= res!1062587 (contains!10122 lt!668700 (select (arr!49954 _keys!618) from!762)))))

(assert (=> d!160933 (= (addApplyDifferent!628 lt!668700 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49954 _keys!618) from!762)) lt!668775)))

(declare-fun b!1551617 () Bool)

(assert (=> b!1551617 (= e!863779 (not (= (select (arr!49954 _keys!618) from!762) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!160933 res!1062587) b!1551617))

(assert (=> d!160933 m!1430183))

(declare-fun m!1430337 () Bool)

(assert (=> d!160933 m!1430337))

(assert (=> d!160933 m!1430183))

(assert (=> d!160933 m!1430199))

(assert (=> d!160933 m!1430183))

(assert (=> d!160933 m!1430193))

(assert (=> d!160933 m!1430209))

(assert (=> d!160933 m!1430183))

(declare-fun m!1430339 () Bool)

(assert (=> d!160933 m!1430339))

(assert (=> d!160933 m!1430209))

(assert (=> b!1551483 d!160933))

(declare-fun d!160935 () Bool)

(declare-fun e!863780 () Bool)

(assert (=> d!160935 e!863780))

(declare-fun res!1062589 () Bool)

(assert (=> d!160935 (=> (not res!1062589) (not e!863780))))

(declare-fun lt!668776 () ListLongMap!22473)

(assert (=> d!160935 (= res!1062589 (contains!10122 lt!668776 (_1!12436 (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(declare-fun lt!668777 () List!36335)

(assert (=> d!160935 (= lt!668776 (ListLongMap!22474 lt!668777))))

(declare-fun lt!668778 () Unit!51605)

(declare-fun lt!668779 () Unit!51605)

(assert (=> d!160935 (= lt!668778 lt!668779)))

(assert (=> d!160935 (= (getValueByKey!733 lt!668777 (_1!12436 (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (Some!807 (_2!12436 (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(assert (=> d!160935 (= lt!668779 (lemmaContainsTupThenGetReturnValue!373 lt!668777 (_1!12436 (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12436 (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(assert (=> d!160935 (= lt!668777 (insertStrictlySorted!502 (toList!11252 lt!668700) (_1!12436 (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12436 (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(assert (=> d!160935 (= (+!4959 lt!668700 (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) lt!668776)))

(declare-fun b!1551618 () Bool)

(declare-fun res!1062588 () Bool)

(assert (=> b!1551618 (=> (not res!1062588) (not e!863780))))

(assert (=> b!1551618 (= res!1062588 (= (getValueByKey!733 (toList!11252 lt!668776) (_1!12436 (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (Some!807 (_2!12436 (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(declare-fun b!1551619 () Bool)

(assert (=> b!1551619 (= e!863780 (contains!10124 (toList!11252 lt!668776) (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(assert (= (and d!160935 res!1062589) b!1551618))

(assert (= (and b!1551618 res!1062588) b!1551619))

(declare-fun m!1430341 () Bool)

(assert (=> d!160935 m!1430341))

(declare-fun m!1430343 () Bool)

(assert (=> d!160935 m!1430343))

(declare-fun m!1430345 () Bool)

(assert (=> d!160935 m!1430345))

(declare-fun m!1430347 () Bool)

(assert (=> d!160935 m!1430347))

(declare-fun m!1430349 () Bool)

(assert (=> b!1551618 m!1430349))

(declare-fun m!1430351 () Bool)

(assert (=> b!1551619 m!1430351))

(assert (=> b!1551483 d!160935))

(declare-fun d!160937 () Bool)

(assert (=> d!160937 (= (apply!1127 (+!4959 lt!668700 (tuple2!24853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49954 _keys!618) from!762)) (apply!1127 lt!668700 (select (arr!49954 _keys!618) from!762)))))

(declare-fun lt!668780 () Unit!51605)

(assert (=> d!160937 (= lt!668780 (choose!2040 lt!668700 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49954 _keys!618) from!762)))))

(declare-fun e!863781 () Bool)

(assert (=> d!160937 e!863781))

(declare-fun res!1062590 () Bool)

(assert (=> d!160937 (=> (not res!1062590) (not e!863781))))

(assert (=> d!160937 (= res!1062590 (contains!10122 lt!668700 (select (arr!49954 _keys!618) from!762)))))

(assert (=> d!160937 (= (addApplyDifferent!628 lt!668700 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49954 _keys!618) from!762)) lt!668780)))

(declare-fun b!1551620 () Bool)

(assert (=> b!1551620 (= e!863781 (not (= (select (arr!49954 _keys!618) from!762) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!160937 res!1062590) b!1551620))

(assert (=> d!160937 m!1430183))

(declare-fun m!1430353 () Bool)

(assert (=> d!160937 m!1430353))

(assert (=> d!160937 m!1430183))

(assert (=> d!160937 m!1430199))

(assert (=> d!160937 m!1430183))

(assert (=> d!160937 m!1430193))

(assert (=> d!160937 m!1430197))

(assert (=> d!160937 m!1430183))

(assert (=> d!160937 m!1430211))

(assert (=> d!160937 m!1430197))

(assert (=> b!1551483 d!160937))

(declare-fun d!160939 () Bool)

(assert (=> d!160939 (contains!10122 (+!4959 lt!668700 (tuple2!24853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49954 _keys!618) from!762))))

(declare-fun lt!668783 () Unit!51605)

(declare-fun choose!2041 (ListLongMap!22473 (_ BitVec 64) V!59351 (_ BitVec 64)) Unit!51605)

(assert (=> d!160939 (= lt!668783 (choose!2041 lt!668700 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49954 _keys!618) from!762)))))

(assert (=> d!160939 (contains!10122 lt!668700 (select (arr!49954 _keys!618) from!762))))

(assert (=> d!160939 (= (addStillContains!1295 lt!668700 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49954 _keys!618) from!762)) lt!668783)))

(declare-fun bs!44574 () Bool)

(assert (= bs!44574 d!160939))

(assert (=> bs!44574 m!1430209))

(assert (=> bs!44574 m!1430209))

(assert (=> bs!44574 m!1430183))

(declare-fun m!1430355 () Bool)

(assert (=> bs!44574 m!1430355))

(assert (=> bs!44574 m!1430183))

(declare-fun m!1430357 () Bool)

(assert (=> bs!44574 m!1430357))

(assert (=> bs!44574 m!1430183))

(assert (=> bs!44574 m!1430199))

(assert (=> b!1551483 d!160939))

(assert (=> b!1551483 d!160921))

(declare-fun d!160941 () Bool)

(declare-fun e!863787 () Bool)

(assert (=> d!160941 e!863787))

(declare-fun res!1062593 () Bool)

(assert (=> d!160941 (=> res!1062593 e!863787)))

(declare-fun lt!668795 () Bool)

(assert (=> d!160941 (= res!1062593 (not lt!668795))))

(declare-fun lt!668793 () Bool)

(assert (=> d!160941 (= lt!668795 lt!668793)))

(declare-fun lt!668792 () Unit!51605)

(declare-fun e!863786 () Unit!51605)

(assert (=> d!160941 (= lt!668792 e!863786)))

(declare-fun c!142765 () Bool)

(assert (=> d!160941 (= c!142765 lt!668793)))

(declare-fun containsKey!751 (List!36335 (_ BitVec 64)) Bool)

(assert (=> d!160941 (= lt!668793 (containsKey!751 (toList!11252 lt!668700) (select (arr!49954 _keys!618) from!762)))))

(assert (=> d!160941 (= (contains!10122 lt!668700 (select (arr!49954 _keys!618) from!762)) lt!668795)))

(declare-fun b!1551628 () Bool)

(declare-fun lt!668794 () Unit!51605)

(assert (=> b!1551628 (= e!863786 lt!668794)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!496 (List!36335 (_ BitVec 64)) Unit!51605)

(assert (=> b!1551628 (= lt!668794 (lemmaContainsKeyImpliesGetValueByKeyDefined!496 (toList!11252 lt!668700) (select (arr!49954 _keys!618) from!762)))))

(declare-fun isDefined!545 (Option!808) Bool)

(assert (=> b!1551628 (isDefined!545 (getValueByKey!733 (toList!11252 lt!668700) (select (arr!49954 _keys!618) from!762)))))

(declare-fun b!1551629 () Bool)

(declare-fun Unit!51607 () Unit!51605)

(assert (=> b!1551629 (= e!863786 Unit!51607)))

(declare-fun b!1551630 () Bool)

(assert (=> b!1551630 (= e!863787 (isDefined!545 (getValueByKey!733 (toList!11252 lt!668700) (select (arr!49954 _keys!618) from!762))))))

(assert (= (and d!160941 c!142765) b!1551628))

(assert (= (and d!160941 (not c!142765)) b!1551629))

(assert (= (and d!160941 (not res!1062593)) b!1551630))

(assert (=> d!160941 m!1430183))

(declare-fun m!1430359 () Bool)

(assert (=> d!160941 m!1430359))

(assert (=> b!1551628 m!1430183))

(declare-fun m!1430361 () Bool)

(assert (=> b!1551628 m!1430361))

(assert (=> b!1551628 m!1430183))

(assert (=> b!1551628 m!1430329))

(assert (=> b!1551628 m!1430329))

(declare-fun m!1430363 () Bool)

(assert (=> b!1551628 m!1430363))

(assert (=> b!1551630 m!1430183))

(assert (=> b!1551630 m!1430329))

(assert (=> b!1551630 m!1430329))

(assert (=> b!1551630 m!1430363))

(assert (=> b!1551483 d!160941))

(declare-fun d!160943 () Bool)

(declare-fun e!863789 () Bool)

(assert (=> d!160943 e!863789))

(declare-fun res!1062594 () Bool)

(assert (=> d!160943 (=> res!1062594 e!863789)))

(declare-fun lt!668799 () Bool)

(assert (=> d!160943 (= res!1062594 (not lt!668799))))

(declare-fun lt!668797 () Bool)

(assert (=> d!160943 (= lt!668799 lt!668797)))

(declare-fun lt!668796 () Unit!51605)

(declare-fun e!863788 () Unit!51605)

(assert (=> d!160943 (= lt!668796 e!863788)))

(declare-fun c!142766 () Bool)

(assert (=> d!160943 (= c!142766 lt!668797)))

(assert (=> d!160943 (= lt!668797 (containsKey!751 (toList!11252 lt!668702) (select (arr!49954 _keys!618) from!762)))))

(assert (=> d!160943 (= (contains!10122 lt!668702 (select (arr!49954 _keys!618) from!762)) lt!668799)))

(declare-fun b!1551631 () Bool)

(declare-fun lt!668798 () Unit!51605)

(assert (=> b!1551631 (= e!863788 lt!668798)))

(assert (=> b!1551631 (= lt!668798 (lemmaContainsKeyImpliesGetValueByKeyDefined!496 (toList!11252 lt!668702) (select (arr!49954 _keys!618) from!762)))))

(assert (=> b!1551631 (isDefined!545 (getValueByKey!733 (toList!11252 lt!668702) (select (arr!49954 _keys!618) from!762)))))

(declare-fun b!1551632 () Bool)

(declare-fun Unit!51608 () Unit!51605)

(assert (=> b!1551632 (= e!863788 Unit!51608)))

(declare-fun b!1551633 () Bool)

(assert (=> b!1551633 (= e!863789 (isDefined!545 (getValueByKey!733 (toList!11252 lt!668702) (select (arr!49954 _keys!618) from!762))))))

(assert (= (and d!160943 c!142766) b!1551631))

(assert (= (and d!160943 (not c!142766)) b!1551632))

(assert (= (and d!160943 (not res!1062594)) b!1551633))

(assert (=> d!160943 m!1430183))

(declare-fun m!1430365 () Bool)

(assert (=> d!160943 m!1430365))

(assert (=> b!1551631 m!1430183))

(declare-fun m!1430367 () Bool)

(assert (=> b!1551631 m!1430367))

(assert (=> b!1551631 m!1430183))

(assert (=> b!1551631 m!1430325))

(assert (=> b!1551631 m!1430325))

(declare-fun m!1430369 () Bool)

(assert (=> b!1551631 m!1430369))

(assert (=> b!1551633 m!1430183))

(assert (=> b!1551633 m!1430325))

(assert (=> b!1551633 m!1430325))

(assert (=> b!1551633 m!1430369))

(assert (=> b!1551483 d!160943))

(declare-fun b!1551643 () Bool)

(declare-fun e!863796 () Bool)

(declare-fun call!71076 () Bool)

(assert (=> b!1551643 (= e!863796 call!71076)))

(declare-fun bm!71073 () Bool)

(assert (=> bm!71073 (= call!71076 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!618 mask!926))))

(declare-fun b!1551644 () Bool)

(declare-fun e!863798 () Bool)

(assert (=> b!1551644 (= e!863796 e!863798)))

(declare-fun lt!668808 () (_ BitVec 64))

(assert (=> b!1551644 (= lt!668808 (select (arr!49954 _keys!618) #b00000000000000000000000000000000))))

(declare-fun lt!668807 () Unit!51605)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!103519 (_ BitVec 64) (_ BitVec 32)) Unit!51605)

(assert (=> b!1551644 (= lt!668807 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!618 lt!668808 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!103519 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1551644 (arrayContainsKey!0 _keys!618 lt!668808 #b00000000000000000000000000000000)))

(declare-fun lt!668806 () Unit!51605)

(assert (=> b!1551644 (= lt!668806 lt!668807)))

(declare-fun res!1062599 () Bool)

(declare-datatypes ((SeekEntryResult!13513 0))(
  ( (MissingZero!13513 (index!56449 (_ BitVec 32))) (Found!13513 (index!56450 (_ BitVec 32))) (Intermediate!13513 (undefined!14325 Bool) (index!56451 (_ BitVec 32)) (x!139150 (_ BitVec 32))) (Undefined!13513) (MissingVacant!13513 (index!56452 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!103519 (_ BitVec 32)) SeekEntryResult!13513)

(assert (=> b!1551644 (= res!1062599 (= (seekEntryOrOpen!0 (select (arr!49954 _keys!618) #b00000000000000000000000000000000) _keys!618 mask!926) (Found!13513 #b00000000000000000000000000000000)))))

(assert (=> b!1551644 (=> (not res!1062599) (not e!863798))))

(declare-fun b!1551645 () Bool)

(assert (=> b!1551645 (= e!863798 call!71076)))

(declare-fun d!160945 () Bool)

(declare-fun res!1062600 () Bool)

(declare-fun e!863797 () Bool)

(assert (=> d!160945 (=> res!1062600 e!863797)))

(assert (=> d!160945 (= res!1062600 (bvsge #b00000000000000000000000000000000 (size!50505 _keys!618)))))

(assert (=> d!160945 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926) e!863797)))

(declare-fun b!1551642 () Bool)

(assert (=> b!1551642 (= e!863797 e!863796)))

(declare-fun c!142769 () Bool)

(assert (=> b!1551642 (= c!142769 (validKeyInArray!0 (select (arr!49954 _keys!618) #b00000000000000000000000000000000)))))

(assert (= (and d!160945 (not res!1062600)) b!1551642))

(assert (= (and b!1551642 c!142769) b!1551644))

(assert (= (and b!1551642 (not c!142769)) b!1551643))

(assert (= (and b!1551644 res!1062599) b!1551645))

(assert (= (or b!1551645 b!1551643) bm!71073))

(declare-fun m!1430371 () Bool)

(assert (=> bm!71073 m!1430371))

(assert (=> b!1551644 m!1430255))

(declare-fun m!1430373 () Bool)

(assert (=> b!1551644 m!1430373))

(declare-fun m!1430375 () Bool)

(assert (=> b!1551644 m!1430375))

(assert (=> b!1551644 m!1430255))

(declare-fun m!1430377 () Bool)

(assert (=> b!1551644 m!1430377))

(assert (=> b!1551642 m!1430255))

(assert (=> b!1551642 m!1430255))

(assert (=> b!1551642 m!1430261))

(assert (=> b!1551496 d!160945))

(declare-fun d!160947 () Bool)

(assert (=> d!160947 (= (validMask!0 mask!926) (and (or (= mask!926 #b00000000000000000000000000000111) (= mask!926 #b00000000000000000000000000001111) (= mask!926 #b00000000000000000000000000011111) (= mask!926 #b00000000000000000000000000111111) (= mask!926 #b00000000000000000000000001111111) (= mask!926 #b00000000000000000000000011111111) (= mask!926 #b00000000000000000000000111111111) (= mask!926 #b00000000000000000000001111111111) (= mask!926 #b00000000000000000000011111111111) (= mask!926 #b00000000000000000000111111111111) (= mask!926 #b00000000000000000001111111111111) (= mask!926 #b00000000000000000011111111111111) (= mask!926 #b00000000000000000111111111111111) (= mask!926 #b00000000000000001111111111111111) (= mask!926 #b00000000000000011111111111111111) (= mask!926 #b00000000000000111111111111111111) (= mask!926 #b00000000000001111111111111111111) (= mask!926 #b00000000000011111111111111111111) (= mask!926 #b00000000000111111111111111111111) (= mask!926 #b00000000001111111111111111111111) (= mask!926 #b00000000011111111111111111111111) (= mask!926 #b00000000111111111111111111111111) (= mask!926 #b00000001111111111111111111111111) (= mask!926 #b00000011111111111111111111111111) (= mask!926 #b00000111111111111111111111111111) (= mask!926 #b00001111111111111111111111111111) (= mask!926 #b00011111111111111111111111111111) (= mask!926 #b00111111111111111111111111111111)) (bvsle mask!926 #b00111111111111111111111111111111)))))

(assert (=> start!132286 d!160947))

(declare-fun d!160949 () Bool)

(assert (=> d!160949 (= (array_inv!38759 _keys!618) (bvsge (size!50505 _keys!618) #b00000000000000000000000000000000))))

(assert (=> start!132286 d!160949))

(declare-fun d!160951 () Bool)

(assert (=> d!160951 (= (array_inv!38760 _values!470) (bvsge (size!50506 _values!470) #b00000000000000000000000000000000))))

(assert (=> start!132286 d!160951))

(declare-fun condMapEmpty!58990 () Bool)

(declare-fun mapDefault!58990 () ValueCell!18180)

(assert (=> mapNonEmpty!58984 (= condMapEmpty!58990 (= mapRest!58984 ((as const (Array (_ BitVec 32) ValueCell!18180)) mapDefault!58990)))))

(declare-fun e!863803 () Bool)

(declare-fun mapRes!58990 () Bool)

(assert (=> mapNonEmpty!58984 (= tp!111976 (and e!863803 mapRes!58990))))

(declare-fun mapIsEmpty!58990 () Bool)

(assert (=> mapIsEmpty!58990 mapRes!58990))

(declare-fun mapNonEmpty!58990 () Bool)

(declare-fun tp!111986 () Bool)

(declare-fun e!863804 () Bool)

(assert (=> mapNonEmpty!58990 (= mapRes!58990 (and tp!111986 e!863804))))

(declare-fun mapRest!58990 () (Array (_ BitVec 32) ValueCell!18180))

(declare-fun mapValue!58990 () ValueCell!18180)

(declare-fun mapKey!58990 () (_ BitVec 32))

(assert (=> mapNonEmpty!58990 (= mapRest!58984 (store mapRest!58990 mapKey!58990 mapValue!58990))))

(declare-fun b!1551653 () Bool)

(assert (=> b!1551653 (= e!863803 tp_is_empty!38181)))

(declare-fun b!1551652 () Bool)

(assert (=> b!1551652 (= e!863804 tp_is_empty!38181)))

(assert (= (and mapNonEmpty!58984 condMapEmpty!58990) mapIsEmpty!58990))

(assert (= (and mapNonEmpty!58984 (not condMapEmpty!58990)) mapNonEmpty!58990))

(assert (= (and mapNonEmpty!58990 ((_ is ValueCellFull!18180) mapValue!58990)) b!1551652))

(assert (= (and mapNonEmpty!58984 ((_ is ValueCellFull!18180) mapDefault!58990)) b!1551653))

(declare-fun m!1430379 () Bool)

(assert (=> mapNonEmpty!58990 m!1430379))

(declare-fun b_lambda!24793 () Bool)

(assert (= b_lambda!24791 (or (and start!132286 b_free!31905) b_lambda!24793)))

(declare-fun b_lambda!24795 () Bool)

(assert (= b_lambda!24789 (or (and start!132286 b_free!31905) b_lambda!24795)))

(check-sat (not b!1551597) (not d!160927) (not mapNonEmpty!58990) (not b!1551563) (not b!1551642) (not b!1551562) (not d!160921) (not d!160925) (not b!1551605) tp_is_empty!38181 (not d!160937) (not b!1551611) (not d!160919) (not b!1551607) (not b!1551599) (not b_lambda!24795) (not d!160933) (not b!1551631) (not b!1551612) (not b!1551633) (not bm!71067) (not bm!71073) (not d!160929) (not b!1551610) (not d!160943) (not d!160939) (not b_next!31905) (not b!1551570) (not b_lambda!24793) (not b!1551571) (not d!160923) (not b!1551618) (not d!160931) (not b!1551630) (not d!160935) (not b!1551603) (not b!1551613) (not b!1551604) (not b!1551619) (not b!1551628) (not b!1551602) (not b!1551601) (not bm!71070) (not b!1551561) b_and!51355 (not b!1551644) (not d!160941))
(check-sat b_and!51355 (not b_next!31905))
