; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74454 () Bool)

(assert start!74454)

(declare-fun b_free!15169 () Bool)

(declare-fun b_next!15169 () Bool)

(assert (=> start!74454 (= b_free!15169 (not b_next!15169))))

(declare-fun tp!53186 () Bool)

(declare-fun b_and!25009 () Bool)

(assert (=> start!74454 (= tp!53186 b_and!25009)))

(declare-fun b!876332 () Bool)

(declare-fun e!487861 () Bool)

(declare-fun e!487858 () Bool)

(assert (=> b!876332 (= e!487861 e!487858)))

(declare-fun res!595597 () Bool)

(assert (=> b!876332 (=> (not res!595597) (not e!487858))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!876332 (= res!595597 (= from!1053 i!612))))

(declare-datatypes ((V!28265 0))(
  ( (V!28266 (val!8754 Int)) )
))
(declare-datatypes ((tuple2!11582 0))(
  ( (tuple2!11583 (_1!5801 (_ BitVec 64)) (_2!5801 V!28265)) )
))
(declare-datatypes ((List!17464 0))(
  ( (Nil!17461) (Cons!17460 (h!18591 tuple2!11582) (t!24545 List!17464)) )
))
(declare-datatypes ((ListLongMap!10365 0))(
  ( (ListLongMap!10366 (toList!5198 List!17464)) )
))
(declare-fun lt!396452 () ListLongMap!10365)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50934 0))(
  ( (array!50935 (arr!24490 (Array (_ BitVec 32) (_ BitVec 64))) (size!24931 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50934)

(declare-datatypes ((ValueCell!8267 0))(
  ( (ValueCellFull!8267 (v!11183 V!28265)) (EmptyCell!8267) )
))
(declare-datatypes ((array!50936 0))(
  ( (array!50937 (arr!24491 (Array (_ BitVec 32) ValueCell!8267)) (size!24932 (_ BitVec 32))) )
))
(declare-fun lt!396451 () array!50936)

(declare-fun minValue!654 () V!28265)

(declare-fun zeroValue!654 () V!28265)

(declare-fun getCurrentListMapNoExtraKeys!3160 (array!50934 array!50936 (_ BitVec 32) (_ BitVec 32) V!28265 V!28265 (_ BitVec 32) Int) ListLongMap!10365)

(assert (=> b!876332 (= lt!396452 (getCurrentListMapNoExtraKeys!3160 _keys!868 lt!396451 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28265)

(declare-fun _values!688 () array!50936)

(assert (=> b!876332 (= lt!396451 (array!50937 (store (arr!24491 _values!688) i!612 (ValueCellFull!8267 v!557)) (size!24932 _values!688)))))

(declare-fun lt!396458 () ListLongMap!10365)

(assert (=> b!876332 (= lt!396458 (getCurrentListMapNoExtraKeys!3160 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!876333 () Bool)

(declare-fun res!595599 () Bool)

(assert (=> b!876333 (=> (not res!595599) (not e!487861))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50934 (_ BitVec 32)) Bool)

(assert (=> b!876333 (= res!595599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!876334 () Bool)

(declare-fun e!487860 () Bool)

(declare-fun tp_is_empty!17413 () Bool)

(assert (=> b!876334 (= e!487860 tp_is_empty!17413)))

(declare-fun b!876335 () Bool)

(declare-fun e!487864 () Bool)

(assert (=> b!876335 (= e!487864 tp_is_empty!17413)))

(declare-fun bm!38747 () Bool)

(declare-fun call!38751 () ListLongMap!10365)

(assert (=> bm!38747 (= call!38751 (getCurrentListMapNoExtraKeys!3160 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876336 () Bool)

(declare-fun res!595598 () Bool)

(assert (=> b!876336 (=> (not res!595598) (not e!487861))))

(declare-datatypes ((List!17465 0))(
  ( (Nil!17462) (Cons!17461 (h!18592 (_ BitVec 64)) (t!24546 List!17465)) )
))
(declare-fun arrayNoDuplicates!0 (array!50934 (_ BitVec 32) List!17465) Bool)

(assert (=> b!876336 (= res!595598 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17462))))

(declare-fun b!876337 () Bool)

(declare-fun res!595596 () Bool)

(assert (=> b!876337 (=> (not res!595596) (not e!487861))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!876337 (= res!595596 (and (= (select (arr!24490 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun res!595595 () Bool)

(assert (=> start!74454 (=> (not res!595595) (not e!487861))))

(assert (=> start!74454 (= res!595595 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24931 _keys!868))))))

(assert (=> start!74454 e!487861))

(assert (=> start!74454 tp_is_empty!17413))

(assert (=> start!74454 true))

(assert (=> start!74454 tp!53186))

(declare-fun array_inv!19290 (array!50934) Bool)

(assert (=> start!74454 (array_inv!19290 _keys!868)))

(declare-fun e!487863 () Bool)

(declare-fun array_inv!19291 (array!50936) Bool)

(assert (=> start!74454 (and (array_inv!19291 _values!688) e!487863)))

(declare-fun mapIsEmpty!27731 () Bool)

(declare-fun mapRes!27731 () Bool)

(assert (=> mapIsEmpty!27731 mapRes!27731))

(declare-fun b!876338 () Bool)

(assert (=> b!876338 (= e!487863 (and e!487860 mapRes!27731))))

(declare-fun condMapEmpty!27731 () Bool)

(declare-fun mapDefault!27731 () ValueCell!8267)

