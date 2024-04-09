; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72722 () Bool)

(assert start!72722)

(declare-fun b!843602 () Bool)

(declare-fun e!470773 () Bool)

(declare-fun e!470772 () Bool)

(declare-fun mapRes!25217 () Bool)

(assert (=> b!843602 (= e!470773 (and e!470772 mapRes!25217))))

(declare-fun condMapEmpty!25217 () Bool)

(declare-datatypes ((V!26041 0))(
  ( (V!26042 (val!7920 Int)) )
))
(declare-datatypes ((ValueCell!7433 0))(
  ( (ValueCellFull!7433 (v!10341 V!26041)) (EmptyCell!7433) )
))
(declare-datatypes ((array!47718 0))(
  ( (array!47719 (arr!22886 (Array (_ BitVec 32) ValueCell!7433)) (size!23327 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47718)

(declare-fun mapDefault!25217 () ValueCell!7433)

