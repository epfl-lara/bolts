; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74018 () Bool)

(assert start!74018)

(declare-fun b_free!14905 () Bool)

(declare-fun b_next!14905 () Bool)

(assert (=> start!74018 (= b_free!14905 (not b_next!14905))))

(declare-fun tp!52220 () Bool)

(declare-fun b_and!24675 () Bool)

(assert (=> start!74018 (= tp!52220 b_and!24675)))

(declare-fun b!869793 () Bool)

(declare-fun res!591247 () Bool)

(declare-fun e!484393 () Bool)

(assert (=> b!869793 (=> (not res!591247) (not e!484393))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50214 0))(
  ( (array!50215 (arr!24134 (Array (_ BitVec 32) (_ BitVec 64))) (size!24575 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50214)

(declare-datatypes ((V!27769 0))(
  ( (V!27770 (val!8568 Int)) )
))
(declare-datatypes ((ValueCell!8081 0))(
  ( (ValueCellFull!8081 (v!10989 V!27769)) (EmptyCell!8081) )
))
(declare-datatypes ((array!50216 0))(
  ( (array!50217 (arr!24135 (Array (_ BitVec 32) ValueCell!8081)) (size!24576 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50216)

(assert (=> b!869793 (= res!591247 (and (= (size!24576 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24575 _keys!868) (size!24576 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!869794 () Bool)

(declare-fun res!591249 () Bool)

(assert (=> b!869794 (=> (not res!591249) (not e!484393))))

(declare-datatypes ((List!17238 0))(
  ( (Nil!17235) (Cons!17234 (h!18365 (_ BitVec 64)) (t!24283 List!17238)) )
))
(declare-fun arrayNoDuplicates!0 (array!50214 (_ BitVec 32) List!17238) Bool)

(assert (=> b!869794 (= res!591249 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17235))))

(declare-fun mapIsEmpty!27161 () Bool)

(declare-fun mapRes!27161 () Bool)

(assert (=> mapIsEmpty!27161 mapRes!27161))

(declare-fun res!591245 () Bool)

(assert (=> start!74018 (=> (not res!591245) (not e!484393))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74018 (= res!591245 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24575 _keys!868))))))

(assert (=> start!74018 e!484393))

(declare-fun tp_is_empty!17041 () Bool)

(assert (=> start!74018 tp_is_empty!17041))

(assert (=> start!74018 true))

(assert (=> start!74018 tp!52220))

(declare-fun array_inv!19034 (array!50214) Bool)

(assert (=> start!74018 (array_inv!19034 _keys!868)))

(declare-fun e!484394 () Bool)

(declare-fun array_inv!19035 (array!50216) Bool)

(assert (=> start!74018 (and (array_inv!19035 _values!688) e!484394)))

(declare-fun b!869795 () Bool)

(declare-fun e!484391 () Bool)

(assert (=> b!869795 (= e!484391 tp_is_empty!17041)))

(declare-fun b!869796 () Bool)

(declare-fun res!591244 () Bool)

(assert (=> b!869796 (=> (not res!591244) (not e!484393))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!869796 (= res!591244 (and (= (select (arr!24134 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!869797 () Bool)

(declare-fun e!484395 () Bool)

(assert (=> b!869797 (= e!484395 (not true))))

(declare-fun lt!394917 () array!50216)

(declare-fun v!557 () V!27769)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27769)

(declare-fun zeroValue!654 () V!27769)

(declare-datatypes ((tuple2!11382 0))(
  ( (tuple2!11383 (_1!5701 (_ BitVec 64)) (_2!5701 V!27769)) )
))
(declare-datatypes ((List!17239 0))(
  ( (Nil!17236) (Cons!17235 (h!18366 tuple2!11382) (t!24284 List!17239)) )
))
(declare-datatypes ((ListLongMap!10165 0))(
  ( (ListLongMap!10166 (toList!5098 List!17239)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3062 (array!50214 array!50216 (_ BitVec 32) (_ BitVec 32) V!27769 V!27769 (_ BitVec 32) Int) ListLongMap!10165)

(declare-fun +!2381 (ListLongMap!10165 tuple2!11382) ListLongMap!10165)

(assert (=> b!869797 (= (getCurrentListMapNoExtraKeys!3062 _keys!868 lt!394917 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2381 (getCurrentListMapNoExtraKeys!3062 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11383 k!854 v!557)))))

(declare-datatypes ((Unit!29812 0))(
  ( (Unit!29813) )
))
(declare-fun lt!394915 () Unit!29812)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!612 (array!50214 array!50216 (_ BitVec 32) (_ BitVec 32) V!27769 V!27769 (_ BitVec 32) (_ BitVec 64) V!27769 (_ BitVec 32) Int) Unit!29812)

(assert (=> b!869797 (= lt!394915 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!612 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!869798 () Bool)

(declare-fun res!591248 () Bool)

(assert (=> b!869798 (=> (not res!591248) (not e!484393))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869798 (= res!591248 (validMask!0 mask!1196))))

(declare-fun b!869799 () Bool)

(assert (=> b!869799 (= e!484394 (and e!484391 mapRes!27161))))

(declare-fun condMapEmpty!27161 () Bool)

(declare-fun mapDefault!27161 () ValueCell!8081)

