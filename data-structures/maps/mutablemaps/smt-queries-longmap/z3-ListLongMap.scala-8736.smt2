; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105948 () Bool)

(assert start!105948)

(declare-fun b_free!27453 () Bool)

(declare-fun b_next!27453 () Bool)

(assert (=> start!105948 (= b_free!27453 (not b_next!27453))))

(declare-fun tp!95892 () Bool)

(declare-fun b_and!45371 () Bool)

(assert (=> start!105948 (= tp!95892 b_and!45371)))

(declare-fun b!1261406 () Bool)

(declare-fun res!840633 () Bool)

(declare-fun e!717969 () Bool)

(assert (=> b!1261406 (=> (not res!840633) (not e!717969))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82307 0))(
  ( (array!82308 (arr!39702 (Array (_ BitVec 32) (_ BitVec 64))) (size!40239 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82307)

(declare-datatypes ((V!48505 0))(
  ( (V!48506 (val!16240 Int)) )
))
(declare-datatypes ((ValueCell!15414 0))(
  ( (ValueCellFull!15414 (v!18944 V!48505)) (EmptyCell!15414) )
))
(declare-datatypes ((array!82309 0))(
  ( (array!82310 (arr!39703 (Array (_ BitVec 32) ValueCell!15414)) (size!40240 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82309)

(assert (=> b!1261406 (= res!840633 (and (= (size!40240 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40239 _keys!1118) (size!40240 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261407 () Bool)

(declare-fun e!717967 () Bool)

(declare-fun tp_is_empty!32355 () Bool)

(assert (=> b!1261407 (= e!717967 tp_is_empty!32355)))

(declare-fun res!840631 () Bool)

(assert (=> start!105948 (=> (not res!840631) (not e!717969))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105948 (= res!840631 (validMask!0 mask!1466))))

(assert (=> start!105948 e!717969))

(assert (=> start!105948 true))

(assert (=> start!105948 tp!95892))

(assert (=> start!105948 tp_is_empty!32355))

(declare-fun array_inv!30175 (array!82307) Bool)

(assert (=> start!105948 (array_inv!30175 _keys!1118)))

(declare-fun e!717966 () Bool)

(declare-fun array_inv!30176 (array!82309) Bool)

(assert (=> start!105948 (and (array_inv!30176 _values!914) e!717966)))

(declare-fun mapNonEmpty!50335 () Bool)

(declare-fun mapRes!50335 () Bool)

(declare-fun tp!95891 () Bool)

(assert (=> mapNonEmpty!50335 (= mapRes!50335 (and tp!95891 e!717967))))

(declare-fun mapValue!50335 () ValueCell!15414)

(declare-fun mapRest!50335 () (Array (_ BitVec 32) ValueCell!15414))

(declare-fun mapKey!50335 () (_ BitVec 32))

(assert (=> mapNonEmpty!50335 (= (arr!39703 _values!914) (store mapRest!50335 mapKey!50335 mapValue!50335))))

(declare-fun b!1261408 () Bool)

(assert (=> b!1261408 (= e!717969 (bvsgt #b00000000000000000000000000000000 (size!40239 _keys!1118)))))

(declare-fun minValueAfter!43 () V!48505)

(declare-fun zeroValue!871 () V!48505)

(declare-datatypes ((tuple2!21162 0))(
  ( (tuple2!21163 (_1!10591 (_ BitVec 64)) (_2!10591 V!48505)) )
))
(declare-datatypes ((List!28383 0))(
  ( (Nil!28380) (Cons!28379 (h!29588 tuple2!21162) (t!41889 List!28383)) )
))
(declare-datatypes ((ListLongMap!19047 0))(
  ( (ListLongMap!19048 (toList!9539 List!28383)) )
))
(declare-fun lt!571582 () ListLongMap!19047)

(declare-fun defaultEntry!922 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5880 (array!82307 array!82309 (_ BitVec 32) (_ BitVec 32) V!48505 V!48505 (_ BitVec 32) Int) ListLongMap!19047)

(assert (=> b!1261408 (= lt!571582 (getCurrentListMapNoExtraKeys!5880 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571583 () ListLongMap!19047)

(declare-fun minValueBefore!43 () V!48505)

(assert (=> b!1261408 (= lt!571583 (getCurrentListMapNoExtraKeys!5880 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!50335 () Bool)

(assert (=> mapIsEmpty!50335 mapRes!50335))

(declare-fun b!1261409 () Bool)

(declare-fun e!717968 () Bool)

(assert (=> b!1261409 (= e!717968 tp_is_empty!32355)))

(declare-fun b!1261410 () Bool)

(declare-fun res!840632 () Bool)

(assert (=> b!1261410 (=> (not res!840632) (not e!717969))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82307 (_ BitVec 32)) Bool)

(assert (=> b!1261410 (= res!840632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1261411 () Bool)

(declare-fun res!840634 () Bool)

(assert (=> b!1261411 (=> (not res!840634) (not e!717969))))

(declare-datatypes ((List!28384 0))(
  ( (Nil!28381) (Cons!28380 (h!29589 (_ BitVec 64)) (t!41890 List!28384)) )
))
(declare-fun arrayNoDuplicates!0 (array!82307 (_ BitVec 32) List!28384) Bool)

(assert (=> b!1261411 (= res!840634 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28381))))

(declare-fun b!1261412 () Bool)

(assert (=> b!1261412 (= e!717966 (and e!717968 mapRes!50335))))

(declare-fun condMapEmpty!50335 () Bool)

(declare-fun mapDefault!50335 () ValueCell!15414)

(assert (=> b!1261412 (= condMapEmpty!50335 (= (arr!39703 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15414)) mapDefault!50335)))))

(assert (= (and start!105948 res!840631) b!1261406))

(assert (= (and b!1261406 res!840633) b!1261410))

(assert (= (and b!1261410 res!840632) b!1261411))

(assert (= (and b!1261411 res!840634) b!1261408))

(assert (= (and b!1261412 condMapEmpty!50335) mapIsEmpty!50335))

(assert (= (and b!1261412 (not condMapEmpty!50335)) mapNonEmpty!50335))

(get-info :version)

(assert (= (and mapNonEmpty!50335 ((_ is ValueCellFull!15414) mapValue!50335)) b!1261407))

(assert (= (and b!1261412 ((_ is ValueCellFull!15414) mapDefault!50335)) b!1261409))

(assert (= start!105948 b!1261412))

(declare-fun m!1162059 () Bool)

(assert (=> b!1261411 m!1162059))

(declare-fun m!1162061 () Bool)

(assert (=> b!1261408 m!1162061))

(declare-fun m!1162063 () Bool)

(assert (=> b!1261408 m!1162063))

(declare-fun m!1162065 () Bool)

(assert (=> start!105948 m!1162065))

(declare-fun m!1162067 () Bool)

(assert (=> start!105948 m!1162067))

(declare-fun m!1162069 () Bool)

(assert (=> start!105948 m!1162069))

(declare-fun m!1162071 () Bool)

(assert (=> mapNonEmpty!50335 m!1162071))

(declare-fun m!1162073 () Bool)

(assert (=> b!1261410 m!1162073))

(check-sat (not b_next!27453) b_and!45371 (not b!1261411) (not mapNonEmpty!50335) (not start!105948) (not b!1261410) (not b!1261408) tp_is_empty!32355)
(check-sat b_and!45371 (not b_next!27453))
(get-model)

(declare-fun b!1261442 () Bool)

(declare-fun e!717993 () Bool)

(declare-fun e!717994 () Bool)

(assert (=> b!1261442 (= e!717993 e!717994)))

(declare-fun c!122594 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1261442 (= c!122594 (validKeyInArray!0 (select (arr!39702 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1261443 () Bool)

(declare-fun e!717992 () Bool)

(assert (=> b!1261443 (= e!717994 e!717992)))

(declare-fun lt!571597 () (_ BitVec 64))

(assert (=> b!1261443 (= lt!571597 (select (arr!39702 _keys!1118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42005 0))(
  ( (Unit!42006) )
))
(declare-fun lt!571598 () Unit!42005)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!82307 (_ BitVec 64) (_ BitVec 32)) Unit!42005)

(assert (=> b!1261443 (= lt!571598 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!571597 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!82307 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1261443 (arrayContainsKey!0 _keys!1118 lt!571597 #b00000000000000000000000000000000)))

(declare-fun lt!571596 () Unit!42005)

(assert (=> b!1261443 (= lt!571596 lt!571598)))

(declare-fun res!840652 () Bool)

(declare-datatypes ((SeekEntryResult!9969 0))(
  ( (MissingZero!9969 (index!42246 (_ BitVec 32))) (Found!9969 (index!42247 (_ BitVec 32))) (Intermediate!9969 (undefined!10781 Bool) (index!42248 (_ BitVec 32)) (x!111161 (_ BitVec 32))) (Undefined!9969) (MissingVacant!9969 (index!42249 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!82307 (_ BitVec 32)) SeekEntryResult!9969)

(assert (=> b!1261443 (= res!840652 (= (seekEntryOrOpen!0 (select (arr!39702 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9969 #b00000000000000000000000000000000)))))

(assert (=> b!1261443 (=> (not res!840652) (not e!717992))))

(declare-fun d!138365 () Bool)

(declare-fun res!840651 () Bool)

(assert (=> d!138365 (=> res!840651 e!717993)))

(assert (=> d!138365 (= res!840651 (bvsge #b00000000000000000000000000000000 (size!40239 _keys!1118)))))

(assert (=> d!138365 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!717993)))

(declare-fun b!1261444 () Bool)

(declare-fun call!61955 () Bool)

(assert (=> b!1261444 (= e!717992 call!61955)))

(declare-fun b!1261445 () Bool)

(assert (=> b!1261445 (= e!717994 call!61955)))

(declare-fun bm!61952 () Bool)

(assert (=> bm!61952 (= call!61955 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(assert (= (and d!138365 (not res!840651)) b!1261442))

(assert (= (and b!1261442 c!122594) b!1261443))

(assert (= (and b!1261442 (not c!122594)) b!1261445))

(assert (= (and b!1261443 res!840652) b!1261444))

(assert (= (or b!1261444 b!1261445) bm!61952))

(declare-fun m!1162091 () Bool)

(assert (=> b!1261442 m!1162091))

(assert (=> b!1261442 m!1162091))

(declare-fun m!1162093 () Bool)

(assert (=> b!1261442 m!1162093))

(assert (=> b!1261443 m!1162091))

(declare-fun m!1162095 () Bool)

(assert (=> b!1261443 m!1162095))

(declare-fun m!1162097 () Bool)

(assert (=> b!1261443 m!1162097))

(assert (=> b!1261443 m!1162091))

(declare-fun m!1162099 () Bool)

(assert (=> b!1261443 m!1162099))

(declare-fun m!1162101 () Bool)

(assert (=> bm!61952 m!1162101))

(assert (=> b!1261410 d!138365))

(declare-fun d!138367 () Bool)

(assert (=> d!138367 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!105948 d!138367))

(declare-fun d!138369 () Bool)

(assert (=> d!138369 (= (array_inv!30175 _keys!1118) (bvsge (size!40239 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!105948 d!138369))

(declare-fun d!138371 () Bool)

(assert (=> d!138371 (= (array_inv!30176 _values!914) (bvsge (size!40240 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!105948 d!138371))

(declare-fun d!138373 () Bool)

(declare-fun res!840659 () Bool)

(declare-fun e!718006 () Bool)

(assert (=> d!138373 (=> res!840659 e!718006)))

(assert (=> d!138373 (= res!840659 (bvsge #b00000000000000000000000000000000 (size!40239 _keys!1118)))))

(assert (=> d!138373 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28381) e!718006)))

(declare-fun b!1261456 () Bool)

(declare-fun e!718003 () Bool)

(declare-fun contains!7602 (List!28384 (_ BitVec 64)) Bool)

(assert (=> b!1261456 (= e!718003 (contains!7602 Nil!28381 (select (arr!39702 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1261457 () Bool)

(declare-fun e!718004 () Bool)

(assert (=> b!1261457 (= e!718006 e!718004)))

(declare-fun res!840660 () Bool)

(assert (=> b!1261457 (=> (not res!840660) (not e!718004))))

(assert (=> b!1261457 (= res!840660 (not e!718003))))

(declare-fun res!840661 () Bool)

(assert (=> b!1261457 (=> (not res!840661) (not e!718003))))

(assert (=> b!1261457 (= res!840661 (validKeyInArray!0 (select (arr!39702 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1261458 () Bool)

(declare-fun e!718005 () Bool)

(declare-fun call!61958 () Bool)

(assert (=> b!1261458 (= e!718005 call!61958)))

(declare-fun b!1261459 () Bool)

(assert (=> b!1261459 (= e!718005 call!61958)))

(declare-fun b!1261460 () Bool)

(assert (=> b!1261460 (= e!718004 e!718005)))

(declare-fun c!122597 () Bool)

(assert (=> b!1261460 (= c!122597 (validKeyInArray!0 (select (arr!39702 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!61955 () Bool)

(assert (=> bm!61955 (= call!61958 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122597 (Cons!28380 (select (arr!39702 _keys!1118) #b00000000000000000000000000000000) Nil!28381) Nil!28381)))))

(assert (= (and d!138373 (not res!840659)) b!1261457))

(assert (= (and b!1261457 res!840661) b!1261456))

(assert (= (and b!1261457 res!840660) b!1261460))

(assert (= (and b!1261460 c!122597) b!1261458))

(assert (= (and b!1261460 (not c!122597)) b!1261459))

(assert (= (or b!1261458 b!1261459) bm!61955))

(assert (=> b!1261456 m!1162091))

(assert (=> b!1261456 m!1162091))

(declare-fun m!1162103 () Bool)

(assert (=> b!1261456 m!1162103))

(assert (=> b!1261457 m!1162091))

(assert (=> b!1261457 m!1162091))

(assert (=> b!1261457 m!1162093))

(assert (=> b!1261460 m!1162091))

(assert (=> b!1261460 m!1162091))

(assert (=> b!1261460 m!1162093))

(assert (=> bm!61955 m!1162091))

(declare-fun m!1162105 () Bool)

(assert (=> bm!61955 m!1162105))

(assert (=> b!1261411 d!138373))

(declare-fun b!1261485 () Bool)

(declare-fun e!718023 () Bool)

(declare-fun lt!571619 () ListLongMap!19047)

(declare-fun isEmpty!1039 (ListLongMap!19047) Bool)

(assert (=> b!1261485 (= e!718023 (isEmpty!1039 lt!571619))))

(declare-fun b!1261486 () Bool)

(declare-fun e!718021 () ListLongMap!19047)

(declare-fun e!718022 () ListLongMap!19047)

(assert (=> b!1261486 (= e!718021 e!718022)))

(declare-fun c!122609 () Bool)

(assert (=> b!1261486 (= c!122609 (validKeyInArray!0 (select (arr!39702 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1261487 () Bool)

(declare-fun res!840673 () Bool)

(declare-fun e!718024 () Bool)

(assert (=> b!1261487 (=> (not res!840673) (not e!718024))))

(declare-fun contains!7603 (ListLongMap!19047 (_ BitVec 64)) Bool)

(assert (=> b!1261487 (= res!840673 (not (contains!7603 lt!571619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1261488 () Bool)

(declare-fun e!718027 () Bool)

(declare-fun e!718025 () Bool)

(assert (=> b!1261488 (= e!718027 e!718025)))

(assert (=> b!1261488 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40239 _keys!1118)))))

(declare-fun res!840670 () Bool)

(assert (=> b!1261488 (= res!840670 (contains!7603 lt!571619 (select (arr!39702 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1261488 (=> (not res!840670) (not e!718025))))

(declare-fun b!1261489 () Bool)

(declare-fun lt!571618 () Unit!42005)

(declare-fun lt!571615 () Unit!42005)

(assert (=> b!1261489 (= lt!571618 lt!571615)))

(declare-fun lt!571617 () V!48505)

(declare-fun lt!571614 () (_ BitVec 64))

(declare-fun lt!571616 () ListLongMap!19047)

(declare-fun lt!571613 () (_ BitVec 64))

(declare-fun +!4212 (ListLongMap!19047 tuple2!21162) ListLongMap!19047)

(assert (=> b!1261489 (not (contains!7603 (+!4212 lt!571616 (tuple2!21163 lt!571614 lt!571617)) lt!571613))))

(declare-fun addStillNotContains!324 (ListLongMap!19047 (_ BitVec 64) V!48505 (_ BitVec 64)) Unit!42005)

(assert (=> b!1261489 (= lt!571615 (addStillNotContains!324 lt!571616 lt!571614 lt!571617 lt!571613))))

(assert (=> b!1261489 (= lt!571613 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!20303 (ValueCell!15414 V!48505) V!48505)

(declare-fun dynLambda!3474 (Int (_ BitVec 64)) V!48505)

(assert (=> b!1261489 (= lt!571617 (get!20303 (select (arr!39703 _values!914) #b00000000000000000000000000000000) (dynLambda!3474 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1261489 (= lt!571614 (select (arr!39702 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun call!61961 () ListLongMap!19047)

(assert (=> b!1261489 (= lt!571616 call!61961)))

(assert (=> b!1261489 (= e!718022 (+!4212 call!61961 (tuple2!21163 (select (arr!39702 _keys!1118) #b00000000000000000000000000000000) (get!20303 (select (arr!39703 _values!914) #b00000000000000000000000000000000) (dynLambda!3474 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!138375 () Bool)

(assert (=> d!138375 e!718024))

(declare-fun res!840671 () Bool)

(assert (=> d!138375 (=> (not res!840671) (not e!718024))))

(assert (=> d!138375 (= res!840671 (not (contains!7603 lt!571619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138375 (= lt!571619 e!718021)))

(declare-fun c!122608 () Bool)

(assert (=> d!138375 (= c!122608 (bvsge #b00000000000000000000000000000000 (size!40239 _keys!1118)))))

(assert (=> d!138375 (validMask!0 mask!1466)))

(assert (=> d!138375 (= (getCurrentListMapNoExtraKeys!5880 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!571619)))

(declare-fun b!1261490 () Bool)

(assert (=> b!1261490 (= e!718022 call!61961)))

(declare-fun b!1261491 () Bool)

(assert (=> b!1261491 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40239 _keys!1118)))))

(assert (=> b!1261491 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40240 _values!914)))))

(declare-fun apply!1029 (ListLongMap!19047 (_ BitVec 64)) V!48505)

(assert (=> b!1261491 (= e!718025 (= (apply!1029 lt!571619 (select (arr!39702 _keys!1118) #b00000000000000000000000000000000)) (get!20303 (select (arr!39703 _values!914) #b00000000000000000000000000000000) (dynLambda!3474 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!61958 () Bool)

(assert (=> bm!61958 (= call!61961 (getCurrentListMapNoExtraKeys!5880 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1261492 () Bool)

(assert (=> b!1261492 (= e!718023 (= lt!571619 (getCurrentListMapNoExtraKeys!5880 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1261493 () Bool)

(assert (=> b!1261493 (= e!718021 (ListLongMap!19048 Nil!28380))))

(declare-fun b!1261494 () Bool)

(assert (=> b!1261494 (= e!718027 e!718023)))

(declare-fun c!122606 () Bool)

(assert (=> b!1261494 (= c!122606 (bvslt #b00000000000000000000000000000000 (size!40239 _keys!1118)))))

(declare-fun b!1261495 () Bool)

(assert (=> b!1261495 (= e!718024 e!718027)))

(declare-fun c!122607 () Bool)

(declare-fun e!718026 () Bool)

(assert (=> b!1261495 (= c!122607 e!718026)))

(declare-fun res!840672 () Bool)

(assert (=> b!1261495 (=> (not res!840672) (not e!718026))))

(assert (=> b!1261495 (= res!840672 (bvslt #b00000000000000000000000000000000 (size!40239 _keys!1118)))))

(declare-fun b!1261496 () Bool)

(assert (=> b!1261496 (= e!718026 (validKeyInArray!0 (select (arr!39702 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1261496 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!138375 c!122608) b!1261493))

(assert (= (and d!138375 (not c!122608)) b!1261486))

(assert (= (and b!1261486 c!122609) b!1261489))

(assert (= (and b!1261486 (not c!122609)) b!1261490))

(assert (= (or b!1261489 b!1261490) bm!61958))

(assert (= (and d!138375 res!840671) b!1261487))

(assert (= (and b!1261487 res!840673) b!1261495))

(assert (= (and b!1261495 res!840672) b!1261496))

(assert (= (and b!1261495 c!122607) b!1261488))

(assert (= (and b!1261495 (not c!122607)) b!1261494))

(assert (= (and b!1261488 res!840670) b!1261491))

(assert (= (and b!1261494 c!122606) b!1261492))

(assert (= (and b!1261494 (not c!122606)) b!1261485))

(declare-fun b_lambda!22801 () Bool)

(assert (=> (not b_lambda!22801) (not b!1261489)))

(declare-fun t!41892 () Bool)

(declare-fun tb!11323 () Bool)

(assert (=> (and start!105948 (= defaultEntry!922 defaultEntry!922) t!41892) tb!11323))

(declare-fun result!23361 () Bool)

(assert (=> tb!11323 (= result!23361 tp_is_empty!32355)))

(assert (=> b!1261489 t!41892))

(declare-fun b_and!45375 () Bool)

(assert (= b_and!45371 (and (=> t!41892 result!23361) b_and!45375)))

(declare-fun b_lambda!22803 () Bool)

(assert (=> (not b_lambda!22803) (not b!1261491)))

(assert (=> b!1261491 t!41892))

(declare-fun b_and!45377 () Bool)

(assert (= b_and!45375 (and (=> t!41892 result!23361) b_and!45377)))

(declare-fun m!1162107 () Bool)

(assert (=> b!1261491 m!1162107))

(declare-fun m!1162109 () Bool)

(assert (=> b!1261491 m!1162109))

(declare-fun m!1162111 () Bool)

(assert (=> b!1261491 m!1162111))

(assert (=> b!1261491 m!1162109))

(assert (=> b!1261491 m!1162091))

(assert (=> b!1261491 m!1162091))

(declare-fun m!1162113 () Bool)

(assert (=> b!1261491 m!1162113))

(assert (=> b!1261491 m!1162107))

(assert (=> b!1261488 m!1162091))

(assert (=> b!1261488 m!1162091))

(declare-fun m!1162115 () Bool)

(assert (=> b!1261488 m!1162115))

(declare-fun m!1162117 () Bool)

(assert (=> d!138375 m!1162117))

(assert (=> d!138375 m!1162065))

(assert (=> b!1261486 m!1162091))

(assert (=> b!1261486 m!1162091))

(assert (=> b!1261486 m!1162093))

(declare-fun m!1162119 () Bool)

(assert (=> b!1261492 m!1162119))

(declare-fun m!1162121 () Bool)

(assert (=> b!1261487 m!1162121))

(declare-fun m!1162123 () Bool)

(assert (=> b!1261489 m!1162123))

(assert (=> b!1261489 m!1162107))

(assert (=> b!1261489 m!1162109))

(assert (=> b!1261489 m!1162111))

(declare-fun m!1162125 () Bool)

(assert (=> b!1261489 m!1162125))

(declare-fun m!1162127 () Bool)

(assert (=> b!1261489 m!1162127))

(assert (=> b!1261489 m!1162109))

(declare-fun m!1162129 () Bool)

(assert (=> b!1261489 m!1162129))

(assert (=> b!1261489 m!1162107))

(assert (=> b!1261489 m!1162091))

(assert (=> b!1261489 m!1162125))

(assert (=> b!1261496 m!1162091))

(assert (=> b!1261496 m!1162091))

(assert (=> b!1261496 m!1162093))

(assert (=> bm!61958 m!1162119))

(declare-fun m!1162131 () Bool)

(assert (=> b!1261485 m!1162131))

(assert (=> b!1261408 d!138375))

(declare-fun b!1261499 () Bool)

(declare-fun e!718030 () Bool)

(declare-fun lt!571626 () ListLongMap!19047)

(assert (=> b!1261499 (= e!718030 (isEmpty!1039 lt!571626))))

(declare-fun b!1261500 () Bool)

(declare-fun e!718028 () ListLongMap!19047)

(declare-fun e!718029 () ListLongMap!19047)

(assert (=> b!1261500 (= e!718028 e!718029)))

(declare-fun c!122613 () Bool)

(assert (=> b!1261500 (= c!122613 (validKeyInArray!0 (select (arr!39702 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1261501 () Bool)

(declare-fun res!840677 () Bool)

(declare-fun e!718031 () Bool)

(assert (=> b!1261501 (=> (not res!840677) (not e!718031))))

(assert (=> b!1261501 (= res!840677 (not (contains!7603 lt!571626 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1261502 () Bool)

(declare-fun e!718034 () Bool)

(declare-fun e!718032 () Bool)

(assert (=> b!1261502 (= e!718034 e!718032)))

(assert (=> b!1261502 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40239 _keys!1118)))))

(declare-fun res!840674 () Bool)

(assert (=> b!1261502 (= res!840674 (contains!7603 lt!571626 (select (arr!39702 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1261502 (=> (not res!840674) (not e!718032))))

(declare-fun b!1261503 () Bool)

(declare-fun lt!571625 () Unit!42005)

(declare-fun lt!571622 () Unit!42005)

(assert (=> b!1261503 (= lt!571625 lt!571622)))

(declare-fun lt!571621 () (_ BitVec 64))

(declare-fun lt!571624 () V!48505)

(declare-fun lt!571620 () (_ BitVec 64))

(declare-fun lt!571623 () ListLongMap!19047)

(assert (=> b!1261503 (not (contains!7603 (+!4212 lt!571623 (tuple2!21163 lt!571621 lt!571624)) lt!571620))))

(assert (=> b!1261503 (= lt!571622 (addStillNotContains!324 lt!571623 lt!571621 lt!571624 lt!571620))))

(assert (=> b!1261503 (= lt!571620 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1261503 (= lt!571624 (get!20303 (select (arr!39703 _values!914) #b00000000000000000000000000000000) (dynLambda!3474 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1261503 (= lt!571621 (select (arr!39702 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun call!61962 () ListLongMap!19047)

(assert (=> b!1261503 (= lt!571623 call!61962)))

(assert (=> b!1261503 (= e!718029 (+!4212 call!61962 (tuple2!21163 (select (arr!39702 _keys!1118) #b00000000000000000000000000000000) (get!20303 (select (arr!39703 _values!914) #b00000000000000000000000000000000) (dynLambda!3474 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!138377 () Bool)

(assert (=> d!138377 e!718031))

(declare-fun res!840675 () Bool)

(assert (=> d!138377 (=> (not res!840675) (not e!718031))))

(assert (=> d!138377 (= res!840675 (not (contains!7603 lt!571626 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138377 (= lt!571626 e!718028)))

(declare-fun c!122612 () Bool)

(assert (=> d!138377 (= c!122612 (bvsge #b00000000000000000000000000000000 (size!40239 _keys!1118)))))

(assert (=> d!138377 (validMask!0 mask!1466)))

(assert (=> d!138377 (= (getCurrentListMapNoExtraKeys!5880 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!571626)))

(declare-fun b!1261504 () Bool)

(assert (=> b!1261504 (= e!718029 call!61962)))

(declare-fun b!1261505 () Bool)

(assert (=> b!1261505 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40239 _keys!1118)))))

(assert (=> b!1261505 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40240 _values!914)))))

(assert (=> b!1261505 (= e!718032 (= (apply!1029 lt!571626 (select (arr!39702 _keys!1118) #b00000000000000000000000000000000)) (get!20303 (select (arr!39703 _values!914) #b00000000000000000000000000000000) (dynLambda!3474 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!61959 () Bool)

(assert (=> bm!61959 (= call!61962 (getCurrentListMapNoExtraKeys!5880 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1261506 () Bool)

(assert (=> b!1261506 (= e!718030 (= lt!571626 (getCurrentListMapNoExtraKeys!5880 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1261507 () Bool)

(assert (=> b!1261507 (= e!718028 (ListLongMap!19048 Nil!28380))))

(declare-fun b!1261508 () Bool)

(assert (=> b!1261508 (= e!718034 e!718030)))

(declare-fun c!122610 () Bool)

(assert (=> b!1261508 (= c!122610 (bvslt #b00000000000000000000000000000000 (size!40239 _keys!1118)))))

(declare-fun b!1261509 () Bool)

(assert (=> b!1261509 (= e!718031 e!718034)))

(declare-fun c!122611 () Bool)

(declare-fun e!718033 () Bool)

(assert (=> b!1261509 (= c!122611 e!718033)))

(declare-fun res!840676 () Bool)

(assert (=> b!1261509 (=> (not res!840676) (not e!718033))))

(assert (=> b!1261509 (= res!840676 (bvslt #b00000000000000000000000000000000 (size!40239 _keys!1118)))))

(declare-fun b!1261510 () Bool)

(assert (=> b!1261510 (= e!718033 (validKeyInArray!0 (select (arr!39702 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1261510 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!138377 c!122612) b!1261507))

(assert (= (and d!138377 (not c!122612)) b!1261500))

(assert (= (and b!1261500 c!122613) b!1261503))

(assert (= (and b!1261500 (not c!122613)) b!1261504))

(assert (= (or b!1261503 b!1261504) bm!61959))

(assert (= (and d!138377 res!840675) b!1261501))

(assert (= (and b!1261501 res!840677) b!1261509))

(assert (= (and b!1261509 res!840676) b!1261510))

(assert (= (and b!1261509 c!122611) b!1261502))

(assert (= (and b!1261509 (not c!122611)) b!1261508))

(assert (= (and b!1261502 res!840674) b!1261505))

(assert (= (and b!1261508 c!122610) b!1261506))

(assert (= (and b!1261508 (not c!122610)) b!1261499))

(declare-fun b_lambda!22805 () Bool)

(assert (=> (not b_lambda!22805) (not b!1261503)))

(assert (=> b!1261503 t!41892))

(declare-fun b_and!45379 () Bool)

(assert (= b_and!45377 (and (=> t!41892 result!23361) b_and!45379)))

(declare-fun b_lambda!22807 () Bool)

(assert (=> (not b_lambda!22807) (not b!1261505)))

(assert (=> b!1261505 t!41892))

(declare-fun b_and!45381 () Bool)

(assert (= b_and!45379 (and (=> t!41892 result!23361) b_and!45381)))

(assert (=> b!1261505 m!1162107))

(assert (=> b!1261505 m!1162109))

(assert (=> b!1261505 m!1162111))

(assert (=> b!1261505 m!1162109))

(assert (=> b!1261505 m!1162091))

(assert (=> b!1261505 m!1162091))

(declare-fun m!1162133 () Bool)

(assert (=> b!1261505 m!1162133))

(assert (=> b!1261505 m!1162107))

(assert (=> b!1261502 m!1162091))

(assert (=> b!1261502 m!1162091))

(declare-fun m!1162135 () Bool)

(assert (=> b!1261502 m!1162135))

(declare-fun m!1162137 () Bool)

(assert (=> d!138377 m!1162137))

(assert (=> d!138377 m!1162065))

(assert (=> b!1261500 m!1162091))

(assert (=> b!1261500 m!1162091))

(assert (=> b!1261500 m!1162093))

(declare-fun m!1162139 () Bool)

(assert (=> b!1261506 m!1162139))

(declare-fun m!1162141 () Bool)

(assert (=> b!1261501 m!1162141))

(declare-fun m!1162143 () Bool)

(assert (=> b!1261503 m!1162143))

(assert (=> b!1261503 m!1162107))

(assert (=> b!1261503 m!1162109))

(assert (=> b!1261503 m!1162111))

(declare-fun m!1162145 () Bool)

(assert (=> b!1261503 m!1162145))

(declare-fun m!1162147 () Bool)

(assert (=> b!1261503 m!1162147))

(assert (=> b!1261503 m!1162109))

(declare-fun m!1162149 () Bool)

(assert (=> b!1261503 m!1162149))

(assert (=> b!1261503 m!1162107))

(assert (=> b!1261503 m!1162091))

(assert (=> b!1261503 m!1162145))

(assert (=> b!1261510 m!1162091))

(assert (=> b!1261510 m!1162091))

(assert (=> b!1261510 m!1162093))

(assert (=> bm!61959 m!1162139))

(declare-fun m!1162151 () Bool)

(assert (=> b!1261499 m!1162151))

(assert (=> b!1261408 d!138377))

(declare-fun b!1261517 () Bool)

(declare-fun e!718039 () Bool)

(assert (=> b!1261517 (= e!718039 tp_is_empty!32355)))

(declare-fun b!1261518 () Bool)

(declare-fun e!718040 () Bool)

(assert (=> b!1261518 (= e!718040 tp_is_empty!32355)))

(declare-fun mapIsEmpty!50341 () Bool)

(declare-fun mapRes!50341 () Bool)

(assert (=> mapIsEmpty!50341 mapRes!50341))

(declare-fun mapNonEmpty!50341 () Bool)

(declare-fun tp!95901 () Bool)

(assert (=> mapNonEmpty!50341 (= mapRes!50341 (and tp!95901 e!718039))))

(declare-fun mapRest!50341 () (Array (_ BitVec 32) ValueCell!15414))

(declare-fun mapValue!50341 () ValueCell!15414)

(declare-fun mapKey!50341 () (_ BitVec 32))

(assert (=> mapNonEmpty!50341 (= mapRest!50335 (store mapRest!50341 mapKey!50341 mapValue!50341))))

(declare-fun condMapEmpty!50341 () Bool)

(declare-fun mapDefault!50341 () ValueCell!15414)

(assert (=> mapNonEmpty!50335 (= condMapEmpty!50341 (= mapRest!50335 ((as const (Array (_ BitVec 32) ValueCell!15414)) mapDefault!50341)))))

(assert (=> mapNonEmpty!50335 (= tp!95891 (and e!718040 mapRes!50341))))

(assert (= (and mapNonEmpty!50335 condMapEmpty!50341) mapIsEmpty!50341))

(assert (= (and mapNonEmpty!50335 (not condMapEmpty!50341)) mapNonEmpty!50341))

(assert (= (and mapNonEmpty!50341 ((_ is ValueCellFull!15414) mapValue!50341)) b!1261517))

(assert (= (and mapNonEmpty!50335 ((_ is ValueCellFull!15414) mapDefault!50341)) b!1261518))

(declare-fun m!1162153 () Bool)

(assert (=> mapNonEmpty!50341 m!1162153))

(declare-fun b_lambda!22809 () Bool)

(assert (= b_lambda!22803 (or (and start!105948 b_free!27453) b_lambda!22809)))

(declare-fun b_lambda!22811 () Bool)

(assert (= b_lambda!22805 (or (and start!105948 b_free!27453) b_lambda!22811)))

(declare-fun b_lambda!22813 () Bool)

(assert (= b_lambda!22807 (or (and start!105948 b_free!27453) b_lambda!22813)))

(declare-fun b_lambda!22815 () Bool)

(assert (= b_lambda!22801 (or (and start!105948 b_free!27453) b_lambda!22815)))

(check-sat (not b_next!27453) (not bm!61955) (not b!1261456) (not b!1261460) (not mapNonEmpty!50341) (not b!1261485) (not b!1261486) (not b!1261489) (not b_lambda!22815) (not b!1261491) (not b!1261510) (not b_lambda!22811) (not b!1261487) b_and!45381 tp_is_empty!32355 (not b!1261503) (not bm!61952) (not d!138375) (not bm!61959) (not d!138377) (not b_lambda!22813) (not b!1261496) (not b!1261442) (not b!1261501) (not b!1261499) (not b!1261500) (not b!1261443) (not b!1261506) (not b!1261457) (not bm!61958) (not b!1261505) (not b!1261492) (not b_lambda!22809) (not b!1261502) (not b!1261488))
(check-sat b_and!45381 (not b_next!27453))
