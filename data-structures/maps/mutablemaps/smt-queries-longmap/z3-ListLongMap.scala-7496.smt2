; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94986 () Bool)

(assert start!94986)

(declare-fun b_free!22155 () Bool)

(declare-fun b_next!22155 () Bool)

(assert (=> start!94986 (= b_free!22155 (not b_next!22155))))

(declare-fun tp!77931 () Bool)

(declare-fun b_and!35027 () Bool)

(assert (=> start!94986 (= tp!77931 b_and!35027)))

(declare-fun b!1073523 () Bool)

(declare-fun res!716076 () Bool)

(declare-fun e!613370 () Bool)

(assert (=> b!1073523 (=> (not res!716076) (not e!613370))))

(declare-datatypes ((array!68852 0))(
  ( (array!68853 (arr!33116 (Array (_ BitVec 32) (_ BitVec 64))) (size!33653 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68852)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68852 (_ BitVec 32)) Bool)

(assert (=> b!1073523 (= res!716076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1073524 () Bool)

(declare-fun e!613372 () Bool)

(declare-fun e!613371 () Bool)

(declare-fun mapRes!40660 () Bool)

(assert (=> b!1073524 (= e!613372 (and e!613371 mapRes!40660))))

(declare-fun condMapEmpty!40660 () Bool)

(declare-datatypes ((V!39755 0))(
  ( (V!39756 (val!13033 Int)) )
))
(declare-datatypes ((ValueCell!12279 0))(
  ( (ValueCellFull!12279 (v!15652 V!39755)) (EmptyCell!12279) )
))
(declare-datatypes ((array!68854 0))(
  ( (array!68855 (arr!33117 (Array (_ BitVec 32) ValueCell!12279)) (size!33654 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68854)

(declare-fun mapDefault!40660 () ValueCell!12279)

(assert (=> b!1073524 (= condMapEmpty!40660 (= (arr!33117 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12279)) mapDefault!40660)))))

(declare-fun mapNonEmpty!40660 () Bool)

(declare-fun tp!77930 () Bool)

(declare-fun e!613369 () Bool)

(assert (=> mapNonEmpty!40660 (= mapRes!40660 (and tp!77930 e!613369))))

(declare-fun mapValue!40660 () ValueCell!12279)

(declare-fun mapKey!40660 () (_ BitVec 32))

(declare-fun mapRest!40660 () (Array (_ BitVec 32) ValueCell!12279))

(assert (=> mapNonEmpty!40660 (= (arr!33117 _values!955) (store mapRest!40660 mapKey!40660 mapValue!40660))))

(declare-fun b!1073525 () Bool)

(declare-fun res!716079 () Bool)

(assert (=> b!1073525 (=> (not res!716079) (not e!613370))))

(declare-datatypes ((List!23241 0))(
  ( (Nil!23238) (Cons!23237 (h!24446 (_ BitVec 64)) (t!32585 List!23241)) )
))
(declare-fun arrayNoDuplicates!0 (array!68852 (_ BitVec 32) List!23241) Bool)

(assert (=> b!1073525 (= res!716079 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23238))))

(declare-fun res!716077 () Bool)

(assert (=> start!94986 (=> (not res!716077) (not e!613370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94986 (= res!716077 (validMask!0 mask!1515))))

(assert (=> start!94986 e!613370))

(assert (=> start!94986 true))

(declare-fun tp_is_empty!25965 () Bool)

(assert (=> start!94986 tp_is_empty!25965))

(declare-fun array_inv!25450 (array!68854) Bool)

(assert (=> start!94986 (and (array_inv!25450 _values!955) e!613372)))

(assert (=> start!94986 tp!77931))

(declare-fun array_inv!25451 (array!68852) Bool)

(assert (=> start!94986 (array_inv!25451 _keys!1163)))

(declare-fun b!1073526 () Bool)

(assert (=> b!1073526 (= e!613370 (bvsgt #b00000000000000000000000000000000 (size!33653 _keys!1163)))))

(declare-datatypes ((tuple2!16664 0))(
  ( (tuple2!16665 (_1!8342 (_ BitVec 64)) (_2!8342 V!39755)) )
))
(declare-datatypes ((List!23242 0))(
  ( (Nil!23239) (Cons!23238 (h!24447 tuple2!16664) (t!32586 List!23242)) )
))
(declare-datatypes ((ListLongMap!14645 0))(
  ( (ListLongMap!14646 (toList!7338 List!23242)) )
))
(declare-fun lt!476063 () ListLongMap!14645)

(declare-fun minValue!907 () V!39755)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39755)

(declare-fun getCurrentListMapNoExtraKeys!3868 (array!68852 array!68854 (_ BitVec 32) (_ BitVec 32) V!39755 V!39755 (_ BitVec 32) Int) ListLongMap!14645)

(assert (=> b!1073526 (= lt!476063 (getCurrentListMapNoExtraKeys!3868 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!39755)

(declare-fun lt!476062 () ListLongMap!14645)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1073526 (= lt!476062 (getCurrentListMapNoExtraKeys!3868 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1073527 () Bool)

(assert (=> b!1073527 (= e!613371 tp_is_empty!25965)))

(declare-fun mapIsEmpty!40660 () Bool)

(assert (=> mapIsEmpty!40660 mapRes!40660))

(declare-fun b!1073528 () Bool)

(declare-fun res!716078 () Bool)

(assert (=> b!1073528 (=> (not res!716078) (not e!613370))))

(assert (=> b!1073528 (= res!716078 (and (= (size!33654 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33653 _keys!1163) (size!33654 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1073529 () Bool)

(assert (=> b!1073529 (= e!613369 tp_is_empty!25965)))

(assert (= (and start!94986 res!716077) b!1073528))

(assert (= (and b!1073528 res!716078) b!1073523))

(assert (= (and b!1073523 res!716076) b!1073525))

(assert (= (and b!1073525 res!716079) b!1073526))

(assert (= (and b!1073524 condMapEmpty!40660) mapIsEmpty!40660))

(assert (= (and b!1073524 (not condMapEmpty!40660)) mapNonEmpty!40660))

(get-info :version)

(assert (= (and mapNonEmpty!40660 ((_ is ValueCellFull!12279) mapValue!40660)) b!1073529))

(assert (= (and b!1073524 ((_ is ValueCellFull!12279) mapDefault!40660)) b!1073527))

(assert (= start!94986 b!1073524))

(declare-fun m!992613 () Bool)

(assert (=> b!1073523 m!992613))

(declare-fun m!992615 () Bool)

(assert (=> b!1073525 m!992615))

(declare-fun m!992617 () Bool)

(assert (=> start!94986 m!992617))

(declare-fun m!992619 () Bool)

(assert (=> start!94986 m!992619))

(declare-fun m!992621 () Bool)

(assert (=> start!94986 m!992621))

(declare-fun m!992623 () Bool)

(assert (=> mapNonEmpty!40660 m!992623))

(declare-fun m!992625 () Bool)

(assert (=> b!1073526 m!992625))

(declare-fun m!992627 () Bool)

(assert (=> b!1073526 m!992627))

(check-sat (not mapNonEmpty!40660) (not start!94986) tp_is_empty!25965 (not b!1073525) (not b!1073526) (not b_next!22155) (not b!1073523) b_and!35027)
(check-sat b_and!35027 (not b_next!22155))
(get-model)

(declare-fun b!1073559 () Bool)

(declare-fun e!613396 () Bool)

(declare-fun e!613395 () Bool)

(assert (=> b!1073559 (= e!613396 e!613395)))

(declare-fun c!107692 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1073559 (= c!107692 (validKeyInArray!0 (select (arr!33116 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!129375 () Bool)

(declare-fun res!716097 () Bool)

(assert (=> d!129375 (=> res!716097 e!613396)))

(assert (=> d!129375 (= res!716097 (bvsge #b00000000000000000000000000000000 (size!33653 _keys!1163)))))

(assert (=> d!129375 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!613396)))

(declare-fun b!1073560 () Bool)

(declare-fun e!613394 () Bool)

(declare-fun call!45281 () Bool)

(assert (=> b!1073560 (= e!613394 call!45281)))

(declare-fun b!1073561 () Bool)

(assert (=> b!1073561 (= e!613395 call!45281)))

(declare-fun bm!45278 () Bool)

(assert (=> bm!45278 (= call!45281 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1073562 () Bool)

(assert (=> b!1073562 (= e!613395 e!613394)))

(declare-fun lt!476078 () (_ BitVec 64))

(assert (=> b!1073562 (= lt!476078 (select (arr!33116 _keys!1163) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!35301 0))(
  ( (Unit!35302) )
))
(declare-fun lt!476076 () Unit!35301)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!68852 (_ BitVec 64) (_ BitVec 32)) Unit!35301)

(assert (=> b!1073562 (= lt!476076 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!476078 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!68852 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1073562 (arrayContainsKey!0 _keys!1163 lt!476078 #b00000000000000000000000000000000)))

(declare-fun lt!476077 () Unit!35301)

(assert (=> b!1073562 (= lt!476077 lt!476076)))

(declare-fun res!716096 () Bool)

(declare-datatypes ((SeekEntryResult!9882 0))(
  ( (MissingZero!9882 (index!41898 (_ BitVec 32))) (Found!9882 (index!41899 (_ BitVec 32))) (Intermediate!9882 (undefined!10694 Bool) (index!41900 (_ BitVec 32)) (x!96218 (_ BitVec 32))) (Undefined!9882) (MissingVacant!9882 (index!41901 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!68852 (_ BitVec 32)) SeekEntryResult!9882)

(assert (=> b!1073562 (= res!716096 (= (seekEntryOrOpen!0 (select (arr!33116 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9882 #b00000000000000000000000000000000)))))

(assert (=> b!1073562 (=> (not res!716096) (not e!613394))))

(assert (= (and d!129375 (not res!716097)) b!1073559))

(assert (= (and b!1073559 c!107692) b!1073562))

(assert (= (and b!1073559 (not c!107692)) b!1073561))

(assert (= (and b!1073562 res!716096) b!1073560))

(assert (= (or b!1073560 b!1073561) bm!45278))

(declare-fun m!992645 () Bool)

(assert (=> b!1073559 m!992645))

(assert (=> b!1073559 m!992645))

(declare-fun m!992647 () Bool)

(assert (=> b!1073559 m!992647))

(declare-fun m!992649 () Bool)

(assert (=> bm!45278 m!992649))

(assert (=> b!1073562 m!992645))

(declare-fun m!992651 () Bool)

(assert (=> b!1073562 m!992651))

(declare-fun m!992653 () Bool)

(assert (=> b!1073562 m!992653))

(assert (=> b!1073562 m!992645))

(declare-fun m!992655 () Bool)

(assert (=> b!1073562 m!992655))

(assert (=> b!1073523 d!129375))

(declare-fun b!1073587 () Bool)

(declare-fun e!613414 () ListLongMap!14645)

(declare-fun e!613412 () ListLongMap!14645)

(assert (=> b!1073587 (= e!613414 e!613412)))

(declare-fun c!107702 () Bool)

(assert (=> b!1073587 (= c!107702 (validKeyInArray!0 (select (arr!33116 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1073588 () Bool)

(declare-fun e!613415 () Bool)

(declare-fun e!613417 () Bool)

(assert (=> b!1073588 (= e!613415 e!613417)))

(declare-fun c!107704 () Bool)

(declare-fun e!613411 () Bool)

(assert (=> b!1073588 (= c!107704 e!613411)))

(declare-fun res!716107 () Bool)

(assert (=> b!1073588 (=> (not res!716107) (not e!613411))))

(assert (=> b!1073588 (= res!716107 (bvslt #b00000000000000000000000000000000 (size!33653 _keys!1163)))))

(declare-fun b!1073589 () Bool)

(assert (=> b!1073589 (= e!613411 (validKeyInArray!0 (select (arr!33116 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1073589 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!129377 () Bool)

(assert (=> d!129377 e!613415))

(declare-fun res!716106 () Bool)

(assert (=> d!129377 (=> (not res!716106) (not e!613415))))

(declare-fun lt!476096 () ListLongMap!14645)

(declare-fun contains!6340 (ListLongMap!14645 (_ BitVec 64)) Bool)

(assert (=> d!129377 (= res!716106 (not (contains!6340 lt!476096 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129377 (= lt!476096 e!613414)))

(declare-fun c!107701 () Bool)

(assert (=> d!129377 (= c!107701 (bvsge #b00000000000000000000000000000000 (size!33653 _keys!1163)))))

(assert (=> d!129377 (validMask!0 mask!1515)))

(assert (=> d!129377 (= (getCurrentListMapNoExtraKeys!3868 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476096)))

(declare-fun call!45284 () ListLongMap!14645)

(declare-fun bm!45281 () Bool)

(assert (=> bm!45281 (= call!45284 (getCurrentListMapNoExtraKeys!3868 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1073590 () Bool)

(declare-fun e!613416 () Bool)

(assert (=> b!1073590 (= e!613416 (= lt!476096 (getCurrentListMapNoExtraKeys!3868 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1073591 () Bool)

(assert (=> b!1073591 (= e!613414 (ListLongMap!14646 Nil!23239))))

(declare-fun b!1073592 () Bool)

(assert (=> b!1073592 (= e!613412 call!45284)))

(declare-fun b!1073593 () Bool)

(declare-fun lt!476094 () Unit!35301)

(declare-fun lt!476093 () Unit!35301)

(assert (=> b!1073593 (= lt!476094 lt!476093)))

(declare-fun lt!476095 () V!39755)

(declare-fun lt!476099 () (_ BitVec 64))

(declare-fun lt!476097 () ListLongMap!14645)

(declare-fun lt!476098 () (_ BitVec 64))

(declare-fun +!3170 (ListLongMap!14645 tuple2!16664) ListLongMap!14645)

(assert (=> b!1073593 (not (contains!6340 (+!3170 lt!476097 (tuple2!16665 lt!476099 lt!476095)) lt!476098))))

(declare-fun addStillNotContains!262 (ListLongMap!14645 (_ BitVec 64) V!39755 (_ BitVec 64)) Unit!35301)

(assert (=> b!1073593 (= lt!476093 (addStillNotContains!262 lt!476097 lt!476099 lt!476095 lt!476098))))

(assert (=> b!1073593 (= lt!476098 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!17223 (ValueCell!12279 V!39755) V!39755)

(declare-fun dynLambda!2043 (Int (_ BitVec 64)) V!39755)

(assert (=> b!1073593 (= lt!476095 (get!17223 (select (arr!33117 _values!955) #b00000000000000000000000000000000) (dynLambda!2043 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1073593 (= lt!476099 (select (arr!33116 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1073593 (= lt!476097 call!45284)))

(assert (=> b!1073593 (= e!613412 (+!3170 call!45284 (tuple2!16665 (select (arr!33116 _keys!1163) #b00000000000000000000000000000000) (get!17223 (select (arr!33117 _values!955) #b00000000000000000000000000000000) (dynLambda!2043 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1073594 () Bool)

(declare-fun isEmpty!953 (ListLongMap!14645) Bool)

(assert (=> b!1073594 (= e!613416 (isEmpty!953 lt!476096))))

(declare-fun b!1073595 () Bool)

(assert (=> b!1073595 (= e!613417 e!613416)))

(declare-fun c!107703 () Bool)

(assert (=> b!1073595 (= c!107703 (bvslt #b00000000000000000000000000000000 (size!33653 _keys!1163)))))

(declare-fun b!1073596 () Bool)

(assert (=> b!1073596 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33653 _keys!1163)))))

(assert (=> b!1073596 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33654 _values!955)))))

(declare-fun e!613413 () Bool)

(declare-fun apply!967 (ListLongMap!14645 (_ BitVec 64)) V!39755)

(assert (=> b!1073596 (= e!613413 (= (apply!967 lt!476096 (select (arr!33116 _keys!1163) #b00000000000000000000000000000000)) (get!17223 (select (arr!33117 _values!955) #b00000000000000000000000000000000) (dynLambda!2043 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1073597 () Bool)

(assert (=> b!1073597 (= e!613417 e!613413)))

(assert (=> b!1073597 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33653 _keys!1163)))))

(declare-fun res!716108 () Bool)

(assert (=> b!1073597 (= res!716108 (contains!6340 lt!476096 (select (arr!33116 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1073597 (=> (not res!716108) (not e!613413))))

(declare-fun b!1073598 () Bool)

(declare-fun res!716109 () Bool)

(assert (=> b!1073598 (=> (not res!716109) (not e!613415))))

(assert (=> b!1073598 (= res!716109 (not (contains!6340 lt!476096 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!129377 c!107701) b!1073591))

(assert (= (and d!129377 (not c!107701)) b!1073587))

(assert (= (and b!1073587 c!107702) b!1073593))

(assert (= (and b!1073587 (not c!107702)) b!1073592))

(assert (= (or b!1073593 b!1073592) bm!45281))

(assert (= (and d!129377 res!716106) b!1073598))

(assert (= (and b!1073598 res!716109) b!1073588))

(assert (= (and b!1073588 res!716107) b!1073589))

(assert (= (and b!1073588 c!107704) b!1073597))

(assert (= (and b!1073588 (not c!107704)) b!1073595))

(assert (= (and b!1073597 res!716108) b!1073596))

(assert (= (and b!1073595 c!107703) b!1073590))

(assert (= (and b!1073595 (not c!107703)) b!1073594))

(declare-fun b_lambda!16755 () Bool)

(assert (=> (not b_lambda!16755) (not b!1073593)))

(declare-fun t!32589 () Bool)

(declare-fun tb!7167 () Bool)

(assert (=> (and start!94986 (= defaultEntry!963 defaultEntry!963) t!32589) tb!7167))

(declare-fun result!14793 () Bool)

(assert (=> tb!7167 (= result!14793 tp_is_empty!25965)))

(assert (=> b!1073593 t!32589))

(declare-fun b_and!35031 () Bool)

(assert (= b_and!35027 (and (=> t!32589 result!14793) b_and!35031)))

(declare-fun b_lambda!16757 () Bool)

(assert (=> (not b_lambda!16757) (not b!1073596)))

(assert (=> b!1073596 t!32589))

(declare-fun b_and!35033 () Bool)

(assert (= b_and!35031 (and (=> t!32589 result!14793) b_and!35033)))

(assert (=> b!1073589 m!992645))

(assert (=> b!1073589 m!992645))

(assert (=> b!1073589 m!992647))

(declare-fun m!992657 () Bool)

(assert (=> b!1073594 m!992657))

(declare-fun m!992659 () Bool)

(assert (=> b!1073590 m!992659))

(assert (=> b!1073587 m!992645))

(assert (=> b!1073587 m!992645))

(assert (=> b!1073587 m!992647))

(declare-fun m!992661 () Bool)

(assert (=> d!129377 m!992661))

(assert (=> d!129377 m!992617))

(assert (=> b!1073597 m!992645))

(assert (=> b!1073597 m!992645))

(declare-fun m!992663 () Bool)

(assert (=> b!1073597 m!992663))

(declare-fun m!992665 () Bool)

(assert (=> b!1073598 m!992665))

(declare-fun m!992667 () Bool)

(assert (=> b!1073593 m!992667))

(declare-fun m!992669 () Bool)

(assert (=> b!1073593 m!992669))

(declare-fun m!992671 () Bool)

(assert (=> b!1073593 m!992671))

(declare-fun m!992673 () Bool)

(assert (=> b!1073593 m!992673))

(assert (=> b!1073593 m!992669))

(declare-fun m!992675 () Bool)

(assert (=> b!1073593 m!992675))

(assert (=> b!1073593 m!992675))

(declare-fun m!992677 () Bool)

(assert (=> b!1073593 m!992677))

(assert (=> b!1073593 m!992667))

(assert (=> b!1073593 m!992645))

(declare-fun m!992679 () Bool)

(assert (=> b!1073593 m!992679))

(assert (=> bm!45281 m!992659))

(assert (=> b!1073596 m!992667))

(assert (=> b!1073596 m!992669))

(assert (=> b!1073596 m!992671))

(assert (=> b!1073596 m!992669))

(assert (=> b!1073596 m!992667))

(assert (=> b!1073596 m!992645))

(assert (=> b!1073596 m!992645))

(declare-fun m!992681 () Bool)

(assert (=> b!1073596 m!992681))

(assert (=> b!1073526 d!129377))

(declare-fun b!1073601 () Bool)

(declare-fun e!613421 () ListLongMap!14645)

(declare-fun e!613419 () ListLongMap!14645)

(assert (=> b!1073601 (= e!613421 e!613419)))

(declare-fun c!107706 () Bool)

(assert (=> b!1073601 (= c!107706 (validKeyInArray!0 (select (arr!33116 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1073602 () Bool)

(declare-fun e!613422 () Bool)

(declare-fun e!613424 () Bool)

(assert (=> b!1073602 (= e!613422 e!613424)))

(declare-fun c!107708 () Bool)

(declare-fun e!613418 () Bool)

(assert (=> b!1073602 (= c!107708 e!613418)))

(declare-fun res!716111 () Bool)

(assert (=> b!1073602 (=> (not res!716111) (not e!613418))))

(assert (=> b!1073602 (= res!716111 (bvslt #b00000000000000000000000000000000 (size!33653 _keys!1163)))))

(declare-fun b!1073603 () Bool)

(assert (=> b!1073603 (= e!613418 (validKeyInArray!0 (select (arr!33116 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1073603 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!129379 () Bool)

(assert (=> d!129379 e!613422))

(declare-fun res!716110 () Bool)

(assert (=> d!129379 (=> (not res!716110) (not e!613422))))

(declare-fun lt!476103 () ListLongMap!14645)

(assert (=> d!129379 (= res!716110 (not (contains!6340 lt!476103 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129379 (= lt!476103 e!613421)))

(declare-fun c!107705 () Bool)

(assert (=> d!129379 (= c!107705 (bvsge #b00000000000000000000000000000000 (size!33653 _keys!1163)))))

(assert (=> d!129379 (validMask!0 mask!1515)))

(assert (=> d!129379 (= (getCurrentListMapNoExtraKeys!3868 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476103)))

(declare-fun bm!45282 () Bool)

(declare-fun call!45285 () ListLongMap!14645)

(assert (=> bm!45282 (= call!45285 (getCurrentListMapNoExtraKeys!3868 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun e!613423 () Bool)

(declare-fun b!1073604 () Bool)

(assert (=> b!1073604 (= e!613423 (= lt!476103 (getCurrentListMapNoExtraKeys!3868 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1073605 () Bool)

(assert (=> b!1073605 (= e!613421 (ListLongMap!14646 Nil!23239))))

(declare-fun b!1073606 () Bool)

(assert (=> b!1073606 (= e!613419 call!45285)))

(declare-fun b!1073607 () Bool)

(declare-fun lt!476101 () Unit!35301)

(declare-fun lt!476100 () Unit!35301)

(assert (=> b!1073607 (= lt!476101 lt!476100)))

(declare-fun lt!476105 () (_ BitVec 64))

(declare-fun lt!476104 () ListLongMap!14645)

(declare-fun lt!476106 () (_ BitVec 64))

(declare-fun lt!476102 () V!39755)

(assert (=> b!1073607 (not (contains!6340 (+!3170 lt!476104 (tuple2!16665 lt!476106 lt!476102)) lt!476105))))

(assert (=> b!1073607 (= lt!476100 (addStillNotContains!262 lt!476104 lt!476106 lt!476102 lt!476105))))

(assert (=> b!1073607 (= lt!476105 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1073607 (= lt!476102 (get!17223 (select (arr!33117 _values!955) #b00000000000000000000000000000000) (dynLambda!2043 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1073607 (= lt!476106 (select (arr!33116 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1073607 (= lt!476104 call!45285)))

(assert (=> b!1073607 (= e!613419 (+!3170 call!45285 (tuple2!16665 (select (arr!33116 _keys!1163) #b00000000000000000000000000000000) (get!17223 (select (arr!33117 _values!955) #b00000000000000000000000000000000) (dynLambda!2043 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1073608 () Bool)

(assert (=> b!1073608 (= e!613423 (isEmpty!953 lt!476103))))

(declare-fun b!1073609 () Bool)

(assert (=> b!1073609 (= e!613424 e!613423)))

(declare-fun c!107707 () Bool)

(assert (=> b!1073609 (= c!107707 (bvslt #b00000000000000000000000000000000 (size!33653 _keys!1163)))))

(declare-fun b!1073610 () Bool)

(assert (=> b!1073610 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33653 _keys!1163)))))

(assert (=> b!1073610 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33654 _values!955)))))

(declare-fun e!613420 () Bool)

(assert (=> b!1073610 (= e!613420 (= (apply!967 lt!476103 (select (arr!33116 _keys!1163) #b00000000000000000000000000000000)) (get!17223 (select (arr!33117 _values!955) #b00000000000000000000000000000000) (dynLambda!2043 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1073611 () Bool)

(assert (=> b!1073611 (= e!613424 e!613420)))

(assert (=> b!1073611 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33653 _keys!1163)))))

(declare-fun res!716112 () Bool)

(assert (=> b!1073611 (= res!716112 (contains!6340 lt!476103 (select (arr!33116 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1073611 (=> (not res!716112) (not e!613420))))

(declare-fun b!1073612 () Bool)

(declare-fun res!716113 () Bool)

(assert (=> b!1073612 (=> (not res!716113) (not e!613422))))

(assert (=> b!1073612 (= res!716113 (not (contains!6340 lt!476103 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!129379 c!107705) b!1073605))

(assert (= (and d!129379 (not c!107705)) b!1073601))

(assert (= (and b!1073601 c!107706) b!1073607))

(assert (= (and b!1073601 (not c!107706)) b!1073606))

(assert (= (or b!1073607 b!1073606) bm!45282))

(assert (= (and d!129379 res!716110) b!1073612))

(assert (= (and b!1073612 res!716113) b!1073602))

(assert (= (and b!1073602 res!716111) b!1073603))

(assert (= (and b!1073602 c!107708) b!1073611))

(assert (= (and b!1073602 (not c!107708)) b!1073609))

(assert (= (and b!1073611 res!716112) b!1073610))

(assert (= (and b!1073609 c!107707) b!1073604))

(assert (= (and b!1073609 (not c!107707)) b!1073608))

(declare-fun b_lambda!16759 () Bool)

(assert (=> (not b_lambda!16759) (not b!1073607)))

(assert (=> b!1073607 t!32589))

(declare-fun b_and!35035 () Bool)

(assert (= b_and!35033 (and (=> t!32589 result!14793) b_and!35035)))

(declare-fun b_lambda!16761 () Bool)

(assert (=> (not b_lambda!16761) (not b!1073610)))

(assert (=> b!1073610 t!32589))

(declare-fun b_and!35037 () Bool)

(assert (= b_and!35035 (and (=> t!32589 result!14793) b_and!35037)))

(assert (=> b!1073603 m!992645))

(assert (=> b!1073603 m!992645))

(assert (=> b!1073603 m!992647))

(declare-fun m!992683 () Bool)

(assert (=> b!1073608 m!992683))

(declare-fun m!992685 () Bool)

(assert (=> b!1073604 m!992685))

(assert (=> b!1073601 m!992645))

(assert (=> b!1073601 m!992645))

(assert (=> b!1073601 m!992647))

(declare-fun m!992687 () Bool)

(assert (=> d!129379 m!992687))

(assert (=> d!129379 m!992617))

(assert (=> b!1073611 m!992645))

(assert (=> b!1073611 m!992645))

(declare-fun m!992689 () Bool)

(assert (=> b!1073611 m!992689))

(declare-fun m!992691 () Bool)

(assert (=> b!1073612 m!992691))

(assert (=> b!1073607 m!992667))

(assert (=> b!1073607 m!992669))

(assert (=> b!1073607 m!992671))

(declare-fun m!992693 () Bool)

(assert (=> b!1073607 m!992693))

(assert (=> b!1073607 m!992669))

(declare-fun m!992695 () Bool)

(assert (=> b!1073607 m!992695))

(assert (=> b!1073607 m!992695))

(declare-fun m!992697 () Bool)

(assert (=> b!1073607 m!992697))

(assert (=> b!1073607 m!992667))

(assert (=> b!1073607 m!992645))

(declare-fun m!992699 () Bool)

(assert (=> b!1073607 m!992699))

(assert (=> bm!45282 m!992685))

(assert (=> b!1073610 m!992667))

(assert (=> b!1073610 m!992669))

(assert (=> b!1073610 m!992671))

(assert (=> b!1073610 m!992669))

(assert (=> b!1073610 m!992667))

(assert (=> b!1073610 m!992645))

(assert (=> b!1073610 m!992645))

(declare-fun m!992701 () Bool)

(assert (=> b!1073610 m!992701))

(assert (=> b!1073526 d!129379))

(declare-fun d!129381 () Bool)

(declare-fun res!716122 () Bool)

(declare-fun e!613435 () Bool)

(assert (=> d!129381 (=> res!716122 e!613435)))

(assert (=> d!129381 (= res!716122 (bvsge #b00000000000000000000000000000000 (size!33653 _keys!1163)))))

(assert (=> d!129381 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23238) e!613435)))

(declare-fun b!1073623 () Bool)

(declare-fun e!613433 () Bool)

(assert (=> b!1073623 (= e!613435 e!613433)))

(declare-fun res!716120 () Bool)

(assert (=> b!1073623 (=> (not res!716120) (not e!613433))))

(declare-fun e!613434 () Bool)

(assert (=> b!1073623 (= res!716120 (not e!613434))))

(declare-fun res!716121 () Bool)

(assert (=> b!1073623 (=> (not res!716121) (not e!613434))))

(assert (=> b!1073623 (= res!716121 (validKeyInArray!0 (select (arr!33116 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1073624 () Bool)

(declare-fun e!613436 () Bool)

(declare-fun call!45288 () Bool)

(assert (=> b!1073624 (= e!613436 call!45288)))

(declare-fun b!1073625 () Bool)

(declare-fun contains!6341 (List!23241 (_ BitVec 64)) Bool)

(assert (=> b!1073625 (= e!613434 (contains!6341 Nil!23238 (select (arr!33116 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45285 () Bool)

(declare-fun c!107711 () Bool)

(assert (=> bm!45285 (= call!45288 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107711 (Cons!23237 (select (arr!33116 _keys!1163) #b00000000000000000000000000000000) Nil!23238) Nil!23238)))))

(declare-fun b!1073626 () Bool)

(assert (=> b!1073626 (= e!613433 e!613436)))

(assert (=> b!1073626 (= c!107711 (validKeyInArray!0 (select (arr!33116 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1073627 () Bool)

(assert (=> b!1073627 (= e!613436 call!45288)))

(assert (= (and d!129381 (not res!716122)) b!1073623))

(assert (= (and b!1073623 res!716121) b!1073625))

(assert (= (and b!1073623 res!716120) b!1073626))

(assert (= (and b!1073626 c!107711) b!1073627))

(assert (= (and b!1073626 (not c!107711)) b!1073624))

(assert (= (or b!1073627 b!1073624) bm!45285))

(assert (=> b!1073623 m!992645))

(assert (=> b!1073623 m!992645))

(assert (=> b!1073623 m!992647))

(assert (=> b!1073625 m!992645))

(assert (=> b!1073625 m!992645))

(declare-fun m!992703 () Bool)

(assert (=> b!1073625 m!992703))

(assert (=> bm!45285 m!992645))

(declare-fun m!992705 () Bool)

(assert (=> bm!45285 m!992705))

(assert (=> b!1073626 m!992645))

(assert (=> b!1073626 m!992645))

(assert (=> b!1073626 m!992647))

(assert (=> b!1073525 d!129381))

(declare-fun d!129383 () Bool)

(assert (=> d!129383 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!94986 d!129383))

(declare-fun d!129385 () Bool)

(assert (=> d!129385 (= (array_inv!25450 _values!955) (bvsge (size!33654 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!94986 d!129385))

(declare-fun d!129387 () Bool)

(assert (=> d!129387 (= (array_inv!25451 _keys!1163) (bvsge (size!33653 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!94986 d!129387))

(declare-fun mapNonEmpty!40666 () Bool)

(declare-fun mapRes!40666 () Bool)

(declare-fun tp!77940 () Bool)

(declare-fun e!613441 () Bool)

(assert (=> mapNonEmpty!40666 (= mapRes!40666 (and tp!77940 e!613441))))

(declare-fun mapRest!40666 () (Array (_ BitVec 32) ValueCell!12279))

(declare-fun mapValue!40666 () ValueCell!12279)

(declare-fun mapKey!40666 () (_ BitVec 32))

(assert (=> mapNonEmpty!40666 (= mapRest!40660 (store mapRest!40666 mapKey!40666 mapValue!40666))))

(declare-fun b!1073635 () Bool)

(declare-fun e!613442 () Bool)

(assert (=> b!1073635 (= e!613442 tp_is_empty!25965)))

(declare-fun mapIsEmpty!40666 () Bool)

(assert (=> mapIsEmpty!40666 mapRes!40666))

(declare-fun b!1073634 () Bool)

(assert (=> b!1073634 (= e!613441 tp_is_empty!25965)))

(declare-fun condMapEmpty!40666 () Bool)

(declare-fun mapDefault!40666 () ValueCell!12279)

(assert (=> mapNonEmpty!40660 (= condMapEmpty!40666 (= mapRest!40660 ((as const (Array (_ BitVec 32) ValueCell!12279)) mapDefault!40666)))))

(assert (=> mapNonEmpty!40660 (= tp!77930 (and e!613442 mapRes!40666))))

(assert (= (and mapNonEmpty!40660 condMapEmpty!40666) mapIsEmpty!40666))

(assert (= (and mapNonEmpty!40660 (not condMapEmpty!40666)) mapNonEmpty!40666))

(assert (= (and mapNonEmpty!40666 ((_ is ValueCellFull!12279) mapValue!40666)) b!1073634))

(assert (= (and mapNonEmpty!40660 ((_ is ValueCellFull!12279) mapDefault!40666)) b!1073635))

(declare-fun m!992707 () Bool)

(assert (=> mapNonEmpty!40666 m!992707))

(declare-fun b_lambda!16763 () Bool)

(assert (= b_lambda!16759 (or (and start!94986 b_free!22155) b_lambda!16763)))

(declare-fun b_lambda!16765 () Bool)

(assert (= b_lambda!16761 (or (and start!94986 b_free!22155) b_lambda!16765)))

(declare-fun b_lambda!16767 () Bool)

(assert (= b_lambda!16757 (or (and start!94986 b_free!22155) b_lambda!16767)))

(declare-fun b_lambda!16769 () Bool)

(assert (= b_lambda!16755 (or (and start!94986 b_free!22155) b_lambda!16769)))

(check-sat (not b!1073559) tp_is_empty!25965 (not mapNonEmpty!40666) (not b!1073594) (not b!1073597) (not bm!45285) (not b!1073608) (not bm!45282) (not bm!45278) (not b!1073598) (not b!1073562) (not b_next!22155) (not b!1073612) (not b!1073590) (not b!1073604) (not b_lambda!16769) (not b_lambda!16765) (not d!129377) (not b_lambda!16763) (not b!1073589) (not b!1073626) (not b!1073593) (not b!1073623) (not d!129379) (not b!1073611) (not b_lambda!16767) (not b!1073607) (not b!1073610) (not b!1073596) (not b!1073625) (not bm!45281) (not b!1073603) (not b!1073587) (not b!1073601) b_and!35037)
(check-sat b_and!35037 (not b_next!22155))
