; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95430 () Bool)

(assert start!95430)

(declare-fun b!1077354 () Bool)

(declare-fun e!616051 () Bool)

(declare-fun e!616047 () Bool)

(declare-fun mapRes!40903 () Bool)

(assert (=> b!1077354 (= e!616051 (and e!616047 mapRes!40903))))

(declare-fun condMapEmpty!40903 () Bool)

(declare-datatypes ((V!39937 0))(
  ( (V!39938 (val!13110 Int)) )
))
(declare-datatypes ((ValueCell!12344 0))(
  ( (ValueCellFull!12344 (v!15731 V!39937)) (EmptyCell!12344) )
))
(declare-datatypes ((array!69126 0))(
  ( (array!69127 (arr!33237 (Array (_ BitVec 32) ValueCell!12344)) (size!33774 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69126)

(declare-fun mapDefault!40903 () ValueCell!12344)

