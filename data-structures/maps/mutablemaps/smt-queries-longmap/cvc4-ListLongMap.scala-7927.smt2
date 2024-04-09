; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98442 () Bool)

(assert start!98442)

(declare-fun b_free!24011 () Bool)

(declare-fun b_next!24011 () Bool)

(assert (=> start!98442 (= b_free!24011 (not b_next!24011))))

(declare-fun tp!84745 () Bool)

(declare-fun b_and!38885 () Bool)

(assert (=> start!98442 (= tp!84745 b_and!38885)))

(declare-fun b!1135678 () Bool)

(declare-fun e!646331 () Bool)

(declare-fun e!646319 () Bool)

(assert (=> b!1135678 (= e!646331 (not e!646319))))

(declare-fun res!758132 () Bool)

(assert (=> b!1135678 (=> res!758132 e!646319)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1135678 (= res!758132 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73904 0))(
  ( (array!73905 (arr!35599 (Array (_ BitVec 32) (_ BitVec 64))) (size!36136 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73904)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73904 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1135678 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37144 0))(
  ( (Unit!37145) )
))
(declare-fun lt!504872 () Unit!37144)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73904 (_ BitVec 64) (_ BitVec 32)) Unit!37144)

(assert (=> b!1135678 (= lt!504872 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1135679 () Bool)

(declare-fun res!758133 () Bool)

(declare-fun e!646334 () Bool)

(assert (=> b!1135679 (=> (not res!758133) (not e!646334))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73904 (_ BitVec 32)) Bool)

(assert (=> b!1135679 (= res!758133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1135680 () Bool)

(declare-fun e!646325 () Bool)

(declare-fun e!646321 () Bool)

(assert (=> b!1135680 (= e!646325 e!646321)))

(declare-fun res!758139 () Bool)

(assert (=> b!1135680 (=> res!758139 e!646321)))

(assert (=> b!1135680 (= res!758139 (or (bvsge (size!36136 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36136 _keys!1208)) (bvsge from!1455 (size!36136 _keys!1208))))))

(declare-datatypes ((List!24986 0))(
  ( (Nil!24983) (Cons!24982 (h!26191 (_ BitVec 64)) (t!35996 List!24986)) )
))
(declare-fun arrayNoDuplicates!0 (array!73904 (_ BitVec 32) List!24986) Bool)

(assert (=> b!1135680 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!24983)))

(declare-fun lt!504869 () Unit!37144)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73904 (_ BitVec 32) (_ BitVec 32)) Unit!37144)

(assert (=> b!1135680 (= lt!504869 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!646329 () Bool)

(assert (=> b!1135680 e!646329))

(declare-fun res!758130 () Bool)

(assert (=> b!1135680 (=> (not res!758130) (not e!646329))))

(declare-fun e!646324 () Bool)

(assert (=> b!1135680 (= res!758130 e!646324)))

(declare-fun c!110935 () Bool)

(assert (=> b!1135680 (= c!110935 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((V!43181 0))(
  ( (V!43182 (val!14327 Int)) )
))
(declare-fun zeroValue!944 () V!43181)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!504870 () Unit!37144)

(declare-datatypes ((ValueCell!13561 0))(
  ( (ValueCellFull!13561 (v!16965 V!43181)) (EmptyCell!13561) )
))
(declare-datatypes ((array!73906 0))(
  ( (array!73907 (arr!35600 (Array (_ BitVec 32) ValueCell!13561)) (size!36137 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73906)

(declare-fun minValue!944 () V!43181)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!356 (array!73904 array!73906 (_ BitVec 32) (_ BitVec 32) V!43181 V!43181 (_ BitVec 64) (_ BitVec 32) Int) Unit!37144)

(assert (=> b!1135680 (= lt!504870 (lemmaListMapContainsThenArrayContainsFrom!356 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!504873 () Unit!37144)

(declare-fun e!646333 () Unit!37144)

(assert (=> b!1135680 (= lt!504873 e!646333)))

(declare-fun c!110934 () Bool)

(declare-fun lt!504857 () Bool)

(assert (=> b!1135680 (= c!110934 (and (not lt!504857) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1135680 (= lt!504857 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1135681 () Bool)

(declare-fun res!758128 () Bool)

(assert (=> b!1135681 (=> res!758128 e!646321)))

(declare-fun noDuplicate!1617 (List!24986) Bool)

(assert (=> b!1135681 (= res!758128 (not (noDuplicate!1617 Nil!24983)))))

(declare-fun b!1135682 () Bool)

(declare-fun res!758129 () Bool)

(assert (=> b!1135682 (=> (not res!758129) (not e!646334))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1135682 (= res!758129 (validMask!0 mask!1564))))

(declare-fun b!1135683 () Bool)

(declare-fun res!758131 () Bool)

(assert (=> b!1135683 (=> (not res!758131) (not e!646334))))

(assert (=> b!1135683 (= res!758131 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24983))))

(declare-fun b!1135684 () Bool)

(assert (=> b!1135684 (= e!646321 true)))

(declare-fun lt!504858 () Bool)

(declare-fun contains!6597 (List!24986 (_ BitVec 64)) Bool)

(assert (=> b!1135684 (= lt!504858 (contains!6597 Nil!24983 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!49670 () Bool)

(declare-fun lt!504862 () array!73906)

(declare-datatypes ((tuple2!18176 0))(
  ( (tuple2!18177 (_1!9098 (_ BitVec 64)) (_2!9098 V!43181)) )
))
(declare-datatypes ((List!24987 0))(
  ( (Nil!24984) (Cons!24983 (h!26192 tuple2!18176) (t!35997 List!24987)) )
))
(declare-datatypes ((ListLongMap!16157 0))(
  ( (ListLongMap!16158 (toList!8094 List!24987)) )
))
(declare-fun call!49674 () ListLongMap!16157)

(declare-fun lt!504865 () array!73904)

(declare-fun getCurrentListMapNoExtraKeys!4542 (array!73904 array!73906 (_ BitVec 32) (_ BitVec 32) V!43181 V!43181 (_ BitVec 32) Int) ListLongMap!16157)

(assert (=> bm!49670 (= call!49674 (getCurrentListMapNoExtraKeys!4542 lt!504865 lt!504862 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!49672 () Bool)

(declare-fun c!110937 () Bool)

(declare-fun lt!504867 () ListLongMap!16157)

(declare-fun call!49680 () ListLongMap!16157)

(declare-fun +!3449 (ListLongMap!16157 tuple2!18176) ListLongMap!16157)

(assert (=> bm!49672 (= call!49680 (+!3449 lt!504867 (ite (or c!110934 c!110937) (tuple2!18177 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18177 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun call!49675 () Unit!37144)

(declare-fun bm!49673 () Bool)

(declare-fun addStillContains!749 (ListLongMap!16157 (_ BitVec 64) V!43181 (_ BitVec 64)) Unit!37144)

(assert (=> bm!49673 (= call!49675 (addStillContains!749 lt!504867 (ite (or c!110934 c!110937) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110934 c!110937) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1135685 () Bool)

(declare-fun res!758143 () Bool)

(assert (=> b!1135685 (=> res!758143 e!646321)))

(assert (=> b!1135685 (= res!758143 (contains!6597 Nil!24983 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1135686 () Bool)

(declare-fun e!646320 () Unit!37144)

(declare-fun Unit!37146 () Unit!37144)

(assert (=> b!1135686 (= e!646320 Unit!37146)))

(declare-fun b!1135687 () Bool)

(declare-fun res!758138 () Bool)

(assert (=> b!1135687 (=> (not res!758138) (not e!646334))))

(assert (=> b!1135687 (= res!758138 (and (= (size!36137 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36136 _keys!1208) (size!36137 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1135688 () Bool)

(assert (=> b!1135688 (= e!646324 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!504857) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1135689 () Bool)

(declare-fun e!646327 () Bool)

(declare-fun tp_is_empty!28541 () Bool)

(assert (=> b!1135689 (= e!646327 tp_is_empty!28541)))

(declare-fun b!1135690 () Bool)

(declare-fun lt!504861 () Unit!37144)

(assert (=> b!1135690 (= e!646333 lt!504861)))

(declare-fun lt!504871 () Unit!37144)

(assert (=> b!1135690 (= lt!504871 call!49675)))

(declare-fun lt!504866 () ListLongMap!16157)

(assert (=> b!1135690 (= lt!504866 call!49680)))

(declare-fun call!49676 () Bool)

(assert (=> b!1135690 call!49676))

(assert (=> b!1135690 (= lt!504861 (addStillContains!749 lt!504866 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun contains!6598 (ListLongMap!16157 (_ BitVec 64)) Bool)

(assert (=> b!1135690 (contains!6598 (+!3449 lt!504866 (tuple2!18177 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun b!1135691 () Bool)

(assert (=> b!1135691 (= e!646324 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1135692 () Bool)

(declare-fun call!49679 () Bool)

(assert (=> b!1135692 call!49679))

(declare-fun lt!504859 () Unit!37144)

(declare-fun call!49678 () Unit!37144)

(assert (=> b!1135692 (= lt!504859 call!49678)))

(declare-fun e!646326 () Unit!37144)

(assert (=> b!1135692 (= e!646326 lt!504859)))

(declare-fun bm!49674 () Bool)

(assert (=> bm!49674 (= call!49679 call!49676)))

(declare-fun b!1135693 () Bool)

(declare-fun lt!504864 () Unit!37144)

(assert (=> b!1135693 (= e!646320 lt!504864)))

(assert (=> b!1135693 (= lt!504864 call!49678)))

(assert (=> b!1135693 call!49679))

(declare-fun b!1135694 () Bool)

(assert (=> b!1135694 (= e!646329 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1135695 () Bool)

(declare-fun res!758136 () Bool)

(assert (=> b!1135695 (=> (not res!758136) (not e!646331))))

(assert (=> b!1135695 (= res!758136 (arrayNoDuplicates!0 lt!504865 #b00000000000000000000000000000000 Nil!24983))))

(declare-fun b!1135696 () Bool)

(declare-fun e!646332 () Bool)

(declare-fun call!49677 () ListLongMap!16157)

(assert (=> b!1135696 (= e!646332 (= call!49674 call!49677))))

(declare-fun mapNonEmpty!44636 () Bool)

(declare-fun mapRes!44636 () Bool)

(declare-fun tp!84744 () Bool)

(declare-fun e!646330 () Bool)

(assert (=> mapNonEmpty!44636 (= mapRes!44636 (and tp!84744 e!646330))))

(declare-fun mapRest!44636 () (Array (_ BitVec 32) ValueCell!13561))

(declare-fun mapValue!44636 () ValueCell!13561)

(declare-fun mapKey!44636 () (_ BitVec 32))

(assert (=> mapNonEmpty!44636 (= (arr!35600 _values!996) (store mapRest!44636 mapKey!44636 mapValue!44636))))

(declare-fun b!1135697 () Bool)

(assert (=> b!1135697 (= e!646334 e!646331)))

(declare-fun res!758135 () Bool)

(assert (=> b!1135697 (=> (not res!758135) (not e!646331))))

(assert (=> b!1135697 (= res!758135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!504865 mask!1564))))

(assert (=> b!1135697 (= lt!504865 (array!73905 (store (arr!35599 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36136 _keys!1208)))))

(declare-fun bm!49675 () Bool)

(assert (=> bm!49675 (= call!49677 (getCurrentListMapNoExtraKeys!4542 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135698 () Bool)

(declare-fun res!758137 () Bool)

(assert (=> b!1135698 (=> (not res!758137) (not e!646334))))

(assert (=> b!1135698 (= res!758137 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36136 _keys!1208))))))

(declare-fun b!1135699 () Bool)

(declare-fun e!646328 () Bool)

(assert (=> b!1135699 (= e!646319 e!646328)))

(declare-fun res!758141 () Bool)

(assert (=> b!1135699 (=> res!758141 e!646328)))

(assert (=> b!1135699 (= res!758141 (not (= from!1455 i!673)))))

(declare-fun lt!504863 () ListLongMap!16157)

(assert (=> b!1135699 (= lt!504863 (getCurrentListMapNoExtraKeys!4542 lt!504865 lt!504862 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2607 (Int (_ BitVec 64)) V!43181)

(assert (=> b!1135699 (= lt!504862 (array!73907 (store (arr!35600 _values!996) i!673 (ValueCellFull!13561 (dynLambda!2607 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36137 _values!996)))))

(declare-fun lt!504868 () ListLongMap!16157)

(assert (=> b!1135699 (= lt!504868 (getCurrentListMapNoExtraKeys!4542 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1135700 () Bool)

(declare-fun res!758127 () Bool)

(assert (=> b!1135700 (=> (not res!758127) (not e!646334))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1135700 (= res!758127 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!44636 () Bool)

(assert (=> mapIsEmpty!44636 mapRes!44636))

(declare-fun bm!49671 () Bool)

(declare-fun call!49673 () ListLongMap!16157)

(assert (=> bm!49671 (= call!49673 call!49680)))

(declare-fun res!758134 () Bool)

(assert (=> start!98442 (=> (not res!758134) (not e!646334))))

(assert (=> start!98442 (= res!758134 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36136 _keys!1208))))))

(assert (=> start!98442 e!646334))

(assert (=> start!98442 tp_is_empty!28541))

(declare-fun array_inv!27168 (array!73904) Bool)

(assert (=> start!98442 (array_inv!27168 _keys!1208)))

(assert (=> start!98442 true))

(assert (=> start!98442 tp!84745))

(declare-fun e!646323 () Bool)

(declare-fun array_inv!27169 (array!73906) Bool)

(assert (=> start!98442 (and (array_inv!27169 _values!996) e!646323)))

(declare-fun b!1135701 () Bool)

(declare-fun e!646335 () Bool)

(assert (=> b!1135701 (= e!646328 e!646335)))

(declare-fun res!758144 () Bool)

(assert (=> b!1135701 (=> res!758144 e!646335)))

(assert (=> b!1135701 (= res!758144 (not (= (select (arr!35599 _keys!1208) from!1455) k!934)))))

(assert (=> b!1135701 e!646332))

(declare-fun c!110933 () Bool)

(assert (=> b!1135701 (= c!110933 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!504860 () Unit!37144)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!462 (array!73904 array!73906 (_ BitVec 32) (_ BitVec 32) V!43181 V!43181 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37144)

(assert (=> b!1135701 (= lt!504860 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!462 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135702 () Bool)

(declare-fun res!758142 () Bool)

(assert (=> b!1135702 (=> (not res!758142) (not e!646334))))

(assert (=> b!1135702 (= res!758142 (= (select (arr!35599 _keys!1208) i!673) k!934))))

(declare-fun b!1135703 () Bool)

(declare-fun c!110936 () Bool)

(assert (=> b!1135703 (= c!110936 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!504857))))

(assert (=> b!1135703 (= e!646326 e!646320)))

(declare-fun bm!49676 () Bool)

(assert (=> bm!49676 (= call!49678 call!49675)))

(declare-fun bm!49677 () Bool)

(assert (=> bm!49677 (= call!49676 (contains!6598 (ite c!110934 lt!504866 call!49673) k!934))))

(declare-fun b!1135704 () Bool)

(assert (=> b!1135704 (= e!646323 (and e!646327 mapRes!44636))))

(declare-fun condMapEmpty!44636 () Bool)

(declare-fun mapDefault!44636 () ValueCell!13561)

