; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72402 () Bool)

(assert start!72402)

(declare-fun b_free!13559 () Bool)

(declare-fun b_next!13559 () Bool)

(assert (=> start!72402 (= b_free!13559 (not b_next!13559))))

(declare-fun tp!47777 () Bool)

(declare-fun b_and!22663 () Bool)

(assert (=> start!72402 (= tp!47777 b_and!22663)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47102 0))(
  ( (array!47103 (arr!22578 (Array (_ BitVec 32) (_ BitVec 64))) (size!23019 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47102)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((V!25613 0))(
  ( (V!25614 (val!7760 Int)) )
))
(declare-fun minValue!654 () V!25613)

(declare-fun zeroValue!654 () V!25613)

(declare-datatypes ((tuple2!10286 0))(
  ( (tuple2!10287 (_1!5153 (_ BitVec 64)) (_2!5153 V!25613)) )
))
(declare-datatypes ((List!16123 0))(
  ( (Nil!16120) (Cons!16119 (h!17250 tuple2!10286) (t!22502 List!16123)) )
))
(declare-datatypes ((ListLongMap!9069 0))(
  ( (ListLongMap!9070 (toList!4550 List!16123)) )
))
(declare-fun call!36910 () ListLongMap!9069)

(declare-fun v!557 () V!25613)

(declare-fun bm!36907 () Bool)

(declare-datatypes ((ValueCell!7273 0))(
  ( (ValueCellFull!7273 (v!10181 V!25613)) (EmptyCell!7273) )
))
(declare-datatypes ((array!47104 0))(
  ( (array!47105 (arr!22579 (Array (_ BitVec 32) ValueCell!7273)) (size!23020 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47104)

(declare-fun getCurrentListMapNoExtraKeys!2545 (array!47102 array!47104 (_ BitVec 32) (_ BitVec 32) V!25613 V!25613 (_ BitVec 32) Int) ListLongMap!9069)

(assert (=> bm!36907 (= call!36910 (getCurrentListMapNoExtraKeys!2545 _keys!868 (array!47105 (store (arr!22579 _values!688) i!612 (ValueCellFull!7273 v!557)) (size!23020 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838562 () Bool)

(declare-fun e!468093 () Bool)

(declare-fun e!468094 () Bool)

(declare-fun mapRes!24737 () Bool)

(assert (=> b!838562 (= e!468093 (and e!468094 mapRes!24737))))

(declare-fun condMapEmpty!24737 () Bool)

(declare-fun mapDefault!24737 () ValueCell!7273)

