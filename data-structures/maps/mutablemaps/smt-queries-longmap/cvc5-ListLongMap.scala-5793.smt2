; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74728 () Bool)

(assert start!74728)

(declare-fun b_free!15349 () Bool)

(declare-fun b_next!15349 () Bool)

(assert (=> start!74728 (= b_free!15349 (not b_next!15349))))

(declare-fun tp!53735 () Bool)

(declare-fun b_and!25335 () Bool)

(assert (=> start!74728 (= tp!53735 b_and!25335)))

(declare-fun b!880540 () Bool)

(declare-fun res!598382 () Bool)

(declare-fun e!490044 () Bool)

(assert (=> b!880540 (=> (not res!598382) (not e!490044))))

(declare-datatypes ((array!51292 0))(
  ( (array!51293 (arr!24666 (Array (_ BitVec 32) (_ BitVec 64))) (size!25107 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51292)

(declare-datatypes ((List!17601 0))(
  ( (Nil!17598) (Cons!17597 (h!18728 (_ BitVec 64)) (t!24760 List!17601)) )
))
(declare-fun arrayNoDuplicates!0 (array!51292 (_ BitVec 32) List!17601) Bool)

(assert (=> b!880540 (= res!598382 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17598))))

(declare-fun b!880541 () Bool)

(declare-fun res!598383 () Bool)

(assert (=> b!880541 (=> (not res!598383) (not e!490044))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!880541 (= res!598383 (validMask!0 mask!1196))))

(declare-fun b!880542 () Bool)

(declare-fun res!598376 () Bool)

(assert (=> b!880542 (=> (not res!598376) (not e!490044))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!28505 0))(
  ( (V!28506 (val!8844 Int)) )
))
(declare-datatypes ((ValueCell!8357 0))(
  ( (ValueCellFull!8357 (v!11288 V!28505)) (EmptyCell!8357) )
))
(declare-datatypes ((array!51294 0))(
  ( (array!51295 (arr!24667 (Array (_ BitVec 32) ValueCell!8357)) (size!25108 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51294)

(assert (=> b!880542 (= res!598376 (and (= (size!25108 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25107 _keys!868) (size!25108 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!880543 () Bool)

(declare-fun res!598374 () Bool)

(assert (=> b!880543 (=> (not res!598374) (not e!490044))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!880543 (= res!598374 (and (= (select (arr!24666 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!880544 () Bool)

(declare-fun res!598375 () Bool)

(assert (=> b!880544 (=> (not res!598375) (not e!490044))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51292 (_ BitVec 32)) Bool)

(assert (=> b!880544 (= res!598375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!598377 () Bool)

(assert (=> start!74728 (=> (not res!598377) (not e!490044))))

(assert (=> start!74728 (= res!598377 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25107 _keys!868))))))

(assert (=> start!74728 e!490044))

(declare-fun tp_is_empty!17593 () Bool)

(assert (=> start!74728 tp_is_empty!17593))

(assert (=> start!74728 true))

(assert (=> start!74728 tp!53735))

(declare-fun array_inv!19416 (array!51292) Bool)

(assert (=> start!74728 (array_inv!19416 _keys!868)))

(declare-fun e!490039 () Bool)

(declare-fun array_inv!19417 (array!51294) Bool)

(assert (=> start!74728 (and (array_inv!19417 _values!688) e!490039)))

(declare-fun b!880545 () Bool)

(declare-fun e!490046 () Bool)

(declare-fun e!490045 () Bool)

(assert (=> b!880545 (= e!490046 e!490045)))

(declare-fun res!598380 () Bool)

(assert (=> b!880545 (=> res!598380 e!490045)))

(assert (=> b!880545 (= res!598380 (not (= (select (arr!24666 _keys!868) from!1053) k!854)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11730 0))(
  ( (tuple2!11731 (_1!5875 (_ BitVec 64)) (_2!5875 V!28505)) )
))
(declare-datatypes ((List!17602 0))(
  ( (Nil!17599) (Cons!17598 (h!18729 tuple2!11730) (t!24761 List!17602)) )
))
(declare-datatypes ((ListLongMap!10513 0))(
  ( (ListLongMap!10514 (toList!5272 List!17602)) )
))
(declare-fun lt!398207 () ListLongMap!10513)

(declare-fun lt!398204 () ListLongMap!10513)

(declare-fun +!2478 (ListLongMap!10513 tuple2!11730) ListLongMap!10513)

(declare-fun get!12988 (ValueCell!8357 V!28505) V!28505)

(declare-fun dynLambda!1243 (Int (_ BitVec 64)) V!28505)

(assert (=> b!880545 (= lt!398204 (+!2478 lt!398207 (tuple2!11731 (select (arr!24666 _keys!868) from!1053) (get!12988 (select (arr!24667 _values!688) from!1053) (dynLambda!1243 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!880546 () Bool)

(declare-fun res!598378 () Bool)

(assert (=> b!880546 (=> (not res!598378) (not e!490044))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!880546 (= res!598378 (validKeyInArray!0 k!854))))

(declare-fun b!880547 () Bool)

(assert (=> b!880547 (= e!490045 true)))

(assert (=> b!880547 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17598)))

(declare-datatypes ((Unit!30032 0))(
  ( (Unit!30033) )
))
(declare-fun lt!398205 () Unit!30032)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51292 (_ BitVec 32) (_ BitVec 32)) Unit!30032)

(assert (=> b!880547 (= lt!398205 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun mapNonEmpty!28011 () Bool)

(declare-fun mapRes!28011 () Bool)

(declare-fun tp!53736 () Bool)

(declare-fun e!490042 () Bool)

(assert (=> mapNonEmpty!28011 (= mapRes!28011 (and tp!53736 e!490042))))

(declare-fun mapKey!28011 () (_ BitVec 32))

(declare-fun mapValue!28011 () ValueCell!8357)

(declare-fun mapRest!28011 () (Array (_ BitVec 32) ValueCell!8357))

(assert (=> mapNonEmpty!28011 (= (arr!24667 _values!688) (store mapRest!28011 mapKey!28011 mapValue!28011))))

(declare-fun b!880548 () Bool)

(declare-fun e!490041 () Bool)

(assert (=> b!880548 (= e!490041 tp_is_empty!17593)))

(declare-fun b!880549 () Bool)

(declare-fun e!490043 () Bool)

(assert (=> b!880549 (= e!490043 (not e!490046))))

(declare-fun res!598381 () Bool)

(assert (=> b!880549 (=> res!598381 e!490046)))

(assert (=> b!880549 (= res!598381 (not (validKeyInArray!0 (select (arr!24666 _keys!868) from!1053))))))

(declare-fun lt!398208 () ListLongMap!10513)

(assert (=> b!880549 (= lt!398208 lt!398207)))

(declare-fun lt!398206 () ListLongMap!10513)

(declare-fun v!557 () V!28505)

(assert (=> b!880549 (= lt!398207 (+!2478 lt!398206 (tuple2!11731 k!854 v!557)))))

(declare-fun lt!398203 () array!51294)

(declare-fun minValue!654 () V!28505)

(declare-fun zeroValue!654 () V!28505)

(declare-fun getCurrentListMapNoExtraKeys!3232 (array!51292 array!51294 (_ BitVec 32) (_ BitVec 32) V!28505 V!28505 (_ BitVec 32) Int) ListLongMap!10513)

(assert (=> b!880549 (= lt!398208 (getCurrentListMapNoExtraKeys!3232 _keys!868 lt!398203 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!880549 (= lt!398206 (getCurrentListMapNoExtraKeys!3232 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!398202 () Unit!30032)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!707 (array!51292 array!51294 (_ BitVec 32) (_ BitVec 32) V!28505 V!28505 (_ BitVec 32) (_ BitVec 64) V!28505 (_ BitVec 32) Int) Unit!30032)

(assert (=> b!880549 (= lt!398202 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!707 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!28011 () Bool)

(assert (=> mapIsEmpty!28011 mapRes!28011))

(declare-fun b!880550 () Bool)

(assert (=> b!880550 (= e!490044 e!490043)))

(declare-fun res!598379 () Bool)

(assert (=> b!880550 (=> (not res!598379) (not e!490043))))

(assert (=> b!880550 (= res!598379 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!880550 (= lt!398204 (getCurrentListMapNoExtraKeys!3232 _keys!868 lt!398203 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!880550 (= lt!398203 (array!51295 (store (arr!24667 _values!688) i!612 (ValueCellFull!8357 v!557)) (size!25108 _values!688)))))

(declare-fun lt!398209 () ListLongMap!10513)

(assert (=> b!880550 (= lt!398209 (getCurrentListMapNoExtraKeys!3232 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!880551 () Bool)

(assert (=> b!880551 (= e!490042 tp_is_empty!17593)))

(declare-fun b!880552 () Bool)

(assert (=> b!880552 (= e!490039 (and e!490041 mapRes!28011))))

(declare-fun condMapEmpty!28011 () Bool)

(declare-fun mapDefault!28011 () ValueCell!8357)

