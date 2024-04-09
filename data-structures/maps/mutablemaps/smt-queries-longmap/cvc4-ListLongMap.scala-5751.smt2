; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74366 () Bool)

(assert start!74366)

(declare-fun b_free!15101 () Bool)

(declare-fun b_next!15101 () Bool)

(assert (=> start!74366 (= b_free!15101 (not b_next!15101))))

(declare-fun tp!52978 () Bool)

(declare-fun b_and!24895 () Bool)

(assert (=> start!74366 (= tp!52978 b_and!24895)))

(declare-fun b!874691 () Bool)

(declare-fun res!594553 () Bool)

(declare-fun e!487003 () Bool)

(assert (=> b!874691 (=> (not res!594553) (not e!487003))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874691 (= res!594553 (validKeyInArray!0 k!854))))

(declare-fun res!594559 () Bool)

(assert (=> start!74366 (=> (not res!594559) (not e!487003))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50802 0))(
  ( (array!50803 (arr!24425 (Array (_ BitVec 32) (_ BitVec 64))) (size!24866 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50802)

(assert (=> start!74366 (= res!594559 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24866 _keys!868))))))

(assert (=> start!74366 e!487003))

(declare-fun tp_is_empty!17345 () Bool)

(assert (=> start!74366 tp_is_empty!17345))

(assert (=> start!74366 true))

(assert (=> start!74366 tp!52978))

(declare-fun array_inv!19242 (array!50802) Bool)

(assert (=> start!74366 (array_inv!19242 _keys!868)))

(declare-datatypes ((V!28173 0))(
  ( (V!28174 (val!8720 Int)) )
))
(declare-datatypes ((ValueCell!8233 0))(
  ( (ValueCellFull!8233 (v!11145 V!28173)) (EmptyCell!8233) )
))
(declare-datatypes ((array!50804 0))(
  ( (array!50805 (arr!24426 (Array (_ BitVec 32) ValueCell!8233)) (size!24867 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50804)

(declare-fun e!487001 () Bool)

(declare-fun array_inv!19243 (array!50804) Bool)

(assert (=> start!74366 (and (array_inv!19243 _values!688) e!487001)))

(declare-fun mapNonEmpty!27626 () Bool)

(declare-fun mapRes!27626 () Bool)

(declare-fun tp!52979 () Bool)

(declare-fun e!486999 () Bool)

(assert (=> mapNonEmpty!27626 (= mapRes!27626 (and tp!52979 e!486999))))

(declare-fun mapValue!27626 () ValueCell!8233)

(declare-fun mapRest!27626 () (Array (_ BitVec 32) ValueCell!8233))

(declare-fun mapKey!27626 () (_ BitVec 32))

(assert (=> mapNonEmpty!27626 (= (arr!24426 _values!688) (store mapRest!27626 mapKey!27626 mapValue!27626))))

(declare-fun b!874692 () Bool)

(assert (=> b!874692 (= e!486999 tp_is_empty!17345)))

(declare-fun mapIsEmpty!27626 () Bool)

(assert (=> mapIsEmpty!27626 mapRes!27626))

(declare-fun b!874693 () Bool)

(declare-fun res!594555 () Bool)

(assert (=> b!874693 (=> (not res!594555) (not e!487003))))

(declare-datatypes ((List!17411 0))(
  ( (Nil!17408) (Cons!17407 (h!18538 (_ BitVec 64)) (t!24460 List!17411)) )
))
(declare-fun arrayNoDuplicates!0 (array!50802 (_ BitVec 32) List!17411) Bool)

(assert (=> b!874693 (= res!594555 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17408))))

(declare-fun b!874694 () Bool)

(declare-fun res!594557 () Bool)

(assert (=> b!874694 (=> (not res!594557) (not e!487003))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874694 (= res!594557 (validMask!0 mask!1196))))

(declare-fun b!874695 () Bool)

(assert (=> b!874695 (= e!487003 false)))

(declare-fun v!557 () V!28173)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11522 0))(
  ( (tuple2!11523 (_1!5771 (_ BitVec 64)) (_2!5771 V!28173)) )
))
(declare-datatypes ((List!17412 0))(
  ( (Nil!17409) (Cons!17408 (h!18539 tuple2!11522) (t!24461 List!17412)) )
))
(declare-datatypes ((ListLongMap!10305 0))(
  ( (ListLongMap!10306 (toList!5168 List!17412)) )
))
(declare-fun lt!395962 () ListLongMap!10305)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!28173)

(declare-fun zeroValue!654 () V!28173)

(declare-fun getCurrentListMapNoExtraKeys!3132 (array!50802 array!50804 (_ BitVec 32) (_ BitVec 32) V!28173 V!28173 (_ BitVec 32) Int) ListLongMap!10305)

(assert (=> b!874695 (= lt!395962 (getCurrentListMapNoExtraKeys!3132 _keys!868 (array!50805 (store (arr!24426 _values!688) i!612 (ValueCellFull!8233 v!557)) (size!24867 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395961 () ListLongMap!10305)

(assert (=> b!874695 (= lt!395961 (getCurrentListMapNoExtraKeys!3132 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!874696 () Bool)

(declare-fun res!594556 () Bool)

(assert (=> b!874696 (=> (not res!594556) (not e!487003))))

(assert (=> b!874696 (= res!594556 (and (= (size!24867 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24866 _keys!868) (size!24867 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!874697 () Bool)

(declare-fun res!594554 () Bool)

(assert (=> b!874697 (=> (not res!594554) (not e!487003))))

(assert (=> b!874697 (= res!594554 (and (= (select (arr!24425 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!874698 () Bool)

(declare-fun e!487000 () Bool)

(assert (=> b!874698 (= e!487001 (and e!487000 mapRes!27626))))

(declare-fun condMapEmpty!27626 () Bool)

(declare-fun mapDefault!27626 () ValueCell!8233)

