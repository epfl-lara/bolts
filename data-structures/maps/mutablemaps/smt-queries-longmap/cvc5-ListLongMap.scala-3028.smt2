; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42550 () Bool)

(assert start!42550)

(declare-fun b_free!11977 () Bool)

(declare-fun b_next!11977 () Bool)

(assert (=> start!42550 (= b_free!11977 (not b_next!11977))))

(declare-fun tp!41971 () Bool)

(declare-fun b_and!20475 () Bool)

(assert (=> start!42550 (= tp!41971 b_and!20475)))

(declare-fun res!283436 () Bool)

(declare-fun e!278504 () Bool)

(assert (=> start!42550 (=> (not res!283436) (not e!278504))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42550 (= res!283436 (validMask!0 mask!1365))))

(assert (=> start!42550 e!278504))

(declare-fun tp_is_empty!13405 () Bool)

(assert (=> start!42550 tp_is_empty!13405))

(assert (=> start!42550 tp!41971))

(assert (=> start!42550 true))

(declare-datatypes ((array!30529 0))(
  ( (array!30530 (arr!14679 (Array (_ BitVec 32) (_ BitVec 64))) (size!15031 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30529)

(declare-fun array_inv!10578 (array!30529) Bool)

(assert (=> start!42550 (array_inv!10578 _keys!1025)))

(declare-datatypes ((V!18979 0))(
  ( (V!18980 (val!6747 Int)) )
))
(declare-datatypes ((ValueCell!6359 0))(
  ( (ValueCellFull!6359 (v!9036 V!18979)) (EmptyCell!6359) )
))
(declare-datatypes ((array!30531 0))(
  ( (array!30532 (arr!14680 (Array (_ BitVec 32) ValueCell!6359)) (size!15032 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30531)

(declare-fun e!278506 () Bool)

(declare-fun array_inv!10579 (array!30531) Bool)

(assert (=> start!42550 (and (array_inv!10579 _values!833) e!278506)))

(declare-fun b!474452 () Bool)

(declare-fun res!283435 () Bool)

(assert (=> b!474452 (=> (not res!283435) (not e!278504))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!474452 (= res!283435 (and (= (size!15032 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15031 _keys!1025) (size!15032 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!474453 () Bool)

(assert (=> b!474453 (= e!278504 false)))

(declare-fun zeroValue!794 () V!18979)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8892 0))(
  ( (tuple2!8893 (_1!4456 (_ BitVec 64)) (_2!4456 V!18979)) )
))
(declare-datatypes ((List!9003 0))(
  ( (Nil!9000) (Cons!8999 (h!9855 tuple2!8892) (t!14985 List!9003)) )
))
(declare-datatypes ((ListLongMap!7819 0))(
  ( (ListLongMap!7820 (toList!3925 List!9003)) )
))
(declare-fun lt!216213 () ListLongMap!7819)

(declare-fun minValueAfter!38 () V!18979)

(declare-fun getCurrentListMapNoExtraKeys!2079 (array!30529 array!30531 (_ BitVec 32) (_ BitVec 32) V!18979 V!18979 (_ BitVec 32) Int) ListLongMap!7819)

(assert (=> b!474453 (= lt!216213 (getCurrentListMapNoExtraKeys!2079 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!18979)

(declare-fun lt!216212 () ListLongMap!7819)

(assert (=> b!474453 (= lt!216212 (getCurrentListMapNoExtraKeys!2079 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21826 () Bool)

(declare-fun mapRes!21826 () Bool)

(declare-fun tp!41970 () Bool)

(declare-fun e!278505 () Bool)

(assert (=> mapNonEmpty!21826 (= mapRes!21826 (and tp!41970 e!278505))))

(declare-fun mapKey!21826 () (_ BitVec 32))

(declare-fun mapValue!21826 () ValueCell!6359)

(declare-fun mapRest!21826 () (Array (_ BitVec 32) ValueCell!6359))

(assert (=> mapNonEmpty!21826 (= (arr!14680 _values!833) (store mapRest!21826 mapKey!21826 mapValue!21826))))

(declare-fun b!474454 () Bool)

(declare-fun e!278503 () Bool)

(assert (=> b!474454 (= e!278503 tp_is_empty!13405)))

(declare-fun b!474455 () Bool)

(declare-fun res!283437 () Bool)

(assert (=> b!474455 (=> (not res!283437) (not e!278504))))

(declare-datatypes ((List!9004 0))(
  ( (Nil!9001) (Cons!9000 (h!9856 (_ BitVec 64)) (t!14986 List!9004)) )
))
(declare-fun arrayNoDuplicates!0 (array!30529 (_ BitVec 32) List!9004) Bool)

(assert (=> b!474455 (= res!283437 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9001))))

(declare-fun b!474456 () Bool)

(declare-fun res!283434 () Bool)

(assert (=> b!474456 (=> (not res!283434) (not e!278504))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30529 (_ BitVec 32)) Bool)

(assert (=> b!474456 (= res!283434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!474457 () Bool)

(assert (=> b!474457 (= e!278506 (and e!278503 mapRes!21826))))

(declare-fun condMapEmpty!21826 () Bool)

(declare-fun mapDefault!21826 () ValueCell!6359)

