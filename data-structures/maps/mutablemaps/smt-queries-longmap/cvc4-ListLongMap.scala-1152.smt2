; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24238 () Bool)

(assert start!24238)

(declare-fun b!253378 () Bool)

(declare-fun b_free!6665 () Bool)

(declare-fun b_next!6665 () Bool)

(assert (=> b!253378 (= b_free!6665 (not b_next!6665))))

(declare-fun tp!23279 () Bool)

(declare-fun b_and!13723 () Bool)

(assert (=> b!253378 (= tp!23279 b_and!13723)))

(declare-fun res!124031 () Bool)

(declare-fun e!164285 () Bool)

(assert (=> start!24238 (=> (not res!124031) (not e!164285))))

(declare-datatypes ((V!8349 0))(
  ( (V!8350 (val!3308 Int)) )
))
(declare-datatypes ((ValueCell!2920 0))(
  ( (ValueCellFull!2920 (v!5377 V!8349)) (EmptyCell!2920) )
))
(declare-datatypes ((array!12382 0))(
  ( (array!12383 (arr!5867 (Array (_ BitVec 32) ValueCell!2920)) (size!6214 (_ BitVec 32))) )
))
(declare-datatypes ((array!12384 0))(
  ( (array!12385 (arr!5868 (Array (_ BitVec 32) (_ BitVec 64))) (size!6215 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3740 0))(
  ( (LongMapFixedSize!3741 (defaultEntry!4679 Int) (mask!10912 (_ BitVec 32)) (extraKeys!4416 (_ BitVec 32)) (zeroValue!4520 V!8349) (minValue!4520 V!8349) (_size!1919 (_ BitVec 32)) (_keys!6831 array!12384) (_values!4662 array!12382) (_vacant!1919 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3740)

(declare-fun valid!1456 (LongMapFixedSize!3740) Bool)

(assert (=> start!24238 (= res!124031 (valid!1456 thiss!1504))))

(assert (=> start!24238 e!164285))

(declare-fun e!164275 () Bool)

(assert (=> start!24238 e!164275))

(assert (=> start!24238 true))

(declare-fun b!253358 () Bool)

(declare-fun e!164276 () Bool)

(declare-fun e!164279 () Bool)

(declare-fun mapRes!11103 () Bool)

(assert (=> b!253358 (= e!164276 (and e!164279 mapRes!11103))))

(declare-fun condMapEmpty!11103 () Bool)

(declare-fun mapDefault!11103 () ValueCell!2920)

