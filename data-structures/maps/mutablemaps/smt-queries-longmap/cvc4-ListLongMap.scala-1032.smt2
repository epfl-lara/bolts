; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21890 () Bool)

(assert start!21890)

(declare-fun b!221139 () Bool)

(declare-fun b_free!5945 () Bool)

(declare-fun b_next!5945 () Bool)

(assert (=> b!221139 (= b_free!5945 (not b_next!5945))))

(declare-fun tp!20976 () Bool)

(declare-fun b_and!12861 () Bool)

(assert (=> b!221139 (= tp!20976 b_and!12861)))

(declare-fun b!221138 () Bool)

(declare-fun e!143748 () Bool)

(declare-fun tp_is_empty!5807 () Bool)

(assert (=> b!221138 (= e!143748 tp_is_empty!5807)))

(declare-fun mapIsEmpty!9880 () Bool)

(declare-fun mapRes!9880 () Bool)

(assert (=> mapIsEmpty!9880 mapRes!9880))

(declare-fun b!221140 () Bool)

(declare-fun res!108495 () Bool)

(declare-fun e!143757 () Bool)

(assert (=> b!221140 (=> (not res!108495) (not e!143757))))

(declare-datatypes ((V!7389 0))(
  ( (V!7390 (val!2948 Int)) )
))
(declare-datatypes ((ValueCell!2560 0))(
  ( (ValueCellFull!2560 (v!4964 V!7389)) (EmptyCell!2560) )
))
(declare-datatypes ((array!10856 0))(
  ( (array!10857 (arr!5147 (Array (_ BitVec 32) ValueCell!2560)) (size!5480 (_ BitVec 32))) )
))
(declare-datatypes ((array!10858 0))(
  ( (array!10859 (arr!5148 (Array (_ BitVec 32) (_ BitVec 64))) (size!5481 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3020 0))(
  ( (LongMapFixedSize!3021 (defaultEntry!4169 Int) (mask!9977 (_ BitVec 32)) (extraKeys!3906 (_ BitVec 32)) (zeroValue!4010 V!7389) (minValue!4010 V!7389) (_size!1559 (_ BitVec 32)) (_keys!6223 array!10858) (_values!4152 array!10856) (_vacant!1559 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3020)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!10858 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!221140 (= res!108495 (arrayContainsKey!0 (_keys!6223 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!221141 () Bool)

(declare-datatypes ((Unit!6602 0))(
  ( (Unit!6603) )
))
(declare-fun e!143754 () Unit!6602)

(declare-fun lt!112374 () Unit!6602)

(assert (=> b!221141 (= e!143754 lt!112374)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!221 (array!10858 array!10856 (_ BitVec 32) (_ BitVec 32) V!7389 V!7389 (_ BitVec 64) Int) Unit!6602)

(assert (=> b!221141 (= lt!112374 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!221 (_keys!6223 thiss!1504) (_values!4152 thiss!1504) (mask!9977 thiss!1504) (extraKeys!3906 thiss!1504) (zeroValue!4010 thiss!1504) (minValue!4010 thiss!1504) key!932 (defaultEntry!4169 thiss!1504)))))

(declare-fun c!36765 () Bool)

(declare-datatypes ((SeekEntryResult!831 0))(
  ( (MissingZero!831 (index!5494 (_ BitVec 32))) (Found!831 (index!5495 (_ BitVec 32))) (Intermediate!831 (undefined!1643 Bool) (index!5496 (_ BitVec 32)) (x!23003 (_ BitVec 32))) (Undefined!831) (MissingVacant!831 (index!5497 (_ BitVec 32))) )
))
(declare-fun lt!112372 () SeekEntryResult!831)

(assert (=> b!221141 (= c!36765 (is-MissingZero!831 lt!112372))))

(declare-fun e!143755 () Bool)

(assert (=> b!221141 e!143755))

(declare-fun b!221142 () Bool)

(declare-fun e!143752 () Bool)

(assert (=> b!221142 (= e!143752 (is-Undefined!831 lt!112372))))

(declare-fun b!221143 () Bool)

(declare-fun res!108490 () Bool)

(declare-fun e!143750 () Bool)

(assert (=> b!221143 (=> (not res!108490) (not e!143750))))

(assert (=> b!221143 (= res!108490 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!221144 () Bool)

(declare-fun res!108492 () Bool)

(assert (=> b!221144 (=> (not res!108492) (not e!143757))))

(assert (=> b!221144 (= res!108492 (and (= (size!5480 (_values!4152 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9977 thiss!1504))) (= (size!5481 (_keys!6223 thiss!1504)) (size!5480 (_values!4152 thiss!1504))) (bvsge (mask!9977 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3906 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3906 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!221145 () Bool)

(declare-fun res!108494 () Bool)

(assert (=> b!221145 (= res!108494 (= (select (arr!5148 (_keys!6223 thiss!1504)) (index!5497 lt!112372)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!143749 () Bool)

(assert (=> b!221145 (=> (not res!108494) (not e!143749))))

(declare-fun b!221146 () Bool)

(declare-fun res!108489 () Bool)

(assert (=> b!221146 (=> (not res!108489) (not e!143757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10858 (_ BitVec 32)) Bool)

(assert (=> b!221146 (= res!108489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6223 thiss!1504) (mask!9977 thiss!1504)))))

(declare-fun b!221147 () Bool)

(declare-fun e!143753 () Bool)

(declare-fun call!20668 () Bool)

(assert (=> b!221147 (= e!143753 (not call!20668))))

(declare-fun b!221148 () Bool)

(declare-fun Unit!6604 () Unit!6602)

(assert (=> b!221148 (= e!143754 Unit!6604)))

(declare-fun lt!112370 () Unit!6602)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!213 (array!10858 array!10856 (_ BitVec 32) (_ BitVec 32) V!7389 V!7389 (_ BitVec 64) Int) Unit!6602)

(assert (=> b!221148 (= lt!112370 (lemmaInListMapThenSeekEntryOrOpenFindsIt!213 (_keys!6223 thiss!1504) (_values!4152 thiss!1504) (mask!9977 thiss!1504) (extraKeys!3906 thiss!1504) (zeroValue!4010 thiss!1504) (minValue!4010 thiss!1504) key!932 (defaultEntry!4169 thiss!1504)))))

(assert (=> b!221148 false))

(declare-fun b!221149 () Bool)

(assert (=> b!221149 (= e!143749 (not call!20668))))

(declare-fun res!108496 () Bool)

(assert (=> start!21890 (=> (not res!108496) (not e!143750))))

(declare-fun valid!1211 (LongMapFixedSize!3020) Bool)

(assert (=> start!21890 (= res!108496 (valid!1211 thiss!1504))))

(assert (=> start!21890 e!143750))

(declare-fun e!143746 () Bool)

(assert (=> start!21890 e!143746))

(assert (=> start!21890 true))

(declare-fun e!143747 () Bool)

(declare-fun array_inv!3397 (array!10858) Bool)

(declare-fun array_inv!3398 (array!10856) Bool)

(assert (=> b!221139 (= e!143746 (and tp!20976 tp_is_empty!5807 (array_inv!3397 (_keys!6223 thiss!1504)) (array_inv!3398 (_values!4152 thiss!1504)) e!143747))))

(declare-fun b!221150 () Bool)

(declare-fun e!143756 () Bool)

(assert (=> b!221150 (= e!143747 (and e!143756 mapRes!9880))))

(declare-fun condMapEmpty!9880 () Bool)

(declare-fun mapDefault!9880 () ValueCell!2560)

