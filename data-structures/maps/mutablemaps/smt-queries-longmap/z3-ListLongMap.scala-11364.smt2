; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132122 () Bool)

(assert start!132122)

(declare-fun b_free!31803 () Bool)

(declare-fun b_next!31803 () Bool)

(assert (=> start!132122 (= b_free!31803 (not b_next!31803))))

(declare-fun tp!111662 () Bool)

(declare-fun b_and!51223 () Bool)

(assert (=> start!132122 (= tp!111662 b_and!51223)))

(declare-fun b!1548586 () Bool)

(declare-fun res!1061255 () Bool)

(declare-fun e!862019 () Bool)

(assert (=> b!1548586 (=> (not res!1061255) (not e!862019))))

(declare-datatypes ((array!103321 0))(
  ( (array!103322 (arr!49858 (Array (_ BitVec 32) (_ BitVec 64))) (size!50409 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103321)

(declare-datatypes ((List!36257 0))(
  ( (Nil!36254) (Cons!36253 (h!37699 (_ BitVec 64)) (t!50958 List!36257)) )
))
(declare-fun arrayNoDuplicates!0 (array!103321 (_ BitVec 32) List!36257) Bool)

(assert (=> b!1548586 (= res!1061255 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36254))))

(declare-fun bm!70244 () Bool)

(declare-datatypes ((V!59215 0))(
  ( (V!59216 (val!19117 Int)) )
))
(declare-datatypes ((tuple2!24756 0))(
  ( (tuple2!24757 (_1!12388 (_ BitVec 64)) (_2!12388 V!59215)) )
))
(declare-datatypes ((List!36258 0))(
  ( (Nil!36255) (Cons!36254 (h!37700 tuple2!24756) (t!50959 List!36258)) )
))
(declare-datatypes ((ListLongMap!22377 0))(
  ( (ListLongMap!22378 (toList!11204 List!36258)) )
))
(declare-fun call!70248 () ListLongMap!22377)

(declare-fun call!70251 () ListLongMap!22377)

(assert (=> bm!70244 (= call!70248 call!70251)))

(declare-fun b!1548587 () Bool)

(declare-fun e!862020 () ListLongMap!22377)

(declare-fun minValue!436 () V!59215)

(declare-fun +!4923 (ListLongMap!22377 tuple2!24756) ListLongMap!22377)

(assert (=> b!1548587 (= e!862020 (+!4923 call!70251 (tuple2!24757 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1548588 () Bool)

(declare-fun res!1061254 () Bool)

(assert (=> b!1548588 (=> (not res!1061254) (not e!862019))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18129 0))(
  ( (ValueCellFull!18129 (v!21915 V!59215)) (EmptyCell!18129) )
))
(declare-datatypes ((array!103323 0))(
  ( (array!103324 (arr!49859 (Array (_ BitVec 32) ValueCell!18129)) (size!50410 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103323)

(assert (=> b!1548588 (= res!1061254 (and (= (size!50410 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50409 _keys!618) (size!50410 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun zeroValue!436 () V!59215)

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun call!70247 () ListLongMap!22377)

(declare-fun bm!70245 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6644 (array!103321 array!103323 (_ BitVec 32) (_ BitVec 32) V!59215 V!59215 (_ BitVec 32) Int) ListLongMap!22377)

(assert (=> bm!70245 (= call!70247 (getCurrentListMapNoExtraKeys!6644 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1548589 () Bool)

(declare-fun e!862016 () ListLongMap!22377)

(assert (=> b!1548589 (= e!862020 e!862016)))

(declare-fun c!142178 () Bool)

(declare-fun lt!667375 () Bool)

(assert (=> b!1548589 (= c!142178 (and (not lt!667375) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1548590 () Bool)

(declare-fun res!1061253 () Bool)

(declare-fun e!862023 () Bool)

(assert (=> b!1548590 (=> (not res!1061253) (not e!862023))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1548590 (= res!1061253 (validKeyInArray!0 (select (arr!49858 _keys!618) from!762)))))

(declare-fun b!1548591 () Bool)

(assert (=> b!1548591 (= e!862019 e!862023)))

(declare-fun res!1061249 () Bool)

(assert (=> b!1548591 (=> (not res!1061249) (not e!862023))))

(assert (=> b!1548591 (= res!1061249 (bvslt from!762 (size!50409 _keys!618)))))

(declare-fun lt!667372 () ListLongMap!22377)

(assert (=> b!1548591 (= lt!667372 e!862020)))

(declare-fun c!142177 () Bool)

(assert (=> b!1548591 (= c!142177 (and (not lt!667375) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1548591 (= lt!667375 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun res!1061252 () Bool)

(assert (=> start!132122 (=> (not res!1061252) (not e!862019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132122 (= res!1061252 (validMask!0 mask!926))))

(assert (=> start!132122 e!862019))

(declare-fun array_inv!38695 (array!103321) Bool)

(assert (=> start!132122 (array_inv!38695 _keys!618)))

(declare-fun tp_is_empty!38079 () Bool)

(assert (=> start!132122 tp_is_empty!38079))

(assert (=> start!132122 true))

(assert (=> start!132122 tp!111662))

(declare-fun e!862022 () Bool)

(declare-fun array_inv!38696 (array!103323) Bool)

(assert (=> start!132122 (and (array_inv!38696 _values!470) e!862022)))

(declare-fun b!1548592 () Bool)

(declare-fun res!1061251 () Bool)

(assert (=> b!1548592 (=> (not res!1061251) (not e!862019))))

(assert (=> b!1548592 (= res!1061251 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50409 _keys!618))))))

(declare-fun b!1548593 () Bool)

(assert (=> b!1548593 (= e!862016 call!70248)))

(declare-fun b!1548594 () Bool)

(declare-fun res!1061250 () Bool)

(assert (=> b!1548594 (=> (not res!1061250) (not e!862019))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103321 (_ BitVec 32)) Bool)

(assert (=> b!1548594 (= res!1061250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1548595 () Bool)

(declare-fun e!862018 () Bool)

(assert (=> b!1548595 (= e!862018 tp_is_empty!38079)))

(declare-fun b!1548596 () Bool)

(assert (=> b!1548596 (= e!862023 (not true))))

(declare-fun lt!667374 () ListLongMap!22377)

(declare-fun lt!667371 () V!59215)

(declare-fun apply!1106 (ListLongMap!22377 (_ BitVec 64)) V!59215)

(assert (=> b!1548596 (= (apply!1106 lt!667374 (select (arr!49858 _keys!618) from!762)) lt!667371)))

(declare-datatypes ((Unit!51542 0))(
  ( (Unit!51543) )
))
(declare-fun lt!667373 () Unit!51542)

(declare-fun lt!667368 () ListLongMap!22377)

(declare-fun addApplyDifferent!609 (ListLongMap!22377 (_ BitVec 64) V!59215 (_ BitVec 64)) Unit!51542)

(assert (=> b!1548596 (= lt!667373 (addApplyDifferent!609 lt!667368 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49858 _keys!618) from!762)))))

(declare-fun lt!667376 () V!59215)

(assert (=> b!1548596 (= lt!667376 lt!667371)))

(assert (=> b!1548596 (= lt!667371 (apply!1106 lt!667368 (select (arr!49858 _keys!618) from!762)))))

(assert (=> b!1548596 (= lt!667376 (apply!1106 (+!4923 lt!667368 (tuple2!24757 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49858 _keys!618) from!762)))))

(declare-fun lt!667370 () Unit!51542)

(assert (=> b!1548596 (= lt!667370 (addApplyDifferent!609 lt!667368 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49858 _keys!618) from!762)))))

(declare-fun contains!10090 (ListLongMap!22377 (_ BitVec 64)) Bool)

(assert (=> b!1548596 (contains!10090 lt!667374 (select (arr!49858 _keys!618) from!762))))

(assert (=> b!1548596 (= lt!667374 (+!4923 lt!667368 (tuple2!24757 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667369 () Unit!51542)

(declare-fun addStillContains!1272 (ListLongMap!22377 (_ BitVec 64) V!59215 (_ BitVec 64)) Unit!51542)

(assert (=> b!1548596 (= lt!667369 (addStillContains!1272 lt!667368 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49858 _keys!618) from!762)))))

(assert (=> b!1548596 (= lt!667368 (getCurrentListMapNoExtraKeys!6644 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1548597 () Bool)

(declare-fun c!142176 () Bool)

(assert (=> b!1548597 (= c!142176 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!667375))))

(declare-fun e!862021 () ListLongMap!22377)

(assert (=> b!1548597 (= e!862016 e!862021)))

(declare-fun bm!70246 () Bool)

(declare-fun call!70249 () ListLongMap!22377)

(declare-fun call!70250 () ListLongMap!22377)

(assert (=> bm!70246 (= call!70249 call!70250)))

(declare-fun b!1548598 () Bool)

(assert (=> b!1548598 (= e!862021 call!70248)))

(declare-fun b!1548599 () Bool)

(declare-fun e!862017 () Bool)

(assert (=> b!1548599 (= e!862017 tp_is_empty!38079)))

(declare-fun mapNonEmpty!58822 () Bool)

(declare-fun mapRes!58822 () Bool)

(declare-fun tp!111661 () Bool)

(assert (=> mapNonEmpty!58822 (= mapRes!58822 (and tp!111661 e!862018))))

(declare-fun mapKey!58822 () (_ BitVec 32))

(declare-fun mapValue!58822 () ValueCell!18129)

(declare-fun mapRest!58822 () (Array (_ BitVec 32) ValueCell!18129))

(assert (=> mapNonEmpty!58822 (= (arr!49859 _values!470) (store mapRest!58822 mapKey!58822 mapValue!58822))))

(declare-fun mapIsEmpty!58822 () Bool)

(assert (=> mapIsEmpty!58822 mapRes!58822))

(declare-fun b!1548600 () Bool)

(assert (=> b!1548600 (= e!862021 call!70249)))

(declare-fun b!1548601 () Bool)

(assert (=> b!1548601 (= e!862022 (and e!862017 mapRes!58822))))

(declare-fun condMapEmpty!58822 () Bool)

(declare-fun mapDefault!58822 () ValueCell!18129)

(assert (=> b!1548601 (= condMapEmpty!58822 (= (arr!49859 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18129)) mapDefault!58822)))))

(declare-fun bm!70247 () Bool)

(assert (=> bm!70247 (= call!70251 (+!4923 (ite c!142177 call!70247 (ite c!142178 call!70250 call!70249)) (ite (or c!142177 c!142178) (tuple2!24757 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24757 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!70248 () Bool)

(assert (=> bm!70248 (= call!70250 call!70247)))

(assert (= (and start!132122 res!1061252) b!1548588))

(assert (= (and b!1548588 res!1061254) b!1548594))

(assert (= (and b!1548594 res!1061250) b!1548586))

(assert (= (and b!1548586 res!1061255) b!1548592))

(assert (= (and b!1548592 res!1061251) b!1548591))

(assert (= (and b!1548591 c!142177) b!1548587))

(assert (= (and b!1548591 (not c!142177)) b!1548589))

(assert (= (and b!1548589 c!142178) b!1548593))

(assert (= (and b!1548589 (not c!142178)) b!1548597))

(assert (= (and b!1548597 c!142176) b!1548598))

(assert (= (and b!1548597 (not c!142176)) b!1548600))

(assert (= (or b!1548598 b!1548600) bm!70246))

(assert (= (or b!1548593 bm!70246) bm!70248))

(assert (= (or b!1548593 b!1548598) bm!70244))

(assert (= (or b!1548587 bm!70248) bm!70245))

(assert (= (or b!1548587 bm!70244) bm!70247))

(assert (= (and b!1548591 res!1061249) b!1548590))

(assert (= (and b!1548590 res!1061253) b!1548596))

(assert (= (and b!1548601 condMapEmpty!58822) mapIsEmpty!58822))

(assert (= (and b!1548601 (not condMapEmpty!58822)) mapNonEmpty!58822))

(get-info :version)

(assert (= (and mapNonEmpty!58822 ((_ is ValueCellFull!18129) mapValue!58822)) b!1548595))

(assert (= (and b!1548601 ((_ is ValueCellFull!18129) mapDefault!58822)) b!1548599))

(assert (= start!132122 b!1548601))

(declare-fun m!1427993 () Bool)

(assert (=> mapNonEmpty!58822 m!1427993))

(declare-fun m!1427995 () Bool)

(assert (=> start!132122 m!1427995))

(declare-fun m!1427997 () Bool)

(assert (=> start!132122 m!1427997))

(declare-fun m!1427999 () Bool)

(assert (=> start!132122 m!1427999))

(declare-fun m!1428001 () Bool)

(assert (=> b!1548596 m!1428001))

(declare-fun m!1428003 () Bool)

(assert (=> b!1548596 m!1428003))

(declare-fun m!1428005 () Bool)

(assert (=> b!1548596 m!1428005))

(declare-fun m!1428007 () Bool)

(assert (=> b!1548596 m!1428007))

(assert (=> b!1548596 m!1428001))

(declare-fun m!1428009 () Bool)

(assert (=> b!1548596 m!1428009))

(assert (=> b!1548596 m!1428001))

(declare-fun m!1428011 () Bool)

(assert (=> b!1548596 m!1428011))

(assert (=> b!1548596 m!1428001))

(declare-fun m!1428013 () Bool)

(assert (=> b!1548596 m!1428013))

(declare-fun m!1428015 () Bool)

(assert (=> b!1548596 m!1428015))

(assert (=> b!1548596 m!1428001))

(declare-fun m!1428017 () Bool)

(assert (=> b!1548596 m!1428017))

(assert (=> b!1548596 m!1428007))

(assert (=> b!1548596 m!1428001))

(declare-fun m!1428019 () Bool)

(assert (=> b!1548596 m!1428019))

(assert (=> b!1548596 m!1428001))

(assert (=> b!1548596 m!1428001))

(declare-fun m!1428021 () Bool)

(assert (=> b!1548596 m!1428021))

(assert (=> b!1548590 m!1428001))

(assert (=> b!1548590 m!1428001))

(declare-fun m!1428023 () Bool)

(assert (=> b!1548590 m!1428023))

(declare-fun m!1428025 () Bool)

(assert (=> b!1548594 m!1428025))

(declare-fun m!1428027 () Bool)

(assert (=> b!1548586 m!1428027))

(assert (=> bm!70245 m!1428005))

(declare-fun m!1428029 () Bool)

(assert (=> b!1548587 m!1428029))

(declare-fun m!1428031 () Bool)

(assert (=> bm!70247 m!1428031))

(check-sat (not bm!70245) tp_is_empty!38079 (not b!1548587) (not b!1548586) b_and!51223 (not b!1548590) (not b!1548594) (not start!132122) (not bm!70247) (not b_next!31803) (not mapNonEmpty!58822) (not b!1548596))
(check-sat b_and!51223 (not b_next!31803))
