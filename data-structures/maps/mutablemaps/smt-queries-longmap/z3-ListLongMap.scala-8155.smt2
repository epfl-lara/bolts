; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99834 () Bool)

(assert start!99834)

(declare-fun b_free!25377 () Bool)

(declare-fun b_next!25377 () Bool)

(assert (=> start!99834 (= b_free!25377 (not b_next!25377))))

(declare-fun tp!88845 () Bool)

(declare-fun b_and!41635 () Bool)

(assert (=> start!99834 (= tp!88845 b_and!41635)))

(declare-fun b!1185909 () Bool)

(declare-datatypes ((Unit!39223 0))(
  ( (Unit!39224) )
))
(declare-fun e!674324 () Unit!39223)

(declare-fun Unit!39225 () Unit!39223)

(assert (=> b!1185909 (= e!674324 Unit!39225)))

(declare-datatypes ((array!76582 0))(
  ( (array!76583 (arr!36937 (Array (_ BitVec 32) (_ BitVec 64))) (size!37474 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76582)

(declare-fun lt!538460 () Unit!39223)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76582 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39223)

(assert (=> b!1185909 (= lt!538460 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76582 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1185909 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!538461 () Unit!39223)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76582 (_ BitVec 32) (_ BitVec 32)) Unit!39223)

(assert (=> b!1185909 (= lt!538461 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26145 0))(
  ( (Nil!26142) (Cons!26141 (h!27350 (_ BitVec 64)) (t!38521 List!26145)) )
))
(declare-fun arrayNoDuplicates!0 (array!76582 (_ BitVec 32) List!26145) Bool)

(assert (=> b!1185909 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26142)))

(declare-fun lt!538443 () Unit!39223)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76582 (_ BitVec 64) (_ BitVec 32) List!26145) Unit!39223)

(assert (=> b!1185909 (= lt!538443 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26142))))

(assert (=> b!1185909 false))

(declare-fun b!1185910 () Bool)

(declare-fun e!674328 () Bool)

(declare-fun tp_is_empty!29907 () Bool)

(assert (=> b!1185910 (= e!674328 tp_is_empty!29907)))

(declare-fun b!1185911 () Bool)

(declare-fun res!788439 () Bool)

(declare-fun e!674323 () Bool)

(assert (=> b!1185911 (=> (not res!788439) (not e!674323))))

(assert (=> b!1185911 (= res!788439 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37474 _keys!1208))))))

(declare-fun b!1185912 () Bool)

(declare-fun res!788440 () Bool)

(declare-fun e!674319 () Bool)

(assert (=> b!1185912 (=> (not res!788440) (not e!674319))))

(declare-fun lt!538452 () array!76582)

