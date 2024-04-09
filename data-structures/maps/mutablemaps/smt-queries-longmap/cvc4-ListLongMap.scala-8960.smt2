; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108526 () Bool)

(assert start!108526)

(declare-fun b_free!28037 () Bool)

(declare-fun b_next!28037 () Bool)

(assert (=> start!108526 (= b_free!28037 (not b_next!28037))))

(declare-fun tp!99222 () Bool)

(declare-fun b_and!46107 () Bool)

(assert (=> start!108526 (= tp!99222 b_and!46107)))

(declare-fun b!1280359 () Bool)

(declare-fun res!850571 () Bool)

(declare-fun e!731618 () Bool)

(assert (=> b!1280359 (=> (not res!850571) (not e!731618))))

(declare-datatypes ((array!84383 0))(
  ( (array!84384 (arr!40691 (Array (_ BitVec 32) (_ BitVec 64))) (size!41242 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84383)

(declare-datatypes ((List!29002 0))(
  ( (Nil!28999) (Cons!28998 (h!30207 (_ BitVec 64)) (t!42549 List!29002)) )
))
(declare-fun arrayNoDuplicates!0 (array!84383 (_ BitVec 32) List!29002) Bool)

(assert (=> b!1280359 (= res!850571 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28999))))

(declare-fun b!1280360 () Bool)

(declare-fun e!731616 () Bool)

(declare-fun tp_is_empty!33677 () Bool)

(assert (=> b!1280360 (= e!731616 tp_is_empty!33677)))

(declare-fun b!1280362 () Bool)

(declare-fun e!731619 () Bool)

(assert (=> b!1280362 (= e!731619 tp_is_empty!33677)))

(declare-fun mapNonEmpty!52067 () Bool)

(declare-fun mapRes!52067 () Bool)

(declare-fun tp!99221 () Bool)

(assert (=> mapNonEmpty!52067 (= mapRes!52067 (and tp!99221 e!731619))))

(declare-datatypes ((V!50005 0))(
  ( (V!50006 (val!16913 Int)) )
))
(declare-datatypes ((ValueCell!15940 0))(
  ( (ValueCellFull!15940 (v!19511 V!50005)) (EmptyCell!15940) )
))
(declare-fun mapRest!52067 () (Array (_ BitVec 32) ValueCell!15940))

(declare-fun mapKey!52067 () (_ BitVec 32))

(declare-datatypes ((array!84385 0))(
  ( (array!84386 (arr!40692 (Array (_ BitVec 32) ValueCell!15940)) (size!41243 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84385)

(declare-fun mapValue!52067 () ValueCell!15940)

(assert (=> mapNonEmpty!52067 (= (arr!40692 _values!1445) (store mapRest!52067 mapKey!52067 mapValue!52067))))

(declare-fun b!1280363 () Bool)

(declare-fun res!850567 () Bool)

(assert (=> b!1280363 (=> (not res!850567) (not e!731618))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1280363 (= res!850567 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41242 _keys!1741))))))

(declare-fun mapIsEmpty!52067 () Bool)

(assert (=> mapIsEmpty!52067 mapRes!52067))

(declare-fun b!1280364 () Bool)

(assert (=> b!1280364 (= e!731618 false)))

(declare-fun minValue!1387 () V!50005)

(declare-fun zeroValue!1387 () V!50005)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun lt!576064 () Bool)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21792 0))(
  ( (tuple2!21793 (_1!10906 (_ BitVec 64)) (_2!10906 V!50005)) )
))
(declare-datatypes ((List!29003 0))(
  ( (Nil!29000) (Cons!28999 (h!30208 tuple2!21792) (t!42550 List!29003)) )
))
(declare-datatypes ((ListLongMap!19461 0))(
  ( (ListLongMap!19462 (toList!9746 List!29003)) )
))
(declare-fun contains!7799 (ListLongMap!19461 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4766 (array!84383 array!84385 (_ BitVec 32) (_ BitVec 32) V!50005 V!50005 (_ BitVec 32) Int) ListLongMap!19461)

(assert (=> b!1280364 (= lt!576064 (contains!7799 (getCurrentListMap!4766 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1280361 () Bool)

(declare-fun e!731620 () Bool)

(assert (=> b!1280361 (= e!731620 (and e!731616 mapRes!52067))))

(declare-fun condMapEmpty!52067 () Bool)

(declare-fun mapDefault!52067 () ValueCell!15940)

