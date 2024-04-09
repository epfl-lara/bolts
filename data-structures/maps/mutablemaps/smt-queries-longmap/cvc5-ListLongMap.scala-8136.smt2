; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99718 () Bool)

(assert start!99718)

(declare-fun b_free!25261 () Bool)

(declare-fun b_next!25261 () Bool)

(assert (=> start!99718 (= b_free!25261 (not b_next!25261))))

(declare-fun tp!88497 () Bool)

(declare-fun b_and!41403 () Bool)

(assert (=> start!99718 (= tp!88497 b_and!41403)))

(declare-fun b!1182313 () Bool)

(declare-fun res!785822 () Bool)

(declare-fun e!672240 () Bool)

(assert (=> b!1182313 (=> (not res!785822) (not e!672240))))

(declare-datatypes ((array!76350 0))(
  ( (array!76351 (arr!36821 (Array (_ BitVec 32) (_ BitVec 64))) (size!37358 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76350)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44849 0))(
  ( (V!44850 (val!14952 Int)) )
))
(declare-datatypes ((ValueCell!14186 0))(
  ( (ValueCellFull!14186 (v!17591 V!44849)) (EmptyCell!14186) )
))
(declare-datatypes ((array!76352 0))(
  ( (array!76353 (arr!36822 (Array (_ BitVec 32) ValueCell!14186)) (size!37359 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76352)

(assert (=> b!1182313 (= res!785822 (and (= (size!37359 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37358 _keys!1208) (size!37359 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1182314 () Bool)

(declare-fun res!785819 () Bool)

(assert (=> b!1182314 (=> (not res!785819) (not e!672240))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76350 (_ BitVec 32)) Bool)

(assert (=> b!1182314 (= res!785819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!46514 () Bool)

(declare-fun mapRes!46514 () Bool)

(assert (=> mapIsEmpty!46514 mapRes!46514))

(declare-fun b!1182315 () Bool)

(declare-fun e!672233 () Bool)

(declare-fun tp_is_empty!29791 () Bool)

(assert (=> b!1182315 (= e!672233 tp_is_empty!29791)))

(declare-fun b!1182316 () Bool)

(declare-datatypes ((Unit!39040 0))(
  ( (Unit!39041) )
))
(declare-fun e!672236 () Unit!39040)

(declare-fun Unit!39042 () Unit!39040)

(assert (=> b!1182316 (= e!672236 Unit!39042)))

(declare-fun b!1182317 () Bool)

(declare-fun res!785828 () Bool)

(assert (=> b!1182317 (=> (not res!785828) (not e!672240))))

(declare-datatypes ((List!26042 0))(
  ( (Nil!26039) (Cons!26038 (h!27247 (_ BitVec 64)) (t!38302 List!26042)) )
))
(declare-fun arrayNoDuplicates!0 (array!76350 (_ BitVec 32) List!26042) Bool)

(assert (=> b!1182317 (= res!785828 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26039))))

(declare-fun b!1182318 () Bool)

(declare-fun res!785823 () Bool)

(assert (=> b!1182318 (=> (not res!785823) (not e!672240))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1182318 (= res!785823 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37358 _keys!1208))))))

(declare-fun b!1182319 () Bool)

(declare-fun res!785829 () Bool)

(declare-fun e!672239 () Bool)

(assert (=> b!1182319 (=> (not res!785829) (not e!672239))))

(declare-fun lt!535143 () array!76350)

(assert (=> b!1182319 (= res!785829 (arrayNoDuplicates!0 lt!535143 #b00000000000000000000000000000000 Nil!26039))))

(declare-fun b!1182320 () Bool)

(declare-fun e!672232 () Bool)

(declare-fun e!672235 () Bool)

(assert (=> b!1182320 (= e!672232 e!672235)))

(declare-fun res!785825 () Bool)

(assert (=> b!1182320 (=> res!785825 e!672235)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1182320 (= res!785825 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44849)

(declare-fun lt!535146 () array!76352)

(declare-datatypes ((tuple2!19280 0))(
  ( (tuple2!19281 (_1!9650 (_ BitVec 64)) (_2!9650 V!44849)) )
))
(declare-datatypes ((List!26043 0))(
  ( (Nil!26040) (Cons!26039 (h!27248 tuple2!19280) (t!38303 List!26043)) )
))
(declare-datatypes ((ListLongMap!17261 0))(
  ( (ListLongMap!17262 (toList!8646 List!26043)) )
))
(declare-fun lt!535142 () ListLongMap!17261)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44849)

(declare-fun getCurrentListMapNoExtraKeys!5068 (array!76350 array!76352 (_ BitVec 32) (_ BitVec 32) V!44849 V!44849 (_ BitVec 32) Int) ListLongMap!17261)

(assert (=> b!1182320 (= lt!535142 (getCurrentListMapNoExtraKeys!5068 lt!535143 lt!535146 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!535154 () V!44849)

(assert (=> b!1182320 (= lt!535146 (array!76353 (store (arr!36822 _values!996) i!673 (ValueCellFull!14186 lt!535154)) (size!37359 _values!996)))))

(declare-fun dynLambda!3036 (Int (_ BitVec 64)) V!44849)

(assert (=> b!1182320 (= lt!535154 (dynLambda!3036 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!535149 () ListLongMap!17261)

(assert (=> b!1182320 (= lt!535149 (getCurrentListMapNoExtraKeys!5068 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1182321 () Bool)

(assert (=> b!1182321 (= e!672240 e!672239)))

(declare-fun res!785820 () Bool)

(assert (=> b!1182321 (=> (not res!785820) (not e!672239))))

(assert (=> b!1182321 (= res!785820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!535143 mask!1564))))

(assert (=> b!1182321 (= lt!535143 (array!76351 (store (arr!36821 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37358 _keys!1208)))))

(declare-fun b!1182322 () Bool)

(declare-fun e!672241 () Bool)

(assert (=> b!1182322 (= e!672241 true)))

(declare-fun lt!535145 () ListLongMap!17261)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!535147 () ListLongMap!17261)

(declare-fun -!1635 (ListLongMap!17261 (_ BitVec 64)) ListLongMap!17261)

(assert (=> b!1182322 (= (-!1635 lt!535145 k!934) lt!535147)))

(declare-fun lt!535144 () ListLongMap!17261)

(declare-fun lt!535152 () Unit!39040)

(declare-fun lt!535148 () V!44849)

(declare-fun addRemoveCommutativeForDiffKeys!154 (ListLongMap!17261 (_ BitVec 64) V!44849 (_ BitVec 64)) Unit!39040)

(assert (=> b!1182322 (= lt!535152 (addRemoveCommutativeForDiffKeys!154 lt!535144 (select (arr!36821 _keys!1208) from!1455) lt!535148 k!934))))

(declare-fun lt!535137 () ListLongMap!17261)

(declare-fun lt!535151 () ListLongMap!17261)

(assert (=> b!1182322 (and (= lt!535149 lt!535145) (= lt!535151 lt!535137))))

(declare-fun lt!535140 () tuple2!19280)

(declare-fun +!3864 (ListLongMap!17261 tuple2!19280) ListLongMap!17261)

(assert (=> b!1182322 (= lt!535145 (+!3864 lt!535144 lt!535140))))

(assert (=> b!1182322 (not (= (select (arr!36821 _keys!1208) from!1455) k!934))))

(declare-fun lt!535138 () Unit!39040)

(assert (=> b!1182322 (= lt!535138 e!672236)))

(declare-fun c!116963 () Bool)

(assert (=> b!1182322 (= c!116963 (= (select (arr!36821 _keys!1208) from!1455) k!934))))

(declare-fun e!672237 () Bool)

(assert (=> b!1182322 e!672237))

(declare-fun res!785830 () Bool)

(assert (=> b!1182322 (=> (not res!785830) (not e!672237))))

(assert (=> b!1182322 (= res!785830 (= lt!535142 lt!535147))))

(assert (=> b!1182322 (= lt!535147 (+!3864 lt!535151 lt!535140))))

(assert (=> b!1182322 (= lt!535140 (tuple2!19281 (select (arr!36821 _keys!1208) from!1455) lt!535148))))

(declare-fun get!18874 (ValueCell!14186 V!44849) V!44849)

(assert (=> b!1182322 (= lt!535148 (get!18874 (select (arr!36822 _values!996) from!1455) lt!535154))))

(declare-fun b!1182323 () Bool)

(declare-fun res!785833 () Bool)

(assert (=> b!1182323 (=> (not res!785833) (not e!672240))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1182323 (= res!785833 (validKeyInArray!0 k!934))))

(declare-fun res!785826 () Bool)

(assert (=> start!99718 (=> (not res!785826) (not e!672240))))

(assert (=> start!99718 (= res!785826 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37358 _keys!1208))))))

(assert (=> start!99718 e!672240))

(assert (=> start!99718 tp_is_empty!29791))

(declare-fun array_inv!27990 (array!76350) Bool)

(assert (=> start!99718 (array_inv!27990 _keys!1208)))

(assert (=> start!99718 true))

(assert (=> start!99718 tp!88497))

(declare-fun e!672234 () Bool)

(declare-fun array_inv!27991 (array!76352) Bool)

(assert (=> start!99718 (and (array_inv!27991 _values!996) e!672234)))

(declare-fun mapNonEmpty!46514 () Bool)

(declare-fun tp!88498 () Bool)

(declare-fun e!672230 () Bool)

(assert (=> mapNonEmpty!46514 (= mapRes!46514 (and tp!88498 e!672230))))

(declare-fun mapRest!46514 () (Array (_ BitVec 32) ValueCell!14186))

(declare-fun mapKey!46514 () (_ BitVec 32))

(declare-fun mapValue!46514 () ValueCell!14186)

(assert (=> mapNonEmpty!46514 (= (arr!36822 _values!996) (store mapRest!46514 mapKey!46514 mapValue!46514))))

(declare-fun b!1182324 () Bool)

(assert (=> b!1182324 (= e!672235 e!672241)))

(declare-fun res!785827 () Bool)

(assert (=> b!1182324 (=> res!785827 e!672241)))

(assert (=> b!1182324 (= res!785827 (not (validKeyInArray!0 (select (arr!36821 _keys!1208) from!1455))))))

(assert (=> b!1182324 (= lt!535137 lt!535151)))

(assert (=> b!1182324 (= lt!535151 (-!1635 lt!535144 k!934))))

(assert (=> b!1182324 (= lt!535137 (getCurrentListMapNoExtraKeys!5068 lt!535143 lt!535146 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1182324 (= lt!535144 (getCurrentListMapNoExtraKeys!5068 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!535153 () Unit!39040)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!856 (array!76350 array!76352 (_ BitVec 32) (_ BitVec 32) V!44849 V!44849 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39040)

(assert (=> b!1182324 (= lt!535153 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!856 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1182325 () Bool)

(declare-fun e!672231 () Bool)

(assert (=> b!1182325 (= e!672237 e!672231)))

(declare-fun res!785832 () Bool)

(assert (=> b!1182325 (=> res!785832 e!672231)))

(assert (=> b!1182325 (= res!785832 (not (= (select (arr!36821 _keys!1208) from!1455) k!934)))))

(declare-fun b!1182326 () Bool)

(declare-fun arrayContainsKey!0 (array!76350 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1182326 (= e!672231 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1182327 () Bool)

(declare-fun res!785821 () Bool)

(assert (=> b!1182327 (=> (not res!785821) (not e!672240))))

(assert (=> b!1182327 (= res!785821 (= (select (arr!36821 _keys!1208) i!673) k!934))))

(declare-fun b!1182328 () Bool)

(declare-fun res!785824 () Bool)

(assert (=> b!1182328 (=> (not res!785824) (not e!672240))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1182328 (= res!785824 (validMask!0 mask!1564))))

(declare-fun b!1182329 () Bool)

(assert (=> b!1182329 (= e!672230 tp_is_empty!29791)))

(declare-fun b!1182330 () Bool)

(assert (=> b!1182330 (= e!672234 (and e!672233 mapRes!46514))))

(declare-fun condMapEmpty!46514 () Bool)

(declare-fun mapDefault!46514 () ValueCell!14186)

