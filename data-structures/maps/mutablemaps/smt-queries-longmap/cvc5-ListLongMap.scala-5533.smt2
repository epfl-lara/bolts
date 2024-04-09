; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73010 () Bool)

(assert start!73010)

(declare-fun b_free!13897 () Bool)

(declare-fun b_next!13897 () Bool)

(assert (=> start!73010 (= b_free!13897 (not b_next!13897))))

(declare-fun tp!49195 () Bool)

(declare-fun b_and!23001 () Bool)

(assert (=> start!73010 (= tp!49195 b_and!23001)))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun bm!37543 () Bool)

(declare-datatypes ((array!48258 0))(
  ( (array!48259 (arr!23156 (Array (_ BitVec 32) (_ BitVec 64))) (size!23597 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48258)

(declare-datatypes ((V!26425 0))(
  ( (V!26426 (val!8064 Int)) )
))
(declare-datatypes ((ValueCell!7577 0))(
  ( (ValueCellFull!7577 (v!10485 V!26425)) (EmptyCell!7577) )
))
(declare-datatypes ((array!48260 0))(
  ( (array!48261 (arr!23157 (Array (_ BitVec 32) ValueCell!7577)) (size!23598 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48260)

(declare-fun minValue!654 () V!26425)

(declare-fun zeroValue!654 () V!26425)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((tuple2!10550 0))(
  ( (tuple2!10551 (_1!5285 (_ BitVec 64)) (_2!5285 V!26425)) )
))
(declare-datatypes ((List!16461 0))(
  ( (Nil!16458) (Cons!16457 (h!17588 tuple2!10550) (t!22840 List!16461)) )
))
(declare-datatypes ((ListLongMap!9333 0))(
  ( (ListLongMap!9334 (toList!4682 List!16461)) )
))
(declare-fun call!37547 () ListLongMap!9333)

(declare-fun getCurrentListMapNoExtraKeys!2671 (array!48258 array!48260 (_ BitVec 32) (_ BitVec 32) V!26425 V!26425 (_ BitVec 32) Int) ListLongMap!9333)

(assert (=> bm!37543 (= call!37547 (getCurrentListMapNoExtraKeys!2671 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!25649 () Bool)

(declare-fun mapRes!25649 () Bool)

(assert (=> mapIsEmpty!25649 mapRes!25649))

(declare-fun b!847648 () Bool)

(declare-fun res!576033 () Bool)

(declare-fun e!473013 () Bool)

(assert (=> b!847648 (=> (not res!576033) (not e!473013))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!847648 (= res!576033 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23597 _keys!868))))))

(declare-fun b!847649 () Bool)

(declare-fun e!473011 () Bool)

(declare-fun e!473007 () Bool)

(assert (=> b!847649 (= e!473011 (and e!473007 mapRes!25649))))

(declare-fun condMapEmpty!25649 () Bool)

(declare-fun mapDefault!25649 () ValueCell!7577)

