; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109150 () Bool)

(assert start!109150)

(declare-fun b_free!28603 () Bool)

(declare-fun b_next!28603 () Bool)

(assert (=> start!109150 (= b_free!28603 (not b_next!28603))))

(declare-fun tp!100929 () Bool)

(declare-fun b_and!46703 () Bool)

(assert (=> start!109150 (= tp!100929 b_and!46703)))

(declare-fun b!1290039 () Bool)

(declare-fun e!736541 () Bool)

(assert (=> b!1290039 (= e!736541 true)))

(declare-datatypes ((V!50761 0))(
  ( (V!50762 (val!17196 Int)) )
))
(declare-datatypes ((tuple2!22230 0))(
  ( (tuple2!22231 (_1!11125 (_ BitVec 64)) (_2!11125 V!50761)) )
))
(declare-datatypes ((List!29427 0))(
  ( (Nil!29424) (Cons!29423 (h!30632 tuple2!22230) (t!42998 List!29427)) )
))
(declare-datatypes ((ListLongMap!19899 0))(
  ( (ListLongMap!19900 (toList!9965 List!29427)) )
))
(declare-fun lt!578427 () ListLongMap!19899)

(declare-fun minValue!1387 () V!50761)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!8021 (ListLongMap!19899 (_ BitVec 64)) Bool)

(declare-fun +!4335 (ListLongMap!19899 tuple2!22230) ListLongMap!19899)

