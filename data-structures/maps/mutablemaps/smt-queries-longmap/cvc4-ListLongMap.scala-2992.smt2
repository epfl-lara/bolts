; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42268 () Bool)

(assert start!42268)

(declare-fun b_free!11765 () Bool)

(declare-fun b_next!11765 () Bool)

(assert (=> start!42268 (= b_free!11765 (not b_next!11765))))

(declare-fun tp!41323 () Bool)

(declare-fun b_and!20221 () Bool)

(assert (=> start!42268 (= tp!41323 b_and!20221)))

(declare-fun mapIsEmpty!21496 () Bool)

(declare-fun mapRes!21496 () Bool)

(assert (=> mapIsEmpty!21496 mapRes!21496))

(declare-fun b!471388 () Bool)

(declare-fun e!276297 () Bool)

(declare-fun tp_is_empty!13193 () Bool)

(assert (=> b!471388 (= e!276297 tp_is_empty!13193)))

(declare-fun b!471389 () Bool)

(declare-fun e!276294 () Bool)

(assert (=> b!471389 (= e!276294 (not true))))

(declare-datatypes ((V!18695 0))(
  ( (V!18696 (val!6641 Int)) )
))
(declare-datatypes ((tuple2!8722 0))(
  ( (tuple2!8723 (_1!4371 (_ BitVec 64)) (_2!4371 V!18695)) )
))
(declare-datatypes ((List!8841 0))(
  ( (Nil!8838) (Cons!8837 (h!9693 tuple2!8722) (t!14815 List!8841)) )
))
(declare-datatypes ((ListLongMap!7649 0))(
  ( (ListLongMap!7650 (toList!3840 List!8841)) )
))
(declare-fun lt!213914 () ListLongMap!7649)

(declare-fun lt!213913 () ListLongMap!7649)

(assert (=> b!471389 (= lt!213914 lt!213913)))

(declare-fun minValueBefore!38 () V!18695)

(declare-fun zeroValue!794 () V!18695)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6253 0))(
  ( (ValueCellFull!6253 (v!8928 V!18695)) (EmptyCell!6253) )
))
(declare-datatypes ((array!30113 0))(
  ( (array!30114 (arr!14475 (Array (_ BitVec 32) ValueCell!6253)) (size!14827 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30113)

(declare-datatypes ((array!30115 0))(
  ( (array!30116 (arr!14476 (Array (_ BitVec 32) (_ BitVec 64))) (size!14828 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30115)

(declare-fun minValueAfter!38 () V!18695)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-datatypes ((Unit!13806 0))(
  ( (Unit!13807) )
))
(declare-fun lt!213915 () Unit!13806)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!197 (array!30115 array!30113 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18695 V!18695 V!18695 V!18695 (_ BitVec 32) Int) Unit!13806)

(assert (=> b!471389 (= lt!213915 (lemmaNoChangeToArrayThenSameMapNoExtras!197 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2002 (array!30115 array!30113 (_ BitVec 32) (_ BitVec 32) V!18695 V!18695 (_ BitVec 32) Int) ListLongMap!7649)

(assert (=> b!471389 (= lt!213913 (getCurrentListMapNoExtraKeys!2002 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471389 (= lt!213914 (getCurrentListMapNoExtraKeys!2002 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471390 () Bool)

(declare-fun e!276295 () Bool)

(assert (=> b!471390 (= e!276295 tp_is_empty!13193)))

(declare-fun mapNonEmpty!21496 () Bool)

(declare-fun tp!41322 () Bool)

(assert (=> mapNonEmpty!21496 (= mapRes!21496 (and tp!41322 e!276295))))

(declare-fun mapKey!21496 () (_ BitVec 32))

(declare-fun mapRest!21496 () (Array (_ BitVec 32) ValueCell!6253))

(declare-fun mapValue!21496 () ValueCell!6253)

(assert (=> mapNonEmpty!21496 (= (arr!14475 _values!833) (store mapRest!21496 mapKey!21496 mapValue!21496))))

(declare-fun b!471391 () Bool)

(declare-fun res!281675 () Bool)

(assert (=> b!471391 (=> (not res!281675) (not e!276294))))

(declare-datatypes ((List!8842 0))(
  ( (Nil!8839) (Cons!8838 (h!9694 (_ BitVec 64)) (t!14816 List!8842)) )
))
(declare-fun arrayNoDuplicates!0 (array!30115 (_ BitVec 32) List!8842) Bool)

(assert (=> b!471391 (= res!281675 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8839))))

(declare-fun b!471392 () Bool)

(declare-fun res!281674 () Bool)

(assert (=> b!471392 (=> (not res!281674) (not e!276294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30115 (_ BitVec 32)) Bool)

(assert (=> b!471392 (= res!281674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471393 () Bool)

(declare-fun res!281673 () Bool)

(assert (=> b!471393 (=> (not res!281673) (not e!276294))))

(assert (=> b!471393 (= res!281673 (and (= (size!14827 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14828 _keys!1025) (size!14827 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471394 () Bool)

(declare-fun e!276298 () Bool)

(assert (=> b!471394 (= e!276298 (and e!276297 mapRes!21496))))

(declare-fun condMapEmpty!21496 () Bool)

(declare-fun mapDefault!21496 () ValueCell!6253)

