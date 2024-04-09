; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39192 () Bool)

(assert start!39192)

(declare-fun b_free!9451 () Bool)

(declare-fun b_next!9451 () Bool)

(assert (=> start!39192 (= b_free!9451 (not b_next!9451))))

(declare-fun tp!33882 () Bool)

(declare-fun b_and!16855 () Bool)

(assert (=> start!39192 (= tp!33882 b_and!16855)))

(declare-fun b!412557 () Bool)

(declare-fun res!239695 () Bool)

(declare-fun e!246826 () Bool)

(assert (=> b!412557 (=> (not res!239695) (not e!246826))))

(declare-datatypes ((array!25045 0))(
  ( (array!25046 (arr!11969 (Array (_ BitVec 32) (_ BitVec 64))) (size!12321 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25045)

(declare-datatypes ((List!6923 0))(
  ( (Nil!6920) (Cons!6919 (h!7775 (_ BitVec 64)) (t!12105 List!6923)) )
))
(declare-fun arrayNoDuplicates!0 (array!25045 (_ BitVec 32) List!6923) Bool)

(assert (=> b!412557 (= res!239695 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6920))))

(declare-fun b!412558 () Bool)

(declare-fun e!246825 () Bool)

(declare-fun e!246829 () Bool)

(declare-fun mapRes!17526 () Bool)

(assert (=> b!412558 (= e!246825 (and e!246829 mapRes!17526))))

(declare-fun condMapEmpty!17526 () Bool)

(declare-datatypes ((V!15243 0))(
  ( (V!15244 (val!5346 Int)) )
))
(declare-datatypes ((ValueCell!4958 0))(
  ( (ValueCellFull!4958 (v!7589 V!15243)) (EmptyCell!4958) )
))
(declare-datatypes ((array!25047 0))(
  ( (array!25048 (arr!11970 (Array (_ BitVec 32) ValueCell!4958)) (size!12322 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25047)

(declare-fun mapDefault!17526 () ValueCell!4958)

