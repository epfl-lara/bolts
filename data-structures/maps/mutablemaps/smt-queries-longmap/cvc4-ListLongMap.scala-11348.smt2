; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132028 () Bool)

(assert start!132028)

(declare-fun b_free!31709 () Bool)

(declare-fun b_next!31709 () Bool)

(assert (=> start!132028 (= b_free!31709 (not b_next!31709))))

(declare-fun tp!111379 () Bool)

(declare-fun b_and!51129 () Bool)

(assert (=> start!132028 (= tp!111379 b_and!51129)))

(declare-fun b!1546330 () Bool)

(declare-datatypes ((V!59089 0))(
  ( (V!59090 (val!19070 Int)) )
))
(declare-datatypes ((tuple2!24666 0))(
  ( (tuple2!24667 (_1!12343 (_ BitVec 64)) (_2!12343 V!59089)) )
))
(declare-datatypes ((List!36177 0))(
  ( (Nil!36174) (Cons!36173 (h!37619 tuple2!24666) (t!50878 List!36177)) )
))
(declare-datatypes ((ListLongMap!22287 0))(
  ( (ListLongMap!22288 (toList!11159 List!36177)) )
))
(declare-fun e!860751 () ListLongMap!22287)

(declare-fun call!69546 () ListLongMap!22287)

(declare-fun minValue!436 () V!59089)

(declare-fun +!4887 (ListLongMap!22287 tuple2!24666) ListLongMap!22287)

(assert (=> b!1546330 (= e!860751 (+!4887 call!69546 (tuple2!24667 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1546331 () Bool)

(declare-fun e!860747 () Bool)

(declare-fun e!860748 () Bool)

(declare-fun mapRes!58681 () Bool)

(assert (=> b!1546331 (= e!860747 (and e!860748 mapRes!58681))))

(declare-fun condMapEmpty!58681 () Bool)

(declare-datatypes ((ValueCell!18082 0))(
  ( (ValueCellFull!18082 (v!21868 V!59089)) (EmptyCell!18082) )
))
(declare-datatypes ((array!103139 0))(
  ( (array!103140 (arr!49767 (Array (_ BitVec 32) ValueCell!18082)) (size!50318 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103139)

(declare-fun mapDefault!58681 () ValueCell!18082)

