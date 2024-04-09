; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73682 () Bool)

(assert start!73682)

(declare-fun b_free!14569 () Bool)

(declare-fun b_next!14569 () Bool)

(assert (=> start!73682 (= b_free!14569 (not b_next!14569))))

(declare-fun tp!51212 () Bool)

(declare-fun b_and!24135 () Bool)

(assert (=> start!73682 (= tp!51212 b_and!24135)))

(declare-fun b!862325 () Bool)

(declare-fun e!480458 () Bool)

(declare-fun e!480459 () Bool)

(assert (=> b!862325 (= e!480458 e!480459)))

(declare-fun res!586101 () Bool)

(assert (=> b!862325 (=> (not res!586101) (not e!480459))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!862325 (= res!586101 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!27321 0))(
  ( (V!27322 (val!8400 Int)) )
))
(declare-datatypes ((tuple2!11106 0))(
  ( (tuple2!11107 (_1!5563 (_ BitVec 64)) (_2!5563 V!27321)) )
))
(declare-datatypes ((List!16977 0))(
  ( (Nil!16974) (Cons!16973 (h!18104 tuple2!11106) (t!23820 List!16977)) )
))
(declare-datatypes ((ListLongMap!9889 0))(
  ( (ListLongMap!9890 (toList!4960 List!16977)) )
))
(declare-fun lt!389252 () ListLongMap!9889)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49556 0))(
  ( (array!49557 (arr!23805 (Array (_ BitVec 32) (_ BitVec 64))) (size!24246 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49556)

(declare-fun minValue!654 () V!27321)

(declare-fun zeroValue!654 () V!27321)

(declare-datatypes ((ValueCell!7913 0))(
  ( (ValueCellFull!7913 (v!10821 V!27321)) (EmptyCell!7913) )
))
(declare-datatypes ((array!49558 0))(
  ( (array!49559 (arr!23806 (Array (_ BitVec 32) ValueCell!7913)) (size!24247 (_ BitVec 32))) )
))
(declare-fun lt!389263 () array!49558)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2936 (array!49556 array!49558 (_ BitVec 32) (_ BitVec 32) V!27321 V!27321 (_ BitVec 32) Int) ListLongMap!9889)

(assert (=> b!862325 (= lt!389252 (getCurrentListMapNoExtraKeys!2936 _keys!868 lt!389263 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun _values!688 () array!49558)

(declare-fun v!557 () V!27321)

(assert (=> b!862325 (= lt!389263 (array!49559 (store (arr!23806 _values!688) i!612 (ValueCellFull!7913 v!557)) (size!24247 _values!688)))))

(declare-fun lt!389262 () ListLongMap!9889)

(assert (=> b!862325 (= lt!389262 (getCurrentListMapNoExtraKeys!2936 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!26657 () Bool)

(declare-fun mapRes!26657 () Bool)

(assert (=> mapIsEmpty!26657 mapRes!26657))

(declare-fun b!862326 () Bool)

(declare-fun res!586110 () Bool)

(assert (=> b!862326 (=> (not res!586110) (not e!480458))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!862326 (= res!586110 (validKeyInArray!0 k!854))))

(declare-fun res!586106 () Bool)

(assert (=> start!73682 (=> (not res!586106) (not e!480458))))

(assert (=> start!73682 (= res!586106 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24246 _keys!868))))))

(assert (=> start!73682 e!480458))

(declare-fun tp_is_empty!16705 () Bool)

(assert (=> start!73682 tp_is_empty!16705))

(assert (=> start!73682 true))

(assert (=> start!73682 tp!51212))

(declare-fun array_inv!18810 (array!49556) Bool)

(assert (=> start!73682 (array_inv!18810 _keys!868)))

(declare-fun e!480456 () Bool)

(declare-fun array_inv!18811 (array!49558) Bool)

(assert (=> start!73682 (and (array_inv!18811 _values!688) e!480456)))

(declare-fun mapNonEmpty!26657 () Bool)

(declare-fun tp!51211 () Bool)

(declare-fun e!480462 () Bool)

(assert (=> mapNonEmpty!26657 (= mapRes!26657 (and tp!51211 e!480462))))

(declare-fun mapValue!26657 () ValueCell!7913)

(declare-fun mapKey!26657 () (_ BitVec 32))

(declare-fun mapRest!26657 () (Array (_ BitVec 32) ValueCell!7913))

(assert (=> mapNonEmpty!26657 (= (arr!23806 _values!688) (store mapRest!26657 mapKey!26657 mapValue!26657))))

(declare-fun b!862327 () Bool)

(declare-fun res!586103 () Bool)

(assert (=> b!862327 (=> (not res!586103) (not e!480458))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!862327 (= res!586103 (validMask!0 mask!1196))))

(declare-fun b!862328 () Bool)

(declare-fun res!586109 () Bool)

(assert (=> b!862328 (=> (not res!586109) (not e!480458))))

(assert (=> b!862328 (= res!586109 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24246 _keys!868))))))

(declare-fun b!862329 () Bool)

(assert (=> b!862329 (= e!480462 tp_is_empty!16705)))

(declare-fun b!862330 () Bool)

(declare-fun e!480455 () Bool)

(assert (=> b!862330 (= e!480455 true)))

(declare-fun lt!389256 () tuple2!11106)

(declare-fun lt!389254 () ListLongMap!9889)

(declare-fun lt!389253 () tuple2!11106)

(declare-fun lt!389255 () ListLongMap!9889)

(declare-fun +!2257 (ListLongMap!9889 tuple2!11106) ListLongMap!9889)

(assert (=> b!862330 (= lt!389255 (+!2257 (+!2257 lt!389254 lt!389256) lt!389253))))

(declare-datatypes ((Unit!29418 0))(
  ( (Unit!29419) )
))
(declare-fun lt!389265 () Unit!29418)

(declare-fun lt!389260 () V!27321)

(declare-fun addCommutativeForDiffKeys!474 (ListLongMap!9889 (_ BitVec 64) V!27321 (_ BitVec 64) V!27321) Unit!29418)

(assert (=> b!862330 (= lt!389265 (addCommutativeForDiffKeys!474 lt!389254 k!854 v!557 (select (arr!23805 _keys!868) from!1053) lt!389260))))

(declare-fun b!862331 () Bool)

(declare-fun e!480461 () Bool)

(assert (=> b!862331 (= e!480456 (and e!480461 mapRes!26657))))

(declare-fun condMapEmpty!26657 () Bool)

(declare-fun mapDefault!26657 () ValueCell!7913)

