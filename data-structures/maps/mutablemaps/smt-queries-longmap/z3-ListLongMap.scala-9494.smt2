; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112610 () Bool)

(assert start!112610)

(declare-fun b_free!30969 () Bool)

(declare-fun b_next!30969 () Bool)

(assert (=> start!112610 (= b_free!30969 (not b_next!30969))))

(declare-fun tp!108545 () Bool)

(declare-fun b_and!49887 () Bool)

(assert (=> start!112610 (= tp!108545 b_and!49887)))

(declare-fun b!1335268 () Bool)

(declare-fun res!886274 () Bool)

(declare-fun e!760523 () Bool)

(assert (=> b!1335268 (=> (not res!886274) (not e!760523))))

(declare-datatypes ((array!90595 0))(
  ( (array!90596 (arr!43759 (Array (_ BitVec 32) (_ BitVec 64))) (size!44310 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90595)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90595 (_ BitVec 32)) Bool)

(assert (=> b!1335268 (= res!886274 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1335269 () Bool)

(declare-fun res!886270 () Bool)

(assert (=> b!1335269 (=> (not res!886270) (not e!760523))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1335269 (= res!886270 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44310 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1335270 () Bool)

(declare-fun e!760521 () Bool)

(declare-fun tp_is_empty!36879 () Bool)

(assert (=> b!1335270 (= e!760521 tp_is_empty!36879)))

(declare-fun mapNonEmpty!56992 () Bool)

(declare-fun mapRes!56992 () Bool)

(declare-fun tp!108544 () Bool)

(assert (=> mapNonEmpty!56992 (= mapRes!56992 (and tp!108544 e!760521))))

(declare-datatypes ((V!54275 0))(
  ( (V!54276 (val!18514 Int)) )
))
(declare-datatypes ((ValueCell!17541 0))(
  ( (ValueCellFull!17541 (v!21149 V!54275)) (EmptyCell!17541) )
))
(declare-datatypes ((array!90597 0))(
  ( (array!90598 (arr!43760 (Array (_ BitVec 32) ValueCell!17541)) (size!44311 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90597)

(declare-fun mapRest!56992 () (Array (_ BitVec 32) ValueCell!17541))

(declare-fun mapKey!56992 () (_ BitVec 32))

(declare-fun mapValue!56992 () ValueCell!17541)

(assert (=> mapNonEmpty!56992 (= (arr!43760 _values!1320) (store mapRest!56992 mapKey!56992 mapValue!56992))))

(declare-fun mapIsEmpty!56992 () Bool)

(assert (=> mapIsEmpty!56992 mapRes!56992))

(declare-fun b!1335271 () Bool)

(assert (=> b!1335271 (= e!760523 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun lt!592382 () Bool)

(declare-fun minValue!1262 () V!54275)

(declare-fun zeroValue!1262 () V!54275)

(declare-datatypes ((tuple2!24028 0))(
  ( (tuple2!24029 (_1!12024 (_ BitVec 64)) (_2!12024 V!54275)) )
))
(declare-datatypes ((List!31199 0))(
  ( (Nil!31196) (Cons!31195 (h!32404 tuple2!24028) (t!45470 List!31199)) )
))
(declare-datatypes ((ListLongMap!21697 0))(
  ( (ListLongMap!21698 (toList!10864 List!31199)) )
))
(declare-fun contains!8964 (ListLongMap!21697 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5775 (array!90595 array!90597 (_ BitVec 32) (_ BitVec 32) V!54275 V!54275 (_ BitVec 32) Int) ListLongMap!21697)

(assert (=> b!1335271 (= lt!592382 (contains!8964 (getCurrentListMap!5775 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1335272 () Bool)

(declare-fun res!886271 () Bool)

(assert (=> b!1335272 (=> (not res!886271) (not e!760523))))

(declare-datatypes ((List!31200 0))(
  ( (Nil!31197) (Cons!31196 (h!32405 (_ BitVec 64)) (t!45471 List!31200)) )
))
(declare-fun arrayNoDuplicates!0 (array!90595 (_ BitVec 32) List!31200) Bool)

(assert (=> b!1335272 (= res!886271 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31197))))

(declare-fun b!1335273 () Bool)

(declare-fun e!760525 () Bool)

(declare-fun e!760522 () Bool)

(assert (=> b!1335273 (= e!760525 (and e!760522 mapRes!56992))))

(declare-fun condMapEmpty!56992 () Bool)

(declare-fun mapDefault!56992 () ValueCell!17541)

(assert (=> b!1335273 (= condMapEmpty!56992 (= (arr!43760 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17541)) mapDefault!56992)))))

(declare-fun b!1335274 () Bool)

(declare-fun res!886273 () Bool)

(assert (=> b!1335274 (=> (not res!886273) (not e!760523))))

(assert (=> b!1335274 (= res!886273 (and (= (size!44311 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44310 _keys!1590) (size!44311 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun res!886272 () Bool)

(assert (=> start!112610 (=> (not res!886272) (not e!760523))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112610 (= res!886272 (validMask!0 mask!1998))))

(assert (=> start!112610 e!760523))

(declare-fun array_inv!32937 (array!90597) Bool)

(assert (=> start!112610 (and (array_inv!32937 _values!1320) e!760525)))

(assert (=> start!112610 true))

(declare-fun array_inv!32938 (array!90595) Bool)

(assert (=> start!112610 (array_inv!32938 _keys!1590)))

(assert (=> start!112610 tp!108545))

(assert (=> start!112610 tp_is_empty!36879))

(declare-fun b!1335275 () Bool)

(assert (=> b!1335275 (= e!760522 tp_is_empty!36879)))

(assert (= (and start!112610 res!886272) b!1335274))

(assert (= (and b!1335274 res!886273) b!1335268))

(assert (= (and b!1335268 res!886274) b!1335272))

(assert (= (and b!1335272 res!886271) b!1335269))

(assert (= (and b!1335269 res!886270) b!1335271))

(assert (= (and b!1335273 condMapEmpty!56992) mapIsEmpty!56992))

(assert (= (and b!1335273 (not condMapEmpty!56992)) mapNonEmpty!56992))

(get-info :version)

(assert (= (and mapNonEmpty!56992 ((_ is ValueCellFull!17541) mapValue!56992)) b!1335270))

(assert (= (and b!1335273 ((_ is ValueCellFull!17541) mapDefault!56992)) b!1335275))

(assert (= start!112610 b!1335273))

(declare-fun m!1223395 () Bool)

(assert (=> b!1335271 m!1223395))

(assert (=> b!1335271 m!1223395))

(declare-fun m!1223397 () Bool)

(assert (=> b!1335271 m!1223397))

(declare-fun m!1223399 () Bool)

(assert (=> b!1335272 m!1223399))

(declare-fun m!1223401 () Bool)

(assert (=> start!112610 m!1223401))

(declare-fun m!1223403 () Bool)

(assert (=> start!112610 m!1223403))

(declare-fun m!1223405 () Bool)

(assert (=> start!112610 m!1223405))

(declare-fun m!1223407 () Bool)

(assert (=> mapNonEmpty!56992 m!1223407))

(declare-fun m!1223409 () Bool)

(assert (=> b!1335268 m!1223409))

(check-sat (not b!1335272) b_and!49887 (not b!1335268) (not b_next!30969) tp_is_empty!36879 (not b!1335271) (not start!112610) (not mapNonEmpty!56992))
(check-sat b_and!49887 (not b_next!30969))
