; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95142 () Bool)

(assert start!95142)

(declare-fun b_free!22203 () Bool)

(declare-fun b_next!22203 () Bool)

(assert (=> start!95142 (= b_free!22203 (not b_next!22203))))

(declare-fun tp!78093 () Bool)

(declare-fun b_and!35141 () Bool)

(assert (=> start!95142 (= tp!78093 b_and!35141)))

(declare-fun b!1075085 () Bool)

(declare-fun res!716855 () Bool)

(declare-fun e!614441 () Bool)

(assert (=> b!1075085 (=> (not res!716855) (not e!614441))))

(declare-datatypes ((array!68954 0))(
  ( (array!68955 (arr!33161 (Array (_ BitVec 32) (_ BitVec 64))) (size!33698 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68954)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68954 (_ BitVec 32)) Bool)

(assert (=> b!1075085 (= res!716855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1075086 () Bool)

(declare-fun res!716852 () Bool)

(assert (=> b!1075086 (=> (not res!716852) (not e!614441))))

(declare-datatypes ((V!39819 0))(
  ( (V!39820 (val!13057 Int)) )
))
(declare-datatypes ((ValueCell!12303 0))(
  ( (ValueCellFull!12303 (v!15681 V!39819)) (EmptyCell!12303) )
))
(declare-datatypes ((array!68956 0))(
  ( (array!68957 (arr!33162 (Array (_ BitVec 32) ValueCell!12303)) (size!33699 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68956)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1075086 (= res!716852 (and (= (size!33699 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33698 _keys!1163) (size!33699 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun zeroValueBefore!47 () V!39819)

(declare-fun e!614439 () Bool)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39819)

(declare-fun b!1075088 () Bool)

(declare-datatypes ((tuple2!16700 0))(
  ( (tuple2!16701 (_1!8360 (_ BitVec 64)) (_2!8360 V!39819)) )
))
(declare-datatypes ((List!23274 0))(
  ( (Nil!23271) (Cons!23270 (h!24479 tuple2!16700) (t!32630 List!23274)) )
))
(declare-datatypes ((ListLongMap!14681 0))(
  ( (ListLongMap!14682 (toList!7356 List!23274)) )
))
(declare-fun contains!6358 (ListLongMap!14681 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4193 (array!68954 array!68956 (_ BitVec 32) (_ BitVec 32) V!39819 V!39819 (_ BitVec 32) Int) ListLongMap!14681)

(assert (=> b!1075088 (= e!614439 (not (contains!6358 (getCurrentListMap!4193 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1075089 () Bool)

(declare-fun e!614436 () Bool)

(declare-fun tp_is_empty!26013 () Bool)

(assert (=> b!1075089 (= e!614436 tp_is_empty!26013)))

(declare-fun b!1075090 () Bool)

(assert (=> b!1075090 (= e!614441 (not e!614439))))

(declare-fun res!716853 () Bool)

(assert (=> b!1075090 (=> res!716853 e!614439)))

(assert (=> b!1075090 (= res!716853 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!477144 () ListLongMap!14681)

(declare-fun lt!477142 () ListLongMap!14681)

(assert (=> b!1075090 (= lt!477144 lt!477142)))

(declare-datatypes ((Unit!35343 0))(
  ( (Unit!35344) )
))
(declare-fun lt!477143 () Unit!35343)

(declare-fun zeroValueAfter!47 () V!39819)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!902 (array!68954 array!68956 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39819 V!39819 V!39819 V!39819 (_ BitVec 32) Int) Unit!35343)

(assert (=> b!1075090 (= lt!477143 (lemmaNoChangeToArrayThenSameMapNoExtras!902 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3883 (array!68954 array!68956 (_ BitVec 32) (_ BitVec 32) V!39819 V!39819 (_ BitVec 32) Int) ListLongMap!14681)

(assert (=> b!1075090 (= lt!477142 (getCurrentListMapNoExtraKeys!3883 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1075090 (= lt!477144 (getCurrentListMapNoExtraKeys!3883 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1075091 () Bool)

(declare-fun e!614437 () Bool)

(assert (=> b!1075091 (= e!614437 tp_is_empty!26013)))

(declare-fun mapNonEmpty!40750 () Bool)

(declare-fun mapRes!40750 () Bool)

(declare-fun tp!78092 () Bool)

(assert (=> mapNonEmpty!40750 (= mapRes!40750 (and tp!78092 e!614437))))

(declare-fun mapValue!40750 () ValueCell!12303)

(declare-fun mapKey!40750 () (_ BitVec 32))

(declare-fun mapRest!40750 () (Array (_ BitVec 32) ValueCell!12303))

(assert (=> mapNonEmpty!40750 (= (arr!33162 _values!955) (store mapRest!40750 mapKey!40750 mapValue!40750))))

(declare-fun b!1075092 () Bool)

(declare-fun e!614440 () Bool)

(assert (=> b!1075092 (= e!614440 (and e!614436 mapRes!40750))))

(declare-fun condMapEmpty!40750 () Bool)

(declare-fun mapDefault!40750 () ValueCell!12303)

(assert (=> b!1075092 (= condMapEmpty!40750 (= (arr!33162 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12303)) mapDefault!40750)))))

(declare-fun mapIsEmpty!40750 () Bool)

(assert (=> mapIsEmpty!40750 mapRes!40750))

(declare-fun b!1075087 () Bool)

(declare-fun res!716854 () Bool)

(assert (=> b!1075087 (=> (not res!716854) (not e!614441))))

(declare-datatypes ((List!23275 0))(
  ( (Nil!23272) (Cons!23271 (h!24480 (_ BitVec 64)) (t!32631 List!23275)) )
))
(declare-fun arrayNoDuplicates!0 (array!68954 (_ BitVec 32) List!23275) Bool)

(assert (=> b!1075087 (= res!716854 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23272))))

(declare-fun res!716856 () Bool)

(assert (=> start!95142 (=> (not res!716856) (not e!614441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95142 (= res!716856 (validMask!0 mask!1515))))

(assert (=> start!95142 e!614441))

(assert (=> start!95142 true))

(assert (=> start!95142 tp_is_empty!26013))

(declare-fun array_inv!25478 (array!68956) Bool)

(assert (=> start!95142 (and (array_inv!25478 _values!955) e!614440)))

(assert (=> start!95142 tp!78093))

(declare-fun array_inv!25479 (array!68954) Bool)

(assert (=> start!95142 (array_inv!25479 _keys!1163)))

(assert (= (and start!95142 res!716856) b!1075086))

(assert (= (and b!1075086 res!716852) b!1075085))

(assert (= (and b!1075085 res!716855) b!1075087))

(assert (= (and b!1075087 res!716854) b!1075090))

(assert (= (and b!1075090 (not res!716853)) b!1075088))

(assert (= (and b!1075092 condMapEmpty!40750) mapIsEmpty!40750))

(assert (= (and b!1075092 (not condMapEmpty!40750)) mapNonEmpty!40750))

(get-info :version)

(assert (= (and mapNonEmpty!40750 ((_ is ValueCellFull!12303) mapValue!40750)) b!1075091))

(assert (= (and b!1075092 ((_ is ValueCellFull!12303) mapDefault!40750)) b!1075089))

(assert (= start!95142 b!1075092))

(declare-fun m!994093 () Bool)

(assert (=> b!1075085 m!994093))

(declare-fun m!994095 () Bool)

(assert (=> mapNonEmpty!40750 m!994095))

(declare-fun m!994097 () Bool)

(assert (=> b!1075087 m!994097))

(declare-fun m!994099 () Bool)

(assert (=> b!1075088 m!994099))

(assert (=> b!1075088 m!994099))

(declare-fun m!994101 () Bool)

(assert (=> b!1075088 m!994101))

(declare-fun m!994103 () Bool)

(assert (=> b!1075090 m!994103))

(declare-fun m!994105 () Bool)

(assert (=> b!1075090 m!994105))

(declare-fun m!994107 () Bool)

(assert (=> b!1075090 m!994107))

(declare-fun m!994109 () Bool)

(assert (=> start!95142 m!994109))

(declare-fun m!994111 () Bool)

(assert (=> start!95142 m!994111))

(declare-fun m!994113 () Bool)

(assert (=> start!95142 m!994113))

(check-sat (not b_next!22203) (not b!1075087) b_and!35141 (not start!95142) (not mapNonEmpty!40750) (not b!1075088) tp_is_empty!26013 (not b!1075090) (not b!1075085))
(check-sat b_and!35141 (not b_next!22203))
(get-model)

(declare-fun d!129519 () Bool)

(declare-fun res!716877 () Bool)

(declare-fun e!614466 () Bool)

(assert (=> d!129519 (=> res!716877 e!614466)))

(assert (=> d!129519 (= res!716877 (bvsge #b00000000000000000000000000000000 (size!33698 _keys!1163)))))

(assert (=> d!129519 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!614466)))

(declare-fun b!1075125 () Bool)

(declare-fun e!614468 () Bool)

(declare-fun e!614467 () Bool)

(assert (=> b!1075125 (= e!614468 e!614467)))

(declare-fun lt!477162 () (_ BitVec 64))

(assert (=> b!1075125 (= lt!477162 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477160 () Unit!35343)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!68954 (_ BitVec 64) (_ BitVec 32)) Unit!35343)

(assert (=> b!1075125 (= lt!477160 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!477162 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!68954 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1075125 (arrayContainsKey!0 _keys!1163 lt!477162 #b00000000000000000000000000000000)))

(declare-fun lt!477161 () Unit!35343)

(assert (=> b!1075125 (= lt!477161 lt!477160)))

(declare-fun res!716876 () Bool)

(declare-datatypes ((SeekEntryResult!9888 0))(
  ( (MissingZero!9888 (index!41922 (_ BitVec 32))) (Found!9888 (index!41923 (_ BitVec 32))) (Intermediate!9888 (undefined!10700 Bool) (index!41924 (_ BitVec 32)) (x!96354 (_ BitVec 32))) (Undefined!9888) (MissingVacant!9888 (index!41925 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!68954 (_ BitVec 32)) SeekEntryResult!9888)

(assert (=> b!1075125 (= res!716876 (= (seekEntryOrOpen!0 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9888 #b00000000000000000000000000000000)))))

(assert (=> b!1075125 (=> (not res!716876) (not e!614467))))

(declare-fun b!1075126 () Bool)

(declare-fun call!45474 () Bool)

(assert (=> b!1075126 (= e!614467 call!45474)))

(declare-fun b!1075127 () Bool)

(assert (=> b!1075127 (= e!614466 e!614468)))

(declare-fun c!107947 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1075127 (= c!107947 (validKeyInArray!0 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45471 () Bool)

(assert (=> bm!45471 (= call!45474 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1075128 () Bool)

(assert (=> b!1075128 (= e!614468 call!45474)))

(assert (= (and d!129519 (not res!716877)) b!1075127))

(assert (= (and b!1075127 c!107947) b!1075125))

(assert (= (and b!1075127 (not c!107947)) b!1075128))

(assert (= (and b!1075125 res!716876) b!1075126))

(assert (= (or b!1075126 b!1075128) bm!45471))

(declare-fun m!994137 () Bool)

(assert (=> b!1075125 m!994137))

(declare-fun m!994139 () Bool)

(assert (=> b!1075125 m!994139))

(declare-fun m!994141 () Bool)

(assert (=> b!1075125 m!994141))

(assert (=> b!1075125 m!994137))

(declare-fun m!994143 () Bool)

(assert (=> b!1075125 m!994143))

(assert (=> b!1075127 m!994137))

(assert (=> b!1075127 m!994137))

(declare-fun m!994145 () Bool)

(assert (=> b!1075127 m!994145))

(declare-fun m!994147 () Bool)

(assert (=> bm!45471 m!994147))

(assert (=> b!1075085 d!129519))

(declare-fun d!129521 () Bool)

(assert (=> d!129521 (= (getCurrentListMapNoExtraKeys!3883 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3883 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477165 () Unit!35343)

(declare-fun choose!1759 (array!68954 array!68956 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39819 V!39819 V!39819 V!39819 (_ BitVec 32) Int) Unit!35343)

(assert (=> d!129521 (= lt!477165 (choose!1759 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!129521 (validMask!0 mask!1515)))

(assert (=> d!129521 (= (lemmaNoChangeToArrayThenSameMapNoExtras!902 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477165)))

(declare-fun bs!31675 () Bool)

(assert (= bs!31675 d!129521))

(assert (=> bs!31675 m!994107))

(assert (=> bs!31675 m!994105))

(declare-fun m!994149 () Bool)

(assert (=> bs!31675 m!994149))

(assert (=> bs!31675 m!994109))

(assert (=> b!1075090 d!129521))

(declare-fun b!1075153 () Bool)

(declare-fun e!614485 () ListLongMap!14681)

(assert (=> b!1075153 (= e!614485 (ListLongMap!14682 Nil!23271))))

(declare-fun b!1075154 () Bool)

(declare-fun e!614487 () Bool)

(declare-fun e!614489 () Bool)

(assert (=> b!1075154 (= e!614487 e!614489)))

(assert (=> b!1075154 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33698 _keys!1163)))))

(declare-fun res!716889 () Bool)

(declare-fun lt!477185 () ListLongMap!14681)

(assert (=> b!1075154 (= res!716889 (contains!6358 lt!477185 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075154 (=> (not res!716889) (not e!614489))))

(declare-fun b!1075155 () Bool)

(declare-fun e!614483 () ListLongMap!14681)

(assert (=> b!1075155 (= e!614485 e!614483)))

(declare-fun c!107956 () Bool)

(assert (=> b!1075155 (= c!107956 (validKeyInArray!0 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075157 () Bool)

(declare-fun lt!477183 () Unit!35343)

(declare-fun lt!477186 () Unit!35343)

(assert (=> b!1075157 (= lt!477183 lt!477186)))

(declare-fun lt!477184 () (_ BitVec 64))

(declare-fun lt!477180 () ListLongMap!14681)

(declare-fun lt!477182 () V!39819)

(declare-fun lt!477181 () (_ BitVec 64))

(declare-fun +!3183 (ListLongMap!14681 tuple2!16700) ListLongMap!14681)

(assert (=> b!1075157 (not (contains!6358 (+!3183 lt!477180 (tuple2!16701 lt!477184 lt!477182)) lt!477181))))

(declare-fun addStillNotContains!268 (ListLongMap!14681 (_ BitVec 64) V!39819 (_ BitVec 64)) Unit!35343)

(assert (=> b!1075157 (= lt!477186 (addStillNotContains!268 lt!477180 lt!477184 lt!477182 lt!477181))))

(assert (=> b!1075157 (= lt!477181 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!17245 (ValueCell!12303 V!39819) V!39819)

(declare-fun dynLambda!2049 (Int (_ BitVec 64)) V!39819)

(assert (=> b!1075157 (= lt!477182 (get!17245 (select (arr!33162 _values!955) #b00000000000000000000000000000000) (dynLambda!2049 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1075157 (= lt!477184 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun call!45477 () ListLongMap!14681)

(assert (=> b!1075157 (= lt!477180 call!45477)))

(assert (=> b!1075157 (= e!614483 (+!3183 call!45477 (tuple2!16701 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000) (get!17245 (select (arr!33162 _values!955) #b00000000000000000000000000000000) (dynLambda!2049 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1075158 () Bool)

(assert (=> b!1075158 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33698 _keys!1163)))))

(assert (=> b!1075158 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33699 _values!955)))))

(declare-fun apply!973 (ListLongMap!14681 (_ BitVec 64)) V!39819)

(assert (=> b!1075158 (= e!614489 (= (apply!973 lt!477185 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000)) (get!17245 (select (arr!33162 _values!955) #b00000000000000000000000000000000) (dynLambda!2049 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1075159 () Bool)

(declare-fun e!614488 () Bool)

(declare-fun isEmpty!959 (ListLongMap!14681) Bool)

(assert (=> b!1075159 (= e!614488 (isEmpty!959 lt!477185))))

(declare-fun b!1075160 () Bool)

(declare-fun e!614484 () Bool)

(assert (=> b!1075160 (= e!614484 (validKeyInArray!0 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075160 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!129523 () Bool)

(declare-fun e!614486 () Bool)

(assert (=> d!129523 e!614486))

(declare-fun res!716887 () Bool)

(assert (=> d!129523 (=> (not res!716887) (not e!614486))))

(assert (=> d!129523 (= res!716887 (not (contains!6358 lt!477185 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129523 (= lt!477185 e!614485)))

(declare-fun c!107958 () Bool)

(assert (=> d!129523 (= c!107958 (bvsge #b00000000000000000000000000000000 (size!33698 _keys!1163)))))

(assert (=> d!129523 (validMask!0 mask!1515)))

(assert (=> d!129523 (= (getCurrentListMapNoExtraKeys!3883 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477185)))

(declare-fun b!1075156 () Bool)

(assert (=> b!1075156 (= e!614486 e!614487)))

(declare-fun c!107959 () Bool)

(assert (=> b!1075156 (= c!107959 e!614484)))

(declare-fun res!716888 () Bool)

(assert (=> b!1075156 (=> (not res!716888) (not e!614484))))

(assert (=> b!1075156 (= res!716888 (bvslt #b00000000000000000000000000000000 (size!33698 _keys!1163)))))

(declare-fun b!1075161 () Bool)

(assert (=> b!1075161 (= e!614487 e!614488)))

(declare-fun c!107957 () Bool)

(assert (=> b!1075161 (= c!107957 (bvslt #b00000000000000000000000000000000 (size!33698 _keys!1163)))))

(declare-fun b!1075162 () Bool)

(declare-fun res!716886 () Bool)

(assert (=> b!1075162 (=> (not res!716886) (not e!614486))))

(assert (=> b!1075162 (= res!716886 (not (contains!6358 lt!477185 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1075163 () Bool)

(assert (=> b!1075163 (= e!614483 call!45477)))

(declare-fun bm!45474 () Bool)

(assert (=> bm!45474 (= call!45477 (getCurrentListMapNoExtraKeys!3883 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1075164 () Bool)

(assert (=> b!1075164 (= e!614488 (= lt!477185 (getCurrentListMapNoExtraKeys!3883 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(assert (= (and d!129523 c!107958) b!1075153))

(assert (= (and d!129523 (not c!107958)) b!1075155))

(assert (= (and b!1075155 c!107956) b!1075157))

(assert (= (and b!1075155 (not c!107956)) b!1075163))

(assert (= (or b!1075157 b!1075163) bm!45474))

(assert (= (and d!129523 res!716887) b!1075162))

(assert (= (and b!1075162 res!716886) b!1075156))

(assert (= (and b!1075156 res!716888) b!1075160))

(assert (= (and b!1075156 c!107959) b!1075154))

(assert (= (and b!1075156 (not c!107959)) b!1075161))

(assert (= (and b!1075154 res!716889) b!1075158))

(assert (= (and b!1075161 c!107957) b!1075164))

(assert (= (and b!1075161 (not c!107957)) b!1075159))

(declare-fun b_lambda!16887 () Bool)

(assert (=> (not b_lambda!16887) (not b!1075157)))

(declare-fun t!32635 () Bool)

(declare-fun tb!7179 () Bool)

(assert (=> (and start!95142 (= defaultEntry!963 defaultEntry!963) t!32635) tb!7179))

(declare-fun result!14829 () Bool)

(assert (=> tb!7179 (= result!14829 tp_is_empty!26013)))

(assert (=> b!1075157 t!32635))

(declare-fun b_and!35145 () Bool)

(assert (= b_and!35141 (and (=> t!32635 result!14829) b_and!35145)))

(declare-fun b_lambda!16889 () Bool)

(assert (=> (not b_lambda!16889) (not b!1075158)))

(assert (=> b!1075158 t!32635))

(declare-fun b_and!35147 () Bool)

(assert (= b_and!35145 (and (=> t!32635 result!14829) b_and!35147)))

(declare-fun m!994151 () Bool)

(assert (=> bm!45474 m!994151))

(declare-fun m!994153 () Bool)

(assert (=> d!129523 m!994153))

(assert (=> d!129523 m!994109))

(assert (=> b!1075155 m!994137))

(assert (=> b!1075155 m!994137))

(assert (=> b!1075155 m!994145))

(declare-fun m!994155 () Bool)

(assert (=> b!1075157 m!994155))

(declare-fun m!994157 () Bool)

(assert (=> b!1075157 m!994157))

(declare-fun m!994159 () Bool)

(assert (=> b!1075157 m!994159))

(declare-fun m!994161 () Bool)

(assert (=> b!1075157 m!994161))

(declare-fun m!994163 () Bool)

(assert (=> b!1075157 m!994163))

(declare-fun m!994165 () Bool)

(assert (=> b!1075157 m!994165))

(assert (=> b!1075157 m!994161))

(assert (=> b!1075157 m!994159))

(assert (=> b!1075157 m!994165))

(declare-fun m!994167 () Bool)

(assert (=> b!1075157 m!994167))

(assert (=> b!1075157 m!994137))

(assert (=> b!1075164 m!994151))

(assert (=> b!1075154 m!994137))

(assert (=> b!1075154 m!994137))

(declare-fun m!994169 () Bool)

(assert (=> b!1075154 m!994169))

(declare-fun m!994171 () Bool)

(assert (=> b!1075159 m!994171))

(declare-fun m!994173 () Bool)

(assert (=> b!1075162 m!994173))

(assert (=> b!1075158 m!994137))

(declare-fun m!994175 () Bool)

(assert (=> b!1075158 m!994175))

(assert (=> b!1075158 m!994159))

(assert (=> b!1075158 m!994161))

(assert (=> b!1075158 m!994163))

(assert (=> b!1075158 m!994137))

(assert (=> b!1075158 m!994161))

(assert (=> b!1075158 m!994159))

(assert (=> b!1075160 m!994137))

(assert (=> b!1075160 m!994137))

(assert (=> b!1075160 m!994145))

(assert (=> b!1075090 d!129523))

(declare-fun b!1075167 () Bool)

(declare-fun e!614492 () ListLongMap!14681)

(assert (=> b!1075167 (= e!614492 (ListLongMap!14682 Nil!23271))))

(declare-fun b!1075168 () Bool)

(declare-fun e!614494 () Bool)

(declare-fun e!614496 () Bool)

(assert (=> b!1075168 (= e!614494 e!614496)))

(assert (=> b!1075168 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33698 _keys!1163)))))

(declare-fun res!716893 () Bool)

(declare-fun lt!477192 () ListLongMap!14681)

(assert (=> b!1075168 (= res!716893 (contains!6358 lt!477192 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075168 (=> (not res!716893) (not e!614496))))

(declare-fun b!1075169 () Bool)

(declare-fun e!614490 () ListLongMap!14681)

(assert (=> b!1075169 (= e!614492 e!614490)))

(declare-fun c!107960 () Bool)

(assert (=> b!1075169 (= c!107960 (validKeyInArray!0 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075171 () Bool)

(declare-fun lt!477190 () Unit!35343)

(declare-fun lt!477193 () Unit!35343)

(assert (=> b!1075171 (= lt!477190 lt!477193)))

(declare-fun lt!477188 () (_ BitVec 64))

(declare-fun lt!477191 () (_ BitVec 64))

(declare-fun lt!477187 () ListLongMap!14681)

(declare-fun lt!477189 () V!39819)

(assert (=> b!1075171 (not (contains!6358 (+!3183 lt!477187 (tuple2!16701 lt!477191 lt!477189)) lt!477188))))

(assert (=> b!1075171 (= lt!477193 (addStillNotContains!268 lt!477187 lt!477191 lt!477189 lt!477188))))

(assert (=> b!1075171 (= lt!477188 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1075171 (= lt!477189 (get!17245 (select (arr!33162 _values!955) #b00000000000000000000000000000000) (dynLambda!2049 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1075171 (= lt!477191 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun call!45478 () ListLongMap!14681)

(assert (=> b!1075171 (= lt!477187 call!45478)))

(assert (=> b!1075171 (= e!614490 (+!3183 call!45478 (tuple2!16701 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000) (get!17245 (select (arr!33162 _values!955) #b00000000000000000000000000000000) (dynLambda!2049 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1075172 () Bool)

(assert (=> b!1075172 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33698 _keys!1163)))))

(assert (=> b!1075172 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33699 _values!955)))))

(assert (=> b!1075172 (= e!614496 (= (apply!973 lt!477192 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000)) (get!17245 (select (arr!33162 _values!955) #b00000000000000000000000000000000) (dynLambda!2049 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1075173 () Bool)

(declare-fun e!614495 () Bool)

(assert (=> b!1075173 (= e!614495 (isEmpty!959 lt!477192))))

(declare-fun b!1075174 () Bool)

(declare-fun e!614491 () Bool)

(assert (=> b!1075174 (= e!614491 (validKeyInArray!0 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075174 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!129525 () Bool)

(declare-fun e!614493 () Bool)

(assert (=> d!129525 e!614493))

(declare-fun res!716891 () Bool)

(assert (=> d!129525 (=> (not res!716891) (not e!614493))))

(assert (=> d!129525 (= res!716891 (not (contains!6358 lt!477192 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129525 (= lt!477192 e!614492)))

(declare-fun c!107962 () Bool)

(assert (=> d!129525 (= c!107962 (bvsge #b00000000000000000000000000000000 (size!33698 _keys!1163)))))

(assert (=> d!129525 (validMask!0 mask!1515)))

(assert (=> d!129525 (= (getCurrentListMapNoExtraKeys!3883 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477192)))

(declare-fun b!1075170 () Bool)

(assert (=> b!1075170 (= e!614493 e!614494)))

(declare-fun c!107963 () Bool)

(assert (=> b!1075170 (= c!107963 e!614491)))

(declare-fun res!716892 () Bool)

(assert (=> b!1075170 (=> (not res!716892) (not e!614491))))

(assert (=> b!1075170 (= res!716892 (bvslt #b00000000000000000000000000000000 (size!33698 _keys!1163)))))

(declare-fun b!1075175 () Bool)

(assert (=> b!1075175 (= e!614494 e!614495)))

(declare-fun c!107961 () Bool)

(assert (=> b!1075175 (= c!107961 (bvslt #b00000000000000000000000000000000 (size!33698 _keys!1163)))))

(declare-fun b!1075176 () Bool)

(declare-fun res!716890 () Bool)

(assert (=> b!1075176 (=> (not res!716890) (not e!614493))))

(assert (=> b!1075176 (= res!716890 (not (contains!6358 lt!477192 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1075177 () Bool)

(assert (=> b!1075177 (= e!614490 call!45478)))

(declare-fun bm!45475 () Bool)

(assert (=> bm!45475 (= call!45478 (getCurrentListMapNoExtraKeys!3883 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1075178 () Bool)

(assert (=> b!1075178 (= e!614495 (= lt!477192 (getCurrentListMapNoExtraKeys!3883 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(assert (= (and d!129525 c!107962) b!1075167))

(assert (= (and d!129525 (not c!107962)) b!1075169))

(assert (= (and b!1075169 c!107960) b!1075171))

(assert (= (and b!1075169 (not c!107960)) b!1075177))

(assert (= (or b!1075171 b!1075177) bm!45475))

(assert (= (and d!129525 res!716891) b!1075176))

(assert (= (and b!1075176 res!716890) b!1075170))

(assert (= (and b!1075170 res!716892) b!1075174))

(assert (= (and b!1075170 c!107963) b!1075168))

(assert (= (and b!1075170 (not c!107963)) b!1075175))

(assert (= (and b!1075168 res!716893) b!1075172))

(assert (= (and b!1075175 c!107961) b!1075178))

(assert (= (and b!1075175 (not c!107961)) b!1075173))

(declare-fun b_lambda!16891 () Bool)

(assert (=> (not b_lambda!16891) (not b!1075171)))

(assert (=> b!1075171 t!32635))

(declare-fun b_and!35149 () Bool)

(assert (= b_and!35147 (and (=> t!32635 result!14829) b_and!35149)))

(declare-fun b_lambda!16893 () Bool)

(assert (=> (not b_lambda!16893) (not b!1075172)))

(assert (=> b!1075172 t!32635))

(declare-fun b_and!35151 () Bool)

(assert (= b_and!35149 (and (=> t!32635 result!14829) b_and!35151)))

(declare-fun m!994177 () Bool)

(assert (=> bm!45475 m!994177))

(declare-fun m!994179 () Bool)

(assert (=> d!129525 m!994179))

(assert (=> d!129525 m!994109))

(assert (=> b!1075169 m!994137))

(assert (=> b!1075169 m!994137))

(assert (=> b!1075169 m!994145))

(declare-fun m!994181 () Bool)

(assert (=> b!1075171 m!994181))

(declare-fun m!994183 () Bool)

(assert (=> b!1075171 m!994183))

(assert (=> b!1075171 m!994159))

(assert (=> b!1075171 m!994161))

(assert (=> b!1075171 m!994163))

(declare-fun m!994185 () Bool)

(assert (=> b!1075171 m!994185))

(assert (=> b!1075171 m!994161))

(assert (=> b!1075171 m!994159))

(assert (=> b!1075171 m!994185))

(declare-fun m!994187 () Bool)

(assert (=> b!1075171 m!994187))

(assert (=> b!1075171 m!994137))

(assert (=> b!1075178 m!994177))

(assert (=> b!1075168 m!994137))

(assert (=> b!1075168 m!994137))

(declare-fun m!994189 () Bool)

(assert (=> b!1075168 m!994189))

(declare-fun m!994191 () Bool)

(assert (=> b!1075173 m!994191))

(declare-fun m!994193 () Bool)

(assert (=> b!1075176 m!994193))

(assert (=> b!1075172 m!994137))

(declare-fun m!994195 () Bool)

(assert (=> b!1075172 m!994195))

(assert (=> b!1075172 m!994159))

(assert (=> b!1075172 m!994161))

(assert (=> b!1075172 m!994163))

(assert (=> b!1075172 m!994137))

(assert (=> b!1075172 m!994161))

(assert (=> b!1075172 m!994159))

(assert (=> b!1075174 m!994137))

(assert (=> b!1075174 m!994137))

(assert (=> b!1075174 m!994145))

(assert (=> b!1075090 d!129525))

(declare-fun d!129527 () Bool)

(declare-fun e!614501 () Bool)

(assert (=> d!129527 e!614501))

(declare-fun res!716896 () Bool)

(assert (=> d!129527 (=> res!716896 e!614501)))

(declare-fun lt!477202 () Bool)

(assert (=> d!129527 (= res!716896 (not lt!477202))))

(declare-fun lt!477204 () Bool)

(assert (=> d!129527 (= lt!477202 lt!477204)))

(declare-fun lt!477203 () Unit!35343)

(declare-fun e!614502 () Unit!35343)

(assert (=> d!129527 (= lt!477203 e!614502)))

(declare-fun c!107966 () Bool)

(assert (=> d!129527 (= c!107966 lt!477204)))

(declare-fun containsKey!580 (List!23274 (_ BitVec 64)) Bool)

(assert (=> d!129527 (= lt!477204 (containsKey!580 (toList!7356 (getCurrentListMap!4193 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129527 (= (contains!6358 (getCurrentListMap!4193 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) #b0000000000000000000000000000000000000000000000000000000000000000) lt!477202)))

(declare-fun b!1075185 () Bool)

(declare-fun lt!477205 () Unit!35343)

(assert (=> b!1075185 (= e!614502 lt!477205)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!412 (List!23274 (_ BitVec 64)) Unit!35343)

(assert (=> b!1075185 (= lt!477205 (lemmaContainsKeyImpliesGetValueByKeyDefined!412 (toList!7356 (getCurrentListMap!4193 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!664 0))(
  ( (Some!663 (v!15683 V!39819)) (None!662) )
))
(declare-fun isDefined!452 (Option!664) Bool)

(declare-fun getValueByKey!613 (List!23274 (_ BitVec 64)) Option!664)

(assert (=> b!1075185 (isDefined!452 (getValueByKey!613 (toList!7356 (getCurrentListMap!4193 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1075186 () Bool)

(declare-fun Unit!35347 () Unit!35343)

(assert (=> b!1075186 (= e!614502 Unit!35347)))

(declare-fun b!1075187 () Bool)

(assert (=> b!1075187 (= e!614501 (isDefined!452 (getValueByKey!613 (toList!7356 (getCurrentListMap!4193 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!129527 c!107966) b!1075185))

(assert (= (and d!129527 (not c!107966)) b!1075186))

(assert (= (and d!129527 (not res!716896)) b!1075187))

(declare-fun m!994197 () Bool)

(assert (=> d!129527 m!994197))

(declare-fun m!994199 () Bool)

(assert (=> b!1075185 m!994199))

(declare-fun m!994201 () Bool)

(assert (=> b!1075185 m!994201))

(assert (=> b!1075185 m!994201))

(declare-fun m!994203 () Bool)

(assert (=> b!1075185 m!994203))

(assert (=> b!1075187 m!994201))

(assert (=> b!1075187 m!994201))

(assert (=> b!1075187 m!994203))

(assert (=> b!1075088 d!129527))

(declare-fun bm!45490 () Bool)

(declare-fun call!45497 () ListLongMap!14681)

(declare-fun call!45498 () ListLongMap!14681)

(assert (=> bm!45490 (= call!45497 call!45498)))

(declare-fun c!107980 () Bool)

(declare-fun call!45496 () ListLongMap!14681)

(declare-fun call!45493 () ListLongMap!14681)

(declare-fun bm!45491 () Bool)

(declare-fun call!45499 () ListLongMap!14681)

(declare-fun c!107984 () Bool)

(assert (=> bm!45491 (= call!45498 (+!3183 (ite c!107984 call!45493 (ite c!107980 call!45496 call!45499)) (ite (or c!107984 c!107980) (tuple2!16701 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16701 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1075230 () Bool)

(declare-fun e!614540 () ListLongMap!14681)

(assert (=> b!1075230 (= e!614540 call!45499)))

(declare-fun b!1075231 () Bool)

(declare-fun e!614538 () ListLongMap!14681)

(assert (=> b!1075231 (= e!614538 (+!3183 call!45498 (tuple2!16701 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun bm!45492 () Bool)

(assert (=> bm!45492 (= call!45499 call!45496)))

(declare-fun b!1075232 () Bool)

(declare-fun e!614539 () Bool)

(declare-fun e!614537 () Bool)

(assert (=> b!1075232 (= e!614539 e!614537)))

(declare-fun res!716918 () Bool)

(declare-fun call!45494 () Bool)

(assert (=> b!1075232 (= res!716918 call!45494)))

(assert (=> b!1075232 (=> (not res!716918) (not e!614537))))

(declare-fun e!614529 () Bool)

(declare-fun b!1075233 () Bool)

(declare-fun lt!477270 () ListLongMap!14681)

(assert (=> b!1075233 (= e!614529 (= (apply!973 lt!477270 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000)) (get!17245 (select (arr!33162 _values!955) #b00000000000000000000000000000000) (dynLambda!2049 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1075233 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33699 _values!955)))))

(assert (=> b!1075233 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33698 _keys!1163)))))

(declare-fun bm!45493 () Bool)

(assert (=> bm!45493 (= call!45493 (getCurrentListMapNoExtraKeys!3883 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun bm!45494 () Bool)

(declare-fun call!45495 () Bool)

(assert (=> bm!45494 (= call!45495 (contains!6358 lt!477270 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1075234 () Bool)

(declare-fun res!716920 () Bool)

(declare-fun e!614536 () Bool)

(assert (=> b!1075234 (=> (not res!716920) (not e!614536))))

(declare-fun e!614533 () Bool)

(assert (=> b!1075234 (= res!716920 e!614533)))

(declare-fun c!107983 () Bool)

(assert (=> b!1075234 (= c!107983 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1075235 () Bool)

(declare-fun e!614541 () Bool)

(assert (=> b!1075235 (= e!614541 e!614529)))

(declare-fun res!716917 () Bool)

(assert (=> b!1075235 (=> (not res!716917) (not e!614529))))

(assert (=> b!1075235 (= res!716917 (contains!6358 lt!477270 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075235 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33698 _keys!1163)))))

(declare-fun bm!45495 () Bool)

(assert (=> bm!45495 (= call!45496 call!45493)))

(declare-fun b!1075236 () Bool)

(declare-fun e!614535 () Bool)

(assert (=> b!1075236 (= e!614535 (= (apply!973 lt!477270 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(declare-fun b!1075237 () Bool)

(declare-fun e!614531 () Bool)

(assert (=> b!1075237 (= e!614531 (validKeyInArray!0 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075238 () Bool)

(assert (=> b!1075238 (= e!614536 e!614539)))

(declare-fun c!107979 () Bool)

(assert (=> b!1075238 (= c!107979 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1075239 () Bool)

(declare-fun e!614530 () Bool)

(assert (=> b!1075239 (= e!614530 (validKeyInArray!0 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075240 () Bool)

(assert (=> b!1075240 (= e!614537 (= (apply!973 lt!477270 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1075241 () Bool)

(declare-fun res!716919 () Bool)

(assert (=> b!1075241 (=> (not res!716919) (not e!614536))))

(assert (=> b!1075241 (= res!716919 e!614541)))

(declare-fun res!716915 () Bool)

(assert (=> b!1075241 (=> res!716915 e!614541)))

(assert (=> b!1075241 (= res!716915 (not e!614531))))

(declare-fun res!716922 () Bool)

(assert (=> b!1075241 (=> (not res!716922) (not e!614531))))

(assert (=> b!1075241 (= res!716922 (bvslt #b00000000000000000000000000000000 (size!33698 _keys!1163)))))

(declare-fun b!1075242 () Bool)

(declare-fun e!614534 () ListLongMap!14681)

(assert (=> b!1075242 (= e!614538 e!614534)))

(assert (=> b!1075242 (= c!107980 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1075243 () Bool)

(declare-fun e!614532 () Unit!35343)

(declare-fun lt!477264 () Unit!35343)

(assert (=> b!1075243 (= e!614532 lt!477264)))

(declare-fun lt!477253 () ListLongMap!14681)

(assert (=> b!1075243 (= lt!477253 (getCurrentListMapNoExtraKeys!3883 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477271 () (_ BitVec 64))

(assert (=> b!1075243 (= lt!477271 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477259 () (_ BitVec 64))

(assert (=> b!1075243 (= lt!477259 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477263 () Unit!35343)

(declare-fun addStillContains!655 (ListLongMap!14681 (_ BitVec 64) V!39819 (_ BitVec 64)) Unit!35343)

(assert (=> b!1075243 (= lt!477263 (addStillContains!655 lt!477253 lt!477271 zeroValueBefore!47 lt!477259))))

(assert (=> b!1075243 (contains!6358 (+!3183 lt!477253 (tuple2!16701 lt!477271 zeroValueBefore!47)) lt!477259)))

(declare-fun lt!477265 () Unit!35343)

(assert (=> b!1075243 (= lt!477265 lt!477263)))

(declare-fun lt!477267 () ListLongMap!14681)

(assert (=> b!1075243 (= lt!477267 (getCurrentListMapNoExtraKeys!3883 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477252 () (_ BitVec 64))

(assert (=> b!1075243 (= lt!477252 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477257 () (_ BitVec 64))

(assert (=> b!1075243 (= lt!477257 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477260 () Unit!35343)

(declare-fun addApplyDifferent!507 (ListLongMap!14681 (_ BitVec 64) V!39819 (_ BitVec 64)) Unit!35343)

(assert (=> b!1075243 (= lt!477260 (addApplyDifferent!507 lt!477267 lt!477252 minValue!907 lt!477257))))

(assert (=> b!1075243 (= (apply!973 (+!3183 lt!477267 (tuple2!16701 lt!477252 minValue!907)) lt!477257) (apply!973 lt!477267 lt!477257))))

(declare-fun lt!477254 () Unit!35343)

(assert (=> b!1075243 (= lt!477254 lt!477260)))

(declare-fun lt!477255 () ListLongMap!14681)

(assert (=> b!1075243 (= lt!477255 (getCurrentListMapNoExtraKeys!3883 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477266 () (_ BitVec 64))

(assert (=> b!1075243 (= lt!477266 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477262 () (_ BitVec 64))

(assert (=> b!1075243 (= lt!477262 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477251 () Unit!35343)

(assert (=> b!1075243 (= lt!477251 (addApplyDifferent!507 lt!477255 lt!477266 zeroValueBefore!47 lt!477262))))

(assert (=> b!1075243 (= (apply!973 (+!3183 lt!477255 (tuple2!16701 lt!477266 zeroValueBefore!47)) lt!477262) (apply!973 lt!477255 lt!477262))))

(declare-fun lt!477256 () Unit!35343)

(assert (=> b!1075243 (= lt!477256 lt!477251)))

(declare-fun lt!477250 () ListLongMap!14681)

(assert (=> b!1075243 (= lt!477250 (getCurrentListMapNoExtraKeys!3883 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477268 () (_ BitVec 64))

(assert (=> b!1075243 (= lt!477268 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477258 () (_ BitVec 64))

(assert (=> b!1075243 (= lt!477258 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1075243 (= lt!477264 (addApplyDifferent!507 lt!477250 lt!477268 minValue!907 lt!477258))))

(assert (=> b!1075243 (= (apply!973 (+!3183 lt!477250 (tuple2!16701 lt!477268 minValue!907)) lt!477258) (apply!973 lt!477250 lt!477258))))

(declare-fun b!1075244 () Bool)

(assert (=> b!1075244 (= e!614533 e!614535)))

(declare-fun res!716916 () Bool)

(assert (=> b!1075244 (= res!716916 call!45495)))

(assert (=> b!1075244 (=> (not res!716916) (not e!614535))))

(declare-fun b!1075245 () Bool)

(assert (=> b!1075245 (= e!614534 call!45497)))

(declare-fun bm!45496 () Bool)

(assert (=> bm!45496 (= call!45494 (contains!6358 lt!477270 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1075247 () Bool)

(assert (=> b!1075247 (= e!614539 (not call!45494))))

(declare-fun b!1075246 () Bool)

(declare-fun Unit!35348 () Unit!35343)

(assert (=> b!1075246 (= e!614532 Unit!35348)))

(declare-fun d!129529 () Bool)

(assert (=> d!129529 e!614536))

(declare-fun res!716923 () Bool)

(assert (=> d!129529 (=> (not res!716923) (not e!614536))))

(assert (=> d!129529 (= res!716923 (or (bvsge #b00000000000000000000000000000000 (size!33698 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33698 _keys!1163)))))))

(declare-fun lt!477261 () ListLongMap!14681)

(assert (=> d!129529 (= lt!477270 lt!477261)))

(declare-fun lt!477269 () Unit!35343)

(assert (=> d!129529 (= lt!477269 e!614532)))

(declare-fun c!107981 () Bool)

(assert (=> d!129529 (= c!107981 e!614530)))

(declare-fun res!716921 () Bool)

(assert (=> d!129529 (=> (not res!716921) (not e!614530))))

(assert (=> d!129529 (= res!716921 (bvslt #b00000000000000000000000000000000 (size!33698 _keys!1163)))))

(assert (=> d!129529 (= lt!477261 e!614538)))

(assert (=> d!129529 (= c!107984 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129529 (validMask!0 mask!1515)))

(assert (=> d!129529 (= (getCurrentListMap!4193 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477270)))

(declare-fun b!1075248 () Bool)

(assert (=> b!1075248 (= e!614540 call!45497)))

(declare-fun b!1075249 () Bool)

(assert (=> b!1075249 (= e!614533 (not call!45495))))

(declare-fun b!1075250 () Bool)

(declare-fun c!107982 () Bool)

(assert (=> b!1075250 (= c!107982 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1075250 (= e!614534 e!614540)))

(assert (= (and d!129529 c!107984) b!1075231))

(assert (= (and d!129529 (not c!107984)) b!1075242))

(assert (= (and b!1075242 c!107980) b!1075245))

(assert (= (and b!1075242 (not c!107980)) b!1075250))

(assert (= (and b!1075250 c!107982) b!1075248))

(assert (= (and b!1075250 (not c!107982)) b!1075230))

(assert (= (or b!1075248 b!1075230) bm!45492))

(assert (= (or b!1075245 bm!45492) bm!45495))

(assert (= (or b!1075245 b!1075248) bm!45490))

(assert (= (or b!1075231 bm!45495) bm!45493))

(assert (= (or b!1075231 bm!45490) bm!45491))

(assert (= (and d!129529 res!716921) b!1075239))

(assert (= (and d!129529 c!107981) b!1075243))

(assert (= (and d!129529 (not c!107981)) b!1075246))

(assert (= (and d!129529 res!716923) b!1075241))

(assert (= (and b!1075241 res!716922) b!1075237))

(assert (= (and b!1075241 (not res!716915)) b!1075235))

(assert (= (and b!1075235 res!716917) b!1075233))

(assert (= (and b!1075241 res!716919) b!1075234))

(assert (= (and b!1075234 c!107983) b!1075244))

(assert (= (and b!1075234 (not c!107983)) b!1075249))

(assert (= (and b!1075244 res!716916) b!1075236))

(assert (= (or b!1075244 b!1075249) bm!45494))

(assert (= (and b!1075234 res!716920) b!1075238))

(assert (= (and b!1075238 c!107979) b!1075232))

(assert (= (and b!1075238 (not c!107979)) b!1075247))

(assert (= (and b!1075232 res!716918) b!1075240))

(assert (= (or b!1075232 b!1075247) bm!45496))

(declare-fun b_lambda!16895 () Bool)

(assert (=> (not b_lambda!16895) (not b!1075233)))

(assert (=> b!1075233 t!32635))

(declare-fun b_and!35153 () Bool)

(assert (= b_and!35151 (and (=> t!32635 result!14829) b_and!35153)))

(assert (=> d!129529 m!994109))

(assert (=> b!1075237 m!994137))

(assert (=> b!1075237 m!994137))

(assert (=> b!1075237 m!994145))

(assert (=> b!1075239 m!994137))

(assert (=> b!1075239 m!994137))

(assert (=> b!1075239 m!994145))

(declare-fun m!994205 () Bool)

(assert (=> bm!45491 m!994205))

(declare-fun m!994207 () Bool)

(assert (=> b!1075236 m!994207))

(assert (=> b!1075235 m!994137))

(assert (=> b!1075235 m!994137))

(declare-fun m!994209 () Bool)

(assert (=> b!1075235 m!994209))

(declare-fun m!994211 () Bool)

(assert (=> b!1075243 m!994211))

(declare-fun m!994213 () Bool)

(assert (=> b!1075243 m!994213))

(declare-fun m!994215 () Bool)

(assert (=> b!1075243 m!994215))

(declare-fun m!994217 () Bool)

(assert (=> b!1075243 m!994217))

(assert (=> b!1075243 m!994211))

(declare-fun m!994219 () Bool)

(assert (=> b!1075243 m!994219))

(declare-fun m!994221 () Bool)

(assert (=> b!1075243 m!994221))

(declare-fun m!994223 () Bool)

(assert (=> b!1075243 m!994223))

(declare-fun m!994225 () Bool)

(assert (=> b!1075243 m!994225))

(declare-fun m!994227 () Bool)

(assert (=> b!1075243 m!994227))

(assert (=> b!1075243 m!994137))

(assert (=> b!1075243 m!994225))

(declare-fun m!994229 () Bool)

(assert (=> b!1075243 m!994229))

(assert (=> b!1075243 m!994215))

(declare-fun m!994231 () Bool)

(assert (=> b!1075243 m!994231))

(declare-fun m!994233 () Bool)

(assert (=> b!1075243 m!994233))

(declare-fun m!994235 () Bool)

(assert (=> b!1075243 m!994235))

(declare-fun m!994237 () Bool)

(assert (=> b!1075243 m!994237))

(assert (=> b!1075243 m!994107))

(assert (=> b!1075243 m!994233))

(declare-fun m!994239 () Bool)

(assert (=> b!1075243 m!994239))

(declare-fun m!994241 () Bool)

(assert (=> bm!45496 m!994241))

(assert (=> bm!45493 m!994107))

(declare-fun m!994243 () Bool)

(assert (=> b!1075240 m!994243))

(declare-fun m!994245 () Bool)

(assert (=> bm!45494 m!994245))

(assert (=> b!1075233 m!994137))

(assert (=> b!1075233 m!994161))

(assert (=> b!1075233 m!994159))

(assert (=> b!1075233 m!994137))

(declare-fun m!994247 () Bool)

(assert (=> b!1075233 m!994247))

(assert (=> b!1075233 m!994159))

(assert (=> b!1075233 m!994161))

(assert (=> b!1075233 m!994163))

(declare-fun m!994249 () Bool)

(assert (=> b!1075231 m!994249))

(assert (=> b!1075088 d!129529))

(declare-fun d!129531 () Bool)

(assert (=> d!129531 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!95142 d!129531))

(declare-fun d!129533 () Bool)

(assert (=> d!129533 (= (array_inv!25478 _values!955) (bvsge (size!33699 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!95142 d!129533))

(declare-fun d!129535 () Bool)

(assert (=> d!129535 (= (array_inv!25479 _keys!1163) (bvsge (size!33698 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!95142 d!129535))

(declare-fun b!1075261 () Bool)

(declare-fun e!614551 () Bool)

(declare-fun call!45502 () Bool)

(assert (=> b!1075261 (= e!614551 call!45502)))

(declare-fun b!1075262 () Bool)

(declare-fun e!614553 () Bool)

(declare-fun contains!6360 (List!23275 (_ BitVec 64)) Bool)

(assert (=> b!1075262 (= e!614553 (contains!6360 Nil!23272 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!129537 () Bool)

(declare-fun res!716932 () Bool)

(declare-fun e!614550 () Bool)

(assert (=> d!129537 (=> res!716932 e!614550)))

(assert (=> d!129537 (= res!716932 (bvsge #b00000000000000000000000000000000 (size!33698 _keys!1163)))))

(assert (=> d!129537 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23272) e!614550)))

(declare-fun b!1075263 () Bool)

(declare-fun e!614552 () Bool)

(assert (=> b!1075263 (= e!614550 e!614552)))

(declare-fun res!716930 () Bool)

(assert (=> b!1075263 (=> (not res!716930) (not e!614552))))

(assert (=> b!1075263 (= res!716930 (not e!614553))))

(declare-fun res!716931 () Bool)

(assert (=> b!1075263 (=> (not res!716931) (not e!614553))))

(assert (=> b!1075263 (= res!716931 (validKeyInArray!0 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075264 () Bool)

(assert (=> b!1075264 (= e!614552 e!614551)))

(declare-fun c!107987 () Bool)

(assert (=> b!1075264 (= c!107987 (validKeyInArray!0 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075265 () Bool)

(assert (=> b!1075265 (= e!614551 call!45502)))

(declare-fun bm!45499 () Bool)

(assert (=> bm!45499 (= call!45502 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107987 (Cons!23271 (select (arr!33161 _keys!1163) #b00000000000000000000000000000000) Nil!23272) Nil!23272)))))

(assert (= (and d!129537 (not res!716932)) b!1075263))

(assert (= (and b!1075263 res!716931) b!1075262))

(assert (= (and b!1075263 res!716930) b!1075264))

(assert (= (and b!1075264 c!107987) b!1075261))

(assert (= (and b!1075264 (not c!107987)) b!1075265))

(assert (= (or b!1075261 b!1075265) bm!45499))

(assert (=> b!1075262 m!994137))

(assert (=> b!1075262 m!994137))

(declare-fun m!994251 () Bool)

(assert (=> b!1075262 m!994251))

(assert (=> b!1075263 m!994137))

(assert (=> b!1075263 m!994137))

(assert (=> b!1075263 m!994145))

(assert (=> b!1075264 m!994137))

(assert (=> b!1075264 m!994137))

(assert (=> b!1075264 m!994145))

(assert (=> bm!45499 m!994137))

(declare-fun m!994253 () Bool)

(assert (=> bm!45499 m!994253))

(assert (=> b!1075087 d!129537))

(declare-fun mapNonEmpty!40756 () Bool)

(declare-fun mapRes!40756 () Bool)

(declare-fun tp!78102 () Bool)

(declare-fun e!614559 () Bool)

(assert (=> mapNonEmpty!40756 (= mapRes!40756 (and tp!78102 e!614559))))

(declare-fun mapKey!40756 () (_ BitVec 32))

(declare-fun mapValue!40756 () ValueCell!12303)

(declare-fun mapRest!40756 () (Array (_ BitVec 32) ValueCell!12303))

(assert (=> mapNonEmpty!40756 (= mapRest!40750 (store mapRest!40756 mapKey!40756 mapValue!40756))))

(declare-fun condMapEmpty!40756 () Bool)

(declare-fun mapDefault!40756 () ValueCell!12303)

(assert (=> mapNonEmpty!40750 (= condMapEmpty!40756 (= mapRest!40750 ((as const (Array (_ BitVec 32) ValueCell!12303)) mapDefault!40756)))))

(declare-fun e!614558 () Bool)

(assert (=> mapNonEmpty!40750 (= tp!78092 (and e!614558 mapRes!40756))))

(declare-fun b!1075272 () Bool)

(assert (=> b!1075272 (= e!614559 tp_is_empty!26013)))

(declare-fun mapIsEmpty!40756 () Bool)

(assert (=> mapIsEmpty!40756 mapRes!40756))

(declare-fun b!1075273 () Bool)

(assert (=> b!1075273 (= e!614558 tp_is_empty!26013)))

(assert (= (and mapNonEmpty!40750 condMapEmpty!40756) mapIsEmpty!40756))

(assert (= (and mapNonEmpty!40750 (not condMapEmpty!40756)) mapNonEmpty!40756))

(assert (= (and mapNonEmpty!40756 ((_ is ValueCellFull!12303) mapValue!40756)) b!1075272))

(assert (= (and mapNonEmpty!40750 ((_ is ValueCellFull!12303) mapDefault!40756)) b!1075273))

(declare-fun m!994255 () Bool)

(assert (=> mapNonEmpty!40756 m!994255))

(declare-fun b_lambda!16897 () Bool)

(assert (= b_lambda!16891 (or (and start!95142 b_free!22203) b_lambda!16897)))

(declare-fun b_lambda!16899 () Bool)

(assert (= b_lambda!16893 (or (and start!95142 b_free!22203) b_lambda!16899)))

(declare-fun b_lambda!16901 () Bool)

(assert (= b_lambda!16895 (or (and start!95142 b_free!22203) b_lambda!16901)))

(declare-fun b_lambda!16903 () Bool)

(assert (= b_lambda!16887 (or (and start!95142 b_free!22203) b_lambda!16903)))

(declare-fun b_lambda!16905 () Bool)

(assert (= b_lambda!16889 (or (and start!95142 b_free!22203) b_lambda!16905)))

(check-sat (not b!1075233) (not b!1075187) (not b!1075157) (not bm!45475) (not b!1075158) (not b_lambda!16903) (not mapNonEmpty!40756) (not b_lambda!16897) (not bm!45496) (not b!1075172) (not b!1075162) (not b_lambda!16905) (not d!129525) (not d!129521) (not b!1075231) (not b!1075171) (not b!1075262) (not b!1075178) (not b!1075236) (not b!1075173) (not b!1075125) (not b_next!22203) (not bm!45471) (not b!1075169) (not b!1075155) (not b!1075176) (not b!1075243) (not bm!45493) (not bm!45491) (not bm!45494) (not b!1075127) (not b!1075240) (not b!1075235) (not b!1075159) (not bm!45499) (not b!1075237) (not b!1075239) tp_is_empty!26013 (not d!129527) (not d!129529) (not b_lambda!16901) (not bm!45474) (not b!1075154) (not b!1075160) (not b_lambda!16899) (not b!1075263) (not b!1075168) (not b!1075185) b_and!35153 (not b!1075174) (not b!1075264) (not d!129523) (not b!1075164))
(check-sat b_and!35153 (not b_next!22203))
