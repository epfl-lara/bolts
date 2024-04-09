; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72872 () Bool)

(assert start!72872)

(declare-fun b_free!13759 () Bool)

(declare-fun b_next!13759 () Bool)

(assert (=> start!72872 (= b_free!13759 (not b_next!13759))))

(declare-fun tp!48781 () Bool)

(declare-fun b_and!22863 () Bool)

(assert (=> start!72872 (= tp!48781 b_and!22863)))

(declare-fun b!845257 () Bool)

(declare-fun res!574332 () Bool)

(declare-fun e!471900 () Bool)

(assert (=> b!845257 (=> (not res!574332) (not e!471900))))

(declare-datatypes ((array!47994 0))(
  ( (array!47995 (arr!23024 (Array (_ BitVec 32) (_ BitVec 64))) (size!23465 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47994)

(declare-datatypes ((List!16370 0))(
  ( (Nil!16367) (Cons!16366 (h!17497 (_ BitVec 64)) (t!22749 List!16370)) )
))
(declare-fun arrayNoDuplicates!0 (array!47994 (_ BitVec 32) List!16370) Bool)

(assert (=> b!845257 (= res!574332 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16367))))

(declare-fun b!845258 () Bool)

(declare-fun res!574337 () Bool)

(assert (=> b!845258 (=> (not res!574337) (not e!471900))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!845258 (= res!574337 (validKeyInArray!0 k!854))))

(declare-fun b!845259 () Bool)

(declare-fun res!574338 () Bool)

(assert (=> b!845259 (=> (not res!574338) (not e!471900))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!845259 (= res!574338 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23465 _keys!868))))))

(declare-fun b!845260 () Bool)

(declare-fun res!574335 () Bool)

(assert (=> b!845260 (=> (not res!574335) (not e!471900))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845260 (= res!574335 (validMask!0 mask!1196))))

(declare-fun b!845261 () Bool)

(declare-fun res!574333 () Bool)

(assert (=> b!845261 (=> (not res!574333) (not e!471900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47994 (_ BitVec 32)) Bool)

(assert (=> b!845261 (= res!574333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!845262 () Bool)

(declare-fun res!574331 () Bool)

(assert (=> b!845262 (=> (not res!574331) (not e!471900))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!845262 (= res!574331 (and (= (select (arr!23024 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!25442 () Bool)

(declare-fun mapRes!25442 () Bool)

(assert (=> mapIsEmpty!25442 mapRes!25442))

(declare-fun b!845263 () Bool)

(declare-fun res!574336 () Bool)

(assert (=> b!845263 (=> (not res!574336) (not e!471900))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!26241 0))(
  ( (V!26242 (val!7995 Int)) )
))
(declare-datatypes ((ValueCell!7508 0))(
  ( (ValueCellFull!7508 (v!10416 V!26241)) (EmptyCell!7508) )
))
(declare-datatypes ((array!47996 0))(
  ( (array!47997 (arr!23025 (Array (_ BitVec 32) ValueCell!7508)) (size!23466 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47996)

(assert (=> b!845263 (= res!574336 (and (= (size!23466 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23465 _keys!868) (size!23466 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!845264 () Bool)

(assert (=> b!845264 (= e!471900 false)))

(declare-datatypes ((tuple2!10458 0))(
  ( (tuple2!10459 (_1!5239 (_ BitVec 64)) (_2!5239 V!26241)) )
))
(declare-datatypes ((List!16371 0))(
  ( (Nil!16368) (Cons!16367 (h!17498 tuple2!10458) (t!22750 List!16371)) )
))
(declare-datatypes ((ListLongMap!9241 0))(
  ( (ListLongMap!9242 (toList!4636 List!16371)) )
))
(declare-fun lt!381354 () ListLongMap!9241)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!26241)

(declare-fun zeroValue!654 () V!26241)

(declare-fun getCurrentListMapNoExtraKeys!2625 (array!47994 array!47996 (_ BitVec 32) (_ BitVec 32) V!26241 V!26241 (_ BitVec 32) Int) ListLongMap!9241)

(assert (=> b!845264 (= lt!381354 (getCurrentListMapNoExtraKeys!2625 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!574334 () Bool)

(assert (=> start!72872 (=> (not res!574334) (not e!471900))))

(assert (=> start!72872 (= res!574334 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23465 _keys!868))))))

(assert (=> start!72872 e!471900))

(assert (=> start!72872 true))

(assert (=> start!72872 tp!48781))

(declare-fun array_inv!18278 (array!47994) Bool)

(assert (=> start!72872 (array_inv!18278 _keys!868)))

(declare-fun e!471898 () Bool)

(declare-fun array_inv!18279 (array!47996) Bool)

(assert (=> start!72872 (and (array_inv!18279 _values!688) e!471898)))

(declare-fun tp_is_empty!15895 () Bool)

(assert (=> start!72872 tp_is_empty!15895))

(declare-fun b!845265 () Bool)

(declare-fun e!471896 () Bool)

(assert (=> b!845265 (= e!471896 tp_is_empty!15895)))

(declare-fun b!845266 () Bool)

(declare-fun e!471897 () Bool)

(assert (=> b!845266 (= e!471897 tp_is_empty!15895)))

(declare-fun b!845267 () Bool)

(assert (=> b!845267 (= e!471898 (and e!471897 mapRes!25442))))

(declare-fun condMapEmpty!25442 () Bool)

(declare-fun mapDefault!25442 () ValueCell!7508)

