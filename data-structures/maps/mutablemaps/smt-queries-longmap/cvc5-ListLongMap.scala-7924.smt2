; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98420 () Bool)

(assert start!98420)

(declare-fun b_free!23989 () Bool)

(declare-fun b_next!23989 () Bool)

(assert (=> start!98420 (= b_free!23989 (not b_next!23989))))

(declare-fun tp!84678 () Bool)

(declare-fun b_and!38841 () Bool)

(assert (=> start!98420 (= tp!84678 b_and!38841)))

(declare-fun b!1134633 () Bool)

(declare-datatypes ((Unit!37117 0))(
  ( (Unit!37118) )
))
(declare-fun e!645773 () Unit!37117)

(declare-fun lt!504307 () Unit!37117)

(assert (=> b!1134633 (= e!645773 lt!504307)))

(declare-datatypes ((V!43153 0))(
  ( (V!43154 (val!14316 Int)) )
))
(declare-fun zeroValue!944 () V!43153)

(declare-datatypes ((tuple2!18154 0))(
  ( (tuple2!18155 (_1!9087 (_ BitVec 64)) (_2!9087 V!43153)) )
))
(declare-datatypes ((List!24966 0))(
  ( (Nil!24963) (Cons!24962 (h!26171 tuple2!18154) (t!35954 List!24966)) )
))
(declare-datatypes ((ListLongMap!16135 0))(
  ( (ListLongMap!16136 (toList!8083 List!24966)) )
))
(declare-fun lt!504309 () ListLongMap!16135)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!504311 () Unit!37117)

(declare-fun addStillContains!740 (ListLongMap!16135 (_ BitVec 64) V!43153 (_ BitVec 64)) Unit!37117)

