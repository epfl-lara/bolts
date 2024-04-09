; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108538 () Bool)

(assert start!108538)

(declare-fun b_free!28049 () Bool)

(declare-fun b_next!28049 () Bool)

(assert (=> start!108538 (= b_free!28049 (not b_next!28049))))

(declare-fun tp!99257 () Bool)

(declare-fun b_and!46119 () Bool)

(assert (=> start!108538 (= tp!99257 b_and!46119)))

(declare-fun b!1280537 () Bool)

(declare-fun res!850696 () Bool)

(declare-fun e!731706 () Bool)

(assert (=> b!1280537 (=> (not res!850696) (not e!731706))))

(declare-datatypes ((V!50021 0))(
  ( (V!50022 (val!16919 Int)) )
))
(declare-fun minValue!1387 () V!50021)

(declare-fun zeroValue!1387 () V!50021)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15946 0))(
  ( (ValueCellFull!15946 (v!19517 V!50021)) (EmptyCell!15946) )
))
(declare-datatypes ((array!84407 0))(
  ( (array!84408 (arr!40703 (Array (_ BitVec 32) ValueCell!15946)) (size!41254 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84407)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84409 0))(
  ( (array!84410 (arr!40704 (Array (_ BitVec 32) (_ BitVec 64))) (size!41255 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84409)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21804 0))(
  ( (tuple2!21805 (_1!10912 (_ BitVec 64)) (_2!10912 V!50021)) )
))
(declare-datatypes ((List!29014 0))(
  ( (Nil!29011) (Cons!29010 (h!30219 tuple2!21804) (t!42561 List!29014)) )
))
(declare-datatypes ((ListLongMap!19473 0))(
  ( (ListLongMap!19474 (toList!9752 List!29014)) )
))
(declare-fun contains!7805 (ListLongMap!19473 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4772 (array!84409 array!84407 (_ BitVec 32) (_ BitVec 32) V!50021 V!50021 (_ BitVec 32) Int) ListLongMap!19473)

(assert (=> b!1280537 (= res!850696 (contains!7805 (getCurrentListMap!4772 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1280538 () Bool)

(declare-fun e!731710 () Bool)

(declare-fun e!731707 () Bool)

(declare-fun mapRes!52085 () Bool)

(assert (=> b!1280538 (= e!731710 (and e!731707 mapRes!52085))))

(declare-fun condMapEmpty!52085 () Bool)

(declare-fun mapDefault!52085 () ValueCell!15946)

