; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98510 () Bool)

(assert start!98510)

(declare-fun b_free!24079 () Bool)

(declare-fun b_next!24079 () Bool)

(assert (=> start!98510 (= b_free!24079 (not b_next!24079))))

(declare-fun tp!84948 () Bool)

(declare-fun b_and!39021 () Bool)

(assert (=> start!98510 (= tp!84948 b_and!39021)))

(declare-fun b!1138760 () Bool)

(declare-fun res!759667 () Bool)

(declare-fun e!647986 () Bool)

(assert (=> b!1138760 (=> (not res!759667) (not e!647986))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!74036 0))(
  ( (array!74037 (arr!35665 (Array (_ BitVec 32) (_ BitVec 64))) (size!36202 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74036)

(assert (=> b!1138760 (= res!759667 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36202 _keys!1208))))))

(declare-fun b!1138761 () Bool)

(declare-fun e!647990 () Bool)

(declare-fun tp_is_empty!28609 () Bool)

(assert (=> b!1138761 (= e!647990 tp_is_empty!28609)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1138762 () Bool)

(declare-fun lt!506670 () Bool)

(declare-fun e!647980 () Bool)

(assert (=> b!1138762 (= e!647980 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!506670) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1138763 () Bool)

(declare-fun e!647993 () Bool)

(assert (=> b!1138763 (= e!647993 tp_is_empty!28609)))

(declare-fun e!647985 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1138764 () Bool)

(declare-fun arrayContainsKey!0 (array!74036 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1138764 (= e!647985 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1138766 () Bool)

(declare-datatypes ((V!43273 0))(
  ( (V!43274 (val!14361 Int)) )
))
(declare-datatypes ((tuple2!18236 0))(
  ( (tuple2!18237 (_1!9128 (_ BitVec 64)) (_2!9128 V!43273)) )
))
(declare-datatypes ((List!25041 0))(
  ( (Nil!25038) (Cons!25037 (h!26246 tuple2!18236) (t!36119 List!25041)) )
))
(declare-datatypes ((ListLongMap!16217 0))(
  ( (ListLongMap!16218 (toList!8124 List!25041)) )
))
(declare-fun call!50495 () ListLongMap!16217)

(declare-fun call!50491 () ListLongMap!16217)

(declare-fun e!647982 () Bool)

(declare-fun -!1227 (ListLongMap!16217 (_ BitVec 64)) ListLongMap!16217)

(assert (=> b!1138766 (= e!647982 (= call!50491 (-!1227 call!50495 k!934)))))

(declare-fun b!1138767 () Bool)

(declare-fun e!647981 () Bool)

(declare-fun e!647989 () Bool)

(assert (=> b!1138767 (= e!647981 (not e!647989))))

(declare-fun res!759676 () Bool)

(assert (=> b!1138767 (=> res!759676 e!647989)))

(assert (=> b!1138767 (= res!759676 (bvsgt from!1455 i!673))))

(assert (=> b!1138767 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37262 0))(
  ( (Unit!37263) )
))
(declare-fun lt!506673 () Unit!37262)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74036 (_ BitVec 64) (_ BitVec 32)) Unit!37262)

(assert (=> b!1138767 (= lt!506673 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun zeroValue!944 () V!43273)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13595 0))(
  ( (ValueCellFull!13595 (v!16999 V!43273)) (EmptyCell!13595) )
))
(declare-datatypes ((array!74038 0))(
  ( (array!74039 (arr!35666 (Array (_ BitVec 32) ValueCell!13595)) (size!36203 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74038)

(declare-fun minValue!944 () V!43273)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun bm!50486 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4571 (array!74036 array!74038 (_ BitVec 32) (_ BitVec 32) V!43273 V!43273 (_ BitVec 32) Int) ListLongMap!16217)

(assert (=> bm!50486 (= call!50495 (getCurrentListMapNoExtraKeys!4571 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138768 () Bool)

(declare-fun e!647983 () Unit!37262)

(declare-fun Unit!37264 () Unit!37262)

(assert (=> b!1138768 (= e!647983 Unit!37264)))

(declare-fun b!1138769 () Bool)

(declare-fun res!759678 () Bool)

(assert (=> b!1138769 (=> (not res!759678) (not e!647986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1138769 (= res!759678 (validMask!0 mask!1564))))

(declare-fun b!1138770 () Bool)

(declare-fun e!647984 () Bool)

(assert (=> b!1138770 (= e!647989 e!647984)))

(declare-fun res!759670 () Bool)

(assert (=> b!1138770 (=> res!759670 e!647984)))

(assert (=> b!1138770 (= res!759670 (not (= from!1455 i!673)))))

(declare-fun lt!506671 () array!74036)

(declare-fun lt!506674 () array!74038)

(declare-fun lt!506672 () ListLongMap!16217)

(assert (=> b!1138770 (= lt!506672 (getCurrentListMapNoExtraKeys!4571 lt!506671 lt!506674 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2629 (Int (_ BitVec 64)) V!43273)

(assert (=> b!1138770 (= lt!506674 (array!74039 (store (arr!35666 _values!996) i!673 (ValueCellFull!13595 (dynLambda!2629 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36203 _values!996)))))

(declare-fun lt!506666 () ListLongMap!16217)

(assert (=> b!1138770 (= lt!506666 (getCurrentListMapNoExtraKeys!4571 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1138771 () Bool)

(assert (=> b!1138771 (= e!647980 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1138772 () Bool)

(declare-fun e!647991 () Bool)

(assert (=> b!1138772 (= e!647984 e!647991)))

(declare-fun res!759677 () Bool)

(assert (=> b!1138772 (=> res!759677 e!647991)))

(assert (=> b!1138772 (= res!759677 (not (= (select (arr!35665 _keys!1208) from!1455) k!934)))))

(assert (=> b!1138772 e!647982))

(declare-fun c!111520 () Bool)

(assert (=> b!1138772 (= c!111520 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!506681 () Unit!37262)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!485 (array!74036 array!74038 (_ BitVec 32) (_ BitVec 32) V!43273 V!43273 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37262)

(assert (=> b!1138772 (= lt!506681 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!485 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44738 () Bool)

(declare-fun mapRes!44738 () Bool)

(declare-fun tp!84949 () Bool)

(assert (=> mapNonEmpty!44738 (= mapRes!44738 (and tp!84949 e!647993))))

(declare-fun mapKey!44738 () (_ BitVec 32))

(declare-fun mapRest!44738 () (Array (_ BitVec 32) ValueCell!13595))

(declare-fun mapValue!44738 () ValueCell!13595)

(assert (=> mapNonEmpty!44738 (= (arr!35666 _values!996) (store mapRest!44738 mapKey!44738 mapValue!44738))))

(declare-fun b!1138773 () Bool)

(declare-fun e!647992 () Unit!37262)

(declare-fun lt!506678 () Unit!37262)

(assert (=> b!1138773 (= e!647992 lt!506678)))

(declare-fun call!50494 () Unit!37262)

(assert (=> b!1138773 (= lt!506678 call!50494)))

(declare-fun call!50492 () Bool)

(assert (=> b!1138773 call!50492))

(declare-fun b!1138774 () Bool)

(declare-fun res!759668 () Bool)

(assert (=> b!1138774 (=> (not res!759668) (not e!647986))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1138774 (= res!759668 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!44738 () Bool)

(assert (=> mapIsEmpty!44738 mapRes!44738))

(declare-fun res!759679 () Bool)

(assert (=> start!98510 (=> (not res!759679) (not e!647986))))

(assert (=> start!98510 (= res!759679 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36202 _keys!1208))))))

(assert (=> start!98510 e!647986))

(assert (=> start!98510 tp_is_empty!28609))

(declare-fun array_inv!27216 (array!74036) Bool)

(assert (=> start!98510 (array_inv!27216 _keys!1208)))

(assert (=> start!98510 true))

(assert (=> start!98510 tp!84948))

(declare-fun e!647988 () Bool)

(declare-fun array_inv!27217 (array!74038) Bool)

(assert (=> start!98510 (and (array_inv!27217 _values!996) e!647988)))

(declare-fun b!1138765 () Bool)

(declare-fun c!111517 () Bool)

(assert (=> b!1138765 (= c!111517 (and (not lt!506670) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!647987 () Unit!37262)

(assert (=> b!1138765 (= e!647987 e!647992)))

(declare-fun b!1138775 () Bool)

(declare-fun call!50489 () ListLongMap!16217)

(declare-fun contains!6634 (ListLongMap!16217 (_ BitVec 64)) Bool)

(assert (=> b!1138775 (contains!6634 call!50489 k!934)))

(declare-fun lt!506667 () ListLongMap!16217)

(declare-fun lt!506676 () Unit!37262)

(declare-fun addStillContains!775 (ListLongMap!16217 (_ BitVec 64) V!43273 (_ BitVec 64)) Unit!37262)

(assert (=> b!1138775 (= lt!506676 (addStillContains!775 lt!506667 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!50496 () Bool)

(assert (=> b!1138775 call!50496))

(declare-fun lt!506675 () ListLongMap!16217)

(declare-fun +!3474 (ListLongMap!16217 tuple2!18236) ListLongMap!16217)

(assert (=> b!1138775 (= lt!506667 (+!3474 lt!506675 (tuple2!18237 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!506665 () Unit!37262)

(declare-fun call!50490 () Unit!37262)

(assert (=> b!1138775 (= lt!506665 call!50490)))

(assert (=> b!1138775 (= e!647987 lt!506676)))

(declare-fun bm!50487 () Bool)

(assert (=> bm!50487 (= call!50491 (getCurrentListMapNoExtraKeys!4571 lt!506671 lt!506674 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138776 () Bool)

(assert (=> b!1138776 (= e!647988 (and e!647990 mapRes!44738))))

(declare-fun condMapEmpty!44738 () Bool)

(declare-fun mapDefault!44738 () ValueCell!13595)

