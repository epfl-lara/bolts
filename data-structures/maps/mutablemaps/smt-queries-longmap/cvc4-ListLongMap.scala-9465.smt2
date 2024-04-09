; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112438 () Bool)

(assert start!112438)

(declare-fun b_free!30797 () Bool)

(declare-fun b_next!30797 () Bool)

(assert (=> start!112438 (= b_free!30797 (not b_next!30797))))

(declare-fun tp!108029 () Bool)

(declare-fun b_and!49649 () Bool)

(assert (=> start!112438 (= tp!108029 b_and!49649)))

(declare-fun mapNonEmpty!56734 () Bool)

(declare-fun mapRes!56734 () Bool)

(declare-fun tp!108028 () Bool)

(declare-fun e!759150 () Bool)

(assert (=> mapNonEmpty!56734 (= mapRes!56734 (and tp!108028 e!759150))))

(declare-datatypes ((V!54045 0))(
  ( (V!54046 (val!18428 Int)) )
))
(declare-datatypes ((ValueCell!17455 0))(
  ( (ValueCellFull!17455 (v!21063 V!54045)) (EmptyCell!17455) )
))
(declare-datatypes ((array!90263 0))(
  ( (array!90264 (arr!43593 (Array (_ BitVec 32) ValueCell!17455)) (size!44144 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90263)

(declare-fun mapRest!56734 () (Array (_ BitVec 32) ValueCell!17455))

(declare-fun mapKey!56734 () (_ BitVec 32))

(declare-fun mapValue!56734 () ValueCell!17455)

(assert (=> mapNonEmpty!56734 (= (arr!43593 _values!1320) (store mapRest!56734 mapKey!56734 mapValue!56734))))

(declare-fun mapIsEmpty!56734 () Bool)

(assert (=> mapIsEmpty!56734 mapRes!56734))

(declare-fun b!1332526 () Bool)

(declare-fun e!759153 () Bool)

(assert (=> b!1332526 (= e!759153 false)))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90265 0))(
  ( (array!90266 (arr!43594 (Array (_ BitVec 32) (_ BitVec 64))) (size!44145 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90265)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54045)

(declare-fun zeroValue!1262 () V!54045)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun lt!591980 () Bool)

(declare-datatypes ((tuple2!23900 0))(
  ( (tuple2!23901 (_1!11960 (_ BitVec 64)) (_2!11960 V!54045)) )
))
(declare-datatypes ((List!31078 0))(
  ( (Nil!31075) (Cons!31074 (h!32283 tuple2!23900) (t!45283 List!31078)) )
))
(declare-datatypes ((ListLongMap!21569 0))(
  ( (ListLongMap!21570 (toList!10800 List!31078)) )
))
(declare-fun contains!8900 (ListLongMap!21569 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5721 (array!90265 array!90263 (_ BitVec 32) (_ BitVec 32) V!54045 V!54045 (_ BitVec 32) Int) ListLongMap!21569)

(assert (=> b!1332526 (= lt!591980 (contains!8900 (getCurrentListMap!5721 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1332527 () Bool)

(declare-fun res!884370 () Bool)

(assert (=> b!1332527 (=> (not res!884370) (not e!759153))))

(declare-datatypes ((List!31079 0))(
  ( (Nil!31076) (Cons!31075 (h!32284 (_ BitVec 64)) (t!45284 List!31079)) )
))
(declare-fun arrayNoDuplicates!0 (array!90265 (_ BitVec 32) List!31079) Bool)

(assert (=> b!1332527 (= res!884370 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31076))))

(declare-fun b!1332528 () Bool)

(declare-fun tp_is_empty!36707 () Bool)

(assert (=> b!1332528 (= e!759150 tp_is_empty!36707)))

(declare-fun b!1332529 () Bool)

(declare-fun res!884369 () Bool)

(assert (=> b!1332529 (=> (not res!884369) (not e!759153))))

(assert (=> b!1332529 (= res!884369 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44145 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!884368 () Bool)

(assert (=> start!112438 (=> (not res!884368) (not e!759153))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112438 (= res!884368 (validMask!0 mask!1998))))

(assert (=> start!112438 e!759153))

(declare-fun e!759151 () Bool)

(declare-fun array_inv!32827 (array!90263) Bool)

(assert (=> start!112438 (and (array_inv!32827 _values!1320) e!759151)))

(assert (=> start!112438 true))

(declare-fun array_inv!32828 (array!90265) Bool)

(assert (=> start!112438 (array_inv!32828 _keys!1590)))

(assert (=> start!112438 tp!108029))

(assert (=> start!112438 tp_is_empty!36707))

(declare-fun b!1332530 () Bool)

(declare-fun e!759152 () Bool)

(assert (=> b!1332530 (= e!759151 (and e!759152 mapRes!56734))))

(declare-fun condMapEmpty!56734 () Bool)

(declare-fun mapDefault!56734 () ValueCell!17455)

