; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81608 () Bool)

(assert start!81608)

(declare-fun b!952869 () Bool)

(declare-fun b_free!18307 () Bool)

(declare-fun b_next!18307 () Bool)

(assert (=> b!952869 (= b_free!18307 (not b_next!18307))))

(declare-fun tp!63549 () Bool)

(declare-fun b_and!29809 () Bool)

(assert (=> b!952869 (= tp!63549 b_and!29809)))

(declare-fun mapIsEmpty!33166 () Bool)

(declare-fun mapRes!33166 () Bool)

(assert (=> mapIsEmpty!33166 mapRes!33166))

(declare-fun b!952866 () Bool)

(declare-fun e!536705 () Bool)

(declare-datatypes ((V!32719 0))(
  ( (V!32720 (val!10458 Int)) )
))
(declare-datatypes ((ValueCell!9926 0))(
  ( (ValueCellFull!9926 (v!13011 V!32719)) (EmptyCell!9926) )
))
(declare-datatypes ((array!57690 0))(
  ( (array!57691 (arr!27731 (Array (_ BitVec 32) ValueCell!9926)) (size!28211 (_ BitVec 32))) )
))
(declare-datatypes ((array!57692 0))(
  ( (array!57693 (arr!27732 (Array (_ BitVec 32) (_ BitVec 64))) (size!28212 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5002 0))(
  ( (LongMapFixedSize!5003 (defaultEntry!5836 Int) (mask!27692 (_ BitVec 32)) (extraKeys!5568 (_ BitVec 32)) (zeroValue!5672 V!32719) (minValue!5672 V!32719) (_size!2556 (_ BitVec 32)) (_keys!10791 array!57692) (_values!5859 array!57690) (_vacant!2556 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!5002)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13688 0))(
  ( (tuple2!13689 (_1!6854 (_ BitVec 64)) (_2!6854 V!32719)) )
))
(declare-datatypes ((List!19502 0))(
  ( (Nil!19499) (Cons!19498 (h!20660 tuple2!13688) (t!27869 List!19502)) )
))
(declare-datatypes ((ListLongMap!12399 0))(
  ( (ListLongMap!12400 (toList!6215 List!19502)) )
))
(declare-fun contains!5261 (ListLongMap!12399 (_ BitVec 64)) Bool)

(declare-fun map!13113 (LongMapFixedSize!5002) ListLongMap!12399)

(assert (=> b!952866 (= e!536705 (contains!5261 (map!13113 thiss!1141) key!756))))

(declare-datatypes ((Unit!32056 0))(
  ( (Unit!32057) )
))
(declare-fun lt!429433 () Unit!32056)

(declare-fun e!536704 () Unit!32056)

(assert (=> b!952866 (= lt!429433 e!536704)))

(declare-fun c!99654 () Bool)

(declare-fun getCurrentListMap!3400 (array!57692 array!57690 (_ BitVec 32) (_ BitVec 32) V!32719 V!32719 (_ BitVec 32) Int) ListLongMap!12399)

(assert (=> b!952866 (= c!99654 (contains!5261 (getCurrentListMap!3400 (_keys!10791 thiss!1141) (_values!5859 thiss!1141) (mask!27692 thiss!1141) (extraKeys!5568 thiss!1141) (zeroValue!5672 thiss!1141) (minValue!5672 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5836 thiss!1141)) key!756))))

(declare-fun b!952867 () Bool)

(declare-fun Unit!32058 () Unit!32056)

(assert (=> b!952867 (= e!536704 Unit!32058)))

(declare-fun lt!429434 () Unit!32056)

(declare-fun lemmaKeyInListMapIsInArray!345 (array!57692 array!57690 (_ BitVec 32) (_ BitVec 32) V!32719 V!32719 (_ BitVec 64) Int) Unit!32056)

(assert (=> b!952867 (= lt!429434 (lemmaKeyInListMapIsInArray!345 (_keys!10791 thiss!1141) (_values!5859 thiss!1141) (mask!27692 thiss!1141) (extraKeys!5568 thiss!1141) (zeroValue!5672 thiss!1141) (minValue!5672 thiss!1141) key!756 (defaultEntry!5836 thiss!1141)))))

(declare-fun arrayContainsKey!0 (array!57692 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!952867 (arrayContainsKey!0 (_keys!10791 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!429437 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!57692 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!952867 (= lt!429437 (arrayScanForKey!0 (_keys!10791 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun lt!429436 () Unit!32056)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57692 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32056)

(assert (=> b!952867 (= lt!429436 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10791 thiss!1141) (mask!27692 thiss!1141) #b00000000000000000000000000000000 lt!429437))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57692 (_ BitVec 32)) Bool)

(assert (=> b!952867 (arrayForallSeekEntryOrOpenFound!0 lt!429437 (_keys!10791 thiss!1141) (mask!27692 thiss!1141))))

(declare-fun lt!429435 () Unit!32056)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!57692 (_ BitVec 32)) Unit!32056)

(assert (=> b!952867 (= lt!429435 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!756 lt!429437 (_keys!10791 thiss!1141) (mask!27692 thiss!1141)))))

(assert (=> b!952867 false))

(declare-fun b!952868 () Bool)

(declare-fun res!638346 () Bool)

(assert (=> b!952868 (=> (not res!638346) (not e!536705))))

(declare-datatypes ((SeekEntryResult!9154 0))(
  ( (MissingZero!9154 (index!38986 (_ BitVec 32))) (Found!9154 (index!38987 (_ BitVec 32))) (Intermediate!9154 (undefined!9966 Bool) (index!38988 (_ BitVec 32)) (x!81969 (_ BitVec 32))) (Undefined!9154) (MissingVacant!9154 (index!38989 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57692 (_ BitVec 32)) SeekEntryResult!9154)

(assert (=> b!952868 (= res!638346 (not (is-Found!9154 (seekEntry!0 key!756 (_keys!10791 thiss!1141) (mask!27692 thiss!1141)))))))

(declare-fun e!536706 () Bool)

(declare-fun tp_is_empty!20815 () Bool)

(declare-fun e!536707 () Bool)

(declare-fun array_inv!21466 (array!57692) Bool)

(declare-fun array_inv!21467 (array!57690) Bool)

(assert (=> b!952869 (= e!536706 (and tp!63549 tp_is_empty!20815 (array_inv!21466 (_keys!10791 thiss!1141)) (array_inv!21467 (_values!5859 thiss!1141)) e!536707))))

(declare-fun mapNonEmpty!33166 () Bool)

(declare-fun tp!63550 () Bool)

(declare-fun e!536702 () Bool)

(assert (=> mapNonEmpty!33166 (= mapRes!33166 (and tp!63550 e!536702))))

(declare-fun mapRest!33166 () (Array (_ BitVec 32) ValueCell!9926))

(declare-fun mapKey!33166 () (_ BitVec 32))

(declare-fun mapValue!33166 () ValueCell!9926)

(assert (=> mapNonEmpty!33166 (= (arr!27731 (_values!5859 thiss!1141)) (store mapRest!33166 mapKey!33166 mapValue!33166))))

(declare-fun res!638347 () Bool)

(assert (=> start!81608 (=> (not res!638347) (not e!536705))))

(declare-fun valid!1873 (LongMapFixedSize!5002) Bool)

(assert (=> start!81608 (= res!638347 (valid!1873 thiss!1141))))

(assert (=> start!81608 e!536705))

(assert (=> start!81608 e!536706))

(assert (=> start!81608 true))

(declare-fun b!952870 () Bool)

(declare-fun Unit!32059 () Unit!32056)

(assert (=> b!952870 (= e!536704 Unit!32059)))

(declare-fun b!952871 () Bool)

(assert (=> b!952871 (= e!536702 tp_is_empty!20815)))

(declare-fun b!952872 () Bool)

(declare-fun e!536708 () Bool)

(assert (=> b!952872 (= e!536707 (and e!536708 mapRes!33166))))

(declare-fun condMapEmpty!33166 () Bool)

(declare-fun mapDefault!33166 () ValueCell!9926)

