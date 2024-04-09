; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98518 () Bool)

(assert start!98518)

(declare-fun b_free!24087 () Bool)

(declare-fun b_next!24087 () Bool)

(assert (=> start!98518 (= b_free!24087 (not b_next!24087))))

(declare-fun tp!84973 () Bool)

(declare-fun b_and!39037 () Bool)

(assert (=> start!98518 (= tp!84973 b_and!39037)))

(declare-datatypes ((array!74052 0))(
  ( (array!74053 (arr!35673 (Array (_ BitVec 32) (_ BitVec 64))) (size!36210 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74052)

(declare-fun b!1139116 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!648185 () Bool)

(declare-fun arrayContainsKey!0 (array!74052 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1139116 (= e!648185 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapIsEmpty!44750 () Bool)

(declare-fun mapRes!44750 () Bool)

(assert (=> mapIsEmpty!44750 mapRes!44750))

(declare-fun b!1139117 () Bool)

(declare-fun res!759837 () Bool)

(declare-fun e!648176 () Bool)

(assert (=> b!1139117 (=> (not res!759837) (not e!648176))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74052 (_ BitVec 32)) Bool)

(assert (=> b!1139117 (= res!759837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-datatypes ((V!43283 0))(
  ( (V!43284 (val!14365 Int)) )
))
(declare-fun zeroValue!944 () V!43283)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!50582 () Bool)

(declare-datatypes ((tuple2!18244 0))(
  ( (tuple2!18245 (_1!9132 (_ BitVec 64)) (_2!9132 V!43283)) )
))
(declare-datatypes ((List!25048 0))(
  ( (Nil!25045) (Cons!25044 (h!26253 tuple2!18244) (t!36134 List!25048)) )
))
(declare-datatypes ((ListLongMap!16225 0))(
  ( (ListLongMap!16226 (toList!8128 List!25048)) )
))
(declare-fun call!50586 () ListLongMap!16225)

(declare-datatypes ((ValueCell!13599 0))(
  ( (ValueCellFull!13599 (v!17003 V!43283)) (EmptyCell!13599) )
))
(declare-datatypes ((array!74054 0))(
  ( (array!74055 (arr!35674 (Array (_ BitVec 32) ValueCell!13599)) (size!36211 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74054)

(declare-fun minValue!944 () V!43283)

(declare-fun getCurrentListMapNoExtraKeys!4575 (array!74052 array!74054 (_ BitVec 32) (_ BitVec 32) V!43283 V!43283 (_ BitVec 32) Int) ListLongMap!16225)

(assert (=> bm!50582 (= call!50586 (getCurrentListMapNoExtraKeys!4575 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139118 () Bool)

(declare-fun res!759847 () Bool)

(assert (=> b!1139118 (=> (not res!759847) (not e!648176))))

(declare-datatypes ((List!25049 0))(
  ( (Nil!25046) (Cons!25045 (h!26254 (_ BitVec 64)) (t!36135 List!25049)) )
))
(declare-fun arrayNoDuplicates!0 (array!74052 (_ BitVec 32) List!25049) Bool)

(assert (=> b!1139118 (= res!759847 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25046))))

(declare-fun b!1139119 () Bool)

(declare-fun e!648179 () Bool)

(declare-fun e!648172 () Bool)

(assert (=> b!1139119 (= e!648179 (and e!648172 mapRes!44750))))

(declare-fun condMapEmpty!44750 () Bool)

(declare-fun mapDefault!44750 () ValueCell!13599)

(assert (=> b!1139119 (= condMapEmpty!44750 (= (arr!35674 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13599)) mapDefault!44750)))))

(declare-fun b!1139121 () Bool)

(declare-fun call!50592 () Bool)

(assert (=> b!1139121 call!50592))

(declare-datatypes ((Unit!37279 0))(
  ( (Unit!37280) )
))
(declare-fun lt!506895 () Unit!37279)

(declare-fun call!50587 () Unit!37279)

(assert (=> b!1139121 (= lt!506895 call!50587)))

(declare-fun e!648186 () Unit!37279)

(assert (=> b!1139121 (= e!648186 lt!506895)))

(declare-fun mapNonEmpty!44750 () Bool)

(declare-fun tp!84972 () Bool)

(declare-fun e!648184 () Bool)

(assert (=> mapNonEmpty!44750 (= mapRes!44750 (and tp!84972 e!648184))))

(declare-fun mapValue!44750 () ValueCell!13599)

(declare-fun mapRest!44750 () (Array (_ BitVec 32) ValueCell!13599))

(declare-fun mapKey!44750 () (_ BitVec 32))

(assert (=> mapNonEmpty!44750 (= (arr!35674 _values!996) (store mapRest!44750 mapKey!44750 mapValue!44750))))

(declare-fun b!1139122 () Bool)

(declare-fun res!759835 () Bool)

(assert (=> b!1139122 (=> (not res!759835) (not e!648176))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1139122 (= res!759835 (= (select (arr!35673 _keys!1208) i!673) k0!934))))

(declare-fun b!1139123 () Bool)

(declare-fun tp_is_empty!28617 () Bool)

(assert (=> b!1139123 (= e!648184 tp_is_empty!28617)))

(declare-fun lt!506888 () Bool)

(declare-fun b!1139124 () Bool)

(declare-fun e!648180 () Bool)

(assert (=> b!1139124 (= e!648180 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!506888) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!50583 () Bool)

(declare-fun call!50591 () Bool)

(assert (=> bm!50583 (= call!50592 call!50591)))

(declare-fun b!1139125 () Bool)

(declare-fun e!648175 () Bool)

(declare-fun e!648177 () Bool)

(assert (=> b!1139125 (= e!648175 (not e!648177))))

(declare-fun res!759836 () Bool)

(assert (=> b!1139125 (=> res!759836 e!648177)))

(assert (=> b!1139125 (= res!759836 (bvsgt from!1455 i!673))))

(assert (=> b!1139125 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!506899 () Unit!37279)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74052 (_ BitVec 64) (_ BitVec 32)) Unit!37279)

(assert (=> b!1139125 (= lt!506899 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1139126 () Bool)

(declare-fun e!648182 () Bool)

(declare-fun call!50585 () ListLongMap!16225)

(assert (=> b!1139126 (= e!648182 (= call!50585 call!50586))))

(declare-fun b!1139127 () Bool)

(assert (=> b!1139127 (= e!648180 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1139128 () Bool)

(declare-fun res!759840 () Bool)

(assert (=> b!1139128 (=> (not res!759840) (not e!648176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1139128 (= res!759840 (validMask!0 mask!1564))))

(declare-fun b!1139129 () Bool)

(assert (=> b!1139129 (= e!648176 e!648175)))

(declare-fun res!759848 () Bool)

(assert (=> b!1139129 (=> (not res!759848) (not e!648175))))

(declare-fun lt!506903 () array!74052)

(assert (=> b!1139129 (= res!759848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!506903 mask!1564))))

(assert (=> b!1139129 (= lt!506903 (array!74053 (store (arr!35673 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36210 _keys!1208)))))

(declare-fun b!1139130 () Bool)

(declare-fun e!648183 () Unit!37279)

(declare-fun Unit!37281 () Unit!37279)

(assert (=> b!1139130 (= e!648183 Unit!37281)))

(assert (=> b!1139130 (= lt!506888 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!111593 () Bool)

(assert (=> b!1139130 (= c!111593 (and (not lt!506888) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!506889 () Unit!37279)

(declare-fun e!648178 () Unit!37279)

(assert (=> b!1139130 (= lt!506889 e!648178)))

(declare-fun lt!506886 () Unit!37279)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!381 (array!74052 array!74054 (_ BitVec 32) (_ BitVec 32) V!43283 V!43283 (_ BitVec 64) (_ BitVec 32) Int) Unit!37279)

(assert (=> b!1139130 (= lt!506886 (lemmaListMapContainsThenArrayContainsFrom!381 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111591 () Bool)

(assert (=> b!1139130 (= c!111591 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!759839 () Bool)

(assert (=> b!1139130 (= res!759839 e!648180)))

(assert (=> b!1139130 (=> (not res!759839) (not e!648185))))

(assert (=> b!1139130 e!648185))

(declare-fun lt!506892 () Unit!37279)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74052 (_ BitVec 32) (_ BitVec 32)) Unit!37279)

(assert (=> b!1139130 (= lt!506892 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1139130 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25046)))

(declare-fun lt!506897 () Unit!37279)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74052 (_ BitVec 64) (_ BitVec 32) List!25049) Unit!37279)

(assert (=> b!1139130 (= lt!506897 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25046))))

(assert (=> b!1139130 false))

(declare-fun b!1139131 () Bool)

(declare-fun e!648173 () Bool)

(assert (=> b!1139131 (= e!648177 e!648173)))

(declare-fun res!759838 () Bool)

(assert (=> b!1139131 (=> res!759838 e!648173)))

(assert (=> b!1139131 (= res!759838 (not (= from!1455 i!673)))))

(declare-fun lt!506902 () array!74054)

(declare-fun lt!506894 () ListLongMap!16225)

(assert (=> b!1139131 (= lt!506894 (getCurrentListMapNoExtraKeys!4575 lt!506903 lt!506902 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2632 (Int (_ BitVec 64)) V!43283)

(assert (=> b!1139131 (= lt!506902 (array!74055 (store (arr!35674 _values!996) i!673 (ValueCellFull!13599 (dynLambda!2632 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36211 _values!996)))))

(declare-fun lt!506893 () ListLongMap!16225)

(assert (=> b!1139131 (= lt!506893 (getCurrentListMapNoExtraKeys!4575 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1139132 () Bool)

(declare-fun call!50590 () ListLongMap!16225)

(declare-fun contains!6637 (ListLongMap!16225 (_ BitVec 64)) Bool)

(assert (=> b!1139132 (contains!6637 call!50590 k0!934)))

(declare-fun lt!506901 () Unit!37279)

(declare-fun call!50588 () Unit!37279)

(assert (=> b!1139132 (= lt!506901 call!50588)))

(assert (=> b!1139132 call!50591))

(declare-fun lt!506887 () ListLongMap!16225)

(declare-fun lt!506904 () ListLongMap!16225)

(declare-fun +!3478 (ListLongMap!16225 tuple2!18244) ListLongMap!16225)

(assert (=> b!1139132 (= lt!506887 (+!3478 lt!506904 (tuple2!18245 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!506891 () Unit!37279)

(declare-fun addStillContains!779 (ListLongMap!16225 (_ BitVec 64) V!43283 (_ BitVec 64)) Unit!37279)

(assert (=> b!1139132 (= lt!506891 (addStillContains!779 lt!506904 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1139132 (= e!648178 lt!506901)))

(declare-fun b!1139133 () Bool)

(declare-fun -!1231 (ListLongMap!16225 (_ BitVec 64)) ListLongMap!16225)

(assert (=> b!1139133 (= e!648182 (= call!50585 (-!1231 call!50586 k0!934)))))

(declare-fun call!50589 () ListLongMap!16225)

(declare-fun bm!50584 () Bool)

(assert (=> bm!50584 (= call!50591 (contains!6637 (ite c!111593 lt!506887 call!50589) k0!934))))

(declare-fun b!1139134 () Bool)

(declare-fun Unit!37282 () Unit!37279)

(assert (=> b!1139134 (= e!648186 Unit!37282)))

(declare-fun b!1139135 () Bool)

(declare-fun res!759843 () Bool)

(assert (=> b!1139135 (=> (not res!759843) (not e!648176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1139135 (= res!759843 (validKeyInArray!0 k0!934))))

(declare-fun bm!50585 () Bool)

(assert (=> bm!50585 (= call!50587 call!50588)))

(declare-fun b!1139136 () Bool)

(assert (=> b!1139136 (= e!648172 tp_is_empty!28617)))

(declare-fun b!1139137 () Bool)

(declare-fun e!648174 () Bool)

(assert (=> b!1139137 (= e!648173 e!648174)))

(declare-fun res!759845 () Bool)

(assert (=> b!1139137 (=> res!759845 e!648174)))

(assert (=> b!1139137 (= res!759845 (not (= (select (arr!35673 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1139137 e!648182))

(declare-fun c!111594 () Bool)

(assert (=> b!1139137 (= c!111594 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!506890 () Unit!37279)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!488 (array!74052 array!74054 (_ BitVec 32) (_ BitVec 32) V!43283 V!43283 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37279)

(assert (=> b!1139137 (= lt!506890 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!488 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50586 () Bool)

(declare-fun c!111592 () Bool)

(assert (=> bm!50586 (= call!50588 (addStillContains!779 (ite c!111593 lt!506887 lt!506904) (ite c!111593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!111592 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!111593 minValue!944 (ite c!111592 zeroValue!944 minValue!944)) k0!934))))

(declare-fun bm!50587 () Bool)

(assert (=> bm!50587 (= call!50589 call!50590)))

(declare-fun b!1139138 () Bool)

(declare-fun res!759844 () Bool)

(assert (=> b!1139138 (=> (not res!759844) (not e!648175))))

(assert (=> b!1139138 (= res!759844 (arrayNoDuplicates!0 lt!506903 #b00000000000000000000000000000000 Nil!25046))))

(declare-fun b!1139139 () Bool)

(declare-fun Unit!37283 () Unit!37279)

(assert (=> b!1139139 (= e!648183 Unit!37283)))

(declare-fun b!1139140 () Bool)

(declare-fun res!759846 () Bool)

(assert (=> b!1139140 (=> (not res!759846) (not e!648176))))

(assert (=> b!1139140 (= res!759846 (and (= (size!36211 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36210 _keys!1208) (size!36211 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!50588 () Bool)

(assert (=> bm!50588 (= call!50585 (getCurrentListMapNoExtraKeys!4575 lt!506903 lt!506902 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139141 () Bool)

(declare-fun e!648171 () Unit!37279)

(declare-fun lt!506900 () Unit!37279)

(assert (=> b!1139141 (= e!648171 lt!506900)))

(assert (=> b!1139141 (= lt!506900 call!50587)))

(assert (=> b!1139141 call!50592))

(declare-fun b!1139120 () Bool)

(assert (=> b!1139120 (= c!111592 (and (not lt!506888) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1139120 (= e!648178 e!648171)))

(declare-fun res!759841 () Bool)

(assert (=> start!98518 (=> (not res!759841) (not e!648176))))

(assert (=> start!98518 (= res!759841 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36210 _keys!1208))))))

(assert (=> start!98518 e!648176))

(assert (=> start!98518 tp_is_empty!28617))

(declare-fun array_inv!27222 (array!74052) Bool)

(assert (=> start!98518 (array_inv!27222 _keys!1208)))

(assert (=> start!98518 true))

(assert (=> start!98518 tp!84973))

(declare-fun array_inv!27223 (array!74054) Bool)

(assert (=> start!98518 (and (array_inv!27223 _values!996) e!648179)))

(declare-fun b!1139142 () Bool)

(assert (=> b!1139142 (= e!648174 true)))

(declare-fun lt!506898 () Bool)

(assert (=> b!1139142 (= lt!506898 (contains!6637 lt!506904 (select (arr!35673 _keys!1208) from!1455)))))

(declare-fun lt!506896 () Unit!37279)

(assert (=> b!1139142 (= lt!506896 e!648183)))

(declare-fun c!111590 () Bool)

(assert (=> b!1139142 (= c!111590 (contains!6637 lt!506904 k0!934))))

(assert (=> b!1139142 (= lt!506904 (getCurrentListMapNoExtraKeys!4575 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139143 () Bool)

(declare-fun res!759842 () Bool)

(assert (=> b!1139143 (=> (not res!759842) (not e!648176))))

(assert (=> b!1139143 (= res!759842 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36210 _keys!1208))))))

(declare-fun b!1139144 () Bool)

(assert (=> b!1139144 (= e!648171 e!648186)))

(declare-fun c!111589 () Bool)

(assert (=> b!1139144 (= c!111589 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!506888))))

(declare-fun bm!50589 () Bool)

(assert (=> bm!50589 (= call!50590 (+!3478 (ite c!111593 lt!506887 lt!506904) (ite c!111593 (tuple2!18245 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!111592 (tuple2!18245 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18245 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (= (and start!98518 res!759841) b!1139128))

(assert (= (and b!1139128 res!759840) b!1139140))

(assert (= (and b!1139140 res!759846) b!1139117))

(assert (= (and b!1139117 res!759837) b!1139118))

(assert (= (and b!1139118 res!759847) b!1139143))

(assert (= (and b!1139143 res!759842) b!1139135))

(assert (= (and b!1139135 res!759843) b!1139122))

(assert (= (and b!1139122 res!759835) b!1139129))

(assert (= (and b!1139129 res!759848) b!1139138))

(assert (= (and b!1139138 res!759844) b!1139125))

(assert (= (and b!1139125 (not res!759836)) b!1139131))

(assert (= (and b!1139131 (not res!759838)) b!1139137))

(assert (= (and b!1139137 c!111594) b!1139133))

(assert (= (and b!1139137 (not c!111594)) b!1139126))

(assert (= (or b!1139133 b!1139126) bm!50588))

(assert (= (or b!1139133 b!1139126) bm!50582))

(assert (= (and b!1139137 (not res!759845)) b!1139142))

(assert (= (and b!1139142 c!111590) b!1139130))

(assert (= (and b!1139142 (not c!111590)) b!1139139))

(assert (= (and b!1139130 c!111593) b!1139132))

(assert (= (and b!1139130 (not c!111593)) b!1139120))

(assert (= (and b!1139120 c!111592) b!1139141))

(assert (= (and b!1139120 (not c!111592)) b!1139144))

(assert (= (and b!1139144 c!111589) b!1139121))

(assert (= (and b!1139144 (not c!111589)) b!1139134))

(assert (= (or b!1139141 b!1139121) bm!50585))

(assert (= (or b!1139141 b!1139121) bm!50587))

(assert (= (or b!1139141 b!1139121) bm!50583))

(assert (= (or b!1139132 bm!50583) bm!50584))

(assert (= (or b!1139132 bm!50585) bm!50586))

(assert (= (or b!1139132 bm!50587) bm!50589))

(assert (= (and b!1139130 c!111591) b!1139127))

(assert (= (and b!1139130 (not c!111591)) b!1139124))

(assert (= (and b!1139130 res!759839) b!1139116))

(assert (= (and b!1139119 condMapEmpty!44750) mapIsEmpty!44750))

(assert (= (and b!1139119 (not condMapEmpty!44750)) mapNonEmpty!44750))

(get-info :version)

(assert (= (and mapNonEmpty!44750 ((_ is ValueCellFull!13599) mapValue!44750)) b!1139123))

(assert (= (and b!1139119 ((_ is ValueCellFull!13599) mapDefault!44750)) b!1139136))

(assert (= start!98518 b!1139119))

(declare-fun b_lambda!19211 () Bool)

(assert (=> (not b_lambda!19211) (not b!1139131)))

(declare-fun t!36133 () Bool)

(declare-fun tb!8907 () Bool)

(assert (=> (and start!98518 (= defaultEntry!1004 defaultEntry!1004) t!36133) tb!8907))

(declare-fun result!18371 () Bool)

(assert (=> tb!8907 (= result!18371 tp_is_empty!28617)))

(assert (=> b!1139131 t!36133))

(declare-fun b_and!39039 () Bool)

(assert (= b_and!39037 (and (=> t!36133 result!18371) b_and!39039)))

(declare-fun m!1050853 () Bool)

(assert (=> bm!50582 m!1050853))

(declare-fun m!1050855 () Bool)

(assert (=> bm!50588 m!1050855))

(declare-fun m!1050857 () Bool)

(assert (=> b!1139117 m!1050857))

(declare-fun m!1050859 () Bool)

(assert (=> b!1139130 m!1050859))

(declare-fun m!1050861 () Bool)

(assert (=> b!1139130 m!1050861))

(declare-fun m!1050863 () Bool)

(assert (=> b!1139130 m!1050863))

(declare-fun m!1050865 () Bool)

(assert (=> b!1139130 m!1050865))

(declare-fun m!1050867 () Bool)

(assert (=> b!1139116 m!1050867))

(declare-fun m!1050869 () Bool)

(assert (=> b!1139137 m!1050869))

(declare-fun m!1050871 () Bool)

(assert (=> b!1139137 m!1050871))

(declare-fun m!1050873 () Bool)

(assert (=> b!1139125 m!1050873))

(declare-fun m!1050875 () Bool)

(assert (=> b!1139125 m!1050875))

(assert (=> b!1139127 m!1050867))

(declare-fun m!1050877 () Bool)

(assert (=> bm!50589 m!1050877))

(declare-fun m!1050879 () Bool)

(assert (=> b!1139138 m!1050879))

(declare-fun m!1050881 () Bool)

(assert (=> bm!50584 m!1050881))

(declare-fun m!1050883 () Bool)

(assert (=> b!1139118 m!1050883))

(declare-fun m!1050885 () Bool)

(assert (=> b!1139133 m!1050885))

(declare-fun m!1050887 () Bool)

(assert (=> b!1139135 m!1050887))

(declare-fun m!1050889 () Bool)

(assert (=> b!1139122 m!1050889))

(declare-fun m!1050891 () Bool)

(assert (=> b!1139128 m!1050891))

(declare-fun m!1050893 () Bool)

(assert (=> mapNonEmpty!44750 m!1050893))

(declare-fun m!1050895 () Bool)

(assert (=> b!1139131 m!1050895))

(declare-fun m!1050897 () Bool)

(assert (=> b!1139131 m!1050897))

(declare-fun m!1050899 () Bool)

(assert (=> b!1139131 m!1050899))

(declare-fun m!1050901 () Bool)

(assert (=> b!1139131 m!1050901))

(declare-fun m!1050903 () Bool)

(assert (=> b!1139132 m!1050903))

(declare-fun m!1050905 () Bool)

(assert (=> b!1139132 m!1050905))

(declare-fun m!1050907 () Bool)

(assert (=> b!1139132 m!1050907))

(declare-fun m!1050909 () Bool)

(assert (=> bm!50586 m!1050909))

(declare-fun m!1050911 () Bool)

(assert (=> b!1139129 m!1050911))

(declare-fun m!1050913 () Bool)

(assert (=> b!1139129 m!1050913))

(assert (=> b!1139142 m!1050869))

(assert (=> b!1139142 m!1050869))

(declare-fun m!1050915 () Bool)

(assert (=> b!1139142 m!1050915))

(declare-fun m!1050917 () Bool)

(assert (=> b!1139142 m!1050917))

(assert (=> b!1139142 m!1050853))

(declare-fun m!1050919 () Bool)

(assert (=> start!98518 m!1050919))

(declare-fun m!1050921 () Bool)

(assert (=> start!98518 m!1050921))

(check-sat (not b!1139116) (not b!1139133) (not bm!50582) (not b!1139131) (not b!1139138) (not mapNonEmpty!44750) (not b!1139117) (not b!1139132) (not b!1139128) (not b!1139135) (not b!1139130) (not b!1139127) (not b!1139125) (not b_next!24087) (not b!1139118) tp_is_empty!28617 (not b!1139137) (not bm!50584) (not bm!50589) (not bm!50586) (not b_lambda!19211) b_and!39039 (not bm!50588) (not b!1139129) (not b!1139142) (not start!98518))
(check-sat b_and!39039 (not b_next!24087))
