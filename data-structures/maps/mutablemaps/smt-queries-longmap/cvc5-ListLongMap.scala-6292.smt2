; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80458 () Bool)

(assert start!80458)

(declare-fun b!944712 () Bool)

(declare-fun b_free!18073 () Bool)

(declare-fun b_next!18073 () Bool)

(assert (=> b!944712 (= b_free!18073 (not b_next!18073))))

(declare-fun tp!62729 () Bool)

(declare-fun b_and!29509 () Bool)

(assert (=> b!944712 (= tp!62729 b_and!29509)))

(declare-fun mapNonEmpty!32697 () Bool)

(declare-fun mapRes!32697 () Bool)

(declare-fun tp!62730 () Bool)

(declare-fun e!531291 () Bool)

(assert (=> mapNonEmpty!32697 (= mapRes!32697 (and tp!62730 e!531291))))

(declare-datatypes ((V!32407 0))(
  ( (V!32408 (val!10341 Int)) )
))
(declare-datatypes ((ValueCell!9809 0))(
  ( (ValueCellFull!9809 (v!12873 V!32407)) (EmptyCell!9809) )
))
(declare-fun mapValue!32697 () ValueCell!9809)

(declare-fun mapRest!32697 () (Array (_ BitVec 32) ValueCell!9809))

