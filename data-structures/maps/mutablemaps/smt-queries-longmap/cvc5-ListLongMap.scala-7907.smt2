; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98222 () Bool)

(assert start!98222)

(declare-fun b_free!23887 () Bool)

(declare-fun b_next!23887 () Bool)

(assert (=> start!98222 (= b_free!23887 (not b_next!23887))))

(declare-fun tp!84365 () Bool)

(declare-fun b_and!38579 () Bool)

(assert (=> start!98222 (= tp!84365 b_and!38579)))

(declare-fun b!1129650 () Bool)

(declare-fun e!642950 () Bool)

(declare-fun e!642942 () Bool)

(assert (=> b!1129650 (= e!642950 e!642942)))

(declare-fun res!754940 () Bool)

(assert (=> b!1129650 (=> res!754940 e!642942)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73652 0))(
  ( (array!73653 (arr!35475 (Array (_ BitVec 32) (_ BitVec 64))) (size!36012 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73652)

(assert (=> b!1129650 (= res!754940 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36012 _keys!1208))))))

(declare-datatypes ((Unit!36956 0))(
  ( (Unit!36957) )
))
(declare-fun lt!501541 () Unit!36956)

(declare-fun e!642946 () Unit!36956)

(assert (=> b!1129650 (= lt!501541 e!642946)))

(declare-fun c!109868 () Bool)

(declare-fun lt!501538 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1129650 (= c!109868 (and (not lt!501538) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1129650 (= lt!501538 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!43017 0))(
  ( (V!43018 (val!14265 Int)) )
))
(declare-fun zeroValue!944 () V!43017)

(declare-datatypes ((tuple2!18054 0))(
  ( (tuple2!18055 (_1!9037 (_ BitVec 64)) (_2!9037 V!43017)) )
))
(declare-datatypes ((List!24873 0))(
  ( (Nil!24870) (Cons!24869 (h!26078 tuple2!18054) (t!35759 List!24873)) )
))
(declare-datatypes ((ListLongMap!16035 0))(
  ( (ListLongMap!16036 (toList!8033 List!24873)) )
))
(declare-fun lt!501535 () ListLongMap!16035)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!48122 () Unit!36956)

(declare-fun c!109870 () Bool)

(declare-fun bm!48115 () Bool)

(declare-fun minValue!944 () V!43017)

(declare-fun addStillContains!700 (ListLongMap!16035 (_ BitVec 64) V!43017 (_ BitVec 64)) Unit!36956)

