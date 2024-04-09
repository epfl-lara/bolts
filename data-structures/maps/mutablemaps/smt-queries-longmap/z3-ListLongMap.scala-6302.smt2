; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80670 () Bool)

(assert start!80670)

(declare-fun b!946134 () Bool)

(declare-fun b_free!18135 () Bool)

(declare-fun b_next!18135 () Bool)

(assert (=> b!946134 (= b_free!18135 (not b_next!18135))))

(declare-fun tp!62943 () Bool)

(declare-fun b_and!29575 () Bool)

(assert (=> b!946134 (= tp!62943 b_and!29575)))

(declare-fun b!946130 () Bool)

(declare-fun res!635321 () Bool)

(declare-fun e!532355 () Bool)

(assert (=> b!946130 (=> (not res!635321) (not e!532355))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!946130 (= res!635321 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!32818 () Bool)

(declare-fun mapRes!32818 () Bool)

(assert (=> mapIsEmpty!32818 mapRes!32818))

(declare-fun res!635318 () Bool)

(assert (=> start!80670 (=> (not res!635318) (not e!532355))))

(declare-datatypes ((V!32489 0))(
  ( (V!32490 (val!10372 Int)) )
))
(declare-datatypes ((ValueCell!9840 0))(
  ( (ValueCellFull!9840 (v!12906 V!32489)) (EmptyCell!9840) )
))
(declare-datatypes ((array!57292 0))(
  ( (array!57293 (arr!27559 (Array (_ BitVec 32) ValueCell!9840)) (size!28030 (_ BitVec 32))) )
))
(declare-datatypes ((array!57294 0))(
  ( (array!57295 (arr!27560 (Array (_ BitVec 32) (_ BitVec 64))) (size!28031 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4830 0))(
  ( (LongMapFixedSize!4831 (defaultEntry!5712 Int) (mask!27402 (_ BitVec 32)) (extraKeys!5444 (_ BitVec 32)) (zeroValue!5548 V!32489) (minValue!5548 V!32489) (_size!2470 (_ BitVec 32)) (_keys!10600 array!57294) (_values!5735 array!57292) (_vacant!2470 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4830)

(declare-fun valid!1820 (LongMapFixedSize!4830) Bool)

(assert (=> start!80670 (= res!635318 (valid!1820 thiss!1141))))

(assert (=> start!80670 e!532355))

(declare-fun e!532353 () Bool)

(assert (=> start!80670 e!532353))

(assert (=> start!80670 true))

(declare-fun b!946131 () Bool)

(declare-fun e!532358 () Bool)

(declare-fun tp_is_empty!20643 () Bool)

(assert (=> b!946131 (= e!532358 tp_is_empty!20643)))

(declare-fun b!946132 () Bool)

(declare-fun e!532357 () Bool)

(assert (=> b!946132 (= e!532355 e!532357)))

(declare-fun res!635320 () Bool)

(assert (=> b!946132 (=> (not res!635320) (not e!532357))))

(declare-datatypes ((SeekEntryResult!9090 0))(
  ( (MissingZero!9090 (index!38730 (_ BitVec 32))) (Found!9090 (index!38731 (_ BitVec 32))) (Intermediate!9090 (undefined!9902 Bool) (index!38732 (_ BitVec 32)) (x!81344 (_ BitVec 32))) (Undefined!9090) (MissingVacant!9090 (index!38733 (_ BitVec 32))) )
))
(declare-fun lt!426191 () SeekEntryResult!9090)

(get-info :version)

(assert (=> b!946132 (= res!635320 ((_ is Found!9090) lt!426191))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57294 (_ BitVec 32)) SeekEntryResult!9090)

(assert (=> b!946132 (= lt!426191 (seekEntry!0 key!756 (_keys!10600 thiss!1141) (mask!27402 thiss!1141)))))

(declare-fun b!946133 () Bool)

(declare-fun e!532359 () Bool)

(assert (=> b!946133 (= e!532359 (and e!532358 mapRes!32818))))

(declare-fun condMapEmpty!32818 () Bool)

(declare-fun mapDefault!32818 () ValueCell!9840)

(assert (=> b!946133 (= condMapEmpty!32818 (= (arr!27559 (_values!5735 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9840)) mapDefault!32818)))))

(declare-fun mapNonEmpty!32818 () Bool)

(declare-fun tp!62944 () Bool)

(declare-fun e!532356 () Bool)

(assert (=> mapNonEmpty!32818 (= mapRes!32818 (and tp!62944 e!532356))))

(declare-fun mapValue!32818 () ValueCell!9840)

(declare-fun mapRest!32818 () (Array (_ BitVec 32) ValueCell!9840))

(declare-fun mapKey!32818 () (_ BitVec 32))

(assert (=> mapNonEmpty!32818 (= (arr!27559 (_values!5735 thiss!1141)) (store mapRest!32818 mapKey!32818 mapValue!32818))))

(declare-fun array_inv!21348 (array!57294) Bool)

(declare-fun array_inv!21349 (array!57292) Bool)

(assert (=> b!946134 (= e!532353 (and tp!62943 tp_is_empty!20643 (array_inv!21348 (_keys!10600 thiss!1141)) (array_inv!21349 (_values!5735 thiss!1141)) e!532359))))

(declare-fun b!946135 () Bool)

(assert (=> b!946135 (= e!532356 tp_is_empty!20643)))

(declare-fun b!946136 () Bool)

(declare-fun e!532354 () Bool)

(assert (=> b!946136 (= e!532357 (not e!532354))))

(declare-fun res!635319 () Bool)

(assert (=> b!946136 (=> res!635319 e!532354)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!946136 (= res!635319 (not (validMask!0 (mask!27402 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!57294 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!946136 (arrayContainsKey!0 (_keys!10600 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31897 0))(
  ( (Unit!31898) )
))
(declare-fun lt!426190 () Unit!31897)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57294 (_ BitVec 64) (_ BitVec 32)) Unit!31897)

(assert (=> b!946136 (= lt!426190 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10600 thiss!1141) key!756 (index!38731 lt!426191)))))

(declare-fun b!946137 () Bool)

(assert (=> b!946137 (= e!532354 (or (not (= (size!28030 (_values!5735 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27402 thiss!1141)))) (= (size!28031 (_keys!10600 thiss!1141)) (size!28030 (_values!5735 thiss!1141)))))))

(assert (= (and start!80670 res!635318) b!946130))

(assert (= (and b!946130 res!635321) b!946132))

(assert (= (and b!946132 res!635320) b!946136))

(assert (= (and b!946136 (not res!635319)) b!946137))

(assert (= (and b!946133 condMapEmpty!32818) mapIsEmpty!32818))

(assert (= (and b!946133 (not condMapEmpty!32818)) mapNonEmpty!32818))

(assert (= (and mapNonEmpty!32818 ((_ is ValueCellFull!9840) mapValue!32818)) b!946135))

(assert (= (and b!946133 ((_ is ValueCellFull!9840) mapDefault!32818)) b!946131))

(assert (= b!946134 b!946133))

(assert (= start!80670 b!946134))

(declare-fun m!879683 () Bool)

(assert (=> mapNonEmpty!32818 m!879683))

(declare-fun m!879685 () Bool)

(assert (=> b!946132 m!879685))

(declare-fun m!879687 () Bool)

(assert (=> b!946134 m!879687))

(declare-fun m!879689 () Bool)

(assert (=> b!946134 m!879689))

(declare-fun m!879691 () Bool)

(assert (=> start!80670 m!879691))

(declare-fun m!879693 () Bool)

(assert (=> b!946136 m!879693))

(declare-fun m!879695 () Bool)

(assert (=> b!946136 m!879695))

(declare-fun m!879697 () Bool)

(assert (=> b!946136 m!879697))

(check-sat (not b!946134) (not b!946136) (not b!946132) b_and!29575 (not b_next!18135) (not start!80670) tp_is_empty!20643 (not mapNonEmpty!32818))
(check-sat b_and!29575 (not b_next!18135))
(get-model)

(declare-fun d!114435 () Bool)

(assert (=> d!114435 (= (array_inv!21348 (_keys!10600 thiss!1141)) (bvsge (size!28031 (_keys!10600 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!946134 d!114435))

(declare-fun d!114437 () Bool)

(assert (=> d!114437 (= (array_inv!21349 (_values!5735 thiss!1141)) (bvsge (size!28030 (_values!5735 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!946134 d!114437))

(declare-fun d!114439 () Bool)

(declare-fun res!635340 () Bool)

(declare-fun e!532387 () Bool)

(assert (=> d!114439 (=> (not res!635340) (not e!532387))))

(declare-fun simpleValid!356 (LongMapFixedSize!4830) Bool)

(assert (=> d!114439 (= res!635340 (simpleValid!356 thiss!1141))))

(assert (=> d!114439 (= (valid!1820 thiss!1141) e!532387)))

(declare-fun b!946168 () Bool)

(declare-fun res!635341 () Bool)

(assert (=> b!946168 (=> (not res!635341) (not e!532387))))

(declare-fun arrayCountValidKeys!0 (array!57294 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!946168 (= res!635341 (= (arrayCountValidKeys!0 (_keys!10600 thiss!1141) #b00000000000000000000000000000000 (size!28031 (_keys!10600 thiss!1141))) (_size!2470 thiss!1141)))))

(declare-fun b!946169 () Bool)

(declare-fun res!635342 () Bool)

(assert (=> b!946169 (=> (not res!635342) (not e!532387))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57294 (_ BitVec 32)) Bool)

(assert (=> b!946169 (= res!635342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10600 thiss!1141) (mask!27402 thiss!1141)))))

(declare-fun b!946170 () Bool)

(declare-datatypes ((List!19426 0))(
  ( (Nil!19423) (Cons!19422 (h!20575 (_ BitVec 64)) (t!27755 List!19426)) )
))
(declare-fun arrayNoDuplicates!0 (array!57294 (_ BitVec 32) List!19426) Bool)

(assert (=> b!946170 (= e!532387 (arrayNoDuplicates!0 (_keys!10600 thiss!1141) #b00000000000000000000000000000000 Nil!19423))))

(assert (= (and d!114439 res!635340) b!946168))

(assert (= (and b!946168 res!635341) b!946169))

(assert (= (and b!946169 res!635342) b!946170))

(declare-fun m!879715 () Bool)

(assert (=> d!114439 m!879715))

(declare-fun m!879717 () Bool)

(assert (=> b!946168 m!879717))

(declare-fun m!879719 () Bool)

(assert (=> b!946169 m!879719))

(declare-fun m!879721 () Bool)

(assert (=> b!946170 m!879721))

(assert (=> start!80670 d!114439))

(declare-fun d!114441 () Bool)

(assert (=> d!114441 (= (validMask!0 (mask!27402 thiss!1141)) (and (or (= (mask!27402 thiss!1141) #b00000000000000000000000000000111) (= (mask!27402 thiss!1141) #b00000000000000000000000000001111) (= (mask!27402 thiss!1141) #b00000000000000000000000000011111) (= (mask!27402 thiss!1141) #b00000000000000000000000000111111) (= (mask!27402 thiss!1141) #b00000000000000000000000001111111) (= (mask!27402 thiss!1141) #b00000000000000000000000011111111) (= (mask!27402 thiss!1141) #b00000000000000000000000111111111) (= (mask!27402 thiss!1141) #b00000000000000000000001111111111) (= (mask!27402 thiss!1141) #b00000000000000000000011111111111) (= (mask!27402 thiss!1141) #b00000000000000000000111111111111) (= (mask!27402 thiss!1141) #b00000000000000000001111111111111) (= (mask!27402 thiss!1141) #b00000000000000000011111111111111) (= (mask!27402 thiss!1141) #b00000000000000000111111111111111) (= (mask!27402 thiss!1141) #b00000000000000001111111111111111) (= (mask!27402 thiss!1141) #b00000000000000011111111111111111) (= (mask!27402 thiss!1141) #b00000000000000111111111111111111) (= (mask!27402 thiss!1141) #b00000000000001111111111111111111) (= (mask!27402 thiss!1141) #b00000000000011111111111111111111) (= (mask!27402 thiss!1141) #b00000000000111111111111111111111) (= (mask!27402 thiss!1141) #b00000000001111111111111111111111) (= (mask!27402 thiss!1141) #b00000000011111111111111111111111) (= (mask!27402 thiss!1141) #b00000000111111111111111111111111) (= (mask!27402 thiss!1141) #b00000001111111111111111111111111) (= (mask!27402 thiss!1141) #b00000011111111111111111111111111) (= (mask!27402 thiss!1141) #b00000111111111111111111111111111) (= (mask!27402 thiss!1141) #b00001111111111111111111111111111) (= (mask!27402 thiss!1141) #b00011111111111111111111111111111) (= (mask!27402 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27402 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!946136 d!114441))

(declare-fun d!114443 () Bool)

(declare-fun res!635347 () Bool)

(declare-fun e!532392 () Bool)

(assert (=> d!114443 (=> res!635347 e!532392)))

(assert (=> d!114443 (= res!635347 (= (select (arr!27560 (_keys!10600 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!114443 (= (arrayContainsKey!0 (_keys!10600 thiss!1141) key!756 #b00000000000000000000000000000000) e!532392)))

(declare-fun b!946175 () Bool)

(declare-fun e!532393 () Bool)

(assert (=> b!946175 (= e!532392 e!532393)))

(declare-fun res!635348 () Bool)

(assert (=> b!946175 (=> (not res!635348) (not e!532393))))

(assert (=> b!946175 (= res!635348 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28031 (_keys!10600 thiss!1141))))))

(declare-fun b!946176 () Bool)

(assert (=> b!946176 (= e!532393 (arrayContainsKey!0 (_keys!10600 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!114443 (not res!635347)) b!946175))

(assert (= (and b!946175 res!635348) b!946176))

(declare-fun m!879723 () Bool)

(assert (=> d!114443 m!879723))

(declare-fun m!879725 () Bool)

(assert (=> b!946176 m!879725))

(assert (=> b!946136 d!114443))

(declare-fun d!114445 () Bool)

(assert (=> d!114445 (arrayContainsKey!0 (_keys!10600 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!426200 () Unit!31897)

(declare-fun choose!13 (array!57294 (_ BitVec 64) (_ BitVec 32)) Unit!31897)

(assert (=> d!114445 (= lt!426200 (choose!13 (_keys!10600 thiss!1141) key!756 (index!38731 lt!426191)))))

(assert (=> d!114445 (bvsge (index!38731 lt!426191) #b00000000000000000000000000000000)))

(assert (=> d!114445 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10600 thiss!1141) key!756 (index!38731 lt!426191)) lt!426200)))

(declare-fun bs!26593 () Bool)

(assert (= bs!26593 d!114445))

(assert (=> bs!26593 m!879695))

(declare-fun m!879727 () Bool)

(assert (=> bs!26593 m!879727))

(assert (=> b!946136 d!114445))

(declare-fun b!946189 () Bool)

(declare-fun e!532401 () SeekEntryResult!9090)

(assert (=> b!946189 (= e!532401 Undefined!9090)))

(declare-fun b!946190 () Bool)

(declare-fun e!532400 () SeekEntryResult!9090)

(declare-fun lt!426211 () SeekEntryResult!9090)

(assert (=> b!946190 (= e!532400 (ite ((_ is MissingVacant!9090) lt!426211) (MissingZero!9090 (index!38733 lt!426211)) lt!426211))))

(declare-fun lt!426210 () SeekEntryResult!9090)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57294 (_ BitVec 32)) SeekEntryResult!9090)

(assert (=> b!946190 (= lt!426211 (seekKeyOrZeroReturnVacant!0 (x!81344 lt!426210) (index!38732 lt!426210) (index!38732 lt!426210) key!756 (_keys!10600 thiss!1141) (mask!27402 thiss!1141)))))

(declare-fun b!946191 () Bool)

(assert (=> b!946191 (= e!532400 (MissingZero!9090 (index!38732 lt!426210)))))

(declare-fun d!114447 () Bool)

(declare-fun lt!426212 () SeekEntryResult!9090)

(assert (=> d!114447 (and (or ((_ is MissingVacant!9090) lt!426212) (not ((_ is Found!9090) lt!426212)) (and (bvsge (index!38731 lt!426212) #b00000000000000000000000000000000) (bvslt (index!38731 lt!426212) (size!28031 (_keys!10600 thiss!1141))))) (not ((_ is MissingVacant!9090) lt!426212)) (or (not ((_ is Found!9090) lt!426212)) (= (select (arr!27560 (_keys!10600 thiss!1141)) (index!38731 lt!426212)) key!756)))))

(assert (=> d!114447 (= lt!426212 e!532401)))

(declare-fun c!98460 () Bool)

(assert (=> d!114447 (= c!98460 (and ((_ is Intermediate!9090) lt!426210) (undefined!9902 lt!426210)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57294 (_ BitVec 32)) SeekEntryResult!9090)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114447 (= lt!426210 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27402 thiss!1141)) key!756 (_keys!10600 thiss!1141) (mask!27402 thiss!1141)))))

(assert (=> d!114447 (validMask!0 (mask!27402 thiss!1141))))

(assert (=> d!114447 (= (seekEntry!0 key!756 (_keys!10600 thiss!1141) (mask!27402 thiss!1141)) lt!426212)))

(declare-fun b!946192 () Bool)

(declare-fun e!532402 () SeekEntryResult!9090)

(assert (=> b!946192 (= e!532402 (Found!9090 (index!38732 lt!426210)))))

(declare-fun b!946193 () Bool)

(declare-fun c!98461 () Bool)

(declare-fun lt!426209 () (_ BitVec 64))

(assert (=> b!946193 (= c!98461 (= lt!426209 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!946193 (= e!532402 e!532400)))

(declare-fun b!946194 () Bool)

(assert (=> b!946194 (= e!532401 e!532402)))

(assert (=> b!946194 (= lt!426209 (select (arr!27560 (_keys!10600 thiss!1141)) (index!38732 lt!426210)))))

(declare-fun c!98459 () Bool)

(assert (=> b!946194 (= c!98459 (= lt!426209 key!756))))

(assert (= (and d!114447 c!98460) b!946189))

(assert (= (and d!114447 (not c!98460)) b!946194))

(assert (= (and b!946194 c!98459) b!946192))

(assert (= (and b!946194 (not c!98459)) b!946193))

(assert (= (and b!946193 c!98461) b!946191))

(assert (= (and b!946193 (not c!98461)) b!946190))

(declare-fun m!879729 () Bool)

(assert (=> b!946190 m!879729))

(declare-fun m!879731 () Bool)

(assert (=> d!114447 m!879731))

(declare-fun m!879733 () Bool)

(assert (=> d!114447 m!879733))

(assert (=> d!114447 m!879733))

(declare-fun m!879735 () Bool)

(assert (=> d!114447 m!879735))

(assert (=> d!114447 m!879693))

(declare-fun m!879737 () Bool)

(assert (=> b!946194 m!879737))

(assert (=> b!946132 d!114447))

(declare-fun condMapEmpty!32824 () Bool)

(declare-fun mapDefault!32824 () ValueCell!9840)

(assert (=> mapNonEmpty!32818 (= condMapEmpty!32824 (= mapRest!32818 ((as const (Array (_ BitVec 32) ValueCell!9840)) mapDefault!32824)))))

(declare-fun e!532408 () Bool)

(declare-fun mapRes!32824 () Bool)

(assert (=> mapNonEmpty!32818 (= tp!62944 (and e!532408 mapRes!32824))))

(declare-fun b!946202 () Bool)

(assert (=> b!946202 (= e!532408 tp_is_empty!20643)))

(declare-fun b!946201 () Bool)

(declare-fun e!532407 () Bool)

(assert (=> b!946201 (= e!532407 tp_is_empty!20643)))

(declare-fun mapNonEmpty!32824 () Bool)

(declare-fun tp!62953 () Bool)

(assert (=> mapNonEmpty!32824 (= mapRes!32824 (and tp!62953 e!532407))))

(declare-fun mapRest!32824 () (Array (_ BitVec 32) ValueCell!9840))

(declare-fun mapValue!32824 () ValueCell!9840)

(declare-fun mapKey!32824 () (_ BitVec 32))

(assert (=> mapNonEmpty!32824 (= mapRest!32818 (store mapRest!32824 mapKey!32824 mapValue!32824))))

(declare-fun mapIsEmpty!32824 () Bool)

(assert (=> mapIsEmpty!32824 mapRes!32824))

(assert (= (and mapNonEmpty!32818 condMapEmpty!32824) mapIsEmpty!32824))

(assert (= (and mapNonEmpty!32818 (not condMapEmpty!32824)) mapNonEmpty!32824))

(assert (= (and mapNonEmpty!32824 ((_ is ValueCellFull!9840) mapValue!32824)) b!946201))

(assert (= (and mapNonEmpty!32818 ((_ is ValueCellFull!9840) mapDefault!32824)) b!946202))

(declare-fun m!879739 () Bool)

(assert (=> mapNonEmpty!32824 m!879739))

(check-sat (not mapNonEmpty!32824) b_and!29575 (not b!946176) (not b_next!18135) (not b!946190) (not b!946169) (not d!114447) tp_is_empty!20643 (not d!114439) (not b!946170) (not b!946168) (not d!114445))
(check-sat b_and!29575 (not b_next!18135))
(get-model)

(declare-fun b!946215 () Bool)

(declare-fun e!532417 () SeekEntryResult!9090)

(declare-fun e!532415 () SeekEntryResult!9090)

(assert (=> b!946215 (= e!532417 e!532415)))

(declare-fun c!98470 () Bool)

(declare-fun lt!426218 () (_ BitVec 64))

(assert (=> b!946215 (= c!98470 (= lt!426218 key!756))))

(declare-fun b!946216 () Bool)

(assert (=> b!946216 (= e!532417 Undefined!9090)))

(declare-fun b!946217 () Bool)

(declare-fun e!532416 () SeekEntryResult!9090)

(assert (=> b!946217 (= e!532416 (MissingVacant!9090 (index!38732 lt!426210)))))

(declare-fun d!114449 () Bool)

(declare-fun lt!426217 () SeekEntryResult!9090)

(assert (=> d!114449 (and (or ((_ is Undefined!9090) lt!426217) (not ((_ is Found!9090) lt!426217)) (and (bvsge (index!38731 lt!426217) #b00000000000000000000000000000000) (bvslt (index!38731 lt!426217) (size!28031 (_keys!10600 thiss!1141))))) (or ((_ is Undefined!9090) lt!426217) ((_ is Found!9090) lt!426217) (not ((_ is MissingVacant!9090) lt!426217)) (not (= (index!38733 lt!426217) (index!38732 lt!426210))) (and (bvsge (index!38733 lt!426217) #b00000000000000000000000000000000) (bvslt (index!38733 lt!426217) (size!28031 (_keys!10600 thiss!1141))))) (or ((_ is Undefined!9090) lt!426217) (ite ((_ is Found!9090) lt!426217) (= (select (arr!27560 (_keys!10600 thiss!1141)) (index!38731 lt!426217)) key!756) (and ((_ is MissingVacant!9090) lt!426217) (= (index!38733 lt!426217) (index!38732 lt!426210)) (= (select (arr!27560 (_keys!10600 thiss!1141)) (index!38733 lt!426217)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!114449 (= lt!426217 e!532417)))

(declare-fun c!98469 () Bool)

(assert (=> d!114449 (= c!98469 (bvsge (x!81344 lt!426210) #b01111111111111111111111111111110))))

(assert (=> d!114449 (= lt!426218 (select (arr!27560 (_keys!10600 thiss!1141)) (index!38732 lt!426210)))))

(assert (=> d!114449 (validMask!0 (mask!27402 thiss!1141))))

(assert (=> d!114449 (= (seekKeyOrZeroReturnVacant!0 (x!81344 lt!426210) (index!38732 lt!426210) (index!38732 lt!426210) key!756 (_keys!10600 thiss!1141) (mask!27402 thiss!1141)) lt!426217)))

(declare-fun b!946218 () Bool)

(assert (=> b!946218 (= e!532415 (Found!9090 (index!38732 lt!426210)))))

(declare-fun b!946219 () Bool)

(declare-fun c!98468 () Bool)

(assert (=> b!946219 (= c!98468 (= lt!426218 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!946219 (= e!532415 e!532416)))

(declare-fun b!946220 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!946220 (= e!532416 (seekKeyOrZeroReturnVacant!0 (bvadd (x!81344 lt!426210) #b00000000000000000000000000000001) (nextIndex!0 (index!38732 lt!426210) (x!81344 lt!426210) (mask!27402 thiss!1141)) (index!38732 lt!426210) key!756 (_keys!10600 thiss!1141) (mask!27402 thiss!1141)))))

(assert (= (and d!114449 c!98469) b!946216))

(assert (= (and d!114449 (not c!98469)) b!946215))

(assert (= (and b!946215 c!98470) b!946218))

(assert (= (and b!946215 (not c!98470)) b!946219))

(assert (= (and b!946219 c!98468) b!946217))

(assert (= (and b!946219 (not c!98468)) b!946220))

(declare-fun m!879741 () Bool)

(assert (=> d!114449 m!879741))

(declare-fun m!879743 () Bool)

(assert (=> d!114449 m!879743))

(assert (=> d!114449 m!879737))

(assert (=> d!114449 m!879693))

(declare-fun m!879745 () Bool)

(assert (=> b!946220 m!879745))

(assert (=> b!946220 m!879745))

(declare-fun m!879747 () Bool)

(assert (=> b!946220 m!879747))

(assert (=> b!946190 d!114449))

(declare-fun b!946232 () Bool)

(declare-fun e!532427 () Bool)

(declare-fun call!41079 () Bool)

(assert (=> b!946232 (= e!532427 call!41079)))

(declare-fun b!946233 () Bool)

(assert (=> b!946233 (= e!532427 call!41079)))

(declare-fun bm!41076 () Bool)

(declare-fun c!98473 () Bool)

(assert (=> bm!41076 (= call!41079 (arrayNoDuplicates!0 (_keys!10600 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!98473 (Cons!19422 (select (arr!27560 (_keys!10600 thiss!1141)) #b00000000000000000000000000000000) Nil!19423) Nil!19423)))))

(declare-fun d!114451 () Bool)

(declare-fun res!635357 () Bool)

(declare-fun e!532429 () Bool)

(assert (=> d!114451 (=> res!635357 e!532429)))

(assert (=> d!114451 (= res!635357 (bvsge #b00000000000000000000000000000000 (size!28031 (_keys!10600 thiss!1141))))))

(assert (=> d!114451 (= (arrayNoDuplicates!0 (_keys!10600 thiss!1141) #b00000000000000000000000000000000 Nil!19423) e!532429)))

(declare-fun b!946231 () Bool)

(declare-fun e!532426 () Bool)

(assert (=> b!946231 (= e!532426 e!532427)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!946231 (= c!98473 (validKeyInArray!0 (select (arr!27560 (_keys!10600 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!946234 () Bool)

(declare-fun e!532428 () Bool)

(declare-fun contains!5202 (List!19426 (_ BitVec 64)) Bool)

(assert (=> b!946234 (= e!532428 (contains!5202 Nil!19423 (select (arr!27560 (_keys!10600 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!946235 () Bool)

(assert (=> b!946235 (= e!532429 e!532426)))

(declare-fun res!635356 () Bool)

(assert (=> b!946235 (=> (not res!635356) (not e!532426))))

(assert (=> b!946235 (= res!635356 (not e!532428))))

(declare-fun res!635355 () Bool)

(assert (=> b!946235 (=> (not res!635355) (not e!532428))))

(assert (=> b!946235 (= res!635355 (validKeyInArray!0 (select (arr!27560 (_keys!10600 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114451 (not res!635357)) b!946235))

(assert (= (and b!946235 res!635355) b!946234))

(assert (= (and b!946235 res!635356) b!946231))

(assert (= (and b!946231 c!98473) b!946233))

(assert (= (and b!946231 (not c!98473)) b!946232))

(assert (= (or b!946233 b!946232) bm!41076))

(assert (=> bm!41076 m!879723))

(declare-fun m!879749 () Bool)

(assert (=> bm!41076 m!879749))

(assert (=> b!946231 m!879723))

(assert (=> b!946231 m!879723))

(declare-fun m!879751 () Bool)

(assert (=> b!946231 m!879751))

(assert (=> b!946234 m!879723))

(assert (=> b!946234 m!879723))

(declare-fun m!879753 () Bool)

(assert (=> b!946234 m!879753))

(assert (=> b!946235 m!879723))

(assert (=> b!946235 m!879723))

(assert (=> b!946235 m!879751))

(assert (=> b!946170 d!114451))

(declare-fun d!114453 () Bool)

(declare-fun res!635358 () Bool)

(declare-fun e!532430 () Bool)

(assert (=> d!114453 (=> res!635358 e!532430)))

(assert (=> d!114453 (= res!635358 (= (select (arr!27560 (_keys!10600 thiss!1141)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!756))))

(assert (=> d!114453 (= (arrayContainsKey!0 (_keys!10600 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!532430)))

(declare-fun b!946236 () Bool)

(declare-fun e!532431 () Bool)

(assert (=> b!946236 (= e!532430 e!532431)))

(declare-fun res!635359 () Bool)

(assert (=> b!946236 (=> (not res!635359) (not e!532431))))

(assert (=> b!946236 (= res!635359 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!28031 (_keys!10600 thiss!1141))))))

(declare-fun b!946237 () Bool)

(assert (=> b!946237 (= e!532431 (arrayContainsKey!0 (_keys!10600 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!114453 (not res!635358)) b!946236))

(assert (= (and b!946236 res!635359) b!946237))

(declare-fun m!879755 () Bool)

(assert (=> d!114453 m!879755))

(declare-fun m!879757 () Bool)

(assert (=> b!946237 m!879757))

(assert (=> b!946176 d!114453))

(assert (=> d!114445 d!114443))

(declare-fun d!114455 () Bool)

(assert (=> d!114455 (arrayContainsKey!0 (_keys!10600 thiss!1141) key!756 #b00000000000000000000000000000000)))

(assert (=> d!114455 true))

(declare-fun _$60!433 () Unit!31897)

(assert (=> d!114455 (= (choose!13 (_keys!10600 thiss!1141) key!756 (index!38731 lt!426191)) _$60!433)))

(declare-fun bs!26594 () Bool)

(assert (= bs!26594 d!114455))

(assert (=> bs!26594 m!879695))

(assert (=> d!114445 d!114455))

(declare-fun b!946248 () Bool)

(declare-fun res!635368 () Bool)

(declare-fun e!532434 () Bool)

(assert (=> b!946248 (=> (not res!635368) (not e!532434))))

(declare-fun size!28034 (LongMapFixedSize!4830) (_ BitVec 32))

(assert (=> b!946248 (= res!635368 (= (size!28034 thiss!1141) (bvadd (_size!2470 thiss!1141) (bvsdiv (bvadd (extraKeys!5444 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!946247 () Bool)

(declare-fun res!635369 () Bool)

(assert (=> b!946247 (=> (not res!635369) (not e!532434))))

(assert (=> b!946247 (= res!635369 (bvsge (size!28034 thiss!1141) (_size!2470 thiss!1141)))))

(declare-fun b!946246 () Bool)

(declare-fun res!635371 () Bool)

(assert (=> b!946246 (=> (not res!635371) (not e!532434))))

(assert (=> b!946246 (= res!635371 (and (= (size!28030 (_values!5735 thiss!1141)) (bvadd (mask!27402 thiss!1141) #b00000000000000000000000000000001)) (= (size!28031 (_keys!10600 thiss!1141)) (size!28030 (_values!5735 thiss!1141))) (bvsge (_size!2470 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2470 thiss!1141) (bvadd (mask!27402 thiss!1141) #b00000000000000000000000000000001))))))

(declare-fun d!114457 () Bool)

(declare-fun res!635370 () Bool)

(assert (=> d!114457 (=> (not res!635370) (not e!532434))))

(assert (=> d!114457 (= res!635370 (validMask!0 (mask!27402 thiss!1141)))))

(assert (=> d!114457 (= (simpleValid!356 thiss!1141) e!532434)))

(declare-fun b!946249 () Bool)

(assert (=> b!946249 (= e!532434 (and (bvsge (extraKeys!5444 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5444 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2470 thiss!1141) #b00000000000000000000000000000000)))))

(assert (= (and d!114457 res!635370) b!946246))

(assert (= (and b!946246 res!635371) b!946247))

(assert (= (and b!946247 res!635369) b!946248))

(assert (= (and b!946248 res!635368) b!946249))

(declare-fun m!879759 () Bool)

(assert (=> b!946248 m!879759))

(assert (=> b!946247 m!879759))

(assert (=> d!114457 m!879693))

(assert (=> d!114439 d!114457))

(declare-fun b!946268 () Bool)

(declare-fun lt!426224 () SeekEntryResult!9090)

(assert (=> b!946268 (and (bvsge (index!38732 lt!426224) #b00000000000000000000000000000000) (bvslt (index!38732 lt!426224) (size!28031 (_keys!10600 thiss!1141))))))

(declare-fun e!532449 () Bool)

(assert (=> b!946268 (= e!532449 (= (select (arr!27560 (_keys!10600 thiss!1141)) (index!38732 lt!426224)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!946269 () Bool)

(assert (=> b!946269 (and (bvsge (index!38732 lt!426224) #b00000000000000000000000000000000) (bvslt (index!38732 lt!426224) (size!28031 (_keys!10600 thiss!1141))))))

(declare-fun res!635380 () Bool)

(assert (=> b!946269 (= res!635380 (= (select (arr!27560 (_keys!10600 thiss!1141)) (index!38732 lt!426224)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!946269 (=> res!635380 e!532449)))

(declare-fun b!946270 () Bool)

(declare-fun e!532446 () Bool)

(declare-fun e!532447 () Bool)

(assert (=> b!946270 (= e!532446 e!532447)))

(declare-fun res!635378 () Bool)

(assert (=> b!946270 (= res!635378 (and ((_ is Intermediate!9090) lt!426224) (not (undefined!9902 lt!426224)) (bvslt (x!81344 lt!426224) #b01111111111111111111111111111110) (bvsge (x!81344 lt!426224) #b00000000000000000000000000000000) (bvsge (x!81344 lt!426224) #b00000000000000000000000000000000)))))

(assert (=> b!946270 (=> (not res!635378) (not e!532447))))

(declare-fun b!946271 () Bool)

(assert (=> b!946271 (= e!532446 (bvsge (x!81344 lt!426224) #b01111111111111111111111111111110))))

(declare-fun d!114459 () Bool)

(assert (=> d!114459 e!532446))

(declare-fun c!98481 () Bool)

(assert (=> d!114459 (= c!98481 (and ((_ is Intermediate!9090) lt!426224) (undefined!9902 lt!426224)))))

(declare-fun e!532448 () SeekEntryResult!9090)

(assert (=> d!114459 (= lt!426224 e!532448)))

(declare-fun c!98480 () Bool)

(assert (=> d!114459 (= c!98480 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!426223 () (_ BitVec 64))

(assert (=> d!114459 (= lt!426223 (select (arr!27560 (_keys!10600 thiss!1141)) (toIndex!0 key!756 (mask!27402 thiss!1141))))))

(assert (=> d!114459 (validMask!0 (mask!27402 thiss!1141))))

(assert (=> d!114459 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27402 thiss!1141)) key!756 (_keys!10600 thiss!1141) (mask!27402 thiss!1141)) lt!426224)))

(declare-fun b!946272 () Bool)

(assert (=> b!946272 (and (bvsge (index!38732 lt!426224) #b00000000000000000000000000000000) (bvslt (index!38732 lt!426224) (size!28031 (_keys!10600 thiss!1141))))))

(declare-fun res!635379 () Bool)

(assert (=> b!946272 (= res!635379 (= (select (arr!27560 (_keys!10600 thiss!1141)) (index!38732 lt!426224)) key!756))))

(assert (=> b!946272 (=> res!635379 e!532449)))

(assert (=> b!946272 (= e!532447 e!532449)))

(declare-fun b!946273 () Bool)

(declare-fun e!532445 () SeekEntryResult!9090)

(assert (=> b!946273 (= e!532445 (Intermediate!9090 false (toIndex!0 key!756 (mask!27402 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!946274 () Bool)

(assert (=> b!946274 (= e!532445 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!756 (mask!27402 thiss!1141)) #b00000000000000000000000000000000 (mask!27402 thiss!1141)) key!756 (_keys!10600 thiss!1141) (mask!27402 thiss!1141)))))

(declare-fun b!946275 () Bool)

(assert (=> b!946275 (= e!532448 (Intermediate!9090 true (toIndex!0 key!756 (mask!27402 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!946276 () Bool)

(assert (=> b!946276 (= e!532448 e!532445)))

(declare-fun c!98482 () Bool)

(assert (=> b!946276 (= c!98482 (or (= lt!426223 key!756) (= (bvadd lt!426223 lt!426223) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!114459 c!98480) b!946275))

(assert (= (and d!114459 (not c!98480)) b!946276))

(assert (= (and b!946276 c!98482) b!946273))

(assert (= (and b!946276 (not c!98482)) b!946274))

(assert (= (and d!114459 c!98481) b!946271))

(assert (= (and d!114459 (not c!98481)) b!946270))

(assert (= (and b!946270 res!635378) b!946272))

(assert (= (and b!946272 (not res!635379)) b!946269))

(assert (= (and b!946269 (not res!635380)) b!946268))

(assert (=> d!114459 m!879733))

(declare-fun m!879761 () Bool)

(assert (=> d!114459 m!879761))

(assert (=> d!114459 m!879693))

(assert (=> b!946274 m!879733))

(declare-fun m!879763 () Bool)

(assert (=> b!946274 m!879763))

(assert (=> b!946274 m!879763))

(declare-fun m!879765 () Bool)

(assert (=> b!946274 m!879765))

(declare-fun m!879767 () Bool)

(assert (=> b!946272 m!879767))

(assert (=> b!946268 m!879767))

(assert (=> b!946269 m!879767))

(assert (=> d!114447 d!114459))

(declare-fun d!114461 () Bool)

(declare-fun lt!426230 () (_ BitVec 32))

(declare-fun lt!426229 () (_ BitVec 32))

(assert (=> d!114461 (= lt!426230 (bvmul (bvxor lt!426229 (bvlshr lt!426229 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!114461 (= lt!426229 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!114461 (and (bvsge (mask!27402 thiss!1141) #b00000000000000000000000000000000) (let ((res!635381 (let ((h!20576 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!81361 (bvmul (bvxor h!20576 (bvlshr h!20576 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!81361 (bvlshr x!81361 #b00000000000000000000000000001101)) (mask!27402 thiss!1141)))))) (and (bvslt res!635381 (bvadd (mask!27402 thiss!1141) #b00000000000000000000000000000001)) (bvsge res!635381 #b00000000000000000000000000000000))))))

(assert (=> d!114461 (= (toIndex!0 key!756 (mask!27402 thiss!1141)) (bvand (bvxor lt!426230 (bvlshr lt!426230 #b00000000000000000000000000001101)) (mask!27402 thiss!1141)))))

(assert (=> d!114447 d!114461))

(assert (=> d!114447 d!114441))

(declare-fun d!114463 () Bool)

(declare-fun lt!426233 () (_ BitVec 32))

(assert (=> d!114463 (and (bvsge lt!426233 #b00000000000000000000000000000000) (bvsle lt!426233 (bvsub (size!28031 (_keys!10600 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun e!532455 () (_ BitVec 32))

(assert (=> d!114463 (= lt!426233 e!532455)))

(declare-fun c!98488 () Bool)

(assert (=> d!114463 (= c!98488 (bvsge #b00000000000000000000000000000000 (size!28031 (_keys!10600 thiss!1141))))))

(assert (=> d!114463 (and (bvsle #b00000000000000000000000000000000 (size!28031 (_keys!10600 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!28031 (_keys!10600 thiss!1141)) (size!28031 (_keys!10600 thiss!1141))))))

(assert (=> d!114463 (= (arrayCountValidKeys!0 (_keys!10600 thiss!1141) #b00000000000000000000000000000000 (size!28031 (_keys!10600 thiss!1141))) lt!426233)))

(declare-fun b!946285 () Bool)

(declare-fun e!532454 () (_ BitVec 32))

(declare-fun call!41082 () (_ BitVec 32))

(assert (=> b!946285 (= e!532454 call!41082)))

(declare-fun b!946286 () Bool)

(assert (=> b!946286 (= e!532455 #b00000000000000000000000000000000)))

(declare-fun b!946287 () Bool)

(assert (=> b!946287 (= e!532454 (bvadd #b00000000000000000000000000000001 call!41082))))

(declare-fun bm!41079 () Bool)

(assert (=> bm!41079 (= call!41082 (arrayCountValidKeys!0 (_keys!10600 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28031 (_keys!10600 thiss!1141))))))

(declare-fun b!946288 () Bool)

(assert (=> b!946288 (= e!532455 e!532454)))

(declare-fun c!98487 () Bool)

(assert (=> b!946288 (= c!98487 (validKeyInArray!0 (select (arr!27560 (_keys!10600 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114463 c!98488) b!946286))

(assert (= (and d!114463 (not c!98488)) b!946288))

(assert (= (and b!946288 c!98487) b!946287))

(assert (= (and b!946288 (not c!98487)) b!946285))

(assert (= (or b!946287 b!946285) bm!41079))

(declare-fun m!879769 () Bool)

(assert (=> bm!41079 m!879769))

(assert (=> b!946288 m!879723))

(assert (=> b!946288 m!879723))

(assert (=> b!946288 m!879751))

(assert (=> b!946168 d!114463))

(declare-fun b!946297 () Bool)

(declare-fun e!532464 () Bool)

(declare-fun e!532463 () Bool)

(assert (=> b!946297 (= e!532464 e!532463)))

(declare-fun lt!426241 () (_ BitVec 64))

(assert (=> b!946297 (= lt!426241 (select (arr!27560 (_keys!10600 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!426242 () Unit!31897)

(assert (=> b!946297 (= lt!426242 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10600 thiss!1141) lt!426241 #b00000000000000000000000000000000))))

(assert (=> b!946297 (arrayContainsKey!0 (_keys!10600 thiss!1141) lt!426241 #b00000000000000000000000000000000)))

(declare-fun lt!426240 () Unit!31897)

(assert (=> b!946297 (= lt!426240 lt!426242)))

(declare-fun res!635386 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57294 (_ BitVec 32)) SeekEntryResult!9090)

(assert (=> b!946297 (= res!635386 (= (seekEntryOrOpen!0 (select (arr!27560 (_keys!10600 thiss!1141)) #b00000000000000000000000000000000) (_keys!10600 thiss!1141) (mask!27402 thiss!1141)) (Found!9090 #b00000000000000000000000000000000)))))

(assert (=> b!946297 (=> (not res!635386) (not e!532463))))

(declare-fun b!946298 () Bool)

(declare-fun call!41085 () Bool)

(assert (=> b!946298 (= e!532463 call!41085)))

(declare-fun b!946299 () Bool)

(assert (=> b!946299 (= e!532464 call!41085)))

(declare-fun b!946300 () Bool)

(declare-fun e!532462 () Bool)

(assert (=> b!946300 (= e!532462 e!532464)))

(declare-fun c!98491 () Bool)

(assert (=> b!946300 (= c!98491 (validKeyInArray!0 (select (arr!27560 (_keys!10600 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!114465 () Bool)

(declare-fun res!635387 () Bool)

(assert (=> d!114465 (=> res!635387 e!532462)))

(assert (=> d!114465 (= res!635387 (bvsge #b00000000000000000000000000000000 (size!28031 (_keys!10600 thiss!1141))))))

(assert (=> d!114465 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10600 thiss!1141) (mask!27402 thiss!1141)) e!532462)))

(declare-fun bm!41082 () Bool)

(assert (=> bm!41082 (= call!41085 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10600 thiss!1141) (mask!27402 thiss!1141)))))

(assert (= (and d!114465 (not res!635387)) b!946300))

(assert (= (and b!946300 c!98491) b!946297))

(assert (= (and b!946300 (not c!98491)) b!946299))

(assert (= (and b!946297 res!635386) b!946298))

(assert (= (or b!946298 b!946299) bm!41082))

(assert (=> b!946297 m!879723))

(declare-fun m!879771 () Bool)

(assert (=> b!946297 m!879771))

(declare-fun m!879773 () Bool)

(assert (=> b!946297 m!879773))

(assert (=> b!946297 m!879723))

(declare-fun m!879775 () Bool)

(assert (=> b!946297 m!879775))

(assert (=> b!946300 m!879723))

(assert (=> b!946300 m!879723))

(assert (=> b!946300 m!879751))

(declare-fun m!879777 () Bool)

(assert (=> bm!41082 m!879777))

(assert (=> b!946169 d!114465))

(declare-fun condMapEmpty!32825 () Bool)

(declare-fun mapDefault!32825 () ValueCell!9840)

(assert (=> mapNonEmpty!32824 (= condMapEmpty!32825 (= mapRest!32824 ((as const (Array (_ BitVec 32) ValueCell!9840)) mapDefault!32825)))))

(declare-fun e!532466 () Bool)

(declare-fun mapRes!32825 () Bool)

(assert (=> mapNonEmpty!32824 (= tp!62953 (and e!532466 mapRes!32825))))

(declare-fun b!946302 () Bool)

(assert (=> b!946302 (= e!532466 tp_is_empty!20643)))

(declare-fun b!946301 () Bool)

(declare-fun e!532465 () Bool)

(assert (=> b!946301 (= e!532465 tp_is_empty!20643)))

(declare-fun mapNonEmpty!32825 () Bool)

(declare-fun tp!62954 () Bool)

(assert (=> mapNonEmpty!32825 (= mapRes!32825 (and tp!62954 e!532465))))

(declare-fun mapValue!32825 () ValueCell!9840)

(declare-fun mapKey!32825 () (_ BitVec 32))

(declare-fun mapRest!32825 () (Array (_ BitVec 32) ValueCell!9840))

(assert (=> mapNonEmpty!32825 (= mapRest!32824 (store mapRest!32825 mapKey!32825 mapValue!32825))))

(declare-fun mapIsEmpty!32825 () Bool)

(assert (=> mapIsEmpty!32825 mapRes!32825))

(assert (= (and mapNonEmpty!32824 condMapEmpty!32825) mapIsEmpty!32825))

(assert (= (and mapNonEmpty!32824 (not condMapEmpty!32825)) mapNonEmpty!32825))

(assert (= (and mapNonEmpty!32825 ((_ is ValueCellFull!9840) mapValue!32825)) b!946301))

(assert (= (and mapNonEmpty!32824 ((_ is ValueCellFull!9840) mapDefault!32825)) b!946302))

(declare-fun m!879779 () Bool)

(assert (=> mapNonEmpty!32825 m!879779))

(check-sat (not b!946288) (not b!946234) (not b!946220) (not bm!41076) b_and!29575 (not b!946274) (not d!114459) (not b!946247) (not b!946300) (not b!946235) (not b!946231) (not d!114457) (not bm!41082) (not b!946297) (not b_next!18135) (not d!114455) (not b!946237) tp_is_empty!20643 (not mapNonEmpty!32825) (not bm!41079) (not d!114449) (not b!946248))
(check-sat b_and!29575 (not b_next!18135))
