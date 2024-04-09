; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73272 () Bool)

(assert start!73272)

(declare-fun b_free!14159 () Bool)

(declare-fun b_next!14159 () Bool)

(assert (=> start!73272 (= b_free!14159 (not b_next!14159))))

(declare-fun tp!49982 () Bool)

(declare-fun b_and!23495 () Bool)

(assert (=> start!73272 (= tp!49982 b_and!23495)))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!26773 0))(
  ( (V!26774 (val!8195 Int)) )
))
(declare-datatypes ((tuple2!10786 0))(
  ( (tuple2!10787 (_1!5403 (_ BitVec 64)) (_2!5403 V!26773)) )
))
(declare-datatypes ((List!16663 0))(
  ( (Nil!16660) (Cons!16659 (h!17790 tuple2!10786) (t!23276 List!16663)) )
))
(declare-datatypes ((ListLongMap!9569 0))(
  ( (ListLongMap!9570 (toList!4800 List!16663)) )
))
(declare-fun call!38332 () ListLongMap!9569)

(declare-fun bm!38329 () Bool)

(declare-datatypes ((array!48772 0))(
  ( (array!48773 (arr!23413 (Array (_ BitVec 32) (_ BitVec 64))) (size!23854 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48772)

(declare-datatypes ((ValueCell!7708 0))(
  ( (ValueCellFull!7708 (v!10616 V!26773)) (EmptyCell!7708) )
))
(declare-datatypes ((array!48774 0))(
  ( (array!48775 (arr!23414 (Array (_ BitVec 32) ValueCell!7708)) (size!23855 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48774)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26773)

(declare-fun zeroValue!654 () V!26773)

(declare-fun getCurrentListMapNoExtraKeys!2782 (array!48772 array!48774 (_ BitVec 32) (_ BitVec 32) V!26773 V!26773 (_ BitVec 32) Int) ListLongMap!9569)

(assert (=> bm!38329 (= call!38332 (getCurrentListMapNoExtraKeys!2782 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853742 () Bool)

(declare-fun e!476124 () Bool)

(declare-fun e!476123 () Bool)

(declare-fun mapRes!26042 () Bool)

(assert (=> b!853742 (= e!476124 (and e!476123 mapRes!26042))))

(declare-fun condMapEmpty!26042 () Bool)

(declare-fun mapDefault!26042 () ValueCell!7708)