(assert (=> bm!48115 (= call!48122 (addStillContains!700 lt!501535 (ite (or c!109868 c!109870) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!109868 c!109870) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1129651 () Bool)

(declare-fun e!642949 () Bool)

(declare-fun e!642947 () Bool)

(assert (=> b!1129651 (= e!642949 (not e!642947))))

(declare-fun res!754946 () Bool)

(assert (=> b!1129651 (=> res!754946 e!642947)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1129651 (= res!754946 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1129651 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!501547 () Unit!36956)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73652 (_ BitVec 64) (_ BitVec 32)) Unit!36956)

(assert (=> b!1129651 (= lt!501547 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1129652 () Bool)

(declare-fun res!754944 () Bool)

(declare-fun e!642953 () Bool)

(assert (=> b!1129652 (=> (not res!754944) (not e!642953))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73652 (_ BitVec 32)) Bool)

(assert (=> b!1129652 (= res!754944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1129653 () Bool)

(assert (=> b!1129653 (= e!642942 true)))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!501537 () Bool)

(declare-datatypes ((ValueCell!13499 0))(
  ( (ValueCellFull!13499 (v!16899 V!43017)) (EmptyCell!13499) )
))
(declare-datatypes ((array!73654 0))(
  ( (array!73655 (arr!35476 (Array (_ BitVec 32) ValueCell!13499)) (size!36013 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73654)

(declare-fun contains!6527 (ListLongMap!16035 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4437 (array!73652 array!73654 (_ BitVec 32) (_ BitVec 32) V!43017 V!43017 (_ BitVec 32) Int) ListLongMap!16035)

(assert (=> b!1129653 (= lt!501537 (contains!6527 (getCurrentListMap!4437 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1129654 () Bool)

(declare-fun e!642943 () Unit!36956)

(declare-fun Unit!36958 () Unit!36956)

(assert (=> b!1129654 (= e!642943 Unit!36958)))

(declare-fun b!1129656 () Bool)

(declare-fun e!642939 () Bool)

(declare-fun call!48125 () ListLongMap!16035)

(declare-fun call!48119 () ListLongMap!16035)

(assert (=> b!1129656 (= e!642939 (= call!48125 call!48119))))

(declare-fun b!1129657 () Bool)

(declare-fun res!754941 () Bool)

(assert (=> b!1129657 (=> (not res!754941) (not e!642953))))

(declare-datatypes ((List!24874 0))(
  ( (Nil!24871) (Cons!24870 (h!26079 (_ BitVec 64)) (t!35760 List!24874)) )
))
(declare-fun arrayNoDuplicates!0 (array!73652 (_ BitVec 32) List!24874) Bool)

(assert (=> b!1129657 (= res!754941 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24871))))

(declare-fun lt!501545 () ListLongMap!16035)

(declare-fun bm!48116 () Bool)

(declare-fun call!48118 () ListLongMap!16035)

(declare-fun call!48121 () Bool)

(assert (=> bm!48116 (= call!48121 (contains!6527 (ite c!109868 lt!501545 call!48118) k!934))))

(declare-fun bm!48117 () Bool)

(declare-fun call!48120 () Bool)

(assert (=> bm!48117 (= call!48120 call!48121)))

(declare-fun bm!48118 () Bool)

(declare-fun call!48124 () Unit!36956)

(assert (=> bm!48118 (= call!48124 call!48122)))

(declare-fun b!1129658 () Bool)

(declare-fun res!754947 () Bool)

(assert (=> b!1129658 (=> (not res!754947) (not e!642953))))

(assert (=> b!1129658 (= res!754947 (= (select (arr!35475 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!44443 () Bool)

(declare-fun mapRes!44443 () Bool)

(declare-fun tp!84366 () Bool)

(declare-fun e!642948 () Bool)

(assert (=> mapNonEmpty!44443 (= mapRes!44443 (and tp!84366 e!642948))))

(declare-fun mapValue!44443 () ValueCell!13499)

(declare-fun mapKey!44443 () (_ BitVec 32))

(declare-fun mapRest!44443 () (Array (_ BitVec 32) ValueCell!13499))

(assert (=> mapNonEmpty!44443 (= (arr!35476 _values!996) (store mapRest!44443 mapKey!44443 mapValue!44443))))

(declare-fun b!1129659 () Bool)

(declare-fun tp_is_empty!28417 () Bool)

(assert (=> b!1129659 (= e!642948 tp_is_empty!28417)))

(declare-fun b!1129660 () Bool)

(declare-fun res!754935 () Bool)

(assert (=> b!1129660 (=> (not res!754935) (not e!642953))))

(assert (=> b!1129660 (= res!754935 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36012 _keys!1208))))))

(declare-fun b!1129661 () Bool)

(declare-fun e!642941 () Bool)

(assert (=> b!1129661 (= e!642947 e!642941)))

(declare-fun res!754937 () Bool)

(assert (=> b!1129661 (=> res!754937 e!642941)))

(assert (=> b!1129661 (= res!754937 (not (= from!1455 i!673)))))

(declare-fun lt!501536 () ListLongMap!16035)

(declare-fun lt!501543 () array!73652)

(declare-fun lt!501540 () array!73654)

(declare-fun getCurrentListMapNoExtraKeys!4486 (array!73652 array!73654 (_ BitVec 32) (_ BitVec 32) V!43017 V!43017 (_ BitVec 32) Int) ListLongMap!16035)

(assert (=> b!1129661 (= lt!501536 (getCurrentListMapNoExtraKeys!4486 lt!501543 lt!501540 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2563 (Int (_ BitVec 64)) V!43017)

(assert (=> b!1129661 (= lt!501540 (array!73655 (store (arr!35476 _values!996) i!673 (ValueCellFull!13499 (dynLambda!2563 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36013 _values!996)))))

(declare-fun lt!501548 () ListLongMap!16035)

(assert (=> b!1129661 (= lt!501548 (getCurrentListMapNoExtraKeys!4486 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1129662 () Bool)

(declare-fun e!642945 () Bool)

(assert (=> b!1129662 (= e!642941 e!642945)))

(declare-fun res!754933 () Bool)

(assert (=> b!1129662 (=> res!754933 e!642945)))

(assert (=> b!1129662 (= res!754933 (not (= (select (arr!35475 _keys!1208) from!1455) k!934)))))

(assert (=> b!1129662 e!642939))

(declare-fun c!109869 () Bool)

(assert (=> b!1129662 (= c!109869 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!501546 () Unit!36956)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!416 (array!73652 array!73654 (_ BitVec 32) (_ BitVec 32) V!43017 V!43017 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36956)

(assert (=> b!1129662 (= lt!501546 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!416 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129663 () Bool)

(declare-fun res!754942 () Bool)

(assert (=> b!1129663 (=> (not res!754942) (not e!642953))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1129663 (= res!754942 (validMask!0 mask!1564))))

(declare-fun b!1129664 () Bool)

(declare-fun res!754936 () Bool)

(assert (=> b!1129664 (=> (not res!754936) (not e!642953))))

(assert (=> b!1129664 (= res!754936 (and (= (size!36013 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36012 _keys!1208) (size!36013 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1129665 () Bool)

(declare-fun e!642951 () Bool)

(assert (=> b!1129665 (= e!642951 tp_is_empty!28417)))

(declare-fun bm!48119 () Bool)

(assert (=> bm!48119 (= call!48119 (getCurrentListMapNoExtraKeys!4486 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129666 () Bool)

(assert (=> b!1129666 (= e!642945 e!642950)))

(declare-fun res!754943 () Bool)

(assert (=> b!1129666 (=> res!754943 e!642950)))

(assert (=> b!1129666 (= res!754943 (not (contains!6527 lt!501535 k!934)))))

(assert (=> b!1129666 (= lt!501535 (getCurrentListMapNoExtraKeys!4486 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129667 () Bool)

(declare-fun res!754934 () Bool)

(assert (=> b!1129667 (=> (not res!754934) (not e!642953))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1129667 (= res!754934 (validKeyInArray!0 k!934))))

(declare-fun b!1129668 () Bool)

(declare-fun e!642944 () Bool)

(assert (=> b!1129668 (= e!642944 (and e!642951 mapRes!44443))))

(declare-fun condMapEmpty!44443 () Bool)

(declare-fun mapDefault!44443 () ValueCell!13499)

