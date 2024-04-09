; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100050 () Bool)

(assert start!100050)

(declare-fun b_free!25593 () Bool)

(declare-fun b_next!25593 () Bool)

(assert (=> start!100050 (= b_free!25593 (not b_next!25593))))

(declare-fun tp!89494 () Bool)

(declare-fun b_and!42067 () Bool)

(assert (=> start!100050 (= tp!89494 b_and!42067)))

(declare-fun b!1191545 () Bool)

(declare-fun e!677360 () Bool)

(declare-fun tp_is_empty!30123 () Bool)

(assert (=> b!1191545 (= e!677360 tp_is_empty!30123)))

(declare-fun mapNonEmpty!47012 () Bool)

(declare-fun mapRes!47012 () Bool)

(declare-fun tp!89493 () Bool)

(assert (=> mapNonEmpty!47012 (= mapRes!47012 (and tp!89493 e!677360))))

(declare-fun mapKey!47012 () (_ BitVec 32))

(declare-datatypes ((V!45291 0))(
  ( (V!45292 (val!15118 Int)) )
))
(declare-datatypes ((ValueCell!14352 0))(
  ( (ValueCellFull!14352 (v!17757 V!45291)) (EmptyCell!14352) )
))
(declare-datatypes ((array!77010 0))(
  ( (array!77011 (arr!37151 (Array (_ BitVec 32) ValueCell!14352)) (size!37688 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77010)

(declare-fun mapValue!47012 () ValueCell!14352)

(declare-fun mapRest!47012 () (Array (_ BitVec 32) ValueCell!14352))

(assert (=> mapNonEmpty!47012 (= (arr!37151 _values!996) (store mapRest!47012 mapKey!47012 mapValue!47012))))

(declare-fun b!1191546 () Bool)

(declare-fun e!677365 () Bool)

(declare-fun e!677363 () Bool)

(assert (=> b!1191546 (= e!677365 e!677363)))

(declare-fun res!792655 () Bool)

(assert (=> b!1191546 (=> res!792655 e!677363)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1191546 (= res!792655 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45291)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45291)

(declare-datatypes ((tuple2!19568 0))(
  ( (tuple2!19569 (_1!9794 (_ BitVec 64)) (_2!9794 V!45291)) )
))
(declare-datatypes ((List!26329 0))(
  ( (Nil!26326) (Cons!26325 (h!27534 tuple2!19568) (t!38921 List!26329)) )
))
(declare-datatypes ((ListLongMap!17549 0))(
  ( (ListLongMap!17550 (toList!8790 List!26329)) )
))
(declare-fun lt!541848 () ListLongMap!17549)

(declare-datatypes ((array!77012 0))(
  ( (array!77013 (arr!37152 (Array (_ BitVec 32) (_ BitVec 64))) (size!37689 (_ BitVec 32))) )
))
(declare-fun lt!541847 () array!77012)

(declare-fun lt!541846 () array!77010)

(declare-fun getCurrentListMapNoExtraKeys!5204 (array!77012 array!77010 (_ BitVec 32) (_ BitVec 32) V!45291 V!45291 (_ BitVec 32) Int) ListLongMap!17549)

(assert (=> b!1191546 (= lt!541848 (getCurrentListMapNoExtraKeys!5204 lt!541847 lt!541846 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3149 (Int (_ BitVec 64)) V!45291)

(assert (=> b!1191546 (= lt!541846 (array!77011 (store (arr!37151 _values!996) i!673 (ValueCellFull!14352 (dynLambda!3149 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37688 _values!996)))))

(declare-fun _keys!1208 () array!77012)

(declare-fun lt!541844 () ListLongMap!17549)

(assert (=> b!1191546 (= lt!541844 (getCurrentListMapNoExtraKeys!5204 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1191548 () Bool)

(declare-fun res!792664 () Bool)

(declare-fun e!677364 () Bool)

(assert (=> b!1191548 (=> (not res!792664) (not e!677364))))

(assert (=> b!1191548 (= res!792664 (and (= (size!37688 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37689 _keys!1208) (size!37688 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1191549 () Bool)

(declare-fun res!792663 () Bool)

(assert (=> b!1191549 (=> (not res!792663) (not e!677364))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77012 (_ BitVec 32)) Bool)

(assert (=> b!1191549 (= res!792663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1191550 () Bool)

(declare-fun res!792661 () Bool)

(declare-fun e!677359 () Bool)

(assert (=> b!1191550 (=> (not res!792661) (not e!677359))))

(declare-datatypes ((List!26330 0))(
  ( (Nil!26327) (Cons!26326 (h!27535 (_ BitVec 64)) (t!38922 List!26330)) )
))
(declare-fun arrayNoDuplicates!0 (array!77012 (_ BitVec 32) List!26330) Bool)

(assert (=> b!1191550 (= res!792661 (arrayNoDuplicates!0 lt!541847 #b00000000000000000000000000000000 Nil!26327))))

(declare-fun b!1191551 () Bool)

(declare-fun res!792657 () Bool)

(assert (=> b!1191551 (=> (not res!792657) (not e!677364))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1191551 (= res!792657 (validMask!0 mask!1564))))

(declare-fun b!1191552 () Bool)

(assert (=> b!1191552 (= e!677364 e!677359)))

(declare-fun res!792662 () Bool)

(assert (=> b!1191552 (=> (not res!792662) (not e!677359))))

(assert (=> b!1191552 (= res!792662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541847 mask!1564))))

(assert (=> b!1191552 (= lt!541847 (array!77013 (store (arr!37152 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37689 _keys!1208)))))

(declare-fun mapIsEmpty!47012 () Bool)

(assert (=> mapIsEmpty!47012 mapRes!47012))

(declare-fun b!1191553 () Bool)

(assert (=> b!1191553 (= e!677359 (not e!677365))))

(declare-fun res!792658 () Bool)

(assert (=> b!1191553 (=> res!792658 e!677365)))

(assert (=> b!1191553 (= res!792658 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77012 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1191553 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39472 0))(
  ( (Unit!39473) )
))
(declare-fun lt!541843 () Unit!39472)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77012 (_ BitVec 64) (_ BitVec 32)) Unit!39472)

(assert (=> b!1191553 (= lt!541843 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1191554 () Bool)

(assert (=> b!1191554 (= e!677363 true)))

(declare-fun -!1769 (ListLongMap!17549 (_ BitVec 64)) ListLongMap!17549)

(assert (=> b!1191554 (= (getCurrentListMapNoExtraKeys!5204 lt!541847 lt!541846 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1769 (getCurrentListMapNoExtraKeys!5204 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!541845 () Unit!39472)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!975 (array!77012 array!77010 (_ BitVec 32) (_ BitVec 32) V!45291 V!45291 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39472)

(assert (=> b!1191554 (= lt!541845 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!975 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!792660 () Bool)

(assert (=> start!100050 (=> (not res!792660) (not e!677364))))

(assert (=> start!100050 (= res!792660 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37689 _keys!1208))))))

(assert (=> start!100050 e!677364))

(assert (=> start!100050 tp_is_empty!30123))

(declare-fun array_inv!28232 (array!77012) Bool)

(assert (=> start!100050 (array_inv!28232 _keys!1208)))

(assert (=> start!100050 true))

(assert (=> start!100050 tp!89494))

(declare-fun e!677358 () Bool)

(declare-fun array_inv!28233 (array!77010) Bool)

(assert (=> start!100050 (and (array_inv!28233 _values!996) e!677358)))

(declare-fun b!1191547 () Bool)

(declare-fun res!792659 () Bool)

(assert (=> b!1191547 (=> (not res!792659) (not e!677364))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1191547 (= res!792659 (validKeyInArray!0 k0!934))))

(declare-fun b!1191555 () Bool)

(declare-fun res!792654 () Bool)

(assert (=> b!1191555 (=> (not res!792654) (not e!677364))))

(assert (=> b!1191555 (= res!792654 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26327))))

(declare-fun b!1191556 () Bool)

(declare-fun res!792653 () Bool)

(assert (=> b!1191556 (=> (not res!792653) (not e!677364))))

(assert (=> b!1191556 (= res!792653 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37689 _keys!1208))))))

(declare-fun b!1191557 () Bool)

(declare-fun e!677362 () Bool)

(assert (=> b!1191557 (= e!677358 (and e!677362 mapRes!47012))))

(declare-fun condMapEmpty!47012 () Bool)

(declare-fun mapDefault!47012 () ValueCell!14352)

(assert (=> b!1191557 (= condMapEmpty!47012 (= (arr!37151 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14352)) mapDefault!47012)))))

(declare-fun b!1191558 () Bool)

(declare-fun res!792656 () Bool)

(assert (=> b!1191558 (=> (not res!792656) (not e!677364))))

(assert (=> b!1191558 (= res!792656 (= (select (arr!37152 _keys!1208) i!673) k0!934))))

(declare-fun b!1191559 () Bool)

(assert (=> b!1191559 (= e!677362 tp_is_empty!30123)))

(assert (= (and start!100050 res!792660) b!1191551))

(assert (= (and b!1191551 res!792657) b!1191548))

(assert (= (and b!1191548 res!792664) b!1191549))

(assert (= (and b!1191549 res!792663) b!1191555))

(assert (= (and b!1191555 res!792654) b!1191556))

(assert (= (and b!1191556 res!792653) b!1191547))

(assert (= (and b!1191547 res!792659) b!1191558))

(assert (= (and b!1191558 res!792656) b!1191552))

(assert (= (and b!1191552 res!792662) b!1191550))

(assert (= (and b!1191550 res!792661) b!1191553))

(assert (= (and b!1191553 (not res!792658)) b!1191546))

(assert (= (and b!1191546 (not res!792655)) b!1191554))

(assert (= (and b!1191557 condMapEmpty!47012) mapIsEmpty!47012))

(assert (= (and b!1191557 (not condMapEmpty!47012)) mapNonEmpty!47012))

(get-info :version)

(assert (= (and mapNonEmpty!47012 ((_ is ValueCellFull!14352) mapValue!47012)) b!1191545))

(assert (= (and b!1191557 ((_ is ValueCellFull!14352) mapDefault!47012)) b!1191559))

(assert (= start!100050 b!1191557))

(declare-fun b_lambda!20755 () Bool)

(assert (=> (not b_lambda!20755) (not b!1191546)))

(declare-fun t!38920 () Bool)

(declare-fun tb!10413 () Bool)

(assert (=> (and start!100050 (= defaultEntry!1004 defaultEntry!1004) t!38920) tb!10413))

(declare-fun result!21385 () Bool)

(assert (=> tb!10413 (= result!21385 tp_is_empty!30123)))

(assert (=> b!1191546 t!38920))

(declare-fun b_and!42069 () Bool)

(assert (= b_and!42067 (and (=> t!38920 result!21385) b_and!42069)))

(declare-fun m!1100045 () Bool)

(assert (=> b!1191558 m!1100045))

(declare-fun m!1100047 () Bool)

(assert (=> b!1191547 m!1100047))

(declare-fun m!1100049 () Bool)

(assert (=> b!1191554 m!1100049))

(declare-fun m!1100051 () Bool)

(assert (=> b!1191554 m!1100051))

(assert (=> b!1191554 m!1100051))

(declare-fun m!1100053 () Bool)

(assert (=> b!1191554 m!1100053))

(declare-fun m!1100055 () Bool)

(assert (=> b!1191554 m!1100055))

(declare-fun m!1100057 () Bool)

(assert (=> b!1191555 m!1100057))

(declare-fun m!1100059 () Bool)

(assert (=> b!1191549 m!1100059))

(declare-fun m!1100061 () Bool)

(assert (=> b!1191552 m!1100061))

(declare-fun m!1100063 () Bool)

(assert (=> b!1191552 m!1100063))

(declare-fun m!1100065 () Bool)

(assert (=> start!100050 m!1100065))

(declare-fun m!1100067 () Bool)

(assert (=> start!100050 m!1100067))

(declare-fun m!1100069 () Bool)

(assert (=> b!1191551 m!1100069))

(declare-fun m!1100071 () Bool)

(assert (=> b!1191546 m!1100071))

(declare-fun m!1100073 () Bool)

(assert (=> b!1191546 m!1100073))

(declare-fun m!1100075 () Bool)

(assert (=> b!1191546 m!1100075))

(declare-fun m!1100077 () Bool)

(assert (=> b!1191546 m!1100077))

(declare-fun m!1100079 () Bool)

(assert (=> b!1191550 m!1100079))

(declare-fun m!1100081 () Bool)

(assert (=> b!1191553 m!1100081))

(declare-fun m!1100083 () Bool)

(assert (=> b!1191553 m!1100083))

(declare-fun m!1100085 () Bool)

(assert (=> mapNonEmpty!47012 m!1100085))

(check-sat tp_is_empty!30123 (not mapNonEmpty!47012) (not b!1191552) (not b!1191554) (not start!100050) (not b!1191553) (not b!1191550) (not b_next!25593) (not b!1191547) (not b!1191555) (not b_lambda!20755) (not b!1191551) (not b!1191549) b_and!42069 (not b!1191546))
(check-sat b_and!42069 (not b_next!25593))
