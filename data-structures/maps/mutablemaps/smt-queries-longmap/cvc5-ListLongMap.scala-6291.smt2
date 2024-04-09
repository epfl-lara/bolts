; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80452 () Bool)

(assert start!80452)

(declare-fun b!944600 () Bool)

(declare-fun b_free!18067 () Bool)

(declare-fun b_next!18067 () Bool)

(assert (=> b!944600 (= b_free!18067 (not b_next!18067))))

(declare-fun tp!62712 () Bool)

(declare-fun b_and!29503 () Bool)

(assert (=> b!944600 (= tp!62712 b_and!29503)))

(declare-fun b!944593 () Bool)

(declare-fun e!531233 () Bool)

(declare-fun e!531234 () Bool)

(assert (=> b!944593 (= e!531233 (not e!531234))))

(declare-fun res!634666 () Bool)

(assert (=> b!944593 (=> res!634666 e!531234)))

(declare-datatypes ((V!32399 0))(
  ( (V!32400 (val!10338 Int)) )
))
(declare-datatypes ((ValueCell!9806 0))(
  ( (ValueCellFull!9806 (v!12870 V!32399)) (EmptyCell!9806) )
))
(declare-datatypes ((array!57140 0))(
  ( (array!57141 (arr!27491 (Array (_ BitVec 32) ValueCell!9806)) (size!27958 (_ BitVec 32))) )
))
(declare-datatypes ((array!57142 0))(
  ( (array!57143 (arr!27492 (Array (_ BitVec 32) (_ BitVec 64))) (size!27959 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4762 0))(
  ( (LongMapFixedSize!4763 (defaultEntry!5676 Int) (mask!27325 (_ BitVec 32)) (extraKeys!5408 (_ BitVec 32)) (zeroValue!5512 V!32399) (minValue!5512 V!32399) (_size!2436 (_ BitVec 32)) (_keys!10550 array!57142) (_values!5699 array!57140) (_vacant!2436 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4762)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!944593 (= res!634666 (not (validMask!0 (mask!27325 thiss!1141))))))

(declare-fun lt!425678 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57142 (_ BitVec 32)) Bool)

(assert (=> b!944593 (arrayForallSeekEntryOrOpenFound!0 lt!425678 (_keys!10550 thiss!1141) (mask!27325 thiss!1141))))

(declare-datatypes ((Unit!31857 0))(
  ( (Unit!31858) )
))
(declare-fun lt!425675 () Unit!31857)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57142 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!31857)

(assert (=> b!944593 (= lt!425675 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10550 thiss!1141) (mask!27325 thiss!1141) #b00000000000000000000000000000000 lt!425678))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!57142 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944593 (= lt!425678 (arrayScanForKey!0 (_keys!10550 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57142 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!944593 (arrayContainsKey!0 (_keys!10550 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!425677 () Unit!31857)

(declare-fun lemmaKeyInListMapIsInArray!312 (array!57142 array!57140 (_ BitVec 32) (_ BitVec 32) V!32399 V!32399 (_ BitVec 64) Int) Unit!31857)

(assert (=> b!944593 (= lt!425677 (lemmaKeyInListMapIsInArray!312 (_keys!10550 thiss!1141) (_values!5699 thiss!1141) (mask!27325 thiss!1141) (extraKeys!5408 thiss!1141) (zeroValue!5512 thiss!1141) (minValue!5512 thiss!1141) key!756 (defaultEntry!5676 thiss!1141)))))

(declare-fun res!634672 () Bool)

(assert (=> start!80452 (=> (not res!634672) (not e!531233))))

(declare-fun valid!1795 (LongMapFixedSize!4762) Bool)

(assert (=> start!80452 (= res!634672 (valid!1795 thiss!1141))))

(assert (=> start!80452 e!531233))

(declare-fun e!531228 () Bool)

(assert (=> start!80452 e!531228))

(assert (=> start!80452 true))

(declare-fun b!944594 () Bool)

(declare-fun res!634671 () Bool)

(assert (=> b!944594 (=> res!634671 e!531234)))

(assert (=> b!944594 (= res!634671 (not (= (size!27959 (_keys!10550 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27325 thiss!1141)))))))

(declare-fun mapNonEmpty!32688 () Bool)

(declare-fun mapRes!32688 () Bool)

(declare-fun tp!62711 () Bool)

(declare-fun e!531229 () Bool)

(assert (=> mapNonEmpty!32688 (= mapRes!32688 (and tp!62711 e!531229))))

(declare-fun mapKey!32688 () (_ BitVec 32))

(declare-fun mapValue!32688 () ValueCell!9806)

(declare-fun mapRest!32688 () (Array (_ BitVec 32) ValueCell!9806))

(assert (=> mapNonEmpty!32688 (= (arr!27491 (_values!5699 thiss!1141)) (store mapRest!32688 mapKey!32688 mapValue!32688))))

(declare-fun b!944595 () Bool)

(declare-fun res!634667 () Bool)

(assert (=> b!944595 (=> res!634667 e!531234)))

(assert (=> b!944595 (= res!634667 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10550 thiss!1141) (mask!27325 thiss!1141))))))

(declare-fun b!944596 () Bool)

(declare-fun res!634668 () Bool)

(assert (=> b!944596 (=> (not res!634668) (not e!531233))))

(declare-datatypes ((SeekEntryResult!9066 0))(
  ( (MissingZero!9066 (index!38634 (_ BitVec 32))) (Found!9066 (index!38635 (_ BitVec 32))) (Intermediate!9066 (undefined!9878 Bool) (index!38636 (_ BitVec 32)) (x!81134 (_ BitVec 32))) (Undefined!9066) (MissingVacant!9066 (index!38637 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57142 (_ BitVec 32)) SeekEntryResult!9066)

(assert (=> b!944596 (= res!634668 (not (is-Found!9066 (seekEntry!0 key!756 (_keys!10550 thiss!1141) (mask!27325 thiss!1141)))))))

(declare-fun b!944597 () Bool)

(declare-fun e!531230 () Bool)

(declare-fun tp_is_empty!20575 () Bool)

(assert (=> b!944597 (= e!531230 tp_is_empty!20575)))

(declare-fun b!944598 () Bool)

(assert (=> b!944598 (= e!531229 tp_is_empty!20575)))

(declare-fun b!944599 () Bool)

(assert (=> b!944599 (= e!531234 true)))

(declare-fun lt!425676 () SeekEntryResult!9066)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57142 (_ BitVec 32)) SeekEntryResult!9066)

(assert (=> b!944599 (= lt!425676 (seekEntryOrOpen!0 key!756 (_keys!10550 thiss!1141) (mask!27325 thiss!1141)))))

(declare-fun e!531232 () Bool)

(declare-fun array_inv!21304 (array!57142) Bool)

(declare-fun array_inv!21305 (array!57140) Bool)

(assert (=> b!944600 (= e!531228 (and tp!62712 tp_is_empty!20575 (array_inv!21304 (_keys!10550 thiss!1141)) (array_inv!21305 (_values!5699 thiss!1141)) e!531232))))

(declare-fun mapIsEmpty!32688 () Bool)

(assert (=> mapIsEmpty!32688 mapRes!32688))

(declare-fun b!944601 () Bool)

(declare-fun res!634669 () Bool)

(assert (=> b!944601 (=> res!634669 e!531234)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!944601 (= res!634669 (not (validKeyInArray!0 key!756)))))

(declare-fun b!944602 () Bool)

(declare-fun res!634670 () Bool)

(assert (=> b!944602 (=> (not res!634670) (not e!531233))))

(assert (=> b!944602 (= res!634670 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!944603 () Bool)

(assert (=> b!944603 (= e!531232 (and e!531230 mapRes!32688))))

(declare-fun condMapEmpty!32688 () Bool)

(declare-fun mapDefault!32688 () ValueCell!9806)

