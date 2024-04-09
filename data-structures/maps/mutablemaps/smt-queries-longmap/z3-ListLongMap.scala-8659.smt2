; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105332 () Bool)

(assert start!105332)

(declare-fun b_free!26991 () Bool)

(declare-fun b_next!26991 () Bool)

(assert (=> start!105332 (= b_free!26991 (not b_next!26991))))

(declare-fun tp!94481 () Bool)

(declare-fun b_and!44827 () Bool)

(assert (=> start!105332 (= tp!94481 b_and!44827)))

(declare-fun b!1254608 () Bool)

(declare-fun e!712984 () Bool)

(declare-fun tp_is_empty!31893 () Bool)

(assert (=> b!1254608 (= e!712984 tp_is_empty!31893)))

(declare-fun b!1254609 () Bool)

(declare-fun e!712981 () Bool)

(declare-fun mapRes!49618 () Bool)

(assert (=> b!1254609 (= e!712981 (and e!712984 mapRes!49618))))

(declare-fun condMapEmpty!49618 () Bool)

(declare-datatypes ((V!47889 0))(
  ( (V!47890 (val!16009 Int)) )
))
(declare-datatypes ((ValueCell!15183 0))(
  ( (ValueCellFull!15183 (v!18708 V!47889)) (EmptyCell!15183) )
))
(declare-datatypes ((array!81419 0))(
  ( (array!81420 (arr!39266 (Array (_ BitVec 32) ValueCell!15183)) (size!39803 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81419)

(declare-fun mapDefault!49618 () ValueCell!15183)

(assert (=> b!1254609 (= condMapEmpty!49618 (= (arr!39266 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15183)) mapDefault!49618)))))

(declare-fun res!836612 () Bool)

(declare-fun e!712987 () Bool)

(assert (=> start!105332 (=> (not res!836612) (not e!712987))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105332 (= res!836612 (validMask!0 mask!1466))))

(assert (=> start!105332 e!712987))

(assert (=> start!105332 true))

(assert (=> start!105332 tp!94481))

(assert (=> start!105332 tp_is_empty!31893))

(declare-datatypes ((array!81421 0))(
  ( (array!81422 (arr!39267 (Array (_ BitVec 32) (_ BitVec 64))) (size!39804 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81421)

(declare-fun array_inv!29867 (array!81421) Bool)

(assert (=> start!105332 (array_inv!29867 _keys!1118)))

(declare-fun array_inv!29868 (array!81419) Bool)

(assert (=> start!105332 (and (array_inv!29868 _values!914) e!712981)))

(declare-fun b!1254610 () Bool)

(declare-fun e!712982 () Bool)

(assert (=> b!1254610 (= e!712982 (bvsle #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(declare-fun mapNonEmpty!49618 () Bool)

(declare-fun tp!94482 () Bool)

(declare-fun e!712983 () Bool)

(assert (=> mapNonEmpty!49618 (= mapRes!49618 (and tp!94482 e!712983))))

(declare-fun mapRest!49618 () (Array (_ BitVec 32) ValueCell!15183))

(declare-fun mapKey!49618 () (_ BitVec 32))

(declare-fun mapValue!49618 () ValueCell!15183)

(assert (=> mapNonEmpty!49618 (= (arr!39266 _values!914) (store mapRest!49618 mapKey!49618 mapValue!49618))))

(declare-fun b!1254611 () Bool)

(declare-fun e!712985 () Bool)

(assert (=> b!1254611 (= e!712987 (not e!712985))))

(declare-fun res!836609 () Bool)

(assert (=> b!1254611 (=> res!836609 e!712985)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1254611 (= res!836609 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20812 0))(
  ( (tuple2!20813 (_1!10416 (_ BitVec 64)) (_2!10416 V!47889)) )
))
(declare-datatypes ((List!28053 0))(
  ( (Nil!28050) (Cons!28049 (h!29258 tuple2!20812) (t!41543 List!28053)) )
))
(declare-datatypes ((ListLongMap!18697 0))(
  ( (ListLongMap!18698 (toList!9364 List!28053)) )
))
(declare-fun lt!567121 () ListLongMap!18697)

(declare-fun lt!567120 () ListLongMap!18697)

(assert (=> b!1254611 (= lt!567121 lt!567120)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47889)

(declare-fun zeroValue!871 () V!47889)

(declare-fun minValueBefore!43 () V!47889)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((Unit!41700 0))(
  ( (Unit!41701) )
))
(declare-fun lt!567122 () Unit!41700)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1043 (array!81421 array!81419 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47889 V!47889 V!47889 V!47889 (_ BitVec 32) Int) Unit!41700)

(assert (=> b!1254611 (= lt!567122 (lemmaNoChangeToArrayThenSameMapNoExtras!1043 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5725 (array!81421 array!81419 (_ BitVec 32) (_ BitVec 32) V!47889 V!47889 (_ BitVec 32) Int) ListLongMap!18697)

(assert (=> b!1254611 (= lt!567120 (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254611 (= lt!567121 (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254612 () Bool)

(assert (=> b!1254612 (= e!712983 tp_is_empty!31893)))

(declare-fun b!1254613 () Bool)

(declare-fun res!836611 () Bool)

(assert (=> b!1254613 (=> (not res!836611) (not e!712987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81421 (_ BitVec 32)) Bool)

(assert (=> b!1254613 (= res!836611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1254614 () Bool)

(declare-fun res!836610 () Bool)

(assert (=> b!1254614 (=> (not res!836610) (not e!712987))))

(assert (=> b!1254614 (= res!836610 (and (= (size!39803 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39804 _keys!1118) (size!39803 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254615 () Bool)

(assert (=> b!1254615 (= e!712985 e!712982)))

(declare-fun res!836613 () Bool)

(assert (=> b!1254615 (=> res!836613 e!712982)))

(declare-fun lt!567117 () ListLongMap!18697)

(declare-fun lt!567116 () ListLongMap!18697)

(declare-fun -!2072 (ListLongMap!18697 (_ BitVec 64)) ListLongMap!18697)

(assert (=> b!1254615 (= res!836613 (not (= (-!2072 lt!567117 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567116)))))

(declare-fun lt!567118 () ListLongMap!18697)

(assert (=> b!1254615 (= (-!2072 lt!567118 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567121)))

(declare-fun lt!567119 () Unit!41700)

(declare-fun addThenRemoveForNewKeyIsSame!332 (ListLongMap!18697 (_ BitVec 64) V!47889) Unit!41700)

(assert (=> b!1254615 (= lt!567119 (addThenRemoveForNewKeyIsSame!332 lt!567121 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1254615 (and (= lt!567117 lt!567118) (= lt!567116 lt!567120))))

(declare-fun +!4163 (ListLongMap!18697 tuple2!20812) ListLongMap!18697)

(assert (=> b!1254615 (= lt!567118 (+!4163 lt!567121 (tuple2!20813 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun getCurrentListMap!4550 (array!81421 array!81419 (_ BitVec 32) (_ BitVec 32) V!47889 V!47889 (_ BitVec 32) Int) ListLongMap!18697)

(assert (=> b!1254615 (= lt!567116 (getCurrentListMap!4550 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254615 (= lt!567117 (getCurrentListMap!4550 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49618 () Bool)

(assert (=> mapIsEmpty!49618 mapRes!49618))

(declare-fun b!1254616 () Bool)

(declare-fun res!836608 () Bool)

(assert (=> b!1254616 (=> (not res!836608) (not e!712987))))

(declare-datatypes ((List!28054 0))(
  ( (Nil!28051) (Cons!28050 (h!29259 (_ BitVec 64)) (t!41544 List!28054)) )
))
(declare-fun arrayNoDuplicates!0 (array!81421 (_ BitVec 32) List!28054) Bool)

(assert (=> b!1254616 (= res!836608 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28051))))

(assert (= (and start!105332 res!836612) b!1254614))

(assert (= (and b!1254614 res!836610) b!1254613))

(assert (= (and b!1254613 res!836611) b!1254616))

(assert (= (and b!1254616 res!836608) b!1254611))

(assert (= (and b!1254611 (not res!836609)) b!1254615))

(assert (= (and b!1254615 (not res!836613)) b!1254610))

(assert (= (and b!1254609 condMapEmpty!49618) mapIsEmpty!49618))

(assert (= (and b!1254609 (not condMapEmpty!49618)) mapNonEmpty!49618))

(get-info :version)

(assert (= (and mapNonEmpty!49618 ((_ is ValueCellFull!15183) mapValue!49618)) b!1254612))

(assert (= (and b!1254609 ((_ is ValueCellFull!15183) mapDefault!49618)) b!1254608))

(assert (= start!105332 b!1254609))

(declare-fun m!1155445 () Bool)

(assert (=> b!1254613 m!1155445))

(declare-fun m!1155447 () Bool)

(assert (=> b!1254615 m!1155447))

(declare-fun m!1155449 () Bool)

(assert (=> b!1254615 m!1155449))

(declare-fun m!1155451 () Bool)

(assert (=> b!1254615 m!1155451))

(declare-fun m!1155453 () Bool)

(assert (=> b!1254615 m!1155453))

(declare-fun m!1155455 () Bool)

(assert (=> b!1254615 m!1155455))

(declare-fun m!1155457 () Bool)

(assert (=> b!1254615 m!1155457))

(declare-fun m!1155459 () Bool)

(assert (=> b!1254611 m!1155459))

(declare-fun m!1155461 () Bool)

(assert (=> b!1254611 m!1155461))

(declare-fun m!1155463 () Bool)

(assert (=> b!1254611 m!1155463))

(declare-fun m!1155465 () Bool)

(assert (=> start!105332 m!1155465))

(declare-fun m!1155467 () Bool)

(assert (=> start!105332 m!1155467))

(declare-fun m!1155469 () Bool)

(assert (=> start!105332 m!1155469))

(declare-fun m!1155471 () Bool)

(assert (=> mapNonEmpty!49618 m!1155471))

(declare-fun m!1155473 () Bool)

(assert (=> b!1254616 m!1155473))

(check-sat tp_is_empty!31893 (not b!1254613) (not b!1254611) (not mapNonEmpty!49618) b_and!44827 (not b_next!26991) (not start!105332) (not b!1254615) (not b!1254616))
(check-sat b_and!44827 (not b_next!26991))
(get-model)

(declare-fun d!138021 () Bool)

(assert (=> d!138021 (= (-!2072 (+!4163 lt!567121 (tuple2!20813 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) #b1000000000000000000000000000000000000000000000000000000000000000) lt!567121)))

(declare-fun lt!567146 () Unit!41700)

(declare-fun choose!1864 (ListLongMap!18697 (_ BitVec 64) V!47889) Unit!41700)

(assert (=> d!138021 (= lt!567146 (choose!1864 lt!567121 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun contains!7542 (ListLongMap!18697 (_ BitVec 64)) Bool)

(assert (=> d!138021 (not (contains!7542 lt!567121 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138021 (= (addThenRemoveForNewKeyIsSame!332 lt!567121 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43) lt!567146)))

(declare-fun bs!35450 () Bool)

(assert (= bs!35450 d!138021))

(assert (=> bs!35450 m!1155449))

(assert (=> bs!35450 m!1155449))

(declare-fun m!1155505 () Bool)

(assert (=> bs!35450 m!1155505))

(declare-fun m!1155507 () Bool)

(assert (=> bs!35450 m!1155507))

(declare-fun m!1155509 () Bool)

(assert (=> bs!35450 m!1155509))

(assert (=> b!1254615 d!138021))

(declare-fun d!138023 () Bool)

(declare-fun e!713011 () Bool)

(assert (=> d!138023 e!713011))

(declare-fun res!836637 () Bool)

(assert (=> d!138023 (=> (not res!836637) (not e!713011))))

(declare-fun lt!567157 () ListLongMap!18697)

(assert (=> d!138023 (= res!836637 (contains!7542 lt!567157 (_1!10416 (tuple2!20813 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lt!567158 () List!28053)

(assert (=> d!138023 (= lt!567157 (ListLongMap!18698 lt!567158))))

(declare-fun lt!567155 () Unit!41700)

(declare-fun lt!567156 () Unit!41700)

(assert (=> d!138023 (= lt!567155 lt!567156)))

(declare-datatypes ((Option!709 0))(
  ( (Some!708 (v!18710 V!47889)) (None!707) )
))
(declare-fun getValueByKey!658 (List!28053 (_ BitVec 64)) Option!709)

(assert (=> d!138023 (= (getValueByKey!658 lt!567158 (_1!10416 (tuple2!20813 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!708 (_2!10416 (tuple2!20813 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lemmaContainsTupThenGetReturnValue!331 (List!28053 (_ BitVec 64) V!47889) Unit!41700)

(assert (=> d!138023 (= lt!567156 (lemmaContainsTupThenGetReturnValue!331 lt!567158 (_1!10416 (tuple2!20813 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10416 (tuple2!20813 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun insertStrictlySorted!444 (List!28053 (_ BitVec 64) V!47889) List!28053)

(assert (=> d!138023 (= lt!567158 (insertStrictlySorted!444 (toList!9364 lt!567121) (_1!10416 (tuple2!20813 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10416 (tuple2!20813 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(assert (=> d!138023 (= (+!4163 lt!567121 (tuple2!20813 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) lt!567157)))

(declare-fun b!1254648 () Bool)

(declare-fun res!836636 () Bool)

(assert (=> b!1254648 (=> (not res!836636) (not e!713011))))

(assert (=> b!1254648 (= res!836636 (= (getValueByKey!658 (toList!9364 lt!567157) (_1!10416 (tuple2!20813 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!708 (_2!10416 (tuple2!20813 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))))

(declare-fun b!1254649 () Bool)

(declare-fun contains!7543 (List!28053 tuple2!20812) Bool)

(assert (=> b!1254649 (= e!713011 (contains!7543 (toList!9364 lt!567157) (tuple2!20813 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (= (and d!138023 res!836637) b!1254648))

(assert (= (and b!1254648 res!836636) b!1254649))

(declare-fun m!1155511 () Bool)

(assert (=> d!138023 m!1155511))

(declare-fun m!1155513 () Bool)

(assert (=> d!138023 m!1155513))

(declare-fun m!1155515 () Bool)

(assert (=> d!138023 m!1155515))

(declare-fun m!1155517 () Bool)

(assert (=> d!138023 m!1155517))

(declare-fun m!1155519 () Bool)

(assert (=> b!1254648 m!1155519))

(declare-fun m!1155521 () Bool)

(assert (=> b!1254649 m!1155521))

(assert (=> b!1254615 d!138023))

(declare-fun d!138025 () Bool)

(declare-fun lt!567161 () ListLongMap!18697)

(assert (=> d!138025 (not (contains!7542 lt!567161 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!140 (List!28053 (_ BitVec 64)) List!28053)

(assert (=> d!138025 (= lt!567161 (ListLongMap!18698 (removeStrictlySorted!140 (toList!9364 lt!567117) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138025 (= (-!2072 lt!567117 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567161)))

(declare-fun bs!35451 () Bool)

(assert (= bs!35451 d!138025))

(declare-fun m!1155523 () Bool)

(assert (=> bs!35451 m!1155523))

(declare-fun m!1155525 () Bool)

(assert (=> bs!35451 m!1155525))

(assert (=> b!1254615 d!138025))

(declare-fun bm!61737 () Bool)

(declare-fun call!61742 () ListLongMap!18697)

(declare-fun call!61743 () ListLongMap!18697)

(assert (=> bm!61737 (= call!61742 call!61743)))

(declare-fun b!1254692 () Bool)

(declare-fun e!713038 () Bool)

(declare-fun e!713050 () Bool)

(assert (=> b!1254692 (= e!713038 e!713050)))

(declare-fun res!836659 () Bool)

(declare-fun call!61746 () Bool)

(assert (=> b!1254692 (= res!836659 call!61746)))

(assert (=> b!1254692 (=> (not res!836659) (not e!713050))))

(declare-fun bm!61739 () Bool)

(declare-fun call!61745 () ListLongMap!18697)

(declare-fun call!61741 () ListLongMap!18697)

(assert (=> bm!61739 (= call!61745 call!61741)))

(declare-fun b!1254693 () Bool)

(declare-fun e!713046 () ListLongMap!18697)

(assert (=> b!1254693 (= e!713046 call!61742)))

(declare-fun b!1254694 () Bool)

(declare-fun e!713040 () ListLongMap!18697)

(assert (=> b!1254694 (= e!713040 call!61745)))

(declare-fun b!1254695 () Bool)

(declare-fun e!713041 () Bool)

(assert (=> b!1254695 (= e!713041 e!713038)))

(declare-fun c!122300 () Bool)

(assert (=> b!1254695 (= c!122300 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254696 () Bool)

(declare-fun c!122296 () Bool)

(assert (=> b!1254696 (= c!122296 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1254696 (= e!713046 e!713040)))

(declare-fun b!1254697 () Bool)

(declare-fun e!713042 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1254697 (= e!713042 (validKeyInArray!0 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1254698 () Bool)

(assert (=> b!1254698 (= e!713040 call!61742)))

(declare-fun b!1254699 () Bool)

(declare-fun lt!567215 () ListLongMap!18697)

(declare-fun apply!1021 (ListLongMap!18697 (_ BitVec 64)) V!47889)

(assert (=> b!1254699 (= e!713050 (= (apply!1021 lt!567215 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!43))))

(declare-fun b!1254700 () Bool)

(declare-fun e!713039 () Unit!41700)

(declare-fun Unit!41704 () Unit!41700)

(assert (=> b!1254700 (= e!713039 Unit!41704)))

(declare-fun call!61744 () ListLongMap!18697)

(declare-fun bm!61740 () Bool)

(assert (=> bm!61740 (= call!61744 (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun bm!61741 () Bool)

(declare-fun c!122301 () Bool)

(declare-fun c!122297 () Bool)

(assert (=> bm!61741 (= call!61743 (+!4163 (ite c!122297 call!61744 (ite c!122301 call!61741 call!61745)) (ite (or c!122297 c!122301) (tuple2!20813 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!20813 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43))))))

(declare-fun b!1254701 () Bool)

(declare-fun e!713048 () ListLongMap!18697)

(assert (=> b!1254701 (= e!713048 e!713046)))

(assert (=> b!1254701 (= c!122301 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254702 () Bool)

(declare-fun lt!567226 () Unit!41700)

(assert (=> b!1254702 (= e!713039 lt!567226)))

(declare-fun lt!567219 () ListLongMap!18697)

(assert (=> b!1254702 (= lt!567219 (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!567217 () (_ BitVec 64))

(assert (=> b!1254702 (= lt!567217 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!567221 () (_ BitVec 64))

(assert (=> b!1254702 (= lt!567221 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!567218 () Unit!41700)

(declare-fun addStillContains!1095 (ListLongMap!18697 (_ BitVec 64) V!47889 (_ BitVec 64)) Unit!41700)

(assert (=> b!1254702 (= lt!567218 (addStillContains!1095 lt!567219 lt!567217 zeroValue!871 lt!567221))))

(assert (=> b!1254702 (contains!7542 (+!4163 lt!567219 (tuple2!20813 lt!567217 zeroValue!871)) lt!567221)))

(declare-fun lt!567206 () Unit!41700)

(assert (=> b!1254702 (= lt!567206 lt!567218)))

(declare-fun lt!567208 () ListLongMap!18697)

(assert (=> b!1254702 (= lt!567208 (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!567211 () (_ BitVec 64))

(assert (=> b!1254702 (= lt!567211 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!567216 () (_ BitVec 64))

(assert (=> b!1254702 (= lt!567216 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!567223 () Unit!41700)

(declare-fun addApplyDifferent!529 (ListLongMap!18697 (_ BitVec 64) V!47889 (_ BitVec 64)) Unit!41700)

(assert (=> b!1254702 (= lt!567223 (addApplyDifferent!529 lt!567208 lt!567211 minValueAfter!43 lt!567216))))

(assert (=> b!1254702 (= (apply!1021 (+!4163 lt!567208 (tuple2!20813 lt!567211 minValueAfter!43)) lt!567216) (apply!1021 lt!567208 lt!567216))))

(declare-fun lt!567209 () Unit!41700)

(assert (=> b!1254702 (= lt!567209 lt!567223)))

(declare-fun lt!567224 () ListLongMap!18697)

(assert (=> b!1254702 (= lt!567224 (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!567212 () (_ BitVec 64))

(assert (=> b!1254702 (= lt!567212 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!567222 () (_ BitVec 64))

(assert (=> b!1254702 (= lt!567222 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!567214 () Unit!41700)

(assert (=> b!1254702 (= lt!567214 (addApplyDifferent!529 lt!567224 lt!567212 zeroValue!871 lt!567222))))

(assert (=> b!1254702 (= (apply!1021 (+!4163 lt!567224 (tuple2!20813 lt!567212 zeroValue!871)) lt!567222) (apply!1021 lt!567224 lt!567222))))

(declare-fun lt!567220 () Unit!41700)

(assert (=> b!1254702 (= lt!567220 lt!567214)))

(declare-fun lt!567210 () ListLongMap!18697)

(assert (=> b!1254702 (= lt!567210 (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!567225 () (_ BitVec 64))

(assert (=> b!1254702 (= lt!567225 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!567227 () (_ BitVec 64))

(assert (=> b!1254702 (= lt!567227 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1254702 (= lt!567226 (addApplyDifferent!529 lt!567210 lt!567225 minValueAfter!43 lt!567227))))

(assert (=> b!1254702 (= (apply!1021 (+!4163 lt!567210 (tuple2!20813 lt!567225 minValueAfter!43)) lt!567227) (apply!1021 lt!567210 lt!567227))))

(declare-fun b!1254703 () Bool)

(declare-fun e!713043 () Bool)

(declare-fun call!61740 () Bool)

(assert (=> b!1254703 (= e!713043 (not call!61740))))

(declare-fun b!1254704 () Bool)

(declare-fun e!713044 () Bool)

(declare-fun e!713049 () Bool)

(assert (=> b!1254704 (= e!713044 e!713049)))

(declare-fun res!836663 () Bool)

(assert (=> b!1254704 (=> (not res!836663) (not e!713049))))

(assert (=> b!1254704 (= res!836663 (contains!7542 lt!567215 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1254704 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(declare-fun d!138027 () Bool)

(assert (=> d!138027 e!713041))

(declare-fun res!836656 () Bool)

(assert (=> d!138027 (=> (not res!836656) (not e!713041))))

(assert (=> d!138027 (= res!836656 (or (bvsge #b00000000000000000000000000000000 (size!39804 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39804 _keys!1118)))))))

(declare-fun lt!567207 () ListLongMap!18697)

(assert (=> d!138027 (= lt!567215 lt!567207)))

(declare-fun lt!567213 () Unit!41700)

(assert (=> d!138027 (= lt!567213 e!713039)))

(declare-fun c!122298 () Bool)

(declare-fun e!713047 () Bool)

(assert (=> d!138027 (= c!122298 e!713047)))

(declare-fun res!836661 () Bool)

(assert (=> d!138027 (=> (not res!836661) (not e!713047))))

(assert (=> d!138027 (= res!836661 (bvslt #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(assert (=> d!138027 (= lt!567207 e!713048)))

(assert (=> d!138027 (= c!122297 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138027 (validMask!0 mask!1466)))

(assert (=> d!138027 (= (getCurrentListMap!4550 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!567215)))

(declare-fun bm!61738 () Bool)

(assert (=> bm!61738 (= call!61746 (contains!7542 lt!567215 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1254705 () Bool)

(declare-fun get!20141 (ValueCell!15183 V!47889) V!47889)

(declare-fun dynLambda!3466 (Int (_ BitVec 64)) V!47889)

(assert (=> b!1254705 (= e!713049 (= (apply!1021 lt!567215 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)) (get!20141 (select (arr!39266 _values!914) #b00000000000000000000000000000000) (dynLambda!3466 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1254705 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39803 _values!914)))))

(assert (=> b!1254705 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(declare-fun b!1254706 () Bool)

(declare-fun res!836658 () Bool)

(assert (=> b!1254706 (=> (not res!836658) (not e!713041))))

(assert (=> b!1254706 (= res!836658 e!713044)))

(declare-fun res!836664 () Bool)

(assert (=> b!1254706 (=> res!836664 e!713044)))

(assert (=> b!1254706 (= res!836664 (not e!713042))))

(declare-fun res!836662 () Bool)

(assert (=> b!1254706 (=> (not res!836662) (not e!713042))))

(assert (=> b!1254706 (= res!836662 (bvslt #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(declare-fun b!1254707 () Bool)

(declare-fun e!713045 () Bool)

(assert (=> b!1254707 (= e!713045 (= (apply!1021 lt!567215 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1254708 () Bool)

(declare-fun res!836660 () Bool)

(assert (=> b!1254708 (=> (not res!836660) (not e!713041))))

(assert (=> b!1254708 (= res!836660 e!713043)))

(declare-fun c!122299 () Bool)

(assert (=> b!1254708 (= c!122299 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1254709 () Bool)

(assert (=> b!1254709 (= e!713048 (+!4163 call!61743 (tuple2!20813 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43)))))

(declare-fun b!1254710 () Bool)

(assert (=> b!1254710 (= e!713043 e!713045)))

(declare-fun res!836657 () Bool)

(assert (=> b!1254710 (= res!836657 call!61740)))

(assert (=> b!1254710 (=> (not res!836657) (not e!713045))))

(declare-fun bm!61742 () Bool)

(assert (=> bm!61742 (= call!61741 call!61744)))

(declare-fun bm!61743 () Bool)

(assert (=> bm!61743 (= call!61740 (contains!7542 lt!567215 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1254711 () Bool)

(assert (=> b!1254711 (= e!713047 (validKeyInArray!0 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1254712 () Bool)

(assert (=> b!1254712 (= e!713038 (not call!61746))))

(assert (= (and d!138027 c!122297) b!1254709))

(assert (= (and d!138027 (not c!122297)) b!1254701))

(assert (= (and b!1254701 c!122301) b!1254693))

(assert (= (and b!1254701 (not c!122301)) b!1254696))

(assert (= (and b!1254696 c!122296) b!1254698))

(assert (= (and b!1254696 (not c!122296)) b!1254694))

(assert (= (or b!1254698 b!1254694) bm!61739))

(assert (= (or b!1254693 bm!61739) bm!61742))

(assert (= (or b!1254693 b!1254698) bm!61737))

(assert (= (or b!1254709 bm!61742) bm!61740))

(assert (= (or b!1254709 bm!61737) bm!61741))

(assert (= (and d!138027 res!836661) b!1254711))

(assert (= (and d!138027 c!122298) b!1254702))

(assert (= (and d!138027 (not c!122298)) b!1254700))

(assert (= (and d!138027 res!836656) b!1254706))

(assert (= (and b!1254706 res!836662) b!1254697))

(assert (= (and b!1254706 (not res!836664)) b!1254704))

(assert (= (and b!1254704 res!836663) b!1254705))

(assert (= (and b!1254706 res!836658) b!1254708))

(assert (= (and b!1254708 c!122299) b!1254710))

(assert (= (and b!1254708 (not c!122299)) b!1254703))

(assert (= (and b!1254710 res!836657) b!1254707))

(assert (= (or b!1254710 b!1254703) bm!61743))

(assert (= (and b!1254708 res!836660) b!1254695))

(assert (= (and b!1254695 c!122300) b!1254692))

(assert (= (and b!1254695 (not c!122300)) b!1254712))

(assert (= (and b!1254692 res!836659) b!1254699))

(assert (= (or b!1254692 b!1254712) bm!61738))

(declare-fun b_lambda!22637 () Bool)

(assert (=> (not b_lambda!22637) (not b!1254705)))

(declare-fun t!41547 () Bool)

(declare-fun tb!11307 () Bool)

(assert (=> (and start!105332 (= defaultEntry!922 defaultEntry!922) t!41547) tb!11307))

(declare-fun result!23313 () Bool)

(assert (=> tb!11307 (= result!23313 tp_is_empty!31893)))

(assert (=> b!1254705 t!41547))

(declare-fun b_and!44831 () Bool)

(assert (= b_and!44827 (and (=> t!41547 result!23313) b_and!44831)))

(declare-fun m!1155527 () Bool)

(assert (=> b!1254709 m!1155527))

(declare-fun m!1155529 () Bool)

(assert (=> b!1254704 m!1155529))

(assert (=> b!1254704 m!1155529))

(declare-fun m!1155531 () Bool)

(assert (=> b!1254704 m!1155531))

(declare-fun m!1155533 () Bool)

(assert (=> b!1254707 m!1155533))

(assert (=> bm!61740 m!1155461))

(declare-fun m!1155535 () Bool)

(assert (=> b!1254699 m!1155535))

(declare-fun m!1155537 () Bool)

(assert (=> bm!61738 m!1155537))

(declare-fun m!1155539 () Bool)

(assert (=> b!1254705 m!1155539))

(assert (=> b!1254705 m!1155529))

(assert (=> b!1254705 m!1155539))

(declare-fun m!1155541 () Bool)

(assert (=> b!1254705 m!1155541))

(declare-fun m!1155543 () Bool)

(assert (=> b!1254705 m!1155543))

(assert (=> b!1254705 m!1155541))

(assert (=> b!1254705 m!1155529))

(declare-fun m!1155545 () Bool)

(assert (=> b!1254705 m!1155545))

(declare-fun m!1155547 () Bool)

(assert (=> bm!61743 m!1155547))

(assert (=> b!1254711 m!1155529))

(assert (=> b!1254711 m!1155529))

(declare-fun m!1155549 () Bool)

(assert (=> b!1254711 m!1155549))

(declare-fun m!1155551 () Bool)

(assert (=> bm!61741 m!1155551))

(declare-fun m!1155553 () Bool)

(assert (=> b!1254702 m!1155553))

(declare-fun m!1155555 () Bool)

(assert (=> b!1254702 m!1155555))

(declare-fun m!1155557 () Bool)

(assert (=> b!1254702 m!1155557))

(declare-fun m!1155559 () Bool)

(assert (=> b!1254702 m!1155559))

(declare-fun m!1155561 () Bool)

(assert (=> b!1254702 m!1155561))

(assert (=> b!1254702 m!1155529))

(declare-fun m!1155563 () Bool)

(assert (=> b!1254702 m!1155563))

(declare-fun m!1155565 () Bool)

(assert (=> b!1254702 m!1155565))

(assert (=> b!1254702 m!1155557))

(declare-fun m!1155567 () Bool)

(assert (=> b!1254702 m!1155567))

(declare-fun m!1155569 () Bool)

(assert (=> b!1254702 m!1155569))

(assert (=> b!1254702 m!1155563))

(declare-fun m!1155571 () Bool)

(assert (=> b!1254702 m!1155571))

(assert (=> b!1254702 m!1155461))

(assert (=> b!1254702 m!1155569))

(declare-fun m!1155573 () Bool)

(assert (=> b!1254702 m!1155573))

(declare-fun m!1155575 () Bool)

(assert (=> b!1254702 m!1155575))

(declare-fun m!1155577 () Bool)

(assert (=> b!1254702 m!1155577))

(declare-fun m!1155579 () Bool)

(assert (=> b!1254702 m!1155579))

(declare-fun m!1155581 () Bool)

(assert (=> b!1254702 m!1155581))

(assert (=> b!1254702 m!1155553))

(assert (=> d!138027 m!1155465))

(assert (=> b!1254697 m!1155529))

(assert (=> b!1254697 m!1155529))

(assert (=> b!1254697 m!1155549))

(assert (=> b!1254615 d!138027))

(declare-fun d!138029 () Bool)

(declare-fun lt!567228 () ListLongMap!18697)

(assert (=> d!138029 (not (contains!7542 lt!567228 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138029 (= lt!567228 (ListLongMap!18698 (removeStrictlySorted!140 (toList!9364 lt!567118) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138029 (= (-!2072 lt!567118 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567228)))

(declare-fun bs!35452 () Bool)

(assert (= bs!35452 d!138029))

(declare-fun m!1155583 () Bool)

(assert (=> bs!35452 m!1155583))

(declare-fun m!1155585 () Bool)

(assert (=> bs!35452 m!1155585))

(assert (=> b!1254615 d!138029))

(declare-fun bm!61744 () Bool)

(declare-fun call!61749 () ListLongMap!18697)

(declare-fun call!61750 () ListLongMap!18697)

(assert (=> bm!61744 (= call!61749 call!61750)))

(declare-fun b!1254715 () Bool)

(declare-fun e!713051 () Bool)

(declare-fun e!713063 () Bool)

(assert (=> b!1254715 (= e!713051 e!713063)))

(declare-fun res!836668 () Bool)

(declare-fun call!61753 () Bool)

(assert (=> b!1254715 (= res!836668 call!61753)))

(assert (=> b!1254715 (=> (not res!836668) (not e!713063))))

(declare-fun bm!61746 () Bool)

(declare-fun call!61752 () ListLongMap!18697)

(declare-fun call!61748 () ListLongMap!18697)

(assert (=> bm!61746 (= call!61752 call!61748)))

(declare-fun b!1254716 () Bool)

(declare-fun e!713059 () ListLongMap!18697)

(assert (=> b!1254716 (= e!713059 call!61749)))

(declare-fun b!1254717 () Bool)

(declare-fun e!713053 () ListLongMap!18697)

(assert (=> b!1254717 (= e!713053 call!61752)))

(declare-fun b!1254718 () Bool)

(declare-fun e!713054 () Bool)

(assert (=> b!1254718 (= e!713054 e!713051)))

(declare-fun c!122306 () Bool)

(assert (=> b!1254718 (= c!122306 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254719 () Bool)

(declare-fun c!122302 () Bool)

(assert (=> b!1254719 (= c!122302 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1254719 (= e!713059 e!713053)))

(declare-fun b!1254720 () Bool)

(declare-fun e!713055 () Bool)

(assert (=> b!1254720 (= e!713055 (validKeyInArray!0 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1254721 () Bool)

(assert (=> b!1254721 (= e!713053 call!61749)))

(declare-fun b!1254722 () Bool)

(declare-fun lt!567238 () ListLongMap!18697)

(assert (=> b!1254722 (= e!713063 (= (apply!1021 lt!567238 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(declare-fun b!1254723 () Bool)

(declare-fun e!713052 () Unit!41700)

(declare-fun Unit!41705 () Unit!41700)

(assert (=> b!1254723 (= e!713052 Unit!41705)))

(declare-fun bm!61747 () Bool)

(declare-fun call!61751 () ListLongMap!18697)

(assert (=> bm!61747 (= call!61751 (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun c!122303 () Bool)

(declare-fun c!122307 () Bool)

(declare-fun bm!61748 () Bool)

(assert (=> bm!61748 (= call!61750 (+!4163 (ite c!122303 call!61751 (ite c!122307 call!61748 call!61752)) (ite (or c!122303 c!122307) (tuple2!20813 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!20813 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun b!1254724 () Bool)

(declare-fun e!713061 () ListLongMap!18697)

(assert (=> b!1254724 (= e!713061 e!713059)))

(assert (=> b!1254724 (= c!122307 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254725 () Bool)

(declare-fun lt!567249 () Unit!41700)

(assert (=> b!1254725 (= e!713052 lt!567249)))

(declare-fun lt!567242 () ListLongMap!18697)

(assert (=> b!1254725 (= lt!567242 (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!567240 () (_ BitVec 64))

(assert (=> b!1254725 (= lt!567240 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!567244 () (_ BitVec 64))

(assert (=> b!1254725 (= lt!567244 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!567241 () Unit!41700)

(assert (=> b!1254725 (= lt!567241 (addStillContains!1095 lt!567242 lt!567240 zeroValue!871 lt!567244))))

(assert (=> b!1254725 (contains!7542 (+!4163 lt!567242 (tuple2!20813 lt!567240 zeroValue!871)) lt!567244)))

(declare-fun lt!567229 () Unit!41700)

(assert (=> b!1254725 (= lt!567229 lt!567241)))

(declare-fun lt!567231 () ListLongMap!18697)

(assert (=> b!1254725 (= lt!567231 (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!567234 () (_ BitVec 64))

(assert (=> b!1254725 (= lt!567234 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!567239 () (_ BitVec 64))

(assert (=> b!1254725 (= lt!567239 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!567246 () Unit!41700)

(assert (=> b!1254725 (= lt!567246 (addApplyDifferent!529 lt!567231 lt!567234 minValueBefore!43 lt!567239))))

(assert (=> b!1254725 (= (apply!1021 (+!4163 lt!567231 (tuple2!20813 lt!567234 minValueBefore!43)) lt!567239) (apply!1021 lt!567231 lt!567239))))

(declare-fun lt!567232 () Unit!41700)

(assert (=> b!1254725 (= lt!567232 lt!567246)))

(declare-fun lt!567247 () ListLongMap!18697)

(assert (=> b!1254725 (= lt!567247 (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!567235 () (_ BitVec 64))

(assert (=> b!1254725 (= lt!567235 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!567245 () (_ BitVec 64))

(assert (=> b!1254725 (= lt!567245 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!567237 () Unit!41700)

(assert (=> b!1254725 (= lt!567237 (addApplyDifferent!529 lt!567247 lt!567235 zeroValue!871 lt!567245))))

(assert (=> b!1254725 (= (apply!1021 (+!4163 lt!567247 (tuple2!20813 lt!567235 zeroValue!871)) lt!567245) (apply!1021 lt!567247 lt!567245))))

(declare-fun lt!567243 () Unit!41700)

(assert (=> b!1254725 (= lt!567243 lt!567237)))

(declare-fun lt!567233 () ListLongMap!18697)

(assert (=> b!1254725 (= lt!567233 (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!567248 () (_ BitVec 64))

(assert (=> b!1254725 (= lt!567248 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!567250 () (_ BitVec 64))

(assert (=> b!1254725 (= lt!567250 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1254725 (= lt!567249 (addApplyDifferent!529 lt!567233 lt!567248 minValueBefore!43 lt!567250))))

(assert (=> b!1254725 (= (apply!1021 (+!4163 lt!567233 (tuple2!20813 lt!567248 minValueBefore!43)) lt!567250) (apply!1021 lt!567233 lt!567250))))

(declare-fun b!1254726 () Bool)

(declare-fun e!713056 () Bool)

(declare-fun call!61747 () Bool)

(assert (=> b!1254726 (= e!713056 (not call!61747))))

(declare-fun b!1254727 () Bool)

(declare-fun e!713057 () Bool)

(declare-fun e!713062 () Bool)

(assert (=> b!1254727 (= e!713057 e!713062)))

(declare-fun res!836672 () Bool)

(assert (=> b!1254727 (=> (not res!836672) (not e!713062))))

(assert (=> b!1254727 (= res!836672 (contains!7542 lt!567238 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1254727 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(declare-fun d!138031 () Bool)

(assert (=> d!138031 e!713054))

(declare-fun res!836665 () Bool)

(assert (=> d!138031 (=> (not res!836665) (not e!713054))))

(assert (=> d!138031 (= res!836665 (or (bvsge #b00000000000000000000000000000000 (size!39804 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39804 _keys!1118)))))))

(declare-fun lt!567230 () ListLongMap!18697)

(assert (=> d!138031 (= lt!567238 lt!567230)))

(declare-fun lt!567236 () Unit!41700)

(assert (=> d!138031 (= lt!567236 e!713052)))

(declare-fun c!122304 () Bool)

(declare-fun e!713060 () Bool)

(assert (=> d!138031 (= c!122304 e!713060)))

(declare-fun res!836670 () Bool)

(assert (=> d!138031 (=> (not res!836670) (not e!713060))))

(assert (=> d!138031 (= res!836670 (bvslt #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(assert (=> d!138031 (= lt!567230 e!713061)))

(assert (=> d!138031 (= c!122303 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138031 (validMask!0 mask!1466)))

(assert (=> d!138031 (= (getCurrentListMap!4550 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!567238)))

(declare-fun bm!61745 () Bool)

(assert (=> bm!61745 (= call!61753 (contains!7542 lt!567238 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1254728 () Bool)

(assert (=> b!1254728 (= e!713062 (= (apply!1021 lt!567238 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)) (get!20141 (select (arr!39266 _values!914) #b00000000000000000000000000000000) (dynLambda!3466 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1254728 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39803 _values!914)))))

(assert (=> b!1254728 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(declare-fun b!1254729 () Bool)

(declare-fun res!836667 () Bool)

(assert (=> b!1254729 (=> (not res!836667) (not e!713054))))

(assert (=> b!1254729 (= res!836667 e!713057)))

(declare-fun res!836673 () Bool)

(assert (=> b!1254729 (=> res!836673 e!713057)))

(assert (=> b!1254729 (= res!836673 (not e!713055))))

(declare-fun res!836671 () Bool)

(assert (=> b!1254729 (=> (not res!836671) (not e!713055))))

(assert (=> b!1254729 (= res!836671 (bvslt #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(declare-fun b!1254730 () Bool)

(declare-fun e!713058 () Bool)

(assert (=> b!1254730 (= e!713058 (= (apply!1021 lt!567238 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1254731 () Bool)

(declare-fun res!836669 () Bool)

(assert (=> b!1254731 (=> (not res!836669) (not e!713054))))

(assert (=> b!1254731 (= res!836669 e!713056)))

(declare-fun c!122305 () Bool)

(assert (=> b!1254731 (= c!122305 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1254732 () Bool)

(assert (=> b!1254732 (= e!713061 (+!4163 call!61750 (tuple2!20813 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun b!1254733 () Bool)

(assert (=> b!1254733 (= e!713056 e!713058)))

(declare-fun res!836666 () Bool)

(assert (=> b!1254733 (= res!836666 call!61747)))

(assert (=> b!1254733 (=> (not res!836666) (not e!713058))))

(declare-fun bm!61749 () Bool)

(assert (=> bm!61749 (= call!61748 call!61751)))

(declare-fun bm!61750 () Bool)

(assert (=> bm!61750 (= call!61747 (contains!7542 lt!567238 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1254734 () Bool)

(assert (=> b!1254734 (= e!713060 (validKeyInArray!0 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1254735 () Bool)

(assert (=> b!1254735 (= e!713051 (not call!61753))))

(assert (= (and d!138031 c!122303) b!1254732))

(assert (= (and d!138031 (not c!122303)) b!1254724))

(assert (= (and b!1254724 c!122307) b!1254716))

(assert (= (and b!1254724 (not c!122307)) b!1254719))

(assert (= (and b!1254719 c!122302) b!1254721))

(assert (= (and b!1254719 (not c!122302)) b!1254717))

(assert (= (or b!1254721 b!1254717) bm!61746))

(assert (= (or b!1254716 bm!61746) bm!61749))

(assert (= (or b!1254716 b!1254721) bm!61744))

(assert (= (or b!1254732 bm!61749) bm!61747))

(assert (= (or b!1254732 bm!61744) bm!61748))

(assert (= (and d!138031 res!836670) b!1254734))

(assert (= (and d!138031 c!122304) b!1254725))

(assert (= (and d!138031 (not c!122304)) b!1254723))

(assert (= (and d!138031 res!836665) b!1254729))

(assert (= (and b!1254729 res!836671) b!1254720))

(assert (= (and b!1254729 (not res!836673)) b!1254727))

(assert (= (and b!1254727 res!836672) b!1254728))

(assert (= (and b!1254729 res!836667) b!1254731))

(assert (= (and b!1254731 c!122305) b!1254733))

(assert (= (and b!1254731 (not c!122305)) b!1254726))

(assert (= (and b!1254733 res!836666) b!1254730))

(assert (= (or b!1254733 b!1254726) bm!61750))

(assert (= (and b!1254731 res!836669) b!1254718))

(assert (= (and b!1254718 c!122306) b!1254715))

(assert (= (and b!1254718 (not c!122306)) b!1254735))

(assert (= (and b!1254715 res!836668) b!1254722))

(assert (= (or b!1254715 b!1254735) bm!61745))

(declare-fun b_lambda!22639 () Bool)

(assert (=> (not b_lambda!22639) (not b!1254728)))

(assert (=> b!1254728 t!41547))

(declare-fun b_and!44833 () Bool)

(assert (= b_and!44831 (and (=> t!41547 result!23313) b_and!44833)))

(declare-fun m!1155587 () Bool)

(assert (=> b!1254732 m!1155587))

(assert (=> b!1254727 m!1155529))

(assert (=> b!1254727 m!1155529))

(declare-fun m!1155589 () Bool)

(assert (=> b!1254727 m!1155589))

(declare-fun m!1155591 () Bool)

(assert (=> b!1254730 m!1155591))

(assert (=> bm!61747 m!1155463))

(declare-fun m!1155593 () Bool)

(assert (=> b!1254722 m!1155593))

(declare-fun m!1155595 () Bool)

(assert (=> bm!61745 m!1155595))

(assert (=> b!1254728 m!1155539))

(assert (=> b!1254728 m!1155529))

(assert (=> b!1254728 m!1155539))

(assert (=> b!1254728 m!1155541))

(assert (=> b!1254728 m!1155543))

(assert (=> b!1254728 m!1155541))

(assert (=> b!1254728 m!1155529))

(declare-fun m!1155597 () Bool)

(assert (=> b!1254728 m!1155597))

(declare-fun m!1155599 () Bool)

(assert (=> bm!61750 m!1155599))

(assert (=> b!1254734 m!1155529))

(assert (=> b!1254734 m!1155529))

(assert (=> b!1254734 m!1155549))

(declare-fun m!1155601 () Bool)

(assert (=> bm!61748 m!1155601))

(declare-fun m!1155603 () Bool)

(assert (=> b!1254725 m!1155603))

(declare-fun m!1155605 () Bool)

(assert (=> b!1254725 m!1155605))

(declare-fun m!1155607 () Bool)

(assert (=> b!1254725 m!1155607))

(declare-fun m!1155609 () Bool)

(assert (=> b!1254725 m!1155609))

(declare-fun m!1155611 () Bool)

(assert (=> b!1254725 m!1155611))

(assert (=> b!1254725 m!1155529))

(declare-fun m!1155613 () Bool)

(assert (=> b!1254725 m!1155613))

(declare-fun m!1155615 () Bool)

(assert (=> b!1254725 m!1155615))

(assert (=> b!1254725 m!1155607))

(declare-fun m!1155617 () Bool)

(assert (=> b!1254725 m!1155617))

(declare-fun m!1155619 () Bool)

(assert (=> b!1254725 m!1155619))

(assert (=> b!1254725 m!1155613))

(declare-fun m!1155621 () Bool)

(assert (=> b!1254725 m!1155621))

(assert (=> b!1254725 m!1155463))

(assert (=> b!1254725 m!1155619))

(declare-fun m!1155623 () Bool)

(assert (=> b!1254725 m!1155623))

(declare-fun m!1155625 () Bool)

(assert (=> b!1254725 m!1155625))

(declare-fun m!1155627 () Bool)

(assert (=> b!1254725 m!1155627))

(declare-fun m!1155629 () Bool)

(assert (=> b!1254725 m!1155629))

(declare-fun m!1155631 () Bool)

(assert (=> b!1254725 m!1155631))

(assert (=> b!1254725 m!1155603))

(assert (=> d!138031 m!1155465))

(assert (=> b!1254720 m!1155529))

(assert (=> b!1254720 m!1155529))

(assert (=> b!1254720 m!1155549))

(assert (=> b!1254615 d!138031))

(declare-fun b!1254744 () Bool)

(declare-fun e!713071 () Bool)

(declare-fun e!713072 () Bool)

(assert (=> b!1254744 (= e!713071 e!713072)))

(declare-fun lt!567258 () (_ BitVec 64))

(assert (=> b!1254744 (= lt!567258 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!567259 () Unit!41700)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!81421 (_ BitVec 64) (_ BitVec 32)) Unit!41700)

(assert (=> b!1254744 (= lt!567259 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!567258 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!81421 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1254744 (arrayContainsKey!0 _keys!1118 lt!567258 #b00000000000000000000000000000000)))

(declare-fun lt!567257 () Unit!41700)

(assert (=> b!1254744 (= lt!567257 lt!567259)))

(declare-fun res!836678 () Bool)

(declare-datatypes ((SeekEntryResult!9961 0))(
  ( (MissingZero!9961 (index!42214 (_ BitVec 32))) (Found!9961 (index!42215 (_ BitVec 32))) (Intermediate!9961 (undefined!10773 Bool) (index!42216 (_ BitVec 32)) (x!110449 (_ BitVec 32))) (Undefined!9961) (MissingVacant!9961 (index!42217 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!81421 (_ BitVec 32)) SeekEntryResult!9961)

(assert (=> b!1254744 (= res!836678 (= (seekEntryOrOpen!0 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9961 #b00000000000000000000000000000000)))))

(assert (=> b!1254744 (=> (not res!836678) (not e!713072))))

(declare-fun b!1254745 () Bool)

(declare-fun call!61756 () Bool)

(assert (=> b!1254745 (= e!713071 call!61756)))

(declare-fun b!1254746 () Bool)

(assert (=> b!1254746 (= e!713072 call!61756)))

(declare-fun bm!61753 () Bool)

(assert (=> bm!61753 (= call!61756 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun d!138033 () Bool)

(declare-fun res!836679 () Bool)

(declare-fun e!713070 () Bool)

(assert (=> d!138033 (=> res!836679 e!713070)))

(assert (=> d!138033 (= res!836679 (bvsge #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(assert (=> d!138033 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!713070)))

(declare-fun b!1254747 () Bool)

(assert (=> b!1254747 (= e!713070 e!713071)))

(declare-fun c!122310 () Bool)

(assert (=> b!1254747 (= c!122310 (validKeyInArray!0 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!138033 (not res!836679)) b!1254747))

(assert (= (and b!1254747 c!122310) b!1254744))

(assert (= (and b!1254747 (not c!122310)) b!1254745))

(assert (= (and b!1254744 res!836678) b!1254746))

(assert (= (or b!1254746 b!1254745) bm!61753))

(assert (=> b!1254744 m!1155529))

(declare-fun m!1155633 () Bool)

(assert (=> b!1254744 m!1155633))

(declare-fun m!1155635 () Bool)

(assert (=> b!1254744 m!1155635))

(assert (=> b!1254744 m!1155529))

(declare-fun m!1155637 () Bool)

(assert (=> b!1254744 m!1155637))

(declare-fun m!1155639 () Bool)

(assert (=> bm!61753 m!1155639))

(assert (=> b!1254747 m!1155529))

(assert (=> b!1254747 m!1155529))

(assert (=> b!1254747 m!1155549))

(assert (=> b!1254613 d!138033))

(declare-fun b!1254758 () Bool)

(declare-fun e!713082 () Bool)

(declare-fun contains!7544 (List!28054 (_ BitVec 64)) Bool)

(assert (=> b!1254758 (= e!713082 (contains!7544 Nil!28051 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1254759 () Bool)

(declare-fun e!713084 () Bool)

(declare-fun call!61759 () Bool)

(assert (=> b!1254759 (= e!713084 call!61759)))

(declare-fun b!1254760 () Bool)

(declare-fun e!713083 () Bool)

(assert (=> b!1254760 (= e!713083 e!713084)))

(declare-fun c!122313 () Bool)

(assert (=> b!1254760 (= c!122313 (validKeyInArray!0 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1254761 () Bool)

(assert (=> b!1254761 (= e!713084 call!61759)))

(declare-fun bm!61756 () Bool)

(assert (=> bm!61756 (= call!61759 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122313 (Cons!28050 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000) Nil!28051) Nil!28051)))))

(declare-fun d!138035 () Bool)

(declare-fun res!836686 () Bool)

(declare-fun e!713081 () Bool)

(assert (=> d!138035 (=> res!836686 e!713081)))

(assert (=> d!138035 (= res!836686 (bvsge #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(assert (=> d!138035 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28051) e!713081)))

(declare-fun b!1254762 () Bool)

(assert (=> b!1254762 (= e!713081 e!713083)))

(declare-fun res!836688 () Bool)

(assert (=> b!1254762 (=> (not res!836688) (not e!713083))))

(assert (=> b!1254762 (= res!836688 (not e!713082))))

(declare-fun res!836687 () Bool)

(assert (=> b!1254762 (=> (not res!836687) (not e!713082))))

(assert (=> b!1254762 (= res!836687 (validKeyInArray!0 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!138035 (not res!836686)) b!1254762))

(assert (= (and b!1254762 res!836687) b!1254758))

(assert (= (and b!1254762 res!836688) b!1254760))

(assert (= (and b!1254760 c!122313) b!1254761))

(assert (= (and b!1254760 (not c!122313)) b!1254759))

(assert (= (or b!1254761 b!1254759) bm!61756))

(assert (=> b!1254758 m!1155529))

(assert (=> b!1254758 m!1155529))

(declare-fun m!1155641 () Bool)

(assert (=> b!1254758 m!1155641))

(assert (=> b!1254760 m!1155529))

(assert (=> b!1254760 m!1155529))

(assert (=> b!1254760 m!1155549))

(assert (=> bm!61756 m!1155529))

(declare-fun m!1155643 () Bool)

(assert (=> bm!61756 m!1155643))

(assert (=> b!1254762 m!1155529))

(assert (=> b!1254762 m!1155529))

(assert (=> b!1254762 m!1155549))

(assert (=> b!1254616 d!138035))

(declare-fun d!138037 () Bool)

(assert (=> d!138037 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!105332 d!138037))

(declare-fun d!138039 () Bool)

(assert (=> d!138039 (= (array_inv!29867 _keys!1118) (bvsge (size!39804 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!105332 d!138039))

(declare-fun d!138041 () Bool)

(assert (=> d!138041 (= (array_inv!29868 _values!914) (bvsge (size!39803 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!105332 d!138041))

(declare-fun d!138043 () Bool)

(assert (=> d!138043 (= (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!567262 () Unit!41700)

(declare-fun choose!1865 (array!81421 array!81419 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47889 V!47889 V!47889 V!47889 (_ BitVec 32) Int) Unit!41700)

(assert (=> d!138043 (= lt!567262 (choose!1865 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!138043 (validMask!0 mask!1466)))

(assert (=> d!138043 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1043 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!567262)))

(declare-fun bs!35453 () Bool)

(assert (= bs!35453 d!138043))

(assert (=> bs!35453 m!1155463))

(assert (=> bs!35453 m!1155461))

(declare-fun m!1155645 () Bool)

(assert (=> bs!35453 m!1155645))

(assert (=> bs!35453 m!1155465))

(assert (=> b!1254611 d!138043))

(declare-fun e!713102 () Bool)

(declare-fun lt!567283 () ListLongMap!18697)

(declare-fun b!1254787 () Bool)

(assert (=> b!1254787 (= e!713102 (= lt!567283 (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1254788 () Bool)

(declare-fun e!713101 () Bool)

(declare-fun e!713105 () Bool)

(assert (=> b!1254788 (= e!713101 e!713105)))

(declare-fun c!122325 () Bool)

(declare-fun e!713100 () Bool)

(assert (=> b!1254788 (= c!122325 e!713100)))

(declare-fun res!836698 () Bool)

(assert (=> b!1254788 (=> (not res!836698) (not e!713100))))

(assert (=> b!1254788 (= res!836698 (bvslt #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(declare-fun d!138045 () Bool)

(assert (=> d!138045 e!713101))

(declare-fun res!836700 () Bool)

(assert (=> d!138045 (=> (not res!836700) (not e!713101))))

(assert (=> d!138045 (= res!836700 (not (contains!7542 lt!567283 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!713103 () ListLongMap!18697)

(assert (=> d!138045 (= lt!567283 e!713103)))

(declare-fun c!122322 () Bool)

(assert (=> d!138045 (= c!122322 (bvsge #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(assert (=> d!138045 (validMask!0 mask!1466)))

(assert (=> d!138045 (= (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!567283)))

(declare-fun b!1254789 () Bool)

(declare-fun isEmpty!1031 (ListLongMap!18697) Bool)

(assert (=> b!1254789 (= e!713102 (isEmpty!1031 lt!567283))))

(declare-fun b!1254790 () Bool)

(declare-fun e!713099 () ListLongMap!18697)

(assert (=> b!1254790 (= e!713103 e!713099)))

(declare-fun c!122323 () Bool)

(assert (=> b!1254790 (= c!122323 (validKeyInArray!0 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun call!61762 () ListLongMap!18697)

(declare-fun bm!61759 () Bool)

(assert (=> bm!61759 (= call!61762 (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1254791 () Bool)

(assert (=> b!1254791 (= e!713099 call!61762)))

(declare-fun b!1254792 () Bool)

(assert (=> b!1254792 (= e!713100 (validKeyInArray!0 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1254792 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1254793 () Bool)

(declare-fun e!713104 () Bool)

(assert (=> b!1254793 (= e!713105 e!713104)))

(assert (=> b!1254793 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(declare-fun res!836697 () Bool)

(assert (=> b!1254793 (= res!836697 (contains!7542 lt!567283 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1254793 (=> (not res!836697) (not e!713104))))

(declare-fun b!1254794 () Bool)

(declare-fun lt!567279 () Unit!41700)

(declare-fun lt!567282 () Unit!41700)

(assert (=> b!1254794 (= lt!567279 lt!567282)))

(declare-fun lt!567277 () ListLongMap!18697)

(declare-fun lt!567278 () V!47889)

(declare-fun lt!567281 () (_ BitVec 64))

(declare-fun lt!567280 () (_ BitVec 64))

(assert (=> b!1254794 (not (contains!7542 (+!4163 lt!567277 (tuple2!20813 lt!567280 lt!567278)) lt!567281))))

(declare-fun addStillNotContains!316 (ListLongMap!18697 (_ BitVec 64) V!47889 (_ BitVec 64)) Unit!41700)

(assert (=> b!1254794 (= lt!567282 (addStillNotContains!316 lt!567277 lt!567280 lt!567278 lt!567281))))

(assert (=> b!1254794 (= lt!567281 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1254794 (= lt!567278 (get!20141 (select (arr!39266 _values!914) #b00000000000000000000000000000000) (dynLambda!3466 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1254794 (= lt!567280 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1254794 (= lt!567277 call!61762)))

(assert (=> b!1254794 (= e!713099 (+!4163 call!61762 (tuple2!20813 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000) (get!20141 (select (arr!39266 _values!914) #b00000000000000000000000000000000) (dynLambda!3466 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1254795 () Bool)

(assert (=> b!1254795 (= e!713103 (ListLongMap!18698 Nil!28050))))

(declare-fun b!1254796 () Bool)

(assert (=> b!1254796 (= e!713105 e!713102)))

(declare-fun c!122324 () Bool)

(assert (=> b!1254796 (= c!122324 (bvslt #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(declare-fun b!1254797 () Bool)

(declare-fun res!836699 () Bool)

(assert (=> b!1254797 (=> (not res!836699) (not e!713101))))

(assert (=> b!1254797 (= res!836699 (not (contains!7542 lt!567283 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1254798 () Bool)

(assert (=> b!1254798 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(assert (=> b!1254798 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39803 _values!914)))))

(assert (=> b!1254798 (= e!713104 (= (apply!1021 lt!567283 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)) (get!20141 (select (arr!39266 _values!914) #b00000000000000000000000000000000) (dynLambda!3466 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!138045 c!122322) b!1254795))

(assert (= (and d!138045 (not c!122322)) b!1254790))

(assert (= (and b!1254790 c!122323) b!1254794))

(assert (= (and b!1254790 (not c!122323)) b!1254791))

(assert (= (or b!1254794 b!1254791) bm!61759))

(assert (= (and d!138045 res!836700) b!1254797))

(assert (= (and b!1254797 res!836699) b!1254788))

(assert (= (and b!1254788 res!836698) b!1254792))

(assert (= (and b!1254788 c!122325) b!1254793))

(assert (= (and b!1254788 (not c!122325)) b!1254796))

(assert (= (and b!1254793 res!836697) b!1254798))

(assert (= (and b!1254796 c!122324) b!1254787))

(assert (= (and b!1254796 (not c!122324)) b!1254789))

(declare-fun b_lambda!22641 () Bool)

(assert (=> (not b_lambda!22641) (not b!1254794)))

(assert (=> b!1254794 t!41547))

(declare-fun b_and!44835 () Bool)

(assert (= b_and!44833 (and (=> t!41547 result!23313) b_and!44835)))

(declare-fun b_lambda!22643 () Bool)

(assert (=> (not b_lambda!22643) (not b!1254798)))

(assert (=> b!1254798 t!41547))

(declare-fun b_and!44837 () Bool)

(assert (= b_and!44835 (and (=> t!41547 result!23313) b_and!44837)))

(declare-fun m!1155647 () Bool)

(assert (=> b!1254787 m!1155647))

(declare-fun m!1155649 () Bool)

(assert (=> b!1254789 m!1155649))

(assert (=> b!1254793 m!1155529))

(assert (=> b!1254793 m!1155529))

(declare-fun m!1155651 () Bool)

(assert (=> b!1254793 m!1155651))

(declare-fun m!1155653 () Bool)

(assert (=> b!1254794 m!1155653))

(declare-fun m!1155655 () Bool)

(assert (=> b!1254794 m!1155655))

(assert (=> b!1254794 m!1155655))

(declare-fun m!1155657 () Bool)

(assert (=> b!1254794 m!1155657))

(assert (=> b!1254794 m!1155529))

(assert (=> b!1254794 m!1155539))

(assert (=> b!1254794 m!1155541))

(assert (=> b!1254794 m!1155543))

(declare-fun m!1155659 () Bool)

(assert (=> b!1254794 m!1155659))

(assert (=> b!1254794 m!1155541))

(assert (=> b!1254794 m!1155539))

(assert (=> bm!61759 m!1155647))

(declare-fun m!1155661 () Bool)

(assert (=> b!1254797 m!1155661))

(declare-fun m!1155663 () Bool)

(assert (=> d!138045 m!1155663))

(assert (=> d!138045 m!1155465))

(assert (=> b!1254798 m!1155529))

(assert (=> b!1254798 m!1155541))

(assert (=> b!1254798 m!1155539))

(assert (=> b!1254798 m!1155529))

(declare-fun m!1155665 () Bool)

(assert (=> b!1254798 m!1155665))

(assert (=> b!1254798 m!1155539))

(assert (=> b!1254798 m!1155541))

(assert (=> b!1254798 m!1155543))

(assert (=> b!1254790 m!1155529))

(assert (=> b!1254790 m!1155529))

(assert (=> b!1254790 m!1155549))

(assert (=> b!1254792 m!1155529))

(assert (=> b!1254792 m!1155529))

(assert (=> b!1254792 m!1155549))

(assert (=> b!1254611 d!138045))

(declare-fun b!1254799 () Bool)

(declare-fun e!713109 () Bool)

(declare-fun lt!567290 () ListLongMap!18697)

(assert (=> b!1254799 (= e!713109 (= lt!567290 (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1254800 () Bool)

(declare-fun e!713108 () Bool)

(declare-fun e!713112 () Bool)

(assert (=> b!1254800 (= e!713108 e!713112)))

(declare-fun c!122329 () Bool)

(declare-fun e!713107 () Bool)

(assert (=> b!1254800 (= c!122329 e!713107)))

(declare-fun res!836702 () Bool)

(assert (=> b!1254800 (=> (not res!836702) (not e!713107))))

(assert (=> b!1254800 (= res!836702 (bvslt #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(declare-fun d!138047 () Bool)

(assert (=> d!138047 e!713108))

(declare-fun res!836704 () Bool)

(assert (=> d!138047 (=> (not res!836704) (not e!713108))))

(assert (=> d!138047 (= res!836704 (not (contains!7542 lt!567290 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!713110 () ListLongMap!18697)

(assert (=> d!138047 (= lt!567290 e!713110)))

(declare-fun c!122326 () Bool)

(assert (=> d!138047 (= c!122326 (bvsge #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(assert (=> d!138047 (validMask!0 mask!1466)))

(assert (=> d!138047 (= (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!567290)))

(declare-fun b!1254801 () Bool)

(assert (=> b!1254801 (= e!713109 (isEmpty!1031 lt!567290))))

(declare-fun b!1254802 () Bool)

(declare-fun e!713106 () ListLongMap!18697)

(assert (=> b!1254802 (= e!713110 e!713106)))

(declare-fun c!122327 () Bool)

(assert (=> b!1254802 (= c!122327 (validKeyInArray!0 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!61760 () Bool)

(declare-fun call!61763 () ListLongMap!18697)

(assert (=> bm!61760 (= call!61763 (getCurrentListMapNoExtraKeys!5725 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1254803 () Bool)

(assert (=> b!1254803 (= e!713106 call!61763)))

(declare-fun b!1254804 () Bool)

(assert (=> b!1254804 (= e!713107 (validKeyInArray!0 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1254804 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1254805 () Bool)

(declare-fun e!713111 () Bool)

(assert (=> b!1254805 (= e!713112 e!713111)))

(assert (=> b!1254805 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(declare-fun res!836701 () Bool)

(assert (=> b!1254805 (= res!836701 (contains!7542 lt!567290 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1254805 (=> (not res!836701) (not e!713111))))

(declare-fun b!1254806 () Bool)

(declare-fun lt!567286 () Unit!41700)

(declare-fun lt!567289 () Unit!41700)

(assert (=> b!1254806 (= lt!567286 lt!567289)))

(declare-fun lt!567287 () (_ BitVec 64))

(declare-fun lt!567284 () ListLongMap!18697)

(declare-fun lt!567285 () V!47889)

(declare-fun lt!567288 () (_ BitVec 64))

(assert (=> b!1254806 (not (contains!7542 (+!4163 lt!567284 (tuple2!20813 lt!567287 lt!567285)) lt!567288))))

(assert (=> b!1254806 (= lt!567289 (addStillNotContains!316 lt!567284 lt!567287 lt!567285 lt!567288))))

(assert (=> b!1254806 (= lt!567288 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1254806 (= lt!567285 (get!20141 (select (arr!39266 _values!914) #b00000000000000000000000000000000) (dynLambda!3466 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1254806 (= lt!567287 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1254806 (= lt!567284 call!61763)))

(assert (=> b!1254806 (= e!713106 (+!4163 call!61763 (tuple2!20813 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000) (get!20141 (select (arr!39266 _values!914) #b00000000000000000000000000000000) (dynLambda!3466 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1254807 () Bool)

(assert (=> b!1254807 (= e!713110 (ListLongMap!18698 Nil!28050))))

(declare-fun b!1254808 () Bool)

(assert (=> b!1254808 (= e!713112 e!713109)))

(declare-fun c!122328 () Bool)

(assert (=> b!1254808 (= c!122328 (bvslt #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(declare-fun b!1254809 () Bool)

(declare-fun res!836703 () Bool)

(assert (=> b!1254809 (=> (not res!836703) (not e!713108))))

(assert (=> b!1254809 (= res!836703 (not (contains!7542 lt!567290 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1254810 () Bool)

(assert (=> b!1254810 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39804 _keys!1118)))))

(assert (=> b!1254810 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39803 _values!914)))))

(assert (=> b!1254810 (= e!713111 (= (apply!1021 lt!567290 (select (arr!39267 _keys!1118) #b00000000000000000000000000000000)) (get!20141 (select (arr!39266 _values!914) #b00000000000000000000000000000000) (dynLambda!3466 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!138047 c!122326) b!1254807))

(assert (= (and d!138047 (not c!122326)) b!1254802))

(assert (= (and b!1254802 c!122327) b!1254806))

(assert (= (and b!1254802 (not c!122327)) b!1254803))

(assert (= (or b!1254806 b!1254803) bm!61760))

(assert (= (and d!138047 res!836704) b!1254809))

(assert (= (and b!1254809 res!836703) b!1254800))

(assert (= (and b!1254800 res!836702) b!1254804))

(assert (= (and b!1254800 c!122329) b!1254805))

(assert (= (and b!1254800 (not c!122329)) b!1254808))

(assert (= (and b!1254805 res!836701) b!1254810))

(assert (= (and b!1254808 c!122328) b!1254799))

(assert (= (and b!1254808 (not c!122328)) b!1254801))

(declare-fun b_lambda!22645 () Bool)

(assert (=> (not b_lambda!22645) (not b!1254806)))

(assert (=> b!1254806 t!41547))

(declare-fun b_and!44839 () Bool)

(assert (= b_and!44837 (and (=> t!41547 result!23313) b_and!44839)))

(declare-fun b_lambda!22647 () Bool)

(assert (=> (not b_lambda!22647) (not b!1254810)))

(assert (=> b!1254810 t!41547))

(declare-fun b_and!44841 () Bool)

(assert (= b_and!44839 (and (=> t!41547 result!23313) b_and!44841)))

(declare-fun m!1155667 () Bool)

(assert (=> b!1254799 m!1155667))

(declare-fun m!1155669 () Bool)

(assert (=> b!1254801 m!1155669))

(assert (=> b!1254805 m!1155529))

(assert (=> b!1254805 m!1155529))

(declare-fun m!1155671 () Bool)

(assert (=> b!1254805 m!1155671))

(declare-fun m!1155673 () Bool)

(assert (=> b!1254806 m!1155673))

(declare-fun m!1155675 () Bool)

(assert (=> b!1254806 m!1155675))

(assert (=> b!1254806 m!1155675))

(declare-fun m!1155677 () Bool)

(assert (=> b!1254806 m!1155677))

(assert (=> b!1254806 m!1155529))

(assert (=> b!1254806 m!1155539))

(assert (=> b!1254806 m!1155541))

(assert (=> b!1254806 m!1155543))

(declare-fun m!1155679 () Bool)

(assert (=> b!1254806 m!1155679))

(assert (=> b!1254806 m!1155541))

(assert (=> b!1254806 m!1155539))

(assert (=> bm!61760 m!1155667))

(declare-fun m!1155681 () Bool)

(assert (=> b!1254809 m!1155681))

(declare-fun m!1155683 () Bool)

(assert (=> d!138047 m!1155683))

(assert (=> d!138047 m!1155465))

(assert (=> b!1254810 m!1155529))

(assert (=> b!1254810 m!1155541))

(assert (=> b!1254810 m!1155539))

(assert (=> b!1254810 m!1155529))

(declare-fun m!1155685 () Bool)

(assert (=> b!1254810 m!1155685))

(assert (=> b!1254810 m!1155539))

(assert (=> b!1254810 m!1155541))

(assert (=> b!1254810 m!1155543))

(assert (=> b!1254802 m!1155529))

(assert (=> b!1254802 m!1155529))

(assert (=> b!1254802 m!1155549))

(assert (=> b!1254804 m!1155529))

(assert (=> b!1254804 m!1155529))

(assert (=> b!1254804 m!1155549))

(assert (=> b!1254611 d!138047))

(declare-fun mapNonEmpty!49624 () Bool)

(declare-fun mapRes!49624 () Bool)

(declare-fun tp!94491 () Bool)

(declare-fun e!713117 () Bool)

(assert (=> mapNonEmpty!49624 (= mapRes!49624 (and tp!94491 e!713117))))

(declare-fun mapValue!49624 () ValueCell!15183)

(declare-fun mapRest!49624 () (Array (_ BitVec 32) ValueCell!15183))

(declare-fun mapKey!49624 () (_ BitVec 32))

(assert (=> mapNonEmpty!49624 (= mapRest!49618 (store mapRest!49624 mapKey!49624 mapValue!49624))))

(declare-fun mapIsEmpty!49624 () Bool)

(assert (=> mapIsEmpty!49624 mapRes!49624))

(declare-fun b!1254818 () Bool)

(declare-fun e!713118 () Bool)

(assert (=> b!1254818 (= e!713118 tp_is_empty!31893)))

(declare-fun condMapEmpty!49624 () Bool)

(declare-fun mapDefault!49624 () ValueCell!15183)

(assert (=> mapNonEmpty!49618 (= condMapEmpty!49624 (= mapRest!49618 ((as const (Array (_ BitVec 32) ValueCell!15183)) mapDefault!49624)))))

(assert (=> mapNonEmpty!49618 (= tp!94482 (and e!713118 mapRes!49624))))

(declare-fun b!1254817 () Bool)

(assert (=> b!1254817 (= e!713117 tp_is_empty!31893)))

(assert (= (and mapNonEmpty!49618 condMapEmpty!49624) mapIsEmpty!49624))

(assert (= (and mapNonEmpty!49618 (not condMapEmpty!49624)) mapNonEmpty!49624))

(assert (= (and mapNonEmpty!49624 ((_ is ValueCellFull!15183) mapValue!49624)) b!1254817))

(assert (= (and mapNonEmpty!49618 ((_ is ValueCellFull!15183) mapDefault!49624)) b!1254818))

(declare-fun m!1155687 () Bool)

(assert (=> mapNonEmpty!49624 m!1155687))

(declare-fun b_lambda!22649 () Bool)

(assert (= b_lambda!22647 (or (and start!105332 b_free!26991) b_lambda!22649)))

(declare-fun b_lambda!22651 () Bool)

(assert (= b_lambda!22637 (or (and start!105332 b_free!26991) b_lambda!22651)))

(declare-fun b_lambda!22653 () Bool)

(assert (= b_lambda!22641 (or (and start!105332 b_free!26991) b_lambda!22653)))

(declare-fun b_lambda!22655 () Bool)

(assert (= b_lambda!22639 (or (and start!105332 b_free!26991) b_lambda!22655)))

(declare-fun b_lambda!22657 () Bool)

(assert (= b_lambda!22643 (or (and start!105332 b_free!26991) b_lambda!22657)))

(declare-fun b_lambda!22659 () Bool)

(assert (= b_lambda!22645 (or (and start!105332 b_free!26991) b_lambda!22659)))

(check-sat (not b!1254711) (not b!1254810) (not b!1254787) (not bm!61750) (not bm!61740) (not bm!61756) (not b!1254728) (not b_next!26991) (not b!1254702) tp_is_empty!31893 (not d!138031) (not b!1254809) (not b!1254707) (not b!1254704) (not d!138021) (not b!1254709) (not b!1254802) (not b!1254798) (not bm!61759) (not b!1254801) (not bm!61747) (not b!1254789) (not d!138027) (not d!138043) (not b!1254790) (not b!1254805) (not d!138047) (not b!1254793) (not b!1254732) b_and!44841 (not bm!61745) (not b_lambda!22651) (not bm!61741) (not b!1254762) (not b_lambda!22653) (not b!1254730) (not b_lambda!22659) (not b!1254744) (not b!1254648) (not b!1254649) (not b_lambda!22655) (not b!1254720) (not b!1254727) (not bm!61753) (not b!1254705) (not b!1254722) (not b!1254725) (not bm!61743) (not mapNonEmpty!49624) (not b!1254806) (not b!1254697) (not b!1254760) (not b!1254792) (not d!138045) (not bm!61748) (not b!1254804) (not d!138023) (not b!1254799) (not b!1254758) (not bm!61760) (not b!1254734) (not b!1254699) (not b_lambda!22657) (not d!138025) (not b!1254794) (not bm!61738) (not b!1254797) (not b_lambda!22649) (not d!138029) (not b!1254747))
(check-sat b_and!44841 (not b_next!26991))
