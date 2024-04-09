; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95612 () Bool)

(assert start!95612)

(declare-fun b!1079587 () Bool)

(declare-fun e!617252 () Bool)

(declare-fun e!617254 () Bool)

(declare-fun mapRes!41101 () Bool)

(assert (=> b!1079587 (= e!617252 (and e!617254 mapRes!41101))))

(declare-fun condMapEmpty!41101 () Bool)

(declare-datatypes ((V!40101 0))(
  ( (V!40102 (val!13172 Int)) )
))
(declare-datatypes ((ValueCell!12406 0))(
  ( (ValueCellFull!12406 (v!15794 V!40101)) (EmptyCell!12406) )
))
(declare-datatypes ((array!69372 0))(
  ( (array!69373 (arr!33356 (Array (_ BitVec 32) ValueCell!12406)) (size!33893 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69372)

(declare-fun mapDefault!41101 () ValueCell!12406)

