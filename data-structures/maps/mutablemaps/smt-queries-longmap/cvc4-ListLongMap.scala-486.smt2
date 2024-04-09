; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10530 () Bool)

(assert start!10530)

(declare-fun b!82910 () Bool)

(declare-fun b_free!2229 () Bool)

(declare-fun b_next!2229 () Bool)

(assert (=> b!82910 (= b_free!2229 (not b_next!2229))))

(declare-fun tp!8906 () Bool)

(declare-fun b_and!5045 () Bool)

(assert (=> b!82910 (= tp!8906 b_and!5045)))

(declare-fun b!82899 () Bool)

(declare-fun b_free!2231 () Bool)

(declare-fun b_next!2231 () Bool)

(assert (=> b!82899 (= b_free!2231 (not b_next!2231))))

(declare-fun tp!8903 () Bool)

(declare-fun b_and!5047 () Bool)

(assert (=> b!82899 (= tp!8903 b_and!5047)))

(declare-fun mapNonEmpty!3379 () Bool)

(declare-fun mapRes!3380 () Bool)

(declare-fun tp!8905 () Bool)

(declare-fun e!54150 () Bool)

(assert (=> mapNonEmpty!3379 (= mapRes!3380 (and tp!8905 e!54150))))

(declare-datatypes ((V!3021 0))(
  ( (V!3022 (val!1310 Int)) )
))
(declare-datatypes ((ValueCell!922 0))(
  ( (ValueCellFull!922 (v!2633 V!3021)) (EmptyCell!922) )
))
(declare-fun mapValue!3380 () ValueCell!922)

