; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73896 () Bool)

(assert start!73896)

(declare-fun b_free!14783 () Bool)

(declare-fun b_next!14783 () Bool)

(assert (=> start!73896 (= b_free!14783 (not b_next!14783))))

(declare-fun tp!51853 () Bool)

(declare-fun b_and!24553 () Bool)

(assert (=> start!73896 (= tp!51853 b_and!24553)))

(declare-fun mapIsEmpty!26978 () Bool)

(declare-fun mapRes!26978 () Bool)

(assert (=> mapIsEmpty!26978 mapRes!26978))

(declare-fun b!867597 () Bool)

(declare-fun e!483294 () Bool)

(assert (=> b!867597 (= e!483294 (not true))))

(declare-datatypes ((V!27605 0))(
  ( (V!27606 (val!8507 Int)) )
))
(declare-datatypes ((ValueCell!8020 0))(
  ( (ValueCellFull!8020 (v!10928 V!27605)) (EmptyCell!8020) )
))
(declare-datatypes ((array!49976 0))(
  ( (array!49977 (arr!24015 (Array (_ BitVec 32) ValueCell!8020)) (size!24456 (_ BitVec 32))) )
))
(declare-fun lt!394185 () array!49976)

(declare-fun v!557 () V!27605)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49978 0))(
  ( (array!49979 (arr!24016 (Array (_ BitVec 32) (_ BitVec 64))) (size!24457 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49978)

(declare-fun _values!688 () array!49976)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!27605)

(declare-fun zeroValue!654 () V!27605)

(declare-datatypes ((tuple2!11294 0))(
  ( (tuple2!11295 (_1!5657 (_ BitVec 64)) (_2!5657 V!27605)) )
))
(declare-datatypes ((List!17154 0))(
  ( (Nil!17151) (Cons!17150 (h!18281 tuple2!11294) (t!24199 List!17154)) )
))
(declare-datatypes ((ListLongMap!10077 0))(
  ( (ListLongMap!10078 (toList!5054 List!17154)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3018 (array!49978 array!49976 (_ BitVec 32) (_ BitVec 32) V!27605 V!27605 (_ BitVec 32) Int) ListLongMap!10077)

(declare-fun +!2347 (ListLongMap!10077 tuple2!11294) ListLongMap!10077)

(assert (=> b!867597 (= (getCurrentListMapNoExtraKeys!3018 _keys!868 lt!394185 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2347 (getCurrentListMapNoExtraKeys!3018 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11295 k!854 v!557)))))

(declare-datatypes ((Unit!29744 0))(
  ( (Unit!29745) )
))
(declare-fun lt!394182 () Unit!29744)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!578 (array!49978 array!49976 (_ BitVec 32) (_ BitVec 32) V!27605 V!27605 (_ BitVec 32) (_ BitVec 64) V!27605 (_ BitVec 32) Int) Unit!29744)

(assert (=> b!867597 (= lt!394182 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!578 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!867598 () Bool)

(declare-fun res!589602 () Bool)

(declare-fun e!483295 () Bool)

(assert (=> b!867598 (=> (not res!589602) (not e!483295))))

(assert (=> b!867598 (= res!589602 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24457 _keys!868))))))

(declare-fun b!867599 () Bool)

(declare-fun res!589598 () Bool)

(assert (=> b!867599 (=> (not res!589598) (not e!483295))))

(assert (=> b!867599 (= res!589598 (and (= (select (arr!24016 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!867600 () Bool)

(declare-fun e!483292 () Bool)

(declare-fun e!483296 () Bool)

(assert (=> b!867600 (= e!483292 (and e!483296 mapRes!26978))))

(declare-fun condMapEmpty!26978 () Bool)

(declare-fun mapDefault!26978 () ValueCell!8020)

