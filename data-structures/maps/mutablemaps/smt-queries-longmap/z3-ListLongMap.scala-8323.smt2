; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101324 () Bool)

(assert start!101324)

(declare-fun b_free!26211 () Bool)

(declare-fun b_next!26211 () Bool)

(assert (=> start!101324 (= b_free!26211 (not b_next!26211))))

(declare-fun tp!91656 () Bool)

(declare-fun b_and!43549 () Bool)

(assert (=> start!101324 (= tp!91656 b_and!43549)))

(declare-fun b!1216904 () Bool)

(declare-fun e!690914 () Bool)

(declare-fun e!690913 () Bool)

(assert (=> b!1216904 (= e!690914 e!690913)))

(declare-fun res!808225 () Bool)

(assert (=> b!1216904 (=> (not res!808225) (not e!690913))))

(declare-datatypes ((array!78576 0))(
  ( (array!78577 (arr!37919 (Array (_ BitVec 32) (_ BitVec 64))) (size!38456 (_ BitVec 32))) )
))
(declare-fun lt!553042 () array!78576)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78576 (_ BitVec 32)) Bool)

(assert (=> b!1216904 (= res!808225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553042 mask!1564))))

(declare-fun _keys!1208 () array!78576)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1216904 (= lt!553042 (array!78577 (store (arr!37919 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38456 _keys!1208)))))

(declare-fun b!1216905 () Bool)

(declare-fun e!690915 () Bool)

(declare-fun e!690909 () Bool)

(declare-fun mapRes!48247 () Bool)

(assert (=> b!1216905 (= e!690915 (and e!690909 mapRes!48247))))

(declare-fun condMapEmpty!48247 () Bool)

(declare-datatypes ((V!46347 0))(
  ( (V!46348 (val!15514 Int)) )
))
(declare-datatypes ((ValueCell!14748 0))(
  ( (ValueCellFull!14748 (v!18168 V!46347)) (EmptyCell!14748) )
))
(declare-datatypes ((array!78578 0))(
  ( (array!78579 (arr!37920 (Array (_ BitVec 32) ValueCell!14748)) (size!38457 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78578)

(declare-fun mapDefault!48247 () ValueCell!14748)

(assert (=> b!1216905 (= condMapEmpty!48247 (= (arr!37920 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14748)) mapDefault!48247)))))

(declare-fun res!808220 () Bool)

(assert (=> start!101324 (=> (not res!808220) (not e!690914))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!101324 (= res!808220 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38456 _keys!1208))))))

(assert (=> start!101324 e!690914))

(declare-fun tp_is_empty!30915 () Bool)

(assert (=> start!101324 tp_is_empty!30915))

(declare-fun array_inv!28772 (array!78576) Bool)

(assert (=> start!101324 (array_inv!28772 _keys!1208)))

(assert (=> start!101324 true))

(assert (=> start!101324 tp!91656))

(declare-fun array_inv!28773 (array!78578) Bool)

(assert (=> start!101324 (and (array_inv!28773 _values!996) e!690915)))

(declare-fun b!1216906 () Bool)

(declare-fun e!690907 () Bool)

(declare-fun e!690910 () Bool)

(assert (=> b!1216906 (= e!690907 e!690910)))

(declare-fun res!808217 () Bool)

(assert (=> b!1216906 (=> res!808217 e!690910)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1216906 (= res!808217 (not (validKeyInArray!0 (select (arr!37919 _keys!1208) from!1455))))))

(declare-fun zeroValue!944 () V!46347)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lt!553043 () array!78578)

(declare-fun minValue!944 () V!46347)

