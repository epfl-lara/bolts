; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101264 () Bool)

(assert start!101264)

(declare-fun b_free!26151 () Bool)

(declare-fun b_next!26151 () Bool)

(assert (=> start!101264 (= b_free!26151 (not b_next!26151))))

(declare-fun tp!91475 () Bool)

(declare-fun b_and!43429 () Bool)

(assert (=> start!101264 (= tp!91475 b_and!43429)))

(declare-fun b!1215520 () Bool)

(declare-fun res!807171 () Bool)

(declare-fun e!690214 () Bool)

(assert (=> b!1215520 (=> (not res!807171) (not e!690214))))

(declare-datatypes ((array!78462 0))(
  ( (array!78463 (arr!37862 (Array (_ BitVec 32) (_ BitVec 64))) (size!38399 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78462)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1215520 (= res!807171 (= (select (arr!37862 _keys!1208) i!673) k0!934))))

(declare-fun b!1215521 () Bool)

(declare-fun res!807167 () Bool)

(assert (=> b!1215521 (=> (not res!807167) (not e!690214))))

(declare-datatypes ((List!26863 0))(
  ( (Nil!26860) (Cons!26859 (h!28068 (_ BitVec 64)) (t!40001 List!26863)) )
))
(declare-fun arrayNoDuplicates!0 (array!78462 (_ BitVec 32) List!26863) Bool)

(assert (=> b!1215521 (= res!807167 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26860))))

(declare-fun mapNonEmpty!48157 () Bool)

(declare-fun mapRes!48157 () Bool)

(declare-fun tp!91476 () Bool)

(declare-fun e!690213 () Bool)

(assert (=> mapNonEmpty!48157 (= mapRes!48157 (and tp!91476 e!690213))))

(declare-fun mapKey!48157 () (_ BitVec 32))

(declare-datatypes ((V!46267 0))(
  ( (V!46268 (val!15484 Int)) )
))
(declare-datatypes ((ValueCell!14718 0))(
  ( (ValueCellFull!14718 (v!18138 V!46267)) (EmptyCell!14718) )
))
(declare-datatypes ((array!78464 0))(
  ( (array!78465 (arr!37863 (Array (_ BitVec 32) ValueCell!14718)) (size!38400 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78464)

(declare-fun mapRest!48157 () (Array (_ BitVec 32) ValueCell!14718))

(declare-fun mapValue!48157 () ValueCell!14718)

(assert (=> mapNonEmpty!48157 (= (arr!37863 _values!996) (store mapRest!48157 mapKey!48157 mapValue!48157))))

(declare-fun b!1215522 () Bool)

(declare-fun res!807162 () Bool)

(assert (=> b!1215522 (=> (not res!807162) (not e!690214))))

(assert (=> b!1215522 (= res!807162 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38399 _keys!1208))))))

(declare-fun b!1215523 () Bool)

(declare-fun res!807165 () Bool)

(assert (=> b!1215523 (=> (not res!807165) (not e!690214))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1215523 (= res!807165 (validMask!0 mask!1564))))

(declare-fun b!1215524 () Bool)

(declare-fun e!690216 () Bool)

(declare-fun tp_is_empty!30855 () Bool)

(assert (=> b!1215524 (= e!690216 tp_is_empty!30855)))

(declare-fun b!1215525 () Bool)

(assert (=> b!1215525 (= e!690213 tp_is_empty!30855)))

(declare-fun b!1215526 () Bool)

(declare-fun res!807169 () Bool)

(assert (=> b!1215526 (=> (not res!807169) (not e!690214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78462 (_ BitVec 32)) Bool)

(assert (=> b!1215526 (= res!807169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1215527 () Bool)

(declare-fun e!690219 () Bool)

(declare-fun e!690215 () Bool)

(assert (=> b!1215527 (= e!690219 (not e!690215))))

(declare-fun res!807170 () Bool)

(assert (=> b!1215527 (=> res!807170 e!690215)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1215527 (= res!807170 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1215527 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40240 0))(
  ( (Unit!40241) )
))
(declare-fun lt!552598 () Unit!40240)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78462 (_ BitVec 64) (_ BitVec 32)) Unit!40240)

(assert (=> b!1215527 (= lt!552598 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1215528 () Bool)

(assert (=> b!1215528 (= e!690215 true)))

(declare-fun zeroValue!944 () V!46267)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46267)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!20044 0))(
  ( (tuple2!20045 (_1!10032 (_ BitVec 64)) (_2!10032 V!46267)) )
))
(declare-datatypes ((List!26864 0))(
  ( (Nil!26861) (Cons!26860 (h!28069 tuple2!20044) (t!40002 List!26864)) )
))
(declare-datatypes ((ListLongMap!18025 0))(
  ( (ListLongMap!18026 (toList!9028 List!26864)) )
))
(declare-fun lt!552597 () ListLongMap!18025)

(declare-fun lt!552599 () array!78462)

(declare-fun getCurrentListMapNoExtraKeys!5433 (array!78462 array!78464 (_ BitVec 32) (_ BitVec 32) V!46267 V!46267 (_ BitVec 32) Int) ListLongMap!18025)

(declare-fun dynLambda!3342 (Int (_ BitVec 64)) V!46267)

(assert (=> b!1215528 (= lt!552597 (getCurrentListMapNoExtraKeys!5433 lt!552599 (array!78465 (store (arr!37863 _values!996) i!673 (ValueCellFull!14718 (dynLambda!3342 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38400 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552596 () ListLongMap!18025)

(assert (=> b!1215528 (= lt!552596 (getCurrentListMapNoExtraKeys!5433 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1215529 () Bool)

(declare-fun res!807166 () Bool)

(assert (=> b!1215529 (=> (not res!807166) (not e!690214))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1215529 (= res!807166 (validKeyInArray!0 k0!934))))

(declare-fun b!1215530 () Bool)

(declare-fun e!690217 () Bool)

(assert (=> b!1215530 (= e!690217 (and e!690216 mapRes!48157))))

(declare-fun condMapEmpty!48157 () Bool)

(declare-fun mapDefault!48157 () ValueCell!14718)

(assert (=> b!1215530 (= condMapEmpty!48157 (= (arr!37863 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14718)) mapDefault!48157)))))

(declare-fun b!1215531 () Bool)

(declare-fun res!807168 () Bool)

(assert (=> b!1215531 (=> (not res!807168) (not e!690214))))

(assert (=> b!1215531 (= res!807168 (and (= (size!38400 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38399 _keys!1208) (size!38400 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!807172 () Bool)

(assert (=> start!101264 (=> (not res!807172) (not e!690214))))

(assert (=> start!101264 (= res!807172 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38399 _keys!1208))))))

(assert (=> start!101264 e!690214))

(assert (=> start!101264 tp_is_empty!30855))

(declare-fun array_inv!28734 (array!78462) Bool)

(assert (=> start!101264 (array_inv!28734 _keys!1208)))

(assert (=> start!101264 true))

(assert (=> start!101264 tp!91475))

(declare-fun array_inv!28735 (array!78464) Bool)

(assert (=> start!101264 (and (array_inv!28735 _values!996) e!690217)))

(declare-fun b!1215532 () Bool)

(declare-fun res!807163 () Bool)

(assert (=> b!1215532 (=> (not res!807163) (not e!690219))))

(assert (=> b!1215532 (= res!807163 (arrayNoDuplicates!0 lt!552599 #b00000000000000000000000000000000 Nil!26860))))

(declare-fun mapIsEmpty!48157 () Bool)

(assert (=> mapIsEmpty!48157 mapRes!48157))

(declare-fun b!1215533 () Bool)

(assert (=> b!1215533 (= e!690214 e!690219)))

(declare-fun res!807164 () Bool)

(assert (=> b!1215533 (=> (not res!807164) (not e!690219))))

(assert (=> b!1215533 (= res!807164 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552599 mask!1564))))

(assert (=> b!1215533 (= lt!552599 (array!78463 (store (arr!37862 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38399 _keys!1208)))))

(assert (= (and start!101264 res!807172) b!1215523))

(assert (= (and b!1215523 res!807165) b!1215531))

(assert (= (and b!1215531 res!807168) b!1215526))

(assert (= (and b!1215526 res!807169) b!1215521))

(assert (= (and b!1215521 res!807167) b!1215522))

(assert (= (and b!1215522 res!807162) b!1215529))

(assert (= (and b!1215529 res!807166) b!1215520))

(assert (= (and b!1215520 res!807171) b!1215533))

(assert (= (and b!1215533 res!807164) b!1215532))

(assert (= (and b!1215532 res!807163) b!1215527))

(assert (= (and b!1215527 (not res!807170)) b!1215528))

(assert (= (and b!1215530 condMapEmpty!48157) mapIsEmpty!48157))

(assert (= (and b!1215530 (not condMapEmpty!48157)) mapNonEmpty!48157))

(get-info :version)

(assert (= (and mapNonEmpty!48157 ((_ is ValueCellFull!14718) mapValue!48157)) b!1215525))

(assert (= (and b!1215530 ((_ is ValueCellFull!14718) mapDefault!48157)) b!1215524))

(assert (= start!101264 b!1215530))

(declare-fun b_lambda!21837 () Bool)

(assert (=> (not b_lambda!21837) (not b!1215528)))

(declare-fun t!40000 () Bool)

(declare-fun tb!10959 () Bool)

(assert (=> (and start!101264 (= defaultEntry!1004 defaultEntry!1004) t!40000) tb!10959))

(declare-fun result!22507 () Bool)

(assert (=> tb!10959 (= result!22507 tp_is_empty!30855)))

(assert (=> b!1215528 t!40000))

(declare-fun b_and!43431 () Bool)

(assert (= b_and!43429 (and (=> t!40000 result!22507) b_and!43431)))

(declare-fun m!1120497 () Bool)

(assert (=> b!1215520 m!1120497))

(declare-fun m!1120499 () Bool)

(assert (=> b!1215528 m!1120499))

(declare-fun m!1120501 () Bool)

(assert (=> b!1215528 m!1120501))

(declare-fun m!1120503 () Bool)

(assert (=> b!1215528 m!1120503))

(declare-fun m!1120505 () Bool)

(assert (=> b!1215528 m!1120505))

(declare-fun m!1120507 () Bool)

(assert (=> mapNonEmpty!48157 m!1120507))

(declare-fun m!1120509 () Bool)

(assert (=> b!1215523 m!1120509))

(declare-fun m!1120511 () Bool)

(assert (=> b!1215533 m!1120511))

(declare-fun m!1120513 () Bool)

(assert (=> b!1215533 m!1120513))

(declare-fun m!1120515 () Bool)

(assert (=> b!1215532 m!1120515))

(declare-fun m!1120517 () Bool)

(assert (=> start!101264 m!1120517))

(declare-fun m!1120519 () Bool)

(assert (=> start!101264 m!1120519))

(declare-fun m!1120521 () Bool)

(assert (=> b!1215526 m!1120521))

(declare-fun m!1120523 () Bool)

(assert (=> b!1215521 m!1120523))

(declare-fun m!1120525 () Bool)

(assert (=> b!1215527 m!1120525))

(declare-fun m!1120527 () Bool)

(assert (=> b!1215527 m!1120527))

(declare-fun m!1120529 () Bool)

(assert (=> b!1215529 m!1120529))

(check-sat (not b!1215528) (not b!1215526) (not b_next!26151) (not b!1215527) (not b!1215523) (not b!1215529) (not b_lambda!21837) (not start!101264) (not b!1215521) (not b!1215532) b_and!43431 tp_is_empty!30855 (not b!1215533) (not mapNonEmpty!48157))
(check-sat b_and!43431 (not b_next!26151))
