; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100682 () Bool)

(assert start!100682)

(declare-fun b_free!25907 () Bool)

(declare-fun b_next!25907 () Bool)

(assert (=> start!100682 (= b_free!25907 (not b_next!25907))))

(declare-fun tp!90716 () Bool)

(declare-fun b_and!42755 () Bool)

(assert (=> start!100682 (= tp!90716 b_and!42755)))

(declare-fun b!1203975 () Bool)

(declare-fun e!683738 () Bool)

(declare-datatypes ((V!45941 0))(
  ( (V!45942 (val!15362 Int)) )
))
(declare-datatypes ((tuple2!19832 0))(
  ( (tuple2!19833 (_1!9926 (_ BitVec 64)) (_2!9926 V!45941)) )
))
(declare-datatypes ((List!26659 0))(
  ( (Nil!26656) (Cons!26655 (h!27864 tuple2!19832) (t!39553 List!26659)) )
))
(declare-datatypes ((ListLongMap!17813 0))(
  ( (ListLongMap!17814 (toList!8922 List!26659)) )
))
(declare-fun call!58135 () ListLongMap!17813)

(declare-fun call!58133 () ListLongMap!17813)

(assert (=> b!1203975 (= e!683738 (= call!58135 call!58133))))

(declare-fun b!1203976 () Bool)

(declare-fun res!801175 () Bool)

(declare-fun e!683731 () Bool)

(assert (=> b!1203976 (=> (not res!801175) (not e!683731))))

