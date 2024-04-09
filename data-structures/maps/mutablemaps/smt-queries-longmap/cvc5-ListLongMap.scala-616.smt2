; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16042 () Bool)

(assert start!16042)

(declare-fun b!159030 () Bool)

(declare-fun b_free!3505 () Bool)

(declare-fun b_next!3505 () Bool)

(assert (=> b!159030 (= b_free!3505 (not b_next!3505))))

(declare-fun tp!13082 () Bool)

(declare-fun b_and!9937 () Bool)

(assert (=> b!159030 (= tp!13082 b_and!9937)))

(declare-fun mapIsEmpty!5645 () Bool)

(declare-fun mapRes!5645 () Bool)

(assert (=> mapIsEmpty!5645 mapRes!5645))

(declare-fun b!159026 () Bool)

(declare-fun res!75107 () Bool)

(declare-fun e!104135 () Bool)

(assert (=> b!159026 (=> (not res!75107) (not e!104135))))

(declare-datatypes ((V!4057 0))(
  ( (V!4058 (val!1698 Int)) )
))
(declare-datatypes ((ValueCell!1310 0))(
  ( (ValueCellFull!1310 (v!3559 V!4057)) (EmptyCell!1310) )
))
(declare-datatypes ((array!5690 0))(
  ( (array!5691 (arr!2690 (Array (_ BitVec 32) (_ BitVec 64))) (size!2974 (_ BitVec 32))) )
))
(declare-datatypes ((array!5692 0))(
  ( (array!5693 (arr!2691 (Array (_ BitVec 32) ValueCell!1310)) (size!2975 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1528 0))(
  ( (LongMapFixedSize!1529 (defaultEntry!3206 Int) (mask!7747 (_ BitVec 32)) (extraKeys!2947 (_ BitVec 32)) (zeroValue!3049 V!4057) (minValue!3049 V!4057) (_size!813 (_ BitVec 32)) (_keys!5005 array!5690) (_values!3189 array!5692) (_vacant!813 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1528)

(declare-datatypes ((List!1909 0))(
  ( (Nil!1906) (Cons!1905 (h!2518 (_ BitVec 64)) (t!6719 List!1909)) )
))
(declare-fun arrayNoDuplicates!0 (array!5690 (_ BitVec 32) List!1909) Bool)

(assert (=> b!159026 (= res!75107 (arrayNoDuplicates!0 (_keys!5005 thiss!1248) #b00000000000000000000000000000000 Nil!1906))))

(declare-fun b!159027 () Bool)

(assert (=> b!159027 (= e!104135 (bvsgt #b00000000000000000000000000000000 (size!2974 (_keys!5005 thiss!1248))))))

(declare-fun mapNonEmpty!5645 () Bool)

(declare-fun tp!13081 () Bool)

(declare-fun e!104138 () Bool)

(assert (=> mapNonEmpty!5645 (= mapRes!5645 (and tp!13081 e!104138))))

(declare-fun mapValue!5645 () ValueCell!1310)

(declare-fun mapKey!5645 () (_ BitVec 32))

(declare-fun mapRest!5645 () (Array (_ BitVec 32) ValueCell!1310))

(assert (=> mapNonEmpty!5645 (= (arr!2691 (_values!3189 thiss!1248)) (store mapRest!5645 mapKey!5645 mapValue!5645))))

(declare-fun b!159028 () Bool)

(declare-fun res!75109 () Bool)

(assert (=> b!159028 (=> (not res!75109) (not e!104135))))

(assert (=> b!159028 (= res!75109 (and (= (size!2975 (_values!3189 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7747 thiss!1248))) (= (size!2974 (_keys!5005 thiss!1248)) (size!2975 (_values!3189 thiss!1248))) (bvsge (mask!7747 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2947 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2947 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!159029 () Bool)

(declare-fun e!104133 () Bool)

(declare-fun e!104134 () Bool)

(assert (=> b!159029 (= e!104133 (and e!104134 mapRes!5645))))

(declare-fun condMapEmpty!5645 () Bool)

(declare-fun mapDefault!5645 () ValueCell!1310)

