; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73688 () Bool)

(assert start!73688)

(declare-fun b_free!14575 () Bool)

(declare-fun b_next!14575 () Bool)

(assert (=> start!73688 (= b_free!14575 (not b_next!14575))))

(declare-fun tp!51230 () Bool)

(declare-fun b_and!24147 () Bool)

(assert (=> start!73688 (= tp!51230 b_and!24147)))

(declare-fun b!862475 () Bool)

(declare-fun res!586209 () Bool)

(declare-fun e!480542 () Bool)

(assert (=> b!862475 (=> (not res!586209) (not e!480542))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49568 0))(
  ( (array!49569 (arr!23811 (Array (_ BitVec 32) (_ BitVec 64))) (size!24252 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49568)

(declare-datatypes ((V!27329 0))(
  ( (V!27330 (val!8403 Int)) )
))
(declare-datatypes ((ValueCell!7916 0))(
  ( (ValueCellFull!7916 (v!10824 V!27329)) (EmptyCell!7916) )
))
(declare-datatypes ((array!49570 0))(
  ( (array!49571 (arr!23812 (Array (_ BitVec 32) ValueCell!7916)) (size!24253 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49570)

(assert (=> b!862475 (= res!586209 (and (= (size!24253 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24252 _keys!868) (size!24253 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!26666 () Bool)

(declare-fun mapRes!26666 () Bool)

(declare-fun tp!51229 () Bool)

(declare-fun e!480540 () Bool)

(assert (=> mapNonEmpty!26666 (= mapRes!26666 (and tp!51229 e!480540))))

(declare-fun mapKey!26666 () (_ BitVec 32))

(declare-fun mapRest!26666 () (Array (_ BitVec 32) ValueCell!7916))

(declare-fun mapValue!26666 () ValueCell!7916)

(assert (=> mapNonEmpty!26666 (= (arr!23812 _values!688) (store mapRest!26666 mapKey!26666 mapValue!26666))))

(declare-fun b!862476 () Bool)

(declare-fun res!586201 () Bool)

(assert (=> b!862476 (=> (not res!586201) (not e!480542))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!862476 (= res!586201 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24252 _keys!868))))))

(declare-fun b!862477 () Bool)

(declare-fun tp_is_empty!16711 () Bool)

(assert (=> b!862477 (= e!480540 tp_is_empty!16711)))

(declare-fun res!586199 () Bool)

(assert (=> start!73688 (=> (not res!586199) (not e!480542))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73688 (= res!586199 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24252 _keys!868))))))

(assert (=> start!73688 e!480542))

(assert (=> start!73688 tp_is_empty!16711))

(assert (=> start!73688 true))

(assert (=> start!73688 tp!51230))

(declare-fun array_inv!18816 (array!49568) Bool)

(assert (=> start!73688 (array_inv!18816 _keys!868)))

(declare-fun e!480539 () Bool)

(declare-fun array_inv!18817 (array!49570) Bool)

(assert (=> start!73688 (and (array_inv!18817 _values!688) e!480539)))

(declare-fun b!862478 () Bool)

(declare-fun e!480536 () Bool)

(assert (=> b!862478 (= e!480536 tp_is_empty!16711)))

(declare-fun b!862479 () Bool)

(declare-fun res!586203 () Bool)

(assert (=> b!862479 (=> (not res!586203) (not e!480542))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!862479 (= res!586203 (and (= (select (arr!23811 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!862480 () Bool)

(declare-fun e!480541 () Bool)

(declare-fun e!480543 () Bool)

(assert (=> b!862480 (= e!480541 (not e!480543))))

(declare-fun res!586202 () Bool)

(assert (=> b!862480 (=> res!586202 e!480543)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!862480 (= res!586202 (not (validKeyInArray!0 (select (arr!23811 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11112 0))(
  ( (tuple2!11113 (_1!5566 (_ BitVec 64)) (_2!5566 V!27329)) )
))
(declare-datatypes ((List!16982 0))(
  ( (Nil!16979) (Cons!16978 (h!18109 tuple2!11112) (t!23831 List!16982)) )
))
(declare-datatypes ((ListLongMap!9895 0))(
  ( (ListLongMap!9896 (toList!4963 List!16982)) )
))
(declare-fun lt!389406 () ListLongMap!9895)

(declare-fun lt!389399 () ListLongMap!9895)

(assert (=> b!862480 (= lt!389406 lt!389399)))

(declare-fun lt!389402 () ListLongMap!9895)

(declare-fun lt!389409 () tuple2!11112)

(declare-fun +!2260 (ListLongMap!9895 tuple2!11112) ListLongMap!9895)

(assert (=> b!862480 (= lt!389399 (+!2260 lt!389402 lt!389409))))

(declare-fun lt!389403 () array!49570)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27329)

(declare-fun zeroValue!654 () V!27329)

(declare-fun getCurrentListMapNoExtraKeys!2939 (array!49568 array!49570 (_ BitVec 32) (_ BitVec 32) V!27329 V!27329 (_ BitVec 32) Int) ListLongMap!9895)

(assert (=> b!862480 (= lt!389406 (getCurrentListMapNoExtraKeys!2939 _keys!868 lt!389403 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun v!557 () V!27329)

(assert (=> b!862480 (= lt!389409 (tuple2!11113 k!854 v!557))))

(assert (=> b!862480 (= lt!389402 (getCurrentListMapNoExtraKeys!2939 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29427 0))(
  ( (Unit!29428) )
))
(declare-fun lt!389394 () Unit!29427)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!508 (array!49568 array!49570 (_ BitVec 32) (_ BitVec 32) V!27329 V!27329 (_ BitVec 32) (_ BitVec 64) V!27329 (_ BitVec 32) Int) Unit!29427)

(assert (=> b!862480 (= lt!389394 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!508 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!862481 () Bool)

(declare-fun e!480537 () Bool)

(assert (=> b!862481 (= e!480537 true)))

(declare-fun lt!389397 () tuple2!11112)

(declare-fun lt!389404 () ListLongMap!9895)

(assert (=> b!862481 (= lt!389404 (+!2260 (+!2260 lt!389402 lt!389397) lt!389409))))

(declare-fun lt!389401 () V!27329)

(declare-fun lt!389398 () Unit!29427)

(declare-fun addCommutativeForDiffKeys!476 (ListLongMap!9895 (_ BitVec 64) V!27329 (_ BitVec 64) V!27329) Unit!29427)

(assert (=> b!862481 (= lt!389398 (addCommutativeForDiffKeys!476 lt!389402 k!854 v!557 (select (arr!23811 _keys!868) from!1053) lt!389401))))

(declare-fun b!862482 () Bool)

(declare-fun res!586205 () Bool)

(assert (=> b!862482 (=> (not res!586205) (not e!480542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!862482 (= res!586205 (validMask!0 mask!1196))))

(declare-fun b!862483 () Bool)

(assert (=> b!862483 (= e!480539 (and e!480536 mapRes!26666))))

(declare-fun condMapEmpty!26666 () Bool)

(declare-fun mapDefault!26666 () ValueCell!7916)

