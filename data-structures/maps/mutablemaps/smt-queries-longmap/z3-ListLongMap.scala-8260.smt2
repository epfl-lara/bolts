; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100546 () Bool)

(assert start!100546)

(declare-fun b_free!25833 () Bool)

(declare-fun b_next!25833 () Bool)

(assert (=> start!100546 (= b_free!25833 (not b_next!25833))))

(declare-fun tp!90489 () Bool)

(declare-fun b_and!42567 () Bool)

(assert (=> start!100546 (= tp!90489 b_and!42567)))

(declare-fun b!1200757 () Bool)

(declare-fun res!799424 () Bool)

(declare-fun e!681936 () Bool)

(assert (=> b!1200757 (=> (not res!799424) (not e!681936))))

(declare-datatypes ((array!77828 0))(
  ( (array!77829 (arr!37555 (Array (_ BitVec 32) (_ BitVec 64))) (size!38092 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77828)

(declare-datatypes ((List!26595 0))(
  ( (Nil!26592) (Cons!26591 (h!27800 (_ BitVec 64)) (t!39415 List!26595)) )
))
(declare-fun arrayNoDuplicates!0 (array!77828 (_ BitVec 32) List!26595) Bool)

(assert (=> b!1200757 (= res!799424 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26592))))

(declare-fun b!1200758 () Bool)

(declare-fun e!681929 () Bool)

(declare-fun tp_is_empty!30537 () Bool)

(assert (=> b!1200758 (= e!681929 tp_is_empty!30537)))

(declare-fun b!1200759 () Bool)

(declare-fun res!799422 () Bool)

(assert (=> b!1200759 (=> (not res!799422) (not e!681936))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1200759 (= res!799422 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38092 _keys!1208))))))

(declare-fun b!1200761 () Bool)

(declare-fun e!681933 () Bool)

(declare-fun e!681934 () Bool)

(declare-fun mapRes!47648 () Bool)

(assert (=> b!1200761 (= e!681933 (and e!681934 mapRes!47648))))

(declare-fun condMapEmpty!47648 () Bool)

