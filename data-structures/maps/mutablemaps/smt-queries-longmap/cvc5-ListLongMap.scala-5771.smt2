; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74556 () Bool)

(assert start!74556)

(declare-fun b_free!15217 () Bool)

(declare-fun b_next!15217 () Bool)

(assert (=> start!74556 (= b_free!15217 (not b_next!15217))))

(declare-fun tp!53333 () Bool)

(declare-fun b_and!25111 () Bool)

(assert (=> start!74556 (= tp!53333 b_and!25111)))

(declare-fun b!877766 () Bool)

(declare-fun res!596416 () Bool)

(declare-fun e!488609 () Bool)

(assert (=> b!877766 (=> (not res!596416) (not e!488609))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!51032 0))(
  ( (array!51033 (arr!24538 (Array (_ BitVec 32) (_ BitVec 64))) (size!24979 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51032)

(assert (=> b!877766 (= res!596416 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24979 _keys!868))))))

(declare-fun mapIsEmpty!27807 () Bool)

(declare-fun mapRes!27807 () Bool)

(assert (=> mapIsEmpty!27807 mapRes!27807))

(declare-fun b!877768 () Bool)

(declare-fun e!488612 () Bool)

(declare-fun tp_is_empty!17461 () Bool)

(assert (=> b!877768 (= e!488612 tp_is_empty!17461)))

(declare-fun mapNonEmpty!27807 () Bool)

(declare-fun tp!53334 () Bool)

(declare-fun e!488610 () Bool)

(assert (=> mapNonEmpty!27807 (= mapRes!27807 (and tp!53334 e!488610))))

(declare-datatypes ((V!28329 0))(
  ( (V!28330 (val!8778 Int)) )
))
(declare-datatypes ((ValueCell!8291 0))(
  ( (ValueCellFull!8291 (v!11214 V!28329)) (EmptyCell!8291) )
))
(declare-fun mapValue!27807 () ValueCell!8291)

(declare-fun mapKey!27807 () (_ BitVec 32))

(declare-fun mapRest!27807 () (Array (_ BitVec 32) ValueCell!8291))

(declare-datatypes ((array!51034 0))(
  ( (array!51035 (arr!24539 (Array (_ BitVec 32) ValueCell!8291)) (size!24980 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51034)

(assert (=> mapNonEmpty!27807 (= (arr!24539 _values!688) (store mapRest!27807 mapKey!27807 mapValue!27807))))

(declare-fun b!877769 () Bool)

(assert (=> b!877769 (= e!488610 tp_is_empty!17461)))

(declare-fun b!877770 () Bool)

(declare-fun res!596419 () Bool)

(assert (=> b!877770 (=> (not res!596419) (not e!488609))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!877770 (= res!596419 (validMask!0 mask!1196))))

(declare-fun b!877771 () Bool)

(declare-fun res!596414 () Bool)

(assert (=> b!877771 (=> (not res!596414) (not e!488609))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!877771 (= res!596414 (and (= (select (arr!24538 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!877772 () Bool)

(assert (=> b!877772 (= e!488609 false)))

(declare-datatypes ((tuple2!11626 0))(
  ( (tuple2!11627 (_1!5823 (_ BitVec 64)) (_2!5823 V!28329)) )
))
(declare-datatypes ((List!17507 0))(
  ( (Nil!17504) (Cons!17503 (h!18634 tuple2!11626) (t!24604 List!17507)) )
))
(declare-datatypes ((ListLongMap!10409 0))(
  ( (ListLongMap!10410 (toList!5220 List!17507)) )
))
(declare-fun lt!397105 () ListLongMap!10409)

(declare-fun v!557 () V!28329)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!28329)

(declare-fun zeroValue!654 () V!28329)

(declare-fun getCurrentListMapNoExtraKeys!3182 (array!51032 array!51034 (_ BitVec 32) (_ BitVec 32) V!28329 V!28329 (_ BitVec 32) Int) ListLongMap!10409)

(assert (=> b!877772 (= lt!397105 (getCurrentListMapNoExtraKeys!3182 _keys!868 (array!51035 (store (arr!24539 _values!688) i!612 (ValueCellFull!8291 v!557)) (size!24980 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397106 () ListLongMap!10409)

(assert (=> b!877772 (= lt!397106 (getCurrentListMapNoExtraKeys!3182 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!877773 () Bool)

(declare-fun res!596420 () Bool)

(assert (=> b!877773 (=> (not res!596420) (not e!488609))))

(declare-datatypes ((List!17508 0))(
  ( (Nil!17505) (Cons!17504 (h!18635 (_ BitVec 64)) (t!24605 List!17508)) )
))
(declare-fun arrayNoDuplicates!0 (array!51032 (_ BitVec 32) List!17508) Bool)

(assert (=> b!877773 (= res!596420 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17505))))

(declare-fun b!877774 () Bool)

(declare-fun res!596415 () Bool)

(assert (=> b!877774 (=> (not res!596415) (not e!488609))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51032 (_ BitVec 32)) Bool)

(assert (=> b!877774 (= res!596415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!877775 () Bool)

(declare-fun res!596418 () Bool)

(assert (=> b!877775 (=> (not res!596418) (not e!488609))))

(assert (=> b!877775 (= res!596418 (and (= (size!24980 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24979 _keys!868) (size!24980 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!877776 () Bool)

(declare-fun e!488613 () Bool)

(assert (=> b!877776 (= e!488613 (and e!488612 mapRes!27807))))

(declare-fun condMapEmpty!27807 () Bool)

(declare-fun mapDefault!27807 () ValueCell!8291)

