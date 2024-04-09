; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74368 () Bool)

(assert start!74368)

(declare-fun b_free!15103 () Bool)

(declare-fun b_next!15103 () Bool)

(assert (=> start!74368 (= b_free!15103 (not b_next!15103))))

(declare-fun tp!52985 () Bool)

(declare-fun b_and!24897 () Bool)

(assert (=> start!74368 (= tp!52985 b_and!24897)))

(declare-fun res!594576 () Bool)

(declare-fun e!487017 () Bool)

(assert (=> start!74368 (=> (not res!594576) (not e!487017))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50806 0))(
  ( (array!50807 (arr!24427 (Array (_ BitVec 32) (_ BitVec 64))) (size!24868 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50806)

(assert (=> start!74368 (= res!594576 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24868 _keys!868))))))

(assert (=> start!74368 e!487017))

(declare-fun tp_is_empty!17347 () Bool)

(assert (=> start!74368 tp_is_empty!17347))

(assert (=> start!74368 true))

(assert (=> start!74368 tp!52985))

(declare-fun array_inv!19244 (array!50806) Bool)

(assert (=> start!74368 (array_inv!19244 _keys!868)))

(declare-datatypes ((V!28177 0))(
  ( (V!28178 (val!8721 Int)) )
))
(declare-datatypes ((ValueCell!8234 0))(
  ( (ValueCellFull!8234 (v!11146 V!28177)) (EmptyCell!8234) )
))
(declare-datatypes ((array!50808 0))(
  ( (array!50809 (arr!24428 (Array (_ BitVec 32) ValueCell!8234)) (size!24869 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50808)

(declare-fun e!487016 () Bool)

(declare-fun array_inv!19245 (array!50808) Bool)

(assert (=> start!74368 (and (array_inv!19245 _values!688) e!487016)))

(declare-fun b!874724 () Bool)

(declare-fun res!594578 () Bool)

(assert (=> b!874724 (=> (not res!594578) (not e!487017))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874724 (= res!594578 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!27629 () Bool)

(declare-fun mapRes!27629 () Bool)

(declare-fun tp!52984 () Bool)

(declare-fun e!487014 () Bool)

(assert (=> mapNonEmpty!27629 (= mapRes!27629 (and tp!52984 e!487014))))

(declare-fun mapRest!27629 () (Array (_ BitVec 32) ValueCell!8234))

(declare-fun mapValue!27629 () ValueCell!8234)

(declare-fun mapKey!27629 () (_ BitVec 32))

(assert (=> mapNonEmpty!27629 (= (arr!24428 _values!688) (store mapRest!27629 mapKey!27629 mapValue!27629))))

(declare-fun b!874725 () Bool)

(assert (=> b!874725 (= e!487014 tp_is_empty!17347)))

(declare-fun b!874726 () Bool)

(declare-fun res!594581 () Bool)

(assert (=> b!874726 (=> (not res!594581) (not e!487017))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!874726 (= res!594581 (and (= (select (arr!24427 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!874727 () Bool)

(declare-fun res!594577 () Bool)

(assert (=> b!874727 (=> (not res!594577) (not e!487017))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!874727 (= res!594577 (and (= (size!24869 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24868 _keys!868) (size!24869 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!874728 () Bool)

(declare-fun res!594583 () Bool)

(assert (=> b!874728 (=> (not res!594583) (not e!487017))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50806 (_ BitVec 32)) Bool)

(assert (=> b!874728 (= res!594583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!27629 () Bool)

(assert (=> mapIsEmpty!27629 mapRes!27629))

(declare-fun b!874729 () Bool)

(declare-fun e!487018 () Bool)

(assert (=> b!874729 (= e!487018 tp_is_empty!17347)))

(declare-fun b!874730 () Bool)

(assert (=> b!874730 (= e!487017 (and (= from!1053 i!612) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!24868 _keys!868)) (bvsge (bvsub (size!24868 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (bvsub (size!24868 _keys!868) from!1053))))))

(declare-fun v!557 () V!28177)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11524 0))(
  ( (tuple2!11525 (_1!5772 (_ BitVec 64)) (_2!5772 V!28177)) )
))
(declare-datatypes ((List!17413 0))(
  ( (Nil!17410) (Cons!17409 (h!18540 tuple2!11524) (t!24462 List!17413)) )
))
(declare-datatypes ((ListLongMap!10307 0))(
  ( (ListLongMap!10308 (toList!5169 List!17413)) )
))
(declare-fun lt!395967 () ListLongMap!10307)

(declare-fun minValue!654 () V!28177)

(declare-fun zeroValue!654 () V!28177)

(declare-fun getCurrentListMapNoExtraKeys!3133 (array!50806 array!50808 (_ BitVec 32) (_ BitVec 32) V!28177 V!28177 (_ BitVec 32) Int) ListLongMap!10307)

(assert (=> b!874730 (= lt!395967 (getCurrentListMapNoExtraKeys!3133 _keys!868 (array!50809 (store (arr!24428 _values!688) i!612 (ValueCellFull!8234 v!557)) (size!24869 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395968 () ListLongMap!10307)

(assert (=> b!874730 (= lt!395968 (getCurrentListMapNoExtraKeys!3133 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!874731 () Bool)

(declare-fun res!594580 () Bool)

(assert (=> b!874731 (=> (not res!594580) (not e!487017))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874731 (= res!594580 (validKeyInArray!0 k!854))))

(declare-fun b!874732 () Bool)

(declare-fun res!594579 () Bool)

(assert (=> b!874732 (=> (not res!594579) (not e!487017))))

(declare-datatypes ((List!17414 0))(
  ( (Nil!17411) (Cons!17410 (h!18541 (_ BitVec 64)) (t!24463 List!17414)) )
))
(declare-fun arrayNoDuplicates!0 (array!50806 (_ BitVec 32) List!17414) Bool)

(assert (=> b!874732 (= res!594579 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17411))))

(declare-fun b!874733 () Bool)

(declare-fun res!594582 () Bool)

(assert (=> b!874733 (=> (not res!594582) (not e!487017))))

(assert (=> b!874733 (= res!594582 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24868 _keys!868))))))

(declare-fun b!874734 () Bool)

(assert (=> b!874734 (= e!487016 (and e!487018 mapRes!27629))))

(declare-fun condMapEmpty!27629 () Bool)

(declare-fun mapDefault!27629 () ValueCell!8234)

