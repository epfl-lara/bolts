; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73194 () Bool)

(assert start!73194)

(declare-fun b_free!14081 () Bool)

(declare-fun b_next!14081 () Bool)

(assert (=> start!73194 (= b_free!14081 (not b_next!14081))))

(declare-fun tp!49747 () Bool)

(declare-fun b_and!23339 () Bool)

(assert (=> start!73194 (= tp!49747 b_and!23339)))

(declare-fun b!851908 () Bool)

(declare-fun e!475186 () Bool)

(declare-fun tp_is_empty!16217 () Bool)

(assert (=> b!851908 (= e!475186 tp_is_empty!16217)))

(declare-fun b!851909 () Bool)

(declare-fun res!578757 () Bool)

(declare-fun e!475187 () Bool)

(assert (=> b!851909 (=> (not res!578757) (not e!475187))))

(declare-datatypes ((array!48622 0))(
  ( (array!48623 (arr!23338 (Array (_ BitVec 32) (_ BitVec 64))) (size!23779 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48622)

(declare-datatypes ((List!16606 0))(
  ( (Nil!16603) (Cons!16602 (h!17733 (_ BitVec 64)) (t!23141 List!16606)) )
))
(declare-fun arrayNoDuplicates!0 (array!48622 (_ BitVec 32) List!16606) Bool)

(assert (=> b!851909 (= res!578757 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16603))))

(declare-fun b!851910 () Bool)

(declare-fun e!475182 () Bool)

(declare-fun e!475185 () Bool)

(declare-fun mapRes!25925 () Bool)

(assert (=> b!851910 (= e!475182 (and e!475185 mapRes!25925))))

(declare-fun condMapEmpty!25925 () Bool)

(declare-datatypes ((V!26669 0))(
  ( (V!26670 (val!8156 Int)) )
))
(declare-datatypes ((ValueCell!7669 0))(
  ( (ValueCellFull!7669 (v!10577 V!26669)) (EmptyCell!7669) )
))
(declare-datatypes ((array!48624 0))(
  ( (array!48625 (arr!23339 (Array (_ BitVec 32) ValueCell!7669)) (size!23780 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48624)

(declare-fun mapDefault!25925 () ValueCell!7669)

