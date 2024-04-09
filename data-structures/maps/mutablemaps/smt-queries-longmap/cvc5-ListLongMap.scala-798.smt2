; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19174 () Bool)

(assert start!19174)

(declare-fun b!188480 () Bool)

(declare-fun b_free!4627 () Bool)

(declare-fun b_next!4627 () Bool)

(assert (=> b!188480 (= b_free!4627 (not b_next!4627))))

(declare-fun tp!16704 () Bool)

(declare-fun b_and!11277 () Bool)

(assert (=> b!188480 (= tp!16704 b_and!11277)))

(declare-fun b!188475 () Bool)

(declare-fun e!124055 () Bool)

(declare-fun e!124051 () Bool)

(assert (=> b!188475 (= e!124055 e!124051)))

(declare-fun res!89111 () Bool)

(assert (=> b!188475 (=> (not res!89111) (not e!124051))))

(declare-datatypes ((V!5513 0))(
  ( (V!5514 (val!2244 Int)) )
))
(declare-datatypes ((ValueCell!1856 0))(
  ( (ValueCellFull!1856 (v!4158 V!5513)) (EmptyCell!1856) )
))
(declare-datatypes ((array!8020 0))(
  ( (array!8021 (arr!3782 (Array (_ BitVec 32) (_ BitVec 64))) (size!4102 (_ BitVec 32))) )
))
(declare-datatypes ((array!8022 0))(
  ( (array!8023 (arr!3783 (Array (_ BitVec 32) ValueCell!1856)) (size!4103 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2620 0))(
  ( (LongMapFixedSize!2621 (defaultEntry!3845 Int) (mask!9014 (_ BitVec 32)) (extraKeys!3582 (_ BitVec 32)) (zeroValue!3686 V!5513) (minValue!3686 V!5513) (_size!1359 (_ BitVec 32)) (_keys!5806 array!8020) (_values!3828 array!8022) (_vacant!1359 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2620)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!188475 (= res!89111 (validMask!0 (mask!9014 thiss!1248)))))

(declare-datatypes ((Unit!5681 0))(
  ( (Unit!5682) )
))
(declare-fun lt!93339 () Unit!5681)

(declare-fun e!124050 () Unit!5681)

(assert (=> b!188475 (= lt!93339 e!124050)))

(declare-fun c!33868 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3488 0))(
  ( (tuple2!3489 (_1!1754 (_ BitVec 64)) (_2!1754 V!5513)) )
))
(declare-datatypes ((List!2412 0))(
  ( (Nil!2409) (Cons!2408 (h!3045 tuple2!3488) (t!7318 List!2412)) )
))
(declare-datatypes ((ListLongMap!2419 0))(
  ( (ListLongMap!2420 (toList!1225 List!2412)) )
))
(declare-fun contains!1323 (ListLongMap!2419 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!868 (array!8020 array!8022 (_ BitVec 32) (_ BitVec 32) V!5513 V!5513 (_ BitVec 32) Int) ListLongMap!2419)

(assert (=> b!188475 (= c!33868 (contains!1323 (getCurrentListMap!868 (_keys!5806 thiss!1248) (_values!3828 thiss!1248) (mask!9014 thiss!1248) (extraKeys!3582 thiss!1248) (zeroValue!3686 thiss!1248) (minValue!3686 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3845 thiss!1248)) key!828))))

(declare-fun b!188476 () Bool)

(declare-fun e!124047 () Bool)

(declare-fun e!124046 () Bool)

(declare-fun mapRes!7585 () Bool)

(assert (=> b!188476 (= e!124047 (and e!124046 mapRes!7585))))

(declare-fun condMapEmpty!7585 () Bool)

(declare-fun mapDefault!7585 () ValueCell!1856)

