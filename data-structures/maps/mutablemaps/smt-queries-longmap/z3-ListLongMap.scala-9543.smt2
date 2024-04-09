; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113158 () Bool)

(assert start!113158)

(declare-fun b_free!31173 () Bool)

(declare-fun b_next!31173 () Bool)

(assert (=> start!113158 (= b_free!31173 (not b_next!31173))))

(declare-fun tp!109324 () Bool)

(declare-fun b_and!50263 () Bool)

(assert (=> start!113158 (= tp!109324 b_and!50263)))

(declare-fun b!1341080 () Bool)

(declare-fun res!889760 () Bool)

(declare-fun e!763749 () Bool)

(assert (=> b!1341080 (=> (not res!889760) (not e!763749))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91155 0))(
  ( (array!91156 (arr!44029 (Array (_ BitVec 32) (_ BitVec 64))) (size!44580 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91155)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54667 0))(
  ( (V!54668 (val!18661 Int)) )
))
(declare-datatypes ((ValueCell!17688 0))(
  ( (ValueCellFull!17688 (v!21307 V!54667)) (EmptyCell!17688) )
))
(declare-datatypes ((array!91157 0))(
  ( (array!91158 (arr!44030 (Array (_ BitVec 32) ValueCell!17688)) (size!44581 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91157)

(assert (=> b!1341080 (= res!889760 (and (= (size!44581 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44580 _keys!1571) (size!44581 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!57466 () Bool)

(declare-fun mapRes!57466 () Bool)

(assert (=> mapIsEmpty!57466 mapRes!57466))

(declare-fun res!889756 () Bool)

(assert (=> start!113158 (=> (not res!889756) (not e!763749))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113158 (= res!889756 (validMask!0 mask!1977))))

(assert (=> start!113158 e!763749))

(declare-fun tp_is_empty!37173 () Bool)

(assert (=> start!113158 tp_is_empty!37173))

(assert (=> start!113158 true))

(declare-fun array_inv!33111 (array!91155) Bool)

(assert (=> start!113158 (array_inv!33111 _keys!1571)))

(declare-fun e!763748 () Bool)

(declare-fun array_inv!33112 (array!91157) Bool)

(assert (=> start!113158 (and (array_inv!33112 _values!1303) e!763748)))

(assert (=> start!113158 tp!109324))

(declare-fun b!1341081 () Bool)

(declare-fun res!889753 () Bool)

(assert (=> b!1341081 (=> (not res!889753) (not e!763749))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1341081 (= res!889753 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44580 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1341082 () Bool)

(declare-fun e!763750 () Bool)

(assert (=> b!1341082 (= e!763750 tp_is_empty!37173)))

(declare-fun b!1341083 () Bool)

(declare-fun res!889755 () Bool)

(assert (=> b!1341083 (=> (not res!889755) (not e!763749))))

(declare-datatypes ((List!31354 0))(
  ( (Nil!31351) (Cons!31350 (h!32559 (_ BitVec 64)) (t!45745 List!31354)) )
))
(declare-fun arrayNoDuplicates!0 (array!91155 (_ BitVec 32) List!31354) Bool)

(assert (=> b!1341083 (= res!889755 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31351))))

(declare-fun b!1341084 () Bool)

(declare-fun res!889752 () Bool)

(assert (=> b!1341084 (=> (not res!889752) (not e!763749))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1341084 (= res!889752 (validKeyInArray!0 (select (arr!44029 _keys!1571) from!1960)))))

(declare-fun mapNonEmpty!57466 () Bool)

(declare-fun tp!109325 () Bool)

(assert (=> mapNonEmpty!57466 (= mapRes!57466 (and tp!109325 e!763750))))

(declare-fun mapRest!57466 () (Array (_ BitVec 32) ValueCell!17688))

(declare-fun mapKey!57466 () (_ BitVec 32))

(declare-fun mapValue!57466 () ValueCell!17688)

(assert (=> mapNonEmpty!57466 (= (arr!44030 _values!1303) (store mapRest!57466 mapKey!57466 mapValue!57466))))

(declare-fun b!1341085 () Bool)

(declare-fun res!889758 () Bool)

(assert (=> b!1341085 (=> (not res!889758) (not e!763749))))

(declare-fun minValue!1245 () V!54667)

(declare-fun zeroValue!1245 () V!54667)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24172 0))(
  ( (tuple2!24173 (_1!12096 (_ BitVec 64)) (_2!12096 V!54667)) )
))
(declare-datatypes ((List!31355 0))(
  ( (Nil!31352) (Cons!31351 (h!32560 tuple2!24172) (t!45746 List!31355)) )
))
(declare-datatypes ((ListLongMap!21841 0))(
  ( (ListLongMap!21842 (toList!10936 List!31355)) )
))
(declare-fun contains!9048 (ListLongMap!21841 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5838 (array!91155 array!91157 (_ BitVec 32) (_ BitVec 32) V!54667 V!54667 (_ BitVec 32) Int) ListLongMap!21841)

(assert (=> b!1341085 (= res!889758 (contains!9048 (getCurrentListMap!5838 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1341086 () Bool)

(declare-fun res!889757 () Bool)

(assert (=> b!1341086 (=> (not res!889757) (not e!763749))))

(assert (=> b!1341086 (= res!889757 (not (= (select (arr!44029 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1341087 () Bool)

(declare-fun res!889759 () Bool)

(assert (=> b!1341087 (=> (not res!889759) (not e!763749))))

(assert (=> b!1341087 (= res!889759 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1341088 () Bool)

(assert (=> b!1341088 (= e!763749 (not true))))

(declare-fun lt!594036 () ListLongMap!21841)

(assert (=> b!1341088 (contains!9048 lt!594036 k0!1142)))

(declare-datatypes ((Unit!43949 0))(
  ( (Unit!43950) )
))
(declare-fun lt!594037 () Unit!43949)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!334 ((_ BitVec 64) (_ BitVec 64) V!54667 ListLongMap!21841) Unit!43949)

(assert (=> b!1341088 (= lt!594037 (lemmaInListMapAfterAddingDiffThenInBefore!334 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594036))))

(declare-fun +!4742 (ListLongMap!21841 tuple2!24172) ListLongMap!21841)

(declare-fun getCurrentListMapNoExtraKeys!6465 (array!91155 array!91157 (_ BitVec 32) (_ BitVec 32) V!54667 V!54667 (_ BitVec 32) Int) ListLongMap!21841)

(declare-fun get!22261 (ValueCell!17688 V!54667) V!54667)

(declare-fun dynLambda!3779 (Int (_ BitVec 64)) V!54667)

(assert (=> b!1341088 (= lt!594036 (+!4742 (getCurrentListMapNoExtraKeys!6465 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24173 (select (arr!44029 _keys!1571) from!1960) (get!22261 (select (arr!44030 _values!1303) from!1960) (dynLambda!3779 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1341089 () Bool)

(declare-fun e!763747 () Bool)

(assert (=> b!1341089 (= e!763747 tp_is_empty!37173)))

(declare-fun b!1341090 () Bool)

(assert (=> b!1341090 (= e!763748 (and e!763747 mapRes!57466))))

(declare-fun condMapEmpty!57466 () Bool)

(declare-fun mapDefault!57466 () ValueCell!17688)

(assert (=> b!1341090 (= condMapEmpty!57466 (= (arr!44030 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17688)) mapDefault!57466)))))

(declare-fun b!1341091 () Bool)

(declare-fun res!889754 () Bool)

(assert (=> b!1341091 (=> (not res!889754) (not e!763749))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91155 (_ BitVec 32)) Bool)

(assert (=> b!1341091 (= res!889754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(assert (= (and start!113158 res!889756) b!1341080))

(assert (= (and b!1341080 res!889760) b!1341091))

(assert (= (and b!1341091 res!889754) b!1341083))

(assert (= (and b!1341083 res!889755) b!1341081))

(assert (= (and b!1341081 res!889753) b!1341085))

(assert (= (and b!1341085 res!889758) b!1341086))

(assert (= (and b!1341086 res!889757) b!1341084))

(assert (= (and b!1341084 res!889752) b!1341087))

(assert (= (and b!1341087 res!889759) b!1341088))

(assert (= (and b!1341090 condMapEmpty!57466) mapIsEmpty!57466))

(assert (= (and b!1341090 (not condMapEmpty!57466)) mapNonEmpty!57466))

(get-info :version)

(assert (= (and mapNonEmpty!57466 ((_ is ValueCellFull!17688) mapValue!57466)) b!1341082))

(assert (= (and b!1341090 ((_ is ValueCellFull!17688) mapDefault!57466)) b!1341089))

(assert (= start!113158 b!1341090))

(declare-fun b_lambda!24359 () Bool)

(assert (=> (not b_lambda!24359) (not b!1341088)))

(declare-fun t!45744 () Bool)

(declare-fun tb!12195 () Bool)

(assert (=> (and start!113158 (= defaultEntry!1306 defaultEntry!1306) t!45744) tb!12195))

(declare-fun result!25473 () Bool)

(assert (=> tb!12195 (= result!25473 tp_is_empty!37173)))

(assert (=> b!1341088 t!45744))

(declare-fun b_and!50265 () Bool)

(assert (= b_and!50263 (and (=> t!45744 result!25473) b_and!50265)))

(declare-fun m!1228799 () Bool)

(assert (=> b!1341091 m!1228799))

(declare-fun m!1228801 () Bool)

(assert (=> b!1341084 m!1228801))

(assert (=> b!1341084 m!1228801))

(declare-fun m!1228803 () Bool)

(assert (=> b!1341084 m!1228803))

(declare-fun m!1228805 () Bool)

(assert (=> b!1341088 m!1228805))

(declare-fun m!1228807 () Bool)

(assert (=> b!1341088 m!1228807))

(declare-fun m!1228809 () Bool)

(assert (=> b!1341088 m!1228809))

(declare-fun m!1228811 () Bool)

(assert (=> b!1341088 m!1228811))

(declare-fun m!1228813 () Bool)

(assert (=> b!1341088 m!1228813))

(declare-fun m!1228815 () Bool)

(assert (=> b!1341088 m!1228815))

(assert (=> b!1341088 m!1228807))

(declare-fun m!1228817 () Bool)

(assert (=> b!1341088 m!1228817))

(assert (=> b!1341088 m!1228809))

(assert (=> b!1341088 m!1228811))

(assert (=> b!1341088 m!1228801))

(declare-fun m!1228819 () Bool)

(assert (=> mapNonEmpty!57466 m!1228819))

(declare-fun m!1228821 () Bool)

(assert (=> b!1341083 m!1228821))

(assert (=> b!1341086 m!1228801))

(declare-fun m!1228823 () Bool)

(assert (=> b!1341085 m!1228823))

(assert (=> b!1341085 m!1228823))

(declare-fun m!1228825 () Bool)

(assert (=> b!1341085 m!1228825))

(declare-fun m!1228827 () Bool)

(assert (=> start!113158 m!1228827))

(declare-fun m!1228829 () Bool)

(assert (=> start!113158 m!1228829))

(declare-fun m!1228831 () Bool)

(assert (=> start!113158 m!1228831))

(check-sat (not start!113158) (not b!1341085) (not b!1341088) (not b!1341084) b_and!50265 (not b_next!31173) tp_is_empty!37173 (not b!1341083) (not mapNonEmpty!57466) (not b!1341091) (not b_lambda!24359))
(check-sat b_and!50265 (not b_next!31173))
