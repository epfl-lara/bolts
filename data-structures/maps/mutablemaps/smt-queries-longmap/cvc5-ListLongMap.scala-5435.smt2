; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72422 () Bool)

(assert start!72422)

(declare-fun b_free!13579 () Bool)

(declare-fun b_next!13579 () Bool)

(assert (=> start!72422 (= b_free!13579 (not b_next!13579))))

(declare-fun tp!47837 () Bool)

(declare-fun b_and!22683 () Bool)

(assert (=> start!72422 (= tp!47837 b_and!22683)))

(declare-fun defaultEntry!696 () Int)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47142 0))(
  ( (array!47143 (arr!22598 (Array (_ BitVec 32) (_ BitVec 64))) (size!23039 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47142)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((V!25641 0))(
  ( (V!25642 (val!7770 Int)) )
))
(declare-fun minValue!654 () V!25641)

(declare-fun zeroValue!654 () V!25641)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!10302 0))(
  ( (tuple2!10303 (_1!5161 (_ BitVec 64)) (_2!5161 V!25641)) )
))
(declare-datatypes ((List!16137 0))(
  ( (Nil!16134) (Cons!16133 (h!17264 tuple2!10302) (t!22516 List!16137)) )
))
(declare-datatypes ((ListLongMap!9085 0))(
  ( (ListLongMap!9086 (toList!4558 List!16137)) )
))
(declare-fun call!36970 () ListLongMap!9085)

(declare-fun bm!36967 () Bool)

(declare-datatypes ((ValueCell!7283 0))(
  ( (ValueCellFull!7283 (v!10191 V!25641)) (EmptyCell!7283) )
))
(declare-datatypes ((array!47144 0))(
  ( (array!47145 (arr!22599 (Array (_ BitVec 32) ValueCell!7283)) (size!23040 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47144)

(declare-fun getCurrentListMapNoExtraKeys!2553 (array!47142 array!47144 (_ BitVec 32) (_ BitVec 32) V!25641 V!25641 (_ BitVec 32) Int) ListLongMap!9085)

(assert (=> bm!36967 (= call!36970 (getCurrentListMapNoExtraKeys!2553 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!24767 () Bool)

(declare-fun mapRes!24767 () Bool)

(assert (=> mapIsEmpty!24767 mapRes!24767))

(declare-fun b!838952 () Bool)

(declare-fun res!570554 () Bool)

(declare-fun e!468273 () Bool)

(assert (=> b!838952 (=> (not res!570554) (not e!468273))))

(assert (=> b!838952 (= res!570554 (and (= (size!23040 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23039 _keys!868) (size!23040 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun v!557 () V!25641)

(declare-fun b!838953 () Bool)

(declare-fun call!36971 () ListLongMap!9085)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun e!468272 () Bool)

(declare-fun +!1978 (ListLongMap!9085 tuple2!10302) ListLongMap!9085)

(assert (=> b!838953 (= e!468272 (= call!36971 (+!1978 call!36970 (tuple2!10303 k!854 v!557))))))

(declare-fun b!838954 () Bool)

(declare-fun e!468276 () Bool)

(declare-fun e!468271 () Bool)

(assert (=> b!838954 (= e!468276 (and e!468271 mapRes!24767))))

(declare-fun condMapEmpty!24767 () Bool)

(declare-fun mapDefault!24767 () ValueCell!7283)

