; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42544 () Bool)

(assert start!42544)

(declare-fun b_free!11971 () Bool)

(declare-fun b_next!11971 () Bool)

(assert (=> start!42544 (= b_free!11971 (not b_next!11971))))

(declare-fun tp!41953 () Bool)

(declare-fun b_and!20469 () Bool)

(assert (=> start!42544 (= tp!41953 b_and!20469)))

(declare-fun mapIsEmpty!21817 () Bool)

(declare-fun mapRes!21817 () Bool)

(assert (=> mapIsEmpty!21817 mapRes!21817))

(declare-fun b!474390 () Bool)

(declare-fun res!283400 () Bool)

(declare-fun e!278460 () Bool)

(assert (=> b!474390 (=> (not res!283400) (not e!278460))))

(declare-datatypes ((array!30517 0))(
  ( (array!30518 (arr!14673 (Array (_ BitVec 32) (_ BitVec 64))) (size!15025 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30517)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30517 (_ BitVec 32)) Bool)

(assert (=> b!474390 (= res!283400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!474391 () Bool)

(assert (=> b!474391 (= e!278460 (not true))))

(declare-datatypes ((V!18971 0))(
  ( (V!18972 (val!6744 Int)) )
))
(declare-datatypes ((tuple2!8888 0))(
  ( (tuple2!8889 (_1!4454 (_ BitVec 64)) (_2!4454 V!18971)) )
))
(declare-datatypes ((List!8999 0))(
  ( (Nil!8996) (Cons!8995 (h!9851 tuple2!8888) (t!14981 List!8999)) )
))
(declare-datatypes ((ListLongMap!7815 0))(
  ( (ListLongMap!7816 (toList!3923 List!8999)) )
))
(declare-fun lt!216189 () ListLongMap!7815)

(declare-fun lt!216188 () ListLongMap!7815)

(assert (=> b!474391 (= lt!216189 lt!216188)))

(declare-fun minValueBefore!38 () V!18971)

(declare-fun zeroValue!794 () V!18971)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((Unit!13971 0))(
  ( (Unit!13972) )
))
(declare-fun lt!216187 () Unit!13971)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6356 0))(
  ( (ValueCellFull!6356 (v!9033 V!18971)) (EmptyCell!6356) )
))
(declare-datatypes ((array!30519 0))(
  ( (array!30520 (arr!14674 (Array (_ BitVec 32) ValueCell!6356)) (size!15026 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30519)

(declare-fun minValueAfter!38 () V!18971)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!272 (array!30517 array!30519 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18971 V!18971 V!18971 V!18971 (_ BitVec 32) Int) Unit!13971)

(assert (=> b!474391 (= lt!216187 (lemmaNoChangeToArrayThenSameMapNoExtras!272 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2077 (array!30517 array!30519 (_ BitVec 32) (_ BitVec 32) V!18971 V!18971 (_ BitVec 32) Int) ListLongMap!7815)

(assert (=> b!474391 (= lt!216188 (getCurrentListMapNoExtraKeys!2077 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!474391 (= lt!216189 (getCurrentListMapNoExtraKeys!2077 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!283398 () Bool)

(assert (=> start!42544 (=> (not res!283398) (not e!278460))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42544 (= res!283398 (validMask!0 mask!1365))))

(assert (=> start!42544 e!278460))

(declare-fun tp_is_empty!13399 () Bool)

(assert (=> start!42544 tp_is_empty!13399))

(assert (=> start!42544 tp!41953))

(assert (=> start!42544 true))

(declare-fun array_inv!10574 (array!30517) Bool)

(assert (=> start!42544 (array_inv!10574 _keys!1025)))

(declare-fun e!278457 () Bool)

(declare-fun array_inv!10575 (array!30519) Bool)

(assert (=> start!42544 (and (array_inv!10575 _values!833) e!278457)))

(declare-fun b!474389 () Bool)

(declare-fun res!283399 () Bool)

(assert (=> b!474389 (=> (not res!283399) (not e!278460))))

(assert (=> b!474389 (= res!283399 (and (= (size!15026 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15025 _keys!1025) (size!15026 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!474392 () Bool)

(declare-fun res!283401 () Bool)

(assert (=> b!474392 (=> (not res!283401) (not e!278460))))

(declare-datatypes ((List!9000 0))(
  ( (Nil!8997) (Cons!8996 (h!9852 (_ BitVec 64)) (t!14982 List!9000)) )
))
(declare-fun arrayNoDuplicates!0 (array!30517 (_ BitVec 32) List!9000) Bool)

(assert (=> b!474392 (= res!283401 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8997))))

(declare-fun b!474393 () Bool)

(declare-fun e!278458 () Bool)

(assert (=> b!474393 (= e!278457 (and e!278458 mapRes!21817))))

(declare-fun condMapEmpty!21817 () Bool)

(declare-fun mapDefault!21817 () ValueCell!6356)

