; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72738 () Bool)

(assert start!72738)

(declare-fun b!843770 () Bool)

(declare-fun e!470892 () Bool)

(declare-fun e!470895 () Bool)

(declare-fun mapRes!25241 () Bool)

(assert (=> b!843770 (= e!470892 (and e!470895 mapRes!25241))))

(declare-fun condMapEmpty!25241 () Bool)

(declare-datatypes ((V!26061 0))(
  ( (V!26062 (val!7928 Int)) )
))
(declare-datatypes ((ValueCell!7441 0))(
  ( (ValueCellFull!7441 (v!10349 V!26061)) (EmptyCell!7441) )
))
(declare-datatypes ((array!47748 0))(
  ( (array!47749 (arr!22901 (Array (_ BitVec 32) ValueCell!7441)) (size!23342 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47748)

(declare-fun mapDefault!25241 () ValueCell!7441)

