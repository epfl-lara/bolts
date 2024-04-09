; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108632 () Bool)

(assert start!108632)

(declare-fun b_free!28123 () Bool)

(declare-fun b_next!28123 () Bool)

(assert (=> start!108632 (= b_free!28123 (not b_next!28123))))

(declare-fun tp!99483 () Bool)

(declare-fun b_and!46197 () Bool)

(assert (=> start!108632 (= tp!99483 b_and!46197)))

(declare-fun mapNonEmpty!52199 () Bool)

(declare-fun mapRes!52199 () Bool)

(declare-fun tp!99482 () Bool)

(declare-fun e!732384 () Bool)

(assert (=> mapNonEmpty!52199 (= mapRes!52199 (and tp!99482 e!732384))))

(declare-datatypes ((V!50121 0))(
  ( (V!50122 (val!16956 Int)) )
))
(declare-datatypes ((ValueCell!15983 0))(
  ( (ValueCellFull!15983 (v!19555 V!50121)) (EmptyCell!15983) )
))
(declare-fun mapRest!52199 () (Array (_ BitVec 32) ValueCell!15983))

(declare-datatypes ((array!84551 0))(
  ( (array!84552 (arr!40774 (Array (_ BitVec 32) ValueCell!15983)) (size!41325 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84551)

(declare-fun mapKey!52199 () (_ BitVec 32))

(declare-fun mapValue!52199 () ValueCell!15983)

(assert (=> mapNonEmpty!52199 (= (arr!40774 _values!1445) (store mapRest!52199 mapKey!52199 mapValue!52199))))

(declare-fun b!1281797 () Bool)

(declare-fun res!851534 () Bool)

(declare-fun e!732387 () Bool)

(assert (=> b!1281797 (=> (not res!851534) (not e!732387))))

(declare-datatypes ((array!84553 0))(
  ( (array!84554 (arr!40775 (Array (_ BitVec 32) (_ BitVec 64))) (size!41326 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84553)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84553 (_ BitVec 32)) Bool)

(assert (=> b!1281797 (= res!851534 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1281798 () Bool)

(declare-fun res!851537 () Bool)

(assert (=> b!1281798 (=> (not res!851537) (not e!732387))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1281798 (= res!851537 (and (= (size!41325 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41326 _keys!1741) (size!41325 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1281799 () Bool)

(assert (=> b!1281799 (= e!732387 false)))

(declare-fun minValue!1387 () V!50121)

(declare-fun zeroValue!1387 () V!50121)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!576339 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21858 0))(
  ( (tuple2!21859 (_1!10939 (_ BitVec 64)) (_2!10939 V!50121)) )
))
(declare-datatypes ((List!29067 0))(
  ( (Nil!29064) (Cons!29063 (h!30272 tuple2!21858) (t!42616 List!29067)) )
))
(declare-datatypes ((ListLongMap!19527 0))(
  ( (ListLongMap!19528 (toList!9779 List!29067)) )
))
(declare-fun contains!7833 (ListLongMap!19527 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4799 (array!84553 array!84551 (_ BitVec 32) (_ BitVec 32) V!50121 V!50121 (_ BitVec 32) Int) ListLongMap!19527)

(assert (=> b!1281799 (= lt!576339 (contains!7833 (getCurrentListMap!4799 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1281800 () Bool)

(declare-fun e!732385 () Bool)

(declare-fun e!732386 () Bool)

(assert (=> b!1281800 (= e!732385 (and e!732386 mapRes!52199))))

(declare-fun condMapEmpty!52199 () Bool)

(declare-fun mapDefault!52199 () ValueCell!15983)

