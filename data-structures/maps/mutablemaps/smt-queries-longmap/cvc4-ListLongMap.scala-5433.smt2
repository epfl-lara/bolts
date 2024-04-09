; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72414 () Bool)

(assert start!72414)

(declare-fun b_free!13571 () Bool)

(declare-fun b_next!13571 () Bool)

(assert (=> start!72414 (= b_free!13571 (not b_next!13571))))

(declare-fun tp!47813 () Bool)

(declare-fun b_and!22675 () Bool)

(assert (=> start!72414 (= tp!47813 b_and!22675)))

(declare-fun b!838796 () Bool)

(declare-fun e!468204 () Bool)

(assert (=> b!838796 (= e!468204 (not true))))

(declare-fun e!468201 () Bool)

(assert (=> b!838796 e!468201))

(declare-fun c!91134 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!838796 (= c!91134 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((V!25629 0))(
  ( (V!25630 (val!7766 Int)) )
))
(declare-fun v!557 () V!25629)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((Unit!28802 0))(
  ( (Unit!28803) )
))
(declare-fun lt!380667 () Unit!28802)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!47126 0))(
  ( (array!47127 (arr!22590 (Array (_ BitVec 32) (_ BitVec 64))) (size!23031 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47126)

(declare-datatypes ((ValueCell!7279 0))(
  ( (ValueCellFull!7279 (v!10187 V!25629)) (EmptyCell!7279) )
))
(declare-datatypes ((array!47128 0))(
  ( (array!47129 (arr!22591 (Array (_ BitVec 32) ValueCell!7279)) (size!23032 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47128)

(declare-fun minValue!654 () V!25629)

(declare-fun zeroValue!654 () V!25629)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!250 (array!47126 array!47128 (_ BitVec 32) (_ BitVec 32) V!25629 V!25629 (_ BitVec 32) (_ BitVec 64) V!25629 (_ BitVec 32) Int) Unit!28802)

(assert (=> b!838796 (= lt!380667 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!250 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((tuple2!10294 0))(
  ( (tuple2!10295 (_1!5157 (_ BitVec 64)) (_2!5157 V!25629)) )
))
(declare-datatypes ((List!16130 0))(
  ( (Nil!16127) (Cons!16126 (h!17257 tuple2!10294) (t!22509 List!16130)) )
))
(declare-datatypes ((ListLongMap!9077 0))(
  ( (ListLongMap!9078 (toList!4554 List!16130)) )
))
(declare-fun call!36946 () ListLongMap!9077)

(declare-fun bm!36943 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2549 (array!47126 array!47128 (_ BitVec 32) (_ BitVec 32) V!25629 V!25629 (_ BitVec 32) Int) ListLongMap!9077)

(assert (=> bm!36943 (= call!36946 (getCurrentListMapNoExtraKeys!2549 _keys!868 (array!47129 (store (arr!22591 _values!688) i!612 (ValueCellFull!7279 v!557)) (size!23032 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun call!36947 () ListLongMap!9077)

(declare-fun bm!36944 () Bool)

(assert (=> bm!36944 (= call!36947 (getCurrentListMapNoExtraKeys!2549 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838797 () Bool)

(declare-fun res!570455 () Bool)

(assert (=> b!838797 (=> (not res!570455) (not e!468204))))

(declare-datatypes ((List!16131 0))(
  ( (Nil!16128) (Cons!16127 (h!17258 (_ BitVec 64)) (t!22510 List!16131)) )
))
(declare-fun arrayNoDuplicates!0 (array!47126 (_ BitVec 32) List!16131) Bool)

(assert (=> b!838797 (= res!570455 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16128))))

(declare-fun res!570459 () Bool)

(assert (=> start!72414 (=> (not res!570459) (not e!468204))))

(assert (=> start!72414 (= res!570459 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23031 _keys!868))))))

(assert (=> start!72414 e!468204))

(declare-fun tp_is_empty!15437 () Bool)

(assert (=> start!72414 tp_is_empty!15437))

(assert (=> start!72414 true))

(assert (=> start!72414 tp!47813))

(declare-fun array_inv!17970 (array!47126) Bool)

(assert (=> start!72414 (array_inv!17970 _keys!868)))

(declare-fun e!468203 () Bool)

(declare-fun array_inv!17971 (array!47128) Bool)

(assert (=> start!72414 (and (array_inv!17971 _values!688) e!468203)))

(declare-fun b!838798 () Bool)

(declare-fun +!1975 (ListLongMap!9077 tuple2!10294) ListLongMap!9077)

(assert (=> b!838798 (= e!468201 (= call!36946 (+!1975 call!36947 (tuple2!10295 k!854 v!557))))))

(declare-fun mapIsEmpty!24755 () Bool)

(declare-fun mapRes!24755 () Bool)

(assert (=> mapIsEmpty!24755 mapRes!24755))

(declare-fun b!838799 () Bool)

(declare-fun e!468202 () Bool)

(assert (=> b!838799 (= e!468202 tp_is_empty!15437)))

(declare-fun b!838800 () Bool)

(declare-fun res!570462 () Bool)

(assert (=> b!838800 (=> (not res!570462) (not e!468204))))

(assert (=> b!838800 (= res!570462 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23031 _keys!868))))))

(declare-fun b!838801 () Bool)

(declare-fun e!468199 () Bool)

(assert (=> b!838801 (= e!468199 tp_is_empty!15437)))

(declare-fun b!838802 () Bool)

(assert (=> b!838802 (= e!468201 (= call!36946 call!36947))))

(declare-fun b!838803 () Bool)

(declare-fun res!570456 () Bool)

(assert (=> b!838803 (=> (not res!570456) (not e!468204))))

(assert (=> b!838803 (= res!570456 (and (= (size!23032 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23031 _keys!868) (size!23032 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!838804 () Bool)

(declare-fun res!570461 () Bool)

(assert (=> b!838804 (=> (not res!570461) (not e!468204))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!838804 (= res!570461 (validMask!0 mask!1196))))

(declare-fun b!838805 () Bool)

(declare-fun res!570460 () Bool)

(assert (=> b!838805 (=> (not res!570460) (not e!468204))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!838805 (= res!570460 (validKeyInArray!0 k!854))))

(declare-fun b!838806 () Bool)

(assert (=> b!838806 (= e!468203 (and e!468202 mapRes!24755))))

(declare-fun condMapEmpty!24755 () Bool)

(declare-fun mapDefault!24755 () ValueCell!7279)

