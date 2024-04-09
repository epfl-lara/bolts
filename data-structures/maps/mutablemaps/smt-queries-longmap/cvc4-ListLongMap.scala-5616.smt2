; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73512 () Bool)

(assert start!73512)

(declare-fun b_free!14399 () Bool)

(declare-fun b_next!14399 () Bool)

(assert (=> start!73512 (= b_free!14399 (not b_next!14399))))

(declare-fun tp!50702 () Bool)

(declare-fun b_and!23795 () Bool)

(assert (=> start!73512 (= tp!50702 b_and!23795)))

(declare-fun b!858222 () Bool)

(declare-fun e!478328 () Bool)

(declare-fun tp_is_empty!16535 () Bool)

(assert (=> b!858222 (= e!478328 tp_is_empty!16535)))

(declare-fun b!858223 () Bool)

(declare-fun res!583154 () Bool)

(declare-fun e!478326 () Bool)

(assert (=> b!858223 (=> (not res!583154) (not e!478326))))

(declare-datatypes ((array!49230 0))(
  ( (array!49231 (arr!23642 (Array (_ BitVec 32) (_ BitVec 64))) (size!24083 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49230)

(declare-datatypes ((List!16831 0))(
  ( (Nil!16828) (Cons!16827 (h!17958 (_ BitVec 64)) (t!23504 List!16831)) )
))
(declare-fun arrayNoDuplicates!0 (array!49230 (_ BitVec 32) List!16831) Bool)

(assert (=> b!858223 (= res!583154 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16828))))

(declare-fun b!858224 () Bool)

(declare-fun e!478325 () Bool)

(declare-fun e!478323 () Bool)

(declare-fun mapRes!26402 () Bool)

(assert (=> b!858224 (= e!478325 (and e!478323 mapRes!26402))))

(declare-fun condMapEmpty!26402 () Bool)

(declare-datatypes ((V!27093 0))(
  ( (V!27094 (val!8315 Int)) )
))
(declare-datatypes ((ValueCell!7828 0))(
  ( (ValueCellFull!7828 (v!10736 V!27093)) (EmptyCell!7828) )
))
(declare-datatypes ((array!49232 0))(
  ( (array!49233 (arr!23643 (Array (_ BitVec 32) ValueCell!7828)) (size!24084 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49232)

(declare-fun mapDefault!26402 () ValueCell!7828)

