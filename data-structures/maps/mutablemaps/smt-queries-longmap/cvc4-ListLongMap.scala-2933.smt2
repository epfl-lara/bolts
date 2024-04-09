; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41798 () Bool)

(assert start!41798)

(declare-fun b_free!11411 () Bool)

(declare-fun b_next!11411 () Bool)

(assert (=> start!41798 (= b_free!11411 (not b_next!11411))))

(declare-fun tp!40240 () Bool)

(declare-fun b_and!19797 () Bool)

(assert (=> start!41798 (= tp!40240 b_and!19797)))

(declare-fun res!278894 () Bool)

(declare-fun e!272779 () Bool)

(assert (=> start!41798 (=> (not res!278894) (not e!272779))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41798 (= res!278894 (validMask!0 mask!1365))))

(assert (=> start!41798 e!272779))

(declare-fun tp_is_empty!12839 () Bool)

(assert (=> start!41798 tp_is_empty!12839))

(assert (=> start!41798 tp!40240))

(assert (=> start!41798 true))

(declare-datatypes ((array!29413 0))(
  ( (array!29414 (arr!14132 (Array (_ BitVec 32) (_ BitVec 64))) (size!14484 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29413)

(declare-fun array_inv!10182 (array!29413) Bool)

(assert (=> start!41798 (array_inv!10182 _keys!1025)))

(declare-datatypes ((V!18223 0))(
  ( (V!18224 (val!6464 Int)) )
))
(declare-datatypes ((ValueCell!6076 0))(
  ( (ValueCellFull!6076 (v!8748 V!18223)) (EmptyCell!6076) )
))
(declare-datatypes ((array!29415 0))(
  ( (array!29416 (arr!14133 (Array (_ BitVec 32) ValueCell!6076)) (size!14485 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29415)

(declare-fun e!272778 () Bool)

(declare-fun array_inv!10183 (array!29415) Bool)

(assert (=> start!41798 (and (array_inv!10183 _values!833) e!272778)))

(declare-fun b!466455 () Bool)

(declare-fun e!272775 () Bool)

(assert (=> b!466455 (= e!272775 true)))

(declare-fun zeroValue!794 () V!18223)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8462 0))(
  ( (tuple2!8463 (_1!4241 (_ BitVec 64)) (_2!4241 V!18223)) )
))
(declare-datatypes ((List!8580 0))(
  ( (Nil!8577) (Cons!8576 (h!9432 tuple2!8462) (t!14540 List!8580)) )
))
(declare-datatypes ((ListLongMap!7389 0))(
  ( (ListLongMap!7390 (toList!3710 List!8580)) )
))
(declare-fun lt!210888 () ListLongMap!7389)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18223)

(declare-fun getCurrentListMap!2147 (array!29413 array!29415 (_ BitVec 32) (_ BitVec 32) V!18223 V!18223 (_ BitVec 32) Int) ListLongMap!7389)

(assert (=> b!466455 (= lt!210888 (getCurrentListMap!2147 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210889 () ListLongMap!7389)

(declare-fun minValueBefore!38 () V!18223)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun +!1638 (ListLongMap!7389 tuple2!8462) ListLongMap!7389)

(assert (=> b!466455 (= lt!210889 (+!1638 (getCurrentListMap!2147 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8463 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!466456 () Bool)

(declare-fun res!278893 () Bool)

(assert (=> b!466456 (=> (not res!278893) (not e!272779))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29413 (_ BitVec 32)) Bool)

(assert (=> b!466456 (= res!278893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!466457 () Bool)

(declare-fun res!278892 () Bool)

(assert (=> b!466457 (=> (not res!278892) (not e!272779))))

(declare-datatypes ((List!8581 0))(
  ( (Nil!8578) (Cons!8577 (h!9433 (_ BitVec 64)) (t!14541 List!8581)) )
))
(declare-fun arrayNoDuplicates!0 (array!29413 (_ BitVec 32) List!8581) Bool)

(assert (=> b!466457 (= res!278892 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8578))))

(declare-fun mapNonEmpty!20944 () Bool)

(declare-fun mapRes!20944 () Bool)

(declare-fun tp!40239 () Bool)

(declare-fun e!272777 () Bool)

(assert (=> mapNonEmpty!20944 (= mapRes!20944 (and tp!40239 e!272777))))

(declare-fun mapKey!20944 () (_ BitVec 32))

(declare-fun mapValue!20944 () ValueCell!6076)

(declare-fun mapRest!20944 () (Array (_ BitVec 32) ValueCell!6076))

(assert (=> mapNonEmpty!20944 (= (arr!14133 _values!833) (store mapRest!20944 mapKey!20944 mapValue!20944))))

(declare-fun b!466458 () Bool)

(declare-fun res!278891 () Bool)

(assert (=> b!466458 (=> (not res!278891) (not e!272779))))

(assert (=> b!466458 (= res!278891 (and (= (size!14485 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14484 _keys!1025) (size!14485 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!466459 () Bool)

(declare-fun e!272776 () Bool)

(assert (=> b!466459 (= e!272776 tp_is_empty!12839)))

(declare-fun b!466460 () Bool)

(assert (=> b!466460 (= e!272779 (not e!272775))))

(declare-fun res!278890 () Bool)

(assert (=> b!466460 (=> res!278890 e!272775)))

(assert (=> b!466460 (= res!278890 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!210886 () ListLongMap!7389)

(declare-fun lt!210885 () ListLongMap!7389)

(assert (=> b!466460 (= lt!210886 lt!210885)))

(declare-datatypes ((Unit!13539 0))(
  ( (Unit!13540) )
))
(declare-fun lt!210887 () Unit!13539)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!71 (array!29413 array!29415 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18223 V!18223 V!18223 V!18223 (_ BitVec 32) Int) Unit!13539)

(assert (=> b!466460 (= lt!210887 (lemmaNoChangeToArrayThenSameMapNoExtras!71 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1876 (array!29413 array!29415 (_ BitVec 32) (_ BitVec 32) V!18223 V!18223 (_ BitVec 32) Int) ListLongMap!7389)

(assert (=> b!466460 (= lt!210885 (getCurrentListMapNoExtraKeys!1876 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466460 (= lt!210886 (getCurrentListMapNoExtraKeys!1876 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466461 () Bool)

(assert (=> b!466461 (= e!272778 (and e!272776 mapRes!20944))))

(declare-fun condMapEmpty!20944 () Bool)

(declare-fun mapDefault!20944 () ValueCell!6076)

