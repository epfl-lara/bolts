; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73134 () Bool)

(assert start!73134)

(declare-fun b_free!14021 () Bool)

(declare-fun b_next!14021 () Bool)

(assert (=> start!73134 (= b_free!14021 (not b_next!14021))))

(declare-fun tp!49567 () Bool)

(declare-fun b_and!23219 () Bool)

(assert (=> start!73134 (= tp!49567 b_and!23219)))

(declare-fun b!850498 () Bool)

(declare-fun e!474461 () Bool)

(declare-fun e!474462 () Bool)

(assert (=> b!850498 (= e!474461 e!474462)))

(declare-fun res!577854 () Bool)

(assert (=> b!850498 (=> (not res!577854) (not e!474462))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!850498 (= res!577854 (= from!1053 i!612))))

(declare-datatypes ((V!26589 0))(
  ( (V!26590 (val!8126 Int)) )
))
(declare-datatypes ((ValueCell!7639 0))(
  ( (ValueCellFull!7639 (v!10547 V!26589)) (EmptyCell!7639) )
))
(declare-datatypes ((array!48502 0))(
  ( (array!48503 (arr!23278 (Array (_ BitVec 32) ValueCell!7639)) (size!23719 (_ BitVec 32))) )
))
(declare-fun lt!382901 () array!48502)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!10662 0))(
  ( (tuple2!10663 (_1!5341 (_ BitVec 64)) (_2!5341 V!26589)) )
))
(declare-datatypes ((List!16558 0))(
  ( (Nil!16555) (Cons!16554 (h!17685 tuple2!10662) (t!23033 List!16558)) )
))
(declare-datatypes ((ListLongMap!9445 0))(
  ( (ListLongMap!9446 (toList!4738 List!16558)) )
))
(declare-fun lt!382902 () ListLongMap!9445)

(declare-datatypes ((array!48504 0))(
  ( (array!48505 (arr!23279 (Array (_ BitVec 32) (_ BitVec 64))) (size!23720 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48504)

(declare-fun minValue!654 () V!26589)

(declare-fun zeroValue!654 () V!26589)

(declare-fun getCurrentListMapNoExtraKeys!2724 (array!48504 array!48502 (_ BitVec 32) (_ BitVec 32) V!26589 V!26589 (_ BitVec 32) Int) ListLongMap!9445)

(assert (=> b!850498 (= lt!382902 (getCurrentListMapNoExtraKeys!2724 _keys!868 lt!382901 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun _values!688 () array!48502)

(declare-fun v!557 () V!26589)

(assert (=> b!850498 (= lt!382901 (array!48503 (store (arr!23278 _values!688) i!612 (ValueCellFull!7639 v!557)) (size!23719 _values!688)))))

(declare-fun lt!382906 () ListLongMap!9445)

(assert (=> b!850498 (= lt!382906 (getCurrentListMapNoExtraKeys!2724 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!850499 () Bool)

(declare-fun res!577855 () Bool)

(assert (=> b!850499 (=> (not res!577855) (not e!474461))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!850499 (= res!577855 (validMask!0 mask!1196))))

(declare-fun call!37919 () ListLongMap!9445)

(declare-fun bm!37915 () Bool)

(assert (=> bm!37915 (= call!37919 (getCurrentListMapNoExtraKeys!2724 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun call!37918 () ListLongMap!9445)

(declare-fun bm!37916 () Bool)

(assert (=> bm!37916 (= call!37918 (getCurrentListMapNoExtraKeys!2724 _keys!868 lt!382901 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!577860 () Bool)

(assert (=> start!73134 (=> (not res!577860) (not e!474461))))

(assert (=> start!73134 (= res!577860 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23720 _keys!868))))))

(assert (=> start!73134 e!474461))

(declare-fun tp_is_empty!16157 () Bool)

(assert (=> start!73134 tp_is_empty!16157))

(assert (=> start!73134 true))

(assert (=> start!73134 tp!49567))

(declare-fun array_inv!18458 (array!48504) Bool)

(assert (=> start!73134 (array_inv!18458 _keys!868)))

(declare-fun e!474467 () Bool)

(declare-fun array_inv!18459 (array!48502) Bool)

(assert (=> start!73134 (and (array_inv!18459 _values!688) e!474467)))

(declare-fun b!850500 () Bool)

(declare-fun e!474466 () Bool)

(assert (=> b!850500 (= e!474466 tp_is_empty!16157)))

(declare-fun b!850501 () Bool)

(declare-fun res!577856 () Bool)

(assert (=> b!850501 (=> (not res!577856) (not e!474461))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48504 (_ BitVec 32)) Bool)

(assert (=> b!850501 (= res!577856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!850502 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun e!474465 () Bool)

(declare-fun +!2082 (ListLongMap!9445 tuple2!10662) ListLongMap!9445)

(assert (=> b!850502 (= e!474465 (= call!37918 (+!2082 call!37919 (tuple2!10663 k!854 v!557))))))

(declare-fun b!850503 () Bool)

(declare-fun e!474464 () Bool)

(declare-fun mapRes!25835 () Bool)

(assert (=> b!850503 (= e!474467 (and e!474464 mapRes!25835))))

(declare-fun condMapEmpty!25835 () Bool)

(declare-fun mapDefault!25835 () ValueCell!7639)

