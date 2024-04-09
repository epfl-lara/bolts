; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42092 () Bool)

(assert start!42092)

(declare-fun b_free!11637 () Bool)

(declare-fun b_next!11637 () Bool)

(assert (=> start!42092 (= b_free!11637 (not b_next!11637))))

(declare-fun tp!40929 () Bool)

(declare-fun b_and!20065 () Bool)

(assert (=> start!42092 (= tp!40929 b_and!20065)))

(declare-fun mapIsEmpty!21295 () Bool)

(declare-fun mapRes!21295 () Bool)

(assert (=> mapIsEmpty!21295 mapRes!21295))

(declare-fun res!280753 () Bool)

(declare-fun e!275102 () Bool)

(assert (=> start!42092 (=> (not res!280753) (not e!275102))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42092 (= res!280753 (validMask!0 mask!1365))))

(assert (=> start!42092 e!275102))

(declare-fun tp_is_empty!13065 () Bool)

(assert (=> start!42092 tp_is_empty!13065))

(assert (=> start!42092 tp!40929))

(assert (=> start!42092 true))

(declare-datatypes ((array!29863 0))(
  ( (array!29864 (arr!14353 (Array (_ BitVec 32) (_ BitVec 64))) (size!14705 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29863)

(declare-fun array_inv!10350 (array!29863) Bool)

(assert (=> start!42092 (array_inv!10350 _keys!1025)))

(declare-datatypes ((V!18525 0))(
  ( (V!18526 (val!6577 Int)) )
))
(declare-datatypes ((ValueCell!6189 0))(
  ( (ValueCellFull!6189 (v!8863 V!18525)) (EmptyCell!6189) )
))
(declare-datatypes ((array!29865 0))(
  ( (array!29866 (arr!14354 (Array (_ BitVec 32) ValueCell!6189)) (size!14706 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29865)

(declare-fun e!275103 () Bool)

(declare-fun array_inv!10351 (array!29865) Bool)

(assert (=> start!42092 (and (array_inv!10351 _values!833) e!275103)))

(declare-fun b!469682 () Bool)

(declare-fun res!280756 () Bool)

(assert (=> b!469682 (=> (not res!280756) (not e!275102))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!469682 (= res!280756 (and (= (size!14706 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14705 _keys!1025) (size!14706 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!469683 () Bool)

(declare-fun res!280754 () Bool)

(assert (=> b!469683 (=> (not res!280754) (not e!275102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29863 (_ BitVec 32)) Bool)

(assert (=> b!469683 (= res!280754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!469684 () Bool)

(declare-fun res!280755 () Bool)

(assert (=> b!469684 (=> (not res!280755) (not e!275102))))

(declare-datatypes ((List!8752 0))(
  ( (Nil!8749) (Cons!8748 (h!9604 (_ BitVec 64)) (t!14720 List!8752)) )
))
(declare-fun arrayNoDuplicates!0 (array!29863 (_ BitVec 32) List!8752) Bool)

(assert (=> b!469684 (= res!280755 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8749))))

(declare-fun b!469685 () Bool)

(declare-fun e!275104 () Bool)

(assert (=> b!469685 (= e!275102 (not e!275104))))

(declare-fun res!280752 () Bool)

(assert (=> b!469685 (=> res!280752 e!275104)))

(assert (=> b!469685 (= res!280752 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8634 0))(
  ( (tuple2!8635 (_1!4327 (_ BitVec 64)) (_2!4327 V!18525)) )
))
(declare-datatypes ((List!8753 0))(
  ( (Nil!8750) (Cons!8749 (h!9605 tuple2!8634) (t!14721 List!8753)) )
))
(declare-datatypes ((ListLongMap!7561 0))(
  ( (ListLongMap!7562 (toList!3796 List!8753)) )
))
(declare-fun lt!213059 () ListLongMap!7561)

(declare-fun lt!213054 () ListLongMap!7561)

(assert (=> b!469685 (= lt!213059 lt!213054)))

(declare-fun minValueBefore!38 () V!18525)

(declare-fun zeroValue!794 () V!18525)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13716 0))(
  ( (Unit!13717) )
))
(declare-fun lt!213056 () Unit!13716)

(declare-fun minValueAfter!38 () V!18525)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!153 (array!29863 array!29865 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18525 V!18525 V!18525 V!18525 (_ BitVec 32) Int) Unit!13716)

(assert (=> b!469685 (= lt!213056 (lemmaNoChangeToArrayThenSameMapNoExtras!153 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1958 (array!29863 array!29865 (_ BitVec 32) (_ BitVec 32) V!18525 V!18525 (_ BitVec 32) Int) ListLongMap!7561)

(assert (=> b!469685 (= lt!213054 (getCurrentListMapNoExtraKeys!1958 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!469685 (= lt!213059 (getCurrentListMapNoExtraKeys!1958 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469686 () Bool)

(declare-fun e!275101 () Bool)

(assert (=> b!469686 (= e!275103 (and e!275101 mapRes!21295))))

(declare-fun condMapEmpty!21295 () Bool)

(declare-fun mapDefault!21295 () ValueCell!6189)

(assert (=> b!469686 (= condMapEmpty!21295 (= (arr!14354 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6189)) mapDefault!21295)))))

(declare-fun b!469687 () Bool)

(declare-fun e!275099 () Bool)

(assert (=> b!469687 (= e!275099 tp_is_empty!13065)))

(declare-fun b!469688 () Bool)

(assert (=> b!469688 (= e!275104 true)))

(declare-fun lt!213060 () tuple2!8634)

(declare-fun +!1683 (ListLongMap!7561 tuple2!8634) ListLongMap!7561)

(assert (=> b!469688 (= (+!1683 lt!213059 lt!213060) (+!1683 (+!1683 lt!213059 (tuple2!8635 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!213060))))

(assert (=> b!469688 (= lt!213060 (tuple2!8635 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!213058 () Unit!13716)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!124 (ListLongMap!7561 (_ BitVec 64) V!18525 V!18525) Unit!13716)

(assert (=> b!469688 (= lt!213058 (addSameAsAddTwiceSameKeyDiffValues!124 lt!213059 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!213055 () ListLongMap!7561)

(declare-fun getCurrentListMap!2205 (array!29863 array!29865 (_ BitVec 32) (_ BitVec 32) V!18525 V!18525 (_ BitVec 32) Int) ListLongMap!7561)

(assert (=> b!469688 (= lt!213055 (getCurrentListMap!2205 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!213057 () ListLongMap!7561)

(assert (=> b!469688 (= lt!213057 (getCurrentListMap!2205 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21295 () Bool)

(declare-fun tp!40930 () Bool)

(assert (=> mapNonEmpty!21295 (= mapRes!21295 (and tp!40930 e!275099))))

(declare-fun mapRest!21295 () (Array (_ BitVec 32) ValueCell!6189))

(declare-fun mapValue!21295 () ValueCell!6189)

(declare-fun mapKey!21295 () (_ BitVec 32))

(assert (=> mapNonEmpty!21295 (= (arr!14354 _values!833) (store mapRest!21295 mapKey!21295 mapValue!21295))))

(declare-fun b!469689 () Bool)

(assert (=> b!469689 (= e!275101 tp_is_empty!13065)))

(assert (= (and start!42092 res!280753) b!469682))

(assert (= (and b!469682 res!280756) b!469683))

(assert (= (and b!469683 res!280754) b!469684))

(assert (= (and b!469684 res!280755) b!469685))

(assert (= (and b!469685 (not res!280752)) b!469688))

(assert (= (and b!469686 condMapEmpty!21295) mapIsEmpty!21295))

(assert (= (and b!469686 (not condMapEmpty!21295)) mapNonEmpty!21295))

(get-info :version)

(assert (= (and mapNonEmpty!21295 ((_ is ValueCellFull!6189) mapValue!21295)) b!469687))

(assert (= (and b!469686 ((_ is ValueCellFull!6189) mapDefault!21295)) b!469689))

(assert (= start!42092 b!469686))

(declare-fun m!451991 () Bool)

(assert (=> b!469684 m!451991))

(declare-fun m!451993 () Bool)

(assert (=> mapNonEmpty!21295 m!451993))

(declare-fun m!451995 () Bool)

(assert (=> start!42092 m!451995))

(declare-fun m!451997 () Bool)

(assert (=> start!42092 m!451997))

(declare-fun m!451999 () Bool)

(assert (=> start!42092 m!451999))

(declare-fun m!452001 () Bool)

(assert (=> b!469685 m!452001))

(declare-fun m!452003 () Bool)

(assert (=> b!469685 m!452003))

(declare-fun m!452005 () Bool)

(assert (=> b!469685 m!452005))

(declare-fun m!452007 () Bool)

(assert (=> b!469688 m!452007))

(declare-fun m!452009 () Bool)

(assert (=> b!469688 m!452009))

(declare-fun m!452011 () Bool)

(assert (=> b!469688 m!452011))

(assert (=> b!469688 m!452011))

(declare-fun m!452013 () Bool)

(assert (=> b!469688 m!452013))

(declare-fun m!452015 () Bool)

(assert (=> b!469688 m!452015))

(declare-fun m!452017 () Bool)

(assert (=> b!469688 m!452017))

(declare-fun m!452019 () Bool)

(assert (=> b!469683 m!452019))

(check-sat tp_is_empty!13065 (not mapNonEmpty!21295) (not b!469683) b_and!20065 (not start!42092) (not b!469685) (not b!469688) (not b_next!11637) (not b!469684))
(check-sat b_and!20065 (not b_next!11637))
