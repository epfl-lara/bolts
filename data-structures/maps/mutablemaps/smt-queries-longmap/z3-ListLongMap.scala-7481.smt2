; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94872 () Bool)

(assert start!94872)

(declare-fun b_free!22065 () Bool)

(declare-fun b_next!22065 () Bool)

(assert (=> start!94872 (= b_free!22065 (not b_next!22065))))

(declare-fun tp!77658 () Bool)

(declare-fun b_and!34925 () Bool)

(assert (=> start!94872 (= tp!77658 b_and!34925)))

(declare-fun res!715387 () Bool)

(declare-fun e!612514 () Bool)

(assert (=> start!94872 (=> (not res!715387) (not e!612514))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94872 (= res!715387 (validMask!0 mask!1515))))

(assert (=> start!94872 e!612514))

(assert (=> start!94872 true))

(declare-fun tp_is_empty!25875 () Bool)

(assert (=> start!94872 tp_is_empty!25875))

(declare-datatypes ((V!39635 0))(
  ( (V!39636 (val!12988 Int)) )
))
(declare-datatypes ((ValueCell!12234 0))(
  ( (ValueCellFull!12234 (v!15606 V!39635)) (EmptyCell!12234) )
))
(declare-datatypes ((array!68678 0))(
  ( (array!68679 (arr!33030 (Array (_ BitVec 32) ValueCell!12234)) (size!33567 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68678)

(declare-fun e!612509 () Bool)

(declare-fun array_inv!25392 (array!68678) Bool)

(assert (=> start!94872 (and (array_inv!25392 _values!955) e!612509)))

(assert (=> start!94872 tp!77658))

(declare-datatypes ((array!68680 0))(
  ( (array!68681 (arr!33031 (Array (_ BitVec 32) (_ BitVec 64))) (size!33568 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68680)

(declare-fun array_inv!25393 (array!68680) Bool)

(assert (=> start!94872 (array_inv!25393 _keys!1163)))

(declare-fun b!1072324 () Bool)

(declare-fun res!715385 () Bool)

(assert (=> b!1072324 (=> (not res!715385) (not e!612514))))

(declare-datatypes ((List!23182 0))(
  ( (Nil!23179) (Cons!23178 (h!24387 (_ BitVec 64)) (t!32524 List!23182)) )
))
(declare-fun arrayNoDuplicates!0 (array!68680 (_ BitVec 32) List!23182) Bool)

(assert (=> b!1072324 (= res!715385 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23179))))

(declare-fun mapIsEmpty!40522 () Bool)

(declare-fun mapRes!40522 () Bool)

(assert (=> mapIsEmpty!40522 mapRes!40522))

(declare-fun b!1072325 () Bool)

(declare-fun e!612512 () Bool)

(assert (=> b!1072325 (= e!612512 tp_is_empty!25875)))

(declare-fun b!1072326 () Bool)

(declare-fun e!612510 () Bool)

(assert (=> b!1072326 (= e!612510 tp_is_empty!25875)))

(declare-fun b!1072327 () Bool)

(declare-fun res!715389 () Bool)

(assert (=> b!1072327 (=> (not res!715389) (not e!612514))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072327 (= res!715389 (and (= (size!33567 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33568 _keys!1163) (size!33567 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16604 0))(
  ( (tuple2!16605 (_1!8312 (_ BitVec 64)) (_2!8312 V!39635)) )
))
(declare-datatypes ((List!23183 0))(
  ( (Nil!23180) (Cons!23179 (h!24388 tuple2!16604) (t!32525 List!23183)) )
))
(declare-datatypes ((ListLongMap!14585 0))(
  ( (ListLongMap!14586 (toList!7308 List!23183)) )
))
(declare-fun lt!475289 () ListLongMap!14585)

(declare-fun e!612513 () Bool)

(declare-fun b!1072328 () Bool)

(declare-fun lt!475290 () tuple2!16604)

(declare-fun lt!475288 () ListLongMap!14585)

(declare-fun +!3163 (ListLongMap!14585 tuple2!16604) ListLongMap!14585)

(assert (=> b!1072328 (= e!612513 (= lt!475288 (+!3163 lt!475289 lt!475290)))))

(declare-fun b!1072329 () Bool)

(declare-fun e!612511 () Bool)

(assert (=> b!1072329 (= e!612511 true)))

(declare-fun lt!475291 () ListLongMap!14585)

(declare-fun lt!475296 () ListLongMap!14585)

(declare-fun -!698 (ListLongMap!14585 (_ BitVec 64)) ListLongMap!14585)

(assert (=> b!1072329 (= lt!475291 (-!698 lt!475296 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!475294 () ListLongMap!14585)

(declare-fun lt!475293 () ListLongMap!14585)

(assert (=> b!1072329 (= lt!475294 lt!475293)))

(declare-fun zeroValueBefore!47 () V!39635)

(declare-fun lt!475286 () ListLongMap!14585)

(declare-fun minValue!907 () V!39635)

(declare-datatypes ((Unit!35277 0))(
  ( (Unit!35278) )
))
(declare-fun lt!475292 () Unit!35277)

(declare-fun addCommutativeForDiffKeys!742 (ListLongMap!14585 (_ BitVec 64) V!39635 (_ BitVec 64) V!39635) Unit!35277)

(assert (=> b!1072329 (= lt!475292 (addCommutativeForDiffKeys!742 lt!475286 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!475285 () ListLongMap!14585)

(assert (=> b!1072329 (= (-!698 lt!475293 #b0000000000000000000000000000000000000000000000000000000000000000) lt!475285)))

(declare-fun lt!475287 () tuple2!16604)

(assert (=> b!1072329 (= lt!475293 (+!3163 lt!475285 lt!475287))))

(declare-fun lt!475295 () Unit!35277)

(declare-fun addThenRemoveForNewKeyIsSame!72 (ListLongMap!14585 (_ BitVec 64) V!39635) Unit!35277)

(assert (=> b!1072329 (= lt!475295 (addThenRemoveForNewKeyIsSame!72 lt!475285 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1072329 (= lt!475285 (+!3163 lt!475286 lt!475290))))

(assert (=> b!1072329 e!612513))

(declare-fun res!715386 () Bool)

(assert (=> b!1072329 (=> (not res!715386) (not e!612513))))

(assert (=> b!1072329 (= res!715386 (= lt!475296 lt!475294))))

(assert (=> b!1072329 (= lt!475294 (+!3163 (+!3163 lt!475286 lt!475287) lt!475290))))

(assert (=> b!1072329 (= lt!475290 (tuple2!16605 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1072329 (= lt!475287 (tuple2!16605 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39635)

(declare-fun getCurrentListMap!4170 (array!68680 array!68678 (_ BitVec 32) (_ BitVec 32) V!39635 V!39635 (_ BitVec 32) Int) ListLongMap!14585)

(assert (=> b!1072329 (= lt!475288 (getCurrentListMap!4170 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072329 (= lt!475296 (getCurrentListMap!4170 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072330 () Bool)

(declare-fun res!715388 () Bool)

(assert (=> b!1072330 (=> (not res!715388) (not e!612514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68680 (_ BitVec 32)) Bool)

(assert (=> b!1072330 (= res!715388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1072331 () Bool)

(assert (=> b!1072331 (= e!612509 (and e!612512 mapRes!40522))))

(declare-fun condMapEmpty!40522 () Bool)

(declare-fun mapDefault!40522 () ValueCell!12234)

(assert (=> b!1072331 (= condMapEmpty!40522 (= (arr!33030 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12234)) mapDefault!40522)))))

(declare-fun mapNonEmpty!40522 () Bool)

(declare-fun tp!77657 () Bool)

(assert (=> mapNonEmpty!40522 (= mapRes!40522 (and tp!77657 e!612510))))

(declare-fun mapKey!40522 () (_ BitVec 32))

(declare-fun mapRest!40522 () (Array (_ BitVec 32) ValueCell!12234))

(declare-fun mapValue!40522 () ValueCell!12234)

(assert (=> mapNonEmpty!40522 (= (arr!33030 _values!955) (store mapRest!40522 mapKey!40522 mapValue!40522))))

(declare-fun b!1072332 () Bool)

(assert (=> b!1072332 (= e!612514 (not e!612511))))

(declare-fun res!715384 () Bool)

(assert (=> b!1072332 (=> res!715384 e!612511)))

(assert (=> b!1072332 (= res!715384 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1072332 (= lt!475286 lt!475289)))

(declare-fun lt!475297 () Unit!35277)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!877 (array!68680 array!68678 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39635 V!39635 V!39635 V!39635 (_ BitVec 32) Int) Unit!35277)

(assert (=> b!1072332 (= lt!475297 (lemmaNoChangeToArrayThenSameMapNoExtras!877 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3838 (array!68680 array!68678 (_ BitVec 32) (_ BitVec 32) V!39635 V!39635 (_ BitVec 32) Int) ListLongMap!14585)

(assert (=> b!1072332 (= lt!475289 (getCurrentListMapNoExtraKeys!3838 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072332 (= lt!475286 (getCurrentListMapNoExtraKeys!3838 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!94872 res!715387) b!1072327))

(assert (= (and b!1072327 res!715389) b!1072330))

(assert (= (and b!1072330 res!715388) b!1072324))

(assert (= (and b!1072324 res!715385) b!1072332))

(assert (= (and b!1072332 (not res!715384)) b!1072329))

(assert (= (and b!1072329 res!715386) b!1072328))

(assert (= (and b!1072331 condMapEmpty!40522) mapIsEmpty!40522))

(assert (= (and b!1072331 (not condMapEmpty!40522)) mapNonEmpty!40522))

(get-info :version)

(assert (= (and mapNonEmpty!40522 ((_ is ValueCellFull!12234) mapValue!40522)) b!1072326))

(assert (= (and b!1072331 ((_ is ValueCellFull!12234) mapDefault!40522)) b!1072325))

(assert (= start!94872 b!1072331))

(declare-fun m!991379 () Bool)

(assert (=> mapNonEmpty!40522 m!991379))

(declare-fun m!991381 () Bool)

(assert (=> b!1072328 m!991381))

(declare-fun m!991383 () Bool)

(assert (=> start!94872 m!991383))

(declare-fun m!991385 () Bool)

(assert (=> start!94872 m!991385))

(declare-fun m!991387 () Bool)

(assert (=> start!94872 m!991387))

(declare-fun m!991389 () Bool)

(assert (=> b!1072332 m!991389))

(declare-fun m!991391 () Bool)

(assert (=> b!1072332 m!991391))

(declare-fun m!991393 () Bool)

(assert (=> b!1072332 m!991393))

(declare-fun m!991395 () Bool)

(assert (=> b!1072330 m!991395))

(declare-fun m!991397 () Bool)

(assert (=> b!1072324 m!991397))

(declare-fun m!991399 () Bool)

(assert (=> b!1072329 m!991399))

(declare-fun m!991401 () Bool)

(assert (=> b!1072329 m!991401))

(declare-fun m!991403 () Bool)

(assert (=> b!1072329 m!991403))

(declare-fun m!991405 () Bool)

(assert (=> b!1072329 m!991405))

(assert (=> b!1072329 m!991405))

(declare-fun m!991407 () Bool)

(assert (=> b!1072329 m!991407))

(declare-fun m!991409 () Bool)

(assert (=> b!1072329 m!991409))

(declare-fun m!991411 () Bool)

(assert (=> b!1072329 m!991411))

(declare-fun m!991413 () Bool)

(assert (=> b!1072329 m!991413))

(declare-fun m!991415 () Bool)

(assert (=> b!1072329 m!991415))

(declare-fun m!991417 () Bool)

(assert (=> b!1072329 m!991417))

(check-sat (not b!1072328) (not b!1072324) (not start!94872) (not mapNonEmpty!40522) (not b!1072332) (not b_next!22065) b_and!34925 tp_is_empty!25875 (not b!1072330) (not b!1072329))
(check-sat b_and!34925 (not b_next!22065))
