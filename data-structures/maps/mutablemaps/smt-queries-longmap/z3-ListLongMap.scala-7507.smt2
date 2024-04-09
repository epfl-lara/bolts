; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95218 () Bool)

(assert start!95218)

(declare-fun b_free!22221 () Bool)

(declare-fun b_next!22221 () Bool)

(assert (=> start!95218 (= b_free!22221 (not b_next!22221))))

(declare-fun tp!78155 () Bool)

(declare-fun b_and!35193 () Bool)

(assert (=> start!95218 (= tp!78155 b_and!35193)))

(declare-fun mapIsEmpty!40786 () Bool)

(declare-fun mapRes!40786 () Bool)

(assert (=> mapIsEmpty!40786 mapRes!40786))

(declare-fun b!1075832 () Bool)

(declare-fun e!614947 () Bool)

(declare-fun e!614944 () Bool)

(assert (=> b!1075832 (= e!614947 (not e!614944))))

(declare-fun res!717217 () Bool)

(assert (=> b!1075832 (=> res!717217 e!614944)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1075832 (= res!717217 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!614943 () Bool)

(assert (=> b!1075832 e!614943))

(declare-fun res!717215 () Bool)

(assert (=> b!1075832 (=> (not res!717215) (not e!614943))))

(declare-datatypes ((V!39843 0))(
  ( (V!39844 (val!13066 Int)) )
))
(declare-datatypes ((tuple2!16718 0))(
  ( (tuple2!16719 (_1!8369 (_ BitVec 64)) (_2!8369 V!39843)) )
))
(declare-datatypes ((List!23291 0))(
  ( (Nil!23288) (Cons!23287 (h!24496 tuple2!16718) (t!32653 List!23291)) )
))
(declare-datatypes ((ListLongMap!14699 0))(
  ( (ListLongMap!14700 (toList!7365 List!23291)) )
))
(declare-fun lt!477667 () ListLongMap!14699)

(declare-fun lt!477669 () ListLongMap!14699)

(assert (=> b!1075832 (= res!717215 (= lt!477667 lt!477669))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39843)

(declare-datatypes ((ValueCell!12312 0))(
  ( (ValueCellFull!12312 (v!15693 V!39843)) (EmptyCell!12312) )
))
(declare-datatypes ((array!68996 0))(
  ( (array!68997 (arr!33179 (Array (_ BitVec 32) ValueCell!12312)) (size!33716 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68996)

(declare-datatypes ((Unit!35366 0))(
  ( (Unit!35367) )
))
(declare-fun lt!477668 () Unit!35366)

(declare-fun minValue!907 () V!39843)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39843)

(declare-datatypes ((array!68998 0))(
  ( (array!68999 (arr!33180 (Array (_ BitVec 32) (_ BitVec 64))) (size!33717 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68998)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!909 (array!68998 array!68996 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39843 V!39843 V!39843 V!39843 (_ BitVec 32) Int) Unit!35366)

(assert (=> b!1075832 (= lt!477668 (lemmaNoChangeToArrayThenSameMapNoExtras!909 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3890 (array!68998 array!68996 (_ BitVec 32) (_ BitVec 32) V!39843 V!39843 (_ BitVec 32) Int) ListLongMap!14699)

(assert (=> b!1075832 (= lt!477669 (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1075832 (= lt!477667 (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1075833 () Bool)

(declare-fun e!614945 () Bool)

(declare-fun getCurrentListMap!4201 (array!68998 array!68996 (_ BitVec 32) (_ BitVec 32) V!39843 V!39843 (_ BitVec 32) Int) ListLongMap!14699)

(declare-fun +!3188 (ListLongMap!14699 tuple2!16718) ListLongMap!14699)

(assert (=> b!1075833 (= e!614945 (= (getCurrentListMap!4201 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (+!3188 (+!3188 lt!477667 (tuple2!16719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1075834 () Bool)

(assert (=> b!1075834 (= e!614943 e!614945)))

(declare-fun res!717213 () Bool)

(assert (=> b!1075834 (=> res!717213 e!614945)))

(assert (=> b!1075834 (= res!717213 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1075835 () Bool)

(declare-fun res!717214 () Bool)

(assert (=> b!1075835 (=> (not res!717214) (not e!614947))))

(declare-datatypes ((List!23292 0))(
  ( (Nil!23289) (Cons!23288 (h!24497 (_ BitVec 64)) (t!32654 List!23292)) )
))
(declare-fun arrayNoDuplicates!0 (array!68998 (_ BitVec 32) List!23292) Bool)

(assert (=> b!1075835 (= res!717214 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23289))))

(declare-fun b!1075836 () Bool)

(declare-fun e!614942 () Bool)

(declare-fun e!614941 () Bool)

(assert (=> b!1075836 (= e!614942 (and e!614941 mapRes!40786))))

(declare-fun condMapEmpty!40786 () Bool)

(declare-fun mapDefault!40786 () ValueCell!12312)

(assert (=> b!1075836 (= condMapEmpty!40786 (= (arr!33179 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12312)) mapDefault!40786)))))

(declare-fun mapNonEmpty!40786 () Bool)

(declare-fun tp!78156 () Bool)

(declare-fun e!614946 () Bool)

(assert (=> mapNonEmpty!40786 (= mapRes!40786 (and tp!78156 e!614946))))

(declare-fun mapRest!40786 () (Array (_ BitVec 32) ValueCell!12312))

(declare-fun mapKey!40786 () (_ BitVec 32))

(declare-fun mapValue!40786 () ValueCell!12312)

(assert (=> mapNonEmpty!40786 (= (arr!33179 _values!955) (store mapRest!40786 mapKey!40786 mapValue!40786))))

(declare-fun b!1075837 () Bool)

(declare-fun res!717212 () Bool)

(assert (=> b!1075837 (=> (not res!717212) (not e!614947))))

(assert (=> b!1075837 (= res!717212 (and (= (size!33716 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33717 _keys!1163) (size!33716 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1075838 () Bool)

(declare-fun tp_is_empty!26031 () Bool)

(assert (=> b!1075838 (= e!614946 tp_is_empty!26031)))

(declare-fun b!1075839 () Bool)

(declare-fun res!717216 () Bool)

(assert (=> b!1075839 (=> (not res!717216) (not e!614947))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68998 (_ BitVec 32)) Bool)

(assert (=> b!1075839 (= res!717216 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!717218 () Bool)

(assert (=> start!95218 (=> (not res!717218) (not e!614947))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95218 (= res!717218 (validMask!0 mask!1515))))

(assert (=> start!95218 e!614947))

(assert (=> start!95218 true))

(assert (=> start!95218 tp_is_empty!26031))

(declare-fun array_inv!25494 (array!68996) Bool)

(assert (=> start!95218 (and (array_inv!25494 _values!955) e!614942)))

(assert (=> start!95218 tp!78155))

(declare-fun array_inv!25495 (array!68998) Bool)

(assert (=> start!95218 (array_inv!25495 _keys!1163)))

(declare-fun b!1075840 () Bool)

(assert (=> b!1075840 (= e!614944 (= (getCurrentListMap!4201 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (+!3188 lt!477669 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1075841 () Bool)

(assert (=> b!1075841 (= e!614941 tp_is_empty!26031)))

(assert (= (and start!95218 res!717218) b!1075837))

(assert (= (and b!1075837 res!717212) b!1075839))

(assert (= (and b!1075839 res!717216) b!1075835))

(assert (= (and b!1075835 res!717214) b!1075832))

(assert (= (and b!1075832 res!717215) b!1075834))

(assert (= (and b!1075834 (not res!717213)) b!1075833))

(assert (= (and b!1075832 (not res!717217)) b!1075840))

(assert (= (and b!1075836 condMapEmpty!40786) mapIsEmpty!40786))

(assert (= (and b!1075836 (not condMapEmpty!40786)) mapNonEmpty!40786))

(get-info :version)

(assert (= (and mapNonEmpty!40786 ((_ is ValueCellFull!12312) mapValue!40786)) b!1075838))

(assert (= (and b!1075836 ((_ is ValueCellFull!12312) mapDefault!40786)) b!1075841))

(assert (= start!95218 b!1075836))

(declare-fun m!994801 () Bool)

(assert (=> b!1075839 m!994801))

(declare-fun m!994803 () Bool)

(assert (=> b!1075832 m!994803))

(declare-fun m!994805 () Bool)

(assert (=> b!1075832 m!994805))

(declare-fun m!994807 () Bool)

(assert (=> b!1075832 m!994807))

(declare-fun m!994809 () Bool)

(assert (=> b!1075833 m!994809))

(declare-fun m!994811 () Bool)

(assert (=> b!1075833 m!994811))

(assert (=> b!1075833 m!994811))

(declare-fun m!994813 () Bool)

(assert (=> b!1075833 m!994813))

(declare-fun m!994815 () Bool)

(assert (=> b!1075840 m!994815))

(declare-fun m!994817 () Bool)

(assert (=> b!1075840 m!994817))

(declare-fun m!994819 () Bool)

(assert (=> mapNonEmpty!40786 m!994819))

(declare-fun m!994821 () Bool)

(assert (=> start!95218 m!994821))

(declare-fun m!994823 () Bool)

(assert (=> start!95218 m!994823))

(declare-fun m!994825 () Bool)

(assert (=> start!95218 m!994825))

(declare-fun m!994827 () Bool)

(assert (=> b!1075835 m!994827))

(check-sat tp_is_empty!26031 (not b!1075835) b_and!35193 (not mapNonEmpty!40786) (not b!1075833) (not start!95218) (not b!1075840) (not b!1075839) (not b!1075832) (not b_next!22221))
(check-sat b_and!35193 (not b_next!22221))
(get-model)

(declare-fun d!129595 () Bool)

(assert (=> d!129595 (= (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477681 () Unit!35366)

(declare-fun choose!1763 (array!68998 array!68996 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39843 V!39843 V!39843 V!39843 (_ BitVec 32) Int) Unit!35366)

(assert (=> d!129595 (= lt!477681 (choose!1763 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!129595 (validMask!0 mask!1515)))

(assert (=> d!129595 (= (lemmaNoChangeToArrayThenSameMapNoExtras!909 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477681)))

(declare-fun bs!31689 () Bool)

(assert (= bs!31689 d!129595))

(assert (=> bs!31689 m!994807))

(assert (=> bs!31689 m!994805))

(declare-fun m!994857 () Bool)

(assert (=> bs!31689 m!994857))

(assert (=> bs!31689 m!994821))

(assert (=> b!1075832 d!129595))

(declare-fun b!1075896 () Bool)

(declare-fun e!614992 () Bool)

(declare-fun e!614989 () Bool)

(assert (=> b!1075896 (= e!614992 e!614989)))

(declare-fun c!108091 () Bool)

(declare-fun e!614993 () Bool)

(assert (=> b!1075896 (= c!108091 e!614993)))

(declare-fun res!717248 () Bool)

(assert (=> b!1075896 (=> (not res!717248) (not e!614993))))

(assert (=> b!1075896 (= res!717248 (bvslt #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(declare-fun b!1075897 () Bool)

(declare-fun e!614988 () Bool)

(assert (=> b!1075897 (= e!614989 e!614988)))

(assert (=> b!1075897 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(declare-fun res!717249 () Bool)

(declare-fun lt!477701 () ListLongMap!14699)

(declare-fun contains!6368 (ListLongMap!14699 (_ BitVec 64)) Bool)

(assert (=> b!1075897 (= res!717249 (contains!6368 lt!477701 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075897 (=> (not res!717249) (not e!614988))))

(declare-fun b!1075898 () Bool)

(declare-fun e!614987 () Bool)

(assert (=> b!1075898 (= e!614989 e!614987)))

(declare-fun c!108094 () Bool)

(assert (=> b!1075898 (= c!108094 (bvslt #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(declare-fun d!129597 () Bool)

(assert (=> d!129597 e!614992))

(declare-fun res!717250 () Bool)

(assert (=> d!129597 (=> (not res!717250) (not e!614992))))

(assert (=> d!129597 (= res!717250 (not (contains!6368 lt!477701 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!614990 () ListLongMap!14699)

(assert (=> d!129597 (= lt!477701 e!614990)))

(declare-fun c!108092 () Bool)

(assert (=> d!129597 (= c!108092 (bvsge #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(assert (=> d!129597 (validMask!0 mask!1515)))

(assert (=> d!129597 (= (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477701)))

(declare-fun bm!45578 () Bool)

(declare-fun call!45581 () ListLongMap!14699)

(assert (=> bm!45578 (= call!45581 (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1075899 () Bool)

(declare-fun res!717251 () Bool)

(assert (=> b!1075899 (=> (not res!717251) (not e!614992))))

(assert (=> b!1075899 (= res!717251 (not (contains!6368 lt!477701 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1075900 () Bool)

(declare-fun e!614991 () ListLongMap!14699)

(assert (=> b!1075900 (= e!614991 call!45581)))

(declare-fun b!1075901 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1075901 (= e!614993 (validKeyInArray!0 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075901 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1075902 () Bool)

(assert (=> b!1075902 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(assert (=> b!1075902 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33716 _values!955)))))

(declare-fun apply!976 (ListLongMap!14699 (_ BitVec 64)) V!39843)

(declare-fun get!17254 (ValueCell!12312 V!39843) V!39843)

(declare-fun dynLambda!2052 (Int (_ BitVec 64)) V!39843)

(assert (=> b!1075902 (= e!614988 (= (apply!976 lt!477701 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)) (get!17254 (select (arr!33179 _values!955) #b00000000000000000000000000000000) (dynLambda!2052 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1075903 () Bool)

(assert (=> b!1075903 (= e!614990 e!614991)))

(declare-fun c!108093 () Bool)

(assert (=> b!1075903 (= c!108093 (validKeyInArray!0 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075904 () Bool)

(declare-fun lt!477702 () Unit!35366)

(declare-fun lt!477697 () Unit!35366)

(assert (=> b!1075904 (= lt!477702 lt!477697)))

(declare-fun lt!477699 () ListLongMap!14699)

(declare-fun lt!477698 () V!39843)

(declare-fun lt!477696 () (_ BitVec 64))

(declare-fun lt!477700 () (_ BitVec 64))

(assert (=> b!1075904 (not (contains!6368 (+!3188 lt!477699 (tuple2!16719 lt!477696 lt!477698)) lt!477700))))

(declare-fun addStillNotContains!271 (ListLongMap!14699 (_ BitVec 64) V!39843 (_ BitVec 64)) Unit!35366)

(assert (=> b!1075904 (= lt!477697 (addStillNotContains!271 lt!477699 lt!477696 lt!477698 lt!477700))))

(assert (=> b!1075904 (= lt!477700 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1075904 (= lt!477698 (get!17254 (select (arr!33179 _values!955) #b00000000000000000000000000000000) (dynLambda!2052 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1075904 (= lt!477696 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1075904 (= lt!477699 call!45581)))

(assert (=> b!1075904 (= e!614991 (+!3188 call!45581 (tuple2!16719 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000) (get!17254 (select (arr!33179 _values!955) #b00000000000000000000000000000000) (dynLambda!2052 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1075905 () Bool)

(assert (=> b!1075905 (= e!614987 (= lt!477701 (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1075906 () Bool)

(assert (=> b!1075906 (= e!614990 (ListLongMap!14700 Nil!23288))))

(declare-fun b!1075907 () Bool)

(declare-fun isEmpty!962 (ListLongMap!14699) Bool)

(assert (=> b!1075907 (= e!614987 (isEmpty!962 lt!477701))))

(assert (= (and d!129597 c!108092) b!1075906))

(assert (= (and d!129597 (not c!108092)) b!1075903))

(assert (= (and b!1075903 c!108093) b!1075904))

(assert (= (and b!1075903 (not c!108093)) b!1075900))

(assert (= (or b!1075904 b!1075900) bm!45578))

(assert (= (and d!129597 res!717250) b!1075899))

(assert (= (and b!1075899 res!717251) b!1075896))

(assert (= (and b!1075896 res!717248) b!1075901))

(assert (= (and b!1075896 c!108091) b!1075897))

(assert (= (and b!1075896 (not c!108091)) b!1075898))

(assert (= (and b!1075897 res!717249) b!1075902))

(assert (= (and b!1075898 c!108094) b!1075905))

(assert (= (and b!1075898 (not c!108094)) b!1075907))

(declare-fun b_lambda!16955 () Bool)

(assert (=> (not b_lambda!16955) (not b!1075902)))

(declare-fun t!32657 () Bool)

(declare-fun tb!7185 () Bool)

(assert (=> (and start!95218 (= defaultEntry!963 defaultEntry!963) t!32657) tb!7185))

(declare-fun result!14847 () Bool)

(assert (=> tb!7185 (= result!14847 tp_is_empty!26031)))

(assert (=> b!1075902 t!32657))

(declare-fun b_and!35197 () Bool)

(assert (= b_and!35193 (and (=> t!32657 result!14847) b_and!35197)))

(declare-fun b_lambda!16957 () Bool)

(assert (=> (not b_lambda!16957) (not b!1075904)))

(assert (=> b!1075904 t!32657))

(declare-fun b_and!35199 () Bool)

(assert (= b_and!35197 (and (=> t!32657 result!14847) b_and!35199)))

(declare-fun m!994859 () Bool)

(assert (=> b!1075904 m!994859))

(declare-fun m!994861 () Bool)

(assert (=> b!1075904 m!994861))

(declare-fun m!994863 () Bool)

(assert (=> b!1075904 m!994863))

(declare-fun m!994865 () Bool)

(assert (=> b!1075904 m!994865))

(declare-fun m!994867 () Bool)

(assert (=> b!1075904 m!994867))

(declare-fun m!994869 () Bool)

(assert (=> b!1075904 m!994869))

(assert (=> b!1075904 m!994869))

(assert (=> b!1075904 m!994867))

(declare-fun m!994871 () Bool)

(assert (=> b!1075904 m!994871))

(assert (=> b!1075904 m!994861))

(declare-fun m!994873 () Bool)

(assert (=> b!1075904 m!994873))

(declare-fun m!994875 () Bool)

(assert (=> b!1075899 m!994875))

(assert (=> b!1075903 m!994865))

(assert (=> b!1075903 m!994865))

(declare-fun m!994877 () Bool)

(assert (=> b!1075903 m!994877))

(declare-fun m!994879 () Bool)

(assert (=> b!1075905 m!994879))

(assert (=> b!1075902 m!994865))

(declare-fun m!994881 () Bool)

(assert (=> b!1075902 m!994881))

(assert (=> b!1075902 m!994869))

(assert (=> b!1075902 m!994867))

(assert (=> b!1075902 m!994871))

(assert (=> b!1075902 m!994865))

(assert (=> b!1075902 m!994867))

(assert (=> b!1075902 m!994869))

(assert (=> b!1075901 m!994865))

(assert (=> b!1075901 m!994865))

(assert (=> b!1075901 m!994877))

(declare-fun m!994883 () Bool)

(assert (=> b!1075907 m!994883))

(declare-fun m!994885 () Bool)

(assert (=> d!129597 m!994885))

(assert (=> d!129597 m!994821))

(assert (=> b!1075897 m!994865))

(assert (=> b!1075897 m!994865))

(declare-fun m!994887 () Bool)

(assert (=> b!1075897 m!994887))

(assert (=> bm!45578 m!994879))

(assert (=> b!1075832 d!129597))

(declare-fun b!1075910 () Bool)

(declare-fun e!614999 () Bool)

(declare-fun e!614996 () Bool)

(assert (=> b!1075910 (= e!614999 e!614996)))

(declare-fun c!108095 () Bool)

(declare-fun e!615000 () Bool)

(assert (=> b!1075910 (= c!108095 e!615000)))

(declare-fun res!717252 () Bool)

(assert (=> b!1075910 (=> (not res!717252) (not e!615000))))

(assert (=> b!1075910 (= res!717252 (bvslt #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(declare-fun b!1075911 () Bool)

(declare-fun e!614995 () Bool)

(assert (=> b!1075911 (= e!614996 e!614995)))

(assert (=> b!1075911 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(declare-fun res!717253 () Bool)

(declare-fun lt!477708 () ListLongMap!14699)

(assert (=> b!1075911 (= res!717253 (contains!6368 lt!477708 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075911 (=> (not res!717253) (not e!614995))))

(declare-fun b!1075912 () Bool)

(declare-fun e!614994 () Bool)

(assert (=> b!1075912 (= e!614996 e!614994)))

(declare-fun c!108098 () Bool)

(assert (=> b!1075912 (= c!108098 (bvslt #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(declare-fun d!129599 () Bool)

(assert (=> d!129599 e!614999))

(declare-fun res!717254 () Bool)

(assert (=> d!129599 (=> (not res!717254) (not e!614999))))

(assert (=> d!129599 (= res!717254 (not (contains!6368 lt!477708 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!614997 () ListLongMap!14699)

(assert (=> d!129599 (= lt!477708 e!614997)))

(declare-fun c!108096 () Bool)

(assert (=> d!129599 (= c!108096 (bvsge #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(assert (=> d!129599 (validMask!0 mask!1515)))

(assert (=> d!129599 (= (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477708)))

(declare-fun call!45582 () ListLongMap!14699)

(declare-fun bm!45579 () Bool)

(assert (=> bm!45579 (= call!45582 (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1075913 () Bool)

(declare-fun res!717255 () Bool)

(assert (=> b!1075913 (=> (not res!717255) (not e!614999))))

(assert (=> b!1075913 (= res!717255 (not (contains!6368 lt!477708 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1075914 () Bool)

(declare-fun e!614998 () ListLongMap!14699)

(assert (=> b!1075914 (= e!614998 call!45582)))

(declare-fun b!1075915 () Bool)

(assert (=> b!1075915 (= e!615000 (validKeyInArray!0 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075915 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1075916 () Bool)

(assert (=> b!1075916 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(assert (=> b!1075916 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33716 _values!955)))))

(assert (=> b!1075916 (= e!614995 (= (apply!976 lt!477708 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)) (get!17254 (select (arr!33179 _values!955) #b00000000000000000000000000000000) (dynLambda!2052 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1075917 () Bool)

(assert (=> b!1075917 (= e!614997 e!614998)))

(declare-fun c!108097 () Bool)

(assert (=> b!1075917 (= c!108097 (validKeyInArray!0 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075918 () Bool)

(declare-fun lt!477709 () Unit!35366)

(declare-fun lt!477704 () Unit!35366)

(assert (=> b!1075918 (= lt!477709 lt!477704)))

(declare-fun lt!477707 () (_ BitVec 64))

(declare-fun lt!477705 () V!39843)

(declare-fun lt!477706 () ListLongMap!14699)

(declare-fun lt!477703 () (_ BitVec 64))

(assert (=> b!1075918 (not (contains!6368 (+!3188 lt!477706 (tuple2!16719 lt!477703 lt!477705)) lt!477707))))

(assert (=> b!1075918 (= lt!477704 (addStillNotContains!271 lt!477706 lt!477703 lt!477705 lt!477707))))

(assert (=> b!1075918 (= lt!477707 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1075918 (= lt!477705 (get!17254 (select (arr!33179 _values!955) #b00000000000000000000000000000000) (dynLambda!2052 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1075918 (= lt!477703 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1075918 (= lt!477706 call!45582)))

(assert (=> b!1075918 (= e!614998 (+!3188 call!45582 (tuple2!16719 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000) (get!17254 (select (arr!33179 _values!955) #b00000000000000000000000000000000) (dynLambda!2052 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1075919 () Bool)

(assert (=> b!1075919 (= e!614994 (= lt!477708 (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1075920 () Bool)

(assert (=> b!1075920 (= e!614997 (ListLongMap!14700 Nil!23288))))

(declare-fun b!1075921 () Bool)

(assert (=> b!1075921 (= e!614994 (isEmpty!962 lt!477708))))

(assert (= (and d!129599 c!108096) b!1075920))

(assert (= (and d!129599 (not c!108096)) b!1075917))

(assert (= (and b!1075917 c!108097) b!1075918))

(assert (= (and b!1075917 (not c!108097)) b!1075914))

(assert (= (or b!1075918 b!1075914) bm!45579))

(assert (= (and d!129599 res!717254) b!1075913))

(assert (= (and b!1075913 res!717255) b!1075910))

(assert (= (and b!1075910 res!717252) b!1075915))

(assert (= (and b!1075910 c!108095) b!1075911))

(assert (= (and b!1075910 (not c!108095)) b!1075912))

(assert (= (and b!1075911 res!717253) b!1075916))

(assert (= (and b!1075912 c!108098) b!1075919))

(assert (= (and b!1075912 (not c!108098)) b!1075921))

(declare-fun b_lambda!16959 () Bool)

(assert (=> (not b_lambda!16959) (not b!1075916)))

(assert (=> b!1075916 t!32657))

(declare-fun b_and!35201 () Bool)

(assert (= b_and!35199 (and (=> t!32657 result!14847) b_and!35201)))

(declare-fun b_lambda!16961 () Bool)

(assert (=> (not b_lambda!16961) (not b!1075918)))

(assert (=> b!1075918 t!32657))

(declare-fun b_and!35203 () Bool)

(assert (= b_and!35201 (and (=> t!32657 result!14847) b_and!35203)))

(declare-fun m!994889 () Bool)

(assert (=> b!1075918 m!994889))

(declare-fun m!994891 () Bool)

(assert (=> b!1075918 m!994891))

(declare-fun m!994893 () Bool)

(assert (=> b!1075918 m!994893))

(assert (=> b!1075918 m!994865))

(assert (=> b!1075918 m!994867))

(assert (=> b!1075918 m!994869))

(assert (=> b!1075918 m!994869))

(assert (=> b!1075918 m!994867))

(assert (=> b!1075918 m!994871))

(assert (=> b!1075918 m!994891))

(declare-fun m!994895 () Bool)

(assert (=> b!1075918 m!994895))

(declare-fun m!994897 () Bool)

(assert (=> b!1075913 m!994897))

(assert (=> b!1075917 m!994865))

(assert (=> b!1075917 m!994865))

(assert (=> b!1075917 m!994877))

(declare-fun m!994899 () Bool)

(assert (=> b!1075919 m!994899))

(assert (=> b!1075916 m!994865))

(declare-fun m!994901 () Bool)

(assert (=> b!1075916 m!994901))

(assert (=> b!1075916 m!994869))

(assert (=> b!1075916 m!994867))

(assert (=> b!1075916 m!994871))

(assert (=> b!1075916 m!994865))

(assert (=> b!1075916 m!994867))

(assert (=> b!1075916 m!994869))

(assert (=> b!1075915 m!994865))

(assert (=> b!1075915 m!994865))

(assert (=> b!1075915 m!994877))

(declare-fun m!994903 () Bool)

(assert (=> b!1075921 m!994903))

(declare-fun m!994905 () Bool)

(assert (=> d!129599 m!994905))

(assert (=> d!129599 m!994821))

(assert (=> b!1075911 m!994865))

(assert (=> b!1075911 m!994865))

(declare-fun m!994907 () Bool)

(assert (=> b!1075911 m!994907))

(assert (=> bm!45579 m!994899))

(assert (=> b!1075832 d!129599))

(declare-fun d!129601 () Bool)

(assert (=> d!129601 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!95218 d!129601))

(declare-fun d!129603 () Bool)

(assert (=> d!129603 (= (array_inv!25494 _values!955) (bvsge (size!33716 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!95218 d!129603))

(declare-fun d!129605 () Bool)

(assert (=> d!129605 (= (array_inv!25495 _keys!1163) (bvsge (size!33717 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!95218 d!129605))

(declare-fun b!1075964 () Bool)

(declare-fun e!615031 () ListLongMap!14699)

(declare-fun e!615036 () ListLongMap!14699)

(assert (=> b!1075964 (= e!615031 e!615036)))

(declare-fun c!108115 () Bool)

(assert (=> b!1075964 (= c!108115 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!45594 () Bool)

(declare-fun call!45599 () Bool)

(declare-fun lt!477766 () ListLongMap!14699)

(assert (=> bm!45594 (= call!45599 (contains!6368 lt!477766 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1075965 () Bool)

(declare-fun call!45601 () ListLongMap!14699)

(assert (=> b!1075965 (= e!615036 call!45601)))

(declare-fun b!1075966 () Bool)

(declare-fun e!615035 () Bool)

(assert (=> b!1075966 (= e!615035 (= (apply!976 lt!477766 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1075967 () Bool)

(declare-fun e!615029 () Bool)

(declare-fun e!615038 () Bool)

(assert (=> b!1075967 (= e!615029 e!615038)))

(declare-fun c!108113 () Bool)

(assert (=> b!1075967 (= c!108113 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!45598 () ListLongMap!14699)

(declare-fun bm!45595 () Bool)

(declare-fun call!45603 () ListLongMap!14699)

(declare-fun call!45602 () ListLongMap!14699)

(declare-fun call!45600 () ListLongMap!14699)

(declare-fun c!108116 () Bool)

(assert (=> bm!45595 (= call!45603 (+!3188 (ite c!108116 call!45602 (ite c!108115 call!45600 call!45598)) (ite (or c!108116 c!108115) (tuple2!16719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1075968 () Bool)

(declare-fun e!615034 () ListLongMap!14699)

(assert (=> b!1075968 (= e!615034 call!45601)))

(declare-fun b!1075969 () Bool)

(assert (=> b!1075969 (= e!615031 (+!3188 call!45603 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun d!129607 () Bool)

(assert (=> d!129607 e!615029))

(declare-fun res!717280 () Bool)

(assert (=> d!129607 (=> (not res!717280) (not e!615029))))

(assert (=> d!129607 (= res!717280 (or (bvsge #b00000000000000000000000000000000 (size!33717 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33717 _keys!1163)))))))

(declare-fun lt!477760 () ListLongMap!14699)

(assert (=> d!129607 (= lt!477766 lt!477760)))

(declare-fun lt!477769 () Unit!35366)

(declare-fun e!615033 () Unit!35366)

(assert (=> d!129607 (= lt!477769 e!615033)))

(declare-fun c!108112 () Bool)

(declare-fun e!615028 () Bool)

(assert (=> d!129607 (= c!108112 e!615028)))

(declare-fun res!717274 () Bool)

(assert (=> d!129607 (=> (not res!717274) (not e!615028))))

(assert (=> d!129607 (= res!717274 (bvslt #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(assert (=> d!129607 (= lt!477760 e!615031)))

(assert (=> d!129607 (= c!108116 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129607 (validMask!0 mask!1515)))

(assert (=> d!129607 (= (getCurrentListMap!4201 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477766)))

(declare-fun b!1075970 () Bool)

(declare-fun e!615039 () Bool)

(assert (=> b!1075970 (= e!615039 (not call!45599))))

(declare-fun b!1075971 () Bool)

(assert (=> b!1075971 (= e!615028 (validKeyInArray!0 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075972 () Bool)

(declare-fun call!45597 () Bool)

(assert (=> b!1075972 (= e!615038 (not call!45597))))

(declare-fun b!1075973 () Bool)

(declare-fun e!615037 () Bool)

(assert (=> b!1075973 (= e!615039 e!615037)))

(declare-fun res!717279 () Bool)

(assert (=> b!1075973 (= res!717279 call!45599)))

(assert (=> b!1075973 (=> (not res!717279) (not e!615037))))

(declare-fun e!615027 () Bool)

(declare-fun b!1075974 () Bool)

(assert (=> b!1075974 (= e!615027 (= (apply!976 lt!477766 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)) (get!17254 (select (arr!33179 _values!955) #b00000000000000000000000000000000) (dynLambda!2052 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1075974 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33716 _values!955)))))

(assert (=> b!1075974 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(declare-fun bm!45596 () Bool)

(assert (=> bm!45596 (= call!45597 (contains!6368 lt!477766 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1075975 () Bool)

(assert (=> b!1075975 (= e!615034 call!45598)))

(declare-fun b!1075976 () Bool)

(declare-fun e!615030 () Bool)

(assert (=> b!1075976 (= e!615030 (validKeyInArray!0 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45597 () Bool)

(assert (=> bm!45597 (= call!45598 call!45600)))

(declare-fun b!1075977 () Bool)

(declare-fun lt!477772 () Unit!35366)

(assert (=> b!1075977 (= e!615033 lt!477772)))

(declare-fun lt!477762 () ListLongMap!14699)

(assert (=> b!1075977 (= lt!477762 (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477773 () (_ BitVec 64))

(assert (=> b!1075977 (= lt!477773 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477765 () (_ BitVec 64))

(assert (=> b!1075977 (= lt!477765 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477754 () Unit!35366)

(declare-fun addStillContains!658 (ListLongMap!14699 (_ BitVec 64) V!39843 (_ BitVec 64)) Unit!35366)

(assert (=> b!1075977 (= lt!477754 (addStillContains!658 lt!477762 lt!477773 zeroValueBefore!47 lt!477765))))

(assert (=> b!1075977 (contains!6368 (+!3188 lt!477762 (tuple2!16719 lt!477773 zeroValueBefore!47)) lt!477765)))

(declare-fun lt!477763 () Unit!35366)

(assert (=> b!1075977 (= lt!477763 lt!477754)))

(declare-fun lt!477774 () ListLongMap!14699)

(assert (=> b!1075977 (= lt!477774 (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477767 () (_ BitVec 64))

(assert (=> b!1075977 (= lt!477767 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477758 () (_ BitVec 64))

(assert (=> b!1075977 (= lt!477758 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477756 () Unit!35366)

(declare-fun addApplyDifferent!510 (ListLongMap!14699 (_ BitVec 64) V!39843 (_ BitVec 64)) Unit!35366)

(assert (=> b!1075977 (= lt!477756 (addApplyDifferent!510 lt!477774 lt!477767 minValue!907 lt!477758))))

(assert (=> b!1075977 (= (apply!976 (+!3188 lt!477774 (tuple2!16719 lt!477767 minValue!907)) lt!477758) (apply!976 lt!477774 lt!477758))))

(declare-fun lt!477761 () Unit!35366)

(assert (=> b!1075977 (= lt!477761 lt!477756)))

(declare-fun lt!477757 () ListLongMap!14699)

(assert (=> b!1075977 (= lt!477757 (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477759 () (_ BitVec 64))

(assert (=> b!1075977 (= lt!477759 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477775 () (_ BitVec 64))

(assert (=> b!1075977 (= lt!477775 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477771 () Unit!35366)

(assert (=> b!1075977 (= lt!477771 (addApplyDifferent!510 lt!477757 lt!477759 zeroValueBefore!47 lt!477775))))

(assert (=> b!1075977 (= (apply!976 (+!3188 lt!477757 (tuple2!16719 lt!477759 zeroValueBefore!47)) lt!477775) (apply!976 lt!477757 lt!477775))))

(declare-fun lt!477755 () Unit!35366)

(assert (=> b!1075977 (= lt!477755 lt!477771)))

(declare-fun lt!477768 () ListLongMap!14699)

(assert (=> b!1075977 (= lt!477768 (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477770 () (_ BitVec 64))

(assert (=> b!1075977 (= lt!477770 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477764 () (_ BitVec 64))

(assert (=> b!1075977 (= lt!477764 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1075977 (= lt!477772 (addApplyDifferent!510 lt!477768 lt!477770 minValue!907 lt!477764))))

(assert (=> b!1075977 (= (apply!976 (+!3188 lt!477768 (tuple2!16719 lt!477770 minValue!907)) lt!477764) (apply!976 lt!477768 lt!477764))))

(declare-fun b!1075978 () Bool)

(declare-fun e!615032 () Bool)

(assert (=> b!1075978 (= e!615032 e!615027)))

(declare-fun res!717281 () Bool)

(assert (=> b!1075978 (=> (not res!717281) (not e!615027))))

(assert (=> b!1075978 (= res!717281 (contains!6368 lt!477766 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075978 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(declare-fun b!1075979 () Bool)

(declare-fun res!717278 () Bool)

(assert (=> b!1075979 (=> (not res!717278) (not e!615029))))

(assert (=> b!1075979 (= res!717278 e!615032)))

(declare-fun res!717282 () Bool)

(assert (=> b!1075979 (=> res!717282 e!615032)))

(assert (=> b!1075979 (= res!717282 (not e!615030))))

(declare-fun res!717277 () Bool)

(assert (=> b!1075979 (=> (not res!717277) (not e!615030))))

(assert (=> b!1075979 (= res!717277 (bvslt #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(declare-fun bm!45598 () Bool)

(assert (=> bm!45598 (= call!45601 call!45603)))

(declare-fun b!1075980 () Bool)

(declare-fun res!717276 () Bool)

(assert (=> b!1075980 (=> (not res!717276) (not e!615029))))

(assert (=> b!1075980 (= res!717276 e!615039)))

(declare-fun c!108111 () Bool)

(assert (=> b!1075980 (= c!108111 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1075981 () Bool)

(declare-fun c!108114 () Bool)

(assert (=> b!1075981 (= c!108114 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1075981 (= e!615036 e!615034)))

(declare-fun b!1075982 () Bool)

(assert (=> b!1075982 (= e!615037 (= (apply!976 lt!477766 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(declare-fun bm!45599 () Bool)

(assert (=> bm!45599 (= call!45600 call!45602)))

(declare-fun b!1075983 () Bool)

(declare-fun Unit!35368 () Unit!35366)

(assert (=> b!1075983 (= e!615033 Unit!35368)))

(declare-fun bm!45600 () Bool)

(assert (=> bm!45600 (= call!45602 (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1075984 () Bool)

(assert (=> b!1075984 (= e!615038 e!615035)))

(declare-fun res!717275 () Bool)

(assert (=> b!1075984 (= res!717275 call!45597)))

(assert (=> b!1075984 (=> (not res!717275) (not e!615035))))

(assert (= (and d!129607 c!108116) b!1075969))

(assert (= (and d!129607 (not c!108116)) b!1075964))

(assert (= (and b!1075964 c!108115) b!1075965))

(assert (= (and b!1075964 (not c!108115)) b!1075981))

(assert (= (and b!1075981 c!108114) b!1075968))

(assert (= (and b!1075981 (not c!108114)) b!1075975))

(assert (= (or b!1075968 b!1075975) bm!45597))

(assert (= (or b!1075965 bm!45597) bm!45599))

(assert (= (or b!1075965 b!1075968) bm!45598))

(assert (= (or b!1075969 bm!45599) bm!45600))

(assert (= (or b!1075969 bm!45598) bm!45595))

(assert (= (and d!129607 res!717274) b!1075971))

(assert (= (and d!129607 c!108112) b!1075977))

(assert (= (and d!129607 (not c!108112)) b!1075983))

(assert (= (and d!129607 res!717280) b!1075979))

(assert (= (and b!1075979 res!717277) b!1075976))

(assert (= (and b!1075979 (not res!717282)) b!1075978))

(assert (= (and b!1075978 res!717281) b!1075974))

(assert (= (and b!1075979 res!717278) b!1075980))

(assert (= (and b!1075980 c!108111) b!1075973))

(assert (= (and b!1075980 (not c!108111)) b!1075970))

(assert (= (and b!1075973 res!717279) b!1075982))

(assert (= (or b!1075973 b!1075970) bm!45594))

(assert (= (and b!1075980 res!717276) b!1075967))

(assert (= (and b!1075967 c!108113) b!1075984))

(assert (= (and b!1075967 (not c!108113)) b!1075972))

(assert (= (and b!1075984 res!717275) b!1075966))

(assert (= (or b!1075984 b!1075972) bm!45596))

(declare-fun b_lambda!16963 () Bool)

(assert (=> (not b_lambda!16963) (not b!1075974)))

(assert (=> b!1075974 t!32657))

(declare-fun b_and!35205 () Bool)

(assert (= b_and!35203 (and (=> t!32657 result!14847) b_and!35205)))

(declare-fun m!994909 () Bool)

(assert (=> b!1075977 m!994909))

(declare-fun m!994911 () Bool)

(assert (=> b!1075977 m!994911))

(declare-fun m!994913 () Bool)

(assert (=> b!1075977 m!994913))

(assert (=> b!1075977 m!994911))

(declare-fun m!994915 () Bool)

(assert (=> b!1075977 m!994915))

(declare-fun m!994917 () Bool)

(assert (=> b!1075977 m!994917))

(declare-fun m!994919 () Bool)

(assert (=> b!1075977 m!994919))

(assert (=> b!1075977 m!994807))

(assert (=> b!1075977 m!994917))

(declare-fun m!994921 () Bool)

(assert (=> b!1075977 m!994921))

(declare-fun m!994923 () Bool)

(assert (=> b!1075977 m!994923))

(declare-fun m!994925 () Bool)

(assert (=> b!1075977 m!994925))

(declare-fun m!994927 () Bool)

(assert (=> b!1075977 m!994927))

(assert (=> b!1075977 m!994921))

(declare-fun m!994929 () Bool)

(assert (=> b!1075977 m!994929))

(declare-fun m!994931 () Bool)

(assert (=> b!1075977 m!994931))

(declare-fun m!994933 () Bool)

(assert (=> b!1075977 m!994933))

(assert (=> b!1075977 m!994931))

(declare-fun m!994935 () Bool)

(assert (=> b!1075977 m!994935))

(declare-fun m!994937 () Bool)

(assert (=> b!1075977 m!994937))

(assert (=> b!1075977 m!994865))

(assert (=> d!129607 m!994821))

(declare-fun m!994939 () Bool)

(assert (=> bm!45594 m!994939))

(assert (=> b!1075978 m!994865))

(assert (=> b!1075978 m!994865))

(declare-fun m!994941 () Bool)

(assert (=> b!1075978 m!994941))

(declare-fun m!994943 () Bool)

(assert (=> b!1075969 m!994943))

(assert (=> b!1075974 m!994865))

(declare-fun m!994945 () Bool)

(assert (=> b!1075974 m!994945))

(assert (=> b!1075974 m!994867))

(assert (=> b!1075974 m!994869))

(assert (=> b!1075974 m!994869))

(assert (=> b!1075974 m!994867))

(assert (=> b!1075974 m!994871))

(assert (=> b!1075974 m!994865))

(assert (=> bm!45600 m!994807))

(assert (=> b!1075976 m!994865))

(assert (=> b!1075976 m!994865))

(assert (=> b!1075976 m!994877))

(declare-fun m!994947 () Bool)

(assert (=> b!1075966 m!994947))

(declare-fun m!994949 () Bool)

(assert (=> bm!45596 m!994949))

(declare-fun m!994951 () Bool)

(assert (=> b!1075982 m!994951))

(declare-fun m!994953 () Bool)

(assert (=> bm!45595 m!994953))

(assert (=> b!1075971 m!994865))

(assert (=> b!1075971 m!994865))

(assert (=> b!1075971 m!994877))

(assert (=> b!1075833 d!129607))

(declare-fun d!129609 () Bool)

(declare-fun e!615042 () Bool)

(assert (=> d!129609 e!615042))

(declare-fun res!717287 () Bool)

(assert (=> d!129609 (=> (not res!717287) (not e!615042))))

(declare-fun lt!477787 () ListLongMap!14699)

(assert (=> d!129609 (= res!717287 (contains!6368 lt!477787 (_1!8369 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun lt!477785 () List!23291)

(assert (=> d!129609 (= lt!477787 (ListLongMap!14700 lt!477785))))

(declare-fun lt!477784 () Unit!35366)

(declare-fun lt!477786 () Unit!35366)

(assert (=> d!129609 (= lt!477784 lt!477786)))

(declare-datatypes ((Option!667 0))(
  ( (Some!666 (v!15695 V!39843)) (None!665) )
))
(declare-fun getValueByKey!616 (List!23291 (_ BitVec 64)) Option!667)

(assert (=> d!129609 (= (getValueByKey!616 lt!477785 (_1!8369 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))) (Some!666 (_2!8369 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun lemmaContainsTupThenGetReturnValue!291 (List!23291 (_ BitVec 64) V!39843) Unit!35366)

(assert (=> d!129609 (= lt!477786 (lemmaContainsTupThenGetReturnValue!291 lt!477785 (_1!8369 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)) (_2!8369 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun insertStrictlySorted!383 (List!23291 (_ BitVec 64) V!39843) List!23291)

(assert (=> d!129609 (= lt!477785 (insertStrictlySorted!383 (toList!7365 (+!3188 lt!477667 (tuple2!16719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))) (_1!8369 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)) (_2!8369 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(assert (=> d!129609 (= (+!3188 (+!3188 lt!477667 (tuple2!16719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)) lt!477787)))

(declare-fun b!1075989 () Bool)

(declare-fun res!717288 () Bool)

(assert (=> b!1075989 (=> (not res!717288) (not e!615042))))

(assert (=> b!1075989 (= res!717288 (= (getValueByKey!616 (toList!7365 lt!477787) (_1!8369 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))) (Some!666 (_2!8369 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))))

(declare-fun b!1075990 () Bool)

(declare-fun contains!6369 (List!23291 tuple2!16718) Bool)

(assert (=> b!1075990 (= e!615042 (contains!6369 (toList!7365 lt!477787) (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(assert (= (and d!129609 res!717287) b!1075989))

(assert (= (and b!1075989 res!717288) b!1075990))

(declare-fun m!994955 () Bool)

(assert (=> d!129609 m!994955))

(declare-fun m!994957 () Bool)

(assert (=> d!129609 m!994957))

(declare-fun m!994959 () Bool)

(assert (=> d!129609 m!994959))

(declare-fun m!994961 () Bool)

(assert (=> d!129609 m!994961))

(declare-fun m!994963 () Bool)

(assert (=> b!1075989 m!994963))

(declare-fun m!994965 () Bool)

(assert (=> b!1075990 m!994965))

(assert (=> b!1075833 d!129609))

(declare-fun d!129611 () Bool)

(declare-fun e!615043 () Bool)

(assert (=> d!129611 e!615043))

(declare-fun res!717289 () Bool)

(assert (=> d!129611 (=> (not res!717289) (not e!615043))))

(declare-fun lt!477791 () ListLongMap!14699)

(assert (=> d!129611 (= res!717289 (contains!6368 lt!477791 (_1!8369 (tuple2!16719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun lt!477789 () List!23291)

(assert (=> d!129611 (= lt!477791 (ListLongMap!14700 lt!477789))))

(declare-fun lt!477788 () Unit!35366)

(declare-fun lt!477790 () Unit!35366)

(assert (=> d!129611 (= lt!477788 lt!477790)))

(assert (=> d!129611 (= (getValueByKey!616 lt!477789 (_1!8369 (tuple2!16719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))) (Some!666 (_2!8369 (tuple2!16719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(assert (=> d!129611 (= lt!477790 (lemmaContainsTupThenGetReturnValue!291 lt!477789 (_1!8369 (tuple2!16719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (_2!8369 (tuple2!16719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(assert (=> d!129611 (= lt!477789 (insertStrictlySorted!383 (toList!7365 lt!477667) (_1!8369 (tuple2!16719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (_2!8369 (tuple2!16719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(assert (=> d!129611 (= (+!3188 lt!477667 (tuple2!16719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) lt!477791)))

(declare-fun b!1075991 () Bool)

(declare-fun res!717290 () Bool)

(assert (=> b!1075991 (=> (not res!717290) (not e!615043))))

(assert (=> b!1075991 (= res!717290 (= (getValueByKey!616 (toList!7365 lt!477791) (_1!8369 (tuple2!16719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))) (Some!666 (_2!8369 (tuple2!16719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))))

(declare-fun b!1075992 () Bool)

(assert (=> b!1075992 (= e!615043 (contains!6369 (toList!7365 lt!477791) (tuple2!16719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(assert (= (and d!129611 res!717289) b!1075991))

(assert (= (and b!1075991 res!717290) b!1075992))

(declare-fun m!994967 () Bool)

(assert (=> d!129611 m!994967))

(declare-fun m!994969 () Bool)

(assert (=> d!129611 m!994969))

(declare-fun m!994971 () Bool)

(assert (=> d!129611 m!994971))

(declare-fun m!994973 () Bool)

(assert (=> d!129611 m!994973))

(declare-fun m!994975 () Bool)

(assert (=> b!1075991 m!994975))

(declare-fun m!994977 () Bool)

(assert (=> b!1075992 m!994977))

(assert (=> b!1075833 d!129611))

(declare-fun d!129613 () Bool)

(declare-fun res!717295 () Bool)

(declare-fun e!615050 () Bool)

(assert (=> d!129613 (=> res!717295 e!615050)))

(assert (=> d!129613 (= res!717295 (bvsge #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(assert (=> d!129613 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!615050)))

(declare-fun b!1076001 () Bool)

(declare-fun e!615052 () Bool)

(declare-fun call!45606 () Bool)

(assert (=> b!1076001 (= e!615052 call!45606)))

(declare-fun bm!45603 () Bool)

(assert (=> bm!45603 (= call!45606 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1076002 () Bool)

(declare-fun e!615051 () Bool)

(assert (=> b!1076002 (= e!615051 e!615052)))

(declare-fun lt!477798 () (_ BitVec 64))

(assert (=> b!1076002 (= lt!477798 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477800 () Unit!35366)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!68998 (_ BitVec 64) (_ BitVec 32)) Unit!35366)

(assert (=> b!1076002 (= lt!477800 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!477798 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!68998 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1076002 (arrayContainsKey!0 _keys!1163 lt!477798 #b00000000000000000000000000000000)))

(declare-fun lt!477799 () Unit!35366)

(assert (=> b!1076002 (= lt!477799 lt!477800)))

(declare-fun res!717296 () Bool)

(declare-datatypes ((SeekEntryResult!9891 0))(
  ( (MissingZero!9891 (index!41934 (_ BitVec 32))) (Found!9891 (index!41935 (_ BitVec 32))) (Intermediate!9891 (undefined!10703 Bool) (index!41936 (_ BitVec 32)) (x!96414 (_ BitVec 32))) (Undefined!9891) (MissingVacant!9891 (index!41937 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!68998 (_ BitVec 32)) SeekEntryResult!9891)

(assert (=> b!1076002 (= res!717296 (= (seekEntryOrOpen!0 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9891 #b00000000000000000000000000000000)))))

(assert (=> b!1076002 (=> (not res!717296) (not e!615052))))

(declare-fun b!1076003 () Bool)

(assert (=> b!1076003 (= e!615051 call!45606)))

(declare-fun b!1076004 () Bool)

(assert (=> b!1076004 (= e!615050 e!615051)))

(declare-fun c!108119 () Bool)

(assert (=> b!1076004 (= c!108119 (validKeyInArray!0 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!129613 (not res!717295)) b!1076004))

(assert (= (and b!1076004 c!108119) b!1076002))

(assert (= (and b!1076004 (not c!108119)) b!1076003))

(assert (= (and b!1076002 res!717296) b!1076001))

(assert (= (or b!1076001 b!1076003) bm!45603))

(declare-fun m!994979 () Bool)

(assert (=> bm!45603 m!994979))

(assert (=> b!1076002 m!994865))

(declare-fun m!994981 () Bool)

(assert (=> b!1076002 m!994981))

(declare-fun m!994983 () Bool)

(assert (=> b!1076002 m!994983))

(assert (=> b!1076002 m!994865))

(declare-fun m!994985 () Bool)

(assert (=> b!1076002 m!994985))

(assert (=> b!1076004 m!994865))

(assert (=> b!1076004 m!994865))

(assert (=> b!1076004 m!994877))

(assert (=> b!1075839 d!129613))

(declare-fun bm!45606 () Bool)

(declare-fun call!45609 () Bool)

(declare-fun c!108122 () Bool)

(assert (=> bm!45606 (= call!45609 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108122 (Cons!23288 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000) Nil!23289) Nil!23289)))))

(declare-fun d!129615 () Bool)

(declare-fun res!717303 () Bool)

(declare-fun e!615061 () Bool)

(assert (=> d!129615 (=> res!717303 e!615061)))

(assert (=> d!129615 (= res!717303 (bvsge #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(assert (=> d!129615 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23289) e!615061)))

(declare-fun b!1076015 () Bool)

(declare-fun e!615063 () Bool)

(declare-fun contains!6370 (List!23292 (_ BitVec 64)) Bool)

(assert (=> b!1076015 (= e!615063 (contains!6370 Nil!23289 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1076016 () Bool)

(declare-fun e!615062 () Bool)

(assert (=> b!1076016 (= e!615062 call!45609)))

(declare-fun b!1076017 () Bool)

(declare-fun e!615064 () Bool)

(assert (=> b!1076017 (= e!615061 e!615064)))

(declare-fun res!717305 () Bool)

(assert (=> b!1076017 (=> (not res!717305) (not e!615064))))

(assert (=> b!1076017 (= res!717305 (not e!615063))))

(declare-fun res!717304 () Bool)

(assert (=> b!1076017 (=> (not res!717304) (not e!615063))))

(assert (=> b!1076017 (= res!717304 (validKeyInArray!0 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1076018 () Bool)

(assert (=> b!1076018 (= e!615064 e!615062)))

(assert (=> b!1076018 (= c!108122 (validKeyInArray!0 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1076019 () Bool)

(assert (=> b!1076019 (= e!615062 call!45609)))

(assert (= (and d!129615 (not res!717303)) b!1076017))

(assert (= (and b!1076017 res!717304) b!1076015))

(assert (= (and b!1076017 res!717305) b!1076018))

(assert (= (and b!1076018 c!108122) b!1076016))

(assert (= (and b!1076018 (not c!108122)) b!1076019))

(assert (= (or b!1076016 b!1076019) bm!45606))

(assert (=> bm!45606 m!994865))

(declare-fun m!994987 () Bool)

(assert (=> bm!45606 m!994987))

(assert (=> b!1076015 m!994865))

(assert (=> b!1076015 m!994865))

(declare-fun m!994989 () Bool)

(assert (=> b!1076015 m!994989))

(assert (=> b!1076017 m!994865))

(assert (=> b!1076017 m!994865))

(assert (=> b!1076017 m!994877))

(assert (=> b!1076018 m!994865))

(assert (=> b!1076018 m!994865))

(assert (=> b!1076018 m!994877))

(assert (=> b!1075835 d!129615))

(declare-fun b!1076020 () Bool)

(declare-fun e!615069 () ListLongMap!14699)

(declare-fun e!615074 () ListLongMap!14699)

(assert (=> b!1076020 (= e!615069 e!615074)))

(declare-fun c!108127 () Bool)

(assert (=> b!1076020 (= c!108127 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!45607 () Bool)

(declare-fun call!45612 () Bool)

(declare-fun lt!477813 () ListLongMap!14699)

(assert (=> bm!45607 (= call!45612 (contains!6368 lt!477813 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1076021 () Bool)

(declare-fun call!45614 () ListLongMap!14699)

(assert (=> b!1076021 (= e!615074 call!45614)))

(declare-fun b!1076022 () Bool)

(declare-fun e!615073 () Bool)

(assert (=> b!1076022 (= e!615073 (= (apply!976 lt!477813 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1076023 () Bool)

(declare-fun e!615067 () Bool)

(declare-fun e!615076 () Bool)

(assert (=> b!1076023 (= e!615067 e!615076)))

(declare-fun c!108125 () Bool)

(assert (=> b!1076023 (= c!108125 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun c!108128 () Bool)

(declare-fun bm!45608 () Bool)

(declare-fun call!45613 () ListLongMap!14699)

(declare-fun call!45615 () ListLongMap!14699)

(declare-fun call!45616 () ListLongMap!14699)

(declare-fun call!45611 () ListLongMap!14699)

(assert (=> bm!45608 (= call!45616 (+!3188 (ite c!108128 call!45615 (ite c!108127 call!45613 call!45611)) (ite (or c!108128 c!108127) (tuple2!16719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!47) (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1076024 () Bool)

(declare-fun e!615072 () ListLongMap!14699)

(assert (=> b!1076024 (= e!615072 call!45614)))

(declare-fun b!1076025 () Bool)

(assert (=> b!1076025 (= e!615069 (+!3188 call!45616 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun d!129617 () Bool)

(assert (=> d!129617 e!615067))

(declare-fun res!717312 () Bool)

(assert (=> d!129617 (=> (not res!717312) (not e!615067))))

(assert (=> d!129617 (= res!717312 (or (bvsge #b00000000000000000000000000000000 (size!33717 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33717 _keys!1163)))))))

(declare-fun lt!477807 () ListLongMap!14699)

(assert (=> d!129617 (= lt!477813 lt!477807)))

(declare-fun lt!477816 () Unit!35366)

(declare-fun e!615071 () Unit!35366)

(assert (=> d!129617 (= lt!477816 e!615071)))

(declare-fun c!108124 () Bool)

(declare-fun e!615066 () Bool)

(assert (=> d!129617 (= c!108124 e!615066)))

(declare-fun res!717306 () Bool)

(assert (=> d!129617 (=> (not res!717306) (not e!615066))))

(assert (=> d!129617 (= res!717306 (bvslt #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(assert (=> d!129617 (= lt!477807 e!615069)))

(assert (=> d!129617 (= c!108128 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129617 (validMask!0 mask!1515)))

(assert (=> d!129617 (= (getCurrentListMap!4201 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477813)))

(declare-fun b!1076026 () Bool)

(declare-fun e!615077 () Bool)

(assert (=> b!1076026 (= e!615077 (not call!45612))))

(declare-fun b!1076027 () Bool)

(assert (=> b!1076027 (= e!615066 (validKeyInArray!0 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1076028 () Bool)

(declare-fun call!45610 () Bool)

(assert (=> b!1076028 (= e!615076 (not call!45610))))

(declare-fun b!1076029 () Bool)

(declare-fun e!615075 () Bool)

(assert (=> b!1076029 (= e!615077 e!615075)))

(declare-fun res!717311 () Bool)

(assert (=> b!1076029 (= res!717311 call!45612)))

(assert (=> b!1076029 (=> (not res!717311) (not e!615075))))

(declare-fun b!1076030 () Bool)

(declare-fun e!615065 () Bool)

(assert (=> b!1076030 (= e!615065 (= (apply!976 lt!477813 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)) (get!17254 (select (arr!33179 _values!955) #b00000000000000000000000000000000) (dynLambda!2052 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1076030 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33716 _values!955)))))

(assert (=> b!1076030 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(declare-fun bm!45609 () Bool)

(assert (=> bm!45609 (= call!45610 (contains!6368 lt!477813 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1076031 () Bool)

(assert (=> b!1076031 (= e!615072 call!45611)))

(declare-fun b!1076032 () Bool)

(declare-fun e!615068 () Bool)

(assert (=> b!1076032 (= e!615068 (validKeyInArray!0 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45610 () Bool)

(assert (=> bm!45610 (= call!45611 call!45613)))

(declare-fun b!1076033 () Bool)

(declare-fun lt!477819 () Unit!35366)

(assert (=> b!1076033 (= e!615071 lt!477819)))

(declare-fun lt!477809 () ListLongMap!14699)

(assert (=> b!1076033 (= lt!477809 (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477820 () (_ BitVec 64))

(assert (=> b!1076033 (= lt!477820 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477812 () (_ BitVec 64))

(assert (=> b!1076033 (= lt!477812 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477801 () Unit!35366)

(assert (=> b!1076033 (= lt!477801 (addStillContains!658 lt!477809 lt!477820 zeroValueAfter!47 lt!477812))))

(assert (=> b!1076033 (contains!6368 (+!3188 lt!477809 (tuple2!16719 lt!477820 zeroValueAfter!47)) lt!477812)))

(declare-fun lt!477810 () Unit!35366)

(assert (=> b!1076033 (= lt!477810 lt!477801)))

(declare-fun lt!477821 () ListLongMap!14699)

(assert (=> b!1076033 (= lt!477821 (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477814 () (_ BitVec 64))

(assert (=> b!1076033 (= lt!477814 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477805 () (_ BitVec 64))

(assert (=> b!1076033 (= lt!477805 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477803 () Unit!35366)

(assert (=> b!1076033 (= lt!477803 (addApplyDifferent!510 lt!477821 lt!477814 minValue!907 lt!477805))))

(assert (=> b!1076033 (= (apply!976 (+!3188 lt!477821 (tuple2!16719 lt!477814 minValue!907)) lt!477805) (apply!976 lt!477821 lt!477805))))

(declare-fun lt!477808 () Unit!35366)

(assert (=> b!1076033 (= lt!477808 lt!477803)))

(declare-fun lt!477804 () ListLongMap!14699)

(assert (=> b!1076033 (= lt!477804 (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477806 () (_ BitVec 64))

(assert (=> b!1076033 (= lt!477806 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477822 () (_ BitVec 64))

(assert (=> b!1076033 (= lt!477822 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477818 () Unit!35366)

(assert (=> b!1076033 (= lt!477818 (addApplyDifferent!510 lt!477804 lt!477806 zeroValueAfter!47 lt!477822))))

(assert (=> b!1076033 (= (apply!976 (+!3188 lt!477804 (tuple2!16719 lt!477806 zeroValueAfter!47)) lt!477822) (apply!976 lt!477804 lt!477822))))

(declare-fun lt!477802 () Unit!35366)

(assert (=> b!1076033 (= lt!477802 lt!477818)))

(declare-fun lt!477815 () ListLongMap!14699)

(assert (=> b!1076033 (= lt!477815 (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477817 () (_ BitVec 64))

(assert (=> b!1076033 (= lt!477817 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477811 () (_ BitVec 64))

(assert (=> b!1076033 (= lt!477811 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1076033 (= lt!477819 (addApplyDifferent!510 lt!477815 lt!477817 minValue!907 lt!477811))))

(assert (=> b!1076033 (= (apply!976 (+!3188 lt!477815 (tuple2!16719 lt!477817 minValue!907)) lt!477811) (apply!976 lt!477815 lt!477811))))

(declare-fun b!1076034 () Bool)

(declare-fun e!615070 () Bool)

(assert (=> b!1076034 (= e!615070 e!615065)))

(declare-fun res!717313 () Bool)

(assert (=> b!1076034 (=> (not res!717313) (not e!615065))))

(assert (=> b!1076034 (= res!717313 (contains!6368 lt!477813 (select (arr!33180 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1076034 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(declare-fun b!1076035 () Bool)

(declare-fun res!717310 () Bool)

(assert (=> b!1076035 (=> (not res!717310) (not e!615067))))

(assert (=> b!1076035 (= res!717310 e!615070)))

(declare-fun res!717314 () Bool)

(assert (=> b!1076035 (=> res!717314 e!615070)))

(assert (=> b!1076035 (= res!717314 (not e!615068))))

(declare-fun res!717309 () Bool)

(assert (=> b!1076035 (=> (not res!717309) (not e!615068))))

(assert (=> b!1076035 (= res!717309 (bvslt #b00000000000000000000000000000000 (size!33717 _keys!1163)))))

(declare-fun bm!45611 () Bool)

(assert (=> bm!45611 (= call!45614 call!45616)))

(declare-fun b!1076036 () Bool)

(declare-fun res!717308 () Bool)

(assert (=> b!1076036 (=> (not res!717308) (not e!615067))))

(assert (=> b!1076036 (= res!717308 e!615077)))

(declare-fun c!108123 () Bool)

(assert (=> b!1076036 (= c!108123 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1076037 () Bool)

(declare-fun c!108126 () Bool)

(assert (=> b!1076037 (= c!108126 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1076037 (= e!615074 e!615072)))

(declare-fun b!1076038 () Bool)

(assert (=> b!1076038 (= e!615075 (= (apply!976 lt!477813 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!47))))

(declare-fun bm!45612 () Bool)

(assert (=> bm!45612 (= call!45613 call!45615)))

(declare-fun b!1076039 () Bool)

(declare-fun Unit!35369 () Unit!35366)

(assert (=> b!1076039 (= e!615071 Unit!35369)))

(declare-fun bm!45613 () Bool)

(assert (=> bm!45613 (= call!45615 (getCurrentListMapNoExtraKeys!3890 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1076040 () Bool)

(assert (=> b!1076040 (= e!615076 e!615073)))

(declare-fun res!717307 () Bool)

(assert (=> b!1076040 (= res!717307 call!45610)))

(assert (=> b!1076040 (=> (not res!717307) (not e!615073))))

(assert (= (and d!129617 c!108128) b!1076025))

(assert (= (and d!129617 (not c!108128)) b!1076020))

(assert (= (and b!1076020 c!108127) b!1076021))

(assert (= (and b!1076020 (not c!108127)) b!1076037))

(assert (= (and b!1076037 c!108126) b!1076024))

(assert (= (and b!1076037 (not c!108126)) b!1076031))

(assert (= (or b!1076024 b!1076031) bm!45610))

(assert (= (or b!1076021 bm!45610) bm!45612))

(assert (= (or b!1076021 b!1076024) bm!45611))

(assert (= (or b!1076025 bm!45612) bm!45613))

(assert (= (or b!1076025 bm!45611) bm!45608))

(assert (= (and d!129617 res!717306) b!1076027))

(assert (= (and d!129617 c!108124) b!1076033))

(assert (= (and d!129617 (not c!108124)) b!1076039))

(assert (= (and d!129617 res!717312) b!1076035))

(assert (= (and b!1076035 res!717309) b!1076032))

(assert (= (and b!1076035 (not res!717314)) b!1076034))

(assert (= (and b!1076034 res!717313) b!1076030))

(assert (= (and b!1076035 res!717310) b!1076036))

(assert (= (and b!1076036 c!108123) b!1076029))

(assert (= (and b!1076036 (not c!108123)) b!1076026))

(assert (= (and b!1076029 res!717311) b!1076038))

(assert (= (or b!1076029 b!1076026) bm!45607))

(assert (= (and b!1076036 res!717308) b!1076023))

(assert (= (and b!1076023 c!108125) b!1076040))

(assert (= (and b!1076023 (not c!108125)) b!1076028))

(assert (= (and b!1076040 res!717307) b!1076022))

(assert (= (or b!1076040 b!1076028) bm!45609))

(declare-fun b_lambda!16965 () Bool)

(assert (=> (not b_lambda!16965) (not b!1076030)))

(assert (=> b!1076030 t!32657))

(declare-fun b_and!35207 () Bool)

(assert (= b_and!35205 (and (=> t!32657 result!14847) b_and!35207)))

(declare-fun m!994991 () Bool)

(assert (=> b!1076033 m!994991))

(declare-fun m!994993 () Bool)

(assert (=> b!1076033 m!994993))

(declare-fun m!994995 () Bool)

(assert (=> b!1076033 m!994995))

(assert (=> b!1076033 m!994993))

(declare-fun m!994997 () Bool)

(assert (=> b!1076033 m!994997))

(declare-fun m!994999 () Bool)

(assert (=> b!1076033 m!994999))

(declare-fun m!995001 () Bool)

(assert (=> b!1076033 m!995001))

(assert (=> b!1076033 m!994805))

(assert (=> b!1076033 m!994999))

(declare-fun m!995003 () Bool)

(assert (=> b!1076033 m!995003))

(declare-fun m!995005 () Bool)

(assert (=> b!1076033 m!995005))

(declare-fun m!995007 () Bool)

(assert (=> b!1076033 m!995007))

(declare-fun m!995009 () Bool)

(assert (=> b!1076033 m!995009))

(assert (=> b!1076033 m!995003))

(declare-fun m!995011 () Bool)

(assert (=> b!1076033 m!995011))

(declare-fun m!995013 () Bool)

(assert (=> b!1076033 m!995013))

(declare-fun m!995015 () Bool)

(assert (=> b!1076033 m!995015))

(assert (=> b!1076033 m!995013))

(declare-fun m!995017 () Bool)

(assert (=> b!1076033 m!995017))

(declare-fun m!995019 () Bool)

(assert (=> b!1076033 m!995019))

(assert (=> b!1076033 m!994865))

(assert (=> d!129617 m!994821))

(declare-fun m!995021 () Bool)

(assert (=> bm!45607 m!995021))

(assert (=> b!1076034 m!994865))

(assert (=> b!1076034 m!994865))

(declare-fun m!995023 () Bool)

(assert (=> b!1076034 m!995023))

(declare-fun m!995025 () Bool)

(assert (=> b!1076025 m!995025))

(assert (=> b!1076030 m!994865))

(declare-fun m!995027 () Bool)

(assert (=> b!1076030 m!995027))

(assert (=> b!1076030 m!994867))

(assert (=> b!1076030 m!994869))

(assert (=> b!1076030 m!994869))

(assert (=> b!1076030 m!994867))

(assert (=> b!1076030 m!994871))

(assert (=> b!1076030 m!994865))

(assert (=> bm!45613 m!994805))

(assert (=> b!1076032 m!994865))

(assert (=> b!1076032 m!994865))

(assert (=> b!1076032 m!994877))

(declare-fun m!995029 () Bool)

(assert (=> b!1076022 m!995029))

(declare-fun m!995031 () Bool)

(assert (=> bm!45609 m!995031))

(declare-fun m!995033 () Bool)

(assert (=> b!1076038 m!995033))

(declare-fun m!995035 () Bool)

(assert (=> bm!45608 m!995035))

(assert (=> b!1076027 m!994865))

(assert (=> b!1076027 m!994865))

(assert (=> b!1076027 m!994877))

(assert (=> b!1075840 d!129617))

(declare-fun d!129619 () Bool)

(declare-fun e!615078 () Bool)

(assert (=> d!129619 e!615078))

(declare-fun res!717315 () Bool)

(assert (=> d!129619 (=> (not res!717315) (not e!615078))))

(declare-fun lt!477826 () ListLongMap!14699)

(assert (=> d!129619 (= res!717315 (contains!6368 lt!477826 (_1!8369 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun lt!477824 () List!23291)

(assert (=> d!129619 (= lt!477826 (ListLongMap!14700 lt!477824))))

(declare-fun lt!477823 () Unit!35366)

(declare-fun lt!477825 () Unit!35366)

(assert (=> d!129619 (= lt!477823 lt!477825)))

(assert (=> d!129619 (= (getValueByKey!616 lt!477824 (_1!8369 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))) (Some!666 (_2!8369 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(assert (=> d!129619 (= lt!477825 (lemmaContainsTupThenGetReturnValue!291 lt!477824 (_1!8369 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)) (_2!8369 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(assert (=> d!129619 (= lt!477824 (insertStrictlySorted!383 (toList!7365 lt!477669) (_1!8369 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)) (_2!8369 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(assert (=> d!129619 (= (+!3188 lt!477669 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)) lt!477826)))

(declare-fun b!1076041 () Bool)

(declare-fun res!717316 () Bool)

(assert (=> b!1076041 (=> (not res!717316) (not e!615078))))

(assert (=> b!1076041 (= res!717316 (= (getValueByKey!616 (toList!7365 lt!477826) (_1!8369 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))) (Some!666 (_2!8369 (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))))

(declare-fun b!1076042 () Bool)

(assert (=> b!1076042 (= e!615078 (contains!6369 (toList!7365 lt!477826) (tuple2!16719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(assert (= (and d!129619 res!717315) b!1076041))

(assert (= (and b!1076041 res!717316) b!1076042))

(declare-fun m!995037 () Bool)

(assert (=> d!129619 m!995037))

(declare-fun m!995039 () Bool)

(assert (=> d!129619 m!995039))

(declare-fun m!995041 () Bool)

(assert (=> d!129619 m!995041))

(declare-fun m!995043 () Bool)

(assert (=> d!129619 m!995043))

(declare-fun m!995045 () Bool)

(assert (=> b!1076041 m!995045))

(declare-fun m!995047 () Bool)

(assert (=> b!1076042 m!995047))

(assert (=> b!1075840 d!129619))

(declare-fun mapIsEmpty!40792 () Bool)

(declare-fun mapRes!40792 () Bool)

(assert (=> mapIsEmpty!40792 mapRes!40792))

(declare-fun mapNonEmpty!40792 () Bool)

(declare-fun tp!78165 () Bool)

(declare-fun e!615083 () Bool)

(assert (=> mapNonEmpty!40792 (= mapRes!40792 (and tp!78165 e!615083))))

(declare-fun mapKey!40792 () (_ BitVec 32))

(declare-fun mapRest!40792 () (Array (_ BitVec 32) ValueCell!12312))

(declare-fun mapValue!40792 () ValueCell!12312)

(assert (=> mapNonEmpty!40792 (= mapRest!40786 (store mapRest!40792 mapKey!40792 mapValue!40792))))

(declare-fun b!1076050 () Bool)

(declare-fun e!615084 () Bool)

(assert (=> b!1076050 (= e!615084 tp_is_empty!26031)))

(declare-fun condMapEmpty!40792 () Bool)

(declare-fun mapDefault!40792 () ValueCell!12312)

(assert (=> mapNonEmpty!40786 (= condMapEmpty!40792 (= mapRest!40786 ((as const (Array (_ BitVec 32) ValueCell!12312)) mapDefault!40792)))))

(assert (=> mapNonEmpty!40786 (= tp!78156 (and e!615084 mapRes!40792))))

(declare-fun b!1076049 () Bool)

(assert (=> b!1076049 (= e!615083 tp_is_empty!26031)))

(assert (= (and mapNonEmpty!40786 condMapEmpty!40792) mapIsEmpty!40792))

(assert (= (and mapNonEmpty!40786 (not condMapEmpty!40792)) mapNonEmpty!40792))

(assert (= (and mapNonEmpty!40792 ((_ is ValueCellFull!12312) mapValue!40792)) b!1076049))

(assert (= (and mapNonEmpty!40786 ((_ is ValueCellFull!12312) mapDefault!40792)) b!1076050))

(declare-fun m!995049 () Bool)

(assert (=> mapNonEmpty!40792 m!995049))

(declare-fun b_lambda!16967 () Bool)

(assert (= b_lambda!16961 (or (and start!95218 b_free!22221) b_lambda!16967)))

(declare-fun b_lambda!16969 () Bool)

(assert (= b_lambda!16957 (or (and start!95218 b_free!22221) b_lambda!16969)))

(declare-fun b_lambda!16971 () Bool)

(assert (= b_lambda!16965 (or (and start!95218 b_free!22221) b_lambda!16971)))

(declare-fun b_lambda!16973 () Bool)

(assert (= b_lambda!16955 (or (and start!95218 b_free!22221) b_lambda!16973)))

(declare-fun b_lambda!16975 () Bool)

(assert (= b_lambda!16959 (or (and start!95218 b_free!22221) b_lambda!16975)))

(declare-fun b_lambda!16977 () Bool)

(assert (= b_lambda!16963 (or (and start!95218 b_free!22221) b_lambda!16977)))

(check-sat (not bm!45613) (not b!1075903) (not bm!45608) (not b!1076033) (not d!129617) (not b!1075919) (not d!129611) (not bm!45603) (not b!1075897) (not b_lambda!16971) (not b_lambda!16967) (not b!1075918) (not b!1075905) (not b!1076018) (not b!1076025) b_and!35207 (not d!129595) (not b!1075966) (not b_lambda!16977) (not b!1075901) (not b!1075990) (not b!1076002) (not bm!45594) (not b!1075971) (not d!129607) (not b!1075977) (not b!1075976) (not b!1075921) tp_is_empty!26031 (not b!1075974) (not b!1076042) (not b!1075982) (not b!1075913) (not bm!45609) (not bm!45579) (not b!1076032) (not d!129619) (not b_lambda!16969) (not d!129599) (not b!1075969) (not b!1075916) (not bm!45600) (not d!129597) (not b!1076041) (not bm!45595) (not bm!45578) (not bm!45607) (not b_lambda!16973) (not b!1075978) (not b!1076022) (not b!1075992) (not b!1075904) (not b!1075911) (not b!1075917) (not d!129609) (not mapNonEmpty!40792) (not b!1076004) (not b!1076017) (not b!1075899) (not b!1076034) (not b!1075915) (not bm!45596) (not b!1075907) (not b_next!22221) (not b!1075989) (not b!1076015) (not b!1075902) (not b!1076027) (not b_lambda!16975) (not b!1076038) (not bm!45606) (not b!1075991) (not b!1076030))
(check-sat b_and!35207 (not b_next!22221))
