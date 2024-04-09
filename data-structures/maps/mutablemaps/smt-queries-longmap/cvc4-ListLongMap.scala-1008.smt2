; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21664 () Bool)

(assert start!21664)

(declare-fun b!217189 () Bool)

(declare-fun b_free!5801 () Bool)

(declare-fun b_next!5801 () Bool)

(assert (=> b!217189 (= b_free!5801 (not b_next!5801))))

(declare-fun tp!20538 () Bool)

(declare-fun b_and!12709 () Bool)

(assert (=> b!217189 (= tp!20538 b_and!12709)))

(declare-fun b!217184 () Bool)

(declare-fun e!141305 () Bool)

(declare-fun tp_is_empty!5663 () Bool)

(assert (=> b!217184 (= e!141305 tp_is_empty!5663)))

(declare-fun b!217185 () Bool)

(declare-fun res!106334 () Bool)

(declare-fun e!141300 () Bool)

(assert (=> b!217185 (=> (not res!106334) (not e!141300))))

(declare-datatypes ((V!7197 0))(
  ( (V!7198 (val!2876 Int)) )
))
(declare-datatypes ((ValueCell!2488 0))(
  ( (ValueCellFull!2488 (v!4890 V!7197)) (EmptyCell!2488) )
))
(declare-datatypes ((array!10564 0))(
  ( (array!10565 (arr!5003 (Array (_ BitVec 32) ValueCell!2488)) (size!5335 (_ BitVec 32))) )
))
(declare-datatypes ((array!10566 0))(
  ( (array!10567 (arr!5004 (Array (_ BitVec 32) (_ BitVec 64))) (size!5336 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2876 0))(
  ( (LongMapFixedSize!2877 (defaultEntry!4088 Int) (mask!9839 (_ BitVec 32)) (extraKeys!3825 (_ BitVec 32)) (zeroValue!3929 V!7197) (minValue!3929 V!7197) (_size!1487 (_ BitVec 32)) (_keys!6137 array!10566) (_values!4071 array!10564) (_vacant!1487 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2876)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4276 0))(
  ( (tuple2!4277 (_1!2148 (_ BitVec 64)) (_2!2148 V!7197)) )
))
(declare-datatypes ((List!3203 0))(
  ( (Nil!3200) (Cons!3199 (h!3846 tuple2!4276) (t!8166 List!3203)) )
))
(declare-datatypes ((ListLongMap!3203 0))(
  ( (ListLongMap!3204 (toList!1617 List!3203)) )
))
(declare-fun contains!1452 (ListLongMap!3203 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1140 (array!10566 array!10564 (_ BitVec 32) (_ BitVec 32) V!7197 V!7197 (_ BitVec 32) Int) ListLongMap!3203)

(assert (=> b!217185 (= res!106334 (contains!1452 (getCurrentListMap!1140 (_keys!6137 thiss!1504) (_values!4071 thiss!1504) (mask!9839 thiss!1504) (extraKeys!3825 thiss!1504) (zeroValue!3929 thiss!1504) (minValue!3929 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4088 thiss!1504)) key!932))))

(declare-fun mapIsEmpty!9657 () Bool)

(declare-fun mapRes!9657 () Bool)

(assert (=> mapIsEmpty!9657 mapRes!9657))

(declare-fun b!217186 () Bool)

(declare-fun e!141301 () Bool)

(assert (=> b!217186 (= e!141301 e!141300)))

(declare-fun res!106329 () Bool)

(assert (=> b!217186 (=> (not res!106329) (not e!141300))))

(declare-datatypes ((SeekEntryResult!774 0))(
  ( (MissingZero!774 (index!5266 (_ BitVec 32))) (Found!774 (index!5267 (_ BitVec 32))) (Intermediate!774 (undefined!1586 Bool) (index!5268 (_ BitVec 32)) (x!22726 (_ BitVec 32))) (Undefined!774) (MissingVacant!774 (index!5269 (_ BitVec 32))) )
))
(declare-fun lt!111331 () SeekEntryResult!774)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217186 (= res!106329 (or (= lt!111331 (MissingZero!774 index!297)) (= lt!111331 (MissingVacant!774 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10566 (_ BitVec 32)) SeekEntryResult!774)

(assert (=> b!217186 (= lt!111331 (seekEntryOrOpen!0 key!932 (_keys!6137 thiss!1504) (mask!9839 thiss!1504)))))

(declare-fun b!217187 () Bool)

(declare-fun res!106332 () Bool)

(assert (=> b!217187 (=> (not res!106332) (not e!141300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217187 (= res!106332 (validMask!0 (mask!9839 thiss!1504)))))

(declare-fun b!217188 () Bool)

(declare-fun e!141304 () Bool)

(assert (=> b!217188 (= e!141304 tp_is_empty!5663)))

(declare-fun e!141303 () Bool)

(declare-fun e!141302 () Bool)

(declare-fun array_inv!3305 (array!10566) Bool)

(declare-fun array_inv!3306 (array!10564) Bool)

(assert (=> b!217189 (= e!141302 (and tp!20538 tp_is_empty!5663 (array_inv!3305 (_keys!6137 thiss!1504)) (array_inv!3306 (_values!4071 thiss!1504)) e!141303))))

(declare-fun b!217190 () Bool)

(declare-fun res!106333 () Bool)

(assert (=> b!217190 (=> (not res!106333) (not e!141300))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10566 (_ BitVec 32)) Bool)

(assert (=> b!217190 (= res!106333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6137 thiss!1504) (mask!9839 thiss!1504)))))

(declare-fun res!106330 () Bool)

(assert (=> start!21664 (=> (not res!106330) (not e!141301))))

(declare-fun valid!1161 (LongMapFixedSize!2876) Bool)

(assert (=> start!21664 (= res!106330 (valid!1161 thiss!1504))))

(assert (=> start!21664 e!141301))

(assert (=> start!21664 e!141302))

(assert (=> start!21664 true))

(declare-fun b!217191 () Bool)

(assert (=> b!217191 (= e!141303 (and e!141305 mapRes!9657))))

(declare-fun condMapEmpty!9657 () Bool)

(declare-fun mapDefault!9657 () ValueCell!2488)

