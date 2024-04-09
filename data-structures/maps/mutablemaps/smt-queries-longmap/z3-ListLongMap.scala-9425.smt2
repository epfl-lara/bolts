; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112196 () Bool)

(assert start!112196)

(declare-fun b_free!30555 () Bool)

(declare-fun b_next!30555 () Bool)

(assert (=> start!112196 (= b_free!30555 (not b_next!30555))))

(declare-fun tp!107302 () Bool)

(declare-fun b_and!49215 () Bool)

(assert (=> start!112196 (= tp!107302 b_and!49215)))

(declare-fun b!1328251 () Bool)

(declare-fun e!757338 () Bool)

(declare-fun e!757335 () Bool)

(declare-fun mapRes!56371 () Bool)

(assert (=> b!1328251 (= e!757338 (and e!757335 mapRes!56371))))

(declare-fun condMapEmpty!56371 () Bool)

(declare-datatypes ((V!53723 0))(
  ( (V!53724 (val!18307 Int)) )
))
(declare-datatypes ((ValueCell!17334 0))(
  ( (ValueCellFull!17334 (v!20942 V!53723)) (EmptyCell!17334) )
))
(declare-datatypes ((array!89793 0))(
  ( (array!89794 (arr!43358 (Array (_ BitVec 32) ValueCell!17334)) (size!43909 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89793)

(declare-fun mapDefault!56371 () ValueCell!17334)

(assert (=> b!1328251 (= condMapEmpty!56371 (= (arr!43358 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17334)) mapDefault!56371)))))

(declare-fun b!1328252 () Bool)

(declare-fun res!881378 () Bool)

(declare-fun e!757337 () Bool)

(assert (=> b!1328252 (=> (not res!881378) (not e!757337))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89795 0))(
  ( (array!89796 (arr!43359 (Array (_ BitVec 32) (_ BitVec 64))) (size!43910 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89795)

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1328252 (= res!881378 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43910 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!881376 () Bool)

(assert (=> start!112196 (=> (not res!881376) (not e!757337))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112196 (= res!881376 (validMask!0 mask!1998))))

(assert (=> start!112196 e!757337))

(declare-fun array_inv!32667 (array!89793) Bool)

(assert (=> start!112196 (and (array_inv!32667 _values!1320) e!757338)))

(assert (=> start!112196 true))

(declare-fun array_inv!32668 (array!89795) Bool)

(assert (=> start!112196 (array_inv!32668 _keys!1590)))

(assert (=> start!112196 tp!107302))

(declare-fun tp_is_empty!36465 () Bool)

(assert (=> start!112196 tp_is_empty!36465))

(declare-fun b!1328253 () Bool)

(declare-fun res!881374 () Bool)

(assert (=> b!1328253 (=> (not res!881374) (not e!757337))))

(declare-datatypes ((List!30900 0))(
  ( (Nil!30897) (Cons!30896 (h!32105 (_ BitVec 64)) (t!44913 List!30900)) )
))
(declare-fun arrayNoDuplicates!0 (array!89795 (_ BitVec 32) List!30900) Bool)

(assert (=> b!1328253 (= res!881374 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30897))))

(declare-fun mapNonEmpty!56371 () Bool)

(declare-fun tp!107303 () Bool)

(declare-fun e!757339 () Bool)

(assert (=> mapNonEmpty!56371 (= mapRes!56371 (and tp!107303 e!757339))))

(declare-fun mapValue!56371 () ValueCell!17334)

(declare-fun mapRest!56371 () (Array (_ BitVec 32) ValueCell!17334))

(declare-fun mapKey!56371 () (_ BitVec 32))

(assert (=> mapNonEmpty!56371 (= (arr!43358 _values!1320) (store mapRest!56371 mapKey!56371 mapValue!56371))))

(declare-fun b!1328254 () Bool)

(assert (=> b!1328254 (= e!757339 tp_is_empty!36465)))

(declare-fun mapIsEmpty!56371 () Bool)

(assert (=> mapIsEmpty!56371 mapRes!56371))

(declare-fun b!1328255 () Bool)

(declare-fun res!881377 () Bool)

(assert (=> b!1328255 (=> (not res!881377) (not e!757337))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89795 (_ BitVec 32)) Bool)

(assert (=> b!1328255 (= res!881377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1328256 () Bool)

(assert (=> b!1328256 (= e!757337 false)))

(declare-fun lt!590762 () Bool)

(declare-fun minValue!1262 () V!53723)

(declare-fun zeroValue!1262 () V!53723)

(declare-fun defaultEntry!1323 () Int)

(declare-datatypes ((tuple2!23714 0))(
  ( (tuple2!23715 (_1!11867 (_ BitVec 64)) (_2!11867 V!53723)) )
))
(declare-datatypes ((List!30901 0))(
  ( (Nil!30898) (Cons!30897 (h!32106 tuple2!23714) (t!44914 List!30901)) )
))
(declare-datatypes ((ListLongMap!21383 0))(
  ( (ListLongMap!21384 (toList!10707 List!30901)) )
))
(declare-fun contains!8807 (ListLongMap!21383 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5639 (array!89795 array!89793 (_ BitVec 32) (_ BitVec 32) V!53723 V!53723 (_ BitVec 32) Int) ListLongMap!21383)

(assert (=> b!1328256 (= lt!590762 (contains!8807 (getCurrentListMap!5639 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1328257 () Bool)

(declare-fun res!881375 () Bool)

(assert (=> b!1328257 (=> (not res!881375) (not e!757337))))

(assert (=> b!1328257 (= res!881375 (and (= (size!43909 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43910 _keys!1590) (size!43909 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1328258 () Bool)

(assert (=> b!1328258 (= e!757335 tp_is_empty!36465)))

(assert (= (and start!112196 res!881376) b!1328257))

(assert (= (and b!1328257 res!881375) b!1328255))

(assert (= (and b!1328255 res!881377) b!1328253))

(assert (= (and b!1328253 res!881374) b!1328252))

(assert (= (and b!1328252 res!881378) b!1328256))

(assert (= (and b!1328251 condMapEmpty!56371) mapIsEmpty!56371))

(assert (= (and b!1328251 (not condMapEmpty!56371)) mapNonEmpty!56371))

(get-info :version)

(assert (= (and mapNonEmpty!56371 ((_ is ValueCellFull!17334) mapValue!56371)) b!1328254))

(assert (= (and b!1328251 ((_ is ValueCellFull!17334) mapDefault!56371)) b!1328258))

(assert (= start!112196 b!1328251))

(declare-fun m!1217293 () Bool)

(assert (=> b!1328253 m!1217293))

(declare-fun m!1217295 () Bool)

(assert (=> start!112196 m!1217295))

(declare-fun m!1217297 () Bool)

(assert (=> start!112196 m!1217297))

(declare-fun m!1217299 () Bool)

(assert (=> start!112196 m!1217299))

(declare-fun m!1217301 () Bool)

(assert (=> b!1328255 m!1217301))

(declare-fun m!1217303 () Bool)

(assert (=> mapNonEmpty!56371 m!1217303))

(declare-fun m!1217305 () Bool)

(assert (=> b!1328256 m!1217305))

(assert (=> b!1328256 m!1217305))

(declare-fun m!1217307 () Bool)

(assert (=> b!1328256 m!1217307))

(check-sat (not b_next!30555) (not mapNonEmpty!56371) (not start!112196) (not b!1328253) (not b!1328255) tp_is_empty!36465 (not b!1328256) b_and!49215)
(check-sat b_and!49215 (not b_next!30555))
