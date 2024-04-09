; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98234 () Bool)

(assert start!98234)

(declare-fun b_free!23899 () Bool)

(declare-fun b_next!23899 () Bool)

(assert (=> start!98234 (= b_free!23899 (not b_next!23899))))

(declare-fun tp!84402 () Bool)

(declare-fun b_and!38603 () Bool)

(assert (=> start!98234 (= tp!84402 b_and!38603)))

(declare-datatypes ((V!43033 0))(
  ( (V!43034 (val!14271 Int)) )
))
(declare-fun zeroValue!944 () V!43033)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18066 0))(
  ( (tuple2!18067 (_1!9043 (_ BitVec 64)) (_2!9043 V!43033)) )
))
(declare-datatypes ((List!24885 0))(
  ( (Nil!24882) (Cons!24881 (h!26090 tuple2!18066) (t!35783 List!24885)) )
))
(declare-datatypes ((ListLongMap!16047 0))(
  ( (ListLongMap!16048 (toList!8039 List!24885)) )
))
(declare-fun call!48264 () ListLongMap!16047)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73676 0))(
  ( (array!73677 (arr!35487 (Array (_ BitVec 32) (_ BitVec 64))) (size!36024 (_ BitVec 32))) )
))
(declare-fun lt!501812 () array!73676)

(declare-fun minValue!944 () V!43033)

(declare-datatypes ((ValueCell!13505 0))(
  ( (ValueCellFull!13505 (v!16905 V!43033)) (EmptyCell!13505) )
))
(declare-datatypes ((array!73678 0))(
  ( (array!73679 (arr!35488 (Array (_ BitVec 32) ValueCell!13505)) (size!36025 (_ BitVec 32))) )
))
(declare-fun lt!501813 () array!73678)

(declare-fun bm!48259 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4492 (array!73676 array!73678 (_ BitVec 32) (_ BitVec 32) V!43033 V!43033 (_ BitVec 32) Int) ListLongMap!16047)

