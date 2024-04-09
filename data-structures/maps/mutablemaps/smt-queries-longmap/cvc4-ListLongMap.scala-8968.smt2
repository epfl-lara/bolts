; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108574 () Bool)

(assert start!108574)

(declare-fun b_free!28085 () Bool)

(declare-fun b_next!28085 () Bool)

(assert (=> start!108574 (= b_free!28085 (not b_next!28085))))

(declare-fun tp!99365 () Bool)

(declare-fun b_and!46155 () Bool)

(assert (=> start!108574 (= tp!99365 b_and!46155)))

(declare-fun b!1281077 () Bool)

(declare-fun res!851074 () Bool)

(declare-fun e!731980 () Bool)

(assert (=> b!1281077 (=> (not res!851074) (not e!731980))))

(declare-datatypes ((V!50069 0))(
  ( (V!50070 (val!16937 Int)) )
))
(declare-fun zeroValue!1387 () V!50069)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15964 0))(
  ( (ValueCellFull!15964 (v!19535 V!50069)) (EmptyCell!15964) )
))
(declare-datatypes ((array!84475 0))(
  ( (array!84476 (arr!40737 (Array (_ BitVec 32) ValueCell!15964)) (size!41288 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84475)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84477 0))(
  ( (array!84478 (arr!40738 (Array (_ BitVec 32) (_ BitVec 64))) (size!41289 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84477)

(declare-fun minValue!1387 () V!50069)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21832 0))(
  ( (tuple2!21833 (_1!10926 (_ BitVec 64)) (_2!10926 V!50069)) )
))
(declare-datatypes ((List!29041 0))(
  ( (Nil!29038) (Cons!29037 (h!30246 tuple2!21832) (t!42588 List!29041)) )
))
(declare-datatypes ((ListLongMap!19501 0))(
  ( (ListLongMap!19502 (toList!9766 List!29041)) )
))
(declare-fun contains!7819 (ListLongMap!19501 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4786 (array!84477 array!84475 (_ BitVec 32) (_ BitVec 32) V!50069 V!50069 (_ BitVec 32) Int) ListLongMap!19501)

(assert (=> b!1281077 (= res!851074 (contains!7819 (getCurrentListMap!4786 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!851075 () Bool)

(assert (=> start!108574 (=> (not res!851075) (not e!731980))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108574 (= res!851075 (validMask!0 mask!2175))))

(assert (=> start!108574 e!731980))

(declare-fun tp_is_empty!33725 () Bool)

(assert (=> start!108574 tp_is_empty!33725))

(assert (=> start!108574 true))

(declare-fun e!731978 () Bool)

(declare-fun array_inv!30899 (array!84475) Bool)

(assert (=> start!108574 (and (array_inv!30899 _values!1445) e!731978)))

(declare-fun array_inv!30900 (array!84477) Bool)

(assert (=> start!108574 (array_inv!30900 _keys!1741)))

(assert (=> start!108574 tp!99365))

(declare-fun b!1281078 () Bool)

(declare-fun e!731979 () Bool)

(declare-fun mapRes!52139 () Bool)

(assert (=> b!1281078 (= e!731978 (and e!731979 mapRes!52139))))

(declare-fun condMapEmpty!52139 () Bool)

(declare-fun mapDefault!52139 () ValueCell!15964)

