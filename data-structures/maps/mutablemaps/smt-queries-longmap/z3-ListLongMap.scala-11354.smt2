; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132062 () Bool)

(assert start!132062)

(declare-fun b_free!31743 () Bool)

(declare-fun b_next!31743 () Bool)

(assert (=> start!132062 (= b_free!31743 (not b_next!31743))))

(declare-fun tp!111482 () Bool)

(declare-fun b_and!51163 () Bool)

(assert (=> start!132062 (= tp!111482 b_and!51163)))

(declare-fun b!1547146 () Bool)

(declare-fun c!141908 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun lt!666748 () Bool)

(assert (=> b!1547146 (= c!141908 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666748))))

(declare-datatypes ((V!59135 0))(
  ( (V!59136 (val!19087 Int)) )
))
(declare-datatypes ((tuple2!24698 0))(
  ( (tuple2!24699 (_1!12359 (_ BitVec 64)) (_2!12359 V!59135)) )
))
(declare-datatypes ((List!36208 0))(
  ( (Nil!36205) (Cons!36204 (h!37650 tuple2!24698) (t!50909 List!36208)) )
))
(declare-datatypes ((ListLongMap!22319 0))(
  ( (ListLongMap!22320 (toList!11175 List!36208)) )
))
(declare-fun e!861214 () ListLongMap!22319)

(declare-fun e!861207 () ListLongMap!22319)

(assert (=> b!1547146 (= e!861214 e!861207)))

(declare-fun bm!69794 () Bool)

(declare-fun call!69799 () ListLongMap!22319)

(declare-fun call!69798 () ListLongMap!22319)

(assert (=> bm!69794 (= call!69799 call!69798)))

(declare-fun bm!69795 () Bool)

(declare-fun call!69800 () ListLongMap!22319)

(declare-fun call!69801 () ListLongMap!22319)

(assert (=> bm!69795 (= call!69800 call!69801)))

(declare-fun b!1547147 () Bool)

(assert (=> b!1547147 (= e!861207 call!69800)))

(declare-fun b!1547148 () Bool)

(declare-fun e!861206 () ListLongMap!22319)

(declare-fun minValue!436 () V!59135)

(declare-fun +!4901 (ListLongMap!22319 tuple2!24698) ListLongMap!22319)

