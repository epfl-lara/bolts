; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93782 () Bool)

(assert start!93782)

(declare-fun b_free!21231 () Bool)

(declare-fun b_next!21231 () Bool)

(assert (=> start!93782 (= b_free!21231 (not b_next!21231))))

(declare-fun tp!75114 () Bool)

(declare-fun b_and!33959 () Bool)

(assert (=> start!93782 (= tp!75114 b_and!33959)))

(declare-fun b!1060364 () Bool)

(declare-fun e!603730 () Bool)

(declare-datatypes ((array!67078 0))(
  ( (array!67079 (arr!32244 (Array (_ BitVec 32) (_ BitVec 64))) (size!32781 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67078)

(assert (=> b!1060364 (= e!603730 (bvsgt #b00000000000000000000000000000000 (size!32781 _keys!1163)))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38523 0))(
  ( (V!38524 (val!12571 Int)) )
))
(declare-fun zeroValueBefore!47 () V!38523)

(declare-datatypes ((tuple2!15982 0))(
  ( (tuple2!15983 (_1!8001 (_ BitVec 64)) (_2!8001 V!38523)) )
))
(declare-datatypes ((List!22594 0))(
  ( (Nil!22591) (Cons!22590 (h!23799 tuple2!15982) (t!31908 List!22594)) )
))
(declare-datatypes ((ListLongMap!13963 0))(
  ( (ListLongMap!13964 (toList!6997 List!22594)) )
))
(declare-fun lt!467243 () ListLongMap!13963)

(declare-datatypes ((ValueCell!11817 0))(
  ( (ValueCellFull!11817 (v!15182 V!38523)) (EmptyCell!11817) )
))
(declare-datatypes ((array!67080 0))(
  ( (array!67081 (arr!32245 (Array (_ BitVec 32) ValueCell!11817)) (size!32782 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67080)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38523)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3561 (array!67078 array!67080 (_ BitVec 32) (_ BitVec 32) V!38523 V!38523 (_ BitVec 32) Int) ListLongMap!13963)

(assert (=> b!1060364 (= lt!467243 (getCurrentListMapNoExtraKeys!3561 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39229 () Bool)

(declare-fun mapRes!39229 () Bool)

(assert (=> mapIsEmpty!39229 mapRes!39229))

(declare-fun b!1060365 () Bool)

(declare-fun res!708311 () Bool)

(assert (=> b!1060365 (=> (not res!708311) (not e!603730))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1060365 (= res!708311 (and (= (size!32782 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32781 _keys!1163) (size!32782 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1060366 () Bool)

(declare-fun e!603732 () Bool)

(declare-fun e!603731 () Bool)

(assert (=> b!1060366 (= e!603732 (and e!603731 mapRes!39229))))

(declare-fun condMapEmpty!39229 () Bool)

(declare-fun mapDefault!39229 () ValueCell!11817)

(assert (=> b!1060366 (= condMapEmpty!39229 (= (arr!32245 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11817)) mapDefault!39229)))))

(declare-fun b!1060367 () Bool)

(declare-fun e!603734 () Bool)

(declare-fun tp_is_empty!25041 () Bool)

(assert (=> b!1060367 (= e!603734 tp_is_empty!25041)))

(declare-fun b!1060368 () Bool)

(assert (=> b!1060368 (= e!603731 tp_is_empty!25041)))

(declare-fun b!1060369 () Bool)

(declare-fun res!708312 () Bool)

(assert (=> b!1060369 (=> (not res!708312) (not e!603730))))

(declare-datatypes ((List!22595 0))(
  ( (Nil!22592) (Cons!22591 (h!23800 (_ BitVec 64)) (t!31909 List!22595)) )
))
(declare-fun arrayNoDuplicates!0 (array!67078 (_ BitVec 32) List!22595) Bool)

(assert (=> b!1060369 (= res!708312 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22592))))

(declare-fun b!1060370 () Bool)

(declare-fun res!708309 () Bool)

(assert (=> b!1060370 (=> (not res!708309) (not e!603730))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67078 (_ BitVec 32)) Bool)

(assert (=> b!1060370 (= res!708309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!708310 () Bool)

(assert (=> start!93782 (=> (not res!708310) (not e!603730))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93782 (= res!708310 (validMask!0 mask!1515))))

(assert (=> start!93782 e!603730))

(assert (=> start!93782 true))

(assert (=> start!93782 tp_is_empty!25041))

(declare-fun array_inv!24834 (array!67080) Bool)

(assert (=> start!93782 (and (array_inv!24834 _values!955) e!603732)))

(assert (=> start!93782 tp!75114))

(declare-fun array_inv!24835 (array!67078) Bool)

(assert (=> start!93782 (array_inv!24835 _keys!1163)))

(declare-fun mapNonEmpty!39229 () Bool)

(declare-fun tp!75113 () Bool)

(assert (=> mapNonEmpty!39229 (= mapRes!39229 (and tp!75113 e!603734))))

(declare-fun mapValue!39229 () ValueCell!11817)

(declare-fun mapKey!39229 () (_ BitVec 32))

(declare-fun mapRest!39229 () (Array (_ BitVec 32) ValueCell!11817))

(assert (=> mapNonEmpty!39229 (= (arr!32245 _values!955) (store mapRest!39229 mapKey!39229 mapValue!39229))))

(assert (= (and start!93782 res!708310) b!1060365))

(assert (= (and b!1060365 res!708311) b!1060370))

(assert (= (and b!1060370 res!708309) b!1060369))

(assert (= (and b!1060369 res!708312) b!1060364))

(assert (= (and b!1060366 condMapEmpty!39229) mapIsEmpty!39229))

(assert (= (and b!1060366 (not condMapEmpty!39229)) mapNonEmpty!39229))

(get-info :version)

(assert (= (and mapNonEmpty!39229 ((_ is ValueCellFull!11817) mapValue!39229)) b!1060367))

(assert (= (and b!1060366 ((_ is ValueCellFull!11817) mapDefault!39229)) b!1060368))

(assert (= start!93782 b!1060366))

(declare-fun m!979589 () Bool)

(assert (=> b!1060364 m!979589))

(declare-fun m!979591 () Bool)

(assert (=> start!93782 m!979591))

(declare-fun m!979593 () Bool)

(assert (=> start!93782 m!979593))

(declare-fun m!979595 () Bool)

(assert (=> start!93782 m!979595))

(declare-fun m!979597 () Bool)

(assert (=> mapNonEmpty!39229 m!979597))

(declare-fun m!979599 () Bool)

(assert (=> b!1060370 m!979599))

(declare-fun m!979601 () Bool)

(assert (=> b!1060369 m!979601))

(check-sat (not b_next!21231) (not b!1060370) (not start!93782) (not b!1060364) b_and!33959 tp_is_empty!25041 (not b!1060369) (not mapNonEmpty!39229))
(check-sat b_and!33959 (not b_next!21231))
(get-model)

(declare-fun b!1060416 () Bool)

(declare-fun e!603767 () Bool)

(declare-fun e!603766 () Bool)

(assert (=> b!1060416 (= e!603767 e!603766)))

(declare-fun c!107157 () Bool)

(assert (=> b!1060416 (= c!107157 (bvslt #b00000000000000000000000000000000 (size!32781 _keys!1163)))))

(declare-fun b!1060417 () Bool)

(declare-fun e!603769 () ListLongMap!13963)

(assert (=> b!1060417 (= e!603769 (ListLongMap!13964 Nil!22591))))

(declare-fun b!1060418 () Bool)

(declare-fun e!603764 () ListLongMap!13963)

(declare-fun call!44894 () ListLongMap!13963)

(assert (=> b!1060418 (= e!603764 call!44894)))

(declare-fun b!1060419 () Bool)

(declare-fun e!603768 () Bool)

(assert (=> b!1060419 (= e!603768 e!603767)))

(declare-fun c!107158 () Bool)

(declare-fun e!603765 () Bool)

(assert (=> b!1060419 (= c!107158 e!603765)))

(declare-fun res!708333 () Bool)

(assert (=> b!1060419 (=> (not res!708333) (not e!603765))))

(assert (=> b!1060419 (= res!708333 (bvslt #b00000000000000000000000000000000 (size!32781 _keys!1163)))))

(declare-fun b!1060420 () Bool)

(declare-fun res!708336 () Bool)

(assert (=> b!1060420 (=> (not res!708336) (not e!603768))))

(declare-fun lt!467266 () ListLongMap!13963)

(declare-fun contains!6230 (ListLongMap!13963 (_ BitVec 64)) Bool)

(assert (=> b!1060420 (= res!708336 (not (contains!6230 lt!467266 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!44891 () Bool)

(assert (=> bm!44891 (= call!44894 (getCurrentListMapNoExtraKeys!3561 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1060421 () Bool)

(assert (=> b!1060421 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32781 _keys!1163)))))

(assert (=> b!1060421 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32782 _values!955)))))

(declare-fun e!603770 () Bool)

(declare-fun apply!952 (ListLongMap!13963 (_ BitVec 64)) V!38523)

(declare-fun get!16900 (ValueCell!11817 V!38523) V!38523)

(declare-fun dynLambda!2028 (Int (_ BitVec 64)) V!38523)

(assert (=> b!1060421 (= e!603770 (= (apply!952 lt!467266 (select (arr!32244 _keys!1163) #b00000000000000000000000000000000)) (get!16900 (select (arr!32245 _values!955) #b00000000000000000000000000000000) (dynLambda!2028 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1060422 () Bool)

(assert (=> b!1060422 (= e!603769 e!603764)))

(declare-fun c!107159 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1060422 (= c!107159 (validKeyInArray!0 (select (arr!32244 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!128727 () Bool)

(assert (=> d!128727 e!603768))

(declare-fun res!708335 () Bool)

(assert (=> d!128727 (=> (not res!708335) (not e!603768))))

(assert (=> d!128727 (= res!708335 (not (contains!6230 lt!467266 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!128727 (= lt!467266 e!603769)))

(declare-fun c!107156 () Bool)

(assert (=> d!128727 (= c!107156 (bvsge #b00000000000000000000000000000000 (size!32781 _keys!1163)))))

(assert (=> d!128727 (validMask!0 mask!1515)))

(assert (=> d!128727 (= (getCurrentListMapNoExtraKeys!3561 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!467266)))

(declare-fun b!1060423 () Bool)

(assert (=> b!1060423 (= e!603765 (validKeyInArray!0 (select (arr!32244 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1060423 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1060424 () Bool)

(assert (=> b!1060424 (= e!603767 e!603770)))

(assert (=> b!1060424 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32781 _keys!1163)))))

(declare-fun res!708334 () Bool)

(assert (=> b!1060424 (= res!708334 (contains!6230 lt!467266 (select (arr!32244 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1060424 (=> (not res!708334) (not e!603770))))

(declare-fun b!1060425 () Bool)

(assert (=> b!1060425 (= e!603766 (= lt!467266 (getCurrentListMapNoExtraKeys!3561 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1060426 () Bool)

(declare-datatypes ((Unit!34713 0))(
  ( (Unit!34714) )
))
(declare-fun lt!467261 () Unit!34713)

(declare-fun lt!467262 () Unit!34713)

(assert (=> b!1060426 (= lt!467261 lt!467262)))

(declare-fun lt!467265 () (_ BitVec 64))

(declare-fun lt!467264 () (_ BitVec 64))

(declare-fun lt!467267 () V!38523)

(declare-fun lt!467263 () ListLongMap!13963)

(declare-fun +!3075 (ListLongMap!13963 tuple2!15982) ListLongMap!13963)

(assert (=> b!1060426 (not (contains!6230 (+!3075 lt!467263 (tuple2!15983 lt!467265 lt!467267)) lt!467264))))

(declare-fun addStillNotContains!247 (ListLongMap!13963 (_ BitVec 64) V!38523 (_ BitVec 64)) Unit!34713)

(assert (=> b!1060426 (= lt!467262 (addStillNotContains!247 lt!467263 lt!467265 lt!467267 lt!467264))))

(assert (=> b!1060426 (= lt!467264 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1060426 (= lt!467267 (get!16900 (select (arr!32245 _values!955) #b00000000000000000000000000000000) (dynLambda!2028 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1060426 (= lt!467265 (select (arr!32244 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1060426 (= lt!467263 call!44894)))

(assert (=> b!1060426 (= e!603764 (+!3075 call!44894 (tuple2!15983 (select (arr!32244 _keys!1163) #b00000000000000000000000000000000) (get!16900 (select (arr!32245 _values!955) #b00000000000000000000000000000000) (dynLambda!2028 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1060427 () Bool)

(declare-fun isEmpty!938 (ListLongMap!13963) Bool)

(assert (=> b!1060427 (= e!603766 (isEmpty!938 lt!467266))))

(assert (= (and d!128727 c!107156) b!1060417))

(assert (= (and d!128727 (not c!107156)) b!1060422))

(assert (= (and b!1060422 c!107159) b!1060426))

(assert (= (and b!1060422 (not c!107159)) b!1060418))

(assert (= (or b!1060426 b!1060418) bm!44891))

(assert (= (and d!128727 res!708335) b!1060420))

(assert (= (and b!1060420 res!708336) b!1060419))

(assert (= (and b!1060419 res!708333) b!1060423))

(assert (= (and b!1060419 c!107158) b!1060424))

(assert (= (and b!1060419 (not c!107158)) b!1060416))

(assert (= (and b!1060424 res!708334) b!1060421))

(assert (= (and b!1060416 c!107157) b!1060425))

(assert (= (and b!1060416 (not c!107157)) b!1060427))

(declare-fun b_lambda!16467 () Bool)

(assert (=> (not b_lambda!16467) (not b!1060421)))

(declare-fun t!31911 () Bool)

(declare-fun tb!7137 () Bool)

(assert (=> (and start!93782 (= defaultEntry!963 defaultEntry!963) t!31911) tb!7137))

(declare-fun result!14703 () Bool)

(assert (=> tb!7137 (= result!14703 tp_is_empty!25041)))

(assert (=> b!1060421 t!31911))

(declare-fun b_and!33963 () Bool)

(assert (= b_and!33959 (and (=> t!31911 result!14703) b_and!33963)))

(declare-fun b_lambda!16469 () Bool)

(assert (=> (not b_lambda!16469) (not b!1060426)))

(assert (=> b!1060426 t!31911))

(declare-fun b_and!33965 () Bool)

(assert (= b_and!33963 (and (=> t!31911 result!14703) b_and!33965)))

(declare-fun m!979617 () Bool)

(assert (=> b!1060420 m!979617))

(declare-fun m!979619 () Bool)

(assert (=> bm!44891 m!979619))

(declare-fun m!979621 () Bool)

(assert (=> b!1060426 m!979621))

(declare-fun m!979623 () Bool)

(assert (=> b!1060426 m!979623))

(declare-fun m!979625 () Bool)

(assert (=> b!1060426 m!979625))

(assert (=> b!1060426 m!979623))

(declare-fun m!979627 () Bool)

(assert (=> b!1060426 m!979627))

(declare-fun m!979629 () Bool)

(assert (=> b!1060426 m!979629))

(declare-fun m!979631 () Bool)

(assert (=> b!1060426 m!979631))

(declare-fun m!979633 () Bool)

(assert (=> b!1060426 m!979633))

(assert (=> b!1060426 m!979621))

(declare-fun m!979635 () Bool)

(assert (=> b!1060426 m!979635))

(assert (=> b!1060426 m!979627))

(assert (=> b!1060424 m!979631))

(assert (=> b!1060424 m!979631))

(declare-fun m!979637 () Bool)

(assert (=> b!1060424 m!979637))

(assert (=> b!1060421 m!979621))

(assert (=> b!1060421 m!979623))

(assert (=> b!1060421 m!979625))

(assert (=> b!1060421 m!979623))

(assert (=> b!1060421 m!979631))

(assert (=> b!1060421 m!979621))

(assert (=> b!1060421 m!979631))

(declare-fun m!979639 () Bool)

(assert (=> b!1060421 m!979639))

(declare-fun m!979641 () Bool)

(assert (=> b!1060427 m!979641))

(declare-fun m!979643 () Bool)

(assert (=> d!128727 m!979643))

(assert (=> d!128727 m!979591))

(assert (=> b!1060422 m!979631))

(assert (=> b!1060422 m!979631))

(declare-fun m!979645 () Bool)

(assert (=> b!1060422 m!979645))

(assert (=> b!1060423 m!979631))

(assert (=> b!1060423 m!979631))

(assert (=> b!1060423 m!979645))

(assert (=> b!1060425 m!979619))

(assert (=> b!1060364 d!128727))

(declare-fun d!128729 () Bool)

(declare-fun res!708342 () Bool)

(declare-fun e!603779 () Bool)

(assert (=> d!128729 (=> res!708342 e!603779)))

(assert (=> d!128729 (= res!708342 (bvsge #b00000000000000000000000000000000 (size!32781 _keys!1163)))))

(assert (=> d!128729 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!603779)))

(declare-fun b!1060438 () Bool)

(declare-fun e!603778 () Bool)

(declare-fun e!603777 () Bool)

(assert (=> b!1060438 (= e!603778 e!603777)))

(declare-fun lt!467276 () (_ BitVec 64))

(assert (=> b!1060438 (= lt!467276 (select (arr!32244 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!467275 () Unit!34713)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!67078 (_ BitVec 64) (_ BitVec 32)) Unit!34713)

(assert (=> b!1060438 (= lt!467275 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!467276 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!67078 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1060438 (arrayContainsKey!0 _keys!1163 lt!467276 #b00000000000000000000000000000000)))

(declare-fun lt!467274 () Unit!34713)

(assert (=> b!1060438 (= lt!467274 lt!467275)))

(declare-fun res!708341 () Bool)

(declare-datatypes ((SeekEntryResult!9867 0))(
  ( (MissingZero!9867 (index!41838 (_ BitVec 32))) (Found!9867 (index!41839 (_ BitVec 32))) (Intermediate!9867 (undefined!10679 Bool) (index!41840 (_ BitVec 32)) (x!94806 (_ BitVec 32))) (Undefined!9867) (MissingVacant!9867 (index!41841 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!67078 (_ BitVec 32)) SeekEntryResult!9867)

(assert (=> b!1060438 (= res!708341 (= (seekEntryOrOpen!0 (select (arr!32244 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9867 #b00000000000000000000000000000000)))))

(assert (=> b!1060438 (=> (not res!708341) (not e!603777))))

(declare-fun b!1060439 () Bool)

(assert (=> b!1060439 (= e!603779 e!603778)))

(declare-fun c!107162 () Bool)

(assert (=> b!1060439 (= c!107162 (validKeyInArray!0 (select (arr!32244 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!44894 () Bool)

(declare-fun call!44897 () Bool)

(assert (=> bm!44894 (= call!44897 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1060440 () Bool)

(assert (=> b!1060440 (= e!603777 call!44897)))

(declare-fun b!1060441 () Bool)

(assert (=> b!1060441 (= e!603778 call!44897)))

(assert (= (and d!128729 (not res!708342)) b!1060439))

(assert (= (and b!1060439 c!107162) b!1060438))

(assert (= (and b!1060439 (not c!107162)) b!1060441))

(assert (= (and b!1060438 res!708341) b!1060440))

(assert (= (or b!1060440 b!1060441) bm!44894))

(assert (=> b!1060438 m!979631))

(declare-fun m!979647 () Bool)

(assert (=> b!1060438 m!979647))

(declare-fun m!979649 () Bool)

(assert (=> b!1060438 m!979649))

(assert (=> b!1060438 m!979631))

(declare-fun m!979651 () Bool)

(assert (=> b!1060438 m!979651))

(assert (=> b!1060439 m!979631))

(assert (=> b!1060439 m!979631))

(assert (=> b!1060439 m!979645))

(declare-fun m!979653 () Bool)

(assert (=> bm!44894 m!979653))

(assert (=> b!1060370 d!128729))

(declare-fun d!128731 () Bool)

(assert (=> d!128731 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!93782 d!128731))

(declare-fun d!128733 () Bool)

(assert (=> d!128733 (= (array_inv!24834 _values!955) (bvsge (size!32782 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!93782 d!128733))

(declare-fun d!128735 () Bool)

(assert (=> d!128735 (= (array_inv!24835 _keys!1163) (bvsge (size!32781 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!93782 d!128735))

(declare-fun b!1060452 () Bool)

(declare-fun e!603789 () Bool)

(declare-fun call!44900 () Bool)

(assert (=> b!1060452 (= e!603789 call!44900)))

(declare-fun b!1060453 () Bool)

(declare-fun e!603791 () Bool)

(assert (=> b!1060453 (= e!603791 e!603789)))

(declare-fun c!107165 () Bool)

(assert (=> b!1060453 (= c!107165 (validKeyInArray!0 (select (arr!32244 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1060454 () Bool)

(declare-fun e!603790 () Bool)

(assert (=> b!1060454 (= e!603790 e!603791)))

(declare-fun res!708350 () Bool)

(assert (=> b!1060454 (=> (not res!708350) (not e!603791))))

(declare-fun e!603788 () Bool)

(assert (=> b!1060454 (= res!708350 (not e!603788))))

(declare-fun res!708349 () Bool)

(assert (=> b!1060454 (=> (not res!708349) (not e!603788))))

(assert (=> b!1060454 (= res!708349 (validKeyInArray!0 (select (arr!32244 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1060455 () Bool)

(declare-fun contains!6231 (List!22595 (_ BitVec 64)) Bool)

(assert (=> b!1060455 (= e!603788 (contains!6231 Nil!22592 (select (arr!32244 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1060456 () Bool)

(assert (=> b!1060456 (= e!603789 call!44900)))

(declare-fun d!128737 () Bool)

(declare-fun res!708351 () Bool)

(assert (=> d!128737 (=> res!708351 e!603790)))

(assert (=> d!128737 (= res!708351 (bvsge #b00000000000000000000000000000000 (size!32781 _keys!1163)))))

(assert (=> d!128737 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22592) e!603790)))

(declare-fun bm!44897 () Bool)

(assert (=> bm!44897 (= call!44900 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107165 (Cons!22591 (select (arr!32244 _keys!1163) #b00000000000000000000000000000000) Nil!22592) Nil!22592)))))

(assert (= (and d!128737 (not res!708351)) b!1060454))

(assert (= (and b!1060454 res!708349) b!1060455))

(assert (= (and b!1060454 res!708350) b!1060453))

(assert (= (and b!1060453 c!107165) b!1060456))

(assert (= (and b!1060453 (not c!107165)) b!1060452))

(assert (= (or b!1060456 b!1060452) bm!44897))

(assert (=> b!1060453 m!979631))

(assert (=> b!1060453 m!979631))

(assert (=> b!1060453 m!979645))

(assert (=> b!1060454 m!979631))

(assert (=> b!1060454 m!979631))

(assert (=> b!1060454 m!979645))

(assert (=> b!1060455 m!979631))

(assert (=> b!1060455 m!979631))

(declare-fun m!979655 () Bool)

(assert (=> b!1060455 m!979655))

(assert (=> bm!44897 m!979631))

(declare-fun m!979657 () Bool)

(assert (=> bm!44897 m!979657))

(assert (=> b!1060369 d!128737))

(declare-fun b!1060464 () Bool)

(declare-fun e!603796 () Bool)

(assert (=> b!1060464 (= e!603796 tp_is_empty!25041)))

(declare-fun mapIsEmpty!39235 () Bool)

(declare-fun mapRes!39235 () Bool)

(assert (=> mapIsEmpty!39235 mapRes!39235))

(declare-fun condMapEmpty!39235 () Bool)

(declare-fun mapDefault!39235 () ValueCell!11817)

(assert (=> mapNonEmpty!39229 (= condMapEmpty!39235 (= mapRest!39229 ((as const (Array (_ BitVec 32) ValueCell!11817)) mapDefault!39235)))))

(assert (=> mapNonEmpty!39229 (= tp!75113 (and e!603796 mapRes!39235))))

(declare-fun mapNonEmpty!39235 () Bool)

(declare-fun tp!75123 () Bool)

(declare-fun e!603797 () Bool)

(assert (=> mapNonEmpty!39235 (= mapRes!39235 (and tp!75123 e!603797))))

(declare-fun mapRest!39235 () (Array (_ BitVec 32) ValueCell!11817))

(declare-fun mapValue!39235 () ValueCell!11817)

(declare-fun mapKey!39235 () (_ BitVec 32))

(assert (=> mapNonEmpty!39235 (= mapRest!39229 (store mapRest!39235 mapKey!39235 mapValue!39235))))

(declare-fun b!1060463 () Bool)

(assert (=> b!1060463 (= e!603797 tp_is_empty!25041)))

(assert (= (and mapNonEmpty!39229 condMapEmpty!39235) mapIsEmpty!39235))

(assert (= (and mapNonEmpty!39229 (not condMapEmpty!39235)) mapNonEmpty!39235))

(assert (= (and mapNonEmpty!39235 ((_ is ValueCellFull!11817) mapValue!39235)) b!1060463))

(assert (= (and mapNonEmpty!39229 ((_ is ValueCellFull!11817) mapDefault!39235)) b!1060464))

(declare-fun m!979659 () Bool)

(assert (=> mapNonEmpty!39235 m!979659))

(declare-fun b_lambda!16471 () Bool)

(assert (= b_lambda!16467 (or (and start!93782 b_free!21231) b_lambda!16471)))

(declare-fun b_lambda!16473 () Bool)

(assert (= b_lambda!16469 (or (and start!93782 b_free!21231) b_lambda!16473)))

(check-sat (not b!1060420) (not b!1060425) (not bm!44894) (not b!1060422) (not b!1060424) (not bm!44897) (not b!1060453) (not b_lambda!16473) (not b!1060426) (not b!1060454) (not bm!44891) (not b_next!21231) (not b!1060439) (not b!1060423) (not b_lambda!16471) (not b!1060455) tp_is_empty!25041 (not mapNonEmpty!39235) (not b!1060427) b_and!33965 (not b!1060421) (not d!128727) (not b!1060438))
(check-sat b_and!33965 (not b_next!21231))
