; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98448 () Bool)

(assert start!98448)

(declare-fun b_free!24017 () Bool)

(declare-fun b_next!24017 () Bool)

(assert (=> start!98448 (= b_free!24017 (not b_next!24017))))

(declare-fun tp!84763 () Bool)

(declare-fun b_and!38897 () Bool)

(assert (=> start!98448 (= tp!84763 b_and!38897)))

(declare-fun b!1135963 () Bool)

(declare-fun res!758299 () Bool)

(declare-fun e!646476 () Bool)

(assert (=> b!1135963 (=> res!758299 e!646476)))

(declare-datatypes ((List!24992 0))(
  ( (Nil!24989) (Cons!24988 (h!26197 (_ BitVec 64)) (t!36008 List!24992)) )
))
(declare-fun contains!6603 (List!24992 (_ BitVec 64)) Bool)

(assert (=> b!1135963 (= res!758299 (contains!6603 Nil!24989 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1135964 () Bool)

(declare-datatypes ((Unit!37153 0))(
  ( (Unit!37154) )
))
(declare-fun e!646486 () Unit!37153)

(declare-fun lt!505022 () Unit!37153)

(assert (=> b!1135964 (= e!646486 lt!505022)))

(declare-fun lt!505024 () Unit!37153)

(declare-fun call!49747 () Unit!37153)

(assert (=> b!1135964 (= lt!505024 call!49747)))

(declare-datatypes ((V!43189 0))(
  ( (V!43190 (val!14330 Int)) )
))
(declare-datatypes ((tuple2!18182 0))(
  ( (tuple2!18183 (_1!9101 (_ BitVec 64)) (_2!9101 V!43189)) )
))
(declare-datatypes ((List!24993 0))(
  ( (Nil!24990) (Cons!24989 (h!26198 tuple2!18182) (t!36009 List!24993)) )
))
(declare-datatypes ((ListLongMap!16163 0))(
  ( (ListLongMap!16164 (toList!8097 List!24993)) )
))
(declare-fun lt!505015 () ListLongMap!16163)

(declare-fun lt!505014 () ListLongMap!16163)

(declare-fun zeroValue!944 () V!43189)

(declare-fun +!3452 (ListLongMap!16163 tuple2!18182) ListLongMap!16163)

(assert (=> b!1135964 (= lt!505015 (+!3452 lt!505014 (tuple2!18183 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun call!49745 () Bool)

(assert (=> b!1135964 call!49745))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!43189)

(declare-fun addStillContains!752 (ListLongMap!16163 (_ BitVec 64) V!43189 (_ BitVec 64)) Unit!37153)

(assert (=> b!1135964 (= lt!505022 (addStillContains!752 lt!505015 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!49750 () ListLongMap!16163)

(declare-fun contains!6604 (ListLongMap!16163 (_ BitVec 64)) Bool)

(assert (=> b!1135964 (contains!6604 call!49750 k!934)))

(declare-fun b!1135965 () Bool)

(declare-fun call!49748 () Bool)

(assert (=> b!1135965 call!49748))

(declare-fun lt!505018 () Unit!37153)

(declare-fun call!49749 () Unit!37153)

(assert (=> b!1135965 (= lt!505018 call!49749)))

(declare-fun e!646473 () Unit!37153)

(assert (=> b!1135965 (= e!646473 lt!505018)))

(declare-fun b!1135966 () Bool)

(declare-fun res!758293 () Bool)

(declare-fun e!646483 () Bool)

(assert (=> b!1135966 (=> (not res!758293) (not e!646483))))

(declare-datatypes ((array!73916 0))(
  ( (array!73917 (arr!35605 (Array (_ BitVec 32) (_ BitVec 64))) (size!36142 (_ BitVec 32))) )
))
(declare-fun lt!505013 () array!73916)

(declare-fun arrayNoDuplicates!0 (array!73916 (_ BitVec 32) List!24992) Bool)

(assert (=> b!1135966 (= res!758293 (arrayNoDuplicates!0 lt!505013 #b00000000000000000000000000000000 Nil!24989))))

(declare-fun call!49752 () ListLongMap!16163)

(declare-fun c!110981 () Bool)

(declare-fun bm!49742 () Bool)

(assert (=> bm!49742 (= call!49745 (contains!6604 (ite c!110981 lt!505015 call!49752) k!934))))

(declare-fun bm!49743 () Bool)

(assert (=> bm!49743 (= call!49752 call!49750)))

(declare-fun b!1135967 () Bool)

(declare-fun e!646474 () Unit!37153)

(declare-fun Unit!37155 () Unit!37153)

(assert (=> b!1135967 (= e!646474 Unit!37155)))

(declare-fun b!1135968 () Bool)

(declare-fun lt!505021 () Unit!37153)

(assert (=> b!1135968 (= e!646474 lt!505021)))

(assert (=> b!1135968 (= lt!505021 call!49749)))

(assert (=> b!1135968 call!49748))

(declare-fun bm!49744 () Bool)

(declare-fun c!110980 () Bool)

(assert (=> bm!49744 (= call!49750 (+!3452 (ite c!110981 lt!505015 lt!505014) (ite c!110981 (tuple2!18183 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110980 (tuple2!18183 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18183 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun lt!505026 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun e!646485 () Bool)

(declare-fun b!1135969 () Bool)

(assert (=> b!1135969 (= e!646485 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!505026) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1135970 () Bool)

(declare-fun e!646481 () Bool)

(declare-fun call!49751 () ListLongMap!16163)

(declare-fun call!49746 () ListLongMap!16163)

(assert (=> b!1135970 (= e!646481 (= call!49751 call!49746))))

(declare-fun b!1135971 () Bool)

(declare-fun e!646479 () Bool)

(declare-fun tp_is_empty!28547 () Bool)

(assert (=> b!1135971 (= e!646479 tp_is_empty!28547)))

(declare-fun b!1135972 () Bool)

(declare-fun res!758295 () Bool)

(declare-fun e!646487 () Bool)

(assert (=> b!1135972 (=> (not res!758295) (not e!646487))))

(declare-fun _keys!1208 () array!73916)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13564 0))(
  ( (ValueCellFull!13564 (v!16968 V!43189)) (EmptyCell!13564) )
))
(declare-datatypes ((array!73918 0))(
  ( (array!73919 (arr!35606 (Array (_ BitVec 32) ValueCell!13564)) (size!36143 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73918)

(assert (=> b!1135972 (= res!758295 (and (= (size!36143 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36142 _keys!1208) (size!36143 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!758290 () Bool)

(assert (=> start!98448 (=> (not res!758290) (not e!646487))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!98448 (= res!758290 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36142 _keys!1208))))))

(assert (=> start!98448 e!646487))

(assert (=> start!98448 tp_is_empty!28547))

(declare-fun array_inv!27174 (array!73916) Bool)

(assert (=> start!98448 (array_inv!27174 _keys!1208)))

(assert (=> start!98448 true))

(assert (=> start!98448 tp!84763))

(declare-fun e!646488 () Bool)

(declare-fun array_inv!27175 (array!73918) Bool)

(assert (=> start!98448 (and (array_inv!27175 _values!996) e!646488)))

(declare-fun b!1135973 () Bool)

(declare-fun e!646475 () Bool)

(declare-fun e!646472 () Bool)

(assert (=> b!1135973 (= e!646475 e!646472)))

(declare-fun res!758303 () Bool)

(assert (=> b!1135973 (=> res!758303 e!646472)))

(assert (=> b!1135973 (= res!758303 (not (contains!6604 lt!505014 k!934)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4545 (array!73916 array!73918 (_ BitVec 32) (_ BitVec 32) V!43189 V!43189 (_ BitVec 32) Int) ListLongMap!16163)

(assert (=> b!1135973 (= lt!505014 (getCurrentListMapNoExtraKeys!4545 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!49745 () Bool)

(assert (=> bm!49745 (= call!49749 call!49747)))

(declare-fun mapNonEmpty!44645 () Bool)

(declare-fun mapRes!44645 () Bool)

(declare-fun tp!84762 () Bool)

(declare-fun e!646477 () Bool)

(assert (=> mapNonEmpty!44645 (= mapRes!44645 (and tp!84762 e!646477))))

(declare-fun mapValue!44645 () ValueCell!13564)

(declare-fun mapKey!44645 () (_ BitVec 32))

(declare-fun mapRest!44645 () (Array (_ BitVec 32) ValueCell!13564))

(assert (=> mapNonEmpty!44645 (= (arr!35606 _values!996) (store mapRest!44645 mapKey!44645 mapValue!44645))))

(declare-fun b!1135974 () Bool)

(declare-fun res!758300 () Bool)

(assert (=> b!1135974 (=> (not res!758300) (not e!646487))))

(assert (=> b!1135974 (= res!758300 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24989))))

(declare-fun b!1135975 () Bool)

(declare-fun -!1208 (ListLongMap!16163 (_ BitVec 64)) ListLongMap!16163)

(assert (=> b!1135975 (= e!646481 (= call!49751 (-!1208 call!49746 k!934)))))

(declare-fun b!1135976 () Bool)

(declare-fun e!646480 () Bool)

(assert (=> b!1135976 (= e!646483 (not e!646480))))

(declare-fun res!758302 () Bool)

(assert (=> b!1135976 (=> res!758302 e!646480)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1135976 (= res!758302 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73916 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1135976 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!505023 () Unit!37153)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73916 (_ BitVec 64) (_ BitVec 32)) Unit!37153)

(assert (=> b!1135976 (= lt!505023 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1135977 () Bool)

(declare-fun res!758305 () Bool)

(assert (=> b!1135977 (=> (not res!758305) (not e!646487))))

(assert (=> b!1135977 (= res!758305 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36142 _keys!1208))))))

(declare-fun bm!49746 () Bool)

(assert (=> bm!49746 (= call!49748 call!49745)))

(declare-fun b!1135978 () Bool)

(assert (=> b!1135978 (= e!646477 tp_is_empty!28547)))

(declare-fun b!1135979 () Bool)

(assert (=> b!1135979 (= e!646488 (and e!646479 mapRes!44645))))

(declare-fun condMapEmpty!44645 () Bool)

(declare-fun mapDefault!44645 () ValueCell!13564)

