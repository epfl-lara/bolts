; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131996 () Bool)

(assert start!131996)

(declare-fun b_free!31677 () Bool)

(declare-fun b_next!31677 () Bool)

(assert (=> start!131996 (= b_free!31677 (not b_next!31677))))

(declare-fun tp!111284 () Bool)

(declare-fun b_and!51097 () Bool)

(assert (=> start!131996 (= tp!111284 b_and!51097)))

(declare-fun b!1545562 () Bool)

(declare-fun e!860321 () Bool)

(declare-fun e!860316 () Bool)

(declare-fun mapRes!58633 () Bool)

(assert (=> b!1545562 (= e!860321 (and e!860316 mapRes!58633))))

(declare-fun condMapEmpty!58633 () Bool)

(declare-datatypes ((V!59047 0))(
  ( (V!59048 (val!19054 Int)) )
))
(declare-datatypes ((ValueCell!18066 0))(
  ( (ValueCellFull!18066 (v!21852 V!59047)) (EmptyCell!18066) )
))
(declare-datatypes ((array!103079 0))(
  ( (array!103080 (arr!49737 (Array (_ BitVec 32) ValueCell!18066)) (size!50288 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103079)

(declare-fun mapDefault!58633 () ValueCell!18066)

(assert (=> b!1545562 (= condMapEmpty!58633 (= (arr!49737 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18066)) mapDefault!58633)))))

(declare-fun bm!69299 () Bool)

(declare-datatypes ((tuple2!24636 0))(
  ( (tuple2!24637 (_1!12328 (_ BitVec 64)) (_2!12328 V!59047)) )
))
(declare-datatypes ((List!36150 0))(
  ( (Nil!36147) (Cons!36146 (h!37592 tuple2!24636) (t!50851 List!36150)) )
))
(declare-datatypes ((ListLongMap!22257 0))(
  ( (ListLongMap!22258 (toList!11144 List!36150)) )
))
(declare-fun call!69306 () ListLongMap!22257)

(declare-fun call!69304 () ListLongMap!22257)

(assert (=> bm!69299 (= call!69306 call!69304)))

(declare-fun b!1545563 () Bool)

(declare-fun res!1059931 () Bool)

(declare-fun e!860322 () Bool)

(assert (=> b!1545563 (=> (not res!1059931) (not e!860322))))

(declare-datatypes ((array!103081 0))(
  ( (array!103082 (arr!49738 (Array (_ BitVec 32) (_ BitVec 64))) (size!50289 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103081)

(declare-datatypes ((List!36151 0))(
  ( (Nil!36148) (Cons!36147 (h!37593 (_ BitVec 64)) (t!50852 List!36151)) )
))
(declare-fun arrayNoDuplicates!0 (array!103081 (_ BitVec 32) List!36151) Bool)

(assert (=> b!1545563 (= res!1059931 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36148))))

(declare-fun b!1545564 () Bool)

(declare-fun e!860320 () ListLongMap!22257)

(declare-fun call!69303 () ListLongMap!22257)

(assert (=> b!1545564 (= e!860320 call!69303)))

(declare-fun b!1545565 () Bool)

(declare-fun e!860323 () Bool)

(assert (=> b!1545565 (= e!860322 e!860323)))

(declare-fun res!1059930 () Bool)

(assert (=> b!1545565 (=> (not res!1059930) (not e!860323))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1545565 (= res!1059930 (bvslt from!762 (size!50289 _keys!618)))))

(declare-fun lt!666299 () ListLongMap!22257)

(declare-fun e!860315 () ListLongMap!22257)

(assert (=> b!1545565 (= lt!666299 e!860315)))

(declare-fun c!141610 () Bool)

(declare-fun lt!666300 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1545565 (= c!141610 (and (not lt!666300) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1545565 (= lt!666300 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!69300 () Bool)

(declare-fun call!69305 () ListLongMap!22257)

(assert (=> bm!69300 (= call!69303 call!69305)))

(declare-fun b!1545567 () Bool)

(assert (=> b!1545567 (= e!860323 (not true))))

(declare-fun zeroValue!436 () V!59047)

(declare-fun lt!666302 () ListLongMap!22257)

(declare-fun contains!10046 (ListLongMap!22257 (_ BitVec 64)) Bool)

(declare-fun +!4874 (ListLongMap!22257 tuple2!24636) ListLongMap!22257)

(assert (=> b!1545567 (contains!10046 (+!4874 lt!666302 (tuple2!24637 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49738 _keys!618) from!762))))

(declare-datatypes ((Unit!51454 0))(
  ( (Unit!51455) )
))
(declare-fun lt!666301 () Unit!51454)

(declare-fun addStillContains!1228 (ListLongMap!22257 (_ BitVec 64) V!59047 (_ BitVec 64)) Unit!51454)

(assert (=> b!1545567 (= lt!666301 (addStillContains!1228 lt!666302 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49738 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun minValue!436 () V!59047)

(declare-fun getCurrentListMapNoExtraKeys!6593 (array!103081 array!103079 (_ BitVec 32) (_ BitVec 32) V!59047 V!59047 (_ BitVec 32) Int) ListLongMap!22257)

(assert (=> b!1545567 (= lt!666302 (getCurrentListMapNoExtraKeys!6593 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1545568 () Bool)

(declare-fun tp_is_empty!37953 () Bool)

(assert (=> b!1545568 (= e!860316 tp_is_empty!37953)))

(declare-fun b!1545569 () Bool)

(declare-fun res!1059928 () Bool)

(assert (=> b!1545569 (=> (not res!1059928) (not e!860323))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1545569 (= res!1059928 (validKeyInArray!0 (select (arr!49738 _keys!618) from!762)))))

(declare-fun bm!69301 () Bool)

(declare-fun call!69302 () ListLongMap!22257)

(assert (=> bm!69301 (= call!69302 (getCurrentListMapNoExtraKeys!6593 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun c!141611 () Bool)

(declare-fun bm!69302 () Bool)

(assert (=> bm!69302 (= call!69305 (+!4874 (ite c!141610 call!69302 (ite c!141611 call!69304 call!69306)) (ite (or c!141610 c!141611) (tuple2!24637 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24637 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun mapNonEmpty!58633 () Bool)

(declare-fun tp!111283 () Bool)

(declare-fun e!860318 () Bool)

(assert (=> mapNonEmpty!58633 (= mapRes!58633 (and tp!111283 e!860318))))

(declare-fun mapRest!58633 () (Array (_ BitVec 32) ValueCell!18066))

(declare-fun mapKey!58633 () (_ BitVec 32))

(declare-fun mapValue!58633 () ValueCell!18066)

(assert (=> mapNonEmpty!58633 (= (arr!49737 _values!470) (store mapRest!58633 mapKey!58633 mapValue!58633))))

(declare-fun b!1545570 () Bool)

(assert (=> b!1545570 (= e!860315 (+!4874 call!69305 (tuple2!24637 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1545571 () Bool)

(declare-fun res!1059932 () Bool)

(assert (=> b!1545571 (=> (not res!1059932) (not e!860322))))

(assert (=> b!1545571 (= res!1059932 (and (= (size!50288 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50289 _keys!618) (size!50288 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1545572 () Bool)

(assert (=> b!1545572 (= e!860320 call!69306)))

(declare-fun b!1545573 () Bool)

(declare-fun res!1059929 () Bool)

(assert (=> b!1545573 (=> (not res!1059929) (not e!860322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103081 (_ BitVec 32)) Bool)

(assert (=> b!1545573 (= res!1059929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun res!1059927 () Bool)

(assert (=> start!131996 (=> (not res!1059927) (not e!860322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131996 (= res!1059927 (validMask!0 mask!926))))

(assert (=> start!131996 e!860322))

(declare-fun array_inv!38607 (array!103081) Bool)

(assert (=> start!131996 (array_inv!38607 _keys!618)))

(assert (=> start!131996 tp_is_empty!37953))

(assert (=> start!131996 true))

(assert (=> start!131996 tp!111284))

(declare-fun array_inv!38608 (array!103079) Bool)

(assert (=> start!131996 (and (array_inv!38608 _values!470) e!860321)))

(declare-fun b!1545566 () Bool)

(declare-fun c!141609 () Bool)

(assert (=> b!1545566 (= c!141609 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666300))))

(declare-fun e!860319 () ListLongMap!22257)

(assert (=> b!1545566 (= e!860319 e!860320)))

(declare-fun mapIsEmpty!58633 () Bool)

(assert (=> mapIsEmpty!58633 mapRes!58633))

(declare-fun b!1545574 () Bool)

(declare-fun res!1059926 () Bool)

(assert (=> b!1545574 (=> (not res!1059926) (not e!860322))))

(assert (=> b!1545574 (= res!1059926 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50289 _keys!618))))))

(declare-fun b!1545575 () Bool)

(assert (=> b!1545575 (= e!860318 tp_is_empty!37953)))

(declare-fun bm!69303 () Bool)

(assert (=> bm!69303 (= call!69304 call!69302)))

(declare-fun b!1545576 () Bool)

(assert (=> b!1545576 (= e!860315 e!860319)))

(assert (=> b!1545576 (= c!141611 (and (not lt!666300) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1545577 () Bool)

(assert (=> b!1545577 (= e!860319 call!69303)))

(assert (= (and start!131996 res!1059927) b!1545571))

(assert (= (and b!1545571 res!1059932) b!1545573))

(assert (= (and b!1545573 res!1059929) b!1545563))

(assert (= (and b!1545563 res!1059931) b!1545574))

(assert (= (and b!1545574 res!1059926) b!1545565))

(assert (= (and b!1545565 c!141610) b!1545570))

(assert (= (and b!1545565 (not c!141610)) b!1545576))

(assert (= (and b!1545576 c!141611) b!1545577))

(assert (= (and b!1545576 (not c!141611)) b!1545566))

(assert (= (and b!1545566 c!141609) b!1545564))

(assert (= (and b!1545566 (not c!141609)) b!1545572))

(assert (= (or b!1545564 b!1545572) bm!69299))

(assert (= (or b!1545577 bm!69299) bm!69303))

(assert (= (or b!1545577 b!1545564) bm!69300))

(assert (= (or b!1545570 bm!69303) bm!69301))

(assert (= (or b!1545570 bm!69300) bm!69302))

(assert (= (and b!1545565 res!1059930) b!1545569))

(assert (= (and b!1545569 res!1059928) b!1545567))

(assert (= (and b!1545562 condMapEmpty!58633) mapIsEmpty!58633))

(assert (= (and b!1545562 (not condMapEmpty!58633)) mapNonEmpty!58633))

(get-info :version)

(assert (= (and mapNonEmpty!58633 ((_ is ValueCellFull!18066) mapValue!58633)) b!1545575))

(assert (= (and b!1545562 ((_ is ValueCellFull!18066) mapDefault!58633)) b!1545568))

(assert (= start!131996 b!1545562))

(declare-fun m!1425821 () Bool)

(assert (=> b!1545569 m!1425821))

(assert (=> b!1545569 m!1425821))

(declare-fun m!1425823 () Bool)

(assert (=> b!1545569 m!1425823))

(declare-fun m!1425825 () Bool)

(assert (=> start!131996 m!1425825))

(declare-fun m!1425827 () Bool)

(assert (=> start!131996 m!1425827))

(declare-fun m!1425829 () Bool)

(assert (=> start!131996 m!1425829))

(declare-fun m!1425831 () Bool)

(assert (=> b!1545570 m!1425831))

(declare-fun m!1425833 () Bool)

(assert (=> bm!69301 m!1425833))

(declare-fun m!1425835 () Bool)

(assert (=> b!1545573 m!1425835))

(assert (=> b!1545567 m!1425833))

(assert (=> b!1545567 m!1425821))

(declare-fun m!1425837 () Bool)

(assert (=> b!1545567 m!1425837))

(assert (=> b!1545567 m!1425837))

(assert (=> b!1545567 m!1425821))

(declare-fun m!1425839 () Bool)

(assert (=> b!1545567 m!1425839))

(assert (=> b!1545567 m!1425821))

(declare-fun m!1425841 () Bool)

(assert (=> b!1545567 m!1425841))

(declare-fun m!1425843 () Bool)

(assert (=> bm!69302 m!1425843))

(declare-fun m!1425845 () Bool)

(assert (=> b!1545563 m!1425845))

(declare-fun m!1425847 () Bool)

(assert (=> mapNonEmpty!58633 m!1425847))

(check-sat (not b_next!31677) (not bm!69301) (not b!1545567) (not b!1545573) b_and!51097 (not bm!69302) (not start!131996) (not b!1545563) (not mapNonEmpty!58633) (not b!1545569) (not b!1545570) tp_is_empty!37953)
(check-sat b_and!51097 (not b_next!31677))
