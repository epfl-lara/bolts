; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42554 () Bool)

(assert start!42554)

(declare-fun b_free!11981 () Bool)

(declare-fun b_next!11981 () Bool)

(assert (=> start!42554 (= b_free!11981 (not b_next!11981))))

(declare-fun tp!41983 () Bool)

(declare-fun b_and!20479 () Bool)

(assert (=> start!42554 (= tp!41983 b_and!20479)))

(declare-fun b!474495 () Bool)

(declare-fun e!278536 () Bool)

(declare-fun tp_is_empty!13409 () Bool)

(assert (=> b!474495 (= e!278536 tp_is_empty!13409)))

(declare-fun b!474496 () Bool)

(declare-fun res!283458 () Bool)

(declare-fun e!278533 () Bool)

(assert (=> b!474496 (=> (not res!283458) (not e!278533))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30537 0))(
  ( (array!30538 (arr!14683 (Array (_ BitVec 32) (_ BitVec 64))) (size!15035 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30537)

(declare-datatypes ((V!18983 0))(
  ( (V!18984 (val!6749 Int)) )
))
(declare-datatypes ((ValueCell!6361 0))(
  ( (ValueCellFull!6361 (v!9038 V!18983)) (EmptyCell!6361) )
))
(declare-datatypes ((array!30539 0))(
  ( (array!30540 (arr!14684 (Array (_ BitVec 32) ValueCell!6361)) (size!15036 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30539)

(assert (=> b!474496 (= res!283458 (and (= (size!15036 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15035 _keys!1025) (size!15036 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!474497 () Bool)

(declare-fun res!283460 () Bool)

(assert (=> b!474497 (=> (not res!283460) (not e!278533))))

(declare-datatypes ((List!9007 0))(
  ( (Nil!9004) (Cons!9003 (h!9859 (_ BitVec 64)) (t!14989 List!9007)) )
))
(declare-fun arrayNoDuplicates!0 (array!30537 (_ BitVec 32) List!9007) Bool)

(assert (=> b!474497 (= res!283460 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9004))))

(declare-fun b!474498 () Bool)

(declare-fun res!283461 () Bool)

(assert (=> b!474498 (=> (not res!283461) (not e!278533))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30537 (_ BitVec 32)) Bool)

(assert (=> b!474498 (= res!283461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21832 () Bool)

(declare-fun mapRes!21832 () Bool)

(declare-fun tp!41982 () Bool)

(assert (=> mapNonEmpty!21832 (= mapRes!21832 (and tp!41982 e!278536))))

(declare-fun mapValue!21832 () ValueCell!6361)

(declare-fun mapRest!21832 () (Array (_ BitVec 32) ValueCell!6361))

(declare-fun mapKey!21832 () (_ BitVec 32))

(assert (=> mapNonEmpty!21832 (= (arr!14684 _values!833) (store mapRest!21832 mapKey!21832 mapValue!21832))))

(declare-fun mapIsEmpty!21832 () Bool)

(assert (=> mapIsEmpty!21832 mapRes!21832))

(declare-fun b!474499 () Bool)

(declare-fun e!278532 () Bool)

(declare-fun e!278535 () Bool)

(assert (=> b!474499 (= e!278532 (and e!278535 mapRes!21832))))

(declare-fun condMapEmpty!21832 () Bool)

(declare-fun mapDefault!21832 () ValueCell!6361)

