; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21562 () Bool)

(assert start!21562)

(declare-fun b!216013 () Bool)

(declare-fun b_free!5739 () Bool)

(declare-fun b_next!5739 () Bool)

(assert (=> b!216013 (= b_free!5739 (not b_next!5739))))

(declare-fun tp!20343 () Bool)

(declare-fun b_and!12647 () Bool)

(assert (=> b!216013 (= tp!20343 b_and!12647)))

(declare-fun b!216007 () Bool)

(declare-fun e!140548 () Bool)

(declare-fun e!140546 () Bool)

(assert (=> b!216007 (= e!140548 e!140546)))

(declare-fun res!105634 () Bool)

(assert (=> b!216007 (=> (not res!105634) (not e!140546))))

(declare-datatypes ((SeekEntryResult!748 0))(
  ( (MissingZero!748 (index!5162 (_ BitVec 32))) (Found!748 (index!5163 (_ BitVec 32))) (Intermediate!748 (undefined!1560 Bool) (index!5164 (_ BitVec 32)) (x!22596 (_ BitVec 32))) (Undefined!748) (MissingVacant!748 (index!5165 (_ BitVec 32))) )
))
(declare-fun lt!111112 () SeekEntryResult!748)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216007 (= res!105634 (or (= lt!111112 (MissingZero!748 index!297)) (= lt!111112 (MissingVacant!748 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7115 0))(
  ( (V!7116 (val!2845 Int)) )
))
(declare-datatypes ((ValueCell!2457 0))(
  ( (ValueCellFull!2457 (v!4859 V!7115)) (EmptyCell!2457) )
))
(declare-datatypes ((array!10434 0))(
  ( (array!10435 (arr!4941 (Array (_ BitVec 32) ValueCell!2457)) (size!5273 (_ BitVec 32))) )
))
(declare-datatypes ((array!10436 0))(
  ( (array!10437 (arr!4942 (Array (_ BitVec 32) (_ BitVec 64))) (size!5274 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2814 0))(
  ( (LongMapFixedSize!2815 (defaultEntry!4057 Int) (mask!9779 (_ BitVec 32)) (extraKeys!3794 (_ BitVec 32)) (zeroValue!3898 V!7115) (minValue!3898 V!7115) (_size!1456 (_ BitVec 32)) (_keys!6100 array!10436) (_values!4040 array!10434) (_vacant!1456 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2814)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10436 (_ BitVec 32)) SeekEntryResult!748)

(assert (=> b!216007 (= lt!111112 (seekEntryOrOpen!0 key!932 (_keys!6100 thiss!1504) (mask!9779 thiss!1504)))))

(declare-fun mapNonEmpty!9555 () Bool)

(declare-fun mapRes!9555 () Bool)

(declare-fun tp!20342 () Bool)

(declare-fun e!140544 () Bool)

(assert (=> mapNonEmpty!9555 (= mapRes!9555 (and tp!20342 e!140544))))

(declare-fun mapRest!9555 () (Array (_ BitVec 32) ValueCell!2457))

(declare-fun mapValue!9555 () ValueCell!2457)

(declare-fun mapKey!9555 () (_ BitVec 32))

(assert (=> mapNonEmpty!9555 (= (arr!4941 (_values!4040 thiss!1504)) (store mapRest!9555 mapKey!9555 mapValue!9555))))

(declare-fun b!216008 () Bool)

(declare-fun tp_is_empty!5601 () Bool)

(assert (=> b!216008 (= e!140544 tp_is_empty!5601)))

(declare-fun b!216009 () Bool)

(declare-fun res!105633 () Bool)

(assert (=> b!216009 (=> (not res!105633) (not e!140546))))

(assert (=> b!216009 (= res!105633 (and (= (size!5273 (_values!4040 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9779 thiss!1504))) (= (size!5274 (_keys!6100 thiss!1504)) (size!5273 (_values!4040 thiss!1504))) (bvsge (mask!9779 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3794 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3794 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!216010 () Bool)

(declare-fun e!140549 () Bool)

(declare-fun e!140545 () Bool)

(assert (=> b!216010 (= e!140549 (and e!140545 mapRes!9555))))

(declare-fun condMapEmpty!9555 () Bool)

(declare-fun mapDefault!9555 () ValueCell!2457)

(assert (=> b!216010 (= condMapEmpty!9555 (= (arr!4941 (_values!4040 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2457)) mapDefault!9555)))))

(declare-fun b!216011 () Bool)

(assert (=> b!216011 (= e!140545 tp_is_empty!5601)))

(declare-fun b!216012 () Bool)

(declare-fun res!105635 () Bool)

(assert (=> b!216012 (=> (not res!105635) (not e!140548))))

(assert (=> b!216012 (= res!105635 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!140547 () Bool)

(declare-fun array_inv!3259 (array!10436) Bool)

(declare-fun array_inv!3260 (array!10434) Bool)

(assert (=> b!216013 (= e!140547 (and tp!20343 tp_is_empty!5601 (array_inv!3259 (_keys!6100 thiss!1504)) (array_inv!3260 (_values!4040 thiss!1504)) e!140549))))

(declare-fun b!216014 () Bool)

(declare-fun res!105632 () Bool)

(assert (=> b!216014 (=> (not res!105632) (not e!140546))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!216014 (= res!105632 (validMask!0 (mask!9779 thiss!1504)))))

(declare-fun b!216015 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10436 (_ BitVec 32)) Bool)

(assert (=> b!216015 (= e!140546 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6100 thiss!1504) (mask!9779 thiss!1504))))))

(declare-fun res!105636 () Bool)

(assert (=> start!21562 (=> (not res!105636) (not e!140548))))

(declare-fun valid!1136 (LongMapFixedSize!2814) Bool)

(assert (=> start!21562 (= res!105636 (valid!1136 thiss!1504))))

(assert (=> start!21562 e!140548))

(assert (=> start!21562 e!140547))

(assert (=> start!21562 true))

(declare-fun mapIsEmpty!9555 () Bool)

(assert (=> mapIsEmpty!9555 mapRes!9555))

(assert (= (and start!21562 res!105636) b!216012))

(assert (= (and b!216012 res!105635) b!216007))

(assert (= (and b!216007 res!105634) b!216014))

(assert (= (and b!216014 res!105632) b!216009))

(assert (= (and b!216009 res!105633) b!216015))

(assert (= (and b!216010 condMapEmpty!9555) mapIsEmpty!9555))

(assert (= (and b!216010 (not condMapEmpty!9555)) mapNonEmpty!9555))

(get-info :version)

(assert (= (and mapNonEmpty!9555 ((_ is ValueCellFull!2457) mapValue!9555)) b!216008))

(assert (= (and b!216010 ((_ is ValueCellFull!2457) mapDefault!9555)) b!216011))

(assert (= b!216013 b!216010))

(assert (= start!21562 b!216013))

(declare-fun m!242917 () Bool)

(assert (=> start!21562 m!242917))

(declare-fun m!242919 () Bool)

(assert (=> mapNonEmpty!9555 m!242919))

(declare-fun m!242921 () Bool)

(assert (=> b!216007 m!242921))

(declare-fun m!242923 () Bool)

(assert (=> b!216013 m!242923))

(declare-fun m!242925 () Bool)

(assert (=> b!216013 m!242925))

(declare-fun m!242927 () Bool)

(assert (=> b!216015 m!242927))

(declare-fun m!242929 () Bool)

(assert (=> b!216014 m!242929))

(check-sat (not b!216015) (not b_next!5739) (not b!216014) (not b!216013) (not b!216007) (not mapNonEmpty!9555) (not start!21562) b_and!12647 tp_is_empty!5601)
(check-sat b_and!12647 (not b_next!5739))
(get-model)

(declare-fun d!58427 () Bool)

(assert (=> d!58427 (= (validMask!0 (mask!9779 thiss!1504)) (and (or (= (mask!9779 thiss!1504) #b00000000000000000000000000000111) (= (mask!9779 thiss!1504) #b00000000000000000000000000001111) (= (mask!9779 thiss!1504) #b00000000000000000000000000011111) (= (mask!9779 thiss!1504) #b00000000000000000000000000111111) (= (mask!9779 thiss!1504) #b00000000000000000000000001111111) (= (mask!9779 thiss!1504) #b00000000000000000000000011111111) (= (mask!9779 thiss!1504) #b00000000000000000000000111111111) (= (mask!9779 thiss!1504) #b00000000000000000000001111111111) (= (mask!9779 thiss!1504) #b00000000000000000000011111111111) (= (mask!9779 thiss!1504) #b00000000000000000000111111111111) (= (mask!9779 thiss!1504) #b00000000000000000001111111111111) (= (mask!9779 thiss!1504) #b00000000000000000011111111111111) (= (mask!9779 thiss!1504) #b00000000000000000111111111111111) (= (mask!9779 thiss!1504) #b00000000000000001111111111111111) (= (mask!9779 thiss!1504) #b00000000000000011111111111111111) (= (mask!9779 thiss!1504) #b00000000000000111111111111111111) (= (mask!9779 thiss!1504) #b00000000000001111111111111111111) (= (mask!9779 thiss!1504) #b00000000000011111111111111111111) (= (mask!9779 thiss!1504) #b00000000000111111111111111111111) (= (mask!9779 thiss!1504) #b00000000001111111111111111111111) (= (mask!9779 thiss!1504) #b00000000011111111111111111111111) (= (mask!9779 thiss!1504) #b00000000111111111111111111111111) (= (mask!9779 thiss!1504) #b00000001111111111111111111111111) (= (mask!9779 thiss!1504) #b00000011111111111111111111111111) (= (mask!9779 thiss!1504) #b00000111111111111111111111111111) (= (mask!9779 thiss!1504) #b00001111111111111111111111111111) (= (mask!9779 thiss!1504) #b00011111111111111111111111111111) (= (mask!9779 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!9779 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!216014 d!58427))

(declare-fun d!58429 () Bool)

(assert (=> d!58429 (= (array_inv!3259 (_keys!6100 thiss!1504)) (bvsge (size!5274 (_keys!6100 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!216013 d!58429))

(declare-fun d!58431 () Bool)

(assert (=> d!58431 (= (array_inv!3260 (_values!4040 thiss!1504)) (bvsge (size!5273 (_values!4040 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!216013 d!58431))

(declare-fun d!58433 () Bool)

(declare-fun res!105658 () Bool)

(declare-fun e!140574 () Bool)

(assert (=> d!58433 (=> (not res!105658) (not e!140574))))

(declare-fun simpleValid!220 (LongMapFixedSize!2814) Bool)

(assert (=> d!58433 (= res!105658 (simpleValid!220 thiss!1504))))

(assert (=> d!58433 (= (valid!1136 thiss!1504) e!140574)))

(declare-fun b!216049 () Bool)

(declare-fun res!105659 () Bool)

(assert (=> b!216049 (=> (not res!105659) (not e!140574))))

(declare-fun arrayCountValidKeys!0 (array!10436 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!216049 (= res!105659 (= (arrayCountValidKeys!0 (_keys!6100 thiss!1504) #b00000000000000000000000000000000 (size!5274 (_keys!6100 thiss!1504))) (_size!1456 thiss!1504)))))

(declare-fun b!216050 () Bool)

(declare-fun res!105660 () Bool)

(assert (=> b!216050 (=> (not res!105660) (not e!140574))))

(assert (=> b!216050 (= res!105660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6100 thiss!1504) (mask!9779 thiss!1504)))))

(declare-fun b!216051 () Bool)

(declare-datatypes ((List!3160 0))(
  ( (Nil!3157) (Cons!3156 (h!3803 (_ BitVec 64)) (t!8123 List!3160)) )
))
(declare-fun arrayNoDuplicates!0 (array!10436 (_ BitVec 32) List!3160) Bool)

(assert (=> b!216051 (= e!140574 (arrayNoDuplicates!0 (_keys!6100 thiss!1504) #b00000000000000000000000000000000 Nil!3157))))

(assert (= (and d!58433 res!105658) b!216049))

(assert (= (and b!216049 res!105659) b!216050))

(assert (= (and b!216050 res!105660) b!216051))

(declare-fun m!242945 () Bool)

(assert (=> d!58433 m!242945))

(declare-fun m!242947 () Bool)

(assert (=> b!216049 m!242947))

(assert (=> b!216050 m!242927))

(declare-fun m!242949 () Bool)

(assert (=> b!216051 m!242949))

(assert (=> start!21562 d!58433))

(declare-fun b!216064 () Bool)

(declare-fun e!140583 () SeekEntryResult!748)

(assert (=> b!216064 (= e!140583 Undefined!748)))

(declare-fun b!216065 () Bool)

(declare-fun e!140581 () SeekEntryResult!748)

(declare-fun lt!111122 () SeekEntryResult!748)

(assert (=> b!216065 (= e!140581 (MissingZero!748 (index!5164 lt!111122)))))

(declare-fun b!216066 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10436 (_ BitVec 32)) SeekEntryResult!748)

(assert (=> b!216066 (= e!140581 (seekKeyOrZeroReturnVacant!0 (x!22596 lt!111122) (index!5164 lt!111122) (index!5164 lt!111122) key!932 (_keys!6100 thiss!1504) (mask!9779 thiss!1504)))))

(declare-fun b!216067 () Bool)

(declare-fun e!140582 () SeekEntryResult!748)

(assert (=> b!216067 (= e!140583 e!140582)))

(declare-fun lt!111123 () (_ BitVec 64))

(assert (=> b!216067 (= lt!111123 (select (arr!4942 (_keys!6100 thiss!1504)) (index!5164 lt!111122)))))

(declare-fun c!36277 () Bool)

(assert (=> b!216067 (= c!36277 (= lt!111123 key!932))))

(declare-fun b!216068 () Bool)

(declare-fun c!36275 () Bool)

(assert (=> b!216068 (= c!36275 (= lt!111123 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!216068 (= e!140582 e!140581)))

(declare-fun d!58435 () Bool)

(declare-fun lt!111124 () SeekEntryResult!748)

(assert (=> d!58435 (and (or ((_ is Undefined!748) lt!111124) (not ((_ is Found!748) lt!111124)) (and (bvsge (index!5163 lt!111124) #b00000000000000000000000000000000) (bvslt (index!5163 lt!111124) (size!5274 (_keys!6100 thiss!1504))))) (or ((_ is Undefined!748) lt!111124) ((_ is Found!748) lt!111124) (not ((_ is MissingZero!748) lt!111124)) (and (bvsge (index!5162 lt!111124) #b00000000000000000000000000000000) (bvslt (index!5162 lt!111124) (size!5274 (_keys!6100 thiss!1504))))) (or ((_ is Undefined!748) lt!111124) ((_ is Found!748) lt!111124) ((_ is MissingZero!748) lt!111124) (not ((_ is MissingVacant!748) lt!111124)) (and (bvsge (index!5165 lt!111124) #b00000000000000000000000000000000) (bvslt (index!5165 lt!111124) (size!5274 (_keys!6100 thiss!1504))))) (or ((_ is Undefined!748) lt!111124) (ite ((_ is Found!748) lt!111124) (= (select (arr!4942 (_keys!6100 thiss!1504)) (index!5163 lt!111124)) key!932) (ite ((_ is MissingZero!748) lt!111124) (= (select (arr!4942 (_keys!6100 thiss!1504)) (index!5162 lt!111124)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!748) lt!111124) (= (select (arr!4942 (_keys!6100 thiss!1504)) (index!5165 lt!111124)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!58435 (= lt!111124 e!140583)))

(declare-fun c!36276 () Bool)

(assert (=> d!58435 (= c!36276 (and ((_ is Intermediate!748) lt!111122) (undefined!1560 lt!111122)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10436 (_ BitVec 32)) SeekEntryResult!748)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58435 (= lt!111122 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9779 thiss!1504)) key!932 (_keys!6100 thiss!1504) (mask!9779 thiss!1504)))))

(assert (=> d!58435 (validMask!0 (mask!9779 thiss!1504))))

(assert (=> d!58435 (= (seekEntryOrOpen!0 key!932 (_keys!6100 thiss!1504) (mask!9779 thiss!1504)) lt!111124)))

(declare-fun b!216069 () Bool)

(assert (=> b!216069 (= e!140582 (Found!748 (index!5164 lt!111122)))))

(assert (= (and d!58435 c!36276) b!216064))

(assert (= (and d!58435 (not c!36276)) b!216067))

(assert (= (and b!216067 c!36277) b!216069))

(assert (= (and b!216067 (not c!36277)) b!216068))

(assert (= (and b!216068 c!36275) b!216065))

(assert (= (and b!216068 (not c!36275)) b!216066))

(declare-fun m!242951 () Bool)

(assert (=> b!216066 m!242951))

(declare-fun m!242953 () Bool)

(assert (=> b!216067 m!242953))

(declare-fun m!242955 () Bool)

(assert (=> d!58435 m!242955))

(assert (=> d!58435 m!242955))

(declare-fun m!242957 () Bool)

(assert (=> d!58435 m!242957))

(declare-fun m!242959 () Bool)

(assert (=> d!58435 m!242959))

(assert (=> d!58435 m!242929))

(declare-fun m!242961 () Bool)

(assert (=> d!58435 m!242961))

(declare-fun m!242963 () Bool)

(assert (=> d!58435 m!242963))

(assert (=> b!216007 d!58435))

(declare-fun d!58437 () Bool)

(declare-fun res!105665 () Bool)

(declare-fun e!140591 () Bool)

(assert (=> d!58437 (=> res!105665 e!140591)))

(assert (=> d!58437 (= res!105665 (bvsge #b00000000000000000000000000000000 (size!5274 (_keys!6100 thiss!1504))))))

(assert (=> d!58437 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6100 thiss!1504) (mask!9779 thiss!1504)) e!140591)))

(declare-fun bm!20365 () Bool)

(declare-fun call!20368 () Bool)

(assert (=> bm!20365 (= call!20368 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6100 thiss!1504) (mask!9779 thiss!1504)))))

(declare-fun b!216078 () Bool)

(declare-fun e!140590 () Bool)

(declare-fun e!140592 () Bool)

(assert (=> b!216078 (= e!140590 e!140592)))

(declare-fun lt!111133 () (_ BitVec 64))

(assert (=> b!216078 (= lt!111133 (select (arr!4942 (_keys!6100 thiss!1504)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!6499 0))(
  ( (Unit!6500) )
))
(declare-fun lt!111132 () Unit!6499)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10436 (_ BitVec 64) (_ BitVec 32)) Unit!6499)

(assert (=> b!216078 (= lt!111132 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6100 thiss!1504) lt!111133 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!216078 (arrayContainsKey!0 (_keys!6100 thiss!1504) lt!111133 #b00000000000000000000000000000000)))

(declare-fun lt!111131 () Unit!6499)

(assert (=> b!216078 (= lt!111131 lt!111132)))

(declare-fun res!105666 () Bool)

(assert (=> b!216078 (= res!105666 (= (seekEntryOrOpen!0 (select (arr!4942 (_keys!6100 thiss!1504)) #b00000000000000000000000000000000) (_keys!6100 thiss!1504) (mask!9779 thiss!1504)) (Found!748 #b00000000000000000000000000000000)))))

(assert (=> b!216078 (=> (not res!105666) (not e!140592))))

(declare-fun b!216079 () Bool)

(assert (=> b!216079 (= e!140591 e!140590)))

(declare-fun c!36280 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!216079 (= c!36280 (validKeyInArray!0 (select (arr!4942 (_keys!6100 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!216080 () Bool)

(assert (=> b!216080 (= e!140592 call!20368)))

(declare-fun b!216081 () Bool)

(assert (=> b!216081 (= e!140590 call!20368)))

(assert (= (and d!58437 (not res!105665)) b!216079))

(assert (= (and b!216079 c!36280) b!216078))

(assert (= (and b!216079 (not c!36280)) b!216081))

(assert (= (and b!216078 res!105666) b!216080))

(assert (= (or b!216080 b!216081) bm!20365))

(declare-fun m!242965 () Bool)

(assert (=> bm!20365 m!242965))

(declare-fun m!242967 () Bool)

(assert (=> b!216078 m!242967))

(declare-fun m!242969 () Bool)

(assert (=> b!216078 m!242969))

(declare-fun m!242971 () Bool)

(assert (=> b!216078 m!242971))

(assert (=> b!216078 m!242967))

(declare-fun m!242973 () Bool)

(assert (=> b!216078 m!242973))

(assert (=> b!216079 m!242967))

(assert (=> b!216079 m!242967))

(declare-fun m!242975 () Bool)

(assert (=> b!216079 m!242975))

(assert (=> b!216015 d!58437))

(declare-fun b!216089 () Bool)

(declare-fun e!140598 () Bool)

(assert (=> b!216089 (= e!140598 tp_is_empty!5601)))

(declare-fun condMapEmpty!9561 () Bool)

(declare-fun mapDefault!9561 () ValueCell!2457)

(assert (=> mapNonEmpty!9555 (= condMapEmpty!9561 (= mapRest!9555 ((as const (Array (_ BitVec 32) ValueCell!2457)) mapDefault!9561)))))

(declare-fun mapRes!9561 () Bool)

(assert (=> mapNonEmpty!9555 (= tp!20342 (and e!140598 mapRes!9561))))

(declare-fun mapNonEmpty!9561 () Bool)

(declare-fun tp!20352 () Bool)

(declare-fun e!140597 () Bool)

(assert (=> mapNonEmpty!9561 (= mapRes!9561 (and tp!20352 e!140597))))

(declare-fun mapRest!9561 () (Array (_ BitVec 32) ValueCell!2457))

(declare-fun mapKey!9561 () (_ BitVec 32))

(declare-fun mapValue!9561 () ValueCell!2457)

(assert (=> mapNonEmpty!9561 (= mapRest!9555 (store mapRest!9561 mapKey!9561 mapValue!9561))))

(declare-fun mapIsEmpty!9561 () Bool)

(assert (=> mapIsEmpty!9561 mapRes!9561))

(declare-fun b!216088 () Bool)

(assert (=> b!216088 (= e!140597 tp_is_empty!5601)))

(assert (= (and mapNonEmpty!9555 condMapEmpty!9561) mapIsEmpty!9561))

(assert (= (and mapNonEmpty!9555 (not condMapEmpty!9561)) mapNonEmpty!9561))

(assert (= (and mapNonEmpty!9561 ((_ is ValueCellFull!2457) mapValue!9561)) b!216088))

(assert (= (and mapNonEmpty!9555 ((_ is ValueCellFull!2457) mapDefault!9561)) b!216089))

(declare-fun m!242977 () Bool)

(assert (=> mapNonEmpty!9561 m!242977))

(check-sat (not b_next!5739) (not b!216079) (not b!216078) (not b!216066) (not bm!20365) (not b!216051) (not d!58435) (not mapNonEmpty!9561) (not b!216049) b_and!12647 tp_is_empty!5601 (not b!216050) (not d!58433))
(check-sat b_and!12647 (not b_next!5739))
