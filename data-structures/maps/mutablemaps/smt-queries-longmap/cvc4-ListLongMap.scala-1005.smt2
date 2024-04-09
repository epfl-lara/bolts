; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21646 () Bool)

(assert start!21646)

(declare-fun b!216892 () Bool)

(declare-fun b_free!5783 () Bool)

(declare-fun b_next!5783 () Bool)

(assert (=> b!216892 (= b_free!5783 (not b_next!5783))))

(declare-fun tp!20484 () Bool)

(declare-fun b_and!12691 () Bool)

(assert (=> b!216892 (= tp!20484 b_and!12691)))

(declare-fun b!216887 () Bool)

(declare-fun e!141113 () Bool)

(declare-fun e!141116 () Bool)

(assert (=> b!216887 (= e!141113 e!141116)))

(declare-fun res!106141 () Bool)

(assert (=> b!216887 (=> (not res!106141) (not e!141116))))

(declare-datatypes ((SeekEntryResult!765 0))(
  ( (MissingZero!765 (index!5230 (_ BitVec 32))) (Found!765 (index!5231 (_ BitVec 32))) (Intermediate!765 (undefined!1577 Bool) (index!5232 (_ BitVec 32)) (x!22693 (_ BitVec 32))) (Undefined!765) (MissingVacant!765 (index!5233 (_ BitVec 32))) )
))
(declare-fun lt!111276 () SeekEntryResult!765)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216887 (= res!106141 (or (= lt!111276 (MissingZero!765 index!297)) (= lt!111276 (MissingVacant!765 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7173 0))(
  ( (V!7174 (val!2867 Int)) )
))
(declare-datatypes ((ValueCell!2479 0))(
  ( (ValueCellFull!2479 (v!4881 V!7173)) (EmptyCell!2479) )
))
(declare-datatypes ((array!10528 0))(
  ( (array!10529 (arr!4985 (Array (_ BitVec 32) ValueCell!2479)) (size!5317 (_ BitVec 32))) )
))
(declare-datatypes ((array!10530 0))(
  ( (array!10531 (arr!4986 (Array (_ BitVec 32) (_ BitVec 64))) (size!5318 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2858 0))(
  ( (LongMapFixedSize!2859 (defaultEntry!4079 Int) (mask!9824 (_ BitVec 32)) (extraKeys!3816 (_ BitVec 32)) (zeroValue!3920 V!7173) (minValue!3920 V!7173) (_size!1478 (_ BitVec 32)) (_keys!6128 array!10530) (_values!4062 array!10528) (_vacant!1478 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2858)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10530 (_ BitVec 32)) SeekEntryResult!765)

(assert (=> b!216887 (= lt!111276 (seekEntryOrOpen!0 key!932 (_keys!6128 thiss!1504) (mask!9824 thiss!1504)))))

(declare-fun b!216888 () Bool)

(declare-fun res!106144 () Bool)

(assert (=> b!216888 (=> (not res!106144) (not e!141116))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10530 (_ BitVec 32)) Bool)

(assert (=> b!216888 (= res!106144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6128 thiss!1504) (mask!9824 thiss!1504)))))

(declare-fun b!216889 () Bool)

(declare-fun res!106145 () Bool)

(assert (=> b!216889 (=> (not res!106145) (not e!141113))))

(assert (=> b!216889 (= res!106145 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!216890 () Bool)

(declare-fun e!141114 () Bool)

(declare-fun tp_is_empty!5645 () Bool)

(assert (=> b!216890 (= e!141114 tp_is_empty!5645)))

(declare-fun b!216891 () Bool)

(declare-fun e!141115 () Bool)

(assert (=> b!216891 (= e!141115 tp_is_empty!5645)))

(declare-fun mapNonEmpty!9630 () Bool)

(declare-fun mapRes!9630 () Bool)

(declare-fun tp!20483 () Bool)

(assert (=> mapNonEmpty!9630 (= mapRes!9630 (and tp!20483 e!141115))))

(declare-fun mapValue!9630 () ValueCell!2479)

(declare-fun mapRest!9630 () (Array (_ BitVec 32) ValueCell!2479))

(declare-fun mapKey!9630 () (_ BitVec 32))

(assert (=> mapNonEmpty!9630 (= (arr!4985 (_values!4062 thiss!1504)) (store mapRest!9630 mapKey!9630 mapValue!9630))))

(declare-fun e!141117 () Bool)

(declare-fun e!141112 () Bool)

(declare-fun array_inv!3287 (array!10530) Bool)

(declare-fun array_inv!3288 (array!10528) Bool)

(assert (=> b!216892 (= e!141117 (and tp!20484 tp_is_empty!5645 (array_inv!3287 (_keys!6128 thiss!1504)) (array_inv!3288 (_values!4062 thiss!1504)) e!141112))))

(declare-fun res!106142 () Bool)

(assert (=> start!21646 (=> (not res!106142) (not e!141113))))

(declare-fun valid!1153 (LongMapFixedSize!2858) Bool)

(assert (=> start!21646 (= res!106142 (valid!1153 thiss!1504))))

(assert (=> start!21646 e!141113))

(assert (=> start!21646 e!141117))

(assert (=> start!21646 true))

(declare-fun b!216893 () Bool)

(assert (=> b!216893 (= e!141112 (and e!141114 mapRes!9630))))

(declare-fun condMapEmpty!9630 () Bool)

(declare-fun mapDefault!9630 () ValueCell!2479)

