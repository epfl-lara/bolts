; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17950 () Bool)

(assert start!17950)

(declare-fun b!178751 () Bool)

(declare-fun b_free!4413 () Bool)

(declare-fun b_next!4413 () Bool)

(assert (=> b!178751 (= b_free!4413 (not b_next!4413))))

(declare-fun tp!15956 () Bool)

(declare-fun b_and!10953 () Bool)

(assert (=> b!178751 (= tp!15956 b_and!10953)))

(declare-fun b!178746 () Bool)

(declare-fun res!84688 () Bool)

(declare-fun e!117812 () Bool)

(assert (=> b!178746 (=> (not res!84688) (not e!117812))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!5227 0))(
  ( (V!5228 (val!2137 Int)) )
))
(declare-datatypes ((ValueCell!1749 0))(
  ( (ValueCellFull!1749 (v!4018 V!5227)) (EmptyCell!1749) )
))
(declare-datatypes ((array!7530 0))(
  ( (array!7531 (arr!3568 (Array (_ BitVec 32) (_ BitVec 64))) (size!3875 (_ BitVec 32))) )
))
(declare-datatypes ((array!7532 0))(
  ( (array!7533 (arr!3569 (Array (_ BitVec 32) ValueCell!1749)) (size!3876 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2406 0))(
  ( (LongMapFixedSize!2407 (defaultEntry!3674 Int) (mask!8642 (_ BitVec 32)) (extraKeys!3411 (_ BitVec 32)) (zeroValue!3515 V!5227) (minValue!3515 V!5227) (_size!1252 (_ BitVec 32)) (_keys!5555 array!7530) (_values!3657 array!7532) (_vacant!1252 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2406)

(get-info :version)

(declare-datatypes ((SeekEntryResult!588 0))(
  ( (MissingZero!588 (index!4520 (_ BitVec 32))) (Found!588 (index!4521 (_ BitVec 32))) (Intermediate!588 (undefined!1400 Bool) (index!4522 (_ BitVec 32)) (x!19582 (_ BitVec 32))) (Undefined!588) (MissingVacant!588 (index!4523 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7530 (_ BitVec 32)) SeekEntryResult!588)

(assert (=> b!178746 (= res!84688 ((_ is Undefined!588) (seekEntryOrOpen!0 key!828 (_keys!5555 thiss!1248) (mask!8642 thiss!1248))))))

(declare-fun b!178747 () Bool)

(declare-fun res!84687 () Bool)

(assert (=> b!178747 (=> (not res!84687) (not e!117812))))

(assert (=> b!178747 (= res!84687 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!7158 () Bool)

(declare-fun mapRes!7158 () Bool)

(declare-fun tp!15957 () Bool)

(declare-fun e!117813 () Bool)

(assert (=> mapNonEmpty!7158 (= mapRes!7158 (and tp!15957 e!117813))))

(declare-fun mapKey!7158 () (_ BitVec 32))

(declare-fun mapValue!7158 () ValueCell!1749)

(declare-fun mapRest!7158 () (Array (_ BitVec 32) ValueCell!1749))

(assert (=> mapNonEmpty!7158 (= (arr!3569 (_values!3657 thiss!1248)) (store mapRest!7158 mapKey!7158 mapValue!7158))))

(declare-fun b!178748 () Bool)

(declare-fun res!84689 () Bool)

(assert (=> b!178748 (=> (not res!84689) (not e!117812))))

(declare-datatypes ((tuple2!3318 0))(
  ( (tuple2!3319 (_1!1669 (_ BitVec 64)) (_2!1669 V!5227)) )
))
(declare-datatypes ((List!2287 0))(
  ( (Nil!2284) (Cons!2283 (h!2907 tuple2!3318) (t!7135 List!2287)) )
))
(declare-datatypes ((ListLongMap!2259 0))(
  ( (ListLongMap!2260 (toList!1145 List!2287)) )
))
(declare-fun contains!1211 (ListLongMap!2259 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!792 (array!7530 array!7532 (_ BitVec 32) (_ BitVec 32) V!5227 V!5227 (_ BitVec 32) Int) ListLongMap!2259)

(assert (=> b!178748 (= res!84689 (not (contains!1211 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248)) key!828)))))

(declare-fun b!178749 () Bool)

(declare-fun tp_is_empty!4185 () Bool)

(assert (=> b!178749 (= e!117813 tp_is_empty!4185)))

(declare-fun b!178750 () Bool)

(declare-fun res!84685 () Bool)

(assert (=> b!178750 (=> (not res!84685) (not e!117812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!178750 (= res!84685 (validMask!0 (mask!8642 thiss!1248)))))

(declare-fun e!117809 () Bool)

(declare-fun e!117814 () Bool)

(declare-fun array_inv!2285 (array!7530) Bool)

(declare-fun array_inv!2286 (array!7532) Bool)

(assert (=> b!178751 (= e!117814 (and tp!15956 tp_is_empty!4185 (array_inv!2285 (_keys!5555 thiss!1248)) (array_inv!2286 (_values!3657 thiss!1248)) e!117809))))

(declare-fun b!178752 () Bool)

(declare-fun e!117811 () Bool)

(assert (=> b!178752 (= e!117809 (and e!117811 mapRes!7158))))

(declare-fun condMapEmpty!7158 () Bool)

(declare-fun mapDefault!7158 () ValueCell!1749)

(assert (=> b!178752 (= condMapEmpty!7158 (= (arr!3569 (_values!3657 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1749)) mapDefault!7158)))))

(declare-fun b!178753 () Bool)

(assert (=> b!178753 (= e!117812 (and (= (size!3876 (_values!3657 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8642 thiss!1248))) (= (size!3875 (_keys!5555 thiss!1248)) (size!3876 (_values!3657 thiss!1248))) (bvsge (mask!8642 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3411 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3411 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun res!84686 () Bool)

(assert (=> start!17950 (=> (not res!84686) (not e!117812))))

(declare-fun valid!999 (LongMapFixedSize!2406) Bool)

(assert (=> start!17950 (= res!84686 (valid!999 thiss!1248))))

(assert (=> start!17950 e!117812))

(assert (=> start!17950 e!117814))

(assert (=> start!17950 true))

(declare-fun mapIsEmpty!7158 () Bool)

(assert (=> mapIsEmpty!7158 mapRes!7158))

(declare-fun b!178754 () Bool)

(assert (=> b!178754 (= e!117811 tp_is_empty!4185)))

(assert (= (and start!17950 res!84686) b!178747))

(assert (= (and b!178747 res!84687) b!178746))

(assert (= (and b!178746 res!84688) b!178748))

(assert (= (and b!178748 res!84689) b!178750))

(assert (= (and b!178750 res!84685) b!178753))

(assert (= (and b!178752 condMapEmpty!7158) mapIsEmpty!7158))

(assert (= (and b!178752 (not condMapEmpty!7158)) mapNonEmpty!7158))

(assert (= (and mapNonEmpty!7158 ((_ is ValueCellFull!1749) mapValue!7158)) b!178749))

(assert (= (and b!178752 ((_ is ValueCellFull!1749) mapDefault!7158)) b!178754))

(assert (= b!178751 b!178752))

(assert (= start!17950 b!178751))

(declare-fun m!207131 () Bool)

(assert (=> mapNonEmpty!7158 m!207131))

(declare-fun m!207133 () Bool)

(assert (=> b!178746 m!207133))

(declare-fun m!207135 () Bool)

(assert (=> start!17950 m!207135))

(declare-fun m!207137 () Bool)

(assert (=> b!178748 m!207137))

(assert (=> b!178748 m!207137))

(declare-fun m!207139 () Bool)

(assert (=> b!178748 m!207139))

(declare-fun m!207141 () Bool)

(assert (=> b!178751 m!207141))

(declare-fun m!207143 () Bool)

(assert (=> b!178751 m!207143))

(declare-fun m!207145 () Bool)

(assert (=> b!178750 m!207145))

(check-sat (not mapNonEmpty!7158) b_and!10953 (not b!178750) (not b!178751) (not b_next!4413) (not start!17950) tp_is_empty!4185 (not b!178746) (not b!178748))
(check-sat b_and!10953 (not b_next!4413))
(get-model)

(declare-fun d!53951 () Bool)

(assert (=> d!53951 (= (array_inv!2285 (_keys!5555 thiss!1248)) (bvsge (size!3875 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!178751 d!53951))

(declare-fun d!53953 () Bool)

(assert (=> d!53953 (= (array_inv!2286 (_values!3657 thiss!1248)) (bvsge (size!3876 (_values!3657 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!178751 d!53953))

(declare-fun d!53955 () Bool)

(assert (=> d!53955 (= (validMask!0 (mask!8642 thiss!1248)) (and (or (= (mask!8642 thiss!1248) #b00000000000000000000000000000111) (= (mask!8642 thiss!1248) #b00000000000000000000000000001111) (= (mask!8642 thiss!1248) #b00000000000000000000000000011111) (= (mask!8642 thiss!1248) #b00000000000000000000000000111111) (= (mask!8642 thiss!1248) #b00000000000000000000000001111111) (= (mask!8642 thiss!1248) #b00000000000000000000000011111111) (= (mask!8642 thiss!1248) #b00000000000000000000000111111111) (= (mask!8642 thiss!1248) #b00000000000000000000001111111111) (= (mask!8642 thiss!1248) #b00000000000000000000011111111111) (= (mask!8642 thiss!1248) #b00000000000000000000111111111111) (= (mask!8642 thiss!1248) #b00000000000000000001111111111111) (= (mask!8642 thiss!1248) #b00000000000000000011111111111111) (= (mask!8642 thiss!1248) #b00000000000000000111111111111111) (= (mask!8642 thiss!1248) #b00000000000000001111111111111111) (= (mask!8642 thiss!1248) #b00000000000000011111111111111111) (= (mask!8642 thiss!1248) #b00000000000000111111111111111111) (= (mask!8642 thiss!1248) #b00000000000001111111111111111111) (= (mask!8642 thiss!1248) #b00000000000011111111111111111111) (= (mask!8642 thiss!1248) #b00000000000111111111111111111111) (= (mask!8642 thiss!1248) #b00000000001111111111111111111111) (= (mask!8642 thiss!1248) #b00000000011111111111111111111111) (= (mask!8642 thiss!1248) #b00000000111111111111111111111111) (= (mask!8642 thiss!1248) #b00000001111111111111111111111111) (= (mask!8642 thiss!1248) #b00000011111111111111111111111111) (= (mask!8642 thiss!1248) #b00000111111111111111111111111111) (= (mask!8642 thiss!1248) #b00001111111111111111111111111111) (= (mask!8642 thiss!1248) #b00011111111111111111111111111111) (= (mask!8642 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8642 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!178750 d!53955))

(declare-fun b!178794 () Bool)

(declare-fun c!32037 () Bool)

(declare-fun lt!88379 () (_ BitVec 64))

(assert (=> b!178794 (= c!32037 (= lt!88379 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!117841 () SeekEntryResult!588)

(declare-fun e!117839 () SeekEntryResult!588)

(assert (=> b!178794 (= e!117841 e!117839)))

(declare-fun lt!88380 () SeekEntryResult!588)

(declare-fun b!178795 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7530 (_ BitVec 32)) SeekEntryResult!588)

(assert (=> b!178795 (= e!117839 (seekKeyOrZeroReturnVacant!0 (x!19582 lt!88380) (index!4522 lt!88380) (index!4522 lt!88380) key!828 (_keys!5555 thiss!1248) (mask!8642 thiss!1248)))))

(declare-fun b!178796 () Bool)

(assert (=> b!178796 (= e!117839 (MissingZero!588 (index!4522 lt!88380)))))

(declare-fun b!178798 () Bool)

(declare-fun e!117840 () SeekEntryResult!588)

(assert (=> b!178798 (= e!117840 Undefined!588)))

(declare-fun b!178799 () Bool)

(assert (=> b!178799 (= e!117840 e!117841)))

(assert (=> b!178799 (= lt!88379 (select (arr!3568 (_keys!5555 thiss!1248)) (index!4522 lt!88380)))))

(declare-fun c!32036 () Bool)

(assert (=> b!178799 (= c!32036 (= lt!88379 key!828))))

(declare-fun b!178797 () Bool)

(assert (=> b!178797 (= e!117841 (Found!588 (index!4522 lt!88380)))))

(declare-fun d!53957 () Bool)

(declare-fun lt!88381 () SeekEntryResult!588)

(assert (=> d!53957 (and (or ((_ is Undefined!588) lt!88381) (not ((_ is Found!588) lt!88381)) (and (bvsge (index!4521 lt!88381) #b00000000000000000000000000000000) (bvslt (index!4521 lt!88381) (size!3875 (_keys!5555 thiss!1248))))) (or ((_ is Undefined!588) lt!88381) ((_ is Found!588) lt!88381) (not ((_ is MissingZero!588) lt!88381)) (and (bvsge (index!4520 lt!88381) #b00000000000000000000000000000000) (bvslt (index!4520 lt!88381) (size!3875 (_keys!5555 thiss!1248))))) (or ((_ is Undefined!588) lt!88381) ((_ is Found!588) lt!88381) ((_ is MissingZero!588) lt!88381) (not ((_ is MissingVacant!588) lt!88381)) (and (bvsge (index!4523 lt!88381) #b00000000000000000000000000000000) (bvslt (index!4523 lt!88381) (size!3875 (_keys!5555 thiss!1248))))) (or ((_ is Undefined!588) lt!88381) (ite ((_ is Found!588) lt!88381) (= (select (arr!3568 (_keys!5555 thiss!1248)) (index!4521 lt!88381)) key!828) (ite ((_ is MissingZero!588) lt!88381) (= (select (arr!3568 (_keys!5555 thiss!1248)) (index!4520 lt!88381)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!588) lt!88381) (= (select (arr!3568 (_keys!5555 thiss!1248)) (index!4523 lt!88381)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!53957 (= lt!88381 e!117840)))

(declare-fun c!32035 () Bool)

(assert (=> d!53957 (= c!32035 (and ((_ is Intermediate!588) lt!88380) (undefined!1400 lt!88380)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7530 (_ BitVec 32)) SeekEntryResult!588)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!53957 (= lt!88380 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8642 thiss!1248)) key!828 (_keys!5555 thiss!1248) (mask!8642 thiss!1248)))))

(assert (=> d!53957 (validMask!0 (mask!8642 thiss!1248))))

(assert (=> d!53957 (= (seekEntryOrOpen!0 key!828 (_keys!5555 thiss!1248) (mask!8642 thiss!1248)) lt!88381)))

(assert (= (and d!53957 c!32035) b!178798))

(assert (= (and d!53957 (not c!32035)) b!178799))

(assert (= (and b!178799 c!32036) b!178797))

(assert (= (and b!178799 (not c!32036)) b!178794))

(assert (= (and b!178794 c!32037) b!178796))

(assert (= (and b!178794 (not c!32037)) b!178795))

(declare-fun m!207163 () Bool)

(assert (=> b!178795 m!207163))

(declare-fun m!207165 () Bool)

(assert (=> b!178799 m!207165))

(declare-fun m!207167 () Bool)

(assert (=> d!53957 m!207167))

(declare-fun m!207169 () Bool)

(assert (=> d!53957 m!207169))

(assert (=> d!53957 m!207145))

(assert (=> d!53957 m!207167))

(declare-fun m!207171 () Bool)

(assert (=> d!53957 m!207171))

(declare-fun m!207173 () Bool)

(assert (=> d!53957 m!207173))

(declare-fun m!207175 () Bool)

(assert (=> d!53957 m!207175))

(assert (=> b!178746 d!53957))

(declare-fun d!53959 () Bool)

(declare-fun e!117847 () Bool)

(assert (=> d!53959 e!117847))

(declare-fun res!84707 () Bool)

(assert (=> d!53959 (=> res!84707 e!117847)))

(declare-fun lt!88390 () Bool)

(assert (=> d!53959 (= res!84707 (not lt!88390))))

(declare-fun lt!88393 () Bool)

(assert (=> d!53959 (= lt!88390 lt!88393)))

(declare-datatypes ((Unit!5449 0))(
  ( (Unit!5450) )
))
(declare-fun lt!88392 () Unit!5449)

(declare-fun e!117846 () Unit!5449)

(assert (=> d!53959 (= lt!88392 e!117846)))

(declare-fun c!32040 () Bool)

(assert (=> d!53959 (= c!32040 lt!88393)))

(declare-fun containsKey!203 (List!2287 (_ BitVec 64)) Bool)

(assert (=> d!53959 (= lt!88393 (containsKey!203 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248))) key!828))))

(assert (=> d!53959 (= (contains!1211 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248)) key!828) lt!88390)))

(declare-fun b!178806 () Bool)

(declare-fun lt!88391 () Unit!5449)

(assert (=> b!178806 (= e!117846 lt!88391)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!152 (List!2287 (_ BitVec 64)) Unit!5449)

(assert (=> b!178806 (= lt!88391 (lemmaContainsKeyImpliesGetValueByKeyDefined!152 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248))) key!828))))

(declare-datatypes ((Option!205 0))(
  ( (Some!204 (v!4020 V!5227)) (None!203) )
))
(declare-fun isDefined!153 (Option!205) Bool)

(declare-fun getValueByKey!199 (List!2287 (_ BitVec 64)) Option!205)

(assert (=> b!178806 (isDefined!153 (getValueByKey!199 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248))) key!828))))

(declare-fun b!178807 () Bool)

(declare-fun Unit!5451 () Unit!5449)

(assert (=> b!178807 (= e!117846 Unit!5451)))

(declare-fun b!178808 () Bool)

(assert (=> b!178808 (= e!117847 (isDefined!153 (getValueByKey!199 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248))) key!828)))))

(assert (= (and d!53959 c!32040) b!178806))

(assert (= (and d!53959 (not c!32040)) b!178807))

(assert (= (and d!53959 (not res!84707)) b!178808))

(declare-fun m!207177 () Bool)

(assert (=> d!53959 m!207177))

(declare-fun m!207179 () Bool)

(assert (=> b!178806 m!207179))

(declare-fun m!207181 () Bool)

(assert (=> b!178806 m!207181))

(assert (=> b!178806 m!207181))

(declare-fun m!207183 () Bool)

(assert (=> b!178806 m!207183))

(assert (=> b!178808 m!207181))

(assert (=> b!178808 m!207181))

(assert (=> b!178808 m!207183))

(assert (=> b!178748 d!53959))

(declare-fun b!178851 () Bool)

(declare-fun e!117876 () Bool)

(declare-fun lt!88442 () ListLongMap!2259)

(declare-fun apply!145 (ListLongMap!2259 (_ BitVec 64)) V!5227)

(assert (=> b!178851 (= e!117876 (= (apply!145 lt!88442 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3515 thiss!1248)))))

(declare-fun b!178852 () Bool)

(declare-fun e!117881 () ListLongMap!2259)

(declare-fun call!18082 () ListLongMap!2259)

(assert (=> b!178852 (= e!117881 call!18082)))

(declare-fun b!178853 () Bool)

(declare-fun e!117883 () Bool)

(declare-fun call!18083 () Bool)

(assert (=> b!178853 (= e!117883 (not call!18083))))

(declare-fun b!178854 () Bool)

(declare-fun e!117885 () Bool)

(assert (=> b!178854 (= e!117885 e!117883)))

(declare-fun c!32054 () Bool)

(assert (=> b!178854 (= c!32054 (not (= (bvand (extraKeys!3411 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!178855 () Bool)

(declare-fun e!117884 () Bool)

(declare-fun call!18078 () Bool)

(assert (=> b!178855 (= e!117884 (not call!18078))))

(declare-fun b!178856 () Bool)

(declare-fun e!117882 () ListLongMap!2259)

(assert (=> b!178856 (= e!117882 call!18082)))

(declare-fun b!178857 () Bool)

(declare-fun e!117886 () Bool)

(assert (=> b!178857 (= e!117886 (= (apply!145 lt!88442 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3515 thiss!1248)))))

(declare-fun b!178858 () Bool)

(declare-fun c!32056 () Bool)

(assert (=> b!178858 (= c!32056 (and (not (= (bvand (extraKeys!3411 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3411 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!178858 (= e!117881 e!117882)))

(declare-fun bm!18074 () Bool)

(declare-fun call!18077 () ListLongMap!2259)

(declare-fun call!18081 () ListLongMap!2259)

(assert (=> bm!18074 (= call!18077 call!18081)))

(declare-fun bm!18075 () Bool)

(declare-fun call!18079 () ListLongMap!2259)

(assert (=> bm!18075 (= call!18079 call!18077)))

(declare-fun c!32053 () Bool)

(declare-fun c!32057 () Bool)

(declare-fun bm!18076 () Bool)

(declare-fun call!18080 () ListLongMap!2259)

(declare-fun +!257 (ListLongMap!2259 tuple2!3318) ListLongMap!2259)

(assert (=> bm!18076 (= call!18080 (+!257 (ite c!32053 call!18081 (ite c!32057 call!18077 call!18079)) (ite (or c!32053 c!32057) (tuple2!3319 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3515 thiss!1248)) (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248)))))))

(declare-fun b!178860 () Bool)

(declare-fun e!117874 () Bool)

(declare-fun e!117875 () Bool)

(assert (=> b!178860 (= e!117874 e!117875)))

(declare-fun res!84728 () Bool)

(assert (=> b!178860 (=> (not res!84728) (not e!117875))))

(assert (=> b!178860 (= res!84728 (contains!1211 lt!88442 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!178860 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3875 (_keys!5555 thiss!1248))))))

(declare-fun b!178861 () Bool)

(declare-fun e!117879 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!178861 (= e!117879 (validKeyInArray!0 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!178862 () Bool)

(assert (=> b!178862 (= e!117883 e!117886)))

(declare-fun res!84731 () Bool)

(assert (=> b!178862 (= res!84731 call!18083)))

(assert (=> b!178862 (=> (not res!84731) (not e!117886))))

(declare-fun b!178863 () Bool)

(declare-fun e!117877 () Bool)

(assert (=> b!178863 (= e!117877 (validKeyInArray!0 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!178864 () Bool)

(declare-fun res!84726 () Bool)

(assert (=> b!178864 (=> (not res!84726) (not e!117885))))

(assert (=> b!178864 (= res!84726 e!117884)))

(declare-fun c!32055 () Bool)

(assert (=> b!178864 (= c!32055 (not (= (bvand (extraKeys!3411 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!18077 () Bool)

(assert (=> bm!18077 (= call!18083 (contains!1211 lt!88442 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!178865 () Bool)

(declare-fun e!117880 () Unit!5449)

(declare-fun lt!88452 () Unit!5449)

(assert (=> b!178865 (= e!117880 lt!88452)))

(declare-fun lt!88438 () ListLongMap!2259)

(declare-fun getCurrentListMapNoExtraKeys!175 (array!7530 array!7532 (_ BitVec 32) (_ BitVec 32) V!5227 V!5227 (_ BitVec 32) Int) ListLongMap!2259)

(assert (=> b!178865 (= lt!88438 (getCurrentListMapNoExtraKeys!175 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248)))))

(declare-fun lt!88455 () (_ BitVec 64))

(assert (=> b!178865 (= lt!88455 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88444 () (_ BitVec 64))

(assert (=> b!178865 (= lt!88444 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88447 () Unit!5449)

(declare-fun addStillContains!121 (ListLongMap!2259 (_ BitVec 64) V!5227 (_ BitVec 64)) Unit!5449)

(assert (=> b!178865 (= lt!88447 (addStillContains!121 lt!88438 lt!88455 (zeroValue!3515 thiss!1248) lt!88444))))

(assert (=> b!178865 (contains!1211 (+!257 lt!88438 (tuple2!3319 lt!88455 (zeroValue!3515 thiss!1248))) lt!88444)))

(declare-fun lt!88441 () Unit!5449)

(assert (=> b!178865 (= lt!88441 lt!88447)))

(declare-fun lt!88459 () ListLongMap!2259)

(assert (=> b!178865 (= lt!88459 (getCurrentListMapNoExtraKeys!175 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248)))))

(declare-fun lt!88448 () (_ BitVec 64))

(assert (=> b!178865 (= lt!88448 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88457 () (_ BitVec 64))

(assert (=> b!178865 (= lt!88457 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88451 () Unit!5449)

(declare-fun addApplyDifferent!121 (ListLongMap!2259 (_ BitVec 64) V!5227 (_ BitVec 64)) Unit!5449)

(assert (=> b!178865 (= lt!88451 (addApplyDifferent!121 lt!88459 lt!88448 (minValue!3515 thiss!1248) lt!88457))))

(assert (=> b!178865 (= (apply!145 (+!257 lt!88459 (tuple2!3319 lt!88448 (minValue!3515 thiss!1248))) lt!88457) (apply!145 lt!88459 lt!88457))))

(declare-fun lt!88456 () Unit!5449)

(assert (=> b!178865 (= lt!88456 lt!88451)))

(declare-fun lt!88454 () ListLongMap!2259)

(assert (=> b!178865 (= lt!88454 (getCurrentListMapNoExtraKeys!175 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248)))))

(declare-fun lt!88445 () (_ BitVec 64))

(assert (=> b!178865 (= lt!88445 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88449 () (_ BitVec 64))

(assert (=> b!178865 (= lt!88449 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88446 () Unit!5449)

(assert (=> b!178865 (= lt!88446 (addApplyDifferent!121 lt!88454 lt!88445 (zeroValue!3515 thiss!1248) lt!88449))))

(assert (=> b!178865 (= (apply!145 (+!257 lt!88454 (tuple2!3319 lt!88445 (zeroValue!3515 thiss!1248))) lt!88449) (apply!145 lt!88454 lt!88449))))

(declare-fun lt!88440 () Unit!5449)

(assert (=> b!178865 (= lt!88440 lt!88446)))

(declare-fun lt!88458 () ListLongMap!2259)

(assert (=> b!178865 (= lt!88458 (getCurrentListMapNoExtraKeys!175 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248)))))

(declare-fun lt!88453 () (_ BitVec 64))

(assert (=> b!178865 (= lt!88453 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88439 () (_ BitVec 64))

(assert (=> b!178865 (= lt!88439 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!178865 (= lt!88452 (addApplyDifferent!121 lt!88458 lt!88453 (minValue!3515 thiss!1248) lt!88439))))

(assert (=> b!178865 (= (apply!145 (+!257 lt!88458 (tuple2!3319 lt!88453 (minValue!3515 thiss!1248))) lt!88439) (apply!145 lt!88458 lt!88439))))

(declare-fun b!178866 () Bool)

(declare-fun Unit!5452 () Unit!5449)

(assert (=> b!178866 (= e!117880 Unit!5452)))

(declare-fun b!178859 () Bool)

(declare-fun get!2042 (ValueCell!1749 V!5227) V!5227)

(declare-fun dynLambda!483 (Int (_ BitVec 64)) V!5227)

(assert (=> b!178859 (= e!117875 (= (apply!145 lt!88442 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)) (get!2042 (select (arr!3569 (_values!3657 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!483 (defaultEntry!3674 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!178859 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3876 (_values!3657 thiss!1248))))))

(assert (=> b!178859 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3875 (_keys!5555 thiss!1248))))))

(declare-fun d!53961 () Bool)

(assert (=> d!53961 e!117885))

(declare-fun res!84729 () Bool)

(assert (=> d!53961 (=> (not res!84729) (not e!117885))))

(assert (=> d!53961 (= res!84729 (or (bvsge #b00000000000000000000000000000000 (size!3875 (_keys!5555 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3875 (_keys!5555 thiss!1248))))))))

(declare-fun lt!88450 () ListLongMap!2259)

(assert (=> d!53961 (= lt!88442 lt!88450)))

(declare-fun lt!88443 () Unit!5449)

(assert (=> d!53961 (= lt!88443 e!117880)))

(declare-fun c!32058 () Bool)

(assert (=> d!53961 (= c!32058 e!117879)))

(declare-fun res!84734 () Bool)

(assert (=> d!53961 (=> (not res!84734) (not e!117879))))

(assert (=> d!53961 (= res!84734 (bvslt #b00000000000000000000000000000000 (size!3875 (_keys!5555 thiss!1248))))))

(declare-fun e!117878 () ListLongMap!2259)

(assert (=> d!53961 (= lt!88450 e!117878)))

(assert (=> d!53961 (= c!32053 (and (not (= (bvand (extraKeys!3411 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3411 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!53961 (validMask!0 (mask!8642 thiss!1248))))

(assert (=> d!53961 (= (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248)) lt!88442)))

(declare-fun b!178867 () Bool)

(assert (=> b!178867 (= e!117884 e!117876)))

(declare-fun res!84732 () Bool)

(assert (=> b!178867 (= res!84732 call!18078)))

(assert (=> b!178867 (=> (not res!84732) (not e!117876))))

(declare-fun b!178868 () Bool)

(assert (=> b!178868 (= e!117882 call!18079)))

(declare-fun bm!18078 () Bool)

(assert (=> bm!18078 (= call!18078 (contains!1211 lt!88442 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!178869 () Bool)

(assert (=> b!178869 (= e!117878 e!117881)))

(assert (=> b!178869 (= c!32057 (and (not (= (bvand (extraKeys!3411 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3411 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!178870 () Bool)

(assert (=> b!178870 (= e!117878 (+!257 call!18080 (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248))))))

(declare-fun b!178871 () Bool)

(declare-fun res!84727 () Bool)

(assert (=> b!178871 (=> (not res!84727) (not e!117885))))

(assert (=> b!178871 (= res!84727 e!117874)))

(declare-fun res!84730 () Bool)

(assert (=> b!178871 (=> res!84730 e!117874)))

(assert (=> b!178871 (= res!84730 (not e!117877))))

(declare-fun res!84733 () Bool)

(assert (=> b!178871 (=> (not res!84733) (not e!117877))))

(assert (=> b!178871 (= res!84733 (bvslt #b00000000000000000000000000000000 (size!3875 (_keys!5555 thiss!1248))))))

(declare-fun bm!18079 () Bool)

(assert (=> bm!18079 (= call!18081 (getCurrentListMapNoExtraKeys!175 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248)))))

(declare-fun bm!18080 () Bool)

(assert (=> bm!18080 (= call!18082 call!18080)))

(assert (= (and d!53961 c!32053) b!178870))

(assert (= (and d!53961 (not c!32053)) b!178869))

(assert (= (and b!178869 c!32057) b!178852))

(assert (= (and b!178869 (not c!32057)) b!178858))

(assert (= (and b!178858 c!32056) b!178856))

(assert (= (and b!178858 (not c!32056)) b!178868))

(assert (= (or b!178856 b!178868) bm!18075))

(assert (= (or b!178852 bm!18075) bm!18074))

(assert (= (or b!178852 b!178856) bm!18080))

(assert (= (or b!178870 bm!18074) bm!18079))

(assert (= (or b!178870 bm!18080) bm!18076))

(assert (= (and d!53961 res!84734) b!178861))

(assert (= (and d!53961 c!32058) b!178865))

(assert (= (and d!53961 (not c!32058)) b!178866))

(assert (= (and d!53961 res!84729) b!178871))

(assert (= (and b!178871 res!84733) b!178863))

(assert (= (and b!178871 (not res!84730)) b!178860))

(assert (= (and b!178860 res!84728) b!178859))

(assert (= (and b!178871 res!84727) b!178864))

(assert (= (and b!178864 c!32055) b!178867))

(assert (= (and b!178864 (not c!32055)) b!178855))

(assert (= (and b!178867 res!84732) b!178851))

(assert (= (or b!178867 b!178855) bm!18078))

(assert (= (and b!178864 res!84726) b!178854))

(assert (= (and b!178854 c!32054) b!178862))

(assert (= (and b!178854 (not c!32054)) b!178853))

(assert (= (and b!178862 res!84731) b!178857))

(assert (= (or b!178862 b!178853) bm!18077))

(declare-fun b_lambda!7125 () Bool)

(assert (=> (not b_lambda!7125) (not b!178859)))

(declare-fun t!7137 () Bool)

(declare-fun tb!2809 () Bool)

(assert (=> (and b!178751 (= (defaultEntry!3674 thiss!1248) (defaultEntry!3674 thiss!1248)) t!7137) tb!2809))

(declare-fun result!4685 () Bool)

(assert (=> tb!2809 (= result!4685 tp_is_empty!4185)))

(assert (=> b!178859 t!7137))

(declare-fun b_and!10957 () Bool)

(assert (= b_and!10953 (and (=> t!7137 result!4685) b_and!10957)))

(declare-fun m!207185 () Bool)

(assert (=> bm!18076 m!207185))

(declare-fun m!207187 () Bool)

(assert (=> b!178860 m!207187))

(assert (=> b!178860 m!207187))

(declare-fun m!207189 () Bool)

(assert (=> b!178860 m!207189))

(declare-fun m!207191 () Bool)

(assert (=> bm!18078 m!207191))

(assert (=> d!53961 m!207145))

(assert (=> b!178861 m!207187))

(assert (=> b!178861 m!207187))

(declare-fun m!207193 () Bool)

(assert (=> b!178861 m!207193))

(declare-fun m!207195 () Bool)

(assert (=> b!178865 m!207195))

(declare-fun m!207197 () Bool)

(assert (=> b!178865 m!207197))

(declare-fun m!207199 () Bool)

(assert (=> b!178865 m!207199))

(declare-fun m!207201 () Bool)

(assert (=> b!178865 m!207201))

(declare-fun m!207203 () Bool)

(assert (=> b!178865 m!207203))

(declare-fun m!207205 () Bool)

(assert (=> b!178865 m!207205))

(declare-fun m!207207 () Bool)

(assert (=> b!178865 m!207207))

(declare-fun m!207209 () Bool)

(assert (=> b!178865 m!207209))

(declare-fun m!207211 () Bool)

(assert (=> b!178865 m!207211))

(declare-fun m!207213 () Bool)

(assert (=> b!178865 m!207213))

(declare-fun m!207215 () Bool)

(assert (=> b!178865 m!207215))

(declare-fun m!207217 () Bool)

(assert (=> b!178865 m!207217))

(assert (=> b!178865 m!207187))

(declare-fun m!207219 () Bool)

(assert (=> b!178865 m!207219))

(assert (=> b!178865 m!207213))

(declare-fun m!207221 () Bool)

(assert (=> b!178865 m!207221))

(assert (=> b!178865 m!207205))

(declare-fun m!207223 () Bool)

(assert (=> b!178865 m!207223))

(assert (=> b!178865 m!207207))

(assert (=> b!178865 m!207211))

(declare-fun m!207225 () Bool)

(assert (=> b!178865 m!207225))

(declare-fun m!207227 () Bool)

(assert (=> b!178851 m!207227))

(assert (=> b!178863 m!207187))

(assert (=> b!178863 m!207187))

(assert (=> b!178863 m!207193))

(declare-fun m!207229 () Bool)

(assert (=> b!178870 m!207229))

(assert (=> b!178859 m!207187))

(declare-fun m!207231 () Bool)

(assert (=> b!178859 m!207231))

(declare-fun m!207233 () Bool)

(assert (=> b!178859 m!207233))

(declare-fun m!207235 () Bool)

(assert (=> b!178859 m!207235))

(declare-fun m!207237 () Bool)

(assert (=> b!178859 m!207237))

(assert (=> b!178859 m!207233))

(assert (=> b!178859 m!207235))

(assert (=> b!178859 m!207187))

(assert (=> bm!18079 m!207199))

(declare-fun m!207239 () Bool)

(assert (=> bm!18077 m!207239))

(declare-fun m!207241 () Bool)

(assert (=> b!178857 m!207241))

(assert (=> b!178748 d!53961))

(declare-fun d!53963 () Bool)

(declare-fun res!84741 () Bool)

(declare-fun e!117889 () Bool)

(assert (=> d!53963 (=> (not res!84741) (not e!117889))))

(declare-fun simpleValid!158 (LongMapFixedSize!2406) Bool)

(assert (=> d!53963 (= res!84741 (simpleValid!158 thiss!1248))))

(assert (=> d!53963 (= (valid!999 thiss!1248) e!117889)))

(declare-fun b!178880 () Bool)

(declare-fun res!84742 () Bool)

(assert (=> b!178880 (=> (not res!84742) (not e!117889))))

(declare-fun arrayCountValidKeys!0 (array!7530 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!178880 (= res!84742 (= (arrayCountValidKeys!0 (_keys!5555 thiss!1248) #b00000000000000000000000000000000 (size!3875 (_keys!5555 thiss!1248))) (_size!1252 thiss!1248)))))

(declare-fun b!178881 () Bool)

(declare-fun res!84743 () Bool)

(assert (=> b!178881 (=> (not res!84743) (not e!117889))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7530 (_ BitVec 32)) Bool)

(assert (=> b!178881 (= res!84743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5555 thiss!1248) (mask!8642 thiss!1248)))))

(declare-fun b!178882 () Bool)

(declare-datatypes ((List!2288 0))(
  ( (Nil!2285) (Cons!2284 (h!2908 (_ BitVec 64)) (t!7138 List!2288)) )
))
(declare-fun arrayNoDuplicates!0 (array!7530 (_ BitVec 32) List!2288) Bool)

(assert (=> b!178882 (= e!117889 (arrayNoDuplicates!0 (_keys!5555 thiss!1248) #b00000000000000000000000000000000 Nil!2285))))

(assert (= (and d!53963 res!84741) b!178880))

(assert (= (and b!178880 res!84742) b!178881))

(assert (= (and b!178881 res!84743) b!178882))

(declare-fun m!207243 () Bool)

(assert (=> d!53963 m!207243))

(declare-fun m!207245 () Bool)

(assert (=> b!178880 m!207245))

(declare-fun m!207247 () Bool)

(assert (=> b!178881 m!207247))

(declare-fun m!207249 () Bool)

(assert (=> b!178882 m!207249))

(assert (=> start!17950 d!53963))

(declare-fun b!178890 () Bool)

(declare-fun e!117894 () Bool)

(assert (=> b!178890 (= e!117894 tp_is_empty!4185)))

(declare-fun condMapEmpty!7164 () Bool)

(declare-fun mapDefault!7164 () ValueCell!1749)

(assert (=> mapNonEmpty!7158 (= condMapEmpty!7164 (= mapRest!7158 ((as const (Array (_ BitVec 32) ValueCell!1749)) mapDefault!7164)))))

(declare-fun mapRes!7164 () Bool)

(assert (=> mapNonEmpty!7158 (= tp!15957 (and e!117894 mapRes!7164))))

(declare-fun b!178889 () Bool)

(declare-fun e!117895 () Bool)

(assert (=> b!178889 (= e!117895 tp_is_empty!4185)))

(declare-fun mapNonEmpty!7164 () Bool)

(declare-fun tp!15966 () Bool)

(assert (=> mapNonEmpty!7164 (= mapRes!7164 (and tp!15966 e!117895))))

(declare-fun mapValue!7164 () ValueCell!1749)

(declare-fun mapKey!7164 () (_ BitVec 32))

(declare-fun mapRest!7164 () (Array (_ BitVec 32) ValueCell!1749))

(assert (=> mapNonEmpty!7164 (= mapRest!7158 (store mapRest!7164 mapKey!7164 mapValue!7164))))

(declare-fun mapIsEmpty!7164 () Bool)

(assert (=> mapIsEmpty!7164 mapRes!7164))

(assert (= (and mapNonEmpty!7158 condMapEmpty!7164) mapIsEmpty!7164))

(assert (= (and mapNonEmpty!7158 (not condMapEmpty!7164)) mapNonEmpty!7164))

(assert (= (and mapNonEmpty!7164 ((_ is ValueCellFull!1749) mapValue!7164)) b!178889))

(assert (= (and mapNonEmpty!7158 ((_ is ValueCellFull!1749) mapDefault!7164)) b!178890))

(declare-fun m!207251 () Bool)

(assert (=> mapNonEmpty!7164 m!207251))

(declare-fun b_lambda!7127 () Bool)

(assert (= b_lambda!7125 (or (and b!178751 b_free!4413) b_lambda!7127)))

(check-sat (not b!178881) tp_is_empty!4185 (not bm!18078) b_and!10957 (not b!178870) (not bm!18076) (not b!178880) (not b!178860) (not d!53961) (not b!178806) (not d!53963) (not mapNonEmpty!7164) (not bm!18077) (not b!178882) (not b!178863) (not b!178859) (not b!178795) (not b!178865) (not d!53959) (not b!178851) (not b_lambda!7127) (not d!53957) (not b_next!4413) (not b!178857) (not b!178808) (not b!178861) (not bm!18079))
(check-sat b_and!10957 (not b_next!4413))
(get-model)

(declare-fun bm!18083 () Bool)

(declare-fun call!18086 () Bool)

(assert (=> bm!18083 (= call!18086 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5555 thiss!1248) (mask!8642 thiss!1248)))))

(declare-fun b!178899 () Bool)

(declare-fun e!117902 () Bool)

(assert (=> b!178899 (= e!117902 call!18086)))

(declare-fun b!178900 () Bool)

(declare-fun e!117903 () Bool)

(declare-fun e!117904 () Bool)

(assert (=> b!178900 (= e!117903 e!117904)))

(declare-fun c!32061 () Bool)

(assert (=> b!178900 (= c!32061 (validKeyInArray!0 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!53965 () Bool)

(declare-fun res!84748 () Bool)

(assert (=> d!53965 (=> res!84748 e!117903)))

(assert (=> d!53965 (= res!84748 (bvsge #b00000000000000000000000000000000 (size!3875 (_keys!5555 thiss!1248))))))

(assert (=> d!53965 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5555 thiss!1248) (mask!8642 thiss!1248)) e!117903)))

(declare-fun b!178901 () Bool)

(assert (=> b!178901 (= e!117904 e!117902)))

(declare-fun lt!88466 () (_ BitVec 64))

(assert (=> b!178901 (= lt!88466 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88468 () Unit!5449)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7530 (_ BitVec 64) (_ BitVec 32)) Unit!5449)

(assert (=> b!178901 (= lt!88468 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5555 thiss!1248) lt!88466 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7530 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!178901 (arrayContainsKey!0 (_keys!5555 thiss!1248) lt!88466 #b00000000000000000000000000000000)))

(declare-fun lt!88467 () Unit!5449)

(assert (=> b!178901 (= lt!88467 lt!88468)))

(declare-fun res!84749 () Bool)

(assert (=> b!178901 (= res!84749 (= (seekEntryOrOpen!0 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000) (_keys!5555 thiss!1248) (mask!8642 thiss!1248)) (Found!588 #b00000000000000000000000000000000)))))

(assert (=> b!178901 (=> (not res!84749) (not e!117902))))

(declare-fun b!178902 () Bool)

(assert (=> b!178902 (= e!117904 call!18086)))

(assert (= (and d!53965 (not res!84748)) b!178900))

(assert (= (and b!178900 c!32061) b!178901))

(assert (= (and b!178900 (not c!32061)) b!178902))

(assert (= (and b!178901 res!84749) b!178899))

(assert (= (or b!178899 b!178902) bm!18083))

(declare-fun m!207253 () Bool)

(assert (=> bm!18083 m!207253))

(assert (=> b!178900 m!207187))

(assert (=> b!178900 m!207187))

(assert (=> b!178900 m!207193))

(assert (=> b!178901 m!207187))

(declare-fun m!207255 () Bool)

(assert (=> b!178901 m!207255))

(declare-fun m!207257 () Bool)

(assert (=> b!178901 m!207257))

(assert (=> b!178901 m!207187))

(declare-fun m!207259 () Bool)

(assert (=> b!178901 m!207259))

(assert (=> b!178881 d!53965))

(declare-fun b!178921 () Bool)

(declare-fun e!117919 () Bool)

(declare-fun lt!88473 () SeekEntryResult!588)

(assert (=> b!178921 (= e!117919 (bvsge (x!19582 lt!88473) #b01111111111111111111111111111110))))

(declare-fun d!53967 () Bool)

(assert (=> d!53967 e!117919))

(declare-fun c!32070 () Bool)

(assert (=> d!53967 (= c!32070 (and ((_ is Intermediate!588) lt!88473) (undefined!1400 lt!88473)))))

(declare-fun e!117915 () SeekEntryResult!588)

(assert (=> d!53967 (= lt!88473 e!117915)))

(declare-fun c!32068 () Bool)

(assert (=> d!53967 (= c!32068 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!88474 () (_ BitVec 64))

(assert (=> d!53967 (= lt!88474 (select (arr!3568 (_keys!5555 thiss!1248)) (toIndex!0 key!828 (mask!8642 thiss!1248))))))

(assert (=> d!53967 (validMask!0 (mask!8642 thiss!1248))))

(assert (=> d!53967 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8642 thiss!1248)) key!828 (_keys!5555 thiss!1248) (mask!8642 thiss!1248)) lt!88473)))

(declare-fun b!178922 () Bool)

(declare-fun e!117918 () Bool)

(assert (=> b!178922 (= e!117919 e!117918)))

(declare-fun res!84756 () Bool)

(assert (=> b!178922 (= res!84756 (and ((_ is Intermediate!588) lt!88473) (not (undefined!1400 lt!88473)) (bvslt (x!19582 lt!88473) #b01111111111111111111111111111110) (bvsge (x!19582 lt!88473) #b00000000000000000000000000000000) (bvsge (x!19582 lt!88473) #b00000000000000000000000000000000)))))

(assert (=> b!178922 (=> (not res!84756) (not e!117918))))

(declare-fun b!178923 () Bool)

(assert (=> b!178923 (= e!117915 (Intermediate!588 true (toIndex!0 key!828 (mask!8642 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!178924 () Bool)

(assert (=> b!178924 (and (bvsge (index!4522 lt!88473) #b00000000000000000000000000000000) (bvslt (index!4522 lt!88473) (size!3875 (_keys!5555 thiss!1248))))))

(declare-fun res!84757 () Bool)

(assert (=> b!178924 (= res!84757 (= (select (arr!3568 (_keys!5555 thiss!1248)) (index!4522 lt!88473)) key!828))))

(declare-fun e!117916 () Bool)

(assert (=> b!178924 (=> res!84757 e!117916)))

(assert (=> b!178924 (= e!117918 e!117916)))

(declare-fun b!178925 () Bool)

(assert (=> b!178925 (and (bvsge (index!4522 lt!88473) #b00000000000000000000000000000000) (bvslt (index!4522 lt!88473) (size!3875 (_keys!5555 thiss!1248))))))

(assert (=> b!178925 (= e!117916 (= (select (arr!3568 (_keys!5555 thiss!1248)) (index!4522 lt!88473)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!178926 () Bool)

(declare-fun e!117917 () SeekEntryResult!588)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!178926 (= e!117917 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8642 thiss!1248)) #b00000000000000000000000000000000 (mask!8642 thiss!1248)) key!828 (_keys!5555 thiss!1248) (mask!8642 thiss!1248)))))

(declare-fun b!178927 () Bool)

(assert (=> b!178927 (= e!117915 e!117917)))

(declare-fun c!32069 () Bool)

(assert (=> b!178927 (= c!32069 (or (= lt!88474 key!828) (= (bvadd lt!88474 lt!88474) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!178928 () Bool)

(assert (=> b!178928 (= e!117917 (Intermediate!588 false (toIndex!0 key!828 (mask!8642 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!178929 () Bool)

(assert (=> b!178929 (and (bvsge (index!4522 lt!88473) #b00000000000000000000000000000000) (bvslt (index!4522 lt!88473) (size!3875 (_keys!5555 thiss!1248))))))

(declare-fun res!84758 () Bool)

(assert (=> b!178929 (= res!84758 (= (select (arr!3568 (_keys!5555 thiss!1248)) (index!4522 lt!88473)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!178929 (=> res!84758 e!117916)))

(assert (= (and d!53967 c!32068) b!178923))

(assert (= (and d!53967 (not c!32068)) b!178927))

(assert (= (and b!178927 c!32069) b!178928))

(assert (= (and b!178927 (not c!32069)) b!178926))

(assert (= (and d!53967 c!32070) b!178921))

(assert (= (and d!53967 (not c!32070)) b!178922))

(assert (= (and b!178922 res!84756) b!178924))

(assert (= (and b!178924 (not res!84757)) b!178929))

(assert (= (and b!178929 (not res!84758)) b!178925))

(assert (=> d!53967 m!207167))

(declare-fun m!207261 () Bool)

(assert (=> d!53967 m!207261))

(assert (=> d!53967 m!207145))

(assert (=> b!178926 m!207167))

(declare-fun m!207263 () Bool)

(assert (=> b!178926 m!207263))

(assert (=> b!178926 m!207263))

(declare-fun m!207265 () Bool)

(assert (=> b!178926 m!207265))

(declare-fun m!207267 () Bool)

(assert (=> b!178929 m!207267))

(assert (=> b!178925 m!207267))

(assert (=> b!178924 m!207267))

(assert (=> d!53957 d!53967))

(declare-fun d!53969 () Bool)

(declare-fun lt!88480 () (_ BitVec 32))

(declare-fun lt!88479 () (_ BitVec 32))

(assert (=> d!53969 (= lt!88480 (bvmul (bvxor lt!88479 (bvlshr lt!88479 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!53969 (= lt!88479 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!53969 (and (bvsge (mask!8642 thiss!1248) #b00000000000000000000000000000000) (let ((res!84759 (let ((h!2909 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!19598 (bvmul (bvxor h!2909 (bvlshr h!2909 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!19598 (bvlshr x!19598 #b00000000000000000000000000001101)) (mask!8642 thiss!1248)))))) (and (bvslt res!84759 (bvadd (mask!8642 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!84759 #b00000000000000000000000000000000))))))

(assert (=> d!53969 (= (toIndex!0 key!828 (mask!8642 thiss!1248)) (bvand (bvxor lt!88480 (bvlshr lt!88480 #b00000000000000000000000000001101)) (mask!8642 thiss!1248)))))

(assert (=> d!53957 d!53969))

(assert (=> d!53957 d!53955))

(declare-fun d!53971 () Bool)

(declare-fun res!84768 () Bool)

(declare-fun e!117931 () Bool)

(assert (=> d!53971 (=> res!84768 e!117931)))

(assert (=> d!53971 (= res!84768 (bvsge #b00000000000000000000000000000000 (size!3875 (_keys!5555 thiss!1248))))))

(assert (=> d!53971 (= (arrayNoDuplicates!0 (_keys!5555 thiss!1248) #b00000000000000000000000000000000 Nil!2285) e!117931)))

(declare-fun b!178940 () Bool)

(declare-fun e!117928 () Bool)

(declare-fun e!117930 () Bool)

(assert (=> b!178940 (= e!117928 e!117930)))

(declare-fun c!32073 () Bool)

(assert (=> b!178940 (= c!32073 (validKeyInArray!0 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18086 () Bool)

(declare-fun call!18089 () Bool)

(assert (=> bm!18086 (= call!18089 (arrayNoDuplicates!0 (_keys!5555 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!32073 (Cons!2284 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000) Nil!2285) Nil!2285)))))

(declare-fun b!178941 () Bool)

(assert (=> b!178941 (= e!117930 call!18089)))

(declare-fun b!178942 () Bool)

(assert (=> b!178942 (= e!117930 call!18089)))

(declare-fun b!178943 () Bool)

(assert (=> b!178943 (= e!117931 e!117928)))

(declare-fun res!84767 () Bool)

(assert (=> b!178943 (=> (not res!84767) (not e!117928))))

(declare-fun e!117929 () Bool)

(assert (=> b!178943 (= res!84767 (not e!117929))))

(declare-fun res!84766 () Bool)

(assert (=> b!178943 (=> (not res!84766) (not e!117929))))

(assert (=> b!178943 (= res!84766 (validKeyInArray!0 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!178944 () Bool)

(declare-fun contains!1212 (List!2288 (_ BitVec 64)) Bool)

(assert (=> b!178944 (= e!117929 (contains!1212 Nil!2285 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!53971 (not res!84768)) b!178943))

(assert (= (and b!178943 res!84766) b!178944))

(assert (= (and b!178943 res!84767) b!178940))

(assert (= (and b!178940 c!32073) b!178942))

(assert (= (and b!178940 (not c!32073)) b!178941))

(assert (= (or b!178942 b!178941) bm!18086))

(assert (=> b!178940 m!207187))

(assert (=> b!178940 m!207187))

(assert (=> b!178940 m!207193))

(assert (=> bm!18086 m!207187))

(declare-fun m!207269 () Bool)

(assert (=> bm!18086 m!207269))

(assert (=> b!178943 m!207187))

(assert (=> b!178943 m!207187))

(assert (=> b!178943 m!207193))

(assert (=> b!178944 m!207187))

(assert (=> b!178944 m!207187))

(declare-fun m!207271 () Bool)

(assert (=> b!178944 m!207271))

(assert (=> b!178882 d!53971))

(declare-fun d!53973 () Bool)

(declare-fun get!2043 (Option!205) V!5227)

(assert (=> d!53973 (= (apply!145 lt!88442 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2043 (getValueByKey!199 (toList!1145 lt!88442) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7339 () Bool)

(assert (= bs!7339 d!53973))

(declare-fun m!207273 () Bool)

(assert (=> bs!7339 m!207273))

(assert (=> bs!7339 m!207273))

(declare-fun m!207275 () Bool)

(assert (=> bs!7339 m!207275))

(assert (=> b!178851 d!53973))

(declare-fun d!53975 () Bool)

(assert (=> d!53975 (= (apply!145 lt!88442 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2043 (getValueByKey!199 (toList!1145 lt!88442) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7340 () Bool)

(assert (= bs!7340 d!53975))

(declare-fun m!207277 () Bool)

(assert (=> bs!7340 m!207277))

(assert (=> bs!7340 m!207277))

(declare-fun m!207279 () Bool)

(assert (=> bs!7340 m!207279))

(assert (=> b!178857 d!53975))

(declare-fun d!53977 () Bool)

(assert (=> d!53977 (isDefined!153 (getValueByKey!199 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248))) key!828))))

(declare-fun lt!88483 () Unit!5449)

(declare-fun choose!963 (List!2287 (_ BitVec 64)) Unit!5449)

(assert (=> d!53977 (= lt!88483 (choose!963 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248))) key!828))))

(declare-fun e!117934 () Bool)

(assert (=> d!53977 e!117934))

(declare-fun res!84771 () Bool)

(assert (=> d!53977 (=> (not res!84771) (not e!117934))))

(declare-fun isStrictlySorted!335 (List!2287) Bool)

(assert (=> d!53977 (= res!84771 (isStrictlySorted!335 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248)))))))

(assert (=> d!53977 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!152 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248))) key!828) lt!88483)))

(declare-fun b!178947 () Bool)

(assert (=> b!178947 (= e!117934 (containsKey!203 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248))) key!828))))

(assert (= (and d!53977 res!84771) b!178947))

(assert (=> d!53977 m!207181))

(assert (=> d!53977 m!207181))

(assert (=> d!53977 m!207183))

(declare-fun m!207281 () Bool)

(assert (=> d!53977 m!207281))

(declare-fun m!207283 () Bool)

(assert (=> d!53977 m!207283))

(assert (=> b!178947 m!207177))

(assert (=> b!178806 d!53977))

(declare-fun d!53979 () Bool)

(declare-fun isEmpty!458 (Option!205) Bool)

(assert (=> d!53979 (= (isDefined!153 (getValueByKey!199 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248))) key!828)) (not (isEmpty!458 (getValueByKey!199 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248))) key!828))))))

(declare-fun bs!7341 () Bool)

(assert (= bs!7341 d!53979))

(assert (=> bs!7341 m!207181))

(declare-fun m!207285 () Bool)

(assert (=> bs!7341 m!207285))

(assert (=> b!178806 d!53979))

(declare-fun b!178956 () Bool)

(declare-fun e!117939 () Option!205)

(assert (=> b!178956 (= e!117939 (Some!204 (_2!1669 (h!2907 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248)))))))))

(declare-fun b!178957 () Bool)

(declare-fun e!117940 () Option!205)

(assert (=> b!178957 (= e!117939 e!117940)))

(declare-fun c!32079 () Bool)

(assert (=> b!178957 (= c!32079 (and ((_ is Cons!2283) (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248)))) (not (= (_1!1669 (h!2907 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248))))) key!828))))))

(declare-fun b!178958 () Bool)

(assert (=> b!178958 (= e!117940 (getValueByKey!199 (t!7135 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248)))) key!828))))

(declare-fun b!178959 () Bool)

(assert (=> b!178959 (= e!117940 None!203)))

(declare-fun d!53981 () Bool)

(declare-fun c!32078 () Bool)

(assert (=> d!53981 (= c!32078 (and ((_ is Cons!2283) (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248)))) (= (_1!1669 (h!2907 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248))))) key!828)))))

(assert (=> d!53981 (= (getValueByKey!199 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248))) key!828) e!117939)))

(assert (= (and d!53981 c!32078) b!178956))

(assert (= (and d!53981 (not c!32078)) b!178957))

(assert (= (and b!178957 c!32079) b!178958))

(assert (= (and b!178957 (not c!32079)) b!178959))

(declare-fun m!207287 () Bool)

(assert (=> b!178958 m!207287))

(assert (=> b!178806 d!53981))

(declare-fun d!53983 () Bool)

(declare-fun e!117942 () Bool)

(assert (=> d!53983 e!117942))

(declare-fun res!84772 () Bool)

(assert (=> d!53983 (=> res!84772 e!117942)))

(declare-fun lt!88484 () Bool)

(assert (=> d!53983 (= res!84772 (not lt!88484))))

(declare-fun lt!88487 () Bool)

(assert (=> d!53983 (= lt!88484 lt!88487)))

(declare-fun lt!88486 () Unit!5449)

(declare-fun e!117941 () Unit!5449)

(assert (=> d!53983 (= lt!88486 e!117941)))

(declare-fun c!32080 () Bool)

(assert (=> d!53983 (= c!32080 lt!88487)))

(assert (=> d!53983 (= lt!88487 (containsKey!203 (toList!1145 lt!88442) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!53983 (= (contains!1211 lt!88442 #b1000000000000000000000000000000000000000000000000000000000000000) lt!88484)))

(declare-fun b!178960 () Bool)

(declare-fun lt!88485 () Unit!5449)

(assert (=> b!178960 (= e!117941 lt!88485)))

(assert (=> b!178960 (= lt!88485 (lemmaContainsKeyImpliesGetValueByKeyDefined!152 (toList!1145 lt!88442) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!178960 (isDefined!153 (getValueByKey!199 (toList!1145 lt!88442) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!178961 () Bool)

(declare-fun Unit!5453 () Unit!5449)

(assert (=> b!178961 (= e!117941 Unit!5453)))

(declare-fun b!178962 () Bool)

(assert (=> b!178962 (= e!117942 (isDefined!153 (getValueByKey!199 (toList!1145 lt!88442) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53983 c!32080) b!178960))

(assert (= (and d!53983 (not c!32080)) b!178961))

(assert (= (and d!53983 (not res!84772)) b!178962))

(declare-fun m!207289 () Bool)

(assert (=> d!53983 m!207289))

(declare-fun m!207291 () Bool)

(assert (=> b!178960 m!207291))

(assert (=> b!178960 m!207277))

(assert (=> b!178960 m!207277))

(declare-fun m!207293 () Bool)

(assert (=> b!178960 m!207293))

(assert (=> b!178962 m!207277))

(assert (=> b!178962 m!207277))

(assert (=> b!178962 m!207293))

(assert (=> bm!18077 d!53983))

(declare-fun d!53985 () Bool)

(declare-fun e!117945 () Bool)

(assert (=> d!53985 e!117945))

(declare-fun res!84777 () Bool)

(assert (=> d!53985 (=> (not res!84777) (not e!117945))))

(declare-fun lt!88496 () ListLongMap!2259)

(assert (=> d!53985 (= res!84777 (contains!1211 lt!88496 (_1!1669 (tuple2!3319 lt!88448 (minValue!3515 thiss!1248)))))))

(declare-fun lt!88497 () List!2287)

(assert (=> d!53985 (= lt!88496 (ListLongMap!2260 lt!88497))))

(declare-fun lt!88498 () Unit!5449)

(declare-fun lt!88499 () Unit!5449)

(assert (=> d!53985 (= lt!88498 lt!88499)))

(assert (=> d!53985 (= (getValueByKey!199 lt!88497 (_1!1669 (tuple2!3319 lt!88448 (minValue!3515 thiss!1248)))) (Some!204 (_2!1669 (tuple2!3319 lt!88448 (minValue!3515 thiss!1248)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!107 (List!2287 (_ BitVec 64) V!5227) Unit!5449)

(assert (=> d!53985 (= lt!88499 (lemmaContainsTupThenGetReturnValue!107 lt!88497 (_1!1669 (tuple2!3319 lt!88448 (minValue!3515 thiss!1248))) (_2!1669 (tuple2!3319 lt!88448 (minValue!3515 thiss!1248)))))))

(declare-fun insertStrictlySorted!109 (List!2287 (_ BitVec 64) V!5227) List!2287)

(assert (=> d!53985 (= lt!88497 (insertStrictlySorted!109 (toList!1145 lt!88459) (_1!1669 (tuple2!3319 lt!88448 (minValue!3515 thiss!1248))) (_2!1669 (tuple2!3319 lt!88448 (minValue!3515 thiss!1248)))))))

(assert (=> d!53985 (= (+!257 lt!88459 (tuple2!3319 lt!88448 (minValue!3515 thiss!1248))) lt!88496)))

(declare-fun b!178967 () Bool)

(declare-fun res!84778 () Bool)

(assert (=> b!178967 (=> (not res!84778) (not e!117945))))

(assert (=> b!178967 (= res!84778 (= (getValueByKey!199 (toList!1145 lt!88496) (_1!1669 (tuple2!3319 lt!88448 (minValue!3515 thiss!1248)))) (Some!204 (_2!1669 (tuple2!3319 lt!88448 (minValue!3515 thiss!1248))))))))

(declare-fun b!178968 () Bool)

(declare-fun contains!1213 (List!2287 tuple2!3318) Bool)

(assert (=> b!178968 (= e!117945 (contains!1213 (toList!1145 lt!88496) (tuple2!3319 lt!88448 (minValue!3515 thiss!1248))))))

(assert (= (and d!53985 res!84777) b!178967))

(assert (= (and b!178967 res!84778) b!178968))

(declare-fun m!207295 () Bool)

(assert (=> d!53985 m!207295))

(declare-fun m!207297 () Bool)

(assert (=> d!53985 m!207297))

(declare-fun m!207299 () Bool)

(assert (=> d!53985 m!207299))

(declare-fun m!207301 () Bool)

(assert (=> d!53985 m!207301))

(declare-fun m!207303 () Bool)

(assert (=> b!178967 m!207303))

(declare-fun m!207305 () Bool)

(assert (=> b!178968 m!207305))

(assert (=> b!178865 d!53985))

(declare-fun d!53987 () Bool)

(declare-fun e!117963 () Bool)

(assert (=> d!53987 e!117963))

(declare-fun res!84789 () Bool)

(assert (=> d!53987 (=> (not res!84789) (not e!117963))))

(declare-fun lt!88515 () ListLongMap!2259)

(assert (=> d!53987 (= res!84789 (not (contains!1211 lt!88515 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!117962 () ListLongMap!2259)

(assert (=> d!53987 (= lt!88515 e!117962)))

(declare-fun c!32089 () Bool)

(assert (=> d!53987 (= c!32089 (bvsge #b00000000000000000000000000000000 (size!3875 (_keys!5555 thiss!1248))))))

(assert (=> d!53987 (validMask!0 (mask!8642 thiss!1248))))

(assert (=> d!53987 (= (getCurrentListMapNoExtraKeys!175 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248)) lt!88515)))

(declare-fun b!178993 () Bool)

(declare-fun e!117961 () Bool)

(assert (=> b!178993 (= e!117961 (validKeyInArray!0 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!178993 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!178994 () Bool)

(declare-fun res!84788 () Bool)

(assert (=> b!178994 (=> (not res!84788) (not e!117963))))

(assert (=> b!178994 (= res!84788 (not (contains!1211 lt!88515 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!178995 () Bool)

(declare-fun e!117966 () ListLongMap!2259)

(assert (=> b!178995 (= e!117962 e!117966)))

(declare-fun c!32092 () Bool)

(assert (=> b!178995 (= c!32092 (validKeyInArray!0 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18089 () Bool)

(declare-fun call!18092 () ListLongMap!2259)

(assert (=> bm!18089 (= call!18092 (getCurrentListMapNoExtraKeys!175 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3674 thiss!1248)))))

(declare-fun b!178996 () Bool)

(declare-fun e!117960 () Bool)

(assert (=> b!178996 (= e!117963 e!117960)))

(declare-fun c!32091 () Bool)

(assert (=> b!178996 (= c!32091 e!117961)))

(declare-fun res!84787 () Bool)

(assert (=> b!178996 (=> (not res!84787) (not e!117961))))

(assert (=> b!178996 (= res!84787 (bvslt #b00000000000000000000000000000000 (size!3875 (_keys!5555 thiss!1248))))))

(declare-fun b!178997 () Bool)

(declare-fun e!117964 () Bool)

(declare-fun isEmpty!459 (ListLongMap!2259) Bool)

(assert (=> b!178997 (= e!117964 (isEmpty!459 lt!88515))))

(declare-fun b!178998 () Bool)

(assert (=> b!178998 (= e!117964 (= lt!88515 (getCurrentListMapNoExtraKeys!175 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3674 thiss!1248))))))

(declare-fun b!178999 () Bool)

(assert (=> b!178999 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3875 (_keys!5555 thiss!1248))))))

(assert (=> b!178999 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3876 (_values!3657 thiss!1248))))))

(declare-fun e!117965 () Bool)

(assert (=> b!178999 (= e!117965 (= (apply!145 lt!88515 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)) (get!2042 (select (arr!3569 (_values!3657 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!483 (defaultEntry!3674 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!179000 () Bool)

(assert (=> b!179000 (= e!117960 e!117964)))

(declare-fun c!32090 () Bool)

(assert (=> b!179000 (= c!32090 (bvslt #b00000000000000000000000000000000 (size!3875 (_keys!5555 thiss!1248))))))

(declare-fun b!179001 () Bool)

(assert (=> b!179001 (= e!117962 (ListLongMap!2260 Nil!2284))))

(declare-fun b!179002 () Bool)

(assert (=> b!179002 (= e!117966 call!18092)))

(declare-fun b!179003 () Bool)

(assert (=> b!179003 (= e!117960 e!117965)))

(assert (=> b!179003 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3875 (_keys!5555 thiss!1248))))))

(declare-fun res!84790 () Bool)

(assert (=> b!179003 (= res!84790 (contains!1211 lt!88515 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!179003 (=> (not res!84790) (not e!117965))))

(declare-fun b!179004 () Bool)

(declare-fun lt!88516 () Unit!5449)

(declare-fun lt!88519 () Unit!5449)

(assert (=> b!179004 (= lt!88516 lt!88519)))

(declare-fun lt!88518 () V!5227)

(declare-fun lt!88517 () (_ BitVec 64))

(declare-fun lt!88520 () (_ BitVec 64))

(declare-fun lt!88514 () ListLongMap!2259)

(assert (=> b!179004 (not (contains!1211 (+!257 lt!88514 (tuple2!3319 lt!88517 lt!88518)) lt!88520))))

(declare-fun addStillNotContains!82 (ListLongMap!2259 (_ BitVec 64) V!5227 (_ BitVec 64)) Unit!5449)

(assert (=> b!179004 (= lt!88519 (addStillNotContains!82 lt!88514 lt!88517 lt!88518 lt!88520))))

(assert (=> b!179004 (= lt!88520 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!179004 (= lt!88518 (get!2042 (select (arr!3569 (_values!3657 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!483 (defaultEntry!3674 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!179004 (= lt!88517 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!179004 (= lt!88514 call!18092)))

(assert (=> b!179004 (= e!117966 (+!257 call!18092 (tuple2!3319 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000) (get!2042 (select (arr!3569 (_values!3657 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!483 (defaultEntry!3674 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!53987 c!32089) b!179001))

(assert (= (and d!53987 (not c!32089)) b!178995))

(assert (= (and b!178995 c!32092) b!179004))

(assert (= (and b!178995 (not c!32092)) b!179002))

(assert (= (or b!179004 b!179002) bm!18089))

(assert (= (and d!53987 res!84789) b!178994))

(assert (= (and b!178994 res!84788) b!178996))

(assert (= (and b!178996 res!84787) b!178993))

(assert (= (and b!178996 c!32091) b!179003))

(assert (= (and b!178996 (not c!32091)) b!179000))

(assert (= (and b!179003 res!84790) b!178999))

(assert (= (and b!179000 c!32090) b!178998))

(assert (= (and b!179000 (not c!32090)) b!178997))

(declare-fun b_lambda!7129 () Bool)

(assert (=> (not b_lambda!7129) (not b!178999)))

(assert (=> b!178999 t!7137))

(declare-fun b_and!10959 () Bool)

(assert (= b_and!10957 (and (=> t!7137 result!4685) b_and!10959)))

(declare-fun b_lambda!7131 () Bool)

(assert (=> (not b_lambda!7131) (not b!179004)))

(assert (=> b!179004 t!7137))

(declare-fun b_and!10961 () Bool)

(assert (= b_and!10959 (and (=> t!7137 result!4685) b_and!10961)))

(assert (=> b!178995 m!207187))

(assert (=> b!178995 m!207187))

(assert (=> b!178995 m!207193))

(declare-fun m!207307 () Bool)

(assert (=> b!178994 m!207307))

(assert (=> b!179003 m!207187))

(assert (=> b!179003 m!207187))

(declare-fun m!207309 () Bool)

(assert (=> b!179003 m!207309))

(declare-fun m!207311 () Bool)

(assert (=> b!178997 m!207311))

(declare-fun m!207313 () Bool)

(assert (=> d!53987 m!207313))

(assert (=> d!53987 m!207145))

(assert (=> b!178999 m!207233))

(assert (=> b!178999 m!207235))

(assert (=> b!178999 m!207187))

(assert (=> b!178999 m!207187))

(declare-fun m!207315 () Bool)

(assert (=> b!178999 m!207315))

(assert (=> b!178999 m!207233))

(assert (=> b!178999 m!207235))

(assert (=> b!178999 m!207237))

(declare-fun m!207317 () Bool)

(assert (=> b!178998 m!207317))

(assert (=> bm!18089 m!207317))

(assert (=> b!178993 m!207187))

(assert (=> b!178993 m!207187))

(assert (=> b!178993 m!207193))

(assert (=> b!179004 m!207233))

(assert (=> b!179004 m!207235))

(assert (=> b!179004 m!207237))

(assert (=> b!179004 m!207233))

(assert (=> b!179004 m!207235))

(declare-fun m!207319 () Bool)

(assert (=> b!179004 m!207319))

(declare-fun m!207321 () Bool)

(assert (=> b!179004 m!207321))

(assert (=> b!179004 m!207187))

(assert (=> b!179004 m!207321))

(declare-fun m!207323 () Bool)

(assert (=> b!179004 m!207323))

(declare-fun m!207325 () Bool)

(assert (=> b!179004 m!207325))

(assert (=> b!178865 d!53987))

(declare-fun d!53989 () Bool)

(assert (=> d!53989 (= (apply!145 lt!88454 lt!88449) (get!2043 (getValueByKey!199 (toList!1145 lt!88454) lt!88449)))))

(declare-fun bs!7342 () Bool)

(assert (= bs!7342 d!53989))

(declare-fun m!207327 () Bool)

(assert (=> bs!7342 m!207327))

(assert (=> bs!7342 m!207327))

(declare-fun m!207329 () Bool)

(assert (=> bs!7342 m!207329))

(assert (=> b!178865 d!53989))

(declare-fun d!53991 () Bool)

(declare-fun e!117967 () Bool)

(assert (=> d!53991 e!117967))

(declare-fun res!84791 () Bool)

(assert (=> d!53991 (=> (not res!84791) (not e!117967))))

(declare-fun lt!88521 () ListLongMap!2259)

(assert (=> d!53991 (= res!84791 (contains!1211 lt!88521 (_1!1669 (tuple2!3319 lt!88455 (zeroValue!3515 thiss!1248)))))))

(declare-fun lt!88522 () List!2287)

(assert (=> d!53991 (= lt!88521 (ListLongMap!2260 lt!88522))))

(declare-fun lt!88523 () Unit!5449)

(declare-fun lt!88524 () Unit!5449)

(assert (=> d!53991 (= lt!88523 lt!88524)))

(assert (=> d!53991 (= (getValueByKey!199 lt!88522 (_1!1669 (tuple2!3319 lt!88455 (zeroValue!3515 thiss!1248)))) (Some!204 (_2!1669 (tuple2!3319 lt!88455 (zeroValue!3515 thiss!1248)))))))

(assert (=> d!53991 (= lt!88524 (lemmaContainsTupThenGetReturnValue!107 lt!88522 (_1!1669 (tuple2!3319 lt!88455 (zeroValue!3515 thiss!1248))) (_2!1669 (tuple2!3319 lt!88455 (zeroValue!3515 thiss!1248)))))))

(assert (=> d!53991 (= lt!88522 (insertStrictlySorted!109 (toList!1145 lt!88438) (_1!1669 (tuple2!3319 lt!88455 (zeroValue!3515 thiss!1248))) (_2!1669 (tuple2!3319 lt!88455 (zeroValue!3515 thiss!1248)))))))

(assert (=> d!53991 (= (+!257 lt!88438 (tuple2!3319 lt!88455 (zeroValue!3515 thiss!1248))) lt!88521)))

(declare-fun b!179005 () Bool)

(declare-fun res!84792 () Bool)

(assert (=> b!179005 (=> (not res!84792) (not e!117967))))

(assert (=> b!179005 (= res!84792 (= (getValueByKey!199 (toList!1145 lt!88521) (_1!1669 (tuple2!3319 lt!88455 (zeroValue!3515 thiss!1248)))) (Some!204 (_2!1669 (tuple2!3319 lt!88455 (zeroValue!3515 thiss!1248))))))))

(declare-fun b!179006 () Bool)

(assert (=> b!179006 (= e!117967 (contains!1213 (toList!1145 lt!88521) (tuple2!3319 lt!88455 (zeroValue!3515 thiss!1248))))))

(assert (= (and d!53991 res!84791) b!179005))

(assert (= (and b!179005 res!84792) b!179006))

(declare-fun m!207331 () Bool)

(assert (=> d!53991 m!207331))

(declare-fun m!207333 () Bool)

(assert (=> d!53991 m!207333))

(declare-fun m!207335 () Bool)

(assert (=> d!53991 m!207335))

(declare-fun m!207337 () Bool)

(assert (=> d!53991 m!207337))

(declare-fun m!207339 () Bool)

(assert (=> b!179005 m!207339))

(declare-fun m!207341 () Bool)

(assert (=> b!179006 m!207341))

(assert (=> b!178865 d!53991))

(declare-fun d!53993 () Bool)

(assert (=> d!53993 (= (apply!145 (+!257 lt!88458 (tuple2!3319 lt!88453 (minValue!3515 thiss!1248))) lt!88439) (apply!145 lt!88458 lt!88439))))

(declare-fun lt!88527 () Unit!5449)

(declare-fun choose!964 (ListLongMap!2259 (_ BitVec 64) V!5227 (_ BitVec 64)) Unit!5449)

(assert (=> d!53993 (= lt!88527 (choose!964 lt!88458 lt!88453 (minValue!3515 thiss!1248) lt!88439))))

(declare-fun e!117970 () Bool)

(assert (=> d!53993 e!117970))

(declare-fun res!84795 () Bool)

(assert (=> d!53993 (=> (not res!84795) (not e!117970))))

(assert (=> d!53993 (= res!84795 (contains!1211 lt!88458 lt!88439))))

(assert (=> d!53993 (= (addApplyDifferent!121 lt!88458 lt!88453 (minValue!3515 thiss!1248) lt!88439) lt!88527)))

(declare-fun b!179010 () Bool)

(assert (=> b!179010 (= e!117970 (not (= lt!88439 lt!88453)))))

(assert (= (and d!53993 res!84795) b!179010))

(assert (=> d!53993 m!207219))

(assert (=> d!53993 m!207211))

(declare-fun m!207343 () Bool)

(assert (=> d!53993 m!207343))

(assert (=> d!53993 m!207211))

(assert (=> d!53993 m!207225))

(declare-fun m!207345 () Bool)

(assert (=> d!53993 m!207345))

(assert (=> b!178865 d!53993))

(declare-fun d!53995 () Bool)

(declare-fun e!117971 () Bool)

(assert (=> d!53995 e!117971))

(declare-fun res!84796 () Bool)

(assert (=> d!53995 (=> (not res!84796) (not e!117971))))

(declare-fun lt!88528 () ListLongMap!2259)

(assert (=> d!53995 (= res!84796 (contains!1211 lt!88528 (_1!1669 (tuple2!3319 lt!88453 (minValue!3515 thiss!1248)))))))

(declare-fun lt!88529 () List!2287)

(assert (=> d!53995 (= lt!88528 (ListLongMap!2260 lt!88529))))

(declare-fun lt!88530 () Unit!5449)

(declare-fun lt!88531 () Unit!5449)

(assert (=> d!53995 (= lt!88530 lt!88531)))

(assert (=> d!53995 (= (getValueByKey!199 lt!88529 (_1!1669 (tuple2!3319 lt!88453 (minValue!3515 thiss!1248)))) (Some!204 (_2!1669 (tuple2!3319 lt!88453 (minValue!3515 thiss!1248)))))))

(assert (=> d!53995 (= lt!88531 (lemmaContainsTupThenGetReturnValue!107 lt!88529 (_1!1669 (tuple2!3319 lt!88453 (minValue!3515 thiss!1248))) (_2!1669 (tuple2!3319 lt!88453 (minValue!3515 thiss!1248)))))))

(assert (=> d!53995 (= lt!88529 (insertStrictlySorted!109 (toList!1145 lt!88458) (_1!1669 (tuple2!3319 lt!88453 (minValue!3515 thiss!1248))) (_2!1669 (tuple2!3319 lt!88453 (minValue!3515 thiss!1248)))))))

(assert (=> d!53995 (= (+!257 lt!88458 (tuple2!3319 lt!88453 (minValue!3515 thiss!1248))) lt!88528)))

(declare-fun b!179011 () Bool)

(declare-fun res!84797 () Bool)

(assert (=> b!179011 (=> (not res!84797) (not e!117971))))

(assert (=> b!179011 (= res!84797 (= (getValueByKey!199 (toList!1145 lt!88528) (_1!1669 (tuple2!3319 lt!88453 (minValue!3515 thiss!1248)))) (Some!204 (_2!1669 (tuple2!3319 lt!88453 (minValue!3515 thiss!1248))))))))

(declare-fun b!179012 () Bool)

(assert (=> b!179012 (= e!117971 (contains!1213 (toList!1145 lt!88528) (tuple2!3319 lt!88453 (minValue!3515 thiss!1248))))))

(assert (= (and d!53995 res!84796) b!179011))

(assert (= (and b!179011 res!84797) b!179012))

(declare-fun m!207347 () Bool)

(assert (=> d!53995 m!207347))

(declare-fun m!207349 () Bool)

(assert (=> d!53995 m!207349))

(declare-fun m!207351 () Bool)

(assert (=> d!53995 m!207351))

(declare-fun m!207353 () Bool)

(assert (=> d!53995 m!207353))

(declare-fun m!207355 () Bool)

(assert (=> b!179011 m!207355))

(declare-fun m!207357 () Bool)

(assert (=> b!179012 m!207357))

(assert (=> b!178865 d!53995))

(declare-fun d!53997 () Bool)

(declare-fun e!117973 () Bool)

(assert (=> d!53997 e!117973))

(declare-fun res!84798 () Bool)

(assert (=> d!53997 (=> res!84798 e!117973)))

(declare-fun lt!88532 () Bool)

(assert (=> d!53997 (= res!84798 (not lt!88532))))

(declare-fun lt!88535 () Bool)

(assert (=> d!53997 (= lt!88532 lt!88535)))

(declare-fun lt!88534 () Unit!5449)

(declare-fun e!117972 () Unit!5449)

(assert (=> d!53997 (= lt!88534 e!117972)))

(declare-fun c!32093 () Bool)

(assert (=> d!53997 (= c!32093 lt!88535)))

(assert (=> d!53997 (= lt!88535 (containsKey!203 (toList!1145 (+!257 lt!88438 (tuple2!3319 lt!88455 (zeroValue!3515 thiss!1248)))) lt!88444))))

(assert (=> d!53997 (= (contains!1211 (+!257 lt!88438 (tuple2!3319 lt!88455 (zeroValue!3515 thiss!1248))) lt!88444) lt!88532)))

(declare-fun b!179013 () Bool)

(declare-fun lt!88533 () Unit!5449)

(assert (=> b!179013 (= e!117972 lt!88533)))

(assert (=> b!179013 (= lt!88533 (lemmaContainsKeyImpliesGetValueByKeyDefined!152 (toList!1145 (+!257 lt!88438 (tuple2!3319 lt!88455 (zeroValue!3515 thiss!1248)))) lt!88444))))

(assert (=> b!179013 (isDefined!153 (getValueByKey!199 (toList!1145 (+!257 lt!88438 (tuple2!3319 lt!88455 (zeroValue!3515 thiss!1248)))) lt!88444))))

(declare-fun b!179014 () Bool)

(declare-fun Unit!5454 () Unit!5449)

(assert (=> b!179014 (= e!117972 Unit!5454)))

(declare-fun b!179015 () Bool)

(assert (=> b!179015 (= e!117973 (isDefined!153 (getValueByKey!199 (toList!1145 (+!257 lt!88438 (tuple2!3319 lt!88455 (zeroValue!3515 thiss!1248)))) lt!88444)))))

(assert (= (and d!53997 c!32093) b!179013))

(assert (= (and d!53997 (not c!32093)) b!179014))

(assert (= (and d!53997 (not res!84798)) b!179015))

(declare-fun m!207359 () Bool)

(assert (=> d!53997 m!207359))

(declare-fun m!207361 () Bool)

(assert (=> b!179013 m!207361))

(declare-fun m!207363 () Bool)

(assert (=> b!179013 m!207363))

(assert (=> b!179013 m!207363))

(declare-fun m!207365 () Bool)

(assert (=> b!179013 m!207365))

(assert (=> b!179015 m!207363))

(assert (=> b!179015 m!207363))

(assert (=> b!179015 m!207365))

(assert (=> b!178865 d!53997))

(declare-fun d!53999 () Bool)

(assert (=> d!53999 (= (apply!145 lt!88459 lt!88457) (get!2043 (getValueByKey!199 (toList!1145 lt!88459) lt!88457)))))

(declare-fun bs!7343 () Bool)

(assert (= bs!7343 d!53999))

(declare-fun m!207367 () Bool)

(assert (=> bs!7343 m!207367))

(assert (=> bs!7343 m!207367))

(declare-fun m!207369 () Bool)

(assert (=> bs!7343 m!207369))

(assert (=> b!178865 d!53999))

(declare-fun d!54001 () Bool)

(assert (=> d!54001 (contains!1211 (+!257 lt!88438 (tuple2!3319 lt!88455 (zeroValue!3515 thiss!1248))) lt!88444)))

(declare-fun lt!88538 () Unit!5449)

(declare-fun choose!965 (ListLongMap!2259 (_ BitVec 64) V!5227 (_ BitVec 64)) Unit!5449)

(assert (=> d!54001 (= lt!88538 (choose!965 lt!88438 lt!88455 (zeroValue!3515 thiss!1248) lt!88444))))

(assert (=> d!54001 (contains!1211 lt!88438 lt!88444)))

(assert (=> d!54001 (= (addStillContains!121 lt!88438 lt!88455 (zeroValue!3515 thiss!1248) lt!88444) lt!88538)))

(declare-fun bs!7344 () Bool)

(assert (= bs!7344 d!54001))

(assert (=> bs!7344 m!207213))

(assert (=> bs!7344 m!207213))

(assert (=> bs!7344 m!207215))

(declare-fun m!207371 () Bool)

(assert (=> bs!7344 m!207371))

(declare-fun m!207373 () Bool)

(assert (=> bs!7344 m!207373))

(assert (=> b!178865 d!54001))

(declare-fun d!54003 () Bool)

(assert (=> d!54003 (= (apply!145 lt!88458 lt!88439) (get!2043 (getValueByKey!199 (toList!1145 lt!88458) lt!88439)))))

(declare-fun bs!7345 () Bool)

(assert (= bs!7345 d!54003))

(declare-fun m!207375 () Bool)

(assert (=> bs!7345 m!207375))

(assert (=> bs!7345 m!207375))

(declare-fun m!207377 () Bool)

(assert (=> bs!7345 m!207377))

(assert (=> b!178865 d!54003))

(declare-fun d!54005 () Bool)

(assert (=> d!54005 (= (apply!145 (+!257 lt!88454 (tuple2!3319 lt!88445 (zeroValue!3515 thiss!1248))) lt!88449) (apply!145 lt!88454 lt!88449))))

(declare-fun lt!88539 () Unit!5449)

(assert (=> d!54005 (= lt!88539 (choose!964 lt!88454 lt!88445 (zeroValue!3515 thiss!1248) lt!88449))))

(declare-fun e!117974 () Bool)

(assert (=> d!54005 e!117974))

(declare-fun res!84799 () Bool)

(assert (=> d!54005 (=> (not res!84799) (not e!117974))))

(assert (=> d!54005 (= res!84799 (contains!1211 lt!88454 lt!88449))))

(assert (=> d!54005 (= (addApplyDifferent!121 lt!88454 lt!88445 (zeroValue!3515 thiss!1248) lt!88449) lt!88539)))

(declare-fun b!179017 () Bool)

(assert (=> b!179017 (= e!117974 (not (= lt!88449 lt!88445)))))

(assert (= (and d!54005 res!84799) b!179017))

(assert (=> d!54005 m!207195))

(assert (=> d!54005 m!207205))

(declare-fun m!207379 () Bool)

(assert (=> d!54005 m!207379))

(assert (=> d!54005 m!207205))

(assert (=> d!54005 m!207223))

(declare-fun m!207381 () Bool)

(assert (=> d!54005 m!207381))

(assert (=> b!178865 d!54005))

(declare-fun d!54007 () Bool)

(assert (=> d!54007 (= (apply!145 (+!257 lt!88454 (tuple2!3319 lt!88445 (zeroValue!3515 thiss!1248))) lt!88449) (get!2043 (getValueByKey!199 (toList!1145 (+!257 lt!88454 (tuple2!3319 lt!88445 (zeroValue!3515 thiss!1248)))) lt!88449)))))

(declare-fun bs!7346 () Bool)

(assert (= bs!7346 d!54007))

(declare-fun m!207383 () Bool)

(assert (=> bs!7346 m!207383))

(assert (=> bs!7346 m!207383))

(declare-fun m!207385 () Bool)

(assert (=> bs!7346 m!207385))

(assert (=> b!178865 d!54007))

(declare-fun d!54009 () Bool)

(declare-fun e!117975 () Bool)

(assert (=> d!54009 e!117975))

(declare-fun res!84800 () Bool)

(assert (=> d!54009 (=> (not res!84800) (not e!117975))))

(declare-fun lt!88540 () ListLongMap!2259)

(assert (=> d!54009 (= res!84800 (contains!1211 lt!88540 (_1!1669 (tuple2!3319 lt!88445 (zeroValue!3515 thiss!1248)))))))

(declare-fun lt!88541 () List!2287)

(assert (=> d!54009 (= lt!88540 (ListLongMap!2260 lt!88541))))

(declare-fun lt!88542 () Unit!5449)

(declare-fun lt!88543 () Unit!5449)

(assert (=> d!54009 (= lt!88542 lt!88543)))

(assert (=> d!54009 (= (getValueByKey!199 lt!88541 (_1!1669 (tuple2!3319 lt!88445 (zeroValue!3515 thiss!1248)))) (Some!204 (_2!1669 (tuple2!3319 lt!88445 (zeroValue!3515 thiss!1248)))))))

(assert (=> d!54009 (= lt!88543 (lemmaContainsTupThenGetReturnValue!107 lt!88541 (_1!1669 (tuple2!3319 lt!88445 (zeroValue!3515 thiss!1248))) (_2!1669 (tuple2!3319 lt!88445 (zeroValue!3515 thiss!1248)))))))

(assert (=> d!54009 (= lt!88541 (insertStrictlySorted!109 (toList!1145 lt!88454) (_1!1669 (tuple2!3319 lt!88445 (zeroValue!3515 thiss!1248))) (_2!1669 (tuple2!3319 lt!88445 (zeroValue!3515 thiss!1248)))))))

(assert (=> d!54009 (= (+!257 lt!88454 (tuple2!3319 lt!88445 (zeroValue!3515 thiss!1248))) lt!88540)))

(declare-fun b!179018 () Bool)

(declare-fun res!84801 () Bool)

(assert (=> b!179018 (=> (not res!84801) (not e!117975))))

(assert (=> b!179018 (= res!84801 (= (getValueByKey!199 (toList!1145 lt!88540) (_1!1669 (tuple2!3319 lt!88445 (zeroValue!3515 thiss!1248)))) (Some!204 (_2!1669 (tuple2!3319 lt!88445 (zeroValue!3515 thiss!1248))))))))

(declare-fun b!179019 () Bool)

(assert (=> b!179019 (= e!117975 (contains!1213 (toList!1145 lt!88540) (tuple2!3319 lt!88445 (zeroValue!3515 thiss!1248))))))

(assert (= (and d!54009 res!84800) b!179018))

(assert (= (and b!179018 res!84801) b!179019))

(declare-fun m!207387 () Bool)

(assert (=> d!54009 m!207387))

(declare-fun m!207389 () Bool)

(assert (=> d!54009 m!207389))

(declare-fun m!207391 () Bool)

(assert (=> d!54009 m!207391))

(declare-fun m!207393 () Bool)

(assert (=> d!54009 m!207393))

(declare-fun m!207395 () Bool)

(assert (=> b!179018 m!207395))

(declare-fun m!207397 () Bool)

(assert (=> b!179019 m!207397))

(assert (=> b!178865 d!54009))

(declare-fun d!54011 () Bool)

(assert (=> d!54011 (= (apply!145 (+!257 lt!88459 (tuple2!3319 lt!88448 (minValue!3515 thiss!1248))) lt!88457) (get!2043 (getValueByKey!199 (toList!1145 (+!257 lt!88459 (tuple2!3319 lt!88448 (minValue!3515 thiss!1248)))) lt!88457)))))

(declare-fun bs!7347 () Bool)

(assert (= bs!7347 d!54011))

(declare-fun m!207399 () Bool)

(assert (=> bs!7347 m!207399))

(assert (=> bs!7347 m!207399))

(declare-fun m!207401 () Bool)

(assert (=> bs!7347 m!207401))

(assert (=> b!178865 d!54011))

(declare-fun d!54013 () Bool)

(assert (=> d!54013 (= (apply!145 (+!257 lt!88459 (tuple2!3319 lt!88448 (minValue!3515 thiss!1248))) lt!88457) (apply!145 lt!88459 lt!88457))))

(declare-fun lt!88544 () Unit!5449)

(assert (=> d!54013 (= lt!88544 (choose!964 lt!88459 lt!88448 (minValue!3515 thiss!1248) lt!88457))))

(declare-fun e!117976 () Bool)

(assert (=> d!54013 e!117976))

(declare-fun res!84802 () Bool)

(assert (=> d!54013 (=> (not res!84802) (not e!117976))))

(assert (=> d!54013 (= res!84802 (contains!1211 lt!88459 lt!88457))))

(assert (=> d!54013 (= (addApplyDifferent!121 lt!88459 lt!88448 (minValue!3515 thiss!1248) lt!88457) lt!88544)))

(declare-fun b!179020 () Bool)

(assert (=> b!179020 (= e!117976 (not (= lt!88457 lt!88448)))))

(assert (= (and d!54013 res!84802) b!179020))

(assert (=> d!54013 m!207203))

(assert (=> d!54013 m!207207))

(declare-fun m!207403 () Bool)

(assert (=> d!54013 m!207403))

(assert (=> d!54013 m!207207))

(assert (=> d!54013 m!207209))

(declare-fun m!207405 () Bool)

(assert (=> d!54013 m!207405))

(assert (=> b!178865 d!54013))

(declare-fun d!54015 () Bool)

(assert (=> d!54015 (= (apply!145 (+!257 lt!88458 (tuple2!3319 lt!88453 (minValue!3515 thiss!1248))) lt!88439) (get!2043 (getValueByKey!199 (toList!1145 (+!257 lt!88458 (tuple2!3319 lt!88453 (minValue!3515 thiss!1248)))) lt!88439)))))

(declare-fun bs!7348 () Bool)

(assert (= bs!7348 d!54015))

(declare-fun m!207407 () Bool)

(assert (=> bs!7348 m!207407))

(assert (=> bs!7348 m!207407))

(declare-fun m!207409 () Bool)

(assert (=> bs!7348 m!207409))

(assert (=> b!178865 d!54015))

(assert (=> b!178808 d!53979))

(assert (=> b!178808 d!53981))

(declare-fun b!179029 () Bool)

(declare-fun res!84811 () Bool)

(declare-fun e!117979 () Bool)

(assert (=> b!179029 (=> (not res!84811) (not e!117979))))

(assert (=> b!179029 (= res!84811 (and (= (size!3876 (_values!3657 thiss!1248)) (bvadd (mask!8642 thiss!1248) #b00000000000000000000000000000001)) (= (size!3875 (_keys!5555 thiss!1248)) (size!3876 (_values!3657 thiss!1248))) (bvsge (_size!1252 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1252 thiss!1248) (bvadd (mask!8642 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!179031 () Bool)

(declare-fun res!84813 () Bool)

(assert (=> b!179031 (=> (not res!84813) (not e!117979))))

(declare-fun size!3879 (LongMapFixedSize!2406) (_ BitVec 32))

(assert (=> b!179031 (= res!84813 (= (size!3879 thiss!1248) (bvadd (_size!1252 thiss!1248) (bvsdiv (bvadd (extraKeys!3411 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!179032 () Bool)

(assert (=> b!179032 (= e!117979 (and (bvsge (extraKeys!3411 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3411 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1252 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!179030 () Bool)

(declare-fun res!84812 () Bool)

(assert (=> b!179030 (=> (not res!84812) (not e!117979))))

(assert (=> b!179030 (= res!84812 (bvsge (size!3879 thiss!1248) (_size!1252 thiss!1248)))))

(declare-fun d!54017 () Bool)

(declare-fun res!84814 () Bool)

(assert (=> d!54017 (=> (not res!84814) (not e!117979))))

(assert (=> d!54017 (= res!84814 (validMask!0 (mask!8642 thiss!1248)))))

(assert (=> d!54017 (= (simpleValid!158 thiss!1248) e!117979)))

(assert (= (and d!54017 res!84814) b!179029))

(assert (= (and b!179029 res!84811) b!179030))

(assert (= (and b!179030 res!84812) b!179031))

(assert (= (and b!179031 res!84813) b!179032))

(declare-fun m!207411 () Bool)

(assert (=> b!179031 m!207411))

(assert (=> b!179030 m!207411))

(assert (=> d!54017 m!207145))

(assert (=> d!53963 d!54017))

(declare-fun d!54019 () Bool)

(assert (=> d!54019 (= (apply!145 lt!88442 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)) (get!2043 (getValueByKey!199 (toList!1145 lt!88442) (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7349 () Bool)

(assert (= bs!7349 d!54019))

(assert (=> bs!7349 m!207187))

(declare-fun m!207413 () Bool)

(assert (=> bs!7349 m!207413))

(assert (=> bs!7349 m!207413))

(declare-fun m!207415 () Bool)

(assert (=> bs!7349 m!207415))

(assert (=> b!178859 d!54019))

(declare-fun d!54021 () Bool)

(declare-fun c!32096 () Bool)

(assert (=> d!54021 (= c!32096 ((_ is ValueCellFull!1749) (select (arr!3569 (_values!3657 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!117982 () V!5227)

(assert (=> d!54021 (= (get!2042 (select (arr!3569 (_values!3657 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!483 (defaultEntry!3674 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!117982)))

(declare-fun b!179037 () Bool)

(declare-fun get!2044 (ValueCell!1749 V!5227) V!5227)

(assert (=> b!179037 (= e!117982 (get!2044 (select (arr!3569 (_values!3657 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!483 (defaultEntry!3674 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!179038 () Bool)

(declare-fun get!2045 (ValueCell!1749 V!5227) V!5227)

(assert (=> b!179038 (= e!117982 (get!2045 (select (arr!3569 (_values!3657 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!483 (defaultEntry!3674 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54021 c!32096) b!179037))

(assert (= (and d!54021 (not c!32096)) b!179038))

(assert (=> b!179037 m!207233))

(assert (=> b!179037 m!207235))

(declare-fun m!207417 () Bool)

(assert (=> b!179037 m!207417))

(assert (=> b!179038 m!207233))

(assert (=> b!179038 m!207235))

(declare-fun m!207419 () Bool)

(assert (=> b!179038 m!207419))

(assert (=> b!178859 d!54021))

(assert (=> d!53961 d!53955))

(declare-fun bm!18092 () Bool)

(declare-fun call!18095 () (_ BitVec 32))

(assert (=> bm!18092 (= call!18095 (arrayCountValidKeys!0 (_keys!5555 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3875 (_keys!5555 thiss!1248))))))

(declare-fun b!179047 () Bool)

(declare-fun e!117988 () (_ BitVec 32))

(assert (=> b!179047 (= e!117988 call!18095)))

(declare-fun b!179048 () Bool)

(declare-fun e!117987 () (_ BitVec 32))

(assert (=> b!179048 (= e!117987 #b00000000000000000000000000000000)))

(declare-fun b!179049 () Bool)

(assert (=> b!179049 (= e!117987 e!117988)))

(declare-fun c!32102 () Bool)

(assert (=> b!179049 (= c!32102 (validKeyInArray!0 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!54023 () Bool)

(declare-fun lt!88547 () (_ BitVec 32))

(assert (=> d!54023 (and (bvsge lt!88547 #b00000000000000000000000000000000) (bvsle lt!88547 (bvsub (size!3875 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!54023 (= lt!88547 e!117987)))

(declare-fun c!32101 () Bool)

(assert (=> d!54023 (= c!32101 (bvsge #b00000000000000000000000000000000 (size!3875 (_keys!5555 thiss!1248))))))

(assert (=> d!54023 (and (bvsle #b00000000000000000000000000000000 (size!3875 (_keys!5555 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3875 (_keys!5555 thiss!1248)) (size!3875 (_keys!5555 thiss!1248))))))

(assert (=> d!54023 (= (arrayCountValidKeys!0 (_keys!5555 thiss!1248) #b00000000000000000000000000000000 (size!3875 (_keys!5555 thiss!1248))) lt!88547)))

(declare-fun b!179050 () Bool)

(assert (=> b!179050 (= e!117988 (bvadd #b00000000000000000000000000000001 call!18095))))

(assert (= (and d!54023 c!32101) b!179048))

(assert (= (and d!54023 (not c!32101)) b!179049))

(assert (= (and b!179049 c!32102) b!179050))

(assert (= (and b!179049 (not c!32102)) b!179047))

(assert (= (or b!179050 b!179047) bm!18092))

(declare-fun m!207421 () Bool)

(assert (=> bm!18092 m!207421))

(assert (=> b!179049 m!207187))

(assert (=> b!179049 m!207187))

(assert (=> b!179049 m!207193))

(assert (=> b!178880 d!54023))

(declare-fun d!54025 () Bool)

(declare-fun res!84819 () Bool)

(declare-fun e!117993 () Bool)

(assert (=> d!54025 (=> res!84819 e!117993)))

(assert (=> d!54025 (= res!84819 (and ((_ is Cons!2283) (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248)))) (= (_1!1669 (h!2907 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248))))) key!828)))))

(assert (=> d!54025 (= (containsKey!203 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248))) key!828) e!117993)))

(declare-fun b!179055 () Bool)

(declare-fun e!117994 () Bool)

(assert (=> b!179055 (= e!117993 e!117994)))

(declare-fun res!84820 () Bool)

(assert (=> b!179055 (=> (not res!84820) (not e!117994))))

(assert (=> b!179055 (= res!84820 (and (or (not ((_ is Cons!2283) (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248))))) (bvsle (_1!1669 (h!2907 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248))))) key!828)) ((_ is Cons!2283) (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248)))) (bvslt (_1!1669 (h!2907 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248))))) key!828)))))

(declare-fun b!179056 () Bool)

(assert (=> b!179056 (= e!117994 (containsKey!203 (t!7135 (toList!1145 (getCurrentListMap!792 (_keys!5555 thiss!1248) (_values!3657 thiss!1248) (mask!8642 thiss!1248) (extraKeys!3411 thiss!1248) (zeroValue!3515 thiss!1248) (minValue!3515 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3674 thiss!1248)))) key!828))))

(assert (= (and d!54025 (not res!84819)) b!179055))

(assert (= (and b!179055 res!84820) b!179056))

(declare-fun m!207423 () Bool)

(assert (=> b!179056 m!207423))

(assert (=> d!53959 d!54025))

(assert (=> bm!18079 d!53987))

(declare-fun d!54027 () Bool)

(assert (=> d!54027 (= (validKeyInArray!0 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!178863 d!54027))

(declare-fun b!179069 () Bool)

(declare-fun e!118002 () SeekEntryResult!588)

(assert (=> b!179069 (= e!118002 (MissingVacant!588 (index!4522 lt!88380)))))

(declare-fun d!54029 () Bool)

(declare-fun lt!88553 () SeekEntryResult!588)

(assert (=> d!54029 (and (or ((_ is Undefined!588) lt!88553) (not ((_ is Found!588) lt!88553)) (and (bvsge (index!4521 lt!88553) #b00000000000000000000000000000000) (bvslt (index!4521 lt!88553) (size!3875 (_keys!5555 thiss!1248))))) (or ((_ is Undefined!588) lt!88553) ((_ is Found!588) lt!88553) (not ((_ is MissingVacant!588) lt!88553)) (not (= (index!4523 lt!88553) (index!4522 lt!88380))) (and (bvsge (index!4523 lt!88553) #b00000000000000000000000000000000) (bvslt (index!4523 lt!88553) (size!3875 (_keys!5555 thiss!1248))))) (or ((_ is Undefined!588) lt!88553) (ite ((_ is Found!588) lt!88553) (= (select (arr!3568 (_keys!5555 thiss!1248)) (index!4521 lt!88553)) key!828) (and ((_ is MissingVacant!588) lt!88553) (= (index!4523 lt!88553) (index!4522 lt!88380)) (= (select (arr!3568 (_keys!5555 thiss!1248)) (index!4523 lt!88553)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!118003 () SeekEntryResult!588)

(assert (=> d!54029 (= lt!88553 e!118003)))

(declare-fun c!32109 () Bool)

(assert (=> d!54029 (= c!32109 (bvsge (x!19582 lt!88380) #b01111111111111111111111111111110))))

(declare-fun lt!88552 () (_ BitVec 64))

(assert (=> d!54029 (= lt!88552 (select (arr!3568 (_keys!5555 thiss!1248)) (index!4522 lt!88380)))))

(assert (=> d!54029 (validMask!0 (mask!8642 thiss!1248))))

(assert (=> d!54029 (= (seekKeyOrZeroReturnVacant!0 (x!19582 lt!88380) (index!4522 lt!88380) (index!4522 lt!88380) key!828 (_keys!5555 thiss!1248) (mask!8642 thiss!1248)) lt!88553)))

(declare-fun b!179070 () Bool)

(assert (=> b!179070 (= e!118002 (seekKeyOrZeroReturnVacant!0 (bvadd (x!19582 lt!88380) #b00000000000000000000000000000001) (nextIndex!0 (index!4522 lt!88380) (x!19582 lt!88380) (mask!8642 thiss!1248)) (index!4522 lt!88380) key!828 (_keys!5555 thiss!1248) (mask!8642 thiss!1248)))))

(declare-fun b!179071 () Bool)

(declare-fun e!118001 () SeekEntryResult!588)

(assert (=> b!179071 (= e!118001 (Found!588 (index!4522 lt!88380)))))

(declare-fun b!179072 () Bool)

(declare-fun c!32110 () Bool)

(assert (=> b!179072 (= c!32110 (= lt!88552 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!179072 (= e!118001 e!118002)))

(declare-fun b!179073 () Bool)

(assert (=> b!179073 (= e!118003 e!118001)))

(declare-fun c!32111 () Bool)

(assert (=> b!179073 (= c!32111 (= lt!88552 key!828))))

(declare-fun b!179074 () Bool)

(assert (=> b!179074 (= e!118003 Undefined!588)))

(assert (= (and d!54029 c!32109) b!179074))

(assert (= (and d!54029 (not c!32109)) b!179073))

(assert (= (and b!179073 c!32111) b!179071))

(assert (= (and b!179073 (not c!32111)) b!179072))

(assert (= (and b!179072 c!32110) b!179069))

(assert (= (and b!179072 (not c!32110)) b!179070))

(declare-fun m!207425 () Bool)

(assert (=> d!54029 m!207425))

(declare-fun m!207427 () Bool)

(assert (=> d!54029 m!207427))

(assert (=> d!54029 m!207165))

(assert (=> d!54029 m!207145))

(declare-fun m!207429 () Bool)

(assert (=> b!179070 m!207429))

(assert (=> b!179070 m!207429))

(declare-fun m!207431 () Bool)

(assert (=> b!179070 m!207431))

(assert (=> b!178795 d!54029))

(declare-fun d!54031 () Bool)

(declare-fun e!118005 () Bool)

(assert (=> d!54031 e!118005))

(declare-fun res!84821 () Bool)

(assert (=> d!54031 (=> res!84821 e!118005)))

(declare-fun lt!88554 () Bool)

(assert (=> d!54031 (= res!84821 (not lt!88554))))

(declare-fun lt!88557 () Bool)

(assert (=> d!54031 (= lt!88554 lt!88557)))

(declare-fun lt!88556 () Unit!5449)

(declare-fun e!118004 () Unit!5449)

(assert (=> d!54031 (= lt!88556 e!118004)))

(declare-fun c!32112 () Bool)

(assert (=> d!54031 (= c!32112 lt!88557)))

(assert (=> d!54031 (= lt!88557 (containsKey!203 (toList!1145 lt!88442) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!54031 (= (contains!1211 lt!88442 #b0000000000000000000000000000000000000000000000000000000000000000) lt!88554)))

(declare-fun b!179075 () Bool)

(declare-fun lt!88555 () Unit!5449)

(assert (=> b!179075 (= e!118004 lt!88555)))

(assert (=> b!179075 (= lt!88555 (lemmaContainsKeyImpliesGetValueByKeyDefined!152 (toList!1145 lt!88442) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!179075 (isDefined!153 (getValueByKey!199 (toList!1145 lt!88442) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!179076 () Bool)

(declare-fun Unit!5455 () Unit!5449)

(assert (=> b!179076 (= e!118004 Unit!5455)))

(declare-fun b!179077 () Bool)

(assert (=> b!179077 (= e!118005 (isDefined!153 (getValueByKey!199 (toList!1145 lt!88442) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54031 c!32112) b!179075))

(assert (= (and d!54031 (not c!32112)) b!179076))

(assert (= (and d!54031 (not res!84821)) b!179077))

(declare-fun m!207433 () Bool)

(assert (=> d!54031 m!207433))

(declare-fun m!207435 () Bool)

(assert (=> b!179075 m!207435))

(assert (=> b!179075 m!207273))

(assert (=> b!179075 m!207273))

(declare-fun m!207437 () Bool)

(assert (=> b!179075 m!207437))

(assert (=> b!179077 m!207273))

(assert (=> b!179077 m!207273))

(assert (=> b!179077 m!207437))

(assert (=> bm!18078 d!54031))

(declare-fun d!54033 () Bool)

(declare-fun e!118006 () Bool)

(assert (=> d!54033 e!118006))

(declare-fun res!84822 () Bool)

(assert (=> d!54033 (=> (not res!84822) (not e!118006))))

(declare-fun lt!88558 () ListLongMap!2259)

(assert (=> d!54033 (= res!84822 (contains!1211 lt!88558 (_1!1669 (ite (or c!32053 c!32057) (tuple2!3319 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3515 thiss!1248)) (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248))))))))

(declare-fun lt!88559 () List!2287)

(assert (=> d!54033 (= lt!88558 (ListLongMap!2260 lt!88559))))

(declare-fun lt!88560 () Unit!5449)

(declare-fun lt!88561 () Unit!5449)

(assert (=> d!54033 (= lt!88560 lt!88561)))

(assert (=> d!54033 (= (getValueByKey!199 lt!88559 (_1!1669 (ite (or c!32053 c!32057) (tuple2!3319 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3515 thiss!1248)) (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248))))) (Some!204 (_2!1669 (ite (or c!32053 c!32057) (tuple2!3319 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3515 thiss!1248)) (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248))))))))

(assert (=> d!54033 (= lt!88561 (lemmaContainsTupThenGetReturnValue!107 lt!88559 (_1!1669 (ite (or c!32053 c!32057) (tuple2!3319 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3515 thiss!1248)) (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248)))) (_2!1669 (ite (or c!32053 c!32057) (tuple2!3319 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3515 thiss!1248)) (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248))))))))

(assert (=> d!54033 (= lt!88559 (insertStrictlySorted!109 (toList!1145 (ite c!32053 call!18081 (ite c!32057 call!18077 call!18079))) (_1!1669 (ite (or c!32053 c!32057) (tuple2!3319 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3515 thiss!1248)) (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248)))) (_2!1669 (ite (or c!32053 c!32057) (tuple2!3319 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3515 thiss!1248)) (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248))))))))

(assert (=> d!54033 (= (+!257 (ite c!32053 call!18081 (ite c!32057 call!18077 call!18079)) (ite (or c!32053 c!32057) (tuple2!3319 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3515 thiss!1248)) (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248)))) lt!88558)))

(declare-fun b!179078 () Bool)

(declare-fun res!84823 () Bool)

(assert (=> b!179078 (=> (not res!84823) (not e!118006))))

(assert (=> b!179078 (= res!84823 (= (getValueByKey!199 (toList!1145 lt!88558) (_1!1669 (ite (or c!32053 c!32057) (tuple2!3319 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3515 thiss!1248)) (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248))))) (Some!204 (_2!1669 (ite (or c!32053 c!32057) (tuple2!3319 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3515 thiss!1248)) (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248)))))))))

(declare-fun b!179079 () Bool)

(assert (=> b!179079 (= e!118006 (contains!1213 (toList!1145 lt!88558) (ite (or c!32053 c!32057) (tuple2!3319 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3515 thiss!1248)) (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248)))))))

(assert (= (and d!54033 res!84822) b!179078))

(assert (= (and b!179078 res!84823) b!179079))

(declare-fun m!207439 () Bool)

(assert (=> d!54033 m!207439))

(declare-fun m!207441 () Bool)

(assert (=> d!54033 m!207441))

(declare-fun m!207443 () Bool)

(assert (=> d!54033 m!207443))

(declare-fun m!207445 () Bool)

(assert (=> d!54033 m!207445))

(declare-fun m!207447 () Bool)

(assert (=> b!179078 m!207447))

(declare-fun m!207449 () Bool)

(assert (=> b!179079 m!207449))

(assert (=> bm!18076 d!54033))

(declare-fun d!54035 () Bool)

(declare-fun e!118008 () Bool)

(assert (=> d!54035 e!118008))

(declare-fun res!84824 () Bool)

(assert (=> d!54035 (=> res!84824 e!118008)))

(declare-fun lt!88562 () Bool)

(assert (=> d!54035 (= res!84824 (not lt!88562))))

(declare-fun lt!88565 () Bool)

(assert (=> d!54035 (= lt!88562 lt!88565)))

(declare-fun lt!88564 () Unit!5449)

(declare-fun e!118007 () Unit!5449)

(assert (=> d!54035 (= lt!88564 e!118007)))

(declare-fun c!32113 () Bool)

(assert (=> d!54035 (= c!32113 lt!88565)))

(assert (=> d!54035 (= lt!88565 (containsKey!203 (toList!1145 lt!88442) (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!54035 (= (contains!1211 lt!88442 (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)) lt!88562)))

(declare-fun b!179080 () Bool)

(declare-fun lt!88563 () Unit!5449)

(assert (=> b!179080 (= e!118007 lt!88563)))

(assert (=> b!179080 (= lt!88563 (lemmaContainsKeyImpliesGetValueByKeyDefined!152 (toList!1145 lt!88442) (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!179080 (isDefined!153 (getValueByKey!199 (toList!1145 lt!88442) (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!179081 () Bool)

(declare-fun Unit!5456 () Unit!5449)

(assert (=> b!179081 (= e!118007 Unit!5456)))

(declare-fun b!179082 () Bool)

(assert (=> b!179082 (= e!118008 (isDefined!153 (getValueByKey!199 (toList!1145 lt!88442) (select (arr!3568 (_keys!5555 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!54035 c!32113) b!179080))

(assert (= (and d!54035 (not c!32113)) b!179081))

(assert (= (and d!54035 (not res!84824)) b!179082))

(assert (=> d!54035 m!207187))

(declare-fun m!207451 () Bool)

(assert (=> d!54035 m!207451))

(assert (=> b!179080 m!207187))

(declare-fun m!207453 () Bool)

(assert (=> b!179080 m!207453))

(assert (=> b!179080 m!207187))

(assert (=> b!179080 m!207413))

(assert (=> b!179080 m!207413))

(declare-fun m!207455 () Bool)

(assert (=> b!179080 m!207455))

(assert (=> b!179082 m!207187))

(assert (=> b!179082 m!207413))

(assert (=> b!179082 m!207413))

(assert (=> b!179082 m!207455))

(assert (=> b!178860 d!54035))

(declare-fun d!54037 () Bool)

(declare-fun e!118009 () Bool)

(assert (=> d!54037 e!118009))

(declare-fun res!84825 () Bool)

(assert (=> d!54037 (=> (not res!84825) (not e!118009))))

(declare-fun lt!88566 () ListLongMap!2259)

(assert (=> d!54037 (= res!84825 (contains!1211 lt!88566 (_1!1669 (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248)))))))

(declare-fun lt!88567 () List!2287)

(assert (=> d!54037 (= lt!88566 (ListLongMap!2260 lt!88567))))

(declare-fun lt!88568 () Unit!5449)

(declare-fun lt!88569 () Unit!5449)

(assert (=> d!54037 (= lt!88568 lt!88569)))

(assert (=> d!54037 (= (getValueByKey!199 lt!88567 (_1!1669 (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248)))) (Some!204 (_2!1669 (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248)))))))

(assert (=> d!54037 (= lt!88569 (lemmaContainsTupThenGetReturnValue!107 lt!88567 (_1!1669 (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248))) (_2!1669 (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248)))))))

(assert (=> d!54037 (= lt!88567 (insertStrictlySorted!109 (toList!1145 call!18080) (_1!1669 (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248))) (_2!1669 (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248)))))))

(assert (=> d!54037 (= (+!257 call!18080 (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248))) lt!88566)))

(declare-fun b!179083 () Bool)

(declare-fun res!84826 () Bool)

(assert (=> b!179083 (=> (not res!84826) (not e!118009))))

(assert (=> b!179083 (= res!84826 (= (getValueByKey!199 (toList!1145 lt!88566) (_1!1669 (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248)))) (Some!204 (_2!1669 (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248))))))))

(declare-fun b!179084 () Bool)

(assert (=> b!179084 (= e!118009 (contains!1213 (toList!1145 lt!88566) (tuple2!3319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3515 thiss!1248))))))

(assert (= (and d!54037 res!84825) b!179083))

(assert (= (and b!179083 res!84826) b!179084))

(declare-fun m!207457 () Bool)

(assert (=> d!54037 m!207457))

(declare-fun m!207459 () Bool)

(assert (=> d!54037 m!207459))

(declare-fun m!207461 () Bool)

(assert (=> d!54037 m!207461))

(declare-fun m!207463 () Bool)

(assert (=> d!54037 m!207463))

(declare-fun m!207465 () Bool)

(assert (=> b!179083 m!207465))

(declare-fun m!207467 () Bool)

(assert (=> b!179084 m!207467))

(assert (=> b!178870 d!54037))

(assert (=> b!178861 d!54027))

(declare-fun b!179086 () Bool)

(declare-fun e!118010 () Bool)

(assert (=> b!179086 (= e!118010 tp_is_empty!4185)))

(declare-fun condMapEmpty!7165 () Bool)

(declare-fun mapDefault!7165 () ValueCell!1749)

(assert (=> mapNonEmpty!7164 (= condMapEmpty!7165 (= mapRest!7164 ((as const (Array (_ BitVec 32) ValueCell!1749)) mapDefault!7165)))))

(declare-fun mapRes!7165 () Bool)

(assert (=> mapNonEmpty!7164 (= tp!15966 (and e!118010 mapRes!7165))))

(declare-fun b!179085 () Bool)

(declare-fun e!118011 () Bool)

(assert (=> b!179085 (= e!118011 tp_is_empty!4185)))

(declare-fun mapNonEmpty!7165 () Bool)

(declare-fun tp!15967 () Bool)

(assert (=> mapNonEmpty!7165 (= mapRes!7165 (and tp!15967 e!118011))))

(declare-fun mapValue!7165 () ValueCell!1749)

(declare-fun mapKey!7165 () (_ BitVec 32))

(declare-fun mapRest!7165 () (Array (_ BitVec 32) ValueCell!1749))

(assert (=> mapNonEmpty!7165 (= mapRest!7164 (store mapRest!7165 mapKey!7165 mapValue!7165))))

(declare-fun mapIsEmpty!7165 () Bool)

(assert (=> mapIsEmpty!7165 mapRes!7165))

(assert (= (and mapNonEmpty!7164 condMapEmpty!7165) mapIsEmpty!7165))

(assert (= (and mapNonEmpty!7164 (not condMapEmpty!7165)) mapNonEmpty!7165))

(assert (= (and mapNonEmpty!7165 ((_ is ValueCellFull!1749) mapValue!7165)) b!179085))

(assert (= (and mapNonEmpty!7164 ((_ is ValueCellFull!1749) mapDefault!7165)) b!179086))

(declare-fun m!207469 () Bool)

(assert (=> mapNonEmpty!7165 m!207469))

(declare-fun b_lambda!7133 () Bool)

(assert (= b_lambda!7131 (or (and b!178751 b_free!4413) b_lambda!7133)))

(declare-fun b_lambda!7135 () Bool)

(assert (= b_lambda!7129 (or (and b!178751 b_free!4413) b_lambda!7135)))

(check-sat (not mapNonEmpty!7165) (not b!179013) (not d!53997) (not b!178962) (not b!179006) (not b!178995) (not d!54019) (not b!179083) (not b!178943) (not d!54003) (not d!54001) (not d!54015) (not d!53975) (not d!53967) (not b!179031) (not b_lambda!7133) (not b!178967) (not d!54011) (not d!54031) (not d!54005) (not d!54007) (not d!54029) (not d!53989) (not d!53991) (not d!53973) b_and!10961 tp_is_empty!4185 (not b!178940) (not d!54033) (not b!179078) (not b!178993) (not b!179082) (not d!53979) (not b!178998) (not d!53987) (not b!179084) (not b!179077) (not bm!18086) (not b!179003) (not b!178944) (not b!178999) (not b!178901) (not b!178958) (not b!179038) (not b!179075) (not b!179056) (not b!179079) (not d!53995) (not bm!18083) (not b!179037) (not b!179080) (not bm!18092) (not d!53985) (not d!53983) (not d!54017) (not d!54037) (not d!53999) (not b!178968) (not d!54009) (not d!53977) (not b!179018) (not b!178960) (not b!179012) (not d!54013) (not b_lambda!7127) (not b!179070) (not b_next!4413) (not b!179049) (not b!178926) (not d!53993) (not b!179005) (not b!179015) (not b!179030) (not d!54035) (not b!178997) (not b_lambda!7135) (not b!179004) (not b!178947) (not b!178900) (not bm!18089) (not b!178994) (not b!179011) (not b!179019))
(check-sat b_and!10961 (not b_next!4413))
