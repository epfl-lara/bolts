; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98394 () Bool)

(assert start!98394)

(declare-fun b_free!23963 () Bool)

(declare-fun b_next!23963 () Bool)

(assert (=> start!98394 (= b_free!23963 (not b_next!23963))))

(declare-fun tp!84601 () Bool)

(declare-fun b_and!38789 () Bool)

(assert (=> start!98394 (= tp!84601 b_and!38789)))

(declare-fun e!645128 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!503681 () Bool)

(declare-fun b!1133455 () Bool)

(assert (=> b!1133455 (= e!645128 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!503681) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!44564 () Bool)

(declare-fun mapRes!44564 () Bool)

(declare-fun tp!84600 () Bool)

(declare-fun e!645116 () Bool)

(assert (=> mapNonEmpty!44564 (= mapRes!44564 (and tp!84600 e!645116))))

(declare-datatypes ((V!43117 0))(
  ( (V!43118 (val!14303 Int)) )
))
(declare-datatypes ((ValueCell!13537 0))(
  ( (ValueCellFull!13537 (v!16941 V!43117)) (EmptyCell!13537) )
))
(declare-fun mapRest!44564 () (Array (_ BitVec 32) ValueCell!13537))

(declare-fun mapKey!44564 () (_ BitVec 32))

(declare-datatypes ((array!73808 0))(
  ( (array!73809 (arr!35551 (Array (_ BitVec 32) ValueCell!13537)) (size!36088 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73808)

(declare-fun mapValue!44564 () ValueCell!13537)

(assert (=> mapNonEmpty!44564 (= (arr!35551 _values!996) (store mapRest!44564 mapKey!44564 mapValue!44564))))

(declare-fun b!1133456 () Bool)

(declare-datatypes ((Unit!37082 0))(
  ( (Unit!37083) )
))
(declare-fun e!645124 () Unit!37082)

(declare-fun lt!503679 () Unit!37082)

(assert (=> b!1133456 (= e!645124 lt!503679)))

(declare-fun call!49102 () Unit!37082)

(assert (=> b!1133456 (= lt!503679 call!49102)))

(declare-fun call!49098 () Bool)

(assert (=> b!1133456 call!49098))

(declare-fun b!1133457 () Bool)

(declare-fun e!645126 () Bool)

(declare-fun tp_is_empty!28493 () Bool)

(assert (=> b!1133457 (= e!645126 tp_is_empty!28493)))

(declare-fun b!1133458 () Bool)

(declare-fun Unit!37084 () Unit!37082)

(assert (=> b!1133458 (= e!645124 Unit!37084)))

(declare-datatypes ((array!73810 0))(
  ( (array!73811 (arr!35552 (Array (_ BitVec 32) (_ BitVec 64))) (size!36089 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73810)

(declare-fun b!1133459 () Bool)

(declare-fun e!645121 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!73810 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1133459 (= e!645121 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1133460 () Bool)

(declare-fun res!756899 () Bool)

(declare-fun e!645114 () Bool)

(assert (=> b!1133460 (=> (not res!756899) (not e!645114))))

(declare-fun lt!503672 () array!73810)

(declare-datatypes ((List!24940 0))(
  ( (Nil!24937) (Cons!24936 (h!26145 (_ BitVec 64)) (t!35902 List!24940)) )
))
(declare-fun arrayNoDuplicates!0 (array!73810 (_ BitVec 32) List!24940) Bool)

(assert (=> b!1133460 (= res!756899 (arrayNoDuplicates!0 lt!503672 #b00000000000000000000000000000000 Nil!24937))))

(declare-fun b!1133461 () Bool)

(declare-fun res!756902 () Bool)

(declare-fun e!645115 () Bool)

(assert (=> b!1133461 (=> (not res!756902) (not e!645115))))

(assert (=> b!1133461 (= res!756902 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24937))))

(declare-fun bm!49094 () Bool)

(declare-fun call!49104 () Unit!37082)

(assert (=> bm!49094 (= call!49102 call!49104)))

(declare-fun b!1133462 () Bool)

(declare-fun e!645117 () Bool)

(declare-fun e!645119 () Bool)

(assert (=> b!1133462 (= e!645117 e!645119)))

(declare-fun res!756894 () Bool)

(assert (=> b!1133462 (=> res!756894 e!645119)))

(declare-datatypes ((tuple2!18128 0))(
  ( (tuple2!18129 (_1!9074 (_ BitVec 64)) (_2!9074 V!43117)) )
))
(declare-datatypes ((List!24941 0))(
  ( (Nil!24938) (Cons!24937 (h!26146 tuple2!18128) (t!35903 List!24941)) )
))
(declare-datatypes ((ListLongMap!16109 0))(
  ( (ListLongMap!16110 (toList!8070 List!24941)) )
))
(declare-fun lt!503685 () ListLongMap!16109)

(declare-fun contains!6561 (ListLongMap!16109 (_ BitVec 64)) Bool)

(assert (=> b!1133462 (= res!756894 (not (contains!6561 lt!503685 k!934)))))

(declare-fun zeroValue!944 () V!43117)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43117)

(declare-fun getCurrentListMapNoExtraKeys!4520 (array!73810 array!73808 (_ BitVec 32) (_ BitVec 32) V!43117 V!43117 (_ BitVec 32) Int) ListLongMap!16109)

(assert (=> b!1133462 (= lt!503685 (getCurrentListMapNoExtraKeys!4520 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133463 () Bool)

(declare-fun e!645127 () Bool)

(assert (=> b!1133463 (= e!645114 (not e!645127))))

(declare-fun res!756897 () Bool)

(assert (=> b!1133463 (=> res!756897 e!645127)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1133463 (= res!756897 (bvsgt from!1455 i!673))))

(assert (=> b!1133463 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!503680 () Unit!37082)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73810 (_ BitVec 64) (_ BitVec 32)) Unit!37082)

(assert (=> b!1133463 (= lt!503680 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1133464 () Bool)

(declare-fun e!645118 () Bool)

(assert (=> b!1133464 (= e!645127 e!645118)))

(declare-fun res!756900 () Bool)

(assert (=> b!1133464 (=> res!756900 e!645118)))

(assert (=> b!1133464 (= res!756900 (not (= from!1455 i!673)))))

(declare-fun lt!503674 () ListLongMap!16109)

(declare-fun lt!503684 () array!73808)

(assert (=> b!1133464 (= lt!503674 (getCurrentListMapNoExtraKeys!4520 lt!503672 lt!503684 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2589 (Int (_ BitVec 64)) V!43117)

(assert (=> b!1133464 (= lt!503684 (array!73809 (store (arr!35551 _values!996) i!673 (ValueCellFull!13537 (dynLambda!2589 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36088 _values!996)))))

(declare-fun lt!503677 () ListLongMap!16109)

(assert (=> b!1133464 (= lt!503677 (getCurrentListMapNoExtraKeys!4520 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1133465 () Bool)

(assert (=> b!1133465 (= e!645116 tp_is_empty!28493)))

(declare-fun b!1133466 () Bool)

(declare-fun res!756898 () Bool)

(assert (=> b!1133466 (=> (not res!756898) (not e!645115))))

(assert (=> b!1133466 (= res!756898 (and (= (size!36088 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36089 _keys!1208) (size!36088 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!49095 () Bool)

(declare-fun call!49103 () ListLongMap!16109)

(declare-fun call!49101 () ListLongMap!16109)

(assert (=> bm!49095 (= call!49103 call!49101)))

(declare-fun b!1133467 () Bool)

(assert (=> b!1133467 (= e!645128 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1133468 () Bool)

(declare-fun e!645129 () Unit!37082)

(declare-fun e!645120 () Unit!37082)

(assert (=> b!1133468 (= e!645129 e!645120)))

(declare-fun c!110577 () Bool)

(assert (=> b!1133468 (= c!110577 (and (not lt!503681) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1133469 () Bool)

(declare-fun res!756888 () Bool)

(assert (=> b!1133469 (=> (not res!756888) (not e!645115))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73810 (_ BitVec 32)) Bool)

(assert (=> b!1133469 (= res!756888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1133470 () Bool)

(assert (=> b!1133470 (= e!645115 e!645114)))

(declare-fun res!756893 () Bool)

(assert (=> b!1133470 (=> (not res!756893) (not e!645114))))

(assert (=> b!1133470 (= res!756893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!503672 mask!1564))))

(assert (=> b!1133470 (= lt!503672 (array!73811 (store (arr!35552 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36089 _keys!1208)))))

(declare-fun b!1133471 () Bool)

(declare-fun c!110576 () Bool)

(assert (=> b!1133471 (= c!110576 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!503681))))

(assert (=> b!1133471 (= e!645120 e!645124)))

(declare-fun call!49097 () ListLongMap!16109)

(declare-fun bm!49096 () Bool)

(assert (=> bm!49096 (= call!49097 (getCurrentListMapNoExtraKeys!4520 lt!503672 lt!503684 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44564 () Bool)

(assert (=> mapIsEmpty!44564 mapRes!44564))

(declare-fun b!1133472 () Bool)

(declare-fun e!645123 () Bool)

(declare-fun call!49100 () ListLongMap!16109)

(declare-fun -!1188 (ListLongMap!16109 (_ BitVec 64)) ListLongMap!16109)

(assert (=> b!1133472 (= e!645123 (= call!49097 (-!1188 call!49100 k!934)))))

(declare-fun b!1133473 () Bool)

(declare-fun res!756895 () Bool)

(assert (=> b!1133473 (=> (not res!756895) (not e!645115))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1133473 (= res!756895 (validKeyInArray!0 k!934))))

(declare-fun b!1133474 () Bool)

(assert (=> b!1133474 (= e!645118 e!645117)))

(declare-fun res!756896 () Bool)

(assert (=> b!1133474 (=> res!756896 e!645117)))

(assert (=> b!1133474 (= res!756896 (not (= (select (arr!35552 _keys!1208) from!1455) k!934)))))

(assert (=> b!1133474 e!645123))

(declare-fun c!110575 () Bool)

(assert (=> b!1133474 (= c!110575 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!503675 () Unit!37082)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!445 (array!73810 array!73808 (_ BitVec 32) (_ BitVec 32) V!43117 V!43117 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37082)

(assert (=> b!1133474 (= lt!503675 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!445 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!110574 () Bool)

(declare-fun bm!49097 () Bool)

(declare-fun +!3430 (ListLongMap!16109 tuple2!18128) ListLongMap!16109)

(assert (=> bm!49097 (= call!49101 (+!3430 lt!503685 (ite (or c!110574 c!110577) (tuple2!18129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18129 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1133475 () Bool)

(assert (=> b!1133475 (= e!645119 true)))

(assert (=> b!1133475 e!645121))

(declare-fun res!756892 () Bool)

(assert (=> b!1133475 (=> (not res!756892) (not e!645121))))

(assert (=> b!1133475 (= res!756892 e!645128)))

(declare-fun c!110573 () Bool)

(assert (=> b!1133475 (= c!110573 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!503682 () Unit!37082)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!338 (array!73810 array!73808 (_ BitVec 32) (_ BitVec 32) V!43117 V!43117 (_ BitVec 64) (_ BitVec 32) Int) Unit!37082)

(assert (=> b!1133475 (= lt!503682 (lemmaListMapContainsThenArrayContainsFrom!338 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!503671 () Unit!37082)

(assert (=> b!1133475 (= lt!503671 e!645129)))

(assert (=> b!1133475 (= c!110574 (and (not lt!503681) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1133475 (= lt!503681 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!49098 () Bool)

(declare-fun call!49099 () Bool)

(assert (=> bm!49098 (= call!49098 call!49099)))

(declare-fun res!756890 () Bool)

(assert (=> start!98394 (=> (not res!756890) (not e!645115))))

(assert (=> start!98394 (= res!756890 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36089 _keys!1208))))))

(assert (=> start!98394 e!645115))

(assert (=> start!98394 tp_is_empty!28493))

(declare-fun array_inv!27134 (array!73810) Bool)

(assert (=> start!98394 (array_inv!27134 _keys!1208)))

(assert (=> start!98394 true))

(assert (=> start!98394 tp!84601))

(declare-fun e!645125 () Bool)

(declare-fun array_inv!27135 (array!73808) Bool)

(assert (=> start!98394 (and (array_inv!27135 _values!996) e!645125)))

(declare-fun b!1133476 () Bool)

(assert (=> b!1133476 (= e!645123 (= call!49097 call!49100))))

(declare-fun bm!49099 () Bool)

(declare-fun lt!503676 () ListLongMap!16109)

(declare-fun addStillContains!729 (ListLongMap!16109 (_ BitVec 64) V!43117 (_ BitVec 64)) Unit!37082)

(assert (=> bm!49099 (= call!49104 (addStillContains!729 (ite c!110574 lt!503676 lt!503685) (ite c!110574 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!110577 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!110574 minValue!944 (ite c!110577 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1133477 () Bool)

(assert (=> b!1133477 (= e!645125 (and e!645126 mapRes!44564))))

(declare-fun condMapEmpty!44564 () Bool)

(declare-fun mapDefault!44564 () ValueCell!13537)

