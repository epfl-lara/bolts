; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112214 () Bool)

(assert start!112214)

(declare-fun b_free!30573 () Bool)

(declare-fun b_next!30573 () Bool)

(assert (=> start!112214 (= b_free!30573 (not b_next!30573))))

(declare-fun tp!107357 () Bool)

(declare-fun b_and!49233 () Bool)

(assert (=> start!112214 (= tp!107357 b_and!49233)))

(declare-fun b!1328467 () Bool)

(declare-fun e!757474 () Bool)

(assert (=> b!1328467 (= e!757474 false)))

(declare-datatypes ((V!53747 0))(
  ( (V!53748 (val!18316 Int)) )
))
(declare-datatypes ((ValueCell!17343 0))(
  ( (ValueCellFull!17343 (v!20951 V!53747)) (EmptyCell!17343) )
))
(declare-datatypes ((array!89827 0))(
  ( (array!89828 (arr!43375 (Array (_ BitVec 32) ValueCell!17343)) (size!43926 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89827)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89829 0))(
  ( (array!89830 (arr!43376 (Array (_ BitVec 32) (_ BitVec 64))) (size!43927 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89829)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun lt!590789 () Bool)

(declare-fun minValue!1262 () V!53747)

(declare-fun zeroValue!1262 () V!53747)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23726 0))(
  ( (tuple2!23727 (_1!11873 (_ BitVec 64)) (_2!11873 V!53747)) )
))
(declare-datatypes ((List!30913 0))(
  ( (Nil!30910) (Cons!30909 (h!32118 tuple2!23726) (t!44926 List!30913)) )
))
(declare-datatypes ((ListLongMap!21395 0))(
  ( (ListLongMap!21396 (toList!10713 List!30913)) )
))
(declare-fun contains!8813 (ListLongMap!21395 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5645 (array!89829 array!89827 (_ BitVec 32) (_ BitVec 32) V!53747 V!53747 (_ BitVec 32) Int) ListLongMap!21395)

(assert (=> b!1328467 (= lt!590789 (contains!8813 (getCurrentListMap!5645 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun res!881512 () Bool)

(assert (=> start!112214 (=> (not res!881512) (not e!757474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112214 (= res!881512 (validMask!0 mask!1998))))

(assert (=> start!112214 e!757474))

(declare-fun e!757473 () Bool)

(declare-fun array_inv!32683 (array!89827) Bool)

(assert (=> start!112214 (and (array_inv!32683 _values!1320) e!757473)))

(assert (=> start!112214 true))

(declare-fun array_inv!32684 (array!89829) Bool)

(assert (=> start!112214 (array_inv!32684 _keys!1590)))

(assert (=> start!112214 tp!107357))

(declare-fun tp_is_empty!36483 () Bool)

(assert (=> start!112214 tp_is_empty!36483))

(declare-fun b!1328468 () Bool)

(declare-fun e!757470 () Bool)

(declare-fun mapRes!56398 () Bool)

(assert (=> b!1328468 (= e!757473 (and e!757470 mapRes!56398))))

(declare-fun condMapEmpty!56398 () Bool)

(declare-fun mapDefault!56398 () ValueCell!17343)

(assert (=> b!1328468 (= condMapEmpty!56398 (= (arr!43375 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17343)) mapDefault!56398)))))

(declare-fun b!1328469 () Bool)

(declare-fun res!881513 () Bool)

(assert (=> b!1328469 (=> (not res!881513) (not e!757474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89829 (_ BitVec 32)) Bool)

(assert (=> b!1328469 (= res!881513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1328470 () Bool)

(declare-fun res!881510 () Bool)

(assert (=> b!1328470 (=> (not res!881510) (not e!757474))))

(assert (=> b!1328470 (= res!881510 (and (= (size!43926 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43927 _keys!1590) (size!43926 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1328471 () Bool)

(declare-fun e!757471 () Bool)

(assert (=> b!1328471 (= e!757471 tp_is_empty!36483)))

(declare-fun b!1328472 () Bool)

(declare-fun res!881509 () Bool)

(assert (=> b!1328472 (=> (not res!881509) (not e!757474))))

(assert (=> b!1328472 (= res!881509 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43927 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1328473 () Bool)

(assert (=> b!1328473 (= e!757470 tp_is_empty!36483)))

(declare-fun mapIsEmpty!56398 () Bool)

(assert (=> mapIsEmpty!56398 mapRes!56398))

(declare-fun mapNonEmpty!56398 () Bool)

(declare-fun tp!107356 () Bool)

(assert (=> mapNonEmpty!56398 (= mapRes!56398 (and tp!107356 e!757471))))

(declare-fun mapValue!56398 () ValueCell!17343)

(declare-fun mapKey!56398 () (_ BitVec 32))

(declare-fun mapRest!56398 () (Array (_ BitVec 32) ValueCell!17343))

(assert (=> mapNonEmpty!56398 (= (arr!43375 _values!1320) (store mapRest!56398 mapKey!56398 mapValue!56398))))

(declare-fun b!1328474 () Bool)

(declare-fun res!881511 () Bool)

(assert (=> b!1328474 (=> (not res!881511) (not e!757474))))

(declare-datatypes ((List!30914 0))(
  ( (Nil!30911) (Cons!30910 (h!32119 (_ BitVec 64)) (t!44927 List!30914)) )
))
(declare-fun arrayNoDuplicates!0 (array!89829 (_ BitVec 32) List!30914) Bool)

(assert (=> b!1328474 (= res!881511 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30911))))

(assert (= (and start!112214 res!881512) b!1328470))

(assert (= (and b!1328470 res!881510) b!1328469))

(assert (= (and b!1328469 res!881513) b!1328474))

(assert (= (and b!1328474 res!881511) b!1328472))

(assert (= (and b!1328472 res!881509) b!1328467))

(assert (= (and b!1328468 condMapEmpty!56398) mapIsEmpty!56398))

(assert (= (and b!1328468 (not condMapEmpty!56398)) mapNonEmpty!56398))

(get-info :version)

(assert (= (and mapNonEmpty!56398 ((_ is ValueCellFull!17343) mapValue!56398)) b!1328471))

(assert (= (and b!1328468 ((_ is ValueCellFull!17343) mapDefault!56398)) b!1328473))

(assert (= start!112214 b!1328468))

(declare-fun m!1217437 () Bool)

(assert (=> b!1328467 m!1217437))

(assert (=> b!1328467 m!1217437))

(declare-fun m!1217439 () Bool)

(assert (=> b!1328467 m!1217439))

(declare-fun m!1217441 () Bool)

(assert (=> mapNonEmpty!56398 m!1217441))

(declare-fun m!1217443 () Bool)

(assert (=> b!1328474 m!1217443))

(declare-fun m!1217445 () Bool)

(assert (=> b!1328469 m!1217445))

(declare-fun m!1217447 () Bool)

(assert (=> start!112214 m!1217447))

(declare-fun m!1217449 () Bool)

(assert (=> start!112214 m!1217449))

(declare-fun m!1217451 () Bool)

(assert (=> start!112214 m!1217451))

(check-sat b_and!49233 (not b!1328467) (not start!112214) (not b!1328469) (not mapNonEmpty!56398) tp_is_empty!36483 (not b!1328474) (not b_next!30573))
(check-sat b_and!49233 (not b_next!30573))
