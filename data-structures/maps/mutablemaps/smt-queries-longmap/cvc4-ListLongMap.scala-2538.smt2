; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39058 () Bool)

(assert start!39058)

(declare-fun b_free!9317 () Bool)

(declare-fun b_next!9317 () Bool)

(assert (=> start!39058 (= b_free!9317 (not b_next!9317))))

(declare-fun tp!33479 () Bool)

(declare-fun b_and!16721 () Bool)

(assert (=> start!39058 (= tp!33479 b_and!16721)))

(declare-fun b!409543 () Bool)

(declare-fun res!237291 () Bool)

(declare-fun e!245620 () Bool)

(assert (=> b!409543 (=> (not res!237291) (not e!245620))))

(declare-datatypes ((array!24791 0))(
  ( (array!24792 (arr!11842 (Array (_ BitVec 32) (_ BitVec 64))) (size!12194 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24791)

(declare-datatypes ((V!15063 0))(
  ( (V!15064 (val!5279 Int)) )
))
(declare-datatypes ((ValueCell!4891 0))(
  ( (ValueCellFull!4891 (v!7522 V!15063)) (EmptyCell!4891) )
))
(declare-datatypes ((array!24793 0))(
  ( (array!24794 (arr!11843 (Array (_ BitVec 32) ValueCell!4891)) (size!12195 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24793)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!409543 (= res!237291 (and (= (size!12195 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12194 _keys!709) (size!12195 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!409544 () Bool)

(declare-fun res!237288 () Bool)

(declare-fun e!245618 () Bool)

(assert (=> b!409544 (=> (not res!237288) (not e!245618))))

(declare-fun lt!188949 () array!24791)

(declare-datatypes ((List!6838 0))(
  ( (Nil!6835) (Cons!6834 (h!7690 (_ BitVec 64)) (t!12020 List!6838)) )
))
(declare-fun arrayNoDuplicates!0 (array!24791 (_ BitVec 32) List!6838) Bool)

(assert (=> b!409544 (= res!237288 (arrayNoDuplicates!0 lt!188949 #b00000000000000000000000000000000 Nil!6835))))

(declare-fun mapIsEmpty!17325 () Bool)

(declare-fun mapRes!17325 () Bool)

(assert (=> mapIsEmpty!17325 mapRes!17325))

(declare-fun b!409545 () Bool)

(declare-fun e!245619 () Bool)

(declare-fun e!245622 () Bool)

(assert (=> b!409545 (= e!245619 (and e!245622 mapRes!17325))))

(declare-fun condMapEmpty!17325 () Bool)

(declare-fun mapDefault!17325 () ValueCell!4891)

