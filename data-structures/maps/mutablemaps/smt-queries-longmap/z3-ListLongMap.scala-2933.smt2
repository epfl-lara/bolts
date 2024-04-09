; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41796 () Bool)

(assert start!41796)

(declare-fun b_free!11409 () Bool)

(declare-fun b_next!11409 () Bool)

(assert (=> start!41796 (= b_free!11409 (not b_next!11409))))

(declare-fun tp!40233 () Bool)

(declare-fun b_and!19795 () Bool)

(assert (=> start!41796 (= tp!40233 b_and!19795)))

(declare-fun b!466431 () Bool)

(declare-fun e!272760 () Bool)

(declare-fun tp_is_empty!12837 () Bool)

(assert (=> b!466431 (= e!272760 tp_is_empty!12837)))

(declare-fun mapNonEmpty!20941 () Bool)

(declare-fun mapRes!20941 () Bool)

(declare-fun tp!40234 () Bool)

(declare-fun e!272761 () Bool)

(assert (=> mapNonEmpty!20941 (= mapRes!20941 (and tp!40234 e!272761))))

(declare-datatypes ((V!18221 0))(
  ( (V!18222 (val!6463 Int)) )
))
(declare-datatypes ((ValueCell!6075 0))(
  ( (ValueCellFull!6075 (v!8747 V!18221)) (EmptyCell!6075) )
))
(declare-fun mapRest!20941 () (Array (_ BitVec 32) ValueCell!6075))

(declare-fun mapKey!20941 () (_ BitVec 32))

