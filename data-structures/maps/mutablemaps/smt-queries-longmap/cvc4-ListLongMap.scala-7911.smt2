; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98250 () Bool)

(assert start!98250)

(declare-fun b_free!23915 () Bool)

(declare-fun b_next!23915 () Bool)

(assert (=> start!98250 (= b_free!23915 (not b_next!23915))))

(declare-fun tp!84449 () Bool)

(declare-fun b_and!38635 () Bool)

(assert (=> start!98250 (= tp!84449 b_and!38635)))

(declare-fun b!1130770 () Bool)

(declare-fun res!755563 () Bool)

(declare-fun e!643575 () Bool)

(assert (=> b!1130770 (=> (not res!755563) (not e!643575))))

(declare-datatypes ((array!73708 0))(
  ( (array!73709 (arr!35503 (Array (_ BitVec 32) (_ BitVec 64))) (size!36040 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73708)

(declare-datatypes ((List!24899 0))(
  ( (Nil!24896) (Cons!24895 (h!26104 (_ BitVec 64)) (t!35813 List!24899)) )
))
(declare-fun arrayNoDuplicates!0 (array!73708 (_ BitVec 32) List!24899) Bool)

(assert (=> b!1130770 (= res!755563 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24896))))

(declare-fun b!1130771 () Bool)

(declare-fun e!643573 () Bool)

(assert (=> b!1130771 (= e!643573 true)))

(declare-datatypes ((V!43053 0))(
  ( (V!43054 (val!14279 Int)) )
))
(declare-fun zeroValue!944 () V!43053)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!502175 () Bool)

(declare-datatypes ((ValueCell!13513 0))(
  ( (ValueCellFull!13513 (v!16913 V!43053)) (EmptyCell!13513) )
))
(declare-datatypes ((array!73710 0))(
  ( (array!73711 (arr!35504 (Array (_ BitVec 32) ValueCell!13513)) (size!36041 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73710)

(declare-fun minValue!944 () V!43053)

(declare-datatypes ((tuple2!18080 0))(
  ( (tuple2!18081 (_1!9050 (_ BitVec 64)) (_2!9050 V!43053)) )
))
(declare-datatypes ((List!24900 0))(
  ( (Nil!24897) (Cons!24896 (h!26105 tuple2!18080) (t!35814 List!24900)) )
))
(declare-datatypes ((ListLongMap!16061 0))(
  ( (ListLongMap!16062 (toList!8046 List!24900)) )
))
(declare-fun contains!6540 (ListLongMap!16061 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4450 (array!73708 array!73710 (_ BitVec 32) (_ BitVec 32) V!43053 V!43053 (_ BitVec 32) Int) ListLongMap!16061)

(assert (=> b!1130771 (= lt!502175 (contains!6540 (getCurrentListMap!4450 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1130772 () Bool)

(declare-datatypes ((Unit!36996 0))(
  ( (Unit!36997) )
))
(declare-fun e!643577 () Unit!36996)

(declare-fun lt!502166 () Unit!36996)

(assert (=> b!1130772 (= e!643577 lt!502166)))

(declare-fun lt!502167 () Unit!36996)

(declare-fun call!48458 () Unit!36996)

(assert (=> b!1130772 (= lt!502167 call!48458)))

(declare-fun lt!502165 () ListLongMap!16061)

(declare-fun lt!502174 () ListLongMap!16061)

(declare-fun +!3413 (ListLongMap!16061 tuple2!18080) ListLongMap!16061)

(assert (=> b!1130772 (= lt!502165 (+!3413 lt!502174 (tuple2!18081 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun call!48455 () Bool)

(assert (=> b!1130772 call!48455))

(declare-fun addStillContains!713 (ListLongMap!16061 (_ BitVec 64) V!43053 (_ BitVec 64)) Unit!36996)

(assert (=> b!1130772 (= lt!502166 (addStillContains!713 lt!502165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!48460 () ListLongMap!16061)

(assert (=> b!1130772 (contains!6540 call!48460 k!934)))

(declare-fun mapIsEmpty!44485 () Bool)

(declare-fun mapRes!44485 () Bool)

(assert (=> mapIsEmpty!44485 mapRes!44485))

(declare-fun b!1130773 () Bool)

(declare-fun e!643576 () Unit!36996)

(declare-fun Unit!36998 () Unit!36996)

(assert (=> b!1130773 (= e!643576 Unit!36998)))

(declare-fun b!1130774 () Bool)

(declare-fun c!110038 () Bool)

(declare-fun lt!502177 () Bool)

(assert (=> b!1130774 (= c!110038 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!502177))))

(declare-fun e!643582 () Unit!36996)

(assert (=> b!1130774 (= e!643582 e!643576)))

(declare-fun b!1130775 () Bool)

(declare-fun res!755566 () Bool)

(assert (=> b!1130775 (=> (not res!755566) (not e!643575))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1130775 (= res!755566 (validKeyInArray!0 k!934))))

(declare-fun res!755572 () Bool)

(assert (=> start!98250 (=> (not res!755572) (not e!643575))))

(assert (=> start!98250 (= res!755572 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36040 _keys!1208))))))

(assert (=> start!98250 e!643575))

(declare-fun tp_is_empty!28445 () Bool)

(assert (=> start!98250 tp_is_empty!28445))

(declare-fun array_inv!27106 (array!73708) Bool)

(assert (=> start!98250 (array_inv!27106 _keys!1208)))

(assert (=> start!98250 true))

(assert (=> start!98250 tp!84449))

(declare-fun e!643580 () Bool)

(declare-fun array_inv!27107 (array!73710) Bool)

(assert (=> start!98250 (and (array_inv!27107 _values!996) e!643580)))

(declare-fun b!1130776 () Bool)

(declare-fun e!643570 () Bool)

(declare-fun e!643579 () Bool)

(assert (=> b!1130776 (= e!643570 e!643579)))

(declare-fun res!755567 () Bool)

(assert (=> b!1130776 (=> res!755567 e!643579)))

(assert (=> b!1130776 (= res!755567 (not (contains!6540 lt!502174 k!934)))))

(declare-fun getCurrentListMapNoExtraKeys!4499 (array!73708 array!73710 (_ BitVec 32) (_ BitVec 32) V!43053 V!43053 (_ BitVec 32) Int) ListLongMap!16061)

(assert (=> b!1130776 (= lt!502174 (getCurrentListMapNoExtraKeys!4499 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130777 () Bool)

(declare-fun e!643574 () Bool)

(declare-fun e!643581 () Bool)

(assert (=> b!1130777 (= e!643574 e!643581)))

(declare-fun res!755568 () Bool)

(assert (=> b!1130777 (=> res!755568 e!643581)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1130777 (= res!755568 (not (= from!1455 i!673)))))

(declare-fun lt!502178 () array!73708)

(declare-fun lt!502171 () array!73710)

(declare-fun lt!502169 () ListLongMap!16061)

(assert (=> b!1130777 (= lt!502169 (getCurrentListMapNoExtraKeys!4499 lt!502178 lt!502171 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2574 (Int (_ BitVec 64)) V!43053)

(assert (=> b!1130777 (= lt!502171 (array!73711 (store (arr!35504 _values!996) i!673 (ValueCellFull!13513 (dynLambda!2574 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36041 _values!996)))))

(declare-fun lt!502172 () ListLongMap!16061)

(assert (=> b!1130777 (= lt!502172 (getCurrentListMapNoExtraKeys!4499 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1130778 () Bool)

(declare-fun call!48459 () Bool)

(assert (=> b!1130778 call!48459))

(declare-fun lt!502170 () Unit!36996)

(declare-fun call!48461 () Unit!36996)

(assert (=> b!1130778 (= lt!502170 call!48461)))

(assert (=> b!1130778 (= e!643582 lt!502170)))

(declare-fun bm!48451 () Bool)

(declare-fun call!48457 () ListLongMap!16061)

(assert (=> bm!48451 (= call!48457 (getCurrentListMapNoExtraKeys!4499 lt!502178 lt!502171 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130779 () Bool)

(declare-fun e!643571 () Bool)

(assert (=> b!1130779 (= e!643575 e!643571)))

(declare-fun res!755573 () Bool)

(assert (=> b!1130779 (=> (not res!755573) (not e!643571))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73708 (_ BitVec 32)) Bool)

(assert (=> b!1130779 (= res!755573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!502178 mask!1564))))

(assert (=> b!1130779 (= lt!502178 (array!73709 (store (arr!35503 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36040 _keys!1208)))))

(declare-fun bm!48452 () Bool)

(declare-fun call!48454 () ListLongMap!16061)

(assert (=> bm!48452 (= call!48454 call!48460)))

(declare-fun b!1130780 () Bool)

(declare-fun res!755571 () Bool)

(assert (=> b!1130780 (=> (not res!755571) (not e!643575))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1130780 (= res!755571 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!44485 () Bool)

(declare-fun tp!84450 () Bool)

(declare-fun e!643569 () Bool)

(assert (=> mapNonEmpty!44485 (= mapRes!44485 (and tp!84450 e!643569))))

(declare-fun mapKey!44485 () (_ BitVec 32))

(declare-fun mapRest!44485 () (Array (_ BitVec 32) ValueCell!13513))

(declare-fun mapValue!44485 () ValueCell!13513)

(assert (=> mapNonEmpty!44485 (= (arr!35504 _values!996) (store mapRest!44485 mapKey!44485 mapValue!44485))))

(declare-fun bm!48453 () Bool)

(assert (=> bm!48453 (= call!48461 call!48458)))

(declare-fun b!1130781 () Bool)

(assert (=> b!1130781 (= e!643579 e!643573)))

(declare-fun res!755569 () Bool)

(assert (=> b!1130781 (=> res!755569 e!643573)))

(assert (=> b!1130781 (= res!755569 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36040 _keys!1208))))))

(declare-fun lt!502179 () Unit!36996)

(assert (=> b!1130781 (= lt!502179 e!643577)))

(declare-fun c!110037 () Bool)

(assert (=> b!1130781 (= c!110037 (and (not lt!502177) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1130781 (= lt!502177 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1130782 () Bool)

(declare-fun res!755574 () Bool)

(assert (=> b!1130782 (=> (not res!755574) (not e!643575))))

(assert (=> b!1130782 (= res!755574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!48454 () Bool)

(declare-fun c!110039 () Bool)

(assert (=> bm!48454 (= call!48460 (+!3413 (ite c!110037 lt!502165 lt!502174) (ite c!110037 (tuple2!18081 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110039 (tuple2!18081 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18081 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1130783 () Bool)

(assert (=> b!1130783 (= e!643577 e!643582)))

(assert (=> b!1130783 (= c!110039 (and (not lt!502177) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1130784 () Bool)

(declare-fun res!755565 () Bool)

(assert (=> b!1130784 (=> (not res!755565) (not e!643571))))

(assert (=> b!1130784 (= res!755565 (arrayNoDuplicates!0 lt!502178 #b00000000000000000000000000000000 Nil!24896))))

(declare-fun b!1130785 () Bool)

(declare-fun lt!502173 () Unit!36996)

(assert (=> b!1130785 (= e!643576 lt!502173)))

(assert (=> b!1130785 (= lt!502173 call!48461)))

(assert (=> b!1130785 call!48459))

(declare-fun bm!48455 () Bool)

(assert (=> bm!48455 (= call!48458 (addStillContains!713 lt!502174 (ite (or c!110037 c!110039) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110037 c!110039) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1130786 () Bool)

(declare-fun res!755570 () Bool)

(assert (=> b!1130786 (=> (not res!755570) (not e!643575))))

(assert (=> b!1130786 (= res!755570 (and (= (size!36041 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36040 _keys!1208) (size!36041 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1130787 () Bool)

(assert (=> b!1130787 (= e!643581 e!643570)))

(declare-fun res!755564 () Bool)

(assert (=> b!1130787 (=> res!755564 e!643570)))

(assert (=> b!1130787 (= res!755564 (not (= (select (arr!35503 _keys!1208) from!1455) k!934)))))

(declare-fun e!643578 () Bool)

(assert (=> b!1130787 e!643578))

(declare-fun c!110036 () Bool)

(assert (=> b!1130787 (= c!110036 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!502176 () Unit!36996)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!428 (array!73708 array!73710 (_ BitVec 32) (_ BitVec 32) V!43053 V!43053 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36996)

(assert (=> b!1130787 (= lt!502176 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!428 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!48456 () Bool)

(declare-fun call!48456 () ListLongMap!16061)

(assert (=> bm!48456 (= call!48456 (getCurrentListMapNoExtraKeys!4499 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!48457 () Bool)

(assert (=> bm!48457 (= call!48455 (contains!6540 (ite c!110037 lt!502165 call!48454) k!934))))

(declare-fun b!1130788 () Bool)

(assert (=> b!1130788 (= e!643569 tp_is_empty!28445)))

(declare-fun b!1130789 () Bool)

(declare-fun -!1174 (ListLongMap!16061 (_ BitVec 64)) ListLongMap!16061)

(assert (=> b!1130789 (= e!643578 (= call!48457 (-!1174 call!48456 k!934)))))

(declare-fun b!1130790 () Bool)

(declare-fun e!643572 () Bool)

(assert (=> b!1130790 (= e!643572 tp_is_empty!28445)))

(declare-fun b!1130791 () Bool)

(assert (=> b!1130791 (= e!643578 (= call!48457 call!48456))))

(declare-fun b!1130792 () Bool)

(declare-fun res!755576 () Bool)

(assert (=> b!1130792 (=> (not res!755576) (not e!643575))))

(assert (=> b!1130792 (= res!755576 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36040 _keys!1208))))))

(declare-fun b!1130793 () Bool)

(assert (=> b!1130793 (= e!643580 (and e!643572 mapRes!44485))))

(declare-fun condMapEmpty!44485 () Bool)

(declare-fun mapDefault!44485 () ValueCell!13513)

