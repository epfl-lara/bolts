; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94498 () Bool)

(assert start!94498)

(declare-fun b_free!21789 () Bool)

(declare-fun b_next!21789 () Bool)

(assert (=> start!94498 (= b_free!21789 (not b_next!21789))))

(declare-fun tp!76814 () Bool)

(declare-fun b_and!34599 () Bool)

(assert (=> start!94498 (= tp!76814 b_and!34599)))

(declare-fun b!1068102 () Bool)

(declare-fun e!609383 () Bool)

(declare-fun tp_is_empty!25599 () Bool)

(assert (=> b!1068102 (= e!609383 tp_is_empty!25599)))

(declare-fun b!1068103 () Bool)

(declare-fun e!609384 () Bool)

(declare-fun e!609387 () Bool)

(assert (=> b!1068103 (= e!609384 (not e!609387))))

(declare-fun res!712843 () Bool)

(assert (=> b!1068103 (=> res!712843 e!609387)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1068103 (= res!712843 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!39267 0))(
  ( (V!39268 (val!12850 Int)) )
))
(declare-datatypes ((tuple2!16396 0))(
  ( (tuple2!16397 (_1!8208 (_ BitVec 64)) (_2!8208 V!39267)) )
))
(declare-datatypes ((List!22987 0))(
  ( (Nil!22984) (Cons!22983 (h!24192 tuple2!16396) (t!32319 List!22987)) )
))
(declare-datatypes ((ListLongMap!14377 0))(
  ( (ListLongMap!14378 (toList!7204 List!22987)) )
))
(declare-fun lt!471808 () ListLongMap!14377)

(declare-fun lt!471806 () ListLongMap!14377)

