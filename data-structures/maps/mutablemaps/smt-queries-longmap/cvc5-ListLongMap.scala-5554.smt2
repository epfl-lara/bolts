; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73136 () Bool)

(assert start!73136)

(declare-fun b_free!14023 () Bool)

(declare-fun b_next!14023 () Bool)

(assert (=> start!73136 (= b_free!14023 (not b_next!14023))))

(declare-fun tp!49574 () Bool)

(declare-fun b_and!23223 () Bool)

(assert (=> start!73136 (= tp!49574 b_and!23223)))

(declare-fun b!850545 () Bool)

(declare-fun res!577887 () Bool)

(declare-fun e!474492 () Bool)

(assert (=> b!850545 (=> (not res!577887) (not e!474492))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!850545 (= res!577887 (validKeyInArray!0 k!854))))

(declare-fun b!850546 () Bool)

(declare-fun e!474490 () Bool)

(declare-datatypes ((V!26593 0))(
  ( (V!26594 (val!8127 Int)) )
))
(declare-datatypes ((tuple2!10664 0))(
  ( (tuple2!10665 (_1!5342 (_ BitVec 64)) (_2!5342 V!26593)) )
))
(declare-datatypes ((List!16559 0))(
  ( (Nil!16556) (Cons!16555 (h!17686 tuple2!10664) (t!23036 List!16559)) )
))
(declare-datatypes ((ListLongMap!9447 0))(
  ( (ListLongMap!9448 (toList!4739 List!16559)) )
))
(declare-fun call!37925 () ListLongMap!9447)

(declare-fun call!37924 () ListLongMap!9447)

(assert (=> b!850546 (= e!474490 (= call!37925 call!37924))))

(declare-fun res!577886 () Bool)

(assert (=> start!73136 (=> (not res!577886) (not e!474492))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48506 0))(
  ( (array!48507 (arr!23280 (Array (_ BitVec 32) (_ BitVec 64))) (size!23721 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48506)

(assert (=> start!73136 (= res!577886 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23721 _keys!868))))))

(assert (=> start!73136 e!474492))

(declare-fun tp_is_empty!16159 () Bool)

(assert (=> start!73136 tp_is_empty!16159))

(assert (=> start!73136 true))

(assert (=> start!73136 tp!49574))

(declare-fun array_inv!18460 (array!48506) Bool)

(assert (=> start!73136 (array_inv!18460 _keys!868)))

(declare-datatypes ((ValueCell!7640 0))(
  ( (ValueCellFull!7640 (v!10548 V!26593)) (EmptyCell!7640) )
))
(declare-datatypes ((array!48508 0))(
  ( (array!48509 (arr!23281 (Array (_ BitVec 32) ValueCell!7640)) (size!23722 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48508)

(declare-fun e!474488 () Bool)

(declare-fun array_inv!18461 (array!48508) Bool)

(assert (=> start!73136 (and (array_inv!18461 _values!688) e!474488)))

(declare-fun b!850547 () Bool)

(declare-fun res!577881 () Bool)

(assert (=> b!850547 (=> (not res!577881) (not e!474492))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!850547 (= res!577881 (and (= (select (arr!23280 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!850548 () Bool)

(declare-fun res!577884 () Bool)

(assert (=> b!850548 (=> (not res!577884) (not e!474492))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!850548 (= res!577884 (and (= (size!23722 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23721 _keys!868) (size!23722 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!850549 () Bool)

(declare-fun e!474486 () Bool)

(declare-fun e!474485 () Bool)

(assert (=> b!850549 (= e!474486 (not e!474485))))

(declare-fun res!577882 () Bool)

(assert (=> b!850549 (=> res!577882 e!474485)))

(assert (=> b!850549 (= res!577882 (not (validKeyInArray!0 (select (arr!23280 _keys!868) from!1053))))))

(assert (=> b!850549 e!474490))

(declare-fun c!91623 () Bool)

(assert (=> b!850549 (= c!91623 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29012 0))(
  ( (Unit!29013) )
))
(declare-fun lt!382935 () Unit!29012)

(declare-fun v!557 () V!26593)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!26593)

(declare-fun zeroValue!654 () V!26593)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!353 (array!48506 array!48508 (_ BitVec 32) (_ BitVec 32) V!26593 V!26593 (_ BitVec 32) (_ BitVec 64) V!26593 (_ BitVec 32) Int) Unit!29012)

(assert (=> b!850549 (= lt!382935 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!353 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!37921 () Bool)

(declare-fun lt!382934 () array!48508)

(declare-fun getCurrentListMapNoExtraKeys!2725 (array!48506 array!48508 (_ BitVec 32) (_ BitVec 32) V!26593 V!26593 (_ BitVec 32) Int) ListLongMap!9447)

(assert (=> bm!37921 (= call!37925 (getCurrentListMapNoExtraKeys!2725 _keys!868 lt!382934 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850550 () Bool)

(declare-fun e!474489 () Bool)

(assert (=> b!850550 (= e!474489 tp_is_empty!16159)))

(declare-fun b!850551 () Bool)

(declare-fun +!2083 (ListLongMap!9447 tuple2!10664) ListLongMap!9447)

(assert (=> b!850551 (= e!474490 (= call!37925 (+!2083 call!37924 (tuple2!10665 k!854 v!557))))))

(declare-fun bm!37922 () Bool)

(assert (=> bm!37922 (= call!37924 (getCurrentListMapNoExtraKeys!2725 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850552 () Bool)

(declare-fun e!474491 () Bool)

(declare-fun mapRes!25838 () Bool)

(assert (=> b!850552 (= e!474488 (and e!474491 mapRes!25838))))

(declare-fun condMapEmpty!25838 () Bool)

(declare-fun mapDefault!25838 () ValueCell!7640)

