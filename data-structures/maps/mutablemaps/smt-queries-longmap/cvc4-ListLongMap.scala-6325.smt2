; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81408 () Bool)

(assert start!81408)

(declare-fun b!951447 () Bool)

(declare-fun b_free!18275 () Bool)

(declare-fun b_next!18275 () Bool)

(assert (=> b!951447 (= b_free!18275 (not b_next!18275))))

(declare-fun tp!63438 () Bool)

(declare-fun b_and!29763 () Bool)

(assert (=> b!951447 (= tp!63438 b_and!29763)))

(declare-fun b!951443 () Bool)

(declare-fun e!535810 () Bool)

(declare-fun tp_is_empty!20783 () Bool)

(assert (=> b!951443 (= e!535810 tp_is_empty!20783)))

(declare-fun res!637720 () Bool)

(declare-fun e!535809 () Bool)

(assert (=> start!81408 (=> (not res!637720) (not e!535809))))

(declare-datatypes ((V!32675 0))(
  ( (V!32676 (val!10442 Int)) )
))
(declare-datatypes ((ValueCell!9910 0))(
  ( (ValueCellFull!9910 (v!12990 V!32675)) (EmptyCell!9910) )
))
(declare-datatypes ((array!57616 0))(
  ( (array!57617 (arr!27699 (Array (_ BitVec 32) ValueCell!9910)) (size!28178 (_ BitVec 32))) )
))
(declare-datatypes ((array!57618 0))(
  ( (array!57619 (arr!27700 (Array (_ BitVec 32) (_ BitVec 64))) (size!28179 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4970 0))(
  ( (LongMapFixedSize!4971 (defaultEntry!5808 Int) (mask!27626 (_ BitVec 32)) (extraKeys!5540 (_ BitVec 32)) (zeroValue!5644 V!32675) (minValue!5644 V!32675) (_size!2540 (_ BitVec 32)) (_keys!10749 array!57618) (_values!5831 array!57616) (_vacant!2540 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4970)

(declare-fun valid!1862 (LongMapFixedSize!4970) Bool)

(assert (=> start!81408 (= res!637720 (valid!1862 thiss!1141))))

(assert (=> start!81408 e!535809))

(declare-fun e!535808 () Bool)

(assert (=> start!81408 e!535808))

(assert (=> start!81408 true))

(declare-fun b!951444 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!951444 (= e!535809 (not (validMask!0 (mask!27626 thiss!1141))))))

(declare-fun lt!428600 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57618 (_ BitVec 32)) Bool)

(assert (=> b!951444 (arrayForallSeekEntryOrOpenFound!0 lt!428600 (_keys!10749 thiss!1141) (mask!27626 thiss!1141))))

(declare-datatypes ((Unit!32020 0))(
  ( (Unit!32021) )
))
(declare-fun lt!428599 () Unit!32020)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57618 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32020)

(assert (=> b!951444 (= lt!428599 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10749 thiss!1141) (mask!27626 thiss!1141) #b00000000000000000000000000000000 lt!428600))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!57618 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!951444 (= lt!428600 (arrayScanForKey!0 (_keys!10749 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57618 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!951444 (arrayContainsKey!0 (_keys!10749 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!428598 () Unit!32020)

(declare-fun lemmaKeyInListMapIsInArray!334 (array!57618 array!57616 (_ BitVec 32) (_ BitVec 32) V!32675 V!32675 (_ BitVec 64) Int) Unit!32020)

(assert (=> b!951444 (= lt!428598 (lemmaKeyInListMapIsInArray!334 (_keys!10749 thiss!1141) (_values!5831 thiss!1141) (mask!27626 thiss!1141) (extraKeys!5540 thiss!1141) (zeroValue!5644 thiss!1141) (minValue!5644 thiss!1141) key!756 (defaultEntry!5808 thiss!1141)))))

(declare-fun mapNonEmpty!33102 () Bool)

(declare-fun mapRes!33102 () Bool)

(declare-fun tp!63437 () Bool)

(assert (=> mapNonEmpty!33102 (= mapRes!33102 (and tp!63437 e!535810))))

(declare-fun mapKey!33102 () (_ BitVec 32))

(declare-fun mapValue!33102 () ValueCell!9910)

(declare-fun mapRest!33102 () (Array (_ BitVec 32) ValueCell!9910))

(assert (=> mapNonEmpty!33102 (= (arr!27699 (_values!5831 thiss!1141)) (store mapRest!33102 mapKey!33102 mapValue!33102))))

(declare-fun mapIsEmpty!33102 () Bool)

(assert (=> mapIsEmpty!33102 mapRes!33102))

(declare-fun b!951445 () Bool)

(declare-fun res!637719 () Bool)

(assert (=> b!951445 (=> (not res!637719) (not e!535809))))

(declare-datatypes ((SeekEntryResult!9142 0))(
  ( (MissingZero!9142 (index!38938 (_ BitVec 32))) (Found!9142 (index!38939 (_ BitVec 32))) (Intermediate!9142 (undefined!9954 Bool) (index!38940 (_ BitVec 32)) (x!81851 (_ BitVec 32))) (Undefined!9142) (MissingVacant!9142 (index!38941 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57618 (_ BitVec 32)) SeekEntryResult!9142)

(assert (=> b!951445 (= res!637719 (not (is-Found!9142 (seekEntry!0 key!756 (_keys!10749 thiss!1141) (mask!27626 thiss!1141)))))))

(declare-fun b!951446 () Bool)

(declare-fun e!535811 () Bool)

(assert (=> b!951446 (= e!535811 tp_is_empty!20783)))

(declare-fun e!535812 () Bool)

(declare-fun array_inv!21444 (array!57618) Bool)

(declare-fun array_inv!21445 (array!57616) Bool)

(assert (=> b!951447 (= e!535808 (and tp!63438 tp_is_empty!20783 (array_inv!21444 (_keys!10749 thiss!1141)) (array_inv!21445 (_values!5831 thiss!1141)) e!535812))))

(declare-fun b!951448 () Bool)

(declare-fun res!637721 () Bool)

(assert (=> b!951448 (=> (not res!637721) (not e!535809))))

(assert (=> b!951448 (= res!637721 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!951449 () Bool)

(declare-fun res!637722 () Bool)

(assert (=> b!951449 (=> (not res!637722) (not e!535809))))

(declare-datatypes ((tuple2!13666 0))(
  ( (tuple2!13667 (_1!6843 (_ BitVec 64)) (_2!6843 V!32675)) )
))
(declare-datatypes ((List!19486 0))(
  ( (Nil!19483) (Cons!19482 (h!20643 tuple2!13666) (t!27843 List!19486)) )
))
(declare-datatypes ((ListLongMap!12377 0))(
  ( (ListLongMap!12378 (toList!6204 List!19486)) )
))
(declare-fun contains!5248 (ListLongMap!12377 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3389 (array!57618 array!57616 (_ BitVec 32) (_ BitVec 32) V!32675 V!32675 (_ BitVec 32) Int) ListLongMap!12377)

(assert (=> b!951449 (= res!637722 (contains!5248 (getCurrentListMap!3389 (_keys!10749 thiss!1141) (_values!5831 thiss!1141) (mask!27626 thiss!1141) (extraKeys!5540 thiss!1141) (zeroValue!5644 thiss!1141) (minValue!5644 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5808 thiss!1141)) key!756))))

(declare-fun b!951450 () Bool)

(assert (=> b!951450 (= e!535812 (and e!535811 mapRes!33102))))

(declare-fun condMapEmpty!33102 () Bool)

(declare-fun mapDefault!33102 () ValueCell!9910)

