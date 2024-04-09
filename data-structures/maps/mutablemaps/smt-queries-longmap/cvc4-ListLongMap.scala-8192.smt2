; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100058 () Bool)

(assert start!100058)

(declare-fun b_free!25601 () Bool)

(declare-fun b_next!25601 () Bool)

(assert (=> start!100058 (= b_free!25601 (not b_next!25601))))

(declare-fun tp!89518 () Bool)

(declare-fun b_and!42083 () Bool)

(assert (=> start!100058 (= tp!89518 b_and!42083)))

(declare-fun b!1191733 () Bool)

(declare-fun e!677461 () Bool)

(declare-fun e!677455 () Bool)

(assert (=> b!1191733 (= e!677461 (not e!677455))))

(declare-fun res!792803 () Bool)

(assert (=> b!1191733 (=> res!792803 e!677455)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1191733 (= res!792803 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!77026 0))(
  ( (array!77027 (arr!37159 (Array (_ BitVec 32) (_ BitVec 64))) (size!37696 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77026)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77026 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1191733 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39478 0))(
  ( (Unit!39479) )
))
(declare-fun lt!541917 () Unit!39478)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77026 (_ BitVec 64) (_ BitVec 32)) Unit!39478)

(assert (=> b!1191733 (= lt!541917 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1191735 () Bool)

(declare-fun res!792797 () Bool)

(declare-fun e!677459 () Bool)

(assert (=> b!1191735 (=> (not res!792797) (not e!677459))))

(declare-datatypes ((List!26336 0))(
  ( (Nil!26333) (Cons!26332 (h!27541 (_ BitVec 64)) (t!38936 List!26336)) )
))
(declare-fun arrayNoDuplicates!0 (array!77026 (_ BitVec 32) List!26336) Bool)

(assert (=> b!1191735 (= res!792797 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26333))))

(declare-fun b!1191736 () Bool)

(declare-fun e!677454 () Bool)

(assert (=> b!1191736 (= e!677454 true)))

(declare-datatypes ((V!45301 0))(
  ( (V!45302 (val!15122 Int)) )
))
(declare-fun zeroValue!944 () V!45301)

(declare-datatypes ((ValueCell!14356 0))(
  ( (ValueCellFull!14356 (v!17761 V!45301)) (EmptyCell!14356) )
))
(declare-datatypes ((array!77028 0))(
  ( (array!77029 (arr!37160 (Array (_ BitVec 32) ValueCell!14356)) (size!37697 (_ BitVec 32))) )
))
(declare-fun lt!541920 () array!77028)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun _values!996 () array!77028)

(declare-fun lt!541918 () array!77026)

(declare-fun minValue!944 () V!45301)

(declare-datatypes ((tuple2!19574 0))(
  ( (tuple2!19575 (_1!9797 (_ BitVec 64)) (_2!9797 V!45301)) )
))
(declare-datatypes ((List!26337 0))(
  ( (Nil!26334) (Cons!26333 (h!27542 tuple2!19574) (t!38937 List!26337)) )
))
(declare-datatypes ((ListLongMap!17555 0))(
  ( (ListLongMap!17556 (toList!8793 List!26337)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5207 (array!77026 array!77028 (_ BitVec 32) (_ BitVec 32) V!45301 V!45301 (_ BitVec 32) Int) ListLongMap!17555)

(declare-fun -!1772 (ListLongMap!17555 (_ BitVec 64)) ListLongMap!17555)

(assert (=> b!1191736 (= (getCurrentListMapNoExtraKeys!5207 lt!541918 lt!541920 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1772 (getCurrentListMapNoExtraKeys!5207 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun lt!541919 () Unit!39478)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!978 (array!77026 array!77028 (_ BitVec 32) (_ BitVec 32) V!45301 V!45301 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39478)

(assert (=> b!1191736 (= lt!541919 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!978 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1191737 () Bool)

(assert (=> b!1191737 (= e!677455 e!677454)))

(declare-fun res!792800 () Bool)

(assert (=> b!1191737 (=> res!792800 e!677454)))

(assert (=> b!1191737 (= res!792800 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!541915 () ListLongMap!17555)

(assert (=> b!1191737 (= lt!541915 (getCurrentListMapNoExtraKeys!5207 lt!541918 lt!541920 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3151 (Int (_ BitVec 64)) V!45301)

(assert (=> b!1191737 (= lt!541920 (array!77029 (store (arr!37160 _values!996) i!673 (ValueCellFull!14356 (dynLambda!3151 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37697 _values!996)))))

(declare-fun lt!541916 () ListLongMap!17555)

(assert (=> b!1191737 (= lt!541916 (getCurrentListMapNoExtraKeys!5207 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1191738 () Bool)

(declare-fun e!677457 () Bool)

(declare-fun tp_is_empty!30131 () Bool)

(assert (=> b!1191738 (= e!677457 tp_is_empty!30131)))

(declare-fun b!1191739 () Bool)

(declare-fun e!677460 () Bool)

(declare-fun mapRes!47024 () Bool)

(assert (=> b!1191739 (= e!677460 (and e!677457 mapRes!47024))))

(declare-fun condMapEmpty!47024 () Bool)

(declare-fun mapDefault!47024 () ValueCell!14356)

