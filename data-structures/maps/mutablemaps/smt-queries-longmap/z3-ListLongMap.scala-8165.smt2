; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99894 () Bool)

(assert start!99894)

(declare-fun b_free!25437 () Bool)

(declare-fun b_next!25437 () Bool)

(assert (=> start!99894 (= b_free!25437 (not b_next!25437))))

(declare-fun tp!89026 () Bool)

(declare-fun b_and!41755 () Bool)

(assert (=> start!99894 (= tp!89026 b_and!41755)))

(declare-fun b!1187769 () Bool)

(declare-fun res!789789 () Bool)

(declare-fun e!675409 () Bool)

(assert (=> b!1187769 (=> (not res!789789) (not e!675409))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!76702 0))(
  ( (array!76703 (arr!36997 (Array (_ BitVec 32) (_ BitVec 64))) (size!37534 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76702)

(assert (=> b!1187769 (= res!789789 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37534 _keys!1208))))))

(declare-fun b!1187770 () Bool)

(declare-fun res!789786 () Bool)

(assert (=> b!1187770 (=> (not res!789786) (not e!675409))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1187770 (= res!789786 (validKeyInArray!0 k0!934))))

(declare-fun b!1187771 () Bool)

(declare-datatypes ((Unit!39325 0))(
  ( (Unit!39326) )
))
(declare-fun e!675401 () Unit!39325)

(declare-fun Unit!39327 () Unit!39325)

(assert (=> b!1187771 (= e!675401 Unit!39327)))

(declare-fun lt!540169 () Unit!39325)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76702 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39325)

(assert (=> b!1187771 (= lt!540169 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76702 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1187771 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!540167 () Unit!39325)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76702 (_ BitVec 32) (_ BitVec 32)) Unit!39325)

(assert (=> b!1187771 (= lt!540167 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26196 0))(
  ( (Nil!26193) (Cons!26192 (h!27401 (_ BitVec 64)) (t!38632 List!26196)) )
))
(declare-fun arrayNoDuplicates!0 (array!76702 (_ BitVec 32) List!26196) Bool)

(assert (=> b!1187771 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26193)))

(declare-fun lt!540168 () Unit!39325)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76702 (_ BitVec 64) (_ BitVec 32) List!26196) Unit!39325)

(assert (=> b!1187771 (= lt!540168 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26193))))

(assert (=> b!1187771 false))

(declare-fun b!1187772 () Bool)

(declare-fun res!789785 () Bool)

(declare-fun e!675407 () Bool)

(assert (=> b!1187772 (=> (not res!789785) (not e!675407))))

(declare-fun lt!540165 () array!76702)

