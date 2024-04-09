; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41490 () Bool)

(assert start!41490)

(declare-fun b_free!11149 () Bool)

(declare-fun b_next!11149 () Bool)

(assert (=> start!41490 (= b_free!11149 (not b_next!11149))))

(declare-fun tp!39445 () Bool)

(declare-fun b_and!19507 () Bool)

(assert (=> start!41490 (= tp!39445 b_and!19507)))

(declare-fun b!463216 () Bool)

(declare-fun e!270456 () Bool)

(assert (=> b!463216 (= e!270456 false)))

(declare-datatypes ((V!17875 0))(
  ( (V!17876 (val!6333 Int)) )
))
(declare-fun zeroValue!794 () V!17875)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8272 0))(
  ( (tuple2!8273 (_1!4146 (_ BitVec 64)) (_2!4146 V!17875)) )
))
(declare-datatypes ((List!8397 0))(
  ( (Nil!8394) (Cons!8393 (h!9249 tuple2!8272) (t!14351 List!8397)) )
))
(declare-datatypes ((ListLongMap!7199 0))(
  ( (ListLongMap!7200 (toList!3615 List!8397)) )
))
(declare-fun lt!209334 () ListLongMap!7199)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28915 0))(
  ( (array!28916 (arr!13886 (Array (_ BitVec 32) (_ BitVec 64))) (size!14238 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28915)

(declare-datatypes ((ValueCell!5945 0))(
  ( (ValueCellFull!5945 (v!8616 V!17875)) (EmptyCell!5945) )
))
(declare-datatypes ((array!28917 0))(
  ( (array!28918 (arr!13887 (Array (_ BitVec 32) ValueCell!5945)) (size!14239 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28917)

(declare-fun minValueAfter!38 () V!17875)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1783 (array!28915 array!28917 (_ BitVec 32) (_ BitVec 32) V!17875 V!17875 (_ BitVec 32) Int) ListLongMap!7199)

(assert (=> b!463216 (= lt!209334 (getCurrentListMapNoExtraKeys!1783 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!17875)

(declare-fun lt!209333 () ListLongMap!7199)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!463216 (= lt!209333 (getCurrentListMapNoExtraKeys!1783 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463217 () Bool)

(declare-fun res!277041 () Bool)

(assert (=> b!463217 (=> (not res!277041) (not e!270456))))

(declare-datatypes ((List!8398 0))(
  ( (Nil!8395) (Cons!8394 (h!9250 (_ BitVec 64)) (t!14352 List!8398)) )
))
(declare-fun arrayNoDuplicates!0 (array!28915 (_ BitVec 32) List!8398) Bool)

(assert (=> b!463217 (= res!277041 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8395))))

(declare-fun b!463218 () Bool)

(declare-fun res!277040 () Bool)

(assert (=> b!463218 (=> (not res!277040) (not e!270456))))

(assert (=> b!463218 (= res!277040 (and (= (size!14239 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14238 _keys!1025) (size!14239 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!20542 () Bool)

(declare-fun mapRes!20542 () Bool)

(assert (=> mapIsEmpty!20542 mapRes!20542))

(declare-fun b!463219 () Bool)

(declare-fun res!277043 () Bool)

(assert (=> b!463219 (=> (not res!277043) (not e!270456))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28915 (_ BitVec 32)) Bool)

(assert (=> b!463219 (= res!277043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!20542 () Bool)

(declare-fun tp!39444 () Bool)

(declare-fun e!270458 () Bool)

(assert (=> mapNonEmpty!20542 (= mapRes!20542 (and tp!39444 e!270458))))

(declare-fun mapKey!20542 () (_ BitVec 32))

(declare-fun mapValue!20542 () ValueCell!5945)

(declare-fun mapRest!20542 () (Array (_ BitVec 32) ValueCell!5945))

(assert (=> mapNonEmpty!20542 (= (arr!13887 _values!833) (store mapRest!20542 mapKey!20542 mapValue!20542))))

(declare-fun res!277042 () Bool)

(assert (=> start!41490 (=> (not res!277042) (not e!270456))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41490 (= res!277042 (validMask!0 mask!1365))))

(assert (=> start!41490 e!270456))

(declare-fun tp_is_empty!12577 () Bool)

(assert (=> start!41490 tp_is_empty!12577))

(assert (=> start!41490 tp!39445))

(assert (=> start!41490 true))

(declare-fun array_inv!10018 (array!28915) Bool)

(assert (=> start!41490 (array_inv!10018 _keys!1025)))

(declare-fun e!270457 () Bool)

(declare-fun array_inv!10019 (array!28917) Bool)

(assert (=> start!41490 (and (array_inv!10019 _values!833) e!270457)))

(declare-fun b!463220 () Bool)

(declare-fun e!270459 () Bool)

(assert (=> b!463220 (= e!270457 (and e!270459 mapRes!20542))))

(declare-fun condMapEmpty!20542 () Bool)

(declare-fun mapDefault!20542 () ValueCell!5945)

