; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15800 () Bool)

(assert start!15800)

(declare-fun b!157414 () Bool)

(declare-fun b_free!3439 () Bool)

(declare-fun b_next!3439 () Bool)

(assert (=> b!157414 (= b_free!3439 (not b_next!3439))))

(declare-fun tp!12846 () Bool)

(declare-fun b_and!9871 () Bool)

(assert (=> b!157414 (= tp!12846 b_and!9871)))

(declare-fun b!157411 () Bool)

(declare-fun e!103087 () Bool)

(declare-fun tp_is_empty!3241 () Bool)

(assert (=> b!157411 (= e!103087 tp_is_empty!3241)))

(declare-fun b!157412 () Bool)

(declare-fun e!103082 () Bool)

(assert (=> b!157412 (= e!103082 tp_is_empty!3241)))

(declare-fun b!157413 () Bool)

(declare-fun res!74405 () Bool)

(declare-fun e!103086 () Bool)

(assert (=> b!157413 (=> (not res!74405) (not e!103086))))

(declare-datatypes ((V!3969 0))(
  ( (V!3970 (val!1665 Int)) )
))
(declare-datatypes ((ValueCell!1277 0))(
  ( (ValueCellFull!1277 (v!3526 V!3969)) (EmptyCell!1277) )
))
(declare-datatypes ((array!5536 0))(
  ( (array!5537 (arr!2624 (Array (_ BitVec 32) (_ BitVec 64))) (size!2903 (_ BitVec 32))) )
))
(declare-datatypes ((array!5538 0))(
  ( (array!5539 (arr!2625 (Array (_ BitVec 32) ValueCell!1277)) (size!2904 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1462 0))(
  ( (LongMapFixedSize!1463 (defaultEntry!3173 Int) (mask!7654 (_ BitVec 32)) (extraKeys!2914 (_ BitVec 32)) (zeroValue!3016 V!3969) (minValue!3016 V!3969) (_size!780 (_ BitVec 32)) (_keys!4949 array!5536) (_values!3156 array!5538) (_vacant!780 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1462)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!157413 (= res!74405 (validMask!0 (mask!7654 thiss!1248)))))

(declare-fun e!103085 () Bool)

(declare-fun e!103084 () Bool)

(declare-fun array_inv!1659 (array!5536) Bool)

(declare-fun array_inv!1660 (array!5538) Bool)

(assert (=> b!157414 (= e!103085 (and tp!12846 tp_is_empty!3241 (array_inv!1659 (_keys!4949 thiss!1248)) (array_inv!1660 (_values!3156 thiss!1248)) e!103084))))

(declare-fun b!157415 () Bool)

(declare-fun mapRes!5508 () Bool)

(assert (=> b!157415 (= e!103084 (and e!103082 mapRes!5508))))

(declare-fun condMapEmpty!5508 () Bool)

(declare-fun mapDefault!5508 () ValueCell!1277)

