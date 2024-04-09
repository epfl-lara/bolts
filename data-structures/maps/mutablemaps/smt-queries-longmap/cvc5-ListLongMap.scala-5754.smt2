; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74380 () Bool)

(assert start!74380)

(declare-fun b_free!15115 () Bool)

(declare-fun b_next!15115 () Bool)

(assert (=> start!74380 (= b_free!15115 (not b_next!15115))))

(declare-fun tp!53021 () Bool)

(declare-fun b_and!24909 () Bool)

(assert (=> start!74380 (= tp!53021 b_and!24909)))

(declare-fun b!874957 () Bool)

(declare-fun e!487134 () Bool)

(declare-fun e!487129 () Bool)

(assert (=> b!874957 (= e!487134 (not e!487129))))

(declare-fun res!594735 () Bool)

(assert (=> b!874957 (=> res!594735 e!487129)))

(declare-datatypes ((array!50830 0))(
  ( (array!50831 (arr!24439 (Array (_ BitVec 32) (_ BitVec 64))) (size!24880 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50830)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874957 (= res!594735 (not (validKeyInArray!0 (select (arr!24439 _keys!868) from!1053))))))

(declare-fun e!487128 () Bool)

(assert (=> b!874957 e!487128))

(declare-fun c!92404 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!874957 (= c!92404 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29892 0))(
  ( (Unit!29893) )
))
(declare-fun lt!396027 () Unit!29892)

(declare-datatypes ((V!28193 0))(
  ( (V!28194 (val!8727 Int)) )
))
(declare-fun v!557 () V!28193)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((ValueCell!8240 0))(
  ( (ValueCellFull!8240 (v!11152 V!28193)) (EmptyCell!8240) )
))
(declare-datatypes ((array!50832 0))(
  ( (array!50833 (arr!24440 (Array (_ BitVec 32) ValueCell!8240)) (size!24881 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50832)

(declare-fun minValue!654 () V!28193)

(declare-fun zeroValue!654 () V!28193)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!650 (array!50830 array!50832 (_ BitVec 32) (_ BitVec 32) V!28193 V!28193 (_ BitVec 32) (_ BitVec 64) V!28193 (_ BitVec 32) Int) Unit!29892)

(assert (=> b!874957 (= lt!396027 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!650 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((tuple2!11532 0))(
  ( (tuple2!11533 (_1!5776 (_ BitVec 64)) (_2!5776 V!28193)) )
))
(declare-datatypes ((List!17422 0))(
  ( (Nil!17419) (Cons!17418 (h!18549 tuple2!11532) (t!24471 List!17422)) )
))
(declare-datatypes ((ListLongMap!10315 0))(
  ( (ListLongMap!10316 (toList!5173 List!17422)) )
))
(declare-fun call!38570 () ListLongMap!10315)

(declare-fun bm!38567 () Bool)

(declare-fun lt!396026 () array!50832)

(declare-fun getCurrentListMapNoExtraKeys!3137 (array!50830 array!50832 (_ BitVec 32) (_ BitVec 32) V!28193 V!28193 (_ BitVec 32) Int) ListLongMap!10315)

(assert (=> bm!38567 (= call!38570 (getCurrentListMapNoExtraKeys!3137 _keys!868 (ite c!92404 _values!688 lt!396026) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!874958 () Bool)

(declare-fun res!594733 () Bool)

(declare-fun e!487131 () Bool)

(assert (=> b!874958 (=> (not res!594733) (not e!487131))))

(assert (=> b!874958 (= res!594733 (validKeyInArray!0 k!854))))

(declare-fun b!874959 () Bool)

(declare-fun res!594734 () Bool)

(assert (=> b!874959 (=> (not res!594734) (not e!487131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50830 (_ BitVec 32)) Bool)

(assert (=> b!874959 (= res!594734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!874960 () Bool)

(declare-fun res!594742 () Bool)

(assert (=> b!874960 (=> (not res!594742) (not e!487131))))

(assert (=> b!874960 (= res!594742 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24880 _keys!868))))))

(declare-fun mapNonEmpty!27647 () Bool)

(declare-fun mapRes!27647 () Bool)

(declare-fun tp!53020 () Bool)

(declare-fun e!487130 () Bool)

(assert (=> mapNonEmpty!27647 (= mapRes!27647 (and tp!53020 e!487130))))

(declare-fun mapRest!27647 () (Array (_ BitVec 32) ValueCell!8240))

(declare-fun mapValue!27647 () ValueCell!8240)

(declare-fun mapKey!27647 () (_ BitVec 32))

(assert (=> mapNonEmpty!27647 (= (arr!24440 _values!688) (store mapRest!27647 mapKey!27647 mapValue!27647))))

(declare-fun call!38571 () ListLongMap!10315)

(declare-fun bm!38568 () Bool)

(assert (=> bm!38568 (= call!38571 (getCurrentListMapNoExtraKeys!3137 _keys!868 (ite c!92404 lt!396026 _values!688) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!874961 () Bool)

(declare-fun +!2419 (ListLongMap!10315 tuple2!11532) ListLongMap!10315)

(assert (=> b!874961 (= e!487128 (= call!38571 (+!2419 call!38570 (tuple2!11533 k!854 v!557))))))

(declare-fun res!594740 () Bool)

(assert (=> start!74380 (=> (not res!594740) (not e!487131))))

(assert (=> start!74380 (= res!594740 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24880 _keys!868))))))

(assert (=> start!74380 e!487131))

(declare-fun tp_is_empty!17359 () Bool)

(assert (=> start!74380 tp_is_empty!17359))

(assert (=> start!74380 true))

(assert (=> start!74380 tp!53021))

(declare-fun array_inv!19252 (array!50830) Bool)

(assert (=> start!74380 (array_inv!19252 _keys!868)))

(declare-fun e!487135 () Bool)

(declare-fun array_inv!19253 (array!50832) Bool)

(assert (=> start!74380 (and (array_inv!19253 _values!688) e!487135)))

(declare-fun b!874962 () Bool)

(assert (=> b!874962 (= e!487130 tp_is_empty!17359)))

(declare-fun b!874963 () Bool)

(declare-fun e!487133 () Bool)

(assert (=> b!874963 (= e!487135 (and e!487133 mapRes!27647))))

(declare-fun condMapEmpty!27647 () Bool)

(declare-fun mapDefault!27647 () ValueCell!8240)

