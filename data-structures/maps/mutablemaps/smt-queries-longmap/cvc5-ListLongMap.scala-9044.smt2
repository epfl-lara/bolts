; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109084 () Bool)

(assert start!109084)

(declare-fun b_free!28537 () Bool)

(declare-fun b_next!28537 () Bool)

(assert (=> start!109084 (= b_free!28537 (not b_next!28537))))

(declare-fun tp!100731 () Bool)

(declare-fun b_and!46637 () Bool)

(assert (=> start!109084 (= tp!100731 b_and!46637)))

(declare-fun b!1288851 () Bool)

(declare-fun e!735948 () Bool)

(declare-fun e!735949 () Bool)

(assert (=> b!1288851 (= e!735948 (not e!735949))))

(declare-fun res!856178 () Bool)

(assert (=> b!1288851 (=> res!856178 e!735949)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1288851 (= res!856178 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!50673 0))(
  ( (V!50674 (val!17163 Int)) )
))
(declare-datatypes ((tuple2!22170 0))(
  ( (tuple2!22171 (_1!11095 (_ BitVec 64)) (_2!11095 V!50673)) )
))
(declare-datatypes ((List!29369 0))(
  ( (Nil!29366) (Cons!29365 (h!30574 tuple2!22170) (t!42940 List!29369)) )
))
(declare-datatypes ((ListLongMap!19839 0))(
  ( (ListLongMap!19840 (toList!9935 List!29369)) )
))
(declare-fun contains!7991 (ListLongMap!19839 (_ BitVec 64)) Bool)

(assert (=> b!1288851 (not (contains!7991 (ListLongMap!19840 Nil!29366) k!1205))))

(declare-datatypes ((Unit!42565 0))(
  ( (Unit!42566) )
))
(declare-fun lt!578056 () Unit!42565)

(declare-fun emptyContainsNothing!48 ((_ BitVec 64)) Unit!42565)

(assert (=> b!1288851 (= lt!578056 (emptyContainsNothing!48 k!1205))))

(declare-fun res!856179 () Bool)

(assert (=> start!109084 (=> (not res!856179) (not e!735948))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109084 (= res!856179 (validMask!0 mask!2175))))

(assert (=> start!109084 e!735948))

(declare-fun tp_is_empty!34177 () Bool)

(assert (=> start!109084 tp_is_empty!34177))

(assert (=> start!109084 true))

(declare-datatypes ((ValueCell!16190 0))(
  ( (ValueCellFull!16190 (v!19764 V!50673)) (EmptyCell!16190) )
))
(declare-datatypes ((array!85353 0))(
  ( (array!85354 (arr!41173 (Array (_ BitVec 32) ValueCell!16190)) (size!41724 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85353)

(declare-fun e!735944 () Bool)

(declare-fun array_inv!31189 (array!85353) Bool)

(assert (=> start!109084 (and (array_inv!31189 _values!1445) e!735944)))

(declare-datatypes ((array!85355 0))(
  ( (array!85356 (arr!41174 (Array (_ BitVec 32) (_ BitVec 64))) (size!41725 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85355)

(declare-fun array_inv!31190 (array!85355) Bool)

(assert (=> start!109084 (array_inv!31190 _keys!1741)))

(assert (=> start!109084 tp!100731))

(declare-fun b!1288852 () Bool)

(declare-fun res!856176 () Bool)

(assert (=> b!1288852 (=> (not res!856176) (not e!735948))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1288852 (= res!856176 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41725 _keys!1741))))))

(declare-fun b!1288853 () Bool)

(declare-fun res!856173 () Bool)

(assert (=> b!1288853 (=> (not res!856173) (not e!735948))))

(assert (=> b!1288853 (= res!856173 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41725 _keys!1741))))))

(declare-fun b!1288854 () Bool)

(assert (=> b!1288854 (= e!735949 true)))

(declare-fun lt!578054 () ListLongMap!19839)

(declare-fun zeroValue!1387 () V!50673)

(declare-fun +!4310 (ListLongMap!19839 tuple2!22170) ListLongMap!19839)

(assert (=> b!1288854 (not (contains!7991 (+!4310 lt!578054 (tuple2!22171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!578055 () Unit!42565)

(declare-fun addStillNotContains!355 (ListLongMap!19839 (_ BitVec 64) V!50673 (_ BitVec 64)) Unit!42565)

(assert (=> b!1288854 (= lt!578055 (addStillNotContains!355 lt!578054 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun minValue!1387 () V!50673)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6022 (array!85355 array!85353 (_ BitVec 32) (_ BitVec 32) V!50673 V!50673 (_ BitVec 32) Int) ListLongMap!19839)

(assert (=> b!1288854 (= lt!578054 (getCurrentListMapNoExtraKeys!6022 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1288855 () Bool)

(declare-fun res!856174 () Bool)

(assert (=> b!1288855 (=> (not res!856174) (not e!735948))))

(declare-datatypes ((List!29370 0))(
  ( (Nil!29367) (Cons!29366 (h!30575 (_ BitVec 64)) (t!42941 List!29370)) )
))
(declare-fun arrayNoDuplicates!0 (array!85355 (_ BitVec 32) List!29370) Bool)

(assert (=> b!1288855 (= res!856174 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29367))))

(declare-fun b!1288856 () Bool)

(declare-fun res!856172 () Bool)

(assert (=> b!1288856 (=> (not res!856172) (not e!735948))))

(assert (=> b!1288856 (= res!856172 (and (= (size!41724 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41725 _keys!1741) (size!41724 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!52826 () Bool)

(declare-fun mapRes!52826 () Bool)

(declare-fun tp!100730 () Bool)

(declare-fun e!735947 () Bool)

(assert (=> mapNonEmpty!52826 (= mapRes!52826 (and tp!100730 e!735947))))

(declare-fun mapKey!52826 () (_ BitVec 32))

(declare-fun mapRest!52826 () (Array (_ BitVec 32) ValueCell!16190))

(declare-fun mapValue!52826 () ValueCell!16190)

(assert (=> mapNonEmpty!52826 (= (arr!41173 _values!1445) (store mapRest!52826 mapKey!52826 mapValue!52826))))

(declare-fun b!1288857 () Bool)

(assert (=> b!1288857 (= e!735947 tp_is_empty!34177)))

(declare-fun b!1288858 () Bool)

(declare-fun e!735946 () Bool)

(assert (=> b!1288858 (= e!735946 tp_is_empty!34177)))

(declare-fun b!1288859 () Bool)

(declare-fun res!856171 () Bool)

(assert (=> b!1288859 (=> (not res!856171) (not e!735948))))

(declare-fun getCurrentListMap!4938 (array!85355 array!85353 (_ BitVec 32) (_ BitVec 32) V!50673 V!50673 (_ BitVec 32) Int) ListLongMap!19839)

(assert (=> b!1288859 (= res!856171 (contains!7991 (getCurrentListMap!4938 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1288860 () Bool)

(assert (=> b!1288860 (= e!735944 (and e!735946 mapRes!52826))))

(declare-fun condMapEmpty!52826 () Bool)

(declare-fun mapDefault!52826 () ValueCell!16190)

