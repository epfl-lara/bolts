; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108664 () Bool)

(assert start!108664)

(declare-fun b_free!28141 () Bool)

(declare-fun b_next!28141 () Bool)

(assert (=> start!108664 (= b_free!28141 (not b_next!28141))))

(declare-fun tp!99539 () Bool)

(declare-fun b_and!46217 () Bool)

(assert (=> start!108664 (= tp!99539 b_and!46217)))

(declare-fun b!1282131 () Bool)

(declare-fun res!851727 () Bool)

(declare-fun e!732592 () Bool)

(assert (=> b!1282131 (=> (not res!851727) (not e!732592))))

(declare-datatypes ((array!84587 0))(
  ( (array!84588 (arr!40791 (Array (_ BitVec 32) (_ BitVec 64))) (size!41342 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84587)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84587 (_ BitVec 32)) Bool)

(assert (=> b!1282131 (= res!851727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1282132 () Bool)

(assert (=> b!1282132 (= e!732592 false)))

(declare-datatypes ((V!50145 0))(
  ( (V!50146 (val!16965 Int)) )
))
(declare-fun minValue!1387 () V!50145)

(declare-fun zeroValue!1387 () V!50145)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!576444 () Bool)

(declare-datatypes ((ValueCell!15992 0))(
  ( (ValueCellFull!15992 (v!19565 V!50145)) (EmptyCell!15992) )
))
(declare-datatypes ((array!84589 0))(
  ( (array!84590 (arr!40792 (Array (_ BitVec 32) ValueCell!15992)) (size!41343 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84589)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21868 0))(
  ( (tuple2!21869 (_1!10944 (_ BitVec 64)) (_2!10944 V!50145)) )
))
(declare-datatypes ((List!29076 0))(
  ( (Nil!29073) (Cons!29072 (h!30281 tuple2!21868) (t!42627 List!29076)) )
))
(declare-datatypes ((ListLongMap!19537 0))(
  ( (ListLongMap!19538 (toList!9784 List!29076)) )
))
(declare-fun contains!7839 (ListLongMap!19537 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4804 (array!84587 array!84589 (_ BitVec 32) (_ BitVec 32) V!50145 V!50145 (_ BitVec 32) Int) ListLongMap!19537)

(assert (=> b!1282132 (= lt!576444 (contains!7839 (getCurrentListMap!4804 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapIsEmpty!52229 () Bool)

(declare-fun mapRes!52229 () Bool)

(assert (=> mapIsEmpty!52229 mapRes!52229))

(declare-fun b!1282133 () Bool)

(declare-fun res!851725 () Bool)

(assert (=> b!1282133 (=> (not res!851725) (not e!732592))))

(assert (=> b!1282133 (= res!851725 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41342 _keys!1741))))))

(declare-fun b!1282134 () Bool)

(declare-fun e!732594 () Bool)

(declare-fun tp_is_empty!33781 () Bool)

(assert (=> b!1282134 (= e!732594 tp_is_empty!33781)))

(declare-fun b!1282135 () Bool)

(declare-fun res!851724 () Bool)

(assert (=> b!1282135 (=> (not res!851724) (not e!732592))))

(declare-datatypes ((List!29077 0))(
  ( (Nil!29074) (Cons!29073 (h!30282 (_ BitVec 64)) (t!42628 List!29077)) )
))
(declare-fun arrayNoDuplicates!0 (array!84587 (_ BitVec 32) List!29077) Bool)

(assert (=> b!1282135 (= res!851724 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29074))))

(declare-fun b!1282136 () Bool)

(declare-fun e!732595 () Bool)

(assert (=> b!1282136 (= e!732595 tp_is_empty!33781)))

(declare-fun b!1282137 () Bool)

(declare-fun e!732591 () Bool)

(assert (=> b!1282137 (= e!732591 (and e!732595 mapRes!52229))))

(declare-fun condMapEmpty!52229 () Bool)

(declare-fun mapDefault!52229 () ValueCell!15992)