(declare-datatypes ((array!77974 0))(
  ( (array!77975 (arr!37627 (Array (_ BitVec 32) (_ BitVec 64))) (size!38164 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77974)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77974 (_ BitVec 32)) Bool)

(assert (=> b!1203976 (= res!801175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!58127 () Bool)

(declare-fun call!58136 () ListLongMap!17813)

(declare-fun call!58131 () ListLongMap!17813)

(assert (=> bm!58127 (= call!58136 call!58131)))

(declare-fun b!1203977 () Bool)

(declare-fun c!117934 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!545862 () Bool)

(assert (=> b!1203977 (= c!117934 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!545862))))

(declare-datatypes ((Unit!39847 0))(
  ( (Unit!39848) )
))
(declare-fun e!683730 () Unit!39847)

(declare-fun e!683741 () Unit!39847)

(assert (=> b!1203977 (= e!683730 e!683741)))

(declare-fun b!1203978 () Bool)

(declare-fun res!801163 () Bool)

(assert (=> b!1203978 (=> (not res!801163) (not e!683731))))

(declare-datatypes ((ValueCell!14596 0))(
  ( (ValueCellFull!14596 (v!18004 V!45941)) (EmptyCell!14596) )
))
(declare-datatypes ((array!77976 0))(
  ( (array!77977 (arr!37628 (Array (_ BitVec 32) ValueCell!14596)) (size!38165 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77976)

(assert (=> b!1203978 (= res!801163 (and (= (size!38165 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38164 _keys!1208) (size!38165 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1203980 () Bool)

(declare-fun res!801169 () Bool)

(assert (=> b!1203980 (=> (not res!801169) (not e!683731))))

(declare-datatypes ((List!26660 0))(
  ( (Nil!26657) (Cons!26656 (h!27865 (_ BitVec 64)) (t!39554 List!26660)) )
))
(declare-fun arrayNoDuplicates!0 (array!77974 (_ BitVec 32) List!26660) Bool)

(assert (=> b!1203980 (= res!801169 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26657))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!58128 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!545861 () array!77974)

(declare-fun minValue!944 () V!45941)

(declare-fun zeroValue!944 () V!45941)

(declare-fun lt!545852 () array!77976)

(declare-fun getCurrentListMapNoExtraKeys!5332 (array!77974 array!77976 (_ BitVec 32) (_ BitVec 32) V!45941 V!45941 (_ BitVec 32) Int) ListLongMap!17813)

(assert (=> bm!58128 (= call!58135 (getCurrentListMapNoExtraKeys!5332 lt!545861 lt!545852 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!58129 () Bool)

(declare-fun lt!545865 () ListLongMap!17813)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!58137 () Unit!39847)

(declare-fun c!117937 () Bool)

(declare-fun c!117935 () Bool)

(declare-fun addStillContains!1020 (ListLongMap!17813 (_ BitVec 64) V!45941 (_ BitVec 64)) Unit!39847)

(assert (=> bm!58129 (= call!58137 (addStillContains!1020 lt!545865 (ite (or c!117937 c!117935) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!117937 c!117935) zeroValue!944 minValue!944) k!934))))

(declare-fun bm!58130 () Bool)

(declare-fun call!58134 () Unit!39847)

(assert (=> bm!58130 (= call!58134 call!58137)))

(declare-fun b!1203981 () Bool)

(declare-fun call!58130 () Bool)

(assert (=> b!1203981 call!58130))

(declare-fun lt!545863 () Unit!39847)

(assert (=> b!1203981 (= lt!545863 call!58134)))

(assert (=> b!1203981 (= e!683730 lt!545863)))

(declare-fun b!1203982 () Bool)

(declare-fun -!1838 (ListLongMap!17813 (_ BitVec 64)) ListLongMap!17813)

(assert (=> b!1203982 (= e!683738 (= call!58135 (-!1838 call!58133 k!934)))))

(declare-fun b!1203983 () Bool)

(declare-fun lt!545854 () Unit!39847)

(assert (=> b!1203983 (= e!683741 lt!545854)))

(assert (=> b!1203983 (= lt!545854 call!58134)))

(assert (=> b!1203983 call!58130))

(declare-fun e!683740 () Bool)

(declare-fun b!1203984 () Bool)

(declare-fun contains!6922 (ListLongMap!17813 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4455 (array!77974 array!77976 (_ BitVec 32) (_ BitVec 32) V!45941 V!45941 (_ BitVec 32) Int) ListLongMap!17813)

(assert (=> b!1203984 (= e!683740 (contains!6922 (getCurrentListMap!4455 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1203985 () Bool)

(declare-fun res!801173 () Bool)

(declare-fun e!683734 () Bool)

(assert (=> b!1203985 (=> (not res!801173) (not e!683734))))

(assert (=> b!1203985 (= res!801173 (arrayNoDuplicates!0 lt!545861 #b00000000000000000000000000000000 Nil!26657))))

(declare-fun b!1203979 () Bool)

(declare-fun res!801166 () Bool)

(assert (=> b!1203979 (=> (not res!801166) (not e!683731))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1203979 (= res!801166 (validKeyInArray!0 k!934))))

(declare-fun res!801170 () Bool)

(assert (=> start!100682 (=> (not res!801170) (not e!683731))))

(assert (=> start!100682 (= res!801170 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38164 _keys!1208))))))

(assert (=> start!100682 e!683731))

(declare-fun tp_is_empty!30611 () Bool)

(assert (=> start!100682 tp_is_empty!30611))

(declare-fun array_inv!28568 (array!77974) Bool)

(assert (=> start!100682 (array_inv!28568 _keys!1208)))

(assert (=> start!100682 true))

(assert (=> start!100682 tp!90716))

(declare-fun e!683736 () Bool)

(declare-fun array_inv!28569 (array!77976) Bool)

(assert (=> start!100682 (and (array_inv!28569 _values!996) e!683736)))

(declare-fun b!1203986 () Bool)

(declare-fun e!683728 () Bool)

(assert (=> b!1203986 (= e!683728 tp_is_empty!30611)))

(declare-fun lt!545853 () ListLongMap!17813)

(declare-fun bm!58131 () Bool)

(declare-fun +!3956 (ListLongMap!17813 tuple2!19832) ListLongMap!17813)

(assert (=> bm!58131 (= call!58131 (+!3956 (ite c!117937 lt!545853 lt!545865) (ite c!117937 (tuple2!19833 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117935 (tuple2!19833 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19833 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1203987 () Bool)

(declare-fun e!683732 () Unit!39847)

(assert (=> b!1203987 (= e!683732 e!683730)))

(assert (=> b!1203987 (= c!117935 (and (not lt!545862) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1203988 () Bool)

(declare-fun res!801172 () Bool)

(assert (=> b!1203988 (=> (not res!801172) (not e!683731))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1203988 (= res!801172 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38164 _keys!1208))))))

(declare-fun b!1203989 () Bool)

(declare-fun lt!545856 () Unit!39847)

(assert (=> b!1203989 (= e!683732 lt!545856)))

(declare-fun lt!545855 () Unit!39847)

(assert (=> b!1203989 (= lt!545855 call!58137)))

(assert (=> b!1203989 (= lt!545853 (+!3956 lt!545865 (tuple2!19833 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun call!58132 () Bool)

(assert (=> b!1203989 call!58132))

(assert (=> b!1203989 (= lt!545856 (addStillContains!1020 lt!545853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1203989 (contains!6922 call!58131 k!934)))

(declare-fun bm!58132 () Bool)

(assert (=> bm!58132 (= call!58130 call!58132)))

(declare-fun b!1203990 () Bool)

(assert (=> b!1203990 (= e!683731 e!683734)))

(declare-fun res!801167 () Bool)

(assert (=> b!1203990 (=> (not res!801167) (not e!683734))))

(assert (=> b!1203990 (= res!801167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!545861 mask!1564))))

(assert (=> b!1203990 (= lt!545861 (array!77975 (store (arr!37627 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38164 _keys!1208)))))

(declare-fun b!1203991 () Bool)

(declare-fun e!683733 () Bool)

(assert (=> b!1203991 (= e!683734 (not e!683733))))

(declare-fun res!801162 () Bool)

(assert (=> b!1203991 (=> res!801162 e!683733)))

(assert (=> b!1203991 (= res!801162 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77974 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1203991 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!545864 () Unit!39847)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77974 (_ BitVec 64) (_ BitVec 32)) Unit!39847)

(assert (=> b!1203991 (= lt!545864 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1203992 () Bool)

(declare-fun e!683727 () Bool)

(declare-fun e!683737 () Bool)

(assert (=> b!1203992 (= e!683727 e!683737)))

(declare-fun res!801174 () Bool)

(assert (=> b!1203992 (=> res!801174 e!683737)))

(assert (=> b!1203992 (= res!801174 (not (= (select (arr!37627 _keys!1208) from!1455) k!934)))))

(assert (=> b!1203992 e!683738))

(declare-fun c!117936 () Bool)

(assert (=> b!1203992 (= c!117936 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!545857 () Unit!39847)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1042 (array!77974 array!77976 (_ BitVec 32) (_ BitVec 32) V!45941 V!45941 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39847)

(assert (=> b!1203992 (= lt!545857 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1042 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1203993 () Bool)

(assert (=> b!1203993 (= e!683733 e!683727)))

(declare-fun res!801165 () Bool)

(assert (=> b!1203993 (=> res!801165 e!683727)))

(assert (=> b!1203993 (= res!801165 (not (= from!1455 i!673)))))

(declare-fun lt!545859 () ListLongMap!17813)

(assert (=> b!1203993 (= lt!545859 (getCurrentListMapNoExtraKeys!5332 lt!545861 lt!545852 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3254 (Int (_ BitVec 64)) V!45941)

(assert (=> b!1203993 (= lt!545852 (array!77977 (store (arr!37628 _values!996) i!673 (ValueCellFull!14596 (dynLambda!3254 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38165 _values!996)))))

(declare-fun lt!545858 () ListLongMap!17813)

(assert (=> b!1203993 (= lt!545858 (getCurrentListMapNoExtraKeys!5332 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!58133 () Bool)

(assert (=> bm!58133 (= call!58132 (contains!6922 (ite c!117937 lt!545853 call!58136) k!934))))

(declare-fun b!1203994 () Bool)

(declare-fun Unit!39849 () Unit!39847)

(assert (=> b!1203994 (= e!683741 Unit!39849)))

(declare-fun b!1203995 () Bool)

(declare-fun res!801171 () Bool)

(assert (=> b!1203995 (=> (not res!801171) (not e!683731))))

(assert (=> b!1203995 (= res!801171 (= (select (arr!37627 _keys!1208) i!673) k!934))))

(declare-fun b!1203996 () Bool)

(declare-fun e!683735 () Bool)

(declare-fun mapRes!47763 () Bool)

(assert (=> b!1203996 (= e!683736 (and e!683735 mapRes!47763))))

(declare-fun condMapEmpty!47763 () Bool)

(declare-fun mapDefault!47763 () ValueCell!14596)

