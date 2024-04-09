; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22548 () Bool)

(assert start!22548)

(declare-fun b!235624 () Bool)

(declare-fun b_free!6341 () Bool)

(declare-fun b_next!6341 () Bool)

(assert (=> b!235624 (= b_free!6341 (not b_next!6341))))

(declare-fun tp!22192 () Bool)

(declare-fun b_and!13289 () Bool)

(assert (=> b!235624 (= tp!22192 b_and!13289)))

(declare-fun b!235623 () Bool)

(declare-fun res!115586 () Bool)

(declare-fun e!153026 () Bool)

(assert (=> b!235623 (=> (not res!115586) (not e!153026))))

(declare-datatypes ((V!7917 0))(
  ( (V!7918 (val!3146 Int)) )
))
(declare-datatypes ((ValueCell!2758 0))(
  ( (ValueCellFull!2758 (v!5170 V!7917)) (EmptyCell!2758) )
))
(declare-datatypes ((array!11664 0))(
  ( (array!11665 (arr!5543 (Array (_ BitVec 32) ValueCell!2758)) (size!5880 (_ BitVec 32))) )
))
(declare-datatypes ((array!11666 0))(
  ( (array!11667 (arr!5544 (Array (_ BitVec 32) (_ BitVec 64))) (size!5881 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3416 0))(
  ( (LongMapFixedSize!3417 (defaultEntry!4379 Int) (mask!10353 (_ BitVec 32)) (extraKeys!4116 (_ BitVec 32)) (zeroValue!4220 V!7917) (minValue!4220 V!7917) (_size!1757 (_ BitVec 32)) (_keys!6455 array!11666) (_values!4362 array!11664) (_vacant!1757 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3416)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11666 (_ BitVec 32)) Bool)

(assert (=> b!235623 (= res!115586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6455 thiss!1504) (mask!10353 thiss!1504)))))

(declare-fun res!115587 () Bool)

(declare-fun e!153024 () Bool)

(assert (=> start!22548 (=> (not res!115587) (not e!153024))))

(declare-fun valid!1342 (LongMapFixedSize!3416) Bool)

(assert (=> start!22548 (= res!115587 (valid!1342 thiss!1504))))

(assert (=> start!22548 e!153024))

(declare-fun e!153027 () Bool)

(assert (=> start!22548 e!153027))

(assert (=> start!22548 true))

(declare-fun tp_is_empty!6203 () Bool)

(declare-fun e!153025 () Bool)

(declare-fun array_inv!3649 (array!11666) Bool)

(declare-fun array_inv!3650 (array!11664) Bool)

(assert (=> b!235624 (= e!153027 (and tp!22192 tp_is_empty!6203 (array_inv!3649 (_keys!6455 thiss!1504)) (array_inv!3650 (_values!4362 thiss!1504)) e!153025))))

(declare-fun b!235625 () Bool)

(declare-fun e!153021 () Bool)

(assert (=> b!235625 (= e!153021 tp_is_empty!6203)))

(declare-fun b!235626 () Bool)

(declare-fun mapRes!10502 () Bool)

(assert (=> b!235626 (= e!153025 (and e!153021 mapRes!10502))))

(declare-fun condMapEmpty!10502 () Bool)

(declare-fun mapDefault!10502 () ValueCell!2758)

