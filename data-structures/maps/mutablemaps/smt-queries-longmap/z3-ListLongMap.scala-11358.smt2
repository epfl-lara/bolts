; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132086 () Bool)

(assert start!132086)

(declare-fun b_free!31767 () Bool)

(declare-fun b_next!31767 () Bool)

(assert (=> start!132086 (= b_free!31767 (not b_next!31767))))

(declare-fun tp!111553 () Bool)

(declare-fun b_and!51187 () Bool)

(assert (=> start!132086 (= tp!111553 b_and!51187)))

(declare-fun b!1547722 () Bool)

(declare-datatypes ((V!59167 0))(
  ( (V!59168 (val!19099 Int)) )
))
(declare-datatypes ((tuple2!24722 0))(
  ( (tuple2!24723 (_1!12371 (_ BitVec 64)) (_2!12371 V!59167)) )
))
(declare-datatypes ((List!36229 0))(
  ( (Nil!36226) (Cons!36225 (h!37671 tuple2!24722) (t!50930 List!36229)) )
))
(declare-datatypes ((ListLongMap!22343 0))(
  ( (ListLongMap!22344 (toList!11187 List!36229)) )
))
(declare-fun e!861535 () ListLongMap!22343)

(declare-fun call!69981 () ListLongMap!22343)

(assert (=> b!1547722 (= e!861535 call!69981)))

(declare-fun b!1547723 () Bool)

(declare-fun res!1060875 () Bool)

(declare-fun e!861537 () Bool)

(assert (=> b!1547723 (=> (not res!1060875) (not e!861537))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103251 0))(
  ( (array!103252 (arr!49823 (Array (_ BitVec 32) (_ BitVec 64))) (size!50374 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103251)

(assert (=> b!1547723 (= res!1060875 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50374 _keys!618))))))

