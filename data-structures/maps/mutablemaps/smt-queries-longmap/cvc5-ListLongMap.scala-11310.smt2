; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131796 () Bool)

(assert start!131796)

(declare-fun mapIsEmpty!58333 () Bool)

(declare-fun mapRes!58333 () Bool)

(assert (=> mapIsEmpty!58333 mapRes!58333))

(declare-fun b!1542705 () Bool)

(declare-fun e!858408 () Bool)

(declare-fun tp_is_empty!37753 () Bool)

(assert (=> b!1542705 (= e!858408 tp_is_empty!37753)))

(declare-fun b!1542706 () Bool)

(declare-fun e!858411 () Bool)

(declare-fun e!858410 () Bool)

(assert (=> b!1542706 (= e!858411 (and e!858410 mapRes!58333))))

(declare-fun condMapEmpty!58333 () Bool)

(declare-datatypes ((V!58781 0))(
  ( (V!58782 (val!18954 Int)) )
))
(declare-datatypes ((ValueCell!17966 0))(
  ( (ValueCellFull!17966 (v!21752 V!58781)) (EmptyCell!17966) )
))
(declare-datatypes ((array!102697 0))(
  ( (array!102698 (arr!49546 (Array (_ BitVec 32) ValueCell!17966)) (size!50097 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102697)

(declare-fun mapDefault!58333 () ValueCell!17966)

