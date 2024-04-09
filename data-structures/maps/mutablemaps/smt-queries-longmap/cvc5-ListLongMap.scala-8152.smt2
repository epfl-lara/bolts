; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99814 () Bool)

(assert start!99814)

(declare-fun b_free!25357 () Bool)

(declare-fun b_next!25357 () Bool)

(assert (=> start!99814 (= b_free!25357 (not b_next!25357))))

(declare-fun tp!88786 () Bool)

(declare-fun b_and!41595 () Bool)

(assert (=> start!99814 (= tp!88786 b_and!41595)))

(declare-fun b!1185289 () Bool)

(declare-fun res!787992 () Bool)

(declare-fun e!673966 () Bool)

(assert (=> b!1185289 (=> (not res!787992) (not e!673966))))

(declare-datatypes ((array!76542 0))(
  ( (array!76543 (arr!36917 (Array (_ BitVec 32) (_ BitVec 64))) (size!37454 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76542)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1185289 (= res!787992 (= (select (arr!36917 _keys!1208) i!673) k!934))))

(declare-fun b!1185290 () Bool)

(declare-fun e!673969 () Bool)

(declare-fun e!673958 () Bool)

(assert (=> b!1185290 (= e!673969 e!673958)))

(declare-fun res!787984 () Bool)

(assert (=> b!1185290 (=> res!787984 e!673958)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1185290 (= res!787984 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((V!44977 0))(
  ( (V!44978 (val!15000 Int)) )
))
(declare-fun minValue!944 () V!44977)

(declare-datatypes ((tuple2!19364 0))(
  ( (tuple2!19365 (_1!9692 (_ BitVec 64)) (_2!9692 V!44977)) )
))
(declare-datatypes ((List!26125 0))(
  ( (Nil!26122) (Cons!26121 (h!27330 tuple2!19364) (t!38481 List!26125)) )
))
(declare-datatypes ((ListLongMap!17345 0))(
  ( (ListLongMap!17346 (toList!8688 List!26125)) )
))
(declare-fun lt!537881 () ListLongMap!17345)

(declare-datatypes ((ValueCell!14234 0))(
  ( (ValueCellFull!14234 (v!17639 V!44977)) (EmptyCell!14234) )
))
(declare-datatypes ((array!76544 0))(
  ( (array!76545 (arr!36918 (Array (_ BitVec 32) ValueCell!14234)) (size!37455 (_ BitVec 32))) )
))
(declare-fun lt!537886 () array!76544)

(declare-fun zeroValue!944 () V!44977)

(declare-fun lt!537876 () array!76542)

(declare-fun getCurrentListMapNoExtraKeys!5107 (array!76542 array!76544 (_ BitVec 32) (_ BitVec 32) V!44977 V!44977 (_ BitVec 32) Int) ListLongMap!17345)

(assert (=> b!1185290 (= lt!537881 (getCurrentListMapNoExtraKeys!5107 lt!537876 lt!537886 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!537888 () V!44977)

(declare-fun _values!996 () array!76544)

(assert (=> b!1185290 (= lt!537886 (array!76545 (store (arr!36918 _values!996) i!673 (ValueCellFull!14234 lt!537888)) (size!37455 _values!996)))))

(declare-fun dynLambda!3067 (Int (_ BitVec 64)) V!44977)

(assert (=> b!1185290 (= lt!537888 (dynLambda!3067 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!537883 () ListLongMap!17345)

(assert (=> b!1185290 (= lt!537883 (getCurrentListMapNoExtraKeys!5107 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1185291 () Bool)

(declare-fun res!787979 () Bool)

(assert (=> b!1185291 (=> (not res!787979) (not e!673966))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76542 (_ BitVec 32)) Bool)

(assert (=> b!1185291 (= res!787979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1185292 () Bool)

(declare-datatypes ((Unit!39186 0))(
  ( (Unit!39187) )
))
(declare-fun e!673965 () Unit!39186)

(declare-fun Unit!39188 () Unit!39186)

(assert (=> b!1185292 (= e!673965 Unit!39188)))

(declare-fun mapNonEmpty!46658 () Bool)

(declare-fun mapRes!46658 () Bool)

(declare-fun tp!88785 () Bool)

(declare-fun e!673962 () Bool)

(assert (=> mapNonEmpty!46658 (= mapRes!46658 (and tp!88785 e!673962))))

(declare-fun mapValue!46658 () ValueCell!14234)

(declare-fun mapKey!46658 () (_ BitVec 32))

(declare-fun mapRest!46658 () (Array (_ BitVec 32) ValueCell!14234))

(assert (=> mapNonEmpty!46658 (= (arr!36918 _values!996) (store mapRest!46658 mapKey!46658 mapValue!46658))))

(declare-fun b!1185293 () Bool)

(declare-fun res!787987 () Bool)

(declare-fun e!673964 () Bool)

(assert (=> b!1185293 (=> (not res!787987) (not e!673964))))

(declare-datatypes ((List!26126 0))(
  ( (Nil!26123) (Cons!26122 (h!27331 (_ BitVec 64)) (t!38482 List!26126)) )
))
(declare-fun arrayNoDuplicates!0 (array!76542 (_ BitVec 32) List!26126) Bool)

(assert (=> b!1185293 (= res!787987 (arrayNoDuplicates!0 lt!537876 #b00000000000000000000000000000000 Nil!26123))))

(declare-fun b!1185294 () Bool)

(declare-fun res!787983 () Bool)

(assert (=> b!1185294 (=> (not res!787983) (not e!673966))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1185294 (= res!787983 (validMask!0 mask!1564))))

(declare-fun e!673959 () Bool)

(declare-fun b!1185295 () Bool)

(declare-fun arrayContainsKey!0 (array!76542 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1185295 (= e!673959 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1185296 () Bool)

(assert (=> b!1185296 (= e!673966 e!673964)))

(declare-fun res!787980 () Bool)

(assert (=> b!1185296 (=> (not res!787980) (not e!673964))))

(assert (=> b!1185296 (= res!787980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!537876 mask!1564))))

(assert (=> b!1185296 (= lt!537876 (array!76543 (store (arr!36917 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37454 _keys!1208)))))

(declare-fun b!1185297 () Bool)

(declare-fun e!673960 () Bool)

(declare-fun e!673968 () Bool)

(assert (=> b!1185297 (= e!673960 (and e!673968 mapRes!46658))))

(declare-fun condMapEmpty!46658 () Bool)

(declare-fun mapDefault!46658 () ValueCell!14234)

