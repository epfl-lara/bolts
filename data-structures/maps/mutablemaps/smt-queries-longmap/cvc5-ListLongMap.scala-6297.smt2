; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80552 () Bool)

(assert start!80552)

(declare-fun b!945408 () Bool)

(declare-fun b_free!18103 () Bool)

(declare-fun b_next!18103 () Bool)

(assert (=> b!945408 (= b_free!18103 (not b_next!18103))))

(declare-fun tp!62831 () Bool)

(declare-fun b_and!29543 () Bool)

(assert (=> b!945408 (= tp!62831 b_and!29543)))

(declare-fun res!635038 () Bool)

(declare-fun e!531802 () Bool)

(assert (=> start!80552 (=> (not res!635038) (not e!531802))))

(declare-datatypes ((V!32447 0))(
  ( (V!32448 (val!10356 Int)) )
))
(declare-datatypes ((ValueCell!9824 0))(
  ( (ValueCellFull!9824 (v!12890 V!32447)) (EmptyCell!9824) )
))
(declare-datatypes ((array!57218 0))(
  ( (array!57219 (arr!27527 (Array (_ BitVec 32) ValueCell!9824)) (size!27996 (_ BitVec 32))) )
))
(declare-datatypes ((array!57220 0))(
  ( (array!57221 (arr!27528 (Array (_ BitVec 32) (_ BitVec 64))) (size!27997 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4798 0))(
  ( (LongMapFixedSize!4799 (defaultEntry!5696 Int) (mask!27360 (_ BitVec 32)) (extraKeys!5428 (_ BitVec 32)) (zeroValue!5532 V!32447) (minValue!5532 V!32447) (_size!2454 (_ BitVec 32)) (_keys!10573 array!57220) (_values!5719 array!57218) (_vacant!2454 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4798)

(declare-fun valid!1808 (LongMapFixedSize!4798) Bool)

(assert (=> start!80552 (= res!635038 (valid!1808 thiss!1141))))

(assert (=> start!80552 e!531802))

(declare-fun e!531798 () Bool)

(assert (=> start!80552 e!531798))

(assert (=> start!80552 true))

(declare-fun b!945405 () Bool)

(declare-datatypes ((SeekEntryResult!9079 0))(
  ( (MissingZero!9079 (index!38686 (_ BitVec 32))) (Found!9079 (index!38687 (_ BitVec 32))) (Intermediate!9079 (undefined!9891 Bool) (index!38688 (_ BitVec 32)) (x!81235 (_ BitVec 32))) (Undefined!9079) (MissingVacant!9079 (index!38689 (_ BitVec 32))) )
))
(declare-fun lt!425993 () SeekEntryResult!9079)

(assert (=> b!945405 (= e!531802 (and (is-Found!9079 lt!425993) (bvsge (index!38687 lt!425993) #b00000000000000000000000000000000) (bvsge (index!38687 lt!425993) (size!27997 (_keys!10573 thiss!1141)))))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57220 (_ BitVec 32)) SeekEntryResult!9079)

(assert (=> b!945405 (= lt!425993 (seekEntry!0 key!756 (_keys!10573 thiss!1141) (mask!27360 thiss!1141)))))

(declare-fun b!945406 () Bool)

(declare-fun e!531801 () Bool)

(declare-fun tp_is_empty!20611 () Bool)

(assert (=> b!945406 (= e!531801 tp_is_empty!20611)))

(declare-fun b!945407 () Bool)

(declare-fun res!635037 () Bool)

(assert (=> b!945407 (=> (not res!635037) (not e!531802))))

(assert (=> b!945407 (= res!635037 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!32753 () Bool)

(declare-fun mapRes!32753 () Bool)

(declare-fun tp!62830 () Bool)

(declare-fun e!531800 () Bool)

(assert (=> mapNonEmpty!32753 (= mapRes!32753 (and tp!62830 e!531800))))

(declare-fun mapKey!32753 () (_ BitVec 32))

(declare-fun mapRest!32753 () (Array (_ BitVec 32) ValueCell!9824))

(declare-fun mapValue!32753 () ValueCell!9824)

(assert (=> mapNonEmpty!32753 (= (arr!27527 (_values!5719 thiss!1141)) (store mapRest!32753 mapKey!32753 mapValue!32753))))

(declare-fun e!531797 () Bool)

(declare-fun array_inv!21330 (array!57220) Bool)

(declare-fun array_inv!21331 (array!57218) Bool)

(assert (=> b!945408 (= e!531798 (and tp!62831 tp_is_empty!20611 (array_inv!21330 (_keys!10573 thiss!1141)) (array_inv!21331 (_values!5719 thiss!1141)) e!531797))))

(declare-fun b!945409 () Bool)

(assert (=> b!945409 (= e!531797 (and e!531801 mapRes!32753))))

(declare-fun condMapEmpty!32753 () Bool)

(declare-fun mapDefault!32753 () ValueCell!9824)

