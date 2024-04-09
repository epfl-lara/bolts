; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106066 () Bool)

(assert start!106066)

(declare-fun b_free!27483 () Bool)

(declare-fun b_next!27483 () Bool)

(assert (=> start!106066 (= b_free!27483 (not b_next!27483))))

(declare-fun tp!95996 () Bool)

(declare-fun b_and!45455 () Bool)

(assert (=> start!106066 (= tp!95996 b_and!45455)))

(declare-fun b!1262564 () Bool)

(declare-fun e!718756 () Bool)

(declare-fun tp_is_empty!32385 () Bool)

(assert (=> b!1262564 (= e!718756 tp_is_empty!32385)))

(declare-fun b!1262565 () Bool)

(declare-fun e!718753 () Bool)

(declare-fun e!718755 () Bool)

(assert (=> b!1262565 (= e!718753 (not e!718755))))

(declare-fun res!841196 () Bool)

(assert (=> b!1262565 (=> res!841196 e!718755)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1262565 (= res!841196 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!48545 0))(
  ( (V!48546 (val!16255 Int)) )
))
(declare-datatypes ((tuple2!21184 0))(
  ( (tuple2!21185 (_1!10602 (_ BitVec 64)) (_2!10602 V!48545)) )
))
(declare-datatypes ((List!28405 0))(
  ( (Nil!28402) (Cons!28401 (h!29610 tuple2!21184) (t!41921 List!28405)) )
))
(declare-datatypes ((ListLongMap!19069 0))(
  ( (ListLongMap!19070 (toList!9550 List!28405)) )
))
(declare-fun lt!572344 () ListLongMap!19069)

(declare-fun lt!572340 () ListLongMap!19069)

(assert (=> b!1262565 (= lt!572344 lt!572340)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48545)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48545)

