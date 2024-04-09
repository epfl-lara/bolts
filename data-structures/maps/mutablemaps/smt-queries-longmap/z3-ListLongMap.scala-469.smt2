; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!9126 () Bool)

(assert start!9126)

(declare-fun b!64658 () Bool)

(declare-fun b_free!2021 () Bool)

(declare-fun b_next!2021 () Bool)

(assert (=> b!64658 (= b_free!2021 (not b_next!2021))))

(declare-fun tp!8206 () Bool)

(declare-fun b_and!3957 () Bool)

(assert (=> b!64658 (= tp!8206 b_and!3957)))

(declare-fun b!64664 () Bool)

(declare-fun b_free!2023 () Bool)

(declare-fun b_next!2023 () Bool)

(assert (=> b!64664 (= b_free!2023 (not b_next!2023))))

(declare-fun tp!8208 () Bool)

(declare-fun b_and!3959 () Bool)

(assert (=> b!64664 (= tp!8208 b_and!3959)))

(declare-fun mapIsEmpty!2993 () Bool)

(declare-fun mapRes!2993 () Bool)

(assert (=> mapIsEmpty!2993 mapRes!2993))

(declare-fun b!64646 () Bool)

(declare-fun e!42382 () Bool)

(declare-fun tp_is_empty!2427 () Bool)

(assert (=> b!64646 (= e!42382 tp_is_empty!2427)))

(declare-fun b!64647 () Bool)

(declare-fun res!35218 () Bool)

(declare-fun e!42381 () Bool)

(assert (=> b!64647 (=> (not res!35218) (not e!42381))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!2883 0))(
  ( (V!2884 (val!1258 Int)) )
))
(declare-datatypes ((array!3788 0))(
  ( (array!3789 (arr!1810 (Array (_ BitVec 32) (_ BitVec 64))) (size!2044 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!870 0))(
  ( (ValueCellFull!870 (v!2446 V!2883)) (EmptyCell!870) )
))
(declare-datatypes ((array!3790 0))(
  ( (array!3791 (arr!1811 (Array (_ BitVec 32) ValueCell!870)) (size!2045 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!648 0))(
  ( (LongMapFixedSize!649 (defaultEntry!2122 Int) (mask!6044 (_ BitVec 32)) (extraKeys!1995 (_ BitVec 32)) (zeroValue!2031 V!2883) (minValue!2031 V!2883) (_size!373 (_ BitVec 32)) (_keys!3760 array!3788) (_values!2105 array!3790) (_vacant!373 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!458 0))(
  ( (Cell!459 (v!2447 LongMapFixedSize!648)) )
))
(declare-datatypes ((LongMap!458 0))(
  ( (LongMap!459 (underlying!240 Cell!458)) )
))
(declare-fun thiss!992 () LongMap!458)

(assert (=> b!64647 (= res!35218 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992)))))))))

(declare-fun b!64648 () Bool)

(declare-fun e!42380 () Bool)

(declare-fun e!42388 () Bool)

(assert (=> b!64648 (= e!42380 e!42388)))

(declare-fun res!35224 () Bool)

(assert (=> b!64648 (=> (not res!35224) (not e!42388))))

(declare-datatypes ((tuple2!2086 0))(
  ( (tuple2!2087 (_1!1053 Bool) (_2!1053 LongMapFixedSize!648)) )
))
(declare-fun lt!27447 () tuple2!2086)

(assert (=> b!64648 (= res!35224 (and (_1!1053 lt!27447) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!1784 0))(
  ( (Unit!1785) )
))
(declare-fun lt!27450 () Unit!1784)

(declare-fun e!42374 () Unit!1784)

(assert (=> b!64648 (= lt!27450 e!42374)))

(declare-datatypes ((tuple2!2088 0))(
  ( (tuple2!2089 (_1!1054 (_ BitVec 64)) (_2!1054 V!2883)) )
))
(declare-datatypes ((List!1475 0))(
  ( (Nil!1472) (Cons!1471 (h!2055 tuple2!2088) (t!4909 List!1475)) )
))
(declare-datatypes ((ListLongMap!1401 0))(
  ( (ListLongMap!1402 (toList!716 List!1475)) )
))
(declare-fun lt!27448 () ListLongMap!1401)

(declare-fun c!8848 () Bool)

(declare-fun contains!708 (ListLongMap!1401 (_ BitVec 64)) Bool)

(assert (=> b!64648 (= c!8848 (contains!708 lt!27448 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!648)

(declare-fun update!92 (LongMapFixedSize!648 (_ BitVec 64) V!2883) tuple2!2086)

(declare-fun get!1110 (ValueCell!870 V!2883) V!2883)

(declare-fun dynLambda!320 (Int (_ BitVec 64)) V!2883)

(assert (=> b!64648 (= lt!27447 (update!92 newMap!16 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!64649 () Bool)

(declare-fun res!35223 () Bool)

(assert (=> b!64649 (=> (not res!35223) (not e!42388))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3788 (_ BitVec 32)) Bool)

(assert (=> b!64649 (= res!35223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992)))))))

(declare-fun b!64650 () Bool)

(declare-fun e!42384 () Bool)

(assert (=> b!64650 (= e!42384 tp_is_empty!2427)))

(declare-fun b!64651 () Bool)

(declare-fun res!35219 () Bool)

(assert (=> b!64651 (=> (not res!35219) (not e!42381))))

(assert (=> b!64651 (= res!35219 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6044 newMap!16)) (_size!373 (v!2447 (underlying!240 thiss!992)))))))

(declare-fun b!64652 () Bool)

(declare-fun e!42387 () Bool)

(assert (=> b!64652 (= e!42387 tp_is_empty!2427)))

(declare-fun b!64653 () Bool)

(declare-fun e!42375 () Bool)

(declare-fun e!42373 () Bool)

(assert (=> b!64653 (= e!42375 (and e!42373 mapRes!2993))))

(declare-fun condMapEmpty!2993 () Bool)

(declare-fun mapDefault!2993 () ValueCell!870)

(assert (=> b!64653 (= condMapEmpty!2993 (= (arr!1811 (_values!2105 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!870)) mapDefault!2993)))))

(declare-fun b!64654 () Bool)

(declare-fun res!35222 () Bool)

(assert (=> b!64654 (=> (not res!35222) (not e!42388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!64654 (= res!35222 (validMask!0 (mask!6044 (v!2447 (underlying!240 thiss!992)))))))

(declare-fun b!64655 () Bool)

(assert (=> b!64655 (= e!42381 e!42380)))

(declare-fun res!35221 () Bool)

(assert (=> b!64655 (=> (not res!35221) (not e!42380))))

(declare-fun lt!27452 () ListLongMap!1401)

(assert (=> b!64655 (= res!35221 (and (= lt!27452 lt!27448) (not (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1128 (LongMapFixedSize!648) ListLongMap!1401)

(assert (=> b!64655 (= lt!27448 (map!1128 newMap!16))))

(declare-fun getCurrentListMap!412 (array!3788 array!3790 (_ BitVec 32) (_ BitVec 32) V!2883 V!2883 (_ BitVec 32) Int) ListLongMap!1401)

(assert (=> b!64655 (= lt!27452 (getCurrentListMap!412 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (_values!2105 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992))) (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) (minValue!2031 (v!2447 (underlying!240 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992)))))))

(declare-fun mapNonEmpty!2993 () Bool)

(declare-fun tp!8207 () Bool)

(assert (=> mapNonEmpty!2993 (= mapRes!2993 (and tp!8207 e!42384))))

(declare-fun mapKey!2993 () (_ BitVec 32))

(declare-fun mapRest!2993 () (Array (_ BitVec 32) ValueCell!870))

(declare-fun mapValue!2993 () ValueCell!870)

(assert (=> mapNonEmpty!2993 (= (arr!1811 (_values!2105 newMap!16)) (store mapRest!2993 mapKey!2993 mapValue!2993))))

(declare-fun b!64656 () Bool)

(declare-datatypes ((List!1476 0))(
  ( (Nil!1473) (Cons!1472 (h!2056 (_ BitVec 64)) (t!4910 List!1476)) )
))
(declare-fun arrayNoDuplicates!0 (array!3788 (_ BitVec 32) List!1476) Bool)

(assert (=> b!64656 (= e!42388 (not (arrayNoDuplicates!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000000 Nil!1473)))))

(declare-fun res!35220 () Bool)

(assert (=> start!9126 (=> (not res!35220) (not e!42381))))

(declare-fun valid!269 (LongMap!458) Bool)

(assert (=> start!9126 (= res!35220 (valid!269 thiss!992))))

(assert (=> start!9126 e!42381))

(declare-fun e!42378 () Bool)

(assert (=> start!9126 e!42378))

(assert (=> start!9126 true))

(declare-fun e!42383 () Bool)

(assert (=> start!9126 e!42383))

(declare-fun b!64657 () Bool)

(declare-fun res!35217 () Bool)

(assert (=> b!64657 (=> (not res!35217) (not e!42388))))

(assert (=> b!64657 (= res!35217 (and (= (size!2045 (_values!2105 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6044 (v!2447 (underlying!240 thiss!992))))) (= (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (size!2045 (_values!2105 (v!2447 (underlying!240 thiss!992))))) (bvsge (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun e!42386 () Bool)

(declare-fun e!42385 () Bool)

(declare-fun array_inv!1071 (array!3788) Bool)

(declare-fun array_inv!1072 (array!3790) Bool)

(assert (=> b!64658 (= e!42386 (and tp!8206 tp_is_empty!2427 (array_inv!1071 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (array_inv!1072 (_values!2105 (v!2447 (underlying!240 thiss!992)))) e!42385))))

(declare-fun mapNonEmpty!2994 () Bool)

(declare-fun mapRes!2994 () Bool)

(declare-fun tp!8205 () Bool)

(assert (=> mapNonEmpty!2994 (= mapRes!2994 (and tp!8205 e!42382))))

(declare-fun mapValue!2994 () ValueCell!870)

(declare-fun mapRest!2994 () (Array (_ BitVec 32) ValueCell!870))

(declare-fun mapKey!2994 () (_ BitVec 32))

(assert (=> mapNonEmpty!2994 (= (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) (store mapRest!2994 mapKey!2994 mapValue!2994))))

(declare-fun b!64659 () Bool)

(assert (=> b!64659 (= e!42373 tp_is_empty!2427)))

(declare-fun b!64660 () Bool)

(declare-fun Unit!1786 () Unit!1784)

(assert (=> b!64660 (= e!42374 Unit!1786)))

(declare-fun b!64661 () Bool)

(declare-fun Unit!1787 () Unit!1784)

(assert (=> b!64661 (= e!42374 Unit!1787)))

(declare-fun lt!27449 () Unit!1784)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!38 (array!3788 array!3790 (_ BitVec 32) (_ BitVec 32) V!2883 V!2883 (_ BitVec 64) (_ BitVec 32) Int) Unit!1784)

(assert (=> b!64661 (= lt!27449 (lemmaListMapContainsThenArrayContainsFrom!38 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (_values!2105 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992))) (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) (minValue!2031 (v!2447 (underlying!240 thiss!992))) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3788 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!64661 (arrayContainsKey!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!27446 () Unit!1784)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3788 (_ BitVec 32) (_ BitVec 32)) Unit!1784)

(assert (=> b!64661 (= lt!27446 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> b!64661 (arrayNoDuplicates!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) from!355 Nil!1473)))

(declare-fun lt!27451 () Unit!1784)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3788 (_ BitVec 32) (_ BitVec 64) List!1476) Unit!1784)

(assert (=> b!64661 (= lt!27451 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (Cons!1472 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) Nil!1473)))))

(assert (=> b!64661 false))

(declare-fun b!64662 () Bool)

(declare-fun e!42379 () Bool)

(assert (=> b!64662 (= e!42378 e!42379)))

(declare-fun b!64663 () Bool)

(assert (=> b!64663 (= e!42379 e!42386)))

(assert (=> b!64664 (= e!42383 (and tp!8208 tp_is_empty!2427 (array_inv!1071 (_keys!3760 newMap!16)) (array_inv!1072 (_values!2105 newMap!16)) e!42375))))

(declare-fun b!64665 () Bool)

(assert (=> b!64665 (= e!42385 (and e!42387 mapRes!2994))))

(declare-fun condMapEmpty!2994 () Bool)

(declare-fun mapDefault!2994 () ValueCell!870)

(assert (=> b!64665 (= condMapEmpty!2994 (= (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!870)) mapDefault!2994)))))

(declare-fun b!64666 () Bool)

(declare-fun res!35225 () Bool)

(assert (=> b!64666 (=> (not res!35225) (not e!42381))))

(declare-fun valid!270 (LongMapFixedSize!648) Bool)

(assert (=> b!64666 (= res!35225 (valid!270 newMap!16))))

(declare-fun mapIsEmpty!2994 () Bool)

(assert (=> mapIsEmpty!2994 mapRes!2994))

(assert (= (and start!9126 res!35220) b!64647))

(assert (= (and b!64647 res!35218) b!64666))

(assert (= (and b!64666 res!35225) b!64651))

(assert (= (and b!64651 res!35219) b!64655))

(assert (= (and b!64655 res!35221) b!64648))

(assert (= (and b!64648 c!8848) b!64661))

(assert (= (and b!64648 (not c!8848)) b!64660))

(assert (= (and b!64648 res!35224) b!64654))

(assert (= (and b!64654 res!35222) b!64657))

(assert (= (and b!64657 res!35217) b!64649))

(assert (= (and b!64649 res!35223) b!64656))

(assert (= (and b!64665 condMapEmpty!2994) mapIsEmpty!2994))

(assert (= (and b!64665 (not condMapEmpty!2994)) mapNonEmpty!2994))

(get-info :version)

(assert (= (and mapNonEmpty!2994 ((_ is ValueCellFull!870) mapValue!2994)) b!64646))

(assert (= (and b!64665 ((_ is ValueCellFull!870) mapDefault!2994)) b!64652))

(assert (= b!64658 b!64665))

(assert (= b!64663 b!64658))

(assert (= b!64662 b!64663))

(assert (= start!9126 b!64662))

(assert (= (and b!64653 condMapEmpty!2993) mapIsEmpty!2993))

(assert (= (and b!64653 (not condMapEmpty!2993)) mapNonEmpty!2993))

(assert (= (and mapNonEmpty!2993 ((_ is ValueCellFull!870) mapValue!2993)) b!64650))

(assert (= (and b!64653 ((_ is ValueCellFull!870) mapDefault!2993)) b!64659))

(assert (= b!64664 b!64653))

(assert (= start!9126 b!64664))

(declare-fun b_lambda!2909 () Bool)

(assert (=> (not b_lambda!2909) (not b!64648)))

(declare-fun t!4906 () Bool)

(declare-fun tb!1409 () Bool)

(assert (=> (and b!64658 (= (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992)))) t!4906) tb!1409))

(declare-fun result!2501 () Bool)

(assert (=> tb!1409 (= result!2501 tp_is_empty!2427)))

(assert (=> b!64648 t!4906))

(declare-fun b_and!3961 () Bool)

(assert (= b_and!3957 (and (=> t!4906 result!2501) b_and!3961)))

(declare-fun t!4908 () Bool)

(declare-fun tb!1411 () Bool)

(assert (=> (and b!64664 (= (defaultEntry!2122 newMap!16) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992)))) t!4908) tb!1411))

(declare-fun result!2505 () Bool)

(assert (= result!2505 result!2501))

(assert (=> b!64648 t!4908))

(declare-fun b_and!3963 () Bool)

(assert (= b_and!3959 (and (=> t!4908 result!2505) b_and!3963)))

(declare-fun m!59079 () Bool)

(assert (=> b!64664 m!59079))

(declare-fun m!59081 () Bool)

(assert (=> b!64664 m!59081))

(declare-fun m!59083 () Bool)

(assert (=> b!64661 m!59083))

(declare-fun m!59085 () Bool)

(assert (=> b!64661 m!59085))

(declare-fun m!59087 () Bool)

(assert (=> b!64661 m!59087))

(declare-fun m!59089 () Bool)

(assert (=> b!64661 m!59089))

(assert (=> b!64661 m!59087))

(assert (=> b!64661 m!59087))

(declare-fun m!59091 () Bool)

(assert (=> b!64661 m!59091))

(assert (=> b!64661 m!59087))

(declare-fun m!59093 () Bool)

(assert (=> b!64661 m!59093))

(declare-fun m!59095 () Bool)

(assert (=> mapNonEmpty!2993 m!59095))

(declare-fun m!59097 () Bool)

(assert (=> b!64658 m!59097))

(declare-fun m!59099 () Bool)

(assert (=> b!64658 m!59099))

(declare-fun m!59101 () Bool)

(assert (=> b!64654 m!59101))

(declare-fun m!59103 () Bool)

(assert (=> b!64666 m!59103))

(declare-fun m!59105 () Bool)

(assert (=> b!64649 m!59105))

(declare-fun m!59107 () Bool)

(assert (=> start!9126 m!59107))

(declare-fun m!59109 () Bool)

(assert (=> b!64656 m!59109))

(declare-fun m!59111 () Bool)

(assert (=> mapNonEmpty!2994 m!59111))

(assert (=> b!64655 m!59087))

(declare-fun m!59113 () Bool)

(assert (=> b!64655 m!59113))

(declare-fun m!59115 () Bool)

(assert (=> b!64655 m!59115))

(declare-fun m!59117 () Bool)

(assert (=> b!64648 m!59117))

(declare-fun m!59119 () Bool)

(assert (=> b!64648 m!59119))

(declare-fun m!59121 () Bool)

(assert (=> b!64648 m!59121))

(assert (=> b!64648 m!59087))

(assert (=> b!64648 m!59119))

(assert (=> b!64648 m!59087))

(declare-fun m!59123 () Bool)

(assert (=> b!64648 m!59123))

(assert (=> b!64648 m!59087))

(assert (=> b!64648 m!59121))

(declare-fun m!59125 () Bool)

(assert (=> b!64648 m!59125))

(assert (=> b!64648 m!59117))

(check-sat (not mapNonEmpty!2993) b_and!3961 (not b!64649) (not b_next!2021) (not b_next!2023) (not b!64664) (not b!64656) (not b!64658) (not b!64655) (not b!64654) (not mapNonEmpty!2994) b_and!3963 (not b_lambda!2909) (not start!9126) (not b!64666) tp_is_empty!2427 (not b!64648) (not b!64661))
(check-sat b_and!3961 b_and!3963 (not b_next!2021) (not b_next!2023))
(get-model)

(declare-fun b_lambda!2913 () Bool)

(assert (= b_lambda!2909 (or (and b!64658 b_free!2021) (and b!64664 b_free!2023 (= (defaultEntry!2122 newMap!16) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))))) b_lambda!2913)))

(check-sat (not mapNonEmpty!2993) b_and!3961 (not b!64649) (not b_next!2021) (not b_next!2023) (not b!64664) (not b!64656) (not b_lambda!2913) (not b!64658) (not b!64655) (not b!64654) (not mapNonEmpty!2994) b_and!3963 (not start!9126) (not b!64666) tp_is_empty!2427 (not b!64648) (not b!64661))
(check-sat b_and!3961 b_and!3963 (not b_next!2021) (not b_next!2023))
(get-model)

(declare-fun d!13459 () Bool)

