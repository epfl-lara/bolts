; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109324 () Bool)

(assert start!109324)

(declare-fun b_free!28777 () Bool)

(declare-fun b_next!28777 () Bool)

(assert (=> start!109324 (= b_free!28777 (not b_next!28777))))

(declare-fun tp!101451 () Bool)

(declare-fun b_and!46877 () Bool)

(assert (=> start!109324 (= tp!101451 b_and!46877)))

(declare-fun b!1293090 () Bool)

(declare-fun res!859332 () Bool)

(declare-fun e!738025 () Bool)

(assert (=> b!1293090 (=> (not res!859332) (not e!738025))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50993 0))(
  ( (V!50994 (val!17283 Int)) )
))
(declare-datatypes ((ValueCell!16310 0))(
  ( (ValueCellFull!16310 (v!19884 V!50993)) (EmptyCell!16310) )
))
(declare-datatypes ((array!85823 0))(
  ( (array!85824 (arr!41408 (Array (_ BitVec 32) ValueCell!16310)) (size!41959 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85823)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85825 0))(
  ( (array!85826 (arr!41409 (Array (_ BitVec 32) (_ BitVec 64))) (size!41960 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85825)

(assert (=> b!1293090 (= res!859332 (and (= (size!41959 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41960 _keys!1741) (size!41959 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1293091 () Bool)

(declare-fun e!738028 () Bool)

(assert (=> b!1293091 (= e!738025 (not e!738028))))

(declare-fun res!859336 () Bool)

(assert (=> b!1293091 (=> res!859336 e!738028)))

(assert (=> b!1293091 (= res!859336 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22380 0))(
  ( (tuple2!22381 (_1!11200 (_ BitVec 64)) (_2!11200 V!50993)) )
))
(declare-datatypes ((List!29564 0))(
  ( (Nil!29561) (Cons!29560 (h!30769 tuple2!22380) (t!43135 List!29564)) )
))
(declare-datatypes ((ListLongMap!20049 0))(
  ( (ListLongMap!20050 (toList!10040 List!29564)) )
))
(declare-fun contains!8096 (ListLongMap!20049 (_ BitVec 64)) Bool)

(assert (=> b!1293091 (not (contains!8096 (ListLongMap!20050 Nil!29561) k!1205))))

(declare-datatypes ((Unit!42759 0))(
  ( (Unit!42760) )
))
(declare-fun lt!579424 () Unit!42759)

(declare-fun emptyContainsNothing!136 ((_ BitVec 64)) Unit!42759)

(assert (=> b!1293091 (= lt!579424 (emptyContainsNothing!136 k!1205))))

(declare-fun b!1293092 () Bool)

(assert (=> b!1293092 (= e!738028 true)))

(declare-fun lt!579422 () ListLongMap!20049)

(declare-fun zeroValue!1387 () V!50993)

(declare-fun +!4373 (ListLongMap!20049 tuple2!22380) ListLongMap!20049)

(assert (=> b!1293092 (not (contains!8096 (+!4373 lt!579422 (tuple2!22381 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!579423 () Unit!42759)

(declare-fun addStillNotContains!418 (ListLongMap!20049 (_ BitVec 64) V!50993 (_ BitVec 64)) Unit!42759)

(assert (=> b!1293092 (= lt!579423 (addStillNotContains!418 lt!579422 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun minValue!1387 () V!50993)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6086 (array!85825 array!85823 (_ BitVec 32) (_ BitVec 32) V!50993 V!50993 (_ BitVec 32) Int) ListLongMap!20049)

(assert (=> b!1293092 (= lt!579422 (getCurrentListMapNoExtraKeys!6086 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1293093 () Bool)

(declare-fun res!859331 () Bool)

(assert (=> b!1293093 (=> (not res!859331) (not e!738025))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1293093 (= res!859331 (not (validKeyInArray!0 (select (arr!41409 _keys!1741) from!2144))))))

(declare-fun b!1293094 () Bool)

(declare-fun res!859338 () Bool)

(assert (=> b!1293094 (=> (not res!859338) (not e!738025))))

(assert (=> b!1293094 (= res!859338 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41960 _keys!1741))))))

(declare-fun res!859337 () Bool)

(assert (=> start!109324 (=> (not res!859337) (not e!738025))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109324 (= res!859337 (validMask!0 mask!2175))))

(assert (=> start!109324 e!738025))

(declare-fun tp_is_empty!34417 () Bool)

(assert (=> start!109324 tp_is_empty!34417))

(assert (=> start!109324 true))

(declare-fun e!738027 () Bool)

(declare-fun array_inv!31347 (array!85823) Bool)

(assert (=> start!109324 (and (array_inv!31347 _values!1445) e!738027)))

(declare-fun array_inv!31348 (array!85825) Bool)

(assert (=> start!109324 (array_inv!31348 _keys!1741)))

(assert (=> start!109324 tp!101451))

(declare-fun mapIsEmpty!53186 () Bool)

(declare-fun mapRes!53186 () Bool)

(assert (=> mapIsEmpty!53186 mapRes!53186))

(declare-fun b!1293095 () Bool)

(declare-fun res!859330 () Bool)

(assert (=> b!1293095 (=> (not res!859330) (not e!738025))))

(assert (=> b!1293095 (= res!859330 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41960 _keys!1741))))))

(declare-fun mapNonEmpty!53186 () Bool)

(declare-fun tp!101450 () Bool)

(declare-fun e!738024 () Bool)

(assert (=> mapNonEmpty!53186 (= mapRes!53186 (and tp!101450 e!738024))))

(declare-fun mapRest!53186 () (Array (_ BitVec 32) ValueCell!16310))

(declare-fun mapValue!53186 () ValueCell!16310)

(declare-fun mapKey!53186 () (_ BitVec 32))

(assert (=> mapNonEmpty!53186 (= (arr!41408 _values!1445) (store mapRest!53186 mapKey!53186 mapValue!53186))))

(declare-fun b!1293096 () Bool)

(declare-fun e!738026 () Bool)

(assert (=> b!1293096 (= e!738027 (and e!738026 mapRes!53186))))

(declare-fun condMapEmpty!53186 () Bool)

(declare-fun mapDefault!53186 () ValueCell!16310)

