; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9034 () Bool)

(assert start!9034)

(declare-fun b!63904 () Bool)

(declare-fun b_free!2013 () Bool)

(declare-fun b_next!2013 () Bool)

(assert (=> b!63904 (= b_free!2013 (not b_next!2013))))

(declare-fun tp!8175 () Bool)

(declare-fun b_and!3917 () Bool)

(assert (=> b!63904 (= tp!8175 b_and!3917)))

(declare-fun b!63912 () Bool)

(declare-fun b_free!2015 () Bool)

(declare-fun b_next!2015 () Bool)

(assert (=> b!63912 (= b_free!2015 (not b_next!2015))))

(declare-fun tp!8177 () Bool)

(declare-fun b_and!3919 () Bool)

(assert (=> b!63912 (= tp!8177 b_and!3919)))

(declare-fun e!41928 () Bool)

(declare-datatypes ((V!2877 0))(
  ( (V!2878 (val!1256 Int)) )
))
(declare-datatypes ((array!3778 0))(
  ( (array!3779 (arr!1806 (Array (_ BitVec 32) (_ BitVec 64))) (size!2039 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!868 0))(
  ( (ValueCellFull!868 (v!2436 V!2877)) (EmptyCell!868) )
))
(declare-datatypes ((array!3780 0))(
  ( (array!3781 (arr!1807 (Array (_ BitVec 32) ValueCell!868)) (size!2040 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!644 0))(
  ( (LongMapFixedSize!645 (defaultEntry!2110 Int) (mask!6026 (_ BitVec 32)) (extraKeys!1985 (_ BitVec 32)) (zeroValue!2020 V!2877) (minValue!2020 V!2877) (_size!371 (_ BitVec 32)) (_keys!3746 array!3778) (_values!2093 array!3780) (_vacant!371 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!454 0))(
  ( (Cell!455 (v!2437 LongMapFixedSize!644)) )
))
(declare-datatypes ((LongMap!454 0))(
  ( (LongMap!455 (underlying!238 Cell!454)) )
))
(declare-fun thiss!992 () LongMap!454)

(declare-fun tp_is_empty!2423 () Bool)

(declare-fun e!41926 () Bool)

(declare-fun array_inv!1067 (array!3778) Bool)

(declare-fun array_inv!1068 (array!3780) Bool)

(assert (=> b!63904 (= e!41926 (and tp!8175 tp_is_empty!2423 (array_inv!1067 (_keys!3746 (v!2437 (underlying!238 thiss!992)))) (array_inv!1068 (_values!2093 (v!2437 (underlying!238 thiss!992)))) e!41928))))

(declare-fun res!34895 () Bool)

(declare-fun e!41930 () Bool)

(assert (=> start!9034 (=> (not res!34895) (not e!41930))))

(declare-fun valid!268 (LongMap!454) Bool)

(assert (=> start!9034 (= res!34895 (valid!268 thiss!992))))

(assert (=> start!9034 e!41930))

(declare-fun e!41923 () Bool)

(assert (=> start!9034 e!41923))

(assert (=> start!9034 true))

(declare-fun e!41919 () Bool)

(assert (=> start!9034 e!41919))

(declare-fun b!63905 () Bool)

(declare-fun e!41931 () Bool)

(assert (=> b!63905 (= e!41930 e!41931)))

(declare-fun res!34891 () Bool)

(assert (=> b!63905 (=> (not res!34891) (not e!41931))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!2080 0))(
  ( (tuple2!2081 (_1!1050 (_ BitVec 64)) (_2!1050 V!2877)) )
))
(declare-datatypes ((List!1471 0))(
  ( (Nil!1468) (Cons!1467 (h!2051 tuple2!2080) (t!4893 List!1471)) )
))
(declare-datatypes ((ListLongMap!1397 0))(
  ( (ListLongMap!1398 (toList!714 List!1471)) )
))
(declare-fun lt!26923 () ListLongMap!1397)

(declare-fun lt!26925 () ListLongMap!1397)

(assert (=> b!63905 (= res!34891 (and (= lt!26925 lt!26923) (not (= (select (arr!1806 (_keys!3746 (v!2437 (underlying!238 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1806 (_keys!3746 (v!2437 (underlying!238 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!644)

(declare-fun map!1124 (LongMapFixedSize!644) ListLongMap!1397)

(assert (=> b!63905 (= lt!26923 (map!1124 newMap!16))))

(declare-fun getCurrentListMap!410 (array!3778 array!3780 (_ BitVec 32) (_ BitVec 32) V!2877 V!2877 (_ BitVec 32) Int) ListLongMap!1397)

(assert (=> b!63905 (= lt!26925 (getCurrentListMap!410 (_keys!3746 (v!2437 (underlying!238 thiss!992))) (_values!2093 (v!2437 (underlying!238 thiss!992))) (mask!6026 (v!2437 (underlying!238 thiss!992))) (extraKeys!1985 (v!2437 (underlying!238 thiss!992))) (zeroValue!2020 (v!2437 (underlying!238 thiss!992))) (minValue!2020 (v!2437 (underlying!238 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2110 (v!2437 (underlying!238 thiss!992)))))))

(declare-fun mapIsEmpty!2975 () Bool)

(declare-fun mapRes!2975 () Bool)

(assert (=> mapIsEmpty!2975 mapRes!2975))

(declare-fun b!63906 () Bool)

(declare-fun e!41918 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3778 (_ BitVec 32)) Bool)

(assert (=> b!63906 (= e!41918 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3746 (v!2437 (underlying!238 thiss!992))) (mask!6026 (v!2437 (underlying!238 thiss!992))))))))

(declare-fun b!63907 () Bool)

(declare-fun e!41929 () Bool)

(assert (=> b!63907 (= e!41923 e!41929)))

(declare-fun b!63908 () Bool)

(declare-fun res!34897 () Bool)

(assert (=> b!63908 (=> (not res!34897) (not e!41918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!63908 (= res!34897 (validMask!0 (mask!6026 (v!2437 (underlying!238 thiss!992)))))))

(declare-fun mapIsEmpty!2976 () Bool)

(declare-fun mapRes!2976 () Bool)

(assert (=> mapIsEmpty!2976 mapRes!2976))

(declare-fun b!63909 () Bool)

(declare-fun e!41916 () Bool)

(assert (=> b!63909 (= e!41916 tp_is_empty!2423)))

(declare-fun b!63910 () Bool)

(declare-fun e!41924 () Bool)

(assert (=> b!63910 (= e!41924 tp_is_empty!2423)))

(declare-fun mapNonEmpty!2975 () Bool)

(declare-fun tp!8176 () Bool)

(declare-fun e!41917 () Bool)

(assert (=> mapNonEmpty!2975 (= mapRes!2976 (and tp!8176 e!41917))))

(declare-fun mapKey!2976 () (_ BitVec 32))

(declare-fun mapRest!2975 () (Array (_ BitVec 32) ValueCell!868))

(declare-fun mapValue!2975 () ValueCell!868)

(assert (=> mapNonEmpty!2975 (= (arr!1807 (_values!2093 (v!2437 (underlying!238 thiss!992)))) (store mapRest!2975 mapKey!2976 mapValue!2975))))

(declare-fun b!63911 () Bool)

(declare-fun res!34894 () Bool)

(assert (=> b!63911 (=> (not res!34894) (not e!41918))))

(assert (=> b!63911 (= res!34894 (and (= (size!2040 (_values!2093 (v!2437 (underlying!238 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6026 (v!2437 (underlying!238 thiss!992))))) (= (size!2039 (_keys!3746 (v!2437 (underlying!238 thiss!992)))) (size!2040 (_values!2093 (v!2437 (underlying!238 thiss!992))))) (bvsge (mask!6026 (v!2437 (underlying!238 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1985 (v!2437 (underlying!238 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1985 (v!2437 (underlying!238 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun e!41922 () Bool)

(assert (=> b!63912 (= e!41919 (and tp!8177 tp_is_empty!2423 (array_inv!1067 (_keys!3746 newMap!16)) (array_inv!1068 (_values!2093 newMap!16)) e!41922))))

(declare-fun b!63913 () Bool)

(declare-datatypes ((Unit!1759 0))(
  ( (Unit!1760) )
))
(declare-fun e!41920 () Unit!1759)

(declare-fun Unit!1761 () Unit!1759)

(assert (=> b!63913 (= e!41920 Unit!1761)))

(declare-fun lt!26926 () Unit!1759)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!36 (array!3778 array!3780 (_ BitVec 32) (_ BitVec 32) V!2877 V!2877 (_ BitVec 64) (_ BitVec 32) Int) Unit!1759)

(assert (=> b!63913 (= lt!26926 (lemmaListMapContainsThenArrayContainsFrom!36 (_keys!3746 (v!2437 (underlying!238 thiss!992))) (_values!2093 (v!2437 (underlying!238 thiss!992))) (mask!6026 (v!2437 (underlying!238 thiss!992))) (extraKeys!1985 (v!2437 (underlying!238 thiss!992))) (zeroValue!2020 (v!2437 (underlying!238 thiss!992))) (minValue!2020 (v!2437 (underlying!238 thiss!992))) (select (arr!1806 (_keys!3746 (v!2437 (underlying!238 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2110 (v!2437 (underlying!238 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3778 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!63913 (arrayContainsKey!0 (_keys!3746 (v!2437 (underlying!238 thiss!992))) (select (arr!1806 (_keys!3746 (v!2437 (underlying!238 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!26924 () Unit!1759)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3778 (_ BitVec 32) (_ BitVec 32)) Unit!1759)

(assert (=> b!63913 (= lt!26924 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3746 (v!2437 (underlying!238 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1472 0))(
  ( (Nil!1469) (Cons!1468 (h!2052 (_ BitVec 64)) (t!4894 List!1472)) )
))
(declare-fun arrayNoDuplicates!0 (array!3778 (_ BitVec 32) List!1472) Bool)

(assert (=> b!63913 (arrayNoDuplicates!0 (_keys!3746 (v!2437 (underlying!238 thiss!992))) from!355 Nil!1469)))

(declare-fun lt!26921 () Unit!1759)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3778 (_ BitVec 32) (_ BitVec 64) List!1472) Unit!1759)

(assert (=> b!63913 (= lt!26921 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3746 (v!2437 (underlying!238 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1806 (_keys!3746 (v!2437 (underlying!238 thiss!992)))) from!355) (Cons!1468 (select (arr!1806 (_keys!3746 (v!2437 (underlying!238 thiss!992)))) from!355) Nil!1469)))))

(assert (=> b!63913 false))

(declare-fun b!63914 () Bool)

(declare-fun res!34893 () Bool)

(assert (=> b!63914 (=> (not res!34893) (not e!41930))))

(assert (=> b!63914 (= res!34893 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2039 (_keys!3746 (v!2437 (underlying!238 thiss!992)))))))))

(declare-fun mapNonEmpty!2976 () Bool)

(declare-fun tp!8178 () Bool)

(assert (=> mapNonEmpty!2976 (= mapRes!2975 (and tp!8178 e!41916))))

(declare-fun mapRest!2976 () (Array (_ BitVec 32) ValueCell!868))

(declare-fun mapKey!2975 () (_ BitVec 32))

(declare-fun mapValue!2976 () ValueCell!868)

(assert (=> mapNonEmpty!2976 (= (arr!1807 (_values!2093 newMap!16)) (store mapRest!2976 mapKey!2975 mapValue!2976))))

(declare-fun b!63915 () Bool)

(declare-fun res!34898 () Bool)

(assert (=> b!63915 (=> (not res!34898) (not e!41930))))

(assert (=> b!63915 (= res!34898 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6026 newMap!16)) (_size!371 (v!2437 (underlying!238 thiss!992)))))))

(declare-fun b!63916 () Bool)

(declare-fun Unit!1762 () Unit!1759)

(assert (=> b!63916 (= e!41920 Unit!1762)))

(declare-fun b!63917 () Bool)

(assert (=> b!63917 (= e!41929 e!41926)))

(declare-fun b!63918 () Bool)

(assert (=> b!63918 (= e!41922 (and e!41924 mapRes!2975))))

(declare-fun condMapEmpty!2976 () Bool)

(declare-fun mapDefault!2975 () ValueCell!868)

