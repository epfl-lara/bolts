; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98210 () Bool)

(assert start!98210)

(declare-fun b_free!23875 () Bool)

(declare-fun b_next!23875 () Bool)

(assert (=> start!98210 (= b_free!23875 (not b_next!23875))))

(declare-fun tp!84329 () Bool)

(declare-fun b_and!38555 () Bool)

(assert (=> start!98210 (= tp!84329 b_and!38555)))

(declare-fun b!1129170 () Bool)

(declare-fun e!642683 () Bool)

(declare-datatypes ((V!43001 0))(
  ( (V!43002 (val!14259 Int)) )
))
(declare-datatypes ((tuple2!18042 0))(
  ( (tuple2!18043 (_1!9031 (_ BitVec 64)) (_2!9031 V!43001)) )
))
(declare-datatypes ((List!24861 0))(
  ( (Nil!24858) (Cons!24857 (h!26066 tuple2!18042) (t!35735 List!24861)) )
))
(declare-datatypes ((ListLongMap!16023 0))(
  ( (ListLongMap!16024 (toList!8027 List!24861)) )
))
(declare-fun call!47974 () ListLongMap!16023)

(declare-fun call!47975 () ListLongMap!16023)

(assert (=> b!1129170 (= e!642683 (= call!47974 call!47975))))

(declare-fun b!1129171 () Bool)

(declare-fun e!642680 () Bool)

(assert (=> b!1129171 (= e!642680 true)))

(declare-fun zeroValue!944 () V!43001)

