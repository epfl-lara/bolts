; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98168 () Bool)

(assert start!98168)

(declare-fun b_free!23833 () Bool)

(declare-fun b_next!23833 () Bool)

(assert (=> start!98168 (= b_free!23833 (not b_next!23833))))

(declare-fun tp!84203 () Bool)

(declare-fun b_and!38471 () Bool)

(assert (=> start!98168 (= tp!84203 b_and!38471)))

(declare-fun b!1127897 () Bool)

(declare-fun e!641993 () Bool)

(declare-fun e!641989 () Bool)

(assert (=> b!1127897 (= e!641993 (not e!641989))))

(declare-fun res!753813 () Bool)

(assert (=> b!1127897 (=> res!753813 e!641989)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1127897 (= res!753813 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73546 0))(
  ( (array!73547 (arr!35422 (Array (_ BitVec 32) (_ BitVec 64))) (size!35959 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73546)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1127897 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36901 0))(
  ( (Unit!36902) )
))
(declare-fun lt!500750 () Unit!36901)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73546 (_ BitVec 64) (_ BitVec 32)) Unit!36901)

(assert (=> b!1127897 (= lt!500750 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1127898 () Bool)

(declare-fun res!753821 () Bool)

(declare-fun e!641984 () Bool)

(assert (=> b!1127898 (=> (not res!753821) (not e!641984))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73546 (_ BitVec 32)) Bool)

(assert (=> b!1127898 (= res!753821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!44362 () Bool)

(declare-fun mapRes!44362 () Bool)

(assert (=> mapIsEmpty!44362 mapRes!44362))

(declare-fun b!1127899 () Bool)

(declare-fun e!641988 () Bool)

(declare-fun tp_is_empty!28363 () Bool)

(assert (=> b!1127899 (= e!641988 tp_is_empty!28363)))

(declare-fun b!1127900 () Bool)

(declare-fun e!641985 () Bool)

(assert (=> b!1127900 (= e!641989 e!641985)))

(declare-fun res!753823 () Bool)

(assert (=> b!1127900 (=> res!753823 e!641985)))

(assert (=> b!1127900 (= res!753823 (not (= from!1455 i!673)))))

(declare-datatypes ((V!42945 0))(
  ( (V!42946 (val!14238 Int)) )
))
(declare-fun zeroValue!944 () V!42945)

(declare-fun lt!500751 () array!73546)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18002 0))(
  ( (tuple2!18003 (_1!9011 (_ BitVec 64)) (_2!9011 V!42945)) )
))
(declare-datatypes ((List!24827 0))(
  ( (Nil!24824) (Cons!24823 (h!26032 tuple2!18002) (t!35659 List!24827)) )
))
(declare-datatypes ((ListLongMap!15983 0))(
  ( (ListLongMap!15984 (toList!8007 List!24827)) )
))
(declare-fun lt!500746 () ListLongMap!15983)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42945)

(declare-datatypes ((ValueCell!13472 0))(
  ( (ValueCellFull!13472 (v!16872 V!42945)) (EmptyCell!13472) )
))
(declare-datatypes ((array!73548 0))(
  ( (array!73549 (arr!35423 (Array (_ BitVec 32) ValueCell!13472)) (size!35960 (_ BitVec 32))) )
))
(declare-fun lt!500748 () array!73548)

(declare-fun getCurrentListMapNoExtraKeys!4463 (array!73546 array!73548 (_ BitVec 32) (_ BitVec 32) V!42945 V!42945 (_ BitVec 32) Int) ListLongMap!15983)

(assert (=> b!1127900 (= lt!500746 (getCurrentListMapNoExtraKeys!4463 lt!500751 lt!500748 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73548)

(declare-fun dynLambda!2541 (Int (_ BitVec 64)) V!42945)

(assert (=> b!1127900 (= lt!500748 (array!73549 (store (arr!35423 _values!996) i!673 (ValueCellFull!13472 (dynLambda!2541 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35960 _values!996)))))

(declare-fun lt!500745 () ListLongMap!15983)

(assert (=> b!1127900 (= lt!500745 (getCurrentListMapNoExtraKeys!4463 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun e!641987 () Bool)

(declare-fun call!47782 () ListLongMap!15983)

(declare-fun call!47783 () ListLongMap!15983)

(declare-fun b!1127901 () Bool)

(declare-fun -!1143 (ListLongMap!15983 (_ BitVec 64)) ListLongMap!15983)

(assert (=> b!1127901 (= e!641987 (= call!47782 (-!1143 call!47783 k!934)))))

(declare-fun bm!47779 () Bool)

(assert (=> bm!47779 (= call!47782 (getCurrentListMapNoExtraKeys!4463 lt!500751 lt!500748 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127903 () Bool)

(declare-fun e!641990 () Bool)

(assert (=> b!1127903 (= e!641990 tp_is_empty!28363)))

(declare-fun b!1127904 () Bool)

(declare-fun res!753814 () Bool)

(assert (=> b!1127904 (=> (not res!753814) (not e!641984))))

(assert (=> b!1127904 (= res!753814 (= (select (arr!35422 _keys!1208) i!673) k!934))))

(declare-fun b!1127905 () Bool)

(declare-fun res!753816 () Bool)

(assert (=> b!1127905 (=> (not res!753816) (not e!641984))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1127905 (= res!753816 (validKeyInArray!0 k!934))))

(declare-fun b!1127906 () Bool)

(assert (=> b!1127906 (= e!641987 (= call!47782 call!47783))))

(declare-fun b!1127907 () Bool)

(declare-fun e!641992 () Bool)

(assert (=> b!1127907 (= e!641985 e!641992)))

(declare-fun res!753818 () Bool)

(assert (=> b!1127907 (=> res!753818 e!641992)))

(assert (=> b!1127907 (= res!753818 (not (= (select (arr!35422 _keys!1208) from!1455) k!934)))))

(assert (=> b!1127907 e!641987))

(declare-fun c!109700 () Bool)

(assert (=> b!1127907 (= c!109700 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!500749 () Unit!36901)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!398 (array!73546 array!73548 (_ BitVec 32) (_ BitVec 32) V!42945 V!42945 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36901)

(assert (=> b!1127907 (= lt!500749 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!398 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127908 () Bool)

(assert (=> b!1127908 (= e!641992 true)))

(declare-fun lt!500747 () Bool)

(declare-fun contains!6507 (ListLongMap!15983 (_ BitVec 64)) Bool)

(assert (=> b!1127908 (= lt!500747 (contains!6507 (getCurrentListMapNoExtraKeys!4463 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1127909 () Bool)

(declare-fun res!753822 () Bool)

(assert (=> b!1127909 (=> (not res!753822) (not e!641984))))

(assert (=> b!1127909 (= res!753822 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35959 _keys!1208))))))

(declare-fun bm!47780 () Bool)

(assert (=> bm!47780 (= call!47783 (getCurrentListMapNoExtraKeys!4463 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127910 () Bool)

(declare-fun e!641986 () Bool)

(assert (=> b!1127910 (= e!641986 (and e!641990 mapRes!44362))))

(declare-fun condMapEmpty!44362 () Bool)

(declare-fun mapDefault!44362 () ValueCell!13472)

