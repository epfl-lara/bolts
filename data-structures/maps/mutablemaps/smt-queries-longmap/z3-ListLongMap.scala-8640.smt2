; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105180 () Bool)

(assert start!105180)

(declare-fun b_free!26877 () Bool)

(declare-fun b_next!26877 () Bool)

(assert (=> start!105180 (= b_free!26877 (not b_next!26877))))

(declare-fun tp!94134 () Bool)

(declare-fun b_and!44691 () Bool)

(assert (=> start!105180 (= tp!94134 b_and!44691)))

(declare-fun b!1252894 () Bool)

(declare-fun e!711728 () Bool)

(declare-fun e!711732 () Bool)

(assert (=> b!1252894 (= e!711728 (not e!711732))))

(declare-fun res!835599 () Bool)

(assert (=> b!1252894 (=> res!835599 e!711732)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1252894 (= res!835599 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!47737 0))(
  ( (V!47738 (val!15952 Int)) )
))
(declare-datatypes ((tuple2!20728 0))(
  ( (tuple2!20729 (_1!10374 (_ BitVec 64)) (_2!10374 V!47737)) )
))
(declare-datatypes ((List!27975 0))(
  ( (Nil!27972) (Cons!27971 (h!29180 tuple2!20728) (t!41461 List!27975)) )
))
(declare-datatypes ((ListLongMap!18613 0))(
  ( (ListLongMap!18614 (toList!9322 List!27975)) )
))
(declare-fun lt!565545 () ListLongMap!18613)

(declare-fun lt!565543 () ListLongMap!18613)

(assert (=> b!1252894 (= lt!565545 lt!565543)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47737)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47737)

