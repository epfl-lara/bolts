; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80024 () Bool)

(assert start!80024)

(declare-fun b!940304 () Bool)

(declare-fun b_free!17851 () Bool)

(declare-fun b_next!17851 () Bool)

(assert (=> b!940304 (= b_free!17851 (not b_next!17851))))

(declare-fun tp!62028 () Bool)

(declare-fun b_and!29281 () Bool)

(assert (=> b!940304 (= tp!62028 b_and!29281)))

(declare-fun b!940296 () Bool)

(declare-fun res!632368 () Bool)

(declare-fun e!528454 () Bool)

(assert (=> b!940296 (=> res!632368 e!528454)))

(declare-datatypes ((V!32111 0))(
  ( (V!32112 (val!10230 Int)) )
))
(declare-datatypes ((ValueCell!9698 0))(
  ( (ValueCellFull!9698 (v!12761 V!32111)) (EmptyCell!9698) )
))
(declare-datatypes ((array!56688 0))(
  ( (array!56689 (arr!27275 (Array (_ BitVec 32) ValueCell!9698)) (size!27737 (_ BitVec 32))) )
))
(declare-datatypes ((array!56690 0))(
  ( (array!56691 (arr!27276 (Array (_ BitVec 32) (_ BitVec 64))) (size!27738 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4546 0))(
  ( (LongMapFixedSize!4547 (defaultEntry!5564 Int) (mask!27098 (_ BitVec 32)) (extraKeys!5296 (_ BitVec 32)) (zeroValue!5400 V!32111) (minValue!5400 V!32111) (_size!2328 (_ BitVec 32)) (_keys!10410 array!56690) (_values!5587 array!56688) (_vacant!2328 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4546)

(assert (=> b!940296 (= res!632368 (or (not (= (size!27737 (_values!5587 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27098 thiss!1141)))) (not (= (size!27738 (_keys!10410 thiss!1141)) (size!27737 (_values!5587 thiss!1141)))) (bvslt (mask!27098 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5296 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5296 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!940297 () Bool)

(declare-fun e!528449 () Bool)

(assert (=> b!940297 (= e!528449 (not e!528454))))

(declare-fun res!632369 () Bool)

(assert (=> b!940297 (=> res!632369 e!528454)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940297 (= res!632369 (not (validMask!0 (mask!27098 thiss!1141))))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!56690 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940297 (arrayContainsKey!0 (_keys!10410 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!8988 0))(
  ( (MissingZero!8988 (index!38322 (_ BitVec 32))) (Found!8988 (index!38323 (_ BitVec 32))) (Intermediate!8988 (undefined!9800 Bool) (index!38324 (_ BitVec 32)) (x!80642 (_ BitVec 32))) (Undefined!8988) (MissingVacant!8988 (index!38325 (_ BitVec 32))) )
))
(declare-fun lt!424658 () SeekEntryResult!8988)

(declare-datatypes ((Unit!31769 0))(
  ( (Unit!31770) )
))
(declare-fun lt!424659 () Unit!31769)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56690 (_ BitVec 64) (_ BitVec 32)) Unit!31769)

(assert (=> b!940297 (= lt!424659 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10410 thiss!1141) key!756 (index!38323 lt!424658)))))

(declare-fun b!940298 () Bool)

(declare-fun e!528450 () Bool)

(declare-fun e!528452 () Bool)

(declare-fun mapRes!32329 () Bool)

(assert (=> b!940298 (= e!528450 (and e!528452 mapRes!32329))))

(declare-fun condMapEmpty!32329 () Bool)

(declare-fun mapDefault!32329 () ValueCell!9698)

