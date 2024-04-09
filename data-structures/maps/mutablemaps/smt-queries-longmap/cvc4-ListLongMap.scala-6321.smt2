; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81264 () Bool)

(assert start!81264)

(declare-fun b!950395 () Bool)

(declare-fun b_free!18251 () Bool)

(declare-fun b_next!18251 () Bool)

(assert (=> b!950395 (= b_free!18251 (not b_next!18251))))

(declare-fun tp!63352 () Bool)

(declare-fun b_and!29727 () Bool)

(assert (=> b!950395 (= tp!63352 b_and!29727)))

(declare-fun b!950392 () Bool)

(declare-fun e!535134 () Bool)

(declare-fun tp_is_empty!20759 () Bool)

(assert (=> b!950392 (= e!535134 tp_is_empty!20759)))

(declare-fun b!950393 () Bool)

(declare-fun e!535139 () Bool)

(assert (=> b!950393 (= e!535139 tp_is_empty!20759)))

(declare-fun mapIsEmpty!33053 () Bool)

(declare-fun mapRes!33053 () Bool)

(assert (=> mapIsEmpty!33053 mapRes!33053))

(declare-fun b!950394 () Bool)

(declare-fun res!637271 () Bool)

(declare-fun e!535137 () Bool)

(assert (=> b!950394 (=> (not res!637271) (not e!535137))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!950394 (= res!637271 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!535135 () Bool)

(declare-datatypes ((V!32643 0))(
  ( (V!32644 (val!10430 Int)) )
))
(declare-datatypes ((ValueCell!9898 0))(
  ( (ValueCellFull!9898 (v!12974 V!32643)) (EmptyCell!9898) )
))
(declare-datatypes ((array!57560 0))(
  ( (array!57561 (arr!27675 (Array (_ BitVec 32) ValueCell!9898)) (size!28153 (_ BitVec 32))) )
))
(declare-datatypes ((array!57562 0))(
  ( (array!57563 (arr!27676 (Array (_ BitVec 32) (_ BitVec 64))) (size!28154 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4946 0))(
  ( (LongMapFixedSize!4947 (defaultEntry!5786 Int) (mask!27583 (_ BitVec 32)) (extraKeys!5518 (_ BitVec 32)) (zeroValue!5622 V!32643) (minValue!5622 V!32643) (_size!2528 (_ BitVec 32)) (_keys!10719 array!57562) (_values!5809 array!57560) (_vacant!2528 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4946)

(declare-fun e!535136 () Bool)

(declare-fun array_inv!21422 (array!57562) Bool)

(declare-fun array_inv!21423 (array!57560) Bool)

(assert (=> b!950395 (= e!535135 (and tp!63352 tp_is_empty!20759 (array_inv!21422 (_keys!10719 thiss!1141)) (array_inv!21423 (_values!5809 thiss!1141)) e!535136))))

(declare-fun b!950396 () Bool)

(declare-fun e!535138 () Bool)

(assert (=> b!950396 (= e!535137 (not e!535138))))

(declare-fun res!637267 () Bool)

(assert (=> b!950396 (=> res!637267 e!535138)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!950396 (= res!637267 (not (validMask!0 (mask!27583 thiss!1141))))))

(declare-fun lt!428015 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!57562 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!950396 (= lt!428015 (arrayScanForKey!0 (_keys!10719 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57562 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!950396 (arrayContainsKey!0 (_keys!10719 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31990 0))(
  ( (Unit!31991) )
))
(declare-fun lt!428014 () Unit!31990)

(declare-fun lemmaKeyInListMapIsInArray!325 (array!57562 array!57560 (_ BitVec 32) (_ BitVec 32) V!32643 V!32643 (_ BitVec 64) Int) Unit!31990)

(assert (=> b!950396 (= lt!428014 (lemmaKeyInListMapIsInArray!325 (_keys!10719 thiss!1141) (_values!5809 thiss!1141) (mask!27583 thiss!1141) (extraKeys!5518 thiss!1141) (zeroValue!5622 thiss!1141) (minValue!5622 thiss!1141) key!756 (defaultEntry!5786 thiss!1141)))))

(declare-fun b!950397 () Bool)

(declare-fun res!637270 () Bool)

(assert (=> b!950397 (=> (not res!637270) (not e!535137))))

(declare-datatypes ((tuple2!13648 0))(
  ( (tuple2!13649 (_1!6834 (_ BitVec 64)) (_2!6834 V!32643)) )
))
(declare-datatypes ((List!19473 0))(
  ( (Nil!19470) (Cons!19469 (h!20629 tuple2!13648) (t!27822 List!19473)) )
))
(declare-datatypes ((ListLongMap!12359 0))(
  ( (ListLongMap!12360 (toList!6195 List!19473)) )
))
(declare-fun contains!5237 (ListLongMap!12359 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3380 (array!57562 array!57560 (_ BitVec 32) (_ BitVec 32) V!32643 V!32643 (_ BitVec 32) Int) ListLongMap!12359)

(assert (=> b!950397 (= res!637270 (contains!5237 (getCurrentListMap!3380 (_keys!10719 thiss!1141) (_values!5809 thiss!1141) (mask!27583 thiss!1141) (extraKeys!5518 thiss!1141) (zeroValue!5622 thiss!1141) (minValue!5622 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5786 thiss!1141)) key!756))))

(declare-fun b!950398 () Bool)

(assert (=> b!950398 (= e!535136 (and e!535134 mapRes!33053))))

(declare-fun condMapEmpty!33053 () Bool)

(declare-fun mapDefault!33053 () ValueCell!9898)

