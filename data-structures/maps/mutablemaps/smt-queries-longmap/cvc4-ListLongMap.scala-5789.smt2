; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74708 () Bool)

(assert start!74708)

(declare-fun b_free!15329 () Bool)

(declare-fun b_next!15329 () Bool)

(assert (=> start!74708 (= b_free!15329 (not b_next!15329))))

(declare-fun tp!53675 () Bool)

(declare-fun b_and!25295 () Bool)

(assert (=> start!74708 (= tp!53675 b_and!25295)))

(declare-fun b!880101 () Bool)

(declare-fun res!598054 () Bool)

(declare-fun e!489804 () Bool)

(assert (=> b!880101 (=> (not res!598054) (not e!489804))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!880101 (= res!598054 (validMask!0 mask!1196))))

(declare-fun res!598048 () Bool)

(assert (=> start!74708 (=> (not res!598048) (not e!489804))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!51254 0))(
  ( (array!51255 (arr!24647 (Array (_ BitVec 32) (_ BitVec 64))) (size!25088 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51254)

(assert (=> start!74708 (= res!598048 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25088 _keys!868))))))

(assert (=> start!74708 e!489804))

(declare-fun tp_is_empty!17573 () Bool)

(assert (=> start!74708 tp_is_empty!17573))

(assert (=> start!74708 true))

(assert (=> start!74708 tp!53675))

(declare-fun array_inv!19402 (array!51254) Bool)

(assert (=> start!74708 (array_inv!19402 _keys!868)))

(declare-datatypes ((V!28477 0))(
  ( (V!28478 (val!8834 Int)) )
))
(declare-datatypes ((ValueCell!8347 0))(
  ( (ValueCellFull!8347 (v!11278 V!28477)) (EmptyCell!8347) )
))
(declare-datatypes ((array!51256 0))(
  ( (array!51257 (arr!24648 (Array (_ BitVec 32) ValueCell!8347)) (size!25089 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51256)

(declare-fun e!489803 () Bool)

(declare-fun array_inv!19403 (array!51256) Bool)

(assert (=> start!74708 (and (array_inv!19403 _values!688) e!489803)))

(declare-fun b!880102 () Bool)

(declare-fun e!489802 () Bool)

(assert (=> b!880102 (= e!489802 tp_is_empty!17573)))

(declare-fun b!880103 () Bool)

(declare-fun res!598050 () Bool)

(assert (=> b!880103 (=> (not res!598050) (not e!489804))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!880103 (= res!598050 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25088 _keys!868))))))

(declare-fun mapIsEmpty!27981 () Bool)

(declare-fun mapRes!27981 () Bool)

(assert (=> mapIsEmpty!27981 mapRes!27981))

(declare-fun b!880104 () Bool)

(declare-fun e!489805 () Bool)

(assert (=> b!880104 (= e!489805 true)))

(declare-datatypes ((tuple2!11712 0))(
  ( (tuple2!11713 (_1!5866 (_ BitVec 64)) (_2!5866 V!28477)) )
))
(declare-datatypes ((List!17585 0))(
  ( (Nil!17582) (Cons!17581 (h!18712 tuple2!11712) (t!24724 List!17585)) )
))
(declare-datatypes ((ListLongMap!10495 0))(
  ( (ListLongMap!10496 (toList!5263 List!17585)) )
))
(declare-fun lt!397967 () ListLongMap!10495)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!397965 () ListLongMap!10495)

(declare-fun +!2469 (ListLongMap!10495 tuple2!11712) ListLongMap!10495)

(declare-fun get!12974 (ValueCell!8347 V!28477) V!28477)

(declare-fun dynLambda!1237 (Int (_ BitVec 64)) V!28477)

