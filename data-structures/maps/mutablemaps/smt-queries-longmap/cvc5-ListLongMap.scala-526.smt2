; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13158 () Bool)

(assert start!13158)

(declare-fun b!115623 () Bool)

(declare-fun b_free!2701 () Bool)

(declare-fun b_next!2701 () Bool)

(assert (=> b!115623 (= b_free!2701 (not b_next!2701))))

(declare-fun tp!10468 () Bool)

(declare-fun b_and!7193 () Bool)

(assert (=> b!115623 (= tp!10468 b_and!7193)))

(declare-fun b!115630 () Bool)

(declare-fun b_free!2703 () Bool)

(declare-fun b_next!2703 () Bool)

(assert (=> b!115630 (= b_free!2703 (not b_next!2703))))

(declare-fun tp!10467 () Bool)

(declare-fun b_and!7195 () Bool)

(assert (=> b!115630 (= tp!10467 b_and!7195)))

(declare-fun b!115619 () Bool)

(declare-fun e!75414 () Bool)

(declare-fun tp_is_empty!2767 () Bool)

(assert (=> b!115619 (= e!75414 tp_is_empty!2767)))

(declare-fun b!115620 () Bool)

(declare-fun e!75416 () Bool)

(declare-fun e!75417 () Bool)

(declare-fun mapRes!4233 () Bool)

(assert (=> b!115620 (= e!75416 (and e!75417 mapRes!4233))))

(declare-fun condMapEmpty!4233 () Bool)

(declare-datatypes ((V!3337 0))(
  ( (V!3338 (val!1428 Int)) )
))
(declare-datatypes ((array!4536 0))(
  ( (array!4537 (arr!2150 (Array (_ BitVec 32) (_ BitVec 64))) (size!2410 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1040 0))(
  ( (ValueCellFull!1040 (v!3022 V!3337)) (EmptyCell!1040) )
))
(declare-datatypes ((array!4538 0))(
  ( (array!4539 (arr!2151 (Array (_ BitVec 32) ValueCell!1040)) (size!2411 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!988 0))(
  ( (LongMapFixedSize!989 (defaultEntry!2703 Int) (mask!6911 (_ BitVec 32)) (extraKeys!2492 (_ BitVec 32)) (zeroValue!2570 V!3337) (minValue!2570 V!3337) (_size!543 (_ BitVec 32)) (_keys!4425 array!4536) (_values!2686 array!4538) (_vacant!543 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!988)

(declare-fun mapDefault!4233 () ValueCell!1040)

