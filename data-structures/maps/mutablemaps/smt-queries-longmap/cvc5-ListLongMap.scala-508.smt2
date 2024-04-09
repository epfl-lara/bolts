; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12152 () Bool)

(assert start!12152)

(declare-fun b!102537 () Bool)

(declare-fun b_free!2485 () Bool)

(declare-fun b_next!2485 () Bool)

(assert (=> b!102537 (= b_free!2485 (not b_next!2485))))

(declare-fun tp!9768 () Bool)

(declare-fun b_and!6329 () Bool)

(assert (=> b!102537 (= tp!9768 b_and!6329)))

(declare-fun b!102536 () Bool)

(declare-fun b_free!2487 () Bool)

(declare-fun b_next!2487 () Bool)

(assert (=> b!102536 (= b_free!2487 (not b_next!2487))))

(declare-fun tp!9765 () Bool)

(declare-fun b_and!6331 () Bool)

(assert (=> b!102536 (= tp!9765 b_and!6331)))

(declare-fun b!102535 () Bool)

(declare-fun e!66760 () Bool)

(declare-fun tp_is_empty!2659 () Bool)

(assert (=> b!102535 (= e!66760 tp_is_empty!2659)))

(declare-fun e!66749 () Bool)

(declare-fun e!66754 () Bool)

