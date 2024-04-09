; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106018 () Bool)

(assert start!106018)

(declare-fun b_free!27471 () Bool)

(declare-fun b_next!27471 () Bool)

(assert (=> start!106018 (= b_free!27471 (not b_next!27471))))

(declare-fun tp!95954 () Bool)

(declare-fun b_and!45419 () Bool)

(assert (=> start!106018 (= tp!95954 b_and!45419)))

(declare-fun b!1262047 () Bool)

(declare-fun e!718406 () Bool)

(declare-fun tp_is_empty!32373 () Bool)

(assert (=> b!1262047 (= e!718406 tp_is_empty!32373)))

(declare-fun b!1262048 () Bool)

(declare-fun res!840936 () Bool)

(declare-fun e!718405 () Bool)

(assert (=> b!1262048 (=> (not res!840936) (not e!718405))))

(declare-datatypes ((array!82349 0))(
  ( (array!82350 (arr!39720 (Array (_ BitVec 32) (_ BitVec 64))) (size!40257 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82349)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82349 (_ BitVec 32)) Bool)

(assert (=> b!1262048 (= res!840936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!50371 () Bool)

(declare-fun mapRes!50371 () Bool)

(assert (=> mapIsEmpty!50371 mapRes!50371))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((V!48529 0))(
  ( (V!48530 (val!16249 Int)) )
))
(declare-fun zeroValue!871 () V!48529)

(declare-datatypes ((ValueCell!15423 0))(
  ( (ValueCellFull!15423 (v!18955 V!48529)) (EmptyCell!15423) )
))
(declare-datatypes ((array!82351 0))(
  ( (array!82352 (arr!39721 (Array (_ BitVec 32) ValueCell!15423)) (size!40258 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82351)

(declare-fun e!718402 () Bool)

(declare-fun b!1262049 () Bool)

(declare-fun minValueBefore!43 () V!48529)

(declare-datatypes ((tuple2!21176 0))(
  ( (tuple2!21177 (_1!10598 (_ BitVec 64)) (_2!10598 V!48529)) )
))
(declare-datatypes ((List!28398 0))(
  ( (Nil!28395) (Cons!28394 (h!29603 tuple2!21176) (t!41910 List!28398)) )
))
(declare-datatypes ((ListLongMap!19061 0))(
  ( (ListLongMap!19062 (toList!9546 List!28398)) )
))
(declare-fun lt!571993 () ListLongMap!19061)

(declare-fun defaultEntry!922 () Int)

(declare-fun getCurrentListMap!4651 (array!82349 array!82351 (_ BitVec 32) (_ BitVec 32) V!48529 V!48529 (_ BitVec 32) Int) ListLongMap!19061)

(declare-fun +!4215 (ListLongMap!19061 tuple2!21176) ListLongMap!19061)

(assert (=> b!1262049 (= e!718402 (= (getCurrentListMap!4651 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (+!4215 lt!571993 (tuple2!21177 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun minValueAfter!43 () V!48529)

(declare-fun lt!571992 () ListLongMap!19061)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1262049 (= lt!571992 (getCurrentListMap!4651 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50371 () Bool)

(declare-fun tp!95955 () Bool)

(declare-fun e!718401 () Bool)

(assert (=> mapNonEmpty!50371 (= mapRes!50371 (and tp!95955 e!718401))))

(declare-fun mapKey!50371 () (_ BitVec 32))

(declare-fun mapValue!50371 () ValueCell!15423)

(declare-fun mapRest!50371 () (Array (_ BitVec 32) ValueCell!15423))

(assert (=> mapNonEmpty!50371 (= (arr!39721 _values!914) (store mapRest!50371 mapKey!50371 mapValue!50371))))

(declare-fun b!1262050 () Bool)

(assert (=> b!1262050 (= e!718401 tp_is_empty!32373)))

(declare-fun res!840934 () Bool)

(assert (=> start!106018 (=> (not res!840934) (not e!718405))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106018 (= res!840934 (validMask!0 mask!1466))))

(assert (=> start!106018 e!718405))

(assert (=> start!106018 true))

(assert (=> start!106018 tp!95954))

(assert (=> start!106018 tp_is_empty!32373))

(declare-fun array_inv!30187 (array!82349) Bool)

(assert (=> start!106018 (array_inv!30187 _keys!1118)))

(declare-fun e!718404 () Bool)

(declare-fun array_inv!30188 (array!82351) Bool)

(assert (=> start!106018 (and (array_inv!30188 _values!914) e!718404)))

(declare-fun b!1262051 () Bool)

(assert (=> b!1262051 (= e!718405 (not e!718402))))

(declare-fun res!840935 () Bool)

(assert (=> b!1262051 (=> res!840935 e!718402)))

(assert (=> b!1262051 (= res!840935 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!571994 () ListLongMap!19061)

(assert (=> b!1262051 (= lt!571993 lt!571994)))

(declare-datatypes ((Unit!42024 0))(
  ( (Unit!42025) )
))
(declare-fun lt!571995 () Unit!42024)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1183 (array!82349 array!82351 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48529 V!48529 V!48529 V!48529 (_ BitVec 32) Int) Unit!42024)

(assert (=> b!1262051 (= lt!571995 (lemmaNoChangeToArrayThenSameMapNoExtras!1183 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5887 (array!82349 array!82351 (_ BitVec 32) (_ BitVec 32) V!48529 V!48529 (_ BitVec 32) Int) ListLongMap!19061)

(assert (=> b!1262051 (= lt!571994 (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1262051 (= lt!571993 (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1262052 () Bool)

(declare-fun res!840933 () Bool)

(assert (=> b!1262052 (=> (not res!840933) (not e!718405))))

(declare-datatypes ((List!28399 0))(
  ( (Nil!28396) (Cons!28395 (h!29604 (_ BitVec 64)) (t!41911 List!28399)) )
))
(declare-fun arrayNoDuplicates!0 (array!82349 (_ BitVec 32) List!28399) Bool)

(assert (=> b!1262052 (= res!840933 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28396))))

(declare-fun b!1262053 () Bool)

(declare-fun res!840937 () Bool)

(assert (=> b!1262053 (=> (not res!840937) (not e!718405))))

(assert (=> b!1262053 (= res!840937 (and (= (size!40258 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40257 _keys!1118) (size!40258 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1262054 () Bool)

(assert (=> b!1262054 (= e!718404 (and e!718406 mapRes!50371))))

(declare-fun condMapEmpty!50371 () Bool)

(declare-fun mapDefault!50371 () ValueCell!15423)

(assert (=> b!1262054 (= condMapEmpty!50371 (= (arr!39721 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15423)) mapDefault!50371)))))

(assert (= (and start!106018 res!840934) b!1262053))

(assert (= (and b!1262053 res!840937) b!1262048))

(assert (= (and b!1262048 res!840936) b!1262052))

(assert (= (and b!1262052 res!840933) b!1262051))

(assert (= (and b!1262051 (not res!840935)) b!1262049))

(assert (= (and b!1262054 condMapEmpty!50371) mapIsEmpty!50371))

(assert (= (and b!1262054 (not condMapEmpty!50371)) mapNonEmpty!50371))

(get-info :version)

(assert (= (and mapNonEmpty!50371 ((_ is ValueCellFull!15423) mapValue!50371)) b!1262050))

(assert (= (and b!1262054 ((_ is ValueCellFull!15423) mapDefault!50371)) b!1262047))

(assert (= start!106018 b!1262054))

(declare-fun m!1162621 () Bool)

(assert (=> b!1262052 m!1162621))

(declare-fun m!1162623 () Bool)

(assert (=> b!1262049 m!1162623))

(declare-fun m!1162625 () Bool)

(assert (=> b!1262049 m!1162625))

(declare-fun m!1162627 () Bool)

(assert (=> b!1262049 m!1162627))

(declare-fun m!1162629 () Bool)

(assert (=> start!106018 m!1162629))

(declare-fun m!1162631 () Bool)

(assert (=> start!106018 m!1162631))

(declare-fun m!1162633 () Bool)

(assert (=> start!106018 m!1162633))

(declare-fun m!1162635 () Bool)

(assert (=> b!1262051 m!1162635))

(declare-fun m!1162637 () Bool)

(assert (=> b!1262051 m!1162637))

(declare-fun m!1162639 () Bool)

(assert (=> b!1262051 m!1162639))

(declare-fun m!1162641 () Bool)

(assert (=> mapNonEmpty!50371 m!1162641))

(declare-fun m!1162643 () Bool)

(assert (=> b!1262048 m!1162643))

(check-sat tp_is_empty!32373 (not b!1262049) (not b!1262051) (not b_next!27471) b_and!45419 (not b!1262048) (not mapNonEmpty!50371) (not start!106018) (not b!1262052))
(check-sat b_and!45419 (not b_next!27471))
(get-model)

(declare-fun b!1262089 () Bool)

(declare-fun e!718433 () Bool)

(declare-fun call!62034 () Bool)

(assert (=> b!1262089 (= e!718433 call!62034)))

(declare-fun bm!62031 () Bool)

(declare-fun c!122708 () Bool)

(assert (=> bm!62031 (= call!62034 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122708 (Cons!28395 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000) Nil!28396) Nil!28396)))))

(declare-fun b!1262090 () Bool)

(assert (=> b!1262090 (= e!718433 call!62034)))

(declare-fun b!1262091 () Bool)

(declare-fun e!718435 () Bool)

(declare-fun contains!7610 (List!28399 (_ BitVec 64)) Bool)

(assert (=> b!1262091 (= e!718435 (contains!7610 Nil!28396 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1262092 () Bool)

(declare-fun e!718436 () Bool)

(assert (=> b!1262092 (= e!718436 e!718433)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1262092 (= c!122708 (validKeyInArray!0 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1262093 () Bool)

(declare-fun e!718434 () Bool)

(assert (=> b!1262093 (= e!718434 e!718436)))

(declare-fun res!840961 () Bool)

(assert (=> b!1262093 (=> (not res!840961) (not e!718436))))

(assert (=> b!1262093 (= res!840961 (not e!718435))))

(declare-fun res!840959 () Bool)

(assert (=> b!1262093 (=> (not res!840959) (not e!718435))))

(assert (=> b!1262093 (= res!840959 (validKeyInArray!0 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!138431 () Bool)

(declare-fun res!840960 () Bool)

(assert (=> d!138431 (=> res!840960 e!718434)))

(assert (=> d!138431 (= res!840960 (bvsge #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(assert (=> d!138431 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28396) e!718434)))

(assert (= (and d!138431 (not res!840960)) b!1262093))

(assert (= (and b!1262093 res!840959) b!1262091))

(assert (= (and b!1262093 res!840961) b!1262092))

(assert (= (and b!1262092 c!122708) b!1262089))

(assert (= (and b!1262092 (not c!122708)) b!1262090))

(assert (= (or b!1262089 b!1262090) bm!62031))

(declare-fun m!1162669 () Bool)

(assert (=> bm!62031 m!1162669))

(declare-fun m!1162671 () Bool)

(assert (=> bm!62031 m!1162671))

(assert (=> b!1262091 m!1162669))

(assert (=> b!1262091 m!1162669))

(declare-fun m!1162673 () Bool)

(assert (=> b!1262091 m!1162673))

(assert (=> b!1262092 m!1162669))

(assert (=> b!1262092 m!1162669))

(declare-fun m!1162675 () Bool)

(assert (=> b!1262092 m!1162675))

(assert (=> b!1262093 m!1162669))

(assert (=> b!1262093 m!1162669))

(assert (=> b!1262093 m!1162675))

(assert (=> b!1262052 d!138431))

(declare-fun bm!62034 () Bool)

(declare-fun call!62037 () Bool)

(assert (=> bm!62034 (= call!62037 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun d!138433 () Bool)

(declare-fun res!840966 () Bool)

(declare-fun e!718443 () Bool)

(assert (=> d!138433 (=> res!840966 e!718443)))

(assert (=> d!138433 (= res!840966 (bvsge #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(assert (=> d!138433 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!718443)))

(declare-fun b!1262102 () Bool)

(declare-fun e!718445 () Bool)

(assert (=> b!1262102 (= e!718443 e!718445)))

(declare-fun c!122711 () Bool)

(assert (=> b!1262102 (= c!122711 (validKeyInArray!0 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1262103 () Bool)

(declare-fun e!718444 () Bool)

(assert (=> b!1262103 (= e!718444 call!62037)))

(declare-fun b!1262104 () Bool)

(assert (=> b!1262104 (= e!718445 e!718444)))

(declare-fun lt!572014 () (_ BitVec 64))

(assert (=> b!1262104 (= lt!572014 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572016 () Unit!42024)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!82349 (_ BitVec 64) (_ BitVec 32)) Unit!42024)

(assert (=> b!1262104 (= lt!572016 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!572014 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!82349 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1262104 (arrayContainsKey!0 _keys!1118 lt!572014 #b00000000000000000000000000000000)))

(declare-fun lt!572015 () Unit!42024)

(assert (=> b!1262104 (= lt!572015 lt!572016)))

(declare-fun res!840967 () Bool)

(declare-datatypes ((SeekEntryResult!9972 0))(
  ( (MissingZero!9972 (index!42258 (_ BitVec 32))) (Found!9972 (index!42259 (_ BitVec 32))) (Intermediate!9972 (undefined!10784 Bool) (index!42260 (_ BitVec 32)) (x!111221 (_ BitVec 32))) (Undefined!9972) (MissingVacant!9972 (index!42261 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!82349 (_ BitVec 32)) SeekEntryResult!9972)

(assert (=> b!1262104 (= res!840967 (= (seekEntryOrOpen!0 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9972 #b00000000000000000000000000000000)))))

(assert (=> b!1262104 (=> (not res!840967) (not e!718444))))

(declare-fun b!1262105 () Bool)

(assert (=> b!1262105 (= e!718445 call!62037)))

(assert (= (and d!138433 (not res!840966)) b!1262102))

(assert (= (and b!1262102 c!122711) b!1262104))

(assert (= (and b!1262102 (not c!122711)) b!1262105))

(assert (= (and b!1262104 res!840967) b!1262103))

(assert (= (or b!1262103 b!1262105) bm!62034))

(declare-fun m!1162677 () Bool)

(assert (=> bm!62034 m!1162677))

(assert (=> b!1262102 m!1162669))

(assert (=> b!1262102 m!1162669))

(assert (=> b!1262102 m!1162675))

(assert (=> b!1262104 m!1162669))

(declare-fun m!1162679 () Bool)

(assert (=> b!1262104 m!1162679))

(declare-fun m!1162681 () Bool)

(assert (=> b!1262104 m!1162681))

(assert (=> b!1262104 m!1162669))

(declare-fun m!1162683 () Bool)

(assert (=> b!1262104 m!1162683))

(assert (=> b!1262048 d!138433))

(declare-fun d!138435 () Bool)

(assert (=> d!138435 (= (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572019 () Unit!42024)

(declare-fun choose!1880 (array!82349 array!82351 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48529 V!48529 V!48529 V!48529 (_ BitVec 32) Int) Unit!42024)

(assert (=> d!138435 (= lt!572019 (choose!1880 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!138435 (validMask!0 mask!1466)))

(assert (=> d!138435 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1183 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572019)))

(declare-fun bs!35715 () Bool)

(assert (= bs!35715 d!138435))

(assert (=> bs!35715 m!1162639))

(assert (=> bs!35715 m!1162637))

(declare-fun m!1162685 () Bool)

(assert (=> bs!35715 m!1162685))

(assert (=> bs!35715 m!1162629))

(assert (=> b!1262051 d!138435))

(declare-fun b!1262130 () Bool)

(declare-fun e!718463 () ListLongMap!19061)

(declare-fun e!718464 () ListLongMap!19061)

(assert (=> b!1262130 (= e!718463 e!718464)))

(declare-fun c!122720 () Bool)

(assert (=> b!1262130 (= c!122720 (validKeyInArray!0 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!138437 () Bool)

(declare-fun e!718465 () Bool)

(assert (=> d!138437 e!718465))

(declare-fun res!840978 () Bool)

(assert (=> d!138437 (=> (not res!840978) (not e!718465))))

(declare-fun lt!572035 () ListLongMap!19061)

(declare-fun contains!7611 (ListLongMap!19061 (_ BitVec 64)) Bool)

(assert (=> d!138437 (= res!840978 (not (contains!7611 lt!572035 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138437 (= lt!572035 e!718463)))

(declare-fun c!122721 () Bool)

(assert (=> d!138437 (= c!122721 (bvsge #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(assert (=> d!138437 (validMask!0 mask!1466)))

(assert (=> d!138437 (= (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572035)))

(declare-fun b!1262131 () Bool)

(declare-fun e!718461 () Bool)

(declare-fun e!718462 () Bool)

(assert (=> b!1262131 (= e!718461 e!718462)))

(declare-fun c!122723 () Bool)

(assert (=> b!1262131 (= c!122723 (bvslt #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(declare-fun b!1262132 () Bool)

(assert (=> b!1262132 (= e!718465 e!718461)))

(declare-fun c!122722 () Bool)

(declare-fun e!718460 () Bool)

(assert (=> b!1262132 (= c!122722 e!718460)))

(declare-fun res!840977 () Bool)

(assert (=> b!1262132 (=> (not res!840977) (not e!718460))))

(assert (=> b!1262132 (= res!840977 (bvslt #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(declare-fun b!1262133 () Bool)

(declare-fun call!62040 () ListLongMap!19061)

(assert (=> b!1262133 (= e!718464 call!62040)))

(declare-fun b!1262134 () Bool)

(declare-fun res!840976 () Bool)

(assert (=> b!1262134 (=> (not res!840976) (not e!718465))))

(assert (=> b!1262134 (= res!840976 (not (contains!7611 lt!572035 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1262135 () Bool)

(declare-fun e!718466 () Bool)

(assert (=> b!1262135 (= e!718461 e!718466)))

(assert (=> b!1262135 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(declare-fun res!840979 () Bool)

(assert (=> b!1262135 (= res!840979 (contains!7611 lt!572035 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1262135 (=> (not res!840979) (not e!718466))))

(declare-fun b!1262136 () Bool)

(assert (=> b!1262136 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(assert (=> b!1262136 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40258 _values!914)))))

(declare-fun apply!1032 (ListLongMap!19061 (_ BitVec 64)) V!48529)

(declare-fun get!20312 (ValueCell!15423 V!48529) V!48529)

(declare-fun dynLambda!3477 (Int (_ BitVec 64)) V!48529)

(assert (=> b!1262136 (= e!718466 (= (apply!1032 lt!572035 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)) (get!20312 (select (arr!39721 _values!914) #b00000000000000000000000000000000) (dynLambda!3477 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1262137 () Bool)

(declare-fun isEmpty!1042 (ListLongMap!19061) Bool)

(assert (=> b!1262137 (= e!718462 (isEmpty!1042 lt!572035))))

(declare-fun bm!62037 () Bool)

(assert (=> bm!62037 (= call!62040 (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1262138 () Bool)

(assert (=> b!1262138 (= e!718460 (validKeyInArray!0 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1262138 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1262139 () Bool)

(assert (=> b!1262139 (= e!718463 (ListLongMap!19062 Nil!28395))))

(declare-fun b!1262140 () Bool)

(assert (=> b!1262140 (= e!718462 (= lt!572035 (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1262141 () Bool)

(declare-fun lt!572037 () Unit!42024)

(declare-fun lt!572040 () Unit!42024)

(assert (=> b!1262141 (= lt!572037 lt!572040)))

(declare-fun lt!572034 () V!48529)

(declare-fun lt!572038 () ListLongMap!19061)

(declare-fun lt!572036 () (_ BitVec 64))

(declare-fun lt!572039 () (_ BitVec 64))

(assert (=> b!1262141 (not (contains!7611 (+!4215 lt!572038 (tuple2!21177 lt!572036 lt!572034)) lt!572039))))

(declare-fun addStillNotContains!327 (ListLongMap!19061 (_ BitVec 64) V!48529 (_ BitVec 64)) Unit!42024)

(assert (=> b!1262141 (= lt!572040 (addStillNotContains!327 lt!572038 lt!572036 lt!572034 lt!572039))))

(assert (=> b!1262141 (= lt!572039 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1262141 (= lt!572034 (get!20312 (select (arr!39721 _values!914) #b00000000000000000000000000000000) (dynLambda!3477 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1262141 (= lt!572036 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1262141 (= lt!572038 call!62040)))

(assert (=> b!1262141 (= e!718464 (+!4215 call!62040 (tuple2!21177 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000) (get!20312 (select (arr!39721 _values!914) #b00000000000000000000000000000000) (dynLambda!3477 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!138437 c!122721) b!1262139))

(assert (= (and d!138437 (not c!122721)) b!1262130))

(assert (= (and b!1262130 c!122720) b!1262141))

(assert (= (and b!1262130 (not c!122720)) b!1262133))

(assert (= (or b!1262141 b!1262133) bm!62037))

(assert (= (and d!138437 res!840978) b!1262134))

(assert (= (and b!1262134 res!840976) b!1262132))

(assert (= (and b!1262132 res!840977) b!1262138))

(assert (= (and b!1262132 c!122722) b!1262135))

(assert (= (and b!1262132 (not c!122722)) b!1262131))

(assert (= (and b!1262135 res!840979) b!1262136))

(assert (= (and b!1262131 c!122723) b!1262140))

(assert (= (and b!1262131 (not c!122723)) b!1262137))

(declare-fun b_lambda!22861 () Bool)

(assert (=> (not b_lambda!22861) (not b!1262136)))

(declare-fun t!41913 () Bool)

(declare-fun tb!11329 () Bool)

(assert (=> (and start!106018 (= defaultEntry!922 defaultEntry!922) t!41913) tb!11329))

(declare-fun result!23379 () Bool)

(assert (=> tb!11329 (= result!23379 tp_is_empty!32373)))

(assert (=> b!1262136 t!41913))

(declare-fun b_and!45423 () Bool)

(assert (= b_and!45419 (and (=> t!41913 result!23379) b_and!45423)))

(declare-fun b_lambda!22863 () Bool)

(assert (=> (not b_lambda!22863) (not b!1262141)))

(assert (=> b!1262141 t!41913))

(declare-fun b_and!45425 () Bool)

(assert (= b_and!45423 (and (=> t!41913 result!23379) b_and!45425)))

(declare-fun m!1162687 () Bool)

(assert (=> d!138437 m!1162687))

(assert (=> d!138437 m!1162629))

(assert (=> b!1262135 m!1162669))

(assert (=> b!1262135 m!1162669))

(declare-fun m!1162689 () Bool)

(assert (=> b!1262135 m!1162689))

(assert (=> b!1262138 m!1162669))

(assert (=> b!1262138 m!1162669))

(assert (=> b!1262138 m!1162675))

(declare-fun m!1162691 () Bool)

(assert (=> b!1262141 m!1162691))

(declare-fun m!1162693 () Bool)

(assert (=> b!1262141 m!1162693))

(declare-fun m!1162695 () Bool)

(assert (=> b!1262141 m!1162695))

(assert (=> b!1262141 m!1162669))

(declare-fun m!1162697 () Bool)

(assert (=> b!1262141 m!1162697))

(assert (=> b!1262141 m!1162695))

(declare-fun m!1162699 () Bool)

(assert (=> b!1262141 m!1162699))

(declare-fun m!1162701 () Bool)

(assert (=> b!1262141 m!1162701))

(assert (=> b!1262141 m!1162691))

(assert (=> b!1262141 m!1162701))

(declare-fun m!1162703 () Bool)

(assert (=> b!1262141 m!1162703))

(declare-fun m!1162705 () Bool)

(assert (=> b!1262137 m!1162705))

(assert (=> b!1262130 m!1162669))

(assert (=> b!1262130 m!1162669))

(assert (=> b!1262130 m!1162675))

(assert (=> b!1262136 m!1162691))

(assert (=> b!1262136 m!1162669))

(assert (=> b!1262136 m!1162669))

(declare-fun m!1162707 () Bool)

(assert (=> b!1262136 m!1162707))

(assert (=> b!1262136 m!1162701))

(assert (=> b!1262136 m!1162691))

(assert (=> b!1262136 m!1162701))

(assert (=> b!1262136 m!1162703))

(declare-fun m!1162709 () Bool)

(assert (=> b!1262134 m!1162709))

(declare-fun m!1162711 () Bool)

(assert (=> bm!62037 m!1162711))

(assert (=> b!1262140 m!1162711))

(assert (=> b!1262051 d!138437))

(declare-fun b!1262144 () Bool)

(declare-fun e!718470 () ListLongMap!19061)

(declare-fun e!718471 () ListLongMap!19061)

(assert (=> b!1262144 (= e!718470 e!718471)))

(declare-fun c!122724 () Bool)

(assert (=> b!1262144 (= c!122724 (validKeyInArray!0 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!138439 () Bool)

(declare-fun e!718472 () Bool)

(assert (=> d!138439 e!718472))

(declare-fun res!840982 () Bool)

(assert (=> d!138439 (=> (not res!840982) (not e!718472))))

(declare-fun lt!572042 () ListLongMap!19061)

(assert (=> d!138439 (= res!840982 (not (contains!7611 lt!572042 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138439 (= lt!572042 e!718470)))

(declare-fun c!122725 () Bool)

(assert (=> d!138439 (= c!122725 (bvsge #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(assert (=> d!138439 (validMask!0 mask!1466)))

(assert (=> d!138439 (= (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572042)))

(declare-fun b!1262145 () Bool)

(declare-fun e!718468 () Bool)

(declare-fun e!718469 () Bool)

(assert (=> b!1262145 (= e!718468 e!718469)))

(declare-fun c!122727 () Bool)

(assert (=> b!1262145 (= c!122727 (bvslt #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(declare-fun b!1262146 () Bool)

(assert (=> b!1262146 (= e!718472 e!718468)))

(declare-fun c!122726 () Bool)

(declare-fun e!718467 () Bool)

(assert (=> b!1262146 (= c!122726 e!718467)))

(declare-fun res!840981 () Bool)

(assert (=> b!1262146 (=> (not res!840981) (not e!718467))))

(assert (=> b!1262146 (= res!840981 (bvslt #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(declare-fun b!1262147 () Bool)

(declare-fun call!62041 () ListLongMap!19061)

(assert (=> b!1262147 (= e!718471 call!62041)))

(declare-fun b!1262148 () Bool)

(declare-fun res!840980 () Bool)

(assert (=> b!1262148 (=> (not res!840980) (not e!718472))))

(assert (=> b!1262148 (= res!840980 (not (contains!7611 lt!572042 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1262149 () Bool)

(declare-fun e!718473 () Bool)

(assert (=> b!1262149 (= e!718468 e!718473)))

(assert (=> b!1262149 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(declare-fun res!840983 () Bool)

(assert (=> b!1262149 (= res!840983 (contains!7611 lt!572042 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1262149 (=> (not res!840983) (not e!718473))))

(declare-fun b!1262150 () Bool)

(assert (=> b!1262150 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(assert (=> b!1262150 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40258 _values!914)))))

(assert (=> b!1262150 (= e!718473 (= (apply!1032 lt!572042 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)) (get!20312 (select (arr!39721 _values!914) #b00000000000000000000000000000000) (dynLambda!3477 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1262151 () Bool)

(assert (=> b!1262151 (= e!718469 (isEmpty!1042 lt!572042))))

(declare-fun bm!62038 () Bool)

(assert (=> bm!62038 (= call!62041 (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1262152 () Bool)

(assert (=> b!1262152 (= e!718467 (validKeyInArray!0 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1262152 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1262153 () Bool)

(assert (=> b!1262153 (= e!718470 (ListLongMap!19062 Nil!28395))))

(declare-fun b!1262154 () Bool)

(assert (=> b!1262154 (= e!718469 (= lt!572042 (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1262155 () Bool)

(declare-fun lt!572044 () Unit!42024)

(declare-fun lt!572047 () Unit!42024)

(assert (=> b!1262155 (= lt!572044 lt!572047)))

(declare-fun lt!572041 () V!48529)

(declare-fun lt!572046 () (_ BitVec 64))

(declare-fun lt!572045 () ListLongMap!19061)

(declare-fun lt!572043 () (_ BitVec 64))

(assert (=> b!1262155 (not (contains!7611 (+!4215 lt!572045 (tuple2!21177 lt!572043 lt!572041)) lt!572046))))

(assert (=> b!1262155 (= lt!572047 (addStillNotContains!327 lt!572045 lt!572043 lt!572041 lt!572046))))

(assert (=> b!1262155 (= lt!572046 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1262155 (= lt!572041 (get!20312 (select (arr!39721 _values!914) #b00000000000000000000000000000000) (dynLambda!3477 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1262155 (= lt!572043 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1262155 (= lt!572045 call!62041)))

(assert (=> b!1262155 (= e!718471 (+!4215 call!62041 (tuple2!21177 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000) (get!20312 (select (arr!39721 _values!914) #b00000000000000000000000000000000) (dynLambda!3477 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!138439 c!122725) b!1262153))

(assert (= (and d!138439 (not c!122725)) b!1262144))

(assert (= (and b!1262144 c!122724) b!1262155))

(assert (= (and b!1262144 (not c!122724)) b!1262147))

(assert (= (or b!1262155 b!1262147) bm!62038))

(assert (= (and d!138439 res!840982) b!1262148))

(assert (= (and b!1262148 res!840980) b!1262146))

(assert (= (and b!1262146 res!840981) b!1262152))

(assert (= (and b!1262146 c!122726) b!1262149))

(assert (= (and b!1262146 (not c!122726)) b!1262145))

(assert (= (and b!1262149 res!840983) b!1262150))

(assert (= (and b!1262145 c!122727) b!1262154))

(assert (= (and b!1262145 (not c!122727)) b!1262151))

(declare-fun b_lambda!22865 () Bool)

(assert (=> (not b_lambda!22865) (not b!1262150)))

(assert (=> b!1262150 t!41913))

(declare-fun b_and!45427 () Bool)

(assert (= b_and!45425 (and (=> t!41913 result!23379) b_and!45427)))

(declare-fun b_lambda!22867 () Bool)

(assert (=> (not b_lambda!22867) (not b!1262155)))

(assert (=> b!1262155 t!41913))

(declare-fun b_and!45429 () Bool)

(assert (= b_and!45427 (and (=> t!41913 result!23379) b_and!45429)))

(declare-fun m!1162713 () Bool)

(assert (=> d!138439 m!1162713))

(assert (=> d!138439 m!1162629))

(assert (=> b!1262149 m!1162669))

(assert (=> b!1262149 m!1162669))

(declare-fun m!1162715 () Bool)

(assert (=> b!1262149 m!1162715))

(assert (=> b!1262152 m!1162669))

(assert (=> b!1262152 m!1162669))

(assert (=> b!1262152 m!1162675))

(assert (=> b!1262155 m!1162691))

(declare-fun m!1162717 () Bool)

(assert (=> b!1262155 m!1162717))

(declare-fun m!1162719 () Bool)

(assert (=> b!1262155 m!1162719))

(assert (=> b!1262155 m!1162669))

(declare-fun m!1162721 () Bool)

(assert (=> b!1262155 m!1162721))

(assert (=> b!1262155 m!1162719))

(declare-fun m!1162723 () Bool)

(assert (=> b!1262155 m!1162723))

(assert (=> b!1262155 m!1162701))

(assert (=> b!1262155 m!1162691))

(assert (=> b!1262155 m!1162701))

(assert (=> b!1262155 m!1162703))

(declare-fun m!1162725 () Bool)

(assert (=> b!1262151 m!1162725))

(assert (=> b!1262144 m!1162669))

(assert (=> b!1262144 m!1162669))

(assert (=> b!1262144 m!1162675))

(assert (=> b!1262150 m!1162691))

(assert (=> b!1262150 m!1162669))

(assert (=> b!1262150 m!1162669))

(declare-fun m!1162727 () Bool)

(assert (=> b!1262150 m!1162727))

(assert (=> b!1262150 m!1162701))

(assert (=> b!1262150 m!1162691))

(assert (=> b!1262150 m!1162701))

(assert (=> b!1262150 m!1162703))

(declare-fun m!1162729 () Bool)

(assert (=> b!1262148 m!1162729))

(declare-fun m!1162731 () Bool)

(assert (=> bm!62038 m!1162731))

(assert (=> b!1262154 m!1162731))

(assert (=> b!1262051 d!138439))

(declare-fun d!138441 () Bool)

(assert (=> d!138441 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!106018 d!138441))

(declare-fun d!138443 () Bool)

(assert (=> d!138443 (= (array_inv!30187 _keys!1118) (bvsge (size!40257 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!106018 d!138443))

(declare-fun d!138445 () Bool)

(assert (=> d!138445 (= (array_inv!30188 _values!914) (bvsge (size!40258 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!106018 d!138445))

(declare-fun bm!62053 () Bool)

(declare-fun call!62058 () ListLongMap!19061)

(declare-fun call!62061 () ListLongMap!19061)

(assert (=> bm!62053 (= call!62058 call!62061)))

(declare-fun b!1262198 () Bool)

(declare-fun e!718512 () ListLongMap!19061)

(assert (=> b!1262198 (= e!718512 (+!4215 call!62061 (tuple2!21177 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun d!138447 () Bool)

(declare-fun e!718510 () Bool)

(assert (=> d!138447 e!718510))

(declare-fun res!841009 () Bool)

(assert (=> d!138447 (=> (not res!841009) (not e!718510))))

(assert (=> d!138447 (= res!841009 (or (bvsge #b00000000000000000000000000000000 (size!40257 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40257 _keys!1118)))))))

(declare-fun lt!572100 () ListLongMap!19061)

(declare-fun lt!572093 () ListLongMap!19061)

(assert (=> d!138447 (= lt!572100 lt!572093)))

(declare-fun lt!572096 () Unit!42024)

(declare-fun e!718506 () Unit!42024)

(assert (=> d!138447 (= lt!572096 e!718506)))

(declare-fun c!122743 () Bool)

(declare-fun e!718503 () Bool)

(assert (=> d!138447 (= c!122743 e!718503)))

(declare-fun res!841006 () Bool)

(assert (=> d!138447 (=> (not res!841006) (not e!718503))))

(assert (=> d!138447 (= res!841006 (bvslt #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(assert (=> d!138447 (= lt!572093 e!718512)))

(declare-fun c!122745 () Bool)

(assert (=> d!138447 (= c!122745 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138447 (validMask!0 mask!1466)))

(assert (=> d!138447 (= (getCurrentListMap!4651 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572100)))

(declare-fun b!1262199 () Bool)

(declare-fun e!718509 () Bool)

(assert (=> b!1262199 (= e!718509 (= (apply!1032 lt!572100 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(declare-fun b!1262200 () Bool)

(assert (=> b!1262200 (= e!718503 (validKeyInArray!0 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!62054 () Bool)

(declare-fun call!62057 () ListLongMap!19061)

(declare-fun call!62059 () ListLongMap!19061)

(assert (=> bm!62054 (= call!62057 call!62059)))

(declare-fun b!1262201 () Bool)

(declare-fun e!718502 () ListLongMap!19061)

(assert (=> b!1262201 (= e!718502 call!62058)))

(declare-fun b!1262202 () Bool)

(declare-fun e!718507 () ListLongMap!19061)

(assert (=> b!1262202 (= e!718507 call!62057)))

(declare-fun b!1262203 () Bool)

(declare-fun e!718511 () Bool)

(declare-fun e!718505 () Bool)

(assert (=> b!1262203 (= e!718511 e!718505)))

(declare-fun res!841004 () Bool)

(declare-fun call!62062 () Bool)

(assert (=> b!1262203 (= res!841004 call!62062)))

(assert (=> b!1262203 (=> (not res!841004) (not e!718505))))

(declare-fun call!62060 () ListLongMap!19061)

(declare-fun bm!62055 () Bool)

(declare-fun c!122740 () Bool)

(assert (=> bm!62055 (= call!62061 (+!4215 (ite c!122745 call!62060 (ite c!122740 call!62059 call!62057)) (ite (or c!122745 c!122740) (tuple2!21177 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21177 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun b!1262204 () Bool)

(declare-fun res!841010 () Bool)

(assert (=> b!1262204 (=> (not res!841010) (not e!718510))))

(declare-fun e!718500 () Bool)

(assert (=> b!1262204 (= res!841010 e!718500)))

(declare-fun res!841002 () Bool)

(assert (=> b!1262204 (=> res!841002 e!718500)))

(declare-fun e!718508 () Bool)

(assert (=> b!1262204 (= res!841002 (not e!718508))))

(declare-fun res!841005 () Bool)

(assert (=> b!1262204 (=> (not res!841005) (not e!718508))))

(assert (=> b!1262204 (= res!841005 (bvslt #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(declare-fun b!1262205 () Bool)

(declare-fun Unit!42026 () Unit!42024)

(assert (=> b!1262205 (= e!718506 Unit!42026)))

(declare-fun b!1262206 () Bool)

(assert (=> b!1262206 (= e!718512 e!718502)))

(assert (=> b!1262206 (= c!122740 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!62056 () Bool)

(declare-fun call!62056 () Bool)

(assert (=> bm!62056 (= call!62056 (contains!7611 lt!572100 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1262207 () Bool)

(assert (=> b!1262207 (= e!718511 (not call!62062))))

(declare-fun b!1262208 () Bool)

(declare-fun res!841003 () Bool)

(assert (=> b!1262208 (=> (not res!841003) (not e!718510))))

(assert (=> b!1262208 (= res!841003 e!718511)))

(declare-fun c!122741 () Bool)

(assert (=> b!1262208 (= c!122741 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1262209 () Bool)

(declare-fun e!718504 () Bool)

(assert (=> b!1262209 (= e!718500 e!718504)))

(declare-fun res!841007 () Bool)

(assert (=> b!1262209 (=> (not res!841007) (not e!718504))))

(assert (=> b!1262209 (= res!841007 (contains!7611 lt!572100 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1262209 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(declare-fun b!1262210 () Bool)

(declare-fun c!122742 () Bool)

(assert (=> b!1262210 (= c!122742 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1262210 (= e!718502 e!718507)))

(declare-fun bm!62057 () Bool)

(assert (=> bm!62057 (= call!62060 (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1262211 () Bool)

(declare-fun e!718501 () Bool)

(assert (=> b!1262211 (= e!718501 (not call!62056))))

(declare-fun b!1262212 () Bool)

(assert (=> b!1262212 (= e!718507 call!62058)))

(declare-fun b!1262213 () Bool)

(assert (=> b!1262213 (= e!718510 e!718501)))

(declare-fun c!122744 () Bool)

(assert (=> b!1262213 (= c!122744 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!62058 () Bool)

(assert (=> bm!62058 (= call!62062 (contains!7611 lt!572100 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1262214 () Bool)

(assert (=> b!1262214 (= e!718508 (validKeyInArray!0 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!62059 () Bool)

(assert (=> bm!62059 (= call!62059 call!62060)))

(declare-fun b!1262215 () Bool)

(assert (=> b!1262215 (= e!718504 (= (apply!1032 lt!572100 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)) (get!20312 (select (arr!39721 _values!914) #b00000000000000000000000000000000) (dynLambda!3477 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1262215 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40258 _values!914)))))

(assert (=> b!1262215 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(declare-fun b!1262216 () Bool)

(assert (=> b!1262216 (= e!718505 (= (apply!1032 lt!572100 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1262217 () Bool)

(declare-fun lt!572111 () Unit!42024)

(assert (=> b!1262217 (= e!718506 lt!572111)))

(declare-fun lt!572113 () ListLongMap!19061)

(assert (=> b!1262217 (= lt!572113 (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572112 () (_ BitVec 64))

(assert (=> b!1262217 (= lt!572112 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572103 () (_ BitVec 64))

(assert (=> b!1262217 (= lt!572103 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572104 () Unit!42024)

(declare-fun addStillContains!1103 (ListLongMap!19061 (_ BitVec 64) V!48529 (_ BitVec 64)) Unit!42024)

(assert (=> b!1262217 (= lt!572104 (addStillContains!1103 lt!572113 lt!572112 zeroValue!871 lt!572103))))

(assert (=> b!1262217 (contains!7611 (+!4215 lt!572113 (tuple2!21177 lt!572112 zeroValue!871)) lt!572103)))

(declare-fun lt!572094 () Unit!42024)

(assert (=> b!1262217 (= lt!572094 lt!572104)))

(declare-fun lt!572109 () ListLongMap!19061)

(assert (=> b!1262217 (= lt!572109 (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572106 () (_ BitVec 64))

(assert (=> b!1262217 (= lt!572106 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572105 () (_ BitVec 64))

(assert (=> b!1262217 (= lt!572105 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572102 () Unit!42024)

(declare-fun addApplyDifferent!537 (ListLongMap!19061 (_ BitVec 64) V!48529 (_ BitVec 64)) Unit!42024)

(assert (=> b!1262217 (= lt!572102 (addApplyDifferent!537 lt!572109 lt!572106 minValueBefore!43 lt!572105))))

(assert (=> b!1262217 (= (apply!1032 (+!4215 lt!572109 (tuple2!21177 lt!572106 minValueBefore!43)) lt!572105) (apply!1032 lt!572109 lt!572105))))

(declare-fun lt!572107 () Unit!42024)

(assert (=> b!1262217 (= lt!572107 lt!572102)))

(declare-fun lt!572099 () ListLongMap!19061)

(assert (=> b!1262217 (= lt!572099 (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572101 () (_ BitVec 64))

(assert (=> b!1262217 (= lt!572101 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572108 () (_ BitVec 64))

(assert (=> b!1262217 (= lt!572108 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572092 () Unit!42024)

(assert (=> b!1262217 (= lt!572092 (addApplyDifferent!537 lt!572099 lt!572101 zeroValue!871 lt!572108))))

(assert (=> b!1262217 (= (apply!1032 (+!4215 lt!572099 (tuple2!21177 lt!572101 zeroValue!871)) lt!572108) (apply!1032 lt!572099 lt!572108))))

(declare-fun lt!572098 () Unit!42024)

(assert (=> b!1262217 (= lt!572098 lt!572092)))

(declare-fun lt!572110 () ListLongMap!19061)

(assert (=> b!1262217 (= lt!572110 (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572095 () (_ BitVec 64))

(assert (=> b!1262217 (= lt!572095 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572097 () (_ BitVec 64))

(assert (=> b!1262217 (= lt!572097 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1262217 (= lt!572111 (addApplyDifferent!537 lt!572110 lt!572095 minValueBefore!43 lt!572097))))

(assert (=> b!1262217 (= (apply!1032 (+!4215 lt!572110 (tuple2!21177 lt!572095 minValueBefore!43)) lt!572097) (apply!1032 lt!572110 lt!572097))))

(declare-fun b!1262218 () Bool)

(assert (=> b!1262218 (= e!718501 e!718509)))

(declare-fun res!841008 () Bool)

(assert (=> b!1262218 (= res!841008 call!62056)))

(assert (=> b!1262218 (=> (not res!841008) (not e!718509))))

(assert (= (and d!138447 c!122745) b!1262198))

(assert (= (and d!138447 (not c!122745)) b!1262206))

(assert (= (and b!1262206 c!122740) b!1262201))

(assert (= (and b!1262206 (not c!122740)) b!1262210))

(assert (= (and b!1262210 c!122742) b!1262212))

(assert (= (and b!1262210 (not c!122742)) b!1262202))

(assert (= (or b!1262212 b!1262202) bm!62054))

(assert (= (or b!1262201 bm!62054) bm!62059))

(assert (= (or b!1262201 b!1262212) bm!62053))

(assert (= (or b!1262198 bm!62059) bm!62057))

(assert (= (or b!1262198 bm!62053) bm!62055))

(assert (= (and d!138447 res!841006) b!1262200))

(assert (= (and d!138447 c!122743) b!1262217))

(assert (= (and d!138447 (not c!122743)) b!1262205))

(assert (= (and d!138447 res!841009) b!1262204))

(assert (= (and b!1262204 res!841005) b!1262214))

(assert (= (and b!1262204 (not res!841002)) b!1262209))

(assert (= (and b!1262209 res!841007) b!1262215))

(assert (= (and b!1262204 res!841010) b!1262208))

(assert (= (and b!1262208 c!122741) b!1262203))

(assert (= (and b!1262208 (not c!122741)) b!1262207))

(assert (= (and b!1262203 res!841004) b!1262216))

(assert (= (or b!1262203 b!1262207) bm!62058))

(assert (= (and b!1262208 res!841003) b!1262213))

(assert (= (and b!1262213 c!122744) b!1262218))

(assert (= (and b!1262213 (not c!122744)) b!1262211))

(assert (= (and b!1262218 res!841008) b!1262199))

(assert (= (or b!1262218 b!1262211) bm!62056))

(declare-fun b_lambda!22869 () Bool)

(assert (=> (not b_lambda!22869) (not b!1262215)))

(assert (=> b!1262215 t!41913))

(declare-fun b_and!45431 () Bool)

(assert (= b_and!45429 (and (=> t!41913 result!23379) b_and!45431)))

(assert (=> b!1262200 m!1162669))

(assert (=> b!1262200 m!1162669))

(assert (=> b!1262200 m!1162675))

(declare-fun m!1162733 () Bool)

(assert (=> bm!62055 m!1162733))

(declare-fun m!1162735 () Bool)

(assert (=> bm!62058 m!1162735))

(assert (=> b!1262214 m!1162669))

(assert (=> b!1262214 m!1162669))

(assert (=> b!1262214 m!1162675))

(assert (=> b!1262215 m!1162691))

(assert (=> b!1262215 m!1162691))

(assert (=> b!1262215 m!1162701))

(assert (=> b!1262215 m!1162703))

(assert (=> b!1262215 m!1162669))

(assert (=> b!1262215 m!1162669))

(declare-fun m!1162737 () Bool)

(assert (=> b!1262215 m!1162737))

(assert (=> b!1262215 m!1162701))

(declare-fun m!1162739 () Bool)

(assert (=> b!1262216 m!1162739))

(declare-fun m!1162741 () Bool)

(assert (=> bm!62056 m!1162741))

(declare-fun m!1162743 () Bool)

(assert (=> b!1262199 m!1162743))

(assert (=> b!1262209 m!1162669))

(assert (=> b!1262209 m!1162669))

(declare-fun m!1162745 () Bool)

(assert (=> b!1262209 m!1162745))

(assert (=> bm!62057 m!1162639))

(assert (=> d!138447 m!1162629))

(declare-fun m!1162747 () Bool)

(assert (=> b!1262217 m!1162747))

(declare-fun m!1162749 () Bool)

(assert (=> b!1262217 m!1162749))

(assert (=> b!1262217 m!1162669))

(declare-fun m!1162751 () Bool)

(assert (=> b!1262217 m!1162751))

(assert (=> b!1262217 m!1162751))

(declare-fun m!1162753 () Bool)

(assert (=> b!1262217 m!1162753))

(declare-fun m!1162755 () Bool)

(assert (=> b!1262217 m!1162755))

(declare-fun m!1162757 () Bool)

(assert (=> b!1262217 m!1162757))

(declare-fun m!1162759 () Bool)

(assert (=> b!1262217 m!1162759))

(declare-fun m!1162761 () Bool)

(assert (=> b!1262217 m!1162761))

(assert (=> b!1262217 m!1162747))

(declare-fun m!1162763 () Bool)

(assert (=> b!1262217 m!1162763))

(declare-fun m!1162765 () Bool)

(assert (=> b!1262217 m!1162765))

(declare-fun m!1162767 () Bool)

(assert (=> b!1262217 m!1162767))

(declare-fun m!1162769 () Bool)

(assert (=> b!1262217 m!1162769))

(declare-fun m!1162771 () Bool)

(assert (=> b!1262217 m!1162771))

(assert (=> b!1262217 m!1162639))

(assert (=> b!1262217 m!1162761))

(declare-fun m!1162773 () Bool)

(assert (=> b!1262217 m!1162773))

(assert (=> b!1262217 m!1162769))

(declare-fun m!1162775 () Bool)

(assert (=> b!1262217 m!1162775))

(declare-fun m!1162777 () Bool)

(assert (=> b!1262198 m!1162777))

(assert (=> b!1262049 d!138447))

(declare-fun d!138449 () Bool)

(declare-fun e!718515 () Bool)

(assert (=> d!138449 e!718515))

(declare-fun res!841016 () Bool)

(assert (=> d!138449 (=> (not res!841016) (not e!718515))))

(declare-fun lt!572125 () ListLongMap!19061)

(assert (=> d!138449 (= res!841016 (contains!7611 lt!572125 (_1!10598 (tuple2!21177 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lt!572124 () List!28398)

(assert (=> d!138449 (= lt!572125 (ListLongMap!19062 lt!572124))))

(declare-fun lt!572122 () Unit!42024)

(declare-fun lt!572123 () Unit!42024)

(assert (=> d!138449 (= lt!572122 lt!572123)))

(declare-datatypes ((Option!716 0))(
  ( (Some!715 (v!18957 V!48529)) (None!714) )
))
(declare-fun getValueByKey!665 (List!28398 (_ BitVec 64)) Option!716)

(assert (=> d!138449 (= (getValueByKey!665 lt!572124 (_1!10598 (tuple2!21177 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!715 (_2!10598 (tuple2!21177 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lemmaContainsTupThenGetReturnValue!334 (List!28398 (_ BitVec 64) V!48529) Unit!42024)

(assert (=> d!138449 (= lt!572123 (lemmaContainsTupThenGetReturnValue!334 lt!572124 (_1!10598 (tuple2!21177 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10598 (tuple2!21177 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun insertStrictlySorted!447 (List!28398 (_ BitVec 64) V!48529) List!28398)

(assert (=> d!138449 (= lt!572124 (insertStrictlySorted!447 (toList!9546 lt!571993) (_1!10598 (tuple2!21177 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10598 (tuple2!21177 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(assert (=> d!138449 (= (+!4215 lt!571993 (tuple2!21177 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) lt!572125)))

(declare-fun b!1262223 () Bool)

(declare-fun res!841015 () Bool)

(assert (=> b!1262223 (=> (not res!841015) (not e!718515))))

(assert (=> b!1262223 (= res!841015 (= (getValueByKey!665 (toList!9546 lt!572125) (_1!10598 (tuple2!21177 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!715 (_2!10598 (tuple2!21177 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))))

(declare-fun b!1262224 () Bool)

(declare-fun contains!7612 (List!28398 tuple2!21176) Bool)

(assert (=> b!1262224 (= e!718515 (contains!7612 (toList!9546 lt!572125) (tuple2!21177 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (= (and d!138449 res!841016) b!1262223))

(assert (= (and b!1262223 res!841015) b!1262224))

(declare-fun m!1162779 () Bool)

(assert (=> d!138449 m!1162779))

(declare-fun m!1162781 () Bool)

(assert (=> d!138449 m!1162781))

(declare-fun m!1162783 () Bool)

(assert (=> d!138449 m!1162783))

(declare-fun m!1162785 () Bool)

(assert (=> d!138449 m!1162785))

(declare-fun m!1162787 () Bool)

(assert (=> b!1262223 m!1162787))

(declare-fun m!1162789 () Bool)

(assert (=> b!1262224 m!1162789))

(assert (=> b!1262049 d!138449))

(declare-fun bm!62060 () Bool)

(declare-fun call!62065 () ListLongMap!19061)

(declare-fun call!62068 () ListLongMap!19061)

(assert (=> bm!62060 (= call!62065 call!62068)))

(declare-fun b!1262225 () Bool)

(declare-fun e!718528 () ListLongMap!19061)

(assert (=> b!1262225 (= e!718528 (+!4215 call!62068 (tuple2!21177 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43)))))

(declare-fun d!138451 () Bool)

(declare-fun e!718526 () Bool)

(assert (=> d!138451 e!718526))

(declare-fun res!841024 () Bool)

(assert (=> d!138451 (=> (not res!841024) (not e!718526))))

(assert (=> d!138451 (= res!841024 (or (bvsge #b00000000000000000000000000000000 (size!40257 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40257 _keys!1118)))))))

(declare-fun lt!572134 () ListLongMap!19061)

(declare-fun lt!572127 () ListLongMap!19061)

(assert (=> d!138451 (= lt!572134 lt!572127)))

(declare-fun lt!572130 () Unit!42024)

(declare-fun e!718522 () Unit!42024)

(assert (=> d!138451 (= lt!572130 e!718522)))

(declare-fun c!122749 () Bool)

(declare-fun e!718519 () Bool)

(assert (=> d!138451 (= c!122749 e!718519)))

(declare-fun res!841021 () Bool)

(assert (=> d!138451 (=> (not res!841021) (not e!718519))))

(assert (=> d!138451 (= res!841021 (bvslt #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(assert (=> d!138451 (= lt!572127 e!718528)))

(declare-fun c!122751 () Bool)

(assert (=> d!138451 (= c!122751 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138451 (validMask!0 mask!1466)))

(assert (=> d!138451 (= (getCurrentListMap!4651 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572134)))

(declare-fun b!1262226 () Bool)

(declare-fun e!718525 () Bool)

(assert (=> b!1262226 (= e!718525 (= (apply!1032 lt!572134 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!43))))

(declare-fun b!1262227 () Bool)

(assert (=> b!1262227 (= e!718519 (validKeyInArray!0 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!62061 () Bool)

(declare-fun call!62064 () ListLongMap!19061)

(declare-fun call!62066 () ListLongMap!19061)

(assert (=> bm!62061 (= call!62064 call!62066)))

(declare-fun b!1262228 () Bool)

(declare-fun e!718518 () ListLongMap!19061)

(assert (=> b!1262228 (= e!718518 call!62065)))

(declare-fun b!1262229 () Bool)

(declare-fun e!718523 () ListLongMap!19061)

(assert (=> b!1262229 (= e!718523 call!62064)))

(declare-fun b!1262230 () Bool)

(declare-fun e!718527 () Bool)

(declare-fun e!718521 () Bool)

(assert (=> b!1262230 (= e!718527 e!718521)))

(declare-fun res!841019 () Bool)

(declare-fun call!62069 () Bool)

(assert (=> b!1262230 (= res!841019 call!62069)))

(assert (=> b!1262230 (=> (not res!841019) (not e!718521))))

(declare-fun bm!62062 () Bool)

(declare-fun c!122746 () Bool)

(declare-fun call!62067 () ListLongMap!19061)

(assert (=> bm!62062 (= call!62068 (+!4215 (ite c!122751 call!62067 (ite c!122746 call!62066 call!62064)) (ite (or c!122751 c!122746) (tuple2!21177 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21177 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43))))))

(declare-fun b!1262231 () Bool)

(declare-fun res!841025 () Bool)

(assert (=> b!1262231 (=> (not res!841025) (not e!718526))))

(declare-fun e!718516 () Bool)

(assert (=> b!1262231 (= res!841025 e!718516)))

(declare-fun res!841017 () Bool)

(assert (=> b!1262231 (=> res!841017 e!718516)))

(declare-fun e!718524 () Bool)

(assert (=> b!1262231 (= res!841017 (not e!718524))))

(declare-fun res!841020 () Bool)

(assert (=> b!1262231 (=> (not res!841020) (not e!718524))))

(assert (=> b!1262231 (= res!841020 (bvslt #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(declare-fun b!1262232 () Bool)

(declare-fun Unit!42027 () Unit!42024)

(assert (=> b!1262232 (= e!718522 Unit!42027)))

(declare-fun b!1262233 () Bool)

(assert (=> b!1262233 (= e!718528 e!718518)))

(assert (=> b!1262233 (= c!122746 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!62063 () Bool)

(declare-fun call!62063 () Bool)

(assert (=> bm!62063 (= call!62063 (contains!7611 lt!572134 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1262234 () Bool)

(assert (=> b!1262234 (= e!718527 (not call!62069))))

(declare-fun b!1262235 () Bool)

(declare-fun res!841018 () Bool)

(assert (=> b!1262235 (=> (not res!841018) (not e!718526))))

(assert (=> b!1262235 (= res!841018 e!718527)))

(declare-fun c!122747 () Bool)

(assert (=> b!1262235 (= c!122747 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1262236 () Bool)

(declare-fun e!718520 () Bool)

(assert (=> b!1262236 (= e!718516 e!718520)))

(declare-fun res!841022 () Bool)

(assert (=> b!1262236 (=> (not res!841022) (not e!718520))))

(assert (=> b!1262236 (= res!841022 (contains!7611 lt!572134 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1262236 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(declare-fun b!1262237 () Bool)

(declare-fun c!122748 () Bool)

(assert (=> b!1262237 (= c!122748 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1262237 (= e!718518 e!718523)))

(declare-fun bm!62064 () Bool)

(assert (=> bm!62064 (= call!62067 (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1262238 () Bool)

(declare-fun e!718517 () Bool)

(assert (=> b!1262238 (= e!718517 (not call!62063))))

(declare-fun b!1262239 () Bool)

(assert (=> b!1262239 (= e!718523 call!62065)))

(declare-fun b!1262240 () Bool)

(assert (=> b!1262240 (= e!718526 e!718517)))

(declare-fun c!122750 () Bool)

(assert (=> b!1262240 (= c!122750 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!62065 () Bool)

(assert (=> bm!62065 (= call!62069 (contains!7611 lt!572134 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1262241 () Bool)

(assert (=> b!1262241 (= e!718524 (validKeyInArray!0 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!62066 () Bool)

(assert (=> bm!62066 (= call!62066 call!62067)))

(declare-fun b!1262242 () Bool)

(assert (=> b!1262242 (= e!718520 (= (apply!1032 lt!572134 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000)) (get!20312 (select (arr!39721 _values!914) #b00000000000000000000000000000000) (dynLambda!3477 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1262242 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40258 _values!914)))))

(assert (=> b!1262242 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40257 _keys!1118)))))

(declare-fun b!1262243 () Bool)

(assert (=> b!1262243 (= e!718521 (= (apply!1032 lt!572134 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1262244 () Bool)

(declare-fun lt!572145 () Unit!42024)

(assert (=> b!1262244 (= e!718522 lt!572145)))

(declare-fun lt!572147 () ListLongMap!19061)

(assert (=> b!1262244 (= lt!572147 (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572146 () (_ BitVec 64))

(assert (=> b!1262244 (= lt!572146 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572137 () (_ BitVec 64))

(assert (=> b!1262244 (= lt!572137 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572138 () Unit!42024)

(assert (=> b!1262244 (= lt!572138 (addStillContains!1103 lt!572147 lt!572146 zeroValue!871 lt!572137))))

(assert (=> b!1262244 (contains!7611 (+!4215 lt!572147 (tuple2!21177 lt!572146 zeroValue!871)) lt!572137)))

(declare-fun lt!572128 () Unit!42024)

(assert (=> b!1262244 (= lt!572128 lt!572138)))

(declare-fun lt!572143 () ListLongMap!19061)

(assert (=> b!1262244 (= lt!572143 (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572140 () (_ BitVec 64))

(assert (=> b!1262244 (= lt!572140 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572139 () (_ BitVec 64))

(assert (=> b!1262244 (= lt!572139 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572136 () Unit!42024)

(assert (=> b!1262244 (= lt!572136 (addApplyDifferent!537 lt!572143 lt!572140 minValueAfter!43 lt!572139))))

(assert (=> b!1262244 (= (apply!1032 (+!4215 lt!572143 (tuple2!21177 lt!572140 minValueAfter!43)) lt!572139) (apply!1032 lt!572143 lt!572139))))

(declare-fun lt!572141 () Unit!42024)

(assert (=> b!1262244 (= lt!572141 lt!572136)))

(declare-fun lt!572133 () ListLongMap!19061)

(assert (=> b!1262244 (= lt!572133 (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572135 () (_ BitVec 64))

(assert (=> b!1262244 (= lt!572135 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572142 () (_ BitVec 64))

(assert (=> b!1262244 (= lt!572142 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572126 () Unit!42024)

(assert (=> b!1262244 (= lt!572126 (addApplyDifferent!537 lt!572133 lt!572135 zeroValue!871 lt!572142))))

(assert (=> b!1262244 (= (apply!1032 (+!4215 lt!572133 (tuple2!21177 lt!572135 zeroValue!871)) lt!572142) (apply!1032 lt!572133 lt!572142))))

(declare-fun lt!572132 () Unit!42024)

(assert (=> b!1262244 (= lt!572132 lt!572126)))

(declare-fun lt!572144 () ListLongMap!19061)

(assert (=> b!1262244 (= lt!572144 (getCurrentListMapNoExtraKeys!5887 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572129 () (_ BitVec 64))

(assert (=> b!1262244 (= lt!572129 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572131 () (_ BitVec 64))

(assert (=> b!1262244 (= lt!572131 (select (arr!39720 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1262244 (= lt!572145 (addApplyDifferent!537 lt!572144 lt!572129 minValueAfter!43 lt!572131))))

(assert (=> b!1262244 (= (apply!1032 (+!4215 lt!572144 (tuple2!21177 lt!572129 minValueAfter!43)) lt!572131) (apply!1032 lt!572144 lt!572131))))

(declare-fun b!1262245 () Bool)

(assert (=> b!1262245 (= e!718517 e!718525)))

(declare-fun res!841023 () Bool)

(assert (=> b!1262245 (= res!841023 call!62063)))

(assert (=> b!1262245 (=> (not res!841023) (not e!718525))))

(assert (= (and d!138451 c!122751) b!1262225))

(assert (= (and d!138451 (not c!122751)) b!1262233))

(assert (= (and b!1262233 c!122746) b!1262228))

(assert (= (and b!1262233 (not c!122746)) b!1262237))

(assert (= (and b!1262237 c!122748) b!1262239))

(assert (= (and b!1262237 (not c!122748)) b!1262229))

(assert (= (or b!1262239 b!1262229) bm!62061))

(assert (= (or b!1262228 bm!62061) bm!62066))

(assert (= (or b!1262228 b!1262239) bm!62060))

(assert (= (or b!1262225 bm!62066) bm!62064))

(assert (= (or b!1262225 bm!62060) bm!62062))

(assert (= (and d!138451 res!841021) b!1262227))

(assert (= (and d!138451 c!122749) b!1262244))

(assert (= (and d!138451 (not c!122749)) b!1262232))

(assert (= (and d!138451 res!841024) b!1262231))

(assert (= (and b!1262231 res!841020) b!1262241))

(assert (= (and b!1262231 (not res!841017)) b!1262236))

(assert (= (and b!1262236 res!841022) b!1262242))

(assert (= (and b!1262231 res!841025) b!1262235))

(assert (= (and b!1262235 c!122747) b!1262230))

(assert (= (and b!1262235 (not c!122747)) b!1262234))

(assert (= (and b!1262230 res!841019) b!1262243))

(assert (= (or b!1262230 b!1262234) bm!62065))

(assert (= (and b!1262235 res!841018) b!1262240))

(assert (= (and b!1262240 c!122750) b!1262245))

(assert (= (and b!1262240 (not c!122750)) b!1262238))

(assert (= (and b!1262245 res!841023) b!1262226))

(assert (= (or b!1262245 b!1262238) bm!62063))

(declare-fun b_lambda!22871 () Bool)

(assert (=> (not b_lambda!22871) (not b!1262242)))

(assert (=> b!1262242 t!41913))

(declare-fun b_and!45433 () Bool)

(assert (= b_and!45431 (and (=> t!41913 result!23379) b_and!45433)))

(assert (=> b!1262227 m!1162669))

(assert (=> b!1262227 m!1162669))

(assert (=> b!1262227 m!1162675))

(declare-fun m!1162791 () Bool)

(assert (=> bm!62062 m!1162791))

(declare-fun m!1162793 () Bool)

(assert (=> bm!62065 m!1162793))

(assert (=> b!1262241 m!1162669))

(assert (=> b!1262241 m!1162669))

(assert (=> b!1262241 m!1162675))

(assert (=> b!1262242 m!1162691))

(assert (=> b!1262242 m!1162691))

(assert (=> b!1262242 m!1162701))

(assert (=> b!1262242 m!1162703))

(assert (=> b!1262242 m!1162669))

(assert (=> b!1262242 m!1162669))

(declare-fun m!1162795 () Bool)

(assert (=> b!1262242 m!1162795))

(assert (=> b!1262242 m!1162701))

(declare-fun m!1162797 () Bool)

(assert (=> b!1262243 m!1162797))

(declare-fun m!1162799 () Bool)

(assert (=> bm!62063 m!1162799))

(declare-fun m!1162801 () Bool)

(assert (=> b!1262226 m!1162801))

(assert (=> b!1262236 m!1162669))

(assert (=> b!1262236 m!1162669))

(declare-fun m!1162803 () Bool)

(assert (=> b!1262236 m!1162803))

(assert (=> bm!62064 m!1162637))

(assert (=> d!138451 m!1162629))

(declare-fun m!1162805 () Bool)

(assert (=> b!1262244 m!1162805))

(declare-fun m!1162807 () Bool)

(assert (=> b!1262244 m!1162807))

(assert (=> b!1262244 m!1162669))

(declare-fun m!1162809 () Bool)

(assert (=> b!1262244 m!1162809))

(assert (=> b!1262244 m!1162809))

(declare-fun m!1162811 () Bool)

(assert (=> b!1262244 m!1162811))

(declare-fun m!1162813 () Bool)

(assert (=> b!1262244 m!1162813))

(declare-fun m!1162815 () Bool)

(assert (=> b!1262244 m!1162815))

(declare-fun m!1162817 () Bool)

(assert (=> b!1262244 m!1162817))

(declare-fun m!1162819 () Bool)

(assert (=> b!1262244 m!1162819))

(assert (=> b!1262244 m!1162805))

(declare-fun m!1162821 () Bool)

(assert (=> b!1262244 m!1162821))

(declare-fun m!1162823 () Bool)

(assert (=> b!1262244 m!1162823))

(declare-fun m!1162825 () Bool)

(assert (=> b!1262244 m!1162825))

(declare-fun m!1162827 () Bool)

(assert (=> b!1262244 m!1162827))

(declare-fun m!1162829 () Bool)

(assert (=> b!1262244 m!1162829))

(assert (=> b!1262244 m!1162637))

(assert (=> b!1262244 m!1162819))

(declare-fun m!1162831 () Bool)

(assert (=> b!1262244 m!1162831))

(assert (=> b!1262244 m!1162827))

(declare-fun m!1162833 () Bool)

(assert (=> b!1262244 m!1162833))

(declare-fun m!1162835 () Bool)

(assert (=> b!1262225 m!1162835))

(assert (=> b!1262049 d!138451))

(declare-fun b!1262252 () Bool)

(declare-fun e!718534 () Bool)

(assert (=> b!1262252 (= e!718534 tp_is_empty!32373)))

(declare-fun condMapEmpty!50377 () Bool)

(declare-fun mapDefault!50377 () ValueCell!15423)

(assert (=> mapNonEmpty!50371 (= condMapEmpty!50377 (= mapRest!50371 ((as const (Array (_ BitVec 32) ValueCell!15423)) mapDefault!50377)))))

(declare-fun e!718533 () Bool)

(declare-fun mapRes!50377 () Bool)

(assert (=> mapNonEmpty!50371 (= tp!95955 (and e!718533 mapRes!50377))))

(declare-fun b!1262253 () Bool)

(assert (=> b!1262253 (= e!718533 tp_is_empty!32373)))

(declare-fun mapIsEmpty!50377 () Bool)

(assert (=> mapIsEmpty!50377 mapRes!50377))

(declare-fun mapNonEmpty!50377 () Bool)

(declare-fun tp!95964 () Bool)

(assert (=> mapNonEmpty!50377 (= mapRes!50377 (and tp!95964 e!718534))))

(declare-fun mapValue!50377 () ValueCell!15423)

(declare-fun mapRest!50377 () (Array (_ BitVec 32) ValueCell!15423))

(declare-fun mapKey!50377 () (_ BitVec 32))

(assert (=> mapNonEmpty!50377 (= mapRest!50371 (store mapRest!50377 mapKey!50377 mapValue!50377))))

(assert (= (and mapNonEmpty!50371 condMapEmpty!50377) mapIsEmpty!50377))

(assert (= (and mapNonEmpty!50371 (not condMapEmpty!50377)) mapNonEmpty!50377))

(assert (= (and mapNonEmpty!50377 ((_ is ValueCellFull!15423) mapValue!50377)) b!1262252))

(assert (= (and mapNonEmpty!50371 ((_ is ValueCellFull!15423) mapDefault!50377)) b!1262253))

(declare-fun m!1162837 () Bool)

(assert (=> mapNonEmpty!50377 m!1162837))

(declare-fun b_lambda!22873 () Bool)

(assert (= b_lambda!22863 (or (and start!106018 b_free!27471) b_lambda!22873)))

(declare-fun b_lambda!22875 () Bool)

(assert (= b_lambda!22869 (or (and start!106018 b_free!27471) b_lambda!22875)))

(declare-fun b_lambda!22877 () Bool)

(assert (= b_lambda!22867 (or (and start!106018 b_free!27471) b_lambda!22877)))

(declare-fun b_lambda!22879 () Bool)

(assert (= b_lambda!22865 (or (and start!106018 b_free!27471) b_lambda!22879)))

(declare-fun b_lambda!22881 () Bool)

(assert (= b_lambda!22861 (or (and start!106018 b_free!27471) b_lambda!22881)))

(declare-fun b_lambda!22883 () Bool)

(assert (= b_lambda!22871 (or (and start!106018 b_free!27471) b_lambda!22883)))

(check-sat (not b!1262224) tp_is_empty!32373 (not b_lambda!22873) (not b!1262144) (not bm!62062) (not d!138447) (not b_lambda!22877) (not bm!62031) (not d!138451) (not b!1262209) (not d!138437) (not b!1262148) (not b!1262134) (not b_lambda!22875) (not b!1262242) (not b!1262135) (not b!1262137) (not b!1262136) (not b!1262093) (not b!1262092) (not b!1262091) (not bm!62056) (not b!1262104) (not b!1262216) (not bm!62057) (not bm!62058) (not b_lambda!22879) (not b!1262217) (not b!1262155) (not b_next!27471) (not b!1262140) (not b!1262150) (not b!1262215) (not bm!62034) (not b!1262102) (not bm!62065) (not b!1262223) (not b!1262149) (not mapNonEmpty!50377) (not b!1262243) (not b!1262198) (not b!1262227) (not d!138435) (not bm!62064) (not bm!62038) (not bm!62055) (not b!1262236) (not b!1262225) (not b!1262214) (not b!1262138) (not b_lambda!22881) b_and!45433 (not d!138449) (not b!1262154) (not d!138439) (not bm!62063) (not b!1262200) (not b!1262151) (not b!1262244) (not b_lambda!22883) (not b!1262199) (not b!1262152) (not b!1262241) (not b!1262226) (not b!1262141) (not b!1262130) (not bm!62037))
(check-sat b_and!45433 (not b_next!27471))
