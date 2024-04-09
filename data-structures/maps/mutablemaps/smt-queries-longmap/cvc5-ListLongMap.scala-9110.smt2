; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109480 () Bool)

(assert start!109480)

(declare-fun b_free!28933 () Bool)

(declare-fun b_next!28933 () Bool)

(assert (=> start!109480 (= b_free!28933 (not b_next!28933))))

(declare-fun tp!101918 () Bool)

(declare-fun b_and!47033 () Bool)

(assert (=> start!109480 (= tp!101918 b_and!47033)))

(declare-fun b!1295817 () Bool)

(declare-fun res!861362 () Bool)

(declare-fun e!739346 () Bool)

(assert (=> b!1295817 (=> (not res!861362) (not e!739346))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86125 0))(
  ( (array!86126 (arr!41559 (Array (_ BitVec 32) (_ BitVec 64))) (size!42110 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86125)

(assert (=> b!1295817 (= res!861362 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42110 _keys!1741))))))

(declare-fun res!861361 () Bool)

(assert (=> start!109480 (=> (not res!861361) (not e!739346))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109480 (= res!861361 (validMask!0 mask!2175))))

(assert (=> start!109480 e!739346))

(declare-fun tp_is_empty!34573 () Bool)

(assert (=> start!109480 tp_is_empty!34573))

(assert (=> start!109480 true))

(declare-datatypes ((V!51201 0))(
  ( (V!51202 (val!17361 Int)) )
))
(declare-datatypes ((ValueCell!16388 0))(
  ( (ValueCellFull!16388 (v!19962 V!51201)) (EmptyCell!16388) )
))
(declare-datatypes ((array!86127 0))(
  ( (array!86128 (arr!41560 (Array (_ BitVec 32) ValueCell!16388)) (size!42111 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86127)

(declare-fun e!739347 () Bool)

(declare-fun array_inv!31453 (array!86127) Bool)

(assert (=> start!109480 (and (array_inv!31453 _values!1445) e!739347)))

(declare-fun array_inv!31454 (array!86125) Bool)

(assert (=> start!109480 (array_inv!31454 _keys!1741)))

(assert (=> start!109480 tp!101918))

(declare-fun b!1295818 () Bool)

(declare-fun e!739348 () Bool)

(assert (=> b!1295818 (= e!739348 tp_is_empty!34573)))

(declare-fun b!1295819 () Bool)

(declare-fun e!739351 () Bool)

(assert (=> b!1295819 (= e!739351 tp_is_empty!34573)))

(declare-fun b!1295820 () Bool)

(declare-fun res!861355 () Bool)

(assert (=> b!1295820 (=> (not res!861355) (not e!739346))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1295820 (= res!861355 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42110 _keys!1741))))))

(declare-fun b!1295821 () Bool)

(declare-fun e!739350 () Bool)

(assert (=> b!1295821 (= e!739346 (not e!739350))))

(declare-fun res!861359 () Bool)

(assert (=> b!1295821 (=> res!861359 e!739350)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1295821 (= res!861359 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!22508 0))(
  ( (tuple2!22509 (_1!11264 (_ BitVec 64)) (_2!11264 V!51201)) )
))
(declare-datatypes ((List!29677 0))(
  ( (Nil!29674) (Cons!29673 (h!30882 tuple2!22508) (t!43248 List!29677)) )
))
(declare-datatypes ((ListLongMap!20177 0))(
  ( (ListLongMap!20178 (toList!10104 List!29677)) )
))
(declare-fun contains!8160 (ListLongMap!20177 (_ BitVec 64)) Bool)

(assert (=> b!1295821 (not (contains!8160 (ListLongMap!20178 Nil!29674) k!1205))))

(declare-datatypes ((Unit!42871 0))(
  ( (Unit!42872) )
))
(declare-fun lt!579954 () Unit!42871)

(declare-fun emptyContainsNothing!190 ((_ BitVec 64)) Unit!42871)

(assert (=> b!1295821 (= lt!579954 (emptyContainsNothing!190 k!1205))))

(declare-fun b!1295822 () Bool)

(declare-fun mapRes!53420 () Bool)

(assert (=> b!1295822 (= e!739347 (and e!739348 mapRes!53420))))

(declare-fun condMapEmpty!53420 () Bool)

(declare-fun mapDefault!53420 () ValueCell!16388)

