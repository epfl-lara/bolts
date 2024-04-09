; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22036 () Bool)

(assert start!22036)

(declare-fun b!227025 () Bool)

(declare-fun b_free!6091 () Bool)

(declare-fun b_next!6091 () Bool)

(assert (=> b!227025 (= b_free!6091 (not b_next!6091))))

(declare-fun tp!21414 () Bool)

(declare-fun b_and!13007 () Bool)

(assert (=> b!227025 (= tp!21414 b_and!13007)))

(declare-fun b!227011 () Bool)

(declare-fun e!147288 () Bool)

(declare-fun e!147284 () Bool)

(declare-fun mapRes!10099 () Bool)

(assert (=> b!227011 (= e!147288 (and e!147284 mapRes!10099))))

(declare-fun condMapEmpty!10099 () Bool)

(declare-datatypes ((V!7585 0))(
  ( (V!7586 (val!3021 Int)) )
))
(declare-datatypes ((ValueCell!2633 0))(
  ( (ValueCellFull!2633 (v!5037 V!7585)) (EmptyCell!2633) )
))
(declare-datatypes ((array!11148 0))(
  ( (array!11149 (arr!5293 (Array (_ BitVec 32) ValueCell!2633)) (size!5626 (_ BitVec 32))) )
))
(declare-datatypes ((array!11150 0))(
  ( (array!11151 (arr!5294 (Array (_ BitVec 32) (_ BitVec 64))) (size!5627 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3166 0))(
  ( (LongMapFixedSize!3167 (defaultEntry!4242 Int) (mask!10100 (_ BitVec 32)) (extraKeys!3979 (_ BitVec 32)) (zeroValue!4083 V!7585) (minValue!4083 V!7585) (_size!1632 (_ BitVec 32)) (_keys!6296 array!11150) (_values!4225 array!11148) (_vacant!1632 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3166)

(declare-fun mapDefault!10099 () ValueCell!2633)