(declare-datatypes ((array!73628 0))(
  ( (array!73629 (arr!35463 (Array (_ BitVec 32) (_ BitVec 64))) (size!36000 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73628)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!501272 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13493 0))(
  ( (ValueCellFull!13493 (v!16893 V!43001)) (EmptyCell!13493) )
))
(declare-datatypes ((array!73630 0))(
  ( (array!73631 (arr!35464 (Array (_ BitVec 32) ValueCell!13493)) (size!36001 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73630)

(declare-fun minValue!944 () V!43001)

(declare-fun contains!6521 (ListLongMap!16023 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4433 (array!73628 array!73630 (_ BitVec 32) (_ BitVec 32) V!43001 V!43001 (_ BitVec 32) Int) ListLongMap!16023)

(assert (=> b!1129171 (= lt!501272 (contains!6521 (getCurrentListMap!4433 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1129172 () Bool)

(declare-fun e!642681 () Bool)

(assert (=> b!1129172 (= e!642681 e!642680)))

(declare-fun res!754672 () Bool)

(assert (=> b!1129172 (=> res!754672 e!642680)))

(assert (=> b!1129172 (= res!754672 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36000 _keys!1208))))))

(declare-datatypes ((Unit!36941 0))(
  ( (Unit!36942) )
))
(declare-fun lt!501278 () Unit!36941)

(declare-fun e!642675 () Unit!36941)

(assert (=> b!1129172 (= lt!501278 e!642675)))

(declare-fun c!109798 () Bool)

(declare-fun lt!501275 () Bool)

(assert (=> b!1129172 (= c!109798 (and (not lt!501275) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1129172 (= lt!501275 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun res!754667 () Bool)

(declare-fun e!642674 () Bool)

(assert (=> start!98210 (=> (not res!754667) (not e!642674))))

(assert (=> start!98210 (= res!754667 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36000 _keys!1208))))))

(assert (=> start!98210 e!642674))

(declare-fun tp_is_empty!28405 () Bool)

(assert (=> start!98210 tp_is_empty!28405))

(declare-fun array_inv!27076 (array!73628) Bool)

(assert (=> start!98210 (array_inv!27076 _keys!1208)))

(assert (=> start!98210 true))

(assert (=> start!98210 tp!84329))

(declare-fun e!642671 () Bool)

(declare-fun array_inv!27077 (array!73630) Bool)

(assert (=> start!98210 (and (array_inv!27077 _values!996) e!642671)))

(declare-fun b!1129173 () Bool)

(declare-fun e!642669 () Bool)

(declare-fun e!642679 () Bool)

(assert (=> b!1129173 (= e!642669 e!642679)))

(declare-fun res!754668 () Bool)

(assert (=> b!1129173 (=> res!754668 e!642679)))

(assert (=> b!1129173 (= res!754668 (not (= (select (arr!35463 _keys!1208) from!1455) k!934)))))

(assert (=> b!1129173 e!642683))

(declare-fun c!109797 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1129173 (= c!109797 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!501269 () Unit!36941)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!412 (array!73628 array!73630 (_ BitVec 32) (_ BitVec 32) V!43001 V!43001 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36941)

(assert (=> b!1129173 (= lt!501269 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!412 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129174 () Bool)

(declare-fun e!642673 () Bool)

(assert (=> b!1129174 (= e!642673 e!642669)))

(declare-fun res!754677 () Bool)

(assert (=> b!1129174 (=> res!754677 e!642669)))

(assert (=> b!1129174 (= res!754677 (not (= from!1455 i!673)))))

(declare-fun lt!501267 () ListLongMap!16023)

(declare-fun lt!501270 () array!73628)

(declare-fun lt!501274 () array!73630)

(declare-fun getCurrentListMapNoExtraKeys!4480 (array!73628 array!73630 (_ BitVec 32) (_ BitVec 32) V!43001 V!43001 (_ BitVec 32) Int) ListLongMap!16023)

(assert (=> b!1129174 (= lt!501267 (getCurrentListMapNoExtraKeys!4480 lt!501270 lt!501274 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2557 (Int (_ BitVec 64)) V!43001)

(assert (=> b!1129174 (= lt!501274 (array!73631 (store (arr!35464 _values!996) i!673 (ValueCellFull!13493 (dynLambda!2557 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36001 _values!996)))))

(declare-fun lt!501265 () ListLongMap!16023)

(assert (=> b!1129174 (= lt!501265 (getCurrentListMapNoExtraKeys!4480 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1129175 () Bool)

(assert (=> b!1129175 (= e!642679 e!642681)))

(declare-fun res!754664 () Bool)

(assert (=> b!1129175 (=> res!754664 e!642681)))

(declare-fun lt!501279 () ListLongMap!16023)

(assert (=> b!1129175 (= res!754664 (not (contains!6521 lt!501279 k!934)))))

(assert (=> b!1129175 (= lt!501279 (getCurrentListMapNoExtraKeys!4480 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!47971 () Bool)

(declare-fun call!47980 () Unit!36941)

(declare-fun call!47978 () Unit!36941)

(assert (=> bm!47971 (= call!47980 call!47978)))

(declare-fun bm!47972 () Bool)

(assert (=> bm!47972 (= call!47975 (getCurrentListMapNoExtraKeys!4480 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129176 () Bool)

(declare-fun res!754676 () Bool)

(assert (=> b!1129176 (=> (not res!754676) (not e!642674))))

(assert (=> b!1129176 (= res!754676 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36000 _keys!1208))))))

(declare-fun b!1129177 () Bool)

(declare-fun lt!501271 () Unit!36941)

(assert (=> b!1129177 (= e!642675 lt!501271)))

(declare-fun lt!501268 () Unit!36941)

(assert (=> b!1129177 (= lt!501268 call!47978)))

(declare-fun lt!501273 () ListLongMap!16023)

(declare-fun call!47981 () ListLongMap!16023)

(assert (=> b!1129177 (= lt!501273 call!47981)))

(declare-fun call!47977 () Bool)

(assert (=> b!1129177 call!47977))

(declare-fun addStillContains!694 (ListLongMap!16023 (_ BitVec 64) V!43001 (_ BitVec 64)) Unit!36941)

(assert (=> b!1129177 (= lt!501271 (addStillContains!694 lt!501273 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun +!3395 (ListLongMap!16023 tuple2!18042) ListLongMap!16023)

(assert (=> b!1129177 (contains!6521 (+!3395 lt!501273 (tuple2!18043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun b!1129178 () Bool)

(declare-fun -!1159 (ListLongMap!16023 (_ BitVec 64)) ListLongMap!16023)

(assert (=> b!1129178 (= e!642683 (= call!47974 (-!1159 call!47975 k!934)))))

(declare-fun mapNonEmpty!44425 () Bool)

(declare-fun mapRes!44425 () Bool)

(declare-fun tp!84330 () Bool)

(declare-fun e!642676 () Bool)

(assert (=> mapNonEmpty!44425 (= mapRes!44425 (and tp!84330 e!642676))))

(declare-fun mapRest!44425 () (Array (_ BitVec 32) ValueCell!13493))

(declare-fun mapValue!44425 () ValueCell!13493)

(declare-fun mapKey!44425 () (_ BitVec 32))

(assert (=> mapNonEmpty!44425 (= (arr!35464 _values!996) (store mapRest!44425 mapKey!44425 mapValue!44425))))

(declare-fun bm!47973 () Bool)

(declare-fun call!47979 () ListLongMap!16023)

(assert (=> bm!47973 (= call!47979 call!47981)))

(declare-fun mapIsEmpty!44425 () Bool)

(assert (=> mapIsEmpty!44425 mapRes!44425))

(declare-fun b!1129179 () Bool)

(declare-fun e!642670 () Bool)

(assert (=> b!1129179 (= e!642674 e!642670)))

(declare-fun res!754675 () Bool)

(assert (=> b!1129179 (=> (not res!754675) (not e!642670))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73628 (_ BitVec 32)) Bool)

(assert (=> b!1129179 (= res!754675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501270 mask!1564))))

(assert (=> b!1129179 (= lt!501270 (array!73629 (store (arr!35463 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36000 _keys!1208)))))

(declare-fun b!1129180 () Bool)

(declare-fun res!754674 () Bool)

(assert (=> b!1129180 (=> (not res!754674) (not e!642674))))

(assert (=> b!1129180 (= res!754674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1129181 () Bool)

(declare-fun res!754673 () Bool)

(assert (=> b!1129181 (=> (not res!754673) (not e!642674))))

(assert (=> b!1129181 (= res!754673 (and (= (size!36001 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36000 _keys!1208) (size!36001 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1129182 () Bool)

(declare-fun res!754663 () Bool)

(assert (=> b!1129182 (=> (not res!754663) (not e!642674))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1129182 (= res!754663 (validKeyInArray!0 k!934))))

(declare-fun c!109796 () Bool)

(declare-fun bm!47974 () Bool)

(assert (=> bm!47974 (= call!47978 (addStillContains!694 lt!501279 (ite (or c!109798 c!109796) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!109798 c!109796) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1129183 () Bool)

(declare-fun e!642677 () Unit!36941)

(assert (=> b!1129183 (= e!642675 e!642677)))

(assert (=> b!1129183 (= c!109796 (and (not lt!501275) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1129184 () Bool)

(declare-fun res!754665 () Bool)

(assert (=> b!1129184 (=> (not res!754665) (not e!642674))))

(declare-datatypes ((List!24862 0))(
  ( (Nil!24859) (Cons!24858 (h!26067 (_ BitVec 64)) (t!35736 List!24862)) )
))
(declare-fun arrayNoDuplicates!0 (array!73628 (_ BitVec 32) List!24862) Bool)

(assert (=> b!1129184 (= res!754665 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24859))))

(declare-fun b!1129185 () Bool)

(declare-fun e!642682 () Bool)

(assert (=> b!1129185 (= e!642671 (and e!642682 mapRes!44425))))

(declare-fun condMapEmpty!44425 () Bool)

(declare-fun mapDefault!44425 () ValueCell!13493)

