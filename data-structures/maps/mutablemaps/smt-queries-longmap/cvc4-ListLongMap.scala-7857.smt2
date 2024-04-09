; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97926 () Bool)

(assert start!97926)

(declare-fun b_free!23591 () Bool)

(declare-fun b_next!23591 () Bool)

(assert (=> start!97926 (= b_free!23591 (not b_next!23591))))

(declare-fun tp!83477 () Bool)

(declare-fun b_and!37987 () Bool)

(assert (=> start!97926 (= tp!83477 b_and!37987)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((V!42621 0))(
  ( (V!42622 (val!14117 Int)) )
))
(declare-datatypes ((ValueCell!13351 0))(
  ( (ValueCellFull!13351 (v!16751 V!42621)) (EmptyCell!13351) )
))
(declare-datatypes ((array!73068 0))(
  ( (array!73069 (arr!35183 (Array (_ BitVec 32) ValueCell!13351)) (size!35720 (_ BitVec 32))) )
))
(declare-fun lt!498189 () array!73068)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73070 0))(
  ( (array!73071 (arr!35184 (Array (_ BitVec 32) (_ BitVec 64))) (size!35721 (_ BitVec 32))) )
))
(declare-fun lt!498188 () array!73070)

(declare-datatypes ((tuple2!17776 0))(
  ( (tuple2!17777 (_1!8898 (_ BitVec 64)) (_2!8898 V!42621)) )
))
(declare-datatypes ((List!24615 0))(
  ( (Nil!24612) (Cons!24611 (h!25820 tuple2!17776) (t!35205 List!24615)) )
))
(declare-datatypes ((ListLongMap!15757 0))(
  ( (ListLongMap!15758 (toList!7894 List!24615)) )
))
(declare-fun call!47057 () ListLongMap!15757)

(declare-fun minValue!944 () V!42621)

(declare-fun bm!47053 () Bool)

(declare-fun zeroValue!944 () V!42621)

(declare-fun getCurrentListMapNoExtraKeys!4355 (array!73070 array!73068 (_ BitVec 32) (_ BitVec 32) V!42621 V!42621 (_ BitVec 32) Int) ListLongMap!15757)

