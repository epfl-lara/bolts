; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15814 () Bool)

(assert start!15814)

(declare-fun b!157496 () Bool)

(declare-fun b_free!3445 () Bool)

(declare-fun b_next!3445 () Bool)

(assert (=> b!157496 (= b_free!3445 (not b_next!3445))))

(declare-fun tp!12866 () Bool)

(declare-fun b_and!9877 () Bool)

(assert (=> b!157496 (= tp!12866 b_and!9877)))

(declare-fun mapIsEmpty!5520 () Bool)

(declare-fun mapRes!5520 () Bool)

(assert (=> mapIsEmpty!5520 mapRes!5520))

(declare-fun res!74443 () Bool)

(declare-fun e!103148 () Bool)

(assert (=> start!15814 (=> (not res!74443) (not e!103148))))

(declare-datatypes ((V!3977 0))(
  ( (V!3978 (val!1668 Int)) )
))
(declare-datatypes ((ValueCell!1280 0))(
  ( (ValueCellFull!1280 (v!3529 V!3977)) (EmptyCell!1280) )
))
(declare-datatypes ((array!5550 0))(
  ( (array!5551 (arr!2630 (Array (_ BitVec 32) (_ BitVec 64))) (size!2909 (_ BitVec 32))) )
))
(declare-datatypes ((array!5552 0))(
  ( (array!5553 (arr!2631 (Array (_ BitVec 32) ValueCell!1280)) (size!2910 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1468 0))(
  ( (LongMapFixedSize!1469 (defaultEntry!3176 Int) (mask!7660 (_ BitVec 32)) (extraKeys!2917 (_ BitVec 32)) (zeroValue!3019 V!3977) (minValue!3019 V!3977) (_size!783 (_ BitVec 32)) (_keys!4952 array!5550) (_values!3159 array!5552) (_vacant!783 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1468)

(declare-fun valid!694 (LongMapFixedSize!1468) Bool)

(assert (=> start!15814 (= res!74443 (valid!694 thiss!1248))))

(assert (=> start!15814 e!103148))

(declare-fun e!103147 () Bool)

(assert (=> start!15814 e!103147))

(assert (=> start!15814 true))

(declare-fun b!157491 () Bool)

(declare-fun e!103150 () Bool)

(declare-fun e!103145 () Bool)

(assert (=> b!157491 (= e!103150 (and e!103145 mapRes!5520))))

(declare-fun condMapEmpty!5520 () Bool)

(declare-fun mapDefault!5520 () ValueCell!1280)

