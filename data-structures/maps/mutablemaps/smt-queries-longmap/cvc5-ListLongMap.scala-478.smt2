; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9926 () Bool)

(assert start!9926)

(declare-fun b!74931 () Bool)

(declare-fun b_free!2125 () Bool)

(declare-fun b_next!2125 () Bool)

(assert (=> b!74931 (= b_free!2125 (not b_next!2125))))

(declare-fun tp!8559 () Bool)

(declare-fun b_and!4581 () Bool)

(assert (=> b!74931 (= tp!8559 b_and!4581)))

(declare-fun b!74945 () Bool)

(declare-fun b_free!2127 () Bool)

(declare-fun b_next!2127 () Bool)

(assert (=> b!74945 (= b_free!2127 (not b_next!2127))))

(declare-fun tp!8560 () Bool)

(declare-fun b_and!4583 () Bool)

(assert (=> b!74945 (= tp!8560 b_and!4583)))

(declare-fun b!74925 () Bool)

(declare-fun e!48977 () Bool)

(declare-fun tp_is_empty!2479 () Bool)

(assert (=> b!74925 (= e!48977 tp_is_empty!2479)))

(declare-fun mapIsEmpty!3191 () Bool)

(declare-fun mapRes!3191 () Bool)

(assert (=> mapIsEmpty!3191 mapRes!3191))

(declare-fun mapNonEmpty!3191 () Bool)

(declare-fun mapRes!3192 () Bool)

(declare-fun tp!8562 () Bool)

(declare-fun e!48968 () Bool)

(assert (=> mapNonEmpty!3191 (= mapRes!3192 (and tp!8562 e!48968))))

(declare-fun mapKey!3192 () (_ BitVec 32))

