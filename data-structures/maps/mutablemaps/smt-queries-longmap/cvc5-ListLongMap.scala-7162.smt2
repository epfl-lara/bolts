; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91264 () Bool)

(assert start!91264)

(declare-fun b!1040790 () Bool)

(declare-fun b_free!21025 () Bool)

(declare-fun b_next!21025 () Bool)

(assert (=> b!1040790 (= b_free!21025 (not b_next!21025))))

(declare-fun tp!74279 () Bool)

(declare-fun b_and!33575 () Bool)

(assert (=> b!1040790 (= tp!74279 b_and!33575)))

(declare-fun b!1040788 () Bool)

(declare-fun e!589358 () Bool)

(declare-fun e!589363 () Bool)

(declare-fun mapRes!38704 () Bool)

(assert (=> b!1040788 (= e!589358 (and e!589363 mapRes!38704))))

(declare-fun condMapEmpty!38704 () Bool)

(declare-datatypes ((V!37867 0))(
  ( (V!37868 (val!12423 Int)) )
))
(declare-datatypes ((ValueCell!11669 0))(
  ( (ValueCellFull!11669 (v!15011 V!37867)) (EmptyCell!11669) )
))
(declare-datatypes ((array!65616 0))(
  ( (array!65617 (arr!31567 (Array (_ BitVec 32) (_ BitVec 64))) (size!32099 (_ BitVec 32))) )
))
(declare-datatypes ((array!65618 0))(
  ( (array!65619 (arr!31568 (Array (_ BitVec 32) ValueCell!11669)) (size!32100 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5932 0))(
  ( (LongMapFixedSize!5933 (defaultEntry!6348 Int) (mask!30350 (_ BitVec 32)) (extraKeys!6076 (_ BitVec 32)) (zeroValue!6182 V!37867) (minValue!6182 V!37867) (_size!3021 (_ BitVec 32)) (_keys!11571 array!65616) (_values!6371 array!65618) (_vacant!3021 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5932)

(declare-fun mapDefault!38704 () ValueCell!11669)

