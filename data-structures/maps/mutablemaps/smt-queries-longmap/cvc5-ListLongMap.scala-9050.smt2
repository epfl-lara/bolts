; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109120 () Bool)

(assert start!109120)

(declare-fun b_free!28573 () Bool)

(declare-fun b_next!28573 () Bool)

(assert (=> start!109120 (= b_free!28573 (not b_next!28573))))

(declare-fun tp!100839 () Bool)

(declare-fun b_and!46673 () Bool)

(assert (=> start!109120 (= tp!100839 b_and!46673)))

(declare-fun mapIsEmpty!52880 () Bool)

(declare-fun mapRes!52880 () Bool)

(assert (=> mapIsEmpty!52880 mapRes!52880))

(declare-fun b!1289499 () Bool)

(declare-fun res!856665 () Bool)

(declare-fun e!736271 () Bool)

(assert (=> b!1289499 (=> (not res!856665) (not e!736271))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85425 0))(
  ( (array!85426 (arr!41209 (Array (_ BitVec 32) (_ BitVec 64))) (size!41760 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85425)

(assert (=> b!1289499 (= res!856665 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41760 _keys!1741))))))

(declare-fun b!1289500 () Bool)

(declare-fun e!736268 () Bool)

(assert (=> b!1289500 (= e!736268 true)))

(declare-datatypes ((V!50721 0))(
  ( (V!50722 (val!17181 Int)) )
))
(declare-datatypes ((tuple2!22202 0))(
  ( (tuple2!22203 (_1!11111 (_ BitVec 64)) (_2!11111 V!50721)) )
))
(declare-datatypes ((List!29402 0))(
  ( (Nil!29399) (Cons!29398 (h!30607 tuple2!22202) (t!42973 List!29402)) )
))
(declare-datatypes ((ListLongMap!19871 0))(
  ( (ListLongMap!19872 (toList!9951 List!29402)) )
))
(declare-fun lt!578247 () ListLongMap!19871)

(declare-fun minValue!1387 () V!50721)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!8007 (ListLongMap!19871 (_ BitVec 64)) Bool)

(declare-fun +!4323 (ListLongMap!19871 tuple2!22202) ListLongMap!19871)

