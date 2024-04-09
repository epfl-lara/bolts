; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94284 () Bool)

(assert start!94284)

(declare-fun b_free!21633 () Bool)

(declare-fun b_next!21633 () Bool)

(assert (=> start!94284 (= b_free!21633 (not b_next!21633))))

(declare-fun tp!76337 () Bool)

(declare-fun b_and!34411 () Bool)

(assert (=> start!94284 (= tp!76337 b_and!34411)))

(declare-fun b!1065804 () Bool)

(declare-fun res!711504 () Bool)

(declare-fun e!607711 () Bool)

(assert (=> b!1065804 (=> (not res!711504) (not e!607711))))

(declare-datatypes ((array!67844 0))(
  ( (array!67845 (arr!32621 (Array (_ BitVec 32) (_ BitVec 64))) (size!33158 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67844)

(declare-datatypes ((List!22874 0))(
  ( (Nil!22871) (Cons!22870 (h!24079 (_ BitVec 64)) (t!32200 List!22874)) )
))
(declare-fun arrayNoDuplicates!0 (array!67844 (_ BitVec 32) List!22874) Bool)

(assert (=> b!1065804 (= res!711504 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22871))))

(declare-fun mapNonEmpty!39850 () Bool)

(declare-fun mapRes!39850 () Bool)

(declare-fun tp!76338 () Bool)

(declare-fun e!607712 () Bool)

(assert (=> mapNonEmpty!39850 (= mapRes!39850 (and tp!76338 e!607712))))

(declare-datatypes ((V!39059 0))(
  ( (V!39060 (val!12772 Int)) )
))
(declare-datatypes ((ValueCell!12018 0))(
  ( (ValueCellFull!12018 (v!15385 V!39059)) (EmptyCell!12018) )
))
(declare-fun mapValue!39850 () ValueCell!12018)

(declare-datatypes ((array!67846 0))(
  ( (array!67847 (arr!32622 (Array (_ BitVec 32) ValueCell!12018)) (size!33159 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67846)

(declare-fun mapKey!39850 () (_ BitVec 32))

(declare-fun mapRest!39850 () (Array (_ BitVec 32) ValueCell!12018))

(assert (=> mapNonEmpty!39850 (= (arr!32622 _values!955) (store mapRest!39850 mapKey!39850 mapValue!39850))))

(declare-fun b!1065805 () Bool)

(declare-fun e!607714 () Bool)

(declare-fun e!607715 () Bool)

(assert (=> b!1065805 (= e!607714 (and e!607715 mapRes!39850))))

(declare-fun condMapEmpty!39850 () Bool)

(declare-fun mapDefault!39850 () ValueCell!12018)

(assert (=> b!1065805 (= condMapEmpty!39850 (= (arr!32622 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12018)) mapDefault!39850)))))

(declare-fun b!1065806 () Bool)

(declare-fun tp_is_empty!25443 () Bool)

(assert (=> b!1065806 (= e!607712 tp_is_empty!25443)))

(declare-fun mapIsEmpty!39850 () Bool)

(assert (=> mapIsEmpty!39850 mapRes!39850))

(declare-fun res!711505 () Bool)

(assert (=> start!94284 (=> (not res!711505) (not e!607711))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94284 (= res!711505 (validMask!0 mask!1515))))

(assert (=> start!94284 e!607711))

(assert (=> start!94284 true))

(assert (=> start!94284 tp_is_empty!25443))

(declare-fun array_inv!25098 (array!67846) Bool)

(assert (=> start!94284 (and (array_inv!25098 _values!955) e!607714)))

(assert (=> start!94284 tp!76337))

(declare-fun array_inv!25099 (array!67844) Bool)

(assert (=> start!94284 (array_inv!25099 _keys!1163)))

(declare-fun b!1065807 () Bool)

(declare-fun e!607713 () Bool)

(declare-fun e!607716 () Bool)

(assert (=> b!1065807 (= e!607713 e!607716)))

(declare-fun res!711509 () Bool)

(assert (=> b!1065807 (=> res!711509 e!607716)))

(declare-datatypes ((tuple2!16276 0))(
  ( (tuple2!16277 (_1!8148 (_ BitVec 64)) (_2!8148 V!39059)) )
))
(declare-datatypes ((List!22875 0))(
  ( (Nil!22872) (Cons!22871 (h!24080 tuple2!16276) (t!32201 List!22875)) )
))
(declare-datatypes ((ListLongMap!14257 0))(
  ( (ListLongMap!14258 (toList!7144 List!22875)) )
))
(declare-fun lt!470234 () ListLongMap!14257)

(declare-fun lt!470233 () ListLongMap!14257)

(declare-fun -!607 (ListLongMap!14257 (_ BitVec 64)) ListLongMap!14257)

(assert (=> b!1065807 (= res!711509 (not (= (-!607 lt!470234 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470233)))))

(declare-fun lt!470231 () ListLongMap!14257)

(declare-fun lt!470230 () ListLongMap!14257)

(assert (=> b!1065807 (= (-!607 lt!470231 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470230)))

(declare-datatypes ((Unit!34950 0))(
  ( (Unit!34951) )
))
(declare-fun lt!470232 () Unit!34950)

(declare-fun zeroValueBefore!47 () V!39059)

(declare-fun addThenRemoveForNewKeyIsSame!16 (ListLongMap!14257 (_ BitVec 64) V!39059) Unit!34950)

(assert (=> b!1065807 (= lt!470232 (addThenRemoveForNewKeyIsSame!16 lt!470230 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470236 () ListLongMap!14257)

(assert (=> b!1065807 (and (= lt!470234 lt!470231) (= lt!470233 lt!470236))))

(declare-fun +!3098 (ListLongMap!14257 tuple2!16276) ListLongMap!14257)

(assert (=> b!1065807 (= lt!470231 (+!3098 lt!470230 (tuple2!16277 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun minValue!907 () V!39059)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39059)

(declare-fun getCurrentListMap!4061 (array!67844 array!67846 (_ BitVec 32) (_ BitVec 32) V!39059 V!39059 (_ BitVec 32) Int) ListLongMap!14257)

(assert (=> b!1065807 (= lt!470233 (getCurrentListMap!4061 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065807 (= lt!470234 (getCurrentListMap!4061 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065808 () Bool)

(declare-fun res!711507 () Bool)

(assert (=> b!1065808 (=> (not res!711507) (not e!607711))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67844 (_ BitVec 32)) Bool)

(assert (=> b!1065808 (= res!711507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1065809 () Bool)

(declare-fun res!711506 () Bool)

(assert (=> b!1065809 (=> (not res!711506) (not e!607711))))

(assert (=> b!1065809 (= res!711506 (and (= (size!33159 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33158 _keys!1163) (size!33159 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1065810 () Bool)

(assert (=> b!1065810 (= e!607711 (not e!607713))))

(declare-fun res!711508 () Bool)

(assert (=> b!1065810 (=> res!711508 e!607713)))

(assert (=> b!1065810 (= res!711508 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1065810 (= lt!470230 lt!470236)))

(declare-fun lt!470235 () Unit!34950)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!731 (array!67844 array!67846 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39059 V!39059 V!39059 V!39059 (_ BitVec 32) Int) Unit!34950)

(assert (=> b!1065810 (= lt!470235 (lemmaNoChangeToArrayThenSameMapNoExtras!731 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3692 (array!67844 array!67846 (_ BitVec 32) (_ BitVec 32) V!39059 V!39059 (_ BitVec 32) Int) ListLongMap!14257)

(assert (=> b!1065810 (= lt!470236 (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065810 (= lt!470230 (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065811 () Bool)

(assert (=> b!1065811 (= e!607715 tp_is_empty!25443)))

(declare-fun b!1065812 () Bool)

(assert (=> b!1065812 (= e!607716 (bvsle #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(assert (= (and start!94284 res!711505) b!1065809))

(assert (= (and b!1065809 res!711506) b!1065808))

(assert (= (and b!1065808 res!711507) b!1065804))

(assert (= (and b!1065804 res!711504) b!1065810))

(assert (= (and b!1065810 (not res!711508)) b!1065807))

(assert (= (and b!1065807 (not res!711509)) b!1065812))

(assert (= (and b!1065805 condMapEmpty!39850) mapIsEmpty!39850))

(assert (= (and b!1065805 (not condMapEmpty!39850)) mapNonEmpty!39850))

(get-info :version)

(assert (= (and mapNonEmpty!39850 ((_ is ValueCellFull!12018) mapValue!39850)) b!1065806))

(assert (= (and b!1065805 ((_ is ValueCellFull!12018) mapDefault!39850)) b!1065811))

(assert (= start!94284 b!1065805))

(declare-fun m!984495 () Bool)

(assert (=> b!1065808 m!984495))

(declare-fun m!984497 () Bool)

(assert (=> start!94284 m!984497))

(declare-fun m!984499 () Bool)

(assert (=> start!94284 m!984499))

(declare-fun m!984501 () Bool)

(assert (=> start!94284 m!984501))

(declare-fun m!984503 () Bool)

(assert (=> mapNonEmpty!39850 m!984503))

(declare-fun m!984505 () Bool)

(assert (=> b!1065807 m!984505))

(declare-fun m!984507 () Bool)

(assert (=> b!1065807 m!984507))

(declare-fun m!984509 () Bool)

(assert (=> b!1065807 m!984509))

(declare-fun m!984511 () Bool)

(assert (=> b!1065807 m!984511))

(declare-fun m!984513 () Bool)

(assert (=> b!1065807 m!984513))

(declare-fun m!984515 () Bool)

(assert (=> b!1065807 m!984515))

(declare-fun m!984517 () Bool)

(assert (=> b!1065810 m!984517))

(declare-fun m!984519 () Bool)

(assert (=> b!1065810 m!984519))

(declare-fun m!984521 () Bool)

(assert (=> b!1065810 m!984521))

(declare-fun m!984523 () Bool)

(assert (=> b!1065804 m!984523))

(check-sat (not b!1065804) (not b!1065810) (not start!94284) (not b!1065808) b_and!34411 (not b!1065807) (not b_next!21633) tp_is_empty!25443 (not mapNonEmpty!39850))
(check-sat b_and!34411 (not b_next!21633))
(get-model)

(declare-fun d!128971 () Bool)

(declare-fun res!711533 () Bool)

(declare-fun e!607746 () Bool)

(assert (=> d!128971 (=> res!711533 e!607746)))

(assert (=> d!128971 (= res!711533 (bvsge #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(assert (=> d!128971 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!607746)))

(declare-fun b!1065848 () Bool)

(declare-fun e!607745 () Bool)

(declare-fun call!45016 () Bool)

(assert (=> b!1065848 (= e!607745 call!45016)))

(declare-fun bm!45013 () Bool)

(assert (=> bm!45013 (= call!45016 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1065849 () Bool)

(declare-fun e!607747 () Bool)

(assert (=> b!1065849 (= e!607747 call!45016)))

(declare-fun b!1065850 () Bool)

(assert (=> b!1065850 (= e!607745 e!607747)))

(declare-fun lt!470265 () (_ BitVec 64))

(assert (=> b!1065850 (= lt!470265 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!470264 () Unit!34950)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!67844 (_ BitVec 64) (_ BitVec 32)) Unit!34950)

(assert (=> b!1065850 (= lt!470264 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!470265 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!67844 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1065850 (arrayContainsKey!0 _keys!1163 lt!470265 #b00000000000000000000000000000000)))

(declare-fun lt!470266 () Unit!34950)

(assert (=> b!1065850 (= lt!470266 lt!470264)))

(declare-fun res!711532 () Bool)

(declare-datatypes ((SeekEntryResult!9873 0))(
  ( (MissingZero!9873 (index!41862 (_ BitVec 32))) (Found!9873 (index!41863 (_ BitVec 32))) (Intermediate!9873 (undefined!10685 Bool) (index!41864 (_ BitVec 32)) (x!95414 (_ BitVec 32))) (Undefined!9873) (MissingVacant!9873 (index!41865 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!67844 (_ BitVec 32)) SeekEntryResult!9873)

(assert (=> b!1065850 (= res!711532 (= (seekEntryOrOpen!0 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9873 #b00000000000000000000000000000000)))))

(assert (=> b!1065850 (=> (not res!711532) (not e!607747))))

(declare-fun b!1065851 () Bool)

(assert (=> b!1065851 (= e!607746 e!607745)))

(declare-fun c!107338 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1065851 (= c!107338 (validKeyInArray!0 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!128971 (not res!711533)) b!1065851))

(assert (= (and b!1065851 c!107338) b!1065850))

(assert (= (and b!1065851 (not c!107338)) b!1065848))

(assert (= (and b!1065850 res!711532) b!1065849))

(assert (= (or b!1065849 b!1065848) bm!45013))

(declare-fun m!984555 () Bool)

(assert (=> bm!45013 m!984555))

(declare-fun m!984557 () Bool)

(assert (=> b!1065850 m!984557))

(declare-fun m!984559 () Bool)

(assert (=> b!1065850 m!984559))

(declare-fun m!984561 () Bool)

(assert (=> b!1065850 m!984561))

(assert (=> b!1065850 m!984557))

(declare-fun m!984563 () Bool)

(assert (=> b!1065850 m!984563))

(assert (=> b!1065851 m!984557))

(assert (=> b!1065851 m!984557))

(declare-fun m!984565 () Bool)

(assert (=> b!1065851 m!984565))

(assert (=> b!1065808 d!128971))

(declare-fun d!128973 () Bool)

(declare-fun res!711542 () Bool)

(declare-fun e!607756 () Bool)

(assert (=> d!128973 (=> res!711542 e!607756)))

(assert (=> d!128973 (= res!711542 (bvsge #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(assert (=> d!128973 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22871) e!607756)))

(declare-fun b!1065862 () Bool)

(declare-fun e!607757 () Bool)

(declare-fun call!45019 () Bool)

(assert (=> b!1065862 (= e!607757 call!45019)))

(declare-fun bm!45016 () Bool)

(declare-fun c!107341 () Bool)

(assert (=> bm!45016 (= call!45019 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107341 (Cons!22870 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000) Nil!22871) Nil!22871)))))

(declare-fun b!1065863 () Bool)

(declare-fun e!607758 () Bool)

(assert (=> b!1065863 (= e!607758 e!607757)))

(assert (=> b!1065863 (= c!107341 (validKeyInArray!0 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1065864 () Bool)

(assert (=> b!1065864 (= e!607756 e!607758)))

(declare-fun res!711541 () Bool)

(assert (=> b!1065864 (=> (not res!711541) (not e!607758))))

(declare-fun e!607759 () Bool)

(assert (=> b!1065864 (= res!711541 (not e!607759))))

(declare-fun res!711540 () Bool)

(assert (=> b!1065864 (=> (not res!711540) (not e!607759))))

(assert (=> b!1065864 (= res!711540 (validKeyInArray!0 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1065865 () Bool)

(assert (=> b!1065865 (= e!607757 call!45019)))

(declare-fun b!1065866 () Bool)

(declare-fun contains!6285 (List!22874 (_ BitVec 64)) Bool)

(assert (=> b!1065866 (= e!607759 (contains!6285 Nil!22871 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!128973 (not res!711542)) b!1065864))

(assert (= (and b!1065864 res!711540) b!1065866))

(assert (= (and b!1065864 res!711541) b!1065863))

(assert (= (and b!1065863 c!107341) b!1065862))

(assert (= (and b!1065863 (not c!107341)) b!1065865))

(assert (= (or b!1065862 b!1065865) bm!45016))

(assert (=> bm!45016 m!984557))

(declare-fun m!984567 () Bool)

(assert (=> bm!45016 m!984567))

(assert (=> b!1065863 m!984557))

(assert (=> b!1065863 m!984557))

(assert (=> b!1065863 m!984565))

(assert (=> b!1065864 m!984557))

(assert (=> b!1065864 m!984557))

(assert (=> b!1065864 m!984565))

(assert (=> b!1065866 m!984557))

(assert (=> b!1065866 m!984557))

(declare-fun m!984569 () Bool)

(assert (=> b!1065866 m!984569))

(assert (=> b!1065804 d!128973))

(declare-fun d!128975 () Bool)

(declare-fun lt!470269 () ListLongMap!14257)

(declare-fun contains!6286 (ListLongMap!14257 (_ BitVec 64)) Bool)

(assert (=> d!128975 (not (contains!6286 lt!470269 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!70 (List!22875 (_ BitVec 64)) List!22875)

(assert (=> d!128975 (= lt!470269 (ListLongMap!14258 (removeStrictlySorted!70 (toList!7144 lt!470231) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!128975 (= (-!607 lt!470231 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470269)))

(declare-fun bs!31356 () Bool)

(assert (= bs!31356 d!128975))

(declare-fun m!984571 () Bool)

(assert (=> bs!31356 m!984571))

(declare-fun m!984573 () Bool)

(assert (=> bs!31356 m!984573))

(assert (=> b!1065807 d!128975))

(declare-fun b!1065909 () Bool)

(declare-fun e!607796 () Bool)

(declare-fun e!607788 () Bool)

(assert (=> b!1065909 (= e!607796 e!607788)))

(declare-fun res!711566 () Bool)

(declare-fun call!45034 () Bool)

(assert (=> b!1065909 (= res!711566 call!45034)))

(assert (=> b!1065909 (=> (not res!711566) (not e!607788))))

(declare-fun b!1065910 () Bool)

(declare-fun e!607794 () Bool)

(declare-fun lt!470327 () ListLongMap!14257)

(declare-fun apply!958 (ListLongMap!14257 (_ BitVec 64)) V!39059)

(assert (=> b!1065910 (= e!607794 (= (apply!958 lt!470327 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1065912 () Bool)

(declare-fun c!107356 () Bool)

(assert (=> b!1065912 (= c!107356 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!607787 () ListLongMap!14257)

(declare-fun e!607798 () ListLongMap!14257)

(assert (=> b!1065912 (= e!607787 e!607798)))

(declare-fun b!1065913 () Bool)

(assert (=> b!1065913 (= e!607788 (= (apply!958 lt!470327 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!47))))

(declare-fun b!1065914 () Bool)

(declare-fun e!607793 () ListLongMap!14257)

(declare-fun call!45035 () ListLongMap!14257)

(assert (=> b!1065914 (= e!607793 (+!3098 call!45035 (tuple2!16277 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun b!1065915 () Bool)

(declare-fun e!607792 () Unit!34950)

(declare-fun lt!470331 () Unit!34950)

(assert (=> b!1065915 (= e!607792 lt!470331)))

(declare-fun lt!470330 () ListLongMap!14257)

(assert (=> b!1065915 (= lt!470330 (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!470316 () (_ BitVec 64))

(assert (=> b!1065915 (= lt!470316 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!470334 () (_ BitVec 64))

(assert (=> b!1065915 (= lt!470334 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!470326 () Unit!34950)

(declare-fun addStillContains!643 (ListLongMap!14257 (_ BitVec 64) V!39059 (_ BitVec 64)) Unit!34950)

(assert (=> b!1065915 (= lt!470326 (addStillContains!643 lt!470330 lt!470316 zeroValueAfter!47 lt!470334))))

(assert (=> b!1065915 (contains!6286 (+!3098 lt!470330 (tuple2!16277 lt!470316 zeroValueAfter!47)) lt!470334)))

(declare-fun lt!470317 () Unit!34950)

(assert (=> b!1065915 (= lt!470317 lt!470326)))

(declare-fun lt!470322 () ListLongMap!14257)

(assert (=> b!1065915 (= lt!470322 (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!470321 () (_ BitVec 64))

(assert (=> b!1065915 (= lt!470321 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!470328 () (_ BitVec 64))

(assert (=> b!1065915 (= lt!470328 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!470333 () Unit!34950)

(declare-fun addApplyDifferent!495 (ListLongMap!14257 (_ BitVec 64) V!39059 (_ BitVec 64)) Unit!34950)

(assert (=> b!1065915 (= lt!470333 (addApplyDifferent!495 lt!470322 lt!470321 minValue!907 lt!470328))))

(assert (=> b!1065915 (= (apply!958 (+!3098 lt!470322 (tuple2!16277 lt!470321 minValue!907)) lt!470328) (apply!958 lt!470322 lt!470328))))

(declare-fun lt!470329 () Unit!34950)

(assert (=> b!1065915 (= lt!470329 lt!470333)))

(declare-fun lt!470335 () ListLongMap!14257)

(assert (=> b!1065915 (= lt!470335 (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!470315 () (_ BitVec 64))

(assert (=> b!1065915 (= lt!470315 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!470324 () (_ BitVec 64))

(assert (=> b!1065915 (= lt!470324 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!470318 () Unit!34950)

(assert (=> b!1065915 (= lt!470318 (addApplyDifferent!495 lt!470335 lt!470315 zeroValueAfter!47 lt!470324))))

(assert (=> b!1065915 (= (apply!958 (+!3098 lt!470335 (tuple2!16277 lt!470315 zeroValueAfter!47)) lt!470324) (apply!958 lt!470335 lt!470324))))

(declare-fun lt!470323 () Unit!34950)

(assert (=> b!1065915 (= lt!470323 lt!470318)))

(declare-fun lt!470320 () ListLongMap!14257)

(assert (=> b!1065915 (= lt!470320 (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!470332 () (_ BitVec 64))

(assert (=> b!1065915 (= lt!470332 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!470319 () (_ BitVec 64))

(assert (=> b!1065915 (= lt!470319 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1065915 (= lt!470331 (addApplyDifferent!495 lt!470320 lt!470332 minValue!907 lt!470319))))

(assert (=> b!1065915 (= (apply!958 (+!3098 lt!470320 (tuple2!16277 lt!470332 minValue!907)) lt!470319) (apply!958 lt!470320 lt!470319))))

(declare-fun bm!45031 () Bool)

(assert (=> bm!45031 (= call!45034 (contains!6286 lt!470327 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1065916 () Bool)

(declare-fun e!607791 () Bool)

(declare-fun e!607797 () Bool)

(assert (=> b!1065916 (= e!607791 e!607797)))

(declare-fun c!107355 () Bool)

(assert (=> b!1065916 (= c!107355 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!45032 () Bool)

(declare-fun call!45040 () Bool)

(assert (=> bm!45032 (= call!45040 (contains!6286 lt!470327 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1065917 () Bool)

(declare-fun res!711561 () Bool)

(assert (=> b!1065917 (=> (not res!711561) (not e!607791))))

(declare-fun e!607789 () Bool)

(assert (=> b!1065917 (= res!711561 e!607789)))

(declare-fun res!711562 () Bool)

(assert (=> b!1065917 (=> res!711562 e!607789)))

(declare-fun e!607790 () Bool)

(assert (=> b!1065917 (= res!711562 (not e!607790))))

(declare-fun res!711563 () Bool)

(assert (=> b!1065917 (=> (not res!711563) (not e!607790))))

(assert (=> b!1065917 (= res!711563 (bvslt #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(declare-fun b!1065918 () Bool)

(assert (=> b!1065918 (= e!607796 (not call!45034))))

(declare-fun d!128977 () Bool)

(assert (=> d!128977 e!607791))

(declare-fun res!711568 () Bool)

(assert (=> d!128977 (=> (not res!711568) (not e!607791))))

(assert (=> d!128977 (= res!711568 (or (bvsge #b00000000000000000000000000000000 (size!33158 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33158 _keys!1163)))))))

(declare-fun lt!470314 () ListLongMap!14257)

(assert (=> d!128977 (= lt!470327 lt!470314)))

(declare-fun lt!470325 () Unit!34950)

(assert (=> d!128977 (= lt!470325 e!607792)))

(declare-fun c!107359 () Bool)

(declare-fun e!607795 () Bool)

(assert (=> d!128977 (= c!107359 e!607795)))

(declare-fun res!711567 () Bool)

(assert (=> d!128977 (=> (not res!711567) (not e!607795))))

(assert (=> d!128977 (= res!711567 (bvslt #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(assert (=> d!128977 (= lt!470314 e!607793)))

(declare-fun c!107358 () Bool)

(assert (=> d!128977 (= c!107358 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!128977 (validMask!0 mask!1515)))

(assert (=> d!128977 (= (getCurrentListMap!4061 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!470327)))

(declare-fun b!1065911 () Bool)

(assert (=> b!1065911 (= e!607793 e!607787)))

(declare-fun c!107357 () Bool)

(assert (=> b!1065911 (= c!107357 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!45033 () Bool)

(declare-fun call!45036 () ListLongMap!14257)

(declare-fun call!45038 () ListLongMap!14257)

(assert (=> bm!45033 (= call!45036 call!45038)))

(declare-fun call!45037 () ListLongMap!14257)

(declare-fun bm!45034 () Bool)

(assert (=> bm!45034 (= call!45035 (+!3098 (ite c!107358 call!45038 (ite c!107357 call!45036 call!45037)) (ite (or c!107358 c!107357) (tuple2!16277 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!47) (tuple2!16277 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1065919 () Bool)

(assert (=> b!1065919 (= e!607797 (not call!45040))))

(declare-fun e!607786 () Bool)

(declare-fun b!1065920 () Bool)

(declare-fun get!17040 (ValueCell!12018 V!39059) V!39059)

(declare-fun dynLambda!2034 (Int (_ BitVec 64)) V!39059)

(assert (=> b!1065920 (= e!607786 (= (apply!958 lt!470327 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)) (get!17040 (select (arr!32622 _values!955) #b00000000000000000000000000000000) (dynLambda!2034 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1065920 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33159 _values!955)))))

(assert (=> b!1065920 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(declare-fun bm!45035 () Bool)

(assert (=> bm!45035 (= call!45038 (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065921 () Bool)

(declare-fun call!45039 () ListLongMap!14257)

(assert (=> b!1065921 (= e!607798 call!45039)))

(declare-fun b!1065922 () Bool)

(assert (=> b!1065922 (= e!607798 call!45037)))

(declare-fun b!1065923 () Bool)

(declare-fun Unit!34954 () Unit!34950)

(assert (=> b!1065923 (= e!607792 Unit!34954)))

(declare-fun b!1065924 () Bool)

(declare-fun res!711569 () Bool)

(assert (=> b!1065924 (=> (not res!711569) (not e!607791))))

(assert (=> b!1065924 (= res!711569 e!607796)))

(declare-fun c!107354 () Bool)

(assert (=> b!1065924 (= c!107354 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1065925 () Bool)

(assert (=> b!1065925 (= e!607787 call!45039)))

(declare-fun b!1065926 () Bool)

(assert (=> b!1065926 (= e!607795 (validKeyInArray!0 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1065927 () Bool)

(assert (=> b!1065927 (= e!607797 e!607794)))

(declare-fun res!711565 () Bool)

(assert (=> b!1065927 (= res!711565 call!45040)))

(assert (=> b!1065927 (=> (not res!711565) (not e!607794))))

(declare-fun b!1065928 () Bool)

(assert (=> b!1065928 (= e!607789 e!607786)))

(declare-fun res!711564 () Bool)

(assert (=> b!1065928 (=> (not res!711564) (not e!607786))))

(assert (=> b!1065928 (= res!711564 (contains!6286 lt!470327 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1065928 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(declare-fun bm!45036 () Bool)

(assert (=> bm!45036 (= call!45037 call!45036)))

(declare-fun b!1065929 () Bool)

(assert (=> b!1065929 (= e!607790 (validKeyInArray!0 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45037 () Bool)

(assert (=> bm!45037 (= call!45039 call!45035)))

(assert (= (and d!128977 c!107358) b!1065914))

(assert (= (and d!128977 (not c!107358)) b!1065911))

(assert (= (and b!1065911 c!107357) b!1065925))

(assert (= (and b!1065911 (not c!107357)) b!1065912))

(assert (= (and b!1065912 c!107356) b!1065921))

(assert (= (and b!1065912 (not c!107356)) b!1065922))

(assert (= (or b!1065921 b!1065922) bm!45036))

(assert (= (or b!1065925 bm!45036) bm!45033))

(assert (= (or b!1065925 b!1065921) bm!45037))

(assert (= (or b!1065914 bm!45033) bm!45035))

(assert (= (or b!1065914 bm!45037) bm!45034))

(assert (= (and d!128977 res!711567) b!1065926))

(assert (= (and d!128977 c!107359) b!1065915))

(assert (= (and d!128977 (not c!107359)) b!1065923))

(assert (= (and d!128977 res!711568) b!1065917))

(assert (= (and b!1065917 res!711563) b!1065929))

(assert (= (and b!1065917 (not res!711562)) b!1065928))

(assert (= (and b!1065928 res!711564) b!1065920))

(assert (= (and b!1065917 res!711561) b!1065924))

(assert (= (and b!1065924 c!107354) b!1065909))

(assert (= (and b!1065924 (not c!107354)) b!1065918))

(assert (= (and b!1065909 res!711566) b!1065913))

(assert (= (or b!1065909 b!1065918) bm!45031))

(assert (= (and b!1065924 res!711569) b!1065916))

(assert (= (and b!1065916 c!107355) b!1065927))

(assert (= (and b!1065916 (not c!107355)) b!1065919))

(assert (= (and b!1065927 res!711565) b!1065910))

(assert (= (or b!1065927 b!1065919) bm!45032))

(declare-fun b_lambda!16567 () Bool)

(assert (=> (not b_lambda!16567) (not b!1065920)))

(declare-fun t!32204 () Bool)

(declare-fun tb!7149 () Bool)

(assert (=> (and start!94284 (= defaultEntry!963 defaultEntry!963) t!32204) tb!7149))

(declare-fun result!14739 () Bool)

(assert (=> tb!7149 (= result!14739 tp_is_empty!25443)))

(assert (=> b!1065920 t!32204))

(declare-fun b_and!34415 () Bool)

(assert (= b_and!34411 (and (=> t!32204 result!14739) b_and!34415)))

(declare-fun m!984575 () Bool)

(assert (=> bm!45031 m!984575))

(declare-fun m!984577 () Bool)

(assert (=> bm!45034 m!984577))

(declare-fun m!984579 () Bool)

(assert (=> b!1065915 m!984579))

(declare-fun m!984581 () Bool)

(assert (=> b!1065915 m!984581))

(assert (=> b!1065915 m!984519))

(declare-fun m!984583 () Bool)

(assert (=> b!1065915 m!984583))

(declare-fun m!984585 () Bool)

(assert (=> b!1065915 m!984585))

(declare-fun m!984587 () Bool)

(assert (=> b!1065915 m!984587))

(declare-fun m!984589 () Bool)

(assert (=> b!1065915 m!984589))

(declare-fun m!984591 () Bool)

(assert (=> b!1065915 m!984591))

(declare-fun m!984593 () Bool)

(assert (=> b!1065915 m!984593))

(declare-fun m!984595 () Bool)

(assert (=> b!1065915 m!984595))

(declare-fun m!984597 () Bool)

(assert (=> b!1065915 m!984597))

(assert (=> b!1065915 m!984583))

(declare-fun m!984599 () Bool)

(assert (=> b!1065915 m!984599))

(declare-fun m!984601 () Bool)

(assert (=> b!1065915 m!984601))

(declare-fun m!984603 () Bool)

(assert (=> b!1065915 m!984603))

(declare-fun m!984605 () Bool)

(assert (=> b!1065915 m!984605))

(assert (=> b!1065915 m!984557))

(declare-fun m!984607 () Bool)

(assert (=> b!1065915 m!984607))

(assert (=> b!1065915 m!984599))

(assert (=> b!1065915 m!984595))

(assert (=> b!1065915 m!984589))

(assert (=> b!1065928 m!984557))

(assert (=> b!1065928 m!984557))

(declare-fun m!984609 () Bool)

(assert (=> b!1065928 m!984609))

(assert (=> d!128977 m!984497))

(declare-fun m!984611 () Bool)

(assert (=> b!1065910 m!984611))

(assert (=> b!1065926 m!984557))

(assert (=> b!1065926 m!984557))

(assert (=> b!1065926 m!984565))

(declare-fun m!984613 () Bool)

(assert (=> b!1065913 m!984613))

(declare-fun m!984615 () Bool)

(assert (=> b!1065920 m!984615))

(declare-fun m!984617 () Bool)

(assert (=> b!1065920 m!984617))

(assert (=> b!1065920 m!984617))

(assert (=> b!1065920 m!984615))

(declare-fun m!984619 () Bool)

(assert (=> b!1065920 m!984619))

(assert (=> b!1065920 m!984557))

(declare-fun m!984621 () Bool)

(assert (=> b!1065920 m!984621))

(assert (=> b!1065920 m!984557))

(declare-fun m!984623 () Bool)

(assert (=> bm!45032 m!984623))

(declare-fun m!984625 () Bool)

(assert (=> b!1065914 m!984625))

(assert (=> b!1065929 m!984557))

(assert (=> b!1065929 m!984557))

(assert (=> b!1065929 m!984565))

(assert (=> bm!45035 m!984519))

(assert (=> b!1065807 d!128977))

(declare-fun b!1065932 () Bool)

(declare-fun e!607809 () Bool)

(declare-fun e!607801 () Bool)

(assert (=> b!1065932 (= e!607809 e!607801)))

(declare-fun res!711575 () Bool)

(declare-fun call!45041 () Bool)

(assert (=> b!1065932 (= res!711575 call!45041)))

(assert (=> b!1065932 (=> (not res!711575) (not e!607801))))

(declare-fun b!1065933 () Bool)

(declare-fun e!607807 () Bool)

(declare-fun lt!470349 () ListLongMap!14257)

(assert (=> b!1065933 (= e!607807 (= (apply!958 lt!470349 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1065935 () Bool)

(declare-fun c!107362 () Bool)

(assert (=> b!1065935 (= c!107362 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!607800 () ListLongMap!14257)

(declare-fun e!607811 () ListLongMap!14257)

(assert (=> b!1065935 (= e!607800 e!607811)))

(declare-fun b!1065936 () Bool)

(assert (=> b!1065936 (= e!607801 (= (apply!958 lt!470349 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(declare-fun b!1065937 () Bool)

(declare-fun e!607806 () ListLongMap!14257)

(declare-fun call!45042 () ListLongMap!14257)

(assert (=> b!1065937 (= e!607806 (+!3098 call!45042 (tuple2!16277 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun b!1065938 () Bool)

(declare-fun e!607805 () Unit!34950)

(declare-fun lt!470353 () Unit!34950)

(assert (=> b!1065938 (= e!607805 lt!470353)))

(declare-fun lt!470352 () ListLongMap!14257)

(assert (=> b!1065938 (= lt!470352 (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!470338 () (_ BitVec 64))

(assert (=> b!1065938 (= lt!470338 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!470356 () (_ BitVec 64))

(assert (=> b!1065938 (= lt!470356 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!470348 () Unit!34950)

(assert (=> b!1065938 (= lt!470348 (addStillContains!643 lt!470352 lt!470338 zeroValueBefore!47 lt!470356))))

(assert (=> b!1065938 (contains!6286 (+!3098 lt!470352 (tuple2!16277 lt!470338 zeroValueBefore!47)) lt!470356)))

(declare-fun lt!470339 () Unit!34950)

(assert (=> b!1065938 (= lt!470339 lt!470348)))

(declare-fun lt!470344 () ListLongMap!14257)

(assert (=> b!1065938 (= lt!470344 (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!470343 () (_ BitVec 64))

(assert (=> b!1065938 (= lt!470343 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!470350 () (_ BitVec 64))

(assert (=> b!1065938 (= lt!470350 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!470355 () Unit!34950)

(assert (=> b!1065938 (= lt!470355 (addApplyDifferent!495 lt!470344 lt!470343 minValue!907 lt!470350))))

(assert (=> b!1065938 (= (apply!958 (+!3098 lt!470344 (tuple2!16277 lt!470343 minValue!907)) lt!470350) (apply!958 lt!470344 lt!470350))))

(declare-fun lt!470351 () Unit!34950)

(assert (=> b!1065938 (= lt!470351 lt!470355)))

(declare-fun lt!470357 () ListLongMap!14257)

(assert (=> b!1065938 (= lt!470357 (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!470337 () (_ BitVec 64))

(assert (=> b!1065938 (= lt!470337 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!470346 () (_ BitVec 64))

(assert (=> b!1065938 (= lt!470346 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!470340 () Unit!34950)

(assert (=> b!1065938 (= lt!470340 (addApplyDifferent!495 lt!470357 lt!470337 zeroValueBefore!47 lt!470346))))

(assert (=> b!1065938 (= (apply!958 (+!3098 lt!470357 (tuple2!16277 lt!470337 zeroValueBefore!47)) lt!470346) (apply!958 lt!470357 lt!470346))))

(declare-fun lt!470345 () Unit!34950)

(assert (=> b!1065938 (= lt!470345 lt!470340)))

(declare-fun lt!470342 () ListLongMap!14257)

(assert (=> b!1065938 (= lt!470342 (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!470354 () (_ BitVec 64))

(assert (=> b!1065938 (= lt!470354 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!470341 () (_ BitVec 64))

(assert (=> b!1065938 (= lt!470341 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1065938 (= lt!470353 (addApplyDifferent!495 lt!470342 lt!470354 minValue!907 lt!470341))))

(assert (=> b!1065938 (= (apply!958 (+!3098 lt!470342 (tuple2!16277 lt!470354 minValue!907)) lt!470341) (apply!958 lt!470342 lt!470341))))

(declare-fun bm!45038 () Bool)

(assert (=> bm!45038 (= call!45041 (contains!6286 lt!470349 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1065939 () Bool)

(declare-fun e!607804 () Bool)

(declare-fun e!607810 () Bool)

(assert (=> b!1065939 (= e!607804 e!607810)))

(declare-fun c!107361 () Bool)

(assert (=> b!1065939 (= c!107361 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!45039 () Bool)

(declare-fun call!45047 () Bool)

(assert (=> bm!45039 (= call!45047 (contains!6286 lt!470349 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1065940 () Bool)

(declare-fun res!711570 () Bool)

(assert (=> b!1065940 (=> (not res!711570) (not e!607804))))

(declare-fun e!607802 () Bool)

(assert (=> b!1065940 (= res!711570 e!607802)))

(declare-fun res!711571 () Bool)

(assert (=> b!1065940 (=> res!711571 e!607802)))

(declare-fun e!607803 () Bool)

(assert (=> b!1065940 (= res!711571 (not e!607803))))

(declare-fun res!711572 () Bool)

(assert (=> b!1065940 (=> (not res!711572) (not e!607803))))

(assert (=> b!1065940 (= res!711572 (bvslt #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(declare-fun b!1065941 () Bool)

(assert (=> b!1065941 (= e!607809 (not call!45041))))

(declare-fun d!128979 () Bool)

(assert (=> d!128979 e!607804))

(declare-fun res!711577 () Bool)

(assert (=> d!128979 (=> (not res!711577) (not e!607804))))

(assert (=> d!128979 (= res!711577 (or (bvsge #b00000000000000000000000000000000 (size!33158 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33158 _keys!1163)))))))

(declare-fun lt!470336 () ListLongMap!14257)

(assert (=> d!128979 (= lt!470349 lt!470336)))

(declare-fun lt!470347 () Unit!34950)

(assert (=> d!128979 (= lt!470347 e!607805)))

(declare-fun c!107365 () Bool)

(declare-fun e!607808 () Bool)

(assert (=> d!128979 (= c!107365 e!607808)))

(declare-fun res!711576 () Bool)

(assert (=> d!128979 (=> (not res!711576) (not e!607808))))

(assert (=> d!128979 (= res!711576 (bvslt #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(assert (=> d!128979 (= lt!470336 e!607806)))

(declare-fun c!107364 () Bool)

(assert (=> d!128979 (= c!107364 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!128979 (validMask!0 mask!1515)))

(assert (=> d!128979 (= (getCurrentListMap!4061 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!470349)))

(declare-fun b!1065934 () Bool)

(assert (=> b!1065934 (= e!607806 e!607800)))

(declare-fun c!107363 () Bool)

(assert (=> b!1065934 (= c!107363 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!45040 () Bool)

(declare-fun call!45043 () ListLongMap!14257)

(declare-fun call!45045 () ListLongMap!14257)

(assert (=> bm!45040 (= call!45043 call!45045)))

(declare-fun call!45044 () ListLongMap!14257)

(declare-fun bm!45041 () Bool)

(assert (=> bm!45041 (= call!45042 (+!3098 (ite c!107364 call!45045 (ite c!107363 call!45043 call!45044)) (ite (or c!107364 c!107363) (tuple2!16277 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16277 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1065942 () Bool)

(assert (=> b!1065942 (= e!607810 (not call!45047))))

(declare-fun b!1065943 () Bool)

(declare-fun e!607799 () Bool)

(assert (=> b!1065943 (= e!607799 (= (apply!958 lt!470349 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)) (get!17040 (select (arr!32622 _values!955) #b00000000000000000000000000000000) (dynLambda!2034 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1065943 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33159 _values!955)))))

(assert (=> b!1065943 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(declare-fun bm!45042 () Bool)

(assert (=> bm!45042 (= call!45045 (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065944 () Bool)

(declare-fun call!45046 () ListLongMap!14257)

(assert (=> b!1065944 (= e!607811 call!45046)))

(declare-fun b!1065945 () Bool)

(assert (=> b!1065945 (= e!607811 call!45044)))

(declare-fun b!1065946 () Bool)

(declare-fun Unit!34955 () Unit!34950)

(assert (=> b!1065946 (= e!607805 Unit!34955)))

(declare-fun b!1065947 () Bool)

(declare-fun res!711578 () Bool)

(assert (=> b!1065947 (=> (not res!711578) (not e!607804))))

(assert (=> b!1065947 (= res!711578 e!607809)))

(declare-fun c!107360 () Bool)

(assert (=> b!1065947 (= c!107360 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1065948 () Bool)

(assert (=> b!1065948 (= e!607800 call!45046)))

(declare-fun b!1065949 () Bool)

(assert (=> b!1065949 (= e!607808 (validKeyInArray!0 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1065950 () Bool)

(assert (=> b!1065950 (= e!607810 e!607807)))

(declare-fun res!711574 () Bool)

(assert (=> b!1065950 (= res!711574 call!45047)))

(assert (=> b!1065950 (=> (not res!711574) (not e!607807))))

(declare-fun b!1065951 () Bool)

(assert (=> b!1065951 (= e!607802 e!607799)))

(declare-fun res!711573 () Bool)

(assert (=> b!1065951 (=> (not res!711573) (not e!607799))))

(assert (=> b!1065951 (= res!711573 (contains!6286 lt!470349 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1065951 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(declare-fun bm!45043 () Bool)

(assert (=> bm!45043 (= call!45044 call!45043)))

(declare-fun b!1065952 () Bool)

(assert (=> b!1065952 (= e!607803 (validKeyInArray!0 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45044 () Bool)

(assert (=> bm!45044 (= call!45046 call!45042)))

(assert (= (and d!128979 c!107364) b!1065937))

(assert (= (and d!128979 (not c!107364)) b!1065934))

(assert (= (and b!1065934 c!107363) b!1065948))

(assert (= (and b!1065934 (not c!107363)) b!1065935))

(assert (= (and b!1065935 c!107362) b!1065944))

(assert (= (and b!1065935 (not c!107362)) b!1065945))

(assert (= (or b!1065944 b!1065945) bm!45043))

(assert (= (or b!1065948 bm!45043) bm!45040))

(assert (= (or b!1065948 b!1065944) bm!45044))

(assert (= (or b!1065937 bm!45040) bm!45042))

(assert (= (or b!1065937 bm!45044) bm!45041))

(assert (= (and d!128979 res!711576) b!1065949))

(assert (= (and d!128979 c!107365) b!1065938))

(assert (= (and d!128979 (not c!107365)) b!1065946))

(assert (= (and d!128979 res!711577) b!1065940))

(assert (= (and b!1065940 res!711572) b!1065952))

(assert (= (and b!1065940 (not res!711571)) b!1065951))

(assert (= (and b!1065951 res!711573) b!1065943))

(assert (= (and b!1065940 res!711570) b!1065947))

(assert (= (and b!1065947 c!107360) b!1065932))

(assert (= (and b!1065947 (not c!107360)) b!1065941))

(assert (= (and b!1065932 res!711575) b!1065936))

(assert (= (or b!1065932 b!1065941) bm!45038))

(assert (= (and b!1065947 res!711578) b!1065939))

(assert (= (and b!1065939 c!107361) b!1065950))

(assert (= (and b!1065939 (not c!107361)) b!1065942))

(assert (= (and b!1065950 res!711574) b!1065933))

(assert (= (or b!1065950 b!1065942) bm!45039))

(declare-fun b_lambda!16569 () Bool)

(assert (=> (not b_lambda!16569) (not b!1065943)))

(assert (=> b!1065943 t!32204))

(declare-fun b_and!34417 () Bool)

(assert (= b_and!34415 (and (=> t!32204 result!14739) b_and!34417)))

(declare-fun m!984627 () Bool)

(assert (=> bm!45038 m!984627))

(declare-fun m!984629 () Bool)

(assert (=> bm!45041 m!984629))

(declare-fun m!984631 () Bool)

(assert (=> b!1065938 m!984631))

(declare-fun m!984633 () Bool)

(assert (=> b!1065938 m!984633))

(assert (=> b!1065938 m!984521))

(declare-fun m!984635 () Bool)

(assert (=> b!1065938 m!984635))

(declare-fun m!984637 () Bool)

(assert (=> b!1065938 m!984637))

(declare-fun m!984639 () Bool)

(assert (=> b!1065938 m!984639))

(declare-fun m!984641 () Bool)

(assert (=> b!1065938 m!984641))

(declare-fun m!984643 () Bool)

(assert (=> b!1065938 m!984643))

(declare-fun m!984645 () Bool)

(assert (=> b!1065938 m!984645))

(declare-fun m!984647 () Bool)

(assert (=> b!1065938 m!984647))

(declare-fun m!984649 () Bool)

(assert (=> b!1065938 m!984649))

(assert (=> b!1065938 m!984635))

(declare-fun m!984651 () Bool)

(assert (=> b!1065938 m!984651))

(declare-fun m!984653 () Bool)

(assert (=> b!1065938 m!984653))

(declare-fun m!984655 () Bool)

(assert (=> b!1065938 m!984655))

(declare-fun m!984657 () Bool)

(assert (=> b!1065938 m!984657))

(assert (=> b!1065938 m!984557))

(declare-fun m!984659 () Bool)

(assert (=> b!1065938 m!984659))

(assert (=> b!1065938 m!984651))

(assert (=> b!1065938 m!984647))

(assert (=> b!1065938 m!984641))

(assert (=> b!1065951 m!984557))

(assert (=> b!1065951 m!984557))

(declare-fun m!984661 () Bool)

(assert (=> b!1065951 m!984661))

(assert (=> d!128979 m!984497))

(declare-fun m!984663 () Bool)

(assert (=> b!1065933 m!984663))

(assert (=> b!1065949 m!984557))

(assert (=> b!1065949 m!984557))

(assert (=> b!1065949 m!984565))

(declare-fun m!984665 () Bool)

(assert (=> b!1065936 m!984665))

(assert (=> b!1065943 m!984615))

(assert (=> b!1065943 m!984617))

(assert (=> b!1065943 m!984617))

(assert (=> b!1065943 m!984615))

(assert (=> b!1065943 m!984619))

(assert (=> b!1065943 m!984557))

(declare-fun m!984667 () Bool)

(assert (=> b!1065943 m!984667))

(assert (=> b!1065943 m!984557))

(declare-fun m!984669 () Bool)

(assert (=> bm!45039 m!984669))

(declare-fun m!984671 () Bool)

(assert (=> b!1065937 m!984671))

(assert (=> b!1065952 m!984557))

(assert (=> b!1065952 m!984557))

(assert (=> b!1065952 m!984565))

(assert (=> bm!45042 m!984521))

(assert (=> b!1065807 d!128979))

(declare-fun d!128981 () Bool)

(assert (=> d!128981 (= (-!607 (+!3098 lt!470230 (tuple2!16277 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) #b0000000000000000000000000000000000000000000000000000000000000000) lt!470230)))

(declare-fun lt!470360 () Unit!34950)

(declare-fun choose!1736 (ListLongMap!14257 (_ BitVec 64) V!39059) Unit!34950)

(assert (=> d!128981 (= lt!470360 (choose!1736 lt!470230 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> d!128981 (not (contains!6286 lt!470230 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!128981 (= (addThenRemoveForNewKeyIsSame!16 lt!470230 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) lt!470360)))

(declare-fun bs!31357 () Bool)

(assert (= bs!31357 d!128981))

(assert (=> bs!31357 m!984509))

(assert (=> bs!31357 m!984509))

(declare-fun m!984673 () Bool)

(assert (=> bs!31357 m!984673))

(declare-fun m!984675 () Bool)

(assert (=> bs!31357 m!984675))

(declare-fun m!984677 () Bool)

(assert (=> bs!31357 m!984677))

(assert (=> b!1065807 d!128981))

(declare-fun d!128983 () Bool)

(declare-fun e!607814 () Bool)

(assert (=> d!128983 e!607814))

(declare-fun res!711584 () Bool)

(assert (=> d!128983 (=> (not res!711584) (not e!607814))))

(declare-fun lt!470371 () ListLongMap!14257)

(assert (=> d!128983 (= res!711584 (contains!6286 lt!470371 (_1!8148 (tuple2!16277 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun lt!470369 () List!22875)

(assert (=> d!128983 (= lt!470371 (ListLongMap!14258 lt!470369))))

(declare-fun lt!470372 () Unit!34950)

(declare-fun lt!470370 () Unit!34950)

(assert (=> d!128983 (= lt!470372 lt!470370)))

(declare-datatypes ((Option!653 0))(
  ( (Some!652 (v!15387 V!39059)) (None!651) )
))
(declare-fun getValueByKey!602 (List!22875 (_ BitVec 64)) Option!653)

(assert (=> d!128983 (= (getValueByKey!602 lt!470369 (_1!8148 (tuple2!16277 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))) (Some!652 (_2!8148 (tuple2!16277 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun lemmaContainsTupThenGetReturnValue!283 (List!22875 (_ BitVec 64) V!39059) Unit!34950)

(assert (=> d!128983 (= lt!470370 (lemmaContainsTupThenGetReturnValue!283 lt!470369 (_1!8148 (tuple2!16277 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (_2!8148 (tuple2!16277 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun insertStrictlySorted!375 (List!22875 (_ BitVec 64) V!39059) List!22875)

(assert (=> d!128983 (= lt!470369 (insertStrictlySorted!375 (toList!7144 lt!470230) (_1!8148 (tuple2!16277 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (_2!8148 (tuple2!16277 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(assert (=> d!128983 (= (+!3098 lt!470230 (tuple2!16277 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) lt!470371)))

(declare-fun b!1065957 () Bool)

(declare-fun res!711583 () Bool)

(assert (=> b!1065957 (=> (not res!711583) (not e!607814))))

(assert (=> b!1065957 (= res!711583 (= (getValueByKey!602 (toList!7144 lt!470371) (_1!8148 (tuple2!16277 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))) (Some!652 (_2!8148 (tuple2!16277 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))))

(declare-fun b!1065958 () Bool)

(declare-fun contains!6287 (List!22875 tuple2!16276) Bool)

(assert (=> b!1065958 (= e!607814 (contains!6287 (toList!7144 lt!470371) (tuple2!16277 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(assert (= (and d!128983 res!711584) b!1065957))

(assert (= (and b!1065957 res!711583) b!1065958))

(declare-fun m!984679 () Bool)

(assert (=> d!128983 m!984679))

(declare-fun m!984681 () Bool)

(assert (=> d!128983 m!984681))

(declare-fun m!984683 () Bool)

(assert (=> d!128983 m!984683))

(declare-fun m!984685 () Bool)

(assert (=> d!128983 m!984685))

(declare-fun m!984687 () Bool)

(assert (=> b!1065957 m!984687))

(declare-fun m!984689 () Bool)

(assert (=> b!1065958 m!984689))

(assert (=> b!1065807 d!128983))

(declare-fun d!128985 () Bool)

(declare-fun lt!470373 () ListLongMap!14257)

(assert (=> d!128985 (not (contains!6286 lt!470373 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!128985 (= lt!470373 (ListLongMap!14258 (removeStrictlySorted!70 (toList!7144 lt!470234) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!128985 (= (-!607 lt!470234 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470373)))

(declare-fun bs!31358 () Bool)

(assert (= bs!31358 d!128985))

(declare-fun m!984691 () Bool)

(assert (=> bs!31358 m!984691))

(declare-fun m!984693 () Bool)

(assert (=> bs!31358 m!984693))

(assert (=> b!1065807 d!128985))

(declare-fun d!128987 () Bool)

(assert (=> d!128987 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!94284 d!128987))

(declare-fun d!128989 () Bool)

(assert (=> d!128989 (= (array_inv!25098 _values!955) (bvsge (size!33159 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!94284 d!128989))

(declare-fun d!128991 () Bool)

(assert (=> d!128991 (= (array_inv!25099 _keys!1163) (bvsge (size!33158 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!94284 d!128991))

(declare-fun d!128993 () Bool)

(assert (=> d!128993 (= (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!470376 () Unit!34950)

(declare-fun choose!1737 (array!67844 array!67846 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39059 V!39059 V!39059 V!39059 (_ BitVec 32) Int) Unit!34950)

(assert (=> d!128993 (= lt!470376 (choose!1737 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!128993 (validMask!0 mask!1515)))

(assert (=> d!128993 (= (lemmaNoChangeToArrayThenSameMapNoExtras!731 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!470376)))

(declare-fun bs!31359 () Bool)

(assert (= bs!31359 d!128993))

(assert (=> bs!31359 m!984521))

(assert (=> bs!31359 m!984519))

(declare-fun m!984695 () Bool)

(assert (=> bs!31359 m!984695))

(assert (=> bs!31359 m!984497))

(assert (=> b!1065810 d!128993))

(declare-fun b!1065983 () Bool)

(declare-fun e!607831 () ListLongMap!14257)

(assert (=> b!1065983 (= e!607831 (ListLongMap!14258 Nil!22872))))

(declare-fun d!128995 () Bool)

(declare-fun e!607829 () Bool)

(assert (=> d!128995 e!607829))

(declare-fun res!711596 () Bool)

(assert (=> d!128995 (=> (not res!711596) (not e!607829))))

(declare-fun lt!470393 () ListLongMap!14257)

(assert (=> d!128995 (= res!711596 (not (contains!6286 lt!470393 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!128995 (= lt!470393 e!607831)))

(declare-fun c!107376 () Bool)

(assert (=> d!128995 (= c!107376 (bvsge #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(assert (=> d!128995 (validMask!0 mask!1515)))

(assert (=> d!128995 (= (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!470393)))

(declare-fun b!1065984 () Bool)

(declare-fun e!607833 () Bool)

(assert (=> b!1065984 (= e!607829 e!607833)))

(declare-fun c!107377 () Bool)

(declare-fun e!607832 () Bool)

(assert (=> b!1065984 (= c!107377 e!607832)))

(declare-fun res!711593 () Bool)

(assert (=> b!1065984 (=> (not res!711593) (not e!607832))))

(assert (=> b!1065984 (= res!711593 (bvslt #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(declare-fun bm!45047 () Bool)

(declare-fun call!45050 () ListLongMap!14257)

(assert (=> bm!45047 (= call!45050 (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun e!607835 () Bool)

(declare-fun b!1065985 () Bool)

(assert (=> b!1065985 (= e!607835 (= lt!470393 (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1065986 () Bool)

(declare-fun isEmpty!944 (ListLongMap!14257) Bool)

(assert (=> b!1065986 (= e!607835 (isEmpty!944 lt!470393))))

(declare-fun b!1065987 () Bool)

(assert (=> b!1065987 (= e!607832 (validKeyInArray!0 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1065987 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1065988 () Bool)

(declare-fun lt!470397 () Unit!34950)

(declare-fun lt!470396 () Unit!34950)

(assert (=> b!1065988 (= lt!470397 lt!470396)))

(declare-fun lt!470391 () ListLongMap!14257)

(declare-fun lt!470394 () V!39059)

(declare-fun lt!470395 () (_ BitVec 64))

(declare-fun lt!470392 () (_ BitVec 64))

(assert (=> b!1065988 (not (contains!6286 (+!3098 lt!470391 (tuple2!16277 lt!470395 lt!470394)) lt!470392))))

(declare-fun addStillNotContains!253 (ListLongMap!14257 (_ BitVec 64) V!39059 (_ BitVec 64)) Unit!34950)

(assert (=> b!1065988 (= lt!470396 (addStillNotContains!253 lt!470391 lt!470395 lt!470394 lt!470392))))

(assert (=> b!1065988 (= lt!470392 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1065988 (= lt!470394 (get!17040 (select (arr!32622 _values!955) #b00000000000000000000000000000000) (dynLambda!2034 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1065988 (= lt!470395 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1065988 (= lt!470391 call!45050)))

(declare-fun e!607830 () ListLongMap!14257)

(assert (=> b!1065988 (= e!607830 (+!3098 call!45050 (tuple2!16277 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000) (get!17040 (select (arr!32622 _values!955) #b00000000000000000000000000000000) (dynLambda!2034 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1065989 () Bool)

(assert (=> b!1065989 (= e!607833 e!607835)))

(declare-fun c!107374 () Bool)

(assert (=> b!1065989 (= c!107374 (bvslt #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(declare-fun b!1065990 () Bool)

(declare-fun e!607834 () Bool)

(assert (=> b!1065990 (= e!607833 e!607834)))

(assert (=> b!1065990 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(declare-fun res!711595 () Bool)

(assert (=> b!1065990 (= res!711595 (contains!6286 lt!470393 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1065990 (=> (not res!711595) (not e!607834))))

(declare-fun b!1065991 () Bool)

(assert (=> b!1065991 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(assert (=> b!1065991 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33159 _values!955)))))

(assert (=> b!1065991 (= e!607834 (= (apply!958 lt!470393 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)) (get!17040 (select (arr!32622 _values!955) #b00000000000000000000000000000000) (dynLambda!2034 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1065992 () Bool)

(assert (=> b!1065992 (= e!607830 call!45050)))

(declare-fun b!1065993 () Bool)

(assert (=> b!1065993 (= e!607831 e!607830)))

(declare-fun c!107375 () Bool)

(assert (=> b!1065993 (= c!107375 (validKeyInArray!0 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1065994 () Bool)

(declare-fun res!711594 () Bool)

(assert (=> b!1065994 (=> (not res!711594) (not e!607829))))

(assert (=> b!1065994 (= res!711594 (not (contains!6286 lt!470393 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!128995 c!107376) b!1065983))

(assert (= (and d!128995 (not c!107376)) b!1065993))

(assert (= (and b!1065993 c!107375) b!1065988))

(assert (= (and b!1065993 (not c!107375)) b!1065992))

(assert (= (or b!1065988 b!1065992) bm!45047))

(assert (= (and d!128995 res!711596) b!1065994))

(assert (= (and b!1065994 res!711594) b!1065984))

(assert (= (and b!1065984 res!711593) b!1065987))

(assert (= (and b!1065984 c!107377) b!1065990))

(assert (= (and b!1065984 (not c!107377)) b!1065989))

(assert (= (and b!1065990 res!711595) b!1065991))

(assert (= (and b!1065989 c!107374) b!1065985))

(assert (= (and b!1065989 (not c!107374)) b!1065986))

(declare-fun b_lambda!16571 () Bool)

(assert (=> (not b_lambda!16571) (not b!1065988)))

(assert (=> b!1065988 t!32204))

(declare-fun b_and!34419 () Bool)

(assert (= b_and!34417 (and (=> t!32204 result!14739) b_and!34419)))

(declare-fun b_lambda!16573 () Bool)

(assert (=> (not b_lambda!16573) (not b!1065991)))

(assert (=> b!1065991 t!32204))

(declare-fun b_and!34421 () Bool)

(assert (= b_and!34419 (and (=> t!32204 result!14739) b_and!34421)))

(assert (=> b!1065990 m!984557))

(assert (=> b!1065990 m!984557))

(declare-fun m!984697 () Bool)

(assert (=> b!1065990 m!984697))

(declare-fun m!984699 () Bool)

(assert (=> b!1065985 m!984699))

(declare-fun m!984701 () Bool)

(assert (=> b!1065994 m!984701))

(assert (=> b!1065988 m!984617))

(assert (=> b!1065988 m!984617))

(assert (=> b!1065988 m!984615))

(assert (=> b!1065988 m!984619))

(assert (=> b!1065988 m!984557))

(declare-fun m!984703 () Bool)

(assert (=> b!1065988 m!984703))

(declare-fun m!984705 () Bool)

(assert (=> b!1065988 m!984705))

(assert (=> b!1065988 m!984615))

(declare-fun m!984707 () Bool)

(assert (=> b!1065988 m!984707))

(declare-fun m!984709 () Bool)

(assert (=> b!1065988 m!984709))

(assert (=> b!1065988 m!984707))

(assert (=> b!1065987 m!984557))

(assert (=> b!1065987 m!984557))

(assert (=> b!1065987 m!984565))

(assert (=> bm!45047 m!984699))

(assert (=> b!1065991 m!984617))

(assert (=> b!1065991 m!984615))

(assert (=> b!1065991 m!984619))

(assert (=> b!1065991 m!984557))

(assert (=> b!1065991 m!984615))

(assert (=> b!1065991 m!984617))

(assert (=> b!1065991 m!984557))

(declare-fun m!984711 () Bool)

(assert (=> b!1065991 m!984711))

(assert (=> b!1065993 m!984557))

(assert (=> b!1065993 m!984557))

(assert (=> b!1065993 m!984565))

(declare-fun m!984713 () Bool)

(assert (=> d!128995 m!984713))

(assert (=> d!128995 m!984497))

(declare-fun m!984715 () Bool)

(assert (=> b!1065986 m!984715))

(assert (=> b!1065810 d!128995))

(declare-fun b!1065995 () Bool)

(declare-fun e!607838 () ListLongMap!14257)

(assert (=> b!1065995 (= e!607838 (ListLongMap!14258 Nil!22872))))

(declare-fun d!128997 () Bool)

(declare-fun e!607836 () Bool)

(assert (=> d!128997 e!607836))

(declare-fun res!711600 () Bool)

(assert (=> d!128997 (=> (not res!711600) (not e!607836))))

(declare-fun lt!470400 () ListLongMap!14257)

(assert (=> d!128997 (= res!711600 (not (contains!6286 lt!470400 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!128997 (= lt!470400 e!607838)))

(declare-fun c!107380 () Bool)

(assert (=> d!128997 (= c!107380 (bvsge #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(assert (=> d!128997 (validMask!0 mask!1515)))

(assert (=> d!128997 (= (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!470400)))

(declare-fun b!1065996 () Bool)

(declare-fun e!607840 () Bool)

(assert (=> b!1065996 (= e!607836 e!607840)))

(declare-fun c!107381 () Bool)

(declare-fun e!607839 () Bool)

(assert (=> b!1065996 (= c!107381 e!607839)))

(declare-fun res!711597 () Bool)

(assert (=> b!1065996 (=> (not res!711597) (not e!607839))))

(assert (=> b!1065996 (= res!711597 (bvslt #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(declare-fun call!45051 () ListLongMap!14257)

(declare-fun bm!45048 () Bool)

(assert (=> bm!45048 (= call!45051 (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun e!607842 () Bool)

(declare-fun b!1065997 () Bool)

(assert (=> b!1065997 (= e!607842 (= lt!470400 (getCurrentListMapNoExtraKeys!3692 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1065998 () Bool)

(assert (=> b!1065998 (= e!607842 (isEmpty!944 lt!470400))))

(declare-fun b!1065999 () Bool)

(assert (=> b!1065999 (= e!607839 (validKeyInArray!0 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1065999 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1066000 () Bool)

(declare-fun lt!470404 () Unit!34950)

(declare-fun lt!470403 () Unit!34950)

(assert (=> b!1066000 (= lt!470404 lt!470403)))

(declare-fun lt!470398 () ListLongMap!14257)

(declare-fun lt!470401 () V!39059)

(declare-fun lt!470399 () (_ BitVec 64))

(declare-fun lt!470402 () (_ BitVec 64))

(assert (=> b!1066000 (not (contains!6286 (+!3098 lt!470398 (tuple2!16277 lt!470402 lt!470401)) lt!470399))))

(assert (=> b!1066000 (= lt!470403 (addStillNotContains!253 lt!470398 lt!470402 lt!470401 lt!470399))))

(assert (=> b!1066000 (= lt!470399 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1066000 (= lt!470401 (get!17040 (select (arr!32622 _values!955) #b00000000000000000000000000000000) (dynLambda!2034 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1066000 (= lt!470402 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1066000 (= lt!470398 call!45051)))

(declare-fun e!607837 () ListLongMap!14257)

(assert (=> b!1066000 (= e!607837 (+!3098 call!45051 (tuple2!16277 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000) (get!17040 (select (arr!32622 _values!955) #b00000000000000000000000000000000) (dynLambda!2034 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1066001 () Bool)

(assert (=> b!1066001 (= e!607840 e!607842)))

(declare-fun c!107378 () Bool)

(assert (=> b!1066001 (= c!107378 (bvslt #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(declare-fun b!1066002 () Bool)

(declare-fun e!607841 () Bool)

(assert (=> b!1066002 (= e!607840 e!607841)))

(assert (=> b!1066002 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(declare-fun res!711599 () Bool)

(assert (=> b!1066002 (= res!711599 (contains!6286 lt!470400 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1066002 (=> (not res!711599) (not e!607841))))

(declare-fun b!1066003 () Bool)

(assert (=> b!1066003 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33158 _keys!1163)))))

(assert (=> b!1066003 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33159 _values!955)))))

(assert (=> b!1066003 (= e!607841 (= (apply!958 lt!470400 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)) (get!17040 (select (arr!32622 _values!955) #b00000000000000000000000000000000) (dynLambda!2034 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1066004 () Bool)

(assert (=> b!1066004 (= e!607837 call!45051)))

(declare-fun b!1066005 () Bool)

(assert (=> b!1066005 (= e!607838 e!607837)))

(declare-fun c!107379 () Bool)

(assert (=> b!1066005 (= c!107379 (validKeyInArray!0 (select (arr!32621 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1066006 () Bool)

(declare-fun res!711598 () Bool)

(assert (=> b!1066006 (=> (not res!711598) (not e!607836))))

(assert (=> b!1066006 (= res!711598 (not (contains!6286 lt!470400 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!128997 c!107380) b!1065995))

(assert (= (and d!128997 (not c!107380)) b!1066005))

(assert (= (and b!1066005 c!107379) b!1066000))

(assert (= (and b!1066005 (not c!107379)) b!1066004))

(assert (= (or b!1066000 b!1066004) bm!45048))

(assert (= (and d!128997 res!711600) b!1066006))

(assert (= (and b!1066006 res!711598) b!1065996))

(assert (= (and b!1065996 res!711597) b!1065999))

(assert (= (and b!1065996 c!107381) b!1066002))

(assert (= (and b!1065996 (not c!107381)) b!1066001))

(assert (= (and b!1066002 res!711599) b!1066003))

(assert (= (and b!1066001 c!107378) b!1065997))

(assert (= (and b!1066001 (not c!107378)) b!1065998))

(declare-fun b_lambda!16575 () Bool)

(assert (=> (not b_lambda!16575) (not b!1066000)))

(assert (=> b!1066000 t!32204))

(declare-fun b_and!34423 () Bool)

(assert (= b_and!34421 (and (=> t!32204 result!14739) b_and!34423)))

(declare-fun b_lambda!16577 () Bool)

(assert (=> (not b_lambda!16577) (not b!1066003)))

(assert (=> b!1066003 t!32204))

(declare-fun b_and!34425 () Bool)

(assert (= b_and!34423 (and (=> t!32204 result!14739) b_and!34425)))

(assert (=> b!1066002 m!984557))

(assert (=> b!1066002 m!984557))

(declare-fun m!984717 () Bool)

(assert (=> b!1066002 m!984717))

(declare-fun m!984719 () Bool)

(assert (=> b!1065997 m!984719))

(declare-fun m!984721 () Bool)

(assert (=> b!1066006 m!984721))

(assert (=> b!1066000 m!984617))

(assert (=> b!1066000 m!984617))

(assert (=> b!1066000 m!984615))

(assert (=> b!1066000 m!984619))

(assert (=> b!1066000 m!984557))

(declare-fun m!984723 () Bool)

(assert (=> b!1066000 m!984723))

(declare-fun m!984725 () Bool)

(assert (=> b!1066000 m!984725))

(assert (=> b!1066000 m!984615))

(declare-fun m!984727 () Bool)

(assert (=> b!1066000 m!984727))

(declare-fun m!984729 () Bool)

(assert (=> b!1066000 m!984729))

(assert (=> b!1066000 m!984727))

(assert (=> b!1065999 m!984557))

(assert (=> b!1065999 m!984557))

(assert (=> b!1065999 m!984565))

(assert (=> bm!45048 m!984719))

(assert (=> b!1066003 m!984617))

(assert (=> b!1066003 m!984615))

(assert (=> b!1066003 m!984619))

(assert (=> b!1066003 m!984557))

(assert (=> b!1066003 m!984615))

(assert (=> b!1066003 m!984617))

(assert (=> b!1066003 m!984557))

(declare-fun m!984731 () Bool)

(assert (=> b!1066003 m!984731))

(assert (=> b!1066005 m!984557))

(assert (=> b!1066005 m!984557))

(assert (=> b!1066005 m!984565))

(declare-fun m!984733 () Bool)

(assert (=> d!128997 m!984733))

(assert (=> d!128997 m!984497))

(declare-fun m!984735 () Bool)

(assert (=> b!1065998 m!984735))

(assert (=> b!1065810 d!128997))

(declare-fun mapIsEmpty!39856 () Bool)

(declare-fun mapRes!39856 () Bool)

(assert (=> mapIsEmpty!39856 mapRes!39856))

(declare-fun b!1066013 () Bool)

(declare-fun e!607847 () Bool)

(assert (=> b!1066013 (= e!607847 tp_is_empty!25443)))

(declare-fun condMapEmpty!39856 () Bool)

(declare-fun mapDefault!39856 () ValueCell!12018)

(assert (=> mapNonEmpty!39850 (= condMapEmpty!39856 (= mapRest!39850 ((as const (Array (_ BitVec 32) ValueCell!12018)) mapDefault!39856)))))

(declare-fun e!607848 () Bool)

(assert (=> mapNonEmpty!39850 (= tp!76338 (and e!607848 mapRes!39856))))

(declare-fun mapNonEmpty!39856 () Bool)

(declare-fun tp!76347 () Bool)

(assert (=> mapNonEmpty!39856 (= mapRes!39856 (and tp!76347 e!607847))))

(declare-fun mapValue!39856 () ValueCell!12018)

(declare-fun mapRest!39856 () (Array (_ BitVec 32) ValueCell!12018))

(declare-fun mapKey!39856 () (_ BitVec 32))

(assert (=> mapNonEmpty!39856 (= mapRest!39850 (store mapRest!39856 mapKey!39856 mapValue!39856))))

(declare-fun b!1066014 () Bool)

(assert (=> b!1066014 (= e!607848 tp_is_empty!25443)))

(assert (= (and mapNonEmpty!39850 condMapEmpty!39856) mapIsEmpty!39856))

(assert (= (and mapNonEmpty!39850 (not condMapEmpty!39856)) mapNonEmpty!39856))

(assert (= (and mapNonEmpty!39856 ((_ is ValueCellFull!12018) mapValue!39856)) b!1066013))

(assert (= (and mapNonEmpty!39850 ((_ is ValueCellFull!12018) mapDefault!39856)) b!1066014))

(declare-fun m!984737 () Bool)

(assert (=> mapNonEmpty!39856 m!984737))

(declare-fun b_lambda!16579 () Bool)

(assert (= b_lambda!16575 (or (and start!94284 b_free!21633) b_lambda!16579)))

(declare-fun b_lambda!16581 () Bool)

(assert (= b_lambda!16567 (or (and start!94284 b_free!21633) b_lambda!16581)))

(declare-fun b_lambda!16583 () Bool)

(assert (= b_lambda!16569 (or (and start!94284 b_free!21633) b_lambda!16583)))

(declare-fun b_lambda!16585 () Bool)

(assert (= b_lambda!16571 (or (and start!94284 b_free!21633) b_lambda!16585)))

(declare-fun b_lambda!16587 () Bool)

(assert (= b_lambda!16577 (or (and start!94284 b_free!21633) b_lambda!16587)))

(declare-fun b_lambda!16589 () Bool)

(assert (= b_lambda!16573 (or (and start!94284 b_free!21633) b_lambda!16589)))

(check-sat (not b_lambda!16579) b_and!34425 (not b!1065999) (not b!1065863) (not d!128977) (not b!1065988) (not b!1066000) (not bm!45013) (not b!1065943) (not b!1066002) (not b_lambda!16587) (not b!1065957) (not b!1065985) (not d!128997) (not d!128985) (not b!1065933) (not mapNonEmpty!39856) (not bm!45048) (not b!1065998) (not b!1065938) (not b!1065928) (not bm!45016) (not d!128975) (not b!1066006) (not b!1065952) (not b!1065990) (not d!128983) (not b!1065951) (not b!1065864) (not d!128993) (not b_lambda!16589) (not b!1065866) (not b!1065926) (not b!1065991) (not bm!45032) (not bm!45035) (not b!1065920) (not b_lambda!16585) (not b!1065936) (not bm!45034) (not b_lambda!16583) (not d!128979) (not b!1065997) (not b!1065929) (not b!1065937) (not bm!45042) (not bm!45041) (not d!128995) (not b!1065994) (not bm!45038) (not b!1065913) (not bm!45031) (not d!128981) (not b!1065993) (not b!1065958) (not bm!45039) (not b!1065949) (not b!1065915) (not b!1065910) (not b!1065914) tp_is_empty!25443 (not bm!45047) (not b!1065851) (not b!1065850) (not b!1066005) (not b!1066003) (not b_lambda!16581) (not b_next!21633) (not b!1065986) (not b!1065987))
(check-sat b_and!34425 (not b_next!21633))
