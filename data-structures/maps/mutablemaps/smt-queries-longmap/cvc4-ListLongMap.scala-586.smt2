; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15674 () Bool)

(assert start!15674)

(declare-fun b!156008 () Bool)

(declare-fun b_free!3329 () Bool)

(declare-fun b_next!3329 () Bool)

(assert (=> b!156008 (= b_free!3329 (not b_next!3329))))

(declare-fun tp!12511 () Bool)

(declare-fun b_and!9761 () Bool)

(assert (=> b!156008 (= tp!12511 b_and!9761)))

(declare-fun res!73695 () Bool)

(declare-fun e!102036 () Bool)

(assert (=> start!15674 (=> (not res!73695) (not e!102036))))

(declare-datatypes ((V!3821 0))(
  ( (V!3822 (val!1610 Int)) )
))
(declare-datatypes ((ValueCell!1222 0))(
  ( (ValueCellFull!1222 (v!3471 V!3821)) (EmptyCell!1222) )
))
(declare-datatypes ((array!5314 0))(
  ( (array!5315 (arr!2514 (Array (_ BitVec 32) (_ BitVec 64))) (size!2792 (_ BitVec 32))) )
))
(declare-datatypes ((array!5316 0))(
  ( (array!5317 (arr!2515 (Array (_ BitVec 32) ValueCell!1222)) (size!2793 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1352 0))(
  ( (LongMapFixedSize!1353 (defaultEntry!3118 Int) (mask!7559 (_ BitVec 32)) (extraKeys!2859 (_ BitVec 32)) (zeroValue!2961 V!3821) (minValue!2961 V!3821) (_size!725 (_ BitVec 32)) (_keys!4893 array!5314) (_values!3101 array!5316) (_vacant!725 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1352)

(declare-fun valid!653 (LongMapFixedSize!1352) Bool)

(assert (=> start!15674 (= res!73695 (valid!653 thiss!1248))))

(assert (=> start!15674 e!102036))

(declare-fun e!102037 () Bool)

(assert (=> start!15674 e!102037))

(assert (=> start!15674 true))

(declare-fun tp_is_empty!3131 () Bool)

(assert (=> start!15674 tp_is_empty!3131))

(declare-fun b!156007 () Bool)

(declare-fun e!102033 () Bool)

(declare-fun e!102034 () Bool)

(declare-fun mapRes!5339 () Bool)

(assert (=> b!156007 (= e!102033 (and e!102034 mapRes!5339))))

(declare-fun condMapEmpty!5339 () Bool)

(declare-fun mapDefault!5339 () ValueCell!1222)

