; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99864 () Bool)

(assert start!99864)

(declare-fun b_free!25407 () Bool)

(declare-fun b_next!25407 () Bool)

(assert (=> start!99864 (= b_free!25407 (not b_next!25407))))

(declare-fun tp!88935 () Bool)

(declare-fun b_and!41695 () Bool)

(assert (=> start!99864 (= tp!88935 b_and!41695)))

(declare-fun e!674866 () Bool)

(declare-datatypes ((array!76642 0))(
  ( (array!76643 (arr!36967 (Array (_ BitVec 32) (_ BitVec 64))) (size!37504 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76642)

(declare-fun b!1186839 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76642 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1186839 (= e!674866 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1186840 () Bool)

(declare-fun res!789109 () Bool)

(declare-fun e!674862 () Bool)

(assert (=> b!1186840 (=> (not res!789109) (not e!674862))))

(declare-fun lt!539312 () array!76642)

(declare-datatypes ((List!26171 0))(
  ( (Nil!26168) (Cons!26167 (h!27376 (_ BitVec 64)) (t!38577 List!26171)) )
))
(declare-fun arrayNoDuplicates!0 (array!76642 (_ BitVec 32) List!26171) Bool)

(assert (=> b!1186840 (= res!789109 (arrayNoDuplicates!0 lt!539312 #b00000000000000000000000000000000 Nil!26168))))

(declare-fun b!1186841 () Bool)

(declare-fun res!789107 () Bool)

(declare-fun e!674861 () Bool)

(assert (=> b!1186841 (=> (not res!789107) (not e!674861))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45043 0))(
  ( (V!45044 (val!15025 Int)) )
))
(declare-datatypes ((ValueCell!14259 0))(
  ( (ValueCellFull!14259 (v!17664 V!45043)) (EmptyCell!14259) )
))
(declare-datatypes ((array!76644 0))(
  ( (array!76645 (arr!36968 (Array (_ BitVec 32) ValueCell!14259)) (size!37505 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76644)

(assert (=> b!1186841 (= res!789107 (and (= (size!37505 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37504 _keys!1208) (size!37505 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1186842 () Bool)

(declare-fun e!674869 () Bool)

(assert (=> b!1186842 (= e!674862 (not e!674869))))

(declare-fun res!789110 () Bool)

(assert (=> b!1186842 (=> res!789110 e!674869)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1186842 (= res!789110 (bvsgt from!1455 i!673))))

(assert (=> b!1186842 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39273 0))(
  ( (Unit!39274) )
))
(declare-fun lt!539315 () Unit!39273)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76642 (_ BitVec 64) (_ BitVec 32)) Unit!39273)

(assert (=> b!1186842 (= lt!539315 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1186843 () Bool)

(assert (=> b!1186843 (= e!674861 e!674862)))

(declare-fun res!789106 () Bool)

(assert (=> b!1186843 (=> (not res!789106) (not e!674862))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76642 (_ BitVec 32)) Bool)

(assert (=> b!1186843 (= res!789106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!539312 mask!1564))))

(assert (=> b!1186843 (= lt!539312 (array!76643 (store (arr!36967 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37504 _keys!1208)))))

(declare-fun b!1186844 () Bool)

(declare-fun e!674860 () Bool)

(declare-fun tp_is_empty!29937 () Bool)

(assert (=> b!1186844 (= e!674860 tp_is_empty!29937)))

(declare-fun b!1186845 () Bool)

(declare-fun res!789116 () Bool)

(assert (=> b!1186845 (=> (not res!789116) (not e!674861))))

(assert (=> b!1186845 (= res!789116 (= (select (arr!36967 _keys!1208) i!673) k0!934))))

(declare-fun b!1186847 () Bool)

(declare-fun res!789111 () Bool)

(assert (=> b!1186847 (=> (not res!789111) (not e!674861))))

(assert (=> b!1186847 (= res!789111 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26168))))

(declare-fun b!1186848 () Bool)

(declare-fun e!674863 () Bool)

(assert (=> b!1186848 (= e!674869 e!674863)))

(declare-fun res!789113 () Bool)

(assert (=> b!1186848 (=> res!789113 e!674863)))

(assert (=> b!1186848 (= res!789113 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45043)

(declare-fun lt!539303 () array!76644)

(declare-fun minValue!944 () V!45043)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19412 0))(
  ( (tuple2!19413 (_1!9716 (_ BitVec 64)) (_2!9716 V!45043)) )
))
(declare-datatypes ((List!26172 0))(
  ( (Nil!26169) (Cons!26168 (h!27377 tuple2!19412) (t!38578 List!26172)) )
))
(declare-datatypes ((ListLongMap!17393 0))(
  ( (ListLongMap!17394 (toList!8712 List!26172)) )
))
(declare-fun lt!539305 () ListLongMap!17393)

(declare-fun getCurrentListMapNoExtraKeys!5129 (array!76642 array!76644 (_ BitVec 32) (_ BitVec 32) V!45043 V!45043 (_ BitVec 32) Int) ListLongMap!17393)

(assert (=> b!1186848 (= lt!539305 (getCurrentListMapNoExtraKeys!5129 lt!539312 lt!539303 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!539311 () V!45043)

(assert (=> b!1186848 (= lt!539303 (array!76645 (store (arr!36968 _values!996) i!673 (ValueCellFull!14259 lt!539311)) (size!37505 _values!996)))))

(declare-fun dynLambda!3086 (Int (_ BitVec 64)) V!45043)

(assert (=> b!1186848 (= lt!539311 (dynLambda!3086 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!539304 () ListLongMap!17393)

(assert (=> b!1186848 (= lt!539304 (getCurrentListMapNoExtraKeys!5129 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1186849 () Bool)

(declare-fun e!674868 () Bool)

(assert (=> b!1186849 (= e!674863 e!674868)))

(declare-fun res!789112 () Bool)

(assert (=> b!1186849 (=> res!789112 e!674868)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1186849 (= res!789112 (not (validKeyInArray!0 (select (arr!36967 _keys!1208) from!1455))))))

(declare-fun lt!539316 () ListLongMap!17393)

(declare-fun lt!539301 () ListLongMap!17393)

(assert (=> b!1186849 (= lt!539316 lt!539301)))

(declare-fun lt!539308 () ListLongMap!17393)

(declare-fun -!1697 (ListLongMap!17393 (_ BitVec 64)) ListLongMap!17393)

(assert (=> b!1186849 (= lt!539301 (-!1697 lt!539308 k0!934))))

(assert (=> b!1186849 (= lt!539316 (getCurrentListMapNoExtraKeys!5129 lt!539312 lt!539303 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1186849 (= lt!539308 (getCurrentListMapNoExtraKeys!5129 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!539298 () Unit!39273)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!908 (array!76642 array!76644 (_ BitVec 32) (_ BitVec 32) V!45043 V!45043 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39273)

(assert (=> b!1186849 (= lt!539298 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!908 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1186850 () Bool)

(declare-fun e!674865 () Unit!39273)

(declare-fun Unit!39275 () Unit!39273)

(assert (=> b!1186850 (= e!674865 Unit!39275)))

(declare-fun b!1186851 () Bool)

(assert (=> b!1186851 (= e!674868 true)))

(declare-fun lt!539307 () ListLongMap!17393)

(declare-fun lt!539300 () ListLongMap!17393)

(assert (=> b!1186851 (= (-!1697 lt!539307 k0!934) lt!539300)))

(declare-fun lt!539313 () V!45043)

(declare-fun lt!539314 () Unit!39273)

(declare-fun addRemoveCommutativeForDiffKeys!204 (ListLongMap!17393 (_ BitVec 64) V!45043 (_ BitVec 64)) Unit!39273)

(assert (=> b!1186851 (= lt!539314 (addRemoveCommutativeForDiffKeys!204 lt!539308 (select (arr!36967 _keys!1208) from!1455) lt!539313 k0!934))))

(assert (=> b!1186851 (and (= lt!539304 lt!539307) (= lt!539301 lt!539316))))

(declare-fun lt!539309 () tuple2!19412)

(declare-fun +!3914 (ListLongMap!17393 tuple2!19412) ListLongMap!17393)

(assert (=> b!1186851 (= lt!539307 (+!3914 lt!539308 lt!539309))))

(assert (=> b!1186851 (not (= (select (arr!36967 _keys!1208) from!1455) k0!934))))

(declare-fun lt!539310 () Unit!39273)

(assert (=> b!1186851 (= lt!539310 e!674865)))

(declare-fun c!117182 () Bool)

(assert (=> b!1186851 (= c!117182 (= (select (arr!36967 _keys!1208) from!1455) k0!934))))

(declare-fun e!674859 () Bool)

(assert (=> b!1186851 e!674859))

(declare-fun res!789114 () Bool)

(assert (=> b!1186851 (=> (not res!789114) (not e!674859))))

(assert (=> b!1186851 (= res!789114 (= lt!539305 lt!539300))))

(assert (=> b!1186851 (= lt!539300 (+!3914 lt!539301 lt!539309))))

(assert (=> b!1186851 (= lt!539309 (tuple2!19413 (select (arr!36967 _keys!1208) from!1455) lt!539313))))

(declare-fun get!18972 (ValueCell!14259 V!45043) V!45043)

(assert (=> b!1186851 (= lt!539313 (get!18972 (select (arr!36968 _values!996) from!1455) lt!539311))))

(declare-fun b!1186852 () Bool)

(declare-fun res!789104 () Bool)

(assert (=> b!1186852 (=> (not res!789104) (not e!674861))))

(assert (=> b!1186852 (= res!789104 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37504 _keys!1208))))))

(declare-fun b!1186853 () Bool)

(declare-fun res!789105 () Bool)

(assert (=> b!1186853 (=> (not res!789105) (not e!674861))))

(assert (=> b!1186853 (= res!789105 (validKeyInArray!0 k0!934))))

(declare-fun b!1186854 () Bool)

(declare-fun e!674858 () Bool)

(assert (=> b!1186854 (= e!674858 tp_is_empty!29937)))

(declare-fun b!1186855 () Bool)

(declare-fun res!789118 () Bool)

(assert (=> b!1186855 (=> (not res!789118) (not e!674861))))

(assert (=> b!1186855 (= res!789118 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!46733 () Bool)

(declare-fun mapRes!46733 () Bool)

(declare-fun tp!88936 () Bool)

(assert (=> mapNonEmpty!46733 (= mapRes!46733 (and tp!88936 e!674860))))

(declare-fun mapRest!46733 () (Array (_ BitVec 32) ValueCell!14259))

(declare-fun mapKey!46733 () (_ BitVec 32))

(declare-fun mapValue!46733 () ValueCell!14259)

(assert (=> mapNonEmpty!46733 (= (arr!36968 _values!996) (store mapRest!46733 mapKey!46733 mapValue!46733))))

(declare-fun b!1186856 () Bool)

(declare-fun res!789117 () Bool)

(assert (=> b!1186856 (=> (not res!789117) (not e!674861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1186856 (= res!789117 (validMask!0 mask!1564))))

(declare-fun b!1186857 () Bool)

(declare-fun Unit!39276 () Unit!39273)

(assert (=> b!1186857 (= e!674865 Unit!39276)))

(declare-fun lt!539299 () Unit!39273)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76642 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39273)

(assert (=> b!1186857 (= lt!539299 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1186857 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!539306 () Unit!39273)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76642 (_ BitVec 32) (_ BitVec 32)) Unit!39273)

(assert (=> b!1186857 (= lt!539306 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1186857 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26168)))

(declare-fun lt!539302 () Unit!39273)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76642 (_ BitVec 64) (_ BitVec 32) List!26171) Unit!39273)

(assert (=> b!1186857 (= lt!539302 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26168))))

(assert (=> b!1186857 false))

(declare-fun b!1186846 () Bool)

(assert (=> b!1186846 (= e!674859 e!674866)))

(declare-fun res!789115 () Bool)

(assert (=> b!1186846 (=> res!789115 e!674866)))

(assert (=> b!1186846 (= res!789115 (not (= (select (arr!36967 _keys!1208) from!1455) k0!934)))))

(declare-fun res!789108 () Bool)

(assert (=> start!99864 (=> (not res!789108) (not e!674861))))

(assert (=> start!99864 (= res!789108 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37504 _keys!1208))))))

(assert (=> start!99864 e!674861))

(assert (=> start!99864 tp_is_empty!29937))

(declare-fun array_inv!28090 (array!76642) Bool)

(assert (=> start!99864 (array_inv!28090 _keys!1208)))

(assert (=> start!99864 true))

(assert (=> start!99864 tp!88935))

(declare-fun e!674867 () Bool)

(declare-fun array_inv!28091 (array!76644) Bool)

(assert (=> start!99864 (and (array_inv!28091 _values!996) e!674867)))

(declare-fun mapIsEmpty!46733 () Bool)

(assert (=> mapIsEmpty!46733 mapRes!46733))

(declare-fun b!1186858 () Bool)

(assert (=> b!1186858 (= e!674867 (and e!674858 mapRes!46733))))

(declare-fun condMapEmpty!46733 () Bool)

(declare-fun mapDefault!46733 () ValueCell!14259)

(assert (=> b!1186858 (= condMapEmpty!46733 (= (arr!36968 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14259)) mapDefault!46733)))))

(assert (= (and start!99864 res!789108) b!1186856))

(assert (= (and b!1186856 res!789117) b!1186841))

(assert (= (and b!1186841 res!789107) b!1186855))

(assert (= (and b!1186855 res!789118) b!1186847))

(assert (= (and b!1186847 res!789111) b!1186852))

(assert (= (and b!1186852 res!789104) b!1186853))

(assert (= (and b!1186853 res!789105) b!1186845))

(assert (= (and b!1186845 res!789116) b!1186843))

(assert (= (and b!1186843 res!789106) b!1186840))

(assert (= (and b!1186840 res!789109) b!1186842))

(assert (= (and b!1186842 (not res!789110)) b!1186848))

(assert (= (and b!1186848 (not res!789113)) b!1186849))

(assert (= (and b!1186849 (not res!789112)) b!1186851))

(assert (= (and b!1186851 res!789114) b!1186846))

(assert (= (and b!1186846 (not res!789115)) b!1186839))

(assert (= (and b!1186851 c!117182) b!1186857))

(assert (= (and b!1186851 (not c!117182)) b!1186850))

(assert (= (and b!1186858 condMapEmpty!46733) mapIsEmpty!46733))

(assert (= (and b!1186858 (not condMapEmpty!46733)) mapNonEmpty!46733))

(get-info :version)

(assert (= (and mapNonEmpty!46733 ((_ is ValueCellFull!14259) mapValue!46733)) b!1186844))

(assert (= (and b!1186858 ((_ is ValueCellFull!14259) mapDefault!46733)) b!1186854))

(assert (= start!99864 b!1186858))

(declare-fun b_lambda!20569 () Bool)

(assert (=> (not b_lambda!20569) (not b!1186848)))

(declare-fun t!38576 () Bool)

(declare-fun tb!10227 () Bool)

(assert (=> (and start!99864 (= defaultEntry!1004 defaultEntry!1004) t!38576) tb!10227))

(declare-fun result!21013 () Bool)

(assert (=> tb!10227 (= result!21013 tp_is_empty!29937)))

(assert (=> b!1186848 t!38576))

(declare-fun b_and!41697 () Bool)

(assert (= b_and!41695 (and (=> t!38576 result!21013) b_and!41697)))

(declare-fun m!1095495 () Bool)

(assert (=> b!1186839 m!1095495))

(declare-fun m!1095497 () Bool)

(assert (=> start!99864 m!1095497))

(declare-fun m!1095499 () Bool)

(assert (=> start!99864 m!1095499))

(declare-fun m!1095501 () Bool)

(assert (=> b!1186843 m!1095501))

(declare-fun m!1095503 () Bool)

(assert (=> b!1186843 m!1095503))

(declare-fun m!1095505 () Bool)

(assert (=> mapNonEmpty!46733 m!1095505))

(declare-fun m!1095507 () Bool)

(assert (=> b!1186853 m!1095507))

(declare-fun m!1095509 () Bool)

(assert (=> b!1186857 m!1095509))

(declare-fun m!1095511 () Bool)

(assert (=> b!1186857 m!1095511))

(declare-fun m!1095513 () Bool)

(assert (=> b!1186857 m!1095513))

(declare-fun m!1095515 () Bool)

(assert (=> b!1186857 m!1095515))

(declare-fun m!1095517 () Bool)

(assert (=> b!1186857 m!1095517))

(declare-fun m!1095519 () Bool)

(assert (=> b!1186856 m!1095519))

(declare-fun m!1095521 () Bool)

(assert (=> b!1186846 m!1095521))

(declare-fun m!1095523 () Bool)

(assert (=> b!1186842 m!1095523))

(declare-fun m!1095525 () Bool)

(assert (=> b!1186842 m!1095525))

(declare-fun m!1095527 () Bool)

(assert (=> b!1186845 m!1095527))

(declare-fun m!1095529 () Bool)

(assert (=> b!1186848 m!1095529))

(declare-fun m!1095531 () Bool)

(assert (=> b!1186848 m!1095531))

(declare-fun m!1095533 () Bool)

(assert (=> b!1186848 m!1095533))

(declare-fun m!1095535 () Bool)

(assert (=> b!1186848 m!1095535))

(declare-fun m!1095537 () Bool)

(assert (=> b!1186855 m!1095537))

(declare-fun m!1095539 () Bool)

(assert (=> b!1186849 m!1095539))

(declare-fun m!1095541 () Bool)

(assert (=> b!1186849 m!1095541))

(declare-fun m!1095543 () Bool)

(assert (=> b!1186849 m!1095543))

(declare-fun m!1095545 () Bool)

(assert (=> b!1186849 m!1095545))

(assert (=> b!1186849 m!1095521))

(declare-fun m!1095547 () Bool)

(assert (=> b!1186849 m!1095547))

(assert (=> b!1186849 m!1095521))

(declare-fun m!1095549 () Bool)

(assert (=> b!1186840 m!1095549))

(declare-fun m!1095551 () Bool)

(assert (=> b!1186847 m!1095551))

(declare-fun m!1095553 () Bool)

(assert (=> b!1186851 m!1095553))

(declare-fun m!1095555 () Bool)

(assert (=> b!1186851 m!1095555))

(declare-fun m!1095557 () Bool)

(assert (=> b!1186851 m!1095557))

(assert (=> b!1186851 m!1095521))

(declare-fun m!1095559 () Bool)

(assert (=> b!1186851 m!1095559))

(assert (=> b!1186851 m!1095553))

(declare-fun m!1095561 () Bool)

(assert (=> b!1186851 m!1095561))

(declare-fun m!1095563 () Bool)

(assert (=> b!1186851 m!1095563))

(assert (=> b!1186851 m!1095521))

(check-sat (not b!1186855) (not b!1186848) (not mapNonEmpty!46733) (not start!99864) (not b!1186839) (not b!1186840) (not b!1186857) (not b_next!25407) (not b!1186856) (not b_lambda!20569) (not b!1186847) (not b!1186842) b_and!41697 (not b!1186851) (not b!1186843) tp_is_empty!29937 (not b!1186853) (not b!1186849))
(check-sat b_and!41697 (not b_next!25407))
