; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95382 () Bool)

(assert start!95382)

(declare-fun b!1077076 () Bool)

(declare-fun e!615838 () Bool)

(declare-fun e!615842 () Bool)

(declare-fun mapRes!40867 () Bool)

(assert (=> b!1077076 (= e!615838 (and e!615842 mapRes!40867))))

(declare-fun condMapEmpty!40867 () Bool)

(declare-datatypes ((V!39913 0))(
  ( (V!39914 (val!13101 Int)) )
))
(declare-datatypes ((ValueCell!12335 0))(
  ( (ValueCellFull!12335 (v!15721 V!39913)) (EmptyCell!12335) )
))
(declare-datatypes ((array!69092 0))(
  ( (array!69093 (arr!33223 (Array (_ BitVec 32) ValueCell!12335)) (size!33760 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69092)

(declare-fun mapDefault!40867 () ValueCell!12335)

