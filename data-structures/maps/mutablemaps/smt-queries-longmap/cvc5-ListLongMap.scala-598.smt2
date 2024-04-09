; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15742 () Bool)

(assert start!15742)

(declare-fun b!156924 () Bool)

(declare-fun b_free!3397 () Bool)

(declare-fun b_next!3397 () Bool)

(assert (=> b!156924 (= b_free!3397 (not b_next!3397))))

(declare-fun tp!12716 () Bool)

(declare-fun b_and!9829 () Bool)

(assert (=> b!156924 (= tp!12716 b_and!9829)))

(declare-fun b!156922 () Bool)

(declare-fun e!102647 () Bool)

(declare-fun tp_is_empty!3199 () Bool)

(assert (=> b!156922 (= e!102647 tp_is_empty!3199)))

(declare-fun b!156923 () Bool)

(declare-fun res!74202 () Bool)

(declare-fun e!102646 () Bool)

(assert (=> b!156923 (=> (not res!74202) (not e!102646))))

(declare-datatypes ((V!3913 0))(
  ( (V!3914 (val!1644 Int)) )
))
(declare-datatypes ((ValueCell!1256 0))(
  ( (ValueCellFull!1256 (v!3505 V!3913)) (EmptyCell!1256) )
))
(declare-datatypes ((array!5450 0))(
  ( (array!5451 (arr!2582 (Array (_ BitVec 32) (_ BitVec 64))) (size!2860 (_ BitVec 32))) )
))
(declare-datatypes ((array!5452 0))(
  ( (array!5453 (arr!2583 (Array (_ BitVec 32) ValueCell!1256)) (size!2861 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1420 0))(
  ( (LongMapFixedSize!1421 (defaultEntry!3152 Int) (mask!7617 (_ BitVec 32)) (extraKeys!2893 (_ BitVec 32)) (zeroValue!2995 V!3913) (minValue!2995 V!3913) (_size!759 (_ BitVec 32)) (_keys!4927 array!5450) (_values!3135 array!5452) (_vacant!759 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1420)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5450 (_ BitVec 32)) Bool)

(assert (=> b!156923 (= res!74202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4927 thiss!1248) (mask!7617 thiss!1248)))))

(declare-fun e!102650 () Bool)

(declare-fun e!102648 () Bool)

(declare-fun array_inv!1631 (array!5450) Bool)

(declare-fun array_inv!1632 (array!5452) Bool)

(assert (=> b!156924 (= e!102650 (and tp!12716 tp_is_empty!3199 (array_inv!1631 (_keys!4927 thiss!1248)) (array_inv!1632 (_values!3135 thiss!1248)) e!102648))))

(declare-fun b!156925 () Bool)

(declare-fun e!102649 () Bool)

(assert (=> b!156925 (= e!102649 tp_is_empty!3199)))

(declare-fun b!156926 () Bool)

(declare-fun res!74203 () Bool)

(assert (=> b!156926 (=> (not res!74203) (not e!102646))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156926 (= res!74203 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!156927 () Bool)

(declare-fun mapRes!5441 () Bool)

(assert (=> b!156927 (= e!102648 (and e!102647 mapRes!5441))))

(declare-fun condMapEmpty!5441 () Bool)

(declare-fun mapDefault!5441 () ValueCell!1256)