(declare-datatypes ((V!2953 0))(
  ( (V!2954 (val!1284 Int)) )
))
(declare-datatypes ((array!3904 0))(
  ( (array!3905 (arr!1862 (Array (_ BitVec 32) (_ BitVec 64))) (size!2101 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!896 0))(
  ( (ValueCellFull!896 (v!2546 V!2953)) (EmptyCell!896) )
))
(declare-datatypes ((array!3906 0))(
  ( (array!3907 (arr!1863 (Array (_ BitVec 32) ValueCell!896)) (size!2102 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!700 0))(
  ( (LongMapFixedSize!701 (defaultEntry!2233 Int) (mask!6210 (_ BitVec 32)) (extraKeys!2088 (_ BitVec 32)) (zeroValue!2133 V!2953) (minValue!2133 V!2953) (_size!399 (_ BitVec 32)) (_keys!3889 array!3904) (_values!2216 array!3906) (_vacant!399 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!510 0))(
  ( (Cell!511 (v!2547 LongMapFixedSize!700)) )
))
(declare-datatypes ((LongMap!510 0))(
  ( (LongMap!511 (underlying!266 Cell!510)) )
))
(declare-fun thiss!992 () LongMap!510)

(declare-fun mapValue!3191 () ValueCell!896)

(declare-fun mapRest!3192 () (Array (_ BitVec 32) ValueCell!896))

(assert (=> mapNonEmpty!3191 (= (arr!1863 (_values!2216 (v!2547 (underlying!266 thiss!992)))) (store mapRest!3192 mapKey!3192 mapValue!3191))))

(declare-fun b!74926 () Bool)

(declare-fun res!39565 () Bool)

(declare-fun e!48974 () Bool)

(assert (=> b!74926 (=> (not res!39565) (not e!48974))))

(declare-fun newMap!16 () LongMapFixedSize!700)

(assert (=> b!74926 (= res!39565 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6210 newMap!16)) (_size!399 (v!2547 (underlying!266 thiss!992)))))))

(declare-fun b!74927 () Bool)

(declare-fun res!39568 () Bool)

(assert (=> b!74927 (=> (not res!39568) (not e!48974))))

(declare-fun valid!294 (LongMapFixedSize!700) Bool)

(assert (=> b!74927 (= res!39568 (valid!294 newMap!16))))

(declare-fun b!74928 () Bool)

(declare-fun e!48961 () Bool)

(assert (=> b!74928 (= e!48974 e!48961)))

(declare-fun res!39563 () Bool)

(assert (=> b!74928 (=> (not res!39563) (not e!48961))))

(declare-datatypes ((tuple2!2152 0))(
  ( (tuple2!2153 (_1!1086 (_ BitVec 64)) (_2!1086 V!2953)) )
))
(declare-datatypes ((List!1511 0))(
  ( (Nil!1508) (Cons!1507 (h!2095 tuple2!2152) (t!5089 List!1511)) )
))
(declare-datatypes ((ListLongMap!1443 0))(
  ( (ListLongMap!1444 (toList!737 List!1511)) )
))
(declare-fun lt!33714 () ListLongMap!1443)

(declare-fun lt!33709 () ListLongMap!1443)

(assert (=> b!74928 (= res!39563 (= lt!33714 lt!33709))))

(declare-fun map!1162 (LongMapFixedSize!700) ListLongMap!1443)

(assert (=> b!74928 (= lt!33709 (map!1162 newMap!16))))

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!428 (array!3904 array!3906 (_ BitVec 32) (_ BitVec 32) V!2953 V!2953 (_ BitVec 32) Int) ListLongMap!1443)

(assert (=> b!74928 (= lt!33714 (getCurrentListMap!428 (_keys!3889 (v!2547 (underlying!266 thiss!992))) (_values!2216 (v!2547 (underlying!266 thiss!992))) (mask!6210 (v!2547 (underlying!266 thiss!992))) (extraKeys!2088 (v!2547 (underlying!266 thiss!992))) (zeroValue!2133 (v!2547 (underlying!266 thiss!992))) (minValue!2133 (v!2547 (underlying!266 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2233 (v!2547 (underlying!266 thiss!992)))))))

(declare-fun res!39564 () Bool)

(assert (=> start!9926 (=> (not res!39564) (not e!48974))))

(declare-fun valid!295 (LongMap!510) Bool)

(assert (=> start!9926 (= res!39564 (valid!295 thiss!992))))

(assert (=> start!9926 e!48974))

(declare-fun e!48960 () Bool)

(assert (=> start!9926 e!48960))

(assert (=> start!9926 true))

(declare-fun e!48966 () Bool)

(assert (=> start!9926 e!48966))

(declare-fun b!74929 () Bool)

(declare-fun e!48972 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3904 (_ BitVec 32)) Bool)

(assert (=> b!74929 (= e!48972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3889 (v!2547 (underlying!266 thiss!992))) (mask!6210 (v!2547 (underlying!266 thiss!992)))))))

(declare-fun b!74930 () Bool)

(declare-fun e!48965 () Bool)

(assert (=> b!74930 (= e!48965 (not e!48972))))

(declare-fun res!39566 () Bool)

(assert (=> b!74930 (=> res!39566 e!48972)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!74930 (= res!39566 (not (validMask!0 (mask!6210 (v!2547 (underlying!266 thiss!992))))))))

(declare-fun lt!33712 () ListLongMap!1443)

(declare-fun lt!33717 () tuple2!2152)

(declare-fun lt!33707 () tuple2!2152)

(declare-fun +!100 (ListLongMap!1443 tuple2!2152) ListLongMap!1443)

(assert (=> b!74930 (= (+!100 (+!100 lt!33712 lt!33717) lt!33707) (+!100 (+!100 lt!33712 lt!33707) lt!33717))))

(assert (=> b!74930 (= lt!33707 (tuple2!2153 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2133 (v!2547 (underlying!266 thiss!992)))))))

(declare-fun lt!33708 () V!2953)

(assert (=> b!74930 (= lt!33717 (tuple2!2153 (select (arr!1862 (_keys!3889 (v!2547 (underlying!266 thiss!992)))) from!355) lt!33708))))

(declare-datatypes ((Unit!2165 0))(
  ( (Unit!2166) )
))
(declare-fun lt!33716 () Unit!2165)

