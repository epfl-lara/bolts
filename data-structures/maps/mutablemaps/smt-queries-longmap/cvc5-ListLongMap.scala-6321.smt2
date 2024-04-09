; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81260 () Bool)

(assert start!81260)

(declare-fun b!950345 () Bool)

(declare-fun b_free!18247 () Bool)

(declare-fun b_next!18247 () Bool)

(assert (=> b!950345 (= b_free!18247 (not b_next!18247))))

(declare-fun tp!63341 () Bool)

(declare-fun b_and!29723 () Bool)

(assert (=> b!950345 (= tp!63341 b_and!29723)))

(declare-fun b!950338 () Bool)

(declare-fun e!535093 () Bool)

(declare-fun tp_is_empty!20755 () Bool)

(assert (=> b!950338 (= e!535093 tp_is_empty!20755)))

(declare-fun b!950339 () Bool)

(declare-fun e!535091 () Bool)

(declare-datatypes ((V!32639 0))(
  ( (V!32640 (val!10428 Int)) )
))
(declare-datatypes ((ValueCell!9896 0))(
  ( (ValueCellFull!9896 (v!12972 V!32639)) (EmptyCell!9896) )
))
(declare-datatypes ((array!57552 0))(
  ( (array!57553 (arr!27671 (Array (_ BitVec 32) ValueCell!9896)) (size!28149 (_ BitVec 32))) )
))
(declare-datatypes ((array!57554 0))(
  ( (array!57555 (arr!27672 (Array (_ BitVec 32) (_ BitVec 64))) (size!28150 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4942 0))(
  ( (LongMapFixedSize!4943 (defaultEntry!5784 Int) (mask!27581 (_ BitVec 32)) (extraKeys!5516 (_ BitVec 32)) (zeroValue!5620 V!32639) (minValue!5620 V!32639) (_size!2526 (_ BitVec 32)) (_keys!10717 array!57554) (_values!5807 array!57552) (_vacant!2526 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4942)

(assert (=> b!950339 (= e!535091 (= (size!28150 (_keys!10717 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27581 thiss!1141))))))

(declare-fun b!950340 () Bool)

(declare-fun e!535095 () Bool)

(assert (=> b!950340 (= e!535095 (not e!535091))))

(declare-fun res!637239 () Bool)

(assert (=> b!950340 (=> res!637239 e!535091)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!950340 (= res!637239 (not (validMask!0 (mask!27581 thiss!1141))))))

(declare-fun lt!428003 () (_ BitVec 32))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!57554 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!950340 (= lt!428003 (arrayScanForKey!0 (_keys!10717 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57554 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!950340 (arrayContainsKey!0 (_keys!10717 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31986 0))(
  ( (Unit!31987) )
))
(declare-fun lt!428002 () Unit!31986)

(declare-fun lemmaKeyInListMapIsInArray!323 (array!57554 array!57552 (_ BitVec 32) (_ BitVec 32) V!32639 V!32639 (_ BitVec 64) Int) Unit!31986)

(assert (=> b!950340 (= lt!428002 (lemmaKeyInListMapIsInArray!323 (_keys!10717 thiss!1141) (_values!5807 thiss!1141) (mask!27581 thiss!1141) (extraKeys!5516 thiss!1141) (zeroValue!5620 thiss!1141) (minValue!5620 thiss!1141) key!756 (defaultEntry!5784 thiss!1141)))))

(declare-fun b!950341 () Bool)

(declare-fun e!535094 () Bool)

(declare-fun e!535096 () Bool)

(declare-fun mapRes!33047 () Bool)

(assert (=> b!950341 (= e!535094 (and e!535096 mapRes!33047))))

(declare-fun condMapEmpty!33047 () Bool)

(declare-fun mapDefault!33047 () ValueCell!9896)