(assert (=> b!1290039 (not (contains!8021 (+!4335 lt!578427 (tuple2!22231 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-datatypes ((Unit!42621 0))(
  ( (Unit!42622) )
))
(declare-fun lt!578428 () Unit!42621)

(declare-fun addStillNotContains!380 (ListLongMap!19899 (_ BitVec 64) V!50761 (_ BitVec 64)) Unit!42621)

(assert (=> b!1290039 (= lt!578428 (addStillNotContains!380 lt!578427 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun zeroValue!1387 () V!50761)

(assert (=> b!1290039 (not (contains!8021 (+!4335 lt!578427 (tuple2!22231 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!578426 () Unit!42621)

(assert (=> b!1290039 (= lt!578426 (addStillNotContains!380 lt!578427 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16223 0))(
  ( (ValueCellFull!16223 (v!19797 V!50761)) (EmptyCell!16223) )
))
(declare-datatypes ((array!85485 0))(
  ( (array!85486 (arr!41239 (Array (_ BitVec 32) ValueCell!16223)) (size!41790 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85485)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85487 0))(
  ( (array!85488 (arr!41240 (Array (_ BitVec 32) (_ BitVec 64))) (size!41791 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85487)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6047 (array!85487 array!85485 (_ BitVec 32) (_ BitVec 32) V!50761 V!50761 (_ BitVec 32) Int) ListLongMap!19899)

(assert (=> b!1290039 (= lt!578427 (getCurrentListMapNoExtraKeys!6047 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapNonEmpty!52925 () Bool)

(declare-fun mapRes!52925 () Bool)

(declare-fun tp!100928 () Bool)

(declare-fun e!736543 () Bool)

(assert (=> mapNonEmpty!52925 (= mapRes!52925 (and tp!100928 e!736543))))

(declare-fun mapValue!52925 () ValueCell!16223)

(declare-fun mapKey!52925 () (_ BitVec 32))

(declare-fun mapRest!52925 () (Array (_ BitVec 32) ValueCell!16223))

(assert (=> mapNonEmpty!52925 (= (arr!41239 _values!1445) (store mapRest!52925 mapKey!52925 mapValue!52925))))

(declare-fun b!1290040 () Bool)

(declare-fun res!857067 () Bool)

(declare-fun e!736539 () Bool)

(assert (=> b!1290040 (=> (not res!857067) (not e!736539))))

(assert (=> b!1290040 (= res!857067 (and (= (size!41790 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41791 _keys!1741) (size!41790 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1290041 () Bool)

(declare-fun res!857064 () Bool)

(assert (=> b!1290041 (=> (not res!857064) (not e!736539))))

(declare-fun getCurrentListMap!4966 (array!85487 array!85485 (_ BitVec 32) (_ BitVec 32) V!50761 V!50761 (_ BitVec 32) Int) ListLongMap!19899)

(assert (=> b!1290041 (= res!857064 (contains!8021 (getCurrentListMap!4966 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1290042 () Bool)

(declare-fun e!736540 () Bool)

(declare-fun tp_is_empty!34243 () Bool)

(assert (=> b!1290042 (= e!736540 tp_is_empty!34243)))

(declare-fun b!1290043 () Bool)

(assert (=> b!1290043 (= e!736543 tp_is_empty!34243)))

(declare-fun mapIsEmpty!52925 () Bool)

(assert (=> mapIsEmpty!52925 mapRes!52925))

(declare-fun res!857068 () Bool)

(assert (=> start!109150 (=> (not res!857068) (not e!736539))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109150 (= res!857068 (validMask!0 mask!2175))))

(assert (=> start!109150 e!736539))

(assert (=> start!109150 tp_is_empty!34243))

(assert (=> start!109150 true))

(declare-fun e!736538 () Bool)

(declare-fun array_inv!31231 (array!85485) Bool)

(assert (=> start!109150 (and (array_inv!31231 _values!1445) e!736538)))

(declare-fun array_inv!31232 (array!85487) Bool)

(assert (=> start!109150 (array_inv!31232 _keys!1741)))

(assert (=> start!109150 tp!100929))

(declare-fun b!1290044 () Bool)

(declare-fun res!857066 () Bool)

(assert (=> b!1290044 (=> (not res!857066) (not e!736539))))

(declare-datatypes ((List!29428 0))(
  ( (Nil!29425) (Cons!29424 (h!30633 (_ BitVec 64)) (t!42999 List!29428)) )
))
(declare-fun arrayNoDuplicates!0 (array!85487 (_ BitVec 32) List!29428) Bool)

(assert (=> b!1290044 (= res!857066 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29425))))

(declare-fun b!1290045 () Bool)

(declare-fun res!857069 () Bool)

(assert (=> b!1290045 (=> (not res!857069) (not e!736539))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290045 (= res!857069 (not (validKeyInArray!0 (select (arr!41240 _keys!1741) from!2144))))))

(declare-fun b!1290046 () Bool)

(declare-fun res!857062 () Bool)

(assert (=> b!1290046 (=> (not res!857062) (not e!736539))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85487 (_ BitVec 32)) Bool)

(assert (=> b!1290046 (= res!857062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1290047 () Bool)

(declare-fun res!857065 () Bool)

(assert (=> b!1290047 (=> (not res!857065) (not e!736539))))

(assert (=> b!1290047 (= res!857065 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41791 _keys!1741))))))

(declare-fun b!1290048 () Bool)

(declare-fun res!857063 () Bool)

(assert (=> b!1290048 (=> (not res!857063) (not e!736539))))

(assert (=> b!1290048 (= res!857063 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41791 _keys!1741))))))

(declare-fun b!1290049 () Bool)

(assert (=> b!1290049 (= e!736539 (not e!736541))))

(declare-fun res!857070 () Bool)

(assert (=> b!1290049 (=> res!857070 e!736541)))

(assert (=> b!1290049 (= res!857070 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1290049 (not (contains!8021 (ListLongMap!19900 Nil!29424) k!1205))))

(declare-fun lt!578425 () Unit!42621)

(declare-fun emptyContainsNothing!72 ((_ BitVec 64)) Unit!42621)

(assert (=> b!1290049 (= lt!578425 (emptyContainsNothing!72 k!1205))))

(declare-fun b!1290050 () Bool)

(assert (=> b!1290050 (= e!736538 (and e!736540 mapRes!52925))))

(declare-fun condMapEmpty!52925 () Bool)

(declare-fun mapDefault!52925 () ValueCell!16223)

