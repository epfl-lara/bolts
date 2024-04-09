; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72472 () Bool)

(assert start!72472)

(declare-fun b_free!13629 () Bool)

(declare-fun b_next!13629 () Bool)

(assert (=> start!72472 (= b_free!13629 (not b_next!13629))))

(declare-fun tp!47986 () Bool)

(declare-fun b_and!22733 () Bool)

(assert (=> start!72472 (= tp!47986 b_and!22733)))

(declare-fun b!839927 () Bool)

(declare-fun e!468724 () Bool)

(declare-fun e!468723 () Bool)

(declare-fun mapRes!24842 () Bool)

(assert (=> b!839927 (= e!468724 (and e!468723 mapRes!24842))))

(declare-fun condMapEmpty!24842 () Bool)

(declare-datatypes ((V!25707 0))(
  ( (V!25708 (val!7795 Int)) )
))
(declare-datatypes ((ValueCell!7308 0))(
  ( (ValueCellFull!7308 (v!10216 V!25707)) (EmptyCell!7308) )
))
(declare-datatypes ((array!47240 0))(
  ( (array!47241 (arr!22647 (Array (_ BitVec 32) ValueCell!7308)) (size!23088 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47240)

(declare-fun mapDefault!24842 () ValueCell!7308)

(assert (=> b!839927 (= condMapEmpty!24842 (= (arr!22647 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7308)) mapDefault!24842)))))

(declare-fun mapIsEmpty!24842 () Bool)

(assert (=> mapIsEmpty!24842 mapRes!24842))

(declare-fun bm!37117 () Bool)

(declare-fun v!557 () V!25707)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!10344 0))(
  ( (tuple2!10345 (_1!5182 (_ BitVec 64)) (_2!5182 V!25707)) )
))
(declare-datatypes ((List!16174 0))(
  ( (Nil!16171) (Cons!16170 (h!17301 tuple2!10344) (t!22553 List!16174)) )
))
(declare-datatypes ((ListLongMap!9127 0))(
  ( (ListLongMap!9128 (toList!4579 List!16174)) )
))
(declare-fun call!37121 () ListLongMap!9127)

