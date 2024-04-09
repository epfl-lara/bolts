; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74622 () Bool)

(assert start!74622)

(declare-fun b_free!15283 () Bool)

(declare-fun b_next!15283 () Bool)

(assert (=> start!74622 (= b_free!15283 (not b_next!15283))))

(declare-fun tp!53531 () Bool)

(declare-fun b_and!25177 () Bool)

(assert (=> start!74622 (= tp!53531 b_and!25177)))

(declare-fun b!878904 () Bool)

(declare-fun e!489159 () Bool)

(declare-fun tp_is_empty!17527 () Bool)

(assert (=> b!878904 (= e!489159 tp_is_empty!17527)))

(declare-fun b!878905 () Bool)

(declare-fun e!489154 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((V!28417 0))(
  ( (V!28418 (val!8811 Int)) )
))
(declare-datatypes ((ValueCell!8324 0))(
  ( (ValueCellFull!8324 (v!11247 V!28417)) (EmptyCell!8324) )
))
(declare-datatypes ((array!51160 0))(
  ( (array!51161 (arr!24602 (Array (_ BitVec 32) ValueCell!8324)) (size!25043 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51160)

(assert (=> b!878905 (= e!489154 (bvslt from!1053 (size!25043 _values!688)))))

(declare-fun mapIsEmpty!27906 () Bool)

(declare-fun mapRes!27906 () Bool)

(assert (=> mapIsEmpty!27906 mapRes!27906))

(declare-fun res!597264 () Bool)

(declare-fun e!489155 () Bool)

(assert (=> start!74622 (=> (not res!597264) (not e!489155))))

(declare-datatypes ((array!51162 0))(
  ( (array!51163 (arr!24603 (Array (_ BitVec 32) (_ BitVec 64))) (size!25044 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51162)

(assert (=> start!74622 (= res!597264 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25044 _keys!868))))))

(assert (=> start!74622 e!489155))

(assert (=> start!74622 tp_is_empty!17527))

(assert (=> start!74622 true))

(assert (=> start!74622 tp!53531))

(declare-fun array_inv!19368 (array!51162) Bool)

(assert (=> start!74622 (array_inv!19368 _keys!868)))

(declare-fun e!489156 () Bool)

(declare-fun array_inv!19369 (array!51160) Bool)

(assert (=> start!74622 (and (array_inv!19369 _values!688) e!489156)))

(declare-fun b!878906 () Bool)

(declare-fun res!597259 () Bool)

(assert (=> b!878906 (=> (not res!597259) (not e!489155))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878906 (= res!597259 (validKeyInArray!0 k!854))))

(declare-fun b!878907 () Bool)

(declare-fun e!489157 () Bool)

(assert (=> b!878907 (= e!489157 tp_is_empty!17527)))

(declare-fun b!878908 () Bool)

(declare-fun res!597260 () Bool)

(assert (=> b!878908 (=> (not res!597260) (not e!489155))))

(declare-datatypes ((List!17550 0))(
  ( (Nil!17547) (Cons!17546 (h!18677 (_ BitVec 64)) (t!24647 List!17550)) )
))
(declare-fun arrayNoDuplicates!0 (array!51162 (_ BitVec 32) List!17550) Bool)

(assert (=> b!878908 (= res!597260 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17547))))

(declare-fun b!878909 () Bool)

(declare-fun res!597255 () Bool)

(assert (=> b!878909 (=> (not res!597255) (not e!489155))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!878909 (= res!597255 (and (= (select (arr!24603 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!878910 () Bool)

(declare-fun res!597261 () Bool)

(assert (=> b!878910 (=> (not res!597261) (not e!489155))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51162 (_ BitVec 32)) Bool)

(assert (=> b!878910 (= res!597261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!878911 () Bool)

(declare-fun res!597258 () Bool)

(assert (=> b!878911 (=> (not res!597258) (not e!489155))))

(assert (=> b!878911 (= res!597258 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25044 _keys!868))))))

(declare-fun b!878912 () Bool)

(declare-fun e!489153 () Bool)

(assert (=> b!878912 (= e!489153 (not e!489154))))

(declare-fun res!597263 () Bool)

(assert (=> b!878912 (=> res!597263 e!489154)))

(assert (=> b!878912 (= res!597263 (not (validKeyInArray!0 (select (arr!24603 _keys!868) from!1053))))))

(declare-fun v!557 () V!28417)

(declare-fun lt!397362 () array!51160)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!28417)

(declare-fun zeroValue!654 () V!28417)

(declare-datatypes ((tuple2!11674 0))(
  ( (tuple2!11675 (_1!5847 (_ BitVec 64)) (_2!5847 V!28417)) )
))
(declare-datatypes ((List!17551 0))(
  ( (Nil!17548) (Cons!17547 (h!18678 tuple2!11674) (t!24648 List!17551)) )
))
(declare-datatypes ((ListLongMap!10457 0))(
  ( (ListLongMap!10458 (toList!5244 List!17551)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3206 (array!51162 array!51160 (_ BitVec 32) (_ BitVec 32) V!28417 V!28417 (_ BitVec 32) Int) ListLongMap!10457)

(declare-fun +!2450 (ListLongMap!10457 tuple2!11674) ListLongMap!10457)

(assert (=> b!878912 (= (getCurrentListMapNoExtraKeys!3206 _keys!868 lt!397362 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2450 (getCurrentListMapNoExtraKeys!3206 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11675 k!854 v!557)))))

(declare-datatypes ((Unit!29980 0))(
  ( (Unit!29981) )
))
(declare-fun lt!397363 () Unit!29980)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!682 (array!51162 array!51160 (_ BitVec 32) (_ BitVec 32) V!28417 V!28417 (_ BitVec 32) (_ BitVec 64) V!28417 (_ BitVec 32) Int) Unit!29980)

(assert (=> b!878912 (= lt!397363 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!682 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!878913 () Bool)

(assert (=> b!878913 (= e!489155 e!489153)))

(declare-fun res!597257 () Bool)

(assert (=> b!878913 (=> (not res!597257) (not e!489153))))

(assert (=> b!878913 (= res!597257 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!397361 () ListLongMap!10457)

(assert (=> b!878913 (= lt!397361 (getCurrentListMapNoExtraKeys!3206 _keys!868 lt!397362 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!878913 (= lt!397362 (array!51161 (store (arr!24602 _values!688) i!612 (ValueCellFull!8324 v!557)) (size!25043 _values!688)))))

(declare-fun lt!397364 () ListLongMap!10457)

(assert (=> b!878913 (= lt!397364 (getCurrentListMapNoExtraKeys!3206 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!878914 () Bool)

(assert (=> b!878914 (= e!489156 (and e!489157 mapRes!27906))))

(declare-fun condMapEmpty!27906 () Bool)

(declare-fun mapDefault!27906 () ValueCell!8324)