(assert (=> b!1134633 (= lt!504311 (addStillContains!740 lt!504309 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun lt!504308 () ListLongMap!16135)

(declare-fun +!3441 (ListLongMap!16135 tuple2!18154) ListLongMap!16135)

(assert (=> b!1134633 (= lt!504308 (+!3441 lt!504309 (tuple2!18155 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun call!49414 () Bool)

(assert (=> b!1134633 call!49414))

(declare-fun call!49413 () Unit!37117)

(assert (=> b!1134633 (= lt!504307 call!49413)))

(declare-fun call!49412 () ListLongMap!16135)

(declare-fun contains!6579 (ListLongMap!16135 (_ BitVec 64)) Bool)

(assert (=> b!1134633 (contains!6579 call!49412 k!934)))

(declare-fun b!1134634 () Bool)

(declare-fun e!645768 () Bool)

(declare-fun tp_is_empty!28519 () Bool)

(assert (=> b!1134634 (= e!645768 tp_is_empty!28519)))

(declare-fun b!1134635 () Bool)

(declare-fun res!757534 () Bool)

(declare-fun e!645758 () Bool)

(assert (=> b!1134635 (=> (not res!757534) (not e!645758))))

(declare-datatypes ((array!73860 0))(
  ( (array!73861 (arr!35577 (Array (_ BitVec 32) (_ BitVec 64))) (size!36114 (_ BitVec 32))) )
))
(declare-fun lt!504310 () array!73860)

(declare-datatypes ((List!24967 0))(
  ( (Nil!24964) (Cons!24963 (h!26172 (_ BitVec 64)) (t!35955 List!24967)) )
))
(declare-fun arrayNoDuplicates!0 (array!73860 (_ BitVec 32) List!24967) Bool)

(assert (=> b!1134635 (= res!757534 (arrayNoDuplicates!0 lt!504310 #b00000000000000000000000000000000 Nil!24964))))

(declare-fun b!1134636 () Bool)

(declare-fun e!645770 () Bool)

(assert (=> b!1134636 (= e!645758 (not e!645770))))

(declare-fun res!757540 () Bool)

(assert (=> b!1134636 (=> res!757540 e!645770)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1134636 (= res!757540 (bvsgt from!1455 i!673))))

(declare-fun _keys!1208 () array!73860)

(declare-fun arrayContainsKey!0 (array!73860 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1134636 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!504300 () Unit!37117)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73860 (_ BitVec 64) (_ BitVec 32)) Unit!37117)

(assert (=> b!1134636 (= lt!504300 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!49406 () Bool)

(declare-fun call!49409 () Bool)

(assert (=> bm!49406 (= call!49409 call!49414)))

(declare-fun b!1134637 () Bool)

(declare-fun res!757545 () Bool)

(declare-fun e!645760 () Bool)

(assert (=> b!1134637 (=> res!757545 e!645760)))

(declare-fun contains!6580 (List!24967 (_ BitVec 64)) Bool)

(assert (=> b!1134637 (= res!757545 (contains!6580 Nil!24964 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!110770 () Bool)

(declare-fun bm!49407 () Bool)

(declare-fun c!110772 () Bool)

(declare-fun minValue!944 () V!43153)

(assert (=> bm!49407 (= call!49412 (+!3441 (ite c!110772 lt!504308 lt!504309) (ite c!110772 (tuple2!18155 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110770 (tuple2!18155 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18155 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1134638 () Bool)

(declare-fun res!757539 () Bool)

(declare-fun e!645772 () Bool)

(assert (=> b!1134638 (=> (not res!757539) (not e!645772))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1134638 (= res!757539 (validKeyInArray!0 k!934))))

(declare-fun b!1134639 () Bool)

(declare-fun e!645763 () Bool)

(assert (=> b!1134639 (= e!645763 tp_is_empty!28519)))

(declare-fun mapIsEmpty!44603 () Bool)

(declare-fun mapRes!44603 () Bool)

(assert (=> mapIsEmpty!44603 mapRes!44603))

(declare-fun bm!49408 () Bool)

(assert (=> bm!49408 (= call!49413 (addStillContains!740 (ite c!110772 lt!504308 lt!504309) (ite c!110772 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!110770 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!110772 minValue!944 (ite c!110770 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1134640 () Bool)

(declare-fun e!645766 () Bool)

(assert (=> b!1134640 (= e!645770 e!645766)))

(declare-fun res!757550 () Bool)

(assert (=> b!1134640 (=> res!757550 e!645766)))

(assert (=> b!1134640 (= res!757550 (not (= from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13550 0))(
  ( (ValueCellFull!13550 (v!16954 V!43153)) (EmptyCell!13550) )
))
(declare-datatypes ((array!73862 0))(
  ( (array!73863 (arr!35578 (Array (_ BitVec 32) ValueCell!13550)) (size!36115 (_ BitVec 32))) )
))
(declare-fun lt!504312 () array!73862)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!504303 () ListLongMap!16135)

(declare-fun getCurrentListMapNoExtraKeys!4532 (array!73860 array!73862 (_ BitVec 32) (_ BitVec 32) V!43153 V!43153 (_ BitVec 32) Int) ListLongMap!16135)

(assert (=> b!1134640 (= lt!504303 (getCurrentListMapNoExtraKeys!4532 lt!504310 lt!504312 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73862)

(declare-fun dynLambda!2600 (Int (_ BitVec 64)) V!43153)

(assert (=> b!1134640 (= lt!504312 (array!73863 (store (arr!35578 _values!996) i!673 (ValueCellFull!13550 (dynLambda!2600 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36115 _values!996)))))

(declare-fun lt!504305 () ListLongMap!16135)

(assert (=> b!1134640 (= lt!504305 (getCurrentListMapNoExtraKeys!4532 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!757547 () Bool)

(assert (=> start!98420 (=> (not res!757547) (not e!645772))))

(assert (=> start!98420 (= res!757547 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36114 _keys!1208))))))

(assert (=> start!98420 e!645772))

(assert (=> start!98420 tp_is_empty!28519))

(declare-fun array_inv!27152 (array!73860) Bool)

(assert (=> start!98420 (array_inv!27152 _keys!1208)))

(assert (=> start!98420 true))

(assert (=> start!98420 tp!84678))

(declare-fun e!645759 () Bool)

(declare-fun array_inv!27153 (array!73862) Bool)

(assert (=> start!98420 (and (array_inv!27153 _values!996) e!645759)))

(declare-fun b!1134641 () Bool)

(declare-fun res!757549 () Bool)

(assert (=> b!1134641 (=> (not res!757549) (not e!645772))))

(assert (=> b!1134641 (= res!757549 (= (select (arr!35577 _keys!1208) i!673) k!934))))

(declare-fun lt!504299 () Bool)

(declare-fun b!1134642 () Bool)

(declare-fun e!645769 () Bool)

(assert (=> b!1134642 (= e!645769 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!504299) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1134643 () Bool)

(assert (=> b!1134643 call!49409))

(declare-fun lt!504302 () Unit!37117)

(declare-fun call!49415 () Unit!37117)

(assert (=> b!1134643 (= lt!504302 call!49415)))

(declare-fun e!645771 () Unit!37117)

(assert (=> b!1134643 (= e!645771 lt!504302)))

(declare-fun bm!49409 () Bool)

(assert (=> bm!49409 (= call!49415 call!49413)))

(declare-fun bm!49410 () Bool)

(declare-fun call!49410 () ListLongMap!16135)

(assert (=> bm!49410 (= call!49410 (getCurrentListMapNoExtraKeys!4532 lt!504310 lt!504312 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1134644 () Bool)

(declare-fun res!757538 () Bool)

(assert (=> b!1134644 (=> (not res!757538) (not e!645772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1134644 (= res!757538 (validMask!0 mask!1564))))

(declare-fun b!1134645 () Bool)

(assert (=> b!1134645 (= e!645759 (and e!645768 mapRes!44603))))

(declare-fun condMapEmpty!44603 () Bool)

(declare-fun mapDefault!44603 () ValueCell!13550)

