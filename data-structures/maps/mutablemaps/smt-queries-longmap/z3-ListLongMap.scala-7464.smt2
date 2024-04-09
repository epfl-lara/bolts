; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94730 () Bool)

(assert start!94730)

(declare-fun b_free!21963 () Bool)

(declare-fun b_next!21963 () Bool)

(assert (=> start!94730 (= b_free!21963 (not b_next!21963))))

(declare-fun tp!77345 () Bool)

(declare-fun b_and!34801 () Bool)

(assert (=> start!94730 (= tp!77345 b_and!34801)))

(declare-fun b!1070611 () Bool)

(declare-fun e!611228 () Bool)

(declare-fun tp_is_empty!25773 () Bool)

(assert (=> b!1070611 (= e!611228 tp_is_empty!25773)))

(declare-fun mapNonEmpty!40363 () Bool)

(declare-fun mapRes!40363 () Bool)

(declare-fun tp!77346 () Bool)

(declare-fun e!611227 () Bool)

(assert (=> mapNonEmpty!40363 (= mapRes!40363 (and tp!77346 e!611227))))

(declare-datatypes ((V!39499 0))(
  ( (V!39500 (val!12937 Int)) )
))
(declare-datatypes ((ValueCell!12183 0))(
  ( (ValueCellFull!12183 (v!15554 V!39499)) (EmptyCell!12183) )
))
(declare-fun mapValue!40363 () ValueCell!12183)

(declare-fun mapRest!40363 () (Array (_ BitVec 32) ValueCell!12183))

(declare-fun mapKey!40363 () (_ BitVec 32))

