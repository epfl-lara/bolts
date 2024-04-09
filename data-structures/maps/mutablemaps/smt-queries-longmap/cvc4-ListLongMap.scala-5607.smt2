; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73458 () Bool)

(assert start!73458)

(declare-fun b_free!14345 () Bool)

(declare-fun b_next!14345 () Bool)

(assert (=> start!73458 (= b_free!14345 (not b_next!14345))))

(declare-fun tp!50540 () Bool)

(declare-fun b_and!23719 () Bool)

(assert (=> start!73458 (= tp!50540 b_and!23719)))

(declare-fun b!857184 () Bool)

(declare-fun res!582381 () Bool)

(declare-fun e!477795 () Bool)

(assert (=> b!857184 (=> (not res!582381) (not e!477795))))

(declare-datatypes ((array!49126 0))(
  ( (array!49127 (arr!23590 (Array (_ BitVec 32) (_ BitVec 64))) (size!24031 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49126)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49126 (_ BitVec 32)) Bool)

(assert (=> b!857184 (= res!582381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!26321 () Bool)

(declare-fun mapRes!26321 () Bool)

(assert (=> mapIsEmpty!26321 mapRes!26321))

(declare-fun b!857185 () Bool)

(declare-fun res!582380 () Bool)

(assert (=> b!857185 (=> (not res!582380) (not e!477795))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!857185 (= res!582380 (validKeyInArray!0 k!854))))

(declare-fun res!582382 () Bool)

(assert (=> start!73458 (=> (not res!582382) (not e!477795))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73458 (= res!582382 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24031 _keys!868))))))

(assert (=> start!73458 e!477795))

(declare-fun tp_is_empty!16481 () Bool)

(assert (=> start!73458 tp_is_empty!16481))

(assert (=> start!73458 true))

(assert (=> start!73458 tp!50540))

(declare-fun array_inv!18670 (array!49126) Bool)

(assert (=> start!73458 (array_inv!18670 _keys!868)))

(declare-datatypes ((V!27021 0))(
  ( (V!27022 (val!8288 Int)) )
))
(declare-datatypes ((ValueCell!7801 0))(
  ( (ValueCellFull!7801 (v!10709 V!27021)) (EmptyCell!7801) )
))
(declare-datatypes ((array!49128 0))(
  ( (array!49129 (arr!23591 (Array (_ BitVec 32) ValueCell!7801)) (size!24032 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49128)

(declare-fun e!477797 () Bool)

(declare-fun array_inv!18671 (array!49128) Bool)

(assert (=> start!73458 (and (array_inv!18671 _values!688) e!477797)))

(declare-fun b!857186 () Bool)

(declare-fun e!477796 () Bool)

(assert (=> b!857186 (= e!477795 e!477796)))

(declare-fun res!582384 () Bool)

(assert (=> b!857186 (=> (not res!582384) (not e!477796))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!857186 (= res!582384 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((tuple2!10920 0))(
  ( (tuple2!10921 (_1!5470 (_ BitVec 64)) (_2!5470 V!27021)) )
))
(declare-datatypes ((List!16791 0))(
  ( (Nil!16788) (Cons!16787 (h!17918 tuple2!10920) (t!23440 List!16791)) )
))
(declare-datatypes ((ListLongMap!9703 0))(
  ( (ListLongMap!9704 (toList!4867 List!16791)) )
))
(declare-fun lt!386201 () ListLongMap!9703)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!386202 () array!49128)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27021)

(declare-fun zeroValue!654 () V!27021)

(declare-fun getCurrentListMapNoExtraKeys!2849 (array!49126 array!49128 (_ BitVec 32) (_ BitVec 32) V!27021 V!27021 (_ BitVec 32) Int) ListLongMap!9703)

(assert (=> b!857186 (= lt!386201 (getCurrentListMapNoExtraKeys!2849 _keys!868 lt!386202 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27021)

(assert (=> b!857186 (= lt!386202 (array!49129 (store (arr!23591 _values!688) i!612 (ValueCellFull!7801 v!557)) (size!24032 _values!688)))))

(declare-fun lt!386199 () ListLongMap!9703)

(assert (=> b!857186 (= lt!386199 (getCurrentListMapNoExtraKeys!2849 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!857187 () Bool)

(declare-fun res!582385 () Bool)

(assert (=> b!857187 (=> (not res!582385) (not e!477795))))

(assert (=> b!857187 (= res!582385 (and (= (select (arr!23590 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!857188 () Bool)

(declare-fun res!582387 () Bool)

(assert (=> b!857188 (=> (not res!582387) (not e!477795))))

(assert (=> b!857188 (= res!582387 (and (= (size!24032 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24031 _keys!868) (size!24032 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!857189 () Bool)

(declare-fun e!477794 () Bool)

(assert (=> b!857189 (= e!477794 tp_is_empty!16481)))

(declare-fun mapNonEmpty!26321 () Bool)

(declare-fun tp!50539 () Bool)

(assert (=> mapNonEmpty!26321 (= mapRes!26321 (and tp!50539 e!477794))))

(declare-fun mapRest!26321 () (Array (_ BitVec 32) ValueCell!7801))

(declare-fun mapValue!26321 () ValueCell!7801)

(declare-fun mapKey!26321 () (_ BitVec 32))

(assert (=> mapNonEmpty!26321 (= (arr!23591 _values!688) (store mapRest!26321 mapKey!26321 mapValue!26321))))

(declare-fun b!857190 () Bool)

(declare-fun res!582383 () Bool)

(assert (=> b!857190 (=> (not res!582383) (not e!477795))))

(declare-datatypes ((List!16792 0))(
  ( (Nil!16789) (Cons!16788 (h!17919 (_ BitVec 64)) (t!23441 List!16792)) )
))
(declare-fun arrayNoDuplicates!0 (array!49126 (_ BitVec 32) List!16792) Bool)

(assert (=> b!857190 (= res!582383 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16789))))

(declare-fun b!857191 () Bool)

(assert (=> b!857191 (= e!477796 (not true))))

(declare-fun +!2175 (ListLongMap!9703 tuple2!10920) ListLongMap!9703)

(assert (=> b!857191 (= (getCurrentListMapNoExtraKeys!2849 _keys!868 lt!386202 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2175 (getCurrentListMapNoExtraKeys!2849 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10921 k!854 v!557)))))

(declare-datatypes ((Unit!29192 0))(
  ( (Unit!29193) )
))
(declare-fun lt!386200 () Unit!29192)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!435 (array!49126 array!49128 (_ BitVec 32) (_ BitVec 32) V!27021 V!27021 (_ BitVec 32) (_ BitVec 64) V!27021 (_ BitVec 32) Int) Unit!29192)

(assert (=> b!857191 (= lt!386200 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!435 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!857192 () Bool)

(declare-fun res!582379 () Bool)

(assert (=> b!857192 (=> (not res!582379) (not e!477795))))

(assert (=> b!857192 (= res!582379 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24031 _keys!868))))))

(declare-fun b!857193 () Bool)

(declare-fun e!477793 () Bool)

(assert (=> b!857193 (= e!477793 tp_is_empty!16481)))

(declare-fun b!857194 () Bool)

(assert (=> b!857194 (= e!477797 (and e!477793 mapRes!26321))))

(declare-fun condMapEmpty!26321 () Bool)

(declare-fun mapDefault!26321 () ValueCell!7801)

