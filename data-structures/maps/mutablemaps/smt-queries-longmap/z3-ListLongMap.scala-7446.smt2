; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94586 () Bool)

(assert start!94586)

(declare-fun b_free!21855 () Bool)

(declare-fun b_next!21855 () Bool)

(assert (=> start!94586 (= b_free!21855 (not b_next!21855))))

(declare-fun tp!77016 () Bool)

(declare-fun b_and!34675 () Bool)

(assert (=> start!94586 (= tp!77016 b_and!34675)))

(declare-fun b!1069150 () Bool)

(declare-fun e!610176 () Bool)

(declare-fun e!610178 () Bool)

(assert (=> b!1069150 (= e!610176 e!610178)))

(declare-fun res!713502 () Bool)

(assert (=> b!1069150 (=> res!713502 e!610178)))

(declare-datatypes ((V!39355 0))(
  ( (V!39356 (val!12883 Int)) )
))
(declare-datatypes ((tuple2!16444 0))(
  ( (tuple2!16445 (_1!8232 (_ BitVec 64)) (_2!8232 V!39355)) )
))
(declare-datatypes ((List!23031 0))(
  ( (Nil!23028) (Cons!23027 (h!24236 tuple2!16444) (t!32365 List!23031)) )
))
(declare-datatypes ((ListLongMap!14425 0))(
  ( (ListLongMap!14426 (toList!7228 List!23031)) )
))
(declare-fun lt!472424 () ListLongMap!14425)

(declare-fun contains!6325 (ListLongMap!14425 (_ BitVec 64)) Bool)

