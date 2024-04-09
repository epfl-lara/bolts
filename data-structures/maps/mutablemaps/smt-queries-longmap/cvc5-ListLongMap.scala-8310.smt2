; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101244 () Bool)

(assert start!101244)

(declare-fun b_free!26131 () Bool)

(declare-fun b_next!26131 () Bool)

(assert (=> start!101244 (= b_free!26131 (not b_next!26131))))

(declare-fun tp!91416 () Bool)

(declare-fun b_and!43389 () Bool)

(assert (=> start!101244 (= tp!91416 b_and!43389)))

(declare-fun b!1215080 () Bool)

(declare-fun res!806842 () Bool)

(declare-fun e!690007 () Bool)

(assert (=> b!1215080 (=> (not res!806842) (not e!690007))))

(declare-datatypes ((array!78424 0))(
  ( (array!78425 (arr!37843 (Array (_ BitVec 32) (_ BitVec 64))) (size!38380 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78424)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78424 (_ BitVec 32)) Bool)

(assert (=> b!1215080 (= res!806842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1215081 () Bool)

(declare-fun res!806835 () Bool)

(assert (=> b!1215081 (=> (not res!806835) (not e!690007))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1215081 (= res!806835 (= (select (arr!37843 _keys!1208) i!673) k!934))))

(declare-fun b!1215082 () Bool)

(declare-fun e!690006 () Bool)

(assert (=> b!1215082 (= e!690007 e!690006)))

(declare-fun res!806838 () Bool)

(assert (=> b!1215082 (=> (not res!806838) (not e!690006))))

(declare-fun lt!552479 () array!78424)

(assert (=> b!1215082 (= res!806838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552479 mask!1564))))

(assert (=> b!1215082 (= lt!552479 (array!78425 (store (arr!37843 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38380 _keys!1208)))))

(declare-fun b!1215083 () Bool)

(declare-fun res!806832 () Bool)

(assert (=> b!1215083 (=> (not res!806832) (not e!690007))))

(assert (=> b!1215083 (= res!806832 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38380 _keys!1208))))))

(declare-fun b!1215084 () Bool)

(declare-fun res!806841 () Bool)

(assert (=> b!1215084 (=> (not res!806841) (not e!690007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1215084 (= res!806841 (validMask!0 mask!1564))))

(declare-fun b!1215085 () Bool)

(declare-fun res!806839 () Bool)

(assert (=> b!1215085 (=> (not res!806839) (not e!690007))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!46241 0))(
  ( (V!46242 (val!15474 Int)) )
))
(declare-datatypes ((ValueCell!14708 0))(
  ( (ValueCellFull!14708 (v!18128 V!46241)) (EmptyCell!14708) )
))
(declare-datatypes ((array!78426 0))(
  ( (array!78427 (arr!37844 (Array (_ BitVec 32) ValueCell!14708)) (size!38381 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78426)

(assert (=> b!1215085 (= res!806839 (and (= (size!38381 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38380 _keys!1208) (size!38381 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1215086 () Bool)

(declare-fun res!806834 () Bool)

(assert (=> b!1215086 (=> (not res!806834) (not e!690006))))

(declare-datatypes ((List!26847 0))(
  ( (Nil!26844) (Cons!26843 (h!28052 (_ BitVec 64)) (t!39965 List!26847)) )
))
(declare-fun arrayNoDuplicates!0 (array!78424 (_ BitVec 32) List!26847) Bool)

(assert (=> b!1215086 (= res!806834 (arrayNoDuplicates!0 lt!552479 #b00000000000000000000000000000000 Nil!26844))))

(declare-fun b!1215087 () Bool)

(declare-fun e!690004 () Bool)

(declare-fun tp_is_empty!30835 () Bool)

(assert (=> b!1215087 (= e!690004 tp_is_empty!30835)))

(declare-fun b!1215088 () Bool)

(declare-fun e!690008 () Bool)

(assert (=> b!1215088 (= e!690008 tp_is_empty!30835)))

(declare-fun mapNonEmpty!48127 () Bool)

(declare-fun mapRes!48127 () Bool)

(declare-fun tp!91415 () Bool)

(assert (=> mapNonEmpty!48127 (= mapRes!48127 (and tp!91415 e!690004))))

(declare-fun mapValue!48127 () ValueCell!14708)

(declare-fun mapKey!48127 () (_ BitVec 32))

(declare-fun mapRest!48127 () (Array (_ BitVec 32) ValueCell!14708))

(assert (=> mapNonEmpty!48127 (= (arr!37844 _values!996) (store mapRest!48127 mapKey!48127 mapValue!48127))))

(declare-fun b!1215089 () Bool)

(declare-fun res!806833 () Bool)

(assert (=> b!1215089 (=> (not res!806833) (not e!690007))))

(assert (=> b!1215089 (= res!806833 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26844))))

(declare-fun b!1215090 () Bool)

(declare-fun e!690005 () Bool)

(assert (=> b!1215090 (= e!690005 true)))

(declare-fun zeroValue!944 () V!46241)

(declare-datatypes ((tuple2!20030 0))(
  ( (tuple2!20031 (_1!10025 (_ BitVec 64)) (_2!10025 V!46241)) )
))
(declare-datatypes ((List!26848 0))(
  ( (Nil!26845) (Cons!26844 (h!28053 tuple2!20030) (t!39966 List!26848)) )
))
(declare-datatypes ((ListLongMap!18011 0))(
  ( (ListLongMap!18012 (toList!9021 List!26848)) )
))
(declare-fun lt!552478 () ListLongMap!18011)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46241)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5426 (array!78424 array!78426 (_ BitVec 32) (_ BitVec 32) V!46241 V!46241 (_ BitVec 32) Int) ListLongMap!18011)

(declare-fun dynLambda!3335 (Int (_ BitVec 64)) V!46241)

(assert (=> b!1215090 (= lt!552478 (getCurrentListMapNoExtraKeys!5426 lt!552479 (array!78427 (store (arr!37844 _values!996) i!673 (ValueCellFull!14708 (dynLambda!3335 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38381 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552477 () ListLongMap!18011)

(assert (=> b!1215090 (= lt!552477 (getCurrentListMapNoExtraKeys!5426 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1215091 () Bool)

(assert (=> b!1215091 (= e!690006 (not e!690005))))

(declare-fun res!806837 () Bool)

(assert (=> b!1215091 (=> res!806837 e!690005)))

(assert (=> b!1215091 (= res!806837 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78424 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1215091 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40224 0))(
  ( (Unit!40225) )
))
(declare-fun lt!552476 () Unit!40224)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78424 (_ BitVec 64) (_ BitVec 32)) Unit!40224)

(assert (=> b!1215091 (= lt!552476 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1215092 () Bool)

(declare-fun res!806840 () Bool)

(assert (=> b!1215092 (=> (not res!806840) (not e!690007))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1215092 (= res!806840 (validKeyInArray!0 k!934))))

(declare-fun b!1215093 () Bool)

(declare-fun e!690003 () Bool)

(assert (=> b!1215093 (= e!690003 (and e!690008 mapRes!48127))))

(declare-fun condMapEmpty!48127 () Bool)

(declare-fun mapDefault!48127 () ValueCell!14708)

