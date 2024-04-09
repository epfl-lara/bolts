; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108886 () Bool)

(assert start!108886)

(declare-fun b_free!28363 () Bool)

(declare-fun b_next!28363 () Bool)

(assert (=> start!108886 (= b_free!28363 (not b_next!28363))))

(declare-fun tp!100206 () Bool)

(declare-fun b_and!46439 () Bool)

(assert (=> start!108886 (= tp!100206 b_and!46439)))

(declare-fun b!1285389 () Bool)

(declare-fun e!734257 () Bool)

(assert (=> b!1285389 (= e!734257 false)))

(declare-datatypes ((V!50441 0))(
  ( (V!50442 (val!17076 Int)) )
))
(declare-fun minValue!1387 () V!50441)

(declare-fun zeroValue!1387 () V!50441)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16103 0))(
  ( (ValueCellFull!16103 (v!19676 V!50441)) (EmptyCell!16103) )
))
(declare-datatypes ((array!85017 0))(
  ( (array!85018 (arr!41006 (Array (_ BitVec 32) ValueCell!16103)) (size!41557 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85017)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85019 0))(
  ( (array!85020 (arr!41007 (Array (_ BitVec 32) (_ BitVec 64))) (size!41558 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85019)

(declare-fun defaultEntry!1448 () Int)

(declare-fun lt!576858 () Bool)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22020 0))(
  ( (tuple2!22021 (_1!11020 (_ BitVec 64)) (_2!11020 V!50441)) )
))
(declare-datatypes ((List!29231 0))(
  ( (Nil!29228) (Cons!29227 (h!30436 tuple2!22020) (t!42782 List!29231)) )
))
(declare-datatypes ((ListLongMap!19689 0))(
  ( (ListLongMap!19690 (toList!9860 List!29231)) )
))
(declare-fun contains!7915 (ListLongMap!19689 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4876 (array!85019 array!85017 (_ BitVec 32) (_ BitVec 32) V!50441 V!50441 (_ BitVec 32) Int) ListLongMap!19689)

(assert (=> b!1285389 (= lt!576858 (contains!7915 (getCurrentListMap!4876 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1285390 () Bool)

(declare-fun res!853983 () Bool)

(assert (=> b!1285390 (=> (not res!853983) (not e!734257))))

(assert (=> b!1285390 (= res!853983 (and (= (size!41557 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41558 _keys!1741) (size!41557 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1285391 () Bool)

(declare-fun res!853985 () Bool)

(assert (=> b!1285391 (=> (not res!853985) (not e!734257))))

(declare-datatypes ((List!29232 0))(
  ( (Nil!29229) (Cons!29228 (h!30437 (_ BitVec 64)) (t!42783 List!29232)) )
))
(declare-fun arrayNoDuplicates!0 (array!85019 (_ BitVec 32) List!29232) Bool)

(assert (=> b!1285391 (= res!853985 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29229))))

(declare-fun b!1285392 () Bool)

(declare-fun e!734258 () Bool)

(declare-fun e!734260 () Bool)

(declare-fun mapRes!52562 () Bool)

(assert (=> b!1285392 (= e!734258 (and e!734260 mapRes!52562))))

(declare-fun condMapEmpty!52562 () Bool)

(declare-fun mapDefault!52562 () ValueCell!16103)

