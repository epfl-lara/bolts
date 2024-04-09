; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82124 () Bool)

(assert start!82124)

(declare-fun b!956977 () Bool)

(declare-fun e!539392 () Bool)

(declare-fun e!539390 () Bool)

(declare-fun mapRes!33619 () Bool)

(assert (=> b!956977 (= e!539392 (and e!539390 mapRes!33619))))

(declare-fun condMapEmpty!33619 () Bool)

(declare-datatypes ((V!33113 0))(
  ( (V!33114 (val!10599 Int)) )
))
(declare-datatypes ((ValueCell!10067 0))(
  ( (ValueCellFull!10067 (v!13155 V!33113)) (EmptyCell!10067) )
))
(declare-datatypes ((array!58317 0))(
  ( (array!58318 (arr!28030 (Array (_ BitVec 32) ValueCell!10067)) (size!28510 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58317)

(declare-fun mapDefault!33619 () ValueCell!10067)

