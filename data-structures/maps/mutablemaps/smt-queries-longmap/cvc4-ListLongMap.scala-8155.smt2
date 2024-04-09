; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99836 () Bool)

(assert start!99836)

(declare-fun b_free!25379 () Bool)

(declare-fun b_next!25379 () Bool)

(assert (=> start!99836 (= b_free!25379 (not b_next!25379))))

(declare-fun tp!88852 () Bool)

(declare-fun b_and!41639 () Bool)

(assert (=> start!99836 (= tp!88852 b_and!41639)))

(declare-fun b!1185971 () Bool)

(declare-fun res!788486 () Bool)

(declare-fun e!674358 () Bool)

(assert (=> b!1185971 (=> (not res!788486) (not e!674358))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1185971 (= res!788486 (validKeyInArray!0 k!934))))

(declare-fun b!1185972 () Bool)

(declare-fun res!788485 () Bool)

(assert (=> b!1185972 (=> (not res!788485) (not e!674358))))

(declare-datatypes ((array!76586 0))(
  ( (array!76587 (arr!36939 (Array (_ BitVec 32) (_ BitVec 64))) (size!37476 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76586)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45005 0))(
  ( (V!45006 (val!15011 Int)) )
))
(declare-datatypes ((ValueCell!14245 0))(
  ( (ValueCellFull!14245 (v!17650 V!45005)) (EmptyCell!14245) )
))
(declare-datatypes ((array!76588 0))(
  ( (array!76589 (arr!36940 (Array (_ BitVec 32) ValueCell!14245)) (size!37477 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76588)

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1185972 (= res!788485 (and (= (size!37477 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37476 _keys!1208) (size!37477 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1185973 () Bool)

(declare-fun res!788488 () Bool)

(assert (=> b!1185973 (=> (not res!788488) (not e!674358))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1185973 (= res!788488 (= (select (arr!36939 _keys!1208) i!673) k!934))))

(declare-fun b!1185974 () Bool)

(declare-fun e!674362 () Bool)

(declare-fun tp_is_empty!29909 () Bool)

(assert (=> b!1185974 (= e!674362 tp_is_empty!29909)))

(declare-fun b!1185975 () Bool)

(declare-fun e!674356 () Bool)

(declare-fun e!674355 () Bool)

(assert (=> b!1185975 (= e!674356 e!674355)))

(declare-fun res!788474 () Bool)

(assert (=> b!1185975 (=> res!788474 e!674355)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1185975 (= res!788474 (not (= (select (arr!36939 _keys!1208) from!1455) k!934)))))

(declare-fun b!1185976 () Bool)

(declare-fun res!788476 () Bool)

(assert (=> b!1185976 (=> (not res!788476) (not e!674358))))

(declare-datatypes ((List!26147 0))(
  ( (Nil!26144) (Cons!26143 (h!27352 (_ BitVec 64)) (t!38525 List!26147)) )
))
(declare-fun arrayNoDuplicates!0 (array!76586 (_ BitVec 32) List!26147) Bool)

(assert (=> b!1185976 (= res!788476 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26144))))

(declare-fun b!1185978 () Bool)

(declare-datatypes ((Unit!39227 0))(
  ( (Unit!39228) )
))
(declare-fun e!674365 () Unit!39227)

(declare-fun Unit!39229 () Unit!39227)

(assert (=> b!1185978 (= e!674365 Unit!39229)))

(declare-fun b!1185979 () Bool)

(declare-fun res!788478 () Bool)

(assert (=> b!1185979 (=> (not res!788478) (not e!674358))))

(assert (=> b!1185979 (= res!788478 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37476 _keys!1208))))))

(declare-fun b!1185980 () Bool)

(declare-fun e!674361 () Bool)

(declare-fun e!674364 () Bool)

(assert (=> b!1185980 (= e!674361 e!674364)))

(declare-fun res!788475 () Bool)

(assert (=> b!1185980 (=> res!788475 e!674364)))

(assert (=> b!1185980 (= res!788475 (not (validKeyInArray!0 (select (arr!36939 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19386 0))(
  ( (tuple2!19387 (_1!9703 (_ BitVec 64)) (_2!9703 V!45005)) )
))
(declare-datatypes ((List!26148 0))(
  ( (Nil!26145) (Cons!26144 (h!27353 tuple2!19386) (t!38526 List!26148)) )
))
(declare-datatypes ((ListLongMap!17367 0))(
  ( (ListLongMap!17368 (toList!8699 List!26148)) )
))
(declare-fun lt!538510 () ListLongMap!17367)

(declare-fun lt!538500 () ListLongMap!17367)

(assert (=> b!1185980 (= lt!538510 lt!538500)))

(declare-fun lt!538518 () ListLongMap!17367)

(declare-fun -!1684 (ListLongMap!17367 (_ BitVec 64)) ListLongMap!17367)

(assert (=> b!1185980 (= lt!538500 (-!1684 lt!538518 k!934))))

(declare-fun zeroValue!944 () V!45005)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!538516 () array!76588)

(declare-fun lt!538506 () array!76586)

(declare-fun minValue!944 () V!45005)

(declare-fun getCurrentListMapNoExtraKeys!5117 (array!76586 array!76588 (_ BitVec 32) (_ BitVec 32) V!45005 V!45005 (_ BitVec 32) Int) ListLongMap!17367)

(assert (=> b!1185980 (= lt!538510 (getCurrentListMapNoExtraKeys!5117 lt!538506 lt!538516 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1185980 (= lt!538518 (getCurrentListMapNoExtraKeys!5117 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!538513 () Unit!39227)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!897 (array!76586 array!76588 (_ BitVec 32) (_ BitVec 32) V!45005 V!45005 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39227)

(assert (=> b!1185980 (= lt!538513 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!897 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!46691 () Bool)

(declare-fun mapRes!46691 () Bool)

(declare-fun tp!88851 () Bool)

(declare-fun e!674363 () Bool)

(assert (=> mapNonEmpty!46691 (= mapRes!46691 (and tp!88851 e!674363))))

(declare-fun mapRest!46691 () (Array (_ BitVec 32) ValueCell!14245))

(declare-fun mapValue!46691 () ValueCell!14245)

(declare-fun mapKey!46691 () (_ BitVec 32))

(assert (=> mapNonEmpty!46691 (= (arr!36940 _values!996) (store mapRest!46691 mapKey!46691 mapValue!46691))))

(declare-fun b!1185981 () Bool)

(assert (=> b!1185981 (= e!674363 tp_is_empty!29909)))

(declare-fun b!1185982 () Bool)

(declare-fun res!788487 () Bool)

(assert (=> b!1185982 (=> (not res!788487) (not e!674358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1185982 (= res!788487 (validMask!0 mask!1564))))

(declare-fun b!1185983 () Bool)

(declare-fun e!674357 () Bool)

(assert (=> b!1185983 (= e!674358 e!674357)))

(declare-fun res!788477 () Bool)

(assert (=> b!1185983 (=> (not res!788477) (not e!674357))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76586 (_ BitVec 32)) Bool)

(assert (=> b!1185983 (= res!788477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!538506 mask!1564))))

(assert (=> b!1185983 (= lt!538506 (array!76587 (store (arr!36939 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37476 _keys!1208)))))

(declare-fun b!1185984 () Bool)

(declare-fun e!674360 () Bool)

(assert (=> b!1185984 (= e!674360 e!674361)))

(declare-fun res!788483 () Bool)

(assert (=> b!1185984 (=> res!788483 e!674361)))

(assert (=> b!1185984 (= res!788483 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!538517 () ListLongMap!17367)

(assert (=> b!1185984 (= lt!538517 (getCurrentListMapNoExtraKeys!5117 lt!538506 lt!538516 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!538504 () V!45005)

(assert (=> b!1185984 (= lt!538516 (array!76589 (store (arr!36940 _values!996) i!673 (ValueCellFull!14245 lt!538504)) (size!37477 _values!996)))))

(declare-fun dynLambda!3077 (Int (_ BitVec 64)) V!45005)

(assert (=> b!1185984 (= lt!538504 (dynLambda!3077 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!538501 () ListLongMap!17367)

(assert (=> b!1185984 (= lt!538501 (getCurrentListMapNoExtraKeys!5117 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!46691 () Bool)

(assert (=> mapIsEmpty!46691 mapRes!46691))

(declare-fun b!1185985 () Bool)

(declare-fun e!674359 () Bool)

(assert (=> b!1185985 (= e!674359 (and e!674362 mapRes!46691))))

(declare-fun condMapEmpty!46691 () Bool)

(declare-fun mapDefault!46691 () ValueCell!14245)