(declare-datatypes ((array!29409 0))(
  ( (array!29410 (arr!14130 (Array (_ BitVec 32) ValueCell!6075)) (size!14482 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29409)

(declare-fun mapValue!20941 () ValueCell!6075)

(assert (=> mapNonEmpty!20941 (= (arr!14130 _values!833) (store mapRest!20941 mapKey!20941 mapValue!20941))))

(declare-fun b!466432 () Bool)

(declare-fun res!278877 () Bool)

(declare-fun e!272759 () Bool)

(assert (=> b!466432 (=> (not res!278877) (not e!272759))))

(declare-datatypes ((array!29411 0))(
  ( (array!29412 (arr!14131 (Array (_ BitVec 32) (_ BitVec 64))) (size!14483 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29411)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29411 (_ BitVec 32)) Bool)

(assert (=> b!466432 (= res!278877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!466433 () Bool)

(declare-fun res!278875 () Bool)

(assert (=> b!466433 (=> (not res!278875) (not e!272759))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!466433 (= res!278875 (and (= (size!14482 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14483 _keys!1025) (size!14482 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!20941 () Bool)

(assert (=> mapIsEmpty!20941 mapRes!20941))

(declare-fun b!466434 () Bool)

(declare-fun res!278879 () Bool)

(assert (=> b!466434 (=> (not res!278879) (not e!272759))))

(declare-datatypes ((List!8578 0))(
  ( (Nil!8575) (Cons!8574 (h!9430 (_ BitVec 64)) (t!14538 List!8578)) )
))
(declare-fun arrayNoDuplicates!0 (array!29411 (_ BitVec 32) List!8578) Bool)

(assert (=> b!466434 (= res!278879 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8575))))

(declare-fun res!278876 () Bool)

(assert (=> start!41796 (=> (not res!278876) (not e!272759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41796 (= res!278876 (validMask!0 mask!1365))))

(assert (=> start!41796 e!272759))

(assert (=> start!41796 tp_is_empty!12837))

(assert (=> start!41796 tp!40233))

(assert (=> start!41796 true))

(declare-fun array_inv!10180 (array!29411) Bool)

(assert (=> start!41796 (array_inv!10180 _keys!1025)))

(declare-fun e!272758 () Bool)

(declare-fun array_inv!10181 (array!29409) Bool)

(assert (=> start!41796 (and (array_inv!10181 _values!833) e!272758)))

(declare-fun b!466435 () Bool)

(declare-fun e!272762 () Bool)

(assert (=> b!466435 (= e!272762 true)))

(declare-datatypes ((tuple2!8460 0))(
  ( (tuple2!8461 (_1!4240 (_ BitVec 64)) (_2!4240 V!18221)) )
))
(declare-datatypes ((List!8579 0))(
  ( (Nil!8576) (Cons!8575 (h!9431 tuple2!8460) (t!14539 List!8579)) )
))
(declare-datatypes ((ListLongMap!7387 0))(
  ( (ListLongMap!7388 (toList!3709 List!8579)) )
))
(declare-fun lt!210873 () ListLongMap!7387)

(declare-fun zeroValue!794 () V!18221)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18221)

(declare-fun getCurrentListMap!2146 (array!29411 array!29409 (_ BitVec 32) (_ BitVec 32) V!18221 V!18221 (_ BitVec 32) Int) ListLongMap!7387)

(assert (=> b!466435 (= lt!210873 (getCurrentListMap!2146 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!18221)

(declare-fun lt!210874 () ListLongMap!7387)

(declare-fun +!1637 (ListLongMap!7387 tuple2!8460) ListLongMap!7387)

(assert (=> b!466435 (= lt!210874 (+!1637 (getCurrentListMap!2146 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8461 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!466436 () Bool)

(assert (=> b!466436 (= e!272759 (not e!272762))))

(declare-fun res!278878 () Bool)

(assert (=> b!466436 (=> res!278878 e!272762)))

(assert (=> b!466436 (= res!278878 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!210870 () ListLongMap!7387)

(declare-fun lt!210872 () ListLongMap!7387)

(assert (=> b!466436 (= lt!210870 lt!210872)))

(declare-datatypes ((Unit!13537 0))(
  ( (Unit!13538) )
))
(declare-fun lt!210871 () Unit!13537)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!70 (array!29411 array!29409 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18221 V!18221 V!18221 V!18221 (_ BitVec 32) Int) Unit!13537)

(assert (=> b!466436 (= lt!210871 (lemmaNoChangeToArrayThenSameMapNoExtras!70 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1875 (array!29411 array!29409 (_ BitVec 32) (_ BitVec 32) V!18221 V!18221 (_ BitVec 32) Int) ListLongMap!7387)

(assert (=> b!466436 (= lt!210872 (getCurrentListMapNoExtraKeys!1875 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466436 (= lt!210870 (getCurrentListMapNoExtraKeys!1875 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466437 () Bool)

(assert (=> b!466437 (= e!272761 tp_is_empty!12837)))

(declare-fun b!466438 () Bool)

(assert (=> b!466438 (= e!272758 (and e!272760 mapRes!20941))))

(declare-fun condMapEmpty!20941 () Bool)

(declare-fun mapDefault!20941 () ValueCell!6075)

(assert (=> b!466438 (= condMapEmpty!20941 (= (arr!14130 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6075)) mapDefault!20941)))))

(assert (= (and start!41796 res!278876) b!466433))

(assert (= (and b!466433 res!278875) b!466432))

(assert (= (and b!466432 res!278877) b!466434))

(assert (= (and b!466434 res!278879) b!466436))

(assert (= (and b!466436 (not res!278878)) b!466435))

(assert (= (and b!466438 condMapEmpty!20941) mapIsEmpty!20941))

(assert (= (and b!466438 (not condMapEmpty!20941)) mapNonEmpty!20941))

(get-info :version)

(assert (= (and mapNonEmpty!20941 ((_ is ValueCellFull!6075) mapValue!20941)) b!466437))

(assert (= (and b!466438 ((_ is ValueCellFull!6075) mapDefault!20941)) b!466431))

(assert (= start!41796 b!466438))

(declare-fun m!448683 () Bool)

(assert (=> b!466435 m!448683))

(declare-fun m!448685 () Bool)

(assert (=> b!466435 m!448685))

(assert (=> b!466435 m!448685))

(declare-fun m!448687 () Bool)

(assert (=> b!466435 m!448687))

(declare-fun m!448689 () Bool)

(assert (=> b!466436 m!448689))

(declare-fun m!448691 () Bool)

(assert (=> b!466436 m!448691))

(declare-fun m!448693 () Bool)

(assert (=> b!466436 m!448693))

(declare-fun m!448695 () Bool)

(assert (=> b!466434 m!448695))

(declare-fun m!448697 () Bool)

(assert (=> start!41796 m!448697))

(declare-fun m!448699 () Bool)

(assert (=> start!41796 m!448699))

(declare-fun m!448701 () Bool)

(assert (=> start!41796 m!448701))

(declare-fun m!448703 () Bool)

(assert (=> b!466432 m!448703))

(declare-fun m!448705 () Bool)

(assert (=> mapNonEmpty!20941 m!448705))

(check-sat (not b_next!11409) (not b!466435) (not b!466434) (not b!466432) (not b!466436) (not start!41796) b_and!19795 (not mapNonEmpty!20941) tp_is_empty!12837)
(check-sat b_and!19795 (not b_next!11409))
