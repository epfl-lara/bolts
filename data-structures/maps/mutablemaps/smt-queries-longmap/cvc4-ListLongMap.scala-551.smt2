; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14686 () Bool)

(assert start!14686)

(declare-fun b!139087 () Bool)

(declare-fun b_free!3009 () Bool)

(declare-fun b_next!3009 () Bool)

(assert (=> b!139087 (= b_free!3009 (not b_next!3009))))

(declare-fun tp!11495 () Bool)

(declare-fun b_and!8697 () Bool)

(assert (=> b!139087 (= tp!11495 b_and!8697)))

(declare-fun b!139084 () Bool)

(declare-fun b_free!3011 () Bool)

(declare-fun b_next!3011 () Bool)

(assert (=> b!139084 (= b_free!3011 (not b_next!3011))))

(declare-fun tp!11494 () Bool)

(declare-fun b_and!8699 () Bool)

(assert (=> b!139084 (= tp!11494 b_and!8699)))

(declare-fun mapNonEmpty!4799 () Bool)

(declare-fun mapRes!4799 () Bool)

(declare-fun tp!11493 () Bool)

(declare-fun e!90678 () Bool)

(assert (=> mapNonEmpty!4799 (= mapRes!4799 (and tp!11493 e!90678))))

(declare-datatypes ((V!3541 0))(
  ( (V!3542 (val!1505 Int)) )
))
(declare-datatypes ((array!4874 0))(
  ( (array!4875 (arr!2304 (Array (_ BitVec 32) (_ BitVec 64))) (size!2576 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1117 0))(
  ( (ValueCellFull!1117 (v!3267 V!3541)) (EmptyCell!1117) )
))
(declare-datatypes ((array!4876 0))(
  ( (array!4877 (arr!2305 (Array (_ BitVec 32) ValueCell!1117)) (size!2577 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1142 0))(
  ( (LongMapFixedSize!1143 (defaultEntry!2933 Int) (mask!7269 (_ BitVec 32)) (extraKeys!2688 (_ BitVec 32)) (zeroValue!2783 V!3541) (minValue!2783 V!3541) (_size!620 (_ BitVec 32)) (_keys!4692 array!4874) (_values!2916 array!4876) (_vacant!620 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!930 0))(
  ( (Cell!931 (v!3268 LongMapFixedSize!1142)) )
))
(declare-datatypes ((LongMap!930 0))(
  ( (LongMap!931 (underlying!476 Cell!930)) )
))
(declare-fun thiss!992 () LongMap!930)

(declare-fun mapKey!4799 () (_ BitVec 32))

(declare-fun mapRest!4799 () (Array (_ BitVec 32) ValueCell!1117))

(declare-fun mapValue!4800 () ValueCell!1117)

(assert (=> mapNonEmpty!4799 (= (arr!2305 (_values!2916 (v!3268 (underlying!476 thiss!992)))) (store mapRest!4799 mapKey!4799 mapValue!4800))))

(declare-fun b!139072 () Bool)

(declare-fun e!90679 () Bool)

(assert (=> b!139072 (= e!90679 (not (bvslt (size!2576 (_keys!4692 (v!3268 (underlying!476 thiss!992)))) #b01111111111111111111111111111111)))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((List!1756 0))(
  ( (Nil!1753) (Cons!1752 (h!2359 (_ BitVec 64)) (t!6332 List!1756)) )
))
(declare-fun arrayNoDuplicates!0 (array!4874 (_ BitVec 32) List!1756) Bool)

(assert (=> b!139072 (arrayNoDuplicates!0 (_keys!4692 (v!3268 (underlying!476 thiss!992))) from!355 Nil!1753)))

(declare-datatypes ((Unit!4387 0))(
  ( (Unit!4388) )
))
(declare-fun lt!72824 () Unit!4387)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4874 (_ BitVec 32) (_ BitVec 32)) Unit!4387)

(assert (=> b!139072 (= lt!72824 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4692 (v!3268 (underlying!476 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!4874 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!139072 (arrayContainsKey!0 (_keys!4692 (v!3268 (underlying!476 thiss!992))) (select (arr!2304 (_keys!4692 (v!3268 (underlying!476 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!72822 () Unit!4387)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!142 (array!4874 array!4876 (_ BitVec 32) (_ BitVec 32) V!3541 V!3541 (_ BitVec 64) (_ BitVec 32) Int) Unit!4387)

(assert (=> b!139072 (= lt!72822 (lemmaListMapContainsThenArrayContainsFrom!142 (_keys!4692 (v!3268 (underlying!476 thiss!992))) (_values!2916 (v!3268 (underlying!476 thiss!992))) (mask!7269 (v!3268 (underlying!476 thiss!992))) (extraKeys!2688 (v!3268 (underlying!476 thiss!992))) (zeroValue!2783 (v!3268 (underlying!476 thiss!992))) (minValue!2783 (v!3268 (underlying!476 thiss!992))) (select (arr!2304 (_keys!4692 (v!3268 (underlying!476 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2933 (v!3268 (underlying!476 thiss!992)))))))

(declare-fun b!139073 () Bool)

(declare-fun e!90684 () Bool)

(assert (=> b!139073 (= e!90684 e!90679)))

(declare-fun res!66564 () Bool)

(assert (=> b!139073 (=> (not res!66564) (not e!90679))))

(declare-datatypes ((tuple2!2666 0))(
  ( (tuple2!2667 (_1!1343 (_ BitVec 64)) (_2!1343 V!3541)) )
))
(declare-datatypes ((List!1757 0))(
  ( (Nil!1754) (Cons!1753 (h!2360 tuple2!2666) (t!6333 List!1757)) )
))
(declare-datatypes ((ListLongMap!1737 0))(
  ( (ListLongMap!1738 (toList!884 List!1757)) )
))
(declare-fun lt!72821 () ListLongMap!1737)

(declare-fun contains!916 (ListLongMap!1737 (_ BitVec 64)) Bool)

(assert (=> b!139073 (= res!66564 (contains!916 lt!72821 (select (arr!2304 (_keys!4692 (v!3268 (underlying!476 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!1142)

(declare-datatypes ((tuple2!2668 0))(
  ( (tuple2!2669 (_1!1344 Bool) (_2!1344 LongMapFixedSize!1142)) )
))
(declare-fun lt!72825 () tuple2!2668)

(declare-fun update!206 (LongMapFixedSize!1142 (_ BitVec 64) V!3541) tuple2!2668)

(declare-fun get!1525 (ValueCell!1117 V!3541) V!3541)

(declare-fun dynLambda!439 (Int (_ BitVec 64)) V!3541)

(assert (=> b!139073 (= lt!72825 (update!206 newMap!16 (select (arr!2304 (_keys!4692 (v!3268 (underlying!476 thiss!992)))) from!355) (get!1525 (select (arr!2305 (_values!2916 (v!3268 (underlying!476 thiss!992)))) from!355) (dynLambda!439 (defaultEntry!2933 (v!3268 (underlying!476 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!139074 () Bool)

(declare-fun e!90687 () Bool)

(declare-fun e!90683 () Bool)

(assert (=> b!139074 (= e!90687 (and e!90683 mapRes!4799))))

(declare-fun condMapEmpty!4800 () Bool)

(declare-fun mapDefault!4799 () ValueCell!1117)

