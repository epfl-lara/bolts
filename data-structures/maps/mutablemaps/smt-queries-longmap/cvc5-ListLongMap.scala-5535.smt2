; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73022 () Bool)

(assert start!73022)

(declare-fun b_free!13909 () Bool)

(declare-fun b_next!13909 () Bool)

(assert (=> start!73022 (= b_free!13909 (not b_next!13909))))

(declare-fun tp!49232 () Bool)

(declare-fun b_and!23013 () Bool)

(assert (=> start!73022 (= tp!49232 b_and!23013)))

(declare-fun b!847900 () Bool)

(declare-fun res!576187 () Bool)

(declare-fun e!473133 () Bool)

(assert (=> b!847900 (=> (not res!576187) (not e!473133))))

(declare-datatypes ((array!48282 0))(
  ( (array!48283 (arr!23168 (Array (_ BitVec 32) (_ BitVec 64))) (size!23609 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48282)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48282 (_ BitVec 32)) Bool)

(assert (=> b!847900 (= res!576187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!847901 () Bool)

(declare-fun e!473137 () Bool)

(assert (=> b!847901 (= e!473133 e!473137)))

(declare-fun res!576191 () Bool)

(assert (=> b!847901 (=> (not res!576191) (not e!473137))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!847901 (= res!576191 (= from!1053 i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!26441 0))(
  ( (V!26442 (val!8070 Int)) )
))
(declare-datatypes ((tuple2!10562 0))(
  ( (tuple2!10563 (_1!5291 (_ BitVec 64)) (_2!5291 V!26441)) )
))
(declare-datatypes ((List!16471 0))(
  ( (Nil!16468) (Cons!16467 (h!17598 tuple2!10562) (t!22850 List!16471)) )
))
(declare-datatypes ((ListLongMap!9345 0))(
  ( (ListLongMap!9346 (toList!4688 List!16471)) )
))
(declare-fun lt!381858 () ListLongMap!9345)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7583 0))(
  ( (ValueCellFull!7583 (v!10491 V!26441)) (EmptyCell!7583) )
))
(declare-datatypes ((array!48284 0))(
  ( (array!48285 (arr!23169 (Array (_ BitVec 32) ValueCell!7583)) (size!23610 (_ BitVec 32))) )
))
(declare-fun lt!381857 () array!48284)

(declare-fun minValue!654 () V!26441)

(declare-fun zeroValue!654 () V!26441)

(declare-fun getCurrentListMapNoExtraKeys!2677 (array!48282 array!48284 (_ BitVec 32) (_ BitVec 32) V!26441 V!26441 (_ BitVec 32) Int) ListLongMap!9345)

(assert (=> b!847901 (= lt!381858 (getCurrentListMapNoExtraKeys!2677 _keys!868 lt!381857 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26441)

(declare-fun _values!688 () array!48284)

(assert (=> b!847901 (= lt!381857 (array!48285 (store (arr!23169 _values!688) i!612 (ValueCellFull!7583 v!557)) (size!23610 _values!688)))))

(declare-fun lt!381856 () ListLongMap!9345)

(assert (=> b!847901 (= lt!381856 (getCurrentListMapNoExtraKeys!2677 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!847902 () Bool)

(declare-fun res!576188 () Bool)

(assert (=> b!847902 (=> (not res!576188) (not e!473133))))

(assert (=> b!847902 (= res!576188 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23609 _keys!868))))))

(declare-fun b!847903 () Bool)

(declare-fun res!576194 () Bool)

(assert (=> b!847903 (=> (not res!576194) (not e!473133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!847903 (= res!576194 (validMask!0 mask!1196))))

(declare-fun b!847904 () Bool)

(declare-fun e!473138 () Bool)

(declare-fun e!473139 () Bool)

(declare-fun mapRes!25667 () Bool)

(assert (=> b!847904 (= e!473138 (and e!473139 mapRes!25667))))

(declare-fun condMapEmpty!25667 () Bool)

(declare-fun mapDefault!25667 () ValueCell!7583)

