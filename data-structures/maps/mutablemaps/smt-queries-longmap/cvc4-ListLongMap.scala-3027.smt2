; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42548 () Bool)

(assert start!42548)

(declare-fun b_free!11975 () Bool)

(declare-fun b_next!11975 () Bool)

(assert (=> start!42548 (= b_free!11975 (not b_next!11975))))

(declare-fun tp!41965 () Bool)

(declare-fun b_and!20473 () Bool)

(assert (=> start!42548 (= tp!41965 b_and!20473)))

(declare-fun mapNonEmpty!21823 () Bool)

(declare-fun mapRes!21823 () Bool)

(declare-fun tp!41964 () Bool)

(declare-fun e!278491 () Bool)

(assert (=> mapNonEmpty!21823 (= mapRes!21823 (and tp!41964 e!278491))))

(declare-datatypes ((V!18975 0))(
  ( (V!18976 (val!6746 Int)) )
))
(declare-datatypes ((ValueCell!6358 0))(
  ( (ValueCellFull!6358 (v!9035 V!18975)) (EmptyCell!6358) )
))
(declare-fun mapRest!21823 () (Array (_ BitVec 32) ValueCell!6358))

(declare-fun mapValue!21823 () ValueCell!6358)

(declare-fun mapKey!21823 () (_ BitVec 32))

(declare-datatypes ((array!30525 0))(
  ( (array!30526 (arr!14677 (Array (_ BitVec 32) ValueCell!6358)) (size!15029 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30525)

(assert (=> mapNonEmpty!21823 (= (arr!14677 _values!833) (store mapRest!21823 mapKey!21823 mapValue!21823))))

(declare-fun b!474431 () Bool)

(declare-fun tp_is_empty!13403 () Bool)

(assert (=> b!474431 (= e!278491 tp_is_empty!13403)))

(declare-fun b!474432 () Bool)

(declare-fun res!283425 () Bool)

(declare-fun e!278490 () Bool)

(assert (=> b!474432 (=> (not res!283425) (not e!278490))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30527 0))(
  ( (array!30528 (arr!14678 (Array (_ BitVec 32) (_ BitVec 64))) (size!15030 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30527)

(declare-fun mask!1365 () (_ BitVec 32))

(assert (=> b!474432 (= res!283425 (and (= (size!15029 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15030 _keys!1025) (size!15029 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21823 () Bool)

(assert (=> mapIsEmpty!21823 mapRes!21823))

(declare-fun b!474433 () Bool)

(declare-fun res!283422 () Bool)

(assert (=> b!474433 (=> (not res!283422) (not e!278490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30527 (_ BitVec 32)) Bool)

(assert (=> b!474433 (= res!283422 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!474435 () Bool)

(declare-fun e!278487 () Bool)

(declare-fun e!278489 () Bool)

(assert (=> b!474435 (= e!278487 (and e!278489 mapRes!21823))))

(declare-fun condMapEmpty!21823 () Bool)

(declare-fun mapDefault!21823 () ValueCell!6358)

