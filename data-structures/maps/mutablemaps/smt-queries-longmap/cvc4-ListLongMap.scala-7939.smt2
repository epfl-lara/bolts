; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98514 () Bool)

(assert start!98514)

(declare-fun b_free!24083 () Bool)

(declare-fun b_next!24083 () Bool)

(assert (=> start!98514 (= b_free!24083 (not b_next!24083))))

(declare-fun tp!84961 () Bool)

(declare-fun b_and!39029 () Bool)

(assert (=> start!98514 (= tp!84961 b_and!39029)))

(declare-fun b!1138938 () Bool)

(declare-datatypes ((Unit!37270 0))(
  ( (Unit!37271) )
))
(declare-fun e!648083 () Unit!37270)

(declare-fun Unit!37272 () Unit!37270)

(assert (=> b!1138938 (= e!648083 Unit!37272)))

(declare-fun b!1138939 () Bool)

(declare-fun res!759751 () Bool)

(declare-fun e!648075 () Bool)

(assert (=> b!1138939 (=> (not res!759751) (not e!648075))))

(declare-datatypes ((array!74044 0))(
  ( (array!74045 (arr!35669 (Array (_ BitVec 32) (_ BitVec 64))) (size!36206 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74044)

(declare-datatypes ((List!25044 0))(
  ( (Nil!25041) (Cons!25040 (h!26249 (_ BitVec 64)) (t!36126 List!25044)) )
))
(declare-fun arrayNoDuplicates!0 (array!74044 (_ BitVec 32) List!25044) Bool)

(assert (=> b!1138939 (= res!759751 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25041))))

(declare-fun b!1138940 () Bool)

(declare-fun e!648089 () Unit!37270)

(declare-fun lt!506786 () Unit!37270)

(assert (=> b!1138940 (= e!648089 lt!506786)))

(declare-fun call!50539 () Unit!37270)

(assert (=> b!1138940 (= lt!506786 call!50539)))

(declare-fun call!50544 () Bool)

(assert (=> b!1138940 call!50544))

(declare-datatypes ((V!43277 0))(
  ( (V!43278 (val!14363 Int)) )
))
(declare-fun zeroValue!944 () V!43277)

(declare-fun c!111558 () Bool)

(declare-fun c!111557 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!43277)

(declare-datatypes ((tuple2!18240 0))(
  ( (tuple2!18241 (_1!9130 (_ BitVec 64)) (_2!9130 V!43277)) )
))
(declare-datatypes ((List!25045 0))(
  ( (Nil!25042) (Cons!25041 (h!26250 tuple2!18240) (t!36127 List!25045)) )
))
(declare-datatypes ((ListLongMap!16221 0))(
  ( (ListLongMap!16222 (toList!8126 List!25045)) )
))
(declare-fun lt!506783 () ListLongMap!16221)

(declare-fun bm!50534 () Bool)

(declare-fun call!50540 () Unit!37270)

(declare-fun addStillContains!777 (ListLongMap!16221 (_ BitVec 64) V!43277 (_ BitVec 64)) Unit!37270)

(assert (=> bm!50534 (= call!50540 (addStillContains!777 lt!506783 (ite (or c!111557 c!111558) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111557 c!111558) zeroValue!944 minValue!944) k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!506774 () Bool)

(declare-fun e!648079 () Bool)

(declare-fun b!1138941 () Bool)

(assert (=> b!1138941 (= e!648079 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!506774) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1138942 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!648086 () Bool)

(declare-fun arrayContainsKey!0 (array!74044 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1138942 (= e!648086 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1138943 () Bool)

(declare-fun e!648081 () Bool)

(declare-fun e!648090 () Bool)

(assert (=> b!1138943 (= e!648081 e!648090)))

(declare-fun res!759763 () Bool)

(assert (=> b!1138943 (=> res!759763 e!648090)))

(assert (=> b!1138943 (= res!759763 (not (= (select (arr!35669 _keys!1208) from!1455) k!934)))))

(declare-fun e!648084 () Bool)

(assert (=> b!1138943 e!648084))

(declare-fun c!111556 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1138943 (= c!111556 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13597 0))(
  ( (ValueCellFull!13597 (v!17001 V!43277)) (EmptyCell!13597) )
))
(declare-datatypes ((array!74046 0))(
  ( (array!74047 (arr!35670 (Array (_ BitVec 32) ValueCell!13597)) (size!36207 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74046)

(declare-fun lt!506788 () Unit!37270)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!487 (array!74044 array!74046 (_ BitVec 32) (_ BitVec 32) V!43277 V!43277 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37270)

(assert (=> b!1138943 (= lt!506788 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!487 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138944 () Bool)

(declare-fun res!759753 () Bool)

(assert (=> b!1138944 (=> (not res!759753) (not e!648075))))

(assert (=> b!1138944 (= res!759753 (and (= (size!36207 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36206 _keys!1208) (size!36207 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!50535 () Bool)

(declare-fun call!50541 () ListLongMap!16221)

(declare-fun call!50537 () ListLongMap!16221)

(assert (=> bm!50535 (= call!50541 call!50537)))

(declare-fun b!1138946 () Bool)

(declare-fun e!648085 () Bool)

(assert (=> b!1138946 (= e!648075 e!648085)))

(declare-fun res!759762 () Bool)

(assert (=> b!1138946 (=> (not res!759762) (not e!648085))))

(declare-fun lt!506785 () array!74044)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74044 (_ BitVec 32)) Bool)

(assert (=> b!1138946 (= res!759762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!506785 mask!1564))))

(assert (=> b!1138946 (= lt!506785 (array!74045 (store (arr!35669 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36206 _keys!1208)))))

(declare-fun b!1138947 () Bool)

(declare-fun res!759752 () Bool)

(assert (=> b!1138947 (=> (not res!759752) (not e!648085))))

(assert (=> b!1138947 (= res!759752 (arrayNoDuplicates!0 lt!506785 #b00000000000000000000000000000000 Nil!25041))))

(declare-fun call!50538 () ListLongMap!16221)

(declare-fun b!1138948 () Bool)

(declare-fun call!50543 () ListLongMap!16221)

(declare-fun -!1229 (ListLongMap!16221 (_ BitVec 64)) ListLongMap!16221)

(assert (=> b!1138948 (= e!648084 (= call!50538 (-!1229 call!50543 k!934)))))

(declare-fun b!1138949 () Bool)

(declare-fun res!759758 () Bool)

(assert (=> b!1138949 (=> (not res!759758) (not e!648075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1138949 (= res!759758 (validKeyInArray!0 k!934))))

(declare-fun b!1138950 () Bool)

(declare-fun Unit!37273 () Unit!37270)

(assert (=> b!1138950 (= e!648083 Unit!37273)))

(assert (=> b!1138950 (= lt!506774 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1138950 (= c!111557 (and (not lt!506774) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!506781 () Unit!37270)

(declare-fun e!648080 () Unit!37270)

(assert (=> b!1138950 (= lt!506781 e!648080)))

(declare-fun lt!506779 () Unit!37270)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!379 (array!74044 array!74046 (_ BitVec 32) (_ BitVec 32) V!43277 V!43277 (_ BitVec 64) (_ BitVec 32) Int) Unit!37270)

(assert (=> b!1138950 (= lt!506779 (lemmaListMapContainsThenArrayContainsFrom!379 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111555 () Bool)

(assert (=> b!1138950 (= c!111555 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!759755 () Bool)

(assert (=> b!1138950 (= res!759755 e!648079)))

(assert (=> b!1138950 (=> (not res!759755) (not e!648086))))

(assert (=> b!1138950 e!648086))

(declare-fun lt!506777 () Unit!37270)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74044 (_ BitVec 32) (_ BitVec 32)) Unit!37270)

(assert (=> b!1138950 (= lt!506777 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1138950 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25041)))

(declare-fun lt!506782 () Unit!37270)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74044 (_ BitVec 64) (_ BitVec 32) List!25044) Unit!37270)

(assert (=> b!1138950 (= lt!506782 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25041))))

(assert (=> b!1138950 false))

(declare-fun b!1138951 () Bool)

(assert (=> b!1138951 call!50544))

(declare-fun lt!506780 () Unit!37270)

(assert (=> b!1138951 (= lt!506780 call!50539)))

(declare-fun e!648076 () Unit!37270)

(assert (=> b!1138951 (= e!648076 lt!506780)))

(declare-fun b!1138952 () Bool)

(assert (=> b!1138952 (= c!111558 (and (not lt!506774) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1138952 (= e!648080 e!648089)))

(declare-fun b!1138953 () Bool)

(declare-fun e!648087 () Bool)

(assert (=> b!1138953 (= e!648087 e!648081)))

(declare-fun res!759760 () Bool)

(assert (=> b!1138953 (=> res!759760 e!648081)))

(assert (=> b!1138953 (= res!759760 (not (= from!1455 i!673)))))

(declare-fun lt!506776 () array!74046)

(declare-fun lt!506773 () ListLongMap!16221)

(declare-fun getCurrentListMapNoExtraKeys!4573 (array!74044 array!74046 (_ BitVec 32) (_ BitVec 32) V!43277 V!43277 (_ BitVec 32) Int) ListLongMap!16221)

(assert (=> b!1138953 (= lt!506773 (getCurrentListMapNoExtraKeys!4573 lt!506785 lt!506776 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2631 (Int (_ BitVec 64)) V!43277)

(assert (=> b!1138953 (= lt!506776 (array!74047 (store (arr!35670 _values!996) i!673 (ValueCellFull!13597 (dynLambda!2631 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36207 _values!996)))))

(declare-fun lt!506787 () ListLongMap!16221)

(assert (=> b!1138953 (= lt!506787 (getCurrentListMapNoExtraKeys!4573 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!50536 () Bool)

(declare-fun call!50542 () Bool)

(declare-fun lt!506784 () ListLongMap!16221)

(declare-fun contains!6636 (ListLongMap!16221 (_ BitVec 64)) Bool)

(assert (=> bm!50536 (= call!50542 (contains!6636 (ite c!111557 lt!506784 call!50541) k!934))))

(declare-fun b!1138954 () Bool)

(declare-fun res!759754 () Bool)

(assert (=> b!1138954 (=> (not res!759754) (not e!648075))))

(assert (=> b!1138954 (= res!759754 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36206 _keys!1208))))))

(declare-fun bm!50537 () Bool)

(assert (=> bm!50537 (= call!50543 (getCurrentListMapNoExtraKeys!4573 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44744 () Bool)

(declare-fun mapRes!44744 () Bool)

(assert (=> mapIsEmpty!44744 mapRes!44744))

(declare-fun bm!50538 () Bool)

(assert (=> bm!50538 (= call!50539 call!50540)))

(declare-fun b!1138955 () Bool)

(declare-fun res!759764 () Bool)

(assert (=> b!1138955 (=> (not res!759764) (not e!648075))))

(assert (=> b!1138955 (= res!759764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1138956 () Bool)

(declare-fun Unit!37274 () Unit!37270)

(assert (=> b!1138956 (= e!648076 Unit!37274)))

(declare-fun bm!50539 () Bool)

(declare-fun +!3476 (ListLongMap!16221 tuple2!18240) ListLongMap!16221)

(assert (=> bm!50539 (= call!50537 (+!3476 (ite c!111557 lt!506784 lt!506783) (ite c!111557 (tuple2!18241 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!111558 (tuple2!18241 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18241 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1138957 () Bool)

(assert (=> b!1138957 (= e!648089 e!648076)))

(declare-fun c!111554 () Bool)

(assert (=> b!1138957 (= c!111554 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!506774))))

(declare-fun bm!50540 () Bool)

(assert (=> bm!50540 (= call!50544 call!50542)))

(declare-fun b!1138958 () Bool)

(declare-fun res!759757 () Bool)

(assert (=> b!1138958 (=> (not res!759757) (not e!648075))))

(assert (=> b!1138958 (= res!759757 (= (select (arr!35669 _keys!1208) i!673) k!934))))

(declare-fun b!1138959 () Bool)

(assert (=> b!1138959 (= e!648090 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!36206 _keys!1208))))))

(declare-fun lt!506775 () Unit!37270)

(assert (=> b!1138959 (= lt!506775 e!648083)))

(declare-fun c!111553 () Bool)

(assert (=> b!1138959 (= c!111553 (contains!6636 lt!506783 k!934))))

(assert (=> b!1138959 (= lt!506783 (getCurrentListMapNoExtraKeys!4573 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138960 () Bool)

(assert (=> b!1138960 (= e!648085 (not e!648087))))

(declare-fun res!759759 () Bool)

(assert (=> b!1138960 (=> res!759759 e!648087)))

(assert (=> b!1138960 (= res!759759 (bvsgt from!1455 i!673))))

(assert (=> b!1138960 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!506790 () Unit!37270)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74044 (_ BitVec 64) (_ BitVec 32)) Unit!37270)

(assert (=> b!1138960 (= lt!506790 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!50541 () Bool)

(assert (=> bm!50541 (= call!50538 (getCurrentListMapNoExtraKeys!4573 lt!506785 lt!506776 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138961 () Bool)

(assert (=> b!1138961 (= e!648084 (= call!50538 call!50543))))

(declare-fun b!1138962 () Bool)

(declare-fun e!648077 () Bool)

(declare-fun tp_is_empty!28613 () Bool)

(assert (=> b!1138962 (= e!648077 tp_is_empty!28613)))

(declare-fun mapNonEmpty!44744 () Bool)

(declare-fun tp!84960 () Bool)

(assert (=> mapNonEmpty!44744 (= mapRes!44744 (and tp!84960 e!648077))))

(declare-fun mapRest!44744 () (Array (_ BitVec 32) ValueCell!13597))

(declare-fun mapValue!44744 () ValueCell!13597)

(declare-fun mapKey!44744 () (_ BitVec 32))

(assert (=> mapNonEmpty!44744 (= (arr!35670 _values!996) (store mapRest!44744 mapKey!44744 mapValue!44744))))

(declare-fun b!1138963 () Bool)

(declare-fun e!648082 () Bool)

(declare-fun e!648078 () Bool)

(assert (=> b!1138963 (= e!648082 (and e!648078 mapRes!44744))))

(declare-fun condMapEmpty!44744 () Bool)

(declare-fun mapDefault!44744 () ValueCell!13597)

