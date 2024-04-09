; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72942 () Bool)

(assert start!72942)

(declare-fun b_free!13829 () Bool)

(declare-fun b_next!13829 () Bool)

(assert (=> start!72942 (= b_free!13829 (not b_next!13829))))

(declare-fun tp!48991 () Bool)

(declare-fun b_and!22933 () Bool)

(assert (=> start!72942 (= tp!48991 b_and!22933)))

(declare-fun b!846412 () Bool)

(declare-fun res!575176 () Bool)

(declare-fun e!472422 () Bool)

(assert (=> b!846412 (=> (not res!575176) (not e!472422))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48128 0))(
  ( (array!48129 (arr!23091 (Array (_ BitVec 32) (_ BitVec 64))) (size!23532 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48128)

(assert (=> b!846412 (= res!575176 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23532 _keys!868))))))

(declare-fun b!846413 () Bool)

(declare-fun e!472421 () Bool)

(declare-fun tp_is_empty!15965 () Bool)

(assert (=> b!846413 (= e!472421 tp_is_empty!15965)))

(declare-fun mapIsEmpty!25547 () Bool)

(declare-fun mapRes!25547 () Bool)

(assert (=> mapIsEmpty!25547 mapRes!25547))

(declare-fun b!846414 () Bool)

(assert (=> b!846414 (= e!472422 false)))

(declare-datatypes ((V!26333 0))(
  ( (V!26334 (val!8030 Int)) )
))
(declare-datatypes ((tuple2!10508 0))(
  ( (tuple2!10509 (_1!5264 (_ BitVec 64)) (_2!5264 V!26333)) )
))
(declare-datatypes ((List!16419 0))(
  ( (Nil!16416) (Cons!16415 (h!17546 tuple2!10508) (t!22798 List!16419)) )
))
(declare-datatypes ((ListLongMap!9291 0))(
  ( (ListLongMap!9292 (toList!4661 List!16419)) )
))
(declare-fun lt!381504 () ListLongMap!9291)

(declare-fun v!557 () V!26333)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7543 0))(
  ( (ValueCellFull!7543 (v!10451 V!26333)) (EmptyCell!7543) )
))
(declare-datatypes ((array!48130 0))(
  ( (array!48131 (arr!23092 (Array (_ BitVec 32) ValueCell!7543)) (size!23533 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48130)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26333)

(declare-fun zeroValue!654 () V!26333)

(declare-fun getCurrentListMapNoExtraKeys!2650 (array!48128 array!48130 (_ BitVec 32) (_ BitVec 32) V!26333 V!26333 (_ BitVec 32) Int) ListLongMap!9291)

(assert (=> b!846414 (= lt!381504 (getCurrentListMapNoExtraKeys!2650 _keys!868 (array!48131 (store (arr!23092 _values!688) i!612 (ValueCellFull!7543 v!557)) (size!23533 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381503 () ListLongMap!9291)

(assert (=> b!846414 (= lt!381503 (getCurrentListMapNoExtraKeys!2650 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!575178 () Bool)

(assert (=> start!72942 (=> (not res!575178) (not e!472422))))

(assert (=> start!72942 (= res!575178 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23532 _keys!868))))))

(assert (=> start!72942 e!472422))

(assert (=> start!72942 tp_is_empty!15965))

(assert (=> start!72942 true))

(assert (=> start!72942 tp!48991))

(declare-fun array_inv!18324 (array!48128) Bool)

(assert (=> start!72942 (array_inv!18324 _keys!868)))

(declare-fun e!472423 () Bool)

(declare-fun array_inv!18325 (array!48130) Bool)

(assert (=> start!72942 (and (array_inv!18325 _values!688) e!472423)))

(declare-fun b!846415 () Bool)

(assert (=> b!846415 (= e!472423 (and e!472421 mapRes!25547))))

(declare-fun condMapEmpty!25547 () Bool)

(declare-fun mapDefault!25547 () ValueCell!7543)

