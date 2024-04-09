; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72876 () Bool)

(assert start!72876)

(declare-fun b_free!13763 () Bool)

(declare-fun b_next!13763 () Bool)

(assert (=> start!72876 (= b_free!13763 (not b_next!13763))))

(declare-fun tp!48793 () Bool)

(declare-fun b_and!22867 () Bool)

(assert (=> start!72876 (= tp!48793 b_and!22867)))

(declare-fun b!845323 () Bool)

(declare-fun e!471928 () Bool)

(declare-fun tp_is_empty!15899 () Bool)

(assert (=> b!845323 (= e!471928 tp_is_empty!15899)))

(declare-fun b!845324 () Bool)

(declare-fun res!574381 () Bool)

(declare-fun e!471926 () Bool)

(assert (=> b!845324 (=> (not res!574381) (not e!471926))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845324 (= res!574381 (validMask!0 mask!1196))))

(declare-fun b!845325 () Bool)

(declare-fun res!574382 () Bool)

(assert (=> b!845325 (=> (not res!574382) (not e!471926))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!845325 (= res!574382 (validKeyInArray!0 k!854))))

(declare-fun b!845326 () Bool)

(declare-fun res!574379 () Bool)

(assert (=> b!845326 (=> (not res!574379) (not e!471926))))

(declare-datatypes ((array!48002 0))(
  ( (array!48003 (arr!23028 (Array (_ BitVec 32) (_ BitVec 64))) (size!23469 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48002)

(declare-datatypes ((List!16374 0))(
  ( (Nil!16371) (Cons!16370 (h!17501 (_ BitVec 64)) (t!22753 List!16374)) )
))
(declare-fun arrayNoDuplicates!0 (array!48002 (_ BitVec 32) List!16374) Bool)

(assert (=> b!845326 (= res!574379 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16371))))

(declare-fun b!845327 () Bool)

(assert (=> b!845327 (= e!471926 false)))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!26245 0))(
  ( (V!26246 (val!7997 Int)) )
))
(declare-datatypes ((ValueCell!7510 0))(
  ( (ValueCellFull!7510 (v!10418 V!26245)) (EmptyCell!7510) )
))
(declare-datatypes ((array!48004 0))(
  ( (array!48005 (arr!23029 (Array (_ BitVec 32) ValueCell!7510)) (size!23470 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48004)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26245)

(declare-fun zeroValue!654 () V!26245)

(declare-datatypes ((tuple2!10462 0))(
  ( (tuple2!10463 (_1!5241 (_ BitVec 64)) (_2!5241 V!26245)) )
))
(declare-datatypes ((List!16375 0))(
  ( (Nil!16372) (Cons!16371 (h!17502 tuple2!10462) (t!22754 List!16375)) )
))
(declare-datatypes ((ListLongMap!9245 0))(
  ( (ListLongMap!9246 (toList!4638 List!16375)) )
))
(declare-fun lt!381360 () ListLongMap!9245)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2627 (array!48002 array!48004 (_ BitVec 32) (_ BitVec 32) V!26245 V!26245 (_ BitVec 32) Int) ListLongMap!9245)

(assert (=> b!845327 (= lt!381360 (getCurrentListMapNoExtraKeys!2627 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!845329 () Bool)

(declare-fun res!574380 () Bool)

(assert (=> b!845329 (=> (not res!574380) (not e!471926))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48002 (_ BitVec 32)) Bool)

(assert (=> b!845329 (= res!574380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!845330 () Bool)

(declare-fun res!574385 () Bool)

(assert (=> b!845330 (=> (not res!574385) (not e!471926))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!845330 (= res!574385 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23469 _keys!868))))))

(declare-fun b!845331 () Bool)

(declare-fun e!471929 () Bool)

(assert (=> b!845331 (= e!471929 tp_is_empty!15899)))

(declare-fun mapNonEmpty!25448 () Bool)

(declare-fun mapRes!25448 () Bool)

(declare-fun tp!48794 () Bool)

(assert (=> mapNonEmpty!25448 (= mapRes!25448 (and tp!48794 e!471928))))

(declare-fun mapValue!25448 () ValueCell!7510)

(declare-fun mapKey!25448 () (_ BitVec 32))

(declare-fun mapRest!25448 () (Array (_ BitVec 32) ValueCell!7510))

(assert (=> mapNonEmpty!25448 (= (arr!23029 _values!688) (store mapRest!25448 mapKey!25448 mapValue!25448))))

(declare-fun b!845332 () Bool)

(declare-fun res!574386 () Bool)

(assert (=> b!845332 (=> (not res!574386) (not e!471926))))

(assert (=> b!845332 (= res!574386 (and (= (select (arr!23028 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!25448 () Bool)

(assert (=> mapIsEmpty!25448 mapRes!25448))

(declare-fun b!845333 () Bool)

(declare-fun res!574383 () Bool)

(assert (=> b!845333 (=> (not res!574383) (not e!471926))))

(assert (=> b!845333 (= res!574383 (and (= (size!23470 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23469 _keys!868) (size!23470 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!845328 () Bool)

(declare-fun e!471927 () Bool)

(assert (=> b!845328 (= e!471927 (and e!471929 mapRes!25448))))

(declare-fun condMapEmpty!25448 () Bool)

(declare-fun mapDefault!25448 () ValueCell!7510)

