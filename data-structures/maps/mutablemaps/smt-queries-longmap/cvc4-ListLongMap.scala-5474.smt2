; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72660 () Bool)

(assert start!72660)

(declare-fun b!842951 () Bool)

(declare-fun e!470307 () Bool)

(declare-fun e!470308 () Bool)

(declare-fun mapRes!25124 () Bool)

(assert (=> b!842951 (= e!470307 (and e!470308 mapRes!25124))))

(declare-fun condMapEmpty!25124 () Bool)

(declare-datatypes ((V!25957 0))(
  ( (V!25958 (val!7889 Int)) )
))
(declare-datatypes ((ValueCell!7402 0))(
  ( (ValueCellFull!7402 (v!10310 V!25957)) (EmptyCell!7402) )
))
(declare-datatypes ((array!47606 0))(
  ( (array!47607 (arr!22830 (Array (_ BitVec 32) ValueCell!7402)) (size!23271 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47606)

(declare-fun mapDefault!25124 () ValueCell!7402)