(declare-datatypes ((array!4018 0))(
  ( (array!4019 (arr!1914 (Array (_ BitVec 32) (_ BitVec 64))) (size!2157 (_ BitVec 32))) )
))
(declare-datatypes ((array!4020 0))(
  ( (array!4021 (arr!1915 (Array (_ BitVec 32) ValueCell!922)) (size!2158 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!752 0))(
  ( (LongMapFixedSize!753 (defaultEntry!2318 Int) (mask!6336 (_ BitVec 32)) (extraKeys!2161 (_ BitVec 32)) (zeroValue!2212 V!3021) (minValue!2212 V!3021) (_size!425 (_ BitVec 32)) (_keys!3986 array!4018) (_values!2301 array!4020) (_vacant!425 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!752)

(declare-fun mapKey!3380 () (_ BitVec 32))

(declare-fun mapRest!3379 () (Array (_ BitVec 32) ValueCell!922))

(assert (=> mapNonEmpty!3379 (= (arr!1915 (_values!2301 newMap!16)) (store mapRest!3379 mapKey!3380 mapValue!3380))))

(declare-fun b!82891 () Bool)

(declare-datatypes ((Unit!2449 0))(
  ( (Unit!2450) )
))
(declare-fun e!54158 () Unit!2449)

(declare-fun Unit!2451 () Unit!2449)

(assert (=> b!82891 (= e!54158 Unit!2451)))

(declare-fun b!82892 () Bool)

(declare-fun e!54156 () Bool)

(declare-fun tp_is_empty!2531 () Bool)

(assert (=> b!82892 (= e!54156 tp_is_empty!2531)))

(declare-fun b!82893 () Bool)

(declare-fun e!54154 () Bool)

(declare-fun e!54151 () Bool)

(assert (=> b!82893 (= e!54154 e!54151)))

(declare-fun res!42932 () Bool)

(assert (=> b!82893 (=> (not res!42932) (not e!54151))))

(declare-datatypes ((tuple2!2224 0))(
  ( (tuple2!2225 (_1!1122 Bool) (_2!1122 LongMapFixedSize!752)) )
))
(declare-fun lt!38810 () tuple2!2224)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!82893 (= res!42932 (and (_1!1122 lt!38810) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!38809 () Unit!2449)

(assert (=> b!82893 (= lt!38809 e!54158)))

(declare-fun c!13180 () Bool)

(declare-datatypes ((Cell!560 0))(
  ( (Cell!561 (v!2634 LongMapFixedSize!752)) )
))
(declare-datatypes ((LongMap!560 0))(
  ( (LongMap!561 (underlying!291 Cell!560)) )
))
(declare-fun thiss!992 () LongMap!560)

(declare-datatypes ((tuple2!2226 0))(
  ( (tuple2!2227 (_1!1123 (_ BitVec 64)) (_2!1123 V!3021)) )
))
(declare-datatypes ((List!1549 0))(
  ( (Nil!1546) (Cons!1545 (h!2135 tuple2!2226) (t!5257 List!1549)) )
))
(declare-datatypes ((ListLongMap!1483 0))(
  ( (ListLongMap!1484 (toList!757 List!1549)) )
))
(declare-fun lt!38814 () ListLongMap!1483)

(declare-fun contains!758 (ListLongMap!1483 (_ BitVec 64)) Bool)

(assert (=> b!82893 (= c!13180 (contains!758 lt!38814 (select (arr!1914 (_keys!3986 (v!2634 (underlying!291 thiss!992)))) from!355)))))

(declare-fun lt!38800 () V!3021)

(declare-fun update!120 (LongMapFixedSize!752 (_ BitVec 64) V!3021) tuple2!2224)

(assert (=> b!82893 (= lt!38810 (update!120 newMap!16 (select (arr!1914 (_keys!3986 (v!2634 (underlying!291 thiss!992)))) from!355) lt!38800))))

(declare-fun b!82894 () Bool)

(declare-fun e!54148 () Bool)

(declare-fun e!54152 () Bool)

(assert (=> b!82894 (= e!54148 e!54152)))

(declare-fun res!42927 () Bool)

(assert (=> b!82894 (=> (not res!42927) (not e!54152))))

(declare-fun lt!38805 () ListLongMap!1483)

(assert (=> b!82894 (= res!42927 (= lt!38805 lt!38814))))

(declare-fun map!1191 (LongMapFixedSize!752) ListLongMap!1483)

(assert (=> b!82894 (= lt!38814 (map!1191 newMap!16))))

(declare-fun getCurrentListMap!441 (array!4018 array!4020 (_ BitVec 32) (_ BitVec 32) V!3021 V!3021 (_ BitVec 32) Int) ListLongMap!1483)

(assert (=> b!82894 (= lt!38805 (getCurrentListMap!441 (_keys!3986 (v!2634 (underlying!291 thiss!992))) (_values!2301 (v!2634 (underlying!291 thiss!992))) (mask!6336 (v!2634 (underlying!291 thiss!992))) (extraKeys!2161 (v!2634 (underlying!291 thiss!992))) (zeroValue!2212 (v!2634 (underlying!291 thiss!992))) (minValue!2212 (v!2634 (underlying!291 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2318 (v!2634 (underlying!291 thiss!992)))))))

(declare-fun b!82895 () Bool)

(declare-fun e!54160 () Bool)

(assert (=> b!82895 (= e!54160 (or (not (= (size!2158 (_values!2301 (v!2634 (underlying!291 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6336 (v!2634 (underlying!291 thiss!992)))))) (not (= (size!2157 (_keys!3986 (v!2634 (underlying!291 thiss!992)))) (size!2158 (_values!2301 (v!2634 (underlying!291 thiss!992)))))) (bvslt (mask!6336 (v!2634 (underlying!291 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!2161 (v!2634 (underlying!291 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun b!82896 () Bool)

(declare-fun e!54146 () Bool)

(declare-fun e!54157 () Bool)

(assert (=> b!82896 (= e!54146 e!54157)))

(declare-fun b!82897 () Bool)

(declare-fun res!42931 () Bool)

(assert (=> b!82897 (=> (not res!42931) (not e!54148))))

(assert (=> b!82897 (= res!42931 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6336 newMap!16)) (_size!425 (v!2634 (underlying!291 thiss!992)))))))

(declare-fun mapIsEmpty!3379 () Bool)

(assert (=> mapIsEmpty!3379 mapRes!3380))

(declare-fun b!82898 () Bool)

(declare-fun e!54155 () Bool)

(assert (=> b!82898 (= e!54155 tp_is_empty!2531)))

(declare-fun mapIsEmpty!3380 () Bool)

(declare-fun mapRes!3379 () Bool)

(assert (=> mapIsEmpty!3380 mapRes!3379))

(declare-fun e!54153 () Bool)

(declare-fun e!54161 () Bool)

(declare-fun array_inv!1145 (array!4018) Bool)

(declare-fun array_inv!1146 (array!4020) Bool)

(assert (=> b!82899 (= e!54153 (and tp!8903 tp_is_empty!2531 (array_inv!1145 (_keys!3986 newMap!16)) (array_inv!1146 (_values!2301 newMap!16)) e!54161))))

(declare-fun mapNonEmpty!3380 () Bool)

(declare-fun tp!8904 () Bool)

(assert (=> mapNonEmpty!3380 (= mapRes!3379 (and tp!8904 e!54155))))

(declare-fun mapValue!3379 () ValueCell!922)

(declare-fun mapKey!3379 () (_ BitVec 32))

(declare-fun mapRest!3380 () (Array (_ BitVec 32) ValueCell!922))

(assert (=> mapNonEmpty!3380 (= (arr!1915 (_values!2301 (v!2634 (underlying!291 thiss!992)))) (store mapRest!3380 mapKey!3379 mapValue!3379))))

(declare-fun b!82900 () Bool)

(declare-fun e!54147 () Bool)

(assert (=> b!82900 (= e!54147 e!54146)))

(declare-fun b!82901 () Bool)

(declare-fun e!54162 () Bool)

(assert (=> b!82901 (= e!54162 tp_is_empty!2531)))

(declare-fun b!82902 () Bool)

(declare-fun e!54149 () Bool)

(assert (=> b!82902 (= e!54149 (and e!54162 mapRes!3379))))

(declare-fun condMapEmpty!3379 () Bool)

(declare-fun mapDefault!3379 () ValueCell!922)