(declare-datatypes ((array!81197 0))(
  ( (array!81198 (arr!39157 (Array (_ BitVec 32) (_ BitVec 64))) (size!39694 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81197)

(declare-datatypes ((ValueCell!15126 0))(
  ( (ValueCellFull!15126 (v!18650 V!47737)) (EmptyCell!15126) )
))
(declare-datatypes ((array!81199 0))(
  ( (array!81200 (arr!39158 (Array (_ BitVec 32) ValueCell!15126)) (size!39695 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81199)

(declare-datatypes ((Unit!41617 0))(
  ( (Unit!41618) )
))
(declare-fun lt!565544 () Unit!41617)

(declare-fun minValueBefore!43 () V!47737)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1011 (array!81197 array!81199 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47737 V!47737 V!47737 V!47737 (_ BitVec 32) Int) Unit!41617)

(assert (=> b!1252894 (= lt!565544 (lemmaNoChangeToArrayThenSameMapNoExtras!1011 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5693 (array!81197 array!81199 (_ BitVec 32) (_ BitVec 32) V!47737 V!47737 (_ BitVec 32) Int) ListLongMap!18613)

(assert (=> b!1252894 (= lt!565543 (getCurrentListMapNoExtraKeys!5693 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252894 (= lt!565545 (getCurrentListMapNoExtraKeys!5693 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252895 () Bool)

(declare-fun res!835601 () Bool)

(assert (=> b!1252895 (=> (not res!835601) (not e!711728))))

(assert (=> b!1252895 (= res!835601 (and (= (size!39695 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39694 _keys!1118) (size!39695 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252896 () Bool)

(declare-fun res!835602 () Bool)

(assert (=> b!1252896 (=> (not res!835602) (not e!711728))))

(declare-datatypes ((List!27976 0))(
  ( (Nil!27973) (Cons!27972 (h!29181 (_ BitVec 64)) (t!41462 List!27976)) )
))
(declare-fun arrayNoDuplicates!0 (array!81197 (_ BitVec 32) List!27976) Bool)

(assert (=> b!1252896 (= res!835602 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27973))))

(declare-fun b!1252898 () Bool)

(assert (=> b!1252898 (= e!711732 (bvsle #b00000000000000000000000000000000 (size!39694 _keys!1118)))))

(declare-fun lt!565546 () ListLongMap!18613)

(declare-fun getCurrentListMap!4514 (array!81197 array!81199 (_ BitVec 32) (_ BitVec 32) V!47737 V!47737 (_ BitVec 32) Int) ListLongMap!18613)

(assert (=> b!1252898 (= lt!565546 (getCurrentListMap!4514 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252899 () Bool)

(declare-fun res!835603 () Bool)

(assert (=> b!1252899 (=> (not res!835603) (not e!711728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81197 (_ BitVec 32)) Bool)

(assert (=> b!1252899 (= res!835603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252900 () Bool)

(declare-fun e!711729 () Bool)

(declare-fun tp_is_empty!31779 () Bool)

(assert (=> b!1252900 (= e!711729 tp_is_empty!31779)))

(declare-fun b!1252901 () Bool)

(declare-fun e!711731 () Bool)

(assert (=> b!1252901 (= e!711731 tp_is_empty!31779)))

(declare-fun mapNonEmpty!49441 () Bool)

(declare-fun mapRes!49441 () Bool)

(declare-fun tp!94133 () Bool)

(assert (=> mapNonEmpty!49441 (= mapRes!49441 (and tp!94133 e!711731))))

(declare-fun mapRest!49441 () (Array (_ BitVec 32) ValueCell!15126))

(declare-fun mapKey!49441 () (_ BitVec 32))

(declare-fun mapValue!49441 () ValueCell!15126)

(assert (=> mapNonEmpty!49441 (= (arr!39158 _values!914) (store mapRest!49441 mapKey!49441 mapValue!49441))))

(declare-fun mapIsEmpty!49441 () Bool)

(assert (=> mapIsEmpty!49441 mapRes!49441))

(declare-fun res!835600 () Bool)

(assert (=> start!105180 (=> (not res!835600) (not e!711728))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105180 (= res!835600 (validMask!0 mask!1466))))

(assert (=> start!105180 e!711728))

(assert (=> start!105180 true))

(assert (=> start!105180 tp!94134))

(assert (=> start!105180 tp_is_empty!31779))

(declare-fun array_inv!29795 (array!81197) Bool)

(assert (=> start!105180 (array_inv!29795 _keys!1118)))

(declare-fun e!711730 () Bool)

(declare-fun array_inv!29796 (array!81199) Bool)

(assert (=> start!105180 (and (array_inv!29796 _values!914) e!711730)))

(declare-fun b!1252897 () Bool)

(assert (=> b!1252897 (= e!711730 (and e!711729 mapRes!49441))))

(declare-fun condMapEmpty!49441 () Bool)

(declare-fun mapDefault!49441 () ValueCell!15126)

(assert (=> b!1252897 (= condMapEmpty!49441 (= (arr!39158 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15126)) mapDefault!49441)))))

(assert (= (and start!105180 res!835600) b!1252895))

(assert (= (and b!1252895 res!835601) b!1252899))

(assert (= (and b!1252899 res!835603) b!1252896))

(assert (= (and b!1252896 res!835602) b!1252894))

(assert (= (and b!1252894 (not res!835599)) b!1252898))

(assert (= (and b!1252897 condMapEmpty!49441) mapIsEmpty!49441))

(assert (= (and b!1252897 (not condMapEmpty!49441)) mapNonEmpty!49441))

(get-info :version)

(assert (= (and mapNonEmpty!49441 ((_ is ValueCellFull!15126) mapValue!49441)) b!1252901))

(assert (= (and b!1252897 ((_ is ValueCellFull!15126) mapDefault!49441)) b!1252900))

(assert (= start!105180 b!1252897))

(declare-fun m!1153471 () Bool)

(assert (=> b!1252899 m!1153471))

(declare-fun m!1153473 () Bool)

(assert (=> b!1252896 m!1153473))

(declare-fun m!1153475 () Bool)

(assert (=> b!1252894 m!1153475))

(declare-fun m!1153477 () Bool)

(assert (=> b!1252894 m!1153477))

(declare-fun m!1153479 () Bool)

(assert (=> b!1252894 m!1153479))

(declare-fun m!1153481 () Bool)

(assert (=> mapNonEmpty!49441 m!1153481))

(declare-fun m!1153483 () Bool)

(assert (=> start!105180 m!1153483))

(declare-fun m!1153485 () Bool)

(assert (=> start!105180 m!1153485))

(declare-fun m!1153487 () Bool)

(assert (=> start!105180 m!1153487))

(declare-fun m!1153489 () Bool)

(assert (=> b!1252898 m!1153489))

(check-sat (not b_next!26877) (not b!1252896) (not start!105180) (not b!1252894) (not mapNonEmpty!49441) b_and!44691 (not b!1252899) (not b!1252898) tp_is_empty!31779)
(check-sat b_and!44691 (not b_next!26877))
(get-model)

(declare-fun b!1252934 () Bool)

(declare-fun e!711758 () Bool)

(declare-fun call!61659 () Bool)

(assert (=> b!1252934 (= e!711758 call!61659)))

(declare-fun d!137937 () Bool)

(declare-fun res!835624 () Bool)

(declare-fun e!711760 () Bool)

(assert (=> d!137937 (=> res!835624 e!711760)))

(assert (=> d!137937 (= res!835624 (bvsge #b00000000000000000000000000000000 (size!39694 _keys!1118)))))

(assert (=> d!137937 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!711760)))

(declare-fun b!1252935 () Bool)

(declare-fun e!711759 () Bool)

(assert (=> b!1252935 (= e!711759 e!711758)))

(declare-fun lt!565565 () (_ BitVec 64))

(assert (=> b!1252935 (= lt!565565 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!565566 () Unit!41617)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!81197 (_ BitVec 64) (_ BitVec 32)) Unit!41617)

(assert (=> b!1252935 (= lt!565566 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!565565 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!81197 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1252935 (arrayContainsKey!0 _keys!1118 lt!565565 #b00000000000000000000000000000000)))

(declare-fun lt!565567 () Unit!41617)

(assert (=> b!1252935 (= lt!565567 lt!565566)))

(declare-fun res!835623 () Bool)

(declare-datatypes ((SeekEntryResult!9959 0))(
  ( (MissingZero!9959 (index!42206 (_ BitVec 32))) (Found!9959 (index!42207 (_ BitVec 32))) (Intermediate!9959 (undefined!10771 Bool) (index!42208 (_ BitVec 32)) (x!110273 (_ BitVec 32))) (Undefined!9959) (MissingVacant!9959 (index!42209 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!81197 (_ BitVec 32)) SeekEntryResult!9959)

(assert (=> b!1252935 (= res!835623 (= (seekEntryOrOpen!0 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9959 #b00000000000000000000000000000000)))))

(assert (=> b!1252935 (=> (not res!835623) (not e!711758))))

(declare-fun b!1252936 () Bool)

(assert (=> b!1252936 (= e!711760 e!711759)))

(declare-fun c!122200 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1252936 (= c!122200 (validKeyInArray!0 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!61656 () Bool)

(assert (=> bm!61656 (= call!61659 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1252937 () Bool)

(assert (=> b!1252937 (= e!711759 call!61659)))

(assert (= (and d!137937 (not res!835624)) b!1252936))

(assert (= (and b!1252936 c!122200) b!1252935))

(assert (= (and b!1252936 (not c!122200)) b!1252937))

(assert (= (and b!1252935 res!835623) b!1252934))

(assert (= (or b!1252934 b!1252937) bm!61656))

(declare-fun m!1153511 () Bool)

(assert (=> b!1252935 m!1153511))

(declare-fun m!1153513 () Bool)

(assert (=> b!1252935 m!1153513))

(declare-fun m!1153515 () Bool)

(assert (=> b!1252935 m!1153515))

(assert (=> b!1252935 m!1153511))

(declare-fun m!1153517 () Bool)

(assert (=> b!1252935 m!1153517))

(assert (=> b!1252936 m!1153511))

(assert (=> b!1252936 m!1153511))

(declare-fun m!1153519 () Bool)

(assert (=> b!1252936 m!1153519))

(declare-fun m!1153521 () Bool)

(assert (=> bm!61656 m!1153521))

(assert (=> b!1252899 d!137937))

(declare-fun d!137939 () Bool)

(assert (=> d!137939 (= (getCurrentListMapNoExtraKeys!5693 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5693 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!565570 () Unit!41617)

(declare-fun choose!1861 (array!81197 array!81199 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47737 V!47737 V!47737 V!47737 (_ BitVec 32) Int) Unit!41617)

(assert (=> d!137939 (= lt!565570 (choose!1861 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!137939 (validMask!0 mask!1466)))

(assert (=> d!137939 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1011 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!565570)))

(declare-fun bs!35388 () Bool)

(assert (= bs!35388 d!137939))

(assert (=> bs!35388 m!1153479))

(assert (=> bs!35388 m!1153477))

(declare-fun m!1153523 () Bool)

(assert (=> bs!35388 m!1153523))

(assert (=> bs!35388 m!1153483))

(assert (=> b!1252894 d!137939))

(declare-fun b!1252962 () Bool)

(declare-fun e!711778 () ListLongMap!18613)

(declare-fun e!711775 () ListLongMap!18613)

(assert (=> b!1252962 (= e!711778 e!711775)))

(declare-fun c!122209 () Bool)

(assert (=> b!1252962 (= c!122209 (validKeyInArray!0 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1252963 () Bool)

(assert (=> b!1252963 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39694 _keys!1118)))))

(assert (=> b!1252963 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39695 _values!914)))))

(declare-fun e!711776 () Bool)

(declare-fun lt!565585 () ListLongMap!18613)

(declare-fun apply!1019 (ListLongMap!18613 (_ BitVec 64)) V!47737)

(declare-fun get!20101 (ValueCell!15126 V!47737) V!47737)

(declare-fun dynLambda!3464 (Int (_ BitVec 64)) V!47737)

(assert (=> b!1252963 (= e!711776 (= (apply!1019 lt!565585 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000)) (get!20101 (select (arr!39158 _values!914) #b00000000000000000000000000000000) (dynLambda!3464 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1252964 () Bool)

(declare-fun e!711781 () Bool)

(assert (=> b!1252964 (= e!711781 (validKeyInArray!0 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1252964 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1252965 () Bool)

(declare-fun e!711779 () Bool)

(declare-fun e!711780 () Bool)

(assert (=> b!1252965 (= e!711779 e!711780)))

(declare-fun c!122210 () Bool)

(assert (=> b!1252965 (= c!122210 (bvslt #b00000000000000000000000000000000 (size!39694 _keys!1118)))))

(declare-fun b!1252966 () Bool)

(declare-fun res!835633 () Bool)

(declare-fun e!711777 () Bool)

(assert (=> b!1252966 (=> (not res!835633) (not e!711777))))

(declare-fun contains!7535 (ListLongMap!18613 (_ BitVec 64)) Bool)

(assert (=> b!1252966 (= res!835633 (not (contains!7535 lt!565585 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!61659 () Bool)

(declare-fun call!61662 () ListLongMap!18613)

(assert (=> bm!61659 (= call!61662 (getCurrentListMapNoExtraKeys!5693 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1252967 () Bool)

(declare-fun isEmpty!1029 (ListLongMap!18613) Bool)

(assert (=> b!1252967 (= e!711780 (isEmpty!1029 lt!565585))))

(declare-fun b!1252968 () Bool)

(declare-fun lt!565586 () Unit!41617)

(declare-fun lt!565591 () Unit!41617)

(assert (=> b!1252968 (= lt!565586 lt!565591)))

(declare-fun lt!565587 () V!47737)

(declare-fun lt!565589 () (_ BitVec 64))

(declare-fun lt!565588 () ListLongMap!18613)

(declare-fun lt!565590 () (_ BitVec 64))

(declare-fun +!4128 (ListLongMap!18613 tuple2!20728) ListLongMap!18613)

(assert (=> b!1252968 (not (contains!7535 (+!4128 lt!565588 (tuple2!20729 lt!565590 lt!565587)) lt!565589))))

(declare-fun addStillNotContains!314 (ListLongMap!18613 (_ BitVec 64) V!47737 (_ BitVec 64)) Unit!41617)

(assert (=> b!1252968 (= lt!565591 (addStillNotContains!314 lt!565588 lt!565590 lt!565587 lt!565589))))

(assert (=> b!1252968 (= lt!565589 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1252968 (= lt!565587 (get!20101 (select (arr!39158 _values!914) #b00000000000000000000000000000000) (dynLambda!3464 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1252968 (= lt!565590 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1252968 (= lt!565588 call!61662)))

(assert (=> b!1252968 (= e!711775 (+!4128 call!61662 (tuple2!20729 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000) (get!20101 (select (arr!39158 _values!914) #b00000000000000000000000000000000) (dynLambda!3464 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1252969 () Bool)

(assert (=> b!1252969 (= e!711780 (= lt!565585 (getCurrentListMapNoExtraKeys!5693 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1252970 () Bool)

(assert (=> b!1252970 (= e!711778 (ListLongMap!18614 Nil!27972))))

(declare-fun d!137941 () Bool)

(assert (=> d!137941 e!711777))

(declare-fun res!835635 () Bool)

(assert (=> d!137941 (=> (not res!835635) (not e!711777))))

(assert (=> d!137941 (= res!835635 (not (contains!7535 lt!565585 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!137941 (= lt!565585 e!711778)))

(declare-fun c!122212 () Bool)

(assert (=> d!137941 (= c!122212 (bvsge #b00000000000000000000000000000000 (size!39694 _keys!1118)))))

(assert (=> d!137941 (validMask!0 mask!1466)))

(assert (=> d!137941 (= (getCurrentListMapNoExtraKeys!5693 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!565585)))

(declare-fun b!1252971 () Bool)

(assert (=> b!1252971 (= e!711779 e!711776)))

(assert (=> b!1252971 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39694 _keys!1118)))))

(declare-fun res!835636 () Bool)

(assert (=> b!1252971 (= res!835636 (contains!7535 lt!565585 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1252971 (=> (not res!835636) (not e!711776))))

(declare-fun b!1252972 () Bool)

(assert (=> b!1252972 (= e!711775 call!61662)))

(declare-fun b!1252973 () Bool)

(assert (=> b!1252973 (= e!711777 e!711779)))

(declare-fun c!122211 () Bool)

(assert (=> b!1252973 (= c!122211 e!711781)))

(declare-fun res!835634 () Bool)

(assert (=> b!1252973 (=> (not res!835634) (not e!711781))))

(assert (=> b!1252973 (= res!835634 (bvslt #b00000000000000000000000000000000 (size!39694 _keys!1118)))))

(assert (= (and d!137941 c!122212) b!1252970))

(assert (= (and d!137941 (not c!122212)) b!1252962))

(assert (= (and b!1252962 c!122209) b!1252968))

(assert (= (and b!1252962 (not c!122209)) b!1252972))

(assert (= (or b!1252968 b!1252972) bm!61659))

(assert (= (and d!137941 res!835635) b!1252966))

(assert (= (and b!1252966 res!835633) b!1252973))

(assert (= (and b!1252973 res!835634) b!1252964))

(assert (= (and b!1252973 c!122211) b!1252971))

(assert (= (and b!1252973 (not c!122211)) b!1252965))

(assert (= (and b!1252971 res!835636) b!1252963))

(assert (= (and b!1252965 c!122210) b!1252969))

(assert (= (and b!1252965 (not c!122210)) b!1252967))

(declare-fun b_lambda!22593 () Bool)

(assert (=> (not b_lambda!22593) (not b!1252963)))

(declare-fun t!41466 () Bool)

(declare-fun tb!11303 () Bool)

(assert (=> (and start!105180 (= defaultEntry!922 defaultEntry!922) t!41466) tb!11303))

(declare-fun result!23301 () Bool)

(assert (=> tb!11303 (= result!23301 tp_is_empty!31779)))

(assert (=> b!1252963 t!41466))

(declare-fun b_and!44695 () Bool)

(assert (= b_and!44691 (and (=> t!41466 result!23301) b_and!44695)))

(declare-fun b_lambda!22595 () Bool)

(assert (=> (not b_lambda!22595) (not b!1252968)))

(assert (=> b!1252968 t!41466))

(declare-fun b_and!44697 () Bool)

(assert (= b_and!44695 (and (=> t!41466 result!23301) b_and!44697)))

(declare-fun m!1153525 () Bool)

(assert (=> bm!61659 m!1153525))

(declare-fun m!1153527 () Bool)

(assert (=> b!1252966 m!1153527))

(assert (=> b!1252964 m!1153511))

(assert (=> b!1252964 m!1153511))

(assert (=> b!1252964 m!1153519))

(declare-fun m!1153529 () Bool)

(assert (=> b!1252963 m!1153529))

(assert (=> b!1252963 m!1153511))

(declare-fun m!1153531 () Bool)

(assert (=> b!1252963 m!1153531))

(declare-fun m!1153533 () Bool)

(assert (=> b!1252963 m!1153533))

(assert (=> b!1252963 m!1153511))

(assert (=> b!1252963 m!1153533))

(assert (=> b!1252963 m!1153529))

(declare-fun m!1153535 () Bool)

(assert (=> b!1252963 m!1153535))

(declare-fun m!1153537 () Bool)

(assert (=> b!1252968 m!1153537))

(declare-fun m!1153539 () Bool)

(assert (=> b!1252968 m!1153539))

(assert (=> b!1252968 m!1153537))

(declare-fun m!1153541 () Bool)

(assert (=> b!1252968 m!1153541))

(declare-fun m!1153543 () Bool)

(assert (=> b!1252968 m!1153543))

(assert (=> b!1252968 m!1153529))

(assert (=> b!1252968 m!1153533))

(assert (=> b!1252968 m!1153511))

(assert (=> b!1252968 m!1153533))

(assert (=> b!1252968 m!1153529))

(assert (=> b!1252968 m!1153535))

(declare-fun m!1153545 () Bool)

(assert (=> b!1252967 m!1153545))

(assert (=> b!1252971 m!1153511))

(assert (=> b!1252971 m!1153511))

(declare-fun m!1153547 () Bool)

(assert (=> b!1252971 m!1153547))

(declare-fun m!1153549 () Bool)

(assert (=> d!137941 m!1153549))

(assert (=> d!137941 m!1153483))

(assert (=> b!1252962 m!1153511))

(assert (=> b!1252962 m!1153511))

(assert (=> b!1252962 m!1153519))

(assert (=> b!1252969 m!1153525))

(assert (=> b!1252894 d!137941))

(declare-fun b!1252976 () Bool)

(declare-fun e!711785 () ListLongMap!18613)

(declare-fun e!711782 () ListLongMap!18613)

(assert (=> b!1252976 (= e!711785 e!711782)))

(declare-fun c!122213 () Bool)

(assert (=> b!1252976 (= c!122213 (validKeyInArray!0 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1252977 () Bool)

(assert (=> b!1252977 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39694 _keys!1118)))))

(assert (=> b!1252977 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39695 _values!914)))))

(declare-fun lt!565592 () ListLongMap!18613)

(declare-fun e!711783 () Bool)

(assert (=> b!1252977 (= e!711783 (= (apply!1019 lt!565592 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000)) (get!20101 (select (arr!39158 _values!914) #b00000000000000000000000000000000) (dynLambda!3464 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1252978 () Bool)

(declare-fun e!711788 () Bool)

(assert (=> b!1252978 (= e!711788 (validKeyInArray!0 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1252978 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1252979 () Bool)

(declare-fun e!711786 () Bool)

(declare-fun e!711787 () Bool)

(assert (=> b!1252979 (= e!711786 e!711787)))

(declare-fun c!122214 () Bool)

(assert (=> b!1252979 (= c!122214 (bvslt #b00000000000000000000000000000000 (size!39694 _keys!1118)))))

(declare-fun b!1252980 () Bool)

(declare-fun res!835637 () Bool)

(declare-fun e!711784 () Bool)

(assert (=> b!1252980 (=> (not res!835637) (not e!711784))))

(assert (=> b!1252980 (= res!835637 (not (contains!7535 lt!565592 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!61660 () Bool)

(declare-fun call!61663 () ListLongMap!18613)

(assert (=> bm!61660 (= call!61663 (getCurrentListMapNoExtraKeys!5693 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1252981 () Bool)

(assert (=> b!1252981 (= e!711787 (isEmpty!1029 lt!565592))))

(declare-fun b!1252982 () Bool)

(declare-fun lt!565593 () Unit!41617)

(declare-fun lt!565598 () Unit!41617)

(assert (=> b!1252982 (= lt!565593 lt!565598)))

(declare-fun lt!565597 () (_ BitVec 64))

(declare-fun lt!565596 () (_ BitVec 64))

(declare-fun lt!565594 () V!47737)

(declare-fun lt!565595 () ListLongMap!18613)

(assert (=> b!1252982 (not (contains!7535 (+!4128 lt!565595 (tuple2!20729 lt!565597 lt!565594)) lt!565596))))

(assert (=> b!1252982 (= lt!565598 (addStillNotContains!314 lt!565595 lt!565597 lt!565594 lt!565596))))

(assert (=> b!1252982 (= lt!565596 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1252982 (= lt!565594 (get!20101 (select (arr!39158 _values!914) #b00000000000000000000000000000000) (dynLambda!3464 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1252982 (= lt!565597 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1252982 (= lt!565595 call!61663)))

(assert (=> b!1252982 (= e!711782 (+!4128 call!61663 (tuple2!20729 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000) (get!20101 (select (arr!39158 _values!914) #b00000000000000000000000000000000) (dynLambda!3464 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1252983 () Bool)

(assert (=> b!1252983 (= e!711787 (= lt!565592 (getCurrentListMapNoExtraKeys!5693 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1252984 () Bool)

(assert (=> b!1252984 (= e!711785 (ListLongMap!18614 Nil!27972))))

(declare-fun d!137943 () Bool)

(assert (=> d!137943 e!711784))

(declare-fun res!835639 () Bool)

(assert (=> d!137943 (=> (not res!835639) (not e!711784))))

(assert (=> d!137943 (= res!835639 (not (contains!7535 lt!565592 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!137943 (= lt!565592 e!711785)))

(declare-fun c!122216 () Bool)

(assert (=> d!137943 (= c!122216 (bvsge #b00000000000000000000000000000000 (size!39694 _keys!1118)))))

(assert (=> d!137943 (validMask!0 mask!1466)))

(assert (=> d!137943 (= (getCurrentListMapNoExtraKeys!5693 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!565592)))

(declare-fun b!1252985 () Bool)

(assert (=> b!1252985 (= e!711786 e!711783)))

(assert (=> b!1252985 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39694 _keys!1118)))))

(declare-fun res!835640 () Bool)

(assert (=> b!1252985 (= res!835640 (contains!7535 lt!565592 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1252985 (=> (not res!835640) (not e!711783))))

(declare-fun b!1252986 () Bool)

(assert (=> b!1252986 (= e!711782 call!61663)))

(declare-fun b!1252987 () Bool)

(assert (=> b!1252987 (= e!711784 e!711786)))

(declare-fun c!122215 () Bool)

(assert (=> b!1252987 (= c!122215 e!711788)))

(declare-fun res!835638 () Bool)

(assert (=> b!1252987 (=> (not res!835638) (not e!711788))))

(assert (=> b!1252987 (= res!835638 (bvslt #b00000000000000000000000000000000 (size!39694 _keys!1118)))))

(assert (= (and d!137943 c!122216) b!1252984))

(assert (= (and d!137943 (not c!122216)) b!1252976))

(assert (= (and b!1252976 c!122213) b!1252982))

(assert (= (and b!1252976 (not c!122213)) b!1252986))

(assert (= (or b!1252982 b!1252986) bm!61660))

(assert (= (and d!137943 res!835639) b!1252980))

(assert (= (and b!1252980 res!835637) b!1252987))

(assert (= (and b!1252987 res!835638) b!1252978))

(assert (= (and b!1252987 c!122215) b!1252985))

(assert (= (and b!1252987 (not c!122215)) b!1252979))

(assert (= (and b!1252985 res!835640) b!1252977))

(assert (= (and b!1252979 c!122214) b!1252983))

(assert (= (and b!1252979 (not c!122214)) b!1252981))

(declare-fun b_lambda!22597 () Bool)

(assert (=> (not b_lambda!22597) (not b!1252977)))

(assert (=> b!1252977 t!41466))

(declare-fun b_and!44699 () Bool)

(assert (= b_and!44697 (and (=> t!41466 result!23301) b_and!44699)))

(declare-fun b_lambda!22599 () Bool)

(assert (=> (not b_lambda!22599) (not b!1252982)))

(assert (=> b!1252982 t!41466))

(declare-fun b_and!44701 () Bool)

(assert (= b_and!44699 (and (=> t!41466 result!23301) b_and!44701)))

(declare-fun m!1153551 () Bool)

(assert (=> bm!61660 m!1153551))

(declare-fun m!1153553 () Bool)

(assert (=> b!1252980 m!1153553))

(assert (=> b!1252978 m!1153511))

(assert (=> b!1252978 m!1153511))

(assert (=> b!1252978 m!1153519))

(assert (=> b!1252977 m!1153529))

(assert (=> b!1252977 m!1153511))

(declare-fun m!1153555 () Bool)

(assert (=> b!1252977 m!1153555))

(assert (=> b!1252977 m!1153533))

(assert (=> b!1252977 m!1153511))

(assert (=> b!1252977 m!1153533))

(assert (=> b!1252977 m!1153529))

(assert (=> b!1252977 m!1153535))

(declare-fun m!1153557 () Bool)

(assert (=> b!1252982 m!1153557))

(declare-fun m!1153559 () Bool)

(assert (=> b!1252982 m!1153559))

(assert (=> b!1252982 m!1153557))

(declare-fun m!1153561 () Bool)

(assert (=> b!1252982 m!1153561))

(declare-fun m!1153563 () Bool)

(assert (=> b!1252982 m!1153563))

(assert (=> b!1252982 m!1153529))

(assert (=> b!1252982 m!1153533))

(assert (=> b!1252982 m!1153511))

(assert (=> b!1252982 m!1153533))

(assert (=> b!1252982 m!1153529))

(assert (=> b!1252982 m!1153535))

(declare-fun m!1153565 () Bool)

(assert (=> b!1252981 m!1153565))

(assert (=> b!1252985 m!1153511))

(assert (=> b!1252985 m!1153511))

(declare-fun m!1153567 () Bool)

(assert (=> b!1252985 m!1153567))

(declare-fun m!1153569 () Bool)

(assert (=> d!137943 m!1153569))

(assert (=> d!137943 m!1153483))

(assert (=> b!1252976 m!1153511))

(assert (=> b!1252976 m!1153511))

(assert (=> b!1252976 m!1153519))

(assert (=> b!1252983 m!1153551))

(assert (=> b!1252894 d!137943))

(declare-fun d!137945 () Bool)

(assert (=> d!137945 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!105180 d!137945))

(declare-fun d!137947 () Bool)

(assert (=> d!137947 (= (array_inv!29795 _keys!1118) (bvsge (size!39694 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!105180 d!137947))

(declare-fun d!137949 () Bool)

(assert (=> d!137949 (= (array_inv!29796 _values!914) (bvsge (size!39695 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!105180 d!137949))

(declare-fun b!1253030 () Bool)

(declare-fun e!711816 () Bool)

(declare-fun e!711827 () Bool)

(assert (=> b!1253030 (= e!711816 e!711827)))

(declare-fun c!122231 () Bool)

(assert (=> b!1253030 (= c!122231 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1253031 () Bool)

(declare-fun res!835666 () Bool)

(assert (=> b!1253031 (=> (not res!835666) (not e!711816))))

(declare-fun e!711819 () Bool)

(assert (=> b!1253031 (= res!835666 e!711819)))

(declare-fun res!835663 () Bool)

(assert (=> b!1253031 (=> res!835663 e!711819)))

(declare-fun e!711823 () Bool)

(assert (=> b!1253031 (= res!835663 (not e!711823))))

(declare-fun res!835664 () Bool)

(assert (=> b!1253031 (=> (not res!835664) (not e!711823))))

(assert (=> b!1253031 (= res!835664 (bvslt #b00000000000000000000000000000000 (size!39694 _keys!1118)))))

(declare-fun b!1253032 () Bool)

(declare-fun e!711821 () Unit!41617)

(declare-fun lt!565658 () Unit!41617)

(assert (=> b!1253032 (= e!711821 lt!565658)))

(declare-fun lt!565649 () ListLongMap!18613)

(assert (=> b!1253032 (= lt!565649 (getCurrentListMapNoExtraKeys!5693 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!565645 () (_ BitVec 64))

(assert (=> b!1253032 (= lt!565645 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!565646 () (_ BitVec 64))

(assert (=> b!1253032 (= lt!565646 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!565648 () Unit!41617)

(declare-fun addStillContains!1093 (ListLongMap!18613 (_ BitVec 64) V!47737 (_ BitVec 64)) Unit!41617)

(assert (=> b!1253032 (= lt!565648 (addStillContains!1093 lt!565649 lt!565645 zeroValue!871 lt!565646))))

(assert (=> b!1253032 (contains!7535 (+!4128 lt!565649 (tuple2!20729 lt!565645 zeroValue!871)) lt!565646)))

(declare-fun lt!565651 () Unit!41617)

(assert (=> b!1253032 (= lt!565651 lt!565648)))

(declare-fun lt!565662 () ListLongMap!18613)

(assert (=> b!1253032 (= lt!565662 (getCurrentListMapNoExtraKeys!5693 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!565657 () (_ BitVec 64))

(assert (=> b!1253032 (= lt!565657 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!565644 () (_ BitVec 64))

(assert (=> b!1253032 (= lt!565644 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!565652 () Unit!41617)

(declare-fun addApplyDifferent!527 (ListLongMap!18613 (_ BitVec 64) V!47737 (_ BitVec 64)) Unit!41617)

(assert (=> b!1253032 (= lt!565652 (addApplyDifferent!527 lt!565662 lt!565657 minValueBefore!43 lt!565644))))

(assert (=> b!1253032 (= (apply!1019 (+!4128 lt!565662 (tuple2!20729 lt!565657 minValueBefore!43)) lt!565644) (apply!1019 lt!565662 lt!565644))))

(declare-fun lt!565660 () Unit!41617)

(assert (=> b!1253032 (= lt!565660 lt!565652)))

(declare-fun lt!565663 () ListLongMap!18613)

(assert (=> b!1253032 (= lt!565663 (getCurrentListMapNoExtraKeys!5693 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!565647 () (_ BitVec 64))

(assert (=> b!1253032 (= lt!565647 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!565664 () (_ BitVec 64))

(assert (=> b!1253032 (= lt!565664 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!565643 () Unit!41617)

(assert (=> b!1253032 (= lt!565643 (addApplyDifferent!527 lt!565663 lt!565647 zeroValue!871 lt!565664))))

(assert (=> b!1253032 (= (apply!1019 (+!4128 lt!565663 (tuple2!20729 lt!565647 zeroValue!871)) lt!565664) (apply!1019 lt!565663 lt!565664))))

(declare-fun lt!565661 () Unit!41617)

(assert (=> b!1253032 (= lt!565661 lt!565643)))

(declare-fun lt!565655 () ListLongMap!18613)

(assert (=> b!1253032 (= lt!565655 (getCurrentListMapNoExtraKeys!5693 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!565654 () (_ BitVec 64))

(assert (=> b!1253032 (= lt!565654 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!565650 () (_ BitVec 64))

(assert (=> b!1253032 (= lt!565650 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1253032 (= lt!565658 (addApplyDifferent!527 lt!565655 lt!565654 minValueBefore!43 lt!565650))))

(assert (=> b!1253032 (= (apply!1019 (+!4128 lt!565655 (tuple2!20729 lt!565654 minValueBefore!43)) lt!565650) (apply!1019 lt!565655 lt!565650))))

(declare-fun b!1253033 () Bool)

(declare-fun e!711825 () Bool)

(assert (=> b!1253033 (= e!711827 e!711825)))

(declare-fun res!835662 () Bool)

(declare-fun call!61678 () Bool)

(assert (=> b!1253033 (= res!835662 call!61678)))

(assert (=> b!1253033 (=> (not res!835662) (not e!711825))))

(declare-fun b!1253034 () Bool)

(declare-fun e!711824 () ListLongMap!18613)

(declare-fun call!61683 () ListLongMap!18613)

(assert (=> b!1253034 (= e!711824 call!61683)))

(declare-fun b!1253035 () Bool)

(declare-fun e!711818 () Bool)

(assert (=> b!1253035 (= e!711818 (validKeyInArray!0 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun lt!565659 () ListLongMap!18613)

(declare-fun e!711826 () Bool)

(declare-fun b!1253036 () Bool)

(assert (=> b!1253036 (= e!711826 (= (apply!1019 lt!565659 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000)) (get!20101 (select (arr!39158 _values!914) #b00000000000000000000000000000000) (dynLambda!3464 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1253036 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39695 _values!914)))))

(assert (=> b!1253036 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39694 _keys!1118)))))

(declare-fun b!1253037 () Bool)

(declare-fun res!835667 () Bool)

(assert (=> b!1253037 (=> (not res!835667) (not e!711816))))

(declare-fun e!711817 () Bool)

(assert (=> b!1253037 (= res!835667 e!711817)))

(declare-fun c!122232 () Bool)

(assert (=> b!1253037 (= c!122232 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!61675 () Bool)

(declare-fun call!61681 () ListLongMap!18613)

(assert (=> bm!61675 (= call!61683 call!61681)))

(declare-fun bm!61676 () Bool)

(assert (=> bm!61676 (= call!61678 (contains!7535 lt!565659 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!61677 () Bool)

(declare-fun call!61684 () ListLongMap!18613)

(declare-fun c!122230 () Bool)

(declare-fun call!61679 () ListLongMap!18613)

(declare-fun call!61680 () ListLongMap!18613)

(declare-fun c!122234 () Bool)

(assert (=> bm!61677 (= call!61681 (+!4128 (ite c!122234 call!61680 (ite c!122230 call!61679 call!61684)) (ite (or c!122234 c!122230) (tuple2!20729 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!20729 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun b!1253039 () Bool)

(assert (=> b!1253039 (= e!711823 (validKeyInArray!0 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1253040 () Bool)

(assert (=> b!1253040 (= e!711825 (= (apply!1019 lt!565659 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(declare-fun bm!61678 () Bool)

(assert (=> bm!61678 (= call!61684 call!61679)))

(declare-fun b!1253041 () Bool)

(declare-fun e!711815 () ListLongMap!18613)

(assert (=> b!1253041 (= e!711815 call!61683)))

(declare-fun b!1253042 () Bool)

(assert (=> b!1253042 (= e!711815 call!61684)))

(declare-fun bm!61679 () Bool)

(assert (=> bm!61679 (= call!61680 (getCurrentListMapNoExtraKeys!5693 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253043 () Bool)

(declare-fun e!711822 () ListLongMap!18613)

(assert (=> b!1253043 (= e!711822 (+!4128 call!61681 (tuple2!20729 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun b!1253044 () Bool)

(declare-fun c!122229 () Bool)

(assert (=> b!1253044 (= c!122229 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1253044 (= e!711824 e!711815)))

(declare-fun b!1253045 () Bool)

(assert (=> b!1253045 (= e!711822 e!711824)))

(assert (=> b!1253045 (= c!122230 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!61680 () Bool)

(declare-fun call!61682 () Bool)

(assert (=> bm!61680 (= call!61682 (contains!7535 lt!565659 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1253046 () Bool)

(declare-fun e!711820 () Bool)

(assert (=> b!1253046 (= e!711817 e!711820)))

(declare-fun res!835660 () Bool)

(assert (=> b!1253046 (= res!835660 call!61682)))

(assert (=> b!1253046 (=> (not res!835660) (not e!711820))))

(declare-fun b!1253047 () Bool)

(declare-fun Unit!41619 () Unit!41617)

(assert (=> b!1253047 (= e!711821 Unit!41619)))

(declare-fun b!1253048 () Bool)

(assert (=> b!1253048 (= e!711817 (not call!61682))))

(declare-fun bm!61681 () Bool)

(assert (=> bm!61681 (= call!61679 call!61680)))

(declare-fun b!1253038 () Bool)

(assert (=> b!1253038 (= e!711819 e!711826)))

(declare-fun res!835659 () Bool)

(assert (=> b!1253038 (=> (not res!835659) (not e!711826))))

(assert (=> b!1253038 (= res!835659 (contains!7535 lt!565659 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1253038 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39694 _keys!1118)))))

(declare-fun d!137951 () Bool)

(assert (=> d!137951 e!711816))

(declare-fun res!835665 () Bool)

(assert (=> d!137951 (=> (not res!835665) (not e!711816))))

(assert (=> d!137951 (= res!835665 (or (bvsge #b00000000000000000000000000000000 (size!39694 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39694 _keys!1118)))))))

(declare-fun lt!565656 () ListLongMap!18613)

(assert (=> d!137951 (= lt!565659 lt!565656)))

(declare-fun lt!565653 () Unit!41617)

(assert (=> d!137951 (= lt!565653 e!711821)))

(declare-fun c!122233 () Bool)

(assert (=> d!137951 (= c!122233 e!711818)))

(declare-fun res!835661 () Bool)

(assert (=> d!137951 (=> (not res!835661) (not e!711818))))

(assert (=> d!137951 (= res!835661 (bvslt #b00000000000000000000000000000000 (size!39694 _keys!1118)))))

(assert (=> d!137951 (= lt!565656 e!711822)))

(assert (=> d!137951 (= c!122234 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!137951 (validMask!0 mask!1466)))

(assert (=> d!137951 (= (getCurrentListMap!4514 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!565659)))

(declare-fun b!1253049 () Bool)

(assert (=> b!1253049 (= e!711827 (not call!61678))))

(declare-fun b!1253050 () Bool)

(assert (=> b!1253050 (= e!711820 (= (apply!1019 lt!565659 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(assert (= (and d!137951 c!122234) b!1253043))

(assert (= (and d!137951 (not c!122234)) b!1253045))

(assert (= (and b!1253045 c!122230) b!1253034))

(assert (= (and b!1253045 (not c!122230)) b!1253044))

(assert (= (and b!1253044 c!122229) b!1253041))

(assert (= (and b!1253044 (not c!122229)) b!1253042))

(assert (= (or b!1253041 b!1253042) bm!61678))

(assert (= (or b!1253034 bm!61678) bm!61681))

(assert (= (or b!1253034 b!1253041) bm!61675))

(assert (= (or b!1253043 bm!61681) bm!61679))

(assert (= (or b!1253043 bm!61675) bm!61677))

(assert (= (and d!137951 res!835661) b!1253035))

(assert (= (and d!137951 c!122233) b!1253032))

(assert (= (and d!137951 (not c!122233)) b!1253047))

(assert (= (and d!137951 res!835665) b!1253031))

(assert (= (and b!1253031 res!835664) b!1253039))

(assert (= (and b!1253031 (not res!835663)) b!1253038))

(assert (= (and b!1253038 res!835659) b!1253036))

(assert (= (and b!1253031 res!835666) b!1253037))

(assert (= (and b!1253037 c!122232) b!1253046))

(assert (= (and b!1253037 (not c!122232)) b!1253048))

(assert (= (and b!1253046 res!835660) b!1253050))

(assert (= (or b!1253046 b!1253048) bm!61680))

(assert (= (and b!1253037 res!835667) b!1253030))

(assert (= (and b!1253030 c!122231) b!1253033))

(assert (= (and b!1253030 (not c!122231)) b!1253049))

(assert (= (and b!1253033 res!835662) b!1253040))

(assert (= (or b!1253033 b!1253049) bm!61676))

(declare-fun b_lambda!22601 () Bool)

(assert (=> (not b_lambda!22601) (not b!1253036)))

(assert (=> b!1253036 t!41466))

(declare-fun b_and!44703 () Bool)

(assert (= b_and!44701 (and (=> t!41466 result!23301) b_and!44703)))

(declare-fun m!1153571 () Bool)

(assert (=> bm!61676 m!1153571))

(assert (=> b!1253039 m!1153511))

(assert (=> b!1253039 m!1153511))

(assert (=> b!1253039 m!1153519))

(assert (=> bm!61679 m!1153479))

(declare-fun m!1153573 () Bool)

(assert (=> b!1253032 m!1153573))

(declare-fun m!1153575 () Bool)

(assert (=> b!1253032 m!1153575))

(declare-fun m!1153577 () Bool)

(assert (=> b!1253032 m!1153577))

(declare-fun m!1153579 () Bool)

(assert (=> b!1253032 m!1153579))

(declare-fun m!1153581 () Bool)

(assert (=> b!1253032 m!1153581))

(assert (=> b!1253032 m!1153573))

(declare-fun m!1153583 () Bool)

(assert (=> b!1253032 m!1153583))

(declare-fun m!1153585 () Bool)

(assert (=> b!1253032 m!1153585))

(declare-fun m!1153587 () Bool)

(assert (=> b!1253032 m!1153587))

(assert (=> b!1253032 m!1153583))

(declare-fun m!1153589 () Bool)

(assert (=> b!1253032 m!1153589))

(assert (=> b!1253032 m!1153511))

(declare-fun m!1153591 () Bool)

(assert (=> b!1253032 m!1153591))

(declare-fun m!1153593 () Bool)

(assert (=> b!1253032 m!1153593))

(declare-fun m!1153595 () Bool)

(assert (=> b!1253032 m!1153595))

(assert (=> b!1253032 m!1153479))

(assert (=> b!1253032 m!1153579))

(declare-fun m!1153597 () Bool)

(assert (=> b!1253032 m!1153597))

(declare-fun m!1153599 () Bool)

(assert (=> b!1253032 m!1153599))

(declare-fun m!1153601 () Bool)

(assert (=> b!1253032 m!1153601))

(assert (=> b!1253032 m!1153597))

(declare-fun m!1153603 () Bool)

(assert (=> b!1253043 m!1153603))

(declare-fun m!1153605 () Bool)

(assert (=> bm!61680 m!1153605))

(assert (=> b!1253038 m!1153511))

(assert (=> b!1253038 m!1153511))

(declare-fun m!1153607 () Bool)

(assert (=> b!1253038 m!1153607))

(assert (=> b!1253036 m!1153511))

(declare-fun m!1153609 () Bool)

(assert (=> b!1253036 m!1153609))

(assert (=> b!1253036 m!1153533))

(assert (=> b!1253036 m!1153529))

(assert (=> b!1253036 m!1153535))

(assert (=> b!1253036 m!1153529))

(assert (=> b!1253036 m!1153511))

(assert (=> b!1253036 m!1153533))

(declare-fun m!1153611 () Bool)

(assert (=> bm!61677 m!1153611))

(assert (=> d!137951 m!1153483))

(assert (=> b!1253035 m!1153511))

(assert (=> b!1253035 m!1153511))

(assert (=> b!1253035 m!1153519))

(declare-fun m!1153613 () Bool)

(assert (=> b!1253050 m!1153613))

(declare-fun m!1153615 () Bool)

(assert (=> b!1253040 m!1153615))

(assert (=> b!1252898 d!137951))

(declare-fun b!1253061 () Bool)

(declare-fun e!711836 () Bool)

(declare-fun call!61687 () Bool)

(assert (=> b!1253061 (= e!711836 call!61687)))

(declare-fun b!1253062 () Bool)

(assert (=> b!1253062 (= e!711836 call!61687)))

(declare-fun b!1253063 () Bool)

(declare-fun e!711838 () Bool)

(declare-fun e!711839 () Bool)

(assert (=> b!1253063 (= e!711838 e!711839)))

(declare-fun res!835675 () Bool)

(assert (=> b!1253063 (=> (not res!835675) (not e!711839))))

(declare-fun e!711837 () Bool)

(assert (=> b!1253063 (= res!835675 (not e!711837))))

(declare-fun res!835676 () Bool)

(assert (=> b!1253063 (=> (not res!835676) (not e!711837))))

(assert (=> b!1253063 (= res!835676 (validKeyInArray!0 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!137953 () Bool)

(declare-fun res!835674 () Bool)

(assert (=> d!137953 (=> res!835674 e!711838)))

(assert (=> d!137953 (= res!835674 (bvsge #b00000000000000000000000000000000 (size!39694 _keys!1118)))))

(assert (=> d!137953 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27973) e!711838)))

(declare-fun b!1253064 () Bool)

(assert (=> b!1253064 (= e!711839 e!711836)))

(declare-fun c!122237 () Bool)

(assert (=> b!1253064 (= c!122237 (validKeyInArray!0 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1253065 () Bool)

(declare-fun contains!7536 (List!27976 (_ BitVec 64)) Bool)

(assert (=> b!1253065 (= e!711837 (contains!7536 Nil!27973 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!61684 () Bool)

(assert (=> bm!61684 (= call!61687 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122237 (Cons!27972 (select (arr!39157 _keys!1118) #b00000000000000000000000000000000) Nil!27973) Nil!27973)))))

(assert (= (and d!137953 (not res!835674)) b!1253063))

(assert (= (and b!1253063 res!835676) b!1253065))

(assert (= (and b!1253063 res!835675) b!1253064))

(assert (= (and b!1253064 c!122237) b!1253061))

(assert (= (and b!1253064 (not c!122237)) b!1253062))

(assert (= (or b!1253061 b!1253062) bm!61684))

(assert (=> b!1253063 m!1153511))

(assert (=> b!1253063 m!1153511))

(assert (=> b!1253063 m!1153519))

(assert (=> b!1253064 m!1153511))

(assert (=> b!1253064 m!1153511))

(assert (=> b!1253064 m!1153519))

(assert (=> b!1253065 m!1153511))

(assert (=> b!1253065 m!1153511))

(declare-fun m!1153617 () Bool)

(assert (=> b!1253065 m!1153617))

(assert (=> bm!61684 m!1153511))

(declare-fun m!1153619 () Bool)

(assert (=> bm!61684 m!1153619))

(assert (=> b!1252896 d!137953))

(declare-fun mapNonEmpty!49447 () Bool)

(declare-fun mapRes!49447 () Bool)

(declare-fun tp!94143 () Bool)

(declare-fun e!711844 () Bool)

(assert (=> mapNonEmpty!49447 (= mapRes!49447 (and tp!94143 e!711844))))

(declare-fun mapKey!49447 () (_ BitVec 32))

(declare-fun mapValue!49447 () ValueCell!15126)

(declare-fun mapRest!49447 () (Array (_ BitVec 32) ValueCell!15126))

(assert (=> mapNonEmpty!49447 (= mapRest!49441 (store mapRest!49447 mapKey!49447 mapValue!49447))))

(declare-fun mapIsEmpty!49447 () Bool)

(assert (=> mapIsEmpty!49447 mapRes!49447))

(declare-fun b!1253072 () Bool)

(assert (=> b!1253072 (= e!711844 tp_is_empty!31779)))

(declare-fun condMapEmpty!49447 () Bool)

(declare-fun mapDefault!49447 () ValueCell!15126)

(assert (=> mapNonEmpty!49441 (= condMapEmpty!49447 (= mapRest!49441 ((as const (Array (_ BitVec 32) ValueCell!15126)) mapDefault!49447)))))

(declare-fun e!711845 () Bool)

(assert (=> mapNonEmpty!49441 (= tp!94133 (and e!711845 mapRes!49447))))

(declare-fun b!1253073 () Bool)

(assert (=> b!1253073 (= e!711845 tp_is_empty!31779)))

(assert (= (and mapNonEmpty!49441 condMapEmpty!49447) mapIsEmpty!49447))

(assert (= (and mapNonEmpty!49441 (not condMapEmpty!49447)) mapNonEmpty!49447))

(assert (= (and mapNonEmpty!49447 ((_ is ValueCellFull!15126) mapValue!49447)) b!1253072))

(assert (= (and mapNonEmpty!49441 ((_ is ValueCellFull!15126) mapDefault!49447)) b!1253073))

(declare-fun m!1153621 () Bool)

(assert (=> mapNonEmpty!49447 m!1153621))

(declare-fun b_lambda!22603 () Bool)

(assert (= b_lambda!22595 (or (and start!105180 b_free!26877) b_lambda!22603)))

(declare-fun b_lambda!22605 () Bool)

(assert (= b_lambda!22597 (or (and start!105180 b_free!26877) b_lambda!22605)))

(declare-fun b_lambda!22607 () Bool)

(assert (= b_lambda!22599 (or (and start!105180 b_free!26877) b_lambda!22607)))

(declare-fun b_lambda!22609 () Bool)

(assert (= b_lambda!22601 (or (and start!105180 b_free!26877) b_lambda!22609)))

(declare-fun b_lambda!22611 () Bool)

(assert (= b_lambda!22593 (or (and start!105180 b_free!26877) b_lambda!22611)))

(check-sat (not b!1252977) (not b!1253065) (not b_next!26877) (not b!1252980) (not b!1252968) (not mapNonEmpty!49447) (not bm!61680) (not b!1252982) (not b!1253064) tp_is_empty!31779 (not d!137951) (not bm!61684) (not bm!61676) (not b!1253036) (not b!1253038) (not b!1253035) (not b!1253032) (not d!137943) (not b!1253043) (not b!1252935) (not d!137939) (not b!1253039) (not b_lambda!22609) (not bm!61677) (not d!137941) (not b!1253040) (not b!1252981) (not b_lambda!22607) (not b!1252966) (not b!1253050) (not b!1252985) (not b!1252978) (not b!1252967) (not bm!61660) (not b!1252969) (not b!1252936) (not b!1252976) (not b!1252962) (not b_lambda!22603) (not b!1252964) (not b!1253063) (not bm!61679) (not b!1252983) (not b!1252963) (not b_lambda!22605) (not b_lambda!22611) (not bm!61656) (not bm!61659) (not b!1252971) b_and!44703)
(check-sat b_and!44703 (not b_next!26877))
