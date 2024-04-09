; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112190 () Bool)

(assert start!112190)

(declare-fun b_free!30549 () Bool)

(declare-fun b_next!30549 () Bool)

(assert (=> start!112190 (= b_free!30549 (not b_next!30549))))

(declare-fun tp!107284 () Bool)

(declare-fun b_and!49209 () Bool)

(assert (=> start!112190 (= tp!107284 b_and!49209)))

(declare-fun b!1328179 () Bool)

(declare-fun e!757292 () Bool)

(declare-fun tp_is_empty!36459 () Bool)

(assert (=> b!1328179 (= e!757292 tp_is_empty!36459)))

(declare-fun b!1328180 () Bool)

(declare-fun e!757291 () Bool)

(assert (=> b!1328180 (= e!757291 false)))

(declare-datatypes ((V!53715 0))(
  ( (V!53716 (val!18304 Int)) )
))
(declare-datatypes ((ValueCell!17331 0))(
  ( (ValueCellFull!17331 (v!20939 V!53715)) (EmptyCell!17331) )
))
(declare-datatypes ((array!89781 0))(
  ( (array!89782 (arr!43352 (Array (_ BitVec 32) ValueCell!17331)) (size!43903 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89781)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89783 0))(
  ( (array!89784 (arr!43353 (Array (_ BitVec 32) (_ BitVec 64))) (size!43904 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89783)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun zeroValue!1262 () V!53715)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun minValue!1262 () V!53715)

(declare-fun lt!590753 () Bool)

(declare-datatypes ((tuple2!23708 0))(
  ( (tuple2!23709 (_1!11864 (_ BitVec 64)) (_2!11864 V!53715)) )
))
(declare-datatypes ((List!30894 0))(
  ( (Nil!30891) (Cons!30890 (h!32099 tuple2!23708) (t!44907 List!30894)) )
))
(declare-datatypes ((ListLongMap!21377 0))(
  ( (ListLongMap!21378 (toList!10704 List!30894)) )
))
(declare-fun contains!8804 (ListLongMap!21377 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5636 (array!89783 array!89781 (_ BitVec 32) (_ BitVec 32) V!53715 V!53715 (_ BitVec 32) Int) ListLongMap!21377)

(assert (=> b!1328180 (= lt!590753 (contains!8804 (getCurrentListMap!5636 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun mapIsEmpty!56362 () Bool)

(declare-fun mapRes!56362 () Bool)

(assert (=> mapIsEmpty!56362 mapRes!56362))

(declare-fun b!1328181 () Bool)

(declare-fun res!881332 () Bool)

(assert (=> b!1328181 (=> (not res!881332) (not e!757291))))

(assert (=> b!1328181 (= res!881332 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43904 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1328182 () Bool)

(declare-fun res!881331 () Bool)

(assert (=> b!1328182 (=> (not res!881331) (not e!757291))))

(assert (=> b!1328182 (= res!881331 (and (= (size!43903 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43904 _keys!1590) (size!43903 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1328183 () Bool)

(declare-fun e!757290 () Bool)

(assert (=> b!1328183 (= e!757290 tp_is_empty!36459)))

(declare-fun res!881333 () Bool)

(assert (=> start!112190 (=> (not res!881333) (not e!757291))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112190 (= res!881333 (validMask!0 mask!1998))))

(assert (=> start!112190 e!757291))

(declare-fun e!757294 () Bool)

(declare-fun array_inv!32661 (array!89781) Bool)

(assert (=> start!112190 (and (array_inv!32661 _values!1320) e!757294)))

(assert (=> start!112190 true))

(declare-fun array_inv!32662 (array!89783) Bool)

(assert (=> start!112190 (array_inv!32662 _keys!1590)))

(assert (=> start!112190 tp!107284))

(assert (=> start!112190 tp_is_empty!36459))

(declare-fun b!1328184 () Bool)

(declare-fun res!881329 () Bool)

(assert (=> b!1328184 (=> (not res!881329) (not e!757291))))

(declare-datatypes ((List!30895 0))(
  ( (Nil!30892) (Cons!30891 (h!32100 (_ BitVec 64)) (t!44908 List!30895)) )
))
(declare-fun arrayNoDuplicates!0 (array!89783 (_ BitVec 32) List!30895) Bool)

(assert (=> b!1328184 (= res!881329 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30892))))

(declare-fun b!1328185 () Bool)

(declare-fun res!881330 () Bool)

(assert (=> b!1328185 (=> (not res!881330) (not e!757291))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89783 (_ BitVec 32)) Bool)

(assert (=> b!1328185 (= res!881330 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapNonEmpty!56362 () Bool)

(declare-fun tp!107285 () Bool)

(assert (=> mapNonEmpty!56362 (= mapRes!56362 (and tp!107285 e!757290))))

(declare-fun mapValue!56362 () ValueCell!17331)

(declare-fun mapKey!56362 () (_ BitVec 32))

(declare-fun mapRest!56362 () (Array (_ BitVec 32) ValueCell!17331))

(assert (=> mapNonEmpty!56362 (= (arr!43352 _values!1320) (store mapRest!56362 mapKey!56362 mapValue!56362))))

(declare-fun b!1328186 () Bool)

(assert (=> b!1328186 (= e!757294 (and e!757292 mapRes!56362))))

(declare-fun condMapEmpty!56362 () Bool)

(declare-fun mapDefault!56362 () ValueCell!17331)

(assert (=> b!1328186 (= condMapEmpty!56362 (= (arr!43352 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17331)) mapDefault!56362)))))

(assert (= (and start!112190 res!881333) b!1328182))

(assert (= (and b!1328182 res!881331) b!1328185))

(assert (= (and b!1328185 res!881330) b!1328184))

(assert (= (and b!1328184 res!881329) b!1328181))

(assert (= (and b!1328181 res!881332) b!1328180))

(assert (= (and b!1328186 condMapEmpty!56362) mapIsEmpty!56362))

(assert (= (and b!1328186 (not condMapEmpty!56362)) mapNonEmpty!56362))

(get-info :version)

(assert (= (and mapNonEmpty!56362 ((_ is ValueCellFull!17331) mapValue!56362)) b!1328183))

(assert (= (and b!1328186 ((_ is ValueCellFull!17331) mapDefault!56362)) b!1328179))

(assert (= start!112190 b!1328186))

(declare-fun m!1217245 () Bool)

(assert (=> b!1328185 m!1217245))

(declare-fun m!1217247 () Bool)

(assert (=> mapNonEmpty!56362 m!1217247))

(declare-fun m!1217249 () Bool)

(assert (=> b!1328184 m!1217249))

(declare-fun m!1217251 () Bool)

(assert (=> b!1328180 m!1217251))

(assert (=> b!1328180 m!1217251))

(declare-fun m!1217253 () Bool)

(assert (=> b!1328180 m!1217253))

(declare-fun m!1217255 () Bool)

(assert (=> start!112190 m!1217255))

(declare-fun m!1217257 () Bool)

(assert (=> start!112190 m!1217257))

(declare-fun m!1217259 () Bool)

(assert (=> start!112190 m!1217259))

(check-sat b_and!49209 (not mapNonEmpty!56362) tp_is_empty!36459 (not b!1328185) (not start!112190) (not b_next!30549) (not b!1328180) (not b!1328184))
(check-sat b_and!49209 (not b_next!30549))