(assert (=> b!880104 (= lt!397967 (+!2469 lt!397965 (tuple2!11713 (select (arr!24647 _keys!868) from!1053) (get!12974 (select (arr!24648 _values!688) from!1053) (dynLambda!1237 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!880105 () Bool)

(declare-fun e!489801 () Bool)

(assert (=> b!880105 (= e!489801 tp_is_empty!17573)))

(declare-fun b!880106 () Bool)

(declare-fun res!598052 () Bool)

(assert (=> b!880106 (=> (not res!598052) (not e!489804))))

(declare-datatypes ((List!17586 0))(
  ( (Nil!17583) (Cons!17582 (h!18713 (_ BitVec 64)) (t!24725 List!17586)) )
))
(declare-fun arrayNoDuplicates!0 (array!51254 (_ BitVec 32) List!17586) Bool)

(assert (=> b!880106 (= res!598052 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17583))))

(declare-fun b!880107 () Bool)

(declare-fun res!598045 () Bool)

(assert (=> b!880107 (=> (not res!598045) (not e!489804))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!880107 (= res!598045 (and (= (select (arr!24647 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!880108 () Bool)

(declare-fun res!598053 () Bool)

(assert (=> b!880108 (=> (not res!598053) (not e!489804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51254 (_ BitVec 32)) Bool)

(assert (=> b!880108 (= res!598053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!880109 () Bool)

(declare-fun e!489806 () Bool)

(assert (=> b!880109 (= e!489804 e!489806)))

(declare-fun res!598051 () Bool)

(assert (=> b!880109 (=> (not res!598051) (not e!489806))))

(assert (=> b!880109 (= res!598051 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!397964 () array!51256)

(declare-fun minValue!654 () V!28477)

(declare-fun zeroValue!654 () V!28477)

(declare-fun getCurrentListMapNoExtraKeys!3223 (array!51254 array!51256 (_ BitVec 32) (_ BitVec 32) V!28477 V!28477 (_ BitVec 32) Int) ListLongMap!10495)

(assert (=> b!880109 (= lt!397967 (getCurrentListMapNoExtraKeys!3223 _keys!868 lt!397964 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28477)

(assert (=> b!880109 (= lt!397964 (array!51257 (store (arr!24648 _values!688) i!612 (ValueCellFull!8347 v!557)) (size!25089 _values!688)))))

(declare-fun lt!397968 () ListLongMap!10495)

(assert (=> b!880109 (= lt!397968 (getCurrentListMapNoExtraKeys!3223 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!880110 () Bool)

(assert (=> b!880110 (= e!489806 (not e!489805))))

(declare-fun res!598047 () Bool)

(assert (=> b!880110 (=> res!598047 e!489805)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!880110 (= res!598047 (not (validKeyInArray!0 (select (arr!24647 _keys!868) from!1053))))))

(declare-fun lt!397969 () ListLongMap!10495)

(assert (=> b!880110 (= lt!397969 lt!397965)))

(declare-fun lt!397963 () ListLongMap!10495)

(assert (=> b!880110 (= lt!397965 (+!2469 lt!397963 (tuple2!11713 k!854 v!557)))))

(assert (=> b!880110 (= lt!397969 (getCurrentListMapNoExtraKeys!3223 _keys!868 lt!397964 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!880110 (= lt!397963 (getCurrentListMapNoExtraKeys!3223 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30014 0))(
  ( (Unit!30015) )
))
(declare-fun lt!397966 () Unit!30014)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!699 (array!51254 array!51256 (_ BitVec 32) (_ BitVec 32) V!28477 V!28477 (_ BitVec 32) (_ BitVec 64) V!28477 (_ BitVec 32) Int) Unit!30014)

(assert (=> b!880110 (= lt!397966 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!699 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!880111 () Bool)

(declare-fun res!598049 () Bool)

(assert (=> b!880111 (=> (not res!598049) (not e!489804))))

(assert (=> b!880111 (= res!598049 (and (= (size!25089 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25088 _keys!868) (size!25089 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27981 () Bool)

(declare-fun tp!53676 () Bool)

(assert (=> mapNonEmpty!27981 (= mapRes!27981 (and tp!53676 e!489802))))

(declare-fun mapValue!27981 () ValueCell!8347)

(declare-fun mapRest!27981 () (Array (_ BitVec 32) ValueCell!8347))

(declare-fun mapKey!27981 () (_ BitVec 32))

(assert (=> mapNonEmpty!27981 (= (arr!24648 _values!688) (store mapRest!27981 mapKey!27981 mapValue!27981))))

(declare-fun b!880112 () Bool)

(declare-fun res!598046 () Bool)

(assert (=> b!880112 (=> (not res!598046) (not e!489804))))

(assert (=> b!880112 (= res!598046 (validKeyInArray!0 k!854))))

(declare-fun b!880113 () Bool)

(assert (=> b!880113 (= e!489803 (and e!489801 mapRes!27981))))

(declare-fun condMapEmpty!27981 () Bool)

(declare-fun mapDefault!27981 () ValueCell!8347)

