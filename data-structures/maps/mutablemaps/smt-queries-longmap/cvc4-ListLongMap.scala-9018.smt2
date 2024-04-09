; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108908 () Bool)

(assert start!108908)

(declare-fun b_free!28385 () Bool)

(declare-fun b_next!28385 () Bool)

(assert (=> start!108908 (= b_free!28385 (not b_next!28385))))

(declare-fun tp!100272 () Bool)

(declare-fun b_and!46461 () Bool)

(assert (=> start!108908 (= tp!100272 b_and!46461)))

(declare-fun b!1285677 () Bool)

(declare-fun e!734423 () Bool)

(declare-fun tp_is_empty!34025 () Bool)

(assert (=> b!1285677 (= e!734423 tp_is_empty!34025)))

(declare-fun res!854176 () Bool)

(declare-fun e!734422 () Bool)

(assert (=> start!108908 (=> (not res!854176) (not e!734422))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108908 (= res!854176 (validMask!0 mask!2175))))

(assert (=> start!108908 e!734422))

(assert (=> start!108908 tp_is_empty!34025))

(assert (=> start!108908 true))

(declare-datatypes ((V!50469 0))(
  ( (V!50470 (val!17087 Int)) )
))
(declare-datatypes ((ValueCell!16114 0))(
  ( (ValueCellFull!16114 (v!19687 V!50469)) (EmptyCell!16114) )
))
(declare-datatypes ((array!85059 0))(
  ( (array!85060 (arr!41027 (Array (_ BitVec 32) ValueCell!16114)) (size!41578 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85059)

(declare-fun e!734421 () Bool)

(declare-fun array_inv!31089 (array!85059) Bool)

(assert (=> start!108908 (and (array_inv!31089 _values!1445) e!734421)))

(declare-datatypes ((array!85061 0))(
  ( (array!85062 (arr!41028 (Array (_ BitVec 32) (_ BitVec 64))) (size!41579 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85061)

(declare-fun array_inv!31090 (array!85061) Bool)

(assert (=> start!108908 (array_inv!31090 _keys!1741)))

(assert (=> start!108908 tp!100272))

(declare-fun mapIsEmpty!52595 () Bool)

(declare-fun mapRes!52595 () Bool)

(assert (=> mapIsEmpty!52595 mapRes!52595))

(declare-fun b!1285678 () Bool)

(declare-fun res!854171 () Bool)

(assert (=> b!1285678 (=> (not res!854171) (not e!734422))))

(declare-fun minValue!1387 () V!50469)

(declare-fun zeroValue!1387 () V!50469)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22036 0))(
  ( (tuple2!22037 (_1!11028 (_ BitVec 64)) (_2!11028 V!50469)) )
))
(declare-datatypes ((List!29248 0))(
  ( (Nil!29245) (Cons!29244 (h!30453 tuple2!22036) (t!42799 List!29248)) )
))
(declare-datatypes ((ListLongMap!19705 0))(
  ( (ListLongMap!19706 (toList!9868 List!29248)) )
))
(declare-fun contains!7923 (ListLongMap!19705 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4884 (array!85061 array!85059 (_ BitVec 32) (_ BitVec 32) V!50469 V!50469 (_ BitVec 32) Int) ListLongMap!19705)

(assert (=> b!1285678 (= res!854171 (contains!7923 (getCurrentListMap!4884 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1285679 () Bool)

(declare-fun res!854173 () Bool)

(assert (=> b!1285679 (=> (not res!854173) (not e!734422))))

(assert (=> b!1285679 (= res!854173 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41579 _keys!1741))))))

(declare-fun b!1285680 () Bool)

(declare-fun res!854174 () Bool)

(assert (=> b!1285680 (=> (not res!854174) (not e!734422))))

(assert (=> b!1285680 (= res!854174 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41579 _keys!1741))))))

(declare-fun b!1285681 () Bool)

(declare-fun res!854175 () Bool)

(assert (=> b!1285681 (=> (not res!854175) (not e!734422))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1285681 (= res!854175 (validKeyInArray!0 (select (arr!41028 _keys!1741) from!2144)))))

(declare-fun b!1285682 () Bool)

(declare-fun e!734425 () Bool)

(assert (=> b!1285682 (= e!734425 tp_is_empty!34025)))

(declare-fun b!1285683 () Bool)

(assert (=> b!1285683 (= e!734421 (and e!734423 mapRes!52595))))

(declare-fun condMapEmpty!52595 () Bool)

(declare-fun mapDefault!52595 () ValueCell!16114)

