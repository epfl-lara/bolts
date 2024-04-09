; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100020 () Bool)

(assert start!100020)

(declare-fun b_free!25563 () Bool)

(declare-fun b_next!25563 () Bool)

(assert (=> start!100020 (= b_free!25563 (not b_next!25563))))

(declare-fun tp!89404 () Bool)

(declare-fun b_and!42007 () Bool)

(assert (=> start!100020 (= tp!89404 b_and!42007)))

(declare-fun b!1190840 () Bool)

(declare-fun res!792124 () Bool)

(declare-fun e!676999 () Bool)

(assert (=> b!1190840 (=> (not res!792124) (not e!676999))))

(declare-datatypes ((array!76952 0))(
  ( (array!76953 (arr!37122 (Array (_ BitVec 32) (_ BitVec 64))) (size!37659 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76952)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76952 (_ BitVec 32)) Bool)

(assert (=> b!1190840 (= res!792124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1190841 () Bool)

(declare-fun e!677000 () Bool)

(declare-fun e!677001 () Bool)

(declare-fun mapRes!46967 () Bool)

(assert (=> b!1190841 (= e!677000 (and e!677001 mapRes!46967))))

(declare-fun condMapEmpty!46967 () Bool)

(declare-datatypes ((V!45251 0))(
  ( (V!45252 (val!15103 Int)) )
))
(declare-datatypes ((ValueCell!14337 0))(
  ( (ValueCellFull!14337 (v!17742 V!45251)) (EmptyCell!14337) )
))
(declare-datatypes ((array!76954 0))(
  ( (array!76955 (arr!37123 (Array (_ BitVec 32) ValueCell!14337)) (size!37660 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76954)

(declare-fun mapDefault!46967 () ValueCell!14337)

(assert (=> b!1190841 (= condMapEmpty!46967 (= (arr!37123 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14337)) mapDefault!46967)))))

(declare-fun b!1190842 () Bool)

(declare-fun e!677005 () Bool)

(declare-fun e!677003 () Bool)

(assert (=> b!1190842 (= e!677005 (not e!677003))))

(declare-fun res!792117 () Bool)

(assert (=> b!1190842 (=> res!792117 e!677003)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1190842 (= res!792117 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76952 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1190842 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39450 0))(
  ( (Unit!39451) )
))
(declare-fun lt!541578 () Unit!39450)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76952 (_ BitVec 64) (_ BitVec 32)) Unit!39450)

(assert (=> b!1190842 (= lt!541578 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1190843 () Bool)

(declare-fun tp_is_empty!30093 () Bool)

(assert (=> b!1190843 (= e!677001 tp_is_empty!30093)))

(declare-fun b!1190844 () Bool)

(declare-fun res!792121 () Bool)

(assert (=> b!1190844 (=> (not res!792121) (not e!676999))))

(assert (=> b!1190844 (= res!792121 (= (select (arr!37122 _keys!1208) i!673) k0!934))))

(declare-fun b!1190845 () Bool)

(declare-fun e!677004 () Bool)

(assert (=> b!1190845 (= e!677003 e!677004)))

(declare-fun res!792122 () Bool)

(assert (=> b!1190845 (=> res!792122 e!677004)))

(assert (=> b!1190845 (= res!792122 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45251)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!19546 0))(
  ( (tuple2!19547 (_1!9783 (_ BitVec 64)) (_2!9783 V!45251)) )
))
(declare-datatypes ((List!26307 0))(
  ( (Nil!26304) (Cons!26303 (h!27512 tuple2!19546) (t!38869 List!26307)) )
))
(declare-datatypes ((ListLongMap!17527 0))(
  ( (ListLongMap!17528 (toList!8779 List!26307)) )
))
(declare-fun lt!541573 () ListLongMap!17527)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!541575 () array!76952)

(declare-fun minValue!944 () V!45251)

(declare-fun lt!541577 () array!76954)

(declare-fun getCurrentListMapNoExtraKeys!5193 (array!76952 array!76954 (_ BitVec 32) (_ BitVec 32) V!45251 V!45251 (_ BitVec 32) Int) ListLongMap!17527)

(assert (=> b!1190845 (= lt!541573 (getCurrentListMapNoExtraKeys!5193 lt!541575 lt!541577 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3138 (Int (_ BitVec 64)) V!45251)

(assert (=> b!1190845 (= lt!541577 (array!76955 (store (arr!37123 _values!996) i!673 (ValueCellFull!14337 (dynLambda!3138 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37660 _values!996)))))

(declare-fun lt!541574 () ListLongMap!17527)

(assert (=> b!1190845 (= lt!541574 (getCurrentListMapNoExtraKeys!5193 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!46967 () Bool)

(declare-fun tp!89403 () Bool)

(declare-fun e!676998 () Bool)

(assert (=> mapNonEmpty!46967 (= mapRes!46967 (and tp!89403 e!676998))))

(declare-fun mapKey!46967 () (_ BitVec 32))

(declare-fun mapValue!46967 () ValueCell!14337)

(declare-fun mapRest!46967 () (Array (_ BitVec 32) ValueCell!14337))

(assert (=> mapNonEmpty!46967 (= (arr!37123 _values!996) (store mapRest!46967 mapKey!46967 mapValue!46967))))

(declare-fun b!1190846 () Bool)

(declare-fun res!792120 () Bool)

(assert (=> b!1190846 (=> (not res!792120) (not e!677005))))

(declare-datatypes ((List!26308 0))(
  ( (Nil!26305) (Cons!26304 (h!27513 (_ BitVec 64)) (t!38870 List!26308)) )
))
(declare-fun arrayNoDuplicates!0 (array!76952 (_ BitVec 32) List!26308) Bool)

(assert (=> b!1190846 (= res!792120 (arrayNoDuplicates!0 lt!541575 #b00000000000000000000000000000000 Nil!26305))))

(declare-fun b!1190847 () Bool)

(declare-fun res!792116 () Bool)

(assert (=> b!1190847 (=> (not res!792116) (not e!676999))))

(assert (=> b!1190847 (= res!792116 (and (= (size!37660 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37659 _keys!1208) (size!37660 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1190849 () Bool)

(declare-fun res!792114 () Bool)

(assert (=> b!1190849 (=> (not res!792114) (not e!676999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1190849 (= res!792114 (validMask!0 mask!1564))))

(declare-fun b!1190850 () Bool)

(assert (=> b!1190850 (= e!676998 tp_is_empty!30093)))

(declare-fun b!1190851 () Bool)

(assert (=> b!1190851 (= e!676999 e!677005)))

(declare-fun res!792123 () Bool)

(assert (=> b!1190851 (=> (not res!792123) (not e!677005))))

(assert (=> b!1190851 (= res!792123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541575 mask!1564))))

(assert (=> b!1190851 (= lt!541575 (array!76953 (store (arr!37122 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37659 _keys!1208)))))

(declare-fun b!1190852 () Bool)

(declare-fun res!792119 () Bool)

(assert (=> b!1190852 (=> (not res!792119) (not e!676999))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1190852 (= res!792119 (validKeyInArray!0 k0!934))))

(declare-fun b!1190848 () Bool)

(declare-fun res!792118 () Bool)

(assert (=> b!1190848 (=> (not res!792118) (not e!676999))))

(assert (=> b!1190848 (= res!792118 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37659 _keys!1208))))))

(declare-fun res!792113 () Bool)

(assert (=> start!100020 (=> (not res!792113) (not e!676999))))

(assert (=> start!100020 (= res!792113 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37659 _keys!1208))))))

(assert (=> start!100020 e!676999))

(assert (=> start!100020 tp_is_empty!30093))

(declare-fun array_inv!28208 (array!76952) Bool)

(assert (=> start!100020 (array_inv!28208 _keys!1208)))

(assert (=> start!100020 true))

(assert (=> start!100020 tp!89404))

(declare-fun array_inv!28209 (array!76954) Bool)

(assert (=> start!100020 (and (array_inv!28209 _values!996) e!677000)))

(declare-fun b!1190853 () Bool)

(assert (=> b!1190853 (= e!677004 true)))

(declare-fun -!1761 (ListLongMap!17527 (_ BitVec 64)) ListLongMap!17527)

(assert (=> b!1190853 (= (getCurrentListMapNoExtraKeys!5193 lt!541575 lt!541577 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1761 (getCurrentListMapNoExtraKeys!5193 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!541576 () Unit!39450)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!967 (array!76952 array!76954 (_ BitVec 32) (_ BitVec 32) V!45251 V!45251 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39450)

(assert (=> b!1190853 (= lt!541576 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!967 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1190854 () Bool)

(declare-fun res!792115 () Bool)

(assert (=> b!1190854 (=> (not res!792115) (not e!676999))))

(assert (=> b!1190854 (= res!792115 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26305))))

(declare-fun mapIsEmpty!46967 () Bool)

(assert (=> mapIsEmpty!46967 mapRes!46967))

(assert (= (and start!100020 res!792113) b!1190849))

(assert (= (and b!1190849 res!792114) b!1190847))

(assert (= (and b!1190847 res!792116) b!1190840))

(assert (= (and b!1190840 res!792124) b!1190854))

(assert (= (and b!1190854 res!792115) b!1190848))

(assert (= (and b!1190848 res!792118) b!1190852))

(assert (= (and b!1190852 res!792119) b!1190844))

(assert (= (and b!1190844 res!792121) b!1190851))

(assert (= (and b!1190851 res!792123) b!1190846))

(assert (= (and b!1190846 res!792120) b!1190842))

(assert (= (and b!1190842 (not res!792117)) b!1190845))

(assert (= (and b!1190845 (not res!792122)) b!1190853))

(assert (= (and b!1190841 condMapEmpty!46967) mapIsEmpty!46967))

(assert (= (and b!1190841 (not condMapEmpty!46967)) mapNonEmpty!46967))

(get-info :version)

(assert (= (and mapNonEmpty!46967 ((_ is ValueCellFull!14337) mapValue!46967)) b!1190850))

(assert (= (and b!1190841 ((_ is ValueCellFull!14337) mapDefault!46967)) b!1190843))

(assert (= start!100020 b!1190841))

(declare-fun b_lambda!20725 () Bool)

(assert (=> (not b_lambda!20725) (not b!1190845)))

(declare-fun t!38868 () Bool)

(declare-fun tb!10383 () Bool)

(assert (=> (and start!100020 (= defaultEntry!1004 defaultEntry!1004) t!38868) tb!10383))

(declare-fun result!21325 () Bool)

(assert (=> tb!10383 (= result!21325 tp_is_empty!30093)))

(assert (=> b!1190845 t!38868))

(declare-fun b_and!42009 () Bool)

(assert (= b_and!42007 (and (=> t!38868 result!21325) b_and!42009)))

(declare-fun m!1099415 () Bool)

(assert (=> b!1190840 m!1099415))

(declare-fun m!1099417 () Bool)

(assert (=> b!1190844 m!1099417))

(declare-fun m!1099419 () Bool)

(assert (=> b!1190853 m!1099419))

(declare-fun m!1099421 () Bool)

(assert (=> b!1190853 m!1099421))

(assert (=> b!1190853 m!1099421))

(declare-fun m!1099423 () Bool)

(assert (=> b!1190853 m!1099423))

(declare-fun m!1099425 () Bool)

(assert (=> b!1190853 m!1099425))

(declare-fun m!1099427 () Bool)

(assert (=> b!1190842 m!1099427))

(declare-fun m!1099429 () Bool)

(assert (=> b!1190842 m!1099429))

(declare-fun m!1099431 () Bool)

(assert (=> b!1190854 m!1099431))

(declare-fun m!1099433 () Bool)

(assert (=> b!1190849 m!1099433))

(declare-fun m!1099435 () Bool)

(assert (=> mapNonEmpty!46967 m!1099435))

(declare-fun m!1099437 () Bool)

(assert (=> start!100020 m!1099437))

(declare-fun m!1099439 () Bool)

(assert (=> start!100020 m!1099439))

(declare-fun m!1099441 () Bool)

(assert (=> b!1190852 m!1099441))

(declare-fun m!1099443 () Bool)

(assert (=> b!1190845 m!1099443))

(declare-fun m!1099445 () Bool)

(assert (=> b!1190845 m!1099445))

(declare-fun m!1099447 () Bool)

(assert (=> b!1190845 m!1099447))

(declare-fun m!1099449 () Bool)

(assert (=> b!1190845 m!1099449))

(declare-fun m!1099451 () Bool)

(assert (=> b!1190851 m!1099451))

(declare-fun m!1099453 () Bool)

(assert (=> b!1190851 m!1099453))

(declare-fun m!1099455 () Bool)

(assert (=> b!1190846 m!1099455))

(check-sat (not b_next!25563) (not start!100020) (not b!1190840) (not b!1190846) (not mapNonEmpty!46967) (not b!1190852) (not b!1190845) b_and!42009 (not b!1190851) (not b!1190849) tp_is_empty!30093 (not b!1190842) (not b_lambda!20725) (not b!1190854) (not b!1190853))
(check-sat b_and!42009 (not b_next!25563))
