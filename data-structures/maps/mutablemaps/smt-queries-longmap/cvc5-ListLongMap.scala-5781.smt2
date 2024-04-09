; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74616 () Bool)

(assert start!74616)

(declare-fun b_free!15277 () Bool)

(declare-fun b_next!15277 () Bool)

(assert (=> start!74616 (= b_free!15277 (not b_next!15277))))

(declare-fun tp!53514 () Bool)

(declare-fun b_and!25171 () Bool)

(assert (=> start!74616 (= tp!53514 b_and!25171)))

(declare-fun b!878787 () Bool)

(declare-fun e!489095 () Bool)

(declare-fun tp_is_empty!17521 () Bool)

(assert (=> b!878787 (= e!489095 tp_is_empty!17521)))

(declare-fun b!878788 () Bool)

(declare-fun e!489096 () Bool)

(declare-fun e!489091 () Bool)

(assert (=> b!878788 (= e!489096 (not e!489091))))

(declare-fun res!597171 () Bool)

(assert (=> b!878788 (=> res!597171 e!489091)))

(declare-datatypes ((array!51148 0))(
  ( (array!51149 (arr!24596 (Array (_ BitVec 32) (_ BitVec 64))) (size!25037 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51148)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878788 (= res!597171 (not (validKeyInArray!0 (select (arr!24596 _keys!868) from!1053))))))

(declare-datatypes ((V!28409 0))(
  ( (V!28410 (val!8808 Int)) )
))
(declare-fun v!557 () V!28409)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((ValueCell!8321 0))(
  ( (ValueCellFull!8321 (v!11244 V!28409)) (EmptyCell!8321) )
))
(declare-datatypes ((array!51150 0))(
  ( (array!51151 (arr!24597 (Array (_ BitVec 32) ValueCell!8321)) (size!25038 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51150)

(declare-fun minValue!654 () V!28409)

(declare-fun zeroValue!654 () V!28409)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!397325 () array!51150)

(declare-datatypes ((tuple2!11668 0))(
  ( (tuple2!11669 (_1!5844 (_ BitVec 64)) (_2!5844 V!28409)) )
))
(declare-datatypes ((List!17546 0))(
  ( (Nil!17543) (Cons!17542 (h!18673 tuple2!11668) (t!24643 List!17546)) )
))
(declare-datatypes ((ListLongMap!10451 0))(
  ( (ListLongMap!10452 (toList!5241 List!17546)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3203 (array!51148 array!51150 (_ BitVec 32) (_ BitVec 32) V!28409 V!28409 (_ BitVec 32) Int) ListLongMap!10451)

(declare-fun +!2447 (ListLongMap!10451 tuple2!11668) ListLongMap!10451)

(assert (=> b!878788 (= (getCurrentListMapNoExtraKeys!3203 _keys!868 lt!397325 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2447 (getCurrentListMapNoExtraKeys!3203 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11669 k!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29974 0))(
  ( (Unit!29975) )
))
(declare-fun lt!397327 () Unit!29974)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!679 (array!51148 array!51150 (_ BitVec 32) (_ BitVec 32) V!28409 V!28409 (_ BitVec 32) (_ BitVec 64) V!28409 (_ BitVec 32) Int) Unit!29974)

(assert (=> b!878788 (= lt!397327 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!679 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!878789 () Bool)

(declare-fun res!597168 () Bool)

(declare-fun e!489093 () Bool)

(assert (=> b!878789 (=> (not res!597168) (not e!489093))))

(assert (=> b!878789 (= res!597168 (and (= (select (arr!24596 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!878790 () Bool)

(declare-fun res!597173 () Bool)

(assert (=> b!878790 (=> (not res!597173) (not e!489093))))

(assert (=> b!878790 (= res!597173 (validKeyInArray!0 k!854))))

(declare-fun b!878791 () Bool)

(declare-fun res!597167 () Bool)

(assert (=> b!878791 (=> (not res!597167) (not e!489093))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51148 (_ BitVec 32)) Bool)

(assert (=> b!878791 (= res!597167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!597172 () Bool)

(assert (=> start!74616 (=> (not res!597172) (not e!489093))))

(assert (=> start!74616 (= res!597172 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25037 _keys!868))))))

(assert (=> start!74616 e!489093))

(assert (=> start!74616 tp_is_empty!17521))

(assert (=> start!74616 true))

(assert (=> start!74616 tp!53514))

(declare-fun array_inv!19362 (array!51148) Bool)

(assert (=> start!74616 (array_inv!19362 _keys!868)))

(declare-fun e!489090 () Bool)

(declare-fun array_inv!19363 (array!51150) Bool)

(assert (=> start!74616 (and (array_inv!19363 _values!688) e!489090)))

(declare-fun b!878792 () Bool)

(assert (=> b!878792 (= e!489093 e!489096)))

(declare-fun res!597165 () Bool)

(assert (=> b!878792 (=> (not res!597165) (not e!489096))))

(assert (=> b!878792 (= res!597165 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!397326 () ListLongMap!10451)

(assert (=> b!878792 (= lt!397326 (getCurrentListMapNoExtraKeys!3203 _keys!868 lt!397325 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!878792 (= lt!397325 (array!51151 (store (arr!24597 _values!688) i!612 (ValueCellFull!8321 v!557)) (size!25038 _values!688)))))

(declare-fun lt!397328 () ListLongMap!10451)

(assert (=> b!878792 (= lt!397328 (getCurrentListMapNoExtraKeys!3203 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!878793 () Bool)

(declare-fun res!597170 () Bool)

(assert (=> b!878793 (=> (not res!597170) (not e!489093))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878793 (= res!597170 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!27897 () Bool)

(declare-fun mapRes!27897 () Bool)

(assert (=> mapIsEmpty!27897 mapRes!27897))

(declare-fun mapNonEmpty!27897 () Bool)

(declare-fun tp!53513 () Bool)

(assert (=> mapNonEmpty!27897 (= mapRes!27897 (and tp!53513 e!489095))))

(declare-fun mapRest!27897 () (Array (_ BitVec 32) ValueCell!8321))

(declare-fun mapValue!27897 () ValueCell!8321)

(declare-fun mapKey!27897 () (_ BitVec 32))

(assert (=> mapNonEmpty!27897 (= (arr!24597 _values!688) (store mapRest!27897 mapKey!27897 mapValue!27897))))

(declare-fun b!878794 () Bool)

(declare-fun e!489092 () Bool)

(assert (=> b!878794 (= e!489090 (and e!489092 mapRes!27897))))

(declare-fun condMapEmpty!27897 () Bool)

(declare-fun mapDefault!27897 () ValueCell!8321)

