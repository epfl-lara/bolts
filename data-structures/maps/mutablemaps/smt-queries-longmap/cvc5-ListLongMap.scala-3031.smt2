; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42568 () Bool)

(assert start!42568)

(declare-fun b_free!11995 () Bool)

(declare-fun b_next!11995 () Bool)

(assert (=> start!42568 (= b_free!11995 (not b_next!11995))))

(declare-fun tp!42024 () Bool)

(declare-fun b_and!20493 () Bool)

(assert (=> start!42568 (= tp!42024 b_and!20493)))

(declare-fun b!474641 () Bool)

(declare-fun res!283542 () Bool)

(declare-fun e!278640 () Bool)

(assert (=> b!474641 (=> (not res!283542) (not e!278640))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30565 0))(
  ( (array!30566 (arr!14697 (Array (_ BitVec 32) (_ BitVec 64))) (size!15049 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30565)

(declare-datatypes ((V!19003 0))(
  ( (V!19004 (val!6756 Int)) )
))
(declare-datatypes ((ValueCell!6368 0))(
  ( (ValueCellFull!6368 (v!9045 V!19003)) (EmptyCell!6368) )
))
(declare-datatypes ((array!30567 0))(
  ( (array!30568 (arr!14698 (Array (_ BitVec 32) ValueCell!6368)) (size!15050 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30567)

(assert (=> b!474641 (= res!283542 (and (= (size!15050 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15049 _keys!1025) (size!15050 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!474642 () Bool)

(declare-fun e!278641 () Bool)

(declare-fun tp_is_empty!13423 () Bool)

(assert (=> b!474642 (= e!278641 tp_is_empty!13423)))

(declare-fun res!283545 () Bool)

(assert (=> start!42568 (=> (not res!283545) (not e!278640))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42568 (= res!283545 (validMask!0 mask!1365))))

(assert (=> start!42568 e!278640))

(assert (=> start!42568 tp_is_empty!13423))

(assert (=> start!42568 tp!42024))

(assert (=> start!42568 true))

(declare-fun array_inv!10590 (array!30565) Bool)

(assert (=> start!42568 (array_inv!10590 _keys!1025)))

(declare-fun e!278637 () Bool)

(declare-fun array_inv!10591 (array!30567) Bool)

(assert (=> start!42568 (and (array_inv!10591 _values!833) e!278637)))

(declare-fun mapNonEmpty!21853 () Bool)

(declare-fun mapRes!21853 () Bool)

(declare-fun tp!42025 () Bool)

(declare-fun e!278638 () Bool)

(assert (=> mapNonEmpty!21853 (= mapRes!21853 (and tp!42025 e!278638))))

(declare-fun mapRest!21853 () (Array (_ BitVec 32) ValueCell!6368))

(declare-fun mapValue!21853 () ValueCell!6368)

(declare-fun mapKey!21853 () (_ BitVec 32))

(assert (=> mapNonEmpty!21853 (= (arr!14698 _values!833) (store mapRest!21853 mapKey!21853 mapValue!21853))))

(declare-fun b!474643 () Bool)

(assert (=> b!474643 (= e!278637 (and e!278641 mapRes!21853))))

(declare-fun condMapEmpty!21853 () Bool)

(declare-fun mapDefault!21853 () ValueCell!6368)

