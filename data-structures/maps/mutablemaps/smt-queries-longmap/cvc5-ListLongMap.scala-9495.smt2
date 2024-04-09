; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112614 () Bool)

(assert start!112614)

(declare-fun b_free!30973 () Bool)

(declare-fun b_next!30973 () Bool)

(assert (=> start!112614 (= b_free!30973 (not b_next!30973))))

(declare-fun tp!108556 () Bool)

(declare-fun b_and!49891 () Bool)

(assert (=> start!112614 (= tp!108556 b_and!49891)))

(declare-fun b!1335324 () Bool)

(declare-fun res!886310 () Bool)

(declare-fun e!760553 () Bool)

(assert (=> b!1335324 (=> (not res!886310) (not e!760553))))

(declare-datatypes ((array!90603 0))(
  ( (array!90604 (arr!43763 (Array (_ BitVec 32) (_ BitVec 64))) (size!44314 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90603)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90603 (_ BitVec 32)) Bool)

(assert (=> b!1335324 (= res!886310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1335325 () Bool)

(declare-fun res!886308 () Bool)

(assert (=> b!1335325 (=> (not res!886308) (not e!760553))))

(declare-datatypes ((V!54281 0))(
  ( (V!54282 (val!18516 Int)) )
))
(declare-datatypes ((ValueCell!17543 0))(
  ( (ValueCellFull!17543 (v!21151 V!54281)) (EmptyCell!17543) )
))
(declare-datatypes ((array!90605 0))(
  ( (array!90606 (arr!43764 (Array (_ BitVec 32) ValueCell!17543)) (size!44315 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90605)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1335325 (= res!886308 (and (= (size!44315 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44314 _keys!1590) (size!44315 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1335326 () Bool)

(declare-fun res!886315 () Bool)

(assert (=> b!1335326 (=> (not res!886315) (not e!760553))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54281)

(declare-fun zeroValue!1262 () V!54281)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!24030 0))(
  ( (tuple2!24031 (_1!12025 (_ BitVec 64)) (_2!12025 V!54281)) )
))
(declare-datatypes ((List!31201 0))(
  ( (Nil!31198) (Cons!31197 (h!32406 tuple2!24030) (t!45472 List!31201)) )
))
(declare-datatypes ((ListLongMap!21699 0))(
  ( (ListLongMap!21700 (toList!10865 List!31201)) )
))
(declare-fun contains!8965 (ListLongMap!21699 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5776 (array!90603 array!90605 (_ BitVec 32) (_ BitVec 32) V!54281 V!54281 (_ BitVec 32) Int) ListLongMap!21699)

(assert (=> b!1335326 (= res!886315 (contains!8965 (getCurrentListMap!5776 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1335327 () Bool)

(declare-fun res!886316 () Bool)

(assert (=> b!1335327 (=> (not res!886316) (not e!760553))))

(assert (=> b!1335327 (= res!886316 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44314 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!56998 () Bool)

(declare-fun mapRes!56998 () Bool)

(declare-fun tp!108557 () Bool)

(declare-fun e!760551 () Bool)

(assert (=> mapNonEmpty!56998 (= mapRes!56998 (and tp!108557 e!760551))))

(declare-fun mapRest!56998 () (Array (_ BitVec 32) ValueCell!17543))

(declare-fun mapKey!56998 () (_ BitVec 32))

(declare-fun mapValue!56998 () ValueCell!17543)

(assert (=> mapNonEmpty!56998 (= (arr!43764 _values!1320) (store mapRest!56998 mapKey!56998 mapValue!56998))))

(declare-fun b!1335328 () Bool)

(assert (=> b!1335328 (= e!760553 false)))

(declare-fun lt!592388 () ListLongMap!21699)

(declare-fun getCurrentListMapNoExtraKeys!6421 (array!90603 array!90605 (_ BitVec 32) (_ BitVec 32) V!54281 V!54281 (_ BitVec 32) Int) ListLongMap!21699)

(assert (=> b!1335328 (= lt!592388 (getCurrentListMapNoExtraKeys!6421 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1335329 () Bool)

(declare-fun tp_is_empty!36883 () Bool)

(assert (=> b!1335329 (= e!760551 tp_is_empty!36883)))

(declare-fun b!1335331 () Bool)

(declare-fun res!886313 () Bool)

(assert (=> b!1335331 (=> (not res!886313) (not e!760553))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1335331 (= res!886313 (validKeyInArray!0 (select (arr!43763 _keys!1590) from!1980)))))

(declare-fun b!1335332 () Bool)

(declare-fun res!886309 () Bool)

(assert (=> b!1335332 (=> (not res!886309) (not e!760553))))

(assert (=> b!1335332 (= res!886309 (not (= (select (arr!43763 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1335333 () Bool)

(declare-fun res!886312 () Bool)

(assert (=> b!1335333 (=> (not res!886312) (not e!760553))))

(declare-datatypes ((List!31202 0))(
  ( (Nil!31199) (Cons!31198 (h!32407 (_ BitVec 64)) (t!45473 List!31202)) )
))
(declare-fun arrayNoDuplicates!0 (array!90603 (_ BitVec 32) List!31202) Bool)

(assert (=> b!1335333 (= res!886312 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31199))))

(declare-fun b!1335334 () Bool)

(declare-fun e!760552 () Bool)

(assert (=> b!1335334 (= e!760552 tp_is_empty!36883)))

(declare-fun mapIsEmpty!56998 () Bool)

(assert (=> mapIsEmpty!56998 mapRes!56998))

(declare-fun b!1335335 () Bool)

(declare-fun e!760555 () Bool)

(assert (=> b!1335335 (= e!760555 (and e!760552 mapRes!56998))))

(declare-fun condMapEmpty!56998 () Bool)

(declare-fun mapDefault!56998 () ValueCell!17543)

