; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98558 () Bool)

(assert start!98558)

(declare-fun b_free!24127 () Bool)

(declare-fun b_next!24127 () Bool)

(assert (=> start!98558 (= b_free!24127 (not b_next!24127))))

(declare-fun tp!85093 () Bool)

(declare-fun b_and!39117 () Bool)

(assert (=> start!98558 (= tp!85093 b_and!39117)))

(declare-fun b!1140896 () Bool)

(declare-datatypes ((Unit!37337 0))(
  ( (Unit!37338) )
))
(declare-fun e!649142 () Unit!37337)

(declare-fun Unit!37339 () Unit!37337)

(assert (=> b!1140896 (= e!649142 Unit!37339)))

(declare-fun b!1140897 () Bool)

(declare-fun res!760685 () Bool)

(declare-fun e!649135 () Bool)

(assert (=> b!1140897 (=> (not res!760685) (not e!649135))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!74124 0))(
  ( (array!74125 (arr!35709 (Array (_ BitVec 32) (_ BitVec 64))) (size!36246 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74124)

(assert (=> b!1140897 (= res!760685 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36246 _keys!1208))))))

(declare-fun b!1140898 () Bool)

(declare-datatypes ((V!43337 0))(
  ( (V!43338 (val!14385 Int)) )
))
(declare-datatypes ((tuple2!18276 0))(
  ( (tuple2!18277 (_1!9148 (_ BitVec 64)) (_2!9148 V!43337)) )
))
(declare-datatypes ((List!25078 0))(
  ( (Nil!25075) (Cons!25074 (h!26283 tuple2!18276) (t!36204 List!25078)) )
))
(declare-datatypes ((ListLongMap!16257 0))(
  ( (ListLongMap!16258 (toList!8144 List!25078)) )
))
(declare-fun lt!508144 () ListLongMap!16257)

(declare-fun minValue!944 () V!43337)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6650 (ListLongMap!16257 (_ BitVec 64)) Bool)

(declare-fun +!3490 (ListLongMap!16257 tuple2!18276) ListLongMap!16257)

