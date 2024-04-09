; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21842 () Bool)

(assert start!21842)

(declare-fun b!219556 () Bool)

(declare-fun b_free!5897 () Bool)

(declare-fun b_next!5897 () Bool)

(assert (=> b!219556 (= b_free!5897 (not b_next!5897))))

(declare-fun tp!20833 () Bool)

(declare-fun b_and!12813 () Bool)

(assert (=> b!219556 (= tp!20833 b_and!12813)))

(declare-fun b!219554 () Bool)

(declare-fun e!142819 () Bool)

(declare-fun e!142815 () Bool)

(assert (=> b!219554 (= e!142819 e!142815)))

(declare-fun res!107629 () Bool)

(assert (=> b!219554 (=> (not res!107629) (not e!142815))))

(declare-datatypes ((SeekEntryResult!809 0))(
  ( (MissingZero!809 (index!5406 (_ BitVec 32))) (Found!809 (index!5407 (_ BitVec 32))) (Intermediate!809 (undefined!1621 Bool) (index!5408 (_ BitVec 32)) (x!22917 (_ BitVec 32))) (Undefined!809) (MissingVacant!809 (index!5409 (_ BitVec 32))) )
))
(declare-fun lt!112014 () SeekEntryResult!809)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!219554 (= res!107629 (or (= lt!112014 (MissingZero!809 index!297)) (= lt!112014 (MissingVacant!809 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7325 0))(
  ( (V!7326 (val!2924 Int)) )
))
(declare-datatypes ((ValueCell!2536 0))(
  ( (ValueCellFull!2536 (v!4940 V!7325)) (EmptyCell!2536) )
))
(declare-datatypes ((array!10760 0))(
  ( (array!10761 (arr!5099 (Array (_ BitVec 32) ValueCell!2536)) (size!5432 (_ BitVec 32))) )
))
(declare-datatypes ((array!10762 0))(
  ( (array!10763 (arr!5100 (Array (_ BitVec 32) (_ BitVec 64))) (size!5433 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2972 0))(
  ( (LongMapFixedSize!2973 (defaultEntry!4145 Int) (mask!9937 (_ BitVec 32)) (extraKeys!3882 (_ BitVec 32)) (zeroValue!3986 V!7325) (minValue!3986 V!7325) (_size!1535 (_ BitVec 32)) (_keys!6199 array!10762) (_values!4128 array!10760) (_vacant!1535 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2972)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10762 (_ BitVec 32)) SeekEntryResult!809)

(assert (=> b!219554 (= lt!112014 (seekEntryOrOpen!0 key!932 (_keys!6199 thiss!1504) (mask!9937 thiss!1504)))))

(declare-fun b!219555 () Bool)

(declare-fun c!36551 () Bool)

(assert (=> b!219555 (= c!36551 (is-MissingVacant!809 lt!112014))))

(declare-fun e!142812 () Bool)

(declare-fun e!142811 () Bool)

(assert (=> b!219555 (= e!142812 e!142811)))

(declare-fun b!219557 () Bool)

(declare-fun res!107627 () Bool)

(declare-fun e!142822 () Bool)

(assert (=> b!219557 (=> (not res!107627) (not e!142822))))

(assert (=> b!219557 (= res!107627 (= (select (arr!5100 (_keys!6199 thiss!1504)) (index!5406 lt!112014)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!219558 () Bool)

(declare-fun res!107633 () Bool)

(assert (=> b!219558 (=> (not res!107633) (not e!142822))))

(declare-fun call!20524 () Bool)

(assert (=> b!219558 (= res!107633 call!20524)))

(assert (=> b!219558 (= e!142812 e!142822)))

(declare-fun b!219559 () Bool)

(declare-datatypes ((Unit!6544 0))(
  ( (Unit!6545) )
))
(declare-fun e!142818 () Unit!6544)

(declare-fun lt!112011 () Unit!6544)

(assert (=> b!219559 (= e!142818 lt!112011)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!205 (array!10762 array!10760 (_ BitVec 32) (_ BitVec 32) V!7325 V!7325 (_ BitVec 64) Int) Unit!6544)

(assert (=> b!219559 (= lt!112011 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!205 (_keys!6199 thiss!1504) (_values!4128 thiss!1504) (mask!9937 thiss!1504) (extraKeys!3882 thiss!1504) (zeroValue!3986 thiss!1504) (minValue!3986 thiss!1504) key!932 (defaultEntry!4145 thiss!1504)))))

(declare-fun c!36550 () Bool)

(assert (=> b!219559 (= c!36550 (is-MissingZero!809 lt!112014))))

(assert (=> b!219559 e!142812))

(declare-fun mapIsEmpty!9808 () Bool)

(declare-fun mapRes!9808 () Bool)

(assert (=> mapIsEmpty!9808 mapRes!9808))

(declare-fun bm!20520 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20520 (= call!20524 (inRange!0 (ite c!36550 (index!5406 lt!112014) (index!5409 lt!112014)) (mask!9937 thiss!1504)))))

(declare-fun b!219560 () Bool)

(declare-fun res!107626 () Bool)

(declare-fun e!142820 () Bool)

(assert (=> b!219560 (=> (not res!107626) (not e!142820))))

(assert (=> b!219560 (= res!107626 (and (= (size!5432 (_values!4128 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9937 thiss!1504))) (= (size!5433 (_keys!6199 thiss!1504)) (size!5432 (_values!4128 thiss!1504))) (bvsge (mask!9937 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3882 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3882 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!219561 () Bool)

(declare-fun res!107632 () Bool)

(assert (=> b!219561 (=> (not res!107632) (not e!142820))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10762 (_ BitVec 32)) Bool)

(assert (=> b!219561 (= res!107632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6199 thiss!1504) (mask!9937 thiss!1504)))))

(declare-fun b!219562 () Bool)

(declare-fun res!107625 () Bool)

(assert (=> b!219562 (=> (not res!107625) (not e!142820))))

(declare-fun arrayContainsKey!0 (array!10762 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!219562 (= res!107625 (arrayContainsKey!0 (_keys!6199 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!219563 () Bool)

(declare-fun e!142813 () Bool)

(declare-fun tp_is_empty!5759 () Bool)

(assert (=> b!219563 (= e!142813 tp_is_empty!5759)))

(declare-fun mapNonEmpty!9808 () Bool)

(declare-fun tp!20832 () Bool)

(assert (=> mapNonEmpty!9808 (= mapRes!9808 (and tp!20832 e!142813))))

(declare-fun mapValue!9808 () ValueCell!2536)

(declare-fun mapRest!9808 () (Array (_ BitVec 32) ValueCell!2536))

(declare-fun mapKey!9808 () (_ BitVec 32))

(assert (=> mapNonEmpty!9808 (= (arr!5099 (_values!4128 thiss!1504)) (store mapRest!9808 mapKey!9808 mapValue!9808))))

(declare-fun b!219564 () Bool)

(declare-fun e!142821 () Bool)

(declare-fun e!142810 () Bool)

(assert (=> b!219564 (= e!142821 (and e!142810 mapRes!9808))))

(declare-fun condMapEmpty!9808 () Bool)

(declare-fun mapDefault!9808 () ValueCell!2536)

