; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76650 () Bool)

(assert start!76650)

(declare-fun b!897205 () Bool)

(declare-fun b_free!15981 () Bool)

(declare-fun b_next!15981 () Bool)

(assert (=> b!897205 (= b_free!15981 (not b_next!15981))))

(declare-fun tp!55993 () Bool)

(declare-fun b_and!26291 () Bool)

(assert (=> b!897205 (= tp!55993 b_and!26291)))

(declare-fun e!501724 () Bool)

(declare-fun e!501723 () Bool)

(declare-fun tp_is_empty!18309 () Bool)

(declare-datatypes ((array!52630 0))(
  ( (array!52631 (arr!25294 (Array (_ BitVec 32) (_ BitVec 64))) (size!25749 (_ BitVec 32))) )
))
(declare-datatypes ((V!29377 0))(
  ( (V!29378 (val!9205 Int)) )
))
(declare-datatypes ((ValueCell!8673 0))(
  ( (ValueCellFull!8673 (v!11692 V!29377)) (EmptyCell!8673) )
))
(declare-datatypes ((array!52632 0))(
  ( (array!52633 (arr!25295 (Array (_ BitVec 32) ValueCell!8673)) (size!25750 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4362 0))(
  ( (LongMapFixedSize!4363 (defaultEntry!5393 Int) (mask!26071 (_ BitVec 32)) (extraKeys!5102 (_ BitVec 32)) (zeroValue!5206 V!29377) (minValue!5206 V!29377) (_size!2236 (_ BitVec 32)) (_keys!10144 array!52630) (_values!5393 array!52632) (_vacant!2236 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4362)

(declare-fun array_inv!19828 (array!52630) Bool)

(declare-fun array_inv!19829 (array!52632) Bool)

(assert (=> b!897205 (= e!501724 (and tp!55993 tp_is_empty!18309 (array_inv!19828 (_keys!10144 thiss!1181)) (array_inv!19829 (_values!5393 thiss!1181)) e!501723))))

(declare-fun mapNonEmpty!29099 () Bool)

(declare-fun mapRes!29099 () Bool)

(declare-fun tp!55994 () Bool)

(declare-fun e!501721 () Bool)

(assert (=> mapNonEmpty!29099 (= mapRes!29099 (and tp!55994 e!501721))))

(declare-fun mapKey!29099 () (_ BitVec 32))

(declare-fun mapValue!29099 () ValueCell!8673)

(declare-fun mapRest!29099 () (Array (_ BitVec 32) ValueCell!8673))

(assert (=> mapNonEmpty!29099 (= (arr!25295 (_values!5393 thiss!1181)) (store mapRest!29099 mapKey!29099 mapValue!29099))))

(declare-fun b!897206 () Bool)

(declare-fun res!606594 () Bool)

(declare-fun e!501726 () Bool)

(assert (=> b!897206 (=> (not res!606594) (not e!501726))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!897206 (= res!606594 (not (= key!785 (bvneg key!785))))))

(declare-fun b!897207 () Bool)

(declare-fun e!501729 () Bool)

(assert (=> b!897207 (= e!501726 (not e!501729))))

(declare-fun res!606592 () Bool)

(assert (=> b!897207 (=> res!606592 e!501729)))

(declare-datatypes ((SeekEntryResult!8897 0))(
  ( (MissingZero!8897 (index!37958 (_ BitVec 32))) (Found!8897 (index!37959 (_ BitVec 32))) (Intermediate!8897 (undefined!9709 Bool) (index!37960 (_ BitVec 32)) (x!76430 (_ BitVec 32))) (Undefined!8897) (MissingVacant!8897 (index!37961 (_ BitVec 32))) )
))
(declare-fun lt!405097 () SeekEntryResult!8897)

(get-info :version)

(assert (=> b!897207 (= res!606592 (not ((_ is Found!8897) lt!405097)))))

(declare-fun e!501727 () Bool)

(assert (=> b!897207 e!501727))

(declare-fun res!606591 () Bool)

(assert (=> b!897207 (=> res!606591 e!501727)))

(assert (=> b!897207 (= res!606591 (not ((_ is Found!8897) lt!405097)))))

(declare-datatypes ((Unit!30475 0))(
  ( (Unit!30476) )
))
(declare-fun lt!405099 () Unit!30475)

(declare-fun lemmaSeekEntryGivesInRangeIndex!86 (array!52630 array!52632 (_ BitVec 32) (_ BitVec 32) V!29377 V!29377 (_ BitVec 64)) Unit!30475)

(assert (=> b!897207 (= lt!405099 (lemmaSeekEntryGivesInRangeIndex!86 (_keys!10144 thiss!1181) (_values!5393 thiss!1181) (mask!26071 thiss!1181) (extraKeys!5102 thiss!1181) (zeroValue!5206 thiss!1181) (minValue!5206 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52630 (_ BitVec 32)) SeekEntryResult!8897)

(assert (=> b!897207 (= lt!405097 (seekEntry!0 key!785 (_keys!10144 thiss!1181) (mask!26071 thiss!1181)))))

(declare-fun b!897208 () Bool)

(declare-fun e!501722 () Bool)

(assert (=> b!897208 (= e!501722 (or (not (= (size!25750 (_values!5393 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26071 thiss!1181)))) (not (= (size!25749 (_keys!10144 thiss!1181)) (size!25750 (_values!5393 thiss!1181)))) (bvslt (mask!26071 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5102 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5102 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!897209 () Bool)

(declare-fun e!501728 () Bool)

(assert (=> b!897209 (= e!501728 tp_is_empty!18309)))

(declare-fun b!897210 () Bool)

(assert (=> b!897210 (= e!501721 tp_is_empty!18309)))

(declare-fun res!606593 () Bool)

(assert (=> start!76650 (=> (not res!606593) (not e!501726))))

(declare-fun valid!1668 (LongMapFixedSize!4362) Bool)

(assert (=> start!76650 (= res!606593 (valid!1668 thiss!1181))))

(assert (=> start!76650 e!501726))

(assert (=> start!76650 e!501724))

(assert (=> start!76650 true))

(declare-fun mapIsEmpty!29099 () Bool)

(assert (=> mapIsEmpty!29099 mapRes!29099))

(declare-fun b!897211 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!897211 (= e!501727 (inRange!0 (index!37959 lt!405097) (mask!26071 thiss!1181)))))

(declare-fun b!897212 () Bool)

(assert (=> b!897212 (= e!501723 (and e!501728 mapRes!29099))))

(declare-fun condMapEmpty!29099 () Bool)

(declare-fun mapDefault!29099 () ValueCell!8673)

(assert (=> b!897212 (= condMapEmpty!29099 (= (arr!25295 (_values!5393 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8673)) mapDefault!29099)))))

(declare-fun b!897213 () Bool)

(assert (=> b!897213 (= e!501729 e!501722)))

(declare-fun res!606595 () Bool)

(assert (=> b!897213 (=> res!606595 e!501722)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!897213 (= res!606595 (not (validMask!0 (mask!26071 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52630 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!897213 (arrayContainsKey!0 (_keys!10144 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405098 () Unit!30475)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52630 (_ BitVec 64) (_ BitVec 32)) Unit!30475)

(assert (=> b!897213 (= lt!405098 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10144 thiss!1181) key!785 (index!37959 lt!405097)))))

(assert (= (and start!76650 res!606593) b!897206))

(assert (= (and b!897206 res!606594) b!897207))

(assert (= (and b!897207 (not res!606591)) b!897211))

(assert (= (and b!897207 (not res!606592)) b!897213))

(assert (= (and b!897213 (not res!606595)) b!897208))

(assert (= (and b!897212 condMapEmpty!29099) mapIsEmpty!29099))

(assert (= (and b!897212 (not condMapEmpty!29099)) mapNonEmpty!29099))

(assert (= (and mapNonEmpty!29099 ((_ is ValueCellFull!8673) mapValue!29099)) b!897210))

(assert (= (and b!897212 ((_ is ValueCellFull!8673) mapDefault!29099)) b!897209))

(assert (= b!897205 b!897212))

(assert (= start!76650 b!897205))

(declare-fun m!834141 () Bool)

(assert (=> b!897211 m!834141))

(declare-fun m!834143 () Bool)

(assert (=> mapNonEmpty!29099 m!834143))

(declare-fun m!834145 () Bool)

(assert (=> b!897213 m!834145))

(declare-fun m!834147 () Bool)

(assert (=> b!897213 m!834147))

(declare-fun m!834149 () Bool)

(assert (=> b!897213 m!834149))

(declare-fun m!834151 () Bool)

(assert (=> b!897205 m!834151))

(declare-fun m!834153 () Bool)

(assert (=> b!897205 m!834153))

(declare-fun m!834155 () Bool)

(assert (=> start!76650 m!834155))

(declare-fun m!834157 () Bool)

(assert (=> b!897207 m!834157))

(declare-fun m!834159 () Bool)

(assert (=> b!897207 m!834159))

(check-sat (not b!897205) (not b!897213) tp_is_empty!18309 (not start!76650) (not mapNonEmpty!29099) (not b!897207) (not b_next!15981) b_and!26291 (not b!897211))
(check-sat b_and!26291 (not b_next!15981))
(get-model)

(declare-fun d!110997 () Bool)

(declare-fun res!606617 () Bool)

(declare-fun e!501759 () Bool)

(assert (=> d!110997 (=> (not res!606617) (not e!501759))))

(declare-fun simpleValid!317 (LongMapFixedSize!4362) Bool)

(assert (=> d!110997 (= res!606617 (simpleValid!317 thiss!1181))))

(assert (=> d!110997 (= (valid!1668 thiss!1181) e!501759)))

(declare-fun b!897247 () Bool)

(declare-fun res!606618 () Bool)

(assert (=> b!897247 (=> (not res!606618) (not e!501759))))

(declare-fun arrayCountValidKeys!0 (array!52630 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!897247 (= res!606618 (= (arrayCountValidKeys!0 (_keys!10144 thiss!1181) #b00000000000000000000000000000000 (size!25749 (_keys!10144 thiss!1181))) (_size!2236 thiss!1181)))))

(declare-fun b!897248 () Bool)

(declare-fun res!606619 () Bool)

(assert (=> b!897248 (=> (not res!606619) (not e!501759))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52630 (_ BitVec 32)) Bool)

(assert (=> b!897248 (= res!606619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10144 thiss!1181) (mask!26071 thiss!1181)))))

(declare-fun b!897249 () Bool)

(declare-datatypes ((List!17905 0))(
  ( (Nil!17902) (Cons!17901 (h!19042 (_ BitVec 64)) (t!25252 List!17905)) )
))
(declare-fun arrayNoDuplicates!0 (array!52630 (_ BitVec 32) List!17905) Bool)

(assert (=> b!897249 (= e!501759 (arrayNoDuplicates!0 (_keys!10144 thiss!1181) #b00000000000000000000000000000000 Nil!17902))))

(assert (= (and d!110997 res!606617) b!897247))

(assert (= (and b!897247 res!606618) b!897248))

(assert (= (and b!897248 res!606619) b!897249))

(declare-fun m!834181 () Bool)

(assert (=> d!110997 m!834181))

(declare-fun m!834183 () Bool)

(assert (=> b!897247 m!834183))

(declare-fun m!834185 () Bool)

(assert (=> b!897248 m!834185))

(declare-fun m!834187 () Bool)

(assert (=> b!897249 m!834187))

(assert (=> start!76650 d!110997))

(declare-fun d!110999 () Bool)

(assert (=> d!110999 (= (inRange!0 (index!37959 lt!405097) (mask!26071 thiss!1181)) (and (bvsge (index!37959 lt!405097) #b00000000000000000000000000000000) (bvslt (index!37959 lt!405097) (bvadd (mask!26071 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!897211 d!110999))

(declare-fun d!111001 () Bool)

(declare-fun e!501762 () Bool)

(assert (=> d!111001 e!501762))

(declare-fun res!606622 () Bool)

(assert (=> d!111001 (=> res!606622 e!501762)))

(declare-fun lt!405114 () SeekEntryResult!8897)

(assert (=> d!111001 (= res!606622 (not ((_ is Found!8897) lt!405114)))))

(assert (=> d!111001 (= lt!405114 (seekEntry!0 key!785 (_keys!10144 thiss!1181) (mask!26071 thiss!1181)))))

(declare-fun lt!405113 () Unit!30475)

(declare-fun choose!1491 (array!52630 array!52632 (_ BitVec 32) (_ BitVec 32) V!29377 V!29377 (_ BitVec 64)) Unit!30475)

(assert (=> d!111001 (= lt!405113 (choose!1491 (_keys!10144 thiss!1181) (_values!5393 thiss!1181) (mask!26071 thiss!1181) (extraKeys!5102 thiss!1181) (zeroValue!5206 thiss!1181) (minValue!5206 thiss!1181) key!785))))

(assert (=> d!111001 (validMask!0 (mask!26071 thiss!1181))))

(assert (=> d!111001 (= (lemmaSeekEntryGivesInRangeIndex!86 (_keys!10144 thiss!1181) (_values!5393 thiss!1181) (mask!26071 thiss!1181) (extraKeys!5102 thiss!1181) (zeroValue!5206 thiss!1181) (minValue!5206 thiss!1181) key!785) lt!405113)))

(declare-fun b!897252 () Bool)

(assert (=> b!897252 (= e!501762 (inRange!0 (index!37959 lt!405114) (mask!26071 thiss!1181)))))

(assert (= (and d!111001 (not res!606622)) b!897252))

(assert (=> d!111001 m!834159))

(declare-fun m!834189 () Bool)

(assert (=> d!111001 m!834189))

(assert (=> d!111001 m!834145))

(declare-fun m!834191 () Bool)

(assert (=> b!897252 m!834191))

(assert (=> b!897207 d!111001))

(declare-fun b!897265 () Bool)

(declare-fun e!501769 () SeekEntryResult!8897)

(declare-fun e!501770 () SeekEntryResult!8897)

(assert (=> b!897265 (= e!501769 e!501770)))

(declare-fun lt!405125 () (_ BitVec 64))

(declare-fun lt!405126 () SeekEntryResult!8897)

(assert (=> b!897265 (= lt!405125 (select (arr!25294 (_keys!10144 thiss!1181)) (index!37960 lt!405126)))))

(declare-fun c!94744 () Bool)

(assert (=> b!897265 (= c!94744 (= lt!405125 key!785))))

(declare-fun b!897266 () Bool)

(declare-fun e!501771 () SeekEntryResult!8897)

(assert (=> b!897266 (= e!501771 (MissingZero!8897 (index!37960 lt!405126)))))

(declare-fun b!897267 () Bool)

(declare-fun c!94742 () Bool)

(assert (=> b!897267 (= c!94742 (= lt!405125 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!897267 (= e!501770 e!501771)))

(declare-fun b!897268 () Bool)

(declare-fun lt!405123 () SeekEntryResult!8897)

(assert (=> b!897268 (= e!501771 (ite ((_ is MissingVacant!8897) lt!405123) (MissingZero!8897 (index!37961 lt!405123)) lt!405123))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52630 (_ BitVec 32)) SeekEntryResult!8897)

(assert (=> b!897268 (= lt!405123 (seekKeyOrZeroReturnVacant!0 (x!76430 lt!405126) (index!37960 lt!405126) (index!37960 lt!405126) key!785 (_keys!10144 thiss!1181) (mask!26071 thiss!1181)))))

(declare-fun b!897269 () Bool)

(assert (=> b!897269 (= e!501769 Undefined!8897)))

(declare-fun d!111003 () Bool)

(declare-fun lt!405124 () SeekEntryResult!8897)

(assert (=> d!111003 (and (or ((_ is MissingVacant!8897) lt!405124) (not ((_ is Found!8897) lt!405124)) (and (bvsge (index!37959 lt!405124) #b00000000000000000000000000000000) (bvslt (index!37959 lt!405124) (size!25749 (_keys!10144 thiss!1181))))) (not ((_ is MissingVacant!8897) lt!405124)) (or (not ((_ is Found!8897) lt!405124)) (= (select (arr!25294 (_keys!10144 thiss!1181)) (index!37959 lt!405124)) key!785)))))

(assert (=> d!111003 (= lt!405124 e!501769)))

(declare-fun c!94743 () Bool)

(assert (=> d!111003 (= c!94743 (and ((_ is Intermediate!8897) lt!405126) (undefined!9709 lt!405126)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52630 (_ BitVec 32)) SeekEntryResult!8897)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!111003 (= lt!405126 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26071 thiss!1181)) key!785 (_keys!10144 thiss!1181) (mask!26071 thiss!1181)))))

(assert (=> d!111003 (validMask!0 (mask!26071 thiss!1181))))

(assert (=> d!111003 (= (seekEntry!0 key!785 (_keys!10144 thiss!1181) (mask!26071 thiss!1181)) lt!405124)))

(declare-fun b!897270 () Bool)

(assert (=> b!897270 (= e!501770 (Found!8897 (index!37960 lt!405126)))))

(assert (= (and d!111003 c!94743) b!897269))

(assert (= (and d!111003 (not c!94743)) b!897265))

(assert (= (and b!897265 c!94744) b!897270))

(assert (= (and b!897265 (not c!94744)) b!897267))

(assert (= (and b!897267 c!94742) b!897266))

(assert (= (and b!897267 (not c!94742)) b!897268))

(declare-fun m!834193 () Bool)

(assert (=> b!897265 m!834193))

(declare-fun m!834195 () Bool)

(assert (=> b!897268 m!834195))

(declare-fun m!834197 () Bool)

(assert (=> d!111003 m!834197))

(declare-fun m!834199 () Bool)

(assert (=> d!111003 m!834199))

(assert (=> d!111003 m!834199))

(declare-fun m!834201 () Bool)

(assert (=> d!111003 m!834201))

(assert (=> d!111003 m!834145))

(assert (=> b!897207 d!111003))

(declare-fun d!111005 () Bool)

(assert (=> d!111005 (= (validMask!0 (mask!26071 thiss!1181)) (and (or (= (mask!26071 thiss!1181) #b00000000000000000000000000000111) (= (mask!26071 thiss!1181) #b00000000000000000000000000001111) (= (mask!26071 thiss!1181) #b00000000000000000000000000011111) (= (mask!26071 thiss!1181) #b00000000000000000000000000111111) (= (mask!26071 thiss!1181) #b00000000000000000000000001111111) (= (mask!26071 thiss!1181) #b00000000000000000000000011111111) (= (mask!26071 thiss!1181) #b00000000000000000000000111111111) (= (mask!26071 thiss!1181) #b00000000000000000000001111111111) (= (mask!26071 thiss!1181) #b00000000000000000000011111111111) (= (mask!26071 thiss!1181) #b00000000000000000000111111111111) (= (mask!26071 thiss!1181) #b00000000000000000001111111111111) (= (mask!26071 thiss!1181) #b00000000000000000011111111111111) (= (mask!26071 thiss!1181) #b00000000000000000111111111111111) (= (mask!26071 thiss!1181) #b00000000000000001111111111111111) (= (mask!26071 thiss!1181) #b00000000000000011111111111111111) (= (mask!26071 thiss!1181) #b00000000000000111111111111111111) (= (mask!26071 thiss!1181) #b00000000000001111111111111111111) (= (mask!26071 thiss!1181) #b00000000000011111111111111111111) (= (mask!26071 thiss!1181) #b00000000000111111111111111111111) (= (mask!26071 thiss!1181) #b00000000001111111111111111111111) (= (mask!26071 thiss!1181) #b00000000011111111111111111111111) (= (mask!26071 thiss!1181) #b00000000111111111111111111111111) (= (mask!26071 thiss!1181) #b00000001111111111111111111111111) (= (mask!26071 thiss!1181) #b00000011111111111111111111111111) (= (mask!26071 thiss!1181) #b00000111111111111111111111111111) (= (mask!26071 thiss!1181) #b00001111111111111111111111111111) (= (mask!26071 thiss!1181) #b00011111111111111111111111111111) (= (mask!26071 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26071 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!897213 d!111005))

(declare-fun d!111007 () Bool)

(declare-fun res!606627 () Bool)

(declare-fun e!501776 () Bool)

(assert (=> d!111007 (=> res!606627 e!501776)))

(assert (=> d!111007 (= res!606627 (= (select (arr!25294 (_keys!10144 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!111007 (= (arrayContainsKey!0 (_keys!10144 thiss!1181) key!785 #b00000000000000000000000000000000) e!501776)))

(declare-fun b!897275 () Bool)

(declare-fun e!501777 () Bool)

(assert (=> b!897275 (= e!501776 e!501777)))

(declare-fun res!606628 () Bool)

(assert (=> b!897275 (=> (not res!606628) (not e!501777))))

(assert (=> b!897275 (= res!606628 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25749 (_keys!10144 thiss!1181))))))

(declare-fun b!897276 () Bool)

(assert (=> b!897276 (= e!501777 (arrayContainsKey!0 (_keys!10144 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!111007 (not res!606627)) b!897275))

(assert (= (and b!897275 res!606628) b!897276))

(declare-fun m!834203 () Bool)

(assert (=> d!111007 m!834203))

(declare-fun m!834205 () Bool)

(assert (=> b!897276 m!834205))

(assert (=> b!897213 d!111007))

(declare-fun d!111009 () Bool)

(assert (=> d!111009 (arrayContainsKey!0 (_keys!10144 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405129 () Unit!30475)

(declare-fun choose!13 (array!52630 (_ BitVec 64) (_ BitVec 32)) Unit!30475)

(assert (=> d!111009 (= lt!405129 (choose!13 (_keys!10144 thiss!1181) key!785 (index!37959 lt!405097)))))

(assert (=> d!111009 (bvsge (index!37959 lt!405097) #b00000000000000000000000000000000)))

(assert (=> d!111009 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10144 thiss!1181) key!785 (index!37959 lt!405097)) lt!405129)))

(declare-fun bs!25181 () Bool)

(assert (= bs!25181 d!111009))

(assert (=> bs!25181 m!834147))

(declare-fun m!834207 () Bool)

(assert (=> bs!25181 m!834207))

(assert (=> b!897213 d!111009))

(declare-fun d!111011 () Bool)

(assert (=> d!111011 (= (array_inv!19828 (_keys!10144 thiss!1181)) (bvsge (size!25749 (_keys!10144 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!897205 d!111011))

(declare-fun d!111013 () Bool)

(assert (=> d!111013 (= (array_inv!19829 (_values!5393 thiss!1181)) (bvsge (size!25750 (_values!5393 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!897205 d!111013))

(declare-fun condMapEmpty!29105 () Bool)

(declare-fun mapDefault!29105 () ValueCell!8673)

(assert (=> mapNonEmpty!29099 (= condMapEmpty!29105 (= mapRest!29099 ((as const (Array (_ BitVec 32) ValueCell!8673)) mapDefault!29105)))))

(declare-fun e!501782 () Bool)

(declare-fun mapRes!29105 () Bool)

(assert (=> mapNonEmpty!29099 (= tp!55994 (and e!501782 mapRes!29105))))

(declare-fun mapIsEmpty!29105 () Bool)

(assert (=> mapIsEmpty!29105 mapRes!29105))

(declare-fun mapNonEmpty!29105 () Bool)

(declare-fun tp!56003 () Bool)

(declare-fun e!501783 () Bool)

(assert (=> mapNonEmpty!29105 (= mapRes!29105 (and tp!56003 e!501783))))

(declare-fun mapKey!29105 () (_ BitVec 32))

(declare-fun mapValue!29105 () ValueCell!8673)

(declare-fun mapRest!29105 () (Array (_ BitVec 32) ValueCell!8673))

(assert (=> mapNonEmpty!29105 (= mapRest!29099 (store mapRest!29105 mapKey!29105 mapValue!29105))))

(declare-fun b!897283 () Bool)

(assert (=> b!897283 (= e!501783 tp_is_empty!18309)))

(declare-fun b!897284 () Bool)

(assert (=> b!897284 (= e!501782 tp_is_empty!18309)))

(assert (= (and mapNonEmpty!29099 condMapEmpty!29105) mapIsEmpty!29105))

(assert (= (and mapNonEmpty!29099 (not condMapEmpty!29105)) mapNonEmpty!29105))

(assert (= (and mapNonEmpty!29105 ((_ is ValueCellFull!8673) mapValue!29105)) b!897283))

(assert (= (and mapNonEmpty!29099 ((_ is ValueCellFull!8673) mapDefault!29105)) b!897284))

(declare-fun m!834209 () Bool)

(assert (=> mapNonEmpty!29105 m!834209))

(check-sat (not b!897268) (not b!897247) (not b!897252) (not mapNonEmpty!29105) (not d!110997) tp_is_empty!18309 (not b!897249) b_and!26291 (not b!897248) (not d!111009) (not b!897276) (not b_next!15981) (not d!111003) (not d!111001))
(check-sat b_and!26291 (not b_next!15981))
(get-model)

(assert (=> d!111001 d!111003))

(declare-fun d!111015 () Bool)

(declare-fun e!501786 () Bool)

(assert (=> d!111015 e!501786))

(declare-fun res!606631 () Bool)

(assert (=> d!111015 (=> res!606631 e!501786)))

(declare-fun lt!405132 () SeekEntryResult!8897)

(assert (=> d!111015 (= res!606631 (not ((_ is Found!8897) lt!405132)))))

(assert (=> d!111015 (= lt!405132 (seekEntry!0 key!785 (_keys!10144 thiss!1181) (mask!26071 thiss!1181)))))

(assert (=> d!111015 true))

(declare-fun _$36!363 () Unit!30475)

(assert (=> d!111015 (= (choose!1491 (_keys!10144 thiss!1181) (_values!5393 thiss!1181) (mask!26071 thiss!1181) (extraKeys!5102 thiss!1181) (zeroValue!5206 thiss!1181) (minValue!5206 thiss!1181) key!785) _$36!363)))

(declare-fun b!897287 () Bool)

(assert (=> b!897287 (= e!501786 (inRange!0 (index!37959 lt!405132) (mask!26071 thiss!1181)))))

(assert (= (and d!111015 (not res!606631)) b!897287))

(assert (=> d!111015 m!834159))

(declare-fun m!834211 () Bool)

(assert (=> b!897287 m!834211))

(assert (=> d!111001 d!111015))

(assert (=> d!111001 d!111005))

(declare-fun b!897298 () Bool)

(declare-fun e!501795 () Bool)

(declare-fun call!39808 () Bool)

(assert (=> b!897298 (= e!501795 call!39808)))

(declare-fun d!111017 () Bool)

(declare-fun res!606638 () Bool)

(declare-fun e!501797 () Bool)

(assert (=> d!111017 (=> res!606638 e!501797)))

(assert (=> d!111017 (= res!606638 (bvsge #b00000000000000000000000000000000 (size!25749 (_keys!10144 thiss!1181))))))

(assert (=> d!111017 (= (arrayNoDuplicates!0 (_keys!10144 thiss!1181) #b00000000000000000000000000000000 Nil!17902) e!501797)))

(declare-fun b!897299 () Bool)

(assert (=> b!897299 (= e!501795 call!39808)))

(declare-fun b!897300 () Bool)

(declare-fun e!501798 () Bool)

(assert (=> b!897300 (= e!501797 e!501798)))

(declare-fun res!606640 () Bool)

(assert (=> b!897300 (=> (not res!606640) (not e!501798))))

(declare-fun e!501796 () Bool)

(assert (=> b!897300 (= res!606640 (not e!501796))))

(declare-fun res!606639 () Bool)

(assert (=> b!897300 (=> (not res!606639) (not e!501796))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!897300 (= res!606639 (validKeyInArray!0 (select (arr!25294 (_keys!10144 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!897301 () Bool)

(assert (=> b!897301 (= e!501798 e!501795)))

(declare-fun c!94747 () Bool)

(assert (=> b!897301 (= c!94747 (validKeyInArray!0 (select (arr!25294 (_keys!10144 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!897302 () Bool)

(declare-fun contains!4392 (List!17905 (_ BitVec 64)) Bool)

(assert (=> b!897302 (= e!501796 (contains!4392 Nil!17902 (select (arr!25294 (_keys!10144 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!39805 () Bool)

(assert (=> bm!39805 (= call!39808 (arrayNoDuplicates!0 (_keys!10144 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!94747 (Cons!17901 (select (arr!25294 (_keys!10144 thiss!1181)) #b00000000000000000000000000000000) Nil!17902) Nil!17902)))))

(assert (= (and d!111017 (not res!606638)) b!897300))

(assert (= (and b!897300 res!606639) b!897302))

(assert (= (and b!897300 res!606640) b!897301))

(assert (= (and b!897301 c!94747) b!897298))

(assert (= (and b!897301 (not c!94747)) b!897299))

(assert (= (or b!897298 b!897299) bm!39805))

(assert (=> b!897300 m!834203))

(assert (=> b!897300 m!834203))

(declare-fun m!834213 () Bool)

(assert (=> b!897300 m!834213))

(assert (=> b!897301 m!834203))

(assert (=> b!897301 m!834203))

(assert (=> b!897301 m!834213))

(assert (=> b!897302 m!834203))

(assert (=> b!897302 m!834203))

(declare-fun m!834215 () Bool)

(assert (=> b!897302 m!834215))

(assert (=> bm!39805 m!834203))

(declare-fun m!834217 () Bool)

(assert (=> bm!39805 m!834217))

(assert (=> b!897249 d!111017))

(declare-fun d!111019 () Bool)

(declare-fun res!606641 () Bool)

(declare-fun e!501799 () Bool)

(assert (=> d!111019 (=> res!606641 e!501799)))

(assert (=> d!111019 (= res!606641 (= (select (arr!25294 (_keys!10144 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!785))))

(assert (=> d!111019 (= (arrayContainsKey!0 (_keys!10144 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!501799)))

(declare-fun b!897303 () Bool)

(declare-fun e!501800 () Bool)

(assert (=> b!897303 (= e!501799 e!501800)))

(declare-fun res!606642 () Bool)

(assert (=> b!897303 (=> (not res!606642) (not e!501800))))

(assert (=> b!897303 (= res!606642 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!25749 (_keys!10144 thiss!1181))))))

(declare-fun b!897304 () Bool)

(assert (=> b!897304 (= e!501800 (arrayContainsKey!0 (_keys!10144 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!111019 (not res!606641)) b!897303))

(assert (= (and b!897303 res!606642) b!897304))

(declare-fun m!834219 () Bool)

(assert (=> d!111019 m!834219))

(declare-fun m!834221 () Bool)

(assert (=> b!897304 m!834221))

(assert (=> b!897276 d!111019))

(assert (=> d!111009 d!111007))

(declare-fun d!111021 () Bool)

(assert (=> d!111021 (arrayContainsKey!0 (_keys!10144 thiss!1181) key!785 #b00000000000000000000000000000000)))

(assert (=> d!111021 true))

(declare-fun _$60!415 () Unit!30475)

(assert (=> d!111021 (= (choose!13 (_keys!10144 thiss!1181) key!785 (index!37959 lt!405097)) _$60!415)))

(declare-fun bs!25182 () Bool)

(assert (= bs!25182 d!111021))

(assert (=> bs!25182 m!834147))

(assert (=> d!111009 d!111021))

(declare-fun b!897318 () Bool)

(declare-fun e!501807 () SeekEntryResult!8897)

(assert (=> b!897318 (= e!501807 (MissingVacant!8897 (index!37960 lt!405126)))))

(declare-fun b!897319 () Bool)

(declare-fun e!501809 () SeekEntryResult!8897)

(declare-fun e!501808 () SeekEntryResult!8897)

(assert (=> b!897319 (= e!501809 e!501808)))

(declare-fun c!94756 () Bool)

(declare-fun lt!405138 () (_ BitVec 64))

(assert (=> b!897319 (= c!94756 (= lt!405138 key!785))))

(declare-fun b!897320 () Bool)

(assert (=> b!897320 (= e!501809 Undefined!8897)))

(declare-fun b!897321 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!897321 (= e!501807 (seekKeyOrZeroReturnVacant!0 (bvadd (x!76430 lt!405126) #b00000000000000000000000000000001) (nextIndex!0 (index!37960 lt!405126) (x!76430 lt!405126) (mask!26071 thiss!1181)) (index!37960 lt!405126) key!785 (_keys!10144 thiss!1181) (mask!26071 thiss!1181)))))

(declare-fun b!897322 () Bool)

(declare-fun c!94754 () Bool)

(assert (=> b!897322 (= c!94754 (= lt!405138 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!897322 (= e!501808 e!501807)))

(declare-fun b!897317 () Bool)

(assert (=> b!897317 (= e!501808 (Found!8897 (index!37960 lt!405126)))))

(declare-fun lt!405137 () SeekEntryResult!8897)

(declare-fun d!111023 () Bool)

(assert (=> d!111023 (and (or ((_ is Undefined!8897) lt!405137) (not ((_ is Found!8897) lt!405137)) (and (bvsge (index!37959 lt!405137) #b00000000000000000000000000000000) (bvslt (index!37959 lt!405137) (size!25749 (_keys!10144 thiss!1181))))) (or ((_ is Undefined!8897) lt!405137) ((_ is Found!8897) lt!405137) (not ((_ is MissingVacant!8897) lt!405137)) (not (= (index!37961 lt!405137) (index!37960 lt!405126))) (and (bvsge (index!37961 lt!405137) #b00000000000000000000000000000000) (bvslt (index!37961 lt!405137) (size!25749 (_keys!10144 thiss!1181))))) (or ((_ is Undefined!8897) lt!405137) (ite ((_ is Found!8897) lt!405137) (= (select (arr!25294 (_keys!10144 thiss!1181)) (index!37959 lt!405137)) key!785) (and ((_ is MissingVacant!8897) lt!405137) (= (index!37961 lt!405137) (index!37960 lt!405126)) (= (select (arr!25294 (_keys!10144 thiss!1181)) (index!37961 lt!405137)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!111023 (= lt!405137 e!501809)))

(declare-fun c!94755 () Bool)

(assert (=> d!111023 (= c!94755 (bvsge (x!76430 lt!405126) #b01111111111111111111111111111110))))

(assert (=> d!111023 (= lt!405138 (select (arr!25294 (_keys!10144 thiss!1181)) (index!37960 lt!405126)))))

(assert (=> d!111023 (validMask!0 (mask!26071 thiss!1181))))

(assert (=> d!111023 (= (seekKeyOrZeroReturnVacant!0 (x!76430 lt!405126) (index!37960 lt!405126) (index!37960 lt!405126) key!785 (_keys!10144 thiss!1181) (mask!26071 thiss!1181)) lt!405137)))

(assert (= (and d!111023 c!94755) b!897320))

(assert (= (and d!111023 (not c!94755)) b!897319))

(assert (= (and b!897319 c!94756) b!897317))

(assert (= (and b!897319 (not c!94756)) b!897322))

(assert (= (and b!897322 c!94754) b!897318))

(assert (= (and b!897322 (not c!94754)) b!897321))

(declare-fun m!834223 () Bool)

(assert (=> b!897321 m!834223))

(assert (=> b!897321 m!834223))

(declare-fun m!834225 () Bool)

(assert (=> b!897321 m!834225))

(declare-fun m!834227 () Bool)

(assert (=> d!111023 m!834227))

(declare-fun m!834229 () Bool)

(assert (=> d!111023 m!834229))

(assert (=> d!111023 m!834193))

(assert (=> d!111023 m!834145))

(assert (=> b!897268 d!111023))

(declare-fun d!111025 () Bool)

(assert (=> d!111025 (= (inRange!0 (index!37959 lt!405114) (mask!26071 thiss!1181)) (and (bvsge (index!37959 lt!405114) #b00000000000000000000000000000000) (bvslt (index!37959 lt!405114) (bvadd (mask!26071 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!897252 d!111025))

(declare-fun b!897332 () Bool)

(declare-fun res!606651 () Bool)

(declare-fun e!501812 () Bool)

(assert (=> b!897332 (=> (not res!606651) (not e!501812))))

(declare-fun size!25753 (LongMapFixedSize!4362) (_ BitVec 32))

(assert (=> b!897332 (= res!606651 (bvsge (size!25753 thiss!1181) (_size!2236 thiss!1181)))))

(declare-fun b!897334 () Bool)

(assert (=> b!897334 (= e!501812 (and (bvsge (extraKeys!5102 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5102 thiss!1181) #b00000000000000000000000000000011) (bvsge (_vacant!2236 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun d!111027 () Bool)

(declare-fun res!606653 () Bool)

(assert (=> d!111027 (=> (not res!606653) (not e!501812))))

(assert (=> d!111027 (= res!606653 (validMask!0 (mask!26071 thiss!1181)))))

(assert (=> d!111027 (= (simpleValid!317 thiss!1181) e!501812)))

(declare-fun b!897331 () Bool)

(declare-fun res!606654 () Bool)

(assert (=> b!897331 (=> (not res!606654) (not e!501812))))

(assert (=> b!897331 (= res!606654 (and (= (size!25750 (_values!5393 thiss!1181)) (bvadd (mask!26071 thiss!1181) #b00000000000000000000000000000001)) (= (size!25749 (_keys!10144 thiss!1181)) (size!25750 (_values!5393 thiss!1181))) (bvsge (_size!2236 thiss!1181) #b00000000000000000000000000000000) (bvsle (_size!2236 thiss!1181) (bvadd (mask!26071 thiss!1181) #b00000000000000000000000000000001))))))

(declare-fun b!897333 () Bool)

(declare-fun res!606652 () Bool)

(assert (=> b!897333 (=> (not res!606652) (not e!501812))))

(assert (=> b!897333 (= res!606652 (= (size!25753 thiss!1181) (bvadd (_size!2236 thiss!1181) (bvsdiv (bvadd (extraKeys!5102 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!111027 res!606653) b!897331))

(assert (= (and b!897331 res!606654) b!897332))

(assert (= (and b!897332 res!606651) b!897333))

(assert (= (and b!897333 res!606652) b!897334))

(declare-fun m!834231 () Bool)

(assert (=> b!897332 m!834231))

(assert (=> d!111027 m!834145))

(assert (=> b!897333 m!834231))

(assert (=> d!110997 d!111027))

(declare-fun b!897353 () Bool)

(declare-fun lt!405143 () SeekEntryResult!8897)

(assert (=> b!897353 (and (bvsge (index!37960 lt!405143) #b00000000000000000000000000000000) (bvslt (index!37960 lt!405143) (size!25749 (_keys!10144 thiss!1181))))))

(declare-fun res!606661 () Bool)

(assert (=> b!897353 (= res!606661 (= (select (arr!25294 (_keys!10144 thiss!1181)) (index!37960 lt!405143)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!501823 () Bool)

(assert (=> b!897353 (=> res!606661 e!501823)))

(declare-fun b!897354 () Bool)

(declare-fun e!501826 () SeekEntryResult!8897)

(declare-fun e!501825 () SeekEntryResult!8897)

(assert (=> b!897354 (= e!501826 e!501825)))

(declare-fun c!94765 () Bool)

(declare-fun lt!405144 () (_ BitVec 64))

(assert (=> b!897354 (= c!94765 (or (= lt!405144 key!785) (= (bvadd lt!405144 lt!405144) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!897355 () Bool)

(assert (=> b!897355 (= e!501826 (Intermediate!8897 true (toIndex!0 key!785 (mask!26071 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!897356 () Bool)

(declare-fun e!501824 () Bool)

(declare-fun e!501827 () Bool)

(assert (=> b!897356 (= e!501824 e!501827)))

(declare-fun res!606663 () Bool)

(assert (=> b!897356 (= res!606663 (and ((_ is Intermediate!8897) lt!405143) (not (undefined!9709 lt!405143)) (bvslt (x!76430 lt!405143) #b01111111111111111111111111111110) (bvsge (x!76430 lt!405143) #b00000000000000000000000000000000) (bvsge (x!76430 lt!405143) #b00000000000000000000000000000000)))))

(assert (=> b!897356 (=> (not res!606663) (not e!501827))))

(declare-fun b!897357 () Bool)

(assert (=> b!897357 (= e!501825 (Intermediate!8897 false (toIndex!0 key!785 (mask!26071 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!897358 () Bool)

(assert (=> b!897358 (= e!501824 (bvsge (x!76430 lt!405143) #b01111111111111111111111111111110))))

(declare-fun b!897359 () Bool)

(assert (=> b!897359 (= e!501825 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!785 (mask!26071 thiss!1181)) #b00000000000000000000000000000000 (mask!26071 thiss!1181)) key!785 (_keys!10144 thiss!1181) (mask!26071 thiss!1181)))))

(declare-fun b!897360 () Bool)

(assert (=> b!897360 (and (bvsge (index!37960 lt!405143) #b00000000000000000000000000000000) (bvslt (index!37960 lt!405143) (size!25749 (_keys!10144 thiss!1181))))))

(declare-fun res!606662 () Bool)

(assert (=> b!897360 (= res!606662 (= (select (arr!25294 (_keys!10144 thiss!1181)) (index!37960 lt!405143)) key!785))))

(assert (=> b!897360 (=> res!606662 e!501823)))

(assert (=> b!897360 (= e!501827 e!501823)))

(declare-fun d!111029 () Bool)

(assert (=> d!111029 e!501824))

(declare-fun c!94763 () Bool)

(assert (=> d!111029 (= c!94763 (and ((_ is Intermediate!8897) lt!405143) (undefined!9709 lt!405143)))))

(assert (=> d!111029 (= lt!405143 e!501826)))

(declare-fun c!94764 () Bool)

(assert (=> d!111029 (= c!94764 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!111029 (= lt!405144 (select (arr!25294 (_keys!10144 thiss!1181)) (toIndex!0 key!785 (mask!26071 thiss!1181))))))

(assert (=> d!111029 (validMask!0 (mask!26071 thiss!1181))))

(assert (=> d!111029 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26071 thiss!1181)) key!785 (_keys!10144 thiss!1181) (mask!26071 thiss!1181)) lt!405143)))

(declare-fun b!897361 () Bool)

(assert (=> b!897361 (and (bvsge (index!37960 lt!405143) #b00000000000000000000000000000000) (bvslt (index!37960 lt!405143) (size!25749 (_keys!10144 thiss!1181))))))

(assert (=> b!897361 (= e!501823 (= (select (arr!25294 (_keys!10144 thiss!1181)) (index!37960 lt!405143)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!111029 c!94764) b!897355))

(assert (= (and d!111029 (not c!94764)) b!897354))

(assert (= (and b!897354 c!94765) b!897357))

(assert (= (and b!897354 (not c!94765)) b!897359))

(assert (= (and d!111029 c!94763) b!897358))

(assert (= (and d!111029 (not c!94763)) b!897356))

(assert (= (and b!897356 res!606663) b!897360))

(assert (= (and b!897360 (not res!606662)) b!897353))

(assert (= (and b!897353 (not res!606661)) b!897361))

(declare-fun m!834233 () Bool)

(assert (=> b!897361 m!834233))

(assert (=> d!111029 m!834199))

(declare-fun m!834235 () Bool)

(assert (=> d!111029 m!834235))

(assert (=> d!111029 m!834145))

(assert (=> b!897360 m!834233))

(assert (=> b!897353 m!834233))

(assert (=> b!897359 m!834199))

(declare-fun m!834237 () Bool)

(assert (=> b!897359 m!834237))

(assert (=> b!897359 m!834237))

(declare-fun m!834239 () Bool)

(assert (=> b!897359 m!834239))

(assert (=> d!111003 d!111029))

(declare-fun d!111031 () Bool)

(declare-fun lt!405150 () (_ BitVec 32))

(declare-fun lt!405149 () (_ BitVec 32))

(assert (=> d!111031 (= lt!405150 (bvmul (bvxor lt!405149 (bvlshr lt!405149 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!111031 (= lt!405149 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!111031 (and (bvsge (mask!26071 thiss!1181) #b00000000000000000000000000000000) (let ((res!606664 (let ((h!19043 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!76448 (bvmul (bvxor h!19043 (bvlshr h!19043 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!76448 (bvlshr x!76448 #b00000000000000000000000000001101)) (mask!26071 thiss!1181)))))) (and (bvslt res!606664 (bvadd (mask!26071 thiss!1181) #b00000000000000000000000000000001)) (bvsge res!606664 #b00000000000000000000000000000000))))))

(assert (=> d!111031 (= (toIndex!0 key!785 (mask!26071 thiss!1181)) (bvand (bvxor lt!405150 (bvlshr lt!405150 #b00000000000000000000000000001101)) (mask!26071 thiss!1181)))))

(assert (=> d!111003 d!111031))

(assert (=> d!111003 d!111005))

(declare-fun d!111033 () Bool)

(declare-fun lt!405153 () (_ BitVec 32))

(assert (=> d!111033 (and (bvsge lt!405153 #b00000000000000000000000000000000) (bvsle lt!405153 (bvsub (size!25749 (_keys!10144 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun e!501832 () (_ BitVec 32))

(assert (=> d!111033 (= lt!405153 e!501832)))

(declare-fun c!94771 () Bool)

(assert (=> d!111033 (= c!94771 (bvsge #b00000000000000000000000000000000 (size!25749 (_keys!10144 thiss!1181))))))

(assert (=> d!111033 (and (bvsle #b00000000000000000000000000000000 (size!25749 (_keys!10144 thiss!1181))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!25749 (_keys!10144 thiss!1181)) (size!25749 (_keys!10144 thiss!1181))))))

(assert (=> d!111033 (= (arrayCountValidKeys!0 (_keys!10144 thiss!1181) #b00000000000000000000000000000000 (size!25749 (_keys!10144 thiss!1181))) lt!405153)))

(declare-fun b!897370 () Bool)

(declare-fun e!501833 () (_ BitVec 32))

(declare-fun call!39811 () (_ BitVec 32))

(assert (=> b!897370 (= e!501833 (bvadd #b00000000000000000000000000000001 call!39811))))

(declare-fun bm!39808 () Bool)

(assert (=> bm!39808 (= call!39811 (arrayCountValidKeys!0 (_keys!10144 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25749 (_keys!10144 thiss!1181))))))

(declare-fun b!897371 () Bool)

(assert (=> b!897371 (= e!501832 #b00000000000000000000000000000000)))

(declare-fun b!897372 () Bool)

(assert (=> b!897372 (= e!501832 e!501833)))

(declare-fun c!94770 () Bool)

(assert (=> b!897372 (= c!94770 (validKeyInArray!0 (select (arr!25294 (_keys!10144 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!897373 () Bool)

(assert (=> b!897373 (= e!501833 call!39811)))

(assert (= (and d!111033 c!94771) b!897371))

(assert (= (and d!111033 (not c!94771)) b!897372))

(assert (= (and b!897372 c!94770) b!897370))

(assert (= (and b!897372 (not c!94770)) b!897373))

(assert (= (or b!897370 b!897373) bm!39808))

(declare-fun m!834241 () Bool)

(assert (=> bm!39808 m!834241))

(assert (=> b!897372 m!834203))

(assert (=> b!897372 m!834203))

(assert (=> b!897372 m!834213))

(assert (=> b!897247 d!111033))

(declare-fun b!897382 () Bool)

(declare-fun e!501840 () Bool)

(declare-fun call!39814 () Bool)

(assert (=> b!897382 (= e!501840 call!39814)))

(declare-fun d!111035 () Bool)

(declare-fun res!606670 () Bool)

(declare-fun e!501841 () Bool)

(assert (=> d!111035 (=> res!606670 e!501841)))

(assert (=> d!111035 (= res!606670 (bvsge #b00000000000000000000000000000000 (size!25749 (_keys!10144 thiss!1181))))))

(assert (=> d!111035 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10144 thiss!1181) (mask!26071 thiss!1181)) e!501841)))

(declare-fun bm!39811 () Bool)

(assert (=> bm!39811 (= call!39814 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10144 thiss!1181) (mask!26071 thiss!1181)))))

(declare-fun b!897383 () Bool)

(declare-fun e!501842 () Bool)

(assert (=> b!897383 (= e!501842 call!39814)))

(declare-fun b!897384 () Bool)

(assert (=> b!897384 (= e!501841 e!501842)))

(declare-fun c!94774 () Bool)

(assert (=> b!897384 (= c!94774 (validKeyInArray!0 (select (arr!25294 (_keys!10144 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!897385 () Bool)

(assert (=> b!897385 (= e!501842 e!501840)))

(declare-fun lt!405160 () (_ BitVec 64))

(assert (=> b!897385 (= lt!405160 (select (arr!25294 (_keys!10144 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!405162 () Unit!30475)

(assert (=> b!897385 (= lt!405162 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10144 thiss!1181) lt!405160 #b00000000000000000000000000000000))))

(assert (=> b!897385 (arrayContainsKey!0 (_keys!10144 thiss!1181) lt!405160 #b00000000000000000000000000000000)))

(declare-fun lt!405161 () Unit!30475)

(assert (=> b!897385 (= lt!405161 lt!405162)))

(declare-fun res!606669 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52630 (_ BitVec 32)) SeekEntryResult!8897)

(assert (=> b!897385 (= res!606669 (= (seekEntryOrOpen!0 (select (arr!25294 (_keys!10144 thiss!1181)) #b00000000000000000000000000000000) (_keys!10144 thiss!1181) (mask!26071 thiss!1181)) (Found!8897 #b00000000000000000000000000000000)))))

(assert (=> b!897385 (=> (not res!606669) (not e!501840))))

(assert (= (and d!111035 (not res!606670)) b!897384))

(assert (= (and b!897384 c!94774) b!897385))

(assert (= (and b!897384 (not c!94774)) b!897383))

(assert (= (and b!897385 res!606669) b!897382))

(assert (= (or b!897382 b!897383) bm!39811))

(declare-fun m!834243 () Bool)

(assert (=> bm!39811 m!834243))

(assert (=> b!897384 m!834203))

(assert (=> b!897384 m!834203))

(assert (=> b!897384 m!834213))

(assert (=> b!897385 m!834203))

(declare-fun m!834245 () Bool)

(assert (=> b!897385 m!834245))

(declare-fun m!834247 () Bool)

(assert (=> b!897385 m!834247))

(assert (=> b!897385 m!834203))

(declare-fun m!834249 () Bool)

(assert (=> b!897385 m!834249))

(assert (=> b!897248 d!111035))

(declare-fun condMapEmpty!29106 () Bool)

(declare-fun mapDefault!29106 () ValueCell!8673)

(assert (=> mapNonEmpty!29105 (= condMapEmpty!29106 (= mapRest!29105 ((as const (Array (_ BitVec 32) ValueCell!8673)) mapDefault!29106)))))

(declare-fun e!501843 () Bool)

(declare-fun mapRes!29106 () Bool)

(assert (=> mapNonEmpty!29105 (= tp!56003 (and e!501843 mapRes!29106))))

(declare-fun mapIsEmpty!29106 () Bool)

(assert (=> mapIsEmpty!29106 mapRes!29106))

(declare-fun mapNonEmpty!29106 () Bool)

(declare-fun tp!56004 () Bool)

(declare-fun e!501844 () Bool)

(assert (=> mapNonEmpty!29106 (= mapRes!29106 (and tp!56004 e!501844))))

(declare-fun mapValue!29106 () ValueCell!8673)

(declare-fun mapKey!29106 () (_ BitVec 32))

(declare-fun mapRest!29106 () (Array (_ BitVec 32) ValueCell!8673))

(assert (=> mapNonEmpty!29106 (= mapRest!29105 (store mapRest!29106 mapKey!29106 mapValue!29106))))

(declare-fun b!897386 () Bool)

(assert (=> b!897386 (= e!501844 tp_is_empty!18309)))

(declare-fun b!897387 () Bool)

(assert (=> b!897387 (= e!501843 tp_is_empty!18309)))

(assert (= (and mapNonEmpty!29105 condMapEmpty!29106) mapIsEmpty!29106))

(assert (= (and mapNonEmpty!29105 (not condMapEmpty!29106)) mapNonEmpty!29106))

(assert (= (and mapNonEmpty!29106 ((_ is ValueCellFull!8673) mapValue!29106)) b!897386))

(assert (= (and mapNonEmpty!29105 ((_ is ValueCellFull!8673) mapDefault!29106)) b!897387))

(declare-fun m!834251 () Bool)

(assert (=> mapNonEmpty!29106 m!834251))

(check-sat (not b!897359) (not b!897300) tp_is_empty!18309 (not b!897385) (not b!897301) b_and!26291 (not bm!39805) (not b!897304) (not b_next!15981) (not b!897384) (not bm!39808) (not b!897321) (not d!111021) (not d!111023) (not b!897302) (not b!897333) (not d!111015) (not mapNonEmpty!29106) (not b!897287) (not d!111027) (not b!897372) (not bm!39811) (not b!897332) (not d!111029))
(check-sat b_and!26291 (not b_next!15981))
