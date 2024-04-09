; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98180 () Bool)

(assert start!98180)

(declare-fun b_free!23845 () Bool)

(declare-fun b_next!23845 () Bool)

(assert (=> start!98180 (= b_free!23845 (not b_next!23845))))

(declare-fun tp!84239 () Bool)

(declare-fun b_and!38495 () Bool)

(assert (=> start!98180 (= tp!84239 b_and!38495)))

(declare-fun b!1128233 () Bool)

(declare-fun e!642170 () Bool)

(declare-fun e!642173 () Bool)

(assert (=> b!1128233 (= e!642170 e!642173)))

(declare-fun res!754057 () Bool)

(assert (=> b!1128233 (=> (not res!754057) (not e!642173))))

(declare-datatypes ((array!73570 0))(
  ( (array!73571 (arr!35434 (Array (_ BitVec 32) (_ BitVec 64))) (size!35971 (_ BitVec 32))) )
))
(declare-fun lt!500871 () array!73570)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73570 (_ BitVec 32)) Bool)

(assert (=> b!1128233 (= res!754057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500871 mask!1564))))

(declare-fun _keys!1208 () array!73570)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1128233 (= lt!500871 (array!73571 (store (arr!35434 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35971 _keys!1208)))))

(declare-fun res!754047 () Bool)

(assert (=> start!98180 (=> (not res!754047) (not e!642170))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!98180 (= res!754047 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35971 _keys!1208))))))

(assert (=> start!98180 e!642170))

(declare-fun tp_is_empty!28375 () Bool)

(assert (=> start!98180 tp_is_empty!28375))

(declare-fun array_inv!27052 (array!73570) Bool)

(assert (=> start!98180 (array_inv!27052 _keys!1208)))

(assert (=> start!98180 true))

(assert (=> start!98180 tp!84239))

(declare-datatypes ((V!42961 0))(
  ( (V!42962 (val!14244 Int)) )
))
(declare-datatypes ((ValueCell!13478 0))(
  ( (ValueCellFull!13478 (v!16878 V!42961)) (EmptyCell!13478) )
))
(declare-datatypes ((array!73572 0))(
  ( (array!73573 (arr!35435 (Array (_ BitVec 32) ValueCell!13478)) (size!35972 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73572)

(declare-fun e!642167 () Bool)

(declare-fun array_inv!27053 (array!73572) Bool)

(assert (=> start!98180 (and (array_inv!27053 _values!996) e!642167)))

(declare-fun b!1128234 () Bool)

(declare-fun e!642169 () Bool)

(declare-fun e!642165 () Bool)

(assert (=> b!1128234 (= e!642169 e!642165)))

(declare-fun res!754052 () Bool)

(assert (=> b!1128234 (=> res!754052 e!642165)))

(assert (=> b!1128234 (= res!754052 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!42961)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18014 0))(
  ( (tuple2!18015 (_1!9017 (_ BitVec 64)) (_2!9017 V!42961)) )
))
(declare-datatypes ((List!24836 0))(
  ( (Nil!24833) (Cons!24832 (h!26041 tuple2!18014) (t!35680 List!24836)) )
))
(declare-datatypes ((ListLongMap!15995 0))(
  ( (ListLongMap!15996 (toList!8013 List!24836)) )
))
(declare-fun lt!500876 () ListLongMap!15995)

(declare-fun minValue!944 () V!42961)

(declare-fun lt!500873 () array!73572)

(declare-fun getCurrentListMapNoExtraKeys!4468 (array!73570 array!73572 (_ BitVec 32) (_ BitVec 32) V!42961 V!42961 (_ BitVec 32) Int) ListLongMap!15995)

(assert (=> b!1128234 (= lt!500876 (getCurrentListMapNoExtraKeys!4468 lt!500871 lt!500873 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2546 (Int (_ BitVec 64)) V!42961)

(assert (=> b!1128234 (= lt!500873 (array!73573 (store (arr!35435 _values!996) i!673 (ValueCellFull!13478 (dynLambda!2546 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35972 _values!996)))))

(declare-fun lt!500874 () ListLongMap!15995)

(assert (=> b!1128234 (= lt!500874 (getCurrentListMapNoExtraKeys!4468 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun call!47819 () ListLongMap!15995)

(declare-fun e!642172 () Bool)

(declare-fun call!47818 () ListLongMap!15995)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1128235 () Bool)

(declare-fun -!1148 (ListLongMap!15995 (_ BitVec 64)) ListLongMap!15995)

(assert (=> b!1128235 (= e!642172 (= call!47819 (-!1148 call!47818 k!934)))))

(declare-fun b!1128236 () Bool)

(assert (=> b!1128236 (= e!642173 (not e!642169))))

(declare-fun res!754056 () Bool)

(assert (=> b!1128236 (=> res!754056 e!642169)))

(assert (=> b!1128236 (= res!754056 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73570 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1128236 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36913 0))(
  ( (Unit!36914) )
))
(declare-fun lt!500875 () Unit!36913)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73570 (_ BitVec 64) (_ BitVec 32)) Unit!36913)

(assert (=> b!1128236 (= lt!500875 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1128237 () Bool)

(declare-fun res!754048 () Bool)

(assert (=> b!1128237 (=> (not res!754048) (not e!642170))))

(assert (=> b!1128237 (= res!754048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1128238 () Bool)

(assert (=> b!1128238 (= e!642172 (= call!47819 call!47818))))

(declare-fun b!1128239 () Bool)

(declare-fun e!642168 () Bool)

(assert (=> b!1128239 (= e!642168 tp_is_empty!28375)))

(declare-fun b!1128240 () Bool)

(declare-fun res!754049 () Bool)

(assert (=> b!1128240 (=> (not res!754049) (not e!642170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1128240 (= res!754049 (validMask!0 mask!1564))))

(declare-fun bm!47815 () Bool)

(assert (=> bm!47815 (= call!47818 (getCurrentListMapNoExtraKeys!4468 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128241 () Bool)

(declare-fun res!754053 () Bool)

(assert (=> b!1128241 (=> (not res!754053) (not e!642170))))

(assert (=> b!1128241 (= res!754053 (= (select (arr!35434 _keys!1208) i!673) k!934))))

(declare-fun b!1128242 () Bool)

(declare-fun res!754055 () Bool)

(assert (=> b!1128242 (=> (not res!754055) (not e!642170))))

(assert (=> b!1128242 (= res!754055 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35971 _keys!1208))))))

(declare-fun b!1128243 () Bool)

(declare-fun e!642164 () Bool)

(assert (=> b!1128243 (= e!642164 tp_is_empty!28375)))

(declare-fun b!1128244 () Bool)

(declare-fun mapRes!44380 () Bool)

(assert (=> b!1128244 (= e!642167 (and e!642164 mapRes!44380))))

(declare-fun condMapEmpty!44380 () Bool)

(declare-fun mapDefault!44380 () ValueCell!13478)