(declare-fun zeroValue!436 () V!59167)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18111 0))(
  ( (ValueCellFull!18111 (v!21897 V!59167)) (EmptyCell!18111) )
))
(declare-datatypes ((array!103253 0))(
  ( (array!103254 (arr!49824 (Array (_ BitVec 32) ValueCell!18111)) (size!50375 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103253)

(declare-fun minValue!436 () V!59167)

(declare-fun call!69979 () ListLongMap!22343)

(declare-fun bm!69974 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6630 (array!103251 array!103253 (_ BitVec 32) (_ BitVec 32) V!59167 V!59167 (_ BitVec 32) Int) ListLongMap!22343)

(assert (=> bm!69974 (= call!69979 (getCurrentListMapNoExtraKeys!6630 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!69975 () Bool)

(declare-fun call!69980 () ListLongMap!22343)

(assert (=> bm!69975 (= call!69980 call!69979)))

(declare-fun mapNonEmpty!58768 () Bool)

(declare-fun mapRes!58768 () Bool)

(declare-fun tp!111554 () Bool)

(declare-fun e!861538 () Bool)

(assert (=> mapNonEmpty!58768 (= mapRes!58768 (and tp!111554 e!861538))))

(declare-fun mapKey!58768 () (_ BitVec 32))

(declare-fun mapValue!58768 () ValueCell!18111)

(declare-fun mapRest!58768 () (Array (_ BitVec 32) ValueCell!18111))

(assert (=> mapNonEmpty!58768 (= (arr!49824 _values!470) (store mapRest!58768 mapKey!58768 mapValue!58768))))

(declare-fun b!1547724 () Bool)

(declare-fun e!861536 () Bool)

(assert (=> b!1547724 (= e!861536 (not true))))

(declare-fun lt!666926 () ListLongMap!22343)

(declare-fun apply!1093 (ListLongMap!22343 (_ BitVec 64)) V!59167)

(declare-fun +!4910 (ListLongMap!22343 tuple2!24722) ListLongMap!22343)

(assert (=> b!1547724 (= (apply!1093 (+!4910 lt!666926 (tuple2!24723 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49823 _keys!618) from!762)) (apply!1093 lt!666926 (select (arr!49823 _keys!618) from!762)))))

(declare-datatypes ((Unit!51516 0))(
  ( (Unit!51517) )
))
(declare-fun lt!666928 () Unit!51516)

(declare-fun addApplyDifferent!596 (ListLongMap!22343 (_ BitVec 64) V!59167 (_ BitVec 64)) Unit!51516)

(assert (=> b!1547724 (= lt!666928 (addApplyDifferent!596 lt!666926 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49823 _keys!618) from!762)))))

(declare-fun contains!10077 (ListLongMap!22343 (_ BitVec 64)) Bool)

(assert (=> b!1547724 (contains!10077 (+!4910 lt!666926 (tuple2!24723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49823 _keys!618) from!762))))

(declare-fun lt!666929 () Unit!51516)

(declare-fun addStillContains!1259 (ListLongMap!22343 (_ BitVec 64) V!59167 (_ BitVec 64)) Unit!51516)

(assert (=> b!1547724 (= lt!666929 (addStillContains!1259 lt!666926 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49823 _keys!618) from!762)))))

(assert (=> b!1547724 (= lt!666926 (getCurrentListMapNoExtraKeys!6630 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!69976 () Bool)

(declare-fun call!69977 () ListLongMap!22343)

(assert (=> bm!69976 (= call!69977 call!69980)))

(declare-fun b!1547726 () Bool)

(declare-fun res!1060872 () Bool)

(assert (=> b!1547726 (=> (not res!1060872) (not e!861537))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103251 (_ BitVec 32)) Bool)

(assert (=> b!1547726 (= res!1060872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1547727 () Bool)

(declare-fun e!861532 () Bool)

(declare-fun e!861534 () Bool)

(assert (=> b!1547727 (= e!861532 (and e!861534 mapRes!58768))))

(declare-fun condMapEmpty!58768 () Bool)

(declare-fun mapDefault!58768 () ValueCell!18111)

(assert (=> b!1547727 (= condMapEmpty!58768 (= (arr!49824 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18111)) mapDefault!58768)))))

(declare-fun b!1547728 () Bool)

(declare-fun tp_is_empty!38043 () Bool)

(assert (=> b!1547728 (= e!861538 tp_is_empty!38043)))

(declare-fun b!1547729 () Bool)

(declare-fun res!1060877 () Bool)

(assert (=> b!1547729 (=> (not res!1060877) (not e!861537))))

(declare-datatypes ((List!36230 0))(
  ( (Nil!36227) (Cons!36226 (h!37672 (_ BitVec 64)) (t!50931 List!36230)) )
))
(declare-fun arrayNoDuplicates!0 (array!103251 (_ BitVec 32) List!36230) Bool)

(assert (=> b!1547729 (= res!1060877 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36227))))

(declare-fun b!1547730 () Bool)

(declare-fun c!142014 () Bool)

(declare-fun lt!666927 () Bool)

(assert (=> b!1547730 (= c!142014 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666927))))

(declare-fun e!861531 () ListLongMap!22343)

(assert (=> b!1547730 (= e!861531 e!861535)))

(declare-fun b!1547731 () Bool)

(assert (=> b!1547731 (= e!861534 tp_is_empty!38043)))

(declare-fun b!1547732 () Bool)

(declare-fun res!1060873 () Bool)

(assert (=> b!1547732 (=> (not res!1060873) (not e!861536))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1547732 (= res!1060873 (validKeyInArray!0 (select (arr!49823 _keys!618) from!762)))))

(declare-fun res!1060876 () Bool)

(assert (=> start!132086 (=> (not res!1060876) (not e!861537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132086 (= res!1060876 (validMask!0 mask!926))))

(assert (=> start!132086 e!861537))

(declare-fun array_inv!38671 (array!103251) Bool)

(assert (=> start!132086 (array_inv!38671 _keys!618)))

(assert (=> start!132086 tp_is_empty!38043))

(assert (=> start!132086 true))

(assert (=> start!132086 tp!111553))

(declare-fun array_inv!38672 (array!103253) Bool)

(assert (=> start!132086 (and (array_inv!38672 _values!470) e!861532)))

(declare-fun b!1547725 () Bool)

(declare-fun e!861533 () ListLongMap!22343)

(assert (=> b!1547725 (= e!861533 e!861531)))

(declare-fun c!142015 () Bool)

(assert (=> b!1547725 (= c!142015 (and (not lt!666927) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1547733 () Bool)

(assert (=> b!1547733 (= e!861537 e!861536)))

(declare-fun res!1060874 () Bool)

(assert (=> b!1547733 (=> (not res!1060874) (not e!861536))))

(assert (=> b!1547733 (= res!1060874 (bvslt from!762 (size!50374 _keys!618)))))

(declare-fun lt!666925 () ListLongMap!22343)

(assert (=> b!1547733 (= lt!666925 e!861533)))

(declare-fun c!142016 () Bool)

(assert (=> b!1547733 (= c!142016 (and (not lt!666927) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1547733 (= lt!666927 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun call!69978 () ListLongMap!22343)

(declare-fun bm!69977 () Bool)

(assert (=> bm!69977 (= call!69978 (+!4910 (ite c!142016 call!69979 (ite c!142015 call!69980 call!69977)) (ite (or c!142016 c!142015) (tuple2!24723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24723 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1547734 () Bool)

(assert (=> b!1547734 (= e!861535 call!69977)))

(declare-fun mapIsEmpty!58768 () Bool)

(assert (=> mapIsEmpty!58768 mapRes!58768))

(declare-fun bm!69978 () Bool)

(assert (=> bm!69978 (= call!69981 call!69978)))

(declare-fun b!1547735 () Bool)

(assert (=> b!1547735 (= e!861531 call!69981)))

(declare-fun b!1547736 () Bool)

(declare-fun res!1060871 () Bool)

(assert (=> b!1547736 (=> (not res!1060871) (not e!861537))))

(assert (=> b!1547736 (= res!1060871 (and (= (size!50375 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50374 _keys!618) (size!50375 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1547737 () Bool)

(assert (=> b!1547737 (= e!861533 (+!4910 call!69978 (tuple2!24723 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(assert (= (and start!132086 res!1060876) b!1547736))

(assert (= (and b!1547736 res!1060871) b!1547726))

(assert (= (and b!1547726 res!1060872) b!1547729))

(assert (= (and b!1547729 res!1060877) b!1547723))

(assert (= (and b!1547723 res!1060875) b!1547733))

(assert (= (and b!1547733 c!142016) b!1547737))

(assert (= (and b!1547733 (not c!142016)) b!1547725))

(assert (= (and b!1547725 c!142015) b!1547735))

(assert (= (and b!1547725 (not c!142015)) b!1547730))

(assert (= (and b!1547730 c!142014) b!1547722))

(assert (= (and b!1547730 (not c!142014)) b!1547734))

(assert (= (or b!1547722 b!1547734) bm!69976))

(assert (= (or b!1547735 bm!69976) bm!69975))

(assert (= (or b!1547735 b!1547722) bm!69978))

(assert (= (or b!1547737 bm!69975) bm!69974))

(assert (= (or b!1547737 bm!69978) bm!69977))

(assert (= (and b!1547733 res!1060874) b!1547732))

(assert (= (and b!1547732 res!1060873) b!1547724))

(assert (= (and b!1547727 condMapEmpty!58768) mapIsEmpty!58768))

(assert (= (and b!1547727 (not condMapEmpty!58768)) mapNonEmpty!58768))

(get-info :version)

(assert (= (and mapNonEmpty!58768 ((_ is ValueCellFull!18111) mapValue!58768)) b!1547728))

(assert (= (and b!1547727 ((_ is ValueCellFull!18111) mapDefault!58768)) b!1547731))

(assert (= start!132086 b!1547727))

(declare-fun m!1427287 () Bool)

(assert (=> bm!69974 m!1427287))

(declare-fun m!1427289 () Bool)

(assert (=> b!1547732 m!1427289))

(assert (=> b!1547732 m!1427289))

(declare-fun m!1427291 () Bool)

(assert (=> b!1547732 m!1427291))

(declare-fun m!1427293 () Bool)

(assert (=> mapNonEmpty!58768 m!1427293))

(declare-fun m!1427295 () Bool)

(assert (=> b!1547724 m!1427295))

(assert (=> b!1547724 m!1427287))

(assert (=> b!1547724 m!1427289))

(assert (=> b!1547724 m!1427289))

(declare-fun m!1427297 () Bool)

(assert (=> b!1547724 m!1427297))

(assert (=> b!1547724 m!1427295))

(assert (=> b!1547724 m!1427289))

(declare-fun m!1427299 () Bool)

(assert (=> b!1547724 m!1427299))

(declare-fun m!1427301 () Bool)

(assert (=> b!1547724 m!1427301))

(assert (=> b!1547724 m!1427289))

(declare-fun m!1427303 () Bool)

(assert (=> b!1547724 m!1427303))

(assert (=> b!1547724 m!1427289))

(declare-fun m!1427305 () Bool)

(assert (=> b!1547724 m!1427305))

(assert (=> b!1547724 m!1427301))

(assert (=> b!1547724 m!1427289))

(declare-fun m!1427307 () Bool)

(assert (=> b!1547724 m!1427307))

(declare-fun m!1427309 () Bool)

(assert (=> b!1547729 m!1427309))

(declare-fun m!1427311 () Bool)

(assert (=> bm!69977 m!1427311))

(declare-fun m!1427313 () Bool)

(assert (=> b!1547726 m!1427313))

(declare-fun m!1427315 () Bool)

(assert (=> b!1547737 m!1427315))

(declare-fun m!1427317 () Bool)

(assert (=> start!132086 m!1427317))

(declare-fun m!1427319 () Bool)

(assert (=> start!132086 m!1427319))

(declare-fun m!1427321 () Bool)

(assert (=> start!132086 m!1427321))

(check-sat (not bm!69977) b_and!51187 (not start!132086) (not b_next!31767) (not b!1547726) (not mapNonEmpty!58768) (not bm!69974) (not b!1547724) (not b!1547729) (not b!1547737) tp_is_empty!38043 (not b!1547732))
(check-sat b_and!51187 (not b_next!31767))
