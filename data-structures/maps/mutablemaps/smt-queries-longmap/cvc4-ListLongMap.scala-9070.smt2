; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109244 () Bool)

(assert start!109244)

(declare-fun b_free!28697 () Bool)

(declare-fun b_next!28697 () Bool)

(assert (=> start!109244 (= b_free!28697 (not b_next!28697))))

(declare-fun tp!101211 () Bool)

(declare-fun b_and!46797 () Bool)

(assert (=> start!109244 (= tp!101211 b_and!46797)))

(declare-fun b!1291723 () Bool)

(declare-fun e!737379 () Bool)

(assert (=> b!1291723 (= e!737379 (not true))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!50885 0))(
  ( (V!50886 (val!17243 Int)) )
))
(declare-datatypes ((tuple2!22308 0))(
  ( (tuple2!22309 (_1!11164 (_ BitVec 64)) (_2!11164 V!50885)) )
))
(declare-datatypes ((List!29498 0))(
  ( (Nil!29495) (Cons!29494 (h!30703 tuple2!22308) (t!43069 List!29498)) )
))
(declare-datatypes ((ListLongMap!19977 0))(
  ( (ListLongMap!19978 (toList!10004 List!29498)) )
))
(declare-fun contains!8060 (ListLongMap!19977 (_ BitVec 64)) Bool)

(assert (=> b!1291723 (not (contains!8060 (ListLongMap!19978 Nil!29495) k!1205))))

(declare-datatypes ((Unit!42697 0))(
  ( (Unit!42698) )
))
(declare-fun lt!579217 () Unit!42697)

(declare-fun emptyContainsNothing!105 ((_ BitVec 64)) Unit!42697)

(assert (=> b!1291723 (= lt!579217 (emptyContainsNothing!105 k!1205))))

(declare-fun b!1291724 () Bool)

(declare-fun e!737380 () Bool)

(declare-fun tp_is_empty!34337 () Bool)

(assert (=> b!1291724 (= e!737380 tp_is_empty!34337)))

(declare-fun b!1291725 () Bool)

(declare-fun res!858327 () Bool)

(assert (=> b!1291725 (=> (not res!858327) (not e!737379))))

(declare-datatypes ((array!85667 0))(
  ( (array!85668 (arr!41330 (Array (_ BitVec 32) (_ BitVec 64))) (size!41881 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85667)

(declare-datatypes ((List!29499 0))(
  ( (Nil!29496) (Cons!29495 (h!30704 (_ BitVec 64)) (t!43070 List!29499)) )
))
(declare-fun arrayNoDuplicates!0 (array!85667 (_ BitVec 32) List!29499) Bool)

(assert (=> b!1291725 (= res!858327 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29496))))

(declare-fun b!1291726 () Bool)

(declare-fun res!858330 () Bool)

(assert (=> b!1291726 (=> (not res!858330) (not e!737379))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85667 (_ BitVec 32)) Bool)

(assert (=> b!1291726 (= res!858330 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1291727 () Bool)

(declare-fun res!858326 () Bool)

(assert (=> b!1291727 (=> (not res!858326) (not e!737379))))

(declare-datatypes ((ValueCell!16270 0))(
  ( (ValueCellFull!16270 (v!19844 V!50885)) (EmptyCell!16270) )
))
(declare-datatypes ((array!85669 0))(
  ( (array!85670 (arr!41331 (Array (_ BitVec 32) ValueCell!16270)) (size!41882 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85669)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1291727 (= res!858326 (and (= (size!41882 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41881 _keys!1741) (size!41882 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1291728 () Bool)

(declare-fun res!858328 () Bool)

(assert (=> b!1291728 (=> (not res!858328) (not e!737379))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1291728 (= res!858328 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41881 _keys!1741))))))

(declare-fun b!1291729 () Bool)

(declare-fun e!737376 () Bool)

(assert (=> b!1291729 (= e!737376 tp_is_empty!34337)))

(declare-fun b!1291730 () Bool)

(declare-fun res!858329 () Bool)

(assert (=> b!1291730 (=> (not res!858329) (not e!737379))))

(assert (=> b!1291730 (= res!858329 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41881 _keys!1741))))))

(declare-fun b!1291731 () Bool)

(declare-fun res!858324 () Bool)

(assert (=> b!1291731 (=> (not res!858324) (not e!737379))))

(declare-fun minValue!1387 () V!50885)

(declare-fun zeroValue!1387 () V!50885)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!4997 (array!85667 array!85669 (_ BitVec 32) (_ BitVec 32) V!50885 V!50885 (_ BitVec 32) Int) ListLongMap!19977)

(assert (=> b!1291731 (= res!858324 (contains!8060 (getCurrentListMap!4997 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1291732 () Bool)

(declare-fun e!737378 () Bool)

(declare-fun mapRes!53066 () Bool)

(assert (=> b!1291732 (= e!737378 (and e!737376 mapRes!53066))))

(declare-fun condMapEmpty!53066 () Bool)

(declare-fun mapDefault!53066 () ValueCell!16270)

