; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99810 () Bool)

(assert start!99810)

(declare-fun b_free!25353 () Bool)

(declare-fun b_next!25353 () Bool)

(assert (=> start!99810 (= b_free!25353 (not b_next!25353))))

(declare-fun tp!88773 () Bool)

(declare-fun b_and!41587 () Bool)

(assert (=> start!99810 (= tp!88773 b_and!41587)))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun e!673896 () Bool)

(declare-datatypes ((array!76534 0))(
  ( (array!76535 (arr!36913 (Array (_ BitVec 32) (_ BitVec 64))) (size!37450 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76534)

(declare-fun b!1185165 () Bool)

(declare-fun arrayContainsKey!0 (array!76534 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1185165 (= e!673896 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1185166 () Bool)

(declare-fun e!673892 () Bool)

(declare-fun e!673893 () Bool)

(assert (=> b!1185166 (= e!673892 e!673893)))

(declare-fun res!787901 () Bool)

(assert (=> b!1185166 (=> res!787901 e!673893)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1185166 (= res!787901 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44971 0))(
  ( (V!44972 (val!14998 Int)) )
))
(declare-fun zeroValue!944 () V!44971)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!19360 0))(
  ( (tuple2!19361 (_1!9690 (_ BitVec 64)) (_2!9690 V!44971)) )
))
(declare-datatypes ((List!26121 0))(
  ( (Nil!26118) (Cons!26117 (h!27326 tuple2!19360) (t!38473 List!26121)) )
))
(declare-datatypes ((ListLongMap!17341 0))(
  ( (ListLongMap!17342 (toList!8686 List!26121)) )
))
(declare-fun lt!537765 () ListLongMap!17341)

(declare-datatypes ((ValueCell!14232 0))(
  ( (ValueCellFull!14232 (v!17637 V!44971)) (EmptyCell!14232) )
))
(declare-datatypes ((array!76536 0))(
  ( (array!76537 (arr!36914 (Array (_ BitVec 32) ValueCell!14232)) (size!37451 (_ BitVec 32))) )
))
(declare-fun lt!537770 () array!76536)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!537761 () array!76534)

(declare-fun minValue!944 () V!44971)

(declare-fun getCurrentListMapNoExtraKeys!5105 (array!76534 array!76536 (_ BitVec 32) (_ BitVec 32) V!44971 V!44971 (_ BitVec 32) Int) ListLongMap!17341)

(assert (=> b!1185166 (= lt!537765 (getCurrentListMapNoExtraKeys!5105 lt!537761 lt!537770 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!537759 () V!44971)

(declare-fun _values!996 () array!76536)

(assert (=> b!1185166 (= lt!537770 (array!76537 (store (arr!36914 _values!996) i!673 (ValueCellFull!14232 lt!537759)) (size!37451 _values!996)))))

(declare-fun dynLambda!3066 (Int (_ BitVec 64)) V!44971)

(assert (=> b!1185166 (= lt!537759 (dynLambda!3066 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!537772 () ListLongMap!17341)

(assert (=> b!1185166 (= lt!537772 (getCurrentListMapNoExtraKeys!5105 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1185167 () Bool)

(declare-fun res!787890 () Bool)

(declare-fun e!673890 () Bool)

(assert (=> b!1185167 (=> (not res!787890) (not e!673890))))

(assert (=> b!1185167 (= res!787890 (= (select (arr!36913 _keys!1208) i!673) k0!934))))

(declare-fun res!787894 () Bool)

(assert (=> start!99810 (=> (not res!787894) (not e!673890))))

(assert (=> start!99810 (= res!787894 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37450 _keys!1208))))))

(assert (=> start!99810 e!673890))

(declare-fun tp_is_empty!29883 () Bool)

(assert (=> start!99810 tp_is_empty!29883))

(declare-fun array_inv!28052 (array!76534) Bool)

(assert (=> start!99810 (array_inv!28052 _keys!1208)))

(assert (=> start!99810 true))

(assert (=> start!99810 tp!88773))

(declare-fun e!673897 () Bool)

(declare-fun array_inv!28053 (array!76536) Bool)

(assert (=> start!99810 (and (array_inv!28053 _values!996) e!673897)))

(declare-fun b!1185168 () Bool)

(declare-fun e!673888 () Bool)

(assert (=> b!1185168 (= e!673888 (not e!673892))))

(declare-fun res!787903 () Bool)

(assert (=> b!1185168 (=> res!787903 e!673892)))

(assert (=> b!1185168 (= res!787903 (bvsgt from!1455 i!673))))

(assert (=> b!1185168 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39179 0))(
  ( (Unit!39180) )
))
(declare-fun lt!537771 () Unit!39179)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76534 (_ BitVec 64) (_ BitVec 32)) Unit!39179)

(assert (=> b!1185168 (= lt!537771 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1185169 () Bool)

(declare-fun res!787889 () Bool)

(assert (=> b!1185169 (=> (not res!787889) (not e!673890))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76534 (_ BitVec 32)) Bool)

(assert (=> b!1185169 (= res!787889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1185170 () Bool)

(declare-fun res!787895 () Bool)

(assert (=> b!1185170 (=> (not res!787895) (not e!673890))))

(assert (=> b!1185170 (= res!787895 (and (= (size!37451 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37450 _keys!1208) (size!37451 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1185171 () Bool)

(declare-fun res!787896 () Bool)

(assert (=> b!1185171 (=> (not res!787896) (not e!673888))))

(declare-datatypes ((List!26122 0))(
  ( (Nil!26119) (Cons!26118 (h!27327 (_ BitVec 64)) (t!38474 List!26122)) )
))
(declare-fun arrayNoDuplicates!0 (array!76534 (_ BitVec 32) List!26122) Bool)

(assert (=> b!1185171 (= res!787896 (arrayNoDuplicates!0 lt!537761 #b00000000000000000000000000000000 Nil!26119))))

(declare-fun b!1185172 () Bool)

(declare-fun e!673889 () Bool)

(assert (=> b!1185172 (= e!673889 true)))

(declare-fun lt!537764 () ListLongMap!17341)

(declare-fun lt!537760 () ListLongMap!17341)

(declare-fun -!1672 (ListLongMap!17341 (_ BitVec 64)) ListLongMap!17341)

(assert (=> b!1185172 (= (-!1672 lt!537764 k0!934) lt!537760)))

(declare-fun lt!537774 () Unit!39179)

(declare-fun lt!537766 () V!44971)

(declare-fun lt!537775 () ListLongMap!17341)

(declare-fun addRemoveCommutativeForDiffKeys!183 (ListLongMap!17341 (_ BitVec 64) V!44971 (_ BitVec 64)) Unit!39179)

(assert (=> b!1185172 (= lt!537774 (addRemoveCommutativeForDiffKeys!183 lt!537775 (select (arr!36913 _keys!1208) from!1455) lt!537766 k0!934))))

(declare-fun lt!537769 () ListLongMap!17341)

(declare-fun lt!537768 () ListLongMap!17341)

(assert (=> b!1185172 (and (= lt!537772 lt!537764) (= lt!537768 lt!537769))))

(declare-fun lt!537777 () tuple2!19360)

(declare-fun +!3893 (ListLongMap!17341 tuple2!19360) ListLongMap!17341)

(assert (=> b!1185172 (= lt!537764 (+!3893 lt!537775 lt!537777))))

(assert (=> b!1185172 (not (= (select (arr!36913 _keys!1208) from!1455) k0!934))))

(declare-fun lt!537773 () Unit!39179)

(declare-fun e!673887 () Unit!39179)

(assert (=> b!1185172 (= lt!537773 e!673887)))

(declare-fun c!117101 () Bool)

(assert (=> b!1185172 (= c!117101 (= (select (arr!36913 _keys!1208) from!1455) k0!934))))

(declare-fun e!673894 () Bool)

(assert (=> b!1185172 e!673894))

(declare-fun res!787900 () Bool)

(assert (=> b!1185172 (=> (not res!787900) (not e!673894))))

(assert (=> b!1185172 (= res!787900 (= lt!537765 lt!537760))))

(assert (=> b!1185172 (= lt!537760 (+!3893 lt!537768 lt!537777))))

(assert (=> b!1185172 (= lt!537777 (tuple2!19361 (select (arr!36913 _keys!1208) from!1455) lt!537766))))

(declare-fun get!18933 (ValueCell!14232 V!44971) V!44971)

(assert (=> b!1185172 (= lt!537766 (get!18933 (select (arr!36914 _values!996) from!1455) lt!537759))))

(declare-fun b!1185173 () Bool)

(declare-fun res!787897 () Bool)

(assert (=> b!1185173 (=> (not res!787897) (not e!673890))))

(assert (=> b!1185173 (= res!787897 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37450 _keys!1208))))))

(declare-fun b!1185174 () Bool)

(declare-fun Unit!39181 () Unit!39179)

(assert (=> b!1185174 (= e!673887 Unit!39181)))

(declare-fun b!1185175 () Bool)

(assert (=> b!1185175 (= e!673893 e!673889)))

(declare-fun res!787902 () Bool)

(assert (=> b!1185175 (=> res!787902 e!673889)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1185175 (= res!787902 (not (validKeyInArray!0 (select (arr!36913 _keys!1208) from!1455))))))

(assert (=> b!1185175 (= lt!537769 lt!537768)))

(assert (=> b!1185175 (= lt!537768 (-!1672 lt!537775 k0!934))))

(assert (=> b!1185175 (= lt!537769 (getCurrentListMapNoExtraKeys!5105 lt!537761 lt!537770 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1185175 (= lt!537775 (getCurrentListMapNoExtraKeys!5105 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!537767 () Unit!39179)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!887 (array!76534 array!76536 (_ BitVec 32) (_ BitVec 32) V!44971 V!44971 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39179)

(assert (=> b!1185175 (= lt!537767 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!887 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1185176 () Bool)

(declare-fun e!673895 () Bool)

(assert (=> b!1185176 (= e!673895 tp_is_empty!29883)))

(declare-fun b!1185177 () Bool)

(declare-fun Unit!39182 () Unit!39179)

(assert (=> b!1185177 (= e!673887 Unit!39182)))

(declare-fun lt!537763 () Unit!39179)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76534 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39179)

(assert (=> b!1185177 (= lt!537763 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1185177 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!537776 () Unit!39179)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76534 (_ BitVec 32) (_ BitVec 32)) Unit!39179)

(assert (=> b!1185177 (= lt!537776 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1185177 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26119)))

(declare-fun lt!537762 () Unit!39179)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76534 (_ BitVec 64) (_ BitVec 32) List!26122) Unit!39179)

(assert (=> b!1185177 (= lt!537762 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26119))))

(assert (=> b!1185177 false))

(declare-fun b!1185178 () Bool)

(declare-fun res!787899 () Bool)

(assert (=> b!1185178 (=> (not res!787899) (not e!673890))))

(assert (=> b!1185178 (= res!787899 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26119))))

(declare-fun b!1185179 () Bool)

(declare-fun e!673886 () Bool)

(assert (=> b!1185179 (= e!673886 tp_is_empty!29883)))

(declare-fun b!1185180 () Bool)

(assert (=> b!1185180 (= e!673894 e!673896)))

(declare-fun res!787891 () Bool)

(assert (=> b!1185180 (=> res!787891 e!673896)))

(assert (=> b!1185180 (= res!787891 (not (= (select (arr!36913 _keys!1208) from!1455) k0!934)))))

(declare-fun mapIsEmpty!46652 () Bool)

(declare-fun mapRes!46652 () Bool)

(assert (=> mapIsEmpty!46652 mapRes!46652))

(declare-fun b!1185181 () Bool)

(declare-fun res!787892 () Bool)

(assert (=> b!1185181 (=> (not res!787892) (not e!673890))))

(assert (=> b!1185181 (= res!787892 (validKeyInArray!0 k0!934))))

(declare-fun b!1185182 () Bool)

(declare-fun res!787898 () Bool)

(assert (=> b!1185182 (=> (not res!787898) (not e!673890))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1185182 (= res!787898 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!46652 () Bool)

(declare-fun tp!88774 () Bool)

(assert (=> mapNonEmpty!46652 (= mapRes!46652 (and tp!88774 e!673886))))

(declare-fun mapRest!46652 () (Array (_ BitVec 32) ValueCell!14232))

(declare-fun mapValue!46652 () ValueCell!14232)

(declare-fun mapKey!46652 () (_ BitVec 32))

(assert (=> mapNonEmpty!46652 (= (arr!36914 _values!996) (store mapRest!46652 mapKey!46652 mapValue!46652))))

(declare-fun b!1185183 () Bool)

(assert (=> b!1185183 (= e!673897 (and e!673895 mapRes!46652))))

(declare-fun condMapEmpty!46652 () Bool)

(declare-fun mapDefault!46652 () ValueCell!14232)

(assert (=> b!1185183 (= condMapEmpty!46652 (= (arr!36914 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14232)) mapDefault!46652)))))

(declare-fun b!1185184 () Bool)

(assert (=> b!1185184 (= e!673890 e!673888)))

(declare-fun res!787893 () Bool)

(assert (=> b!1185184 (=> (not res!787893) (not e!673888))))

(assert (=> b!1185184 (= res!787893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!537761 mask!1564))))

(assert (=> b!1185184 (= lt!537761 (array!76535 (store (arr!36913 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37450 _keys!1208)))))

(assert (= (and start!99810 res!787894) b!1185182))

(assert (= (and b!1185182 res!787898) b!1185170))

(assert (= (and b!1185170 res!787895) b!1185169))

(assert (= (and b!1185169 res!787889) b!1185178))

(assert (= (and b!1185178 res!787899) b!1185173))

(assert (= (and b!1185173 res!787897) b!1185181))

(assert (= (and b!1185181 res!787892) b!1185167))

(assert (= (and b!1185167 res!787890) b!1185184))

(assert (= (and b!1185184 res!787893) b!1185171))

(assert (= (and b!1185171 res!787896) b!1185168))

(assert (= (and b!1185168 (not res!787903)) b!1185166))

(assert (= (and b!1185166 (not res!787901)) b!1185175))

(assert (= (and b!1185175 (not res!787902)) b!1185172))

(assert (= (and b!1185172 res!787900) b!1185180))

(assert (= (and b!1185180 (not res!787891)) b!1185165))

(assert (= (and b!1185172 c!117101) b!1185177))

(assert (= (and b!1185172 (not c!117101)) b!1185174))

(assert (= (and b!1185183 condMapEmpty!46652) mapIsEmpty!46652))

(assert (= (and b!1185183 (not condMapEmpty!46652)) mapNonEmpty!46652))

(get-info :version)

(assert (= (and mapNonEmpty!46652 ((_ is ValueCellFull!14232) mapValue!46652)) b!1185179))

(assert (= (and b!1185183 ((_ is ValueCellFull!14232) mapDefault!46652)) b!1185176))

(assert (= start!99810 b!1185183))

(declare-fun b_lambda!20515 () Bool)

(assert (=> (not b_lambda!20515) (not b!1185166)))

(declare-fun t!38472 () Bool)

(declare-fun tb!10173 () Bool)

(assert (=> (and start!99810 (= defaultEntry!1004 defaultEntry!1004) t!38472) tb!10173))

(declare-fun result!20905 () Bool)

(assert (=> tb!10173 (= result!20905 tp_is_empty!29883)))

(assert (=> b!1185166 t!38472))

(declare-fun b_and!41589 () Bool)

(assert (= b_and!41587 (and (=> t!38472 result!20905) b_and!41589)))

(declare-fun m!1093605 () Bool)

(assert (=> b!1185177 m!1093605))

(declare-fun m!1093607 () Bool)

(assert (=> b!1185177 m!1093607))

(declare-fun m!1093609 () Bool)

(assert (=> b!1185177 m!1093609))

(declare-fun m!1093611 () Bool)

(assert (=> b!1185177 m!1093611))

(declare-fun m!1093613 () Bool)

(assert (=> b!1185177 m!1093613))

(declare-fun m!1093615 () Bool)

(assert (=> mapNonEmpty!46652 m!1093615))

(declare-fun m!1093617 () Bool)

(assert (=> b!1185175 m!1093617))

(declare-fun m!1093619 () Bool)

(assert (=> b!1185175 m!1093619))

(declare-fun m!1093621 () Bool)

(assert (=> b!1185175 m!1093621))

(declare-fun m!1093623 () Bool)

(assert (=> b!1185175 m!1093623))

(assert (=> b!1185175 m!1093621))

(declare-fun m!1093625 () Bool)

(assert (=> b!1185175 m!1093625))

(declare-fun m!1093627 () Bool)

(assert (=> b!1185175 m!1093627))

(declare-fun m!1093629 () Bool)

(assert (=> b!1185171 m!1093629))

(declare-fun m!1093631 () Bool)

(assert (=> b!1185166 m!1093631))

(declare-fun m!1093633 () Bool)

(assert (=> b!1185166 m!1093633))

(declare-fun m!1093635 () Bool)

(assert (=> b!1185166 m!1093635))

(declare-fun m!1093637 () Bool)

(assert (=> b!1185166 m!1093637))

(declare-fun m!1093639 () Bool)

(assert (=> b!1185184 m!1093639))

(declare-fun m!1093641 () Bool)

(assert (=> b!1185184 m!1093641))

(declare-fun m!1093643 () Bool)

(assert (=> b!1185181 m!1093643))

(declare-fun m!1093645 () Bool)

(assert (=> b!1185172 m!1093645))

(assert (=> b!1185172 m!1093645))

(declare-fun m!1093647 () Bool)

(assert (=> b!1185172 m!1093647))

(declare-fun m!1093649 () Bool)

(assert (=> b!1185172 m!1093649))

(assert (=> b!1185172 m!1093621))

(declare-fun m!1093651 () Bool)

(assert (=> b!1185172 m!1093651))

(assert (=> b!1185172 m!1093621))

(declare-fun m!1093653 () Bool)

(assert (=> b!1185172 m!1093653))

(declare-fun m!1093655 () Bool)

(assert (=> b!1185172 m!1093655))

(assert (=> b!1185180 m!1093621))

(declare-fun m!1093657 () Bool)

(assert (=> b!1185168 m!1093657))

(declare-fun m!1093659 () Bool)

(assert (=> b!1185168 m!1093659))

(declare-fun m!1093661 () Bool)

(assert (=> b!1185178 m!1093661))

(declare-fun m!1093663 () Bool)

(assert (=> b!1185182 m!1093663))

(declare-fun m!1093665 () Bool)

(assert (=> start!99810 m!1093665))

(declare-fun m!1093667 () Bool)

(assert (=> start!99810 m!1093667))

(declare-fun m!1093669 () Bool)

(assert (=> b!1185167 m!1093669))

(declare-fun m!1093671 () Bool)

(assert (=> b!1185165 m!1093671))

(declare-fun m!1093673 () Bool)

(assert (=> b!1185169 m!1093673))

(check-sat (not b_lambda!20515) (not b!1185168) (not b!1185166) (not b!1185165) (not b!1185177) (not b!1185184) (not b!1185181) (not b!1185182) b_and!41589 (not b!1185172) (not b!1185178) tp_is_empty!29883 (not b!1185175) (not b_next!25353) (not b!1185171) (not b!1185169) (not start!99810) (not mapNonEmpty!46652))
(check-sat b_and!41589 (not b_next!25353))
