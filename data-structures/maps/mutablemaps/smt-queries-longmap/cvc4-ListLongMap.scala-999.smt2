; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21582 () Bool)

(assert start!21582)

(declare-fun b!216171 () Bool)

(declare-fun b_free!5747 () Bool)

(declare-fun b_next!5747 () Bool)

(assert (=> b!216171 (= b_free!5747 (not b_next!5747))))

(declare-fun tp!20369 () Bool)

(declare-fun b_and!12655 () Bool)

(assert (=> b!216171 (= tp!20369 b_and!12655)))

(declare-fun b!216170 () Bool)

(declare-fun res!105720 () Bool)

(declare-fun e!140658 () Bool)

(assert (=> b!216170 (=> (not res!105720) (not e!140658))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!216170 (= res!105720 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!9570 () Bool)

(declare-fun mapRes!9570 () Bool)

(assert (=> mapIsEmpty!9570 mapRes!9570))

(declare-fun e!140661 () Bool)

(declare-fun tp_is_empty!5609 () Bool)

(declare-datatypes ((V!7125 0))(
  ( (V!7126 (val!2849 Int)) )
))
(declare-datatypes ((ValueCell!2461 0))(
  ( (ValueCellFull!2461 (v!4863 V!7125)) (EmptyCell!2461) )
))
(declare-datatypes ((array!10452 0))(
  ( (array!10453 (arr!4949 (Array (_ BitVec 32) ValueCell!2461)) (size!5281 (_ BitVec 32))) )
))
(declare-datatypes ((array!10454 0))(
  ( (array!10455 (arr!4950 (Array (_ BitVec 32) (_ BitVec 64))) (size!5282 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2822 0))(
  ( (LongMapFixedSize!2823 (defaultEntry!4061 Int) (mask!9788 (_ BitVec 32)) (extraKeys!3798 (_ BitVec 32)) (zeroValue!3902 V!7125) (minValue!3902 V!7125) (_size!1460 (_ BitVec 32)) (_keys!6106 array!10454) (_values!4044 array!10452) (_vacant!1460 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2822)

(declare-fun e!140660 () Bool)

(declare-fun array_inv!3265 (array!10454) Bool)

(declare-fun array_inv!3266 (array!10452) Bool)

(assert (=> b!216171 (= e!140661 (and tp!20369 tp_is_empty!5609 (array_inv!3265 (_keys!6106 thiss!1504)) (array_inv!3266 (_values!4044 thiss!1504)) e!140660))))

(declare-fun b!216172 () Bool)

(declare-fun res!105718 () Bool)

(declare-fun e!140656 () Bool)

(assert (=> b!216172 (=> (not res!105718) (not e!140656))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!216172 (= res!105718 (validMask!0 (mask!9788 thiss!1504)))))

(declare-fun b!216173 () Bool)

(declare-fun e!140659 () Bool)

(assert (=> b!216173 (= e!140659 tp_is_empty!5609)))

(declare-fun b!216174 () Bool)

(declare-fun res!105716 () Bool)

(assert (=> b!216174 (=> (not res!105716) (not e!140656))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10454 (_ BitVec 32)) Bool)

(assert (=> b!216174 (= res!105716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6106 thiss!1504) (mask!9788 thiss!1504)))))

(declare-fun b!216175 () Bool)

(declare-datatypes ((List!3163 0))(
  ( (Nil!3160) (Cons!3159 (h!3806 (_ BitVec 64)) (t!8126 List!3163)) )
))
(declare-fun arrayNoDuplicates!0 (array!10454 (_ BitVec 32) List!3163) Bool)

(assert (=> b!216175 (= e!140656 (not (arrayNoDuplicates!0 (_keys!6106 thiss!1504) #b00000000000000000000000000000000 Nil!3160)))))

(declare-fun mapNonEmpty!9570 () Bool)

(declare-fun tp!20370 () Bool)

(assert (=> mapNonEmpty!9570 (= mapRes!9570 (and tp!20370 e!140659))))

(declare-fun mapKey!9570 () (_ BitVec 32))

(declare-fun mapValue!9570 () ValueCell!2461)

(declare-fun mapRest!9570 () (Array (_ BitVec 32) ValueCell!2461))

(assert (=> mapNonEmpty!9570 (= (arr!4949 (_values!4044 thiss!1504)) (store mapRest!9570 mapKey!9570 mapValue!9570))))

(declare-fun b!216176 () Bool)

(declare-fun e!140655 () Bool)

(assert (=> b!216176 (= e!140660 (and e!140655 mapRes!9570))))

(declare-fun condMapEmpty!9570 () Bool)

(declare-fun mapDefault!9570 () ValueCell!2461)

