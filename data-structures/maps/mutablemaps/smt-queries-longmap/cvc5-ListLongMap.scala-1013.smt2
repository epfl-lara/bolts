; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21690 () Bool)

(assert start!21690)

(declare-fun b!217615 () Bool)

(declare-fun b_free!5827 () Bool)

(declare-fun b_next!5827 () Bool)

(assert (=> b!217615 (= b_free!5827 (not b_next!5827))))

(declare-fun tp!20615 () Bool)

(declare-fun b_and!12735 () Bool)

(assert (=> b!217615 (= tp!20615 b_and!12735)))

(declare-fun b!217613 () Bool)

(declare-fun res!106604 () Bool)

(declare-fun e!141578 () Bool)

(assert (=> b!217613 (=> (not res!106604) (not e!141578))))

(declare-datatypes ((V!7233 0))(
  ( (V!7234 (val!2889 Int)) )
))
(declare-datatypes ((ValueCell!2501 0))(
  ( (ValueCellFull!2501 (v!4903 V!7233)) (EmptyCell!2501) )
))
(declare-datatypes ((array!10616 0))(
  ( (array!10617 (arr!5029 (Array (_ BitVec 32) ValueCell!2501)) (size!5361 (_ BitVec 32))) )
))
(declare-datatypes ((array!10618 0))(
  ( (array!10619 (arr!5030 (Array (_ BitVec 32) (_ BitVec 64))) (size!5362 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2902 0))(
  ( (LongMapFixedSize!2903 (defaultEntry!4101 Int) (mask!9862 (_ BitVec 32)) (extraKeys!3838 (_ BitVec 32)) (zeroValue!3942 V!7233) (minValue!3942 V!7233) (_size!1500 (_ BitVec 32)) (_keys!6150 array!10618) (_values!4084 array!10616) (_vacant!1500 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2902)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10618 (_ BitVec 32)) Bool)

(assert (=> b!217613 (= res!106604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6150 thiss!1504) (mask!9862 thiss!1504)))))

(declare-fun b!217614 () Bool)

(declare-fun res!106607 () Bool)

(assert (=> b!217614 (=> (not res!106607) (not e!141578))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217614 (= res!106607 (validMask!0 (mask!9862 thiss!1504)))))

(declare-fun res!106605 () Bool)

(declare-fun e!141573 () Bool)

(assert (=> start!21690 (=> (not res!106605) (not e!141573))))

(declare-fun valid!1169 (LongMapFixedSize!2902) Bool)

(assert (=> start!21690 (= res!106605 (valid!1169 thiss!1504))))

(assert (=> start!21690 e!141573))

(declare-fun e!141574 () Bool)

(assert (=> start!21690 e!141574))

(assert (=> start!21690 true))

(declare-fun e!141577 () Bool)

(declare-fun tp_is_empty!5689 () Bool)

(declare-fun array_inv!3321 (array!10618) Bool)

(declare-fun array_inv!3322 (array!10616) Bool)

(assert (=> b!217615 (= e!141574 (and tp!20615 tp_is_empty!5689 (array_inv!3321 (_keys!6150 thiss!1504)) (array_inv!3322 (_values!4084 thiss!1504)) e!141577))))

(declare-fun b!217616 () Bool)

(declare-fun res!106608 () Bool)

(assert (=> b!217616 (=> (not res!106608) (not e!141578))))

(assert (=> b!217616 (= res!106608 (and (= (size!5361 (_values!4084 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9862 thiss!1504))) (= (size!5362 (_keys!6150 thiss!1504)) (size!5361 (_values!4084 thiss!1504))) (bvsge (mask!9862 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3838 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3838 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!217617 () Bool)

(declare-fun e!141575 () Bool)

(declare-fun mapRes!9696 () Bool)

(assert (=> b!217617 (= e!141577 (and e!141575 mapRes!9696))))

(declare-fun condMapEmpty!9696 () Bool)

(declare-fun mapDefault!9696 () ValueCell!2501)