(assert (=> bm!48259 (= call!48264 (getCurrentListMapNoExtraKeys!4492 lt!501812 lt!501813 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _keys!1208 () array!73676)

(declare-fun bm!48260 () Bool)

(declare-fun call!48268 () ListLongMap!16047)

(declare-fun _values!996 () array!73678)

(assert (=> bm!48260 (= call!48268 (getCurrentListMapNoExtraKeys!4492 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44461 () Bool)

(declare-fun mapRes!44461 () Bool)

(assert (=> mapIsEmpty!44461 mapRes!44461))

(declare-fun b!1130130 () Bool)

(declare-fun e!643223 () Bool)

(assert (=> b!1130130 (= e!643223 true)))

(declare-fun lt!501811 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6533 (ListLongMap!16047 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4443 (array!73676 array!73678 (_ BitVec 32) (_ BitVec 32) V!43033 V!43033 (_ BitVec 32) Int) ListLongMap!16047)

(assert (=> b!1130130 (= lt!501811 (contains!6533 (getCurrentListMap!4443 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun bm!48261 () Bool)

(declare-datatypes ((Unit!36974 0))(
  ( (Unit!36975) )
))
(declare-fun call!48266 () Unit!36974)

(declare-fun call!48265 () Unit!36974)

(assert (=> bm!48261 (= call!48266 call!48265)))

(declare-fun b!1130131 () Bool)

(declare-fun e!643214 () Bool)

(declare-fun e!643210 () Bool)

(assert (=> b!1130131 (= e!643214 e!643210)))

(declare-fun res!755217 () Bool)

(assert (=> b!1130131 (=> res!755217 e!643210)))

(declare-fun lt!501805 () ListLongMap!16047)

(assert (=> b!1130131 (= res!755217 (not (contains!6533 lt!501805 k!934)))))

(assert (=> b!1130131 (= lt!501805 (getCurrentListMapNoExtraKeys!4492 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130132 () Bool)

(declare-fun e!643217 () Bool)

(declare-fun e!643215 () Bool)

(assert (=> b!1130132 (= e!643217 e!643215)))

(declare-fun res!755213 () Bool)

(assert (=> b!1130132 (=> res!755213 e!643215)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1130132 (= res!755213 (not (= from!1455 i!673)))))

(declare-fun lt!501817 () ListLongMap!16047)

(assert (=> b!1130132 (= lt!501817 (getCurrentListMapNoExtraKeys!4492 lt!501812 lt!501813 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2568 (Int (_ BitVec 64)) V!43033)

(assert (=> b!1130132 (= lt!501813 (array!73679 (store (arr!35488 _values!996) i!673 (ValueCellFull!13505 (dynLambda!2568 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36025 _values!996)))))

(declare-fun lt!501809 () ListLongMap!16047)

(assert (=> b!1130132 (= lt!501809 (getCurrentListMapNoExtraKeys!4492 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1130133 () Bool)

(declare-fun e!643219 () Unit!36974)

(declare-fun e!643218 () Unit!36974)

(assert (=> b!1130133 (= e!643219 e!643218)))

(declare-fun c!109943 () Bool)

(declare-fun lt!501814 () Bool)

(assert (=> b!1130133 (= c!109943 (and (not lt!501814) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1130134 () Bool)

(declare-fun res!755215 () Bool)

(declare-fun e!643212 () Bool)

(assert (=> b!1130134 (=> (not res!755215) (not e!643212))))

(assert (=> b!1130134 (= res!755215 (and (= (size!36025 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36024 _keys!1208) (size!36025 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!48262 () Bool)

(declare-fun call!48263 () Bool)

(declare-fun call!48269 () Bool)

(assert (=> bm!48262 (= call!48263 call!48269)))

(declare-fun b!1130135 () Bool)

(declare-fun res!755216 () Bool)

(declare-fun e!643213 () Bool)

(assert (=> b!1130135 (=> (not res!755216) (not e!643213))))

(declare-datatypes ((List!24886 0))(
  ( (Nil!24883) (Cons!24882 (h!26091 (_ BitVec 64)) (t!35784 List!24886)) )
))
(declare-fun arrayNoDuplicates!0 (array!73676 (_ BitVec 32) List!24886) Bool)

(assert (=> b!1130135 (= res!755216 (arrayNoDuplicates!0 lt!501812 #b00000000000000000000000000000000 Nil!24883))))

(declare-fun bm!48263 () Bool)

(declare-fun call!48262 () ListLongMap!16047)

(declare-fun call!48267 () ListLongMap!16047)

(assert (=> bm!48263 (= call!48262 call!48267)))

(declare-fun b!1130136 () Bool)

(assert (=> b!1130136 (= e!643215 e!643214)))

(declare-fun res!755207 () Bool)

(assert (=> b!1130136 (=> res!755207 e!643214)))

(assert (=> b!1130136 (= res!755207 (not (= (select (arr!35487 _keys!1208) from!1455) k!934)))))

(declare-fun e!643222 () Bool)

(assert (=> b!1130136 e!643222))

(declare-fun c!109941 () Bool)

(assert (=> b!1130136 (= c!109941 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!501815 () Unit!36974)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!422 (array!73676 array!73678 (_ BitVec 32) (_ BitVec 32) V!43033 V!43033 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36974)

(assert (=> b!1130136 (= lt!501815 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!422 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130137 () Bool)

(assert (=> b!1130137 (= e!643210 e!643223)))

(declare-fun res!755209 () Bool)

(assert (=> b!1130137 (=> res!755209 e!643223)))

(assert (=> b!1130137 (= res!755209 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36024 _keys!1208))))))

(declare-fun lt!501816 () Unit!36974)

(assert (=> b!1130137 (= lt!501816 e!643219)))

(declare-fun c!109942 () Bool)

(assert (=> b!1130137 (= c!109942 (and (not lt!501814) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1130137 (= lt!501814 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1130138 () Bool)

(assert (=> b!1130138 (= e!643222 (= call!48264 call!48268))))

(declare-fun b!1130139 () Bool)

(declare-fun -!1167 (ListLongMap!16047 (_ BitVec 64)) ListLongMap!16047)

(assert (=> b!1130139 (= e!643222 (= call!48264 (-!1167 call!48268 k!934)))))

(declare-fun bm!48264 () Bool)

(declare-fun lt!501819 () ListLongMap!16047)

(assert (=> bm!48264 (= call!48269 (contains!6533 (ite c!109942 lt!501819 call!48262) k!934))))

(declare-fun b!1130140 () Bool)

(declare-fun e!643221 () Bool)

(declare-fun tp_is_empty!28429 () Bool)

(assert (=> b!1130140 (= e!643221 tp_is_empty!28429)))

(declare-fun b!1130141 () Bool)

(declare-fun c!109940 () Bool)

(assert (=> b!1130141 (= c!109940 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!501814))))

(declare-fun e!643209 () Unit!36974)

(assert (=> b!1130141 (= e!643218 e!643209)))

(declare-fun b!1130142 () Bool)

(declare-fun res!755204 () Bool)

(assert (=> b!1130142 (=> (not res!755204) (not e!643212))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1130142 (= res!755204 (validMask!0 mask!1564))))

(declare-fun res!755208 () Bool)

(assert (=> start!98234 (=> (not res!755208) (not e!643212))))

(assert (=> start!98234 (= res!755208 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36024 _keys!1208))))))

(assert (=> start!98234 e!643212))

(assert (=> start!98234 tp_is_empty!28429))

(declare-fun array_inv!27090 (array!73676) Bool)

(assert (=> start!98234 (array_inv!27090 _keys!1208)))

(assert (=> start!98234 true))

(assert (=> start!98234 tp!84402))

(declare-fun e!643220 () Bool)

(declare-fun array_inv!27091 (array!73678) Bool)

(assert (=> start!98234 (and (array_inv!27091 _values!996) e!643220)))

(declare-fun bm!48265 () Bool)

(declare-fun addStillContains!706 (ListLongMap!16047 (_ BitVec 64) V!43033 (_ BitVec 64)) Unit!36974)

(assert (=> bm!48265 (= call!48265 (addStillContains!706 lt!501805 (ite (or c!109942 c!109943) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!109942 c!109943) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1130143 () Bool)

(assert (=> b!1130143 (= e!643213 (not e!643217))))

(declare-fun res!755214 () Bool)

(assert (=> b!1130143 (=> res!755214 e!643217)))

(assert (=> b!1130143 (= res!755214 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73676 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1130143 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!501807 () Unit!36974)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73676 (_ BitVec 64) (_ BitVec 32)) Unit!36974)

(assert (=> b!1130143 (= lt!501807 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!48266 () Bool)

(declare-fun +!3406 (ListLongMap!16047 tuple2!18066) ListLongMap!16047)

(assert (=> bm!48266 (= call!48267 (+!3406 (ite c!109942 lt!501819 lt!501805) (ite c!109942 (tuple2!18067 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!109943 (tuple2!18067 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18067 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1130144 () Bool)

(declare-fun res!755205 () Bool)

(assert (=> b!1130144 (=> (not res!755205) (not e!643212))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73676 (_ BitVec 32)) Bool)

(assert (=> b!1130144 (= res!755205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1130145 () Bool)

(declare-fun e!643211 () Bool)

(assert (=> b!1130145 (= e!643211 tp_is_empty!28429)))

(declare-fun b!1130146 () Bool)

(declare-fun Unit!36976 () Unit!36974)

(assert (=> b!1130146 (= e!643209 Unit!36976)))

(declare-fun b!1130147 () Bool)

(declare-fun res!755206 () Bool)

(assert (=> b!1130147 (=> (not res!755206) (not e!643212))))

(assert (=> b!1130147 (= res!755206 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24883))))

(declare-fun b!1130148 () Bool)

(declare-fun res!755210 () Bool)

(assert (=> b!1130148 (=> (not res!755210) (not e!643212))))

(assert (=> b!1130148 (= res!755210 (= (select (arr!35487 _keys!1208) i!673) k!934))))

(declare-fun b!1130149 () Bool)

(declare-fun lt!501808 () Unit!36974)

(assert (=> b!1130149 (= e!643209 lt!501808)))

(assert (=> b!1130149 (= lt!501808 call!48266)))

(assert (=> b!1130149 call!48263))

(declare-fun b!1130150 () Bool)

(declare-fun res!755212 () Bool)

(assert (=> b!1130150 (=> (not res!755212) (not e!643212))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1130150 (= res!755212 (validKeyInArray!0 k!934))))

(declare-fun b!1130151 () Bool)

(declare-fun lt!501810 () Unit!36974)

(assert (=> b!1130151 (= e!643219 lt!501810)))

(declare-fun lt!501818 () Unit!36974)

(assert (=> b!1130151 (= lt!501818 call!48265)))

(assert (=> b!1130151 (= lt!501819 (+!3406 lt!501805 (tuple2!18067 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1130151 call!48269))

(assert (=> b!1130151 (= lt!501810 (addStillContains!706 lt!501819 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1130151 (contains!6533 call!48267 k!934)))

(declare-fun b!1130152 () Bool)

(assert (=> b!1130152 call!48263))

(declare-fun lt!501806 () Unit!36974)

(assert (=> b!1130152 (= lt!501806 call!48266)))

(assert (=> b!1130152 (= e!643218 lt!501806)))

(declare-fun mapNonEmpty!44461 () Bool)

(declare-fun tp!84401 () Bool)

(assert (=> mapNonEmpty!44461 (= mapRes!44461 (and tp!84401 e!643221))))

(declare-fun mapRest!44461 () (Array (_ BitVec 32) ValueCell!13505))

(declare-fun mapKey!44461 () (_ BitVec 32))

(declare-fun mapValue!44461 () ValueCell!13505)

(assert (=> mapNonEmpty!44461 (= (arr!35488 _values!996) (store mapRest!44461 mapKey!44461 mapValue!44461))))

(declare-fun b!1130153 () Bool)

(declare-fun res!755203 () Bool)

(assert (=> b!1130153 (=> (not res!755203) (not e!643212))))

(assert (=> b!1130153 (= res!755203 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36024 _keys!1208))))))

(declare-fun b!1130154 () Bool)

(assert (=> b!1130154 (= e!643220 (and e!643211 mapRes!44461))))

(declare-fun condMapEmpty!44461 () Bool)

(declare-fun mapDefault!44461 () ValueCell!13505)

