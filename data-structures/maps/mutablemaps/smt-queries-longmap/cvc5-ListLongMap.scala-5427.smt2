; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72374 () Bool)

(assert start!72374)

(declare-fun b_free!13531 () Bool)

(declare-fun b_next!13531 () Bool)

(assert (=> start!72374 (= b_free!13531 (not b_next!13531))))

(declare-fun tp!47692 () Bool)

(declare-fun b_and!22635 () Bool)

(assert (=> start!72374 (= tp!47692 b_and!22635)))

(declare-fun b!838016 () Bool)

(declare-fun res!569982 () Bool)

(declare-fun e!467843 () Bool)

(assert (=> b!838016 (=> (not res!569982) (not e!467843))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47048 0))(
  ( (array!47049 (arr!22551 (Array (_ BitVec 32) (_ BitVec 64))) (size!22992 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47048)

(assert (=> b!838016 (= res!569982 (and (= (select (arr!22551 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!22992 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!838017 () Bool)

(declare-fun res!569980 () Bool)

(assert (=> b!838017 (=> (not res!569980) (not e!467843))))

(declare-datatypes ((List!16102 0))(
  ( (Nil!16099) (Cons!16098 (h!17229 (_ BitVec 64)) (t!22481 List!16102)) )
))
(declare-fun arrayNoDuplicates!0 (array!47048 (_ BitVec 32) List!16102) Bool)

(assert (=> b!838017 (= res!569980 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16099))))

(declare-fun bm!36823 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!25577 0))(
  ( (V!25578 (val!7746 Int)) )
))
(declare-datatypes ((tuple2!10262 0))(
  ( (tuple2!10263 (_1!5141 (_ BitVec 64)) (_2!5141 V!25577)) )
))
(declare-datatypes ((List!16103 0))(
  ( (Nil!16100) (Cons!16099 (h!17230 tuple2!10262) (t!22482 List!16103)) )
))
(declare-datatypes ((ListLongMap!9045 0))(
  ( (ListLongMap!9046 (toList!4538 List!16103)) )
))
(declare-fun call!36826 () ListLongMap!9045)

(declare-datatypes ((ValueCell!7259 0))(
  ( (ValueCellFull!7259 (v!10167 V!25577)) (EmptyCell!7259) )
))
(declare-datatypes ((array!47050 0))(
  ( (array!47051 (arr!22552 (Array (_ BitVec 32) ValueCell!7259)) (size!22993 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47050)

(declare-fun minValue!654 () V!25577)

(declare-fun zeroValue!654 () V!25577)

(declare-fun getCurrentListMapNoExtraKeys!2533 (array!47048 array!47050 (_ BitVec 32) (_ BitVec 32) V!25577 V!25577 (_ BitVec 32) Int) ListLongMap!9045)

(assert (=> bm!36823 (= call!36826 (getCurrentListMapNoExtraKeys!2533 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!36824 () Bool)

(declare-fun call!36827 () ListLongMap!9045)

(declare-fun v!557 () V!25577)

(assert (=> bm!36824 (= call!36827 (getCurrentListMapNoExtraKeys!2533 _keys!868 (array!47051 (store (arr!22552 _values!688) i!612 (ValueCellFull!7259 v!557)) (size!22993 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838018 () Bool)

(declare-fun e!467842 () Bool)

(assert (=> b!838018 (= e!467842 (= call!36827 call!36826))))

(declare-fun res!569981 () Bool)

(assert (=> start!72374 (=> (not res!569981) (not e!467843))))

(assert (=> start!72374 (= res!569981 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22992 _keys!868))))))

(assert (=> start!72374 e!467843))

(declare-fun tp_is_empty!15397 () Bool)

(assert (=> start!72374 tp_is_empty!15397))

(assert (=> start!72374 true))

(assert (=> start!72374 tp!47692))

(declare-fun array_inv!17940 (array!47048) Bool)

(assert (=> start!72374 (array_inv!17940 _keys!868)))

(declare-fun e!467840 () Bool)

(declare-fun array_inv!17941 (array!47050) Bool)

(assert (=> start!72374 (and (array_inv!17941 _values!688) e!467840)))

(declare-fun mapIsEmpty!24695 () Bool)

(declare-fun mapRes!24695 () Bool)

(assert (=> mapIsEmpty!24695 mapRes!24695))

(declare-fun b!838019 () Bool)

(declare-fun e!467841 () Bool)

(assert (=> b!838019 (= e!467841 tp_is_empty!15397)))

(declare-fun b!838020 () Bool)

(declare-fun +!1963 (ListLongMap!9045 tuple2!10262) ListLongMap!9045)

(assert (=> b!838020 (= e!467842 (= call!36827 (+!1963 call!36826 (tuple2!10263 k!854 v!557))))))

(declare-fun b!838021 () Bool)

(declare-fun e!467844 () Bool)

(assert (=> b!838021 (= e!467840 (and e!467844 mapRes!24695))))

(declare-fun condMapEmpty!24695 () Bool)

(declare-fun mapDefault!24695 () ValueCell!7259)

