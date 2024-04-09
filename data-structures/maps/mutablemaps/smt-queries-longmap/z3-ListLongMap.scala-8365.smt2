; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101810 () Bool)

(assert start!101810)

(declare-fun b_free!26463 () Bool)

(declare-fun b_next!26463 () Bool)

(assert (=> start!101810 (= b_free!26463 (not b_next!26463))))

(declare-fun tp!92435 () Bool)

(declare-fun b_and!44197 () Bool)

(assert (=> start!101810 (= tp!92435 b_and!44197)))

(declare-fun b!1225674 () Bool)

(declare-fun res!814632 () Bool)

(declare-fun e!696169 () Bool)

(assert (=> b!1225674 (=> (not res!814632) (not e!696169))))

(declare-datatypes ((array!79092 0))(
  ( (array!79093 (arr!38169 (Array (_ BitVec 32) (_ BitVec 64))) (size!38706 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79092)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1225674 (= res!814632 (= (select (arr!38169 _keys!1208) i!673) k0!934))))

(declare-fun b!1225675 () Bool)

(declare-fun e!696173 () Bool)

(declare-datatypes ((V!46683 0))(
  ( (V!46684 (val!15640 Int)) )
))
(declare-datatypes ((ValueCell!14874 0))(
  ( (ValueCellFull!14874 (v!18303 V!46683)) (EmptyCell!14874) )
))
(declare-datatypes ((array!79094 0))(
  ( (array!79095 (arr!38170 (Array (_ BitVec 32) ValueCell!14874)) (size!38707 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79094)

(assert (=> b!1225675 (= e!696173 (bvslt i!673 (size!38707 _values!996)))))

(declare-fun b!1225676 () Bool)

(declare-fun e!696168 () Bool)

(declare-fun e!696167 () Bool)

(assert (=> b!1225676 (= e!696168 e!696167)))

(declare-fun res!814640 () Bool)

(assert (=> b!1225676 (=> res!814640 e!696167)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1225676 (= res!814640 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46683)

(declare-datatypes ((tuple2!20310 0))(
  ( (tuple2!20311 (_1!10165 (_ BitVec 64)) (_2!10165 V!46683)) )
))
(declare-datatypes ((List!27121 0))(
  ( (Nil!27118) (Cons!27117 (h!28326 tuple2!20310) (t!40571 List!27121)) )
))
(declare-datatypes ((ListLongMap!18291 0))(
  ( (ListLongMap!18292 (toList!9161 List!27121)) )
))
(declare-fun lt!558503 () ListLongMap!18291)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!558505 () array!79092)

(declare-fun minValue!944 () V!46683)

(declare-fun lt!558502 () array!79094)

(declare-fun getCurrentListMapNoExtraKeys!5557 (array!79092 array!79094 (_ BitVec 32) (_ BitVec 32) V!46683 V!46683 (_ BitVec 32) Int) ListLongMap!18291)

(assert (=> b!1225676 (= lt!558503 (getCurrentListMapNoExtraKeys!5557 lt!558505 lt!558502 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3450 (Int (_ BitVec 64)) V!46683)

(assert (=> b!1225676 (= lt!558502 (array!79095 (store (arr!38170 _values!996) i!673 (ValueCellFull!14874 (dynLambda!3450 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38707 _values!996)))))

(declare-fun lt!558504 () ListLongMap!18291)

(assert (=> b!1225676 (= lt!558504 (getCurrentListMapNoExtraKeys!5557 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1225677 () Bool)

(declare-fun res!814643 () Bool)

(assert (=> b!1225677 (=> (not res!814643) (not e!696169))))

(assert (=> b!1225677 (= res!814643 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38706 _keys!1208))))))

(declare-fun b!1225678 () Bool)

(declare-fun res!814638 () Bool)

(assert (=> b!1225678 (=> (not res!814638) (not e!696169))))

(declare-datatypes ((List!27122 0))(
  ( (Nil!27119) (Cons!27118 (h!28327 (_ BitVec 64)) (t!40572 List!27122)) )
))
(declare-fun arrayNoDuplicates!0 (array!79092 (_ BitVec 32) List!27122) Bool)

(assert (=> b!1225678 (= res!814638 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27119))))

(declare-fun b!1225679 () Bool)

(assert (=> b!1225679 (= e!696167 e!696173)))

(declare-fun res!814636 () Bool)

(assert (=> b!1225679 (=> res!814636 e!696173)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1225679 (= res!814636 (validKeyInArray!0 (select (arr!38169 _keys!1208) from!1455)))))

(declare-fun -!1997 (ListLongMap!18291 (_ BitVec 64)) ListLongMap!18291)

(assert (=> b!1225679 (= (getCurrentListMapNoExtraKeys!5557 lt!558505 lt!558502 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1997 (getCurrentListMapNoExtraKeys!5557 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!40568 0))(
  ( (Unit!40569) )
))
(declare-fun lt!558501 () Unit!40568)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1197 (array!79092 array!79094 (_ BitVec 32) (_ BitVec 32) V!46683 V!46683 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40568)

(assert (=> b!1225679 (= lt!558501 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1197 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!48649 () Bool)

(declare-fun mapRes!48649 () Bool)

(assert (=> mapIsEmpty!48649 mapRes!48649))

(declare-fun res!814633 () Bool)

(assert (=> start!101810 (=> (not res!814633) (not e!696169))))

(assert (=> start!101810 (= res!814633 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38706 _keys!1208))))))

(assert (=> start!101810 e!696169))

(declare-fun tp_is_empty!31167 () Bool)

(assert (=> start!101810 tp_is_empty!31167))

(declare-fun array_inv!28946 (array!79092) Bool)

(assert (=> start!101810 (array_inv!28946 _keys!1208)))

(assert (=> start!101810 true))

(assert (=> start!101810 tp!92435))

(declare-fun e!696166 () Bool)

(declare-fun array_inv!28947 (array!79094) Bool)

(assert (=> start!101810 (and (array_inv!28947 _values!996) e!696166)))

(declare-fun b!1225680 () Bool)

(declare-fun e!696174 () Bool)

(assert (=> b!1225680 (= e!696174 (not e!696168))))

(declare-fun res!814635 () Bool)

(assert (=> b!1225680 (=> res!814635 e!696168)))

(assert (=> b!1225680 (= res!814635 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!79092 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1225680 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!558500 () Unit!40568)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79092 (_ BitVec 64) (_ BitVec 32)) Unit!40568)

(assert (=> b!1225680 (= lt!558500 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1225681 () Bool)

(declare-fun res!814634 () Bool)

(assert (=> b!1225681 (=> (not res!814634) (not e!696169))))

(assert (=> b!1225681 (= res!814634 (validKeyInArray!0 k0!934))))

(declare-fun b!1225682 () Bool)

(declare-fun e!696170 () Bool)

(assert (=> b!1225682 (= e!696170 tp_is_empty!31167)))

(declare-fun b!1225683 () Bool)

(declare-fun res!814644 () Bool)

(assert (=> b!1225683 (=> (not res!814644) (not e!696169))))

(assert (=> b!1225683 (= res!814644 (and (= (size!38707 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38706 _keys!1208) (size!38707 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1225684 () Bool)

(declare-fun res!814641 () Bool)

(assert (=> b!1225684 (=> (not res!814641) (not e!696169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1225684 (= res!814641 (validMask!0 mask!1564))))

(declare-fun b!1225685 () Bool)

(assert (=> b!1225685 (= e!696169 e!696174)))

(declare-fun res!814642 () Bool)

(assert (=> b!1225685 (=> (not res!814642) (not e!696174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79092 (_ BitVec 32)) Bool)

(assert (=> b!1225685 (= res!814642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!558505 mask!1564))))

(assert (=> b!1225685 (= lt!558505 (array!79093 (store (arr!38169 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38706 _keys!1208)))))

(declare-fun b!1225686 () Bool)

(declare-fun res!814639 () Bool)

(assert (=> b!1225686 (=> (not res!814639) (not e!696169))))

(assert (=> b!1225686 (= res!814639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1225687 () Bool)

(declare-fun e!696172 () Bool)

(assert (=> b!1225687 (= e!696172 tp_is_empty!31167)))

(declare-fun mapNonEmpty!48649 () Bool)

(declare-fun tp!92436 () Bool)

(assert (=> mapNonEmpty!48649 (= mapRes!48649 (and tp!92436 e!696172))))

(declare-fun mapValue!48649 () ValueCell!14874)

(declare-fun mapKey!48649 () (_ BitVec 32))

(declare-fun mapRest!48649 () (Array (_ BitVec 32) ValueCell!14874))

(assert (=> mapNonEmpty!48649 (= (arr!38170 _values!996) (store mapRest!48649 mapKey!48649 mapValue!48649))))

(declare-fun b!1225688 () Bool)

(assert (=> b!1225688 (= e!696166 (and e!696170 mapRes!48649))))

(declare-fun condMapEmpty!48649 () Bool)

(declare-fun mapDefault!48649 () ValueCell!14874)

(assert (=> b!1225688 (= condMapEmpty!48649 (= (arr!38170 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14874)) mapDefault!48649)))))

(declare-fun b!1225689 () Bool)

(declare-fun res!814637 () Bool)

(assert (=> b!1225689 (=> (not res!814637) (not e!696174))))

(assert (=> b!1225689 (= res!814637 (arrayNoDuplicates!0 lt!558505 #b00000000000000000000000000000000 Nil!27119))))

(assert (= (and start!101810 res!814633) b!1225684))

(assert (= (and b!1225684 res!814641) b!1225683))

(assert (= (and b!1225683 res!814644) b!1225686))

(assert (= (and b!1225686 res!814639) b!1225678))

(assert (= (and b!1225678 res!814638) b!1225677))

(assert (= (and b!1225677 res!814643) b!1225681))

(assert (= (and b!1225681 res!814634) b!1225674))

(assert (= (and b!1225674 res!814632) b!1225685))

(assert (= (and b!1225685 res!814642) b!1225689))

(assert (= (and b!1225689 res!814637) b!1225680))

(assert (= (and b!1225680 (not res!814635)) b!1225676))

(assert (= (and b!1225676 (not res!814640)) b!1225679))

(assert (= (and b!1225679 (not res!814636)) b!1225675))

(assert (= (and b!1225688 condMapEmpty!48649) mapIsEmpty!48649))

(assert (= (and b!1225688 (not condMapEmpty!48649)) mapNonEmpty!48649))

(get-info :version)

(assert (= (and mapNonEmpty!48649 ((_ is ValueCellFull!14874) mapValue!48649)) b!1225687))

(assert (= (and b!1225688 ((_ is ValueCellFull!14874) mapDefault!48649)) b!1225682))

(assert (= start!101810 b!1225688))

(declare-fun b_lambda!22453 () Bool)

(assert (=> (not b_lambda!22453) (not b!1225676)))

(declare-fun t!40570 () Bool)

(declare-fun tb!11271 () Bool)

(assert (=> (and start!101810 (= defaultEntry!1004 defaultEntry!1004) t!40570) tb!11271))

(declare-fun result!23147 () Bool)

(assert (=> tb!11271 (= result!23147 tp_is_empty!31167)))

(assert (=> b!1225676 t!40570))

(declare-fun b_and!44199 () Bool)

(assert (= b_and!44197 (and (=> t!40570 result!23147) b_and!44199)))

(declare-fun m!1130831 () Bool)

(assert (=> b!1225684 m!1130831))

(declare-fun m!1130833 () Bool)

(assert (=> b!1225680 m!1130833))

(declare-fun m!1130835 () Bool)

(assert (=> b!1225680 m!1130835))

(declare-fun m!1130837 () Bool)

(assert (=> mapNonEmpty!48649 m!1130837))

(declare-fun m!1130839 () Bool)

(assert (=> start!101810 m!1130839))

(declare-fun m!1130841 () Bool)

(assert (=> start!101810 m!1130841))

(declare-fun m!1130843 () Bool)

(assert (=> b!1225676 m!1130843))

(declare-fun m!1130845 () Bool)

(assert (=> b!1225676 m!1130845))

(declare-fun m!1130847 () Bool)

(assert (=> b!1225676 m!1130847))

(declare-fun m!1130849 () Bool)

(assert (=> b!1225676 m!1130849))

(declare-fun m!1130851 () Bool)

(assert (=> b!1225686 m!1130851))

(declare-fun m!1130853 () Bool)

(assert (=> b!1225685 m!1130853))

(declare-fun m!1130855 () Bool)

(assert (=> b!1225685 m!1130855))

(declare-fun m!1130857 () Bool)

(assert (=> b!1225674 m!1130857))

(declare-fun m!1130859 () Bool)

(assert (=> b!1225679 m!1130859))

(declare-fun m!1130861 () Bool)

(assert (=> b!1225679 m!1130861))

(declare-fun m!1130863 () Bool)

(assert (=> b!1225679 m!1130863))

(assert (=> b!1225679 m!1130859))

(declare-fun m!1130865 () Bool)

(assert (=> b!1225679 m!1130865))

(declare-fun m!1130867 () Bool)

(assert (=> b!1225679 m!1130867))

(declare-fun m!1130869 () Bool)

(assert (=> b!1225679 m!1130869))

(assert (=> b!1225679 m!1130867))

(declare-fun m!1130871 () Bool)

(assert (=> b!1225681 m!1130871))

(declare-fun m!1130873 () Bool)

(assert (=> b!1225678 m!1130873))

(declare-fun m!1130875 () Bool)

(assert (=> b!1225689 m!1130875))

(check-sat (not b!1225680) (not b!1225678) (not b!1225676) tp_is_empty!31167 (not b!1225684) (not b!1225681) (not b_next!26463) (not b!1225689) (not b!1225685) (not mapNonEmpty!48649) (not b!1225679) b_and!44199 (not start!101810) (not b_lambda!22453) (not b!1225686))
(check-sat b_and!44199 (not b_next!26463))
