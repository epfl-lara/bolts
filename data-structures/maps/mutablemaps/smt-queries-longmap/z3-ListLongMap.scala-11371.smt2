; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132164 () Bool)

(assert start!132164)

(declare-fun b_free!31845 () Bool)

(declare-fun b_next!31845 () Bool)

(assert (=> start!132164 (= b_free!31845 (not b_next!31845))))

(declare-fun tp!111788 () Bool)

(declare-fun b_and!51267 () Bool)

(assert (=> start!132164 (= tp!111788 b_and!51267)))

(declare-datatypes ((array!103403 0))(
  ( (array!103404 (arr!49899 (Array (_ BitVec 32) (_ BitVec 64))) (size!50450 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103403)

(declare-datatypes ((V!59271 0))(
  ( (V!59272 (val!19138 Int)) )
))
(declare-datatypes ((tuple2!24798 0))(
  ( (tuple2!24799 (_1!12409 (_ BitVec 64)) (_2!12409 V!59271)) )
))
(declare-datatypes ((List!36294 0))(
  ( (Nil!36291) (Cons!36290 (h!37736 tuple2!24798) (t!50999 List!36294)) )
))
(declare-datatypes ((ListLongMap!22419 0))(
  ( (ListLongMap!22420 (toList!11225 List!36294)) )
))
(declare-fun lt!667995 () ListLongMap!22419)

(declare-fun defaultEntry!478 () Int)

(declare-datatypes ((ValueCell!18150 0))(
  ( (ValueCellFull!18150 (v!21936 V!59271)) (EmptyCell!18150) )
))
(declare-datatypes ((array!103405 0))(
  ( (array!103406 (arr!49900 (Array (_ BitVec 32) ValueCell!18150)) (size!50451 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103405)

(declare-fun e!862628 () Bool)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun b!1549639 () Bool)

(declare-fun apply!1117 (ListLongMap!22419 (_ BitVec 64)) V!59271)

(declare-fun get!26025 (ValueCell!18150 V!59271) V!59271)

(declare-fun dynLambda!3868 (Int (_ BitVec 64)) V!59271)

(assert (=> b!1549639 (= e!862628 (= (apply!1117 lt!667995 (select (arr!49899 _keys!618) from!762)) (get!26025 (select (arr!49900 _values!470) from!762) (dynLambda!3868 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1549640 () Bool)

(declare-fun res!1061712 () Bool)

(declare-fun e!862621 () Bool)

(assert (=> b!1549640 (=> (not res!1061712) (not e!862621))))

(declare-fun lt!667993 () Bool)

(assert (=> b!1549640 (= res!1061712 (not lt!667993))))

(declare-fun b!1549641 () Bool)

(declare-fun e!862626 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1549641 (= e!862626 (not (validKeyInArray!0 (select (arr!49899 _keys!618) from!762))))))

(declare-fun bm!70559 () Bool)

(declare-fun call!70562 () ListLongMap!22419)

(declare-fun call!70566 () ListLongMap!22419)

(assert (=> bm!70559 (= call!70562 call!70566)))

(declare-fun b!1549642 () Bool)

(declare-fun e!862631 () Bool)

(declare-fun tp_is_empty!38121 () Bool)

(assert (=> b!1549642 (= e!862631 tp_is_empty!38121)))

(declare-fun res!1061713 () Bool)

(declare-fun e!862623 () Bool)

(assert (=> start!132164 (=> (not res!1061713) (not e!862623))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132164 (= res!1061713 (validMask!0 mask!926))))

(assert (=> start!132164 e!862623))

(declare-fun array_inv!38725 (array!103403) Bool)

(assert (=> start!132164 (array_inv!38725 _keys!618)))

(assert (=> start!132164 tp_is_empty!38121))

(assert (=> start!132164 true))

(assert (=> start!132164 tp!111788))

(declare-fun e!862630 () Bool)

(declare-fun array_inv!38726 (array!103405) Bool)

(assert (=> start!132164 (and (array_inv!38726 _values!470) e!862630)))

(declare-fun b!1549643 () Bool)

(declare-fun res!1061705 () Bool)

(assert (=> b!1549643 (=> (not res!1061705) (not e!862623))))

(declare-datatypes ((List!36295 0))(
  ( (Nil!36292) (Cons!36291 (h!37737 (_ BitVec 64)) (t!51000 List!36295)) )
))
(declare-fun arrayNoDuplicates!0 (array!103403 (_ BitVec 32) List!36295) Bool)

(assert (=> b!1549643 (= res!1061705 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36292))))

(declare-fun b!1549644 () Bool)

(declare-fun res!1061709 () Bool)

(assert (=> b!1549644 (=> (not res!1061709) (not e!862623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103403 (_ BitVec 32)) Bool)

(assert (=> b!1549644 (= res!1061709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1549645 () Bool)

(declare-fun res!1061708 () Bool)

(assert (=> b!1549645 (=> (not res!1061708) (not e!862623))))

(assert (=> b!1549645 (= res!1061708 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50450 _keys!618))))))

(declare-fun mapIsEmpty!58885 () Bool)

(declare-fun mapRes!58885 () Bool)

(assert (=> mapIsEmpty!58885 mapRes!58885))

(declare-fun c!142380 () Bool)

(declare-fun zeroValue!436 () V!59271)

(declare-fun minValue!436 () V!59271)

(declare-fun call!70564 () ListLongMap!22419)

(declare-fun bm!70560 () Bool)

(declare-fun call!70563 () ListLongMap!22419)

(declare-fun c!142381 () Bool)

(declare-fun +!4938 (ListLongMap!22419 tuple2!24798) ListLongMap!22419)

(assert (=> bm!70560 (= call!70563 (+!4938 (ite c!142381 call!70564 (ite c!142380 call!70566 call!70562)) (ite (or c!142381 c!142380) (tuple2!24799 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24799 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1549646 () Bool)

(declare-fun c!142379 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1549646 (= c!142379 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!667993))))

(declare-fun e!862625 () ListLongMap!22419)

(declare-fun e!862632 () ListLongMap!22419)

(assert (=> b!1549646 (= e!862625 e!862632)))

(declare-fun b!1549647 () Bool)

(declare-datatypes ((Unit!51569 0))(
  ( (Unit!51570) )
))
(declare-fun e!862633 () Unit!51569)

(declare-fun lt!667991 () Unit!51569)

(assert (=> b!1549647 (= e!862633 lt!667991)))

(declare-fun lt!667989 () ListLongMap!22419)

(declare-fun getCurrentListMapNoExtraKeys!6658 (array!103403 array!103405 (_ BitVec 32) (_ BitVec 32) V!59271 V!59271 (_ BitVec 32) Int) ListLongMap!22419)

(assert (=> b!1549647 (= lt!667989 (getCurrentListMapNoExtraKeys!6658 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun lt!667987 () Unit!51569)

(declare-fun addStillContains!1283 (ListLongMap!22419 (_ BitVec 64) V!59271 (_ BitVec 64)) Unit!51569)

(assert (=> b!1549647 (= lt!667987 (addStillContains!1283 lt!667989 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49899 _keys!618) from!762)))))

(declare-fun lt!667990 () ListLongMap!22419)

(assert (=> b!1549647 (= lt!667990 (+!4938 lt!667989 (tuple2!24799 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun contains!10102 (ListLongMap!22419 (_ BitVec 64)) Bool)

(assert (=> b!1549647 (contains!10102 lt!667990 (select (arr!49899 _keys!618) from!762))))

(declare-fun addApplyDifferent!620 (ListLongMap!22419 (_ BitVec 64) V!59271 (_ BitVec 64)) Unit!51569)

(assert (=> b!1549647 (= lt!667991 (addApplyDifferent!620 lt!667989 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49899 _keys!618) from!762)))))

(declare-fun lt!667992 () V!59271)

(assert (=> b!1549647 (= lt!667992 (apply!1117 (+!4938 lt!667989 (tuple2!24799 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49899 _keys!618) from!762)))))

(declare-fun lt!667996 () V!59271)

(assert (=> b!1549647 (= lt!667996 (apply!1117 lt!667989 (select (arr!49899 _keys!618) from!762)))))

(assert (=> b!1549647 (= lt!667992 lt!667996)))

(declare-fun lt!667994 () Unit!51569)

(assert (=> b!1549647 (= lt!667994 (addApplyDifferent!620 lt!667989 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49899 _keys!618) from!762)))))

(assert (=> b!1549647 (= (apply!1117 lt!667990 (select (arr!49899 _keys!618) from!762)) lt!667996)))

(declare-fun b!1549648 () Bool)

(declare-fun res!1061710 () Bool)

(assert (=> b!1549648 (=> (not res!1061710) (not e!862623))))

(assert (=> b!1549648 (= res!1061710 (and (= (size!50451 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50450 _keys!618) (size!50451 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1549649 () Bool)

(declare-fun call!70565 () ListLongMap!22419)

(assert (=> b!1549649 (= e!862625 call!70565)))

(declare-fun b!1549650 () Bool)

(declare-fun e!862627 () ListLongMap!22419)

(assert (=> b!1549650 (= e!862627 e!862625)))

(assert (=> b!1549650 (= c!142380 (and (not lt!667993) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1549651 () Bool)

(declare-fun Unit!51571 () Unit!51569)

(assert (=> b!1549651 (= e!862633 Unit!51571)))

(declare-fun b!1549652 () Bool)

(assert (=> b!1549652 (= e!862623 e!862621)))

(declare-fun res!1061707 () Bool)

(assert (=> b!1549652 (=> (not res!1061707) (not e!862621))))

(declare-fun e!862622 () Bool)

(assert (=> b!1549652 (= res!1061707 e!862622)))

(declare-fun res!1061711 () Bool)

(assert (=> b!1549652 (=> res!1061711 e!862622)))

(declare-fun lt!667997 () Bool)

(assert (=> b!1549652 (= res!1061711 lt!667997)))

(declare-fun lt!667988 () Unit!51569)

(assert (=> b!1549652 (= lt!667988 e!862633)))

(declare-fun c!142382 () Bool)

(assert (=> b!1549652 (= c!142382 (not lt!667997))))

(assert (=> b!1549652 (= lt!667997 e!862626)))

(declare-fun res!1061714 () Bool)

(assert (=> b!1549652 (=> res!1061714 e!862626)))

(assert (=> b!1549652 (= res!1061714 (bvsge from!762 (size!50450 _keys!618)))))

(assert (=> b!1549652 (= lt!667995 e!862627)))

(assert (=> b!1549652 (= c!142381 (and (not lt!667993) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1549652 (= lt!667993 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1549653 () Bool)

(assert (=> b!1549653 (= e!862632 call!70565)))

(declare-fun mapNonEmpty!58885 () Bool)

(declare-fun tp!111787 () Bool)

(assert (=> mapNonEmpty!58885 (= mapRes!58885 (and tp!111787 e!862631))))

(declare-fun mapRest!58885 () (Array (_ BitVec 32) ValueCell!18150))

(declare-fun mapKey!58885 () (_ BitVec 32))

(declare-fun mapValue!58885 () ValueCell!18150)

(assert (=> mapNonEmpty!58885 (= (arr!49900 _values!470) (store mapRest!58885 mapKey!58885 mapValue!58885))))

(declare-fun b!1549654 () Bool)

(assert (=> b!1549654 (= e!862632 call!70562)))

(declare-fun bm!70561 () Bool)

(assert (=> bm!70561 (= call!70564 (getCurrentListMapNoExtraKeys!6658 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1549655 () Bool)

(declare-fun e!862629 () Bool)

(assert (=> b!1549655 (= e!862629 tp_is_empty!38121)))

(declare-fun bm!70562 () Bool)

(assert (=> bm!70562 (= call!70566 call!70564)))

(declare-fun b!1549656 () Bool)

(assert (=> b!1549656 (= e!862621 false)))

(declare-fun lt!667986 () Bool)

(assert (=> b!1549656 (= lt!667986 (contains!10102 lt!667995 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1549657 () Bool)

(assert (=> b!1549657 (= e!862622 e!862628)))

(declare-fun res!1061706 () Bool)

(assert (=> b!1549657 (=> (not res!1061706) (not e!862628))))

(assert (=> b!1549657 (= res!1061706 (contains!10102 lt!667995 (select (arr!49899 _keys!618) from!762)))))

(declare-fun b!1549658 () Bool)

(assert (=> b!1549658 (= e!862630 (and e!862629 mapRes!58885))))

(declare-fun condMapEmpty!58885 () Bool)

(declare-fun mapDefault!58885 () ValueCell!18150)

(assert (=> b!1549658 (= condMapEmpty!58885 (= (arr!49900 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18150)) mapDefault!58885)))))

(declare-fun b!1549659 () Bool)

(assert (=> b!1549659 (= e!862627 (+!4938 call!70563 (tuple2!24799 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!70563 () Bool)

(assert (=> bm!70563 (= call!70565 call!70563)))

(assert (= (and start!132164 res!1061713) b!1549648))

(assert (= (and b!1549648 res!1061710) b!1549644))

(assert (= (and b!1549644 res!1061709) b!1549643))

(assert (= (and b!1549643 res!1061705) b!1549645))

(assert (= (and b!1549645 res!1061708) b!1549652))

(assert (= (and b!1549652 c!142381) b!1549659))

(assert (= (and b!1549652 (not c!142381)) b!1549650))

(assert (= (and b!1549650 c!142380) b!1549649))

(assert (= (and b!1549650 (not c!142380)) b!1549646))

(assert (= (and b!1549646 c!142379) b!1549653))

(assert (= (and b!1549646 (not c!142379)) b!1549654))

(assert (= (or b!1549653 b!1549654) bm!70559))

(assert (= (or b!1549649 bm!70559) bm!70562))

(assert (= (or b!1549649 b!1549653) bm!70563))

(assert (= (or b!1549659 bm!70562) bm!70561))

(assert (= (or b!1549659 bm!70563) bm!70560))

(assert (= (and b!1549652 (not res!1061714)) b!1549641))

(assert (= (and b!1549652 c!142382) b!1549647))

(assert (= (and b!1549652 (not c!142382)) b!1549651))

(assert (= (and b!1549652 (not res!1061711)) b!1549657))

(assert (= (and b!1549657 res!1061706) b!1549639))

(assert (= (and b!1549652 res!1061707) b!1549640))

(assert (= (and b!1549640 res!1061712) b!1549656))

(assert (= (and b!1549658 condMapEmpty!58885) mapIsEmpty!58885))

(assert (= (and b!1549658 (not condMapEmpty!58885)) mapNonEmpty!58885))

(get-info :version)

(assert (= (and mapNonEmpty!58885 ((_ is ValueCellFull!18150) mapValue!58885)) b!1549642))

(assert (= (and b!1549658 ((_ is ValueCellFull!18150) mapDefault!58885)) b!1549655))

(assert (= start!132164 b!1549658))

(declare-fun b_lambda!24755 () Bool)

(assert (=> (not b_lambda!24755) (not b!1549639)))

(declare-fun t!50998 () Bool)

(declare-fun tb!12473 () Bool)

(assert (=> (and start!132164 (= defaultEntry!478 defaultEntry!478) t!50998) tb!12473))

(declare-fun result!26049 () Bool)

(assert (=> tb!12473 (= result!26049 tp_is_empty!38121)))

(assert (=> b!1549639 t!50998))

(declare-fun b_and!51269 () Bool)

(assert (= b_and!51267 (and (=> t!50998 result!26049) b_and!51269)))

(declare-fun m!1428857 () Bool)

(assert (=> b!1549657 m!1428857))

(assert (=> b!1549657 m!1428857))

(declare-fun m!1428859 () Bool)

(assert (=> b!1549657 m!1428859))

(declare-fun m!1428861 () Bool)

(assert (=> mapNonEmpty!58885 m!1428861))

(declare-fun m!1428863 () Bool)

(assert (=> b!1549644 m!1428863))

(declare-fun m!1428865 () Bool)

(assert (=> b!1549656 m!1428865))

(declare-fun m!1428867 () Bool)

(assert (=> bm!70560 m!1428867))

(declare-fun m!1428869 () Bool)

(assert (=> bm!70561 m!1428869))

(declare-fun m!1428871 () Bool)

(assert (=> b!1549659 m!1428871))

(declare-fun m!1428873 () Bool)

(assert (=> b!1549639 m!1428873))

(assert (=> b!1549639 m!1428857))

(declare-fun m!1428875 () Bool)

(assert (=> b!1549639 m!1428875))

(assert (=> b!1549639 m!1428873))

(assert (=> b!1549639 m!1428875))

(declare-fun m!1428877 () Bool)

(assert (=> b!1549639 m!1428877))

(assert (=> b!1549639 m!1428857))

(declare-fun m!1428879 () Bool)

(assert (=> b!1549639 m!1428879))

(assert (=> b!1549641 m!1428857))

(assert (=> b!1549641 m!1428857))

(declare-fun m!1428881 () Bool)

(assert (=> b!1549641 m!1428881))

(declare-fun m!1428883 () Bool)

(assert (=> b!1549643 m!1428883))

(declare-fun m!1428885 () Bool)

(assert (=> start!132164 m!1428885))

(declare-fun m!1428887 () Bool)

(assert (=> start!132164 m!1428887))

(declare-fun m!1428889 () Bool)

(assert (=> start!132164 m!1428889))

(assert (=> b!1549647 m!1428869))

(assert (=> b!1549647 m!1428857))

(declare-fun m!1428891 () Bool)

(assert (=> b!1549647 m!1428891))

(declare-fun m!1428893 () Bool)

(assert (=> b!1549647 m!1428893))

(assert (=> b!1549647 m!1428857))

(declare-fun m!1428895 () Bool)

(assert (=> b!1549647 m!1428895))

(declare-fun m!1428897 () Bool)

(assert (=> b!1549647 m!1428897))

(assert (=> b!1549647 m!1428857))

(declare-fun m!1428899 () Bool)

(assert (=> b!1549647 m!1428899))

(assert (=> b!1549647 m!1428897))

(assert (=> b!1549647 m!1428857))

(declare-fun m!1428901 () Bool)

(assert (=> b!1549647 m!1428901))

(assert (=> b!1549647 m!1428857))

(declare-fun m!1428903 () Bool)

(assert (=> b!1549647 m!1428903))

(assert (=> b!1549647 m!1428857))

(declare-fun m!1428905 () Bool)

(assert (=> b!1549647 m!1428905))

(assert (=> b!1549647 m!1428857))

(declare-fun m!1428907 () Bool)

(assert (=> b!1549647 m!1428907))

(assert (=> b!1549647 m!1428857))

(check-sat (not bm!70561) b_and!51269 (not b!1549657) (not b!1549639) (not start!132164) (not b!1549656) (not b!1549659) (not bm!70560) (not b!1549644) (not mapNonEmpty!58885) tp_is_empty!38121 (not b_next!31845) (not b!1549643) (not b_lambda!24755) (not b!1549647) (not b!1549641))
(check-sat b_and!51269 (not b_next!31845))
