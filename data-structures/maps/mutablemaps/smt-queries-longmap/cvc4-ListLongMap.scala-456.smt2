; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8364 () Bool)

(assert start!8364)

(declare-fun b!55694 () Bool)

(declare-fun b_free!1869 () Bool)

(declare-fun b_next!1869 () Bool)

(assert (=> b!55694 (= b_free!1869 (not b_next!1869))))

(declare-fun tp!7709 () Bool)

(declare-fun b_and!3289 () Bool)

(assert (=> b!55694 (= tp!7709 b_and!3289)))

(declare-fun b!55699 () Bool)

(declare-fun b_free!1871 () Bool)

(declare-fun b_next!1871 () Bool)

(assert (=> b!55699 (= b_free!1871 (not b_next!1871))))

(declare-fun tp!7707 () Bool)

(declare-fun b_and!3291 () Bool)

(assert (=> b!55699 (= tp!7707 b_and!3291)))

(declare-fun b!55688 () Bool)

(declare-fun res!31351 () Bool)

(declare-fun e!36603 () Bool)

(assert (=> b!55688 (=> (not res!31351) (not e!36603))))

(declare-datatypes ((V!2781 0))(
  ( (V!2782 (val!1220 Int)) )
))
(declare-datatypes ((array!3624 0))(
  ( (array!3625 (arr!1734 (Array (_ BitVec 32) (_ BitVec 64))) (size!1963 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!832 0))(
  ( (ValueCellFull!832 (v!2322 V!2781)) (EmptyCell!832) )
))
(declare-datatypes ((array!3626 0))(
  ( (array!3627 (arr!1735 (Array (_ BitVec 32) ValueCell!832)) (size!1964 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!572 0))(
  ( (LongMapFixedSize!573 (defaultEntry!2000 Int) (mask!5859 (_ BitVec 32)) (extraKeys!1891 (_ BitVec 32)) (zeroValue!1918 V!2781) (minValue!1918 V!2781) (_size!335 (_ BitVec 32)) (_keys!3620 array!3624) (_values!1983 array!3626) (_vacant!335 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!572)

(declare-datatypes ((Cell!382 0))(
  ( (Cell!383 (v!2323 LongMapFixedSize!572)) )
))
(declare-datatypes ((LongMap!382 0))(
  ( (LongMap!383 (underlying!202 Cell!382)) )
))
(declare-fun thiss!992 () LongMap!382)

(assert (=> b!55688 (= res!31351 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5859 newMap!16)) (_size!335 (v!2323 (underlying!202 thiss!992)))))))

(declare-fun mapIsEmpty!2723 () Bool)

(declare-fun mapRes!2724 () Bool)

(assert (=> mapIsEmpty!2723 mapRes!2724))

(declare-fun b!55689 () Bool)

(declare-fun e!36611 () Bool)

(declare-fun e!36615 () Bool)

(assert (=> b!55689 (= e!36611 e!36615)))

(declare-fun b!55690 () Bool)

(declare-fun e!36612 () Bool)

(declare-fun e!36610 () Bool)

(assert (=> b!55690 (= e!36612 (not e!36610))))

(declare-fun res!31349 () Bool)

(assert (=> b!55690 (=> res!31349 e!36610)))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!55690 (= res!31349 (or (bvsge (size!1963 (_keys!3620 (v!2323 (underlying!202 thiss!992)))) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!1963 (_keys!3620 (v!2323 (underlying!202 thiss!992)))))))))

(declare-datatypes ((List!1419 0))(
  ( (Nil!1416) (Cons!1415 (h!1995 (_ BitVec 64)) (t!4665 List!1419)) )
))
(declare-fun lt!22015 () List!1419)

(assert (=> b!55690 (= lt!22015 (Cons!1415 (select (arr!1734 (_keys!3620 (v!2323 (underlying!202 thiss!992)))) from!355) Nil!1416))))

(declare-fun arrayNoDuplicates!0 (array!3624 (_ BitVec 32) List!1419) Bool)

(assert (=> b!55690 (arrayNoDuplicates!0 (_keys!3620 (v!2323 (underlying!202 thiss!992))) from!355 Nil!1416)))

(declare-datatypes ((Unit!1450 0))(
  ( (Unit!1451) )
))
(declare-fun lt!22014 () Unit!1450)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3624 (_ BitVec 32) (_ BitVec 32)) Unit!1450)

