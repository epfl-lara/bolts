; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98396 () Bool)

(assert start!98396)

(declare-fun b_free!23965 () Bool)

(declare-fun b_next!23965 () Bool)

(assert (=> start!98396 (= b_free!23965 (not b_next!23965))))

(declare-fun tp!84606 () Bool)

(declare-fun b_and!38793 () Bool)

(assert (=> start!98396 (= tp!84606 b_and!38793)))

(declare-fun b!1133541 () Bool)

(declare-fun e!645177 () Bool)

(assert (=> b!1133541 (= e!645177 true)))

(declare-fun e!645174 () Bool)

(assert (=> b!1133541 e!645174))

(declare-fun res!756947 () Bool)

(assert (=> b!1133541 (=> (not res!756947) (not e!645174))))

(declare-fun e!645164 () Bool)

(assert (=> b!1133541 (= res!756947 e!645164)))

(declare-fun c!110590 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1133541 (= c!110590 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((V!43121 0))(
  ( (V!43122 (val!14304 Int)) )
))
(declare-fun zeroValue!944 () V!43121)

(declare-datatypes ((array!73812 0))(
  ( (array!73813 (arr!35553 (Array (_ BitVec 32) (_ BitVec 64))) (size!36090 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73812)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((Unit!37085 0))(
  ( (Unit!37086) )
))
(declare-fun lt!503730 () Unit!37085)

(declare-datatypes ((ValueCell!13538 0))(
  ( (ValueCellFull!13538 (v!16942 V!43121)) (EmptyCell!13538) )
))
(declare-datatypes ((array!73814 0))(
  ( (array!73815 (arr!35554 (Array (_ BitVec 32) ValueCell!13538)) (size!36091 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73814)

(declare-fun minValue!944 () V!43121)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!339 (array!73812 array!73814 (_ BitVec 32) (_ BitVec 32) V!43121 V!43121 (_ BitVec 64) (_ BitVec 32) Int) Unit!37085)

(assert (=> b!1133541 (= lt!503730 (lemmaListMapContainsThenArrayContainsFrom!339 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!503719 () Unit!37085)

(declare-fun e!645170 () Unit!37085)

(assert (=> b!1133541 (= lt!503719 e!645170)))

(declare-fun c!110588 () Bool)

(declare-fun lt!503722 () Bool)

(assert (=> b!1133541 (= c!110588 (and (not lt!503722) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1133541 (= lt!503722 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((tuple2!18130 0))(
  ( (tuple2!18131 (_1!9075 (_ BitVec 64)) (_2!9075 V!43121)) )
))
(declare-datatypes ((List!24942 0))(
  ( (Nil!24939) (Cons!24938 (h!26147 tuple2!18130) (t!35906 List!24942)) )
))
(declare-datatypes ((ListLongMap!16111 0))(
  ( (ListLongMap!16112 (toList!8071 List!24942)) )
))
(declare-fun call!49123 () ListLongMap!16111)

(declare-fun call!49122 () ListLongMap!16111)

(declare-fun b!1133542 () Bool)

(declare-fun e!645173 () Bool)

(declare-fun -!1189 (ListLongMap!16111 (_ BitVec 64)) ListLongMap!16111)

(assert (=> b!1133542 (= e!645173 (= call!49123 (-!1189 call!49122 k!934)))))

(declare-fun b!1133543 () Bool)

(declare-fun arrayContainsKey!0 (array!73812 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1133543 (= e!645164 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1133544 () Bool)

(declare-fun call!49121 () Bool)

(assert (=> b!1133544 call!49121))

(declare-fun lt!503729 () Unit!37085)

(declare-fun call!49125 () Unit!37085)

(assert (=> b!1133544 (= lt!503729 call!49125)))

(declare-fun e!645166 () Unit!37085)

(assert (=> b!1133544 (= e!645166 lt!503729)))

(declare-fun b!1133545 () Bool)

(declare-fun e!645169 () Bool)

(declare-fun e!645172 () Bool)

(assert (=> b!1133545 (= e!645169 (not e!645172))))

(declare-fun res!756937 () Bool)

(assert (=> b!1133545 (=> res!756937 e!645172)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1133545 (= res!756937 (bvsgt from!1455 i!673))))

(assert (=> b!1133545 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!503720 () Unit!37085)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73812 (_ BitVec 64) (_ BitVec 32)) Unit!37085)

(assert (=> b!1133545 (= lt!503720 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1133546 () Bool)

(declare-fun lt!503726 () Unit!37085)

(assert (=> b!1133546 (= e!645170 lt!503726)))

(declare-fun lt!503723 () ListLongMap!16111)

(declare-fun lt!503728 () Unit!37085)

(declare-fun addStillContains!730 (ListLongMap!16111 (_ BitVec 64) V!43121 (_ BitVec 64)) Unit!37085)

(assert (=> b!1133546 (= lt!503728 (addStillContains!730 lt!503723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun lt!503724 () ListLongMap!16111)

(declare-fun +!3431 (ListLongMap!16111 tuple2!18130) ListLongMap!16111)

(assert (=> b!1133546 (= lt!503724 (+!3431 lt!503723 (tuple2!18131 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun call!49124 () Bool)

(assert (=> b!1133546 call!49124))

(declare-fun call!49127 () Unit!37085)

(assert (=> b!1133546 (= lt!503726 call!49127)))

(declare-fun call!49128 () ListLongMap!16111)

(declare-fun contains!6562 (ListLongMap!16111 (_ BitVec 64)) Bool)

(assert (=> b!1133546 (contains!6562 call!49128 k!934)))

(declare-fun b!1133547 () Bool)

(assert (=> b!1133547 (= e!645164 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!503722) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1133548 () Bool)

(declare-fun e!645171 () Unit!37085)

(declare-fun Unit!37087 () Unit!37085)

(assert (=> b!1133548 (= e!645171 Unit!37087)))

(declare-fun b!1133549 () Bool)

(declare-fun e!645175 () Bool)

(declare-fun tp_is_empty!28495 () Bool)

(assert (=> b!1133549 (= e!645175 tp_is_empty!28495)))

(declare-fun b!1133550 () Bool)

(declare-fun res!756935 () Bool)

(declare-fun e!645165 () Bool)

(assert (=> b!1133550 (=> (not res!756935) (not e!645165))))

(assert (=> b!1133550 (= res!756935 (= (select (arr!35553 _keys!1208) i!673) k!934))))

(declare-fun bm!49119 () Bool)

(assert (=> bm!49119 (= call!49125 call!49127)))

(declare-fun bm!49120 () Bool)

(declare-fun call!49126 () ListLongMap!16111)

(assert (=> bm!49120 (= call!49124 (contains!6562 (ite c!110588 lt!503724 call!49126) k!934))))

(declare-fun b!1133551 () Bool)

(declare-fun e!645163 () Bool)

(declare-fun e!645167 () Bool)

(assert (=> b!1133551 (= e!645163 e!645167)))

(declare-fun res!756939 () Bool)

(assert (=> b!1133551 (=> res!756939 e!645167)))

(assert (=> b!1133551 (= res!756939 (not (= (select (arr!35553 _keys!1208) from!1455) k!934)))))

(assert (=> b!1133551 e!645173))

(declare-fun c!110589 () Bool)

(assert (=> b!1133551 (= c!110589 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!503727 () Unit!37085)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!446 (array!73812 array!73814 (_ BitVec 32) (_ BitVec 32) V!43121 V!43121 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37085)

(assert (=> b!1133551 (= lt!503727 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!446 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133552 () Bool)

(declare-fun res!756941 () Bool)

(assert (=> b!1133552 (=> (not res!756941) (not e!645165))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1133552 (= res!756941 (validMask!0 mask!1564))))

(declare-fun b!1133553 () Bool)

(declare-fun res!756938 () Bool)

(assert (=> b!1133553 (=> (not res!756938) (not e!645169))))

(declare-fun lt!503718 () array!73812)

(declare-datatypes ((List!24943 0))(
  ( (Nil!24940) (Cons!24939 (h!26148 (_ BitVec 64)) (t!35907 List!24943)) )
))
(declare-fun arrayNoDuplicates!0 (array!73812 (_ BitVec 32) List!24943) Bool)

(assert (=> b!1133553 (= res!756938 (arrayNoDuplicates!0 lt!503718 #b00000000000000000000000000000000 Nil!24940))))

(declare-fun b!1133554 () Bool)

(declare-fun res!756946 () Bool)

(assert (=> b!1133554 (=> (not res!756946) (not e!645165))))

(assert (=> b!1133554 (= res!756946 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36090 _keys!1208))))))

(declare-fun b!1133555 () Bool)

(declare-fun e!645176 () Bool)

(declare-fun e!645168 () Bool)

(declare-fun mapRes!44567 () Bool)

(assert (=> b!1133555 (= e!645176 (and e!645168 mapRes!44567))))

(declare-fun condMapEmpty!44567 () Bool)

(declare-fun mapDefault!44567 () ValueCell!13538)

