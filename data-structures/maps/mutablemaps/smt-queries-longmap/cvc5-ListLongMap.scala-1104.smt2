; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22728 () Bool)

(assert start!22728)

(declare-fun b!237026 () Bool)

(declare-fun b_free!6373 () Bool)

(declare-fun b_next!6373 () Bool)

(assert (=> b!237026 (= b_free!6373 (not b_next!6373))))

(declare-fun tp!22305 () Bool)

(declare-fun b_and!13339 () Bool)

(assert (=> b!237026 (= tp!22305 b_and!13339)))

(declare-fun res!116204 () Bool)

(declare-fun e!153936 () Bool)

(assert (=> start!22728 (=> (not res!116204) (not e!153936))))

(declare-datatypes ((V!7961 0))(
  ( (V!7962 (val!3162 Int)) )
))
(declare-datatypes ((ValueCell!2774 0))(
  ( (ValueCellFull!2774 (v!5191 V!7961)) (EmptyCell!2774) )
))
(declare-datatypes ((array!11738 0))(
  ( (array!11739 (arr!5575 (Array (_ BitVec 32) ValueCell!2774)) (size!5914 (_ BitVec 32))) )
))
(declare-datatypes ((array!11740 0))(
  ( (array!11741 (arr!5576 (Array (_ BitVec 32) (_ BitVec 64))) (size!5915 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3448 0))(
  ( (LongMapFixedSize!3449 (defaultEntry!4402 Int) (mask!10407 (_ BitVec 32)) (extraKeys!4139 (_ BitVec 32)) (zeroValue!4243 V!7961) (minValue!4243 V!7961) (_size!1773 (_ BitVec 32)) (_keys!6490 array!11740) (_values!4385 array!11738) (_vacant!1773 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3448)

(declare-fun valid!1352 (LongMapFixedSize!3448) Bool)

(assert (=> start!22728 (= res!116204 (valid!1352 thiss!1504))))

(assert (=> start!22728 e!153936))

(declare-fun e!153934 () Bool)

(assert (=> start!22728 e!153934))

(assert (=> start!22728 true))

(declare-fun b!237022 () Bool)

(declare-fun e!153940 () Bool)

(declare-fun tp_is_empty!6235 () Bool)

(assert (=> b!237022 (= e!153940 tp_is_empty!6235)))

(declare-fun mapNonEmpty!10567 () Bool)

(declare-fun mapRes!10567 () Bool)

(declare-fun tp!22306 () Bool)

(declare-fun e!153938 () Bool)

(assert (=> mapNonEmpty!10567 (= mapRes!10567 (and tp!22306 e!153938))))

(declare-fun mapRest!10567 () (Array (_ BitVec 32) ValueCell!2774))

(declare-fun mapKey!10567 () (_ BitVec 32))

(declare-fun mapValue!10567 () ValueCell!2774)

(assert (=> mapNonEmpty!10567 (= (arr!5575 (_values!4385 thiss!1504)) (store mapRest!10567 mapKey!10567 mapValue!10567))))

(declare-fun b!237023 () Bool)

(declare-fun e!153935 () Bool)

(assert (=> b!237023 (= e!153935 (and e!153940 mapRes!10567))))

(declare-fun condMapEmpty!10567 () Bool)

(declare-fun mapDefault!10567 () ValueCell!2774)

