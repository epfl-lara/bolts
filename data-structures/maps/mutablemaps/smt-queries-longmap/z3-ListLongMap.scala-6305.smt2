; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80762 () Bool)

(assert start!80762)

(declare-fun b!946671 () Bool)

(declare-fun b_free!18153 () Bool)

(declare-fun b_next!18153 () Bool)

(assert (=> b!946671 (= b_free!18153 (not b_next!18153))))

(declare-fun tp!63009 () Bool)

(declare-fun b_and!29593 () Bool)

(assert (=> b!946671 (= tp!63009 b_and!29593)))

(declare-fun b!946669 () Bool)

(declare-fun e!532761 () Bool)

(declare-fun e!532757 () Bool)

(assert (=> b!946669 (= e!532761 (not e!532757))))

(declare-fun res!635552 () Bool)

(assert (=> b!946669 (=> res!635552 e!532757)))

(declare-datatypes ((V!32513 0))(
  ( (V!32514 (val!10381 Int)) )
))
(declare-datatypes ((ValueCell!9849 0))(
  ( (ValueCellFull!9849 (v!12915 V!32513)) (EmptyCell!9849) )
))
(declare-datatypes ((array!57334 0))(
  ( (array!57335 (arr!27577 (Array (_ BitVec 32) ValueCell!9849)) (size!28050 (_ BitVec 32))) )
))
(declare-datatypes ((array!57336 0))(
  ( (array!57337 (arr!27578 (Array (_ BitVec 32) (_ BitVec 64))) (size!28051 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4848 0))(
  ( (LongMapFixedSize!4849 (defaultEntry!5721 Int) (mask!27431 (_ BitVec 32)) (extraKeys!5453 (_ BitVec 32)) (zeroValue!5557 V!32513) (minValue!5557 V!32513) (_size!2479 (_ BitVec 32)) (_keys!10618 array!57336) (_values!5744 array!57334) (_vacant!2479 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4848)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!946669 (= res!635552 (not (validMask!0 (mask!27431 thiss!1141))))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!57336 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!946669 (arrayContainsKey!0 (_keys!10618 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!9097 0))(
  ( (MissingZero!9097 (index!38758 (_ BitVec 32))) (Found!9097 (index!38759 (_ BitVec 32))) (Intermediate!9097 (undefined!9909 Bool) (index!38760 (_ BitVec 32)) (x!81417 (_ BitVec 32))) (Undefined!9097) (MissingVacant!9097 (index!38761 (_ BitVec 32))) )
))
(declare-fun lt!426350 () SeekEntryResult!9097)

(declare-datatypes ((Unit!31907 0))(
  ( (Unit!31908) )
))
(declare-fun lt!426349 () Unit!31907)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57336 (_ BitVec 64) (_ BitVec 32)) Unit!31907)

(assert (=> b!946669 (= lt!426349 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10618 thiss!1141) key!756 (index!38759 lt!426350)))))

(declare-fun b!946670 () Bool)

(declare-fun e!532764 () Bool)

(declare-fun e!532763 () Bool)

(declare-fun mapRes!32856 () Bool)

(assert (=> b!946670 (= e!532764 (and e!532763 mapRes!32856))))

(declare-fun condMapEmpty!32856 () Bool)

(declare-fun mapDefault!32856 () ValueCell!9849)

(assert (=> b!946670 (= condMapEmpty!32856 (= (arr!27577 (_values!5744 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9849)) mapDefault!32856)))))

(declare-fun tp_is_empty!20661 () Bool)

(declare-fun e!532760 () Bool)

(declare-fun array_inv!21358 (array!57336) Bool)

(declare-fun array_inv!21359 (array!57334) Bool)

(assert (=> b!946671 (= e!532760 (and tp!63009 tp_is_empty!20661 (array_inv!21358 (_keys!10618 thiss!1141)) (array_inv!21359 (_values!5744 thiss!1141)) e!532764))))

(declare-fun mapIsEmpty!32856 () Bool)

(assert (=> mapIsEmpty!32856 mapRes!32856))

(declare-fun b!946672 () Bool)

(declare-fun res!635549 () Bool)

(declare-fun e!532759 () Bool)

(assert (=> b!946672 (=> (not res!635549) (not e!532759))))

