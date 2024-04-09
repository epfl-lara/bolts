; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98204 () Bool)

(assert start!98204)

(declare-fun b_free!23869 () Bool)

(declare-fun b_next!23869 () Bool)

(assert (=> start!98204 (= b_free!23869 (not b_next!23869))))

(declare-fun tp!84312 () Bool)

(declare-fun b_and!38543 () Bool)

(assert (=> start!98204 (= tp!84312 b_and!38543)))

(declare-fun bm!47899 () Bool)

(declare-datatypes ((Unit!36933 0))(
  ( (Unit!36934) )
))
(declare-fun call!47907 () Unit!36933)

(declare-fun call!47903 () Unit!36933)

(assert (=> bm!47899 (= call!47907 call!47903)))

(declare-fun b!1128930 () Bool)

(declare-fun res!754541 () Bool)

(declare-fun e!642547 () Bool)

(assert (=> b!1128930 (=> (not res!754541) (not e!642547))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73616 0))(
  ( (array!73617 (arr!35457 (Array (_ BitVec 32) (_ BitVec 64))) (size!35994 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73616)

(assert (=> b!1128930 (= res!754541 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35994 _keys!1208))))))

(declare-datatypes ((V!42993 0))(
  ( (V!42994 (val!14256 Int)) )
))
(declare-fun zeroValue!944 () V!42993)

(declare-fun c!109762 () Bool)

(declare-fun bm!47900 () Bool)

(declare-datatypes ((tuple2!18036 0))(
  ( (tuple2!18037 (_1!9028 (_ BitVec 64)) (_2!9028 V!42993)) )
))
(declare-datatypes ((List!24856 0))(
  ( (Nil!24853) (Cons!24852 (h!26061 tuple2!18036) (t!35724 List!24856)) )
))
(declare-datatypes ((ListLongMap!16017 0))(
  ( (ListLongMap!16018 (toList!8024 List!24856)) )
))
(declare-fun lt!501132 () ListLongMap!16017)

(declare-fun c!109760 () Bool)

(declare-fun call!47902 () ListLongMap!16017)

(declare-fun minValue!944 () V!42993)

(declare-fun +!3392 (ListLongMap!16017 tuple2!18036) ListLongMap!16017)

