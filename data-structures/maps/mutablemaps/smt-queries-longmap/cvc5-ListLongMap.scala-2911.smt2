; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41630 () Bool)

(assert start!41630)

(declare-fun b_free!11275 () Bool)

(declare-fun b_next!11275 () Bool)

(assert (=> start!41630 (= b_free!11275 (not b_next!11275))))

(declare-fun tp!39825 () Bool)

(declare-fun b_and!19641 () Bool)

(assert (=> start!41630 (= tp!39825 b_and!19641)))

(declare-fun mapNonEmpty!20734 () Bool)

(declare-fun mapRes!20734 () Bool)

(declare-fun tp!39826 () Bool)

(declare-fun e!271458 () Bool)

(assert (=> mapNonEmpty!20734 (= mapRes!20734 (and tp!39826 e!271458))))

(declare-datatypes ((V!18043 0))(
  ( (V!18044 (val!6396 Int)) )
))
(declare-datatypes ((ValueCell!6008 0))(
  ( (ValueCellFull!6008 (v!8679 V!18043)) (EmptyCell!6008) )
))
(declare-fun mapValue!20734 () ValueCell!6008)

(declare-datatypes ((array!29155 0))(
  ( (array!29156 (arr!14005 (Array (_ BitVec 32) ValueCell!6008)) (size!14357 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29155)

(declare-fun mapRest!20734 () (Array (_ BitVec 32) ValueCell!6008))

(declare-fun mapKey!20734 () (_ BitVec 32))

(assert (=> mapNonEmpty!20734 (= (arr!14005 _values!833) (store mapRest!20734 mapKey!20734 mapValue!20734))))

(declare-fun mapIsEmpty!20734 () Bool)

(assert (=> mapIsEmpty!20734 mapRes!20734))

(declare-fun b!464624 () Bool)

(declare-fun res!277830 () Bool)

(declare-fun e!271460 () Bool)

(assert (=> b!464624 (=> (not res!277830) (not e!271460))))

(declare-datatypes ((array!29157 0))(
  ( (array!29158 (arr!14006 (Array (_ BitVec 32) (_ BitVec 64))) (size!14358 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29157)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29157 (_ BitVec 32)) Bool)

(assert (=> b!464624 (= res!277830 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!464625 () Bool)

(assert (=> b!464625 (= e!271460 (not true))))

(declare-datatypes ((tuple2!8358 0))(
  ( (tuple2!8359 (_1!4189 (_ BitVec 64)) (_2!4189 V!18043)) )
))
(declare-datatypes ((List!8486 0))(
  ( (Nil!8483) (Cons!8482 (h!9338 tuple2!8358) (t!14442 List!8486)) )
))
(declare-datatypes ((ListLongMap!7285 0))(
  ( (ListLongMap!7286 (toList!3658 List!8486)) )
))
(declare-fun lt!209844 () ListLongMap!7285)

(declare-fun lt!209843 () ListLongMap!7285)

(assert (=> b!464625 (= lt!209844 lt!209843)))

(declare-fun minValueBefore!38 () V!18043)

(declare-fun zeroValue!794 () V!18043)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18043)

(declare-datatypes ((Unit!13437 0))(
  ( (Unit!13438) )
))
(declare-fun lt!209845 () Unit!13437)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!21 (array!29157 array!29155 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18043 V!18043 V!18043 V!18043 (_ BitVec 32) Int) Unit!13437)

(assert (=> b!464625 (= lt!209845 (lemmaNoChangeToArrayThenSameMapNoExtras!21 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1826 (array!29157 array!29155 (_ BitVec 32) (_ BitVec 32) V!18043 V!18043 (_ BitVec 32) Int) ListLongMap!7285)

(assert (=> b!464625 (= lt!209843 (getCurrentListMapNoExtraKeys!1826 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464625 (= lt!209844 (getCurrentListMapNoExtraKeys!1826 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!464626 () Bool)

(declare-fun res!277829 () Bool)

(assert (=> b!464626 (=> (not res!277829) (not e!271460))))

(declare-datatypes ((List!8487 0))(
  ( (Nil!8484) (Cons!8483 (h!9339 (_ BitVec 64)) (t!14443 List!8487)) )
))
(declare-fun arrayNoDuplicates!0 (array!29157 (_ BitVec 32) List!8487) Bool)

(assert (=> b!464626 (= res!277829 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8484))))

(declare-fun res!277827 () Bool)

(assert (=> start!41630 (=> (not res!277827) (not e!271460))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41630 (= res!277827 (validMask!0 mask!1365))))

(assert (=> start!41630 e!271460))

(declare-fun tp_is_empty!12703 () Bool)

(assert (=> start!41630 tp_is_empty!12703))

(assert (=> start!41630 tp!39825))

(assert (=> start!41630 true))

(declare-fun array_inv!10094 (array!29157) Bool)

(assert (=> start!41630 (array_inv!10094 _keys!1025)))

(declare-fun e!271456 () Bool)

(declare-fun array_inv!10095 (array!29155) Bool)

(assert (=> start!41630 (and (array_inv!10095 _values!833) e!271456)))

(declare-fun b!464627 () Bool)

(declare-fun e!271457 () Bool)

(assert (=> b!464627 (= e!271457 tp_is_empty!12703)))

(declare-fun b!464628 () Bool)

(declare-fun res!277828 () Bool)

(assert (=> b!464628 (=> (not res!277828) (not e!271460))))

(assert (=> b!464628 (= res!277828 (and (= (size!14357 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14358 _keys!1025) (size!14357 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!464629 () Bool)

(assert (=> b!464629 (= e!271456 (and e!271457 mapRes!20734))))

(declare-fun condMapEmpty!20734 () Bool)

(declare-fun mapDefault!20734 () ValueCell!6008)