(declare-datatypes ((array!82373 0))(
  ( (array!82374 (arr!39730 (Array (_ BitVec 32) (_ BitVec 64))) (size!40267 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82373)

(declare-datatypes ((ValueCell!15429 0))(
  ( (ValueCellFull!15429 (v!18963 V!48545)) (EmptyCell!15429) )
))
(declare-datatypes ((array!82375 0))(
  ( (array!82376 (arr!39731 (Array (_ BitVec 32) ValueCell!15429)) (size!40268 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82375)

(declare-fun minValueBefore!43 () V!48545)

(declare-datatypes ((Unit!42034 0))(
  ( (Unit!42035) )
))
(declare-fun lt!572341 () Unit!42034)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1186 (array!82373 array!82375 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48545 V!48545 V!48545 V!48545 (_ BitVec 32) Int) Unit!42034)

(assert (=> b!1262565 (= lt!572341 (lemmaNoChangeToArrayThenSameMapNoExtras!1186 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5890 (array!82373 array!82375 (_ BitVec 32) (_ BitVec 32) V!48545 V!48545 (_ BitVec 32) Int) ListLongMap!19069)

(assert (=> b!1262565 (= lt!572340 (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1262565 (= lt!572344 (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1262566 () Bool)

(declare-fun e!718752 () Bool)

(assert (=> b!1262566 (= e!718752 tp_is_empty!32385)))

(declare-fun mapNonEmpty!50395 () Bool)

(declare-fun mapRes!50395 () Bool)

(declare-fun tp!95997 () Bool)

(assert (=> mapNonEmpty!50395 (= mapRes!50395 (and tp!95997 e!718756))))

(declare-fun mapKey!50395 () (_ BitVec 32))

(declare-fun mapRest!50395 () (Array (_ BitVec 32) ValueCell!15429))

(declare-fun mapValue!50395 () ValueCell!15429)

(assert (=> mapNonEmpty!50395 (= (arr!39731 _values!914) (store mapRest!50395 mapKey!50395 mapValue!50395))))

(declare-fun b!1262567 () Bool)

(declare-fun res!841197 () Bool)

(assert (=> b!1262567 (=> (not res!841197) (not e!718753))))

(declare-datatypes ((List!28406 0))(
  ( (Nil!28403) (Cons!28402 (h!29611 (_ BitVec 64)) (t!41922 List!28406)) )
))
(declare-fun arrayNoDuplicates!0 (array!82373 (_ BitVec 32) List!28406) Bool)

(assert (=> b!1262567 (= res!841197 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28403))))

(declare-fun b!1262568 () Bool)

(declare-fun e!718754 () Bool)

(declare-fun lt!572342 () ListLongMap!19069)

(assert (=> b!1262568 (= e!718754 (= lt!572342 lt!572340))))

(declare-fun mapIsEmpty!50395 () Bool)

(assert (=> mapIsEmpty!50395 mapRes!50395))

(declare-fun b!1262570 () Bool)

(declare-fun e!718757 () Bool)

(assert (=> b!1262570 (= e!718757 (and e!718752 mapRes!50395))))

(declare-fun condMapEmpty!50395 () Bool)

(declare-fun mapDefault!50395 () ValueCell!15429)

(assert (=> b!1262570 (= condMapEmpty!50395 (= (arr!39731 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15429)) mapDefault!50395)))))

(declare-fun b!1262571 () Bool)

(declare-fun res!841193 () Bool)

(assert (=> b!1262571 (=> (not res!841193) (not e!718753))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82373 (_ BitVec 32)) Bool)

(assert (=> b!1262571 (= res!841193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1262572 () Bool)

(declare-fun contains!7616 (ListLongMap!19069 (_ BitVec 64)) Bool)

(assert (=> b!1262572 (= e!718755 (not (contains!7616 lt!572344 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1262572 e!718754))

(declare-fun res!841195 () Bool)

(assert (=> b!1262572 (=> (not res!841195) (not e!718754))))

(declare-fun lt!572343 () ListLongMap!19069)

(declare-fun +!4218 (ListLongMap!19069 tuple2!21184) ListLongMap!19069)

(assert (=> b!1262572 (= res!841195 (= lt!572343 (+!4218 lt!572344 (tuple2!21185 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun getCurrentListMap!4655 (array!82373 array!82375 (_ BitVec 32) (_ BitVec 32) V!48545 V!48545 (_ BitVec 32) Int) ListLongMap!19069)

(assert (=> b!1262572 (= lt!572342 (getCurrentListMap!4655 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1262572 (= lt!572343 (getCurrentListMap!4655 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1262569 () Bool)

(declare-fun res!841194 () Bool)

(assert (=> b!1262569 (=> (not res!841194) (not e!718753))))

(assert (=> b!1262569 (= res!841194 (and (= (size!40268 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40267 _keys!1118) (size!40268 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!841192 () Bool)

(assert (=> start!106066 (=> (not res!841192) (not e!718753))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106066 (= res!841192 (validMask!0 mask!1466))))

(assert (=> start!106066 e!718753))

(assert (=> start!106066 true))

(assert (=> start!106066 tp!95996))

(assert (=> start!106066 tp_is_empty!32385))

(declare-fun array_inv!30195 (array!82373) Bool)

(assert (=> start!106066 (array_inv!30195 _keys!1118)))

(declare-fun array_inv!30196 (array!82375) Bool)

(assert (=> start!106066 (and (array_inv!30196 _values!914) e!718757)))

(assert (= (and start!106066 res!841192) b!1262569))

(assert (= (and b!1262569 res!841194) b!1262571))

(assert (= (and b!1262571 res!841193) b!1262567))

(assert (= (and b!1262567 res!841197) b!1262565))

(assert (= (and b!1262565 (not res!841196)) b!1262572))

(assert (= (and b!1262572 res!841195) b!1262568))

(assert (= (and b!1262570 condMapEmpty!50395) mapIsEmpty!50395))

(assert (= (and b!1262570 (not condMapEmpty!50395)) mapNonEmpty!50395))

(get-info :version)

(assert (= (and mapNonEmpty!50395 ((_ is ValueCellFull!15429) mapValue!50395)) b!1262564))

(assert (= (and b!1262570 ((_ is ValueCellFull!15429) mapDefault!50395)) b!1262566))

(assert (= start!106066 b!1262570))

(declare-fun m!1163107 () Bool)

(assert (=> b!1262567 m!1163107))

(declare-fun m!1163109 () Bool)

(assert (=> start!106066 m!1163109))

(declare-fun m!1163111 () Bool)

(assert (=> start!106066 m!1163111))

(declare-fun m!1163113 () Bool)

(assert (=> start!106066 m!1163113))

(declare-fun m!1163115 () Bool)

(assert (=> mapNonEmpty!50395 m!1163115))

(declare-fun m!1163117 () Bool)

(assert (=> b!1262571 m!1163117))

(declare-fun m!1163119 () Bool)

(assert (=> b!1262565 m!1163119))

(declare-fun m!1163121 () Bool)

(assert (=> b!1262565 m!1163121))

(declare-fun m!1163123 () Bool)

(assert (=> b!1262565 m!1163123))

(declare-fun m!1163125 () Bool)

(assert (=> b!1262572 m!1163125))

(declare-fun m!1163127 () Bool)

(assert (=> b!1262572 m!1163127))

(declare-fun m!1163129 () Bool)

(assert (=> b!1262572 m!1163129))

(declare-fun m!1163131 () Bool)

(assert (=> b!1262572 m!1163131))

(check-sat (not b!1262567) (not mapNonEmpty!50395) b_and!45455 (not start!106066) tp_is_empty!32385 (not b!1262565) (not b!1262571) (not b!1262572) (not b_next!27483))
(check-sat b_and!45455 (not b_next!27483))
(get-model)

(declare-fun d!138479 () Bool)

(declare-fun e!718784 () Bool)

(assert (=> d!138479 e!718784))

(declare-fun res!841218 () Bool)

(assert (=> d!138479 (=> res!841218 e!718784)))

(declare-fun lt!572368 () Bool)

(assert (=> d!138479 (= res!841218 (not lt!572368))))

(declare-fun lt!572369 () Bool)

(assert (=> d!138479 (= lt!572368 lt!572369)))

(declare-fun lt!572370 () Unit!42034)

(declare-fun e!718785 () Unit!42034)

(assert (=> d!138479 (= lt!572370 e!718785)))

(declare-fun c!122800 () Bool)

(assert (=> d!138479 (= c!122800 lt!572369)))

(declare-fun containsKey!623 (List!28405 (_ BitVec 64)) Bool)

(assert (=> d!138479 (= lt!572369 (containsKey!623 (toList!9550 lt!572344) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138479 (= (contains!7616 lt!572344 #b1000000000000000000000000000000000000000000000000000000000000000) lt!572368)))

(declare-fun b!1262606 () Bool)

(declare-fun lt!572371 () Unit!42034)

(assert (=> b!1262606 (= e!718785 lt!572371)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!433 (List!28405 (_ BitVec 64)) Unit!42034)

(assert (=> b!1262606 (= lt!572371 (lemmaContainsKeyImpliesGetValueByKeyDefined!433 (toList!9550 lt!572344) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!718 0))(
  ( (Some!717 (v!18965 V!48545)) (None!716) )
))
(declare-fun isDefined!473 (Option!718) Bool)

(declare-fun getValueByKey!667 (List!28405 (_ BitVec 64)) Option!718)

(assert (=> b!1262606 (isDefined!473 (getValueByKey!667 (toList!9550 lt!572344) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1262607 () Bool)

(declare-fun Unit!42038 () Unit!42034)

(assert (=> b!1262607 (= e!718785 Unit!42038)))

(declare-fun b!1262608 () Bool)

(assert (=> b!1262608 (= e!718784 (isDefined!473 (getValueByKey!667 (toList!9550 lt!572344) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!138479 c!122800) b!1262606))

(assert (= (and d!138479 (not c!122800)) b!1262607))

(assert (= (and d!138479 (not res!841218)) b!1262608))

(declare-fun m!1163159 () Bool)

(assert (=> d!138479 m!1163159))

(declare-fun m!1163161 () Bool)

(assert (=> b!1262606 m!1163161))

(declare-fun m!1163163 () Bool)

(assert (=> b!1262606 m!1163163))

(assert (=> b!1262606 m!1163163))

(declare-fun m!1163165 () Bool)

(assert (=> b!1262606 m!1163165))

(assert (=> b!1262608 m!1163163))

(assert (=> b!1262608 m!1163163))

(assert (=> b!1262608 m!1163165))

(assert (=> b!1262572 d!138479))

(declare-fun d!138481 () Bool)

(declare-fun e!718788 () Bool)

(assert (=> d!138481 e!718788))

(declare-fun res!841224 () Bool)

(assert (=> d!138481 (=> (not res!841224) (not e!718788))))

(declare-fun lt!572383 () ListLongMap!19069)

(assert (=> d!138481 (= res!841224 (contains!7616 lt!572383 (_1!10602 (tuple2!21185 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lt!572382 () List!28405)

(assert (=> d!138481 (= lt!572383 (ListLongMap!19070 lt!572382))))

(declare-fun lt!572380 () Unit!42034)

(declare-fun lt!572381 () Unit!42034)

(assert (=> d!138481 (= lt!572380 lt!572381)))

(assert (=> d!138481 (= (getValueByKey!667 lt!572382 (_1!10602 (tuple2!21185 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!717 (_2!10602 (tuple2!21185 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lemmaContainsTupThenGetReturnValue!336 (List!28405 (_ BitVec 64) V!48545) Unit!42034)

(assert (=> d!138481 (= lt!572381 (lemmaContainsTupThenGetReturnValue!336 lt!572382 (_1!10602 (tuple2!21185 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10602 (tuple2!21185 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun insertStrictlySorted!449 (List!28405 (_ BitVec 64) V!48545) List!28405)

(assert (=> d!138481 (= lt!572382 (insertStrictlySorted!449 (toList!9550 lt!572344) (_1!10602 (tuple2!21185 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10602 (tuple2!21185 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(assert (=> d!138481 (= (+!4218 lt!572344 (tuple2!21185 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) lt!572383)))

(declare-fun b!1262613 () Bool)

(declare-fun res!841223 () Bool)

(assert (=> b!1262613 (=> (not res!841223) (not e!718788))))

(assert (=> b!1262613 (= res!841223 (= (getValueByKey!667 (toList!9550 lt!572383) (_1!10602 (tuple2!21185 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!717 (_2!10602 (tuple2!21185 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))))

(declare-fun b!1262614 () Bool)

(declare-fun contains!7618 (List!28405 tuple2!21184) Bool)

(assert (=> b!1262614 (= e!718788 (contains!7618 (toList!9550 lt!572383) (tuple2!21185 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (= (and d!138481 res!841224) b!1262613))

(assert (= (and b!1262613 res!841223) b!1262614))

(declare-fun m!1163167 () Bool)

(assert (=> d!138481 m!1163167))

(declare-fun m!1163169 () Bool)

(assert (=> d!138481 m!1163169))

(declare-fun m!1163171 () Bool)

(assert (=> d!138481 m!1163171))

(declare-fun m!1163173 () Bool)

(assert (=> d!138481 m!1163173))

(declare-fun m!1163175 () Bool)

(assert (=> b!1262613 m!1163175))

(declare-fun m!1163177 () Bool)

(assert (=> b!1262614 m!1163177))

(assert (=> b!1262572 d!138481))

(declare-fun bm!62119 () Bool)

(declare-fun call!62127 () Bool)

(declare-fun lt!572445 () ListLongMap!19069)

(assert (=> bm!62119 (= call!62127 (contains!7616 lt!572445 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1262657 () Bool)

(declare-fun e!718822 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1262657 (= e!718822 (validKeyInArray!0 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1262658 () Bool)

(declare-fun e!718825 () Bool)

(declare-fun e!718827 () Bool)

(assert (=> b!1262658 (= e!718825 e!718827)))

(declare-fun res!841244 () Bool)

(assert (=> b!1262658 (= res!841244 call!62127)))

(assert (=> b!1262658 (=> (not res!841244) (not e!718827))))

(declare-fun b!1262659 () Bool)

(assert (=> b!1262659 (= e!718825 (not call!62127))))

(declare-fun b!1262660 () Bool)

(declare-fun e!718818 () Bool)

(declare-fun e!718821 () Bool)

(assert (=> b!1262660 (= e!718818 e!718821)))

(declare-fun res!841251 () Bool)

(assert (=> b!1262660 (=> (not res!841251) (not e!718821))))

(assert (=> b!1262660 (= res!841251 (contains!7616 lt!572445 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1262660 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(declare-fun b!1262662 () Bool)

(declare-fun res!841245 () Bool)

(declare-fun e!718823 () Bool)

(assert (=> b!1262662 (=> (not res!841245) (not e!718823))))

(assert (=> b!1262662 (= res!841245 e!718818)))

(declare-fun res!841248 () Bool)

(assert (=> b!1262662 (=> res!841248 e!718818)))

(declare-fun e!718826 () Bool)

(assert (=> b!1262662 (= res!841248 (not e!718826))))

(declare-fun res!841249 () Bool)

(assert (=> b!1262662 (=> (not res!841249) (not e!718826))))

(assert (=> b!1262662 (= res!841249 (bvslt #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(declare-fun b!1262663 () Bool)

(declare-fun e!718817 () Bool)

(declare-fun call!62123 () Bool)

(assert (=> b!1262663 (= e!718817 (not call!62123))))

(declare-fun bm!62120 () Bool)

(declare-fun call!62122 () ListLongMap!19069)

(declare-fun call!62124 () ListLongMap!19069)

(assert (=> bm!62120 (= call!62122 call!62124)))

(declare-fun b!1262664 () Bool)

(declare-fun e!718820 () Bool)

(assert (=> b!1262664 (= e!718817 e!718820)))

(declare-fun res!841243 () Bool)

(assert (=> b!1262664 (= res!841243 call!62123)))

(assert (=> b!1262664 (=> (not res!841243) (not e!718820))))

(declare-fun b!1262665 () Bool)

(assert (=> b!1262665 (= e!718826 (validKeyInArray!0 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1262666 () Bool)

(declare-fun e!718819 () ListLongMap!19069)

(assert (=> b!1262666 (= e!718819 call!62122)))

(declare-fun b!1262667 () Bool)

(declare-fun e!718816 () Unit!42034)

(declare-fun lt!572443 () Unit!42034)

(assert (=> b!1262667 (= e!718816 lt!572443)))

(declare-fun lt!572438 () ListLongMap!19069)

(assert (=> b!1262667 (= lt!572438 (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572428 () (_ BitVec 64))

(assert (=> b!1262667 (= lt!572428 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572430 () (_ BitVec 64))

(assert (=> b!1262667 (= lt!572430 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572439 () Unit!42034)

(declare-fun addStillContains!1105 (ListLongMap!19069 (_ BitVec 64) V!48545 (_ BitVec 64)) Unit!42034)

(assert (=> b!1262667 (= lt!572439 (addStillContains!1105 lt!572438 lt!572428 zeroValue!871 lt!572430))))

(assert (=> b!1262667 (contains!7616 (+!4218 lt!572438 (tuple2!21185 lt!572428 zeroValue!871)) lt!572430)))

(declare-fun lt!572449 () Unit!42034)

(assert (=> b!1262667 (= lt!572449 lt!572439)))

(declare-fun lt!572446 () ListLongMap!19069)

(assert (=> b!1262667 (= lt!572446 (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572441 () (_ BitVec 64))

(assert (=> b!1262667 (= lt!572441 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572437 () (_ BitVec 64))

(assert (=> b!1262667 (= lt!572437 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572444 () Unit!42034)

(declare-fun addApplyDifferent!539 (ListLongMap!19069 (_ BitVec 64) V!48545 (_ BitVec 64)) Unit!42034)

(assert (=> b!1262667 (= lt!572444 (addApplyDifferent!539 lt!572446 lt!572441 minValueAfter!43 lt!572437))))

(declare-fun apply!1034 (ListLongMap!19069 (_ BitVec 64)) V!48545)

(assert (=> b!1262667 (= (apply!1034 (+!4218 lt!572446 (tuple2!21185 lt!572441 minValueAfter!43)) lt!572437) (apply!1034 lt!572446 lt!572437))))

(declare-fun lt!572440 () Unit!42034)

(assert (=> b!1262667 (= lt!572440 lt!572444)))

(declare-fun lt!572429 () ListLongMap!19069)

(assert (=> b!1262667 (= lt!572429 (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572433 () (_ BitVec 64))

(assert (=> b!1262667 (= lt!572433 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572448 () (_ BitVec 64))

(assert (=> b!1262667 (= lt!572448 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572442 () Unit!42034)

(assert (=> b!1262667 (= lt!572442 (addApplyDifferent!539 lt!572429 lt!572433 zeroValue!871 lt!572448))))

(assert (=> b!1262667 (= (apply!1034 (+!4218 lt!572429 (tuple2!21185 lt!572433 zeroValue!871)) lt!572448) (apply!1034 lt!572429 lt!572448))))

(declare-fun lt!572435 () Unit!42034)

(assert (=> b!1262667 (= lt!572435 lt!572442)))

(declare-fun lt!572436 () ListLongMap!19069)

(assert (=> b!1262667 (= lt!572436 (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572432 () (_ BitVec 64))

(assert (=> b!1262667 (= lt!572432 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572447 () (_ BitVec 64))

(assert (=> b!1262667 (= lt!572447 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1262667 (= lt!572443 (addApplyDifferent!539 lt!572436 lt!572432 minValueAfter!43 lt!572447))))

(assert (=> b!1262667 (= (apply!1034 (+!4218 lt!572436 (tuple2!21185 lt!572432 minValueAfter!43)) lt!572447) (apply!1034 lt!572436 lt!572447))))

(declare-fun b!1262668 () Bool)

(declare-fun e!718815 () ListLongMap!19069)

(assert (=> b!1262668 (= e!718815 (+!4218 call!62124 (tuple2!21185 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43)))))

(declare-fun b!1262669 () Bool)

(declare-fun call!62125 () ListLongMap!19069)

(assert (=> b!1262669 (= e!718819 call!62125)))

(declare-fun b!1262670 () Bool)

(assert (=> b!1262670 (= e!718820 (= (apply!1034 lt!572445 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!43))))

(declare-fun bm!62121 () Bool)

(assert (=> bm!62121 (= call!62123 (contains!7616 lt!572445 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!62122 () Bool)

(declare-fun call!62126 () ListLongMap!19069)

(assert (=> bm!62122 (= call!62125 call!62126)))

(declare-fun bm!62123 () Bool)

(declare-fun call!62128 () ListLongMap!19069)

(assert (=> bm!62123 (= call!62126 call!62128)))

(declare-fun d!138483 () Bool)

(assert (=> d!138483 e!718823))

(declare-fun res!841247 () Bool)

(assert (=> d!138483 (=> (not res!841247) (not e!718823))))

(assert (=> d!138483 (= res!841247 (or (bvsge #b00000000000000000000000000000000 (size!40267 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40267 _keys!1118)))))))

(declare-fun lt!572431 () ListLongMap!19069)

(assert (=> d!138483 (= lt!572445 lt!572431)))

(declare-fun lt!572434 () Unit!42034)

(assert (=> d!138483 (= lt!572434 e!718816)))

(declare-fun c!122814 () Bool)

(assert (=> d!138483 (= c!122814 e!718822)))

(declare-fun res!841250 () Bool)

(assert (=> d!138483 (=> (not res!841250) (not e!718822))))

(assert (=> d!138483 (= res!841250 (bvslt #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(assert (=> d!138483 (= lt!572431 e!718815)))

(declare-fun c!122818 () Bool)

(assert (=> d!138483 (= c!122818 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138483 (validMask!0 mask!1466)))

(assert (=> d!138483 (= (getCurrentListMap!4655 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572445)))

(declare-fun b!1262661 () Bool)

(declare-fun e!718824 () ListLongMap!19069)

(assert (=> b!1262661 (= e!718815 e!718824)))

(declare-fun c!122815 () Bool)

(assert (=> b!1262661 (= c!122815 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1262671 () Bool)

(declare-fun c!122817 () Bool)

(assert (=> b!1262671 (= c!122817 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1262671 (= e!718824 e!718819)))

(declare-fun bm!62124 () Bool)

(assert (=> bm!62124 (= call!62124 (+!4218 (ite c!122818 call!62128 (ite c!122815 call!62126 call!62125)) (ite (or c!122818 c!122815) (tuple2!21185 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21185 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43))))))

(declare-fun b!1262672 () Bool)

(declare-fun Unit!42039 () Unit!42034)

(assert (=> b!1262672 (= e!718816 Unit!42039)))

(declare-fun bm!62125 () Bool)

(assert (=> bm!62125 (= call!62128 (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1262673 () Bool)

(assert (=> b!1262673 (= e!718823 e!718817)))

(declare-fun c!122816 () Bool)

(assert (=> b!1262673 (= c!122816 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1262674 () Bool)

(assert (=> b!1262674 (= e!718827 (= (apply!1034 lt!572445 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1262675 () Bool)

(declare-fun get!20318 (ValueCell!15429 V!48545) V!48545)

(declare-fun dynLambda!3479 (Int (_ BitVec 64)) V!48545)

(assert (=> b!1262675 (= e!718821 (= (apply!1034 lt!572445 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)) (get!20318 (select (arr!39731 _values!914) #b00000000000000000000000000000000) (dynLambda!3479 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1262675 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40268 _values!914)))))

(assert (=> b!1262675 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(declare-fun b!1262676 () Bool)

(declare-fun res!841246 () Bool)

(assert (=> b!1262676 (=> (not res!841246) (not e!718823))))

(assert (=> b!1262676 (= res!841246 e!718825)))

(declare-fun c!122813 () Bool)

(assert (=> b!1262676 (= c!122813 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1262677 () Bool)

(assert (=> b!1262677 (= e!718824 call!62122)))

(assert (= (and d!138483 c!122818) b!1262668))

(assert (= (and d!138483 (not c!122818)) b!1262661))

(assert (= (and b!1262661 c!122815) b!1262677))

(assert (= (and b!1262661 (not c!122815)) b!1262671))

(assert (= (and b!1262671 c!122817) b!1262666))

(assert (= (and b!1262671 (not c!122817)) b!1262669))

(assert (= (or b!1262666 b!1262669) bm!62122))

(assert (= (or b!1262677 bm!62122) bm!62123))

(assert (= (or b!1262677 b!1262666) bm!62120))

(assert (= (or b!1262668 bm!62123) bm!62125))

(assert (= (or b!1262668 bm!62120) bm!62124))

(assert (= (and d!138483 res!841250) b!1262657))

(assert (= (and d!138483 c!122814) b!1262667))

(assert (= (and d!138483 (not c!122814)) b!1262672))

(assert (= (and d!138483 res!841247) b!1262662))

(assert (= (and b!1262662 res!841249) b!1262665))

(assert (= (and b!1262662 (not res!841248)) b!1262660))

(assert (= (and b!1262660 res!841251) b!1262675))

(assert (= (and b!1262662 res!841245) b!1262676))

(assert (= (and b!1262676 c!122813) b!1262658))

(assert (= (and b!1262676 (not c!122813)) b!1262659))

(assert (= (and b!1262658 res!841244) b!1262674))

(assert (= (or b!1262658 b!1262659) bm!62119))

(assert (= (and b!1262676 res!841246) b!1262673))

(assert (= (and b!1262673 c!122816) b!1262664))

(assert (= (and b!1262673 (not c!122816)) b!1262663))

(assert (= (and b!1262664 res!841243) b!1262670))

(assert (= (or b!1262664 b!1262663) bm!62121))

(declare-fun b_lambda!22909 () Bool)

(assert (=> (not b_lambda!22909) (not b!1262675)))

(declare-fun t!41926 () Bool)

(declare-fun tb!11333 () Bool)

(assert (=> (and start!106066 (= defaultEntry!922 defaultEntry!922) t!41926) tb!11333))

(declare-fun result!23391 () Bool)

(assert (=> tb!11333 (= result!23391 tp_is_empty!32385)))

(assert (=> b!1262675 t!41926))

(declare-fun b_and!45459 () Bool)

(assert (= b_and!45455 (and (=> t!41926 result!23391) b_and!45459)))

(declare-fun m!1163179 () Bool)

(assert (=> b!1262657 m!1163179))

(assert (=> b!1262657 m!1163179))

(declare-fun m!1163181 () Bool)

(assert (=> b!1262657 m!1163181))

(declare-fun m!1163183 () Bool)

(assert (=> b!1262667 m!1163183))

(declare-fun m!1163185 () Bool)

(assert (=> b!1262667 m!1163185))

(declare-fun m!1163187 () Bool)

(assert (=> b!1262667 m!1163187))

(assert (=> b!1262667 m!1163179))

(declare-fun m!1163189 () Bool)

(assert (=> b!1262667 m!1163189))

(declare-fun m!1163191 () Bool)

(assert (=> b!1262667 m!1163191))

(declare-fun m!1163193 () Bool)

(assert (=> b!1262667 m!1163193))

(assert (=> b!1262667 m!1163185))

(declare-fun m!1163195 () Bool)

(assert (=> b!1262667 m!1163195))

(declare-fun m!1163197 () Bool)

(assert (=> b!1262667 m!1163197))

(declare-fun m!1163199 () Bool)

(assert (=> b!1262667 m!1163199))

(declare-fun m!1163201 () Bool)

(assert (=> b!1262667 m!1163201))

(assert (=> b!1262667 m!1163193))

(declare-fun m!1163203 () Bool)

(assert (=> b!1262667 m!1163203))

(declare-fun m!1163205 () Bool)

(assert (=> b!1262667 m!1163205))

(assert (=> b!1262667 m!1163195))

(declare-fun m!1163207 () Bool)

(assert (=> b!1262667 m!1163207))

(declare-fun m!1163209 () Bool)

(assert (=> b!1262667 m!1163209))

(assert (=> b!1262667 m!1163121))

(assert (=> b!1262667 m!1163189))

(declare-fun m!1163211 () Bool)

(assert (=> b!1262667 m!1163211))

(declare-fun m!1163213 () Bool)

(assert (=> b!1262674 m!1163213))

(assert (=> b!1262675 m!1163179))

(declare-fun m!1163215 () Bool)

(assert (=> b!1262675 m!1163215))

(declare-fun m!1163217 () Bool)

(assert (=> b!1262675 m!1163217))

(assert (=> b!1262675 m!1163217))

(assert (=> b!1262675 m!1163215))

(declare-fun m!1163219 () Bool)

(assert (=> b!1262675 m!1163219))

(assert (=> b!1262675 m!1163179))

(declare-fun m!1163221 () Bool)

(assert (=> b!1262675 m!1163221))

(declare-fun m!1163223 () Bool)

(assert (=> b!1262668 m!1163223))

(declare-fun m!1163225 () Bool)

(assert (=> bm!62119 m!1163225))

(declare-fun m!1163227 () Bool)

(assert (=> bm!62121 m!1163227))

(declare-fun m!1163229 () Bool)

(assert (=> bm!62124 m!1163229))

(assert (=> b!1262665 m!1163179))

(assert (=> b!1262665 m!1163179))

(assert (=> b!1262665 m!1163181))

(assert (=> bm!62125 m!1163121))

(declare-fun m!1163231 () Bool)

(assert (=> b!1262670 m!1163231))

(assert (=> b!1262660 m!1163179))

(assert (=> b!1262660 m!1163179))

(declare-fun m!1163233 () Bool)

(assert (=> b!1262660 m!1163233))

(assert (=> d!138483 m!1163109))

(assert (=> b!1262572 d!138483))

(declare-fun bm!62126 () Bool)

(declare-fun call!62134 () Bool)

(declare-fun lt!572467 () ListLongMap!19069)

(assert (=> bm!62126 (= call!62134 (contains!7616 lt!572467 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1262680 () Bool)

(declare-fun e!718835 () Bool)

(assert (=> b!1262680 (= e!718835 (validKeyInArray!0 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1262681 () Bool)

(declare-fun e!718838 () Bool)

(declare-fun e!718840 () Bool)

(assert (=> b!1262681 (= e!718838 e!718840)))

(declare-fun res!841253 () Bool)

(assert (=> b!1262681 (= res!841253 call!62134)))

(assert (=> b!1262681 (=> (not res!841253) (not e!718840))))

(declare-fun b!1262682 () Bool)

(assert (=> b!1262682 (= e!718838 (not call!62134))))

(declare-fun b!1262683 () Bool)

(declare-fun e!718831 () Bool)

(declare-fun e!718834 () Bool)

(assert (=> b!1262683 (= e!718831 e!718834)))

(declare-fun res!841260 () Bool)

(assert (=> b!1262683 (=> (not res!841260) (not e!718834))))

(assert (=> b!1262683 (= res!841260 (contains!7616 lt!572467 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1262683 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(declare-fun b!1262685 () Bool)

(declare-fun res!841254 () Bool)

(declare-fun e!718836 () Bool)

(assert (=> b!1262685 (=> (not res!841254) (not e!718836))))

(assert (=> b!1262685 (= res!841254 e!718831)))

(declare-fun res!841257 () Bool)

(assert (=> b!1262685 (=> res!841257 e!718831)))

(declare-fun e!718839 () Bool)

(assert (=> b!1262685 (= res!841257 (not e!718839))))

(declare-fun res!841258 () Bool)

(assert (=> b!1262685 (=> (not res!841258) (not e!718839))))

(assert (=> b!1262685 (= res!841258 (bvslt #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(declare-fun b!1262686 () Bool)

(declare-fun e!718830 () Bool)

(declare-fun call!62130 () Bool)

(assert (=> b!1262686 (= e!718830 (not call!62130))))

(declare-fun bm!62127 () Bool)

(declare-fun call!62129 () ListLongMap!19069)

(declare-fun call!62131 () ListLongMap!19069)

(assert (=> bm!62127 (= call!62129 call!62131)))

(declare-fun b!1262687 () Bool)

(declare-fun e!718833 () Bool)

(assert (=> b!1262687 (= e!718830 e!718833)))

(declare-fun res!841252 () Bool)

(assert (=> b!1262687 (= res!841252 call!62130)))

(assert (=> b!1262687 (=> (not res!841252) (not e!718833))))

(declare-fun b!1262688 () Bool)

(assert (=> b!1262688 (= e!718839 (validKeyInArray!0 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1262689 () Bool)

(declare-fun e!718832 () ListLongMap!19069)

(assert (=> b!1262689 (= e!718832 call!62129)))

(declare-fun b!1262690 () Bool)

(declare-fun e!718829 () Unit!42034)

(declare-fun lt!572465 () Unit!42034)

(assert (=> b!1262690 (= e!718829 lt!572465)))

(declare-fun lt!572460 () ListLongMap!19069)

(assert (=> b!1262690 (= lt!572460 (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572450 () (_ BitVec 64))

(assert (=> b!1262690 (= lt!572450 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572452 () (_ BitVec 64))

(assert (=> b!1262690 (= lt!572452 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572461 () Unit!42034)

(assert (=> b!1262690 (= lt!572461 (addStillContains!1105 lt!572460 lt!572450 zeroValue!871 lt!572452))))

(assert (=> b!1262690 (contains!7616 (+!4218 lt!572460 (tuple2!21185 lt!572450 zeroValue!871)) lt!572452)))

(declare-fun lt!572471 () Unit!42034)

(assert (=> b!1262690 (= lt!572471 lt!572461)))

(declare-fun lt!572468 () ListLongMap!19069)

(assert (=> b!1262690 (= lt!572468 (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572463 () (_ BitVec 64))

(assert (=> b!1262690 (= lt!572463 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572459 () (_ BitVec 64))

(assert (=> b!1262690 (= lt!572459 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572466 () Unit!42034)

(assert (=> b!1262690 (= lt!572466 (addApplyDifferent!539 lt!572468 lt!572463 minValueBefore!43 lt!572459))))

(assert (=> b!1262690 (= (apply!1034 (+!4218 lt!572468 (tuple2!21185 lt!572463 minValueBefore!43)) lt!572459) (apply!1034 lt!572468 lt!572459))))

(declare-fun lt!572462 () Unit!42034)

(assert (=> b!1262690 (= lt!572462 lt!572466)))

(declare-fun lt!572451 () ListLongMap!19069)

(assert (=> b!1262690 (= lt!572451 (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572455 () (_ BitVec 64))

(assert (=> b!1262690 (= lt!572455 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572470 () (_ BitVec 64))

(assert (=> b!1262690 (= lt!572470 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572464 () Unit!42034)

(assert (=> b!1262690 (= lt!572464 (addApplyDifferent!539 lt!572451 lt!572455 zeroValue!871 lt!572470))))

(assert (=> b!1262690 (= (apply!1034 (+!4218 lt!572451 (tuple2!21185 lt!572455 zeroValue!871)) lt!572470) (apply!1034 lt!572451 lt!572470))))

(declare-fun lt!572457 () Unit!42034)

(assert (=> b!1262690 (= lt!572457 lt!572464)))

(declare-fun lt!572458 () ListLongMap!19069)

(assert (=> b!1262690 (= lt!572458 (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572454 () (_ BitVec 64))

(assert (=> b!1262690 (= lt!572454 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572469 () (_ BitVec 64))

(assert (=> b!1262690 (= lt!572469 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1262690 (= lt!572465 (addApplyDifferent!539 lt!572458 lt!572454 minValueBefore!43 lt!572469))))

(assert (=> b!1262690 (= (apply!1034 (+!4218 lt!572458 (tuple2!21185 lt!572454 minValueBefore!43)) lt!572469) (apply!1034 lt!572458 lt!572469))))

(declare-fun b!1262691 () Bool)

(declare-fun e!718828 () ListLongMap!19069)

(assert (=> b!1262691 (= e!718828 (+!4218 call!62131 (tuple2!21185 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun b!1262692 () Bool)

(declare-fun call!62132 () ListLongMap!19069)

(assert (=> b!1262692 (= e!718832 call!62132)))

(declare-fun b!1262693 () Bool)

(assert (=> b!1262693 (= e!718833 (= (apply!1034 lt!572467 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(declare-fun bm!62128 () Bool)

(assert (=> bm!62128 (= call!62130 (contains!7616 lt!572467 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!62129 () Bool)

(declare-fun call!62133 () ListLongMap!19069)

(assert (=> bm!62129 (= call!62132 call!62133)))

(declare-fun bm!62130 () Bool)

(declare-fun call!62135 () ListLongMap!19069)

(assert (=> bm!62130 (= call!62133 call!62135)))

(declare-fun d!138485 () Bool)

(assert (=> d!138485 e!718836))

(declare-fun res!841256 () Bool)

(assert (=> d!138485 (=> (not res!841256) (not e!718836))))

(assert (=> d!138485 (= res!841256 (or (bvsge #b00000000000000000000000000000000 (size!40267 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40267 _keys!1118)))))))

(declare-fun lt!572453 () ListLongMap!19069)

(assert (=> d!138485 (= lt!572467 lt!572453)))

(declare-fun lt!572456 () Unit!42034)

(assert (=> d!138485 (= lt!572456 e!718829)))

(declare-fun c!122820 () Bool)

(assert (=> d!138485 (= c!122820 e!718835)))

(declare-fun res!841259 () Bool)

(assert (=> d!138485 (=> (not res!841259) (not e!718835))))

(assert (=> d!138485 (= res!841259 (bvslt #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(assert (=> d!138485 (= lt!572453 e!718828)))

(declare-fun c!122824 () Bool)

(assert (=> d!138485 (= c!122824 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138485 (validMask!0 mask!1466)))

(assert (=> d!138485 (= (getCurrentListMap!4655 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572467)))

(declare-fun b!1262684 () Bool)

(declare-fun e!718837 () ListLongMap!19069)

(assert (=> b!1262684 (= e!718828 e!718837)))

(declare-fun c!122821 () Bool)

(assert (=> b!1262684 (= c!122821 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1262694 () Bool)

(declare-fun c!122823 () Bool)

(assert (=> b!1262694 (= c!122823 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1262694 (= e!718837 e!718832)))

(declare-fun bm!62131 () Bool)

(assert (=> bm!62131 (= call!62131 (+!4218 (ite c!122824 call!62135 (ite c!122821 call!62133 call!62132)) (ite (or c!122824 c!122821) (tuple2!21185 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21185 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun b!1262695 () Bool)

(declare-fun Unit!42040 () Unit!42034)

(assert (=> b!1262695 (= e!718829 Unit!42040)))

(declare-fun bm!62132 () Bool)

(assert (=> bm!62132 (= call!62135 (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1262696 () Bool)

(assert (=> b!1262696 (= e!718836 e!718830)))

(declare-fun c!122822 () Bool)

(assert (=> b!1262696 (= c!122822 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1262697 () Bool)

(assert (=> b!1262697 (= e!718840 (= (apply!1034 lt!572467 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1262698 () Bool)

(assert (=> b!1262698 (= e!718834 (= (apply!1034 lt!572467 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)) (get!20318 (select (arr!39731 _values!914) #b00000000000000000000000000000000) (dynLambda!3479 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1262698 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40268 _values!914)))))

(assert (=> b!1262698 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(declare-fun b!1262699 () Bool)

(declare-fun res!841255 () Bool)

(assert (=> b!1262699 (=> (not res!841255) (not e!718836))))

(assert (=> b!1262699 (= res!841255 e!718838)))

(declare-fun c!122819 () Bool)

(assert (=> b!1262699 (= c!122819 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1262700 () Bool)

(assert (=> b!1262700 (= e!718837 call!62129)))

(assert (= (and d!138485 c!122824) b!1262691))

(assert (= (and d!138485 (not c!122824)) b!1262684))

(assert (= (and b!1262684 c!122821) b!1262700))

(assert (= (and b!1262684 (not c!122821)) b!1262694))

(assert (= (and b!1262694 c!122823) b!1262689))

(assert (= (and b!1262694 (not c!122823)) b!1262692))

(assert (= (or b!1262689 b!1262692) bm!62129))

(assert (= (or b!1262700 bm!62129) bm!62130))

(assert (= (or b!1262700 b!1262689) bm!62127))

(assert (= (or b!1262691 bm!62130) bm!62132))

(assert (= (or b!1262691 bm!62127) bm!62131))

(assert (= (and d!138485 res!841259) b!1262680))

(assert (= (and d!138485 c!122820) b!1262690))

(assert (= (and d!138485 (not c!122820)) b!1262695))

(assert (= (and d!138485 res!841256) b!1262685))

(assert (= (and b!1262685 res!841258) b!1262688))

(assert (= (and b!1262685 (not res!841257)) b!1262683))

(assert (= (and b!1262683 res!841260) b!1262698))

(assert (= (and b!1262685 res!841254) b!1262699))

(assert (= (and b!1262699 c!122819) b!1262681))

(assert (= (and b!1262699 (not c!122819)) b!1262682))

(assert (= (and b!1262681 res!841253) b!1262697))

(assert (= (or b!1262681 b!1262682) bm!62126))

(assert (= (and b!1262699 res!841255) b!1262696))

(assert (= (and b!1262696 c!122822) b!1262687))

(assert (= (and b!1262696 (not c!122822)) b!1262686))

(assert (= (and b!1262687 res!841252) b!1262693))

(assert (= (or b!1262687 b!1262686) bm!62128))

(declare-fun b_lambda!22911 () Bool)

(assert (=> (not b_lambda!22911) (not b!1262698)))

(assert (=> b!1262698 t!41926))

(declare-fun b_and!45461 () Bool)

(assert (= b_and!45459 (and (=> t!41926 result!23391) b_and!45461)))

(assert (=> b!1262680 m!1163179))

(assert (=> b!1262680 m!1163179))

(assert (=> b!1262680 m!1163181))

(declare-fun m!1163235 () Bool)

(assert (=> b!1262690 m!1163235))

(declare-fun m!1163237 () Bool)

(assert (=> b!1262690 m!1163237))

(declare-fun m!1163239 () Bool)

(assert (=> b!1262690 m!1163239))

(assert (=> b!1262690 m!1163179))

(declare-fun m!1163241 () Bool)

(assert (=> b!1262690 m!1163241))

(declare-fun m!1163243 () Bool)

(assert (=> b!1262690 m!1163243))

(declare-fun m!1163245 () Bool)

(assert (=> b!1262690 m!1163245))

(assert (=> b!1262690 m!1163237))

(declare-fun m!1163247 () Bool)

(assert (=> b!1262690 m!1163247))

(declare-fun m!1163249 () Bool)

(assert (=> b!1262690 m!1163249))

(declare-fun m!1163251 () Bool)

(assert (=> b!1262690 m!1163251))

(declare-fun m!1163253 () Bool)

(assert (=> b!1262690 m!1163253))

(assert (=> b!1262690 m!1163245))

(declare-fun m!1163255 () Bool)

(assert (=> b!1262690 m!1163255))

(declare-fun m!1163257 () Bool)

(assert (=> b!1262690 m!1163257))

(assert (=> b!1262690 m!1163247))

(declare-fun m!1163259 () Bool)

(assert (=> b!1262690 m!1163259))

(declare-fun m!1163261 () Bool)

(assert (=> b!1262690 m!1163261))

(assert (=> b!1262690 m!1163123))

(assert (=> b!1262690 m!1163241))

(declare-fun m!1163263 () Bool)

(assert (=> b!1262690 m!1163263))

(declare-fun m!1163265 () Bool)

(assert (=> b!1262697 m!1163265))

(assert (=> b!1262698 m!1163179))

(assert (=> b!1262698 m!1163215))

(assert (=> b!1262698 m!1163217))

(assert (=> b!1262698 m!1163217))

(assert (=> b!1262698 m!1163215))

(assert (=> b!1262698 m!1163219))

(assert (=> b!1262698 m!1163179))

(declare-fun m!1163267 () Bool)

(assert (=> b!1262698 m!1163267))

(declare-fun m!1163269 () Bool)

(assert (=> b!1262691 m!1163269))

(declare-fun m!1163271 () Bool)

(assert (=> bm!62126 m!1163271))

(declare-fun m!1163273 () Bool)

(assert (=> bm!62128 m!1163273))

(declare-fun m!1163275 () Bool)

(assert (=> bm!62131 m!1163275))

(assert (=> b!1262688 m!1163179))

(assert (=> b!1262688 m!1163179))

(assert (=> b!1262688 m!1163181))

(assert (=> bm!62132 m!1163123))

(declare-fun m!1163277 () Bool)

(assert (=> b!1262693 m!1163277))

(assert (=> b!1262683 m!1163179))

(assert (=> b!1262683 m!1163179))

(declare-fun m!1163279 () Bool)

(assert (=> b!1262683 m!1163279))

(assert (=> d!138485 m!1163109))

(assert (=> b!1262572 d!138485))

(declare-fun b!1262711 () Bool)

(declare-fun e!718852 () Bool)

(declare-fun e!718850 () Bool)

(assert (=> b!1262711 (= e!718852 e!718850)))

(declare-fun c!122827 () Bool)

(assert (=> b!1262711 (= c!122827 (validKeyInArray!0 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!62135 () Bool)

(declare-fun call!62138 () Bool)

(assert (=> bm!62135 (= call!62138 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122827 (Cons!28402 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000) Nil!28403) Nil!28403)))))

(declare-fun b!1262712 () Bool)

(declare-fun e!718851 () Bool)

(assert (=> b!1262712 (= e!718851 e!718852)))

(declare-fun res!841269 () Bool)

(assert (=> b!1262712 (=> (not res!841269) (not e!718852))))

(declare-fun e!718849 () Bool)

(assert (=> b!1262712 (= res!841269 (not e!718849))))

(declare-fun res!841268 () Bool)

(assert (=> b!1262712 (=> (not res!841268) (not e!718849))))

(assert (=> b!1262712 (= res!841268 (validKeyInArray!0 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1262713 () Bool)

(assert (=> b!1262713 (= e!718850 call!62138)))

(declare-fun b!1262714 () Bool)

(assert (=> b!1262714 (= e!718850 call!62138)))

(declare-fun b!1262715 () Bool)

(declare-fun contains!7619 (List!28406 (_ BitVec 64)) Bool)

(assert (=> b!1262715 (= e!718849 (contains!7619 Nil!28403 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!138487 () Bool)

(declare-fun res!841267 () Bool)

(assert (=> d!138487 (=> res!841267 e!718851)))

(assert (=> d!138487 (= res!841267 (bvsge #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(assert (=> d!138487 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28403) e!718851)))

(assert (= (and d!138487 (not res!841267)) b!1262712))

(assert (= (and b!1262712 res!841268) b!1262715))

(assert (= (and b!1262712 res!841269) b!1262711))

(assert (= (and b!1262711 c!122827) b!1262714))

(assert (= (and b!1262711 (not c!122827)) b!1262713))

(assert (= (or b!1262714 b!1262713) bm!62135))

(assert (=> b!1262711 m!1163179))

(assert (=> b!1262711 m!1163179))

(assert (=> b!1262711 m!1163181))

(assert (=> bm!62135 m!1163179))

(declare-fun m!1163281 () Bool)

(assert (=> bm!62135 m!1163281))

(assert (=> b!1262712 m!1163179))

(assert (=> b!1262712 m!1163179))

(assert (=> b!1262712 m!1163181))

(assert (=> b!1262715 m!1163179))

(assert (=> b!1262715 m!1163179))

(declare-fun m!1163283 () Bool)

(assert (=> b!1262715 m!1163283))

(assert (=> b!1262567 d!138487))

(declare-fun d!138489 () Bool)

(assert (=> d!138489 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!106066 d!138489))

(declare-fun d!138491 () Bool)

(assert (=> d!138491 (= (array_inv!30195 _keys!1118) (bvsge (size!40267 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!106066 d!138491))

(declare-fun d!138493 () Bool)

(assert (=> d!138493 (= (array_inv!30196 _values!914) (bvsge (size!40268 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!106066 d!138493))

(declare-fun b!1262724 () Bool)

(declare-fun e!718861 () Bool)

(declare-fun e!718860 () Bool)

(assert (=> b!1262724 (= e!718861 e!718860)))

(declare-fun lt!572479 () (_ BitVec 64))

(assert (=> b!1262724 (= lt!572479 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572478 () Unit!42034)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!82373 (_ BitVec 64) (_ BitVec 32)) Unit!42034)

(assert (=> b!1262724 (= lt!572478 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!572479 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!82373 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1262724 (arrayContainsKey!0 _keys!1118 lt!572479 #b00000000000000000000000000000000)))

(declare-fun lt!572480 () Unit!42034)

(assert (=> b!1262724 (= lt!572480 lt!572478)))

(declare-fun res!841274 () Bool)

(declare-datatypes ((SeekEntryResult!9974 0))(
  ( (MissingZero!9974 (index!42266 (_ BitVec 32))) (Found!9974 (index!42267 (_ BitVec 32))) (Intermediate!9974 (undefined!10786 Bool) (index!42268 (_ BitVec 32)) (x!111261 (_ BitVec 32))) (Undefined!9974) (MissingVacant!9974 (index!42269 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!82373 (_ BitVec 32)) SeekEntryResult!9974)

(assert (=> b!1262724 (= res!841274 (= (seekEntryOrOpen!0 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9974 #b00000000000000000000000000000000)))))

(assert (=> b!1262724 (=> (not res!841274) (not e!718860))))

(declare-fun b!1262725 () Bool)

(declare-fun call!62141 () Bool)

(assert (=> b!1262725 (= e!718860 call!62141)))

(declare-fun b!1262726 () Bool)

(assert (=> b!1262726 (= e!718861 call!62141)))

(declare-fun d!138495 () Bool)

(declare-fun res!841275 () Bool)

(declare-fun e!718859 () Bool)

(assert (=> d!138495 (=> res!841275 e!718859)))

(assert (=> d!138495 (= res!841275 (bvsge #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(assert (=> d!138495 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!718859)))

(declare-fun b!1262727 () Bool)

(assert (=> b!1262727 (= e!718859 e!718861)))

(declare-fun c!122830 () Bool)

(assert (=> b!1262727 (= c!122830 (validKeyInArray!0 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!62138 () Bool)

(assert (=> bm!62138 (= call!62141 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(assert (= (and d!138495 (not res!841275)) b!1262727))

(assert (= (and b!1262727 c!122830) b!1262724))

(assert (= (and b!1262727 (not c!122830)) b!1262726))

(assert (= (and b!1262724 res!841274) b!1262725))

(assert (= (or b!1262725 b!1262726) bm!62138))

(assert (=> b!1262724 m!1163179))

(declare-fun m!1163285 () Bool)

(assert (=> b!1262724 m!1163285))

(declare-fun m!1163287 () Bool)

(assert (=> b!1262724 m!1163287))

(assert (=> b!1262724 m!1163179))

(declare-fun m!1163289 () Bool)

(assert (=> b!1262724 m!1163289))

(assert (=> b!1262727 m!1163179))

(assert (=> b!1262727 m!1163179))

(assert (=> b!1262727 m!1163181))

(declare-fun m!1163291 () Bool)

(assert (=> bm!62138 m!1163291))

(assert (=> b!1262571 d!138495))

(declare-fun d!138497 () Bool)

(assert (=> d!138497 (= (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572483 () Unit!42034)

(declare-fun choose!1882 (array!82373 array!82375 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48545 V!48545 V!48545 V!48545 (_ BitVec 32) Int) Unit!42034)

(assert (=> d!138497 (= lt!572483 (choose!1882 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!138497 (validMask!0 mask!1466)))

(assert (=> d!138497 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1186 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572483)))

(declare-fun bs!35723 () Bool)

(assert (= bs!35723 d!138497))

(assert (=> bs!35723 m!1163123))

(assert (=> bs!35723 m!1163121))

(declare-fun m!1163293 () Bool)

(assert (=> bs!35723 m!1163293))

(assert (=> bs!35723 m!1163109))

(assert (=> b!1262565 d!138497))

(declare-fun b!1262752 () Bool)

(declare-fun e!718876 () ListLongMap!19069)

(assert (=> b!1262752 (= e!718876 (ListLongMap!19070 Nil!28402))))

(declare-fun d!138499 () Bool)

(declare-fun e!718879 () Bool)

(assert (=> d!138499 e!718879))

(declare-fun res!841286 () Bool)

(assert (=> d!138499 (=> (not res!841286) (not e!718879))))

(declare-fun lt!572498 () ListLongMap!19069)

(assert (=> d!138499 (= res!841286 (not (contains!7616 lt!572498 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138499 (= lt!572498 e!718876)))

(declare-fun c!122839 () Bool)

(assert (=> d!138499 (= c!122839 (bvsge #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(assert (=> d!138499 (validMask!0 mask!1466)))

(assert (=> d!138499 (= (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572498)))

(declare-fun b!1262753 () Bool)

(declare-fun res!841284 () Bool)

(assert (=> b!1262753 (=> (not res!841284) (not e!718879))))

(assert (=> b!1262753 (= res!841284 (not (contains!7616 lt!572498 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1262754 () Bool)

(declare-fun e!718877 () Bool)

(assert (=> b!1262754 (= e!718879 e!718877)))

(declare-fun c!122842 () Bool)

(declare-fun e!718881 () Bool)

(assert (=> b!1262754 (= c!122842 e!718881)))

(declare-fun res!841287 () Bool)

(assert (=> b!1262754 (=> (not res!841287) (not e!718881))))

(assert (=> b!1262754 (= res!841287 (bvslt #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(declare-fun b!1262755 () Bool)

(declare-fun e!718882 () Bool)

(declare-fun isEmpty!1044 (ListLongMap!19069) Bool)

(assert (=> b!1262755 (= e!718882 (isEmpty!1044 lt!572498))))

(declare-fun b!1262756 () Bool)

(assert (=> b!1262756 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(assert (=> b!1262756 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40268 _values!914)))))

(declare-fun e!718880 () Bool)

(assert (=> b!1262756 (= e!718880 (= (apply!1034 lt!572498 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)) (get!20318 (select (arr!39731 _values!914) #b00000000000000000000000000000000) (dynLambda!3479 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1262757 () Bool)

(declare-fun lt!572500 () Unit!42034)

(declare-fun lt!572502 () Unit!42034)

(assert (=> b!1262757 (= lt!572500 lt!572502)))

(declare-fun lt!572503 () (_ BitVec 64))

(declare-fun lt!572499 () ListLongMap!19069)

(declare-fun lt!572501 () V!48545)

(declare-fun lt!572504 () (_ BitVec 64))

(assert (=> b!1262757 (not (contains!7616 (+!4218 lt!572499 (tuple2!21185 lt!572503 lt!572501)) lt!572504))))

(declare-fun addStillNotContains!329 (ListLongMap!19069 (_ BitVec 64) V!48545 (_ BitVec 64)) Unit!42034)

(assert (=> b!1262757 (= lt!572502 (addStillNotContains!329 lt!572499 lt!572503 lt!572501 lt!572504))))

(assert (=> b!1262757 (= lt!572504 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1262757 (= lt!572501 (get!20318 (select (arr!39731 _values!914) #b00000000000000000000000000000000) (dynLambda!3479 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1262757 (= lt!572503 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun call!62144 () ListLongMap!19069)

(assert (=> b!1262757 (= lt!572499 call!62144)))

(declare-fun e!718878 () ListLongMap!19069)

(assert (=> b!1262757 (= e!718878 (+!4218 call!62144 (tuple2!21185 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000) (get!20318 (select (arr!39731 _values!914) #b00000000000000000000000000000000) (dynLambda!3479 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1262758 () Bool)

(assert (=> b!1262758 (= e!718878 call!62144)))

(declare-fun b!1262759 () Bool)

(assert (=> b!1262759 (= e!718877 e!718880)))

(assert (=> b!1262759 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(declare-fun res!841285 () Bool)

(assert (=> b!1262759 (= res!841285 (contains!7616 lt!572498 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1262759 (=> (not res!841285) (not e!718880))))

(declare-fun b!1262760 () Bool)

(assert (=> b!1262760 (= e!718882 (= lt!572498 (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1262761 () Bool)

(assert (=> b!1262761 (= e!718876 e!718878)))

(declare-fun c!122841 () Bool)

(assert (=> b!1262761 (= c!122841 (validKeyInArray!0 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1262762 () Bool)

(assert (=> b!1262762 (= e!718881 (validKeyInArray!0 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1262762 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!62141 () Bool)

(assert (=> bm!62141 (= call!62144 (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1262763 () Bool)

(assert (=> b!1262763 (= e!718877 e!718882)))

(declare-fun c!122840 () Bool)

(assert (=> b!1262763 (= c!122840 (bvslt #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(assert (= (and d!138499 c!122839) b!1262752))

(assert (= (and d!138499 (not c!122839)) b!1262761))

(assert (= (and b!1262761 c!122841) b!1262757))

(assert (= (and b!1262761 (not c!122841)) b!1262758))

(assert (= (or b!1262757 b!1262758) bm!62141))

(assert (= (and d!138499 res!841286) b!1262753))

(assert (= (and b!1262753 res!841284) b!1262754))

(assert (= (and b!1262754 res!841287) b!1262762))

(assert (= (and b!1262754 c!122842) b!1262759))

(assert (= (and b!1262754 (not c!122842)) b!1262763))

(assert (= (and b!1262759 res!841285) b!1262756))

(assert (= (and b!1262763 c!122840) b!1262760))

(assert (= (and b!1262763 (not c!122840)) b!1262755))

(declare-fun b_lambda!22913 () Bool)

(assert (=> (not b_lambda!22913) (not b!1262756)))

(assert (=> b!1262756 t!41926))

(declare-fun b_and!45463 () Bool)

(assert (= b_and!45461 (and (=> t!41926 result!23391) b_and!45463)))

(declare-fun b_lambda!22915 () Bool)

(assert (=> (not b_lambda!22915) (not b!1262757)))

(assert (=> b!1262757 t!41926))

(declare-fun b_and!45465 () Bool)

(assert (= b_and!45463 (and (=> t!41926 result!23391) b_and!45465)))

(declare-fun m!1163295 () Bool)

(assert (=> d!138499 m!1163295))

(assert (=> d!138499 m!1163109))

(declare-fun m!1163297 () Bool)

(assert (=> b!1262755 m!1163297))

(assert (=> b!1262761 m!1163179))

(assert (=> b!1262761 m!1163179))

(assert (=> b!1262761 m!1163181))

(assert (=> b!1262759 m!1163179))

(assert (=> b!1262759 m!1163179))

(declare-fun m!1163299 () Bool)

(assert (=> b!1262759 m!1163299))

(declare-fun m!1163301 () Bool)

(assert (=> b!1262753 m!1163301))

(declare-fun m!1163303 () Bool)

(assert (=> b!1262757 m!1163303))

(assert (=> b!1262757 m!1163303))

(declare-fun m!1163305 () Bool)

(assert (=> b!1262757 m!1163305))

(assert (=> b!1262757 m!1163215))

(declare-fun m!1163307 () Bool)

(assert (=> b!1262757 m!1163307))

(assert (=> b!1262757 m!1163217))

(assert (=> b!1262757 m!1163215))

(assert (=> b!1262757 m!1163219))

(assert (=> b!1262757 m!1163179))

(assert (=> b!1262757 m!1163217))

(declare-fun m!1163309 () Bool)

(assert (=> b!1262757 m!1163309))

(assert (=> b!1262756 m!1163215))

(assert (=> b!1262756 m!1163179))

(declare-fun m!1163311 () Bool)

(assert (=> b!1262756 m!1163311))

(assert (=> b!1262756 m!1163217))

(assert (=> b!1262756 m!1163215))

(assert (=> b!1262756 m!1163219))

(assert (=> b!1262756 m!1163179))

(assert (=> b!1262756 m!1163217))

(assert (=> b!1262762 m!1163179))

(assert (=> b!1262762 m!1163179))

(assert (=> b!1262762 m!1163181))

(declare-fun m!1163313 () Bool)

(assert (=> b!1262760 m!1163313))

(assert (=> bm!62141 m!1163313))

(assert (=> b!1262565 d!138499))

(declare-fun b!1262764 () Bool)

(declare-fun e!718883 () ListLongMap!19069)

(assert (=> b!1262764 (= e!718883 (ListLongMap!19070 Nil!28402))))

(declare-fun d!138501 () Bool)

(declare-fun e!718886 () Bool)

(assert (=> d!138501 e!718886))

(declare-fun res!841290 () Bool)

(assert (=> d!138501 (=> (not res!841290) (not e!718886))))

(declare-fun lt!572505 () ListLongMap!19069)

(assert (=> d!138501 (= res!841290 (not (contains!7616 lt!572505 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138501 (= lt!572505 e!718883)))

(declare-fun c!122843 () Bool)

(assert (=> d!138501 (= c!122843 (bvsge #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(assert (=> d!138501 (validMask!0 mask!1466)))

(assert (=> d!138501 (= (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572505)))

(declare-fun b!1262765 () Bool)

(declare-fun res!841288 () Bool)

(assert (=> b!1262765 (=> (not res!841288) (not e!718886))))

(assert (=> b!1262765 (= res!841288 (not (contains!7616 lt!572505 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1262766 () Bool)

(declare-fun e!718884 () Bool)

(assert (=> b!1262766 (= e!718886 e!718884)))

(declare-fun c!122846 () Bool)

(declare-fun e!718888 () Bool)

(assert (=> b!1262766 (= c!122846 e!718888)))

(declare-fun res!841291 () Bool)

(assert (=> b!1262766 (=> (not res!841291) (not e!718888))))

(assert (=> b!1262766 (= res!841291 (bvslt #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(declare-fun b!1262767 () Bool)

(declare-fun e!718889 () Bool)

(assert (=> b!1262767 (= e!718889 (isEmpty!1044 lt!572505))))

(declare-fun b!1262768 () Bool)

(assert (=> b!1262768 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(assert (=> b!1262768 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40268 _values!914)))))

(declare-fun e!718887 () Bool)

(assert (=> b!1262768 (= e!718887 (= (apply!1034 lt!572505 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)) (get!20318 (select (arr!39731 _values!914) #b00000000000000000000000000000000) (dynLambda!3479 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1262769 () Bool)

(declare-fun lt!572507 () Unit!42034)

(declare-fun lt!572509 () Unit!42034)

(assert (=> b!1262769 (= lt!572507 lt!572509)))

(declare-fun lt!572510 () (_ BitVec 64))

(declare-fun lt!572506 () ListLongMap!19069)

(declare-fun lt!572511 () (_ BitVec 64))

(declare-fun lt!572508 () V!48545)

(assert (=> b!1262769 (not (contains!7616 (+!4218 lt!572506 (tuple2!21185 lt!572510 lt!572508)) lt!572511))))

(assert (=> b!1262769 (= lt!572509 (addStillNotContains!329 lt!572506 lt!572510 lt!572508 lt!572511))))

(assert (=> b!1262769 (= lt!572511 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1262769 (= lt!572508 (get!20318 (select (arr!39731 _values!914) #b00000000000000000000000000000000) (dynLambda!3479 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1262769 (= lt!572510 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun call!62145 () ListLongMap!19069)

(assert (=> b!1262769 (= lt!572506 call!62145)))

(declare-fun e!718885 () ListLongMap!19069)

(assert (=> b!1262769 (= e!718885 (+!4218 call!62145 (tuple2!21185 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000) (get!20318 (select (arr!39731 _values!914) #b00000000000000000000000000000000) (dynLambda!3479 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1262770 () Bool)

(assert (=> b!1262770 (= e!718885 call!62145)))

(declare-fun b!1262771 () Bool)

(assert (=> b!1262771 (= e!718884 e!718887)))

(assert (=> b!1262771 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(declare-fun res!841289 () Bool)

(assert (=> b!1262771 (= res!841289 (contains!7616 lt!572505 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1262771 (=> (not res!841289) (not e!718887))))

(declare-fun b!1262772 () Bool)

(assert (=> b!1262772 (= e!718889 (= lt!572505 (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1262773 () Bool)

(assert (=> b!1262773 (= e!718883 e!718885)))

(declare-fun c!122845 () Bool)

(assert (=> b!1262773 (= c!122845 (validKeyInArray!0 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1262774 () Bool)

(assert (=> b!1262774 (= e!718888 (validKeyInArray!0 (select (arr!39730 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1262774 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!62142 () Bool)

(assert (=> bm!62142 (= call!62145 (getCurrentListMapNoExtraKeys!5890 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1262775 () Bool)

(assert (=> b!1262775 (= e!718884 e!718889)))

(declare-fun c!122844 () Bool)

(assert (=> b!1262775 (= c!122844 (bvslt #b00000000000000000000000000000000 (size!40267 _keys!1118)))))

(assert (= (and d!138501 c!122843) b!1262764))

(assert (= (and d!138501 (not c!122843)) b!1262773))

(assert (= (and b!1262773 c!122845) b!1262769))

(assert (= (and b!1262773 (not c!122845)) b!1262770))

(assert (= (or b!1262769 b!1262770) bm!62142))

(assert (= (and d!138501 res!841290) b!1262765))

(assert (= (and b!1262765 res!841288) b!1262766))

(assert (= (and b!1262766 res!841291) b!1262774))

(assert (= (and b!1262766 c!122846) b!1262771))

(assert (= (and b!1262766 (not c!122846)) b!1262775))

(assert (= (and b!1262771 res!841289) b!1262768))

(assert (= (and b!1262775 c!122844) b!1262772))

(assert (= (and b!1262775 (not c!122844)) b!1262767))

(declare-fun b_lambda!22917 () Bool)

(assert (=> (not b_lambda!22917) (not b!1262768)))

(assert (=> b!1262768 t!41926))

(declare-fun b_and!45467 () Bool)

(assert (= b_and!45465 (and (=> t!41926 result!23391) b_and!45467)))

(declare-fun b_lambda!22919 () Bool)

(assert (=> (not b_lambda!22919) (not b!1262769)))

(assert (=> b!1262769 t!41926))

(declare-fun b_and!45469 () Bool)

(assert (= b_and!45467 (and (=> t!41926 result!23391) b_and!45469)))

(declare-fun m!1163315 () Bool)

(assert (=> d!138501 m!1163315))

(assert (=> d!138501 m!1163109))

(declare-fun m!1163317 () Bool)

(assert (=> b!1262767 m!1163317))

(assert (=> b!1262773 m!1163179))

(assert (=> b!1262773 m!1163179))

(assert (=> b!1262773 m!1163181))

(assert (=> b!1262771 m!1163179))

(assert (=> b!1262771 m!1163179))

(declare-fun m!1163319 () Bool)

(assert (=> b!1262771 m!1163319))

(declare-fun m!1163321 () Bool)

(assert (=> b!1262765 m!1163321))

(declare-fun m!1163323 () Bool)

(assert (=> b!1262769 m!1163323))

(assert (=> b!1262769 m!1163323))

(declare-fun m!1163325 () Bool)

(assert (=> b!1262769 m!1163325))

(assert (=> b!1262769 m!1163215))

(declare-fun m!1163327 () Bool)

(assert (=> b!1262769 m!1163327))

(assert (=> b!1262769 m!1163217))

(assert (=> b!1262769 m!1163215))

(assert (=> b!1262769 m!1163219))

(assert (=> b!1262769 m!1163179))

(assert (=> b!1262769 m!1163217))

(declare-fun m!1163329 () Bool)

(assert (=> b!1262769 m!1163329))

(assert (=> b!1262768 m!1163215))

(assert (=> b!1262768 m!1163179))

(declare-fun m!1163331 () Bool)

(assert (=> b!1262768 m!1163331))

(assert (=> b!1262768 m!1163217))

(assert (=> b!1262768 m!1163215))

(assert (=> b!1262768 m!1163219))

(assert (=> b!1262768 m!1163179))

(assert (=> b!1262768 m!1163217))

(assert (=> b!1262774 m!1163179))

(assert (=> b!1262774 m!1163179))

(assert (=> b!1262774 m!1163181))

(declare-fun m!1163333 () Bool)

(assert (=> b!1262772 m!1163333))

(assert (=> bm!62142 m!1163333))

(assert (=> b!1262565 d!138501))

(declare-fun b!1262783 () Bool)

(declare-fun e!718894 () Bool)

(assert (=> b!1262783 (= e!718894 tp_is_empty!32385)))

(declare-fun b!1262782 () Bool)

(declare-fun e!718895 () Bool)

(assert (=> b!1262782 (= e!718895 tp_is_empty!32385)))

(declare-fun condMapEmpty!50401 () Bool)

(declare-fun mapDefault!50401 () ValueCell!15429)

(assert (=> mapNonEmpty!50395 (= condMapEmpty!50401 (= mapRest!50395 ((as const (Array (_ BitVec 32) ValueCell!15429)) mapDefault!50401)))))

(declare-fun mapRes!50401 () Bool)

(assert (=> mapNonEmpty!50395 (= tp!95997 (and e!718894 mapRes!50401))))

(declare-fun mapNonEmpty!50401 () Bool)

(declare-fun tp!96006 () Bool)

(assert (=> mapNonEmpty!50401 (= mapRes!50401 (and tp!96006 e!718895))))

(declare-fun mapValue!50401 () ValueCell!15429)

(declare-fun mapRest!50401 () (Array (_ BitVec 32) ValueCell!15429))

(declare-fun mapKey!50401 () (_ BitVec 32))

(assert (=> mapNonEmpty!50401 (= mapRest!50395 (store mapRest!50401 mapKey!50401 mapValue!50401))))

(declare-fun mapIsEmpty!50401 () Bool)

(assert (=> mapIsEmpty!50401 mapRes!50401))

(assert (= (and mapNonEmpty!50395 condMapEmpty!50401) mapIsEmpty!50401))

(assert (= (and mapNonEmpty!50395 (not condMapEmpty!50401)) mapNonEmpty!50401))

(assert (= (and mapNonEmpty!50401 ((_ is ValueCellFull!15429) mapValue!50401)) b!1262782))

(assert (= (and mapNonEmpty!50395 ((_ is ValueCellFull!15429) mapDefault!50401)) b!1262783))

(declare-fun m!1163335 () Bool)

(assert (=> mapNonEmpty!50401 m!1163335))

(declare-fun b_lambda!22921 () Bool)

(assert (= b_lambda!22915 (or (and start!106066 b_free!27483) b_lambda!22921)))

(declare-fun b_lambda!22923 () Bool)

(assert (= b_lambda!22913 (or (and start!106066 b_free!27483) b_lambda!22923)))

(declare-fun b_lambda!22925 () Bool)

(assert (= b_lambda!22917 (or (and start!106066 b_free!27483) b_lambda!22925)))

(declare-fun b_lambda!22927 () Bool)

(assert (= b_lambda!22919 (or (and start!106066 b_free!27483) b_lambda!22927)))

(declare-fun b_lambda!22929 () Bool)

(assert (= b_lambda!22909 (or (and start!106066 b_free!27483) b_lambda!22929)))

(declare-fun b_lambda!22931 () Bool)

(assert (= b_lambda!22911 (or (and start!106066 b_free!27483) b_lambda!22931)))

(check-sat (not bm!62126) (not b!1262759) (not b!1262606) (not b!1262753) (not bm!62124) (not b!1262665) (not b!1262657) (not bm!62142) (not bm!62135) (not bm!62138) (not b!1262771) (not b!1262757) (not d!138479) (not b!1262724) (not bm!62131) (not b!1262761) (not b!1262772) (not d!138497) (not b_lambda!22927) (not b!1262755) (not d!138481) (not b_lambda!22929) (not bm!62121) (not b!1262697) b_and!45469 (not b!1262711) (not b!1262712) (not b!1262674) tp_is_empty!32385 (not bm!62132) (not b!1262670) (not d!138499) (not b!1262693) (not b!1262767) (not b!1262691) (not b!1262698) (not b_lambda!22925) (not b!1262680) (not d!138485) (not b!1262668) (not b!1262765) (not b_lambda!22931) (not b!1262613) (not b!1262773) (not b!1262667) (not b!1262690) (not b!1262675) (not b!1262683) (not b_lambda!22923) (not mapNonEmpty!50401) (not bm!62128) (not b!1262660) (not b!1262769) (not bm!62141) (not b!1262727) (not b_lambda!22921) (not bm!62125) (not bm!62119) (not d!138501) (not b!1262614) (not b!1262715) (not d!138483) (not b!1262774) (not b!1262768) (not b_next!27483) (not b!1262608) (not b!1262762) (not b!1262756) (not b!1262688) (not b!1262760))
(check-sat b_and!45469 (not b_next!27483))