(declare-datatypes ((V!3193 0))(
  ( (V!3194 (val!1374 Int)) )
))
(declare-datatypes ((array!4304 0))(
  ( (array!4305 (arr!2042 (Array (_ BitVec 32) (_ BitVec 64))) (size!2296 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!986 0))(
  ( (ValueCellFull!986 (v!2860 V!3193)) (EmptyCell!986) )
))
(declare-datatypes ((array!4306 0))(
  ( (array!4307 (arr!2043 (Array (_ BitVec 32) ValueCell!986)) (size!2297 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!880 0))(
  ( (LongMapFixedSize!881 (defaultEntry!2551 Int) (mask!6682 (_ BitVec 32)) (extraKeys!2360 (_ BitVec 32)) (zeroValue!2428 V!3193) (minValue!2428 V!3193) (_size!489 (_ BitVec 32)) (_keys!4253 array!4304) (_values!2534 array!4306) (_vacant!489 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!880)

(declare-fun array_inv!1227 (array!4304) Bool)

(declare-fun array_inv!1228 (array!4306) Bool)

(assert (=> b!102536 (= e!66749 (and tp!9765 tp_is_empty!2659 (array_inv!1227 (_keys!4253 newMap!16)) (array_inv!1228 (_values!2534 newMap!16)) e!66754))))

(declare-fun res!51295 () Bool)

(declare-fun e!66755 () Bool)

(assert (=> start!12152 (=> (not res!51295) (not e!66755))))

(declare-datatypes ((Cell!684 0))(
  ( (Cell!685 (v!2861 LongMapFixedSize!880)) )
))
(declare-datatypes ((LongMap!684 0))(
  ( (LongMap!685 (underlying!353 Cell!684)) )
))
(declare-fun thiss!992 () LongMap!684)

(declare-fun valid!398 (LongMap!684) Bool)

(assert (=> start!12152 (= res!51295 (valid!398 thiss!992))))

(assert (=> start!12152 e!66755))

(declare-fun e!66762 () Bool)

(assert (=> start!12152 e!66762))

(assert (=> start!12152 true))

(assert (=> start!12152 e!66749))

(declare-fun e!66747 () Bool)

(declare-fun e!66759 () Bool)

(assert (=> b!102537 (= e!66747 (and tp!9768 tp_is_empty!2659 (array_inv!1227 (_keys!4253 (v!2861 (underlying!353 thiss!992)))) (array_inv!1228 (_values!2534 (v!2861 (underlying!353 thiss!992)))) e!66759))))

(declare-fun mapIsEmpty!3857 () Bool)

(declare-fun mapRes!3858 () Bool)

(assert (=> mapIsEmpty!3857 mapRes!3858))

(declare-fun b!102538 () Bool)

(declare-fun e!66757 () Bool)

(assert (=> b!102538 (= e!66757 e!66747)))

(declare-fun b!102539 () Bool)

(declare-datatypes ((Unit!3144 0))(
  ( (Unit!3145) )
))
(declare-fun e!66752 () Unit!3144)

(declare-fun Unit!3146 () Unit!3144)

(assert (=> b!102539 (= e!66752 Unit!3146)))

(declare-fun lt!52107 () Unit!3144)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!105 (array!4304 array!4306 (_ BitVec 32) (_ BitVec 32) V!3193 V!3193 (_ BitVec 64) (_ BitVec 32) Int) Unit!3144)

(assert (=> b!102539 (= lt!52107 (lemmaListMapContainsThenArrayContainsFrom!105 (_keys!4253 (v!2861 (underlying!353 thiss!992))) (_values!2534 (v!2861 (underlying!353 thiss!992))) (mask!6682 (v!2861 (underlying!353 thiss!992))) (extraKeys!2360 (v!2861 (underlying!353 thiss!992))) (zeroValue!2428 (v!2861 (underlying!353 thiss!992))) (minValue!2428 (v!2861 (underlying!353 thiss!992))) (select (arr!2042 (_keys!4253 (v!2861 (underlying!353 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2551 (v!2861 (underlying!353 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4304 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!102539 (arrayContainsKey!0 (_keys!4253 (v!2861 (underlying!353 thiss!992))) (select (arr!2042 (_keys!4253 (v!2861 (underlying!353 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!52108 () Unit!3144)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4304 (_ BitVec 32) (_ BitVec 32)) Unit!3144)

(assert (=> b!102539 (= lt!52108 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4253 (v!2861 (underlying!353 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1626 0))(
  ( (Nil!1623) (Cons!1622 (h!2218 (_ BitVec 64)) (t!5672 List!1626)) )
))
(declare-fun arrayNoDuplicates!0 (array!4304 (_ BitVec 32) List!1626) Bool)

(assert (=> b!102539 (arrayNoDuplicates!0 (_keys!4253 (v!2861 (underlying!353 thiss!992))) from!355 Nil!1623)))

(declare-fun lt!52106 () Unit!3144)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4304 (_ BitVec 32) (_ BitVec 64) List!1626) Unit!3144)

(assert (=> b!102539 (= lt!52106 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4253 (v!2861 (underlying!353 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2042 (_keys!4253 (v!2861 (underlying!353 thiss!992)))) from!355) (Cons!1622 (select (arr!2042 (_keys!4253 (v!2861 (underlying!353 thiss!992)))) from!355) Nil!1623)))))

(assert (=> b!102539 false))

(declare-fun mapIsEmpty!3858 () Bool)

(declare-fun mapRes!3857 () Bool)

(assert (=> mapIsEmpty!3858 mapRes!3857))

(declare-fun b!102540 () Bool)

(declare-fun e!66758 () Bool)

(assert (=> b!102540 (= e!66758 tp_is_empty!2659)))

(declare-fun b!102541 () Bool)

(declare-fun Unit!3147 () Unit!3144)

(assert (=> b!102541 (= e!66752 Unit!3147)))

(declare-fun b!102542 () Bool)

(declare-fun e!66750 () Bool)

(assert (=> b!102542 (= e!66750 false)))

(declare-datatypes ((tuple2!2382 0))(
  ( (tuple2!2383 (_1!1201 (_ BitVec 64)) (_2!1201 V!3193)) )
))
(declare-datatypes ((List!1627 0))(
  ( (Nil!1624) (Cons!1623 (h!2219 tuple2!2382) (t!5673 List!1627)) )
))
(declare-datatypes ((ListLongMap!1567 0))(
  ( (ListLongMap!1568 (toList!799 List!1627)) )
))
(declare-fun lt!52104 () ListLongMap!1567)

(declare-fun getCurrentListMapNoExtraKeys!106 (array!4304 array!4306 (_ BitVec 32) (_ BitVec 32) V!3193 V!3193 (_ BitVec 32) Int) ListLongMap!1567)

(assert (=> b!102542 (= lt!52104 (getCurrentListMapNoExtraKeys!106 (_keys!4253 (v!2861 (underlying!353 thiss!992))) (_values!2534 (v!2861 (underlying!353 thiss!992))) (mask!6682 (v!2861 (underlying!353 thiss!992))) (extraKeys!2360 (v!2861 (underlying!353 thiss!992))) (zeroValue!2428 (v!2861 (underlying!353 thiss!992))) (minValue!2428 (v!2861 (underlying!353 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2551 (v!2861 (underlying!353 thiss!992)))))))

(declare-fun b!102543 () Bool)

(declare-fun e!66761 () Bool)

(assert (=> b!102543 (= e!66754 (and e!66761 mapRes!3857))))

(declare-fun condMapEmpty!3857 () Bool)

(declare-fun mapDefault!3858 () ValueCell!986)

