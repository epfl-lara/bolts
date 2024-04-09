; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16006 () Bool)

(assert start!16006)

(declare-fun b!158777 () Bool)

(declare-fun b_free!3495 () Bool)

(declare-fun b_next!3495 () Bool)

(assert (=> b!158777 (= b_free!3495 (not b_next!3495))))

(declare-fun tp!13045 () Bool)

(declare-fun b_and!9927 () Bool)

(assert (=> b!158777 (= tp!13045 b_and!9927)))

(declare-fun res!74980 () Bool)

(declare-fun e!103981 () Bool)

(assert (=> start!16006 (=> (not res!74980) (not e!103981))))

(declare-datatypes ((V!4043 0))(
  ( (V!4044 (val!1693 Int)) )
))
(declare-datatypes ((ValueCell!1305 0))(
  ( (ValueCellFull!1305 (v!3554 V!4043)) (EmptyCell!1305) )
))
(declare-datatypes ((array!5666 0))(
  ( (array!5667 (arr!2680 (Array (_ BitVec 32) (_ BitVec 64))) (size!2964 (_ BitVec 32))) )
))
(declare-datatypes ((array!5668 0))(
  ( (array!5669 (arr!2681 (Array (_ BitVec 32) ValueCell!1305)) (size!2965 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1518 0))(
  ( (LongMapFixedSize!1519 (defaultEntry!3201 Int) (mask!7732 (_ BitVec 32)) (extraKeys!2942 (_ BitVec 32)) (zeroValue!3044 V!4043) (minValue!3044 V!4043) (_size!808 (_ BitVec 32)) (_keys!4996 array!5666) (_values!3184 array!5668) (_vacant!808 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1518)

(declare-fun valid!711 (LongMapFixedSize!1518) Bool)

(assert (=> start!16006 (= res!74980 (valid!711 thiss!1248))))

(assert (=> start!16006 e!103981))

(declare-fun e!103980 () Bool)

(assert (=> start!16006 e!103980))

(assert (=> start!16006 true))

(declare-fun mapNonEmpty!5624 () Bool)

(declare-fun mapRes!5624 () Bool)

(declare-fun tp!13046 () Bool)

(declare-fun e!103977 () Bool)

(assert (=> mapNonEmpty!5624 (= mapRes!5624 (and tp!13046 e!103977))))

(declare-fun mapKey!5624 () (_ BitVec 32))

(declare-fun mapValue!5624 () ValueCell!1305)

(declare-fun mapRest!5624 () (Array (_ BitVec 32) ValueCell!1305))

(assert (=> mapNonEmpty!5624 (= (arr!2681 (_values!3184 thiss!1248)) (store mapRest!5624 mapKey!5624 mapValue!5624))))

(declare-fun b!158769 () Bool)

(declare-fun res!74978 () Bool)

(assert (=> b!158769 (=> (not res!74978) (not e!103981))))

(declare-fun key!828 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!313 0))(
  ( (MissingZero!313 (index!3420 (_ BitVec 32))) (Found!313 (index!3421 (_ BitVec 32))) (Intermediate!313 (undefined!1125 Bool) (index!3422 (_ BitVec 32)) (x!17545 (_ BitVec 32))) (Undefined!313) (MissingVacant!313 (index!3423 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5666 (_ BitVec 32)) SeekEntryResult!313)

(assert (=> b!158769 (= res!74978 ((_ is Undefined!313) (seekEntryOrOpen!0 key!828 (_keys!4996 thiss!1248) (mask!7732 thiss!1248))))))

(declare-fun b!158770 () Bool)

(declare-fun tp_is_empty!3297 () Bool)

(assert (=> b!158770 (= e!103977 tp_is_empty!3297)))

(declare-fun b!158771 () Bool)

(declare-fun res!74981 () Bool)

(assert (=> b!158771 (=> (not res!74981) (not e!103981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!158771 (= res!74981 (validMask!0 (mask!7732 thiss!1248)))))

(declare-fun b!158772 () Bool)

(declare-fun e!103982 () Bool)

(assert (=> b!158772 (= e!103982 tp_is_empty!3297)))

(declare-fun mapIsEmpty!5624 () Bool)

(assert (=> mapIsEmpty!5624 mapRes!5624))

(declare-fun b!158773 () Bool)

(declare-fun res!74977 () Bool)

(assert (=> b!158773 (=> (not res!74977) (not e!103981))))

(assert (=> b!158773 (= res!74977 (and (= (size!2965 (_values!3184 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7732 thiss!1248))) (= (size!2964 (_keys!4996 thiss!1248)) (size!2965 (_values!3184 thiss!1248))) (bvsge (mask!7732 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2942 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2942 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!158774 () Bool)

(declare-fun res!74979 () Bool)

(assert (=> b!158774 (=> (not res!74979) (not e!103981))))

(assert (=> b!158774 (= res!74979 (not (= key!828 (bvneg key!828))))))

(declare-fun b!158775 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5666 (_ BitVec 32)) Bool)

(assert (=> b!158775 (= e!103981 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4996 thiss!1248) (mask!7732 thiss!1248))))))

(declare-fun b!158776 () Bool)

(declare-fun e!103979 () Bool)

(assert (=> b!158776 (= e!103979 (and e!103982 mapRes!5624))))

(declare-fun condMapEmpty!5624 () Bool)

(declare-fun mapDefault!5624 () ValueCell!1305)

(assert (=> b!158776 (= condMapEmpty!5624 (= (arr!2681 (_values!3184 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1305)) mapDefault!5624)))))

(declare-fun array_inv!1697 (array!5666) Bool)

(declare-fun array_inv!1698 (array!5668) Bool)

(assert (=> b!158777 (= e!103980 (and tp!13045 tp_is_empty!3297 (array_inv!1697 (_keys!4996 thiss!1248)) (array_inv!1698 (_values!3184 thiss!1248)) e!103979))))

(assert (= (and start!16006 res!74980) b!158774))

(assert (= (and b!158774 res!74979) b!158769))

(assert (= (and b!158769 res!74978) b!158771))

(assert (= (and b!158771 res!74981) b!158773))

(assert (= (and b!158773 res!74977) b!158775))

(assert (= (and b!158776 condMapEmpty!5624) mapIsEmpty!5624))

(assert (= (and b!158776 (not condMapEmpty!5624)) mapNonEmpty!5624))

(assert (= (and mapNonEmpty!5624 ((_ is ValueCellFull!1305) mapValue!5624)) b!158770))

(assert (= (and b!158776 ((_ is ValueCellFull!1305) mapDefault!5624)) b!158772))

(assert (= b!158777 b!158776))

(assert (= start!16006 b!158777))

(declare-fun m!191325 () Bool)

(assert (=> start!16006 m!191325))

(declare-fun m!191327 () Bool)

(assert (=> b!158771 m!191327))

(declare-fun m!191329 () Bool)

(assert (=> b!158769 m!191329))

(declare-fun m!191331 () Bool)

(assert (=> b!158777 m!191331))

(declare-fun m!191333 () Bool)

(assert (=> b!158777 m!191333))

(declare-fun m!191335 () Bool)

(assert (=> b!158775 m!191335))

(declare-fun m!191337 () Bool)

(assert (=> mapNonEmpty!5624 m!191337))

(check-sat (not mapNonEmpty!5624) (not b!158777) (not b!158771) (not b!158775) tp_is_empty!3297 b_and!9927 (not b!158769) (not start!16006) (not b_next!3495))
(check-sat b_and!9927 (not b_next!3495))
(get-model)

(declare-fun b!158817 () Bool)

(declare-fun e!104009 () SeekEntryResult!313)

(declare-fun lt!81953 () SeekEntryResult!313)

(assert (=> b!158817 (= e!104009 (Found!313 (index!3422 lt!81953)))))

(declare-fun e!104008 () SeekEntryResult!313)

(declare-fun b!158818 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5666 (_ BitVec 32)) SeekEntryResult!313)

(assert (=> b!158818 (= e!104008 (seekKeyOrZeroReturnVacant!0 (x!17545 lt!81953) (index!3422 lt!81953) (index!3422 lt!81953) key!828 (_keys!4996 thiss!1248) (mask!7732 thiss!1248)))))

(declare-fun b!158820 () Bool)

(declare-fun e!104007 () SeekEntryResult!313)

(assert (=> b!158820 (= e!104007 e!104009)))

(declare-fun lt!81952 () (_ BitVec 64))

(assert (=> b!158820 (= lt!81952 (select (arr!2680 (_keys!4996 thiss!1248)) (index!3422 lt!81953)))))

(declare-fun c!29879 () Bool)

(assert (=> b!158820 (= c!29879 (= lt!81952 key!828))))

(declare-fun b!158821 () Bool)

(declare-fun c!29878 () Bool)

(assert (=> b!158821 (= c!29878 (= lt!81952 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!158821 (= e!104009 e!104008)))

(declare-fun b!158822 () Bool)

(assert (=> b!158822 (= e!104008 (MissingZero!313 (index!3422 lt!81953)))))

(declare-fun d!51141 () Bool)

(declare-fun lt!81951 () SeekEntryResult!313)

(assert (=> d!51141 (and (or ((_ is Undefined!313) lt!81951) (not ((_ is Found!313) lt!81951)) (and (bvsge (index!3421 lt!81951) #b00000000000000000000000000000000) (bvslt (index!3421 lt!81951) (size!2964 (_keys!4996 thiss!1248))))) (or ((_ is Undefined!313) lt!81951) ((_ is Found!313) lt!81951) (not ((_ is MissingZero!313) lt!81951)) (and (bvsge (index!3420 lt!81951) #b00000000000000000000000000000000) (bvslt (index!3420 lt!81951) (size!2964 (_keys!4996 thiss!1248))))) (or ((_ is Undefined!313) lt!81951) ((_ is Found!313) lt!81951) ((_ is MissingZero!313) lt!81951) (not ((_ is MissingVacant!313) lt!81951)) (and (bvsge (index!3423 lt!81951) #b00000000000000000000000000000000) (bvslt (index!3423 lt!81951) (size!2964 (_keys!4996 thiss!1248))))) (or ((_ is Undefined!313) lt!81951) (ite ((_ is Found!313) lt!81951) (= (select (arr!2680 (_keys!4996 thiss!1248)) (index!3421 lt!81951)) key!828) (ite ((_ is MissingZero!313) lt!81951) (= (select (arr!2680 (_keys!4996 thiss!1248)) (index!3420 lt!81951)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!313) lt!81951) (= (select (arr!2680 (_keys!4996 thiss!1248)) (index!3423 lt!81951)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!51141 (= lt!81951 e!104007)))

(declare-fun c!29880 () Bool)

(assert (=> d!51141 (= c!29880 (and ((_ is Intermediate!313) lt!81953) (undefined!1125 lt!81953)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5666 (_ BitVec 32)) SeekEntryResult!313)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!51141 (= lt!81953 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!7732 thiss!1248)) key!828 (_keys!4996 thiss!1248) (mask!7732 thiss!1248)))))

(assert (=> d!51141 (validMask!0 (mask!7732 thiss!1248))))

(assert (=> d!51141 (= (seekEntryOrOpen!0 key!828 (_keys!4996 thiss!1248) (mask!7732 thiss!1248)) lt!81951)))

(declare-fun b!158819 () Bool)

(assert (=> b!158819 (= e!104007 Undefined!313)))

(assert (= (and d!51141 c!29880) b!158819))

(assert (= (and d!51141 (not c!29880)) b!158820))

(assert (= (and b!158820 c!29879) b!158817))

(assert (= (and b!158820 (not c!29879)) b!158821))

(assert (= (and b!158821 c!29878) b!158822))

(assert (= (and b!158821 (not c!29878)) b!158818))

(declare-fun m!191353 () Bool)

(assert (=> b!158818 m!191353))

(declare-fun m!191355 () Bool)

(assert (=> b!158820 m!191355))

(declare-fun m!191357 () Bool)

(assert (=> d!51141 m!191357))

(declare-fun m!191359 () Bool)

(assert (=> d!51141 m!191359))

(assert (=> d!51141 m!191327))

(assert (=> d!51141 m!191359))

(declare-fun m!191361 () Bool)

(assert (=> d!51141 m!191361))

(declare-fun m!191363 () Bool)

(assert (=> d!51141 m!191363))

(declare-fun m!191365 () Bool)

(assert (=> d!51141 m!191365))

(assert (=> b!158769 d!51141))

(declare-fun d!51143 () Bool)

(declare-fun res!75001 () Bool)

(declare-fun e!104016 () Bool)

(assert (=> d!51143 (=> res!75001 e!104016)))

(assert (=> d!51143 (= res!75001 (bvsge #b00000000000000000000000000000000 (size!2964 (_keys!4996 thiss!1248))))))

(assert (=> d!51143 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4996 thiss!1248) (mask!7732 thiss!1248)) e!104016)))

(declare-fun b!158831 () Bool)

(declare-fun e!104017 () Bool)

(declare-fun call!17270 () Bool)

(assert (=> b!158831 (= e!104017 call!17270)))

(declare-fun b!158832 () Bool)

(assert (=> b!158832 (= e!104016 e!104017)))

(declare-fun c!29883 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!158832 (= c!29883 (validKeyInArray!0 (select (arr!2680 (_keys!4996 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!158833 () Bool)

(declare-fun e!104018 () Bool)

(assert (=> b!158833 (= e!104017 e!104018)))

(declare-fun lt!81960 () (_ BitVec 64))

(assert (=> b!158833 (= lt!81960 (select (arr!2680 (_keys!4996 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!4988 0))(
  ( (Unit!4989) )
))
(declare-fun lt!81962 () Unit!4988)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!5666 (_ BitVec 64) (_ BitVec 32)) Unit!4988)

(assert (=> b!158833 (= lt!81962 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4996 thiss!1248) lt!81960 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!5666 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!158833 (arrayContainsKey!0 (_keys!4996 thiss!1248) lt!81960 #b00000000000000000000000000000000)))

(declare-fun lt!81961 () Unit!4988)

(assert (=> b!158833 (= lt!81961 lt!81962)))

(declare-fun res!75002 () Bool)

(assert (=> b!158833 (= res!75002 (= (seekEntryOrOpen!0 (select (arr!2680 (_keys!4996 thiss!1248)) #b00000000000000000000000000000000) (_keys!4996 thiss!1248) (mask!7732 thiss!1248)) (Found!313 #b00000000000000000000000000000000)))))

(assert (=> b!158833 (=> (not res!75002) (not e!104018))))

(declare-fun bm!17267 () Bool)

(assert (=> bm!17267 (= call!17270 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4996 thiss!1248) (mask!7732 thiss!1248)))))

(declare-fun b!158834 () Bool)

(assert (=> b!158834 (= e!104018 call!17270)))

(assert (= (and d!51143 (not res!75001)) b!158832))

(assert (= (and b!158832 c!29883) b!158833))

(assert (= (and b!158832 (not c!29883)) b!158831))

(assert (= (and b!158833 res!75002) b!158834))

(assert (= (or b!158834 b!158831) bm!17267))

(declare-fun m!191367 () Bool)

(assert (=> b!158832 m!191367))

(assert (=> b!158832 m!191367))

(declare-fun m!191369 () Bool)

(assert (=> b!158832 m!191369))

(assert (=> b!158833 m!191367))

(declare-fun m!191371 () Bool)

(assert (=> b!158833 m!191371))

(declare-fun m!191373 () Bool)

(assert (=> b!158833 m!191373))

(assert (=> b!158833 m!191367))

(declare-fun m!191375 () Bool)

(assert (=> b!158833 m!191375))

(declare-fun m!191377 () Bool)

(assert (=> bm!17267 m!191377))

(assert (=> b!158775 d!51143))

(declare-fun d!51145 () Bool)

(assert (=> d!51145 (= (validMask!0 (mask!7732 thiss!1248)) (and (or (= (mask!7732 thiss!1248) #b00000000000000000000000000000111) (= (mask!7732 thiss!1248) #b00000000000000000000000000001111) (= (mask!7732 thiss!1248) #b00000000000000000000000000011111) (= (mask!7732 thiss!1248) #b00000000000000000000000000111111) (= (mask!7732 thiss!1248) #b00000000000000000000000001111111) (= (mask!7732 thiss!1248) #b00000000000000000000000011111111) (= (mask!7732 thiss!1248) #b00000000000000000000000111111111) (= (mask!7732 thiss!1248) #b00000000000000000000001111111111) (= (mask!7732 thiss!1248) #b00000000000000000000011111111111) (= (mask!7732 thiss!1248) #b00000000000000000000111111111111) (= (mask!7732 thiss!1248) #b00000000000000000001111111111111) (= (mask!7732 thiss!1248) #b00000000000000000011111111111111) (= (mask!7732 thiss!1248) #b00000000000000000111111111111111) (= (mask!7732 thiss!1248) #b00000000000000001111111111111111) (= (mask!7732 thiss!1248) #b00000000000000011111111111111111) (= (mask!7732 thiss!1248) #b00000000000000111111111111111111) (= (mask!7732 thiss!1248) #b00000000000001111111111111111111) (= (mask!7732 thiss!1248) #b00000000000011111111111111111111) (= (mask!7732 thiss!1248) #b00000000000111111111111111111111) (= (mask!7732 thiss!1248) #b00000000001111111111111111111111) (= (mask!7732 thiss!1248) #b00000000011111111111111111111111) (= (mask!7732 thiss!1248) #b00000000111111111111111111111111) (= (mask!7732 thiss!1248) #b00000001111111111111111111111111) (= (mask!7732 thiss!1248) #b00000011111111111111111111111111) (= (mask!7732 thiss!1248) #b00000111111111111111111111111111) (= (mask!7732 thiss!1248) #b00001111111111111111111111111111) (= (mask!7732 thiss!1248) #b00011111111111111111111111111111) (= (mask!7732 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!7732 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!158771 d!51145))

(declare-fun d!51147 () Bool)

(declare-fun res!75009 () Bool)

(declare-fun e!104021 () Bool)

(assert (=> d!51147 (=> (not res!75009) (not e!104021))))

(declare-fun simpleValid!114 (LongMapFixedSize!1518) Bool)

(assert (=> d!51147 (= res!75009 (simpleValid!114 thiss!1248))))

(assert (=> d!51147 (= (valid!711 thiss!1248) e!104021)))

(declare-fun b!158841 () Bool)

(declare-fun res!75010 () Bool)

(assert (=> b!158841 (=> (not res!75010) (not e!104021))))

(declare-fun arrayCountValidKeys!0 (array!5666 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!158841 (= res!75010 (= (arrayCountValidKeys!0 (_keys!4996 thiss!1248) #b00000000000000000000000000000000 (size!2964 (_keys!4996 thiss!1248))) (_size!808 thiss!1248)))))

(declare-fun b!158842 () Bool)

(declare-fun res!75011 () Bool)

(assert (=> b!158842 (=> (not res!75011) (not e!104021))))

(assert (=> b!158842 (= res!75011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4996 thiss!1248) (mask!7732 thiss!1248)))))

(declare-fun b!158843 () Bool)

(declare-datatypes ((List!1906 0))(
  ( (Nil!1903) (Cons!1902 (h!2515 (_ BitVec 64)) (t!6716 List!1906)) )
))
(declare-fun arrayNoDuplicates!0 (array!5666 (_ BitVec 32) List!1906) Bool)

(assert (=> b!158843 (= e!104021 (arrayNoDuplicates!0 (_keys!4996 thiss!1248) #b00000000000000000000000000000000 Nil!1903))))

(assert (= (and d!51147 res!75009) b!158841))

(assert (= (and b!158841 res!75010) b!158842))

(assert (= (and b!158842 res!75011) b!158843))

(declare-fun m!191379 () Bool)

(assert (=> d!51147 m!191379))

(declare-fun m!191381 () Bool)

(assert (=> b!158841 m!191381))

(assert (=> b!158842 m!191335))

(declare-fun m!191383 () Bool)

(assert (=> b!158843 m!191383))

(assert (=> start!16006 d!51147))

(declare-fun d!51149 () Bool)

(assert (=> d!51149 (= (array_inv!1697 (_keys!4996 thiss!1248)) (bvsge (size!2964 (_keys!4996 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!158777 d!51149))

(declare-fun d!51151 () Bool)

(assert (=> d!51151 (= (array_inv!1698 (_values!3184 thiss!1248)) (bvsge (size!2965 (_values!3184 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!158777 d!51151))

(declare-fun mapIsEmpty!5630 () Bool)

(declare-fun mapRes!5630 () Bool)

(assert (=> mapIsEmpty!5630 mapRes!5630))

(declare-fun mapNonEmpty!5630 () Bool)

(declare-fun tp!13055 () Bool)

(declare-fun e!104026 () Bool)

(assert (=> mapNonEmpty!5630 (= mapRes!5630 (and tp!13055 e!104026))))

(declare-fun mapKey!5630 () (_ BitVec 32))

(declare-fun mapRest!5630 () (Array (_ BitVec 32) ValueCell!1305))

(declare-fun mapValue!5630 () ValueCell!1305)

(assert (=> mapNonEmpty!5630 (= mapRest!5624 (store mapRest!5630 mapKey!5630 mapValue!5630))))

(declare-fun b!158850 () Bool)

(assert (=> b!158850 (= e!104026 tp_is_empty!3297)))

(declare-fun condMapEmpty!5630 () Bool)

(declare-fun mapDefault!5630 () ValueCell!1305)

(assert (=> mapNonEmpty!5624 (= condMapEmpty!5630 (= mapRest!5624 ((as const (Array (_ BitVec 32) ValueCell!1305)) mapDefault!5630)))))

(declare-fun e!104027 () Bool)

(assert (=> mapNonEmpty!5624 (= tp!13046 (and e!104027 mapRes!5630))))

(declare-fun b!158851 () Bool)

(assert (=> b!158851 (= e!104027 tp_is_empty!3297)))

(assert (= (and mapNonEmpty!5624 condMapEmpty!5630) mapIsEmpty!5630))

(assert (= (and mapNonEmpty!5624 (not condMapEmpty!5630)) mapNonEmpty!5630))

(assert (= (and mapNonEmpty!5630 ((_ is ValueCellFull!1305) mapValue!5630)) b!158850))

(assert (= (and mapNonEmpty!5624 ((_ is ValueCellFull!1305) mapDefault!5630)) b!158851))

(declare-fun m!191385 () Bool)

(assert (=> mapNonEmpty!5630 m!191385))

(check-sat (not mapNonEmpty!5630) (not d!51141) (not b!158842) (not b!158818) (not b_next!3495) (not b!158832) (not b!158833) (not b!158841) (not b!158843) tp_is_empty!3297 b_and!9927 (not bm!17267) (not d!51147))
(check-sat b_and!9927 (not b_next!3495))
