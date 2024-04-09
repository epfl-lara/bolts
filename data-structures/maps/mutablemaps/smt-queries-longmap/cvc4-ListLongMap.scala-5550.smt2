; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73116 () Bool)

(assert start!73116)

(declare-fun b_free!14003 () Bool)

(declare-fun b_next!14003 () Bool)

(assert (=> start!73116 (= b_free!14003 (not b_next!14003))))

(declare-fun tp!49514 () Bool)

(declare-fun b_and!23183 () Bool)

(assert (=> start!73116 (= tp!49514 b_and!23183)))

(declare-fun mapNonEmpty!25808 () Bool)

(declare-fun mapRes!25808 () Bool)

(declare-fun tp!49513 () Bool)

(declare-fun e!474249 () Bool)

(assert (=> mapNonEmpty!25808 (= mapRes!25808 (and tp!49513 e!474249))))

(declare-datatypes ((V!26565 0))(
  ( (V!26566 (val!8117 Int)) )
))
(declare-datatypes ((ValueCell!7630 0))(
  ( (ValueCellFull!7630 (v!10538 V!26565)) (EmptyCell!7630) )
))
(declare-fun mapRest!25808 () (Array (_ BitVec 32) ValueCell!7630))

(declare-datatypes ((array!48470 0))(
  ( (array!48471 (arr!23262 (Array (_ BitVec 32) ValueCell!7630)) (size!23703 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48470)

(declare-fun mapValue!25808 () ValueCell!7630)

(declare-fun mapKey!25808 () (_ BitVec 32))

(assert (=> mapNonEmpty!25808 (= (arr!23262 _values!688) (store mapRest!25808 mapKey!25808 mapValue!25808))))

(declare-fun b!850075 () Bool)

(declare-fun res!577581 () Bool)

(declare-fun e!474248 () Bool)

(assert (=> b!850075 (=> (not res!577581) (not e!474248))))

(declare-datatypes ((array!48472 0))(
  ( (array!48473 (arr!23263 (Array (_ BitVec 32) (_ BitVec 64))) (size!23704 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48472)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48472 (_ BitVec 32)) Bool)

(assert (=> b!850075 (= res!577581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!577587 () Bool)

(assert (=> start!73116 (=> (not res!577587) (not e!474248))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73116 (= res!577587 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23704 _keys!868))))))

(assert (=> start!73116 e!474248))

(declare-fun tp_is_empty!16139 () Bool)

(assert (=> start!73116 tp_is_empty!16139))

(assert (=> start!73116 true))

(assert (=> start!73116 tp!49514))

(declare-fun array_inv!18448 (array!48472) Bool)

(assert (=> start!73116 (array_inv!18448 _keys!868)))

(declare-fun e!474250 () Bool)

(declare-fun array_inv!18449 (array!48470) Bool)

(assert (=> start!73116 (and (array_inv!18449 _values!688) e!474250)))

(declare-fun b!850076 () Bool)

(declare-fun e!474252 () Bool)

(assert (=> b!850076 (= e!474252 true)))

(declare-datatypes ((tuple2!10650 0))(
  ( (tuple2!10651 (_1!5335 (_ BitVec 64)) (_2!5335 V!26565)) )
))
(declare-datatypes ((List!16547 0))(
  ( (Nil!16544) (Cons!16543 (h!17674 tuple2!10650) (t!23004 List!16547)) )
))
(declare-datatypes ((ListLongMap!9433 0))(
  ( (ListLongMap!9434 (toList!4732 List!16547)) )
))
(declare-fun lt!382637 () ListLongMap!9433)

(declare-fun lt!382634 () tuple2!10650)

(declare-fun lt!382632 () V!26565)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2077 (ListLongMap!9433 tuple2!10650) ListLongMap!9433)

(assert (=> b!850076 (= (+!2077 lt!382637 lt!382634) (+!2077 (+!2077 lt!382637 (tuple2!10651 k!854 lt!382632)) lt!382634))))

(declare-fun lt!382638 () V!26565)

(assert (=> b!850076 (= lt!382634 (tuple2!10651 k!854 lt!382638))))

(declare-datatypes ((Unit!29002 0))(
  ( (Unit!29003) )
))
(declare-fun lt!382633 () Unit!29002)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!264 (ListLongMap!9433 (_ BitVec 64) V!26565 V!26565) Unit!29002)

(assert (=> b!850076 (= lt!382633 (addSameAsAddTwiceSameKeyDiffValues!264 lt!382637 k!854 lt!382632 lt!382638))))

(declare-fun lt!382636 () V!26565)

(declare-fun get!12262 (ValueCell!7630 V!26565) V!26565)

(assert (=> b!850076 (= lt!382632 (get!12262 (select (arr!23262 _values!688) from!1053) lt!382636))))

(declare-fun lt!382630 () ListLongMap!9433)

(assert (=> b!850076 (= lt!382630 (+!2077 lt!382637 (tuple2!10651 (select (arr!23263 _keys!868) from!1053) lt!382638)))))

(declare-fun v!557 () V!26565)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!850076 (= lt!382638 (get!12262 (select (store (arr!23262 _values!688) i!612 (ValueCellFull!7630 v!557)) from!1053) lt!382636))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1012 (Int (_ BitVec 64)) V!26565)

(assert (=> b!850076 (= lt!382636 (dynLambda!1012 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!382629 () array!48470)

(declare-fun minValue!654 () V!26565)

(declare-fun zeroValue!654 () V!26565)

(declare-fun getCurrentListMapNoExtraKeys!2719 (array!48472 array!48470 (_ BitVec 32) (_ BitVec 32) V!26565 V!26565 (_ BitVec 32) Int) ListLongMap!9433)

(assert (=> b!850076 (= lt!382637 (getCurrentListMapNoExtraKeys!2719 _keys!868 lt!382629 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850077 () Bool)

(declare-fun res!577586 () Bool)

(assert (=> b!850077 (=> (not res!577586) (not e!474248))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!850077 (= res!577586 (validMask!0 mask!1196))))

(declare-fun b!850078 () Bool)

(declare-fun res!577585 () Bool)

(assert (=> b!850078 (=> (not res!577585) (not e!474248))))

(declare-datatypes ((List!16548 0))(
  ( (Nil!16545) (Cons!16544 (h!17675 (_ BitVec 64)) (t!23005 List!16548)) )
))
(declare-fun arrayNoDuplicates!0 (array!48472 (_ BitVec 32) List!16548) Bool)

(assert (=> b!850078 (= res!577585 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16545))))

(declare-fun b!850079 () Bool)

(declare-fun e!474251 () Bool)

(assert (=> b!850079 (= e!474248 e!474251)))

(declare-fun res!577582 () Bool)

(assert (=> b!850079 (=> (not res!577582) (not e!474251))))

(assert (=> b!850079 (= res!577582 (= from!1053 i!612))))

(assert (=> b!850079 (= lt!382630 (getCurrentListMapNoExtraKeys!2719 _keys!868 lt!382629 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!850079 (= lt!382629 (array!48471 (store (arr!23262 _values!688) i!612 (ValueCellFull!7630 v!557)) (size!23703 _values!688)))))

(declare-fun lt!382631 () ListLongMap!9433)

(assert (=> b!850079 (= lt!382631 (getCurrentListMapNoExtraKeys!2719 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!850080 () Bool)

(declare-fun res!577583 () Bool)

(assert (=> b!850080 (=> (not res!577583) (not e!474248))))

(assert (=> b!850080 (= res!577583 (and (= (select (arr!23263 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!850081 () Bool)

(assert (=> b!850081 (= e!474251 (not e!474252))))

(declare-fun res!577589 () Bool)

(assert (=> b!850081 (=> res!577589 e!474252)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!850081 (= res!577589 (not (validKeyInArray!0 (select (arr!23263 _keys!868) from!1053))))))

(declare-fun e!474245 () Bool)

(assert (=> b!850081 e!474245))

(declare-fun c!91593 () Bool)

(assert (=> b!850081 (= c!91593 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!382635 () Unit!29002)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!348 (array!48472 array!48470 (_ BitVec 32) (_ BitVec 32) V!26565 V!26565 (_ BitVec 32) (_ BitVec 64) V!26565 (_ BitVec 32) Int) Unit!29002)

(assert (=> b!850081 (= lt!382635 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!348 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850082 () Bool)

(declare-fun e!474247 () Bool)

(assert (=> b!850082 (= e!474247 tp_is_empty!16139)))

(declare-fun call!37865 () ListLongMap!9433)

(declare-fun bm!37861 () Bool)

(assert (=> bm!37861 (= call!37865 (getCurrentListMapNoExtraKeys!2719 _keys!868 lt!382629 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850083 () Bool)

(assert (=> b!850083 (= e!474250 (and e!474247 mapRes!25808))))

(declare-fun condMapEmpty!25808 () Bool)

(declare-fun mapDefault!25808 () ValueCell!7630)

