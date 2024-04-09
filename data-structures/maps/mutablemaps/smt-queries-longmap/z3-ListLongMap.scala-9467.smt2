; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112448 () Bool)

(assert start!112448)

(declare-fun b_free!30807 () Bool)

(declare-fun b_next!30807 () Bool)

(assert (=> start!112448 (= b_free!30807 (not b_next!30807))))

(declare-fun tp!108059 () Bool)

(declare-fun b_and!49659 () Bool)

(assert (=> start!112448 (= tp!108059 b_and!49659)))

(declare-fun b!1332646 () Bool)

(declare-fun res!884446 () Bool)

(declare-fun e!759225 () Bool)

(assert (=> b!1332646 (=> (not res!884446) (not e!759225))))

(declare-datatypes ((array!90281 0))(
  ( (array!90282 (arr!43602 (Array (_ BitVec 32) (_ BitVec 64))) (size!44153 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90281)

(declare-datatypes ((List!31086 0))(
  ( (Nil!31083) (Cons!31082 (h!32291 (_ BitVec 64)) (t!45291 List!31086)) )
))
(declare-fun arrayNoDuplicates!0 (array!90281 (_ BitVec 32) List!31086) Bool)

(assert (=> b!1332646 (= res!884446 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31083))))

(declare-fun b!1332647 () Bool)

(declare-fun res!884445 () Bool)

(assert (=> b!1332647 (=> (not res!884445) (not e!759225))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1332647 (= res!884445 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44153 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1332648 () Bool)

(declare-fun res!884443 () Bool)

(assert (=> b!1332648 (=> (not res!884443) (not e!759225))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90281 (_ BitVec 32)) Bool)

(assert (=> b!1332648 (= res!884443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1332649 () Bool)

(declare-fun res!884444 () Bool)

(assert (=> b!1332649 (=> (not res!884444) (not e!759225))))

(declare-datatypes ((V!54059 0))(
  ( (V!54060 (val!18433 Int)) )
))
(declare-datatypes ((ValueCell!17460 0))(
  ( (ValueCellFull!17460 (v!21068 V!54059)) (EmptyCell!17460) )
))
(declare-datatypes ((array!90283 0))(
  ( (array!90284 (arr!43603 (Array (_ BitVec 32) ValueCell!17460)) (size!44154 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90283)

(assert (=> b!1332649 (= res!884444 (and (= (size!44154 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44153 _keys!1590) (size!44154 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1332650 () Bool)

(declare-fun e!759227 () Bool)

(declare-fun e!759228 () Bool)

(declare-fun mapRes!56749 () Bool)

(assert (=> b!1332650 (= e!759227 (and e!759228 mapRes!56749))))

(declare-fun condMapEmpty!56749 () Bool)

(declare-fun mapDefault!56749 () ValueCell!17460)

(assert (=> b!1332650 (= condMapEmpty!56749 (= (arr!43603 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17460)) mapDefault!56749)))))

(declare-fun b!1332651 () Bool)

(declare-fun e!759229 () Bool)

(declare-fun tp_is_empty!36717 () Bool)

(assert (=> b!1332651 (= e!759229 tp_is_empty!36717)))

(declare-fun mapIsEmpty!56749 () Bool)

(assert (=> mapIsEmpty!56749 mapRes!56749))

(declare-fun res!884447 () Bool)

(assert (=> start!112448 (=> (not res!884447) (not e!759225))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112448 (= res!884447 (validMask!0 mask!1998))))

(assert (=> start!112448 e!759225))

(declare-fun array_inv!32831 (array!90283) Bool)

(assert (=> start!112448 (and (array_inv!32831 _values!1320) e!759227)))

(assert (=> start!112448 true))

(declare-fun array_inv!32832 (array!90281) Bool)

(assert (=> start!112448 (array_inv!32832 _keys!1590)))

(assert (=> start!112448 tp!108059))

(assert (=> start!112448 tp_is_empty!36717))

(declare-fun mapNonEmpty!56749 () Bool)

(declare-fun tp!108058 () Bool)

(assert (=> mapNonEmpty!56749 (= mapRes!56749 (and tp!108058 e!759229))))

(declare-fun mapRest!56749 () (Array (_ BitVec 32) ValueCell!17460))

(declare-fun mapKey!56749 () (_ BitVec 32))

(declare-fun mapValue!56749 () ValueCell!17460)

(assert (=> mapNonEmpty!56749 (= (arr!43603 _values!1320) (store mapRest!56749 mapKey!56749 mapValue!56749))))

(declare-fun b!1332652 () Bool)

(assert (=> b!1332652 (= e!759225 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54059)

(declare-fun zeroValue!1262 () V!54059)

(declare-fun lt!591995 () Bool)

(declare-datatypes ((tuple2!23908 0))(
  ( (tuple2!23909 (_1!11964 (_ BitVec 64)) (_2!11964 V!54059)) )
))
(declare-datatypes ((List!31087 0))(
  ( (Nil!31084) (Cons!31083 (h!32292 tuple2!23908) (t!45292 List!31087)) )
))
(declare-datatypes ((ListLongMap!21577 0))(
  ( (ListLongMap!21578 (toList!10804 List!31087)) )
))
(declare-fun contains!8904 (ListLongMap!21577 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5725 (array!90281 array!90283 (_ BitVec 32) (_ BitVec 32) V!54059 V!54059 (_ BitVec 32) Int) ListLongMap!21577)

(assert (=> b!1332652 (= lt!591995 (contains!8904 (getCurrentListMap!5725 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1332653 () Bool)

(assert (=> b!1332653 (= e!759228 tp_is_empty!36717)))

(assert (= (and start!112448 res!884447) b!1332649))

(assert (= (and b!1332649 res!884444) b!1332648))

(assert (= (and b!1332648 res!884443) b!1332646))

(assert (= (and b!1332646 res!884446) b!1332647))

(assert (= (and b!1332647 res!884445) b!1332652))

(assert (= (and b!1332650 condMapEmpty!56749) mapIsEmpty!56749))

(assert (= (and b!1332650 (not condMapEmpty!56749)) mapNonEmpty!56749))

(get-info :version)

(assert (= (and mapNonEmpty!56749 ((_ is ValueCellFull!17460) mapValue!56749)) b!1332651))

(assert (= (and b!1332650 ((_ is ValueCellFull!17460) mapDefault!56749)) b!1332653))

(assert (= start!112448 b!1332650))

(declare-fun m!1221439 () Bool)

(assert (=> start!112448 m!1221439))

(declare-fun m!1221441 () Bool)

(assert (=> start!112448 m!1221441))

(declare-fun m!1221443 () Bool)

(assert (=> start!112448 m!1221443))

(declare-fun m!1221445 () Bool)

(assert (=> b!1332652 m!1221445))

(assert (=> b!1332652 m!1221445))

(declare-fun m!1221447 () Bool)

(assert (=> b!1332652 m!1221447))

(declare-fun m!1221449 () Bool)

(assert (=> b!1332646 m!1221449))

(declare-fun m!1221451 () Bool)

(assert (=> mapNonEmpty!56749 m!1221451))

(declare-fun m!1221453 () Bool)

(assert (=> b!1332648 m!1221453))

(check-sat (not start!112448) (not mapNonEmpty!56749) tp_is_empty!36717 (not b!1332646) (not b!1332652) (not b!1332648) (not b_next!30807) b_and!49659)
(check-sat b_and!49659 (not b_next!30807))
