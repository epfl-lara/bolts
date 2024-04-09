; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18984 () Bool)

(assert start!18984)

(declare-fun b!187036 () Bool)

(declare-fun b_free!4603 () Bool)

(declare-fun b_next!4603 () Bool)

(assert (=> b!187036 (= b_free!4603 (not b_next!4603))))

(declare-fun tp!16618 () Bool)

(declare-fun b_and!11237 () Bool)

(assert (=> b!187036 (= tp!16618 b_and!11237)))

(declare-fun b!187034 () Bool)

(declare-datatypes ((Unit!5630 0))(
  ( (Unit!5631) )
))
(declare-fun e!123092 () Unit!5630)

(declare-fun Unit!5632 () Unit!5630)

(assert (=> b!187034 (= e!123092 Unit!5632)))

(declare-fun lt!92555 () Unit!5630)

(declare-datatypes ((V!5481 0))(
  ( (V!5482 (val!2232 Int)) )
))
(declare-datatypes ((ValueCell!1844 0))(
  ( (ValueCellFull!1844 (v!4142 V!5481)) (EmptyCell!1844) )
))
(declare-datatypes ((array!7964 0))(
  ( (array!7965 (arr!3758 (Array (_ BitVec 32) (_ BitVec 64))) (size!4076 (_ BitVec 32))) )
))
(declare-datatypes ((array!7966 0))(
  ( (array!7967 (arr!3759 (Array (_ BitVec 32) ValueCell!1844)) (size!4077 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2596 0))(
  ( (LongMapFixedSize!2597 (defaultEntry!3815 Int) (mask!8955 (_ BitVec 32)) (extraKeys!3552 (_ BitVec 32)) (zeroValue!3656 V!5481) (minValue!3656 V!5481) (_size!1347 (_ BitVec 32)) (_keys!5765 array!7964) (_values!3798 array!7966) (_vacant!1347 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2596)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!148 (array!7964 array!7966 (_ BitVec 32) (_ BitVec 32) V!5481 V!5481 (_ BitVec 64) Int) Unit!5630)

(assert (=> b!187034 (= lt!92555 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!148 (_keys!5765 thiss!1248) (_values!3798 thiss!1248) (mask!8955 thiss!1248) (extraKeys!3552 thiss!1248) (zeroValue!3656 thiss!1248) (minValue!3656 thiss!1248) key!828 (defaultEntry!3815 thiss!1248)))))

(assert (=> b!187034 false))

(declare-fun tp_is_empty!4375 () Bool)

(declare-fun e!123096 () Bool)

(declare-fun e!123093 () Bool)

(declare-fun array_inv!2421 (array!7964) Bool)

(declare-fun array_inv!2422 (array!7966) Bool)

(assert (=> b!187036 (= e!123093 (and tp!16618 tp_is_empty!4375 (array_inv!2421 (_keys!5765 thiss!1248)) (array_inv!2422 (_values!3798 thiss!1248)) e!123096))))

(declare-fun b!187037 () Bool)

(declare-fun e!123095 () Bool)

(declare-fun mapRes!7535 () Bool)

(assert (=> b!187037 (= e!123096 (and e!123095 mapRes!7535))))

(declare-fun condMapEmpty!7535 () Bool)

(declare-fun mapDefault!7535 () ValueCell!1844)

