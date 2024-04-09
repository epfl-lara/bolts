; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21678 () Bool)

(assert start!21678)

(declare-fun b!217418 () Bool)

(declare-fun b_free!5815 () Bool)

(declare-fun b_next!5815 () Bool)

(assert (=> b!217418 (= b_free!5815 (not b_next!5815))))

(declare-fun tp!20580 () Bool)

(declare-fun b_and!12723 () Bool)

(assert (=> b!217418 (= tp!20580 b_and!12723)))

(declare-fun b!217415 () Bool)

(declare-fun res!106481 () Bool)

(declare-fun e!141449 () Bool)

(assert (=> b!217415 (=> (not res!106481) (not e!141449))))

(declare-datatypes ((V!7217 0))(
  ( (V!7218 (val!2883 Int)) )
))
(declare-datatypes ((ValueCell!2495 0))(
  ( (ValueCellFull!2495 (v!4897 V!7217)) (EmptyCell!2495) )
))
(declare-datatypes ((array!10592 0))(
  ( (array!10593 (arr!5017 (Array (_ BitVec 32) ValueCell!2495)) (size!5349 (_ BitVec 32))) )
))
(declare-datatypes ((array!10594 0))(
  ( (array!10595 (arr!5018 (Array (_ BitVec 32) (_ BitVec 64))) (size!5350 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2890 0))(
  ( (LongMapFixedSize!2891 (defaultEntry!4095 Int) (mask!9852 (_ BitVec 32)) (extraKeys!3832 (_ BitVec 32)) (zeroValue!3936 V!7217) (minValue!3936 V!7217) (_size!1494 (_ BitVec 32)) (_keys!6144 array!10594) (_values!4078 array!10592) (_vacant!1494 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2890)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10594 (_ BitVec 32)) Bool)

(assert (=> b!217415 (= res!106481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6144 thiss!1504) (mask!9852 thiss!1504)))))

(declare-fun b!217416 () Bool)

(assert (=> b!217416 (= e!141449 false)))

(declare-fun lt!111373 () Bool)

(declare-datatypes ((List!3212 0))(
  ( (Nil!3209) (Cons!3208 (h!3855 (_ BitVec 64)) (t!8175 List!3212)) )
))
(declare-fun arrayNoDuplicates!0 (array!10594 (_ BitVec 32) List!3212) Bool)

(assert (=> b!217416 (= lt!111373 (arrayNoDuplicates!0 (_keys!6144 thiss!1504) #b00000000000000000000000000000000 Nil!3209))))

(declare-fun b!217417 () Bool)

(declare-fun res!106476 () Bool)

(assert (=> b!217417 (=> (not res!106476) (not e!141449))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217417 (= res!106476 (validMask!0 (mask!9852 thiss!1504)))))

(declare-fun e!141448 () Bool)

(declare-fun e!141452 () Bool)

(declare-fun tp_is_empty!5677 () Bool)

(declare-fun array_inv!3313 (array!10594) Bool)

(declare-fun array_inv!3314 (array!10592) Bool)

(assert (=> b!217418 (= e!141448 (and tp!20580 tp_is_empty!5677 (array_inv!3313 (_keys!6144 thiss!1504)) (array_inv!3314 (_values!4078 thiss!1504)) e!141452))))

(declare-fun b!217419 () Bool)

(declare-fun e!141447 () Bool)

(assert (=> b!217419 (= e!141447 tp_is_empty!5677)))

(declare-fun b!217420 () Bool)

(declare-fun e!141450 () Bool)

(declare-fun mapRes!9678 () Bool)

(assert (=> b!217420 (= e!141452 (and e!141450 mapRes!9678))))

(declare-fun condMapEmpty!9678 () Bool)

(declare-fun mapDefault!9678 () ValueCell!2495)

