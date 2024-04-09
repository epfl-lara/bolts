; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9768 () Bool)

(assert start!9768)

(declare-fun b!72948 () Bool)

(declare-fun b_free!2121 () Bool)

(declare-fun b_next!2121 () Bool)

(assert (=> b!72948 (= b_free!2121 (not b_next!2121))))

(declare-fun tp!8540 () Bool)

(declare-fun b_and!4481 () Bool)

(assert (=> b!72948 (= tp!8540 b_and!4481)))

(declare-fun b!72945 () Bool)

(declare-fun b_free!2123 () Bool)

(declare-fun b_next!2123 () Bool)

(assert (=> b!72945 (= b_free!2123 (not b_next!2123))))

(declare-fun tp!8539 () Bool)

(declare-fun b_and!4483 () Bool)

(assert (=> b!72945 (= tp!8539 b_and!4483)))

(declare-fun b!72937 () Bool)

(declare-datatypes ((Unit!2090 0))(
  ( (Unit!2091) )
))
(declare-fun e!47750 () Unit!2090)

(declare-fun Unit!2092 () Unit!2090)

(assert (=> b!72937 (= e!47750 Unit!2092)))

(declare-fun lt!32515 () Unit!2090)

(declare-datatypes ((V!2949 0))(
  ( (V!2950 (val!1283 Int)) )
))
(declare-datatypes ((array!3898 0))(
  ( (array!3899 (arr!1860 (Array (_ BitVec 32) (_ BitVec 64))) (size!2098 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!895 0))(
  ( (ValueCellFull!895 (v!2534 V!2949)) (EmptyCell!895) )
))
(declare-datatypes ((array!3900 0))(
  ( (array!3901 (arr!1861 (Array (_ BitVec 32) ValueCell!895)) (size!2099 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!698 0))(
  ( (LongMapFixedSize!699 (defaultEntry!2214 Int) (mask!6181 (_ BitVec 32)) (extraKeys!2073 (_ BitVec 32)) (zeroValue!2116 V!2949) (minValue!2116 V!2949) (_size!398 (_ BitVec 32)) (_keys!3866 array!3898) (_values!2197 array!3900) (_vacant!398 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!508 0))(
  ( (Cell!509 (v!2535 LongMapFixedSize!698)) )
))
(declare-datatypes ((LongMap!508 0))(
  ( (LongMap!509 (underlying!265 Cell!508)) )
))
(declare-fun thiss!992 () LongMap!508)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!52 (array!3898 array!3900 (_ BitVec 32) (_ BitVec 32) V!2949 V!2949 (_ BitVec 64) (_ BitVec 32) Int) Unit!2090)

(assert (=> b!72937 (= lt!32515 (lemmaListMapContainsThenArrayContainsFrom!52 (_keys!3866 (v!2535 (underlying!265 thiss!992))) (_values!2197 (v!2535 (underlying!265 thiss!992))) (mask!6181 (v!2535 (underlying!265 thiss!992))) (extraKeys!2073 (v!2535 (underlying!265 thiss!992))) (zeroValue!2116 (v!2535 (underlying!265 thiss!992))) (minValue!2116 (v!2535 (underlying!265 thiss!992))) (select (arr!1860 (_keys!3866 (v!2535 (underlying!265 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2214 (v!2535 (underlying!265 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3898 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!72937 (arrayContainsKey!0 (_keys!3866 (v!2535 (underlying!265 thiss!992))) (select (arr!1860 (_keys!3866 (v!2535 (underlying!265 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!32507 () Unit!2090)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3898 (_ BitVec 32) (_ BitVec 32)) Unit!2090)

(assert (=> b!72937 (= lt!32507 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3866 (v!2535 (underlying!265 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1509 0))(
  ( (Nil!1506) (Cons!1505 (h!2092 (_ BitVec 64)) (t!5074 List!1509)) )
))
(declare-fun arrayNoDuplicates!0 (array!3898 (_ BitVec 32) List!1509) Bool)

(assert (=> b!72937 (arrayNoDuplicates!0 (_keys!3866 (v!2535 (underlying!265 thiss!992))) from!355 Nil!1506)))

(declare-fun lt!32518 () Unit!2090)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3898 (_ BitVec 32) (_ BitVec 64) List!1509) Unit!2090)

(assert (=> b!72937 (= lt!32518 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3866 (v!2535 (underlying!265 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1860 (_keys!3866 (v!2535 (underlying!265 thiss!992)))) from!355) (Cons!1505 (select (arr!1860 (_keys!3866 (v!2535 (underlying!265 thiss!992)))) from!355) Nil!1506)))))

(assert (=> b!72937 false))

(declare-fun b!72938 () Bool)

(declare-fun res!38717 () Bool)

(declare-fun e!47747 () Bool)

(assert (=> b!72938 (=> (not res!38717) (not e!47747))))

(declare-fun newMap!16 () LongMapFixedSize!698)

(assert (=> b!72938 (= res!38717 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6181 newMap!16)) (_size!398 (v!2535 (underlying!265 thiss!992)))))))

(declare-fun b!72939 () Bool)

(declare-fun res!38716 () Bool)

(assert (=> b!72939 (=> (not res!38716) (not e!47747))))

(declare-fun valid!293 (LongMapFixedSize!698) Bool)

(assert (=> b!72939 (= res!38716 (valid!293 newMap!16))))

(declare-fun b!72940 () Bool)

(declare-fun e!47758 () Bool)

(declare-fun tp_is_empty!2477 () Bool)

(assert (=> b!72940 (= e!47758 tp_is_empty!2477)))

(declare-fun b!72941 () Bool)

(declare-fun e!47752 () Bool)

(assert (=> b!72941 (= e!47752 tp_is_empty!2477)))

(declare-fun mapIsEmpty!3177 () Bool)

(declare-fun mapRes!3178 () Bool)

(assert (=> mapIsEmpty!3177 mapRes!3178))

(declare-fun b!72942 () Bool)

(declare-fun e!47756 () Bool)

(declare-fun e!47754 () Bool)

(assert (=> b!72942 (= e!47756 e!47754)))

(declare-fun res!38715 () Bool)

(assert (=> b!72942 (=> (not res!38715) (not e!47754))))

(assert (=> b!72942 (= res!38715 (and (not (= (select (arr!1860 (_keys!3866 (v!2535 (underlying!265 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1860 (_keys!3866 (v!2535 (underlying!265 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!32513 () V!2949)

(declare-fun get!1155 (ValueCell!895 V!2949) V!2949)

(declare-fun dynLambda!335 (Int (_ BitVec 64)) V!2949)

(assert (=> b!72942 (= lt!32513 (get!1155 (select (arr!1861 (_values!2197 (v!2535 (underlying!265 thiss!992)))) from!355) (dynLambda!335 (defaultEntry!2214 (v!2535 (underlying!265 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!72943 () Bool)

(declare-fun e!47751 () Bool)

(declare-fun e!47753 () Bool)

(assert (=> b!72943 (= e!47751 e!47753)))

(declare-fun b!72944 () Bool)

(declare-fun e!47746 () Bool)

(declare-fun e!47745 () Bool)

(assert (=> b!72944 (= e!47746 (not e!47745))))

(declare-fun res!38720 () Bool)

(assert (=> b!72944 (=> res!38720 e!47745)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!72944 (= res!38720 (not (validMask!0 (mask!6181 (v!2535 (underlying!265 thiss!992))))))))

(declare-datatypes ((tuple2!2150 0))(
  ( (tuple2!2151 (_1!1085 (_ BitVec 64)) (_2!1085 V!2949)) )
))
(declare-datatypes ((List!1510 0))(
  ( (Nil!1507) (Cons!1506 (h!2093 tuple2!2150) (t!5075 List!1510)) )
))
(declare-datatypes ((ListLongMap!1441 0))(
  ( (ListLongMap!1442 (toList!736 List!1510)) )
))
(declare-fun lt!32517 () ListLongMap!1441)

(declare-fun lt!32508 () tuple2!2150)

(declare-fun lt!32512 () tuple2!2150)

(declare-fun +!99 (ListLongMap!1441 tuple2!2150) ListLongMap!1441)

(assert (=> b!72944 (= (+!99 (+!99 lt!32517 lt!32508) lt!32512) (+!99 (+!99 lt!32517 lt!32512) lt!32508))))

(assert (=> b!72944 (= lt!32512 (tuple2!2151 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2116 (v!2535 (underlying!265 thiss!992)))))))

(assert (=> b!72944 (= lt!32508 (tuple2!2151 (select (arr!1860 (_keys!3866 (v!2535 (underlying!265 thiss!992)))) from!355) lt!32513))))

(declare-fun lt!32511 () Unit!2090)

(declare-fun addCommutativeForDiffKeys!18 (ListLongMap!1441 (_ BitVec 64) V!2949 (_ BitVec 64) V!2949) Unit!2090)

(assert (=> b!72944 (= lt!32511 (addCommutativeForDiffKeys!18 lt!32517 (select (arr!1860 (_keys!3866 (v!2535 (underlying!265 thiss!992)))) from!355) lt!32513 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2116 (v!2535 (underlying!265 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!63 (array!3898 array!3900 (_ BitVec 32) (_ BitVec 32) V!2949 V!2949 (_ BitVec 32) Int) ListLongMap!1441)

(assert (=> b!72944 (= lt!32517 (getCurrentListMapNoExtraKeys!63 (_keys!3866 (v!2535 (underlying!265 thiss!992))) (_values!2197 (v!2535 (underlying!265 thiss!992))) (mask!6181 (v!2535 (underlying!265 thiss!992))) (extraKeys!2073 (v!2535 (underlying!265 thiss!992))) (zeroValue!2116 (v!2535 (underlying!265 thiss!992))) (minValue!2116 (v!2535 (underlying!265 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2214 (v!2535 (underlying!265 thiss!992)))))))

(declare-fun b!72946 () Bool)

(assert (=> b!72946 (= e!47747 e!47756)))

(declare-fun res!38714 () Bool)

(assert (=> b!72946 (=> (not res!38714) (not e!47756))))

(declare-fun lt!32514 () ListLongMap!1441)

(declare-fun lt!32509 () ListLongMap!1441)

(assert (=> b!72946 (= res!38714 (= lt!32514 lt!32509))))

(declare-fun map!1159 (LongMapFixedSize!698) ListLongMap!1441)

(assert (=> b!72946 (= lt!32509 (map!1159 newMap!16))))

(declare-fun getCurrentListMap!427 (array!3898 array!3900 (_ BitVec 32) (_ BitVec 32) V!2949 V!2949 (_ BitVec 32) Int) ListLongMap!1441)

(assert (=> b!72946 (= lt!32514 (getCurrentListMap!427 (_keys!3866 (v!2535 (underlying!265 thiss!992))) (_values!2197 (v!2535 (underlying!265 thiss!992))) (mask!6181 (v!2535 (underlying!265 thiss!992))) (extraKeys!2073 (v!2535 (underlying!265 thiss!992))) (zeroValue!2116 (v!2535 (underlying!265 thiss!992))) (minValue!2116 (v!2535 (underlying!265 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2214 (v!2535 (underlying!265 thiss!992)))))))

(declare-fun b!72947 () Bool)

(declare-fun e!47749 () Bool)

(assert (=> b!72947 (= e!47753 e!47749)))

(declare-fun e!47744 () Bool)

(declare-fun array_inv!1103 (array!3898) Bool)

(declare-fun array_inv!1104 (array!3900) Bool)

(assert (=> b!72948 (= e!47749 (and tp!8540 tp_is_empty!2477 (array_inv!1103 (_keys!3866 (v!2535 (underlying!265 thiss!992)))) (array_inv!1104 (_values!2197 (v!2535 (underlying!265 thiss!992)))) e!47744))))

(declare-fun b!72949 () Bool)

(declare-fun e!47757 () Bool)

(assert (=> b!72949 (= e!47757 tp_is_empty!2477)))

(declare-fun mapIsEmpty!3178 () Bool)

(declare-fun mapRes!3177 () Bool)

(assert (=> mapIsEmpty!3178 mapRes!3177))

(declare-fun b!72950 () Bool)

(declare-fun Unit!2093 () Unit!2090)

(assert (=> b!72950 (= e!47750 Unit!2093)))

(declare-fun b!72951 () Bool)

(declare-fun e!47742 () Bool)

(assert (=> b!72951 (= e!47742 (and e!47758 mapRes!3178))))

(declare-fun condMapEmpty!3177 () Bool)

(declare-fun mapDefault!3178 () ValueCell!895)

