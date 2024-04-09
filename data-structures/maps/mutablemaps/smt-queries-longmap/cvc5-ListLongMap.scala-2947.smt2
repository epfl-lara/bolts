; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41910 () Bool)

(assert start!41910)

(declare-fun b_free!11491 () Bool)

(declare-fun b_next!11491 () Bool)

(assert (=> start!41910 (= b_free!11491 (not b_next!11491))))

(declare-fun tp!40486 () Bool)

(declare-fun b_and!19897 () Bool)

(assert (=> start!41910 (= tp!40486 b_and!19897)))

(declare-fun res!279526 () Bool)

(declare-fun e!273582 () Bool)

(assert (=> start!41910 (=> (not res!279526) (not e!273582))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41910 (= res!279526 (validMask!0 mask!1365))))

(assert (=> start!41910 e!273582))

(declare-fun tp_is_empty!12919 () Bool)

(assert (=> start!41910 tp_is_empty!12919))

(assert (=> start!41910 tp!40486))

(assert (=> start!41910 true))

(declare-datatypes ((array!29573 0))(
  ( (array!29574 (arr!14210 (Array (_ BitVec 32) (_ BitVec 64))) (size!14562 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29573)

(declare-fun array_inv!10248 (array!29573) Bool)

(assert (=> start!41910 (array_inv!10248 _keys!1025)))

(declare-datatypes ((V!18331 0))(
  ( (V!18332 (val!6504 Int)) )
))
(declare-datatypes ((ValueCell!6116 0))(
  ( (ValueCellFull!6116 (v!8789 V!18331)) (EmptyCell!6116) )
))
(declare-datatypes ((array!29575 0))(
  ( (array!29576 (arr!14211 (Array (_ BitVec 32) ValueCell!6116)) (size!14563 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29575)

(declare-fun e!273579 () Bool)

(declare-fun array_inv!10249 (array!29575) Bool)

(assert (=> start!41910 (and (array_inv!10249 _values!833) e!273579)))

(declare-fun b!467603 () Bool)

(declare-fun e!273584 () Bool)

(assert (=> b!467603 (= e!273584 tp_is_empty!12919)))

(declare-fun b!467604 () Bool)

(declare-fun res!279522 () Bool)

(assert (=> b!467604 (=> (not res!279522) (not e!273582))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29573 (_ BitVec 32)) Bool)

(assert (=> b!467604 (= res!279522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!467605 () Bool)

(declare-fun res!279525 () Bool)

(assert (=> b!467605 (=> (not res!279525) (not e!273582))))

(declare-datatypes ((List!8642 0))(
  ( (Nil!8639) (Cons!8638 (h!9494 (_ BitVec 64)) (t!14606 List!8642)) )
))
(declare-fun arrayNoDuplicates!0 (array!29573 (_ BitVec 32) List!8642) Bool)

(assert (=> b!467605 (= res!279525 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8639))))

(declare-fun b!467606 () Bool)

(declare-fun res!279524 () Bool)

(assert (=> b!467606 (=> (not res!279524) (not e!273582))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!467606 (= res!279524 (and (= (size!14563 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14562 _keys!1025) (size!14563 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21070 () Bool)

(declare-fun mapRes!21070 () Bool)

(assert (=> mapIsEmpty!21070 mapRes!21070))

(declare-fun b!467607 () Bool)

(declare-fun e!273581 () Bool)

(assert (=> b!467607 (= e!273581 tp_is_empty!12919)))

(declare-fun b!467608 () Bool)

(assert (=> b!467608 (= e!273579 (and e!273584 mapRes!21070))))

(declare-fun condMapEmpty!21070 () Bool)

(declare-fun mapDefault!21070 () ValueCell!6116)