(assert (=> b!1185912 (= res!788440 (arrayNoDuplicates!0 lt!538452 #b00000000000000000000000000000000 Nil!26142))))

(declare-fun mapNonEmpty!46688 () Bool)

(declare-fun mapRes!46688 () Bool)

(declare-fun tp!88846 () Bool)

(declare-fun e!674322 () Bool)

(assert (=> mapNonEmpty!46688 (= mapRes!46688 (and tp!88846 e!674322))))

(declare-datatypes ((V!45003 0))(
  ( (V!45004 (val!15010 Int)) )
))
(declare-datatypes ((ValueCell!14244 0))(
  ( (ValueCellFull!14244 (v!17649 V!45003)) (EmptyCell!14244) )
))
(declare-fun mapRest!46688 () (Array (_ BitVec 32) ValueCell!14244))

(declare-datatypes ((array!76584 0))(
  ( (array!76585 (arr!36938 (Array (_ BitVec 32) ValueCell!14244)) (size!37475 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76584)

(declare-fun mapKey!46688 () (_ BitVec 32))

(declare-fun mapValue!46688 () ValueCell!14244)

(assert (=> mapNonEmpty!46688 (= (arr!36938 _values!996) (store mapRest!46688 mapKey!46688 mapValue!46688))))

(declare-fun b!1185913 () Bool)

(declare-fun res!788433 () Bool)

(assert (=> b!1185913 (=> (not res!788433) (not e!674323))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76582 (_ BitVec 32)) Bool)

(assert (=> b!1185913 (= res!788433 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun e!674325 () Bool)

(declare-fun b!1185914 () Bool)

(assert (=> b!1185914 (= e!674325 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1185915 () Bool)

(declare-fun e!674329 () Bool)

(assert (=> b!1185915 (= e!674329 e!674325)))

(declare-fun res!788437 () Bool)

(assert (=> b!1185915 (=> res!788437 e!674325)))

(assert (=> b!1185915 (= res!788437 (not (= (select (arr!36937 _keys!1208) from!1455) k0!934)))))

(declare-fun res!788441 () Bool)

(assert (=> start!99834 (=> (not res!788441) (not e!674323))))

(assert (=> start!99834 (= res!788441 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37474 _keys!1208))))))

(assert (=> start!99834 e!674323))

(assert (=> start!99834 tp_is_empty!29907))

(declare-fun array_inv!28068 (array!76582) Bool)

(assert (=> start!99834 (array_inv!28068 _keys!1208)))

(assert (=> start!99834 true))

(assert (=> start!99834 tp!88845))

(declare-fun e!674318 () Bool)

(declare-fun array_inv!28069 (array!76584) Bool)

(assert (=> start!99834 (and (array_inv!28069 _values!996) e!674318)))

(declare-fun mapIsEmpty!46688 () Bool)

(assert (=> mapIsEmpty!46688 mapRes!46688))

(declare-fun b!1185916 () Bool)

(declare-fun res!788431 () Bool)

(assert (=> b!1185916 (=> (not res!788431) (not e!674323))))

(assert (=> b!1185916 (= res!788431 (= (select (arr!36937 _keys!1208) i!673) k0!934))))

(declare-fun b!1185917 () Bool)

(declare-fun e!674327 () Bool)

(assert (=> b!1185917 (= e!674327 true)))

(declare-datatypes ((tuple2!19384 0))(
  ( (tuple2!19385 (_1!9702 (_ BitVec 64)) (_2!9702 V!45003)) )
))
(declare-datatypes ((List!26146 0))(
  ( (Nil!26143) (Cons!26142 (h!27351 tuple2!19384) (t!38522 List!26146)) )
))
(declare-datatypes ((ListLongMap!17365 0))(
  ( (ListLongMap!17366 (toList!8698 List!26146)) )
))
(declare-fun lt!538458 () ListLongMap!17365)

(declare-fun lt!538456 () ListLongMap!17365)

(declare-fun -!1683 (ListLongMap!17365 (_ BitVec 64)) ListLongMap!17365)

(assert (=> b!1185917 (= (-!1683 lt!538458 k0!934) lt!538456)))

(declare-fun lt!538450 () ListLongMap!17365)

(declare-fun lt!538459 () V!45003)

(declare-fun lt!538451 () Unit!39223)

(declare-fun addRemoveCommutativeForDiffKeys!194 (ListLongMap!17365 (_ BitVec 64) V!45003 (_ BitVec 64)) Unit!39223)

(assert (=> b!1185917 (= lt!538451 (addRemoveCommutativeForDiffKeys!194 lt!538450 (select (arr!36937 _keys!1208) from!1455) lt!538459 k0!934))))

(declare-fun lt!538455 () ListLongMap!17365)

(declare-fun lt!538454 () ListLongMap!17365)

(declare-fun lt!538445 () ListLongMap!17365)

(assert (=> b!1185917 (and (= lt!538454 lt!538458) (= lt!538455 lt!538445))))

(declare-fun lt!538446 () tuple2!19384)

(declare-fun +!3904 (ListLongMap!17365 tuple2!19384) ListLongMap!17365)

(assert (=> b!1185917 (= lt!538458 (+!3904 lt!538450 lt!538446))))

(assert (=> b!1185917 (not (= (select (arr!36937 _keys!1208) from!1455) k0!934))))

(declare-fun lt!538448 () Unit!39223)

(assert (=> b!1185917 (= lt!538448 e!674324)))

(declare-fun c!117137 () Bool)

(assert (=> b!1185917 (= c!117137 (= (select (arr!36937 _keys!1208) from!1455) k0!934))))

(assert (=> b!1185917 e!674329))

(declare-fun res!788442 () Bool)

(assert (=> b!1185917 (=> (not res!788442) (not e!674329))))

(declare-fun lt!538457 () ListLongMap!17365)

(assert (=> b!1185917 (= res!788442 (= lt!538457 lt!538456))))

(assert (=> b!1185917 (= lt!538456 (+!3904 lt!538455 lt!538446))))

(assert (=> b!1185917 (= lt!538446 (tuple2!19385 (select (arr!36937 _keys!1208) from!1455) lt!538459))))

(declare-fun lt!538453 () V!45003)

(declare-fun get!18952 (ValueCell!14244 V!45003) V!45003)

(assert (=> b!1185917 (= lt!538459 (get!18952 (select (arr!36938 _values!996) from!1455) lt!538453))))

(declare-fun b!1185918 () Bool)

(assert (=> b!1185918 (= e!674323 e!674319)))

(declare-fun res!788434 () Bool)

(assert (=> b!1185918 (=> (not res!788434) (not e!674319))))

(assert (=> b!1185918 (= res!788434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!538452 mask!1564))))

(assert (=> b!1185918 (= lt!538452 (array!76583 (store (arr!36937 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37474 _keys!1208)))))

(declare-fun b!1185919 () Bool)

(declare-fun e!674321 () Bool)

(assert (=> b!1185919 (= e!674321 e!674327)))

(declare-fun res!788430 () Bool)

(assert (=> b!1185919 (=> res!788430 e!674327)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1185919 (= res!788430 (not (validKeyInArray!0 (select (arr!36937 _keys!1208) from!1455))))))

(assert (=> b!1185919 (= lt!538445 lt!538455)))

(assert (=> b!1185919 (= lt!538455 (-!1683 lt!538450 k0!934))))

(declare-fun zeroValue!944 () V!45003)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!538444 () array!76584)

(declare-fun minValue!944 () V!45003)

(declare-fun getCurrentListMapNoExtraKeys!5116 (array!76582 array!76584 (_ BitVec 32) (_ BitVec 32) V!45003 V!45003 (_ BitVec 32) Int) ListLongMap!17365)

(assert (=> b!1185919 (= lt!538445 (getCurrentListMapNoExtraKeys!5116 lt!538452 lt!538444 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1185919 (= lt!538450 (getCurrentListMapNoExtraKeys!5116 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!538447 () Unit!39223)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!896 (array!76582 array!76584 (_ BitVec 32) (_ BitVec 32) V!45003 V!45003 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39223)

(assert (=> b!1185919 (= lt!538447 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!896 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1185920 () Bool)

(declare-fun res!788429 () Bool)

(assert (=> b!1185920 (=> (not res!788429) (not e!674323))))

(assert (=> b!1185920 (= res!788429 (validKeyInArray!0 k0!934))))

(declare-fun b!1185921 () Bool)

(declare-fun res!788435 () Bool)

(assert (=> b!1185921 (=> (not res!788435) (not e!674323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1185921 (= res!788435 (validMask!0 mask!1564))))

(declare-fun b!1185922 () Bool)

(assert (=> b!1185922 (= e!674322 tp_is_empty!29907)))

(declare-fun b!1185923 () Bool)

(declare-fun Unit!39226 () Unit!39223)

(assert (=> b!1185923 (= e!674324 Unit!39226)))

(declare-fun b!1185924 () Bool)

(declare-fun res!788432 () Bool)

(assert (=> b!1185924 (=> (not res!788432) (not e!674323))))

(assert (=> b!1185924 (= res!788432 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26142))))

(declare-fun b!1185925 () Bool)

(declare-fun e!674326 () Bool)

(assert (=> b!1185925 (= e!674326 e!674321)))

(declare-fun res!788443 () Bool)

(assert (=> b!1185925 (=> res!788443 e!674321)))

(assert (=> b!1185925 (= res!788443 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1185925 (= lt!538457 (getCurrentListMapNoExtraKeys!5116 lt!538452 lt!538444 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1185925 (= lt!538444 (array!76585 (store (arr!36938 _values!996) i!673 (ValueCellFull!14244 lt!538453)) (size!37475 _values!996)))))

(declare-fun dynLambda!3076 (Int (_ BitVec 64)) V!45003)

(assert (=> b!1185925 (= lt!538453 (dynLambda!3076 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1185925 (= lt!538454 (getCurrentListMapNoExtraKeys!5116 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1185926 () Bool)

(assert (=> b!1185926 (= e!674318 (and e!674328 mapRes!46688))))

(declare-fun condMapEmpty!46688 () Bool)

(declare-fun mapDefault!46688 () ValueCell!14244)

(assert (=> b!1185926 (= condMapEmpty!46688 (= (arr!36938 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14244)) mapDefault!46688)))))

(declare-fun b!1185927 () Bool)

(assert (=> b!1185927 (= e!674319 (not e!674326))))

(declare-fun res!788436 () Bool)

(assert (=> b!1185927 (=> res!788436 e!674326)))

(assert (=> b!1185927 (= res!788436 (bvsgt from!1455 i!673))))

(assert (=> b!1185927 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!538449 () Unit!39223)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76582 (_ BitVec 64) (_ BitVec 32)) Unit!39223)

(assert (=> b!1185927 (= lt!538449 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1185928 () Bool)

(declare-fun res!788438 () Bool)

(assert (=> b!1185928 (=> (not res!788438) (not e!674323))))

(assert (=> b!1185928 (= res!788438 (and (= (size!37475 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37474 _keys!1208) (size!37475 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!99834 res!788441) b!1185921))

(assert (= (and b!1185921 res!788435) b!1185928))

(assert (= (and b!1185928 res!788438) b!1185913))

(assert (= (and b!1185913 res!788433) b!1185924))

(assert (= (and b!1185924 res!788432) b!1185911))

(assert (= (and b!1185911 res!788439) b!1185920))

(assert (= (and b!1185920 res!788429) b!1185916))

(assert (= (and b!1185916 res!788431) b!1185918))

(assert (= (and b!1185918 res!788434) b!1185912))

(assert (= (and b!1185912 res!788440) b!1185927))

(assert (= (and b!1185927 (not res!788436)) b!1185925))

(assert (= (and b!1185925 (not res!788443)) b!1185919))

(assert (= (and b!1185919 (not res!788430)) b!1185917))

(assert (= (and b!1185917 res!788442) b!1185915))

(assert (= (and b!1185915 (not res!788437)) b!1185914))

(assert (= (and b!1185917 c!117137) b!1185909))

(assert (= (and b!1185917 (not c!117137)) b!1185923))

(assert (= (and b!1185926 condMapEmpty!46688) mapIsEmpty!46688))

(assert (= (and b!1185926 (not condMapEmpty!46688)) mapNonEmpty!46688))

(get-info :version)

(assert (= (and mapNonEmpty!46688 ((_ is ValueCellFull!14244) mapValue!46688)) b!1185922))

(assert (= (and b!1185926 ((_ is ValueCellFull!14244) mapDefault!46688)) b!1185910))

(assert (= start!99834 b!1185926))

(declare-fun b_lambda!20539 () Bool)

(assert (=> (not b_lambda!20539) (not b!1185925)))

(declare-fun t!38520 () Bool)

(declare-fun tb!10197 () Bool)

(assert (=> (and start!99834 (= defaultEntry!1004 defaultEntry!1004) t!38520) tb!10197))

(declare-fun result!20953 () Bool)

(assert (=> tb!10197 (= result!20953 tp_is_empty!29907)))

(assert (=> b!1185925 t!38520))

(declare-fun b_and!41637 () Bool)

(assert (= b_and!41635 (and (=> t!38520 result!20953) b_and!41637)))

(declare-fun m!1094445 () Bool)

(assert (=> b!1185914 m!1094445))

(declare-fun m!1094447 () Bool)

(assert (=> b!1185920 m!1094447))

(declare-fun m!1094449 () Bool)

(assert (=> mapNonEmpty!46688 m!1094449))

(declare-fun m!1094451 () Bool)

(assert (=> b!1185921 m!1094451))

(declare-fun m!1094453 () Bool)

(assert (=> b!1185918 m!1094453))

(declare-fun m!1094455 () Bool)

(assert (=> b!1185918 m!1094455))

(declare-fun m!1094457 () Bool)

(assert (=> start!99834 m!1094457))

(declare-fun m!1094459 () Bool)

(assert (=> start!99834 m!1094459))

(declare-fun m!1094461 () Bool)

(assert (=> b!1185919 m!1094461))

(declare-fun m!1094463 () Bool)

(assert (=> b!1185919 m!1094463))

(declare-fun m!1094465 () Bool)

(assert (=> b!1185919 m!1094465))

(declare-fun m!1094467 () Bool)

(assert (=> b!1185919 m!1094467))

(declare-fun m!1094469 () Bool)

(assert (=> b!1185919 m!1094469))

(declare-fun m!1094471 () Bool)

(assert (=> b!1185919 m!1094471))

(assert (=> b!1185919 m!1094469))

(declare-fun m!1094473 () Bool)

(assert (=> b!1185912 m!1094473))

(assert (=> b!1185915 m!1094469))

(declare-fun m!1094475 () Bool)

(assert (=> b!1185909 m!1094475))

(declare-fun m!1094477 () Bool)

(assert (=> b!1185909 m!1094477))

(declare-fun m!1094479 () Bool)

(assert (=> b!1185909 m!1094479))

(declare-fun m!1094481 () Bool)

(assert (=> b!1185909 m!1094481))

(declare-fun m!1094483 () Bool)

(assert (=> b!1185909 m!1094483))

(declare-fun m!1094485 () Bool)

(assert (=> b!1185924 m!1094485))

(declare-fun m!1094487 () Bool)

(assert (=> b!1185925 m!1094487))

(declare-fun m!1094489 () Bool)

(assert (=> b!1185925 m!1094489))

(declare-fun m!1094491 () Bool)

(assert (=> b!1185925 m!1094491))

(declare-fun m!1094493 () Bool)

(assert (=> b!1185925 m!1094493))

(declare-fun m!1094495 () Bool)

(assert (=> b!1185916 m!1094495))

(declare-fun m!1094497 () Bool)

(assert (=> b!1185917 m!1094497))

(assert (=> b!1185917 m!1094497))

(declare-fun m!1094499 () Bool)

(assert (=> b!1185917 m!1094499))

(assert (=> b!1185917 m!1094469))

(declare-fun m!1094501 () Bool)

(assert (=> b!1185917 m!1094501))

(declare-fun m!1094503 () Bool)

(assert (=> b!1185917 m!1094503))

(declare-fun m!1094505 () Bool)

(assert (=> b!1185917 m!1094505))

(declare-fun m!1094507 () Bool)

(assert (=> b!1185917 m!1094507))

(assert (=> b!1185917 m!1094469))

(declare-fun m!1094509 () Bool)

(assert (=> b!1185913 m!1094509))

(declare-fun m!1094511 () Bool)

(assert (=> b!1185927 m!1094511))

(declare-fun m!1094513 () Bool)

(assert (=> b!1185927 m!1094513))

(check-sat (not b_lambda!20539) (not b!1185919) b_and!41637 tp_is_empty!29907 (not b!1185913) (not start!99834) (not b!1185914) (not b!1185909) (not b!1185918) (not b!1185917) (not b!1185920) (not b!1185921) (not b_next!25377) (not b!1185912) (not b!1185927) (not b!1185925) (not b!1185924) (not mapNonEmpty!46688))
(check-sat b_and!41637 (not b_next!25377))
