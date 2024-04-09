; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16068 () Bool)

(assert start!16068)

(declare-fun b!159293 () Bool)

(declare-fun b_free!3517 () Bool)

(declare-fun b_next!3517 () Bool)

(assert (=> b!159293 (= b_free!3517 (not b_next!3517))))

(declare-fun tp!13121 () Bool)

(declare-fun b_and!9949 () Bool)

(assert (=> b!159293 (= tp!13121 b_and!9949)))

(declare-fun b!159286 () Bool)

(declare-fun res!75258 () Bool)

(declare-fun e!104283 () Bool)

(assert (=> b!159286 (=> (not res!75258) (not e!104283))))

(declare-datatypes ((V!4073 0))(
  ( (V!4074 (val!1704 Int)) )
))
(declare-datatypes ((ValueCell!1316 0))(
  ( (ValueCellFull!1316 (v!3565 V!4073)) (EmptyCell!1316) )
))
(declare-datatypes ((array!5716 0))(
  ( (array!5717 (arr!2702 (Array (_ BitVec 32) (_ BitVec 64))) (size!2986 (_ BitVec 32))) )
))
(declare-datatypes ((array!5718 0))(
  ( (array!5719 (arr!2703 (Array (_ BitVec 32) ValueCell!1316)) (size!2987 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1540 0))(
  ( (LongMapFixedSize!1541 (defaultEntry!3212 Int) (mask!7760 (_ BitVec 32)) (extraKeys!2953 (_ BitVec 32)) (zeroValue!3055 V!4073) (minValue!3055 V!4073) (_size!819 (_ BitVec 32)) (_keys!5013 array!5716) (_values!3195 array!5718) (_vacant!819 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1540)

(assert (=> b!159286 (= res!75258 (and (= (size!2987 (_values!3195 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7760 thiss!1248))) (= (size!2986 (_keys!5013 thiss!1248)) (size!2987 (_values!3195 thiss!1248))) (bvsge (mask!7760 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2953 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2953 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!159287 () Bool)

(declare-fun res!75260 () Bool)

(assert (=> b!159287 (=> (not res!75260) (not e!104283))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!159287 (= res!75260 (not (= key!828 (bvneg key!828))))))

(declare-fun b!159288 () Bool)

(declare-fun e!104282 () Bool)

(declare-fun tp_is_empty!3319 () Bool)

(assert (=> b!159288 (= e!104282 tp_is_empty!3319)))

(declare-fun b!159289 () Bool)

(declare-fun e!104281 () Bool)

(declare-fun mapRes!5666 () Bool)

(assert (=> b!159289 (= e!104281 (and e!104282 mapRes!5666))))

(declare-fun condMapEmpty!5666 () Bool)

(declare-fun mapDefault!5666 () ValueCell!1316)

