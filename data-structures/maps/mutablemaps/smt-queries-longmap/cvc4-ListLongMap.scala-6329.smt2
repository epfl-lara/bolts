; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81572 () Bool)

(assert start!81572)

(declare-fun b!952604 () Bool)

(declare-fun b_free!18299 () Bool)

(declare-fun b_next!18299 () Bool)

(assert (=> b!952604 (= b_free!18299 (not b_next!18299))))

(declare-fun tp!63522 () Bool)

(declare-fun b_and!29799 () Bool)

(assert (=> b!952604 (= tp!63522 b_and!29799)))

(declare-fun mapNonEmpty!33151 () Bool)

(declare-fun mapRes!33151 () Bool)

(declare-fun tp!63523 () Bool)

(declare-fun e!536535 () Bool)

(assert (=> mapNonEmpty!33151 (= mapRes!33151 (and tp!63523 e!536535))))

(declare-datatypes ((V!32707 0))(
  ( (V!32708 (val!10454 Int)) )
))
(declare-datatypes ((ValueCell!9922 0))(
  ( (ValueCellFull!9922 (v!13006 V!32707)) (EmptyCell!9922) )
))
(declare-fun mapRest!33151 () (Array (_ BitVec 32) ValueCell!9922))

(declare-fun mapKey!33151 () (_ BitVec 32))

