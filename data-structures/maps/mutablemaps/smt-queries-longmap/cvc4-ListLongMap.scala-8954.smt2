; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108490 () Bool)

(assert start!108490)

(declare-fun b_free!28001 () Bool)

(declare-fun b_next!28001 () Bool)

(assert (=> start!108490 (= b_free!28001 (not b_next!28001))))

(declare-fun tp!99113 () Bool)

(declare-fun b_and!46071 () Bool)

(assert (=> start!108490 (= tp!99113 b_and!46071)))

(declare-fun b!1279927 () Bool)

(declare-fun res!850298 () Bool)

(declare-fun e!731347 () Bool)

(assert (=> b!1279927 (=> (not res!850298) (not e!731347))))

(declare-datatypes ((array!84315 0))(
  ( (array!84316 (arr!40657 (Array (_ BitVec 32) (_ BitVec 64))) (size!41208 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84315)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84315 (_ BitVec 32)) Bool)

(assert (=> b!1279927 (= res!850298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!52013 () Bool)

(declare-fun mapRes!52013 () Bool)

(declare-fun tp!99114 () Bool)

(declare-fun e!731350 () Bool)

(assert (=> mapNonEmpty!52013 (= mapRes!52013 (and tp!99114 e!731350))))

(declare-datatypes ((V!49957 0))(
  ( (V!49958 (val!16895 Int)) )
))
(declare-datatypes ((ValueCell!15922 0))(
  ( (ValueCellFull!15922 (v!19493 V!49957)) (EmptyCell!15922) )
))
(declare-fun mapRest!52013 () (Array (_ BitVec 32) ValueCell!15922))

(declare-fun mapValue!52013 () ValueCell!15922)

(declare-datatypes ((array!84317 0))(
  ( (array!84318 (arr!40658 (Array (_ BitVec 32) ValueCell!15922)) (size!41209 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84317)

(declare-fun mapKey!52013 () (_ BitVec 32))

(assert (=> mapNonEmpty!52013 (= (arr!40658 _values!1445) (store mapRest!52013 mapKey!52013 mapValue!52013))))

(declare-fun b!1279929 () Bool)

(declare-fun tp_is_empty!33641 () Bool)

(assert (=> b!1279929 (= e!731350 tp_is_empty!33641)))

(declare-fun mapIsEmpty!52013 () Bool)

(assert (=> mapIsEmpty!52013 mapRes!52013))

(declare-fun b!1279930 () Bool)

(declare-fun res!850301 () Bool)

(assert (=> b!1279930 (=> (not res!850301) (not e!731347))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1279930 (= res!850301 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41208 _keys!1741))))))

(declare-fun b!1279931 () Bool)

(declare-fun res!850297 () Bool)

(assert (=> b!1279931 (=> (not res!850297) (not e!731347))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1279931 (= res!850297 (and (= (size!41209 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41208 _keys!1741) (size!41209 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279932 () Bool)

(declare-fun e!731348 () Bool)

(assert (=> b!1279932 (= e!731348 tp_is_empty!33641)))

(declare-fun b!1279928 () Bool)

(assert (=> b!1279928 (= e!731347 false)))

(declare-fun minValue!1387 () V!49957)

(declare-fun zeroValue!1387 () V!49957)

(declare-fun lt!576010 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21768 0))(
  ( (tuple2!21769 (_1!10894 (_ BitVec 64)) (_2!10894 V!49957)) )
))
(declare-datatypes ((List!28978 0))(
  ( (Nil!28975) (Cons!28974 (h!30183 tuple2!21768) (t!42525 List!28978)) )
))
(declare-datatypes ((ListLongMap!19437 0))(
  ( (ListLongMap!19438 (toList!9734 List!28978)) )
))
(declare-fun contains!7787 (ListLongMap!19437 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4754 (array!84315 array!84317 (_ BitVec 32) (_ BitVec 32) V!49957 V!49957 (_ BitVec 32) Int) ListLongMap!19437)

(assert (=> b!1279928 (= lt!576010 (contains!7787 (getCurrentListMap!4754 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!850300 () Bool)

(assert (=> start!108490 (=> (not res!850300) (not e!731347))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108490 (= res!850300 (validMask!0 mask!2175))))

(assert (=> start!108490 e!731347))

(assert (=> start!108490 tp_is_empty!33641))

(assert (=> start!108490 true))

(declare-fun e!731349 () Bool)

(declare-fun array_inv!30847 (array!84317) Bool)

(assert (=> start!108490 (and (array_inv!30847 _values!1445) e!731349)))

(declare-fun array_inv!30848 (array!84315) Bool)

(assert (=> start!108490 (array_inv!30848 _keys!1741)))

(assert (=> start!108490 tp!99113))

(declare-fun b!1279933 () Bool)

(assert (=> b!1279933 (= e!731349 (and e!731348 mapRes!52013))))

(declare-fun condMapEmpty!52013 () Bool)

(declare-fun mapDefault!52013 () ValueCell!15922)

