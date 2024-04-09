; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13134 () Bool)

(assert start!13134)

(declare-fun b!115088 () Bool)

(declare-fun b_free!2653 () Bool)

(declare-fun b_next!2653 () Bool)

(assert (=> b!115088 (= b_free!2653 (not b_next!2653))))

(declare-fun tp!10324 () Bool)

(declare-fun b_and!7133 () Bool)

(assert (=> b!115088 (= tp!10324 b_and!7133)))

(declare-fun b!115087 () Bool)

(declare-fun b_free!2655 () Bool)

(declare-fun b_next!2655 () Bool)

(assert (=> b!115087 (= b_free!2655 (not b_next!2655))))

(declare-fun tp!10322 () Bool)

(declare-fun b_and!7135 () Bool)

(assert (=> b!115087 (= tp!10322 b_and!7135)))

(declare-fun b!115080 () Bool)

(declare-fun e!74934 () Bool)

(assert (=> b!115080 (= e!74934 false)))

(declare-datatypes ((Unit!3603 0))(
  ( (Unit!3604) )
))
(declare-fun lt!59999 () Unit!3603)

(declare-fun e!74928 () Unit!3603)

(assert (=> b!115080 (= lt!59999 e!74928)))

(declare-datatypes ((V!3305 0))(
  ( (V!3306 (val!1416 Int)) )
))
(declare-datatypes ((tuple2!2480 0))(
  ( (tuple2!2481 (_1!1250 (_ BitVec 64)) (_2!1250 V!3305)) )
))
(declare-datatypes ((List!1680 0))(
  ( (Nil!1677) (Cons!1676 (h!2276 tuple2!2480) (t!5938 List!1680)) )
))
(declare-datatypes ((ListLongMap!1625 0))(
  ( (ListLongMap!1626 (toList!828 List!1680)) )
))
(declare-fun lt!60003 () ListLongMap!1625)

(declare-datatypes ((array!4488 0))(
  ( (array!4489 (arr!2126 (Array (_ BitVec 32) (_ BitVec 64))) (size!2386 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1028 0))(
  ( (ValueCellFull!1028 (v!2999 V!3305)) (EmptyCell!1028) )
))
(declare-datatypes ((array!4490 0))(
  ( (array!4491 (arr!2127 (Array (_ BitVec 32) ValueCell!1028)) (size!2387 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!964 0))(
  ( (LongMapFixedSize!965 (defaultEntry!2691 Int) (mask!6891 (_ BitVec 32)) (extraKeys!2480 (_ BitVec 32)) (zeroValue!2558 V!3305) (minValue!2558 V!3305) (_size!531 (_ BitVec 32)) (_keys!4413 array!4488) (_values!2674 array!4490) (_vacant!531 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!762 0))(
  ( (Cell!763 (v!3000 LongMapFixedSize!964)) )
))
(declare-datatypes ((LongMap!762 0))(
  ( (LongMap!763 (underlying!392 Cell!762)) )
))
(declare-fun thiss!992 () LongMap!762)

(declare-fun c!20563 () Bool)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!856 (ListLongMap!1625 (_ BitVec 64)) Bool)

(assert (=> b!115080 (= c!20563 (contains!856 lt!60003 (select (arr!2126 (_keys!4413 (v!3000 (underlying!392 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!964)

(declare-datatypes ((tuple2!2482 0))(
  ( (tuple2!2483 (_1!1251 Bool) (_2!1251 LongMapFixedSize!964)) )
))
(declare-fun lt!60000 () tuple2!2482)

(declare-fun update!173 (LongMapFixedSize!964 (_ BitVec 64) V!3305) tuple2!2482)

(declare-fun get!1394 (ValueCell!1028 V!3305) V!3305)

(declare-fun dynLambda!404 (Int (_ BitVec 64)) V!3305)

(assert (=> b!115080 (= lt!60000 (update!173 newMap!16 (select (arr!2126 (_keys!4413 (v!3000 (underlying!392 thiss!992)))) from!355) (get!1394 (select (arr!2127 (_values!2674 (v!3000 (underlying!392 thiss!992)))) from!355) (dynLambda!404 (defaultEntry!2691 (v!3000 (underlying!392 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!115081 () Bool)

(declare-fun e!74936 () Bool)

(declare-fun e!74935 () Bool)

(declare-fun mapRes!4161 () Bool)

(assert (=> b!115081 (= e!74936 (and e!74935 mapRes!4161))))

(declare-fun condMapEmpty!4161 () Bool)

(declare-fun mapDefault!4162 () ValueCell!1028)