(assert (=> b!946672 (= res!635549 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!635551 () Bool)

(assert (=> start!80762 (=> (not res!635551) (not e!532759))))

(declare-fun valid!1827 (LongMapFixedSize!4848) Bool)

(assert (=> start!80762 (= res!635551 (valid!1827 thiss!1141))))

(assert (=> start!80762 e!532759))

(assert (=> start!80762 e!532760))

(assert (=> start!80762 true))

(declare-fun b!946673 () Bool)

(assert (=> b!946673 (= e!532759 e!532761)))

(declare-fun res!635550 () Bool)

(assert (=> b!946673 (=> (not res!635550) (not e!532761))))

(get-info :version)

(assert (=> b!946673 (= res!635550 ((_ is Found!9097) lt!426350))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57336 (_ BitVec 32)) SeekEntryResult!9097)

(assert (=> b!946673 (= lt!426350 (seekEntry!0 key!756 (_keys!10618 thiss!1141) (mask!27431 thiss!1141)))))

(declare-fun mapNonEmpty!32856 () Bool)

(declare-fun tp!63008 () Bool)

(declare-fun e!532758 () Bool)

(assert (=> mapNonEmpty!32856 (= mapRes!32856 (and tp!63008 e!532758))))

(declare-fun mapRest!32856 () (Array (_ BitVec 32) ValueCell!9849))

(declare-fun mapKey!32856 () (_ BitVec 32))

(declare-fun mapValue!32856 () ValueCell!9849)

(assert (=> mapNonEmpty!32856 (= (arr!27577 (_values!5744 thiss!1141)) (store mapRest!32856 mapKey!32856 mapValue!32856))))

(declare-fun b!946674 () Bool)

(assert (=> b!946674 (= e!532758 tp_is_empty!20661)))

(declare-fun b!946675 () Bool)

(assert (=> b!946675 (= e!532763 tp_is_empty!20661)))

(declare-fun b!946676 () Bool)

(assert (=> b!946676 (= e!532757 (or (not (= (size!28050 (_values!5744 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27431 thiss!1141)))) (not (= (size!28051 (_keys!10618 thiss!1141)) (size!28050 (_values!5744 thiss!1141)))) (bvslt (mask!27431 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5453 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5453 thiss!1141) #b00000000000000000000000000000011)))))

(assert (= (and start!80762 res!635551) b!946672))

(assert (= (and b!946672 res!635549) b!946673))

(assert (= (and b!946673 res!635550) b!946669))

(assert (= (and b!946669 (not res!635552)) b!946676))

(assert (= (and b!946670 condMapEmpty!32856) mapIsEmpty!32856))

(assert (= (and b!946670 (not condMapEmpty!32856)) mapNonEmpty!32856))

(assert (= (and mapNonEmpty!32856 ((_ is ValueCellFull!9849) mapValue!32856)) b!946674))

(assert (= (and b!946670 ((_ is ValueCellFull!9849) mapDefault!32856)) b!946675))

(assert (= b!946671 b!946670))

(assert (= start!80762 b!946671))

(declare-fun m!879985 () Bool)

(assert (=> start!80762 m!879985))

(declare-fun m!879987 () Bool)

(assert (=> b!946671 m!879987))

(declare-fun m!879989 () Bool)

(assert (=> b!946671 m!879989))

(declare-fun m!879991 () Bool)

(assert (=> b!946669 m!879991))

(declare-fun m!879993 () Bool)

(assert (=> b!946669 m!879993))

(declare-fun m!879995 () Bool)

(assert (=> b!946669 m!879995))

(declare-fun m!879997 () Bool)

(assert (=> mapNonEmpty!32856 m!879997))

(declare-fun m!879999 () Bool)

(assert (=> b!946673 m!879999))

(check-sat (not b!946673) (not start!80762) (not b_next!18153) b_and!29593 (not b!946671) (not b!946669) tp_is_empty!20661 (not mapNonEmpty!32856))
(check-sat b_and!29593 (not b_next!18153))
(get-model)

(declare-fun d!114519 () Bool)

(declare-fun res!635571 () Bool)

(declare-fun e!532791 () Bool)

(assert (=> d!114519 (=> (not res!635571) (not e!532791))))

(declare-fun simpleValid!359 (LongMapFixedSize!4848) Bool)

(assert (=> d!114519 (= res!635571 (simpleValid!359 thiss!1141))))

(assert (=> d!114519 (= (valid!1827 thiss!1141) e!532791)))

(declare-fun b!946707 () Bool)

(declare-fun res!635572 () Bool)

(assert (=> b!946707 (=> (not res!635572) (not e!532791))))

(declare-fun arrayCountValidKeys!0 (array!57336 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!946707 (= res!635572 (= (arrayCountValidKeys!0 (_keys!10618 thiss!1141) #b00000000000000000000000000000000 (size!28051 (_keys!10618 thiss!1141))) (_size!2479 thiss!1141)))))

(declare-fun b!946708 () Bool)

(declare-fun res!635573 () Bool)

(assert (=> b!946708 (=> (not res!635573) (not e!532791))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57336 (_ BitVec 32)) Bool)

(assert (=> b!946708 (= res!635573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10618 thiss!1141) (mask!27431 thiss!1141)))))

(declare-fun b!946709 () Bool)

(declare-datatypes ((List!19429 0))(
  ( (Nil!19426) (Cons!19425 (h!20580 (_ BitVec 64)) (t!27758 List!19429)) )
))
(declare-fun arrayNoDuplicates!0 (array!57336 (_ BitVec 32) List!19429) Bool)

(assert (=> b!946709 (= e!532791 (arrayNoDuplicates!0 (_keys!10618 thiss!1141) #b00000000000000000000000000000000 Nil!19426))))

(assert (= (and d!114519 res!635571) b!946707))

(assert (= (and b!946707 res!635572) b!946708))

(assert (= (and b!946708 res!635573) b!946709))

(declare-fun m!880017 () Bool)

(assert (=> d!114519 m!880017))

(declare-fun m!880019 () Bool)

(assert (=> b!946707 m!880019))

(declare-fun m!880021 () Bool)

(assert (=> b!946708 m!880021))

(declare-fun m!880023 () Bool)

(assert (=> b!946709 m!880023))

(assert (=> start!80762 d!114519))

(declare-fun d!114521 () Bool)

(assert (=> d!114521 (= (validMask!0 (mask!27431 thiss!1141)) (and (or (= (mask!27431 thiss!1141) #b00000000000000000000000000000111) (= (mask!27431 thiss!1141) #b00000000000000000000000000001111) (= (mask!27431 thiss!1141) #b00000000000000000000000000011111) (= (mask!27431 thiss!1141) #b00000000000000000000000000111111) (= (mask!27431 thiss!1141) #b00000000000000000000000001111111) (= (mask!27431 thiss!1141) #b00000000000000000000000011111111) (= (mask!27431 thiss!1141) #b00000000000000000000000111111111) (= (mask!27431 thiss!1141) #b00000000000000000000001111111111) (= (mask!27431 thiss!1141) #b00000000000000000000011111111111) (= (mask!27431 thiss!1141) #b00000000000000000000111111111111) (= (mask!27431 thiss!1141) #b00000000000000000001111111111111) (= (mask!27431 thiss!1141) #b00000000000000000011111111111111) (= (mask!27431 thiss!1141) #b00000000000000000111111111111111) (= (mask!27431 thiss!1141) #b00000000000000001111111111111111) (= (mask!27431 thiss!1141) #b00000000000000011111111111111111) (= (mask!27431 thiss!1141) #b00000000000000111111111111111111) (= (mask!27431 thiss!1141) #b00000000000001111111111111111111) (= (mask!27431 thiss!1141) #b00000000000011111111111111111111) (= (mask!27431 thiss!1141) #b00000000000111111111111111111111) (= (mask!27431 thiss!1141) #b00000000001111111111111111111111) (= (mask!27431 thiss!1141) #b00000000011111111111111111111111) (= (mask!27431 thiss!1141) #b00000000111111111111111111111111) (= (mask!27431 thiss!1141) #b00000001111111111111111111111111) (= (mask!27431 thiss!1141) #b00000011111111111111111111111111) (= (mask!27431 thiss!1141) #b00000111111111111111111111111111) (= (mask!27431 thiss!1141) #b00001111111111111111111111111111) (= (mask!27431 thiss!1141) #b00011111111111111111111111111111) (= (mask!27431 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27431 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!946669 d!114521))

(declare-fun d!114523 () Bool)

(declare-fun res!635578 () Bool)

(declare-fun e!532796 () Bool)

(assert (=> d!114523 (=> res!635578 e!532796)))

(assert (=> d!114523 (= res!635578 (= (select (arr!27578 (_keys!10618 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!114523 (= (arrayContainsKey!0 (_keys!10618 thiss!1141) key!756 #b00000000000000000000000000000000) e!532796)))

(declare-fun b!946714 () Bool)

(declare-fun e!532797 () Bool)

(assert (=> b!946714 (= e!532796 e!532797)))

(declare-fun res!635579 () Bool)

(assert (=> b!946714 (=> (not res!635579) (not e!532797))))

(assert (=> b!946714 (= res!635579 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28051 (_keys!10618 thiss!1141))))))

(declare-fun b!946715 () Bool)

(assert (=> b!946715 (= e!532797 (arrayContainsKey!0 (_keys!10618 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!114523 (not res!635578)) b!946714))

(assert (= (and b!946714 res!635579) b!946715))

(declare-fun m!880025 () Bool)

(assert (=> d!114523 m!880025))

(declare-fun m!880027 () Bool)

(assert (=> b!946715 m!880027))

(assert (=> b!946669 d!114523))

(declare-fun d!114525 () Bool)

(assert (=> d!114525 (arrayContainsKey!0 (_keys!10618 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!426359 () Unit!31907)

(declare-fun choose!13 (array!57336 (_ BitVec 64) (_ BitVec 32)) Unit!31907)

(assert (=> d!114525 (= lt!426359 (choose!13 (_keys!10618 thiss!1141) key!756 (index!38759 lt!426350)))))

(assert (=> d!114525 (bvsge (index!38759 lt!426350) #b00000000000000000000000000000000)))

(assert (=> d!114525 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10618 thiss!1141) key!756 (index!38759 lt!426350)) lt!426359)))

(declare-fun bs!26607 () Bool)

(assert (= bs!26607 d!114525))

(assert (=> bs!26607 m!879993))

(declare-fun m!880029 () Bool)

(assert (=> bs!26607 m!880029))

(assert (=> b!946669 d!114525))

(declare-fun b!946728 () Bool)

(declare-fun e!532806 () SeekEntryResult!9097)

(assert (=> b!946728 (= e!532806 Undefined!9097)))

(declare-fun d!114527 () Bool)

(declare-fun lt!426368 () SeekEntryResult!9097)

(assert (=> d!114527 (and (or ((_ is MissingVacant!9097) lt!426368) (not ((_ is Found!9097) lt!426368)) (and (bvsge (index!38759 lt!426368) #b00000000000000000000000000000000) (bvslt (index!38759 lt!426368) (size!28051 (_keys!10618 thiss!1141))))) (not ((_ is MissingVacant!9097) lt!426368)) (or (not ((_ is Found!9097) lt!426368)) (= (select (arr!27578 (_keys!10618 thiss!1141)) (index!38759 lt!426368)) key!756)))))

(assert (=> d!114527 (= lt!426368 e!532806)))

(declare-fun c!98547 () Bool)

(declare-fun lt!426369 () SeekEntryResult!9097)

(assert (=> d!114527 (= c!98547 (and ((_ is Intermediate!9097) lt!426369) (undefined!9909 lt!426369)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57336 (_ BitVec 32)) SeekEntryResult!9097)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114527 (= lt!426369 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27431 thiss!1141)) key!756 (_keys!10618 thiss!1141) (mask!27431 thiss!1141)))))

(assert (=> d!114527 (validMask!0 (mask!27431 thiss!1141))))

(assert (=> d!114527 (= (seekEntry!0 key!756 (_keys!10618 thiss!1141) (mask!27431 thiss!1141)) lt!426368)))

(declare-fun b!946729 () Bool)

(declare-fun e!532805 () SeekEntryResult!9097)

(declare-fun lt!426370 () SeekEntryResult!9097)

(assert (=> b!946729 (= e!532805 (ite ((_ is MissingVacant!9097) lt!426370) (MissingZero!9097 (index!38761 lt!426370)) lt!426370))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57336 (_ BitVec 32)) SeekEntryResult!9097)

(assert (=> b!946729 (= lt!426370 (seekKeyOrZeroReturnVacant!0 (x!81417 lt!426369) (index!38760 lt!426369) (index!38760 lt!426369) key!756 (_keys!10618 thiss!1141) (mask!27431 thiss!1141)))))

(declare-fun b!946730 () Bool)

(assert (=> b!946730 (= e!532805 (MissingZero!9097 (index!38760 lt!426369)))))

(declare-fun b!946731 () Bool)

(declare-fun e!532804 () SeekEntryResult!9097)

(assert (=> b!946731 (= e!532804 (Found!9097 (index!38760 lt!426369)))))

(declare-fun b!946732 () Bool)

(assert (=> b!946732 (= e!532806 e!532804)))

(declare-fun lt!426371 () (_ BitVec 64))

(assert (=> b!946732 (= lt!426371 (select (arr!27578 (_keys!10618 thiss!1141)) (index!38760 lt!426369)))))

(declare-fun c!98548 () Bool)

(assert (=> b!946732 (= c!98548 (= lt!426371 key!756))))

(declare-fun b!946733 () Bool)

(declare-fun c!98546 () Bool)

(assert (=> b!946733 (= c!98546 (= lt!426371 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!946733 (= e!532804 e!532805)))

(assert (= (and d!114527 c!98547) b!946728))

(assert (= (and d!114527 (not c!98547)) b!946732))

(assert (= (and b!946732 c!98548) b!946731))

(assert (= (and b!946732 (not c!98548)) b!946733))

(assert (= (and b!946733 c!98546) b!946730))

(assert (= (and b!946733 (not c!98546)) b!946729))

(declare-fun m!880031 () Bool)

(assert (=> d!114527 m!880031))

(declare-fun m!880033 () Bool)

(assert (=> d!114527 m!880033))

(assert (=> d!114527 m!880033))

(declare-fun m!880035 () Bool)

(assert (=> d!114527 m!880035))

(assert (=> d!114527 m!879991))

(declare-fun m!880037 () Bool)

(assert (=> b!946729 m!880037))

(declare-fun m!880039 () Bool)

(assert (=> b!946732 m!880039))

(assert (=> b!946673 d!114527))

(declare-fun d!114529 () Bool)

(assert (=> d!114529 (= (array_inv!21358 (_keys!10618 thiss!1141)) (bvsge (size!28051 (_keys!10618 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!946671 d!114529))

(declare-fun d!114531 () Bool)

(assert (=> d!114531 (= (array_inv!21359 (_values!5744 thiss!1141)) (bvsge (size!28050 (_values!5744 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!946671 d!114531))

(declare-fun b!946741 () Bool)

(declare-fun e!532811 () Bool)

(assert (=> b!946741 (= e!532811 tp_is_empty!20661)))

(declare-fun condMapEmpty!32862 () Bool)

(declare-fun mapDefault!32862 () ValueCell!9849)

(assert (=> mapNonEmpty!32856 (= condMapEmpty!32862 (= mapRest!32856 ((as const (Array (_ BitVec 32) ValueCell!9849)) mapDefault!32862)))))

(declare-fun mapRes!32862 () Bool)

(assert (=> mapNonEmpty!32856 (= tp!63008 (and e!532811 mapRes!32862))))

(declare-fun mapNonEmpty!32862 () Bool)

(declare-fun tp!63018 () Bool)

(declare-fun e!532812 () Bool)

(assert (=> mapNonEmpty!32862 (= mapRes!32862 (and tp!63018 e!532812))))

(declare-fun mapValue!32862 () ValueCell!9849)

(declare-fun mapRest!32862 () (Array (_ BitVec 32) ValueCell!9849))

(declare-fun mapKey!32862 () (_ BitVec 32))

(assert (=> mapNonEmpty!32862 (= mapRest!32856 (store mapRest!32862 mapKey!32862 mapValue!32862))))

(declare-fun b!946740 () Bool)

(assert (=> b!946740 (= e!532812 tp_is_empty!20661)))

(declare-fun mapIsEmpty!32862 () Bool)

(assert (=> mapIsEmpty!32862 mapRes!32862))

(assert (= (and mapNonEmpty!32856 condMapEmpty!32862) mapIsEmpty!32862))

(assert (= (and mapNonEmpty!32856 (not condMapEmpty!32862)) mapNonEmpty!32862))

(assert (= (and mapNonEmpty!32862 ((_ is ValueCellFull!9849) mapValue!32862)) b!946740))

(assert (= (and mapNonEmpty!32856 ((_ is ValueCellFull!9849) mapDefault!32862)) b!946741))

(declare-fun m!880041 () Bool)

(assert (=> mapNonEmpty!32862 m!880041))

(check-sat (not b!946708) (not b_next!18153) (not b!946709) b_and!29593 (not d!114519) (not b!946729) (not d!114525) (not b!946707) (not d!114527) (not b!946715) tp_is_empty!20661 (not mapNonEmpty!32862))
(check-sat b_and!29593 (not b_next!18153))
(get-model)

(assert (=> d!114525 d!114523))

(declare-fun d!114533 () Bool)

(assert (=> d!114533 (arrayContainsKey!0 (_keys!10618 thiss!1141) key!756 #b00000000000000000000000000000000)))

(assert (=> d!114533 true))

(declare-fun _$60!439 () Unit!31907)

(assert (=> d!114533 (= (choose!13 (_keys!10618 thiss!1141) key!756 (index!38759 lt!426350)) _$60!439)))

(declare-fun bs!26608 () Bool)

(assert (= bs!26608 d!114533))

(assert (=> bs!26608 m!879993))

(assert (=> d!114525 d!114533))

(declare-fun d!114535 () Bool)

(declare-fun res!635580 () Bool)

(declare-fun e!532813 () Bool)

(assert (=> d!114535 (=> res!635580 e!532813)))

(assert (=> d!114535 (= res!635580 (= (select (arr!27578 (_keys!10618 thiss!1141)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!756))))

(assert (=> d!114535 (= (arrayContainsKey!0 (_keys!10618 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!532813)))

(declare-fun b!946742 () Bool)

(declare-fun e!532814 () Bool)

(assert (=> b!946742 (= e!532813 e!532814)))

(declare-fun res!635581 () Bool)

(assert (=> b!946742 (=> (not res!635581) (not e!532814))))

(assert (=> b!946742 (= res!635581 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!28051 (_keys!10618 thiss!1141))))))

(declare-fun b!946743 () Bool)

(assert (=> b!946743 (= e!532814 (arrayContainsKey!0 (_keys!10618 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!114535 (not res!635580)) b!946742))

(assert (= (and b!946742 res!635581) b!946743))

(declare-fun m!880043 () Bool)

(assert (=> d!114535 m!880043))

(declare-fun m!880045 () Bool)

(assert (=> b!946743 m!880045))

(assert (=> b!946715 d!114535))

(declare-fun b!946754 () Bool)

(declare-fun e!532824 () Bool)

(declare-fun call!41097 () Bool)

(assert (=> b!946754 (= e!532824 call!41097)))

(declare-fun b!946755 () Bool)

(declare-fun e!532823 () Bool)

(declare-fun contains!5204 (List!19429 (_ BitVec 64)) Bool)

(assert (=> b!946755 (= e!532823 (contains!5204 Nil!19426 (select (arr!27578 (_keys!10618 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41094 () Bool)

(declare-fun c!98551 () Bool)

(assert (=> bm!41094 (= call!41097 (arrayNoDuplicates!0 (_keys!10618 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!98551 (Cons!19425 (select (arr!27578 (_keys!10618 thiss!1141)) #b00000000000000000000000000000000) Nil!19426) Nil!19426)))))

(declare-fun b!946756 () Bool)

(declare-fun e!532826 () Bool)

(assert (=> b!946756 (= e!532826 e!532824)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!946756 (= c!98551 (validKeyInArray!0 (select (arr!27578 (_keys!10618 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!114537 () Bool)

(declare-fun res!635588 () Bool)

(declare-fun e!532825 () Bool)

(assert (=> d!114537 (=> res!635588 e!532825)))

(assert (=> d!114537 (= res!635588 (bvsge #b00000000000000000000000000000000 (size!28051 (_keys!10618 thiss!1141))))))

(assert (=> d!114537 (= (arrayNoDuplicates!0 (_keys!10618 thiss!1141) #b00000000000000000000000000000000 Nil!19426) e!532825)))

(declare-fun b!946757 () Bool)

(assert (=> b!946757 (= e!532825 e!532826)))

(declare-fun res!635590 () Bool)

(assert (=> b!946757 (=> (not res!635590) (not e!532826))))

(assert (=> b!946757 (= res!635590 (not e!532823))))

(declare-fun res!635589 () Bool)

(assert (=> b!946757 (=> (not res!635589) (not e!532823))))

(assert (=> b!946757 (= res!635589 (validKeyInArray!0 (select (arr!27578 (_keys!10618 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!946758 () Bool)

(assert (=> b!946758 (= e!532824 call!41097)))

(assert (= (and d!114537 (not res!635588)) b!946757))

(assert (= (and b!946757 res!635589) b!946755))

(assert (= (and b!946757 res!635590) b!946756))

(assert (= (and b!946756 c!98551) b!946758))

(assert (= (and b!946756 (not c!98551)) b!946754))

(assert (= (or b!946758 b!946754) bm!41094))

(assert (=> b!946755 m!880025))

(assert (=> b!946755 m!880025))

(declare-fun m!880047 () Bool)

(assert (=> b!946755 m!880047))

(assert (=> bm!41094 m!880025))

(declare-fun m!880049 () Bool)

(assert (=> bm!41094 m!880049))

(assert (=> b!946756 m!880025))

(assert (=> b!946756 m!880025))

(declare-fun m!880051 () Bool)

(assert (=> b!946756 m!880051))

(assert (=> b!946757 m!880025))

(assert (=> b!946757 m!880025))

(assert (=> b!946757 m!880051))

(assert (=> b!946709 d!114537))

(declare-fun b!946771 () Bool)

(declare-fun e!532834 () SeekEntryResult!9097)

(assert (=> b!946771 (= e!532834 Undefined!9097)))

(declare-fun b!946772 () Bool)

(declare-fun e!532835 () SeekEntryResult!9097)

(assert (=> b!946772 (= e!532834 e!532835)))

(declare-fun c!98560 () Bool)

(declare-fun lt!426377 () (_ BitVec 64))

(assert (=> b!946772 (= c!98560 (= lt!426377 key!756))))

(declare-fun b!946774 () Bool)

(declare-fun c!98558 () Bool)

(assert (=> b!946774 (= c!98558 (= lt!426377 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!532833 () SeekEntryResult!9097)

(assert (=> b!946774 (= e!532835 e!532833)))

(declare-fun b!946775 () Bool)

(assert (=> b!946775 (= e!532833 (MissingVacant!9097 (index!38760 lt!426369)))))

(declare-fun b!946776 () Bool)

(assert (=> b!946776 (= e!532835 (Found!9097 (index!38760 lt!426369)))))

(declare-fun lt!426376 () SeekEntryResult!9097)

(declare-fun d!114539 () Bool)

(assert (=> d!114539 (and (or ((_ is Undefined!9097) lt!426376) (not ((_ is Found!9097) lt!426376)) (and (bvsge (index!38759 lt!426376) #b00000000000000000000000000000000) (bvslt (index!38759 lt!426376) (size!28051 (_keys!10618 thiss!1141))))) (or ((_ is Undefined!9097) lt!426376) ((_ is Found!9097) lt!426376) (not ((_ is MissingVacant!9097) lt!426376)) (not (= (index!38761 lt!426376) (index!38760 lt!426369))) (and (bvsge (index!38761 lt!426376) #b00000000000000000000000000000000) (bvslt (index!38761 lt!426376) (size!28051 (_keys!10618 thiss!1141))))) (or ((_ is Undefined!9097) lt!426376) (ite ((_ is Found!9097) lt!426376) (= (select (arr!27578 (_keys!10618 thiss!1141)) (index!38759 lt!426376)) key!756) (and ((_ is MissingVacant!9097) lt!426376) (= (index!38761 lt!426376) (index!38760 lt!426369)) (= (select (arr!27578 (_keys!10618 thiss!1141)) (index!38761 lt!426376)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!114539 (= lt!426376 e!532834)))

(declare-fun c!98559 () Bool)

(assert (=> d!114539 (= c!98559 (bvsge (x!81417 lt!426369) #b01111111111111111111111111111110))))

(assert (=> d!114539 (= lt!426377 (select (arr!27578 (_keys!10618 thiss!1141)) (index!38760 lt!426369)))))

(assert (=> d!114539 (validMask!0 (mask!27431 thiss!1141))))

(assert (=> d!114539 (= (seekKeyOrZeroReturnVacant!0 (x!81417 lt!426369) (index!38760 lt!426369) (index!38760 lt!426369) key!756 (_keys!10618 thiss!1141) (mask!27431 thiss!1141)) lt!426376)))

(declare-fun b!946773 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!946773 (= e!532833 (seekKeyOrZeroReturnVacant!0 (bvadd (x!81417 lt!426369) #b00000000000000000000000000000001) (nextIndex!0 (index!38760 lt!426369) (x!81417 lt!426369) (mask!27431 thiss!1141)) (index!38760 lt!426369) key!756 (_keys!10618 thiss!1141) (mask!27431 thiss!1141)))))

(assert (= (and d!114539 c!98559) b!946771))

(assert (= (and d!114539 (not c!98559)) b!946772))

(assert (= (and b!946772 c!98560) b!946776))

(assert (= (and b!946772 (not c!98560)) b!946774))

(assert (= (and b!946774 c!98558) b!946775))

(assert (= (and b!946774 (not c!98558)) b!946773))

(declare-fun m!880053 () Bool)

(assert (=> d!114539 m!880053))

(declare-fun m!880055 () Bool)

(assert (=> d!114539 m!880055))

(assert (=> d!114539 m!880039))

(assert (=> d!114539 m!879991))

(declare-fun m!880057 () Bool)

(assert (=> b!946773 m!880057))

(assert (=> b!946773 m!880057))

(declare-fun m!880059 () Bool)

(assert (=> b!946773 m!880059))

(assert (=> b!946729 d!114539))

(declare-fun d!114541 () Bool)

(declare-fun res!635596 () Bool)

(declare-fun e!532842 () Bool)

(assert (=> d!114541 (=> res!635596 e!532842)))

(assert (=> d!114541 (= res!635596 (bvsge #b00000000000000000000000000000000 (size!28051 (_keys!10618 thiss!1141))))))

(assert (=> d!114541 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10618 thiss!1141) (mask!27431 thiss!1141)) e!532842)))

(declare-fun b!946785 () Bool)

(declare-fun e!532844 () Bool)

(declare-fun call!41100 () Bool)

(assert (=> b!946785 (= e!532844 call!41100)))

(declare-fun b!946786 () Bool)

(declare-fun e!532843 () Bool)

(assert (=> b!946786 (= e!532842 e!532843)))

(declare-fun c!98563 () Bool)

(assert (=> b!946786 (= c!98563 (validKeyInArray!0 (select (arr!27578 (_keys!10618 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!946787 () Bool)

(assert (=> b!946787 (= e!532843 e!532844)))

(declare-fun lt!426385 () (_ BitVec 64))

(assert (=> b!946787 (= lt!426385 (select (arr!27578 (_keys!10618 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!426386 () Unit!31907)

(assert (=> b!946787 (= lt!426386 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10618 thiss!1141) lt!426385 #b00000000000000000000000000000000))))

(assert (=> b!946787 (arrayContainsKey!0 (_keys!10618 thiss!1141) lt!426385 #b00000000000000000000000000000000)))

(declare-fun lt!426384 () Unit!31907)

(assert (=> b!946787 (= lt!426384 lt!426386)))

(declare-fun res!635595 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57336 (_ BitVec 32)) SeekEntryResult!9097)

(assert (=> b!946787 (= res!635595 (= (seekEntryOrOpen!0 (select (arr!27578 (_keys!10618 thiss!1141)) #b00000000000000000000000000000000) (_keys!10618 thiss!1141) (mask!27431 thiss!1141)) (Found!9097 #b00000000000000000000000000000000)))))

(assert (=> b!946787 (=> (not res!635595) (not e!532844))))

(declare-fun b!946788 () Bool)

(assert (=> b!946788 (= e!532843 call!41100)))

(declare-fun bm!41097 () Bool)

(assert (=> bm!41097 (= call!41100 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10618 thiss!1141) (mask!27431 thiss!1141)))))

(assert (= (and d!114541 (not res!635596)) b!946786))

(assert (= (and b!946786 c!98563) b!946787))

(assert (= (and b!946786 (not c!98563)) b!946788))

(assert (= (and b!946787 res!635595) b!946785))

(assert (= (or b!946785 b!946788) bm!41097))

(assert (=> b!946786 m!880025))

(assert (=> b!946786 m!880025))

(assert (=> b!946786 m!880051))

(assert (=> b!946787 m!880025))

(declare-fun m!880061 () Bool)

(assert (=> b!946787 m!880061))

(declare-fun m!880063 () Bool)

(assert (=> b!946787 m!880063))

(assert (=> b!946787 m!880025))

(declare-fun m!880065 () Bool)

(assert (=> b!946787 m!880065))

(declare-fun m!880067 () Bool)

(assert (=> bm!41097 m!880067))

(assert (=> b!946708 d!114541))

(declare-fun b!946797 () Bool)

(declare-fun e!532850 () (_ BitVec 32))

(declare-fun call!41103 () (_ BitVec 32))

(assert (=> b!946797 (= e!532850 call!41103)))

(declare-fun bm!41100 () Bool)

(assert (=> bm!41100 (= call!41103 (arrayCountValidKeys!0 (_keys!10618 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28051 (_keys!10618 thiss!1141))))))

(declare-fun b!946798 () Bool)

(declare-fun e!532849 () (_ BitVec 32))

(assert (=> b!946798 (= e!532849 e!532850)))

(declare-fun c!98568 () Bool)

(assert (=> b!946798 (= c!98568 (validKeyInArray!0 (select (arr!27578 (_keys!10618 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!946800 () Bool)

(assert (=> b!946800 (= e!532849 #b00000000000000000000000000000000)))

(declare-fun d!114543 () Bool)

(declare-fun lt!426389 () (_ BitVec 32))

(assert (=> d!114543 (and (bvsge lt!426389 #b00000000000000000000000000000000) (bvsle lt!426389 (bvsub (size!28051 (_keys!10618 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> d!114543 (= lt!426389 e!532849)))

(declare-fun c!98569 () Bool)

(assert (=> d!114543 (= c!98569 (bvsge #b00000000000000000000000000000000 (size!28051 (_keys!10618 thiss!1141))))))

(assert (=> d!114543 (and (bvsle #b00000000000000000000000000000000 (size!28051 (_keys!10618 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!28051 (_keys!10618 thiss!1141)) (size!28051 (_keys!10618 thiss!1141))))))

(assert (=> d!114543 (= (arrayCountValidKeys!0 (_keys!10618 thiss!1141) #b00000000000000000000000000000000 (size!28051 (_keys!10618 thiss!1141))) lt!426389)))

(declare-fun b!946799 () Bool)

(assert (=> b!946799 (= e!532850 (bvadd #b00000000000000000000000000000001 call!41103))))

(assert (= (and d!114543 c!98569) b!946800))

(assert (= (and d!114543 (not c!98569)) b!946798))

(assert (= (and b!946798 c!98568) b!946799))

(assert (= (and b!946798 (not c!98568)) b!946797))

(assert (= (or b!946799 b!946797) bm!41100))

(declare-fun m!880069 () Bool)

(assert (=> bm!41100 m!880069))

(assert (=> b!946798 m!880025))

(assert (=> b!946798 m!880025))

(assert (=> b!946798 m!880051))

(assert (=> b!946707 d!114543))

(declare-fun d!114545 () Bool)

(declare-fun e!532864 () Bool)

(assert (=> d!114545 e!532864))

(declare-fun c!98577 () Bool)

(declare-fun lt!426395 () SeekEntryResult!9097)

(assert (=> d!114545 (= c!98577 (and ((_ is Intermediate!9097) lt!426395) (undefined!9909 lt!426395)))))

(declare-fun e!532865 () SeekEntryResult!9097)

(assert (=> d!114545 (= lt!426395 e!532865)))

(declare-fun c!98576 () Bool)

(assert (=> d!114545 (= c!98576 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!426394 () (_ BitVec 64))

(assert (=> d!114545 (= lt!426394 (select (arr!27578 (_keys!10618 thiss!1141)) (toIndex!0 key!756 (mask!27431 thiss!1141))))))

(assert (=> d!114545 (validMask!0 (mask!27431 thiss!1141))))

(assert (=> d!114545 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27431 thiss!1141)) key!756 (_keys!10618 thiss!1141) (mask!27431 thiss!1141)) lt!426395)))

(declare-fun b!946819 () Bool)

(assert (=> b!946819 (= e!532865 (Intermediate!9097 true (toIndex!0 key!756 (mask!27431 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!946820 () Bool)

(declare-fun e!532863 () SeekEntryResult!9097)

(assert (=> b!946820 (= e!532863 (Intermediate!9097 false (toIndex!0 key!756 (mask!27431 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!946821 () Bool)

(assert (=> b!946821 (and (bvsge (index!38760 lt!426395) #b00000000000000000000000000000000) (bvslt (index!38760 lt!426395) (size!28051 (_keys!10618 thiss!1141))))))

(declare-fun res!635604 () Bool)

(assert (=> b!946821 (= res!635604 (= (select (arr!27578 (_keys!10618 thiss!1141)) (index!38760 lt!426395)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!532862 () Bool)

(assert (=> b!946821 (=> res!635604 e!532862)))

(declare-fun b!946822 () Bool)

(assert (=> b!946822 (= e!532863 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!756 (mask!27431 thiss!1141)) #b00000000000000000000000000000000 (mask!27431 thiss!1141)) key!756 (_keys!10618 thiss!1141) (mask!27431 thiss!1141)))))

(declare-fun b!946823 () Bool)

(assert (=> b!946823 (and (bvsge (index!38760 lt!426395) #b00000000000000000000000000000000) (bvslt (index!38760 lt!426395) (size!28051 (_keys!10618 thiss!1141))))))

(declare-fun res!635603 () Bool)

(assert (=> b!946823 (= res!635603 (= (select (arr!27578 (_keys!10618 thiss!1141)) (index!38760 lt!426395)) key!756))))

(assert (=> b!946823 (=> res!635603 e!532862)))

(declare-fun e!532861 () Bool)

(assert (=> b!946823 (= e!532861 e!532862)))

(declare-fun b!946824 () Bool)

(assert (=> b!946824 (= e!532864 (bvsge (x!81417 lt!426395) #b01111111111111111111111111111110))))

(declare-fun b!946825 () Bool)

(assert (=> b!946825 (= e!532864 e!532861)))

(declare-fun res!635605 () Bool)

(assert (=> b!946825 (= res!635605 (and ((_ is Intermediate!9097) lt!426395) (not (undefined!9909 lt!426395)) (bvslt (x!81417 lt!426395) #b01111111111111111111111111111110) (bvsge (x!81417 lt!426395) #b00000000000000000000000000000000) (bvsge (x!81417 lt!426395) #b00000000000000000000000000000000)))))

(assert (=> b!946825 (=> (not res!635605) (not e!532861))))

(declare-fun b!946826 () Bool)

(assert (=> b!946826 (and (bvsge (index!38760 lt!426395) #b00000000000000000000000000000000) (bvslt (index!38760 lt!426395) (size!28051 (_keys!10618 thiss!1141))))))

(assert (=> b!946826 (= e!532862 (= (select (arr!27578 (_keys!10618 thiss!1141)) (index!38760 lt!426395)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!946827 () Bool)

(assert (=> b!946827 (= e!532865 e!532863)))

(declare-fun c!98578 () Bool)

(assert (=> b!946827 (= c!98578 (or (= lt!426394 key!756) (= (bvadd lt!426394 lt!426394) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!114545 c!98576) b!946819))

(assert (= (and d!114545 (not c!98576)) b!946827))

(assert (= (and b!946827 c!98578) b!946820))

(assert (= (and b!946827 (not c!98578)) b!946822))

(assert (= (and d!114545 c!98577) b!946824))

(assert (= (and d!114545 (not c!98577)) b!946825))

(assert (= (and b!946825 res!635605) b!946823))

(assert (= (and b!946823 (not res!635603)) b!946821))

(assert (= (and b!946821 (not res!635604)) b!946826))

(assert (=> b!946822 m!880033))

(declare-fun m!880071 () Bool)

(assert (=> b!946822 m!880071))

(assert (=> b!946822 m!880071))

(declare-fun m!880073 () Bool)

(assert (=> b!946822 m!880073))

(declare-fun m!880075 () Bool)

(assert (=> b!946826 m!880075))

(assert (=> d!114545 m!880033))

(declare-fun m!880077 () Bool)

(assert (=> d!114545 m!880077))

(assert (=> d!114545 m!879991))

(assert (=> b!946821 m!880075))

(assert (=> b!946823 m!880075))

(assert (=> d!114527 d!114545))

(declare-fun d!114547 () Bool)

(declare-fun lt!426401 () (_ BitVec 32))

(declare-fun lt!426400 () (_ BitVec 32))

(assert (=> d!114547 (= lt!426401 (bvmul (bvxor lt!426400 (bvlshr lt!426400 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!114547 (= lt!426400 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!114547 (and (bvsge (mask!27431 thiss!1141) #b00000000000000000000000000000000) (let ((res!635606 (let ((h!20581 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!81435 (bvmul (bvxor h!20581 (bvlshr h!20581 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!81435 (bvlshr x!81435 #b00000000000000000000000000001101)) (mask!27431 thiss!1141)))))) (and (bvslt res!635606 (bvadd (mask!27431 thiss!1141) #b00000000000000000000000000000001)) (bvsge res!635606 #b00000000000000000000000000000000))))))

(assert (=> d!114547 (= (toIndex!0 key!756 (mask!27431 thiss!1141)) (bvand (bvxor lt!426401 (bvlshr lt!426401 #b00000000000000000000000000001101)) (mask!27431 thiss!1141)))))

(assert (=> d!114527 d!114547))

(assert (=> d!114527 d!114521))

(declare-fun b!946838 () Bool)

(declare-fun res!635617 () Bool)

(declare-fun e!532868 () Bool)

(assert (=> b!946838 (=> (not res!635617) (not e!532868))))

(declare-fun size!28054 (LongMapFixedSize!4848) (_ BitVec 32))

(assert (=> b!946838 (= res!635617 (= (size!28054 thiss!1141) (bvadd (_size!2479 thiss!1141) (bvsdiv (bvadd (extraKeys!5453 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!946836 () Bool)

(declare-fun res!635616 () Bool)

(assert (=> b!946836 (=> (not res!635616) (not e!532868))))

(assert (=> b!946836 (= res!635616 (and (= (size!28050 (_values!5744 thiss!1141)) (bvadd (mask!27431 thiss!1141) #b00000000000000000000000000000001)) (= (size!28051 (_keys!10618 thiss!1141)) (size!28050 (_values!5744 thiss!1141))) (bvsge (_size!2479 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2479 thiss!1141) (bvadd (mask!27431 thiss!1141) #b00000000000000000000000000000001))))))

(declare-fun d!114549 () Bool)

(declare-fun res!635615 () Bool)

(assert (=> d!114549 (=> (not res!635615) (not e!532868))))

(assert (=> d!114549 (= res!635615 (validMask!0 (mask!27431 thiss!1141)))))

(assert (=> d!114549 (= (simpleValid!359 thiss!1141) e!532868)))

(declare-fun b!946837 () Bool)

(declare-fun res!635618 () Bool)

(assert (=> b!946837 (=> (not res!635618) (not e!532868))))

(assert (=> b!946837 (= res!635618 (bvsge (size!28054 thiss!1141) (_size!2479 thiss!1141)))))

(declare-fun b!946839 () Bool)

(assert (=> b!946839 (= e!532868 (and (bvsge (extraKeys!5453 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5453 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2479 thiss!1141) #b00000000000000000000000000000000)))))

(assert (= (and d!114549 res!635615) b!946836))

(assert (= (and b!946836 res!635616) b!946837))

(assert (= (and b!946837 res!635618) b!946838))

(assert (= (and b!946838 res!635617) b!946839))

(declare-fun m!880079 () Bool)

(assert (=> b!946838 m!880079))

(assert (=> d!114549 m!879991))

(assert (=> b!946837 m!880079))

(assert (=> d!114519 d!114549))

(declare-fun b!946841 () Bool)

(declare-fun e!532869 () Bool)

(assert (=> b!946841 (= e!532869 tp_is_empty!20661)))

(declare-fun condMapEmpty!32863 () Bool)

(declare-fun mapDefault!32863 () ValueCell!9849)

(assert (=> mapNonEmpty!32862 (= condMapEmpty!32863 (= mapRest!32862 ((as const (Array (_ BitVec 32) ValueCell!9849)) mapDefault!32863)))))

(declare-fun mapRes!32863 () Bool)

(assert (=> mapNonEmpty!32862 (= tp!63018 (and e!532869 mapRes!32863))))

(declare-fun mapNonEmpty!32863 () Bool)

(declare-fun tp!63019 () Bool)

(declare-fun e!532870 () Bool)

(assert (=> mapNonEmpty!32863 (= mapRes!32863 (and tp!63019 e!532870))))

(declare-fun mapRest!32863 () (Array (_ BitVec 32) ValueCell!9849))

(declare-fun mapKey!32863 () (_ BitVec 32))

(declare-fun mapValue!32863 () ValueCell!9849)

(assert (=> mapNonEmpty!32863 (= mapRest!32862 (store mapRest!32863 mapKey!32863 mapValue!32863))))

(declare-fun b!946840 () Bool)

(assert (=> b!946840 (= e!532870 tp_is_empty!20661)))

(declare-fun mapIsEmpty!32863 () Bool)

(assert (=> mapIsEmpty!32863 mapRes!32863))

(assert (= (and mapNonEmpty!32862 condMapEmpty!32863) mapIsEmpty!32863))

(assert (= (and mapNonEmpty!32862 (not condMapEmpty!32863)) mapNonEmpty!32863))

(assert (= (and mapNonEmpty!32863 ((_ is ValueCellFull!9849) mapValue!32863)) b!946840))

(assert (= (and mapNonEmpty!32862 ((_ is ValueCellFull!9849) mapDefault!32863)) b!946841))

(declare-fun m!880081 () Bool)

(assert (=> mapNonEmpty!32863 m!880081))

(check-sat (not b!946786) (not b_next!18153) (not mapNonEmpty!32863) (not b!946798) (not d!114533) (not d!114549) (not b!946757) (not b!946756) (not b!946838) (not b!946837) (not bm!41094) (not b!946822) (not d!114545) (not b!946755) b_and!29593 (not b!946773) (not d!114539) tp_is_empty!20661 (not b!946787) (not bm!41100) (not b!946743) (not bm!41097))
(check-sat b_and!29593 (not b_next!18153))
