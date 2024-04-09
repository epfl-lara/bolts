; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72932 () Bool)

(assert start!72932)

(declare-fun b_free!13819 () Bool)

(declare-fun b_next!13819 () Bool)

(assert (=> start!72932 (= b_free!13819 (not b_next!13819))))

(declare-fun tp!48961 () Bool)

(declare-fun b_and!22923 () Bool)

(assert (=> start!72932 (= tp!48961 b_and!22923)))

(declare-fun b!846247 () Bool)

(declare-fun res!575055 () Bool)

(declare-fun e!472349 () Bool)

(assert (=> b!846247 (=> (not res!575055) (not e!472349))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846247 (= res!575055 (validMask!0 mask!1196))))

(declare-fun b!846248 () Bool)

(declare-fun e!472346 () Bool)

(declare-fun tp_is_empty!15955 () Bool)

(assert (=> b!846248 (= e!472346 tp_is_empty!15955)))

(declare-fun b!846249 () Bool)

(assert (=> b!846249 (= e!472349 false)))

(declare-datatypes ((V!26321 0))(
  ( (V!26322 (val!8025 Int)) )
))
(declare-fun v!557 () V!26321)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!48108 0))(
  ( (array!48109 (arr!23081 (Array (_ BitVec 32) (_ BitVec 64))) (size!23522 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48108)

(declare-datatypes ((ValueCell!7538 0))(
  ( (ValueCellFull!7538 (v!10446 V!26321)) (EmptyCell!7538) )
))
(declare-datatypes ((array!48110 0))(
  ( (array!48111 (arr!23082 (Array (_ BitVec 32) ValueCell!7538)) (size!23523 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48110)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26321)

(declare-fun zeroValue!654 () V!26321)

(declare-datatypes ((tuple2!10500 0))(
  ( (tuple2!10501 (_1!5260 (_ BitVec 64)) (_2!5260 V!26321)) )
))
(declare-datatypes ((List!16411 0))(
  ( (Nil!16408) (Cons!16407 (h!17538 tuple2!10500) (t!22790 List!16411)) )
))
(declare-datatypes ((ListLongMap!9283 0))(
  ( (ListLongMap!9284 (toList!4657 List!16411)) )
))
(declare-fun lt!381474 () ListLongMap!9283)

(declare-fun getCurrentListMapNoExtraKeys!2646 (array!48108 array!48110 (_ BitVec 32) (_ BitVec 32) V!26321 V!26321 (_ BitVec 32) Int) ListLongMap!9283)

(assert (=> b!846249 (= lt!381474 (getCurrentListMapNoExtraKeys!2646 _keys!868 (array!48111 (store (arr!23082 _values!688) i!612 (ValueCellFull!7538 v!557)) (size!23523 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381473 () ListLongMap!9283)

(assert (=> b!846249 (= lt!381473 (getCurrentListMapNoExtraKeys!2646 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!846250 () Bool)

(declare-fun res!575057 () Bool)

(assert (=> b!846250 (=> (not res!575057) (not e!472349))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!846250 (= res!575057 (validKeyInArray!0 k!854))))

(declare-fun b!846251 () Bool)

(declare-fun res!575056 () Bool)

(assert (=> b!846251 (=> (not res!575056) (not e!472349))))

(assert (=> b!846251 (= res!575056 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23522 _keys!868))))))

(declare-fun mapIsEmpty!25532 () Bool)

(declare-fun mapRes!25532 () Bool)

(assert (=> mapIsEmpty!25532 mapRes!25532))

(declare-fun b!846252 () Bool)

(declare-fun res!575054 () Bool)

(assert (=> b!846252 (=> (not res!575054) (not e!472349))))

(declare-datatypes ((List!16412 0))(
  ( (Nil!16409) (Cons!16408 (h!17539 (_ BitVec 64)) (t!22791 List!16412)) )
))
(declare-fun arrayNoDuplicates!0 (array!48108 (_ BitVec 32) List!16412) Bool)

(assert (=> b!846252 (= res!575054 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16409))))

(declare-fun b!846254 () Bool)

(declare-fun res!575051 () Bool)

(assert (=> b!846254 (=> (not res!575051) (not e!472349))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48108 (_ BitVec 32)) Bool)

(assert (=> b!846254 (= res!575051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25532 () Bool)

(declare-fun tp!48962 () Bool)

(declare-fun e!472350 () Bool)

(assert (=> mapNonEmpty!25532 (= mapRes!25532 (and tp!48962 e!472350))))

(declare-fun mapRest!25532 () (Array (_ BitVec 32) ValueCell!7538))

(declare-fun mapKey!25532 () (_ BitVec 32))

(declare-fun mapValue!25532 () ValueCell!7538)

(assert (=> mapNonEmpty!25532 (= (arr!23082 _values!688) (store mapRest!25532 mapKey!25532 mapValue!25532))))

(declare-fun b!846255 () Bool)

(declare-fun res!575052 () Bool)

(assert (=> b!846255 (=> (not res!575052) (not e!472349))))

(assert (=> b!846255 (= res!575052 (and (= (size!23523 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23522 _keys!868) (size!23523 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!846256 () Bool)

(assert (=> b!846256 (= e!472350 tp_is_empty!15955)))

(declare-fun b!846257 () Bool)

(declare-fun e!472347 () Bool)

(assert (=> b!846257 (= e!472347 (and e!472346 mapRes!25532))))

(declare-fun condMapEmpty!25532 () Bool)

(declare-fun mapDefault!25532 () ValueCell!7538)

