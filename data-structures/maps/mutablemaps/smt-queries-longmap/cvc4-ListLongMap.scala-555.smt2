; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14986 () Bool)

(assert start!14986)

(declare-fun b!144106 () Bool)

(declare-fun b_free!3057 () Bool)

(declare-fun b_next!3057 () Bool)

(assert (=> b!144106 (= b_free!3057 (not b_next!3057))))

(declare-fun tp!11657 () Bool)

(declare-fun b_and!9005 () Bool)

(assert (=> b!144106 (= tp!11657 b_and!9005)))

(declare-fun b!144103 () Bool)

(declare-fun b_free!3059 () Bool)

(declare-fun b_next!3059 () Bool)

(assert (=> b!144103 (= b_free!3059 (not b_next!3059))))

(declare-fun tp!11658 () Bool)

(declare-fun b_and!9007 () Bool)

(assert (=> b!144103 (= tp!11658 b_and!9007)))

(declare-fun mapIsEmpty!4891 () Bool)

(declare-fun mapRes!4892 () Bool)

(assert (=> mapIsEmpty!4891 mapRes!4892))

(declare-fun b!144091 () Bool)

(declare-fun e!93923 () Bool)

(declare-fun e!93928 () Bool)

(assert (=> b!144091 (= e!93923 e!93928)))

(declare-fun mapIsEmpty!4892 () Bool)

(declare-fun mapRes!4891 () Bool)

(assert (=> mapIsEmpty!4892 mapRes!4891))

(declare-fun b!144092 () Bool)

(declare-fun e!93919 () Bool)

(declare-fun e!93927 () Bool)

(assert (=> b!144092 (= e!93919 (not e!93927))))

(declare-fun res!68631 () Bool)

(assert (=> b!144092 (=> res!68631 e!93927)))