(assert (=> b!1140898 (contains!6650 (+!3490 lt!508144 (tuple2!18277 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!508152 () Unit!37337)

(declare-fun call!51070 () Unit!37337)

(assert (=> b!1140898 (= lt!508152 call!51070)))

(declare-fun call!51066 () Bool)

(assert (=> b!1140898 call!51066))

(declare-fun call!51071 () ListLongMap!16257)

(assert (=> b!1140898 (= lt!508144 call!51071)))

(declare-fun zeroValue!944 () V!43337)

(declare-fun lt!508150 () ListLongMap!16257)

(declare-fun lt!508149 () Unit!37337)

(declare-fun addStillContains!791 (ListLongMap!16257 (_ BitVec 64) V!43337 (_ BitVec 64)) Unit!37337)

(assert (=> b!1140898 (= lt!508149 (addStillContains!791 lt!508150 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!649144 () Unit!37337)

(assert (=> b!1140898 (= e!649144 lt!508152)))

(declare-fun b!1140900 () Bool)

(declare-fun e!649139 () Bool)

(declare-fun e!649138 () Bool)

(assert (=> b!1140900 (= e!649139 (not e!649138))))

(declare-fun res!760684 () Bool)

(assert (=> b!1140900 (=> res!760684 e!649138)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1140900 (= res!760684 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74124 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1140900 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!508151 () Unit!37337)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74124 (_ BitVec 64) (_ BitVec 32)) Unit!37337)

(assert (=> b!1140900 (= lt!508151 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!51062 () Bool)

(declare-fun call!51068 () Unit!37337)

(assert (=> bm!51062 (= call!51068 call!51070)))

(declare-fun c!111949 () Bool)

(declare-fun call!51065 () ListLongMap!16257)

(declare-fun bm!51063 () Bool)

(assert (=> bm!51063 (= call!51066 (contains!6650 (ite c!111949 lt!508144 call!51065) k!934))))

(declare-fun b!1140901 () Bool)

(declare-fun res!760675 () Bool)

(assert (=> b!1140901 (=> (not res!760675) (not e!649135))))

(assert (=> b!1140901 (= res!760675 (= (select (arr!35709 _keys!1208) i!673) k!934))))

(declare-fun bm!51064 () Bool)

(declare-fun c!111952 () Bool)

(assert (=> bm!51064 (= call!51070 (addStillContains!791 (ite c!111949 lt!508144 lt!508150) (ite c!111949 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!111952 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!111949 minValue!944 (ite c!111952 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1140902 () Bool)

(declare-fun e!649134 () Bool)

(declare-fun tp_is_empty!28657 () Bool)

(assert (=> b!1140902 (= e!649134 tp_is_empty!28657)))

(declare-fun mapNonEmpty!44810 () Bool)

(declare-fun mapRes!44810 () Bool)

(declare-fun tp!85092 () Bool)

(declare-fun e!649140 () Bool)

(assert (=> mapNonEmpty!44810 (= mapRes!44810 (and tp!85092 e!649140))))

(declare-datatypes ((ValueCell!13619 0))(
  ( (ValueCellFull!13619 (v!17023 V!43337)) (EmptyCell!13619) )
))
(declare-fun mapRest!44810 () (Array (_ BitVec 32) ValueCell!13619))

(declare-fun mapValue!44810 () ValueCell!13619)

(declare-datatypes ((array!74126 0))(
  ( (array!74127 (arr!35710 (Array (_ BitVec 32) ValueCell!13619)) (size!36247 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74126)

(declare-fun mapKey!44810 () (_ BitVec 32))

(assert (=> mapNonEmpty!44810 (= (arr!35710 _values!996) (store mapRest!44810 mapKey!44810 mapValue!44810))))

(declare-fun b!1140903 () Bool)

(declare-fun res!760688 () Bool)

(assert (=> b!1140903 (=> (not res!760688) (not e!649139))))

(declare-fun lt!508154 () array!74124)

(declare-datatypes ((List!25079 0))(
  ( (Nil!25076) (Cons!25075 (h!26284 (_ BitVec 64)) (t!36205 List!25079)) )
))
(declare-fun arrayNoDuplicates!0 (array!74124 (_ BitVec 32) List!25079) Bool)

(assert (=> b!1140903 (= res!760688 (arrayNoDuplicates!0 lt!508154 #b00000000000000000000000000000000 Nil!25076))))

(declare-fun b!1140904 () Bool)

(declare-fun res!760679 () Bool)

(assert (=> b!1140904 (=> (not res!760679) (not e!649135))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1140904 (= res!760679 (and (= (size!36247 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36246 _keys!1208) (size!36247 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1140905 () Bool)

(declare-fun e!649141 () Unit!37337)

(declare-fun lt!508142 () Unit!37337)

(assert (=> b!1140905 (= e!649141 lt!508142)))

(assert (=> b!1140905 (= lt!508142 call!51068)))

(declare-fun call!51067 () Bool)

(assert (=> b!1140905 call!51067))

(declare-fun b!1140906 () Bool)

(declare-fun e!649132 () Bool)

(declare-fun call!51072 () ListLongMap!16257)

(declare-fun call!51069 () ListLongMap!16257)

(assert (=> b!1140906 (= e!649132 (= call!51072 call!51069))))

(declare-fun mapIsEmpty!44810 () Bool)

(assert (=> mapIsEmpty!44810 mapRes!44810))

(declare-fun b!1140907 () Bool)

(declare-fun e!649131 () Bool)

(assert (=> b!1140907 (= e!649131 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1140908 () Bool)

(declare-fun res!760677 () Bool)

(assert (=> b!1140908 (=> (not res!760677) (not e!649135))))

(assert (=> b!1140908 (= res!760677 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25076))))

(declare-fun b!1140909 () Bool)

(assert (=> b!1140909 (= e!649135 e!649139)))

(declare-fun res!760680 () Bool)

(assert (=> b!1140909 (=> (not res!760680) (not e!649139))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74124 (_ BitVec 32)) Bool)

(assert (=> b!1140909 (= res!760680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!508154 mask!1564))))

(assert (=> b!1140909 (= lt!508154 (array!74125 (store (arr!35709 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36246 _keys!1208)))))

(declare-fun b!1140899 () Bool)

(declare-fun lt!508146 () Bool)

(assert (=> b!1140899 (= c!111952 (and (not lt!508146) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1140899 (= e!649144 e!649141)))

(declare-fun res!760676 () Bool)

(assert (=> start!98558 (=> (not res!760676) (not e!649135))))

(assert (=> start!98558 (= res!760676 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36246 _keys!1208))))))

(assert (=> start!98558 e!649135))

(assert (=> start!98558 tp_is_empty!28657))

(declare-fun array_inv!27242 (array!74124) Bool)

(assert (=> start!98558 (array_inv!27242 _keys!1208)))

(assert (=> start!98558 true))

(assert (=> start!98558 tp!85093))

(declare-fun e!649143 () Bool)

(declare-fun array_inv!27243 (array!74126) Bool)

(assert (=> start!98558 (and (array_inv!27243 _values!996) e!649143)))

(declare-fun b!1140910 () Bool)

(declare-fun e!649146 () Unit!37337)

(assert (=> b!1140910 (= e!649141 e!649146)))

(declare-fun c!111953 () Bool)

(assert (=> b!1140910 (= c!111953 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!508146))))

(declare-fun b!1140911 () Bool)

(declare-fun e!649145 () Bool)

(assert (=> b!1140911 (= e!649145 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1140912 () Bool)

(declare-fun Unit!37340 () Unit!37337)

(assert (=> b!1140912 (= e!649146 Unit!37340)))

(declare-fun b!1140913 () Bool)

(declare-fun e!649137 () Bool)

(assert (=> b!1140913 (= e!649137 true)))

(declare-fun lt!508145 () V!43337)

(declare-fun -!1243 (ListLongMap!16257 (_ BitVec 64)) ListLongMap!16257)

(assert (=> b!1140913 (= (-!1243 (+!3490 lt!508150 (tuple2!18277 (select (arr!35709 _keys!1208) from!1455) lt!508145)) (select (arr!35709 _keys!1208) from!1455)) lt!508150)))

(declare-fun lt!508141 () Unit!37337)

(declare-fun addThenRemoveForNewKeyIsSame!98 (ListLongMap!16257 (_ BitVec 64) V!43337) Unit!37337)

(assert (=> b!1140913 (= lt!508141 (addThenRemoveForNewKeyIsSame!98 lt!508150 (select (arr!35709 _keys!1208) from!1455) lt!508145))))

(declare-fun lt!508155 () V!43337)

(declare-fun get!18162 (ValueCell!13619 V!43337) V!43337)

(assert (=> b!1140913 (= lt!508145 (get!18162 (select (arr!35710 _values!996) from!1455) lt!508155))))

(declare-fun lt!508140 () Unit!37337)

(assert (=> b!1140913 (= lt!508140 e!649142)))

(declare-fun c!111951 () Bool)

(assert (=> b!1140913 (= c!111951 (contains!6650 lt!508150 k!934))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4588 (array!74124 array!74126 (_ BitVec 32) (_ BitVec 32) V!43337 V!43337 (_ BitVec 32) Int) ListLongMap!16257)

(assert (=> b!1140913 (= lt!508150 (getCurrentListMapNoExtraKeys!4588 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!51065 () Bool)

(assert (=> bm!51065 (= call!51069 (getCurrentListMapNoExtraKeys!4588 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1140914 () Bool)

(declare-fun e!649136 () Bool)

(assert (=> b!1140914 (= e!649138 e!649136)))

(declare-fun res!760681 () Bool)

(assert (=> b!1140914 (=> res!760681 e!649136)))

(assert (=> b!1140914 (= res!760681 (not (= from!1455 i!673)))))

(declare-fun lt!508158 () ListLongMap!16257)

(declare-fun lt!508143 () array!74126)

(assert (=> b!1140914 (= lt!508158 (getCurrentListMapNoExtraKeys!4588 lt!508154 lt!508143 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1140914 (= lt!508143 (array!74127 (store (arr!35710 _values!996) i!673 (ValueCellFull!13619 lt!508155)) (size!36247 _values!996)))))

(declare-fun dynLambda!2643 (Int (_ BitVec 64)) V!43337)

(assert (=> b!1140914 (= lt!508155 (dynLambda!2643 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!508148 () ListLongMap!16257)

(assert (=> b!1140914 (= lt!508148 (getCurrentListMapNoExtraKeys!4588 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1140915 () Bool)

(assert (=> b!1140915 (= e!649136 e!649137)))

(declare-fun res!760687 () Bool)

(assert (=> b!1140915 (=> res!760687 e!649137)))

(assert (=> b!1140915 (= res!760687 (not (= (select (arr!35709 _keys!1208) from!1455) k!934)))))

(assert (=> b!1140915 e!649132))

(declare-fun c!111954 () Bool)

(assert (=> b!1140915 (= c!111954 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!508147 () Unit!37337)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!499 (array!74124 array!74126 (_ BitVec 32) (_ BitVec 32) V!43337 V!43337 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37337)

(assert (=> b!1140915 (= lt!508147 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!499 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1140916 () Bool)

(declare-fun res!760686 () Bool)

(assert (=> b!1140916 (=> (not res!760686) (not e!649135))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1140916 (= res!760686 (validKeyInArray!0 k!934))))

(declare-fun b!1140917 () Bool)

(assert (=> b!1140917 (= e!649132 (= call!51072 (-!1243 call!51069 k!934)))))

(declare-fun bm!51066 () Bool)

(assert (=> bm!51066 (= call!51072 (getCurrentListMapNoExtraKeys!4588 lt!508154 lt!508143 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1140918 () Bool)

(assert (=> b!1140918 (= e!649140 tp_is_empty!28657)))

(declare-fun b!1140919 () Bool)

(declare-fun res!760678 () Bool)

(assert (=> b!1140919 (=> (not res!760678) (not e!649135))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1140919 (= res!760678 (validMask!0 mask!1564))))

(declare-fun bm!51067 () Bool)

(assert (=> bm!51067 (= call!51065 call!51071)))

(declare-fun b!1140920 () Bool)

(assert (=> b!1140920 call!51067))

(declare-fun lt!508139 () Unit!37337)

(assert (=> b!1140920 (= lt!508139 call!51068)))

(assert (=> b!1140920 (= e!649146 lt!508139)))

(declare-fun b!1140921 () Bool)

(assert (=> b!1140921 (= e!649145 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!508146) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!51068 () Bool)

(assert (=> bm!51068 (= call!51067 call!51066)))

(declare-fun bm!51069 () Bool)

(assert (=> bm!51069 (= call!51071 (+!3490 lt!508150 (ite (or c!111949 c!111952) (tuple2!18277 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18277 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1140922 () Bool)

(declare-fun res!760682 () Bool)

(assert (=> b!1140922 (=> (not res!760682) (not e!649135))))

(assert (=> b!1140922 (= res!760682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1140923 () Bool)

(assert (=> b!1140923 (= e!649143 (and e!649134 mapRes!44810))))

(declare-fun condMapEmpty!44810 () Bool)

(declare-fun mapDefault!44810 () ValueCell!13619)

