; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10146 () Bool)

(assert start!10146)

(declare-fun b!77068 () Bool)

(declare-fun b_free!2157 () Bool)

(declare-fun b_next!2157 () Bool)

(assert (=> b!77068 (= b_free!2157 (not b_next!2157))))

(declare-fun tp!8668 () Bool)

(declare-fun b_and!4709 () Bool)

(assert (=> b!77068 (= tp!8668 b_and!4709)))

(declare-fun b!77071 () Bool)

(declare-fun b_free!2159 () Bool)

(declare-fun b_next!2159 () Bool)

(assert (=> b!77071 (= b_free!2159 (not b_next!2159))))

(declare-fun tp!8670 () Bool)

(declare-fun b_and!4711 () Bool)

(assert (=> b!77071 (= tp!8670 b_and!4711)))

(declare-fun b!77060 () Bool)

(declare-fun e!50329 () Bool)

(declare-fun tp_is_empty!2495 () Bool)

(assert (=> b!77060 (= e!50329 tp_is_empty!2495)))

(declare-fun b!77061 () Bool)

(declare-datatypes ((Unit!2235 0))(
  ( (Unit!2236) )
))
(declare-fun e!50330 () Unit!2235)

(declare-fun Unit!2237 () Unit!2235)

(assert (=> b!77061 (= e!50330 Unit!2237)))

(declare-fun b!77062 () Bool)

(declare-fun Unit!2238 () Unit!2235)

(assert (=> b!77062 (= e!50330 Unit!2238)))

(declare-fun lt!35180 () Unit!2235)

(declare-datatypes ((V!2973 0))(
  ( (V!2974 (val!1292 Int)) )
))
(declare-datatypes ((array!3940 0))(
  ( (array!3941 (arr!1878 (Array (_ BitVec 32) (_ BitVec 64))) (size!2119 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!904 0))(
  ( (ValueCellFull!904 (v!2575 V!2973)) (EmptyCell!904) )
))
(declare-datatypes ((array!3942 0))(
  ( (array!3943 (arr!1879 (Array (_ BitVec 32) ValueCell!904)) (size!2120 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!716 0))(
  ( (LongMapFixedSize!717 (defaultEntry!2261 Int) (mask!6250 (_ BitVec 32)) (extraKeys!2112 (_ BitVec 32)) (zeroValue!2159 V!2973) (minValue!2159 V!2973) (_size!407 (_ BitVec 32)) (_keys!3921 array!3940) (_values!2244 array!3942) (_vacant!407 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!524 0))(
  ( (Cell!525 (v!2576 LongMapFixedSize!716)) )
))
(declare-datatypes ((LongMap!524 0))(
  ( (LongMap!525 (underlying!273 Cell!524)) )
))
(declare-fun thiss!992 () LongMap!524)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!58 (array!3940 array!3942 (_ BitVec 32) (_ BitVec 32) V!2973 V!2973 (_ BitVec 64) (_ BitVec 32) Int) Unit!2235)

(assert (=> b!77062 (= lt!35180 (lemmaListMapContainsThenArrayContainsFrom!58 (_keys!3921 (v!2576 (underlying!273 thiss!992))) (_values!2244 (v!2576 (underlying!273 thiss!992))) (mask!6250 (v!2576 (underlying!273 thiss!992))) (extraKeys!2112 (v!2576 (underlying!273 thiss!992))) (zeroValue!2159 (v!2576 (underlying!273 thiss!992))) (minValue!2159 (v!2576 (underlying!273 thiss!992))) (select (arr!1878 (_keys!3921 (v!2576 (underlying!273 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2261 (v!2576 (underlying!273 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3940 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!77062 (arrayContainsKey!0 (_keys!3921 (v!2576 (underlying!273 thiss!992))) (select (arr!1878 (_keys!3921 (v!2576 (underlying!273 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!35178 () Unit!2235)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3940 (_ BitVec 32) (_ BitVec 32)) Unit!2235)

(assert (=> b!77062 (= lt!35178 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3921 (v!2576 (underlying!273 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1521 0))(
  ( (Nil!1518) (Cons!1517 (h!2105 (_ BitVec 64)) (t!5139 List!1521)) )
))
(declare-fun arrayNoDuplicates!0 (array!3940 (_ BitVec 32) List!1521) Bool)

(assert (=> b!77062 (arrayNoDuplicates!0 (_keys!3921 (v!2576 (underlying!273 thiss!992))) from!355 Nil!1518)))

(declare-fun lt!35174 () Unit!2235)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3940 (_ BitVec 32) (_ BitVec 64) List!1521) Unit!2235)

(assert (=> b!77062 (= lt!35174 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3921 (v!2576 (underlying!273 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1878 (_keys!3921 (v!2576 (underlying!273 thiss!992)))) from!355) (Cons!1517 (select (arr!1878 (_keys!3921 (v!2576 (underlying!273 thiss!992)))) from!355) Nil!1518)))))

(assert (=> b!77062 false))

(declare-fun mapIsEmpty!3251 () Bool)

(declare-fun mapRes!3252 () Bool)

(assert (=> mapIsEmpty!3251 mapRes!3252))

(declare-fun b!77063 () Bool)

(declare-fun e!50337 () Bool)

(declare-fun e!50339 () Bool)

(assert (=> b!77063 (= e!50337 e!50339)))

(declare-fun b!77064 () Bool)

(declare-fun res!40508 () Bool)

(declare-fun e!50324 () Bool)

(assert (=> b!77064 (=> res!40508 e!50324)))

(assert (=> b!77064 (= res!40508 (not (arrayNoDuplicates!0 (_keys!3921 (v!2576 (underlying!273 thiss!992))) #b00000000000000000000000000000000 Nil!1518)))))

(declare-fun b!77065 () Bool)

(declare-fun res!40509 () Bool)

(declare-fun e!50334 () Bool)

(assert (=> b!77065 (=> (not res!40509) (not e!50334))))

(assert (=> b!77065 (= res!40509 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2119 (_keys!3921 (v!2576 (underlying!273 thiss!992)))))))))

(declare-fun res!40504 () Bool)

(assert (=> start!10146 (=> (not res!40504) (not e!50334))))

(declare-fun valid!304 (LongMap!524) Bool)

(assert (=> start!10146 (= res!40504 (valid!304 thiss!992))))

(assert (=> start!10146 e!50334))

(assert (=> start!10146 e!50337))

(assert (=> start!10146 true))

(declare-fun e!50341 () Bool)

(assert (=> start!10146 e!50341))

(declare-fun b!77066 () Bool)

(declare-fun e!50325 () Bool)

(assert (=> b!77066 (= e!50325 tp_is_empty!2495)))

(declare-fun b!77067 () Bool)

(declare-fun e!50328 () Bool)

(assert (=> b!77067 (= e!50328 (and e!50329 mapRes!3252))))

(declare-fun condMapEmpty!3252 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!716)

(declare-fun mapDefault!3252 () ValueCell!904)

