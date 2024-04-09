; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39042 () Bool)

(assert start!39042)

(declare-fun b_free!9301 () Bool)

(declare-fun b_next!9301 () Bool)

(assert (=> start!39042 (= b_free!9301 (not b_next!9301))))

(declare-fun tp!33431 () Bool)

(declare-fun b_and!16705 () Bool)

(assert (=> start!39042 (= tp!33431 b_and!16705)))

(declare-fun b!409182 () Bool)

(declare-fun res!237002 () Bool)

(declare-fun e!245477 () Bool)

(assert (=> b!409182 (=> (not res!237002) (not e!245477))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!409182 (= res!237002 (validKeyInArray!0 k!794))))

(declare-fun b!409184 () Bool)

(declare-fun res!236998 () Bool)

(assert (=> b!409184 (=> (not res!236998) (not e!245477))))

(declare-datatypes ((array!24759 0))(
  ( (array!24760 (arr!11826 (Array (_ BitVec 32) (_ BitVec 64))) (size!12178 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24759)

(declare-fun arrayContainsKey!0 (array!24759 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!409184 (= res!236998 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!409185 () Bool)

(declare-fun e!245476 () Bool)

(declare-fun e!245474 () Bool)

(declare-fun mapRes!17301 () Bool)

(assert (=> b!409185 (= e!245476 (and e!245474 mapRes!17301))))

(declare-fun condMapEmpty!17301 () Bool)

(declare-datatypes ((V!15043 0))(
  ( (V!15044 (val!5271 Int)) )
))
(declare-datatypes ((ValueCell!4883 0))(
  ( (ValueCellFull!4883 (v!7514 V!15043)) (EmptyCell!4883) )
))
(declare-datatypes ((array!24761 0))(
  ( (array!24762 (arr!11827 (Array (_ BitVec 32) ValueCell!4883)) (size!12179 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24761)

(declare-fun mapDefault!17301 () ValueCell!4883)

