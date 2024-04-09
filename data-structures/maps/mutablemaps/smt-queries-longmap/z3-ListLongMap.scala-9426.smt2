; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112202 () Bool)

(assert start!112202)

(declare-fun b_free!30561 () Bool)

(declare-fun b_next!30561 () Bool)

(assert (=> start!112202 (= b_free!30561 (not b_next!30561))))

(declare-fun tp!107321 () Bool)

(declare-fun b_and!49221 () Bool)

(assert (=> start!112202 (= tp!107321 b_and!49221)))

(declare-fun b!1328323 () Bool)

(declare-fun e!757380 () Bool)

(declare-fun tp_is_empty!36471 () Bool)

(assert (=> b!1328323 (= e!757380 tp_is_empty!36471)))

(declare-fun b!1328324 () Bool)

(declare-fun res!881421 () Bool)

(declare-fun e!757382 () Bool)

(assert (=> b!1328324 (=> (not res!881421) (not e!757382))))

(declare-datatypes ((array!89805 0))(
  ( (array!89806 (arr!43364 (Array (_ BitVec 32) (_ BitVec 64))) (size!43915 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89805)

(declare-datatypes ((List!30905 0))(
  ( (Nil!30902) (Cons!30901 (h!32110 (_ BitVec 64)) (t!44918 List!30905)) )
))
(declare-fun arrayNoDuplicates!0 (array!89805 (_ BitVec 32) List!30905) Bool)

(assert (=> b!1328324 (= res!881421 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30902))))

(declare-fun res!881422 () Bool)

(assert (=> start!112202 (=> (not res!881422) (not e!757382))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112202 (= res!881422 (validMask!0 mask!1998))))

(assert (=> start!112202 e!757382))

(declare-datatypes ((V!53731 0))(
  ( (V!53732 (val!18310 Int)) )
))
(declare-datatypes ((ValueCell!17337 0))(
  ( (ValueCellFull!17337 (v!20945 V!53731)) (EmptyCell!17337) )
))
(declare-datatypes ((array!89807 0))(
  ( (array!89808 (arr!43365 (Array (_ BitVec 32) ValueCell!17337)) (size!43916 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89807)

(declare-fun e!757383 () Bool)

(declare-fun array_inv!32673 (array!89807) Bool)

(assert (=> start!112202 (and (array_inv!32673 _values!1320) e!757383)))

(assert (=> start!112202 true))

(declare-fun array_inv!32674 (array!89805) Bool)

(assert (=> start!112202 (array_inv!32674 _keys!1590)))

(assert (=> start!112202 tp!107321))

(assert (=> start!112202 tp_is_empty!36471))

(declare-fun mapNonEmpty!56380 () Bool)

(declare-fun mapRes!56380 () Bool)

(declare-fun tp!107320 () Bool)

(declare-fun e!757381 () Bool)

(assert (=> mapNonEmpty!56380 (= mapRes!56380 (and tp!107320 e!757381))))

(declare-fun mapKey!56380 () (_ BitVec 32))

(declare-fun mapRest!56380 () (Array (_ BitVec 32) ValueCell!17337))

(declare-fun mapValue!56380 () ValueCell!17337)

(assert (=> mapNonEmpty!56380 (= (arr!43365 _values!1320) (store mapRest!56380 mapKey!56380 mapValue!56380))))

(declare-fun b!1328325 () Bool)

(assert (=> b!1328325 (= e!757382 false)))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun lt!590771 () Bool)

(declare-fun minValue!1262 () V!53731)

(declare-fun zeroValue!1262 () V!53731)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23718 0))(
  ( (tuple2!23719 (_1!11869 (_ BitVec 64)) (_2!11869 V!53731)) )
))
(declare-datatypes ((List!30906 0))(
  ( (Nil!30903) (Cons!30902 (h!32111 tuple2!23718) (t!44919 List!30906)) )
))
(declare-datatypes ((ListLongMap!21387 0))(
  ( (ListLongMap!21388 (toList!10709 List!30906)) )
))
(declare-fun contains!8809 (ListLongMap!21387 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5641 (array!89805 array!89807 (_ BitVec 32) (_ BitVec 32) V!53731 V!53731 (_ BitVec 32) Int) ListLongMap!21387)

(assert (=> b!1328325 (= lt!590771 (contains!8809 (getCurrentListMap!5641 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1328326 () Bool)

(assert (=> b!1328326 (= e!757381 tp_is_empty!36471)))

(declare-fun b!1328327 () Bool)

(assert (=> b!1328327 (= e!757383 (and e!757380 mapRes!56380))))

(declare-fun condMapEmpty!56380 () Bool)

(declare-fun mapDefault!56380 () ValueCell!17337)

(assert (=> b!1328327 (= condMapEmpty!56380 (= (arr!43365 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17337)) mapDefault!56380)))))

(declare-fun mapIsEmpty!56380 () Bool)

(assert (=> mapIsEmpty!56380 mapRes!56380))

(declare-fun b!1328328 () Bool)

(declare-fun res!881420 () Bool)

(assert (=> b!1328328 (=> (not res!881420) (not e!757382))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89805 (_ BitVec 32)) Bool)

(assert (=> b!1328328 (= res!881420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1328329 () Bool)

(declare-fun res!881423 () Bool)

(assert (=> b!1328329 (=> (not res!881423) (not e!757382))))

(assert (=> b!1328329 (= res!881423 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43915 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1328330 () Bool)

(declare-fun res!881419 () Bool)

(assert (=> b!1328330 (=> (not res!881419) (not e!757382))))

(assert (=> b!1328330 (= res!881419 (and (= (size!43916 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43915 _keys!1590) (size!43916 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(assert (= (and start!112202 res!881422) b!1328330))

(assert (= (and b!1328330 res!881419) b!1328328))

(assert (= (and b!1328328 res!881420) b!1328324))

(assert (= (and b!1328324 res!881421) b!1328329))

(assert (= (and b!1328329 res!881423) b!1328325))

(assert (= (and b!1328327 condMapEmpty!56380) mapIsEmpty!56380))

(assert (= (and b!1328327 (not condMapEmpty!56380)) mapNonEmpty!56380))

(get-info :version)

(assert (= (and mapNonEmpty!56380 ((_ is ValueCellFull!17337) mapValue!56380)) b!1328326))

(assert (= (and b!1328327 ((_ is ValueCellFull!17337) mapDefault!56380)) b!1328323))

(assert (= start!112202 b!1328327))

(declare-fun m!1217341 () Bool)

(assert (=> b!1328328 m!1217341))

(declare-fun m!1217343 () Bool)

(assert (=> b!1328324 m!1217343))

(declare-fun m!1217345 () Bool)

(assert (=> mapNonEmpty!56380 m!1217345))

(declare-fun m!1217347 () Bool)

(assert (=> start!112202 m!1217347))

(declare-fun m!1217349 () Bool)

(assert (=> start!112202 m!1217349))

(declare-fun m!1217351 () Bool)

(assert (=> start!112202 m!1217351))

(declare-fun m!1217353 () Bool)

(assert (=> b!1328325 m!1217353))

(assert (=> b!1328325 m!1217353))

(declare-fun m!1217355 () Bool)

(assert (=> b!1328325 m!1217355))

(check-sat (not b!1328328) b_and!49221 (not b_next!30561) (not mapNonEmpty!56380) (not start!112202) tp_is_empty!36471 (not b!1328324) (not b!1328325))
(check-sat b_and!49221 (not b_next!30561))
