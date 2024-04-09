; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98172 () Bool)

(assert start!98172)

(declare-fun b_free!23837 () Bool)

(declare-fun b_next!23837 () Bool)

(assert (=> start!98172 (= b_free!23837 (not b_next!23837))))

(declare-fun tp!84215 () Bool)

(declare-fun b_and!38479 () Bool)

(assert (=> start!98172 (= tp!84215 b_and!38479)))

(declare-fun b!1128009 () Bool)

(declare-fun res!753900 () Bool)

(declare-fun e!642053 () Bool)

(assert (=> b!1128009 (=> (not res!753900) (not e!642053))))

(declare-datatypes ((array!73554 0))(
  ( (array!73555 (arr!35426 (Array (_ BitVec 32) (_ BitVec 64))) (size!35963 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73554)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1128009 (= res!753900 (= (select (arr!35426 _keys!1208) i!673) k!934))))

(declare-fun b!1128010 () Bool)

(declare-fun e!642048 () Bool)

(declare-fun e!642052 () Bool)

(assert (=> b!1128010 (= e!642048 (not e!642052))))

(declare-fun res!753897 () Bool)

(assert (=> b!1128010 (=> res!753897 e!642052)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1128010 (= res!753897 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73554 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1128010 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36905 0))(
  ( (Unit!36906) )
))
(declare-fun lt!500793 () Unit!36905)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73554 (_ BitVec 64) (_ BitVec 32)) Unit!36905)

(assert (=> b!1128010 (= lt!500793 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-datatypes ((V!42949 0))(
  ( (V!42950 (val!14240 Int)) )
))
(declare-fun zeroValue!944 () V!42949)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!47791 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13474 0))(
  ( (ValueCellFull!13474 (v!16874 V!42949)) (EmptyCell!13474) )
))
(declare-datatypes ((array!73556 0))(
  ( (array!73557 (arr!35427 (Array (_ BitVec 32) ValueCell!13474)) (size!35964 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73556)

(declare-datatypes ((tuple2!18006 0))(
  ( (tuple2!18007 (_1!9013 (_ BitVec 64)) (_2!9013 V!42949)) )
))
(declare-datatypes ((List!24830 0))(
  ( (Nil!24827) (Cons!24826 (h!26035 tuple2!18006) (t!35666 List!24830)) )
))
(declare-datatypes ((ListLongMap!15987 0))(
  ( (ListLongMap!15988 (toList!8009 List!24830)) )
))
(declare-fun call!47794 () ListLongMap!15987)

(declare-fun minValue!944 () V!42949)

(declare-fun getCurrentListMapNoExtraKeys!4465 (array!73554 array!73556 (_ BitVec 32) (_ BitVec 32) V!42949 V!42949 (_ BitVec 32) Int) ListLongMap!15987)

(assert (=> bm!47791 (= call!47794 (getCurrentListMapNoExtraKeys!4465 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128011 () Bool)

(declare-fun res!753895 () Bool)

(assert (=> b!1128011 (=> (not res!753895) (not e!642053))))

(assert (=> b!1128011 (= res!753895 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35963 _keys!1208))))))

(declare-fun lt!500792 () array!73554)

(declare-fun lt!500791 () array!73556)

(declare-fun call!47795 () ListLongMap!15987)

(declare-fun bm!47792 () Bool)

(assert (=> bm!47792 (= call!47795 (getCurrentListMapNoExtraKeys!4465 lt!500792 lt!500791 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128012 () Bool)

(declare-fun e!642047 () Bool)

(assert (=> b!1128012 (= e!642052 e!642047)))

(declare-fun res!753899 () Bool)

(assert (=> b!1128012 (=> res!753899 e!642047)))

(assert (=> b!1128012 (= res!753899 (not (= from!1455 i!673)))))

(declare-fun lt!500790 () ListLongMap!15987)

(assert (=> b!1128012 (= lt!500790 (getCurrentListMapNoExtraKeys!4465 lt!500792 lt!500791 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2543 (Int (_ BitVec 64)) V!42949)

(assert (=> b!1128012 (= lt!500791 (array!73557 (store (arr!35427 _values!996) i!673 (ValueCellFull!13474 (dynLambda!2543 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35964 _values!996)))))

(declare-fun lt!500787 () ListLongMap!15987)

(assert (=> b!1128012 (= lt!500787 (getCurrentListMapNoExtraKeys!4465 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1128013 () Bool)

(assert (=> b!1128013 (= e!642053 e!642048)))

(declare-fun res!753892 () Bool)

(assert (=> b!1128013 (=> (not res!753892) (not e!642048))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73554 (_ BitVec 32)) Bool)

(assert (=> b!1128013 (= res!753892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500792 mask!1564))))

(assert (=> b!1128013 (= lt!500792 (array!73555 (store (arr!35426 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35963 _keys!1208)))))

(declare-fun b!1128015 () Bool)

(declare-fun e!642049 () Bool)

(assert (=> b!1128015 (= e!642049 true)))

(declare-fun lt!500789 () Bool)

(declare-fun contains!6509 (ListLongMap!15987 (_ BitVec 64)) Bool)

(assert (=> b!1128015 (= lt!500789 (contains!6509 (getCurrentListMapNoExtraKeys!4465 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1128016 () Bool)

(declare-fun e!642045 () Bool)

(declare-fun e!642044 () Bool)

(declare-fun mapRes!44368 () Bool)

(assert (=> b!1128016 (= e!642045 (and e!642044 mapRes!44368))))

(declare-fun condMapEmpty!44368 () Bool)

(declare-fun mapDefault!44368 () ValueCell!13474)

