; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72926 () Bool)

(assert start!72926)

(declare-fun b_free!13813 () Bool)

(declare-fun b_next!13813 () Bool)

(assert (=> start!72926 (= b_free!13813 (not b_next!13813))))

(declare-fun tp!48944 () Bool)

(declare-fun b_and!22917 () Bool)

(assert (=> start!72926 (= tp!48944 b_and!22917)))

(declare-fun b!846148 () Bool)

(declare-fun res!574984 () Bool)

(declare-fun e!472303 () Bool)

(assert (=> b!846148 (=> (not res!574984) (not e!472303))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48098 0))(
  ( (array!48099 (arr!23076 (Array (_ BitVec 32) (_ BitVec 64))) (size!23517 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48098)

(assert (=> b!846148 (= res!574984 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23517 _keys!868))))))

(declare-fun b!846149 () Bool)

(declare-fun res!574986 () Bool)

(assert (=> b!846149 (=> (not res!574986) (not e!472303))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846149 (= res!574986 (validMask!0 mask!1196))))

(declare-fun res!574980 () Bool)

(assert (=> start!72926 (=> (not res!574980) (not e!472303))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72926 (= res!574980 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23517 _keys!868))))))

(assert (=> start!72926 e!472303))

(declare-fun tp_is_empty!15949 () Bool)

(assert (=> start!72926 tp_is_empty!15949))

(assert (=> start!72926 true))

(assert (=> start!72926 tp!48944))

(declare-fun array_inv!18316 (array!48098) Bool)

(assert (=> start!72926 (array_inv!18316 _keys!868)))

(declare-datatypes ((V!26313 0))(
  ( (V!26314 (val!8022 Int)) )
))
(declare-datatypes ((ValueCell!7535 0))(
  ( (ValueCellFull!7535 (v!10443 V!26313)) (EmptyCell!7535) )
))
(declare-datatypes ((array!48100 0))(
  ( (array!48101 (arr!23077 (Array (_ BitVec 32) ValueCell!7535)) (size!23518 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48100)

(declare-fun e!472304 () Bool)

(declare-fun array_inv!18317 (array!48100) Bool)

(assert (=> start!72926 (and (array_inv!18317 _values!688) e!472304)))

(declare-fun mapIsEmpty!25523 () Bool)

(declare-fun mapRes!25523 () Bool)

(assert (=> mapIsEmpty!25523 mapRes!25523))

(declare-fun b!846150 () Bool)

(assert (=> b!846150 (= e!472303 false)))

(declare-fun v!557 () V!26313)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!10496 0))(
  ( (tuple2!10497 (_1!5258 (_ BitVec 64)) (_2!5258 V!26313)) )
))
(declare-datatypes ((List!16407 0))(
  ( (Nil!16404) (Cons!16403 (h!17534 tuple2!10496) (t!22786 List!16407)) )
))
(declare-datatypes ((ListLongMap!9279 0))(
  ( (ListLongMap!9280 (toList!4655 List!16407)) )
))
(declare-fun lt!381456 () ListLongMap!9279)

(declare-fun minValue!654 () V!26313)

(declare-fun zeroValue!654 () V!26313)

(declare-fun getCurrentListMapNoExtraKeys!2644 (array!48098 array!48100 (_ BitVec 32) (_ BitVec 32) V!26313 V!26313 (_ BitVec 32) Int) ListLongMap!9279)

(assert (=> b!846150 (= lt!381456 (getCurrentListMapNoExtraKeys!2644 _keys!868 (array!48101 (store (arr!23077 _values!688) i!612 (ValueCellFull!7535 v!557)) (size!23518 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381455 () ListLongMap!9279)

(assert (=> b!846150 (= lt!381455 (getCurrentListMapNoExtraKeys!2644 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!846151 () Bool)

(declare-fun res!574981 () Bool)

(assert (=> b!846151 (=> (not res!574981) (not e!472303))))

(declare-datatypes ((List!16408 0))(
  ( (Nil!16405) (Cons!16404 (h!17535 (_ BitVec 64)) (t!22787 List!16408)) )
))
(declare-fun arrayNoDuplicates!0 (array!48098 (_ BitVec 32) List!16408) Bool)

(assert (=> b!846151 (= res!574981 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16405))))

(declare-fun b!846152 () Bool)

(declare-fun e!472302 () Bool)

(assert (=> b!846152 (= e!472304 (and e!472302 mapRes!25523))))

(declare-fun condMapEmpty!25523 () Bool)

(declare-fun mapDefault!25523 () ValueCell!7535)

