; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21530 () Bool)

(assert start!21530)

(declare-fun b!215780 () Bool)

(declare-fun b_free!5731 () Bool)

(declare-fun b_next!5731 () Bool)

(assert (=> b!215780 (= b_free!5731 (not b_next!5731))))

(declare-fun tp!20315 () Bool)

(declare-fun b_and!12639 () Bool)

(assert (=> b!215780 (= tp!20315 b_and!12639)))

(declare-fun b!215773 () Bool)

(declare-fun e!140391 () Bool)

(declare-fun e!140389 () Bool)

(declare-fun mapRes!9539 () Bool)

(assert (=> b!215773 (= e!140391 (and e!140389 mapRes!9539))))

(declare-fun condMapEmpty!9539 () Bool)

(declare-datatypes ((V!7105 0))(
  ( (V!7106 (val!2841 Int)) )
))
(declare-datatypes ((ValueCell!2453 0))(
  ( (ValueCellFull!2453 (v!4855 V!7105)) (EmptyCell!2453) )
))
(declare-datatypes ((array!10416 0))(
  ( (array!10417 (arr!4933 (Array (_ BitVec 32) ValueCell!2453)) (size!5264 (_ BitVec 32))) )
))
(declare-datatypes ((array!10418 0))(
  ( (array!10419 (arr!4934 (Array (_ BitVec 32) (_ BitVec 64))) (size!5265 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2806 0))(
  ( (LongMapFixedSize!2807 (defaultEntry!4053 Int) (mask!9767 (_ BitVec 32)) (extraKeys!3790 (_ BitVec 32)) (zeroValue!3894 V!7105) (minValue!3894 V!7105) (_size!1452 (_ BitVec 32)) (_keys!6092 array!10418) (_values!4036 array!10416) (_vacant!1452 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2806)

(declare-fun mapDefault!9539 () ValueCell!2453)