(declare-datatypes ((array!57672 0))(
  ( (array!57673 (arr!27723 (Array (_ BitVec 32) ValueCell!9922)) (size!28203 (_ BitVec 32))) )
))
(declare-datatypes ((array!57674 0))(
  ( (array!57675 (arr!27724 (Array (_ BitVec 32) (_ BitVec 64))) (size!28204 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4994 0))(
  ( (LongMapFixedSize!4995 (defaultEntry!5830 Int) (mask!27677 (_ BitVec 32)) (extraKeys!5562 (_ BitVec 32)) (zeroValue!5666 V!32707) (minValue!5666 V!32707) (_size!2552 (_ BitVec 32)) (_keys!10782 array!57674) (_values!5853 array!57672) (_vacant!2552 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4994)

(declare-fun mapValue!33151 () ValueCell!9922)

(assert (=> mapNonEmpty!33151 (= (arr!27723 (_values!5853 thiss!1141)) (store mapRest!33151 mapKey!33151 mapValue!33151))))

(declare-fun b!952603 () Bool)

(declare-fun res!638247 () Bool)

(declare-fun e!536537 () Bool)

(assert (=> b!952603 (=> res!638247 e!536537)))

(assert (=> b!952603 (= res!638247 (not (= (size!28204 (_keys!10782 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27677 thiss!1141)))))))

(declare-fun res!638249 () Bool)

(declare-fun e!536536 () Bool)

(assert (=> start!81572 (=> (not res!638249) (not e!536536))))

(declare-fun valid!1870 (LongMapFixedSize!4994) Bool)

(assert (=> start!81572 (= res!638249 (valid!1870 thiss!1141))))

(assert (=> start!81572 e!536536))

(declare-fun e!536531 () Bool)

(assert (=> start!81572 e!536531))

(assert (=> start!81572 true))

(declare-fun tp_is_empty!20807 () Bool)

(declare-fun e!536532 () Bool)

(declare-fun array_inv!21460 (array!57674) Bool)

(declare-fun array_inv!21461 (array!57672) Bool)

(assert (=> b!952604 (= e!536531 (and tp!63522 tp_is_empty!20807 (array_inv!21460 (_keys!10782 thiss!1141)) (array_inv!21461 (_values!5853 thiss!1141)) e!536532))))

(declare-fun b!952605 () Bool)

(declare-fun res!638248 () Bool)

(assert (=> b!952605 (=> (not res!638248) (not e!536536))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!952605 (= res!638248 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!952606 () Bool)

(declare-fun res!638242 () Bool)

(assert (=> b!952606 (=> res!638242 e!536537)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!952606 (= res!638242 (not (validKeyInArray!0 key!756)))))

(declare-fun b!952607 () Bool)

(assert (=> b!952607 (= e!536536 (not e!536537))))

(declare-fun res!638246 () Bool)

(assert (=> b!952607 (=> res!638246 e!536537)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!952607 (= res!638246 (not (validMask!0 (mask!27677 thiss!1141))))))

(declare-fun lt!429264 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57674 (_ BitVec 32)) Bool)

(assert (=> b!952607 (arrayForallSeekEntryOrOpenFound!0 lt!429264 (_keys!10782 thiss!1141) (mask!27677 thiss!1141))))

(declare-datatypes ((Unit!32048 0))(
  ( (Unit!32049) )
))
(declare-fun lt!429266 () Unit!32048)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57674 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32048)

(assert (=> b!952607 (= lt!429266 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10782 thiss!1141) (mask!27677 thiss!1141) #b00000000000000000000000000000000 lt!429264))))

(declare-fun arrayScanForKey!0 (array!57674 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!952607 (= lt!429264 (arrayScanForKey!0 (_keys!10782 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57674 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!952607 (arrayContainsKey!0 (_keys!10782 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!429265 () Unit!32048)

(declare-fun lemmaKeyInListMapIsInArray!342 (array!57674 array!57672 (_ BitVec 32) (_ BitVec 32) V!32707 V!32707 (_ BitVec 64) Int) Unit!32048)

(assert (=> b!952607 (= lt!429265 (lemmaKeyInListMapIsInArray!342 (_keys!10782 thiss!1141) (_values!5853 thiss!1141) (mask!27677 thiss!1141) (extraKeys!5562 thiss!1141) (zeroValue!5666 thiss!1141) (minValue!5666 thiss!1141) key!756 (defaultEntry!5830 thiss!1141)))))

(declare-fun b!952608 () Bool)

(declare-datatypes ((SeekEntryResult!9151 0))(
  ( (MissingZero!9151 (index!38974 (_ BitVec 32))) (Found!9151 (index!38975 (_ BitVec 32))) (Intermediate!9151 (undefined!9963 Bool) (index!38976 (_ BitVec 32)) (x!81940 (_ BitVec 32))) (Undefined!9151) (MissingVacant!9151 (index!38977 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57674 (_ BitVec 32)) SeekEntryResult!9151)

(assert (=> b!952608 (= e!536537 (= (seekEntryOrOpen!0 key!756 (_keys!10782 thiss!1141) (mask!27677 thiss!1141)) (Found!9151 lt!429264)))))

(declare-fun b!952609 () Bool)

(declare-fun res!638244 () Bool)

(assert (=> b!952609 (=> (not res!638244) (not e!536536))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57674 (_ BitVec 32)) SeekEntryResult!9151)

(assert (=> b!952609 (= res!638244 (not (is-Found!9151 (seekEntry!0 key!756 (_keys!10782 thiss!1141) (mask!27677 thiss!1141)))))))

(declare-fun b!952610 () Bool)

(declare-fun res!638243 () Bool)

(assert (=> b!952610 (=> (not res!638243) (not e!536536))))

(declare-datatypes ((tuple2!13682 0))(
  ( (tuple2!13683 (_1!6851 (_ BitVec 64)) (_2!6851 V!32707)) )
))
(declare-datatypes ((List!19498 0))(
  ( (Nil!19495) (Cons!19494 (h!20656 tuple2!13682) (t!27863 List!19498)) )
))
(declare-datatypes ((ListLongMap!12393 0))(
  ( (ListLongMap!12394 (toList!6212 List!19498)) )
))
(declare-fun contains!5258 (ListLongMap!12393 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3397 (array!57674 array!57672 (_ BitVec 32) (_ BitVec 32) V!32707 V!32707 (_ BitVec 32) Int) ListLongMap!12393)

(assert (=> b!952610 (= res!638243 (contains!5258 (getCurrentListMap!3397 (_keys!10782 thiss!1141) (_values!5853 thiss!1141) (mask!27677 thiss!1141) (extraKeys!5562 thiss!1141) (zeroValue!5666 thiss!1141) (minValue!5666 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5830 thiss!1141)) key!756))))

(declare-fun mapIsEmpty!33151 () Bool)

(assert (=> mapIsEmpty!33151 mapRes!33151))

(declare-fun b!952611 () Bool)

(declare-fun e!536534 () Bool)

(assert (=> b!952611 (= e!536532 (and e!536534 mapRes!33151))))

(declare-fun condMapEmpty!33151 () Bool)

(declare-fun mapDefault!33151 () ValueCell!9922)

