; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10362 () Bool)

(assert start!10362)

(declare-fun b!80335 () Bool)

(declare-fun b_free!2205 () Bool)

(declare-fun b_next!2205 () Bool)

(assert (=> b!80335 (= b_free!2205 (not b_next!2205))))

(declare-fun tp!8823 () Bool)

(declare-fun b_and!4909 () Bool)

(assert (=> b!80335 (= tp!8823 b_and!4909)))

(declare-fun b!80325 () Bool)

(declare-fun b_free!2207 () Bool)

(declare-fun b_next!2207 () Bool)

(assert (=> b!80325 (= b_free!2207 (not b_next!2207))))

(declare-fun tp!8825 () Bool)

(declare-fun b_and!4911 () Bool)

(assert (=> b!80325 (= tp!8825 b_and!4911)))

(declare-fun mapNonEmpty!3335 () Bool)

(declare-fun mapRes!3335 () Bool)

(declare-fun tp!8826 () Bool)

(declare-fun e!52492 () Bool)

(assert (=> mapNonEmpty!3335 (= mapRes!3335 (and tp!8826 e!52492))))

(declare-datatypes ((V!3005 0))(
  ( (V!3006 (val!1304 Int)) )
))
(declare-datatypes ((ValueCell!916 0))(
  ( (ValueCellFull!916 (v!2611 V!3005)) (EmptyCell!916) )
))
(declare-fun mapValue!3335 () ValueCell!916)

(declare-fun mapKey!3336 () (_ BitVec 32))

(declare-fun mapRest!3336 () (Array (_ BitVec 32) ValueCell!916))

(declare-datatypes ((array!3992 0))(
  ( (array!3993 (arr!1902 (Array (_ BitVec 32) (_ BitVec 64))) (size!2144 (_ BitVec 32))) )
))
(declare-datatypes ((array!3994 0))(
  ( (array!3995 (arr!1903 (Array (_ BitVec 32) ValueCell!916)) (size!2145 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!740 0))(
  ( (LongMapFixedSize!741 (defaultEntry!2294 Int) (mask!6300 (_ BitVec 32)) (extraKeys!2141 (_ BitVec 32)) (zeroValue!2190 V!3005) (minValue!2190 V!3005) (_size!419 (_ BitVec 32)) (_keys!3958 array!3992) (_values!2277 array!3994) (_vacant!419 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!548 0))(
  ( (Cell!549 (v!2612 LongMapFixedSize!740)) )
))
(declare-datatypes ((LongMap!548 0))(
  ( (LongMap!549 (underlying!285 Cell!548)) )
))
(declare-fun thiss!992 () LongMap!548)

(assert (=> mapNonEmpty!3335 (= (arr!1903 (_values!2277 (v!2612 (underlying!285 thiss!992)))) (store mapRest!3336 mapKey!3336 mapValue!3335))))

(declare-fun b!80318 () Bool)

(declare-fun e!52491 () Bool)

(declare-fun e!52486 () Bool)

(assert (=> b!80318 (= e!52491 e!52486)))

(declare-fun b!80319 () Bool)

(declare-fun res!41849 () Bool)

(declare-fun e!52496 () Bool)

(assert (=> b!80319 (=> (not res!41849) (not e!52496))))

(declare-fun newMap!16 () LongMapFixedSize!740)

(assert (=> b!80319 (= res!41849 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6300 newMap!16)) (_size!419 (v!2612 (underlying!285 thiss!992)))))))

(declare-fun b!80320 () Bool)

(declare-fun e!52485 () Bool)

(declare-fun tp_is_empty!2519 () Bool)

(assert (=> b!80320 (= e!52485 tp_is_empty!2519)))

(declare-fun b!80321 () Bool)

(declare-fun e!52500 () Bool)

(declare-fun e!52495 () Bool)

(assert (=> b!80321 (= e!52500 e!52495)))

(declare-fun res!41851 () Bool)

(assert (=> b!80321 (=> (not res!41851) (not e!52495))))

(declare-datatypes ((tuple2!2204 0))(
  ( (tuple2!2205 (_1!1112 Bool) (_2!1112 LongMapFixedSize!740)) )
))
(declare-fun lt!37247 () tuple2!2204)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!80321 (= res!41851 (and (_1!1112 lt!37247) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!2354 0))(
  ( (Unit!2355) )
))
(declare-fun lt!37255 () Unit!2354)

(declare-fun e!52493 () Unit!2354)

(assert (=> b!80321 (= lt!37255 e!52493)))

(declare-datatypes ((tuple2!2206 0))(
  ( (tuple2!2207 (_1!1113 (_ BitVec 64)) (_2!1113 V!3005)) )
))
(declare-datatypes ((List!1540 0))(
  ( (Nil!1537) (Cons!1536 (h!2125 tuple2!2206) (t!5215 List!1540)) )
))
(declare-datatypes ((ListLongMap!1473 0))(
  ( (ListLongMap!1474 (toList!752 List!1540)) )
))
(declare-fun lt!37248 () ListLongMap!1473)

(declare-fun c!12542 () Bool)

(declare-fun contains!751 (ListLongMap!1473 (_ BitVec 64)) Bool)

