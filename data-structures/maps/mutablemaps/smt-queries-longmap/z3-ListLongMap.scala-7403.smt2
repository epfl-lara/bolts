; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94248 () Bool)

(assert start!94248)

(declare-fun b_free!21597 () Bool)

(declare-fun b_next!21597 () Bool)

(assert (=> start!94248 (= b_free!21597 (not b_next!21597))))

(declare-fun tp!76229 () Bool)

(declare-fun b_and!34375 () Bool)

(assert (=> start!94248 (= tp!76229 b_and!34375)))

(declare-fun b!1065367 () Bool)

(declare-fun e!607386 () Bool)

(declare-fun e!607384 () Bool)

(assert (=> b!1065367 (= e!607386 (not e!607384))))

(declare-fun res!711231 () Bool)

(assert (=> b!1065367 (=> res!711231 e!607384)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065367 (= res!711231 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39011 0))(
  ( (V!39012 (val!12754 Int)) )
))
(declare-datatypes ((tuple2!16244 0))(
  ( (tuple2!16245 (_1!8132 (_ BitVec 64)) (_2!8132 V!39011)) )
))
(declare-datatypes ((List!22844 0))(
  ( (Nil!22841) (Cons!22840 (h!24049 tuple2!16244) (t!32170 List!22844)) )
))
(declare-datatypes ((ListLongMap!14225 0))(
  ( (ListLongMap!14226 (toList!7128 List!22844)) )
))
(declare-fun lt!469810 () ListLongMap!14225)

(declare-fun lt!469805 () ListLongMap!14225)

(assert (=> b!1065367 (= lt!469810 lt!469805)))

(declare-fun zeroValueBefore!47 () V!39011)

