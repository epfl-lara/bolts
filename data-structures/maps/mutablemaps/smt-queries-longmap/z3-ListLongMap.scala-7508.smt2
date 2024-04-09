; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95242 () Bool)

(assert start!95242)

(declare-fun b_free!22227 () Bool)

(declare-fun b_next!22227 () Bool)

(assert (=> start!95242 (= b_free!22227 (not b_next!22227))))

(declare-fun tp!78176 () Bool)

(declare-fun b_and!35211 () Bool)

(assert (=> start!95242 (= tp!78176 b_and!35211)))

(declare-fun b!1076096 () Bool)

(declare-fun res!717350 () Bool)

(declare-fun e!615120 () Bool)

(assert (=> b!1076096 (=> (not res!717350) (not e!615120))))

(declare-datatypes ((array!69010 0))(
  ( (array!69011 (arr!33185 (Array (_ BitVec 32) (_ BitVec 64))) (size!33722 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!69010)

(declare-datatypes ((List!23295 0))(
  ( (Nil!23292) (Cons!23291 (h!24500 (_ BitVec 64)) (t!32659 List!23295)) )
))
(declare-fun arrayNoDuplicates!0 (array!69010 (_ BitVec 32) List!23295) Bool)

(assert (=> b!1076096 (= res!717350 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23292))))

(declare-fun b!1076097 () Bool)

(declare-fun res!717347 () Bool)

(assert (=> b!1076097 (=> (not res!717347) (not e!615120))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39851 0))(
  ( (V!39852 (val!13069 Int)) )
))
(declare-datatypes ((ValueCell!12315 0))(
  ( (ValueCellFull!12315 (v!15697 V!39851)) (EmptyCell!12315) )
))
(declare-datatypes ((array!69012 0))(
  ( (array!69013 (arr!33186 (Array (_ BitVec 32) ValueCell!12315)) (size!33723 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!69012)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1076097 (= res!717347 (and (= (size!33723 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33722 _keys!1163) (size!33723 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1076098 () Bool)

(declare-fun e!615123 () Bool)

(declare-fun e!615121 () Bool)

(declare-fun mapRes!40798 () Bool)

(assert (=> b!1076098 (= e!615123 (and e!615121 mapRes!40798))))

(declare-fun condMapEmpty!40798 () Bool)

(declare-fun mapDefault!40798 () ValueCell!12315)

(assert (=> b!1076098 (= condMapEmpty!40798 (= (arr!33186 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12315)) mapDefault!40798)))))

(declare-fun res!717351 () Bool)

(assert (=> start!95242 (=> (not res!717351) (not e!615120))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95242 (= res!717351 (validMask!0 mask!1515))))

(assert (=> start!95242 e!615120))

(assert (=> start!95242 true))

(declare-fun tp_is_empty!26037 () Bool)

(assert (=> start!95242 tp_is_empty!26037))

(declare-fun array_inv!25496 (array!69012) Bool)

(assert (=> start!95242 (and (array_inv!25496 _values!955) e!615123)))

(assert (=> start!95242 tp!78176))

(declare-fun array_inv!25497 (array!69010) Bool)

(assert (=> start!95242 (array_inv!25497 _keys!1163)))

(declare-fun b!1076099 () Bool)

(declare-fun e!615124 () Bool)

(assert (=> b!1076099 (= e!615124 tp_is_empty!26037)))

(declare-fun mapIsEmpty!40798 () Bool)

(assert (=> mapIsEmpty!40798 mapRes!40798))

(declare-fun b!1076100 () Bool)

(assert (=> b!1076100 (= e!615121 tp_is_empty!26037)))

(declare-fun b!1076101 () Bool)

(declare-fun e!615125 () Bool)

(assert (=> b!1076101 (= e!615120 (not e!615125))))

(declare-fun res!717352 () Bool)

(assert (=> b!1076101 (=> res!717352 e!615125)))

(assert (=> b!1076101 (= res!717352 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16722 0))(
  ( (tuple2!16723 (_1!8371 (_ BitVec 64)) (_2!8371 V!39851)) )
))
(declare-datatypes ((List!23296 0))(
  ( (Nil!23293) (Cons!23292 (h!24501 tuple2!16722) (t!32660 List!23296)) )
))
(declare-datatypes ((ListLongMap!14703 0))(
  ( (ListLongMap!14704 (toList!7367 List!23296)) )
))
(declare-fun lt!477857 () ListLongMap!14703)

(declare-fun lt!477859 () ListLongMap!14703)

(assert (=> b!1076101 (= lt!477857 lt!477859)))

(declare-datatypes ((Unit!35372 0))(
  ( (Unit!35373) )
))
(declare-fun lt!477858 () Unit!35372)

(declare-fun zeroValueBefore!47 () V!39851)

(declare-fun minValue!907 () V!39851)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39851)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!911 (array!69010 array!69012 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39851 V!39851 V!39851 V!39851 (_ BitVec 32) Int) Unit!35372)

(assert (=> b!1076101 (= lt!477858 (lemmaNoChangeToArrayThenSameMapNoExtras!911 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3892 (array!69010 array!69012 (_ BitVec 32) (_ BitVec 32) V!39851 V!39851 (_ BitVec 32) Int) ListLongMap!14703)

(assert (=> b!1076101 (= lt!477859 (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1076101 (= lt!477857 (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1076102 () Bool)

(declare-fun lt!477861 () tuple2!16722)

(declare-fun contains!6371 (ListLongMap!14703 (_ BitVec 64)) Bool)

(declare-fun +!3190 (ListLongMap!14703 tuple2!16722) ListLongMap!14703)

(assert (=> b!1076102 (= e!615125 (not (contains!6371 (+!3190 lt!477857 lt!477861) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!615126 () Bool)

(assert (=> b!1076102 e!615126))

(declare-fun res!717348 () Bool)

(assert (=> b!1076102 (=> (not res!717348) (not e!615126))))

(declare-fun lt!477862 () ListLongMap!14703)

(assert (=> b!1076102 (= res!717348 (= lt!477862 (+!3190 (+!3190 lt!477857 (tuple2!16723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) lt!477861)))))

(assert (=> b!1076102 (= lt!477861 (tuple2!16723 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!477860 () ListLongMap!14703)

(declare-fun getCurrentListMap!4202 (array!69010 array!69012 (_ BitVec 32) (_ BitVec 32) V!39851 V!39851 (_ BitVec 32) Int) ListLongMap!14703)

(assert (=> b!1076102 (= lt!477860 (getCurrentListMap!4202 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1076102 (= lt!477862 (getCurrentListMap!4202 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1076103 () Bool)

(assert (=> b!1076103 (= e!615126 (= lt!477860 (+!3190 lt!477859 lt!477861)))))

(declare-fun mapNonEmpty!40798 () Bool)

(declare-fun tp!78177 () Bool)

(assert (=> mapNonEmpty!40798 (= mapRes!40798 (and tp!78177 e!615124))))

(declare-fun mapValue!40798 () ValueCell!12315)

(declare-fun mapRest!40798 () (Array (_ BitVec 32) ValueCell!12315))

(declare-fun mapKey!40798 () (_ BitVec 32))

(assert (=> mapNonEmpty!40798 (= (arr!33186 _values!955) (store mapRest!40798 mapKey!40798 mapValue!40798))))

(declare-fun b!1076104 () Bool)

(declare-fun res!717349 () Bool)

(assert (=> b!1076104 (=> (not res!717349) (not e!615120))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69010 (_ BitVec 32)) Bool)

(assert (=> b!1076104 (= res!717349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!95242 res!717351) b!1076097))

(assert (= (and b!1076097 res!717347) b!1076104))

(assert (= (and b!1076104 res!717349) b!1076096))

(assert (= (and b!1076096 res!717350) b!1076101))

(assert (= (and b!1076101 (not res!717352)) b!1076102))

(assert (= (and b!1076102 res!717348) b!1076103))

(assert (= (and b!1076098 condMapEmpty!40798) mapIsEmpty!40798))

(assert (= (and b!1076098 (not condMapEmpty!40798)) mapNonEmpty!40798))

(get-info :version)

(assert (= (and mapNonEmpty!40798 ((_ is ValueCellFull!12315) mapValue!40798)) b!1076099))

(assert (= (and b!1076098 ((_ is ValueCellFull!12315) mapDefault!40798)) b!1076100))

(assert (= start!95242 b!1076098))

(declare-fun m!995083 () Bool)

(assert (=> b!1076096 m!995083))

(declare-fun m!995085 () Bool)

(assert (=> b!1076103 m!995085))

(declare-fun m!995087 () Bool)

(assert (=> b!1076101 m!995087))

(declare-fun m!995089 () Bool)

(assert (=> b!1076101 m!995089))

(declare-fun m!995091 () Bool)

(assert (=> b!1076101 m!995091))

(declare-fun m!995093 () Bool)

(assert (=> b!1076104 m!995093))

(declare-fun m!995095 () Bool)

(assert (=> mapNonEmpty!40798 m!995095))

(declare-fun m!995097 () Bool)

(assert (=> b!1076102 m!995097))

(declare-fun m!995099 () Bool)

(assert (=> b!1076102 m!995099))

(declare-fun m!995101 () Bool)

(assert (=> b!1076102 m!995101))

(declare-fun m!995103 () Bool)

(assert (=> b!1076102 m!995103))

(assert (=> b!1076102 m!995097))

(declare-fun m!995105 () Bool)

(assert (=> b!1076102 m!995105))

(assert (=> b!1076102 m!995101))

(declare-fun m!995107 () Bool)

(assert (=> b!1076102 m!995107))

(declare-fun m!995109 () Bool)

(assert (=> start!95242 m!995109))

(declare-fun m!995111 () Bool)

(assert (=> start!95242 m!995111))

(declare-fun m!995113 () Bool)

(assert (=> start!95242 m!995113))

(check-sat (not b!1076102) tp_is_empty!26037 (not b!1076096) (not mapNonEmpty!40798) b_and!35211 (not b!1076104) (not start!95242) (not b!1076101) (not b_next!22227) (not b!1076103))
(check-sat b_and!35211 (not b_next!22227))
(get-model)

(declare-fun d!129623 () Bool)

(declare-fun e!615150 () Bool)

(assert (=> d!129623 e!615150))

(declare-fun res!717375 () Bool)

(assert (=> d!129623 (=> (not res!717375) (not e!615150))))

(declare-fun lt!477892 () ListLongMap!14703)

(assert (=> d!129623 (= res!717375 (contains!6371 lt!477892 (_1!8371 lt!477861)))))

(declare-fun lt!477889 () List!23296)

(assert (=> d!129623 (= lt!477892 (ListLongMap!14704 lt!477889))))

(declare-fun lt!477891 () Unit!35372)

(declare-fun lt!477890 () Unit!35372)

(assert (=> d!129623 (= lt!477891 lt!477890)))

(declare-datatypes ((Option!668 0))(
  ( (Some!667 (v!15699 V!39851)) (None!666) )
))
(declare-fun getValueByKey!617 (List!23296 (_ BitVec 64)) Option!668)

(assert (=> d!129623 (= (getValueByKey!617 lt!477889 (_1!8371 lt!477861)) (Some!667 (_2!8371 lt!477861)))))

(declare-fun lemmaContainsTupThenGetReturnValue!292 (List!23296 (_ BitVec 64) V!39851) Unit!35372)

(assert (=> d!129623 (= lt!477890 (lemmaContainsTupThenGetReturnValue!292 lt!477889 (_1!8371 lt!477861) (_2!8371 lt!477861)))))

(declare-fun insertStrictlySorted!384 (List!23296 (_ BitVec 64) V!39851) List!23296)

(assert (=> d!129623 (= lt!477889 (insertStrictlySorted!384 (toList!7367 lt!477859) (_1!8371 lt!477861) (_2!8371 lt!477861)))))

(assert (=> d!129623 (= (+!3190 lt!477859 lt!477861) lt!477892)))

(declare-fun b!1076136 () Bool)

(declare-fun res!717376 () Bool)

(assert (=> b!1076136 (=> (not res!717376) (not e!615150))))

(assert (=> b!1076136 (= res!717376 (= (getValueByKey!617 (toList!7367 lt!477892) (_1!8371 lt!477861)) (Some!667 (_2!8371 lt!477861))))))

(declare-fun b!1076137 () Bool)

(declare-fun contains!6373 (List!23296 tuple2!16722) Bool)

(assert (=> b!1076137 (= e!615150 (contains!6373 (toList!7367 lt!477892) lt!477861))))

(assert (= (and d!129623 res!717375) b!1076136))

(assert (= (and b!1076136 res!717376) b!1076137))

(declare-fun m!995147 () Bool)

(assert (=> d!129623 m!995147))

(declare-fun m!995149 () Bool)

(assert (=> d!129623 m!995149))

(declare-fun m!995151 () Bool)

(assert (=> d!129623 m!995151))

(declare-fun m!995153 () Bool)

(assert (=> d!129623 m!995153))

(declare-fun m!995155 () Bool)

(assert (=> b!1076136 m!995155))

(declare-fun m!995157 () Bool)

(assert (=> b!1076137 m!995157))

(assert (=> b!1076103 d!129623))

(declare-fun d!129625 () Bool)

(declare-fun e!615151 () Bool)

(assert (=> d!129625 e!615151))

(declare-fun res!717377 () Bool)

(assert (=> d!129625 (=> (not res!717377) (not e!615151))))

(declare-fun lt!477896 () ListLongMap!14703)

(assert (=> d!129625 (= res!717377 (contains!6371 lt!477896 (_1!8371 lt!477861)))))

(declare-fun lt!477893 () List!23296)

(assert (=> d!129625 (= lt!477896 (ListLongMap!14704 lt!477893))))

(declare-fun lt!477895 () Unit!35372)

(declare-fun lt!477894 () Unit!35372)

(assert (=> d!129625 (= lt!477895 lt!477894)))

(assert (=> d!129625 (= (getValueByKey!617 lt!477893 (_1!8371 lt!477861)) (Some!667 (_2!8371 lt!477861)))))

(assert (=> d!129625 (= lt!477894 (lemmaContainsTupThenGetReturnValue!292 lt!477893 (_1!8371 lt!477861) (_2!8371 lt!477861)))))

(assert (=> d!129625 (= lt!477893 (insertStrictlySorted!384 (toList!7367 (+!3190 lt!477857 (tuple2!16723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))) (_1!8371 lt!477861) (_2!8371 lt!477861)))))

(assert (=> d!129625 (= (+!3190 (+!3190 lt!477857 (tuple2!16723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) lt!477861) lt!477896)))

(declare-fun b!1076138 () Bool)

(declare-fun res!717378 () Bool)

(assert (=> b!1076138 (=> (not res!717378) (not e!615151))))

(assert (=> b!1076138 (= res!717378 (= (getValueByKey!617 (toList!7367 lt!477896) (_1!8371 lt!477861)) (Some!667 (_2!8371 lt!477861))))))

(declare-fun b!1076139 () Bool)

(assert (=> b!1076139 (= e!615151 (contains!6373 (toList!7367 lt!477896) lt!477861))))

(assert (= (and d!129625 res!717377) b!1076138))

(assert (= (and b!1076138 res!717378) b!1076139))

(declare-fun m!995159 () Bool)

(assert (=> d!129625 m!995159))

(declare-fun m!995161 () Bool)

(assert (=> d!129625 m!995161))

(declare-fun m!995163 () Bool)

(assert (=> d!129625 m!995163))

(declare-fun m!995165 () Bool)

(assert (=> d!129625 m!995165))

(declare-fun m!995167 () Bool)

(assert (=> b!1076138 m!995167))

(declare-fun m!995169 () Bool)

(assert (=> b!1076139 m!995169))

(assert (=> b!1076102 d!129625))

(declare-fun b!1076182 () Bool)

(declare-fun e!615182 () Bool)

(declare-fun lt!477955 () ListLongMap!14703)

(declare-fun apply!977 (ListLongMap!14703 (_ BitVec 64)) V!39851)

(assert (=> b!1076182 (= e!615182 (= (apply!977 lt!477955 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!47))))

(declare-fun b!1076183 () Bool)

(declare-fun e!615178 () Bool)

(declare-fun e!615183 () Bool)

(assert (=> b!1076183 (= e!615178 e!615183)))

(declare-fun res!717401 () Bool)

(assert (=> b!1076183 (=> (not res!717401) (not e!615183))))

(assert (=> b!1076183 (= res!717401 (contains!6371 lt!477955 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1076183 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(declare-fun b!1076184 () Bool)

(declare-fun e!615180 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1076184 (= e!615180 (validKeyInArray!0 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun call!45632 () ListLongMap!14703)

(declare-fun bm!45628 () Bool)

(assert (=> bm!45628 (= call!45632 (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1076185 () Bool)

(declare-fun e!615179 () ListLongMap!14703)

(declare-fun call!45634 () ListLongMap!14703)

(assert (=> b!1076185 (= e!615179 call!45634)))

(declare-fun b!1076186 () Bool)

(declare-fun e!615181 () Bool)

(declare-fun e!615188 () Bool)

(assert (=> b!1076186 (= e!615181 e!615188)))

(declare-fun res!717398 () Bool)

(declare-fun call!45636 () Bool)

(assert (=> b!1076186 (= res!717398 call!45636)))

(assert (=> b!1076186 (=> (not res!717398) (not e!615188))))

(declare-fun b!1076187 () Bool)

(declare-fun e!615186 () ListLongMap!14703)

(declare-fun call!45635 () ListLongMap!14703)

(assert (=> b!1076187 (= e!615186 call!45635)))

(declare-fun b!1076188 () Bool)

(declare-fun e!615187 () Bool)

(assert (=> b!1076188 (= e!615187 e!615181)))

(declare-fun c!108145 () Bool)

(assert (=> b!1076188 (= c!108145 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1076190 () Bool)

(declare-fun e!615190 () ListLongMap!14703)

(assert (=> b!1076190 (= e!615190 e!615179)))

(declare-fun c!108144 () Bool)

(assert (=> b!1076190 (= c!108144 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1076191 () Bool)

(assert (=> b!1076191 (= e!615188 (= (apply!977 lt!477955 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun bm!45629 () Bool)

(declare-fun call!45631 () ListLongMap!14703)

(assert (=> bm!45629 (= call!45635 call!45631)))

(declare-fun b!1076192 () Bool)

(declare-fun res!717397 () Bool)

(assert (=> b!1076192 (=> (not res!717397) (not e!615187))))

(assert (=> b!1076192 (= res!717397 e!615178)))

(declare-fun res!717405 () Bool)

(assert (=> b!1076192 (=> res!717405 e!615178)))

(declare-fun e!615184 () Bool)

(assert (=> b!1076192 (= res!717405 (not e!615184))))

(declare-fun res!717403 () Bool)

(assert (=> b!1076192 (=> (not res!717403) (not e!615184))))

(assert (=> b!1076192 (= res!717403 (bvslt #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(declare-fun b!1076193 () Bool)

(declare-fun call!45633 () ListLongMap!14703)

(assert (=> b!1076193 (= e!615190 (+!3190 call!45633 (tuple2!16723 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun c!108141 () Bool)

(declare-fun bm!45630 () Bool)

(assert (=> bm!45630 (= call!45633 (+!3190 (ite c!108141 call!45632 (ite c!108144 call!45631 call!45635)) (ite (or c!108141 c!108144) (tuple2!16723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!47) (tuple2!16723 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1076194 () Bool)

(declare-fun e!615189 () Bool)

(declare-fun call!45637 () Bool)

(assert (=> b!1076194 (= e!615189 (not call!45637))))

(declare-fun b!1076195 () Bool)

(declare-fun e!615185 () Unit!35372)

(declare-fun lt!477949 () Unit!35372)

(assert (=> b!1076195 (= e!615185 lt!477949)))

(declare-fun lt!477946 () ListLongMap!14703)

(assert (=> b!1076195 (= lt!477946 (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477954 () (_ BitVec 64))

(assert (=> b!1076195 (= lt!477954 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477961 () (_ BitVec 64))

(assert (=> b!1076195 (= lt!477961 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477962 () Unit!35372)

(declare-fun addStillContains!659 (ListLongMap!14703 (_ BitVec 64) V!39851 (_ BitVec 64)) Unit!35372)

(assert (=> b!1076195 (= lt!477962 (addStillContains!659 lt!477946 lt!477954 zeroValueAfter!47 lt!477961))))

(assert (=> b!1076195 (contains!6371 (+!3190 lt!477946 (tuple2!16723 lt!477954 zeroValueAfter!47)) lt!477961)))

(declare-fun lt!477959 () Unit!35372)

(assert (=> b!1076195 (= lt!477959 lt!477962)))

(declare-fun lt!477952 () ListLongMap!14703)

(assert (=> b!1076195 (= lt!477952 (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477942 () (_ BitVec 64))

(assert (=> b!1076195 (= lt!477942 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477947 () (_ BitVec 64))

(assert (=> b!1076195 (= lt!477947 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477957 () Unit!35372)

(declare-fun addApplyDifferent!511 (ListLongMap!14703 (_ BitVec 64) V!39851 (_ BitVec 64)) Unit!35372)

(assert (=> b!1076195 (= lt!477957 (addApplyDifferent!511 lt!477952 lt!477942 minValue!907 lt!477947))))

(assert (=> b!1076195 (= (apply!977 (+!3190 lt!477952 (tuple2!16723 lt!477942 minValue!907)) lt!477947) (apply!977 lt!477952 lt!477947))))

(declare-fun lt!477948 () Unit!35372)

(assert (=> b!1076195 (= lt!477948 lt!477957)))

(declare-fun lt!477951 () ListLongMap!14703)

(assert (=> b!1076195 (= lt!477951 (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477956 () (_ BitVec 64))

(assert (=> b!1076195 (= lt!477956 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477943 () (_ BitVec 64))

(assert (=> b!1076195 (= lt!477943 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477960 () Unit!35372)

(assert (=> b!1076195 (= lt!477960 (addApplyDifferent!511 lt!477951 lt!477956 zeroValueAfter!47 lt!477943))))

(assert (=> b!1076195 (= (apply!977 (+!3190 lt!477951 (tuple2!16723 lt!477956 zeroValueAfter!47)) lt!477943) (apply!977 lt!477951 lt!477943))))

(declare-fun lt!477944 () Unit!35372)

(assert (=> b!1076195 (= lt!477944 lt!477960)))

(declare-fun lt!477958 () ListLongMap!14703)

(assert (=> b!1076195 (= lt!477958 (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477953 () (_ BitVec 64))

(assert (=> b!1076195 (= lt!477953 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477941 () (_ BitVec 64))

(assert (=> b!1076195 (= lt!477941 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1076195 (= lt!477949 (addApplyDifferent!511 lt!477958 lt!477953 minValue!907 lt!477941))))

(assert (=> b!1076195 (= (apply!977 (+!3190 lt!477958 (tuple2!16723 lt!477953 minValue!907)) lt!477941) (apply!977 lt!477958 lt!477941))))

(declare-fun bm!45631 () Bool)

(assert (=> bm!45631 (= call!45631 call!45632)))

(declare-fun bm!45632 () Bool)

(assert (=> bm!45632 (= call!45636 (contains!6371 lt!477955 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1076196 () Bool)

(declare-fun c!108146 () Bool)

(assert (=> b!1076196 (= c!108146 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1076196 (= e!615179 e!615186)))

(declare-fun b!1076197 () Bool)

(assert (=> b!1076197 (= e!615189 e!615182)))

(declare-fun res!717404 () Bool)

(assert (=> b!1076197 (= res!717404 call!45637)))

(assert (=> b!1076197 (=> (not res!717404) (not e!615182))))

(declare-fun bm!45633 () Bool)

(assert (=> bm!45633 (= call!45637 (contains!6371 lt!477955 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1076198 () Bool)

(assert (=> b!1076198 (= e!615181 (not call!45636))))

(declare-fun b!1076199 () Bool)

(declare-fun get!17257 (ValueCell!12315 V!39851) V!39851)

(declare-fun dynLambda!2053 (Int (_ BitVec 64)) V!39851)

(assert (=> b!1076199 (= e!615183 (= (apply!977 lt!477955 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)) (get!17257 (select (arr!33186 _values!955) #b00000000000000000000000000000000) (dynLambda!2053 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1076199 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33723 _values!955)))))

(assert (=> b!1076199 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(declare-fun b!1076200 () Bool)

(declare-fun Unit!35374 () Unit!35372)

(assert (=> b!1076200 (= e!615185 Unit!35374)))

(declare-fun b!1076201 () Bool)

(assert (=> b!1076201 (= e!615186 call!45634)))

(declare-fun d!129627 () Bool)

(assert (=> d!129627 e!615187))

(declare-fun res!717399 () Bool)

(assert (=> d!129627 (=> (not res!717399) (not e!615187))))

(assert (=> d!129627 (= res!717399 (or (bvsge #b00000000000000000000000000000000 (size!33722 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33722 _keys!1163)))))))

(declare-fun lt!477950 () ListLongMap!14703)

(assert (=> d!129627 (= lt!477955 lt!477950)))

(declare-fun lt!477945 () Unit!35372)

(assert (=> d!129627 (= lt!477945 e!615185)))

(declare-fun c!108143 () Bool)

(assert (=> d!129627 (= c!108143 e!615180)))

(declare-fun res!717400 () Bool)

(assert (=> d!129627 (=> (not res!717400) (not e!615180))))

(assert (=> d!129627 (= res!717400 (bvslt #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(assert (=> d!129627 (= lt!477950 e!615190)))

(assert (=> d!129627 (= c!108141 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129627 (validMask!0 mask!1515)))

(assert (=> d!129627 (= (getCurrentListMap!4202 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477955)))

(declare-fun b!1076189 () Bool)

(assert (=> b!1076189 (= e!615184 (validKeyInArray!0 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45634 () Bool)

(assert (=> bm!45634 (= call!45634 call!45633)))

(declare-fun b!1076202 () Bool)

(declare-fun res!717402 () Bool)

(assert (=> b!1076202 (=> (not res!717402) (not e!615187))))

(assert (=> b!1076202 (= res!717402 e!615189)))

(declare-fun c!108142 () Bool)

(assert (=> b!1076202 (= c!108142 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!129627 c!108141) b!1076193))

(assert (= (and d!129627 (not c!108141)) b!1076190))

(assert (= (and b!1076190 c!108144) b!1076185))

(assert (= (and b!1076190 (not c!108144)) b!1076196))

(assert (= (and b!1076196 c!108146) b!1076201))

(assert (= (and b!1076196 (not c!108146)) b!1076187))

(assert (= (or b!1076201 b!1076187) bm!45629))

(assert (= (or b!1076185 bm!45629) bm!45631))

(assert (= (or b!1076185 b!1076201) bm!45634))

(assert (= (or b!1076193 bm!45631) bm!45628))

(assert (= (or b!1076193 bm!45634) bm!45630))

(assert (= (and d!129627 res!717400) b!1076184))

(assert (= (and d!129627 c!108143) b!1076195))

(assert (= (and d!129627 (not c!108143)) b!1076200))

(assert (= (and d!129627 res!717399) b!1076192))

(assert (= (and b!1076192 res!717403) b!1076189))

(assert (= (and b!1076192 (not res!717405)) b!1076183))

(assert (= (and b!1076183 res!717401) b!1076199))

(assert (= (and b!1076192 res!717397) b!1076202))

(assert (= (and b!1076202 c!108142) b!1076197))

(assert (= (and b!1076202 (not c!108142)) b!1076194))

(assert (= (and b!1076197 res!717404) b!1076182))

(assert (= (or b!1076197 b!1076194) bm!45633))

(assert (= (and b!1076202 res!717402) b!1076188))

(assert (= (and b!1076188 c!108145) b!1076186))

(assert (= (and b!1076188 (not c!108145)) b!1076198))

(assert (= (and b!1076186 res!717398) b!1076191))

(assert (= (or b!1076186 b!1076198) bm!45632))

(declare-fun b_lambda!16979 () Bool)

(assert (=> (not b_lambda!16979) (not b!1076199)))

(declare-fun t!32664 () Bool)

(declare-fun tb!7187 () Bool)

(assert (=> (and start!95242 (= defaultEntry!963 defaultEntry!963) t!32664) tb!7187))

(declare-fun result!14853 () Bool)

(assert (=> tb!7187 (= result!14853 tp_is_empty!26037)))

(assert (=> b!1076199 t!32664))

(declare-fun b_and!35215 () Bool)

(assert (= b_and!35211 (and (=> t!32664 result!14853) b_and!35215)))

(declare-fun m!995171 () Bool)

(assert (=> b!1076193 m!995171))

(declare-fun m!995173 () Bool)

(assert (=> b!1076195 m!995173))

(declare-fun m!995175 () Bool)

(assert (=> b!1076195 m!995175))

(assert (=> b!1076195 m!995089))

(declare-fun m!995177 () Bool)

(assert (=> b!1076195 m!995177))

(declare-fun m!995179 () Bool)

(assert (=> b!1076195 m!995179))

(declare-fun m!995181 () Bool)

(assert (=> b!1076195 m!995181))

(declare-fun m!995183 () Bool)

(assert (=> b!1076195 m!995183))

(declare-fun m!995185 () Bool)

(assert (=> b!1076195 m!995185))

(declare-fun m!995187 () Bool)

(assert (=> b!1076195 m!995187))

(declare-fun m!995189 () Bool)

(assert (=> b!1076195 m!995189))

(declare-fun m!995191 () Bool)

(assert (=> b!1076195 m!995191))

(declare-fun m!995193 () Bool)

(assert (=> b!1076195 m!995193))

(declare-fun m!995195 () Bool)

(assert (=> b!1076195 m!995195))

(assert (=> b!1076195 m!995185))

(declare-fun m!995197 () Bool)

(assert (=> b!1076195 m!995197))

(assert (=> b!1076195 m!995175))

(declare-fun m!995199 () Bool)

(assert (=> b!1076195 m!995199))

(declare-fun m!995201 () Bool)

(assert (=> b!1076195 m!995201))

(assert (=> b!1076195 m!995181))

(declare-fun m!995203 () Bool)

(assert (=> b!1076195 m!995203))

(assert (=> b!1076195 m!995189))

(assert (=> bm!45628 m!995089))

(declare-fun m!995205 () Bool)

(assert (=> b!1076182 m!995205))

(assert (=> b!1076183 m!995179))

(assert (=> b!1076183 m!995179))

(declare-fun m!995207 () Bool)

(assert (=> b!1076183 m!995207))

(declare-fun m!995209 () Bool)

(assert (=> bm!45633 m!995209))

(declare-fun m!995211 () Bool)

(assert (=> bm!45632 m!995211))

(assert (=> b!1076189 m!995179))

(assert (=> b!1076189 m!995179))

(declare-fun m!995213 () Bool)

(assert (=> b!1076189 m!995213))

(declare-fun m!995215 () Bool)

(assert (=> bm!45630 m!995215))

(declare-fun m!995217 () Bool)

(assert (=> b!1076199 m!995217))

(declare-fun m!995219 () Bool)

(assert (=> b!1076199 m!995219))

(declare-fun m!995221 () Bool)

(assert (=> b!1076199 m!995221))

(assert (=> b!1076199 m!995179))

(declare-fun m!995223 () Bool)

(assert (=> b!1076199 m!995223))

(assert (=> b!1076199 m!995219))

(assert (=> b!1076199 m!995179))

(assert (=> b!1076199 m!995217))

(declare-fun m!995225 () Bool)

(assert (=> b!1076191 m!995225))

(assert (=> d!129627 m!995109))

(assert (=> b!1076184 m!995179))

(assert (=> b!1076184 m!995179))

(assert (=> b!1076184 m!995213))

(assert (=> b!1076102 d!129627))

(declare-fun b!1076205 () Bool)

(declare-fun e!615195 () Bool)

(declare-fun lt!477977 () ListLongMap!14703)

(assert (=> b!1076205 (= e!615195 (= (apply!977 lt!477977 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(declare-fun b!1076206 () Bool)

(declare-fun e!615191 () Bool)

(declare-fun e!615196 () Bool)

(assert (=> b!1076206 (= e!615191 e!615196)))

(declare-fun res!717410 () Bool)

(assert (=> b!1076206 (=> (not res!717410) (not e!615196))))

(assert (=> b!1076206 (= res!717410 (contains!6371 lt!477977 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1076206 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(declare-fun b!1076207 () Bool)

(declare-fun e!615193 () Bool)

(assert (=> b!1076207 (= e!615193 (validKeyInArray!0 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45635 () Bool)

(declare-fun call!45639 () ListLongMap!14703)

(assert (=> bm!45635 (= call!45639 (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1076208 () Bool)

(declare-fun e!615192 () ListLongMap!14703)

(declare-fun call!45641 () ListLongMap!14703)

(assert (=> b!1076208 (= e!615192 call!45641)))

(declare-fun b!1076209 () Bool)

(declare-fun e!615194 () Bool)

(declare-fun e!615201 () Bool)

(assert (=> b!1076209 (= e!615194 e!615201)))

(declare-fun res!717407 () Bool)

(declare-fun call!45643 () Bool)

(assert (=> b!1076209 (= res!717407 call!45643)))

(assert (=> b!1076209 (=> (not res!717407) (not e!615201))))

(declare-fun b!1076210 () Bool)

(declare-fun e!615199 () ListLongMap!14703)

(declare-fun call!45642 () ListLongMap!14703)

(assert (=> b!1076210 (= e!615199 call!45642)))

(declare-fun b!1076211 () Bool)

(declare-fun e!615200 () Bool)

(assert (=> b!1076211 (= e!615200 e!615194)))

(declare-fun c!108151 () Bool)

(assert (=> b!1076211 (= c!108151 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1076213 () Bool)

(declare-fun e!615203 () ListLongMap!14703)

(assert (=> b!1076213 (= e!615203 e!615192)))

(declare-fun c!108150 () Bool)

(assert (=> b!1076213 (= c!108150 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1076214 () Bool)

(assert (=> b!1076214 (= e!615201 (= (apply!977 lt!477977 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun bm!45636 () Bool)

(declare-fun call!45638 () ListLongMap!14703)

(assert (=> bm!45636 (= call!45642 call!45638)))

(declare-fun b!1076215 () Bool)

(declare-fun res!717406 () Bool)

(assert (=> b!1076215 (=> (not res!717406) (not e!615200))))

(assert (=> b!1076215 (= res!717406 e!615191)))

(declare-fun res!717414 () Bool)

(assert (=> b!1076215 (=> res!717414 e!615191)))

(declare-fun e!615197 () Bool)

(assert (=> b!1076215 (= res!717414 (not e!615197))))

(declare-fun res!717412 () Bool)

(assert (=> b!1076215 (=> (not res!717412) (not e!615197))))

(assert (=> b!1076215 (= res!717412 (bvslt #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(declare-fun b!1076216 () Bool)

(declare-fun call!45640 () ListLongMap!14703)

(assert (=> b!1076216 (= e!615203 (+!3190 call!45640 (tuple2!16723 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun c!108147 () Bool)

(declare-fun bm!45637 () Bool)

(assert (=> bm!45637 (= call!45640 (+!3190 (ite c!108147 call!45639 (ite c!108150 call!45638 call!45642)) (ite (or c!108147 c!108150) (tuple2!16723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16723 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1076217 () Bool)

(declare-fun e!615202 () Bool)

(declare-fun call!45644 () Bool)

(assert (=> b!1076217 (= e!615202 (not call!45644))))

(declare-fun b!1076218 () Bool)

(declare-fun e!615198 () Unit!35372)

(declare-fun lt!477971 () Unit!35372)

(assert (=> b!1076218 (= e!615198 lt!477971)))

(declare-fun lt!477968 () ListLongMap!14703)

(assert (=> b!1076218 (= lt!477968 (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477976 () (_ BitVec 64))

(assert (=> b!1076218 (= lt!477976 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477983 () (_ BitVec 64))

(assert (=> b!1076218 (= lt!477983 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477984 () Unit!35372)

(assert (=> b!1076218 (= lt!477984 (addStillContains!659 lt!477968 lt!477976 zeroValueBefore!47 lt!477983))))

(assert (=> b!1076218 (contains!6371 (+!3190 lt!477968 (tuple2!16723 lt!477976 zeroValueBefore!47)) lt!477983)))

(declare-fun lt!477981 () Unit!35372)

(assert (=> b!1076218 (= lt!477981 lt!477984)))

(declare-fun lt!477974 () ListLongMap!14703)

(assert (=> b!1076218 (= lt!477974 (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477964 () (_ BitVec 64))

(assert (=> b!1076218 (= lt!477964 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477969 () (_ BitVec 64))

(assert (=> b!1076218 (= lt!477969 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477979 () Unit!35372)

(assert (=> b!1076218 (= lt!477979 (addApplyDifferent!511 lt!477974 lt!477964 minValue!907 lt!477969))))

(assert (=> b!1076218 (= (apply!977 (+!3190 lt!477974 (tuple2!16723 lt!477964 minValue!907)) lt!477969) (apply!977 lt!477974 lt!477969))))

(declare-fun lt!477970 () Unit!35372)

(assert (=> b!1076218 (= lt!477970 lt!477979)))

(declare-fun lt!477973 () ListLongMap!14703)

(assert (=> b!1076218 (= lt!477973 (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477978 () (_ BitVec 64))

(assert (=> b!1076218 (= lt!477978 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477965 () (_ BitVec 64))

(assert (=> b!1076218 (= lt!477965 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477982 () Unit!35372)

(assert (=> b!1076218 (= lt!477982 (addApplyDifferent!511 lt!477973 lt!477978 zeroValueBefore!47 lt!477965))))

(assert (=> b!1076218 (= (apply!977 (+!3190 lt!477973 (tuple2!16723 lt!477978 zeroValueBefore!47)) lt!477965) (apply!977 lt!477973 lt!477965))))

(declare-fun lt!477966 () Unit!35372)

(assert (=> b!1076218 (= lt!477966 lt!477982)))

(declare-fun lt!477980 () ListLongMap!14703)

(assert (=> b!1076218 (= lt!477980 (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477975 () (_ BitVec 64))

(assert (=> b!1076218 (= lt!477975 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477963 () (_ BitVec 64))

(assert (=> b!1076218 (= lt!477963 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1076218 (= lt!477971 (addApplyDifferent!511 lt!477980 lt!477975 minValue!907 lt!477963))))

(assert (=> b!1076218 (= (apply!977 (+!3190 lt!477980 (tuple2!16723 lt!477975 minValue!907)) lt!477963) (apply!977 lt!477980 lt!477963))))

(declare-fun bm!45638 () Bool)

(assert (=> bm!45638 (= call!45638 call!45639)))

(declare-fun bm!45639 () Bool)

(assert (=> bm!45639 (= call!45643 (contains!6371 lt!477977 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1076219 () Bool)

(declare-fun c!108152 () Bool)

(assert (=> b!1076219 (= c!108152 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1076219 (= e!615192 e!615199)))

(declare-fun b!1076220 () Bool)

(assert (=> b!1076220 (= e!615202 e!615195)))

(declare-fun res!717413 () Bool)

(assert (=> b!1076220 (= res!717413 call!45644)))

(assert (=> b!1076220 (=> (not res!717413) (not e!615195))))

(declare-fun bm!45640 () Bool)

(assert (=> bm!45640 (= call!45644 (contains!6371 lt!477977 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1076221 () Bool)

(assert (=> b!1076221 (= e!615194 (not call!45643))))

(declare-fun b!1076222 () Bool)

(assert (=> b!1076222 (= e!615196 (= (apply!977 lt!477977 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)) (get!17257 (select (arr!33186 _values!955) #b00000000000000000000000000000000) (dynLambda!2053 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1076222 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33723 _values!955)))))

(assert (=> b!1076222 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(declare-fun b!1076223 () Bool)

(declare-fun Unit!35375 () Unit!35372)

(assert (=> b!1076223 (= e!615198 Unit!35375)))

(declare-fun b!1076224 () Bool)

(assert (=> b!1076224 (= e!615199 call!45641)))

(declare-fun d!129629 () Bool)

(assert (=> d!129629 e!615200))

(declare-fun res!717408 () Bool)

(assert (=> d!129629 (=> (not res!717408) (not e!615200))))

(assert (=> d!129629 (= res!717408 (or (bvsge #b00000000000000000000000000000000 (size!33722 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33722 _keys!1163)))))))

(declare-fun lt!477972 () ListLongMap!14703)

(assert (=> d!129629 (= lt!477977 lt!477972)))

(declare-fun lt!477967 () Unit!35372)

(assert (=> d!129629 (= lt!477967 e!615198)))

(declare-fun c!108149 () Bool)

(assert (=> d!129629 (= c!108149 e!615193)))

(declare-fun res!717409 () Bool)

(assert (=> d!129629 (=> (not res!717409) (not e!615193))))

(assert (=> d!129629 (= res!717409 (bvslt #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(assert (=> d!129629 (= lt!477972 e!615203)))

(assert (=> d!129629 (= c!108147 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129629 (validMask!0 mask!1515)))

(assert (=> d!129629 (= (getCurrentListMap!4202 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477977)))

(declare-fun b!1076212 () Bool)

(assert (=> b!1076212 (= e!615197 (validKeyInArray!0 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45641 () Bool)

(assert (=> bm!45641 (= call!45641 call!45640)))

(declare-fun b!1076225 () Bool)

(declare-fun res!717411 () Bool)

(assert (=> b!1076225 (=> (not res!717411) (not e!615200))))

(assert (=> b!1076225 (= res!717411 e!615202)))

(declare-fun c!108148 () Bool)

(assert (=> b!1076225 (= c!108148 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!129629 c!108147) b!1076216))

(assert (= (and d!129629 (not c!108147)) b!1076213))

(assert (= (and b!1076213 c!108150) b!1076208))

(assert (= (and b!1076213 (not c!108150)) b!1076219))

(assert (= (and b!1076219 c!108152) b!1076224))

(assert (= (and b!1076219 (not c!108152)) b!1076210))

(assert (= (or b!1076224 b!1076210) bm!45636))

(assert (= (or b!1076208 bm!45636) bm!45638))

(assert (= (or b!1076208 b!1076224) bm!45641))

(assert (= (or b!1076216 bm!45638) bm!45635))

(assert (= (or b!1076216 bm!45641) bm!45637))

(assert (= (and d!129629 res!717409) b!1076207))

(assert (= (and d!129629 c!108149) b!1076218))

(assert (= (and d!129629 (not c!108149)) b!1076223))

(assert (= (and d!129629 res!717408) b!1076215))

(assert (= (and b!1076215 res!717412) b!1076212))

(assert (= (and b!1076215 (not res!717414)) b!1076206))

(assert (= (and b!1076206 res!717410) b!1076222))

(assert (= (and b!1076215 res!717406) b!1076225))

(assert (= (and b!1076225 c!108148) b!1076220))

(assert (= (and b!1076225 (not c!108148)) b!1076217))

(assert (= (and b!1076220 res!717413) b!1076205))

(assert (= (or b!1076220 b!1076217) bm!45640))

(assert (= (and b!1076225 res!717411) b!1076211))

(assert (= (and b!1076211 c!108151) b!1076209))

(assert (= (and b!1076211 (not c!108151)) b!1076221))

(assert (= (and b!1076209 res!717407) b!1076214))

(assert (= (or b!1076209 b!1076221) bm!45639))

(declare-fun b_lambda!16981 () Bool)

(assert (=> (not b_lambda!16981) (not b!1076222)))

(assert (=> b!1076222 t!32664))

(declare-fun b_and!35217 () Bool)

(assert (= b_and!35215 (and (=> t!32664 result!14853) b_and!35217)))

(declare-fun m!995227 () Bool)

(assert (=> b!1076216 m!995227))

(declare-fun m!995229 () Bool)

(assert (=> b!1076218 m!995229))

(declare-fun m!995231 () Bool)

(assert (=> b!1076218 m!995231))

(assert (=> b!1076218 m!995091))

(declare-fun m!995233 () Bool)

(assert (=> b!1076218 m!995233))

(assert (=> b!1076218 m!995179))

(declare-fun m!995235 () Bool)

(assert (=> b!1076218 m!995235))

(declare-fun m!995237 () Bool)

(assert (=> b!1076218 m!995237))

(declare-fun m!995239 () Bool)

(assert (=> b!1076218 m!995239))

(declare-fun m!995241 () Bool)

(assert (=> b!1076218 m!995241))

(declare-fun m!995243 () Bool)

(assert (=> b!1076218 m!995243))

(declare-fun m!995245 () Bool)

(assert (=> b!1076218 m!995245))

(declare-fun m!995247 () Bool)

(assert (=> b!1076218 m!995247))

(declare-fun m!995249 () Bool)

(assert (=> b!1076218 m!995249))

(assert (=> b!1076218 m!995239))

(declare-fun m!995251 () Bool)

(assert (=> b!1076218 m!995251))

(assert (=> b!1076218 m!995231))

(declare-fun m!995253 () Bool)

(assert (=> b!1076218 m!995253))

(declare-fun m!995255 () Bool)

(assert (=> b!1076218 m!995255))

(assert (=> b!1076218 m!995235))

(declare-fun m!995257 () Bool)

(assert (=> b!1076218 m!995257))

(assert (=> b!1076218 m!995243))

(assert (=> bm!45635 m!995091))

(declare-fun m!995259 () Bool)

(assert (=> b!1076205 m!995259))

(assert (=> b!1076206 m!995179))

(assert (=> b!1076206 m!995179))

(declare-fun m!995261 () Bool)

(assert (=> b!1076206 m!995261))

(declare-fun m!995263 () Bool)

(assert (=> bm!45640 m!995263))

(declare-fun m!995265 () Bool)

(assert (=> bm!45639 m!995265))

(assert (=> b!1076212 m!995179))

(assert (=> b!1076212 m!995179))

(assert (=> b!1076212 m!995213))

(declare-fun m!995267 () Bool)

(assert (=> bm!45637 m!995267))

(assert (=> b!1076222 m!995217))

(assert (=> b!1076222 m!995219))

(assert (=> b!1076222 m!995221))

(assert (=> b!1076222 m!995179))

(declare-fun m!995269 () Bool)

(assert (=> b!1076222 m!995269))

(assert (=> b!1076222 m!995219))

(assert (=> b!1076222 m!995179))

(assert (=> b!1076222 m!995217))

(declare-fun m!995271 () Bool)

(assert (=> b!1076214 m!995271))

(assert (=> d!129629 m!995109))

(assert (=> b!1076207 m!995179))

(assert (=> b!1076207 m!995179))

(assert (=> b!1076207 m!995213))

(assert (=> b!1076102 d!129629))

(declare-fun d!129631 () Bool)

(declare-fun e!615204 () Bool)

(assert (=> d!129631 e!615204))

(declare-fun res!717415 () Bool)

(assert (=> d!129631 (=> (not res!717415) (not e!615204))))

(declare-fun lt!477988 () ListLongMap!14703)

(assert (=> d!129631 (= res!717415 (contains!6371 lt!477988 (_1!8371 lt!477861)))))

(declare-fun lt!477985 () List!23296)

(assert (=> d!129631 (= lt!477988 (ListLongMap!14704 lt!477985))))

(declare-fun lt!477987 () Unit!35372)

(declare-fun lt!477986 () Unit!35372)

(assert (=> d!129631 (= lt!477987 lt!477986)))

(assert (=> d!129631 (= (getValueByKey!617 lt!477985 (_1!8371 lt!477861)) (Some!667 (_2!8371 lt!477861)))))

(assert (=> d!129631 (= lt!477986 (lemmaContainsTupThenGetReturnValue!292 lt!477985 (_1!8371 lt!477861) (_2!8371 lt!477861)))))

(assert (=> d!129631 (= lt!477985 (insertStrictlySorted!384 (toList!7367 lt!477857) (_1!8371 lt!477861) (_2!8371 lt!477861)))))

(assert (=> d!129631 (= (+!3190 lt!477857 lt!477861) lt!477988)))

(declare-fun b!1076226 () Bool)

(declare-fun res!717416 () Bool)

(assert (=> b!1076226 (=> (not res!717416) (not e!615204))))

(assert (=> b!1076226 (= res!717416 (= (getValueByKey!617 (toList!7367 lt!477988) (_1!8371 lt!477861)) (Some!667 (_2!8371 lt!477861))))))

(declare-fun b!1076227 () Bool)

(assert (=> b!1076227 (= e!615204 (contains!6373 (toList!7367 lt!477988) lt!477861))))

(assert (= (and d!129631 res!717415) b!1076226))

(assert (= (and b!1076226 res!717416) b!1076227))

(declare-fun m!995273 () Bool)

(assert (=> d!129631 m!995273))

(declare-fun m!995275 () Bool)

(assert (=> d!129631 m!995275))

(declare-fun m!995277 () Bool)

(assert (=> d!129631 m!995277))

(declare-fun m!995279 () Bool)

(assert (=> d!129631 m!995279))

(declare-fun m!995281 () Bool)

(assert (=> b!1076226 m!995281))

(declare-fun m!995283 () Bool)

(assert (=> b!1076227 m!995283))

(assert (=> b!1076102 d!129631))

(declare-fun d!129633 () Bool)

(declare-fun e!615205 () Bool)

(assert (=> d!129633 e!615205))

(declare-fun res!717417 () Bool)

(assert (=> d!129633 (=> (not res!717417) (not e!615205))))

(declare-fun lt!477992 () ListLongMap!14703)

(assert (=> d!129633 (= res!717417 (contains!6371 lt!477992 (_1!8371 (tuple2!16723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun lt!477989 () List!23296)

(assert (=> d!129633 (= lt!477992 (ListLongMap!14704 lt!477989))))

(declare-fun lt!477991 () Unit!35372)

(declare-fun lt!477990 () Unit!35372)

(assert (=> d!129633 (= lt!477991 lt!477990)))

(assert (=> d!129633 (= (getValueByKey!617 lt!477989 (_1!8371 (tuple2!16723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))) (Some!667 (_2!8371 (tuple2!16723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(assert (=> d!129633 (= lt!477990 (lemmaContainsTupThenGetReturnValue!292 lt!477989 (_1!8371 (tuple2!16723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (_2!8371 (tuple2!16723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(assert (=> d!129633 (= lt!477989 (insertStrictlySorted!384 (toList!7367 lt!477857) (_1!8371 (tuple2!16723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (_2!8371 (tuple2!16723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(assert (=> d!129633 (= (+!3190 lt!477857 (tuple2!16723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) lt!477992)))

(declare-fun b!1076228 () Bool)

(declare-fun res!717418 () Bool)

(assert (=> b!1076228 (=> (not res!717418) (not e!615205))))

(assert (=> b!1076228 (= res!717418 (= (getValueByKey!617 (toList!7367 lt!477992) (_1!8371 (tuple2!16723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))) (Some!667 (_2!8371 (tuple2!16723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))))

(declare-fun b!1076229 () Bool)

(assert (=> b!1076229 (= e!615205 (contains!6373 (toList!7367 lt!477992) (tuple2!16723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(assert (= (and d!129633 res!717417) b!1076228))

(assert (= (and b!1076228 res!717418) b!1076229))

(declare-fun m!995285 () Bool)

(assert (=> d!129633 m!995285))

(declare-fun m!995287 () Bool)

(assert (=> d!129633 m!995287))

(declare-fun m!995289 () Bool)

(assert (=> d!129633 m!995289))

(declare-fun m!995291 () Bool)

(assert (=> d!129633 m!995291))

(declare-fun m!995293 () Bool)

(assert (=> b!1076228 m!995293))

(declare-fun m!995295 () Bool)

(assert (=> b!1076229 m!995295))

(assert (=> b!1076102 d!129633))

(declare-fun d!129635 () Bool)

(declare-fun e!615210 () Bool)

(assert (=> d!129635 e!615210))

(declare-fun res!717421 () Bool)

(assert (=> d!129635 (=> res!717421 e!615210)))

(declare-fun lt!478002 () Bool)

(assert (=> d!129635 (= res!717421 (not lt!478002))))

(declare-fun lt!478001 () Bool)

(assert (=> d!129635 (= lt!478002 lt!478001)))

(declare-fun lt!478003 () Unit!35372)

(declare-fun e!615211 () Unit!35372)

(assert (=> d!129635 (= lt!478003 e!615211)))

(declare-fun c!108155 () Bool)

(assert (=> d!129635 (= c!108155 lt!478001)))

(declare-fun containsKey!582 (List!23296 (_ BitVec 64)) Bool)

(assert (=> d!129635 (= lt!478001 (containsKey!582 (toList!7367 (+!3190 lt!477857 lt!477861)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129635 (= (contains!6371 (+!3190 lt!477857 lt!477861) #b0000000000000000000000000000000000000000000000000000000000000000) lt!478002)))

(declare-fun b!1076236 () Bool)

(declare-fun lt!478004 () Unit!35372)

(assert (=> b!1076236 (= e!615211 lt!478004)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!414 (List!23296 (_ BitVec 64)) Unit!35372)

(assert (=> b!1076236 (= lt!478004 (lemmaContainsKeyImpliesGetValueByKeyDefined!414 (toList!7367 (+!3190 lt!477857 lt!477861)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun isDefined!454 (Option!668) Bool)

(assert (=> b!1076236 (isDefined!454 (getValueByKey!617 (toList!7367 (+!3190 lt!477857 lt!477861)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1076237 () Bool)

(declare-fun Unit!35376 () Unit!35372)

(assert (=> b!1076237 (= e!615211 Unit!35376)))

(declare-fun b!1076238 () Bool)

(assert (=> b!1076238 (= e!615210 (isDefined!454 (getValueByKey!617 (toList!7367 (+!3190 lt!477857 lt!477861)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!129635 c!108155) b!1076236))

(assert (= (and d!129635 (not c!108155)) b!1076237))

(assert (= (and d!129635 (not res!717421)) b!1076238))

(declare-fun m!995297 () Bool)

(assert (=> d!129635 m!995297))

(declare-fun m!995299 () Bool)

(assert (=> b!1076236 m!995299))

(declare-fun m!995301 () Bool)

(assert (=> b!1076236 m!995301))

(assert (=> b!1076236 m!995301))

(declare-fun m!995303 () Bool)

(assert (=> b!1076236 m!995303))

(assert (=> b!1076238 m!995301))

(assert (=> b!1076238 m!995301))

(assert (=> b!1076238 m!995303))

(assert (=> b!1076102 d!129635))

(declare-fun d!129637 () Bool)

(assert (=> d!129637 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!95242 d!129637))

(declare-fun d!129639 () Bool)

(assert (=> d!129639 (= (array_inv!25496 _values!955) (bvsge (size!33723 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!95242 d!129639))

(declare-fun d!129641 () Bool)

(assert (=> d!129641 (= (array_inv!25497 _keys!1163) (bvsge (size!33722 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!95242 d!129641))

(declare-fun d!129643 () Bool)

(assert (=> d!129643 (= (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!478007 () Unit!35372)

(declare-fun choose!1764 (array!69010 array!69012 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39851 V!39851 V!39851 V!39851 (_ BitVec 32) Int) Unit!35372)

(assert (=> d!129643 (= lt!478007 (choose!1764 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!129643 (validMask!0 mask!1515)))

(assert (=> d!129643 (= (lemmaNoChangeToArrayThenSameMapNoExtras!911 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!478007)))

(declare-fun bs!31693 () Bool)

(assert (= bs!31693 d!129643))

(assert (=> bs!31693 m!995091))

(assert (=> bs!31693 m!995089))

(declare-fun m!995305 () Bool)

(assert (=> bs!31693 m!995305))

(assert (=> bs!31693 m!995109))

(assert (=> b!1076101 d!129643))

(declare-fun b!1076263 () Bool)

(declare-fun res!717431 () Bool)

(declare-fun e!615228 () Bool)

(assert (=> b!1076263 (=> (not res!717431) (not e!615228))))

(declare-fun lt!478027 () ListLongMap!14703)

(assert (=> b!1076263 (= res!717431 (not (contains!6371 lt!478027 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1076264 () Bool)

(declare-fun e!615227 () ListLongMap!14703)

(assert (=> b!1076264 (= e!615227 (ListLongMap!14704 Nil!23293))))

(declare-fun b!1076265 () Bool)

(assert (=> b!1076265 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(assert (=> b!1076265 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33723 _values!955)))))

(declare-fun e!615230 () Bool)

(assert (=> b!1076265 (= e!615230 (= (apply!977 lt!478027 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)) (get!17257 (select (arr!33186 _values!955) #b00000000000000000000000000000000) (dynLambda!2053 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!45644 () Bool)

(declare-fun call!45647 () ListLongMap!14703)

(assert (=> bm!45644 (= call!45647 (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1076266 () Bool)

(declare-fun e!615229 () ListLongMap!14703)

(assert (=> b!1076266 (= e!615229 call!45647)))

(declare-fun e!615231 () Bool)

(declare-fun b!1076267 () Bool)

(assert (=> b!1076267 (= e!615231 (= lt!478027 (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun d!129645 () Bool)

(assert (=> d!129645 e!615228))

(declare-fun res!717433 () Bool)

(assert (=> d!129645 (=> (not res!717433) (not e!615228))))

(assert (=> d!129645 (= res!717433 (not (contains!6371 lt!478027 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129645 (= lt!478027 e!615227)))

(declare-fun c!108167 () Bool)

(assert (=> d!129645 (= c!108167 (bvsge #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(assert (=> d!129645 (validMask!0 mask!1515)))

(assert (=> d!129645 (= (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!478027)))

(declare-fun b!1076268 () Bool)

(assert (=> b!1076268 (= e!615227 e!615229)))

(declare-fun c!108165 () Bool)

(assert (=> b!1076268 (= c!108165 (validKeyInArray!0 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1076269 () Bool)

(declare-fun lt!478026 () Unit!35372)

(declare-fun lt!478024 () Unit!35372)

(assert (=> b!1076269 (= lt!478026 lt!478024)))

(declare-fun lt!478022 () (_ BitVec 64))

(declare-fun lt!478023 () ListLongMap!14703)

(declare-fun lt!478028 () V!39851)

(declare-fun lt!478025 () (_ BitVec 64))

(assert (=> b!1076269 (not (contains!6371 (+!3190 lt!478023 (tuple2!16723 lt!478022 lt!478028)) lt!478025))))

(declare-fun addStillNotContains!272 (ListLongMap!14703 (_ BitVec 64) V!39851 (_ BitVec 64)) Unit!35372)

(assert (=> b!1076269 (= lt!478024 (addStillNotContains!272 lt!478023 lt!478022 lt!478028 lt!478025))))

(assert (=> b!1076269 (= lt!478025 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1076269 (= lt!478028 (get!17257 (select (arr!33186 _values!955) #b00000000000000000000000000000000) (dynLambda!2053 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1076269 (= lt!478022 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1076269 (= lt!478023 call!45647)))

(assert (=> b!1076269 (= e!615229 (+!3190 call!45647 (tuple2!16723 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000) (get!17257 (select (arr!33186 _values!955) #b00000000000000000000000000000000) (dynLambda!2053 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1076270 () Bool)

(declare-fun e!615226 () Bool)

(assert (=> b!1076270 (= e!615226 e!615231)))

(declare-fun c!108166 () Bool)

(assert (=> b!1076270 (= c!108166 (bvslt #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(declare-fun b!1076271 () Bool)

(declare-fun e!615232 () Bool)

(assert (=> b!1076271 (= e!615232 (validKeyInArray!0 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1076271 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1076272 () Bool)

(assert (=> b!1076272 (= e!615228 e!615226)))

(declare-fun c!108164 () Bool)

(assert (=> b!1076272 (= c!108164 e!615232)))

(declare-fun res!717430 () Bool)

(assert (=> b!1076272 (=> (not res!717430) (not e!615232))))

(assert (=> b!1076272 (= res!717430 (bvslt #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(declare-fun b!1076273 () Bool)

(declare-fun isEmpty!963 (ListLongMap!14703) Bool)

(assert (=> b!1076273 (= e!615231 (isEmpty!963 lt!478027))))

(declare-fun b!1076274 () Bool)

(assert (=> b!1076274 (= e!615226 e!615230)))

(assert (=> b!1076274 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(declare-fun res!717432 () Bool)

(assert (=> b!1076274 (= res!717432 (contains!6371 lt!478027 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1076274 (=> (not res!717432) (not e!615230))))

(assert (= (and d!129645 c!108167) b!1076264))

(assert (= (and d!129645 (not c!108167)) b!1076268))

(assert (= (and b!1076268 c!108165) b!1076269))

(assert (= (and b!1076268 (not c!108165)) b!1076266))

(assert (= (or b!1076269 b!1076266) bm!45644))

(assert (= (and d!129645 res!717433) b!1076263))

(assert (= (and b!1076263 res!717431) b!1076272))

(assert (= (and b!1076272 res!717430) b!1076271))

(assert (= (and b!1076272 c!108164) b!1076274))

(assert (= (and b!1076272 (not c!108164)) b!1076270))

(assert (= (and b!1076274 res!717432) b!1076265))

(assert (= (and b!1076270 c!108166) b!1076267))

(assert (= (and b!1076270 (not c!108166)) b!1076273))

(declare-fun b_lambda!16983 () Bool)

(assert (=> (not b_lambda!16983) (not b!1076265)))

(assert (=> b!1076265 t!32664))

(declare-fun b_and!35219 () Bool)

(assert (= b_and!35217 (and (=> t!32664 result!14853) b_and!35219)))

(declare-fun b_lambda!16985 () Bool)

(assert (=> (not b_lambda!16985) (not b!1076269)))

(assert (=> b!1076269 t!32664))

(declare-fun b_and!35221 () Bool)

(assert (= b_and!35219 (and (=> t!32664 result!14853) b_and!35221)))

(assert (=> b!1076265 m!995219))

(assert (=> b!1076265 m!995179))

(assert (=> b!1076265 m!995217))

(assert (=> b!1076265 m!995219))

(assert (=> b!1076265 m!995221))

(assert (=> b!1076265 m!995217))

(assert (=> b!1076265 m!995179))

(declare-fun m!995307 () Bool)

(assert (=> b!1076265 m!995307))

(declare-fun m!995309 () Bool)

(assert (=> b!1076267 m!995309))

(declare-fun m!995311 () Bool)

(assert (=> b!1076263 m!995311))

(assert (=> b!1076271 m!995179))

(assert (=> b!1076271 m!995179))

(assert (=> b!1076271 m!995213))

(assert (=> bm!45644 m!995309))

(declare-fun m!995313 () Bool)

(assert (=> b!1076273 m!995313))

(declare-fun m!995315 () Bool)

(assert (=> d!129645 m!995315))

(assert (=> d!129645 m!995109))

(assert (=> b!1076269 m!995219))

(declare-fun m!995317 () Bool)

(assert (=> b!1076269 m!995317))

(declare-fun m!995319 () Bool)

(assert (=> b!1076269 m!995319))

(assert (=> b!1076269 m!995179))

(assert (=> b!1076269 m!995217))

(assert (=> b!1076269 m!995219))

(assert (=> b!1076269 m!995221))

(declare-fun m!995321 () Bool)

(assert (=> b!1076269 m!995321))

(assert (=> b!1076269 m!995217))

(assert (=> b!1076269 m!995319))

(declare-fun m!995323 () Bool)

(assert (=> b!1076269 m!995323))

(assert (=> b!1076268 m!995179))

(assert (=> b!1076268 m!995179))

(assert (=> b!1076268 m!995213))

(assert (=> b!1076274 m!995179))

(assert (=> b!1076274 m!995179))

(declare-fun m!995325 () Bool)

(assert (=> b!1076274 m!995325))

(assert (=> b!1076101 d!129645))

(declare-fun b!1076275 () Bool)

(declare-fun res!717435 () Bool)

(declare-fun e!615235 () Bool)

(assert (=> b!1076275 (=> (not res!717435) (not e!615235))))

(declare-fun lt!478034 () ListLongMap!14703)

(assert (=> b!1076275 (= res!717435 (not (contains!6371 lt!478034 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1076276 () Bool)

(declare-fun e!615234 () ListLongMap!14703)

(assert (=> b!1076276 (= e!615234 (ListLongMap!14704 Nil!23293))))

(declare-fun b!1076277 () Bool)

(assert (=> b!1076277 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(assert (=> b!1076277 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33723 _values!955)))))

(declare-fun e!615237 () Bool)

(assert (=> b!1076277 (= e!615237 (= (apply!977 lt!478034 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)) (get!17257 (select (arr!33186 _values!955) #b00000000000000000000000000000000) (dynLambda!2053 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!45645 () Bool)

(declare-fun call!45648 () ListLongMap!14703)

(assert (=> bm!45645 (= call!45648 (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1076278 () Bool)

(declare-fun e!615236 () ListLongMap!14703)

(assert (=> b!1076278 (= e!615236 call!45648)))

(declare-fun b!1076279 () Bool)

(declare-fun e!615238 () Bool)

(assert (=> b!1076279 (= e!615238 (= lt!478034 (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun d!129647 () Bool)

(assert (=> d!129647 e!615235))

(declare-fun res!717437 () Bool)

(assert (=> d!129647 (=> (not res!717437) (not e!615235))))

(assert (=> d!129647 (= res!717437 (not (contains!6371 lt!478034 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129647 (= lt!478034 e!615234)))

(declare-fun c!108171 () Bool)

(assert (=> d!129647 (= c!108171 (bvsge #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(assert (=> d!129647 (validMask!0 mask!1515)))

(assert (=> d!129647 (= (getCurrentListMapNoExtraKeys!3892 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!478034)))

(declare-fun b!1076280 () Bool)

(assert (=> b!1076280 (= e!615234 e!615236)))

(declare-fun c!108169 () Bool)

(assert (=> b!1076280 (= c!108169 (validKeyInArray!0 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1076281 () Bool)

(declare-fun lt!478033 () Unit!35372)

(declare-fun lt!478031 () Unit!35372)

(assert (=> b!1076281 (= lt!478033 lt!478031)))

(declare-fun lt!478032 () (_ BitVec 64))

(declare-fun lt!478035 () V!39851)

(declare-fun lt!478030 () ListLongMap!14703)

(declare-fun lt!478029 () (_ BitVec 64))

(assert (=> b!1076281 (not (contains!6371 (+!3190 lt!478030 (tuple2!16723 lt!478029 lt!478035)) lt!478032))))

(assert (=> b!1076281 (= lt!478031 (addStillNotContains!272 lt!478030 lt!478029 lt!478035 lt!478032))))

(assert (=> b!1076281 (= lt!478032 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1076281 (= lt!478035 (get!17257 (select (arr!33186 _values!955) #b00000000000000000000000000000000) (dynLambda!2053 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1076281 (= lt!478029 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1076281 (= lt!478030 call!45648)))

(assert (=> b!1076281 (= e!615236 (+!3190 call!45648 (tuple2!16723 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000) (get!17257 (select (arr!33186 _values!955) #b00000000000000000000000000000000) (dynLambda!2053 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1076282 () Bool)

(declare-fun e!615233 () Bool)

(assert (=> b!1076282 (= e!615233 e!615238)))

(declare-fun c!108170 () Bool)

(assert (=> b!1076282 (= c!108170 (bvslt #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(declare-fun b!1076283 () Bool)

(declare-fun e!615239 () Bool)

(assert (=> b!1076283 (= e!615239 (validKeyInArray!0 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1076283 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1076284 () Bool)

(assert (=> b!1076284 (= e!615235 e!615233)))

(declare-fun c!108168 () Bool)

(assert (=> b!1076284 (= c!108168 e!615239)))

(declare-fun res!717434 () Bool)

(assert (=> b!1076284 (=> (not res!717434) (not e!615239))))

(assert (=> b!1076284 (= res!717434 (bvslt #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(declare-fun b!1076285 () Bool)

(assert (=> b!1076285 (= e!615238 (isEmpty!963 lt!478034))))

(declare-fun b!1076286 () Bool)

(assert (=> b!1076286 (= e!615233 e!615237)))

(assert (=> b!1076286 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(declare-fun res!717436 () Bool)

(assert (=> b!1076286 (= res!717436 (contains!6371 lt!478034 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1076286 (=> (not res!717436) (not e!615237))))

(assert (= (and d!129647 c!108171) b!1076276))

(assert (= (and d!129647 (not c!108171)) b!1076280))

(assert (= (and b!1076280 c!108169) b!1076281))

(assert (= (and b!1076280 (not c!108169)) b!1076278))

(assert (= (or b!1076281 b!1076278) bm!45645))

(assert (= (and d!129647 res!717437) b!1076275))

(assert (= (and b!1076275 res!717435) b!1076284))

(assert (= (and b!1076284 res!717434) b!1076283))

(assert (= (and b!1076284 c!108168) b!1076286))

(assert (= (and b!1076284 (not c!108168)) b!1076282))

(assert (= (and b!1076286 res!717436) b!1076277))

(assert (= (and b!1076282 c!108170) b!1076279))

(assert (= (and b!1076282 (not c!108170)) b!1076285))

(declare-fun b_lambda!16987 () Bool)

(assert (=> (not b_lambda!16987) (not b!1076277)))

(assert (=> b!1076277 t!32664))

(declare-fun b_and!35223 () Bool)

(assert (= b_and!35221 (and (=> t!32664 result!14853) b_and!35223)))

(declare-fun b_lambda!16989 () Bool)

(assert (=> (not b_lambda!16989) (not b!1076281)))

(assert (=> b!1076281 t!32664))

(declare-fun b_and!35225 () Bool)

(assert (= b_and!35223 (and (=> t!32664 result!14853) b_and!35225)))

(assert (=> b!1076277 m!995219))

(assert (=> b!1076277 m!995179))

(assert (=> b!1076277 m!995217))

(assert (=> b!1076277 m!995219))

(assert (=> b!1076277 m!995221))

(assert (=> b!1076277 m!995217))

(assert (=> b!1076277 m!995179))

(declare-fun m!995327 () Bool)

(assert (=> b!1076277 m!995327))

(declare-fun m!995329 () Bool)

(assert (=> b!1076279 m!995329))

(declare-fun m!995331 () Bool)

(assert (=> b!1076275 m!995331))

(assert (=> b!1076283 m!995179))

(assert (=> b!1076283 m!995179))

(assert (=> b!1076283 m!995213))

(assert (=> bm!45645 m!995329))

(declare-fun m!995333 () Bool)

(assert (=> b!1076285 m!995333))

(declare-fun m!995335 () Bool)

(assert (=> d!129647 m!995335))

(assert (=> d!129647 m!995109))

(assert (=> b!1076281 m!995219))

(declare-fun m!995337 () Bool)

(assert (=> b!1076281 m!995337))

(declare-fun m!995339 () Bool)

(assert (=> b!1076281 m!995339))

(assert (=> b!1076281 m!995179))

(assert (=> b!1076281 m!995217))

(assert (=> b!1076281 m!995219))

(assert (=> b!1076281 m!995221))

(declare-fun m!995341 () Bool)

(assert (=> b!1076281 m!995341))

(assert (=> b!1076281 m!995217))

(assert (=> b!1076281 m!995339))

(declare-fun m!995343 () Bool)

(assert (=> b!1076281 m!995343))

(assert (=> b!1076280 m!995179))

(assert (=> b!1076280 m!995179))

(assert (=> b!1076280 m!995213))

(assert (=> b!1076286 m!995179))

(assert (=> b!1076286 m!995179))

(declare-fun m!995345 () Bool)

(assert (=> b!1076286 m!995345))

(assert (=> b!1076101 d!129647))

(declare-fun b!1076297 () Bool)

(declare-fun e!615249 () Bool)

(declare-fun call!45651 () Bool)

(assert (=> b!1076297 (= e!615249 call!45651)))

(declare-fun d!129649 () Bool)

(declare-fun res!717446 () Bool)

(declare-fun e!615250 () Bool)

(assert (=> d!129649 (=> res!717446 e!615250)))

(assert (=> d!129649 (= res!717446 (bvsge #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(assert (=> d!129649 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23292) e!615250)))

(declare-fun bm!45648 () Bool)

(declare-fun c!108174 () Bool)

(assert (=> bm!45648 (= call!45651 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108174 (Cons!23291 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000) Nil!23292) Nil!23292)))))

(declare-fun b!1076298 () Bool)

(assert (=> b!1076298 (= e!615249 call!45651)))

(declare-fun b!1076299 () Bool)

(declare-fun e!615251 () Bool)

(declare-fun contains!6374 (List!23295 (_ BitVec 64)) Bool)

(assert (=> b!1076299 (= e!615251 (contains!6374 Nil!23292 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1076300 () Bool)

(declare-fun e!615248 () Bool)

(assert (=> b!1076300 (= e!615248 e!615249)))

(assert (=> b!1076300 (= c!108174 (validKeyInArray!0 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1076301 () Bool)

(assert (=> b!1076301 (= e!615250 e!615248)))

(declare-fun res!717445 () Bool)

(assert (=> b!1076301 (=> (not res!717445) (not e!615248))))

(assert (=> b!1076301 (= res!717445 (not e!615251))))

(declare-fun res!717444 () Bool)

(assert (=> b!1076301 (=> (not res!717444) (not e!615251))))

(assert (=> b!1076301 (= res!717444 (validKeyInArray!0 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!129649 (not res!717446)) b!1076301))

(assert (= (and b!1076301 res!717444) b!1076299))

(assert (= (and b!1076301 res!717445) b!1076300))

(assert (= (and b!1076300 c!108174) b!1076297))

(assert (= (and b!1076300 (not c!108174)) b!1076298))

(assert (= (or b!1076297 b!1076298) bm!45648))

(assert (=> bm!45648 m!995179))

(declare-fun m!995347 () Bool)

(assert (=> bm!45648 m!995347))

(assert (=> b!1076299 m!995179))

(assert (=> b!1076299 m!995179))

(declare-fun m!995349 () Bool)

(assert (=> b!1076299 m!995349))

(assert (=> b!1076300 m!995179))

(assert (=> b!1076300 m!995179))

(assert (=> b!1076300 m!995213))

(assert (=> b!1076301 m!995179))

(assert (=> b!1076301 m!995179))

(assert (=> b!1076301 m!995213))

(assert (=> b!1076096 d!129649))

(declare-fun bm!45651 () Bool)

(declare-fun call!45654 () Bool)

(assert (=> bm!45651 (= call!45654 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1076310 () Bool)

(declare-fun e!615258 () Bool)

(assert (=> b!1076310 (= e!615258 call!45654)))

(declare-fun b!1076311 () Bool)

(declare-fun e!615259 () Bool)

(assert (=> b!1076311 (= e!615259 call!45654)))

(declare-fun d!129651 () Bool)

(declare-fun res!717452 () Bool)

(declare-fun e!615260 () Bool)

(assert (=> d!129651 (=> res!717452 e!615260)))

(assert (=> d!129651 (= res!717452 (bvsge #b00000000000000000000000000000000 (size!33722 _keys!1163)))))

(assert (=> d!129651 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!615260)))

(declare-fun b!1076312 () Bool)

(assert (=> b!1076312 (= e!615260 e!615259)))

(declare-fun c!108177 () Bool)

(assert (=> b!1076312 (= c!108177 (validKeyInArray!0 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1076313 () Bool)

(assert (=> b!1076313 (= e!615259 e!615258)))

(declare-fun lt!478043 () (_ BitVec 64))

(assert (=> b!1076313 (= lt!478043 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!478044 () Unit!35372)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69010 (_ BitVec 64) (_ BitVec 32)) Unit!35372)

(assert (=> b!1076313 (= lt!478044 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!478043 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!69010 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1076313 (arrayContainsKey!0 _keys!1163 lt!478043 #b00000000000000000000000000000000)))

(declare-fun lt!478042 () Unit!35372)

(assert (=> b!1076313 (= lt!478042 lt!478044)))

(declare-fun res!717451 () Bool)

(declare-datatypes ((SeekEntryResult!9892 0))(
  ( (MissingZero!9892 (index!41938 (_ BitVec 32))) (Found!9892 (index!41939 (_ BitVec 32))) (Intermediate!9892 (undefined!10704 Bool) (index!41940 (_ BitVec 32)) (x!96434 (_ BitVec 32))) (Undefined!9892) (MissingVacant!9892 (index!41941 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!69010 (_ BitVec 32)) SeekEntryResult!9892)

(assert (=> b!1076313 (= res!717451 (= (seekEntryOrOpen!0 (select (arr!33185 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9892 #b00000000000000000000000000000000)))))

(assert (=> b!1076313 (=> (not res!717451) (not e!615258))))

(assert (= (and d!129651 (not res!717452)) b!1076312))

(assert (= (and b!1076312 c!108177) b!1076313))

(assert (= (and b!1076312 (not c!108177)) b!1076311))

(assert (= (and b!1076313 res!717451) b!1076310))

(assert (= (or b!1076310 b!1076311) bm!45651))

(declare-fun m!995351 () Bool)

(assert (=> bm!45651 m!995351))

(assert (=> b!1076312 m!995179))

(assert (=> b!1076312 m!995179))

(assert (=> b!1076312 m!995213))

(assert (=> b!1076313 m!995179))

(declare-fun m!995353 () Bool)

(assert (=> b!1076313 m!995353))

(declare-fun m!995355 () Bool)

(assert (=> b!1076313 m!995355))

(assert (=> b!1076313 m!995179))

(declare-fun m!995357 () Bool)

(assert (=> b!1076313 m!995357))

(assert (=> b!1076104 d!129651))

(declare-fun mapNonEmpty!40804 () Bool)

(declare-fun mapRes!40804 () Bool)

(declare-fun tp!78186 () Bool)

(declare-fun e!615265 () Bool)

(assert (=> mapNonEmpty!40804 (= mapRes!40804 (and tp!78186 e!615265))))

(declare-fun mapRest!40804 () (Array (_ BitVec 32) ValueCell!12315))

(declare-fun mapValue!40804 () ValueCell!12315)

(declare-fun mapKey!40804 () (_ BitVec 32))

(assert (=> mapNonEmpty!40804 (= mapRest!40798 (store mapRest!40804 mapKey!40804 mapValue!40804))))

(declare-fun condMapEmpty!40804 () Bool)

(declare-fun mapDefault!40804 () ValueCell!12315)

(assert (=> mapNonEmpty!40798 (= condMapEmpty!40804 (= mapRest!40798 ((as const (Array (_ BitVec 32) ValueCell!12315)) mapDefault!40804)))))

(declare-fun e!615266 () Bool)

(assert (=> mapNonEmpty!40798 (= tp!78177 (and e!615266 mapRes!40804))))

(declare-fun b!1076320 () Bool)

(assert (=> b!1076320 (= e!615265 tp_is_empty!26037)))

(declare-fun mapIsEmpty!40804 () Bool)

(assert (=> mapIsEmpty!40804 mapRes!40804))

(declare-fun b!1076321 () Bool)

(assert (=> b!1076321 (= e!615266 tp_is_empty!26037)))

(assert (= (and mapNonEmpty!40798 condMapEmpty!40804) mapIsEmpty!40804))

(assert (= (and mapNonEmpty!40798 (not condMapEmpty!40804)) mapNonEmpty!40804))

(assert (= (and mapNonEmpty!40804 ((_ is ValueCellFull!12315) mapValue!40804)) b!1076320))

(assert (= (and mapNonEmpty!40798 ((_ is ValueCellFull!12315) mapDefault!40804)) b!1076321))

(declare-fun m!995359 () Bool)

(assert (=> mapNonEmpty!40804 m!995359))

(declare-fun b_lambda!16991 () Bool)

(assert (= b_lambda!16981 (or (and start!95242 b_free!22227) b_lambda!16991)))

(declare-fun b_lambda!16993 () Bool)

(assert (= b_lambda!16983 (or (and start!95242 b_free!22227) b_lambda!16993)))

(declare-fun b_lambda!16995 () Bool)

(assert (= b_lambda!16979 (or (and start!95242 b_free!22227) b_lambda!16995)))

(declare-fun b_lambda!16997 () Bool)

(assert (= b_lambda!16985 (or (and start!95242 b_free!22227) b_lambda!16997)))

(declare-fun b_lambda!16999 () Bool)

(assert (= b_lambda!16989 (or (and start!95242 b_free!22227) b_lambda!16999)))

(declare-fun b_lambda!17001 () Bool)

(assert (= b_lambda!16987 (or (and start!95242 b_free!22227) b_lambda!17001)))

(check-sat (not b_lambda!16999) (not b!1076268) (not d!129645) (not b!1076274) (not b!1076205) (not b!1076267) b_and!35225 (not bm!45645) (not bm!45630) (not d!129629) (not b!1076189) (not b!1076138) (not b!1076207) (not b!1076273) (not b_lambda!16993) (not b!1076137) (not b!1076300) (not b!1076280) (not b!1076271) (not b_lambda!17001) (not b!1076263) (not b!1076265) (not b!1076299) (not b_lambda!16997) (not b!1076277) (not b!1076136) (not b!1076279) (not b!1076214) (not bm!45635) (not b!1076216) (not mapNonEmpty!40804) (not b!1076236) (not d!129635) (not d!129627) (not b!1076183) (not b!1076313) (not b!1076281) (not b!1076312) (not d!129625) (not bm!45640) (not bm!45628) (not b!1076212) (not bm!45639) (not b!1076199) tp_is_empty!26037 (not b!1076228) (not b!1076283) (not b!1076227) (not b!1076193) (not b!1076206) (not d!129633) (not b_lambda!16991) (not b!1076226) (not b!1076269) (not bm!45648) (not b!1076182) (not bm!45637) (not b!1076191) (not b_next!22227) (not bm!45632) (not b!1076275) (not b!1076285) (not bm!45651) (not b_lambda!16995) (not d!129643) (not d!129647) (not b!1076229) (not b!1076195) (not b!1076218) (not b!1076222) (not b!1076238) (not b!1076139) (not b!1076286) (not b!1076301) (not bm!45633) (not b!1076184) (not d!129623) (not bm!45644) (not d!129631))
(check-sat b_and!35225 (not b_next!22227))
