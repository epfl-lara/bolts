; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95104 () Bool)

(assert start!95104)

(declare-fun b_free!22185 () Bool)

(declare-fun b_next!22185 () Bool)

(assert (=> start!95104 (= b_free!22185 (not b_next!22185))))

(declare-fun tp!78036 () Bool)

(declare-fun b_and!35111 () Bool)

(assert (=> start!95104 (= tp!78036 b_and!35111)))

(declare-fun b!1074681 () Bool)

(declare-fun e!614156 () Bool)

(declare-fun tp_is_empty!25995 () Bool)

(assert (=> b!1074681 (= e!614156 tp_is_empty!25995)))

(declare-fun b!1074682 () Bool)

(declare-fun res!716640 () Bool)

(declare-fun e!614154 () Bool)

(assert (=> b!1074682 (=> (not res!716640) (not e!614154))))

(declare-datatypes ((array!68920 0))(
  ( (array!68921 (arr!33145 (Array (_ BitVec 32) (_ BitVec 64))) (size!33682 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68920)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68920 (_ BitVec 32)) Bool)

(assert (=> b!1074682 (= res!716640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1074683 () Bool)

(declare-fun e!614155 () Bool)

(assert (=> b!1074683 (= e!614154 (not e!614155))))

(declare-fun res!716637 () Bool)

(assert (=> b!1074683 (=> res!716637 e!614155)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1074683 (= res!716637 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39795 0))(
  ( (V!39796 (val!13048 Int)) )
))
(declare-datatypes ((tuple2!16688 0))(
  ( (tuple2!16689 (_1!8354 (_ BitVec 64)) (_2!8354 V!39795)) )
))
(declare-datatypes ((List!23262 0))(
  ( (Nil!23259) (Cons!23258 (h!24467 tuple2!16688) (t!32616 List!23262)) )
))
(declare-datatypes ((ListLongMap!14669 0))(
  ( (ListLongMap!14670 (toList!7350 List!23262)) )
))
(declare-fun lt!476824 () ListLongMap!14669)

(declare-fun lt!476820 () ListLongMap!14669)

(assert (=> b!1074683 (= lt!476824 lt!476820)))

(declare-fun zeroValueBefore!47 () V!39795)

(declare-datatypes ((Unit!35328 0))(
  ( (Unit!35329) )
))
(declare-fun lt!476823 () Unit!35328)

(declare-datatypes ((ValueCell!12294 0))(
  ( (ValueCellFull!12294 (v!15671 V!39795)) (EmptyCell!12294) )
))
(declare-datatypes ((array!68922 0))(
  ( (array!68923 (arr!33146 (Array (_ BitVec 32) ValueCell!12294)) (size!33683 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68922)

(declare-fun minValue!907 () V!39795)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39795)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!896 (array!68920 array!68922 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39795 V!39795 V!39795 V!39795 (_ BitVec 32) Int) Unit!35328)

(assert (=> b!1074683 (= lt!476823 (lemmaNoChangeToArrayThenSameMapNoExtras!896 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3877 (array!68920 array!68922 (_ BitVec 32) (_ BitVec 32) V!39795 V!39795 (_ BitVec 32) Int) ListLongMap!14669)

(assert (=> b!1074683 (= lt!476820 (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1074683 (= lt!476824 (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1074684 () Bool)

(declare-fun e!614157 () Bool)

(declare-fun e!614160 () Bool)

(declare-fun mapRes!40720 () Bool)

(assert (=> b!1074684 (= e!614157 (and e!614160 mapRes!40720))))

(declare-fun condMapEmpty!40720 () Bool)

(declare-fun mapDefault!40720 () ValueCell!12294)

(assert (=> b!1074684 (= condMapEmpty!40720 (= (arr!33146 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12294)) mapDefault!40720)))))

(declare-fun b!1074685 () Bool)

(declare-fun res!716638 () Bool)

(assert (=> b!1074685 (=> (not res!716638) (not e!614154))))

(declare-datatypes ((List!23263 0))(
  ( (Nil!23260) (Cons!23259 (h!24468 (_ BitVec 64)) (t!32617 List!23263)) )
))
(declare-fun arrayNoDuplicates!0 (array!68920 (_ BitVec 32) List!23263) Bool)

(assert (=> b!1074685 (= res!716638 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23260))))

(declare-fun b!1074686 () Bool)

(declare-fun res!716639 () Bool)

(assert (=> b!1074686 (=> (not res!716639) (not e!614154))))

(assert (=> b!1074686 (= res!716639 (and (= (size!33683 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33682 _keys!1163) (size!33683 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1074688 () Bool)

(declare-fun contains!6355 (ListLongMap!14669 (_ BitVec 64)) Bool)

(assert (=> b!1074688 (= e!614155 (not (contains!6355 lt!476824 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!614159 () Bool)

(assert (=> b!1074688 e!614159))

(declare-fun res!716642 () Bool)

(assert (=> b!1074688 (=> (not res!716642) (not e!614159))))

(declare-fun lt!476822 () ListLongMap!14669)

(declare-fun +!3178 (ListLongMap!14669 tuple2!16688) ListLongMap!14669)

(assert (=> b!1074688 (= res!716642 (= lt!476822 (+!3178 lt!476824 (tuple2!16689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun lt!476821 () ListLongMap!14669)

(declare-fun getCurrentListMap!4188 (array!68920 array!68922 (_ BitVec 32) (_ BitVec 32) V!39795 V!39795 (_ BitVec 32) Int) ListLongMap!14669)

(assert (=> b!1074688 (= lt!476821 (getCurrentListMap!4188 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1074688 (= lt!476822 (getCurrentListMap!4188 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1074689 () Bool)

(assert (=> b!1074689 (= e!614160 tp_is_empty!25995)))

(declare-fun mapIsEmpty!40720 () Bool)

(assert (=> mapIsEmpty!40720 mapRes!40720))

(declare-fun mapNonEmpty!40720 () Bool)

(declare-fun tp!78035 () Bool)

(assert (=> mapNonEmpty!40720 (= mapRes!40720 (and tp!78035 e!614156))))

(declare-fun mapRest!40720 () (Array (_ BitVec 32) ValueCell!12294))

(declare-fun mapKey!40720 () (_ BitVec 32))

(declare-fun mapValue!40720 () ValueCell!12294)

(assert (=> mapNonEmpty!40720 (= (arr!33146 _values!955) (store mapRest!40720 mapKey!40720 mapValue!40720))))

(declare-fun b!1074687 () Bool)

(assert (=> b!1074687 (= e!614159 (= lt!476821 lt!476820))))

(declare-fun res!716641 () Bool)

(assert (=> start!95104 (=> (not res!716641) (not e!614154))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95104 (= res!716641 (validMask!0 mask!1515))))

(assert (=> start!95104 e!614154))

(assert (=> start!95104 true))

(assert (=> start!95104 tp_is_empty!25995))

(declare-fun array_inv!25468 (array!68922) Bool)

(assert (=> start!95104 (and (array_inv!25468 _values!955) e!614157)))

(assert (=> start!95104 tp!78036))

(declare-fun array_inv!25469 (array!68920) Bool)

(assert (=> start!95104 (array_inv!25469 _keys!1163)))

(assert (= (and start!95104 res!716641) b!1074686))

(assert (= (and b!1074686 res!716639) b!1074682))

(assert (= (and b!1074682 res!716640) b!1074685))

(assert (= (and b!1074685 res!716638) b!1074683))

(assert (= (and b!1074683 (not res!716637)) b!1074688))

(assert (= (and b!1074688 res!716642) b!1074687))

(assert (= (and b!1074684 condMapEmpty!40720) mapIsEmpty!40720))

(assert (= (and b!1074684 (not condMapEmpty!40720)) mapNonEmpty!40720))

(get-info :version)

(assert (= (and mapNonEmpty!40720 ((_ is ValueCellFull!12294) mapValue!40720)) b!1074681))

(assert (= (and b!1074684 ((_ is ValueCellFull!12294) mapDefault!40720)) b!1074689))

(assert (= start!95104 b!1074684))

(declare-fun m!993661 () Bool)

(assert (=> mapNonEmpty!40720 m!993661))

(declare-fun m!993663 () Bool)

(assert (=> b!1074683 m!993663))

(declare-fun m!993665 () Bool)

(assert (=> b!1074683 m!993665))

(declare-fun m!993667 () Bool)

(assert (=> b!1074683 m!993667))

(declare-fun m!993669 () Bool)

(assert (=> b!1074688 m!993669))

(declare-fun m!993671 () Bool)

(assert (=> b!1074688 m!993671))

(declare-fun m!993673 () Bool)

(assert (=> b!1074688 m!993673))

(declare-fun m!993675 () Bool)

(assert (=> b!1074688 m!993675))

(declare-fun m!993677 () Bool)

(assert (=> start!95104 m!993677))

(declare-fun m!993679 () Bool)

(assert (=> start!95104 m!993679))

(declare-fun m!993681 () Bool)

(assert (=> start!95104 m!993681))

(declare-fun m!993683 () Bool)

(assert (=> b!1074685 m!993683))

(declare-fun m!993685 () Bool)

(assert (=> b!1074682 m!993685))

(check-sat (not b!1074683) tp_is_empty!25995 (not b!1074682) b_and!35111 (not b!1074688) (not b_next!22185) (not b!1074685) (not mapNonEmpty!40720) (not start!95104))
(check-sat b_and!35111 (not b_next!22185))
(get-model)

(declare-fun d!129489 () Bool)

(declare-fun e!614186 () Bool)

(assert (=> d!129489 e!614186))

(declare-fun res!716663 () Bool)

(assert (=> d!129489 (=> res!716663 e!614186)))

(declare-fun lt!476849 () Bool)

(assert (=> d!129489 (= res!716663 (not lt!476849))))

(declare-fun lt!476851 () Bool)

(assert (=> d!129489 (= lt!476849 lt!476851)))

(declare-fun lt!476850 () Unit!35328)

(declare-fun e!614187 () Unit!35328)

(assert (=> d!129489 (= lt!476850 e!614187)))

(declare-fun c!107898 () Bool)

(assert (=> d!129489 (= c!107898 lt!476851)))

(declare-fun containsKey!579 (List!23262 (_ BitVec 64)) Bool)

(assert (=> d!129489 (= lt!476851 (containsKey!579 (toList!7350 lt!476824) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129489 (= (contains!6355 lt!476824 #b0000000000000000000000000000000000000000000000000000000000000000) lt!476849)))

(declare-fun b!1074723 () Bool)

(declare-fun lt!476848 () Unit!35328)

(assert (=> b!1074723 (= e!614187 lt!476848)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!411 (List!23262 (_ BitVec 64)) Unit!35328)

(assert (=> b!1074723 (= lt!476848 (lemmaContainsKeyImpliesGetValueByKeyDefined!411 (toList!7350 lt!476824) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!663 0))(
  ( (Some!662 (v!15673 V!39795)) (None!661) )
))
(declare-fun isDefined!451 (Option!663) Bool)

(declare-fun getValueByKey!612 (List!23262 (_ BitVec 64)) Option!663)

(assert (=> b!1074723 (isDefined!451 (getValueByKey!612 (toList!7350 lt!476824) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1074724 () Bool)

(declare-fun Unit!35330 () Unit!35328)

(assert (=> b!1074724 (= e!614187 Unit!35330)))

(declare-fun b!1074725 () Bool)

(assert (=> b!1074725 (= e!614186 (isDefined!451 (getValueByKey!612 (toList!7350 lt!476824) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!129489 c!107898) b!1074723))

(assert (= (and d!129489 (not c!107898)) b!1074724))

(assert (= (and d!129489 (not res!716663)) b!1074725))

(declare-fun m!993713 () Bool)

(assert (=> d!129489 m!993713))

(declare-fun m!993715 () Bool)

(assert (=> b!1074723 m!993715))

(declare-fun m!993717 () Bool)

(assert (=> b!1074723 m!993717))

(assert (=> b!1074723 m!993717))

(declare-fun m!993719 () Bool)

(assert (=> b!1074723 m!993719))

(assert (=> b!1074725 m!993717))

(assert (=> b!1074725 m!993717))

(assert (=> b!1074725 m!993719))

(assert (=> b!1074688 d!129489))

(declare-fun d!129491 () Bool)

(declare-fun e!614190 () Bool)

(assert (=> d!129491 e!614190))

(declare-fun res!716668 () Bool)

(assert (=> d!129491 (=> (not res!716668) (not e!614190))))

(declare-fun lt!476863 () ListLongMap!14669)

(assert (=> d!129491 (= res!716668 (contains!6355 lt!476863 (_1!8354 (tuple2!16689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun lt!476862 () List!23262)

(assert (=> d!129491 (= lt!476863 (ListLongMap!14670 lt!476862))))

(declare-fun lt!476860 () Unit!35328)

(declare-fun lt!476861 () Unit!35328)

(assert (=> d!129491 (= lt!476860 lt!476861)))

(assert (=> d!129491 (= (getValueByKey!612 lt!476862 (_1!8354 (tuple2!16689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))) (Some!662 (_2!8354 (tuple2!16689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun lemmaContainsTupThenGetReturnValue!289 (List!23262 (_ BitVec 64) V!39795) Unit!35328)

(assert (=> d!129491 (= lt!476861 (lemmaContainsTupThenGetReturnValue!289 lt!476862 (_1!8354 (tuple2!16689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (_2!8354 (tuple2!16689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun insertStrictlySorted!381 (List!23262 (_ BitVec 64) V!39795) List!23262)

(assert (=> d!129491 (= lt!476862 (insertStrictlySorted!381 (toList!7350 lt!476824) (_1!8354 (tuple2!16689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (_2!8354 (tuple2!16689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(assert (=> d!129491 (= (+!3178 lt!476824 (tuple2!16689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) lt!476863)))

(declare-fun b!1074730 () Bool)

(declare-fun res!716669 () Bool)

(assert (=> b!1074730 (=> (not res!716669) (not e!614190))))

(assert (=> b!1074730 (= res!716669 (= (getValueByKey!612 (toList!7350 lt!476863) (_1!8354 (tuple2!16689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))) (Some!662 (_2!8354 (tuple2!16689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))))

(declare-fun b!1074731 () Bool)

(declare-fun contains!6356 (List!23262 tuple2!16688) Bool)

(assert (=> b!1074731 (= e!614190 (contains!6356 (toList!7350 lt!476863) (tuple2!16689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(assert (= (and d!129491 res!716668) b!1074730))

(assert (= (and b!1074730 res!716669) b!1074731))

(declare-fun m!993721 () Bool)

(assert (=> d!129491 m!993721))

(declare-fun m!993723 () Bool)

(assert (=> d!129491 m!993723))

(declare-fun m!993725 () Bool)

(assert (=> d!129491 m!993725))

(declare-fun m!993727 () Bool)

(assert (=> d!129491 m!993727))

(declare-fun m!993729 () Bool)

(assert (=> b!1074730 m!993729))

(declare-fun m!993731 () Bool)

(assert (=> b!1074731 m!993731))

(assert (=> b!1074688 d!129491))

(declare-fun b!1074775 () Bool)

(declare-fun e!614226 () Bool)

(declare-fun e!614222 () Bool)

(assert (=> b!1074775 (= e!614226 e!614222)))

(declare-fun res!716689 () Bool)

(declare-fun call!45448 () Bool)

(assert (=> b!1074775 (= res!716689 call!45448)))

(assert (=> b!1074775 (=> (not res!716689) (not e!614222))))

(declare-fun b!1074776 () Bool)

(declare-fun e!614220 () Bool)

(declare-fun lt!476925 () ListLongMap!14669)

(declare-fun apply!972 (ListLongMap!14669 (_ BitVec 64)) V!39795)

(assert (=> b!1074776 (= e!614220 (= (apply!972 lt!476925 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!47))))

(declare-fun b!1074777 () Bool)

(declare-fun e!614228 () Bool)

(declare-fun e!614224 () Bool)

(assert (=> b!1074777 (= e!614228 e!614224)))

(declare-fun res!716694 () Bool)

(assert (=> b!1074777 (=> (not res!716694) (not e!614224))))

(assert (=> b!1074777 (= res!716694 (contains!6355 lt!476925 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074777 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(declare-fun bm!45445 () Bool)

(declare-fun call!45453 () ListLongMap!14669)

(declare-fun call!45450 () ListLongMap!14669)

(assert (=> bm!45445 (= call!45453 call!45450)))

(declare-fun b!1074778 () Bool)

(declare-fun res!716692 () Bool)

(declare-fun e!614218 () Bool)

(assert (=> b!1074778 (=> (not res!716692) (not e!614218))))

(declare-fun e!614223 () Bool)

(assert (=> b!1074778 (= res!716692 e!614223)))

(declare-fun c!107912 () Bool)

(assert (=> b!1074778 (= c!107912 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1074779 () Bool)

(declare-fun e!614227 () Unit!35328)

(declare-fun Unit!35331 () Unit!35328)

(assert (=> b!1074779 (= e!614227 Unit!35331)))

(declare-fun bm!45446 () Bool)

(assert (=> bm!45446 (= call!45448 (contains!6355 lt!476925 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1074780 () Bool)

(declare-fun e!614217 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1074780 (= e!614217 (validKeyInArray!0 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45447 () Bool)

(declare-fun call!45454 () ListLongMap!14669)

(assert (=> bm!45447 (= call!45454 call!45453)))

(declare-fun b!1074781 () Bool)

(declare-fun e!614229 () ListLongMap!14669)

(declare-fun call!45452 () ListLongMap!14669)

(assert (=> b!1074781 (= e!614229 call!45452)))

(declare-fun b!1074782 () Bool)

(assert (=> b!1074782 (= e!614229 call!45454)))

(declare-fun b!1074783 () Bool)

(declare-fun call!45451 () Bool)

(assert (=> b!1074783 (= e!614223 (not call!45451))))

(declare-fun b!1074784 () Bool)

(assert (=> b!1074784 (= e!614222 (= (apply!972 lt!476925 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1074785 () Bool)

(declare-fun res!716695 () Bool)

(assert (=> b!1074785 (=> (not res!716695) (not e!614218))))

(assert (=> b!1074785 (= res!716695 e!614228)))

(declare-fun res!716693 () Bool)

(assert (=> b!1074785 (=> res!716693 e!614228)))

(declare-fun e!614221 () Bool)

(assert (=> b!1074785 (= res!716693 (not e!614221))))

(declare-fun res!716688 () Bool)

(assert (=> b!1074785 (=> (not res!716688) (not e!614221))))

(assert (=> b!1074785 (= res!716688 (bvslt #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(declare-fun d!129493 () Bool)

(assert (=> d!129493 e!614218))

(declare-fun res!716690 () Bool)

(assert (=> d!129493 (=> (not res!716690) (not e!614218))))

(assert (=> d!129493 (= res!716690 (or (bvsge #b00000000000000000000000000000000 (size!33682 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33682 _keys!1163)))))))

(declare-fun lt!476918 () ListLongMap!14669)

(assert (=> d!129493 (= lt!476925 lt!476918)))

(declare-fun lt!476924 () Unit!35328)

(assert (=> d!129493 (= lt!476924 e!614227)))

(declare-fun c!107913 () Bool)

(assert (=> d!129493 (= c!107913 e!614217)))

(declare-fun res!716691 () Bool)

(assert (=> d!129493 (=> (not res!716691) (not e!614217))))

(assert (=> d!129493 (= res!716691 (bvslt #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(declare-fun e!614219 () ListLongMap!14669)

(assert (=> d!129493 (= lt!476918 e!614219)))

(declare-fun c!107915 () Bool)

(assert (=> d!129493 (= c!107915 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129493 (validMask!0 mask!1515)))

(assert (=> d!129493 (= (getCurrentListMap!4188 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476925)))

(declare-fun b!1074774 () Bool)

(declare-fun get!17238 (ValueCell!12294 V!39795) V!39795)

(declare-fun dynLambda!2048 (Int (_ BitVec 64)) V!39795)

(assert (=> b!1074774 (= e!614224 (= (apply!972 lt!476925 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)) (get!17238 (select (arr!33146 _values!955) #b00000000000000000000000000000000) (dynLambda!2048 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1074774 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33683 _values!955)))))

(assert (=> b!1074774 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(declare-fun b!1074786 () Bool)

(assert (=> b!1074786 (= e!614226 (not call!45448))))

(declare-fun bm!45448 () Bool)

(declare-fun call!45449 () ListLongMap!14669)

(assert (=> bm!45448 (= call!45452 call!45449)))

(declare-fun b!1074787 () Bool)

(declare-fun lt!476908 () Unit!35328)

(assert (=> b!1074787 (= e!614227 lt!476908)))

(declare-fun lt!476922 () ListLongMap!14669)

(assert (=> b!1074787 (= lt!476922 (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476914 () (_ BitVec 64))

(assert (=> b!1074787 (= lt!476914 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476927 () (_ BitVec 64))

(assert (=> b!1074787 (= lt!476927 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476909 () Unit!35328)

(declare-fun addStillContains!654 (ListLongMap!14669 (_ BitVec 64) V!39795 (_ BitVec 64)) Unit!35328)

(assert (=> b!1074787 (= lt!476909 (addStillContains!654 lt!476922 lt!476914 zeroValueAfter!47 lt!476927))))

(assert (=> b!1074787 (contains!6355 (+!3178 lt!476922 (tuple2!16689 lt!476914 zeroValueAfter!47)) lt!476927)))

(declare-fun lt!476912 () Unit!35328)

(assert (=> b!1074787 (= lt!476912 lt!476909)))

(declare-fun lt!476913 () ListLongMap!14669)

(assert (=> b!1074787 (= lt!476913 (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476928 () (_ BitVec 64))

(assert (=> b!1074787 (= lt!476928 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476929 () (_ BitVec 64))

(assert (=> b!1074787 (= lt!476929 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476916 () Unit!35328)

(declare-fun addApplyDifferent!506 (ListLongMap!14669 (_ BitVec 64) V!39795 (_ BitVec 64)) Unit!35328)

(assert (=> b!1074787 (= lt!476916 (addApplyDifferent!506 lt!476913 lt!476928 minValue!907 lt!476929))))

(assert (=> b!1074787 (= (apply!972 (+!3178 lt!476913 (tuple2!16689 lt!476928 minValue!907)) lt!476929) (apply!972 lt!476913 lt!476929))))

(declare-fun lt!476926 () Unit!35328)

(assert (=> b!1074787 (= lt!476926 lt!476916)))

(declare-fun lt!476921 () ListLongMap!14669)

(assert (=> b!1074787 (= lt!476921 (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476910 () (_ BitVec 64))

(assert (=> b!1074787 (= lt!476910 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476917 () (_ BitVec 64))

(assert (=> b!1074787 (= lt!476917 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476919 () Unit!35328)

(assert (=> b!1074787 (= lt!476919 (addApplyDifferent!506 lt!476921 lt!476910 zeroValueAfter!47 lt!476917))))

(assert (=> b!1074787 (= (apply!972 (+!3178 lt!476921 (tuple2!16689 lt!476910 zeroValueAfter!47)) lt!476917) (apply!972 lt!476921 lt!476917))))

(declare-fun lt!476911 () Unit!35328)

(assert (=> b!1074787 (= lt!476911 lt!476919)))

(declare-fun lt!476920 () ListLongMap!14669)

(assert (=> b!1074787 (= lt!476920 (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476923 () (_ BitVec 64))

(assert (=> b!1074787 (= lt!476923 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476915 () (_ BitVec 64))

(assert (=> b!1074787 (= lt!476915 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1074787 (= lt!476908 (addApplyDifferent!506 lt!476920 lt!476923 minValue!907 lt!476915))))

(assert (=> b!1074787 (= (apply!972 (+!3178 lt!476920 (tuple2!16689 lt!476923 minValue!907)) lt!476915) (apply!972 lt!476920 lt!476915))))

(declare-fun b!1074788 () Bool)

(declare-fun e!614225 () ListLongMap!14669)

(assert (=> b!1074788 (= e!614219 e!614225)))

(declare-fun c!107916 () Bool)

(assert (=> b!1074788 (= c!107916 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1074789 () Bool)

(assert (=> b!1074789 (= e!614221 (validKeyInArray!0 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45449 () Bool)

(assert (=> bm!45449 (= call!45451 (contains!6355 lt!476925 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!45450 () Bool)

(assert (=> bm!45450 (= call!45450 (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1074790 () Bool)

(assert (=> b!1074790 (= e!614218 e!614226)))

(declare-fun c!107914 () Bool)

(assert (=> b!1074790 (= c!107914 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1074791 () Bool)

(assert (=> b!1074791 (= e!614225 call!45452)))

(declare-fun b!1074792 () Bool)

(assert (=> b!1074792 (= e!614219 (+!3178 call!45449 (tuple2!16689 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun b!1074793 () Bool)

(declare-fun c!107911 () Bool)

(assert (=> b!1074793 (= c!107911 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1074793 (= e!614225 e!614229)))

(declare-fun b!1074794 () Bool)

(assert (=> b!1074794 (= e!614223 e!614220)))

(declare-fun res!716696 () Bool)

(assert (=> b!1074794 (= res!716696 call!45451)))

(assert (=> b!1074794 (=> (not res!716696) (not e!614220))))

(declare-fun bm!45451 () Bool)

(assert (=> bm!45451 (= call!45449 (+!3178 (ite c!107915 call!45450 (ite c!107916 call!45453 call!45454)) (ite (or c!107915 c!107916) (tuple2!16689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!47) (tuple2!16689 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(assert (= (and d!129493 c!107915) b!1074792))

(assert (= (and d!129493 (not c!107915)) b!1074788))

(assert (= (and b!1074788 c!107916) b!1074791))

(assert (= (and b!1074788 (not c!107916)) b!1074793))

(assert (= (and b!1074793 c!107911) b!1074781))

(assert (= (and b!1074793 (not c!107911)) b!1074782))

(assert (= (or b!1074781 b!1074782) bm!45447))

(assert (= (or b!1074791 bm!45447) bm!45445))

(assert (= (or b!1074791 b!1074781) bm!45448))

(assert (= (or b!1074792 bm!45445) bm!45450))

(assert (= (or b!1074792 bm!45448) bm!45451))

(assert (= (and d!129493 res!716691) b!1074780))

(assert (= (and d!129493 c!107913) b!1074787))

(assert (= (and d!129493 (not c!107913)) b!1074779))

(assert (= (and d!129493 res!716690) b!1074785))

(assert (= (and b!1074785 res!716688) b!1074789))

(assert (= (and b!1074785 (not res!716693)) b!1074777))

(assert (= (and b!1074777 res!716694) b!1074774))

(assert (= (and b!1074785 res!716695) b!1074778))

(assert (= (and b!1074778 c!107912) b!1074794))

(assert (= (and b!1074778 (not c!107912)) b!1074783))

(assert (= (and b!1074794 res!716696) b!1074776))

(assert (= (or b!1074794 b!1074783) bm!45449))

(assert (= (and b!1074778 res!716692) b!1074790))

(assert (= (and b!1074790 c!107914) b!1074775))

(assert (= (and b!1074790 (not c!107914)) b!1074786))

(assert (= (and b!1074775 res!716689) b!1074784))

(assert (= (or b!1074775 b!1074786) bm!45446))

(declare-fun b_lambda!16863 () Bool)

(assert (=> (not b_lambda!16863) (not b!1074774)))

(declare-fun t!32619 () Bool)

(declare-fun tb!7177 () Bool)

(assert (=> (and start!95104 (= defaultEntry!963 defaultEntry!963) t!32619) tb!7177))

(declare-fun result!14823 () Bool)

(assert (=> tb!7177 (= result!14823 tp_is_empty!25995)))

(assert (=> b!1074774 t!32619))

(declare-fun b_and!35115 () Bool)

(assert (= b_and!35111 (and (=> t!32619 result!14823) b_and!35115)))

(declare-fun m!993733 () Bool)

(assert (=> bm!45446 m!993733))

(declare-fun m!993735 () Bool)

(assert (=> bm!45449 m!993735))

(declare-fun m!993737 () Bool)

(assert (=> bm!45451 m!993737))

(declare-fun m!993739 () Bool)

(assert (=> b!1074792 m!993739))

(assert (=> d!129493 m!993677))

(declare-fun m!993741 () Bool)

(assert (=> b!1074780 m!993741))

(assert (=> b!1074780 m!993741))

(declare-fun m!993743 () Bool)

(assert (=> b!1074780 m!993743))

(assert (=> bm!45450 m!993665))

(assert (=> b!1074789 m!993741))

(assert (=> b!1074789 m!993741))

(assert (=> b!1074789 m!993743))

(declare-fun m!993745 () Bool)

(assert (=> b!1074776 m!993745))

(declare-fun m!993747 () Bool)

(assert (=> b!1074784 m!993747))

(assert (=> b!1074777 m!993741))

(assert (=> b!1074777 m!993741))

(declare-fun m!993749 () Bool)

(assert (=> b!1074777 m!993749))

(declare-fun m!993751 () Bool)

(assert (=> b!1074774 m!993751))

(declare-fun m!993753 () Bool)

(assert (=> b!1074774 m!993753))

(assert (=> b!1074774 m!993751))

(declare-fun m!993755 () Bool)

(assert (=> b!1074774 m!993755))

(assert (=> b!1074774 m!993741))

(declare-fun m!993757 () Bool)

(assert (=> b!1074774 m!993757))

(assert (=> b!1074774 m!993741))

(assert (=> b!1074774 m!993753))

(declare-fun m!993759 () Bool)

(assert (=> b!1074787 m!993759))

(declare-fun m!993761 () Bool)

(assert (=> b!1074787 m!993761))

(declare-fun m!993763 () Bool)

(assert (=> b!1074787 m!993763))

(declare-fun m!993765 () Bool)

(assert (=> b!1074787 m!993765))

(declare-fun m!993767 () Bool)

(assert (=> b!1074787 m!993767))

(declare-fun m!993769 () Bool)

(assert (=> b!1074787 m!993769))

(declare-fun m!993771 () Bool)

(assert (=> b!1074787 m!993771))

(declare-fun m!993773 () Bool)

(assert (=> b!1074787 m!993773))

(declare-fun m!993775 () Bool)

(assert (=> b!1074787 m!993775))

(assert (=> b!1074787 m!993769))

(declare-fun m!993777 () Bool)

(assert (=> b!1074787 m!993777))

(assert (=> b!1074787 m!993665))

(assert (=> b!1074787 m!993767))

(declare-fun m!993779 () Bool)

(assert (=> b!1074787 m!993779))

(declare-fun m!993781 () Bool)

(assert (=> b!1074787 m!993781))

(declare-fun m!993783 () Bool)

(assert (=> b!1074787 m!993783))

(assert (=> b!1074787 m!993741))

(assert (=> b!1074787 m!993781))

(declare-fun m!993785 () Bool)

(assert (=> b!1074787 m!993785))

(declare-fun m!993787 () Bool)

(assert (=> b!1074787 m!993787))

(assert (=> b!1074787 m!993763))

(assert (=> b!1074688 d!129493))

(declare-fun b!1074798 () Bool)

(declare-fun e!614239 () Bool)

(declare-fun e!614235 () Bool)

(assert (=> b!1074798 (= e!614239 e!614235)))

(declare-fun res!716698 () Bool)

(declare-fun call!45455 () Bool)

(assert (=> b!1074798 (= res!716698 call!45455)))

(assert (=> b!1074798 (=> (not res!716698) (not e!614235))))

(declare-fun b!1074799 () Bool)

(declare-fun e!614233 () Bool)

(declare-fun lt!476947 () ListLongMap!14669)

(assert (=> b!1074799 (= e!614233 (= (apply!972 lt!476947 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(declare-fun b!1074800 () Bool)

(declare-fun e!614241 () Bool)

(declare-fun e!614237 () Bool)

(assert (=> b!1074800 (= e!614241 e!614237)))

(declare-fun res!716703 () Bool)

(assert (=> b!1074800 (=> (not res!716703) (not e!614237))))

(assert (=> b!1074800 (= res!716703 (contains!6355 lt!476947 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074800 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(declare-fun bm!45452 () Bool)

(declare-fun call!45460 () ListLongMap!14669)

(declare-fun call!45457 () ListLongMap!14669)

(assert (=> bm!45452 (= call!45460 call!45457)))

(declare-fun b!1074801 () Bool)

(declare-fun res!716701 () Bool)

(declare-fun e!614231 () Bool)

(assert (=> b!1074801 (=> (not res!716701) (not e!614231))))

(declare-fun e!614236 () Bool)

(assert (=> b!1074801 (= res!716701 e!614236)))

(declare-fun c!107918 () Bool)

(assert (=> b!1074801 (= c!107918 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1074802 () Bool)

(declare-fun e!614240 () Unit!35328)

(declare-fun Unit!35332 () Unit!35328)

(assert (=> b!1074802 (= e!614240 Unit!35332)))

(declare-fun bm!45453 () Bool)

(assert (=> bm!45453 (= call!45455 (contains!6355 lt!476947 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1074803 () Bool)

(declare-fun e!614230 () Bool)

(assert (=> b!1074803 (= e!614230 (validKeyInArray!0 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45454 () Bool)

(declare-fun call!45461 () ListLongMap!14669)

(assert (=> bm!45454 (= call!45461 call!45460)))

(declare-fun b!1074804 () Bool)

(declare-fun e!614242 () ListLongMap!14669)

(declare-fun call!45459 () ListLongMap!14669)

(assert (=> b!1074804 (= e!614242 call!45459)))

(declare-fun b!1074805 () Bool)

(assert (=> b!1074805 (= e!614242 call!45461)))

(declare-fun b!1074806 () Bool)

(declare-fun call!45458 () Bool)

(assert (=> b!1074806 (= e!614236 (not call!45458))))

(declare-fun b!1074807 () Bool)

(assert (=> b!1074807 (= e!614235 (= (apply!972 lt!476947 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1074808 () Bool)

(declare-fun res!716704 () Bool)

(assert (=> b!1074808 (=> (not res!716704) (not e!614231))))

(assert (=> b!1074808 (= res!716704 e!614241)))

(declare-fun res!716702 () Bool)

(assert (=> b!1074808 (=> res!716702 e!614241)))

(declare-fun e!614234 () Bool)

(assert (=> b!1074808 (= res!716702 (not e!614234))))

(declare-fun res!716697 () Bool)

(assert (=> b!1074808 (=> (not res!716697) (not e!614234))))

(assert (=> b!1074808 (= res!716697 (bvslt #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(declare-fun d!129495 () Bool)

(assert (=> d!129495 e!614231))

(declare-fun res!716699 () Bool)

(assert (=> d!129495 (=> (not res!716699) (not e!614231))))

(assert (=> d!129495 (= res!716699 (or (bvsge #b00000000000000000000000000000000 (size!33682 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33682 _keys!1163)))))))

(declare-fun lt!476940 () ListLongMap!14669)

(assert (=> d!129495 (= lt!476947 lt!476940)))

(declare-fun lt!476946 () Unit!35328)

(assert (=> d!129495 (= lt!476946 e!614240)))

(declare-fun c!107919 () Bool)

(assert (=> d!129495 (= c!107919 e!614230)))

(declare-fun res!716700 () Bool)

(assert (=> d!129495 (=> (not res!716700) (not e!614230))))

(assert (=> d!129495 (= res!716700 (bvslt #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(declare-fun e!614232 () ListLongMap!14669)

(assert (=> d!129495 (= lt!476940 e!614232)))

(declare-fun c!107921 () Bool)

(assert (=> d!129495 (= c!107921 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129495 (validMask!0 mask!1515)))

(assert (=> d!129495 (= (getCurrentListMap!4188 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476947)))

(declare-fun b!1074797 () Bool)

(assert (=> b!1074797 (= e!614237 (= (apply!972 lt!476947 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)) (get!17238 (select (arr!33146 _values!955) #b00000000000000000000000000000000) (dynLambda!2048 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1074797 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33683 _values!955)))))

(assert (=> b!1074797 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(declare-fun b!1074809 () Bool)

(assert (=> b!1074809 (= e!614239 (not call!45455))))

(declare-fun bm!45455 () Bool)

(declare-fun call!45456 () ListLongMap!14669)

(assert (=> bm!45455 (= call!45459 call!45456)))

(declare-fun b!1074810 () Bool)

(declare-fun lt!476930 () Unit!35328)

(assert (=> b!1074810 (= e!614240 lt!476930)))

(declare-fun lt!476944 () ListLongMap!14669)

(assert (=> b!1074810 (= lt!476944 (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476936 () (_ BitVec 64))

(assert (=> b!1074810 (= lt!476936 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476949 () (_ BitVec 64))

(assert (=> b!1074810 (= lt!476949 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476931 () Unit!35328)

(assert (=> b!1074810 (= lt!476931 (addStillContains!654 lt!476944 lt!476936 zeroValueBefore!47 lt!476949))))

(assert (=> b!1074810 (contains!6355 (+!3178 lt!476944 (tuple2!16689 lt!476936 zeroValueBefore!47)) lt!476949)))

(declare-fun lt!476934 () Unit!35328)

(assert (=> b!1074810 (= lt!476934 lt!476931)))

(declare-fun lt!476935 () ListLongMap!14669)

(assert (=> b!1074810 (= lt!476935 (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476950 () (_ BitVec 64))

(assert (=> b!1074810 (= lt!476950 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476951 () (_ BitVec 64))

(assert (=> b!1074810 (= lt!476951 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476938 () Unit!35328)

(assert (=> b!1074810 (= lt!476938 (addApplyDifferent!506 lt!476935 lt!476950 minValue!907 lt!476951))))

(assert (=> b!1074810 (= (apply!972 (+!3178 lt!476935 (tuple2!16689 lt!476950 minValue!907)) lt!476951) (apply!972 lt!476935 lt!476951))))

(declare-fun lt!476948 () Unit!35328)

(assert (=> b!1074810 (= lt!476948 lt!476938)))

(declare-fun lt!476943 () ListLongMap!14669)

(assert (=> b!1074810 (= lt!476943 (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476932 () (_ BitVec 64))

(assert (=> b!1074810 (= lt!476932 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476939 () (_ BitVec 64))

(assert (=> b!1074810 (= lt!476939 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476941 () Unit!35328)

(assert (=> b!1074810 (= lt!476941 (addApplyDifferent!506 lt!476943 lt!476932 zeroValueBefore!47 lt!476939))))

(assert (=> b!1074810 (= (apply!972 (+!3178 lt!476943 (tuple2!16689 lt!476932 zeroValueBefore!47)) lt!476939) (apply!972 lt!476943 lt!476939))))

(declare-fun lt!476933 () Unit!35328)

(assert (=> b!1074810 (= lt!476933 lt!476941)))

(declare-fun lt!476942 () ListLongMap!14669)

(assert (=> b!1074810 (= lt!476942 (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476945 () (_ BitVec 64))

(assert (=> b!1074810 (= lt!476945 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476937 () (_ BitVec 64))

(assert (=> b!1074810 (= lt!476937 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1074810 (= lt!476930 (addApplyDifferent!506 lt!476942 lt!476945 minValue!907 lt!476937))))

(assert (=> b!1074810 (= (apply!972 (+!3178 lt!476942 (tuple2!16689 lt!476945 minValue!907)) lt!476937) (apply!972 lt!476942 lt!476937))))

(declare-fun b!1074811 () Bool)

(declare-fun e!614238 () ListLongMap!14669)

(assert (=> b!1074811 (= e!614232 e!614238)))

(declare-fun c!107922 () Bool)

(assert (=> b!1074811 (= c!107922 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1074812 () Bool)

(assert (=> b!1074812 (= e!614234 (validKeyInArray!0 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45456 () Bool)

(assert (=> bm!45456 (= call!45458 (contains!6355 lt!476947 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!45457 () Bool)

(assert (=> bm!45457 (= call!45457 (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1074813 () Bool)

(assert (=> b!1074813 (= e!614231 e!614239)))

(declare-fun c!107920 () Bool)

(assert (=> b!1074813 (= c!107920 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1074814 () Bool)

(assert (=> b!1074814 (= e!614238 call!45459)))

(declare-fun b!1074815 () Bool)

(assert (=> b!1074815 (= e!614232 (+!3178 call!45456 (tuple2!16689 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun b!1074816 () Bool)

(declare-fun c!107917 () Bool)

(assert (=> b!1074816 (= c!107917 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1074816 (= e!614238 e!614242)))

(declare-fun b!1074817 () Bool)

(assert (=> b!1074817 (= e!614236 e!614233)))

(declare-fun res!716705 () Bool)

(assert (=> b!1074817 (= res!716705 call!45458)))

(assert (=> b!1074817 (=> (not res!716705) (not e!614233))))

(declare-fun bm!45458 () Bool)

(assert (=> bm!45458 (= call!45456 (+!3178 (ite c!107921 call!45457 (ite c!107922 call!45460 call!45461)) (ite (or c!107921 c!107922) (tuple2!16689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16689 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(assert (= (and d!129495 c!107921) b!1074815))

(assert (= (and d!129495 (not c!107921)) b!1074811))

(assert (= (and b!1074811 c!107922) b!1074814))

(assert (= (and b!1074811 (not c!107922)) b!1074816))

(assert (= (and b!1074816 c!107917) b!1074804))

(assert (= (and b!1074816 (not c!107917)) b!1074805))

(assert (= (or b!1074804 b!1074805) bm!45454))

(assert (= (or b!1074814 bm!45454) bm!45452))

(assert (= (or b!1074814 b!1074804) bm!45455))

(assert (= (or b!1074815 bm!45452) bm!45457))

(assert (= (or b!1074815 bm!45455) bm!45458))

(assert (= (and d!129495 res!716700) b!1074803))

(assert (= (and d!129495 c!107919) b!1074810))

(assert (= (and d!129495 (not c!107919)) b!1074802))

(assert (= (and d!129495 res!716699) b!1074808))

(assert (= (and b!1074808 res!716697) b!1074812))

(assert (= (and b!1074808 (not res!716702)) b!1074800))

(assert (= (and b!1074800 res!716703) b!1074797))

(assert (= (and b!1074808 res!716704) b!1074801))

(assert (= (and b!1074801 c!107918) b!1074817))

(assert (= (and b!1074801 (not c!107918)) b!1074806))

(assert (= (and b!1074817 res!716705) b!1074799))

(assert (= (or b!1074817 b!1074806) bm!45456))

(assert (= (and b!1074801 res!716701) b!1074813))

(assert (= (and b!1074813 c!107920) b!1074798))

(assert (= (and b!1074813 (not c!107920)) b!1074809))

(assert (= (and b!1074798 res!716698) b!1074807))

(assert (= (or b!1074798 b!1074809) bm!45453))

(declare-fun b_lambda!16865 () Bool)

(assert (=> (not b_lambda!16865) (not b!1074797)))

(assert (=> b!1074797 t!32619))

(declare-fun b_and!35117 () Bool)

(assert (= b_and!35115 (and (=> t!32619 result!14823) b_and!35117)))

(declare-fun m!993789 () Bool)

(assert (=> bm!45453 m!993789))

(declare-fun m!993791 () Bool)

(assert (=> bm!45456 m!993791))

(declare-fun m!993793 () Bool)

(assert (=> bm!45458 m!993793))

(declare-fun m!993795 () Bool)

(assert (=> b!1074815 m!993795))

(assert (=> d!129495 m!993677))

(assert (=> b!1074803 m!993741))

(assert (=> b!1074803 m!993741))

(assert (=> b!1074803 m!993743))

(assert (=> bm!45457 m!993667))

(assert (=> b!1074812 m!993741))

(assert (=> b!1074812 m!993741))

(assert (=> b!1074812 m!993743))

(declare-fun m!993797 () Bool)

(assert (=> b!1074799 m!993797))

(declare-fun m!993799 () Bool)

(assert (=> b!1074807 m!993799))

(assert (=> b!1074800 m!993741))

(assert (=> b!1074800 m!993741))

(declare-fun m!993801 () Bool)

(assert (=> b!1074800 m!993801))

(assert (=> b!1074797 m!993751))

(assert (=> b!1074797 m!993753))

(assert (=> b!1074797 m!993751))

(assert (=> b!1074797 m!993755))

(assert (=> b!1074797 m!993741))

(declare-fun m!993803 () Bool)

(assert (=> b!1074797 m!993803))

(assert (=> b!1074797 m!993741))

(assert (=> b!1074797 m!993753))

(declare-fun m!993805 () Bool)

(assert (=> b!1074810 m!993805))

(declare-fun m!993807 () Bool)

(assert (=> b!1074810 m!993807))

(declare-fun m!993809 () Bool)

(assert (=> b!1074810 m!993809))

(declare-fun m!993811 () Bool)

(assert (=> b!1074810 m!993811))

(declare-fun m!993813 () Bool)

(assert (=> b!1074810 m!993813))

(declare-fun m!993815 () Bool)

(assert (=> b!1074810 m!993815))

(declare-fun m!993817 () Bool)

(assert (=> b!1074810 m!993817))

(declare-fun m!993819 () Bool)

(assert (=> b!1074810 m!993819))

(declare-fun m!993821 () Bool)

(assert (=> b!1074810 m!993821))

(assert (=> b!1074810 m!993815))

(declare-fun m!993823 () Bool)

(assert (=> b!1074810 m!993823))

(assert (=> b!1074810 m!993667))

(assert (=> b!1074810 m!993813))

(declare-fun m!993825 () Bool)

(assert (=> b!1074810 m!993825))

(declare-fun m!993827 () Bool)

(assert (=> b!1074810 m!993827))

(declare-fun m!993829 () Bool)

(assert (=> b!1074810 m!993829))

(assert (=> b!1074810 m!993741))

(assert (=> b!1074810 m!993827))

(declare-fun m!993831 () Bool)

(assert (=> b!1074810 m!993831))

(declare-fun m!993833 () Bool)

(assert (=> b!1074810 m!993833))

(assert (=> b!1074810 m!993809))

(assert (=> b!1074688 d!129495))

(declare-fun d!129497 () Bool)

(assert (=> d!129497 (= (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476954 () Unit!35328)

(declare-fun choose!1758 (array!68920 array!68922 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39795 V!39795 V!39795 V!39795 (_ BitVec 32) Int) Unit!35328)

(assert (=> d!129497 (= lt!476954 (choose!1758 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!129497 (validMask!0 mask!1515)))

(assert (=> d!129497 (= (lemmaNoChangeToArrayThenSameMapNoExtras!896 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476954)))

(declare-fun bs!31665 () Bool)

(assert (= bs!31665 d!129497))

(assert (=> bs!31665 m!993667))

(assert (=> bs!31665 m!993665))

(declare-fun m!993835 () Bool)

(assert (=> bs!31665 m!993835))

(assert (=> bs!31665 m!993677))

(assert (=> b!1074683 d!129497))

(declare-fun b!1074842 () Bool)

(declare-fun e!614259 () ListLongMap!14669)

(assert (=> b!1074842 (= e!614259 (ListLongMap!14670 Nil!23259))))

(declare-fun b!1074843 () Bool)

(declare-fun e!614262 () Bool)

(declare-fun e!614260 () Bool)

(assert (=> b!1074843 (= e!614262 e!614260)))

(assert (=> b!1074843 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(declare-fun res!716714 () Bool)

(declare-fun lt!476972 () ListLongMap!14669)

(assert (=> b!1074843 (= res!716714 (contains!6355 lt!476972 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074843 (=> (not res!716714) (not e!614260))))

(declare-fun b!1074844 () Bool)

(declare-fun e!614263 () Bool)

(assert (=> b!1074844 (= e!614262 e!614263)))

(declare-fun c!107933 () Bool)

(assert (=> b!1074844 (= c!107933 (bvslt #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(declare-fun b!1074845 () Bool)

(declare-fun isEmpty!958 (ListLongMap!14669) Bool)

(assert (=> b!1074845 (= e!614263 (isEmpty!958 lt!476972))))

(declare-fun b!1074846 () Bool)

(declare-fun e!614257 () Bool)

(assert (=> b!1074846 (= e!614257 (validKeyInArray!0 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074846 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!129499 () Bool)

(declare-fun e!614261 () Bool)

(assert (=> d!129499 e!614261))

(declare-fun res!716717 () Bool)

(assert (=> d!129499 (=> (not res!716717) (not e!614261))))

(assert (=> d!129499 (= res!716717 (not (contains!6355 lt!476972 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129499 (= lt!476972 e!614259)))

(declare-fun c!107932 () Bool)

(assert (=> d!129499 (= c!107932 (bvsge #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(assert (=> d!129499 (validMask!0 mask!1515)))

(assert (=> d!129499 (= (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476972)))

(declare-fun b!1074847 () Bool)

(declare-fun e!614258 () ListLongMap!14669)

(assert (=> b!1074847 (= e!614259 e!614258)))

(declare-fun c!107934 () Bool)

(assert (=> b!1074847 (= c!107934 (validKeyInArray!0 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074848 () Bool)

(assert (=> b!1074848 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(assert (=> b!1074848 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33683 _values!955)))))

(assert (=> b!1074848 (= e!614260 (= (apply!972 lt!476972 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)) (get!17238 (select (arr!33146 _values!955) #b00000000000000000000000000000000) (dynLambda!2048 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1074849 () Bool)

(declare-fun lt!476973 () Unit!35328)

(declare-fun lt!476969 () Unit!35328)

(assert (=> b!1074849 (= lt!476973 lt!476969)))

(declare-fun lt!476970 () ListLongMap!14669)

(declare-fun lt!476974 () (_ BitVec 64))

(declare-fun lt!476971 () V!39795)

(declare-fun lt!476975 () (_ BitVec 64))

(assert (=> b!1074849 (not (contains!6355 (+!3178 lt!476970 (tuple2!16689 lt!476975 lt!476971)) lt!476974))))

(declare-fun addStillNotContains!267 (ListLongMap!14669 (_ BitVec 64) V!39795 (_ BitVec 64)) Unit!35328)

(assert (=> b!1074849 (= lt!476969 (addStillNotContains!267 lt!476970 lt!476975 lt!476971 lt!476974))))

(assert (=> b!1074849 (= lt!476974 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1074849 (= lt!476971 (get!17238 (select (arr!33146 _values!955) #b00000000000000000000000000000000) (dynLambda!2048 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1074849 (= lt!476975 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun call!45464 () ListLongMap!14669)

(assert (=> b!1074849 (= lt!476970 call!45464)))

(assert (=> b!1074849 (= e!614258 (+!3178 call!45464 (tuple2!16689 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000) (get!17238 (select (arr!33146 _values!955) #b00000000000000000000000000000000) (dynLambda!2048 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!45461 () Bool)

(assert (=> bm!45461 (= call!45464 (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1074850 () Bool)

(assert (=> b!1074850 (= e!614258 call!45464)))

(declare-fun b!1074851 () Bool)

(assert (=> b!1074851 (= e!614263 (= lt!476972 (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1074852 () Bool)

(declare-fun res!716715 () Bool)

(assert (=> b!1074852 (=> (not res!716715) (not e!614261))))

(assert (=> b!1074852 (= res!716715 (not (contains!6355 lt!476972 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1074853 () Bool)

(assert (=> b!1074853 (= e!614261 e!614262)))

(declare-fun c!107931 () Bool)

(assert (=> b!1074853 (= c!107931 e!614257)))

(declare-fun res!716716 () Bool)

(assert (=> b!1074853 (=> (not res!716716) (not e!614257))))

(assert (=> b!1074853 (= res!716716 (bvslt #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(assert (= (and d!129499 c!107932) b!1074842))

(assert (= (and d!129499 (not c!107932)) b!1074847))

(assert (= (and b!1074847 c!107934) b!1074849))

(assert (= (and b!1074847 (not c!107934)) b!1074850))

(assert (= (or b!1074849 b!1074850) bm!45461))

(assert (= (and d!129499 res!716717) b!1074852))

(assert (= (and b!1074852 res!716715) b!1074853))

(assert (= (and b!1074853 res!716716) b!1074846))

(assert (= (and b!1074853 c!107931) b!1074843))

(assert (= (and b!1074853 (not c!107931)) b!1074844))

(assert (= (and b!1074843 res!716714) b!1074848))

(assert (= (and b!1074844 c!107933) b!1074851))

(assert (= (and b!1074844 (not c!107933)) b!1074845))

(declare-fun b_lambda!16867 () Bool)

(assert (=> (not b_lambda!16867) (not b!1074848)))

(assert (=> b!1074848 t!32619))

(declare-fun b_and!35119 () Bool)

(assert (= b_and!35117 (and (=> t!32619 result!14823) b_and!35119)))

(declare-fun b_lambda!16869 () Bool)

(assert (=> (not b_lambda!16869) (not b!1074849)))

(assert (=> b!1074849 t!32619))

(declare-fun b_and!35121 () Bool)

(assert (= b_and!35119 (and (=> t!32619 result!14823) b_and!35121)))

(declare-fun m!993837 () Bool)

(assert (=> b!1074845 m!993837))

(declare-fun m!993839 () Bool)

(assert (=> d!129499 m!993839))

(assert (=> d!129499 m!993677))

(declare-fun m!993841 () Bool)

(assert (=> b!1074849 m!993841))

(declare-fun m!993843 () Bool)

(assert (=> b!1074849 m!993843))

(assert (=> b!1074849 m!993753))

(assert (=> b!1074849 m!993751))

(assert (=> b!1074849 m!993755))

(assert (=> b!1074849 m!993751))

(declare-fun m!993845 () Bool)

(assert (=> b!1074849 m!993845))

(assert (=> b!1074849 m!993741))

(assert (=> b!1074849 m!993845))

(declare-fun m!993847 () Bool)

(assert (=> b!1074849 m!993847))

(assert (=> b!1074849 m!993753))

(assert (=> b!1074847 m!993741))

(assert (=> b!1074847 m!993741))

(assert (=> b!1074847 m!993743))

(assert (=> b!1074846 m!993741))

(assert (=> b!1074846 m!993741))

(assert (=> b!1074846 m!993743))

(assert (=> b!1074848 m!993753))

(assert (=> b!1074848 m!993751))

(assert (=> b!1074848 m!993755))

(assert (=> b!1074848 m!993753))

(assert (=> b!1074848 m!993741))

(assert (=> b!1074848 m!993751))

(assert (=> b!1074848 m!993741))

(declare-fun m!993849 () Bool)

(assert (=> b!1074848 m!993849))

(declare-fun m!993851 () Bool)

(assert (=> b!1074851 m!993851))

(assert (=> b!1074843 m!993741))

(assert (=> b!1074843 m!993741))

(declare-fun m!993853 () Bool)

(assert (=> b!1074843 m!993853))

(declare-fun m!993855 () Bool)

(assert (=> b!1074852 m!993855))

(assert (=> bm!45461 m!993851))

(assert (=> b!1074683 d!129499))

(declare-fun b!1074854 () Bool)

(declare-fun e!614266 () ListLongMap!14669)

(assert (=> b!1074854 (= e!614266 (ListLongMap!14670 Nil!23259))))

(declare-fun b!1074855 () Bool)

(declare-fun e!614269 () Bool)

(declare-fun e!614267 () Bool)

(assert (=> b!1074855 (= e!614269 e!614267)))

(assert (=> b!1074855 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(declare-fun res!716718 () Bool)

(declare-fun lt!476979 () ListLongMap!14669)

(assert (=> b!1074855 (= res!716718 (contains!6355 lt!476979 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074855 (=> (not res!716718) (not e!614267))))

(declare-fun b!1074856 () Bool)

(declare-fun e!614270 () Bool)

(assert (=> b!1074856 (= e!614269 e!614270)))

(declare-fun c!107937 () Bool)

(assert (=> b!1074856 (= c!107937 (bvslt #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(declare-fun b!1074857 () Bool)

(assert (=> b!1074857 (= e!614270 (isEmpty!958 lt!476979))))

(declare-fun b!1074858 () Bool)

(declare-fun e!614264 () Bool)

(assert (=> b!1074858 (= e!614264 (validKeyInArray!0 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074858 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!129501 () Bool)

(declare-fun e!614268 () Bool)

(assert (=> d!129501 e!614268))

(declare-fun res!716721 () Bool)

(assert (=> d!129501 (=> (not res!716721) (not e!614268))))

(assert (=> d!129501 (= res!716721 (not (contains!6355 lt!476979 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129501 (= lt!476979 e!614266)))

(declare-fun c!107936 () Bool)

(assert (=> d!129501 (= c!107936 (bvsge #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(assert (=> d!129501 (validMask!0 mask!1515)))

(assert (=> d!129501 (= (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476979)))

(declare-fun b!1074859 () Bool)

(declare-fun e!614265 () ListLongMap!14669)

(assert (=> b!1074859 (= e!614266 e!614265)))

(declare-fun c!107938 () Bool)

(assert (=> b!1074859 (= c!107938 (validKeyInArray!0 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074860 () Bool)

(assert (=> b!1074860 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(assert (=> b!1074860 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33683 _values!955)))))

(assert (=> b!1074860 (= e!614267 (= (apply!972 lt!476979 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)) (get!17238 (select (arr!33146 _values!955) #b00000000000000000000000000000000) (dynLambda!2048 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1074861 () Bool)

(declare-fun lt!476980 () Unit!35328)

(declare-fun lt!476976 () Unit!35328)

(assert (=> b!1074861 (= lt!476980 lt!476976)))

(declare-fun lt!476982 () (_ BitVec 64))

(declare-fun lt!476981 () (_ BitVec 64))

(declare-fun lt!476977 () ListLongMap!14669)

(declare-fun lt!476978 () V!39795)

(assert (=> b!1074861 (not (contains!6355 (+!3178 lt!476977 (tuple2!16689 lt!476982 lt!476978)) lt!476981))))

(assert (=> b!1074861 (= lt!476976 (addStillNotContains!267 lt!476977 lt!476982 lt!476978 lt!476981))))

(assert (=> b!1074861 (= lt!476981 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1074861 (= lt!476978 (get!17238 (select (arr!33146 _values!955) #b00000000000000000000000000000000) (dynLambda!2048 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1074861 (= lt!476982 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun call!45465 () ListLongMap!14669)

(assert (=> b!1074861 (= lt!476977 call!45465)))

(assert (=> b!1074861 (= e!614265 (+!3178 call!45465 (tuple2!16689 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000) (get!17238 (select (arr!33146 _values!955) #b00000000000000000000000000000000) (dynLambda!2048 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!45462 () Bool)

(assert (=> bm!45462 (= call!45465 (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1074862 () Bool)

(assert (=> b!1074862 (= e!614265 call!45465)))

(declare-fun b!1074863 () Bool)

(assert (=> b!1074863 (= e!614270 (= lt!476979 (getCurrentListMapNoExtraKeys!3877 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1074864 () Bool)

(declare-fun res!716719 () Bool)

(assert (=> b!1074864 (=> (not res!716719) (not e!614268))))

(assert (=> b!1074864 (= res!716719 (not (contains!6355 lt!476979 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1074865 () Bool)

(assert (=> b!1074865 (= e!614268 e!614269)))

(declare-fun c!107935 () Bool)

(assert (=> b!1074865 (= c!107935 e!614264)))

(declare-fun res!716720 () Bool)

(assert (=> b!1074865 (=> (not res!716720) (not e!614264))))

(assert (=> b!1074865 (= res!716720 (bvslt #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(assert (= (and d!129501 c!107936) b!1074854))

(assert (= (and d!129501 (not c!107936)) b!1074859))

(assert (= (and b!1074859 c!107938) b!1074861))

(assert (= (and b!1074859 (not c!107938)) b!1074862))

(assert (= (or b!1074861 b!1074862) bm!45462))

(assert (= (and d!129501 res!716721) b!1074864))

(assert (= (and b!1074864 res!716719) b!1074865))

(assert (= (and b!1074865 res!716720) b!1074858))

(assert (= (and b!1074865 c!107935) b!1074855))

(assert (= (and b!1074865 (not c!107935)) b!1074856))

(assert (= (and b!1074855 res!716718) b!1074860))

(assert (= (and b!1074856 c!107937) b!1074863))

(assert (= (and b!1074856 (not c!107937)) b!1074857))

(declare-fun b_lambda!16871 () Bool)

(assert (=> (not b_lambda!16871) (not b!1074860)))

(assert (=> b!1074860 t!32619))

(declare-fun b_and!35123 () Bool)

(assert (= b_and!35121 (and (=> t!32619 result!14823) b_and!35123)))

(declare-fun b_lambda!16873 () Bool)

(assert (=> (not b_lambda!16873) (not b!1074861)))

(assert (=> b!1074861 t!32619))

(declare-fun b_and!35125 () Bool)

(assert (= b_and!35123 (and (=> t!32619 result!14823) b_and!35125)))

(declare-fun m!993857 () Bool)

(assert (=> b!1074857 m!993857))

(declare-fun m!993859 () Bool)

(assert (=> d!129501 m!993859))

(assert (=> d!129501 m!993677))

(declare-fun m!993861 () Bool)

(assert (=> b!1074861 m!993861))

(declare-fun m!993863 () Bool)

(assert (=> b!1074861 m!993863))

(assert (=> b!1074861 m!993753))

(assert (=> b!1074861 m!993751))

(assert (=> b!1074861 m!993755))

(assert (=> b!1074861 m!993751))

(declare-fun m!993865 () Bool)

(assert (=> b!1074861 m!993865))

(assert (=> b!1074861 m!993741))

(assert (=> b!1074861 m!993865))

(declare-fun m!993867 () Bool)

(assert (=> b!1074861 m!993867))

(assert (=> b!1074861 m!993753))

(assert (=> b!1074859 m!993741))

(assert (=> b!1074859 m!993741))

(assert (=> b!1074859 m!993743))

(assert (=> b!1074858 m!993741))

(assert (=> b!1074858 m!993741))

(assert (=> b!1074858 m!993743))

(assert (=> b!1074860 m!993753))

(assert (=> b!1074860 m!993751))

(assert (=> b!1074860 m!993755))

(assert (=> b!1074860 m!993753))

(assert (=> b!1074860 m!993741))

(assert (=> b!1074860 m!993751))

(assert (=> b!1074860 m!993741))

(declare-fun m!993869 () Bool)

(assert (=> b!1074860 m!993869))

(declare-fun m!993871 () Bool)

(assert (=> b!1074863 m!993871))

(assert (=> b!1074855 m!993741))

(assert (=> b!1074855 m!993741))

(declare-fun m!993873 () Bool)

(assert (=> b!1074855 m!993873))

(declare-fun m!993875 () Bool)

(assert (=> b!1074864 m!993875))

(assert (=> bm!45462 m!993871))

(assert (=> b!1074683 d!129501))

(declare-fun d!129503 () Bool)

(assert (=> d!129503 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!95104 d!129503))

(declare-fun d!129505 () Bool)

(assert (=> d!129505 (= (array_inv!25468 _values!955) (bvsge (size!33683 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!95104 d!129505))

(declare-fun d!129507 () Bool)

(assert (=> d!129507 (= (array_inv!25469 _keys!1163) (bvsge (size!33682 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!95104 d!129507))

(declare-fun d!129509 () Bool)

(declare-fun res!716730 () Bool)

(declare-fun e!614280 () Bool)

(assert (=> d!129509 (=> res!716730 e!614280)))

(assert (=> d!129509 (= res!716730 (bvsge #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(assert (=> d!129509 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23260) e!614280)))

(declare-fun bm!45465 () Bool)

(declare-fun call!45468 () Bool)

(declare-fun c!107941 () Bool)

(assert (=> bm!45465 (= call!45468 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107941 (Cons!23259 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000) Nil!23260) Nil!23260)))))

(declare-fun b!1074876 () Bool)

(declare-fun e!614279 () Bool)

(assert (=> b!1074876 (= e!614279 call!45468)))

(declare-fun b!1074877 () Bool)

(declare-fun e!614282 () Bool)

(assert (=> b!1074877 (= e!614282 e!614279)))

(assert (=> b!1074877 (= c!107941 (validKeyInArray!0 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074878 () Bool)

(assert (=> b!1074878 (= e!614280 e!614282)))

(declare-fun res!716729 () Bool)

(assert (=> b!1074878 (=> (not res!716729) (not e!614282))))

(declare-fun e!614281 () Bool)

(assert (=> b!1074878 (= res!716729 (not e!614281))))

(declare-fun res!716728 () Bool)

(assert (=> b!1074878 (=> (not res!716728) (not e!614281))))

(assert (=> b!1074878 (= res!716728 (validKeyInArray!0 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074879 () Bool)

(assert (=> b!1074879 (= e!614279 call!45468)))

(declare-fun b!1074880 () Bool)

(declare-fun contains!6357 (List!23263 (_ BitVec 64)) Bool)

(assert (=> b!1074880 (= e!614281 (contains!6357 Nil!23260 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!129509 (not res!716730)) b!1074878))

(assert (= (and b!1074878 res!716728) b!1074880))

(assert (= (and b!1074878 res!716729) b!1074877))

(assert (= (and b!1074877 c!107941) b!1074876))

(assert (= (and b!1074877 (not c!107941)) b!1074879))

(assert (= (or b!1074876 b!1074879) bm!45465))

(assert (=> bm!45465 m!993741))

(declare-fun m!993877 () Bool)

(assert (=> bm!45465 m!993877))

(assert (=> b!1074877 m!993741))

(assert (=> b!1074877 m!993741))

(assert (=> b!1074877 m!993743))

(assert (=> b!1074878 m!993741))

(assert (=> b!1074878 m!993741))

(assert (=> b!1074878 m!993743))

(assert (=> b!1074880 m!993741))

(assert (=> b!1074880 m!993741))

(declare-fun m!993879 () Bool)

(assert (=> b!1074880 m!993879))

(assert (=> b!1074685 d!129509))

(declare-fun b!1074889 () Bool)

(declare-fun e!614290 () Bool)

(declare-fun call!45471 () Bool)

(assert (=> b!1074889 (= e!614290 call!45471)))

(declare-fun bm!45468 () Bool)

(assert (=> bm!45468 (= call!45471 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun d!129511 () Bool)

(declare-fun res!716736 () Bool)

(declare-fun e!614291 () Bool)

(assert (=> d!129511 (=> res!716736 e!614291)))

(assert (=> d!129511 (= res!716736 (bvsge #b00000000000000000000000000000000 (size!33682 _keys!1163)))))

(assert (=> d!129511 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!614291)))

(declare-fun b!1074890 () Bool)

(declare-fun e!614289 () Bool)

(assert (=> b!1074890 (= e!614290 e!614289)))

(declare-fun lt!476991 () (_ BitVec 64))

(assert (=> b!1074890 (= lt!476991 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476990 () Unit!35328)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!68920 (_ BitVec 64) (_ BitVec 32)) Unit!35328)

(assert (=> b!1074890 (= lt!476990 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!476991 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!68920 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1074890 (arrayContainsKey!0 _keys!1163 lt!476991 #b00000000000000000000000000000000)))

(declare-fun lt!476989 () Unit!35328)

(assert (=> b!1074890 (= lt!476989 lt!476990)))

(declare-fun res!716735 () Bool)

(declare-datatypes ((SeekEntryResult!9887 0))(
  ( (MissingZero!9887 (index!41918 (_ BitVec 32))) (Found!9887 (index!41919 (_ BitVec 32))) (Intermediate!9887 (undefined!10699 Bool) (index!41920 (_ BitVec 32)) (x!96318 (_ BitVec 32))) (Undefined!9887) (MissingVacant!9887 (index!41921 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!68920 (_ BitVec 32)) SeekEntryResult!9887)

(assert (=> b!1074890 (= res!716735 (= (seekEntryOrOpen!0 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9887 #b00000000000000000000000000000000)))))

(assert (=> b!1074890 (=> (not res!716735) (not e!614289))))

(declare-fun b!1074891 () Bool)

(assert (=> b!1074891 (= e!614291 e!614290)))

(declare-fun c!107944 () Bool)

(assert (=> b!1074891 (= c!107944 (validKeyInArray!0 (select (arr!33145 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074892 () Bool)

(assert (=> b!1074892 (= e!614289 call!45471)))

(assert (= (and d!129511 (not res!716736)) b!1074891))

(assert (= (and b!1074891 c!107944) b!1074890))

(assert (= (and b!1074891 (not c!107944)) b!1074889))

(assert (= (and b!1074890 res!716735) b!1074892))

(assert (= (or b!1074892 b!1074889) bm!45468))

(declare-fun m!993881 () Bool)

(assert (=> bm!45468 m!993881))

(assert (=> b!1074890 m!993741))

(declare-fun m!993883 () Bool)

(assert (=> b!1074890 m!993883))

(declare-fun m!993885 () Bool)

(assert (=> b!1074890 m!993885))

(assert (=> b!1074890 m!993741))

(declare-fun m!993887 () Bool)

(assert (=> b!1074890 m!993887))

(assert (=> b!1074891 m!993741))

(assert (=> b!1074891 m!993741))

(assert (=> b!1074891 m!993743))

(assert (=> b!1074682 d!129511))

(declare-fun b!1074899 () Bool)

(declare-fun e!614296 () Bool)

(assert (=> b!1074899 (= e!614296 tp_is_empty!25995)))

(declare-fun mapNonEmpty!40726 () Bool)

(declare-fun mapRes!40726 () Bool)

(declare-fun tp!78045 () Bool)

(assert (=> mapNonEmpty!40726 (= mapRes!40726 (and tp!78045 e!614296))))

(declare-fun mapRest!40726 () (Array (_ BitVec 32) ValueCell!12294))

(declare-fun mapKey!40726 () (_ BitVec 32))

(declare-fun mapValue!40726 () ValueCell!12294)

(assert (=> mapNonEmpty!40726 (= mapRest!40720 (store mapRest!40726 mapKey!40726 mapValue!40726))))

(declare-fun mapIsEmpty!40726 () Bool)

(assert (=> mapIsEmpty!40726 mapRes!40726))

(declare-fun condMapEmpty!40726 () Bool)

(declare-fun mapDefault!40726 () ValueCell!12294)

(assert (=> mapNonEmpty!40720 (= condMapEmpty!40726 (= mapRest!40720 ((as const (Array (_ BitVec 32) ValueCell!12294)) mapDefault!40726)))))

(declare-fun e!614297 () Bool)

(assert (=> mapNonEmpty!40720 (= tp!78035 (and e!614297 mapRes!40726))))

(declare-fun b!1074900 () Bool)

(assert (=> b!1074900 (= e!614297 tp_is_empty!25995)))

(assert (= (and mapNonEmpty!40720 condMapEmpty!40726) mapIsEmpty!40726))

(assert (= (and mapNonEmpty!40720 (not condMapEmpty!40726)) mapNonEmpty!40726))

(assert (= (and mapNonEmpty!40726 ((_ is ValueCellFull!12294) mapValue!40726)) b!1074899))

(assert (= (and mapNonEmpty!40720 ((_ is ValueCellFull!12294) mapDefault!40726)) b!1074900))

(declare-fun m!993889 () Bool)

(assert (=> mapNonEmpty!40726 m!993889))

(declare-fun b_lambda!16875 () Bool)

(assert (= b_lambda!16873 (or (and start!95104 b_free!22185) b_lambda!16875)))

(declare-fun b_lambda!16877 () Bool)

(assert (= b_lambda!16863 (or (and start!95104 b_free!22185) b_lambda!16877)))

(declare-fun b_lambda!16879 () Bool)

(assert (= b_lambda!16865 (or (and start!95104 b_free!22185) b_lambda!16879)))

(declare-fun b_lambda!16881 () Bool)

(assert (= b_lambda!16871 (or (and start!95104 b_free!22185) b_lambda!16881)))

(declare-fun b_lambda!16883 () Bool)

(assert (= b_lambda!16867 (or (and start!95104 b_free!22185) b_lambda!16883)))

(declare-fun b_lambda!16885 () Bool)

(assert (= b_lambda!16869 (or (and start!95104 b_free!22185) b_lambda!16885)))

(check-sat (not b!1074725) (not b_lambda!16877) (not bm!45451) (not b!1074852) (not b!1074815) (not b_lambda!16881) (not b!1074789) (not b!1074845) (not b!1074851) (not d!129497) (not b!1074807) (not b!1074848) (not b!1074731) (not b_lambda!16879) (not b!1074860) (not b!1074855) (not b!1074891) (not bm!45458) (not b!1074846) (not d!129493) (not bm!45468) (not b!1074800) (not mapNonEmpty!40726) (not b!1074810) (not bm!45456) (not bm!45450) (not bm!45465) (not b!1074847) tp_is_empty!25995 (not b!1074878) (not b!1074799) (not b!1074861) (not b!1074890) (not b_lambda!16885) (not bm!45446) (not b!1074857) (not b!1074812) (not d!129495) (not b!1074849) (not bm!45461) (not b_lambda!16883) (not d!129489) (not bm!45462) (not d!129491) (not b!1074792) (not b!1074774) (not b!1074797) (not b!1074787) (not b!1074858) (not b!1074843) (not b!1074859) (not b!1074777) (not b!1074877) (not b!1074784) (not b!1074723) (not b!1074864) (not bm!45453) (not b!1074880) (not b_next!22185) (not b!1074803) (not d!129499) (not b_lambda!16875) (not b!1074863) (not b!1074730) (not d!129501) (not b!1074780) (not bm!45449) (not b!1074776) b_and!35125 (not bm!45457))
(check-sat b_and!35125 (not b_next!22185))
