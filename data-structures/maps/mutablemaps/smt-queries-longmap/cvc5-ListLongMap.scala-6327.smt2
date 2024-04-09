; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81506 () Bool)

(assert start!81506)

(declare-fun b!952058 () Bool)

(declare-fun b_free!18283 () Bool)

(declare-fun b_next!18283 () Bool)

(assert (=> b!952058 (= b_free!18283 (not b_next!18283))))

(declare-fun tp!63469 () Bool)

(declare-fun b_and!29779 () Bool)

(assert (=> b!952058 (= tp!63469 b_and!29779)))

(declare-fun mapIsEmpty!33121 () Bool)

(declare-fun mapRes!33121 () Bool)

(assert (=> mapIsEmpty!33121 mapRes!33121))

(declare-fun b!952052 () Bool)

(declare-fun res!637968 () Bool)

(declare-fun e!536191 () Bool)

(assert (=> b!952052 (=> (not res!637968) (not e!536191))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32687 0))(
  ( (V!32688 (val!10446 Int)) )
))
(declare-datatypes ((ValueCell!9914 0))(
  ( (ValueCellFull!9914 (v!12996 V!32687)) (EmptyCell!9914) )
))
(declare-datatypes ((array!57636 0))(
  ( (array!57637 (arr!27707 (Array (_ BitVec 32) ValueCell!9914)) (size!28187 (_ BitVec 32))) )
))
(declare-datatypes ((array!57638 0))(
  ( (array!57639 (arr!27708 (Array (_ BitVec 32) (_ BitVec 64))) (size!28188 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4978 0))(
  ( (LongMapFixedSize!4979 (defaultEntry!5818 Int) (mask!27653 (_ BitVec 32)) (extraKeys!5550 (_ BitVec 32)) (zeroValue!5654 V!32687) (minValue!5654 V!32687) (_size!2544 (_ BitVec 32)) (_keys!10766 array!57638) (_values!5841 array!57636) (_vacant!2544 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4978)

(declare-datatypes ((SeekEntryResult!9145 0))(
  ( (MissingZero!9145 (index!38950 (_ BitVec 32))) (Found!9145 (index!38951 (_ BitVec 32))) (Intermediate!9145 (undefined!9957 Bool) (index!38952 (_ BitVec 32)) (x!81898 (_ BitVec 32))) (Undefined!9145) (MissingVacant!9145 (index!38953 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57638 (_ BitVec 32)) SeekEntryResult!9145)

(assert (=> b!952052 (= res!637968 (not (is-Found!9145 (seekEntry!0 key!756 (_keys!10766 thiss!1141) (mask!27653 thiss!1141)))))))

(declare-fun mapNonEmpty!33121 () Bool)

(declare-fun tp!63468 () Bool)

(declare-fun e!536190 () Bool)

(assert (=> mapNonEmpty!33121 (= mapRes!33121 (and tp!63468 e!536190))))

(declare-fun mapValue!33121 () ValueCell!9914)

(declare-fun mapKey!33121 () (_ BitVec 32))

(declare-fun mapRest!33121 () (Array (_ BitVec 32) ValueCell!9914))

(assert (=> mapNonEmpty!33121 (= (arr!27707 (_values!5841 thiss!1141)) (store mapRest!33121 mapKey!33121 mapValue!33121))))

(declare-fun b!952053 () Bool)

(declare-fun e!536189 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57638 (_ BitVec 32)) Bool)

(assert (=> b!952053 (= e!536189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10766 thiss!1141) (mask!27653 thiss!1141)))))

(declare-fun b!952054 () Bool)

(assert (=> b!952054 (= e!536191 (not e!536189))))

(declare-fun res!637967 () Bool)

(assert (=> b!952054 (=> res!637967 e!536189)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!952054 (= res!637967 (not (validMask!0 (mask!27653 thiss!1141))))))

(declare-fun lt!428972 () (_ BitVec 32))

(assert (=> b!952054 (arrayForallSeekEntryOrOpenFound!0 lt!428972 (_keys!10766 thiss!1141) (mask!27653 thiss!1141))))

(declare-datatypes ((Unit!32034 0))(
  ( (Unit!32035) )
))
(declare-fun lt!428971 () Unit!32034)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57638 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32034)

(assert (=> b!952054 (= lt!428971 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10766 thiss!1141) (mask!27653 thiss!1141) #b00000000000000000000000000000000 lt!428972))))

(declare-fun arrayScanForKey!0 (array!57638 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!952054 (= lt!428972 (arrayScanForKey!0 (_keys!10766 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57638 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!952054 (arrayContainsKey!0 (_keys!10766 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!428970 () Unit!32034)

(declare-fun lemmaKeyInListMapIsInArray!337 (array!57638 array!57636 (_ BitVec 32) (_ BitVec 32) V!32687 V!32687 (_ BitVec 64) Int) Unit!32034)

(assert (=> b!952054 (= lt!428970 (lemmaKeyInListMapIsInArray!337 (_keys!10766 thiss!1141) (_values!5841 thiss!1141) (mask!27653 thiss!1141) (extraKeys!5550 thiss!1141) (zeroValue!5654 thiss!1141) (minValue!5654 thiss!1141) key!756 (defaultEntry!5818 thiss!1141)))))

(declare-fun b!952055 () Bool)

(declare-fun res!637972 () Bool)

(assert (=> b!952055 (=> (not res!637972) (not e!536191))))

(assert (=> b!952055 (= res!637972 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!952056 () Bool)

(declare-fun e!536193 () Bool)

(declare-fun e!536192 () Bool)

(assert (=> b!952056 (= e!536193 (and e!536192 mapRes!33121))))

(declare-fun condMapEmpty!33121 () Bool)

(declare-fun mapDefault!33121 () ValueCell!9914)

