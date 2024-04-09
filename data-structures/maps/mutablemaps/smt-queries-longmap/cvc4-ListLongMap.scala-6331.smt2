; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81612 () Bool)

(assert start!81612)

(declare-fun b!952927 () Bool)

(declare-fun b_free!18311 () Bool)

(declare-fun b_next!18311 () Bool)

(assert (=> b!952927 (= b_free!18311 (not b_next!18311))))

(declare-fun tp!63562 () Bool)

(declare-fun b_and!29813 () Bool)

(assert (=> b!952927 (= tp!63562 b_and!29813)))

(declare-fun b!952920 () Bool)

(declare-datatypes ((Unit!32064 0))(
  ( (Unit!32065) )
))
(declare-fun e!536748 () Unit!32064)

(declare-fun Unit!32066 () Unit!32064)

(assert (=> b!952920 (= e!536748 Unit!32066)))

(declare-fun lt!429466 () Unit!32064)

(declare-datatypes ((V!32723 0))(
  ( (V!32724 (val!10460 Int)) )
))
(declare-datatypes ((ValueCell!9928 0))(
  ( (ValueCellFull!9928 (v!13013 V!32723)) (EmptyCell!9928) )
))
(declare-datatypes ((array!57698 0))(
  ( (array!57699 (arr!27735 (Array (_ BitVec 32) ValueCell!9928)) (size!28215 (_ BitVec 32))) )
))
(declare-datatypes ((array!57700 0))(
  ( (array!57701 (arr!27736 (Array (_ BitVec 32) (_ BitVec 64))) (size!28216 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5006 0))(
  ( (LongMapFixedSize!5007 (defaultEntry!5838 Int) (mask!27694 (_ BitVec 32)) (extraKeys!5570 (_ BitVec 32)) (zeroValue!5674 V!32723) (minValue!5674 V!32723) (_size!2558 (_ BitVec 32)) (_keys!10793 array!57700) (_values!5861 array!57698) (_vacant!2558 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!5006)

(declare-fun key!756 () (_ BitVec 64))

(declare-fun lemmaKeyInListMapIsInArray!347 (array!57700 array!57698 (_ BitVec 32) (_ BitVec 32) V!32723 V!32723 (_ BitVec 64) Int) Unit!32064)

(assert (=> b!952920 (= lt!429466 (lemmaKeyInListMapIsInArray!347 (_keys!10793 thiss!1141) (_values!5861 thiss!1141) (mask!27694 thiss!1141) (extraKeys!5570 thiss!1141) (zeroValue!5674 thiss!1141) (minValue!5674 thiss!1141) key!756 (defaultEntry!5838 thiss!1141)))))

(declare-fun arrayContainsKey!0 (array!57700 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!952920 (arrayContainsKey!0 (_keys!10793 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!429467 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!57700 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!952920 (= lt!429467 (arrayScanForKey!0 (_keys!10793 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun lt!429464 () Unit!32064)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57700 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32064)

(assert (=> b!952920 (= lt!429464 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10793 thiss!1141) (mask!27694 thiss!1141) #b00000000000000000000000000000000 lt!429467))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57700 (_ BitVec 32)) Bool)

(assert (=> b!952920 (arrayForallSeekEntryOrOpenFound!0 lt!429467 (_keys!10793 thiss!1141) (mask!27694 thiss!1141))))

(declare-fun lt!429465 () Unit!32064)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!57700 (_ BitVec 32)) Unit!32064)

(assert (=> b!952920 (= lt!429465 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!756 lt!429467 (_keys!10793 thiss!1141) (mask!27694 thiss!1141)))))

(assert (=> b!952920 false))

(declare-fun mapNonEmpty!33172 () Bool)

(declare-fun mapRes!33172 () Bool)

(declare-fun tp!63561 () Bool)

(declare-fun e!536749 () Bool)

(assert (=> mapNonEmpty!33172 (= mapRes!33172 (and tp!63561 e!536749))))

(declare-fun mapKey!33172 () (_ BitVec 32))

(declare-fun mapRest!33172 () (Array (_ BitVec 32) ValueCell!9928))

(declare-fun mapValue!33172 () ValueCell!9928)

(assert (=> mapNonEmpty!33172 (= (arr!27735 (_values!5861 thiss!1141)) (store mapRest!33172 mapKey!33172 mapValue!33172))))

(declare-fun res!638365 () Bool)

(declare-fun e!536744 () Bool)

(assert (=> start!81612 (=> (not res!638365) (not e!536744))))

(declare-fun valid!1875 (LongMapFixedSize!5006) Bool)

(assert (=> start!81612 (= res!638365 (valid!1875 thiss!1141))))

(assert (=> start!81612 e!536744))

(declare-fun e!536745 () Bool)

(assert (=> start!81612 e!536745))

(assert (=> start!81612 true))

(declare-fun b!952921 () Bool)

(declare-fun e!536746 () Bool)

(declare-fun tp_is_empty!20819 () Bool)

(assert (=> b!952921 (= e!536746 tp_is_empty!20819)))

(declare-fun b!952922 () Bool)

(declare-fun res!638363 () Bool)

(assert (=> b!952922 (=> (not res!638363) (not e!536744))))

(assert (=> b!952922 (= res!638363 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!952923 () Bool)

(declare-datatypes ((tuple2!13692 0))(
  ( (tuple2!13693 (_1!6856 (_ BitVec 64)) (_2!6856 V!32723)) )
))
(declare-datatypes ((List!19504 0))(
  ( (Nil!19501) (Cons!19500 (h!20662 tuple2!13692) (t!27871 List!19504)) )
))
(declare-datatypes ((ListLongMap!12403 0))(
  ( (ListLongMap!12404 (toList!6217 List!19504)) )
))
(declare-fun contains!5263 (ListLongMap!12403 (_ BitVec 64)) Bool)

(declare-fun map!13115 (LongMapFixedSize!5006) ListLongMap!12403)

(assert (=> b!952923 (= e!536744 (contains!5263 (map!13115 thiss!1141) key!756))))

(declare-fun lt!429463 () Unit!32064)

(assert (=> b!952923 (= lt!429463 e!536748)))

(declare-fun c!99660 () Bool)

(declare-fun getCurrentListMap!3402 (array!57700 array!57698 (_ BitVec 32) (_ BitVec 32) V!32723 V!32723 (_ BitVec 32) Int) ListLongMap!12403)

(assert (=> b!952923 (= c!99660 (contains!5263 (getCurrentListMap!3402 (_keys!10793 thiss!1141) (_values!5861 thiss!1141) (mask!27694 thiss!1141) (extraKeys!5570 thiss!1141) (zeroValue!5674 thiss!1141) (minValue!5674 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5838 thiss!1141)) key!756))))

(declare-fun mapIsEmpty!33172 () Bool)

(assert (=> mapIsEmpty!33172 mapRes!33172))

(declare-fun b!952924 () Bool)

(declare-fun Unit!32067 () Unit!32064)

(assert (=> b!952924 (= e!536748 Unit!32067)))

(declare-fun b!952925 () Bool)

(declare-fun res!638364 () Bool)

(assert (=> b!952925 (=> (not res!638364) (not e!536744))))

(declare-datatypes ((SeekEntryResult!9156 0))(
  ( (MissingZero!9156 (index!38994 (_ BitVec 32))) (Found!9156 (index!38995 (_ BitVec 32))) (Intermediate!9156 (undefined!9968 Bool) (index!38996 (_ BitVec 32)) (x!81971 (_ BitVec 32))) (Undefined!9156) (MissingVacant!9156 (index!38997 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57700 (_ BitVec 32)) SeekEntryResult!9156)

(assert (=> b!952925 (= res!638364 (not (is-Found!9156 (seekEntry!0 key!756 (_keys!10793 thiss!1141) (mask!27694 thiss!1141)))))))

(declare-fun b!952926 () Bool)

(declare-fun e!536750 () Bool)

(assert (=> b!952926 (= e!536750 (and e!536746 mapRes!33172))))

(declare-fun condMapEmpty!33172 () Bool)

(declare-fun mapDefault!33172 () ValueCell!9928)

