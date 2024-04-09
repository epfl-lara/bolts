; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113116 () Bool)

(assert start!113116)

(declare-fun b_free!31131 () Bool)

(declare-fun b_next!31131 () Bool)

(assert (=> start!113116 (= b_free!31131 (not b_next!31131))))

(declare-fun tp!109198 () Bool)

(declare-fun b_and!50179 () Bool)

(assert (=> start!113116 (= tp!109198 b_and!50179)))

(declare-fun b!1340282 () Bool)

(declare-fun res!889189 () Bool)

(declare-fun e!763433 () Bool)

(assert (=> b!1340282 (=> (not res!889189) (not e!763433))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((array!91073 0))(
  ( (array!91074 (arr!43988 (Array (_ BitVec 32) (_ BitVec 64))) (size!44539 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91073)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1340282 (= res!889189 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44539 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1340283 () Bool)

(declare-fun e!763435 () Bool)

(declare-fun tp_is_empty!37131 () Bool)

(assert (=> b!1340283 (= e!763435 tp_is_empty!37131)))

(declare-fun b!1340284 () Bool)

(declare-fun res!889187 () Bool)

(assert (=> b!1340284 (=> (not res!889187) (not e!763433))))

(assert (=> b!1340284 (= res!889187 (not (= (select (arr!43988 _keys!1571) from!1960) k0!1142)))))

(declare-fun mapNonEmpty!57403 () Bool)

(declare-fun mapRes!57403 () Bool)

(declare-fun tp!109199 () Bool)

(declare-fun e!763436 () Bool)

(assert (=> mapNonEmpty!57403 (= mapRes!57403 (and tp!109199 e!763436))))

(declare-datatypes ((V!54611 0))(
  ( (V!54612 (val!18640 Int)) )
))
(declare-datatypes ((ValueCell!17667 0))(
  ( (ValueCellFull!17667 (v!21286 V!54611)) (EmptyCell!17667) )
))
(declare-fun mapValue!57403 () ValueCell!17667)

(declare-fun mapRest!57403 () (Array (_ BitVec 32) ValueCell!17667))

(declare-fun mapKey!57403 () (_ BitVec 32))

(declare-datatypes ((array!91075 0))(
  ( (array!91076 (arr!43989 (Array (_ BitVec 32) ValueCell!17667)) (size!44540 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91075)

(assert (=> mapNonEmpty!57403 (= (arr!43989 _values!1303) (store mapRest!57403 mapKey!57403 mapValue!57403))))

(declare-fun b!1340285 () Bool)

(declare-fun res!889185 () Bool)

(assert (=> b!1340285 (=> (not res!889185) (not e!763433))))

(declare-fun mask!1977 () (_ BitVec 32))

(assert (=> b!1340285 (= res!889185 (and (= (size!44540 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44539 _keys!1571) (size!44540 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1340286 () Bool)

(declare-fun res!889190 () Bool)

(assert (=> b!1340286 (=> (not res!889190) (not e!763433))))

(assert (=> b!1340286 (= res!889190 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1340287 () Bool)

(declare-fun res!889191 () Bool)

(assert (=> b!1340287 (=> (not res!889191) (not e!763433))))

(declare-datatypes ((List!31323 0))(
  ( (Nil!31320) (Cons!31319 (h!32528 (_ BitVec 64)) (t!45672 List!31323)) )
))
(declare-fun arrayNoDuplicates!0 (array!91073 (_ BitVec 32) List!31323) Bool)

(assert (=> b!1340287 (= res!889191 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31320))))

(declare-fun b!1340288 () Bool)

(declare-fun res!889188 () Bool)

(assert (=> b!1340288 (=> (not res!889188) (not e!763433))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1340288 (= res!889188 (validKeyInArray!0 (select (arr!43988 _keys!1571) from!1960)))))

(declare-fun b!1340289 () Bool)

(declare-fun e!763434 () Bool)

(assert (=> b!1340289 (= e!763434 (and e!763435 mapRes!57403))))

(declare-fun condMapEmpty!57403 () Bool)

(declare-fun mapDefault!57403 () ValueCell!17667)

(assert (=> b!1340289 (= condMapEmpty!57403 (= (arr!43989 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17667)) mapDefault!57403)))))

(declare-fun b!1340290 () Bool)

(declare-fun res!889193 () Bool)

(assert (=> b!1340290 (=> (not res!889193) (not e!763433))))

(declare-fun minValue!1245 () V!54611)

(declare-fun zeroValue!1245 () V!54611)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24138 0))(
  ( (tuple2!24139 (_1!12079 (_ BitVec 64)) (_2!12079 V!54611)) )
))
(declare-datatypes ((List!31324 0))(
  ( (Nil!31321) (Cons!31320 (h!32529 tuple2!24138) (t!45673 List!31324)) )
))
(declare-datatypes ((ListLongMap!21807 0))(
  ( (ListLongMap!21808 (toList!10919 List!31324)) )
))
(declare-fun contains!9031 (ListLongMap!21807 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5823 (array!91073 array!91075 (_ BitVec 32) (_ BitVec 32) V!54611 V!54611 (_ BitVec 32) Int) ListLongMap!21807)

(assert (=> b!1340290 (= res!889193 (contains!9031 (getCurrentListMap!5823 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1340291 () Bool)

(assert (=> b!1340291 (= e!763436 tp_is_empty!37131)))

(declare-fun res!889192 () Bool)

(assert (=> start!113116 (=> (not res!889192) (not e!763433))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113116 (= res!889192 (validMask!0 mask!1977))))

(assert (=> start!113116 e!763433))

(assert (=> start!113116 tp_is_empty!37131))

(assert (=> start!113116 true))

(declare-fun array_inv!33085 (array!91073) Bool)

(assert (=> start!113116 (array_inv!33085 _keys!1571)))

(declare-fun array_inv!33086 (array!91075) Bool)

(assert (=> start!113116 (and (array_inv!33086 _values!1303) e!763434)))

(assert (=> start!113116 tp!109198))

(declare-fun mapIsEmpty!57403 () Bool)

(assert (=> mapIsEmpty!57403 mapRes!57403))

(declare-fun b!1340292 () Bool)

(assert (=> b!1340292 (= e!763433 false)))

(declare-fun lt!593914 () Bool)

(declare-fun +!4727 (ListLongMap!21807 tuple2!24138) ListLongMap!21807)

(declare-fun getCurrentListMapNoExtraKeys!6450 (array!91073 array!91075 (_ BitVec 32) (_ BitVec 32) V!54611 V!54611 (_ BitVec 32) Int) ListLongMap!21807)

(declare-fun get!22232 (ValueCell!17667 V!54611) V!54611)

(declare-fun dynLambda!3764 (Int (_ BitVec 64)) V!54611)

(assert (=> b!1340292 (= lt!593914 (contains!9031 (+!4727 (+!4727 (getCurrentListMapNoExtraKeys!6450 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24139 (select (arr!43988 _keys!1571) from!1960) (get!22232 (select (arr!43989 _values!1303) from!1960) (dynLambda!3764 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24139 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k0!1142))))

(declare-fun b!1340293 () Bool)

(declare-fun res!889186 () Bool)

(assert (=> b!1340293 (=> (not res!889186) (not e!763433))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91073 (_ BitVec 32)) Bool)

(assert (=> b!1340293 (= res!889186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(assert (= (and start!113116 res!889192) b!1340285))

(assert (= (and b!1340285 res!889185) b!1340293))

(assert (= (and b!1340293 res!889186) b!1340287))

(assert (= (and b!1340287 res!889191) b!1340282))

(assert (= (and b!1340282 res!889189) b!1340290))

(assert (= (and b!1340290 res!889193) b!1340284))

(assert (= (and b!1340284 res!889187) b!1340288))

(assert (= (and b!1340288 res!889188) b!1340286))

(assert (= (and b!1340286 res!889190) b!1340292))

(assert (= (and b!1340289 condMapEmpty!57403) mapIsEmpty!57403))

(assert (= (and b!1340289 (not condMapEmpty!57403)) mapNonEmpty!57403))

(get-info :version)

(assert (= (and mapNonEmpty!57403 ((_ is ValueCellFull!17667) mapValue!57403)) b!1340291))

(assert (= (and b!1340289 ((_ is ValueCellFull!17667) mapDefault!57403)) b!1340283))

(assert (= start!113116 b!1340289))

(declare-fun b_lambda!24317 () Bool)

(assert (=> (not b_lambda!24317) (not b!1340292)))

(declare-fun t!45671 () Bool)

(declare-fun tb!12153 () Bool)

(assert (=> (and start!113116 (= defaultEntry!1306 defaultEntry!1306) t!45671) tb!12153))

(declare-fun result!25389 () Bool)

(assert (=> tb!12153 (= result!25389 tp_is_empty!37131)))

(assert (=> b!1340292 t!45671))

(declare-fun b_and!50181 () Bool)

(assert (= b_and!50179 (and (=> t!45671 result!25389) b_and!50181)))

(declare-fun m!1228085 () Bool)

(assert (=> b!1340284 m!1228085))

(declare-fun m!1228087 () Bool)

(assert (=> b!1340293 m!1228087))

(declare-fun m!1228089 () Bool)

(assert (=> b!1340292 m!1228089))

(declare-fun m!1228091 () Bool)

(assert (=> b!1340292 m!1228091))

(declare-fun m!1228093 () Bool)

(assert (=> b!1340292 m!1228093))

(declare-fun m!1228095 () Bool)

(assert (=> b!1340292 m!1228095))

(declare-fun m!1228097 () Bool)

(assert (=> b!1340292 m!1228097))

(declare-fun m!1228099 () Bool)

(assert (=> b!1340292 m!1228099))

(assert (=> b!1340292 m!1228093))

(declare-fun m!1228101 () Bool)

(assert (=> b!1340292 m!1228101))

(assert (=> b!1340292 m!1228095))

(assert (=> b!1340292 m!1228097))

(assert (=> b!1340292 m!1228085))

(assert (=> b!1340292 m!1228101))

(assert (=> b!1340292 m!1228089))

(declare-fun m!1228103 () Bool)

(assert (=> start!113116 m!1228103))

(declare-fun m!1228105 () Bool)

(assert (=> start!113116 m!1228105))

(declare-fun m!1228107 () Bool)

(assert (=> start!113116 m!1228107))

(declare-fun m!1228109 () Bool)

(assert (=> b!1340287 m!1228109))

(assert (=> b!1340288 m!1228085))

(assert (=> b!1340288 m!1228085))

(declare-fun m!1228111 () Bool)

(assert (=> b!1340288 m!1228111))

(declare-fun m!1228113 () Bool)

(assert (=> mapNonEmpty!57403 m!1228113))

(declare-fun m!1228115 () Bool)

(assert (=> b!1340290 m!1228115))

(assert (=> b!1340290 m!1228115))

(declare-fun m!1228117 () Bool)

(assert (=> b!1340290 m!1228117))

(check-sat (not b!1340287) (not b_next!31131) (not b!1340288) (not mapNonEmpty!57403) (not start!113116) (not b!1340290) (not b!1340292) tp_is_empty!37131 (not b!1340293) b_and!50181 (not b_lambda!24317))
(check-sat b_and!50181 (not b_next!31131))
