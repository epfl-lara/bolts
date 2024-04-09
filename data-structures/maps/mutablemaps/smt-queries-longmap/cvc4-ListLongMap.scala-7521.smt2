; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95416 () Bool)

(assert start!95416)

(declare-fun b!1077299 () Bool)

(declare-fun e!616002 () Bool)

(declare-fun e!616003 () Bool)

(declare-fun mapRes!40897 () Bool)

(assert (=> b!1077299 (= e!616002 (and e!616003 mapRes!40897))))

(declare-fun condMapEmpty!40897 () Bool)

(declare-datatypes ((V!39933 0))(
  ( (V!39934 (val!13109 Int)) )
))
(declare-datatypes ((ValueCell!12343 0))(
  ( (ValueCellFull!12343 (v!15729 V!39933)) (EmptyCell!12343) )
))
(declare-datatypes ((array!69122 0))(
  ( (array!69123 (arr!33236 (Array (_ BitVec 32) ValueCell!12343)) (size!33773 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69122)

(declare-fun mapDefault!40897 () ValueCell!12343)