(assert (=> b!1547148 (= e!861206 (+!4901 call!69801 (tuple2!24699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1547149 () Bool)

(declare-fun res!1060623 () Bool)

(declare-fun e!861208 () Bool)

(assert (=> b!1547149 (=> (not res!1060623) (not e!861208))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103205 0))(
  ( (array!103206 (arr!49800 (Array (_ BitVec 32) (_ BitVec 64))) (size!50351 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103205)

(assert (=> b!1547149 (= res!1060623 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50351 _keys!618))))))

(declare-fun b!1547150 () Bool)

(declare-fun e!861210 () Bool)

(declare-fun e!861212 () Bool)

(declare-fun mapRes!58732 () Bool)

(assert (=> b!1547150 (= e!861210 (and e!861212 mapRes!58732))))

(declare-fun condMapEmpty!58732 () Bool)

(declare-datatypes ((ValueCell!18099 0))(
  ( (ValueCellFull!18099 (v!21885 V!59135)) (EmptyCell!18099) )
))
(declare-datatypes ((array!103207 0))(
  ( (array!103208 (arr!49801 (Array (_ BitVec 32) ValueCell!18099)) (size!50352 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103207)

(declare-fun mapDefault!58732 () ValueCell!18099)

(assert (=> b!1547150 (= condMapEmpty!58732 (= (arr!49801 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18099)) mapDefault!58732)))))

(declare-fun b!1547151 () Bool)

(assert (=> b!1547151 (= e!861214 call!69800)))

(declare-fun bm!69796 () Bool)

(declare-fun call!69797 () ListLongMap!22319)

(assert (=> bm!69796 (= call!69797 call!69799)))

(declare-fun b!1547152 () Bool)

(assert (=> b!1547152 (= e!861206 e!861214)))

(declare-fun c!141906 () Bool)

(assert (=> b!1547152 (= c!141906 (and (not lt!666748) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1547153 () Bool)

(declare-fun tp_is_empty!38019 () Bool)

(assert (=> b!1547153 (= e!861212 tp_is_empty!38019)))

(declare-fun b!1547154 () Bool)

(declare-fun e!861211 () Bool)

(assert (=> b!1547154 (= e!861211 (not true))))

(declare-fun lt!666747 () ListLongMap!22319)

(declare-fun apply!1085 (ListLongMap!22319 (_ BitVec 64)) V!59135)

(assert (=> b!1547154 (= (apply!1085 (+!4901 lt!666747 (tuple2!24699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49800 _keys!618) from!762)) (apply!1085 lt!666747 (select (arr!49800 _keys!618) from!762)))))

(declare-datatypes ((Unit!51500 0))(
  ( (Unit!51501) )
))
(declare-fun lt!666746 () Unit!51500)

(declare-fun addApplyDifferent!588 (ListLongMap!22319 (_ BitVec 64) V!59135 (_ BitVec 64)) Unit!51500)

(assert (=> b!1547154 (= lt!666746 (addApplyDifferent!588 lt!666747 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49800 _keys!618) from!762)))))

(declare-fun zeroValue!436 () V!59135)

(declare-fun contains!10069 (ListLongMap!22319 (_ BitVec 64)) Bool)

(assert (=> b!1547154 (contains!10069 (+!4901 lt!666747 (tuple2!24699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49800 _keys!618) from!762))))

(declare-fun lt!666745 () Unit!51500)

(declare-fun addStillContains!1251 (ListLongMap!22319 (_ BitVec 64) V!59135 (_ BitVec 64)) Unit!51500)

(assert (=> b!1547154 (= lt!666745 (addStillContains!1251 lt!666747 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49800 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6620 (array!103205 array!103207 (_ BitVec 32) (_ BitVec 32) V!59135 V!59135 (_ BitVec 32) Int) ListLongMap!22319)

(assert (=> b!1547154 (= lt!666747 (getCurrentListMapNoExtraKeys!6620 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547155 () Bool)

(declare-fun res!1060619 () Bool)

(assert (=> b!1547155 (=> (not res!1060619) (not e!861208))))

(declare-datatypes ((List!36209 0))(
  ( (Nil!36206) (Cons!36205 (h!37651 (_ BitVec 64)) (t!50910 List!36209)) )
))
(declare-fun arrayNoDuplicates!0 (array!103205 (_ BitVec 32) List!36209) Bool)

(assert (=> b!1547155 (= res!1060619 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36206))))

(declare-fun b!1547156 () Bool)

(assert (=> b!1547156 (= e!861207 call!69797)))

(declare-fun b!1547157 () Bool)

(declare-fun res!1060621 () Bool)

(assert (=> b!1547157 (=> (not res!1060621) (not e!861208))))

(assert (=> b!1547157 (= res!1060621 (and (= (size!50352 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50351 _keys!618) (size!50352 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1547158 () Bool)

(declare-fun e!861213 () Bool)

(assert (=> b!1547158 (= e!861213 tp_is_empty!38019)))

(declare-fun mapIsEmpty!58732 () Bool)

(assert (=> mapIsEmpty!58732 mapRes!58732))

(declare-fun bm!69797 () Bool)

(assert (=> bm!69797 (= call!69798 (getCurrentListMapNoExtraKeys!6620 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun c!141907 () Bool)

(declare-fun bm!69798 () Bool)

(assert (=> bm!69798 (= call!69801 (+!4901 (ite c!141907 call!69798 (ite c!141906 call!69799 call!69797)) (ite (or c!141907 c!141906) (tuple2!24699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1547159 () Bool)

(declare-fun res!1060625 () Bool)

(assert (=> b!1547159 (=> (not res!1060625) (not e!861208))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103205 (_ BitVec 32)) Bool)

(assert (=> b!1547159 (= res!1060625 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1547160 () Bool)

(assert (=> b!1547160 (= e!861208 e!861211)))

(declare-fun res!1060624 () Bool)

(assert (=> b!1547160 (=> (not res!1060624) (not e!861211))))

(assert (=> b!1547160 (= res!1060624 (bvslt from!762 (size!50351 _keys!618)))))

(declare-fun lt!666749 () ListLongMap!22319)

(assert (=> b!1547160 (= lt!666749 e!861206)))

(assert (=> b!1547160 (= c!141907 (and (not lt!666748) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1547160 (= lt!666748 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1547161 () Bool)

(declare-fun res!1060620 () Bool)

(assert (=> b!1547161 (=> (not res!1060620) (not e!861211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1547161 (= res!1060620 (validKeyInArray!0 (select (arr!49800 _keys!618) from!762)))))

(declare-fun mapNonEmpty!58732 () Bool)

(declare-fun tp!111481 () Bool)

(assert (=> mapNonEmpty!58732 (= mapRes!58732 (and tp!111481 e!861213))))

(declare-fun mapKey!58732 () (_ BitVec 32))

(declare-fun mapValue!58732 () ValueCell!18099)

(declare-fun mapRest!58732 () (Array (_ BitVec 32) ValueCell!18099))

(assert (=> mapNonEmpty!58732 (= (arr!49801 _values!470) (store mapRest!58732 mapKey!58732 mapValue!58732))))

(declare-fun res!1060622 () Bool)

(assert (=> start!132062 (=> (not res!1060622) (not e!861208))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132062 (= res!1060622 (validMask!0 mask!926))))

(assert (=> start!132062 e!861208))

(declare-fun array_inv!38655 (array!103205) Bool)

(assert (=> start!132062 (array_inv!38655 _keys!618)))

(assert (=> start!132062 tp_is_empty!38019))

(assert (=> start!132062 true))

(assert (=> start!132062 tp!111482))

(declare-fun array_inv!38656 (array!103207) Bool)

(assert (=> start!132062 (and (array_inv!38656 _values!470) e!861210)))

(assert (= (and start!132062 res!1060622) b!1547157))

(assert (= (and b!1547157 res!1060621) b!1547159))

(assert (= (and b!1547159 res!1060625) b!1547155))

(assert (= (and b!1547155 res!1060619) b!1547149))

(assert (= (and b!1547149 res!1060623) b!1547160))

(assert (= (and b!1547160 c!141907) b!1547148))

(assert (= (and b!1547160 (not c!141907)) b!1547152))

(assert (= (and b!1547152 c!141906) b!1547151))

(assert (= (and b!1547152 (not c!141906)) b!1547146))

(assert (= (and b!1547146 c!141908) b!1547147))

(assert (= (and b!1547146 (not c!141908)) b!1547156))

(assert (= (or b!1547147 b!1547156) bm!69796))

(assert (= (or b!1547151 bm!69796) bm!69794))

(assert (= (or b!1547151 b!1547147) bm!69795))

(assert (= (or b!1547148 bm!69794) bm!69797))

(assert (= (or b!1547148 bm!69795) bm!69798))

(assert (= (and b!1547160 res!1060624) b!1547161))

(assert (= (and b!1547161 res!1060620) b!1547154))

(assert (= (and b!1547150 condMapEmpty!58732) mapIsEmpty!58732))

(assert (= (and b!1547150 (not condMapEmpty!58732)) mapNonEmpty!58732))

(get-info :version)

(assert (= (and mapNonEmpty!58732 ((_ is ValueCellFull!18099) mapValue!58732)) b!1547158))

(assert (= (and b!1547150 ((_ is ValueCellFull!18099) mapDefault!58732)) b!1547153))

(assert (= start!132062 b!1547150))

(declare-fun m!1426855 () Bool)

(assert (=> start!132062 m!1426855))

(declare-fun m!1426857 () Bool)

(assert (=> start!132062 m!1426857))

(declare-fun m!1426859 () Bool)

(assert (=> start!132062 m!1426859))

(declare-fun m!1426861 () Bool)

(assert (=> b!1547148 m!1426861))

(declare-fun m!1426863 () Bool)

(assert (=> b!1547161 m!1426863))

(assert (=> b!1547161 m!1426863))

(declare-fun m!1426865 () Bool)

(assert (=> b!1547161 m!1426865))

(assert (=> b!1547154 m!1426863))

(declare-fun m!1426867 () Bool)

(assert (=> b!1547154 m!1426867))

(declare-fun m!1426869 () Bool)

(assert (=> b!1547154 m!1426869))

(assert (=> b!1547154 m!1426863))

(declare-fun m!1426871 () Bool)

(assert (=> b!1547154 m!1426871))

(declare-fun m!1426873 () Bool)

(assert (=> b!1547154 m!1426873))

(assert (=> b!1547154 m!1426863))

(declare-fun m!1426875 () Bool)

(assert (=> b!1547154 m!1426875))

(assert (=> b!1547154 m!1426863))

(declare-fun m!1426877 () Bool)

(assert (=> b!1547154 m!1426877))

(assert (=> b!1547154 m!1426863))

(declare-fun m!1426879 () Bool)

(assert (=> b!1547154 m!1426879))

(assert (=> b!1547154 m!1426871))

(assert (=> b!1547154 m!1426863))

(declare-fun m!1426881 () Bool)

(assert (=> b!1547154 m!1426881))

(assert (=> b!1547154 m!1426873))

(declare-fun m!1426883 () Bool)

(assert (=> b!1547159 m!1426883))

(declare-fun m!1426885 () Bool)

(assert (=> mapNonEmpty!58732 m!1426885))

(declare-fun m!1426887 () Bool)

(assert (=> bm!69798 m!1426887))

(assert (=> bm!69797 m!1426869))

(declare-fun m!1426889 () Bool)

(assert (=> b!1547155 m!1426889))

(check-sat (not bm!69797) (not mapNonEmpty!58732) (not bm!69798) (not b_next!31743) tp_is_empty!38019 b_and!51163 (not b!1547155) (not b!1547154) (not start!132062) (not b!1547161) (not b!1547148) (not b!1547159))
(check-sat b_and!51163 (not b_next!31743))
