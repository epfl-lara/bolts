; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73892 () Bool)

(assert start!73892)

(declare-fun b_free!14779 () Bool)

(declare-fun b_next!14779 () Bool)

(assert (=> start!73892 (= b_free!14779 (not b_next!14779))))

(declare-fun tp!51841 () Bool)

(declare-fun b_and!24549 () Bool)

(assert (=> start!73892 (= tp!51841 b_and!24549)))

(declare-fun b!867525 () Bool)

(declare-fun res!589551 () Bool)

(declare-fun e!483261 () Bool)

(assert (=> b!867525 (=> (not res!589551) (not e!483261))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49968 0))(
  ( (array!49969 (arr!24011 (Array (_ BitVec 32) (_ BitVec 64))) (size!24452 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49968)

(assert (=> b!867525 (= res!589551 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24452 _keys!868))))))

(declare-fun b!867526 () Bool)

(declare-fun res!589550 () Bool)

(assert (=> b!867526 (=> (not res!589550) (not e!483261))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!867526 (= res!589550 (validKeyInArray!0 k!854))))

(declare-fun b!867527 () Bool)

(declare-fun e!483260 () Bool)

(declare-fun tp_is_empty!16915 () Bool)

(assert (=> b!867527 (= e!483260 tp_is_empty!16915)))

(declare-fun b!867528 () Bool)

(declare-fun res!589543 () Bool)

(assert (=> b!867528 (=> (not res!589543) (not e!483261))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!27601 0))(
  ( (V!27602 (val!8505 Int)) )
))
(declare-datatypes ((ValueCell!8018 0))(
  ( (ValueCellFull!8018 (v!10926 V!27601)) (EmptyCell!8018) )
))
(declare-datatypes ((array!49970 0))(
  ( (array!49971 (arr!24012 (Array (_ BitVec 32) ValueCell!8018)) (size!24453 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49970)

(assert (=> b!867528 (= res!589543 (and (= (size!24453 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24452 _keys!868) (size!24453 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!867530 () Bool)

(declare-fun res!589546 () Bool)

(assert (=> b!867530 (=> (not res!589546) (not e!483261))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!867530 (= res!589546 (and (= (select (arr!24011 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!867531 () Bool)

(declare-fun e!483257 () Bool)

(assert (=> b!867531 (= e!483261 e!483257)))

(declare-fun res!589548 () Bool)

(assert (=> b!867531 (=> (not res!589548) (not e!483257))))

(assert (=> b!867531 (= res!589548 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11290 0))(
  ( (tuple2!11291 (_1!5655 (_ BitVec 64)) (_2!5655 V!27601)) )
))
(declare-datatypes ((List!17151 0))(
  ( (Nil!17148) (Cons!17147 (h!18278 tuple2!11290) (t!24196 List!17151)) )
))
(declare-datatypes ((ListLongMap!10073 0))(
  ( (ListLongMap!10074 (toList!5052 List!17151)) )
))
(declare-fun lt!394160 () ListLongMap!10073)

(declare-fun minValue!654 () V!27601)

(declare-fun zeroValue!654 () V!27601)

(declare-fun lt!394161 () array!49970)

(declare-fun getCurrentListMapNoExtraKeys!3016 (array!49968 array!49970 (_ BitVec 32) (_ BitVec 32) V!27601 V!27601 (_ BitVec 32) Int) ListLongMap!10073)

(assert (=> b!867531 (= lt!394160 (getCurrentListMapNoExtraKeys!3016 _keys!868 lt!394161 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27601)

(assert (=> b!867531 (= lt!394161 (array!49971 (store (arr!24012 _values!688) i!612 (ValueCellFull!8018 v!557)) (size!24453 _values!688)))))

(declare-fun lt!394159 () ListLongMap!10073)

(assert (=> b!867531 (= lt!394159 (getCurrentListMapNoExtraKeys!3016 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!26972 () Bool)

(declare-fun mapRes!26972 () Bool)

(assert (=> mapIsEmpty!26972 mapRes!26972))

(declare-fun mapNonEmpty!26972 () Bool)

(declare-fun tp!51842 () Bool)

(assert (=> mapNonEmpty!26972 (= mapRes!26972 (and tp!51842 e!483260))))

(declare-fun mapRest!26972 () (Array (_ BitVec 32) ValueCell!8018))

(declare-fun mapKey!26972 () (_ BitVec 32))

(declare-fun mapValue!26972 () ValueCell!8018)

(assert (=> mapNonEmpty!26972 (= (arr!24012 _values!688) (store mapRest!26972 mapKey!26972 mapValue!26972))))

(declare-fun b!867532 () Bool)

(declare-fun e!483258 () Bool)

(declare-fun e!483256 () Bool)

(assert (=> b!867532 (= e!483258 (and e!483256 mapRes!26972))))

(declare-fun condMapEmpty!26972 () Bool)

(declare-fun mapDefault!26972 () ValueCell!8018)

