; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110094 () Bool)

(assert start!110094)

(declare-fun b_free!29257 () Bool)

(declare-fun b_next!29257 () Bool)

(assert (=> start!110094 (= b_free!29257 (not b_next!29257))))

(declare-fun tp!102923 () Bool)

(declare-fun b_and!47431 () Bool)

(assert (=> start!110094 (= tp!102923 b_and!47431)))

(declare-fun res!865692 () Bool)

(declare-fun e!743408 () Bool)

(assert (=> start!110094 (=> (not res!865692) (not e!743408))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110094 (= res!865692 (validMask!0 mask!2175))))

(assert (=> start!110094 e!743408))

(declare-fun tp_is_empty!34897 () Bool)

(assert (=> start!110094 tp_is_empty!34897))

(assert (=> start!110094 true))

(declare-datatypes ((V!51633 0))(
  ( (V!51634 (val!17523 Int)) )
))
(declare-datatypes ((ValueCell!16550 0))(
  ( (ValueCellFull!16550 (v!20137 V!51633)) (EmptyCell!16550) )
))
(declare-datatypes ((array!86771 0))(
  ( (array!86772 (arr!41872 (Array (_ BitVec 32) ValueCell!16550)) (size!42423 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86771)

(declare-fun e!743409 () Bool)

(declare-fun array_inv!31667 (array!86771) Bool)

(assert (=> start!110094 (and (array_inv!31667 _values!1445) e!743409)))

(declare-datatypes ((array!86773 0))(
  ( (array!86774 (arr!41873 (Array (_ BitVec 32) (_ BitVec 64))) (size!42424 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86773)

(declare-fun array_inv!31668 (array!86773) Bool)

(assert (=> start!110094 (array_inv!31668 _keys!1741)))

(assert (=> start!110094 tp!102923))

(declare-fun b!1303266 () Bool)

(declare-fun e!743410 () Bool)

(assert (=> b!1303266 (= e!743410 true)))

(assert (=> b!1303266 false))

(declare-fun minValue!1387 () V!51633)

(declare-datatypes ((tuple2!22764 0))(
  ( (tuple2!22765 (_1!11392 (_ BitVec 64)) (_2!11392 V!51633)) )
))
(declare-datatypes ((List!29916 0))(
  ( (Nil!29913) (Cons!29912 (h!31121 tuple2!22764) (t!43517 List!29916)) )
))
(declare-datatypes ((ListLongMap!20433 0))(
  ( (ListLongMap!20434 (toList!10232 List!29916)) )
))
(declare-fun lt!583182 () ListLongMap!20433)

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((Unit!43096 0))(
  ( (Unit!43097) )
))
(declare-fun lt!583184 () Unit!43096)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!85 ((_ BitVec 64) (_ BitVec 64) V!51633 ListLongMap!20433) Unit!43096)

(assert (=> b!1303266 (= lt!583184 (lemmaInListMapAfterAddingDiffThenInBefore!85 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!583182))))

(declare-fun lt!583181 () ListLongMap!20433)

(declare-fun contains!8303 (ListLongMap!20433 (_ BitVec 64)) Bool)

(declare-fun +!4452 (ListLongMap!20433 tuple2!22764) ListLongMap!20433)

(assert (=> b!1303266 (not (contains!8303 (+!4452 lt!583181 (tuple2!22765 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!583180 () Unit!43096)

(declare-fun addStillNotContains!476 (ListLongMap!20433 (_ BitVec 64) V!51633 (_ BitVec 64)) Unit!43096)

(assert (=> b!1303266 (= lt!583180 (addStillNotContains!476 lt!583181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1303266 (not (contains!8303 lt!583182 k!1205))))

(declare-fun zeroValue!1387 () V!51633)

(assert (=> b!1303266 (= lt!583182 (+!4452 lt!583181 (tuple2!22765 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!583185 () Unit!43096)

(assert (=> b!1303266 (= lt!583185 (addStillNotContains!476 lt!583181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6166 (array!86773 array!86771 (_ BitVec 32) (_ BitVec 32) V!51633 V!51633 (_ BitVec 32) Int) ListLongMap!20433)

(assert (=> b!1303266 (= lt!583181 (getCurrentListMapNoExtraKeys!6166 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1303267 () Bool)

(declare-fun res!865686 () Bool)

(assert (=> b!1303267 (=> (not res!865686) (not e!743408))))

(declare-fun getCurrentListMap!5194 (array!86773 array!86771 (_ BitVec 32) (_ BitVec 32) V!51633 V!51633 (_ BitVec 32) Int) ListLongMap!20433)

(assert (=> b!1303267 (= res!865686 (contains!8303 (getCurrentListMap!5194 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1303268 () Bool)

(declare-fun res!865689 () Bool)

(assert (=> b!1303268 (=> (not res!865689) (not e!743408))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1303268 (= res!865689 (not (validKeyInArray!0 (select (arr!41873 _keys!1741) from!2144))))))

(declare-fun b!1303269 () Bool)

(declare-fun res!865693 () Bool)

(assert (=> b!1303269 (=> (not res!865693) (not e!743408))))

(assert (=> b!1303269 (= res!865693 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42424 _keys!1741))))))

(declare-fun b!1303270 () Bool)

(declare-fun e!743406 () Bool)

(assert (=> b!1303270 (= e!743406 tp_is_empty!34897)))

(declare-fun b!1303271 () Bool)

(declare-fun res!865685 () Bool)

(assert (=> b!1303271 (=> (not res!865685) (not e!743408))))

(assert (=> b!1303271 (= res!865685 (and (= (size!42423 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42424 _keys!1741) (size!42423 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1303272 () Bool)

(declare-fun e!743407 () Bool)

(assert (=> b!1303272 (= e!743407 tp_is_empty!34897)))

(declare-fun b!1303273 () Bool)

(declare-fun res!865688 () Bool)

(assert (=> b!1303273 (=> (not res!865688) (not e!743408))))

(declare-datatypes ((List!29917 0))(
  ( (Nil!29914) (Cons!29913 (h!31122 (_ BitVec 64)) (t!43518 List!29917)) )
))
(declare-fun arrayNoDuplicates!0 (array!86773 (_ BitVec 32) List!29917) Bool)

(assert (=> b!1303273 (= res!865688 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29914))))

(declare-fun b!1303274 () Bool)

(declare-fun mapRes!53938 () Bool)

(assert (=> b!1303274 (= e!743409 (and e!743407 mapRes!53938))))

(declare-fun condMapEmpty!53938 () Bool)

(declare-fun mapDefault!53938 () ValueCell!16550)

