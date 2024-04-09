; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73146 () Bool)

(assert start!73146)

(declare-fun b_free!14033 () Bool)

(declare-fun b_next!14033 () Bool)

(assert (=> start!73146 (= b_free!14033 (not b_next!14033))))

(declare-fun tp!49604 () Bool)

(declare-fun b_and!23243 () Bool)

(assert (=> start!73146 (= tp!49604 b_and!23243)))

(declare-fun b!850780 () Bool)

(declare-fun res!578033 () Bool)

(declare-fun e!474605 () Bool)

(assert (=> b!850780 (=> (not res!578033) (not e!474605))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!48526 0))(
  ( (array!48527 (arr!23290 (Array (_ BitVec 32) (_ BitVec 64))) (size!23731 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48526)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!850780 (= res!578033 (and (= (select (arr!23290 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!850781 () Bool)

(declare-fun res!578035 () Bool)

(assert (=> b!850781 (=> (not res!578035) (not e!474605))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!26605 0))(
  ( (V!26606 (val!8132 Int)) )
))
(declare-datatypes ((ValueCell!7645 0))(
  ( (ValueCellFull!7645 (v!10553 V!26605)) (EmptyCell!7645) )
))
(declare-datatypes ((array!48528 0))(
  ( (array!48529 (arr!23291 (Array (_ BitVec 32) ValueCell!7645)) (size!23732 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48528)

(assert (=> b!850781 (= res!578035 (and (= (size!23732 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23731 _keys!868) (size!23732 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!850782 () Bool)

(declare-fun e!474611 () Bool)

(assert (=> b!850782 (= e!474605 e!474611)))

(declare-fun res!578034 () Bool)

(assert (=> b!850782 (=> (not res!578034) (not e!474611))))

(assert (=> b!850782 (= res!578034 (= from!1053 i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10674 0))(
  ( (tuple2!10675 (_1!5347 (_ BitVec 64)) (_2!5347 V!26605)) )
))
(declare-datatypes ((List!16566 0))(
  ( (Nil!16563) (Cons!16562 (h!17693 tuple2!10674) (t!23053 List!16566)) )
))
(declare-datatypes ((ListLongMap!9457 0))(
  ( (ListLongMap!9458 (toList!4744 List!16566)) )
))
(declare-fun lt!383086 () ListLongMap!9457)

(declare-fun lt!383083 () array!48528)

(declare-fun minValue!654 () V!26605)

(declare-fun zeroValue!654 () V!26605)

(declare-fun getCurrentListMapNoExtraKeys!2730 (array!48526 array!48528 (_ BitVec 32) (_ BitVec 32) V!26605 V!26605 (_ BitVec 32) Int) ListLongMap!9457)

(assert (=> b!850782 (= lt!383086 (getCurrentListMapNoExtraKeys!2730 _keys!868 lt!383083 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26605)

(assert (=> b!850782 (= lt!383083 (array!48529 (store (arr!23291 _values!688) i!612 (ValueCellFull!7645 v!557)) (size!23732 _values!688)))))

(declare-fun lt!383087 () ListLongMap!9457)

(assert (=> b!850782 (= lt!383087 (getCurrentListMapNoExtraKeys!2730 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!850783 () Bool)

(declare-fun e!474606 () Bool)

(declare-fun call!37954 () ListLongMap!9457)

(declare-fun call!37955 () ListLongMap!9457)

(assert (=> b!850783 (= e!474606 (= call!37954 call!37955))))

(declare-fun mapIsEmpty!25853 () Bool)

(declare-fun mapRes!25853 () Bool)

(assert (=> mapIsEmpty!25853 mapRes!25853))

(declare-fun b!850784 () Bool)

(declare-fun res!578038 () Bool)

(assert (=> b!850784 (=> (not res!578038) (not e!474605))))

(declare-datatypes ((List!16567 0))(
  ( (Nil!16564) (Cons!16563 (h!17694 (_ BitVec 64)) (t!23054 List!16567)) )
))
(declare-fun arrayNoDuplicates!0 (array!48526 (_ BitVec 32) List!16567) Bool)

(assert (=> b!850784 (= res!578038 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16564))))

(declare-fun b!850785 () Bool)

(declare-fun res!578032 () Bool)

(assert (=> b!850785 (=> (not res!578032) (not e!474605))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48526 (_ BitVec 32)) Bool)

(assert (=> b!850785 (= res!578032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!578031 () Bool)

(assert (=> start!73146 (=> (not res!578031) (not e!474605))))

(assert (=> start!73146 (= res!578031 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23731 _keys!868))))))

(assert (=> start!73146 e!474605))

(declare-fun tp_is_empty!16169 () Bool)

(assert (=> start!73146 tp_is_empty!16169))

(assert (=> start!73146 true))

(assert (=> start!73146 tp!49604))

(declare-fun array_inv!18468 (array!48526) Bool)

(assert (=> start!73146 (array_inv!18468 _keys!868)))

(declare-fun e!474612 () Bool)

(declare-fun array_inv!18469 (array!48528) Bool)

(assert (=> start!73146 (and (array_inv!18469 _values!688) e!474612)))

(declare-fun b!850786 () Bool)

(declare-fun res!578039 () Bool)

(assert (=> b!850786 (=> (not res!578039) (not e!474605))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!850786 (= res!578039 (validMask!0 mask!1196))))

(declare-fun b!850787 () Bool)

(declare-fun e!474609 () Bool)

(assert (=> b!850787 (= e!474609 true)))

(declare-fun lt!383080 () ListLongMap!9457)

(declare-fun lt!383082 () V!26605)

(declare-fun lt!383088 () tuple2!10674)

(declare-fun +!2087 (ListLongMap!9457 tuple2!10674) ListLongMap!9457)

(assert (=> b!850787 (= (+!2087 lt!383080 lt!383088) (+!2087 (+!2087 lt!383080 (tuple2!10675 k!854 lt!383082)) lt!383088))))

(declare-fun lt!383085 () V!26605)

(assert (=> b!850787 (= lt!383088 (tuple2!10675 k!854 lt!383085))))

(declare-datatypes ((Unit!29020 0))(
  ( (Unit!29021) )
))
(declare-fun lt!383084 () Unit!29020)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!272 (ListLongMap!9457 (_ BitVec 64) V!26605 V!26605) Unit!29020)

(assert (=> b!850787 (= lt!383084 (addSameAsAddTwiceSameKeyDiffValues!272 lt!383080 k!854 lt!383082 lt!383085))))

(declare-fun lt!383081 () V!26605)

(declare-fun get!12280 (ValueCell!7645 V!26605) V!26605)

(assert (=> b!850787 (= lt!383082 (get!12280 (select (arr!23291 _values!688) from!1053) lt!383081))))

(assert (=> b!850787 (= lt!383086 (+!2087 lt!383080 (tuple2!10675 (select (arr!23290 _keys!868) from!1053) lt!383085)))))

(assert (=> b!850787 (= lt!383085 (get!12280 (select (store (arr!23291 _values!688) i!612 (ValueCellFull!7645 v!557)) from!1053) lt!383081))))

(declare-fun dynLambda!1020 (Int (_ BitVec 64)) V!26605)

(assert (=> b!850787 (= lt!383081 (dynLambda!1020 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!850787 (= lt!383080 (getCurrentListMapNoExtraKeys!2730 _keys!868 lt!383083 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850788 () Bool)

(assert (=> b!850788 (= e!474611 (not e!474609))))

(declare-fun res!578036 () Bool)

(assert (=> b!850788 (=> res!578036 e!474609)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!850788 (= res!578036 (not (validKeyInArray!0 (select (arr!23290 _keys!868) from!1053))))))

(assert (=> b!850788 e!474606))

(declare-fun c!91638 () Bool)

(assert (=> b!850788 (= c!91638 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!383079 () Unit!29020)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!356 (array!48526 array!48528 (_ BitVec 32) (_ BitVec 32) V!26605 V!26605 (_ BitVec 32) (_ BitVec 64) V!26605 (_ BitVec 32) Int) Unit!29020)

(assert (=> b!850788 (= lt!383079 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!356 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!37951 () Bool)

(assert (=> bm!37951 (= call!37955 (getCurrentListMapNoExtraKeys!2730 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850789 () Bool)

(declare-fun e!474610 () Bool)

(assert (=> b!850789 (= e!474610 tp_is_empty!16169)))

(declare-fun b!850790 () Bool)

(declare-fun res!578040 () Bool)

(assert (=> b!850790 (=> (not res!578040) (not e!474605))))

(assert (=> b!850790 (= res!578040 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23731 _keys!868))))))

(declare-fun b!850791 () Bool)

(declare-fun e!474607 () Bool)

(assert (=> b!850791 (= e!474612 (and e!474607 mapRes!25853))))

(declare-fun condMapEmpty!25853 () Bool)

(declare-fun mapDefault!25853 () ValueCell!7645)

