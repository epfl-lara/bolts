; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72572 () Bool)

(assert start!72572)

(declare-fun b_free!13729 () Bool)

(declare-fun b_next!13729 () Bool)

(assert (=> start!72572 (= b_free!13729 (not b_next!13729))))

(declare-fun tp!48287 () Bool)

(declare-fun b_and!22833 () Bool)

(assert (=> start!72572 (= tp!48287 b_and!22833)))

(declare-datatypes ((V!25841 0))(
  ( (V!25842 (val!7845 Int)) )
))
(declare-datatypes ((tuple2!10432 0))(
  ( (tuple2!10433 (_1!5226 (_ BitVec 64)) (_2!5226 V!25841)) )
))
(declare-datatypes ((List!16257 0))(
  ( (Nil!16254) (Cons!16253 (h!17384 tuple2!10432) (t!22636 List!16257)) )
))
(declare-datatypes ((ListLongMap!9215 0))(
  ( (ListLongMap!9216 (toList!4623 List!16257)) )
))
(declare-fun call!37421 () ListLongMap!9215)

(declare-fun v!557 () V!25841)

(declare-fun call!37420 () ListLongMap!9215)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun e!469622 () Bool)

(declare-fun b!841877 () Bool)

(declare-fun +!2025 (ListLongMap!9215 tuple2!10432) ListLongMap!9215)

(assert (=> b!841877 (= e!469622 (= call!37420 (+!2025 call!37421 (tuple2!10433 k!854 v!557))))))

(declare-fun b!841878 () Bool)

(declare-fun e!469623 () Bool)

(declare-fun e!469624 () Bool)

(declare-fun mapRes!24992 () Bool)

(assert (=> b!841878 (= e!469623 (and e!469624 mapRes!24992))))

(declare-fun condMapEmpty!24992 () Bool)

(declare-datatypes ((ValueCell!7358 0))(
  ( (ValueCellFull!7358 (v!10266 V!25841)) (EmptyCell!7358) )
))
(declare-datatypes ((array!47434 0))(
  ( (array!47435 (arr!22744 (Array (_ BitVec 32) ValueCell!7358)) (size!23185 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47434)

(declare-fun mapDefault!24992 () ValueCell!7358)

