; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16188 () Bool)

(assert start!16188)

(declare-fun b!161244 () Bool)

(declare-fun b_free!3637 () Bool)

(declare-fun b_next!3637 () Bool)

(assert (=> b!161244 (= b_free!3637 (not b_next!3637))))

(declare-fun tp!13481 () Bool)

(declare-fun b_and!10069 () Bool)

(assert (=> b!161244 (= tp!13481 b_and!10069)))

(declare-fun e!105371 () Bool)

(declare-fun e!105377 () Bool)

(declare-datatypes ((V!4233 0))(
  ( (V!4234 (val!1764 Int)) )
))
(declare-datatypes ((ValueCell!1376 0))(
  ( (ValueCellFull!1376 (v!3625 V!4233)) (EmptyCell!1376) )
))
(declare-datatypes ((array!5956 0))(
  ( (array!5957 (arr!2822 (Array (_ BitVec 32) (_ BitVec 64))) (size!3106 (_ BitVec 32))) )
))
(declare-datatypes ((array!5958 0))(
  ( (array!5959 (arr!2823 (Array (_ BitVec 32) ValueCell!1376)) (size!3107 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1660 0))(
  ( (LongMapFixedSize!1661 (defaultEntry!3272 Int) (mask!7860 (_ BitVec 32)) (extraKeys!3013 (_ BitVec 32)) (zeroValue!3115 V!4233) (minValue!3115 V!4233) (_size!879 (_ BitVec 32)) (_keys!5073 array!5956) (_values!3255 array!5958) (_vacant!879 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1660)

(declare-fun tp_is_empty!3439 () Bool)

(declare-fun array_inv!1789 (array!5956) Bool)

(declare-fun array_inv!1790 (array!5958) Bool)

(assert (=> b!161244 (= e!105377 (and tp!13481 tp_is_empty!3439 (array_inv!1789 (_keys!5073 thiss!1248)) (array_inv!1790 (_values!3255 thiss!1248)) e!105371))))

(declare-fun res!76470 () Bool)

(declare-fun e!105373 () Bool)

(assert (=> start!16188 (=> (not res!76470) (not e!105373))))

(declare-fun valid!754 (LongMapFixedSize!1660) Bool)

(assert (=> start!16188 (= res!76470 (valid!754 thiss!1248))))

(assert (=> start!16188 e!105373))

(assert (=> start!16188 e!105377))

(assert (=> start!16188 true))

(declare-fun b!161245 () Bool)

(declare-fun e!105376 () Bool)

(assert (=> b!161245 (= e!105376 tp_is_empty!3439)))

(declare-fun b!161246 () Bool)

(declare-fun e!105374 () Bool)

(declare-fun mapRes!5846 () Bool)

(assert (=> b!161246 (= e!105371 (and e!105374 mapRes!5846))))

(declare-fun condMapEmpty!5846 () Bool)

(declare-fun mapDefault!5846 () ValueCell!1376)