(declare-datatypes ((array!47242 0))(
  ( (array!47243 (arr!22648 (Array (_ BitVec 32) (_ BitVec 64))) (size!23089 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47242)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25707)

(declare-fun zeroValue!654 () V!25707)

(declare-fun getCurrentListMapNoExtraKeys!2571 (array!47242 array!47240 (_ BitVec 32) (_ BitVec 32) V!25707 V!25707 (_ BitVec 32) Int) ListLongMap!9127)

(assert (=> bm!37117 (= call!37121 (getCurrentListMapNoExtraKeys!2571 _keys!868 (array!47241 (store (arr!22647 _values!688) i!612 (ValueCellFull!7308 v!557)) (size!23088 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839928 () Bool)

(declare-fun res!571156 () Bool)

(declare-fun e!468726 () Bool)

(assert (=> b!839928 (=> (not res!571156) (not e!468726))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!839928 (= res!571156 (validMask!0 mask!1196))))

(declare-fun res!571157 () Bool)

(assert (=> start!72472 (=> (not res!571157) (not e!468726))))

(assert (=> start!72472 (= res!571157 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23089 _keys!868))))))

(assert (=> start!72472 e!468726))

(declare-fun tp_is_empty!15495 () Bool)

(assert (=> start!72472 tp_is_empty!15495))

(assert (=> start!72472 true))

(assert (=> start!72472 tp!47986))

(declare-fun array_inv!18006 (array!47242) Bool)

(assert (=> start!72472 (array_inv!18006 _keys!868)))

(declare-fun array_inv!18007 (array!47240) Bool)

(assert (=> start!72472 (and (array_inv!18007 _values!688) e!468724)))

(declare-fun b!839929 () Bool)

(declare-fun e!468721 () Bool)

(assert (=> b!839929 (= e!468721 tp_is_empty!15495)))

(declare-fun b!839930 () Bool)

(declare-fun res!571155 () Bool)

(assert (=> b!839930 (=> (not res!571155) (not e!468726))))

(assert (=> b!839930 (= res!571155 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23089 _keys!868))))))

(declare-fun bm!37118 () Bool)

(declare-fun call!37120 () ListLongMap!9127)

(assert (=> bm!37118 (= call!37120 (getCurrentListMapNoExtraKeys!2571 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839931 () Bool)

(assert (=> b!839931 (= e!468726 (not true))))

(declare-fun e!468725 () Bool)

(assert (=> b!839931 e!468725))

(declare-fun c!91221 () Bool)

(assert (=> b!839931 (= c!91221 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((Unit!28844 0))(
  ( (Unit!28845) )
))
(declare-fun lt!380754 () Unit!28844)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!271 (array!47242 array!47240 (_ BitVec 32) (_ BitVec 32) V!25707 V!25707 (_ BitVec 32) (_ BitVec 64) V!25707 (_ BitVec 32) Int) Unit!28844)

(assert (=> b!839931 (= lt!380754 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!271 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839932 () Bool)

(declare-fun res!571154 () Bool)

(assert (=> b!839932 (=> (not res!571154) (not e!468726))))

(declare-datatypes ((List!16175 0))(
  ( (Nil!16172) (Cons!16171 (h!17302 (_ BitVec 64)) (t!22554 List!16175)) )
))
(declare-fun arrayNoDuplicates!0 (array!47242 (_ BitVec 32) List!16175) Bool)

(assert (=> b!839932 (= res!571154 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16172))))

(declare-fun b!839933 () Bool)

(declare-fun res!571158 () Bool)

(assert (=> b!839933 (=> (not res!571158) (not e!468726))))

(assert (=> b!839933 (= res!571158 (and (= (size!23088 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23089 _keys!868) (size!23088 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!839934 () Bool)

(assert (=> b!839934 (= e!468723 tp_is_empty!15495)))

(declare-fun b!839935 () Bool)

(declare-fun res!571153 () Bool)

(assert (=> b!839935 (=> (not res!571153) (not e!468726))))

(assert (=> b!839935 (= res!571153 (and (= (select (arr!22648 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23089 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!839936 () Bool)

(declare-fun res!571151 () Bool)

(assert (=> b!839936 (=> (not res!571151) (not e!468726))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!839936 (= res!571151 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!24842 () Bool)

(declare-fun tp!47987 () Bool)

(assert (=> mapNonEmpty!24842 (= mapRes!24842 (and tp!47987 e!468721))))

(declare-fun mapKey!24842 () (_ BitVec 32))

(declare-fun mapValue!24842 () ValueCell!7308)

(declare-fun mapRest!24842 () (Array (_ BitVec 32) ValueCell!7308))

(assert (=> mapNonEmpty!24842 (= (arr!22647 _values!688) (store mapRest!24842 mapKey!24842 mapValue!24842))))

(declare-fun b!839937 () Bool)

(declare-fun +!1994 (ListLongMap!9127 tuple2!10344) ListLongMap!9127)

(assert (=> b!839937 (= e!468725 (= call!37121 (+!1994 call!37120 (tuple2!10345 k0!854 v!557))))))

(declare-fun b!839938 () Bool)

(declare-fun res!571152 () Bool)

(assert (=> b!839938 (=> (not res!571152) (not e!468726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47242 (_ BitVec 32)) Bool)

(assert (=> b!839938 (= res!571152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!839939 () Bool)

(assert (=> b!839939 (= e!468725 (= call!37121 call!37120))))

(assert (= (and start!72472 res!571157) b!839928))

(assert (= (and b!839928 res!571156) b!839933))

(assert (= (and b!839933 res!571158) b!839938))

(assert (= (and b!839938 res!571152) b!839932))

(assert (= (and b!839932 res!571154) b!839930))

(assert (= (and b!839930 res!571155) b!839936))

(assert (= (and b!839936 res!571151) b!839935))

(assert (= (and b!839935 res!571153) b!839931))

(assert (= (and b!839931 c!91221) b!839937))

(assert (= (and b!839931 (not c!91221)) b!839939))

(assert (= (or b!839937 b!839939) bm!37117))

(assert (= (or b!839937 b!839939) bm!37118))

(assert (= (and b!839927 condMapEmpty!24842) mapIsEmpty!24842))

(assert (= (and b!839927 (not condMapEmpty!24842)) mapNonEmpty!24842))

(get-info :version)

(assert (= (and mapNonEmpty!24842 ((_ is ValueCellFull!7308) mapValue!24842)) b!839929))

(assert (= (and b!839927 ((_ is ValueCellFull!7308) mapDefault!24842)) b!839934))

(assert (= start!72472 b!839927))

(declare-fun m!783931 () Bool)

(assert (=> bm!37118 m!783931))

(declare-fun m!783933 () Bool)

(assert (=> b!839928 m!783933))

(declare-fun m!783935 () Bool)

(assert (=> b!839937 m!783935))

(declare-fun m!783937 () Bool)

(assert (=> b!839932 m!783937))

(declare-fun m!783939 () Bool)

(assert (=> mapNonEmpty!24842 m!783939))

(declare-fun m!783941 () Bool)

(assert (=> b!839936 m!783941))

(declare-fun m!783943 () Bool)

(assert (=> b!839935 m!783943))

(declare-fun m!783945 () Bool)

(assert (=> bm!37117 m!783945))

(declare-fun m!783947 () Bool)

(assert (=> bm!37117 m!783947))

(declare-fun m!783949 () Bool)

(assert (=> start!72472 m!783949))

(declare-fun m!783951 () Bool)

(assert (=> start!72472 m!783951))

(declare-fun m!783953 () Bool)

(assert (=> b!839931 m!783953))

(declare-fun m!783955 () Bool)

(assert (=> b!839938 m!783955))

(check-sat (not mapNonEmpty!24842) b_and!22733 (not bm!37118) (not b!839937) (not b!839931) (not b!839932) (not b!839928) (not b_next!13629) (not b!839938) (not b!839936) (not bm!37117) (not start!72472) tp_is_empty!15495)
(check-sat b_and!22733 (not b_next!13629))
