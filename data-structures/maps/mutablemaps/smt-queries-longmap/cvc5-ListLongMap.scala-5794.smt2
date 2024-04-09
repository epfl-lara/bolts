; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74734 () Bool)

(assert start!74734)

(declare-fun b_free!15355 () Bool)

(declare-fun b_next!15355 () Bool)

(assert (=> start!74734 (= b_free!15355 (not b_next!15355))))

(declare-fun tp!53753 () Bool)

(declare-fun b_and!25347 () Bool)

(assert (=> start!74734 (= tp!53753 b_and!25347)))

(declare-fun b!880672 () Bool)

(declare-fun e!490115 () Bool)

(declare-fun e!490116 () Bool)

(assert (=> b!880672 (= e!490115 e!490116)))

(declare-fun res!598475 () Bool)

(assert (=> b!880672 (=> (not res!598475) (not e!490116))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!880672 (= res!598475 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!51304 0))(
  ( (array!51305 (arr!24672 (Array (_ BitVec 32) (_ BitVec 64))) (size!25113 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51304)

(declare-datatypes ((V!28513 0))(
  ( (V!28514 (val!8847 Int)) )
))
(declare-fun minValue!654 () V!28513)

(declare-fun zeroValue!654 () V!28513)

(declare-datatypes ((tuple2!11736 0))(
  ( (tuple2!11737 (_1!5878 (_ BitVec 64)) (_2!5878 V!28513)) )
))
(declare-datatypes ((List!17606 0))(
  ( (Nil!17603) (Cons!17602 (h!18733 tuple2!11736) (t!24771 List!17606)) )
))
(declare-datatypes ((ListLongMap!10519 0))(
  ( (ListLongMap!10520 (toList!5275 List!17606)) )
))
(declare-fun lt!398274 () ListLongMap!10519)

(declare-datatypes ((ValueCell!8360 0))(
  ( (ValueCellFull!8360 (v!11291 V!28513)) (EmptyCell!8360) )
))
(declare-datatypes ((array!51306 0))(
  ( (array!51307 (arr!24673 (Array (_ BitVec 32) ValueCell!8360)) (size!25114 (_ BitVec 32))) )
))
(declare-fun lt!398280 () array!51306)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3235 (array!51304 array!51306 (_ BitVec 32) (_ BitVec 32) V!28513 V!28513 (_ BitVec 32) Int) ListLongMap!10519)

(assert (=> b!880672 (= lt!398274 (getCurrentListMapNoExtraKeys!3235 _keys!868 lt!398280 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun _values!688 () array!51306)

(declare-fun v!557 () V!28513)

(assert (=> b!880672 (= lt!398280 (array!51307 (store (arr!24673 _values!688) i!612 (ValueCellFull!8360 v!557)) (size!25114 _values!688)))))

(declare-fun lt!398275 () ListLongMap!10519)

(assert (=> b!880672 (= lt!398275 (getCurrentListMapNoExtraKeys!3235 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!880673 () Bool)

(declare-fun res!598482 () Bool)

(assert (=> b!880673 (=> (not res!598482) (not e!490115))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!880673 (= res!598482 (validKeyInArray!0 k!854))))

(declare-fun b!880674 () Bool)

(declare-fun e!490113 () Bool)

(assert (=> b!880674 (= e!490113 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (size!25113 _keys!868) #b01111111111111111111111111111111)))))

(declare-datatypes ((List!17607 0))(
  ( (Nil!17604) (Cons!17603 (h!18734 (_ BitVec 64)) (t!24772 List!17607)) )
))
(declare-fun arrayNoDuplicates!0 (array!51304 (_ BitVec 32) List!17607) Bool)

(assert (=> b!880674 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17604)))

(declare-datatypes ((Unit!30038 0))(
  ( (Unit!30039) )
))
(declare-fun lt!398278 () Unit!30038)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51304 (_ BitVec 32) (_ BitVec 32)) Unit!30038)

(assert (=> b!880674 (= lt!398278 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!880675 () Bool)

(declare-fun e!490117 () Bool)

(assert (=> b!880675 (= e!490116 (not e!490117))))

(declare-fun res!598474 () Bool)

(assert (=> b!880675 (=> res!598474 e!490117)))

(assert (=> b!880675 (= res!598474 (not (validKeyInArray!0 (select (arr!24672 _keys!868) from!1053))))))

(declare-fun lt!398281 () ListLongMap!10519)

(declare-fun lt!398277 () ListLongMap!10519)

(assert (=> b!880675 (= lt!398281 lt!398277)))

(declare-fun lt!398276 () ListLongMap!10519)

(declare-fun +!2481 (ListLongMap!10519 tuple2!11736) ListLongMap!10519)

(assert (=> b!880675 (= lt!398277 (+!2481 lt!398276 (tuple2!11737 k!854 v!557)))))

(assert (=> b!880675 (= lt!398281 (getCurrentListMapNoExtraKeys!3235 _keys!868 lt!398280 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!880675 (= lt!398276 (getCurrentListMapNoExtraKeys!3235 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!398279 () Unit!30038)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!710 (array!51304 array!51306 (_ BitVec 32) (_ BitVec 32) V!28513 V!28513 (_ BitVec 32) (_ BitVec 64) V!28513 (_ BitVec 32) Int) Unit!30038)

(assert (=> b!880675 (= lt!398279 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!710 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!880676 () Bool)

(declare-fun res!598478 () Bool)

(assert (=> b!880676 (=> (not res!598478) (not e!490115))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!880676 (= res!598478 (validMask!0 mask!1196))))

(declare-fun b!880677 () Bool)

(declare-fun e!490112 () Bool)

(declare-fun tp_is_empty!17599 () Bool)

(assert (=> b!880677 (= e!490112 tp_is_empty!17599)))

(declare-fun b!880678 () Bool)

(declare-fun e!490118 () Bool)

(declare-fun mapRes!28020 () Bool)

(assert (=> b!880678 (= e!490118 (and e!490112 mapRes!28020))))

(declare-fun condMapEmpty!28020 () Bool)

(declare-fun mapDefault!28020 () ValueCell!8360)