(declare-datatypes ((array!57152 0))(
  ( (array!57153 (arr!27497 (Array (_ BitVec 32) ValueCell!9809)) (size!27964 (_ BitVec 32))) )
))
(declare-datatypes ((array!57154 0))(
  ( (array!57155 (arr!27498 (Array (_ BitVec 32) (_ BitVec 64))) (size!27965 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4768 0))(
  ( (LongMapFixedSize!4769 (defaultEntry!5679 Int) (mask!27330 (_ BitVec 32)) (extraKeys!5411 (_ BitVec 32)) (zeroValue!5515 V!32407) (minValue!5515 V!32407) (_size!2439 (_ BitVec 32)) (_keys!10553 array!57154) (_values!5702 array!57152) (_vacant!2439 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4768)

(declare-fun mapKey!32697 () (_ BitVec 32))

(assert (=> mapNonEmpty!32697 (= (arr!27497 (_values!5702 thiss!1141)) (store mapRest!32697 mapKey!32697 mapValue!32697))))

(declare-fun b!944701 () Bool)

(declare-fun res!634743 () Bool)

(declare-fun e!531296 () Bool)

(assert (=> b!944701 (=> (not res!634743) (not e!531296))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13590 0))(
  ( (tuple2!13591 (_1!6805 (_ BitVec 64)) (_2!6805 V!32407)) )
))
(declare-datatypes ((List!19409 0))(
  ( (Nil!19406) (Cons!19405 (h!20556 tuple2!13590) (t!27734 List!19409)) )
))
(declare-datatypes ((ListLongMap!12301 0))(
  ( (ListLongMap!12302 (toList!6166 List!19409)) )
))
(declare-fun contains!5189 (ListLongMap!12301 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3354 (array!57154 array!57152 (_ BitVec 32) (_ BitVec 32) V!32407 V!32407 (_ BitVec 32) Int) ListLongMap!12301)

(assert (=> b!944701 (= res!634743 (contains!5189 (getCurrentListMap!3354 (_keys!10553 thiss!1141) (_values!5702 thiss!1141) (mask!27330 thiss!1141) (extraKeys!5411 thiss!1141) (zeroValue!5515 thiss!1141) (minValue!5515 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5679 thiss!1141)) key!756))))

(declare-fun b!944702 () Bool)

(declare-fun res!634744 () Bool)

(assert (=> b!944702 (=> (not res!634744) (not e!531296))))

(assert (=> b!944702 (= res!634744 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!944703 () Bool)

(declare-fun res!634742 () Bool)

(declare-fun e!531297 () Bool)

(assert (=> b!944703 (=> res!634742 e!531297)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!944703 (= res!634742 (not (validKeyInArray!0 key!756)))))

(declare-fun b!944704 () Bool)

(declare-fun tp_is_empty!20581 () Bool)

(assert (=> b!944704 (= e!531291 tp_is_empty!20581)))

(declare-fun b!944705 () Bool)

(assert (=> b!944705 (= e!531296 (not e!531297))))

(declare-fun res!634741 () Bool)

(assert (=> b!944705 (=> res!634741 e!531297)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!944705 (= res!634741 (not (validMask!0 (mask!27330 thiss!1141))))))

(declare-fun lt!425711 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57154 (_ BitVec 32)) Bool)

(assert (=> b!944705 (arrayForallSeekEntryOrOpenFound!0 lt!425711 (_keys!10553 thiss!1141) (mask!27330 thiss!1141))))

(declare-datatypes ((Unit!31863 0))(
  ( (Unit!31864) )
))
(declare-fun lt!425712 () Unit!31863)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57154 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!31863)

(assert (=> b!944705 (= lt!425712 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10553 thiss!1141) (mask!27330 thiss!1141) #b00000000000000000000000000000000 lt!425711))))

(declare-fun arrayScanForKey!0 (array!57154 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944705 (= lt!425711 (arrayScanForKey!0 (_keys!10553 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57154 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!944705 (arrayContainsKey!0 (_keys!10553 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!425713 () Unit!31863)

(declare-fun lemmaKeyInListMapIsInArray!315 (array!57154 array!57152 (_ BitVec 32) (_ BitVec 32) V!32407 V!32407 (_ BitVec 64) Int) Unit!31863)

(assert (=> b!944705 (= lt!425713 (lemmaKeyInListMapIsInArray!315 (_keys!10553 thiss!1141) (_values!5702 thiss!1141) (mask!27330 thiss!1141) (extraKeys!5411 thiss!1141) (zeroValue!5515 thiss!1141) (minValue!5515 thiss!1141) key!756 (defaultEntry!5679 thiss!1141)))))

(declare-fun res!634738 () Bool)

(assert (=> start!80458 (=> (not res!634738) (not e!531296))))

(declare-fun valid!1798 (LongMapFixedSize!4768) Bool)

(assert (=> start!80458 (= res!634738 (valid!1798 thiss!1141))))

(assert (=> start!80458 e!531296))

(declare-fun e!531293 () Bool)

(assert (=> start!80458 e!531293))

(assert (=> start!80458 true))

(declare-fun b!944706 () Bool)

(assert (=> b!944706 (= e!531297 true)))

(declare-datatypes ((SeekEntryResult!9069 0))(
  ( (MissingZero!9069 (index!38646 (_ BitVec 32))) (Found!9069 (index!38647 (_ BitVec 32))) (Intermediate!9069 (undefined!9881 Bool) (index!38648 (_ BitVec 32)) (x!81145 (_ BitVec 32))) (Undefined!9069) (MissingVacant!9069 (index!38649 (_ BitVec 32))) )
))
(declare-fun lt!425714 () SeekEntryResult!9069)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57154 (_ BitVec 32)) SeekEntryResult!9069)

(assert (=> b!944706 (= lt!425714 (seekEntryOrOpen!0 key!756 (_keys!10553 thiss!1141) (mask!27330 thiss!1141)))))

(declare-fun b!944707 () Bool)

(declare-fun res!634737 () Bool)

(assert (=> b!944707 (=> res!634737 e!531297)))

(assert (=> b!944707 (= res!634737 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10553 thiss!1141) (mask!27330 thiss!1141))))))

(declare-fun mapIsEmpty!32697 () Bool)

(assert (=> mapIsEmpty!32697 mapRes!32697))

(declare-fun b!944708 () Bool)

(declare-fun res!634739 () Bool)

(assert (=> b!944708 (=> res!634739 e!531297)))

(assert (=> b!944708 (= res!634739 (not (= (size!27965 (_keys!10553 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27330 thiss!1141)))))))

(declare-fun b!944709 () Bool)

(declare-fun res!634740 () Bool)

(assert (=> b!944709 (=> (not res!634740) (not e!531296))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57154 (_ BitVec 32)) SeekEntryResult!9069)

(assert (=> b!944709 (= res!634740 (not (is-Found!9069 (seekEntry!0 key!756 (_keys!10553 thiss!1141) (mask!27330 thiss!1141)))))))

(declare-fun b!944710 () Bool)

(declare-fun e!531295 () Bool)

(declare-fun e!531292 () Bool)

(assert (=> b!944710 (= e!531295 (and e!531292 mapRes!32697))))

(declare-fun condMapEmpty!32697 () Bool)

(declare-fun mapDefault!32697 () ValueCell!9809)

