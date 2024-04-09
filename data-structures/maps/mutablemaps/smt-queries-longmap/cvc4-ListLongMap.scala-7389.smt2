; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94136 () Bool)

(assert start!94136)

(declare-fun b_free!21515 () Bool)

(declare-fun b_next!21515 () Bool)

(assert (=> start!94136 (= b_free!21515 (not b_next!21515))))

(declare-fun tp!75978 () Bool)

(declare-fun b_and!34275 () Bool)

(assert (=> start!94136 (= tp!75978 b_and!34275)))

(declare-fun b!1064151 () Bool)

(declare-fun e!606496 () Bool)

(declare-fun e!606498 () Bool)

(declare-fun mapRes!39667 () Bool)

(assert (=> b!1064151 (= e!606496 (and e!606498 mapRes!39667))))

(declare-fun condMapEmpty!39667 () Bool)

(declare-datatypes ((V!38901 0))(
  ( (V!38902 (val!12713 Int)) )
))
(declare-datatypes ((ValueCell!11959 0))(
  ( (ValueCellFull!11959 (v!15326 V!38901)) (EmptyCell!11959) )
))
(declare-datatypes ((array!67616 0))(
  ( (array!67617 (arr!32509 (Array (_ BitVec 32) ValueCell!11959)) (size!33046 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67616)

(declare-fun mapDefault!39667 () ValueCell!11959)

