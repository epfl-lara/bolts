; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41568 () Bool)

(assert start!41568)

(declare-fun b_free!11227 () Bool)

(declare-fun b_next!11227 () Bool)

(assert (=> start!41568 (= b_free!11227 (not b_next!11227))))

(declare-fun tp!39679 () Bool)

(declare-fun b_and!19585 () Bool)

(assert (=> start!41568 (= tp!39679 b_and!19585)))

(declare-fun b!464035 () Bool)

(declare-fun res!277509 () Bool)

(declare-fun e!271043 () Bool)

(assert (=> b!464035 (=> (not res!277509) (not e!271043))))

(declare-datatypes ((array!29063 0))(
  ( (array!29064 (arr!13960 (Array (_ BitVec 32) (_ BitVec 64))) (size!14312 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29063)

(declare-datatypes ((List!8454 0))(
  ( (Nil!8451) (Cons!8450 (h!9306 (_ BitVec 64)) (t!14408 List!8454)) )
))
(declare-fun arrayNoDuplicates!0 (array!29063 (_ BitVec 32) List!8454) Bool)

(assert (=> b!464035 (= res!277509 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8451))))

(declare-fun mapIsEmpty!20659 () Bool)

(declare-fun mapRes!20659 () Bool)

(assert (=> mapIsEmpty!20659 mapRes!20659))

(declare-fun b!464036 () Bool)

(declare-fun res!277511 () Bool)

(assert (=> b!464036 (=> (not res!277511) (not e!271043))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29063 (_ BitVec 32)) Bool)

(assert (=> b!464036 (= res!277511 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!464037 () Bool)

(declare-fun res!277510 () Bool)

(assert (=> b!464037 (=> (not res!277510) (not e!271043))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!17979 0))(
  ( (V!17980 (val!6372 Int)) )
))
(declare-datatypes ((ValueCell!5984 0))(
  ( (ValueCellFull!5984 (v!8655 V!17979)) (EmptyCell!5984) )
))
(declare-datatypes ((array!29065 0))(
  ( (array!29066 (arr!13961 (Array (_ BitVec 32) ValueCell!5984)) (size!14313 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29065)

(assert (=> b!464037 (= res!277510 (and (= (size!14313 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14312 _keys!1025) (size!14313 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!20659 () Bool)

(declare-fun tp!39678 () Bool)

(declare-fun e!271041 () Bool)

(assert (=> mapNonEmpty!20659 (= mapRes!20659 (and tp!39678 e!271041))))

(declare-fun mapKey!20659 () (_ BitVec 32))

(declare-fun mapRest!20659 () (Array (_ BitVec 32) ValueCell!5984))

(declare-fun mapValue!20659 () ValueCell!5984)

(assert (=> mapNonEmpty!20659 (= (arr!13961 _values!833) (store mapRest!20659 mapKey!20659 mapValue!20659))))

(declare-fun b!464038 () Bool)

(assert (=> b!464038 (= e!271043 (not true))))

(declare-datatypes ((tuple2!8326 0))(
  ( (tuple2!8327 (_1!4173 (_ BitVec 64)) (_2!4173 V!17979)) )
))
(declare-datatypes ((List!8455 0))(
  ( (Nil!8452) (Cons!8451 (h!9307 tuple2!8326) (t!14409 List!8455)) )
))
(declare-datatypes ((ListLongMap!7253 0))(
  ( (ListLongMap!7254 (toList!3642 List!8455)) )
))
(declare-fun lt!209588 () ListLongMap!7253)

(declare-fun lt!209589 () ListLongMap!7253)

(assert (=> b!464038 (= lt!209588 lt!209589)))

(declare-datatypes ((Unit!13405 0))(
  ( (Unit!13406) )
))
(declare-fun lt!209587 () Unit!13405)

(declare-fun minValueBefore!38 () V!17979)

(declare-fun zeroValue!794 () V!17979)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!17979)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!5 (array!29063 array!29065 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!17979 V!17979 V!17979 V!17979 (_ BitVec 32) Int) Unit!13405)

(assert (=> b!464038 (= lt!209587 (lemmaNoChangeToArrayThenSameMapNoExtras!5 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1810 (array!29063 array!29065 (_ BitVec 32) (_ BitVec 32) V!17979 V!17979 (_ BitVec 32) Int) ListLongMap!7253)

(assert (=> b!464038 (= lt!209589 (getCurrentListMapNoExtraKeys!1810 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464038 (= lt!209588 (getCurrentListMapNoExtraKeys!1810 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!277508 () Bool)

(assert (=> start!41568 (=> (not res!277508) (not e!271043))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41568 (= res!277508 (validMask!0 mask!1365))))

(assert (=> start!41568 e!271043))

(declare-fun tp_is_empty!12655 () Bool)

(assert (=> start!41568 tp_is_empty!12655))

(assert (=> start!41568 tp!39679))

(assert (=> start!41568 true))

(declare-fun array_inv!10066 (array!29063) Bool)

(assert (=> start!41568 (array_inv!10066 _keys!1025)))

(declare-fun e!271045 () Bool)

(declare-fun array_inv!10067 (array!29065) Bool)

(assert (=> start!41568 (and (array_inv!10067 _values!833) e!271045)))

(declare-fun b!464039 () Bool)

(declare-fun e!271044 () Bool)

(assert (=> b!464039 (= e!271045 (and e!271044 mapRes!20659))))

(declare-fun condMapEmpty!20659 () Bool)

(declare-fun mapDefault!20659 () ValueCell!5984)

