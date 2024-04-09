; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109022 () Bool)

(assert start!109022)

(declare-fun b_free!28475 () Bool)

(declare-fun b_next!28475 () Bool)

(assert (=> start!109022 (= b_free!28475 (not b_next!28475))))

(declare-fun tp!100544 () Bool)

(declare-fun b_and!46575 () Bool)

(assert (=> start!109022 (= tp!100544 b_and!46575)))

(declare-fun b!1287763 () Bool)

(declare-fun res!855363 () Bool)

(declare-fun e!735415 () Bool)

(assert (=> b!1287763 (=> (not res!855363) (not e!735415))))

(declare-datatypes ((array!85231 0))(
  ( (array!85232 (arr!41112 (Array (_ BitVec 32) (_ BitVec 64))) (size!41663 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85231)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85231 (_ BitVec 32)) Bool)

(assert (=> b!1287763 (= res!855363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1287764 () Bool)

(declare-fun res!855367 () Bool)

(assert (=> b!1287764 (=> (not res!855367) (not e!735415))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1287764 (= res!855367 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41663 _keys!1741))))))

(declare-fun mapIsEmpty!52733 () Bool)

(declare-fun mapRes!52733 () Bool)

(assert (=> mapIsEmpty!52733 mapRes!52733))

(declare-fun b!1287765 () Bool)

(declare-fun res!855369 () Bool)

(assert (=> b!1287765 (=> (not res!855369) (not e!735415))))

(declare-datatypes ((List!29319 0))(
  ( (Nil!29316) (Cons!29315 (h!30524 (_ BitVec 64)) (t!42890 List!29319)) )
))
(declare-fun arrayNoDuplicates!0 (array!85231 (_ BitVec 32) List!29319) Bool)

(assert (=> b!1287765 (= res!855369 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29316))))

(declare-fun b!1287766 () Bool)

(declare-fun res!855366 () Bool)

(assert (=> b!1287766 (=> (not res!855366) (not e!735415))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1287766 (= res!855366 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41663 _keys!1741))))))

(declare-fun b!1287767 () Bool)

(declare-fun e!735417 () Bool)

(declare-fun tp_is_empty!34115 () Bool)

(assert (=> b!1287767 (= e!735417 tp_is_empty!34115)))

(declare-fun res!855365 () Bool)

(assert (=> start!109022 (=> (not res!855365) (not e!735415))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109022 (= res!855365 (validMask!0 mask!2175))))

(assert (=> start!109022 e!735415))

(assert (=> start!109022 tp_is_empty!34115))

(assert (=> start!109022 true))

(declare-datatypes ((V!50589 0))(
  ( (V!50590 (val!17132 Int)) )
))
(declare-datatypes ((ValueCell!16159 0))(
  ( (ValueCellFull!16159 (v!19733 V!50589)) (EmptyCell!16159) )
))
(declare-datatypes ((array!85233 0))(
  ( (array!85234 (arr!41113 (Array (_ BitVec 32) ValueCell!16159)) (size!41664 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85233)

(declare-fun e!735414 () Bool)

(declare-fun array_inv!31147 (array!85233) Bool)

(assert (=> start!109022 (and (array_inv!31147 _values!1445) e!735414)))

(declare-fun array_inv!31148 (array!85231) Bool)

(assert (=> start!109022 (array_inv!31148 _keys!1741)))

(assert (=> start!109022 tp!100544))

(declare-fun mapNonEmpty!52733 () Bool)

(declare-fun tp!100545 () Bool)

(declare-fun e!735416 () Bool)

(assert (=> mapNonEmpty!52733 (= mapRes!52733 (and tp!100545 e!735416))))

(declare-fun mapRest!52733 () (Array (_ BitVec 32) ValueCell!16159))

(declare-fun mapKey!52733 () (_ BitVec 32))

(declare-fun mapValue!52733 () ValueCell!16159)

(assert (=> mapNonEmpty!52733 (= (arr!41113 _values!1445) (store mapRest!52733 mapKey!52733 mapValue!52733))))

(declare-fun b!1287768 () Bool)

(assert (=> b!1287768 (= e!735415 (not true))))

(declare-datatypes ((tuple2!22120 0))(
  ( (tuple2!22121 (_1!11070 (_ BitVec 64)) (_2!11070 V!50589)) )
))
(declare-datatypes ((List!29320 0))(
  ( (Nil!29317) (Cons!29316 (h!30525 tuple2!22120) (t!42891 List!29320)) )
))
(declare-datatypes ((ListLongMap!19789 0))(
  ( (ListLongMap!19790 (toList!9910 List!29320)) )
))
(declare-fun contains!7966 (ListLongMap!19789 (_ BitVec 64)) Bool)

(assert (=> b!1287768 (not (contains!7966 (ListLongMap!19790 Nil!29317) k!1205))))

(declare-datatypes ((Unit!42519 0))(
  ( (Unit!42520) )
))
(declare-fun lt!577840 () Unit!42519)

(declare-fun emptyContainsNothing!27 ((_ BitVec 64)) Unit!42519)

(assert (=> b!1287768 (= lt!577840 (emptyContainsNothing!27 k!1205))))

(declare-fun b!1287769 () Bool)

(assert (=> b!1287769 (= e!735414 (and e!735417 mapRes!52733))))

(declare-fun condMapEmpty!52733 () Bool)

(declare-fun mapDefault!52733 () ValueCell!16159)