(assert (=> bm!47053 (= call!47057 (getCurrentListMapNoExtraKeys!4355 lt!498188 lt!498189 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1120978 () Bool)

(declare-fun e!638319 () Bool)

(assert (=> b!1120978 (= e!638319 true)))

(declare-fun e!638320 () Bool)

(assert (=> b!1120978 e!638320))

(declare-fun c!109337 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1120978 (= c!109337 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun _keys!1208 () array!73070)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun _values!996 () array!73068)

(declare-datatypes ((Unit!36703 0))(
  ( (Unit!36704) )
))
(declare-fun lt!498187 () Unit!36703)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!316 (array!73070 array!73068 (_ BitVec 32) (_ BitVec 32) V!42621 V!42621 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36703)

(assert (=> b!1120978 (= lt!498187 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!316 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1120979 () Bool)

(declare-fun res!748958 () Bool)

(declare-fun e!638324 () Bool)

(assert (=> b!1120979 (=> (not res!748958) (not e!638324))))

(declare-datatypes ((List!24616 0))(
  ( (Nil!24613) (Cons!24612 (h!25821 (_ BitVec 64)) (t!35206 List!24616)) )
))
(declare-fun arrayNoDuplicates!0 (array!73070 (_ BitVec 32) List!24616) Bool)

(assert (=> b!1120979 (= res!748958 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24613))))

(declare-fun b!1120980 () Bool)

(declare-fun call!47056 () ListLongMap!15757)

(assert (=> b!1120980 (= e!638320 (= call!47057 call!47056))))

(declare-fun b!1120981 () Bool)

(declare-fun res!748955 () Bool)

(assert (=> b!1120981 (=> (not res!748955) (not e!638324))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73070 (_ BitVec 32)) Bool)

(assert (=> b!1120981 (= res!748955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1120982 () Bool)

(declare-fun e!638323 () Bool)

(assert (=> b!1120982 (= e!638323 e!638319)))

(declare-fun res!748961 () Bool)

(assert (=> b!1120982 (=> res!748961 e!638319)))

(assert (=> b!1120982 (= res!748961 (not (= from!1455 i!673)))))

(declare-fun lt!498190 () ListLongMap!15757)

(assert (=> b!1120982 (= lt!498190 (getCurrentListMapNoExtraKeys!4355 lt!498188 lt!498189 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2456 (Int (_ BitVec 64)) V!42621)

(assert (=> b!1120982 (= lt!498189 (array!73069 (store (arr!35183 _values!996) i!673 (ValueCellFull!13351 (dynLambda!2456 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35720 _values!996)))))

(declare-fun lt!498191 () ListLongMap!15757)

(assert (=> b!1120982 (= lt!498191 (getCurrentListMapNoExtraKeys!4355 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!43999 () Bool)

(declare-fun mapRes!43999 () Bool)

(assert (=> mapIsEmpty!43999 mapRes!43999))

(declare-fun res!748957 () Bool)

(assert (=> start!97926 (=> (not res!748957) (not e!638324))))

(assert (=> start!97926 (= res!748957 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35721 _keys!1208))))))

(assert (=> start!97926 e!638324))

(declare-fun tp_is_empty!28121 () Bool)

(assert (=> start!97926 tp_is_empty!28121))

(declare-fun array_inv!26892 (array!73070) Bool)

(assert (=> start!97926 (array_inv!26892 _keys!1208)))

(assert (=> start!97926 true))

(assert (=> start!97926 tp!83477))

(declare-fun e!638321 () Bool)

(declare-fun array_inv!26893 (array!73068) Bool)

(assert (=> start!97926 (and (array_inv!26893 _values!996) e!638321)))

(declare-fun mapNonEmpty!43999 () Bool)

(declare-fun tp!83478 () Bool)

(declare-fun e!638326 () Bool)

(assert (=> mapNonEmpty!43999 (= mapRes!43999 (and tp!83478 e!638326))))

(declare-fun mapValue!43999 () ValueCell!13351)

(declare-fun mapKey!43999 () (_ BitVec 32))

(declare-fun mapRest!43999 () (Array (_ BitVec 32) ValueCell!13351))

(assert (=> mapNonEmpty!43999 (= (arr!35183 _values!996) (store mapRest!43999 mapKey!43999 mapValue!43999))))

(declare-fun b!1120983 () Bool)

(assert (=> b!1120983 (= e!638326 tp_is_empty!28121)))

(declare-fun b!1120984 () Bool)

(declare-fun e!638325 () Bool)

(assert (=> b!1120984 (= e!638325 (not e!638323))))

(declare-fun res!748951 () Bool)

(assert (=> b!1120984 (=> res!748951 e!638323)))

(assert (=> b!1120984 (= res!748951 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73070 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1120984 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!498192 () Unit!36703)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73070 (_ BitVec 64) (_ BitVec 32)) Unit!36703)

(assert (=> b!1120984 (= lt!498192 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1120985 () Bool)

(declare-fun res!748952 () Bool)

(assert (=> b!1120985 (=> (not res!748952) (not e!638324))))

(assert (=> b!1120985 (= res!748952 (and (= (size!35720 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35721 _keys!1208) (size!35720 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!47054 () Bool)

(assert (=> bm!47054 (= call!47056 (getCurrentListMapNoExtraKeys!4355 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1120986 () Bool)

(declare-fun res!748953 () Bool)

(assert (=> b!1120986 (=> (not res!748953) (not e!638324))))

(assert (=> b!1120986 (= res!748953 (= (select (arr!35184 _keys!1208) i!673) k!934))))

(declare-fun b!1120987 () Bool)

(declare-fun res!748962 () Bool)

(assert (=> b!1120987 (=> (not res!748962) (not e!638324))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1120987 (= res!748962 (validKeyInArray!0 k!934))))

(declare-fun b!1120988 () Bool)

(declare-fun e!638322 () Bool)

(assert (=> b!1120988 (= e!638322 tp_is_empty!28121)))

(declare-fun b!1120989 () Bool)

(declare-fun res!748956 () Bool)

(assert (=> b!1120989 (=> (not res!748956) (not e!638325))))

(assert (=> b!1120989 (= res!748956 (arrayNoDuplicates!0 lt!498188 #b00000000000000000000000000000000 Nil!24613))))

(declare-fun b!1120990 () Bool)

(assert (=> b!1120990 (= e!638321 (and e!638322 mapRes!43999))))

(declare-fun condMapEmpty!43999 () Bool)

(declare-fun mapDefault!43999 () ValueCell!13351)

