; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113708 () Bool)

(assert start!113708)

(declare-fun b_free!31581 () Bool)

(declare-fun b_next!31581 () Bool)

(assert (=> start!113708 (= b_free!31581 (not b_next!31581))))

(declare-fun tp!110559 () Bool)

(declare-fun b_and!50971 () Bool)

(assert (=> start!113708 (= tp!110559 b_and!50971)))

(declare-fun b!1349076 () Bool)

(declare-fun res!895107 () Bool)

(declare-fun e!767480 () Bool)

(assert (=> b!1349076 (=> (not res!895107) (not e!767480))))

(declare-datatypes ((V!55211 0))(
  ( (V!55212 (val!18865 Int)) )
))
(declare-fun minValue!1245 () V!55211)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91953 0))(
  ( (array!91954 (arr!44425 (Array (_ BitVec 32) (_ BitVec 64))) (size!44976 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91953)

(declare-fun zeroValue!1245 () V!55211)

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17892 0))(
  ( (ValueCellFull!17892 (v!21518 V!55211)) (EmptyCell!17892) )
))
(declare-datatypes ((array!91955 0))(
  ( (array!91956 (arr!44426 (Array (_ BitVec 32) ValueCell!17892)) (size!44977 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91955)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((tuple2!24468 0))(
  ( (tuple2!24469 (_1!12244 (_ BitVec 64)) (_2!12244 V!55211)) )
))
(declare-datatypes ((List!31635 0))(
  ( (Nil!31632) (Cons!31631 (h!32840 tuple2!24468) (t!46290 List!31635)) )
))
(declare-datatypes ((ListLongMap!22137 0))(
  ( (ListLongMap!22138 (toList!11084 List!31635)) )
))
(declare-fun contains!9201 (ListLongMap!22137 (_ BitVec 64)) Bool)

(declare-fun +!4827 (ListLongMap!22137 tuple2!24468) ListLongMap!22137)

(declare-fun getCurrentListMapNoExtraKeys!6554 (array!91953 array!91955 (_ BitVec 32) (_ BitVec 32) V!55211 V!55211 (_ BitVec 32) Int) ListLongMap!22137)

(declare-fun get!22490 (ValueCell!17892 V!55211) V!55211)

(declare-fun dynLambda!3864 (Int (_ BitVec 64)) V!55211)

(assert (=> b!1349076 (= res!895107 (contains!9201 (+!4827 (getCurrentListMapNoExtraKeys!6554 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24469 (select (arr!44425 _keys!1571) from!1960) (get!22490 (select (arr!44426 _values!1303) from!1960) (dynLambda!3864 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) k0!1142))))

(declare-fun mapNonEmpty!58089 () Bool)

(declare-fun mapRes!58089 () Bool)

(declare-fun tp!110560 () Bool)

(declare-fun e!767482 () Bool)

(assert (=> mapNonEmpty!58089 (= mapRes!58089 (and tp!110560 e!767482))))

(declare-fun mapKey!58089 () (_ BitVec 32))

(declare-fun mapRest!58089 () (Array (_ BitVec 32) ValueCell!17892))

(declare-fun mapValue!58089 () ValueCell!17892)

(assert (=> mapNonEmpty!58089 (= (arr!44426 _values!1303) (store mapRest!58089 mapKey!58089 mapValue!58089))))

(declare-fun b!1349077 () Bool)

(declare-fun res!895108 () Bool)

(assert (=> b!1349077 (=> (not res!895108) (not e!767480))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1349077 (= res!895108 (validKeyInArray!0 (select (arr!44425 _keys!1571) from!1960)))))

(declare-fun b!1349078 () Bool)

(declare-fun e!767483 () Bool)

(declare-fun e!767484 () Bool)

(assert (=> b!1349078 (= e!767483 (and e!767484 mapRes!58089))))

(declare-fun condMapEmpty!58089 () Bool)

(declare-fun mapDefault!58089 () ValueCell!17892)

(assert (=> b!1349078 (= condMapEmpty!58089 (= (arr!44426 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17892)) mapDefault!58089)))))

(declare-fun b!1349079 () Bool)

(declare-fun res!895116 () Bool)

(assert (=> b!1349079 (=> (not res!895116) (not e!767480))))

(declare-fun getCurrentListMap!5974 (array!91953 array!91955 (_ BitVec 32) (_ BitVec 32) V!55211 V!55211 (_ BitVec 32) Int) ListLongMap!22137)

(assert (=> b!1349079 (= res!895116 (contains!9201 (getCurrentListMap!5974 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1349080 () Bool)

(declare-fun res!895109 () Bool)

(assert (=> b!1349080 (=> (not res!895109) (not e!767480))))

(assert (=> b!1349080 (= res!895109 (and (= (size!44977 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44976 _keys!1571) (size!44977 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1349081 () Bool)

(declare-fun res!895110 () Bool)

(assert (=> b!1349081 (=> (not res!895110) (not e!767480))))

(assert (=> b!1349081 (= res!895110 (not (= (select (arr!44425 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1349083 () Bool)

(assert (=> b!1349083 (= e!767480 (= k0!1142 (select (arr!44425 _keys!1571) from!1960)))))

(declare-fun b!1349084 () Bool)

(declare-fun tp_is_empty!37581 () Bool)

(assert (=> b!1349084 (= e!767482 tp_is_empty!37581)))

(declare-fun b!1349085 () Bool)

(declare-fun res!895114 () Bool)

(assert (=> b!1349085 (=> (not res!895114) (not e!767480))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91953 (_ BitVec 32)) Bool)

(assert (=> b!1349085 (= res!895114 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1349086 () Bool)

(declare-fun res!895113 () Bool)

(assert (=> b!1349086 (=> (not res!895113) (not e!767480))))

(assert (=> b!1349086 (= res!895113 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1349087 () Bool)

(assert (=> b!1349087 (= e!767484 tp_is_empty!37581)))

(declare-fun b!1349082 () Bool)

(declare-fun res!895115 () Bool)

(assert (=> b!1349082 (=> (not res!895115) (not e!767480))))

(declare-datatypes ((List!31636 0))(
  ( (Nil!31633) (Cons!31632 (h!32841 (_ BitVec 64)) (t!46291 List!31636)) )
))
(declare-fun arrayNoDuplicates!0 (array!91953 (_ BitVec 32) List!31636) Bool)

(assert (=> b!1349082 (= res!895115 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31633))))

(declare-fun res!895111 () Bool)

(assert (=> start!113708 (=> (not res!895111) (not e!767480))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113708 (= res!895111 (validMask!0 mask!1977))))

(assert (=> start!113708 e!767480))

(assert (=> start!113708 tp_is_empty!37581))

(assert (=> start!113708 true))

(declare-fun array_inv!33375 (array!91953) Bool)

(assert (=> start!113708 (array_inv!33375 _keys!1571)))

(declare-fun array_inv!33376 (array!91955) Bool)

(assert (=> start!113708 (and (array_inv!33376 _values!1303) e!767483)))

(assert (=> start!113708 tp!110559))

(declare-fun mapIsEmpty!58089 () Bool)

(assert (=> mapIsEmpty!58089 mapRes!58089))

(declare-fun b!1349088 () Bool)

(declare-fun res!895112 () Bool)

(assert (=> b!1349088 (=> (not res!895112) (not e!767480))))

(assert (=> b!1349088 (= res!895112 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44976 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!113708 res!895111) b!1349080))

(assert (= (and b!1349080 res!895109) b!1349085))

(assert (= (and b!1349085 res!895114) b!1349082))

(assert (= (and b!1349082 res!895115) b!1349088))

(assert (= (and b!1349088 res!895112) b!1349079))

(assert (= (and b!1349079 res!895116) b!1349081))

(assert (= (and b!1349081 res!895110) b!1349077))

(assert (= (and b!1349077 res!895108) b!1349086))

(assert (= (and b!1349086 res!895113) b!1349076))

(assert (= (and b!1349076 res!895107) b!1349083))

(assert (= (and b!1349078 condMapEmpty!58089) mapIsEmpty!58089))

(assert (= (and b!1349078 (not condMapEmpty!58089)) mapNonEmpty!58089))

(get-info :version)

(assert (= (and mapNonEmpty!58089 ((_ is ValueCellFull!17892) mapValue!58089)) b!1349084))

(assert (= (and b!1349078 ((_ is ValueCellFull!17892) mapDefault!58089)) b!1349087))

(assert (= start!113708 b!1349078))

(declare-fun b_lambda!24701 () Bool)

(assert (=> (not b_lambda!24701) (not b!1349076)))

(declare-fun t!46289 () Bool)

(declare-fun tb!12459 () Bool)

(assert (=> (and start!113708 (= defaultEntry!1306 defaultEntry!1306) t!46289) tb!12459))

(declare-fun result!26007 () Bool)

(assert (=> tb!12459 (= result!26007 tp_is_empty!37581)))

(assert (=> b!1349076 t!46289))

(declare-fun b_and!50973 () Bool)

(assert (= b_and!50971 (and (=> t!46289 result!26007) b_and!50973)))

(declare-fun m!1236237 () Bool)

(assert (=> mapNonEmpty!58089 m!1236237))

(declare-fun m!1236239 () Bool)

(assert (=> b!1349081 m!1236239))

(declare-fun m!1236241 () Bool)

(assert (=> b!1349076 m!1236241))

(declare-fun m!1236243 () Bool)

(assert (=> b!1349076 m!1236243))

(declare-fun m!1236245 () Bool)

(assert (=> b!1349076 m!1236245))

(declare-fun m!1236247 () Bool)

(assert (=> b!1349076 m!1236247))

(assert (=> b!1349076 m!1236241))

(declare-fun m!1236249 () Bool)

(assert (=> b!1349076 m!1236249))

(assert (=> b!1349076 m!1236243))

(assert (=> b!1349076 m!1236245))

(assert (=> b!1349076 m!1236249))

(declare-fun m!1236251 () Bool)

(assert (=> b!1349076 m!1236251))

(assert (=> b!1349076 m!1236239))

(declare-fun m!1236253 () Bool)

(assert (=> b!1349085 m!1236253))

(assert (=> b!1349077 m!1236239))

(assert (=> b!1349077 m!1236239))

(declare-fun m!1236255 () Bool)

(assert (=> b!1349077 m!1236255))

(declare-fun m!1236257 () Bool)

(assert (=> b!1349079 m!1236257))

(assert (=> b!1349079 m!1236257))

(declare-fun m!1236259 () Bool)

(assert (=> b!1349079 m!1236259))

(declare-fun m!1236261 () Bool)

(assert (=> start!113708 m!1236261))

(declare-fun m!1236263 () Bool)

(assert (=> start!113708 m!1236263))

(declare-fun m!1236265 () Bool)

(assert (=> start!113708 m!1236265))

(declare-fun m!1236267 () Bool)

(assert (=> b!1349082 m!1236267))

(assert (=> b!1349083 m!1236239))

(check-sat (not b!1349076) (not b_next!31581) (not b_lambda!24701) (not start!113708) (not mapNonEmpty!58089) (not b!1349079) (not b!1349082) tp_is_empty!37581 (not b!1349077) (not b!1349085) b_and!50973)
(check-sat b_and!50973 (not b_next!31581))
