; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21730 () Bool)

(assert start!21730)

(declare-fun b!218282 () Bool)

(declare-fun b_free!5867 () Bool)

(declare-fun b_next!5867 () Bool)

(assert (=> b!218282 (= b_free!5867 (not b_next!5867))))

(declare-fun tp!20736 () Bool)

(declare-fun b_and!12775 () Bool)

(assert (=> b!218282 (= tp!20736 b_and!12775)))

(declare-fun mapNonEmpty!9756 () Bool)

(declare-fun mapRes!9756 () Bool)

(declare-fun tp!20735 () Bool)

(declare-fun e!141995 () Bool)

(assert (=> mapNonEmpty!9756 (= mapRes!9756 (and tp!20735 e!141995))))

(declare-fun mapKey!9756 () (_ BitVec 32))

(declare-datatypes ((V!7285 0))(
  ( (V!7286 (val!2909 Int)) )
))
(declare-datatypes ((ValueCell!2521 0))(
  ( (ValueCellFull!2521 (v!4923 V!7285)) (EmptyCell!2521) )
))
(declare-fun mapRest!9756 () (Array (_ BitVec 32) ValueCell!2521))

(declare-datatypes ((array!10696 0))(
  ( (array!10697 (arr!5069 (Array (_ BitVec 32) ValueCell!2521)) (size!5401 (_ BitVec 32))) )
))
(declare-datatypes ((array!10698 0))(
  ( (array!10699 (arr!5070 (Array (_ BitVec 32) (_ BitVec 64))) (size!5402 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2942 0))(
  ( (LongMapFixedSize!2943 (defaultEntry!4121 Int) (mask!9894 (_ BitVec 32)) (extraKeys!3858 (_ BitVec 32)) (zeroValue!3962 V!7285) (minValue!3962 V!7285) (_size!1520 (_ BitVec 32)) (_keys!6170 array!10698) (_values!4104 array!10696) (_vacant!1520 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2942)

(declare-fun mapValue!9756 () ValueCell!2521)

(assert (=> mapNonEmpty!9756 (= (arr!5069 (_values!4104 thiss!1504)) (store mapRest!9756 mapKey!9756 mapValue!9756))))

(declare-fun b!218273 () Bool)

(declare-fun tp_is_empty!5729 () Bool)

(assert (=> b!218273 (= e!141995 tp_is_empty!5729)))

(declare-fun b!218274 () Bool)

(declare-fun e!141993 () Bool)

(assert (=> b!218274 (= e!141993 false)))

(declare-fun lt!111528 () Bool)

(declare-datatypes ((List!3249 0))(
  ( (Nil!3246) (Cons!3245 (h!3892 (_ BitVec 64)) (t!8212 List!3249)) )
))
(declare-fun arrayNoDuplicates!0 (array!10698 (_ BitVec 32) List!3249) Bool)

(assert (=> b!218274 (= lt!111528 (arrayNoDuplicates!0 (_keys!6170 thiss!1504) #b00000000000000000000000000000000 Nil!3246))))

(declare-fun res!107026 () Bool)

(declare-fun e!141994 () Bool)

(assert (=> start!21730 (=> (not res!107026) (not e!141994))))

(declare-fun valid!1185 (LongMapFixedSize!2942) Bool)

(assert (=> start!21730 (= res!107026 (valid!1185 thiss!1504))))

(assert (=> start!21730 e!141994))

(declare-fun e!141998 () Bool)

(assert (=> start!21730 e!141998))

(assert (=> start!21730 true))

(declare-fun b!218275 () Bool)

(declare-fun res!107027 () Bool)

(assert (=> b!218275 (=> (not res!107027) (not e!141993))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4320 0))(
  ( (tuple2!4321 (_1!2170 (_ BitVec 64)) (_2!2170 V!7285)) )
))
(declare-datatypes ((List!3250 0))(
  ( (Nil!3247) (Cons!3246 (h!3893 tuple2!4320) (t!8213 List!3250)) )
))
(declare-datatypes ((ListLongMap!3247 0))(
  ( (ListLongMap!3248 (toList!1639 List!3250)) )
))
(declare-fun contains!1474 (ListLongMap!3247 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1162 (array!10698 array!10696 (_ BitVec 32) (_ BitVec 32) V!7285 V!7285 (_ BitVec 32) Int) ListLongMap!3247)

(assert (=> b!218275 (= res!107027 (not (contains!1474 (getCurrentListMap!1162 (_keys!6170 thiss!1504) (_values!4104 thiss!1504) (mask!9894 thiss!1504) (extraKeys!3858 thiss!1504) (zeroValue!3962 thiss!1504) (minValue!3962 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4121 thiss!1504)) key!932)))))

(declare-fun b!218276 () Bool)

(assert (=> b!218276 (= e!141994 e!141993)))

(declare-fun res!107023 () Bool)

(assert (=> b!218276 (=> (not res!107023) (not e!141993))))

(declare-datatypes ((SeekEntryResult!796 0))(
  ( (MissingZero!796 (index!5354 (_ BitVec 32))) (Found!796 (index!5355 (_ BitVec 32))) (Intermediate!796 (undefined!1608 Bool) (index!5356 (_ BitVec 32)) (x!22836 (_ BitVec 32))) (Undefined!796) (MissingVacant!796 (index!5357 (_ BitVec 32))) )
))
(declare-fun lt!111529 () SeekEntryResult!796)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!218276 (= res!107023 (or (= lt!111529 (MissingZero!796 index!297)) (= lt!111529 (MissingVacant!796 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10698 (_ BitVec 32)) SeekEntryResult!796)

(assert (=> b!218276 (= lt!111529 (seekEntryOrOpen!0 key!932 (_keys!6170 thiss!1504) (mask!9894 thiss!1504)))))

(declare-fun b!218277 () Bool)

(declare-fun e!141997 () Bool)

(declare-fun e!141996 () Bool)

(assert (=> b!218277 (= e!141997 (and e!141996 mapRes!9756))))

(declare-fun condMapEmpty!9756 () Bool)

(declare-fun mapDefault!9756 () ValueCell!2521)

