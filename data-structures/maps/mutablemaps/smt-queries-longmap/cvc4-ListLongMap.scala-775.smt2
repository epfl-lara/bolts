; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18344 () Bool)

(assert start!18344)

(declare-fun b!181964 () Bool)

(declare-fun b_free!4493 () Bool)

(declare-fun b_next!4493 () Bool)

(assert (=> b!181964 (= b_free!4493 (not b_next!4493))))

(declare-fun tp!16234 () Bool)

(declare-fun b_and!11067 () Bool)

(assert (=> b!181964 (= tp!16234 b_and!11067)))

(declare-fun e!119855 () Bool)

(declare-fun tp_is_empty!4265 () Bool)

(declare-datatypes ((V!5333 0))(
  ( (V!5334 (val!2177 Int)) )
))
(declare-datatypes ((ValueCell!1789 0))(
  ( (ValueCellFull!1789 (v!4071 V!5333)) (EmptyCell!1789) )
))
(declare-datatypes ((array!7712 0))(
  ( (array!7713 (arr!3648 (Array (_ BitVec 32) (_ BitVec 64))) (size!3959 (_ BitVec 32))) )
))
(declare-datatypes ((array!7714 0))(
  ( (array!7715 (arr!3649 (Array (_ BitVec 32) ValueCell!1789)) (size!3960 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2486 0))(
  ( (LongMapFixedSize!2487 (defaultEntry!3727 Int) (mask!8760 (_ BitVec 32)) (extraKeys!3464 (_ BitVec 32)) (zeroValue!3568 V!5333) (minValue!3568 V!5333) (_size!1292 (_ BitVec 32)) (_keys!5634 array!7712) (_values!3710 array!7714) (_vacant!1292 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2486)

(declare-fun e!119853 () Bool)

(declare-fun array_inv!2341 (array!7712) Bool)

(declare-fun array_inv!2342 (array!7714) Bool)

(assert (=> b!181964 (= e!119853 (and tp!16234 tp_is_empty!4265 (array_inv!2341 (_keys!5634 thiss!1248)) (array_inv!2342 (_values!3710 thiss!1248)) e!119855))))

(declare-fun b!181965 () Bool)

(declare-fun e!119852 () Bool)

(declare-fun mapRes!7315 () Bool)

(assert (=> b!181965 (= e!119855 (and e!119852 mapRes!7315))))

(declare-fun condMapEmpty!7315 () Bool)

(declare-fun mapDefault!7315 () ValueCell!1789)