(declare-datatypes ((ValueCell!12000 0))(
  ( (ValueCellFull!12000 (v!15367 V!39011)) (EmptyCell!12000) )
))
(declare-datatypes ((array!67774 0))(
  ( (array!67775 (arr!32586 (Array (_ BitVec 32) ValueCell!12000)) (size!33123 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67774)

(declare-fun minValue!907 () V!39011)

(declare-datatypes ((Unit!34918 0))(
  ( (Unit!34919) )
))
(declare-fun lt!469803 () Unit!34918)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39011)

(declare-datatypes ((array!67776 0))(
  ( (array!67777 (arr!32587 (Array (_ BitVec 32) (_ BitVec 64))) (size!33124 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67776)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!717 (array!67776 array!67774 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39011 V!39011 V!39011 V!39011 (_ BitVec 32) Int) Unit!34918)

(assert (=> b!1065367 (= lt!469803 (lemmaNoChangeToArrayThenSameMapNoExtras!717 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3678 (array!67776 array!67774 (_ BitVec 32) (_ BitVec 32) V!39011 V!39011 (_ BitVec 32) Int) ListLongMap!14225)

(assert (=> b!1065367 (= lt!469805 (getCurrentListMapNoExtraKeys!3678 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065367 (= lt!469810 (getCurrentListMapNoExtraKeys!3678 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065368 () Bool)

(declare-fun res!711233 () Bool)

(assert (=> b!1065368 (=> (not res!711233) (not e!607386))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67776 (_ BitVec 32)) Bool)

(assert (=> b!1065368 (= res!711233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!39796 () Bool)

(declare-fun mapRes!39796 () Bool)

(declare-fun tp!76230 () Bool)

(declare-fun e!607385 () Bool)

(assert (=> mapNonEmpty!39796 (= mapRes!39796 (and tp!76230 e!607385))))

(declare-fun mapRest!39796 () (Array (_ BitVec 32) ValueCell!12000))

(declare-fun mapKey!39796 () (_ BitVec 32))

(declare-fun mapValue!39796 () ValueCell!12000)

(assert (=> mapNonEmpty!39796 (= (arr!32586 _values!955) (store mapRest!39796 mapKey!39796 mapValue!39796))))

(declare-fun res!711229 () Bool)

(assert (=> start!94248 (=> (not res!711229) (not e!607386))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94248 (= res!711229 (validMask!0 mask!1515))))

(assert (=> start!94248 e!607386))

(assert (=> start!94248 true))

(declare-fun tp_is_empty!25407 () Bool)

(assert (=> start!94248 tp_is_empty!25407))

(declare-fun e!607383 () Bool)

(declare-fun array_inv!25068 (array!67774) Bool)

(assert (=> start!94248 (and (array_inv!25068 _values!955) e!607383)))

(assert (=> start!94248 tp!76229))

(declare-fun array_inv!25069 (array!67776) Bool)

(assert (=> start!94248 (array_inv!25069 _keys!1163)))

(declare-fun b!1065369 () Bool)

(assert (=> b!1065369 (= e!607385 tp_is_empty!25407)))

(declare-fun b!1065370 () Bool)

(assert (=> b!1065370 (= e!607384 true)))

(declare-fun lt!469808 () ListLongMap!14225)

(declare-fun lt!469807 () ListLongMap!14225)

(declare-fun -!596 (ListLongMap!14225 (_ BitVec 64)) ListLongMap!14225)

(assert (=> b!1065370 (= lt!469808 (-!596 lt!469807 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!469804 () ListLongMap!14225)

(assert (=> b!1065370 (= (-!596 lt!469804 #b0000000000000000000000000000000000000000000000000000000000000000) lt!469810)))

(declare-fun lt!469806 () Unit!34918)

(declare-fun addThenRemoveForNewKeyIsSame!5 (ListLongMap!14225 (_ BitVec 64) V!39011) Unit!34918)

(assert (=> b!1065370 (= lt!469806 (addThenRemoveForNewKeyIsSame!5 lt!469810 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!469809 () ListLongMap!14225)

(assert (=> b!1065370 (and (= lt!469807 lt!469804) (= lt!469809 lt!469805))))

(declare-fun +!3087 (ListLongMap!14225 tuple2!16244) ListLongMap!14225)

(assert (=> b!1065370 (= lt!469804 (+!3087 lt!469810 (tuple2!16245 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun getCurrentListMap!4050 (array!67776 array!67774 (_ BitVec 32) (_ BitVec 32) V!39011 V!39011 (_ BitVec 32) Int) ListLongMap!14225)

(assert (=> b!1065370 (= lt!469809 (getCurrentListMap!4050 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065370 (= lt!469807 (getCurrentListMap!4050 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065371 () Bool)

(declare-fun e!607382 () Bool)

(assert (=> b!1065371 (= e!607382 tp_is_empty!25407)))

(declare-fun b!1065372 () Bool)

(declare-fun res!711232 () Bool)

(assert (=> b!1065372 (=> (not res!711232) (not e!607386))))

(declare-datatypes ((List!22845 0))(
  ( (Nil!22842) (Cons!22841 (h!24050 (_ BitVec 64)) (t!32171 List!22845)) )
))
(declare-fun arrayNoDuplicates!0 (array!67776 (_ BitVec 32) List!22845) Bool)

(assert (=> b!1065372 (= res!711232 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22842))))

(declare-fun b!1065373 () Bool)

(assert (=> b!1065373 (= e!607383 (and e!607382 mapRes!39796))))

(declare-fun condMapEmpty!39796 () Bool)

(declare-fun mapDefault!39796 () ValueCell!12000)

(assert (=> b!1065373 (= condMapEmpty!39796 (= (arr!32586 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12000)) mapDefault!39796)))))

(declare-fun mapIsEmpty!39796 () Bool)

(assert (=> mapIsEmpty!39796 mapRes!39796))

(declare-fun b!1065374 () Bool)

(declare-fun res!711230 () Bool)

(assert (=> b!1065374 (=> (not res!711230) (not e!607386))))

(assert (=> b!1065374 (= res!711230 (and (= (size!33123 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33124 _keys!1163) (size!33123 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!94248 res!711229) b!1065374))

(assert (= (and b!1065374 res!711230) b!1065368))

(assert (= (and b!1065368 res!711233) b!1065372))

(assert (= (and b!1065372 res!711232) b!1065367))

(assert (= (and b!1065367 (not res!711231)) b!1065370))

(assert (= (and b!1065373 condMapEmpty!39796) mapIsEmpty!39796))

(assert (= (and b!1065373 (not condMapEmpty!39796)) mapNonEmpty!39796))

(get-info :version)

(assert (= (and mapNonEmpty!39796 ((_ is ValueCellFull!12000) mapValue!39796)) b!1065369))

(assert (= (and b!1065373 ((_ is ValueCellFull!12000) mapDefault!39796)) b!1065371))

(assert (= start!94248 b!1065373))

(declare-fun m!983955 () Bool)

(assert (=> b!1065372 m!983955))

(declare-fun m!983957 () Bool)

(assert (=> b!1065368 m!983957))

(declare-fun m!983959 () Bool)

(assert (=> mapNonEmpty!39796 m!983959))

(declare-fun m!983961 () Bool)

(assert (=> b!1065370 m!983961))

(declare-fun m!983963 () Bool)

(assert (=> b!1065370 m!983963))

(declare-fun m!983965 () Bool)

(assert (=> b!1065370 m!983965))

(declare-fun m!983967 () Bool)

(assert (=> b!1065370 m!983967))

(declare-fun m!983969 () Bool)

(assert (=> b!1065370 m!983969))

(declare-fun m!983971 () Bool)

(assert (=> b!1065370 m!983971))

(declare-fun m!983973 () Bool)

(assert (=> b!1065367 m!983973))

(declare-fun m!983975 () Bool)

(assert (=> b!1065367 m!983975))

(declare-fun m!983977 () Bool)

(assert (=> b!1065367 m!983977))

(declare-fun m!983979 () Bool)

(assert (=> start!94248 m!983979))

(declare-fun m!983981 () Bool)

(assert (=> start!94248 m!983981))

(declare-fun m!983983 () Bool)

(assert (=> start!94248 m!983983))

(check-sat (not b!1065370) (not b_next!21597) (not start!94248) (not b!1065367) b_and!34375 tp_is_empty!25407 (not b!1065368) (not b!1065372) (not mapNonEmpty!39796))
(check-sat b_and!34375 (not b_next!21597))
