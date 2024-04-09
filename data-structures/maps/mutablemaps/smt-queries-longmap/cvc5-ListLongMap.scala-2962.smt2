; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42016 () Bool)

(assert start!42016)

(declare-fun b_free!11581 () Bool)

(declare-fun b_next!11581 () Bool)

(assert (=> start!42016 (= b_free!11581 (not b_next!11581))))

(declare-fun tp!40759 () Bool)

(declare-fun b_and!19997 () Bool)

(assert (=> start!42016 (= tp!40759 b_and!19997)))

(declare-fun b!468831 () Bool)

(declare-fun res!280256 () Bool)

(declare-fun e!274488 () Bool)

(assert (=> b!468831 (=> (not res!280256) (not e!274488))))

(declare-datatypes ((array!29751 0))(
  ( (array!29752 (arr!14298 (Array (_ BitVec 32) (_ BitVec 64))) (size!14650 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29751)

(declare-datatypes ((List!8712 0))(
  ( (Nil!8709) (Cons!8708 (h!9564 (_ BitVec 64)) (t!14678 List!8712)) )
))
(declare-fun arrayNoDuplicates!0 (array!29751 (_ BitVec 32) List!8712) Bool)

(assert (=> b!468831 (= res!280256 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8709))))

(declare-fun b!468832 () Bool)

(declare-fun res!280259 () Bool)

(assert (=> b!468832 (=> (not res!280259) (not e!274488))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!18451 0))(
  ( (V!18452 (val!6549 Int)) )
))
(declare-datatypes ((ValueCell!6161 0))(
  ( (ValueCellFull!6161 (v!8834 V!18451)) (EmptyCell!6161) )
))
(declare-datatypes ((array!29753 0))(
  ( (array!29754 (arr!14299 (Array (_ BitVec 32) ValueCell!6161)) (size!14651 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29753)

(assert (=> b!468832 (= res!280259 (and (= (size!14651 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14650 _keys!1025) (size!14651 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21208 () Bool)

(declare-fun mapRes!21208 () Bool)

(assert (=> mapIsEmpty!21208 mapRes!21208))

(declare-fun b!468833 () Bool)

(declare-fun e!274486 () Bool)

(declare-fun tp_is_empty!13009 () Bool)

(assert (=> b!468833 (= e!274486 tp_is_empty!13009)))

(declare-fun res!280257 () Bool)

(assert (=> start!42016 (=> (not res!280257) (not e!274488))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42016 (= res!280257 (validMask!0 mask!1365))))

(assert (=> start!42016 e!274488))

(assert (=> start!42016 tp_is_empty!13009))

(assert (=> start!42016 tp!40759))

(assert (=> start!42016 true))

(declare-fun array_inv!10316 (array!29751) Bool)

(assert (=> start!42016 (array_inv!10316 _keys!1025)))

(declare-fun e!274487 () Bool)

(declare-fun array_inv!10317 (array!29753) Bool)

(assert (=> start!42016 (and (array_inv!10317 _values!833) e!274487)))

(declare-fun b!468834 () Bool)

(declare-fun e!274484 () Bool)

(assert (=> b!468834 (= e!274488 (not e!274484))))

(declare-fun res!280258 () Bool)

(assert (=> b!468834 (=> res!280258 e!274484)))

(assert (=> b!468834 (= res!280258 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8592 0))(
  ( (tuple2!8593 (_1!4306 (_ BitVec 64)) (_2!4306 V!18451)) )
))
(declare-datatypes ((List!8713 0))(
  ( (Nil!8710) (Cons!8709 (h!9565 tuple2!8592) (t!14679 List!8713)) )
))
(declare-datatypes ((ListLongMap!7519 0))(
  ( (ListLongMap!7520 (toList!3775 List!8713)) )
))
(declare-fun lt!212319 () ListLongMap!7519)

(declare-fun lt!212320 () ListLongMap!7519)

(assert (=> b!468834 (= lt!212319 lt!212320)))

(declare-fun minValueBefore!38 () V!18451)

(declare-fun zeroValue!794 () V!18451)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13672 0))(
  ( (Unit!13673) )
))
(declare-fun lt!212317 () Unit!13672)

(declare-fun minValueAfter!38 () V!18451)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!134 (array!29751 array!29753 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18451 V!18451 V!18451 V!18451 (_ BitVec 32) Int) Unit!13672)

(assert (=> b!468834 (= lt!212317 (lemmaNoChangeToArrayThenSameMapNoExtras!134 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1939 (array!29751 array!29753 (_ BitVec 32) (_ BitVec 32) V!18451 V!18451 (_ BitVec 32) Int) ListLongMap!7519)

(assert (=> b!468834 (= lt!212320 (getCurrentListMapNoExtraKeys!1939 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468834 (= lt!212319 (getCurrentListMapNoExtraKeys!1939 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468835 () Bool)

(assert (=> b!468835 (= e!274484 true)))

(declare-fun lt!212315 () tuple2!8592)

(declare-fun +!1664 (ListLongMap!7519 tuple2!8592) ListLongMap!7519)

(assert (=> b!468835 (= (+!1664 lt!212319 lt!212315) (+!1664 (+!1664 lt!212319 (tuple2!8593 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212315))))

(assert (=> b!468835 (= lt!212315 (tuple2!8593 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!212321 () Unit!13672)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!105 (ListLongMap!7519 (_ BitVec 64) V!18451 V!18451) Unit!13672)

(assert (=> b!468835 (= lt!212321 (addSameAsAddTwiceSameKeyDiffValues!105 lt!212319 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!212316 () ListLongMap!7519)

(declare-fun getCurrentListMap!2186 (array!29751 array!29753 (_ BitVec 32) (_ BitVec 32) V!18451 V!18451 (_ BitVec 32) Int) ListLongMap!7519)

(assert (=> b!468835 (= lt!212316 (getCurrentListMap!2186 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212318 () ListLongMap!7519)

(assert (=> b!468835 (= lt!212318 (getCurrentListMap!2186 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21208 () Bool)

(declare-fun tp!40758 () Bool)

(assert (=> mapNonEmpty!21208 (= mapRes!21208 (and tp!40758 e!274486))))

(declare-fun mapValue!21208 () ValueCell!6161)

(declare-fun mapKey!21208 () (_ BitVec 32))

(declare-fun mapRest!21208 () (Array (_ BitVec 32) ValueCell!6161))

(assert (=> mapNonEmpty!21208 (= (arr!14299 _values!833) (store mapRest!21208 mapKey!21208 mapValue!21208))))

(declare-fun b!468836 () Bool)

(declare-fun res!280255 () Bool)

(assert (=> b!468836 (=> (not res!280255) (not e!274488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29751 (_ BitVec 32)) Bool)

(assert (=> b!468836 (= res!280255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!468837 () Bool)

(declare-fun e!274483 () Bool)

(assert (=> b!468837 (= e!274487 (and e!274483 mapRes!21208))))

(declare-fun condMapEmpty!21208 () Bool)

(declare-fun mapDefault!21208 () ValueCell!6161)

