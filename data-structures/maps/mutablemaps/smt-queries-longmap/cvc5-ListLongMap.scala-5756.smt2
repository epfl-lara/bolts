; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74392 () Bool)

(assert start!74392)

(declare-fun b_free!15127 () Bool)

(declare-fun b_next!15127 () Bool)

(assert (=> start!74392 (= b_free!15127 (not b_next!15127))))

(declare-fun tp!53057 () Bool)

(declare-fun b_and!24921 () Bool)

(assert (=> start!74392 (= tp!53057 b_and!24921)))

(declare-fun res!594917 () Bool)

(declare-fun e!487279 () Bool)

(assert (=> start!74392 (=> (not res!594917) (not e!487279))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50852 0))(
  ( (array!50853 (arr!24450 (Array (_ BitVec 32) (_ BitVec 64))) (size!24891 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50852)

(assert (=> start!74392 (= res!594917 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24891 _keys!868))))))

(assert (=> start!74392 e!487279))

(declare-fun tp_is_empty!17371 () Bool)

(assert (=> start!74392 tp_is_empty!17371))

(assert (=> start!74392 true))

(assert (=> start!74392 tp!53057))

(declare-fun array_inv!19260 (array!50852) Bool)

(assert (=> start!74392 (array_inv!19260 _keys!868)))

(declare-datatypes ((V!28209 0))(
  ( (V!28210 (val!8733 Int)) )
))
(declare-datatypes ((ValueCell!8246 0))(
  ( (ValueCellFull!8246 (v!11158 V!28209)) (EmptyCell!8246) )
))
(declare-datatypes ((array!50854 0))(
  ( (array!50855 (arr!24451 (Array (_ BitVec 32) ValueCell!8246)) (size!24892 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50854)

(declare-fun e!487272 () Bool)

(declare-fun array_inv!19261 (array!50854) Bool)

(assert (=> start!74392 (and (array_inv!19261 _values!688) e!487272)))

(declare-fun b!875227 () Bool)

(declare-fun res!594921 () Bool)

(assert (=> b!875227 (=> (not res!594921) (not e!487279))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!875227 (= res!594921 (and (= (select (arr!24450 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!27665 () Bool)

(declare-fun mapRes!27665 () Bool)

(declare-fun tp!53056 () Bool)

(declare-fun e!487274 () Bool)

(assert (=> mapNonEmpty!27665 (= mapRes!27665 (and tp!53056 e!487274))))

(declare-fun mapValue!27665 () ValueCell!8246)

(declare-fun mapKey!27665 () (_ BitVec 32))

(declare-fun mapRest!27665 () (Array (_ BitVec 32) ValueCell!8246))

(assert (=> mapNonEmpty!27665 (= (arr!24451 _values!688) (store mapRest!27665 mapKey!27665 mapValue!27665))))

(declare-fun b!875228 () Bool)

(declare-fun e!487277 () Bool)

(assert (=> b!875228 (= e!487279 e!487277)))

(declare-fun res!594920 () Bool)

(assert (=> b!875228 (=> (not res!594920) (not e!487277))))

(assert (=> b!875228 (= res!594920 (= from!1053 i!612))))

(declare-datatypes ((tuple2!11544 0))(
  ( (tuple2!11545 (_1!5782 (_ BitVec 64)) (_2!5782 V!28209)) )
))
(declare-datatypes ((List!17431 0))(
  ( (Nil!17428) (Cons!17427 (h!18558 tuple2!11544) (t!24480 List!17431)) )
))
(declare-datatypes ((ListLongMap!10327 0))(
  ( (ListLongMap!10328 (toList!5179 List!17431)) )
))
(declare-fun lt!396101 () ListLongMap!10327)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!28209)

(declare-fun zeroValue!654 () V!28209)

(declare-fun lt!396100 () array!50854)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!3142 (array!50852 array!50854 (_ BitVec 32) (_ BitVec 32) V!28209 V!28209 (_ BitVec 32) Int) ListLongMap!10327)

(assert (=> b!875228 (= lt!396101 (getCurrentListMapNoExtraKeys!3142 _keys!868 lt!396100 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28209)

(assert (=> b!875228 (= lt!396100 (array!50855 (store (arr!24451 _values!688) i!612 (ValueCellFull!8246 v!557)) (size!24892 _values!688)))))

(declare-fun lt!396103 () ListLongMap!10327)

(assert (=> b!875228 (= lt!396103 (getCurrentListMapNoExtraKeys!3142 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!875229 () Bool)

(declare-fun e!487273 () Bool)

(assert (=> b!875229 (= e!487277 (not e!487273))))

(declare-fun res!594914 () Bool)

(assert (=> b!875229 (=> res!594914 e!487273)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!875229 (= res!594914 (not (validKeyInArray!0 (select (arr!24450 _keys!868) from!1053))))))

(declare-fun e!487275 () Bool)

(assert (=> b!875229 e!487275))

(declare-fun c!92422 () Bool)

(assert (=> b!875229 (= c!92422 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29900 0))(
  ( (Unit!29901) )
))
(declare-fun lt!396099 () Unit!29900)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!654 (array!50852 array!50854 (_ BitVec 32) (_ BitVec 32) V!28209 V!28209 (_ BitVec 32) (_ BitVec 64) V!28209 (_ BitVec 32) Int) Unit!29900)

(assert (=> b!875229 (= lt!396099 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!654 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875230 () Bool)

(assert (=> b!875230 (= e!487273 (bvslt from!1053 (size!24891 _keys!868)))))

(declare-fun lt!396102 () ListLongMap!10327)

(assert (=> b!875230 (= lt!396102 (getCurrentListMapNoExtraKeys!3142 _keys!868 lt!396100 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875231 () Bool)

(assert (=> b!875231 (= e!487274 tp_is_empty!17371)))

(declare-fun b!875232 () Bool)

(declare-fun e!487278 () Bool)

(assert (=> b!875232 (= e!487278 tp_is_empty!17371)))

(declare-fun mapIsEmpty!27665 () Bool)

(assert (=> mapIsEmpty!27665 mapRes!27665))

(declare-fun b!875233 () Bool)

(declare-fun res!594922 () Bool)

(assert (=> b!875233 (=> (not res!594922) (not e!487279))))

(declare-datatypes ((List!17432 0))(
  ( (Nil!17429) (Cons!17428 (h!18559 (_ BitVec 64)) (t!24481 List!17432)) )
))
(declare-fun arrayNoDuplicates!0 (array!50852 (_ BitVec 32) List!17432) Bool)

(assert (=> b!875233 (= res!594922 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17429))))

(declare-fun b!875234 () Bool)

(declare-fun res!594919 () Bool)

(assert (=> b!875234 (=> (not res!594919) (not e!487279))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50852 (_ BitVec 32)) Bool)

(assert (=> b!875234 (= res!594919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!875235 () Bool)

(declare-fun res!594918 () Bool)

(assert (=> b!875235 (=> (not res!594918) (not e!487279))))

(assert (=> b!875235 (= res!594918 (validKeyInArray!0 k!854))))

(declare-fun b!875236 () Bool)

(declare-fun res!594915 () Bool)

(assert (=> b!875236 (=> (not res!594915) (not e!487279))))

(assert (=> b!875236 (= res!594915 (and (= (size!24892 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24891 _keys!868) (size!24892 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!875237 () Bool)

(assert (=> b!875237 (= e!487272 (and e!487278 mapRes!27665))))

(declare-fun condMapEmpty!27665 () Bool)

(declare-fun mapDefault!27665 () ValueCell!8246)

