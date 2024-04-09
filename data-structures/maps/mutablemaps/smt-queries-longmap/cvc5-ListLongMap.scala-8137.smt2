; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99724 () Bool)

(assert start!99724)

(declare-fun b_free!25267 () Bool)

(declare-fun b_next!25267 () Bool)

(assert (=> start!99724 (= b_free!25267 (not b_next!25267))))

(declare-fun tp!88515 () Bool)

(declare-fun b_and!41415 () Bool)

(assert (=> start!99724 (= tp!88515 b_and!41415)))

(declare-fun mapIsEmpty!46523 () Bool)

(declare-fun mapRes!46523 () Bool)

(assert (=> mapIsEmpty!46523 mapRes!46523))

(declare-fun b!1182499 () Bool)

(declare-fun e!672347 () Bool)

(declare-fun tp_is_empty!29797 () Bool)

(assert (=> b!1182499 (= e!672347 tp_is_empty!29797)))

(declare-fun res!785967 () Bool)

(declare-fun e!672340 () Bool)

(assert (=> start!99724 (=> (not res!785967) (not e!672340))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76362 0))(
  ( (array!76363 (arr!36827 (Array (_ BitVec 32) (_ BitVec 64))) (size!37364 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76362)

(assert (=> start!99724 (= res!785967 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37364 _keys!1208))))))

(assert (=> start!99724 e!672340))

(assert (=> start!99724 tp_is_empty!29797))

(declare-fun array_inv!27996 (array!76362) Bool)

(assert (=> start!99724 (array_inv!27996 _keys!1208)))

(assert (=> start!99724 true))

(assert (=> start!99724 tp!88515))

