; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131984 () Bool)

(assert start!131984)

(declare-fun b_free!31665 () Bool)

(declare-fun b_next!31665 () Bool)

(assert (=> start!131984 (= b_free!31665 (not b_next!31665))))

(declare-fun tp!111247 () Bool)

(declare-fun b_and!51085 () Bool)

(assert (=> start!131984 (= tp!111247 b_and!51085)))

(declare-fun b!1545274 () Bool)

(declare-datatypes ((V!59031 0))(
  ( (V!59032 (val!19048 Int)) )
))
(declare-datatypes ((tuple2!24624 0))(
  ( (tuple2!24625 (_1!12322 (_ BitVec 64)) (_2!12322 V!59031)) )
))
(declare-datatypes ((List!36140 0))(
  ( (Nil!36137) (Cons!36136 (h!37582 tuple2!24624) (t!50841 List!36140)) )
))
(declare-datatypes ((ListLongMap!22245 0))(
  ( (ListLongMap!22246 (toList!11138 List!36140)) )
))
(declare-fun e!860155 () ListLongMap!22245)

(declare-fun e!860158 () ListLongMap!22245)

(assert (=> b!1545274 (= e!860155 e!860158)))

(declare-fun c!141556 () Bool)

(declare-fun lt!666230 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1545274 (= c!141556 (and (not lt!666230) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!1059806 () Bool)

(declare-fun e!860157 () Bool)

(assert (=> start!131984 (=> (not res!1059806) (not e!860157))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131984 (= res!1059806 (validMask!0 mask!926))))

(assert (=> start!131984 e!860157))

(declare-datatypes ((array!103055 0))(
  ( (array!103056 (arr!49725 (Array (_ BitVec 32) (_ BitVec 64))) (size!50276 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103055)

(declare-fun array_inv!38597 (array!103055) Bool)

(assert (=> start!131984 (array_inv!38597 _keys!618)))

(declare-fun tp_is_empty!37941 () Bool)

(assert (=> start!131984 tp_is_empty!37941))

(assert (=> start!131984 true))

(assert (=> start!131984 tp!111247))

(declare-datatypes ((ValueCell!18060 0))(
  ( (ValueCellFull!18060 (v!21846 V!59031)) (EmptyCell!18060) )
))
(declare-datatypes ((array!103057 0))(
  ( (array!103058 (arr!49726 (Array (_ BitVec 32) ValueCell!18060)) (size!50277 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103057)

(declare-fun e!860159 () Bool)

(declare-fun array_inv!38598 (array!103057) Bool)

(assert (=> start!131984 (and (array_inv!38598 _values!470) e!860159)))

(declare-fun b!1545275 () Bool)

(declare-fun call!69213 () ListLongMap!22245)

(assert (=> b!1545275 (= e!860158 call!69213)))

(declare-fun bm!69209 () Bool)

(declare-fun call!69212 () ListLongMap!22245)

(declare-fun call!69215 () ListLongMap!22245)

(assert (=> bm!69209 (= call!69212 call!69215)))

(declare-fun b!1545276 () Bool)

(declare-fun res!1059800 () Bool)

(assert (=> b!1545276 (=> (not res!1059800) (not e!860157))))

(declare-datatypes ((List!36141 0))(
  ( (Nil!36138) (Cons!36137 (h!37583 (_ BitVec 64)) (t!50842 List!36141)) )
))
(declare-fun arrayNoDuplicates!0 (array!103055 (_ BitVec 32) List!36141) Bool)

(assert (=> b!1545276 (= res!1059800 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36138))))

(declare-fun b!1545277 () Bool)

(declare-fun res!1059804 () Bool)

(declare-fun e!860161 () Bool)

(assert (=> b!1545277 (=> (not res!1059804) (not e!860161))))

(declare-fun from!762 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1545277 (= res!1059804 (validKeyInArray!0 (select (arr!49725 _keys!618) from!762)))))

(declare-fun mapNonEmpty!58615 () Bool)

(declare-fun mapRes!58615 () Bool)

(declare-fun tp!111248 () Bool)

(declare-fun e!860154 () Bool)

(assert (=> mapNonEmpty!58615 (= mapRes!58615 (and tp!111248 e!860154))))

(declare-fun mapValue!58615 () ValueCell!18060)

(declare-fun mapRest!58615 () (Array (_ BitVec 32) ValueCell!18060))

(declare-fun mapKey!58615 () (_ BitVec 32))

(assert (=> mapNonEmpty!58615 (= (arr!49726 _values!470) (store mapRest!58615 mapKey!58615 mapValue!58615))))

(declare-fun zeroValue!436 () V!59031)

(declare-fun defaultEntry!478 () Int)

(declare-fun minValue!436 () V!59031)

(declare-fun bm!69210 () Bool)

(declare-fun call!69216 () ListLongMap!22245)

(declare-fun getCurrentListMapNoExtraKeys!6587 (array!103055 array!103057 (_ BitVec 32) (_ BitVec 32) V!59031 V!59031 (_ BitVec 32) Int) ListLongMap!22245)

(assert (=> bm!69210 (= call!69216 (getCurrentListMapNoExtraKeys!6587 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1545278 () Bool)

(declare-fun e!860156 () Bool)

(assert (=> b!1545278 (= e!860156 tp_is_empty!37941)))

(declare-fun b!1545279 () Bool)

(assert (=> b!1545279 (= e!860157 e!860161)))

(declare-fun res!1059805 () Bool)

(assert (=> b!1545279 (=> (not res!1059805) (not e!860161))))

(assert (=> b!1545279 (= res!1059805 (bvslt from!762 (size!50276 _keys!618)))))

(declare-fun lt!666228 () ListLongMap!22245)

(assert (=> b!1545279 (= lt!666228 e!860155)))

(declare-fun c!141557 () Bool)

(assert (=> b!1545279 (= c!141557 (and (not lt!666230) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1545279 (= lt!666230 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!58615 () Bool)

(assert (=> mapIsEmpty!58615 mapRes!58615))

(declare-fun b!1545280 () Bool)

(declare-fun res!1059803 () Bool)

(assert (=> b!1545280 (=> (not res!1059803) (not e!860157))))

(assert (=> b!1545280 (= res!1059803 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50276 _keys!618))))))

(declare-fun call!69214 () ListLongMap!22245)

(declare-fun bm!69211 () Bool)

(declare-fun +!4868 (ListLongMap!22245 tuple2!24624) ListLongMap!22245)

(assert (=> bm!69211 (= call!69214 (+!4868 (ite c!141557 call!69216 (ite c!141556 call!69215 call!69212)) (ite (or c!141557 c!141556) (tuple2!24625 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24625 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1545281 () Bool)

(declare-fun c!141555 () Bool)

(assert (=> b!1545281 (= c!141555 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666230))))

(declare-fun e!860160 () ListLongMap!22245)

(assert (=> b!1545281 (= e!860158 e!860160)))

(declare-fun b!1545282 () Bool)

(assert (=> b!1545282 (= e!860160 call!69213)))

(declare-fun b!1545283 () Bool)

(assert (=> b!1545283 (= e!860155 (+!4868 call!69214 (tuple2!24625 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1545284 () Bool)

(assert (=> b!1545284 (= e!860160 call!69212)))

(declare-fun b!1545285 () Bool)

(declare-fun res!1059802 () Bool)

(assert (=> b!1545285 (=> (not res!1059802) (not e!860157))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103055 (_ BitVec 32)) Bool)

(assert (=> b!1545285 (= res!1059802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1545286 () Bool)

(assert (=> b!1545286 (= e!860161 (not true))))

(declare-fun lt!666229 () ListLongMap!22245)

(declare-fun contains!10042 (ListLongMap!22245 (_ BitVec 64)) Bool)

(assert (=> b!1545286 (contains!10042 (+!4868 lt!666229 (tuple2!24625 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49725 _keys!618) from!762))))

(declare-datatypes ((Unit!51446 0))(
  ( (Unit!51447) )
))
(declare-fun lt!666227 () Unit!51446)

(declare-fun addStillContains!1224 (ListLongMap!22245 (_ BitVec 64) V!59031 (_ BitVec 64)) Unit!51446)

(assert (=> b!1545286 (= lt!666227 (addStillContains!1224 lt!666229 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49725 _keys!618) from!762)))))

(assert (=> b!1545286 (= lt!666229 (getCurrentListMapNoExtraKeys!6587 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1545287 () Bool)

(assert (=> b!1545287 (= e!860154 tp_is_empty!37941)))

(declare-fun b!1545288 () Bool)

(assert (=> b!1545288 (= e!860159 (and e!860156 mapRes!58615))))

(declare-fun condMapEmpty!58615 () Bool)

(declare-fun mapDefault!58615 () ValueCell!18060)

(assert (=> b!1545288 (= condMapEmpty!58615 (= (arr!49726 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18060)) mapDefault!58615)))))

(declare-fun bm!69212 () Bool)

(assert (=> bm!69212 (= call!69215 call!69216)))

(declare-fun b!1545289 () Bool)

(declare-fun res!1059801 () Bool)

(assert (=> b!1545289 (=> (not res!1059801) (not e!860157))))

(assert (=> b!1545289 (= res!1059801 (and (= (size!50277 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50276 _keys!618) (size!50277 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun bm!69213 () Bool)

(assert (=> bm!69213 (= call!69213 call!69214)))

(assert (= (and start!131984 res!1059806) b!1545289))

(assert (= (and b!1545289 res!1059801) b!1545285))

(assert (= (and b!1545285 res!1059802) b!1545276))

(assert (= (and b!1545276 res!1059800) b!1545280))

(assert (= (and b!1545280 res!1059803) b!1545279))

(assert (= (and b!1545279 c!141557) b!1545283))

(assert (= (and b!1545279 (not c!141557)) b!1545274))

(assert (= (and b!1545274 c!141556) b!1545275))

(assert (= (and b!1545274 (not c!141556)) b!1545281))

(assert (= (and b!1545281 c!141555) b!1545282))

(assert (= (and b!1545281 (not c!141555)) b!1545284))

(assert (= (or b!1545282 b!1545284) bm!69209))

(assert (= (or b!1545275 bm!69209) bm!69212))

(assert (= (or b!1545275 b!1545282) bm!69213))

(assert (= (or b!1545283 bm!69212) bm!69210))

(assert (= (or b!1545283 bm!69213) bm!69211))

(assert (= (and b!1545279 res!1059805) b!1545277))

(assert (= (and b!1545277 res!1059804) b!1545286))

(assert (= (and b!1545288 condMapEmpty!58615) mapIsEmpty!58615))

(assert (= (and b!1545288 (not condMapEmpty!58615)) mapNonEmpty!58615))

(get-info :version)

(assert (= (and mapNonEmpty!58615 ((_ is ValueCellFull!18060) mapValue!58615)) b!1545287))

(assert (= (and b!1545288 ((_ is ValueCellFull!18060) mapDefault!58615)) b!1545278))

(assert (= start!131984 b!1545288))

(declare-fun m!1425653 () Bool)

(assert (=> b!1545285 m!1425653))

(declare-fun m!1425655 () Bool)

(assert (=> b!1545277 m!1425655))

(assert (=> b!1545277 m!1425655))

(declare-fun m!1425657 () Bool)

(assert (=> b!1545277 m!1425657))

(declare-fun m!1425659 () Bool)

(assert (=> bm!69211 m!1425659))

(declare-fun m!1425661 () Bool)

(assert (=> b!1545286 m!1425661))

(assert (=> b!1545286 m!1425655))

(declare-fun m!1425663 () Bool)

(assert (=> b!1545286 m!1425663))

(assert (=> b!1545286 m!1425655))

(declare-fun m!1425665 () Bool)

(assert (=> b!1545286 m!1425665))

(assert (=> b!1545286 m!1425663))

(assert (=> b!1545286 m!1425655))

(declare-fun m!1425667 () Bool)

(assert (=> b!1545286 m!1425667))

(declare-fun m!1425669 () Bool)

(assert (=> start!131984 m!1425669))

(declare-fun m!1425671 () Bool)

(assert (=> start!131984 m!1425671))

(declare-fun m!1425673 () Bool)

(assert (=> start!131984 m!1425673))

(declare-fun m!1425675 () Bool)

(assert (=> b!1545276 m!1425675))

(declare-fun m!1425677 () Bool)

(assert (=> mapNonEmpty!58615 m!1425677))

(assert (=> bm!69210 m!1425661))

(declare-fun m!1425679 () Bool)

(assert (=> b!1545283 m!1425679))

(check-sat (not bm!69210) (not b_next!31665) (not mapNonEmpty!58615) (not b!1545277) tp_is_empty!37941 (not b!1545285) (not b!1545276) (not start!131984) (not bm!69211) (not b!1545283) b_and!51085 (not b!1545286))
(check-sat b_and!51085 (not b_next!31665))
