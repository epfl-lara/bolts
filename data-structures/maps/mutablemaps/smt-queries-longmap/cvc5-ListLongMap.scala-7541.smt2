; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95602 () Bool)

(assert start!95602)

(declare-fun b!1079407 () Bool)

(declare-fun e!617163 () Bool)

(declare-fun e!617167 () Bool)

(declare-fun mapRes!41086 () Bool)

(assert (=> b!1079407 (= e!617163 (and e!617167 mapRes!41086))))

(declare-fun condMapEmpty!41086 () Bool)

(declare-datatypes ((V!40089 0))(
  ( (V!40090 (val!13167 Int)) )
))
(declare-datatypes ((ValueCell!12401 0))(
  ( (ValueCellFull!12401 (v!15789 V!40089)) (EmptyCell!12401) )
))
(declare-datatypes ((array!69354 0))(
  ( (array!69355 (arr!33347 (Array (_ BitVec 32) ValueCell!12401)) (size!33884 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69354)

(declare-fun mapDefault!41086 () ValueCell!12401)

