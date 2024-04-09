; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99674 () Bool)

(assert start!99674)

(declare-fun b_free!25217 () Bool)

(declare-fun b_next!25217 () Bool)

(assert (=> start!99674 (= b_free!25217 (not b_next!25217))))

(declare-fun tp!88365 () Bool)

(declare-fun b_and!41315 () Bool)

(assert (=> start!99674 (= tp!88365 b_and!41315)))

(declare-fun b!1180893 () Bool)

(declare-fun e!671413 () Bool)

(declare-fun e!671416 () Bool)

(assert (=> b!1180893 (= e!671413 e!671416)))

(declare-fun res!784785 () Bool)

(assert (=> b!1180893 (=> res!784785 e!671416)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76262 0))(
  ( (array!76263 (arr!36777 (Array (_ BitVec 32) (_ BitVec 64))) (size!37314 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76262)

(assert (=> b!1180893 (= res!784785 (not (= (select (arr!36777 _keys!1208) from!1455) k!934)))))

(declare-fun b!1180894 () Bool)

(declare-fun res!784776 () Bool)

(declare-fun e!671422 () Bool)

(assert (=> b!1180894 (=> (not res!784776) (not e!671422))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44789 0))(
  ( (V!44790 (val!14930 Int)) )
))
(declare-datatypes ((ValueCell!14164 0))(
  ( (ValueCellFull!14164 (v!17569 V!44789)) (EmptyCell!14164) )
))
(declare-datatypes ((array!76264 0))(
  ( (array!76265 (arr!36778 (Array (_ BitVec 32) ValueCell!14164)) (size!37315 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76264)

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1180894 (= res!784776 (and (= (size!37315 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37314 _keys!1208) (size!37315 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1180895 () Bool)

(declare-fun e!671417 () Bool)

(declare-fun e!671420 () Bool)

(assert (=> b!1180895 (= e!671417 e!671420)))

(declare-fun res!784787 () Bool)

(assert (=> b!1180895 (=> res!784787 e!671420)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1180895 (= res!784787 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44789)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!534002 () array!76264)

(declare-datatypes ((tuple2!19244 0))(
  ( (tuple2!19245 (_1!9632 (_ BitVec 64)) (_2!9632 V!44789)) )
))
(declare-datatypes ((List!26005 0))(
  ( (Nil!26002) (Cons!26001 (h!27210 tuple2!19244) (t!38221 List!26005)) )
))
(declare-datatypes ((ListLongMap!17225 0))(
  ( (ListLongMap!17226 (toList!8628 List!26005)) )
))
(declare-fun lt!534008 () ListLongMap!17225)

(declare-fun lt!533996 () array!76262)

(declare-fun minValue!944 () V!44789)

(declare-fun getCurrentListMapNoExtraKeys!5053 (array!76262 array!76264 (_ BitVec 32) (_ BitVec 32) V!44789 V!44789 (_ BitVec 32) Int) ListLongMap!17225)

(assert (=> b!1180895 (= lt!534008 (getCurrentListMapNoExtraKeys!5053 lt!533996 lt!534002 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!534003 () V!44789)

(assert (=> b!1180895 (= lt!534002 (array!76265 (store (arr!36778 _values!996) i!673 (ValueCellFull!14164 lt!534003)) (size!37315 _values!996)))))

(declare-fun dynLambda!3022 (Int (_ BitVec 64)) V!44789)

(assert (=> b!1180895 (= lt!534003 (dynLambda!3022 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!534006 () ListLongMap!17225)

(assert (=> b!1180895 (= lt!534006 (getCurrentListMapNoExtraKeys!5053 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!46448 () Bool)

(declare-fun mapRes!46448 () Bool)

(assert (=> mapIsEmpty!46448 mapRes!46448))

(declare-fun b!1180896 () Bool)

(declare-fun e!671421 () Bool)

(assert (=> b!1180896 (= e!671421 true)))

(declare-fun e!671411 () Bool)

(assert (=> b!1180896 e!671411))

(declare-fun res!784789 () Bool)

(assert (=> b!1180896 (=> (not res!784789) (not e!671411))))

(assert (=> b!1180896 (= res!784789 (not (= (select (arr!36777 _keys!1208) from!1455) k!934)))))

(declare-datatypes ((Unit!38968 0))(
  ( (Unit!38969) )
))
(declare-fun lt!534005 () Unit!38968)

(declare-fun e!671419 () Unit!38968)

(assert (=> b!1180896 (= lt!534005 e!671419)))

(declare-fun c!116897 () Bool)

(assert (=> b!1180896 (= c!116897 (= (select (arr!36777 _keys!1208) from!1455) k!934))))

(assert (=> b!1180896 e!671413))

(declare-fun res!784778 () Bool)

(assert (=> b!1180896 (=> (not res!784778) (not e!671413))))

(declare-fun lt!534001 () ListLongMap!17225)

(declare-fun lt!534007 () tuple2!19244)

(declare-fun +!3847 (ListLongMap!17225 tuple2!19244) ListLongMap!17225)

(assert (=> b!1180896 (= res!784778 (= lt!534008 (+!3847 lt!534001 lt!534007)))))

(declare-fun get!18842 (ValueCell!14164 V!44789) V!44789)

(assert (=> b!1180896 (= lt!534007 (tuple2!19245 (select (arr!36777 _keys!1208) from!1455) (get!18842 (select (arr!36778 _values!996) from!1455) lt!534003)))))

(declare-fun b!1180897 () Bool)

(declare-fun res!784780 () Bool)

(assert (=> b!1180897 (=> (not res!784780) (not e!671422))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1180897 (= res!784780 (validMask!0 mask!1564))))

(declare-fun b!1180898 () Bool)

(declare-fun e!671414 () Bool)

(declare-fun e!671410 () Bool)

(assert (=> b!1180898 (= e!671414 (and e!671410 mapRes!46448))))

(declare-fun condMapEmpty!46448 () Bool)

(declare-fun mapDefault!46448 () ValueCell!14164)

