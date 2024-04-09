; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10196 () Bool)

(assert start!10196)

(declare-fun b!77779 () Bool)

(declare-fun b_free!2185 () Bool)

(declare-fun b_next!2185 () Bool)

(assert (=> b!77779 (= b_free!2185 (not b_next!2185))))

(declare-fun tp!8758 () Bool)

(declare-fun b_and!4777 () Bool)

(assert (=> b!77779 (= tp!8758 b_and!4777)))

(declare-fun b!77792 () Bool)

(declare-fun b_free!2187 () Bool)

(declare-fun b_next!2187 () Bool)

(assert (=> b!77792 (= b_free!2187 (not b_next!2187))))

(declare-fun tp!8756 () Bool)

(declare-fun b_and!4779 () Bool)

(assert (=> b!77792 (= tp!8756 b_and!4779)))

(declare-fun b!77777 () Bool)

(declare-datatypes ((Unit!2260 0))(
  ( (Unit!2261) )
))
(declare-fun e!50862 () Unit!2260)

(declare-fun Unit!2262 () Unit!2260)

(assert (=> b!77777 (= e!50862 Unit!2262)))

(declare-fun lt!35719 () Unit!2260)

(declare-datatypes ((V!2993 0))(
  ( (V!2994 (val!1299 Int)) )
))
(declare-datatypes ((array!3970 0))(
  ( (array!3971 (arr!1892 (Array (_ BitVec 32) (_ BitVec 64))) (size!2133 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!911 0))(
  ( (ValueCellFull!911 (v!2591 V!2993)) (EmptyCell!911) )
))
(declare-datatypes ((array!3972 0))(
  ( (array!3973 (arr!1893 (Array (_ BitVec 32) ValueCell!911)) (size!2134 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!730 0))(
  ( (LongMapFixedSize!731 (defaultEntry!2271 Int) (mask!6267 (_ BitVec 32)) (extraKeys!2122 (_ BitVec 32)) (zeroValue!2169 V!2993) (minValue!2169 V!2993) (_size!414 (_ BitVec 32)) (_keys!3931 array!3970) (_values!2254 array!3972) (_vacant!414 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!538 0))(
  ( (Cell!539 (v!2592 LongMapFixedSize!730)) )
))
(declare-datatypes ((LongMap!538 0))(
  ( (LongMap!539 (underlying!280 Cell!538)) )
))
(declare-fun thiss!992 () LongMap!538)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!63 (array!3970 array!3972 (_ BitVec 32) (_ BitVec 32) V!2993 V!2993 (_ BitVec 64) (_ BitVec 32) Int) Unit!2260)

(assert (=> b!77777 (= lt!35719 (lemmaListMapContainsThenArrayContainsFrom!63 (_keys!3931 (v!2592 (underlying!280 thiss!992))) (_values!2254 (v!2592 (underlying!280 thiss!992))) (mask!6267 (v!2592 (underlying!280 thiss!992))) (extraKeys!2122 (v!2592 (underlying!280 thiss!992))) (zeroValue!2169 (v!2592 (underlying!280 thiss!992))) (minValue!2169 (v!2592 (underlying!280 thiss!992))) (select (arr!1892 (_keys!3931 (v!2592 (underlying!280 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2271 (v!2592 (underlying!280 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3970 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!77777 (arrayContainsKey!0 (_keys!3931 (v!2592 (underlying!280 thiss!992))) (select (arr!1892 (_keys!3931 (v!2592 (underlying!280 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!35727 () Unit!2260)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3970 (_ BitVec 32) (_ BitVec 32)) Unit!2260)

(assert (=> b!77777 (= lt!35727 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3931 (v!2592 (underlying!280 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1531 0))(
  ( (Nil!1528) (Cons!1527 (h!2115 (_ BitVec 64)) (t!5177 List!1531)) )
))
(declare-fun arrayNoDuplicates!0 (array!3970 (_ BitVec 32) List!1531) Bool)

(assert (=> b!77777 (arrayNoDuplicates!0 (_keys!3931 (v!2592 (underlying!280 thiss!992))) from!355 Nil!1528)))

(declare-fun lt!35718 () Unit!2260)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3970 (_ BitVec 32) (_ BitVec 64) List!1531) Unit!2260)

(assert (=> b!77777 (= lt!35718 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3931 (v!2592 (underlying!280 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1892 (_keys!3931 (v!2592 (underlying!280 thiss!992)))) from!355) (Cons!1527 (select (arr!1892 (_keys!3931 (v!2592 (underlying!280 thiss!992)))) from!355) Nil!1528)))))

(assert (=> b!77777 false))

(declare-fun b!77778 () Bool)

(declare-fun e!50866 () Bool)

(declare-fun e!50867 () Bool)

(assert (=> b!77778 (= e!50866 (not e!50867))))

(declare-fun res!40778 () Bool)

(assert (=> b!77778 (=> res!40778 e!50867)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!77778 (= res!40778 (not (validMask!0 (mask!6267 (v!2592 (underlying!280 thiss!992))))))))

(declare-datatypes ((tuple2!2186 0))(
  ( (tuple2!2187 (_1!1103 (_ BitVec 64)) (_2!1103 V!2993)) )
))
(declare-datatypes ((List!1532 0))(
  ( (Nil!1529) (Cons!1528 (h!2116 tuple2!2186) (t!5178 List!1532)) )
))
(declare-datatypes ((ListLongMap!1463 0))(
  ( (ListLongMap!1464 (toList!747 List!1532)) )
))
(declare-fun lt!35731 () ListLongMap!1463)

(declare-fun lt!35733 () tuple2!2186)

(declare-fun lt!35726 () tuple2!2186)

(declare-fun lt!35725 () ListLongMap!1463)

(declare-fun +!108 (ListLongMap!1463 tuple2!2186) ListLongMap!1463)

(assert (=> b!77778 (= (+!108 lt!35731 lt!35733) (+!108 (+!108 lt!35725 lt!35733) lt!35726))))

(assert (=> b!77778 (= lt!35733 (tuple2!2187 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2169 (v!2592 (underlying!280 thiss!992)))))))

(declare-fun lt!35734 () V!2993)

(declare-fun lt!35717 () Unit!2260)

(declare-fun addCommutativeForDiffKeys!27 (ListLongMap!1463 (_ BitVec 64) V!2993 (_ BitVec 64) V!2993) Unit!2260)

(assert (=> b!77778 (= lt!35717 (addCommutativeForDiffKeys!27 lt!35725 (select (arr!1892 (_keys!3931 (v!2592 (underlying!280 thiss!992)))) from!355) lt!35734 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2169 (v!2592 (underlying!280 thiss!992)))))))

(declare-fun lt!35729 () ListLongMap!1463)

(assert (=> b!77778 (= lt!35729 lt!35731)))

(assert (=> b!77778 (= lt!35731 (+!108 lt!35725 lt!35726))))

(declare-fun lt!35724 () ListLongMap!1463)

(declare-fun lt!35730 () tuple2!2186)

(assert (=> b!77778 (= lt!35729 (+!108 lt!35724 lt!35730))))

(declare-fun lt!35723 () ListLongMap!1463)

(assert (=> b!77778 (= lt!35725 (+!108 lt!35723 lt!35730))))

(assert (=> b!77778 (= lt!35730 (tuple2!2187 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2169 (v!2592 (underlying!280 thiss!992)))))))

(assert (=> b!77778 (= lt!35724 (+!108 lt!35723 lt!35726))))

(assert (=> b!77778 (= lt!35726 (tuple2!2187 (select (arr!1892 (_keys!3931 (v!2592 (underlying!280 thiss!992)))) from!355) lt!35734))))

(declare-fun lt!35722 () Unit!2260)

(assert (=> b!77778 (= lt!35722 (addCommutativeForDiffKeys!27 lt!35723 (select (arr!1892 (_keys!3931 (v!2592 (underlying!280 thiss!992)))) from!355) lt!35734 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2169 (v!2592 (underlying!280 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!72 (array!3970 array!3972 (_ BitVec 32) (_ BitVec 32) V!2993 V!2993 (_ BitVec 32) Int) ListLongMap!1463)

(assert (=> b!77778 (= lt!35723 (getCurrentListMapNoExtraKeys!72 (_keys!3931 (v!2592 (underlying!280 thiss!992))) (_values!2254 (v!2592 (underlying!280 thiss!992))) (mask!6267 (v!2592 (underlying!280 thiss!992))) (extraKeys!2122 (v!2592 (underlying!280 thiss!992))) (zeroValue!2169 (v!2592 (underlying!280 thiss!992))) (minValue!2169 (v!2592 (underlying!280 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2271 (v!2592 (underlying!280 thiss!992)))))))

(declare-fun res!40782 () Bool)

(declare-fun e!50863 () Bool)

(assert (=> start!10196 (=> (not res!40782) (not e!50863))))

(declare-fun valid!312 (LongMap!538) Bool)

(assert (=> start!10196 (= res!40782 (valid!312 thiss!992))))

(assert (=> start!10196 e!50863))

(declare-fun e!50861 () Bool)

(assert (=> start!10196 e!50861))

(assert (=> start!10196 true))

(declare-fun e!50865 () Bool)

(assert (=> start!10196 e!50865))

(declare-fun e!50873 () Bool)

(declare-fun tp_is_empty!2509 () Bool)

(declare-fun e!50868 () Bool)

(declare-fun array_inv!1127 (array!3970) Bool)

(declare-fun array_inv!1128 (array!3972) Bool)

(assert (=> b!77779 (= e!50873 (and tp!8758 tp_is_empty!2509 (array_inv!1127 (_keys!3931 (v!2592 (underlying!280 thiss!992)))) (array_inv!1128 (_values!2254 (v!2592 (underlying!280 thiss!992)))) e!50868))))

(declare-fun b!77780 () Bool)

(declare-fun e!50870 () Bool)

(assert (=> b!77780 (= e!50870 e!50873)))

(declare-fun b!77781 () Bool)

(declare-fun e!50872 () Bool)

(assert (=> b!77781 (= e!50872 tp_is_empty!2509)))

(declare-fun b!77782 () Bool)

(assert (=> b!77782 (= e!50867 (= (size!2134 (_values!2254 (v!2592 (underlying!280 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6267 (v!2592 (underlying!280 thiss!992))))))))

(declare-fun mapIsEmpty!3297 () Bool)

(declare-fun mapRes!3298 () Bool)

(assert (=> mapIsEmpty!3297 mapRes!3298))

(declare-fun b!77783 () Bool)

(assert (=> b!77783 (= e!50861 e!50870)))

(declare-fun mapNonEmpty!3297 () Bool)

(declare-fun tp!8755 () Bool)

(declare-fun e!50871 () Bool)

(assert (=> mapNonEmpty!3297 (= mapRes!3298 (and tp!8755 e!50871))))

(declare-fun mapRest!3298 () (Array (_ BitVec 32) ValueCell!911))

(declare-fun mapKey!3297 () (_ BitVec 32))

(declare-fun mapValue!3298 () ValueCell!911)

(declare-fun newMap!16 () LongMapFixedSize!730)

(assert (=> mapNonEmpty!3297 (= (arr!1893 (_values!2254 newMap!16)) (store mapRest!3298 mapKey!3297 mapValue!3298))))

(declare-fun b!77784 () Bool)

(declare-fun e!50869 () Bool)

(declare-fun e!50857 () Bool)

(assert (=> b!77784 (= e!50869 e!50857)))

(declare-fun res!40780 () Bool)

(assert (=> b!77784 (=> (not res!40780) (not e!50857))))

(assert (=> b!77784 (= res!40780 (and (not (= (select (arr!1892 (_keys!3931 (v!2592 (underlying!280 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1892 (_keys!3931 (v!2592 (underlying!280 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1188 (ValueCell!911 V!2993) V!2993)

(declare-fun dynLambda!345 (Int (_ BitVec 64)) V!2993)

(assert (=> b!77784 (= lt!35734 (get!1188 (select (arr!1893 (_values!2254 (v!2592 (underlying!280 thiss!992)))) from!355) (dynLambda!345 (defaultEntry!2271 (v!2592 (underlying!280 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!77785 () Bool)

(declare-fun res!40785 () Bool)

(assert (=> b!77785 (=> (not res!40785) (not e!50863))))

(assert (=> b!77785 (= res!40785 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6267 newMap!16)) (_size!414 (v!2592 (underlying!280 thiss!992)))))))

(declare-fun b!77786 () Bool)

(declare-fun e!50860 () Bool)

(declare-fun mapRes!3297 () Bool)

(assert (=> b!77786 (= e!50868 (and e!50860 mapRes!3297))))

(declare-fun condMapEmpty!3298 () Bool)

(declare-fun mapDefault!3298 () ValueCell!911)