(assert (=> bm!47900 (= call!47902 (+!3392 lt!501132 (ite (or c!109760 c!109762) (tuple2!18037 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18037 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1128931 () Bool)

(declare-fun res!754531 () Bool)

(assert (=> b!1128931 (=> (not res!754531) (not e!642547))))

(declare-datatypes ((List!24857 0))(
  ( (Nil!24854) (Cons!24853 (h!26062 (_ BitVec 64)) (t!35725 List!24857)) )
))
(declare-fun arrayNoDuplicates!0 (array!73616 (_ BitVec 32) List!24857) Bool)

(assert (=> b!1128931 (= res!754531 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24854))))

(declare-fun bm!47901 () Bool)

(declare-fun call!47909 () Bool)

(declare-fun lt!501139 () ListLongMap!16017)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!47904 () ListLongMap!16017)

(declare-fun contains!6518 (ListLongMap!16017 (_ BitVec 64)) Bool)

(assert (=> bm!47901 (= call!47909 (contains!6518 (ite c!109760 lt!501139 call!47904) k!934))))

(declare-fun b!1128932 () Bool)

(declare-fun e!642543 () Bool)

(declare-fun tp_is_empty!28399 () Bool)

(assert (=> b!1128932 (= e!642543 tp_is_empty!28399)))

(declare-fun b!1128933 () Bool)

(declare-fun e!642538 () Unit!36933)

(declare-fun Unit!36935 () Unit!36933)

(assert (=> b!1128933 (= e!642538 Unit!36935)))

(declare-fun b!1128934 () Bool)

(declare-fun e!642537 () Bool)

(declare-fun e!642535 () Bool)

(assert (=> b!1128934 (= e!642537 e!642535)))

(declare-fun res!754536 () Bool)

(assert (=> b!1128934 (=> res!754536 e!642535)))

(assert (=> b!1128934 (= res!754536 (not (contains!6518 lt!501132 k!934)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13490 0))(
  ( (ValueCellFull!13490 (v!16890 V!42993)) (EmptyCell!13490) )
))
(declare-datatypes ((array!73618 0))(
  ( (array!73619 (arr!35458 (Array (_ BitVec 32) ValueCell!13490)) (size!35995 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73618)

(declare-fun getCurrentListMapNoExtraKeys!4478 (array!73616 array!73618 (_ BitVec 32) (_ BitVec 32) V!42993 V!42993 (_ BitVec 32) Int) ListLongMap!16017)

(assert (=> b!1128934 (= lt!501132 (getCurrentListMapNoExtraKeys!4478 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128935 () Bool)

(declare-fun e!642539 () Bool)

(assert (=> b!1128935 (= e!642539 tp_is_empty!28399)))

(declare-fun bm!47902 () Bool)

(declare-fun call!47908 () ListLongMap!16017)

(assert (=> bm!47902 (= call!47908 (getCurrentListMapNoExtraKeys!4478 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!47903 () Bool)

(declare-fun call!47906 () Bool)

(assert (=> bm!47903 (= call!47906 call!47909)))

(declare-fun b!1128937 () Bool)

(declare-fun e!642544 () Bool)

(assert (=> b!1128937 (= e!642544 true)))

(declare-fun lt!501136 () Bool)

(declare-fun getCurrentListMap!4431 (array!73616 array!73618 (_ BitVec 32) (_ BitVec 32) V!42993 V!42993 (_ BitVec 32) Int) ListLongMap!16017)

(assert (=> b!1128937 (= lt!501136 (contains!6518 (getCurrentListMap!4431 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun bm!47904 () Bool)

(assert (=> bm!47904 (= call!47904 call!47902)))

(declare-fun bm!47905 () Bool)

(declare-fun addStillContains!691 (ListLongMap!16017 (_ BitVec 64) V!42993 (_ BitVec 64)) Unit!36933)

(assert (=> bm!47905 (= call!47903 (addStillContains!691 (ite c!109760 lt!501139 lt!501132) (ite c!109760 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!109762 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!109760 minValue!944 (ite c!109762 zeroValue!944 minValue!944)) k!934))))

(declare-fun call!47905 () ListLongMap!16017)

(declare-fun lt!501142 () array!73618)

(declare-fun bm!47906 () Bool)

(declare-fun lt!501133 () array!73616)

(assert (=> bm!47906 (= call!47905 (getCurrentListMapNoExtraKeys!4478 lt!501133 lt!501142 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128938 () Bool)

(declare-fun res!754534 () Bool)

(assert (=> b!1128938 (=> (not res!754534) (not e!642547))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73616 (_ BitVec 32)) Bool)

(assert (=> b!1128938 (= res!754534 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1128939 () Bool)

(declare-fun e!642541 () Bool)

(declare-fun e!642536 () Bool)

(assert (=> b!1128939 (= e!642541 e!642536)))

(declare-fun res!754540 () Bool)

(assert (=> b!1128939 (=> res!754540 e!642536)))

(assert (=> b!1128939 (= res!754540 (not (= from!1455 i!673)))))

(declare-fun lt!501131 () ListLongMap!16017)

(assert (=> b!1128939 (= lt!501131 (getCurrentListMapNoExtraKeys!4478 lt!501133 lt!501142 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2555 (Int (_ BitVec 64)) V!42993)

(assert (=> b!1128939 (= lt!501142 (array!73619 (store (arr!35458 _values!996) i!673 (ValueCellFull!13490 (dynLambda!2555 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35995 _values!996)))))

(declare-fun lt!501144 () ListLongMap!16017)

(assert (=> b!1128939 (= lt!501144 (getCurrentListMapNoExtraKeys!4478 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1128940 () Bool)

(assert (=> b!1128940 (= e!642535 e!642544)))

(declare-fun res!754542 () Bool)

(assert (=> b!1128940 (=> res!754542 e!642544)))

(assert (=> b!1128940 (= res!754542 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!35994 _keys!1208))))))

(declare-fun lt!501130 () Unit!36933)

(declare-fun e!642545 () Unit!36933)

(assert (=> b!1128940 (= lt!501130 e!642545)))

(declare-fun lt!501135 () Bool)

(assert (=> b!1128940 (= c!109760 (and (not lt!501135) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1128940 (= lt!501135 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1128941 () Bool)

(declare-fun lt!501137 () Unit!36933)

(assert (=> b!1128941 (= e!642538 lt!501137)))

(assert (=> b!1128941 (= lt!501137 call!47907)))

(assert (=> b!1128941 call!47906))

(declare-fun mapNonEmpty!44416 () Bool)

(declare-fun mapRes!44416 () Bool)

(declare-fun tp!84311 () Bool)

(assert (=> mapNonEmpty!44416 (= mapRes!44416 (and tp!84311 e!642543))))

(declare-fun mapRest!44416 () (Array (_ BitVec 32) ValueCell!13490))

(declare-fun mapValue!44416 () ValueCell!13490)

(declare-fun mapKey!44416 () (_ BitVec 32))

(assert (=> mapNonEmpty!44416 (= (arr!35458 _values!996) (store mapRest!44416 mapKey!44416 mapValue!44416))))

(declare-fun b!1128942 () Bool)

(declare-fun c!109763 () Bool)

(assert (=> b!1128942 (= c!109763 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!501135))))

(declare-fun e!642542 () Unit!36933)

(assert (=> b!1128942 (= e!642542 e!642538)))

(declare-fun b!1128943 () Bool)

(assert (=> b!1128943 (= e!642536 e!642537)))

(declare-fun res!754535 () Bool)

(assert (=> b!1128943 (=> res!754535 e!642537)))

(assert (=> b!1128943 (= res!754535 (not (= (select (arr!35457 _keys!1208) from!1455) k!934)))))

(declare-fun e!642534 () Bool)

(assert (=> b!1128943 e!642534))

(declare-fun c!109761 () Bool)

(assert (=> b!1128943 (= c!109761 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!501140 () Unit!36933)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!410 (array!73616 array!73618 (_ BitVec 32) (_ BitVec 32) V!42993 V!42993 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36933)

(assert (=> b!1128943 (= lt!501140 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!410 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128944 () Bool)

(declare-fun res!754537 () Bool)

(assert (=> b!1128944 (=> (not res!754537) (not e!642547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1128944 (= res!754537 (validMask!0 mask!1564))))

(declare-fun b!1128945 () Bool)

(declare-fun res!754533 () Bool)

(assert (=> b!1128945 (=> (not res!754533) (not e!642547))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1128945 (= res!754533 (validKeyInArray!0 k!934))))

(declare-fun res!754532 () Bool)

(assert (=> start!98204 (=> (not res!754532) (not e!642547))))

(assert (=> start!98204 (= res!754532 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35994 _keys!1208))))))

(assert (=> start!98204 e!642547))

(assert (=> start!98204 tp_is_empty!28399))

(declare-fun array_inv!27072 (array!73616) Bool)

(assert (=> start!98204 (array_inv!27072 _keys!1208)))

(assert (=> start!98204 true))

(assert (=> start!98204 tp!84312))

(declare-fun e!642548 () Bool)

(declare-fun array_inv!27073 (array!73618) Bool)

(assert (=> start!98204 (and (array_inv!27073 _values!996) e!642548)))

(declare-fun b!1128936 () Bool)

(declare-fun lt!501134 () Unit!36933)

(assert (=> b!1128936 (= e!642545 lt!501134)))

(declare-fun lt!501138 () Unit!36933)

(assert (=> b!1128936 (= lt!501138 (addStillContains!691 lt!501132 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1128936 (= lt!501139 call!47902)))

(assert (=> b!1128936 call!47909))

(assert (=> b!1128936 (= lt!501134 call!47903)))

(assert (=> b!1128936 (contains!6518 (+!3392 lt!501139 (tuple2!18037 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun b!1128946 () Bool)

(assert (=> b!1128946 (= e!642548 (and e!642539 mapRes!44416))))

(declare-fun condMapEmpty!44416 () Bool)

(declare-fun mapDefault!44416 () ValueCell!13490)