(declare-datatypes ((V!44857 0))(
  ( (V!44858 (val!14955 Int)) )
))
(declare-datatypes ((ValueCell!14189 0))(
  ( (ValueCellFull!14189 (v!17594 V!44857)) (EmptyCell!14189) )
))
(declare-datatypes ((array!76364 0))(
  ( (array!76365 (arr!36828 (Array (_ BitVec 32) ValueCell!14189)) (size!37365 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76364)

(declare-fun e!672348 () Bool)

(declare-fun array_inv!27997 (array!76364) Bool)

(assert (=> start!99724 (and (array_inv!27997 _values!996) e!672348)))

(declare-fun b!1182500 () Bool)

(declare-fun res!785965 () Bool)

(assert (=> b!1182500 (=> (not res!785965) (not e!672340))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1182500 (= res!785965 (validMask!0 mask!1564))))

(declare-fun b!1182501 () Bool)

(declare-fun e!672346 () Bool)

(declare-fun e!672343 () Bool)

(assert (=> b!1182501 (= e!672346 e!672343)))

(declare-fun res!785954 () Bool)

(assert (=> b!1182501 (=> res!785954 e!672343)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1182501 (= res!785954 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44857)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!535317 () array!76362)

(declare-fun lt!535312 () array!76364)

(declare-datatypes ((tuple2!19286 0))(
  ( (tuple2!19287 (_1!9653 (_ BitVec 64)) (_2!9653 V!44857)) )
))
(declare-datatypes ((List!26048 0))(
  ( (Nil!26045) (Cons!26044 (h!27253 tuple2!19286) (t!38314 List!26048)) )
))
(declare-datatypes ((ListLongMap!17267 0))(
  ( (ListLongMap!17268 (toList!8649 List!26048)) )
))
(declare-fun lt!535324 () ListLongMap!17267)

(declare-fun minValue!944 () V!44857)

(declare-fun getCurrentListMapNoExtraKeys!5071 (array!76362 array!76364 (_ BitVec 32) (_ BitVec 32) V!44857 V!44857 (_ BitVec 32) Int) ListLongMap!17267)

(assert (=> b!1182501 (= lt!535324 (getCurrentListMapNoExtraKeys!5071 lt!535317 lt!535312 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!535313 () V!44857)

(assert (=> b!1182501 (= lt!535312 (array!76365 (store (arr!36828 _values!996) i!673 (ValueCellFull!14189 lt!535313)) (size!37365 _values!996)))))

(declare-fun dynLambda!3039 (Int (_ BitVec 64)) V!44857)

(assert (=> b!1182501 (= lt!535313 (dynLambda!3039 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!535321 () ListLongMap!17267)

(assert (=> b!1182501 (= lt!535321 (getCurrentListMapNoExtraKeys!5071 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1182502 () Bool)

(declare-fun res!785962 () Bool)

(assert (=> b!1182502 (=> (not res!785962) (not e!672340))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1182502 (= res!785962 (= (select (arr!36827 _keys!1208) i!673) k!934))))

(declare-fun b!1182503 () Bool)

(declare-fun e!672338 () Bool)

(assert (=> b!1182503 (= e!672338 tp_is_empty!29797)))

(declare-fun b!1182504 () Bool)

(declare-fun e!672342 () Bool)

(declare-fun arrayContainsKey!0 (array!76362 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1182504 (= e!672342 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1182505 () Bool)

(declare-fun res!785963 () Bool)

(assert (=> b!1182505 (=> (not res!785963) (not e!672340))))

(declare-datatypes ((List!26049 0))(
  ( (Nil!26046) (Cons!26045 (h!27254 (_ BitVec 64)) (t!38315 List!26049)) )
))
(declare-fun arrayNoDuplicates!0 (array!76362 (_ BitVec 32) List!26049) Bool)

(assert (=> b!1182505 (= res!785963 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26046))))

(declare-fun b!1182506 () Bool)

(declare-fun res!785966 () Bool)

(assert (=> b!1182506 (=> (not res!785966) (not e!672340))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76362 (_ BitVec 32)) Bool)

(assert (=> b!1182506 (= res!785966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1182507 () Bool)

(declare-fun res!785960 () Bool)

(assert (=> b!1182507 (=> (not res!785960) (not e!672340))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1182507 (= res!785960 (validKeyInArray!0 k!934))))

(declare-fun b!1182508 () Bool)

(declare-fun res!785961 () Bool)

(declare-fun e!672339 () Bool)

(assert (=> b!1182508 (=> (not res!785961) (not e!672339))))

(assert (=> b!1182508 (= res!785961 (arrayNoDuplicates!0 lt!535317 #b00000000000000000000000000000000 Nil!26046))))

(declare-fun b!1182509 () Bool)

(declare-datatypes ((Unit!39051 0))(
  ( (Unit!39052) )
))
(declare-fun e!672344 () Unit!39051)

(declare-fun Unit!39053 () Unit!39051)

(assert (=> b!1182509 (= e!672344 Unit!39053)))

(declare-fun b!1182510 () Bool)

(declare-fun Unit!39054 () Unit!39051)

(assert (=> b!1182510 (= e!672344 Unit!39054)))

(declare-fun lt!535310 () Unit!39051)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76362 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39051)

(assert (=> b!1182510 (= lt!535310 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1182510 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!535320 () Unit!39051)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76362 (_ BitVec 32) (_ BitVec 32)) Unit!39051)

(assert (=> b!1182510 (= lt!535320 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1182510 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26046)))

(declare-fun lt!535319 () Unit!39051)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76362 (_ BitVec 64) (_ BitVec 32) List!26049) Unit!39051)

(assert (=> b!1182510 (= lt!535319 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26046))))

(assert (=> b!1182510 false))

(declare-fun b!1182511 () Bool)

(assert (=> b!1182511 (= e!672340 e!672339)))

(declare-fun res!785958 () Bool)

(assert (=> b!1182511 (=> (not res!785958) (not e!672339))))

(assert (=> b!1182511 (= res!785958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!535317 mask!1564))))

(assert (=> b!1182511 (= lt!535317 (array!76363 (store (arr!36827 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37364 _keys!1208)))))

(declare-fun b!1182512 () Bool)

(assert (=> b!1182512 (= e!672339 (not e!672346))))

(declare-fun res!785964 () Bool)

(assert (=> b!1182512 (=> res!785964 e!672346)))

(assert (=> b!1182512 (= res!785964 (bvsgt from!1455 i!673))))

(assert (=> b!1182512 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!535322 () Unit!39051)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76362 (_ BitVec 64) (_ BitVec 32)) Unit!39051)

(assert (=> b!1182512 (= lt!535322 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1182513 () Bool)

(declare-fun e!672341 () Bool)

(assert (=> b!1182513 (= e!672341 true)))

(declare-fun lt!535311 () ListLongMap!17267)

(declare-fun lt!535325 () ListLongMap!17267)

(declare-fun -!1638 (ListLongMap!17267 (_ BitVec 64)) ListLongMap!17267)

(assert (=> b!1182513 (= (-!1638 lt!535311 k!934) lt!535325)))

(declare-fun lt!535326 () Unit!39051)

(declare-fun lt!535308 () ListLongMap!17267)

(declare-fun lt!535315 () V!44857)

(declare-fun addRemoveCommutativeForDiffKeys!157 (ListLongMap!17267 (_ BitVec 64) V!44857 (_ BitVec 64)) Unit!39051)

(assert (=> b!1182513 (= lt!535326 (addRemoveCommutativeForDiffKeys!157 lt!535308 (select (arr!36827 _keys!1208) from!1455) lt!535315 k!934))))

(declare-fun lt!535318 () ListLongMap!17267)

(declare-fun lt!535314 () ListLongMap!17267)

(assert (=> b!1182513 (and (= lt!535321 lt!535311) (= lt!535314 lt!535318))))

(declare-fun lt!535316 () tuple2!19286)

(declare-fun +!3867 (ListLongMap!17267 tuple2!19286) ListLongMap!17267)

(assert (=> b!1182513 (= lt!535311 (+!3867 lt!535308 lt!535316))))

(assert (=> b!1182513 (not (= (select (arr!36827 _keys!1208) from!1455) k!934))))

(declare-fun lt!535323 () Unit!39051)

(assert (=> b!1182513 (= lt!535323 e!672344)))

(declare-fun c!116972 () Bool)

(assert (=> b!1182513 (= c!116972 (= (select (arr!36827 _keys!1208) from!1455) k!934))))

(declare-fun e!672345 () Bool)

(assert (=> b!1182513 e!672345))

(declare-fun res!785956 () Bool)

(assert (=> b!1182513 (=> (not res!785956) (not e!672345))))

(assert (=> b!1182513 (= res!785956 (= lt!535324 lt!535325))))

(assert (=> b!1182513 (= lt!535325 (+!3867 lt!535314 lt!535316))))

(assert (=> b!1182513 (= lt!535316 (tuple2!19287 (select (arr!36827 _keys!1208) from!1455) lt!535315))))

(declare-fun get!18879 (ValueCell!14189 V!44857) V!44857)

(assert (=> b!1182513 (= lt!535315 (get!18879 (select (arr!36828 _values!996) from!1455) lt!535313))))

(declare-fun b!1182514 () Bool)

(assert (=> b!1182514 (= e!672348 (and e!672338 mapRes!46523))))

(declare-fun condMapEmpty!46523 () Bool)

(declare-fun mapDefault!46523 () ValueCell!14189)

