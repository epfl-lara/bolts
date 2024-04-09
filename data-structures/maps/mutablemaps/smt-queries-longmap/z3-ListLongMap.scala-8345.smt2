; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101658 () Bool)

(assert start!101658)

(declare-fun b_free!26343 () Bool)

(declare-fun b_next!26343 () Bool)

(assert (=> start!101658 (= b_free!26343 (not b_next!26343))))

(declare-fun tp!92073 () Bool)

(declare-fun b_and!43939 () Bool)

(assert (=> start!101658 (= tp!92073 b_and!43939)))

(declare-fun mapNonEmpty!48466 () Bool)

(declare-fun mapRes!48466 () Bool)

(declare-fun tp!92072 () Bool)

(declare-fun e!693891 () Bool)

(assert (=> mapNonEmpty!48466 (= mapRes!48466 (and tp!92072 e!693891))))

(declare-datatypes ((V!46523 0))(
  ( (V!46524 (val!15580 Int)) )
))
(declare-datatypes ((ValueCell!14814 0))(
  ( (ValueCellFull!14814 (v!18242 V!46523)) (EmptyCell!14814) )
))
(declare-fun mapRest!48466 () (Array (_ BitVec 32) ValueCell!14814))

(declare-fun mapKey!48466 () (_ BitVec 32))

(declare-datatypes ((array!78852 0))(
  ( (array!78853 (arr!38050 (Array (_ BitVec 32) ValueCell!14814)) (size!38587 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78852)

(declare-fun mapValue!48466 () ValueCell!14814)

(assert (=> mapNonEmpty!48466 (= (arr!38050 _values!996) (store mapRest!48466 mapKey!48466 mapValue!48466))))

(declare-fun res!811775 () Bool)

(declare-fun e!693893 () Bool)

(assert (=> start!101658 (=> (not res!811775) (not e!693893))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78854 0))(
  ( (array!78855 (arr!38051 (Array (_ BitVec 32) (_ BitVec 64))) (size!38588 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78854)

(assert (=> start!101658 (= res!811775 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38588 _keys!1208))))))

(assert (=> start!101658 e!693893))

(declare-fun tp_is_empty!31047 () Bool)

(assert (=> start!101658 tp_is_empty!31047))

(declare-fun array_inv!28868 (array!78854) Bool)

(assert (=> start!101658 (array_inv!28868 _keys!1208)))

(assert (=> start!101658 true))

(assert (=> start!101658 tp!92073))

(declare-fun e!693896 () Bool)

(declare-fun array_inv!28869 (array!78852) Bool)

(assert (=> start!101658 (and (array_inv!28869 _values!996) e!693896)))

(declare-fun b!1221767 () Bool)

(declare-fun res!811760 () Bool)

(assert (=> b!1221767 (=> (not res!811760) (not e!693893))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1221767 (= res!811760 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38588 _keys!1208))))))

(declare-fun b!1221768 () Bool)

(declare-fun e!693892 () Bool)

(declare-fun e!693890 () Bool)

(assert (=> b!1221768 (= e!693892 e!693890)))

(declare-fun res!811776 () Bool)

(assert (=> b!1221768 (=> res!811776 e!693890)))

(assert (=> b!1221768 (= res!811776 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!555750 () array!78852)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20200 0))(
  ( (tuple2!20201 (_1!10110 (_ BitVec 64)) (_2!10110 V!46523)) )
))
(declare-datatypes ((List!27016 0))(
  ( (Nil!27013) (Cons!27012 (h!28221 tuple2!20200) (t!40346 List!27016)) )
))
(declare-datatypes ((ListLongMap!18181 0))(
  ( (ListLongMap!18182 (toList!9106 List!27016)) )
))
(declare-fun lt!555740 () ListLongMap!18181)

(declare-fun minValue!944 () V!46523)

(declare-fun zeroValue!944 () V!46523)

(declare-fun lt!555744 () array!78854)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5504 (array!78854 array!78852 (_ BitVec 32) (_ BitVec 32) V!46523 V!46523 (_ BitVec 32) Int) ListLongMap!18181)

