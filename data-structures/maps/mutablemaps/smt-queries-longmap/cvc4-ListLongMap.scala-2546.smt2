; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39106 () Bool)

(assert start!39106)

(declare-fun b_free!9365 () Bool)

(declare-fun b_next!9365 () Bool)

(assert (=> start!39106 (= b_free!9365 (not b_next!9365))))

(declare-fun tp!33623 () Bool)

(declare-fun b_and!16769 () Bool)

(assert (=> start!39106 (= tp!33623 b_and!16769)))

(declare-fun b!410622 () Bool)

(declare-fun res!238157 () Bool)

(declare-fun e!246055 () Bool)

(assert (=> b!410622 (=> (not res!238157) (not e!246055))))

(declare-datatypes ((array!24883 0))(
  ( (array!24884 (arr!11888 (Array (_ BitVec 32) (_ BitVec 64))) (size!12240 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24883)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24883 (_ BitVec 32)) Bool)

(assert (=> b!410622 (= res!238157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!410623 () Bool)

(declare-fun res!238147 () Bool)

(assert (=> b!410623 (=> (not res!238147) (not e!246055))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!410623 (= res!238147 (or (= (select (arr!11888 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11888 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!410624 () Bool)

(declare-fun res!238158 () Bool)

(assert (=> b!410624 (=> (not res!238158) (not e!246055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!410624 (= res!238158 (validMask!0 mask!1025))))

(declare-fun b!410625 () Bool)

(declare-fun res!238148 () Bool)

(declare-fun e!246052 () Bool)

(assert (=> b!410625 (=> (not res!238148) (not e!246052))))

(declare-fun lt!189118 () array!24883)

(declare-datatypes ((List!6868 0))(
  ( (Nil!6865) (Cons!6864 (h!7720 (_ BitVec 64)) (t!12050 List!6868)) )
))
(declare-fun arrayNoDuplicates!0 (array!24883 (_ BitVec 32) List!6868) Bool)

(assert (=> b!410625 (= res!238148 (arrayNoDuplicates!0 lt!189118 #b00000000000000000000000000000000 Nil!6865))))

(declare-fun b!410626 () Bool)

(declare-fun res!238154 () Bool)

(assert (=> b!410626 (=> (not res!238154) (not e!246055))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15127 0))(
  ( (V!15128 (val!5303 Int)) )
))
(declare-datatypes ((ValueCell!4915 0))(
  ( (ValueCellFull!4915 (v!7546 V!15127)) (EmptyCell!4915) )
))
(declare-datatypes ((array!24885 0))(
  ( (array!24886 (arr!11889 (Array (_ BitVec 32) ValueCell!4915)) (size!12241 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24885)

(assert (=> b!410626 (= res!238154 (and (= (size!12241 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12240 _keys!709) (size!12241 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!410627 () Bool)

(declare-fun e!246051 () Bool)

(declare-fun e!246054 () Bool)

(declare-fun mapRes!17397 () Bool)

(assert (=> b!410627 (= e!246051 (and e!246054 mapRes!17397))))

(declare-fun condMapEmpty!17397 () Bool)

(declare-fun mapDefault!17397 () ValueCell!4915)

