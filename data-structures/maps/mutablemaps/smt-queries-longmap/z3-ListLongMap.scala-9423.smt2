; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112184 () Bool)

(assert start!112184)

(declare-fun b_free!30543 () Bool)

(declare-fun b_next!30543 () Bool)

(assert (=> start!112184 (= b_free!30543 (not b_next!30543))))

(declare-fun tp!107267 () Bool)

(declare-fun b_and!49203 () Bool)

(assert (=> start!112184 (= tp!107267 b_and!49203)))

(declare-fun b!1328107 () Bool)

(declare-fun e!757248 () Bool)

(assert (=> b!1328107 (= e!757248 false)))

(declare-datatypes ((V!53707 0))(
  ( (V!53708 (val!18301 Int)) )
))
(declare-datatypes ((ValueCell!17328 0))(
  ( (ValueCellFull!17328 (v!20936 V!53707)) (EmptyCell!17328) )
))
(declare-datatypes ((array!89769 0))(
  ( (array!89770 (arr!43346 (Array (_ BitVec 32) ValueCell!17328)) (size!43897 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89769)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89771 0))(
  ( (array!89772 (arr!43347 (Array (_ BitVec 32) (_ BitVec 64))) (size!43898 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89771)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53707)

(declare-fun lt!590744 () Bool)

(declare-fun zeroValue!1262 () V!53707)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23706 0))(
  ( (tuple2!23707 (_1!11863 (_ BitVec 64)) (_2!11863 V!53707)) )
))
(declare-datatypes ((List!30891 0))(
  ( (Nil!30888) (Cons!30887 (h!32096 tuple2!23706) (t!44904 List!30891)) )
))
(declare-datatypes ((ListLongMap!21375 0))(
  ( (ListLongMap!21376 (toList!10703 List!30891)) )
))
(declare-fun contains!8803 (ListLongMap!21375 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5635 (array!89771 array!89769 (_ BitVec 32) (_ BitVec 32) V!53707 V!53707 (_ BitVec 32) Int) ListLongMap!21375)

(assert (=> b!1328107 (= lt!590744 (contains!8803 (getCurrentListMap!5635 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1328108 () Bool)

(declare-fun e!757245 () Bool)

(declare-fun e!757249 () Bool)

(declare-fun mapRes!56353 () Bool)

(assert (=> b!1328108 (= e!757245 (and e!757249 mapRes!56353))))

(declare-fun condMapEmpty!56353 () Bool)

(declare-fun mapDefault!56353 () ValueCell!17328)

(assert (=> b!1328108 (= condMapEmpty!56353 (= (arr!43346 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17328)) mapDefault!56353)))))

(declare-fun b!1328109 () Bool)

(declare-fun res!881285 () Bool)

(assert (=> b!1328109 (=> (not res!881285) (not e!757248))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89771 (_ BitVec 32)) Bool)

(assert (=> b!1328109 (= res!881285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1328110 () Bool)

(declare-fun res!881287 () Bool)

(assert (=> b!1328110 (=> (not res!881287) (not e!757248))))

(declare-datatypes ((List!30892 0))(
  ( (Nil!30889) (Cons!30888 (h!32097 (_ BitVec 64)) (t!44905 List!30892)) )
))
(declare-fun arrayNoDuplicates!0 (array!89771 (_ BitVec 32) List!30892) Bool)

(assert (=> b!1328110 (= res!881287 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30889))))

(declare-fun mapNonEmpty!56353 () Bool)

(declare-fun tp!107266 () Bool)

(declare-fun e!757246 () Bool)

(assert (=> mapNonEmpty!56353 (= mapRes!56353 (and tp!107266 e!757246))))

(declare-fun mapValue!56353 () ValueCell!17328)

(declare-fun mapRest!56353 () (Array (_ BitVec 32) ValueCell!17328))

(declare-fun mapKey!56353 () (_ BitVec 32))

(assert (=> mapNonEmpty!56353 (= (arr!43346 _values!1320) (store mapRest!56353 mapKey!56353 mapValue!56353))))

(declare-fun b!1328111 () Bool)

(declare-fun tp_is_empty!36453 () Bool)

(assert (=> b!1328111 (= e!757249 tp_is_empty!36453)))

(declare-fun b!1328112 () Bool)

(assert (=> b!1328112 (= e!757246 tp_is_empty!36453)))

(declare-fun res!881286 () Bool)

(assert (=> start!112184 (=> (not res!881286) (not e!757248))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112184 (= res!881286 (validMask!0 mask!1998))))

(assert (=> start!112184 e!757248))

(declare-fun array_inv!32657 (array!89769) Bool)

(assert (=> start!112184 (and (array_inv!32657 _values!1320) e!757245)))

(assert (=> start!112184 true))

(declare-fun array_inv!32658 (array!89771) Bool)

(assert (=> start!112184 (array_inv!32658 _keys!1590)))

(assert (=> start!112184 tp!107267))

(assert (=> start!112184 tp_is_empty!36453))

(declare-fun mapIsEmpty!56353 () Bool)

(assert (=> mapIsEmpty!56353 mapRes!56353))

(declare-fun b!1328113 () Bool)

(declare-fun res!881284 () Bool)

(assert (=> b!1328113 (=> (not res!881284) (not e!757248))))

(assert (=> b!1328113 (= res!881284 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43898 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1328114 () Bool)

(declare-fun res!881288 () Bool)

(assert (=> b!1328114 (=> (not res!881288) (not e!757248))))

(assert (=> b!1328114 (= res!881288 (and (= (size!43897 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43898 _keys!1590) (size!43897 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(assert (= (and start!112184 res!881286) b!1328114))

(assert (= (and b!1328114 res!881288) b!1328109))

(assert (= (and b!1328109 res!881285) b!1328110))

(assert (= (and b!1328110 res!881287) b!1328113))

(assert (= (and b!1328113 res!881284) b!1328107))

(assert (= (and b!1328108 condMapEmpty!56353) mapIsEmpty!56353))

(assert (= (and b!1328108 (not condMapEmpty!56353)) mapNonEmpty!56353))

(get-info :version)

(assert (= (and mapNonEmpty!56353 ((_ is ValueCellFull!17328) mapValue!56353)) b!1328112))

(assert (= (and b!1328108 ((_ is ValueCellFull!17328) mapDefault!56353)) b!1328111))

(assert (= start!112184 b!1328108))

(declare-fun m!1217197 () Bool)

(assert (=> start!112184 m!1217197))

(declare-fun m!1217199 () Bool)

(assert (=> start!112184 m!1217199))

(declare-fun m!1217201 () Bool)

(assert (=> start!112184 m!1217201))

(declare-fun m!1217203 () Bool)

(assert (=> b!1328110 m!1217203))

(declare-fun m!1217205 () Bool)

(assert (=> b!1328107 m!1217205))

(assert (=> b!1328107 m!1217205))

(declare-fun m!1217207 () Bool)

(assert (=> b!1328107 m!1217207))

(declare-fun m!1217209 () Bool)

(assert (=> b!1328109 m!1217209))

(declare-fun m!1217211 () Bool)

(assert (=> mapNonEmpty!56353 m!1217211))

(check-sat (not b!1328110) (not b_next!30543) b_and!49203 (not start!112184) tp_is_empty!36453 (not mapNonEmpty!56353) (not b!1328109) (not b!1328107))
(check-sat b_and!49203 (not b_next!30543))
