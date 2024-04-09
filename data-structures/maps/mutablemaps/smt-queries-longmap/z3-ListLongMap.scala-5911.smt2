; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76584 () Bool)

(assert start!76584)

(declare-fun b!896854 () Bool)

(declare-fun b_free!15969 () Bool)

(declare-fun b_next!15969 () Bool)

(assert (=> b!896854 (= b_free!15969 (not b_next!15969))))

(declare-fun tp!55950 () Bool)

(declare-fun b_and!26279 () Bool)

(assert (=> b!896854 (= tp!55950 b_and!26279)))

(declare-fun b!896852 () Bool)

(declare-fun e!501446 () Bool)

(declare-fun e!501452 () Bool)

(declare-fun mapRes!29074 () Bool)

(assert (=> b!896852 (= e!501446 (and e!501452 mapRes!29074))))

(declare-fun condMapEmpty!29074 () Bool)

(declare-datatypes ((array!52602 0))(
  ( (array!52603 (arr!25282 (Array (_ BitVec 32) (_ BitVec 64))) (size!25736 (_ BitVec 32))) )
))
(declare-datatypes ((V!29361 0))(
  ( (V!29362 (val!9199 Int)) )
))
(declare-datatypes ((ValueCell!8667 0))(
  ( (ValueCellFull!8667 (v!11686 V!29361)) (EmptyCell!8667) )
))
(declare-datatypes ((array!52604 0))(
  ( (array!52605 (arr!25283 (Array (_ BitVec 32) ValueCell!8667)) (size!25737 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4350 0))(
  ( (LongMapFixedSize!4351 (defaultEntry!5387 Int) (mask!26048 (_ BitVec 32)) (extraKeys!5093 (_ BitVec 32)) (zeroValue!5197 V!29361) (minValue!5197 V!29361) (_size!2230 (_ BitVec 32)) (_keys!10130 array!52602) (_values!5384 array!52604) (_vacant!2230 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4350)

(declare-fun mapDefault!29074 () ValueCell!8667)

(assert (=> b!896852 (= condMapEmpty!29074 (= (arr!25283 (_values!5384 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8667)) mapDefault!29074)))))

(declare-fun b!896853 () Bool)

(declare-fun res!606425 () Bool)

(declare-fun e!501451 () Bool)

(assert (=> b!896853 (=> (not res!606425) (not e!501451))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!896853 (= res!606425 (not (= key!785 (bvneg key!785))))))

(declare-fun res!606427 () Bool)

(assert (=> start!76584 (=> (not res!606427) (not e!501451))))

(declare-fun valid!1663 (LongMapFixedSize!4350) Bool)

(assert (=> start!76584 (= res!606427 (valid!1663 thiss!1181))))

(assert (=> start!76584 e!501451))

(declare-fun e!501444 () Bool)

(assert (=> start!76584 e!501444))

(assert (=> start!76584 true))

(declare-fun mapIsEmpty!29074 () Bool)

(assert (=> mapIsEmpty!29074 mapRes!29074))

(declare-fun tp_is_empty!18297 () Bool)

(declare-fun array_inv!19818 (array!52602) Bool)

(declare-fun array_inv!19819 (array!52604) Bool)

(assert (=> b!896854 (= e!501444 (and tp!55950 tp_is_empty!18297 (array_inv!19818 (_keys!10130 thiss!1181)) (array_inv!19819 (_values!5384 thiss!1181)) e!501446))))

(declare-fun b!896855 () Bool)

(declare-fun e!501447 () Bool)

(declare-datatypes ((SeekEntryResult!8892 0))(
  ( (MissingZero!8892 (index!37938 (_ BitVec 32))) (Found!8892 (index!37939 (_ BitVec 32))) (Intermediate!8892 (undefined!9704 Bool) (index!37940 (_ BitVec 32)) (x!76384 (_ BitVec 32))) (Undefined!8892) (MissingVacant!8892 (index!37941 (_ BitVec 32))) )
))
(declare-fun lt!404968 () SeekEntryResult!8892)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!896855 (= e!501447 (inRange!0 (index!37939 lt!404968) (mask!26048 thiss!1181)))))

(declare-fun b!896856 () Bool)

(assert (=> b!896856 (= e!501452 tp_is_empty!18297)))

(declare-fun b!896857 () Bool)

(declare-fun e!501448 () Bool)

(assert (=> b!896857 (= e!501448 tp_is_empty!18297)))

(declare-fun mapNonEmpty!29074 () Bool)

(declare-fun tp!55951 () Bool)

(assert (=> mapNonEmpty!29074 (= mapRes!29074 (and tp!55951 e!501448))))

(declare-fun mapRest!29074 () (Array (_ BitVec 32) ValueCell!8667))

(declare-fun mapKey!29074 () (_ BitVec 32))

(declare-fun mapValue!29074 () ValueCell!8667)

(assert (=> mapNonEmpty!29074 (= (arr!25283 (_values!5384 thiss!1181)) (store mapRest!29074 mapKey!29074 mapValue!29074))))

(declare-fun b!896858 () Bool)

(declare-fun e!501450 () Bool)

(declare-fun e!501449 () Bool)

(assert (=> b!896858 (= e!501450 e!501449)))

(declare-fun res!606424 () Bool)

(assert (=> b!896858 (=> res!606424 e!501449)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!896858 (= res!606424 (not (validMask!0 (mask!26048 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52602 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!896858 (arrayContainsKey!0 (_keys!10130 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30465 0))(
  ( (Unit!30466) )
))
(declare-fun lt!404969 () Unit!30465)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52602 (_ BitVec 64) (_ BitVec 32)) Unit!30465)

(assert (=> b!896858 (= lt!404969 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10130 thiss!1181) key!785 (index!37939 lt!404968)))))

(declare-fun b!896859 () Bool)

(assert (=> b!896859 (= e!501451 (not e!501450))))

(declare-fun res!606426 () Bool)

(assert (=> b!896859 (=> res!606426 e!501450)))

(get-info :version)

(assert (=> b!896859 (= res!606426 (not ((_ is Found!8892) lt!404968)))))

(assert (=> b!896859 e!501447))

(declare-fun res!606423 () Bool)

(assert (=> b!896859 (=> res!606423 e!501447)))

(assert (=> b!896859 (= res!606423 (not ((_ is Found!8892) lt!404968)))))

(declare-fun lt!404970 () Unit!30465)

(declare-fun lemmaSeekEntryGivesInRangeIndex!81 (array!52602 array!52604 (_ BitVec 32) (_ BitVec 32) V!29361 V!29361 (_ BitVec 64)) Unit!30465)

(assert (=> b!896859 (= lt!404970 (lemmaSeekEntryGivesInRangeIndex!81 (_keys!10130 thiss!1181) (_values!5384 thiss!1181) (mask!26048 thiss!1181) (extraKeys!5093 thiss!1181) (zeroValue!5197 thiss!1181) (minValue!5197 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52602 (_ BitVec 32)) SeekEntryResult!8892)

(assert (=> b!896859 (= lt!404968 (seekEntry!0 key!785 (_keys!10130 thiss!1181) (mask!26048 thiss!1181)))))

(declare-fun b!896860 () Bool)

(assert (=> b!896860 (= e!501449 (or (not (= (size!25737 (_values!5384 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26048 thiss!1181)))) (not (= (size!25736 (_keys!10130 thiss!1181)) (size!25737 (_values!5384 thiss!1181)))) (bvsge (mask!26048 thiss!1181) #b00000000000000000000000000000000)))))

(assert (= (and start!76584 res!606427) b!896853))

(assert (= (and b!896853 res!606425) b!896859))

(assert (= (and b!896859 (not res!606423)) b!896855))

(assert (= (and b!896859 (not res!606426)) b!896858))

(assert (= (and b!896858 (not res!606424)) b!896860))

(assert (= (and b!896852 condMapEmpty!29074) mapIsEmpty!29074))

(assert (= (and b!896852 (not condMapEmpty!29074)) mapNonEmpty!29074))

(assert (= (and mapNonEmpty!29074 ((_ is ValueCellFull!8667) mapValue!29074)) b!896857))

(assert (= (and b!896852 ((_ is ValueCellFull!8667) mapDefault!29074)) b!896856))

(assert (= b!896854 b!896852))

(assert (= start!76584 b!896854))

(declare-fun m!833919 () Bool)

(assert (=> b!896859 m!833919))

(declare-fun m!833921 () Bool)

(assert (=> b!896859 m!833921))

(declare-fun m!833923 () Bool)

(assert (=> b!896854 m!833923))

(declare-fun m!833925 () Bool)

(assert (=> b!896854 m!833925))

(declare-fun m!833927 () Bool)

(assert (=> mapNonEmpty!29074 m!833927))

(declare-fun m!833929 () Bool)

(assert (=> b!896855 m!833929))

(declare-fun m!833931 () Bool)

(assert (=> start!76584 m!833931))

(declare-fun m!833933 () Bool)

(assert (=> b!896858 m!833933))

(declare-fun m!833935 () Bool)

(assert (=> b!896858 m!833935))

(declare-fun m!833937 () Bool)

(assert (=> b!896858 m!833937))

(check-sat b_and!26279 (not start!76584) (not b!896858) (not b!896859) (not b!896854) (not b_next!15969) (not mapNonEmpty!29074) (not b!896855) tp_is_empty!18297)
(check-sat b_and!26279 (not b_next!15969))
(get-model)

(declare-fun d!110935 () Bool)

(assert (=> d!110935 (= (inRange!0 (index!37939 lt!404968) (mask!26048 thiss!1181)) (and (bvsge (index!37939 lt!404968) #b00000000000000000000000000000000) (bvslt (index!37939 lt!404968) (bvadd (mask!26048 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!896855 d!110935))

(declare-fun d!110937 () Bool)

(declare-fun e!501482 () Bool)

(assert (=> d!110937 e!501482))

(declare-fun res!606445 () Bool)

(assert (=> d!110937 (=> res!606445 e!501482)))

(declare-fun lt!404985 () SeekEntryResult!8892)

(assert (=> d!110937 (= res!606445 (not ((_ is Found!8892) lt!404985)))))

(assert (=> d!110937 (= lt!404985 (seekEntry!0 key!785 (_keys!10130 thiss!1181) (mask!26048 thiss!1181)))))

(declare-fun lt!404984 () Unit!30465)

(declare-fun choose!1489 (array!52602 array!52604 (_ BitVec 32) (_ BitVec 32) V!29361 V!29361 (_ BitVec 64)) Unit!30465)

(assert (=> d!110937 (= lt!404984 (choose!1489 (_keys!10130 thiss!1181) (_values!5384 thiss!1181) (mask!26048 thiss!1181) (extraKeys!5093 thiss!1181) (zeroValue!5197 thiss!1181) (minValue!5197 thiss!1181) key!785))))

(assert (=> d!110937 (validMask!0 (mask!26048 thiss!1181))))

(assert (=> d!110937 (= (lemmaSeekEntryGivesInRangeIndex!81 (_keys!10130 thiss!1181) (_values!5384 thiss!1181) (mask!26048 thiss!1181) (extraKeys!5093 thiss!1181) (zeroValue!5197 thiss!1181) (minValue!5197 thiss!1181) key!785) lt!404984)))

(declare-fun b!896890 () Bool)

(assert (=> b!896890 (= e!501482 (inRange!0 (index!37939 lt!404985) (mask!26048 thiss!1181)))))

(assert (= (and d!110937 (not res!606445)) b!896890))

(assert (=> d!110937 m!833921))

(declare-fun m!833959 () Bool)

(assert (=> d!110937 m!833959))

(assert (=> d!110937 m!833933))

(declare-fun m!833961 () Bool)

(assert (=> b!896890 m!833961))

(assert (=> b!896859 d!110937))

(declare-fun b!896903 () Bool)

(declare-fun e!501490 () SeekEntryResult!8892)

(assert (=> b!896903 (= e!501490 Undefined!8892)))

(declare-fun b!896905 () Bool)

(declare-fun e!501491 () SeekEntryResult!8892)

(declare-fun lt!404994 () SeekEntryResult!8892)

(assert (=> b!896905 (= e!501491 (Found!8892 (index!37940 lt!404994)))))

(declare-fun b!896906 () Bool)

(assert (=> b!896906 (= e!501490 e!501491)))

(declare-fun lt!404996 () (_ BitVec 64))

(assert (=> b!896906 (= lt!404996 (select (arr!25282 (_keys!10130 thiss!1181)) (index!37940 lt!404994)))))

(declare-fun c!94695 () Bool)

(assert (=> b!896906 (= c!94695 (= lt!404996 key!785))))

(declare-fun b!896904 () Bool)

(declare-fun c!94696 () Bool)

(assert (=> b!896904 (= c!94696 (= lt!404996 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!501489 () SeekEntryResult!8892)

(assert (=> b!896904 (= e!501491 e!501489)))

(declare-fun d!110939 () Bool)

(declare-fun lt!404997 () SeekEntryResult!8892)

(assert (=> d!110939 (and (or ((_ is MissingVacant!8892) lt!404997) (not ((_ is Found!8892) lt!404997)) (and (bvsge (index!37939 lt!404997) #b00000000000000000000000000000000) (bvslt (index!37939 lt!404997) (size!25736 (_keys!10130 thiss!1181))))) (not ((_ is MissingVacant!8892) lt!404997)) (or (not ((_ is Found!8892) lt!404997)) (= (select (arr!25282 (_keys!10130 thiss!1181)) (index!37939 lt!404997)) key!785)))))

(assert (=> d!110939 (= lt!404997 e!501490)))

(declare-fun c!94694 () Bool)

(assert (=> d!110939 (= c!94694 (and ((_ is Intermediate!8892) lt!404994) (undefined!9704 lt!404994)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52602 (_ BitVec 32)) SeekEntryResult!8892)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110939 (= lt!404994 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26048 thiss!1181)) key!785 (_keys!10130 thiss!1181) (mask!26048 thiss!1181)))))

(assert (=> d!110939 (validMask!0 (mask!26048 thiss!1181))))

(assert (=> d!110939 (= (seekEntry!0 key!785 (_keys!10130 thiss!1181) (mask!26048 thiss!1181)) lt!404997)))

(declare-fun b!896907 () Bool)

(assert (=> b!896907 (= e!501489 (MissingZero!8892 (index!37940 lt!404994)))))

(declare-fun b!896908 () Bool)

(declare-fun lt!404995 () SeekEntryResult!8892)

(assert (=> b!896908 (= e!501489 (ite ((_ is MissingVacant!8892) lt!404995) (MissingZero!8892 (index!37941 lt!404995)) lt!404995))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52602 (_ BitVec 32)) SeekEntryResult!8892)

(assert (=> b!896908 (= lt!404995 (seekKeyOrZeroReturnVacant!0 (x!76384 lt!404994) (index!37940 lt!404994) (index!37940 lt!404994) key!785 (_keys!10130 thiss!1181) (mask!26048 thiss!1181)))))

(assert (= (and d!110939 c!94694) b!896903))

(assert (= (and d!110939 (not c!94694)) b!896906))

(assert (= (and b!896906 c!94695) b!896905))

(assert (= (and b!896906 (not c!94695)) b!896904))

(assert (= (and b!896904 c!94696) b!896907))

(assert (= (and b!896904 (not c!94696)) b!896908))

(declare-fun m!833963 () Bool)

(assert (=> b!896906 m!833963))

(declare-fun m!833965 () Bool)

(assert (=> d!110939 m!833965))

(declare-fun m!833967 () Bool)

(assert (=> d!110939 m!833967))

(assert (=> d!110939 m!833967))

(declare-fun m!833969 () Bool)

(assert (=> d!110939 m!833969))

(assert (=> d!110939 m!833933))

(declare-fun m!833971 () Bool)

(assert (=> b!896908 m!833971))

(assert (=> b!896859 d!110939))

(declare-fun d!110941 () Bool)

(assert (=> d!110941 (= (array_inv!19818 (_keys!10130 thiss!1181)) (bvsge (size!25736 (_keys!10130 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!896854 d!110941))

(declare-fun d!110943 () Bool)

(assert (=> d!110943 (= (array_inv!19819 (_values!5384 thiss!1181)) (bvsge (size!25737 (_values!5384 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!896854 d!110943))

(declare-fun d!110945 () Bool)

(declare-fun res!606452 () Bool)

(declare-fun e!501494 () Bool)

(assert (=> d!110945 (=> (not res!606452) (not e!501494))))

(declare-fun simpleValid!315 (LongMapFixedSize!4350) Bool)

(assert (=> d!110945 (= res!606452 (simpleValid!315 thiss!1181))))

(assert (=> d!110945 (= (valid!1663 thiss!1181) e!501494)))

(declare-fun b!896915 () Bool)

(declare-fun res!606453 () Bool)

(assert (=> b!896915 (=> (not res!606453) (not e!501494))))

(declare-fun arrayCountValidKeys!0 (array!52602 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!896915 (= res!606453 (= (arrayCountValidKeys!0 (_keys!10130 thiss!1181) #b00000000000000000000000000000000 (size!25736 (_keys!10130 thiss!1181))) (_size!2230 thiss!1181)))))

(declare-fun b!896916 () Bool)

(declare-fun res!606454 () Bool)

(assert (=> b!896916 (=> (not res!606454) (not e!501494))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52602 (_ BitVec 32)) Bool)

(assert (=> b!896916 (= res!606454 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10130 thiss!1181) (mask!26048 thiss!1181)))))

(declare-fun b!896917 () Bool)

(declare-datatypes ((List!17903 0))(
  ( (Nil!17900) (Cons!17899 (h!19039 (_ BitVec 64)) (t!25250 List!17903)) )
))
(declare-fun arrayNoDuplicates!0 (array!52602 (_ BitVec 32) List!17903) Bool)

(assert (=> b!896917 (= e!501494 (arrayNoDuplicates!0 (_keys!10130 thiss!1181) #b00000000000000000000000000000000 Nil!17900))))

(assert (= (and d!110945 res!606452) b!896915))

(assert (= (and b!896915 res!606453) b!896916))

(assert (= (and b!896916 res!606454) b!896917))

(declare-fun m!833973 () Bool)

(assert (=> d!110945 m!833973))

(declare-fun m!833975 () Bool)

(assert (=> b!896915 m!833975))

(declare-fun m!833977 () Bool)

(assert (=> b!896916 m!833977))

(declare-fun m!833979 () Bool)

(assert (=> b!896917 m!833979))

(assert (=> start!76584 d!110945))

(declare-fun d!110947 () Bool)

(assert (=> d!110947 (= (validMask!0 (mask!26048 thiss!1181)) (and (or (= (mask!26048 thiss!1181) #b00000000000000000000000000000111) (= (mask!26048 thiss!1181) #b00000000000000000000000000001111) (= (mask!26048 thiss!1181) #b00000000000000000000000000011111) (= (mask!26048 thiss!1181) #b00000000000000000000000000111111) (= (mask!26048 thiss!1181) #b00000000000000000000000001111111) (= (mask!26048 thiss!1181) #b00000000000000000000000011111111) (= (mask!26048 thiss!1181) #b00000000000000000000000111111111) (= (mask!26048 thiss!1181) #b00000000000000000000001111111111) (= (mask!26048 thiss!1181) #b00000000000000000000011111111111) (= (mask!26048 thiss!1181) #b00000000000000000000111111111111) (= (mask!26048 thiss!1181) #b00000000000000000001111111111111) (= (mask!26048 thiss!1181) #b00000000000000000011111111111111) (= (mask!26048 thiss!1181) #b00000000000000000111111111111111) (= (mask!26048 thiss!1181) #b00000000000000001111111111111111) (= (mask!26048 thiss!1181) #b00000000000000011111111111111111) (= (mask!26048 thiss!1181) #b00000000000000111111111111111111) (= (mask!26048 thiss!1181) #b00000000000001111111111111111111) (= (mask!26048 thiss!1181) #b00000000000011111111111111111111) (= (mask!26048 thiss!1181) #b00000000000111111111111111111111) (= (mask!26048 thiss!1181) #b00000000001111111111111111111111) (= (mask!26048 thiss!1181) #b00000000011111111111111111111111) (= (mask!26048 thiss!1181) #b00000000111111111111111111111111) (= (mask!26048 thiss!1181) #b00000001111111111111111111111111) (= (mask!26048 thiss!1181) #b00000011111111111111111111111111) (= (mask!26048 thiss!1181) #b00000111111111111111111111111111) (= (mask!26048 thiss!1181) #b00001111111111111111111111111111) (= (mask!26048 thiss!1181) #b00011111111111111111111111111111) (= (mask!26048 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26048 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!896858 d!110947))

(declare-fun d!110949 () Bool)

(declare-fun res!606459 () Bool)

(declare-fun e!501499 () Bool)

(assert (=> d!110949 (=> res!606459 e!501499)))

(assert (=> d!110949 (= res!606459 (= (select (arr!25282 (_keys!10130 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!110949 (= (arrayContainsKey!0 (_keys!10130 thiss!1181) key!785 #b00000000000000000000000000000000) e!501499)))

(declare-fun b!896922 () Bool)

(declare-fun e!501500 () Bool)

(assert (=> b!896922 (= e!501499 e!501500)))

(declare-fun res!606460 () Bool)

(assert (=> b!896922 (=> (not res!606460) (not e!501500))))

(assert (=> b!896922 (= res!606460 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25736 (_keys!10130 thiss!1181))))))

(declare-fun b!896923 () Bool)

(assert (=> b!896923 (= e!501500 (arrayContainsKey!0 (_keys!10130 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!110949 (not res!606459)) b!896922))

(assert (= (and b!896922 res!606460) b!896923))

(declare-fun m!833981 () Bool)

(assert (=> d!110949 m!833981))

(declare-fun m!833983 () Bool)

(assert (=> b!896923 m!833983))

(assert (=> b!896858 d!110949))

(declare-fun d!110951 () Bool)

(assert (=> d!110951 (arrayContainsKey!0 (_keys!10130 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405000 () Unit!30465)

(declare-fun choose!13 (array!52602 (_ BitVec 64) (_ BitVec 32)) Unit!30465)

(assert (=> d!110951 (= lt!405000 (choose!13 (_keys!10130 thiss!1181) key!785 (index!37939 lt!404968)))))

(assert (=> d!110951 (bvsge (index!37939 lt!404968) #b00000000000000000000000000000000)))

(assert (=> d!110951 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10130 thiss!1181) key!785 (index!37939 lt!404968)) lt!405000)))

(declare-fun bs!25172 () Bool)

(assert (= bs!25172 d!110951))

(assert (=> bs!25172 m!833935))

(declare-fun m!833985 () Bool)

(assert (=> bs!25172 m!833985))

(assert (=> b!896858 d!110951))

(declare-fun b!896931 () Bool)

(declare-fun e!501506 () Bool)

(assert (=> b!896931 (= e!501506 tp_is_empty!18297)))

(declare-fun mapNonEmpty!29080 () Bool)

(declare-fun mapRes!29080 () Bool)

(declare-fun tp!55960 () Bool)

(declare-fun e!501505 () Bool)

(assert (=> mapNonEmpty!29080 (= mapRes!29080 (and tp!55960 e!501505))))

(declare-fun mapKey!29080 () (_ BitVec 32))

(declare-fun mapRest!29080 () (Array (_ BitVec 32) ValueCell!8667))

(declare-fun mapValue!29080 () ValueCell!8667)

(assert (=> mapNonEmpty!29080 (= mapRest!29074 (store mapRest!29080 mapKey!29080 mapValue!29080))))

(declare-fun condMapEmpty!29080 () Bool)

(declare-fun mapDefault!29080 () ValueCell!8667)

(assert (=> mapNonEmpty!29074 (= condMapEmpty!29080 (= mapRest!29074 ((as const (Array (_ BitVec 32) ValueCell!8667)) mapDefault!29080)))))

(assert (=> mapNonEmpty!29074 (= tp!55951 (and e!501506 mapRes!29080))))

(declare-fun b!896930 () Bool)

(assert (=> b!896930 (= e!501505 tp_is_empty!18297)))

(declare-fun mapIsEmpty!29080 () Bool)

(assert (=> mapIsEmpty!29080 mapRes!29080))

(assert (= (and mapNonEmpty!29074 condMapEmpty!29080) mapIsEmpty!29080))

(assert (= (and mapNonEmpty!29074 (not condMapEmpty!29080)) mapNonEmpty!29080))

(assert (= (and mapNonEmpty!29080 ((_ is ValueCellFull!8667) mapValue!29080)) b!896930))

(assert (= (and mapNonEmpty!29074 ((_ is ValueCellFull!8667) mapDefault!29080)) b!896931))

(declare-fun m!833987 () Bool)

(assert (=> mapNonEmpty!29080 m!833987))

(check-sat b_and!26279 (not b!896917) (not b!896908) (not mapNonEmpty!29080) (not b!896915) (not b_next!15969) (not b!896916) tp_is_empty!18297 (not d!110945) (not d!110939) (not d!110951) (not b!896890) (not b!896923) (not d!110937))
(check-sat b_and!26279 (not b_next!15969))