(declare-datatypes ((array!68482 0))(
  ( (array!68483 (arr!32934 (Array (_ BitVec 32) ValueCell!12183)) (size!33471 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68482)

(assert (=> mapNonEmpty!40363 (= (arr!32934 _values!955) (store mapRest!40363 mapKey!40363 mapValue!40363))))

(declare-fun b!1070612 () Bool)

(declare-fun res!714326 () Bool)

(declare-fun e!611224 () Bool)

(assert (=> b!1070612 (=> (not res!714326) (not e!611224))))

(declare-datatypes ((array!68484 0))(
  ( (array!68485 (arr!32935 (Array (_ BitVec 32) (_ BitVec 64))) (size!33472 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68484)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68484 (_ BitVec 32)) Bool)

(assert (=> b!1070612 (= res!714326 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1070613 () Bool)

(declare-fun res!714323 () Bool)

(assert (=> b!1070613 (=> (not res!714323) (not e!611224))))

(declare-datatypes ((List!23107 0))(
  ( (Nil!23104) (Cons!23103 (h!24312 (_ BitVec 64)) (t!32445 List!23107)) )
))
(declare-fun arrayNoDuplicates!0 (array!68484 (_ BitVec 32) List!23107) Bool)

(assert (=> b!1070613 (= res!714323 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23104))))

(declare-fun mapIsEmpty!40363 () Bool)

(assert (=> mapIsEmpty!40363 mapRes!40363))

(declare-fun b!1070614 () Bool)

(assert (=> b!1070614 (= e!611227 tp_is_empty!25773)))

(declare-fun b!1070615 () Bool)

(declare-fun e!611225 () Bool)

(assert (=> b!1070615 (= e!611225 (bvsle #b00000000000000000000000000000000 (size!33472 _keys!1163)))))

(declare-fun zeroValueBefore!47 () V!39499)

(declare-datatypes ((tuple2!16522 0))(
  ( (tuple2!16523 (_1!8271 (_ BitVec 64)) (_2!8271 V!39499)) )
))
(declare-datatypes ((List!23108 0))(
  ( (Nil!23105) (Cons!23104 (h!24313 tuple2!16522) (t!32446 List!23108)) )
))
(declare-datatypes ((ListLongMap!14503 0))(
  ( (ListLongMap!14504 (toList!7267 List!23108)) )
))
(declare-fun lt!473161 () ListLongMap!14503)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39499)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4133 (array!68484 array!68482 (_ BitVec 32) (_ BitVec 32) V!39499 V!39499 (_ BitVec 32) Int) ListLongMap!14503)

(assert (=> b!1070615 (= lt!473161 (getCurrentListMap!4133 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070616 () Bool)

(assert (=> b!1070616 (= e!611224 (not e!611225))))

(declare-fun res!714325 () Bool)

(assert (=> b!1070616 (=> res!714325 e!611225)))

(assert (=> b!1070616 (= res!714325 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!473160 () ListLongMap!14503)

(declare-fun lt!473162 () ListLongMap!14503)

(assert (=> b!1070616 (= lt!473160 lt!473162)))

(declare-fun zeroValueAfter!47 () V!39499)

(declare-datatypes ((Unit!35198 0))(
  ( (Unit!35199) )
))
(declare-fun lt!473159 () Unit!35198)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!842 (array!68484 array!68482 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39499 V!39499 V!39499 V!39499 (_ BitVec 32) Int) Unit!35198)

(assert (=> b!1070616 (= lt!473159 (lemmaNoChangeToArrayThenSameMapNoExtras!842 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3803 (array!68484 array!68482 (_ BitVec 32) (_ BitVec 32) V!39499 V!39499 (_ BitVec 32) Int) ListLongMap!14503)

(assert (=> b!1070616 (= lt!473162 (getCurrentListMapNoExtraKeys!3803 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070616 (= lt!473160 (getCurrentListMapNoExtraKeys!3803 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070617 () Bool)

(declare-fun e!611226 () Bool)

(assert (=> b!1070617 (= e!611226 (and e!611228 mapRes!40363))))

(declare-fun condMapEmpty!40363 () Bool)

(declare-fun mapDefault!40363 () ValueCell!12183)

(assert (=> b!1070617 (= condMapEmpty!40363 (= (arr!32934 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12183)) mapDefault!40363)))))

(declare-fun res!714324 () Bool)

(assert (=> start!94730 (=> (not res!714324) (not e!611224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94730 (= res!714324 (validMask!0 mask!1515))))

(assert (=> start!94730 e!611224))

(assert (=> start!94730 true))

(assert (=> start!94730 tp_is_empty!25773))

(declare-fun array_inv!25324 (array!68482) Bool)

(assert (=> start!94730 (and (array_inv!25324 _values!955) e!611226)))

(assert (=> start!94730 tp!77345))

(declare-fun array_inv!25325 (array!68484) Bool)

(assert (=> start!94730 (array_inv!25325 _keys!1163)))

(declare-fun b!1070618 () Bool)

(declare-fun res!714322 () Bool)

(assert (=> b!1070618 (=> (not res!714322) (not e!611224))))

(assert (=> b!1070618 (= res!714322 (and (= (size!33471 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33472 _keys!1163) (size!33471 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!94730 res!714324) b!1070618))

(assert (= (and b!1070618 res!714322) b!1070612))

(assert (= (and b!1070612 res!714326) b!1070613))

(assert (= (and b!1070613 res!714323) b!1070616))

(assert (= (and b!1070616 (not res!714325)) b!1070615))

(assert (= (and b!1070617 condMapEmpty!40363) mapIsEmpty!40363))

(assert (= (and b!1070617 (not condMapEmpty!40363)) mapNonEmpty!40363))

(get-info :version)

(assert (= (and mapNonEmpty!40363 ((_ is ValueCellFull!12183) mapValue!40363)) b!1070614))

(assert (= (and b!1070617 ((_ is ValueCellFull!12183) mapDefault!40363)) b!1070611))

(assert (= start!94730 b!1070617))

(declare-fun m!989059 () Bool)

(assert (=> b!1070612 m!989059))

(declare-fun m!989061 () Bool)

(assert (=> mapNonEmpty!40363 m!989061))

(declare-fun m!989063 () Bool)

(assert (=> b!1070616 m!989063))

(declare-fun m!989065 () Bool)

(assert (=> b!1070616 m!989065))

(declare-fun m!989067 () Bool)

(assert (=> b!1070616 m!989067))

(declare-fun m!989069 () Bool)

(assert (=> b!1070613 m!989069))

(declare-fun m!989071 () Bool)

(assert (=> b!1070615 m!989071))

(declare-fun m!989073 () Bool)

(assert (=> start!94730 m!989073))

(declare-fun m!989075 () Bool)

(assert (=> start!94730 m!989075))

(declare-fun m!989077 () Bool)

(assert (=> start!94730 m!989077))

(check-sat (not b!1070612) (not b!1070615) (not start!94730) (not b!1070616) (not mapNonEmpty!40363) (not b!1070613) b_and!34801 tp_is_empty!25773 (not b_next!21963))
(check-sat b_and!34801 (not b_next!21963))
(get-model)

(declare-fun d!129217 () Bool)

(assert (=> d!129217 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!94730 d!129217))

(declare-fun d!129219 () Bool)

(assert (=> d!129219 (= (array_inv!25324 _values!955) (bvsge (size!33471 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!94730 d!129219))

(declare-fun d!129221 () Bool)

(assert (=> d!129221 (= (array_inv!25325 _keys!1163) (bvsge (size!33472 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!94730 d!129221))

(declare-fun b!1070653 () Bool)

(declare-fun e!611257 () Bool)

(declare-fun contains!6330 (List!23107 (_ BitVec 64)) Bool)

(assert (=> b!1070653 (= e!611257 (contains!6330 Nil!23104 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1070654 () Bool)

(declare-fun e!611258 () Bool)

(declare-fun e!611259 () Bool)

(assert (=> b!1070654 (= e!611258 e!611259)))

(declare-fun res!714349 () Bool)

(assert (=> b!1070654 (=> (not res!714349) (not e!611259))))

(assert (=> b!1070654 (= res!714349 (not e!611257))))

(declare-fun res!714348 () Bool)

(assert (=> b!1070654 (=> (not res!714348) (not e!611257))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1070654 (= res!714348 (validKeyInArray!0 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1070655 () Bool)

(declare-fun e!611256 () Bool)

(assert (=> b!1070655 (= e!611259 e!611256)))

(declare-fun c!107560 () Bool)

(assert (=> b!1070655 (= c!107560 (validKeyInArray!0 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!129223 () Bool)

(declare-fun res!714350 () Bool)

(assert (=> d!129223 (=> res!714350 e!611258)))

(assert (=> d!129223 (= res!714350 (bvsge #b00000000000000000000000000000000 (size!33472 _keys!1163)))))

(assert (=> d!129223 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23104) e!611258)))

(declare-fun b!1070656 () Bool)

(declare-fun call!45174 () Bool)

(assert (=> b!1070656 (= e!611256 call!45174)))

(declare-fun bm!45171 () Bool)

(assert (=> bm!45171 (= call!45174 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107560 (Cons!23103 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000) Nil!23104) Nil!23104)))))

(declare-fun b!1070657 () Bool)

(assert (=> b!1070657 (= e!611256 call!45174)))

(assert (= (and d!129223 (not res!714350)) b!1070654))

(assert (= (and b!1070654 res!714348) b!1070653))

(assert (= (and b!1070654 res!714349) b!1070655))

(assert (= (and b!1070655 c!107560) b!1070656))

(assert (= (and b!1070655 (not c!107560)) b!1070657))

(assert (= (or b!1070656 b!1070657) bm!45171))

(declare-fun m!989099 () Bool)

(assert (=> b!1070653 m!989099))

(assert (=> b!1070653 m!989099))

(declare-fun m!989101 () Bool)

(assert (=> b!1070653 m!989101))

(assert (=> b!1070654 m!989099))

(assert (=> b!1070654 m!989099))

(declare-fun m!989103 () Bool)

(assert (=> b!1070654 m!989103))

(assert (=> b!1070655 m!989099))

(assert (=> b!1070655 m!989099))

(assert (=> b!1070655 m!989103))

(assert (=> bm!45171 m!989099))

(declare-fun m!989105 () Bool)

(assert (=> bm!45171 m!989105))

(assert (=> b!1070613 d!129223))

(declare-fun b!1070666 () Bool)

(declare-fun e!611266 () Bool)

(declare-fun call!45177 () Bool)

(assert (=> b!1070666 (= e!611266 call!45177)))

(declare-fun bm!45174 () Bool)

(assert (=> bm!45174 (= call!45177 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1070667 () Bool)

(declare-fun e!611268 () Bool)

(assert (=> b!1070667 (= e!611268 e!611266)))

(declare-fun lt!473181 () (_ BitVec 64))

(assert (=> b!1070667 (= lt!473181 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!473183 () Unit!35198)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!68484 (_ BitVec 64) (_ BitVec 32)) Unit!35198)

(assert (=> b!1070667 (= lt!473183 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!473181 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!68484 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1070667 (arrayContainsKey!0 _keys!1163 lt!473181 #b00000000000000000000000000000000)))

(declare-fun lt!473182 () Unit!35198)

(assert (=> b!1070667 (= lt!473182 lt!473183)))

(declare-fun res!714356 () Bool)

(declare-datatypes ((SeekEntryResult!9879 0))(
  ( (MissingZero!9879 (index!41886 (_ BitVec 32))) (Found!9879 (index!41887 (_ BitVec 32))) (Intermediate!9879 (undefined!10691 Bool) (index!41888 (_ BitVec 32)) (x!95926 (_ BitVec 32))) (Undefined!9879) (MissingVacant!9879 (index!41889 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!68484 (_ BitVec 32)) SeekEntryResult!9879)

(assert (=> b!1070667 (= res!714356 (= (seekEntryOrOpen!0 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9879 #b00000000000000000000000000000000)))))

(assert (=> b!1070667 (=> (not res!714356) (not e!611266))))

(declare-fun b!1070668 () Bool)

(declare-fun e!611267 () Bool)

(assert (=> b!1070668 (= e!611267 e!611268)))

(declare-fun c!107563 () Bool)

(assert (=> b!1070668 (= c!107563 (validKeyInArray!0 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!129225 () Bool)

(declare-fun res!714355 () Bool)

(assert (=> d!129225 (=> res!714355 e!611267)))

(assert (=> d!129225 (= res!714355 (bvsge #b00000000000000000000000000000000 (size!33472 _keys!1163)))))

(assert (=> d!129225 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!611267)))

(declare-fun b!1070669 () Bool)

(assert (=> b!1070669 (= e!611268 call!45177)))

(assert (= (and d!129225 (not res!714355)) b!1070668))

(assert (= (and b!1070668 c!107563) b!1070667))

(assert (= (and b!1070668 (not c!107563)) b!1070669))

(assert (= (and b!1070667 res!714356) b!1070666))

(assert (= (or b!1070666 b!1070669) bm!45174))

(declare-fun m!989107 () Bool)

(assert (=> bm!45174 m!989107))

(assert (=> b!1070667 m!989099))

(declare-fun m!989109 () Bool)

(assert (=> b!1070667 m!989109))

(declare-fun m!989111 () Bool)

(assert (=> b!1070667 m!989111))

(assert (=> b!1070667 m!989099))

(declare-fun m!989113 () Bool)

(assert (=> b!1070667 m!989113))

(assert (=> b!1070668 m!989099))

(assert (=> b!1070668 m!989099))

(assert (=> b!1070668 m!989103))

(assert (=> b!1070612 d!129225))

(declare-fun d!129227 () Bool)

(assert (=> d!129227 (= (getCurrentListMapNoExtraKeys!3803 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3803 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!473186 () Unit!35198)

(declare-fun choose!1746 (array!68484 array!68482 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39499 V!39499 V!39499 V!39499 (_ BitVec 32) Int) Unit!35198)

(assert (=> d!129227 (= lt!473186 (choose!1746 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!129227 (validMask!0 mask!1515)))

(assert (=> d!129227 (= (lemmaNoChangeToArrayThenSameMapNoExtras!842 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!473186)))

(declare-fun bs!31537 () Bool)

(assert (= bs!31537 d!129227))

(assert (=> bs!31537 m!989067))

(assert (=> bs!31537 m!989065))

(declare-fun m!989115 () Bool)

(assert (=> bs!31537 m!989115))

(assert (=> bs!31537 m!989073))

(assert (=> b!1070616 d!129227))

(declare-fun b!1070694 () Bool)

(declare-fun lt!473203 () Unit!35198)

(declare-fun lt!473201 () Unit!35198)

(assert (=> b!1070694 (= lt!473203 lt!473201)))

(declare-fun lt!473204 () (_ BitVec 64))

(declare-fun lt!473207 () ListLongMap!14503)

(declare-fun lt!473205 () (_ BitVec 64))

(declare-fun lt!473202 () V!39499)

(declare-fun contains!6331 (ListLongMap!14503 (_ BitVec 64)) Bool)

(declare-fun +!3124 (ListLongMap!14503 tuple2!16522) ListLongMap!14503)

(assert (=> b!1070694 (not (contains!6331 (+!3124 lt!473207 (tuple2!16523 lt!473204 lt!473202)) lt!473205))))

(declare-fun addStillNotContains!259 (ListLongMap!14503 (_ BitVec 64) V!39499 (_ BitVec 64)) Unit!35198)

(assert (=> b!1070694 (= lt!473201 (addStillNotContains!259 lt!473207 lt!473204 lt!473202 lt!473205))))

(assert (=> b!1070694 (= lt!473205 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!17156 (ValueCell!12183 V!39499) V!39499)

(declare-fun dynLambda!2040 (Int (_ BitVec 64)) V!39499)

(assert (=> b!1070694 (= lt!473202 (get!17156 (select (arr!32934 _values!955) #b00000000000000000000000000000000) (dynLambda!2040 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1070694 (= lt!473204 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun call!45180 () ListLongMap!14503)

(assert (=> b!1070694 (= lt!473207 call!45180)))

(declare-fun e!611283 () ListLongMap!14503)

(assert (=> b!1070694 (= e!611283 (+!3124 call!45180 (tuple2!16523 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000) (get!17156 (select (arr!32934 _values!955) #b00000000000000000000000000000000) (dynLambda!2040 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!129229 () Bool)

(declare-fun e!611289 () Bool)

(assert (=> d!129229 e!611289))

(declare-fun res!714367 () Bool)

(assert (=> d!129229 (=> (not res!714367) (not e!611289))))

(declare-fun lt!473206 () ListLongMap!14503)

(assert (=> d!129229 (= res!714367 (not (contains!6331 lt!473206 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!611285 () ListLongMap!14503)

(assert (=> d!129229 (= lt!473206 e!611285)))

(declare-fun c!107575 () Bool)

(assert (=> d!129229 (= c!107575 (bvsge #b00000000000000000000000000000000 (size!33472 _keys!1163)))))

(assert (=> d!129229 (validMask!0 mask!1515)))

(assert (=> d!129229 (= (getCurrentListMapNoExtraKeys!3803 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!473206)))

(declare-fun b!1070695 () Bool)

(assert (=> b!1070695 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33472 _keys!1163)))))

(assert (=> b!1070695 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33471 _values!955)))))

(declare-fun e!611288 () Bool)

(declare-fun apply!964 (ListLongMap!14503 (_ BitVec 64)) V!39499)

(assert (=> b!1070695 (= e!611288 (= (apply!964 lt!473206 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000)) (get!17156 (select (arr!32934 _values!955) #b00000000000000000000000000000000) (dynLambda!2040 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!45177 () Bool)

(assert (=> bm!45177 (= call!45180 (getCurrentListMapNoExtraKeys!3803 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1070696 () Bool)

(assert (=> b!1070696 (= e!611285 (ListLongMap!14504 Nil!23105))))

(declare-fun b!1070697 () Bool)

(declare-fun res!714365 () Bool)

(assert (=> b!1070697 (=> (not res!714365) (not e!611289))))

(assert (=> b!1070697 (= res!714365 (not (contains!6331 lt!473206 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1070698 () Bool)

(declare-fun e!611287 () Bool)

(assert (=> b!1070698 (= e!611287 e!611288)))

(assert (=> b!1070698 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33472 _keys!1163)))))

(declare-fun res!714368 () Bool)

(assert (=> b!1070698 (= res!714368 (contains!6331 lt!473206 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1070698 (=> (not res!714368) (not e!611288))))

(declare-fun b!1070699 () Bool)

(declare-fun e!611284 () Bool)

(assert (=> b!1070699 (= e!611287 e!611284)))

(declare-fun c!107572 () Bool)

(assert (=> b!1070699 (= c!107572 (bvslt #b00000000000000000000000000000000 (size!33472 _keys!1163)))))

(declare-fun b!1070700 () Bool)

(assert (=> b!1070700 (= e!611284 (= lt!473206 (getCurrentListMapNoExtraKeys!3803 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1070701 () Bool)

(assert (=> b!1070701 (= e!611283 call!45180)))

(declare-fun b!1070702 () Bool)

(declare-fun isEmpty!950 (ListLongMap!14503) Bool)

(assert (=> b!1070702 (= e!611284 (isEmpty!950 lt!473206))))

(declare-fun b!1070703 () Bool)

(declare-fun e!611286 () Bool)

(assert (=> b!1070703 (= e!611286 (validKeyInArray!0 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1070703 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1070704 () Bool)

(assert (=> b!1070704 (= e!611285 e!611283)))

(declare-fun c!107574 () Bool)

(assert (=> b!1070704 (= c!107574 (validKeyInArray!0 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1070705 () Bool)

(assert (=> b!1070705 (= e!611289 e!611287)))

(declare-fun c!107573 () Bool)

(assert (=> b!1070705 (= c!107573 e!611286)))

(declare-fun res!714366 () Bool)

(assert (=> b!1070705 (=> (not res!714366) (not e!611286))))

(assert (=> b!1070705 (= res!714366 (bvslt #b00000000000000000000000000000000 (size!33472 _keys!1163)))))

(assert (= (and d!129229 c!107575) b!1070696))

(assert (= (and d!129229 (not c!107575)) b!1070704))

(assert (= (and b!1070704 c!107574) b!1070694))

(assert (= (and b!1070704 (not c!107574)) b!1070701))

(assert (= (or b!1070694 b!1070701) bm!45177))

(assert (= (and d!129229 res!714367) b!1070697))

(assert (= (and b!1070697 res!714365) b!1070705))

(assert (= (and b!1070705 res!714366) b!1070703))

(assert (= (and b!1070705 c!107573) b!1070698))

(assert (= (and b!1070705 (not c!107573)) b!1070699))

(assert (= (and b!1070698 res!714368) b!1070695))

(assert (= (and b!1070699 c!107572) b!1070700))

(assert (= (and b!1070699 (not c!107572)) b!1070702))

(declare-fun b_lambda!16687 () Bool)

(assert (=> (not b_lambda!16687) (not b!1070694)))

(declare-fun t!32448 () Bool)

(declare-fun tb!7161 () Bool)

(assert (=> (and start!94730 (= defaultEntry!963 defaultEntry!963) t!32448) tb!7161))

(declare-fun result!14775 () Bool)

(assert (=> tb!7161 (= result!14775 tp_is_empty!25773)))

(assert (=> b!1070694 t!32448))

(declare-fun b_and!34805 () Bool)

(assert (= b_and!34801 (and (=> t!32448 result!14775) b_and!34805)))

(declare-fun b_lambda!16689 () Bool)

(assert (=> (not b_lambda!16689) (not b!1070695)))

(assert (=> b!1070695 t!32448))

(declare-fun b_and!34807 () Bool)

(assert (= b_and!34805 (and (=> t!32448 result!14775) b_and!34807)))

(declare-fun m!989117 () Bool)

(assert (=> b!1070700 m!989117))

(declare-fun m!989119 () Bool)

(assert (=> b!1070702 m!989119))

(declare-fun m!989121 () Bool)

(assert (=> d!129229 m!989121))

(assert (=> d!129229 m!989073))

(assert (=> b!1070695 m!989099))

(declare-fun m!989123 () Bool)

(assert (=> b!1070695 m!989123))

(assert (=> b!1070695 m!989099))

(declare-fun m!989125 () Bool)

(assert (=> b!1070695 m!989125))

(declare-fun m!989127 () Bool)

(assert (=> b!1070695 m!989127))

(assert (=> b!1070695 m!989123))

(declare-fun m!989129 () Bool)

(assert (=> b!1070695 m!989129))

(assert (=> b!1070695 m!989127))

(assert (=> b!1070698 m!989099))

(assert (=> b!1070698 m!989099))

(declare-fun m!989131 () Bool)

(assert (=> b!1070698 m!989131))

(assert (=> bm!45177 m!989117))

(assert (=> b!1070694 m!989099))

(declare-fun m!989133 () Bool)

(assert (=> b!1070694 m!989133))

(declare-fun m!989135 () Bool)

(assert (=> b!1070694 m!989135))

(declare-fun m!989137 () Bool)

(assert (=> b!1070694 m!989137))

(assert (=> b!1070694 m!989123))

(assert (=> b!1070694 m!989135))

(assert (=> b!1070694 m!989127))

(assert (=> b!1070694 m!989123))

(assert (=> b!1070694 m!989129))

(declare-fun m!989139 () Bool)

(assert (=> b!1070694 m!989139))

(assert (=> b!1070694 m!989127))

(assert (=> b!1070704 m!989099))

(assert (=> b!1070704 m!989099))

(assert (=> b!1070704 m!989103))

(declare-fun m!989141 () Bool)

(assert (=> b!1070697 m!989141))

(assert (=> b!1070703 m!989099))

(assert (=> b!1070703 m!989099))

(assert (=> b!1070703 m!989103))

(assert (=> b!1070616 d!129229))

(declare-fun b!1070708 () Bool)

(declare-fun lt!473210 () Unit!35198)

(declare-fun lt!473208 () Unit!35198)

(assert (=> b!1070708 (= lt!473210 lt!473208)))

(declare-fun lt!473209 () V!39499)

(declare-fun lt!473211 () (_ BitVec 64))

(declare-fun lt!473212 () (_ BitVec 64))

(declare-fun lt!473214 () ListLongMap!14503)

(assert (=> b!1070708 (not (contains!6331 (+!3124 lt!473214 (tuple2!16523 lt!473211 lt!473209)) lt!473212))))

(assert (=> b!1070708 (= lt!473208 (addStillNotContains!259 lt!473214 lt!473211 lt!473209 lt!473212))))

(assert (=> b!1070708 (= lt!473212 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1070708 (= lt!473209 (get!17156 (select (arr!32934 _values!955) #b00000000000000000000000000000000) (dynLambda!2040 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1070708 (= lt!473211 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun call!45181 () ListLongMap!14503)

(assert (=> b!1070708 (= lt!473214 call!45181)))

(declare-fun e!611290 () ListLongMap!14503)

(assert (=> b!1070708 (= e!611290 (+!3124 call!45181 (tuple2!16523 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000) (get!17156 (select (arr!32934 _values!955) #b00000000000000000000000000000000) (dynLambda!2040 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!129231 () Bool)

(declare-fun e!611296 () Bool)

(assert (=> d!129231 e!611296))

(declare-fun res!714371 () Bool)

(assert (=> d!129231 (=> (not res!714371) (not e!611296))))

(declare-fun lt!473213 () ListLongMap!14503)

(assert (=> d!129231 (= res!714371 (not (contains!6331 lt!473213 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!611292 () ListLongMap!14503)

(assert (=> d!129231 (= lt!473213 e!611292)))

(declare-fun c!107579 () Bool)

(assert (=> d!129231 (= c!107579 (bvsge #b00000000000000000000000000000000 (size!33472 _keys!1163)))))

(assert (=> d!129231 (validMask!0 mask!1515)))

(assert (=> d!129231 (= (getCurrentListMapNoExtraKeys!3803 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!473213)))

(declare-fun b!1070709 () Bool)

(assert (=> b!1070709 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33472 _keys!1163)))))

(assert (=> b!1070709 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33471 _values!955)))))

(declare-fun e!611295 () Bool)

(assert (=> b!1070709 (= e!611295 (= (apply!964 lt!473213 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000)) (get!17156 (select (arr!32934 _values!955) #b00000000000000000000000000000000) (dynLambda!2040 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!45178 () Bool)

(assert (=> bm!45178 (= call!45181 (getCurrentListMapNoExtraKeys!3803 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1070710 () Bool)

(assert (=> b!1070710 (= e!611292 (ListLongMap!14504 Nil!23105))))

(declare-fun b!1070711 () Bool)

(declare-fun res!714369 () Bool)

(assert (=> b!1070711 (=> (not res!714369) (not e!611296))))

(assert (=> b!1070711 (= res!714369 (not (contains!6331 lt!473213 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1070712 () Bool)

(declare-fun e!611294 () Bool)

(assert (=> b!1070712 (= e!611294 e!611295)))

(assert (=> b!1070712 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33472 _keys!1163)))))

(declare-fun res!714372 () Bool)

(assert (=> b!1070712 (= res!714372 (contains!6331 lt!473213 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1070712 (=> (not res!714372) (not e!611295))))

(declare-fun b!1070713 () Bool)

(declare-fun e!611291 () Bool)

(assert (=> b!1070713 (= e!611294 e!611291)))

(declare-fun c!107576 () Bool)

(assert (=> b!1070713 (= c!107576 (bvslt #b00000000000000000000000000000000 (size!33472 _keys!1163)))))

(declare-fun b!1070714 () Bool)

(assert (=> b!1070714 (= e!611291 (= lt!473213 (getCurrentListMapNoExtraKeys!3803 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1070715 () Bool)

(assert (=> b!1070715 (= e!611290 call!45181)))

(declare-fun b!1070716 () Bool)

(assert (=> b!1070716 (= e!611291 (isEmpty!950 lt!473213))))

(declare-fun b!1070717 () Bool)

(declare-fun e!611293 () Bool)

(assert (=> b!1070717 (= e!611293 (validKeyInArray!0 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1070717 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1070718 () Bool)

(assert (=> b!1070718 (= e!611292 e!611290)))

(declare-fun c!107578 () Bool)

(assert (=> b!1070718 (= c!107578 (validKeyInArray!0 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1070719 () Bool)

(assert (=> b!1070719 (= e!611296 e!611294)))

(declare-fun c!107577 () Bool)

(assert (=> b!1070719 (= c!107577 e!611293)))

(declare-fun res!714370 () Bool)

(assert (=> b!1070719 (=> (not res!714370) (not e!611293))))

(assert (=> b!1070719 (= res!714370 (bvslt #b00000000000000000000000000000000 (size!33472 _keys!1163)))))

(assert (= (and d!129231 c!107579) b!1070710))

(assert (= (and d!129231 (not c!107579)) b!1070718))

(assert (= (and b!1070718 c!107578) b!1070708))

(assert (= (and b!1070718 (not c!107578)) b!1070715))

(assert (= (or b!1070708 b!1070715) bm!45178))

(assert (= (and d!129231 res!714371) b!1070711))

(assert (= (and b!1070711 res!714369) b!1070719))

(assert (= (and b!1070719 res!714370) b!1070717))

(assert (= (and b!1070719 c!107577) b!1070712))

(assert (= (and b!1070719 (not c!107577)) b!1070713))

(assert (= (and b!1070712 res!714372) b!1070709))

(assert (= (and b!1070713 c!107576) b!1070714))

(assert (= (and b!1070713 (not c!107576)) b!1070716))

(declare-fun b_lambda!16691 () Bool)

(assert (=> (not b_lambda!16691) (not b!1070708)))

(assert (=> b!1070708 t!32448))

(declare-fun b_and!34809 () Bool)

(assert (= b_and!34807 (and (=> t!32448 result!14775) b_and!34809)))

(declare-fun b_lambda!16693 () Bool)

(assert (=> (not b_lambda!16693) (not b!1070709)))

(assert (=> b!1070709 t!32448))

(declare-fun b_and!34811 () Bool)

(assert (= b_and!34809 (and (=> t!32448 result!14775) b_and!34811)))

(declare-fun m!989143 () Bool)

(assert (=> b!1070714 m!989143))

(declare-fun m!989145 () Bool)

(assert (=> b!1070716 m!989145))

(declare-fun m!989147 () Bool)

(assert (=> d!129231 m!989147))

(assert (=> d!129231 m!989073))

(assert (=> b!1070709 m!989099))

(assert (=> b!1070709 m!989123))

(assert (=> b!1070709 m!989099))

(declare-fun m!989149 () Bool)

(assert (=> b!1070709 m!989149))

(assert (=> b!1070709 m!989127))

(assert (=> b!1070709 m!989123))

(assert (=> b!1070709 m!989129))

(assert (=> b!1070709 m!989127))

(assert (=> b!1070712 m!989099))

(assert (=> b!1070712 m!989099))

(declare-fun m!989151 () Bool)

(assert (=> b!1070712 m!989151))

(assert (=> bm!45178 m!989143))

(assert (=> b!1070708 m!989099))

(declare-fun m!989153 () Bool)

(assert (=> b!1070708 m!989153))

(declare-fun m!989155 () Bool)

(assert (=> b!1070708 m!989155))

(declare-fun m!989157 () Bool)

(assert (=> b!1070708 m!989157))

(assert (=> b!1070708 m!989123))

(assert (=> b!1070708 m!989155))

(assert (=> b!1070708 m!989127))

(assert (=> b!1070708 m!989123))

(assert (=> b!1070708 m!989129))

(declare-fun m!989159 () Bool)

(assert (=> b!1070708 m!989159))

(assert (=> b!1070708 m!989127))

(assert (=> b!1070718 m!989099))

(assert (=> b!1070718 m!989099))

(assert (=> b!1070718 m!989103))

(declare-fun m!989161 () Bool)

(assert (=> b!1070711 m!989161))

(assert (=> b!1070717 m!989099))

(assert (=> b!1070717 m!989099))

(assert (=> b!1070717 m!989103))

(assert (=> b!1070616 d!129231))

(declare-fun call!45200 () ListLongMap!14503)

(declare-fun bm!45193 () Bool)

(assert (=> bm!45193 (= call!45200 (getCurrentListMapNoExtraKeys!3803 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070762 () Bool)

(declare-fun e!611334 () Bool)

(assert (=> b!1070762 (= e!611334 (validKeyInArray!0 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1070763 () Bool)

(declare-fun e!611331 () Unit!35198)

(declare-fun lt!473278 () Unit!35198)

(assert (=> b!1070763 (= e!611331 lt!473278)))

(declare-fun lt!473270 () ListLongMap!14503)

(assert (=> b!1070763 (= lt!473270 (getCurrentListMapNoExtraKeys!3803 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!473271 () (_ BitVec 64))

(assert (=> b!1070763 (= lt!473271 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!473279 () (_ BitVec 64))

(assert (=> b!1070763 (= lt!473279 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!473274 () Unit!35198)

(declare-fun addStillContains!647 (ListLongMap!14503 (_ BitVec 64) V!39499 (_ BitVec 64)) Unit!35198)

(assert (=> b!1070763 (= lt!473274 (addStillContains!647 lt!473270 lt!473271 zeroValueBefore!47 lt!473279))))

(assert (=> b!1070763 (contains!6331 (+!3124 lt!473270 (tuple2!16523 lt!473271 zeroValueBefore!47)) lt!473279)))

(declare-fun lt!473272 () Unit!35198)

(assert (=> b!1070763 (= lt!473272 lt!473274)))

(declare-fun lt!473273 () ListLongMap!14503)

(assert (=> b!1070763 (= lt!473273 (getCurrentListMapNoExtraKeys!3803 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!473259 () (_ BitVec 64))

(assert (=> b!1070763 (= lt!473259 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!473264 () (_ BitVec 64))

(assert (=> b!1070763 (= lt!473264 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!473262 () Unit!35198)

(declare-fun addApplyDifferent!499 (ListLongMap!14503 (_ BitVec 64) V!39499 (_ BitVec 64)) Unit!35198)

(assert (=> b!1070763 (= lt!473262 (addApplyDifferent!499 lt!473273 lt!473259 minValue!907 lt!473264))))

(assert (=> b!1070763 (= (apply!964 (+!3124 lt!473273 (tuple2!16523 lt!473259 minValue!907)) lt!473264) (apply!964 lt!473273 lt!473264))))

(declare-fun lt!473265 () Unit!35198)

(assert (=> b!1070763 (= lt!473265 lt!473262)))

(declare-fun lt!473260 () ListLongMap!14503)

(assert (=> b!1070763 (= lt!473260 (getCurrentListMapNoExtraKeys!3803 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!473277 () (_ BitVec 64))

(assert (=> b!1070763 (= lt!473277 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!473275 () (_ BitVec 64))

(assert (=> b!1070763 (= lt!473275 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!473267 () Unit!35198)

(assert (=> b!1070763 (= lt!473267 (addApplyDifferent!499 lt!473260 lt!473277 zeroValueBefore!47 lt!473275))))

(assert (=> b!1070763 (= (apply!964 (+!3124 lt!473260 (tuple2!16523 lt!473277 zeroValueBefore!47)) lt!473275) (apply!964 lt!473260 lt!473275))))

(declare-fun lt!473269 () Unit!35198)

(assert (=> b!1070763 (= lt!473269 lt!473267)))

(declare-fun lt!473276 () ListLongMap!14503)

(assert (=> b!1070763 (= lt!473276 (getCurrentListMapNoExtraKeys!3803 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!473261 () (_ BitVec 64))

(assert (=> b!1070763 (= lt!473261 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!473280 () (_ BitVec 64))

(assert (=> b!1070763 (= lt!473280 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1070763 (= lt!473278 (addApplyDifferent!499 lt!473276 lt!473261 minValue!907 lt!473280))))

(assert (=> b!1070763 (= (apply!964 (+!3124 lt!473276 (tuple2!16523 lt!473261 minValue!907)) lt!473280) (apply!964 lt!473276 lt!473280))))

(declare-fun c!107597 () Bool)

(declare-fun c!107594 () Bool)

(declare-fun call!45196 () ListLongMap!14503)

(declare-fun call!45199 () ListLongMap!14503)

(declare-fun bm!45194 () Bool)

(declare-fun call!45198 () ListLongMap!14503)

(assert (=> bm!45194 (= call!45198 (+!3124 (ite c!107594 call!45200 (ite c!107597 call!45196 call!45199)) (ite (or c!107594 c!107597) (tuple2!16523 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16523 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1070764 () Bool)

(declare-fun e!611324 () Bool)

(declare-fun e!611325 () Bool)

(assert (=> b!1070764 (= e!611324 e!611325)))

(declare-fun res!714392 () Bool)

(declare-fun call!45202 () Bool)

(assert (=> b!1070764 (= res!714392 call!45202)))

(assert (=> b!1070764 (=> (not res!714392) (not e!611325))))

(declare-fun b!1070765 () Bool)

(declare-fun e!611330 () ListLongMap!14503)

(assert (=> b!1070765 (= e!611330 (+!3124 call!45198 (tuple2!16523 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun b!1070766 () Bool)

(declare-fun e!611329 () Bool)

(declare-fun e!611335 () Bool)

(assert (=> b!1070766 (= e!611329 e!611335)))

(declare-fun c!107593 () Bool)

(assert (=> b!1070766 (= c!107593 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1070767 () Bool)

(declare-fun lt!473266 () ListLongMap!14503)

(assert (=> b!1070767 (= e!611325 (= (apply!964 lt!473266 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(declare-fun b!1070768 () Bool)

(declare-fun e!611328 () ListLongMap!14503)

(assert (=> b!1070768 (= e!611328 call!45199)))

(declare-fun b!1070769 () Bool)

(declare-fun e!611323 () Bool)

(assert (=> b!1070769 (= e!611335 e!611323)))

(declare-fun res!714391 () Bool)

(declare-fun call!45197 () Bool)

(assert (=> b!1070769 (= res!714391 call!45197)))

(assert (=> b!1070769 (=> (not res!714391) (not e!611323))))

(declare-fun b!1070770 () Bool)

(declare-fun e!611326 () ListLongMap!14503)

(assert (=> b!1070770 (= e!611330 e!611326)))

(assert (=> b!1070770 (= c!107597 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!45196 () Bool)

(assert (=> bm!45196 (= call!45197 (contains!6331 lt!473266 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1070771 () Bool)

(declare-fun c!107592 () Bool)

(assert (=> b!1070771 (= c!107592 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1070771 (= e!611326 e!611328)))

(declare-fun b!1070772 () Bool)

(declare-fun e!611333 () Bool)

(declare-fun e!611332 () Bool)

(assert (=> b!1070772 (= e!611333 e!611332)))

(declare-fun res!714393 () Bool)

(assert (=> b!1070772 (=> (not res!714393) (not e!611332))))

(assert (=> b!1070772 (= res!714393 (contains!6331 lt!473266 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1070772 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33472 _keys!1163)))))

(declare-fun b!1070773 () Bool)

(declare-fun e!611327 () Bool)

(assert (=> b!1070773 (= e!611327 (validKeyInArray!0 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1070774 () Bool)

(declare-fun Unit!35200 () Unit!35198)

(assert (=> b!1070774 (= e!611331 Unit!35200)))

(declare-fun b!1070775 () Bool)

(assert (=> b!1070775 (= e!611335 (not call!45197))))

(declare-fun b!1070776 () Bool)

(declare-fun res!714397 () Bool)

(assert (=> b!1070776 (=> (not res!714397) (not e!611329))))

(assert (=> b!1070776 (= res!714397 e!611333)))

(declare-fun res!714394 () Bool)

(assert (=> b!1070776 (=> res!714394 e!611333)))

(assert (=> b!1070776 (= res!714394 (not e!611327))))

(declare-fun res!714399 () Bool)

(assert (=> b!1070776 (=> (not res!714399) (not e!611327))))

(assert (=> b!1070776 (= res!714399 (bvslt #b00000000000000000000000000000000 (size!33472 _keys!1163)))))

(declare-fun bm!45197 () Bool)

(assert (=> bm!45197 (= call!45196 call!45200)))

(declare-fun bm!45198 () Bool)

(declare-fun call!45201 () ListLongMap!14503)

(assert (=> bm!45198 (= call!45201 call!45198)))

(declare-fun b!1070777 () Bool)

(assert (=> b!1070777 (= e!611332 (= (apply!964 lt!473266 (select (arr!32935 _keys!1163) #b00000000000000000000000000000000)) (get!17156 (select (arr!32934 _values!955) #b00000000000000000000000000000000) (dynLambda!2040 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1070777 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33471 _values!955)))))

(assert (=> b!1070777 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33472 _keys!1163)))))

(declare-fun bm!45199 () Bool)

(assert (=> bm!45199 (= call!45199 call!45196)))

(declare-fun b!1070778 () Bool)

(assert (=> b!1070778 (= e!611323 (= (apply!964 lt!473266 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun bm!45195 () Bool)

(assert (=> bm!45195 (= call!45202 (contains!6331 lt!473266 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!129233 () Bool)

(assert (=> d!129233 e!611329))

(declare-fun res!714396 () Bool)

(assert (=> d!129233 (=> (not res!714396) (not e!611329))))

(assert (=> d!129233 (= res!714396 (or (bvsge #b00000000000000000000000000000000 (size!33472 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33472 _keys!1163)))))))

(declare-fun lt!473263 () ListLongMap!14503)

(assert (=> d!129233 (= lt!473266 lt!473263)))

(declare-fun lt!473268 () Unit!35198)

(assert (=> d!129233 (= lt!473268 e!611331)))

(declare-fun c!107596 () Bool)

(assert (=> d!129233 (= c!107596 e!611334)))

(declare-fun res!714398 () Bool)

(assert (=> d!129233 (=> (not res!714398) (not e!611334))))

(assert (=> d!129233 (= res!714398 (bvslt #b00000000000000000000000000000000 (size!33472 _keys!1163)))))

(assert (=> d!129233 (= lt!473263 e!611330)))

(assert (=> d!129233 (= c!107594 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129233 (validMask!0 mask!1515)))

(assert (=> d!129233 (= (getCurrentListMap!4133 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!473266)))

(declare-fun b!1070779 () Bool)

(assert (=> b!1070779 (= e!611324 (not call!45202))))

(declare-fun b!1070780 () Bool)

(assert (=> b!1070780 (= e!611328 call!45201)))

(declare-fun b!1070781 () Bool)

(assert (=> b!1070781 (= e!611326 call!45201)))

(declare-fun b!1070782 () Bool)

(declare-fun res!714395 () Bool)

(assert (=> b!1070782 (=> (not res!714395) (not e!611329))))

(assert (=> b!1070782 (= res!714395 e!611324)))

(declare-fun c!107595 () Bool)

(assert (=> b!1070782 (= c!107595 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!129233 c!107594) b!1070765))

(assert (= (and d!129233 (not c!107594)) b!1070770))

(assert (= (and b!1070770 c!107597) b!1070781))

(assert (= (and b!1070770 (not c!107597)) b!1070771))

(assert (= (and b!1070771 c!107592) b!1070780))

(assert (= (and b!1070771 (not c!107592)) b!1070768))

(assert (= (or b!1070780 b!1070768) bm!45199))

(assert (= (or b!1070781 bm!45199) bm!45197))

(assert (= (or b!1070781 b!1070780) bm!45198))

(assert (= (or b!1070765 bm!45197) bm!45193))

(assert (= (or b!1070765 bm!45198) bm!45194))

(assert (= (and d!129233 res!714398) b!1070762))

(assert (= (and d!129233 c!107596) b!1070763))

(assert (= (and d!129233 (not c!107596)) b!1070774))

(assert (= (and d!129233 res!714396) b!1070776))

(assert (= (and b!1070776 res!714399) b!1070773))

(assert (= (and b!1070776 (not res!714394)) b!1070772))

(assert (= (and b!1070772 res!714393) b!1070777))

(assert (= (and b!1070776 res!714397) b!1070782))

(assert (= (and b!1070782 c!107595) b!1070764))

(assert (= (and b!1070782 (not c!107595)) b!1070779))

(assert (= (and b!1070764 res!714392) b!1070767))

(assert (= (or b!1070764 b!1070779) bm!45195))

(assert (= (and b!1070782 res!714395) b!1070766))

(assert (= (and b!1070766 c!107593) b!1070769))

(assert (= (and b!1070766 (not c!107593)) b!1070775))

(assert (= (and b!1070769 res!714391) b!1070778))

(assert (= (or b!1070769 b!1070775) bm!45196))

(declare-fun b_lambda!16695 () Bool)

(assert (=> (not b_lambda!16695) (not b!1070777)))

(assert (=> b!1070777 t!32448))

(declare-fun b_and!34813 () Bool)

(assert (= b_and!34811 (and (=> t!32448 result!14775) b_and!34813)))

(assert (=> bm!45193 m!989067))

(declare-fun m!989163 () Bool)

(assert (=> bm!45196 m!989163))

(declare-fun m!989165 () Bool)

(assert (=> b!1070765 m!989165))

(assert (=> b!1070762 m!989099))

(assert (=> b!1070762 m!989099))

(assert (=> b!1070762 m!989103))

(assert (=> d!129233 m!989073))

(declare-fun m!989167 () Bool)

(assert (=> b!1070763 m!989167))

(assert (=> b!1070763 m!989167))

(declare-fun m!989169 () Bool)

(assert (=> b!1070763 m!989169))

(declare-fun m!989171 () Bool)

(assert (=> b!1070763 m!989171))

(declare-fun m!989173 () Bool)

(assert (=> b!1070763 m!989173))

(declare-fun m!989175 () Bool)

(assert (=> b!1070763 m!989175))

(declare-fun m!989177 () Bool)

(assert (=> b!1070763 m!989177))

(assert (=> b!1070763 m!989099))

(declare-fun m!989179 () Bool)

(assert (=> b!1070763 m!989179))

(assert (=> b!1070763 m!989171))

(declare-fun m!989181 () Bool)

(assert (=> b!1070763 m!989181))

(assert (=> b!1070763 m!989067))

(declare-fun m!989183 () Bool)

(assert (=> b!1070763 m!989183))

(assert (=> b!1070763 m!989173))

(assert (=> b!1070763 m!989183))

(declare-fun m!989185 () Bool)

(assert (=> b!1070763 m!989185))

(declare-fun m!989187 () Bool)

(assert (=> b!1070763 m!989187))

(declare-fun m!989189 () Bool)

(assert (=> b!1070763 m!989189))

(declare-fun m!989191 () Bool)

(assert (=> b!1070763 m!989191))

(declare-fun m!989193 () Bool)

(assert (=> b!1070763 m!989193))

(declare-fun m!989195 () Bool)

(assert (=> b!1070763 m!989195))

(assert (=> b!1070773 m!989099))

(assert (=> b!1070773 m!989099))

(assert (=> b!1070773 m!989103))

(declare-fun m!989197 () Bool)

(assert (=> b!1070767 m!989197))

(assert (=> b!1070777 m!989123))

(assert (=> b!1070777 m!989127))

(assert (=> b!1070777 m!989123))

(assert (=> b!1070777 m!989129))

(assert (=> b!1070777 m!989099))

(assert (=> b!1070777 m!989127))

(assert (=> b!1070777 m!989099))

(declare-fun m!989199 () Bool)

(assert (=> b!1070777 m!989199))

(declare-fun m!989201 () Bool)

(assert (=> bm!45194 m!989201))

(assert (=> b!1070772 m!989099))

(assert (=> b!1070772 m!989099))

(declare-fun m!989203 () Bool)

(assert (=> b!1070772 m!989203))

(declare-fun m!989205 () Bool)

(assert (=> bm!45195 m!989205))

(declare-fun m!989207 () Bool)

(assert (=> b!1070778 m!989207))

(assert (=> b!1070615 d!129233))

(declare-fun mapIsEmpty!40369 () Bool)

(declare-fun mapRes!40369 () Bool)

(assert (=> mapIsEmpty!40369 mapRes!40369))

(declare-fun b!1070790 () Bool)

(declare-fun e!611340 () Bool)

(assert (=> b!1070790 (= e!611340 tp_is_empty!25773)))

(declare-fun mapNonEmpty!40369 () Bool)

(declare-fun tp!77355 () Bool)

(declare-fun e!611341 () Bool)

(assert (=> mapNonEmpty!40369 (= mapRes!40369 (and tp!77355 e!611341))))

(declare-fun mapValue!40369 () ValueCell!12183)

(declare-fun mapRest!40369 () (Array (_ BitVec 32) ValueCell!12183))

(declare-fun mapKey!40369 () (_ BitVec 32))

(assert (=> mapNonEmpty!40369 (= mapRest!40363 (store mapRest!40369 mapKey!40369 mapValue!40369))))

(declare-fun condMapEmpty!40369 () Bool)

(declare-fun mapDefault!40369 () ValueCell!12183)

(assert (=> mapNonEmpty!40363 (= condMapEmpty!40369 (= mapRest!40363 ((as const (Array (_ BitVec 32) ValueCell!12183)) mapDefault!40369)))))

(assert (=> mapNonEmpty!40363 (= tp!77346 (and e!611340 mapRes!40369))))

(declare-fun b!1070789 () Bool)

(assert (=> b!1070789 (= e!611341 tp_is_empty!25773)))

(assert (= (and mapNonEmpty!40363 condMapEmpty!40369) mapIsEmpty!40369))

(assert (= (and mapNonEmpty!40363 (not condMapEmpty!40369)) mapNonEmpty!40369))

(assert (= (and mapNonEmpty!40369 ((_ is ValueCellFull!12183) mapValue!40369)) b!1070789))

(assert (= (and mapNonEmpty!40363 ((_ is ValueCellFull!12183) mapDefault!40369)) b!1070790))

(declare-fun m!989209 () Bool)

(assert (=> mapNonEmpty!40369 m!989209))

(declare-fun b_lambda!16697 () Bool)

(assert (= b_lambda!16693 (or (and start!94730 b_free!21963) b_lambda!16697)))

(declare-fun b_lambda!16699 () Bool)

(assert (= b_lambda!16687 (or (and start!94730 b_free!21963) b_lambda!16699)))

(declare-fun b_lambda!16701 () Bool)

(assert (= b_lambda!16695 (or (and start!94730 b_free!21963) b_lambda!16701)))

(declare-fun b_lambda!16703 () Bool)

(assert (= b_lambda!16691 (or (and start!94730 b_free!21963) b_lambda!16703)))

(declare-fun b_lambda!16705 () Bool)

(assert (= b_lambda!16689 (or (and start!94730 b_free!21963) b_lambda!16705)))

(check-sat (not b!1070702) (not b!1070655) (not b_lambda!16703) (not b!1070708) (not b!1070765) (not b!1070709) (not bm!45174) (not b!1070778) (not b!1070772) (not b!1070703) (not b!1070668) (not bm!45193) b_and!34813 (not b!1070704) (not b!1070697) (not b!1070654) (not b!1070718) (not d!129227) (not bm!45178) (not bm!45196) (not b!1070773) (not d!129231) (not b!1070667) (not b!1070695) (not b_lambda!16701) (not b!1070767) (not b!1070762) (not b!1070711) (not bm!45195) (not d!129229) (not b_lambda!16697) (not bm!45194) (not b!1070716) (not b!1070763) (not b!1070698) (not bm!45171) (not mapNonEmpty!40369) (not b!1070694) (not b!1070700) (not bm!45177) (not b!1070712) (not b_lambda!16699) (not b!1070777) (not b!1070653) (not b_lambda!16705) (not b!1070714) (not b!1070717) (not d!129233) tp_is_empty!25773 (not b_next!21963))
(check-sat b_and!34813 (not b_next!21963))
