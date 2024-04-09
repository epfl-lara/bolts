; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17706 () Bool)

(assert start!17706)

(declare-fun b!176850 () Bool)

(declare-fun b_free!4367 () Bool)

(declare-fun b_next!4367 () Bool)

(assert (=> b!176850 (= b_free!4367 (not b_next!4367))))

(declare-fun tp!15798 () Bool)

(declare-fun b_and!10883 () Bool)

(assert (=> b!176850 (= tp!15798 b_and!10883)))

(declare-fun b!176845 () Bool)

(declare-fun res!83833 () Bool)

(declare-fun e!116653 () Bool)

(assert (=> b!176845 (=> (not res!83833) (not e!116653))))

(declare-datatypes ((V!5165 0))(
  ( (V!5166 (val!2114 Int)) )
))
(declare-datatypes ((ValueCell!1726 0))(
  ( (ValueCellFull!1726 (v!3989 V!5165)) (EmptyCell!1726) )
))
(declare-datatypes ((array!7426 0))(
  ( (array!7427 (arr!3522 (Array (_ BitVec 32) (_ BitVec 64))) (size!3826 (_ BitVec 32))) )
))
(declare-datatypes ((array!7428 0))(
  ( (array!7429 (arr!3523 (Array (_ BitVec 32) ValueCell!1726)) (size!3827 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2360 0))(
  ( (LongMapFixedSize!2361 (defaultEntry!3642 Int) (mask!8569 (_ BitVec 32)) (extraKeys!3379 (_ BitVec 32)) (zeroValue!3483 V!5165) (minValue!3483 V!5165) (_size!1229 (_ BitVec 32)) (_keys!5507 array!7426) (_values!3625 array!7428) (_vacant!1229 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2360)

(assert (=> b!176845 (= res!83833 (and (= (size!3827 (_values!3625 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8569 thiss!1248))) (= (size!3826 (_keys!5507 thiss!1248)) (size!3827 (_values!3625 thiss!1248))) (bvsge (mask!8569 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3379 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3379 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun res!83834 () Bool)

(assert (=> start!17706 (=> (not res!83834) (not e!116653))))

(declare-fun valid!983 (LongMapFixedSize!2360) Bool)

(assert (=> start!17706 (= res!83834 (valid!983 thiss!1248))))

(assert (=> start!17706 e!116653))

(declare-fun e!116651 () Bool)

(assert (=> start!17706 e!116651))

(assert (=> start!17706 true))

(declare-fun b!176846 () Bool)

(declare-fun res!83832 () Bool)

(assert (=> b!176846 (=> (not res!83832) (not e!116653))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!176846 (= res!83832 (validMask!0 (mask!8569 thiss!1248)))))

(declare-fun b!176847 () Bool)

(declare-fun res!83831 () Bool)

(assert (=> b!176847 (=> (not res!83831) (not e!116653))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3288 0))(
  ( (tuple2!3289 (_1!1654 (_ BitVec 64)) (_2!1654 V!5165)) )
))
(declare-datatypes ((List!2264 0))(
  ( (Nil!2261) (Cons!2260 (h!2881 tuple2!3288) (t!7100 List!2264)) )
))
(declare-datatypes ((ListLongMap!2229 0))(
  ( (ListLongMap!2230 (toList!1130 List!2264)) )
))
(declare-fun contains!1189 (ListLongMap!2229 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!777 (array!7426 array!7428 (_ BitVec 32) (_ BitVec 32) V!5165 V!5165 (_ BitVec 32) Int) ListLongMap!2229)

(assert (=> b!176847 (= res!83831 (contains!1189 (getCurrentListMap!777 (_keys!5507 thiss!1248) (_values!3625 thiss!1248) (mask!8569 thiss!1248) (extraKeys!3379 thiss!1248) (zeroValue!3483 thiss!1248) (minValue!3483 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3642 thiss!1248)) key!828))))

(declare-fun mapNonEmpty!7068 () Bool)

(declare-fun mapRes!7068 () Bool)

(declare-fun tp!15797 () Bool)

(declare-fun e!116650 () Bool)

(assert (=> mapNonEmpty!7068 (= mapRes!7068 (and tp!15797 e!116650))))

(declare-fun mapKey!7068 () (_ BitVec 32))

(declare-fun mapRest!7068 () (Array (_ BitVec 32) ValueCell!1726))

(declare-fun mapValue!7068 () ValueCell!1726)

(assert (=> mapNonEmpty!7068 (= (arr!3523 (_values!3625 thiss!1248)) (store mapRest!7068 mapKey!7068 mapValue!7068))))

(declare-fun b!176848 () Bool)

(assert (=> b!176848 (= e!116653 false)))

(declare-fun lt!87502 () Bool)

(declare-datatypes ((List!2265 0))(
  ( (Nil!2262) (Cons!2261 (h!2882 (_ BitVec 64)) (t!7101 List!2265)) )
))
(declare-fun arrayNoDuplicates!0 (array!7426 (_ BitVec 32) List!2265) Bool)

(assert (=> b!176848 (= lt!87502 (arrayNoDuplicates!0 (_keys!5507 thiss!1248) #b00000000000000000000000000000000 Nil!2262))))

(declare-fun mapIsEmpty!7068 () Bool)

(assert (=> mapIsEmpty!7068 mapRes!7068))

(declare-fun b!176849 () Bool)

(declare-fun res!83835 () Bool)

(assert (=> b!176849 (=> (not res!83835) (not e!116653))))

(declare-datatypes ((SeekEntryResult!570 0))(
  ( (MissingZero!570 (index!4448 (_ BitVec 32))) (Found!570 (index!4449 (_ BitVec 32))) (Intermediate!570 (undefined!1382 Bool) (index!4450 (_ BitVec 32)) (x!19416 (_ BitVec 32))) (Undefined!570) (MissingVacant!570 (index!4451 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7426 (_ BitVec 32)) SeekEntryResult!570)

(assert (=> b!176849 (= res!83835 (is-Undefined!570 (seekEntryOrOpen!0 key!828 (_keys!5507 thiss!1248) (mask!8569 thiss!1248))))))

(declare-fun tp_is_empty!4139 () Bool)

(declare-fun e!116652 () Bool)

(declare-fun array_inv!2247 (array!7426) Bool)

(declare-fun array_inv!2248 (array!7428) Bool)

(assert (=> b!176850 (= e!116651 (and tp!15798 tp_is_empty!4139 (array_inv!2247 (_keys!5507 thiss!1248)) (array_inv!2248 (_values!3625 thiss!1248)) e!116652))))

(declare-fun b!176851 () Bool)

(declare-fun res!83837 () Bool)

(assert (=> b!176851 (=> (not res!83837) (not e!116653))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7426 (_ BitVec 32)) Bool)

(assert (=> b!176851 (= res!83837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5507 thiss!1248) (mask!8569 thiss!1248)))))

(declare-fun b!176852 () Bool)

(assert (=> b!176852 (= e!116650 tp_is_empty!4139)))

(declare-fun b!176853 () Bool)

(declare-fun e!116649 () Bool)

(assert (=> b!176853 (= e!116652 (and e!116649 mapRes!7068))))

(declare-fun condMapEmpty!7068 () Bool)

(declare-fun mapDefault!7068 () ValueCell!1726)

