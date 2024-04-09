; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132080 () Bool)

(assert start!132080)

(declare-fun b_free!31761 () Bool)

(declare-fun b_next!31761 () Bool)

(assert (=> start!132080 (= b_free!31761 (not b_next!31761))))

(declare-fun tp!111536 () Bool)

(declare-fun b_and!51181 () Bool)

(assert (=> start!132080 (= tp!111536 b_and!51181)))

(declare-fun mapNonEmpty!58759 () Bool)

(declare-fun mapRes!58759 () Bool)

(declare-fun tp!111535 () Bool)

(declare-fun e!861450 () Bool)

(assert (=> mapNonEmpty!58759 (= mapRes!58759 (and tp!111535 e!861450))))

(declare-fun mapKey!58759 () (_ BitVec 32))

(declare-datatypes ((V!59159 0))(
  ( (V!59160 (val!19096 Int)) )
))
(declare-datatypes ((ValueCell!18108 0))(
  ( (ValueCellFull!18108 (v!21894 V!59159)) (EmptyCell!18108) )
))
(declare-fun mapValue!58759 () ValueCell!18108)

(declare-datatypes ((array!103239 0))(
  ( (array!103240 (arr!49817 (Array (_ BitVec 32) ValueCell!18108)) (size!50368 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103239)

(declare-fun mapRest!58759 () (Array (_ BitVec 32) ValueCell!18108))

(assert (=> mapNonEmpty!58759 (= (arr!49817 _values!470) (store mapRest!58759 mapKey!58759 mapValue!58759))))

(declare-fun b!1547578 () Bool)

(declare-datatypes ((tuple2!24716 0))(
  ( (tuple2!24717 (_1!12368 (_ BitVec 64)) (_2!12368 V!59159)) )
))
(declare-datatypes ((List!36224 0))(
  ( (Nil!36221) (Cons!36220 (h!37666 tuple2!24716) (t!50925 List!36224)) )
))
(declare-datatypes ((ListLongMap!22337 0))(
  ( (ListLongMap!22338 (toList!11184 List!36224)) )
))
(declare-fun e!861454 () ListLongMap!22337)

(declare-fun call!69935 () ListLongMap!22337)

(assert (=> b!1547578 (= e!861454 call!69935)))

(declare-fun b!1547579 () Bool)

(declare-fun call!69933 () ListLongMap!22337)

(assert (=> b!1547579 (= e!861454 call!69933)))

(declare-fun res!1060814 () Bool)

(declare-fun e!861449 () Bool)

(assert (=> start!132080 (=> (not res!1060814) (not e!861449))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132080 (= res!1060814 (validMask!0 mask!926))))

(assert (=> start!132080 e!861449))

(declare-datatypes ((array!103241 0))(
  ( (array!103242 (arr!49818 (Array (_ BitVec 32) (_ BitVec 64))) (size!50369 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103241)

(declare-fun array_inv!38667 (array!103241) Bool)

(assert (=> start!132080 (array_inv!38667 _keys!618)))

(declare-fun tp_is_empty!38037 () Bool)

(assert (=> start!132080 tp_is_empty!38037))

(assert (=> start!132080 true))

(assert (=> start!132080 tp!111536))

(declare-fun e!861455 () Bool)

(declare-fun array_inv!38668 (array!103239) Bool)

(assert (=> start!132080 (and (array_inv!38668 _values!470) e!861455)))

(declare-fun call!69934 () ListLongMap!22337)

(declare-fun call!69932 () ListLongMap!22337)

(declare-fun call!69936 () ListLongMap!22337)

(declare-fun c!141987 () Bool)

(declare-fun c!141988 () Bool)

(declare-fun minValue!436 () V!59159)

(declare-fun bm!69929 () Bool)

(declare-fun zeroValue!436 () V!59159)

(declare-fun +!4908 (ListLongMap!22337 tuple2!24716) ListLongMap!22337)

(assert (=> bm!69929 (= call!69936 (+!4908 (ite c!141988 call!69932 (ite c!141987 call!69934 call!69935)) (ite (or c!141988 c!141987) (tuple2!24717 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24717 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1547580 () Bool)

(declare-fun c!141989 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun lt!666880 () Bool)

(assert (=> b!1547580 (= c!141989 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666880))))

(declare-fun e!861451 () ListLongMap!22337)

(assert (=> b!1547580 (= e!861451 e!861454)))

(declare-fun b!1547581 () Bool)

(declare-fun e!861456 () Bool)

(assert (=> b!1547581 (= e!861456 (not true))))

(declare-fun from!762 () (_ BitVec 32))

(declare-fun lt!666884 () ListLongMap!22337)

(declare-fun apply!1092 (ListLongMap!22337 (_ BitVec 64)) V!59159)

(assert (=> b!1547581 (= (apply!1092 (+!4908 lt!666884 (tuple2!24717 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49818 _keys!618) from!762)) (apply!1092 lt!666884 (select (arr!49818 _keys!618) from!762)))))

(declare-datatypes ((Unit!51514 0))(
  ( (Unit!51515) )
))
(declare-fun lt!666883 () Unit!51514)

(declare-fun addApplyDifferent!595 (ListLongMap!22337 (_ BitVec 64) V!59159 (_ BitVec 64)) Unit!51514)

(assert (=> b!1547581 (= lt!666883 (addApplyDifferent!595 lt!666884 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49818 _keys!618) from!762)))))

(declare-fun contains!10076 (ListLongMap!22337 (_ BitVec 64)) Bool)

(assert (=> b!1547581 (contains!10076 (+!4908 lt!666884 (tuple2!24717 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49818 _keys!618) from!762))))

(declare-fun lt!666881 () Unit!51514)

(declare-fun addStillContains!1258 (ListLongMap!22337 (_ BitVec 64) V!59159 (_ BitVec 64)) Unit!51514)

(assert (=> b!1547581 (= lt!666881 (addStillContains!1258 lt!666884 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49818 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6627 (array!103241 array!103239 (_ BitVec 32) (_ BitVec 32) V!59159 V!59159 (_ BitVec 32) Int) ListLongMap!22337)

(assert (=> b!1547581 (= lt!666884 (getCurrentListMapNoExtraKeys!6627 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547582 () Bool)

(assert (=> b!1547582 (= e!861449 e!861456)))

(declare-fun res!1060813 () Bool)

(assert (=> b!1547582 (=> (not res!1060813) (not e!861456))))

(assert (=> b!1547582 (= res!1060813 (bvslt from!762 (size!50369 _keys!618)))))

(declare-fun lt!666882 () ListLongMap!22337)

(declare-fun e!861452 () ListLongMap!22337)

(assert (=> b!1547582 (= lt!666882 e!861452)))

(assert (=> b!1547582 (= c!141988 (and (not lt!666880) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1547582 (= lt!666880 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1547583 () Bool)

(declare-fun res!1060808 () Bool)

(assert (=> b!1547583 (=> (not res!1060808) (not e!861456))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1547583 (= res!1060808 (validKeyInArray!0 (select (arr!49818 _keys!618) from!762)))))

(declare-fun bm!69930 () Bool)

(assert (=> bm!69930 (= call!69934 call!69932)))

(declare-fun b!1547584 () Bool)

(assert (=> b!1547584 (= e!861452 (+!4908 call!69936 (tuple2!24717 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun mapIsEmpty!58759 () Bool)

(assert (=> mapIsEmpty!58759 mapRes!58759))

(declare-fun bm!69931 () Bool)

(assert (=> bm!69931 (= call!69935 call!69934)))

(declare-fun b!1547585 () Bool)

(declare-fun res!1060811 () Bool)

(assert (=> b!1547585 (=> (not res!1060811) (not e!861449))))

(assert (=> b!1547585 (= res!1060811 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50369 _keys!618))))))

(declare-fun b!1547586 () Bool)

(declare-fun res!1060809 () Bool)

(assert (=> b!1547586 (=> (not res!1060809) (not e!861449))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103241 (_ BitVec 32)) Bool)

(assert (=> b!1547586 (= res!1060809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1547587 () Bool)

(declare-fun res!1060812 () Bool)

(assert (=> b!1547587 (=> (not res!1060812) (not e!861449))))

(declare-datatypes ((List!36225 0))(
  ( (Nil!36222) (Cons!36221 (h!37667 (_ BitVec 64)) (t!50926 List!36225)) )
))
(declare-fun arrayNoDuplicates!0 (array!103241 (_ BitVec 32) List!36225) Bool)

(assert (=> b!1547587 (= res!1060812 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36222))))

(declare-fun b!1547588 () Bool)

(assert (=> b!1547588 (= e!861450 tp_is_empty!38037)))

(declare-fun b!1547589 () Bool)

(declare-fun e!861457 () Bool)

(assert (=> b!1547589 (= e!861457 tp_is_empty!38037)))

(declare-fun bm!69932 () Bool)

(assert (=> bm!69932 (= call!69932 (getCurrentListMapNoExtraKeys!6627 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547590 () Bool)

(assert (=> b!1547590 (= e!861455 (and e!861457 mapRes!58759))))

(declare-fun condMapEmpty!58759 () Bool)

(declare-fun mapDefault!58759 () ValueCell!18108)

(assert (=> b!1547590 (= condMapEmpty!58759 (= (arr!49817 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18108)) mapDefault!58759)))))

(declare-fun bm!69933 () Bool)

(assert (=> bm!69933 (= call!69933 call!69936)))

(declare-fun b!1547591 () Bool)

(declare-fun res!1060810 () Bool)

(assert (=> b!1547591 (=> (not res!1060810) (not e!861449))))

(assert (=> b!1547591 (= res!1060810 (and (= (size!50368 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50369 _keys!618) (size!50368 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1547592 () Bool)

(assert (=> b!1547592 (= e!861452 e!861451)))

(assert (=> b!1547592 (= c!141987 (and (not lt!666880) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1547593 () Bool)

(assert (=> b!1547593 (= e!861451 call!69933)))

(assert (= (and start!132080 res!1060814) b!1547591))

(assert (= (and b!1547591 res!1060810) b!1547586))

(assert (= (and b!1547586 res!1060809) b!1547587))

(assert (= (and b!1547587 res!1060812) b!1547585))

(assert (= (and b!1547585 res!1060811) b!1547582))

(assert (= (and b!1547582 c!141988) b!1547584))

(assert (= (and b!1547582 (not c!141988)) b!1547592))

(assert (= (and b!1547592 c!141987) b!1547593))

(assert (= (and b!1547592 (not c!141987)) b!1547580))

(assert (= (and b!1547580 c!141989) b!1547579))

(assert (= (and b!1547580 (not c!141989)) b!1547578))

(assert (= (or b!1547579 b!1547578) bm!69931))

(assert (= (or b!1547593 bm!69931) bm!69930))

(assert (= (or b!1547593 b!1547579) bm!69933))

(assert (= (or b!1547584 bm!69930) bm!69932))

(assert (= (or b!1547584 bm!69933) bm!69929))

(assert (= (and b!1547582 res!1060813) b!1547583))

(assert (= (and b!1547583 res!1060808) b!1547581))

(assert (= (and b!1547590 condMapEmpty!58759) mapIsEmpty!58759))

(assert (= (and b!1547590 (not condMapEmpty!58759)) mapNonEmpty!58759))

(get-info :version)

(assert (= (and mapNonEmpty!58759 ((_ is ValueCellFull!18108) mapValue!58759)) b!1547588))

(assert (= (and b!1547590 ((_ is ValueCellFull!18108) mapDefault!58759)) b!1547589))

(assert (= start!132080 b!1547590))

(declare-fun m!1427179 () Bool)

(assert (=> mapNonEmpty!58759 m!1427179))

(declare-fun m!1427181 () Bool)

(assert (=> b!1547583 m!1427181))

(assert (=> b!1547583 m!1427181))

(declare-fun m!1427183 () Bool)

(assert (=> b!1547583 m!1427183))

(declare-fun m!1427185 () Bool)

(assert (=> bm!69932 m!1427185))

(declare-fun m!1427187 () Bool)

(assert (=> b!1547581 m!1427187))

(assert (=> b!1547581 m!1427181))

(declare-fun m!1427189 () Bool)

(assert (=> b!1547581 m!1427189))

(assert (=> b!1547581 m!1427181))

(declare-fun m!1427191 () Bool)

(assert (=> b!1547581 m!1427191))

(assert (=> b!1547581 m!1427181))

(declare-fun m!1427193 () Bool)

(assert (=> b!1547581 m!1427193))

(declare-fun m!1427195 () Bool)

(assert (=> b!1547581 m!1427195))

(assert (=> b!1547581 m!1427181))

(declare-fun m!1427197 () Bool)

(assert (=> b!1547581 m!1427197))

(assert (=> b!1547581 m!1427181))

(declare-fun m!1427199 () Bool)

(assert (=> b!1547581 m!1427199))

(assert (=> b!1547581 m!1427195))

(assert (=> b!1547581 m!1427185))

(assert (=> b!1547581 m!1427181))

(assert (=> b!1547581 m!1427187))

(declare-fun m!1427201 () Bool)

(assert (=> b!1547584 m!1427201))

(declare-fun m!1427203 () Bool)

(assert (=> bm!69929 m!1427203))

(declare-fun m!1427205 () Bool)

(assert (=> b!1547586 m!1427205))

(declare-fun m!1427207 () Bool)

(assert (=> b!1547587 m!1427207))

(declare-fun m!1427209 () Bool)

(assert (=> start!132080 m!1427209))

(declare-fun m!1427211 () Bool)

(assert (=> start!132080 m!1427211))

(declare-fun m!1427213 () Bool)

(assert (=> start!132080 m!1427213))

(check-sat b_and!51181 (not b!1547581) (not bm!69932) (not start!132080) (not mapNonEmpty!58759) (not b!1547584) (not b!1547586) (not bm!69929) (not b!1547587) (not b!1547583) tp_is_empty!38037 (not b_next!31761))
(check-sat b_and!51181 (not b_next!31761))
