; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95502 () Bool)

(assert start!95502)

(declare-fun mapNonEmpty!40978 () Bool)

(declare-fun mapRes!40978 () Bool)

(declare-fun tp!78441 () Bool)

(declare-fun e!616467 () Bool)

(assert (=> mapNonEmpty!40978 (= mapRes!40978 (and tp!78441 e!616467))))

(declare-datatypes ((V!39997 0))(
  ( (V!39998 (val!13133 Int)) )
))
(declare-datatypes ((ValueCell!12367 0))(
  ( (ValueCellFull!12367 (v!15754 V!39997)) (EmptyCell!12367) )
))
(declare-datatypes ((array!69220 0))(
  ( (array!69221 (arr!33282 (Array (_ BitVec 32) ValueCell!12367)) (size!33819 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69220)

(declare-fun mapKey!40978 () (_ BitVec 32))

(declare-fun mapValue!40978 () ValueCell!12367)

(declare-fun mapRest!40978 () (Array (_ BitVec 32) ValueCell!12367))

(assert (=> mapNonEmpty!40978 (= (arr!33282 _values!874) (store mapRest!40978 mapKey!40978 mapValue!40978))))

(declare-fun b!1078114 () Bool)

(declare-fun e!616466 () Bool)

(declare-fun e!616469 () Bool)

(assert (=> b!1078114 (= e!616466 (and e!616469 mapRes!40978))))

(declare-fun condMapEmpty!40978 () Bool)

(declare-fun mapDefault!40978 () ValueCell!12367)

