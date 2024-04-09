; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41590 () Bool)

(assert start!41590)

(declare-fun b_free!11249 () Bool)

(declare-fun b_next!11249 () Bool)

(assert (=> start!41590 (= b_free!11249 (not b_next!11249))))

(declare-fun tp!39744 () Bool)

(declare-fun b_and!19607 () Bool)

(assert (=> start!41590 (= tp!39744 b_and!19607)))

(declare-fun b!464266 () Bool)

(declare-fun res!277642 () Bool)

(declare-fun e!271209 () Bool)

(assert (=> b!464266 (=> (not res!277642) (not e!271209))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29101 0))(
  ( (array!29102 (arr!13979 (Array (_ BitVec 32) (_ BitVec 64))) (size!14331 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29101)

(declare-datatypes ((V!18007 0))(
  ( (V!18008 (val!6383 Int)) )
))
(declare-datatypes ((ValueCell!5995 0))(
  ( (ValueCellFull!5995 (v!8666 V!18007)) (EmptyCell!5995) )
))
(declare-datatypes ((array!29103 0))(
  ( (array!29104 (arr!13980 (Array (_ BitVec 32) ValueCell!5995)) (size!14332 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29103)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!464266 (= res!277642 (and (= (size!14332 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14331 _keys!1025) (size!14332 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!464267 () Bool)

(assert (=> b!464267 (= e!271209 (not true))))

(declare-datatypes ((tuple2!8340 0))(
  ( (tuple2!8341 (_1!4180 (_ BitVec 64)) (_2!4180 V!18007)) )
))
(declare-datatypes ((List!8468 0))(
  ( (Nil!8465) (Cons!8464 (h!9320 tuple2!8340) (t!14422 List!8468)) )
))
(declare-datatypes ((ListLongMap!7267 0))(
  ( (ListLongMap!7268 (toList!3649 List!8468)) )
))
(declare-fun lt!209687 () ListLongMap!7267)

(declare-fun lt!209686 () ListLongMap!7267)

(assert (=> b!464267 (= lt!209687 lt!209686)))

(declare-fun minValueBefore!38 () V!18007)

(declare-fun zeroValue!794 () V!18007)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13419 0))(
  ( (Unit!13420) )
))
(declare-fun lt!209688 () Unit!13419)

(declare-fun minValueAfter!38 () V!18007)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!12 (array!29101 array!29103 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18007 V!18007 V!18007 V!18007 (_ BitVec 32) Int) Unit!13419)

(assert (=> b!464267 (= lt!209688 (lemmaNoChangeToArrayThenSameMapNoExtras!12 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1817 (array!29101 array!29103 (_ BitVec 32) (_ BitVec 32) V!18007 V!18007 (_ BitVec 32) Int) ListLongMap!7267)

(assert (=> b!464267 (= lt!209686 (getCurrentListMapNoExtraKeys!1817 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464267 (= lt!209687 (getCurrentListMapNoExtraKeys!1817 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!20692 () Bool)

(declare-fun mapRes!20692 () Bool)

(assert (=> mapIsEmpty!20692 mapRes!20692))

(declare-fun b!464268 () Bool)

(declare-fun res!277641 () Bool)

(assert (=> b!464268 (=> (not res!277641) (not e!271209))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29101 (_ BitVec 32)) Bool)

(assert (=> b!464268 (= res!277641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!464269 () Bool)

(declare-fun res!277643 () Bool)

(assert (=> b!464269 (=> (not res!277643) (not e!271209))))

(declare-datatypes ((List!8469 0))(
  ( (Nil!8466) (Cons!8465 (h!9321 (_ BitVec 64)) (t!14423 List!8469)) )
))
(declare-fun arrayNoDuplicates!0 (array!29101 (_ BitVec 32) List!8469) Bool)

(assert (=> b!464269 (= res!277643 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8466))))

(declare-fun b!464270 () Bool)

(declare-fun e!271210 () Bool)

(declare-fun e!271208 () Bool)

(assert (=> b!464270 (= e!271210 (and e!271208 mapRes!20692))))

(declare-fun condMapEmpty!20692 () Bool)

(declare-fun mapDefault!20692 () ValueCell!5995)

