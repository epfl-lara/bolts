; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109010 () Bool)

(assert start!109010)

(declare-fun b_free!28463 () Bool)

(declare-fun b_next!28463 () Bool)

(assert (=> start!109010 (= b_free!28463 (not b_next!28463))))

(declare-fun tp!100508 () Bool)

(declare-fun b_and!46563 () Bool)

(assert (=> start!109010 (= tp!100508 b_and!46563)))

(declare-fun b!1287565 () Bool)

(declare-fun e!735327 () Bool)

(assert (=> b!1287565 (= e!735327 (not true))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!50573 0))(
  ( (V!50574 (val!17126 Int)) )
))
(declare-datatypes ((tuple2!22110 0))(
  ( (tuple2!22111 (_1!11065 (_ BitVec 64)) (_2!11065 V!50573)) )
))
(declare-datatypes ((List!29310 0))(
  ( (Nil!29307) (Cons!29306 (h!30515 tuple2!22110) (t!42881 List!29310)) )
))
(declare-datatypes ((ListLongMap!19779 0))(
  ( (ListLongMap!19780 (toList!9905 List!29310)) )
))
(declare-fun contains!7961 (ListLongMap!19779 (_ BitVec 64)) Bool)

(assert (=> b!1287565 (not (contains!7961 (ListLongMap!19780 Nil!29307) k!1205))))

(declare-datatypes ((Unit!42513 0))(
  ( (Unit!42514) )
))
(declare-fun lt!577822 () Unit!42513)

(declare-fun emptyContainsNothing!24 ((_ BitVec 64)) Unit!42513)

(assert (=> b!1287565 (= lt!577822 (emptyContainsNothing!24 k!1205))))

(declare-fun b!1287566 () Bool)

(declare-fun e!735328 () Bool)

(declare-fun tp_is_empty!34103 () Bool)

(assert (=> b!1287566 (= e!735328 tp_is_empty!34103)))

(declare-fun b!1287567 () Bool)

(declare-fun e!735324 () Bool)

(declare-fun mapRes!52715 () Bool)

(assert (=> b!1287567 (= e!735324 (and e!735328 mapRes!52715))))

(declare-fun condMapEmpty!52715 () Bool)

(declare-datatypes ((ValueCell!16153 0))(
  ( (ValueCellFull!16153 (v!19727 V!50573)) (EmptyCell!16153) )
))
(declare-datatypes ((array!85211 0))(
  ( (array!85212 (arr!41102 (Array (_ BitVec 32) ValueCell!16153)) (size!41653 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85211)

(declare-fun mapDefault!52715 () ValueCell!16153)

