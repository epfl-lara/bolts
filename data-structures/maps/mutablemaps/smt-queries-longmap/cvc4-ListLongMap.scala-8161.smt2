; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99872 () Bool)

(assert start!99872)

(declare-fun b_free!25415 () Bool)

(declare-fun b_next!25415 () Bool)

(assert (=> start!99872 (= b_free!25415 (not b_next!25415))))

(declare-fun tp!88960 () Bool)

(declare-fun b_and!41711 () Bool)

(assert (=> start!99872 (= tp!88960 b_and!41711)))

(declare-fun b!1187087 () Bool)

(declare-fun res!789294 () Bool)

(declare-fun e!675004 () Bool)

(assert (=> b!1187087 (=> (not res!789294) (not e!675004))))

(declare-datatypes ((array!76658 0))(
  ( (array!76659 (arr!36975 (Array (_ BitVec 32) (_ BitVec 64))) (size!37512 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76658)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45053 0))(
  ( (V!45054 (val!15029 Int)) )
))
(declare-datatypes ((ValueCell!14263 0))(
  ( (ValueCellFull!14263 (v!17668 V!45053)) (EmptyCell!14263) )
))
(declare-datatypes ((array!76660 0))(
  ( (array!76661 (arr!36976 (Array (_ BitVec 32) ValueCell!14263)) (size!37513 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76660)

(assert (=> b!1187087 (= res!789294 (and (= (size!37513 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37512 _keys!1208) (size!37513 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!789296 () Bool)

(assert (=> start!99872 (=> (not res!789296) (not e!675004))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99872 (= res!789296 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37512 _keys!1208))))))

(assert (=> start!99872 e!675004))

(declare-fun tp_is_empty!29945 () Bool)

(assert (=> start!99872 tp_is_empty!29945))

(declare-fun array_inv!28096 (array!76658) Bool)

(assert (=> start!99872 (array_inv!28096 _keys!1208)))

(assert (=> start!99872 true))

(assert (=> start!99872 tp!88960))

(declare-fun e!675010 () Bool)

(declare-fun array_inv!28097 (array!76660) Bool)

(assert (=> start!99872 (and (array_inv!28097 _values!996) e!675010)))

(declare-fun b!1187088 () Bool)

(declare-fun res!789298 () Bool)

(assert (=> b!1187088 (=> (not res!789298) (not e!675004))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1187088 (= res!789298 (= (select (arr!36975 _keys!1208) i!673) k!934))))

(declare-fun b!1187089 () Bool)

(declare-fun res!789286 () Bool)

(assert (=> b!1187089 (=> (not res!789286) (not e!675004))))

(assert (=> b!1187089 (= res!789286 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37512 _keys!1208))))))

(declare-fun b!1187090 () Bool)

(declare-fun e!675006 () Bool)

(assert (=> b!1187090 (= e!675006 true)))

(declare-datatypes ((tuple2!19420 0))(
  ( (tuple2!19421 (_1!9720 (_ BitVec 64)) (_2!9720 V!45053)) )
))
(declare-datatypes ((List!26179 0))(
  ( (Nil!26176) (Cons!26175 (h!27384 tuple2!19420) (t!38593 List!26179)) )
))
(declare-datatypes ((ListLongMap!17401 0))(
  ( (ListLongMap!17402 (toList!8716 List!26179)) )
))
(declare-fun lt!539535 () ListLongMap!17401)

(declare-fun lt!539538 () ListLongMap!17401)

(declare-fun -!1701 (ListLongMap!17401 (_ BitVec 64)) ListLongMap!17401)

(assert (=> b!1187090 (= (-!1701 lt!539535 k!934) lt!539538)))

(declare-datatypes ((Unit!39289 0))(
  ( (Unit!39290) )
))
(declare-fun lt!539544 () Unit!39289)

(declare-fun lt!539529 () V!45053)

(declare-fun lt!539527 () ListLongMap!17401)

(declare-fun addRemoveCommutativeForDiffKeys!208 (ListLongMap!17401 (_ BitVec 64) V!45053 (_ BitVec 64)) Unit!39289)

(assert (=> b!1187090 (= lt!539544 (addRemoveCommutativeForDiffKeys!208 lt!539527 (select (arr!36975 _keys!1208) from!1455) lt!539529 k!934))))

(declare-fun lt!539528 () ListLongMap!17401)

(declare-fun lt!539540 () ListLongMap!17401)

(declare-fun lt!539531 () ListLongMap!17401)

(assert (=> b!1187090 (and (= lt!539540 lt!539535) (= lt!539528 lt!539531))))

(declare-fun lt!539541 () tuple2!19420)

(declare-fun +!3918 (ListLongMap!17401 tuple2!19420) ListLongMap!17401)

(assert (=> b!1187090 (= lt!539535 (+!3918 lt!539527 lt!539541))))

(assert (=> b!1187090 (not (= (select (arr!36975 _keys!1208) from!1455) k!934))))

(declare-fun lt!539534 () Unit!39289)

(declare-fun e!675008 () Unit!39289)

(assert (=> b!1187090 (= lt!539534 e!675008)))

(declare-fun c!117194 () Bool)

(assert (=> b!1187090 (= c!117194 (= (select (arr!36975 _keys!1208) from!1455) k!934))))

(declare-fun e!675005 () Bool)

(assert (=> b!1187090 e!675005))

(declare-fun res!789285 () Bool)

(assert (=> b!1187090 (=> (not res!789285) (not e!675005))))

(declare-fun lt!539533 () ListLongMap!17401)

(assert (=> b!1187090 (= res!789285 (= lt!539533 lt!539538))))

(assert (=> b!1187090 (= lt!539538 (+!3918 lt!539528 lt!539541))))

(assert (=> b!1187090 (= lt!539541 (tuple2!19421 (select (arr!36975 _keys!1208) from!1455) lt!539529))))

(declare-fun lt!539530 () V!45053)

(declare-fun get!18978 (ValueCell!14263 V!45053) V!45053)

(assert (=> b!1187090 (= lt!539529 (get!18978 (select (arr!36976 _values!996) from!1455) lt!539530))))

(declare-fun mapNonEmpty!46745 () Bool)

(declare-fun mapRes!46745 () Bool)

(declare-fun tp!88959 () Bool)

(declare-fun e!675003 () Bool)

(assert (=> mapNonEmpty!46745 (= mapRes!46745 (and tp!88959 e!675003))))

(declare-fun mapValue!46745 () ValueCell!14263)

(declare-fun mapKey!46745 () (_ BitVec 32))

(declare-fun mapRest!46745 () (Array (_ BitVec 32) ValueCell!14263))

(assert (=> mapNonEmpty!46745 (= (arr!36976 _values!996) (store mapRest!46745 mapKey!46745 mapValue!46745))))

(declare-fun b!1187091 () Bool)

(declare-fun res!789292 () Bool)

(assert (=> b!1187091 (=> (not res!789292) (not e!675004))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76658 (_ BitVec 32)) Bool)

(assert (=> b!1187091 (= res!789292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1187092 () Bool)

(declare-fun e!675011 () Bool)

(assert (=> b!1187092 (= e!675011 e!675006)))

(declare-fun res!789287 () Bool)

(assert (=> b!1187092 (=> res!789287 e!675006)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1187092 (= res!789287 (not (validKeyInArray!0 (select (arr!36975 _keys!1208) from!1455))))))

(assert (=> b!1187092 (= lt!539531 lt!539528)))

(assert (=> b!1187092 (= lt!539528 (-!1701 lt!539527 k!934))))

(declare-fun zeroValue!944 () V!45053)

(declare-fun lt!539526 () array!76660)

(declare-fun lt!539542 () array!76658)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45053)

(declare-fun getCurrentListMapNoExtraKeys!5131 (array!76658 array!76660 (_ BitVec 32) (_ BitVec 32) V!45053 V!45053 (_ BitVec 32) Int) ListLongMap!17401)

(assert (=> b!1187092 (= lt!539531 (getCurrentListMapNoExtraKeys!5131 lt!539542 lt!539526 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1187092 (= lt!539527 (getCurrentListMapNoExtraKeys!5131 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!539536 () Unit!39289)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!910 (array!76658 array!76660 (_ BitVec 32) (_ BitVec 32) V!45053 V!45053 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39289)

(assert (=> b!1187092 (= lt!539536 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!910 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!46745 () Bool)

(assert (=> mapIsEmpty!46745 mapRes!46745))

(declare-fun e!675013 () Bool)

(declare-fun b!1187093 () Bool)

(declare-fun arrayContainsKey!0 (array!76658 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1187093 (= e!675013 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1187094 () Bool)

(declare-fun e!675002 () Bool)

(assert (=> b!1187094 (= e!675004 e!675002)))

(declare-fun res!789289 () Bool)

(assert (=> b!1187094 (=> (not res!789289) (not e!675002))))

(assert (=> b!1187094 (= res!789289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!539542 mask!1564))))

(assert (=> b!1187094 (= lt!539542 (array!76659 (store (arr!36975 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37512 _keys!1208)))))

(declare-fun b!1187095 () Bool)

(declare-fun res!789284 () Bool)

(assert (=> b!1187095 (=> (not res!789284) (not e!675004))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1187095 (= res!789284 (validMask!0 mask!1564))))

(declare-fun b!1187096 () Bool)

(declare-fun res!789291 () Bool)

(assert (=> b!1187096 (=> (not res!789291) (not e!675004))))

(assert (=> b!1187096 (= res!789291 (validKeyInArray!0 k!934))))

(declare-fun b!1187097 () Bool)

(declare-fun res!789297 () Bool)

(assert (=> b!1187097 (=> (not res!789297) (not e!675002))))

(declare-datatypes ((List!26180 0))(
  ( (Nil!26177) (Cons!26176 (h!27385 (_ BitVec 64)) (t!38594 List!26180)) )
))
(declare-fun arrayNoDuplicates!0 (array!76658 (_ BitVec 32) List!26180) Bool)

(assert (=> b!1187097 (= res!789297 (arrayNoDuplicates!0 lt!539542 #b00000000000000000000000000000000 Nil!26177))))

(declare-fun b!1187098 () Bool)

(declare-fun res!789293 () Bool)

(assert (=> b!1187098 (=> (not res!789293) (not e!675004))))

(assert (=> b!1187098 (= res!789293 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26177))))

(declare-fun b!1187099 () Bool)

(declare-fun e!675009 () Bool)

(assert (=> b!1187099 (= e!675009 e!675011)))

(declare-fun res!789290 () Bool)

(assert (=> b!1187099 (=> res!789290 e!675011)))

(assert (=> b!1187099 (= res!789290 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1187099 (= lt!539533 (getCurrentListMapNoExtraKeys!5131 lt!539542 lt!539526 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1187099 (= lt!539526 (array!76661 (store (arr!36976 _values!996) i!673 (ValueCellFull!14263 lt!539530)) (size!37513 _values!996)))))

(declare-fun dynLambda!3088 (Int (_ BitVec 64)) V!45053)

(assert (=> b!1187099 (= lt!539530 (dynLambda!3088 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1187099 (= lt!539540 (getCurrentListMapNoExtraKeys!5131 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1187100 () Bool)

(declare-fun e!675007 () Bool)

(assert (=> b!1187100 (= e!675010 (and e!675007 mapRes!46745))))

(declare-fun condMapEmpty!46745 () Bool)

(declare-fun mapDefault!46745 () ValueCell!14263)

