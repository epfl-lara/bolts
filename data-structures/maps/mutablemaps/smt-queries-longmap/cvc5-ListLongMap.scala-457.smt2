; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8366 () Bool)

(assert start!8366)

(declare-fun b!55759 () Bool)

(declare-fun b_free!1873 () Bool)

(declare-fun b_next!1873 () Bool)

(assert (=> b!55759 (= b_free!1873 (not b_next!1873))))

(declare-fun tp!7719 () Bool)

(declare-fun b_and!3297 () Bool)

(assert (=> b!55759 (= tp!7719 b_and!3297)))

(declare-fun b!55762 () Bool)

(declare-fun b_free!1875 () Bool)

(declare-fun b_next!1875 () Bool)

(assert (=> b!55762 (= b_free!1875 (not b_next!1875))))

(declare-fun tp!7720 () Bool)

(declare-fun b_and!3299 () Bool)

(assert (=> b!55762 (= tp!7720 b_and!3299)))

(declare-fun b!55753 () Bool)

(declare-fun res!31379 () Bool)

(declare-fun e!36651 () Bool)

(assert (=> b!55753 (=> (not res!31379) (not e!36651))))

(declare-datatypes ((V!2785 0))(
  ( (V!2786 (val!1221 Int)) )
))
(declare-datatypes ((array!3628 0))(
  ( (array!3629 (arr!1736 (Array (_ BitVec 32) (_ BitVec 64))) (size!1965 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!833 0))(
  ( (ValueCellFull!833 (v!2324 V!2785)) (EmptyCell!833) )
))
(declare-datatypes ((array!3630 0))(
  ( (array!3631 (arr!1737 (Array (_ BitVec 32) ValueCell!833)) (size!1966 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!574 0))(
  ( (LongMapFixedSize!575 (defaultEntry!2001 Int) (mask!5862 (_ BitVec 32)) (extraKeys!1892 (_ BitVec 32)) (zeroValue!1919 V!2785) (minValue!1919 V!2785) (_size!336 (_ BitVec 32)) (_keys!3621 array!3628) (_values!1984 array!3630) (_vacant!336 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!574)

(declare-fun valid!226 (LongMapFixedSize!574) Bool)

(assert (=> b!55753 (= res!31379 (valid!226 newMap!16))))

(declare-fun b!55754 () Bool)

(declare-fun res!31376 () Bool)

(declare-fun e!36661 () Bool)

(assert (=> b!55754 (=> res!31376 e!36661)))

(declare-datatypes ((List!1421 0))(
  ( (Nil!1418) (Cons!1417 (h!1997 (_ BitVec 64)) (t!4671 List!1421)) )
))
(declare-fun lt!22038 () List!1421)

(declare-fun contains!663 (List!1421 (_ BitVec 64)) Bool)

(assert (=> b!55754 (= res!31376 (contains!663 lt!22038 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!55755 () Bool)

(declare-fun res!31382 () Bool)

(assert (=> b!55755 (=> (not res!31382) (not e!36651))))

(declare-datatypes ((Cell!384 0))(
  ( (Cell!385 (v!2325 LongMapFixedSize!574)) )
))
(declare-datatypes ((LongMap!384 0))(
  ( (LongMap!385 (underlying!203 Cell!384)) )
))
(declare-fun thiss!992 () LongMap!384)

(assert (=> b!55755 (= res!31382 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5862 newMap!16)) (_size!336 (v!2325 (underlying!203 thiss!992)))))))

(declare-fun mapIsEmpty!2729 () Bool)

(declare-fun mapRes!2729 () Bool)

(assert (=> mapIsEmpty!2729 mapRes!2729))

(declare-fun b!55756 () Bool)

(assert (=> b!55756 (= e!36661 true)))

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lt!22039 () Bool)

(assert (=> b!55756 (= lt!22039 (contains!663 lt!22038 (select (arr!1736 (_keys!3621 (v!2325 (underlying!203 thiss!992)))) from!355)))))

(declare-fun b!55757 () Bool)

(declare-fun res!31377 () Bool)

(assert (=> b!55757 (=> res!31377 e!36661)))

(assert (=> b!55757 (= res!31377 (contains!663 lt!22038 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!55758 () Bool)

(declare-fun e!36664 () Bool)

(declare-fun e!36662 () Bool)

(assert (=> b!55758 (= e!36664 e!36662)))

(declare-fun res!31380 () Bool)

(assert (=> b!55758 (=> (not res!31380) (not e!36662))))

(declare-datatypes ((tuple2!1986 0))(
  ( (tuple2!1987 (_1!1003 (_ BitVec 64)) (_2!1003 V!2785)) )
))
(declare-datatypes ((List!1422 0))(
  ( (Nil!1419) (Cons!1418 (h!1998 tuple2!1986) (t!4672 List!1422)) )
))
(declare-datatypes ((ListLongMap!1345 0))(
  ( (ListLongMap!1346 (toList!688 List!1422)) )
))
(declare-fun lt!22034 () ListLongMap!1345)

(declare-fun contains!664 (ListLongMap!1345 (_ BitVec 64)) Bool)

(assert (=> b!55758 (= res!31380 (contains!664 lt!22034 (select (arr!1736 (_keys!3621 (v!2325 (underlying!203 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1988 0))(
  ( (tuple2!1989 (_1!1004 Bool) (_2!1004 LongMapFixedSize!574)) )
))
(declare-fun lt!22035 () tuple2!1988)

(declare-fun update!70 (LongMapFixedSize!574 (_ BitVec 64) V!2785) tuple2!1988)

(declare-fun get!1047 (ValueCell!833 V!2785) V!2785)

(declare-fun dynLambda!298 (Int (_ BitVec 64)) V!2785)

(assert (=> b!55758 (= lt!22035 (update!70 newMap!16 (select (arr!1736 (_keys!3621 (v!2325 (underlying!203 thiss!992)))) from!355) (get!1047 (select (arr!1737 (_values!1984 (v!2325 (underlying!203 thiss!992)))) from!355) (dynLambda!298 (defaultEntry!2001 (v!2325 (underlying!203 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!36660 () Bool)

(declare-fun tp_is_empty!2353 () Bool)

(declare-fun e!36656 () Bool)

(declare-fun array_inv!1017 (array!3628) Bool)

(declare-fun array_inv!1018 (array!3630) Bool)

(assert (=> b!55759 (= e!36660 (and tp!7719 tp_is_empty!2353 (array_inv!1017 (_keys!3621 (v!2325 (underlying!203 thiss!992)))) (array_inv!1018 (_values!1984 (v!2325 (underlying!203 thiss!992)))) e!36656))))

(declare-fun b!55760 () Bool)

(assert (=> b!55760 (= e!36662 (not e!36661))))

(declare-fun res!31384 () Bool)

(assert (=> b!55760 (=> res!31384 e!36661)))

(assert (=> b!55760 (= res!31384 (or (bvsge (size!1965 (_keys!3621 (v!2325 (underlying!203 thiss!992)))) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!1965 (_keys!3621 (v!2325 (underlying!203 thiss!992)))))))))

(assert (=> b!55760 (= lt!22038 (Cons!1417 (select (arr!1736 (_keys!3621 (v!2325 (underlying!203 thiss!992)))) from!355) Nil!1418))))

(declare-fun arrayNoDuplicates!0 (array!3628 (_ BitVec 32) List!1421) Bool)

(assert (=> b!55760 (arrayNoDuplicates!0 (_keys!3621 (v!2325 (underlying!203 thiss!992))) from!355 Nil!1418)))

(declare-datatypes ((Unit!1452 0))(
  ( (Unit!1453) )
))
(declare-fun lt!22036 () Unit!1452)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3628 (_ BitVec 32) (_ BitVec 32)) Unit!1452)

(assert (=> b!55760 (= lt!22036 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3621 (v!2325 (underlying!203 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!3628 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!55760 (arrayContainsKey!0 (_keys!3621 (v!2325 (underlying!203 thiss!992))) (select (arr!1736 (_keys!3621 (v!2325 (underlying!203 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!22033 () Unit!1452)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!15 (array!3628 array!3630 (_ BitVec 32) (_ BitVec 32) V!2785 V!2785 (_ BitVec 64) (_ BitVec 32) Int) Unit!1452)

(assert (=> b!55760 (= lt!22033 (lemmaListMapContainsThenArrayContainsFrom!15 (_keys!3621 (v!2325 (underlying!203 thiss!992))) (_values!1984 (v!2325 (underlying!203 thiss!992))) (mask!5862 (v!2325 (underlying!203 thiss!992))) (extraKeys!1892 (v!2325 (underlying!203 thiss!992))) (zeroValue!1919 (v!2325 (underlying!203 thiss!992))) (minValue!1919 (v!2325 (underlying!203 thiss!992))) (select (arr!1736 (_keys!3621 (v!2325 (underlying!203 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2001 (v!2325 (underlying!203 thiss!992)))))))

(declare-fun e!36665 () Bool)

(declare-fun e!36650 () Bool)

(assert (=> b!55762 (= e!36650 (and tp!7720 tp_is_empty!2353 (array_inv!1017 (_keys!3621 newMap!16)) (array_inv!1018 (_values!1984 newMap!16)) e!36665))))

(declare-fun mapIsEmpty!2730 () Bool)

(declare-fun mapRes!2730 () Bool)

(assert (=> mapIsEmpty!2730 mapRes!2730))

(declare-fun mapNonEmpty!2729 () Bool)

(declare-fun tp!7721 () Bool)

(declare-fun e!36657 () Bool)

(assert (=> mapNonEmpty!2729 (= mapRes!2729 (and tp!7721 e!36657))))

(declare-fun mapKey!2730 () (_ BitVec 32))

(declare-fun mapValue!2729 () ValueCell!833)

(declare-fun mapRest!2730 () (Array (_ BitVec 32) ValueCell!833))

(assert (=> mapNonEmpty!2729 (= (arr!1737 (_values!1984 newMap!16)) (store mapRest!2730 mapKey!2730 mapValue!2729))))

(declare-fun b!55763 () Bool)

(assert (=> b!55763 (= e!36657 tp_is_empty!2353)))

(declare-fun b!55764 () Bool)

(declare-fun e!36659 () Bool)

(assert (=> b!55764 (= e!36659 e!36660)))

(declare-fun b!55765 () Bool)

(declare-fun e!36663 () Bool)

(assert (=> b!55765 (= e!36663 tp_is_empty!2353)))

(declare-fun b!55766 () Bool)

(declare-fun e!36658 () Bool)

(assert (=> b!55766 (= e!36656 (and e!36658 mapRes!2730))))

(declare-fun condMapEmpty!2730 () Bool)

(declare-fun mapDefault!2730 () ValueCell!833)