(declare-datatypes ((tuple2!20084 0))(
  ( (tuple2!20085 (_1!10052 (_ BitVec 64)) (_2!10052 V!46347)) )
))
(declare-datatypes ((List!26906 0))(
  ( (Nil!26903) (Cons!26902 (h!28111 tuple2!20084) (t!40104 List!26906)) )
))
(declare-datatypes ((ListLongMap!18065 0))(
  ( (ListLongMap!18066 (toList!9048 List!26906)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5453 (array!78576 array!78578 (_ BitVec 32) (_ BitVec 32) V!46347 V!46347 (_ BitVec 32) Int) ListLongMap!18065)

(declare-fun -!1911 (ListLongMap!18065 (_ BitVec 64)) ListLongMap!18065)

(assert (=> b!1216906 (= (getCurrentListMapNoExtraKeys!5453 lt!553042 lt!553043 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1911 (getCurrentListMapNoExtraKeys!5453 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!40282 0))(
  ( (Unit!40283) )
))
(declare-fun lt!553040 () Unit!40282)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1113 (array!78576 array!78578 (_ BitVec 32) (_ BitVec 32) V!46347 V!46347 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40282)

(assert (=> b!1216906 (= lt!553040 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1113 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!48247 () Bool)

(assert (=> mapIsEmpty!48247 mapRes!48247))

(declare-fun b!1216907 () Bool)

(declare-fun res!808219 () Bool)

(assert (=> b!1216907 (=> (not res!808219) (not e!690914))))

(assert (=> b!1216907 (= res!808219 (and (= (size!38457 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38456 _keys!1208) (size!38457 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1216908 () Bool)

(declare-fun e!690912 () Bool)

(assert (=> b!1216908 (= e!690912 tp_is_empty!30915)))

(declare-fun b!1216909 () Bool)

(declare-fun e!690908 () Bool)

(assert (=> b!1216909 (= e!690908 e!690907)))

(declare-fun res!808218 () Bool)

(assert (=> b!1216909 (=> res!808218 e!690907)))

(assert (=> b!1216909 (= res!808218 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!553039 () ListLongMap!18065)

(assert (=> b!1216909 (= lt!553039 (getCurrentListMapNoExtraKeys!5453 lt!553042 lt!553043 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3359 (Int (_ BitVec 64)) V!46347)

(assert (=> b!1216909 (= lt!553043 (array!78579 (store (arr!37920 _values!996) i!673 (ValueCellFull!14748 (dynLambda!3359 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38457 _values!996)))))

(declare-fun lt!553041 () ListLongMap!18065)

(assert (=> b!1216909 (= lt!553041 (getCurrentListMapNoExtraKeys!5453 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1216910 () Bool)

(declare-fun res!808222 () Bool)

(assert (=> b!1216910 (=> (not res!808222) (not e!690914))))

(assert (=> b!1216910 (= res!808222 (validKeyInArray!0 k0!934))))

(declare-fun b!1216911 () Bool)

(declare-fun res!808227 () Bool)

(assert (=> b!1216911 (=> (not res!808227) (not e!690914))))

(declare-datatypes ((List!26907 0))(
  ( (Nil!26904) (Cons!26903 (h!28112 (_ BitVec 64)) (t!40105 List!26907)) )
))
(declare-fun arrayNoDuplicates!0 (array!78576 (_ BitVec 32) List!26907) Bool)

(assert (=> b!1216911 (= res!808227 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26904))))

(declare-fun b!1216912 () Bool)

(declare-fun res!808223 () Bool)

(assert (=> b!1216912 (=> (not res!808223) (not e!690914))))

(assert (=> b!1216912 (= res!808223 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38456 _keys!1208))))))

(declare-fun b!1216913 () Bool)

(declare-fun res!808221 () Bool)

(assert (=> b!1216913 (=> (not res!808221) (not e!690914))))

(assert (=> b!1216913 (= res!808221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!48247 () Bool)

(declare-fun tp!91655 () Bool)

(assert (=> mapNonEmpty!48247 (= mapRes!48247 (and tp!91655 e!690912))))

(declare-fun mapRest!48247 () (Array (_ BitVec 32) ValueCell!14748))

(declare-fun mapValue!48247 () ValueCell!14748)

(declare-fun mapKey!48247 () (_ BitVec 32))

(assert (=> mapNonEmpty!48247 (= (arr!37920 _values!996) (store mapRest!48247 mapKey!48247 mapValue!48247))))

(declare-fun b!1216914 () Bool)

(declare-fun res!808216 () Bool)

(assert (=> b!1216914 (=> (not res!808216) (not e!690914))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1216914 (= res!808216 (validMask!0 mask!1564))))

(declare-fun b!1216915 () Bool)

(declare-fun res!808226 () Bool)

(assert (=> b!1216915 (=> (not res!808226) (not e!690914))))

(assert (=> b!1216915 (= res!808226 (= (select (arr!37919 _keys!1208) i!673) k0!934))))

(declare-fun b!1216916 () Bool)

(assert (=> b!1216916 (= e!690910 (bvslt from!1455 (size!38457 _values!996)))))

(declare-fun b!1216917 () Bool)

(assert (=> b!1216917 (= e!690909 tp_is_empty!30915)))

(declare-fun b!1216918 () Bool)

(declare-fun res!808224 () Bool)

(assert (=> b!1216918 (=> (not res!808224) (not e!690913))))

(assert (=> b!1216918 (= res!808224 (arrayNoDuplicates!0 lt!553042 #b00000000000000000000000000000000 Nil!26904))))

(declare-fun b!1216919 () Bool)

(assert (=> b!1216919 (= e!690913 (not e!690908))))

(declare-fun res!808228 () Bool)

(assert (=> b!1216919 (=> res!808228 e!690908)))

(assert (=> b!1216919 (= res!808228 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78576 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1216919 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!553038 () Unit!40282)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78576 (_ BitVec 64) (_ BitVec 32)) Unit!40282)

(assert (=> b!1216919 (= lt!553038 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!101324 res!808220) b!1216914))

(assert (= (and b!1216914 res!808216) b!1216907))

(assert (= (and b!1216907 res!808219) b!1216913))

(assert (= (and b!1216913 res!808221) b!1216911))

(assert (= (and b!1216911 res!808227) b!1216912))

(assert (= (and b!1216912 res!808223) b!1216910))

(assert (= (and b!1216910 res!808222) b!1216915))

(assert (= (and b!1216915 res!808226) b!1216904))

(assert (= (and b!1216904 res!808225) b!1216918))

(assert (= (and b!1216918 res!808224) b!1216919))

(assert (= (and b!1216919 (not res!808228)) b!1216909))

(assert (= (and b!1216909 (not res!808218)) b!1216906))

(assert (= (and b!1216906 (not res!808217)) b!1216916))

(assert (= (and b!1216905 condMapEmpty!48247) mapIsEmpty!48247))

(assert (= (and b!1216905 (not condMapEmpty!48247)) mapNonEmpty!48247))

(get-info :version)

(assert (= (and mapNonEmpty!48247 ((_ is ValueCellFull!14748) mapValue!48247)) b!1216908))

(assert (= (and b!1216905 ((_ is ValueCellFull!14748) mapDefault!48247)) b!1216917))

(assert (= start!101324 b!1216905))

(declare-fun b_lambda!21897 () Bool)

(assert (=> (not b_lambda!21897) (not b!1216909)))

(declare-fun t!40103 () Bool)

(declare-fun tb!11019 () Bool)

(assert (=> (and start!101324 (= defaultEntry!1004 defaultEntry!1004) t!40103) tb!11019))

(declare-fun result!22627 () Bool)

(assert (=> tb!11019 (= result!22627 tp_is_empty!30915)))

(assert (=> b!1216909 t!40103))

(declare-fun b_and!43551 () Bool)

(assert (= b_and!43549 (and (=> t!40103 result!22627) b_and!43551)))

(declare-fun m!1121649 () Bool)

(assert (=> start!101324 m!1121649))

(declare-fun m!1121651 () Bool)

(assert (=> start!101324 m!1121651))

(declare-fun m!1121653 () Bool)

(assert (=> b!1216918 m!1121653))

(declare-fun m!1121655 () Bool)

(assert (=> b!1216911 m!1121655))

(declare-fun m!1121657 () Bool)

(assert (=> b!1216910 m!1121657))

(declare-fun m!1121659 () Bool)

(assert (=> b!1216906 m!1121659))

(declare-fun m!1121661 () Bool)

(assert (=> b!1216906 m!1121661))

(assert (=> b!1216906 m!1121659))

(declare-fun m!1121663 () Bool)

(assert (=> b!1216906 m!1121663))

(declare-fun m!1121665 () Bool)

(assert (=> b!1216906 m!1121665))

(declare-fun m!1121667 () Bool)

(assert (=> b!1216906 m!1121667))

(declare-fun m!1121669 () Bool)

(assert (=> b!1216906 m!1121669))

(assert (=> b!1216906 m!1121665))

(declare-fun m!1121671 () Bool)

(assert (=> b!1216914 m!1121671))

(declare-fun m!1121673 () Bool)

(assert (=> b!1216915 m!1121673))

(declare-fun m!1121675 () Bool)

(assert (=> b!1216913 m!1121675))

(declare-fun m!1121677 () Bool)

(assert (=> mapNonEmpty!48247 m!1121677))

(declare-fun m!1121679 () Bool)

(assert (=> b!1216904 m!1121679))

(declare-fun m!1121681 () Bool)

(assert (=> b!1216904 m!1121681))

(declare-fun m!1121683 () Bool)

(assert (=> b!1216919 m!1121683))

(declare-fun m!1121685 () Bool)

(assert (=> b!1216919 m!1121685))

(declare-fun m!1121687 () Bool)

(assert (=> b!1216909 m!1121687))

(declare-fun m!1121689 () Bool)

(assert (=> b!1216909 m!1121689))

(declare-fun m!1121691 () Bool)

(assert (=> b!1216909 m!1121691))

(declare-fun m!1121693 () Bool)

(assert (=> b!1216909 m!1121693))

(check-sat (not b!1216909) b_and!43551 tp_is_empty!30915 (not b_next!26211) (not b!1216919) (not b!1216911) (not b!1216913) (not mapNonEmpty!48247) (not b!1216914) (not b!1216918) (not b!1216906) (not b!1216904) (not b_lambda!21897) (not start!101324) (not b!1216910))
(check-sat b_and!43551 (not b_next!26211))
