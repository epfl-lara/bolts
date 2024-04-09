; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104886 () Bool)

(assert start!104886)

(declare-fun b_free!26655 () Bool)

(declare-fun b_next!26655 () Bool)

(assert (=> start!104886 (= b_free!26655 (not b_next!26655))))

(declare-fun tp!93456 () Bool)

(declare-fun b_and!44433 () Bool)

(assert (=> start!104886 (= tp!93456 b_and!44433)))

(declare-fun b!1249669 () Bool)

(declare-fun res!833676 () Bool)

(declare-fun e!709346 () Bool)

(assert (=> b!1249669 (=> (not res!833676) (not e!709346))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80765 0))(
  ( (array!80766 (arr!38945 (Array (_ BitVec 32) (_ BitVec 64))) (size!39482 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80765)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((V!47441 0))(
  ( (V!47442 (val!15841 Int)) )
))
(declare-datatypes ((ValueCell!15015 0))(
  ( (ValueCellFull!15015 (v!18537 V!47441)) (EmptyCell!15015) )
))
(declare-datatypes ((array!80767 0))(
  ( (array!80768 (arr!38946 (Array (_ BitVec 32) ValueCell!15015)) (size!39483 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80767)

(assert (=> b!1249669 (= res!833676 (and (= (size!39483 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39482 _keys!1118) (size!39483 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1249670 () Bool)

(assert (=> b!1249670 (= e!709346 (not (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!39482 _keys!1118)))))))

(declare-datatypes ((tuple2!20546 0))(
  ( (tuple2!20547 (_1!10283 (_ BitVec 64)) (_2!10283 V!47441)) )
))
(declare-datatypes ((List!27809 0))(
  ( (Nil!27806) (Cons!27805 (h!29014 tuple2!20546) (t!41287 List!27809)) )
))
(declare-datatypes ((ListLongMap!18431 0))(
  ( (ListLongMap!18432 (toList!9231 List!27809)) )
))
(declare-fun lt!563808 () ListLongMap!18431)

(declare-fun lt!563806 () ListLongMap!18431)

(assert (=> b!1249670 (= lt!563808 lt!563806)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47441)

(declare-fun zeroValue!871 () V!47441)

(declare-fun minValueBefore!43 () V!47441)

(declare-datatypes ((Unit!41445 0))(
  ( (Unit!41446) )
))
(declare-fun lt!563807 () Unit!41445)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!932 (array!80765 array!80767 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47441 V!47441 V!47441 V!47441 (_ BitVec 32) Int) Unit!41445)

(assert (=> b!1249670 (= lt!563807 (lemmaNoChangeToArrayThenSameMapNoExtras!932 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5614 (array!80765 array!80767 (_ BitVec 32) (_ BitVec 32) V!47441 V!47441 (_ BitVec 32) Int) ListLongMap!18431)

(assert (=> b!1249670 (= lt!563806 (getCurrentListMapNoExtraKeys!5614 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249670 (= lt!563808 (getCurrentListMapNoExtraKeys!5614 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1249671 () Bool)

(declare-fun res!833673 () Bool)

(assert (=> b!1249671 (=> (not res!833673) (not e!709346))))

(declare-datatypes ((List!27810 0))(
  ( (Nil!27807) (Cons!27806 (h!29015 (_ BitVec 64)) (t!41288 List!27810)) )
))
(declare-fun arrayNoDuplicates!0 (array!80765 (_ BitVec 32) List!27810) Bool)

(assert (=> b!1249671 (= res!833673 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27807))))

(declare-fun mapIsEmpty!49096 () Bool)

(declare-fun mapRes!49096 () Bool)

(assert (=> mapIsEmpty!49096 mapRes!49096))

(declare-fun b!1249673 () Bool)

(declare-fun e!709347 () Bool)

(declare-fun e!709345 () Bool)

(assert (=> b!1249673 (= e!709347 (and e!709345 mapRes!49096))))

(declare-fun condMapEmpty!49096 () Bool)

(declare-fun mapDefault!49096 () ValueCell!15015)

(assert (=> b!1249673 (= condMapEmpty!49096 (= (arr!38946 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15015)) mapDefault!49096)))))

(declare-fun mapNonEmpty!49096 () Bool)

(declare-fun tp!93455 () Bool)

(declare-fun e!709344 () Bool)

(assert (=> mapNonEmpty!49096 (= mapRes!49096 (and tp!93455 e!709344))))

(declare-fun mapKey!49096 () (_ BitVec 32))

(declare-fun mapValue!49096 () ValueCell!15015)

(declare-fun mapRest!49096 () (Array (_ BitVec 32) ValueCell!15015))

(assert (=> mapNonEmpty!49096 (= (arr!38946 _values!914) (store mapRest!49096 mapKey!49096 mapValue!49096))))

(declare-fun b!1249674 () Bool)

(declare-fun res!833674 () Bool)

(assert (=> b!1249674 (=> (not res!833674) (not e!709346))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80765 (_ BitVec 32)) Bool)

(assert (=> b!1249674 (= res!833674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1249675 () Bool)

(declare-fun tp_is_empty!31557 () Bool)

(assert (=> b!1249675 (= e!709345 tp_is_empty!31557)))

(declare-fun res!833675 () Bool)

(assert (=> start!104886 (=> (not res!833675) (not e!709346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104886 (= res!833675 (validMask!0 mask!1466))))

(assert (=> start!104886 e!709346))

(assert (=> start!104886 true))

(assert (=> start!104886 tp!93456))

(assert (=> start!104886 tp_is_empty!31557))

(declare-fun array_inv!29645 (array!80765) Bool)

(assert (=> start!104886 (array_inv!29645 _keys!1118)))

(declare-fun array_inv!29646 (array!80767) Bool)

(assert (=> start!104886 (and (array_inv!29646 _values!914) e!709347)))

(declare-fun b!1249672 () Bool)

(assert (=> b!1249672 (= e!709344 tp_is_empty!31557)))

(assert (= (and start!104886 res!833675) b!1249669))

(assert (= (and b!1249669 res!833676) b!1249674))

(assert (= (and b!1249674 res!833674) b!1249671))

(assert (= (and b!1249671 res!833673) b!1249670))

(assert (= (and b!1249673 condMapEmpty!49096) mapIsEmpty!49096))

(assert (= (and b!1249673 (not condMapEmpty!49096)) mapNonEmpty!49096))

(get-info :version)

(assert (= (and mapNonEmpty!49096 ((_ is ValueCellFull!15015) mapValue!49096)) b!1249672))

(assert (= (and b!1249673 ((_ is ValueCellFull!15015) mapDefault!49096)) b!1249675))

(assert (= start!104886 b!1249673))

(declare-fun m!1150595 () Bool)

(assert (=> b!1249670 m!1150595))

(declare-fun m!1150597 () Bool)

(assert (=> b!1249670 m!1150597))

(declare-fun m!1150599 () Bool)

(assert (=> b!1249670 m!1150599))

(declare-fun m!1150601 () Bool)

(assert (=> mapNonEmpty!49096 m!1150601))

(declare-fun m!1150603 () Bool)

(assert (=> start!104886 m!1150603))

(declare-fun m!1150605 () Bool)

(assert (=> start!104886 m!1150605))

(declare-fun m!1150607 () Bool)

(assert (=> start!104886 m!1150607))

(declare-fun m!1150609 () Bool)

(assert (=> b!1249671 m!1150609))

(declare-fun m!1150611 () Bool)

(assert (=> b!1249674 m!1150611))

(check-sat (not start!104886) tp_is_empty!31557 (not mapNonEmpty!49096) (not b!1249670) (not b!1249671) (not b_next!26655) (not b!1249674) b_and!44433)
(check-sat b_and!44433 (not b_next!26655))
(get-model)

(declare-fun b!1249707 () Bool)

(declare-fun e!709372 () Bool)

(declare-fun call!61577 () Bool)

(assert (=> b!1249707 (= e!709372 call!61577)))

(declare-fun b!1249708 () Bool)

(declare-fun e!709374 () Bool)

(assert (=> b!1249708 (= e!709374 e!709372)))

(declare-fun c!122070 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1249708 (= c!122070 (validKeyInArray!0 (select (arr!38945 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1249709 () Bool)

(declare-fun e!709373 () Bool)

(assert (=> b!1249709 (= e!709373 e!709374)))

(declare-fun res!833695 () Bool)

(assert (=> b!1249709 (=> (not res!833695) (not e!709374))))

(declare-fun e!709371 () Bool)

(assert (=> b!1249709 (= res!833695 (not e!709371))))

(declare-fun res!833696 () Bool)

(assert (=> b!1249709 (=> (not res!833696) (not e!709371))))

(assert (=> b!1249709 (= res!833696 (validKeyInArray!0 (select (arr!38945 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!137783 () Bool)

(declare-fun res!833697 () Bool)

(assert (=> d!137783 (=> res!833697 e!709373)))

(assert (=> d!137783 (= res!833697 (bvsge #b00000000000000000000000000000000 (size!39482 _keys!1118)))))

(assert (=> d!137783 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27807) e!709373)))

(declare-fun bm!61574 () Bool)

(assert (=> bm!61574 (= call!61577 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122070 (Cons!27806 (select (arr!38945 _keys!1118) #b00000000000000000000000000000000) Nil!27807) Nil!27807)))))

(declare-fun b!1249710 () Bool)

(assert (=> b!1249710 (= e!709372 call!61577)))

(declare-fun b!1249711 () Bool)

(declare-fun contains!7488 (List!27810 (_ BitVec 64)) Bool)

(assert (=> b!1249711 (= e!709371 (contains!7488 Nil!27807 (select (arr!38945 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!137783 (not res!833697)) b!1249709))

(assert (= (and b!1249709 res!833696) b!1249711))

(assert (= (and b!1249709 res!833695) b!1249708))

(assert (= (and b!1249708 c!122070) b!1249707))

(assert (= (and b!1249708 (not c!122070)) b!1249710))

(assert (= (or b!1249707 b!1249710) bm!61574))

(declare-fun m!1150631 () Bool)

(assert (=> b!1249708 m!1150631))

(assert (=> b!1249708 m!1150631))

(declare-fun m!1150633 () Bool)

(assert (=> b!1249708 m!1150633))

(assert (=> b!1249709 m!1150631))

(assert (=> b!1249709 m!1150631))

(assert (=> b!1249709 m!1150633))

(assert (=> bm!61574 m!1150631))

(declare-fun m!1150635 () Bool)

(assert (=> bm!61574 m!1150635))

(assert (=> b!1249711 m!1150631))

(assert (=> b!1249711 m!1150631))

(declare-fun m!1150637 () Bool)

(assert (=> b!1249711 m!1150637))

(assert (=> b!1249671 d!137783))

(declare-fun b!1249720 () Bool)

(declare-fun e!709382 () Bool)

(declare-fun e!709381 () Bool)

(assert (=> b!1249720 (= e!709382 e!709381)))

(declare-fun lt!563824 () (_ BitVec 64))

(assert (=> b!1249720 (= lt!563824 (select (arr!38945 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!563825 () Unit!41445)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!80765 (_ BitVec 64) (_ BitVec 32)) Unit!41445)

(assert (=> b!1249720 (= lt!563825 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!563824 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!80765 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1249720 (arrayContainsKey!0 _keys!1118 lt!563824 #b00000000000000000000000000000000)))

(declare-fun lt!563826 () Unit!41445)

(assert (=> b!1249720 (= lt!563826 lt!563825)))

(declare-fun res!833702 () Bool)

(declare-datatypes ((SeekEntryResult!9955 0))(
  ( (MissingZero!9955 (index!42190 (_ BitVec 32))) (Found!9955 (index!42191 (_ BitVec 32))) (Intermediate!9955 (undefined!10767 Bool) (index!42192 (_ BitVec 32)) (x!109929 (_ BitVec 32))) (Undefined!9955) (MissingVacant!9955 (index!42193 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!80765 (_ BitVec 32)) SeekEntryResult!9955)

(assert (=> b!1249720 (= res!833702 (= (seekEntryOrOpen!0 (select (arr!38945 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9955 #b00000000000000000000000000000000)))))

(assert (=> b!1249720 (=> (not res!833702) (not e!709381))))

(declare-fun b!1249721 () Bool)

(declare-fun e!709383 () Bool)

(assert (=> b!1249721 (= e!709383 e!709382)))

(declare-fun c!122073 () Bool)

(assert (=> b!1249721 (= c!122073 (validKeyInArray!0 (select (arr!38945 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1249722 () Bool)

(declare-fun call!61580 () Bool)

(assert (=> b!1249722 (= e!709381 call!61580)))

(declare-fun d!137785 () Bool)

(declare-fun res!833703 () Bool)

(assert (=> d!137785 (=> res!833703 e!709383)))

(assert (=> d!137785 (= res!833703 (bvsge #b00000000000000000000000000000000 (size!39482 _keys!1118)))))

(assert (=> d!137785 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!709383)))

(declare-fun b!1249723 () Bool)

(assert (=> b!1249723 (= e!709382 call!61580)))

(declare-fun bm!61577 () Bool)

(assert (=> bm!61577 (= call!61580 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(assert (= (and d!137785 (not res!833703)) b!1249721))

(assert (= (and b!1249721 c!122073) b!1249720))

(assert (= (and b!1249721 (not c!122073)) b!1249723))

(assert (= (and b!1249720 res!833702) b!1249722))

(assert (= (or b!1249722 b!1249723) bm!61577))

(assert (=> b!1249720 m!1150631))

(declare-fun m!1150639 () Bool)

(assert (=> b!1249720 m!1150639))

(declare-fun m!1150641 () Bool)

(assert (=> b!1249720 m!1150641))

(assert (=> b!1249720 m!1150631))

(declare-fun m!1150643 () Bool)

(assert (=> b!1249720 m!1150643))

(assert (=> b!1249721 m!1150631))

(assert (=> b!1249721 m!1150631))

(assert (=> b!1249721 m!1150633))

(declare-fun m!1150645 () Bool)

(assert (=> bm!61577 m!1150645))

(assert (=> b!1249674 d!137785))

(declare-fun d!137787 () Bool)

(assert (=> d!137787 (= (getCurrentListMapNoExtraKeys!5614 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5614 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!563829 () Unit!41445)

(declare-fun choose!1855 (array!80765 array!80767 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47441 V!47441 V!47441 V!47441 (_ BitVec 32) Int) Unit!41445)

(assert (=> d!137787 (= lt!563829 (choose!1855 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!137787 (validMask!0 mask!1466)))

(assert (=> d!137787 (= (lemmaNoChangeToArrayThenSameMapNoExtras!932 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!563829)))

(declare-fun bs!35269 () Bool)

(assert (= bs!35269 d!137787))

(assert (=> bs!35269 m!1150599))

(assert (=> bs!35269 m!1150597))

(declare-fun m!1150647 () Bool)

(assert (=> bs!35269 m!1150647))

(assert (=> bs!35269 m!1150603))

(assert (=> b!1249670 d!137787))

(declare-fun b!1249748 () Bool)

(declare-fun e!709401 () Bool)

(declare-fun lt!563846 () ListLongMap!18431)

(declare-fun isEmpty!1025 (ListLongMap!18431) Bool)

(assert (=> b!1249748 (= e!709401 (isEmpty!1025 lt!563846))))

(declare-fun b!1249749 () Bool)

(declare-fun res!833712 () Bool)

(declare-fun e!709398 () Bool)

(assert (=> b!1249749 (=> (not res!833712) (not e!709398))))

(declare-fun contains!7489 (ListLongMap!18431 (_ BitVec 64)) Bool)

(assert (=> b!1249749 (= res!833712 (not (contains!7489 lt!563846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1249750 () Bool)

(assert (=> b!1249750 (= e!709401 (= lt!563846 (getCurrentListMapNoExtraKeys!5614 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1249751 () Bool)

(declare-fun e!709399 () ListLongMap!18431)

(assert (=> b!1249751 (= e!709399 (ListLongMap!18432 Nil!27806))))

(declare-fun d!137789 () Bool)

(assert (=> d!137789 e!709398))

(declare-fun res!833714 () Bool)

(assert (=> d!137789 (=> (not res!833714) (not e!709398))))

(assert (=> d!137789 (= res!833714 (not (contains!7489 lt!563846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!137789 (= lt!563846 e!709399)))

(declare-fun c!122082 () Bool)

(assert (=> d!137789 (= c!122082 (bvsge #b00000000000000000000000000000000 (size!39482 _keys!1118)))))

(assert (=> d!137789 (validMask!0 mask!1466)))

(assert (=> d!137789 (= (getCurrentListMapNoExtraKeys!5614 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!563846)))

(declare-fun b!1249752 () Bool)

(assert (=> b!1249752 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39482 _keys!1118)))))

(assert (=> b!1249752 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39483 _values!914)))))

(declare-fun e!709402 () Bool)

(declare-fun apply!1015 (ListLongMap!18431 (_ BitVec 64)) V!47441)

(declare-fun get!20023 (ValueCell!15015 V!47441) V!47441)

(declare-fun dynLambda!3460 (Int (_ BitVec 64)) V!47441)

(assert (=> b!1249752 (= e!709402 (= (apply!1015 lt!563846 (select (arr!38945 _keys!1118) #b00000000000000000000000000000000)) (get!20023 (select (arr!38946 _values!914) #b00000000000000000000000000000000) (dynLambda!3460 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1249753 () Bool)

(declare-fun e!709400 () Bool)

(assert (=> b!1249753 (= e!709400 e!709402)))

(assert (=> b!1249753 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39482 _keys!1118)))))

(declare-fun res!833715 () Bool)

(assert (=> b!1249753 (= res!833715 (contains!7489 lt!563846 (select (arr!38945 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1249753 (=> (not res!833715) (not e!709402))))

(declare-fun b!1249754 () Bool)

(declare-fun e!709403 () ListLongMap!18431)

(assert (=> b!1249754 (= e!709399 e!709403)))

(declare-fun c!122085 () Bool)

(assert (=> b!1249754 (= c!122085 (validKeyInArray!0 (select (arr!38945 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1249755 () Bool)

(declare-fun e!709404 () Bool)

(assert (=> b!1249755 (= e!709404 (validKeyInArray!0 (select (arr!38945 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1249755 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1249756 () Bool)

(declare-fun lt!563847 () Unit!41445)

(declare-fun lt!563848 () Unit!41445)

(assert (=> b!1249756 (= lt!563847 lt!563848)))

(declare-fun lt!563845 () V!47441)

(declare-fun lt!563844 () (_ BitVec 64))

(declare-fun lt!563849 () (_ BitVec 64))

(declare-fun lt!563850 () ListLongMap!18431)

(declare-fun +!4124 (ListLongMap!18431 tuple2!20546) ListLongMap!18431)

(assert (=> b!1249756 (not (contains!7489 (+!4124 lt!563850 (tuple2!20547 lt!563844 lt!563845)) lt!563849))))

(declare-fun addStillNotContains!310 (ListLongMap!18431 (_ BitVec 64) V!47441 (_ BitVec 64)) Unit!41445)

(assert (=> b!1249756 (= lt!563848 (addStillNotContains!310 lt!563850 lt!563844 lt!563845 lt!563849))))

(assert (=> b!1249756 (= lt!563849 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1249756 (= lt!563845 (get!20023 (select (arr!38946 _values!914) #b00000000000000000000000000000000) (dynLambda!3460 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1249756 (= lt!563844 (select (arr!38945 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun call!61583 () ListLongMap!18431)

(assert (=> b!1249756 (= lt!563850 call!61583)))

(assert (=> b!1249756 (= e!709403 (+!4124 call!61583 (tuple2!20547 (select (arr!38945 _keys!1118) #b00000000000000000000000000000000) (get!20023 (select (arr!38946 _values!914) #b00000000000000000000000000000000) (dynLambda!3460 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1249757 () Bool)

(assert (=> b!1249757 (= e!709400 e!709401)))

(declare-fun c!122084 () Bool)

(assert (=> b!1249757 (= c!122084 (bvslt #b00000000000000000000000000000000 (size!39482 _keys!1118)))))

(declare-fun b!1249758 () Bool)

(assert (=> b!1249758 (= e!709403 call!61583)))

(declare-fun bm!61580 () Bool)

(assert (=> bm!61580 (= call!61583 (getCurrentListMapNoExtraKeys!5614 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1249759 () Bool)

(assert (=> b!1249759 (= e!709398 e!709400)))

(declare-fun c!122083 () Bool)

(assert (=> b!1249759 (= c!122083 e!709404)))

(declare-fun res!833713 () Bool)

(assert (=> b!1249759 (=> (not res!833713) (not e!709404))))

(assert (=> b!1249759 (= res!833713 (bvslt #b00000000000000000000000000000000 (size!39482 _keys!1118)))))

(assert (= (and d!137789 c!122082) b!1249751))

(assert (= (and d!137789 (not c!122082)) b!1249754))

(assert (= (and b!1249754 c!122085) b!1249756))

(assert (= (and b!1249754 (not c!122085)) b!1249758))

(assert (= (or b!1249756 b!1249758) bm!61580))

(assert (= (and d!137789 res!833714) b!1249749))

(assert (= (and b!1249749 res!833712) b!1249759))

(assert (= (and b!1249759 res!833713) b!1249755))

(assert (= (and b!1249759 c!122083) b!1249753))

(assert (= (and b!1249759 (not c!122083)) b!1249757))

(assert (= (and b!1249753 res!833715) b!1249752))

(assert (= (and b!1249757 c!122084) b!1249750))

(assert (= (and b!1249757 (not c!122084)) b!1249748))

(declare-fun b_lambda!22521 () Bool)

(assert (=> (not b_lambda!22521) (not b!1249752)))

(declare-fun t!41292 () Bool)

(declare-fun tb!11295 () Bool)

(assert (=> (and start!104886 (= defaultEntry!922 defaultEntry!922) t!41292) tb!11295))

(declare-fun result!23277 () Bool)

(assert (=> tb!11295 (= result!23277 tp_is_empty!31557)))

(assert (=> b!1249752 t!41292))

(declare-fun b_and!44437 () Bool)

(assert (= b_and!44433 (and (=> t!41292 result!23277) b_and!44437)))

(declare-fun b_lambda!22523 () Bool)

(assert (=> (not b_lambda!22523) (not b!1249756)))

(assert (=> b!1249756 t!41292))

(declare-fun b_and!44439 () Bool)

(assert (= b_and!44437 (and (=> t!41292 result!23277) b_and!44439)))

(declare-fun m!1150649 () Bool)

(assert (=> b!1249748 m!1150649))

(declare-fun m!1150651 () Bool)

(assert (=> bm!61580 m!1150651))

(declare-fun m!1150653 () Bool)

(assert (=> d!137789 m!1150653))

(assert (=> d!137789 m!1150603))

(assert (=> b!1249753 m!1150631))

(assert (=> b!1249753 m!1150631))

(declare-fun m!1150655 () Bool)

(assert (=> b!1249753 m!1150655))

(assert (=> b!1249754 m!1150631))

(assert (=> b!1249754 m!1150631))

(assert (=> b!1249754 m!1150633))

(declare-fun m!1150657 () Bool)

(assert (=> b!1249752 m!1150657))

(declare-fun m!1150659 () Bool)

(assert (=> b!1249752 m!1150659))

(declare-fun m!1150661 () Bool)

(assert (=> b!1249752 m!1150661))

(assert (=> b!1249752 m!1150631))

(assert (=> b!1249752 m!1150659))

(assert (=> b!1249752 m!1150631))

(declare-fun m!1150663 () Bool)

(assert (=> b!1249752 m!1150663))

(assert (=> b!1249752 m!1150657))

(assert (=> b!1249755 m!1150631))

(assert (=> b!1249755 m!1150631))

(assert (=> b!1249755 m!1150633))

(declare-fun m!1150665 () Bool)

(assert (=> b!1249749 m!1150665))

(assert (=> b!1249756 m!1150657))

(assert (=> b!1249756 m!1150659))

(assert (=> b!1249756 m!1150661))

(declare-fun m!1150667 () Bool)

(assert (=> b!1249756 m!1150667))

(assert (=> b!1249756 m!1150631))

(assert (=> b!1249756 m!1150659))

(declare-fun m!1150669 () Bool)

(assert (=> b!1249756 m!1150669))

(assert (=> b!1249756 m!1150669))

(declare-fun m!1150671 () Bool)

(assert (=> b!1249756 m!1150671))

(declare-fun m!1150673 () Bool)

(assert (=> b!1249756 m!1150673))

(assert (=> b!1249756 m!1150657))

(assert (=> b!1249750 m!1150651))

(assert (=> b!1249670 d!137789))

(declare-fun b!1249762 () Bool)

(declare-fun e!709408 () Bool)

(declare-fun lt!563853 () ListLongMap!18431)

(assert (=> b!1249762 (= e!709408 (isEmpty!1025 lt!563853))))

(declare-fun b!1249763 () Bool)

(declare-fun res!833716 () Bool)

(declare-fun e!709405 () Bool)

(assert (=> b!1249763 (=> (not res!833716) (not e!709405))))

(assert (=> b!1249763 (= res!833716 (not (contains!7489 lt!563853 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1249764 () Bool)

(assert (=> b!1249764 (= e!709408 (= lt!563853 (getCurrentListMapNoExtraKeys!5614 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1249765 () Bool)

(declare-fun e!709406 () ListLongMap!18431)

(assert (=> b!1249765 (= e!709406 (ListLongMap!18432 Nil!27806))))

(declare-fun d!137791 () Bool)

(assert (=> d!137791 e!709405))

(declare-fun res!833718 () Bool)

(assert (=> d!137791 (=> (not res!833718) (not e!709405))))

(assert (=> d!137791 (= res!833718 (not (contains!7489 lt!563853 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!137791 (= lt!563853 e!709406)))

(declare-fun c!122086 () Bool)

(assert (=> d!137791 (= c!122086 (bvsge #b00000000000000000000000000000000 (size!39482 _keys!1118)))))

(assert (=> d!137791 (validMask!0 mask!1466)))

(assert (=> d!137791 (= (getCurrentListMapNoExtraKeys!5614 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!563853)))

(declare-fun b!1249766 () Bool)

(assert (=> b!1249766 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39482 _keys!1118)))))

(assert (=> b!1249766 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39483 _values!914)))))

(declare-fun e!709409 () Bool)

(assert (=> b!1249766 (= e!709409 (= (apply!1015 lt!563853 (select (arr!38945 _keys!1118) #b00000000000000000000000000000000)) (get!20023 (select (arr!38946 _values!914) #b00000000000000000000000000000000) (dynLambda!3460 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1249767 () Bool)

(declare-fun e!709407 () Bool)

(assert (=> b!1249767 (= e!709407 e!709409)))

(assert (=> b!1249767 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39482 _keys!1118)))))

(declare-fun res!833719 () Bool)

(assert (=> b!1249767 (= res!833719 (contains!7489 lt!563853 (select (arr!38945 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1249767 (=> (not res!833719) (not e!709409))))

(declare-fun b!1249768 () Bool)

(declare-fun e!709410 () ListLongMap!18431)

(assert (=> b!1249768 (= e!709406 e!709410)))

(declare-fun c!122089 () Bool)

(assert (=> b!1249768 (= c!122089 (validKeyInArray!0 (select (arr!38945 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1249769 () Bool)

(declare-fun e!709411 () Bool)

(assert (=> b!1249769 (= e!709411 (validKeyInArray!0 (select (arr!38945 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1249769 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1249770 () Bool)

(declare-fun lt!563854 () Unit!41445)

(declare-fun lt!563855 () Unit!41445)

(assert (=> b!1249770 (= lt!563854 lt!563855)))

(declare-fun lt!563857 () ListLongMap!18431)

(declare-fun lt!563856 () (_ BitVec 64))

(declare-fun lt!563851 () (_ BitVec 64))

(declare-fun lt!563852 () V!47441)

(assert (=> b!1249770 (not (contains!7489 (+!4124 lt!563857 (tuple2!20547 lt!563851 lt!563852)) lt!563856))))

(assert (=> b!1249770 (= lt!563855 (addStillNotContains!310 lt!563857 lt!563851 lt!563852 lt!563856))))

(assert (=> b!1249770 (= lt!563856 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1249770 (= lt!563852 (get!20023 (select (arr!38946 _values!914) #b00000000000000000000000000000000) (dynLambda!3460 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1249770 (= lt!563851 (select (arr!38945 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun call!61584 () ListLongMap!18431)

(assert (=> b!1249770 (= lt!563857 call!61584)))

(assert (=> b!1249770 (= e!709410 (+!4124 call!61584 (tuple2!20547 (select (arr!38945 _keys!1118) #b00000000000000000000000000000000) (get!20023 (select (arr!38946 _values!914) #b00000000000000000000000000000000) (dynLambda!3460 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1249771 () Bool)

(assert (=> b!1249771 (= e!709407 e!709408)))

(declare-fun c!122088 () Bool)

(assert (=> b!1249771 (= c!122088 (bvslt #b00000000000000000000000000000000 (size!39482 _keys!1118)))))

(declare-fun b!1249772 () Bool)

(assert (=> b!1249772 (= e!709410 call!61584)))

(declare-fun bm!61581 () Bool)

(assert (=> bm!61581 (= call!61584 (getCurrentListMapNoExtraKeys!5614 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1249773 () Bool)

(assert (=> b!1249773 (= e!709405 e!709407)))

(declare-fun c!122087 () Bool)

(assert (=> b!1249773 (= c!122087 e!709411)))

(declare-fun res!833717 () Bool)

(assert (=> b!1249773 (=> (not res!833717) (not e!709411))))

(assert (=> b!1249773 (= res!833717 (bvslt #b00000000000000000000000000000000 (size!39482 _keys!1118)))))

(assert (= (and d!137791 c!122086) b!1249765))

(assert (= (and d!137791 (not c!122086)) b!1249768))

(assert (= (and b!1249768 c!122089) b!1249770))

(assert (= (and b!1249768 (not c!122089)) b!1249772))

(assert (= (or b!1249770 b!1249772) bm!61581))

(assert (= (and d!137791 res!833718) b!1249763))

(assert (= (and b!1249763 res!833716) b!1249773))

(assert (= (and b!1249773 res!833717) b!1249769))

(assert (= (and b!1249773 c!122087) b!1249767))

(assert (= (and b!1249773 (not c!122087)) b!1249771))

(assert (= (and b!1249767 res!833719) b!1249766))

(assert (= (and b!1249771 c!122088) b!1249764))

(assert (= (and b!1249771 (not c!122088)) b!1249762))

(declare-fun b_lambda!22525 () Bool)

(assert (=> (not b_lambda!22525) (not b!1249766)))

(assert (=> b!1249766 t!41292))

(declare-fun b_and!44441 () Bool)

(assert (= b_and!44439 (and (=> t!41292 result!23277) b_and!44441)))

(declare-fun b_lambda!22527 () Bool)

(assert (=> (not b_lambda!22527) (not b!1249770)))

(assert (=> b!1249770 t!41292))

(declare-fun b_and!44443 () Bool)

(assert (= b_and!44441 (and (=> t!41292 result!23277) b_and!44443)))

(declare-fun m!1150675 () Bool)

(assert (=> b!1249762 m!1150675))

(declare-fun m!1150677 () Bool)

(assert (=> bm!61581 m!1150677))

(declare-fun m!1150679 () Bool)

(assert (=> d!137791 m!1150679))

(assert (=> d!137791 m!1150603))

(assert (=> b!1249767 m!1150631))

(assert (=> b!1249767 m!1150631))

(declare-fun m!1150681 () Bool)

(assert (=> b!1249767 m!1150681))

(assert (=> b!1249768 m!1150631))

(assert (=> b!1249768 m!1150631))

(assert (=> b!1249768 m!1150633))

(assert (=> b!1249766 m!1150657))

(assert (=> b!1249766 m!1150659))

(assert (=> b!1249766 m!1150661))

(assert (=> b!1249766 m!1150631))

(assert (=> b!1249766 m!1150659))

(assert (=> b!1249766 m!1150631))

(declare-fun m!1150683 () Bool)

(assert (=> b!1249766 m!1150683))

(assert (=> b!1249766 m!1150657))

(assert (=> b!1249769 m!1150631))

(assert (=> b!1249769 m!1150631))

(assert (=> b!1249769 m!1150633))

(declare-fun m!1150685 () Bool)

(assert (=> b!1249763 m!1150685))

(assert (=> b!1249770 m!1150657))

(assert (=> b!1249770 m!1150659))

(assert (=> b!1249770 m!1150661))

(declare-fun m!1150687 () Bool)

(assert (=> b!1249770 m!1150687))

(assert (=> b!1249770 m!1150631))

(assert (=> b!1249770 m!1150659))

(declare-fun m!1150689 () Bool)

(assert (=> b!1249770 m!1150689))

(assert (=> b!1249770 m!1150689))

(declare-fun m!1150691 () Bool)

(assert (=> b!1249770 m!1150691))

(declare-fun m!1150693 () Bool)

(assert (=> b!1249770 m!1150693))

(assert (=> b!1249770 m!1150657))

(assert (=> b!1249764 m!1150677))

(assert (=> b!1249670 d!137791))

(declare-fun d!137793 () Bool)

(assert (=> d!137793 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!104886 d!137793))

(declare-fun d!137795 () Bool)

(assert (=> d!137795 (= (array_inv!29645 _keys!1118) (bvsge (size!39482 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!104886 d!137795))

(declare-fun d!137797 () Bool)

(assert (=> d!137797 (= (array_inv!29646 _values!914) (bvsge (size!39483 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!104886 d!137797))

(declare-fun mapIsEmpty!49102 () Bool)

(declare-fun mapRes!49102 () Bool)

(assert (=> mapIsEmpty!49102 mapRes!49102))

(declare-fun b!1249781 () Bool)

(declare-fun e!709417 () Bool)

(assert (=> b!1249781 (= e!709417 tp_is_empty!31557)))

(declare-fun b!1249780 () Bool)

(declare-fun e!709416 () Bool)

(assert (=> b!1249780 (= e!709416 tp_is_empty!31557)))

(declare-fun condMapEmpty!49102 () Bool)

(declare-fun mapDefault!49102 () ValueCell!15015)

(assert (=> mapNonEmpty!49096 (= condMapEmpty!49102 (= mapRest!49096 ((as const (Array (_ BitVec 32) ValueCell!15015)) mapDefault!49102)))))

(assert (=> mapNonEmpty!49096 (= tp!93455 (and e!709417 mapRes!49102))))

(declare-fun mapNonEmpty!49102 () Bool)

(declare-fun tp!93465 () Bool)

(assert (=> mapNonEmpty!49102 (= mapRes!49102 (and tp!93465 e!709416))))

(declare-fun mapKey!49102 () (_ BitVec 32))

(declare-fun mapValue!49102 () ValueCell!15015)

(declare-fun mapRest!49102 () (Array (_ BitVec 32) ValueCell!15015))

(assert (=> mapNonEmpty!49102 (= mapRest!49096 (store mapRest!49102 mapKey!49102 mapValue!49102))))

(assert (= (and mapNonEmpty!49096 condMapEmpty!49102) mapIsEmpty!49102))

(assert (= (and mapNonEmpty!49096 (not condMapEmpty!49102)) mapNonEmpty!49102))

(assert (= (and mapNonEmpty!49102 ((_ is ValueCellFull!15015) mapValue!49102)) b!1249780))

(assert (= (and mapNonEmpty!49096 ((_ is ValueCellFull!15015) mapDefault!49102)) b!1249781))

(declare-fun m!1150695 () Bool)

(assert (=> mapNonEmpty!49102 m!1150695))

(declare-fun b_lambda!22529 () Bool)

(assert (= b_lambda!22523 (or (and start!104886 b_free!26655) b_lambda!22529)))

(declare-fun b_lambda!22531 () Bool)

(assert (= b_lambda!22521 (or (and start!104886 b_free!26655) b_lambda!22531)))

(declare-fun b_lambda!22533 () Bool)

(assert (= b_lambda!22527 (or (and start!104886 b_free!26655) b_lambda!22533)))

(declare-fun b_lambda!22535 () Bool)

(assert (= b_lambda!22525 (or (and start!104886 b_free!26655) b_lambda!22535)))

(check-sat (not d!137789) (not b!1249711) (not b!1249750) (not b!1249720) (not b!1249749) (not b_lambda!22531) (not b!1249708) (not b!1249763) (not b!1249770) (not b!1249748) (not b!1249764) (not b!1249767) (not b!1249768) (not bm!61580) (not b_next!26655) (not b!1249769) (not d!137791) (not b_lambda!22529) (not bm!61574) (not b!1249754) (not bm!61581) (not bm!61577) (not b!1249752) tp_is_empty!31557 (not b!1249766) b_and!44443 (not b_lambda!22533) (not b!1249721) (not mapNonEmpty!49102) (not b!1249709) (not b_lambda!22535) (not b!1249753) (not b!1249762) (not d!137787) (not b!1249755) (not b!1249756))
(check-sat b_and!44443 (not b_next!26655))
