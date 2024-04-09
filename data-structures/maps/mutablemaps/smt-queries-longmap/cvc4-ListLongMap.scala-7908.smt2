; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98232 () Bool)

(assert start!98232)

(declare-fun b_free!23897 () Bool)

(declare-fun b_next!23897 () Bool)

(assert (=> start!98232 (= b_free!23897 (not b_next!23897))))

(declare-fun tp!84395 () Bool)

(declare-fun b_and!38599 () Bool)

(assert (=> start!98232 (= tp!84395 b_and!38599)))

(declare-fun b!1130050 () Bool)

(declare-fun res!755168 () Bool)

(declare-fun e!643164 () Bool)

(assert (=> b!1130050 (=> (not res!755168) (not e!643164))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73672 0))(
  ( (array!73673 (arr!35485 (Array (_ BitVec 32) (_ BitVec 64))) (size!36022 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73672)

(assert (=> b!1130050 (= res!755168 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36022 _keys!1208))))))

(declare-fun b!1130051 () Bool)

(declare-fun e!643178 () Bool)

(declare-fun e!643171 () Bool)

(assert (=> b!1130051 (= e!643178 e!643171)))

(declare-fun res!755161 () Bool)

(assert (=> b!1130051 (=> res!755161 e!643171)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1130051 (= res!755161 (not (= (select (arr!35485 _keys!1208) from!1455) k!934)))))

(declare-fun e!643169 () Bool)

(assert (=> b!1130051 e!643169))

(declare-fun c!109928 () Bool)

(assert (=> b!1130051 (= c!109928 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43029 0))(
  ( (V!43030 (val!14270 Int)) )
))
(declare-fun zeroValue!944 () V!43029)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43029)

(declare-datatypes ((Unit!36971 0))(
  ( (Unit!36972) )
))
(declare-fun lt!501774 () Unit!36971)

