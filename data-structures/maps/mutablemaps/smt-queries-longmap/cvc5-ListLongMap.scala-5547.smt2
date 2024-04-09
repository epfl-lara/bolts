; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73094 () Bool)

(assert start!73094)

(declare-fun b_free!13981 () Bool)

(declare-fun b_next!13981 () Bool)

(assert (=> start!73094 (= b_free!13981 (not b_next!13981))))

(declare-fun tp!49448 () Bool)

(declare-fun b_and!23139 () Bool)

(assert (=> start!73094 (= tp!49448 b_and!23139)))

(declare-fun mapIsEmpty!25775 () Bool)

(declare-fun mapRes!25775 () Bool)

(assert (=> mapIsEmpty!25775 mapRes!25775))

(declare-fun b!849558 () Bool)

(declare-fun res!577253 () Bool)

(declare-fun e!473984 () Bool)

(assert (=> b!849558 (=> (not res!577253) (not e!473984))))

(declare-datatypes ((array!48426 0))(
  ( (array!48427 (arr!23240 (Array (_ BitVec 32) (_ BitVec 64))) (size!23681 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48426)

(declare-datatypes ((List!16528 0))(
  ( (Nil!16525) (Cons!16524 (h!17655 (_ BitVec 64)) (t!22963 List!16528)) )
))
(declare-fun arrayNoDuplicates!0 (array!48426 (_ BitVec 32) List!16528) Bool)

(assert (=> b!849558 (= res!577253 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16525))))

(declare-fun res!577258 () Bool)

(assert (=> start!73094 (=> (not res!577258) (not e!473984))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73094 (= res!577258 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23681 _keys!868))))))

(assert (=> start!73094 e!473984))

(declare-fun tp_is_empty!16117 () Bool)

(assert (=> start!73094 tp_is_empty!16117))

(assert (=> start!73094 true))

(assert (=> start!73094 tp!49448))

(declare-fun array_inv!18430 (array!48426) Bool)

(assert (=> start!73094 (array_inv!18430 _keys!868)))

(declare-datatypes ((V!26537 0))(
  ( (V!26538 (val!8106 Int)) )
))
(declare-datatypes ((ValueCell!7619 0))(
  ( (ValueCellFull!7619 (v!10527 V!26537)) (EmptyCell!7619) )
))
(declare-datatypes ((array!48428 0))(
  ( (array!48429 (arr!23241 (Array (_ BitVec 32) ValueCell!7619)) (size!23682 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48428)

(declare-fun e!473982 () Bool)

(declare-fun array_inv!18431 (array!48428) Bool)

(assert (=> start!73094 (and (array_inv!18431 _values!688) e!473982)))

(declare-fun b!849559 () Bool)

(declare-fun e!473985 () Bool)

(assert (=> b!849559 (= e!473985 tp_is_empty!16117)))

(declare-fun b!849560 () Bool)

(declare-fun e!473987 () Bool)

(assert (=> b!849560 (= e!473987 true)))

(declare-datatypes ((tuple2!10628 0))(
  ( (tuple2!10629 (_1!5324 (_ BitVec 64)) (_2!5324 V!26537)) )
))
(declare-fun lt!382307 () tuple2!10628)

(declare-datatypes ((List!16529 0))(
  ( (Nil!16526) (Cons!16525 (h!17656 tuple2!10628) (t!22964 List!16529)) )
))
(declare-datatypes ((ListLongMap!9411 0))(
  ( (ListLongMap!9412 (toList!4721 List!16529)) )
))
(declare-fun lt!382304 () ListLongMap!9411)

(declare-fun lt!382300 () V!26537)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2066 (ListLongMap!9411 tuple2!10628) ListLongMap!9411)

(assert (=> b!849560 (= (+!2066 lt!382304 lt!382307) (+!2066 (+!2066 lt!382304 (tuple2!10629 k!854 lt!382300)) lt!382307))))

(declare-fun lt!382308 () V!26537)

(assert (=> b!849560 (= lt!382307 (tuple2!10629 k!854 lt!382308))))

(declare-datatypes ((Unit!28982 0))(
  ( (Unit!28983) )
))
(declare-fun lt!382303 () Unit!28982)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!254 (ListLongMap!9411 (_ BitVec 64) V!26537 V!26537) Unit!28982)

(assert (=> b!849560 (= lt!382303 (addSameAsAddTwiceSameKeyDiffValues!254 lt!382304 k!854 lt!382300 lt!382308))))

(declare-fun lt!382301 () V!26537)

(declare-fun get!12246 (ValueCell!7619 V!26537) V!26537)

(assert (=> b!849560 (= lt!382300 (get!12246 (select (arr!23241 _values!688) from!1053) lt!382301))))

(declare-fun lt!382306 () ListLongMap!9411)

(assert (=> b!849560 (= lt!382306 (+!2066 lt!382304 (tuple2!10629 (select (arr!23240 _keys!868) from!1053) lt!382308)))))

(declare-fun v!557 () V!26537)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!849560 (= lt!382308 (get!12246 (select (store (arr!23241 _values!688) i!612 (ValueCellFull!7619 v!557)) from!1053) lt!382301))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1002 (Int (_ BitVec 64)) V!26537)

(assert (=> b!849560 (= lt!382301 (dynLambda!1002 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!382299 () array!48428)

(declare-fun minValue!654 () V!26537)

(declare-fun zeroValue!654 () V!26537)

(declare-fun getCurrentListMapNoExtraKeys!2709 (array!48426 array!48428 (_ BitVec 32) (_ BitVec 32) V!26537 V!26537 (_ BitVec 32) Int) ListLongMap!9411)

(assert (=> b!849560 (= lt!382304 (getCurrentListMapNoExtraKeys!2709 _keys!868 lt!382299 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849561 () Bool)

(declare-fun res!577257 () Bool)

(assert (=> b!849561 (=> (not res!577257) (not e!473984))))

(assert (=> b!849561 (= res!577257 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23681 _keys!868))))))

(declare-fun b!849562 () Bool)

(declare-fun res!577256 () Bool)

(assert (=> b!849562 (=> (not res!577256) (not e!473984))))

(assert (=> b!849562 (= res!577256 (and (= (size!23682 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23681 _keys!868) (size!23682 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!25775 () Bool)

(declare-fun tp!49447 () Bool)

(declare-fun e!473981 () Bool)

(assert (=> mapNonEmpty!25775 (= mapRes!25775 (and tp!49447 e!473981))))

(declare-fun mapValue!25775 () ValueCell!7619)

(declare-fun mapRest!25775 () (Array (_ BitVec 32) ValueCell!7619))

(declare-fun mapKey!25775 () (_ BitVec 32))

(assert (=> mapNonEmpty!25775 (= (arr!23241 _values!688) (store mapRest!25775 mapKey!25775 mapValue!25775))))

(declare-fun b!849563 () Bool)

(assert (=> b!849563 (= e!473982 (and e!473985 mapRes!25775))))

(declare-fun condMapEmpty!25775 () Bool)

(declare-fun mapDefault!25775 () ValueCell!7619)