(assert (=> b!1068103 (= lt!471808 lt!471806)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39267)

(declare-datatypes ((ValueCell!12096 0))(
  ( (ValueCellFull!12096 (v!15465 V!39267)) (EmptyCell!12096) )
))
(declare-datatypes ((array!68152 0))(
  ( (array!68153 (arr!32772 (Array (_ BitVec 32) ValueCell!12096)) (size!33309 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68152)

(declare-fun minValue!907 () V!39267)

(declare-datatypes ((Unit!35074 0))(
  ( (Unit!35075) )
))
(declare-fun lt!471805 () Unit!35074)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!39267)

(declare-fun defaultEntry!963 () Int)

(declare-datatypes ((array!68154 0))(
  ( (array!68155 (arr!32773 (Array (_ BitVec 32) (_ BitVec 64))) (size!33310 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68154)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!787 (array!68154 array!68152 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39267 V!39267 V!39267 V!39267 (_ BitVec 32) Int) Unit!35074)

(assert (=> b!1068103 (= lt!471805 (lemmaNoChangeToArrayThenSameMapNoExtras!787 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3748 (array!68154 array!68152 (_ BitVec 32) (_ BitVec 32) V!39267 V!39267 (_ BitVec 32) Int) ListLongMap!14377)

(assert (=> b!1068103 (= lt!471806 (getCurrentListMapNoExtraKeys!3748 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1068103 (= lt!471808 (getCurrentListMapNoExtraKeys!3748 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068104 () Bool)

(declare-fun e!609385 () Bool)

(assert (=> b!1068104 (= e!609387 e!609385)))

(declare-fun res!712846 () Bool)

(assert (=> b!1068104 (=> res!712846 e!609385)))

(declare-fun lt!471807 () ListLongMap!14377)

(declare-fun contains!6306 (ListLongMap!14377 (_ BitVec 64)) Bool)

(assert (=> b!1068104 (= res!712846 (contains!6306 lt!471807 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4096 (array!68154 array!68152 (_ BitVec 32) (_ BitVec 32) V!39267 V!39267 (_ BitVec 32) Int) ListLongMap!14377)

(assert (=> b!1068104 (= lt!471807 (getCurrentListMap!4096 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068105 () Bool)

(declare-fun e!609386 () Bool)

(assert (=> b!1068105 (= e!609386 tp_is_empty!25599)))

(declare-fun b!1068106 () Bool)

(declare-fun res!712844 () Bool)

(assert (=> b!1068106 (=> (not res!712844) (not e!609384))))

(declare-datatypes ((List!22988 0))(
  ( (Nil!22985) (Cons!22984 (h!24193 (_ BitVec 64)) (t!32320 List!22988)) )
))
(declare-fun arrayNoDuplicates!0 (array!68154 (_ BitVec 32) List!22988) Bool)

(assert (=> b!1068106 (= res!712844 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22985))))

(declare-fun mapIsEmpty!40093 () Bool)

(declare-fun mapRes!40093 () Bool)

(assert (=> mapIsEmpty!40093 mapRes!40093))

(declare-fun b!1068107 () Bool)

(declare-fun e!609381 () Bool)

(assert (=> b!1068107 (= e!609381 (and e!609383 mapRes!40093))))

(declare-fun condMapEmpty!40093 () Bool)

(declare-fun mapDefault!40093 () ValueCell!12096)

(assert (=> b!1068107 (= condMapEmpty!40093 (= (arr!32772 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12096)) mapDefault!40093)))))

(declare-fun res!712847 () Bool)

(assert (=> start!94498 (=> (not res!712847) (not e!609384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94498 (= res!712847 (validMask!0 mask!1515))))

(assert (=> start!94498 e!609384))

(assert (=> start!94498 true))

(assert (=> start!94498 tp_is_empty!25599))

(declare-fun array_inv!25206 (array!68152) Bool)

(assert (=> start!94498 (and (array_inv!25206 _values!955) e!609381)))

(assert (=> start!94498 tp!76814))

(declare-fun array_inv!25207 (array!68154) Bool)

(assert (=> start!94498 (array_inv!25207 _keys!1163)))

(declare-fun b!1068108 () Bool)

(declare-fun res!712842 () Bool)

(assert (=> b!1068108 (=> (not res!712842) (not e!609384))))

(assert (=> b!1068108 (= res!712842 (and (= (size!33309 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33310 _keys!1163) (size!33309 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!40093 () Bool)

(declare-fun tp!76815 () Bool)

(assert (=> mapNonEmpty!40093 (= mapRes!40093 (and tp!76815 e!609386))))

(declare-fun mapKey!40093 () (_ BitVec 32))

(declare-fun mapValue!40093 () ValueCell!12096)

(declare-fun mapRest!40093 () (Array (_ BitVec 32) ValueCell!12096))

(assert (=> mapNonEmpty!40093 (= (arr!32772 _values!955) (store mapRest!40093 mapKey!40093 mapValue!40093))))

(declare-fun b!1068109 () Bool)

(assert (=> b!1068109 (= e!609385 true)))

(declare-fun -!642 (ListLongMap!14377 (_ BitVec 64)) ListLongMap!14377)

(assert (=> b!1068109 (= (-!642 lt!471807 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471807)))

(declare-fun lt!471809 () Unit!35074)

(declare-fun removeNotPresentStillSame!51 (ListLongMap!14377 (_ BitVec 64)) Unit!35074)

(assert (=> b!1068109 (= lt!471809 (removeNotPresentStillSame!51 lt!471807 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1068110 () Bool)

(declare-fun res!712845 () Bool)

(assert (=> b!1068110 (=> (not res!712845) (not e!609384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68154 (_ BitVec 32)) Bool)

(assert (=> b!1068110 (= res!712845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!94498 res!712847) b!1068108))

(assert (= (and b!1068108 res!712842) b!1068110))

(assert (= (and b!1068110 res!712845) b!1068106))

(assert (= (and b!1068106 res!712844) b!1068103))

(assert (= (and b!1068103 (not res!712843)) b!1068104))

(assert (= (and b!1068104 (not res!712846)) b!1068109))

(assert (= (and b!1068107 condMapEmpty!40093) mapIsEmpty!40093))

(assert (= (and b!1068107 (not condMapEmpty!40093)) mapNonEmpty!40093))

(get-info :version)

(assert (= (and mapNonEmpty!40093 ((_ is ValueCellFull!12096) mapValue!40093)) b!1068105))

(assert (= (and b!1068107 ((_ is ValueCellFull!12096) mapDefault!40093)) b!1068102))

(assert (= start!94498 b!1068107))

(declare-fun m!986845 () Bool)

(assert (=> mapNonEmpty!40093 m!986845))

(declare-fun m!986847 () Bool)

(assert (=> b!1068103 m!986847))

(declare-fun m!986849 () Bool)

(assert (=> b!1068103 m!986849))

(declare-fun m!986851 () Bool)

(assert (=> b!1068103 m!986851))

(declare-fun m!986853 () Bool)

(assert (=> b!1068110 m!986853))

(declare-fun m!986855 () Bool)

(assert (=> b!1068104 m!986855))

(declare-fun m!986857 () Bool)

(assert (=> b!1068104 m!986857))

(declare-fun m!986859 () Bool)

(assert (=> b!1068106 m!986859))

(declare-fun m!986861 () Bool)

(assert (=> start!94498 m!986861))

(declare-fun m!986863 () Bool)

(assert (=> start!94498 m!986863))

(declare-fun m!986865 () Bool)

(assert (=> start!94498 m!986865))

(declare-fun m!986867 () Bool)

(assert (=> b!1068109 m!986867))

(declare-fun m!986869 () Bool)

(assert (=> b!1068109 m!986869))

(check-sat (not b_next!21789) b_and!34599 (not start!94498) (not mapNonEmpty!40093) (not b!1068109) (not b!1068104) tp_is_empty!25599 (not b!1068110) (not b!1068106) (not b!1068103))
(check-sat b_and!34599 (not b_next!21789))
