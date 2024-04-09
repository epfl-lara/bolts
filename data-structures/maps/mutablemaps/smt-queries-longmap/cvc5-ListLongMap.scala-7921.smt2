; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98402 () Bool)

(assert start!98402)

(declare-fun b_free!23971 () Bool)

(declare-fun b_next!23971 () Bool)

(assert (=> start!98402 (= b_free!23971 (not b_next!23971))))

(declare-fun tp!84625 () Bool)

(declare-fun b_and!38805 () Bool)

(assert (=> start!98402 (= tp!84625 b_and!38805)))

(declare-fun c!110634 () Bool)

(declare-datatypes ((V!43129 0))(
  ( (V!43130 (val!14307 Int)) )
))
(declare-datatypes ((tuple2!18136 0))(
  ( (tuple2!18137 (_1!9078 (_ BitVec 64)) (_2!9078 V!43129)) )
))
(declare-datatypes ((List!24948 0))(
  ( (Nil!24945) (Cons!24944 (h!26153 tuple2!18136) (t!35918 List!24948)) )
))
(declare-datatypes ((ListLongMap!16117 0))(
  ( (ListLongMap!16118 (toList!8074 List!24948)) )
))
(declare-fun lt!503856 () ListLongMap!16117)

(declare-fun bm!49190 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun c!110633 () Bool)

(declare-fun minValue!944 () V!43129)

(declare-datatypes ((Unit!37093 0))(
  ( (Unit!37094) )
))
(declare-fun call!49193 () Unit!37093)

(declare-fun zeroValue!944 () V!43129)

(declare-fun addStillContains!732 (ListLongMap!16117 (_ BitVec 64) V!43129 (_ BitVec 64)) Unit!37093)

(assert (=> bm!49190 (= call!49193 (addStillContains!732 lt!503856 (ite (or c!110634 c!110633) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110634 c!110633) zeroValue!944 minValue!944) k!934))))

(declare-fun mapNonEmpty!44576 () Bool)

(declare-fun mapRes!44576 () Bool)

(declare-fun tp!84624 () Bool)

(declare-fun e!645309 () Bool)

(assert (=> mapNonEmpty!44576 (= mapRes!44576 (and tp!84624 e!645309))))

(declare-datatypes ((ValueCell!13541 0))(
  ( (ValueCellFull!13541 (v!16945 V!43129)) (EmptyCell!13541) )
))
(declare-fun mapValue!44576 () ValueCell!13541)

(declare-fun mapKey!44576 () (_ BitVec 32))

(declare-fun mapRest!44576 () (Array (_ BitVec 32) ValueCell!13541))

