; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18052 () Bool)

(assert start!18052)

(declare-fun b!179604 () Bool)

(declare-fun b_free!4431 () Bool)

(declare-fun b_next!4431 () Bool)

(assert (=> b!179604 (= b_free!4431 (not b_next!4431))))

(declare-fun tp!16021 () Bool)

(declare-fun b_and!10981 () Bool)

(assert (=> b!179604 (= tp!16021 b_and!10981)))

(declare-fun b!179593 () Bool)

(declare-fun res!85083 () Bool)

(declare-fun e!118311 () Bool)

(assert (=> b!179593 (=> (not res!85083) (not e!118311))))

(declare-datatypes ((V!5251 0))(
  ( (V!5252 (val!2146 Int)) )
))
(declare-datatypes ((ValueCell!1758 0))(
  ( (ValueCellFull!1758 (v!4030 V!5251)) (EmptyCell!1758) )
))
(declare-datatypes ((array!7572 0))(
  ( (array!7573 (arr!3586 (Array (_ BitVec 32) (_ BitVec 64))) (size!3894 (_ BitVec 32))) )
))
(declare-datatypes ((array!7574 0))(
  ( (array!7575 (arr!3587 (Array (_ BitVec 32) ValueCell!1758)) (size!3895 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2424 0))(
  ( (LongMapFixedSize!2425 (defaultEntry!3687 Int) (mask!8673 (_ BitVec 32)) (extraKeys!3424 (_ BitVec 32)) (zeroValue!3528 V!5251) (minValue!3528 V!5251) (_size!1261 (_ BitVec 32)) (_keys!5576 array!7572) (_values!3670 array!7574) (_vacant!1261 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2424)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3332 0))(
  ( (tuple2!3333 (_1!1676 (_ BitVec 64)) (_2!1676 V!5251)) )
))
(declare-datatypes ((List!2299 0))(
  ( (Nil!2296) (Cons!2295 (h!2920 tuple2!3332) (t!7153 List!2299)) )
))
(declare-datatypes ((ListLongMap!2273 0))(
  ( (ListLongMap!2274 (toList!1152 List!2299)) )
))
(declare-fun contains!1221 (ListLongMap!2273 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!799 (array!7572 array!7574 (_ BitVec 32) (_ BitVec 32) V!5251 V!5251 (_ BitVec 32) Int) ListLongMap!2273)

(assert (=> b!179593 (= res!85083 (not (contains!1221 (getCurrentListMap!799 (_keys!5576 thiss!1248) (_values!3670 thiss!1248) (mask!8673 thiss!1248) (extraKeys!3424 thiss!1248) (zeroValue!3528 thiss!1248) (minValue!3528 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3687 thiss!1248)) key!828)))))

(declare-fun b!179594 () Bool)

(declare-fun res!85090 () Bool)

(assert (=> b!179594 (=> (not res!85090) (not e!118311))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!593 0))(
  ( (MissingZero!593 (index!4540 (_ BitVec 32))) (Found!593 (index!4541 (_ BitVec 32))) (Intermediate!593 (undefined!1405 Bool) (index!4542 (_ BitVec 32)) (x!19649 (_ BitVec 32))) (Undefined!593) (MissingVacant!593 (index!4543 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7572 (_ BitVec 32)) SeekEntryResult!593)

(assert (=> b!179594 (= res!85090 ((_ is Undefined!593) (seekEntryOrOpen!0 key!828 (_keys!5576 thiss!1248) (mask!8673 thiss!1248))))))

(declare-fun b!179595 () Bool)

(declare-fun e!118310 () Bool)

(declare-fun tp_is_empty!4203 () Bool)

(assert (=> b!179595 (= e!118310 tp_is_empty!4203)))

(declare-fun res!85089 () Bool)

(assert (=> start!18052 (=> (not res!85089) (not e!118311))))

(declare-fun valid!1004 (LongMapFixedSize!2424) Bool)

(assert (=> start!18052 (= res!85089 (valid!1004 thiss!1248))))

(assert (=> start!18052 e!118311))

(declare-fun e!118306 () Bool)

(assert (=> start!18052 e!118306))

(assert (=> start!18052 true))

(declare-fun b!179596 () Bool)

(declare-fun res!85086 () Bool)

(assert (=> b!179596 (=> (not res!85086) (not e!118311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!179596 (= res!85086 (validMask!0 (mask!8673 thiss!1248)))))

(declare-fun b!179597 () Bool)

(declare-fun res!85085 () Bool)

(assert (=> b!179597 (=> (not res!85085) (not e!118311))))

(assert (=> b!179597 (= res!85085 (and (= (size!3895 (_values!3670 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8673 thiss!1248))) (= (size!3894 (_keys!5576 thiss!1248)) (size!3895 (_values!3670 thiss!1248))) (bvsge (mask!8673 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3424 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3424 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!179598 () Bool)

(declare-fun res!85084 () Bool)

(assert (=> b!179598 (=> (not res!85084) (not e!118311))))

(declare-datatypes ((List!2300 0))(
  ( (Nil!2297) (Cons!2296 (h!2921 (_ BitVec 64)) (t!7154 List!2300)) )
))
(declare-fun arrayNoDuplicates!0 (array!7572 (_ BitVec 32) List!2300) Bool)

(assert (=> b!179598 (= res!85084 (arrayNoDuplicates!0 (_keys!5576 thiss!1248) #b00000000000000000000000000000000 Nil!2297))))

(declare-fun b!179599 () Bool)

(declare-fun res!85087 () Bool)

(assert (=> b!179599 (=> (not res!85087) (not e!118311))))

(assert (=> b!179599 (= res!85087 (not (= key!828 (bvneg key!828))))))

(declare-fun b!179600 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!179600 (= e!118311 (not (validKeyInArray!0 key!828)))))

(declare-fun b!179601 () Bool)

(declare-fun res!85088 () Bool)

(assert (=> b!179601 (=> (not res!85088) (not e!118311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7572 (_ BitVec 32)) Bool)

(assert (=> b!179601 (= res!85088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5576 thiss!1248) (mask!8673 thiss!1248)))))

(declare-fun b!179602 () Bool)

(declare-fun e!118308 () Bool)

(assert (=> b!179602 (= e!118308 tp_is_empty!4203)))

(declare-fun b!179603 () Bool)

(declare-fun e!118309 () Bool)

(declare-fun mapRes!7195 () Bool)

(assert (=> b!179603 (= e!118309 (and e!118310 mapRes!7195))))

(declare-fun condMapEmpty!7195 () Bool)

(declare-fun mapDefault!7195 () ValueCell!1758)

(assert (=> b!179603 (= condMapEmpty!7195 (= (arr!3587 (_values!3670 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1758)) mapDefault!7195)))))

(declare-fun array_inv!2301 (array!7572) Bool)

(declare-fun array_inv!2302 (array!7574) Bool)

(assert (=> b!179604 (= e!118306 (and tp!16021 tp_is_empty!4203 (array_inv!2301 (_keys!5576 thiss!1248)) (array_inv!2302 (_values!3670 thiss!1248)) e!118309))))

(declare-fun mapNonEmpty!7195 () Bool)

(declare-fun tp!16020 () Bool)

(assert (=> mapNonEmpty!7195 (= mapRes!7195 (and tp!16020 e!118308))))

(declare-fun mapRest!7195 () (Array (_ BitVec 32) ValueCell!1758))

(declare-fun mapKey!7195 () (_ BitVec 32))

(declare-fun mapValue!7195 () ValueCell!1758)

(assert (=> mapNonEmpty!7195 (= (arr!3587 (_values!3670 thiss!1248)) (store mapRest!7195 mapKey!7195 mapValue!7195))))

(declare-fun mapIsEmpty!7195 () Bool)

(assert (=> mapIsEmpty!7195 mapRes!7195))

(assert (= (and start!18052 res!85089) b!179599))

(assert (= (and b!179599 res!85087) b!179594))

(assert (= (and b!179594 res!85090) b!179593))

(assert (= (and b!179593 res!85083) b!179596))

(assert (= (and b!179596 res!85086) b!179597))

(assert (= (and b!179597 res!85085) b!179601))

(assert (= (and b!179601 res!85088) b!179598))

(assert (= (and b!179598 res!85084) b!179600))

(assert (= (and b!179603 condMapEmpty!7195) mapIsEmpty!7195))

(assert (= (and b!179603 (not condMapEmpty!7195)) mapNonEmpty!7195))

(assert (= (and mapNonEmpty!7195 ((_ is ValueCellFull!1758) mapValue!7195)) b!179602))

(assert (= (and b!179603 ((_ is ValueCellFull!1758) mapDefault!7195)) b!179595))

(assert (= b!179604 b!179603))

(assert (= start!18052 b!179604))

(declare-fun m!207801 () Bool)

(assert (=> b!179601 m!207801))

(declare-fun m!207803 () Bool)

(assert (=> b!179594 m!207803))

(declare-fun m!207805 () Bool)

(assert (=> b!179604 m!207805))

(declare-fun m!207807 () Bool)

(assert (=> b!179604 m!207807))

(declare-fun m!207809 () Bool)

(assert (=> b!179593 m!207809))

(assert (=> b!179593 m!207809))

(declare-fun m!207811 () Bool)

(assert (=> b!179593 m!207811))

(declare-fun m!207813 () Bool)

(assert (=> mapNonEmpty!7195 m!207813))

(declare-fun m!207815 () Bool)

(assert (=> start!18052 m!207815))

(declare-fun m!207817 () Bool)

(assert (=> b!179596 m!207817))

(declare-fun m!207819 () Bool)

(assert (=> b!179600 m!207819))

(declare-fun m!207821 () Bool)

(assert (=> b!179598 m!207821))

(check-sat (not mapNonEmpty!7195) (not b!179598) (not b!179601) (not b!179596) (not b_next!4431) (not b!179594) tp_is_empty!4203 (not b!179593) (not b!179604) (not start!18052) b_and!10981 (not b!179600))
(check-sat b_and!10981 (not b_next!4431))
(get-model)

(declare-fun d!54079 () Bool)

(declare-fun res!85121 () Bool)

(declare-fun e!118332 () Bool)

(assert (=> d!54079 (=> (not res!85121) (not e!118332))))

(declare-fun simpleValid!161 (LongMapFixedSize!2424) Bool)

(assert (=> d!54079 (= res!85121 (simpleValid!161 thiss!1248))))

(assert (=> d!54079 (= (valid!1004 thiss!1248) e!118332)))

(declare-fun b!179647 () Bool)

(declare-fun res!85122 () Bool)

(assert (=> b!179647 (=> (not res!85122) (not e!118332))))

(declare-fun arrayCountValidKeys!0 (array!7572 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!179647 (= res!85122 (= (arrayCountValidKeys!0 (_keys!5576 thiss!1248) #b00000000000000000000000000000000 (size!3894 (_keys!5576 thiss!1248))) (_size!1261 thiss!1248)))))

(declare-fun b!179648 () Bool)

(declare-fun res!85123 () Bool)

(assert (=> b!179648 (=> (not res!85123) (not e!118332))))

(assert (=> b!179648 (= res!85123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5576 thiss!1248) (mask!8673 thiss!1248)))))

(declare-fun b!179649 () Bool)

(assert (=> b!179649 (= e!118332 (arrayNoDuplicates!0 (_keys!5576 thiss!1248) #b00000000000000000000000000000000 Nil!2297))))

(assert (= (and d!54079 res!85121) b!179647))

(assert (= (and b!179647 res!85122) b!179648))

(assert (= (and b!179648 res!85123) b!179649))

(declare-fun m!207845 () Bool)

(assert (=> d!54079 m!207845))

(declare-fun m!207847 () Bool)

(assert (=> b!179647 m!207847))

(assert (=> b!179648 m!207801))

(assert (=> b!179649 m!207821))

(assert (=> start!18052 d!54079))

(declare-fun d!54081 () Bool)

(assert (=> d!54081 (= (validMask!0 (mask!8673 thiss!1248)) (and (or (= (mask!8673 thiss!1248) #b00000000000000000000000000000111) (= (mask!8673 thiss!1248) #b00000000000000000000000000001111) (= (mask!8673 thiss!1248) #b00000000000000000000000000011111) (= (mask!8673 thiss!1248) #b00000000000000000000000000111111) (= (mask!8673 thiss!1248) #b00000000000000000000000001111111) (= (mask!8673 thiss!1248) #b00000000000000000000000011111111) (= (mask!8673 thiss!1248) #b00000000000000000000000111111111) (= (mask!8673 thiss!1248) #b00000000000000000000001111111111) (= (mask!8673 thiss!1248) #b00000000000000000000011111111111) (= (mask!8673 thiss!1248) #b00000000000000000000111111111111) (= (mask!8673 thiss!1248) #b00000000000000000001111111111111) (= (mask!8673 thiss!1248) #b00000000000000000011111111111111) (= (mask!8673 thiss!1248) #b00000000000000000111111111111111) (= (mask!8673 thiss!1248) #b00000000000000001111111111111111) (= (mask!8673 thiss!1248) #b00000000000000011111111111111111) (= (mask!8673 thiss!1248) #b00000000000000111111111111111111) (= (mask!8673 thiss!1248) #b00000000000001111111111111111111) (= (mask!8673 thiss!1248) #b00000000000011111111111111111111) (= (mask!8673 thiss!1248) #b00000000000111111111111111111111) (= (mask!8673 thiss!1248) #b00000000001111111111111111111111) (= (mask!8673 thiss!1248) #b00000000011111111111111111111111) (= (mask!8673 thiss!1248) #b00000000111111111111111111111111) (= (mask!8673 thiss!1248) #b00000001111111111111111111111111) (= (mask!8673 thiss!1248) #b00000011111111111111111111111111) (= (mask!8673 thiss!1248) #b00000111111111111111111111111111) (= (mask!8673 thiss!1248) #b00001111111111111111111111111111) (= (mask!8673 thiss!1248) #b00011111111111111111111111111111) (= (mask!8673 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8673 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!179596 d!54081))

(declare-fun bm!18146 () Bool)

(declare-fun call!18149 () Bool)

(assert (=> bm!18146 (= call!18149 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5576 thiss!1248) (mask!8673 thiss!1248)))))

(declare-fun b!179659 () Bool)

(declare-fun e!118341 () Bool)

(declare-fun e!118340 () Bool)

(assert (=> b!179659 (= e!118341 e!118340)))

(declare-fun c!32185 () Bool)

(assert (=> b!179659 (= c!32185 (validKeyInArray!0 (select (arr!3586 (_keys!5576 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!179658 () Bool)

(declare-fun e!118339 () Bool)

(assert (=> b!179658 (= e!118339 call!18149)))

(declare-fun d!54083 () Bool)

(declare-fun res!85129 () Bool)

(assert (=> d!54083 (=> res!85129 e!118341)))

(assert (=> d!54083 (= res!85129 (bvsge #b00000000000000000000000000000000 (size!3894 (_keys!5576 thiss!1248))))))

(assert (=> d!54083 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5576 thiss!1248) (mask!8673 thiss!1248)) e!118341)))

(declare-fun b!179660 () Bool)

(assert (=> b!179660 (= e!118340 e!118339)))

(declare-fun lt!88770 () (_ BitVec 64))

(assert (=> b!179660 (= lt!88770 (select (arr!3586 (_keys!5576 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5465 0))(
  ( (Unit!5466) )
))
(declare-fun lt!88769 () Unit!5465)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7572 (_ BitVec 64) (_ BitVec 32)) Unit!5465)

(assert (=> b!179660 (= lt!88769 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5576 thiss!1248) lt!88770 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7572 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!179660 (arrayContainsKey!0 (_keys!5576 thiss!1248) lt!88770 #b00000000000000000000000000000000)))

(declare-fun lt!88768 () Unit!5465)

(assert (=> b!179660 (= lt!88768 lt!88769)))

(declare-fun res!85128 () Bool)

(assert (=> b!179660 (= res!85128 (= (seekEntryOrOpen!0 (select (arr!3586 (_keys!5576 thiss!1248)) #b00000000000000000000000000000000) (_keys!5576 thiss!1248) (mask!8673 thiss!1248)) (Found!593 #b00000000000000000000000000000000)))))

(assert (=> b!179660 (=> (not res!85128) (not e!118339))))

(declare-fun b!179661 () Bool)

(assert (=> b!179661 (= e!118340 call!18149)))

(assert (= (and d!54083 (not res!85129)) b!179659))

(assert (= (and b!179659 c!32185) b!179660))

(assert (= (and b!179659 (not c!32185)) b!179661))

(assert (= (and b!179660 res!85128) b!179658))

(assert (= (or b!179658 b!179661) bm!18146))

(declare-fun m!207849 () Bool)

(assert (=> bm!18146 m!207849))

(declare-fun m!207851 () Bool)

(assert (=> b!179659 m!207851))

(assert (=> b!179659 m!207851))

(declare-fun m!207853 () Bool)

(assert (=> b!179659 m!207853))

(assert (=> b!179660 m!207851))

(declare-fun m!207855 () Bool)

(assert (=> b!179660 m!207855))

(declare-fun m!207857 () Bool)

(assert (=> b!179660 m!207857))

(assert (=> b!179660 m!207851))

(declare-fun m!207859 () Bool)

(assert (=> b!179660 m!207859))

(assert (=> b!179601 d!54083))

(declare-fun b!179674 () Bool)

(declare-fun c!32192 () Bool)

(declare-fun lt!88777 () (_ BitVec 64))

(assert (=> b!179674 (= c!32192 (= lt!88777 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!118349 () SeekEntryResult!593)

(declare-fun e!118350 () SeekEntryResult!593)

(assert (=> b!179674 (= e!118349 e!118350)))

(declare-fun lt!88779 () SeekEntryResult!593)

(declare-fun b!179675 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7572 (_ BitVec 32)) SeekEntryResult!593)

(assert (=> b!179675 (= e!118350 (seekKeyOrZeroReturnVacant!0 (x!19649 lt!88779) (index!4542 lt!88779) (index!4542 lt!88779) key!828 (_keys!5576 thiss!1248) (mask!8673 thiss!1248)))))

(declare-fun d!54085 () Bool)

(declare-fun lt!88778 () SeekEntryResult!593)

(assert (=> d!54085 (and (or ((_ is Undefined!593) lt!88778) (not ((_ is Found!593) lt!88778)) (and (bvsge (index!4541 lt!88778) #b00000000000000000000000000000000) (bvslt (index!4541 lt!88778) (size!3894 (_keys!5576 thiss!1248))))) (or ((_ is Undefined!593) lt!88778) ((_ is Found!593) lt!88778) (not ((_ is MissingZero!593) lt!88778)) (and (bvsge (index!4540 lt!88778) #b00000000000000000000000000000000) (bvslt (index!4540 lt!88778) (size!3894 (_keys!5576 thiss!1248))))) (or ((_ is Undefined!593) lt!88778) ((_ is Found!593) lt!88778) ((_ is MissingZero!593) lt!88778) (not ((_ is MissingVacant!593) lt!88778)) (and (bvsge (index!4543 lt!88778) #b00000000000000000000000000000000) (bvslt (index!4543 lt!88778) (size!3894 (_keys!5576 thiss!1248))))) (or ((_ is Undefined!593) lt!88778) (ite ((_ is Found!593) lt!88778) (= (select (arr!3586 (_keys!5576 thiss!1248)) (index!4541 lt!88778)) key!828) (ite ((_ is MissingZero!593) lt!88778) (= (select (arr!3586 (_keys!5576 thiss!1248)) (index!4540 lt!88778)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!593) lt!88778) (= (select (arr!3586 (_keys!5576 thiss!1248)) (index!4543 lt!88778)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!118348 () SeekEntryResult!593)

(assert (=> d!54085 (= lt!88778 e!118348)))

(declare-fun c!32194 () Bool)

(assert (=> d!54085 (= c!32194 (and ((_ is Intermediate!593) lt!88779) (undefined!1405 lt!88779)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7572 (_ BitVec 32)) SeekEntryResult!593)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54085 (= lt!88779 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8673 thiss!1248)) key!828 (_keys!5576 thiss!1248) (mask!8673 thiss!1248)))))

(assert (=> d!54085 (validMask!0 (mask!8673 thiss!1248))))

(assert (=> d!54085 (= (seekEntryOrOpen!0 key!828 (_keys!5576 thiss!1248) (mask!8673 thiss!1248)) lt!88778)))

(declare-fun b!179676 () Bool)

(assert (=> b!179676 (= e!118348 Undefined!593)))

(declare-fun b!179677 () Bool)

(assert (=> b!179677 (= e!118349 (Found!593 (index!4542 lt!88779)))))

(declare-fun b!179678 () Bool)

(assert (=> b!179678 (= e!118348 e!118349)))

(assert (=> b!179678 (= lt!88777 (select (arr!3586 (_keys!5576 thiss!1248)) (index!4542 lt!88779)))))

(declare-fun c!32193 () Bool)

(assert (=> b!179678 (= c!32193 (= lt!88777 key!828))))

(declare-fun b!179679 () Bool)

(assert (=> b!179679 (= e!118350 (MissingZero!593 (index!4542 lt!88779)))))

(assert (= (and d!54085 c!32194) b!179676))

(assert (= (and d!54085 (not c!32194)) b!179678))

(assert (= (and b!179678 c!32193) b!179677))

(assert (= (and b!179678 (not c!32193)) b!179674))

(assert (= (and b!179674 c!32192) b!179679))

(assert (= (and b!179674 (not c!32192)) b!179675))

(declare-fun m!207861 () Bool)

(assert (=> b!179675 m!207861))

(declare-fun m!207863 () Bool)

(assert (=> d!54085 m!207863))

(assert (=> d!54085 m!207817))

(declare-fun m!207865 () Bool)

(assert (=> d!54085 m!207865))

(declare-fun m!207867 () Bool)

(assert (=> d!54085 m!207867))

(declare-fun m!207869 () Bool)

(assert (=> d!54085 m!207869))

(assert (=> d!54085 m!207863))

(declare-fun m!207871 () Bool)

(assert (=> d!54085 m!207871))

(declare-fun m!207873 () Bool)

(assert (=> b!179678 m!207873))

(assert (=> b!179594 d!54085))

(declare-fun d!54087 () Bool)

(assert (=> d!54087 (= (validKeyInArray!0 key!828) (and (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!828 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!179600 d!54087))

(declare-fun b!179690 () Bool)

(declare-fun e!118362 () Bool)

(declare-fun e!118359 () Bool)

(assert (=> b!179690 (= e!118362 e!118359)))

(declare-fun c!32197 () Bool)

(assert (=> b!179690 (= c!32197 (validKeyInArray!0 (select (arr!3586 (_keys!5576 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18149 () Bool)

(declare-fun call!18152 () Bool)

(assert (=> bm!18149 (= call!18152 (arrayNoDuplicates!0 (_keys!5576 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!32197 (Cons!2296 (select (arr!3586 (_keys!5576 thiss!1248)) #b00000000000000000000000000000000) Nil!2297) Nil!2297)))))

(declare-fun b!179691 () Bool)

(declare-fun e!118360 () Bool)

(assert (=> b!179691 (= e!118360 e!118362)))

(declare-fun res!85138 () Bool)

(assert (=> b!179691 (=> (not res!85138) (not e!118362))))

(declare-fun e!118361 () Bool)

(assert (=> b!179691 (= res!85138 (not e!118361))))

(declare-fun res!85136 () Bool)

(assert (=> b!179691 (=> (not res!85136) (not e!118361))))

(assert (=> b!179691 (= res!85136 (validKeyInArray!0 (select (arr!3586 (_keys!5576 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!54089 () Bool)

(declare-fun res!85137 () Bool)

(assert (=> d!54089 (=> res!85137 e!118360)))

(assert (=> d!54089 (= res!85137 (bvsge #b00000000000000000000000000000000 (size!3894 (_keys!5576 thiss!1248))))))

(assert (=> d!54089 (= (arrayNoDuplicates!0 (_keys!5576 thiss!1248) #b00000000000000000000000000000000 Nil!2297) e!118360)))

(declare-fun b!179692 () Bool)

(assert (=> b!179692 (= e!118359 call!18152)))

(declare-fun b!179693 () Bool)

(declare-fun contains!1222 (List!2300 (_ BitVec 64)) Bool)

(assert (=> b!179693 (= e!118361 (contains!1222 Nil!2297 (select (arr!3586 (_keys!5576 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!179694 () Bool)

(assert (=> b!179694 (= e!118359 call!18152)))

(assert (= (and d!54089 (not res!85137)) b!179691))

(assert (= (and b!179691 res!85136) b!179693))

(assert (= (and b!179691 res!85138) b!179690))

(assert (= (and b!179690 c!32197) b!179692))

(assert (= (and b!179690 (not c!32197)) b!179694))

(assert (= (or b!179692 b!179694) bm!18149))

(assert (=> b!179690 m!207851))

(assert (=> b!179690 m!207851))

(assert (=> b!179690 m!207853))

(assert (=> bm!18149 m!207851))

(declare-fun m!207875 () Bool)

(assert (=> bm!18149 m!207875))

(assert (=> b!179691 m!207851))

(assert (=> b!179691 m!207851))

(assert (=> b!179691 m!207853))

(assert (=> b!179693 m!207851))

(assert (=> b!179693 m!207851))

(declare-fun m!207877 () Bool)

(assert (=> b!179693 m!207877))

(assert (=> b!179598 d!54089))

(declare-fun d!54091 () Bool)

(assert (=> d!54091 (= (array_inv!2301 (_keys!5576 thiss!1248)) (bvsge (size!3894 (_keys!5576 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!179604 d!54091))

(declare-fun d!54093 () Bool)

(assert (=> d!54093 (= (array_inv!2302 (_values!3670 thiss!1248)) (bvsge (size!3895 (_values!3670 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!179604 d!54093))

(declare-fun d!54095 () Bool)

(declare-fun e!118367 () Bool)

(assert (=> d!54095 e!118367))

(declare-fun res!85141 () Bool)

(assert (=> d!54095 (=> res!85141 e!118367)))

(declare-fun lt!88791 () Bool)

(assert (=> d!54095 (= res!85141 (not lt!88791))))

(declare-fun lt!88788 () Bool)

(assert (=> d!54095 (= lt!88791 lt!88788)))

(declare-fun lt!88790 () Unit!5465)

(declare-fun e!118368 () Unit!5465)

(assert (=> d!54095 (= lt!88790 e!118368)))

(declare-fun c!32200 () Bool)

(assert (=> d!54095 (= c!32200 lt!88788)))

(declare-fun containsKey!206 (List!2299 (_ BitVec 64)) Bool)

(assert (=> d!54095 (= lt!88788 (containsKey!206 (toList!1152 (getCurrentListMap!799 (_keys!5576 thiss!1248) (_values!3670 thiss!1248) (mask!8673 thiss!1248) (extraKeys!3424 thiss!1248) (zeroValue!3528 thiss!1248) (minValue!3528 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3687 thiss!1248))) key!828))))

(assert (=> d!54095 (= (contains!1221 (getCurrentListMap!799 (_keys!5576 thiss!1248) (_values!3670 thiss!1248) (mask!8673 thiss!1248) (extraKeys!3424 thiss!1248) (zeroValue!3528 thiss!1248) (minValue!3528 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3687 thiss!1248)) key!828) lt!88791)))

(declare-fun b!179701 () Bool)

(declare-fun lt!88789 () Unit!5465)

(assert (=> b!179701 (= e!118368 lt!88789)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!155 (List!2299 (_ BitVec 64)) Unit!5465)

(assert (=> b!179701 (= lt!88789 (lemmaContainsKeyImpliesGetValueByKeyDefined!155 (toList!1152 (getCurrentListMap!799 (_keys!5576 thiss!1248) (_values!3670 thiss!1248) (mask!8673 thiss!1248) (extraKeys!3424 thiss!1248) (zeroValue!3528 thiss!1248) (minValue!3528 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3687 thiss!1248))) key!828))))

(declare-datatypes ((Option!208 0))(
  ( (Some!207 (v!4032 V!5251)) (None!206) )
))
(declare-fun isDefined!156 (Option!208) Bool)

(declare-fun getValueByKey!202 (List!2299 (_ BitVec 64)) Option!208)

(assert (=> b!179701 (isDefined!156 (getValueByKey!202 (toList!1152 (getCurrentListMap!799 (_keys!5576 thiss!1248) (_values!3670 thiss!1248) (mask!8673 thiss!1248) (extraKeys!3424 thiss!1248) (zeroValue!3528 thiss!1248) (minValue!3528 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3687 thiss!1248))) key!828))))

(declare-fun b!179702 () Bool)

(declare-fun Unit!5467 () Unit!5465)

(assert (=> b!179702 (= e!118368 Unit!5467)))

(declare-fun b!179703 () Bool)

(assert (=> b!179703 (= e!118367 (isDefined!156 (getValueByKey!202 (toList!1152 (getCurrentListMap!799 (_keys!5576 thiss!1248) (_values!3670 thiss!1248) (mask!8673 thiss!1248) (extraKeys!3424 thiss!1248) (zeroValue!3528 thiss!1248) (minValue!3528 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3687 thiss!1248))) key!828)))))

(assert (= (and d!54095 c!32200) b!179701))

(assert (= (and d!54095 (not c!32200)) b!179702))

(assert (= (and d!54095 (not res!85141)) b!179703))

(declare-fun m!207879 () Bool)

(assert (=> d!54095 m!207879))

(declare-fun m!207881 () Bool)

(assert (=> b!179701 m!207881))

(declare-fun m!207883 () Bool)

(assert (=> b!179701 m!207883))

(assert (=> b!179701 m!207883))

(declare-fun m!207885 () Bool)

(assert (=> b!179701 m!207885))

(assert (=> b!179703 m!207883))

(assert (=> b!179703 m!207883))

(assert (=> b!179703 m!207885))

(assert (=> b!179593 d!54095))

(declare-fun b!179746 () Bool)

(declare-fun e!118407 () Bool)

(declare-fun lt!88847 () ListLongMap!2273)

(declare-fun apply!148 (ListLongMap!2273 (_ BitVec 64)) V!5251)

(assert (=> b!179746 (= e!118407 (= (apply!148 lt!88847 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3528 thiss!1248)))))

(declare-fun bm!18164 () Bool)

(declare-fun call!18172 () ListLongMap!2273)

(declare-fun call!18170 () ListLongMap!2273)

(assert (=> bm!18164 (= call!18172 call!18170)))

(declare-fun b!179747 () Bool)

(declare-fun e!118400 () Bool)

(declare-fun e!118397 () Bool)

(assert (=> b!179747 (= e!118400 e!118397)))

(declare-fun res!85164 () Bool)

(declare-fun call!18169 () Bool)

(assert (=> b!179747 (= res!85164 call!18169)))

(assert (=> b!179747 (=> (not res!85164) (not e!118397))))

(declare-fun b!179748 () Bool)

(declare-fun e!118405 () Bool)

(assert (=> b!179748 (= e!118405 (validKeyInArray!0 (select (arr!3586 (_keys!5576 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!179749 () Bool)

(assert (=> b!179749 (= e!118397 (= (apply!148 lt!88847 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3528 thiss!1248)))))

(declare-fun c!32218 () Bool)

(declare-fun c!32217 () Bool)

(declare-fun call!18168 () ListLongMap!2273)

(declare-fun bm!18165 () Bool)

(declare-fun call!18173 () ListLongMap!2273)

(declare-fun +!260 (ListLongMap!2273 tuple2!3332) ListLongMap!2273)

(assert (=> bm!18165 (= call!18173 (+!260 (ite c!32217 call!18168 (ite c!32218 call!18170 call!18172)) (ite (or c!32217 c!32218) (tuple2!3333 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3528 thiss!1248)) (tuple2!3333 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3528 thiss!1248)))))))

(declare-fun b!179750 () Bool)

(declare-fun e!118395 () ListLongMap!2273)

(assert (=> b!179750 (= e!118395 (+!260 call!18173 (tuple2!3333 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3528 thiss!1248))))))

(declare-fun b!179751 () Bool)

(declare-fun e!118399 () ListLongMap!2273)

(assert (=> b!179751 (= e!118395 e!118399)))

(assert (=> b!179751 (= c!32218 (and (not (= (bvand (extraKeys!3424 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3424 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!18166 () Bool)

(assert (=> bm!18166 (= call!18169 (contains!1221 lt!88847 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!179752 () Bool)

(declare-fun e!118402 () Bool)

(declare-fun get!2054 (ValueCell!1758 V!5251) V!5251)

(declare-fun dynLambda!486 (Int (_ BitVec 64)) V!5251)

(assert (=> b!179752 (= e!118402 (= (apply!148 lt!88847 (select (arr!3586 (_keys!5576 thiss!1248)) #b00000000000000000000000000000000)) (get!2054 (select (arr!3587 (_values!3670 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!486 (defaultEntry!3687 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!179752 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3895 (_values!3670 thiss!1248))))))

(assert (=> b!179752 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3894 (_keys!5576 thiss!1248))))))

(declare-fun d!54097 () Bool)

(declare-fun e!118396 () Bool)

(assert (=> d!54097 e!118396))

(declare-fun res!85168 () Bool)

(assert (=> d!54097 (=> (not res!85168) (not e!118396))))

(assert (=> d!54097 (= res!85168 (or (bvsge #b00000000000000000000000000000000 (size!3894 (_keys!5576 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3894 (_keys!5576 thiss!1248))))))))

(declare-fun lt!88856 () ListLongMap!2273)

(assert (=> d!54097 (= lt!88847 lt!88856)))

(declare-fun lt!88855 () Unit!5465)

(declare-fun e!118398 () Unit!5465)

(assert (=> d!54097 (= lt!88855 e!118398)))

(declare-fun c!32215 () Bool)

(declare-fun e!118401 () Bool)

(assert (=> d!54097 (= c!32215 e!118401)))

(declare-fun res!85160 () Bool)

(assert (=> d!54097 (=> (not res!85160) (not e!118401))))

(assert (=> d!54097 (= res!85160 (bvslt #b00000000000000000000000000000000 (size!3894 (_keys!5576 thiss!1248))))))

(assert (=> d!54097 (= lt!88856 e!118395)))

(assert (=> d!54097 (= c!32217 (and (not (= (bvand (extraKeys!3424 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3424 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!54097 (validMask!0 (mask!8673 thiss!1248))))

(assert (=> d!54097 (= (getCurrentListMap!799 (_keys!5576 thiss!1248) (_values!3670 thiss!1248) (mask!8673 thiss!1248) (extraKeys!3424 thiss!1248) (zeroValue!3528 thiss!1248) (minValue!3528 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3687 thiss!1248)) lt!88847)))

(declare-fun bm!18167 () Bool)

(declare-fun call!18171 () Bool)

(assert (=> bm!18167 (= call!18171 (contains!1221 lt!88847 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!179753 () Bool)

(declare-fun e!118404 () ListLongMap!2273)

(assert (=> b!179753 (= e!118404 call!18172)))

(declare-fun bm!18168 () Bool)

(declare-fun call!18167 () ListLongMap!2273)

(assert (=> bm!18168 (= call!18167 call!18173)))

(declare-fun b!179754 () Bool)

(declare-fun e!118406 () Bool)

(assert (=> b!179754 (= e!118396 e!118406)))

(declare-fun c!32214 () Bool)

(assert (=> b!179754 (= c!32214 (not (= (bvand (extraKeys!3424 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!179755 () Bool)

(declare-fun res!85167 () Bool)

(assert (=> b!179755 (=> (not res!85167) (not e!118396))))

(assert (=> b!179755 (= res!85167 e!118400)))

(declare-fun c!32213 () Bool)

(assert (=> b!179755 (= c!32213 (not (= (bvand (extraKeys!3424 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!179756 () Bool)

(declare-fun res!85163 () Bool)

(assert (=> b!179756 (=> (not res!85163) (not e!118396))))

(declare-fun e!118403 () Bool)

(assert (=> b!179756 (= res!85163 e!118403)))

(declare-fun res!85165 () Bool)

(assert (=> b!179756 (=> res!85165 e!118403)))

(assert (=> b!179756 (= res!85165 (not e!118405))))

(declare-fun res!85166 () Bool)

(assert (=> b!179756 (=> (not res!85166) (not e!118405))))

(assert (=> b!179756 (= res!85166 (bvslt #b00000000000000000000000000000000 (size!3894 (_keys!5576 thiss!1248))))))

(declare-fun b!179757 () Bool)

(assert (=> b!179757 (= e!118406 (not call!18171))))

(declare-fun b!179758 () Bool)

(declare-fun c!32216 () Bool)

(assert (=> b!179758 (= c!32216 (and (not (= (bvand (extraKeys!3424 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3424 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!179758 (= e!118399 e!118404)))

(declare-fun b!179759 () Bool)

(declare-fun lt!88848 () Unit!5465)

(assert (=> b!179759 (= e!118398 lt!88848)))

(declare-fun lt!88852 () ListLongMap!2273)

(declare-fun getCurrentListMapNoExtraKeys!178 (array!7572 array!7574 (_ BitVec 32) (_ BitVec 32) V!5251 V!5251 (_ BitVec 32) Int) ListLongMap!2273)

(assert (=> b!179759 (= lt!88852 (getCurrentListMapNoExtraKeys!178 (_keys!5576 thiss!1248) (_values!3670 thiss!1248) (mask!8673 thiss!1248) (extraKeys!3424 thiss!1248) (zeroValue!3528 thiss!1248) (minValue!3528 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3687 thiss!1248)))))

(declare-fun lt!88851 () (_ BitVec 64))

(assert (=> b!179759 (= lt!88851 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88836 () (_ BitVec 64))

(assert (=> b!179759 (= lt!88836 (select (arr!3586 (_keys!5576 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88849 () Unit!5465)

(declare-fun addStillContains!124 (ListLongMap!2273 (_ BitVec 64) V!5251 (_ BitVec 64)) Unit!5465)

(assert (=> b!179759 (= lt!88849 (addStillContains!124 lt!88852 lt!88851 (zeroValue!3528 thiss!1248) lt!88836))))

(assert (=> b!179759 (contains!1221 (+!260 lt!88852 (tuple2!3333 lt!88851 (zeroValue!3528 thiss!1248))) lt!88836)))

(declare-fun lt!88850 () Unit!5465)

(assert (=> b!179759 (= lt!88850 lt!88849)))

(declare-fun lt!88857 () ListLongMap!2273)

(assert (=> b!179759 (= lt!88857 (getCurrentListMapNoExtraKeys!178 (_keys!5576 thiss!1248) (_values!3670 thiss!1248) (mask!8673 thiss!1248) (extraKeys!3424 thiss!1248) (zeroValue!3528 thiss!1248) (minValue!3528 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3687 thiss!1248)))))

(declare-fun lt!88853 () (_ BitVec 64))

(assert (=> b!179759 (= lt!88853 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88838 () (_ BitVec 64))

(assert (=> b!179759 (= lt!88838 (select (arr!3586 (_keys!5576 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88844 () Unit!5465)

(declare-fun addApplyDifferent!124 (ListLongMap!2273 (_ BitVec 64) V!5251 (_ BitVec 64)) Unit!5465)

(assert (=> b!179759 (= lt!88844 (addApplyDifferent!124 lt!88857 lt!88853 (minValue!3528 thiss!1248) lt!88838))))

(assert (=> b!179759 (= (apply!148 (+!260 lt!88857 (tuple2!3333 lt!88853 (minValue!3528 thiss!1248))) lt!88838) (apply!148 lt!88857 lt!88838))))

(declare-fun lt!88840 () Unit!5465)

(assert (=> b!179759 (= lt!88840 lt!88844)))

(declare-fun lt!88839 () ListLongMap!2273)

(assert (=> b!179759 (= lt!88839 (getCurrentListMapNoExtraKeys!178 (_keys!5576 thiss!1248) (_values!3670 thiss!1248) (mask!8673 thiss!1248) (extraKeys!3424 thiss!1248) (zeroValue!3528 thiss!1248) (minValue!3528 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3687 thiss!1248)))))

(declare-fun lt!88842 () (_ BitVec 64))

(assert (=> b!179759 (= lt!88842 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88854 () (_ BitVec 64))

(assert (=> b!179759 (= lt!88854 (select (arr!3586 (_keys!5576 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88845 () Unit!5465)

(assert (=> b!179759 (= lt!88845 (addApplyDifferent!124 lt!88839 lt!88842 (zeroValue!3528 thiss!1248) lt!88854))))

(assert (=> b!179759 (= (apply!148 (+!260 lt!88839 (tuple2!3333 lt!88842 (zeroValue!3528 thiss!1248))) lt!88854) (apply!148 lt!88839 lt!88854))))

(declare-fun lt!88837 () Unit!5465)

(assert (=> b!179759 (= lt!88837 lt!88845)))

(declare-fun lt!88841 () ListLongMap!2273)

(assert (=> b!179759 (= lt!88841 (getCurrentListMapNoExtraKeys!178 (_keys!5576 thiss!1248) (_values!3670 thiss!1248) (mask!8673 thiss!1248) (extraKeys!3424 thiss!1248) (zeroValue!3528 thiss!1248) (minValue!3528 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3687 thiss!1248)))))

(declare-fun lt!88843 () (_ BitVec 64))

(assert (=> b!179759 (= lt!88843 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88846 () (_ BitVec 64))

(assert (=> b!179759 (= lt!88846 (select (arr!3586 (_keys!5576 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!179759 (= lt!88848 (addApplyDifferent!124 lt!88841 lt!88843 (minValue!3528 thiss!1248) lt!88846))))

(assert (=> b!179759 (= (apply!148 (+!260 lt!88841 (tuple2!3333 lt!88843 (minValue!3528 thiss!1248))) lt!88846) (apply!148 lt!88841 lt!88846))))

(declare-fun b!179760 () Bool)

(assert (=> b!179760 (= e!118399 call!18167)))

(declare-fun b!179761 () Bool)

(declare-fun Unit!5468 () Unit!5465)

(assert (=> b!179761 (= e!118398 Unit!5468)))

(declare-fun b!179762 () Bool)

(assert (=> b!179762 (= e!118404 call!18167)))

(declare-fun bm!18169 () Bool)

(assert (=> bm!18169 (= call!18168 (getCurrentListMapNoExtraKeys!178 (_keys!5576 thiss!1248) (_values!3670 thiss!1248) (mask!8673 thiss!1248) (extraKeys!3424 thiss!1248) (zeroValue!3528 thiss!1248) (minValue!3528 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3687 thiss!1248)))))

(declare-fun b!179763 () Bool)

(assert (=> b!179763 (= e!118400 (not call!18169))))

(declare-fun bm!18170 () Bool)

(assert (=> bm!18170 (= call!18170 call!18168)))

(declare-fun b!179764 () Bool)

(assert (=> b!179764 (= e!118403 e!118402)))

(declare-fun res!85161 () Bool)

(assert (=> b!179764 (=> (not res!85161) (not e!118402))))

(assert (=> b!179764 (= res!85161 (contains!1221 lt!88847 (select (arr!3586 (_keys!5576 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!179764 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3894 (_keys!5576 thiss!1248))))))

(declare-fun b!179765 () Bool)

(assert (=> b!179765 (= e!118406 e!118407)))

(declare-fun res!85162 () Bool)

(assert (=> b!179765 (= res!85162 call!18171)))

(assert (=> b!179765 (=> (not res!85162) (not e!118407))))

(declare-fun b!179766 () Bool)

(assert (=> b!179766 (= e!118401 (validKeyInArray!0 (select (arr!3586 (_keys!5576 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!54097 c!32217) b!179750))

(assert (= (and d!54097 (not c!32217)) b!179751))

(assert (= (and b!179751 c!32218) b!179760))

(assert (= (and b!179751 (not c!32218)) b!179758))

(assert (= (and b!179758 c!32216) b!179762))

(assert (= (and b!179758 (not c!32216)) b!179753))

(assert (= (or b!179762 b!179753) bm!18164))

(assert (= (or b!179760 bm!18164) bm!18170))

(assert (= (or b!179760 b!179762) bm!18168))

(assert (= (or b!179750 bm!18170) bm!18169))

(assert (= (or b!179750 bm!18168) bm!18165))

(assert (= (and d!54097 res!85160) b!179766))

(assert (= (and d!54097 c!32215) b!179759))

(assert (= (and d!54097 (not c!32215)) b!179761))

(assert (= (and d!54097 res!85168) b!179756))

(assert (= (and b!179756 res!85166) b!179748))

(assert (= (and b!179756 (not res!85165)) b!179764))

(assert (= (and b!179764 res!85161) b!179752))

(assert (= (and b!179756 res!85163) b!179755))

(assert (= (and b!179755 c!32213) b!179747))

(assert (= (and b!179755 (not c!32213)) b!179763))

(assert (= (and b!179747 res!85164) b!179749))

(assert (= (or b!179747 b!179763) bm!18166))

(assert (= (and b!179755 res!85167) b!179754))

(assert (= (and b!179754 c!32214) b!179765))

(assert (= (and b!179754 (not c!32214)) b!179757))

(assert (= (and b!179765 res!85162) b!179746))

(assert (= (or b!179765 b!179757) bm!18167))

(declare-fun b_lambda!7145 () Bool)

(assert (=> (not b_lambda!7145) (not b!179752)))

(declare-fun t!7156 () Bool)

(declare-fun tb!2815 () Bool)

(assert (=> (and b!179604 (= (defaultEntry!3687 thiss!1248) (defaultEntry!3687 thiss!1248)) t!7156) tb!2815))

(declare-fun result!4703 () Bool)

(assert (=> tb!2815 (= result!4703 tp_is_empty!4203)))

(assert (=> b!179752 t!7156))

(declare-fun b_and!10985 () Bool)

(assert (= b_and!10981 (and (=> t!7156 result!4703) b_and!10985)))

(declare-fun m!207887 () Bool)

(assert (=> b!179752 m!207887))

(assert (=> b!179752 m!207887))

(declare-fun m!207889 () Bool)

(assert (=> b!179752 m!207889))

(declare-fun m!207891 () Bool)

(assert (=> b!179752 m!207891))

(assert (=> b!179752 m!207851))

(declare-fun m!207893 () Bool)

(assert (=> b!179752 m!207893))

(assert (=> b!179752 m!207889))

(assert (=> b!179752 m!207851))

(assert (=> d!54097 m!207817))

(declare-fun m!207895 () Bool)

(assert (=> b!179749 m!207895))

(declare-fun m!207897 () Bool)

(assert (=> bm!18165 m!207897))

(declare-fun m!207899 () Bool)

(assert (=> b!179759 m!207899))

(declare-fun m!207901 () Bool)

(assert (=> b!179759 m!207901))

(declare-fun m!207903 () Bool)

(assert (=> b!179759 m!207903))

(declare-fun m!207905 () Bool)

(assert (=> b!179759 m!207905))

(declare-fun m!207907 () Bool)

(assert (=> b!179759 m!207907))

(declare-fun m!207909 () Bool)

(assert (=> b!179759 m!207909))

(declare-fun m!207911 () Bool)

(assert (=> b!179759 m!207911))

(assert (=> b!179759 m!207909))

(declare-fun m!207913 () Bool)

(assert (=> b!179759 m!207913))

(declare-fun m!207915 () Bool)

(assert (=> b!179759 m!207915))

(assert (=> b!179759 m!207901))

(declare-fun m!207917 () Bool)

(assert (=> b!179759 m!207917))

(declare-fun m!207919 () Bool)

(assert (=> b!179759 m!207919))

(assert (=> b!179759 m!207905))

(declare-fun m!207921 () Bool)

(assert (=> b!179759 m!207921))

(declare-fun m!207923 () Bool)

(assert (=> b!179759 m!207923))

(declare-fun m!207925 () Bool)

(assert (=> b!179759 m!207925))

(assert (=> b!179759 m!207913))

(declare-fun m!207927 () Bool)

(assert (=> b!179759 m!207927))

(declare-fun m!207929 () Bool)

(assert (=> b!179759 m!207929))

(assert (=> b!179759 m!207851))

(declare-fun m!207931 () Bool)

(assert (=> b!179746 m!207931))

(assert (=> b!179748 m!207851))

(assert (=> b!179748 m!207851))

(assert (=> b!179748 m!207853))

(assert (=> bm!18169 m!207923))

(declare-fun m!207933 () Bool)

(assert (=> bm!18167 m!207933))

(assert (=> b!179766 m!207851))

(assert (=> b!179766 m!207851))

(assert (=> b!179766 m!207853))

(declare-fun m!207935 () Bool)

(assert (=> bm!18166 m!207935))

(assert (=> b!179764 m!207851))

(assert (=> b!179764 m!207851))

(declare-fun m!207937 () Bool)

(assert (=> b!179764 m!207937))

(declare-fun m!207939 () Bool)

(assert (=> b!179750 m!207939))

(assert (=> b!179593 d!54097))

(declare-fun b!179775 () Bool)

(declare-fun e!118413 () Bool)

(assert (=> b!179775 (= e!118413 tp_is_empty!4203)))

(declare-fun condMapEmpty!7201 () Bool)

(declare-fun mapDefault!7201 () ValueCell!1758)

(assert (=> mapNonEmpty!7195 (= condMapEmpty!7201 (= mapRest!7195 ((as const (Array (_ BitVec 32) ValueCell!1758)) mapDefault!7201)))))

(declare-fun e!118412 () Bool)

(declare-fun mapRes!7201 () Bool)

(assert (=> mapNonEmpty!7195 (= tp!16020 (and e!118412 mapRes!7201))))

(declare-fun mapIsEmpty!7201 () Bool)

(assert (=> mapIsEmpty!7201 mapRes!7201))

(declare-fun b!179776 () Bool)

(assert (=> b!179776 (= e!118412 tp_is_empty!4203)))

(declare-fun mapNonEmpty!7201 () Bool)

(declare-fun tp!16030 () Bool)

(assert (=> mapNonEmpty!7201 (= mapRes!7201 (and tp!16030 e!118413))))

(declare-fun mapValue!7201 () ValueCell!1758)

(declare-fun mapKey!7201 () (_ BitVec 32))

(declare-fun mapRest!7201 () (Array (_ BitVec 32) ValueCell!1758))

(assert (=> mapNonEmpty!7201 (= mapRest!7195 (store mapRest!7201 mapKey!7201 mapValue!7201))))

(assert (= (and mapNonEmpty!7195 condMapEmpty!7201) mapIsEmpty!7201))

(assert (= (and mapNonEmpty!7195 (not condMapEmpty!7201)) mapNonEmpty!7201))

(assert (= (and mapNonEmpty!7201 ((_ is ValueCellFull!1758) mapValue!7201)) b!179775))

(assert (= (and mapNonEmpty!7195 ((_ is ValueCellFull!1758) mapDefault!7201)) b!179776))

(declare-fun m!207941 () Bool)

(assert (=> mapNonEmpty!7201 m!207941))

(declare-fun b_lambda!7147 () Bool)

(assert (= b_lambda!7145 (or (and b!179604 b_free!4431) b_lambda!7147)))

(check-sat (not b!179691) (not d!54079) (not b_next!4431) (not b!179660) b_and!10985 (not d!54085) tp_is_empty!4203 (not b_lambda!7147) (not b!179750) (not bm!18149) (not b!179703) (not bm!18167) (not b!179647) (not b!179746) (not mapNonEmpty!7201) (not b!179759) (not d!54097) (not b!179649) (not b!179690) (not b!179766) (not b!179701) (not b!179748) (not bm!18165) (not b!179659) (not bm!18146) (not b!179752) (not b!179749) (not bm!18166) (not b!179693) (not b!179648) (not b!179675) (not d!54095) (not bm!18169) (not b!179764))
(check-sat b_and!10985 (not b_next!4431))
