; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94662 () Bool)

(assert start!94662)

(declare-fun b_free!21909 () Bool)

(declare-fun b_next!21909 () Bool)

(assert (=> start!94662 (= b_free!21909 (not b_next!21909))))

(declare-fun tp!77181 () Bool)

(declare-fun b_and!34739 () Bool)

(assert (=> start!94662 (= tp!77181 b_and!34739)))

(declare-fun res!713893 () Bool)

(declare-fun e!610688 () Bool)

(assert (=> start!94662 (=> (not res!713893) (not e!610688))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94662 (= res!713893 (validMask!0 mask!1515))))

(assert (=> start!94662 e!610688))

(assert (=> start!94662 true))

(declare-fun tp_is_empty!25719 () Bool)

(assert (=> start!94662 tp_is_empty!25719))

(declare-datatypes ((V!39427 0))(
  ( (V!39428 (val!12910 Int)) )
))
(declare-datatypes ((ValueCell!12156 0))(
  ( (ValueCellFull!12156 (v!15527 V!39427)) (EmptyCell!12156) )
))
(declare-datatypes ((array!68384 0))(
  ( (array!68385 (arr!32886 (Array (_ BitVec 32) ValueCell!12156)) (size!33423 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68384)

(declare-fun e!610689 () Bool)

(declare-fun array_inv!25290 (array!68384) Bool)

(assert (=> start!94662 (and (array_inv!25290 _values!955) e!610689)))

(assert (=> start!94662 tp!77181))

(declare-datatypes ((array!68386 0))(
  ( (array!68387 (arr!32887 (Array (_ BitVec 32) (_ BitVec 64))) (size!33424 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68386)

(declare-fun array_inv!25291 (array!68386) Bool)

(assert (=> start!94662 (array_inv!25291 _keys!1163)))

(declare-fun mapIsEmpty!40279 () Bool)

(declare-fun mapRes!40279 () Bool)

(assert (=> mapIsEmpty!40279 mapRes!40279))

(declare-fun b!1069882 () Bool)

(declare-fun e!610691 () Bool)

(assert (=> b!1069882 (= e!610691 tp_is_empty!25719)))

(declare-fun b!1069883 () Bool)

(declare-fun e!610687 () Bool)

(assert (=> b!1069883 (= e!610687 tp_is_empty!25719)))

(declare-fun mapNonEmpty!40279 () Bool)

(declare-fun tp!77180 () Bool)

(assert (=> mapNonEmpty!40279 (= mapRes!40279 (and tp!77180 e!610687))))

(declare-fun mapValue!40279 () ValueCell!12156)

(declare-fun mapKey!40279 () (_ BitVec 32))

(declare-fun mapRest!40279 () (Array (_ BitVec 32) ValueCell!12156))

(assert (=> mapNonEmpty!40279 (= (arr!32886 _values!955) (store mapRest!40279 mapKey!40279 mapValue!40279))))

(declare-fun b!1069884 () Bool)

(declare-fun res!713891 () Bool)

(assert (=> b!1069884 (=> (not res!713891) (not e!610688))))

(declare-datatypes ((List!23071 0))(
  ( (Nil!23068) (Cons!23067 (h!24276 (_ BitVec 64)) (t!32407 List!23071)) )
))
(declare-fun arrayNoDuplicates!0 (array!68386 (_ BitVec 32) List!23071) Bool)

(assert (=> b!1069884 (= res!713891 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23068))))

(declare-fun b!1069885 () Bool)

(declare-fun res!713890 () Bool)

(assert (=> b!1069885 (=> (not res!713890) (not e!610688))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1069885 (= res!713890 (and (= (size!33423 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33424 _keys!1163) (size!33423 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1069886 () Bool)

(assert (=> b!1069886 (= e!610688 (not (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!33424 _keys!1163)))))))

(declare-datatypes ((tuple2!16484 0))(
  ( (tuple2!16485 (_1!8252 (_ BitVec 64)) (_2!8252 V!39427)) )
))
(declare-datatypes ((List!23072 0))(
  ( (Nil!23069) (Cons!23068 (h!24277 tuple2!16484) (t!32408 List!23072)) )
))
(declare-datatypes ((ListLongMap!14465 0))(
  ( (ListLongMap!14466 (toList!7248 List!23072)) )
))
(declare-fun lt!472800 () ListLongMap!14465)

(declare-fun lt!472801 () ListLongMap!14465)

(assert (=> b!1069886 (= lt!472800 lt!472801)))

(declare-fun minValue!907 () V!39427)

(declare-fun zeroValueBefore!47 () V!39427)

(declare-datatypes ((Unit!35162 0))(
  ( (Unit!35163) )
))
(declare-fun lt!472799 () Unit!35162)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39427)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!824 (array!68386 array!68384 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39427 V!39427 V!39427 V!39427 (_ BitVec 32) Int) Unit!35162)

(assert (=> b!1069886 (= lt!472799 (lemmaNoChangeToArrayThenSameMapNoExtras!824 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3785 (array!68386 array!68384 (_ BitVec 32) (_ BitVec 32) V!39427 V!39427 (_ BitVec 32) Int) ListLongMap!14465)

(assert (=> b!1069886 (= lt!472801 (getCurrentListMapNoExtraKeys!3785 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069886 (= lt!472800 (getCurrentListMapNoExtraKeys!3785 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069887 () Bool)

(assert (=> b!1069887 (= e!610689 (and e!610691 mapRes!40279))))

(declare-fun condMapEmpty!40279 () Bool)

(declare-fun mapDefault!40279 () ValueCell!12156)

(assert (=> b!1069887 (= condMapEmpty!40279 (= (arr!32886 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12156)) mapDefault!40279)))))

(declare-fun b!1069888 () Bool)

(declare-fun res!713892 () Bool)

(assert (=> b!1069888 (=> (not res!713892) (not e!610688))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68386 (_ BitVec 32)) Bool)

(assert (=> b!1069888 (= res!713892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!94662 res!713893) b!1069885))

(assert (= (and b!1069885 res!713890) b!1069888))

(assert (= (and b!1069888 res!713892) b!1069884))

(assert (= (and b!1069884 res!713891) b!1069886))

(assert (= (and b!1069887 condMapEmpty!40279) mapIsEmpty!40279))

(assert (= (and b!1069887 (not condMapEmpty!40279)) mapNonEmpty!40279))

(get-info :version)

(assert (= (and mapNonEmpty!40279 ((_ is ValueCellFull!12156) mapValue!40279)) b!1069883))

(assert (= (and b!1069887 ((_ is ValueCellFull!12156) mapDefault!40279)) b!1069882))

(assert (= start!94662 b!1069887))

(declare-fun m!988457 () Bool)

(assert (=> b!1069886 m!988457))

(declare-fun m!988459 () Bool)

(assert (=> b!1069886 m!988459))

(declare-fun m!988461 () Bool)

(assert (=> b!1069886 m!988461))

(declare-fun m!988463 () Bool)

(assert (=> b!1069884 m!988463))

(declare-fun m!988465 () Bool)

(assert (=> mapNonEmpty!40279 m!988465))

(declare-fun m!988467 () Bool)

(assert (=> start!94662 m!988467))

(declare-fun m!988469 () Bool)

(assert (=> start!94662 m!988469))

(declare-fun m!988471 () Bool)

(assert (=> start!94662 m!988471))

(declare-fun m!988473 () Bool)

(assert (=> b!1069888 m!988473))

(check-sat (not b!1069888) b_and!34739 (not b_next!21909) tp_is_empty!25719 (not b!1069886) (not b!1069884) (not start!94662) (not mapNonEmpty!40279))
(check-sat b_and!34739 (not b_next!21909))
(get-model)

(declare-fun b!1069918 () Bool)

(declare-fun e!610713 () Bool)

(declare-fun e!610714 () Bool)

(assert (=> b!1069918 (= e!610713 e!610714)))

(declare-fun lt!472819 () (_ BitVec 64))

(assert (=> b!1069918 (= lt!472819 (select (arr!32887 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!472818 () Unit!35162)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!68386 (_ BitVec 64) (_ BitVec 32)) Unit!35162)

(assert (=> b!1069918 (= lt!472818 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!472819 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!68386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1069918 (arrayContainsKey!0 _keys!1163 lt!472819 #b00000000000000000000000000000000)))

(declare-fun lt!472817 () Unit!35162)

(assert (=> b!1069918 (= lt!472817 lt!472818)))

(declare-fun res!713910 () Bool)

(declare-datatypes ((SeekEntryResult!9878 0))(
  ( (MissingZero!9878 (index!41882 (_ BitVec 32))) (Found!9878 (index!41883 (_ BitVec 32))) (Intermediate!9878 (undefined!10690 Bool) (index!41884 (_ BitVec 32)) (x!95842 (_ BitVec 32))) (Undefined!9878) (MissingVacant!9878 (index!41885 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!68386 (_ BitVec 32)) SeekEntryResult!9878)

(assert (=> b!1069918 (= res!713910 (= (seekEntryOrOpen!0 (select (arr!32887 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9878 #b00000000000000000000000000000000)))))

(assert (=> b!1069918 (=> (not res!713910) (not e!610714))))

(declare-fun b!1069919 () Bool)

(declare-fun call!45164 () Bool)

(assert (=> b!1069919 (= e!610714 call!45164)))

(declare-fun d!129183 () Bool)

(declare-fun res!713911 () Bool)

(declare-fun e!610715 () Bool)

(assert (=> d!129183 (=> res!713911 e!610715)))

(assert (=> d!129183 (= res!713911 (bvsge #b00000000000000000000000000000000 (size!33424 _keys!1163)))))

(assert (=> d!129183 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!610715)))

(declare-fun b!1069920 () Bool)

(assert (=> b!1069920 (= e!610713 call!45164)))

(declare-fun bm!45161 () Bool)

(assert (=> bm!45161 (= call!45164 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1069921 () Bool)

(assert (=> b!1069921 (= e!610715 e!610713)))

(declare-fun c!107538 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1069921 (= c!107538 (validKeyInArray!0 (select (arr!32887 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!129183 (not res!713911)) b!1069921))

(assert (= (and b!1069921 c!107538) b!1069918))

(assert (= (and b!1069921 (not c!107538)) b!1069920))

(assert (= (and b!1069918 res!713910) b!1069919))

(assert (= (or b!1069919 b!1069920) bm!45161))

(declare-fun m!988493 () Bool)

(assert (=> b!1069918 m!988493))

(declare-fun m!988495 () Bool)

(assert (=> b!1069918 m!988495))

(declare-fun m!988497 () Bool)

(assert (=> b!1069918 m!988497))

(assert (=> b!1069918 m!988493))

(declare-fun m!988499 () Bool)

(assert (=> b!1069918 m!988499))

(declare-fun m!988501 () Bool)

(assert (=> bm!45161 m!988501))

(assert (=> b!1069921 m!988493))

(assert (=> b!1069921 m!988493))

(declare-fun m!988503 () Bool)

(assert (=> b!1069921 m!988503))

(assert (=> b!1069888 d!129183))

(declare-fun d!129185 () Bool)

(assert (=> d!129185 (= (getCurrentListMapNoExtraKeys!3785 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3785 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!472822 () Unit!35162)

(declare-fun choose!1745 (array!68386 array!68384 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39427 V!39427 V!39427 V!39427 (_ BitVec 32) Int) Unit!35162)

(assert (=> d!129185 (= lt!472822 (choose!1745 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!129185 (validMask!0 mask!1515)))

(assert (=> d!129185 (= (lemmaNoChangeToArrayThenSameMapNoExtras!824 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!472822)))

(declare-fun bs!31509 () Bool)

(assert (= bs!31509 d!129185))

(assert (=> bs!31509 m!988461))

(assert (=> bs!31509 m!988459))

(declare-fun m!988505 () Bool)

(assert (=> bs!31509 m!988505))

(assert (=> bs!31509 m!988467))

(assert (=> b!1069886 d!129185))

(declare-fun b!1069946 () Bool)

(declare-fun e!610732 () Bool)

(declare-fun e!610735 () Bool)

(assert (=> b!1069946 (= e!610732 e!610735)))

(declare-fun c!107550 () Bool)

(assert (=> b!1069946 (= c!107550 (bvslt #b00000000000000000000000000000000 (size!33424 _keys!1163)))))

(declare-fun d!129187 () Bool)

(declare-fun e!610736 () Bool)

(assert (=> d!129187 e!610736))

(declare-fun res!713922 () Bool)

(assert (=> d!129187 (=> (not res!713922) (not e!610736))))

(declare-fun lt!472842 () ListLongMap!14465)

(declare-fun contains!6328 (ListLongMap!14465 (_ BitVec 64)) Bool)

(assert (=> d!129187 (= res!713922 (not (contains!6328 lt!472842 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!610734 () ListLongMap!14465)

(assert (=> d!129187 (= lt!472842 e!610734)))

(declare-fun c!107549 () Bool)

(assert (=> d!129187 (= c!107549 (bvsge #b00000000000000000000000000000000 (size!33424 _keys!1163)))))

(assert (=> d!129187 (validMask!0 mask!1515)))

(assert (=> d!129187 (= (getCurrentListMapNoExtraKeys!3785 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!472842)))

(declare-fun b!1069947 () Bool)

(assert (=> b!1069947 (= e!610735 (= lt!472842 (getCurrentListMapNoExtraKeys!3785 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1069948 () Bool)

(declare-fun e!610731 () Bool)

(assert (=> b!1069948 (= e!610731 (validKeyInArray!0 (select (arr!32887 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1069948 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1069949 () Bool)

(declare-fun res!713920 () Bool)

(assert (=> b!1069949 (=> (not res!713920) (not e!610736))))

(assert (=> b!1069949 (= res!713920 (not (contains!6328 lt!472842 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1069950 () Bool)

(assert (=> b!1069950 (= e!610734 (ListLongMap!14466 Nil!23069))))

(declare-fun b!1069951 () Bool)

(assert (=> b!1069951 (= e!610736 e!610732)))

(declare-fun c!107548 () Bool)

(assert (=> b!1069951 (= c!107548 e!610731)))

(declare-fun res!713921 () Bool)

(assert (=> b!1069951 (=> (not res!713921) (not e!610731))))

(assert (=> b!1069951 (= res!713921 (bvslt #b00000000000000000000000000000000 (size!33424 _keys!1163)))))

(declare-fun b!1069952 () Bool)

(declare-fun e!610730 () ListLongMap!14465)

(declare-fun call!45167 () ListLongMap!14465)

(assert (=> b!1069952 (= e!610730 call!45167)))

(declare-fun b!1069953 () Bool)

(declare-fun lt!472840 () Unit!35162)

(declare-fun lt!472837 () Unit!35162)

(assert (=> b!1069953 (= lt!472840 lt!472837)))

(declare-fun lt!472843 () V!39427)

(declare-fun lt!472839 () ListLongMap!14465)

(declare-fun lt!472841 () (_ BitVec 64))

(declare-fun lt!472838 () (_ BitVec 64))

(declare-fun +!3123 (ListLongMap!14465 tuple2!16484) ListLongMap!14465)

(assert (=> b!1069953 (not (contains!6328 (+!3123 lt!472839 (tuple2!16485 lt!472838 lt!472843)) lt!472841))))

(declare-fun addStillNotContains!258 (ListLongMap!14465 (_ BitVec 64) V!39427 (_ BitVec 64)) Unit!35162)

(assert (=> b!1069953 (= lt!472837 (addStillNotContains!258 lt!472839 lt!472838 lt!472843 lt!472841))))

(assert (=> b!1069953 (= lt!472841 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!17137 (ValueCell!12156 V!39427) V!39427)

(declare-fun dynLambda!2039 (Int (_ BitVec 64)) V!39427)

(assert (=> b!1069953 (= lt!472843 (get!17137 (select (arr!32886 _values!955) #b00000000000000000000000000000000) (dynLambda!2039 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1069953 (= lt!472838 (select (arr!32887 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1069953 (= lt!472839 call!45167)))

(assert (=> b!1069953 (= e!610730 (+!3123 call!45167 (tuple2!16485 (select (arr!32887 _keys!1163) #b00000000000000000000000000000000) (get!17137 (select (arr!32886 _values!955) #b00000000000000000000000000000000) (dynLambda!2039 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1069954 () Bool)

(assert (=> b!1069954 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33424 _keys!1163)))))

(assert (=> b!1069954 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33423 _values!955)))))

(declare-fun e!610733 () Bool)

(declare-fun apply!963 (ListLongMap!14465 (_ BitVec 64)) V!39427)

(assert (=> b!1069954 (= e!610733 (= (apply!963 lt!472842 (select (arr!32887 _keys!1163) #b00000000000000000000000000000000)) (get!17137 (select (arr!32886 _values!955) #b00000000000000000000000000000000) (dynLambda!2039 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1069955 () Bool)

(assert (=> b!1069955 (= e!610732 e!610733)))

(assert (=> b!1069955 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33424 _keys!1163)))))

(declare-fun res!713923 () Bool)

(assert (=> b!1069955 (= res!713923 (contains!6328 lt!472842 (select (arr!32887 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1069955 (=> (not res!713923) (not e!610733))))

(declare-fun bm!45164 () Bool)

(assert (=> bm!45164 (= call!45167 (getCurrentListMapNoExtraKeys!3785 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1069956 () Bool)

(declare-fun isEmpty!949 (ListLongMap!14465) Bool)

(assert (=> b!1069956 (= e!610735 (isEmpty!949 lt!472842))))

(declare-fun b!1069957 () Bool)

(assert (=> b!1069957 (= e!610734 e!610730)))

(declare-fun c!107547 () Bool)

(assert (=> b!1069957 (= c!107547 (validKeyInArray!0 (select (arr!32887 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!129187 c!107549) b!1069950))

(assert (= (and d!129187 (not c!107549)) b!1069957))

(assert (= (and b!1069957 c!107547) b!1069953))

(assert (= (and b!1069957 (not c!107547)) b!1069952))

(assert (= (or b!1069953 b!1069952) bm!45164))

(assert (= (and d!129187 res!713922) b!1069949))

(assert (= (and b!1069949 res!713920) b!1069951))

(assert (= (and b!1069951 res!713921) b!1069948))

(assert (= (and b!1069951 c!107548) b!1069955))

(assert (= (and b!1069951 (not c!107548)) b!1069946))

(assert (= (and b!1069955 res!713923) b!1069954))

(assert (= (and b!1069946 c!107550) b!1069947))

(assert (= (and b!1069946 (not c!107550)) b!1069956))

(declare-fun b_lambda!16671 () Bool)

(assert (=> (not b_lambda!16671) (not b!1069953)))

(declare-fun t!32411 () Bool)

(declare-fun tb!7159 () Bool)

(assert (=> (and start!94662 (= defaultEntry!963 defaultEntry!963) t!32411) tb!7159))

(declare-fun result!14769 () Bool)

(assert (=> tb!7159 (= result!14769 tp_is_empty!25719)))

(assert (=> b!1069953 t!32411))

(declare-fun b_and!34743 () Bool)

(assert (= b_and!34739 (and (=> t!32411 result!14769) b_and!34743)))

(declare-fun b_lambda!16673 () Bool)

(assert (=> (not b_lambda!16673) (not b!1069954)))

(assert (=> b!1069954 t!32411))

(declare-fun b_and!34745 () Bool)

(assert (= b_and!34743 (and (=> t!32411 result!14769) b_and!34745)))

(declare-fun m!988507 () Bool)

(assert (=> b!1069949 m!988507))

(assert (=> b!1069955 m!988493))

(assert (=> b!1069955 m!988493))

(declare-fun m!988509 () Bool)

(assert (=> b!1069955 m!988509))

(assert (=> b!1069948 m!988493))

(assert (=> b!1069948 m!988493))

(assert (=> b!1069948 m!988503))

(declare-fun m!988511 () Bool)

(assert (=> d!129187 m!988511))

(assert (=> d!129187 m!988467))

(assert (=> b!1069957 m!988493))

(assert (=> b!1069957 m!988493))

(assert (=> b!1069957 m!988503))

(declare-fun m!988513 () Bool)

(assert (=> b!1069953 m!988513))

(declare-fun m!988515 () Bool)

(assert (=> b!1069953 m!988515))

(declare-fun m!988517 () Bool)

(assert (=> b!1069953 m!988517))

(declare-fun m!988519 () Bool)

(assert (=> b!1069953 m!988519))

(assert (=> b!1069953 m!988493))

(declare-fun m!988521 () Bool)

(assert (=> b!1069953 m!988521))

(declare-fun m!988523 () Bool)

(assert (=> b!1069953 m!988523))

(assert (=> b!1069953 m!988515))

(assert (=> b!1069953 m!988517))

(assert (=> b!1069953 m!988523))

(declare-fun m!988525 () Bool)

(assert (=> b!1069953 m!988525))

(assert (=> b!1069954 m!988493))

(declare-fun m!988527 () Bool)

(assert (=> b!1069954 m!988527))

(assert (=> b!1069954 m!988515))

(assert (=> b!1069954 m!988517))

(assert (=> b!1069954 m!988519))

(assert (=> b!1069954 m!988515))

(assert (=> b!1069954 m!988493))

(assert (=> b!1069954 m!988517))

(declare-fun m!988529 () Bool)

(assert (=> bm!45164 m!988529))

(declare-fun m!988531 () Bool)

(assert (=> b!1069956 m!988531))

(assert (=> b!1069947 m!988529))

(assert (=> b!1069886 d!129187))

(declare-fun b!1069960 () Bool)

(declare-fun e!610739 () Bool)

(declare-fun e!610742 () Bool)

(assert (=> b!1069960 (= e!610739 e!610742)))

(declare-fun c!107554 () Bool)

(assert (=> b!1069960 (= c!107554 (bvslt #b00000000000000000000000000000000 (size!33424 _keys!1163)))))

(declare-fun d!129189 () Bool)

(declare-fun e!610743 () Bool)

(assert (=> d!129189 e!610743))

(declare-fun res!713926 () Bool)

(assert (=> d!129189 (=> (not res!713926) (not e!610743))))

(declare-fun lt!472849 () ListLongMap!14465)

(assert (=> d!129189 (= res!713926 (not (contains!6328 lt!472849 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!610741 () ListLongMap!14465)

(assert (=> d!129189 (= lt!472849 e!610741)))

(declare-fun c!107553 () Bool)

(assert (=> d!129189 (= c!107553 (bvsge #b00000000000000000000000000000000 (size!33424 _keys!1163)))))

(assert (=> d!129189 (validMask!0 mask!1515)))

(assert (=> d!129189 (= (getCurrentListMapNoExtraKeys!3785 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!472849)))

(declare-fun b!1069961 () Bool)

(assert (=> b!1069961 (= e!610742 (= lt!472849 (getCurrentListMapNoExtraKeys!3785 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1069962 () Bool)

(declare-fun e!610738 () Bool)

(assert (=> b!1069962 (= e!610738 (validKeyInArray!0 (select (arr!32887 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1069962 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1069963 () Bool)

(declare-fun res!713924 () Bool)

(assert (=> b!1069963 (=> (not res!713924) (not e!610743))))

(assert (=> b!1069963 (= res!713924 (not (contains!6328 lt!472849 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1069964 () Bool)

(assert (=> b!1069964 (= e!610741 (ListLongMap!14466 Nil!23069))))

(declare-fun b!1069965 () Bool)

(assert (=> b!1069965 (= e!610743 e!610739)))

(declare-fun c!107552 () Bool)

(assert (=> b!1069965 (= c!107552 e!610738)))

(declare-fun res!713925 () Bool)

(assert (=> b!1069965 (=> (not res!713925) (not e!610738))))

(assert (=> b!1069965 (= res!713925 (bvslt #b00000000000000000000000000000000 (size!33424 _keys!1163)))))

(declare-fun b!1069966 () Bool)

(declare-fun e!610737 () ListLongMap!14465)

(declare-fun call!45168 () ListLongMap!14465)

(assert (=> b!1069966 (= e!610737 call!45168)))

(declare-fun b!1069967 () Bool)

(declare-fun lt!472847 () Unit!35162)

(declare-fun lt!472844 () Unit!35162)

(assert (=> b!1069967 (= lt!472847 lt!472844)))

(declare-fun lt!472846 () ListLongMap!14465)

(declare-fun lt!472850 () V!39427)

(declare-fun lt!472848 () (_ BitVec 64))

(declare-fun lt!472845 () (_ BitVec 64))

(assert (=> b!1069967 (not (contains!6328 (+!3123 lt!472846 (tuple2!16485 lt!472845 lt!472850)) lt!472848))))

(assert (=> b!1069967 (= lt!472844 (addStillNotContains!258 lt!472846 lt!472845 lt!472850 lt!472848))))

(assert (=> b!1069967 (= lt!472848 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1069967 (= lt!472850 (get!17137 (select (arr!32886 _values!955) #b00000000000000000000000000000000) (dynLambda!2039 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1069967 (= lt!472845 (select (arr!32887 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1069967 (= lt!472846 call!45168)))

(assert (=> b!1069967 (= e!610737 (+!3123 call!45168 (tuple2!16485 (select (arr!32887 _keys!1163) #b00000000000000000000000000000000) (get!17137 (select (arr!32886 _values!955) #b00000000000000000000000000000000) (dynLambda!2039 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1069968 () Bool)

(assert (=> b!1069968 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33424 _keys!1163)))))

(assert (=> b!1069968 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33423 _values!955)))))

(declare-fun e!610740 () Bool)

(assert (=> b!1069968 (= e!610740 (= (apply!963 lt!472849 (select (arr!32887 _keys!1163) #b00000000000000000000000000000000)) (get!17137 (select (arr!32886 _values!955) #b00000000000000000000000000000000) (dynLambda!2039 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1069969 () Bool)

(assert (=> b!1069969 (= e!610739 e!610740)))

(assert (=> b!1069969 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33424 _keys!1163)))))

(declare-fun res!713927 () Bool)

(assert (=> b!1069969 (= res!713927 (contains!6328 lt!472849 (select (arr!32887 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1069969 (=> (not res!713927) (not e!610740))))

(declare-fun bm!45165 () Bool)

(assert (=> bm!45165 (= call!45168 (getCurrentListMapNoExtraKeys!3785 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1069970 () Bool)

(assert (=> b!1069970 (= e!610742 (isEmpty!949 lt!472849))))

(declare-fun b!1069971 () Bool)

(assert (=> b!1069971 (= e!610741 e!610737)))

(declare-fun c!107551 () Bool)

(assert (=> b!1069971 (= c!107551 (validKeyInArray!0 (select (arr!32887 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!129189 c!107553) b!1069964))

(assert (= (and d!129189 (not c!107553)) b!1069971))

(assert (= (and b!1069971 c!107551) b!1069967))

(assert (= (and b!1069971 (not c!107551)) b!1069966))

(assert (= (or b!1069967 b!1069966) bm!45165))

(assert (= (and d!129189 res!713926) b!1069963))

(assert (= (and b!1069963 res!713924) b!1069965))

(assert (= (and b!1069965 res!713925) b!1069962))

(assert (= (and b!1069965 c!107552) b!1069969))

(assert (= (and b!1069965 (not c!107552)) b!1069960))

(assert (= (and b!1069969 res!713927) b!1069968))

(assert (= (and b!1069960 c!107554) b!1069961))

(assert (= (and b!1069960 (not c!107554)) b!1069970))

(declare-fun b_lambda!16675 () Bool)

(assert (=> (not b_lambda!16675) (not b!1069967)))

(assert (=> b!1069967 t!32411))

(declare-fun b_and!34747 () Bool)

(assert (= b_and!34745 (and (=> t!32411 result!14769) b_and!34747)))

(declare-fun b_lambda!16677 () Bool)

(assert (=> (not b_lambda!16677) (not b!1069968)))

(assert (=> b!1069968 t!32411))

(declare-fun b_and!34749 () Bool)

(assert (= b_and!34747 (and (=> t!32411 result!14769) b_and!34749)))

(declare-fun m!988533 () Bool)

(assert (=> b!1069963 m!988533))

(assert (=> b!1069969 m!988493))

(assert (=> b!1069969 m!988493))

(declare-fun m!988535 () Bool)

(assert (=> b!1069969 m!988535))

(assert (=> b!1069962 m!988493))

(assert (=> b!1069962 m!988493))

(assert (=> b!1069962 m!988503))

(declare-fun m!988537 () Bool)

(assert (=> d!129189 m!988537))

(assert (=> d!129189 m!988467))

(assert (=> b!1069971 m!988493))

(assert (=> b!1069971 m!988493))

(assert (=> b!1069971 m!988503))

(declare-fun m!988539 () Bool)

(assert (=> b!1069967 m!988539))

(assert (=> b!1069967 m!988515))

(assert (=> b!1069967 m!988517))

(assert (=> b!1069967 m!988519))

(assert (=> b!1069967 m!988493))

(declare-fun m!988541 () Bool)

(assert (=> b!1069967 m!988541))

(declare-fun m!988543 () Bool)

(assert (=> b!1069967 m!988543))

(assert (=> b!1069967 m!988515))

(assert (=> b!1069967 m!988517))

(assert (=> b!1069967 m!988543))

(declare-fun m!988545 () Bool)

(assert (=> b!1069967 m!988545))

(assert (=> b!1069968 m!988493))

(declare-fun m!988547 () Bool)

(assert (=> b!1069968 m!988547))

(assert (=> b!1069968 m!988515))

(assert (=> b!1069968 m!988517))

(assert (=> b!1069968 m!988519))

(assert (=> b!1069968 m!988515))

(assert (=> b!1069968 m!988493))

(assert (=> b!1069968 m!988517))

(declare-fun m!988549 () Bool)

(assert (=> bm!45165 m!988549))

(declare-fun m!988551 () Bool)

(assert (=> b!1069970 m!988551))

(assert (=> b!1069961 m!988549))

(assert (=> b!1069886 d!129189))

(declare-fun d!129191 () Bool)

(assert (=> d!129191 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!94662 d!129191))

(declare-fun d!129193 () Bool)

(assert (=> d!129193 (= (array_inv!25290 _values!955) (bvsge (size!33423 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!94662 d!129193))

(declare-fun d!129195 () Bool)

(assert (=> d!129195 (= (array_inv!25291 _keys!1163) (bvsge (size!33424 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!94662 d!129195))

(declare-fun b!1069982 () Bool)

(declare-fun e!610753 () Bool)

(declare-fun contains!6329 (List!23071 (_ BitVec 64)) Bool)

(assert (=> b!1069982 (= e!610753 (contains!6329 Nil!23068 (select (arr!32887 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1069983 () Bool)

(declare-fun e!610752 () Bool)

(declare-fun e!610754 () Bool)

(assert (=> b!1069983 (= e!610752 e!610754)))

(declare-fun res!713935 () Bool)

(assert (=> b!1069983 (=> (not res!713935) (not e!610754))))

(assert (=> b!1069983 (= res!713935 (not e!610753))))

(declare-fun res!713934 () Bool)

(assert (=> b!1069983 (=> (not res!713934) (not e!610753))))

(assert (=> b!1069983 (= res!713934 (validKeyInArray!0 (select (arr!32887 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1069984 () Bool)

(declare-fun e!610755 () Bool)

(declare-fun call!45171 () Bool)

(assert (=> b!1069984 (= e!610755 call!45171)))

(declare-fun b!1069985 () Bool)

(assert (=> b!1069985 (= e!610755 call!45171)))

(declare-fun b!1069986 () Bool)

(assert (=> b!1069986 (= e!610754 e!610755)))

(declare-fun c!107557 () Bool)

(assert (=> b!1069986 (= c!107557 (validKeyInArray!0 (select (arr!32887 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45168 () Bool)

(assert (=> bm!45168 (= call!45171 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107557 (Cons!23067 (select (arr!32887 _keys!1163) #b00000000000000000000000000000000) Nil!23068) Nil!23068)))))

(declare-fun d!129197 () Bool)

(declare-fun res!713936 () Bool)

(assert (=> d!129197 (=> res!713936 e!610752)))

(assert (=> d!129197 (= res!713936 (bvsge #b00000000000000000000000000000000 (size!33424 _keys!1163)))))

(assert (=> d!129197 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23068) e!610752)))

(assert (= (and d!129197 (not res!713936)) b!1069983))

(assert (= (and b!1069983 res!713934) b!1069982))

(assert (= (and b!1069983 res!713935) b!1069986))

(assert (= (and b!1069986 c!107557) b!1069985))

(assert (= (and b!1069986 (not c!107557)) b!1069984))

(assert (= (or b!1069985 b!1069984) bm!45168))

(assert (=> b!1069982 m!988493))

(assert (=> b!1069982 m!988493))

(declare-fun m!988553 () Bool)

(assert (=> b!1069982 m!988553))

(assert (=> b!1069983 m!988493))

(assert (=> b!1069983 m!988493))

(assert (=> b!1069983 m!988503))

(assert (=> b!1069986 m!988493))

(assert (=> b!1069986 m!988493))

(assert (=> b!1069986 m!988503))

(assert (=> bm!45168 m!988493))

(declare-fun m!988555 () Bool)

(assert (=> bm!45168 m!988555))

(assert (=> b!1069884 d!129197))

(declare-fun b!1069993 () Bool)

(declare-fun e!610761 () Bool)

(assert (=> b!1069993 (= e!610761 tp_is_empty!25719)))

(declare-fun mapNonEmpty!40285 () Bool)

(declare-fun mapRes!40285 () Bool)

(declare-fun tp!77190 () Bool)

(assert (=> mapNonEmpty!40285 (= mapRes!40285 (and tp!77190 e!610761))))

(declare-fun mapRest!40285 () (Array (_ BitVec 32) ValueCell!12156))

(declare-fun mapValue!40285 () ValueCell!12156)

(declare-fun mapKey!40285 () (_ BitVec 32))

(assert (=> mapNonEmpty!40285 (= mapRest!40279 (store mapRest!40285 mapKey!40285 mapValue!40285))))

(declare-fun condMapEmpty!40285 () Bool)

(declare-fun mapDefault!40285 () ValueCell!12156)

(assert (=> mapNonEmpty!40279 (= condMapEmpty!40285 (= mapRest!40279 ((as const (Array (_ BitVec 32) ValueCell!12156)) mapDefault!40285)))))

(declare-fun e!610760 () Bool)

(assert (=> mapNonEmpty!40279 (= tp!77180 (and e!610760 mapRes!40285))))

(declare-fun mapIsEmpty!40285 () Bool)

(assert (=> mapIsEmpty!40285 mapRes!40285))

(declare-fun b!1069994 () Bool)

(assert (=> b!1069994 (= e!610760 tp_is_empty!25719)))

(assert (= (and mapNonEmpty!40279 condMapEmpty!40285) mapIsEmpty!40285))

(assert (= (and mapNonEmpty!40279 (not condMapEmpty!40285)) mapNonEmpty!40285))

(assert (= (and mapNonEmpty!40285 ((_ is ValueCellFull!12156) mapValue!40285)) b!1069993))

(assert (= (and mapNonEmpty!40279 ((_ is ValueCellFull!12156) mapDefault!40285)) b!1069994))

(declare-fun m!988557 () Bool)

(assert (=> mapNonEmpty!40285 m!988557))

(declare-fun b_lambda!16679 () Bool)

(assert (= b_lambda!16673 (or (and start!94662 b_free!21909) b_lambda!16679)))

(declare-fun b_lambda!16681 () Bool)

(assert (= b_lambda!16675 (or (and start!94662 b_free!21909) b_lambda!16681)))

(declare-fun b_lambda!16683 () Bool)

(assert (= b_lambda!16671 (or (and start!94662 b_free!21909) b_lambda!16683)))

(declare-fun b_lambda!16685 () Bool)

(assert (= b_lambda!16677 (or (and start!94662 b_free!21909) b_lambda!16685)))

(check-sat (not b!1069969) (not b_lambda!16685) (not b!1069983) (not b!1069949) (not b!1069948) (not b!1069982) (not b_next!21909) (not b!1069961) tp_is_empty!25719 (not b!1069957) (not mapNonEmpty!40285) (not b!1069967) (not b!1069918) (not bm!45164) (not d!129189) (not b!1069970) (not b!1069955) (not b!1069968) (not bm!45168) (not b!1069921) (not b!1069954) (not b_lambda!16679) (not b!1069986) (not b!1069971) (not bm!45161) (not b!1069947) (not b!1069953) (not d!129187) (not b_lambda!16681) b_and!34749 (not b_lambda!16683) (not d!129185) (not b!1069963) (not b!1069962) (not b!1069956) (not bm!45165))
(check-sat b_and!34749 (not b_next!21909))