(declare-datatypes ((array!73824 0))(
  ( (array!73825 (arr!35559 (Array (_ BitVec 32) ValueCell!13541)) (size!36096 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73824)

(assert (=> mapNonEmpty!44576 (= (arr!35559 _values!996) (store mapRest!44576 mapKey!44576 mapValue!44576))))

(declare-fun b!1133800 () Bool)

(declare-fun e!645308 () Unit!37093)

(declare-fun lt!503853 () Unit!37093)

(assert (=> b!1133800 (= e!645308 lt!503853)))

(declare-fun call!49199 () Unit!37093)

(assert (=> b!1133800 (= lt!503853 call!49199)))

(declare-fun call!49197 () Bool)

(assert (=> b!1133800 call!49197))

(declare-fun b!1133801 () Bool)

(declare-fun res!757076 () Bool)

(declare-fun e!645315 () Bool)

(assert (=> b!1133801 (=> (not res!757076) (not e!645315))))

(declare-datatypes ((array!73826 0))(
  ( (array!73827 (arr!35560 (Array (_ BitVec 32) (_ BitVec 64))) (size!36097 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73826)

(declare-datatypes ((List!24949 0))(
  ( (Nil!24946) (Cons!24945 (h!26154 (_ BitVec 64)) (t!35919 List!24949)) )
))
(declare-fun arrayNoDuplicates!0 (array!73826 (_ BitVec 32) List!24949) Bool)

(assert (=> b!1133801 (= res!757076 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24946))))

(declare-fun b!1133802 () Bool)

(declare-fun e!645320 () Bool)

(declare-fun call!49194 () ListLongMap!16117)

(declare-fun call!49196 () ListLongMap!16117)

(assert (=> b!1133802 (= e!645320 (= call!49194 call!49196))))

(declare-fun bm!49191 () Bool)

(declare-fun call!49198 () ListLongMap!16117)

(declare-fun call!49200 () ListLongMap!16117)

(assert (=> bm!49191 (= call!49198 call!49200)))

(declare-fun b!1133803 () Bool)

(declare-fun res!757082 () Bool)

(declare-fun e!645311 () Bool)

(assert (=> b!1133803 (=> (not res!757082) (not e!645311))))

(declare-fun lt!503863 () array!73826)

(assert (=> b!1133803 (= res!757082 (arrayNoDuplicates!0 lt!503863 #b00000000000000000000000000000000 Nil!24946))))

(declare-fun b!1133804 () Bool)

(declare-fun res!757079 () Bool)

(assert (=> b!1133804 (=> (not res!757079) (not e!645315))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1133804 (= res!757079 (= (select (arr!35560 _keys!1208) i!673) k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!49192 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!503859 () array!73824)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4523 (array!73826 array!73824 (_ BitVec 32) (_ BitVec 32) V!43129 V!43129 (_ BitVec 32) Int) ListLongMap!16117)

(assert (=> bm!49192 (= call!49194 (getCurrentListMapNoExtraKeys!4523 lt!503863 lt!503859 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133805 () Bool)

(declare-fun e!645316 () Unit!37093)

(declare-fun lt!503862 () Unit!37093)

(assert (=> b!1133805 (= e!645316 lt!503862)))

(declare-fun lt!503854 () Unit!37093)

(assert (=> b!1133805 (= lt!503854 call!49193)))

(declare-fun lt!503858 () ListLongMap!16117)

(assert (=> b!1133805 (= lt!503858 call!49200)))

(declare-fun call!49195 () Bool)

(assert (=> b!1133805 call!49195))

(assert (=> b!1133805 (= lt!503862 (addStillContains!732 lt!503858 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun contains!6565 (ListLongMap!16117 (_ BitVec 64)) Bool)

(declare-fun +!3433 (ListLongMap!16117 tuple2!18136) ListLongMap!16117)

(assert (=> b!1133805 (contains!6565 (+!3433 lt!503858 (tuple2!18137 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun bm!49193 () Bool)

(assert (=> bm!49193 (= call!49200 (+!3433 lt!503856 (ite (or c!110634 c!110633) (tuple2!18137 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18137 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1133806 () Bool)

(declare-fun tp_is_empty!28501 () Bool)

(assert (=> b!1133806 (= e!645309 tp_is_empty!28501)))

(declare-fun b!1133807 () Bool)

(declare-fun e!645313 () Bool)

(declare-fun e!645310 () Bool)

(assert (=> b!1133807 (= e!645313 e!645310)))

(declare-fun res!757068 () Bool)

(assert (=> b!1133807 (=> res!757068 e!645310)))

(assert (=> b!1133807 (= res!757068 (not (= (select (arr!35560 _keys!1208) from!1455) k!934)))))

(assert (=> b!1133807 e!645320))

(declare-fun c!110637 () Bool)

(assert (=> b!1133807 (= c!110637 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!503857 () Unit!37093)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!449 (array!73826 array!73824 (_ BitVec 32) (_ BitVec 32) V!43129 V!43129 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37093)

(assert (=> b!1133807 (= lt!503857 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!449 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133808 () Bool)

(declare-fun res!757074 () Bool)

(assert (=> b!1133808 (=> (not res!757074) (not e!645315))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73826 (_ BitVec 32)) Bool)

(assert (=> b!1133808 (= res!757074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1133809 () Bool)

(declare-fun e!645321 () Bool)

(assert (=> b!1133809 (= e!645310 e!645321)))

(declare-fun res!757072 () Bool)

(assert (=> b!1133809 (=> res!757072 e!645321)))

(assert (=> b!1133809 (= res!757072 (not (contains!6565 lt!503856 k!934)))))

(assert (=> b!1133809 (= lt!503856 (getCurrentListMapNoExtraKeys!4523 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133810 () Bool)

(assert (=> b!1133810 call!49197))

(declare-fun lt!503864 () Unit!37093)

(assert (=> b!1133810 (= lt!503864 call!49199)))

(declare-fun e!645319 () Unit!37093)

(assert (=> b!1133810 (= e!645319 lt!503864)))

(declare-fun mapIsEmpty!44576 () Bool)

(assert (=> mapIsEmpty!44576 mapRes!44576))

(declare-fun b!1133811 () Bool)

(declare-fun e!645314 () Bool)

(assert (=> b!1133811 (= e!645314 e!645313)))

(declare-fun res!757078 () Bool)

(assert (=> b!1133811 (=> res!757078 e!645313)))

(assert (=> b!1133811 (= res!757078 (not (= from!1455 i!673)))))

(declare-fun lt!503851 () ListLongMap!16117)

(assert (=> b!1133811 (= lt!503851 (getCurrentListMapNoExtraKeys!4523 lt!503863 lt!503859 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2591 (Int (_ BitVec 64)) V!43129)

(assert (=> b!1133811 (= lt!503859 (array!73825 (store (arr!35559 _values!996) i!673 (ValueCellFull!13541 (dynLambda!2591 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36096 _values!996)))))

(declare-fun lt!503865 () ListLongMap!16117)

(assert (=> b!1133811 (= lt!503865 (getCurrentListMapNoExtraKeys!4523 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1133799 () Bool)

(declare-fun e!645317 () Bool)

(declare-fun arrayContainsKey!0 (array!73826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1133799 (= e!645317 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun res!757081 () Bool)

(assert (=> start!98402 (=> (not res!757081) (not e!645315))))

(assert (=> start!98402 (= res!757081 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36097 _keys!1208))))))

(assert (=> start!98402 e!645315))

(assert (=> start!98402 tp_is_empty!28501))

(declare-fun array_inv!27138 (array!73826) Bool)

(assert (=> start!98402 (array_inv!27138 _keys!1208)))

(assert (=> start!98402 true))

(assert (=> start!98402 tp!84625))

(declare-fun e!645306 () Bool)

(declare-fun array_inv!27139 (array!73824) Bool)

(assert (=> start!98402 (and (array_inv!27139 _values!996) e!645306)))

(declare-fun b!1133812 () Bool)

(declare-fun lt!503860 () Bool)

(assert (=> b!1133812 (= e!645317 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!503860) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1133813 () Bool)

(declare-fun res!757071 () Bool)

(assert (=> b!1133813 (=> (not res!757071) (not e!645315))))

(assert (=> b!1133813 (= res!757071 (and (= (size!36096 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36097 _keys!1208) (size!36096 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1133814 () Bool)

(assert (=> b!1133814 (= e!645311 (not e!645314))))

(declare-fun res!757073 () Bool)

(assert (=> b!1133814 (=> res!757073 e!645314)))

(assert (=> b!1133814 (= res!757073 (bvsgt from!1455 i!673))))

(assert (=> b!1133814 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!503861 () Unit!37093)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73826 (_ BitVec 64) (_ BitVec 32)) Unit!37093)

(assert (=> b!1133814 (= lt!503861 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1133815 () Bool)

(declare-fun res!757075 () Bool)

(assert (=> b!1133815 (=> (not res!757075) (not e!645315))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1133815 (= res!757075 (validKeyInArray!0 k!934))))

(declare-fun b!1133816 () Bool)

(declare-fun -!1191 (ListLongMap!16117 (_ BitVec 64)) ListLongMap!16117)

(assert (=> b!1133816 (= e!645320 (= call!49194 (-!1191 call!49196 k!934)))))

(declare-fun bm!49194 () Bool)

(assert (=> bm!49194 (= call!49197 call!49195)))

(declare-fun bm!49195 () Bool)

(assert (=> bm!49195 (= call!49195 (contains!6565 (ite c!110634 lt!503858 call!49198) k!934))))

(declare-fun b!1133817 () Bool)

(assert (=> b!1133817 (= e!645316 e!645319)))

(assert (=> b!1133817 (= c!110633 (and (not lt!503860) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1133818 () Bool)

(assert (=> b!1133818 (= e!645321 true)))

(declare-fun e!645312 () Bool)

(assert (=> b!1133818 e!645312))

(declare-fun res!757069 () Bool)

(assert (=> b!1133818 (=> (not res!757069) (not e!645312))))

(assert (=> b!1133818 (= res!757069 e!645317)))

(declare-fun c!110635 () Bool)

(assert (=> b!1133818 (= c!110635 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!503855 () Unit!37093)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!342 (array!73826 array!73824 (_ BitVec 32) (_ BitVec 32) V!43129 V!43129 (_ BitVec 64) (_ BitVec 32) Int) Unit!37093)

(assert (=> b!1133818 (= lt!503855 (lemmaListMapContainsThenArrayContainsFrom!342 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!503852 () Unit!37093)

(assert (=> b!1133818 (= lt!503852 e!645316)))

(assert (=> b!1133818 (= c!110634 (and (not lt!503860) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1133818 (= lt!503860 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1133819 () Bool)

(assert (=> b!1133819 (= e!645312 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1133820 () Bool)

(declare-fun c!110636 () Bool)

(assert (=> b!1133820 (= c!110636 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!503860))))

(assert (=> b!1133820 (= e!645319 e!645308)))

(declare-fun b!1133821 () Bool)

(declare-fun res!757070 () Bool)

(assert (=> b!1133821 (=> (not res!757070) (not e!645315))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1133821 (= res!757070 (validMask!0 mask!1564))))

(declare-fun b!1133822 () Bool)

(declare-fun e!645318 () Bool)

(assert (=> b!1133822 (= e!645306 (and e!645318 mapRes!44576))))

(declare-fun condMapEmpty!44576 () Bool)

(declare-fun mapDefault!44576 () ValueCell!13541)

