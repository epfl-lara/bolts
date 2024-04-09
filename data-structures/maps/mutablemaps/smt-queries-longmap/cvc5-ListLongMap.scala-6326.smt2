; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81434 () Bool)

(assert start!81434)

(declare-fun b!951615 () Bool)

(declare-fun b_free!18277 () Bool)

(declare-fun b_next!18277 () Bool)

(assert (=> b!951615 (= b_free!18277 (not b_next!18277))))

(declare-fun tp!63447 () Bool)

(declare-fun b_and!29767 () Bool)

(assert (=> b!951615 (= tp!63447 b_and!29767)))

(declare-fun res!637787 () Bool)

(declare-fun e!535916 () Bool)

(assert (=> start!81434 (=> (not res!637787) (not e!535916))))

(declare-datatypes ((V!32679 0))(
  ( (V!32680 (val!10443 Int)) )
))
(declare-datatypes ((ValueCell!9911 0))(
  ( (ValueCellFull!9911 (v!12992 V!32679)) (EmptyCell!9911) )
))
(declare-datatypes ((array!57622 0))(
  ( (array!57623 (arr!27701 (Array (_ BitVec 32) ValueCell!9911)) (size!28180 (_ BitVec 32))) )
))
(declare-datatypes ((array!57624 0))(
  ( (array!57625 (arr!27702 (Array (_ BitVec 32) (_ BitVec 64))) (size!28181 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4972 0))(
  ( (LongMapFixedSize!4973 (defaultEntry!5811 Int) (mask!27635 (_ BitVec 32)) (extraKeys!5543 (_ BitVec 32)) (zeroValue!5647 V!32679) (minValue!5647 V!32679) (_size!2541 (_ BitVec 32)) (_keys!10754 array!57624) (_values!5834 array!57622) (_vacant!2541 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4972)

(declare-fun valid!1863 (LongMapFixedSize!4972) Bool)

(assert (=> start!81434 (= res!637787 (valid!1863 thiss!1141))))

(assert (=> start!81434 e!535916))

(declare-fun e!535914 () Bool)

(assert (=> start!81434 e!535914))

(assert (=> start!81434 true))

(declare-fun b!951608 () Bool)

(declare-fun e!535913 () Bool)

(assert (=> b!951608 (= e!535916 (not e!535913))))

(declare-fun res!637784 () Bool)

(assert (=> b!951608 (=> res!637784 e!535913)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!951608 (= res!637784 (not (validMask!0 (mask!27635 thiss!1141))))))

(declare-fun lt!428716 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57624 (_ BitVec 32)) Bool)

(assert (=> b!951608 (arrayForallSeekEntryOrOpenFound!0 lt!428716 (_keys!10754 thiss!1141) (mask!27635 thiss!1141))))

(declare-datatypes ((Unit!32024 0))(
  ( (Unit!32025) )
))
(declare-fun lt!428717 () Unit!32024)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57624 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32024)

(assert (=> b!951608 (= lt!428717 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10754 thiss!1141) (mask!27635 thiss!1141) #b00000000000000000000000000000000 lt!428716))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!57624 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!951608 (= lt!428716 (arrayScanForKey!0 (_keys!10754 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57624 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!951608 (arrayContainsKey!0 (_keys!10754 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!428715 () Unit!32024)

(declare-fun lemmaKeyInListMapIsInArray!335 (array!57624 array!57622 (_ BitVec 32) (_ BitVec 32) V!32679 V!32679 (_ BitVec 64) Int) Unit!32024)

(assert (=> b!951608 (= lt!428715 (lemmaKeyInListMapIsInArray!335 (_keys!10754 thiss!1141) (_values!5834 thiss!1141) (mask!27635 thiss!1141) (extraKeys!5543 thiss!1141) (zeroValue!5647 thiss!1141) (minValue!5647 thiss!1141) key!756 (defaultEntry!5811 thiss!1141)))))

(declare-fun mapNonEmpty!33108 () Bool)

(declare-fun mapRes!33108 () Bool)

(declare-fun tp!63446 () Bool)

(declare-fun e!535912 () Bool)

(assert (=> mapNonEmpty!33108 (= mapRes!33108 (and tp!63446 e!535912))))

(declare-fun mapValue!33108 () ValueCell!9911)

(declare-fun mapKey!33108 () (_ BitVec 32))

(declare-fun mapRest!33108 () (Array (_ BitVec 32) ValueCell!9911))

(assert (=> mapNonEmpty!33108 (= (arr!27701 (_values!5834 thiss!1141)) (store mapRest!33108 mapKey!33108 mapValue!33108))))

(declare-fun b!951609 () Bool)

(declare-fun res!637786 () Bool)

(assert (=> b!951609 (=> (not res!637786) (not e!535916))))

(declare-datatypes ((tuple2!13668 0))(
  ( (tuple2!13669 (_1!6844 (_ BitVec 64)) (_2!6844 V!32679)) )
))
(declare-datatypes ((List!19488 0))(
  ( (Nil!19485) (Cons!19484 (h!20645 tuple2!13668) (t!27847 List!19488)) )
))
(declare-datatypes ((ListLongMap!12379 0))(
  ( (ListLongMap!12380 (toList!6205 List!19488)) )
))
(declare-fun contains!5249 (ListLongMap!12379 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3390 (array!57624 array!57622 (_ BitVec 32) (_ BitVec 32) V!32679 V!32679 (_ BitVec 32) Int) ListLongMap!12379)

(assert (=> b!951609 (= res!637786 (contains!5249 (getCurrentListMap!3390 (_keys!10754 thiss!1141) (_values!5834 thiss!1141) (mask!27635 thiss!1141) (extraKeys!5543 thiss!1141) (zeroValue!5647 thiss!1141) (minValue!5647 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5811 thiss!1141)) key!756))))

(declare-fun b!951610 () Bool)

(declare-fun res!637788 () Bool)

(assert (=> b!951610 (=> (not res!637788) (not e!535916))))

(assert (=> b!951610 (= res!637788 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!951611 () Bool)

(declare-fun res!637785 () Bool)

(assert (=> b!951611 (=> (not res!637785) (not e!535916))))

(declare-datatypes ((SeekEntryResult!9143 0))(
  ( (MissingZero!9143 (index!38942 (_ BitVec 32))) (Found!9143 (index!38943 (_ BitVec 32))) (Intermediate!9143 (undefined!9955 Bool) (index!38944 (_ BitVec 32)) (x!81870 (_ BitVec 32))) (Undefined!9143) (MissingVacant!9143 (index!38945 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57624 (_ BitVec 32)) SeekEntryResult!9143)

(assert (=> b!951611 (= res!637785 (not (is-Found!9143 (seekEntry!0 key!756 (_keys!10754 thiss!1141) (mask!27635 thiss!1141)))))))

(declare-fun b!951612 () Bool)

(declare-fun e!535917 () Bool)

(declare-fun e!535918 () Bool)

(assert (=> b!951612 (= e!535917 (and e!535918 mapRes!33108))))

(declare-fun condMapEmpty!33108 () Bool)

(declare-fun mapDefault!33108 () ValueCell!9911)

