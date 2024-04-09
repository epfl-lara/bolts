; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94456 () Bool)

(assert start!94456)

(declare-fun b_free!21747 () Bool)

(declare-fun b_next!21747 () Bool)

(assert (=> start!94456 (= b_free!21747 (not b_next!21747))))

(declare-fun tp!76689 () Bool)

(declare-fun b_and!34557 () Bool)

(assert (=> start!94456 (= tp!76689 b_and!34557)))

(declare-fun mapNonEmpty!40030 () Bool)

(declare-fun mapRes!40030 () Bool)

(declare-fun tp!76688 () Bool)

(declare-fun e!608949 () Bool)

(assert (=> mapNonEmpty!40030 (= mapRes!40030 (and tp!76688 e!608949))))

(declare-datatypes ((V!39211 0))(
  ( (V!39212 (val!12829 Int)) )
))
(declare-datatypes ((ValueCell!12075 0))(
  ( (ValueCellFull!12075 (v!15444 V!39211)) (EmptyCell!12075) )
))
(declare-fun mapValue!40030 () ValueCell!12075)

(declare-fun mapKey!40030 () (_ BitVec 32))

(declare-datatypes ((array!68068 0))(
  ( (array!68069 (arr!32730 (Array (_ BitVec 32) ValueCell!12075)) (size!33267 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68068)

(declare-fun mapRest!40030 () (Array (_ BitVec 32) ValueCell!12075))

(assert (=> mapNonEmpty!40030 (= (arr!32730 _values!955) (store mapRest!40030 mapKey!40030 mapValue!40030))))

(declare-fun b!1067539 () Bool)

(declare-fun tp_is_empty!25557 () Bool)

(assert (=> b!1067539 (= e!608949 tp_is_empty!25557)))

(declare-fun b!1067540 () Bool)

(declare-fun e!608947 () Bool)

(assert (=> b!1067540 (= e!608947 true)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39211)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39211)

(declare-fun lt!471496 () Bool)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68070 0))(
  ( (array!68071 (arr!32731 (Array (_ BitVec 32) (_ BitVec 64))) (size!33268 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68070)

(declare-datatypes ((tuple2!16362 0))(
  ( (tuple2!16363 (_1!8191 (_ BitVec 64)) (_2!8191 V!39211)) )
))
(declare-datatypes ((List!22952 0))(
  ( (Nil!22949) (Cons!22948 (h!24157 tuple2!16362) (t!32284 List!22952)) )
))
(declare-datatypes ((ListLongMap!14343 0))(
  ( (ListLongMap!14344 (toList!7187 List!22952)) )
))
(declare-fun contains!6293 (ListLongMap!14343 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4083 (array!68070 array!68068 (_ BitVec 32) (_ BitVec 32) V!39211 V!39211 (_ BitVec 32) Int) ListLongMap!14343)

(assert (=> b!1067540 (= lt!471496 (contains!6293 (getCurrentListMap!4083 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1067541 () Bool)

(declare-fun res!712468 () Bool)

(declare-fun e!608948 () Bool)

(assert (=> b!1067541 (=> (not res!712468) (not e!608948))))

(declare-datatypes ((List!22953 0))(
  ( (Nil!22950) (Cons!22949 (h!24158 (_ BitVec 64)) (t!32285 List!22953)) )
))
(declare-fun arrayNoDuplicates!0 (array!68070 (_ BitVec 32) List!22953) Bool)

(assert (=> b!1067541 (= res!712468 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22950))))

(declare-fun b!1067542 () Bool)

(declare-fun res!712472 () Bool)

(assert (=> b!1067542 (=> (not res!712472) (not e!608948))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68070 (_ BitVec 32)) Bool)

(assert (=> b!1067542 (= res!712472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067543 () Bool)

(assert (=> b!1067543 (= e!608948 (not e!608947))))

(declare-fun res!712469 () Bool)

(assert (=> b!1067543 (=> res!712469 e!608947)))

(assert (=> b!1067543 (= res!712469 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!471495 () ListLongMap!14343)

(declare-fun lt!471497 () ListLongMap!14343)

(assert (=> b!1067543 (= lt!471495 lt!471497)))

(declare-datatypes ((Unit!35040 0))(
  ( (Unit!35041) )
))
(declare-fun lt!471494 () Unit!35040)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!39211)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!771 (array!68070 array!68068 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39211 V!39211 V!39211 V!39211 (_ BitVec 32) Int) Unit!35040)

(assert (=> b!1067543 (= lt!471494 (lemmaNoChangeToArrayThenSameMapNoExtras!771 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3732 (array!68070 array!68068 (_ BitVec 32) (_ BitVec 32) V!39211 V!39211 (_ BitVec 32) Int) ListLongMap!14343)

(assert (=> b!1067543 (= lt!471497 (getCurrentListMapNoExtraKeys!3732 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067543 (= lt!471495 (getCurrentListMapNoExtraKeys!3732 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40030 () Bool)

(assert (=> mapIsEmpty!40030 mapRes!40030))

(declare-fun b!1067544 () Bool)

(declare-fun e!608945 () Bool)

(assert (=> b!1067544 (= e!608945 tp_is_empty!25557)))

(declare-fun res!712470 () Bool)

(assert (=> start!94456 (=> (not res!712470) (not e!608948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94456 (= res!712470 (validMask!0 mask!1515))))

(assert (=> start!94456 e!608948))

(assert (=> start!94456 true))

(assert (=> start!94456 tp_is_empty!25557))

(declare-fun e!608944 () Bool)

(declare-fun array_inv!25172 (array!68068) Bool)

(assert (=> start!94456 (and (array_inv!25172 _values!955) e!608944)))

(assert (=> start!94456 tp!76689))

(declare-fun array_inv!25173 (array!68070) Bool)

(assert (=> start!94456 (array_inv!25173 _keys!1163)))

(declare-fun b!1067545 () Bool)

(declare-fun res!712471 () Bool)

(assert (=> b!1067545 (=> (not res!712471) (not e!608948))))

(assert (=> b!1067545 (= res!712471 (and (= (size!33267 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33268 _keys!1163) (size!33267 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067546 () Bool)

(assert (=> b!1067546 (= e!608944 (and e!608945 mapRes!40030))))

(declare-fun condMapEmpty!40030 () Bool)

(declare-fun mapDefault!40030 () ValueCell!12075)

(assert (=> b!1067546 (= condMapEmpty!40030 (= (arr!32730 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12075)) mapDefault!40030)))))

(assert (= (and start!94456 res!712470) b!1067545))

(assert (= (and b!1067545 res!712471) b!1067542))

(assert (= (and b!1067542 res!712472) b!1067541))

(assert (= (and b!1067541 res!712468) b!1067543))

(assert (= (and b!1067543 (not res!712469)) b!1067540))

(assert (= (and b!1067546 condMapEmpty!40030) mapIsEmpty!40030))

(assert (= (and b!1067546 (not condMapEmpty!40030)) mapNonEmpty!40030))

(get-info :version)

(assert (= (and mapNonEmpty!40030 ((_ is ValueCellFull!12075) mapValue!40030)) b!1067539))

(assert (= (and b!1067546 ((_ is ValueCellFull!12075) mapDefault!40030)) b!1067544))

(assert (= start!94456 b!1067546))

(declare-fun m!986307 () Bool)

(assert (=> mapNonEmpty!40030 m!986307))

(declare-fun m!986309 () Bool)

(assert (=> start!94456 m!986309))

(declare-fun m!986311 () Bool)

(assert (=> start!94456 m!986311))

(declare-fun m!986313 () Bool)

(assert (=> start!94456 m!986313))

(declare-fun m!986315 () Bool)

(assert (=> b!1067540 m!986315))

(assert (=> b!1067540 m!986315))

(declare-fun m!986317 () Bool)

(assert (=> b!1067540 m!986317))

(declare-fun m!986319 () Bool)

(assert (=> b!1067542 m!986319))

(declare-fun m!986321 () Bool)

(assert (=> b!1067543 m!986321))

(declare-fun m!986323 () Bool)

(assert (=> b!1067543 m!986323))

(declare-fun m!986325 () Bool)

(assert (=> b!1067543 m!986325))

(declare-fun m!986327 () Bool)

(assert (=> b!1067541 m!986327))

(check-sat (not b!1067541) (not b!1067540) (not b!1067543) tp_is_empty!25557 (not start!94456) (not b!1067542) (not b_next!21747) b_and!34557 (not mapNonEmpty!40030))
(check-sat b_and!34557 (not b_next!21747))
