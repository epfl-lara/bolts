; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19304 () Bool)

(assert start!19304)

(declare-fun b!189808 () Bool)

(declare-fun b_free!4661 () Bool)

(declare-fun b_next!4661 () Bool)

(assert (=> b!189808 (= b_free!4661 (not b_next!4661))))

(declare-fun tp!16819 () Bool)

(declare-fun b_and!11321 () Bool)

(assert (=> b!189808 (= tp!16819 b_and!11321)))

(declare-fun tp_is_empty!4433 () Bool)

(declare-fun e!124937 () Bool)

(declare-datatypes ((V!5557 0))(
  ( (V!5558 (val!2261 Int)) )
))
(declare-datatypes ((ValueCell!1873 0))(
  ( (ValueCellFull!1873 (v!4181 V!5557)) (EmptyCell!1873) )
))
(declare-datatypes ((array!8096 0))(
  ( (array!8097 (arr!3816 (Array (_ BitVec 32) (_ BitVec 64))) (size!4136 (_ BitVec 32))) )
))
(declare-datatypes ((array!8098 0))(
  ( (array!8099 (arr!3817 (Array (_ BitVec 32) ValueCell!1873)) (size!4137 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2654 0))(
  ( (LongMapFixedSize!2655 (defaultEntry!3875 Int) (mask!9068 (_ BitVec 32)) (extraKeys!3612 (_ BitVec 32)) (zeroValue!3716 V!5557) (minValue!3716 V!5557) (_size!1376 (_ BitVec 32)) (_keys!5843 array!8096) (_values!3858 array!8098) (_vacant!1376 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2654)

(declare-fun e!124939 () Bool)

(declare-fun array_inv!2463 (array!8096) Bool)

(declare-fun array_inv!2464 (array!8098) Bool)

(assert (=> b!189808 (= e!124939 (and tp!16819 tp_is_empty!4433 (array_inv!2463 (_keys!5843 thiss!1248)) (array_inv!2464 (_values!3858 thiss!1248)) e!124937))))

(declare-fun mapNonEmpty!7648 () Bool)

(declare-fun mapRes!7648 () Bool)

(declare-fun tp!16818 () Bool)

(declare-fun e!124941 () Bool)

(assert (=> mapNonEmpty!7648 (= mapRes!7648 (and tp!16818 e!124941))))

(declare-fun mapValue!7648 () ValueCell!1873)

(declare-fun mapKey!7648 () (_ BitVec 32))

(declare-fun mapRest!7648 () (Array (_ BitVec 32) ValueCell!1873))

(assert (=> mapNonEmpty!7648 (= (arr!3817 (_values!3858 thiss!1248)) (store mapRest!7648 mapKey!7648 mapValue!7648))))

(declare-fun b!189809 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun e!124936 () Bool)

(declare-datatypes ((SeekEntryResult!680 0))(
  ( (MissingZero!680 (index!4890 (_ BitVec 32))) (Found!680 (index!4891 (_ BitVec 32))) (Intermediate!680 (undefined!1492 Bool) (index!4892 (_ BitVec 32)) (x!20464 (_ BitVec 32))) (Undefined!680) (MissingVacant!680 (index!4893 (_ BitVec 32))) )
))
(declare-fun lt!94034 () SeekEntryResult!680)

(assert (=> b!189809 (= e!124936 (= (select (arr!3816 (_keys!5843 thiss!1248)) (index!4891 lt!94034)) key!828))))

(declare-fun mapIsEmpty!7648 () Bool)

(assert (=> mapIsEmpty!7648 mapRes!7648))

(declare-fun b!189810 () Bool)

(assert (=> b!189810 (= e!124941 tp_is_empty!4433)))

(declare-fun res!89761 () Bool)

(declare-fun e!124933 () Bool)

(assert (=> start!19304 (=> (not res!89761) (not e!124933))))

(declare-fun valid!1082 (LongMapFixedSize!2654) Bool)

(assert (=> start!19304 (= res!89761 (valid!1082 thiss!1248))))

(assert (=> start!19304 e!124933))

(assert (=> start!19304 e!124939))

(assert (=> start!19304 true))

(assert (=> start!19304 tp_is_empty!4433))

(declare-fun b!189811 () Bool)

(declare-fun e!124940 () Bool)

(assert (=> b!189811 (= e!124937 (and e!124940 mapRes!7648))))

(declare-fun condMapEmpty!7648 () Bool)

(declare-fun mapDefault!7648 () ValueCell!1873)

