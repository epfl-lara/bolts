; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100026 () Bool)

(assert start!100026)

(declare-fun b_free!25569 () Bool)

(declare-fun b_next!25569 () Bool)

(assert (=> start!100026 (= b_free!25569 (not b_next!25569))))

(declare-fun tp!89422 () Bool)

(declare-fun b_and!42019 () Bool)

(assert (=> start!100026 (= tp!89422 b_and!42019)))

(declare-fun b!1190981 () Bool)

(declare-fun res!792224 () Bool)

(declare-fun e!677074 () Bool)

(assert (=> b!1190981 (=> (not res!792224) (not e!677074))))

(declare-datatypes ((array!76964 0))(
  ( (array!76965 (arr!37128 (Array (_ BitVec 32) (_ BitVec 64))) (size!37665 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76964)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1190981 (= res!792224 (= (select (arr!37128 _keys!1208) i!673) k0!934))))

(declare-fun b!1190982 () Bool)

(declare-fun res!792227 () Bool)

(assert (=> b!1190982 (=> (not res!792227) (not e!677074))))

(assert (=> b!1190982 (= res!792227 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37665 _keys!1208))))))

(declare-fun b!1190983 () Bool)

(declare-fun e!677071 () Bool)

(declare-fun e!677072 () Bool)

(declare-fun mapRes!46976 () Bool)

(assert (=> b!1190983 (= e!677071 (and e!677072 mapRes!46976))))

(declare-fun condMapEmpty!46976 () Bool)