(assert (=> b!1289500 (not (contains!8007 (+!4323 lt!578247 (tuple2!22203 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-datatypes ((Unit!42597 0))(
  ( (Unit!42598) )
))
(declare-fun lt!578246 () Unit!42597)

(declare-fun addStillNotContains!368 (ListLongMap!19871 (_ BitVec 64) V!50721 (_ BitVec 64)) Unit!42597)

(assert (=> b!1289500 (= lt!578246 (addStillNotContains!368 lt!578247 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun zeroValue!1387 () V!50721)

(assert (=> b!1289500 (not (contains!8007 (+!4323 lt!578247 (tuple2!22203 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!578248 () Unit!42597)

(assert (=> b!1289500 (= lt!578248 (addStillNotContains!368 lt!578247 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-datatypes ((ValueCell!16208 0))(
  ( (ValueCellFull!16208 (v!19782 V!50721)) (EmptyCell!16208) )
))
(declare-datatypes ((array!85427 0))(
  ( (array!85428 (arr!41210 (Array (_ BitVec 32) ValueCell!16208)) (size!41761 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85427)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6035 (array!85425 array!85427 (_ BitVec 32) (_ BitVec 32) V!50721 V!50721 (_ BitVec 32) Int) ListLongMap!19871)

(assert (=> b!1289500 (= lt!578247 (getCurrentListMapNoExtraKeys!6035 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1289501 () Bool)

(declare-fun res!856660 () Bool)

(assert (=> b!1289501 (=> (not res!856660) (not e!736271))))

(declare-datatypes ((List!29403 0))(
  ( (Nil!29400) (Cons!29399 (h!30608 (_ BitVec 64)) (t!42974 List!29403)) )
))
(declare-fun arrayNoDuplicates!0 (array!85425 (_ BitVec 32) List!29403) Bool)

(assert (=> b!1289501 (= res!856660 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29400))))

(declare-fun b!1289502 () Bool)

(declare-fun res!856661 () Bool)

(assert (=> b!1289502 (=> (not res!856661) (not e!736271))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1289502 (= res!856661 (not (validKeyInArray!0 (select (arr!41209 _keys!1741) from!2144))))))

(declare-fun b!1289503 () Bool)

(declare-fun res!856662 () Bool)

(assert (=> b!1289503 (=> (not res!856662) (not e!736271))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85425 (_ BitVec 32)) Bool)

(assert (=> b!1289503 (= res!856662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1289504 () Bool)

(declare-fun res!856664 () Bool)

(assert (=> b!1289504 (=> (not res!856664) (not e!736271))))

(declare-fun getCurrentListMap!4953 (array!85425 array!85427 (_ BitVec 32) (_ BitVec 32) V!50721 V!50721 (_ BitVec 32) Int) ListLongMap!19871)

(assert (=> b!1289504 (= res!856664 (contains!8007 (getCurrentListMap!4953 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1289505 () Bool)

(assert (=> b!1289505 (= e!736271 (not e!736268))))

(declare-fun res!856658 () Bool)

(assert (=> b!1289505 (=> res!856658 e!736268)))

(assert (=> b!1289505 (= res!856658 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1289505 (not (contains!8007 (ListLongMap!19872 Nil!29399) k!1205))))

(declare-fun lt!578245 () Unit!42597)

(declare-fun emptyContainsNothing!62 ((_ BitVec 64)) Unit!42597)

(assert (=> b!1289505 (= lt!578245 (emptyContainsNothing!62 k!1205))))

(declare-fun b!1289506 () Bool)

(declare-fun e!736272 () Bool)

(declare-fun tp_is_empty!34213 () Bool)

(assert (=> b!1289506 (= e!736272 tp_is_empty!34213)))

(declare-fun b!1289507 () Bool)

(declare-fun res!856659 () Bool)

(assert (=> b!1289507 (=> (not res!856659) (not e!736271))))

(assert (=> b!1289507 (= res!856659 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41760 _keys!1741))))))

(declare-fun b!1289508 () Bool)

(declare-fun res!856657 () Bool)

(assert (=> b!1289508 (=> (not res!856657) (not e!736271))))

(assert (=> b!1289508 (= res!856657 (and (= (size!41761 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41760 _keys!1741) (size!41761 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!52880 () Bool)

(declare-fun tp!100838 () Bool)

(assert (=> mapNonEmpty!52880 (= mapRes!52880 (and tp!100838 e!736272))))

(declare-fun mapKey!52880 () (_ BitVec 32))

(declare-fun mapValue!52880 () ValueCell!16208)

(declare-fun mapRest!52880 () (Array (_ BitVec 32) ValueCell!16208))

(assert (=> mapNonEmpty!52880 (= (arr!41210 _values!1445) (store mapRest!52880 mapKey!52880 mapValue!52880))))

(declare-fun res!856663 () Bool)

(assert (=> start!109120 (=> (not res!856663) (not e!736271))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109120 (= res!856663 (validMask!0 mask!2175))))

(assert (=> start!109120 e!736271))

(assert (=> start!109120 tp_is_empty!34213))

(assert (=> start!109120 true))

(declare-fun e!736269 () Bool)

(declare-fun array_inv!31213 (array!85427) Bool)

(assert (=> start!109120 (and (array_inv!31213 _values!1445) e!736269)))

(declare-fun array_inv!31214 (array!85425) Bool)

(assert (=> start!109120 (array_inv!31214 _keys!1741)))

(assert (=> start!109120 tp!100839))

(declare-fun b!1289509 () Bool)

(declare-fun e!736273 () Bool)

(assert (=> b!1289509 (= e!736269 (and e!736273 mapRes!52880))))

(declare-fun condMapEmpty!52880 () Bool)

(declare-fun mapDefault!52880 () ValueCell!16208)

