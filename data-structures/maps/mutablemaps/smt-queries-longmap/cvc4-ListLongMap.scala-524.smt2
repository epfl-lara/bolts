; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13150 () Bool)

(assert start!13150)

(declare-fun b!115450 () Bool)

(declare-fun b_free!2685 () Bool)

(declare-fun b_next!2685 () Bool)

(assert (=> b!115450 (= b_free!2685 (not b_next!2685))))

(declare-fun tp!10420 () Bool)

(declare-fun b_and!7177 () Bool)

(assert (=> b!115450 (= tp!10420 b_and!7177)))

(declare-fun b!115464 () Bool)

(declare-fun b_free!2687 () Bool)

(declare-fun b_next!2687 () Bool)

(assert (=> b!115464 (= b_free!2687 (not b_next!2687))))

(declare-fun tp!10419 () Bool)

(declare-fun b_and!7179 () Bool)

(assert (=> b!115464 (= tp!10419 b_and!7179)))

(declare-fun e!75254 () Bool)

(declare-fun e!75255 () Bool)

(declare-datatypes ((V!3325 0))(
  ( (V!3326 (val!1424 Int)) )
))
(declare-datatypes ((array!4520 0))(
  ( (array!4521 (arr!2142 (Array (_ BitVec 32) (_ BitVec 64))) (size!2402 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1036 0))(
  ( (ValueCellFull!1036 (v!3014 V!3325)) (EmptyCell!1036) )
))
(declare-datatypes ((array!4522 0))(
  ( (array!4523 (arr!2143 (Array (_ BitVec 32) ValueCell!1036)) (size!2403 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!980 0))(
  ( (LongMapFixedSize!981 (defaultEntry!2699 Int) (mask!6903 (_ BitVec 32)) (extraKeys!2488 (_ BitVec 32)) (zeroValue!2566 V!3325) (minValue!2566 V!3325) (_size!539 (_ BitVec 32)) (_keys!4421 array!4520) (_values!2682 array!4522) (_vacant!539 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!776 0))(
  ( (Cell!777 (v!3015 LongMapFixedSize!980)) )
))
(declare-datatypes ((LongMap!776 0))(
  ( (LongMap!777 (underlying!399 Cell!776)) )
))
(declare-fun thiss!992 () LongMap!776)

(declare-fun tp_is_empty!2759 () Bool)

(declare-fun array_inv!1297 (array!4520) Bool)

(declare-fun array_inv!1298 (array!4522) Bool)

(assert (=> b!115450 (= e!75255 (and tp!10420 tp_is_empty!2759 (array_inv!1297 (_keys!4421 (v!3015 (underlying!399 thiss!992)))) (array_inv!1298 (_values!2682 (v!3015 (underlying!399 thiss!992)))) e!75254))))

(declare-fun b!115451 () Bool)

(declare-fun e!75253 () Bool)

(assert (=> b!115451 (= e!75253 tp_is_empty!2759)))

(declare-fun b!115452 () Bool)

(declare-fun e!75258 () Bool)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!115452 (= e!75258 (and (or (= (select (arr!2142 (_keys!4421 (v!3015 (underlying!399 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!2142 (_keys!4421 (v!3015 (underlying!399 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsgt from!355 #b00000000000000000000000000000000) (bvsge (bvsub from!355 #b00000000000000000000000000000001) (size!2402 (_keys!4421 (v!3015 (underlying!399 thiss!992)))))))))

(declare-fun mapIsEmpty!4209 () Bool)

(declare-fun mapRes!4210 () Bool)

(assert (=> mapIsEmpty!4209 mapRes!4210))

(declare-fun mapIsEmpty!4210 () Bool)

(declare-fun mapRes!4209 () Bool)

(assert (=> mapIsEmpty!4210 mapRes!4209))

(declare-fun b!115453 () Bool)

(declare-fun e!75250 () Bool)

(declare-fun e!75262 () Bool)

(assert (=> b!115453 (= e!75250 (and e!75262 mapRes!4209))))

(declare-fun condMapEmpty!4209 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!980)

(declare-fun mapDefault!4209 () ValueCell!1036)