(declare-datatypes ((ValueCell!13504 0))(
  ( (ValueCellFull!13504 (v!16904 V!43029)) (EmptyCell!13504) )
))
(declare-datatypes ((array!73674 0))(
  ( (array!73675 (arr!35486 (Array (_ BitVec 32) ValueCell!13504)) (size!36023 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73674)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!421 (array!73672 array!73674 (_ BitVec 32) (_ BitVec 32) V!43029 V!43029 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36971)

(assert (=> b!1130051 (= lt!501774 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!421 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44458 () Bool)

(declare-fun mapRes!44458 () Bool)

(declare-fun tp!84396 () Bool)

(declare-fun e!643173 () Bool)

(assert (=> mapNonEmpty!44458 (= mapRes!44458 (and tp!84396 e!643173))))

(declare-fun mapRest!44458 () (Array (_ BitVec 32) ValueCell!13504))

(declare-fun mapValue!44458 () ValueCell!13504)

(declare-fun mapKey!44458 () (_ BitVec 32))

(assert (=> mapNonEmpty!44458 (= (arr!35486 _values!996) (store mapRest!44458 mapKey!44458 mapValue!44458))))

(declare-fun b!1130052 () Bool)

(declare-fun e!643166 () Unit!36971)

(declare-fun Unit!36973 () Unit!36971)

(assert (=> b!1130052 (= e!643166 Unit!36973)))

(declare-fun b!1130053 () Bool)

(declare-fun e!643174 () Unit!36971)

(declare-fun lt!501773 () Unit!36971)

(assert (=> b!1130053 (= e!643174 lt!501773)))

(declare-fun lt!501771 () Unit!36971)

(declare-fun call!48243 () Unit!36971)

(assert (=> b!1130053 (= lt!501771 call!48243)))

(declare-datatypes ((tuple2!18064 0))(
  ( (tuple2!18065 (_1!9042 (_ BitVec 64)) (_2!9042 V!43029)) )
))
(declare-datatypes ((List!24883 0))(
  ( (Nil!24880) (Cons!24879 (h!26088 tuple2!18064) (t!35779 List!24883)) )
))
(declare-datatypes ((ListLongMap!16045 0))(
  ( (ListLongMap!16046 (toList!8038 List!24883)) )
))
(declare-fun lt!501763 () ListLongMap!16045)

(declare-fun call!48244 () ListLongMap!16045)

(assert (=> b!1130053 (= lt!501763 call!48244)))

(declare-fun call!48242 () Bool)

(assert (=> b!1130053 call!48242))

(declare-fun addStillContains!705 (ListLongMap!16045 (_ BitVec 64) V!43029 (_ BitVec 64)) Unit!36971)

(assert (=> b!1130053 (= lt!501773 (addStillContains!705 lt!501763 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun contains!6532 (ListLongMap!16045 (_ BitVec 64)) Bool)

(declare-fun +!3405 (ListLongMap!16045 tuple2!18064) ListLongMap!16045)

(assert (=> b!1130053 (contains!6532 (+!3405 lt!501763 (tuple2!18065 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun b!1130054 () Bool)

(declare-fun res!755165 () Bool)

(assert (=> b!1130054 (=> (not res!755165) (not e!643164))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1130054 (= res!755165 (validKeyInArray!0 k!934))))

(declare-fun b!1130055 () Bool)

(declare-fun lt!501761 () Unit!36971)

(assert (=> b!1130055 (= e!643166 lt!501761)))

(declare-fun call!48245 () Unit!36971)

(assert (=> b!1130055 (= lt!501761 call!48245)))

(declare-fun call!48240 () Bool)

(assert (=> b!1130055 call!48240))

(declare-fun b!1130056 () Bool)

(declare-fun res!755172 () Bool)

(declare-fun e!643175 () Bool)

(assert (=> b!1130056 (=> (not res!755172) (not e!643175))))

(declare-fun lt!501767 () array!73672)

(declare-datatypes ((List!24884 0))(
  ( (Nil!24881) (Cons!24880 (h!26089 (_ BitVec 64)) (t!35780 List!24884)) )
))
(declare-fun arrayNoDuplicates!0 (array!73672 (_ BitVec 32) List!24884) Bool)

(assert (=> b!1130056 (= res!755172 (arrayNoDuplicates!0 lt!501767 #b00000000000000000000000000000000 Nil!24881))))

(declare-fun b!1130057 () Bool)

(declare-fun res!755160 () Bool)

(assert (=> b!1130057 (=> (not res!755160) (not e!643164))))

(assert (=> b!1130057 (= res!755160 (and (= (size!36023 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36022 _keys!1208) (size!36023 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1130058 () Bool)

(declare-fun e!643176 () Bool)

(declare-fun tp_is_empty!28427 () Bool)

(assert (=> b!1130058 (= e!643176 tp_is_empty!28427)))

(declare-fun b!1130059 () Bool)

(declare-fun res!755170 () Bool)

(assert (=> b!1130059 (=> (not res!755170) (not e!643164))))

(assert (=> b!1130059 (= res!755170 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24881))))

(declare-fun bm!48235 () Bool)

(declare-fun lt!501768 () array!73674)

(declare-fun call!48238 () ListLongMap!16045)

(declare-fun getCurrentListMapNoExtraKeys!4491 (array!73672 array!73674 (_ BitVec 32) (_ BitVec 32) V!43029 V!43029 (_ BitVec 32) Int) ListLongMap!16045)

(assert (=> bm!48235 (= call!48238 (getCurrentListMapNoExtraKeys!4491 lt!501767 lt!501768 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130060 () Bool)

(assert (=> b!1130060 (= e!643164 e!643175)))

(declare-fun res!755162 () Bool)

(assert (=> b!1130060 (=> (not res!755162) (not e!643175))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73672 (_ BitVec 32)) Bool)

(assert (=> b!1130060 (= res!755162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501767 mask!1564))))

(assert (=> b!1130060 (= lt!501767 (array!73673 (store (arr!35485 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36022 _keys!1208)))))

(declare-fun call!48241 () ListLongMap!16045)

(declare-fun bm!48236 () Bool)

(declare-fun c!109931 () Bool)

(assert (=> bm!48236 (= call!48242 (contains!6532 (ite c!109931 lt!501763 call!48241) k!934))))

(declare-fun b!1130061 () Bool)

(declare-fun call!48239 () ListLongMap!16045)

(declare-fun -!1166 (ListLongMap!16045 (_ BitVec 64)) ListLongMap!16045)

(assert (=> b!1130061 (= e!643169 (= call!48238 (-!1166 call!48239 k!934)))))

(declare-fun b!1130062 () Bool)

(declare-fun c!109929 () Bool)

(declare-fun lt!501762 () Bool)

(assert (=> b!1130062 (= c!109929 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!501762))))

(declare-fun e!643165 () Unit!36971)

(assert (=> b!1130062 (= e!643165 e!643166)))

(declare-fun b!1130063 () Bool)

(declare-fun res!755163 () Bool)

(assert (=> b!1130063 (=> (not res!755163) (not e!643164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1130063 (= res!755163 (validMask!0 mask!1564))))

(declare-fun b!1130064 () Bool)

(declare-fun e!643170 () Bool)

(declare-fun e!643172 () Bool)

(assert (=> b!1130064 (= e!643170 e!643172)))

(declare-fun res!755171 () Bool)

(assert (=> b!1130064 (=> res!755171 e!643172)))

(assert (=> b!1130064 (= res!755171 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36022 _keys!1208))))))

(declare-fun lt!501760 () Unit!36971)

(assert (=> b!1130064 (= lt!501760 e!643174)))

(assert (=> b!1130064 (= c!109931 (and (not lt!501762) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1130064 (= lt!501762 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!109930 () Bool)

(declare-fun bm!48237 () Bool)

(declare-fun lt!501770 () ListLongMap!16045)

(assert (=> bm!48237 (= call!48243 (addStillContains!705 lt!501770 (ite (or c!109931 c!109930) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!109931 c!109930) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1130065 () Bool)

(assert (=> b!1130065 (= e!643173 tp_is_empty!28427)))

(declare-fun res!755159 () Bool)

(assert (=> start!98232 (=> (not res!755159) (not e!643164))))

(assert (=> start!98232 (= res!755159 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36022 _keys!1208))))))

(assert (=> start!98232 e!643164))

(assert (=> start!98232 tp_is_empty!28427))

(declare-fun array_inv!27088 (array!73672) Bool)

(assert (=> start!98232 (array_inv!27088 _keys!1208)))

(assert (=> start!98232 true))

(assert (=> start!98232 tp!84395))

(declare-fun e!643168 () Bool)

(declare-fun array_inv!27089 (array!73674) Bool)

(assert (=> start!98232 (and (array_inv!27089 _values!996) e!643168)))

(declare-fun b!1130066 () Bool)

(assert (=> b!1130066 (= e!643172 true)))

(declare-fun lt!501772 () Bool)

(declare-fun getCurrentListMap!4442 (array!73672 array!73674 (_ BitVec 32) (_ BitVec 32) V!43029 V!43029 (_ BitVec 32) Int) ListLongMap!16045)

(assert (=> b!1130066 (= lt!501772 (contains!6532 (getCurrentListMap!4442 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1130067 () Bool)

(declare-fun e!643177 () Bool)

(assert (=> b!1130067 (= e!643175 (not e!643177))))

(declare-fun res!755169 () Bool)

(assert (=> b!1130067 (=> res!755169 e!643177)))

(assert (=> b!1130067 (= res!755169 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73672 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1130067 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!501769 () Unit!36971)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73672 (_ BitVec 64) (_ BitVec 32)) Unit!36971)

(assert (=> b!1130067 (= lt!501769 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1130068 () Bool)

(assert (=> b!1130068 (= e!643174 e!643165)))

(assert (=> b!1130068 (= c!109930 (and (not lt!501762) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!48238 () Bool)

(assert (=> bm!48238 (= call!48239 (getCurrentListMapNoExtraKeys!4491 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130069 () Bool)

(assert (=> b!1130069 (= e!643177 e!643178)))

(declare-fun res!755166 () Bool)

(assert (=> b!1130069 (=> res!755166 e!643178)))

(assert (=> b!1130069 (= res!755166 (not (= from!1455 i!673)))))

(declare-fun lt!501766 () ListLongMap!16045)

(assert (=> b!1130069 (= lt!501766 (getCurrentListMapNoExtraKeys!4491 lt!501767 lt!501768 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2567 (Int (_ BitVec 64)) V!43029)

(assert (=> b!1130069 (= lt!501768 (array!73675 (store (arr!35486 _values!996) i!673 (ValueCellFull!13504 (dynLambda!2567 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36023 _values!996)))))

(declare-fun lt!501764 () ListLongMap!16045)

(assert (=> b!1130069 (= lt!501764 (getCurrentListMapNoExtraKeys!4491 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!48239 () Bool)

(assert (=> bm!48239 (= call!48244 (+!3405 lt!501770 (ite (or c!109931 c!109930) (tuple2!18065 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18065 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1130070 () Bool)

(declare-fun res!755167 () Bool)

(assert (=> b!1130070 (=> (not res!755167) (not e!643164))))

(assert (=> b!1130070 (= res!755167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1130071 () Bool)

(assert (=> b!1130071 (= e!643171 e!643170)))

(declare-fun res!755164 () Bool)

(assert (=> b!1130071 (=> res!755164 e!643170)))

(assert (=> b!1130071 (= res!755164 (not (contains!6532 lt!501770 k!934)))))

(assert (=> b!1130071 (= lt!501770 (getCurrentListMapNoExtraKeys!4491 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130072 () Bool)

(declare-fun res!755158 () Bool)

(assert (=> b!1130072 (=> (not res!755158) (not e!643164))))

(assert (=> b!1130072 (= res!755158 (= (select (arr!35485 _keys!1208) i!673) k!934))))

(declare-fun b!1130073 () Bool)

(assert (=> b!1130073 (= e!643168 (and e!643176 mapRes!44458))))

(declare-fun condMapEmpty!44458 () Bool)

(declare-fun mapDefault!44458 () ValueCell!13504)

