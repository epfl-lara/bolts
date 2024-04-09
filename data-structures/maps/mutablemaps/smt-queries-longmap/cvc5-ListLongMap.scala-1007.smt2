; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21654 () Bool)

(assert start!21654)

(declare-fun b!217021 () Bool)

(declare-fun b_free!5791 () Bool)

(declare-fun b_next!5791 () Bool)

(assert (=> b!217021 (= b_free!5791 (not b_next!5791))))

(declare-fun tp!20507 () Bool)

(declare-fun b_and!12699 () Bool)

(assert (=> b!217021 (= tp!20507 b_and!12699)))

(declare-fun mapNonEmpty!9642 () Bool)

(declare-fun mapRes!9642 () Bool)

(declare-fun tp!20508 () Bool)

(declare-fun e!141200 () Bool)

(assert (=> mapNonEmpty!9642 (= mapRes!9642 (and tp!20508 e!141200))))

(declare-datatypes ((V!7185 0))(
  ( (V!7186 (val!2871 Int)) )
))
(declare-datatypes ((ValueCell!2483 0))(
  ( (ValueCellFull!2483 (v!4885 V!7185)) (EmptyCell!2483) )
))
(declare-fun mapRest!9642 () (Array (_ BitVec 32) ValueCell!2483))

(declare-datatypes ((array!10544 0))(
  ( (array!10545 (arr!4993 (Array (_ BitVec 32) ValueCell!2483)) (size!5325 (_ BitVec 32))) )
))
(declare-datatypes ((array!10546 0))(
  ( (array!10547 (arr!4994 (Array (_ BitVec 32) (_ BitVec 64))) (size!5326 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2866 0))(
  ( (LongMapFixedSize!2867 (defaultEntry!4083 Int) (mask!9832 (_ BitVec 32)) (extraKeys!3820 (_ BitVec 32)) (zeroValue!3924 V!7185) (minValue!3924 V!7185) (_size!1482 (_ BitVec 32)) (_keys!6132 array!10546) (_values!4066 array!10544) (_vacant!1482 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2866)

(declare-fun mapValue!9642 () ValueCell!2483)

(declare-fun mapKey!9642 () (_ BitVec 32))

(assert (=> mapNonEmpty!9642 (= (arr!4993 (_values!4066 thiss!1504)) (store mapRest!9642 mapKey!9642 mapValue!9642))))

(declare-fun b!217020 () Bool)

(declare-fun e!141201 () Bool)

(declare-fun e!141196 () Bool)

(assert (=> b!217020 (= e!141201 e!141196)))

(declare-fun res!106226 () Bool)

(assert (=> b!217020 (=> (not res!106226) (not e!141196))))

(declare-datatypes ((SeekEntryResult!769 0))(
  ( (MissingZero!769 (index!5246 (_ BitVec 32))) (Found!769 (index!5247 (_ BitVec 32))) (Intermediate!769 (undefined!1581 Bool) (index!5248 (_ BitVec 32)) (x!22713 (_ BitVec 32))) (Undefined!769) (MissingVacant!769 (index!5249 (_ BitVec 32))) )
))
(declare-fun lt!111301 () SeekEntryResult!769)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217020 (= res!106226 (or (= lt!111301 (MissingZero!769 index!297)) (= lt!111301 (MissingVacant!769 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10546 (_ BitVec 32)) SeekEntryResult!769)

(assert (=> b!217020 (= lt!111301 (seekEntryOrOpen!0 key!932 (_keys!6132 thiss!1504) (mask!9832 thiss!1504)))))

(declare-fun e!141198 () Bool)

(declare-fun tp_is_empty!5653 () Bool)

(declare-fun e!141199 () Bool)

(declare-fun array_inv!3295 (array!10546) Bool)

(declare-fun array_inv!3296 (array!10544) Bool)

(assert (=> b!217021 (= e!141199 (and tp!20507 tp_is_empty!5653 (array_inv!3295 (_keys!6132 thiss!1504)) (array_inv!3296 (_values!4066 thiss!1504)) e!141198))))

(declare-fun b!217022 () Bool)

(assert (=> b!217022 (= e!141196 false)))

(declare-fun lt!111300 () Bool)

(declare-datatypes ((List!3195 0))(
  ( (Nil!3192) (Cons!3191 (h!3838 (_ BitVec 64)) (t!8158 List!3195)) )
))
(declare-fun arrayNoDuplicates!0 (array!10546 (_ BitVec 32) List!3195) Bool)

(assert (=> b!217022 (= lt!111300 (arrayNoDuplicates!0 (_keys!6132 thiss!1504) #b00000000000000000000000000000000 Nil!3192))))

(declare-fun b!217023 () Bool)

(assert (=> b!217023 (= e!141200 tp_is_empty!5653)))

(declare-fun b!217024 () Bool)

(declare-fun e!141197 () Bool)

(assert (=> b!217024 (= e!141197 tp_is_empty!5653)))

(declare-fun mapIsEmpty!9642 () Bool)

(assert (=> mapIsEmpty!9642 mapRes!9642))

(declare-fun b!217025 () Bool)

(declare-fun res!106229 () Bool)

(assert (=> b!217025 (=> (not res!106229) (not e!141196))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10546 (_ BitVec 32)) Bool)

(assert (=> b!217025 (= res!106229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6132 thiss!1504) (mask!9832 thiss!1504)))))

(declare-fun b!217019 () Bool)

(declare-fun res!106225 () Bool)

(assert (=> b!217019 (=> (not res!106225) (not e!141196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217019 (= res!106225 (validMask!0 (mask!9832 thiss!1504)))))

(declare-fun res!106224 () Bool)

(assert (=> start!21654 (=> (not res!106224) (not e!141201))))

(declare-fun valid!1157 (LongMapFixedSize!2866) Bool)

(assert (=> start!21654 (= res!106224 (valid!1157 thiss!1504))))

(assert (=> start!21654 e!141201))

(assert (=> start!21654 e!141199))

(assert (=> start!21654 true))

(declare-fun b!217026 () Bool)

(declare-fun res!106230 () Bool)

(assert (=> b!217026 (=> (not res!106230) (not e!141196))))

(declare-datatypes ((tuple2!4268 0))(
  ( (tuple2!4269 (_1!2144 (_ BitVec 64)) (_2!2144 V!7185)) )
))
(declare-datatypes ((List!3196 0))(
  ( (Nil!3193) (Cons!3192 (h!3839 tuple2!4268) (t!8159 List!3196)) )
))
(declare-datatypes ((ListLongMap!3195 0))(
  ( (ListLongMap!3196 (toList!1613 List!3196)) )
))
(declare-fun contains!1448 (ListLongMap!3195 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1136 (array!10546 array!10544 (_ BitVec 32) (_ BitVec 32) V!7185 V!7185 (_ BitVec 32) Int) ListLongMap!3195)

(assert (=> b!217026 (= res!106230 (contains!1448 (getCurrentListMap!1136 (_keys!6132 thiss!1504) (_values!4066 thiss!1504) (mask!9832 thiss!1504) (extraKeys!3820 thiss!1504) (zeroValue!3924 thiss!1504) (minValue!3924 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4083 thiss!1504)) key!932))))

(declare-fun b!217027 () Bool)

(assert (=> b!217027 (= e!141198 (and e!141197 mapRes!9642))))

(declare-fun condMapEmpty!9642 () Bool)

(declare-fun mapDefault!9642 () ValueCell!2483)

