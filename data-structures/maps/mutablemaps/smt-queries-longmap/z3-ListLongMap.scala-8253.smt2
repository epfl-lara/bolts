; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100504 () Bool)

(assert start!100504)

(declare-fun b_free!25791 () Bool)

(declare-fun b_next!25791 () Bool)

(assert (=> start!100504 (= b_free!25791 (not b_next!25791))))

(declare-fun tp!90363 () Bool)

(declare-fun b_and!42483 () Bool)

(assert (=> start!100504 (= tp!90363 b_and!42483)))

(declare-fun b!1199740 () Bool)

(declare-fun res!798681 () Bool)

(declare-fun e!681425 () Bool)

(assert (=> b!1199740 (=> (not res!798681) (not e!681425))))

(declare-datatypes ((array!77746 0))(
  ( (array!77747 (arr!37514 (Array (_ BitVec 32) (_ BitVec 64))) (size!38051 (_ BitVec 32))) )
))
(declare-fun lt!543814 () array!77746)

(declare-datatypes ((List!26561 0))(
  ( (Nil!26558) (Cons!26557 (h!27766 (_ BitVec 64)) (t!39339 List!26561)) )
))
(declare-fun arrayNoDuplicates!0 (array!77746 (_ BitVec 32) List!26561) Bool)

