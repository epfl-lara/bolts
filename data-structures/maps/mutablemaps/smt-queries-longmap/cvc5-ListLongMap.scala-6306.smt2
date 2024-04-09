; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80796 () Bool)

(assert start!80796)

(declare-fun b!946860 () Bool)

(declare-fun b_free!18157 () Bool)

(declare-fun b_next!18157 () Bool)

(assert (=> b!946860 (= b_free!18157 (not b_next!18157))))

(declare-fun tp!63025 () Bool)

(declare-fun b_and!29597 () Bool)

(assert (=> b!946860 (= tp!63025 b_and!29597)))

(declare-fun mapIsEmpty!32866 () Bool)

(declare-fun mapRes!32866 () Bool)

(assert (=> mapIsEmpty!32866 mapRes!32866))

(declare-fun res!635630 () Bool)

(declare-fun e!532894 () Bool)

(assert (=> start!80796 (=> (not res!635630) (not e!532894))))

(declare-datatypes ((V!32519 0))(
  ( (V!32520 (val!10383 Int)) )
))
(declare-datatypes ((ValueCell!9851 0))(
  ( (ValueCellFull!9851 (v!12917 V!32519)) (EmptyCell!9851) )
))
(declare-datatypes ((array!57344 0))(
  ( (array!57345 (arr!27581 (Array (_ BitVec 32) ValueCell!9851)) (size!28055 (_ BitVec 32))) )
))
(declare-datatypes ((array!57346 0))(
  ( (array!57347 (arr!27582 (Array (_ BitVec 32) (_ BitVec 64))) (size!28056 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4852 0))(
  ( (LongMapFixedSize!4853 (defaultEntry!5723 Int) (mask!27441 (_ BitVec 32)) (extraKeys!5455 (_ BitVec 32)) (zeroValue!5559 V!32519) (minValue!5559 V!32519) (_size!2481 (_ BitVec 32)) (_keys!10624 array!57346) (_values!5746 array!57344) (_vacant!2481 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4852)

(declare-fun valid!1828 (LongMapFixedSize!4852) Bool)

(assert (=> start!80796 (= res!635630 (valid!1828 thiss!1141))))

(assert (=> start!80796 e!532894))

(declare-fun e!532890 () Bool)

(assert (=> start!80796 e!532890))

(assert (=> start!80796 true))

(declare-fun mapNonEmpty!32866 () Bool)

(declare-fun tp!63024 () Bool)

(declare-fun e!532892 () Bool)

(assert (=> mapNonEmpty!32866 (= mapRes!32866 (and tp!63024 e!532892))))

(declare-fun mapValue!32866 () ValueCell!9851)

(declare-fun mapKey!32866 () (_ BitVec 32))

(declare-fun mapRest!32866 () (Array (_ BitVec 32) ValueCell!9851))

(assert (=> mapNonEmpty!32866 (= (arr!27581 (_values!5746 thiss!1141)) (store mapRest!32866 mapKey!32866 mapValue!32866))))

(declare-fun e!532889 () Bool)

(declare-fun tp_is_empty!20665 () Bool)

(declare-fun array_inv!21362 (array!57346) Bool)

(declare-fun array_inv!21363 (array!57344) Bool)

(assert (=> b!946860 (= e!532890 (and tp!63025 tp_is_empty!20665 (array_inv!21362 (_keys!10624 thiss!1141)) (array_inv!21363 (_values!5746 thiss!1141)) e!532889))))

(declare-fun b!946861 () Bool)

(declare-fun e!532893 () Bool)

(assert (=> b!946861 (= e!532894 e!532893)))

(declare-fun res!635629 () Bool)

(assert (=> b!946861 (=> (not res!635629) (not e!532893))))

(declare-datatypes ((SeekEntryResult!9099 0))(
  ( (MissingZero!9099 (index!38766 (_ BitVec 32))) (Found!9099 (index!38767 (_ BitVec 32))) (Intermediate!9099 (undefined!9911 Bool) (index!38768 (_ BitVec 32)) (x!81444 (_ BitVec 32))) (Undefined!9099) (MissingVacant!9099 (index!38769 (_ BitVec 32))) )
))
(declare-fun lt!426407 () SeekEntryResult!9099)

(assert (=> b!946861 (= res!635629 (is-Found!9099 lt!426407))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57346 (_ BitVec 32)) SeekEntryResult!9099)

(assert (=> b!946861 (= lt!426407 (seekEntry!0 key!756 (_keys!10624 thiss!1141) (mask!27441 thiss!1141)))))

(declare-fun b!946862 () Bool)

(declare-fun e!532888 () Bool)

(assert (=> b!946862 (= e!532888 tp_is_empty!20665)))

(declare-fun b!946863 () Bool)

(declare-fun e!532891 () Bool)

(assert (=> b!946863 (= e!532893 (not e!532891))))

(declare-fun res!635632 () Bool)

(assert (=> b!946863 (=> res!635632 e!532891)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!946863 (= res!635632 (not (validMask!0 (mask!27441 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!57346 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!946863 (arrayContainsKey!0 (_keys!10624 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31911 0))(
  ( (Unit!31912) )
))
(declare-fun lt!426406 () Unit!31911)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57346 (_ BitVec 64) (_ BitVec 32)) Unit!31911)

(assert (=> b!946863 (= lt!426406 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10624 thiss!1141) key!756 (index!38767 lt!426407)))))

(declare-fun b!946864 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57346 (_ BitVec 32)) Bool)

(assert (=> b!946864 (= e!532891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10624 thiss!1141) (mask!27441 thiss!1141)))))

(declare-fun b!946865 () Bool)

(declare-fun res!635631 () Bool)

(assert (=> b!946865 (=> (not res!635631) (not e!532894))))

(assert (=> b!946865 (= res!635631 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!946866 () Bool)

(declare-fun res!635633 () Bool)

(assert (=> b!946866 (=> res!635633 e!532891)))

(assert (=> b!946866 (= res!635633 (or (not (= (size!28055 (_values!5746 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27441 thiss!1141)))) (not (= (size!28056 (_keys!10624 thiss!1141)) (size!28055 (_values!5746 thiss!1141)))) (bvslt (mask!27441 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5455 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5455 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!946867 () Bool)

(assert (=> b!946867 (= e!532889 (and e!532888 mapRes!32866))))

(declare-fun condMapEmpty!32866 () Bool)

(declare-fun mapDefault!32866 () ValueCell!9851)

