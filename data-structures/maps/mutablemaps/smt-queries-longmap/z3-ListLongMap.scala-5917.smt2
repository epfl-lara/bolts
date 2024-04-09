; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76774 () Bool)

(assert start!76774)

(declare-fun b!897949 () Bool)

(declare-fun b_free!16005 () Bool)

(declare-fun b_next!16005 () Bool)

(assert (=> b!897949 (= b_free!16005 (not b_next!16005))))

(declare-fun tp!56079 () Bool)

(declare-fun b_and!26315 () Bool)

(assert (=> b!897949 (= tp!56079 b_and!26315)))

(declare-fun b!897948 () Bool)

(declare-fun e!502267 () Bool)

(declare-datatypes ((array!52686 0))(
  ( (array!52687 (arr!25318 (Array (_ BitVec 32) (_ BitVec 64))) (size!25774 (_ BitVec 32))) )
))
(declare-datatypes ((V!29409 0))(
  ( (V!29410 (val!9217 Int)) )
))
(declare-datatypes ((ValueCell!8685 0))(
  ( (ValueCellFull!8685 (v!11704 V!29409)) (EmptyCell!8685) )
))
(declare-datatypes ((array!52688 0))(
  ( (array!52689 (arr!25319 (Array (_ BitVec 32) ValueCell!8685)) (size!25775 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4386 0))(
  ( (LongMapFixedSize!4387 (defaultEntry!5405 Int) (mask!26115 (_ BitVec 32)) (extraKeys!5119 (_ BitVec 32)) (zeroValue!5223 V!29409) (minValue!5223 V!29409) (_size!2248 (_ BitVec 32)) (_keys!10171 array!52686) (_values!5410 array!52688) (_vacant!2248 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4386)

(declare-datatypes ((SeekEntryResult!8908 0))(
  ( (MissingZero!8908 (index!38002 (_ BitVec 32))) (Found!8908 (index!38003 (_ BitVec 32))) (Intermediate!8908 (undefined!9720 Bool) (index!38004 (_ BitVec 32)) (x!76514 (_ BitVec 32))) (Undefined!8908) (MissingVacant!8908 (index!38005 (_ BitVec 32))) )
))
(declare-fun lt!405350 () SeekEntryResult!8908)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!897948 (= e!502267 (validKeyInArray!0 (select (arr!25318 (_keys!10171 thiss!1181)) (index!38003 lt!405350))))))

(declare-fun tp_is_empty!18333 () Bool)

(declare-fun e!502272 () Bool)

(declare-fun e!502266 () Bool)

(declare-fun array_inv!19846 (array!52686) Bool)

(declare-fun array_inv!19847 (array!52688) Bool)

(assert (=> b!897949 (= e!502266 (and tp!56079 tp_is_empty!18333 (array_inv!19846 (_keys!10171 thiss!1181)) (array_inv!19847 (_values!5410 thiss!1181)) e!502272))))

(declare-fun b!897950 () Bool)

(declare-fun res!606998 () Bool)

(assert (=> b!897950 (=> res!606998 e!502267)))

(declare-datatypes ((List!17913 0))(
  ( (Nil!17910) (Cons!17909 (h!19051 (_ BitVec 64)) (t!25260 List!17913)) )
))
(declare-fun arrayNoDuplicates!0 (array!52686 (_ BitVec 32) List!17913) Bool)

(assert (=> b!897950 (= res!606998 (not (arrayNoDuplicates!0 (_keys!10171 thiss!1181) #b00000000000000000000000000000000 Nil!17910)))))

(declare-fun mapNonEmpty!29148 () Bool)

(declare-fun mapRes!29148 () Bool)

(declare-fun tp!56078 () Bool)

(declare-fun e!502271 () Bool)

(assert (=> mapNonEmpty!29148 (= mapRes!29148 (and tp!56078 e!502271))))

(declare-fun mapValue!29148 () ValueCell!8685)

(declare-fun mapKey!29148 () (_ BitVec 32))

(declare-fun mapRest!29148 () (Array (_ BitVec 32) ValueCell!8685))

(assert (=> mapNonEmpty!29148 (= (arr!25319 (_values!5410 thiss!1181)) (store mapRest!29148 mapKey!29148 mapValue!29148))))

(declare-fun b!897951 () Bool)

(declare-fun res!606999 () Bool)

(assert (=> b!897951 (=> res!606999 e!502267)))

(assert (=> b!897951 (= res!606999 (or (not (= (size!25775 (_values!5410 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26115 thiss!1181)))) (not (= (size!25774 (_keys!10171 thiss!1181)) (size!25775 (_values!5410 thiss!1181)))) (bvslt (mask!26115 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5119 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!5119 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun res!607002 () Bool)

(declare-fun e!502268 () Bool)

(assert (=> start!76774 (=> (not res!607002) (not e!502268))))

(declare-fun valid!1674 (LongMapFixedSize!4386) Bool)

(assert (=> start!76774 (= res!607002 (valid!1674 thiss!1181))))

(assert (=> start!76774 e!502268))

(assert (=> start!76774 e!502266))

(assert (=> start!76774 true))

(declare-fun b!897952 () Bool)

(declare-fun res!607001 () Bool)

(assert (=> b!897952 (=> res!607001 e!502267)))

(assert (=> b!897952 (= res!607001 (or (bvslt (index!38003 lt!405350) #b00000000000000000000000000000000) (bvsge (index!38003 lt!405350) (size!25774 (_keys!10171 thiss!1181)))))))

(declare-fun b!897953 () Bool)

(declare-fun e!502273 () Bool)

(assert (=> b!897953 (= e!502273 tp_is_empty!18333)))

(declare-fun b!897954 () Bool)

(declare-fun res!607000 () Bool)

(assert (=> b!897954 (=> (not res!607000) (not e!502268))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!897954 (= res!607000 (not (= key!785 (bvneg key!785))))))

(declare-fun b!897955 () Bool)

(assert (=> b!897955 (= e!502271 tp_is_empty!18333)))

(declare-fun b!897956 () Bool)

(assert (=> b!897956 (= e!502272 (and e!502273 mapRes!29148))))

(declare-fun condMapEmpty!29148 () Bool)

(declare-fun mapDefault!29148 () ValueCell!8685)

(assert (=> b!897956 (= condMapEmpty!29148 (= (arr!25319 (_values!5410 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8685)) mapDefault!29148)))))

(declare-fun b!897957 () Bool)

(declare-fun e!502270 () Bool)

(assert (=> b!897957 (= e!502270 e!502267)))

(declare-fun res!606996 () Bool)

(assert (=> b!897957 (=> res!606996 e!502267)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!897957 (= res!606996 (not (validMask!0 (mask!26115 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52686 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!897957 (arrayContainsKey!0 (_keys!10171 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30497 0))(
  ( (Unit!30498) )
))
(declare-fun lt!405351 () Unit!30497)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52686 (_ BitVec 64) (_ BitVec 32)) Unit!30497)

(assert (=> b!897957 (= lt!405351 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10171 thiss!1181) key!785 (index!38003 lt!405350)))))

(declare-fun b!897958 () Bool)

(declare-fun e!502269 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!897958 (= e!502269 (inRange!0 (index!38003 lt!405350) (mask!26115 thiss!1181)))))

(declare-fun b!897959 () Bool)

(declare-fun res!607003 () Bool)

(assert (=> b!897959 (=> res!607003 e!502267)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52686 (_ BitVec 32)) Bool)

(assert (=> b!897959 (= res!607003 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10171 thiss!1181) (mask!26115 thiss!1181))))))

(declare-fun mapIsEmpty!29148 () Bool)

(assert (=> mapIsEmpty!29148 mapRes!29148))

(declare-fun b!897960 () Bool)

(assert (=> b!897960 (= e!502268 (not e!502270))))

(declare-fun res!606997 () Bool)

(assert (=> b!897960 (=> res!606997 e!502270)))

(get-info :version)

(assert (=> b!897960 (= res!606997 (not ((_ is Found!8908) lt!405350)))))

(assert (=> b!897960 e!502269))

(declare-fun res!606995 () Bool)

(assert (=> b!897960 (=> res!606995 e!502269)))

(assert (=> b!897960 (= res!606995 (not ((_ is Found!8908) lt!405350)))))

(declare-fun lt!405349 () Unit!30497)

(declare-fun lemmaSeekEntryGivesInRangeIndex!93 (array!52686 array!52688 (_ BitVec 32) (_ BitVec 32) V!29409 V!29409 (_ BitVec 64)) Unit!30497)

(assert (=> b!897960 (= lt!405349 (lemmaSeekEntryGivesInRangeIndex!93 (_keys!10171 thiss!1181) (_values!5410 thiss!1181) (mask!26115 thiss!1181) (extraKeys!5119 thiss!1181) (zeroValue!5223 thiss!1181) (minValue!5223 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52686 (_ BitVec 32)) SeekEntryResult!8908)

(assert (=> b!897960 (= lt!405350 (seekEntry!0 key!785 (_keys!10171 thiss!1181) (mask!26115 thiss!1181)))))

(assert (= (and start!76774 res!607002) b!897954))

(assert (= (and b!897954 res!607000) b!897960))

(assert (= (and b!897960 (not res!606995)) b!897958))

(assert (= (and b!897960 (not res!606997)) b!897957))

(assert (= (and b!897957 (not res!606996)) b!897951))

(assert (= (and b!897951 (not res!606999)) b!897959))

(assert (= (and b!897959 (not res!607003)) b!897950))

(assert (= (and b!897950 (not res!606998)) b!897952))

(assert (= (and b!897952 (not res!607001)) b!897948))

(assert (= (and b!897956 condMapEmpty!29148) mapIsEmpty!29148))

(assert (= (and b!897956 (not condMapEmpty!29148)) mapNonEmpty!29148))

(assert (= (and mapNonEmpty!29148 ((_ is ValueCellFull!8685) mapValue!29148)) b!897955))

(assert (= (and b!897956 ((_ is ValueCellFull!8685) mapDefault!29148)) b!897953))

(assert (= b!897949 b!897956))

(assert (= start!76774 b!897949))

(declare-fun m!834609 () Bool)

(assert (=> b!897949 m!834609))

(declare-fun m!834611 () Bool)

(assert (=> b!897949 m!834611))

(declare-fun m!834613 () Bool)

(assert (=> mapNonEmpty!29148 m!834613))

(declare-fun m!834615 () Bool)

(assert (=> b!897960 m!834615))

(declare-fun m!834617 () Bool)

(assert (=> b!897960 m!834617))

(declare-fun m!834619 () Bool)

(assert (=> b!897957 m!834619))

(declare-fun m!834621 () Bool)

(assert (=> b!897957 m!834621))

(declare-fun m!834623 () Bool)

(assert (=> b!897957 m!834623))

(declare-fun m!834625 () Bool)

(assert (=> b!897950 m!834625))

(declare-fun m!834627 () Bool)

(assert (=> b!897959 m!834627))

(declare-fun m!834629 () Bool)

(assert (=> b!897958 m!834629))

(declare-fun m!834631 () Bool)

(assert (=> b!897948 m!834631))

(assert (=> b!897948 m!834631))

(declare-fun m!834633 () Bool)

(assert (=> b!897948 m!834633))

(declare-fun m!834635 () Bool)

(assert (=> start!76774 m!834635))

(check-sat (not b!897948) (not b!897957) (not b!897960) (not b!897959) (not b!897958) (not mapNonEmpty!29148) (not b!897950) b_and!26315 (not start!76774) (not b_next!16005) (not b!897949) tp_is_empty!18333)
(check-sat b_and!26315 (not b_next!16005))
(get-model)

(declare-fun d!111109 () Bool)

(declare-fun res!607037 () Bool)

(declare-fun e!502303 () Bool)

(assert (=> d!111109 (=> (not res!607037) (not e!502303))))

(declare-fun simpleValid!321 (LongMapFixedSize!4386) Bool)

(assert (=> d!111109 (= res!607037 (simpleValid!321 thiss!1181))))

(assert (=> d!111109 (= (valid!1674 thiss!1181) e!502303)))

(declare-fun b!898006 () Bool)

(declare-fun res!607038 () Bool)

(assert (=> b!898006 (=> (not res!607038) (not e!502303))))

(declare-fun arrayCountValidKeys!0 (array!52686 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!898006 (= res!607038 (= (arrayCountValidKeys!0 (_keys!10171 thiss!1181) #b00000000000000000000000000000000 (size!25774 (_keys!10171 thiss!1181))) (_size!2248 thiss!1181)))))

(declare-fun b!898007 () Bool)

(declare-fun res!607039 () Bool)

(assert (=> b!898007 (=> (not res!607039) (not e!502303))))

(assert (=> b!898007 (= res!607039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10171 thiss!1181) (mask!26115 thiss!1181)))))

(declare-fun b!898008 () Bool)

(assert (=> b!898008 (= e!502303 (arrayNoDuplicates!0 (_keys!10171 thiss!1181) #b00000000000000000000000000000000 Nil!17910))))

(assert (= (and d!111109 res!607037) b!898006))

(assert (= (and b!898006 res!607038) b!898007))

(assert (= (and b!898007 res!607039) b!898008))

(declare-fun m!834665 () Bool)

(assert (=> d!111109 m!834665))

(declare-fun m!834667 () Bool)

(assert (=> b!898006 m!834667))

(assert (=> b!898007 m!834627))

(assert (=> b!898008 m!834625))

(assert (=> start!76774 d!111109))

(declare-fun d!111111 () Bool)

(declare-fun e!502306 () Bool)

(assert (=> d!111111 e!502306))

(declare-fun res!607042 () Bool)

(assert (=> d!111111 (=> res!607042 e!502306)))

(declare-fun lt!405366 () SeekEntryResult!8908)

(assert (=> d!111111 (= res!607042 (not ((_ is Found!8908) lt!405366)))))

(assert (=> d!111111 (= lt!405366 (seekEntry!0 key!785 (_keys!10171 thiss!1181) (mask!26115 thiss!1181)))))

(declare-fun lt!405365 () Unit!30497)

(declare-fun choose!1495 (array!52686 array!52688 (_ BitVec 32) (_ BitVec 32) V!29409 V!29409 (_ BitVec 64)) Unit!30497)

(assert (=> d!111111 (= lt!405365 (choose!1495 (_keys!10171 thiss!1181) (_values!5410 thiss!1181) (mask!26115 thiss!1181) (extraKeys!5119 thiss!1181) (zeroValue!5223 thiss!1181) (minValue!5223 thiss!1181) key!785))))

(assert (=> d!111111 (validMask!0 (mask!26115 thiss!1181))))

(assert (=> d!111111 (= (lemmaSeekEntryGivesInRangeIndex!93 (_keys!10171 thiss!1181) (_values!5410 thiss!1181) (mask!26115 thiss!1181) (extraKeys!5119 thiss!1181) (zeroValue!5223 thiss!1181) (minValue!5223 thiss!1181) key!785) lt!405365)))

(declare-fun b!898011 () Bool)

(assert (=> b!898011 (= e!502306 (inRange!0 (index!38003 lt!405366) (mask!26115 thiss!1181)))))

(assert (= (and d!111111 (not res!607042)) b!898011))

(assert (=> d!111111 m!834617))

(declare-fun m!834669 () Bool)

(assert (=> d!111111 m!834669))

(assert (=> d!111111 m!834619))

(declare-fun m!834671 () Bool)

(assert (=> b!898011 m!834671))

(assert (=> b!897960 d!111111))

(declare-fun b!898024 () Bool)

(declare-fun e!502314 () SeekEntryResult!8908)

(declare-fun lt!405375 () SeekEntryResult!8908)

(assert (=> b!898024 (= e!502314 (ite ((_ is MissingVacant!8908) lt!405375) (MissingZero!8908 (index!38005 lt!405375)) lt!405375))))

(declare-fun lt!405376 () SeekEntryResult!8908)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52686 (_ BitVec 32)) SeekEntryResult!8908)

(assert (=> b!898024 (= lt!405375 (seekKeyOrZeroReturnVacant!0 (x!76514 lt!405376) (index!38004 lt!405376) (index!38004 lt!405376) key!785 (_keys!10171 thiss!1181) (mask!26115 thiss!1181)))))

(declare-fun b!898025 () Bool)

(declare-fun e!502315 () SeekEntryResult!8908)

(declare-fun e!502313 () SeekEntryResult!8908)

(assert (=> b!898025 (= e!502315 e!502313)))

(declare-fun lt!405377 () (_ BitVec 64))

(assert (=> b!898025 (= lt!405377 (select (arr!25318 (_keys!10171 thiss!1181)) (index!38004 lt!405376)))))

(declare-fun c!94824 () Bool)

(assert (=> b!898025 (= c!94824 (= lt!405377 key!785))))

(declare-fun b!898026 () Bool)

(assert (=> b!898026 (= e!502314 (MissingZero!8908 (index!38004 lt!405376)))))

(declare-fun b!898027 () Bool)

(assert (=> b!898027 (= e!502313 (Found!8908 (index!38004 lt!405376)))))

(declare-fun d!111113 () Bool)

(declare-fun lt!405378 () SeekEntryResult!8908)

(assert (=> d!111113 (and (or ((_ is MissingVacant!8908) lt!405378) (not ((_ is Found!8908) lt!405378)) (and (bvsge (index!38003 lt!405378) #b00000000000000000000000000000000) (bvslt (index!38003 lt!405378) (size!25774 (_keys!10171 thiss!1181))))) (not ((_ is MissingVacant!8908) lt!405378)) (or (not ((_ is Found!8908) lt!405378)) (= (select (arr!25318 (_keys!10171 thiss!1181)) (index!38003 lt!405378)) key!785)))))

(assert (=> d!111113 (= lt!405378 e!502315)))

(declare-fun c!94825 () Bool)

(assert (=> d!111113 (= c!94825 (and ((_ is Intermediate!8908) lt!405376) (undefined!9720 lt!405376)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52686 (_ BitVec 32)) SeekEntryResult!8908)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!111113 (= lt!405376 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26115 thiss!1181)) key!785 (_keys!10171 thiss!1181) (mask!26115 thiss!1181)))))

(assert (=> d!111113 (validMask!0 (mask!26115 thiss!1181))))

(assert (=> d!111113 (= (seekEntry!0 key!785 (_keys!10171 thiss!1181) (mask!26115 thiss!1181)) lt!405378)))

(declare-fun b!898028 () Bool)

(declare-fun c!94823 () Bool)

(assert (=> b!898028 (= c!94823 (= lt!405377 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!898028 (= e!502313 e!502314)))

(declare-fun b!898029 () Bool)

(assert (=> b!898029 (= e!502315 Undefined!8908)))

(assert (= (and d!111113 c!94825) b!898029))

(assert (= (and d!111113 (not c!94825)) b!898025))

(assert (= (and b!898025 c!94824) b!898027))

(assert (= (and b!898025 (not c!94824)) b!898028))

(assert (= (and b!898028 c!94823) b!898026))

(assert (= (and b!898028 (not c!94823)) b!898024))

(declare-fun m!834673 () Bool)

(assert (=> b!898024 m!834673))

(declare-fun m!834675 () Bool)

(assert (=> b!898025 m!834675))

(declare-fun m!834677 () Bool)

(assert (=> d!111113 m!834677))

(declare-fun m!834679 () Bool)

(assert (=> d!111113 m!834679))

(assert (=> d!111113 m!834679))

(declare-fun m!834681 () Bool)

(assert (=> d!111113 m!834681))

(assert (=> d!111113 m!834619))

(assert (=> b!897960 d!111113))

(declare-fun d!111115 () Bool)

(declare-fun res!607047 () Bool)

(declare-fun e!502324 () Bool)

(assert (=> d!111115 (=> res!607047 e!502324)))

(assert (=> d!111115 (= res!607047 (bvsge #b00000000000000000000000000000000 (size!25774 (_keys!10171 thiss!1181))))))

(assert (=> d!111115 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10171 thiss!1181) (mask!26115 thiss!1181)) e!502324)))

(declare-fun b!898038 () Bool)

(declare-fun e!502323 () Bool)

(declare-fun e!502322 () Bool)

(assert (=> b!898038 (= e!502323 e!502322)))

(declare-fun lt!405387 () (_ BitVec 64))

(assert (=> b!898038 (= lt!405387 (select (arr!25318 (_keys!10171 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!405386 () Unit!30497)

(assert (=> b!898038 (= lt!405386 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10171 thiss!1181) lt!405387 #b00000000000000000000000000000000))))

(assert (=> b!898038 (arrayContainsKey!0 (_keys!10171 thiss!1181) lt!405387 #b00000000000000000000000000000000)))

(declare-fun lt!405385 () Unit!30497)

(assert (=> b!898038 (= lt!405385 lt!405386)))

(declare-fun res!607048 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52686 (_ BitVec 32)) SeekEntryResult!8908)

(assert (=> b!898038 (= res!607048 (= (seekEntryOrOpen!0 (select (arr!25318 (_keys!10171 thiss!1181)) #b00000000000000000000000000000000) (_keys!10171 thiss!1181) (mask!26115 thiss!1181)) (Found!8908 #b00000000000000000000000000000000)))))

(assert (=> b!898038 (=> (not res!607048) (not e!502322))))

(declare-fun bm!39829 () Bool)

(declare-fun call!39832 () Bool)

(assert (=> bm!39829 (= call!39832 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10171 thiss!1181) (mask!26115 thiss!1181)))))

(declare-fun b!898039 () Bool)

(assert (=> b!898039 (= e!502323 call!39832)))

(declare-fun b!898040 () Bool)

(assert (=> b!898040 (= e!502322 call!39832)))

(declare-fun b!898041 () Bool)

(assert (=> b!898041 (= e!502324 e!502323)))

(declare-fun c!94828 () Bool)

(assert (=> b!898041 (= c!94828 (validKeyInArray!0 (select (arr!25318 (_keys!10171 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!111115 (not res!607047)) b!898041))

(assert (= (and b!898041 c!94828) b!898038))

(assert (= (and b!898041 (not c!94828)) b!898039))

(assert (= (and b!898038 res!607048) b!898040))

(assert (= (or b!898040 b!898039) bm!39829))

(declare-fun m!834683 () Bool)

(assert (=> b!898038 m!834683))

(declare-fun m!834685 () Bool)

(assert (=> b!898038 m!834685))

(declare-fun m!834687 () Bool)

(assert (=> b!898038 m!834687))

(assert (=> b!898038 m!834683))

(declare-fun m!834689 () Bool)

(assert (=> b!898038 m!834689))

(declare-fun m!834691 () Bool)

(assert (=> bm!39829 m!834691))

(assert (=> b!898041 m!834683))

(assert (=> b!898041 m!834683))

(declare-fun m!834693 () Bool)

(assert (=> b!898041 m!834693))

(assert (=> b!897959 d!111115))

(declare-fun b!898052 () Bool)

(declare-fun e!502333 () Bool)

(declare-fun call!39835 () Bool)

(assert (=> b!898052 (= e!502333 call!39835)))

(declare-fun d!111117 () Bool)

(declare-fun res!607057 () Bool)

(declare-fun e!502334 () Bool)

(assert (=> d!111117 (=> res!607057 e!502334)))

(assert (=> d!111117 (= res!607057 (bvsge #b00000000000000000000000000000000 (size!25774 (_keys!10171 thiss!1181))))))

(assert (=> d!111117 (= (arrayNoDuplicates!0 (_keys!10171 thiss!1181) #b00000000000000000000000000000000 Nil!17910) e!502334)))

(declare-fun b!898053 () Bool)

(declare-fun e!502336 () Bool)

(declare-fun contains!4395 (List!17913 (_ BitVec 64)) Bool)

(assert (=> b!898053 (= e!502336 (contains!4395 Nil!17910 (select (arr!25318 (_keys!10171 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!898054 () Bool)

(declare-fun e!502335 () Bool)

(assert (=> b!898054 (= e!502335 e!502333)))

(declare-fun c!94831 () Bool)

(assert (=> b!898054 (= c!94831 (validKeyInArray!0 (select (arr!25318 (_keys!10171 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!39832 () Bool)

(assert (=> bm!39832 (= call!39835 (arrayNoDuplicates!0 (_keys!10171 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!94831 (Cons!17909 (select (arr!25318 (_keys!10171 thiss!1181)) #b00000000000000000000000000000000) Nil!17910) Nil!17910)))))

(declare-fun b!898055 () Bool)

(assert (=> b!898055 (= e!502334 e!502335)))

(declare-fun res!607056 () Bool)

(assert (=> b!898055 (=> (not res!607056) (not e!502335))))

(assert (=> b!898055 (= res!607056 (not e!502336))))

(declare-fun res!607055 () Bool)

(assert (=> b!898055 (=> (not res!607055) (not e!502336))))

(assert (=> b!898055 (= res!607055 (validKeyInArray!0 (select (arr!25318 (_keys!10171 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!898056 () Bool)

(assert (=> b!898056 (= e!502333 call!39835)))

(assert (= (and d!111117 (not res!607057)) b!898055))

(assert (= (and b!898055 res!607055) b!898053))

(assert (= (and b!898055 res!607056) b!898054))

(assert (= (and b!898054 c!94831) b!898056))

(assert (= (and b!898054 (not c!94831)) b!898052))

(assert (= (or b!898056 b!898052) bm!39832))

(assert (=> b!898053 m!834683))

(assert (=> b!898053 m!834683))

(declare-fun m!834695 () Bool)

(assert (=> b!898053 m!834695))

(assert (=> b!898054 m!834683))

(assert (=> b!898054 m!834683))

(assert (=> b!898054 m!834693))

(assert (=> bm!39832 m!834683))

(declare-fun m!834697 () Bool)

(assert (=> bm!39832 m!834697))

(assert (=> b!898055 m!834683))

(assert (=> b!898055 m!834683))

(assert (=> b!898055 m!834693))

(assert (=> b!897950 d!111117))

(declare-fun d!111119 () Bool)

(assert (=> d!111119 (= (validKeyInArray!0 (select (arr!25318 (_keys!10171 thiss!1181)) (index!38003 lt!405350))) (and (not (= (select (arr!25318 (_keys!10171 thiss!1181)) (index!38003 lt!405350)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!25318 (_keys!10171 thiss!1181)) (index!38003 lt!405350)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!897948 d!111119))

(declare-fun d!111121 () Bool)

(assert (=> d!111121 (= (inRange!0 (index!38003 lt!405350) (mask!26115 thiss!1181)) (and (bvsge (index!38003 lt!405350) #b00000000000000000000000000000000) (bvslt (index!38003 lt!405350) (bvadd (mask!26115 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!897958 d!111121))

(declare-fun d!111123 () Bool)

(assert (=> d!111123 (= (array_inv!19846 (_keys!10171 thiss!1181)) (bvsge (size!25774 (_keys!10171 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!897949 d!111123))

(declare-fun d!111125 () Bool)

(assert (=> d!111125 (= (array_inv!19847 (_values!5410 thiss!1181)) (bvsge (size!25775 (_values!5410 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!897949 d!111125))

(declare-fun d!111127 () Bool)

(assert (=> d!111127 (= (validMask!0 (mask!26115 thiss!1181)) (and (or (= (mask!26115 thiss!1181) #b00000000000000000000000000000111) (= (mask!26115 thiss!1181) #b00000000000000000000000000001111) (= (mask!26115 thiss!1181) #b00000000000000000000000000011111) (= (mask!26115 thiss!1181) #b00000000000000000000000000111111) (= (mask!26115 thiss!1181) #b00000000000000000000000001111111) (= (mask!26115 thiss!1181) #b00000000000000000000000011111111) (= (mask!26115 thiss!1181) #b00000000000000000000000111111111) (= (mask!26115 thiss!1181) #b00000000000000000000001111111111) (= (mask!26115 thiss!1181) #b00000000000000000000011111111111) (= (mask!26115 thiss!1181) #b00000000000000000000111111111111) (= (mask!26115 thiss!1181) #b00000000000000000001111111111111) (= (mask!26115 thiss!1181) #b00000000000000000011111111111111) (= (mask!26115 thiss!1181) #b00000000000000000111111111111111) (= (mask!26115 thiss!1181) #b00000000000000001111111111111111) (= (mask!26115 thiss!1181) #b00000000000000011111111111111111) (= (mask!26115 thiss!1181) #b00000000000000111111111111111111) (= (mask!26115 thiss!1181) #b00000000000001111111111111111111) (= (mask!26115 thiss!1181) #b00000000000011111111111111111111) (= (mask!26115 thiss!1181) #b00000000000111111111111111111111) (= (mask!26115 thiss!1181) #b00000000001111111111111111111111) (= (mask!26115 thiss!1181) #b00000000011111111111111111111111) (= (mask!26115 thiss!1181) #b00000000111111111111111111111111) (= (mask!26115 thiss!1181) #b00000001111111111111111111111111) (= (mask!26115 thiss!1181) #b00000011111111111111111111111111) (= (mask!26115 thiss!1181) #b00000111111111111111111111111111) (= (mask!26115 thiss!1181) #b00001111111111111111111111111111) (= (mask!26115 thiss!1181) #b00011111111111111111111111111111) (= (mask!26115 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26115 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!897957 d!111127))

(declare-fun d!111129 () Bool)

(declare-fun res!607062 () Bool)

(declare-fun e!502341 () Bool)

(assert (=> d!111129 (=> res!607062 e!502341)))

(assert (=> d!111129 (= res!607062 (= (select (arr!25318 (_keys!10171 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!111129 (= (arrayContainsKey!0 (_keys!10171 thiss!1181) key!785 #b00000000000000000000000000000000) e!502341)))

(declare-fun b!898061 () Bool)

(declare-fun e!502342 () Bool)

(assert (=> b!898061 (= e!502341 e!502342)))

(declare-fun res!607063 () Bool)

(assert (=> b!898061 (=> (not res!607063) (not e!502342))))

(assert (=> b!898061 (= res!607063 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25774 (_keys!10171 thiss!1181))))))

(declare-fun b!898062 () Bool)

(assert (=> b!898062 (= e!502342 (arrayContainsKey!0 (_keys!10171 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!111129 (not res!607062)) b!898061))

(assert (= (and b!898061 res!607063) b!898062))

(assert (=> d!111129 m!834683))

(declare-fun m!834699 () Bool)

(assert (=> b!898062 m!834699))

(assert (=> b!897957 d!111129))

(declare-fun d!111131 () Bool)

(assert (=> d!111131 (arrayContainsKey!0 (_keys!10171 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405390 () Unit!30497)

(declare-fun choose!13 (array!52686 (_ BitVec 64) (_ BitVec 32)) Unit!30497)

(assert (=> d!111131 (= lt!405390 (choose!13 (_keys!10171 thiss!1181) key!785 (index!38003 lt!405350)))))

(assert (=> d!111131 (bvsge (index!38003 lt!405350) #b00000000000000000000000000000000)))

(assert (=> d!111131 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10171 thiss!1181) key!785 (index!38003 lt!405350)) lt!405390)))

(declare-fun bs!25198 () Bool)

(assert (= bs!25198 d!111131))

(assert (=> bs!25198 m!834621))

(declare-fun m!834701 () Bool)

(assert (=> bs!25198 m!834701))

(assert (=> b!897957 d!111131))

(declare-fun mapIsEmpty!29154 () Bool)

(declare-fun mapRes!29154 () Bool)

(assert (=> mapIsEmpty!29154 mapRes!29154))

(declare-fun mapNonEmpty!29154 () Bool)

(declare-fun tp!56088 () Bool)

(declare-fun e!502348 () Bool)

(assert (=> mapNonEmpty!29154 (= mapRes!29154 (and tp!56088 e!502348))))

(declare-fun mapKey!29154 () (_ BitVec 32))

(declare-fun mapValue!29154 () ValueCell!8685)

(declare-fun mapRest!29154 () (Array (_ BitVec 32) ValueCell!8685))

(assert (=> mapNonEmpty!29154 (= mapRest!29148 (store mapRest!29154 mapKey!29154 mapValue!29154))))

(declare-fun condMapEmpty!29154 () Bool)

(declare-fun mapDefault!29154 () ValueCell!8685)

(assert (=> mapNonEmpty!29148 (= condMapEmpty!29154 (= mapRest!29148 ((as const (Array (_ BitVec 32) ValueCell!8685)) mapDefault!29154)))))

(declare-fun e!502347 () Bool)

(assert (=> mapNonEmpty!29148 (= tp!56078 (and e!502347 mapRes!29154))))

(declare-fun b!898070 () Bool)

(assert (=> b!898070 (= e!502347 tp_is_empty!18333)))

(declare-fun b!898069 () Bool)

(assert (=> b!898069 (= e!502348 tp_is_empty!18333)))

(assert (= (and mapNonEmpty!29148 condMapEmpty!29154) mapIsEmpty!29154))

(assert (= (and mapNonEmpty!29148 (not condMapEmpty!29154)) mapNonEmpty!29154))

(assert (= (and mapNonEmpty!29154 ((_ is ValueCellFull!8685) mapValue!29154)) b!898069))

(assert (= (and mapNonEmpty!29148 ((_ is ValueCellFull!8685) mapDefault!29154)) b!898070))

(declare-fun m!834703 () Bool)

(assert (=> mapNonEmpty!29154 m!834703))

(check-sat (not b!898024) (not b!898011) (not bm!39829) (not bm!39832) (not d!111111) (not b!898041) (not b!898006) (not b!898038) (not b!898054) b_and!26315 (not d!111113) (not b_next!16005) (not b!898007) (not b!898055) (not b!898008) (not mapNonEmpty!29154) tp_is_empty!18333 (not d!111131) (not b!898053) (not b!898062) (not d!111109))
(check-sat b_and!26315 (not b_next!16005))
