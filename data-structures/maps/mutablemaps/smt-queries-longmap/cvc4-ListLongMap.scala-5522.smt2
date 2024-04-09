; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72948 () Bool)

(assert start!72948)

(declare-fun b_free!13835 () Bool)

(declare-fun b_next!13835 () Bool)

(assert (=> start!72948 (= b_free!13835 (not b_next!13835))))

(declare-fun tp!49010 () Bool)

(declare-fun b_and!22939 () Bool)

(assert (=> start!72948 (= tp!49010 b_and!22939)))

(declare-fun b!846511 () Bool)

(declare-fun e!472466 () Bool)

(declare-fun tp_is_empty!15971 () Bool)

(assert (=> b!846511 (= e!472466 tp_is_empty!15971)))

(declare-fun b!846512 () Bool)

(declare-fun e!472467 () Bool)

(assert (=> b!846512 (= e!472467 tp_is_empty!15971)))

(declare-fun res!575249 () Bool)

(declare-fun e!472470 () Bool)

(assert (=> start!72948 (=> (not res!575249) (not e!472470))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48140 0))(
  ( (array!48141 (arr!23097 (Array (_ BitVec 32) (_ BitVec 64))) (size!23538 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48140)

(assert (=> start!72948 (= res!575249 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23538 _keys!868))))))

(assert (=> start!72948 e!472470))

(assert (=> start!72948 tp_is_empty!15971))

(assert (=> start!72948 true))

(assert (=> start!72948 tp!49010))

(declare-fun array_inv!18330 (array!48140) Bool)

(assert (=> start!72948 (array_inv!18330 _keys!868)))

(declare-datatypes ((V!26341 0))(
  ( (V!26342 (val!8033 Int)) )
))
(declare-datatypes ((ValueCell!7546 0))(
  ( (ValueCellFull!7546 (v!10454 V!26341)) (EmptyCell!7546) )
))
(declare-datatypes ((array!48142 0))(
  ( (array!48143 (arr!23098 (Array (_ BitVec 32) ValueCell!7546)) (size!23539 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48142)

(declare-fun e!472468 () Bool)

(declare-fun array_inv!18331 (array!48142) Bool)

(assert (=> start!72948 (and (array_inv!18331 _values!688) e!472468)))

(declare-fun b!846513 () Bool)

(assert (=> b!846513 (= e!472470 false)))

(declare-fun v!557 () V!26341)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!10512 0))(
  ( (tuple2!10513 (_1!5266 (_ BitVec 64)) (_2!5266 V!26341)) )
))
(declare-datatypes ((List!16423 0))(
  ( (Nil!16420) (Cons!16419 (h!17550 tuple2!10512) (t!22802 List!16423)) )
))
(declare-datatypes ((ListLongMap!9295 0))(
  ( (ListLongMap!9296 (toList!4663 List!16423)) )
))
(declare-fun lt!381522 () ListLongMap!9295)

(declare-fun minValue!654 () V!26341)

(declare-fun zeroValue!654 () V!26341)

(declare-fun getCurrentListMapNoExtraKeys!2652 (array!48140 array!48142 (_ BitVec 32) (_ BitVec 32) V!26341 V!26341 (_ BitVec 32) Int) ListLongMap!9295)

(assert (=> b!846513 (= lt!381522 (getCurrentListMapNoExtraKeys!2652 _keys!868 (array!48143 (store (arr!23098 _values!688) i!612 (ValueCellFull!7546 v!557)) (size!23539 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381521 () ListLongMap!9295)

(assert (=> b!846513 (= lt!381521 (getCurrentListMapNoExtraKeys!2652 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!846514 () Bool)

(declare-fun res!575247 () Bool)

(assert (=> b!846514 (=> (not res!575247) (not e!472470))))

(assert (=> b!846514 (= res!575247 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23538 _keys!868))))))

(declare-fun mapIsEmpty!25556 () Bool)

(declare-fun mapRes!25556 () Bool)

(assert (=> mapIsEmpty!25556 mapRes!25556))

(declare-fun b!846515 () Bool)

(declare-fun res!575248 () Bool)

(assert (=> b!846515 (=> (not res!575248) (not e!472470))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!846515 (= res!575248 (validKeyInArray!0 k!854))))

(declare-fun b!846516 () Bool)

(assert (=> b!846516 (= e!472468 (and e!472466 mapRes!25556))))

(declare-fun condMapEmpty!25556 () Bool)

(declare-fun mapDefault!25556 () ValueCell!7546)

