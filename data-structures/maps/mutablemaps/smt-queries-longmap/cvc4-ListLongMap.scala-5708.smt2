; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74064 () Bool)

(assert start!74064)

(declare-fun b_free!14951 () Bool)

(declare-fun b_next!14951 () Bool)

(assert (=> start!74064 (= b_free!14951 (not b_next!14951))))

(declare-fun tp!52357 () Bool)

(declare-fun b_and!24721 () Bool)

(assert (=> start!74064 (= tp!52357 b_and!24721)))

(declare-fun b!870621 () Bool)

(declare-fun e!484807 () Bool)

(declare-fun tp_is_empty!17087 () Bool)

(assert (=> b!870621 (= e!484807 tp_is_empty!17087)))

(declare-fun b!870622 () Bool)

(declare-fun e!484806 () Bool)

(assert (=> b!870622 (= e!484806 (not true))))

(declare-datatypes ((V!27829 0))(
  ( (V!27830 (val!8591 Int)) )
))
(declare-datatypes ((ValueCell!8104 0))(
  ( (ValueCellFull!8104 (v!11012 V!27829)) (EmptyCell!8104) )
))
(declare-datatypes ((array!50306 0))(
  ( (array!50307 (arr!24180 (Array (_ BitVec 32) ValueCell!8104)) (size!24621 (_ BitVec 32))) )
))
(declare-fun lt!395191 () array!50306)

(declare-fun v!557 () V!27829)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!50308 0))(
  ( (array!50309 (arr!24181 (Array (_ BitVec 32) (_ BitVec 64))) (size!24622 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50308)

(declare-fun _values!688 () array!50306)

(declare-fun minValue!654 () V!27829)

(declare-fun zeroValue!654 () V!27829)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((tuple2!11414 0))(
  ( (tuple2!11415 (_1!5717 (_ BitVec 64)) (_2!5717 V!27829)) )
))
(declare-datatypes ((List!17270 0))(
  ( (Nil!17267) (Cons!17266 (h!18397 tuple2!11414) (t!24315 List!17270)) )
))
(declare-datatypes ((ListLongMap!10197 0))(
  ( (ListLongMap!10198 (toList!5114 List!17270)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3078 (array!50308 array!50306 (_ BitVec 32) (_ BitVec 32) V!27829 V!27829 (_ BitVec 32) Int) ListLongMap!10197)

(declare-fun +!2395 (ListLongMap!10197 tuple2!11414) ListLongMap!10197)

(assert (=> b!870622 (= (getCurrentListMapNoExtraKeys!3078 _keys!868 lt!395191 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2395 (getCurrentListMapNoExtraKeys!3078 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11415 k!854 v!557)))))

(declare-datatypes ((Unit!29840 0))(
  ( (Unit!29841) )
))
(declare-fun lt!395192 () Unit!29840)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!626 (array!50308 array!50306 (_ BitVec 32) (_ BitVec 32) V!27829 V!27829 (_ BitVec 32) (_ BitVec 64) V!27829 (_ BitVec 32) Int) Unit!29840)

(assert (=> b!870622 (= lt!395192 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!626 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!870623 () Bool)

(declare-fun res!591871 () Bool)

(declare-fun e!484808 () Bool)

(assert (=> b!870623 (=> (not res!591871) (not e!484808))))

(assert (=> b!870623 (= res!591871 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24622 _keys!868))))))

(declare-fun b!870624 () Bool)

(declare-fun res!591869 () Bool)

(assert (=> b!870624 (=> (not res!591869) (not e!484808))))

(assert (=> b!870624 (= res!591869 (and (= (select (arr!24181 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!27230 () Bool)

(declare-fun mapRes!27230 () Bool)

(declare-fun tp!52358 () Bool)

(declare-fun e!484804 () Bool)

(assert (=> mapNonEmpty!27230 (= mapRes!27230 (and tp!52358 e!484804))))

(declare-fun mapKey!27230 () (_ BitVec 32))

(declare-fun mapRest!27230 () (Array (_ BitVec 32) ValueCell!8104))

(declare-fun mapValue!27230 () ValueCell!8104)

(assert (=> mapNonEmpty!27230 (= (arr!24180 _values!688) (store mapRest!27230 mapKey!27230 mapValue!27230))))

(declare-fun res!591870 () Bool)

(assert (=> start!74064 (=> (not res!591870) (not e!484808))))

(assert (=> start!74064 (= res!591870 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24622 _keys!868))))))

(assert (=> start!74064 e!484808))

(assert (=> start!74064 tp_is_empty!17087))

(assert (=> start!74064 true))

(assert (=> start!74064 tp!52357))

(declare-fun array_inv!19068 (array!50308) Bool)

(assert (=> start!74064 (array_inv!19068 _keys!868)))

(declare-fun e!484805 () Bool)

(declare-fun array_inv!19069 (array!50306) Bool)

(assert (=> start!74064 (and (array_inv!19069 _values!688) e!484805)))

(declare-fun b!870625 () Bool)

(assert (=> b!870625 (= e!484805 (and e!484807 mapRes!27230))))

(declare-fun condMapEmpty!27230 () Bool)

(declare-fun mapDefault!27230 () ValueCell!8104)