(assert (=> b!1187772 (= res!789785 (arrayNoDuplicates!0 lt!540165 #b00000000000000000000000000000000 Nil!26193))))

(declare-fun b!1187773 () Bool)

(declare-fun e!675399 () Bool)

(assert (=> b!1187773 (= e!675407 (not e!675399))))

(declare-fun res!789781 () Bool)

(assert (=> b!1187773 (=> res!789781 e!675399)))

(assert (=> b!1187773 (= res!789781 (bvsgt from!1455 i!673))))

(assert (=> b!1187773 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!540160 () Unit!39325)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76702 (_ BitVec 64) (_ BitVec 32)) Unit!39325)

(assert (=> b!1187773 (= lt!540160 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1187774 () Bool)

(declare-fun res!789792 () Bool)

(assert (=> b!1187774 (=> (not res!789792) (not e!675409))))

(assert (=> b!1187774 (= res!789792 (= (select (arr!36997 _keys!1208) i!673) k0!934))))

(declare-fun b!1187775 () Bool)

(declare-fun e!675406 () Bool)

(declare-fun e!675400 () Bool)

(declare-fun mapRes!46778 () Bool)

(assert (=> b!1187775 (= e!675406 (and e!675400 mapRes!46778))))

(declare-fun condMapEmpty!46778 () Bool)

(declare-datatypes ((V!45083 0))(
  ( (V!45084 (val!15040 Int)) )
))
(declare-datatypes ((ValueCell!14274 0))(
  ( (ValueCellFull!14274 (v!17679 V!45083)) (EmptyCell!14274) )
))
(declare-datatypes ((array!76704 0))(
  ( (array!76705 (arr!36998 (Array (_ BitVec 32) ValueCell!14274)) (size!37535 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76704)

(declare-fun mapDefault!46778 () ValueCell!14274)

(assert (=> b!1187775 (= condMapEmpty!46778 (= (arr!36998 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14274)) mapDefault!46778)))))

(declare-fun res!789787 () Bool)

(assert (=> start!99894 (=> (not res!789787) (not e!675409))))

(assert (=> start!99894 (= res!789787 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37534 _keys!1208))))))

(assert (=> start!99894 e!675409))

(declare-fun tp_is_empty!29967 () Bool)

(assert (=> start!99894 tp_is_empty!29967))

(declare-fun array_inv!28114 (array!76702) Bool)

(assert (=> start!99894 (array_inv!28114 _keys!1208)))

(assert (=> start!99894 true))

(assert (=> start!99894 tp!89026))

(declare-fun array_inv!28115 (array!76704) Bool)

(assert (=> start!99894 (and (array_inv!28115 _values!996) e!675406)))

(declare-fun b!1187776 () Bool)

(declare-fun res!789783 () Bool)

(assert (=> b!1187776 (=> (not res!789783) (not e!675409))))

(assert (=> b!1187776 (= res!789783 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26193))))

(declare-fun b!1187777 () Bool)

(declare-fun res!789782 () Bool)

(assert (=> b!1187777 (=> (not res!789782) (not e!675409))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1187777 (= res!789782 (validMask!0 mask!1564))))

(declare-fun b!1187778 () Bool)

(declare-fun e!675403 () Bool)

(assert (=> b!1187778 (= e!675399 e!675403)))

(declare-fun res!789780 () Bool)

(assert (=> b!1187778 (=> res!789780 e!675403)))

(assert (=> b!1187778 (= res!789780 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45083)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun minValue!944 () V!45083)

(declare-datatypes ((tuple2!19436 0))(
  ( (tuple2!19437 (_1!9728 (_ BitVec 64)) (_2!9728 V!45083)) )
))
(declare-datatypes ((List!26197 0))(
  ( (Nil!26194) (Cons!26193 (h!27402 tuple2!19436) (t!38633 List!26197)) )
))
(declare-datatypes ((ListLongMap!17417 0))(
  ( (ListLongMap!17418 (toList!8724 List!26197)) )
))
(declare-fun lt!540154 () ListLongMap!17417)

(declare-fun lt!540155 () array!76704)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5139 (array!76702 array!76704 (_ BitVec 32) (_ BitVec 32) V!45083 V!45083 (_ BitVec 32) Int) ListLongMap!17417)

(assert (=> b!1187778 (= lt!540154 (getCurrentListMapNoExtraKeys!5139 lt!540165 lt!540155 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!540156 () V!45083)

(assert (=> b!1187778 (= lt!540155 (array!76705 (store (arr!36998 _values!996) i!673 (ValueCellFull!14274 lt!540156)) (size!37535 _values!996)))))

(declare-fun dynLambda!3096 (Int (_ BitVec 64)) V!45083)

(assert (=> b!1187778 (= lt!540156 (dynLambda!3096 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!540157 () ListLongMap!17417)

(assert (=> b!1187778 (= lt!540157 (getCurrentListMapNoExtraKeys!5139 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1187779 () Bool)

(declare-fun Unit!39328 () Unit!39325)

(assert (=> b!1187779 (= e!675401 Unit!39328)))

(declare-fun mapIsEmpty!46778 () Bool)

(assert (=> mapIsEmpty!46778 mapRes!46778))

(declare-fun b!1187780 () Bool)

(declare-fun e!675402 () Bool)

(assert (=> b!1187780 (= e!675402 true)))

(declare-fun lt!540162 () ListLongMap!17417)

(declare-fun lt!540166 () ListLongMap!17417)

(declare-fun -!1709 (ListLongMap!17417 (_ BitVec 64)) ListLongMap!17417)

(assert (=> b!1187780 (= (-!1709 lt!540162 k0!934) lt!540166)))

(declare-fun lt!540159 () V!45083)

(declare-fun lt!540171 () ListLongMap!17417)

(declare-fun lt!540164 () Unit!39325)

(declare-fun addRemoveCommutativeForDiffKeys!216 (ListLongMap!17417 (_ BitVec 64) V!45083 (_ BitVec 64)) Unit!39325)

(assert (=> b!1187780 (= lt!540164 (addRemoveCommutativeForDiffKeys!216 lt!540171 (select (arr!36997 _keys!1208) from!1455) lt!540159 k0!934))))

(declare-fun lt!540170 () ListLongMap!17417)

(declare-fun lt!540153 () ListLongMap!17417)

(assert (=> b!1187780 (and (= lt!540157 lt!540162) (= lt!540170 lt!540153))))

(declare-fun lt!540163 () tuple2!19436)

(declare-fun +!3926 (ListLongMap!17417 tuple2!19436) ListLongMap!17417)

(assert (=> b!1187780 (= lt!540162 (+!3926 lt!540171 lt!540163))))

(assert (=> b!1187780 (not (= (select (arr!36997 _keys!1208) from!1455) k0!934))))

(declare-fun lt!540161 () Unit!39325)

(assert (=> b!1187780 (= lt!540161 e!675401)))

(declare-fun c!117227 () Bool)

(assert (=> b!1187780 (= c!117227 (= (select (arr!36997 _keys!1208) from!1455) k0!934))))

(declare-fun e!675398 () Bool)

(assert (=> b!1187780 e!675398))

(declare-fun res!789791 () Bool)

(assert (=> b!1187780 (=> (not res!789791) (not e!675398))))

(assert (=> b!1187780 (= res!789791 (= lt!540154 lt!540166))))

(assert (=> b!1187780 (= lt!540166 (+!3926 lt!540170 lt!540163))))

(assert (=> b!1187780 (= lt!540163 (tuple2!19437 (select (arr!36997 _keys!1208) from!1455) lt!540159))))

(declare-fun get!18994 (ValueCell!14274 V!45083) V!45083)

(assert (=> b!1187780 (= lt!540159 (get!18994 (select (arr!36998 _values!996) from!1455) lt!540156))))

(declare-fun b!1187781 () Bool)

(declare-fun res!789793 () Bool)

(assert (=> b!1187781 (=> (not res!789793) (not e!675409))))

(assert (=> b!1187781 (= res!789793 (and (= (size!37535 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37534 _keys!1208) (size!37535 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1187782 () Bool)

(assert (=> b!1187782 (= e!675400 tp_is_empty!29967)))

(declare-fun b!1187783 () Bool)

(declare-fun e!675408 () Bool)

(assert (=> b!1187783 (= e!675398 e!675408)))

(declare-fun res!789788 () Bool)

(assert (=> b!1187783 (=> res!789788 e!675408)))

(assert (=> b!1187783 (= res!789788 (not (= (select (arr!36997 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1187784 () Bool)

(assert (=> b!1187784 (= e!675408 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1187785 () Bool)

(declare-fun res!789779 () Bool)

(assert (=> b!1187785 (=> (not res!789779) (not e!675409))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76702 (_ BitVec 32)) Bool)

(assert (=> b!1187785 (= res!789779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1187786 () Bool)

(declare-fun e!675405 () Bool)

(assert (=> b!1187786 (= e!675405 tp_is_empty!29967)))

(declare-fun b!1187787 () Bool)

(assert (=> b!1187787 (= e!675409 e!675407)))

(declare-fun res!789784 () Bool)

(assert (=> b!1187787 (=> (not res!789784) (not e!675407))))

(assert (=> b!1187787 (= res!789784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540165 mask!1564))))

(assert (=> b!1187787 (= lt!540165 (array!76703 (store (arr!36997 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37534 _keys!1208)))))

(declare-fun b!1187788 () Bool)

(assert (=> b!1187788 (= e!675403 e!675402)))

(declare-fun res!789790 () Bool)

(assert (=> b!1187788 (=> res!789790 e!675402)))

(assert (=> b!1187788 (= res!789790 (not (validKeyInArray!0 (select (arr!36997 _keys!1208) from!1455))))))

(assert (=> b!1187788 (= lt!540153 lt!540170)))

(assert (=> b!1187788 (= lt!540170 (-!1709 lt!540171 k0!934))))

(assert (=> b!1187788 (= lt!540153 (getCurrentListMapNoExtraKeys!5139 lt!540165 lt!540155 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1187788 (= lt!540171 (getCurrentListMapNoExtraKeys!5139 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!540158 () Unit!39325)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!917 (array!76702 array!76704 (_ BitVec 32) (_ BitVec 32) V!45083 V!45083 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39325)

(assert (=> b!1187788 (= lt!540158 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!917 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!46778 () Bool)

(declare-fun tp!89025 () Bool)

(assert (=> mapNonEmpty!46778 (= mapRes!46778 (and tp!89025 e!675405))))

(declare-fun mapRest!46778 () (Array (_ BitVec 32) ValueCell!14274))

(declare-fun mapKey!46778 () (_ BitVec 32))

(declare-fun mapValue!46778 () ValueCell!14274)

(assert (=> mapNonEmpty!46778 (= (arr!36998 _values!996) (store mapRest!46778 mapKey!46778 mapValue!46778))))

(assert (= (and start!99894 res!789787) b!1187777))

(assert (= (and b!1187777 res!789782) b!1187781))

(assert (= (and b!1187781 res!789793) b!1187785))

(assert (= (and b!1187785 res!789779) b!1187776))

(assert (= (and b!1187776 res!789783) b!1187769))

(assert (= (and b!1187769 res!789789) b!1187770))

(assert (= (and b!1187770 res!789786) b!1187774))

(assert (= (and b!1187774 res!789792) b!1187787))

(assert (= (and b!1187787 res!789784) b!1187772))

(assert (= (and b!1187772 res!789785) b!1187773))

(assert (= (and b!1187773 (not res!789781)) b!1187778))

(assert (= (and b!1187778 (not res!789780)) b!1187788))

(assert (= (and b!1187788 (not res!789790)) b!1187780))

(assert (= (and b!1187780 res!789791) b!1187783))

(assert (= (and b!1187783 (not res!789788)) b!1187784))

(assert (= (and b!1187780 c!117227) b!1187771))

(assert (= (and b!1187780 (not c!117227)) b!1187779))

(assert (= (and b!1187775 condMapEmpty!46778) mapIsEmpty!46778))

(assert (= (and b!1187775 (not condMapEmpty!46778)) mapNonEmpty!46778))

(get-info :version)

(assert (= (and mapNonEmpty!46778 ((_ is ValueCellFull!14274) mapValue!46778)) b!1187786))

(assert (= (and b!1187775 ((_ is ValueCellFull!14274) mapDefault!46778)) b!1187782))

(assert (= start!99894 b!1187775))

(declare-fun b_lambda!20599 () Bool)

(assert (=> (not b_lambda!20599) (not b!1187778)))

(declare-fun t!38631 () Bool)

(declare-fun tb!10257 () Bool)

(assert (=> (and start!99894 (= defaultEntry!1004 defaultEntry!1004) t!38631) tb!10257))

(declare-fun result!21073 () Bool)

(assert (=> tb!10257 (= result!21073 tp_is_empty!29967)))

(assert (=> b!1187778 t!38631))

(declare-fun b_and!41757 () Bool)

(assert (= b_and!41755 (and (=> t!38631 result!21073) b_and!41757)))

(declare-fun m!1096545 () Bool)

(assert (=> b!1187785 m!1096545))

(declare-fun m!1096547 () Bool)

(assert (=> b!1187771 m!1096547))

(declare-fun m!1096549 () Bool)

(assert (=> b!1187771 m!1096549))

(declare-fun m!1096551 () Bool)

(assert (=> b!1187771 m!1096551))

(declare-fun m!1096553 () Bool)

(assert (=> b!1187771 m!1096553))

(declare-fun m!1096555 () Bool)

(assert (=> b!1187771 m!1096555))

(declare-fun m!1096557 () Bool)

(assert (=> start!99894 m!1096557))

(declare-fun m!1096559 () Bool)

(assert (=> start!99894 m!1096559))

(declare-fun m!1096561 () Bool)

(assert (=> b!1187773 m!1096561))

(declare-fun m!1096563 () Bool)

(assert (=> b!1187773 m!1096563))

(declare-fun m!1096565 () Bool)

(assert (=> b!1187784 m!1096565))

(declare-fun m!1096567 () Bool)

(assert (=> b!1187777 m!1096567))

(declare-fun m!1096569 () Bool)

(assert (=> b!1187787 m!1096569))

(declare-fun m!1096571 () Bool)

(assert (=> b!1187787 m!1096571))

(declare-fun m!1096573 () Bool)

(assert (=> b!1187778 m!1096573))

(declare-fun m!1096575 () Bool)

(assert (=> b!1187778 m!1096575))

(declare-fun m!1096577 () Bool)

(assert (=> b!1187778 m!1096577))

(declare-fun m!1096579 () Bool)

(assert (=> b!1187778 m!1096579))

(declare-fun m!1096581 () Bool)

(assert (=> b!1187780 m!1096581))

(declare-fun m!1096583 () Bool)

(assert (=> b!1187780 m!1096583))

(declare-fun m!1096585 () Bool)

(assert (=> b!1187780 m!1096585))

(declare-fun m!1096587 () Bool)

(assert (=> b!1187780 m!1096587))

(declare-fun m!1096589 () Bool)

(assert (=> b!1187780 m!1096589))

(assert (=> b!1187780 m!1096589))

(declare-fun m!1096591 () Bool)

(assert (=> b!1187780 m!1096591))

(assert (=> b!1187780 m!1096581))

(declare-fun m!1096593 () Bool)

(assert (=> b!1187780 m!1096593))

(declare-fun m!1096595 () Bool)

(assert (=> b!1187772 m!1096595))

(assert (=> b!1187783 m!1096589))

(declare-fun m!1096597 () Bool)

(assert (=> b!1187774 m!1096597))

(declare-fun m!1096599 () Bool)

(assert (=> mapNonEmpty!46778 m!1096599))

(declare-fun m!1096601 () Bool)

(assert (=> b!1187776 m!1096601))

(declare-fun m!1096603 () Bool)

(assert (=> b!1187788 m!1096603))

(declare-fun m!1096605 () Bool)

(assert (=> b!1187788 m!1096605))

(declare-fun m!1096607 () Bool)

(assert (=> b!1187788 m!1096607))

(declare-fun m!1096609 () Bool)

(assert (=> b!1187788 m!1096609))

(assert (=> b!1187788 m!1096589))

(declare-fun m!1096611 () Bool)

(assert (=> b!1187788 m!1096611))

(assert (=> b!1187788 m!1096589))

(declare-fun m!1096613 () Bool)

(assert (=> b!1187770 m!1096613))

(check-sat (not b!1187784) (not b!1187787) (not b!1187785) (not b!1187780) (not b_lambda!20599) (not start!99894) (not b!1187778) (not b_next!25437) (not b!1187772) (not b!1187788) (not b!1187773) (not b!1187771) (not b!1187770) b_and!41757 (not b!1187777) (not b!1187776) (not mapNonEmpty!46778) tp_is_empty!29967)
(check-sat b_and!41757 (not b_next!25437))
