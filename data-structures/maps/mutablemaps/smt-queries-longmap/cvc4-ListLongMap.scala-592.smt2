; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15710 () Bool)

(assert start!15710)

(declare-fun b!156491 () Bool)

(declare-fun b_free!3365 () Bool)

(declare-fun b_next!3365 () Bool)

(assert (=> b!156491 (= b_free!3365 (not b_next!3365))))

(declare-fun tp!12620 () Bool)

(declare-fun b_and!9797 () Bool)

(assert (=> b!156491 (= tp!12620 b_and!9797)))

(declare-fun b!156490 () Bool)

(declare-fun res!73965 () Bool)

(declare-fun e!102357 () Bool)

(assert (=> b!156490 (=> (not res!73965) (not e!102357))))

(declare-datatypes ((V!3869 0))(
  ( (V!3870 (val!1628 Int)) )
))
(declare-datatypes ((ValueCell!1240 0))(
  ( (ValueCellFull!1240 (v!3489 V!3869)) (EmptyCell!1240) )
))
(declare-datatypes ((array!5386 0))(
  ( (array!5387 (arr!2550 (Array (_ BitVec 32) (_ BitVec 64))) (size!2828 (_ BitVec 32))) )
))
(declare-datatypes ((array!5388 0))(
  ( (array!5389 (arr!2551 (Array (_ BitVec 32) ValueCell!1240)) (size!2829 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1388 0))(
  ( (LongMapFixedSize!1389 (defaultEntry!3136 Int) (mask!7589 (_ BitVec 32)) (extraKeys!2877 (_ BitVec 32)) (zeroValue!2979 V!3869) (minValue!2979 V!3869) (_size!743 (_ BitVec 32)) (_keys!4911 array!5386) (_values!3119 array!5388) (_vacant!743 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1388)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156490 (= res!73965 (validMask!0 (mask!7589 thiss!1248)))))

(declare-fun e!102361 () Bool)

(declare-fun e!102360 () Bool)

(declare-fun tp_is_empty!3167 () Bool)

(declare-fun array_inv!1607 (array!5386) Bool)

(declare-fun array_inv!1608 (array!5388) Bool)

(assert (=> b!156491 (= e!102360 (and tp!12620 tp_is_empty!3167 (array_inv!1607 (_keys!4911 thiss!1248)) (array_inv!1608 (_values!3119 thiss!1248)) e!102361))))

(declare-fun b!156492 () Bool)

(declare-fun res!73964 () Bool)

(assert (=> b!156492 (=> (not res!73964) (not e!102357))))

(assert (=> b!156492 (= res!73964 (and (= (size!2829 (_values!3119 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7589 thiss!1248))) (= (size!2828 (_keys!4911 thiss!1248)) (size!2829 (_values!3119 thiss!1248))) (bvsge (mask!7589 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2877 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2877 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2877 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2877 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2877 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2877 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2877 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!5393 () Bool)

(declare-fun mapRes!5393 () Bool)

(assert (=> mapIsEmpty!5393 mapRes!5393))

(declare-fun mapNonEmpty!5393 () Bool)

(declare-fun tp!12619 () Bool)

(declare-fun e!102358 () Bool)

(assert (=> mapNonEmpty!5393 (= mapRes!5393 (and tp!12619 e!102358))))

(declare-fun mapKey!5393 () (_ BitVec 32))

(declare-fun mapRest!5393 () (Array (_ BitVec 32) ValueCell!1240))

(declare-fun mapValue!5393 () ValueCell!1240)

(assert (=> mapNonEmpty!5393 (= (arr!2551 (_values!3119 thiss!1248)) (store mapRest!5393 mapKey!5393 mapValue!5393))))

(declare-fun b!156494 () Bool)

(assert (=> b!156494 (= e!102358 tp_is_empty!3167)))

(declare-fun b!156495 () Bool)

(declare-fun e!102362 () Bool)

(assert (=> b!156495 (= e!102361 (and e!102362 mapRes!5393))))

(declare-fun condMapEmpty!5393 () Bool)

(declare-fun mapDefault!5393 () ValueCell!1240)

