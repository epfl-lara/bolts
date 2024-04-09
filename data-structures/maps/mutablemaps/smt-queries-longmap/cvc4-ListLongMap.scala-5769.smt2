; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74548 () Bool)

(assert start!74548)

(declare-fun b_free!15209 () Bool)

(declare-fun b_next!15209 () Bool)

(assert (=> start!74548 (= b_free!15209 (not b_next!15209))))

(declare-fun tp!53310 () Bool)

(declare-fun b_and!25103 () Bool)

(assert (=> start!74548 (= tp!53310 b_and!25103)))

(declare-fun b!877635 () Bool)

(declare-fun e!488549 () Bool)

(assert (=> b!877635 (= e!488549 false)))

(declare-datatypes ((V!28317 0))(
  ( (V!28318 (val!8774 Int)) )
))
(declare-fun v!557 () V!28317)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11618 0))(
  ( (tuple2!11619 (_1!5819 (_ BitVec 64)) (_2!5819 V!28317)) )
))
(declare-datatypes ((List!17500 0))(
  ( (Nil!17497) (Cons!17496 (h!18627 tuple2!11618) (t!24597 List!17500)) )
))
(declare-datatypes ((ListLongMap!10401 0))(
  ( (ListLongMap!10402 (toList!5216 List!17500)) )
))
(declare-fun lt!397081 () ListLongMap!10401)

(declare-datatypes ((array!51016 0))(
  ( (array!51017 (arr!24530 (Array (_ BitVec 32) (_ BitVec 64))) (size!24971 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51016)

(declare-datatypes ((ValueCell!8287 0))(
  ( (ValueCellFull!8287 (v!11210 V!28317)) (EmptyCell!8287) )
))
(declare-datatypes ((array!51018 0))(
  ( (array!51019 (arr!24531 (Array (_ BitVec 32) ValueCell!8287)) (size!24972 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51018)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28317)

(declare-fun zeroValue!654 () V!28317)

(declare-fun getCurrentListMapNoExtraKeys!3178 (array!51016 array!51018 (_ BitVec 32) (_ BitVec 32) V!28317 V!28317 (_ BitVec 32) Int) ListLongMap!10401)

(assert (=> b!877635 (= lt!397081 (getCurrentListMapNoExtraKeys!3178 _keys!868 (array!51019 (store (arr!24531 _values!688) i!612 (ValueCellFull!8287 v!557)) (size!24972 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397082 () ListLongMap!10401)

(assert (=> b!877635 (= lt!397082 (getCurrentListMapNoExtraKeys!3178 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!877636 () Bool)

(declare-fun res!596324 () Bool)

(assert (=> b!877636 (=> (not res!596324) (not e!488549))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!877636 (= res!596324 (and (= (select (arr!24530 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!877637 () Bool)

(declare-fun e!488550 () Bool)

(declare-fun tp_is_empty!17453 () Bool)

(assert (=> b!877637 (= e!488550 tp_is_empty!17453)))

(declare-fun b!877638 () Bool)

(declare-fun e!488551 () Bool)

(assert (=> b!877638 (= e!488551 tp_is_empty!17453)))

(declare-fun b!877639 () Bool)

(declare-fun res!596318 () Bool)

(assert (=> b!877639 (=> (not res!596318) (not e!488549))))

(assert (=> b!877639 (= res!596318 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24971 _keys!868))))))

(declare-fun b!877640 () Bool)

(declare-fun res!596321 () Bool)

(assert (=> b!877640 (=> (not res!596321) (not e!488549))))

(assert (=> b!877640 (= res!596321 (and (= (size!24972 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24971 _keys!868) (size!24972 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!596319 () Bool)

(assert (=> start!74548 (=> (not res!596319) (not e!488549))))

(assert (=> start!74548 (= res!596319 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24971 _keys!868))))))

(assert (=> start!74548 e!488549))

(assert (=> start!74548 tp_is_empty!17453))

(assert (=> start!74548 true))

(assert (=> start!74548 tp!53310))

(declare-fun array_inv!19320 (array!51016) Bool)

(assert (=> start!74548 (array_inv!19320 _keys!868)))

(declare-fun e!488553 () Bool)

(declare-fun array_inv!19321 (array!51018) Bool)

(assert (=> start!74548 (and (array_inv!19321 _values!688) e!488553)))

(declare-fun b!877634 () Bool)

(declare-fun mapRes!27795 () Bool)

(assert (=> b!877634 (= e!488553 (and e!488551 mapRes!27795))))

(declare-fun condMapEmpty!27795 () Bool)

(declare-fun mapDefault!27795 () ValueCell!8287)

