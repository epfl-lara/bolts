; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99242 () Bool)

(assert start!99242)

(declare-fun b_free!24811 () Bool)

(declare-fun b_next!24811 () Bool)

(assert (=> start!99242 (= b_free!24811 (not b_next!24811))))

(declare-fun tp!87144 () Bool)

(declare-fun b_and!40485 () Bool)

(assert (=> start!99242 (= tp!87144 b_and!40485)))

(declare-fun b!1168048 () Bool)

(declare-fun res!775027 () Bool)

(declare-fun e!663895 () Bool)

(assert (=> b!1168048 (=> (not res!775027) (not e!663895))))

(declare-datatypes ((array!75458 0))(
  ( (array!75459 (arr!36376 (Array (_ BitVec 32) (_ BitVec 64))) (size!36913 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75458)

(declare-datatypes ((List!25650 0))(
  ( (Nil!25647) (Cons!25646 (h!26855 (_ BitVec 64)) (t!37460 List!25650)) )
))
(declare-fun arrayNoDuplicates!0 (array!75458 (_ BitVec 32) List!25650) Bool)

(assert (=> b!1168048 (= res!775027 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25647))))

(declare-fun b!1168049 () Bool)

(declare-fun e!663894 () Bool)

(declare-fun tp_is_empty!29341 () Bool)

(assert (=> b!1168049 (= e!663894 tp_is_empty!29341)))

(declare-fun b!1168050 () Bool)

(declare-fun res!775028 () Bool)

(assert (=> b!1168050 (=> (not res!775028) (not e!663895))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44249 0))(
  ( (V!44250 (val!14727 Int)) )
))
(declare-datatypes ((ValueCell!13961 0))(
  ( (ValueCellFull!13961 (v!17365 V!44249)) (EmptyCell!13961) )
))
(declare-datatypes ((array!75460 0))(
  ( (array!75461 (arr!36377 (Array (_ BitVec 32) ValueCell!13961)) (size!36914 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75460)

(assert (=> b!1168050 (= res!775028 (and (= (size!36914 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36913 _keys!1208) (size!36914 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1168051 () Bool)

(declare-fun e!663893 () Bool)

(declare-fun e!663897 () Bool)

(assert (=> b!1168051 (= e!663893 e!663897)))

(declare-fun res!775017 () Bool)

(assert (=> b!1168051 (=> res!775017 e!663897)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1168051 (= res!775017 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44249)

(declare-fun lt!525840 () array!75460)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!525843 () array!75458)

(declare-fun minValue!944 () V!44249)

(declare-datatypes ((tuple2!18874 0))(
  ( (tuple2!18875 (_1!9447 (_ BitVec 64)) (_2!9447 V!44249)) )
))
(declare-datatypes ((List!25651 0))(
  ( (Nil!25648) (Cons!25647 (h!26856 tuple2!18874) (t!37461 List!25651)) )
))
(declare-datatypes ((ListLongMap!16855 0))(
  ( (ListLongMap!16856 (toList!8443 List!25651)) )
))
(declare-fun lt!525842 () ListLongMap!16855)

(declare-fun getCurrentListMapNoExtraKeys!4876 (array!75458 array!75460 (_ BitVec 32) (_ BitVec 32) V!44249 V!44249 (_ BitVec 32) Int) ListLongMap!16855)

(assert (=> b!1168051 (= lt!525842 (getCurrentListMapNoExtraKeys!4876 lt!525843 lt!525840 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2868 (Int (_ BitVec 64)) V!44249)

(assert (=> b!1168051 (= lt!525840 (array!75461 (store (arr!36377 _values!996) i!673 (ValueCellFull!13961 (dynLambda!2868 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36914 _values!996)))))

(declare-fun lt!525839 () ListLongMap!16855)

(assert (=> b!1168051 (= lt!525839 (getCurrentListMapNoExtraKeys!4876 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1168052 () Bool)

(declare-fun res!775023 () Bool)

(assert (=> b!1168052 (=> (not res!775023) (not e!663895))))

(assert (=> b!1168052 (= res!775023 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36913 _keys!1208))))))

(declare-fun b!1168053 () Bool)

(declare-fun e!663900 () Bool)

(assert (=> b!1168053 (= e!663900 tp_is_empty!29341)))

(declare-fun b!1168054 () Bool)

(declare-fun res!775025 () Bool)

(assert (=> b!1168054 (=> (not res!775025) (not e!663895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1168054 (= res!775025 (validMask!0 mask!1564))))

(declare-fun b!1168056 () Bool)

(declare-fun res!775026 () Bool)

(assert (=> b!1168056 (=> (not res!775026) (not e!663895))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1168056 (= res!775026 (validKeyInArray!0 k!934))))

(declare-fun b!1168057 () Bool)

(declare-fun res!775022 () Bool)

(declare-fun e!663898 () Bool)

(assert (=> b!1168057 (=> (not res!775022) (not e!663898))))

(assert (=> b!1168057 (= res!775022 (arrayNoDuplicates!0 lt!525843 #b00000000000000000000000000000000 Nil!25647))))

(declare-fun mapIsEmpty!45836 () Bool)

(declare-fun mapRes!45836 () Bool)

(assert (=> mapIsEmpty!45836 mapRes!45836))

(declare-fun b!1168058 () Bool)

(declare-fun res!775024 () Bool)

(assert (=> b!1168058 (=> (not res!775024) (not e!663895))))

(assert (=> b!1168058 (= res!775024 (= (select (arr!36376 _keys!1208) i!673) k!934))))

(declare-fun b!1168059 () Bool)

(assert (=> b!1168059 (= e!663895 e!663898)))

(declare-fun res!775021 () Bool)

(assert (=> b!1168059 (=> (not res!775021) (not e!663898))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75458 (_ BitVec 32)) Bool)

(assert (=> b!1168059 (= res!775021 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525843 mask!1564))))

(assert (=> b!1168059 (= lt!525843 (array!75459 (store (arr!36376 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36913 _keys!1208)))))

(declare-fun b!1168060 () Bool)

(assert (=> b!1168060 (= e!663898 (not e!663893))))

(declare-fun res!775020 () Bool)

(assert (=> b!1168060 (=> res!775020 e!663893)))

(assert (=> b!1168060 (= res!775020 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75458 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1168060 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38434 0))(
  ( (Unit!38435) )
))
(declare-fun lt!525841 () Unit!38434)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75458 (_ BitVec 64) (_ BitVec 32)) Unit!38434)

(assert (=> b!1168060 (= lt!525841 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1168061 () Bool)

(declare-fun e!663896 () Bool)

(assert (=> b!1168061 (= e!663896 (and e!663900 mapRes!45836))))

(declare-fun condMapEmpty!45836 () Bool)

(declare-fun mapDefault!45836 () ValueCell!13961)

