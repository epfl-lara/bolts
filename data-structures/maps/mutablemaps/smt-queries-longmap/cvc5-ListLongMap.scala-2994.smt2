; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42276 () Bool)

(assert start!42276)

(declare-fun b_free!11773 () Bool)

(declare-fun b_next!11773 () Bool)

(assert (=> start!42276 (= b_free!11773 (not b_next!11773))))

(declare-fun tp!41347 () Bool)

(declare-fun b_and!20229 () Bool)

(assert (=> start!42276 (= tp!41347 b_and!20229)))

(declare-fun b!471472 () Bool)

(declare-fun res!281720 () Bool)

(declare-fun e!276354 () Bool)

(assert (=> b!471472 (=> (not res!281720) (not e!276354))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30129 0))(
  ( (array!30130 (arr!14483 (Array (_ BitVec 32) (_ BitVec 64))) (size!14835 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30129)

(declare-datatypes ((V!18707 0))(
  ( (V!18708 (val!6645 Int)) )
))
(declare-datatypes ((ValueCell!6257 0))(
  ( (ValueCellFull!6257 (v!8932 V!18707)) (EmptyCell!6257) )
))
(declare-datatypes ((array!30131 0))(
  ( (array!30132 (arr!14484 (Array (_ BitVec 32) ValueCell!6257)) (size!14836 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30131)

(assert (=> b!471472 (= res!281720 (and (= (size!14836 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14835 _keys!1025) (size!14836 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!281723 () Bool)

(assert (=> start!42276 (=> (not res!281723) (not e!276354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42276 (= res!281723 (validMask!0 mask!1365))))

(assert (=> start!42276 e!276354))

(declare-fun tp_is_empty!13201 () Bool)

(assert (=> start!42276 tp_is_empty!13201))

(assert (=> start!42276 tp!41347))

(assert (=> start!42276 true))

(declare-fun array_inv!10450 (array!30129) Bool)

(assert (=> start!42276 (array_inv!10450 _keys!1025)))

(declare-fun e!276355 () Bool)

(declare-fun array_inv!10451 (array!30131) Bool)

(assert (=> start!42276 (and (array_inv!10451 _values!833) e!276355)))

(declare-fun b!471473 () Bool)

(declare-fun e!276357 () Bool)

(declare-fun mapRes!21508 () Bool)

(assert (=> b!471473 (= e!276355 (and e!276357 mapRes!21508))))

(declare-fun condMapEmpty!21508 () Bool)

(declare-fun mapDefault!21508 () ValueCell!6257)