(declare-datatypes ((V!45259 0))(
  ( (V!45260 (val!15106 Int)) )
))
(declare-datatypes ((ValueCell!14340 0))(
  ( (ValueCellFull!14340 (v!17745 V!45259)) (EmptyCell!14340) )
))
(declare-datatypes ((array!76966 0))(
  ( (array!76967 (arr!37129 (Array (_ BitVec 32) ValueCell!14340)) (size!37666 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76966)

(declare-fun mapDefault!46976 () ValueCell!14340)

(assert (=> b!1190983 (= condMapEmpty!46976 (= (arr!37129 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14340)) mapDefault!46976)))))

(declare-fun mapIsEmpty!46976 () Bool)

(assert (=> mapIsEmpty!46976 mapRes!46976))

(declare-fun b!1190984 () Bool)

(declare-fun res!792230 () Bool)

(assert (=> b!1190984 (=> (not res!792230) (not e!677074))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1190984 (= res!792230 (and (= (size!37666 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37665 _keys!1208) (size!37666 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1190985 () Bool)

(declare-fun res!792225 () Bool)

(declare-fun e!677076 () Bool)

(assert (=> b!1190985 (=> (not res!792225) (not e!677076))))

(declare-fun lt!541630 () array!76964)

(declare-datatypes ((List!26311 0))(
  ( (Nil!26308) (Cons!26307 (h!27516 (_ BitVec 64)) (t!38879 List!26311)) )
))
(declare-fun arrayNoDuplicates!0 (array!76964 (_ BitVec 32) List!26311) Bool)

(assert (=> b!1190985 (= res!792225 (arrayNoDuplicates!0 lt!541630 #b00000000000000000000000000000000 Nil!26308))))

(declare-fun b!1190986 () Bool)

(declare-fun e!677077 () Bool)

(declare-fun tp_is_empty!30099 () Bool)

(assert (=> b!1190986 (= e!677077 tp_is_empty!30099)))

(declare-fun b!1190987 () Bool)

(declare-fun e!677070 () Bool)

(assert (=> b!1190987 (= e!677076 (not e!677070))))

(declare-fun res!792232 () Bool)

(assert (=> b!1190987 (=> res!792232 e!677070)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1190987 (= res!792232 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76964 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1190987 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39456 0))(
  ( (Unit!39457) )
))
(declare-fun lt!541629 () Unit!39456)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76964 (_ BitVec 64) (_ BitVec 32)) Unit!39456)

(assert (=> b!1190987 (= lt!541629 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1190988 () Bool)

(assert (=> b!1190988 (= e!677072 tp_is_empty!30099)))

(declare-fun b!1190989 () Bool)

(declare-fun e!677075 () Bool)

(assert (=> b!1190989 (= e!677070 e!677075)))

(declare-fun res!792221 () Bool)

(assert (=> b!1190989 (=> res!792221 e!677075)))

(assert (=> b!1190989 (= res!792221 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45259)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45259)

(declare-datatypes ((tuple2!19550 0))(
  ( (tuple2!19551 (_1!9785 (_ BitVec 64)) (_2!9785 V!45259)) )
))
(declare-datatypes ((List!26312 0))(
  ( (Nil!26309) (Cons!26308 (h!27517 tuple2!19550) (t!38880 List!26312)) )
))
(declare-datatypes ((ListLongMap!17531 0))(
  ( (ListLongMap!17532 (toList!8781 List!26312)) )
))
(declare-fun lt!541632 () ListLongMap!17531)

(declare-fun lt!541631 () array!76966)

(declare-fun getCurrentListMapNoExtraKeys!5195 (array!76964 array!76966 (_ BitVec 32) (_ BitVec 32) V!45259 V!45259 (_ BitVec 32) Int) ListLongMap!17531)

(assert (=> b!1190989 (= lt!541632 (getCurrentListMapNoExtraKeys!5195 lt!541630 lt!541631 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3140 (Int (_ BitVec 64)) V!45259)

(assert (=> b!1190989 (= lt!541631 (array!76967 (store (arr!37129 _values!996) i!673 (ValueCellFull!14340 (dynLambda!3140 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37666 _values!996)))))

(declare-fun lt!541628 () ListLongMap!17531)

(assert (=> b!1190989 (= lt!541628 (getCurrentListMapNoExtraKeys!5195 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1190990 () Bool)

(declare-fun res!792228 () Bool)

(assert (=> b!1190990 (=> (not res!792228) (not e!677074))))

(assert (=> b!1190990 (= res!792228 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26308))))

(declare-fun b!1190991 () Bool)

(declare-fun res!792231 () Bool)

(assert (=> b!1190991 (=> (not res!792231) (not e!677074))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1190991 (= res!792231 (validKeyInArray!0 k0!934))))

(declare-fun b!1190992 () Bool)

(assert (=> b!1190992 (= e!677074 e!677076)))

(declare-fun res!792229 () Bool)

(assert (=> b!1190992 (=> (not res!792229) (not e!677076))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76964 (_ BitVec 32)) Bool)

(assert (=> b!1190992 (= res!792229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541630 mask!1564))))

(assert (=> b!1190992 (= lt!541630 (array!76965 (store (arr!37128 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37665 _keys!1208)))))

(declare-fun b!1190993 () Bool)

(declare-fun res!792222 () Bool)

(assert (=> b!1190993 (=> (not res!792222) (not e!677074))))

(assert (=> b!1190993 (= res!792222 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1190994 () Bool)

(assert (=> b!1190994 (= e!677075 true)))

(declare-fun -!1762 (ListLongMap!17531 (_ BitVec 64)) ListLongMap!17531)

(assert (=> b!1190994 (= (getCurrentListMapNoExtraKeys!5195 lt!541630 lt!541631 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1762 (getCurrentListMapNoExtraKeys!5195 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!541627 () Unit!39456)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!968 (array!76964 array!76966 (_ BitVec 32) (_ BitVec 32) V!45259 V!45259 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39456)

(assert (=> b!1190994 (= lt!541627 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!968 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!792226 () Bool)

(assert (=> start!100026 (=> (not res!792226) (not e!677074))))

(assert (=> start!100026 (= res!792226 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37665 _keys!1208))))))

(assert (=> start!100026 e!677074))

(assert (=> start!100026 tp_is_empty!30099))

(declare-fun array_inv!28214 (array!76964) Bool)

(assert (=> start!100026 (array_inv!28214 _keys!1208)))

(assert (=> start!100026 true))

(assert (=> start!100026 tp!89422))

(declare-fun array_inv!28215 (array!76966) Bool)

(assert (=> start!100026 (and (array_inv!28215 _values!996) e!677071)))

(declare-fun mapNonEmpty!46976 () Bool)

(declare-fun tp!89421 () Bool)

(assert (=> mapNonEmpty!46976 (= mapRes!46976 (and tp!89421 e!677077))))

(declare-fun mapKey!46976 () (_ BitVec 32))

(declare-fun mapRest!46976 () (Array (_ BitVec 32) ValueCell!14340))

(declare-fun mapValue!46976 () ValueCell!14340)

(assert (=> mapNonEmpty!46976 (= (arr!37129 _values!996) (store mapRest!46976 mapKey!46976 mapValue!46976))))

(declare-fun b!1190995 () Bool)

(declare-fun res!792223 () Bool)

(assert (=> b!1190995 (=> (not res!792223) (not e!677074))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1190995 (= res!792223 (validMask!0 mask!1564))))

(assert (= (and start!100026 res!792226) b!1190995))

(assert (= (and b!1190995 res!792223) b!1190984))

(assert (= (and b!1190984 res!792230) b!1190993))

(assert (= (and b!1190993 res!792222) b!1190990))

(assert (= (and b!1190990 res!792228) b!1190982))

(assert (= (and b!1190982 res!792227) b!1190991))

(assert (= (and b!1190991 res!792231) b!1190981))

(assert (= (and b!1190981 res!792224) b!1190992))

(assert (= (and b!1190992 res!792229) b!1190985))

(assert (= (and b!1190985 res!792225) b!1190987))

(assert (= (and b!1190987 (not res!792232)) b!1190989))

(assert (= (and b!1190989 (not res!792221)) b!1190994))

(assert (= (and b!1190983 condMapEmpty!46976) mapIsEmpty!46976))

(assert (= (and b!1190983 (not condMapEmpty!46976)) mapNonEmpty!46976))

(get-info :version)

(assert (= (and mapNonEmpty!46976 ((_ is ValueCellFull!14340) mapValue!46976)) b!1190986))

(assert (= (and b!1190983 ((_ is ValueCellFull!14340) mapDefault!46976)) b!1190988))

(assert (= start!100026 b!1190983))

(declare-fun b_lambda!20731 () Bool)

(assert (=> (not b_lambda!20731) (not b!1190989)))

(declare-fun t!38878 () Bool)

(declare-fun tb!10389 () Bool)

(assert (=> (and start!100026 (= defaultEntry!1004 defaultEntry!1004) t!38878) tb!10389))

(declare-fun result!21337 () Bool)

(assert (=> tb!10389 (= result!21337 tp_is_empty!30099)))

(assert (=> b!1190989 t!38878))

(declare-fun b_and!42021 () Bool)

(assert (= b_and!42019 (and (=> t!38878 result!21337) b_and!42021)))

(declare-fun m!1099541 () Bool)

(assert (=> b!1190995 m!1099541))

(declare-fun m!1099543 () Bool)

(assert (=> start!100026 m!1099543))

(declare-fun m!1099545 () Bool)

(assert (=> start!100026 m!1099545))

(declare-fun m!1099547 () Bool)

(assert (=> b!1190991 m!1099547))

(declare-fun m!1099549 () Bool)

(assert (=> b!1190994 m!1099549))

(declare-fun m!1099551 () Bool)

(assert (=> b!1190994 m!1099551))

(assert (=> b!1190994 m!1099551))

(declare-fun m!1099553 () Bool)

(assert (=> b!1190994 m!1099553))

(declare-fun m!1099555 () Bool)

(assert (=> b!1190994 m!1099555))

(declare-fun m!1099557 () Bool)

(assert (=> b!1190987 m!1099557))

(declare-fun m!1099559 () Bool)

(assert (=> b!1190987 m!1099559))

(declare-fun m!1099561 () Bool)

(assert (=> mapNonEmpty!46976 m!1099561))

(declare-fun m!1099563 () Bool)

(assert (=> b!1190993 m!1099563))

(declare-fun m!1099565 () Bool)

(assert (=> b!1190985 m!1099565))

(declare-fun m!1099567 () Bool)

(assert (=> b!1190981 m!1099567))

(declare-fun m!1099569 () Bool)

(assert (=> b!1190990 m!1099569))

(declare-fun m!1099571 () Bool)

(assert (=> b!1190992 m!1099571))

(declare-fun m!1099573 () Bool)

(assert (=> b!1190992 m!1099573))

(declare-fun m!1099575 () Bool)

(assert (=> b!1190989 m!1099575))

(declare-fun m!1099577 () Bool)

(assert (=> b!1190989 m!1099577))

(declare-fun m!1099579 () Bool)

(assert (=> b!1190989 m!1099579))

(declare-fun m!1099581 () Bool)

(assert (=> b!1190989 m!1099581))

(check-sat (not start!100026) (not mapNonEmpty!46976) (not b!1190993) tp_is_empty!30099 (not b_lambda!20731) (not b!1190991) (not b!1190985) (not b_next!25569) (not b!1190989) (not b!1190987) (not b!1190994) (not b!1190992) b_and!42021 (not b!1190995) (not b!1190990))
(check-sat b_and!42021 (not b_next!25569))
