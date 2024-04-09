; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15694 () Bool)

(assert start!15694)

(declare-fun b!156274 () Bool)

(declare-fun b_free!3349 () Bool)

(declare-fun b_next!3349 () Bool)

(assert (=> b!156274 (= b_free!3349 (not b_next!3349))))

(declare-fun tp!12572 () Bool)

(declare-fun b_and!9781 () Bool)

(assert (=> b!156274 (= tp!12572 b_and!9781)))

(declare-fun tp_is_empty!3151 () Bool)

(declare-fun e!102217 () Bool)

(declare-datatypes ((V!3849 0))(
  ( (V!3850 (val!1620 Int)) )
))
(declare-datatypes ((ValueCell!1232 0))(
  ( (ValueCellFull!1232 (v!3481 V!3849)) (EmptyCell!1232) )
))
(declare-datatypes ((array!5354 0))(
  ( (array!5355 (arr!2534 (Array (_ BitVec 32) (_ BitVec 64))) (size!2812 (_ BitVec 32))) )
))
(declare-datatypes ((array!5356 0))(
  ( (array!5357 (arr!2535 (Array (_ BitVec 32) ValueCell!1232)) (size!2813 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1372 0))(
  ( (LongMapFixedSize!1373 (defaultEntry!3128 Int) (mask!7577 (_ BitVec 32)) (extraKeys!2869 (_ BitVec 32)) (zeroValue!2971 V!3849) (minValue!2971 V!3849) (_size!735 (_ BitVec 32)) (_keys!4903 array!5354) (_values!3111 array!5356) (_vacant!735 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1372)

(declare-fun e!102215 () Bool)

(declare-fun array_inv!1593 (array!5354) Bool)

(declare-fun array_inv!1594 (array!5356) Bool)

(assert (=> b!156274 (= e!102217 (and tp!12572 tp_is_empty!3151 (array_inv!1593 (_keys!4903 thiss!1248)) (array_inv!1594 (_values!3111 thiss!1248)) e!102215))))

(declare-fun res!73844 () Bool)

(declare-fun e!102218 () Bool)

(assert (=> start!15694 (=> (not res!73844) (not e!102218))))

(declare-fun valid!661 (LongMapFixedSize!1372) Bool)

(assert (=> start!15694 (= res!73844 (valid!661 thiss!1248))))

(assert (=> start!15694 e!102218))

(assert (=> start!15694 e!102217))

(assert (=> start!15694 true))

(declare-fun b!156275 () Bool)

(declare-fun e!102213 () Bool)

(assert (=> b!156275 (= e!102213 tp_is_empty!3151)))

(declare-fun mapIsEmpty!5369 () Bool)

(declare-fun mapRes!5369 () Bool)

(assert (=> mapIsEmpty!5369 mapRes!5369))

(declare-fun b!156276 () Bool)

(declare-fun e!102216 () Bool)

(assert (=> b!156276 (= e!102215 (and e!102216 mapRes!5369))))

(declare-fun condMapEmpty!5369 () Bool)

(declare-fun mapDefault!5369 () ValueCell!1232)