(assert (=> b!1199740 (= res!798681 (arrayNoDuplicates!0 lt!543814 #b00000000000000000000000000000000 Nil!26558))))

(declare-fun b!1199741 () Bool)

(declare-fun e!681423 () Bool)

(assert (=> b!1199741 (= e!681423 true)))

(declare-datatypes ((V!45787 0))(
  ( (V!45788 (val!15304 Int)) )
))
(declare-fun zeroValue!944 () V!45787)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14538 0))(
  ( (ValueCellFull!14538 (v!17943 V!45787)) (EmptyCell!14538) )
))
(declare-datatypes ((array!77748 0))(
  ( (array!77749 (arr!37515 (Array (_ BitVec 32) ValueCell!14538)) (size!38052 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77748)

(declare-fun minValue!944 () V!45787)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!19728 0))(
  ( (tuple2!19729 (_1!9874 (_ BitVec 64)) (_2!9874 V!45787)) )
))
(declare-datatypes ((List!26562 0))(
  ( (Nil!26559) (Cons!26558 (h!27767 tuple2!19728) (t!39340 List!26562)) )
))
(declare-datatypes ((ListLongMap!17709 0))(
  ( (ListLongMap!17710 (toList!8870 List!26562)) )
))
(declare-fun lt!543815 () ListLongMap!17709)

(declare-fun getCurrentListMapNoExtraKeys!5283 (array!77746 array!77748 (_ BitVec 32) (_ BitVec 32) V!45787 V!45787 (_ BitVec 32) Int) ListLongMap!17709)

(declare-fun dynLambda!3214 (Int (_ BitVec 64)) V!45787)

(assert (=> b!1199741 (= lt!543815 (getCurrentListMapNoExtraKeys!5283 lt!543814 (array!77749 (store (arr!37515 _values!996) i!673 (ValueCellFull!14538 (dynLambda!3214 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38052 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _keys!1208 () array!77746)

(declare-fun lt!543817 () ListLongMap!17709)

(assert (=> b!1199741 (= lt!543817 (getCurrentListMapNoExtraKeys!5283 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1199743 () Bool)

(declare-fun res!798675 () Bool)

(declare-fun e!681422 () Bool)

(assert (=> b!1199743 (=> (not res!798675) (not e!681422))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77746 (_ BitVec 32)) Bool)

(assert (=> b!1199743 (= res!798675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1199744 () Bool)

(assert (=> b!1199744 (= e!681422 e!681425)))

(declare-fun res!798684 () Bool)

(assert (=> b!1199744 (=> (not res!798684) (not e!681425))))

(assert (=> b!1199744 (= res!798684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543814 mask!1564))))

(assert (=> b!1199744 (= lt!543814 (array!77747 (store (arr!37514 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38051 _keys!1208)))))

(declare-fun b!1199745 () Bool)

(declare-fun e!681427 () Bool)

(declare-fun tp_is_empty!30495 () Bool)

(assert (=> b!1199745 (= e!681427 tp_is_empty!30495)))

(declare-fun b!1199746 () Bool)

(declare-fun res!798682 () Bool)

(assert (=> b!1199746 (=> (not res!798682) (not e!681422))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1199746 (= res!798682 (validMask!0 mask!1564))))

(declare-fun b!1199747 () Bool)

(declare-fun res!798680 () Bool)

(assert (=> b!1199747 (=> (not res!798680) (not e!681422))))

(assert (=> b!1199747 (= res!798680 (and (= (size!38052 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38051 _keys!1208) (size!38052 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!47585 () Bool)

(declare-fun mapRes!47585 () Bool)

(declare-fun tp!90364 () Bool)

(assert (=> mapNonEmpty!47585 (= mapRes!47585 (and tp!90364 e!681427))))

(declare-fun mapRest!47585 () (Array (_ BitVec 32) ValueCell!14538))

(declare-fun mapValue!47585 () ValueCell!14538)

(declare-fun mapKey!47585 () (_ BitVec 32))

(assert (=> mapNonEmpty!47585 (= (arr!37515 _values!996) (store mapRest!47585 mapKey!47585 mapValue!47585))))

(declare-fun b!1199748 () Bool)

(declare-fun res!798678 () Bool)

(assert (=> b!1199748 (=> (not res!798678) (not e!681422))))

(assert (=> b!1199748 (= res!798678 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26558))))

(declare-fun b!1199749 () Bool)

(declare-fun res!798676 () Bool)

(assert (=> b!1199749 (=> (not res!798676) (not e!681422))))

(assert (=> b!1199749 (= res!798676 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38051 _keys!1208))))))

(declare-fun b!1199750 () Bool)

(declare-fun e!681424 () Bool)

(declare-fun e!681426 () Bool)

(assert (=> b!1199750 (= e!681424 (and e!681426 mapRes!47585))))

(declare-fun condMapEmpty!47585 () Bool)

(declare-fun mapDefault!47585 () ValueCell!14538)

(assert (=> b!1199750 (= condMapEmpty!47585 (= (arr!37515 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14538)) mapDefault!47585)))))

(declare-fun mapIsEmpty!47585 () Bool)

(assert (=> mapIsEmpty!47585 mapRes!47585))

(declare-fun b!1199742 () Bool)

(declare-fun res!798679 () Bool)

(assert (=> b!1199742 (=> (not res!798679) (not e!681422))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1199742 (= res!798679 (validKeyInArray!0 k0!934))))

(declare-fun res!798683 () Bool)

(assert (=> start!100504 (=> (not res!798683) (not e!681422))))

(assert (=> start!100504 (= res!798683 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38051 _keys!1208))))))

(assert (=> start!100504 e!681422))

(assert (=> start!100504 tp_is_empty!30495))

(declare-fun array_inv!28490 (array!77746) Bool)

(assert (=> start!100504 (array_inv!28490 _keys!1208)))

(assert (=> start!100504 true))

(assert (=> start!100504 tp!90363))

(declare-fun array_inv!28491 (array!77748) Bool)

(assert (=> start!100504 (and (array_inv!28491 _values!996) e!681424)))

(declare-fun b!1199751 () Bool)

(declare-fun res!798674 () Bool)

(assert (=> b!1199751 (=> (not res!798674) (not e!681422))))

(assert (=> b!1199751 (= res!798674 (= (select (arr!37514 _keys!1208) i!673) k0!934))))

(declare-fun b!1199752 () Bool)

(assert (=> b!1199752 (= e!681426 tp_is_empty!30495)))

(declare-fun b!1199753 () Bool)

(assert (=> b!1199753 (= e!681425 (not e!681423))))

(declare-fun res!798677 () Bool)

(assert (=> b!1199753 (=> res!798677 e!681423)))

(assert (=> b!1199753 (= res!798677 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77746 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1199753 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39708 0))(
  ( (Unit!39709) )
))
(declare-fun lt!543816 () Unit!39708)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77746 (_ BitVec 64) (_ BitVec 32)) Unit!39708)

(assert (=> b!1199753 (= lt!543816 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!100504 res!798683) b!1199746))

(assert (= (and b!1199746 res!798682) b!1199747))

(assert (= (and b!1199747 res!798680) b!1199743))

(assert (= (and b!1199743 res!798675) b!1199748))

(assert (= (and b!1199748 res!798678) b!1199749))

(assert (= (and b!1199749 res!798676) b!1199742))

(assert (= (and b!1199742 res!798679) b!1199751))

(assert (= (and b!1199751 res!798674) b!1199744))

(assert (= (and b!1199744 res!798684) b!1199740))

(assert (= (and b!1199740 res!798681) b!1199753))

(assert (= (and b!1199753 (not res!798677)) b!1199741))

(assert (= (and b!1199750 condMapEmpty!47585) mapIsEmpty!47585))

(assert (= (and b!1199750 (not condMapEmpty!47585)) mapNonEmpty!47585))

(get-info :version)

(assert (= (and mapNonEmpty!47585 ((_ is ValueCellFull!14538) mapValue!47585)) b!1199745))

(assert (= (and b!1199750 ((_ is ValueCellFull!14538) mapDefault!47585)) b!1199752))

(assert (= start!100504 b!1199750))

(declare-fun b_lambda!21005 () Bool)

(assert (=> (not b_lambda!21005) (not b!1199741)))

(declare-fun t!39338 () Bool)

(declare-fun tb!10599 () Bool)

(assert (=> (and start!100504 (= defaultEntry!1004 defaultEntry!1004) t!39338) tb!10599))

(declare-fun result!21767 () Bool)

(assert (=> tb!10599 (= result!21767 tp_is_empty!30495)))

(assert (=> b!1199741 t!39338))

(declare-fun b_and!42485 () Bool)

(assert (= b_and!42483 (and (=> t!39338 result!21767) b_and!42485)))

(declare-fun m!1106249 () Bool)

(assert (=> mapNonEmpty!47585 m!1106249))

(declare-fun m!1106251 () Bool)

(assert (=> b!1199741 m!1106251))

(declare-fun m!1106253 () Bool)

(assert (=> b!1199741 m!1106253))

(declare-fun m!1106255 () Bool)

(assert (=> b!1199741 m!1106255))

(declare-fun m!1106257 () Bool)

(assert (=> b!1199741 m!1106257))

(declare-fun m!1106259 () Bool)

(assert (=> b!1199740 m!1106259))

(declare-fun m!1106261 () Bool)

(assert (=> b!1199748 m!1106261))

(declare-fun m!1106263 () Bool)

(assert (=> start!100504 m!1106263))

(declare-fun m!1106265 () Bool)

(assert (=> start!100504 m!1106265))

(declare-fun m!1106267 () Bool)

(assert (=> b!1199743 m!1106267))

(declare-fun m!1106269 () Bool)

(assert (=> b!1199744 m!1106269))

(declare-fun m!1106271 () Bool)

(assert (=> b!1199744 m!1106271))

(declare-fun m!1106273 () Bool)

(assert (=> b!1199751 m!1106273))

(declare-fun m!1106275 () Bool)

(assert (=> b!1199742 m!1106275))

(declare-fun m!1106277 () Bool)

(assert (=> b!1199746 m!1106277))

(declare-fun m!1106279 () Bool)

(assert (=> b!1199753 m!1106279))

(declare-fun m!1106281 () Bool)

(assert (=> b!1199753 m!1106281))

(check-sat (not b!1199743) b_and!42485 (not start!100504) (not b!1199753) (not b_next!25791) (not b!1199740) tp_is_empty!30495 (not b!1199748) (not b_lambda!21005) (not b!1199741) (not mapNonEmpty!47585) (not b!1199742) (not b!1199746) (not b!1199744))
(check-sat b_and!42485 (not b_next!25791))
