; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113416 () Bool)

(assert start!113416)

(declare-fun b_free!31431 () Bool)

(declare-fun b_next!31431 () Bool)

(assert (=> start!113416 (= b_free!31431 (not b_next!31431))))

(declare-fun tp!110099 () Bool)

(declare-fun b_and!50725 () Bool)

(assert (=> start!113416 (= tp!110099 b_and!50725)))

(declare-fun mapIsEmpty!57853 () Bool)

(declare-fun mapRes!57853 () Bool)

(assert (=> mapIsEmpty!57853 mapRes!57853))

(declare-fun b!1345785 () Bool)

(declare-fun e!765760 () Bool)

(declare-fun tp_is_empty!37431 () Bool)

(assert (=> b!1345785 (= e!765760 tp_is_empty!37431)))

(declare-fun b!1345786 () Bool)

(declare-fun e!765764 () Bool)

(assert (=> b!1345786 (= e!765764 (and e!765760 mapRes!57853))))

(declare-fun condMapEmpty!57853 () Bool)

(declare-datatypes ((V!55011 0))(
  ( (V!55012 (val!18790 Int)) )
))
(declare-datatypes ((ValueCell!17817 0))(
  ( (ValueCellFull!17817 (v!21436 V!55011)) (EmptyCell!17817) )
))
(declare-datatypes ((array!91659 0))(
  ( (array!91660 (arr!44281 (Array (_ BitVec 32) ValueCell!17817)) (size!44832 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91659)

(declare-fun mapDefault!57853 () ValueCell!17817)

(assert (=> b!1345786 (= condMapEmpty!57853 (= (arr!44281 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17817)) mapDefault!57853)))))

(declare-fun b!1345787 () Bool)

(declare-fun res!893093 () Bool)

(declare-fun e!765759 () Bool)

(assert (=> b!1345787 (=> (not res!893093) (not e!765759))))

(declare-datatypes ((array!91661 0))(
  ( (array!91662 (arr!44282 (Array (_ BitVec 32) (_ BitVec 64))) (size!44833 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91661)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1345787 (= res!893093 (validKeyInArray!0 (select (arr!44282 _keys!1571) from!1960)))))

(declare-fun b!1345788 () Bool)

(declare-fun res!893102 () Bool)

(assert (=> b!1345788 (=> (not res!893102) (not e!765759))))

(declare-datatypes ((List!31534 0))(
  ( (Nil!31531) (Cons!31530 (h!32739 (_ BitVec 64)) (t!46129 List!31534)) )
))
(declare-fun arrayNoDuplicates!0 (array!91661 (_ BitVec 32) List!31534) Bool)

(assert (=> b!1345788 (= res!893102 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31531))))

(declare-fun b!1345789 () Bool)

(declare-fun res!893100 () Bool)

(assert (=> b!1345789 (=> (not res!893100) (not e!765759))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1345789 (= res!893100 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44833 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!57853 () Bool)

(declare-fun tp!110098 () Bool)

(declare-fun e!765763 () Bool)

(assert (=> mapNonEmpty!57853 (= mapRes!57853 (and tp!110098 e!765763))))

(declare-fun mapRest!57853 () (Array (_ BitVec 32) ValueCell!17817))

(declare-fun mapValue!57853 () ValueCell!17817)

(declare-fun mapKey!57853 () (_ BitVec 32))

(assert (=> mapNonEmpty!57853 (= (arr!44281 _values!1303) (store mapRest!57853 mapKey!57853 mapValue!57853))))

(declare-fun res!893098 () Bool)

(assert (=> start!113416 (=> (not res!893098) (not e!765759))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113416 (= res!893098 (validMask!0 mask!1977))))

(assert (=> start!113416 e!765759))

(assert (=> start!113416 tp_is_empty!37431))

(assert (=> start!113416 true))

(declare-fun array_inv!33283 (array!91661) Bool)

(assert (=> start!113416 (array_inv!33283 _keys!1571)))

(declare-fun array_inv!33284 (array!91659) Bool)

(assert (=> start!113416 (and (array_inv!33284 _values!1303) e!765764)))

(assert (=> start!113416 tp!110099))

(declare-fun b!1345790 () Bool)

(declare-fun res!893099 () Bool)

(declare-fun e!765762 () Bool)

(assert (=> b!1345790 (=> (not res!893099) (not e!765762))))

(assert (=> b!1345790 (= res!893099 (not (= k0!1142 (select (arr!44282 _keys!1571) from!1960))))))

(declare-fun b!1345791 () Bool)

(declare-fun res!893096 () Bool)

(assert (=> b!1345791 (=> (not res!893096) (not e!765759))))

(declare-fun minValue!1245 () V!55011)

(declare-fun zeroValue!1245 () V!55011)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24364 0))(
  ( (tuple2!24365 (_1!12192 (_ BitVec 64)) (_2!12192 V!55011)) )
))
(declare-datatypes ((List!31535 0))(
  ( (Nil!31532) (Cons!31531 (h!32740 tuple2!24364) (t!46130 List!31535)) )
))
(declare-datatypes ((ListLongMap!22033 0))(
  ( (ListLongMap!22034 (toList!11032 List!31535)) )
))
(declare-fun contains!9144 (ListLongMap!22033 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5923 (array!91661 array!91659 (_ BitVec 32) (_ BitVec 32) V!55011 V!55011 (_ BitVec 32) Int) ListLongMap!22033)

(assert (=> b!1345791 (= res!893096 (contains!9144 (getCurrentListMap!5923 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1345792 () Bool)

(declare-fun res!893095 () Bool)

(assert (=> b!1345792 (=> (not res!893095) (not e!765759))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91661 (_ BitVec 32)) Bool)

(assert (=> b!1345792 (= res!893095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1345793 () Bool)

(declare-fun res!893094 () Bool)

(assert (=> b!1345793 (=> (not res!893094) (not e!765759))))

(assert (=> b!1345793 (= res!893094 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1345794 () Bool)

(declare-fun res!893101 () Bool)

(assert (=> b!1345794 (=> (not res!893101) (not e!765759))))

(assert (=> b!1345794 (= res!893101 (not (= (select (arr!44282 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1345795 () Bool)

(assert (=> b!1345795 (= e!765762 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000)))))

(declare-fun lt!595374 () ListLongMap!22033)

(assert (=> b!1345795 (contains!9144 lt!595374 k0!1142)))

(declare-fun lt!595375 () V!55011)

(declare-datatypes ((Unit!44079 0))(
  ( (Unit!44080) )
))
(declare-fun lt!595373 () Unit!44079)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!399 ((_ BitVec 64) (_ BitVec 64) V!55011 ListLongMap!22033) Unit!44079)

(assert (=> b!1345795 (= lt!595373 (lemmaInListMapAfterAddingDiffThenInBefore!399 k0!1142 (select (arr!44282 _keys!1571) from!1960) lt!595375 lt!595374))))

(declare-fun b!1345796 () Bool)

(declare-fun res!893097 () Bool)

(assert (=> b!1345796 (=> (not res!893097) (not e!765759))))

(assert (=> b!1345796 (= res!893097 (and (= (size!44832 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44833 _keys!1571) (size!44832 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1345797 () Bool)

(assert (=> b!1345797 (= e!765763 tp_is_empty!37431)))

(declare-fun b!1345798 () Bool)

(assert (=> b!1345798 (= e!765759 e!765762)))

(declare-fun res!893092 () Bool)

(assert (=> b!1345798 (=> (not res!893092) (not e!765762))))

(declare-fun +!4810 (ListLongMap!22033 tuple2!24364) ListLongMap!22033)

(assert (=> b!1345798 (= res!893092 (contains!9144 (+!4810 lt!595374 (tuple2!24365 (select (arr!44282 _keys!1571) from!1960) lt!595375)) k0!1142))))

(declare-fun getCurrentListMapNoExtraKeys!6533 (array!91661 array!91659 (_ BitVec 32) (_ BitVec 32) V!55011 V!55011 (_ BitVec 32) Int) ListLongMap!22033)

(assert (=> b!1345798 (= lt!595374 (getCurrentListMapNoExtraKeys!6533 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22415 (ValueCell!17817 V!55011) V!55011)

(declare-fun dynLambda!3847 (Int (_ BitVec 64)) V!55011)

(assert (=> b!1345798 (= lt!595375 (get!22415 (select (arr!44281 _values!1303) from!1960) (dynLambda!3847 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!113416 res!893098) b!1345796))

(assert (= (and b!1345796 res!893097) b!1345792))

(assert (= (and b!1345792 res!893095) b!1345788))

(assert (= (and b!1345788 res!893102) b!1345789))

(assert (= (and b!1345789 res!893100) b!1345791))

(assert (= (and b!1345791 res!893096) b!1345794))

(assert (= (and b!1345794 res!893101) b!1345787))

(assert (= (and b!1345787 res!893093) b!1345793))

(assert (= (and b!1345793 res!893094) b!1345798))

(assert (= (and b!1345798 res!893092) b!1345790))

(assert (= (and b!1345790 res!893099) b!1345795))

(assert (= (and b!1345786 condMapEmpty!57853) mapIsEmpty!57853))

(assert (= (and b!1345786 (not condMapEmpty!57853)) mapNonEmpty!57853))

(get-info :version)

(assert (= (and mapNonEmpty!57853 ((_ is ValueCellFull!17817) mapValue!57853)) b!1345797))

(assert (= (and b!1345786 ((_ is ValueCellFull!17817) mapDefault!57853)) b!1345785))

(assert (= start!113416 b!1345786))

(declare-fun b_lambda!24563 () Bool)

(assert (=> (not b_lambda!24563) (not b!1345798)))

(declare-fun t!46128 () Bool)

(declare-fun tb!12399 () Bool)

(assert (=> (and start!113416 (= defaultEntry!1306 defaultEntry!1306) t!46128) tb!12399))

(declare-fun result!25881 () Bool)

(assert (=> tb!12399 (= result!25881 tp_is_empty!37431)))

(assert (=> b!1345798 t!46128))

(declare-fun b_and!50727 () Bool)

(assert (= b_and!50725 (and (=> t!46128 result!25881) b_and!50727)))

(declare-fun m!1233139 () Bool)

(assert (=> b!1345795 m!1233139))

(declare-fun m!1233141 () Bool)

(assert (=> b!1345795 m!1233141))

(assert (=> b!1345795 m!1233141))

(declare-fun m!1233143 () Bool)

(assert (=> b!1345795 m!1233143))

(assert (=> b!1345790 m!1233141))

(assert (=> b!1345787 m!1233141))

(assert (=> b!1345787 m!1233141))

(declare-fun m!1233145 () Bool)

(assert (=> b!1345787 m!1233145))

(declare-fun m!1233147 () Bool)

(assert (=> b!1345798 m!1233147))

(declare-fun m!1233149 () Bool)

(assert (=> b!1345798 m!1233149))

(declare-fun m!1233151 () Bool)

(assert (=> b!1345798 m!1233151))

(assert (=> b!1345798 m!1233149))

(assert (=> b!1345798 m!1233141))

(declare-fun m!1233153 () Bool)

(assert (=> b!1345798 m!1233153))

(declare-fun m!1233155 () Bool)

(assert (=> b!1345798 m!1233155))

(declare-fun m!1233157 () Bool)

(assert (=> b!1345798 m!1233157))

(assert (=> b!1345798 m!1233147))

(assert (=> b!1345798 m!1233155))

(declare-fun m!1233159 () Bool)

(assert (=> b!1345788 m!1233159))

(assert (=> b!1345794 m!1233141))

(declare-fun m!1233161 () Bool)

(assert (=> mapNonEmpty!57853 m!1233161))

(declare-fun m!1233163 () Bool)

(assert (=> b!1345792 m!1233163))

(declare-fun m!1233165 () Bool)

(assert (=> start!113416 m!1233165))

(declare-fun m!1233167 () Bool)

(assert (=> start!113416 m!1233167))

(declare-fun m!1233169 () Bool)

(assert (=> start!113416 m!1233169))

(declare-fun m!1233171 () Bool)

(assert (=> b!1345791 m!1233171))

(assert (=> b!1345791 m!1233171))

(declare-fun m!1233173 () Bool)

(assert (=> b!1345791 m!1233173))

(check-sat tp_is_empty!37431 (not b!1345798) (not b!1345788) (not b!1345787) (not b!1345795) (not b!1345791) (not mapNonEmpty!57853) b_and!50727 (not start!113416) (not b!1345792) (not b_lambda!24563) (not b_next!31431))
(check-sat b_and!50727 (not b_next!31431))
