; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94868 () Bool)

(assert start!94868)

(declare-fun b_free!22061 () Bool)

(declare-fun b_next!22061 () Bool)

(assert (=> start!94868 (= b_free!22061 (not b_next!22061))))

(declare-fun tp!77645 () Bool)

(declare-fun b_and!34921 () Bool)

(assert (=> start!94868 (= tp!77645 b_and!34921)))

(declare-fun b!1072270 () Bool)

(declare-fun e!612466 () Bool)

(declare-fun e!612472 () Bool)

(declare-fun mapRes!40516 () Bool)

(assert (=> b!1072270 (= e!612466 (and e!612472 mapRes!40516))))

(declare-fun condMapEmpty!40516 () Bool)

(declare-datatypes ((V!39629 0))(
  ( (V!39630 (val!12986 Int)) )
))
(declare-datatypes ((ValueCell!12232 0))(
  ( (ValueCellFull!12232 (v!15604 V!39629)) (EmptyCell!12232) )
))
(declare-datatypes ((array!68672 0))(
  ( (array!68673 (arr!33027 (Array (_ BitVec 32) ValueCell!12232)) (size!33564 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68672)

(declare-fun mapDefault!40516 () ValueCell!12232)

