; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108824 () Bool)

(assert start!108824)

(declare-fun b_free!28301 () Bool)

(declare-fun b_next!28301 () Bool)

(assert (=> start!108824 (= b_free!28301 (not b_next!28301))))

(declare-fun tp!100019 () Bool)

(declare-fun b_and!46377 () Bool)

(assert (=> start!108824 (= tp!100019 b_and!46377)))

(declare-fun mapNonEmpty!52469 () Bool)

(declare-fun mapRes!52469 () Bool)

(declare-fun tp!100020 () Bool)

(declare-fun e!733793 () Bool)

(assert (=> mapNonEmpty!52469 (= mapRes!52469 (and tp!100020 e!733793))))

(declare-datatypes ((V!50357 0))(
  ( (V!50358 (val!17045 Int)) )
))
(declare-datatypes ((ValueCell!16072 0))(
  ( (ValueCellFull!16072 (v!19645 V!50357)) (EmptyCell!16072) )
))
(declare-fun mapRest!52469 () (Array (_ BitVec 32) ValueCell!16072))

(declare-fun mapValue!52469 () ValueCell!16072)

(declare-datatypes ((array!84897 0))(
  ( (array!84898 (arr!40946 (Array (_ BitVec 32) ValueCell!16072)) (size!41497 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84897)

(declare-fun mapKey!52469 () (_ BitVec 32))

(assert (=> mapNonEmpty!52469 (= (arr!40946 _values!1445) (store mapRest!52469 mapKey!52469 mapValue!52469))))

(declare-fun b!1284546 () Bool)

(declare-fun res!853421 () Bool)

(declare-fun e!733792 () Bool)

(assert (=> b!1284546 (=> (not res!853421) (not e!733792))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84899 0))(
  ( (array!84900 (arr!40947 (Array (_ BitVec 32) (_ BitVec 64))) (size!41498 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84899)

(assert (=> b!1284546 (= res!853421 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41498 _keys!1741))))))

(declare-fun b!1284547 () Bool)

(declare-fun res!853418 () Bool)

(assert (=> b!1284547 (=> (not res!853418) (not e!733792))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1284547 (= res!853418 (and (= (size!41497 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41498 _keys!1741) (size!41497 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1284548 () Bool)

(declare-fun res!853420 () Bool)

(assert (=> b!1284548 (=> (not res!853420) (not e!733792))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84899 (_ BitVec 32)) Bool)

(assert (=> b!1284548 (= res!853420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1284549 () Bool)

(assert (=> b!1284549 (= e!733792 false)))

(declare-fun minValue!1387 () V!50357)

(declare-fun zeroValue!1387 () V!50357)

(declare-fun lt!576774 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21976 0))(
  ( (tuple2!21977 (_1!10998 (_ BitVec 64)) (_2!10998 V!50357)) )
))
(declare-datatypes ((List!29186 0))(
  ( (Nil!29183) (Cons!29182 (h!30391 tuple2!21976) (t!42737 List!29186)) )
))
(declare-datatypes ((ListLongMap!19645 0))(
  ( (ListLongMap!19646 (toList!9838 List!29186)) )
))
(declare-fun contains!7893 (ListLongMap!19645 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4856 (array!84899 array!84897 (_ BitVec 32) (_ BitVec 32) V!50357 V!50357 (_ BitVec 32) Int) ListLongMap!19645)

(assert (=> b!1284549 (= lt!576774 (contains!7893 (getCurrentListMap!4856 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1284551 () Bool)

(declare-fun res!853419 () Bool)

(assert (=> b!1284551 (=> (not res!853419) (not e!733792))))

(declare-datatypes ((List!29187 0))(
  ( (Nil!29184) (Cons!29183 (h!30392 (_ BitVec 64)) (t!42738 List!29187)) )
))
(declare-fun arrayNoDuplicates!0 (array!84899 (_ BitVec 32) List!29187) Bool)

(assert (=> b!1284551 (= res!853419 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29184))))

(declare-fun b!1284552 () Bool)

(declare-fun e!733795 () Bool)

(declare-fun tp_is_empty!33941 () Bool)

(assert (=> b!1284552 (= e!733795 tp_is_empty!33941)))

(declare-fun b!1284553 () Bool)

(assert (=> b!1284553 (= e!733793 tp_is_empty!33941)))

(declare-fun mapIsEmpty!52469 () Bool)

(assert (=> mapIsEmpty!52469 mapRes!52469))

(declare-fun res!853422 () Bool)

(assert (=> start!108824 (=> (not res!853422) (not e!733792))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108824 (= res!853422 (validMask!0 mask!2175))))

(assert (=> start!108824 e!733792))

(assert (=> start!108824 tp_is_empty!33941))

(assert (=> start!108824 true))

(declare-fun e!733794 () Bool)

(declare-fun array_inv!31035 (array!84897) Bool)

(assert (=> start!108824 (and (array_inv!31035 _values!1445) e!733794)))

(declare-fun array_inv!31036 (array!84899) Bool)

(assert (=> start!108824 (array_inv!31036 _keys!1741)))

(assert (=> start!108824 tp!100019))

(declare-fun b!1284550 () Bool)

(assert (=> b!1284550 (= e!733794 (and e!733795 mapRes!52469))))

(declare-fun condMapEmpty!52469 () Bool)

(declare-fun mapDefault!52469 () ValueCell!16072)

