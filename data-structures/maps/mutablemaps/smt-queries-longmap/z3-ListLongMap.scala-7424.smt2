; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94418 () Bool)

(assert start!94418)

(declare-fun b_free!21723 () Bool)

(declare-fun b_next!21723 () Bool)

(assert (=> start!94418 (= b_free!21723 (not b_next!21723))))

(declare-fun tp!76613 () Bool)

(declare-fun b_and!34525 () Bool)

(assert (=> start!94418 (= tp!76613 b_and!34525)))

(declare-fun mapIsEmpty!39991 () Bool)

(declare-fun mapRes!39991 () Bool)

(assert (=> mapIsEmpty!39991 mapRes!39991))

(declare-fun b!1067197 () Bool)

(declare-fun res!712288 () Bool)

(declare-fun e!608707 () Bool)

(assert (=> b!1067197 (=> (not res!712288) (not e!608707))))

(declare-datatypes ((array!68022 0))(
  ( (array!68023 (arr!32708 (Array (_ BitVec 32) (_ BitVec 64))) (size!33245 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68022)

(declare-datatypes ((List!22937 0))(
  ( (Nil!22934) (Cons!22933 (h!24142 (_ BitVec 64)) (t!32267 List!22937)) )
))
(declare-fun arrayNoDuplicates!0 (array!68022 (_ BitVec 32) List!22937) Bool)

(assert (=> b!1067197 (= res!712288 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22934))))

(declare-fun b!1067198 () Bool)

(declare-fun res!712290 () Bool)

(assert (=> b!1067198 (=> (not res!712290) (not e!608707))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68022 (_ BitVec 32)) Bool)

(assert (=> b!1067198 (= res!712290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067199 () Bool)

(declare-fun res!712289 () Bool)

(assert (=> b!1067199 (=> (not res!712289) (not e!608707))))

(declare-datatypes ((V!39179 0))(
  ( (V!39180 (val!12817 Int)) )
))
(declare-datatypes ((ValueCell!12063 0))(
  ( (ValueCellFull!12063 (v!15432 V!39179)) (EmptyCell!12063) )
))
(declare-datatypes ((array!68024 0))(
  ( (array!68025 (arr!32709 (Array (_ BitVec 32) ValueCell!12063)) (size!33246 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68024)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1067199 (= res!712289 (and (= (size!33246 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33245 _keys!1163) (size!33246 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!712291 () Bool)

(assert (=> start!94418 (=> (not res!712291) (not e!608707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94418 (= res!712291 (validMask!0 mask!1515))))

(assert (=> start!94418 e!608707))

(assert (=> start!94418 true))

(declare-fun tp_is_empty!25533 () Bool)

(assert (=> start!94418 tp_is_empty!25533))

(declare-fun e!608708 () Bool)

(declare-fun array_inv!25158 (array!68024) Bool)

(assert (=> start!94418 (and (array_inv!25158 _values!955) e!608708)))

(assert (=> start!94418 tp!76613))

(declare-fun array_inv!25159 (array!68022) Bool)

(assert (=> start!94418 (array_inv!25159 _keys!1163)))

(declare-fun b!1067200 () Bool)

(assert (=> b!1067200 (= e!608707 (not true))))

(declare-datatypes ((tuple2!16346 0))(
  ( (tuple2!16347 (_1!8183 (_ BitVec 64)) (_2!8183 V!39179)) )
))
(declare-datatypes ((List!22938 0))(
  ( (Nil!22935) (Cons!22934 (h!24143 tuple2!16346) (t!32268 List!22938)) )
))
(declare-datatypes ((ListLongMap!14327 0))(
  ( (ListLongMap!14328 (toList!7179 List!22938)) )
))
(declare-fun lt!471342 () ListLongMap!14327)

(declare-fun lt!471341 () ListLongMap!14327)

(assert (=> b!1067200 (= lt!471342 lt!471341)))

(declare-fun zeroValueBefore!47 () V!39179)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39179)

(declare-datatypes ((Unit!35024 0))(
  ( (Unit!35025) )
))
(declare-fun lt!471343 () Unit!35024)

(declare-fun minValue!907 () V!39179)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!763 (array!68022 array!68024 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39179 V!39179 V!39179 V!39179 (_ BitVec 32) Int) Unit!35024)

(assert (=> b!1067200 (= lt!471343 (lemmaNoChangeToArrayThenSameMapNoExtras!763 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3724 (array!68022 array!68024 (_ BitVec 32) (_ BitVec 32) V!39179 V!39179 (_ BitVec 32) Int) ListLongMap!14327)

(assert (=> b!1067200 (= lt!471341 (getCurrentListMapNoExtraKeys!3724 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067200 (= lt!471342 (getCurrentListMapNoExtraKeys!3724 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067201 () Bool)

(declare-fun e!608704 () Bool)

(assert (=> b!1067201 (= e!608708 (and e!608704 mapRes!39991))))

(declare-fun condMapEmpty!39991 () Bool)

(declare-fun mapDefault!39991 () ValueCell!12063)

(assert (=> b!1067201 (= condMapEmpty!39991 (= (arr!32709 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12063)) mapDefault!39991)))))

(declare-fun b!1067202 () Bool)

(declare-fun e!608706 () Bool)

(assert (=> b!1067202 (= e!608706 tp_is_empty!25533)))

(declare-fun b!1067203 () Bool)

(assert (=> b!1067203 (= e!608704 tp_is_empty!25533)))

(declare-fun mapNonEmpty!39991 () Bool)

(declare-fun tp!76614 () Bool)

(assert (=> mapNonEmpty!39991 (= mapRes!39991 (and tp!76614 e!608706))))

(declare-fun mapKey!39991 () (_ BitVec 32))

(declare-fun mapValue!39991 () ValueCell!12063)

(declare-fun mapRest!39991 () (Array (_ BitVec 32) ValueCell!12063))

(assert (=> mapNonEmpty!39991 (= (arr!32709 _values!955) (store mapRest!39991 mapKey!39991 mapValue!39991))))

(assert (= (and start!94418 res!712291) b!1067199))

(assert (= (and b!1067199 res!712289) b!1067198))

(assert (= (and b!1067198 res!712290) b!1067197))

(assert (= (and b!1067197 res!712288) b!1067200))

(assert (= (and b!1067201 condMapEmpty!39991) mapIsEmpty!39991))

(assert (= (and b!1067201 (not condMapEmpty!39991)) mapNonEmpty!39991))

(get-info :version)

(assert (= (and mapNonEmpty!39991 ((_ is ValueCellFull!12063) mapValue!39991)) b!1067202))

(assert (= (and b!1067201 ((_ is ValueCellFull!12063) mapDefault!39991)) b!1067203))

(assert (= start!94418 b!1067201))

(declare-fun m!986021 () Bool)

(assert (=> start!94418 m!986021))

(declare-fun m!986023 () Bool)

(assert (=> start!94418 m!986023))

(declare-fun m!986025 () Bool)

(assert (=> start!94418 m!986025))

(declare-fun m!986027 () Bool)

(assert (=> b!1067198 m!986027))

(declare-fun m!986029 () Bool)

(assert (=> b!1067197 m!986029))

(declare-fun m!986031 () Bool)

(assert (=> mapNonEmpty!39991 m!986031))

(declare-fun m!986033 () Bool)

(assert (=> b!1067200 m!986033))

(declare-fun m!986035 () Bool)

(assert (=> b!1067200 m!986035))

(declare-fun m!986037 () Bool)

(assert (=> b!1067200 m!986037))

(check-sat (not b!1067198) tp_is_empty!25533 (not b!1067200) (not mapNonEmpty!39991) (not start!94418) (not b!1067197) (not b_next!21723) b_and!34525)
(check-sat b_and!34525 (not b_next!21723))