(assert (=> b!55690 (= lt!22014 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3620 (v!2323 (underlying!202 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!3624 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!55690 (arrayContainsKey!0 (_keys!3620 (v!2323 (underlying!202 thiss!992))) (select (arr!1734 (_keys!3620 (v!2323 (underlying!202 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!22017 () Unit!1450)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!14 (array!3624 array!3626 (_ BitVec 32) (_ BitVec 32) V!2781 V!2781 (_ BitVec 64) (_ BitVec 32) Int) Unit!1450)

(assert (=> b!55690 (= lt!22017 (lemmaListMapContainsThenArrayContainsFrom!14 (_keys!3620 (v!2323 (underlying!202 thiss!992))) (_values!1983 (v!2323 (underlying!202 thiss!992))) (mask!5859 (v!2323 (underlying!202 thiss!992))) (extraKeys!1891 (v!2323 (underlying!202 thiss!992))) (zeroValue!1918 (v!2323 (underlying!202 thiss!992))) (minValue!1918 (v!2323 (underlying!202 thiss!992))) (select (arr!1734 (_keys!3620 (v!2323 (underlying!202 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2000 (v!2323 (underlying!202 thiss!992)))))))

(declare-fun mapNonEmpty!2723 () Bool)

(declare-fun mapRes!2723 () Bool)

(declare-fun tp!7708 () Bool)

(declare-fun e!36613 () Bool)

(assert (=> mapNonEmpty!2723 (= mapRes!2723 (and tp!7708 e!36613))))

(declare-fun mapKey!2723 () (_ BitVec 32))

(declare-fun mapValue!2724 () ValueCell!832)

(declare-fun mapRest!2724 () (Array (_ BitVec 32) ValueCell!832))

(assert (=> mapNonEmpty!2723 (= (arr!1735 (_values!1983 (v!2323 (underlying!202 thiss!992)))) (store mapRest!2724 mapKey!2723 mapValue!2724))))

(declare-fun b!55691 () Bool)

(declare-fun e!36609 () Bool)

(assert (=> b!55691 (= e!36609 e!36612)))

(declare-fun res!31348 () Bool)

(assert (=> b!55691 (=> (not res!31348) (not e!36612))))

(declare-datatypes ((tuple2!1982 0))(
  ( (tuple2!1983 (_1!1001 (_ BitVec 64)) (_2!1001 V!2781)) )
))
(declare-datatypes ((List!1420 0))(
  ( (Nil!1417) (Cons!1416 (h!1996 tuple2!1982) (t!4666 List!1420)) )
))
(declare-datatypes ((ListLongMap!1343 0))(
  ( (ListLongMap!1344 (toList!687 List!1420)) )
))
(declare-fun lt!22016 () ListLongMap!1343)

(declare-fun contains!662 (ListLongMap!1343 (_ BitVec 64)) Bool)

(assert (=> b!55691 (= res!31348 (contains!662 lt!22016 (select (arr!1734 (_keys!3620 (v!2323 (underlying!202 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1984 0))(
  ( (tuple2!1985 (_1!1002 Bool) (_2!1002 LongMapFixedSize!572)) )
))
(declare-fun lt!22018 () tuple2!1984)

(declare-fun update!69 (LongMapFixedSize!572 (_ BitVec 64) V!2781) tuple2!1984)

(declare-fun get!1044 (ValueCell!832 V!2781) V!2781)

(declare-fun dynLambda!297 (Int (_ BitVec 64)) V!2781)

(assert (=> b!55691 (= lt!22018 (update!69 newMap!16 (select (arr!1734 (_keys!3620 (v!2323 (underlying!202 thiss!992)))) from!355) (get!1044 (select (arr!1735 (_values!1983 (v!2323 (underlying!202 thiss!992)))) from!355) (dynLambda!297 (defaultEntry!2000 (v!2323 (underlying!202 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!55692 () Bool)

(declare-fun tp_is_empty!2351 () Bool)

(assert (=> b!55692 (= e!36613 tp_is_empty!2351)))

(declare-fun b!55693 () Bool)

(declare-fun e!36617 () Bool)

(assert (=> b!55693 (= e!36617 tp_is_empty!2351)))

(declare-fun e!36602 () Bool)

(declare-fun array_inv!1015 (array!3624) Bool)

(declare-fun array_inv!1016 (array!3626) Bool)

(assert (=> b!55694 (= e!36615 (and tp!7709 tp_is_empty!2351 (array_inv!1015 (_keys!3620 (v!2323 (underlying!202 thiss!992)))) (array_inv!1016 (_values!1983 (v!2323 (underlying!202 thiss!992)))) e!36602))))

(declare-fun b!55696 () Bool)

(declare-fun res!31343 () Bool)

(assert (=> b!55696 (=> (not res!31343) (not e!36603))))

(declare-fun valid!225 (LongMapFixedSize!572) Bool)

(assert (=> b!55696 (= res!31343 (valid!225 newMap!16))))

(declare-fun b!55697 () Bool)

(declare-fun e!36608 () Bool)

(assert (=> b!55697 (= e!36608 tp_is_empty!2351)))

(declare-fun b!55698 () Bool)

(declare-fun e!36614 () Bool)

(assert (=> b!55698 (= e!36602 (and e!36614 mapRes!2723))))

(declare-fun condMapEmpty!2724 () Bool)

(declare-fun mapDefault!2724 () ValueCell!832)