(assert (=> d!13459 (= (validMask!0 (mask!6044 (v!2447 (underlying!240 thiss!992)))) (and (or (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000001111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000011111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000001111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000011111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000001111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000011111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000111111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000000000001111111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000000000011111111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000000000111111111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000000001111111111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000000011111111111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000000111111111111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000001111111111111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000011111111111111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000000111111111111111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000001111111111111111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000011111111111111111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000000111111111111111111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000001111111111111111111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000011111111111111111111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00000111111111111111111111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00001111111111111111111111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00011111111111111111111111111111) (= (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!6044 (v!2447 (underlying!240 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!64654 d!13459))

(declare-fun b!64742 () Bool)

(declare-fun e!42444 () Bool)

(declare-fun call!5215 () Bool)

(assert (=> b!64742 (= e!42444 call!5215)))

(declare-fun d!13461 () Bool)

(declare-fun res!35257 () Bool)

(declare-fun e!42445 () Bool)

(assert (=> d!13461 (=> res!35257 e!42445)))

(assert (=> d!13461 (= res!35257 (bvsge #b00000000000000000000000000000000 (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))))

(assert (=> d!13461 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992)))) e!42445)))

(declare-fun b!64743 () Bool)

(declare-fun e!42443 () Bool)

(assert (=> b!64743 (= e!42443 e!42444)))

(declare-fun lt!27480 () (_ BitVec 64))

(assert (=> b!64743 (= lt!27480 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!27481 () Unit!1784)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3788 (_ BitVec 64) (_ BitVec 32)) Unit!1784)

(assert (=> b!64743 (= lt!27481 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) lt!27480 #b00000000000000000000000000000000))))

(assert (=> b!64743 (arrayContainsKey!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) lt!27480 #b00000000000000000000000000000000)))

(declare-fun lt!27482 () Unit!1784)

(assert (=> b!64743 (= lt!27482 lt!27481)))

(declare-fun res!35258 () Bool)

(declare-datatypes ((SeekEntryResult!241 0))(
  ( (MissingZero!241 (index!3091 (_ BitVec 32))) (Found!241 (index!3092 (_ BitVec 32))) (Intermediate!241 (undefined!1053 Bool) (index!3093 (_ BitVec 32)) (x!10552 (_ BitVec 32))) (Undefined!241) (MissingVacant!241 (index!3094 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3788 (_ BitVec 32)) SeekEntryResult!241)

(assert (=> b!64743 (= res!35258 (= (seekEntryOrOpen!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000) (_keys!3760 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992)))) (Found!241 #b00000000000000000000000000000000)))))

(assert (=> b!64743 (=> (not res!35258) (not e!42444))))

(declare-fun b!64744 () Bool)

(assert (=> b!64744 (= e!42445 e!42443)))

(declare-fun c!8854 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!64744 (= c!8854 (validKeyInArray!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!64745 () Bool)

(assert (=> b!64745 (= e!42443 call!5215)))

(declare-fun bm!5212 () Bool)

(assert (=> bm!5212 (= call!5215 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3760 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992)))))))

(assert (= (and d!13461 (not res!35257)) b!64744))

(assert (= (and b!64744 c!8854) b!64743))

(assert (= (and b!64744 (not c!8854)) b!64745))

(assert (= (and b!64743 res!35258) b!64742))

(assert (= (or b!64742 b!64745) bm!5212))

(declare-fun m!59175 () Bool)

(assert (=> b!64743 m!59175))

(declare-fun m!59177 () Bool)

(assert (=> b!64743 m!59177))

(declare-fun m!59179 () Bool)

(assert (=> b!64743 m!59179))

(assert (=> b!64743 m!59175))

(declare-fun m!59181 () Bool)

(assert (=> b!64743 m!59181))

(assert (=> b!64744 m!59175))

(assert (=> b!64744 m!59175))

(declare-fun m!59183 () Bool)

(assert (=> b!64744 m!59183))

(declare-fun m!59185 () Bool)

(assert (=> bm!5212 m!59185))

(assert (=> b!64649 d!13461))

(declare-fun d!13463 () Bool)

(declare-fun e!42451 () Bool)

(assert (=> d!13463 e!42451))

(declare-fun res!35261 () Bool)

(assert (=> d!13463 (=> res!35261 e!42451)))

(declare-fun lt!27494 () Bool)

(assert (=> d!13463 (= res!35261 (not lt!27494))))

(declare-fun lt!27491 () Bool)

(assert (=> d!13463 (= lt!27494 lt!27491)))

(declare-fun lt!27493 () Unit!1784)

(declare-fun e!42450 () Unit!1784)

(assert (=> d!13463 (= lt!27493 e!42450)))

(declare-fun c!8857 () Bool)

(assert (=> d!13463 (= c!8857 lt!27491)))

(declare-fun containsKey!131 (List!1475 (_ BitVec 64)) Bool)

(assert (=> d!13463 (= lt!27491 (containsKey!131 (toList!716 lt!27448) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(assert (=> d!13463 (= (contains!708 lt!27448 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)) lt!27494)))

(declare-fun b!64752 () Bool)

(declare-fun lt!27492 () Unit!1784)

(assert (=> b!64752 (= e!42450 lt!27492)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!80 (List!1475 (_ BitVec 64)) Unit!1784)

(assert (=> b!64752 (= lt!27492 (lemmaContainsKeyImpliesGetValueByKeyDefined!80 (toList!716 lt!27448) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-datatypes ((Option!133 0))(
  ( (Some!132 (v!2451 V!2883)) (None!131) )
))
(declare-fun isDefined!81 (Option!133) Bool)

(declare-fun getValueByKey!127 (List!1475 (_ BitVec 64)) Option!133)

(assert (=> b!64752 (isDefined!81 (getValueByKey!127 (toList!716 lt!27448) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-fun b!64753 () Bool)

(declare-fun Unit!1791 () Unit!1784)

(assert (=> b!64753 (= e!42450 Unit!1791)))

(declare-fun b!64754 () Bool)

(assert (=> b!64754 (= e!42451 (isDefined!81 (getValueByKey!127 (toList!716 lt!27448) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355))))))

(assert (= (and d!13463 c!8857) b!64752))

(assert (= (and d!13463 (not c!8857)) b!64753))

(assert (= (and d!13463 (not res!35261)) b!64754))

(assert (=> d!13463 m!59087))

(declare-fun m!59187 () Bool)

(assert (=> d!13463 m!59187))

(assert (=> b!64752 m!59087))

(declare-fun m!59189 () Bool)

(assert (=> b!64752 m!59189))

(assert (=> b!64752 m!59087))

(declare-fun m!59191 () Bool)

(assert (=> b!64752 m!59191))

(assert (=> b!64752 m!59191))

(declare-fun m!59193 () Bool)

(assert (=> b!64752 m!59193))

(assert (=> b!64754 m!59087))

(assert (=> b!64754 m!59191))

(assert (=> b!64754 m!59191))

(assert (=> b!64754 m!59193))

(assert (=> b!64648 d!13463))

(declare-fun e!42495 () Bool)

(declare-fun call!5284 () ListLongMap!1401)

(declare-fun call!5275 () ListLongMap!1401)

(declare-fun b!64835 () Bool)

(declare-fun +!85 (ListLongMap!1401 tuple2!2088) ListLongMap!1401)

(assert (=> b!64835 (= e!42495 (= call!5284 (+!85 call!5275 (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!64836 () Bool)

(declare-fun lt!27571 () Unit!1784)

(declare-fun lt!27552 () Unit!1784)

(assert (=> b!64836 (= lt!27571 lt!27552)))

(declare-fun call!5266 () ListLongMap!1401)

(declare-fun call!5286 () ListLongMap!1401)

(assert (=> b!64836 (= call!5266 call!5286)))

(declare-fun lt!27565 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!19 (array!3788 array!3790 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2883 V!2883 V!2883 Int) Unit!1784)

(assert (=> b!64836 (= lt!27552 (lemmaChangeZeroKeyThenAddPairToListMap!19 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) lt!27565 (zeroValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2031 newMap!16) (defaultEntry!2122 newMap!16)))))

(assert (=> b!64836 (= lt!27565 (bvor (extraKeys!1995 newMap!16) #b00000000000000000000000000000001))))

(declare-fun e!42506 () tuple2!2086)

(assert (=> b!64836 (= e!42506 (tuple2!2087 true (LongMapFixedSize!649 (defaultEntry!2122 newMap!16) (mask!6044 newMap!16) (bvor (extraKeys!1995 newMap!16) #b00000000000000000000000000000001) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2031 newMap!16) (_size!373 newMap!16) (_keys!3760 newMap!16) (_values!2105 newMap!16) (_vacant!373 newMap!16))))))

(declare-fun b!64837 () Bool)

(declare-fun res!35296 () Bool)

(declare-fun e!42499 () Bool)

(assert (=> b!64837 (=> (not res!35296) (not e!42499))))

(declare-fun lt!27567 () SeekEntryResult!241)

(assert (=> b!64837 (= res!35296 (= (select (arr!1810 (_keys!3760 newMap!16)) (index!3091 lt!27567)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!64838 () Bool)

(declare-fun c!8891 () Bool)

(assert (=> b!64838 (= c!8891 ((_ is MissingVacant!241) lt!27567))))

(declare-fun e!42504 () Bool)

(declare-fun e!42502 () Bool)

(assert (=> b!64838 (= e!42504 e!42502)))

(declare-fun bm!5261 () Bool)

(declare-fun call!5271 () Bool)

(declare-fun call!5282 () Bool)

(assert (=> bm!5261 (= call!5271 call!5282)))

(declare-fun lt!27573 () SeekEntryResult!241)

(declare-fun bm!5262 () Bool)

(declare-fun c!8890 () Bool)

(declare-fun call!5274 () ListLongMap!1401)

(assert (=> bm!5262 (= call!5274 (getCurrentListMap!412 (_keys!3760 newMap!16) (ite c!8890 (_values!2105 newMap!16) (array!3791 (store (arr!1811 (_values!2105 newMap!16)) (index!3092 lt!27573) (ValueCellFull!870 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2045 (_values!2105 newMap!16)))) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun bm!5263 () Bool)

(assert (=> bm!5263 (= call!5275 (map!1128 newMap!16))))

(declare-fun b!64840 () Bool)

(declare-fun lt!27566 () Unit!1784)

(declare-fun lt!27561 () Unit!1784)

(assert (=> b!64840 (= lt!27566 lt!27561)))

(declare-fun call!5267 () ListLongMap!1401)

(assert (=> b!64840 (= call!5266 call!5267)))

(declare-fun lt!27557 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!19 (array!3788 array!3790 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2883 V!2883 V!2883 Int) Unit!1784)

(assert (=> b!64840 (= lt!27561 (lemmaChangeLongMinValueKeyThenAddPairToListMap!19 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) lt!27557 (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2122 newMap!16)))))

(assert (=> b!64840 (= lt!27557 (bvor (extraKeys!1995 newMap!16) #b00000000000000000000000000000010))))

(assert (=> b!64840 (= e!42506 (tuple2!2087 true (LongMapFixedSize!649 (defaultEntry!2122 newMap!16) (mask!6044 newMap!16) (bvor (extraKeys!1995 newMap!16) #b00000000000000000000000000000010) (zeroValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (_size!373 newMap!16) (_keys!3760 newMap!16) (_values!2105 newMap!16) (_vacant!373 newMap!16))))))

(declare-fun b!64841 () Bool)

(declare-fun e!42496 () Bool)

(assert (=> b!64841 (= e!42496 e!42495)))

(declare-fun res!35301 () Bool)

(assert (=> b!64841 (= res!35301 (contains!708 call!5284 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(assert (=> b!64841 (=> (not res!35301) (not e!42495))))

(declare-fun b!64842 () Bool)

(declare-fun e!42507 () Unit!1784)

(declare-fun lt!27559 () Unit!1784)

(assert (=> b!64842 (= e!42507 lt!27559)))

(declare-fun call!5279 () Unit!1784)

(assert (=> b!64842 (= lt!27559 call!5279)))

(declare-fun lt!27563 () SeekEntryResult!241)

(declare-fun call!5287 () SeekEntryResult!241)

(assert (=> b!64842 (= lt!27563 call!5287)))

(declare-fun res!35292 () Bool)

(assert (=> b!64842 (= res!35292 ((_ is Found!241) lt!27563))))

(declare-fun e!42514 () Bool)

(assert (=> b!64842 (=> (not res!35292) (not e!42514))))

(assert (=> b!64842 e!42514))

(declare-fun bm!5264 () Bool)

(declare-fun call!5278 () SeekEntryResult!241)

(assert (=> bm!5264 (= call!5278 (seekEntryOrOpen!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (_keys!3760 newMap!16) (mask!6044 newMap!16)))))

(declare-fun c!8884 () Bool)

(declare-fun lt!27554 () SeekEntryResult!241)

(declare-fun call!5273 () Bool)

(declare-fun c!8893 () Bool)

(declare-fun c!8889 () Bool)

(declare-fun bm!5265 () Bool)

(declare-fun c!8896 () Bool)

(declare-fun lt!27556 () SeekEntryResult!241)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!5265 (= call!5273 (inRange!0 (ite c!8890 (ite c!8896 (index!3092 lt!27554) (ite c!8884 (index!3091 lt!27567) (index!3094 lt!27567))) (ite c!8889 (index!3092 lt!27563) (ite c!8893 (index!3091 lt!27556) (index!3094 lt!27556)))) (mask!6044 newMap!16)))))

(declare-fun b!64843 () Bool)

(declare-fun e!42511 () Bool)

(declare-fun e!42505 () Bool)

(assert (=> b!64843 (= e!42511 e!42505)))

(declare-fun res!35293 () Bool)

(declare-fun call!5283 () Bool)

(assert (=> b!64843 (= res!35293 call!5283)))

(assert (=> b!64843 (=> (not res!35293) (not e!42505))))

(declare-fun bm!5266 () Bool)

(declare-fun call!5270 () Bool)

(assert (=> bm!5266 (= call!5270 call!5273)))

(declare-fun call!5277 () Bool)

(declare-fun bm!5267 () Bool)

(assert (=> bm!5267 (= call!5277 (arrayContainsKey!0 (_keys!3760 newMap!16) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!64844 () Bool)

(declare-fun res!35297 () Bool)

(assert (=> b!64844 (=> (not res!35297) (not e!42499))))

(assert (=> b!64844 (= res!35297 call!5271)))

(assert (=> b!64844 (= e!42504 e!42499)))

(declare-fun bm!5268 () Bool)

(assert (=> bm!5268 (= call!5282 call!5273)))

(declare-fun b!64845 () Bool)

(declare-fun res!35302 () Bool)

(assert (=> b!64845 (= res!35302 (= (select (arr!1810 (_keys!3760 newMap!16)) (index!3094 lt!27556)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!64845 (=> (not res!35302) (not e!42505))))

(declare-fun b!64846 () Bool)

(declare-fun e!42512 () tuple2!2086)

(assert (=> b!64846 (= e!42512 e!42506)))

(declare-fun c!8887 () Bool)

(assert (=> b!64846 (= c!8887 (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!64847 () Bool)

(declare-fun e!42494 () Unit!1784)

(declare-fun lt!27555 () Unit!1784)

(assert (=> b!64847 (= e!42494 lt!27555)))

(declare-fun call!5276 () Unit!1784)

(assert (=> b!64847 (= lt!27555 call!5276)))

(declare-fun call!5269 () SeekEntryResult!241)

(assert (=> b!64847 (= lt!27567 call!5269)))

(assert (=> b!64847 (= c!8884 ((_ is MissingZero!241) lt!27567))))

(assert (=> b!64847 e!42504))

(declare-fun bm!5269 () Bool)

(declare-fun c!8888 () Bool)

(assert (=> bm!5269 (= c!8888 c!8890)))

(declare-fun e!42508 () ListLongMap!1401)

(declare-fun call!5272 () Bool)

(assert (=> bm!5269 (= call!5272 (contains!708 e!42508 (ite c!8890 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (select (arr!1810 (_keys!3760 newMap!16)) (index!3092 lt!27573)))))))

(declare-fun bm!5270 () Bool)

(declare-fun call!5280 () Bool)

(assert (=> bm!5270 (= call!5280 call!5277)))

(declare-fun b!64848 () Bool)

(declare-fun e!42510 () Bool)

(assert (=> b!64848 (= e!42502 e!42510)))

(declare-fun res!35295 () Bool)

(assert (=> b!64848 (= res!35295 call!5271)))

(assert (=> b!64848 (=> (not res!35295) (not e!42510))))

(declare-fun b!64849 () Bool)

(declare-fun Unit!1792 () Unit!1784)

(assert (=> b!64849 (= e!42507 Unit!1792)))

(declare-fun lt!27550 () Unit!1784)

(assert (=> b!64849 (= lt!27550 call!5276)))

(assert (=> b!64849 (= lt!27556 call!5287)))

(assert (=> b!64849 (= c!8893 ((_ is MissingZero!241) lt!27556))))

(declare-fun e!42509 () Bool)

(assert (=> b!64849 e!42509))

(declare-fun lt!27574 () Unit!1784)

(assert (=> b!64849 (= lt!27574 lt!27550)))

(assert (=> b!64849 false))

(declare-fun b!64850 () Bool)

(declare-fun lt!27549 () Unit!1784)

(declare-fun lt!27569 () Unit!1784)

(assert (=> b!64850 (= lt!27549 lt!27569)))

(assert (=> b!64850 call!5272))

(declare-fun lt!27562 () array!3790)

(declare-fun lemmaValidKeyInArrayIsInListMap!77 (array!3788 array!3790 (_ BitVec 32) (_ BitVec 32) V!2883 V!2883 (_ BitVec 32) Int) Unit!1784)

(assert (=> b!64850 (= lt!27569 (lemmaValidKeyInArrayIsInListMap!77 (_keys!3760 newMap!16) lt!27562 (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (index!3092 lt!27573) (defaultEntry!2122 newMap!16)))))

(assert (=> b!64850 (= lt!27562 (array!3791 (store (arr!1811 (_values!2105 newMap!16)) (index!3092 lt!27573) (ValueCellFull!870 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2045 (_values!2105 newMap!16))))))

(declare-fun lt!27558 () Unit!1784)

(declare-fun lt!27564 () Unit!1784)

(assert (=> b!64850 (= lt!27558 lt!27564)))

(declare-fun call!5264 () ListLongMap!1401)

(assert (=> b!64850 (= call!5264 call!5274)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!19 (array!3788 array!3790 (_ BitVec 32) (_ BitVec 32) V!2883 V!2883 (_ BitVec 32) (_ BitVec 64) V!2883 Int) Unit!1784)

(assert (=> b!64850 (= lt!27564 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!19 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (index!3092 lt!27573) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27553 () Unit!1784)

(assert (=> b!64850 (= lt!27553 e!42507)))

(declare-fun call!5268 () ListLongMap!1401)

(assert (=> b!64850 (= c!8889 (contains!708 call!5268 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-fun e!42501 () tuple2!2086)

(assert (=> b!64850 (= e!42501 (tuple2!2087 true (LongMapFixedSize!649 (defaultEntry!2122 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (_size!373 newMap!16) (_keys!3760 newMap!16) (array!3791 (store (arr!1811 (_values!2105 newMap!16)) (index!3092 lt!27573) (ValueCellFull!870 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2045 (_values!2105 newMap!16))) (_vacant!373 newMap!16))))))

(declare-fun b!64851 () Bool)

(declare-fun res!35299 () Bool)

(assert (=> b!64851 (= res!35299 (= (select (arr!1810 (_keys!3760 newMap!16)) (index!3094 lt!27567)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!64851 (=> (not res!35299) (not e!42510))))

(declare-fun b!64839 () Bool)

(assert (=> b!64839 (= e!42508 call!5274)))

(declare-fun d!13465 () Bool)

(declare-fun e!42498 () Bool)

(assert (=> d!13465 e!42498))

(declare-fun res!35290 () Bool)

(assert (=> d!13465 (=> (not res!35290) (not e!42498))))

(declare-fun lt!27570 () tuple2!2086)

(assert (=> d!13465 (= res!35290 (valid!270 (_2!1053 lt!27570)))))

(assert (=> d!13465 (= lt!27570 e!42512)))

(declare-fun c!8895 () Bool)

(assert (=> d!13465 (= c!8895 (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (bvneg (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355))))))

(assert (=> d!13465 (valid!270 newMap!16)))

(assert (=> d!13465 (= (update!92 newMap!16 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) lt!27570)))

(declare-fun bm!5271 () Bool)

(assert (=> bm!5271 (= call!5269 call!5278)))

(declare-fun bm!5272 () Bool)

(assert (=> bm!5272 (= call!5268 (getCurrentListMap!412 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (ite (and c!8895 c!8887) lt!27565 (extraKeys!1995 newMap!16)) (ite (and c!8895 c!8887) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2031 newMap!16)) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun b!64852 () Bool)

(declare-fun call!5285 () ListLongMap!1401)

(assert (=> b!64852 (= e!42508 call!5285)))

(declare-fun b!64853 () Bool)

(declare-fun c!8886 () Bool)

(assert (=> b!64853 (= c!8886 ((_ is MissingVacant!241) lt!27556))))

(assert (=> b!64853 (= e!42509 e!42511)))

(declare-fun bm!5273 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!19 (array!3788 array!3790 (_ BitVec 32) (_ BitVec 32) V!2883 V!2883 (_ BitVec 64) Int) Unit!1784)

(assert (=> bm!5273 (= call!5279 (lemmaInListMapThenSeekEntryOrOpenFindsIt!19 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (defaultEntry!2122 newMap!16)))))

(declare-fun b!64854 () Bool)

(declare-fun e!42503 () Bool)

(assert (=> b!64854 (= e!42503 (= (select (arr!1810 (_keys!3760 newMap!16)) (index!3092 lt!27554)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-fun b!64855 () Bool)

(assert (=> b!64855 (= e!42510 (not call!5280))))

(declare-fun b!64856 () Bool)

(declare-fun lt!27572 () tuple2!2086)

(declare-fun call!5281 () tuple2!2086)

(assert (=> b!64856 (= lt!27572 call!5281)))

(assert (=> b!64856 (= e!42501 (tuple2!2087 (_1!1053 lt!27572) (_2!1053 lt!27572)))))

(declare-fun b!64857 () Bool)

(declare-fun e!42513 () tuple2!2086)

(assert (=> b!64857 (= e!42513 e!42501)))

(declare-fun c!8892 () Bool)

(assert (=> b!64857 (= c!8892 ((_ is MissingZero!241) lt!27573))))

(declare-fun b!64858 () Bool)

(declare-fun lt!27551 () Unit!1784)

(assert (=> b!64858 (= lt!27551 e!42494)))

(assert (=> b!64858 (= c!8896 call!5272)))

(declare-fun e!42500 () tuple2!2086)

(assert (=> b!64858 (= e!42500 (tuple2!2087 false newMap!16))))

(declare-fun b!64859 () Bool)

(assert (=> b!64859 (= e!42511 ((_ is Undefined!241) lt!27556))))

(declare-fun b!64860 () Bool)

(declare-fun c!8894 () Bool)

(assert (=> b!64860 (= c!8894 ((_ is MissingVacant!241) lt!27573))))

(assert (=> b!64860 (= e!42500 e!42513)))

(declare-fun bm!5274 () Bool)

(assert (=> bm!5274 (= call!5283 call!5270)))

(declare-fun b!64861 () Bool)

(assert (=> b!64861 (= e!42498 e!42496)))

(declare-fun c!8885 () Bool)

(assert (=> b!64861 (= c!8885 (_1!1053 lt!27570))))

(declare-fun bm!5275 () Bool)

(assert (=> bm!5275 (= call!5267 call!5285)))

(declare-fun bm!5276 () Bool)

(declare-fun updateHelperNewKey!19 (LongMapFixedSize!648 (_ BitVec 64) V!2883 (_ BitVec 32)) tuple2!2086)

(assert (=> bm!5276 (= call!5281 (updateHelperNewKey!19 newMap!16 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573))))))

(declare-fun b!64862 () Bool)

(declare-fun e!42497 () Bool)

(declare-fun call!5265 () Bool)

(assert (=> b!64862 (= e!42497 (not call!5265))))

(declare-fun b!64863 () Bool)

(assert (=> b!64863 (= e!42502 ((_ is Undefined!241) lt!27567))))

(declare-fun b!64864 () Bool)

(assert (=> b!64864 (= e!42496 (= call!5284 call!5275))))

(declare-fun b!64865 () Bool)

(declare-fun res!35300 () Bool)

(assert (=> b!64865 (= res!35300 call!5282)))

(assert (=> b!64865 (=> (not res!35300) (not e!42503))))

(declare-fun bm!5277 () Bool)

(assert (=> bm!5277 (= call!5265 call!5277)))

(declare-fun b!64866 () Bool)

(declare-fun res!35294 () Bool)

(assert (=> b!64866 (=> (not res!35294) (not e!42497))))

(assert (=> b!64866 (= res!35294 call!5283)))

(assert (=> b!64866 (= e!42509 e!42497)))

(declare-fun b!64867 () Bool)

(declare-fun lt!27560 () tuple2!2086)

(assert (=> b!64867 (= e!42513 (tuple2!2087 (_1!1053 lt!27560) (_2!1053 lt!27560)))))

(assert (=> b!64867 (= lt!27560 call!5281)))

(declare-fun bm!5278 () Bool)

(assert (=> bm!5278 (= call!5286 call!5268)))

(declare-fun b!64868 () Bool)

(declare-fun res!35298 () Bool)

(assert (=> b!64868 (= res!35298 call!5270)))

(assert (=> b!64868 (=> (not res!35298) (not e!42514))))

(declare-fun bm!5279 () Bool)

(assert (=> bm!5279 (= call!5287 call!5278)))

(declare-fun bm!5280 () Bool)

(assert (=> bm!5280 (= call!5266 call!5264)))

(declare-fun b!64869 () Bool)

(assert (=> b!64869 (= e!42505 (not call!5265))))

(declare-fun bm!5281 () Bool)

(assert (=> bm!5281 (= call!5285 (getCurrentListMap!412 (_keys!3760 newMap!16) (ite c!8895 (_values!2105 newMap!16) lt!27562) (mask!6044 newMap!16) (ite c!8895 (ite c!8887 (extraKeys!1995 newMap!16) lt!27557) (extraKeys!1995 newMap!16)) (zeroValue!2031 newMap!16) (ite c!8895 (ite c!8887 (minValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2031 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun b!64870 () Bool)

(assert (=> b!64870 (= e!42514 (= (select (arr!1810 (_keys!3760 newMap!16)) (index!3092 lt!27563)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-fun b!64871 () Bool)

(assert (=> b!64871 (= e!42499 (not call!5280))))

(declare-fun b!64872 () Bool)

(declare-fun res!35291 () Bool)

(assert (=> b!64872 (=> (not res!35291) (not e!42497))))

(assert (=> b!64872 (= res!35291 (= (select (arr!1810 (_keys!3760 newMap!16)) (index!3091 lt!27556)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!5282 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!19 (array!3788 array!3790 (_ BitVec 32) (_ BitVec 32) V!2883 V!2883 (_ BitVec 64) Int) Unit!1784)

(assert (=> bm!5282 (= call!5276 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!19 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (defaultEntry!2122 newMap!16)))))

(declare-fun b!64873 () Bool)

(declare-fun Unit!1793 () Unit!1784)

(assert (=> b!64873 (= e!42494 Unit!1793)))

(declare-fun lt!27568 () Unit!1784)

(assert (=> b!64873 (= lt!27568 call!5279)))

(assert (=> b!64873 (= lt!27554 call!5269)))

(declare-fun res!35303 () Bool)

(assert (=> b!64873 (= res!35303 ((_ is Found!241) lt!27554))))

(assert (=> b!64873 (=> (not res!35303) (not e!42503))))

(assert (=> b!64873 e!42503))

(declare-fun lt!27575 () Unit!1784)

(assert (=> b!64873 (= lt!27575 lt!27568)))

(assert (=> b!64873 false))

(declare-fun bm!5283 () Bool)

(assert (=> bm!5283 (= call!5284 (map!1128 (_2!1053 lt!27570)))))

(declare-fun b!64874 () Bool)

(assert (=> b!64874 (= e!42512 e!42500)))

(assert (=> b!64874 (= lt!27573 (seekEntryOrOpen!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (_keys!3760 newMap!16) (mask!6044 newMap!16)))))

(assert (=> b!64874 (= c!8890 ((_ is Undefined!241) lt!27573))))

(declare-fun bm!5284 () Bool)

(assert (=> bm!5284 (= call!5264 (+!85 (ite c!8895 (ite c!8887 call!5267 call!5286) call!5268) (ite c!8895 (ite c!8887 (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!13465 c!8895) b!64846))

(assert (= (and d!13465 (not c!8895)) b!64874))

(assert (= (and b!64846 c!8887) b!64836))

(assert (= (and b!64846 (not c!8887)) b!64840))

(assert (= (or b!64836 b!64840) bm!5278))

(assert (= (or b!64836 b!64840) bm!5275))

(assert (= (or b!64836 b!64840) bm!5280))

(assert (= (and b!64874 c!8890) b!64858))

(assert (= (and b!64874 (not c!8890)) b!64860))

(assert (= (and b!64858 c!8896) b!64873))

(assert (= (and b!64858 (not c!8896)) b!64847))

(assert (= (and b!64873 res!35303) b!64865))

(assert (= (and b!64865 res!35300) b!64854))

(assert (= (and b!64847 c!8884) b!64844))

(assert (= (and b!64847 (not c!8884)) b!64838))

(assert (= (and b!64844 res!35297) b!64837))

(assert (= (and b!64837 res!35296) b!64871))

(assert (= (and b!64838 c!8891) b!64848))

(assert (= (and b!64838 (not c!8891)) b!64863))

(assert (= (and b!64848 res!35295) b!64851))

(assert (= (and b!64851 res!35299) b!64855))

(assert (= (or b!64844 b!64848) bm!5261))

(assert (= (or b!64871 b!64855) bm!5270))

(assert (= (or b!64865 bm!5261) bm!5268))

(assert (= (or b!64873 b!64847) bm!5271))

(assert (= (and b!64860 c!8894) b!64867))

(assert (= (and b!64860 (not c!8894)) b!64857))

(assert (= (and b!64857 c!8892) b!64856))

(assert (= (and b!64857 (not c!8892)) b!64850))

(assert (= (and b!64850 c!8889) b!64842))

(assert (= (and b!64850 (not c!8889)) b!64849))

(assert (= (and b!64842 res!35292) b!64868))

(assert (= (and b!64868 res!35298) b!64870))

(assert (= (and b!64849 c!8893) b!64866))

(assert (= (and b!64849 (not c!8893)) b!64853))

(assert (= (and b!64866 res!35294) b!64872))

(assert (= (and b!64872 res!35291) b!64862))

(assert (= (and b!64853 c!8886) b!64843))

(assert (= (and b!64853 (not c!8886)) b!64859))

(assert (= (and b!64843 res!35293) b!64845))

(assert (= (and b!64845 res!35302) b!64869))

(assert (= (or b!64866 b!64843) bm!5274))

(assert (= (or b!64862 b!64869) bm!5277))

(assert (= (or b!64868 bm!5274) bm!5266))

(assert (= (or b!64842 b!64849) bm!5279))

(assert (= (or b!64867 b!64856) bm!5276))

(assert (= (or b!64858 b!64850) bm!5262))

(assert (= (or bm!5271 bm!5279) bm!5264))

(assert (= (or bm!5270 bm!5277) bm!5267))

(assert (= (or b!64847 b!64849) bm!5282))

(assert (= (or b!64873 b!64842) bm!5273))

(assert (= (or bm!5268 bm!5266) bm!5265))

(assert (= (or b!64858 b!64850) bm!5269))

(assert (= (and bm!5269 c!8888) b!64839))

(assert (= (and bm!5269 (not c!8888)) b!64852))

(assert (= (or bm!5278 b!64850) bm!5272))

(assert (= (or bm!5275 b!64852) bm!5281))

(assert (= (or bm!5280 b!64850) bm!5284))

(assert (= (and d!13465 res!35290) b!64861))

(assert (= (and b!64861 c!8885) b!64841))

(assert (= (and b!64861 (not c!8885)) b!64864))

(assert (= (and b!64841 res!35301) b!64835))

(assert (= (or b!64841 b!64835 b!64864) bm!5283))

(assert (= (or b!64835 b!64864) bm!5263))

(assert (=> bm!5282 m!59087))

(declare-fun m!59195 () Bool)

(assert (=> bm!5282 m!59195))

(declare-fun m!59197 () Bool)

(assert (=> b!64837 m!59197))

(declare-fun m!59199 () Bool)

(assert (=> b!64851 m!59199))

(assert (=> b!64836 m!59121))

(declare-fun m!59201 () Bool)

(assert (=> b!64836 m!59201))

(declare-fun m!59203 () Bool)

(assert (=> b!64845 m!59203))

(declare-fun m!59205 () Bool)

(assert (=> bm!5272 m!59205))

(declare-fun m!59207 () Bool)

(assert (=> bm!5262 m!59207))

(declare-fun m!59209 () Bool)

(assert (=> bm!5262 m!59209))

(assert (=> b!64840 m!59121))

(declare-fun m!59211 () Bool)

(assert (=> b!64840 m!59211))

(declare-fun m!59213 () Bool)

(assert (=> b!64870 m!59213))

(assert (=> b!64874 m!59087))

(declare-fun m!59215 () Bool)

(assert (=> b!64874 m!59215))

(declare-fun m!59217 () Bool)

(assert (=> b!64835 m!59217))

(declare-fun m!59219 () Bool)

(assert (=> bm!5269 m!59219))

(declare-fun m!59221 () Bool)

(assert (=> bm!5269 m!59221))

(assert (=> b!64841 m!59087))

(declare-fun m!59223 () Bool)

(assert (=> b!64841 m!59223))

(declare-fun m!59225 () Bool)

(assert (=> bm!5283 m!59225))

(declare-fun m!59227 () Bool)

(assert (=> b!64850 m!59227))

(assert (=> b!64850 m!59207))

(assert (=> b!64850 m!59087))

(assert (=> b!64850 m!59121))

(declare-fun m!59229 () Bool)

(assert (=> b!64850 m!59229))

(assert (=> b!64850 m!59087))

(declare-fun m!59231 () Bool)

(assert (=> b!64850 m!59231))

(declare-fun m!59233 () Bool)

(assert (=> bm!5284 m!59233))

(declare-fun m!59235 () Bool)

(assert (=> bm!5265 m!59235))

(declare-fun m!59237 () Bool)

(assert (=> b!64872 m!59237))

(assert (=> bm!5276 m!59087))

(assert (=> bm!5276 m!59121))

(declare-fun m!59239 () Bool)

(assert (=> bm!5276 m!59239))

(declare-fun m!59241 () Bool)

(assert (=> bm!5281 m!59241))

(declare-fun m!59243 () Bool)

(assert (=> d!13465 m!59243))

(assert (=> d!13465 m!59103))

(assert (=> bm!5263 m!59113))

(assert (=> bm!5264 m!59087))

(assert (=> bm!5264 m!59215))

(assert (=> bm!5267 m!59087))

(declare-fun m!59245 () Bool)

(assert (=> bm!5267 m!59245))

(assert (=> bm!5273 m!59087))

(declare-fun m!59247 () Bool)

(assert (=> bm!5273 m!59247))

(declare-fun m!59249 () Bool)

(assert (=> b!64854 m!59249))

(assert (=> b!64648 d!13465))

(declare-fun d!13467 () Bool)

(declare-fun c!8899 () Bool)

(assert (=> d!13467 (= c!8899 ((_ is ValueCellFull!870) (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-fun e!42517 () V!2883)

(assert (=> d!13467 (= (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!42517)))

(declare-fun b!64879 () Bool)

(declare-fun get!1111 (ValueCell!870 V!2883) V!2883)

(assert (=> b!64879 (= e!42517 (get!1111 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!64880 () Bool)

(declare-fun get!1112 (ValueCell!870 V!2883) V!2883)

(assert (=> b!64880 (= e!42517 (get!1112 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!13467 c!8899) b!64879))

(assert (= (and d!13467 (not c!8899)) b!64880))

(assert (=> b!64879 m!59117))

(assert (=> b!64879 m!59119))

(declare-fun m!59251 () Bool)

(assert (=> b!64879 m!59251))

(assert (=> b!64880 m!59117))

(assert (=> b!64880 m!59119))

(declare-fun m!59253 () Bool)

(assert (=> b!64880 m!59253))

(assert (=> b!64648 d!13467))

(declare-fun d!13469 () Bool)

(assert (=> d!13469 (= (array_inv!1071 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvsge (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!64658 d!13469))

(declare-fun d!13471 () Bool)

(assert (=> d!13471 (= (array_inv!1072 (_values!2105 (v!2447 (underlying!240 thiss!992)))) (bvsge (size!2045 (_values!2105 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!64658 d!13471))

(declare-fun d!13473 () Bool)

(assert (=> d!13473 (= (valid!269 thiss!992) (valid!270 (v!2447 (underlying!240 thiss!992))))))

(declare-fun bs!2804 () Bool)

(assert (= bs!2804 d!13473))

(declare-fun m!59255 () Bool)

(assert (=> bs!2804 m!59255))

(assert (=> start!9126 d!13473))

(declare-fun d!13475 () Bool)

(declare-fun res!35310 () Bool)

(declare-fun e!42520 () Bool)

(assert (=> d!13475 (=> (not res!35310) (not e!42520))))

(declare-fun simpleValid!45 (LongMapFixedSize!648) Bool)

(assert (=> d!13475 (= res!35310 (simpleValid!45 newMap!16))))

(assert (=> d!13475 (= (valid!270 newMap!16) e!42520)))

(declare-fun b!64887 () Bool)

(declare-fun res!35311 () Bool)

(assert (=> b!64887 (=> (not res!35311) (not e!42520))))

(declare-fun arrayCountValidKeys!0 (array!3788 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!64887 (= res!35311 (= (arrayCountValidKeys!0 (_keys!3760 newMap!16) #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))) (_size!373 newMap!16)))))

(declare-fun b!64888 () Bool)

(declare-fun res!35312 () Bool)

(assert (=> b!64888 (=> (not res!35312) (not e!42520))))

(assert (=> b!64888 (= res!35312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3760 newMap!16) (mask!6044 newMap!16)))))

(declare-fun b!64889 () Bool)

(assert (=> b!64889 (= e!42520 (arrayNoDuplicates!0 (_keys!3760 newMap!16) #b00000000000000000000000000000000 Nil!1473))))

(assert (= (and d!13475 res!35310) b!64887))

(assert (= (and b!64887 res!35311) b!64888))

(assert (= (and b!64888 res!35312) b!64889))

(declare-fun m!59257 () Bool)

(assert (=> d!13475 m!59257))

(declare-fun m!59259 () Bool)

(assert (=> b!64887 m!59259))

(declare-fun m!59261 () Bool)

(assert (=> b!64888 m!59261))

(declare-fun m!59263 () Bool)

(assert (=> b!64889 m!59263))

(assert (=> b!64666 d!13475))

(declare-fun d!13477 () Bool)

(assert (=> d!13477 (not (arrayContainsKey!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!27578 () Unit!1784)

(declare-fun choose!68 (array!3788 (_ BitVec 32) (_ BitVec 64) List!1476) Unit!1784)

(assert (=> d!13477 (= lt!27578 (choose!68 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (Cons!1472 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) Nil!1473)))))

(assert (=> d!13477 (bvslt (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!13477 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (Cons!1472 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) Nil!1473)) lt!27578)))

(declare-fun bs!2805 () Bool)

(assert (= bs!2805 d!13477))

(assert (=> bs!2805 m!59087))

(assert (=> bs!2805 m!59091))

(assert (=> bs!2805 m!59087))

(declare-fun m!59265 () Bool)

(assert (=> bs!2805 m!59265))

(assert (=> b!64661 d!13477))

(declare-fun d!13479 () Bool)

(assert (=> d!13479 (arrayNoDuplicates!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) from!355 Nil!1473)))

(declare-fun lt!27581 () Unit!1784)

(declare-fun choose!39 (array!3788 (_ BitVec 32) (_ BitVec 32)) Unit!1784)

(assert (=> d!13479 (= lt!27581 (choose!39 (_keys!3760 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!13479 (bvslt (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!13479 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000000 from!355) lt!27581)))

(declare-fun bs!2806 () Bool)

(assert (= bs!2806 d!13479))

(assert (=> bs!2806 m!59085))

(declare-fun m!59267 () Bool)

(assert (=> bs!2806 m!59267))

(assert (=> b!64661 d!13479))

(declare-fun d!13481 () Bool)

(declare-fun res!35317 () Bool)

(declare-fun e!42525 () Bool)

(assert (=> d!13481 (=> res!35317 e!42525)))

(assert (=> d!13481 (= res!35317 (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(assert (=> d!13481 (= (arrayContainsKey!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!42525)))

(declare-fun b!64894 () Bool)

(declare-fun e!42526 () Bool)

(assert (=> b!64894 (= e!42525 e!42526)))

(declare-fun res!35318 () Bool)

(assert (=> b!64894 (=> (not res!35318) (not e!42526))))

(assert (=> b!64894 (= res!35318 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))))

(declare-fun b!64895 () Bool)

(assert (=> b!64895 (= e!42526 (arrayContainsKey!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!13481 (not res!35317)) b!64894))

(assert (= (and b!64894 res!35318) b!64895))

(declare-fun m!59269 () Bool)

(assert (=> d!13481 m!59269))

(assert (=> b!64895 m!59087))

(declare-fun m!59271 () Bool)

(assert (=> b!64895 m!59271))

(assert (=> b!64661 d!13481))

(declare-fun d!13483 () Bool)

(declare-fun e!42529 () Bool)

(assert (=> d!13483 e!42529))

(declare-fun c!8902 () Bool)

(assert (=> d!13483 (= c!8902 (and (not (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!27584 () Unit!1784)

(declare-fun choose!361 (array!3788 array!3790 (_ BitVec 32) (_ BitVec 32) V!2883 V!2883 (_ BitVec 64) (_ BitVec 32) Int) Unit!1784)

(assert (=> d!13483 (= lt!27584 (choose!361 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (_values!2105 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992))) (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) (minValue!2031 (v!2447 (underlying!240 thiss!992))) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992)))))))

(assert (=> d!13483 (validMask!0 (mask!6044 (v!2447 (underlying!240 thiss!992))))))

(assert (=> d!13483 (= (lemmaListMapContainsThenArrayContainsFrom!38 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (_values!2105 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992))) (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) (minValue!2031 (v!2447 (underlying!240 thiss!992))) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992)))) lt!27584)))

(declare-fun b!64900 () Bool)

(assert (=> b!64900 (= e!42529 (arrayContainsKey!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!64901 () Bool)

(assert (=> b!64901 (= e!42529 (ite (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!13483 c!8902) b!64900))

(assert (= (and d!13483 (not c!8902)) b!64901))

(assert (=> d!13483 m!59087))

(declare-fun m!59273 () Bool)

(assert (=> d!13483 m!59273))

(assert (=> d!13483 m!59101))

(assert (=> b!64900 m!59087))

(assert (=> b!64900 m!59091))

(assert (=> b!64661 d!13483))

(declare-fun b!64912 () Bool)

(declare-fun e!42541 () Bool)

(declare-fun e!42539 () Bool)

(assert (=> b!64912 (= e!42541 e!42539)))

(declare-fun res!35326 () Bool)

(assert (=> b!64912 (=> (not res!35326) (not e!42539))))

(declare-fun e!42538 () Bool)

(assert (=> b!64912 (= res!35326 (not e!42538))))

(declare-fun res!35327 () Bool)

(assert (=> b!64912 (=> (not res!35327) (not e!42538))))

(assert (=> b!64912 (= res!35327 (validKeyInArray!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-fun b!64913 () Bool)

(declare-fun e!42540 () Bool)

(declare-fun call!5290 () Bool)

(assert (=> b!64913 (= e!42540 call!5290)))

(declare-fun b!64914 () Bool)

(assert (=> b!64914 (= e!42539 e!42540)))

(declare-fun c!8905 () Bool)

(assert (=> b!64914 (= c!8905 (validKeyInArray!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-fun b!64915 () Bool)

(declare-fun contains!709 (List!1476 (_ BitVec 64)) Bool)

(assert (=> b!64915 (= e!42538 (contains!709 Nil!1473 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-fun b!64916 () Bool)

(assert (=> b!64916 (= e!42540 call!5290)))

(declare-fun d!13485 () Bool)

(declare-fun res!35325 () Bool)

(assert (=> d!13485 (=> res!35325 e!42541)))

(assert (=> d!13485 (= res!35325 (bvsge from!355 (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))))

(assert (=> d!13485 (= (arrayNoDuplicates!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) from!355 Nil!1473) e!42541)))

(declare-fun bm!5287 () Bool)

(assert (=> bm!5287 (= call!5290 (arrayNoDuplicates!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!8905 (Cons!1472 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) Nil!1473) Nil!1473)))))

(assert (= (and d!13485 (not res!35325)) b!64912))

(assert (= (and b!64912 res!35327) b!64915))

(assert (= (and b!64912 res!35326) b!64914))

(assert (= (and b!64914 c!8905) b!64916))

(assert (= (and b!64914 (not c!8905)) b!64913))

(assert (= (or b!64916 b!64913) bm!5287))

(assert (=> b!64912 m!59087))

(assert (=> b!64912 m!59087))

(declare-fun m!59275 () Bool)

(assert (=> b!64912 m!59275))

(assert (=> b!64914 m!59087))

(assert (=> b!64914 m!59087))

(assert (=> b!64914 m!59275))

(assert (=> b!64915 m!59087))

(assert (=> b!64915 m!59087))

(declare-fun m!59277 () Bool)

(assert (=> b!64915 m!59277))

(assert (=> bm!5287 m!59087))

(declare-fun m!59279 () Bool)

(assert (=> bm!5287 m!59279))

(assert (=> b!64661 d!13485))

(declare-fun b!64917 () Bool)

(declare-fun e!42545 () Bool)

(declare-fun e!42543 () Bool)

(assert (=> b!64917 (= e!42545 e!42543)))

(declare-fun res!35329 () Bool)

(assert (=> b!64917 (=> (not res!35329) (not e!42543))))

(declare-fun e!42542 () Bool)

(assert (=> b!64917 (= res!35329 (not e!42542))))

(declare-fun res!35330 () Bool)

(assert (=> b!64917 (=> (not res!35330) (not e!42542))))

(assert (=> b!64917 (= res!35330 (validKeyInArray!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!64918 () Bool)

(declare-fun e!42544 () Bool)

(declare-fun call!5291 () Bool)

(assert (=> b!64918 (= e!42544 call!5291)))

(declare-fun b!64919 () Bool)

(assert (=> b!64919 (= e!42543 e!42544)))

(declare-fun c!8906 () Bool)

(assert (=> b!64919 (= c!8906 (validKeyInArray!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!64920 () Bool)

(assert (=> b!64920 (= e!42542 (contains!709 Nil!1473 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!64921 () Bool)

(assert (=> b!64921 (= e!42544 call!5291)))

(declare-fun d!13487 () Bool)

(declare-fun res!35328 () Bool)

(assert (=> d!13487 (=> res!35328 e!42545)))

(assert (=> d!13487 (= res!35328 (bvsge #b00000000000000000000000000000000 (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))))

(assert (=> d!13487 (= (arrayNoDuplicates!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000000 Nil!1473) e!42545)))

(declare-fun bm!5288 () Bool)

(assert (=> bm!5288 (= call!5291 (arrayNoDuplicates!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!8906 (Cons!1472 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000) Nil!1473) Nil!1473)))))

(assert (= (and d!13487 (not res!35328)) b!64917))

(assert (= (and b!64917 res!35330) b!64920))

(assert (= (and b!64917 res!35329) b!64919))

(assert (= (and b!64919 c!8906) b!64921))

(assert (= (and b!64919 (not c!8906)) b!64918))

(assert (= (or b!64921 b!64918) bm!5288))

(assert (=> b!64917 m!59175))

(assert (=> b!64917 m!59175))

(assert (=> b!64917 m!59183))

(assert (=> b!64919 m!59175))

(assert (=> b!64919 m!59175))

(assert (=> b!64919 m!59183))

(assert (=> b!64920 m!59175))

(assert (=> b!64920 m!59175))

(declare-fun m!59281 () Bool)

(assert (=> b!64920 m!59281))

(assert (=> bm!5288 m!59175))

(declare-fun m!59283 () Bool)

(assert (=> bm!5288 m!59283))

(assert (=> b!64656 d!13487))

(declare-fun d!13489 () Bool)

(assert (=> d!13489 (= (array_inv!1071 (_keys!3760 newMap!16)) (bvsge (size!2044 (_keys!3760 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!64664 d!13489))

(declare-fun d!13491 () Bool)

(assert (=> d!13491 (= (array_inv!1072 (_values!2105 newMap!16)) (bvsge (size!2045 (_values!2105 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!64664 d!13491))

(declare-fun d!13493 () Bool)

(assert (=> d!13493 (= (map!1128 newMap!16) (getCurrentListMap!412 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun bs!2807 () Bool)

(assert (= bs!2807 d!13493))

(declare-fun m!59285 () Bool)

(assert (=> bs!2807 m!59285))

(assert (=> b!64655 d!13493))

(declare-fun b!64964 () Bool)

(declare-fun e!42580 () Bool)

(declare-fun e!42583 () Bool)

(assert (=> b!64964 (= e!42580 e!42583)))

(declare-fun c!8924 () Bool)

(assert (=> b!64964 (= c!8924 (not (= (bvand (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!64965 () Bool)

(declare-fun e!42577 () Bool)

(declare-fun e!42582 () Bool)

(assert (=> b!64965 (= e!42577 e!42582)))

(declare-fun res!35353 () Bool)

(assert (=> b!64965 (=> (not res!35353) (not e!42582))))

(declare-fun lt!27645 () ListLongMap!1401)

(assert (=> b!64965 (= res!35353 (contains!708 lt!27645 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!64965 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))))

(declare-fun d!13495 () Bool)

(assert (=> d!13495 e!42580))

(declare-fun res!35351 () Bool)

(assert (=> d!13495 (=> (not res!35351) (not e!42580))))

(assert (=> d!13495 (= res!35351 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))))))

(declare-fun lt!27647 () ListLongMap!1401)

(assert (=> d!13495 (= lt!27645 lt!27647)))

(declare-fun lt!27635 () Unit!1784)

(declare-fun e!42576 () Unit!1784)

(assert (=> d!13495 (= lt!27635 e!42576)))

(declare-fun c!8923 () Bool)

(declare-fun e!42573 () Bool)

(assert (=> d!13495 (= c!8923 e!42573)))

(declare-fun res!35355 () Bool)

(assert (=> d!13495 (=> (not res!35355) (not e!42573))))

(assert (=> d!13495 (= res!35355 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))))

(declare-fun e!42584 () ListLongMap!1401)

(assert (=> d!13495 (= lt!27647 e!42584)))

(declare-fun c!8919 () Bool)

(assert (=> d!13495 (= c!8919 (and (not (= (bvand (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!13495 (validMask!0 (mask!6044 (v!2447 (underlying!240 thiss!992))))))

(assert (=> d!13495 (= (getCurrentListMap!412 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (_values!2105 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992))) (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) (minValue!2031 (v!2447 (underlying!240 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992)))) lt!27645)))

(declare-fun b!64966 () Bool)

(declare-fun call!5308 () Bool)

(assert (=> b!64966 (= e!42583 (not call!5308))))

(declare-fun b!64967 () Bool)

(declare-fun c!8922 () Bool)

(assert (=> b!64967 (= c!8922 (and (not (= (bvand (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!42578 () ListLongMap!1401)

(declare-fun e!42579 () ListLongMap!1401)

(assert (=> b!64967 (= e!42578 e!42579)))

(declare-fun b!64968 () Bool)

(declare-fun Unit!1794 () Unit!1784)

(assert (=> b!64968 (= e!42576 Unit!1794)))

(declare-fun b!64969 () Bool)

(declare-fun e!42575 () Bool)

(declare-fun call!5310 () Bool)

(assert (=> b!64969 (= e!42575 (not call!5310))))

(declare-fun b!64970 () Bool)

(declare-fun e!42581 () Bool)

(declare-fun apply!70 (ListLongMap!1401 (_ BitVec 64)) V!2883)

(assert (=> b!64970 (= e!42581 (= (apply!70 lt!27645 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2031 (v!2447 (underlying!240 thiss!992)))))))

(declare-fun bm!5303 () Bool)

(declare-fun call!5306 () ListLongMap!1401)

(declare-fun call!5309 () ListLongMap!1401)

(assert (=> bm!5303 (= call!5306 call!5309)))

(declare-fun bm!5304 () Bool)

(assert (=> bm!5304 (= call!5310 (contains!708 lt!27645 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!64971 () Bool)

(declare-fun e!42572 () Bool)

(assert (=> b!64971 (= e!42572 (validKeyInArray!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun call!5307 () ListLongMap!1401)

(declare-fun call!5312 () ListLongMap!1401)

(declare-fun c!8921 () Bool)

(declare-fun bm!5305 () Bool)

(assert (=> bm!5305 (= call!5312 (+!85 (ite c!8919 call!5309 (ite c!8921 call!5306 call!5307)) (ite (or c!8919 c!8921) (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(declare-fun b!64972 () Bool)

(assert (=> b!64972 (= e!42582 (= (apply!70 lt!27645 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!64972 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2045 (_values!2105 (v!2447 (underlying!240 thiss!992))))))))

(assert (=> b!64972 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))))

(declare-fun b!64973 () Bool)

(declare-fun call!5311 () ListLongMap!1401)

(assert (=> b!64973 (= e!42579 call!5311)))

(declare-fun b!64974 () Bool)

(declare-fun e!42574 () Bool)

(assert (=> b!64974 (= e!42574 (= (apply!70 lt!27645 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))))))

(declare-fun bm!5306 () Bool)

(assert (=> bm!5306 (= call!5308 (contains!708 lt!27645 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!5307 () Bool)

(assert (=> bm!5307 (= call!5311 call!5312)))

(declare-fun b!64975 () Bool)

(assert (=> b!64975 (= e!42584 (+!85 call!5312 (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992))))))))

(declare-fun b!64976 () Bool)

(assert (=> b!64976 (= e!42573 (validKeyInArray!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!64977 () Bool)

(declare-fun lt!27641 () Unit!1784)

(assert (=> b!64977 (= e!42576 lt!27641)))

(declare-fun lt!27644 () ListLongMap!1401)

(declare-fun getCurrentListMapNoExtraKeys!48 (array!3788 array!3790 (_ BitVec 32) (_ BitVec 32) V!2883 V!2883 (_ BitVec 32) Int) ListLongMap!1401)

(assert (=> b!64977 (= lt!27644 (getCurrentListMapNoExtraKeys!48 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (_values!2105 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992))) (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) (minValue!2031 (v!2447 (underlying!240 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992)))))))

(declare-fun lt!27643 () (_ BitVec 64))

(assert (=> b!64977 (= lt!27643 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27634 () (_ BitVec 64))

(assert (=> b!64977 (= lt!27634 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!27639 () Unit!1784)

(declare-fun addStillContains!46 (ListLongMap!1401 (_ BitVec 64) V!2883 (_ BitVec 64)) Unit!1784)

(assert (=> b!64977 (= lt!27639 (addStillContains!46 lt!27644 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) lt!27634))))

(assert (=> b!64977 (contains!708 (+!85 lt!27644 (tuple2!2089 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))))) lt!27634)))

(declare-fun lt!27649 () Unit!1784)

(assert (=> b!64977 (= lt!27649 lt!27639)))

(declare-fun lt!27646 () ListLongMap!1401)

(assert (=> b!64977 (= lt!27646 (getCurrentListMapNoExtraKeys!48 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (_values!2105 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992))) (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) (minValue!2031 (v!2447 (underlying!240 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992)))))))

(declare-fun lt!27648 () (_ BitVec 64))

(assert (=> b!64977 (= lt!27648 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27640 () (_ BitVec 64))

(assert (=> b!64977 (= lt!27640 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!27630 () Unit!1784)

(declare-fun addApplyDifferent!46 (ListLongMap!1401 (_ BitVec 64) V!2883 (_ BitVec 64)) Unit!1784)

(assert (=> b!64977 (= lt!27630 (addApplyDifferent!46 lt!27646 lt!27648 (minValue!2031 (v!2447 (underlying!240 thiss!992))) lt!27640))))

(assert (=> b!64977 (= (apply!70 (+!85 lt!27646 (tuple2!2089 lt!27648 (minValue!2031 (v!2447 (underlying!240 thiss!992))))) lt!27640) (apply!70 lt!27646 lt!27640))))

(declare-fun lt!27633 () Unit!1784)

(assert (=> b!64977 (= lt!27633 lt!27630)))

(declare-fun lt!27642 () ListLongMap!1401)

(assert (=> b!64977 (= lt!27642 (getCurrentListMapNoExtraKeys!48 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (_values!2105 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992))) (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) (minValue!2031 (v!2447 (underlying!240 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992)))))))

(declare-fun lt!27650 () (_ BitVec 64))

(assert (=> b!64977 (= lt!27650 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27631 () (_ BitVec 64))

(assert (=> b!64977 (= lt!27631 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!27638 () Unit!1784)

(assert (=> b!64977 (= lt!27638 (addApplyDifferent!46 lt!27642 lt!27650 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) lt!27631))))

(assert (=> b!64977 (= (apply!70 (+!85 lt!27642 (tuple2!2089 lt!27650 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))))) lt!27631) (apply!70 lt!27642 lt!27631))))

(declare-fun lt!27636 () Unit!1784)

(assert (=> b!64977 (= lt!27636 lt!27638)))

(declare-fun lt!27637 () ListLongMap!1401)

(assert (=> b!64977 (= lt!27637 (getCurrentListMapNoExtraKeys!48 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (_values!2105 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992))) (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) (minValue!2031 (v!2447 (underlying!240 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992)))))))

(declare-fun lt!27629 () (_ BitVec 64))

(assert (=> b!64977 (= lt!27629 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27632 () (_ BitVec 64))

(assert (=> b!64977 (= lt!27632 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!64977 (= lt!27641 (addApplyDifferent!46 lt!27637 lt!27629 (minValue!2031 (v!2447 (underlying!240 thiss!992))) lt!27632))))

(assert (=> b!64977 (= (apply!70 (+!85 lt!27637 (tuple2!2089 lt!27629 (minValue!2031 (v!2447 (underlying!240 thiss!992))))) lt!27632) (apply!70 lt!27637 lt!27632))))

(declare-fun bm!5308 () Bool)

(assert (=> bm!5308 (= call!5309 (getCurrentListMapNoExtraKeys!48 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (_values!2105 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992))) (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) (minValue!2031 (v!2447 (underlying!240 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992)))))))

(declare-fun b!64978 () Bool)

(assert (=> b!64978 (= e!42583 e!42581)))

(declare-fun res!35354 () Bool)

(assert (=> b!64978 (= res!35354 call!5308)))

(assert (=> b!64978 (=> (not res!35354) (not e!42581))))

(declare-fun bm!5309 () Bool)

(assert (=> bm!5309 (= call!5307 call!5306)))

(declare-fun b!64979 () Bool)

(declare-fun res!35350 () Bool)

(assert (=> b!64979 (=> (not res!35350) (not e!42580))))

(assert (=> b!64979 (= res!35350 e!42577)))

(declare-fun res!35352 () Bool)

(assert (=> b!64979 (=> res!35352 e!42577)))

(assert (=> b!64979 (= res!35352 (not e!42572))))

(declare-fun res!35356 () Bool)

(assert (=> b!64979 (=> (not res!35356) (not e!42572))))

(assert (=> b!64979 (= res!35356 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))))

(declare-fun b!64980 () Bool)

(declare-fun res!35357 () Bool)

(assert (=> b!64980 (=> (not res!35357) (not e!42580))))

(assert (=> b!64980 (= res!35357 e!42575)))

(declare-fun c!8920 () Bool)

(assert (=> b!64980 (= c!8920 (not (= (bvand (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!64981 () Bool)

(assert (=> b!64981 (= e!42579 call!5307)))

(declare-fun b!64982 () Bool)

(assert (=> b!64982 (= e!42584 e!42578)))

(assert (=> b!64982 (= c!8921 (and (not (= (bvand (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!64983 () Bool)

(assert (=> b!64983 (= e!42575 e!42574)))

(declare-fun res!35349 () Bool)

(assert (=> b!64983 (= res!35349 call!5310)))

(assert (=> b!64983 (=> (not res!35349) (not e!42574))))

(declare-fun b!64984 () Bool)

(assert (=> b!64984 (= e!42578 call!5311)))

(assert (= (and d!13495 c!8919) b!64975))

(assert (= (and d!13495 (not c!8919)) b!64982))

(assert (= (and b!64982 c!8921) b!64984))

(assert (= (and b!64982 (not c!8921)) b!64967))

(assert (= (and b!64967 c!8922) b!64973))

(assert (= (and b!64967 (not c!8922)) b!64981))

(assert (= (or b!64973 b!64981) bm!5309))

(assert (= (or b!64984 bm!5309) bm!5303))

(assert (= (or b!64984 b!64973) bm!5307))

(assert (= (or b!64975 bm!5303) bm!5308))

(assert (= (or b!64975 bm!5307) bm!5305))

(assert (= (and d!13495 res!35355) b!64976))

(assert (= (and d!13495 c!8923) b!64977))

(assert (= (and d!13495 (not c!8923)) b!64968))

(assert (= (and d!13495 res!35351) b!64979))

(assert (= (and b!64979 res!35356) b!64971))

(assert (= (and b!64979 (not res!35352)) b!64965))

(assert (= (and b!64965 res!35353) b!64972))

(assert (= (and b!64979 res!35350) b!64980))

(assert (= (and b!64980 c!8920) b!64983))

(assert (= (and b!64980 (not c!8920)) b!64969))

(assert (= (and b!64983 res!35349) b!64974))

(assert (= (or b!64983 b!64969) bm!5304))

(assert (= (and b!64980 res!35357) b!64964))

(assert (= (and b!64964 c!8924) b!64978))

(assert (= (and b!64964 (not c!8924)) b!64966))

(assert (= (and b!64978 res!35354) b!64970))

(assert (= (or b!64978 b!64966) bm!5306))

(declare-fun b_lambda!2915 () Bool)

(assert (=> (not b_lambda!2915) (not b!64972)))

(assert (=> b!64972 t!4906))

(declare-fun b_and!3973 () Bool)

(assert (= b_and!3961 (and (=> t!4906 result!2501) b_and!3973)))

(assert (=> b!64972 t!4908))

(declare-fun b_and!3975 () Bool)

(assert (= b_and!3963 (and (=> t!4908 result!2505) b_and!3975)))

(assert (=> d!13495 m!59101))

(declare-fun m!59287 () Bool)

(assert (=> bm!5306 m!59287))

(declare-fun m!59289 () Bool)

(assert (=> b!64974 m!59289))

(declare-fun m!59291 () Bool)

(assert (=> bm!5305 m!59291))

(assert (=> b!64971 m!59269))

(assert (=> b!64971 m!59269))

(declare-fun m!59293 () Bool)

(assert (=> b!64971 m!59293))

(declare-fun m!59295 () Bool)

(assert (=> bm!5304 m!59295))

(assert (=> b!64965 m!59269))

(assert (=> b!64965 m!59269))

(declare-fun m!59297 () Bool)

(assert (=> b!64965 m!59297))

(assert (=> b!64972 m!59119))

(assert (=> b!64972 m!59269))

(declare-fun m!59299 () Bool)

(assert (=> b!64972 m!59299))

(assert (=> b!64972 m!59119))

(declare-fun m!59301 () Bool)

(assert (=> b!64972 m!59301))

(assert (=> b!64972 m!59269))

(declare-fun m!59303 () Bool)

(assert (=> b!64972 m!59303))

(assert (=> b!64972 m!59299))

(declare-fun m!59305 () Bool)

(assert (=> b!64977 m!59305))

(declare-fun m!59307 () Bool)

(assert (=> b!64977 m!59307))

(declare-fun m!59309 () Bool)

(assert (=> b!64977 m!59309))

(declare-fun m!59311 () Bool)

(assert (=> b!64977 m!59311))

(assert (=> b!64977 m!59269))

(declare-fun m!59313 () Bool)

(assert (=> b!64977 m!59313))

(declare-fun m!59315 () Bool)

(assert (=> b!64977 m!59315))

(declare-fun m!59317 () Bool)

(assert (=> b!64977 m!59317))

(declare-fun m!59319 () Bool)

(assert (=> b!64977 m!59319))

(assert (=> b!64977 m!59307))

(declare-fun m!59321 () Bool)

(assert (=> b!64977 m!59321))

(declare-fun m!59323 () Bool)

(assert (=> b!64977 m!59323))

(declare-fun m!59325 () Bool)

(assert (=> b!64977 m!59325))

(assert (=> b!64977 m!59313))

(declare-fun m!59327 () Bool)

(assert (=> b!64977 m!59327))

(assert (=> b!64977 m!59325))

(declare-fun m!59329 () Bool)

(assert (=> b!64977 m!59329))

(declare-fun m!59331 () Bool)

(assert (=> b!64977 m!59331))

(assert (=> b!64977 m!59315))

(declare-fun m!59333 () Bool)

(assert (=> b!64977 m!59333))

(declare-fun m!59335 () Bool)

(assert (=> b!64977 m!59335))

(assert (=> bm!5308 m!59319))

(assert (=> b!64976 m!59269))

(assert (=> b!64976 m!59269))

(assert (=> b!64976 m!59293))

(declare-fun m!59337 () Bool)

(assert (=> b!64970 m!59337))

(declare-fun m!59339 () Bool)

(assert (=> b!64975 m!59339))

(assert (=> b!64655 d!13495))

(declare-fun b!64992 () Bool)

(declare-fun e!42590 () Bool)

(assert (=> b!64992 (= e!42590 tp_is_empty!2427)))

(declare-fun condMapEmpty!3003 () Bool)

(declare-fun mapDefault!3003 () ValueCell!870)

(assert (=> mapNonEmpty!2993 (= condMapEmpty!3003 (= mapRest!2993 ((as const (Array (_ BitVec 32) ValueCell!870)) mapDefault!3003)))))

(declare-fun mapRes!3003 () Bool)

(assert (=> mapNonEmpty!2993 (= tp!8207 (and e!42590 mapRes!3003))))

(declare-fun b!64991 () Bool)

(declare-fun e!42589 () Bool)

(assert (=> b!64991 (= e!42589 tp_is_empty!2427)))

(declare-fun mapIsEmpty!3003 () Bool)

(assert (=> mapIsEmpty!3003 mapRes!3003))

(declare-fun mapNonEmpty!3003 () Bool)

(declare-fun tp!8223 () Bool)

(assert (=> mapNonEmpty!3003 (= mapRes!3003 (and tp!8223 e!42589))))

(declare-fun mapKey!3003 () (_ BitVec 32))

(declare-fun mapRest!3003 () (Array (_ BitVec 32) ValueCell!870))

(declare-fun mapValue!3003 () ValueCell!870)

(assert (=> mapNonEmpty!3003 (= mapRest!2993 (store mapRest!3003 mapKey!3003 mapValue!3003))))

(assert (= (and mapNonEmpty!2993 condMapEmpty!3003) mapIsEmpty!3003))

(assert (= (and mapNonEmpty!2993 (not condMapEmpty!3003)) mapNonEmpty!3003))

(assert (= (and mapNonEmpty!3003 ((_ is ValueCellFull!870) mapValue!3003)) b!64991))

(assert (= (and mapNonEmpty!2993 ((_ is ValueCellFull!870) mapDefault!3003)) b!64992))

(declare-fun m!59341 () Bool)

(assert (=> mapNonEmpty!3003 m!59341))

(declare-fun b!64994 () Bool)

(declare-fun e!42592 () Bool)

(assert (=> b!64994 (= e!42592 tp_is_empty!2427)))

(declare-fun condMapEmpty!3004 () Bool)

(declare-fun mapDefault!3004 () ValueCell!870)

(assert (=> mapNonEmpty!2994 (= condMapEmpty!3004 (= mapRest!2994 ((as const (Array (_ BitVec 32) ValueCell!870)) mapDefault!3004)))))

(declare-fun mapRes!3004 () Bool)

(assert (=> mapNonEmpty!2994 (= tp!8205 (and e!42592 mapRes!3004))))

(declare-fun b!64993 () Bool)

(declare-fun e!42591 () Bool)

(assert (=> b!64993 (= e!42591 tp_is_empty!2427)))

(declare-fun mapIsEmpty!3004 () Bool)

(assert (=> mapIsEmpty!3004 mapRes!3004))

(declare-fun mapNonEmpty!3004 () Bool)

(declare-fun tp!8224 () Bool)

(assert (=> mapNonEmpty!3004 (= mapRes!3004 (and tp!8224 e!42591))))

(declare-fun mapRest!3004 () (Array (_ BitVec 32) ValueCell!870))

(declare-fun mapValue!3004 () ValueCell!870)

(declare-fun mapKey!3004 () (_ BitVec 32))

(assert (=> mapNonEmpty!3004 (= mapRest!2994 (store mapRest!3004 mapKey!3004 mapValue!3004))))

(assert (= (and mapNonEmpty!2994 condMapEmpty!3004) mapIsEmpty!3004))

(assert (= (and mapNonEmpty!2994 (not condMapEmpty!3004)) mapNonEmpty!3004))

(assert (= (and mapNonEmpty!3004 ((_ is ValueCellFull!870) mapValue!3004)) b!64993))

(assert (= (and mapNonEmpty!2994 ((_ is ValueCellFull!870) mapDefault!3004)) b!64994))

(declare-fun m!59343 () Bool)

(assert (=> mapNonEmpty!3004 m!59343))

(declare-fun b_lambda!2917 () Bool)

(assert (= b_lambda!2915 (or (and b!64658 b_free!2021) (and b!64664 b_free!2023 (= (defaultEntry!2122 newMap!16) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))))) b_lambda!2917)))

(check-sat (not b!64970) (not bm!5282) (not b!64874) (not bm!5212) (not b!64850) (not d!13479) (not bm!5287) (not b_lambda!2917) (not mapNonEmpty!3004) (not bm!5272) (not b!64895) (not b!64976) (not bm!5267) b_and!3973 (not b!64879) (not d!13473) (not bm!5283) (not bm!5288) (not b!64744) (not b!64917) (not b_next!2021) (not bm!5269) (not mapNonEmpty!3003) (not b!64912) (not b!64920) (not b!64914) (not bm!5281) (not d!13477) (not b!64977) (not b!64841) (not b_next!2023) (not d!13465) (not b!64900) tp_is_empty!2427 (not d!13495) (not b!64975) (not b!64836) (not bm!5263) (not b!64965) (not bm!5262) (not bm!5273) (not bm!5284) (not b_lambda!2913) (not bm!5265) (not b!64743) (not b!64752) (not b!64880) (not b!64919) (not d!13475) (not d!13463) (not bm!5305) (not b!64888) (not b!64835) (not b!64887) (not bm!5304) (not b!64840) (not d!13483) (not b!64754) (not b!64972) (not d!13493) (not b!64971) (not bm!5308) (not bm!5276) (not b!64889) (not b!64974) (not bm!5306) b_and!3975 (not b!64915) (not bm!5264))
(check-sat b_and!3973 b_and!3975 (not b_next!2021) (not b_next!2023))
(get-model)

(declare-fun d!13497 () Bool)

(declare-fun e!42594 () Bool)

(assert (=> d!13497 e!42594))

(declare-fun res!35358 () Bool)

(assert (=> d!13497 (=> res!35358 e!42594)))

(declare-fun lt!27654 () Bool)

(assert (=> d!13497 (= res!35358 (not lt!27654))))

(declare-fun lt!27651 () Bool)

(assert (=> d!13497 (= lt!27654 lt!27651)))

(declare-fun lt!27653 () Unit!1784)

(declare-fun e!42593 () Unit!1784)

(assert (=> d!13497 (= lt!27653 e!42593)))

(declare-fun c!8925 () Bool)

(assert (=> d!13497 (= c!8925 lt!27651)))

(assert (=> d!13497 (= lt!27651 (containsKey!131 (toList!716 lt!27645) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!13497 (= (contains!708 lt!27645 #b1000000000000000000000000000000000000000000000000000000000000000) lt!27654)))

(declare-fun b!64995 () Bool)

(declare-fun lt!27652 () Unit!1784)

(assert (=> b!64995 (= e!42593 lt!27652)))

(assert (=> b!64995 (= lt!27652 (lemmaContainsKeyImpliesGetValueByKeyDefined!80 (toList!716 lt!27645) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!64995 (isDefined!81 (getValueByKey!127 (toList!716 lt!27645) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!64996 () Bool)

(declare-fun Unit!1795 () Unit!1784)

(assert (=> b!64996 (= e!42593 Unit!1795)))

(declare-fun b!64997 () Bool)

(assert (=> b!64997 (= e!42594 (isDefined!81 (getValueByKey!127 (toList!716 lt!27645) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!13497 c!8925) b!64995))

(assert (= (and d!13497 (not c!8925)) b!64996))

(assert (= (and d!13497 (not res!35358)) b!64997))

(declare-fun m!59345 () Bool)

(assert (=> d!13497 m!59345))

(declare-fun m!59347 () Bool)

(assert (=> b!64995 m!59347))

(declare-fun m!59349 () Bool)

(assert (=> b!64995 m!59349))

(assert (=> b!64995 m!59349))

(declare-fun m!59351 () Bool)

(assert (=> b!64995 m!59351))

(assert (=> b!64997 m!59349))

(assert (=> b!64997 m!59349))

(assert (=> b!64997 m!59351))

(assert (=> bm!5306 d!13497))

(declare-fun d!13499 () Bool)

(assert (=> d!13499 (= (validKeyInArray!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)) (and (not (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!64912 d!13499))

(declare-fun b!64998 () Bool)

(declare-fun e!42603 () Bool)

(declare-fun e!42606 () Bool)

(assert (=> b!64998 (= e!42603 e!42606)))

(declare-fun c!8931 () Bool)

(assert (=> b!64998 (= c!8931 (not (= (bvand (extraKeys!1995 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!64999 () Bool)

(declare-fun e!42600 () Bool)

(declare-fun e!42605 () Bool)

(assert (=> b!64999 (= e!42600 e!42605)))

(declare-fun res!35363 () Bool)

(assert (=> b!64999 (=> (not res!35363) (not e!42605))))

(declare-fun lt!27671 () ListLongMap!1401)

(assert (=> b!64999 (= res!35363 (contains!708 lt!27671 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!64999 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))

(declare-fun d!13501 () Bool)

(assert (=> d!13501 e!42603))

(declare-fun res!35361 () Bool)

(assert (=> d!13501 (=> (not res!35361) (not e!42603))))

(assert (=> d!13501 (= res!35361 (or (bvsge #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))))

(declare-fun lt!27673 () ListLongMap!1401)

(assert (=> d!13501 (= lt!27671 lt!27673)))

(declare-fun lt!27661 () Unit!1784)

(declare-fun e!42599 () Unit!1784)

(assert (=> d!13501 (= lt!27661 e!42599)))

(declare-fun c!8930 () Bool)

(declare-fun e!42596 () Bool)

(assert (=> d!13501 (= c!8930 e!42596)))

(declare-fun res!35365 () Bool)

(assert (=> d!13501 (=> (not res!35365) (not e!42596))))

(assert (=> d!13501 (= res!35365 (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))

(declare-fun e!42607 () ListLongMap!1401)

(assert (=> d!13501 (= lt!27673 e!42607)))

(declare-fun c!8926 () Bool)

(assert (=> d!13501 (= c!8926 (and (not (= (bvand (extraKeys!1995 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1995 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!13501 (validMask!0 (mask!6044 newMap!16))))

(assert (=> d!13501 (= (getCurrentListMap!412 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)) lt!27671)))

(declare-fun b!65000 () Bool)

(declare-fun call!5315 () Bool)

(assert (=> b!65000 (= e!42606 (not call!5315))))

(declare-fun b!65001 () Bool)

(declare-fun c!8929 () Bool)

(assert (=> b!65001 (= c!8929 (and (not (= (bvand (extraKeys!1995 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1995 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!42601 () ListLongMap!1401)

(declare-fun e!42602 () ListLongMap!1401)

(assert (=> b!65001 (= e!42601 e!42602)))

(declare-fun b!65002 () Bool)

(declare-fun Unit!1796 () Unit!1784)

(assert (=> b!65002 (= e!42599 Unit!1796)))

(declare-fun b!65003 () Bool)

(declare-fun e!42598 () Bool)

(declare-fun call!5317 () Bool)

(assert (=> b!65003 (= e!42598 (not call!5317))))

(declare-fun b!65004 () Bool)

(declare-fun e!42604 () Bool)

(assert (=> b!65004 (= e!42604 (= (apply!70 lt!27671 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2031 newMap!16)))))

(declare-fun bm!5310 () Bool)

(declare-fun call!5313 () ListLongMap!1401)

(declare-fun call!5316 () ListLongMap!1401)

(assert (=> bm!5310 (= call!5313 call!5316)))

(declare-fun bm!5311 () Bool)

(assert (=> bm!5311 (= call!5317 (contains!708 lt!27671 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!65005 () Bool)

(declare-fun e!42595 () Bool)

(assert (=> b!65005 (= e!42595 (validKeyInArray!0 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!5312 () Bool)

(declare-fun call!5319 () ListLongMap!1401)

(declare-fun c!8928 () Bool)

(declare-fun call!5314 () ListLongMap!1401)

(assert (=> bm!5312 (= call!5319 (+!85 (ite c!8926 call!5316 (ite c!8928 call!5313 call!5314)) (ite (or c!8926 c!8928) (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2031 newMap!16)) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 newMap!16)))))))

(declare-fun b!65006 () Bool)

(assert (=> b!65006 (= e!42605 (= (apply!70 lt!27671 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)) (get!1110 (select (arr!1811 (_values!2105 newMap!16)) #b00000000000000000000000000000000) (dynLambda!320 (defaultEntry!2122 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!65006 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2045 (_values!2105 newMap!16))))))

(assert (=> b!65006 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))

(declare-fun b!65007 () Bool)

(declare-fun call!5318 () ListLongMap!1401)

(assert (=> b!65007 (= e!42602 call!5318)))

(declare-fun b!65008 () Bool)

(declare-fun e!42597 () Bool)

(assert (=> b!65008 (= e!42597 (= (apply!70 lt!27671 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2031 newMap!16)))))

(declare-fun bm!5313 () Bool)

(assert (=> bm!5313 (= call!5315 (contains!708 lt!27671 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!5314 () Bool)

(assert (=> bm!5314 (= call!5318 call!5319)))

(declare-fun b!65009 () Bool)

(assert (=> b!65009 (= e!42607 (+!85 call!5319 (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 newMap!16))))))

(declare-fun b!65010 () Bool)

(assert (=> b!65010 (= e!42596 (validKeyInArray!0 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!65011 () Bool)

(declare-fun lt!27667 () Unit!1784)

(assert (=> b!65011 (= e!42599 lt!27667)))

(declare-fun lt!27670 () ListLongMap!1401)

(assert (=> b!65011 (= lt!27670 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27669 () (_ BitVec 64))

(assert (=> b!65011 (= lt!27669 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27660 () (_ BitVec 64))

(assert (=> b!65011 (= lt!27660 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27665 () Unit!1784)

(assert (=> b!65011 (= lt!27665 (addStillContains!46 lt!27670 lt!27669 (zeroValue!2031 newMap!16) lt!27660))))

(assert (=> b!65011 (contains!708 (+!85 lt!27670 (tuple2!2089 lt!27669 (zeroValue!2031 newMap!16))) lt!27660)))

(declare-fun lt!27675 () Unit!1784)

(assert (=> b!65011 (= lt!27675 lt!27665)))

(declare-fun lt!27672 () ListLongMap!1401)

(assert (=> b!65011 (= lt!27672 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27674 () (_ BitVec 64))

(assert (=> b!65011 (= lt!27674 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27666 () (_ BitVec 64))

(assert (=> b!65011 (= lt!27666 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27656 () Unit!1784)

(assert (=> b!65011 (= lt!27656 (addApplyDifferent!46 lt!27672 lt!27674 (minValue!2031 newMap!16) lt!27666))))

(assert (=> b!65011 (= (apply!70 (+!85 lt!27672 (tuple2!2089 lt!27674 (minValue!2031 newMap!16))) lt!27666) (apply!70 lt!27672 lt!27666))))

(declare-fun lt!27659 () Unit!1784)

(assert (=> b!65011 (= lt!27659 lt!27656)))

(declare-fun lt!27668 () ListLongMap!1401)

(assert (=> b!65011 (= lt!27668 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27676 () (_ BitVec 64))

(assert (=> b!65011 (= lt!27676 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27657 () (_ BitVec 64))

(assert (=> b!65011 (= lt!27657 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27664 () Unit!1784)

(assert (=> b!65011 (= lt!27664 (addApplyDifferent!46 lt!27668 lt!27676 (zeroValue!2031 newMap!16) lt!27657))))

(assert (=> b!65011 (= (apply!70 (+!85 lt!27668 (tuple2!2089 lt!27676 (zeroValue!2031 newMap!16))) lt!27657) (apply!70 lt!27668 lt!27657))))

(declare-fun lt!27662 () Unit!1784)

(assert (=> b!65011 (= lt!27662 lt!27664)))

(declare-fun lt!27663 () ListLongMap!1401)

(assert (=> b!65011 (= lt!27663 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27655 () (_ BitVec 64))

(assert (=> b!65011 (= lt!27655 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27658 () (_ BitVec 64))

(assert (=> b!65011 (= lt!27658 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!65011 (= lt!27667 (addApplyDifferent!46 lt!27663 lt!27655 (minValue!2031 newMap!16) lt!27658))))

(assert (=> b!65011 (= (apply!70 (+!85 lt!27663 (tuple2!2089 lt!27655 (minValue!2031 newMap!16))) lt!27658) (apply!70 lt!27663 lt!27658))))

(declare-fun bm!5315 () Bool)

(assert (=> bm!5315 (= call!5316 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun b!65012 () Bool)

(assert (=> b!65012 (= e!42606 e!42604)))

(declare-fun res!35364 () Bool)

(assert (=> b!65012 (= res!35364 call!5315)))

(assert (=> b!65012 (=> (not res!35364) (not e!42604))))

(declare-fun bm!5316 () Bool)

(assert (=> bm!5316 (= call!5314 call!5313)))

(declare-fun b!65013 () Bool)

(declare-fun res!35360 () Bool)

(assert (=> b!65013 (=> (not res!35360) (not e!42603))))

(assert (=> b!65013 (= res!35360 e!42600)))

(declare-fun res!35362 () Bool)

(assert (=> b!65013 (=> res!35362 e!42600)))

(assert (=> b!65013 (= res!35362 (not e!42595))))

(declare-fun res!35366 () Bool)

(assert (=> b!65013 (=> (not res!35366) (not e!42595))))

(assert (=> b!65013 (= res!35366 (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))

(declare-fun b!65014 () Bool)

(declare-fun res!35367 () Bool)

(assert (=> b!65014 (=> (not res!35367) (not e!42603))))

(assert (=> b!65014 (= res!35367 e!42598)))

(declare-fun c!8927 () Bool)

(assert (=> b!65014 (= c!8927 (not (= (bvand (extraKeys!1995 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!65015 () Bool)

(assert (=> b!65015 (= e!42602 call!5314)))

(declare-fun b!65016 () Bool)

(assert (=> b!65016 (= e!42607 e!42601)))

(assert (=> b!65016 (= c!8928 (and (not (= (bvand (extraKeys!1995 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1995 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!65017 () Bool)

(assert (=> b!65017 (= e!42598 e!42597)))

(declare-fun res!35359 () Bool)

(assert (=> b!65017 (= res!35359 call!5317)))

(assert (=> b!65017 (=> (not res!35359) (not e!42597))))

(declare-fun b!65018 () Bool)

(assert (=> b!65018 (= e!42601 call!5318)))

(assert (= (and d!13501 c!8926) b!65009))

(assert (= (and d!13501 (not c!8926)) b!65016))

(assert (= (and b!65016 c!8928) b!65018))

(assert (= (and b!65016 (not c!8928)) b!65001))

(assert (= (and b!65001 c!8929) b!65007))

(assert (= (and b!65001 (not c!8929)) b!65015))

(assert (= (or b!65007 b!65015) bm!5316))

(assert (= (or b!65018 bm!5316) bm!5310))

(assert (= (or b!65018 b!65007) bm!5314))

(assert (= (or b!65009 bm!5310) bm!5315))

(assert (= (or b!65009 bm!5314) bm!5312))

(assert (= (and d!13501 res!35365) b!65010))

(assert (= (and d!13501 c!8930) b!65011))

(assert (= (and d!13501 (not c!8930)) b!65002))

(assert (= (and d!13501 res!35361) b!65013))

(assert (= (and b!65013 res!35366) b!65005))

(assert (= (and b!65013 (not res!35362)) b!64999))

(assert (= (and b!64999 res!35363) b!65006))

(assert (= (and b!65013 res!35360) b!65014))

(assert (= (and b!65014 c!8927) b!65017))

(assert (= (and b!65014 (not c!8927)) b!65003))

(assert (= (and b!65017 res!35359) b!65008))

(assert (= (or b!65017 b!65003) bm!5311))

(assert (= (and b!65014 res!35367) b!64998))

(assert (= (and b!64998 c!8931) b!65012))

(assert (= (and b!64998 (not c!8931)) b!65000))

(assert (= (and b!65012 res!35364) b!65004))

(assert (= (or b!65012 b!65000) bm!5313))

(declare-fun b_lambda!2919 () Bool)

(assert (=> (not b_lambda!2919) (not b!65006)))

(declare-fun t!4917 () Bool)

(declare-fun tb!1417 () Bool)

(assert (=> (and b!64658 (= (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) (defaultEntry!2122 newMap!16)) t!4917) tb!1417))

(declare-fun result!2515 () Bool)

(assert (=> tb!1417 (= result!2515 tp_is_empty!2427)))

(assert (=> b!65006 t!4917))

(declare-fun b_and!3977 () Bool)

(assert (= b_and!3973 (and (=> t!4917 result!2515) b_and!3977)))

(declare-fun t!4919 () Bool)

(declare-fun tb!1419 () Bool)

(assert (=> (and b!64664 (= (defaultEntry!2122 newMap!16) (defaultEntry!2122 newMap!16)) t!4919) tb!1419))

(declare-fun result!2517 () Bool)

(assert (= result!2517 result!2515))

(assert (=> b!65006 t!4919))

(declare-fun b_and!3979 () Bool)

(assert (= b_and!3975 (and (=> t!4919 result!2517) b_and!3979)))

(declare-fun m!59353 () Bool)

(assert (=> d!13501 m!59353))

(declare-fun m!59355 () Bool)

(assert (=> bm!5313 m!59355))

(declare-fun m!59357 () Bool)

(assert (=> b!65008 m!59357))

(declare-fun m!59359 () Bool)

(assert (=> bm!5312 m!59359))

(declare-fun m!59361 () Bool)

(assert (=> b!65005 m!59361))

(assert (=> b!65005 m!59361))

(declare-fun m!59363 () Bool)

(assert (=> b!65005 m!59363))

(declare-fun m!59365 () Bool)

(assert (=> bm!5311 m!59365))

(assert (=> b!64999 m!59361))

(assert (=> b!64999 m!59361))

(declare-fun m!59367 () Bool)

(assert (=> b!64999 m!59367))

(declare-fun m!59369 () Bool)

(assert (=> b!65006 m!59369))

(assert (=> b!65006 m!59361))

(declare-fun m!59371 () Bool)

(assert (=> b!65006 m!59371))

(assert (=> b!65006 m!59369))

(declare-fun m!59373 () Bool)

(assert (=> b!65006 m!59373))

(assert (=> b!65006 m!59361))

(declare-fun m!59375 () Bool)

(assert (=> b!65006 m!59375))

(assert (=> b!65006 m!59371))

(declare-fun m!59377 () Bool)

(assert (=> b!65011 m!59377))

(declare-fun m!59379 () Bool)

(assert (=> b!65011 m!59379))

(declare-fun m!59381 () Bool)

(assert (=> b!65011 m!59381))

(declare-fun m!59383 () Bool)

(assert (=> b!65011 m!59383))

(assert (=> b!65011 m!59361))

(declare-fun m!59385 () Bool)

(assert (=> b!65011 m!59385))

(declare-fun m!59387 () Bool)

(assert (=> b!65011 m!59387))

(declare-fun m!59389 () Bool)

(assert (=> b!65011 m!59389))

(declare-fun m!59391 () Bool)

(assert (=> b!65011 m!59391))

(assert (=> b!65011 m!59379))

(declare-fun m!59393 () Bool)

(assert (=> b!65011 m!59393))

(declare-fun m!59395 () Bool)

(assert (=> b!65011 m!59395))

(declare-fun m!59397 () Bool)

(assert (=> b!65011 m!59397))

(assert (=> b!65011 m!59385))

(declare-fun m!59399 () Bool)

(assert (=> b!65011 m!59399))

(assert (=> b!65011 m!59397))

(declare-fun m!59401 () Bool)

(assert (=> b!65011 m!59401))

(declare-fun m!59403 () Bool)

(assert (=> b!65011 m!59403))

(assert (=> b!65011 m!59387))

(declare-fun m!59405 () Bool)

(assert (=> b!65011 m!59405))

(declare-fun m!59407 () Bool)

(assert (=> b!65011 m!59407))

(assert (=> bm!5315 m!59391))

(assert (=> b!65010 m!59361))

(assert (=> b!65010 m!59361))

(assert (=> b!65010 m!59363))

(declare-fun m!59409 () Bool)

(assert (=> b!65004 m!59409))

(declare-fun m!59411 () Bool)

(assert (=> b!65009 m!59411))

(assert (=> d!13493 d!13501))

(declare-fun d!13503 () Bool)

(assert (=> d!13503 (= (+!85 (getCurrentListMap!412 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)) (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!412 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) lt!27565 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27679 () Unit!1784)

(declare-fun choose!362 (array!3788 array!3790 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2883 V!2883 V!2883 Int) Unit!1784)

(assert (=> d!13503 (= lt!27679 (choose!362 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) lt!27565 (zeroValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2031 newMap!16) (defaultEntry!2122 newMap!16)))))

(assert (=> d!13503 (validMask!0 (mask!6044 newMap!16))))

(assert (=> d!13503 (= (lemmaChangeZeroKeyThenAddPairToListMap!19 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) lt!27565 (zeroValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2031 newMap!16) (defaultEntry!2122 newMap!16)) lt!27679)))

(declare-fun bs!2808 () Bool)

(assert (= bs!2808 d!13503))

(assert (=> bs!2808 m!59353))

(assert (=> bs!2808 m!59121))

(declare-fun m!59413 () Bool)

(assert (=> bs!2808 m!59413))

(assert (=> bs!2808 m!59285))

(declare-fun m!59415 () Bool)

(assert (=> bs!2808 m!59415))

(assert (=> bs!2808 m!59121))

(declare-fun m!59417 () Bool)

(assert (=> bs!2808 m!59417))

(assert (=> bs!2808 m!59285))

(assert (=> b!64836 d!13503))

(declare-fun d!13505 () Bool)

(declare-fun e!42610 () Bool)

(assert (=> d!13505 e!42610))

(declare-fun res!35372 () Bool)

(assert (=> d!13505 (=> (not res!35372) (not e!42610))))

(declare-fun lt!27691 () ListLongMap!1401)

(assert (=> d!13505 (= res!35372 (contains!708 lt!27691 (_1!1054 (ite (or c!8919 c!8921) (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992))))))))))

(declare-fun lt!27689 () List!1475)

(assert (=> d!13505 (= lt!27691 (ListLongMap!1402 lt!27689))))

(declare-fun lt!27690 () Unit!1784)

(declare-fun lt!27688 () Unit!1784)

(assert (=> d!13505 (= lt!27690 lt!27688)))

(assert (=> d!13505 (= (getValueByKey!127 lt!27689 (_1!1054 (ite (or c!8919 c!8921) (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992))))))) (Some!132 (_2!1054 (ite (or c!8919 c!8921) (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992))))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!46 (List!1475 (_ BitVec 64) V!2883) Unit!1784)

(assert (=> d!13505 (= lt!27688 (lemmaContainsTupThenGetReturnValue!46 lt!27689 (_1!1054 (ite (or c!8919 c!8921) (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))) (_2!1054 (ite (or c!8919 c!8921) (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992))))))))))

(declare-fun insertStrictlySorted!48 (List!1475 (_ BitVec 64) V!2883) List!1475)

(assert (=> d!13505 (= lt!27689 (insertStrictlySorted!48 (toList!716 (ite c!8919 call!5309 (ite c!8921 call!5306 call!5307))) (_1!1054 (ite (or c!8919 c!8921) (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))) (_2!1054 (ite (or c!8919 c!8921) (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992))))))))))

(assert (=> d!13505 (= (+!85 (ite c!8919 call!5309 (ite c!8921 call!5306 call!5307)) (ite (or c!8919 c!8921) (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))) lt!27691)))

(declare-fun b!65023 () Bool)

(declare-fun res!35373 () Bool)

(assert (=> b!65023 (=> (not res!35373) (not e!42610))))

(assert (=> b!65023 (= res!35373 (= (getValueByKey!127 (toList!716 lt!27691) (_1!1054 (ite (or c!8919 c!8921) (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992))))))) (Some!132 (_2!1054 (ite (or c!8919 c!8921) (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))))))))

(declare-fun b!65024 () Bool)

(declare-fun contains!710 (List!1475 tuple2!2088) Bool)

(assert (=> b!65024 (= e!42610 (contains!710 (toList!716 lt!27691) (ite (or c!8919 c!8921) (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(assert (= (and d!13505 res!35372) b!65023))

(assert (= (and b!65023 res!35373) b!65024))

(declare-fun m!59419 () Bool)

(assert (=> d!13505 m!59419))

(declare-fun m!59421 () Bool)

(assert (=> d!13505 m!59421))

(declare-fun m!59423 () Bool)

(assert (=> d!13505 m!59423))

(declare-fun m!59425 () Bool)

(assert (=> d!13505 m!59425))

(declare-fun m!59427 () Bool)

(assert (=> b!65023 m!59427))

(declare-fun m!59429 () Bool)

(assert (=> b!65024 m!59429))

(assert (=> bm!5305 d!13505))

(assert (=> b!64900 d!13481))

(declare-fun b!65025 () Bool)

(declare-fun e!42612 () Bool)

(declare-fun call!5320 () Bool)

(assert (=> b!65025 (= e!42612 call!5320)))

(declare-fun d!13507 () Bool)

(declare-fun res!35374 () Bool)

(declare-fun e!42613 () Bool)

(assert (=> d!13507 (=> res!35374 e!42613)))

(assert (=> d!13507 (= res!35374 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))))

(assert (=> d!13507 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3760 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992)))) e!42613)))

(declare-fun b!65026 () Bool)

(declare-fun e!42611 () Bool)

(assert (=> b!65026 (= e!42611 e!42612)))

(declare-fun lt!27692 () (_ BitVec 64))

(assert (=> b!65026 (= lt!27692 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!27693 () Unit!1784)

(assert (=> b!65026 (= lt!27693 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) lt!27692 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!65026 (arrayContainsKey!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) lt!27692 #b00000000000000000000000000000000)))

(declare-fun lt!27694 () Unit!1784)

(assert (=> b!65026 (= lt!27694 lt!27693)))

(declare-fun res!35375 () Bool)

(assert (=> b!65026 (= res!35375 (= (seekEntryOrOpen!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3760 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992)))) (Found!241 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!65026 (=> (not res!35375) (not e!42612))))

(declare-fun b!65027 () Bool)

(assert (=> b!65027 (= e!42613 e!42611)))

(declare-fun c!8932 () Bool)

(assert (=> b!65027 (= c!8932 (validKeyInArray!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!65028 () Bool)

(assert (=> b!65028 (= e!42611 call!5320)))

(declare-fun bm!5317 () Bool)

(assert (=> bm!5317 (= call!5320 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3760 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992)))))))

(assert (= (and d!13507 (not res!35374)) b!65027))

(assert (= (and b!65027 c!8932) b!65026))

(assert (= (and b!65027 (not c!8932)) b!65028))

(assert (= (and b!65026 res!35375) b!65025))

(assert (= (or b!65025 b!65028) bm!5317))

(declare-fun m!59431 () Bool)

(assert (=> b!65026 m!59431))

(declare-fun m!59433 () Bool)

(assert (=> b!65026 m!59433))

(declare-fun m!59435 () Bool)

(assert (=> b!65026 m!59435))

(assert (=> b!65026 m!59431))

(declare-fun m!59437 () Bool)

(assert (=> b!65026 m!59437))

(assert (=> b!65027 m!59431))

(assert (=> b!65027 m!59431))

(declare-fun m!59439 () Bool)

(assert (=> b!65027 m!59439))

(declare-fun m!59441 () Bool)

(assert (=> bm!5317 m!59441))

(assert (=> bm!5212 d!13507))

(declare-fun d!13509 () Bool)

(declare-fun e!42615 () Bool)

(assert (=> d!13509 e!42615))

(declare-fun res!35376 () Bool)

(assert (=> d!13509 (=> res!35376 e!42615)))

(declare-fun lt!27698 () Bool)

(assert (=> d!13509 (= res!35376 (not lt!27698))))

(declare-fun lt!27695 () Bool)

(assert (=> d!13509 (= lt!27698 lt!27695)))

(declare-fun lt!27697 () Unit!1784)

(declare-fun e!42614 () Unit!1784)

(assert (=> d!13509 (= lt!27697 e!42614)))

(declare-fun c!8933 () Bool)

(assert (=> d!13509 (= c!8933 lt!27695)))

(assert (=> d!13509 (= lt!27695 (containsKey!131 (toList!716 lt!27645) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!13509 (= (contains!708 lt!27645 #b0000000000000000000000000000000000000000000000000000000000000000) lt!27698)))

(declare-fun b!65029 () Bool)

(declare-fun lt!27696 () Unit!1784)

(assert (=> b!65029 (= e!42614 lt!27696)))

(assert (=> b!65029 (= lt!27696 (lemmaContainsKeyImpliesGetValueByKeyDefined!80 (toList!716 lt!27645) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!65029 (isDefined!81 (getValueByKey!127 (toList!716 lt!27645) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!65030 () Bool)

(declare-fun Unit!1797 () Unit!1784)

(assert (=> b!65030 (= e!42614 Unit!1797)))

(declare-fun b!65031 () Bool)

(assert (=> b!65031 (= e!42615 (isDefined!81 (getValueByKey!127 (toList!716 lt!27645) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!13509 c!8933) b!65029))

(assert (= (and d!13509 (not c!8933)) b!65030))

(assert (= (and d!13509 (not res!35376)) b!65031))

(declare-fun m!59443 () Bool)

(assert (=> d!13509 m!59443))

(declare-fun m!59445 () Bool)

(assert (=> b!65029 m!59445))

(declare-fun m!59447 () Bool)

(assert (=> b!65029 m!59447))

(assert (=> b!65029 m!59447))

(declare-fun m!59449 () Bool)

(assert (=> b!65029 m!59449))

(assert (=> b!65031 m!59447))

(assert (=> b!65031 m!59447))

(assert (=> b!65031 m!59449))

(assert (=> bm!5304 d!13509))

(declare-fun d!13511 () Bool)

(declare-fun get!1113 (Option!133) V!2883)

(assert (=> d!13511 (= (apply!70 lt!27645 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1113 (getValueByKey!127 (toList!716 lt!27645) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!2809 () Bool)

(assert (= bs!2809 d!13511))

(assert (=> bs!2809 m!59349))

(assert (=> bs!2809 m!59349))

(declare-fun m!59451 () Bool)

(assert (=> bs!2809 m!59451))

(assert (=> b!64970 d!13511))

(declare-fun b!65044 () Bool)

(declare-fun c!8940 () Bool)

(declare-fun lt!27705 () (_ BitVec 64))

(assert (=> b!65044 (= c!8940 (= lt!27705 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!42624 () SeekEntryResult!241)

(declare-fun e!42623 () SeekEntryResult!241)

(assert (=> b!65044 (= e!42624 e!42623)))

(declare-fun lt!27706 () SeekEntryResult!241)

(declare-fun d!13513 () Bool)

(assert (=> d!13513 (and (or ((_ is Undefined!241) lt!27706) (not ((_ is Found!241) lt!27706)) (and (bvsge (index!3092 lt!27706) #b00000000000000000000000000000000) (bvslt (index!3092 lt!27706) (size!2044 (_keys!3760 newMap!16))))) (or ((_ is Undefined!241) lt!27706) ((_ is Found!241) lt!27706) (not ((_ is MissingZero!241) lt!27706)) (and (bvsge (index!3091 lt!27706) #b00000000000000000000000000000000) (bvslt (index!3091 lt!27706) (size!2044 (_keys!3760 newMap!16))))) (or ((_ is Undefined!241) lt!27706) ((_ is Found!241) lt!27706) ((_ is MissingZero!241) lt!27706) (not ((_ is MissingVacant!241) lt!27706)) (and (bvsge (index!3094 lt!27706) #b00000000000000000000000000000000) (bvslt (index!3094 lt!27706) (size!2044 (_keys!3760 newMap!16))))) (or ((_ is Undefined!241) lt!27706) (ite ((_ is Found!241) lt!27706) (= (select (arr!1810 (_keys!3760 newMap!16)) (index!3092 lt!27706)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)) (ite ((_ is MissingZero!241) lt!27706) (= (select (arr!1810 (_keys!3760 newMap!16)) (index!3091 lt!27706)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!241) lt!27706) (= (select (arr!1810 (_keys!3760 newMap!16)) (index!3094 lt!27706)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!42622 () SeekEntryResult!241)

(assert (=> d!13513 (= lt!27706 e!42622)))

(declare-fun c!8942 () Bool)

(declare-fun lt!27707 () SeekEntryResult!241)

(assert (=> d!13513 (= c!8942 (and ((_ is Intermediate!241) lt!27707) (undefined!1053 lt!27707)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3788 (_ BitVec 32)) SeekEntryResult!241)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!13513 (= lt!27707 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (mask!6044 newMap!16)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (_keys!3760 newMap!16) (mask!6044 newMap!16)))))

(assert (=> d!13513 (validMask!0 (mask!6044 newMap!16))))

(assert (=> d!13513 (= (seekEntryOrOpen!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (_keys!3760 newMap!16) (mask!6044 newMap!16)) lt!27706)))

(declare-fun b!65045 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3788 (_ BitVec 32)) SeekEntryResult!241)

(assert (=> b!65045 (= e!42623 (seekKeyOrZeroReturnVacant!0 (x!10552 lt!27707) (index!3093 lt!27707) (index!3093 lt!27707) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (_keys!3760 newMap!16) (mask!6044 newMap!16)))))

(declare-fun b!65046 () Bool)

(assert (=> b!65046 (= e!42623 (MissingZero!241 (index!3093 lt!27707)))))

(declare-fun b!65047 () Bool)

(assert (=> b!65047 (= e!42622 e!42624)))

(assert (=> b!65047 (= lt!27705 (select (arr!1810 (_keys!3760 newMap!16)) (index!3093 lt!27707)))))

(declare-fun c!8941 () Bool)

(assert (=> b!65047 (= c!8941 (= lt!27705 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-fun b!65048 () Bool)

(assert (=> b!65048 (= e!42622 Undefined!241)))

(declare-fun b!65049 () Bool)

(assert (=> b!65049 (= e!42624 (Found!241 (index!3093 lt!27707)))))

(assert (= (and d!13513 c!8942) b!65048))

(assert (= (and d!13513 (not c!8942)) b!65047))

(assert (= (and b!65047 c!8941) b!65049))

(assert (= (and b!65047 (not c!8941)) b!65044))

(assert (= (and b!65044 c!8940) b!65046))

(assert (= (and b!65044 (not c!8940)) b!65045))

(assert (=> d!13513 m!59087))

(declare-fun m!59453 () Bool)

(assert (=> d!13513 m!59453))

(assert (=> d!13513 m!59453))

(assert (=> d!13513 m!59087))

(declare-fun m!59455 () Bool)

(assert (=> d!13513 m!59455))

(declare-fun m!59457 () Bool)

(assert (=> d!13513 m!59457))

(declare-fun m!59459 () Bool)

(assert (=> d!13513 m!59459))

(assert (=> d!13513 m!59353))

(declare-fun m!59461 () Bool)

(assert (=> d!13513 m!59461))

(assert (=> b!65045 m!59087))

(declare-fun m!59463 () Bool)

(assert (=> b!65045 m!59463))

(declare-fun m!59465 () Bool)

(assert (=> b!65047 m!59465))

(assert (=> b!64874 d!13513))

(assert (=> d!13479 d!13485))

(declare-fun d!13515 () Bool)

(assert (=> d!13515 (arrayNoDuplicates!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) from!355 Nil!1473)))

(assert (=> d!13515 true))

(declare-fun _$71!84 () Unit!1784)

(assert (=> d!13515 (= (choose!39 (_keys!3760 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000000 from!355) _$71!84)))

(declare-fun bs!2810 () Bool)

(assert (= bs!2810 d!13515))

(assert (=> bs!2810 m!59085))

(assert (=> d!13479 d!13515))

(declare-fun d!13517 () Bool)

(declare-fun res!35377 () Bool)

(declare-fun e!42625 () Bool)

(assert (=> d!13517 (=> (not res!35377) (not e!42625))))

(assert (=> d!13517 (= res!35377 (simpleValid!45 (_2!1053 lt!27570)))))

(assert (=> d!13517 (= (valid!270 (_2!1053 lt!27570)) e!42625)))

(declare-fun b!65050 () Bool)

(declare-fun res!35378 () Bool)

(assert (=> b!65050 (=> (not res!35378) (not e!42625))))

(assert (=> b!65050 (= res!35378 (= (arrayCountValidKeys!0 (_keys!3760 (_2!1053 lt!27570)) #b00000000000000000000000000000000 (size!2044 (_keys!3760 (_2!1053 lt!27570)))) (_size!373 (_2!1053 lt!27570))))))

(declare-fun b!65051 () Bool)

(declare-fun res!35379 () Bool)

(assert (=> b!65051 (=> (not res!35379) (not e!42625))))

(assert (=> b!65051 (= res!35379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3760 (_2!1053 lt!27570)) (mask!6044 (_2!1053 lt!27570))))))

(declare-fun b!65052 () Bool)

(assert (=> b!65052 (= e!42625 (arrayNoDuplicates!0 (_keys!3760 (_2!1053 lt!27570)) #b00000000000000000000000000000000 Nil!1473))))

(assert (= (and d!13517 res!35377) b!65050))

(assert (= (and b!65050 res!35378) b!65051))

(assert (= (and b!65051 res!35379) b!65052))

(declare-fun m!59467 () Bool)

(assert (=> d!13517 m!59467))

(declare-fun m!59469 () Bool)

(assert (=> b!65050 m!59469))

(declare-fun m!59471 () Bool)

(assert (=> b!65051 m!59471))

(declare-fun m!59473 () Bool)

(assert (=> b!65052 m!59473))

(assert (=> d!13465 d!13517))

(assert (=> d!13465 d!13475))

(declare-fun d!13519 () Bool)

(assert (=> d!13519 (= (validKeyInArray!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000)) (and (not (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!64744 d!13519))

(declare-fun b!65069 () Bool)

(declare-fun lt!27713 () SeekEntryResult!241)

(assert (=> b!65069 (and (bvsge (index!3091 lt!27713) #b00000000000000000000000000000000) (bvslt (index!3091 lt!27713) (size!2044 (_keys!3760 newMap!16))))))

(declare-fun res!35388 () Bool)

(assert (=> b!65069 (= res!35388 (= (select (arr!1810 (_keys!3760 newMap!16)) (index!3091 lt!27713)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!42635 () Bool)

(assert (=> b!65069 (=> (not res!35388) (not e!42635))))

(declare-fun b!65070 () Bool)

(declare-fun res!35391 () Bool)

(declare-fun e!42634 () Bool)

(assert (=> b!65070 (=> (not res!35391) (not e!42634))))

(declare-fun call!5325 () Bool)

(assert (=> b!65070 (= res!35391 call!5325)))

(declare-fun e!42636 () Bool)

(assert (=> b!65070 (= e!42636 e!42634)))

(declare-fun b!65071 () Bool)

(declare-fun e!42637 () Bool)

(assert (=> b!65071 (= e!42637 e!42635)))

(declare-fun res!35389 () Bool)

(assert (=> b!65071 (= res!35389 call!5325)))

(assert (=> b!65071 (=> (not res!35389) (not e!42635))))

(declare-fun b!65072 () Bool)

(declare-fun res!35390 () Bool)

(assert (=> b!65072 (=> (not res!35390) (not e!42634))))

(assert (=> b!65072 (= res!35390 (= (select (arr!1810 (_keys!3760 newMap!16)) (index!3094 lt!27713)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!65072 (and (bvsge (index!3094 lt!27713) #b00000000000000000000000000000000) (bvslt (index!3094 lt!27713) (size!2044 (_keys!3760 newMap!16))))))

(declare-fun c!8948 () Bool)

(declare-fun bm!5322 () Bool)

(assert (=> bm!5322 (= call!5325 (inRange!0 (ite c!8948 (index!3091 lt!27713) (index!3094 lt!27713)) (mask!6044 newMap!16)))))

(declare-fun bm!5323 () Bool)

(declare-fun call!5326 () Bool)

(assert (=> bm!5323 (= call!5326 (arrayContainsKey!0 (_keys!3760 newMap!16) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!65073 () Bool)

(assert (=> b!65073 (= e!42635 (not call!5326))))

(declare-fun b!65074 () Bool)

(assert (=> b!65074 (= e!42636 ((_ is Undefined!241) lt!27713))))

(declare-fun b!65075 () Bool)

(assert (=> b!65075 (= e!42637 e!42636)))

(declare-fun c!8947 () Bool)

(assert (=> b!65075 (= c!8947 ((_ is MissingVacant!241) lt!27713))))

(declare-fun d!13521 () Bool)

(assert (=> d!13521 e!42637))

(assert (=> d!13521 (= c!8948 ((_ is MissingZero!241) lt!27713))))

(assert (=> d!13521 (= lt!27713 (seekEntryOrOpen!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (_keys!3760 newMap!16) (mask!6044 newMap!16)))))

(declare-fun lt!27712 () Unit!1784)

(declare-fun choose!363 (array!3788 array!3790 (_ BitVec 32) (_ BitVec 32) V!2883 V!2883 (_ BitVec 64) Int) Unit!1784)

(assert (=> d!13521 (= lt!27712 (choose!363 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (defaultEntry!2122 newMap!16)))))

(assert (=> d!13521 (validMask!0 (mask!6044 newMap!16))))

(assert (=> d!13521 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!19 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (defaultEntry!2122 newMap!16)) lt!27712)))

(declare-fun b!65076 () Bool)

(assert (=> b!65076 (= e!42634 (not call!5326))))

(assert (= (and d!13521 c!8948) b!65071))

(assert (= (and d!13521 (not c!8948)) b!65075))

(assert (= (and b!65071 res!35389) b!65069))

(assert (= (and b!65069 res!35388) b!65073))

(assert (= (and b!65075 c!8947) b!65070))

(assert (= (and b!65075 (not c!8947)) b!65074))

(assert (= (and b!65070 res!35391) b!65072))

(assert (= (and b!65072 res!35390) b!65076))

(assert (= (or b!65071 b!65070) bm!5322))

(assert (= (or b!65073 b!65076) bm!5323))

(assert (=> bm!5323 m!59087))

(assert (=> bm!5323 m!59245))

(declare-fun m!59475 () Bool)

(assert (=> b!65072 m!59475))

(declare-fun m!59477 () Bool)

(assert (=> b!65069 m!59477))

(declare-fun m!59479 () Bool)

(assert (=> bm!5322 m!59479))

(assert (=> d!13521 m!59087))

(assert (=> d!13521 m!59215))

(assert (=> d!13521 m!59087))

(declare-fun m!59481 () Bool)

(assert (=> d!13521 m!59481))

(assert (=> d!13521 m!59353))

(assert (=> bm!5282 d!13521))

(declare-fun b!65077 () Bool)

(declare-fun e!42641 () Bool)

(declare-fun e!42639 () Bool)

(assert (=> b!65077 (= e!42641 e!42639)))

(declare-fun res!35393 () Bool)

(assert (=> b!65077 (=> (not res!35393) (not e!42639))))

(declare-fun e!42638 () Bool)

(assert (=> b!65077 (= res!35393 (not e!42638))))

(declare-fun res!35394 () Bool)

(assert (=> b!65077 (=> (not res!35394) (not e!42638))))

(assert (=> b!65077 (= res!35394 (validKeyInArray!0 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!65078 () Bool)

(declare-fun e!42640 () Bool)

(declare-fun call!5327 () Bool)

(assert (=> b!65078 (= e!42640 call!5327)))

(declare-fun b!65079 () Bool)

(assert (=> b!65079 (= e!42639 e!42640)))

(declare-fun c!8949 () Bool)

(assert (=> b!65079 (= c!8949 (validKeyInArray!0 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!65080 () Bool)

(assert (=> b!65080 (= e!42638 (contains!709 Nil!1473 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!65081 () Bool)

(assert (=> b!65081 (= e!42640 call!5327)))

(declare-fun d!13523 () Bool)

(declare-fun res!35392 () Bool)

(assert (=> d!13523 (=> res!35392 e!42641)))

(assert (=> d!13523 (= res!35392 (bvsge #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))

(assert (=> d!13523 (= (arrayNoDuplicates!0 (_keys!3760 newMap!16) #b00000000000000000000000000000000 Nil!1473) e!42641)))

(declare-fun bm!5324 () Bool)

(assert (=> bm!5324 (= call!5327 (arrayNoDuplicates!0 (_keys!3760 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!8949 (Cons!1472 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000) Nil!1473) Nil!1473)))))

(assert (= (and d!13523 (not res!35392)) b!65077))

(assert (= (and b!65077 res!35394) b!65080))

(assert (= (and b!65077 res!35393) b!65079))

(assert (= (and b!65079 c!8949) b!65081))

(assert (= (and b!65079 (not c!8949)) b!65078))

(assert (= (or b!65081 b!65078) bm!5324))

(assert (=> b!65077 m!59361))

(assert (=> b!65077 m!59361))

(assert (=> b!65077 m!59363))

(assert (=> b!65079 m!59361))

(assert (=> b!65079 m!59361))

(assert (=> b!65079 m!59363))

(assert (=> b!65080 m!59361))

(assert (=> b!65080 m!59361))

(declare-fun m!59483 () Bool)

(assert (=> b!65080 m!59483))

(assert (=> bm!5324 m!59361))

(declare-fun m!59485 () Bool)

(assert (=> bm!5324 m!59485))

(assert (=> b!64889 d!13523))

(declare-fun d!13525 () Bool)

(declare-fun res!35395 () Bool)

(declare-fun e!42642 () Bool)

(assert (=> d!13525 (=> res!35395 e!42642)))

(assert (=> d!13525 (= res!35395 (= (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(assert (=> d!13525 (= (arrayContainsKey!0 (_keys!3760 newMap!16) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) #b00000000000000000000000000000000) e!42642)))

(declare-fun b!65082 () Bool)

(declare-fun e!42643 () Bool)

(assert (=> b!65082 (= e!42642 e!42643)))

(declare-fun res!35396 () Bool)

(assert (=> b!65082 (=> (not res!35396) (not e!42643))))

(assert (=> b!65082 (= res!35396 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2044 (_keys!3760 newMap!16))))))

(declare-fun b!65083 () Bool)

(assert (=> b!65083 (= e!42643 (arrayContainsKey!0 (_keys!3760 newMap!16) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!13525 (not res!35395)) b!65082))

(assert (= (and b!65082 res!35396) b!65083))

(assert (=> d!13525 m!59361))

(assert (=> b!65083 m!59087))

(declare-fun m!59487 () Bool)

(assert (=> b!65083 m!59487))

(assert (=> bm!5267 d!13525))

(declare-fun d!13527 () Bool)

(declare-fun e!42645 () Bool)

(assert (=> d!13527 e!42645))

(declare-fun res!35397 () Bool)

(assert (=> d!13527 (=> res!35397 e!42645)))

(declare-fun lt!27717 () Bool)

(assert (=> d!13527 (= res!35397 (not lt!27717))))

(declare-fun lt!27714 () Bool)

(assert (=> d!13527 (= lt!27717 lt!27714)))

(declare-fun lt!27716 () Unit!1784)

(declare-fun e!42644 () Unit!1784)

(assert (=> d!13527 (= lt!27716 e!42644)))

(declare-fun c!8950 () Bool)

(assert (=> d!13527 (= c!8950 lt!27714)))

(assert (=> d!13527 (= lt!27714 (containsKey!131 (toList!716 lt!27645) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!13527 (= (contains!708 lt!27645 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!27717)))

(declare-fun b!65084 () Bool)

(declare-fun lt!27715 () Unit!1784)

(assert (=> b!65084 (= e!42644 lt!27715)))

(assert (=> b!65084 (= lt!27715 (lemmaContainsKeyImpliesGetValueByKeyDefined!80 (toList!716 lt!27645) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!65084 (isDefined!81 (getValueByKey!127 (toList!716 lt!27645) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!65085 () Bool)

(declare-fun Unit!1798 () Unit!1784)

(assert (=> b!65085 (= e!42644 Unit!1798)))

(declare-fun b!65086 () Bool)

(assert (=> b!65086 (= e!42645 (isDefined!81 (getValueByKey!127 (toList!716 lt!27645) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!13527 c!8950) b!65084))

(assert (= (and d!13527 (not c!8950)) b!65085))

(assert (= (and d!13527 (not res!35397)) b!65086))

(assert (=> d!13527 m!59269))

(declare-fun m!59489 () Bool)

(assert (=> d!13527 m!59489))

(assert (=> b!65084 m!59269))

(declare-fun m!59491 () Bool)

(assert (=> b!65084 m!59491))

(assert (=> b!65084 m!59269))

(declare-fun m!59493 () Bool)

(assert (=> b!65084 m!59493))

(assert (=> b!65084 m!59493))

(declare-fun m!59495 () Bool)

(assert (=> b!65084 m!59495))

(assert (=> b!65086 m!59269))

(assert (=> b!65086 m!59493))

(assert (=> b!65086 m!59493))

(assert (=> b!65086 m!59495))

(assert (=> b!64965 d!13527))

(declare-fun d!13529 () Bool)

(declare-fun res!35402 () Bool)

(declare-fun e!42650 () Bool)

(assert (=> d!13529 (=> res!35402 e!42650)))

(assert (=> d!13529 (= res!35402 (and ((_ is Cons!1471) (toList!716 lt!27448)) (= (_1!1054 (h!2055 (toList!716 lt!27448))) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355))))))

(assert (=> d!13529 (= (containsKey!131 (toList!716 lt!27448) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)) e!42650)))

(declare-fun b!65091 () Bool)

(declare-fun e!42651 () Bool)

(assert (=> b!65091 (= e!42650 e!42651)))

(declare-fun res!35403 () Bool)

(assert (=> b!65091 (=> (not res!35403) (not e!42651))))

(assert (=> b!65091 (= res!35403 (and (or (not ((_ is Cons!1471) (toList!716 lt!27448))) (bvsle (_1!1054 (h!2055 (toList!716 lt!27448))) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355))) ((_ is Cons!1471) (toList!716 lt!27448)) (bvslt (_1!1054 (h!2055 (toList!716 lt!27448))) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355))))))

(declare-fun b!65092 () Bool)

(assert (=> b!65092 (= e!42651 (containsKey!131 (t!4909 (toList!716 lt!27448)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(assert (= (and d!13529 (not res!35402)) b!65091))

(assert (= (and b!65091 res!35403) b!65092))

(assert (=> b!65092 m!59087))

(declare-fun m!59497 () Bool)

(assert (=> b!65092 m!59497))

(assert (=> d!13463 d!13529))

(declare-fun bm!5327 () Bool)

(declare-fun call!5330 () (_ BitVec 32))

(assert (=> bm!5327 (= call!5330 (arrayCountValidKeys!0 (_keys!3760 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2044 (_keys!3760 newMap!16))))))

(declare-fun b!65101 () Bool)

(declare-fun e!42657 () (_ BitVec 32))

(assert (=> b!65101 (= e!42657 call!5330)))

(declare-fun d!13531 () Bool)

(declare-fun lt!27720 () (_ BitVec 32))

(assert (=> d!13531 (and (bvsge lt!27720 #b00000000000000000000000000000000) (bvsle lt!27720 (bvsub (size!2044 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!42656 () (_ BitVec 32))

(assert (=> d!13531 (= lt!27720 e!42656)))

(declare-fun c!8955 () Bool)

(assert (=> d!13531 (= c!8955 (bvsge #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))

(assert (=> d!13531 (and (bvsle #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2044 (_keys!3760 newMap!16)) (size!2044 (_keys!3760 newMap!16))))))

(assert (=> d!13531 (= (arrayCountValidKeys!0 (_keys!3760 newMap!16) #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))) lt!27720)))

(declare-fun b!65102 () Bool)

(assert (=> b!65102 (= e!42657 (bvadd #b00000000000000000000000000000001 call!5330))))

(declare-fun b!65103 () Bool)

(assert (=> b!65103 (= e!42656 #b00000000000000000000000000000000)))

(declare-fun b!65104 () Bool)

(assert (=> b!65104 (= e!42656 e!42657)))

(declare-fun c!8956 () Bool)

(assert (=> b!65104 (= c!8956 (validKeyInArray!0 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!13531 c!8955) b!65103))

(assert (= (and d!13531 (not c!8955)) b!65104))

(assert (= (and b!65104 c!8956) b!65102))

(assert (= (and b!65104 (not c!8956)) b!65101))

(assert (= (or b!65102 b!65101) bm!5327))

(declare-fun m!59499 () Bool)

(assert (=> bm!5327 m!59499))

(assert (=> b!65104 m!59361))

(assert (=> b!65104 m!59361))

(assert (=> b!65104 m!59363))

(assert (=> b!64887 d!13531))

(declare-fun b!65105 () Bool)

(declare-fun e!42666 () Bool)

(declare-fun e!42669 () Bool)

(assert (=> b!65105 (= e!42666 e!42669)))

(declare-fun c!8962 () Bool)

(assert (=> b!65105 (= c!8962 (not (= (bvand (ite c!8895 (ite c!8887 (extraKeys!1995 newMap!16) lt!27557) (extraKeys!1995 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!65106 () Bool)

(declare-fun e!42663 () Bool)

(declare-fun e!42668 () Bool)

(assert (=> b!65106 (= e!42663 e!42668)))

(declare-fun res!35408 () Bool)

(assert (=> b!65106 (=> (not res!35408) (not e!42668))))

(declare-fun lt!27737 () ListLongMap!1401)

(assert (=> b!65106 (= res!35408 (contains!708 lt!27737 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!65106 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))

(declare-fun d!13533 () Bool)

(assert (=> d!13533 e!42666))

(declare-fun res!35406 () Bool)

(assert (=> d!13533 (=> (not res!35406) (not e!42666))))

(assert (=> d!13533 (= res!35406 (or (bvsge #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))))

(declare-fun lt!27739 () ListLongMap!1401)

(assert (=> d!13533 (= lt!27737 lt!27739)))

(declare-fun lt!27727 () Unit!1784)

(declare-fun e!42662 () Unit!1784)

(assert (=> d!13533 (= lt!27727 e!42662)))

(declare-fun c!8961 () Bool)

(declare-fun e!42659 () Bool)

(assert (=> d!13533 (= c!8961 e!42659)))

(declare-fun res!35410 () Bool)

(assert (=> d!13533 (=> (not res!35410) (not e!42659))))

(assert (=> d!13533 (= res!35410 (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))

(declare-fun e!42670 () ListLongMap!1401)

(assert (=> d!13533 (= lt!27739 e!42670)))

(declare-fun c!8957 () Bool)

(assert (=> d!13533 (= c!8957 (and (not (= (bvand (ite c!8895 (ite c!8887 (extraKeys!1995 newMap!16) lt!27557) (extraKeys!1995 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!8895 (ite c!8887 (extraKeys!1995 newMap!16) lt!27557) (extraKeys!1995 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!13533 (validMask!0 (mask!6044 newMap!16))))

(assert (=> d!13533 (= (getCurrentListMap!412 (_keys!3760 newMap!16) (ite c!8895 (_values!2105 newMap!16) lt!27562) (mask!6044 newMap!16) (ite c!8895 (ite c!8887 (extraKeys!1995 newMap!16) lt!27557) (extraKeys!1995 newMap!16)) (zeroValue!2031 newMap!16) (ite c!8895 (ite c!8887 (minValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2031 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)) lt!27737)))

(declare-fun b!65107 () Bool)

(declare-fun call!5333 () Bool)

(assert (=> b!65107 (= e!42669 (not call!5333))))

(declare-fun b!65108 () Bool)

(declare-fun c!8960 () Bool)

(assert (=> b!65108 (= c!8960 (and (not (= (bvand (ite c!8895 (ite c!8887 (extraKeys!1995 newMap!16) lt!27557) (extraKeys!1995 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!8895 (ite c!8887 (extraKeys!1995 newMap!16) lt!27557) (extraKeys!1995 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!42664 () ListLongMap!1401)

(declare-fun e!42665 () ListLongMap!1401)

(assert (=> b!65108 (= e!42664 e!42665)))

(declare-fun b!65109 () Bool)

(declare-fun Unit!1799 () Unit!1784)

(assert (=> b!65109 (= e!42662 Unit!1799)))

(declare-fun b!65110 () Bool)

(declare-fun e!42661 () Bool)

(declare-fun call!5335 () Bool)

(assert (=> b!65110 (= e!42661 (not call!5335))))

(declare-fun e!42667 () Bool)

(declare-fun b!65111 () Bool)

(assert (=> b!65111 (= e!42667 (= (apply!70 lt!27737 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!8895 (ite c!8887 (minValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2031 newMap!16))))))

(declare-fun bm!5328 () Bool)

(declare-fun call!5331 () ListLongMap!1401)

(declare-fun call!5334 () ListLongMap!1401)

(assert (=> bm!5328 (= call!5331 call!5334)))

(declare-fun bm!5329 () Bool)

(assert (=> bm!5329 (= call!5335 (contains!708 lt!27737 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!65112 () Bool)

(declare-fun e!42658 () Bool)

(assert (=> b!65112 (= e!42658 (validKeyInArray!0 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun call!5332 () ListLongMap!1401)

(declare-fun c!8959 () Bool)

(declare-fun call!5337 () ListLongMap!1401)

(declare-fun bm!5330 () Bool)

(assert (=> bm!5330 (= call!5337 (+!85 (ite c!8957 call!5334 (ite c!8959 call!5331 call!5332)) (ite (or c!8957 c!8959) (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2031 newMap!16)) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!8895 (ite c!8887 (minValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2031 newMap!16))))))))

(declare-fun b!65113 () Bool)

(assert (=> b!65113 (= e!42668 (= (apply!70 lt!27737 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)) (get!1110 (select (arr!1811 (ite c!8895 (_values!2105 newMap!16) lt!27562)) #b00000000000000000000000000000000) (dynLambda!320 (defaultEntry!2122 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!65113 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2045 (ite c!8895 (_values!2105 newMap!16) lt!27562))))))

(assert (=> b!65113 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))

(declare-fun b!65114 () Bool)

(declare-fun call!5336 () ListLongMap!1401)

(assert (=> b!65114 (= e!42665 call!5336)))

(declare-fun b!65115 () Bool)

(declare-fun e!42660 () Bool)

(assert (=> b!65115 (= e!42660 (= (apply!70 lt!27737 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2031 newMap!16)))))

(declare-fun bm!5331 () Bool)

(assert (=> bm!5331 (= call!5333 (contains!708 lt!27737 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!5332 () Bool)

(assert (=> bm!5332 (= call!5336 call!5337)))

(declare-fun b!65116 () Bool)

(assert (=> b!65116 (= e!42670 (+!85 call!5337 (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!8895 (ite c!8887 (minValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2031 newMap!16)))))))

(declare-fun b!65117 () Bool)

(assert (=> b!65117 (= e!42659 (validKeyInArray!0 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!65118 () Bool)

(declare-fun lt!27733 () Unit!1784)

(assert (=> b!65118 (= e!42662 lt!27733)))

(declare-fun lt!27736 () ListLongMap!1401)

(assert (=> b!65118 (= lt!27736 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (ite c!8895 (_values!2105 newMap!16) lt!27562) (mask!6044 newMap!16) (ite c!8895 (ite c!8887 (extraKeys!1995 newMap!16) lt!27557) (extraKeys!1995 newMap!16)) (zeroValue!2031 newMap!16) (ite c!8895 (ite c!8887 (minValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2031 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27735 () (_ BitVec 64))

(assert (=> b!65118 (= lt!27735 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27726 () (_ BitVec 64))

(assert (=> b!65118 (= lt!27726 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27731 () Unit!1784)

(assert (=> b!65118 (= lt!27731 (addStillContains!46 lt!27736 lt!27735 (zeroValue!2031 newMap!16) lt!27726))))

(assert (=> b!65118 (contains!708 (+!85 lt!27736 (tuple2!2089 lt!27735 (zeroValue!2031 newMap!16))) lt!27726)))

(declare-fun lt!27741 () Unit!1784)

(assert (=> b!65118 (= lt!27741 lt!27731)))

(declare-fun lt!27738 () ListLongMap!1401)

(assert (=> b!65118 (= lt!27738 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (ite c!8895 (_values!2105 newMap!16) lt!27562) (mask!6044 newMap!16) (ite c!8895 (ite c!8887 (extraKeys!1995 newMap!16) lt!27557) (extraKeys!1995 newMap!16)) (zeroValue!2031 newMap!16) (ite c!8895 (ite c!8887 (minValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2031 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27740 () (_ BitVec 64))

(assert (=> b!65118 (= lt!27740 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27732 () (_ BitVec 64))

(assert (=> b!65118 (= lt!27732 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27722 () Unit!1784)

(assert (=> b!65118 (= lt!27722 (addApplyDifferent!46 lt!27738 lt!27740 (ite c!8895 (ite c!8887 (minValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2031 newMap!16)) lt!27732))))

(assert (=> b!65118 (= (apply!70 (+!85 lt!27738 (tuple2!2089 lt!27740 (ite c!8895 (ite c!8887 (minValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2031 newMap!16)))) lt!27732) (apply!70 lt!27738 lt!27732))))

(declare-fun lt!27725 () Unit!1784)

(assert (=> b!65118 (= lt!27725 lt!27722)))

(declare-fun lt!27734 () ListLongMap!1401)

(assert (=> b!65118 (= lt!27734 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (ite c!8895 (_values!2105 newMap!16) lt!27562) (mask!6044 newMap!16) (ite c!8895 (ite c!8887 (extraKeys!1995 newMap!16) lt!27557) (extraKeys!1995 newMap!16)) (zeroValue!2031 newMap!16) (ite c!8895 (ite c!8887 (minValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2031 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27742 () (_ BitVec 64))

(assert (=> b!65118 (= lt!27742 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27723 () (_ BitVec 64))

(assert (=> b!65118 (= lt!27723 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27730 () Unit!1784)

(assert (=> b!65118 (= lt!27730 (addApplyDifferent!46 lt!27734 lt!27742 (zeroValue!2031 newMap!16) lt!27723))))

(assert (=> b!65118 (= (apply!70 (+!85 lt!27734 (tuple2!2089 lt!27742 (zeroValue!2031 newMap!16))) lt!27723) (apply!70 lt!27734 lt!27723))))

(declare-fun lt!27728 () Unit!1784)

(assert (=> b!65118 (= lt!27728 lt!27730)))

(declare-fun lt!27729 () ListLongMap!1401)

(assert (=> b!65118 (= lt!27729 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (ite c!8895 (_values!2105 newMap!16) lt!27562) (mask!6044 newMap!16) (ite c!8895 (ite c!8887 (extraKeys!1995 newMap!16) lt!27557) (extraKeys!1995 newMap!16)) (zeroValue!2031 newMap!16) (ite c!8895 (ite c!8887 (minValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2031 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27721 () (_ BitVec 64))

(assert (=> b!65118 (= lt!27721 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27724 () (_ BitVec 64))

(assert (=> b!65118 (= lt!27724 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!65118 (= lt!27733 (addApplyDifferent!46 lt!27729 lt!27721 (ite c!8895 (ite c!8887 (minValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2031 newMap!16)) lt!27724))))

(assert (=> b!65118 (= (apply!70 (+!85 lt!27729 (tuple2!2089 lt!27721 (ite c!8895 (ite c!8887 (minValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2031 newMap!16)))) lt!27724) (apply!70 lt!27729 lt!27724))))

(declare-fun bm!5333 () Bool)

(assert (=> bm!5333 (= call!5334 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (ite c!8895 (_values!2105 newMap!16) lt!27562) (mask!6044 newMap!16) (ite c!8895 (ite c!8887 (extraKeys!1995 newMap!16) lt!27557) (extraKeys!1995 newMap!16)) (zeroValue!2031 newMap!16) (ite c!8895 (ite c!8887 (minValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2031 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun b!65119 () Bool)

(assert (=> b!65119 (= e!42669 e!42667)))

(declare-fun res!35409 () Bool)

(assert (=> b!65119 (= res!35409 call!5333)))

(assert (=> b!65119 (=> (not res!35409) (not e!42667))))

(declare-fun bm!5334 () Bool)

(assert (=> bm!5334 (= call!5332 call!5331)))

(declare-fun b!65120 () Bool)

(declare-fun res!35405 () Bool)

(assert (=> b!65120 (=> (not res!35405) (not e!42666))))

(assert (=> b!65120 (= res!35405 e!42663)))

(declare-fun res!35407 () Bool)

(assert (=> b!65120 (=> res!35407 e!42663)))

(assert (=> b!65120 (= res!35407 (not e!42658))))

(declare-fun res!35411 () Bool)

(assert (=> b!65120 (=> (not res!35411) (not e!42658))))

(assert (=> b!65120 (= res!35411 (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))

(declare-fun b!65121 () Bool)

(declare-fun res!35412 () Bool)

(assert (=> b!65121 (=> (not res!35412) (not e!42666))))

(assert (=> b!65121 (= res!35412 e!42661)))

(declare-fun c!8958 () Bool)

(assert (=> b!65121 (= c!8958 (not (= (bvand (ite c!8895 (ite c!8887 (extraKeys!1995 newMap!16) lt!27557) (extraKeys!1995 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!65122 () Bool)

(assert (=> b!65122 (= e!42665 call!5332)))

(declare-fun b!65123 () Bool)

(assert (=> b!65123 (= e!42670 e!42664)))

(assert (=> b!65123 (= c!8959 (and (not (= (bvand (ite c!8895 (ite c!8887 (extraKeys!1995 newMap!16) lt!27557) (extraKeys!1995 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!8895 (ite c!8887 (extraKeys!1995 newMap!16) lt!27557) (extraKeys!1995 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!65124 () Bool)

(assert (=> b!65124 (= e!42661 e!42660)))

(declare-fun res!35404 () Bool)

(assert (=> b!65124 (= res!35404 call!5335)))

(assert (=> b!65124 (=> (not res!35404) (not e!42660))))

(declare-fun b!65125 () Bool)

(assert (=> b!65125 (= e!42664 call!5336)))

(assert (= (and d!13533 c!8957) b!65116))

(assert (= (and d!13533 (not c!8957)) b!65123))

(assert (= (and b!65123 c!8959) b!65125))

(assert (= (and b!65123 (not c!8959)) b!65108))

(assert (= (and b!65108 c!8960) b!65114))

(assert (= (and b!65108 (not c!8960)) b!65122))

(assert (= (or b!65114 b!65122) bm!5334))

(assert (= (or b!65125 bm!5334) bm!5328))

(assert (= (or b!65125 b!65114) bm!5332))

(assert (= (or b!65116 bm!5328) bm!5333))

(assert (= (or b!65116 bm!5332) bm!5330))

(assert (= (and d!13533 res!35410) b!65117))

(assert (= (and d!13533 c!8961) b!65118))

(assert (= (and d!13533 (not c!8961)) b!65109))

(assert (= (and d!13533 res!35406) b!65120))

(assert (= (and b!65120 res!35411) b!65112))

(assert (= (and b!65120 (not res!35407)) b!65106))

(assert (= (and b!65106 res!35408) b!65113))

(assert (= (and b!65120 res!35405) b!65121))

(assert (= (and b!65121 c!8958) b!65124))

(assert (= (and b!65121 (not c!8958)) b!65110))

(assert (= (and b!65124 res!35404) b!65115))

(assert (= (or b!65124 b!65110) bm!5329))

(assert (= (and b!65121 res!35412) b!65105))

(assert (= (and b!65105 c!8962) b!65119))

(assert (= (and b!65105 (not c!8962)) b!65107))

(assert (= (and b!65119 res!35409) b!65111))

(assert (= (or b!65119 b!65107) bm!5331))

(declare-fun b_lambda!2921 () Bool)

(assert (=> (not b_lambda!2921) (not b!65113)))

(assert (=> b!65113 t!4917))

(declare-fun b_and!3981 () Bool)

(assert (= b_and!3977 (and (=> t!4917 result!2515) b_and!3981)))

(assert (=> b!65113 t!4919))

(declare-fun b_and!3983 () Bool)

(assert (= b_and!3979 (and (=> t!4919 result!2517) b_and!3983)))

(assert (=> d!13533 m!59353))

(declare-fun m!59501 () Bool)

(assert (=> bm!5331 m!59501))

(declare-fun m!59503 () Bool)

(assert (=> b!65115 m!59503))

(declare-fun m!59505 () Bool)

(assert (=> bm!5330 m!59505))

(assert (=> b!65112 m!59361))

(assert (=> b!65112 m!59361))

(assert (=> b!65112 m!59363))

(declare-fun m!59507 () Bool)

(assert (=> bm!5329 m!59507))

(assert (=> b!65106 m!59361))

(assert (=> b!65106 m!59361))

(declare-fun m!59509 () Bool)

(assert (=> b!65106 m!59509))

(assert (=> b!65113 m!59369))

(assert (=> b!65113 m!59361))

(declare-fun m!59511 () Bool)

(assert (=> b!65113 m!59511))

(assert (=> b!65113 m!59369))

(declare-fun m!59513 () Bool)

(assert (=> b!65113 m!59513))

(assert (=> b!65113 m!59361))

(declare-fun m!59515 () Bool)

(assert (=> b!65113 m!59515))

(assert (=> b!65113 m!59511))

(declare-fun m!59517 () Bool)

(assert (=> b!65118 m!59517))

(declare-fun m!59519 () Bool)

(assert (=> b!65118 m!59519))

(declare-fun m!59521 () Bool)

(assert (=> b!65118 m!59521))

(declare-fun m!59523 () Bool)

(assert (=> b!65118 m!59523))

(assert (=> b!65118 m!59361))

(declare-fun m!59525 () Bool)

(assert (=> b!65118 m!59525))

(declare-fun m!59527 () Bool)

(assert (=> b!65118 m!59527))

(declare-fun m!59529 () Bool)

(assert (=> b!65118 m!59529))

(declare-fun m!59531 () Bool)

(assert (=> b!65118 m!59531))

(assert (=> b!65118 m!59519))

(declare-fun m!59533 () Bool)

(assert (=> b!65118 m!59533))

(declare-fun m!59535 () Bool)

(assert (=> b!65118 m!59535))

(declare-fun m!59537 () Bool)

(assert (=> b!65118 m!59537))

(assert (=> b!65118 m!59525))

(declare-fun m!59539 () Bool)

(assert (=> b!65118 m!59539))

(assert (=> b!65118 m!59537))

(declare-fun m!59541 () Bool)

(assert (=> b!65118 m!59541))

(declare-fun m!59543 () Bool)

(assert (=> b!65118 m!59543))

(assert (=> b!65118 m!59527))

(declare-fun m!59545 () Bool)

(assert (=> b!65118 m!59545))

(declare-fun m!59547 () Bool)

(assert (=> b!65118 m!59547))

(assert (=> bm!5333 m!59531))

(assert (=> b!65117 m!59361))

(assert (=> b!65117 m!59361))

(assert (=> b!65117 m!59363))

(declare-fun m!59549 () Bool)

(assert (=> b!65111 m!59549))

(declare-fun m!59551 () Bool)

(assert (=> b!65116 m!59551))

(assert (=> bm!5281 d!13533))

(assert (=> bm!5264 d!13513))

(declare-fun d!13535 () Bool)

(assert (=> d!13535 (= (get!1112 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!64880 d!13535))

(declare-fun d!13537 () Bool)

(declare-fun e!42672 () Bool)

(assert (=> d!13537 e!42672))

(declare-fun res!35413 () Bool)

(assert (=> d!13537 (=> res!35413 e!42672)))

(declare-fun lt!27746 () Bool)

(assert (=> d!13537 (= res!35413 (not lt!27746))))

(declare-fun lt!27743 () Bool)

(assert (=> d!13537 (= lt!27746 lt!27743)))

(declare-fun lt!27745 () Unit!1784)

(declare-fun e!42671 () Unit!1784)

(assert (=> d!13537 (= lt!27745 e!42671)))

(declare-fun c!8963 () Bool)

(assert (=> d!13537 (= c!8963 lt!27743)))

(assert (=> d!13537 (= lt!27743 (containsKey!131 (toList!716 call!5284) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(assert (=> d!13537 (= (contains!708 call!5284 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)) lt!27746)))

(declare-fun b!65126 () Bool)

(declare-fun lt!27744 () Unit!1784)

(assert (=> b!65126 (= e!42671 lt!27744)))

(assert (=> b!65126 (= lt!27744 (lemmaContainsKeyImpliesGetValueByKeyDefined!80 (toList!716 call!5284) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(assert (=> b!65126 (isDefined!81 (getValueByKey!127 (toList!716 call!5284) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-fun b!65127 () Bool)

(declare-fun Unit!1800 () Unit!1784)

(assert (=> b!65127 (= e!42671 Unit!1800)))

(declare-fun b!65128 () Bool)

(assert (=> b!65128 (= e!42672 (isDefined!81 (getValueByKey!127 (toList!716 call!5284) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355))))))

(assert (= (and d!13537 c!8963) b!65126))

(assert (= (and d!13537 (not c!8963)) b!65127))

(assert (= (and d!13537 (not res!35413)) b!65128))

(assert (=> d!13537 m!59087))

(declare-fun m!59553 () Bool)

(assert (=> d!13537 m!59553))

(assert (=> b!65126 m!59087))

(declare-fun m!59555 () Bool)

(assert (=> b!65126 m!59555))

(assert (=> b!65126 m!59087))

(declare-fun m!59557 () Bool)

(assert (=> b!65126 m!59557))

(assert (=> b!65126 m!59557))

(declare-fun m!59559 () Bool)

(assert (=> b!65126 m!59559))

(assert (=> b!65128 m!59087))

(assert (=> b!65128 m!59557))

(assert (=> b!65128 m!59557))

(assert (=> b!65128 m!59559))

(assert (=> b!64841 d!13537))

(declare-fun d!13539 () Bool)

(assert (=> d!13539 (= (apply!70 lt!27642 lt!27631) (get!1113 (getValueByKey!127 (toList!716 lt!27642) lt!27631)))))

(declare-fun bs!2811 () Bool)

(assert (= bs!2811 d!13539))

(declare-fun m!59561 () Bool)

(assert (=> bs!2811 m!59561))

(assert (=> bs!2811 m!59561))

(declare-fun m!59563 () Bool)

(assert (=> bs!2811 m!59563))

(assert (=> b!64977 d!13539))

(declare-fun d!13541 () Bool)

(assert (=> d!13541 (= (apply!70 (+!85 lt!27637 (tuple2!2089 lt!27629 (minValue!2031 (v!2447 (underlying!240 thiss!992))))) lt!27632) (get!1113 (getValueByKey!127 (toList!716 (+!85 lt!27637 (tuple2!2089 lt!27629 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))) lt!27632)))))

(declare-fun bs!2812 () Bool)

(assert (= bs!2812 d!13541))

(declare-fun m!59565 () Bool)

(assert (=> bs!2812 m!59565))

(assert (=> bs!2812 m!59565))

(declare-fun m!59567 () Bool)

(assert (=> bs!2812 m!59567))

(assert (=> b!64977 d!13541))

(declare-fun d!13543 () Bool)

(assert (=> d!13543 (contains!708 (+!85 lt!27644 (tuple2!2089 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))))) lt!27634)))

(declare-fun lt!27749 () Unit!1784)

(declare-fun choose!364 (ListLongMap!1401 (_ BitVec 64) V!2883 (_ BitVec 64)) Unit!1784)

(assert (=> d!13543 (= lt!27749 (choose!364 lt!27644 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) lt!27634))))

(assert (=> d!13543 (contains!708 lt!27644 lt!27634)))

(assert (=> d!13543 (= (addStillContains!46 lt!27644 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) lt!27634) lt!27749)))

(declare-fun bs!2813 () Bool)

(assert (= bs!2813 d!13543))

(assert (=> bs!2813 m!59325))

(assert (=> bs!2813 m!59325))

(assert (=> bs!2813 m!59329))

(declare-fun m!59569 () Bool)

(assert (=> bs!2813 m!59569))

(declare-fun m!59571 () Bool)

(assert (=> bs!2813 m!59571))

(assert (=> b!64977 d!13543))

(declare-fun d!13545 () Bool)

(declare-fun e!42673 () Bool)

(assert (=> d!13545 e!42673))

(declare-fun res!35414 () Bool)

(assert (=> d!13545 (=> (not res!35414) (not e!42673))))

(declare-fun lt!27753 () ListLongMap!1401)

(assert (=> d!13545 (= res!35414 (contains!708 lt!27753 (_1!1054 (tuple2!2089 lt!27650 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(declare-fun lt!27751 () List!1475)

(assert (=> d!13545 (= lt!27753 (ListLongMap!1402 lt!27751))))

(declare-fun lt!27752 () Unit!1784)

(declare-fun lt!27750 () Unit!1784)

(assert (=> d!13545 (= lt!27752 lt!27750)))

(assert (=> d!13545 (= (getValueByKey!127 lt!27751 (_1!1054 (tuple2!2089 lt!27650 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))))) (Some!132 (_2!1054 (tuple2!2089 lt!27650 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(assert (=> d!13545 (= lt!27750 (lemmaContainsTupThenGetReturnValue!46 lt!27751 (_1!1054 (tuple2!2089 lt!27650 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))))) (_2!1054 (tuple2!2089 lt!27650 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(assert (=> d!13545 (= lt!27751 (insertStrictlySorted!48 (toList!716 lt!27642) (_1!1054 (tuple2!2089 lt!27650 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))))) (_2!1054 (tuple2!2089 lt!27650 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(assert (=> d!13545 (= (+!85 lt!27642 (tuple2!2089 lt!27650 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))))) lt!27753)))

(declare-fun b!65130 () Bool)

(declare-fun res!35415 () Bool)

(assert (=> b!65130 (=> (not res!35415) (not e!42673))))

(assert (=> b!65130 (= res!35415 (= (getValueByKey!127 (toList!716 lt!27753) (_1!1054 (tuple2!2089 lt!27650 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))))) (Some!132 (_2!1054 (tuple2!2089 lt!27650 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))))))))))

(declare-fun b!65131 () Bool)

(assert (=> b!65131 (= e!42673 (contains!710 (toList!716 lt!27753) (tuple2!2089 lt!27650 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))))))))

(assert (= (and d!13545 res!35414) b!65130))

(assert (= (and b!65130 res!35415) b!65131))

(declare-fun m!59573 () Bool)

(assert (=> d!13545 m!59573))

(declare-fun m!59575 () Bool)

(assert (=> d!13545 m!59575))

(declare-fun m!59577 () Bool)

(assert (=> d!13545 m!59577))

(declare-fun m!59579 () Bool)

(assert (=> d!13545 m!59579))

(declare-fun m!59581 () Bool)

(assert (=> b!65130 m!59581))

(declare-fun m!59583 () Bool)

(assert (=> b!65131 m!59583))

(assert (=> b!64977 d!13545))

(declare-fun b!65156 () Bool)

(assert (=> b!65156 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))))

(assert (=> b!65156 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2045 (_values!2105 (v!2447 (underlying!240 thiss!992))))))))

(declare-fun lt!27773 () ListLongMap!1401)

(declare-fun e!42690 () Bool)

(assert (=> b!65156 (= e!42690 (= (apply!70 lt!27773 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!65157 () Bool)

(declare-fun e!42689 () ListLongMap!1401)

(declare-fun call!5340 () ListLongMap!1401)

(assert (=> b!65157 (= e!42689 call!5340)))

(declare-fun d!13547 () Bool)

(declare-fun e!42692 () Bool)

(assert (=> d!13547 e!42692))

(declare-fun res!35427 () Bool)

(assert (=> d!13547 (=> (not res!35427) (not e!42692))))

(assert (=> d!13547 (= res!35427 (not (contains!708 lt!27773 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!42688 () ListLongMap!1401)

(assert (=> d!13547 (= lt!27773 e!42688)))

(declare-fun c!8974 () Bool)

(assert (=> d!13547 (= c!8974 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))))

(assert (=> d!13547 (validMask!0 (mask!6044 (v!2447 (underlying!240 thiss!992))))))

(assert (=> d!13547 (= (getCurrentListMapNoExtraKeys!48 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (_values!2105 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992))) (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) (minValue!2031 (v!2447 (underlying!240 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992)))) lt!27773)))

(declare-fun b!65158 () Bool)

(declare-fun res!35424 () Bool)

(assert (=> b!65158 (=> (not res!35424) (not e!42692))))

(assert (=> b!65158 (= res!35424 (not (contains!708 lt!27773 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!65159 () Bool)

(declare-fun e!42693 () Bool)

(assert (=> b!65159 (= e!42693 (validKeyInArray!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!65159 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!65160 () Bool)

(assert (=> b!65160 (= e!42688 (ListLongMap!1402 Nil!1472))))

(declare-fun bm!5337 () Bool)

(assert (=> bm!5337 (= call!5340 (getCurrentListMapNoExtraKeys!48 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (_values!2105 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992))) (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) (minValue!2031 (v!2447 (underlying!240 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992)))))))

(declare-fun b!65161 () Bool)

(assert (=> b!65161 (= e!42688 e!42689)))

(declare-fun c!8975 () Bool)

(assert (=> b!65161 (= c!8975 (validKeyInArray!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!65162 () Bool)

(declare-fun e!42691 () Bool)

(declare-fun isEmpty!309 (ListLongMap!1401) Bool)

(assert (=> b!65162 (= e!42691 (isEmpty!309 lt!27773))))

(declare-fun b!65163 () Bool)

(declare-fun lt!27774 () Unit!1784)

(declare-fun lt!27769 () Unit!1784)

(assert (=> b!65163 (= lt!27774 lt!27769)))

(declare-fun lt!27768 () (_ BitVec 64))

(declare-fun lt!27772 () (_ BitVec 64))

(declare-fun lt!27770 () ListLongMap!1401)

(declare-fun lt!27771 () V!2883)

(assert (=> b!65163 (not (contains!708 (+!85 lt!27770 (tuple2!2089 lt!27768 lt!27771)) lt!27772))))

(declare-fun addStillNotContains!21 (ListLongMap!1401 (_ BitVec 64) V!2883 (_ BitVec 64)) Unit!1784)

(assert (=> b!65163 (= lt!27769 (addStillNotContains!21 lt!27770 lt!27768 lt!27771 lt!27772))))

(assert (=> b!65163 (= lt!27772 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!65163 (= lt!27771 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!65163 (= lt!27768 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!65163 (= lt!27770 call!5340)))

(assert (=> b!65163 (= e!42689 (+!85 call!5340 (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!65164 () Bool)

(declare-fun e!42694 () Bool)

(assert (=> b!65164 (= e!42692 e!42694)))

(declare-fun c!8973 () Bool)

(assert (=> b!65164 (= c!8973 e!42693)))

(declare-fun res!35426 () Bool)

(assert (=> b!65164 (=> (not res!35426) (not e!42693))))

(assert (=> b!65164 (= res!35426 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))))

(declare-fun b!65165 () Bool)

(assert (=> b!65165 (= e!42694 e!42690)))

(assert (=> b!65165 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))))

(declare-fun res!35425 () Bool)

(assert (=> b!65165 (= res!35425 (contains!708 lt!27773 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!65165 (=> (not res!35425) (not e!42690))))

(declare-fun b!65166 () Bool)

(assert (=> b!65166 (= e!42691 (= lt!27773 (getCurrentListMapNoExtraKeys!48 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (_values!2105 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992))) (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) (minValue!2031 (v!2447 (underlying!240 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))))))))

(declare-fun b!65167 () Bool)

(assert (=> b!65167 (= e!42694 e!42691)))

(declare-fun c!8972 () Bool)

(assert (=> b!65167 (= c!8972 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))))

(assert (= (and d!13547 c!8974) b!65160))

(assert (= (and d!13547 (not c!8974)) b!65161))

(assert (= (and b!65161 c!8975) b!65163))

(assert (= (and b!65161 (not c!8975)) b!65157))

(assert (= (or b!65163 b!65157) bm!5337))

(assert (= (and d!13547 res!35427) b!65158))

(assert (= (and b!65158 res!35424) b!65164))

(assert (= (and b!65164 res!35426) b!65159))

(assert (= (and b!65164 c!8973) b!65165))

(assert (= (and b!65164 (not c!8973)) b!65167))

(assert (= (and b!65165 res!35425) b!65156))

(assert (= (and b!65167 c!8972) b!65166))

(assert (= (and b!65167 (not c!8972)) b!65162))

(declare-fun b_lambda!2923 () Bool)

(assert (=> (not b_lambda!2923) (not b!65156)))

(assert (=> b!65156 t!4906))

(declare-fun b_and!3985 () Bool)

(assert (= b_and!3981 (and (=> t!4906 result!2501) b_and!3985)))

(assert (=> b!65156 t!4908))

(declare-fun b_and!3987 () Bool)

(assert (= b_and!3983 (and (=> t!4908 result!2505) b_and!3987)))

(declare-fun b_lambda!2925 () Bool)

(assert (=> (not b_lambda!2925) (not b!65163)))

(assert (=> b!65163 t!4906))

(declare-fun b_and!3989 () Bool)

(assert (= b_and!3985 (and (=> t!4906 result!2501) b_and!3989)))

(assert (=> b!65163 t!4908))

(declare-fun b_and!3991 () Bool)

(assert (= b_and!3987 (and (=> t!4908 result!2505) b_and!3991)))

(declare-fun m!59585 () Bool)

(assert (=> b!65166 m!59585))

(assert (=> b!65165 m!59269))

(assert (=> b!65165 m!59269))

(declare-fun m!59587 () Bool)

(assert (=> b!65165 m!59587))

(assert (=> bm!5337 m!59585))

(declare-fun m!59589 () Bool)

(assert (=> b!65162 m!59589))

(assert (=> b!65159 m!59269))

(assert (=> b!65159 m!59269))

(assert (=> b!65159 m!59293))

(declare-fun m!59591 () Bool)

(assert (=> b!65163 m!59591))

(declare-fun m!59593 () Bool)

(assert (=> b!65163 m!59593))

(assert (=> b!65163 m!59269))

(declare-fun m!59595 () Bool)

(assert (=> b!65163 m!59595))

(assert (=> b!65163 m!59299))

(assert (=> b!65163 m!59299))

(assert (=> b!65163 m!59119))

(assert (=> b!65163 m!59301))

(declare-fun m!59597 () Bool)

(assert (=> b!65163 m!59597))

(assert (=> b!65163 m!59119))

(assert (=> b!65163 m!59591))

(assert (=> b!65156 m!59119))

(assert (=> b!65156 m!59269))

(assert (=> b!65156 m!59299))

(assert (=> b!65156 m!59269))

(declare-fun m!59599 () Bool)

(assert (=> b!65156 m!59599))

(assert (=> b!65156 m!59299))

(assert (=> b!65156 m!59119))

(assert (=> b!65156 m!59301))

(declare-fun m!59601 () Bool)

(assert (=> d!13547 m!59601))

(assert (=> d!13547 m!59101))

(declare-fun m!59603 () Bool)

(assert (=> b!65158 m!59603))

(assert (=> b!65161 m!59269))

(assert (=> b!65161 m!59269))

(assert (=> b!65161 m!59293))

(assert (=> b!64977 d!13547))

(declare-fun d!13549 () Bool)

(assert (=> d!13549 (= (apply!70 lt!27637 lt!27632) (get!1113 (getValueByKey!127 (toList!716 lt!27637) lt!27632)))))

(declare-fun bs!2814 () Bool)

(assert (= bs!2814 d!13549))

(declare-fun m!59605 () Bool)

(assert (=> bs!2814 m!59605))

(assert (=> bs!2814 m!59605))

(declare-fun m!59607 () Bool)

(assert (=> bs!2814 m!59607))

(assert (=> b!64977 d!13549))

(declare-fun d!13551 () Bool)

(declare-fun e!42695 () Bool)

(assert (=> d!13551 e!42695))

(declare-fun res!35428 () Bool)

(assert (=> d!13551 (=> (not res!35428) (not e!42695))))

(declare-fun lt!27778 () ListLongMap!1401)

(assert (=> d!13551 (= res!35428 (contains!708 lt!27778 (_1!1054 (tuple2!2089 lt!27629 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(declare-fun lt!27776 () List!1475)

(assert (=> d!13551 (= lt!27778 (ListLongMap!1402 lt!27776))))

(declare-fun lt!27777 () Unit!1784)

(declare-fun lt!27775 () Unit!1784)

(assert (=> d!13551 (= lt!27777 lt!27775)))

(assert (=> d!13551 (= (getValueByKey!127 lt!27776 (_1!1054 (tuple2!2089 lt!27629 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))) (Some!132 (_2!1054 (tuple2!2089 lt!27629 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(assert (=> d!13551 (= lt!27775 (lemmaContainsTupThenGetReturnValue!46 lt!27776 (_1!1054 (tuple2!2089 lt!27629 (minValue!2031 (v!2447 (underlying!240 thiss!992))))) (_2!1054 (tuple2!2089 lt!27629 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(assert (=> d!13551 (= lt!27776 (insertStrictlySorted!48 (toList!716 lt!27637) (_1!1054 (tuple2!2089 lt!27629 (minValue!2031 (v!2447 (underlying!240 thiss!992))))) (_2!1054 (tuple2!2089 lt!27629 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(assert (=> d!13551 (= (+!85 lt!27637 (tuple2!2089 lt!27629 (minValue!2031 (v!2447 (underlying!240 thiss!992))))) lt!27778)))

(declare-fun b!65168 () Bool)

(declare-fun res!35429 () Bool)

(assert (=> b!65168 (=> (not res!35429) (not e!42695))))

(assert (=> b!65168 (= res!35429 (= (getValueByKey!127 (toList!716 lt!27778) (_1!1054 (tuple2!2089 lt!27629 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))) (Some!132 (_2!1054 (tuple2!2089 lt!27629 (minValue!2031 (v!2447 (underlying!240 thiss!992))))))))))

(declare-fun b!65169 () Bool)

(assert (=> b!65169 (= e!42695 (contains!710 (toList!716 lt!27778) (tuple2!2089 lt!27629 (minValue!2031 (v!2447 (underlying!240 thiss!992))))))))

(assert (= (and d!13551 res!35428) b!65168))

(assert (= (and b!65168 res!35429) b!65169))

(declare-fun m!59609 () Bool)

(assert (=> d!13551 m!59609))

(declare-fun m!59611 () Bool)

(assert (=> d!13551 m!59611))

(declare-fun m!59613 () Bool)

(assert (=> d!13551 m!59613))

(declare-fun m!59615 () Bool)

(assert (=> d!13551 m!59615))

(declare-fun m!59617 () Bool)

(assert (=> b!65168 m!59617))

(declare-fun m!59619 () Bool)

(assert (=> b!65169 m!59619))

(assert (=> b!64977 d!13551))

(declare-fun d!13553 () Bool)

(declare-fun e!42697 () Bool)

(assert (=> d!13553 e!42697))

(declare-fun res!35430 () Bool)

(assert (=> d!13553 (=> res!35430 e!42697)))

(declare-fun lt!27782 () Bool)

(assert (=> d!13553 (= res!35430 (not lt!27782))))

(declare-fun lt!27779 () Bool)

(assert (=> d!13553 (= lt!27782 lt!27779)))

(declare-fun lt!27781 () Unit!1784)

(declare-fun e!42696 () Unit!1784)

(assert (=> d!13553 (= lt!27781 e!42696)))

(declare-fun c!8976 () Bool)

(assert (=> d!13553 (= c!8976 lt!27779)))

(assert (=> d!13553 (= lt!27779 (containsKey!131 (toList!716 (+!85 lt!27644 (tuple2!2089 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))))) lt!27634))))

(assert (=> d!13553 (= (contains!708 (+!85 lt!27644 (tuple2!2089 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))))) lt!27634) lt!27782)))

(declare-fun b!65170 () Bool)

(declare-fun lt!27780 () Unit!1784)

(assert (=> b!65170 (= e!42696 lt!27780)))

(assert (=> b!65170 (= lt!27780 (lemmaContainsKeyImpliesGetValueByKeyDefined!80 (toList!716 (+!85 lt!27644 (tuple2!2089 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))))) lt!27634))))

(assert (=> b!65170 (isDefined!81 (getValueByKey!127 (toList!716 (+!85 lt!27644 (tuple2!2089 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))))) lt!27634))))

(declare-fun b!65171 () Bool)

(declare-fun Unit!1801 () Unit!1784)

(assert (=> b!65171 (= e!42696 Unit!1801)))

(declare-fun b!65172 () Bool)

(assert (=> b!65172 (= e!42697 (isDefined!81 (getValueByKey!127 (toList!716 (+!85 lt!27644 (tuple2!2089 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))))) lt!27634)))))

(assert (= (and d!13553 c!8976) b!65170))

(assert (= (and d!13553 (not c!8976)) b!65171))

(assert (= (and d!13553 (not res!35430)) b!65172))

(declare-fun m!59621 () Bool)

(assert (=> d!13553 m!59621))

(declare-fun m!59623 () Bool)

(assert (=> b!65170 m!59623))

(declare-fun m!59625 () Bool)

(assert (=> b!65170 m!59625))

(assert (=> b!65170 m!59625))

(declare-fun m!59627 () Bool)

(assert (=> b!65170 m!59627))

(assert (=> b!65172 m!59625))

(assert (=> b!65172 m!59625))

(assert (=> b!65172 m!59627))

(assert (=> b!64977 d!13553))

(declare-fun d!13555 () Bool)

(declare-fun e!42698 () Bool)

(assert (=> d!13555 e!42698))

(declare-fun res!35431 () Bool)

(assert (=> d!13555 (=> (not res!35431) (not e!42698))))

(declare-fun lt!27786 () ListLongMap!1401)

(assert (=> d!13555 (= res!35431 (contains!708 lt!27786 (_1!1054 (tuple2!2089 lt!27648 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(declare-fun lt!27784 () List!1475)

(assert (=> d!13555 (= lt!27786 (ListLongMap!1402 lt!27784))))

(declare-fun lt!27785 () Unit!1784)

(declare-fun lt!27783 () Unit!1784)

(assert (=> d!13555 (= lt!27785 lt!27783)))

(assert (=> d!13555 (= (getValueByKey!127 lt!27784 (_1!1054 (tuple2!2089 lt!27648 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))) (Some!132 (_2!1054 (tuple2!2089 lt!27648 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(assert (=> d!13555 (= lt!27783 (lemmaContainsTupThenGetReturnValue!46 lt!27784 (_1!1054 (tuple2!2089 lt!27648 (minValue!2031 (v!2447 (underlying!240 thiss!992))))) (_2!1054 (tuple2!2089 lt!27648 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(assert (=> d!13555 (= lt!27784 (insertStrictlySorted!48 (toList!716 lt!27646) (_1!1054 (tuple2!2089 lt!27648 (minValue!2031 (v!2447 (underlying!240 thiss!992))))) (_2!1054 (tuple2!2089 lt!27648 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(assert (=> d!13555 (= (+!85 lt!27646 (tuple2!2089 lt!27648 (minValue!2031 (v!2447 (underlying!240 thiss!992))))) lt!27786)))

(declare-fun b!65173 () Bool)

(declare-fun res!35432 () Bool)

(assert (=> b!65173 (=> (not res!35432) (not e!42698))))

(assert (=> b!65173 (= res!35432 (= (getValueByKey!127 (toList!716 lt!27786) (_1!1054 (tuple2!2089 lt!27648 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))) (Some!132 (_2!1054 (tuple2!2089 lt!27648 (minValue!2031 (v!2447 (underlying!240 thiss!992))))))))))

(declare-fun b!65174 () Bool)

(assert (=> b!65174 (= e!42698 (contains!710 (toList!716 lt!27786) (tuple2!2089 lt!27648 (minValue!2031 (v!2447 (underlying!240 thiss!992))))))))

(assert (= (and d!13555 res!35431) b!65173))

(assert (= (and b!65173 res!35432) b!65174))

(declare-fun m!59629 () Bool)

(assert (=> d!13555 m!59629))

(declare-fun m!59631 () Bool)

(assert (=> d!13555 m!59631))

(declare-fun m!59633 () Bool)

(assert (=> d!13555 m!59633))

(declare-fun m!59635 () Bool)

(assert (=> d!13555 m!59635))

(declare-fun m!59637 () Bool)

(assert (=> b!65173 m!59637))

(declare-fun m!59639 () Bool)

(assert (=> b!65174 m!59639))

(assert (=> b!64977 d!13555))

(declare-fun d!13557 () Bool)

(assert (=> d!13557 (= (apply!70 (+!85 lt!27646 (tuple2!2089 lt!27648 (minValue!2031 (v!2447 (underlying!240 thiss!992))))) lt!27640) (get!1113 (getValueByKey!127 (toList!716 (+!85 lt!27646 (tuple2!2089 lt!27648 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))) lt!27640)))))

(declare-fun bs!2815 () Bool)

(assert (= bs!2815 d!13557))

(declare-fun m!59641 () Bool)

(assert (=> bs!2815 m!59641))

(assert (=> bs!2815 m!59641))

(declare-fun m!59643 () Bool)

(assert (=> bs!2815 m!59643))

(assert (=> b!64977 d!13557))

(declare-fun d!13559 () Bool)

(assert (=> d!13559 (= (apply!70 (+!85 lt!27646 (tuple2!2089 lt!27648 (minValue!2031 (v!2447 (underlying!240 thiss!992))))) lt!27640) (apply!70 lt!27646 lt!27640))))

(declare-fun lt!27789 () Unit!1784)

(declare-fun choose!365 (ListLongMap!1401 (_ BitVec 64) V!2883 (_ BitVec 64)) Unit!1784)

(assert (=> d!13559 (= lt!27789 (choose!365 lt!27646 lt!27648 (minValue!2031 (v!2447 (underlying!240 thiss!992))) lt!27640))))

(declare-fun e!42701 () Bool)

(assert (=> d!13559 e!42701))

(declare-fun res!35435 () Bool)

(assert (=> d!13559 (=> (not res!35435) (not e!42701))))

(assert (=> d!13559 (= res!35435 (contains!708 lt!27646 lt!27640))))

(assert (=> d!13559 (= (addApplyDifferent!46 lt!27646 lt!27648 (minValue!2031 (v!2447 (underlying!240 thiss!992))) lt!27640) lt!27789)))

(declare-fun b!65178 () Bool)

(assert (=> b!65178 (= e!42701 (not (= lt!27640 lt!27648)))))

(assert (= (and d!13559 res!35435) b!65178))

(assert (=> d!13559 m!59333))

(assert (=> d!13559 m!59313))

(declare-fun m!59645 () Bool)

(assert (=> d!13559 m!59645))

(assert (=> d!13559 m!59313))

(assert (=> d!13559 m!59327))

(declare-fun m!59647 () Bool)

(assert (=> d!13559 m!59647))

(assert (=> b!64977 d!13559))

(declare-fun d!13561 () Bool)

(assert (=> d!13561 (= (apply!70 lt!27646 lt!27640) (get!1113 (getValueByKey!127 (toList!716 lt!27646) lt!27640)))))

(declare-fun bs!2816 () Bool)

(assert (= bs!2816 d!13561))

(declare-fun m!59649 () Bool)

(assert (=> bs!2816 m!59649))

(assert (=> bs!2816 m!59649))

(declare-fun m!59651 () Bool)

(assert (=> bs!2816 m!59651))

(assert (=> b!64977 d!13561))

(declare-fun d!13563 () Bool)

(assert (=> d!13563 (= (apply!70 (+!85 lt!27637 (tuple2!2089 lt!27629 (minValue!2031 (v!2447 (underlying!240 thiss!992))))) lt!27632) (apply!70 lt!27637 lt!27632))))

(declare-fun lt!27790 () Unit!1784)

(assert (=> d!13563 (= lt!27790 (choose!365 lt!27637 lt!27629 (minValue!2031 (v!2447 (underlying!240 thiss!992))) lt!27632))))

(declare-fun e!42702 () Bool)

(assert (=> d!13563 e!42702))

(declare-fun res!35436 () Bool)

(assert (=> d!13563 (=> (not res!35436) (not e!42702))))

(assert (=> d!13563 (= res!35436 (contains!708 lt!27637 lt!27632))))

(assert (=> d!13563 (= (addApplyDifferent!46 lt!27637 lt!27629 (minValue!2031 (v!2447 (underlying!240 thiss!992))) lt!27632) lt!27790)))

(declare-fun b!65179 () Bool)

(assert (=> b!65179 (= e!42702 (not (= lt!27632 lt!27629)))))

(assert (= (and d!13563 res!35436) b!65179))

(assert (=> d!13563 m!59321))

(assert (=> d!13563 m!59307))

(declare-fun m!59653 () Bool)

(assert (=> d!13563 m!59653))

(assert (=> d!13563 m!59307))

(assert (=> d!13563 m!59309))

(declare-fun m!59655 () Bool)

(assert (=> d!13563 m!59655))

(assert (=> b!64977 d!13563))

(declare-fun d!13565 () Bool)

(assert (=> d!13565 (= (apply!70 (+!85 lt!27642 (tuple2!2089 lt!27650 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))))) lt!27631) (apply!70 lt!27642 lt!27631))))

(declare-fun lt!27791 () Unit!1784)

(assert (=> d!13565 (= lt!27791 (choose!365 lt!27642 lt!27650 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) lt!27631))))

(declare-fun e!42703 () Bool)

(assert (=> d!13565 e!42703))

(declare-fun res!35437 () Bool)

(assert (=> d!13565 (=> (not res!35437) (not e!42703))))

(assert (=> d!13565 (= res!35437 (contains!708 lt!27642 lt!27631))))

(assert (=> d!13565 (= (addApplyDifferent!46 lt!27642 lt!27650 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) lt!27631) lt!27791)))

(declare-fun b!65180 () Bool)

(assert (=> b!65180 (= e!42703 (not (= lt!27631 lt!27650)))))

(assert (= (and d!13565 res!35437) b!65180))

(assert (=> d!13565 m!59311))

(assert (=> d!13565 m!59315))

(declare-fun m!59657 () Bool)

(assert (=> d!13565 m!59657))

(assert (=> d!13565 m!59315))

(assert (=> d!13565 m!59317))

(declare-fun m!59659 () Bool)

(assert (=> d!13565 m!59659))

(assert (=> b!64977 d!13565))

(declare-fun d!13567 () Bool)

(assert (=> d!13567 (= (apply!70 (+!85 lt!27642 (tuple2!2089 lt!27650 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))))) lt!27631) (get!1113 (getValueByKey!127 (toList!716 (+!85 lt!27642 (tuple2!2089 lt!27650 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))))) lt!27631)))))

(declare-fun bs!2817 () Bool)

(assert (= bs!2817 d!13567))

(declare-fun m!59661 () Bool)

(assert (=> bs!2817 m!59661))

(assert (=> bs!2817 m!59661))

(declare-fun m!59663 () Bool)

(assert (=> bs!2817 m!59663))

(assert (=> b!64977 d!13567))

(declare-fun d!13569 () Bool)

(declare-fun e!42704 () Bool)

(assert (=> d!13569 e!42704))

(declare-fun res!35438 () Bool)

(assert (=> d!13569 (=> (not res!35438) (not e!42704))))

(declare-fun lt!27795 () ListLongMap!1401)

(assert (=> d!13569 (= res!35438 (contains!708 lt!27795 (_1!1054 (tuple2!2089 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(declare-fun lt!27793 () List!1475)

(assert (=> d!13569 (= lt!27795 (ListLongMap!1402 lt!27793))))

(declare-fun lt!27794 () Unit!1784)

(declare-fun lt!27792 () Unit!1784)

(assert (=> d!13569 (= lt!27794 lt!27792)))

(assert (=> d!13569 (= (getValueByKey!127 lt!27793 (_1!1054 (tuple2!2089 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))))) (Some!132 (_2!1054 (tuple2!2089 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(assert (=> d!13569 (= lt!27792 (lemmaContainsTupThenGetReturnValue!46 lt!27793 (_1!1054 (tuple2!2089 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))))) (_2!1054 (tuple2!2089 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(assert (=> d!13569 (= lt!27793 (insertStrictlySorted!48 (toList!716 lt!27644) (_1!1054 (tuple2!2089 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))))) (_2!1054 (tuple2!2089 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(assert (=> d!13569 (= (+!85 lt!27644 (tuple2!2089 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))))) lt!27795)))

(declare-fun b!65181 () Bool)

(declare-fun res!35439 () Bool)

(assert (=> b!65181 (=> (not res!35439) (not e!42704))))

(assert (=> b!65181 (= res!35439 (= (getValueByKey!127 (toList!716 lt!27795) (_1!1054 (tuple2!2089 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992)))))) (Some!132 (_2!1054 (tuple2!2089 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))))))))))

(declare-fun b!65182 () Bool)

(assert (=> b!65182 (= e!42704 (contains!710 (toList!716 lt!27795) (tuple2!2089 lt!27643 (zeroValue!2031 (v!2447 (underlying!240 thiss!992))))))))

(assert (= (and d!13569 res!35438) b!65181))

(assert (= (and b!65181 res!35439) b!65182))

(declare-fun m!59665 () Bool)

(assert (=> d!13569 m!59665))

(declare-fun m!59667 () Bool)

(assert (=> d!13569 m!59667))

(declare-fun m!59669 () Bool)

(assert (=> d!13569 m!59669))

(declare-fun m!59671 () Bool)

(assert (=> d!13569 m!59671))

(declare-fun m!59673 () Bool)

(assert (=> b!65181 m!59673))

(declare-fun m!59675 () Bool)

(assert (=> b!65182 m!59675))

(assert (=> b!64977 d!13569))

(assert (=> d!13495 d!13459))

(assert (=> b!64919 d!13519))

(assert (=> b!64914 d!13499))

(assert (=> b!64917 d!13519))

(declare-fun b!65183 () Bool)

(declare-fun e!42713 () Bool)

(declare-fun e!42716 () Bool)

(assert (=> b!65183 (= e!42713 e!42716)))

(declare-fun c!8982 () Bool)

(assert (=> b!65183 (= c!8982 (not (= (bvand (ite (and c!8895 c!8887) lt!27565 (extraKeys!1995 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!65184 () Bool)

(declare-fun e!42710 () Bool)

(declare-fun e!42715 () Bool)

(assert (=> b!65184 (= e!42710 e!42715)))

(declare-fun res!35444 () Bool)

(assert (=> b!65184 (=> (not res!35444) (not e!42715))))

(declare-fun lt!27812 () ListLongMap!1401)

(assert (=> b!65184 (= res!35444 (contains!708 lt!27812 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!65184 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))

(declare-fun d!13571 () Bool)

(assert (=> d!13571 e!42713))

(declare-fun res!35442 () Bool)

(assert (=> d!13571 (=> (not res!35442) (not e!42713))))

(assert (=> d!13571 (= res!35442 (or (bvsge #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))))

(declare-fun lt!27814 () ListLongMap!1401)

(assert (=> d!13571 (= lt!27812 lt!27814)))

(declare-fun lt!27802 () Unit!1784)

(declare-fun e!42709 () Unit!1784)

(assert (=> d!13571 (= lt!27802 e!42709)))

(declare-fun c!8981 () Bool)

(declare-fun e!42706 () Bool)

(assert (=> d!13571 (= c!8981 e!42706)))

(declare-fun res!35446 () Bool)

(assert (=> d!13571 (=> (not res!35446) (not e!42706))))

(assert (=> d!13571 (= res!35446 (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))

(declare-fun e!42717 () ListLongMap!1401)

(assert (=> d!13571 (= lt!27814 e!42717)))

(declare-fun c!8977 () Bool)

(assert (=> d!13571 (= c!8977 (and (not (= (bvand (ite (and c!8895 c!8887) lt!27565 (extraKeys!1995 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite (and c!8895 c!8887) lt!27565 (extraKeys!1995 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!13571 (validMask!0 (mask!6044 newMap!16))))

(assert (=> d!13571 (= (getCurrentListMap!412 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (ite (and c!8895 c!8887) lt!27565 (extraKeys!1995 newMap!16)) (ite (and c!8895 c!8887) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2031 newMap!16)) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)) lt!27812)))

(declare-fun b!65185 () Bool)

(declare-fun call!5343 () Bool)

(assert (=> b!65185 (= e!42716 (not call!5343))))

(declare-fun b!65186 () Bool)

(declare-fun c!8980 () Bool)

(assert (=> b!65186 (= c!8980 (and (not (= (bvand (ite (and c!8895 c!8887) lt!27565 (extraKeys!1995 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite (and c!8895 c!8887) lt!27565 (extraKeys!1995 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!42711 () ListLongMap!1401)

(declare-fun e!42712 () ListLongMap!1401)

(assert (=> b!65186 (= e!42711 e!42712)))

(declare-fun b!65187 () Bool)

(declare-fun Unit!1802 () Unit!1784)

(assert (=> b!65187 (= e!42709 Unit!1802)))

(declare-fun b!65188 () Bool)

(declare-fun e!42708 () Bool)

(declare-fun call!5345 () Bool)

(assert (=> b!65188 (= e!42708 (not call!5345))))

(declare-fun b!65189 () Bool)

(declare-fun e!42714 () Bool)

(assert (=> b!65189 (= e!42714 (= (apply!70 lt!27812 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2031 newMap!16)))))

(declare-fun bm!5338 () Bool)

(declare-fun call!5341 () ListLongMap!1401)

(declare-fun call!5344 () ListLongMap!1401)

(assert (=> bm!5338 (= call!5341 call!5344)))

(declare-fun bm!5339 () Bool)

(assert (=> bm!5339 (= call!5345 (contains!708 lt!27812 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!65190 () Bool)

(declare-fun e!42705 () Bool)

(assert (=> b!65190 (= e!42705 (validKeyInArray!0 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun call!5347 () ListLongMap!1401)

(declare-fun call!5342 () ListLongMap!1401)

(declare-fun bm!5340 () Bool)

(declare-fun c!8979 () Bool)

(assert (=> bm!5340 (= call!5347 (+!85 (ite c!8977 call!5344 (ite c!8979 call!5341 call!5342)) (ite (or c!8977 c!8979) (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!8895 c!8887) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2031 newMap!16))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 newMap!16)))))))

(declare-fun b!65191 () Bool)

(assert (=> b!65191 (= e!42715 (= (apply!70 lt!27812 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)) (get!1110 (select (arr!1811 (_values!2105 newMap!16)) #b00000000000000000000000000000000) (dynLambda!320 (defaultEntry!2122 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!65191 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2045 (_values!2105 newMap!16))))))

(assert (=> b!65191 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))

(declare-fun b!65192 () Bool)

(declare-fun call!5346 () ListLongMap!1401)

(assert (=> b!65192 (= e!42712 call!5346)))

(declare-fun b!65193 () Bool)

(declare-fun e!42707 () Bool)

(assert (=> b!65193 (= e!42707 (= (apply!70 lt!27812 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!8895 c!8887) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2031 newMap!16))))))

(declare-fun bm!5341 () Bool)

(assert (=> bm!5341 (= call!5343 (contains!708 lt!27812 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!5342 () Bool)

(assert (=> bm!5342 (= call!5346 call!5347)))

(declare-fun b!65194 () Bool)

(assert (=> b!65194 (= e!42717 (+!85 call!5347 (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 newMap!16))))))

(declare-fun b!65195 () Bool)

(assert (=> b!65195 (= e!42706 (validKeyInArray!0 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!65196 () Bool)

(declare-fun lt!27808 () Unit!1784)

(assert (=> b!65196 (= e!42709 lt!27808)))

(declare-fun lt!27811 () ListLongMap!1401)

(assert (=> b!65196 (= lt!27811 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (ite (and c!8895 c!8887) lt!27565 (extraKeys!1995 newMap!16)) (ite (and c!8895 c!8887) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2031 newMap!16)) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27810 () (_ BitVec 64))

(assert (=> b!65196 (= lt!27810 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27801 () (_ BitVec 64))

(assert (=> b!65196 (= lt!27801 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27806 () Unit!1784)

(assert (=> b!65196 (= lt!27806 (addStillContains!46 lt!27811 lt!27810 (ite (and c!8895 c!8887) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2031 newMap!16)) lt!27801))))

(assert (=> b!65196 (contains!708 (+!85 lt!27811 (tuple2!2089 lt!27810 (ite (and c!8895 c!8887) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2031 newMap!16)))) lt!27801)))

(declare-fun lt!27816 () Unit!1784)

(assert (=> b!65196 (= lt!27816 lt!27806)))

(declare-fun lt!27813 () ListLongMap!1401)

(assert (=> b!65196 (= lt!27813 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (ite (and c!8895 c!8887) lt!27565 (extraKeys!1995 newMap!16)) (ite (and c!8895 c!8887) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2031 newMap!16)) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27815 () (_ BitVec 64))

(assert (=> b!65196 (= lt!27815 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27807 () (_ BitVec 64))

(assert (=> b!65196 (= lt!27807 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27797 () Unit!1784)

(assert (=> b!65196 (= lt!27797 (addApplyDifferent!46 lt!27813 lt!27815 (minValue!2031 newMap!16) lt!27807))))

(assert (=> b!65196 (= (apply!70 (+!85 lt!27813 (tuple2!2089 lt!27815 (minValue!2031 newMap!16))) lt!27807) (apply!70 lt!27813 lt!27807))))

(declare-fun lt!27800 () Unit!1784)

(assert (=> b!65196 (= lt!27800 lt!27797)))

(declare-fun lt!27809 () ListLongMap!1401)

(assert (=> b!65196 (= lt!27809 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (ite (and c!8895 c!8887) lt!27565 (extraKeys!1995 newMap!16)) (ite (and c!8895 c!8887) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2031 newMap!16)) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27817 () (_ BitVec 64))

(assert (=> b!65196 (= lt!27817 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27798 () (_ BitVec 64))

(assert (=> b!65196 (= lt!27798 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27805 () Unit!1784)

(assert (=> b!65196 (= lt!27805 (addApplyDifferent!46 lt!27809 lt!27817 (ite (and c!8895 c!8887) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2031 newMap!16)) lt!27798))))

(assert (=> b!65196 (= (apply!70 (+!85 lt!27809 (tuple2!2089 lt!27817 (ite (and c!8895 c!8887) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2031 newMap!16)))) lt!27798) (apply!70 lt!27809 lt!27798))))

(declare-fun lt!27803 () Unit!1784)

(assert (=> b!65196 (= lt!27803 lt!27805)))

(declare-fun lt!27804 () ListLongMap!1401)

(assert (=> b!65196 (= lt!27804 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (ite (and c!8895 c!8887) lt!27565 (extraKeys!1995 newMap!16)) (ite (and c!8895 c!8887) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2031 newMap!16)) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27796 () (_ BitVec 64))

(assert (=> b!65196 (= lt!27796 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27799 () (_ BitVec 64))

(assert (=> b!65196 (= lt!27799 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!65196 (= lt!27808 (addApplyDifferent!46 lt!27804 lt!27796 (minValue!2031 newMap!16) lt!27799))))

(assert (=> b!65196 (= (apply!70 (+!85 lt!27804 (tuple2!2089 lt!27796 (minValue!2031 newMap!16))) lt!27799) (apply!70 lt!27804 lt!27799))))

(declare-fun bm!5343 () Bool)

(assert (=> bm!5343 (= call!5344 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (ite (and c!8895 c!8887) lt!27565 (extraKeys!1995 newMap!16)) (ite (and c!8895 c!8887) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2031 newMap!16)) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun b!65197 () Bool)

(assert (=> b!65197 (= e!42716 e!42714)))

(declare-fun res!35445 () Bool)

(assert (=> b!65197 (= res!35445 call!5343)))

(assert (=> b!65197 (=> (not res!35445) (not e!42714))))

(declare-fun bm!5344 () Bool)

(assert (=> bm!5344 (= call!5342 call!5341)))

(declare-fun b!65198 () Bool)

(declare-fun res!35441 () Bool)

(assert (=> b!65198 (=> (not res!35441) (not e!42713))))

(assert (=> b!65198 (= res!35441 e!42710)))

(declare-fun res!35443 () Bool)

(assert (=> b!65198 (=> res!35443 e!42710)))

(assert (=> b!65198 (= res!35443 (not e!42705))))

(declare-fun res!35447 () Bool)

(assert (=> b!65198 (=> (not res!35447) (not e!42705))))

(assert (=> b!65198 (= res!35447 (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))

(declare-fun b!65199 () Bool)

(declare-fun res!35448 () Bool)

(assert (=> b!65199 (=> (not res!35448) (not e!42713))))

(assert (=> b!65199 (= res!35448 e!42708)))

(declare-fun c!8978 () Bool)

(assert (=> b!65199 (= c!8978 (not (= (bvand (ite (and c!8895 c!8887) lt!27565 (extraKeys!1995 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!65200 () Bool)

(assert (=> b!65200 (= e!42712 call!5342)))

(declare-fun b!65201 () Bool)

(assert (=> b!65201 (= e!42717 e!42711)))

(assert (=> b!65201 (= c!8979 (and (not (= (bvand (ite (and c!8895 c!8887) lt!27565 (extraKeys!1995 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite (and c!8895 c!8887) lt!27565 (extraKeys!1995 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!65202 () Bool)

(assert (=> b!65202 (= e!42708 e!42707)))

(declare-fun res!35440 () Bool)

(assert (=> b!65202 (= res!35440 call!5345)))

(assert (=> b!65202 (=> (not res!35440) (not e!42707))))

(declare-fun b!65203 () Bool)

(assert (=> b!65203 (= e!42711 call!5346)))

(assert (= (and d!13571 c!8977) b!65194))

(assert (= (and d!13571 (not c!8977)) b!65201))

(assert (= (and b!65201 c!8979) b!65203))

(assert (= (and b!65201 (not c!8979)) b!65186))

(assert (= (and b!65186 c!8980) b!65192))

(assert (= (and b!65186 (not c!8980)) b!65200))

(assert (= (or b!65192 b!65200) bm!5344))

(assert (= (or b!65203 bm!5344) bm!5338))

(assert (= (or b!65203 b!65192) bm!5342))

(assert (= (or b!65194 bm!5338) bm!5343))

(assert (= (or b!65194 bm!5342) bm!5340))

(assert (= (and d!13571 res!35446) b!65195))

(assert (= (and d!13571 c!8981) b!65196))

(assert (= (and d!13571 (not c!8981)) b!65187))

(assert (= (and d!13571 res!35442) b!65198))

(assert (= (and b!65198 res!35447) b!65190))

(assert (= (and b!65198 (not res!35443)) b!65184))

(assert (= (and b!65184 res!35444) b!65191))

(assert (= (and b!65198 res!35441) b!65199))

(assert (= (and b!65199 c!8978) b!65202))

(assert (= (and b!65199 (not c!8978)) b!65188))

(assert (= (and b!65202 res!35440) b!65193))

(assert (= (or b!65202 b!65188) bm!5339))

(assert (= (and b!65199 res!35448) b!65183))

(assert (= (and b!65183 c!8982) b!65197))

(assert (= (and b!65183 (not c!8982)) b!65185))

(assert (= (and b!65197 res!35445) b!65189))

(assert (= (or b!65197 b!65185) bm!5341))

(declare-fun b_lambda!2927 () Bool)

(assert (=> (not b_lambda!2927) (not b!65191)))

(assert (=> b!65191 t!4917))

(declare-fun b_and!3993 () Bool)

(assert (= b_and!3989 (and (=> t!4917 result!2515) b_and!3993)))

(assert (=> b!65191 t!4919))

(declare-fun b_and!3995 () Bool)

(assert (= b_and!3991 (and (=> t!4919 result!2517) b_and!3995)))

(assert (=> d!13571 m!59353))

(declare-fun m!59677 () Bool)

(assert (=> bm!5341 m!59677))

(declare-fun m!59679 () Bool)

(assert (=> b!65193 m!59679))

(declare-fun m!59681 () Bool)

(assert (=> bm!5340 m!59681))

(assert (=> b!65190 m!59361))

(assert (=> b!65190 m!59361))

(assert (=> b!65190 m!59363))

(declare-fun m!59683 () Bool)

(assert (=> bm!5339 m!59683))

(assert (=> b!65184 m!59361))

(assert (=> b!65184 m!59361))

(declare-fun m!59685 () Bool)

(assert (=> b!65184 m!59685))

(assert (=> b!65191 m!59369))

(assert (=> b!65191 m!59361))

(assert (=> b!65191 m!59371))

(assert (=> b!65191 m!59369))

(assert (=> b!65191 m!59373))

(assert (=> b!65191 m!59361))

(declare-fun m!59687 () Bool)

(assert (=> b!65191 m!59687))

(assert (=> b!65191 m!59371))

(declare-fun m!59689 () Bool)

(assert (=> b!65196 m!59689))

(declare-fun m!59691 () Bool)

(assert (=> b!65196 m!59691))

(declare-fun m!59693 () Bool)

(assert (=> b!65196 m!59693))

(declare-fun m!59695 () Bool)

(assert (=> b!65196 m!59695))

(assert (=> b!65196 m!59361))

(declare-fun m!59697 () Bool)

(assert (=> b!65196 m!59697))

(declare-fun m!59699 () Bool)

(assert (=> b!65196 m!59699))

(declare-fun m!59701 () Bool)

(assert (=> b!65196 m!59701))

(declare-fun m!59703 () Bool)

(assert (=> b!65196 m!59703))

(assert (=> b!65196 m!59691))

(declare-fun m!59705 () Bool)

(assert (=> b!65196 m!59705))

(declare-fun m!59707 () Bool)

(assert (=> b!65196 m!59707))

(declare-fun m!59709 () Bool)

(assert (=> b!65196 m!59709))

(assert (=> b!65196 m!59697))

(declare-fun m!59711 () Bool)

(assert (=> b!65196 m!59711))

(assert (=> b!65196 m!59709))

(declare-fun m!59713 () Bool)

(assert (=> b!65196 m!59713))

(declare-fun m!59715 () Bool)

(assert (=> b!65196 m!59715))

(assert (=> b!65196 m!59699))

(declare-fun m!59717 () Bool)

(assert (=> b!65196 m!59717))

(declare-fun m!59719 () Bool)

(assert (=> b!65196 m!59719))

(assert (=> bm!5343 m!59703))

(assert (=> b!65195 m!59361))

(assert (=> b!65195 m!59361))

(assert (=> b!65195 m!59363))

(declare-fun m!59721 () Bool)

(assert (=> b!65189 m!59721))

(declare-fun m!59723 () Bool)

(assert (=> b!65194 m!59723))

(assert (=> bm!5272 d!13571))

(assert (=> bm!5263 d!13493))

(declare-fun d!13573 () Bool)

(declare-fun e!42718 () Bool)

(assert (=> d!13573 e!42718))

(declare-fun res!35449 () Bool)

(assert (=> d!13573 (=> (not res!35449) (not e!42718))))

(declare-fun lt!27821 () ListLongMap!1401)

(assert (=> d!13573 (= res!35449 (contains!708 lt!27821 (_1!1054 (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(declare-fun lt!27819 () List!1475)

(assert (=> d!13573 (= lt!27821 (ListLongMap!1402 lt!27819))))

(declare-fun lt!27820 () Unit!1784)

(declare-fun lt!27818 () Unit!1784)

(assert (=> d!13573 (= lt!27820 lt!27818)))

(assert (=> d!13573 (= (getValueByKey!127 lt!27819 (_1!1054 (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))) (Some!132 (_2!1054 (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(assert (=> d!13573 (= lt!27818 (lemmaContainsTupThenGetReturnValue!46 lt!27819 (_1!1054 (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992))))) (_2!1054 (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(assert (=> d!13573 (= lt!27819 (insertStrictlySorted!48 (toList!716 call!5312) (_1!1054 (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992))))) (_2!1054 (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))))))

(assert (=> d!13573 (= (+!85 call!5312 (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992))))) lt!27821)))

(declare-fun b!65204 () Bool)

(declare-fun res!35450 () Bool)

(assert (=> b!65204 (=> (not res!35450) (not e!42718))))

(assert (=> b!65204 (= res!35450 (= (getValueByKey!127 (toList!716 lt!27821) (_1!1054 (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992)))))) (Some!132 (_2!1054 (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992))))))))))

(declare-fun b!65205 () Bool)

(assert (=> b!65205 (= e!42718 (contains!710 (toList!716 lt!27821) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 (v!2447 (underlying!240 thiss!992))))))))

(assert (= (and d!13573 res!35449) b!65204))

(assert (= (and b!65204 res!35450) b!65205))

(declare-fun m!59725 () Bool)

(assert (=> d!13573 m!59725))

(declare-fun m!59727 () Bool)

(assert (=> d!13573 m!59727))

(declare-fun m!59729 () Bool)

(assert (=> d!13573 m!59729))

(declare-fun m!59731 () Bool)

(assert (=> d!13573 m!59731))

(declare-fun m!59733 () Bool)

(assert (=> b!65204 m!59733))

(declare-fun m!59735 () Bool)

(assert (=> b!65205 m!59735))

(assert (=> b!64975 d!13573))

(declare-fun d!13575 () Bool)

(assert (=> d!13575 (isDefined!81 (getValueByKey!127 (toList!716 lt!27448) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-fun lt!27824 () Unit!1784)

(declare-fun choose!366 (List!1475 (_ BitVec 64)) Unit!1784)

(assert (=> d!13575 (= lt!27824 (choose!366 (toList!716 lt!27448) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-fun e!42721 () Bool)

(assert (=> d!13575 e!42721))

(declare-fun res!35453 () Bool)

(assert (=> d!13575 (=> (not res!35453) (not e!42721))))

(declare-fun isStrictlySorted!283 (List!1475) Bool)

(assert (=> d!13575 (= res!35453 (isStrictlySorted!283 (toList!716 lt!27448)))))

(assert (=> d!13575 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!80 (toList!716 lt!27448) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)) lt!27824)))

(declare-fun b!65208 () Bool)

(assert (=> b!65208 (= e!42721 (containsKey!131 (toList!716 lt!27448) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(assert (= (and d!13575 res!35453) b!65208))

(assert (=> d!13575 m!59087))

(assert (=> d!13575 m!59191))

(assert (=> d!13575 m!59191))

(assert (=> d!13575 m!59193))

(assert (=> d!13575 m!59087))

(declare-fun m!59737 () Bool)

(assert (=> d!13575 m!59737))

(declare-fun m!59739 () Bool)

(assert (=> d!13575 m!59739))

(assert (=> b!65208 m!59087))

(assert (=> b!65208 m!59187))

(assert (=> b!64752 d!13575))

(declare-fun d!13577 () Bool)

(declare-fun isEmpty!310 (Option!133) Bool)

(assert (=> d!13577 (= (isDefined!81 (getValueByKey!127 (toList!716 lt!27448) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355))) (not (isEmpty!310 (getValueByKey!127 (toList!716 lt!27448) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))))

(declare-fun bs!2818 () Bool)

(assert (= bs!2818 d!13577))

(assert (=> bs!2818 m!59191))

(declare-fun m!59741 () Bool)

(assert (=> bs!2818 m!59741))

(assert (=> b!64752 d!13577))

(declare-fun d!13579 () Bool)

(declare-fun c!8987 () Bool)

(assert (=> d!13579 (= c!8987 (and ((_ is Cons!1471) (toList!716 lt!27448)) (= (_1!1054 (h!2055 (toList!716 lt!27448))) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355))))))

(declare-fun e!42726 () Option!133)

(assert (=> d!13579 (= (getValueByKey!127 (toList!716 lt!27448) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)) e!42726)))

(declare-fun b!65217 () Bool)

(assert (=> b!65217 (= e!42726 (Some!132 (_2!1054 (h!2055 (toList!716 lt!27448)))))))

(declare-fun b!65220 () Bool)

(declare-fun e!42727 () Option!133)

(assert (=> b!65220 (= e!42727 None!131)))

(declare-fun b!65218 () Bool)

(assert (=> b!65218 (= e!42726 e!42727)))

(declare-fun c!8988 () Bool)

(assert (=> b!65218 (= c!8988 (and ((_ is Cons!1471) (toList!716 lt!27448)) (not (= (_1!1054 (h!2055 (toList!716 lt!27448))) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))))

(declare-fun b!65219 () Bool)

(assert (=> b!65219 (= e!42727 (getValueByKey!127 (t!4909 (toList!716 lt!27448)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(assert (= (and d!13579 c!8987) b!65217))

(assert (= (and d!13579 (not c!8987)) b!65218))

(assert (= (and b!65218 c!8988) b!65219))

(assert (= (and b!65218 (not c!8988)) b!65220))

(assert (=> b!65219 m!59087))

(declare-fun m!59743 () Bool)

(assert (=> b!65219 m!59743))

(assert (=> b!64752 d!13579))

(declare-fun b!65221 () Bool)

(declare-fun e!42736 () Bool)

(declare-fun e!42739 () Bool)

(assert (=> b!65221 (= e!42736 e!42739)))

(declare-fun c!8994 () Bool)

(assert (=> b!65221 (= c!8994 (not (= (bvand (extraKeys!1995 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!65222 () Bool)

(declare-fun e!42733 () Bool)

(declare-fun e!42738 () Bool)

(assert (=> b!65222 (= e!42733 e!42738)))

(declare-fun res!35458 () Bool)

(assert (=> b!65222 (=> (not res!35458) (not e!42738))))

(declare-fun lt!27841 () ListLongMap!1401)

(assert (=> b!65222 (= res!35458 (contains!708 lt!27841 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!65222 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))

(declare-fun d!13581 () Bool)

(assert (=> d!13581 e!42736))

(declare-fun res!35456 () Bool)

(assert (=> d!13581 (=> (not res!35456) (not e!42736))))

(assert (=> d!13581 (= res!35456 (or (bvsge #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))))

(declare-fun lt!27843 () ListLongMap!1401)

(assert (=> d!13581 (= lt!27841 lt!27843)))

(declare-fun lt!27831 () Unit!1784)

(declare-fun e!42732 () Unit!1784)

(assert (=> d!13581 (= lt!27831 e!42732)))

(declare-fun c!8993 () Bool)

(declare-fun e!42729 () Bool)

(assert (=> d!13581 (= c!8993 e!42729)))

(declare-fun res!35460 () Bool)

(assert (=> d!13581 (=> (not res!35460) (not e!42729))))

(assert (=> d!13581 (= res!35460 (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))

(declare-fun e!42740 () ListLongMap!1401)

(assert (=> d!13581 (= lt!27843 e!42740)))

(declare-fun c!8989 () Bool)

(assert (=> d!13581 (= c!8989 (and (not (= (bvand (extraKeys!1995 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1995 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!13581 (validMask!0 (mask!6044 newMap!16))))

(assert (=> d!13581 (= (getCurrentListMap!412 (_keys!3760 newMap!16) (ite c!8890 (_values!2105 newMap!16) (array!3791 (store (arr!1811 (_values!2105 newMap!16)) (index!3092 lt!27573) (ValueCellFull!870 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2045 (_values!2105 newMap!16)))) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)) lt!27841)))

(declare-fun b!65223 () Bool)

(declare-fun call!5350 () Bool)

(assert (=> b!65223 (= e!42739 (not call!5350))))

(declare-fun b!65224 () Bool)

(declare-fun c!8992 () Bool)

(assert (=> b!65224 (= c!8992 (and (not (= (bvand (extraKeys!1995 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1995 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!42734 () ListLongMap!1401)

(declare-fun e!42735 () ListLongMap!1401)

(assert (=> b!65224 (= e!42734 e!42735)))

(declare-fun b!65225 () Bool)

(declare-fun Unit!1803 () Unit!1784)

(assert (=> b!65225 (= e!42732 Unit!1803)))

(declare-fun b!65226 () Bool)

(declare-fun e!42731 () Bool)

(declare-fun call!5352 () Bool)

(assert (=> b!65226 (= e!42731 (not call!5352))))

(declare-fun b!65227 () Bool)

(declare-fun e!42737 () Bool)

(assert (=> b!65227 (= e!42737 (= (apply!70 lt!27841 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2031 newMap!16)))))

(declare-fun bm!5345 () Bool)

(declare-fun call!5348 () ListLongMap!1401)

(declare-fun call!5351 () ListLongMap!1401)

(assert (=> bm!5345 (= call!5348 call!5351)))

(declare-fun bm!5346 () Bool)

(assert (=> bm!5346 (= call!5352 (contains!708 lt!27841 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!65228 () Bool)

(declare-fun e!42728 () Bool)

(assert (=> b!65228 (= e!42728 (validKeyInArray!0 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun call!5349 () ListLongMap!1401)

(declare-fun c!8991 () Bool)

(declare-fun call!5354 () ListLongMap!1401)

(declare-fun bm!5347 () Bool)

(assert (=> bm!5347 (= call!5354 (+!85 (ite c!8989 call!5351 (ite c!8991 call!5348 call!5349)) (ite (or c!8989 c!8991) (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2031 newMap!16)) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 newMap!16)))))))

(declare-fun b!65229 () Bool)

(assert (=> b!65229 (= e!42738 (= (apply!70 lt!27841 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)) (get!1110 (select (arr!1811 (ite c!8890 (_values!2105 newMap!16) (array!3791 (store (arr!1811 (_values!2105 newMap!16)) (index!3092 lt!27573) (ValueCellFull!870 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2045 (_values!2105 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!320 (defaultEntry!2122 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!65229 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2045 (ite c!8890 (_values!2105 newMap!16) (array!3791 (store (arr!1811 (_values!2105 newMap!16)) (index!3092 lt!27573) (ValueCellFull!870 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2045 (_values!2105 newMap!16)))))))))

(assert (=> b!65229 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))

(declare-fun b!65230 () Bool)

(declare-fun call!5353 () ListLongMap!1401)

(assert (=> b!65230 (= e!42735 call!5353)))

(declare-fun b!65231 () Bool)

(declare-fun e!42730 () Bool)

(assert (=> b!65231 (= e!42730 (= (apply!70 lt!27841 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2031 newMap!16)))))

(declare-fun bm!5348 () Bool)

(assert (=> bm!5348 (= call!5350 (contains!708 lt!27841 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!5349 () Bool)

(assert (=> bm!5349 (= call!5353 call!5354)))

(declare-fun b!65232 () Bool)

(assert (=> b!65232 (= e!42740 (+!85 call!5354 (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2031 newMap!16))))))

(declare-fun b!65233 () Bool)

(assert (=> b!65233 (= e!42729 (validKeyInArray!0 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!65234 () Bool)

(declare-fun lt!27837 () Unit!1784)

(assert (=> b!65234 (= e!42732 lt!27837)))

(declare-fun lt!27840 () ListLongMap!1401)

(assert (=> b!65234 (= lt!27840 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (ite c!8890 (_values!2105 newMap!16) (array!3791 (store (arr!1811 (_values!2105 newMap!16)) (index!3092 lt!27573) (ValueCellFull!870 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2045 (_values!2105 newMap!16)))) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27839 () (_ BitVec 64))

(assert (=> b!65234 (= lt!27839 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27830 () (_ BitVec 64))

(assert (=> b!65234 (= lt!27830 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27835 () Unit!1784)

(assert (=> b!65234 (= lt!27835 (addStillContains!46 lt!27840 lt!27839 (zeroValue!2031 newMap!16) lt!27830))))

(assert (=> b!65234 (contains!708 (+!85 lt!27840 (tuple2!2089 lt!27839 (zeroValue!2031 newMap!16))) lt!27830)))

(declare-fun lt!27845 () Unit!1784)

(assert (=> b!65234 (= lt!27845 lt!27835)))

(declare-fun lt!27842 () ListLongMap!1401)

(assert (=> b!65234 (= lt!27842 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (ite c!8890 (_values!2105 newMap!16) (array!3791 (store (arr!1811 (_values!2105 newMap!16)) (index!3092 lt!27573) (ValueCellFull!870 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2045 (_values!2105 newMap!16)))) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27844 () (_ BitVec 64))

(assert (=> b!65234 (= lt!27844 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27836 () (_ BitVec 64))

(assert (=> b!65234 (= lt!27836 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27826 () Unit!1784)

(assert (=> b!65234 (= lt!27826 (addApplyDifferent!46 lt!27842 lt!27844 (minValue!2031 newMap!16) lt!27836))))

(assert (=> b!65234 (= (apply!70 (+!85 lt!27842 (tuple2!2089 lt!27844 (minValue!2031 newMap!16))) lt!27836) (apply!70 lt!27842 lt!27836))))

(declare-fun lt!27829 () Unit!1784)

(assert (=> b!65234 (= lt!27829 lt!27826)))

(declare-fun lt!27838 () ListLongMap!1401)

(assert (=> b!65234 (= lt!27838 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (ite c!8890 (_values!2105 newMap!16) (array!3791 (store (arr!1811 (_values!2105 newMap!16)) (index!3092 lt!27573) (ValueCellFull!870 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2045 (_values!2105 newMap!16)))) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27846 () (_ BitVec 64))

(assert (=> b!65234 (= lt!27846 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27827 () (_ BitVec 64))

(assert (=> b!65234 (= lt!27827 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27834 () Unit!1784)

(assert (=> b!65234 (= lt!27834 (addApplyDifferent!46 lt!27838 lt!27846 (zeroValue!2031 newMap!16) lt!27827))))

(assert (=> b!65234 (= (apply!70 (+!85 lt!27838 (tuple2!2089 lt!27846 (zeroValue!2031 newMap!16))) lt!27827) (apply!70 lt!27838 lt!27827))))

(declare-fun lt!27832 () Unit!1784)

(assert (=> b!65234 (= lt!27832 lt!27834)))

(declare-fun lt!27833 () ListLongMap!1401)

(assert (=> b!65234 (= lt!27833 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (ite c!8890 (_values!2105 newMap!16) (array!3791 (store (arr!1811 (_values!2105 newMap!16)) (index!3092 lt!27573) (ValueCellFull!870 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2045 (_values!2105 newMap!16)))) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27825 () (_ BitVec 64))

(assert (=> b!65234 (= lt!27825 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27828 () (_ BitVec 64))

(assert (=> b!65234 (= lt!27828 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!65234 (= lt!27837 (addApplyDifferent!46 lt!27833 lt!27825 (minValue!2031 newMap!16) lt!27828))))

(assert (=> b!65234 (= (apply!70 (+!85 lt!27833 (tuple2!2089 lt!27825 (minValue!2031 newMap!16))) lt!27828) (apply!70 lt!27833 lt!27828))))

(declare-fun bm!5350 () Bool)

(assert (=> bm!5350 (= call!5351 (getCurrentListMapNoExtraKeys!48 (_keys!3760 newMap!16) (ite c!8890 (_values!2105 newMap!16) (array!3791 (store (arr!1811 (_values!2105 newMap!16)) (index!3092 lt!27573) (ValueCellFull!870 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2045 (_values!2105 newMap!16)))) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun b!65235 () Bool)

(assert (=> b!65235 (= e!42739 e!42737)))

(declare-fun res!35459 () Bool)

(assert (=> b!65235 (= res!35459 call!5350)))

(assert (=> b!65235 (=> (not res!35459) (not e!42737))))

(declare-fun bm!5351 () Bool)

(assert (=> bm!5351 (= call!5349 call!5348)))

(declare-fun b!65236 () Bool)

(declare-fun res!35455 () Bool)

(assert (=> b!65236 (=> (not res!35455) (not e!42736))))

(assert (=> b!65236 (= res!35455 e!42733)))

(declare-fun res!35457 () Bool)

(assert (=> b!65236 (=> res!35457 e!42733)))

(assert (=> b!65236 (= res!35457 (not e!42728))))

(declare-fun res!35461 () Bool)

(assert (=> b!65236 (=> (not res!35461) (not e!42728))))

(assert (=> b!65236 (= res!35461 (bvslt #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))

(declare-fun b!65237 () Bool)

(declare-fun res!35462 () Bool)

(assert (=> b!65237 (=> (not res!35462) (not e!42736))))

(assert (=> b!65237 (= res!35462 e!42731)))

(declare-fun c!8990 () Bool)

(assert (=> b!65237 (= c!8990 (not (= (bvand (extraKeys!1995 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!65238 () Bool)

(assert (=> b!65238 (= e!42735 call!5349)))

(declare-fun b!65239 () Bool)

(assert (=> b!65239 (= e!42740 e!42734)))

(assert (=> b!65239 (= c!8991 (and (not (= (bvand (extraKeys!1995 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1995 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!65240 () Bool)

(assert (=> b!65240 (= e!42731 e!42730)))

(declare-fun res!35454 () Bool)

(assert (=> b!65240 (= res!35454 call!5352)))

(assert (=> b!65240 (=> (not res!35454) (not e!42730))))

(declare-fun b!65241 () Bool)

(assert (=> b!65241 (= e!42734 call!5353)))

(assert (= (and d!13581 c!8989) b!65232))

(assert (= (and d!13581 (not c!8989)) b!65239))

(assert (= (and b!65239 c!8991) b!65241))

(assert (= (and b!65239 (not c!8991)) b!65224))

(assert (= (and b!65224 c!8992) b!65230))

(assert (= (and b!65224 (not c!8992)) b!65238))

(assert (= (or b!65230 b!65238) bm!5351))

(assert (= (or b!65241 bm!5351) bm!5345))

(assert (= (or b!65241 b!65230) bm!5349))

(assert (= (or b!65232 bm!5345) bm!5350))

(assert (= (or b!65232 bm!5349) bm!5347))

(assert (= (and d!13581 res!35460) b!65233))

(assert (= (and d!13581 c!8993) b!65234))

(assert (= (and d!13581 (not c!8993)) b!65225))

(assert (= (and d!13581 res!35456) b!65236))

(assert (= (and b!65236 res!35461) b!65228))

(assert (= (and b!65236 (not res!35457)) b!65222))

(assert (= (and b!65222 res!35458) b!65229))

(assert (= (and b!65236 res!35455) b!65237))

(assert (= (and b!65237 c!8990) b!65240))

(assert (= (and b!65237 (not c!8990)) b!65226))

(assert (= (and b!65240 res!35454) b!65231))

(assert (= (or b!65240 b!65226) bm!5346))

(assert (= (and b!65237 res!35462) b!65221))

(assert (= (and b!65221 c!8994) b!65235))

(assert (= (and b!65221 (not c!8994)) b!65223))

(assert (= (and b!65235 res!35459) b!65227))

(assert (= (or b!65235 b!65223) bm!5348))

(declare-fun b_lambda!2929 () Bool)

(assert (=> (not b_lambda!2929) (not b!65229)))

(assert (=> b!65229 t!4917))

(declare-fun b_and!3997 () Bool)

(assert (= b_and!3993 (and (=> t!4917 result!2515) b_and!3997)))

(assert (=> b!65229 t!4919))

(declare-fun b_and!3999 () Bool)

(assert (= b_and!3995 (and (=> t!4919 result!2517) b_and!3999)))

(assert (=> d!13581 m!59353))

(declare-fun m!59745 () Bool)

(assert (=> bm!5348 m!59745))

(declare-fun m!59747 () Bool)

(assert (=> b!65231 m!59747))

(declare-fun m!59749 () Bool)

(assert (=> bm!5347 m!59749))

(assert (=> b!65228 m!59361))

(assert (=> b!65228 m!59361))

(assert (=> b!65228 m!59363))

(declare-fun m!59751 () Bool)

(assert (=> bm!5346 m!59751))

(assert (=> b!65222 m!59361))

(assert (=> b!65222 m!59361))

(declare-fun m!59753 () Bool)

(assert (=> b!65222 m!59753))

(assert (=> b!65229 m!59369))

(assert (=> b!65229 m!59361))

(declare-fun m!59755 () Bool)

(assert (=> b!65229 m!59755))

(assert (=> b!65229 m!59369))

(declare-fun m!59757 () Bool)

(assert (=> b!65229 m!59757))

(assert (=> b!65229 m!59361))

(declare-fun m!59759 () Bool)

(assert (=> b!65229 m!59759))

(assert (=> b!65229 m!59755))

(declare-fun m!59761 () Bool)

(assert (=> b!65234 m!59761))

(declare-fun m!59763 () Bool)

(assert (=> b!65234 m!59763))

(declare-fun m!59765 () Bool)

(assert (=> b!65234 m!59765))

(declare-fun m!59767 () Bool)

(assert (=> b!65234 m!59767))

(assert (=> b!65234 m!59361))

(declare-fun m!59769 () Bool)

(assert (=> b!65234 m!59769))

(declare-fun m!59771 () Bool)

(assert (=> b!65234 m!59771))

(declare-fun m!59773 () Bool)

(assert (=> b!65234 m!59773))

(declare-fun m!59775 () Bool)

(assert (=> b!65234 m!59775))

(assert (=> b!65234 m!59763))

(declare-fun m!59777 () Bool)

(assert (=> b!65234 m!59777))

(declare-fun m!59779 () Bool)

(assert (=> b!65234 m!59779))

(declare-fun m!59781 () Bool)

(assert (=> b!65234 m!59781))

(assert (=> b!65234 m!59769))

(declare-fun m!59783 () Bool)

(assert (=> b!65234 m!59783))

(assert (=> b!65234 m!59781))

(declare-fun m!59785 () Bool)

(assert (=> b!65234 m!59785))

(declare-fun m!59787 () Bool)

(assert (=> b!65234 m!59787))

(assert (=> b!65234 m!59771))

(declare-fun m!59789 () Bool)

(assert (=> b!65234 m!59789))

(declare-fun m!59791 () Bool)

(assert (=> b!65234 m!59791))

(assert (=> bm!5350 m!59775))

(assert (=> b!65233 m!59361))

(assert (=> b!65233 m!59361))

(assert (=> b!65233 m!59363))

(declare-fun m!59793 () Bool)

(assert (=> b!65227 m!59793))

(declare-fun m!59795 () Bool)

(assert (=> b!65232 m!59795))

(assert (=> bm!5262 d!13581))

(declare-fun d!13583 () Bool)

(declare-fun res!35463 () Bool)

(declare-fun e!42741 () Bool)

(assert (=> d!13583 (=> (not res!35463) (not e!42741))))

(assert (=> d!13583 (= res!35463 (simpleValid!45 (v!2447 (underlying!240 thiss!992))))))

(assert (=> d!13583 (= (valid!270 (v!2447 (underlying!240 thiss!992))) e!42741)))

(declare-fun b!65242 () Bool)

(declare-fun res!35464 () Bool)

(assert (=> b!65242 (=> (not res!35464) (not e!42741))))

(assert (=> b!65242 (= res!35464 (= (arrayCountValidKeys!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000000 (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))) (_size!373 (v!2447 (underlying!240 thiss!992)))))))

(declare-fun b!65243 () Bool)

(declare-fun res!35465 () Bool)

(assert (=> b!65243 (=> (not res!35465) (not e!42741))))

(assert (=> b!65243 (= res!35465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992)))))))

(declare-fun b!65244 () Bool)

(assert (=> b!65244 (= e!42741 (arrayNoDuplicates!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000000 Nil!1473))))

(assert (= (and d!13583 res!35463) b!65242))

(assert (= (and b!65242 res!35464) b!65243))

(assert (= (and b!65243 res!35465) b!65244))

(declare-fun m!59797 () Bool)

(assert (=> d!13583 m!59797))

(declare-fun m!59799 () Bool)

(assert (=> b!65242 m!59799))

(assert (=> b!65243 m!59105))

(assert (=> b!65244 m!59109))

(assert (=> d!13473 d!13583))

(declare-fun d!13585 () Bool)

(declare-fun e!42744 () Bool)

(assert (=> d!13585 e!42744))

(declare-fun res!35468 () Bool)

(assert (=> d!13585 (=> (not res!35468) (not e!42744))))

(assert (=> d!13585 (= res!35468 (and (bvsge (index!3092 lt!27573) #b00000000000000000000000000000000) (bvslt (index!3092 lt!27573) (size!2044 (_keys!3760 newMap!16)))))))

(declare-fun lt!27849 () Unit!1784)

(declare-fun choose!367 (array!3788 array!3790 (_ BitVec 32) (_ BitVec 32) V!2883 V!2883 (_ BitVec 32) Int) Unit!1784)

(assert (=> d!13585 (= lt!27849 (choose!367 (_keys!3760 newMap!16) lt!27562 (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (index!3092 lt!27573) (defaultEntry!2122 newMap!16)))))

(assert (=> d!13585 (validMask!0 (mask!6044 newMap!16))))

(assert (=> d!13585 (= (lemmaValidKeyInArrayIsInListMap!77 (_keys!3760 newMap!16) lt!27562 (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (index!3092 lt!27573) (defaultEntry!2122 newMap!16)) lt!27849)))

(declare-fun b!65247 () Bool)

(assert (=> b!65247 (= e!42744 (contains!708 (getCurrentListMap!412 (_keys!3760 newMap!16) lt!27562 (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)) (select (arr!1810 (_keys!3760 newMap!16)) (index!3092 lt!27573))))))

(assert (= (and d!13585 res!35468) b!65247))

(declare-fun m!59801 () Bool)

(assert (=> d!13585 m!59801))

(assert (=> d!13585 m!59353))

(declare-fun m!59803 () Bool)

(assert (=> b!65247 m!59803))

(assert (=> b!65247 m!59219))

(assert (=> b!65247 m!59803))

(assert (=> b!65247 m!59219))

(declare-fun m!59805 () Bool)

(assert (=> b!65247 m!59805))

(assert (=> b!64850 d!13585))

(declare-fun d!13587 () Bool)

(declare-fun e!42747 () Bool)

(assert (=> d!13587 e!42747))

(declare-fun res!35471 () Bool)

(assert (=> d!13587 (=> (not res!35471) (not e!42747))))

(assert (=> d!13587 (= res!35471 (and (bvsge (index!3092 lt!27573) #b00000000000000000000000000000000) (bvslt (index!3092 lt!27573) (size!2045 (_values!2105 newMap!16)))))))

(declare-fun lt!27852 () Unit!1784)

(declare-fun choose!368 (array!3788 array!3790 (_ BitVec 32) (_ BitVec 32) V!2883 V!2883 (_ BitVec 32) (_ BitVec 64) V!2883 Int) Unit!1784)

(assert (=> d!13587 (= lt!27852 (choose!368 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (index!3092 lt!27573) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2122 newMap!16)))))

(assert (=> d!13587 (validMask!0 (mask!6044 newMap!16))))

(assert (=> d!13587 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!19 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (index!3092 lt!27573) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2122 newMap!16)) lt!27852)))

(declare-fun b!65250 () Bool)

(assert (=> b!65250 (= e!42747 (= (+!85 (getCurrentListMap!412 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)) (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!412 (_keys!3760 newMap!16) (array!3791 (store (arr!1811 (_values!2105 newMap!16)) (index!3092 lt!27573) (ValueCellFull!870 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2045 (_values!2105 newMap!16))) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16))))))

(assert (= (and d!13587 res!35471) b!65250))

(assert (=> d!13587 m!59087))

(assert (=> d!13587 m!59121))

(declare-fun m!59807 () Bool)

(assert (=> d!13587 m!59807))

(assert (=> d!13587 m!59353))

(assert (=> b!65250 m!59285))

(assert (=> b!65250 m!59285))

(declare-fun m!59809 () Bool)

(assert (=> b!65250 m!59809))

(assert (=> b!65250 m!59207))

(declare-fun m!59811 () Bool)

(assert (=> b!65250 m!59811))

(assert (=> b!64850 d!13587))

(declare-fun d!13589 () Bool)

(declare-fun e!42749 () Bool)

(assert (=> d!13589 e!42749))

(declare-fun res!35472 () Bool)

(assert (=> d!13589 (=> res!35472 e!42749)))

(declare-fun lt!27856 () Bool)

(assert (=> d!13589 (= res!35472 (not lt!27856))))

(declare-fun lt!27853 () Bool)

(assert (=> d!13589 (= lt!27856 lt!27853)))

(declare-fun lt!27855 () Unit!1784)

(declare-fun e!42748 () Unit!1784)

(assert (=> d!13589 (= lt!27855 e!42748)))

(declare-fun c!8995 () Bool)

(assert (=> d!13589 (= c!8995 lt!27853)))

(assert (=> d!13589 (= lt!27853 (containsKey!131 (toList!716 call!5268) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(assert (=> d!13589 (= (contains!708 call!5268 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)) lt!27856)))

(declare-fun b!65251 () Bool)

(declare-fun lt!27854 () Unit!1784)

(assert (=> b!65251 (= e!42748 lt!27854)))

(assert (=> b!65251 (= lt!27854 (lemmaContainsKeyImpliesGetValueByKeyDefined!80 (toList!716 call!5268) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(assert (=> b!65251 (isDefined!81 (getValueByKey!127 (toList!716 call!5268) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-fun b!65252 () Bool)

(declare-fun Unit!1804 () Unit!1784)

(assert (=> b!65252 (= e!42748 Unit!1804)))

(declare-fun b!65253 () Bool)

(assert (=> b!65253 (= e!42749 (isDefined!81 (getValueByKey!127 (toList!716 call!5268) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355))))))

(assert (= (and d!13589 c!8995) b!65251))

(assert (= (and d!13589 (not c!8995)) b!65252))

(assert (= (and d!13589 (not res!35472)) b!65253))

(assert (=> d!13589 m!59087))

(declare-fun m!59813 () Bool)

(assert (=> d!13589 m!59813))

(assert (=> b!65251 m!59087))

(declare-fun m!59815 () Bool)

(assert (=> b!65251 m!59815))

(assert (=> b!65251 m!59087))

(declare-fun m!59817 () Bool)

(assert (=> b!65251 m!59817))

(assert (=> b!65251 m!59817))

(declare-fun m!59819 () Bool)

(assert (=> b!65251 m!59819))

(assert (=> b!65253 m!59087))

(assert (=> b!65253 m!59817))

(assert (=> b!65253 m!59817))

(assert (=> b!65253 m!59819))

(assert (=> b!64850 d!13589))

(declare-fun d!13591 () Bool)

(assert (=> d!13591 (= (apply!70 lt!27645 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1113 (getValueByKey!127 (toList!716 lt!27645) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!2819 () Bool)

(assert (= bs!2819 d!13591))

(assert (=> bs!2819 m!59447))

(assert (=> bs!2819 m!59447))

(declare-fun m!59821 () Bool)

(assert (=> bs!2819 m!59821))

(assert (=> b!64974 d!13591))

(declare-fun d!13593 () Bool)

(assert (=> d!13593 (= (apply!70 lt!27645 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1113 (getValueByKey!127 (toList!716 lt!27645) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!2820 () Bool)

(assert (= bs!2820 d!13593))

(assert (=> bs!2820 m!59269))

(assert (=> bs!2820 m!59493))

(assert (=> bs!2820 m!59493))

(declare-fun m!59823 () Bool)

(assert (=> bs!2820 m!59823))

(assert (=> b!64972 d!13593))

(declare-fun d!13595 () Bool)

(declare-fun c!8996 () Bool)

(assert (=> d!13595 (= c!8996 ((_ is ValueCellFull!870) (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!42750 () V!2883)

(assert (=> d!13595 (= (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!42750)))

(declare-fun b!65254 () Bool)

(assert (=> b!65254 (= e!42750 (get!1111 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!65255 () Bool)

(assert (=> b!65255 (= e!42750 (get!1112 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!13595 c!8996) b!65254))

(assert (= (and d!13595 (not c!8996)) b!65255))

(assert (=> b!65254 m!59299))

(assert (=> b!65254 m!59119))

(declare-fun m!59825 () Bool)

(assert (=> b!65254 m!59825))

(assert (=> b!65255 m!59299))

(assert (=> b!65255 m!59119))

(declare-fun m!59827 () Bool)

(assert (=> b!65255 m!59827))

(assert (=> b!64972 d!13595))

(assert (=> d!13477 d!13481))

(declare-fun d!13597 () Bool)

(assert (=> d!13597 (not (arrayContainsKey!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> d!13597 true))

(declare-fun _$68!43 () Unit!1784)

(assert (=> d!13597 (= (choose!68 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (Cons!1472 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) Nil!1473)) _$68!43)))

(declare-fun bs!2821 () Bool)

(assert (= bs!2821 d!13597))

(assert (=> bs!2821 m!59087))

(assert (=> bs!2821 m!59091))

(assert (=> d!13477 d!13597))

(declare-fun d!13599 () Bool)

(declare-fun e!42751 () Bool)

(assert (=> d!13599 e!42751))

(declare-fun res!35473 () Bool)

(assert (=> d!13599 (=> (not res!35473) (not e!42751))))

(declare-fun lt!27860 () ListLongMap!1401)

(assert (=> d!13599 (= res!35473 (contains!708 lt!27860 (_1!1054 (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!27858 () List!1475)

(assert (=> d!13599 (= lt!27860 (ListLongMap!1402 lt!27858))))

(declare-fun lt!27859 () Unit!1784)

(declare-fun lt!27857 () Unit!1784)

(assert (=> d!13599 (= lt!27859 lt!27857)))

(assert (=> d!13599 (= (getValueByKey!127 lt!27858 (_1!1054 (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!132 (_2!1054 (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!13599 (= lt!27857 (lemmaContainsTupThenGetReturnValue!46 lt!27858 (_1!1054 (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1054 (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!13599 (= lt!27858 (insertStrictlySorted!48 (toList!716 call!5275) (_1!1054 (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1054 (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!13599 (= (+!85 call!5275 (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!27860)))

(declare-fun b!65256 () Bool)

(declare-fun res!35474 () Bool)

(assert (=> b!65256 (=> (not res!35474) (not e!42751))))

(assert (=> b!65256 (= res!35474 (= (getValueByKey!127 (toList!716 lt!27860) (_1!1054 (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!132 (_2!1054 (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!65257 () Bool)

(assert (=> b!65257 (= e!42751 (contains!710 (toList!716 lt!27860) (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!13599 res!35473) b!65256))

(assert (= (and b!65256 res!35474) b!65257))

(declare-fun m!59829 () Bool)

(assert (=> d!13599 m!59829))

(declare-fun m!59831 () Bool)

(assert (=> d!13599 m!59831))

(declare-fun m!59833 () Bool)

(assert (=> d!13599 m!59833))

(declare-fun m!59835 () Bool)

(assert (=> d!13599 m!59835))

(declare-fun m!59837 () Bool)

(assert (=> b!65256 m!59837))

(declare-fun m!59839 () Bool)

(assert (=> b!65257 m!59839))

(assert (=> b!64835 d!13599))

(declare-fun d!13601 () Bool)

(declare-fun e!42753 () Bool)

(assert (=> d!13601 e!42753))

(declare-fun res!35475 () Bool)

(assert (=> d!13601 (=> res!35475 e!42753)))

(declare-fun lt!27864 () Bool)

(assert (=> d!13601 (= res!35475 (not lt!27864))))

(declare-fun lt!27861 () Bool)

(assert (=> d!13601 (= lt!27864 lt!27861)))

(declare-fun lt!27863 () Unit!1784)

(declare-fun e!42752 () Unit!1784)

(assert (=> d!13601 (= lt!27863 e!42752)))

(declare-fun c!8997 () Bool)

(assert (=> d!13601 (= c!8997 lt!27861)))

(assert (=> d!13601 (= lt!27861 (containsKey!131 (toList!716 e!42508) (ite c!8890 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (select (arr!1810 (_keys!3760 newMap!16)) (index!3092 lt!27573)))))))

(assert (=> d!13601 (= (contains!708 e!42508 (ite c!8890 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (select (arr!1810 (_keys!3760 newMap!16)) (index!3092 lt!27573)))) lt!27864)))

(declare-fun b!65258 () Bool)

(declare-fun lt!27862 () Unit!1784)

(assert (=> b!65258 (= e!42752 lt!27862)))

(assert (=> b!65258 (= lt!27862 (lemmaContainsKeyImpliesGetValueByKeyDefined!80 (toList!716 e!42508) (ite c!8890 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (select (arr!1810 (_keys!3760 newMap!16)) (index!3092 lt!27573)))))))

(assert (=> b!65258 (isDefined!81 (getValueByKey!127 (toList!716 e!42508) (ite c!8890 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (select (arr!1810 (_keys!3760 newMap!16)) (index!3092 lt!27573)))))))

(declare-fun b!65259 () Bool)

(declare-fun Unit!1805 () Unit!1784)

(assert (=> b!65259 (= e!42752 Unit!1805)))

(declare-fun b!65260 () Bool)

(assert (=> b!65260 (= e!42753 (isDefined!81 (getValueByKey!127 (toList!716 e!42508) (ite c!8890 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (select (arr!1810 (_keys!3760 newMap!16)) (index!3092 lt!27573))))))))

(assert (= (and d!13601 c!8997) b!65258))

(assert (= (and d!13601 (not c!8997)) b!65259))

(assert (= (and d!13601 (not res!35475)) b!65260))

(declare-fun m!59841 () Bool)

(assert (=> d!13601 m!59841))

(declare-fun m!59843 () Bool)

(assert (=> b!65258 m!59843))

(declare-fun m!59845 () Bool)

(assert (=> b!65258 m!59845))

(assert (=> b!65258 m!59845))

(declare-fun m!59847 () Bool)

(assert (=> b!65258 m!59847))

(assert (=> b!65260 m!59845))

(assert (=> b!65260 m!59845))

(assert (=> b!65260 m!59847))

(assert (=> bm!5269 d!13601))

(declare-fun d!13603 () Bool)

(assert (=> d!13603 (= (validKeyInArray!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!64971 d!13603))

(declare-fun b!65295 () Bool)

(declare-fun res!35500 () Bool)

(declare-fun lt!27940 () SeekEntryResult!241)

(assert (=> b!65295 (= res!35500 (= (select (arr!1810 (_keys!3760 newMap!16)) (index!3094 lt!27940)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!42774 () Bool)

(assert (=> b!65295 (=> (not res!35500) (not e!42774))))

(declare-fun b!65296 () Bool)

(declare-fun e!42772 () Unit!1784)

(declare-fun Unit!1806 () Unit!1784)

(assert (=> b!65296 (= e!42772 Unit!1806)))

(declare-fun lt!27938 () Unit!1784)

(assert (=> b!65296 (= lt!27938 (lemmaInListMapThenSeekEntryOrOpenFindsIt!19 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27930 () SeekEntryResult!241)

(declare-fun call!5364 () SeekEntryResult!241)

(assert (=> b!65296 (= lt!27930 call!5364)))

(declare-fun res!35498 () Bool)

(assert (=> b!65296 (= res!35498 ((_ is Found!241) lt!27930))))

(declare-fun e!42771 () Bool)

(assert (=> b!65296 (=> (not res!35498) (not e!42771))))

(assert (=> b!65296 e!42771))

(declare-fun lt!27945 () Unit!1784)

(assert (=> b!65296 (= lt!27945 lt!27938)))

(assert (=> b!65296 false))

(declare-fun call!5363 () Bool)

(declare-fun bm!5360 () Bool)

(assert (=> bm!5360 (= call!5363 (arrayContainsKey!0 (_keys!3760 newMap!16) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!65297 () Bool)

(assert (=> b!65297 (= e!42774 (not call!5363))))

(declare-fun b!65298 () Bool)

(assert (=> b!65298 (= e!42771 (= (select (arr!1810 (_keys!3760 newMap!16)) (index!3092 lt!27930)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-fun b!65299 () Bool)

(declare-fun res!35496 () Bool)

(declare-fun e!42777 () Bool)

(assert (=> b!65299 (=> (not res!35496) (not e!42777))))

(declare-fun call!5366 () Bool)

(assert (=> b!65299 (= res!35496 call!5366)))

(declare-fun e!42770 () Bool)

(assert (=> b!65299 (= e!42770 e!42777)))

(declare-fun b!65301 () Bool)

(declare-fun res!35502 () Bool)

(assert (=> b!65301 (=> (not res!35502) (not e!42777))))

(assert (=> b!65301 (= res!35502 (= (select (arr!1810 (_keys!3760 newMap!16)) (index!3091 lt!27940)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!65302 () Bool)

(declare-fun e!42775 () Bool)

(assert (=> b!65302 (= e!42775 ((_ is Undefined!241) lt!27940))))

(declare-fun b!65303 () Bool)

(declare-fun e!42776 () Unit!1784)

(declare-fun Unit!1807 () Unit!1784)

(assert (=> b!65303 (= e!42776 Unit!1807)))

(declare-fun b!65304 () Bool)

(declare-fun res!35501 () Bool)

(declare-fun e!42773 () Bool)

(assert (=> b!65304 (=> (not res!35501) (not e!42773))))

(declare-fun lt!27950 () tuple2!2086)

(assert (=> b!65304 (= res!35501 (valid!270 (_2!1053 lt!27950)))))

(declare-fun bm!5361 () Bool)

(declare-fun call!5365 () Bool)

(assert (=> bm!5361 (= call!5366 call!5365)))

(declare-fun b!65305 () Bool)

(assert (=> b!65305 (= e!42775 e!42774)))

(declare-fun res!35499 () Bool)

(assert (=> b!65305 (= res!35499 call!5366)))

(assert (=> b!65305 (=> (not res!35499) (not e!42774))))

(declare-fun b!65306 () Bool)

(declare-fun c!9009 () Bool)

(assert (=> b!65306 (= c!9009 ((_ is MissingVacant!241) lt!27940))))

(assert (=> b!65306 (= e!42770 e!42775)))

(declare-fun bm!5362 () Bool)

(assert (=> bm!5362 (= call!5364 (seekEntryOrOpen!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (_keys!3760 newMap!16) (mask!6044 newMap!16)))))

(declare-fun c!9008 () Bool)

(declare-fun bm!5363 () Bool)

(declare-fun c!9007 () Bool)

(assert (=> bm!5363 (= call!5365 (inRange!0 (ite c!9007 (index!3092 lt!27930) (ite c!9008 (index!3091 lt!27940) (index!3094 lt!27940))) (mask!6044 newMap!16)))))

(declare-fun b!65307 () Bool)

(declare-fun res!35494 () Bool)

(assert (=> b!65307 (=> (not res!35494) (not e!42773))))

(assert (=> b!65307 (= res!35494 (contains!708 (map!1128 (_2!1053 lt!27950)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-fun d!13605 () Bool)

(assert (=> d!13605 e!42773))

(declare-fun res!35497 () Bool)

(assert (=> d!13605 (=> (not res!35497) (not e!42773))))

(assert (=> d!13605 (= res!35497 (_1!1053 lt!27950))))

(assert (=> d!13605 (= lt!27950 (tuple2!2087 true (LongMapFixedSize!649 (defaultEntry!2122 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (bvadd (_size!373 newMap!16) #b00000000000000000000000000000001) (array!3789 (store (arr!1810 (_keys!3760 newMap!16)) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)) (size!2044 (_keys!3760 newMap!16))) (array!3791 (store (arr!1811 (_values!2105 newMap!16)) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573)) (ValueCellFull!870 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2045 (_values!2105 newMap!16))) (_vacant!373 newMap!16))))))

(declare-fun lt!27954 () Unit!1784)

(declare-fun lt!27926 () Unit!1784)

(assert (=> d!13605 (= lt!27954 lt!27926)))

(declare-fun lt!27952 () array!3790)

(declare-fun lt!27953 () array!3788)

(assert (=> d!13605 (contains!708 (getCurrentListMap!412 lt!27953 lt!27952 (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)) (select (store (arr!1810 (_keys!3760 newMap!16)) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573))))))

(assert (=> d!13605 (= lt!27926 (lemmaValidKeyInArrayIsInListMap!77 lt!27953 lt!27952 (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573)) (defaultEntry!2122 newMap!16)))))

(assert (=> d!13605 (= lt!27952 (array!3791 (store (arr!1811 (_values!2105 newMap!16)) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573)) (ValueCellFull!870 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2045 (_values!2105 newMap!16))))))

(assert (=> d!13605 (= lt!27953 (array!3789 (store (arr!1810 (_keys!3760 newMap!16)) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)) (size!2044 (_keys!3760 newMap!16))))))

(declare-fun lt!27935 () Unit!1784)

(declare-fun lt!27929 () Unit!1784)

(assert (=> d!13605 (= lt!27935 lt!27929)))

(declare-fun lt!27933 () array!3788)

(assert (=> d!13605 (= (arrayCountValidKeys!0 lt!27933 (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573)) (bvadd (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!3788 (_ BitVec 32)) Unit!1784)

(assert (=> d!13605 (= lt!27929 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!27933 (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573))))))

(assert (=> d!13605 (= lt!27933 (array!3789 (store (arr!1810 (_keys!3760 newMap!16)) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)) (size!2044 (_keys!3760 newMap!16))))))

(declare-fun lt!27931 () Unit!1784)

(declare-fun lt!27932 () Unit!1784)

(assert (=> d!13605 (= lt!27931 lt!27932)))

(declare-fun lt!27949 () array!3788)

(assert (=> d!13605 (arrayContainsKey!0 lt!27949 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(assert (=> d!13605 (= lt!27932 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!27949 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573))))))

(assert (=> d!13605 (= lt!27949 (array!3789 (store (arr!1810 (_keys!3760 newMap!16)) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)) (size!2044 (_keys!3760 newMap!16))))))

(declare-fun lt!27948 () Unit!1784)

(declare-fun lt!27928 () Unit!1784)

(assert (=> d!13605 (= lt!27948 lt!27928)))

(assert (=> d!13605 (= (+!85 (getCurrentListMap!412 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)) (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!412 (array!3789 (store (arr!1810 (_keys!3760 newMap!16)) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)) (size!2044 (_keys!3760 newMap!16))) (array!3791 (store (arr!1811 (_values!2105 newMap!16)) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573)) (ValueCellFull!870 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2045 (_values!2105 newMap!16))) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!9 (array!3788 array!3790 (_ BitVec 32) (_ BitVec 32) V!2883 V!2883 (_ BitVec 32) (_ BitVec 64) V!2883 Int) Unit!1784)

(assert (=> d!13605 (= lt!27928 (lemmaAddValidKeyToArrayThenAddPairToListMap!9 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27944 () Unit!1784)

(declare-fun lt!27934 () Unit!1784)

(assert (=> d!13605 (= lt!27944 lt!27934)))

(assert (=> d!13605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!3789 (store (arr!1810 (_keys!3760 newMap!16)) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)) (size!2044 (_keys!3760 newMap!16))) (mask!6044 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!3788 (_ BitVec 32) (_ BitVec 32)) Unit!1784)

(assert (=> d!13605 (= lt!27934 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (_keys!3760 newMap!16) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573)) (mask!6044 newMap!16)))))

(declare-fun lt!27925 () Unit!1784)

(declare-fun lt!27943 () Unit!1784)

(assert (=> d!13605 (= lt!27925 lt!27943)))

(assert (=> d!13605 (= (arrayCountValidKeys!0 (array!3789 (store (arr!1810 (_keys!3760 newMap!16)) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)) (size!2044 (_keys!3760 newMap!16))) #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!3760 newMap!16) #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!3788 (_ BitVec 32) (_ BitVec 64)) Unit!1784)

(assert (=> d!13605 (= lt!27943 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!3760 newMap!16) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-fun lt!27941 () Unit!1784)

(declare-fun lt!27946 () Unit!1784)

(assert (=> d!13605 (= lt!27941 lt!27946)))

(declare-fun lt!27947 () (_ BitVec 32))

(declare-fun lt!27939 () List!1476)

(assert (=> d!13605 (arrayNoDuplicates!0 (array!3789 (store (arr!1810 (_keys!3760 newMap!16)) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)) (size!2044 (_keys!3760 newMap!16))) lt!27947 lt!27939)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!3788 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1476) Unit!1784)

(assert (=> d!13605 (= lt!27946 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!3760 newMap!16) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573)) lt!27947 lt!27939))))

(assert (=> d!13605 (= lt!27939 Nil!1473)))

(assert (=> d!13605 (= lt!27947 #b00000000000000000000000000000000)))

(declare-fun lt!27942 () Unit!1784)

(assert (=> d!13605 (= lt!27942 e!42776)))

(declare-fun c!9006 () Bool)

(assert (=> d!13605 (= c!9006 (arrayContainsKey!0 (_keys!3760 newMap!16) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!27936 () Unit!1784)

(assert (=> d!13605 (= lt!27936 e!42772)))

(assert (=> d!13605 (= c!9007 (contains!708 (getCurrentListMap!412 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(assert (=> d!13605 (valid!270 newMap!16)))

(assert (=> d!13605 (= (updateHelperNewKey!19 newMap!16 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!8894 (index!3094 lt!27573) (index!3091 lt!27573))) lt!27950)))

(declare-fun b!65300 () Bool)

(assert (=> b!65300 (= e!42773 (= (map!1128 (_2!1053 lt!27950)) (+!85 (map!1128 newMap!16) (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!65308 () Bool)

(declare-fun lt!27951 () Unit!1784)

(assert (=> b!65308 (= e!42772 lt!27951)))

(assert (=> b!65308 (= lt!27951 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!19 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (defaultEntry!2122 newMap!16)))))

(assert (=> b!65308 (= lt!27940 call!5364)))

(assert (=> b!65308 (= c!9008 ((_ is MissingZero!241) lt!27940))))

(assert (=> b!65308 e!42770))

(declare-fun b!65309 () Bool)

(assert (=> b!65309 (= e!42777 (not call!5363))))

(declare-fun b!65310 () Bool)

(declare-fun Unit!1808 () Unit!1784)

(assert (=> b!65310 (= e!42776 Unit!1808)))

(declare-fun lt!27927 () Unit!1784)

(declare-fun lemmaArrayContainsKeyThenInListMap!9 (array!3788 array!3790 (_ BitVec 32) (_ BitVec 32) V!2883 V!2883 (_ BitVec 64) (_ BitVec 32) Int) Unit!1784)

(assert (=> b!65310 (= lt!27927 (lemmaArrayContainsKeyThenInListMap!9 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(assert (=> b!65310 (contains!708 (getCurrentListMap!412 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355))))

(declare-fun lt!27937 () Unit!1784)

(assert (=> b!65310 (= lt!27937 lt!27927)))

(assert (=> b!65310 false))

(declare-fun b!65311 () Bool)

(declare-fun res!35495 () Bool)

(assert (=> b!65311 (= res!35495 call!5365)))

(assert (=> b!65311 (=> (not res!35495) (not e!42771))))

(assert (= (and d!13605 c!9007) b!65296))

(assert (= (and d!13605 (not c!9007)) b!65308))

(assert (= (and b!65296 res!35498) b!65311))

(assert (= (and b!65311 res!35495) b!65298))

(assert (= (and b!65308 c!9008) b!65299))

(assert (= (and b!65308 (not c!9008)) b!65306))

(assert (= (and b!65299 res!35496) b!65301))

(assert (= (and b!65301 res!35502) b!65309))

(assert (= (and b!65306 c!9009) b!65305))

(assert (= (and b!65306 (not c!9009)) b!65302))

(assert (= (and b!65305 res!35499) b!65295))

(assert (= (and b!65295 res!35500) b!65297))

(assert (= (or b!65299 b!65305) bm!5361))

(assert (= (or b!65309 b!65297) bm!5360))

(assert (= (or b!65311 bm!5361) bm!5363))

(assert (= (or b!65296 b!65308) bm!5362))

(assert (= (and d!13605 c!9006) b!65310))

(assert (= (and d!13605 (not c!9006)) b!65303))

(assert (= (and d!13605 res!35497) b!65304))

(assert (= (and b!65304 res!35501) b!65307))

(assert (= (and b!65307 res!35494) b!65300))

(declare-fun m!59849 () Bool)

(assert (=> b!65295 m!59849))

(declare-fun m!59851 () Bool)

(assert (=> b!65307 m!59851))

(assert (=> b!65307 m!59851))

(assert (=> b!65307 m!59087))

(declare-fun m!59853 () Bool)

(assert (=> b!65307 m!59853))

(declare-fun m!59855 () Bool)

(assert (=> b!65298 m!59855))

(declare-fun m!59857 () Bool)

(assert (=> b!65304 m!59857))

(assert (=> b!65300 m!59851))

(assert (=> b!65300 m!59113))

(assert (=> b!65300 m!59113))

(declare-fun m!59859 () Bool)

(assert (=> b!65300 m!59859))

(declare-fun m!59861 () Bool)

(assert (=> b!65301 m!59861))

(assert (=> b!65296 m!59087))

(assert (=> b!65296 m!59247))

(declare-fun m!59863 () Bool)

(assert (=> d!13605 m!59863))

(assert (=> d!13605 m!59285))

(assert (=> d!13605 m!59087))

(declare-fun m!59865 () Bool)

(assert (=> d!13605 m!59865))

(assert (=> d!13605 m!59259))

(declare-fun m!59867 () Bool)

(assert (=> d!13605 m!59867))

(assert (=> d!13605 m!59087))

(assert (=> d!13605 m!59245))

(assert (=> d!13605 m!59103))

(declare-fun m!59869 () Bool)

(assert (=> d!13605 m!59869))

(declare-fun m!59871 () Bool)

(assert (=> d!13605 m!59871))

(declare-fun m!59873 () Bool)

(assert (=> d!13605 m!59873))

(declare-fun m!59875 () Bool)

(assert (=> d!13605 m!59875))

(declare-fun m!59877 () Bool)

(assert (=> d!13605 m!59877))

(assert (=> d!13605 m!59087))

(declare-fun m!59879 () Bool)

(assert (=> d!13605 m!59879))

(declare-fun m!59881 () Bool)

(assert (=> d!13605 m!59881))

(assert (=> d!13605 m!59875))

(assert (=> d!13605 m!59877))

(declare-fun m!59883 () Bool)

(assert (=> d!13605 m!59883))

(assert (=> d!13605 m!59087))

(declare-fun m!59885 () Bool)

(assert (=> d!13605 m!59885))

(declare-fun m!59887 () Bool)

(assert (=> d!13605 m!59887))

(assert (=> d!13605 m!59087))

(assert (=> d!13605 m!59121))

(declare-fun m!59889 () Bool)

(assert (=> d!13605 m!59889))

(declare-fun m!59891 () Bool)

(assert (=> d!13605 m!59891))

(assert (=> d!13605 m!59087))

(declare-fun m!59893 () Bool)

(assert (=> d!13605 m!59893))

(assert (=> d!13605 m!59285))

(assert (=> d!13605 m!59285))

(assert (=> d!13605 m!59809))

(declare-fun m!59895 () Bool)

(assert (=> d!13605 m!59895))

(assert (=> d!13605 m!59087))

(declare-fun m!59897 () Bool)

(assert (=> d!13605 m!59897))

(assert (=> d!13605 m!59087))

(declare-fun m!59899 () Bool)

(assert (=> d!13605 m!59899))

(assert (=> bm!5360 m!59087))

(assert (=> bm!5360 m!59245))

(assert (=> bm!5362 m!59087))

(assert (=> bm!5362 m!59215))

(assert (=> b!65310 m!59087))

(declare-fun m!59901 () Bool)

(assert (=> b!65310 m!59901))

(assert (=> b!65310 m!59285))

(assert (=> b!65310 m!59285))

(assert (=> b!65310 m!59087))

(assert (=> b!65310 m!59865))

(assert (=> b!65308 m!59087))

(assert (=> b!65308 m!59195))

(declare-fun m!59903 () Bool)

(assert (=> bm!5363 m!59903))

(assert (=> bm!5276 d!13605))

(declare-fun d!13607 () Bool)

(declare-fun e!42778 () Bool)

(assert (=> d!13607 e!42778))

(declare-fun res!35503 () Bool)

(assert (=> d!13607 (=> (not res!35503) (not e!42778))))

(declare-fun lt!27958 () ListLongMap!1401)

(assert (=> d!13607 (= res!35503 (contains!708 lt!27958 (_1!1054 (ite c!8895 (ite c!8887 (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun lt!27956 () List!1475)

(assert (=> d!13607 (= lt!27958 (ListLongMap!1402 lt!27956))))

(declare-fun lt!27957 () Unit!1784)

(declare-fun lt!27955 () Unit!1784)

(assert (=> d!13607 (= lt!27957 lt!27955)))

(assert (=> d!13607 (= (getValueByKey!127 lt!27956 (_1!1054 (ite c!8895 (ite c!8887 (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!132 (_2!1054 (ite c!8895 (ite c!8887 (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!13607 (= lt!27955 (lemmaContainsTupThenGetReturnValue!46 lt!27956 (_1!1054 (ite c!8895 (ite c!8887 (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1054 (ite c!8895 (ite c!8887 (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!13607 (= lt!27956 (insertStrictlySorted!48 (toList!716 (ite c!8895 (ite c!8887 call!5267 call!5286) call!5268)) (_1!1054 (ite c!8895 (ite c!8887 (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1054 (ite c!8895 (ite c!8887 (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!13607 (= (+!85 (ite c!8895 (ite c!8887 call!5267 call!5286) call!5268) (ite c!8895 (ite c!8887 (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!27958)))

(declare-fun b!65312 () Bool)

(declare-fun res!35504 () Bool)

(assert (=> b!65312 (=> (not res!35504) (not e!42778))))

(assert (=> b!65312 (= res!35504 (= (getValueByKey!127 (toList!716 lt!27958) (_1!1054 (ite c!8895 (ite c!8887 (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!132 (_2!1054 (ite c!8895 (ite c!8887 (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!65313 () Bool)

(assert (=> b!65313 (= e!42778 (contains!710 (toList!716 lt!27958) (ite c!8895 (ite c!8887 (tuple2!2089 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2089 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!13607 res!35503) b!65312))

(assert (= (and b!65312 res!35504) b!65313))

(declare-fun m!59905 () Bool)

(assert (=> d!13607 m!59905))

(declare-fun m!59907 () Bool)

(assert (=> d!13607 m!59907))

(declare-fun m!59909 () Bool)

(assert (=> d!13607 m!59909))

(declare-fun m!59911 () Bool)

(assert (=> d!13607 m!59911))

(declare-fun m!59913 () Bool)

(assert (=> b!65312 m!59913))

(declare-fun m!59915 () Bool)

(assert (=> b!65313 m!59915))

(assert (=> bm!5284 d!13607))

(declare-fun d!13609 () Bool)

(assert (=> d!13609 (= (map!1128 (_2!1053 lt!27570)) (getCurrentListMap!412 (_keys!3760 (_2!1053 lt!27570)) (_values!2105 (_2!1053 lt!27570)) (mask!6044 (_2!1053 lt!27570)) (extraKeys!1995 (_2!1053 lt!27570)) (zeroValue!2031 (_2!1053 lt!27570)) (minValue!2031 (_2!1053 lt!27570)) #b00000000000000000000000000000000 (defaultEntry!2122 (_2!1053 lt!27570))))))

(declare-fun bs!2822 () Bool)

(assert (= bs!2822 d!13609))

(declare-fun m!59917 () Bool)

(assert (=> bs!2822 m!59917))

(assert (=> bm!5283 d!13609))

(declare-fun d!13611 () Bool)

(assert (=> d!13611 (arrayContainsKey!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) lt!27480 #b00000000000000000000000000000000)))

(declare-fun lt!27961 () Unit!1784)

(declare-fun choose!13 (array!3788 (_ BitVec 64) (_ BitVec 32)) Unit!1784)

(assert (=> d!13611 (= lt!27961 (choose!13 (_keys!3760 (v!2447 (underlying!240 thiss!992))) lt!27480 #b00000000000000000000000000000000))))

(assert (=> d!13611 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!13611 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) lt!27480 #b00000000000000000000000000000000) lt!27961)))

(declare-fun bs!2823 () Bool)

(assert (= bs!2823 d!13611))

(assert (=> bs!2823 m!59179))

(declare-fun m!59919 () Bool)

(assert (=> bs!2823 m!59919))

(assert (=> b!64743 d!13611))

(declare-fun d!13613 () Bool)

(declare-fun res!35505 () Bool)

(declare-fun e!42779 () Bool)

(assert (=> d!13613 (=> res!35505 e!42779)))

(assert (=> d!13613 (= res!35505 (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000) lt!27480))))

(assert (=> d!13613 (= (arrayContainsKey!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) lt!27480 #b00000000000000000000000000000000) e!42779)))

(declare-fun b!65314 () Bool)

(declare-fun e!42780 () Bool)

(assert (=> b!65314 (= e!42779 e!42780)))

(declare-fun res!35506 () Bool)

(assert (=> b!65314 (=> (not res!35506) (not e!42780))))

(assert (=> b!65314 (= res!35506 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))))

(declare-fun b!65315 () Bool)

(assert (=> b!65315 (= e!42780 (arrayContainsKey!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) lt!27480 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!13613 (not res!35505)) b!65314))

(assert (= (and b!65314 res!35506) b!65315))

(assert (=> d!13613 m!59175))

(declare-fun m!59921 () Bool)

(assert (=> b!65315 m!59921))

(assert (=> b!64743 d!13613))

(declare-fun b!65316 () Bool)

(declare-fun c!9010 () Bool)

(declare-fun lt!27962 () (_ BitVec 64))

(assert (=> b!65316 (= c!9010 (= lt!27962 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!42783 () SeekEntryResult!241)

(declare-fun e!42782 () SeekEntryResult!241)

(assert (=> b!65316 (= e!42783 e!42782)))

(declare-fun d!13615 () Bool)

(declare-fun lt!27963 () SeekEntryResult!241)

(assert (=> d!13615 (and (or ((_ is Undefined!241) lt!27963) (not ((_ is Found!241) lt!27963)) (and (bvsge (index!3092 lt!27963) #b00000000000000000000000000000000) (bvslt (index!3092 lt!27963) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))) (or ((_ is Undefined!241) lt!27963) ((_ is Found!241) lt!27963) (not ((_ is MissingZero!241) lt!27963)) (and (bvsge (index!3091 lt!27963) #b00000000000000000000000000000000) (bvslt (index!3091 lt!27963) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))) (or ((_ is Undefined!241) lt!27963) ((_ is Found!241) lt!27963) ((_ is MissingZero!241) lt!27963) (not ((_ is MissingVacant!241) lt!27963)) (and (bvsge (index!3094 lt!27963) #b00000000000000000000000000000000) (bvslt (index!3094 lt!27963) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))) (or ((_ is Undefined!241) lt!27963) (ite ((_ is Found!241) lt!27963) (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (index!3092 lt!27963)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!241) lt!27963) (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (index!3091 lt!27963)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!241) lt!27963) (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (index!3094 lt!27963)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!42781 () SeekEntryResult!241)

(assert (=> d!13615 (= lt!27963 e!42781)))

(declare-fun c!9012 () Bool)

(declare-fun lt!27964 () SeekEntryResult!241)

(assert (=> d!13615 (= c!9012 (and ((_ is Intermediate!241) lt!27964) (undefined!1053 lt!27964)))))

(assert (=> d!13615 (= lt!27964 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000) (mask!6044 (v!2447 (underlying!240 thiss!992)))) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000) (_keys!3760 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992)))))))

(assert (=> d!13615 (validMask!0 (mask!6044 (v!2447 (underlying!240 thiss!992))))))

(assert (=> d!13615 (= (seekEntryOrOpen!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000) (_keys!3760 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992)))) lt!27963)))

(declare-fun b!65317 () Bool)

(assert (=> b!65317 (= e!42782 (seekKeyOrZeroReturnVacant!0 (x!10552 lt!27964) (index!3093 lt!27964) (index!3093 lt!27964) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000) (_keys!3760 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992)))))))

(declare-fun b!65318 () Bool)

(assert (=> b!65318 (= e!42782 (MissingZero!241 (index!3093 lt!27964)))))

(declare-fun b!65319 () Bool)

(assert (=> b!65319 (= e!42781 e!42783)))

(assert (=> b!65319 (= lt!27962 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (index!3093 lt!27964)))))

(declare-fun c!9011 () Bool)

(assert (=> b!65319 (= c!9011 (= lt!27962 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!65320 () Bool)

(assert (=> b!65320 (= e!42781 Undefined!241)))

(declare-fun b!65321 () Bool)

(assert (=> b!65321 (= e!42783 (Found!241 (index!3093 lt!27964)))))

(assert (= (and d!13615 c!9012) b!65320))

(assert (= (and d!13615 (not c!9012)) b!65319))

(assert (= (and b!65319 c!9011) b!65321))

(assert (= (and b!65319 (not c!9011)) b!65316))

(assert (= (and b!65316 c!9010) b!65318))

(assert (= (and b!65316 (not c!9010)) b!65317))

(assert (=> d!13615 m!59175))

(declare-fun m!59923 () Bool)

(assert (=> d!13615 m!59923))

(assert (=> d!13615 m!59923))

(assert (=> d!13615 m!59175))

(declare-fun m!59925 () Bool)

(assert (=> d!13615 m!59925))

(declare-fun m!59927 () Bool)

(assert (=> d!13615 m!59927))

(declare-fun m!59929 () Bool)

(assert (=> d!13615 m!59929))

(assert (=> d!13615 m!59101))

(declare-fun m!59931 () Bool)

(assert (=> d!13615 m!59931))

(assert (=> b!65317 m!59175))

(declare-fun m!59933 () Bool)

(assert (=> b!65317 m!59933))

(declare-fun m!59935 () Bool)

(assert (=> b!65319 m!59935))

(assert (=> b!64743 d!13615))

(declare-fun d!13617 () Bool)

(declare-fun e!42786 () Bool)

(assert (=> d!13617 e!42786))

(declare-fun c!9015 () Bool)

(assert (=> d!13617 (= c!9015 (and (not (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!13617 true))

(declare-fun _$29!78 () Unit!1784)

(assert (=> d!13617 (= (choose!361 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (_values!2105 (v!2447 (underlying!240 thiss!992))) (mask!6044 (v!2447 (underlying!240 thiss!992))) (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) (zeroValue!2031 (v!2447 (underlying!240 thiss!992))) (minValue!2031 (v!2447 (underlying!240 thiss!992))) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992)))) _$29!78)))

(declare-fun b!65326 () Bool)

(assert (=> b!65326 (= e!42786 (arrayContainsKey!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!65327 () Bool)

(assert (=> b!65327 (= e!42786 (ite (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1995 (v!2447 (underlying!240 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!13617 c!9015) b!65326))

(assert (= (and d!13617 (not c!9015)) b!65327))

(assert (=> b!65326 m!59087))

(assert (=> b!65326 m!59091))

(assert (=> d!13483 d!13617))

(assert (=> d!13483 d!13459))

(declare-fun b!65328 () Bool)

(declare-fun e!42788 () Bool)

(declare-fun call!5367 () Bool)

(assert (=> b!65328 (= e!42788 call!5367)))

(declare-fun d!13619 () Bool)

(declare-fun res!35507 () Bool)

(declare-fun e!42789 () Bool)

(assert (=> d!13619 (=> res!35507 e!42789)))

(assert (=> d!13619 (= res!35507 (bvsge #b00000000000000000000000000000000 (size!2044 (_keys!3760 newMap!16))))))

(assert (=> d!13619 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3760 newMap!16) (mask!6044 newMap!16)) e!42789)))

(declare-fun b!65329 () Bool)

(declare-fun e!42787 () Bool)

(assert (=> b!65329 (= e!42787 e!42788)))

(declare-fun lt!27965 () (_ BitVec 64))

(assert (=> b!65329 (= lt!27965 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27966 () Unit!1784)

(assert (=> b!65329 (= lt!27966 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3760 newMap!16) lt!27965 #b00000000000000000000000000000000))))

(assert (=> b!65329 (arrayContainsKey!0 (_keys!3760 newMap!16) lt!27965 #b00000000000000000000000000000000)))

(declare-fun lt!27967 () Unit!1784)

(assert (=> b!65329 (= lt!27967 lt!27966)))

(declare-fun res!35508 () Bool)

(assert (=> b!65329 (= res!35508 (= (seekEntryOrOpen!0 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000) (_keys!3760 newMap!16) (mask!6044 newMap!16)) (Found!241 #b00000000000000000000000000000000)))))

(assert (=> b!65329 (=> (not res!35508) (not e!42788))))

(declare-fun b!65330 () Bool)

(assert (=> b!65330 (= e!42789 e!42787)))

(declare-fun c!9016 () Bool)

(assert (=> b!65330 (= c!9016 (validKeyInArray!0 (select (arr!1810 (_keys!3760 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!65331 () Bool)

(assert (=> b!65331 (= e!42787 call!5367)))

(declare-fun bm!5364 () Bool)

(assert (=> bm!5364 (= call!5367 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3760 newMap!16) (mask!6044 newMap!16)))))

(assert (= (and d!13619 (not res!35507)) b!65330))

(assert (= (and b!65330 c!9016) b!65329))

(assert (= (and b!65330 (not c!9016)) b!65331))

(assert (= (and b!65329 res!35508) b!65328))

(assert (= (or b!65328 b!65331) bm!5364))

(assert (=> b!65329 m!59361))

(declare-fun m!59937 () Bool)

(assert (=> b!65329 m!59937))

(declare-fun m!59939 () Bool)

(assert (=> b!65329 m!59939))

(assert (=> b!65329 m!59361))

(declare-fun m!59941 () Bool)

(assert (=> b!65329 m!59941))

(assert (=> b!65330 m!59361))

(assert (=> b!65330 m!59361))

(assert (=> b!65330 m!59363))

(declare-fun m!59943 () Bool)

(assert (=> bm!5364 m!59943))

(assert (=> b!64888 d!13619))

(declare-fun d!13621 () Bool)

(assert (=> d!13621 (= (inRange!0 (ite c!8890 (ite c!8896 (index!3092 lt!27554) (ite c!8884 (index!3091 lt!27567) (index!3094 lt!27567))) (ite c!8889 (index!3092 lt!27563) (ite c!8893 (index!3091 lt!27556) (index!3094 lt!27556)))) (mask!6044 newMap!16)) (and (bvsge (ite c!8890 (ite c!8896 (index!3092 lt!27554) (ite c!8884 (index!3091 lt!27567) (index!3094 lt!27567))) (ite c!8889 (index!3092 lt!27563) (ite c!8893 (index!3091 lt!27556) (index!3094 lt!27556)))) #b00000000000000000000000000000000) (bvslt (ite c!8890 (ite c!8896 (index!3092 lt!27554) (ite c!8884 (index!3091 lt!27567) (index!3094 lt!27567))) (ite c!8889 (index!3092 lt!27563) (ite c!8893 (index!3091 lt!27556) (index!3094 lt!27556)))) (bvadd (mask!6044 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!5265 d!13621))

(declare-fun b!65343 () Bool)

(declare-fun e!42792 () Bool)

(assert (=> b!65343 (= e!42792 (and (bvsge (extraKeys!1995 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!1995 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!373 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun b!65340 () Bool)

(declare-fun res!35518 () Bool)

(assert (=> b!65340 (=> (not res!35518) (not e!42792))))

(assert (=> b!65340 (= res!35518 (and (= (size!2045 (_values!2105 newMap!16)) (bvadd (mask!6044 newMap!16) #b00000000000000000000000000000001)) (= (size!2044 (_keys!3760 newMap!16)) (size!2045 (_values!2105 newMap!16))) (bvsge (_size!373 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!373 newMap!16) (bvadd (mask!6044 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun d!13623 () Bool)

(declare-fun res!35519 () Bool)

(assert (=> d!13623 (=> (not res!35519) (not e!42792))))

(assert (=> d!13623 (= res!35519 (validMask!0 (mask!6044 newMap!16)))))

(assert (=> d!13623 (= (simpleValid!45 newMap!16) e!42792)))

(declare-fun b!65342 () Bool)

(declare-fun res!35520 () Bool)

(assert (=> b!65342 (=> (not res!35520) (not e!42792))))

(declare-fun size!2048 (LongMapFixedSize!648) (_ BitVec 32))

(assert (=> b!65342 (= res!35520 (= (size!2048 newMap!16) (bvadd (_size!373 newMap!16) (bvsdiv (bvadd (extraKeys!1995 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!65341 () Bool)

(declare-fun res!35517 () Bool)

(assert (=> b!65341 (=> (not res!35517) (not e!42792))))

(assert (=> b!65341 (= res!35517 (bvsge (size!2048 newMap!16) (_size!373 newMap!16)))))

(assert (= (and d!13623 res!35519) b!65340))

(assert (= (and b!65340 res!35518) b!65341))

(assert (= (and b!65341 res!35517) b!65342))

(assert (= (and b!65342 res!35520) b!65343))

(assert (=> d!13623 m!59353))

(declare-fun m!59945 () Bool)

(assert (=> b!65342 m!59945))

(assert (=> b!65341 m!59945))

(assert (=> d!13475 d!13623))

(declare-fun b!65344 () Bool)

(declare-fun e!42796 () Bool)

(declare-fun e!42794 () Bool)

(assert (=> b!65344 (= e!42796 e!42794)))

(declare-fun res!35522 () Bool)

(assert (=> b!65344 (=> (not res!35522) (not e!42794))))

(declare-fun e!42793 () Bool)

(assert (=> b!65344 (= res!35522 (not e!42793))))

(declare-fun res!35523 () Bool)

(assert (=> b!65344 (=> (not res!35523) (not e!42793))))

(assert (=> b!65344 (= res!35523 (validKeyInArray!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!65345 () Bool)

(declare-fun e!42795 () Bool)

(declare-fun call!5368 () Bool)

(assert (=> b!65345 (= e!42795 call!5368)))

(declare-fun b!65346 () Bool)

(assert (=> b!65346 (= e!42794 e!42795)))

(declare-fun c!9017 () Bool)

(assert (=> b!65346 (= c!9017 (validKeyInArray!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!65347 () Bool)

(assert (=> b!65347 (= e!42793 (contains!709 (ite c!8906 (Cons!1472 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000) Nil!1473) Nil!1473) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!65348 () Bool)

(assert (=> b!65348 (= e!42795 call!5368)))

(declare-fun d!13625 () Bool)

(declare-fun res!35521 () Bool)

(assert (=> d!13625 (=> res!35521 e!42796)))

(assert (=> d!13625 (= res!35521 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))))

(assert (=> d!13625 (= (arrayNoDuplicates!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!8906 (Cons!1472 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000) Nil!1473) Nil!1473)) e!42796)))

(declare-fun bm!5365 () Bool)

(assert (=> bm!5365 (= call!5368 (arrayNoDuplicates!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!9017 (Cons!1472 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!8906 (Cons!1472 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000) Nil!1473) Nil!1473)) (ite c!8906 (Cons!1472 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000) Nil!1473) Nil!1473))))))

(assert (= (and d!13625 (not res!35521)) b!65344))

(assert (= (and b!65344 res!35523) b!65347))

(assert (= (and b!65344 res!35522) b!65346))

(assert (= (and b!65346 c!9017) b!65348))

(assert (= (and b!65346 (not c!9017)) b!65345))

(assert (= (or b!65348 b!65345) bm!5365))

(assert (=> b!65344 m!59431))

(assert (=> b!65344 m!59431))

(assert (=> b!65344 m!59439))

(assert (=> b!65346 m!59431))

(assert (=> b!65346 m!59431))

(assert (=> b!65346 m!59439))

(assert (=> b!65347 m!59431))

(assert (=> b!65347 m!59431))

(declare-fun m!59947 () Bool)

(assert (=> b!65347 m!59947))

(assert (=> bm!5365 m!59431))

(declare-fun m!59949 () Bool)

(assert (=> bm!5365 m!59949))

(assert (=> bm!5288 d!13625))

(declare-fun d!13627 () Bool)

(declare-fun lt!27970 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!69 (List!1476) (InoxSet (_ BitVec 64)))

(assert (=> d!13627 (= lt!27970 (select (content!69 Nil!1473) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun e!42802 () Bool)

(assert (=> d!13627 (= lt!27970 e!42802)))

(declare-fun res!35528 () Bool)

(assert (=> d!13627 (=> (not res!35528) (not e!42802))))

(assert (=> d!13627 (= res!35528 ((_ is Cons!1472) Nil!1473))))

(assert (=> d!13627 (= (contains!709 Nil!1473 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000)) lt!27970)))

(declare-fun b!65353 () Bool)

(declare-fun e!42801 () Bool)

(assert (=> b!65353 (= e!42802 e!42801)))

(declare-fun res!35529 () Bool)

(assert (=> b!65353 (=> res!35529 e!42801)))

(assert (=> b!65353 (= res!35529 (= (h!2056 Nil!1473) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!65354 () Bool)

(assert (=> b!65354 (= e!42801 (contains!709 (t!4910 Nil!1473) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (= (and d!13627 res!35528) b!65353))

(assert (= (and b!65353 (not res!35529)) b!65354))

(declare-fun m!59951 () Bool)

(assert (=> d!13627 m!59951))

(assert (=> d!13627 m!59175))

(declare-fun m!59953 () Bool)

(assert (=> d!13627 m!59953))

(assert (=> b!65354 m!59175))

(declare-fun m!59955 () Bool)

(assert (=> b!65354 m!59955))

(assert (=> b!64920 d!13627))

(assert (=> bm!5308 d!13547))

(declare-fun d!13629 () Bool)

(declare-fun res!35530 () Bool)

(declare-fun e!42803 () Bool)

(assert (=> d!13629 (=> res!35530 e!42803)))

(assert (=> d!13629 (= res!35530 (= (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(assert (=> d!13629 (= (arrayContainsKey!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) e!42803)))

(declare-fun b!65355 () Bool)

(declare-fun e!42804 () Bool)

(assert (=> b!65355 (= e!42803 e!42804)))

(declare-fun res!35531 () Bool)

(assert (=> b!65355 (=> (not res!35531) (not e!42804))))

(assert (=> b!65355 (= res!35531 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))))

(declare-fun b!65356 () Bool)

(assert (=> b!65356 (= e!42804 (arrayContainsKey!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!13629 (not res!35530)) b!65355))

(assert (= (and b!65355 res!35531) b!65356))

(declare-fun m!59957 () Bool)

(assert (=> d!13629 m!59957))

(assert (=> b!65356 m!59087))

(declare-fun m!59959 () Bool)

(assert (=> b!65356 m!59959))

(assert (=> b!64895 d!13629))

(declare-fun b!65357 () Bool)

(declare-fun e!42808 () Bool)

(declare-fun e!42806 () Bool)

(assert (=> b!65357 (= e!42808 e!42806)))

(declare-fun res!35533 () Bool)

(assert (=> b!65357 (=> (not res!35533) (not e!42806))))

(declare-fun e!42805 () Bool)

(assert (=> b!65357 (= res!35533 (not e!42805))))

(declare-fun res!35534 () Bool)

(assert (=> b!65357 (=> (not res!35534) (not e!42805))))

(assert (=> b!65357 (= res!35534 (validKeyInArray!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!65358 () Bool)

(declare-fun e!42807 () Bool)

(declare-fun call!5369 () Bool)

(assert (=> b!65358 (= e!42807 call!5369)))

(declare-fun b!65359 () Bool)

(assert (=> b!65359 (= e!42806 e!42807)))

(declare-fun c!9018 () Bool)

(assert (=> b!65359 (= c!9018 (validKeyInArray!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!65360 () Bool)

(assert (=> b!65360 (= e!42805 (contains!709 (ite c!8905 (Cons!1472 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) Nil!1473) Nil!1473) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!65361 () Bool)

(assert (=> b!65361 (= e!42807 call!5369)))

(declare-fun d!13631 () Bool)

(declare-fun res!35532 () Bool)

(assert (=> d!13631 (=> res!35532 e!42808)))

(assert (=> d!13631 (= res!35532 (bvsge (bvadd from!355 #b00000000000000000000000000000001) (size!2044 (_keys!3760 (v!2447 (underlying!240 thiss!992))))))))

(assert (=> d!13631 (= (arrayNoDuplicates!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!8905 (Cons!1472 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) Nil!1473) Nil!1473)) e!42808)))

(declare-fun bm!5366 () Bool)

(assert (=> bm!5366 (= call!5369 (arrayNoDuplicates!0 (_keys!3760 (v!2447 (underlying!240 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!9018 (Cons!1472 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001)) (ite c!8905 (Cons!1472 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) Nil!1473) Nil!1473)) (ite c!8905 (Cons!1472 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) Nil!1473) Nil!1473))))))

(assert (= (and d!13631 (not res!35532)) b!65357))

(assert (= (and b!65357 res!35534) b!65360))

(assert (= (and b!65357 res!35533) b!65359))

(assert (= (and b!65359 c!9018) b!65361))

(assert (= (and b!65359 (not c!9018)) b!65358))

(assert (= (or b!65361 b!65358) bm!5366))

(declare-fun m!59961 () Bool)

(assert (=> b!65357 m!59961))

(assert (=> b!65357 m!59961))

(declare-fun m!59963 () Bool)

(assert (=> b!65357 m!59963))

(assert (=> b!65359 m!59961))

(assert (=> b!65359 m!59961))

(assert (=> b!65359 m!59963))

(assert (=> b!65360 m!59961))

(assert (=> b!65360 m!59961))

(declare-fun m!59965 () Bool)

(assert (=> b!65360 m!59965))

(assert (=> bm!5366 m!59961))

(declare-fun m!59967 () Bool)

(assert (=> bm!5366 m!59967))

(assert (=> bm!5287 d!13631))

(declare-fun d!13633 () Bool)

(declare-fun lt!27971 () Bool)

(assert (=> d!13633 (= lt!27971 (select (content!69 Nil!1473) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-fun e!42810 () Bool)

(assert (=> d!13633 (= lt!27971 e!42810)))

(declare-fun res!35535 () Bool)

(assert (=> d!13633 (=> (not res!35535) (not e!42810))))

(assert (=> d!13633 (= res!35535 ((_ is Cons!1472) Nil!1473))))

(assert (=> d!13633 (= (contains!709 Nil!1473 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)) lt!27971)))

(declare-fun b!65362 () Bool)

(declare-fun e!42809 () Bool)

(assert (=> b!65362 (= e!42810 e!42809)))

(declare-fun res!35536 () Bool)

(assert (=> b!65362 (=> res!35536 e!42809)))

(assert (=> b!65362 (= res!35536 (= (h!2056 Nil!1473) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(declare-fun b!65363 () Bool)

(assert (=> b!65363 (= e!42809 (contains!709 (t!4910 Nil!1473) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(assert (= (and d!13633 res!35535) b!65362))

(assert (= (and b!65362 (not res!35536)) b!65363))

(assert (=> d!13633 m!59951))

(assert (=> d!13633 m!59087))

(declare-fun m!59969 () Bool)

(assert (=> d!13633 m!59969))

(assert (=> b!65363 m!59087))

(declare-fun m!59971 () Bool)

(assert (=> b!65363 m!59971))

(assert (=> b!64915 d!13633))

(declare-fun d!13635 () Bool)

(declare-fun e!42813 () Bool)

(assert (=> d!13635 e!42813))

(declare-fun res!35541 () Bool)

(assert (=> d!13635 (=> (not res!35541) (not e!42813))))

(declare-fun lt!27977 () SeekEntryResult!241)

(assert (=> d!13635 (= res!35541 ((_ is Found!241) lt!27977))))

(assert (=> d!13635 (= lt!27977 (seekEntryOrOpen!0 (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (_keys!3760 newMap!16) (mask!6044 newMap!16)))))

(declare-fun lt!27976 () Unit!1784)

(declare-fun choose!369 (array!3788 array!3790 (_ BitVec 32) (_ BitVec 32) V!2883 V!2883 (_ BitVec 64) Int) Unit!1784)

(assert (=> d!13635 (= lt!27976 (choose!369 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (defaultEntry!2122 newMap!16)))))

(assert (=> d!13635 (validMask!0 (mask!6044 newMap!16))))

(assert (=> d!13635 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!19 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355) (defaultEntry!2122 newMap!16)) lt!27976)))

(declare-fun b!65368 () Bool)

(declare-fun res!35542 () Bool)

(assert (=> b!65368 (=> (not res!35542) (not e!42813))))

(assert (=> b!65368 (= res!35542 (inRange!0 (index!3092 lt!27977) (mask!6044 newMap!16)))))

(declare-fun b!65369 () Bool)

(assert (=> b!65369 (= e!42813 (= (select (arr!1810 (_keys!3760 newMap!16)) (index!3092 lt!27977)) (select (arr!1810 (_keys!3760 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(assert (=> b!65369 (and (bvsge (index!3092 lt!27977) #b00000000000000000000000000000000) (bvslt (index!3092 lt!27977) (size!2044 (_keys!3760 newMap!16))))))

(assert (= (and d!13635 res!35541) b!65368))

(assert (= (and b!65368 res!35542) b!65369))

(assert (=> d!13635 m!59087))

(assert (=> d!13635 m!59215))

(assert (=> d!13635 m!59087))

(declare-fun m!59973 () Bool)

(assert (=> d!13635 m!59973))

(assert (=> d!13635 m!59353))

(declare-fun m!59975 () Bool)

(assert (=> b!65368 m!59975))

(declare-fun m!59977 () Bool)

(assert (=> b!65369 m!59977))

(assert (=> bm!5273 d!13635))

(declare-fun d!13637 () Bool)

(assert (=> d!13637 (= (get!1111 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!2446 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355)))))

(assert (=> b!64879 d!13637))

(declare-fun d!13639 () Bool)

(assert (=> d!13639 (= (+!85 (getCurrentListMap!412 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)) (tuple2!2089 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!412 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) lt!27557 (zeroValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2122 newMap!16)))))

(declare-fun lt!27980 () Unit!1784)

(declare-fun choose!370 (array!3788 array!3790 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2883 V!2883 V!2883 Int) Unit!1784)

(assert (=> d!13639 (= lt!27980 (choose!370 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) lt!27557 (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2122 newMap!16)))))

(assert (=> d!13639 (validMask!0 (mask!6044 newMap!16))))

(assert (=> d!13639 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!19 (_keys!3760 newMap!16) (_values!2105 newMap!16) (mask!6044 newMap!16) (extraKeys!1995 newMap!16) lt!27557 (zeroValue!2031 newMap!16) (minValue!2031 newMap!16) (get!1110 (select (arr!1811 (_values!2105 (v!2447 (underlying!240 thiss!992)))) from!355) (dynLambda!320 (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2122 newMap!16)) lt!27980)))

(declare-fun bs!2824 () Bool)

(assert (= bs!2824 d!13639))

(assert (=> bs!2824 m!59353))

(assert (=> bs!2824 m!59285))

(assert (=> bs!2824 m!59121))

(declare-fun m!59979 () Bool)

(assert (=> bs!2824 m!59979))

(assert (=> bs!2824 m!59121))

(declare-fun m!59981 () Bool)

(assert (=> bs!2824 m!59981))

(assert (=> bs!2824 m!59285))

(declare-fun m!59983 () Bool)

(assert (=> bs!2824 m!59983))

(assert (=> b!64840 d!13639))

(assert (=> b!64976 d!13603))

(assert (=> b!64754 d!13577))

(assert (=> b!64754 d!13579))

(declare-fun b!65371 () Bool)

(declare-fun e!42815 () Bool)

(assert (=> b!65371 (= e!42815 tp_is_empty!2427)))

(declare-fun condMapEmpty!3005 () Bool)

(declare-fun mapDefault!3005 () ValueCell!870)

(assert (=> mapNonEmpty!3003 (= condMapEmpty!3005 (= mapRest!3003 ((as const (Array (_ BitVec 32) ValueCell!870)) mapDefault!3005)))))

(declare-fun mapRes!3005 () Bool)

(assert (=> mapNonEmpty!3003 (= tp!8223 (and e!42815 mapRes!3005))))

(declare-fun b!65370 () Bool)

(declare-fun e!42814 () Bool)

(assert (=> b!65370 (= e!42814 tp_is_empty!2427)))

(declare-fun mapIsEmpty!3005 () Bool)

(assert (=> mapIsEmpty!3005 mapRes!3005))

(declare-fun mapNonEmpty!3005 () Bool)

(declare-fun tp!8225 () Bool)

(assert (=> mapNonEmpty!3005 (= mapRes!3005 (and tp!8225 e!42814))))

(declare-fun mapValue!3005 () ValueCell!870)

(declare-fun mapRest!3005 () (Array (_ BitVec 32) ValueCell!870))

(declare-fun mapKey!3005 () (_ BitVec 32))

(assert (=> mapNonEmpty!3005 (= mapRest!3003 (store mapRest!3005 mapKey!3005 mapValue!3005))))

(assert (= (and mapNonEmpty!3003 condMapEmpty!3005) mapIsEmpty!3005))

(assert (= (and mapNonEmpty!3003 (not condMapEmpty!3005)) mapNonEmpty!3005))

(assert (= (and mapNonEmpty!3005 ((_ is ValueCellFull!870) mapValue!3005)) b!65370))

(assert (= (and mapNonEmpty!3003 ((_ is ValueCellFull!870) mapDefault!3005)) b!65371))

(declare-fun m!59985 () Bool)

(assert (=> mapNonEmpty!3005 m!59985))

(declare-fun b!65373 () Bool)

(declare-fun e!42817 () Bool)

(assert (=> b!65373 (= e!42817 tp_is_empty!2427)))

(declare-fun condMapEmpty!3006 () Bool)

(declare-fun mapDefault!3006 () ValueCell!870)

(assert (=> mapNonEmpty!3004 (= condMapEmpty!3006 (= mapRest!3004 ((as const (Array (_ BitVec 32) ValueCell!870)) mapDefault!3006)))))

(declare-fun mapRes!3006 () Bool)

(assert (=> mapNonEmpty!3004 (= tp!8224 (and e!42817 mapRes!3006))))

(declare-fun b!65372 () Bool)

(declare-fun e!42816 () Bool)

(assert (=> b!65372 (= e!42816 tp_is_empty!2427)))

(declare-fun mapIsEmpty!3006 () Bool)

(assert (=> mapIsEmpty!3006 mapRes!3006))

(declare-fun mapNonEmpty!3006 () Bool)

(declare-fun tp!8226 () Bool)

(assert (=> mapNonEmpty!3006 (= mapRes!3006 (and tp!8226 e!42816))))

(declare-fun mapRest!3006 () (Array (_ BitVec 32) ValueCell!870))

(declare-fun mapKey!3006 () (_ BitVec 32))

(declare-fun mapValue!3006 () ValueCell!870)

(assert (=> mapNonEmpty!3006 (= mapRest!3004 (store mapRest!3006 mapKey!3006 mapValue!3006))))

(assert (= (and mapNonEmpty!3004 condMapEmpty!3006) mapIsEmpty!3006))

(assert (= (and mapNonEmpty!3004 (not condMapEmpty!3006)) mapNonEmpty!3006))

(assert (= (and mapNonEmpty!3006 ((_ is ValueCellFull!870) mapValue!3006)) b!65372))

(assert (= (and mapNonEmpty!3004 ((_ is ValueCellFull!870) mapDefault!3006)) b!65373))

(declare-fun m!59987 () Bool)

(assert (=> mapNonEmpty!3006 m!59987))

(declare-fun b_lambda!2931 () Bool)

(assert (= b_lambda!2921 (or (and b!64658 b_free!2021 (= (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) (defaultEntry!2122 newMap!16))) (and b!64664 b_free!2023) b_lambda!2931)))

(declare-fun b_lambda!2933 () Bool)

(assert (= b_lambda!2925 (or (and b!64658 b_free!2021) (and b!64664 b_free!2023 (= (defaultEntry!2122 newMap!16) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))))) b_lambda!2933)))

(declare-fun b_lambda!2935 () Bool)

(assert (= b_lambda!2923 (or (and b!64658 b_free!2021) (and b!64664 b_free!2023 (= (defaultEntry!2122 newMap!16) (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))))) b_lambda!2935)))

(declare-fun b_lambda!2937 () Bool)

(assert (= b_lambda!2927 (or (and b!64658 b_free!2021 (= (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) (defaultEntry!2122 newMap!16))) (and b!64664 b_free!2023) b_lambda!2937)))

(declare-fun b_lambda!2939 () Bool)

(assert (= b_lambda!2929 (or (and b!64658 b_free!2021 (= (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) (defaultEntry!2122 newMap!16))) (and b!64664 b_free!2023) b_lambda!2939)))

(declare-fun b_lambda!2941 () Bool)

(assert (= b_lambda!2919 (or (and b!64658 b_free!2021 (= (defaultEntry!2122 (v!2447 (underlying!240 thiss!992))) (defaultEntry!2122 newMap!16))) (and b!64664 b_free!2023) b_lambda!2941)))

(check-sat (not b!65257) (not b!65112) (not d!13589) (not d!13627) (not bm!5348) (not b!65356) (not d!13513) (not d!13517) (not b!65163) (not b!65347) (not b!65228) (not bm!5360) (not b_lambda!2933) (not b!65253) (not b!65255) (not bm!5364) (not bm!5341) (not b!65158) (not d!13609) (not d!13553) (not b!65051) (not b!65116) (not bm!5337) (not b!65300) (not d!13547) (not d!13615) (not b!65084) (not b!65117) (not b!65027) (not b!65118) (not b!65363) (not b!65250) (not bm!5323) (not bm!5322) (not d!13583) (not bm!5315) (not b!65341) (not d!13555) (not b!65159) (not b!65190) (not bm!5350) (not b!65310) (not b!65313) (not b!65260) (not b!65312) (not b!65304) (not d!13539) (not bm!5343) (not b_next!2021) (not d!13601) (not d!13569) (not b!65326) (not bm!5331) (not bm!5346) (not d!13551) (not d!13515) (not b!65368) (not b!65191) (not b_lambda!2931) (not d!13549) (not b!65357) (not b!65156) (not d!13497) (not d!13567) (not d!13633) (not d!13557) (not b_lambda!2937) (not bm!5363) (not b!65244) (not d!13533) (not b!65251) (not d!13527) (not b!65342) (not b!65029) (not d!13585) (not b!65359) (not b!65079) (not b!65227) (not b!65161) (not b!65360) (not b!65315) (not b!65126) (not d!13543) (not b!65222) (not b!65031) (not b!65023) (not bm!5339) (not b!65208) (not d!13505) (not d!13537) (not b_next!2023) (not bm!5347) (not d!13581) (not d!13559) (not b!65165) tp_is_empty!2427 (not d!13639) (not b!65170) (not b!65354) b_and!3997 (not d!13521) (not d!13501) (not b!65077) (not b!65231) (not b!65006) (not b_lambda!2935) (not d!13587) (not b!64999) (not bm!5340) (not b!65344) (not b!65092) (not bm!5329) (not b!65308) (not b!65111) (not b!65205) (not d!13623) (not d!13611) (not b!65004) (not b!64997) (not b!65162) (not bm!5365) (not b!65113) (not d!13575) (not b!65330) (not b!65008) (not b!65174) (not b_lambda!2939) (not b!65026) (not b!65229) (not b!65196) (not d!13591) (not b!65172) (not b_lambda!2941) (not b!65234) (not b!65243) (not b!65011) (not b!65045) (not b!65232) (not d!13635) (not d!13597) (not b!65009) (not b!65233) (not b_lambda!2913) (not bm!5333) (not b!64995) (not b!65106) (not b!65317) (not d!13605) (not bm!5312) (not d!13571) (not d!13607) (not d!13509) (not b!65258) (not b!65080) (not b!65086) (not d!13573) (not b!65254) (not d!13577) (not b!65168) (not d!13565) (not b!65296) (not b!65194) (not bm!5317) (not b!65166) (not mapNonEmpty!3006) (not bm!5327) (not d!13545) (not b!65204) (not d!13593) (not d!13511) b_and!3999 (not b!65131) (not b!65247) (not b!65130) (not b!65128) (not d!13599) (not b!65115) (not b!65189) (not b!65195) (not bm!5311) (not b!65005) (not d!13541) (not bm!5313) (not b!65242) (not b!65024) (not b!65346) (not bm!5324) (not b!65169) (not b!65307) (not b!65083) (not b!65104) (not bm!5366) (not d!13561) (not b!65219) (not b!65329) (not b!65052) (not b!65256) (not b_lambda!2917) (not b!65193) (not b!65182) (not bm!5362) (not d!13503) (not bm!5330) (not b!65181) (not mapNonEmpty!3005) (not b!65184) (not b!65173) (not b!65050) (not b!65010) (not d!13563))
(check-sat b_and!3997 b_and!3999 (not b_next!2021) (not b_next!2023))
