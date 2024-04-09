; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108998 () Bool)

(assert start!108998)

(declare-fun b_free!28451 () Bool)

(declare-fun b_next!28451 () Bool)

(assert (=> start!108998 (= b_free!28451 (not b_next!28451))))

(declare-fun tp!100473 () Bool)

(declare-fun b_and!46551 () Bool)

(assert (=> start!108998 (= tp!100473 b_and!46551)))

(declare-fun b!1287367 () Bool)

(declare-fun res!855075 () Bool)

(declare-fun e!735236 () Bool)

(assert (=> b!1287367 (=> (not res!855075) (not e!735236))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!85187 0))(
  ( (array!85188 (arr!41090 (Array (_ BitVec 32) (_ BitVec 64))) (size!41641 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85187)

(assert (=> b!1287367 (= res!855075 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41641 _keys!1741))))))

(declare-fun res!855080 () Bool)

(assert (=> start!108998 (=> (not res!855080) (not e!735236))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108998 (= res!855080 (validMask!0 mask!2175))))

(assert (=> start!108998 e!735236))

(declare-fun tp_is_empty!34091 () Bool)

(assert (=> start!108998 tp_is_empty!34091))

(assert (=> start!108998 true))

(declare-datatypes ((V!50557 0))(
  ( (V!50558 (val!17120 Int)) )
))
(declare-datatypes ((ValueCell!16147 0))(
  ( (ValueCellFull!16147 (v!19721 V!50557)) (EmptyCell!16147) )
))
(declare-datatypes ((array!85189 0))(
  ( (array!85190 (arr!41091 (Array (_ BitVec 32) ValueCell!16147)) (size!41642 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85189)

(declare-fun e!735237 () Bool)

(declare-fun array_inv!31133 (array!85189) Bool)

(assert (=> start!108998 (and (array_inv!31133 _values!1445) e!735237)))

(declare-fun array_inv!31134 (array!85187) Bool)

(assert (=> start!108998 (array_inv!31134 _keys!1741)))

(assert (=> start!108998 tp!100473))

(declare-fun b!1287368 () Bool)

(declare-fun res!855081 () Bool)

(assert (=> b!1287368 (=> (not res!855081) (not e!735236))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1287368 (= res!855081 (and (= (size!41642 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41641 _keys!1741) (size!41642 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!52697 () Bool)

(declare-fun mapRes!52697 () Bool)

(assert (=> mapIsEmpty!52697 mapRes!52697))

(declare-fun b!1287369 () Bool)

(declare-fun e!735234 () Bool)

(assert (=> b!1287369 (= e!735234 tp_is_empty!34091)))

(declare-fun b!1287370 () Bool)

(assert (=> b!1287370 (= e!735236 (not true))))

(declare-datatypes ((tuple2!22098 0))(
  ( (tuple2!22099 (_1!11059 (_ BitVec 64)) (_2!11059 V!50557)) )
))
(declare-datatypes ((List!29300 0))(
  ( (Nil!29297) (Cons!29296 (h!30505 tuple2!22098) (t!42871 List!29300)) )
))
(declare-datatypes ((ListLongMap!19767 0))(
  ( (ListLongMap!19768 (toList!9899 List!29300)) )
))
(declare-fun contains!7955 (ListLongMap!19767 (_ BitVec 64)) Bool)

(assert (=> b!1287370 (not (contains!7955 (ListLongMap!19768 Nil!29297) k!1205))))

(declare-datatypes ((Unit!42503 0))(
  ( (Unit!42504) )
))
(declare-fun lt!577804 () Unit!42503)

(declare-fun emptyContainsNothing!19 ((_ BitVec 64)) Unit!42503)

(assert (=> b!1287370 (= lt!577804 (emptyContainsNothing!19 k!1205))))

(declare-fun b!1287371 () Bool)

(declare-fun res!855079 () Bool)

(assert (=> b!1287371 (=> (not res!855079) (not e!735236))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1287371 (= res!855079 (not (validKeyInArray!0 (select (arr!41090 _keys!1741) from!2144))))))

(declare-fun b!1287372 () Bool)

(declare-fun e!735238 () Bool)

(assert (=> b!1287372 (= e!735237 (and e!735238 mapRes!52697))))

(declare-fun condMapEmpty!52697 () Bool)

(declare-fun mapDefault!52697 () ValueCell!16147)

