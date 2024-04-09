; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16322 () Bool)

(assert start!16322)

(declare-fun b!162724 () Bool)

(declare-fun b_free!3771 () Bool)

(declare-fun b_next!3771 () Bool)

(assert (=> b!162724 (= b_free!3771 (not b_next!3771))))

(declare-fun tp!13882 () Bool)

(declare-fun b_and!10203 () Bool)

(assert (=> b!162724 (= tp!13882 b_and!10203)))

(declare-fun mapNonEmpty!6047 () Bool)

(declare-fun mapRes!6047 () Bool)

(declare-fun tp!13883 () Bool)

(declare-fun e!106742 () Bool)

(assert (=> mapNonEmpty!6047 (= mapRes!6047 (and tp!13883 e!106742))))

(declare-fun mapKey!6047 () (_ BitVec 32))

(declare-datatypes ((V!4411 0))(
  ( (V!4412 (val!1831 Int)) )
))
(declare-datatypes ((ValueCell!1443 0))(
  ( (ValueCellFull!1443 (v!3692 V!4411)) (EmptyCell!1443) )
))
(declare-fun mapRest!6047 () (Array (_ BitVec 32) ValueCell!1443))

(declare-datatypes ((array!6224 0))(
  ( (array!6225 (arr!2956 (Array (_ BitVec 32) (_ BitVec 64))) (size!3240 (_ BitVec 32))) )
))
(declare-datatypes ((array!6226 0))(
  ( (array!6227 (arr!2957 (Array (_ BitVec 32) ValueCell!1443)) (size!3241 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1794 0))(
  ( (LongMapFixedSize!1795 (defaultEntry!3339 Int) (mask!7971 (_ BitVec 32)) (extraKeys!3080 (_ BitVec 32)) (zeroValue!3182 V!4411) (minValue!3182 V!4411) (_size!946 (_ BitVec 32)) (_keys!5140 array!6224) (_values!3322 array!6226) (_vacant!946 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1794)

(declare-fun mapValue!6047 () ValueCell!1443)

(assert (=> mapNonEmpty!6047 (= (arr!2957 (_values!3322 thiss!1248)) (store mapRest!6047 mapKey!6047 mapValue!6047))))

(declare-fun b!162719 () Bool)

(declare-fun e!106743 () Bool)

(declare-fun tp_is_empty!3573 () Bool)

(assert (=> b!162719 (= e!106743 tp_is_empty!3573)))

(declare-fun res!77075 () Bool)

(declare-fun e!106746 () Bool)

(assert (=> start!16322 (=> (not res!77075) (not e!106746))))

(declare-fun valid!799 (LongMapFixedSize!1794) Bool)

(assert (=> start!16322 (= res!77075 (valid!799 thiss!1248))))

(assert (=> start!16322 e!106746))

(declare-fun e!106745 () Bool)

(assert (=> start!16322 e!106745))

(assert (=> start!16322 true))

(declare-fun mapIsEmpty!6047 () Bool)

(assert (=> mapIsEmpty!6047 mapRes!6047))

(declare-fun b!162720 () Bool)

(assert (=> b!162720 (= e!106742 tp_is_empty!3573)))

(declare-fun b!162721 () Bool)

(declare-fun res!77074 () Bool)

(assert (=> b!162721 (=> (not res!77074) (not e!106746))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!162721 (= res!77074 (not (= key!828 (bvneg key!828))))))

(declare-fun b!162722 () Bool)

(declare-fun e!106744 () Bool)

(assert (=> b!162722 (= e!106744 (and e!106743 mapRes!6047))))

(declare-fun condMapEmpty!6047 () Bool)

(declare-fun mapDefault!6047 () ValueCell!1443)

(assert (=> b!162722 (= condMapEmpty!6047 (= (arr!2957 (_values!3322 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1443)) mapDefault!6047)))))

(declare-fun b!162723 () Bool)

(declare-fun e!106747 () Bool)

(assert (=> b!162723 (= e!106746 e!106747)))

(declare-fun res!77073 () Bool)

(assert (=> b!162723 (=> (not res!77073) (not e!106747))))

(declare-datatypes ((SeekEntryResult!401 0))(
  ( (MissingZero!401 (index!3772 (_ BitVec 32))) (Found!401 (index!3773 (_ BitVec 32))) (Intermediate!401 (undefined!1213 Bool) (index!3774 (_ BitVec 32)) (x!18025 (_ BitVec 32))) (Undefined!401) (MissingVacant!401 (index!3775 (_ BitVec 32))) )
))
(declare-fun lt!82562 () SeekEntryResult!401)

(get-info :version)

(assert (=> b!162723 (= res!77073 (and (not ((_ is Undefined!401) lt!82562)) (not ((_ is MissingVacant!401) lt!82562)) (not ((_ is MissingZero!401) lt!82562)) ((_ is Found!401) lt!82562)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6224 (_ BitVec 32)) SeekEntryResult!401)

(assert (=> b!162723 (= lt!82562 (seekEntryOrOpen!0 key!828 (_keys!5140 thiss!1248) (mask!7971 thiss!1248)))))

(declare-fun array_inv!1879 (array!6224) Bool)

(declare-fun array_inv!1880 (array!6226) Bool)

(assert (=> b!162724 (= e!106745 (and tp!13882 tp_is_empty!3573 (array_inv!1879 (_keys!5140 thiss!1248)) (array_inv!1880 (_values!3322 thiss!1248)) e!106744))))

(declare-fun b!162725 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!162725 (= e!106747 (not (validMask!0 (mask!7971 thiss!1248))))))

(assert (= (and start!16322 res!77075) b!162721))

(assert (= (and b!162721 res!77074) b!162723))

(assert (= (and b!162723 res!77073) b!162725))

(assert (= (and b!162722 condMapEmpty!6047) mapIsEmpty!6047))

(assert (= (and b!162722 (not condMapEmpty!6047)) mapNonEmpty!6047))

(assert (= (and mapNonEmpty!6047 ((_ is ValueCellFull!1443) mapValue!6047)) b!162720))

(assert (= (and b!162722 ((_ is ValueCellFull!1443) mapDefault!6047)) b!162719))

(assert (= b!162724 b!162722))

(assert (= start!16322 b!162724))

(declare-fun m!193745 () Bool)

(assert (=> start!16322 m!193745))

(declare-fun m!193747 () Bool)

(assert (=> b!162723 m!193747))

(declare-fun m!193749 () Bool)

(assert (=> b!162725 m!193749))

(declare-fun m!193751 () Bool)

(assert (=> mapNonEmpty!6047 m!193751))

(declare-fun m!193753 () Bool)

(assert (=> b!162724 m!193753))

(declare-fun m!193755 () Bool)

(assert (=> b!162724 m!193755))

(check-sat b_and!10203 (not b!162723) (not b!162725) (not start!16322) (not mapNonEmpty!6047) tp_is_empty!3573 (not b_next!3771) (not b!162724))
(check-sat b_and!10203 (not b_next!3771))
(get-model)

(declare-fun d!51273 () Bool)

(assert (=> d!51273 (= (array_inv!1879 (_keys!5140 thiss!1248)) (bvsge (size!3240 (_keys!5140 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!162724 d!51273))

(declare-fun d!51275 () Bool)

(assert (=> d!51275 (= (array_inv!1880 (_values!3322 thiss!1248)) (bvsge (size!3241 (_values!3322 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!162724 d!51275))

(declare-fun d!51277 () Bool)

(assert (=> d!51277 (= (validMask!0 (mask!7971 thiss!1248)) (and (or (= (mask!7971 thiss!1248) #b00000000000000000000000000000111) (= (mask!7971 thiss!1248) #b00000000000000000000000000001111) (= (mask!7971 thiss!1248) #b00000000000000000000000000011111) (= (mask!7971 thiss!1248) #b00000000000000000000000000111111) (= (mask!7971 thiss!1248) #b00000000000000000000000001111111) (= (mask!7971 thiss!1248) #b00000000000000000000000011111111) (= (mask!7971 thiss!1248) #b00000000000000000000000111111111) (= (mask!7971 thiss!1248) #b00000000000000000000001111111111) (= (mask!7971 thiss!1248) #b00000000000000000000011111111111) (= (mask!7971 thiss!1248) #b00000000000000000000111111111111) (= (mask!7971 thiss!1248) #b00000000000000000001111111111111) (= (mask!7971 thiss!1248) #b00000000000000000011111111111111) (= (mask!7971 thiss!1248) #b00000000000000000111111111111111) (= (mask!7971 thiss!1248) #b00000000000000001111111111111111) (= (mask!7971 thiss!1248) #b00000000000000011111111111111111) (= (mask!7971 thiss!1248) #b00000000000000111111111111111111) (= (mask!7971 thiss!1248) #b00000000000001111111111111111111) (= (mask!7971 thiss!1248) #b00000000000011111111111111111111) (= (mask!7971 thiss!1248) #b00000000000111111111111111111111) (= (mask!7971 thiss!1248) #b00000000001111111111111111111111) (= (mask!7971 thiss!1248) #b00000000011111111111111111111111) (= (mask!7971 thiss!1248) #b00000000111111111111111111111111) (= (mask!7971 thiss!1248) #b00000001111111111111111111111111) (= (mask!7971 thiss!1248) #b00000011111111111111111111111111) (= (mask!7971 thiss!1248) #b00000111111111111111111111111111) (= (mask!7971 thiss!1248) #b00001111111111111111111111111111) (= (mask!7971 thiss!1248) #b00011111111111111111111111111111) (= (mask!7971 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!7971 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!162725 d!51277))

(declare-fun d!51279 () Bool)

(declare-fun res!77091 () Bool)

(declare-fun e!106772 () Bool)

(assert (=> d!51279 (=> (not res!77091) (not e!106772))))

(declare-fun simpleValid!117 (LongMapFixedSize!1794) Bool)

(assert (=> d!51279 (= res!77091 (simpleValid!117 thiss!1248))))

(assert (=> d!51279 (= (valid!799 thiss!1248) e!106772)))

(declare-fun b!162753 () Bool)

(declare-fun res!77092 () Bool)

(assert (=> b!162753 (=> (not res!77092) (not e!106772))))

(declare-fun arrayCountValidKeys!0 (array!6224 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!162753 (= res!77092 (= (arrayCountValidKeys!0 (_keys!5140 thiss!1248) #b00000000000000000000000000000000 (size!3240 (_keys!5140 thiss!1248))) (_size!946 thiss!1248)))))

(declare-fun b!162754 () Bool)

(declare-fun res!77093 () Bool)

(assert (=> b!162754 (=> (not res!77093) (not e!106772))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6224 (_ BitVec 32)) Bool)

(assert (=> b!162754 (= res!77093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5140 thiss!1248) (mask!7971 thiss!1248)))))

(declare-fun b!162755 () Bool)

(declare-datatypes ((List!2007 0))(
  ( (Nil!2004) (Cons!2003 (h!2616 (_ BitVec 64)) (t!6817 List!2007)) )
))
(declare-fun arrayNoDuplicates!0 (array!6224 (_ BitVec 32) List!2007) Bool)

(assert (=> b!162755 (= e!106772 (arrayNoDuplicates!0 (_keys!5140 thiss!1248) #b00000000000000000000000000000000 Nil!2004))))

(assert (= (and d!51279 res!77091) b!162753))

(assert (= (and b!162753 res!77092) b!162754))

(assert (= (and b!162754 res!77093) b!162755))

(declare-fun m!193769 () Bool)

(assert (=> d!51279 m!193769))

(declare-fun m!193771 () Bool)

(assert (=> b!162753 m!193771))

(declare-fun m!193773 () Bool)

(assert (=> b!162754 m!193773))

(declare-fun m!193775 () Bool)

(assert (=> b!162755 m!193775))

(assert (=> start!16322 d!51279))

(declare-fun b!162768 () Bool)

(declare-fun e!106780 () SeekEntryResult!401)

(assert (=> b!162768 (= e!106780 Undefined!401)))

(declare-fun b!162769 () Bool)

(declare-fun e!106781 () SeekEntryResult!401)

(assert (=> b!162769 (= e!106780 e!106781)))

(declare-fun lt!82573 () (_ BitVec 64))

(declare-fun lt!82574 () SeekEntryResult!401)

(assert (=> b!162769 (= lt!82573 (select (arr!2956 (_keys!5140 thiss!1248)) (index!3774 lt!82574)))))

(declare-fun c!29967 () Bool)

(assert (=> b!162769 (= c!29967 (= lt!82573 key!828))))

(declare-fun b!162770 () Bool)

(declare-fun c!29966 () Bool)

(assert (=> b!162770 (= c!29966 (= lt!82573 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!106779 () SeekEntryResult!401)

(assert (=> b!162770 (= e!106781 e!106779)))

(declare-fun d!51281 () Bool)

(declare-fun lt!82572 () SeekEntryResult!401)

(assert (=> d!51281 (and (or ((_ is Undefined!401) lt!82572) (not ((_ is Found!401) lt!82572)) (and (bvsge (index!3773 lt!82572) #b00000000000000000000000000000000) (bvslt (index!3773 lt!82572) (size!3240 (_keys!5140 thiss!1248))))) (or ((_ is Undefined!401) lt!82572) ((_ is Found!401) lt!82572) (not ((_ is MissingZero!401) lt!82572)) (and (bvsge (index!3772 lt!82572) #b00000000000000000000000000000000) (bvslt (index!3772 lt!82572) (size!3240 (_keys!5140 thiss!1248))))) (or ((_ is Undefined!401) lt!82572) ((_ is Found!401) lt!82572) ((_ is MissingZero!401) lt!82572) (not ((_ is MissingVacant!401) lt!82572)) (and (bvsge (index!3775 lt!82572) #b00000000000000000000000000000000) (bvslt (index!3775 lt!82572) (size!3240 (_keys!5140 thiss!1248))))) (or ((_ is Undefined!401) lt!82572) (ite ((_ is Found!401) lt!82572) (= (select (arr!2956 (_keys!5140 thiss!1248)) (index!3773 lt!82572)) key!828) (ite ((_ is MissingZero!401) lt!82572) (= (select (arr!2956 (_keys!5140 thiss!1248)) (index!3772 lt!82572)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!401) lt!82572) (= (select (arr!2956 (_keys!5140 thiss!1248)) (index!3775 lt!82572)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!51281 (= lt!82572 e!106780)))

(declare-fun c!29965 () Bool)

(assert (=> d!51281 (= c!29965 (and ((_ is Intermediate!401) lt!82574) (undefined!1213 lt!82574)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!6224 (_ BitVec 32)) SeekEntryResult!401)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!51281 (= lt!82574 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!7971 thiss!1248)) key!828 (_keys!5140 thiss!1248) (mask!7971 thiss!1248)))))

(assert (=> d!51281 (validMask!0 (mask!7971 thiss!1248))))

(assert (=> d!51281 (= (seekEntryOrOpen!0 key!828 (_keys!5140 thiss!1248) (mask!7971 thiss!1248)) lt!82572)))

(declare-fun b!162771 () Bool)

(assert (=> b!162771 (= e!106781 (Found!401 (index!3774 lt!82574)))))

(declare-fun b!162772 () Bool)

(assert (=> b!162772 (= e!106779 (MissingZero!401 (index!3774 lt!82574)))))

(declare-fun b!162773 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!6224 (_ BitVec 32)) SeekEntryResult!401)

(assert (=> b!162773 (= e!106779 (seekKeyOrZeroReturnVacant!0 (x!18025 lt!82574) (index!3774 lt!82574) (index!3774 lt!82574) key!828 (_keys!5140 thiss!1248) (mask!7971 thiss!1248)))))

(assert (= (and d!51281 c!29965) b!162768))

(assert (= (and d!51281 (not c!29965)) b!162769))

(assert (= (and b!162769 c!29967) b!162771))

(assert (= (and b!162769 (not c!29967)) b!162770))

(assert (= (and b!162770 c!29966) b!162772))

(assert (= (and b!162770 (not c!29966)) b!162773))

(declare-fun m!193777 () Bool)

(assert (=> b!162769 m!193777))

(assert (=> d!51281 m!193749))

(declare-fun m!193779 () Bool)

(assert (=> d!51281 m!193779))

(declare-fun m!193781 () Bool)

(assert (=> d!51281 m!193781))

(declare-fun m!193783 () Bool)

(assert (=> d!51281 m!193783))

(assert (=> d!51281 m!193781))

(declare-fun m!193785 () Bool)

(assert (=> d!51281 m!193785))

(declare-fun m!193787 () Bool)

(assert (=> d!51281 m!193787))

(declare-fun m!193789 () Bool)

(assert (=> b!162773 m!193789))

(assert (=> b!162723 d!51281))

(declare-fun mapNonEmpty!6053 () Bool)

(declare-fun mapRes!6053 () Bool)

(declare-fun tp!13892 () Bool)

(declare-fun e!106786 () Bool)

(assert (=> mapNonEmpty!6053 (= mapRes!6053 (and tp!13892 e!106786))))

(declare-fun mapKey!6053 () (_ BitVec 32))

(declare-fun mapRest!6053 () (Array (_ BitVec 32) ValueCell!1443))

(declare-fun mapValue!6053 () ValueCell!1443)

(assert (=> mapNonEmpty!6053 (= mapRest!6047 (store mapRest!6053 mapKey!6053 mapValue!6053))))

(declare-fun b!162780 () Bool)

(assert (=> b!162780 (= e!106786 tp_is_empty!3573)))

(declare-fun mapIsEmpty!6053 () Bool)

(assert (=> mapIsEmpty!6053 mapRes!6053))

(declare-fun condMapEmpty!6053 () Bool)

(declare-fun mapDefault!6053 () ValueCell!1443)

(assert (=> mapNonEmpty!6047 (= condMapEmpty!6053 (= mapRest!6047 ((as const (Array (_ BitVec 32) ValueCell!1443)) mapDefault!6053)))))

(declare-fun e!106787 () Bool)

(assert (=> mapNonEmpty!6047 (= tp!13883 (and e!106787 mapRes!6053))))

(declare-fun b!162781 () Bool)

(assert (=> b!162781 (= e!106787 tp_is_empty!3573)))

(assert (= (and mapNonEmpty!6047 condMapEmpty!6053) mapIsEmpty!6053))

(assert (= (and mapNonEmpty!6047 (not condMapEmpty!6053)) mapNonEmpty!6053))

(assert (= (and mapNonEmpty!6053 ((_ is ValueCellFull!1443) mapValue!6053)) b!162780))

(assert (= (and mapNonEmpty!6047 ((_ is ValueCellFull!1443) mapDefault!6053)) b!162781))

(declare-fun m!193791 () Bool)

(assert (=> mapNonEmpty!6053 m!193791))

(check-sat b_and!10203 tp_is_empty!3573 (not b!162755) (not d!51281) (not b!162753) (not d!51279) (not b!162754) (not b_next!3771) (not mapNonEmpty!6053) (not b!162773))
(check-sat b_and!10203 (not b_next!3771))