(assert (=> b!80321 (= c!12542 (contains!751 lt!37248 (select (arr!1902 (_keys!3958 (v!2612 (underlying!285 thiss!992)))) from!355)))))

(declare-fun lt!37249 () V!3005)

(declare-fun update!115 (LongMapFixedSize!740 (_ BitVec 64) V!3005) tuple2!2204)

(assert (=> b!80321 (= lt!37247 (update!115 newMap!16 (select (arr!1902 (_keys!3958 (v!2612 (underlying!285 thiss!992)))) from!355) lt!37249))))

(declare-fun b!80322 () Bool)

(declare-fun Unit!2356 () Unit!2354)

(assert (=> b!80322 (= e!52493 Unit!2356)))

(declare-fun lt!37246 () Unit!2354)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!67 (array!3992 array!3994 (_ BitVec 32) (_ BitVec 32) V!3005 V!3005 (_ BitVec 64) (_ BitVec 32) Int) Unit!2354)

(assert (=> b!80322 (= lt!37246 (lemmaListMapContainsThenArrayContainsFrom!67 (_keys!3958 (v!2612 (underlying!285 thiss!992))) (_values!2277 (v!2612 (underlying!285 thiss!992))) (mask!6300 (v!2612 (underlying!285 thiss!992))) (extraKeys!2141 (v!2612 (underlying!285 thiss!992))) (zeroValue!2190 (v!2612 (underlying!285 thiss!992))) (minValue!2190 (v!2612 (underlying!285 thiss!992))) (select (arr!1902 (_keys!3958 (v!2612 (underlying!285 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2294 (v!2612 (underlying!285 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3992 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!80322 (arrayContainsKey!0 (_keys!3958 (v!2612 (underlying!285 thiss!992))) (select (arr!1902 (_keys!3958 (v!2612 (underlying!285 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!37242 () Unit!2354)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3992 (_ BitVec 32) (_ BitVec 32)) Unit!2354)

(assert (=> b!80322 (= lt!37242 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3958 (v!2612 (underlying!285 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1541 0))(
  ( (Nil!1538) (Cons!1537 (h!2126 (_ BitVec 64)) (t!5216 List!1541)) )
))
(declare-fun arrayNoDuplicates!0 (array!3992 (_ BitVec 32) List!1541) Bool)

(assert (=> b!80322 (arrayNoDuplicates!0 (_keys!3958 (v!2612 (underlying!285 thiss!992))) from!355 Nil!1538)))

(declare-fun lt!37243 () Unit!2354)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3992 (_ BitVec 32) (_ BitVec 64) List!1541) Unit!2354)

(assert (=> b!80322 (= lt!37243 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3958 (v!2612 (underlying!285 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1902 (_keys!3958 (v!2612 (underlying!285 thiss!992)))) from!355) (Cons!1537 (select (arr!1902 (_keys!3958 (v!2612 (underlying!285 thiss!992)))) from!355) Nil!1538)))))

(assert (=> b!80322 false))

(declare-fun b!80323 () Bool)

(declare-fun res!41845 () Bool)

(assert (=> b!80323 (=> (not res!41845) (not e!52496))))

(assert (=> b!80323 (= res!41845 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2144 (_keys!3958 (v!2612 (underlying!285 thiss!992)))))))))

(declare-fun res!41850 () Bool)

(assert (=> start!10362 (=> (not res!41850) (not e!52496))))

(declare-fun valid!318 (LongMap!548) Bool)

(assert (=> start!10362 (= res!41850 (valid!318 thiss!992))))

(assert (=> start!10362 e!52496))

(declare-fun e!52488 () Bool)

(assert (=> start!10362 e!52488))

(assert (=> start!10362 true))

(declare-fun e!52499 () Bool)

(assert (=> start!10362 e!52499))

(declare-fun b!80324 () Bool)

(declare-fun e!52484 () Bool)

(assert (=> b!80324 (= e!52484 (or (not (= (size!2145 (_values!2277 (v!2612 (underlying!285 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6300 (v!2612 (underlying!285 thiss!992)))))) (= (size!2144 (_keys!3958 (v!2612 (underlying!285 thiss!992)))) (size!2145 (_values!2277 (v!2612 (underlying!285 thiss!992)))))))))

(declare-fun mapIsEmpty!3335 () Bool)

(assert (=> mapIsEmpty!3335 mapRes!3335))

(declare-fun e!52490 () Bool)

(declare-fun array_inv!1135 (array!3992) Bool)

(declare-fun array_inv!1136 (array!3994) Bool)

(assert (=> b!80325 (= e!52499 (and tp!8825 tp_is_empty!2519 (array_inv!1135 (_keys!3958 newMap!16)) (array_inv!1136 (_values!2277 newMap!16)) e!52490))))

(declare-fun b!80326 () Bool)

(declare-fun e!52483 () Bool)

(declare-fun mapRes!3336 () Bool)

(assert (=> b!80326 (= e!52490 (and e!52483 mapRes!3336))))

(declare-fun condMapEmpty!3335 () Bool)

(declare-fun mapDefault!3335 () ValueCell!916)