(declare-datatypes ((V!45843 0))(
  ( (V!45844 (val!15325 Int)) )
))
(declare-datatypes ((ValueCell!14559 0))(
  ( (ValueCellFull!14559 (v!17964 V!45843)) (EmptyCell!14559) )
))
(declare-datatypes ((array!77830 0))(
  ( (array!77831 (arr!37556 (Array (_ BitVec 32) ValueCell!14559)) (size!38093 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77830)

(declare-fun mapDefault!47648 () ValueCell!14559)

(assert (=> b!1200761 (= condMapEmpty!47648 (= (arr!37556 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14559)) mapDefault!47648)))))

(declare-fun mapIsEmpty!47648 () Bool)

(assert (=> mapIsEmpty!47648 mapRes!47648))

(declare-fun b!1200762 () Bool)

(declare-fun e!681932 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((tuple2!19762 0))(
  ( (tuple2!19763 (_1!9891 (_ BitVec 64)) (_2!9891 V!45843)) )
))
(declare-datatypes ((List!26596 0))(
  ( (Nil!26593) (Cons!26592 (h!27801 tuple2!19762) (t!39416 List!26596)) )
))
(declare-datatypes ((ListLongMap!17743 0))(
  ( (ListLongMap!17744 (toList!8887 List!26596)) )
))
(declare-fun call!57328 () ListLongMap!17743)

(declare-fun call!57327 () ListLongMap!17743)

(declare-fun -!1813 (ListLongMap!17743 (_ BitVec 64)) ListLongMap!17743)

(assert (=> b!1200762 (= e!681932 (= call!57328 (-!1813 call!57327 k0!934)))))

(declare-fun b!1200763 () Bool)

(declare-fun e!681935 () Bool)

(assert (=> b!1200763 (= e!681935 true)))

(declare-fun lt!544133 () ListLongMap!17743)

(declare-fun zeroValue!944 () V!45843)

(declare-fun contains!6890 (ListLongMap!17743 (_ BitVec 64)) Bool)

(declare-fun +!3935 (ListLongMap!17743 tuple2!19762) ListLongMap!17743)

(assert (=> b!1200763 (contains!6890 (+!3935 lt!544133 (tuple2!19763 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k0!934)))

(declare-datatypes ((Unit!39738 0))(
  ( (Unit!39739) )
))
(declare-fun lt!544138 () Unit!39738)

(declare-fun addStillContains!995 (ListLongMap!17743 (_ BitVec 64) V!45843 (_ BitVec 64)) Unit!39738)

(assert (=> b!1200763 (= lt!544138 (addStillContains!995 lt!544133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun b!1200764 () Bool)

(declare-fun res!799421 () Bool)

(assert (=> b!1200764 (=> res!799421 e!681935)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1200764 (= res!799421 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1200765 () Bool)

(assert (=> b!1200765 (= e!681934 tp_is_empty!30537)))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!45843)

(declare-fun bm!57324 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5300 (array!77828 array!77830 (_ BitVec 32) (_ BitVec 32) V!45843 V!45843 (_ BitVec 32) Int) ListLongMap!17743)

(assert (=> bm!57324 (= call!57327 (getCurrentListMapNoExtraKeys!5300 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200766 () Bool)

(declare-fun res!799427 () Bool)

(assert (=> b!1200766 (=> (not res!799427) (not e!681936))))

(assert (=> b!1200766 (= res!799427 (and (= (size!38093 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38092 _keys!1208) (size!38093 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun lt!544136 () array!77830)

(declare-fun lt!544135 () array!77828)

(declare-fun bm!57325 () Bool)

(assert (=> bm!57325 (= call!57328 (getCurrentListMapNoExtraKeys!5300 lt!544135 lt!544136 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200767 () Bool)

(declare-fun res!799425 () Bool)

(assert (=> b!1200767 (=> (not res!799425) (not e!681936))))

(assert (=> b!1200767 (= res!799425 (= (select (arr!37555 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!47648 () Bool)

(declare-fun tp!90490 () Bool)

(assert (=> mapNonEmpty!47648 (= mapRes!47648 (and tp!90490 e!681929))))

(declare-fun mapRest!47648 () (Array (_ BitVec 32) ValueCell!14559))

(declare-fun mapValue!47648 () ValueCell!14559)

(declare-fun mapKey!47648 () (_ BitVec 32))

(assert (=> mapNonEmpty!47648 (= (arr!37556 _values!996) (store mapRest!47648 mapKey!47648 mapValue!47648))))

(declare-fun b!1200768 () Bool)

(declare-fun res!799415 () Bool)

(assert (=> b!1200768 (=> (not res!799415) (not e!681936))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1200768 (= res!799415 (validKeyInArray!0 k0!934))))

(declare-fun b!1200769 () Bool)

(declare-fun e!681937 () Bool)

(declare-fun e!681928 () Bool)

(assert (=> b!1200769 (= e!681937 e!681928)))

(declare-fun res!799417 () Bool)

(assert (=> b!1200769 (=> res!799417 e!681928)))

(assert (=> b!1200769 (= res!799417 (not (= from!1455 i!673)))))

(declare-fun lt!544137 () ListLongMap!17743)

(assert (=> b!1200769 (= lt!544137 (getCurrentListMapNoExtraKeys!5300 lt!544135 lt!544136 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3230 (Int (_ BitVec 64)) V!45843)

(assert (=> b!1200769 (= lt!544136 (array!77831 (store (arr!37556 _values!996) i!673 (ValueCellFull!14559 (dynLambda!3230 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38093 _values!996)))))

(declare-fun lt!544134 () ListLongMap!17743)

(assert (=> b!1200769 (= lt!544134 (getCurrentListMapNoExtraKeys!5300 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1200770 () Bool)

(declare-fun e!681927 () Bool)

(assert (=> b!1200770 (= e!681928 e!681927)))

(declare-fun res!799418 () Bool)

(assert (=> b!1200770 (=> res!799418 e!681927)))

(assert (=> b!1200770 (= res!799418 (not (= (select (arr!37555 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1200770 e!681932))

(declare-fun c!117409 () Bool)

(assert (=> b!1200770 (= c!117409 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!544131 () Unit!39738)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1016 (array!77828 array!77830 (_ BitVec 32) (_ BitVec 32) V!45843 V!45843 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39738)

(assert (=> b!1200770 (= lt!544131 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1016 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200771 () Bool)

(declare-fun res!799414 () Bool)

(assert (=> b!1200771 (=> (not res!799414) (not e!681936))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1200771 (= res!799414 (validMask!0 mask!1564))))

(declare-fun res!799423 () Bool)

(assert (=> start!100546 (=> (not res!799423) (not e!681936))))

(assert (=> start!100546 (= res!799423 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38092 _keys!1208))))))

(assert (=> start!100546 e!681936))

(assert (=> start!100546 tp_is_empty!30537))

(declare-fun array_inv!28514 (array!77828) Bool)

(assert (=> start!100546 (array_inv!28514 _keys!1208)))

(assert (=> start!100546 true))

(assert (=> start!100546 tp!90489))

(declare-fun array_inv!28515 (array!77830) Bool)

(assert (=> start!100546 (and (array_inv!28515 _values!996) e!681933)))

(declare-fun b!1200760 () Bool)

(assert (=> b!1200760 (= e!681927 e!681935)))

(declare-fun res!799419 () Bool)

(assert (=> b!1200760 (=> res!799419 e!681935)))

(assert (=> b!1200760 (= res!799419 (not (contains!6890 lt!544133 k0!934)))))

(assert (=> b!1200760 (= lt!544133 (getCurrentListMapNoExtraKeys!5300 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200772 () Bool)

(declare-fun res!799428 () Bool)

(assert (=> b!1200772 (=> (not res!799428) (not e!681936))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77828 (_ BitVec 32)) Bool)

(assert (=> b!1200772 (= res!799428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1200773 () Bool)

(declare-fun e!681930 () Bool)

(assert (=> b!1200773 (= e!681936 e!681930)))

(declare-fun res!799426 () Bool)

(assert (=> b!1200773 (=> (not res!799426) (not e!681930))))

(assert (=> b!1200773 (= res!799426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!544135 mask!1564))))

(assert (=> b!1200773 (= lt!544135 (array!77829 (store (arr!37555 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38092 _keys!1208)))))

(declare-fun b!1200774 () Bool)

(assert (=> b!1200774 (= e!681930 (not e!681937))))

(declare-fun res!799420 () Bool)

(assert (=> b!1200774 (=> res!799420 e!681937)))

(assert (=> b!1200774 (= res!799420 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77828 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1200774 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!544132 () Unit!39738)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77828 (_ BitVec 64) (_ BitVec 32)) Unit!39738)

(assert (=> b!1200774 (= lt!544132 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1200775 () Bool)

(declare-fun res!799416 () Bool)

(assert (=> b!1200775 (=> (not res!799416) (not e!681930))))

(assert (=> b!1200775 (= res!799416 (arrayNoDuplicates!0 lt!544135 #b00000000000000000000000000000000 Nil!26592))))

(declare-fun b!1200776 () Bool)

(assert (=> b!1200776 (= e!681932 (= call!57328 call!57327))))

(assert (= (and start!100546 res!799423) b!1200771))

(assert (= (and b!1200771 res!799414) b!1200766))

(assert (= (and b!1200766 res!799427) b!1200772))

(assert (= (and b!1200772 res!799428) b!1200757))

(assert (= (and b!1200757 res!799424) b!1200759))

(assert (= (and b!1200759 res!799422) b!1200768))

(assert (= (and b!1200768 res!799415) b!1200767))

(assert (= (and b!1200767 res!799425) b!1200773))

(assert (= (and b!1200773 res!799426) b!1200775))

(assert (= (and b!1200775 res!799416) b!1200774))

(assert (= (and b!1200774 (not res!799420)) b!1200769))

(assert (= (and b!1200769 (not res!799417)) b!1200770))

(assert (= (and b!1200770 c!117409) b!1200762))

(assert (= (and b!1200770 (not c!117409)) b!1200776))

(assert (= (or b!1200762 b!1200776) bm!57325))

(assert (= (or b!1200762 b!1200776) bm!57324))

(assert (= (and b!1200770 (not res!799418)) b!1200760))

(assert (= (and b!1200760 (not res!799419)) b!1200764))

(assert (= (and b!1200764 (not res!799421)) b!1200763))

(assert (= (and b!1200761 condMapEmpty!47648) mapIsEmpty!47648))

(assert (= (and b!1200761 (not condMapEmpty!47648)) mapNonEmpty!47648))

(get-info :version)

(assert (= (and mapNonEmpty!47648 ((_ is ValueCellFull!14559) mapValue!47648)) b!1200758))

(assert (= (and b!1200761 ((_ is ValueCellFull!14559) mapDefault!47648)) b!1200765))

(assert (= start!100546 b!1200761))

(declare-fun b_lambda!21047 () Bool)

(assert (=> (not b_lambda!21047) (not b!1200769)))

(declare-fun t!39414 () Bool)

(declare-fun tb!10641 () Bool)

(assert (=> (and start!100546 (= defaultEntry!1004 defaultEntry!1004) t!39414) tb!10641))

(declare-fun result!21851 () Bool)

(assert (=> tb!10641 (= result!21851 tp_is_empty!30537)))

(assert (=> b!1200769 t!39414))

(declare-fun b_and!42569 () Bool)

(assert (= b_and!42567 (and (=> t!39414 result!21851) b_and!42569)))

(declare-fun m!1107041 () Bool)

(assert (=> b!1200775 m!1107041))

(declare-fun m!1107043 () Bool)

(assert (=> b!1200769 m!1107043))

(declare-fun m!1107045 () Bool)

(assert (=> b!1200769 m!1107045))

(declare-fun m!1107047 () Bool)

(assert (=> b!1200769 m!1107047))

(declare-fun m!1107049 () Bool)

(assert (=> b!1200769 m!1107049))

(declare-fun m!1107051 () Bool)

(assert (=> b!1200763 m!1107051))

(assert (=> b!1200763 m!1107051))

(declare-fun m!1107053 () Bool)

(assert (=> b!1200763 m!1107053))

(declare-fun m!1107055 () Bool)

(assert (=> b!1200763 m!1107055))

(declare-fun m!1107057 () Bool)

(assert (=> b!1200773 m!1107057))

(declare-fun m!1107059 () Bool)

(assert (=> b!1200773 m!1107059))

(declare-fun m!1107061 () Bool)

(assert (=> b!1200772 m!1107061))

(declare-fun m!1107063 () Bool)

(assert (=> b!1200771 m!1107063))

(declare-fun m!1107065 () Bool)

(assert (=> b!1200760 m!1107065))

(declare-fun m!1107067 () Bool)

(assert (=> b!1200760 m!1107067))

(declare-fun m!1107069 () Bool)

(assert (=> b!1200770 m!1107069))

(declare-fun m!1107071 () Bool)

(assert (=> b!1200770 m!1107071))

(declare-fun m!1107073 () Bool)

(assert (=> start!100546 m!1107073))

(declare-fun m!1107075 () Bool)

(assert (=> start!100546 m!1107075))

(declare-fun m!1107077 () Bool)

(assert (=> mapNonEmpty!47648 m!1107077))

(declare-fun m!1107079 () Bool)

(assert (=> b!1200768 m!1107079))

(declare-fun m!1107081 () Bool)

(assert (=> b!1200762 m!1107081))

(declare-fun m!1107083 () Bool)

(assert (=> b!1200757 m!1107083))

(assert (=> bm!57324 m!1107067))

(declare-fun m!1107085 () Bool)

(assert (=> b!1200767 m!1107085))

(declare-fun m!1107087 () Bool)

(assert (=> bm!57325 m!1107087))

(declare-fun m!1107089 () Bool)

(assert (=> b!1200774 m!1107089))

(declare-fun m!1107091 () Bool)

(assert (=> b!1200774 m!1107091))

(check-sat (not b!1200768) (not b!1200762) (not b!1200772) (not b!1200773) (not b!1200775) (not b!1200769) (not b!1200770) (not b!1200771) b_and!42569 tp_is_empty!30537 (not start!100546) (not b!1200774) (not b!1200760) (not b_next!25833) (not b!1200763) (not bm!57325) (not b!1200757) (not mapNonEmpty!47648) (not bm!57324) (not b_lambda!21047))
(check-sat b_and!42569 (not b_next!25833))
