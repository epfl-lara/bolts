; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101318 () Bool)

(assert start!101318)

(declare-fun b_free!26205 () Bool)

(declare-fun b_next!26205 () Bool)

(assert (=> start!101318 (= b_free!26205 (not b_next!26205))))

(declare-fun tp!91637 () Bool)

(declare-fun b_and!43537 () Bool)

(assert (=> start!101318 (= tp!91637 b_and!43537)))

(declare-fun b!1216754 () Bool)

(declare-fun res!808103 () Bool)

(declare-fun e!690827 () Bool)

(assert (=> b!1216754 (=> (not res!808103) (not e!690827))))

(declare-datatypes ((array!78564 0))(
  ( (array!78565 (arr!37913 (Array (_ BitVec 32) (_ BitVec 64))) (size!38450 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78564)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78564 (_ BitVec 32)) Bool)

(assert (=> b!1216754 (= res!808103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1216755 () Bool)

(declare-fun res!808107 () Bool)

(assert (=> b!1216755 (=> (not res!808107) (not e!690827))))

(declare-datatypes ((List!26901 0))(
  ( (Nil!26898) (Cons!26897 (h!28106 (_ BitVec 64)) (t!40093 List!26901)) )
))
(declare-fun arrayNoDuplicates!0 (array!78564 (_ BitVec 32) List!26901) Bool)

(assert (=> b!1216755 (= res!808107 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26898))))

(declare-fun b!1216756 () Bool)

(declare-fun res!808109 () Bool)

(assert (=> b!1216756 (=> (not res!808109) (not e!690827))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1216756 (= res!808109 (validMask!0 mask!1564))))

(declare-fun b!1216757 () Bool)

(declare-fun e!690833 () Bool)

(declare-fun e!690834 () Bool)

(declare-fun mapRes!48238 () Bool)

(assert (=> b!1216757 (= e!690833 (and e!690834 mapRes!48238))))

(declare-fun condMapEmpty!48238 () Bool)

(declare-datatypes ((V!46339 0))(
  ( (V!46340 (val!15511 Int)) )
))
(declare-datatypes ((ValueCell!14745 0))(
  ( (ValueCellFull!14745 (v!18165 V!46339)) (EmptyCell!14745) )
))
(declare-datatypes ((array!78566 0))(
  ( (array!78567 (arr!37914 (Array (_ BitVec 32) ValueCell!14745)) (size!38451 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78566)

(declare-fun mapDefault!48238 () ValueCell!14745)

(assert (=> b!1216757 (= condMapEmpty!48238 (= (arr!37914 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14745)) mapDefault!48238)))))

(declare-fun b!1216758 () Bool)

(declare-fun e!690829 () Bool)

(declare-fun e!690826 () Bool)

(assert (=> b!1216758 (= e!690829 (not e!690826))))

(declare-fun res!808108 () Bool)

(assert (=> b!1216758 (=> res!808108 e!690826)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1216758 (= res!808108 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78564 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1216758 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40276 0))(
  ( (Unit!40277) )
))
(declare-fun lt!552984 () Unit!40276)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78564 (_ BitVec 64) (_ BitVec 32)) Unit!40276)

(assert (=> b!1216758 (= lt!552984 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1216759 () Bool)

(declare-fun res!808100 () Bool)

(assert (=> b!1216759 (=> (not res!808100) (not e!690827))))

(assert (=> b!1216759 (= res!808100 (= (select (arr!37913 _keys!1208) i!673) k0!934))))

(declare-fun b!1216760 () Bool)

(declare-fun res!808102 () Bool)

(assert (=> b!1216760 (=> (not res!808102) (not e!690827))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1216760 (= res!808102 (and (= (size!38451 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38450 _keys!1208) (size!38451 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!48238 () Bool)

(assert (=> mapIsEmpty!48238 mapRes!48238))

(declare-fun b!1216762 () Bool)

(declare-fun e!690830 () Bool)

(declare-fun e!690831 () Bool)

(assert (=> b!1216762 (= e!690830 e!690831)))

(declare-fun res!808106 () Bool)

(assert (=> b!1216762 (=> res!808106 e!690831)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1216762 (= res!808106 (not (validKeyInArray!0 (select (arr!37913 _keys!1208) from!1455))))))

(declare-fun zeroValue!944 () V!46339)

(declare-fun lt!552986 () array!78564)

(declare-fun minValue!944 () V!46339)

(declare-fun lt!552988 () array!78566)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20080 0))(
  ( (tuple2!20081 (_1!10050 (_ BitVec 64)) (_2!10050 V!46339)) )
))
(declare-datatypes ((List!26902 0))(
  ( (Nil!26899) (Cons!26898 (h!28107 tuple2!20080) (t!40094 List!26902)) )
))
(declare-datatypes ((ListLongMap!18061 0))(
  ( (ListLongMap!18062 (toList!9046 List!26902)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5451 (array!78564 array!78566 (_ BitVec 32) (_ BitVec 32) V!46339 V!46339 (_ BitVec 32) Int) ListLongMap!18061)

(declare-fun -!1909 (ListLongMap!18061 (_ BitVec 64)) ListLongMap!18061)

(assert (=> b!1216762 (= (getCurrentListMapNoExtraKeys!5451 lt!552986 lt!552988 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1909 (getCurrentListMapNoExtraKeys!5451 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!552987 () Unit!40276)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1111 (array!78564 array!78566 (_ BitVec 32) (_ BitVec 32) V!46339 V!46339 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40276)

(assert (=> b!1216762 (= lt!552987 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1111 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1216763 () Bool)

(declare-fun res!808101 () Bool)

(assert (=> b!1216763 (=> (not res!808101) (not e!690827))))

(assert (=> b!1216763 (= res!808101 (validKeyInArray!0 k0!934))))

(declare-fun b!1216764 () Bool)

(assert (=> b!1216764 (= e!690826 e!690830)))

(declare-fun res!808099 () Bool)

(assert (=> b!1216764 (=> res!808099 e!690830)))

(assert (=> b!1216764 (= res!808099 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!552985 () ListLongMap!18061)

(assert (=> b!1216764 (= lt!552985 (getCurrentListMapNoExtraKeys!5451 lt!552986 lt!552988 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3358 (Int (_ BitVec 64)) V!46339)

(assert (=> b!1216764 (= lt!552988 (array!78567 (store (arr!37914 _values!996) i!673 (ValueCellFull!14745 (dynLambda!3358 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38451 _values!996)))))

(declare-fun lt!552989 () ListLongMap!18061)

(assert (=> b!1216764 (= lt!552989 (getCurrentListMapNoExtraKeys!5451 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!48238 () Bool)

(declare-fun tp!91638 () Bool)

(declare-fun e!690828 () Bool)

(assert (=> mapNonEmpty!48238 (= mapRes!48238 (and tp!91638 e!690828))))

(declare-fun mapRest!48238 () (Array (_ BitVec 32) ValueCell!14745))

(declare-fun mapValue!48238 () ValueCell!14745)

(declare-fun mapKey!48238 () (_ BitVec 32))

(assert (=> mapNonEmpty!48238 (= (arr!37914 _values!996) (store mapRest!48238 mapKey!48238 mapValue!48238))))

(declare-fun b!1216765 () Bool)

(assert (=> b!1216765 (= e!690831 (bvslt from!1455 (size!38450 _keys!1208)))))

(declare-fun b!1216766 () Bool)

(declare-fun tp_is_empty!30909 () Bool)

(assert (=> b!1216766 (= e!690834 tp_is_empty!30909)))

(declare-fun b!1216767 () Bool)

(assert (=> b!1216767 (= e!690828 tp_is_empty!30909)))

(declare-fun b!1216761 () Bool)

(declare-fun res!808105 () Bool)

(assert (=> b!1216761 (=> (not res!808105) (not e!690829))))

(assert (=> b!1216761 (= res!808105 (arrayNoDuplicates!0 lt!552986 #b00000000000000000000000000000000 Nil!26898))))

(declare-fun res!808111 () Bool)

(assert (=> start!101318 (=> (not res!808111) (not e!690827))))

(assert (=> start!101318 (= res!808111 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38450 _keys!1208))))))

(assert (=> start!101318 e!690827))

(assert (=> start!101318 tp_is_empty!30909))

(declare-fun array_inv!28768 (array!78564) Bool)

(assert (=> start!101318 (array_inv!28768 _keys!1208)))

(assert (=> start!101318 true))

(assert (=> start!101318 tp!91637))

(declare-fun array_inv!28769 (array!78566) Bool)

(assert (=> start!101318 (and (array_inv!28769 _values!996) e!690833)))

(declare-fun b!1216768 () Bool)

(declare-fun res!808104 () Bool)

(assert (=> b!1216768 (=> (not res!808104) (not e!690827))))

(assert (=> b!1216768 (= res!808104 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38450 _keys!1208))))))

(declare-fun b!1216769 () Bool)

(assert (=> b!1216769 (= e!690827 e!690829)))

(declare-fun res!808110 () Bool)

(assert (=> b!1216769 (=> (not res!808110) (not e!690829))))

(assert (=> b!1216769 (= res!808110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552986 mask!1564))))

(assert (=> b!1216769 (= lt!552986 (array!78565 (store (arr!37913 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38450 _keys!1208)))))

(assert (= (and start!101318 res!808111) b!1216756))

(assert (= (and b!1216756 res!808109) b!1216760))

(assert (= (and b!1216760 res!808102) b!1216754))

(assert (= (and b!1216754 res!808103) b!1216755))

(assert (= (and b!1216755 res!808107) b!1216768))

(assert (= (and b!1216768 res!808104) b!1216763))

(assert (= (and b!1216763 res!808101) b!1216759))

(assert (= (and b!1216759 res!808100) b!1216769))

(assert (= (and b!1216769 res!808110) b!1216761))

(assert (= (and b!1216761 res!808105) b!1216758))

(assert (= (and b!1216758 (not res!808108)) b!1216764))

(assert (= (and b!1216764 (not res!808099)) b!1216762))

(assert (= (and b!1216762 (not res!808106)) b!1216765))

(assert (= (and b!1216757 condMapEmpty!48238) mapIsEmpty!48238))

(assert (= (and b!1216757 (not condMapEmpty!48238)) mapNonEmpty!48238))

(get-info :version)

(assert (= (and mapNonEmpty!48238 ((_ is ValueCellFull!14745) mapValue!48238)) b!1216767))

(assert (= (and b!1216757 ((_ is ValueCellFull!14745) mapDefault!48238)) b!1216766))

(assert (= start!101318 b!1216757))

(declare-fun b_lambda!21891 () Bool)

(assert (=> (not b_lambda!21891) (not b!1216764)))

(declare-fun t!40092 () Bool)

(declare-fun tb!11013 () Bool)

(assert (=> (and start!101318 (= defaultEntry!1004 defaultEntry!1004) t!40092) tb!11013))

(declare-fun result!22615 () Bool)

(assert (=> tb!11013 (= result!22615 tp_is_empty!30909)))

(assert (=> b!1216764 t!40092))

(declare-fun b_and!43539 () Bool)

(assert (= b_and!43537 (and (=> t!40092 result!22615) b_and!43539)))

(declare-fun m!1121511 () Bool)

(assert (=> mapNonEmpty!48238 m!1121511))

(declare-fun m!1121513 () Bool)

(assert (=> b!1216762 m!1121513))

(declare-fun m!1121515 () Bool)

(assert (=> b!1216762 m!1121515))

(declare-fun m!1121517 () Bool)

(assert (=> b!1216762 m!1121517))

(assert (=> b!1216762 m!1121513))

(declare-fun m!1121519 () Bool)

(assert (=> b!1216762 m!1121519))

(declare-fun m!1121521 () Bool)

(assert (=> b!1216762 m!1121521))

(declare-fun m!1121523 () Bool)

(assert (=> b!1216762 m!1121523))

(assert (=> b!1216762 m!1121521))

(declare-fun m!1121525 () Bool)

(assert (=> b!1216755 m!1121525))

(declare-fun m!1121527 () Bool)

(assert (=> b!1216769 m!1121527))

(declare-fun m!1121529 () Bool)

(assert (=> b!1216769 m!1121529))

(declare-fun m!1121531 () Bool)

(assert (=> start!101318 m!1121531))

(declare-fun m!1121533 () Bool)

(assert (=> start!101318 m!1121533))

(declare-fun m!1121535 () Bool)

(assert (=> b!1216754 m!1121535))

(declare-fun m!1121537 () Bool)

(assert (=> b!1216761 m!1121537))

(declare-fun m!1121539 () Bool)

(assert (=> b!1216758 m!1121539))

(declare-fun m!1121541 () Bool)

(assert (=> b!1216758 m!1121541))

(declare-fun m!1121543 () Bool)

(assert (=> b!1216764 m!1121543))

(declare-fun m!1121545 () Bool)

(assert (=> b!1216764 m!1121545))

(declare-fun m!1121547 () Bool)

(assert (=> b!1216764 m!1121547))

(declare-fun m!1121549 () Bool)

(assert (=> b!1216764 m!1121549))

(declare-fun m!1121551 () Bool)

(assert (=> b!1216759 m!1121551))

(declare-fun m!1121553 () Bool)

(assert (=> b!1216763 m!1121553))

(declare-fun m!1121555 () Bool)

(assert (=> b!1216756 m!1121555))

(check-sat (not mapNonEmpty!48238) (not b!1216758) (not b!1216769) (not b!1216755) (not b!1216754) b_and!43539 (not b!1216764) (not b_next!26205) (not b!1216756) tp_is_empty!30909 (not b_lambda!21891) (not start!101318) (not b!1216761) (not b!1216762) (not b!1216763))
(check-sat b_and!43539 (not b_next!26205))
