; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109802 () Bool)

(assert start!109802)

(declare-fun b_free!29179 () Bool)

(declare-fun b_next!29179 () Bool)

(assert (=> start!109802 (= b_free!29179 (not b_next!29179))))

(declare-fun tp!102668 () Bool)

(declare-fun b_and!47297 () Bool)

(assert (=> start!109802 (= tp!102668 b_and!47297)))

(declare-fun b!1300124 () Bool)

(declare-fun res!864065 () Bool)

(declare-fun e!741673 () Bool)

(assert (=> b!1300124 (=> (not res!864065) (not e!741673))))

(declare-datatypes ((array!86611 0))(
  ( (array!86612 (arr!41798 (Array (_ BitVec 32) (_ BitVec 64))) (size!42349 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86611)

(declare-datatypes ((List!29858 0))(
  ( (Nil!29855) (Cons!29854 (h!31063 (_ BitVec 64)) (t!43437 List!29858)) )
))
(declare-fun arrayNoDuplicates!0 (array!86611 (_ BitVec 32) List!29858) Bool)

(assert (=> b!1300124 (= res!864065 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29855))))

(declare-fun b!1300125 () Bool)

(declare-fun e!741672 () Bool)

(declare-fun tp_is_empty!34819 () Bool)

(assert (=> b!1300125 (= e!741672 tp_is_empty!34819)))

(declare-fun b!1300126 () Bool)

(declare-fun res!864073 () Bool)

(assert (=> b!1300126 (=> (not res!864073) (not e!741673))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1300126 (= res!864073 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42349 _keys!1741))))))

(declare-fun b!1300127 () Bool)

(declare-fun res!864069 () Bool)

(assert (=> b!1300127 (=> (not res!864069) (not e!741673))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86611 (_ BitVec 32)) Bool)

(assert (=> b!1300127 (= res!864069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!864066 () Bool)

(assert (=> start!109802 (=> (not res!864066) (not e!741673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109802 (= res!864066 (validMask!0 mask!2175))))

(assert (=> start!109802 e!741673))

(assert (=> start!109802 tp_is_empty!34819))

(assert (=> start!109802 true))

(declare-datatypes ((V!51529 0))(
  ( (V!51530 (val!17484 Int)) )
))
(declare-datatypes ((ValueCell!16511 0))(
  ( (ValueCellFull!16511 (v!20089 V!51529)) (EmptyCell!16511) )
))
(declare-datatypes ((array!86613 0))(
  ( (array!86614 (arr!41799 (Array (_ BitVec 32) ValueCell!16511)) (size!42350 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86613)

(declare-fun e!741670 () Bool)

(declare-fun array_inv!31623 (array!86613) Bool)

(assert (=> start!109802 (and (array_inv!31623 _values!1445) e!741670)))

(declare-fun array_inv!31624 (array!86611) Bool)

(assert (=> start!109802 (array_inv!31624 _keys!1741)))

(assert (=> start!109802 tp!102668))

(declare-fun b!1300128 () Bool)

(declare-fun res!864067 () Bool)

(assert (=> b!1300128 (=> (not res!864067) (not e!741673))))

(declare-fun minValue!1387 () V!51529)

(declare-fun zeroValue!1387 () V!51529)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22700 0))(
  ( (tuple2!22701 (_1!11360 (_ BitVec 64)) (_2!11360 V!51529)) )
))
(declare-datatypes ((List!29859 0))(
  ( (Nil!29856) (Cons!29855 (h!31064 tuple2!22700) (t!43438 List!29859)) )
))
(declare-datatypes ((ListLongMap!20369 0))(
  ( (ListLongMap!20370 (toList!10200 List!29859)) )
))
(declare-fun contains!8260 (ListLongMap!20369 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5173 (array!86611 array!86613 (_ BitVec 32) (_ BitVec 32) V!51529 V!51529 (_ BitVec 32) Int) ListLongMap!20369)

(assert (=> b!1300128 (= res!864067 (contains!8260 (getCurrentListMap!5173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1300129 () Bool)

(declare-fun mapRes!53801 () Bool)

(assert (=> b!1300129 (= e!741670 (and e!741672 mapRes!53801))))

(declare-fun condMapEmpty!53801 () Bool)

(declare-fun mapDefault!53801 () ValueCell!16511)

