; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74446 () Bool)

(assert start!74446)

(declare-fun b_free!15161 () Bool)

(declare-fun b_next!15161 () Bool)

(assert (=> start!74446 (= b_free!15161 (not b_next!15161))))

(declare-fun tp!53162 () Bool)

(declare-fun b_and!24993 () Bool)

(assert (=> start!74446 (= tp!53162 b_and!24993)))

(declare-fun b!876144 () Bool)

(declare-fun res!595482 () Bool)

(declare-fun e!487768 () Bool)

(assert (=> b!876144 (=> (not res!595482) (not e!487768))))

(declare-datatypes ((array!50918 0))(
  ( (array!50919 (arr!24482 (Array (_ BitVec 32) (_ BitVec 64))) (size!24923 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50918)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50918 (_ BitVec 32)) Bool)

(assert (=> b!876144 (= res!595482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!876145 () Bool)

(declare-fun e!487763 () Bool)

(assert (=> b!876145 (= e!487768 e!487763)))

(declare-fun res!595481 () Bool)

(assert (=> b!876145 (=> (not res!595481) (not e!487763))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!876145 (= res!595481 (= from!1053 i!612))))

(declare-datatypes ((V!28253 0))(
  ( (V!28254 (val!8750 Int)) )
))
(declare-datatypes ((ValueCell!8263 0))(
  ( (ValueCellFull!8263 (v!11179 V!28253)) (EmptyCell!8263) )
))
(declare-datatypes ((array!50920 0))(
  ( (array!50921 (arr!24483 (Array (_ BitVec 32) ValueCell!8263)) (size!24924 (_ BitVec 32))) )
))
(declare-fun lt!396389 () array!50920)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!11574 0))(
  ( (tuple2!11575 (_1!5797 (_ BitVec 64)) (_2!5797 V!28253)) )
))
(declare-datatypes ((List!17457 0))(
  ( (Nil!17454) (Cons!17453 (h!18584 tuple2!11574) (t!24530 List!17457)) )
))
(declare-datatypes ((ListLongMap!10357 0))(
  ( (ListLongMap!10358 (toList!5194 List!17457)) )
))
(declare-fun lt!396392 () ListLongMap!10357)

(declare-fun minValue!654 () V!28253)

(declare-fun zeroValue!654 () V!28253)

(declare-fun getCurrentListMapNoExtraKeys!3156 (array!50918 array!50920 (_ BitVec 32) (_ BitVec 32) V!28253 V!28253 (_ BitVec 32) Int) ListLongMap!10357)

(assert (=> b!876145 (= lt!396392 (getCurrentListMapNoExtraKeys!3156 _keys!868 lt!396389 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28253)

(declare-fun _values!688 () array!50920)

(assert (=> b!876145 (= lt!396389 (array!50921 (store (arr!24483 _values!688) i!612 (ValueCellFull!8263 v!557)) (size!24924 _values!688)))))

(declare-fun lt!396391 () ListLongMap!10357)

(assert (=> b!876145 (= lt!396391 (getCurrentListMapNoExtraKeys!3156 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!876146 () Bool)

(declare-fun res!595477 () Bool)

(assert (=> b!876146 (=> (not res!595477) (not e!487768))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!876146 (= res!595477 (and (= (select (arr!24482 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!876147 () Bool)

(declare-fun res!595478 () Bool)

(assert (=> b!876147 (=> (not res!595478) (not e!487768))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!876147 (= res!595478 (validMask!0 mask!1196))))

(declare-fun b!876148 () Bool)

(declare-fun res!595474 () Bool)

(assert (=> b!876148 (=> (not res!595474) (not e!487768))))

(declare-datatypes ((List!17458 0))(
  ( (Nil!17455) (Cons!17454 (h!18585 (_ BitVec 64)) (t!24531 List!17458)) )
))
(declare-fun arrayNoDuplicates!0 (array!50918 (_ BitVec 32) List!17458) Bool)

(assert (=> b!876148 (= res!595474 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17455))))

(declare-fun b!876149 () Bool)

(declare-fun call!38727 () ListLongMap!10357)

(declare-fun call!38726 () ListLongMap!10357)

(declare-fun e!487769 () Bool)

(declare-fun +!2431 (ListLongMap!10357 tuple2!11574) ListLongMap!10357)

(assert (=> b!876149 (= e!487769 (= call!38727 (+!2431 call!38726 (tuple2!11575 k!854 v!557))))))

(declare-fun bm!38723 () Bool)

(assert (=> bm!38723 (= call!38726 (getCurrentListMapNoExtraKeys!3156 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876150 () Bool)

(declare-fun e!487765 () Bool)

(declare-fun tp_is_empty!17405 () Bool)

(assert (=> b!876150 (= e!487765 tp_is_empty!17405)))

(declare-fun b!876151 () Bool)

(declare-fun e!487764 () Bool)

(assert (=> b!876151 (= e!487764 (bvslt from!1053 (size!24924 _values!688)))))

(declare-fun get!12888 (ValueCell!8263 V!28253) V!28253)

(declare-fun dynLambda!1214 (Int (_ BitVec 64)) V!28253)

(assert (=> b!876151 (= lt!396392 (+!2431 (getCurrentListMapNoExtraKeys!3156 _keys!868 lt!396389 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11575 (select (arr!24482 _keys!868) from!1053) (get!12888 (select (arr!24483 lt!396389) from!1053) (dynLambda!1214 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!876152 () Bool)

(assert (=> b!876152 (= e!487763 (not e!487764))))

(declare-fun res!595479 () Bool)

(assert (=> b!876152 (=> res!595479 e!487764)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!876152 (= res!595479 (not (validKeyInArray!0 (select (arr!24482 _keys!868) from!1053))))))

(assert (=> b!876152 e!487769))

(declare-fun c!92509 () Bool)

(assert (=> b!876152 (= c!92509 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29924 0))(
  ( (Unit!29925) )
))
(declare-fun lt!396390 () Unit!29924)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!666 (array!50918 array!50920 (_ BitVec 32) (_ BitVec 32) V!28253 V!28253 (_ BitVec 32) (_ BitVec 64) V!28253 (_ BitVec 32) Int) Unit!29924)

(assert (=> b!876152 (= lt!396390 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!666 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876153 () Bool)

(declare-fun res!595475 () Bool)

(assert (=> b!876153 (=> (not res!595475) (not e!487768))))

(assert (=> b!876153 (= res!595475 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24923 _keys!868))))))

(declare-fun res!595480 () Bool)

(assert (=> start!74446 (=> (not res!595480) (not e!487768))))

(assert (=> start!74446 (= res!595480 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24923 _keys!868))))))

(assert (=> start!74446 e!487768))

(assert (=> start!74446 tp_is_empty!17405))

(assert (=> start!74446 true))

(assert (=> start!74446 tp!53162))

(declare-fun array_inv!19282 (array!50918) Bool)

(assert (=> start!74446 (array_inv!19282 _keys!868)))

(declare-fun e!487766 () Bool)

(declare-fun array_inv!19283 (array!50920) Bool)

(assert (=> start!74446 (and (array_inv!19283 _values!688) e!487766)))

(declare-fun mapIsEmpty!27719 () Bool)

(declare-fun mapRes!27719 () Bool)

(assert (=> mapIsEmpty!27719 mapRes!27719))

(declare-fun b!876154 () Bool)

(declare-fun e!487762 () Bool)

(assert (=> b!876154 (= e!487762 tp_is_empty!17405)))

(declare-fun b!876155 () Bool)

(declare-fun res!595476 () Bool)

(assert (=> b!876155 (=> (not res!595476) (not e!487768))))

(assert (=> b!876155 (= res!595476 (and (= (size!24924 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24923 _keys!868) (size!24924 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!876156 () Bool)

(assert (=> b!876156 (= e!487766 (and e!487762 mapRes!27719))))

(declare-fun condMapEmpty!27719 () Bool)

(declare-fun mapDefault!27719 () ValueCell!8263)

