; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109412 () Bool)

(assert start!109412)

(declare-fun b_free!28865 () Bool)

(declare-fun b_next!28865 () Bool)

(assert (=> start!109412 (= b_free!28865 (not b_next!28865))))

(declare-fun tp!101714 () Bool)

(declare-fun b_and!46965 () Bool)

(assert (=> start!109412 (= tp!101714 b_and!46965)))

(declare-fun b!1294603 () Bool)

(declare-fun res!860450 () Bool)

(declare-fun e!738745 () Bool)

(assert (=> b!1294603 (=> (not res!860450) (not e!738745))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!85995 0))(
  ( (array!85996 (arr!41494 (Array (_ BitVec 32) (_ BitVec 64))) (size!42045 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85995)

(assert (=> b!1294603 (= res!860450 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42045 _keys!1741))))))

(declare-fun b!1294604 () Bool)

(declare-fun res!860447 () Bool)

(assert (=> b!1294604 (=> (not res!860447) (not e!738745))))

(declare-datatypes ((V!51109 0))(
  ( (V!51110 (val!17327 Int)) )
))
(declare-fun minValue!1387 () V!51109)

(declare-fun zeroValue!1387 () V!51109)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16354 0))(
  ( (ValueCellFull!16354 (v!19928 V!51109)) (EmptyCell!16354) )
))
(declare-datatypes ((array!85997 0))(
  ( (array!85998 (arr!41495 (Array (_ BitVec 32) ValueCell!16354)) (size!42046 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85997)

(declare-datatypes ((tuple2!22450 0))(
  ( (tuple2!22451 (_1!11235 (_ BitVec 64)) (_2!11235 V!51109)) )
))
(declare-datatypes ((List!29624 0))(
  ( (Nil!29621) (Cons!29620 (h!30829 tuple2!22450) (t!43195 List!29624)) )
))
(declare-datatypes ((ListLongMap!20119 0))(
  ( (ListLongMap!20120 (toList!10075 List!29624)) )
))
(declare-fun contains!8131 (ListLongMap!20119 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5059 (array!85995 array!85997 (_ BitVec 32) (_ BitVec 32) V!51109 V!51109 (_ BitVec 32) Int) ListLongMap!20119)

(assert (=> b!1294604 (= res!860447 (contains!8131 (getCurrentListMap!5059 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1294605 () Bool)

(declare-fun res!860448 () Bool)

(assert (=> b!1294605 (=> (not res!860448) (not e!738745))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85995 (_ BitVec 32)) Bool)

(assert (=> b!1294605 (= res!860448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1294607 () Bool)

(declare-fun e!738747 () Bool)

(declare-fun tp_is_empty!34505 () Bool)

(assert (=> b!1294607 (= e!738747 tp_is_empty!34505)))

(declare-fun b!1294608 () Bool)

(declare-fun res!860454 () Bool)

(assert (=> b!1294608 (=> (not res!860454) (not e!738745))))

(assert (=> b!1294608 (= res!860454 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42045 _keys!1741))))))

(declare-fun b!1294609 () Bool)

(declare-fun e!738746 () Bool)

(declare-fun mapRes!53318 () Bool)

(assert (=> b!1294609 (= e!738746 (and e!738747 mapRes!53318))))

(declare-fun condMapEmpty!53318 () Bool)

(declare-fun mapDefault!53318 () ValueCell!16354)

