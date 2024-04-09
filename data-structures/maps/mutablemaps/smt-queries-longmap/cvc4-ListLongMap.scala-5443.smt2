; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72474 () Bool)

(assert start!72474)

(declare-fun b_free!13631 () Bool)

(declare-fun b_next!13631 () Bool)

(assert (=> start!72474 (= b_free!13631 (not b_next!13631))))

(declare-fun tp!47993 () Bool)

(declare-fun b_and!22735 () Bool)

(assert (=> start!72474 (= tp!47993 b_and!22735)))

(declare-fun b!839966 () Bool)

(declare-fun res!571177 () Bool)

(declare-fun e!468739 () Bool)

(assert (=> b!839966 (=> (not res!571177) (not e!468739))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47244 0))(
  ( (array!47245 (arr!22649 (Array (_ BitVec 32) (_ BitVec 64))) (size!23090 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47244)

(declare-datatypes ((V!25709 0))(
  ( (V!25710 (val!7796 Int)) )
))
(declare-datatypes ((ValueCell!7309 0))(
  ( (ValueCellFull!7309 (v!10217 V!25709)) (EmptyCell!7309) )
))
(declare-datatypes ((array!47246 0))(
  ( (array!47247 (arr!22650 (Array (_ BitVec 32) ValueCell!7309)) (size!23091 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47246)

(assert (=> b!839966 (= res!571177 (and (= (size!23091 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23090 _keys!868) (size!23091 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-datatypes ((tuple2!10346 0))(
  ( (tuple2!10347 (_1!5183 (_ BitVec 64)) (_2!5183 V!25709)) )
))
(declare-datatypes ((List!16176 0))(
  ( (Nil!16173) (Cons!16172 (h!17303 tuple2!10346) (t!22555 List!16176)) )
))
(declare-datatypes ((ListLongMap!9129 0))(
  ( (ListLongMap!9130 (toList!4580 List!16176)) )
))
(declare-fun call!37126 () ListLongMap!9129)

(declare-fun bm!37123 () Bool)

(declare-fun v!557 () V!25709)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25709)

(declare-fun zeroValue!654 () V!25709)

(declare-fun getCurrentListMapNoExtraKeys!2572 (array!47244 array!47246 (_ BitVec 32) (_ BitVec 32) V!25709 V!25709 (_ BitVec 32) Int) ListLongMap!9129)

(assert (=> bm!37123 (= call!37126 (getCurrentListMapNoExtraKeys!2572 _keys!868 (array!47247 (store (arr!22650 _values!688) i!612 (ValueCellFull!7309 v!557)) (size!23091 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839967 () Bool)

(declare-fun e!468741 () Bool)

(declare-fun call!37127 () ListLongMap!9129)

(assert (=> b!839967 (= e!468741 (= call!37126 call!37127))))

(declare-fun b!839968 () Bool)

(declare-fun e!468740 () Bool)

(declare-fun e!468742 () Bool)

(declare-fun mapRes!24845 () Bool)

(assert (=> b!839968 (= e!468740 (and e!468742 mapRes!24845))))

(declare-fun condMapEmpty!24845 () Bool)

(declare-fun mapDefault!24845 () ValueCell!7309)

