; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16024 () Bool)

(assert start!16024)

(declare-fun b!158908 () Bool)

(declare-fun b_free!3501 () Bool)

(declare-fun b_next!3501 () Bool)

(assert (=> b!158908 (= b_free!3501 (not b_next!3501))))

(declare-fun tp!13066 () Bool)

(declare-fun b_and!9933 () Bool)

(assert (=> b!158908 (= tp!13066 b_and!9933)))

(declare-fun res!75043 () Bool)

(declare-fun e!104060 () Bool)

(assert (=> start!16024 (=> (not res!75043) (not e!104060))))

(declare-datatypes ((V!4051 0))(
  ( (V!4052 (val!1696 Int)) )
))
(declare-datatypes ((ValueCell!1308 0))(
  ( (ValueCellFull!1308 (v!3557 V!4051)) (EmptyCell!1308) )
))
(declare-datatypes ((array!5680 0))(
  ( (array!5681 (arr!2686 (Array (_ BitVec 32) (_ BitVec 64))) (size!2970 (_ BitVec 32))) )
))
(declare-datatypes ((array!5682 0))(
  ( (array!5683 (arr!2687 (Array (_ BitVec 32) ValueCell!1308)) (size!2971 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1524 0))(
  ( (LongMapFixedSize!1525 (defaultEntry!3204 Int) (mask!7740 (_ BitVec 32)) (extraKeys!2945 (_ BitVec 32)) (zeroValue!3047 V!4051) (minValue!3047 V!4051) (_size!811 (_ BitVec 32)) (_keys!5001 array!5680) (_values!3187 array!5682) (_vacant!811 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1524)

(declare-fun valid!714 (LongMapFixedSize!1524) Bool)

(assert (=> start!16024 (= res!75043 (valid!714 thiss!1248))))

(assert (=> start!16024 e!104060))

(declare-fun e!104059 () Bool)

(assert (=> start!16024 e!104059))

(assert (=> start!16024 true))

(declare-fun mapNonEmpty!5636 () Bool)

(declare-fun mapRes!5636 () Bool)

(declare-fun tp!13067 () Bool)

(declare-fun e!104061 () Bool)

(assert (=> mapNonEmpty!5636 (= mapRes!5636 (and tp!13067 e!104061))))

(declare-fun mapKey!5636 () (_ BitVec 32))

(declare-fun mapRest!5636 () (Array (_ BitVec 32) ValueCell!1308))

(declare-fun mapValue!5636 () ValueCell!1308)

(assert (=> mapNonEmpty!5636 (= (arr!2687 (_values!3187 thiss!1248)) (store mapRest!5636 mapKey!5636 mapValue!5636))))

(declare-fun b!158902 () Bool)

(declare-fun e!104062 () Bool)

(declare-fun e!104058 () Bool)

(assert (=> b!158902 (= e!104062 (and e!104058 mapRes!5636))))

(declare-fun condMapEmpty!5636 () Bool)

(declare-fun mapDefault!5636 () ValueCell!1308)

(assert (=> b!158902 (= condMapEmpty!5636 (= (arr!2687 (_values!3187 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1308)) mapDefault!5636)))))

(declare-fun mapIsEmpty!5636 () Bool)

(assert (=> mapIsEmpty!5636 mapRes!5636))

(declare-fun b!158903 () Bool)

(declare-datatypes ((List!1908 0))(
  ( (Nil!1905) (Cons!1904 (h!2517 (_ BitVec 64)) (t!6718 List!1908)) )
))
(declare-fun arrayNoDuplicates!0 (array!5680 (_ BitVec 32) List!1908) Bool)

(assert (=> b!158903 (= e!104060 (not (arrayNoDuplicates!0 (_keys!5001 thiss!1248) #b00000000000000000000000000000000 Nil!1905)))))

(declare-fun b!158904 () Bool)

(declare-fun res!75045 () Bool)

(assert (=> b!158904 (=> (not res!75045) (not e!104060))))

(assert (=> b!158904 (= res!75045 (and (= (size!2971 (_values!3187 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7740 thiss!1248))) (= (size!2970 (_keys!5001 thiss!1248)) (size!2971 (_values!3187 thiss!1248))) (bvsge (mask!7740 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2945 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2945 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!158905 () Bool)

(declare-fun tp_is_empty!3303 () Bool)

(assert (=> b!158905 (= e!104058 tp_is_empty!3303)))

(declare-fun b!158906 () Bool)

(declare-fun res!75047 () Bool)

(assert (=> b!158906 (=> (not res!75047) (not e!104060))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!158906 (= res!75047 (not (= key!828 (bvneg key!828))))))

(declare-fun b!158907 () Bool)

(assert (=> b!158907 (= e!104061 tp_is_empty!3303)))

(declare-fun array_inv!1703 (array!5680) Bool)

(declare-fun array_inv!1704 (array!5682) Bool)

(assert (=> b!158908 (= e!104059 (and tp!13066 tp_is_empty!3303 (array_inv!1703 (_keys!5001 thiss!1248)) (array_inv!1704 (_values!3187 thiss!1248)) e!104062))))

(declare-fun b!158909 () Bool)

(declare-fun res!75042 () Bool)

(assert (=> b!158909 (=> (not res!75042) (not e!104060))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5680 (_ BitVec 32)) Bool)

(assert (=> b!158909 (= res!75042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5001 thiss!1248) (mask!7740 thiss!1248)))))

(declare-fun b!158910 () Bool)

(declare-fun res!75046 () Bool)

(assert (=> b!158910 (=> (not res!75046) (not e!104060))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!316 0))(
  ( (MissingZero!316 (index!3432 (_ BitVec 32))) (Found!316 (index!3433 (_ BitVec 32))) (Intermediate!316 (undefined!1128 Bool) (index!3434 (_ BitVec 32)) (x!17564 (_ BitVec 32))) (Undefined!316) (MissingVacant!316 (index!3435 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5680 (_ BitVec 32)) SeekEntryResult!316)

(assert (=> b!158910 (= res!75046 ((_ is Undefined!316) (seekEntryOrOpen!0 key!828 (_keys!5001 thiss!1248) (mask!7740 thiss!1248))))))

(declare-fun b!158911 () Bool)

(declare-fun res!75044 () Bool)

(assert (=> b!158911 (=> (not res!75044) (not e!104060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!158911 (= res!75044 (validMask!0 (mask!7740 thiss!1248)))))

(assert (= (and start!16024 res!75043) b!158906))

(assert (= (and b!158906 res!75047) b!158910))

(assert (= (and b!158910 res!75046) b!158911))

(assert (= (and b!158911 res!75044) b!158904))

(assert (= (and b!158904 res!75045) b!158909))

(assert (= (and b!158909 res!75042) b!158903))

(assert (= (and b!158902 condMapEmpty!5636) mapIsEmpty!5636))

(assert (= (and b!158902 (not condMapEmpty!5636)) mapNonEmpty!5636))

(assert (= (and mapNonEmpty!5636 ((_ is ValueCellFull!1308) mapValue!5636)) b!158907))

(assert (= (and b!158902 ((_ is ValueCellFull!1308) mapDefault!5636)) b!158905))

(assert (= b!158908 b!158902))

(assert (= start!16024 b!158908))

(declare-fun m!191403 () Bool)

(assert (=> start!16024 m!191403))

(declare-fun m!191405 () Bool)

(assert (=> b!158909 m!191405))

(declare-fun m!191407 () Bool)

(assert (=> b!158908 m!191407))

(declare-fun m!191409 () Bool)

(assert (=> b!158908 m!191409))

(declare-fun m!191411 () Bool)

(assert (=> b!158910 m!191411))

(declare-fun m!191413 () Bool)

(assert (=> b!158903 m!191413))

(declare-fun m!191415 () Bool)

(assert (=> b!158911 m!191415))

(declare-fun m!191417 () Bool)

(assert (=> mapNonEmpty!5636 m!191417))

(check-sat (not mapNonEmpty!5636) (not b!158911) (not b!158910) (not b!158909) (not b_next!3501) tp_is_empty!3303 b_and!9933 (not b!158908) (not b!158903) (not start!16024))
(check-sat b_and!9933 (not b_next!3501))
(get-model)

(declare-fun d!51155 () Bool)

(assert (=> d!51155 (= (validMask!0 (mask!7740 thiss!1248)) (and (or (= (mask!7740 thiss!1248) #b00000000000000000000000000000111) (= (mask!7740 thiss!1248) #b00000000000000000000000000001111) (= (mask!7740 thiss!1248) #b00000000000000000000000000011111) (= (mask!7740 thiss!1248) #b00000000000000000000000000111111) (= (mask!7740 thiss!1248) #b00000000000000000000000001111111) (= (mask!7740 thiss!1248) #b00000000000000000000000011111111) (= (mask!7740 thiss!1248) #b00000000000000000000000111111111) (= (mask!7740 thiss!1248) #b00000000000000000000001111111111) (= (mask!7740 thiss!1248) #b00000000000000000000011111111111) (= (mask!7740 thiss!1248) #b00000000000000000000111111111111) (= (mask!7740 thiss!1248) #b00000000000000000001111111111111) (= (mask!7740 thiss!1248) #b00000000000000000011111111111111) (= (mask!7740 thiss!1248) #b00000000000000000111111111111111) (= (mask!7740 thiss!1248) #b00000000000000001111111111111111) (= (mask!7740 thiss!1248) #b00000000000000011111111111111111) (= (mask!7740 thiss!1248) #b00000000000000111111111111111111) (= (mask!7740 thiss!1248) #b00000000000001111111111111111111) (= (mask!7740 thiss!1248) #b00000000000011111111111111111111) (= (mask!7740 thiss!1248) #b00000000000111111111111111111111) (= (mask!7740 thiss!1248) #b00000000001111111111111111111111) (= (mask!7740 thiss!1248) #b00000000011111111111111111111111) (= (mask!7740 thiss!1248) #b00000000111111111111111111111111) (= (mask!7740 thiss!1248) #b00000001111111111111111111111111) (= (mask!7740 thiss!1248) #b00000011111111111111111111111111) (= (mask!7740 thiss!1248) #b00000111111111111111111111111111) (= (mask!7740 thiss!1248) #b00001111111111111111111111111111) (= (mask!7740 thiss!1248) #b00011111111111111111111111111111) (= (mask!7740 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!7740 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!158911 d!51155))

(declare-fun d!51157 () Bool)

(assert (=> d!51157 (= (array_inv!1703 (_keys!5001 thiss!1248)) (bvsge (size!2970 (_keys!5001 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!158908 d!51157))

(declare-fun d!51159 () Bool)

(assert (=> d!51159 (= (array_inv!1704 (_values!3187 thiss!1248)) (bvsge (size!2971 (_values!3187 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!158908 d!51159))

(declare-fun d!51161 () Bool)

(declare-fun res!75073 () Bool)

(declare-fun e!104093 () Bool)

(assert (=> d!51161 (=> res!75073 e!104093)))

(assert (=> d!51161 (= res!75073 (bvsge #b00000000000000000000000000000000 (size!2970 (_keys!5001 thiss!1248))))))

(assert (=> d!51161 (= (arrayNoDuplicates!0 (_keys!5001 thiss!1248) #b00000000000000000000000000000000 Nil!1905) e!104093)))

(declare-fun b!158952 () Bool)

(declare-fun e!104090 () Bool)

(declare-fun call!17273 () Bool)

(assert (=> b!158952 (= e!104090 call!17273)))

(declare-fun b!158953 () Bool)

(declare-fun e!104092 () Bool)

(assert (=> b!158953 (= e!104092 e!104090)))

(declare-fun c!29886 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!158953 (= c!29886 (validKeyInArray!0 (select (arr!2686 (_keys!5001 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!158954 () Bool)

(assert (=> b!158954 (= e!104090 call!17273)))

(declare-fun b!158955 () Bool)

(assert (=> b!158955 (= e!104093 e!104092)))

(declare-fun res!75072 () Bool)

(assert (=> b!158955 (=> (not res!75072) (not e!104092))))

(declare-fun e!104091 () Bool)

(assert (=> b!158955 (= res!75072 (not e!104091))))

(declare-fun res!75074 () Bool)

(assert (=> b!158955 (=> (not res!75074) (not e!104091))))

(assert (=> b!158955 (= res!75074 (validKeyInArray!0 (select (arr!2686 (_keys!5001 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!158956 () Bool)

(declare-fun contains!977 (List!1908 (_ BitVec 64)) Bool)

(assert (=> b!158956 (= e!104091 (contains!977 Nil!1905 (select (arr!2686 (_keys!5001 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17270 () Bool)

(assert (=> bm!17270 (= call!17273 (arrayNoDuplicates!0 (_keys!5001 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!29886 (Cons!1904 (select (arr!2686 (_keys!5001 thiss!1248)) #b00000000000000000000000000000000) Nil!1905) Nil!1905)))))

(assert (= (and d!51161 (not res!75073)) b!158955))

(assert (= (and b!158955 res!75074) b!158956))

(assert (= (and b!158955 res!75072) b!158953))

(assert (= (and b!158953 c!29886) b!158952))

(assert (= (and b!158953 (not c!29886)) b!158954))

(assert (= (or b!158952 b!158954) bm!17270))

(declare-fun m!191435 () Bool)

(assert (=> b!158953 m!191435))

(assert (=> b!158953 m!191435))

(declare-fun m!191437 () Bool)

(assert (=> b!158953 m!191437))

(assert (=> b!158955 m!191435))

(assert (=> b!158955 m!191435))

(assert (=> b!158955 m!191437))

(assert (=> b!158956 m!191435))

(assert (=> b!158956 m!191435))

(declare-fun m!191439 () Bool)

(assert (=> b!158956 m!191439))

(assert (=> bm!17270 m!191435))

(declare-fun m!191441 () Bool)

(assert (=> bm!17270 m!191441))

(assert (=> b!158903 d!51161))

(declare-fun b!158965 () Bool)

(declare-fun e!104102 () Bool)

(declare-fun call!17276 () Bool)

(assert (=> b!158965 (= e!104102 call!17276)))

(declare-fun b!158966 () Bool)

(declare-fun e!104100 () Bool)

(assert (=> b!158966 (= e!104102 e!104100)))

(declare-fun lt!81969 () (_ BitVec 64))

(assert (=> b!158966 (= lt!81969 (select (arr!2686 (_keys!5001 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!4990 0))(
  ( (Unit!4991) )
))
(declare-fun lt!81970 () Unit!4990)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!5680 (_ BitVec 64) (_ BitVec 32)) Unit!4990)

(assert (=> b!158966 (= lt!81970 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5001 thiss!1248) lt!81969 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!5680 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!158966 (arrayContainsKey!0 (_keys!5001 thiss!1248) lt!81969 #b00000000000000000000000000000000)))

(declare-fun lt!81971 () Unit!4990)

(assert (=> b!158966 (= lt!81971 lt!81970)))

(declare-fun res!75079 () Bool)

(assert (=> b!158966 (= res!75079 (= (seekEntryOrOpen!0 (select (arr!2686 (_keys!5001 thiss!1248)) #b00000000000000000000000000000000) (_keys!5001 thiss!1248) (mask!7740 thiss!1248)) (Found!316 #b00000000000000000000000000000000)))))

(assert (=> b!158966 (=> (not res!75079) (not e!104100))))

(declare-fun bm!17273 () Bool)

(assert (=> bm!17273 (= call!17276 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5001 thiss!1248) (mask!7740 thiss!1248)))))

(declare-fun d!51163 () Bool)

(declare-fun res!75080 () Bool)

(declare-fun e!104101 () Bool)

(assert (=> d!51163 (=> res!75080 e!104101)))

(assert (=> d!51163 (= res!75080 (bvsge #b00000000000000000000000000000000 (size!2970 (_keys!5001 thiss!1248))))))

(assert (=> d!51163 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5001 thiss!1248) (mask!7740 thiss!1248)) e!104101)))

(declare-fun b!158967 () Bool)

(assert (=> b!158967 (= e!104100 call!17276)))

(declare-fun b!158968 () Bool)

(assert (=> b!158968 (= e!104101 e!104102)))

(declare-fun c!29889 () Bool)

(assert (=> b!158968 (= c!29889 (validKeyInArray!0 (select (arr!2686 (_keys!5001 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!51163 (not res!75080)) b!158968))

(assert (= (and b!158968 c!29889) b!158966))

(assert (= (and b!158968 (not c!29889)) b!158965))

(assert (= (and b!158966 res!75079) b!158967))

(assert (= (or b!158967 b!158965) bm!17273))

(assert (=> b!158966 m!191435))

(declare-fun m!191443 () Bool)

(assert (=> b!158966 m!191443))

(declare-fun m!191445 () Bool)

(assert (=> b!158966 m!191445))

(assert (=> b!158966 m!191435))

(declare-fun m!191447 () Bool)

(assert (=> b!158966 m!191447))

(declare-fun m!191449 () Bool)

(assert (=> bm!17273 m!191449))

(assert (=> b!158968 m!191435))

(assert (=> b!158968 m!191435))

(assert (=> b!158968 m!191437))

(assert (=> b!158909 d!51163))

(declare-fun d!51165 () Bool)

(declare-fun res!75087 () Bool)

(declare-fun e!104105 () Bool)

(assert (=> d!51165 (=> (not res!75087) (not e!104105))))

(declare-fun simpleValid!115 (LongMapFixedSize!1524) Bool)

(assert (=> d!51165 (= res!75087 (simpleValid!115 thiss!1248))))

(assert (=> d!51165 (= (valid!714 thiss!1248) e!104105)))

(declare-fun b!158975 () Bool)

(declare-fun res!75088 () Bool)

(assert (=> b!158975 (=> (not res!75088) (not e!104105))))

(declare-fun arrayCountValidKeys!0 (array!5680 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!158975 (= res!75088 (= (arrayCountValidKeys!0 (_keys!5001 thiss!1248) #b00000000000000000000000000000000 (size!2970 (_keys!5001 thiss!1248))) (_size!811 thiss!1248)))))

(declare-fun b!158976 () Bool)

(declare-fun res!75089 () Bool)

(assert (=> b!158976 (=> (not res!75089) (not e!104105))))

(assert (=> b!158976 (= res!75089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5001 thiss!1248) (mask!7740 thiss!1248)))))

(declare-fun b!158977 () Bool)

(assert (=> b!158977 (= e!104105 (arrayNoDuplicates!0 (_keys!5001 thiss!1248) #b00000000000000000000000000000000 Nil!1905))))

(assert (= (and d!51165 res!75087) b!158975))

(assert (= (and b!158975 res!75088) b!158976))

(assert (= (and b!158976 res!75089) b!158977))

(declare-fun m!191451 () Bool)

(assert (=> d!51165 m!191451))

(declare-fun m!191453 () Bool)

(assert (=> b!158975 m!191453))

(assert (=> b!158976 m!191405))

(assert (=> b!158977 m!191413))

(assert (=> start!16024 d!51165))

(declare-fun b!158990 () Bool)

(declare-fun e!104114 () SeekEntryResult!316)

(declare-fun e!104112 () SeekEntryResult!316)

(assert (=> b!158990 (= e!104114 e!104112)))

(declare-fun lt!81978 () (_ BitVec 64))

(declare-fun lt!81980 () SeekEntryResult!316)

(assert (=> b!158990 (= lt!81978 (select (arr!2686 (_keys!5001 thiss!1248)) (index!3434 lt!81980)))))

(declare-fun c!29897 () Bool)

(assert (=> b!158990 (= c!29897 (= lt!81978 key!828))))

(declare-fun b!158991 () Bool)

(assert (=> b!158991 (= e!104112 (Found!316 (index!3434 lt!81980)))))

(declare-fun b!158992 () Bool)

(declare-fun e!104113 () SeekEntryResult!316)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5680 (_ BitVec 32)) SeekEntryResult!316)

(assert (=> b!158992 (= e!104113 (seekKeyOrZeroReturnVacant!0 (x!17564 lt!81980) (index!3434 lt!81980) (index!3434 lt!81980) key!828 (_keys!5001 thiss!1248) (mask!7740 thiss!1248)))))

(declare-fun d!51167 () Bool)

(declare-fun lt!81979 () SeekEntryResult!316)

(assert (=> d!51167 (and (or ((_ is Undefined!316) lt!81979) (not ((_ is Found!316) lt!81979)) (and (bvsge (index!3433 lt!81979) #b00000000000000000000000000000000) (bvslt (index!3433 lt!81979) (size!2970 (_keys!5001 thiss!1248))))) (or ((_ is Undefined!316) lt!81979) ((_ is Found!316) lt!81979) (not ((_ is MissingZero!316) lt!81979)) (and (bvsge (index!3432 lt!81979) #b00000000000000000000000000000000) (bvslt (index!3432 lt!81979) (size!2970 (_keys!5001 thiss!1248))))) (or ((_ is Undefined!316) lt!81979) ((_ is Found!316) lt!81979) ((_ is MissingZero!316) lt!81979) (not ((_ is MissingVacant!316) lt!81979)) (and (bvsge (index!3435 lt!81979) #b00000000000000000000000000000000) (bvslt (index!3435 lt!81979) (size!2970 (_keys!5001 thiss!1248))))) (or ((_ is Undefined!316) lt!81979) (ite ((_ is Found!316) lt!81979) (= (select (arr!2686 (_keys!5001 thiss!1248)) (index!3433 lt!81979)) key!828) (ite ((_ is MissingZero!316) lt!81979) (= (select (arr!2686 (_keys!5001 thiss!1248)) (index!3432 lt!81979)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!316) lt!81979) (= (select (arr!2686 (_keys!5001 thiss!1248)) (index!3435 lt!81979)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!51167 (= lt!81979 e!104114)))

(declare-fun c!29896 () Bool)

(assert (=> d!51167 (= c!29896 (and ((_ is Intermediate!316) lt!81980) (undefined!1128 lt!81980)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5680 (_ BitVec 32)) SeekEntryResult!316)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!51167 (= lt!81980 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!7740 thiss!1248)) key!828 (_keys!5001 thiss!1248) (mask!7740 thiss!1248)))))

(assert (=> d!51167 (validMask!0 (mask!7740 thiss!1248))))

(assert (=> d!51167 (= (seekEntryOrOpen!0 key!828 (_keys!5001 thiss!1248) (mask!7740 thiss!1248)) lt!81979)))

(declare-fun b!158993 () Bool)

(assert (=> b!158993 (= e!104114 Undefined!316)))

(declare-fun b!158994 () Bool)

(assert (=> b!158994 (= e!104113 (MissingZero!316 (index!3434 lt!81980)))))

(declare-fun b!158995 () Bool)

(declare-fun c!29898 () Bool)

(assert (=> b!158995 (= c!29898 (= lt!81978 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!158995 (= e!104112 e!104113)))

(assert (= (and d!51167 c!29896) b!158993))

(assert (= (and d!51167 (not c!29896)) b!158990))

(assert (= (and b!158990 c!29897) b!158991))

(assert (= (and b!158990 (not c!29897)) b!158995))

(assert (= (and b!158995 c!29898) b!158994))

(assert (= (and b!158995 (not c!29898)) b!158992))

(declare-fun m!191455 () Bool)

(assert (=> b!158990 m!191455))

(declare-fun m!191457 () Bool)

(assert (=> b!158992 m!191457))

(declare-fun m!191459 () Bool)

(assert (=> d!51167 m!191459))

(assert (=> d!51167 m!191415))

(assert (=> d!51167 m!191459))

(declare-fun m!191461 () Bool)

(assert (=> d!51167 m!191461))

(declare-fun m!191463 () Bool)

(assert (=> d!51167 m!191463))

(declare-fun m!191465 () Bool)

(assert (=> d!51167 m!191465))

(declare-fun m!191467 () Bool)

(assert (=> d!51167 m!191467))

(assert (=> b!158910 d!51167))

(declare-fun mapIsEmpty!5642 () Bool)

(declare-fun mapRes!5642 () Bool)

(assert (=> mapIsEmpty!5642 mapRes!5642))

(declare-fun b!159002 () Bool)

(declare-fun e!104120 () Bool)

(assert (=> b!159002 (= e!104120 tp_is_empty!3303)))

(declare-fun mapNonEmpty!5642 () Bool)

(declare-fun tp!13076 () Bool)

(assert (=> mapNonEmpty!5642 (= mapRes!5642 (and tp!13076 e!104120))))

(declare-fun mapValue!5642 () ValueCell!1308)

(declare-fun mapRest!5642 () (Array (_ BitVec 32) ValueCell!1308))

(declare-fun mapKey!5642 () (_ BitVec 32))

(assert (=> mapNonEmpty!5642 (= mapRest!5636 (store mapRest!5642 mapKey!5642 mapValue!5642))))

(declare-fun b!159003 () Bool)

(declare-fun e!104119 () Bool)

(assert (=> b!159003 (= e!104119 tp_is_empty!3303)))

(declare-fun condMapEmpty!5642 () Bool)

(declare-fun mapDefault!5642 () ValueCell!1308)

(assert (=> mapNonEmpty!5636 (= condMapEmpty!5642 (= mapRest!5636 ((as const (Array (_ BitVec 32) ValueCell!1308)) mapDefault!5642)))))

(assert (=> mapNonEmpty!5636 (= tp!13067 (and e!104119 mapRes!5642))))

(assert (= (and mapNonEmpty!5636 condMapEmpty!5642) mapIsEmpty!5642))

(assert (= (and mapNonEmpty!5636 (not condMapEmpty!5642)) mapNonEmpty!5642))

(assert (= (and mapNonEmpty!5642 ((_ is ValueCellFull!1308) mapValue!5642)) b!159002))

(assert (= (and mapNonEmpty!5636 ((_ is ValueCellFull!1308) mapDefault!5642)) b!159003))

(declare-fun m!191469 () Bool)

(assert (=> mapNonEmpty!5642 m!191469))

(check-sat (not d!51165) (not bm!17273) (not b!158955) (not b!158977) (not d!51167) (not b!158953) (not mapNonEmpty!5642) (not b!158966) tp_is_empty!3303 b_and!9933 (not b!158976) (not b!158956) (not b!158968) (not bm!17270) (not b_next!3501) (not b!158975) (not b!158992))
(check-sat b_and!9933 (not b_next!3501))
