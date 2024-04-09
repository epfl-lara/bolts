; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74342 () Bool)

(assert start!74342)

(declare-fun b_free!15077 () Bool)

(declare-fun b_next!15077 () Bool)

(assert (=> start!74342 (= b_free!15077 (not b_next!15077))))

(declare-fun tp!52906 () Bool)

(declare-fun b_and!24871 () Bool)

(assert (=> start!74342 (= tp!52906 b_and!24871)))

(declare-fun b!874295 () Bool)

(declare-fun res!594270 () Bool)

(declare-fun e!486820 () Bool)

(assert (=> b!874295 (=> (not res!594270) (not e!486820))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874295 (= res!594270 (validKeyInArray!0 k!854))))

(declare-fun b!874296 () Bool)

(declare-fun e!486821 () Bool)

(declare-fun tp_is_empty!17321 () Bool)

(assert (=> b!874296 (= e!486821 tp_is_empty!17321)))

(declare-fun mapIsEmpty!27590 () Bool)

(declare-fun mapRes!27590 () Bool)

(assert (=> mapIsEmpty!27590 mapRes!27590))

(declare-fun b!874297 () Bool)

(declare-fun res!594264 () Bool)

(assert (=> b!874297 (=> (not res!594264) (not e!486820))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!50754 0))(
  ( (array!50755 (arr!24401 (Array (_ BitVec 32) (_ BitVec 64))) (size!24842 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50754)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!874297 (= res!594264 (and (= (select (arr!24401 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!27590 () Bool)

(declare-fun tp!52907 () Bool)

(declare-fun e!486822 () Bool)

(assert (=> mapNonEmpty!27590 (= mapRes!27590 (and tp!52907 e!486822))))

(declare-datatypes ((V!28141 0))(
  ( (V!28142 (val!8708 Int)) )
))
(declare-datatypes ((ValueCell!8221 0))(
  ( (ValueCellFull!8221 (v!11133 V!28141)) (EmptyCell!8221) )
))
(declare-fun mapRest!27590 () (Array (_ BitVec 32) ValueCell!8221))

(declare-fun mapKey!27590 () (_ BitVec 32))

(declare-datatypes ((array!50756 0))(
  ( (array!50757 (arr!24402 (Array (_ BitVec 32) ValueCell!8221)) (size!24843 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50756)

(declare-fun mapValue!27590 () ValueCell!8221)

(assert (=> mapNonEmpty!27590 (= (arr!24402 _values!688) (store mapRest!27590 mapKey!27590 mapValue!27590))))

(declare-fun res!594271 () Bool)

(assert (=> start!74342 (=> (not res!594271) (not e!486820))))

(assert (=> start!74342 (= res!594271 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24842 _keys!868))))))

(assert (=> start!74342 e!486820))

(assert (=> start!74342 tp_is_empty!17321))

(assert (=> start!74342 true))

(assert (=> start!74342 tp!52906))

(declare-fun array_inv!19224 (array!50754) Bool)

(assert (=> start!74342 (array_inv!19224 _keys!868)))

(declare-fun e!486823 () Bool)

(declare-fun array_inv!19225 (array!50756) Bool)

(assert (=> start!74342 (and (array_inv!19225 _values!688) e!486823)))

(declare-fun b!874298 () Bool)

(declare-fun res!594266 () Bool)

(assert (=> b!874298 (=> (not res!594266) (not e!486820))))

(declare-datatypes ((List!17391 0))(
  ( (Nil!17388) (Cons!17387 (h!18518 (_ BitVec 64)) (t!24440 List!17391)) )
))
(declare-fun arrayNoDuplicates!0 (array!50754 (_ BitVec 32) List!17391) Bool)

(assert (=> b!874298 (= res!594266 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17388))))

(declare-fun b!874299 () Bool)

(declare-fun res!594267 () Bool)

(assert (=> b!874299 (=> (not res!594267) (not e!486820))))

(assert (=> b!874299 (= res!594267 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24842 _keys!868))))))

(declare-fun b!874300 () Bool)

(declare-fun res!594265 () Bool)

(assert (=> b!874300 (=> (not res!594265) (not e!486820))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!874300 (= res!594265 (and (= (size!24843 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24842 _keys!868) (size!24843 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!874301 () Bool)

(declare-fun res!594268 () Bool)

(assert (=> b!874301 (=> (not res!594268) (not e!486820))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50754 (_ BitVec 32)) Bool)

(assert (=> b!874301 (= res!594268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!874302 () Bool)

(assert (=> b!874302 (= e!486820 false)))

(declare-datatypes ((tuple2!11502 0))(
  ( (tuple2!11503 (_1!5761 (_ BitVec 64)) (_2!5761 V!28141)) )
))
(declare-datatypes ((List!17392 0))(
  ( (Nil!17389) (Cons!17388 (h!18519 tuple2!11502) (t!24441 List!17392)) )
))
(declare-datatypes ((ListLongMap!10285 0))(
  ( (ListLongMap!10286 (toList!5158 List!17392)) )
))
(declare-fun lt!395890 () ListLongMap!10285)

(declare-fun v!557 () V!28141)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28141)

(declare-fun zeroValue!654 () V!28141)

(declare-fun getCurrentListMapNoExtraKeys!3122 (array!50754 array!50756 (_ BitVec 32) (_ BitVec 32) V!28141 V!28141 (_ BitVec 32) Int) ListLongMap!10285)

(assert (=> b!874302 (= lt!395890 (getCurrentListMapNoExtraKeys!3122 _keys!868 (array!50757 (store (arr!24402 _values!688) i!612 (ValueCellFull!8221 v!557)) (size!24843 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395889 () ListLongMap!10285)

(assert (=> b!874302 (= lt!395889 (getCurrentListMapNoExtraKeys!3122 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!874303 () Bool)

(assert (=> b!874303 (= e!486822 tp_is_empty!17321)))

(declare-fun b!874304 () Bool)

(declare-fun res!594269 () Bool)

(assert (=> b!874304 (=> (not res!594269) (not e!486820))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874304 (= res!594269 (validMask!0 mask!1196))))

(declare-fun b!874305 () Bool)

(assert (=> b!874305 (= e!486823 (and e!486821 mapRes!27590))))

(declare-fun condMapEmpty!27590 () Bool)

(declare-fun mapDefault!27590 () ValueCell!8221)