(assert (=> b!1069150 (= res!713502 (contains!6325 lt!472424 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39355)

(declare-datatypes ((ValueCell!12129 0))(
  ( (ValueCellFull!12129 (v!15499 V!39355)) (EmptyCell!12129) )
))
(declare-datatypes ((array!68276 0))(
  ( (array!68277 (arr!32833 (Array (_ BitVec 32) ValueCell!12129)) (size!33370 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68276)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39355)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68278 0))(
  ( (array!68279 (arr!32834 (Array (_ BitVec 32) (_ BitVec 64))) (size!33371 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68278)

(declare-fun getCurrentListMap!4114 (array!68278 array!68276 (_ BitVec 32) (_ BitVec 32) V!39355 V!39355 (_ BitVec 32) Int) ListLongMap!14425)

(assert (=> b!1069150 (= lt!472424 (getCurrentListMap!4114 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069151 () Bool)

(declare-fun res!713499 () Bool)

(declare-fun e!610177 () Bool)

(assert (=> b!1069151 (=> (not res!713499) (not e!610177))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68278 (_ BitVec 32)) Bool)

(assert (=> b!1069151 (= res!713499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1069152 () Bool)

(declare-fun e!610179 () Bool)

(declare-fun tp_is_empty!25665 () Bool)

(assert (=> b!1069152 (= e!610179 tp_is_empty!25665)))

(declare-fun b!1069153 () Bool)

(assert (=> b!1069153 (= e!610178 (bvsle #b00000000000000000000000000000000 (size!33371 _keys!1163)))))

(declare-fun -!662 (ListLongMap!14425 (_ BitVec 64)) ListLongMap!14425)

(assert (=> b!1069153 (= (-!662 lt!472424 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472424)))

(declare-datatypes ((Unit!35120 0))(
  ( (Unit!35121) )
))
(declare-fun lt!472428 () Unit!35120)

(declare-fun removeNotPresentStillSame!71 (ListLongMap!14425 (_ BitVec 64)) Unit!35120)

(assert (=> b!1069153 (= lt!472428 (removeNotPresentStillSame!71 lt!472424 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1069154 () Bool)

(declare-fun res!713501 () Bool)

(assert (=> b!1069154 (=> (not res!713501) (not e!610177))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1069154 (= res!713501 (and (= (size!33370 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33371 _keys!1163) (size!33370 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!713498 () Bool)

(assert (=> start!94586 (=> (not res!713498) (not e!610177))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94586 (= res!713498 (validMask!0 mask!1515))))

(assert (=> start!94586 e!610177))

(assert (=> start!94586 true))

(assert (=> start!94586 tp_is_empty!25665))

(declare-fun e!610175 () Bool)

(declare-fun array_inv!25252 (array!68276) Bool)

(assert (=> start!94586 (and (array_inv!25252 _values!955) e!610175)))

(assert (=> start!94586 tp!77016))

(declare-fun array_inv!25253 (array!68278) Bool)

(assert (=> start!94586 (array_inv!25253 _keys!1163)))

(declare-fun b!1069155 () Bool)

(assert (=> b!1069155 (= e!610177 (not e!610176))))

(declare-fun res!713500 () Bool)

(assert (=> b!1069155 (=> res!713500 e!610176)))

(assert (=> b!1069155 (= res!713500 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!472427 () ListLongMap!14425)

(declare-fun lt!472426 () ListLongMap!14425)

(assert (=> b!1069155 (= lt!472427 lt!472426)))

(declare-fun lt!472425 () Unit!35120)

(declare-fun zeroValueAfter!47 () V!39355)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!804 (array!68278 array!68276 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39355 V!39355 V!39355 V!39355 (_ BitVec 32) Int) Unit!35120)

(assert (=> b!1069155 (= lt!472425 (lemmaNoChangeToArrayThenSameMapNoExtras!804 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3765 (array!68278 array!68276 (_ BitVec 32) (_ BitVec 32) V!39355 V!39355 (_ BitVec 32) Int) ListLongMap!14425)

(assert (=> b!1069155 (= lt!472426 (getCurrentListMapNoExtraKeys!3765 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069155 (= lt!472427 (getCurrentListMapNoExtraKeys!3765 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069156 () Bool)

(declare-fun mapRes!40195 () Bool)

(assert (=> b!1069156 (= e!610175 (and e!610179 mapRes!40195))))

(declare-fun condMapEmpty!40195 () Bool)

(declare-fun mapDefault!40195 () ValueCell!12129)

(assert (=> b!1069156 (= condMapEmpty!40195 (= (arr!32833 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12129)) mapDefault!40195)))))

(declare-fun mapIsEmpty!40195 () Bool)

(assert (=> mapIsEmpty!40195 mapRes!40195))

(declare-fun b!1069157 () Bool)

(declare-fun res!713497 () Bool)

(assert (=> b!1069157 (=> (not res!713497) (not e!610177))))

(declare-datatypes ((List!23032 0))(
  ( (Nil!23029) (Cons!23028 (h!24237 (_ BitVec 64)) (t!32366 List!23032)) )
))
(declare-fun arrayNoDuplicates!0 (array!68278 (_ BitVec 32) List!23032) Bool)

(assert (=> b!1069157 (= res!713497 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23029))))

(declare-fun mapNonEmpty!40195 () Bool)

(declare-fun tp!77015 () Bool)

(declare-fun e!610174 () Bool)

(assert (=> mapNonEmpty!40195 (= mapRes!40195 (and tp!77015 e!610174))))

(declare-fun mapKey!40195 () (_ BitVec 32))

(declare-fun mapRest!40195 () (Array (_ BitVec 32) ValueCell!12129))

(declare-fun mapValue!40195 () ValueCell!12129)

(assert (=> mapNonEmpty!40195 (= (arr!32833 _values!955) (store mapRest!40195 mapKey!40195 mapValue!40195))))

(declare-fun b!1069158 () Bool)

(assert (=> b!1069158 (= e!610174 tp_is_empty!25665)))

(assert (= (and start!94586 res!713498) b!1069154))

(assert (= (and b!1069154 res!713501) b!1069151))

(assert (= (and b!1069151 res!713499) b!1069157))

(assert (= (and b!1069157 res!713497) b!1069155))

(assert (= (and b!1069155 (not res!713500)) b!1069150))

(assert (= (and b!1069150 (not res!713502)) b!1069153))

(assert (= (and b!1069156 condMapEmpty!40195) mapIsEmpty!40195))

(assert (= (and b!1069156 (not condMapEmpty!40195)) mapNonEmpty!40195))

(get-info :version)

(assert (= (and mapNonEmpty!40195 ((_ is ValueCellFull!12129) mapValue!40195)) b!1069158))

(assert (= (and b!1069156 ((_ is ValueCellFull!12129) mapDefault!40195)) b!1069152))

(assert (= start!94586 b!1069156))

(declare-fun m!987829 () Bool)

(assert (=> mapNonEmpty!40195 m!987829))

(declare-fun m!987831 () Bool)

(assert (=> b!1069153 m!987831))

(declare-fun m!987833 () Bool)

(assert (=> b!1069153 m!987833))

(declare-fun m!987835 () Bool)

(assert (=> b!1069150 m!987835))

(declare-fun m!987837 () Bool)

(assert (=> b!1069150 m!987837))

(declare-fun m!987839 () Bool)

(assert (=> b!1069157 m!987839))

(declare-fun m!987841 () Bool)

(assert (=> start!94586 m!987841))

(declare-fun m!987843 () Bool)

(assert (=> start!94586 m!987843))

(declare-fun m!987845 () Bool)

(assert (=> start!94586 m!987845))

(declare-fun m!987847 () Bool)

(assert (=> b!1069151 m!987847))

(declare-fun m!987849 () Bool)

(assert (=> b!1069155 m!987849))

(declare-fun m!987851 () Bool)

(assert (=> b!1069155 m!987851))

(declare-fun m!987853 () Bool)

(assert (=> b!1069155 m!987853))

(check-sat (not b_next!21855) tp_is_empty!25665 (not mapNonEmpty!40195) (not start!94586) (not b!1069150) (not b!1069157) b_and!34675 (not b!1069153) (not b!1069151) (not b!1069155))
(check-sat b_and!34675 (not b_next!21855))
(get-model)

(declare-fun d!129141 () Bool)

(declare-fun e!610207 () Bool)

(assert (=> d!129141 e!610207))

(declare-fun res!713523 () Bool)

(assert (=> d!129141 (=> res!713523 e!610207)))

(declare-fun lt!472452 () Bool)

(assert (=> d!129141 (= res!713523 (not lt!472452))))

(declare-fun lt!472454 () Bool)

(assert (=> d!129141 (= lt!472452 lt!472454)))

(declare-fun lt!472453 () Unit!35120)

(declare-fun e!610206 () Unit!35120)

(assert (=> d!129141 (= lt!472453 e!610206)))

(declare-fun c!107495 () Bool)

(assert (=> d!129141 (= c!107495 lt!472454)))

(declare-fun containsKey!576 (List!23031 (_ BitVec 64)) Bool)

(assert (=> d!129141 (= lt!472454 (containsKey!576 (toList!7228 lt!472424) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129141 (= (contains!6325 lt!472424 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472452)))

(declare-fun b!1069192 () Bool)

(declare-fun lt!472455 () Unit!35120)

(assert (=> b!1069192 (= e!610206 lt!472455)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!408 (List!23031 (_ BitVec 64)) Unit!35120)

(assert (=> b!1069192 (= lt!472455 (lemmaContainsKeyImpliesGetValueByKeyDefined!408 (toList!7228 lt!472424) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!656 0))(
  ( (Some!655 (v!15501 V!39355)) (None!654) )
))
(declare-fun isDefined!448 (Option!656) Bool)

(declare-fun getValueByKey!605 (List!23031 (_ BitVec 64)) Option!656)

(assert (=> b!1069192 (isDefined!448 (getValueByKey!605 (toList!7228 lt!472424) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1069193 () Bool)

(declare-fun Unit!35124 () Unit!35120)

(assert (=> b!1069193 (= e!610206 Unit!35124)))

(declare-fun b!1069194 () Bool)

(assert (=> b!1069194 (= e!610207 (isDefined!448 (getValueByKey!605 (toList!7228 lt!472424) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!129141 c!107495) b!1069192))

(assert (= (and d!129141 (not c!107495)) b!1069193))

(assert (= (and d!129141 (not res!713523)) b!1069194))

(declare-fun m!987881 () Bool)

(assert (=> d!129141 m!987881))

(declare-fun m!987883 () Bool)

(assert (=> b!1069192 m!987883))

(declare-fun m!987885 () Bool)

(assert (=> b!1069192 m!987885))

(assert (=> b!1069192 m!987885))

(declare-fun m!987887 () Bool)

(assert (=> b!1069192 m!987887))

(assert (=> b!1069194 m!987885))

(assert (=> b!1069194 m!987885))

(assert (=> b!1069194 m!987887))

(assert (=> b!1069150 d!129141))

(declare-fun d!129143 () Bool)

(declare-fun e!610234 () Bool)

(assert (=> d!129143 e!610234))

(declare-fun res!713549 () Bool)

(assert (=> d!129143 (=> (not res!713549) (not e!610234))))

(assert (=> d!129143 (= res!713549 (or (bvsge #b00000000000000000000000000000000 (size!33371 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33371 _keys!1163)))))))

(declare-fun lt!472508 () ListLongMap!14425)

(declare-fun lt!472502 () ListLongMap!14425)

(assert (=> d!129143 (= lt!472508 lt!472502)))

(declare-fun lt!472512 () Unit!35120)

(declare-fun e!610240 () Unit!35120)

(assert (=> d!129143 (= lt!472512 e!610240)))

(declare-fun c!107511 () Bool)

(declare-fun e!610242 () Bool)

(assert (=> d!129143 (= c!107511 e!610242)))

(declare-fun res!713544 () Bool)

(assert (=> d!129143 (=> (not res!713544) (not e!610242))))

(assert (=> d!129143 (= res!713544 (bvslt #b00000000000000000000000000000000 (size!33371 _keys!1163)))))

(declare-fun e!610246 () ListLongMap!14425)

(assert (=> d!129143 (= lt!472502 e!610246)))

(declare-fun c!107513 () Bool)

(assert (=> d!129143 (= c!107513 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129143 (validMask!0 mask!1515)))

(assert (=> d!129143 (= (getCurrentListMap!4114 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!472508)))

(declare-fun b!1069237 () Bool)

(declare-fun e!610243 () ListLongMap!14425)

(declare-fun call!45151 () ListLongMap!14425)

(assert (=> b!1069237 (= e!610243 call!45151)))

(declare-fun b!1069238 () Bool)

(declare-fun c!107509 () Bool)

(assert (=> b!1069238 (= c!107509 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!610237 () ListLongMap!14425)

(assert (=> b!1069238 (= e!610243 e!610237)))

(declare-fun bm!45142 () Bool)

(declare-fun call!45147 () Bool)

(assert (=> bm!45142 (= call!45147 (contains!6325 lt!472508 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1069239 () Bool)

(declare-fun e!610245 () Bool)

(declare-fun apply!962 (ListLongMap!14425 (_ BitVec 64)) V!39355)

(assert (=> b!1069239 (= e!610245 (= (apply!962 lt!472508 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(declare-fun b!1069240 () Bool)

(declare-fun e!610238 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1069240 (= e!610238 (validKeyInArray!0 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1069241 () Bool)

(declare-fun e!610235 () Bool)

(assert (=> b!1069241 (= e!610234 e!610235)))

(declare-fun c!107510 () Bool)

(assert (=> b!1069241 (= c!107510 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!45143 () Bool)

(declare-fun call!45150 () ListLongMap!14425)

(assert (=> bm!45143 (= call!45151 call!45150)))

(declare-fun b!1069242 () Bool)

(declare-fun e!610236 () Bool)

(assert (=> b!1069242 (= e!610236 (= (apply!962 lt!472508 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun e!610239 () Bool)

(declare-fun b!1069243 () Bool)

(declare-fun get!17118 (ValueCell!12129 V!39355) V!39355)

(declare-fun dynLambda!2038 (Int (_ BitVec 64)) V!39355)

(assert (=> b!1069243 (= e!610239 (= (apply!962 lt!472508 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000)) (get!17118 (select (arr!32833 _values!955) #b00000000000000000000000000000000) (dynLambda!2038 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1069243 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33370 _values!955)))))

(assert (=> b!1069243 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33371 _keys!1163)))))

(declare-fun b!1069244 () Bool)

(assert (=> b!1069244 (= e!610235 e!610236)))

(declare-fun res!713550 () Bool)

(declare-fun call!45148 () Bool)

(assert (=> b!1069244 (= res!713550 call!45148)))

(assert (=> b!1069244 (=> (not res!713550) (not e!610236))))

(declare-fun bm!45144 () Bool)

(assert (=> bm!45144 (= call!45148 (contains!6325 lt!472508 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1069245 () Bool)

(declare-fun Unit!35125 () Unit!35120)

(assert (=> b!1069245 (= e!610240 Unit!35125)))

(declare-fun b!1069246 () Bool)

(declare-fun lt!472517 () Unit!35120)

(assert (=> b!1069246 (= e!610240 lt!472517)))

(declare-fun lt!472521 () ListLongMap!14425)

(assert (=> b!1069246 (= lt!472521 (getCurrentListMapNoExtraKeys!3765 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!472503 () (_ BitVec 64))

(assert (=> b!1069246 (= lt!472503 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!472511 () (_ BitVec 64))

(assert (=> b!1069246 (= lt!472511 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!472501 () Unit!35120)

(declare-fun addStillContains!646 (ListLongMap!14425 (_ BitVec 64) V!39355 (_ BitVec 64)) Unit!35120)

(assert (=> b!1069246 (= lt!472501 (addStillContains!646 lt!472521 lt!472503 zeroValueBefore!47 lt!472511))))

(declare-fun +!3122 (ListLongMap!14425 tuple2!16444) ListLongMap!14425)

(assert (=> b!1069246 (contains!6325 (+!3122 lt!472521 (tuple2!16445 lt!472503 zeroValueBefore!47)) lt!472511)))

(declare-fun lt!472514 () Unit!35120)

(assert (=> b!1069246 (= lt!472514 lt!472501)))

(declare-fun lt!472518 () ListLongMap!14425)

(assert (=> b!1069246 (= lt!472518 (getCurrentListMapNoExtraKeys!3765 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!472515 () (_ BitVec 64))

(assert (=> b!1069246 (= lt!472515 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!472500 () (_ BitVec 64))

(assert (=> b!1069246 (= lt!472500 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!472513 () Unit!35120)

(declare-fun addApplyDifferent!498 (ListLongMap!14425 (_ BitVec 64) V!39355 (_ BitVec 64)) Unit!35120)

(assert (=> b!1069246 (= lt!472513 (addApplyDifferent!498 lt!472518 lt!472515 minValue!907 lt!472500))))

(assert (=> b!1069246 (= (apply!962 (+!3122 lt!472518 (tuple2!16445 lt!472515 minValue!907)) lt!472500) (apply!962 lt!472518 lt!472500))))

(declare-fun lt!472520 () Unit!35120)

(assert (=> b!1069246 (= lt!472520 lt!472513)))

(declare-fun lt!472506 () ListLongMap!14425)

(assert (=> b!1069246 (= lt!472506 (getCurrentListMapNoExtraKeys!3765 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!472504 () (_ BitVec 64))

(assert (=> b!1069246 (= lt!472504 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!472505 () (_ BitVec 64))

(assert (=> b!1069246 (= lt!472505 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!472516 () Unit!35120)

(assert (=> b!1069246 (= lt!472516 (addApplyDifferent!498 lt!472506 lt!472504 zeroValueBefore!47 lt!472505))))

(assert (=> b!1069246 (= (apply!962 (+!3122 lt!472506 (tuple2!16445 lt!472504 zeroValueBefore!47)) lt!472505) (apply!962 lt!472506 lt!472505))))

(declare-fun lt!472509 () Unit!35120)

(assert (=> b!1069246 (= lt!472509 lt!472516)))

(declare-fun lt!472519 () ListLongMap!14425)

(assert (=> b!1069246 (= lt!472519 (getCurrentListMapNoExtraKeys!3765 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!472510 () (_ BitVec 64))

(assert (=> b!1069246 (= lt!472510 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!472507 () (_ BitVec 64))

(assert (=> b!1069246 (= lt!472507 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1069246 (= lt!472517 (addApplyDifferent!498 lt!472519 lt!472510 minValue!907 lt!472507))))

(assert (=> b!1069246 (= (apply!962 (+!3122 lt!472519 (tuple2!16445 lt!472510 minValue!907)) lt!472507) (apply!962 lt!472519 lt!472507))))

(declare-fun b!1069247 () Bool)

(declare-fun call!45145 () ListLongMap!14425)

(assert (=> b!1069247 (= e!610237 call!45145)))

(declare-fun b!1069248 () Bool)

(declare-fun res!713543 () Bool)

(assert (=> b!1069248 (=> (not res!713543) (not e!610234))))

(declare-fun e!610241 () Bool)

(assert (=> b!1069248 (= res!713543 e!610241)))

(declare-fun res!713548 () Bool)

(assert (=> b!1069248 (=> res!713548 e!610241)))

(assert (=> b!1069248 (= res!713548 (not e!610238))))

(declare-fun res!713547 () Bool)

(assert (=> b!1069248 (=> (not res!713547) (not e!610238))))

(assert (=> b!1069248 (= res!713547 (bvslt #b00000000000000000000000000000000 (size!33371 _keys!1163)))))

(declare-fun b!1069249 () Bool)

(assert (=> b!1069249 (= e!610246 e!610243)))

(declare-fun c!107512 () Bool)

(assert (=> b!1069249 (= c!107512 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!45146 () ListLongMap!14425)

(declare-fun bm!45145 () Bool)

(declare-fun call!45149 () ListLongMap!14425)

(assert (=> bm!45145 (= call!45150 (+!3122 (ite c!107513 call!45149 (ite c!107512 call!45146 call!45145)) (ite (or c!107513 c!107512) (tuple2!16445 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16445 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1069250 () Bool)

(assert (=> b!1069250 (= e!610241 e!610239)))

(declare-fun res!713542 () Bool)

(assert (=> b!1069250 (=> (not res!713542) (not e!610239))))

(assert (=> b!1069250 (= res!713542 (contains!6325 lt!472508 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1069250 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33371 _keys!1163)))))

(declare-fun b!1069251 () Bool)

(assert (=> b!1069251 (= e!610246 (+!3122 call!45150 (tuple2!16445 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun b!1069252 () Bool)

(declare-fun e!610244 () Bool)

(assert (=> b!1069252 (= e!610244 e!610245)))

(declare-fun res!713546 () Bool)

(assert (=> b!1069252 (= res!713546 call!45147)))

(assert (=> b!1069252 (=> (not res!713546) (not e!610245))))

(declare-fun bm!45146 () Bool)

(assert (=> bm!45146 (= call!45149 (getCurrentListMapNoExtraKeys!3765 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069253 () Bool)

(assert (=> b!1069253 (= e!610235 (not call!45148))))

(declare-fun b!1069254 () Bool)

(declare-fun res!713545 () Bool)

(assert (=> b!1069254 (=> (not res!713545) (not e!610234))))

(assert (=> b!1069254 (= res!713545 e!610244)))

(declare-fun c!107508 () Bool)

(assert (=> b!1069254 (= c!107508 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!45147 () Bool)

(assert (=> bm!45147 (= call!45145 call!45146)))

(declare-fun b!1069255 () Bool)

(assert (=> b!1069255 (= e!610237 call!45151)))

(declare-fun b!1069256 () Bool)

(assert (=> b!1069256 (= e!610242 (validKeyInArray!0 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45148 () Bool)

(assert (=> bm!45148 (= call!45146 call!45149)))

(declare-fun b!1069257 () Bool)

(assert (=> b!1069257 (= e!610244 (not call!45147))))

(assert (= (and d!129143 c!107513) b!1069251))

(assert (= (and d!129143 (not c!107513)) b!1069249))

(assert (= (and b!1069249 c!107512) b!1069237))

(assert (= (and b!1069249 (not c!107512)) b!1069238))

(assert (= (and b!1069238 c!107509) b!1069255))

(assert (= (and b!1069238 (not c!107509)) b!1069247))

(assert (= (or b!1069255 b!1069247) bm!45147))

(assert (= (or b!1069237 bm!45147) bm!45148))

(assert (= (or b!1069237 b!1069255) bm!45143))

(assert (= (or b!1069251 bm!45148) bm!45146))

(assert (= (or b!1069251 bm!45143) bm!45145))

(assert (= (and d!129143 res!713544) b!1069256))

(assert (= (and d!129143 c!107511) b!1069246))

(assert (= (and d!129143 (not c!107511)) b!1069245))

(assert (= (and d!129143 res!713549) b!1069248))

(assert (= (and b!1069248 res!713547) b!1069240))

(assert (= (and b!1069248 (not res!713548)) b!1069250))

(assert (= (and b!1069250 res!713542) b!1069243))

(assert (= (and b!1069248 res!713543) b!1069254))

(assert (= (and b!1069254 c!107508) b!1069252))

(assert (= (and b!1069254 (not c!107508)) b!1069257))

(assert (= (and b!1069252 res!713546) b!1069239))

(assert (= (or b!1069252 b!1069257) bm!45142))

(assert (= (and b!1069254 res!713545) b!1069241))

(assert (= (and b!1069241 c!107510) b!1069244))

(assert (= (and b!1069241 (not c!107510)) b!1069253))

(assert (= (and b!1069244 res!713550) b!1069242))

(assert (= (or b!1069244 b!1069253) bm!45144))

(declare-fun b_lambda!16651 () Bool)

(assert (=> (not b_lambda!16651) (not b!1069243)))

(declare-fun t!32370 () Bool)

(declare-fun tb!7157 () Bool)

(assert (=> (and start!94586 (= defaultEntry!963 defaultEntry!963) t!32370) tb!7157))

(declare-fun result!14763 () Bool)

(assert (=> tb!7157 (= result!14763 tp_is_empty!25665)))

(assert (=> b!1069243 t!32370))

(declare-fun b_and!34679 () Bool)

(assert (= b_and!34675 (and (=> t!32370 result!14763) b_and!34679)))

(declare-fun m!987889 () Bool)

(assert (=> b!1069246 m!987889))

(declare-fun m!987891 () Bool)

(assert (=> b!1069246 m!987891))

(declare-fun m!987893 () Bool)

(assert (=> b!1069246 m!987893))

(declare-fun m!987895 () Bool)

(assert (=> b!1069246 m!987895))

(declare-fun m!987897 () Bool)

(assert (=> b!1069246 m!987897))

(declare-fun m!987899 () Bool)

(assert (=> b!1069246 m!987899))

(declare-fun m!987901 () Bool)

(assert (=> b!1069246 m!987901))

(assert (=> b!1069246 m!987853))

(declare-fun m!987903 () Bool)

(assert (=> b!1069246 m!987903))

(declare-fun m!987905 () Bool)

(assert (=> b!1069246 m!987905))

(declare-fun m!987907 () Bool)

(assert (=> b!1069246 m!987907))

(assert (=> b!1069246 m!987891))

(declare-fun m!987909 () Bool)

(assert (=> b!1069246 m!987909))

(assert (=> b!1069246 m!987901))

(declare-fun m!987911 () Bool)

(assert (=> b!1069246 m!987911))

(declare-fun m!987913 () Bool)

(assert (=> b!1069246 m!987913))

(declare-fun m!987915 () Bool)

(assert (=> b!1069246 m!987915))

(assert (=> b!1069246 m!987895))

(declare-fun m!987917 () Bool)

(assert (=> b!1069246 m!987917))

(declare-fun m!987919 () Bool)

(assert (=> b!1069246 m!987919))

(assert (=> b!1069246 m!987917))

(assert (=> b!1069243 m!987899))

(declare-fun m!987921 () Bool)

(assert (=> b!1069243 m!987921))

(assert (=> b!1069243 m!987921))

(declare-fun m!987923 () Bool)

(assert (=> b!1069243 m!987923))

(declare-fun m!987925 () Bool)

(assert (=> b!1069243 m!987925))

(assert (=> b!1069243 m!987923))

(assert (=> b!1069243 m!987899))

(declare-fun m!987927 () Bool)

(assert (=> b!1069243 m!987927))

(declare-fun m!987929 () Bool)

(assert (=> b!1069242 m!987929))

(assert (=> bm!45146 m!987853))

(declare-fun m!987931 () Bool)

(assert (=> bm!45144 m!987931))

(declare-fun m!987933 () Bool)

(assert (=> bm!45142 m!987933))

(assert (=> b!1069250 m!987899))

(assert (=> b!1069250 m!987899))

(declare-fun m!987935 () Bool)

(assert (=> b!1069250 m!987935))

(assert (=> b!1069240 m!987899))

(assert (=> b!1069240 m!987899))

(declare-fun m!987937 () Bool)

(assert (=> b!1069240 m!987937))

(declare-fun m!987939 () Bool)

(assert (=> bm!45145 m!987939))

(declare-fun m!987941 () Bool)

(assert (=> b!1069251 m!987941))

(declare-fun m!987943 () Bool)

(assert (=> b!1069239 m!987943))

(assert (=> b!1069256 m!987899))

(assert (=> b!1069256 m!987899))

(assert (=> b!1069256 m!987937))

(assert (=> d!129143 m!987841))

(assert (=> b!1069150 d!129143))

(declare-fun d!129145 () Bool)

(assert (=> d!129145 (= (getCurrentListMapNoExtraKeys!3765 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3765 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!472524 () Unit!35120)

(declare-fun choose!1743 (array!68278 array!68276 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39355 V!39355 V!39355 V!39355 (_ BitVec 32) Int) Unit!35120)

(assert (=> d!129145 (= lt!472524 (choose!1743 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!129145 (validMask!0 mask!1515)))

(assert (=> d!129145 (= (lemmaNoChangeToArrayThenSameMapNoExtras!804 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!472524)))

(declare-fun bs!31479 () Bool)

(assert (= bs!31479 d!129145))

(assert (=> bs!31479 m!987853))

(assert (=> bs!31479 m!987851))

(declare-fun m!987945 () Bool)

(assert (=> bs!31479 m!987945))

(assert (=> bs!31479 m!987841))

(assert (=> b!1069155 d!129145))

(declare-fun b!1069284 () Bool)

(declare-fun e!610267 () Bool)

(declare-fun e!610261 () Bool)

(assert (=> b!1069284 (= e!610267 e!610261)))

(declare-fun c!107524 () Bool)

(declare-fun e!610266 () Bool)

(assert (=> b!1069284 (= c!107524 e!610266)))

(declare-fun res!713562 () Bool)

(assert (=> b!1069284 (=> (not res!713562) (not e!610266))))

(assert (=> b!1069284 (= res!713562 (bvslt #b00000000000000000000000000000000 (size!33371 _keys!1163)))))

(declare-fun b!1069285 () Bool)

(declare-fun e!610262 () Bool)

(declare-fun lt!472544 () ListLongMap!14425)

(declare-fun isEmpty!948 (ListLongMap!14425) Bool)

(assert (=> b!1069285 (= e!610262 (isEmpty!948 lt!472544))))

(declare-fun b!1069286 () Bool)

(declare-fun e!610265 () ListLongMap!14425)

(assert (=> b!1069286 (= e!610265 (ListLongMap!14426 Nil!23028))))

(declare-fun b!1069287 () Bool)

(declare-fun res!713560 () Bool)

(assert (=> b!1069287 (=> (not res!713560) (not e!610267))))

(assert (=> b!1069287 (= res!713560 (not (contains!6325 lt!472544 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1069288 () Bool)

(assert (=> b!1069288 (= e!610261 e!610262)))

(declare-fun c!107525 () Bool)

(assert (=> b!1069288 (= c!107525 (bvslt #b00000000000000000000000000000000 (size!33371 _keys!1163)))))

(declare-fun b!1069289 () Bool)

(declare-fun e!610264 () Bool)

(assert (=> b!1069289 (= e!610261 e!610264)))

(assert (=> b!1069289 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33371 _keys!1163)))))

(declare-fun res!713559 () Bool)

(assert (=> b!1069289 (= res!713559 (contains!6325 lt!472544 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1069289 (=> (not res!713559) (not e!610264))))

(declare-fun d!129147 () Bool)

(assert (=> d!129147 e!610267))

(declare-fun res!713561 () Bool)

(assert (=> d!129147 (=> (not res!713561) (not e!610267))))

(assert (=> d!129147 (= res!713561 (not (contains!6325 lt!472544 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129147 (= lt!472544 e!610265)))

(declare-fun c!107522 () Bool)

(assert (=> d!129147 (= c!107522 (bvsge #b00000000000000000000000000000000 (size!33371 _keys!1163)))))

(assert (=> d!129147 (validMask!0 mask!1515)))

(assert (=> d!129147 (= (getCurrentListMapNoExtraKeys!3765 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!472544)))

(declare-fun b!1069290 () Bool)

(declare-fun e!610263 () ListLongMap!14425)

(declare-fun call!45154 () ListLongMap!14425)

(assert (=> b!1069290 (= e!610263 call!45154)))

(declare-fun bm!45151 () Bool)

(assert (=> bm!45151 (= call!45154 (getCurrentListMapNoExtraKeys!3765 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1069291 () Bool)

(assert (=> b!1069291 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33371 _keys!1163)))))

(assert (=> b!1069291 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33370 _values!955)))))

(assert (=> b!1069291 (= e!610264 (= (apply!962 lt!472544 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000)) (get!17118 (select (arr!32833 _values!955) #b00000000000000000000000000000000) (dynLambda!2038 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1069292 () Bool)

(assert (=> b!1069292 (= e!610262 (= lt!472544 (getCurrentListMapNoExtraKeys!3765 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1069293 () Bool)

(assert (=> b!1069293 (= e!610265 e!610263)))

(declare-fun c!107523 () Bool)

(assert (=> b!1069293 (= c!107523 (validKeyInArray!0 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1069294 () Bool)

(declare-fun lt!472545 () Unit!35120)

(declare-fun lt!472541 () Unit!35120)

(assert (=> b!1069294 (= lt!472545 lt!472541)))

(declare-fun lt!472540 () (_ BitVec 64))

(declare-fun lt!472543 () ListLongMap!14425)

(declare-fun lt!472542 () V!39355)

(declare-fun lt!472539 () (_ BitVec 64))

(assert (=> b!1069294 (not (contains!6325 (+!3122 lt!472543 (tuple2!16445 lt!472539 lt!472542)) lt!472540))))

(declare-fun addStillNotContains!257 (ListLongMap!14425 (_ BitVec 64) V!39355 (_ BitVec 64)) Unit!35120)

(assert (=> b!1069294 (= lt!472541 (addStillNotContains!257 lt!472543 lt!472539 lt!472542 lt!472540))))

(assert (=> b!1069294 (= lt!472540 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1069294 (= lt!472542 (get!17118 (select (arr!32833 _values!955) #b00000000000000000000000000000000) (dynLambda!2038 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1069294 (= lt!472539 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1069294 (= lt!472543 call!45154)))

(assert (=> b!1069294 (= e!610263 (+!3122 call!45154 (tuple2!16445 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000) (get!17118 (select (arr!32833 _values!955) #b00000000000000000000000000000000) (dynLambda!2038 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1069295 () Bool)

(assert (=> b!1069295 (= e!610266 (validKeyInArray!0 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1069295 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!129147 c!107522) b!1069286))

(assert (= (and d!129147 (not c!107522)) b!1069293))

(assert (= (and b!1069293 c!107523) b!1069294))

(assert (= (and b!1069293 (not c!107523)) b!1069290))

(assert (= (or b!1069294 b!1069290) bm!45151))

(assert (= (and d!129147 res!713561) b!1069287))

(assert (= (and b!1069287 res!713560) b!1069284))

(assert (= (and b!1069284 res!713562) b!1069295))

(assert (= (and b!1069284 c!107524) b!1069289))

(assert (= (and b!1069284 (not c!107524)) b!1069288))

(assert (= (and b!1069289 res!713559) b!1069291))

(assert (= (and b!1069288 c!107525) b!1069292))

(assert (= (and b!1069288 (not c!107525)) b!1069285))

(declare-fun b_lambda!16653 () Bool)

(assert (=> (not b_lambda!16653) (not b!1069291)))

(assert (=> b!1069291 t!32370))

(declare-fun b_and!34681 () Bool)

(assert (= b_and!34679 (and (=> t!32370 result!14763) b_and!34681)))

(declare-fun b_lambda!16655 () Bool)

(assert (=> (not b_lambda!16655) (not b!1069294)))

(assert (=> b!1069294 t!32370))

(declare-fun b_and!34683 () Bool)

(assert (= b_and!34681 (and (=> t!32370 result!14763) b_and!34683)))

(assert (=> b!1069293 m!987899))

(assert (=> b!1069293 m!987899))

(assert (=> b!1069293 m!987937))

(declare-fun m!987947 () Bool)

(assert (=> b!1069287 m!987947))

(declare-fun m!987949 () Bool)

(assert (=> b!1069285 m!987949))

(assert (=> b!1069291 m!987899))

(assert (=> b!1069291 m!987921))

(assert (=> b!1069291 m!987923))

(assert (=> b!1069291 m!987925))

(assert (=> b!1069291 m!987921))

(assert (=> b!1069291 m!987899))

(declare-fun m!987951 () Bool)

(assert (=> b!1069291 m!987951))

(assert (=> b!1069291 m!987923))

(declare-fun m!987953 () Bool)

(assert (=> bm!45151 m!987953))

(declare-fun m!987955 () Bool)

(assert (=> d!129147 m!987955))

(assert (=> d!129147 m!987841))

(assert (=> b!1069289 m!987899))

(assert (=> b!1069289 m!987899))

(declare-fun m!987957 () Bool)

(assert (=> b!1069289 m!987957))

(assert (=> b!1069294 m!987899))

(assert (=> b!1069294 m!987921))

(assert (=> b!1069294 m!987923))

(assert (=> b!1069294 m!987925))

(assert (=> b!1069294 m!987921))

(declare-fun m!987959 () Bool)

(assert (=> b!1069294 m!987959))

(declare-fun m!987961 () Bool)

(assert (=> b!1069294 m!987961))

(declare-fun m!987963 () Bool)

(assert (=> b!1069294 m!987963))

(assert (=> b!1069294 m!987959))

(declare-fun m!987965 () Bool)

(assert (=> b!1069294 m!987965))

(assert (=> b!1069294 m!987923))

(assert (=> b!1069292 m!987953))

(assert (=> b!1069295 m!987899))

(assert (=> b!1069295 m!987899))

(assert (=> b!1069295 m!987937))

(assert (=> b!1069155 d!129147))

(declare-fun b!1069296 () Bool)

(declare-fun e!610274 () Bool)

(declare-fun e!610268 () Bool)

(assert (=> b!1069296 (= e!610274 e!610268)))

(declare-fun c!107528 () Bool)

(declare-fun e!610273 () Bool)

(assert (=> b!1069296 (= c!107528 e!610273)))

(declare-fun res!713566 () Bool)

(assert (=> b!1069296 (=> (not res!713566) (not e!610273))))

(assert (=> b!1069296 (= res!713566 (bvslt #b00000000000000000000000000000000 (size!33371 _keys!1163)))))

(declare-fun b!1069297 () Bool)

(declare-fun e!610269 () Bool)

(declare-fun lt!472551 () ListLongMap!14425)

(assert (=> b!1069297 (= e!610269 (isEmpty!948 lt!472551))))

(declare-fun b!1069298 () Bool)

(declare-fun e!610272 () ListLongMap!14425)

(assert (=> b!1069298 (= e!610272 (ListLongMap!14426 Nil!23028))))

(declare-fun b!1069299 () Bool)

(declare-fun res!713564 () Bool)

(assert (=> b!1069299 (=> (not res!713564) (not e!610274))))

(assert (=> b!1069299 (= res!713564 (not (contains!6325 lt!472551 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1069300 () Bool)

(assert (=> b!1069300 (= e!610268 e!610269)))

(declare-fun c!107529 () Bool)

(assert (=> b!1069300 (= c!107529 (bvslt #b00000000000000000000000000000000 (size!33371 _keys!1163)))))

(declare-fun b!1069301 () Bool)

(declare-fun e!610271 () Bool)

(assert (=> b!1069301 (= e!610268 e!610271)))

(assert (=> b!1069301 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33371 _keys!1163)))))

(declare-fun res!713563 () Bool)

(assert (=> b!1069301 (= res!713563 (contains!6325 lt!472551 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1069301 (=> (not res!713563) (not e!610271))))

(declare-fun d!129149 () Bool)

(assert (=> d!129149 e!610274))

(declare-fun res!713565 () Bool)

(assert (=> d!129149 (=> (not res!713565) (not e!610274))))

(assert (=> d!129149 (= res!713565 (not (contains!6325 lt!472551 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129149 (= lt!472551 e!610272)))

(declare-fun c!107526 () Bool)

(assert (=> d!129149 (= c!107526 (bvsge #b00000000000000000000000000000000 (size!33371 _keys!1163)))))

(assert (=> d!129149 (validMask!0 mask!1515)))

(assert (=> d!129149 (= (getCurrentListMapNoExtraKeys!3765 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!472551)))

(declare-fun b!1069302 () Bool)

(declare-fun e!610270 () ListLongMap!14425)

(declare-fun call!45155 () ListLongMap!14425)

(assert (=> b!1069302 (= e!610270 call!45155)))

(declare-fun bm!45152 () Bool)

(assert (=> bm!45152 (= call!45155 (getCurrentListMapNoExtraKeys!3765 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1069303 () Bool)

(assert (=> b!1069303 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33371 _keys!1163)))))

(assert (=> b!1069303 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33370 _values!955)))))

(assert (=> b!1069303 (= e!610271 (= (apply!962 lt!472551 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000)) (get!17118 (select (arr!32833 _values!955) #b00000000000000000000000000000000) (dynLambda!2038 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1069304 () Bool)

(assert (=> b!1069304 (= e!610269 (= lt!472551 (getCurrentListMapNoExtraKeys!3765 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1069305 () Bool)

(assert (=> b!1069305 (= e!610272 e!610270)))

(declare-fun c!107527 () Bool)

(assert (=> b!1069305 (= c!107527 (validKeyInArray!0 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1069306 () Bool)

(declare-fun lt!472552 () Unit!35120)

(declare-fun lt!472548 () Unit!35120)

(assert (=> b!1069306 (= lt!472552 lt!472548)))

(declare-fun lt!472546 () (_ BitVec 64))

(declare-fun lt!472549 () V!39355)

(declare-fun lt!472547 () (_ BitVec 64))

(declare-fun lt!472550 () ListLongMap!14425)

(assert (=> b!1069306 (not (contains!6325 (+!3122 lt!472550 (tuple2!16445 lt!472546 lt!472549)) lt!472547))))

(assert (=> b!1069306 (= lt!472548 (addStillNotContains!257 lt!472550 lt!472546 lt!472549 lt!472547))))

(assert (=> b!1069306 (= lt!472547 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1069306 (= lt!472549 (get!17118 (select (arr!32833 _values!955) #b00000000000000000000000000000000) (dynLambda!2038 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1069306 (= lt!472546 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1069306 (= lt!472550 call!45155)))

(assert (=> b!1069306 (= e!610270 (+!3122 call!45155 (tuple2!16445 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000) (get!17118 (select (arr!32833 _values!955) #b00000000000000000000000000000000) (dynLambda!2038 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1069307 () Bool)

(assert (=> b!1069307 (= e!610273 (validKeyInArray!0 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1069307 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!129149 c!107526) b!1069298))

(assert (= (and d!129149 (not c!107526)) b!1069305))

(assert (= (and b!1069305 c!107527) b!1069306))

(assert (= (and b!1069305 (not c!107527)) b!1069302))

(assert (= (or b!1069306 b!1069302) bm!45152))

(assert (= (and d!129149 res!713565) b!1069299))

(assert (= (and b!1069299 res!713564) b!1069296))

(assert (= (and b!1069296 res!713566) b!1069307))

(assert (= (and b!1069296 c!107528) b!1069301))

(assert (= (and b!1069296 (not c!107528)) b!1069300))

(assert (= (and b!1069301 res!713563) b!1069303))

(assert (= (and b!1069300 c!107529) b!1069304))

(assert (= (and b!1069300 (not c!107529)) b!1069297))

(declare-fun b_lambda!16657 () Bool)

(assert (=> (not b_lambda!16657) (not b!1069303)))

(assert (=> b!1069303 t!32370))

(declare-fun b_and!34685 () Bool)

(assert (= b_and!34683 (and (=> t!32370 result!14763) b_and!34685)))

(declare-fun b_lambda!16659 () Bool)

(assert (=> (not b_lambda!16659) (not b!1069306)))

(assert (=> b!1069306 t!32370))

(declare-fun b_and!34687 () Bool)

(assert (= b_and!34685 (and (=> t!32370 result!14763) b_and!34687)))

(assert (=> b!1069305 m!987899))

(assert (=> b!1069305 m!987899))

(assert (=> b!1069305 m!987937))

(declare-fun m!987967 () Bool)

(assert (=> b!1069299 m!987967))

(declare-fun m!987969 () Bool)

(assert (=> b!1069297 m!987969))

(assert (=> b!1069303 m!987899))

(assert (=> b!1069303 m!987921))

(assert (=> b!1069303 m!987923))

(assert (=> b!1069303 m!987925))

(assert (=> b!1069303 m!987921))

(assert (=> b!1069303 m!987899))

(declare-fun m!987971 () Bool)

(assert (=> b!1069303 m!987971))

(assert (=> b!1069303 m!987923))

(declare-fun m!987973 () Bool)

(assert (=> bm!45152 m!987973))

(declare-fun m!987975 () Bool)

(assert (=> d!129149 m!987975))

(assert (=> d!129149 m!987841))

(assert (=> b!1069301 m!987899))

(assert (=> b!1069301 m!987899))

(declare-fun m!987977 () Bool)

(assert (=> b!1069301 m!987977))

(assert (=> b!1069306 m!987899))

(assert (=> b!1069306 m!987921))

(assert (=> b!1069306 m!987923))

(assert (=> b!1069306 m!987925))

(assert (=> b!1069306 m!987921))

(declare-fun m!987979 () Bool)

(assert (=> b!1069306 m!987979))

(declare-fun m!987981 () Bool)

(assert (=> b!1069306 m!987981))

(declare-fun m!987983 () Bool)

(assert (=> b!1069306 m!987983))

(assert (=> b!1069306 m!987979))

(declare-fun m!987985 () Bool)

(assert (=> b!1069306 m!987985))

(assert (=> b!1069306 m!987923))

(assert (=> b!1069304 m!987973))

(assert (=> b!1069307 m!987899))

(assert (=> b!1069307 m!987899))

(assert (=> b!1069307 m!987937))

(assert (=> b!1069155 d!129149))

(declare-fun b!1069316 () Bool)

(declare-fun e!610282 () Bool)

(declare-fun call!45158 () Bool)

(assert (=> b!1069316 (= e!610282 call!45158)))

(declare-fun b!1069317 () Bool)

(declare-fun e!610283 () Bool)

(assert (=> b!1069317 (= e!610283 call!45158)))

(declare-fun d!129151 () Bool)

(declare-fun res!713571 () Bool)

(declare-fun e!610281 () Bool)

(assert (=> d!129151 (=> res!713571 e!610281)))

(assert (=> d!129151 (= res!713571 (bvsge #b00000000000000000000000000000000 (size!33371 _keys!1163)))))

(assert (=> d!129151 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!610281)))

(declare-fun b!1069318 () Bool)

(assert (=> b!1069318 (= e!610281 e!610282)))

(declare-fun c!107532 () Bool)

(assert (=> b!1069318 (= c!107532 (validKeyInArray!0 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1069319 () Bool)

(assert (=> b!1069319 (= e!610282 e!610283)))

(declare-fun lt!472561 () (_ BitVec 64))

(assert (=> b!1069319 (= lt!472561 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!472559 () Unit!35120)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!68278 (_ BitVec 64) (_ BitVec 32)) Unit!35120)

(assert (=> b!1069319 (= lt!472559 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!472561 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!68278 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1069319 (arrayContainsKey!0 _keys!1163 lt!472561 #b00000000000000000000000000000000)))

(declare-fun lt!472560 () Unit!35120)

(assert (=> b!1069319 (= lt!472560 lt!472559)))

(declare-fun res!713572 () Bool)

(declare-datatypes ((SeekEntryResult!9877 0))(
  ( (MissingZero!9877 (index!41878 (_ BitVec 32))) (Found!9877 (index!41879 (_ BitVec 32))) (Intermediate!9877 (undefined!10689 Bool) (index!41880 (_ BitVec 32)) (x!95758 (_ BitVec 32))) (Undefined!9877) (MissingVacant!9877 (index!41881 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!68278 (_ BitVec 32)) SeekEntryResult!9877)

(assert (=> b!1069319 (= res!713572 (= (seekEntryOrOpen!0 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9877 #b00000000000000000000000000000000)))))

(assert (=> b!1069319 (=> (not res!713572) (not e!610283))))

(declare-fun bm!45155 () Bool)

(assert (=> bm!45155 (= call!45158 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(assert (= (and d!129151 (not res!713571)) b!1069318))

(assert (= (and b!1069318 c!107532) b!1069319))

(assert (= (and b!1069318 (not c!107532)) b!1069316))

(assert (= (and b!1069319 res!713572) b!1069317))

(assert (= (or b!1069317 b!1069316) bm!45155))

(assert (=> b!1069318 m!987899))

(assert (=> b!1069318 m!987899))

(assert (=> b!1069318 m!987937))

(assert (=> b!1069319 m!987899))

(declare-fun m!987987 () Bool)

(assert (=> b!1069319 m!987987))

(declare-fun m!987989 () Bool)

(assert (=> b!1069319 m!987989))

(assert (=> b!1069319 m!987899))

(declare-fun m!987991 () Bool)

(assert (=> b!1069319 m!987991))

(declare-fun m!987993 () Bool)

(assert (=> bm!45155 m!987993))

(assert (=> b!1069151 d!129151))

(declare-fun b!1069330 () Bool)

(declare-fun e!610294 () Bool)

(declare-fun contains!6327 (List!23032 (_ BitVec 64)) Bool)

(assert (=> b!1069330 (= e!610294 (contains!6327 Nil!23029 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!129153 () Bool)

(declare-fun res!713581 () Bool)

(declare-fun e!610293 () Bool)

(assert (=> d!129153 (=> res!713581 e!610293)))

(assert (=> d!129153 (= res!713581 (bvsge #b00000000000000000000000000000000 (size!33371 _keys!1163)))))

(assert (=> d!129153 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23029) e!610293)))

(declare-fun b!1069331 () Bool)

(declare-fun e!610295 () Bool)

(declare-fun e!610292 () Bool)

(assert (=> b!1069331 (= e!610295 e!610292)))

(declare-fun c!107535 () Bool)

(assert (=> b!1069331 (= c!107535 (validKeyInArray!0 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1069332 () Bool)

(assert (=> b!1069332 (= e!610293 e!610295)))

(declare-fun res!713579 () Bool)

(assert (=> b!1069332 (=> (not res!713579) (not e!610295))))

(assert (=> b!1069332 (= res!713579 (not e!610294))))

(declare-fun res!713580 () Bool)

(assert (=> b!1069332 (=> (not res!713580) (not e!610294))))

(assert (=> b!1069332 (= res!713580 (validKeyInArray!0 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1069333 () Bool)

(declare-fun call!45161 () Bool)

(assert (=> b!1069333 (= e!610292 call!45161)))

(declare-fun b!1069334 () Bool)

(assert (=> b!1069334 (= e!610292 call!45161)))

(declare-fun bm!45158 () Bool)

(assert (=> bm!45158 (= call!45161 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107535 (Cons!23028 (select (arr!32834 _keys!1163) #b00000000000000000000000000000000) Nil!23029) Nil!23029)))))

(assert (= (and d!129153 (not res!713581)) b!1069332))

(assert (= (and b!1069332 res!713580) b!1069330))

(assert (= (and b!1069332 res!713579) b!1069331))

(assert (= (and b!1069331 c!107535) b!1069333))

(assert (= (and b!1069331 (not c!107535)) b!1069334))

(assert (= (or b!1069333 b!1069334) bm!45158))

(assert (=> b!1069330 m!987899))

(assert (=> b!1069330 m!987899))

(declare-fun m!987995 () Bool)

(assert (=> b!1069330 m!987995))

(assert (=> b!1069331 m!987899))

(assert (=> b!1069331 m!987899))

(assert (=> b!1069331 m!987937))

(assert (=> b!1069332 m!987899))

(assert (=> b!1069332 m!987899))

(assert (=> b!1069332 m!987937))

(assert (=> bm!45158 m!987899))

(declare-fun m!987997 () Bool)

(assert (=> bm!45158 m!987997))

(assert (=> b!1069157 d!129153))

(declare-fun d!129155 () Bool)

(assert (=> d!129155 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!94586 d!129155))

(declare-fun d!129157 () Bool)

(assert (=> d!129157 (= (array_inv!25252 _values!955) (bvsge (size!33370 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!94586 d!129157))

(declare-fun d!129159 () Bool)

(assert (=> d!129159 (= (array_inv!25253 _keys!1163) (bvsge (size!33371 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!94586 d!129159))

(declare-fun d!129161 () Bool)

(declare-fun lt!472564 () ListLongMap!14425)

(assert (=> d!129161 (not (contains!6325 lt!472564 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!73 (List!23031 (_ BitVec 64)) List!23031)

(assert (=> d!129161 (= lt!472564 (ListLongMap!14426 (removeStrictlySorted!73 (toList!7228 lt!472424) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129161 (= (-!662 lt!472424 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472564)))

(declare-fun bs!31480 () Bool)

(assert (= bs!31480 d!129161))

(declare-fun m!987999 () Bool)

(assert (=> bs!31480 m!987999))

(declare-fun m!988001 () Bool)

(assert (=> bs!31480 m!988001))

(assert (=> b!1069153 d!129161))

(declare-fun d!129163 () Bool)

(assert (=> d!129163 (= (-!662 lt!472424 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472424)))

(declare-fun lt!472567 () Unit!35120)

(declare-fun choose!1744 (ListLongMap!14425 (_ BitVec 64)) Unit!35120)

(assert (=> d!129163 (= lt!472567 (choose!1744 lt!472424 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129163 (not (contains!6325 lt!472424 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129163 (= (removeNotPresentStillSame!71 lt!472424 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472567)))

(declare-fun bs!31481 () Bool)

(assert (= bs!31481 d!129163))

(assert (=> bs!31481 m!987831))

(declare-fun m!988003 () Bool)

(assert (=> bs!31481 m!988003))

(assert (=> bs!31481 m!987835))

(assert (=> b!1069153 d!129163))

(declare-fun mapIsEmpty!40201 () Bool)

(declare-fun mapRes!40201 () Bool)

(assert (=> mapIsEmpty!40201 mapRes!40201))

(declare-fun mapNonEmpty!40201 () Bool)

(declare-fun tp!77025 () Bool)

(declare-fun e!610300 () Bool)

(assert (=> mapNonEmpty!40201 (= mapRes!40201 (and tp!77025 e!610300))))

(declare-fun mapRest!40201 () (Array (_ BitVec 32) ValueCell!12129))

(declare-fun mapValue!40201 () ValueCell!12129)

(declare-fun mapKey!40201 () (_ BitVec 32))

(assert (=> mapNonEmpty!40201 (= mapRest!40195 (store mapRest!40201 mapKey!40201 mapValue!40201))))

(declare-fun b!1069342 () Bool)

(declare-fun e!610301 () Bool)

(assert (=> b!1069342 (= e!610301 tp_is_empty!25665)))

(declare-fun condMapEmpty!40201 () Bool)

(declare-fun mapDefault!40201 () ValueCell!12129)

(assert (=> mapNonEmpty!40195 (= condMapEmpty!40201 (= mapRest!40195 ((as const (Array (_ BitVec 32) ValueCell!12129)) mapDefault!40201)))))

(assert (=> mapNonEmpty!40195 (= tp!77015 (and e!610301 mapRes!40201))))

(declare-fun b!1069341 () Bool)

(assert (=> b!1069341 (= e!610300 tp_is_empty!25665)))

(assert (= (and mapNonEmpty!40195 condMapEmpty!40201) mapIsEmpty!40201))

(assert (= (and mapNonEmpty!40195 (not condMapEmpty!40201)) mapNonEmpty!40201))

(assert (= (and mapNonEmpty!40201 ((_ is ValueCellFull!12129) mapValue!40201)) b!1069341))

(assert (= (and mapNonEmpty!40195 ((_ is ValueCellFull!12129) mapDefault!40201)) b!1069342))

(declare-fun m!988005 () Bool)

(assert (=> mapNonEmpty!40201 m!988005))

(declare-fun b_lambda!16661 () Bool)

(assert (= b_lambda!16657 (or (and start!94586 b_free!21855) b_lambda!16661)))

(declare-fun b_lambda!16663 () Bool)

(assert (= b_lambda!16651 (or (and start!94586 b_free!21855) b_lambda!16663)))

(declare-fun b_lambda!16665 () Bool)

(assert (= b_lambda!16655 (or (and start!94586 b_free!21855) b_lambda!16665)))

(declare-fun b_lambda!16667 () Bool)

(assert (= b_lambda!16653 (or (and start!94586 b_free!21855) b_lambda!16667)))

(declare-fun b_lambda!16669 () Bool)

(assert (= b_lambda!16659 (or (and start!94586 b_free!21855) b_lambda!16669)))

(check-sat (not d!129141) (not b!1069294) (not b!1069305) (not bm!45144) (not b!1069251) (not b!1069194) (not b!1069299) (not bm!45146) (not b!1069250) (not b_next!21855) (not b!1069287) (not mapNonEmpty!40201) (not b!1069306) tp_is_empty!25665 (not b!1069307) (not d!129161) (not b!1069304) (not b!1069293) (not b!1069332) (not b!1069318) (not b!1069319) (not b!1069246) (not b!1069243) (not b_lambda!16667) (not d!129163) (not b!1069292) (not b!1069239) (not bm!45151) (not b!1069297) b_and!34687 (not b!1069330) (not b_lambda!16665) (not d!129143) (not d!129147) (not b!1069285) (not bm!45142) (not bm!45152) (not b!1069301) (not b!1069331) (not b!1069192) (not b!1069242) (not b!1069303) (not d!129145) (not bm!45155) (not b_lambda!16663) (not b!1069295) (not bm!45158) (not bm!45145) (not d!129149) (not b!1069240) (not b_lambda!16661) (not b!1069256) (not b!1069291) (not b!1069289) (not b_lambda!16669))
(check-sat b_and!34687 (not b_next!21855))
