; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111962 () Bool)

(assert start!111962)

(declare-fun b_free!30525 () Bool)

(declare-fun b_next!30525 () Bool)

(assert (=> start!111962 (= b_free!30525 (not b_next!30525))))

(declare-fun tp!107055 () Bool)

(declare-fun b_and!49155 () Bool)

(assert (=> start!111962 (= tp!107055 b_and!49155)))

(declare-fun b!1326367 () Bool)

(declare-fun e!756009 () Bool)

(declare-fun tp_is_empty!36345 () Bool)

(assert (=> b!1326367 (= e!756009 tp_is_empty!36345)))

(declare-fun b!1326368 () Bool)

(declare-fun res!880400 () Bool)

(declare-fun e!756007 () Bool)

(assert (=> b!1326368 (=> (not res!880400) (not e!756007))))

(declare-datatypes ((array!89557 0))(
  ( (array!89558 (arr!43247 (Array (_ BitVec 32) (_ BitVec 64))) (size!43798 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89557)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1326368 (= res!880400 (validKeyInArray!0 (select (arr!43247 _keys!1609) from!2000)))))

(declare-fun b!1326369 () Bool)

(declare-fun e!756008 () Bool)

(declare-fun mapRes!56169 () Bool)

(assert (=> b!1326369 (= e!756008 (and e!756009 mapRes!56169))))

(declare-fun condMapEmpty!56169 () Bool)

(declare-datatypes ((V!53563 0))(
  ( (V!53564 (val!18247 Int)) )
))
(declare-datatypes ((ValueCell!17274 0))(
  ( (ValueCellFull!17274 (v!20878 V!53563)) (EmptyCell!17274) )
))
(declare-datatypes ((array!89559 0))(
  ( (array!89560 (arr!43248 (Array (_ BitVec 32) ValueCell!17274)) (size!43799 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89559)

(declare-fun mapDefault!56169 () ValueCell!17274)

(assert (=> b!1326369 (= condMapEmpty!56169 (= (arr!43248 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17274)) mapDefault!56169)))))

(declare-fun b!1326370 () Bool)

(declare-fun res!880398 () Bool)

(assert (=> b!1326370 (=> (not res!880398) (not e!756007))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1326370 (= res!880398 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43798 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1326371 () Bool)

(declare-fun e!756006 () Bool)

(assert (=> b!1326371 (= e!756006 tp_is_empty!36345)))

(declare-fun b!1326372 () Bool)

(declare-fun res!880403 () Bool)

(assert (=> b!1326372 (=> (not res!880403) (not e!756007))))

(assert (=> b!1326372 (= res!880403 (not (= (select (arr!43247 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1326373 () Bool)

(declare-fun res!880401 () Bool)

(assert (=> b!1326373 (=> (not res!880401) (not e!756007))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89557 (_ BitVec 32)) Bool)

(assert (=> b!1326373 (= res!880401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun res!880402 () Bool)

(assert (=> start!111962 (=> (not res!880402) (not e!756007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111962 (= res!880402 (validMask!0 mask!2019))))

(assert (=> start!111962 e!756007))

(declare-fun array_inv!32583 (array!89557) Bool)

(assert (=> start!111962 (array_inv!32583 _keys!1609)))

(assert (=> start!111962 true))

(assert (=> start!111962 tp_is_empty!36345))

(declare-fun array_inv!32584 (array!89559) Bool)

(assert (=> start!111962 (and (array_inv!32584 _values!1337) e!756008)))

(assert (=> start!111962 tp!107055))

(declare-fun b!1326374 () Bool)

(declare-fun res!880397 () Bool)

(assert (=> b!1326374 (=> (not res!880397) (not e!756007))))

(assert (=> b!1326374 (= res!880397 (and (= (size!43799 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43798 _keys!1609) (size!43799 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1326375 () Bool)

(declare-fun res!880404 () Bool)

(assert (=> b!1326375 (=> (not res!880404) (not e!756007))))

(declare-fun minValue!1279 () V!53563)

(declare-fun defaultEntry!1340 () Int)

(declare-fun zeroValue!1279 () V!53563)

(declare-datatypes ((tuple2!23692 0))(
  ( (tuple2!23693 (_1!11856 (_ BitVec 64)) (_2!11856 V!53563)) )
))
(declare-datatypes ((List!30857 0))(
  ( (Nil!30854) (Cons!30853 (h!32062 tuple2!23692) (t!44860 List!30857)) )
))
(declare-datatypes ((ListLongMap!21361 0))(
  ( (ListLongMap!21362 (toList!10696 List!30857)) )
))
(declare-fun contains!8789 (ListLongMap!21361 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5628 (array!89557 array!89559 (_ BitVec 32) (_ BitVec 32) V!53563 V!53563 (_ BitVec 32) Int) ListLongMap!21361)

(assert (=> b!1326375 (= res!880404 (contains!8789 (getCurrentListMap!5628 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun mapIsEmpty!56169 () Bool)

(assert (=> mapIsEmpty!56169 mapRes!56169))

(declare-fun b!1326376 () Bool)

(declare-fun res!880399 () Bool)

(assert (=> b!1326376 (=> (not res!880399) (not e!756007))))

(declare-datatypes ((List!30858 0))(
  ( (Nil!30855) (Cons!30854 (h!32063 (_ BitVec 64)) (t!44861 List!30858)) )
))
(declare-fun arrayNoDuplicates!0 (array!89557 (_ BitVec 32) List!30858) Bool)

(assert (=> b!1326376 (= res!880399 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30855))))

(declare-fun mapNonEmpty!56169 () Bool)

(declare-fun tp!107056 () Bool)

(assert (=> mapNonEmpty!56169 (= mapRes!56169 (and tp!107056 e!756006))))

(declare-fun mapRest!56169 () (Array (_ BitVec 32) ValueCell!17274))

(declare-fun mapValue!56169 () ValueCell!17274)

(declare-fun mapKey!56169 () (_ BitVec 32))

(assert (=> mapNonEmpty!56169 (= (arr!43248 _values!1337) (store mapRest!56169 mapKey!56169 mapValue!56169))))

(declare-fun b!1326377 () Bool)

(assert (=> b!1326377 (= e!756007 (not true))))

(declare-fun lt!590042 () ListLongMap!21361)

(declare-fun lt!590049 () tuple2!23692)

(declare-fun +!4611 (ListLongMap!21361 tuple2!23692) ListLongMap!21361)

(assert (=> b!1326377 (contains!8789 (+!4611 lt!590042 lt!590049) k0!1164)))

(declare-datatypes ((Unit!43628 0))(
  ( (Unit!43629) )
))
(declare-fun lt!590045 () Unit!43628)

(declare-fun addStillContains!1168 (ListLongMap!21361 (_ BitVec 64) V!53563 (_ BitVec 64)) Unit!43628)

(assert (=> b!1326377 (= lt!590045 (addStillContains!1168 lt!590042 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1326377 (contains!8789 lt!590042 k0!1164)))

(declare-fun lt!590043 () Unit!43628)

(declare-fun lt!590047 () V!53563)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!221 ((_ BitVec 64) (_ BitVec 64) V!53563 ListLongMap!21361) Unit!43628)

(assert (=> b!1326377 (= lt!590043 (lemmaInListMapAfterAddingDiffThenInBefore!221 k0!1164 (select (arr!43247 _keys!1609) from!2000) lt!590047 lt!590042))))

(declare-fun lt!590044 () ListLongMap!21361)

(assert (=> b!1326377 (contains!8789 lt!590044 k0!1164)))

(declare-fun lt!590048 () Unit!43628)

(assert (=> b!1326377 (= lt!590048 (lemmaInListMapAfterAddingDiffThenInBefore!221 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!590044))))

(declare-fun lt!590046 () ListLongMap!21361)

(assert (=> b!1326377 (contains!8789 lt!590046 k0!1164)))

(declare-fun lt!590050 () Unit!43628)

(assert (=> b!1326377 (= lt!590050 (lemmaInListMapAfterAddingDiffThenInBefore!221 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!590046))))

(assert (=> b!1326377 (= lt!590046 (+!4611 lt!590044 lt!590049))))

(assert (=> b!1326377 (= lt!590049 (tuple2!23693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1326377 (= lt!590044 (+!4611 lt!590042 (tuple2!23693 (select (arr!43247 _keys!1609) from!2000) lt!590047)))))

(declare-fun get!21836 (ValueCell!17274 V!53563) V!53563)

(declare-fun dynLambda!3648 (Int (_ BitVec 64)) V!53563)

(assert (=> b!1326377 (= lt!590047 (get!21836 (select (arr!43248 _values!1337) from!2000) (dynLambda!3648 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6329 (array!89557 array!89559 (_ BitVec 32) (_ BitVec 32) V!53563 V!53563 (_ BitVec 32) Int) ListLongMap!21361)

(assert (=> b!1326377 (= lt!590042 (getCurrentListMapNoExtraKeys!6329 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(assert (= (and start!111962 res!880402) b!1326374))

(assert (= (and b!1326374 res!880397) b!1326373))

(assert (= (and b!1326373 res!880401) b!1326376))

(assert (= (and b!1326376 res!880399) b!1326370))

(assert (= (and b!1326370 res!880398) b!1326375))

(assert (= (and b!1326375 res!880404) b!1326372))

(assert (= (and b!1326372 res!880403) b!1326368))

(assert (= (and b!1326368 res!880400) b!1326377))

(assert (= (and b!1326369 condMapEmpty!56169) mapIsEmpty!56169))

(assert (= (and b!1326369 (not condMapEmpty!56169)) mapNonEmpty!56169))

(get-info :version)

(assert (= (and mapNonEmpty!56169 ((_ is ValueCellFull!17274) mapValue!56169)) b!1326371))

(assert (= (and b!1326369 ((_ is ValueCellFull!17274) mapDefault!56169)) b!1326367))

(assert (= start!111962 b!1326369))

(declare-fun b_lambda!23813 () Bool)

(assert (=> (not b_lambda!23813) (not b!1326377)))

(declare-fun t!44859 () Bool)

(declare-fun tb!11807 () Bool)

(assert (=> (and start!111962 (= defaultEntry!1340 defaultEntry!1340) t!44859) tb!11807))

(declare-fun result!24663 () Bool)

(assert (=> tb!11807 (= result!24663 tp_is_empty!36345)))

(assert (=> b!1326377 t!44859))

(declare-fun b_and!49157 () Bool)

(assert (= b_and!49155 (and (=> t!44859 result!24663) b_and!49157)))

(declare-fun m!1215411 () Bool)

(assert (=> b!1326377 m!1215411))

(declare-fun m!1215413 () Bool)

(assert (=> b!1326377 m!1215413))

(declare-fun m!1215415 () Bool)

(assert (=> b!1326377 m!1215415))

(declare-fun m!1215417 () Bool)

(assert (=> b!1326377 m!1215417))

(declare-fun m!1215419 () Bool)

(assert (=> b!1326377 m!1215419))

(declare-fun m!1215421 () Bool)

(assert (=> b!1326377 m!1215421))

(declare-fun m!1215423 () Bool)

(assert (=> b!1326377 m!1215423))

(declare-fun m!1215425 () Bool)

(assert (=> b!1326377 m!1215425))

(declare-fun m!1215427 () Bool)

(assert (=> b!1326377 m!1215427))

(assert (=> b!1326377 m!1215415))

(declare-fun m!1215429 () Bool)

(assert (=> b!1326377 m!1215429))

(declare-fun m!1215431 () Bool)

(assert (=> b!1326377 m!1215431))

(declare-fun m!1215433 () Bool)

(assert (=> b!1326377 m!1215433))

(declare-fun m!1215435 () Bool)

(assert (=> b!1326377 m!1215435))

(assert (=> b!1326377 m!1215427))

(assert (=> b!1326377 m!1215419))

(declare-fun m!1215437 () Bool)

(assert (=> b!1326377 m!1215437))

(declare-fun m!1215439 () Bool)

(assert (=> b!1326377 m!1215439))

(assert (=> b!1326377 m!1215431))

(declare-fun m!1215441 () Bool)

(assert (=> b!1326377 m!1215441))

(declare-fun m!1215443 () Bool)

(assert (=> b!1326375 m!1215443))

(assert (=> b!1326375 m!1215443))

(declare-fun m!1215445 () Bool)

(assert (=> b!1326375 m!1215445))

(declare-fun m!1215447 () Bool)

(assert (=> mapNonEmpty!56169 m!1215447))

(assert (=> b!1326372 m!1215431))

(declare-fun m!1215449 () Bool)

(assert (=> b!1326376 m!1215449))

(declare-fun m!1215451 () Bool)

(assert (=> b!1326373 m!1215451))

(declare-fun m!1215453 () Bool)

(assert (=> start!111962 m!1215453))

(declare-fun m!1215455 () Bool)

(assert (=> start!111962 m!1215455))

(declare-fun m!1215457 () Bool)

(assert (=> start!111962 m!1215457))

(assert (=> b!1326368 m!1215431))

(assert (=> b!1326368 m!1215431))

(declare-fun m!1215459 () Bool)

(assert (=> b!1326368 m!1215459))

(check-sat (not b!1326373) (not b!1326377) (not b!1326368) (not b_next!30525) (not start!111962) (not mapNonEmpty!56169) tp_is_empty!36345 b_and!49157 (not b_lambda!23813) (not b!1326376) (not b!1326375))
(check-sat b_and!49157 (not b_next!30525))
