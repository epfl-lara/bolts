; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16560 () Bool)

(assert start!16560)

(declare-fun b!164671 () Bool)

(declare-fun b_free!3853 () Bool)

(declare-fun b_next!3853 () Bool)

(assert (=> b!164671 (= b_free!3853 (not b_next!3853))))

(declare-fun tp!14159 () Bool)

(declare-fun b_and!10285 () Bool)

(assert (=> b!164671 (= tp!14159 b_and!10285)))

(declare-fun b!164667 () Bool)

(declare-fun e!108041 () Bool)

(declare-fun e!108046 () Bool)

(declare-fun mapRes!6201 () Bool)

(assert (=> b!164667 (= e!108041 (and e!108046 mapRes!6201))))

(declare-fun condMapEmpty!6201 () Bool)

(declare-datatypes ((V!4521 0))(
  ( (V!4522 (val!1872 Int)) )
))
(declare-datatypes ((ValueCell!1484 0))(
  ( (ValueCellFull!1484 (v!3733 V!4521)) (EmptyCell!1484) )
))
(declare-datatypes ((array!6406 0))(
  ( (array!6407 (arr!3038 (Array (_ BitVec 32) (_ BitVec 64))) (size!3326 (_ BitVec 32))) )
))
(declare-datatypes ((array!6408 0))(
  ( (array!6409 (arr!3039 (Array (_ BitVec 32) ValueCell!1484)) (size!3327 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1876 0))(
  ( (LongMapFixedSize!1877 (defaultEntry!3380 Int) (mask!8077 (_ BitVec 32)) (extraKeys!3121 (_ BitVec 32)) (zeroValue!3223 V!4521) (minValue!3223 V!4521) (_size!987 (_ BitVec 32)) (_keys!5205 array!6406) (_values!3363 array!6408) (_vacant!987 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1876)

(declare-fun mapDefault!6201 () ValueCell!1484)

