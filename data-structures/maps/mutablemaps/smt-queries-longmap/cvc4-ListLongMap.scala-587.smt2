; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15680 () Bool)

(assert start!15680)

(declare-fun b!156087 () Bool)

(declare-fun b_free!3335 () Bool)

(declare-fun b_next!3335 () Bool)

(assert (=> b!156087 (= b_free!3335 (not b_next!3335))))

(declare-fun tp!12530 () Bool)

(declare-fun b_and!9767 () Bool)

(assert (=> b!156087 (= tp!12530 b_and!9767)))

(declare-fun mapNonEmpty!5348 () Bool)

(declare-fun mapRes!5348 () Bool)

(declare-fun tp!12529 () Bool)

(declare-fun e!102087 () Bool)

(assert (=> mapNonEmpty!5348 (= mapRes!5348 (and tp!12529 e!102087))))

(declare-fun mapKey!5348 () (_ BitVec 32))

(declare-datatypes ((V!3829 0))(
  ( (V!3830 (val!1613 Int)) )
))
(declare-datatypes ((ValueCell!1225 0))(
  ( (ValueCellFull!1225 (v!3474 V!3829)) (EmptyCell!1225) )
))
(declare-fun mapValue!5348 () ValueCell!1225)

(declare-datatypes ((array!5326 0))(
  ( (array!5327 (arr!2520 (Array (_ BitVec 32) (_ BitVec 64))) (size!2798 (_ BitVec 32))) )
))
(declare-datatypes ((array!5328 0))(
  ( (array!5329 (arr!2521 (Array (_ BitVec 32) ValueCell!1225)) (size!2799 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1358 0))(
  ( (LongMapFixedSize!1359 (defaultEntry!3121 Int) (mask!7564 (_ BitVec 32)) (extraKeys!2862 (_ BitVec 32)) (zeroValue!2964 V!3829) (minValue!2964 V!3829) (_size!728 (_ BitVec 32)) (_keys!4896 array!5326) (_values!3104 array!5328) (_vacant!728 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1358)

(declare-fun mapRest!5348 () (Array (_ BitVec 32) ValueCell!1225))

(assert (=> mapNonEmpty!5348 (= (arr!2521 (_values!3104 thiss!1248)) (store mapRest!5348 mapKey!5348 mapValue!5348))))

(declare-fun b!156085 () Bool)

(declare-fun tp_is_empty!3137 () Bool)

(assert (=> b!156085 (= e!102087 tp_is_empty!3137)))

(declare-fun res!73738 () Bool)

(declare-fun e!102088 () Bool)

(assert (=> start!15680 (=> (not res!73738) (not e!102088))))

(declare-fun valid!656 (LongMapFixedSize!1358) Bool)

(assert (=> start!15680 (= res!73738 (valid!656 thiss!1248))))

(assert (=> start!15680 e!102088))

(declare-fun e!102092 () Bool)

(assert (=> start!15680 e!102092))

(assert (=> start!15680 true))

(declare-fun b!156086 () Bool)

(declare-fun e!102090 () Bool)

(assert (=> b!156086 (= e!102090 tp_is_empty!3137)))

(declare-fun e!102091 () Bool)

(declare-fun array_inv!1583 (array!5326) Bool)

(declare-fun array_inv!1584 (array!5328) Bool)

(assert (=> b!156087 (= e!102092 (and tp!12530 tp_is_empty!3137 (array_inv!1583 (_keys!4896 thiss!1248)) (array_inv!1584 (_values!3104 thiss!1248)) e!102091))))

(declare-fun b!156088 () Bool)

(declare-fun res!73740 () Bool)

(assert (=> b!156088 (=> (not res!73740) (not e!102088))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5326 (_ BitVec 32)) Bool)

(assert (=> b!156088 (= res!73740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4896 thiss!1248) (mask!7564 thiss!1248)))))

(declare-fun b!156089 () Bool)

(assert (=> b!156089 (= e!102091 (and e!102090 mapRes!5348))))

(declare-fun condMapEmpty!5348 () Bool)

(declare-fun mapDefault!5348 () ValueCell!1225)