(declare-fun addCommutativeForDiffKeys!19 (ListLongMap!1443 (_ BitVec 64) V!2953 (_ BitVec 64) V!2953) Unit!2165)

(assert (=> b!74930 (= lt!33716 (addCommutativeForDiffKeys!19 lt!33712 (select (arr!1862 (_keys!3889 (v!2547 (underlying!266 thiss!992)))) from!355) lt!33708 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2133 (v!2547 (underlying!266 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!64 (array!3904 array!3906 (_ BitVec 32) (_ BitVec 32) V!2953 V!2953 (_ BitVec 32) Int) ListLongMap!1443)

(assert (=> b!74930 (= lt!33712 (getCurrentListMapNoExtraKeys!64 (_keys!3889 (v!2547 (underlying!266 thiss!992))) (_values!2216 (v!2547 (underlying!266 thiss!992))) (mask!6210 (v!2547 (underlying!266 thiss!992))) (extraKeys!2088 (v!2547 (underlying!266 thiss!992))) (zeroValue!2133 (v!2547 (underlying!266 thiss!992))) (minValue!2133 (v!2547 (underlying!266 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2233 (v!2547 (underlying!266 thiss!992)))))))

(declare-fun e!48969 () Bool)

(declare-fun e!48962 () Bool)

(declare-fun array_inv!1105 (array!3904) Bool)

(declare-fun array_inv!1106 (array!3906) Bool)

(assert (=> b!74931 (= e!48969 (and tp!8559 tp_is_empty!2479 (array_inv!1105 (_keys!3889 (v!2547 (underlying!266 thiss!992)))) (array_inv!1106 (_values!2216 (v!2547 (underlying!266 thiss!992)))) e!48962))))

(declare-fun b!74932 () Bool)

(declare-fun e!48963 () Bool)

(assert (=> b!74932 (= e!48963 tp_is_empty!2479)))

(declare-fun b!74933 () Bool)

(declare-fun e!48973 () Bool)

(assert (=> b!74933 (= e!48961 e!48973)))

(declare-fun res!39569 () Bool)

(assert (=> b!74933 (=> (not res!39569) (not e!48973))))

(assert (=> b!74933 (= res!39569 (and (not (= (select (arr!1862 (_keys!3889 (v!2547 (underlying!266 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1862 (_keys!3889 (v!2547 (underlying!266 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1161 (ValueCell!896 V!2953) V!2953)

(declare-fun dynLambda!336 (Int (_ BitVec 64)) V!2953)

(assert (=> b!74933 (= lt!33708 (get!1161 (select (arr!1863 (_values!2216 (v!2547 (underlying!266 thiss!992)))) from!355) (dynLambda!336 (defaultEntry!2233 (v!2547 (underlying!266 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!3192 () Bool)

(declare-fun tp!8561 () Bool)

(assert (=> mapNonEmpty!3192 (= mapRes!3191 (and tp!8561 e!48963))))

(declare-fun mapRest!3191 () (Array (_ BitVec 32) ValueCell!896))

(declare-fun mapValue!3192 () ValueCell!896)

(declare-fun mapKey!3191 () (_ BitVec 32))

(assert (=> mapNonEmpty!3192 (= (arr!1863 (_values!2216 newMap!16)) (store mapRest!3191 mapKey!3191 mapValue!3192))))

(declare-fun b!74934 () Bool)

(assert (=> b!74934 (= e!48968 tp_is_empty!2479)))

(declare-fun b!74935 () Bool)

(declare-fun e!48975 () Unit!2165)

(declare-fun Unit!2167 () Unit!2165)

(assert (=> b!74935 (= e!48975 Unit!2167)))

(declare-fun b!74936 () Bool)

(declare-fun res!39562 () Bool)

(assert (=> b!74936 (=> (not res!39562) (not e!48974))))

(assert (=> b!74936 (= res!39562 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2101 (_keys!3889 (v!2547 (underlying!266 thiss!992)))))))))

(declare-fun b!74937 () Bool)

(declare-fun Unit!2168 () Unit!2165)

(assert (=> b!74937 (= e!48975 Unit!2168)))

(declare-fun lt!33710 () Unit!2165)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!53 (array!3904 array!3906 (_ BitVec 32) (_ BitVec 32) V!2953 V!2953 (_ BitVec 64) (_ BitVec 32) Int) Unit!2165)

(assert (=> b!74937 (= lt!33710 (lemmaListMapContainsThenArrayContainsFrom!53 (_keys!3889 (v!2547 (underlying!266 thiss!992))) (_values!2216 (v!2547 (underlying!266 thiss!992))) (mask!6210 (v!2547 (underlying!266 thiss!992))) (extraKeys!2088 (v!2547 (underlying!266 thiss!992))) (zeroValue!2133 (v!2547 (underlying!266 thiss!992))) (minValue!2133 (v!2547 (underlying!266 thiss!992))) (select (arr!1862 (_keys!3889 (v!2547 (underlying!266 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2233 (v!2547 (underlying!266 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3904 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!74937 (arrayContainsKey!0 (_keys!3889 (v!2547 (underlying!266 thiss!992))) (select (arr!1862 (_keys!3889 (v!2547 (underlying!266 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!33713 () Unit!2165)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3904 (_ BitVec 32) (_ BitVec 32)) Unit!2165)

(assert (=> b!74937 (= lt!33713 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3889 (v!2547 (underlying!266 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1512 0))(
  ( (Nil!1509) (Cons!1508 (h!2096 (_ BitVec 64)) (t!5090 List!1512)) )
))
(declare-fun arrayNoDuplicates!0 (array!3904 (_ BitVec 32) List!1512) Bool)

(assert (=> b!74937 (arrayNoDuplicates!0 (_keys!3889 (v!2547 (underlying!266 thiss!992))) from!355 Nil!1509)))

(declare-fun lt!33718 () Unit!2165)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3904 (_ BitVec 32) (_ BitVec 64) List!1512) Unit!2165)

(assert (=> b!74937 (= lt!33718 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3889 (v!2547 (underlying!266 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1862 (_keys!3889 (v!2547 (underlying!266 thiss!992)))) from!355) (Cons!1508 (select (arr!1862 (_keys!3889 (v!2547 (underlying!266 thiss!992)))) from!355) Nil!1509)))))

(assert (=> b!74937 false))

(declare-fun b!74938 () Bool)

(declare-fun e!48967 () Bool)

(assert (=> b!74938 (= e!48967 tp_is_empty!2479)))

(declare-fun mapIsEmpty!3192 () Bool)

(assert (=> mapIsEmpty!3192 mapRes!3192))

(declare-fun b!74939 () Bool)

(declare-fun res!39567 () Bool)

(assert (=> b!74939 (=> res!39567 e!48972)))

(assert (=> b!74939 (= res!39567 (or (not (= (size!2102 (_values!2216 (v!2547 (underlying!266 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6210 (v!2547 (underlying!266 thiss!992)))))) (not (= (size!2101 (_keys!3889 (v!2547 (underlying!266 thiss!992)))) (size!2102 (_values!2216 (v!2547 (underlying!266 thiss!992)))))) (bvslt (mask!6210 (v!2547 (underlying!266 thiss!992))) #b00000000000000000000000000000000) (bvslt (extraKeys!2088 (v!2547 (underlying!266 thiss!992))) #b00000000000000000000000000000000) (bvsgt (extraKeys!2088 (v!2547 (underlying!266 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!74940 () Bool)

(declare-fun e!48964 () Bool)

(assert (=> b!74940 (= e!48960 e!48964)))

(declare-fun b!74941 () Bool)

(assert (=> b!74941 (= e!48964 e!48969)))

(declare-fun b!74942 () Bool)

(assert (=> b!74942 (= e!48962 (and e!48967 mapRes!3192))))

(declare-fun condMapEmpty!3192 () Bool)

(declare-fun mapDefault!3192 () ValueCell!896)

