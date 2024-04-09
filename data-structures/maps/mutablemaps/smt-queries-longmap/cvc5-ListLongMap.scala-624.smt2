; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16104 () Bool)

(assert start!16104)

(declare-fun b!159880 () Bool)

(declare-fun b_free!3553 () Bool)

(declare-fun b_next!3553 () Bool)

(assert (=> b!159880 (= b_free!3553 (not b_next!3553))))

(declare-fun tp!13228 () Bool)

(declare-fun b_and!9985 () Bool)

(assert (=> b!159880 (= tp!13228 b_and!9985)))

(declare-fun e!104609 () Bool)

(declare-fun tp_is_empty!3355 () Bool)

(declare-datatypes ((V!4121 0))(
  ( (V!4122 (val!1722 Int)) )
))
(declare-datatypes ((ValueCell!1334 0))(
  ( (ValueCellFull!1334 (v!3583 V!4121)) (EmptyCell!1334) )
))
(declare-datatypes ((array!5788 0))(
  ( (array!5789 (arr!2738 (Array (_ BitVec 32) (_ BitVec 64))) (size!3022 (_ BitVec 32))) )
))
(declare-datatypes ((array!5790 0))(
  ( (array!5791 (arr!2739 (Array (_ BitVec 32) ValueCell!1334)) (size!3023 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1576 0))(
  ( (LongMapFixedSize!1577 (defaultEntry!3230 Int) (mask!7790 (_ BitVec 32)) (extraKeys!2971 (_ BitVec 32)) (zeroValue!3073 V!4121) (minValue!3073 V!4121) (_size!837 (_ BitVec 32)) (_keys!5031 array!5788) (_values!3213 array!5790) (_vacant!837 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1576)

(declare-fun e!104604 () Bool)

(declare-fun array_inv!1737 (array!5788) Bool)

(declare-fun array_inv!1738 (array!5790) Bool)

(assert (=> b!159880 (= e!104604 (and tp!13228 tp_is_empty!3355 (array_inv!1737 (_keys!5031 thiss!1248)) (array_inv!1738 (_values!3213 thiss!1248)) e!104609))))

(declare-fun b!159881 () Bool)

(declare-fun res!75635 () Bool)

(declare-fun e!104607 () Bool)

(assert (=> b!159881 (=> (not res!75635) (not e!104607))))

(assert (=> b!159881 (= res!75635 (and (= (size!3023 (_values!3213 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7790 thiss!1248))) (= (size!3022 (_keys!5031 thiss!1248)) (size!3023 (_values!3213 thiss!1248))) (bvsge (mask!7790 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2971 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2971 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!159882 () Bool)

(declare-fun e!104605 () Bool)

(assert (=> b!159882 (= e!104605 tp_is_empty!3355)))

(declare-fun b!159883 () Bool)

(declare-fun mapRes!5720 () Bool)

(assert (=> b!159883 (= e!104609 (and e!104605 mapRes!5720))))

(declare-fun condMapEmpty!5720 () Bool)

(declare-fun mapDefault!5720 () ValueCell!1334)

