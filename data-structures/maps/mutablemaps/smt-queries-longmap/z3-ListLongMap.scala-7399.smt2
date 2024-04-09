; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94208 () Bool)

(assert start!94208)

(declare-fun b_free!21573 () Bool)

(declare-fun b_next!21573 () Bool)

(assert (=> start!94208 (= b_free!21573 (not b_next!21573))))

(declare-fun tp!76155 () Bool)

(declare-fun b_and!34341 () Bool)

(assert (=> start!94208 (= tp!76155 b_and!34341)))

(declare-fun b!1064922 () Bool)

(declare-fun e!607064 () Bool)

(declare-fun e!607066 () Bool)

(declare-fun mapRes!39757 () Bool)

(assert (=> b!1064922 (= e!607064 (and e!607066 mapRes!39757))))

(declare-fun condMapEmpty!39757 () Bool)

(declare-datatypes ((V!38979 0))(
  ( (V!38980 (val!12742 Int)) )
))
(declare-datatypes ((ValueCell!11988 0))(
  ( (ValueCellFull!11988 (v!15355 V!38979)) (EmptyCell!11988) )
))
(declare-datatypes ((array!67726 0))(
  ( (array!67727 (arr!32563 (Array (_ BitVec 32) ValueCell!11988)) (size!33100 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67726)

(declare-fun mapDefault!39757 () ValueCell!11988)

(assert (=> b!1064922 (= condMapEmpty!39757 (= (arr!32563 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11988)) mapDefault!39757)))))

(declare-fun mapNonEmpty!39757 () Bool)

(declare-fun tp!76154 () Bool)

(declare-fun e!607068 () Bool)

(assert (=> mapNonEmpty!39757 (= mapRes!39757 (and tp!76154 e!607068))))

(declare-fun mapRest!39757 () (Array (_ BitVec 32) ValueCell!11988))

(declare-fun mapKey!39757 () (_ BitVec 32))

(declare-fun mapValue!39757 () ValueCell!11988)

(assert (=> mapNonEmpty!39757 (= (arr!32563 _values!955) (store mapRest!39757 mapKey!39757 mapValue!39757))))

(declare-fun b!1064923 () Bool)

(declare-fun res!710984 () Bool)

(declare-fun e!607067 () Bool)

(assert (=> b!1064923 (=> (not res!710984) (not e!607067))))

(declare-datatypes ((array!67728 0))(
  ( (array!67729 (arr!32564 (Array (_ BitVec 32) (_ BitVec 64))) (size!33101 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67728)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67728 (_ BitVec 32)) Bool)

(assert (=> b!1064923 (= res!710984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1064924 () Bool)

(declare-fun tp_is_empty!25383 () Bool)

(assert (=> b!1064924 (= e!607068 tp_is_empty!25383)))

(declare-fun b!1064925 () Bool)

(declare-fun res!710985 () Bool)

(assert (=> b!1064925 (=> (not res!710985) (not e!607067))))

(declare-datatypes ((List!22827 0))(
  ( (Nil!22824) (Cons!22823 (h!24032 (_ BitVec 64)) (t!32151 List!22827)) )
))
(declare-fun arrayNoDuplicates!0 (array!67728 (_ BitVec 32) List!22827) Bool)

(assert (=> b!1064925 (= res!710985 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22824))))

(declare-fun b!1064926 () Bool)

(assert (=> b!1064926 (= e!607066 tp_is_empty!25383)))

(declare-fun res!710982 () Bool)

(assert (=> start!94208 (=> (not res!710982) (not e!607067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94208 (= res!710982 (validMask!0 mask!1515))))

(assert (=> start!94208 e!607067))

(assert (=> start!94208 true))

(assert (=> start!94208 tp_is_empty!25383))

(declare-fun array_inv!25052 (array!67726) Bool)

(assert (=> start!94208 (and (array_inv!25052 _values!955) e!607064)))

(assert (=> start!94208 tp!76155))

(declare-fun array_inv!25053 (array!67728) Bool)

(assert (=> start!94208 (array_inv!25053 _keys!1163)))

(declare-fun b!1064927 () Bool)

(declare-fun e!607063 () Bool)

(assert (=> b!1064927 (= e!607063 (bvsle #b00000000000000000000000000000000 (size!33101 _keys!1163)))))

(declare-fun zeroValueBefore!47 () V!38979)

(declare-datatypes ((tuple2!16228 0))(
  ( (tuple2!16229 (_1!8124 (_ BitVec 64)) (_2!8124 V!38979)) )
))
(declare-datatypes ((List!22828 0))(
  ( (Nil!22825) (Cons!22824 (h!24033 tuple2!16228) (t!32152 List!22828)) )
))
(declare-datatypes ((ListLongMap!14209 0))(
  ( (ListLongMap!14210 (toList!7120 List!22828)) )
))
(declare-fun lt!469443 () ListLongMap!14209)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38979)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4043 (array!67728 array!67726 (_ BitVec 32) (_ BitVec 32) V!38979 V!38979 (_ BitVec 32) Int) ListLongMap!14209)

(assert (=> b!1064927 (= lt!469443 (getCurrentListMap!4043 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064928 () Bool)

(declare-fun res!710986 () Bool)

(assert (=> b!1064928 (=> (not res!710986) (not e!607067))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1064928 (= res!710986 (and (= (size!33100 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33101 _keys!1163) (size!33100 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39757 () Bool)

(assert (=> mapIsEmpty!39757 mapRes!39757))

(declare-fun b!1064929 () Bool)

(assert (=> b!1064929 (= e!607067 (not e!607063))))

(declare-fun res!710983 () Bool)

(assert (=> b!1064929 (=> res!710983 e!607063)))

(assert (=> b!1064929 (= res!710983 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!469444 () ListLongMap!14209)

(declare-fun lt!469445 () ListLongMap!14209)

(assert (=> b!1064929 (= lt!469444 lt!469445)))

(declare-datatypes ((Unit!34901 0))(
  ( (Unit!34902) )
))
(declare-fun lt!469446 () Unit!34901)

(declare-fun zeroValueAfter!47 () V!38979)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!710 (array!67728 array!67726 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38979 V!38979 V!38979 V!38979 (_ BitVec 32) Int) Unit!34901)

(assert (=> b!1064929 (= lt!469446 (lemmaNoChangeToArrayThenSameMapNoExtras!710 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3671 (array!67728 array!67726 (_ BitVec 32) (_ BitVec 32) V!38979 V!38979 (_ BitVec 32) Int) ListLongMap!14209)

(assert (=> b!1064929 (= lt!469445 (getCurrentListMapNoExtraKeys!3671 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064929 (= lt!469444 (getCurrentListMapNoExtraKeys!3671 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!94208 res!710982) b!1064928))

(assert (= (and b!1064928 res!710986) b!1064923))

(assert (= (and b!1064923 res!710984) b!1064925))

(assert (= (and b!1064925 res!710985) b!1064929))

(assert (= (and b!1064929 (not res!710983)) b!1064927))

(assert (= (and b!1064922 condMapEmpty!39757) mapIsEmpty!39757))

(assert (= (and b!1064922 (not condMapEmpty!39757)) mapNonEmpty!39757))

(get-info :version)

(assert (= (and mapNonEmpty!39757 ((_ is ValueCellFull!11988) mapValue!39757)) b!1064924))

(assert (= (and b!1064922 ((_ is ValueCellFull!11988) mapDefault!39757)) b!1064926))

(assert (= start!94208 b!1064922))

(declare-fun m!983515 () Bool)

(assert (=> b!1064923 m!983515))

(declare-fun m!983517 () Bool)

(assert (=> mapNonEmpty!39757 m!983517))

(declare-fun m!983519 () Bool)

(assert (=> start!94208 m!983519))

(declare-fun m!983521 () Bool)

(assert (=> start!94208 m!983521))

(declare-fun m!983523 () Bool)

(assert (=> start!94208 m!983523))

(declare-fun m!983525 () Bool)

(assert (=> b!1064925 m!983525))

(declare-fun m!983527 () Bool)

(assert (=> b!1064927 m!983527))

(declare-fun m!983529 () Bool)

(assert (=> b!1064929 m!983529))

(declare-fun m!983531 () Bool)

(assert (=> b!1064929 m!983531))

(declare-fun m!983533 () Bool)

(assert (=> b!1064929 m!983533))

(check-sat (not b!1064923) (not b!1064929) (not b!1064925) (not start!94208) b_and!34341 (not mapNonEmpty!39757) tp_is_empty!25383 (not b!1064927) (not b_next!21573))
(check-sat b_and!34341 (not b_next!21573))
(get-model)

(declare-fun b!1064962 () Bool)

(declare-fun e!607093 () Bool)

(declare-fun call!44985 () Bool)

(assert (=> b!1064962 (= e!607093 call!44985)))

(declare-fun bm!44982 () Bool)

(assert (=> bm!44982 (= call!44985 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1064963 () Bool)

(declare-fun e!607094 () Bool)

(assert (=> b!1064963 (= e!607093 e!607094)))

(declare-fun lt!469467 () (_ BitVec 64))

(assert (=> b!1064963 (= lt!469467 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!469465 () Unit!34901)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!67728 (_ BitVec 64) (_ BitVec 32)) Unit!34901)

(assert (=> b!1064963 (= lt!469465 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!469467 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!67728 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1064963 (arrayContainsKey!0 _keys!1163 lt!469467 #b00000000000000000000000000000000)))

(declare-fun lt!469466 () Unit!34901)

(assert (=> b!1064963 (= lt!469466 lt!469465)))

(declare-fun res!711007 () Bool)

(declare-datatypes ((SeekEntryResult!9872 0))(
  ( (MissingZero!9872 (index!41858 (_ BitVec 32))) (Found!9872 (index!41859 (_ BitVec 32))) (Intermediate!9872 (undefined!10684 Bool) (index!41860 (_ BitVec 32)) (x!95322 (_ BitVec 32))) (Undefined!9872) (MissingVacant!9872 (index!41861 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!67728 (_ BitVec 32)) SeekEntryResult!9872)

(assert (=> b!1064963 (= res!711007 (= (seekEntryOrOpen!0 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9872 #b00000000000000000000000000000000)))))

(assert (=> b!1064963 (=> (not res!711007) (not e!607094))))

(declare-fun b!1064964 () Bool)

(assert (=> b!1064964 (= e!607094 call!44985)))

(declare-fun b!1064965 () Bool)

(declare-fun e!607095 () Bool)

(assert (=> b!1064965 (= e!607095 e!607093)))

(declare-fun c!107298 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1064965 (= c!107298 (validKeyInArray!0 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!128933 () Bool)

(declare-fun res!711006 () Bool)

(assert (=> d!128933 (=> res!711006 e!607095)))

(assert (=> d!128933 (= res!711006 (bvsge #b00000000000000000000000000000000 (size!33101 _keys!1163)))))

(assert (=> d!128933 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!607095)))

(assert (= (and d!128933 (not res!711006)) b!1064965))

(assert (= (and b!1064965 c!107298) b!1064963))

(assert (= (and b!1064965 (not c!107298)) b!1064962))

(assert (= (and b!1064963 res!711007) b!1064964))

(assert (= (or b!1064964 b!1064962) bm!44982))

(declare-fun m!983555 () Bool)

(assert (=> bm!44982 m!983555))

(declare-fun m!983557 () Bool)

(assert (=> b!1064963 m!983557))

(declare-fun m!983559 () Bool)

(assert (=> b!1064963 m!983559))

(declare-fun m!983561 () Bool)

(assert (=> b!1064963 m!983561))

(assert (=> b!1064963 m!983557))

(declare-fun m!983563 () Bool)

(assert (=> b!1064963 m!983563))

(assert (=> b!1064965 m!983557))

(assert (=> b!1064965 m!983557))

(declare-fun m!983565 () Bool)

(assert (=> b!1064965 m!983565))

(assert (=> b!1064923 d!128933))

(declare-fun bm!44997 () Bool)

(declare-fun call!45000 () ListLongMap!14209)

(assert (=> bm!44997 (= call!45000 (getCurrentListMapNoExtraKeys!3671 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065008 () Bool)

(declare-fun e!607129 () Bool)

(assert (=> b!1065008 (= e!607129 (validKeyInArray!0 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1065009 () Bool)

(declare-fun c!107313 () Bool)

(assert (=> b!1065009 (= c!107313 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!607134 () ListLongMap!14209)

(declare-fun e!607124 () ListLongMap!14209)

(assert (=> b!1065009 (= e!607134 e!607124)))

(declare-fun b!1065010 () Bool)

(declare-fun e!607131 () ListLongMap!14209)

(declare-fun call!45004 () ListLongMap!14209)

(declare-fun +!3080 (ListLongMap!14209 tuple2!16228) ListLongMap!14209)

(assert (=> b!1065010 (= e!607131 (+!3080 call!45004 (tuple2!16229 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun bm!44998 () Bool)

(declare-fun call!45005 () Bool)

(declare-fun lt!469521 () ListLongMap!14209)

(declare-fun contains!6281 (ListLongMap!14209 (_ BitVec 64)) Bool)

(assert (=> bm!44998 (= call!45005 (contains!6281 lt!469521 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1065011 () Bool)

(declare-fun call!45003 () ListLongMap!14209)

(assert (=> b!1065011 (= e!607134 call!45003)))

(declare-fun b!1065012 () Bool)

(declare-fun e!607133 () Bool)

(declare-fun call!45001 () Bool)

(assert (=> b!1065012 (= e!607133 (not call!45001))))

(declare-fun bm!44999 () Bool)

(assert (=> bm!44999 (= call!45001 (contains!6281 lt!469521 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1065013 () Bool)

(assert (=> b!1065013 (= e!607124 call!45003)))

(declare-fun b!1065014 () Bool)

(declare-fun res!711030 () Bool)

(declare-fun e!607126 () Bool)

(assert (=> b!1065014 (=> (not res!711030) (not e!607126))))

(declare-fun e!607130 () Bool)

(assert (=> b!1065014 (= res!711030 e!607130)))

(declare-fun res!711031 () Bool)

(assert (=> b!1065014 (=> res!711031 e!607130)))

(assert (=> b!1065014 (= res!711031 (not e!607129))))

(declare-fun res!711027 () Bool)

(assert (=> b!1065014 (=> (not res!711027) (not e!607129))))

(assert (=> b!1065014 (= res!711027 (bvslt #b00000000000000000000000000000000 (size!33101 _keys!1163)))))

(declare-fun b!1065015 () Bool)

(declare-fun e!607128 () Bool)

(declare-fun apply!957 (ListLongMap!14209 (_ BitVec 64)) V!38979)

(declare-fun get!17019 (ValueCell!11988 V!38979) V!38979)

(declare-fun dynLambda!2033 (Int (_ BitVec 64)) V!38979)

(assert (=> b!1065015 (= e!607128 (= (apply!957 lt!469521 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000)) (get!17019 (select (arr!32563 _values!955) #b00000000000000000000000000000000) (dynLambda!2033 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1065015 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33100 _values!955)))))

(assert (=> b!1065015 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33101 _keys!1163)))))

(declare-fun b!1065016 () Bool)

(declare-fun e!607127 () Bool)

(assert (=> b!1065016 (= e!607127 (validKeyInArray!0 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45000 () Bool)

(assert (=> bm!45000 (= call!45003 call!45004)))

(declare-fun b!1065018 () Bool)

(declare-fun e!607125 () Bool)

(assert (=> b!1065018 (= e!607125 (= (apply!957 lt!469521 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(declare-fun b!1065019 () Bool)

(declare-fun e!607123 () Bool)

(assert (=> b!1065019 (= e!607126 e!607123)))

(declare-fun c!107314 () Bool)

(assert (=> b!1065019 (= c!107314 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!45001 () Bool)

(declare-fun call!45002 () ListLongMap!14209)

(declare-fun call!45006 () ListLongMap!14209)

(declare-fun c!107311 () Bool)

(declare-fun c!107316 () Bool)

(assert (=> bm!45001 (= call!45004 (+!3080 (ite c!107316 call!45000 (ite c!107311 call!45002 call!45006)) (ite (or c!107316 c!107311) (tuple2!16229 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16229 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun bm!45002 () Bool)

(assert (=> bm!45002 (= call!45002 call!45000)))

(declare-fun b!1065020 () Bool)

(declare-fun e!607132 () Bool)

(assert (=> b!1065020 (= e!607123 e!607132)))

(declare-fun res!711034 () Bool)

(assert (=> b!1065020 (= res!711034 call!45005)))

(assert (=> b!1065020 (=> (not res!711034) (not e!607132))))

(declare-fun b!1065021 () Bool)

(declare-fun e!607122 () Unit!34901)

(declare-fun lt!469531 () Unit!34901)

(assert (=> b!1065021 (= e!607122 lt!469531)))

(declare-fun lt!469520 () ListLongMap!14209)

(assert (=> b!1065021 (= lt!469520 (getCurrentListMapNoExtraKeys!3671 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!469529 () (_ BitVec 64))

(assert (=> b!1065021 (= lt!469529 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!469518 () (_ BitVec 64))

(assert (=> b!1065021 (= lt!469518 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!469514 () Unit!34901)

(declare-fun addStillContains!642 (ListLongMap!14209 (_ BitVec 64) V!38979 (_ BitVec 64)) Unit!34901)

(assert (=> b!1065021 (= lt!469514 (addStillContains!642 lt!469520 lt!469529 zeroValueBefore!47 lt!469518))))

(assert (=> b!1065021 (contains!6281 (+!3080 lt!469520 (tuple2!16229 lt!469529 zeroValueBefore!47)) lt!469518)))

(declare-fun lt!469523 () Unit!34901)

(assert (=> b!1065021 (= lt!469523 lt!469514)))

(declare-fun lt!469532 () ListLongMap!14209)

(assert (=> b!1065021 (= lt!469532 (getCurrentListMapNoExtraKeys!3671 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!469525 () (_ BitVec 64))

(assert (=> b!1065021 (= lt!469525 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!469512 () (_ BitVec 64))

(assert (=> b!1065021 (= lt!469512 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!469526 () Unit!34901)

(declare-fun addApplyDifferent!494 (ListLongMap!14209 (_ BitVec 64) V!38979 (_ BitVec 64)) Unit!34901)

(assert (=> b!1065021 (= lt!469526 (addApplyDifferent!494 lt!469532 lt!469525 minValue!907 lt!469512))))

(assert (=> b!1065021 (= (apply!957 (+!3080 lt!469532 (tuple2!16229 lt!469525 minValue!907)) lt!469512) (apply!957 lt!469532 lt!469512))))

(declare-fun lt!469516 () Unit!34901)

(assert (=> b!1065021 (= lt!469516 lt!469526)))

(declare-fun lt!469517 () ListLongMap!14209)

(assert (=> b!1065021 (= lt!469517 (getCurrentListMapNoExtraKeys!3671 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!469513 () (_ BitVec 64))

(assert (=> b!1065021 (= lt!469513 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!469533 () (_ BitVec 64))

(assert (=> b!1065021 (= lt!469533 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!469519 () Unit!34901)

(assert (=> b!1065021 (= lt!469519 (addApplyDifferent!494 lt!469517 lt!469513 zeroValueBefore!47 lt!469533))))

(assert (=> b!1065021 (= (apply!957 (+!3080 lt!469517 (tuple2!16229 lt!469513 zeroValueBefore!47)) lt!469533) (apply!957 lt!469517 lt!469533))))

(declare-fun lt!469515 () Unit!34901)

(assert (=> b!1065021 (= lt!469515 lt!469519)))

(declare-fun lt!469524 () ListLongMap!14209)

(assert (=> b!1065021 (= lt!469524 (getCurrentListMapNoExtraKeys!3671 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!469528 () (_ BitVec 64))

(assert (=> b!1065021 (= lt!469528 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!469530 () (_ BitVec 64))

(assert (=> b!1065021 (= lt!469530 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1065021 (= lt!469531 (addApplyDifferent!494 lt!469524 lt!469528 minValue!907 lt!469530))))

(assert (=> b!1065021 (= (apply!957 (+!3080 lt!469524 (tuple2!16229 lt!469528 minValue!907)) lt!469530) (apply!957 lt!469524 lt!469530))))

(declare-fun b!1065022 () Bool)

(assert (=> b!1065022 (= e!607130 e!607128)))

(declare-fun res!711033 () Bool)

(assert (=> b!1065022 (=> (not res!711033) (not e!607128))))

(assert (=> b!1065022 (= res!711033 (contains!6281 lt!469521 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1065022 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33101 _keys!1163)))))

(declare-fun b!1065023 () Bool)

(assert (=> b!1065023 (= e!607124 call!45006)))

(declare-fun b!1065024 () Bool)

(assert (=> b!1065024 (= e!607133 e!607125)))

(declare-fun res!711026 () Bool)

(assert (=> b!1065024 (= res!711026 call!45001)))

(assert (=> b!1065024 (=> (not res!711026) (not e!607125))))

(declare-fun b!1065025 () Bool)

(assert (=> b!1065025 (= e!607131 e!607134)))

(assert (=> b!1065025 (= c!107311 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1065026 () Bool)

(declare-fun res!711029 () Bool)

(assert (=> b!1065026 (=> (not res!711029) (not e!607126))))

(assert (=> b!1065026 (= res!711029 e!607133)))

(declare-fun c!107315 () Bool)

(assert (=> b!1065026 (= c!107315 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!45003 () Bool)

(assert (=> bm!45003 (= call!45006 call!45002)))

(declare-fun b!1065027 () Bool)

(assert (=> b!1065027 (= e!607132 (= (apply!957 lt!469521 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1065028 () Bool)

(assert (=> b!1065028 (= e!607123 (not call!45005))))

(declare-fun d!128935 () Bool)

(assert (=> d!128935 e!607126))

(declare-fun res!711032 () Bool)

(assert (=> d!128935 (=> (not res!711032) (not e!607126))))

(assert (=> d!128935 (= res!711032 (or (bvsge #b00000000000000000000000000000000 (size!33101 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33101 _keys!1163)))))))

(declare-fun lt!469522 () ListLongMap!14209)

(assert (=> d!128935 (= lt!469521 lt!469522)))

(declare-fun lt!469527 () Unit!34901)

(assert (=> d!128935 (= lt!469527 e!607122)))

(declare-fun c!107312 () Bool)

(assert (=> d!128935 (= c!107312 e!607127)))

(declare-fun res!711028 () Bool)

(assert (=> d!128935 (=> (not res!711028) (not e!607127))))

(assert (=> d!128935 (= res!711028 (bvslt #b00000000000000000000000000000000 (size!33101 _keys!1163)))))

(assert (=> d!128935 (= lt!469522 e!607131)))

(assert (=> d!128935 (= c!107316 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!128935 (validMask!0 mask!1515)))

(assert (=> d!128935 (= (getCurrentListMap!4043 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!469521)))

(declare-fun b!1065017 () Bool)

(declare-fun Unit!34903 () Unit!34901)

(assert (=> b!1065017 (= e!607122 Unit!34903)))

(assert (= (and d!128935 c!107316) b!1065010))

(assert (= (and d!128935 (not c!107316)) b!1065025))

(assert (= (and b!1065025 c!107311) b!1065011))

(assert (= (and b!1065025 (not c!107311)) b!1065009))

(assert (= (and b!1065009 c!107313) b!1065013))

(assert (= (and b!1065009 (not c!107313)) b!1065023))

(assert (= (or b!1065013 b!1065023) bm!45003))

(assert (= (or b!1065011 bm!45003) bm!45002))

(assert (= (or b!1065011 b!1065013) bm!45000))

(assert (= (or b!1065010 bm!45002) bm!44997))

(assert (= (or b!1065010 bm!45000) bm!45001))

(assert (= (and d!128935 res!711028) b!1065016))

(assert (= (and d!128935 c!107312) b!1065021))

(assert (= (and d!128935 (not c!107312)) b!1065017))

(assert (= (and d!128935 res!711032) b!1065014))

(assert (= (and b!1065014 res!711027) b!1065008))

(assert (= (and b!1065014 (not res!711031)) b!1065022))

(assert (= (and b!1065022 res!711033) b!1065015))

(assert (= (and b!1065014 res!711030) b!1065026))

(assert (= (and b!1065026 c!107315) b!1065024))

(assert (= (and b!1065026 (not c!107315)) b!1065012))

(assert (= (and b!1065024 res!711026) b!1065018))

(assert (= (or b!1065024 b!1065012) bm!44999))

(assert (= (and b!1065026 res!711029) b!1065019))

(assert (= (and b!1065019 c!107314) b!1065020))

(assert (= (and b!1065019 (not c!107314)) b!1065028))

(assert (= (and b!1065020 res!711034) b!1065027))

(assert (= (or b!1065020 b!1065028) bm!44998))

(declare-fun b_lambda!16547 () Bool)

(assert (=> (not b_lambda!16547) (not b!1065015)))

(declare-fun t!32154 () Bool)

(declare-fun tb!7147 () Bool)

(assert (=> (and start!94208 (= defaultEntry!963 defaultEntry!963) t!32154) tb!7147))

(declare-fun result!14733 () Bool)

(assert (=> tb!7147 (= result!14733 tp_is_empty!25383)))

(assert (=> b!1065015 t!32154))

(declare-fun b_and!34345 () Bool)

(assert (= b_and!34341 (and (=> t!32154 result!14733) b_and!34345)))

(declare-fun m!983567 () Bool)

(assert (=> b!1065021 m!983567))

(declare-fun m!983569 () Bool)

(assert (=> b!1065021 m!983569))

(assert (=> b!1065021 m!983557))

(declare-fun m!983571 () Bool)

(assert (=> b!1065021 m!983571))

(declare-fun m!983573 () Bool)

(assert (=> b!1065021 m!983573))

(declare-fun m!983575 () Bool)

(assert (=> b!1065021 m!983575))

(declare-fun m!983577 () Bool)

(assert (=> b!1065021 m!983577))

(assert (=> b!1065021 m!983575))

(declare-fun m!983579 () Bool)

(assert (=> b!1065021 m!983579))

(assert (=> b!1065021 m!983571))

(assert (=> b!1065021 m!983533))

(declare-fun m!983581 () Bool)

(assert (=> b!1065021 m!983581))

(declare-fun m!983583 () Bool)

(assert (=> b!1065021 m!983583))

(declare-fun m!983585 () Bool)

(assert (=> b!1065021 m!983585))

(declare-fun m!983587 () Bool)

(assert (=> b!1065021 m!983587))

(declare-fun m!983589 () Bool)

(assert (=> b!1065021 m!983589))

(declare-fun m!983591 () Bool)

(assert (=> b!1065021 m!983591))

(declare-fun m!983593 () Bool)

(assert (=> b!1065021 m!983593))

(assert (=> b!1065021 m!983583))

(assert (=> b!1065021 m!983581))

(declare-fun m!983595 () Bool)

(assert (=> b!1065021 m!983595))

(assert (=> b!1065022 m!983557))

(assert (=> b!1065022 m!983557))

(declare-fun m!983597 () Bool)

(assert (=> b!1065022 m!983597))

(declare-fun m!983599 () Bool)

(assert (=> b!1065027 m!983599))

(declare-fun m!983601 () Bool)

(assert (=> b!1065010 m!983601))

(declare-fun m!983603 () Bool)

(assert (=> bm!44999 m!983603))

(declare-fun m!983605 () Bool)

(assert (=> bm!44998 m!983605))

(assert (=> b!1065008 m!983557))

(assert (=> b!1065008 m!983557))

(assert (=> b!1065008 m!983565))

(declare-fun m!983607 () Bool)

(assert (=> bm!45001 m!983607))

(assert (=> b!1065016 m!983557))

(assert (=> b!1065016 m!983557))

(assert (=> b!1065016 m!983565))

(declare-fun m!983609 () Bool)

(assert (=> b!1065018 m!983609))

(assert (=> bm!44997 m!983533))

(assert (=> d!128935 m!983519))

(assert (=> b!1065015 m!983557))

(declare-fun m!983611 () Bool)

(assert (=> b!1065015 m!983611))

(assert (=> b!1065015 m!983557))

(declare-fun m!983613 () Bool)

(assert (=> b!1065015 m!983613))

(declare-fun m!983615 () Bool)

(assert (=> b!1065015 m!983615))

(assert (=> b!1065015 m!983615))

(assert (=> b!1065015 m!983611))

(declare-fun m!983617 () Bool)

(assert (=> b!1065015 m!983617))

(assert (=> b!1064927 d!128935))

(declare-fun d!128937 () Bool)

(assert (=> d!128937 (= (getCurrentListMapNoExtraKeys!3671 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3671 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!469536 () Unit!34901)

(declare-fun choose!1735 (array!67728 array!67726 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38979 V!38979 V!38979 V!38979 (_ BitVec 32) Int) Unit!34901)

(assert (=> d!128937 (= lt!469536 (choose!1735 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!128937 (validMask!0 mask!1515)))

(assert (=> d!128937 (= (lemmaNoChangeToArrayThenSameMapNoExtras!710 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!469536)))

(declare-fun bs!31325 () Bool)

(assert (= bs!31325 d!128937))

(assert (=> bs!31325 m!983533))

(assert (=> bs!31325 m!983531))

(declare-fun m!983619 () Bool)

(assert (=> bs!31325 m!983619))

(assert (=> bs!31325 m!983519))

(assert (=> b!1064929 d!128937))

(declare-fun b!1065055 () Bool)

(declare-fun e!607153 () Bool)

(declare-fun e!607152 () Bool)

(assert (=> b!1065055 (= e!607153 e!607152)))

(assert (=> b!1065055 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33101 _keys!1163)))))

(declare-fun res!711045 () Bool)

(declare-fun lt!469552 () ListLongMap!14209)

(assert (=> b!1065055 (= res!711045 (contains!6281 lt!469552 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1065055 (=> (not res!711045) (not e!607152))))

(declare-fun b!1065057 () Bool)

(declare-fun e!607155 () ListLongMap!14209)

(declare-fun e!607150 () ListLongMap!14209)

(assert (=> b!1065057 (= e!607155 e!607150)))

(declare-fun c!107327 () Bool)

(assert (=> b!1065057 (= c!107327 (validKeyInArray!0 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1065058 () Bool)

(declare-fun lt!469554 () Unit!34901)

(declare-fun lt!469557 () Unit!34901)

(assert (=> b!1065058 (= lt!469554 lt!469557)))

(declare-fun lt!469556 () (_ BitVec 64))

(declare-fun lt!469553 () (_ BitVec 64))

(declare-fun lt!469551 () ListLongMap!14209)

(declare-fun lt!469555 () V!38979)

(assert (=> b!1065058 (not (contains!6281 (+!3080 lt!469551 (tuple2!16229 lt!469553 lt!469555)) lt!469556))))

(declare-fun addStillNotContains!252 (ListLongMap!14209 (_ BitVec 64) V!38979 (_ BitVec 64)) Unit!34901)

(assert (=> b!1065058 (= lt!469557 (addStillNotContains!252 lt!469551 lt!469553 lt!469555 lt!469556))))

(assert (=> b!1065058 (= lt!469556 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1065058 (= lt!469555 (get!17019 (select (arr!32563 _values!955) #b00000000000000000000000000000000) (dynLambda!2033 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1065058 (= lt!469553 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun call!45009 () ListLongMap!14209)

(assert (=> b!1065058 (= lt!469551 call!45009)))

(assert (=> b!1065058 (= e!607150 (+!3080 call!45009 (tuple2!16229 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000) (get!17019 (select (arr!32563 _values!955) #b00000000000000000000000000000000) (dynLambda!2033 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1065059 () Bool)

(declare-fun e!607149 () Bool)

(declare-fun isEmpty!943 (ListLongMap!14209) Bool)

(assert (=> b!1065059 (= e!607149 (isEmpty!943 lt!469552))))

(declare-fun b!1065060 () Bool)

(declare-fun res!711046 () Bool)

(declare-fun e!607151 () Bool)

(assert (=> b!1065060 (=> (not res!711046) (not e!607151))))

(assert (=> b!1065060 (= res!711046 (not (contains!6281 lt!469552 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1065061 () Bool)

(assert (=> b!1065061 (= e!607151 e!607153)))

(declare-fun c!107328 () Bool)

(declare-fun e!607154 () Bool)

(assert (=> b!1065061 (= c!107328 e!607154)))

(declare-fun res!711043 () Bool)

(assert (=> b!1065061 (=> (not res!711043) (not e!607154))))

(assert (=> b!1065061 (= res!711043 (bvslt #b00000000000000000000000000000000 (size!33101 _keys!1163)))))

(declare-fun b!1065062 () Bool)

(assert (=> b!1065062 (= e!607150 call!45009)))

(declare-fun b!1065063 () Bool)

(assert (=> b!1065063 (= e!607155 (ListLongMap!14210 Nil!22825))))

(declare-fun b!1065064 () Bool)

(assert (=> b!1065064 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33101 _keys!1163)))))

(assert (=> b!1065064 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33100 _values!955)))))

(assert (=> b!1065064 (= e!607152 (= (apply!957 lt!469552 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000)) (get!17019 (select (arr!32563 _values!955) #b00000000000000000000000000000000) (dynLambda!2033 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!45006 () Bool)

(assert (=> bm!45006 (= call!45009 (getCurrentListMapNoExtraKeys!3671 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun d!128939 () Bool)

(assert (=> d!128939 e!607151))

(declare-fun res!711044 () Bool)

(assert (=> d!128939 (=> (not res!711044) (not e!607151))))

(assert (=> d!128939 (= res!711044 (not (contains!6281 lt!469552 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!128939 (= lt!469552 e!607155)))

(declare-fun c!107325 () Bool)

(assert (=> d!128939 (= c!107325 (bvsge #b00000000000000000000000000000000 (size!33101 _keys!1163)))))

(assert (=> d!128939 (validMask!0 mask!1515)))

(assert (=> d!128939 (= (getCurrentListMapNoExtraKeys!3671 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!469552)))

(declare-fun b!1065056 () Bool)

(assert (=> b!1065056 (= e!607154 (validKeyInArray!0 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1065056 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1065065 () Bool)

(assert (=> b!1065065 (= e!607149 (= lt!469552 (getCurrentListMapNoExtraKeys!3671 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1065066 () Bool)

(assert (=> b!1065066 (= e!607153 e!607149)))

(declare-fun c!107326 () Bool)

(assert (=> b!1065066 (= c!107326 (bvslt #b00000000000000000000000000000000 (size!33101 _keys!1163)))))

(assert (= (and d!128939 c!107325) b!1065063))

(assert (= (and d!128939 (not c!107325)) b!1065057))

(assert (= (and b!1065057 c!107327) b!1065058))

(assert (= (and b!1065057 (not c!107327)) b!1065062))

(assert (= (or b!1065058 b!1065062) bm!45006))

(assert (= (and d!128939 res!711044) b!1065060))

(assert (= (and b!1065060 res!711046) b!1065061))

(assert (= (and b!1065061 res!711043) b!1065056))

(assert (= (and b!1065061 c!107328) b!1065055))

(assert (= (and b!1065061 (not c!107328)) b!1065066))

(assert (= (and b!1065055 res!711045) b!1065064))

(assert (= (and b!1065066 c!107326) b!1065065))

(assert (= (and b!1065066 (not c!107326)) b!1065059))

(declare-fun b_lambda!16549 () Bool)

(assert (=> (not b_lambda!16549) (not b!1065058)))

(assert (=> b!1065058 t!32154))

(declare-fun b_and!34347 () Bool)

(assert (= b_and!34345 (and (=> t!32154 result!14733) b_and!34347)))

(declare-fun b_lambda!16551 () Bool)

(assert (=> (not b_lambda!16551) (not b!1065064)))

(assert (=> b!1065064 t!32154))

(declare-fun b_and!34349 () Bool)

(assert (= b_and!34347 (and (=> t!32154 result!14733) b_and!34349)))

(assert (=> b!1065056 m!983557))

(assert (=> b!1065056 m!983557))

(assert (=> b!1065056 m!983565))

(declare-fun m!983621 () Bool)

(assert (=> b!1065065 m!983621))

(assert (=> b!1065055 m!983557))

(assert (=> b!1065055 m!983557))

(declare-fun m!983623 () Bool)

(assert (=> b!1065055 m!983623))

(assert (=> bm!45006 m!983621))

(declare-fun m!983625 () Bool)

(assert (=> b!1065058 m!983625))

(assert (=> b!1065058 m!983615))

(assert (=> b!1065058 m!983611))

(assert (=> b!1065058 m!983617))

(assert (=> b!1065058 m!983615))

(declare-fun m!983627 () Bool)

(assert (=> b!1065058 m!983627))

(declare-fun m!983629 () Bool)

(assert (=> b!1065058 m!983629))

(assert (=> b!1065058 m!983557))

(assert (=> b!1065058 m!983627))

(declare-fun m!983631 () Bool)

(assert (=> b!1065058 m!983631))

(assert (=> b!1065058 m!983611))

(declare-fun m!983633 () Bool)

(assert (=> b!1065059 m!983633))

(declare-fun m!983635 () Bool)

(assert (=> d!128939 m!983635))

(assert (=> d!128939 m!983519))

(assert (=> b!1065064 m!983611))

(assert (=> b!1065064 m!983615))

(assert (=> b!1065064 m!983611))

(assert (=> b!1065064 m!983617))

(assert (=> b!1065064 m!983615))

(assert (=> b!1065064 m!983557))

(declare-fun m!983637 () Bool)

(assert (=> b!1065064 m!983637))

(assert (=> b!1065064 m!983557))

(assert (=> b!1065057 m!983557))

(assert (=> b!1065057 m!983557))

(assert (=> b!1065057 m!983565))

(declare-fun m!983639 () Bool)

(assert (=> b!1065060 m!983639))

(assert (=> b!1064929 d!128939))

(declare-fun b!1065067 () Bool)

(declare-fun e!607160 () Bool)

(declare-fun e!607159 () Bool)

(assert (=> b!1065067 (= e!607160 e!607159)))

(assert (=> b!1065067 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33101 _keys!1163)))))

(declare-fun res!711049 () Bool)

(declare-fun lt!469559 () ListLongMap!14209)

(assert (=> b!1065067 (= res!711049 (contains!6281 lt!469559 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1065067 (=> (not res!711049) (not e!607159))))

(declare-fun b!1065069 () Bool)

(declare-fun e!607162 () ListLongMap!14209)

(declare-fun e!607157 () ListLongMap!14209)

(assert (=> b!1065069 (= e!607162 e!607157)))

(declare-fun c!107331 () Bool)

(assert (=> b!1065069 (= c!107331 (validKeyInArray!0 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1065070 () Bool)

(declare-fun lt!469561 () Unit!34901)

(declare-fun lt!469564 () Unit!34901)

(assert (=> b!1065070 (= lt!469561 lt!469564)))

(declare-fun lt!469558 () ListLongMap!14209)

(declare-fun lt!469560 () (_ BitVec 64))

(declare-fun lt!469563 () (_ BitVec 64))

(declare-fun lt!469562 () V!38979)

(assert (=> b!1065070 (not (contains!6281 (+!3080 lt!469558 (tuple2!16229 lt!469560 lt!469562)) lt!469563))))

(assert (=> b!1065070 (= lt!469564 (addStillNotContains!252 lt!469558 lt!469560 lt!469562 lt!469563))))

(assert (=> b!1065070 (= lt!469563 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1065070 (= lt!469562 (get!17019 (select (arr!32563 _values!955) #b00000000000000000000000000000000) (dynLambda!2033 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1065070 (= lt!469560 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun call!45010 () ListLongMap!14209)

(assert (=> b!1065070 (= lt!469558 call!45010)))

(assert (=> b!1065070 (= e!607157 (+!3080 call!45010 (tuple2!16229 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000) (get!17019 (select (arr!32563 _values!955) #b00000000000000000000000000000000) (dynLambda!2033 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1065071 () Bool)

(declare-fun e!607156 () Bool)

(assert (=> b!1065071 (= e!607156 (isEmpty!943 lt!469559))))

(declare-fun b!1065072 () Bool)

(declare-fun res!711050 () Bool)

(declare-fun e!607158 () Bool)

(assert (=> b!1065072 (=> (not res!711050) (not e!607158))))

(assert (=> b!1065072 (= res!711050 (not (contains!6281 lt!469559 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1065073 () Bool)

(assert (=> b!1065073 (= e!607158 e!607160)))

(declare-fun c!107332 () Bool)

(declare-fun e!607161 () Bool)

(assert (=> b!1065073 (= c!107332 e!607161)))

(declare-fun res!711047 () Bool)

(assert (=> b!1065073 (=> (not res!711047) (not e!607161))))

(assert (=> b!1065073 (= res!711047 (bvslt #b00000000000000000000000000000000 (size!33101 _keys!1163)))))

(declare-fun b!1065074 () Bool)

(assert (=> b!1065074 (= e!607157 call!45010)))

(declare-fun b!1065075 () Bool)

(assert (=> b!1065075 (= e!607162 (ListLongMap!14210 Nil!22825))))

(declare-fun b!1065076 () Bool)

(assert (=> b!1065076 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33101 _keys!1163)))))

(assert (=> b!1065076 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33100 _values!955)))))

(assert (=> b!1065076 (= e!607159 (= (apply!957 lt!469559 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000)) (get!17019 (select (arr!32563 _values!955) #b00000000000000000000000000000000) (dynLambda!2033 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!45007 () Bool)

(assert (=> bm!45007 (= call!45010 (getCurrentListMapNoExtraKeys!3671 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun d!128941 () Bool)

(assert (=> d!128941 e!607158))

(declare-fun res!711048 () Bool)

(assert (=> d!128941 (=> (not res!711048) (not e!607158))))

(assert (=> d!128941 (= res!711048 (not (contains!6281 lt!469559 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!128941 (= lt!469559 e!607162)))

(declare-fun c!107329 () Bool)

(assert (=> d!128941 (= c!107329 (bvsge #b00000000000000000000000000000000 (size!33101 _keys!1163)))))

(assert (=> d!128941 (validMask!0 mask!1515)))

(assert (=> d!128941 (= (getCurrentListMapNoExtraKeys!3671 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!469559)))

(declare-fun b!1065068 () Bool)

(assert (=> b!1065068 (= e!607161 (validKeyInArray!0 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1065068 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1065077 () Bool)

(assert (=> b!1065077 (= e!607156 (= lt!469559 (getCurrentListMapNoExtraKeys!3671 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1065078 () Bool)

(assert (=> b!1065078 (= e!607160 e!607156)))

(declare-fun c!107330 () Bool)

(assert (=> b!1065078 (= c!107330 (bvslt #b00000000000000000000000000000000 (size!33101 _keys!1163)))))

(assert (= (and d!128941 c!107329) b!1065075))

(assert (= (and d!128941 (not c!107329)) b!1065069))

(assert (= (and b!1065069 c!107331) b!1065070))

(assert (= (and b!1065069 (not c!107331)) b!1065074))

(assert (= (or b!1065070 b!1065074) bm!45007))

(assert (= (and d!128941 res!711048) b!1065072))

(assert (= (and b!1065072 res!711050) b!1065073))

(assert (= (and b!1065073 res!711047) b!1065068))

(assert (= (and b!1065073 c!107332) b!1065067))

(assert (= (and b!1065073 (not c!107332)) b!1065078))

(assert (= (and b!1065067 res!711049) b!1065076))

(assert (= (and b!1065078 c!107330) b!1065077))

(assert (= (and b!1065078 (not c!107330)) b!1065071))

(declare-fun b_lambda!16553 () Bool)

(assert (=> (not b_lambda!16553) (not b!1065070)))

(assert (=> b!1065070 t!32154))

(declare-fun b_and!34351 () Bool)

(assert (= b_and!34349 (and (=> t!32154 result!14733) b_and!34351)))

(declare-fun b_lambda!16555 () Bool)

(assert (=> (not b_lambda!16555) (not b!1065076)))

(assert (=> b!1065076 t!32154))

(declare-fun b_and!34353 () Bool)

(assert (= b_and!34351 (and (=> t!32154 result!14733) b_and!34353)))

(assert (=> b!1065068 m!983557))

(assert (=> b!1065068 m!983557))

(assert (=> b!1065068 m!983565))

(declare-fun m!983641 () Bool)

(assert (=> b!1065077 m!983641))

(assert (=> b!1065067 m!983557))

(assert (=> b!1065067 m!983557))

(declare-fun m!983643 () Bool)

(assert (=> b!1065067 m!983643))

(assert (=> bm!45007 m!983641))

(declare-fun m!983645 () Bool)

(assert (=> b!1065070 m!983645))

(assert (=> b!1065070 m!983615))

(assert (=> b!1065070 m!983611))

(assert (=> b!1065070 m!983617))

(assert (=> b!1065070 m!983615))

(declare-fun m!983647 () Bool)

(assert (=> b!1065070 m!983647))

(declare-fun m!983649 () Bool)

(assert (=> b!1065070 m!983649))

(assert (=> b!1065070 m!983557))

(assert (=> b!1065070 m!983647))

(declare-fun m!983651 () Bool)

(assert (=> b!1065070 m!983651))

(assert (=> b!1065070 m!983611))

(declare-fun m!983653 () Bool)

(assert (=> b!1065071 m!983653))

(declare-fun m!983655 () Bool)

(assert (=> d!128941 m!983655))

(assert (=> d!128941 m!983519))

(assert (=> b!1065076 m!983611))

(assert (=> b!1065076 m!983615))

(assert (=> b!1065076 m!983611))

(assert (=> b!1065076 m!983617))

(assert (=> b!1065076 m!983615))

(assert (=> b!1065076 m!983557))

(declare-fun m!983657 () Bool)

(assert (=> b!1065076 m!983657))

(assert (=> b!1065076 m!983557))

(assert (=> b!1065069 m!983557))

(assert (=> b!1065069 m!983557))

(assert (=> b!1065069 m!983565))

(declare-fun m!983659 () Bool)

(assert (=> b!1065072 m!983659))

(assert (=> b!1064929 d!128941))

(declare-fun d!128943 () Bool)

(assert (=> d!128943 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!94208 d!128943))

(declare-fun d!128945 () Bool)

(assert (=> d!128945 (= (array_inv!25052 _values!955) (bvsge (size!33100 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!94208 d!128945))

(declare-fun d!128947 () Bool)

(assert (=> d!128947 (= (array_inv!25053 _keys!1163) (bvsge (size!33101 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!94208 d!128947))

(declare-fun b!1065089 () Bool)

(declare-fun e!607172 () Bool)

(declare-fun call!45013 () Bool)

(assert (=> b!1065089 (= e!607172 call!45013)))

(declare-fun d!128949 () Bool)

(declare-fun res!711058 () Bool)

(declare-fun e!607173 () Bool)

(assert (=> d!128949 (=> res!711058 e!607173)))

(assert (=> d!128949 (= res!711058 (bvsge #b00000000000000000000000000000000 (size!33101 _keys!1163)))))

(assert (=> d!128949 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22824) e!607173)))

(declare-fun b!1065090 () Bool)

(declare-fun e!607174 () Bool)

(assert (=> b!1065090 (= e!607173 e!607174)))

(declare-fun res!711059 () Bool)

(assert (=> b!1065090 (=> (not res!711059) (not e!607174))))

(declare-fun e!607171 () Bool)

(assert (=> b!1065090 (= res!711059 (not e!607171))))

(declare-fun res!711057 () Bool)

(assert (=> b!1065090 (=> (not res!711057) (not e!607171))))

(assert (=> b!1065090 (= res!711057 (validKeyInArray!0 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1065091 () Bool)

(assert (=> b!1065091 (= e!607172 call!45013)))

(declare-fun b!1065092 () Bool)

(declare-fun contains!6282 (List!22827 (_ BitVec 64)) Bool)

(assert (=> b!1065092 (= e!607171 (contains!6282 Nil!22824 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45010 () Bool)

(declare-fun c!107335 () Bool)

(assert (=> bm!45010 (= call!45013 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107335 (Cons!22823 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000) Nil!22824) Nil!22824)))))

(declare-fun b!1065093 () Bool)

(assert (=> b!1065093 (= e!607174 e!607172)))

(assert (=> b!1065093 (= c!107335 (validKeyInArray!0 (select (arr!32564 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!128949 (not res!711058)) b!1065090))

(assert (= (and b!1065090 res!711057) b!1065092))

(assert (= (and b!1065090 res!711059) b!1065093))

(assert (= (and b!1065093 c!107335) b!1065091))

(assert (= (and b!1065093 (not c!107335)) b!1065089))

(assert (= (or b!1065091 b!1065089) bm!45010))

(assert (=> b!1065090 m!983557))

(assert (=> b!1065090 m!983557))

(assert (=> b!1065090 m!983565))

(assert (=> b!1065092 m!983557))

(assert (=> b!1065092 m!983557))

(declare-fun m!983661 () Bool)

(assert (=> b!1065092 m!983661))

(assert (=> bm!45010 m!983557))

(declare-fun m!983663 () Bool)

(assert (=> bm!45010 m!983663))

(assert (=> b!1065093 m!983557))

(assert (=> b!1065093 m!983557))

(assert (=> b!1065093 m!983565))

(assert (=> b!1064925 d!128949))

(declare-fun b!1065101 () Bool)

(declare-fun e!607180 () Bool)

(assert (=> b!1065101 (= e!607180 tp_is_empty!25383)))

(declare-fun condMapEmpty!39763 () Bool)

(declare-fun mapDefault!39763 () ValueCell!11988)

(assert (=> mapNonEmpty!39757 (= condMapEmpty!39763 (= mapRest!39757 ((as const (Array (_ BitVec 32) ValueCell!11988)) mapDefault!39763)))))

(declare-fun mapRes!39763 () Bool)

(assert (=> mapNonEmpty!39757 (= tp!76154 (and e!607180 mapRes!39763))))

(declare-fun mapIsEmpty!39763 () Bool)

(assert (=> mapIsEmpty!39763 mapRes!39763))

(declare-fun mapNonEmpty!39763 () Bool)

(declare-fun tp!76164 () Bool)

(declare-fun e!607179 () Bool)

(assert (=> mapNonEmpty!39763 (= mapRes!39763 (and tp!76164 e!607179))))

(declare-fun mapKey!39763 () (_ BitVec 32))

(declare-fun mapValue!39763 () ValueCell!11988)

(declare-fun mapRest!39763 () (Array (_ BitVec 32) ValueCell!11988))

(assert (=> mapNonEmpty!39763 (= mapRest!39757 (store mapRest!39763 mapKey!39763 mapValue!39763))))

(declare-fun b!1065100 () Bool)

(assert (=> b!1065100 (= e!607179 tp_is_empty!25383)))

(assert (= (and mapNonEmpty!39757 condMapEmpty!39763) mapIsEmpty!39763))

(assert (= (and mapNonEmpty!39757 (not condMapEmpty!39763)) mapNonEmpty!39763))

(assert (= (and mapNonEmpty!39763 ((_ is ValueCellFull!11988) mapValue!39763)) b!1065100))

(assert (= (and mapNonEmpty!39757 ((_ is ValueCellFull!11988) mapDefault!39763)) b!1065101))

(declare-fun m!983665 () Bool)

(assert (=> mapNonEmpty!39763 m!983665))

(declare-fun b_lambda!16557 () Bool)

(assert (= b_lambda!16551 (or (and start!94208 b_free!21573) b_lambda!16557)))

(declare-fun b_lambda!16559 () Bool)

(assert (= b_lambda!16555 (or (and start!94208 b_free!21573) b_lambda!16559)))

(declare-fun b_lambda!16561 () Bool)

(assert (= b_lambda!16549 (or (and start!94208 b_free!21573) b_lambda!16561)))

(declare-fun b_lambda!16563 () Bool)

(assert (= b_lambda!16553 (or (and start!94208 b_free!21573) b_lambda!16563)))

(declare-fun b_lambda!16565 () Bool)

(assert (= b_lambda!16547 (or (and start!94208 b_free!21573) b_lambda!16565)))

(check-sat (not b!1065056) (not b!1065055) (not b!1065070) (not b_next!21573) (not b!1065018) (not d!128941) (not bm!45010) (not b!1065071) (not b!1065015) (not b_lambda!16563) (not b_lambda!16561) (not d!128935) (not b_lambda!16559) (not b_lambda!16565) (not b!1065093) (not d!128937) (not b!1065092) (not b!1065077) (not bm!44999) (not bm!45007) (not b!1065072) (not b!1064963) (not b!1065076) (not b!1065058) (not b!1065016) (not bm!45006) (not b!1065059) (not mapNonEmpty!39763) (not b!1065064) b_and!34353 (not b_lambda!16557) (not bm!45001) (not b!1065027) (not b!1065068) (not b!1065010) (not bm!44997) (not bm!44998) (not bm!44982) (not b!1065008) (not d!128939) (not b!1065065) tp_is_empty!25383 (not b!1065022) (not b!1065060) (not b!1065021) (not b!1065069) (not b!1065057) (not b!1065090) (not b!1064965) (not b!1065067))
(check-sat b_and!34353 (not b_next!21573))
