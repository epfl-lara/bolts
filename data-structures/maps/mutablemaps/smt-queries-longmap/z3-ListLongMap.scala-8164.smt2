; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99888 () Bool)

(assert start!99888)

(declare-fun b_free!25431 () Bool)

(declare-fun b_next!25431 () Bool)

(assert (=> start!99888 (= b_free!25431 (not b_next!25431))))

(declare-fun tp!89008 () Bool)

(declare-fun b_and!41743 () Bool)

(assert (=> start!99888 (= tp!89008 b_and!41743)))

(declare-fun b!1187583 () Bool)

(declare-fun res!789658 () Bool)

(declare-fun e!675292 () Bool)

(assert (=> b!1187583 (=> (not res!789658) (not e!675292))))

(declare-datatypes ((array!76690 0))(
  ( (array!76691 (arr!36991 (Array (_ BitVec 32) (_ BitVec 64))) (size!37528 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76690)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76690 (_ BitVec 32)) Bool)

(assert (=> b!1187583 (= res!789658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1187584 () Bool)

(declare-fun res!789645 () Bool)

(assert (=> b!1187584 (=> (not res!789645) (not e!675292))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1187584 (= res!789645 (validKeyInArray!0 k0!934))))

(declare-fun res!789654 () Bool)

(assert (=> start!99888 (=> (not res!789654) (not e!675292))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99888 (= res!789654 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37528 _keys!1208))))))

(assert (=> start!99888 e!675292))

(declare-fun tp_is_empty!29961 () Bool)

(assert (=> start!99888 tp_is_empty!29961))

(declare-fun array_inv!28110 (array!76690) Bool)

(assert (=> start!99888 (array_inv!28110 _keys!1208)))

(assert (=> start!99888 true))

(assert (=> start!99888 tp!89008))

(declare-datatypes ((V!45075 0))(
  ( (V!45076 (val!15037 Int)) )
))
(declare-datatypes ((ValueCell!14271 0))(
  ( (ValueCellFull!14271 (v!17676 V!45075)) (EmptyCell!14271) )
))
(declare-datatypes ((array!76692 0))(
  ( (array!76693 (arr!36992 (Array (_ BitVec 32) ValueCell!14271)) (size!37529 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76692)

(declare-fun e!675296 () Bool)

(declare-fun array_inv!28111 (array!76692) Bool)

(assert (=> start!99888 (and (array_inv!28111 _values!996) e!675296)))

(declare-fun b!1187585 () Bool)

(declare-fun e!675299 () Bool)

(declare-fun e!675291 () Bool)

(assert (=> b!1187585 (= e!675299 e!675291)))

(declare-fun res!789650 () Bool)

(assert (=> b!1187585 (=> res!789650 e!675291)))

(assert (=> b!1187585 (= res!789650 (not (= (select (arr!36991 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1187586 () Bool)

(declare-fun res!789646 () Bool)

(assert (=> b!1187586 (=> (not res!789646) (not e!675292))))

(declare-datatypes ((List!26192 0))(
  ( (Nil!26189) (Cons!26188 (h!27397 (_ BitVec 64)) (t!38622 List!26192)) )
))
(declare-fun arrayNoDuplicates!0 (array!76690 (_ BitVec 32) List!26192) Bool)

(assert (=> b!1187586 (= res!789646 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26189))))

(declare-fun b!1187587 () Bool)

(declare-fun e!675300 () Bool)

(assert (=> b!1187587 (= e!675300 tp_is_empty!29961)))

(declare-fun b!1187588 () Bool)

(declare-datatypes ((Unit!39315 0))(
  ( (Unit!39316) )
))
(declare-fun e!675298 () Unit!39315)

(declare-fun Unit!39317 () Unit!39315)

(assert (=> b!1187588 (= e!675298 Unit!39317)))

(declare-fun b!1187589 () Bool)

(declare-fun e!675294 () Bool)

(assert (=> b!1187589 (= e!675292 e!675294)))

(declare-fun res!789647 () Bool)

(assert (=> b!1187589 (=> (not res!789647) (not e!675294))))

(declare-fun lt!539992 () array!76690)

(assert (=> b!1187589 (= res!789647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!539992 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1187589 (= lt!539992 (array!76691 (store (arr!36991 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37528 _keys!1208)))))

(declare-fun b!1187590 () Bool)

(declare-fun e!675295 () Bool)

(declare-fun e!675290 () Bool)

(assert (=> b!1187590 (= e!675295 e!675290)))

(declare-fun res!789644 () Bool)

(assert (=> b!1187590 (=> res!789644 e!675290)))

(assert (=> b!1187590 (= res!789644 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45075)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19432 0))(
  ( (tuple2!19433 (_1!9726 (_ BitVec 64)) (_2!9726 V!45075)) )
))
(declare-datatypes ((List!26193 0))(
  ( (Nil!26190) (Cons!26189 (h!27398 tuple2!19432) (t!38623 List!26193)) )
))
(declare-datatypes ((ListLongMap!17413 0))(
  ( (ListLongMap!17414 (toList!8722 List!26193)) )
))
(declare-fun lt!539999 () ListLongMap!17413)

(declare-fun lt!539997 () array!76692)

(declare-fun minValue!944 () V!45075)

(declare-fun getCurrentListMapNoExtraKeys!5137 (array!76690 array!76692 (_ BitVec 32) (_ BitVec 32) V!45075 V!45075 (_ BitVec 32) Int) ListLongMap!17413)

(assert (=> b!1187590 (= lt!539999 (getCurrentListMapNoExtraKeys!5137 lt!539992 lt!539997 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!539988 () V!45075)

(assert (=> b!1187590 (= lt!539997 (array!76693 (store (arr!36992 _values!996) i!673 (ValueCellFull!14271 lt!539988)) (size!37529 _values!996)))))

(declare-fun dynLambda!3094 (Int (_ BitVec 64)) V!45075)

(assert (=> b!1187590 (= lt!539988 (dynLambda!3094 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!539986 () ListLongMap!17413)

(assert (=> b!1187590 (= lt!539986 (getCurrentListMapNoExtraKeys!5137 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1187591 () Bool)

(assert (=> b!1187591 (= e!675294 (not e!675295))))

(declare-fun res!789656 () Bool)

(assert (=> b!1187591 (=> res!789656 e!675295)))

(assert (=> b!1187591 (= res!789656 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76690 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1187591 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!539998 () Unit!39315)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76690 (_ BitVec 64) (_ BitVec 32)) Unit!39315)

(assert (=> b!1187591 (= lt!539998 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!46769 () Bool)

(declare-fun mapRes!46769 () Bool)

(declare-fun tp!89007 () Bool)

(assert (=> mapNonEmpty!46769 (= mapRes!46769 (and tp!89007 e!675300))))

(declare-fun mapValue!46769 () ValueCell!14271)

(declare-fun mapRest!46769 () (Array (_ BitVec 32) ValueCell!14271))

(declare-fun mapKey!46769 () (_ BitVec 32))

(assert (=> mapNonEmpty!46769 (= (arr!36992 _values!996) (store mapRest!46769 mapKey!46769 mapValue!46769))))

(declare-fun b!1187592 () Bool)

(declare-fun e!675293 () Bool)

(assert (=> b!1187592 (= e!675296 (and e!675293 mapRes!46769))))

(declare-fun condMapEmpty!46769 () Bool)

(declare-fun mapDefault!46769 () ValueCell!14271)

(assert (=> b!1187592 (= condMapEmpty!46769 (= (arr!36992 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14271)) mapDefault!46769)))))

(declare-fun b!1187593 () Bool)

(declare-fun res!789649 () Bool)

(assert (=> b!1187593 (=> (not res!789649) (not e!675292))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1187593 (= res!789649 (validMask!0 mask!1564))))

(declare-fun b!1187594 () Bool)

(declare-fun Unit!39318 () Unit!39315)

(assert (=> b!1187594 (= e!675298 Unit!39318)))

(declare-fun lt!539996 () Unit!39315)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76690 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39315)

(assert (=> b!1187594 (= lt!539996 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1187594 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!539985 () Unit!39315)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76690 (_ BitVec 32) (_ BitVec 32)) Unit!39315)

(assert (=> b!1187594 (= lt!539985 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1187594 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26189)))

(declare-fun lt!539989 () Unit!39315)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76690 (_ BitVec 64) (_ BitVec 32) List!26192) Unit!39315)

(assert (=> b!1187594 (= lt!539989 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26189))))

(assert (=> b!1187594 false))

(declare-fun b!1187595 () Bool)

(declare-fun e!675297 () Bool)

(assert (=> b!1187595 (= e!675297 true)))

(declare-fun lt!540000 () ListLongMap!17413)

(declare-fun lt!539993 () ListLongMap!17413)

(declare-fun -!1707 (ListLongMap!17413 (_ BitVec 64)) ListLongMap!17413)

(assert (=> b!1187595 (= (-!1707 lt!540000 k0!934) lt!539993)))

(declare-fun lt!539983 () Unit!39315)

(declare-fun lt!539995 () V!45075)

(declare-fun lt!539994 () ListLongMap!17413)

(declare-fun addRemoveCommutativeForDiffKeys!214 (ListLongMap!17413 (_ BitVec 64) V!45075 (_ BitVec 64)) Unit!39315)

(assert (=> b!1187595 (= lt!539983 (addRemoveCommutativeForDiffKeys!214 lt!539994 (select (arr!36991 _keys!1208) from!1455) lt!539995 k0!934))))

(declare-fun lt!539990 () ListLongMap!17413)

(declare-fun lt!539987 () ListLongMap!17413)

(assert (=> b!1187595 (and (= lt!539986 lt!540000) (= lt!539990 lt!539987))))

(declare-fun lt!539984 () tuple2!19432)

(declare-fun +!3924 (ListLongMap!17413 tuple2!19432) ListLongMap!17413)

(assert (=> b!1187595 (= lt!540000 (+!3924 lt!539994 lt!539984))))

(assert (=> b!1187595 (not (= (select (arr!36991 _keys!1208) from!1455) k0!934))))

(declare-fun lt!539991 () Unit!39315)

(assert (=> b!1187595 (= lt!539991 e!675298)))

(declare-fun c!117218 () Bool)

(assert (=> b!1187595 (= c!117218 (= (select (arr!36991 _keys!1208) from!1455) k0!934))))

(assert (=> b!1187595 e!675299))

(declare-fun res!789657 () Bool)

(assert (=> b!1187595 (=> (not res!789657) (not e!675299))))

(assert (=> b!1187595 (= res!789657 (= lt!539999 lt!539993))))

(assert (=> b!1187595 (= lt!539993 (+!3924 lt!539990 lt!539984))))

(assert (=> b!1187595 (= lt!539984 (tuple2!19433 (select (arr!36991 _keys!1208) from!1455) lt!539995))))

(declare-fun get!18990 (ValueCell!14271 V!45075) V!45075)

(assert (=> b!1187595 (= lt!539995 (get!18990 (select (arr!36992 _values!996) from!1455) lt!539988))))

(declare-fun b!1187596 () Bool)

(declare-fun res!789648 () Bool)

(assert (=> b!1187596 (=> (not res!789648) (not e!675292))))

(assert (=> b!1187596 (= res!789648 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37528 _keys!1208))))))

(declare-fun b!1187597 () Bool)

(declare-fun res!789655 () Bool)

(assert (=> b!1187597 (=> (not res!789655) (not e!675292))))

(assert (=> b!1187597 (= res!789655 (= (select (arr!36991 _keys!1208) i!673) k0!934))))

(declare-fun b!1187598 () Bool)

(declare-fun res!789652 () Bool)

(assert (=> b!1187598 (=> (not res!789652) (not e!675294))))

(assert (=> b!1187598 (= res!789652 (arrayNoDuplicates!0 lt!539992 #b00000000000000000000000000000000 Nil!26189))))

(declare-fun mapIsEmpty!46769 () Bool)

(assert (=> mapIsEmpty!46769 mapRes!46769))

(declare-fun b!1187599 () Bool)

(assert (=> b!1187599 (= e!675293 tp_is_empty!29961)))

(declare-fun b!1187600 () Bool)

(assert (=> b!1187600 (= e!675291 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1187601 () Bool)

(declare-fun res!789651 () Bool)

(assert (=> b!1187601 (=> (not res!789651) (not e!675292))))

(assert (=> b!1187601 (= res!789651 (and (= (size!37529 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37528 _keys!1208) (size!37529 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1187602 () Bool)

(assert (=> b!1187602 (= e!675290 e!675297)))

(declare-fun res!789653 () Bool)

(assert (=> b!1187602 (=> res!789653 e!675297)))

(assert (=> b!1187602 (= res!789653 (not (validKeyInArray!0 (select (arr!36991 _keys!1208) from!1455))))))

(assert (=> b!1187602 (= lt!539987 lt!539990)))

(assert (=> b!1187602 (= lt!539990 (-!1707 lt!539994 k0!934))))

(assert (=> b!1187602 (= lt!539987 (getCurrentListMapNoExtraKeys!5137 lt!539992 lt!539997 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1187602 (= lt!539994 (getCurrentListMapNoExtraKeys!5137 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!539982 () Unit!39315)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!916 (array!76690 array!76692 (_ BitVec 32) (_ BitVec 32) V!45075 V!45075 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39315)

(assert (=> b!1187602 (= lt!539982 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!916 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!99888 res!789654) b!1187593))

(assert (= (and b!1187593 res!789649) b!1187601))

(assert (= (and b!1187601 res!789651) b!1187583))

(assert (= (and b!1187583 res!789658) b!1187586))

(assert (= (and b!1187586 res!789646) b!1187596))

(assert (= (and b!1187596 res!789648) b!1187584))

(assert (= (and b!1187584 res!789645) b!1187597))

(assert (= (and b!1187597 res!789655) b!1187589))

(assert (= (and b!1187589 res!789647) b!1187598))

(assert (= (and b!1187598 res!789652) b!1187591))

(assert (= (and b!1187591 (not res!789656)) b!1187590))

(assert (= (and b!1187590 (not res!789644)) b!1187602))

(assert (= (and b!1187602 (not res!789653)) b!1187595))

(assert (= (and b!1187595 res!789657) b!1187585))

(assert (= (and b!1187585 (not res!789650)) b!1187600))

(assert (= (and b!1187595 c!117218) b!1187594))

(assert (= (and b!1187595 (not c!117218)) b!1187588))

(assert (= (and b!1187592 condMapEmpty!46769) mapIsEmpty!46769))

(assert (= (and b!1187592 (not condMapEmpty!46769)) mapNonEmpty!46769))

(get-info :version)

(assert (= (and mapNonEmpty!46769 ((_ is ValueCellFull!14271) mapValue!46769)) b!1187587))

(assert (= (and b!1187592 ((_ is ValueCellFull!14271) mapDefault!46769)) b!1187599))

(assert (= start!99888 b!1187592))

(declare-fun b_lambda!20593 () Bool)

(assert (=> (not b_lambda!20593) (not b!1187590)))

(declare-fun t!38621 () Bool)

(declare-fun tb!10251 () Bool)

(assert (=> (and start!99888 (= defaultEntry!1004 defaultEntry!1004) t!38621) tb!10251))

(declare-fun result!21061 () Bool)

(assert (=> tb!10251 (= result!21061 tp_is_empty!29961)))

(assert (=> b!1187590 t!38621))

(declare-fun b_and!41745 () Bool)

(assert (= b_and!41743 (and (=> t!38621 result!21061) b_and!41745)))

(declare-fun m!1096335 () Bool)

(assert (=> b!1187602 m!1096335))

(declare-fun m!1096337 () Bool)

(assert (=> b!1187602 m!1096337))

(declare-fun m!1096339 () Bool)

(assert (=> b!1187602 m!1096339))

(declare-fun m!1096341 () Bool)

(assert (=> b!1187602 m!1096341))

(declare-fun m!1096343 () Bool)

(assert (=> b!1187602 m!1096343))

(declare-fun m!1096345 () Bool)

(assert (=> b!1187602 m!1096345))

(assert (=> b!1187602 m!1096343))

(declare-fun m!1096347 () Bool)

(assert (=> b!1187597 m!1096347))

(declare-fun m!1096349 () Bool)

(assert (=> b!1187594 m!1096349))

(declare-fun m!1096351 () Bool)

(assert (=> b!1187594 m!1096351))

(declare-fun m!1096353 () Bool)

(assert (=> b!1187594 m!1096353))

(declare-fun m!1096355 () Bool)

(assert (=> b!1187594 m!1096355))

(declare-fun m!1096357 () Bool)

(assert (=> b!1187594 m!1096357))

(declare-fun m!1096359 () Bool)

(assert (=> b!1187591 m!1096359))

(declare-fun m!1096361 () Bool)

(assert (=> b!1187591 m!1096361))

(declare-fun m!1096363 () Bool)

(assert (=> b!1187590 m!1096363))

(declare-fun m!1096365 () Bool)

(assert (=> b!1187590 m!1096365))

(declare-fun m!1096367 () Bool)

(assert (=> b!1187590 m!1096367))

(declare-fun m!1096369 () Bool)

(assert (=> b!1187590 m!1096369))

(declare-fun m!1096371 () Bool)

(assert (=> b!1187584 m!1096371))

(declare-fun m!1096373 () Bool)

(assert (=> start!99888 m!1096373))

(declare-fun m!1096375 () Bool)

(assert (=> start!99888 m!1096375))

(declare-fun m!1096377 () Bool)

(assert (=> b!1187586 m!1096377))

(declare-fun m!1096379 () Bool)

(assert (=> mapNonEmpty!46769 m!1096379))

(declare-fun m!1096381 () Bool)

(assert (=> b!1187589 m!1096381))

(declare-fun m!1096383 () Bool)

(assert (=> b!1187589 m!1096383))

(assert (=> b!1187585 m!1096343))

(declare-fun m!1096385 () Bool)

(assert (=> b!1187583 m!1096385))

(assert (=> b!1187595 m!1096343))

(declare-fun m!1096387 () Bool)

(assert (=> b!1187595 m!1096387))

(declare-fun m!1096389 () Bool)

(assert (=> b!1187595 m!1096389))

(declare-fun m!1096391 () Bool)

(assert (=> b!1187595 m!1096391))

(declare-fun m!1096393 () Bool)

(assert (=> b!1187595 m!1096393))

(assert (=> b!1187595 m!1096389))

(declare-fun m!1096395 () Bool)

(assert (=> b!1187595 m!1096395))

(declare-fun m!1096397 () Bool)

(assert (=> b!1187595 m!1096397))

(assert (=> b!1187595 m!1096343))

(declare-fun m!1096399 () Bool)

(assert (=> b!1187598 m!1096399))

(declare-fun m!1096401 () Bool)

(assert (=> b!1187593 m!1096401))

(declare-fun m!1096403 () Bool)

(assert (=> b!1187600 m!1096403))

(check-sat (not b!1187589) (not start!99888) (not b!1187600) (not b!1187593) (not b!1187584) (not b!1187586) (not b!1187602) (not b_lambda!20593) (not b!1187595) (not b!1187594) (not b!1187598) (not b_next!25431) (not b!1187583) (not mapNonEmpty!46769) tp_is_empty!29961 b_and!41745 (not b!1187591) (not b!1187590))
(check-sat b_and!41745 (not b_next!25431))
