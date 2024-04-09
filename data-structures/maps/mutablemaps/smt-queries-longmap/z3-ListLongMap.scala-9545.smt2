; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113170 () Bool)

(assert start!113170)

(declare-fun b_free!31185 () Bool)

(declare-fun b_next!31185 () Bool)

(assert (=> start!113170 (= b_free!31185 (not b_next!31185))))

(declare-fun tp!109360 () Bool)

(declare-fun b_and!50287 () Bool)

(assert (=> start!113170 (= tp!109360 b_and!50287)))

(declare-fun b!1341308 () Bool)

(declare-fun e!763838 () Bool)

(declare-fun e!763839 () Bool)

(declare-fun mapRes!57484 () Bool)

(assert (=> b!1341308 (= e!763838 (and e!763839 mapRes!57484))))

(declare-fun condMapEmpty!57484 () Bool)

(declare-datatypes ((V!54683 0))(
  ( (V!54684 (val!18667 Int)) )
))
(declare-datatypes ((ValueCell!17694 0))(
  ( (ValueCellFull!17694 (v!21313 V!54683)) (EmptyCell!17694) )
))
(declare-datatypes ((array!91179 0))(
  ( (array!91180 (arr!44041 (Array (_ BitVec 32) ValueCell!17694)) (size!44592 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91179)

(declare-fun mapDefault!57484 () ValueCell!17694)

(assert (=> b!1341308 (= condMapEmpty!57484 (= (arr!44041 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17694)) mapDefault!57484)))))

(declare-fun b!1341309 () Bool)

(declare-fun res!889921 () Bool)

(declare-fun e!763837 () Bool)

(assert (=> b!1341309 (=> (not res!889921) (not e!763837))))

(declare-fun minValue!1245 () V!54683)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91181 0))(
  ( (array!91182 (arr!44042 (Array (_ BitVec 32) (_ BitVec 64))) (size!44593 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91181)

(declare-fun zeroValue!1245 () V!54683)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24182 0))(
  ( (tuple2!24183 (_1!12101 (_ BitVec 64)) (_2!12101 V!54683)) )
))
(declare-datatypes ((List!31363 0))(
  ( (Nil!31360) (Cons!31359 (h!32568 tuple2!24182) (t!45766 List!31363)) )
))
(declare-datatypes ((ListLongMap!21851 0))(
  ( (ListLongMap!21852 (toList!10941 List!31363)) )
))
(declare-fun contains!9053 (ListLongMap!21851 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5842 (array!91181 array!91179 (_ BitVec 32) (_ BitVec 32) V!54683 V!54683 (_ BitVec 32) Int) ListLongMap!21851)

(assert (=> b!1341309 (= res!889921 (contains!9053 (getCurrentListMap!5842 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun mapNonEmpty!57484 () Bool)

(declare-fun tp!109361 () Bool)

(declare-fun e!763840 () Bool)

(assert (=> mapNonEmpty!57484 (= mapRes!57484 (and tp!109361 e!763840))))

(declare-fun mapRest!57484 () (Array (_ BitVec 32) ValueCell!17694))

(declare-fun mapKey!57484 () (_ BitVec 32))

(declare-fun mapValue!57484 () ValueCell!17694)

(assert (=> mapNonEmpty!57484 (= (arr!44041 _values!1303) (store mapRest!57484 mapKey!57484 mapValue!57484))))

(declare-fun b!1341310 () Bool)

(declare-fun res!889914 () Bool)

(assert (=> b!1341310 (=> (not res!889914) (not e!763837))))

(assert (=> b!1341310 (= res!889914 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1341311 () Bool)

(declare-fun res!889915 () Bool)

(assert (=> b!1341311 (=> (not res!889915) (not e!763837))))

(declare-datatypes ((List!31364 0))(
  ( (Nil!31361) (Cons!31360 (h!32569 (_ BitVec 64)) (t!45767 List!31364)) )
))
(declare-fun arrayNoDuplicates!0 (array!91181 (_ BitVec 32) List!31364) Bool)

(assert (=> b!1341311 (= res!889915 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31361))))

(declare-fun b!1341312 () Bool)

(declare-fun tp_is_empty!37185 () Bool)

(assert (=> b!1341312 (= e!763840 tp_is_empty!37185)))

(declare-fun b!1341313 () Bool)

(declare-fun res!889916 () Bool)

(assert (=> b!1341313 (=> (not res!889916) (not e!763837))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1341313 (= res!889916 (validKeyInArray!0 (select (arr!44042 _keys!1571) from!1960)))))

(declare-fun b!1341314 () Bool)

(assert (=> b!1341314 (= e!763837 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000)))))

(declare-fun lt!594073 () ListLongMap!21851)

(assert (=> b!1341314 (contains!9053 lt!594073 k0!1142)))

(declare-datatypes ((Unit!43959 0))(
  ( (Unit!43960) )
))
(declare-fun lt!594072 () Unit!43959)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!339 ((_ BitVec 64) (_ BitVec 64) V!54683 ListLongMap!21851) Unit!43959)

(assert (=> b!1341314 (= lt!594072 (lemmaInListMapAfterAddingDiffThenInBefore!339 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594073))))

(declare-fun +!4747 (ListLongMap!21851 tuple2!24182) ListLongMap!21851)

(declare-fun getCurrentListMapNoExtraKeys!6470 (array!91181 array!91179 (_ BitVec 32) (_ BitVec 32) V!54683 V!54683 (_ BitVec 32) Int) ListLongMap!21851)

(declare-fun get!22270 (ValueCell!17694 V!54683) V!54683)

(declare-fun dynLambda!3784 (Int (_ BitVec 64)) V!54683)

(assert (=> b!1341314 (= lt!594073 (+!4747 (getCurrentListMapNoExtraKeys!6470 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24183 (select (arr!44042 _keys!1571) from!1960) (get!22270 (select (arr!44041 _values!1303) from!1960) (dynLambda!3784 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1341315 () Bool)

(declare-fun res!889922 () Bool)

(assert (=> b!1341315 (=> (not res!889922) (not e!763837))))

(assert (=> b!1341315 (= res!889922 (not (= (select (arr!44042 _keys!1571) from!1960) k0!1142)))))

(declare-fun res!889919 () Bool)

(assert (=> start!113170 (=> (not res!889919) (not e!763837))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113170 (= res!889919 (validMask!0 mask!1977))))

(assert (=> start!113170 e!763837))

(assert (=> start!113170 tp_is_empty!37185))

(assert (=> start!113170 true))

(declare-fun array_inv!33117 (array!91181) Bool)

(assert (=> start!113170 (array_inv!33117 _keys!1571)))

(declare-fun array_inv!33118 (array!91179) Bool)

(assert (=> start!113170 (and (array_inv!33118 _values!1303) e!763838)))

(assert (=> start!113170 tp!109360))

(declare-fun b!1341316 () Bool)

(declare-fun res!889918 () Bool)

(assert (=> b!1341316 (=> (not res!889918) (not e!763837))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91181 (_ BitVec 32)) Bool)

(assert (=> b!1341316 (= res!889918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!57484 () Bool)

(assert (=> mapIsEmpty!57484 mapRes!57484))

(declare-fun b!1341317 () Bool)

(declare-fun res!889920 () Bool)

(assert (=> b!1341317 (=> (not res!889920) (not e!763837))))

(assert (=> b!1341317 (= res!889920 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44593 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1341318 () Bool)

(assert (=> b!1341318 (= e!763839 tp_is_empty!37185)))

(declare-fun b!1341319 () Bool)

(declare-fun res!889917 () Bool)

(assert (=> b!1341319 (=> (not res!889917) (not e!763837))))

(assert (=> b!1341319 (= res!889917 (and (= (size!44592 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44593 _keys!1571) (size!44592 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(assert (= (and start!113170 res!889919) b!1341319))

(assert (= (and b!1341319 res!889917) b!1341316))

(assert (= (and b!1341316 res!889918) b!1341311))

(assert (= (and b!1341311 res!889915) b!1341317))

(assert (= (and b!1341317 res!889920) b!1341309))

(assert (= (and b!1341309 res!889921) b!1341315))

(assert (= (and b!1341315 res!889922) b!1341313))

(assert (= (and b!1341313 res!889916) b!1341310))

(assert (= (and b!1341310 res!889914) b!1341314))

(assert (= (and b!1341308 condMapEmpty!57484) mapIsEmpty!57484))

(assert (= (and b!1341308 (not condMapEmpty!57484)) mapNonEmpty!57484))

(get-info :version)

(assert (= (and mapNonEmpty!57484 ((_ is ValueCellFull!17694) mapValue!57484)) b!1341312))

(assert (= (and b!1341308 ((_ is ValueCellFull!17694) mapDefault!57484)) b!1341318))

(assert (= start!113170 b!1341308))

(declare-fun b_lambda!24371 () Bool)

(assert (=> (not b_lambda!24371) (not b!1341314)))

(declare-fun t!45765 () Bool)

(declare-fun tb!12207 () Bool)

(assert (=> (and start!113170 (= defaultEntry!1306 defaultEntry!1306) t!45765) tb!12207))

(declare-fun result!25497 () Bool)

(assert (=> tb!12207 (= result!25497 tp_is_empty!37185)))

(assert (=> b!1341314 t!45765))

(declare-fun b_and!50289 () Bool)

(assert (= b_and!50287 (and (=> t!45765 result!25497) b_and!50289)))

(declare-fun m!1229003 () Bool)

(assert (=> b!1341314 m!1229003))

(declare-fun m!1229005 () Bool)

(assert (=> b!1341314 m!1229005))

(declare-fun m!1229007 () Bool)

(assert (=> b!1341314 m!1229007))

(declare-fun m!1229009 () Bool)

(assert (=> b!1341314 m!1229009))

(assert (=> b!1341314 m!1229003))

(declare-fun m!1229011 () Bool)

(assert (=> b!1341314 m!1229011))

(declare-fun m!1229013 () Bool)

(assert (=> b!1341314 m!1229013))

(assert (=> b!1341314 m!1229007))

(declare-fun m!1229015 () Bool)

(assert (=> b!1341314 m!1229015))

(assert (=> b!1341314 m!1229005))

(declare-fun m!1229017 () Bool)

(assert (=> b!1341314 m!1229017))

(declare-fun m!1229019 () Bool)

(assert (=> mapNonEmpty!57484 m!1229019))

(declare-fun m!1229021 () Bool)

(assert (=> b!1341309 m!1229021))

(assert (=> b!1341309 m!1229021))

(declare-fun m!1229023 () Bool)

(assert (=> b!1341309 m!1229023))

(declare-fun m!1229025 () Bool)

(assert (=> b!1341316 m!1229025))

(declare-fun m!1229027 () Bool)

(assert (=> start!113170 m!1229027))

(declare-fun m!1229029 () Bool)

(assert (=> start!113170 m!1229029))

(declare-fun m!1229031 () Bool)

(assert (=> start!113170 m!1229031))

(declare-fun m!1229033 () Bool)

(assert (=> b!1341311 m!1229033))

(assert (=> b!1341313 m!1229015))

(assert (=> b!1341313 m!1229015))

(declare-fun m!1229035 () Bool)

(assert (=> b!1341313 m!1229035))

(assert (=> b!1341315 m!1229015))

(check-sat (not b!1341313) tp_is_empty!37185 b_and!50289 (not b!1341311) (not b!1341316) (not mapNonEmpty!57484) (not b_lambda!24371) (not b_next!31185) (not start!113170) (not b!1341309) (not b!1341314))
(check-sat b_and!50289 (not b_next!31185))
