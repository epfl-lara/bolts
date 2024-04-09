; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15766 () Bool)

(assert start!15766)

(declare-fun b!157178 () Bool)

(declare-fun b_free!3421 () Bool)

(declare-fun b_next!3421 () Bool)

(assert (=> b!157178 (= b_free!3421 (not b_next!3421))))

(declare-fun tp!12787 () Bool)

(declare-fun b_and!9853 () Bool)

(assert (=> b!157178 (= tp!12787 b_and!9853)))

(declare-fun b!157177 () Bool)

(declare-fun e!102880 () Bool)

(declare-fun e!102882 () Bool)

(declare-fun mapRes!5477 () Bool)

(assert (=> b!157177 (= e!102880 (and e!102882 mapRes!5477))))

(declare-fun condMapEmpty!5477 () Bool)

(declare-datatypes ((V!3945 0))(
  ( (V!3946 (val!1656 Int)) )
))
(declare-datatypes ((ValueCell!1268 0))(
  ( (ValueCellFull!1268 (v!3517 V!3945)) (EmptyCell!1268) )
))
(declare-datatypes ((array!5498 0))(
  ( (array!5499 (arr!2606 (Array (_ BitVec 32) (_ BitVec 64))) (size!2884 (_ BitVec 32))) )
))
(declare-datatypes ((array!5500 0))(
  ( (array!5501 (arr!2607 (Array (_ BitVec 32) ValueCell!1268)) (size!2885 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1444 0))(
  ( (LongMapFixedSize!1445 (defaultEntry!3164 Int) (mask!7637 (_ BitVec 32)) (extraKeys!2905 (_ BitVec 32)) (zeroValue!3007 V!3945) (minValue!3007 V!3945) (_size!771 (_ BitVec 32)) (_keys!4939 array!5498) (_values!3147 array!5500) (_vacant!771 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1444)

(declare-fun mapDefault!5477 () ValueCell!1268)

