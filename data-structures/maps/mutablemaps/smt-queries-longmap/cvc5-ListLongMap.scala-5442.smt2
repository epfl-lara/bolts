; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72464 () Bool)

(assert start!72464)

(declare-fun b_free!13621 () Bool)

(declare-fun b_next!13621 () Bool)

(assert (=> start!72464 (= b_free!13621 (not b_next!13621))))

(declare-fun tp!47962 () Bool)

(declare-fun b_and!22725 () Bool)

(assert (=> start!72464 (= tp!47962 b_and!22725)))

(declare-fun mapIsEmpty!24830 () Bool)

(declare-fun mapRes!24830 () Bool)

(assert (=> mapIsEmpty!24830 mapRes!24830))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!37093 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!25697 0))(
  ( (V!25698 (val!7791 Int)) )
))
(declare-datatypes ((tuple2!10338 0))(
  ( (tuple2!10339 (_1!5179 (_ BitVec 64)) (_2!5179 V!25697)) )
))
(declare-datatypes ((List!16169 0))(
  ( (Nil!16166) (Cons!16165 (h!17296 tuple2!10338) (t!22548 List!16169)) )
))
(declare-datatypes ((ListLongMap!9121 0))(
  ( (ListLongMap!9122 (toList!4576 List!16169)) )
))
(declare-fun call!37096 () ListLongMap!9121)

(declare-datatypes ((array!47226 0))(
  ( (array!47227 (arr!22640 (Array (_ BitVec 32) (_ BitVec 64))) (size!23081 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47226)

(declare-datatypes ((ValueCell!7304 0))(
  ( (ValueCellFull!7304 (v!10212 V!25697)) (EmptyCell!7304) )
))
(declare-datatypes ((array!47228 0))(
  ( (array!47229 (arr!22641 (Array (_ BitVec 32) ValueCell!7304)) (size!23082 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47228)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25697)

(declare-fun zeroValue!654 () V!25697)

(declare-fun getCurrentListMapNoExtraKeys!2568 (array!47226 array!47228 (_ BitVec 32) (_ BitVec 32) V!25697 V!25697 (_ BitVec 32) Int) ListLongMap!9121)

(assert (=> bm!37093 (= call!37096 (getCurrentListMapNoExtraKeys!2568 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839771 () Bool)

(declare-fun e!468651 () Bool)

(declare-fun tp_is_empty!15487 () Bool)

(assert (=> b!839771 (= e!468651 tp_is_empty!15487)))

(declare-fun b!839772 () Bool)

(declare-fun e!468650 () Bool)

(assert (=> b!839772 (= e!468650 (and e!468651 mapRes!24830))))

(declare-fun condMapEmpty!24830 () Bool)

(declare-fun mapDefault!24830 () ValueCell!7304)

