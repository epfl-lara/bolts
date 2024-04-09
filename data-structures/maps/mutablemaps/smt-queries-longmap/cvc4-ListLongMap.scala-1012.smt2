; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21688 () Bool)

(assert start!21688)

(declare-fun b!217589 () Bool)

(declare-fun b_free!5825 () Bool)

(declare-fun b_next!5825 () Bool)

(assert (=> b!217589 (= b_free!5825 (not b_next!5825))))

(declare-fun tp!20609 () Bool)

(declare-fun b_and!12733 () Bool)

(assert (=> b!217589 (= tp!20609 b_and!12733)))

(declare-fun res!106583 () Bool)

(declare-fun e!141554 () Bool)

(assert (=> start!21688 (=> (not res!106583) (not e!141554))))

(declare-datatypes ((V!7229 0))(
  ( (V!7230 (val!2888 Int)) )
))
(declare-datatypes ((ValueCell!2500 0))(
  ( (ValueCellFull!2500 (v!4902 V!7229)) (EmptyCell!2500) )
))
(declare-datatypes ((array!10612 0))(
  ( (array!10613 (arr!5027 (Array (_ BitVec 32) ValueCell!2500)) (size!5359 (_ BitVec 32))) )
))
(declare-datatypes ((array!10614 0))(
  ( (array!10615 (arr!5028 (Array (_ BitVec 32) (_ BitVec 64))) (size!5360 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2900 0))(
  ( (LongMapFixedSize!2901 (defaultEntry!4100 Int) (mask!9859 (_ BitVec 32)) (extraKeys!3837 (_ BitVec 32)) (zeroValue!3941 V!7229) (minValue!3941 V!7229) (_size!1499 (_ BitVec 32)) (_keys!6149 array!10614) (_values!4083 array!10612) (_vacant!1499 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2900)

(declare-fun valid!1168 (LongMapFixedSize!2900) Bool)

(assert (=> start!21688 (= res!106583 (valid!1168 thiss!1504))))

(assert (=> start!21688 e!141554))

(declare-fun e!141556 () Bool)

(assert (=> start!21688 e!141556))

(assert (=> start!21688 true))

(declare-fun b!217580 () Bool)

(declare-fun res!106587 () Bool)

(declare-fun e!141558 () Bool)

(assert (=> b!217580 (=> (not res!106587) (not e!141558))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10614 (_ BitVec 32)) Bool)

(assert (=> b!217580 (= res!106587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6149 thiss!1504) (mask!9859 thiss!1504)))))

(declare-fun b!217581 () Bool)

(declare-fun res!106585 () Bool)

(assert (=> b!217581 (=> (not res!106585) (not e!141558))))

(assert (=> b!217581 (= res!106585 (and (= (size!5359 (_values!4083 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9859 thiss!1504))) (= (size!5360 (_keys!6149 thiss!1504)) (size!5359 (_values!4083 thiss!1504))) (bvsge (mask!9859 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3837 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3837 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!9693 () Bool)

(declare-fun mapRes!9693 () Bool)

(declare-fun tp!20610 () Bool)

(declare-fun e!141555 () Bool)

(assert (=> mapNonEmpty!9693 (= mapRes!9693 (and tp!20610 e!141555))))

(declare-fun mapKey!9693 () (_ BitVec 32))

(declare-fun mapRest!9693 () (Array (_ BitVec 32) ValueCell!2500))

(declare-fun mapValue!9693 () ValueCell!2500)

(assert (=> mapNonEmpty!9693 (= (arr!5027 (_values!4083 thiss!1504)) (store mapRest!9693 mapKey!9693 mapValue!9693))))

(declare-fun b!217582 () Bool)

(declare-fun res!106582 () Bool)

(assert (=> b!217582 (=> (not res!106582) (not e!141558))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4288 0))(
  ( (tuple2!4289 (_1!2154 (_ BitVec 64)) (_2!2154 V!7229)) )
))
(declare-datatypes ((List!3217 0))(
  ( (Nil!3214) (Cons!3213 (h!3860 tuple2!4288) (t!8180 List!3217)) )
))
(declare-datatypes ((ListLongMap!3215 0))(
  ( (ListLongMap!3216 (toList!1623 List!3217)) )
))
(declare-fun contains!1458 (ListLongMap!3215 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1146 (array!10614 array!10612 (_ BitVec 32) (_ BitVec 32) V!7229 V!7229 (_ BitVec 32) Int) ListLongMap!3215)

(assert (=> b!217582 (= res!106582 (not (contains!1458 (getCurrentListMap!1146 (_keys!6149 thiss!1504) (_values!4083 thiss!1504) (mask!9859 thiss!1504) (extraKeys!3837 thiss!1504) (zeroValue!3941 thiss!1504) (minValue!3941 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4100 thiss!1504)) key!932)))))

(declare-fun b!217583 () Bool)

(declare-fun e!141552 () Bool)

(declare-fun e!141553 () Bool)

(assert (=> b!217583 (= e!141552 (and e!141553 mapRes!9693))))

(declare-fun condMapEmpty!9693 () Bool)

(declare-fun mapDefault!9693 () ValueCell!2500)

