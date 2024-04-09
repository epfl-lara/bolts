; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72980 () Bool)

(assert start!72980)

(declare-fun b_free!13867 () Bool)

(declare-fun b_next!13867 () Bool)

(assert (=> start!72980 (= b_free!13867 (not b_next!13867))))

(declare-fun tp!49106 () Bool)

(declare-fun b_and!22971 () Bool)

(assert (=> start!72980 (= tp!49106 b_and!22971)))

(declare-fun res!575631 () Bool)

(declare-fun e!472707 () Bool)

(assert (=> start!72980 (=> (not res!575631) (not e!472707))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48202 0))(
  ( (array!48203 (arr!23128 (Array (_ BitVec 32) (_ BitVec 64))) (size!23569 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48202)

(assert (=> start!72980 (= res!575631 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23569 _keys!868))))))

(assert (=> start!72980 e!472707))

(declare-fun tp_is_empty!16003 () Bool)

(assert (=> start!72980 tp_is_empty!16003))

(assert (=> start!72980 true))

(assert (=> start!72980 tp!49106))

(declare-fun array_inv!18352 (array!48202) Bool)

(assert (=> start!72980 (array_inv!18352 _keys!868)))

(declare-datatypes ((V!26385 0))(
  ( (V!26386 (val!8049 Int)) )
))
(declare-datatypes ((ValueCell!7562 0))(
  ( (ValueCellFull!7562 (v!10470 V!26385)) (EmptyCell!7562) )
))
(declare-datatypes ((array!48204 0))(
  ( (array!48205 (arr!23129 (Array (_ BitVec 32) ValueCell!7562)) (size!23570 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48204)

(declare-fun e!472706 () Bool)

(declare-fun array_inv!18353 (array!48204) Bool)

(assert (=> start!72980 (and (array_inv!18353 _values!688) e!472706)))

(declare-fun b!847039 () Bool)

(declare-fun res!575630 () Bool)

(assert (=> b!847039 (=> (not res!575630) (not e!472707))))

(declare-datatypes ((List!16441 0))(
  ( (Nil!16438) (Cons!16437 (h!17568 (_ BitVec 64)) (t!22820 List!16441)) )
))
(declare-fun arrayNoDuplicates!0 (array!48202 (_ BitVec 32) List!16441) Bool)

(assert (=> b!847039 (= res!575630 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16438))))

(declare-fun b!847040 () Bool)

(declare-fun e!472708 () Bool)

(assert (=> b!847040 (= e!472708 tp_is_empty!16003)))

(declare-fun b!847041 () Bool)

(declare-fun res!575634 () Bool)

(assert (=> b!847041 (=> (not res!575634) (not e!472707))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!847041 (= res!575634 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23569 _keys!868))))))

(declare-fun b!847042 () Bool)

(declare-fun mapRes!25604 () Bool)

(assert (=> b!847042 (= e!472706 (and e!472708 mapRes!25604))))

(declare-fun condMapEmpty!25604 () Bool)

(declare-fun mapDefault!25604 () ValueCell!7562)

