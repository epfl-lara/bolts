; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100510 () Bool)

(assert start!100510)

(declare-fun b_free!25797 () Bool)

(declare-fun b_next!25797 () Bool)

(assert (=> start!100510 (= b_free!25797 (not b_next!25797))))

(declare-fun tp!90381 () Bool)

(declare-fun b_and!42495 () Bool)

(assert (=> start!100510 (= tp!90381 b_and!42495)))

(declare-fun b!1199872 () Bool)

(declare-fun res!798783 () Bool)

(declare-fun e!681487 () Bool)

(assert (=> b!1199872 (=> (not res!798783) (not e!681487))))

(declare-datatypes ((array!77758 0))(
  ( (array!77759 (arr!37520 (Array (_ BitVec 32) (_ BitVec 64))) (size!38057 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77758)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45795 0))(
  ( (V!45796 (val!15307 Int)) )
))
(declare-datatypes ((ValueCell!14541 0))(
  ( (ValueCellFull!14541 (v!17946 V!45795)) (EmptyCell!14541) )
))
(declare-datatypes ((array!77760 0))(
  ( (array!77761 (arr!37521 (Array (_ BitVec 32) ValueCell!14541)) (size!38058 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77760)

(assert (=> b!1199872 (= res!798783 (and (= (size!38058 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38057 _keys!1208) (size!38058 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1199873 () Bool)

(declare-fun res!798781 () Bool)

(declare-fun e!681489 () Bool)

(assert (=> b!1199873 (=> (not res!798781) (not e!681489))))

(declare-fun lt!543852 () array!77758)

(declare-datatypes ((List!26567 0))(
  ( (Nil!26564) (Cons!26563 (h!27772 (_ BitVec 64)) (t!39351 List!26567)) )
))
(declare-fun arrayNoDuplicates!0 (array!77758 (_ BitVec 32) List!26567) Bool)

(assert (=> b!1199873 (= res!798781 (arrayNoDuplicates!0 lt!543852 #b00000000000000000000000000000000 Nil!26564))))

(declare-fun res!798774 () Bool)

(assert (=> start!100510 (=> (not res!798774) (not e!681487))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100510 (= res!798774 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38057 _keys!1208))))))

(assert (=> start!100510 e!681487))

(declare-fun tp_is_empty!30501 () Bool)

(assert (=> start!100510 tp_is_empty!30501))

(declare-fun array_inv!28496 (array!77758) Bool)

(assert (=> start!100510 (array_inv!28496 _keys!1208)))

(assert (=> start!100510 true))

(assert (=> start!100510 tp!90381))

(declare-fun e!681488 () Bool)

(declare-fun array_inv!28497 (array!77760) Bool)

(assert (=> start!100510 (and (array_inv!28497 _values!996) e!681488)))

(declare-fun b!1199874 () Bool)

(declare-fun res!798773 () Bool)

(assert (=> b!1199874 (=> (not res!798773) (not e!681487))))

(assert (=> b!1199874 (= res!798773 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26564))))

(declare-fun b!1199875 () Bool)

(declare-fun e!681486 () Bool)

(assert (=> b!1199875 (= e!681486 tp_is_empty!30501)))

(declare-fun b!1199876 () Bool)

(declare-fun res!798782 () Bool)

(assert (=> b!1199876 (=> (not res!798782) (not e!681487))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1199876 (= res!798782 (validMask!0 mask!1564))))

(declare-fun b!1199877 () Bool)

(declare-fun e!681484 () Bool)

(assert (=> b!1199877 (= e!681484 tp_is_empty!30501)))

(declare-fun b!1199878 () Bool)

(declare-fun e!681485 () Bool)

(assert (=> b!1199878 (= e!681485 true)))

(declare-fun zeroValue!944 () V!45795)

(declare-datatypes ((tuple2!19734 0))(
  ( (tuple2!19735 (_1!9877 (_ BitVec 64)) (_2!9877 V!45795)) )
))
(declare-datatypes ((List!26568 0))(
  ( (Nil!26565) (Cons!26564 (h!27773 tuple2!19734) (t!39352 List!26568)) )
))
(declare-datatypes ((ListLongMap!17715 0))(
  ( (ListLongMap!17716 (toList!8873 List!26568)) )
))
(declare-fun lt!543853 () ListLongMap!17715)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45795)

(declare-fun getCurrentListMapNoExtraKeys!5286 (array!77758 array!77760 (_ BitVec 32) (_ BitVec 32) V!45795 V!45795 (_ BitVec 32) Int) ListLongMap!17715)

(declare-fun dynLambda!3217 (Int (_ BitVec 64)) V!45795)

(assert (=> b!1199878 (= lt!543853 (getCurrentListMapNoExtraKeys!5286 lt!543852 (array!77761 (store (arr!37521 _values!996) i!673 (ValueCellFull!14541 (dynLambda!3217 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38058 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543850 () ListLongMap!17715)

(assert (=> b!1199878 (= lt!543850 (getCurrentListMapNoExtraKeys!5286 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!47594 () Bool)

(declare-fun mapRes!47594 () Bool)

(assert (=> mapIsEmpty!47594 mapRes!47594))

(declare-fun b!1199879 () Bool)

(assert (=> b!1199879 (= e!681489 (not e!681485))))

(declare-fun res!798775 () Bool)

(assert (=> b!1199879 (=> res!798775 e!681485)))

(assert (=> b!1199879 (= res!798775 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77758 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1199879 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39714 0))(
  ( (Unit!39715) )
))
(declare-fun lt!543851 () Unit!39714)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77758 (_ BitVec 64) (_ BitVec 32)) Unit!39714)

(assert (=> b!1199879 (= lt!543851 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1199880 () Bool)

(declare-fun res!798780 () Bool)

(assert (=> b!1199880 (=> (not res!798780) (not e!681487))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1199880 (= res!798780 (validKeyInArray!0 k0!934))))

(declare-fun b!1199881 () Bool)

(assert (=> b!1199881 (= e!681488 (and e!681486 mapRes!47594))))

(declare-fun condMapEmpty!47594 () Bool)

(declare-fun mapDefault!47594 () ValueCell!14541)

(assert (=> b!1199881 (= condMapEmpty!47594 (= (arr!37521 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14541)) mapDefault!47594)))))

(declare-fun b!1199882 () Bool)

(declare-fun res!798779 () Bool)

(assert (=> b!1199882 (=> (not res!798779) (not e!681487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77758 (_ BitVec 32)) Bool)

(assert (=> b!1199882 (= res!798779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!47594 () Bool)

(declare-fun tp!90382 () Bool)

(assert (=> mapNonEmpty!47594 (= mapRes!47594 (and tp!90382 e!681484))))

(declare-fun mapKey!47594 () (_ BitVec 32))

(declare-fun mapRest!47594 () (Array (_ BitVec 32) ValueCell!14541))

(declare-fun mapValue!47594 () ValueCell!14541)

(assert (=> mapNonEmpty!47594 (= (arr!37521 _values!996) (store mapRest!47594 mapKey!47594 mapValue!47594))))

(declare-fun b!1199883 () Bool)

(declare-fun res!798778 () Bool)

(assert (=> b!1199883 (=> (not res!798778) (not e!681487))))

(assert (=> b!1199883 (= res!798778 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38057 _keys!1208))))))

(declare-fun b!1199884 () Bool)

(declare-fun res!798777 () Bool)

(assert (=> b!1199884 (=> (not res!798777) (not e!681487))))

(assert (=> b!1199884 (= res!798777 (= (select (arr!37520 _keys!1208) i!673) k0!934))))

(declare-fun b!1199885 () Bool)

(assert (=> b!1199885 (= e!681487 e!681489)))

(declare-fun res!798776 () Bool)

(assert (=> b!1199885 (=> (not res!798776) (not e!681489))))

(assert (=> b!1199885 (= res!798776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543852 mask!1564))))

(assert (=> b!1199885 (= lt!543852 (array!77759 (store (arr!37520 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38057 _keys!1208)))))

(assert (= (and start!100510 res!798774) b!1199876))

(assert (= (and b!1199876 res!798782) b!1199872))

(assert (= (and b!1199872 res!798783) b!1199882))

(assert (= (and b!1199882 res!798779) b!1199874))

(assert (= (and b!1199874 res!798773) b!1199883))

(assert (= (and b!1199883 res!798778) b!1199880))

(assert (= (and b!1199880 res!798780) b!1199884))

(assert (= (and b!1199884 res!798777) b!1199885))

(assert (= (and b!1199885 res!798776) b!1199873))

(assert (= (and b!1199873 res!798781) b!1199879))

(assert (= (and b!1199879 (not res!798775)) b!1199878))

(assert (= (and b!1199881 condMapEmpty!47594) mapIsEmpty!47594))

(assert (= (and b!1199881 (not condMapEmpty!47594)) mapNonEmpty!47594))

(get-info :version)

(assert (= (and mapNonEmpty!47594 ((_ is ValueCellFull!14541) mapValue!47594)) b!1199877))

(assert (= (and b!1199881 ((_ is ValueCellFull!14541) mapDefault!47594)) b!1199875))

(assert (= start!100510 b!1199881))

(declare-fun b_lambda!21011 () Bool)

(assert (=> (not b_lambda!21011) (not b!1199878)))

(declare-fun t!39350 () Bool)

(declare-fun tb!10605 () Bool)

(assert (=> (and start!100510 (= defaultEntry!1004 defaultEntry!1004) t!39350) tb!10605))

(declare-fun result!21779 () Bool)

(assert (=> tb!10605 (= result!21779 tp_is_empty!30501)))

(assert (=> b!1199878 t!39350))

(declare-fun b_and!42497 () Bool)

(assert (= b_and!42495 (and (=> t!39350 result!21779) b_and!42497)))

(declare-fun m!1106351 () Bool)

(assert (=> b!1199874 m!1106351))

(declare-fun m!1106353 () Bool)

(assert (=> b!1199878 m!1106353))

(declare-fun m!1106355 () Bool)

(assert (=> b!1199878 m!1106355))

(declare-fun m!1106357 () Bool)

(assert (=> b!1199878 m!1106357))

(declare-fun m!1106359 () Bool)

(assert (=> b!1199878 m!1106359))

(declare-fun m!1106361 () Bool)

(assert (=> b!1199873 m!1106361))

(declare-fun m!1106363 () Bool)

(assert (=> start!100510 m!1106363))

(declare-fun m!1106365 () Bool)

(assert (=> start!100510 m!1106365))

(declare-fun m!1106367 () Bool)

(assert (=> b!1199882 m!1106367))

(declare-fun m!1106369 () Bool)

(assert (=> b!1199876 m!1106369))

(declare-fun m!1106371 () Bool)

(assert (=> mapNonEmpty!47594 m!1106371))

(declare-fun m!1106373 () Bool)

(assert (=> b!1199885 m!1106373))

(declare-fun m!1106375 () Bool)

(assert (=> b!1199885 m!1106375))

(declare-fun m!1106377 () Bool)

(assert (=> b!1199884 m!1106377))

(declare-fun m!1106379 () Bool)

(assert (=> b!1199879 m!1106379))

(declare-fun m!1106381 () Bool)

(assert (=> b!1199879 m!1106381))

(declare-fun m!1106383 () Bool)

(assert (=> b!1199880 m!1106383))

(check-sat b_and!42497 (not b!1199885) (not mapNonEmpty!47594) (not b!1199876) tp_is_empty!30501 (not b!1199873) (not b!1199878) (not b!1199879) (not start!100510) (not b!1199882) (not b!1199874) (not b!1199880) (not b_next!25797) (not b_lambda!21011))
(check-sat b_and!42497 (not b_next!25797))
