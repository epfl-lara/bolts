; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74344 () Bool)

(assert start!74344)

(declare-fun b_free!15079 () Bool)

(declare-fun b_next!15079 () Bool)

(assert (=> start!74344 (= b_free!15079 (not b_next!15079))))

(declare-fun tp!52912 () Bool)

(declare-fun b_and!24873 () Bool)

(assert (=> start!74344 (= tp!52912 b_and!24873)))

(declare-fun b!874328 () Bool)

(declare-fun res!594292 () Bool)

(declare-fun e!486838 () Bool)

(assert (=> b!874328 (=> (not res!594292) (not e!486838))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874328 (= res!594292 (validMask!0 mask!1196))))

(declare-fun b!874329 () Bool)

(declare-fun res!594294 () Bool)

(assert (=> b!874329 (=> (not res!594294) (not e!486838))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!50758 0))(
  ( (array!50759 (arr!24403 (Array (_ BitVec 32) (_ BitVec 64))) (size!24844 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50758)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!874329 (= res!594294 (and (= (select (arr!24403 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun res!594291 () Bool)

(assert (=> start!74344 (=> (not res!594291) (not e!486838))))

(assert (=> start!74344 (= res!594291 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24844 _keys!868))))))

(assert (=> start!74344 e!486838))

(declare-fun tp_is_empty!17323 () Bool)

(assert (=> start!74344 tp_is_empty!17323))

(assert (=> start!74344 true))

(assert (=> start!74344 tp!52912))

(declare-fun array_inv!19226 (array!50758) Bool)

(assert (=> start!74344 (array_inv!19226 _keys!868)))

(declare-datatypes ((V!28145 0))(
  ( (V!28146 (val!8709 Int)) )
))
(declare-datatypes ((ValueCell!8222 0))(
  ( (ValueCellFull!8222 (v!11134 V!28145)) (EmptyCell!8222) )
))
(declare-datatypes ((array!50760 0))(
  ( (array!50761 (arr!24404 (Array (_ BitVec 32) ValueCell!8222)) (size!24845 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50760)

(declare-fun e!486835 () Bool)

(declare-fun array_inv!19227 (array!50760) Bool)

(assert (=> start!74344 (and (array_inv!19227 _values!688) e!486835)))

(declare-fun mapNonEmpty!27593 () Bool)

(declare-fun mapRes!27593 () Bool)

(declare-fun tp!52913 () Bool)

(declare-fun e!486836 () Bool)

(assert (=> mapNonEmpty!27593 (= mapRes!27593 (and tp!52913 e!486836))))

(declare-fun mapRest!27593 () (Array (_ BitVec 32) ValueCell!8222))

(declare-fun mapKey!27593 () (_ BitVec 32))

(declare-fun mapValue!27593 () ValueCell!8222)

(assert (=> mapNonEmpty!27593 (= (arr!24404 _values!688) (store mapRest!27593 mapKey!27593 mapValue!27593))))

(declare-fun b!874330 () Bool)

(declare-fun res!594289 () Bool)

(assert (=> b!874330 (=> (not res!594289) (not e!486838))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!874330 (= res!594289 (and (= (size!24845 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24844 _keys!868) (size!24845 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!874331 () Bool)

(declare-fun res!594295 () Bool)

(assert (=> b!874331 (=> (not res!594295) (not e!486838))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50758 (_ BitVec 32)) Bool)

(assert (=> b!874331 (= res!594295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!874332 () Bool)

(declare-fun res!594293 () Bool)

(assert (=> b!874332 (=> (not res!594293) (not e!486838))))

(assert (=> b!874332 (= res!594293 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24844 _keys!868))))))

(declare-fun b!874333 () Bool)

(declare-fun e!486834 () Bool)

(assert (=> b!874333 (= e!486834 tp_is_empty!17323)))

(declare-fun mapIsEmpty!27593 () Bool)

(assert (=> mapIsEmpty!27593 mapRes!27593))

(declare-fun b!874334 () Bool)

(declare-fun res!594290 () Bool)

(assert (=> b!874334 (=> (not res!594290) (not e!486838))))

(declare-datatypes ((List!17393 0))(
  ( (Nil!17390) (Cons!17389 (h!18520 (_ BitVec 64)) (t!24442 List!17393)) )
))
(declare-fun arrayNoDuplicates!0 (array!50758 (_ BitVec 32) List!17393) Bool)

(assert (=> b!874334 (= res!594290 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17390))))

(declare-fun b!874335 () Bool)

(assert (=> b!874335 (= e!486836 tp_is_empty!17323)))

(declare-fun b!874336 () Bool)

(assert (=> b!874336 (= e!486838 false)))

(declare-fun v!557 () V!28145)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11504 0))(
  ( (tuple2!11505 (_1!5762 (_ BitVec 64)) (_2!5762 V!28145)) )
))
(declare-datatypes ((List!17394 0))(
  ( (Nil!17391) (Cons!17390 (h!18521 tuple2!11504) (t!24443 List!17394)) )
))
(declare-datatypes ((ListLongMap!10287 0))(
  ( (ListLongMap!10288 (toList!5159 List!17394)) )
))
(declare-fun lt!395895 () ListLongMap!10287)

(declare-fun minValue!654 () V!28145)

(declare-fun zeroValue!654 () V!28145)

(declare-fun getCurrentListMapNoExtraKeys!3123 (array!50758 array!50760 (_ BitVec 32) (_ BitVec 32) V!28145 V!28145 (_ BitVec 32) Int) ListLongMap!10287)

(assert (=> b!874336 (= lt!395895 (getCurrentListMapNoExtraKeys!3123 _keys!868 (array!50761 (store (arr!24404 _values!688) i!612 (ValueCellFull!8222 v!557)) (size!24845 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395896 () ListLongMap!10287)

(assert (=> b!874336 (= lt!395896 (getCurrentListMapNoExtraKeys!3123 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!874337 () Bool)

(declare-fun res!594288 () Bool)

(assert (=> b!874337 (=> (not res!594288) (not e!486838))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874337 (= res!594288 (validKeyInArray!0 k!854))))

(declare-fun b!874338 () Bool)

(assert (=> b!874338 (= e!486835 (and e!486834 mapRes!27593))))

(declare-fun condMapEmpty!27593 () Bool)

(declare-fun mapDefault!27593 () ValueCell!8222)

