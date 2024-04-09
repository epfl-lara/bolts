; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109246 () Bool)

(assert start!109246)

(declare-fun b_free!28699 () Bool)

(declare-fun b_next!28699 () Bool)

(assert (=> start!109246 (= b_free!28699 (not b_next!28699))))

(declare-fun tp!101217 () Bool)

(declare-fun b_and!46799 () Bool)

(assert (=> start!109246 (= tp!101217 b_and!46799)))

(declare-fun b!1291756 () Bool)

(declare-fun res!858353 () Bool)

(declare-fun e!737395 () Bool)

(assert (=> b!1291756 (=> (not res!858353) (not e!737395))))

(declare-datatypes ((array!85671 0))(
  ( (array!85672 (arr!41332 (Array (_ BitVec 32) (_ BitVec 64))) (size!41883 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85671)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291756 (= res!858353 (not (validKeyInArray!0 (select (arr!41332 _keys!1741) from!2144))))))

(declare-fun b!1291757 () Bool)

(declare-fun e!737393 () Bool)

(declare-fun tp_is_empty!34339 () Bool)

(assert (=> b!1291757 (= e!737393 tp_is_empty!34339)))

(declare-fun b!1291758 () Bool)

(declare-fun res!858348 () Bool)

(assert (=> b!1291758 (=> (not res!858348) (not e!737395))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1291758 (= res!858348 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41883 _keys!1741))))))

(declare-fun b!1291759 () Bool)

(declare-fun res!858351 () Bool)

(assert (=> b!1291759 (=> (not res!858351) (not e!737395))))

(declare-datatypes ((V!50889 0))(
  ( (V!50890 (val!17244 Int)) )
))
(declare-fun minValue!1387 () V!50889)

(declare-fun zeroValue!1387 () V!50889)

(declare-datatypes ((ValueCell!16271 0))(
  ( (ValueCellFull!16271 (v!19845 V!50889)) (EmptyCell!16271) )
))
(declare-datatypes ((array!85673 0))(
  ( (array!85674 (arr!41333 (Array (_ BitVec 32) ValueCell!16271)) (size!41884 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85673)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22310 0))(
  ( (tuple2!22311 (_1!11165 (_ BitVec 64)) (_2!11165 V!50889)) )
))
(declare-datatypes ((List!29500 0))(
  ( (Nil!29497) (Cons!29496 (h!30705 tuple2!22310) (t!43071 List!29500)) )
))
(declare-datatypes ((ListLongMap!19979 0))(
  ( (ListLongMap!19980 (toList!10005 List!29500)) )
))
(declare-fun contains!8061 (ListLongMap!19979 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4998 (array!85671 array!85673 (_ BitVec 32) (_ BitVec 32) V!50889 V!50889 (_ BitVec 32) Int) ListLongMap!19979)

(assert (=> b!1291759 (= res!858351 (contains!8061 (getCurrentListMap!4998 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1291760 () Bool)

(declare-fun res!858354 () Bool)

(assert (=> b!1291760 (=> (not res!858354) (not e!737395))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85671 (_ BitVec 32)) Bool)

(assert (=> b!1291760 (= res!858354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1291761 () Bool)

(declare-fun res!858347 () Bool)

(assert (=> b!1291761 (=> (not res!858347) (not e!737395))))

(assert (=> b!1291761 (= res!858347 (and (= (size!41884 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41883 _keys!1741) (size!41884 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1291762 () Bool)

(declare-fun e!737394 () Bool)

(assert (=> b!1291762 (= e!737394 tp_is_empty!34339)))

(declare-fun b!1291763 () Bool)

(declare-fun res!858350 () Bool)

(assert (=> b!1291763 (=> (not res!858350) (not e!737395))))

(declare-datatypes ((List!29501 0))(
  ( (Nil!29498) (Cons!29497 (h!30706 (_ BitVec 64)) (t!43072 List!29501)) )
))
(declare-fun arrayNoDuplicates!0 (array!85671 (_ BitVec 32) List!29501) Bool)

(assert (=> b!1291763 (= res!858350 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29498))))

(declare-fun res!858349 () Bool)

(assert (=> start!109246 (=> (not res!858349) (not e!737395))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109246 (= res!858349 (validMask!0 mask!2175))))

(assert (=> start!109246 e!737395))

(assert (=> start!109246 tp_is_empty!34339))

(assert (=> start!109246 true))

(declare-fun e!737391 () Bool)

(declare-fun array_inv!31289 (array!85673) Bool)

(assert (=> start!109246 (and (array_inv!31289 _values!1445) e!737391)))

(declare-fun array_inv!31290 (array!85671) Bool)

(assert (=> start!109246 (array_inv!31290 _keys!1741)))

(assert (=> start!109246 tp!101217))

(declare-fun b!1291764 () Bool)

(declare-fun res!858352 () Bool)

(assert (=> b!1291764 (=> (not res!858352) (not e!737395))))

(assert (=> b!1291764 (= res!858352 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41883 _keys!1741))))))

(declare-fun mapIsEmpty!53069 () Bool)

(declare-fun mapRes!53069 () Bool)

(assert (=> mapIsEmpty!53069 mapRes!53069))

(declare-fun mapNonEmpty!53069 () Bool)

(declare-fun tp!101216 () Bool)

(assert (=> mapNonEmpty!53069 (= mapRes!53069 (and tp!101216 e!737393))))

(declare-fun mapKey!53069 () (_ BitVec 32))

(declare-fun mapRest!53069 () (Array (_ BitVec 32) ValueCell!16271))

(declare-fun mapValue!53069 () ValueCell!16271)

(assert (=> mapNonEmpty!53069 (= (arr!41333 _values!1445) (store mapRest!53069 mapKey!53069 mapValue!53069))))

(declare-fun b!1291765 () Bool)

(assert (=> b!1291765 (= e!737391 (and e!737394 mapRes!53069))))

(declare-fun condMapEmpty!53069 () Bool)

(declare-fun mapDefault!53069 () ValueCell!16271)