(assert (=> b!1221768 (= lt!555740 (getCurrentListMapNoExtraKeys!5504 lt!555744 lt!555750 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!555743 () V!46523)

(assert (=> b!1221768 (= lt!555750 (array!78853 (store (arr!38050 _values!996) i!673 (ValueCellFull!14814 lt!555743)) (size!38587 _values!996)))))

(declare-fun dynLambda!3404 (Int (_ BitVec 64)) V!46523)

(assert (=> b!1221768 (= lt!555743 (dynLambda!3404 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!555739 () ListLongMap!18181)

(assert (=> b!1221768 (= lt!555739 (getCurrentListMapNoExtraKeys!5504 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1221769 () Bool)

(assert (=> b!1221769 (= e!693891 tp_is_empty!31047)))

(declare-fun b!1221770 () Bool)

(declare-fun e!693889 () Bool)

(assert (=> b!1221770 (= e!693889 true)))

(declare-fun lt!555738 () Bool)

(declare-datatypes ((List!27017 0))(
  ( (Nil!27014) (Cons!27013 (h!28222 (_ BitVec 64)) (t!40347 List!27017)) )
))
(declare-fun contains!7047 (List!27017 (_ BitVec 64)) Bool)

(assert (=> b!1221770 (= lt!555738 (contains!7047 Nil!27014 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1221771 () Bool)

(declare-fun res!811761 () Bool)

(assert (=> b!1221771 (=> (not res!811761) (not e!693893))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1221771 (= res!811761 (validKeyInArray!0 k0!934))))

(declare-fun b!1221772 () Bool)

(declare-fun res!811766 () Bool)

(assert (=> b!1221772 (=> (not res!811766) (not e!693893))))

(assert (=> b!1221772 (= res!811766 (= (select (arr!38051 _keys!1208) i!673) k0!934))))

(declare-fun b!1221773 () Bool)

(declare-fun e!693888 () Bool)

(assert (=> b!1221773 (= e!693888 e!693889)))

(declare-fun res!811764 () Bool)

(assert (=> b!1221773 (=> res!811764 e!693889)))

(assert (=> b!1221773 (= res!811764 (or (bvsge (size!38588 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38588 _keys!1208)) (bvsge from!1455 (size!38588 _keys!1208))))))

(declare-fun arrayNoDuplicates!0 (array!78854 (_ BitVec 32) List!27017) Bool)

(assert (=> b!1221773 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27014)))

(declare-datatypes ((Unit!40382 0))(
  ( (Unit!40383) )
))
(declare-fun lt!555749 () Unit!40382)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78854 (_ BitVec 32) (_ BitVec 32)) Unit!40382)

(assert (=> b!1221773 (= lt!555749 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun arrayContainsKey!0 (array!78854 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1221773 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!555746 () Unit!40382)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78854 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40382)

(assert (=> b!1221773 (= lt!555746 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1221774 () Bool)

(declare-fun e!693898 () Bool)

(assert (=> b!1221774 (= e!693896 (and e!693898 mapRes!48466))))

(declare-fun condMapEmpty!48466 () Bool)

(declare-fun mapDefault!48466 () ValueCell!14814)

(assert (=> b!1221774 (= condMapEmpty!48466 (= (arr!38050 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14814)) mapDefault!48466)))))

(declare-fun b!1221775 () Bool)

(declare-fun res!811777 () Bool)

(assert (=> b!1221775 (=> (not res!811777) (not e!693893))))

(assert (=> b!1221775 (= res!811777 (and (= (size!38587 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38588 _keys!1208) (size!38587 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1221776 () Bool)

(declare-fun res!811771 () Bool)

(assert (=> b!1221776 (=> res!811771 e!693889)))

(assert (=> b!1221776 (= res!811771 (contains!7047 Nil!27014 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1221777 () Bool)

(declare-fun e!693895 () Bool)

(assert (=> b!1221777 (= e!693895 (not e!693892))))

(declare-fun res!811774 () Bool)

(assert (=> b!1221777 (=> res!811774 e!693892)))

(assert (=> b!1221777 (= res!811774 (bvsgt from!1455 i!673))))

(assert (=> b!1221777 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!555742 () Unit!40382)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78854 (_ BitVec 64) (_ BitVec 32)) Unit!40382)

(assert (=> b!1221777 (= lt!555742 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1221778 () Bool)

(declare-fun e!693897 () Bool)

(assert (=> b!1221778 (= e!693897 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1221779 () Bool)

(assert (=> b!1221779 (= e!693898 tp_is_empty!31047)))

(declare-fun mapIsEmpty!48466 () Bool)

(assert (=> mapIsEmpty!48466 mapRes!48466))

(declare-fun b!1221780 () Bool)

(declare-fun res!811762 () Bool)

(assert (=> b!1221780 (=> (not res!811762) (not e!693893))))

(assert (=> b!1221780 (= res!811762 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27014))))

(declare-fun b!1221781 () Bool)

(declare-fun e!693887 () Bool)

(assert (=> b!1221781 (= e!693887 e!693897)))

(declare-fun res!811759 () Bool)

(assert (=> b!1221781 (=> res!811759 e!693897)))

(assert (=> b!1221781 (= res!811759 (not (= (select (arr!38051 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1221782 () Bool)

(assert (=> b!1221782 (= e!693893 e!693895)))

(declare-fun res!811767 () Bool)

(assert (=> b!1221782 (=> (not res!811767) (not e!693895))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78854 (_ BitVec 32)) Bool)

(assert (=> b!1221782 (= res!811767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!555744 mask!1564))))

(assert (=> b!1221782 (= lt!555744 (array!78855 (store (arr!38051 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38588 _keys!1208)))))

(declare-fun b!1221783 () Bool)

(declare-fun res!811768 () Bool)

(assert (=> b!1221783 (=> (not res!811768) (not e!693895))))

(assert (=> b!1221783 (= res!811768 (arrayNoDuplicates!0 lt!555744 #b00000000000000000000000000000000 Nil!27014))))

(declare-fun b!1221784 () Bool)

(declare-fun res!811763 () Bool)

(assert (=> b!1221784 (=> (not res!811763) (not e!693893))))

(assert (=> b!1221784 (= res!811763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1221785 () Bool)

(declare-fun res!811772 () Bool)

(assert (=> b!1221785 (=> res!811772 e!693889)))

(declare-fun noDuplicate!1659 (List!27017) Bool)

(assert (=> b!1221785 (= res!811772 (not (noDuplicate!1659 Nil!27014)))))

(declare-fun b!1221786 () Bool)

(declare-fun e!693899 () Bool)

(assert (=> b!1221786 (= e!693890 e!693899)))

(declare-fun res!811773 () Bool)

(assert (=> b!1221786 (=> res!811773 e!693899)))

(assert (=> b!1221786 (= res!811773 (not (validKeyInArray!0 (select (arr!38051 _keys!1208) from!1455))))))

(declare-fun lt!555747 () ListLongMap!18181)

(declare-fun lt!555748 () ListLongMap!18181)

(assert (=> b!1221786 (= lt!555747 lt!555748)))

(declare-fun lt!555741 () ListLongMap!18181)

(declare-fun -!1950 (ListLongMap!18181 (_ BitVec 64)) ListLongMap!18181)

(assert (=> b!1221786 (= lt!555748 (-!1950 lt!555741 k0!934))))

(assert (=> b!1221786 (= lt!555747 (getCurrentListMapNoExtraKeys!5504 lt!555744 lt!555750 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1221786 (= lt!555741 (getCurrentListMapNoExtraKeys!5504 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!555745 () Unit!40382)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1152 (array!78854 array!78852 (_ BitVec 32) (_ BitVec 32) V!46523 V!46523 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40382)

(assert (=> b!1221786 (= lt!555745 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1152 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1221787 () Bool)

(declare-fun res!811769 () Bool)

(assert (=> b!1221787 (=> (not res!811769) (not e!693893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1221787 (= res!811769 (validMask!0 mask!1564))))

(declare-fun b!1221788 () Bool)

(assert (=> b!1221788 (= e!693899 e!693888)))

(declare-fun res!811770 () Bool)

(assert (=> b!1221788 (=> res!811770 e!693888)))

(assert (=> b!1221788 (= res!811770 (not (= (select (arr!38051 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1221788 e!693887))

(declare-fun res!811765 () Bool)

(assert (=> b!1221788 (=> (not res!811765) (not e!693887))))

(declare-fun +!4076 (ListLongMap!18181 tuple2!20200) ListLongMap!18181)

(declare-fun get!19462 (ValueCell!14814 V!46523) V!46523)

(assert (=> b!1221788 (= res!811765 (= lt!555740 (+!4076 lt!555748 (tuple2!20201 (select (arr!38051 _keys!1208) from!1455) (get!19462 (select (arr!38050 _values!996) from!1455) lt!555743)))))))

(assert (= (and start!101658 res!811775) b!1221787))

(assert (= (and b!1221787 res!811769) b!1221775))

(assert (= (and b!1221775 res!811777) b!1221784))

(assert (= (and b!1221784 res!811763) b!1221780))

(assert (= (and b!1221780 res!811762) b!1221767))

(assert (= (and b!1221767 res!811760) b!1221771))

(assert (= (and b!1221771 res!811761) b!1221772))

(assert (= (and b!1221772 res!811766) b!1221782))

(assert (= (and b!1221782 res!811767) b!1221783))

(assert (= (and b!1221783 res!811768) b!1221777))

(assert (= (and b!1221777 (not res!811774)) b!1221768))

(assert (= (and b!1221768 (not res!811776)) b!1221786))

(assert (= (and b!1221786 (not res!811773)) b!1221788))

(assert (= (and b!1221788 res!811765) b!1221781))

(assert (= (and b!1221781 (not res!811759)) b!1221778))

(assert (= (and b!1221788 (not res!811770)) b!1221773))

(assert (= (and b!1221773 (not res!811764)) b!1221785))

(assert (= (and b!1221785 (not res!811772)) b!1221776))

(assert (= (and b!1221776 (not res!811771)) b!1221770))

(assert (= (and b!1221774 condMapEmpty!48466) mapIsEmpty!48466))

(assert (= (and b!1221774 (not condMapEmpty!48466)) mapNonEmpty!48466))

(get-info :version)

(assert (= (and mapNonEmpty!48466 ((_ is ValueCellFull!14814) mapValue!48466)) b!1221769))

(assert (= (and b!1221774 ((_ is ValueCellFull!14814) mapDefault!48466)) b!1221779))

(assert (= start!101658 b!1221774))

(declare-fun b_lambda!22295 () Bool)

(assert (=> (not b_lambda!22295) (not b!1221768)))

(declare-fun t!40345 () Bool)

(declare-fun tb!11151 () Bool)

(assert (=> (and start!101658 (= defaultEntry!1004 defaultEntry!1004) t!40345) tb!11151))

(declare-fun result!22905 () Bool)

(assert (=> tb!11151 (= result!22905 tp_is_empty!31047)))

(assert (=> b!1221768 t!40345))

(declare-fun b_and!43941 () Bool)

(assert (= b_and!43939 (and (=> t!40345 result!22905) b_and!43941)))

(declare-fun m!1126719 () Bool)

(assert (=> mapNonEmpty!48466 m!1126719))

(declare-fun m!1126721 () Bool)

(assert (=> b!1221768 m!1126721))

(declare-fun m!1126723 () Bool)

(assert (=> b!1221768 m!1126723))

(declare-fun m!1126725 () Bool)

(assert (=> b!1221768 m!1126725))

(declare-fun m!1126727 () Bool)

(assert (=> b!1221768 m!1126727))

(declare-fun m!1126729 () Bool)

(assert (=> start!101658 m!1126729))

(declare-fun m!1126731 () Bool)

(assert (=> start!101658 m!1126731))

(declare-fun m!1126733 () Bool)

(assert (=> b!1221776 m!1126733))

(declare-fun m!1126735 () Bool)

(assert (=> b!1221782 m!1126735))

(declare-fun m!1126737 () Bool)

(assert (=> b!1221782 m!1126737))

(declare-fun m!1126739 () Bool)

(assert (=> b!1221778 m!1126739))

(declare-fun m!1126741 () Bool)

(assert (=> b!1221777 m!1126741))

(declare-fun m!1126743 () Bool)

(assert (=> b!1221777 m!1126743))

(declare-fun m!1126745 () Bool)

(assert (=> b!1221770 m!1126745))

(declare-fun m!1126747 () Bool)

(assert (=> b!1221785 m!1126747))

(declare-fun m!1126749 () Bool)

(assert (=> b!1221781 m!1126749))

(declare-fun m!1126751 () Bool)

(assert (=> b!1221771 m!1126751))

(declare-fun m!1126753 () Bool)

(assert (=> b!1221786 m!1126753))

(declare-fun m!1126755 () Bool)

(assert (=> b!1221786 m!1126755))

(declare-fun m!1126757 () Bool)

(assert (=> b!1221786 m!1126757))

(declare-fun m!1126759 () Bool)

(assert (=> b!1221786 m!1126759))

(assert (=> b!1221786 m!1126749))

(declare-fun m!1126761 () Bool)

(assert (=> b!1221786 m!1126761))

(assert (=> b!1221786 m!1126749))

(declare-fun m!1126763 () Bool)

(assert (=> b!1221773 m!1126763))

(declare-fun m!1126765 () Bool)

(assert (=> b!1221773 m!1126765))

(declare-fun m!1126767 () Bool)

(assert (=> b!1221773 m!1126767))

(declare-fun m!1126769 () Bool)

(assert (=> b!1221773 m!1126769))

(declare-fun m!1126771 () Bool)

(assert (=> b!1221772 m!1126771))

(assert (=> b!1221788 m!1126749))

(declare-fun m!1126773 () Bool)

(assert (=> b!1221788 m!1126773))

(assert (=> b!1221788 m!1126773))

(declare-fun m!1126775 () Bool)

(assert (=> b!1221788 m!1126775))

(declare-fun m!1126777 () Bool)

(assert (=> b!1221788 m!1126777))

(declare-fun m!1126779 () Bool)

(assert (=> b!1221784 m!1126779))

(declare-fun m!1126781 () Bool)

(assert (=> b!1221787 m!1126781))

(declare-fun m!1126783 () Bool)

(assert (=> b!1221783 m!1126783))

(declare-fun m!1126785 () Bool)

(assert (=> b!1221780 m!1126785))

(check-sat (not b_lambda!22295) (not start!101658) (not b!1221777) (not b!1221780) (not mapNonEmpty!48466) (not b!1221786) (not b!1221788) (not b_next!26343) (not b!1221771) (not b!1221773) (not b!1221768) b_and!43941 (not b!1221770) (not b!1221783) (not b!1221784) (not b!1221782) (not b!1221787) (not b!1221776) (not b!1221778) tp_is_empty!31047 (not b!1221785))
(check-sat b_and!43941 (not b_next!26343))
