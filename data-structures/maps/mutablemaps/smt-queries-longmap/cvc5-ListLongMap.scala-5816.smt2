; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75026 () Bool)

(assert start!75026)

(declare-fun b_free!15487 () Bool)

(declare-fun b_next!15487 () Bool)

(assert (=> start!75026 (= b_free!15487 (not b_next!15487))))

(declare-fun tp!54167 () Bool)

(declare-fun b_and!25695 () Bool)

(assert (=> start!75026 (= tp!54167 b_and!25695)))

(declare-fun e!492316 () Bool)

(declare-datatypes ((V!28689 0))(
  ( (V!28690 (val!8913 Int)) )
))
(declare-datatypes ((tuple2!11846 0))(
  ( (tuple2!11847 (_1!5933 (_ BitVec 64)) (_2!5933 V!28689)) )
))
(declare-datatypes ((List!17711 0))(
  ( (Nil!17708) (Cons!17707 (h!18838 tuple2!11846) (t!24994 List!17711)) )
))
(declare-datatypes ((ListLongMap!10629 0))(
  ( (ListLongMap!10630 (toList!5330 List!17711)) )
))
(declare-fun lt!400721 () ListLongMap!10629)

(declare-fun b!884599 () Bool)

(declare-fun lt!400724 () ListLongMap!10629)

(declare-fun lt!400720 () tuple2!11846)

(declare-fun +!2533 (ListLongMap!10629 tuple2!11846) ListLongMap!10629)

(assert (=> b!884599 (= e!492316 (= lt!400724 (+!2533 lt!400721 lt!400720)))))

(declare-fun b!884600 () Bool)

(declare-fun res!601053 () Bool)

(declare-fun e!492322 () Bool)

(assert (=> b!884600 (=> (not res!601053) (not e!492322))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!884600 (= res!601053 (validKeyInArray!0 k!854))))

(declare-fun mapNonEmpty!28236 () Bool)

(declare-fun mapRes!28236 () Bool)

(declare-fun tp!54168 () Bool)

(declare-fun e!492318 () Bool)

(assert (=> mapNonEmpty!28236 (= mapRes!28236 (and tp!54168 e!492318))))

(declare-fun mapKey!28236 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8426 0))(
  ( (ValueCellFull!8426 (v!11382 V!28689)) (EmptyCell!8426) )
))
(declare-fun mapRest!28236 () (Array (_ BitVec 32) ValueCell!8426))

(declare-fun mapValue!28236 () ValueCell!8426)

