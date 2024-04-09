; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94140 () Bool)

(assert start!94140)

(declare-fun b_free!21519 () Bool)

(declare-fun b_next!21519 () Bool)

(assert (=> start!94140 (= b_free!21519 (not b_next!21519))))

(declare-fun tp!75990 () Bool)

(declare-fun b_and!34279 () Bool)

(assert (=> start!94140 (= tp!75990 b_and!34279)))

(declare-fun res!710551 () Bool)

(declare-fun e!606529 () Bool)

(assert (=> start!94140 (=> (not res!710551) (not e!606529))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94140 (= res!710551 (validMask!0 mask!1515))))

(assert (=> start!94140 e!606529))

(assert (=> start!94140 true))

(declare-fun tp_is_empty!25329 () Bool)

(assert (=> start!94140 tp_is_empty!25329))

(declare-datatypes ((V!38907 0))(
  ( (V!38908 (val!12715 Int)) )
))
(declare-datatypes ((ValueCell!11961 0))(
  ( (ValueCellFull!11961 (v!15328 V!38907)) (EmptyCell!11961) )
))
(declare-datatypes ((array!67622 0))(
  ( (array!67623 (arr!32512 (Array (_ BitVec 32) ValueCell!11961)) (size!33049 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67622)

(declare-fun e!606528 () Bool)

(declare-fun array_inv!25014 (array!67622) Bool)

(assert (=> start!94140 (and (array_inv!25014 _values!955) e!606528)))

(assert (=> start!94140 tp!75990))

(declare-datatypes ((array!67624 0))(
  ( (array!67625 (arr!32513 (Array (_ BitVec 32) (_ BitVec 64))) (size!33050 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67624)

(declare-fun array_inv!25015 (array!67624) Bool)

(assert (=> start!94140 (array_inv!25015 _keys!1163)))

(declare-fun b!1064193 () Bool)

(declare-fun res!710553 () Bool)

(assert (=> b!1064193 (=> (not res!710553) (not e!606529))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67624 (_ BitVec 32)) Bool)

(assert (=> b!1064193 (= res!710553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1064194 () Bool)

(declare-fun e!606526 () Bool)

(declare-fun mapRes!39673 () Bool)

(assert (=> b!1064194 (= e!606528 (and e!606526 mapRes!39673))))

(declare-fun condMapEmpty!39673 () Bool)

(declare-fun mapDefault!39673 () ValueCell!11961)

(assert (=> b!1064194 (= condMapEmpty!39673 (= (arr!32512 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11961)) mapDefault!39673)))))

(declare-fun b!1064195 () Bool)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1064195 (= e!606529 (not (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!33050 _keys!1163)))))))

(declare-datatypes ((tuple2!16188 0))(
  ( (tuple2!16189 (_1!8104 (_ BitVec 64)) (_2!8104 V!38907)) )
))
(declare-datatypes ((List!22790 0))(
  ( (Nil!22787) (Cons!22786 (h!23995 tuple2!16188) (t!32112 List!22790)) )
))
(declare-datatypes ((ListLongMap!14169 0))(
  ( (ListLongMap!14170 (toList!7100 List!22790)) )
))
(declare-fun lt!469085 () ListLongMap!14169)

(declare-fun lt!469084 () ListLongMap!14169)

(assert (=> b!1064195 (= lt!469085 lt!469084)))

(declare-fun zeroValueBefore!47 () V!38907)

(declare-datatypes ((Unit!34867 0))(
  ( (Unit!34868) )
))
(declare-fun lt!469083 () Unit!34867)

(declare-fun minValue!907 () V!38907)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38907)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!693 (array!67624 array!67622 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38907 V!38907 V!38907 V!38907 (_ BitVec 32) Int) Unit!34867)

(assert (=> b!1064195 (= lt!469083 (lemmaNoChangeToArrayThenSameMapNoExtras!693 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3654 (array!67624 array!67622 (_ BitVec 32) (_ BitVec 32) V!38907 V!38907 (_ BitVec 32) Int) ListLongMap!14169)

(assert (=> b!1064195 (= lt!469084 (getCurrentListMapNoExtraKeys!3654 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064195 (= lt!469085 (getCurrentListMapNoExtraKeys!3654 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064196 () Bool)

(declare-fun res!710552 () Bool)

(assert (=> b!1064196 (=> (not res!710552) (not e!606529))))

(assert (=> b!1064196 (= res!710552 (and (= (size!33049 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33050 _keys!1163) (size!33049 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!39673 () Bool)

(declare-fun tp!75989 () Bool)

(declare-fun e!606530 () Bool)

(assert (=> mapNonEmpty!39673 (= mapRes!39673 (and tp!75989 e!606530))))

(declare-fun mapValue!39673 () ValueCell!11961)

(declare-fun mapRest!39673 () (Array (_ BitVec 32) ValueCell!11961))

(declare-fun mapKey!39673 () (_ BitVec 32))

(assert (=> mapNonEmpty!39673 (= (arr!32512 _values!955) (store mapRest!39673 mapKey!39673 mapValue!39673))))

(declare-fun b!1064197 () Bool)

(assert (=> b!1064197 (= e!606526 tp_is_empty!25329)))

(declare-fun mapIsEmpty!39673 () Bool)

(assert (=> mapIsEmpty!39673 mapRes!39673))

(declare-fun b!1064198 () Bool)

(declare-fun res!710550 () Bool)

(assert (=> b!1064198 (=> (not res!710550) (not e!606529))))

(declare-datatypes ((List!22791 0))(
  ( (Nil!22788) (Cons!22787 (h!23996 (_ BitVec 64)) (t!32113 List!22791)) )
))
(declare-fun arrayNoDuplicates!0 (array!67624 (_ BitVec 32) List!22791) Bool)

(assert (=> b!1064198 (= res!710550 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22788))))

(declare-fun b!1064199 () Bool)

(assert (=> b!1064199 (= e!606530 tp_is_empty!25329)))

(assert (= (and start!94140 res!710551) b!1064196))

(assert (= (and b!1064196 res!710552) b!1064193))

(assert (= (and b!1064193 res!710553) b!1064198))

(assert (= (and b!1064198 res!710550) b!1064195))

(assert (= (and b!1064194 condMapEmpty!39673) mapIsEmpty!39673))

(assert (= (and b!1064194 (not condMapEmpty!39673)) mapNonEmpty!39673))

(get-info :version)

(assert (= (and mapNonEmpty!39673 ((_ is ValueCellFull!11961) mapValue!39673)) b!1064199))

(assert (= (and b!1064194 ((_ is ValueCellFull!11961) mapDefault!39673)) b!1064197))

(assert (= start!94140 b!1064194))

(declare-fun m!982913 () Bool)

(assert (=> b!1064198 m!982913))

(declare-fun m!982915 () Bool)

(assert (=> start!94140 m!982915))

(declare-fun m!982917 () Bool)

(assert (=> start!94140 m!982917))

(declare-fun m!982919 () Bool)

(assert (=> start!94140 m!982919))

(declare-fun m!982921 () Bool)

(assert (=> b!1064195 m!982921))

(declare-fun m!982923 () Bool)

(assert (=> b!1064195 m!982923))

(declare-fun m!982925 () Bool)

(assert (=> b!1064195 m!982925))

(declare-fun m!982927 () Bool)

(assert (=> b!1064193 m!982927))

(declare-fun m!982929 () Bool)

(assert (=> mapNonEmpty!39673 m!982929))

(check-sat (not b!1064193) (not start!94140) (not b!1064195) (not b_next!21519) tp_is_empty!25329 (not b!1064198) (not mapNonEmpty!39673) b_and!34279)
(check-sat b_and!34279 (not b_next!21519))
(get-model)

(declare-fun b!1064231 () Bool)

(declare-fun e!606554 () Bool)

(declare-fun e!606555 () Bool)

(assert (=> b!1064231 (= e!606554 e!606555)))

(declare-fun res!710574 () Bool)

(assert (=> b!1064231 (=> (not res!710574) (not e!606555))))

(declare-fun e!606557 () Bool)

(assert (=> b!1064231 (= res!710574 (not e!606557))))

(declare-fun res!710572 () Bool)

(assert (=> b!1064231 (=> (not res!710572) (not e!606557))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1064231 (= res!710572 (validKeyInArray!0 (select (arr!32513 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1064232 () Bool)

(declare-fun contains!6279 (List!22791 (_ BitVec 64)) Bool)

(assert (=> b!1064232 (= e!606557 (contains!6279 Nil!22788 (select (arr!32513 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1064233 () Bool)

(declare-fun e!606556 () Bool)

(declare-fun call!44975 () Bool)

(assert (=> b!1064233 (= e!606556 call!44975)))

(declare-fun b!1064234 () Bool)

(assert (=> b!1064234 (= e!606555 e!606556)))

(declare-fun c!107276 () Bool)

(assert (=> b!1064234 (= c!107276 (validKeyInArray!0 (select (arr!32513 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!128899 () Bool)

(declare-fun res!710573 () Bool)

(assert (=> d!128899 (=> res!710573 e!606554)))

(assert (=> d!128899 (= res!710573 (bvsge #b00000000000000000000000000000000 (size!33050 _keys!1163)))))

(assert (=> d!128899 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22788) e!606554)))

(declare-fun bm!44972 () Bool)

(assert (=> bm!44972 (= call!44975 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107276 (Cons!22787 (select (arr!32513 _keys!1163) #b00000000000000000000000000000000) Nil!22788) Nil!22788)))))

(declare-fun b!1064235 () Bool)

(assert (=> b!1064235 (= e!606556 call!44975)))

(assert (= (and d!128899 (not res!710573)) b!1064231))

(assert (= (and b!1064231 res!710572) b!1064232))

(assert (= (and b!1064231 res!710574) b!1064234))

(assert (= (and b!1064234 c!107276) b!1064235))

(assert (= (and b!1064234 (not c!107276)) b!1064233))

(assert (= (or b!1064235 b!1064233) bm!44972))

(declare-fun m!982949 () Bool)

(assert (=> b!1064231 m!982949))

(assert (=> b!1064231 m!982949))

(declare-fun m!982951 () Bool)

(assert (=> b!1064231 m!982951))

(assert (=> b!1064232 m!982949))

(assert (=> b!1064232 m!982949))

(declare-fun m!982953 () Bool)

(assert (=> b!1064232 m!982953))

(assert (=> b!1064234 m!982949))

(assert (=> b!1064234 m!982949))

(assert (=> b!1064234 m!982951))

(assert (=> bm!44972 m!982949))

(declare-fun m!982955 () Bool)

(assert (=> bm!44972 m!982955))

(assert (=> b!1064198 d!128899))

(declare-fun d!128901 () Bool)

(assert (=> d!128901 (= (getCurrentListMapNoExtraKeys!3654 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3654 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!469097 () Unit!34867)

(declare-fun choose!1734 (array!67624 array!67622 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38907 V!38907 V!38907 V!38907 (_ BitVec 32) Int) Unit!34867)

(assert (=> d!128901 (= lt!469097 (choose!1734 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!128901 (validMask!0 mask!1515)))

(assert (=> d!128901 (= (lemmaNoChangeToArrayThenSameMapNoExtras!693 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!469097)))

(declare-fun bs!31297 () Bool)

(assert (= bs!31297 d!128901))

(assert (=> bs!31297 m!982925))

(assert (=> bs!31297 m!982923))

(declare-fun m!982957 () Bool)

(assert (=> bs!31297 m!982957))

(assert (=> bs!31297 m!982915))

(assert (=> b!1064195 d!128901))

(declare-fun b!1064260 () Bool)

(declare-fun e!606576 () Bool)

(declare-fun lt!469112 () ListLongMap!14169)

(declare-fun isEmpty!942 (ListLongMap!14169) Bool)

(assert (=> b!1064260 (= e!606576 (isEmpty!942 lt!469112))))

(declare-fun b!1064261 () Bool)

(declare-fun e!606574 () Bool)

(declare-fun e!606575 () Bool)

(assert (=> b!1064261 (= e!606574 e!606575)))

(assert (=> b!1064261 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33050 _keys!1163)))))

(declare-fun res!710583 () Bool)

(declare-fun contains!6280 (ListLongMap!14169 (_ BitVec 64)) Bool)

(assert (=> b!1064261 (= res!710583 (contains!6280 lt!469112 (select (arr!32513 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1064261 (=> (not res!710583) (not e!606575))))

(declare-fun b!1064262 () Bool)

(declare-fun e!606573 () ListLongMap!14169)

(declare-fun e!606577 () ListLongMap!14169)

(assert (=> b!1064262 (= e!606573 e!606577)))

(declare-fun c!107285 () Bool)

(assert (=> b!1064262 (= c!107285 (validKeyInArray!0 (select (arr!32513 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1064263 () Bool)

(declare-fun e!606572 () Bool)

(assert (=> b!1064263 (= e!606572 e!606574)))

(declare-fun c!107286 () Bool)

(declare-fun e!606578 () Bool)

(assert (=> b!1064263 (= c!107286 e!606578)))

(declare-fun res!710585 () Bool)

(assert (=> b!1064263 (=> (not res!710585) (not e!606578))))

(assert (=> b!1064263 (= res!710585 (bvslt #b00000000000000000000000000000000 (size!33050 _keys!1163)))))

(declare-fun b!1064264 () Bool)

(assert (=> b!1064264 (= e!606578 (validKeyInArray!0 (select (arr!32513 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1064264 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1064265 () Bool)

(assert (=> b!1064265 (= e!606574 e!606576)))

(declare-fun c!107287 () Bool)

(assert (=> b!1064265 (= c!107287 (bvslt #b00000000000000000000000000000000 (size!33050 _keys!1163)))))

(declare-fun b!1064266 () Bool)

(assert (=> b!1064266 (= e!606573 (ListLongMap!14170 Nil!22787))))

(declare-fun b!1064267 () Bool)

(declare-fun res!710586 () Bool)

(assert (=> b!1064267 (=> (not res!710586) (not e!606572))))

(assert (=> b!1064267 (= res!710586 (not (contains!6280 lt!469112 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!44975 () Bool)

(declare-fun call!44978 () ListLongMap!14169)

(assert (=> bm!44975 (= call!44978 (getCurrentListMapNoExtraKeys!3654 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1064268 () Bool)

(declare-fun lt!469118 () Unit!34867)

(declare-fun lt!469113 () Unit!34867)

(assert (=> b!1064268 (= lt!469118 lt!469113)))

(declare-fun lt!469116 () V!38907)

(declare-fun lt!469117 () (_ BitVec 64))

(declare-fun lt!469115 () (_ BitVec 64))

(declare-fun lt!469114 () ListLongMap!14169)

(declare-fun +!3079 (ListLongMap!14169 tuple2!16188) ListLongMap!14169)

(assert (=> b!1064268 (not (contains!6280 (+!3079 lt!469114 (tuple2!16189 lt!469117 lt!469116)) lt!469115))))

(declare-fun addStillNotContains!251 (ListLongMap!14169 (_ BitVec 64) V!38907 (_ BitVec 64)) Unit!34867)

(assert (=> b!1064268 (= lt!469113 (addStillNotContains!251 lt!469114 lt!469117 lt!469116 lt!469115))))

(assert (=> b!1064268 (= lt!469115 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!17000 (ValueCell!11961 V!38907) V!38907)

(declare-fun dynLambda!2032 (Int (_ BitVec 64)) V!38907)

(assert (=> b!1064268 (= lt!469116 (get!17000 (select (arr!32512 _values!955) #b00000000000000000000000000000000) (dynLambda!2032 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1064268 (= lt!469117 (select (arr!32513 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1064268 (= lt!469114 call!44978)))

(assert (=> b!1064268 (= e!606577 (+!3079 call!44978 (tuple2!16189 (select (arr!32513 _keys!1163) #b00000000000000000000000000000000) (get!17000 (select (arr!32512 _values!955) #b00000000000000000000000000000000) (dynLambda!2032 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1064269 () Bool)

(assert (=> b!1064269 (= e!606577 call!44978)))

(declare-fun b!1064270 () Bool)

(assert (=> b!1064270 (= e!606576 (= lt!469112 (getCurrentListMapNoExtraKeys!3654 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun d!128903 () Bool)

(assert (=> d!128903 e!606572))

(declare-fun res!710584 () Bool)

(assert (=> d!128903 (=> (not res!710584) (not e!606572))))

(assert (=> d!128903 (= res!710584 (not (contains!6280 lt!469112 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!128903 (= lt!469112 e!606573)))

(declare-fun c!107288 () Bool)

(assert (=> d!128903 (= c!107288 (bvsge #b00000000000000000000000000000000 (size!33050 _keys!1163)))))

(assert (=> d!128903 (validMask!0 mask!1515)))

(assert (=> d!128903 (= (getCurrentListMapNoExtraKeys!3654 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!469112)))

(declare-fun b!1064271 () Bool)

(assert (=> b!1064271 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33050 _keys!1163)))))

(assert (=> b!1064271 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33049 _values!955)))))

(declare-fun apply!956 (ListLongMap!14169 (_ BitVec 64)) V!38907)

(assert (=> b!1064271 (= e!606575 (= (apply!956 lt!469112 (select (arr!32513 _keys!1163) #b00000000000000000000000000000000)) (get!17000 (select (arr!32512 _values!955) #b00000000000000000000000000000000) (dynLambda!2032 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!128903 c!107288) b!1064266))

(assert (= (and d!128903 (not c!107288)) b!1064262))

(assert (= (and b!1064262 c!107285) b!1064268))

(assert (= (and b!1064262 (not c!107285)) b!1064269))

(assert (= (or b!1064268 b!1064269) bm!44975))

(assert (= (and d!128903 res!710584) b!1064267))

(assert (= (and b!1064267 res!710586) b!1064263))

(assert (= (and b!1064263 res!710585) b!1064264))

(assert (= (and b!1064263 c!107286) b!1064261))

(assert (= (and b!1064263 (not c!107286)) b!1064265))

(assert (= (and b!1064261 res!710583) b!1064271))

(assert (= (and b!1064265 c!107287) b!1064270))

(assert (= (and b!1064265 (not c!107287)) b!1064260))

(declare-fun b_lambda!16531 () Bool)

(assert (=> (not b_lambda!16531) (not b!1064268)))

(declare-fun t!32115 () Bool)

(declare-fun tb!7145 () Bool)

(assert (=> (and start!94140 (= defaultEntry!963 defaultEntry!963) t!32115) tb!7145))

(declare-fun result!14727 () Bool)

(assert (=> tb!7145 (= result!14727 tp_is_empty!25329)))

(assert (=> b!1064268 t!32115))

(declare-fun b_and!34283 () Bool)

(assert (= b_and!34279 (and (=> t!32115 result!14727) b_and!34283)))

(declare-fun b_lambda!16533 () Bool)

(assert (=> (not b_lambda!16533) (not b!1064271)))

(assert (=> b!1064271 t!32115))

(declare-fun b_and!34285 () Bool)

(assert (= b_and!34283 (and (=> t!32115 result!14727) b_and!34285)))

(declare-fun m!982959 () Bool)

(assert (=> bm!44975 m!982959))

(assert (=> b!1064264 m!982949))

(assert (=> b!1064264 m!982949))

(assert (=> b!1064264 m!982951))

(declare-fun m!982961 () Bool)

(assert (=> d!128903 m!982961))

(assert (=> d!128903 m!982915))

(assert (=> b!1064261 m!982949))

(assert (=> b!1064261 m!982949))

(declare-fun m!982963 () Bool)

(assert (=> b!1064261 m!982963))

(declare-fun m!982965 () Bool)

(assert (=> b!1064268 m!982965))

(declare-fun m!982967 () Bool)

(assert (=> b!1064268 m!982967))

(declare-fun m!982969 () Bool)

(assert (=> b!1064268 m!982969))

(assert (=> b!1064268 m!982969))

(declare-fun m!982971 () Bool)

(assert (=> b!1064268 m!982971))

(declare-fun m!982973 () Bool)

(assert (=> b!1064268 m!982973))

(assert (=> b!1064268 m!982967))

(declare-fun m!982975 () Bool)

(assert (=> b!1064268 m!982975))

(declare-fun m!982977 () Bool)

(assert (=> b!1064268 m!982977))

(assert (=> b!1064268 m!982971))

(assert (=> b!1064268 m!982949))

(assert (=> b!1064270 m!982959))

(assert (=> b!1064262 m!982949))

(assert (=> b!1064262 m!982949))

(assert (=> b!1064262 m!982951))

(declare-fun m!982979 () Bool)

(assert (=> b!1064267 m!982979))

(declare-fun m!982981 () Bool)

(assert (=> b!1064260 m!982981))

(assert (=> b!1064271 m!982949))

(declare-fun m!982983 () Bool)

(assert (=> b!1064271 m!982983))

(assert (=> b!1064271 m!982969))

(assert (=> b!1064271 m!982969))

(assert (=> b!1064271 m!982971))

(assert (=> b!1064271 m!982973))

(assert (=> b!1064271 m!982971))

(assert (=> b!1064271 m!982949))

(assert (=> b!1064195 d!128903))

(declare-fun b!1064274 () Bool)

(declare-fun e!606583 () Bool)

(declare-fun lt!469119 () ListLongMap!14169)

(assert (=> b!1064274 (= e!606583 (isEmpty!942 lt!469119))))

(declare-fun b!1064275 () Bool)

(declare-fun e!606581 () Bool)

(declare-fun e!606582 () Bool)

(assert (=> b!1064275 (= e!606581 e!606582)))

(assert (=> b!1064275 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33050 _keys!1163)))))

(declare-fun res!710587 () Bool)

(assert (=> b!1064275 (= res!710587 (contains!6280 lt!469119 (select (arr!32513 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1064275 (=> (not res!710587) (not e!606582))))

(declare-fun b!1064276 () Bool)

(declare-fun e!606580 () ListLongMap!14169)

(declare-fun e!606584 () ListLongMap!14169)

(assert (=> b!1064276 (= e!606580 e!606584)))

(declare-fun c!107289 () Bool)

(assert (=> b!1064276 (= c!107289 (validKeyInArray!0 (select (arr!32513 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1064277 () Bool)

(declare-fun e!606579 () Bool)

(assert (=> b!1064277 (= e!606579 e!606581)))

(declare-fun c!107290 () Bool)

(declare-fun e!606585 () Bool)

(assert (=> b!1064277 (= c!107290 e!606585)))

(declare-fun res!710589 () Bool)

(assert (=> b!1064277 (=> (not res!710589) (not e!606585))))

(assert (=> b!1064277 (= res!710589 (bvslt #b00000000000000000000000000000000 (size!33050 _keys!1163)))))

(declare-fun b!1064278 () Bool)

(assert (=> b!1064278 (= e!606585 (validKeyInArray!0 (select (arr!32513 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1064278 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1064279 () Bool)

(assert (=> b!1064279 (= e!606581 e!606583)))

(declare-fun c!107291 () Bool)

(assert (=> b!1064279 (= c!107291 (bvslt #b00000000000000000000000000000000 (size!33050 _keys!1163)))))

(declare-fun b!1064280 () Bool)

(assert (=> b!1064280 (= e!606580 (ListLongMap!14170 Nil!22787))))

(declare-fun b!1064281 () Bool)

(declare-fun res!710590 () Bool)

(assert (=> b!1064281 (=> (not res!710590) (not e!606579))))

(assert (=> b!1064281 (= res!710590 (not (contains!6280 lt!469119 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!44976 () Bool)

(declare-fun call!44979 () ListLongMap!14169)

(assert (=> bm!44976 (= call!44979 (getCurrentListMapNoExtraKeys!3654 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1064282 () Bool)

(declare-fun lt!469125 () Unit!34867)

(declare-fun lt!469120 () Unit!34867)

(assert (=> b!1064282 (= lt!469125 lt!469120)))

(declare-fun lt!469121 () ListLongMap!14169)

(declare-fun lt!469122 () (_ BitVec 64))

(declare-fun lt!469124 () (_ BitVec 64))

(declare-fun lt!469123 () V!38907)

(assert (=> b!1064282 (not (contains!6280 (+!3079 lt!469121 (tuple2!16189 lt!469124 lt!469123)) lt!469122))))

(assert (=> b!1064282 (= lt!469120 (addStillNotContains!251 lt!469121 lt!469124 lt!469123 lt!469122))))

(assert (=> b!1064282 (= lt!469122 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1064282 (= lt!469123 (get!17000 (select (arr!32512 _values!955) #b00000000000000000000000000000000) (dynLambda!2032 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1064282 (= lt!469124 (select (arr!32513 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1064282 (= lt!469121 call!44979)))

(assert (=> b!1064282 (= e!606584 (+!3079 call!44979 (tuple2!16189 (select (arr!32513 _keys!1163) #b00000000000000000000000000000000) (get!17000 (select (arr!32512 _values!955) #b00000000000000000000000000000000) (dynLambda!2032 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1064283 () Bool)

(assert (=> b!1064283 (= e!606584 call!44979)))

(declare-fun b!1064284 () Bool)

(assert (=> b!1064284 (= e!606583 (= lt!469119 (getCurrentListMapNoExtraKeys!3654 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun d!128905 () Bool)

(assert (=> d!128905 e!606579))

(declare-fun res!710588 () Bool)

(assert (=> d!128905 (=> (not res!710588) (not e!606579))))

(assert (=> d!128905 (= res!710588 (not (contains!6280 lt!469119 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!128905 (= lt!469119 e!606580)))

(declare-fun c!107292 () Bool)

(assert (=> d!128905 (= c!107292 (bvsge #b00000000000000000000000000000000 (size!33050 _keys!1163)))))

(assert (=> d!128905 (validMask!0 mask!1515)))

(assert (=> d!128905 (= (getCurrentListMapNoExtraKeys!3654 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!469119)))

(declare-fun b!1064285 () Bool)

(assert (=> b!1064285 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33050 _keys!1163)))))

(assert (=> b!1064285 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33049 _values!955)))))

(assert (=> b!1064285 (= e!606582 (= (apply!956 lt!469119 (select (arr!32513 _keys!1163) #b00000000000000000000000000000000)) (get!17000 (select (arr!32512 _values!955) #b00000000000000000000000000000000) (dynLambda!2032 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!128905 c!107292) b!1064280))

(assert (= (and d!128905 (not c!107292)) b!1064276))

(assert (= (and b!1064276 c!107289) b!1064282))

(assert (= (and b!1064276 (not c!107289)) b!1064283))

(assert (= (or b!1064282 b!1064283) bm!44976))

(assert (= (and d!128905 res!710588) b!1064281))

(assert (= (and b!1064281 res!710590) b!1064277))

(assert (= (and b!1064277 res!710589) b!1064278))

(assert (= (and b!1064277 c!107290) b!1064275))

(assert (= (and b!1064277 (not c!107290)) b!1064279))

(assert (= (and b!1064275 res!710587) b!1064285))

(assert (= (and b!1064279 c!107291) b!1064284))

(assert (= (and b!1064279 (not c!107291)) b!1064274))

(declare-fun b_lambda!16535 () Bool)

(assert (=> (not b_lambda!16535) (not b!1064282)))

(assert (=> b!1064282 t!32115))

(declare-fun b_and!34287 () Bool)

(assert (= b_and!34285 (and (=> t!32115 result!14727) b_and!34287)))

(declare-fun b_lambda!16537 () Bool)

(assert (=> (not b_lambda!16537) (not b!1064285)))

(assert (=> b!1064285 t!32115))

(declare-fun b_and!34289 () Bool)

(assert (= b_and!34287 (and (=> t!32115 result!14727) b_and!34289)))

(declare-fun m!982985 () Bool)

(assert (=> bm!44976 m!982985))

(assert (=> b!1064278 m!982949))

(assert (=> b!1064278 m!982949))

(assert (=> b!1064278 m!982951))

(declare-fun m!982987 () Bool)

(assert (=> d!128905 m!982987))

(assert (=> d!128905 m!982915))

(assert (=> b!1064275 m!982949))

(assert (=> b!1064275 m!982949))

(declare-fun m!982989 () Bool)

(assert (=> b!1064275 m!982989))

(declare-fun m!982991 () Bool)

(assert (=> b!1064282 m!982991))

(declare-fun m!982993 () Bool)

(assert (=> b!1064282 m!982993))

(assert (=> b!1064282 m!982969))

(assert (=> b!1064282 m!982969))

(assert (=> b!1064282 m!982971))

(assert (=> b!1064282 m!982973))

(assert (=> b!1064282 m!982993))

(declare-fun m!982995 () Bool)

(assert (=> b!1064282 m!982995))

(declare-fun m!982997 () Bool)

(assert (=> b!1064282 m!982997))

(assert (=> b!1064282 m!982971))

(assert (=> b!1064282 m!982949))

(assert (=> b!1064284 m!982985))

(assert (=> b!1064276 m!982949))

(assert (=> b!1064276 m!982949))

(assert (=> b!1064276 m!982951))

(declare-fun m!982999 () Bool)

(assert (=> b!1064281 m!982999))

(declare-fun m!983001 () Bool)

(assert (=> b!1064274 m!983001))

(assert (=> b!1064285 m!982949))

(declare-fun m!983003 () Bool)

(assert (=> b!1064285 m!983003))

(assert (=> b!1064285 m!982969))

(assert (=> b!1064285 m!982969))

(assert (=> b!1064285 m!982971))

(assert (=> b!1064285 m!982973))

(assert (=> b!1064285 m!982971))

(assert (=> b!1064285 m!982949))

(assert (=> b!1064195 d!128905))

(declare-fun d!128907 () Bool)

(assert (=> d!128907 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!94140 d!128907))

(declare-fun d!128909 () Bool)

(assert (=> d!128909 (= (array_inv!25014 _values!955) (bvsge (size!33049 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!94140 d!128909))

(declare-fun d!128911 () Bool)

(assert (=> d!128911 (= (array_inv!25015 _keys!1163) (bvsge (size!33050 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!94140 d!128911))

(declare-fun b!1064294 () Bool)

(declare-fun e!606594 () Bool)

(declare-fun e!606592 () Bool)

(assert (=> b!1064294 (= e!606594 e!606592)))

(declare-fun c!107295 () Bool)

(assert (=> b!1064294 (= c!107295 (validKeyInArray!0 (select (arr!32513 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1064295 () Bool)

(declare-fun e!606593 () Bool)

(declare-fun call!44982 () Bool)

(assert (=> b!1064295 (= e!606593 call!44982)))

(declare-fun bm!44979 () Bool)

(assert (=> bm!44979 (= call!44982 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1064296 () Bool)

(assert (=> b!1064296 (= e!606592 call!44982)))

(declare-fun d!128913 () Bool)

(declare-fun res!710596 () Bool)

(assert (=> d!128913 (=> res!710596 e!606594)))

(assert (=> d!128913 (= res!710596 (bvsge #b00000000000000000000000000000000 (size!33050 _keys!1163)))))

(assert (=> d!128913 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!606594)))

(declare-fun b!1064297 () Bool)

(assert (=> b!1064297 (= e!606592 e!606593)))

(declare-fun lt!469134 () (_ BitVec 64))

(assert (=> b!1064297 (= lt!469134 (select (arr!32513 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!469133 () Unit!34867)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!67624 (_ BitVec 64) (_ BitVec 32)) Unit!34867)

(assert (=> b!1064297 (= lt!469133 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!469134 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!67624 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1064297 (arrayContainsKey!0 _keys!1163 lt!469134 #b00000000000000000000000000000000)))

(declare-fun lt!469132 () Unit!34867)

(assert (=> b!1064297 (= lt!469132 lt!469133)))

(declare-fun res!710595 () Bool)

(declare-datatypes ((SeekEntryResult!9871 0))(
  ( (MissingZero!9871 (index!41854 (_ BitVec 32))) (Found!9871 (index!41855 (_ BitVec 32))) (Intermediate!9871 (undefined!10683 Bool) (index!41856 (_ BitVec 32)) (x!95238 (_ BitVec 32))) (Undefined!9871) (MissingVacant!9871 (index!41857 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!67624 (_ BitVec 32)) SeekEntryResult!9871)

(assert (=> b!1064297 (= res!710595 (= (seekEntryOrOpen!0 (select (arr!32513 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9871 #b00000000000000000000000000000000)))))

(assert (=> b!1064297 (=> (not res!710595) (not e!606593))))

(assert (= (and d!128913 (not res!710596)) b!1064294))

(assert (= (and b!1064294 c!107295) b!1064297))

(assert (= (and b!1064294 (not c!107295)) b!1064296))

(assert (= (and b!1064297 res!710595) b!1064295))

(assert (= (or b!1064295 b!1064296) bm!44979))

(assert (=> b!1064294 m!982949))

(assert (=> b!1064294 m!982949))

(assert (=> b!1064294 m!982951))

(declare-fun m!983005 () Bool)

(assert (=> bm!44979 m!983005))

(assert (=> b!1064297 m!982949))

(declare-fun m!983007 () Bool)

(assert (=> b!1064297 m!983007))

(declare-fun m!983009 () Bool)

(assert (=> b!1064297 m!983009))

(assert (=> b!1064297 m!982949))

(declare-fun m!983011 () Bool)

(assert (=> b!1064297 m!983011))

(assert (=> b!1064193 d!128913))

(declare-fun mapNonEmpty!39679 () Bool)

(declare-fun mapRes!39679 () Bool)

(declare-fun tp!75999 () Bool)

(declare-fun e!606599 () Bool)

(assert (=> mapNonEmpty!39679 (= mapRes!39679 (and tp!75999 e!606599))))

(declare-fun mapValue!39679 () ValueCell!11961)

(declare-fun mapKey!39679 () (_ BitVec 32))

(declare-fun mapRest!39679 () (Array (_ BitVec 32) ValueCell!11961))

(assert (=> mapNonEmpty!39679 (= mapRest!39673 (store mapRest!39679 mapKey!39679 mapValue!39679))))

(declare-fun b!1064305 () Bool)

(declare-fun e!606600 () Bool)

(assert (=> b!1064305 (= e!606600 tp_is_empty!25329)))

(declare-fun mapIsEmpty!39679 () Bool)

(assert (=> mapIsEmpty!39679 mapRes!39679))

(declare-fun b!1064304 () Bool)

(assert (=> b!1064304 (= e!606599 tp_is_empty!25329)))

(declare-fun condMapEmpty!39679 () Bool)

(declare-fun mapDefault!39679 () ValueCell!11961)

(assert (=> mapNonEmpty!39673 (= condMapEmpty!39679 (= mapRest!39673 ((as const (Array (_ BitVec 32) ValueCell!11961)) mapDefault!39679)))))

(assert (=> mapNonEmpty!39673 (= tp!75989 (and e!606600 mapRes!39679))))

(assert (= (and mapNonEmpty!39673 condMapEmpty!39679) mapIsEmpty!39679))

(assert (= (and mapNonEmpty!39673 (not condMapEmpty!39679)) mapNonEmpty!39679))

(assert (= (and mapNonEmpty!39679 ((_ is ValueCellFull!11961) mapValue!39679)) b!1064304))

(assert (= (and mapNonEmpty!39673 ((_ is ValueCellFull!11961) mapDefault!39679)) b!1064305))

(declare-fun m!983013 () Bool)

(assert (=> mapNonEmpty!39679 m!983013))

(declare-fun b_lambda!16539 () Bool)

(assert (= b_lambda!16533 (or (and start!94140 b_free!21519) b_lambda!16539)))

(declare-fun b_lambda!16541 () Bool)

(assert (= b_lambda!16531 (or (and start!94140 b_free!21519) b_lambda!16541)))

(declare-fun b_lambda!16543 () Bool)

(assert (= b_lambda!16537 (or (and start!94140 b_free!21519) b_lambda!16543)))

(declare-fun b_lambda!16545 () Bool)

(assert (= b_lambda!16535 (or (and start!94140 b_free!21519) b_lambda!16545)))

(check-sat (not bm!44972) (not b!1064262) (not b!1064282) b_and!34289 (not b!1064268) (not b!1064285) (not bm!44975) (not b!1064270) (not b!1064267) (not b!1064231) (not b!1064260) (not bm!44976) (not b_next!21519) (not b!1064234) (not b!1064281) (not mapNonEmpty!39679) (not b!1064276) (not b!1064232) (not b!1064294) (not b_lambda!16545) (not b!1064271) (not b!1064264) (not b!1064275) (not b!1064284) (not d!128901) (not b!1064297) (not b!1064274) (not d!128903) (not b_lambda!16541) (not bm!44979) (not b_lambda!16543) (not b!1064261) tp_is_empty!25329 (not d!128905) (not b_lambda!16539) (not b!1064278))
(check-sat b_and!34289 (not b_next!21519))
