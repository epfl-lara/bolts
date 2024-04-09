; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73998 () Bool)

(assert start!73998)

(declare-fun b_free!14885 () Bool)

(declare-fun b_next!14885 () Bool)

(assert (=> start!73998 (= b_free!14885 (not b_next!14885))))

(declare-fun tp!52159 () Bool)

(declare-fun b_and!24655 () Bool)

(assert (=> start!73998 (= tp!52159 b_and!24655)))

(declare-fun b!869433 () Bool)

(declare-fun e!484212 () Bool)

(declare-fun tp_is_empty!17021 () Bool)

(assert (=> b!869433 (= e!484212 tp_is_empty!17021)))

(declare-fun b!869434 () Bool)

(declare-fun res!590974 () Bool)

(declare-fun e!484215 () Bool)

(assert (=> b!869434 (=> (not res!590974) (not e!484215))))

(declare-datatypes ((array!50174 0))(
  ( (array!50175 (arr!24114 (Array (_ BitVec 32) (_ BitVec 64))) (size!24555 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50174)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50174 (_ BitVec 32)) Bool)

(assert (=> b!869434 (= res!590974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!590979 () Bool)

(assert (=> start!73998 (=> (not res!590979) (not e!484215))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73998 (= res!590979 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24555 _keys!868))))))

(assert (=> start!73998 e!484215))

(assert (=> start!73998 tp_is_empty!17021))

(assert (=> start!73998 true))

(assert (=> start!73998 tp!52159))

(declare-fun array_inv!19020 (array!50174) Bool)

(assert (=> start!73998 (array_inv!19020 _keys!868)))

(declare-datatypes ((V!27741 0))(
  ( (V!27742 (val!8558 Int)) )
))
(declare-datatypes ((ValueCell!8071 0))(
  ( (ValueCellFull!8071 (v!10979 V!27741)) (EmptyCell!8071) )
))
(declare-datatypes ((array!50176 0))(
  ( (array!50177 (arr!24115 (Array (_ BitVec 32) ValueCell!8071)) (size!24556 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50176)

(declare-fun e!484214 () Bool)

(declare-fun array_inv!19021 (array!50176) Bool)

(assert (=> start!73998 (and (array_inv!19021 _values!688) e!484214)))

(declare-fun b!869435 () Bool)

(declare-fun res!590982 () Bool)

(assert (=> b!869435 (=> (not res!590982) (not e!484215))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!869435 (= res!590982 (and (= (select (arr!24114 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!869436 () Bool)

(declare-fun res!590981 () Bool)

(assert (=> b!869436 (=> (not res!590981) (not e!484215))))

(declare-datatypes ((List!17222 0))(
  ( (Nil!17219) (Cons!17218 (h!18349 (_ BitVec 64)) (t!24267 List!17222)) )
))
(declare-fun arrayNoDuplicates!0 (array!50174 (_ BitVec 32) List!17222) Bool)

(assert (=> b!869436 (= res!590981 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17219))))

(declare-fun b!869437 () Bool)

(declare-fun res!590975 () Bool)

(assert (=> b!869437 (=> (not res!590975) (not e!484215))))

(assert (=> b!869437 (= res!590975 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24555 _keys!868))))))

(declare-fun b!869438 () Bool)

(declare-fun e!484211 () Bool)

(assert (=> b!869438 (= e!484211 tp_is_empty!17021)))

(declare-fun b!869439 () Bool)

(declare-fun e!484210 () Bool)

(assert (=> b!869439 (= e!484210 (not true))))

(declare-fun lt!394794 () array!50176)

(declare-fun v!557 () V!27741)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27741)

(declare-fun zeroValue!654 () V!27741)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!11364 0))(
  ( (tuple2!11365 (_1!5692 (_ BitVec 64)) (_2!5692 V!27741)) )
))
(declare-datatypes ((List!17223 0))(
  ( (Nil!17220) (Cons!17219 (h!18350 tuple2!11364) (t!24268 List!17223)) )
))
(declare-datatypes ((ListLongMap!10147 0))(
  ( (ListLongMap!10148 (toList!5089 List!17223)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3053 (array!50174 array!50176 (_ BitVec 32) (_ BitVec 32) V!27741 V!27741 (_ BitVec 32) Int) ListLongMap!10147)

(declare-fun +!2375 (ListLongMap!10147 tuple2!11364) ListLongMap!10147)

(assert (=> b!869439 (= (getCurrentListMapNoExtraKeys!3053 _keys!868 lt!394794 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2375 (getCurrentListMapNoExtraKeys!3053 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11365 k!854 v!557)))))

(declare-datatypes ((Unit!29800 0))(
  ( (Unit!29801) )
))
(declare-fun lt!394796 () Unit!29800)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!606 (array!50174 array!50176 (_ BitVec 32) (_ BitVec 32) V!27741 V!27741 (_ BitVec 32) (_ BitVec 64) V!27741 (_ BitVec 32) Int) Unit!29800)

(assert (=> b!869439 (= lt!394796 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!606 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!27131 () Bool)

(declare-fun mapRes!27131 () Bool)

(assert (=> mapIsEmpty!27131 mapRes!27131))

(declare-fun b!869440 () Bool)

(assert (=> b!869440 (= e!484214 (and e!484211 mapRes!27131))))

(declare-fun condMapEmpty!27131 () Bool)

(declare-fun mapDefault!27131 () ValueCell!8071)

