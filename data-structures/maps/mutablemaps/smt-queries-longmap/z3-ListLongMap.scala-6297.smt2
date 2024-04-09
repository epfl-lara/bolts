; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80554 () Bool)

(assert start!80554)

(declare-fun b!945424 () Bool)

(declare-fun b_free!18105 () Bool)

(declare-fun b_next!18105 () Bool)

(assert (=> b!945424 (= b_free!18105 (not b_next!18105))))

(declare-fun tp!62837 () Bool)

(declare-fun b_and!29545 () Bool)

(assert (=> b!945424 (= tp!62837 b_and!29545)))

(declare-fun res!635043 () Bool)

(declare-fun e!531818 () Bool)

(assert (=> start!80554 (=> (not res!635043) (not e!531818))))

(declare-datatypes ((V!32449 0))(
  ( (V!32450 (val!10357 Int)) )
))
(declare-datatypes ((ValueCell!9825 0))(
  ( (ValueCellFull!9825 (v!12891 V!32449)) (EmptyCell!9825) )
))
(declare-datatypes ((array!57222 0))(
  ( (array!57223 (arr!27529 (Array (_ BitVec 32) ValueCell!9825)) (size!27998 (_ BitVec 32))) )
))
(declare-datatypes ((array!57224 0))(
  ( (array!57225 (arr!27530 (Array (_ BitVec 32) (_ BitVec 64))) (size!27999 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4800 0))(
  ( (LongMapFixedSize!4801 (defaultEntry!5697 Int) (mask!27361 (_ BitVec 32)) (extraKeys!5429 (_ BitVec 32)) (zeroValue!5533 V!32449) (minValue!5533 V!32449) (_size!2455 (_ BitVec 32)) (_keys!10574 array!57224) (_values!5720 array!57222) (_vacant!2455 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4800)

(declare-fun valid!1809 (LongMapFixedSize!4800) Bool)

(assert (=> start!80554 (= res!635043 (valid!1809 thiss!1141))))

(assert (=> start!80554 e!531818))

(declare-fun e!531820 () Bool)

(assert (=> start!80554 e!531820))

(assert (=> start!80554 true))

(declare-fun b!945423 () Bool)

(declare-fun res!635044 () Bool)

(assert (=> b!945423 (=> (not res!635044) (not e!531818))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!945423 (= res!635044 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!531819 () Bool)

(declare-fun tp_is_empty!20613 () Bool)

(declare-fun array_inv!21332 (array!57224) Bool)

(declare-fun array_inv!21333 (array!57222) Bool)

(assert (=> b!945424 (= e!531820 (and tp!62837 tp_is_empty!20613 (array_inv!21332 (_keys!10574 thiss!1141)) (array_inv!21333 (_values!5720 thiss!1141)) e!531819))))

(declare-fun b!945425 () Bool)

(declare-datatypes ((SeekEntryResult!9080 0))(
  ( (MissingZero!9080 (index!38690 (_ BitVec 32))) (Found!9080 (index!38691 (_ BitVec 32))) (Intermediate!9080 (undefined!9892 Bool) (index!38692 (_ BitVec 32)) (x!81236 (_ BitVec 32))) (Undefined!9080) (MissingVacant!9080 (index!38693 (_ BitVec 32))) )
))
(declare-fun lt!425996 () SeekEntryResult!9080)

(get-info :version)

(assert (=> b!945425 (= e!531818 (and ((_ is Found!9080) lt!425996) (bvsge (index!38691 lt!425996) #b00000000000000000000000000000000) (bvsge (index!38691 lt!425996) (size!27999 (_keys!10574 thiss!1141)))))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57224 (_ BitVec 32)) SeekEntryResult!9080)

(assert (=> b!945425 (= lt!425996 (seekEntry!0 key!756 (_keys!10574 thiss!1141) (mask!27361 thiss!1141)))))

(declare-fun b!945426 () Bool)

(declare-fun e!531816 () Bool)

(assert (=> b!945426 (= e!531816 tp_is_empty!20613)))

(declare-fun mapIsEmpty!32756 () Bool)

(declare-fun mapRes!32756 () Bool)

(assert (=> mapIsEmpty!32756 mapRes!32756))

(declare-fun b!945427 () Bool)

(declare-fun e!531815 () Bool)

(assert (=> b!945427 (= e!531815 tp_is_empty!20613)))

(declare-fun mapNonEmpty!32756 () Bool)

(declare-fun tp!62836 () Bool)

(assert (=> mapNonEmpty!32756 (= mapRes!32756 (and tp!62836 e!531816))))

(declare-fun mapValue!32756 () ValueCell!9825)

(declare-fun mapKey!32756 () (_ BitVec 32))

(declare-fun mapRest!32756 () (Array (_ BitVec 32) ValueCell!9825))

(assert (=> mapNonEmpty!32756 (= (arr!27529 (_values!5720 thiss!1141)) (store mapRest!32756 mapKey!32756 mapValue!32756))))

(declare-fun b!945428 () Bool)

(assert (=> b!945428 (= e!531819 (and e!531815 mapRes!32756))))

(declare-fun condMapEmpty!32756 () Bool)

(declare-fun mapDefault!32756 () ValueCell!9825)

(assert (=> b!945428 (= condMapEmpty!32756 (= (arr!27529 (_values!5720 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9825)) mapDefault!32756)))))

(assert (= (and start!80554 res!635043) b!945423))

(assert (= (and b!945423 res!635044) b!945425))

(assert (= (and b!945428 condMapEmpty!32756) mapIsEmpty!32756))

(assert (= (and b!945428 (not condMapEmpty!32756)) mapNonEmpty!32756))

(assert (= (and mapNonEmpty!32756 ((_ is ValueCellFull!9825) mapValue!32756)) b!945426))

(assert (= (and b!945428 ((_ is ValueCellFull!9825) mapDefault!32756)) b!945427))

(assert (= b!945424 b!945428))

(assert (= start!80554 b!945424))

(declare-fun m!879285 () Bool)

(assert (=> start!80554 m!879285))

(declare-fun m!879287 () Bool)

(assert (=> b!945424 m!879287))

(declare-fun m!879289 () Bool)

(assert (=> b!945424 m!879289))

(declare-fun m!879291 () Bool)

(assert (=> b!945425 m!879291))

(declare-fun m!879293 () Bool)

(assert (=> mapNonEmpty!32756 m!879293))

(check-sat (not b_next!18105) (not start!80554) (not b!945425) tp_is_empty!20613 (not b!945424) (not mapNonEmpty!32756) b_and!29545)
(check-sat b_and!29545 (not b_next!18105))
(get-model)

(declare-fun d!114337 () Bool)

(declare-fun res!635057 () Bool)

(declare-fun e!531841 () Bool)

(assert (=> d!114337 (=> (not res!635057) (not e!531841))))

(declare-fun simpleValid!351 (LongMapFixedSize!4800) Bool)

(assert (=> d!114337 (= res!635057 (simpleValid!351 thiss!1141))))

(assert (=> d!114337 (= (valid!1809 thiss!1141) e!531841)))

(declare-fun b!945453 () Bool)

(declare-fun res!635058 () Bool)

(assert (=> b!945453 (=> (not res!635058) (not e!531841))))

(declare-fun arrayCountValidKeys!0 (array!57224 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!945453 (= res!635058 (= (arrayCountValidKeys!0 (_keys!10574 thiss!1141) #b00000000000000000000000000000000 (size!27999 (_keys!10574 thiss!1141))) (_size!2455 thiss!1141)))))

(declare-fun b!945454 () Bool)

(declare-fun res!635059 () Bool)

(assert (=> b!945454 (=> (not res!635059) (not e!531841))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57224 (_ BitVec 32)) Bool)

(assert (=> b!945454 (= res!635059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10574 thiss!1141) (mask!27361 thiss!1141)))))

(declare-fun b!945455 () Bool)

(declare-datatypes ((List!19421 0))(
  ( (Nil!19418) (Cons!19417 (h!20568 (_ BitVec 64)) (t!27750 List!19421)) )
))
(declare-fun arrayNoDuplicates!0 (array!57224 (_ BitVec 32) List!19421) Bool)

(assert (=> b!945455 (= e!531841 (arrayNoDuplicates!0 (_keys!10574 thiss!1141) #b00000000000000000000000000000000 Nil!19418))))

(assert (= (and d!114337 res!635057) b!945453))

(assert (= (and b!945453 res!635058) b!945454))

(assert (= (and b!945454 res!635059) b!945455))

(declare-fun m!879305 () Bool)

(assert (=> d!114337 m!879305))

(declare-fun m!879307 () Bool)

(assert (=> b!945453 m!879307))

(declare-fun m!879309 () Bool)

(assert (=> b!945454 m!879309))

(declare-fun m!879311 () Bool)

(assert (=> b!945455 m!879311))

(assert (=> start!80554 d!114337))

(declare-fun b!945468 () Bool)

(declare-fun e!531849 () SeekEntryResult!9080)

(assert (=> b!945468 (= e!531849 Undefined!9080)))

(declare-fun b!945469 () Bool)

(declare-fun e!531850 () SeekEntryResult!9080)

(declare-fun lt!426010 () SeekEntryResult!9080)

(assert (=> b!945469 (= e!531850 (ite ((_ is MissingVacant!9080) lt!426010) (MissingZero!9080 (index!38693 lt!426010)) lt!426010))))

(declare-fun lt!426011 () SeekEntryResult!9080)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57224 (_ BitVec 32)) SeekEntryResult!9080)

(assert (=> b!945469 (= lt!426010 (seekKeyOrZeroReturnVacant!0 (x!81236 lt!426011) (index!38692 lt!426011) (index!38692 lt!426011) key!756 (_keys!10574 thiss!1141) (mask!27361 thiss!1141)))))

(declare-fun d!114339 () Bool)

(declare-fun lt!426008 () SeekEntryResult!9080)

(assert (=> d!114339 (and (or ((_ is MissingVacant!9080) lt!426008) (not ((_ is Found!9080) lt!426008)) (and (bvsge (index!38691 lt!426008) #b00000000000000000000000000000000) (bvslt (index!38691 lt!426008) (size!27999 (_keys!10574 thiss!1141))))) (not ((_ is MissingVacant!9080) lt!426008)) (or (not ((_ is Found!9080) lt!426008)) (= (select (arr!27530 (_keys!10574 thiss!1141)) (index!38691 lt!426008)) key!756)))))

(assert (=> d!114339 (= lt!426008 e!531849)))

(declare-fun c!98355 () Bool)

(assert (=> d!114339 (= c!98355 (and ((_ is Intermediate!9080) lt!426011) (undefined!9892 lt!426011)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57224 (_ BitVec 32)) SeekEntryResult!9080)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114339 (= lt!426011 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27361 thiss!1141)) key!756 (_keys!10574 thiss!1141) (mask!27361 thiss!1141)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!114339 (validMask!0 (mask!27361 thiss!1141))))

(assert (=> d!114339 (= (seekEntry!0 key!756 (_keys!10574 thiss!1141) (mask!27361 thiss!1141)) lt!426008)))

(declare-fun b!945470 () Bool)

(declare-fun c!98354 () Bool)

(declare-fun lt!426009 () (_ BitVec 64))

(assert (=> b!945470 (= c!98354 (= lt!426009 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!531848 () SeekEntryResult!9080)

(assert (=> b!945470 (= e!531848 e!531850)))

(declare-fun b!945471 () Bool)

(assert (=> b!945471 (= e!531850 (MissingZero!9080 (index!38692 lt!426011)))))

(declare-fun b!945472 () Bool)

(assert (=> b!945472 (= e!531848 (Found!9080 (index!38692 lt!426011)))))

(declare-fun b!945473 () Bool)

(assert (=> b!945473 (= e!531849 e!531848)))

(assert (=> b!945473 (= lt!426009 (select (arr!27530 (_keys!10574 thiss!1141)) (index!38692 lt!426011)))))

(declare-fun c!98356 () Bool)

(assert (=> b!945473 (= c!98356 (= lt!426009 key!756))))

(assert (= (and d!114339 c!98355) b!945468))

(assert (= (and d!114339 (not c!98355)) b!945473))

(assert (= (and b!945473 c!98356) b!945472))

(assert (= (and b!945473 (not c!98356)) b!945470))

(assert (= (and b!945470 c!98354) b!945471))

(assert (= (and b!945470 (not c!98354)) b!945469))

(declare-fun m!879313 () Bool)

(assert (=> b!945469 m!879313))

(declare-fun m!879315 () Bool)

(assert (=> d!114339 m!879315))

(declare-fun m!879317 () Bool)

(assert (=> d!114339 m!879317))

(assert (=> d!114339 m!879317))

(declare-fun m!879319 () Bool)

(assert (=> d!114339 m!879319))

(declare-fun m!879321 () Bool)

(assert (=> d!114339 m!879321))

(declare-fun m!879323 () Bool)

(assert (=> b!945473 m!879323))

(assert (=> b!945425 d!114339))

(declare-fun d!114341 () Bool)

(assert (=> d!114341 (= (array_inv!21332 (_keys!10574 thiss!1141)) (bvsge (size!27999 (_keys!10574 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!945424 d!114341))

(declare-fun d!114343 () Bool)

(assert (=> d!114343 (= (array_inv!21333 (_values!5720 thiss!1141)) (bvsge (size!27998 (_values!5720 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!945424 d!114343))

(declare-fun mapNonEmpty!32762 () Bool)

(declare-fun mapRes!32762 () Bool)

(declare-fun tp!62846 () Bool)

(declare-fun e!531855 () Bool)

(assert (=> mapNonEmpty!32762 (= mapRes!32762 (and tp!62846 e!531855))))

(declare-fun mapKey!32762 () (_ BitVec 32))

(declare-fun mapValue!32762 () ValueCell!9825)

(declare-fun mapRest!32762 () (Array (_ BitVec 32) ValueCell!9825))

(assert (=> mapNonEmpty!32762 (= mapRest!32756 (store mapRest!32762 mapKey!32762 mapValue!32762))))

(declare-fun condMapEmpty!32762 () Bool)

(declare-fun mapDefault!32762 () ValueCell!9825)

(assert (=> mapNonEmpty!32756 (= condMapEmpty!32762 (= mapRest!32756 ((as const (Array (_ BitVec 32) ValueCell!9825)) mapDefault!32762)))))

(declare-fun e!531856 () Bool)

(assert (=> mapNonEmpty!32756 (= tp!62836 (and e!531856 mapRes!32762))))

(declare-fun b!945480 () Bool)

(assert (=> b!945480 (= e!531855 tp_is_empty!20613)))

(declare-fun mapIsEmpty!32762 () Bool)

(assert (=> mapIsEmpty!32762 mapRes!32762))

(declare-fun b!945481 () Bool)

(assert (=> b!945481 (= e!531856 tp_is_empty!20613)))

(assert (= (and mapNonEmpty!32756 condMapEmpty!32762) mapIsEmpty!32762))

(assert (= (and mapNonEmpty!32756 (not condMapEmpty!32762)) mapNonEmpty!32762))

(assert (= (and mapNonEmpty!32762 ((_ is ValueCellFull!9825) mapValue!32762)) b!945480))

(assert (= (and mapNonEmpty!32756 ((_ is ValueCellFull!9825) mapDefault!32762)) b!945481))

(declare-fun m!879325 () Bool)

(assert (=> mapNonEmpty!32762 m!879325))

(check-sat (not b!945454) (not b_next!18105) (not mapNonEmpty!32762) (not d!114337) (not d!114339) tp_is_empty!20613 (not b!945469) (not b!945453) (not b!945455) b_and!29545)
(check-sat b_and!29545 (not b_next!18105))
