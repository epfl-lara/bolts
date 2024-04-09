; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18626 () Bool)

(assert start!18626)

(declare-fun b!184235 () Bool)

(declare-fun b_free!4543 () Bool)

(declare-fun b_next!4543 () Bool)

(assert (=> b!184235 (= b_free!4543 (not b_next!4543))))

(declare-fun tp!16410 () Bool)

(declare-fun b_and!11145 () Bool)

(assert (=> b!184235 (= tp!16410 b_and!11145)))

(declare-fun b!184228 () Bool)

(declare-fun e!121277 () Bool)

(declare-fun e!121280 () Bool)

(declare-fun mapRes!7417 () Bool)

(assert (=> b!184228 (= e!121277 (and e!121280 mapRes!7417))))

(declare-fun condMapEmpty!7417 () Bool)

(declare-datatypes ((V!5401 0))(
  ( (V!5402 (val!2202 Int)) )
))
(declare-datatypes ((ValueCell!1814 0))(
  ( (ValueCellFull!1814 (v!4104 V!5401)) (EmptyCell!1814) )
))
(declare-datatypes ((array!7828 0))(
  ( (array!7829 (arr!3698 (Array (_ BitVec 32) (_ BitVec 64))) (size!4012 (_ BitVec 32))) )
))
(declare-datatypes ((array!7830 0))(
  ( (array!7831 (arr!3699 (Array (_ BitVec 32) ValueCell!1814)) (size!4013 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2536 0))(
  ( (LongMapFixedSize!2537 (defaultEntry!3763 Int) (mask!8845 (_ BitVec 32)) (extraKeys!3500 (_ BitVec 32)) (zeroValue!3604 V!5401) (minValue!3604 V!5401) (_size!1317 (_ BitVec 32)) (_keys!5690 array!7828) (_values!3746 array!7830) (_vacant!1317 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2536)

(declare-fun mapDefault!7417 () ValueCell!1814)

