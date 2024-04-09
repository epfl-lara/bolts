; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16044 () Bool)

(assert start!16044)

(declare-fun b!159066 () Bool)

(declare-fun b_free!3507 () Bool)

(declare-fun b_next!3507 () Bool)

(assert (=> b!159066 (= b_free!3507 (not b_next!3507))))

(declare-fun tp!13088 () Bool)

(declare-fun b_and!9939 () Bool)

(assert (=> b!159066 (= tp!13088 b_and!9939)))

(declare-fun b!159059 () Bool)

(declare-fun e!104156 () Bool)

(declare-datatypes ((V!4059 0))(
  ( (V!4060 (val!1699 Int)) )
))
(declare-datatypes ((ValueCell!1311 0))(
  ( (ValueCellFull!1311 (v!3560 V!4059)) (EmptyCell!1311) )
))
(declare-datatypes ((array!5694 0))(
  ( (array!5695 (arr!2692 (Array (_ BitVec 32) (_ BitVec 64))) (size!2976 (_ BitVec 32))) )
))
(declare-datatypes ((array!5696 0))(
  ( (array!5697 (arr!2693 (Array (_ BitVec 32) ValueCell!1311)) (size!2977 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1530 0))(
  ( (LongMapFixedSize!1531 (defaultEntry!3207 Int) (mask!7748 (_ BitVec 32)) (extraKeys!2948 (_ BitVec 32)) (zeroValue!3050 V!4059) (minValue!3050 V!4059) (_size!814 (_ BitVec 32)) (_keys!5006 array!5694) (_values!3190 array!5696) (_vacant!814 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1530)

(assert (=> b!159059 (= e!104156 (bvsgt #b00000000000000000000000000000000 (size!2976 (_keys!5006 thiss!1248))))))

(declare-fun b!159060 () Bool)

(declare-fun e!104151 () Bool)

(declare-fun e!104152 () Bool)

(declare-fun mapRes!5648 () Bool)

(assert (=> b!159060 (= e!104151 (and e!104152 mapRes!5648))))

(declare-fun condMapEmpty!5648 () Bool)

(declare-fun mapDefault!5648 () ValueCell!1311)

(assert (=> b!159060 (= condMapEmpty!5648 (= (arr!2693 (_values!3190 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1311)) mapDefault!5648)))))

(declare-fun b!159061 () Bool)

(declare-fun res!75129 () Bool)

(assert (=> b!159061 (=> (not res!75129) (not e!104156))))

(declare-fun key!828 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!318 0))(
  ( (MissingZero!318 (index!3440 (_ BitVec 32))) (Found!318 (index!3441 (_ BitVec 32))) (Intermediate!318 (undefined!1130 Bool) (index!3442 (_ BitVec 32)) (x!17582 (_ BitVec 32))) (Undefined!318) (MissingVacant!318 (index!3443 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5694 (_ BitVec 32)) SeekEntryResult!318)

(assert (=> b!159061 (= res!75129 ((_ is Undefined!318) (seekEntryOrOpen!0 key!828 (_keys!5006 thiss!1248) (mask!7748 thiss!1248))))))

(declare-fun b!159062 () Bool)

(declare-fun res!75130 () Bool)

(assert (=> b!159062 (=> (not res!75130) (not e!104156))))

(assert (=> b!159062 (= res!75130 (and (= (size!2977 (_values!3190 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7748 thiss!1248))) (= (size!2976 (_keys!5006 thiss!1248)) (size!2977 (_values!3190 thiss!1248))) (bvsge (mask!7748 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2948 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2948 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!159063 () Bool)

(declare-fun res!75126 () Bool)

(assert (=> b!159063 (=> (not res!75126) (not e!104156))))

(declare-datatypes ((List!1910 0))(
  ( (Nil!1907) (Cons!1906 (h!2519 (_ BitVec 64)) (t!6720 List!1910)) )
))
(declare-fun arrayNoDuplicates!0 (array!5694 (_ BitVec 32) List!1910) Bool)

(assert (=> b!159063 (= res!75126 (arrayNoDuplicates!0 (_keys!5006 thiss!1248) #b00000000000000000000000000000000 Nil!1907))))

(declare-fun b!159064 () Bool)

(declare-fun res!75127 () Bool)

(assert (=> b!159064 (=> (not res!75127) (not e!104156))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!159064 (= res!75127 (validMask!0 (mask!7748 thiss!1248)))))

(declare-fun res!75128 () Bool)

(assert (=> start!16044 (=> (not res!75128) (not e!104156))))

(declare-fun valid!715 (LongMapFixedSize!1530) Bool)

(assert (=> start!16044 (= res!75128 (valid!715 thiss!1248))))

(assert (=> start!16044 e!104156))

(declare-fun e!104155 () Bool)

(assert (=> start!16044 e!104155))

(assert (=> start!16044 true))

(declare-fun b!159065 () Bool)

(declare-fun e!104154 () Bool)

(declare-fun tp_is_empty!3309 () Bool)

(assert (=> b!159065 (= e!104154 tp_is_empty!3309)))

(declare-fun mapNonEmpty!5648 () Bool)

(declare-fun tp!13087 () Bool)

(assert (=> mapNonEmpty!5648 (= mapRes!5648 (and tp!13087 e!104154))))

(declare-fun mapRest!5648 () (Array (_ BitVec 32) ValueCell!1311))

(declare-fun mapValue!5648 () ValueCell!1311)

(declare-fun mapKey!5648 () (_ BitVec 32))

(assert (=> mapNonEmpty!5648 (= (arr!2693 (_values!3190 thiss!1248)) (store mapRest!5648 mapKey!5648 mapValue!5648))))

(declare-fun array_inv!1705 (array!5694) Bool)

(declare-fun array_inv!1706 (array!5696) Bool)

(assert (=> b!159066 (= e!104155 (and tp!13088 tp_is_empty!3309 (array_inv!1705 (_keys!5006 thiss!1248)) (array_inv!1706 (_values!3190 thiss!1248)) e!104151))))

(declare-fun b!159067 () Bool)

(assert (=> b!159067 (= e!104152 tp_is_empty!3309)))

(declare-fun b!159068 () Bool)

(declare-fun res!75125 () Bool)

(assert (=> b!159068 (=> (not res!75125) (not e!104156))))

(assert (=> b!159068 (= res!75125 (not (= key!828 (bvneg key!828))))))

(declare-fun b!159069 () Bool)

(declare-fun res!75131 () Bool)

(assert (=> b!159069 (=> (not res!75131) (not e!104156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5694 (_ BitVec 32)) Bool)

(assert (=> b!159069 (= res!75131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5006 thiss!1248) (mask!7748 thiss!1248)))))

(declare-fun mapIsEmpty!5648 () Bool)

(assert (=> mapIsEmpty!5648 mapRes!5648))

(assert (= (and start!16044 res!75128) b!159068))

(assert (= (and b!159068 res!75125) b!159061))

(assert (= (and b!159061 res!75129) b!159064))

(assert (= (and b!159064 res!75127) b!159062))

(assert (= (and b!159062 res!75130) b!159069))

(assert (= (and b!159069 res!75131) b!159063))

(assert (= (and b!159063 res!75126) b!159059))

(assert (= (and b!159060 condMapEmpty!5648) mapIsEmpty!5648))

(assert (= (and b!159060 (not condMapEmpty!5648)) mapNonEmpty!5648))

(assert (= (and mapNonEmpty!5648 ((_ is ValueCellFull!1311) mapValue!5648)) b!159065))

(assert (= (and b!159060 ((_ is ValueCellFull!1311) mapDefault!5648)) b!159067))

(assert (= b!159066 b!159060))

(assert (= start!16044 b!159066))

(declare-fun m!191487 () Bool)

(assert (=> b!159066 m!191487))

(declare-fun m!191489 () Bool)

(assert (=> b!159066 m!191489))

(declare-fun m!191491 () Bool)

(assert (=> start!16044 m!191491))

(declare-fun m!191493 () Bool)

(assert (=> b!159063 m!191493))

(declare-fun m!191495 () Bool)

(assert (=> mapNonEmpty!5648 m!191495))

(declare-fun m!191497 () Bool)

(assert (=> b!159064 m!191497))

(declare-fun m!191499 () Bool)

(assert (=> b!159061 m!191499))

(declare-fun m!191501 () Bool)

(assert (=> b!159069 m!191501))

(check-sat (not b!159063) (not b!159069) b_and!9939 (not start!16044) tp_is_empty!3309 (not b_next!3507) (not b!159066) (not b!159061) (not mapNonEmpty!5648) (not b!159064))
(check-sat b_and!9939 (not b_next!3507))
(get-model)

(declare-fun b!159111 () Bool)

(declare-fun e!104181 () Bool)

(declare-fun call!17279 () Bool)

(assert (=> b!159111 (= e!104181 call!17279)))

(declare-fun b!159112 () Bool)

(declare-fun e!104183 () Bool)

(declare-fun e!104182 () Bool)

(assert (=> b!159112 (= e!104183 e!104182)))

(declare-fun c!29901 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!159112 (= c!29901 (validKeyInArray!0 (select (arr!2692 (_keys!5006 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!159113 () Bool)

(assert (=> b!159113 (= e!104182 call!17279)))

(declare-fun bm!17276 () Bool)

(assert (=> bm!17276 (= call!17279 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5006 thiss!1248) (mask!7748 thiss!1248)))))

(declare-fun b!159114 () Bool)

(assert (=> b!159114 (= e!104182 e!104181)))

(declare-fun lt!81988 () (_ BitVec 64))

(assert (=> b!159114 (= lt!81988 (select (arr!2692 (_keys!5006 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!4992 0))(
  ( (Unit!4993) )
))
(declare-fun lt!81987 () Unit!4992)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!5694 (_ BitVec 64) (_ BitVec 32)) Unit!4992)

(assert (=> b!159114 (= lt!81987 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5006 thiss!1248) lt!81988 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!5694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!159114 (arrayContainsKey!0 (_keys!5006 thiss!1248) lt!81988 #b00000000000000000000000000000000)))

(declare-fun lt!81989 () Unit!4992)

(assert (=> b!159114 (= lt!81989 lt!81987)))

(declare-fun res!75158 () Bool)

(assert (=> b!159114 (= res!75158 (= (seekEntryOrOpen!0 (select (arr!2692 (_keys!5006 thiss!1248)) #b00000000000000000000000000000000) (_keys!5006 thiss!1248) (mask!7748 thiss!1248)) (Found!318 #b00000000000000000000000000000000)))))

(assert (=> b!159114 (=> (not res!75158) (not e!104181))))

(declare-fun d!51171 () Bool)

(declare-fun res!75157 () Bool)

(assert (=> d!51171 (=> res!75157 e!104183)))

(assert (=> d!51171 (= res!75157 (bvsge #b00000000000000000000000000000000 (size!2976 (_keys!5006 thiss!1248))))))

(assert (=> d!51171 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5006 thiss!1248) (mask!7748 thiss!1248)) e!104183)))

(assert (= (and d!51171 (not res!75157)) b!159112))

(assert (= (and b!159112 c!29901) b!159114))

(assert (= (and b!159112 (not c!29901)) b!159113))

(assert (= (and b!159114 res!75158) b!159111))

(assert (= (or b!159111 b!159113) bm!17276))

(declare-fun m!191519 () Bool)

(assert (=> b!159112 m!191519))

(assert (=> b!159112 m!191519))

(declare-fun m!191521 () Bool)

(assert (=> b!159112 m!191521))

(declare-fun m!191523 () Bool)

(assert (=> bm!17276 m!191523))

(assert (=> b!159114 m!191519))

(declare-fun m!191525 () Bool)

(assert (=> b!159114 m!191525))

(declare-fun m!191527 () Bool)

(assert (=> b!159114 m!191527))

(assert (=> b!159114 m!191519))

(declare-fun m!191529 () Bool)

(assert (=> b!159114 m!191529))

(assert (=> b!159069 d!51171))

(declare-fun d!51173 () Bool)

(declare-fun lt!81996 () SeekEntryResult!318)

(assert (=> d!51173 (and (or ((_ is Undefined!318) lt!81996) (not ((_ is Found!318) lt!81996)) (and (bvsge (index!3441 lt!81996) #b00000000000000000000000000000000) (bvslt (index!3441 lt!81996) (size!2976 (_keys!5006 thiss!1248))))) (or ((_ is Undefined!318) lt!81996) ((_ is Found!318) lt!81996) (not ((_ is MissingZero!318) lt!81996)) (and (bvsge (index!3440 lt!81996) #b00000000000000000000000000000000) (bvslt (index!3440 lt!81996) (size!2976 (_keys!5006 thiss!1248))))) (or ((_ is Undefined!318) lt!81996) ((_ is Found!318) lt!81996) ((_ is MissingZero!318) lt!81996) (not ((_ is MissingVacant!318) lt!81996)) (and (bvsge (index!3443 lt!81996) #b00000000000000000000000000000000) (bvslt (index!3443 lt!81996) (size!2976 (_keys!5006 thiss!1248))))) (or ((_ is Undefined!318) lt!81996) (ite ((_ is Found!318) lt!81996) (= (select (arr!2692 (_keys!5006 thiss!1248)) (index!3441 lt!81996)) key!828) (ite ((_ is MissingZero!318) lt!81996) (= (select (arr!2692 (_keys!5006 thiss!1248)) (index!3440 lt!81996)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!318) lt!81996) (= (select (arr!2692 (_keys!5006 thiss!1248)) (index!3443 lt!81996)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!104190 () SeekEntryResult!318)

(assert (=> d!51173 (= lt!81996 e!104190)))

(declare-fun c!29910 () Bool)

(declare-fun lt!81997 () SeekEntryResult!318)

(assert (=> d!51173 (= c!29910 (and ((_ is Intermediate!318) lt!81997) (undefined!1130 lt!81997)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5694 (_ BitVec 32)) SeekEntryResult!318)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!51173 (= lt!81997 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!7748 thiss!1248)) key!828 (_keys!5006 thiss!1248) (mask!7748 thiss!1248)))))

(assert (=> d!51173 (validMask!0 (mask!7748 thiss!1248))))

(assert (=> d!51173 (= (seekEntryOrOpen!0 key!828 (_keys!5006 thiss!1248) (mask!7748 thiss!1248)) lt!81996)))

(declare-fun b!159127 () Bool)

(declare-fun e!104191 () SeekEntryResult!318)

(assert (=> b!159127 (= e!104191 (MissingZero!318 (index!3442 lt!81997)))))

(declare-fun b!159128 () Bool)

(declare-fun e!104192 () SeekEntryResult!318)

(assert (=> b!159128 (= e!104190 e!104192)))

(declare-fun lt!81998 () (_ BitVec 64))

(assert (=> b!159128 (= lt!81998 (select (arr!2692 (_keys!5006 thiss!1248)) (index!3442 lt!81997)))))

(declare-fun c!29908 () Bool)

(assert (=> b!159128 (= c!29908 (= lt!81998 key!828))))

(declare-fun b!159129 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5694 (_ BitVec 32)) SeekEntryResult!318)

(assert (=> b!159129 (= e!104191 (seekKeyOrZeroReturnVacant!0 (x!17582 lt!81997) (index!3442 lt!81997) (index!3442 lt!81997) key!828 (_keys!5006 thiss!1248) (mask!7748 thiss!1248)))))

(declare-fun b!159130 () Bool)

(assert (=> b!159130 (= e!104190 Undefined!318)))

(declare-fun b!159131 () Bool)

(assert (=> b!159131 (= e!104192 (Found!318 (index!3442 lt!81997)))))

(declare-fun b!159132 () Bool)

(declare-fun c!29909 () Bool)

(assert (=> b!159132 (= c!29909 (= lt!81998 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!159132 (= e!104192 e!104191)))

(assert (= (and d!51173 c!29910) b!159130))

(assert (= (and d!51173 (not c!29910)) b!159128))

(assert (= (and b!159128 c!29908) b!159131))

(assert (= (and b!159128 (not c!29908)) b!159132))

(assert (= (and b!159132 c!29909) b!159127))

(assert (= (and b!159132 (not c!29909)) b!159129))

(declare-fun m!191531 () Bool)

(assert (=> d!51173 m!191531))

(declare-fun m!191533 () Bool)

(assert (=> d!51173 m!191533))

(declare-fun m!191535 () Bool)

(assert (=> d!51173 m!191535))

(declare-fun m!191537 () Bool)

(assert (=> d!51173 m!191537))

(assert (=> d!51173 m!191497))

(declare-fun m!191539 () Bool)

(assert (=> d!51173 m!191539))

(assert (=> d!51173 m!191535))

(declare-fun m!191541 () Bool)

(assert (=> b!159128 m!191541))

(declare-fun m!191543 () Bool)

(assert (=> b!159129 m!191543))

(assert (=> b!159061 d!51173))

(declare-fun d!51175 () Bool)

(assert (=> d!51175 (= (array_inv!1705 (_keys!5006 thiss!1248)) (bvsge (size!2976 (_keys!5006 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!159066 d!51175))

(declare-fun d!51177 () Bool)

(assert (=> d!51177 (= (array_inv!1706 (_values!3190 thiss!1248)) (bvsge (size!2977 (_values!3190 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!159066 d!51177))

(declare-fun b!159143 () Bool)

(declare-fun e!104202 () Bool)

(declare-fun e!104203 () Bool)

(assert (=> b!159143 (= e!104202 e!104203)))

(declare-fun res!75167 () Bool)

(assert (=> b!159143 (=> (not res!75167) (not e!104203))))

(declare-fun e!104201 () Bool)

(assert (=> b!159143 (= res!75167 (not e!104201))))

(declare-fun res!75165 () Bool)

(assert (=> b!159143 (=> (not res!75165) (not e!104201))))

(assert (=> b!159143 (= res!75165 (validKeyInArray!0 (select (arr!2692 (_keys!5006 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!159144 () Bool)

(declare-fun contains!978 (List!1910 (_ BitVec 64)) Bool)

(assert (=> b!159144 (= e!104201 (contains!978 Nil!1907 (select (arr!2692 (_keys!5006 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!159145 () Bool)

(declare-fun e!104204 () Bool)

(declare-fun call!17282 () Bool)

(assert (=> b!159145 (= e!104204 call!17282)))

(declare-fun b!159146 () Bool)

(assert (=> b!159146 (= e!104204 call!17282)))

(declare-fun bm!17279 () Bool)

(declare-fun c!29913 () Bool)

(assert (=> bm!17279 (= call!17282 (arrayNoDuplicates!0 (_keys!5006 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!29913 (Cons!1906 (select (arr!2692 (_keys!5006 thiss!1248)) #b00000000000000000000000000000000) Nil!1907) Nil!1907)))))

(declare-fun d!51179 () Bool)

(declare-fun res!75166 () Bool)

(assert (=> d!51179 (=> res!75166 e!104202)))

(assert (=> d!51179 (= res!75166 (bvsge #b00000000000000000000000000000000 (size!2976 (_keys!5006 thiss!1248))))))

(assert (=> d!51179 (= (arrayNoDuplicates!0 (_keys!5006 thiss!1248) #b00000000000000000000000000000000 Nil!1907) e!104202)))

(declare-fun b!159147 () Bool)

(assert (=> b!159147 (= e!104203 e!104204)))

(assert (=> b!159147 (= c!29913 (validKeyInArray!0 (select (arr!2692 (_keys!5006 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!51179 (not res!75166)) b!159143))

(assert (= (and b!159143 res!75165) b!159144))

(assert (= (and b!159143 res!75167) b!159147))

(assert (= (and b!159147 c!29913) b!159145))

(assert (= (and b!159147 (not c!29913)) b!159146))

(assert (= (or b!159145 b!159146) bm!17279))

(assert (=> b!159143 m!191519))

(assert (=> b!159143 m!191519))

(assert (=> b!159143 m!191521))

(assert (=> b!159144 m!191519))

(assert (=> b!159144 m!191519))

(declare-fun m!191545 () Bool)

(assert (=> b!159144 m!191545))

(assert (=> bm!17279 m!191519))

(declare-fun m!191547 () Bool)

(assert (=> bm!17279 m!191547))

(assert (=> b!159147 m!191519))

(assert (=> b!159147 m!191519))

(assert (=> b!159147 m!191521))

(assert (=> b!159063 d!51179))

(declare-fun d!51181 () Bool)

(declare-fun res!75174 () Bool)

(declare-fun e!104207 () Bool)

(assert (=> d!51181 (=> (not res!75174) (not e!104207))))

(declare-fun simpleValid!116 (LongMapFixedSize!1530) Bool)

(assert (=> d!51181 (= res!75174 (simpleValid!116 thiss!1248))))

(assert (=> d!51181 (= (valid!715 thiss!1248) e!104207)))

(declare-fun b!159154 () Bool)

(declare-fun res!75175 () Bool)

(assert (=> b!159154 (=> (not res!75175) (not e!104207))))

(declare-fun arrayCountValidKeys!0 (array!5694 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!159154 (= res!75175 (= (arrayCountValidKeys!0 (_keys!5006 thiss!1248) #b00000000000000000000000000000000 (size!2976 (_keys!5006 thiss!1248))) (_size!814 thiss!1248)))))

(declare-fun b!159155 () Bool)

(declare-fun res!75176 () Bool)

(assert (=> b!159155 (=> (not res!75176) (not e!104207))))

(assert (=> b!159155 (= res!75176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5006 thiss!1248) (mask!7748 thiss!1248)))))

(declare-fun b!159156 () Bool)

(assert (=> b!159156 (= e!104207 (arrayNoDuplicates!0 (_keys!5006 thiss!1248) #b00000000000000000000000000000000 Nil!1907))))

(assert (= (and d!51181 res!75174) b!159154))

(assert (= (and b!159154 res!75175) b!159155))

(assert (= (and b!159155 res!75176) b!159156))

(declare-fun m!191549 () Bool)

(assert (=> d!51181 m!191549))

(declare-fun m!191551 () Bool)

(assert (=> b!159154 m!191551))

(assert (=> b!159155 m!191501))

(assert (=> b!159156 m!191493))

(assert (=> start!16044 d!51181))

(declare-fun d!51183 () Bool)

(assert (=> d!51183 (= (validMask!0 (mask!7748 thiss!1248)) (and (or (= (mask!7748 thiss!1248) #b00000000000000000000000000000111) (= (mask!7748 thiss!1248) #b00000000000000000000000000001111) (= (mask!7748 thiss!1248) #b00000000000000000000000000011111) (= (mask!7748 thiss!1248) #b00000000000000000000000000111111) (= (mask!7748 thiss!1248) #b00000000000000000000000001111111) (= (mask!7748 thiss!1248) #b00000000000000000000000011111111) (= (mask!7748 thiss!1248) #b00000000000000000000000111111111) (= (mask!7748 thiss!1248) #b00000000000000000000001111111111) (= (mask!7748 thiss!1248) #b00000000000000000000011111111111) (= (mask!7748 thiss!1248) #b00000000000000000000111111111111) (= (mask!7748 thiss!1248) #b00000000000000000001111111111111) (= (mask!7748 thiss!1248) #b00000000000000000011111111111111) (= (mask!7748 thiss!1248) #b00000000000000000111111111111111) (= (mask!7748 thiss!1248) #b00000000000000001111111111111111) (= (mask!7748 thiss!1248) #b00000000000000011111111111111111) (= (mask!7748 thiss!1248) #b00000000000000111111111111111111) (= (mask!7748 thiss!1248) #b00000000000001111111111111111111) (= (mask!7748 thiss!1248) #b00000000000011111111111111111111) (= (mask!7748 thiss!1248) #b00000000000111111111111111111111) (= (mask!7748 thiss!1248) #b00000000001111111111111111111111) (= (mask!7748 thiss!1248) #b00000000011111111111111111111111) (= (mask!7748 thiss!1248) #b00000000111111111111111111111111) (= (mask!7748 thiss!1248) #b00000001111111111111111111111111) (= (mask!7748 thiss!1248) #b00000011111111111111111111111111) (= (mask!7748 thiss!1248) #b00000111111111111111111111111111) (= (mask!7748 thiss!1248) #b00001111111111111111111111111111) (= (mask!7748 thiss!1248) #b00011111111111111111111111111111) (= (mask!7748 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!7748 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!159064 d!51183))

(declare-fun b!159163 () Bool)

(declare-fun e!104213 () Bool)

(assert (=> b!159163 (= e!104213 tp_is_empty!3309)))

(declare-fun mapIsEmpty!5654 () Bool)

(declare-fun mapRes!5654 () Bool)

(assert (=> mapIsEmpty!5654 mapRes!5654))

(declare-fun mapNonEmpty!5654 () Bool)

(declare-fun tp!13097 () Bool)

(assert (=> mapNonEmpty!5654 (= mapRes!5654 (and tp!13097 e!104213))))

(declare-fun mapValue!5654 () ValueCell!1311)

(declare-fun mapRest!5654 () (Array (_ BitVec 32) ValueCell!1311))

(declare-fun mapKey!5654 () (_ BitVec 32))

(assert (=> mapNonEmpty!5654 (= mapRest!5648 (store mapRest!5654 mapKey!5654 mapValue!5654))))

(declare-fun b!159164 () Bool)

(declare-fun e!104212 () Bool)

(assert (=> b!159164 (= e!104212 tp_is_empty!3309)))

(declare-fun condMapEmpty!5654 () Bool)

(declare-fun mapDefault!5654 () ValueCell!1311)

(assert (=> mapNonEmpty!5648 (= condMapEmpty!5654 (= mapRest!5648 ((as const (Array (_ BitVec 32) ValueCell!1311)) mapDefault!5654)))))

(assert (=> mapNonEmpty!5648 (= tp!13087 (and e!104212 mapRes!5654))))

(assert (= (and mapNonEmpty!5648 condMapEmpty!5654) mapIsEmpty!5654))

(assert (= (and mapNonEmpty!5648 (not condMapEmpty!5654)) mapNonEmpty!5654))

(assert (= (and mapNonEmpty!5654 ((_ is ValueCellFull!1311) mapValue!5654)) b!159163))

(assert (= (and mapNonEmpty!5648 ((_ is ValueCellFull!1311) mapDefault!5654)) b!159164))

(declare-fun m!191553 () Bool)

(assert (=> mapNonEmpty!5654 m!191553))

(check-sat (not b!159156) (not b!159143) (not b!159147) (not b!159155) (not b!159144) (not b!159112) b_and!9939 (not bm!17279) (not bm!17276) (not d!51181) (not b!159154) (not b!159114) tp_is_empty!3309 (not b_next!3507) (not d!51173) (not b!159129) (not mapNonEmpty!5654))
(check-sat b_and!9939 (not b_next!3507))
