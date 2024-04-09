; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74330 () Bool)

(assert start!74330)

(declare-fun b_free!15065 () Bool)

(declare-fun b_next!15065 () Bool)

(assert (=> start!74330 (= b_free!15065 (not b_next!15065))))

(declare-fun tp!52871 () Bool)

(declare-fun b_and!24859 () Bool)

(assert (=> start!74330 (= tp!52871 b_and!24859)))

(declare-fun b!874097 () Bool)

(declare-fun res!594125 () Bool)

(declare-fun e!486730 () Bool)

(assert (=> b!874097 (=> (not res!594125) (not e!486730))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874097 (= res!594125 (validKeyInArray!0 k!854))))

(declare-fun res!594121 () Bool)

(assert (=> start!74330 (=> (not res!594121) (not e!486730))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50732 0))(
  ( (array!50733 (arr!24390 (Array (_ BitVec 32) (_ BitVec 64))) (size!24831 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50732)

(assert (=> start!74330 (= res!594121 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24831 _keys!868))))))

(assert (=> start!74330 e!486730))

(declare-fun tp_is_empty!17309 () Bool)

(assert (=> start!74330 tp_is_empty!17309))

(assert (=> start!74330 true))

(assert (=> start!74330 tp!52871))

(declare-fun array_inv!19216 (array!50732) Bool)

(assert (=> start!74330 (array_inv!19216 _keys!868)))

(declare-datatypes ((V!28125 0))(
  ( (V!28126 (val!8702 Int)) )
))
(declare-datatypes ((ValueCell!8215 0))(
  ( (ValueCellFull!8215 (v!11127 V!28125)) (EmptyCell!8215) )
))
(declare-datatypes ((array!50734 0))(
  ( (array!50735 (arr!24391 (Array (_ BitVec 32) ValueCell!8215)) (size!24832 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50734)

(declare-fun e!486731 () Bool)

(declare-fun array_inv!19217 (array!50734) Bool)

(assert (=> start!74330 (and (array_inv!19217 _values!688) e!486731)))

(declare-fun b!874098 () Bool)

(declare-fun res!594127 () Bool)

(assert (=> b!874098 (=> (not res!594127) (not e!486730))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!874098 (= res!594127 (and (= (select (arr!24390 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!874099 () Bool)

(assert (=> b!874099 (= e!486730 false)))

(declare-fun v!557 () V!28125)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11496 0))(
  ( (tuple2!11497 (_1!5758 (_ BitVec 64)) (_2!5758 V!28125)) )
))
(declare-datatypes ((List!17384 0))(
  ( (Nil!17381) (Cons!17380 (h!18511 tuple2!11496) (t!24433 List!17384)) )
))
(declare-datatypes ((ListLongMap!10279 0))(
  ( (ListLongMap!10280 (toList!5155 List!17384)) )
))
(declare-fun lt!395854 () ListLongMap!10279)

(declare-fun minValue!654 () V!28125)

(declare-fun zeroValue!654 () V!28125)

(declare-fun getCurrentListMapNoExtraKeys!3119 (array!50732 array!50734 (_ BitVec 32) (_ BitVec 32) V!28125 V!28125 (_ BitVec 32) Int) ListLongMap!10279)

(assert (=> b!874099 (= lt!395854 (getCurrentListMapNoExtraKeys!3119 _keys!868 (array!50735 (store (arr!24391 _values!688) i!612 (ValueCellFull!8215 v!557)) (size!24832 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395853 () ListLongMap!10279)

(assert (=> b!874099 (= lt!395853 (getCurrentListMapNoExtraKeys!3119 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!874100 () Bool)

(declare-fun e!486732 () Bool)

(assert (=> b!874100 (= e!486732 tp_is_empty!17309)))

(declare-fun b!874101 () Bool)

(declare-fun res!594122 () Bool)

(assert (=> b!874101 (=> (not res!594122) (not e!486730))))

(assert (=> b!874101 (= res!594122 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24831 _keys!868))))))

(declare-fun b!874102 () Bool)

(declare-fun e!486733 () Bool)

(declare-fun mapRes!27572 () Bool)

(assert (=> b!874102 (= e!486731 (and e!486733 mapRes!27572))))

(declare-fun condMapEmpty!27572 () Bool)

(declare-fun mapDefault!27572 () ValueCell!8215)

