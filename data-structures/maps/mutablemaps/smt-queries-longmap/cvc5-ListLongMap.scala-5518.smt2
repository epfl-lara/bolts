; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72920 () Bool)

(assert start!72920)

(declare-fun b_free!13807 () Bool)

(declare-fun b_next!13807 () Bool)

(assert (=> start!72920 (= b_free!13807 (not b_next!13807))))

(declare-fun tp!48926 () Bool)

(declare-fun b_and!22911 () Bool)

(assert (=> start!72920 (= tp!48926 b_and!22911)))

(declare-fun b!846049 () Bool)

(declare-fun res!574912 () Bool)

(declare-fun e!472257 () Bool)

(assert (=> b!846049 (=> (not res!574912) (not e!472257))))

(declare-datatypes ((array!48086 0))(
  ( (array!48087 (arr!23070 (Array (_ BitVec 32) (_ BitVec 64))) (size!23511 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48086)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48086 (_ BitVec 32)) Bool)

(assert (=> b!846049 (= res!574912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!846050 () Bool)

(declare-fun res!574913 () Bool)

(assert (=> b!846050 (=> (not res!574913) (not e!472257))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!846050 (= res!574913 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23511 _keys!868))))))

(declare-fun b!846051 () Bool)

(declare-fun res!574910 () Bool)

(assert (=> b!846051 (=> (not res!574910) (not e!472257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846051 (= res!574910 (validMask!0 mask!1196))))

(declare-fun b!846052 () Bool)

(declare-fun res!574907 () Bool)

(assert (=> b!846052 (=> (not res!574907) (not e!472257))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!846052 (= res!574907 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!25514 () Bool)

(declare-fun mapRes!25514 () Bool)

(assert (=> mapIsEmpty!25514 mapRes!25514))

(declare-fun b!846053 () Bool)

(declare-fun res!574908 () Bool)

(assert (=> b!846053 (=> (not res!574908) (not e!472257))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!846053 (= res!574908 (and (= (select (arr!23070 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!846054 () Bool)

(declare-fun res!574909 () Bool)

(assert (=> b!846054 (=> (not res!574909) (not e!472257))))

(declare-datatypes ((V!26305 0))(
  ( (V!26306 (val!8019 Int)) )
))
(declare-datatypes ((ValueCell!7532 0))(
  ( (ValueCellFull!7532 (v!10440 V!26305)) (EmptyCell!7532) )
))
(declare-datatypes ((array!48088 0))(
  ( (array!48089 (arr!23071 (Array (_ BitVec 32) ValueCell!7532)) (size!23512 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48088)

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!846054 (= res!574909 (and (= (size!23512 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23511 _keys!868) (size!23512 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!846055 () Bool)

(declare-fun res!574911 () Bool)

(assert (=> b!846055 (=> (not res!574911) (not e!472257))))

(declare-datatypes ((List!16403 0))(
  ( (Nil!16400) (Cons!16399 (h!17530 (_ BitVec 64)) (t!22782 List!16403)) )
))
(declare-fun arrayNoDuplicates!0 (array!48086 (_ BitVec 32) List!16403) Bool)

(assert (=> b!846055 (= res!574911 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16400))))

(declare-fun res!574914 () Bool)

(assert (=> start!72920 (=> (not res!574914) (not e!472257))))

(assert (=> start!72920 (= res!574914 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23511 _keys!868))))))

(assert (=> start!72920 e!472257))

(declare-fun tp_is_empty!15943 () Bool)

(assert (=> start!72920 tp_is_empty!15943))

(assert (=> start!72920 true))

(assert (=> start!72920 tp!48926))

(declare-fun array_inv!18310 (array!48086) Bool)

(assert (=> start!72920 (array_inv!18310 _keys!868)))

(declare-fun e!472258 () Bool)

(declare-fun array_inv!18311 (array!48088) Bool)

(assert (=> start!72920 (and (array_inv!18311 _values!688) e!472258)))

(declare-fun b!846056 () Bool)

(assert (=> b!846056 (= e!472257 false)))

(declare-fun v!557 () V!26305)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10492 0))(
  ( (tuple2!10493 (_1!5256 (_ BitVec 64)) (_2!5256 V!26305)) )
))
(declare-datatypes ((List!16404 0))(
  ( (Nil!16401) (Cons!16400 (h!17531 tuple2!10492) (t!22783 List!16404)) )
))
(declare-datatypes ((ListLongMap!9275 0))(
  ( (ListLongMap!9276 (toList!4653 List!16404)) )
))
(declare-fun lt!381437 () ListLongMap!9275)

(declare-fun minValue!654 () V!26305)

(declare-fun zeroValue!654 () V!26305)

(declare-fun getCurrentListMapNoExtraKeys!2642 (array!48086 array!48088 (_ BitVec 32) (_ BitVec 32) V!26305 V!26305 (_ BitVec 32) Int) ListLongMap!9275)

(assert (=> b!846056 (= lt!381437 (getCurrentListMapNoExtraKeys!2642 _keys!868 (array!48089 (store (arr!23071 _values!688) i!612 (ValueCellFull!7532 v!557)) (size!23512 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381438 () ListLongMap!9275)

(assert (=> b!846056 (= lt!381438 (getCurrentListMapNoExtraKeys!2642 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!846057 () Bool)

(declare-fun e!472256 () Bool)

(assert (=> b!846057 (= e!472256 tp_is_empty!15943)))

(declare-fun b!846058 () Bool)

(assert (=> b!846058 (= e!472258 (and e!472256 mapRes!25514))))

(declare-fun condMapEmpty!25514 () Bool)

(declare-fun mapDefault!25514 () ValueCell!7532)

