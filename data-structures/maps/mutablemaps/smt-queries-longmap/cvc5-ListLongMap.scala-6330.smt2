; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81602 () Bool)

(assert start!81602)

(declare-fun b!952792 () Bool)

(declare-fun b_free!18301 () Bool)

(declare-fun b_next!18301 () Bool)

(assert (=> b!952792 (= b_free!18301 (not b_next!18301))))

(declare-fun tp!63532 () Bool)

(declare-fun b_and!29803 () Bool)

(assert (=> b!952792 (= tp!63532 b_and!29803)))

(declare-fun e!536647 () Bool)

(declare-datatypes ((V!32711 0))(
  ( (V!32712 (val!10455 Int)) )
))
(declare-datatypes ((ValueCell!9923 0))(
  ( (ValueCellFull!9923 (v!13008 V!32711)) (EmptyCell!9923) )
))
(declare-datatypes ((array!57678 0))(
  ( (array!57679 (arr!27725 (Array (_ BitVec 32) ValueCell!9923)) (size!28205 (_ BitVec 32))) )
))
(declare-datatypes ((array!57680 0))(
  ( (array!57681 (arr!27726 (Array (_ BitVec 32) (_ BitVec 64))) (size!28206 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4996 0))(
  ( (LongMapFixedSize!4997 (defaultEntry!5833 Int) (mask!27687 (_ BitVec 32)) (extraKeys!5565 (_ BitVec 32)) (zeroValue!5669 V!32711) (minValue!5669 V!32711) (_size!2553 (_ BitVec 32)) (_keys!10788 array!57680) (_values!5856 array!57678) (_vacant!2553 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4996)

(declare-fun tp_is_empty!20809 () Bool)

(declare-fun e!536649 () Bool)

(declare-fun array_inv!21462 (array!57680) Bool)

(declare-fun array_inv!21463 (array!57678) Bool)

(assert (=> b!952792 (= e!536649 (and tp!63532 tp_is_empty!20809 (array_inv!21462 (_keys!10788 thiss!1141)) (array_inv!21463 (_values!5856 thiss!1141)) e!536647))))

(declare-fun b!952793 () Bool)

(declare-fun e!536646 () Bool)

(assert (=> b!952793 (= e!536646 tp_is_empty!20809)))

(declare-fun b!952794 () Bool)

(declare-fun res!638311 () Bool)

(declare-fun e!536648 () Bool)

(assert (=> b!952794 (=> (not res!638311) (not e!536648))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!952794 (= res!638311 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!952795 () Bool)

(declare-fun res!638314 () Bool)

(assert (=> b!952795 (=> (not res!638314) (not e!536648))))

(declare-datatypes ((tuple2!13684 0))(
  ( (tuple2!13685 (_1!6852 (_ BitVec 64)) (_2!6852 V!32711)) )
))
(declare-datatypes ((List!19500 0))(
  ( (Nil!19497) (Cons!19496 (h!20658 tuple2!13684) (t!27867 List!19500)) )
))
(declare-datatypes ((ListLongMap!12395 0))(
  ( (ListLongMap!12396 (toList!6213 List!19500)) )
))
(declare-fun contains!5259 (ListLongMap!12395 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3398 (array!57680 array!57678 (_ BitVec 32) (_ BitVec 32) V!32711 V!32711 (_ BitVec 32) Int) ListLongMap!12395)

(assert (=> b!952795 (= res!638314 (contains!5259 (getCurrentListMap!3398 (_keys!10788 thiss!1141) (_values!5856 thiss!1141) (mask!27687 thiss!1141) (extraKeys!5565 thiss!1141) (zeroValue!5669 thiss!1141) (minValue!5669 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5833 thiss!1141)) key!756))))

(declare-fun mapNonEmpty!33157 () Bool)

(declare-fun mapRes!33157 () Bool)

(declare-fun tp!63531 () Bool)

(declare-fun e!536650 () Bool)

(assert (=> mapNonEmpty!33157 (= mapRes!33157 (and tp!63531 e!536650))))

(declare-fun mapValue!33157 () ValueCell!9923)

(declare-fun mapKey!33157 () (_ BitVec 32))

(declare-fun mapRest!33157 () (Array (_ BitVec 32) ValueCell!9923))

(assert (=> mapNonEmpty!33157 (= (arr!27725 (_values!5856 thiss!1141)) (store mapRest!33157 mapKey!33157 mapValue!33157))))

(declare-fun mapIsEmpty!33157 () Bool)

(assert (=> mapIsEmpty!33157 mapRes!33157))

(declare-fun res!638313 () Bool)

(assert (=> start!81602 (=> (not res!638313) (not e!536648))))

(declare-fun valid!1871 (LongMapFixedSize!4996) Bool)

(assert (=> start!81602 (= res!638313 (valid!1871 thiss!1141))))

(assert (=> start!81602 e!536648))

(assert (=> start!81602 e!536649))

(assert (=> start!81602 true))

(declare-fun b!952796 () Bool)

(assert (=> b!952796 (= e!536650 tp_is_empty!20809)))

(declare-fun b!952797 () Bool)

(assert (=> b!952797 (= e!536648 (not true))))

(assert (=> b!952797 false))

(declare-datatypes ((Unit!32052 0))(
  ( (Unit!32053) )
))
(declare-fun lt!429397 () Unit!32052)

(declare-fun lt!429396 () (_ BitVec 32))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!57680 (_ BitVec 32)) Unit!32052)

(assert (=> b!952797 (= lt!429397 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!756 lt!429396 (_keys!10788 thiss!1141) (mask!27687 thiss!1141)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57680 (_ BitVec 32)) Bool)

(assert (=> b!952797 (arrayForallSeekEntryOrOpenFound!0 lt!429396 (_keys!10788 thiss!1141) (mask!27687 thiss!1141))))

(declare-fun lt!429395 () Unit!32052)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57680 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32052)

(assert (=> b!952797 (= lt!429395 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10788 thiss!1141) (mask!27687 thiss!1141) #b00000000000000000000000000000000 lt!429396))))

(declare-fun arrayScanForKey!0 (array!57680 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!952797 (= lt!429396 (arrayScanForKey!0 (_keys!10788 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57680 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!952797 (arrayContainsKey!0 (_keys!10788 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!429398 () Unit!32052)

(declare-fun lemmaKeyInListMapIsInArray!343 (array!57680 array!57678 (_ BitVec 32) (_ BitVec 32) V!32711 V!32711 (_ BitVec 64) Int) Unit!32052)

(assert (=> b!952797 (= lt!429398 (lemmaKeyInListMapIsInArray!343 (_keys!10788 thiss!1141) (_values!5856 thiss!1141) (mask!27687 thiss!1141) (extraKeys!5565 thiss!1141) (zeroValue!5669 thiss!1141) (minValue!5669 thiss!1141) key!756 (defaultEntry!5833 thiss!1141)))))

(declare-fun b!952798 () Bool)

(assert (=> b!952798 (= e!536647 (and e!536646 mapRes!33157))))

(declare-fun condMapEmpty!33157 () Bool)

(declare-fun mapDefault!33157 () ValueCell!9923)

