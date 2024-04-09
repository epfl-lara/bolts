; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19672 () Bool)

(assert start!19672)

(declare-fun b!192647 () Bool)

(declare-fun b_free!4693 () Bool)

(declare-fun b_next!4693 () Bool)

(assert (=> b!192647 (= b_free!4693 (not b_next!4693))))

(declare-fun tp!16936 () Bool)

(declare-fun b_and!11409 () Bool)

(assert (=> b!192647 (= tp!16936 b_and!11409)))

(declare-fun e!126767 () Bool)

(declare-datatypes ((V!5601 0))(
  ( (V!5602 (val!2277 Int)) )
))
(declare-datatypes ((ValueCell!1889 0))(
  ( (ValueCellFull!1889 (v!4223 V!5601)) (EmptyCell!1889) )
))
(declare-datatypes ((array!8172 0))(
  ( (array!8173 (arr!3848 (Array (_ BitVec 32) (_ BitVec 64))) (size!4172 (_ BitVec 32))) )
))
(declare-datatypes ((array!8174 0))(
  ( (array!8175 (arr!3849 (Array (_ BitVec 32) ValueCell!1889)) (size!4173 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2686 0))(
  ( (LongMapFixedSize!2687 (defaultEntry!3931 Int) (mask!9170 (_ BitVec 32)) (extraKeys!3668 (_ BitVec 32)) (zeroValue!3772 V!5601) (minValue!3772 V!5601) (_size!1392 (_ BitVec 32)) (_keys!5917 array!8172) (_values!3914 array!8174) (_vacant!1392 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2686)

(declare-fun tp_is_empty!4465 () Bool)

(declare-fun e!126759 () Bool)

(declare-fun array_inv!2485 (array!8172) Bool)

(declare-fun array_inv!2486 (array!8174) Bool)

(assert (=> b!192647 (= e!126759 (and tp!16936 tp_is_empty!4465 (array_inv!2485 (_keys!5917 thiss!1248)) (array_inv!2486 (_values!3914 thiss!1248)) e!126767))))

(declare-fun b!192648 () Bool)

(declare-fun e!126766 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8172 (_ BitVec 32)) Bool)

(assert (=> b!192648 (= e!126766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5917 thiss!1248) (mask!9170 thiss!1248)))))

(declare-fun b!192649 () Bool)

(declare-fun res!91042 () Bool)

(assert (=> b!192649 (=> res!91042 e!126766)))

(assert (=> b!192649 (= res!91042 (or (not (= (size!4173 (_values!3914 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9170 thiss!1248)))) (not (= (size!4172 (_keys!5917 thiss!1248)) (size!4173 (_values!3914 thiss!1248)))) (bvslt (mask!9170 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3668 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3668 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun e!126765 () Bool)

(declare-fun b!192650 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!692 0))(
  ( (MissingZero!692 (index!4938 (_ BitVec 32))) (Found!692 (index!4939 (_ BitVec 32))) (Intermediate!692 (undefined!1504 Bool) (index!4940 (_ BitVec 32)) (x!20616 (_ BitVec 32))) (Undefined!692) (MissingVacant!692 (index!4941 (_ BitVec 32))) )
))
(declare-fun lt!95843 () SeekEntryResult!692)

(assert (=> b!192650 (= e!126765 (= (select (arr!3848 (_keys!5917 thiss!1248)) (index!4939 lt!95843)) key!828))))

(declare-fun b!192651 () Bool)

(declare-datatypes ((Unit!5826 0))(
  ( (Unit!5827) )
))
(declare-fun e!126762 () Unit!5826)

(declare-fun Unit!5828 () Unit!5826)

(assert (=> b!192651 (= e!126762 Unit!5828)))

(declare-fun lt!95847 () Unit!5826)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!183 (array!8172 array!8174 (_ BitVec 32) (_ BitVec 32) V!5601 V!5601 (_ BitVec 64) Int) Unit!5826)

(assert (=> b!192651 (= lt!95847 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!183 (_keys!5917 thiss!1248) (_values!3914 thiss!1248) (mask!9170 thiss!1248) (extraKeys!3668 thiss!1248) (zeroValue!3772 thiss!1248) (minValue!3772 thiss!1248) key!828 (defaultEntry!3931 thiss!1248)))))

(assert (=> b!192651 false))

(declare-fun b!192652 () Bool)

(declare-fun e!126761 () Bool)

(assert (=> b!192652 (= e!126761 tp_is_empty!4465)))

(declare-fun b!192653 () Bool)

(declare-fun res!91041 () Bool)

(declare-fun e!126764 () Bool)

(assert (=> b!192653 (=> (not res!91041) (not e!126764))))

(assert (=> b!192653 (= res!91041 (not (= key!828 (bvneg key!828))))))

(declare-fun b!192654 () Bool)

(declare-fun e!126760 () Bool)

(assert (=> b!192654 (= e!126760 tp_is_empty!4465)))

(declare-fun mapNonEmpty!7718 () Bool)

(declare-fun mapRes!7718 () Bool)

(declare-fun tp!16937 () Bool)

(assert (=> mapNonEmpty!7718 (= mapRes!7718 (and tp!16937 e!126761))))

(declare-fun mapRest!7718 () (Array (_ BitVec 32) ValueCell!1889))

(declare-fun mapKey!7718 () (_ BitVec 32))

(declare-fun mapValue!7718 () ValueCell!1889)

(assert (=> mapNonEmpty!7718 (= (arr!3849 (_values!3914 thiss!1248)) (store mapRest!7718 mapKey!7718 mapValue!7718))))

(declare-fun b!192655 () Bool)

(assert (=> b!192655 (= e!126767 (and e!126760 mapRes!7718))))

(declare-fun condMapEmpty!7718 () Bool)

(declare-fun mapDefault!7718 () ValueCell!1889)

