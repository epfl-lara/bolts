; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80538 () Bool)

(assert start!80538)

(declare-fun b!945318 () Bool)

(declare-fun b_free!18097 () Bool)

(declare-fun b_next!18097 () Bool)

(assert (=> b!945318 (= b_free!18097 (not b_next!18097))))

(declare-fun tp!62810 () Bool)

(declare-fun b_and!29537 () Bool)

(assert (=> b!945318 (= tp!62810 b_and!29537)))

(declare-fun b!945316 () Bool)

(declare-fun e!531725 () Bool)

(declare-fun tp_is_empty!20605 () Bool)

(assert (=> b!945316 (= e!531725 tp_is_empty!20605)))

(declare-fun mapNonEmpty!32741 () Bool)

(declare-fun mapRes!32741 () Bool)

(declare-fun tp!62809 () Bool)

(assert (=> mapNonEmpty!32741 (= mapRes!32741 (and tp!62809 e!531725))))

(declare-datatypes ((V!32439 0))(
  ( (V!32440 (val!10353 Int)) )
))
(declare-datatypes ((ValueCell!9821 0))(
  ( (ValueCellFull!9821 (v!12887 V!32439)) (EmptyCell!9821) )
))
(declare-fun mapValue!32741 () ValueCell!9821)

(declare-datatypes ((array!57204 0))(
  ( (array!57205 (arr!27521 (Array (_ BitVec 32) ValueCell!9821)) (size!27990 (_ BitVec 32))) )
))
(declare-datatypes ((array!57206 0))(
  ( (array!57207 (arr!27522 (Array (_ BitVec 32) (_ BitVec 64))) (size!27991 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4792 0))(
  ( (LongMapFixedSize!4793 (defaultEntry!5693 Int) (mask!27354 (_ BitVec 32)) (extraKeys!5425 (_ BitVec 32)) (zeroValue!5529 V!32439) (minValue!5529 V!32439) (_size!2451 (_ BitVec 32)) (_keys!10569 array!57206) (_values!5716 array!57204) (_vacant!2451 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4792)

(declare-fun mapKey!32741 () (_ BitVec 32))

(declare-fun mapRest!32741 () (Array (_ BitVec 32) ValueCell!9821))

(assert (=> mapNonEmpty!32741 (= (arr!27521 (_values!5716 thiss!1141)) (store mapRest!32741 mapKey!32741 mapValue!32741))))

(declare-fun b!945317 () Bool)

(declare-fun e!531729 () Bool)

(declare-datatypes ((SeekEntryResult!9077 0))(
  ( (MissingZero!9077 (index!38678 (_ BitVec 32))) (Found!9077 (index!38679 (_ BitVec 32))) (Intermediate!9077 (undefined!9889 Bool) (index!38680 (_ BitVec 32)) (x!81217 (_ BitVec 32))) (Undefined!9077) (MissingVacant!9077 (index!38681 (_ BitVec 32))) )
))
(declare-fun lt!425972 () SeekEntryResult!9077)

(assert (=> b!945317 (= e!531729 (and (is-Found!9077 lt!425972) (bvslt (index!38679 lt!425972) #b00000000000000000000000000000000)))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57206 (_ BitVec 32)) SeekEntryResult!9077)

(assert (=> b!945317 (= lt!425972 (seekEntry!0 key!756 (_keys!10569 thiss!1141) (mask!27354 thiss!1141)))))

(declare-fun e!531730 () Bool)

(declare-fun e!531727 () Bool)

(declare-fun array_inv!21326 (array!57206) Bool)

(declare-fun array_inv!21327 (array!57204) Bool)

(assert (=> b!945318 (= e!531727 (and tp!62810 tp_is_empty!20605 (array_inv!21326 (_keys!10569 thiss!1141)) (array_inv!21327 (_values!5716 thiss!1141)) e!531730))))

(declare-fun b!945319 () Bool)

(declare-fun res!635011 () Bool)

(assert (=> b!945319 (=> (not res!635011) (not e!531729))))

(assert (=> b!945319 (= res!635011 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!32741 () Bool)

(assert (=> mapIsEmpty!32741 mapRes!32741))

(declare-fun b!945320 () Bool)

(declare-fun e!531726 () Bool)

(assert (=> b!945320 (= e!531726 tp_is_empty!20605)))

(declare-fun b!945321 () Bool)

(assert (=> b!945321 (= e!531730 (and e!531726 mapRes!32741))))

(declare-fun condMapEmpty!32741 () Bool)

(declare-fun mapDefault!32741 () ValueCell!9821)

