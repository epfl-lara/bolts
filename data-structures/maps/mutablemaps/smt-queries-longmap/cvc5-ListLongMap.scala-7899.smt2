; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98174 () Bool)

(assert start!98174)

(declare-fun b_free!23839 () Bool)

(declare-fun b_next!23839 () Bool)

(assert (=> start!98174 (= b_free!23839 (not b_next!23839))))

(declare-fun tp!84222 () Bool)

(declare-fun b_and!38483 () Bool)

(assert (=> start!98174 (= tp!84222 b_and!38483)))

(declare-fun b!1128065 () Bool)

(declare-fun e!642077 () Bool)

(declare-fun e!642083 () Bool)

(assert (=> b!1128065 (= e!642077 (not e!642083))))

(declare-fun res!753935 () Bool)

(assert (=> b!1128065 (=> res!753935 e!642083)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1128065 (= res!753935 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73558 0))(
  ( (array!73559 (arr!35428 (Array (_ BitVec 32) (_ BitVec 64))) (size!35965 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73558)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73558 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1128065 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36907 0))(
  ( (Unit!36908) )
))
(declare-fun lt!500814 () Unit!36907)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73558 (_ BitVec 64) (_ BitVec 32)) Unit!36907)

(assert (=> b!1128065 (= lt!500814 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1128066 () Bool)

(declare-fun res!753941 () Bool)

(declare-fun e!642078 () Bool)

(assert (=> b!1128066 (=> (not res!753941) (not e!642078))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73558 (_ BitVec 32)) Bool)

(assert (=> b!1128066 (= res!753941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-datatypes ((V!42953 0))(
  ( (V!42954 (val!14241 Int)) )
))
(declare-fun zeroValue!944 () V!42953)

(declare-fun bm!47797 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13475 0))(
  ( (ValueCellFull!13475 (v!16875 V!42953)) (EmptyCell!13475) )
))
(declare-datatypes ((array!73560 0))(
  ( (array!73561 (arr!35429 (Array (_ BitVec 32) ValueCell!13475)) (size!35966 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73560)

(declare-fun minValue!944 () V!42953)

(declare-datatypes ((tuple2!18008 0))(
  ( (tuple2!18009 (_1!9014 (_ BitVec 64)) (_2!9014 V!42953)) )
))
(declare-datatypes ((List!24831 0))(
  ( (Nil!24828) (Cons!24827 (h!26036 tuple2!18008) (t!35669 List!24831)) )
))
(declare-datatypes ((ListLongMap!15989 0))(
  ( (ListLongMap!15990 (toList!8010 List!24831)) )
))
(declare-fun call!47801 () ListLongMap!15989)

(declare-fun getCurrentListMapNoExtraKeys!4466 (array!73558 array!73560 (_ BitVec 32) (_ BitVec 32) V!42953 V!42953 (_ BitVec 32) Int) ListLongMap!15989)

(assert (=> bm!47797 (= call!47801 (getCurrentListMapNoExtraKeys!4466 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44371 () Bool)

(declare-fun mapRes!44371 () Bool)

(assert (=> mapIsEmpty!44371 mapRes!44371))

(declare-fun call!47800 () ListLongMap!15989)

(declare-fun e!642079 () Bool)

(declare-fun b!1128067 () Bool)

(declare-fun -!1145 (ListLongMap!15989 (_ BitVec 64)) ListLongMap!15989)

(assert (=> b!1128067 (= e!642079 (= call!47800 (-!1145 call!47801 k!934)))))

(declare-fun b!1128068 () Bool)

(declare-fun res!753930 () Bool)

(assert (=> b!1128068 (=> (not res!753930) (not e!642078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1128068 (= res!753930 (validMask!0 mask!1564))))

(declare-fun b!1128069 () Bool)

(declare-fun res!753938 () Bool)

(assert (=> b!1128069 (=> (not res!753938) (not e!642077))))

(declare-fun lt!500813 () array!73558)

(declare-datatypes ((List!24832 0))(
  ( (Nil!24829) (Cons!24828 (h!26037 (_ BitVec 64)) (t!35670 List!24832)) )
))
(declare-fun arrayNoDuplicates!0 (array!73558 (_ BitVec 32) List!24832) Bool)

(assert (=> b!1128069 (= res!753938 (arrayNoDuplicates!0 lt!500813 #b00000000000000000000000000000000 Nil!24829))))

(declare-fun b!1128070 () Bool)

(declare-fun res!753940 () Bool)

(assert (=> b!1128070 (=> (not res!753940) (not e!642078))))

(assert (=> b!1128070 (= res!753940 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24829))))

(declare-fun b!1128071 () Bool)

(declare-fun e!642075 () Bool)

(assert (=> b!1128071 (= e!642083 e!642075)))

(declare-fun res!753931 () Bool)

(assert (=> b!1128071 (=> res!753931 e!642075)))

(assert (=> b!1128071 (= res!753931 (not (= from!1455 i!673)))))

(declare-fun lt!500810 () array!73560)

(declare-fun lt!500808 () ListLongMap!15989)

(assert (=> b!1128071 (= lt!500808 (getCurrentListMapNoExtraKeys!4466 lt!500813 lt!500810 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2544 (Int (_ BitVec 64)) V!42953)

(assert (=> b!1128071 (= lt!500810 (array!73561 (store (arr!35429 _values!996) i!673 (ValueCellFull!13475 (dynLambda!2544 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35966 _values!996)))))

(declare-fun lt!500809 () ListLongMap!15989)

(assert (=> b!1128071 (= lt!500809 (getCurrentListMapNoExtraKeys!4466 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1128072 () Bool)

(declare-fun e!642074 () Bool)

(assert (=> b!1128072 (= e!642075 e!642074)))

(declare-fun res!753937 () Bool)

(assert (=> b!1128072 (=> res!753937 e!642074)))

(assert (=> b!1128072 (= res!753937 (not (= (select (arr!35428 _keys!1208) from!1455) k!934)))))

(assert (=> b!1128072 e!642079))

(declare-fun c!109709 () Bool)

(assert (=> b!1128072 (= c!109709 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!500812 () Unit!36907)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!400 (array!73558 array!73560 (_ BitVec 32) (_ BitVec 32) V!42953 V!42953 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36907)

(assert (=> b!1128072 (= lt!500812 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!400 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128073 () Bool)

(declare-fun e!642080 () Bool)

(declare-fun tp_is_empty!28369 () Bool)

(assert (=> b!1128073 (= e!642080 tp_is_empty!28369)))

(declare-fun res!753939 () Bool)

(assert (=> start!98174 (=> (not res!753939) (not e!642078))))

(assert (=> start!98174 (= res!753939 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35965 _keys!1208))))))

(assert (=> start!98174 e!642078))

(assert (=> start!98174 tp_is_empty!28369))

(declare-fun array_inv!27048 (array!73558) Bool)

(assert (=> start!98174 (array_inv!27048 _keys!1208)))

(assert (=> start!98174 true))

(assert (=> start!98174 tp!84222))

(declare-fun e!642076 () Bool)

(declare-fun array_inv!27049 (array!73560) Bool)

(assert (=> start!98174 (and (array_inv!27049 _values!996) e!642076)))

(declare-fun b!1128074 () Bool)

(assert (=> b!1128074 (= e!642076 (and e!642080 mapRes!44371))))

(declare-fun condMapEmpty!44371 () Bool)

(declare-fun mapDefault!44371 () ValueCell!13475)