(declare-datatypes ((V!3573 0))(
  ( (V!3574 (val!1517 Int)) )
))
(declare-datatypes ((array!4928 0))(
  ( (array!4929 (arr!2328 (Array (_ BitVec 32) (_ BitVec 64))) (size!2602 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1129 0))(
  ( (ValueCellFull!1129 (v!3309 V!3573)) (EmptyCell!1129) )
))
(declare-datatypes ((array!4930 0))(
  ( (array!4931 (arr!2329 (Array (_ BitVec 32) ValueCell!1129)) (size!2603 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1166 0))(
  ( (LongMapFixedSize!1167 (defaultEntry!2977 Int) (mask!7335 (_ BitVec 32)) (extraKeys!2726 (_ BitVec 32)) (zeroValue!2824 V!3573) (minValue!2824 V!3573) (_size!632 (_ BitVec 32)) (_keys!4742 array!4928) (_values!2960 array!4930) (_vacant!632 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!952 0))(
  ( (Cell!953 (v!3310 LongMapFixedSize!1166)) )
))
(declare-datatypes ((LongMap!952 0))(
  ( (LongMap!953 (underlying!487 Cell!952)) )
))
(declare-fun thiss!992 () LongMap!952)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!144092 (= res!68631 (or (bvsge (size!2602 (_keys!4742 (v!3310 (underlying!487 thiss!992)))) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2602 (_keys!4742 (v!3310 (underlying!487 thiss!992)))))))))

(declare-datatypes ((List!1773 0))(
  ( (Nil!1770) (Cons!1769 (h!2377 (_ BitVec 64)) (t!6414 List!1773)) )
))
(declare-fun lt!75590 () List!1773)

(assert (=> b!144092 (= lt!75590 (Cons!1769 (select (arr!2328 (_keys!4742 (v!3310 (underlying!487 thiss!992)))) from!355) Nil!1770))))

(declare-fun arrayNoDuplicates!0 (array!4928 (_ BitVec 32) List!1773) Bool)

(assert (=> b!144092 (arrayNoDuplicates!0 (_keys!4742 (v!3310 (underlying!487 thiss!992))) from!355 Nil!1770)))

(declare-datatypes ((Unit!4573 0))(
  ( (Unit!4574) )
))
(declare-fun lt!75589 () Unit!4573)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4928 (_ BitVec 32) (_ BitVec 32)) Unit!4573)

(assert (=> b!144092 (= lt!75589 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4742 (v!3310 (underlying!487 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!4928 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!144092 (arrayContainsKey!0 (_keys!4742 (v!3310 (underlying!487 thiss!992))) (select (arr!2328 (_keys!4742 (v!3310 (underlying!487 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!75587 () Unit!4573)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!148 (array!4928 array!4930 (_ BitVec 32) (_ BitVec 32) V!3573 V!3573 (_ BitVec 64) (_ BitVec 32) Int) Unit!4573)

(assert (=> b!144092 (= lt!75587 (lemmaListMapContainsThenArrayContainsFrom!148 (_keys!4742 (v!3310 (underlying!487 thiss!992))) (_values!2960 (v!3310 (underlying!487 thiss!992))) (mask!7335 (v!3310 (underlying!487 thiss!992))) (extraKeys!2726 (v!3310 (underlying!487 thiss!992))) (zeroValue!2824 (v!3310 (underlying!487 thiss!992))) (minValue!2824 (v!3310 (underlying!487 thiss!992))) (select (arr!2328 (_keys!4742 (v!3310 (underlying!487 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2977 (v!3310 (underlying!487 thiss!992)))))))

(declare-fun b!144093 () Bool)

(declare-fun e!93929 () Bool)

(declare-fun e!93933 () Bool)

(assert (=> b!144093 (= e!93929 e!93933)))

(declare-fun res!68630 () Bool)

(assert (=> b!144093 (=> (not res!68630) (not e!93933))))

(declare-datatypes ((tuple2!2698 0))(
  ( (tuple2!2699 (_1!1359 (_ BitVec 64)) (_2!1359 V!3573)) )
))
(declare-datatypes ((List!1774 0))(
  ( (Nil!1771) (Cons!1770 (h!2378 tuple2!2698) (t!6415 List!1774)) )
))
(declare-datatypes ((ListLongMap!1755 0))(
  ( (ListLongMap!1756 (toList!893 List!1774)) )
))
(declare-fun lt!75588 () ListLongMap!1755)

(declare-fun lt!75591 () ListLongMap!1755)

(assert (=> b!144093 (= res!68630 (and (= lt!75591 lt!75588) (not (= (select (arr!2328 (_keys!4742 (v!3310 (underlying!487 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2328 (_keys!4742 (v!3310 (underlying!487 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!1166)

(declare-fun map!1446 (LongMapFixedSize!1166) ListLongMap!1755)

(assert (=> b!144093 (= lt!75588 (map!1446 newMap!16))))

(declare-fun getCurrentListMap!559 (array!4928 array!4930 (_ BitVec 32) (_ BitVec 32) V!3573 V!3573 (_ BitVec 32) Int) ListLongMap!1755)

(assert (=> b!144093 (= lt!75591 (getCurrentListMap!559 (_keys!4742 (v!3310 (underlying!487 thiss!992))) (_values!2960 (v!3310 (underlying!487 thiss!992))) (mask!7335 (v!3310 (underlying!487 thiss!992))) (extraKeys!2726 (v!3310 (underlying!487 thiss!992))) (zeroValue!2824 (v!3310 (underlying!487 thiss!992))) (minValue!2824 (v!3310 (underlying!487 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2977 (v!3310 (underlying!487 thiss!992)))))))

(declare-fun b!144094 () Bool)

(declare-fun e!93931 () Bool)

(declare-fun tp_is_empty!2945 () Bool)

(assert (=> b!144094 (= e!93931 tp_is_empty!2945)))

(declare-fun b!144095 () Bool)

(declare-fun e!93918 () Bool)

(assert (=> b!144095 (= e!93918 tp_is_empty!2945)))

(declare-fun b!144096 () Bool)

(declare-fun e!93925 () Bool)

(assert (=> b!144096 (= e!93927 e!93925)))

(declare-fun res!68627 () Bool)

(assert (=> b!144096 (=> (not res!68627) (not e!93925))))

(declare-fun contains!930 (List!1773 (_ BitVec 64)) Bool)

(assert (=> b!144096 (= res!68627 (not (contains!930 lt!75590 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!144097 () Bool)

(assert (=> b!144097 (= e!93925 (not (contains!930 lt!75590 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!144098 () Bool)

(declare-fun res!68629 () Bool)

(assert (=> b!144098 (=> (not res!68629) (not e!93929))))

(declare-fun valid!564 (LongMapFixedSize!1166) Bool)

(assert (=> b!144098 (= res!68629 (valid!564 newMap!16))))

(declare-fun mapNonEmpty!4891 () Bool)

(declare-fun tp!11659 () Bool)

(declare-fun e!93920 () Bool)

(assert (=> mapNonEmpty!4891 (= mapRes!4891 (and tp!11659 e!93920))))

(declare-fun mapRest!4891 () (Array (_ BitVec 32) ValueCell!1129))

(declare-fun mapKey!4891 () (_ BitVec 32))

(declare-fun mapValue!4891 () ValueCell!1129)

(assert (=> mapNonEmpty!4891 (= (arr!2329 (_values!2960 newMap!16)) (store mapRest!4891 mapKey!4891 mapValue!4891))))

(declare-fun b!144099 () Bool)

(declare-fun e!93924 () Bool)

(assert (=> b!144099 (= e!93928 e!93924)))

(declare-fun res!68625 () Bool)

(assert (=> start!14986 (=> (not res!68625) (not e!93929))))

(declare-fun valid!565 (LongMap!952) Bool)

(assert (=> start!14986 (= res!68625 (valid!565 thiss!992))))

(assert (=> start!14986 e!93929))

(assert (=> start!14986 e!93923))

(assert (=> start!14986 true))

(declare-fun e!93921 () Bool)

(assert (=> start!14986 e!93921))

(declare-fun mapNonEmpty!4892 () Bool)

(declare-fun tp!11660 () Bool)

(assert (=> mapNonEmpty!4892 (= mapRes!4892 (and tp!11660 e!93918))))

(declare-fun mapKey!4892 () (_ BitVec 32))

(declare-fun mapRest!4892 () (Array (_ BitVec 32) ValueCell!1129))

(declare-fun mapValue!4892 () ValueCell!1129)

(assert (=> mapNonEmpty!4892 (= (arr!2329 (_values!2960 (v!3310 (underlying!487 thiss!992)))) (store mapRest!4892 mapKey!4892 mapValue!4892))))

(declare-fun b!144100 () Bool)

(declare-fun e!93932 () Bool)

(declare-fun e!93934 () Bool)

(assert (=> b!144100 (= e!93932 (and e!93934 mapRes!4891))))

(declare-fun condMapEmpty!4892 () Bool)

(declare-fun mapDefault!4891 () ValueCell!1129)