(declare-datatypes ((array!51572 0))(
  ( (array!51573 (arr!24800 (Array (_ BitVec 32) ValueCell!8426)) (size!25241 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51572)

(assert (=> mapNonEmpty!28236 (= (arr!24800 _values!688) (store mapRest!28236 mapKey!28236 mapValue!28236))))

(declare-fun b!884601 () Bool)

(declare-fun e!492320 () Bool)

(declare-fun tp_is_empty!17731 () Bool)

(assert (=> b!884601 (= e!492320 tp_is_empty!17731)))

(declare-fun res!601051 () Bool)

(assert (=> start!75026 (=> (not res!601051) (not e!492322))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!51574 0))(
  ( (array!51575 (arr!24801 (Array (_ BitVec 32) (_ BitVec 64))) (size!25242 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51574)

(assert (=> start!75026 (= res!601051 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25242 _keys!868))))))

(assert (=> start!75026 e!492322))

(assert (=> start!75026 tp_is_empty!17731))

(assert (=> start!75026 true))

(assert (=> start!75026 tp!54167))

(declare-fun array_inv!19500 (array!51574) Bool)

(assert (=> start!75026 (array_inv!19500 _keys!868)))

(declare-fun e!492317 () Bool)

(declare-fun array_inv!19501 (array!51572) Bool)

(assert (=> start!75026 (and (array_inv!19501 _values!688) e!492317)))

(declare-fun b!884602 () Bool)

(assert (=> b!884602 (= e!492318 tp_is_empty!17731)))

(declare-fun mapIsEmpty!28236 () Bool)

(assert (=> mapIsEmpty!28236 mapRes!28236))

(declare-fun b!884603 () Bool)

(declare-fun res!601059 () Bool)

(assert (=> b!884603 (=> (not res!601059) (not e!492322))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!884603 (= res!601059 (and (= (size!25241 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25242 _keys!868) (size!25241 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!884604 () Bool)

(declare-fun res!601050 () Bool)

(assert (=> b!884604 (=> (not res!601050) (not e!492322))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!884604 (= res!601050 (and (= (select (arr!24801 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!884605 () Bool)

(declare-fun res!601058 () Bool)

(assert (=> b!884605 (=> (not res!601058) (not e!492322))))

(declare-datatypes ((List!17712 0))(
  ( (Nil!17709) (Cons!17708 (h!18839 (_ BitVec 64)) (t!24995 List!17712)) )
))
(declare-fun arrayNoDuplicates!0 (array!51574 (_ BitVec 32) List!17712) Bool)

(assert (=> b!884605 (= res!601058 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17709))))

(declare-fun b!884606 () Bool)

(declare-fun res!601055 () Bool)

(assert (=> b!884606 (=> (not res!601055) (not e!492322))))

(assert (=> b!884606 (= res!601055 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25242 _keys!868))))))

(declare-fun b!884607 () Bool)

(declare-fun e!492321 () Bool)

(assert (=> b!884607 (= e!492321 (not e!492316))))

(declare-fun res!601052 () Bool)

(assert (=> b!884607 (=> res!601052 e!492316)))

(assert (=> b!884607 (= res!601052 (validKeyInArray!0 (select (arr!24801 _keys!868) from!1053)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28689)

(declare-fun zeroValue!654 () V!28689)

(declare-fun lt!400723 () array!51572)

(declare-fun getCurrentListMapNoExtraKeys!3284 (array!51574 array!51572 (_ BitVec 32) (_ BitVec 32) V!28689 V!28689 (_ BitVec 32) Int) ListLongMap!10629)

(assert (=> b!884607 (= (getCurrentListMapNoExtraKeys!3284 _keys!868 lt!400723 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2533 (getCurrentListMapNoExtraKeys!3284 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!400720))))

(declare-fun v!557 () V!28689)

(assert (=> b!884607 (= lt!400720 (tuple2!11847 k!854 v!557))))

(declare-datatypes ((Unit!30175 0))(
  ( (Unit!30176) )
))
(declare-fun lt!400722 () Unit!30175)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!754 (array!51574 array!51572 (_ BitVec 32) (_ BitVec 32) V!28689 V!28689 (_ BitVec 32) (_ BitVec 64) V!28689 (_ BitVec 32) Int) Unit!30175)

(assert (=> b!884607 (= lt!400722 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!754 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!884608 () Bool)

(assert (=> b!884608 (= e!492322 e!492321)))

(declare-fun res!601054 () Bool)

(assert (=> b!884608 (=> (not res!601054) (not e!492321))))

(assert (=> b!884608 (= res!601054 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!884608 (= lt!400724 (getCurrentListMapNoExtraKeys!3284 _keys!868 lt!400723 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!884608 (= lt!400723 (array!51573 (store (arr!24800 _values!688) i!612 (ValueCellFull!8426 v!557)) (size!25241 _values!688)))))

(assert (=> b!884608 (= lt!400721 (getCurrentListMapNoExtraKeys!3284 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!884609 () Bool)

(declare-fun res!601057 () Bool)

(assert (=> b!884609 (=> (not res!601057) (not e!492322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!884609 (= res!601057 (validMask!0 mask!1196))))

(declare-fun b!884610 () Bool)

(assert (=> b!884610 (= e!492317 (and e!492320 mapRes!28236))))

(declare-fun condMapEmpty!28236 () Bool)

(declare-fun mapDefault!28236 () ValueCell!8426)

