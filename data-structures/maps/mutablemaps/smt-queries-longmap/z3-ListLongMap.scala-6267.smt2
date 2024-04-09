; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80166 () Bool)

(assert start!80166)

(declare-fun b!941627 () Bool)

(declare-fun b_free!17925 () Bool)

(declare-fun b_next!17925 () Bool)

(assert (=> b!941627 (= b_free!17925 (not b_next!17925))))

(declare-fun tp!62264 () Bool)

(declare-fun b_and!29355 () Bool)

(assert (=> b!941627 (= tp!62264 b_and!29355)))

(declare-fun res!633028 () Bool)

(declare-fun e!529432 () Bool)

(assert (=> start!80166 (=> (not res!633028) (not e!529432))))

(declare-datatypes ((V!32209 0))(
  ( (V!32210 (val!10267 Int)) )
))
(declare-datatypes ((ValueCell!9735 0))(
  ( (ValueCellFull!9735 (v!12798 V!32209)) (EmptyCell!9735) )
))
(declare-datatypes ((array!56844 0))(
  ( (array!56845 (arr!27349 (Array (_ BitVec 32) ValueCell!9735)) (size!27813 (_ BitVec 32))) )
))
(declare-datatypes ((array!56846 0))(
  ( (array!56847 (arr!27350 (Array (_ BitVec 32) (_ BitVec 64))) (size!27814 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4620 0))(
  ( (LongMapFixedSize!4621 (defaultEntry!5601 Int) (mask!27175 (_ BitVec 32)) (extraKeys!5333 (_ BitVec 32)) (zeroValue!5437 V!32209) (minValue!5437 V!32209) (_size!2365 (_ BitVec 32)) (_keys!10457 array!56846) (_values!5624 array!56844) (_vacant!2365 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4620)

(declare-fun valid!1750 (LongMapFixedSize!4620) Bool)

(assert (=> start!80166 (= res!633028 (valid!1750 thiss!1141))))

(assert (=> start!80166 e!529432))

(declare-fun e!529431 () Bool)

(assert (=> start!80166 e!529431))

(assert (=> start!80166 true))

(declare-fun b!941624 () Bool)

(declare-fun res!633025 () Bool)

(assert (=> b!941624 (=> (not res!633025) (not e!529432))))

(declare-fun key!756 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9017 0))(
  ( (MissingZero!9017 (index!38438 (_ BitVec 32))) (Found!9017 (index!38439 (_ BitVec 32))) (Intermediate!9017 (undefined!9829 Bool) (index!38440 (_ BitVec 32)) (x!80817 (_ BitVec 32))) (Undefined!9017) (MissingVacant!9017 (index!38441 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56846 (_ BitVec 32)) SeekEntryResult!9017)

(assert (=> b!941624 (= res!633025 (not ((_ is Found!9017) (seekEntry!0 key!756 (_keys!10457 thiss!1141) (mask!27175 thiss!1141)))))))

(declare-fun mapIsEmpty!32454 () Bool)

(declare-fun mapRes!32454 () Bool)

(assert (=> mapIsEmpty!32454 mapRes!32454))

(declare-fun b!941625 () Bool)

(declare-fun res!633026 () Bool)

(assert (=> b!941625 (=> (not res!633026) (not e!529432))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!941625 (= res!633026 (validMask!0 (mask!27175 thiss!1141)))))

(declare-fun b!941626 () Bool)

(assert (=> b!941626 (= e!529432 (and (= (size!27813 (_values!5624 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27175 thiss!1141))) (= (size!27814 (_keys!10457 thiss!1141)) (size!27813 (_values!5624 thiss!1141))) (bvsge (mask!27175 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5333 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!32454 () Bool)

(declare-fun tp!62265 () Bool)

(declare-fun e!529433 () Bool)

(assert (=> mapNonEmpty!32454 (= mapRes!32454 (and tp!62265 e!529433))))

(declare-fun mapValue!32454 () ValueCell!9735)

(declare-fun mapKey!32454 () (_ BitVec 32))

(declare-fun mapRest!32454 () (Array (_ BitVec 32) ValueCell!9735))

(assert (=> mapNonEmpty!32454 (= (arr!27349 (_values!5624 thiss!1141)) (store mapRest!32454 mapKey!32454 mapValue!32454))))

(declare-fun e!529430 () Bool)

(declare-fun tp_is_empty!20433 () Bool)

(declare-fun array_inv!21208 (array!56846) Bool)

(declare-fun array_inv!21209 (array!56844) Bool)

(assert (=> b!941627 (= e!529431 (and tp!62264 tp_is_empty!20433 (array_inv!21208 (_keys!10457 thiss!1141)) (array_inv!21209 (_values!5624 thiss!1141)) e!529430))))

(declare-fun b!941628 () Bool)

(assert (=> b!941628 (= e!529433 tp_is_empty!20433)))

(declare-fun b!941629 () Bool)

(declare-fun e!529435 () Bool)

(assert (=> b!941629 (= e!529435 tp_is_empty!20433)))

(declare-fun b!941630 () Bool)

(declare-fun res!633027 () Bool)

(assert (=> b!941630 (=> (not res!633027) (not e!529432))))

(assert (=> b!941630 (= res!633027 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!941631 () Bool)

(assert (=> b!941631 (= e!529430 (and e!529435 mapRes!32454))))

(declare-fun condMapEmpty!32454 () Bool)

(declare-fun mapDefault!32454 () ValueCell!9735)

(assert (=> b!941631 (= condMapEmpty!32454 (= (arr!27349 (_values!5624 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9735)) mapDefault!32454)))))

(assert (= (and start!80166 res!633028) b!941630))

(assert (= (and b!941630 res!633027) b!941624))

(assert (= (and b!941624 res!633025) b!941625))

(assert (= (and b!941625 res!633026) b!941626))

(assert (= (and b!941631 condMapEmpty!32454) mapIsEmpty!32454))

(assert (= (and b!941631 (not condMapEmpty!32454)) mapNonEmpty!32454))

(assert (= (and mapNonEmpty!32454 ((_ is ValueCellFull!9735) mapValue!32454)) b!941628))

(assert (= (and b!941631 ((_ is ValueCellFull!9735) mapDefault!32454)) b!941629))

(assert (= b!941627 b!941631))

(assert (= start!80166 b!941627))

(declare-fun m!876647 () Bool)

(assert (=> b!941627 m!876647))

(declare-fun m!876649 () Bool)

(assert (=> b!941627 m!876649))

(declare-fun m!876651 () Bool)

(assert (=> b!941624 m!876651))

(declare-fun m!876653 () Bool)

(assert (=> b!941625 m!876653))

(declare-fun m!876655 () Bool)

(assert (=> start!80166 m!876655))

(declare-fun m!876657 () Bool)

(assert (=> mapNonEmpty!32454 m!876657))

(check-sat b_and!29355 (not b!941627) (not start!80166) (not mapNonEmpty!32454) (not b!941624) tp_is_empty!20433 (not b!941625) (not b_next!17925))
(check-sat b_and!29355 (not b_next!17925))
(get-model)

(declare-fun d!114029 () Bool)

(assert (=> d!114029 (= (array_inv!21208 (_keys!10457 thiss!1141)) (bvsge (size!27814 (_keys!10457 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!941627 d!114029))

(declare-fun d!114031 () Bool)

(assert (=> d!114031 (= (array_inv!21209 (_values!5624 thiss!1141)) (bvsge (size!27813 (_values!5624 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!941627 d!114031))

(declare-fun b!941668 () Bool)

(declare-fun e!529462 () SeekEntryResult!9017)

(assert (=> b!941668 (= e!529462 Undefined!9017)))

(declare-fun b!941669 () Bool)

(declare-fun e!529461 () SeekEntryResult!9017)

(declare-fun lt!424984 () SeekEntryResult!9017)

(assert (=> b!941669 (= e!529461 (ite ((_ is MissingVacant!9017) lt!424984) (MissingZero!9017 (index!38441 lt!424984)) lt!424984))))

(declare-fun lt!424983 () SeekEntryResult!9017)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56846 (_ BitVec 32)) SeekEntryResult!9017)

(assert (=> b!941669 (= lt!424984 (seekKeyOrZeroReturnVacant!0 (x!80817 lt!424983) (index!38440 lt!424983) (index!38440 lt!424983) key!756 (_keys!10457 thiss!1141) (mask!27175 thiss!1141)))))

(declare-fun b!941670 () Bool)

(declare-fun e!529460 () SeekEntryResult!9017)

(assert (=> b!941670 (= e!529462 e!529460)))

(declare-fun lt!424986 () (_ BitVec 64))

(assert (=> b!941670 (= lt!424986 (select (arr!27350 (_keys!10457 thiss!1141)) (index!38440 lt!424983)))))

(declare-fun c!98047 () Bool)

(assert (=> b!941670 (= c!98047 (= lt!424986 key!756))))

(declare-fun b!941671 () Bool)

(assert (=> b!941671 (= e!529460 (Found!9017 (index!38440 lt!424983)))))

(declare-fun b!941672 () Bool)

(declare-fun c!98048 () Bool)

(assert (=> b!941672 (= c!98048 (= lt!424986 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!941672 (= e!529460 e!529461)))

(declare-fun d!114033 () Bool)

(declare-fun lt!424985 () SeekEntryResult!9017)

(assert (=> d!114033 (and (or ((_ is MissingVacant!9017) lt!424985) (not ((_ is Found!9017) lt!424985)) (and (bvsge (index!38439 lt!424985) #b00000000000000000000000000000000) (bvslt (index!38439 lt!424985) (size!27814 (_keys!10457 thiss!1141))))) (not ((_ is MissingVacant!9017) lt!424985)) (or (not ((_ is Found!9017) lt!424985)) (= (select (arr!27350 (_keys!10457 thiss!1141)) (index!38439 lt!424985)) key!756)))))

(assert (=> d!114033 (= lt!424985 e!529462)))

(declare-fun c!98049 () Bool)

(assert (=> d!114033 (= c!98049 (and ((_ is Intermediate!9017) lt!424983) (undefined!9829 lt!424983)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56846 (_ BitVec 32)) SeekEntryResult!9017)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114033 (= lt!424983 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27175 thiss!1141)) key!756 (_keys!10457 thiss!1141) (mask!27175 thiss!1141)))))

(assert (=> d!114033 (validMask!0 (mask!27175 thiss!1141))))

(assert (=> d!114033 (= (seekEntry!0 key!756 (_keys!10457 thiss!1141) (mask!27175 thiss!1141)) lt!424985)))

(declare-fun b!941673 () Bool)

(assert (=> b!941673 (= e!529461 (MissingZero!9017 (index!38440 lt!424983)))))

(assert (= (and d!114033 c!98049) b!941668))

(assert (= (and d!114033 (not c!98049)) b!941670))

(assert (= (and b!941670 c!98047) b!941671))

(assert (= (and b!941670 (not c!98047)) b!941672))

(assert (= (and b!941672 c!98048) b!941673))

(assert (= (and b!941672 (not c!98048)) b!941669))

(declare-fun m!876671 () Bool)

(assert (=> b!941669 m!876671))

(declare-fun m!876673 () Bool)

(assert (=> b!941670 m!876673))

(declare-fun m!876675 () Bool)

(assert (=> d!114033 m!876675))

(declare-fun m!876677 () Bool)

(assert (=> d!114033 m!876677))

(assert (=> d!114033 m!876677))

(declare-fun m!876679 () Bool)

(assert (=> d!114033 m!876679))

(assert (=> d!114033 m!876653))

(assert (=> b!941624 d!114033))

(declare-fun d!114035 () Bool)

(declare-fun res!633047 () Bool)

(declare-fun e!529465 () Bool)

(assert (=> d!114035 (=> (not res!633047) (not e!529465))))

(declare-fun simpleValid!342 (LongMapFixedSize!4620) Bool)

(assert (=> d!114035 (= res!633047 (simpleValid!342 thiss!1141))))

(assert (=> d!114035 (= (valid!1750 thiss!1141) e!529465)))

(declare-fun b!941680 () Bool)

(declare-fun res!633048 () Bool)

(assert (=> b!941680 (=> (not res!633048) (not e!529465))))

(declare-fun arrayCountValidKeys!0 (array!56846 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!941680 (= res!633048 (= (arrayCountValidKeys!0 (_keys!10457 thiss!1141) #b00000000000000000000000000000000 (size!27814 (_keys!10457 thiss!1141))) (_size!2365 thiss!1141)))))

(declare-fun b!941681 () Bool)

(declare-fun res!633049 () Bool)

(assert (=> b!941681 (=> (not res!633049) (not e!529465))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56846 (_ BitVec 32)) Bool)

(assert (=> b!941681 (= res!633049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10457 thiss!1141) (mask!27175 thiss!1141)))))

(declare-fun b!941682 () Bool)

(declare-datatypes ((List!19343 0))(
  ( (Nil!19340) (Cons!19339 (h!20487 (_ BitVec 64)) (t!27666 List!19343)) )
))
(declare-fun arrayNoDuplicates!0 (array!56846 (_ BitVec 32) List!19343) Bool)

(assert (=> b!941682 (= e!529465 (arrayNoDuplicates!0 (_keys!10457 thiss!1141) #b00000000000000000000000000000000 Nil!19340))))

(assert (= (and d!114035 res!633047) b!941680))

(assert (= (and b!941680 res!633048) b!941681))

(assert (= (and b!941681 res!633049) b!941682))

(declare-fun m!876681 () Bool)

(assert (=> d!114035 m!876681))

(declare-fun m!876683 () Bool)

(assert (=> b!941680 m!876683))

(declare-fun m!876685 () Bool)

(assert (=> b!941681 m!876685))

(declare-fun m!876687 () Bool)

(assert (=> b!941682 m!876687))

(assert (=> start!80166 d!114035))

(declare-fun d!114037 () Bool)

(assert (=> d!114037 (= (validMask!0 (mask!27175 thiss!1141)) (and (or (= (mask!27175 thiss!1141) #b00000000000000000000000000000111) (= (mask!27175 thiss!1141) #b00000000000000000000000000001111) (= (mask!27175 thiss!1141) #b00000000000000000000000000011111) (= (mask!27175 thiss!1141) #b00000000000000000000000000111111) (= (mask!27175 thiss!1141) #b00000000000000000000000001111111) (= (mask!27175 thiss!1141) #b00000000000000000000000011111111) (= (mask!27175 thiss!1141) #b00000000000000000000000111111111) (= (mask!27175 thiss!1141) #b00000000000000000000001111111111) (= (mask!27175 thiss!1141) #b00000000000000000000011111111111) (= (mask!27175 thiss!1141) #b00000000000000000000111111111111) (= (mask!27175 thiss!1141) #b00000000000000000001111111111111) (= (mask!27175 thiss!1141) #b00000000000000000011111111111111) (= (mask!27175 thiss!1141) #b00000000000000000111111111111111) (= (mask!27175 thiss!1141) #b00000000000000001111111111111111) (= (mask!27175 thiss!1141) #b00000000000000011111111111111111) (= (mask!27175 thiss!1141) #b00000000000000111111111111111111) (= (mask!27175 thiss!1141) #b00000000000001111111111111111111) (= (mask!27175 thiss!1141) #b00000000000011111111111111111111) (= (mask!27175 thiss!1141) #b00000000000111111111111111111111) (= (mask!27175 thiss!1141) #b00000000001111111111111111111111) (= (mask!27175 thiss!1141) #b00000000011111111111111111111111) (= (mask!27175 thiss!1141) #b00000000111111111111111111111111) (= (mask!27175 thiss!1141) #b00000001111111111111111111111111) (= (mask!27175 thiss!1141) #b00000011111111111111111111111111) (= (mask!27175 thiss!1141) #b00000111111111111111111111111111) (= (mask!27175 thiss!1141) #b00001111111111111111111111111111) (= (mask!27175 thiss!1141) #b00011111111111111111111111111111) (= (mask!27175 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27175 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!941625 d!114037))

(declare-fun condMapEmpty!32460 () Bool)

(declare-fun mapDefault!32460 () ValueCell!9735)

(assert (=> mapNonEmpty!32454 (= condMapEmpty!32460 (= mapRest!32454 ((as const (Array (_ BitVec 32) ValueCell!9735)) mapDefault!32460)))))

(declare-fun e!529471 () Bool)

(declare-fun mapRes!32460 () Bool)

(assert (=> mapNonEmpty!32454 (= tp!62265 (and e!529471 mapRes!32460))))

(declare-fun b!941690 () Bool)

(assert (=> b!941690 (= e!529471 tp_is_empty!20433)))

(declare-fun mapIsEmpty!32460 () Bool)

(assert (=> mapIsEmpty!32460 mapRes!32460))

(declare-fun b!941689 () Bool)

(declare-fun e!529470 () Bool)

(assert (=> b!941689 (= e!529470 tp_is_empty!20433)))

(declare-fun mapNonEmpty!32460 () Bool)

(declare-fun tp!62274 () Bool)

(assert (=> mapNonEmpty!32460 (= mapRes!32460 (and tp!62274 e!529470))))

(declare-fun mapRest!32460 () (Array (_ BitVec 32) ValueCell!9735))

(declare-fun mapKey!32460 () (_ BitVec 32))

(declare-fun mapValue!32460 () ValueCell!9735)

(assert (=> mapNonEmpty!32460 (= mapRest!32454 (store mapRest!32460 mapKey!32460 mapValue!32460))))

(assert (= (and mapNonEmpty!32454 condMapEmpty!32460) mapIsEmpty!32460))

(assert (= (and mapNonEmpty!32454 (not condMapEmpty!32460)) mapNonEmpty!32460))

(assert (= (and mapNonEmpty!32460 ((_ is ValueCellFull!9735) mapValue!32460)) b!941689))

(assert (= (and mapNonEmpty!32454 ((_ is ValueCellFull!9735) mapDefault!32460)) b!941690))

(declare-fun m!876689 () Bool)

(assert (=> mapNonEmpty!32460 m!876689))

(check-sat b_and!29355 (not b!941681) (not b!941682) (not d!114033) (not b_next!17925) (not b!941669) (not b!941680) (not d!114035) (not mapNonEmpty!32460) tp_is_empty!20433)
(check-sat b_and!29355 (not b_next!17925))
(get-model)

(declare-fun d!114039 () Bool)

(declare-fun res!633059 () Bool)

(declare-fun e!529474 () Bool)

(assert (=> d!114039 (=> (not res!633059) (not e!529474))))

(assert (=> d!114039 (= res!633059 (validMask!0 (mask!27175 thiss!1141)))))

(assert (=> d!114039 (= (simpleValid!342 thiss!1141) e!529474)))

(declare-fun b!941701 () Bool)

(declare-fun res!633060 () Bool)

(assert (=> b!941701 (=> (not res!633060) (not e!529474))))

(declare-fun size!27817 (LongMapFixedSize!4620) (_ BitVec 32))

(assert (=> b!941701 (= res!633060 (= (size!27817 thiss!1141) (bvadd (_size!2365 thiss!1141) (bvsdiv (bvadd (extraKeys!5333 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!941702 () Bool)

(assert (=> b!941702 (= e!529474 (and (bvsge (extraKeys!5333 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5333 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2365 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun b!941700 () Bool)

(declare-fun res!633061 () Bool)

(assert (=> b!941700 (=> (not res!633061) (not e!529474))))

(assert (=> b!941700 (= res!633061 (bvsge (size!27817 thiss!1141) (_size!2365 thiss!1141)))))

(declare-fun b!941699 () Bool)

(declare-fun res!633058 () Bool)

(assert (=> b!941699 (=> (not res!633058) (not e!529474))))

(assert (=> b!941699 (= res!633058 (and (= (size!27813 (_values!5624 thiss!1141)) (bvadd (mask!27175 thiss!1141) #b00000000000000000000000000000001)) (= (size!27814 (_keys!10457 thiss!1141)) (size!27813 (_values!5624 thiss!1141))) (bvsge (_size!2365 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2365 thiss!1141) (bvadd (mask!27175 thiss!1141) #b00000000000000000000000000000001))))))

(assert (= (and d!114039 res!633059) b!941699))

(assert (= (and b!941699 res!633058) b!941700))

(assert (= (and b!941700 res!633061) b!941701))

(assert (= (and b!941701 res!633060) b!941702))

(assert (=> d!114039 m!876653))

(declare-fun m!876691 () Bool)

(assert (=> b!941701 m!876691))

(assert (=> b!941700 m!876691))

(assert (=> d!114035 d!114039))

(declare-fun d!114041 () Bool)

(declare-fun lt!424992 () SeekEntryResult!9017)

(assert (=> d!114041 (and (or ((_ is Undefined!9017) lt!424992) (not ((_ is Found!9017) lt!424992)) (and (bvsge (index!38439 lt!424992) #b00000000000000000000000000000000) (bvslt (index!38439 lt!424992) (size!27814 (_keys!10457 thiss!1141))))) (or ((_ is Undefined!9017) lt!424992) ((_ is Found!9017) lt!424992) (not ((_ is MissingVacant!9017) lt!424992)) (not (= (index!38441 lt!424992) (index!38440 lt!424983))) (and (bvsge (index!38441 lt!424992) #b00000000000000000000000000000000) (bvslt (index!38441 lt!424992) (size!27814 (_keys!10457 thiss!1141))))) (or ((_ is Undefined!9017) lt!424992) (ite ((_ is Found!9017) lt!424992) (= (select (arr!27350 (_keys!10457 thiss!1141)) (index!38439 lt!424992)) key!756) (and ((_ is MissingVacant!9017) lt!424992) (= (index!38441 lt!424992) (index!38440 lt!424983)) (= (select (arr!27350 (_keys!10457 thiss!1141)) (index!38441 lt!424992)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!529482 () SeekEntryResult!9017)

(assert (=> d!114041 (= lt!424992 e!529482)))

(declare-fun c!98057 () Bool)

(assert (=> d!114041 (= c!98057 (bvsge (x!80817 lt!424983) #b01111111111111111111111111111110))))

(declare-fun lt!424991 () (_ BitVec 64))

(assert (=> d!114041 (= lt!424991 (select (arr!27350 (_keys!10457 thiss!1141)) (index!38440 lt!424983)))))

(assert (=> d!114041 (validMask!0 (mask!27175 thiss!1141))))

(assert (=> d!114041 (= (seekKeyOrZeroReturnVacant!0 (x!80817 lt!424983) (index!38440 lt!424983) (index!38440 lt!424983) key!756 (_keys!10457 thiss!1141) (mask!27175 thiss!1141)) lt!424992)))

(declare-fun b!941715 () Bool)

(declare-fun e!529481 () SeekEntryResult!9017)

(assert (=> b!941715 (= e!529481 (Found!9017 (index!38440 lt!424983)))))

(declare-fun b!941716 () Bool)

(assert (=> b!941716 (= e!529482 Undefined!9017)))

(declare-fun b!941717 () Bool)

(assert (=> b!941717 (= e!529482 e!529481)))

(declare-fun c!98056 () Bool)

(assert (=> b!941717 (= c!98056 (= lt!424991 key!756))))

(declare-fun b!941718 () Bool)

(declare-fun c!98058 () Bool)

(assert (=> b!941718 (= c!98058 (= lt!424991 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!529483 () SeekEntryResult!9017)

(assert (=> b!941718 (= e!529481 e!529483)))

(declare-fun b!941719 () Bool)

(assert (=> b!941719 (= e!529483 (MissingVacant!9017 (index!38440 lt!424983)))))

(declare-fun b!941720 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!941720 (= e!529483 (seekKeyOrZeroReturnVacant!0 (bvadd (x!80817 lt!424983) #b00000000000000000000000000000001) (nextIndex!0 (index!38440 lt!424983) (x!80817 lt!424983) (mask!27175 thiss!1141)) (index!38440 lt!424983) key!756 (_keys!10457 thiss!1141) (mask!27175 thiss!1141)))))

(assert (= (and d!114041 c!98057) b!941716))

(assert (= (and d!114041 (not c!98057)) b!941717))

(assert (= (and b!941717 c!98056) b!941715))

(assert (= (and b!941717 (not c!98056)) b!941718))

(assert (= (and b!941718 c!98058) b!941719))

(assert (= (and b!941718 (not c!98058)) b!941720))

(declare-fun m!876693 () Bool)

(assert (=> d!114041 m!876693))

(declare-fun m!876695 () Bool)

(assert (=> d!114041 m!876695))

(assert (=> d!114041 m!876673))

(assert (=> d!114041 m!876653))

(declare-fun m!876697 () Bool)

(assert (=> b!941720 m!876697))

(assert (=> b!941720 m!876697))

(declare-fun m!876699 () Bool)

(assert (=> b!941720 m!876699))

(assert (=> b!941669 d!114041))

(declare-fun b!941739 () Bool)

(declare-fun e!529497 () SeekEntryResult!9017)

(assert (=> b!941739 (= e!529497 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!756 (mask!27175 thiss!1141)) #b00000000000000000000000000000000 (mask!27175 thiss!1141)) key!756 (_keys!10457 thiss!1141) (mask!27175 thiss!1141)))))

(declare-fun b!941740 () Bool)

(declare-fun e!529496 () Bool)

(declare-fun lt!424997 () SeekEntryResult!9017)

(assert (=> b!941740 (= e!529496 (bvsge (x!80817 lt!424997) #b01111111111111111111111111111110))))

(declare-fun b!941741 () Bool)

(declare-fun e!529498 () SeekEntryResult!9017)

(assert (=> b!941741 (= e!529498 e!529497)))

(declare-fun c!98067 () Bool)

(declare-fun lt!424998 () (_ BitVec 64))

(assert (=> b!941741 (= c!98067 (or (= lt!424998 key!756) (= (bvadd lt!424998 lt!424998) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!941742 () Bool)

(assert (=> b!941742 (= e!529498 (Intermediate!9017 true (toIndex!0 key!756 (mask!27175 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun d!114043 () Bool)

(assert (=> d!114043 e!529496))

(declare-fun c!98065 () Bool)

(assert (=> d!114043 (= c!98065 (and ((_ is Intermediate!9017) lt!424997) (undefined!9829 lt!424997)))))

(assert (=> d!114043 (= lt!424997 e!529498)))

(declare-fun c!98066 () Bool)

(assert (=> d!114043 (= c!98066 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!114043 (= lt!424998 (select (arr!27350 (_keys!10457 thiss!1141)) (toIndex!0 key!756 (mask!27175 thiss!1141))))))

(assert (=> d!114043 (validMask!0 (mask!27175 thiss!1141))))

(assert (=> d!114043 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27175 thiss!1141)) key!756 (_keys!10457 thiss!1141) (mask!27175 thiss!1141)) lt!424997)))

(declare-fun b!941743 () Bool)

(assert (=> b!941743 (and (bvsge (index!38440 lt!424997) #b00000000000000000000000000000000) (bvslt (index!38440 lt!424997) (size!27814 (_keys!10457 thiss!1141))))))

(declare-fun res!633070 () Bool)

(assert (=> b!941743 (= res!633070 (= (select (arr!27350 (_keys!10457 thiss!1141)) (index!38440 lt!424997)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!529494 () Bool)

(assert (=> b!941743 (=> res!633070 e!529494)))

(declare-fun b!941744 () Bool)

(assert (=> b!941744 (= e!529497 (Intermediate!9017 false (toIndex!0 key!756 (mask!27175 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!941745 () Bool)

(assert (=> b!941745 (and (bvsge (index!38440 lt!424997) #b00000000000000000000000000000000) (bvslt (index!38440 lt!424997) (size!27814 (_keys!10457 thiss!1141))))))

(declare-fun res!633069 () Bool)

(assert (=> b!941745 (= res!633069 (= (select (arr!27350 (_keys!10457 thiss!1141)) (index!38440 lt!424997)) key!756))))

(assert (=> b!941745 (=> res!633069 e!529494)))

(declare-fun e!529495 () Bool)

(assert (=> b!941745 (= e!529495 e!529494)))

(declare-fun b!941746 () Bool)

(assert (=> b!941746 (and (bvsge (index!38440 lt!424997) #b00000000000000000000000000000000) (bvslt (index!38440 lt!424997) (size!27814 (_keys!10457 thiss!1141))))))

(assert (=> b!941746 (= e!529494 (= (select (arr!27350 (_keys!10457 thiss!1141)) (index!38440 lt!424997)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!941747 () Bool)

(assert (=> b!941747 (= e!529496 e!529495)))

(declare-fun res!633068 () Bool)

(assert (=> b!941747 (= res!633068 (and ((_ is Intermediate!9017) lt!424997) (not (undefined!9829 lt!424997)) (bvslt (x!80817 lt!424997) #b01111111111111111111111111111110) (bvsge (x!80817 lt!424997) #b00000000000000000000000000000000) (bvsge (x!80817 lt!424997) #b00000000000000000000000000000000)))))

(assert (=> b!941747 (=> (not res!633068) (not e!529495))))

(assert (= (and d!114043 c!98066) b!941742))

(assert (= (and d!114043 (not c!98066)) b!941741))

(assert (= (and b!941741 c!98067) b!941744))

(assert (= (and b!941741 (not c!98067)) b!941739))

(assert (= (and d!114043 c!98065) b!941740))

(assert (= (and d!114043 (not c!98065)) b!941747))

(assert (= (and b!941747 res!633068) b!941745))

(assert (= (and b!941745 (not res!633069)) b!941743))

(assert (= (and b!941743 (not res!633070)) b!941746))

(declare-fun m!876701 () Bool)

(assert (=> b!941745 m!876701))

(assert (=> b!941743 m!876701))

(assert (=> b!941746 m!876701))

(assert (=> b!941739 m!876677))

(declare-fun m!876703 () Bool)

(assert (=> b!941739 m!876703))

(assert (=> b!941739 m!876703))

(declare-fun m!876705 () Bool)

(assert (=> b!941739 m!876705))

(assert (=> d!114043 m!876677))

(declare-fun m!876707 () Bool)

(assert (=> d!114043 m!876707))

(assert (=> d!114043 m!876653))

(assert (=> d!114033 d!114043))

(declare-fun d!114045 () Bool)

(declare-fun lt!425004 () (_ BitVec 32))

(declare-fun lt!425003 () (_ BitVec 32))

(assert (=> d!114045 (= lt!425004 (bvmul (bvxor lt!425003 (bvlshr lt!425003 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!114045 (= lt!425003 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!114045 (and (bvsge (mask!27175 thiss!1141) #b00000000000000000000000000000000) (let ((res!633071 (let ((h!20488 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!80834 (bvmul (bvxor h!20488 (bvlshr h!20488 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!80834 (bvlshr x!80834 #b00000000000000000000000000001101)) (mask!27175 thiss!1141)))))) (and (bvslt res!633071 (bvadd (mask!27175 thiss!1141) #b00000000000000000000000000000001)) (bvsge res!633071 #b00000000000000000000000000000000))))))

(assert (=> d!114045 (= (toIndex!0 key!756 (mask!27175 thiss!1141)) (bvand (bvxor lt!425004 (bvlshr lt!425004 #b00000000000000000000000000001101)) (mask!27175 thiss!1141)))))

(assert (=> d!114033 d!114045))

(assert (=> d!114033 d!114037))

(declare-fun bm!40932 () Bool)

(declare-fun call!40935 () Bool)

(declare-fun c!98070 () Bool)

(assert (=> bm!40932 (= call!40935 (arrayNoDuplicates!0 (_keys!10457 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!98070 (Cons!19339 (select (arr!27350 (_keys!10457 thiss!1141)) #b00000000000000000000000000000000) Nil!19340) Nil!19340)))))

(declare-fun b!941758 () Bool)

(declare-fun e!529507 () Bool)

(assert (=> b!941758 (= e!529507 call!40935)))

(declare-fun b!941759 () Bool)

(declare-fun e!529510 () Bool)

(declare-fun contains!5143 (List!19343 (_ BitVec 64)) Bool)

(assert (=> b!941759 (= e!529510 (contains!5143 Nil!19340 (select (arr!27350 (_keys!10457 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!114047 () Bool)

(declare-fun res!633080 () Bool)

(declare-fun e!529508 () Bool)

(assert (=> d!114047 (=> res!633080 e!529508)))

(assert (=> d!114047 (= res!633080 (bvsge #b00000000000000000000000000000000 (size!27814 (_keys!10457 thiss!1141))))))

(assert (=> d!114047 (= (arrayNoDuplicates!0 (_keys!10457 thiss!1141) #b00000000000000000000000000000000 Nil!19340) e!529508)))

(declare-fun b!941760 () Bool)

(assert (=> b!941760 (= e!529507 call!40935)))

(declare-fun b!941761 () Bool)

(declare-fun e!529509 () Bool)

(assert (=> b!941761 (= e!529508 e!529509)))

(declare-fun res!633079 () Bool)

(assert (=> b!941761 (=> (not res!633079) (not e!529509))))

(assert (=> b!941761 (= res!633079 (not e!529510))))

(declare-fun res!633078 () Bool)

(assert (=> b!941761 (=> (not res!633078) (not e!529510))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!941761 (= res!633078 (validKeyInArray!0 (select (arr!27350 (_keys!10457 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!941762 () Bool)

(assert (=> b!941762 (= e!529509 e!529507)))

(assert (=> b!941762 (= c!98070 (validKeyInArray!0 (select (arr!27350 (_keys!10457 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114047 (not res!633080)) b!941761))

(assert (= (and b!941761 res!633078) b!941759))

(assert (= (and b!941761 res!633079) b!941762))

(assert (= (and b!941762 c!98070) b!941760))

(assert (= (and b!941762 (not c!98070)) b!941758))

(assert (= (or b!941760 b!941758) bm!40932))

(declare-fun m!876709 () Bool)

(assert (=> bm!40932 m!876709))

(declare-fun m!876711 () Bool)

(assert (=> bm!40932 m!876711))

(assert (=> b!941759 m!876709))

(assert (=> b!941759 m!876709))

(declare-fun m!876713 () Bool)

(assert (=> b!941759 m!876713))

(assert (=> b!941761 m!876709))

(assert (=> b!941761 m!876709))

(declare-fun m!876715 () Bool)

(assert (=> b!941761 m!876715))

(assert (=> b!941762 m!876709))

(assert (=> b!941762 m!876709))

(assert (=> b!941762 m!876715))

(assert (=> b!941682 d!114047))

(declare-fun d!114049 () Bool)

(declare-fun lt!425007 () (_ BitVec 32))

(assert (=> d!114049 (and (bvsge lt!425007 #b00000000000000000000000000000000) (bvsle lt!425007 (bvsub (size!27814 (_keys!10457 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun e!529516 () (_ BitVec 32))

(assert (=> d!114049 (= lt!425007 e!529516)))

(declare-fun c!98075 () Bool)

(assert (=> d!114049 (= c!98075 (bvsge #b00000000000000000000000000000000 (size!27814 (_keys!10457 thiss!1141))))))

(assert (=> d!114049 (and (bvsle #b00000000000000000000000000000000 (size!27814 (_keys!10457 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!27814 (_keys!10457 thiss!1141)) (size!27814 (_keys!10457 thiss!1141))))))

(assert (=> d!114049 (= (arrayCountValidKeys!0 (_keys!10457 thiss!1141) #b00000000000000000000000000000000 (size!27814 (_keys!10457 thiss!1141))) lt!425007)))

(declare-fun b!941771 () Bool)

(declare-fun e!529515 () (_ BitVec 32))

(declare-fun call!40938 () (_ BitVec 32))

(assert (=> b!941771 (= e!529515 call!40938)))

(declare-fun b!941772 () Bool)

(assert (=> b!941772 (= e!529516 e!529515)))

(declare-fun c!98076 () Bool)

(assert (=> b!941772 (= c!98076 (validKeyInArray!0 (select (arr!27350 (_keys!10457 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!941773 () Bool)

(assert (=> b!941773 (= e!529516 #b00000000000000000000000000000000)))

(declare-fun b!941774 () Bool)

(assert (=> b!941774 (= e!529515 (bvadd #b00000000000000000000000000000001 call!40938))))

(declare-fun bm!40935 () Bool)

(assert (=> bm!40935 (= call!40938 (arrayCountValidKeys!0 (_keys!10457 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!27814 (_keys!10457 thiss!1141))))))

(assert (= (and d!114049 c!98075) b!941773))

(assert (= (and d!114049 (not c!98075)) b!941772))

(assert (= (and b!941772 c!98076) b!941774))

(assert (= (and b!941772 (not c!98076)) b!941771))

(assert (= (or b!941774 b!941771) bm!40935))

(assert (=> b!941772 m!876709))

(assert (=> b!941772 m!876709))

(assert (=> b!941772 m!876715))

(declare-fun m!876717 () Bool)

(assert (=> bm!40935 m!876717))

(assert (=> b!941680 d!114049))

(declare-fun b!941783 () Bool)

(declare-fun e!529524 () Bool)

(declare-fun call!40941 () Bool)

(assert (=> b!941783 (= e!529524 call!40941)))

(declare-fun b!941784 () Bool)

(declare-fun e!529523 () Bool)

(assert (=> b!941784 (= e!529523 call!40941)))

(declare-fun bm!40938 () Bool)

(assert (=> bm!40938 (= call!40941 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10457 thiss!1141) (mask!27175 thiss!1141)))))

(declare-fun b!941785 () Bool)

(assert (=> b!941785 (= e!529524 e!529523)))

(declare-fun lt!425015 () (_ BitVec 64))

(assert (=> b!941785 (= lt!425015 (select (arr!27350 (_keys!10457 thiss!1141)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!31809 0))(
  ( (Unit!31810) )
))
(declare-fun lt!425014 () Unit!31809)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56846 (_ BitVec 64) (_ BitVec 32)) Unit!31809)

(assert (=> b!941785 (= lt!425014 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10457 thiss!1141) lt!425015 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!56846 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!941785 (arrayContainsKey!0 (_keys!10457 thiss!1141) lt!425015 #b00000000000000000000000000000000)))

(declare-fun lt!425016 () Unit!31809)

(assert (=> b!941785 (= lt!425016 lt!425014)))

(declare-fun res!633085 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!56846 (_ BitVec 32)) SeekEntryResult!9017)

(assert (=> b!941785 (= res!633085 (= (seekEntryOrOpen!0 (select (arr!27350 (_keys!10457 thiss!1141)) #b00000000000000000000000000000000) (_keys!10457 thiss!1141) (mask!27175 thiss!1141)) (Found!9017 #b00000000000000000000000000000000)))))

(assert (=> b!941785 (=> (not res!633085) (not e!529523))))

(declare-fun d!114051 () Bool)

(declare-fun res!633086 () Bool)

(declare-fun e!529525 () Bool)

(assert (=> d!114051 (=> res!633086 e!529525)))

(assert (=> d!114051 (= res!633086 (bvsge #b00000000000000000000000000000000 (size!27814 (_keys!10457 thiss!1141))))))

(assert (=> d!114051 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10457 thiss!1141) (mask!27175 thiss!1141)) e!529525)))

(declare-fun b!941786 () Bool)

(assert (=> b!941786 (= e!529525 e!529524)))

(declare-fun c!98079 () Bool)

(assert (=> b!941786 (= c!98079 (validKeyInArray!0 (select (arr!27350 (_keys!10457 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114051 (not res!633086)) b!941786))

(assert (= (and b!941786 c!98079) b!941785))

(assert (= (and b!941786 (not c!98079)) b!941783))

(assert (= (and b!941785 res!633085) b!941784))

(assert (= (or b!941784 b!941783) bm!40938))

(declare-fun m!876719 () Bool)

(assert (=> bm!40938 m!876719))

(assert (=> b!941785 m!876709))

(declare-fun m!876721 () Bool)

(assert (=> b!941785 m!876721))

(declare-fun m!876723 () Bool)

(assert (=> b!941785 m!876723))

(assert (=> b!941785 m!876709))

(declare-fun m!876725 () Bool)

(assert (=> b!941785 m!876725))

(assert (=> b!941786 m!876709))

(assert (=> b!941786 m!876709))

(assert (=> b!941786 m!876715))

(assert (=> b!941681 d!114051))

(declare-fun condMapEmpty!32461 () Bool)

(declare-fun mapDefault!32461 () ValueCell!9735)

(assert (=> mapNonEmpty!32460 (= condMapEmpty!32461 (= mapRest!32460 ((as const (Array (_ BitVec 32) ValueCell!9735)) mapDefault!32461)))))

(declare-fun e!529527 () Bool)

(declare-fun mapRes!32461 () Bool)

(assert (=> mapNonEmpty!32460 (= tp!62274 (and e!529527 mapRes!32461))))

(declare-fun b!941788 () Bool)

(assert (=> b!941788 (= e!529527 tp_is_empty!20433)))

(declare-fun mapIsEmpty!32461 () Bool)

(assert (=> mapIsEmpty!32461 mapRes!32461))

(declare-fun b!941787 () Bool)

(declare-fun e!529526 () Bool)

(assert (=> b!941787 (= e!529526 tp_is_empty!20433)))

(declare-fun mapNonEmpty!32461 () Bool)

(declare-fun tp!62275 () Bool)

(assert (=> mapNonEmpty!32461 (= mapRes!32461 (and tp!62275 e!529526))))

(declare-fun mapRest!32461 () (Array (_ BitVec 32) ValueCell!9735))

(declare-fun mapValue!32461 () ValueCell!9735)

(declare-fun mapKey!32461 () (_ BitVec 32))

(assert (=> mapNonEmpty!32461 (= mapRest!32460 (store mapRest!32461 mapKey!32461 mapValue!32461))))

(assert (= (and mapNonEmpty!32460 condMapEmpty!32461) mapIsEmpty!32461))

(assert (= (and mapNonEmpty!32460 (not condMapEmpty!32461)) mapNonEmpty!32461))

(assert (= (and mapNonEmpty!32461 ((_ is ValueCellFull!9735) mapValue!32461)) b!941787))

(assert (= (and mapNonEmpty!32460 ((_ is ValueCellFull!9735) mapDefault!32461)) b!941788))

(declare-fun m!876727 () Bool)

(assert (=> mapNonEmpty!32461 m!876727))

(check-sat (not d!114041) (not b!941761) (not b!941759) (not d!114039) (not b!941720) (not mapNonEmpty!32461) (not b!941700) (not b!941772) (not bm!40932) (not b!941739) (not b!941786) (not bm!40935) (not bm!40938) (not b!941701) (not b!941762) tp_is_empty!20433 (not b!941785) b_and!29355 (not b_next!17925) (not d!114043))
(check-sat b_and!29355 (not b_next!17925))
