; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8292 () Bool)

(assert start!8292)

(declare-fun b!53544 () Bool)

(declare-fun b_free!1725 () Bool)

(declare-fun b_next!1725 () Bool)

(assert (=> b!53544 (= b_free!1725 (not b_next!1725))))

(declare-fun tp!7277 () Bool)

(declare-fun b_and!3001 () Bool)

(assert (=> b!53544 (= tp!7277 b_and!3001)))

(declare-fun b!53532 () Bool)

(declare-fun b_free!1727 () Bool)

(declare-fun b_next!1727 () Bool)

(assert (=> b!53532 (= b_free!1727 (not b_next!1727))))

(declare-fun tp!7278 () Bool)

(declare-fun b_and!3003 () Bool)

(assert (=> b!53532 (= tp!7278 b_and!3003)))

(declare-fun b!53528 () Bool)

(declare-fun e!34931 () Bool)

(declare-fun e!34922 () Bool)

(assert (=> b!53528 (= e!34931 e!34922)))

(declare-fun res!30338 () Bool)

(assert (=> b!53528 (=> (not res!30338) (not e!34922))))

(declare-datatypes ((V!2685 0))(
  ( (V!2686 (val!1184 Int)) )
))
(declare-datatypes ((array!3480 0))(
  ( (array!3481 (arr!1662 (Array (_ BitVec 32) (_ BitVec 64))) (size!1891 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!796 0))(
  ( (ValueCellFull!796 (v!2252 V!2685)) (EmptyCell!796) )
))
(declare-datatypes ((array!3482 0))(
  ( (array!3483 (arr!1663 (Array (_ BitVec 32) ValueCell!796)) (size!1892 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!500 0))(
  ( (LongMapFixedSize!501 (defaultEntry!1964 Int) (mask!5799 (_ BitVec 32)) (extraKeys!1855 (_ BitVec 32)) (zeroValue!1882 V!2685) (minValue!1882 V!2685) (_size!299 (_ BitVec 32)) (_keys!3584 array!3480) (_values!1947 array!3482) (_vacant!299 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!314 0))(
  ( (Cell!315 (v!2253 LongMapFixedSize!500)) )
))
(declare-datatypes ((LongMap!314 0))(
  ( (LongMap!315 (underlying!168 Cell!314)) )
))
(declare-fun thiss!992 () LongMap!314)

(declare-datatypes ((tuple2!1890 0))(
  ( (tuple2!1891 (_1!955 (_ BitVec 64)) (_2!955 V!2685)) )
))
(declare-datatypes ((List!1378 0))(
  ( (Nil!1375) (Cons!1374 (h!1954 tuple2!1890) (t!4480 List!1378)) )
))
(declare-datatypes ((ListLongMap!1295 0))(
  ( (ListLongMap!1296 (toList!663 List!1378)) )
))
(declare-fun lt!21484 () ListLongMap!1295)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!634 (ListLongMap!1295 (_ BitVec 64)) Bool)

(assert (=> b!53528 (= res!30338 (contains!634 lt!21484 (select (arr!1662 (_keys!3584 (v!2253 (underlying!168 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!500)

(declare-datatypes ((tuple2!1892 0))(
  ( (tuple2!1893 (_1!956 Bool) (_2!956 LongMapFixedSize!500)) )
))
(declare-fun lt!21485 () tuple2!1892)

(declare-fun update!47 (LongMapFixedSize!500 (_ BitVec 64) V!2685) tuple2!1892)

(declare-fun get!998 (ValueCell!796 V!2685) V!2685)

(declare-fun dynLambda!275 (Int (_ BitVec 64)) V!2685)

(assert (=> b!53528 (= lt!21485 (update!47 newMap!16 (select (arr!1662 (_keys!3584 (v!2253 (underlying!168 thiss!992)))) from!355) (get!998 (select (arr!1663 (_values!1947 (v!2253 (underlying!168 thiss!992)))) from!355) (dynLambda!275 (defaultEntry!1964 (v!2253 (underlying!168 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!53529 () Bool)

(declare-fun res!30343 () Bool)

(declare-fun e!34925 () Bool)

(assert (=> b!53529 (=> (not res!30343) (not e!34925))))

(assert (=> b!53529 (= res!30343 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1891 (_keys!3584 (v!2253 (underlying!168 thiss!992)))))))))

(declare-fun b!53530 () Bool)

(assert (=> b!53530 (= e!34925 e!34931)))

(declare-fun res!30336 () Bool)

(assert (=> b!53530 (=> (not res!30336) (not e!34931))))

(declare-fun lt!21487 () ListLongMap!1295)

(assert (=> b!53530 (= res!30336 (and (= lt!21487 lt!21484) (not (= (select (arr!1662 (_keys!3584 (v!2253 (underlying!168 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1662 (_keys!3584 (v!2253 (underlying!168 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1036 (LongMapFixedSize!500) ListLongMap!1295)

(assert (=> b!53530 (= lt!21484 (map!1036 newMap!16))))

(declare-fun getCurrentListMap!370 (array!3480 array!3482 (_ BitVec 32) (_ BitVec 32) V!2685 V!2685 (_ BitVec 32) Int) ListLongMap!1295)

(assert (=> b!53530 (= lt!21487 (getCurrentListMap!370 (_keys!3584 (v!2253 (underlying!168 thiss!992))) (_values!1947 (v!2253 (underlying!168 thiss!992))) (mask!5799 (v!2253 (underlying!168 thiss!992))) (extraKeys!1855 (v!2253 (underlying!168 thiss!992))) (zeroValue!1882 (v!2253 (underlying!168 thiss!992))) (minValue!1882 (v!2253 (underlying!168 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1964 (v!2253 (underlying!168 thiss!992)))))))

(declare-fun res!30340 () Bool)

(assert (=> start!8292 (=> (not res!30340) (not e!34925))))

(declare-fun valid!186 (LongMap!314) Bool)

(assert (=> start!8292 (= res!30340 (valid!186 thiss!992))))

(assert (=> start!8292 e!34925))

(declare-fun e!34921 () Bool)

(assert (=> start!8292 e!34921))

(assert (=> start!8292 true))

(declare-fun e!34927 () Bool)

(assert (=> start!8292 e!34927))

(declare-fun b!53531 () Bool)

(declare-fun res!30337 () Bool)

(assert (=> b!53531 (=> (not res!30337) (not e!34922))))

(assert (=> b!53531 (= res!30337 (and (= (size!1892 (_values!1947 (v!2253 (underlying!168 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5799 (v!2253 (underlying!168 thiss!992))))) (= (size!1891 (_keys!3584 (v!2253 (underlying!168 thiss!992)))) (size!1892 (_values!1947 (v!2253 (underlying!168 thiss!992))))) (bvsge (mask!5799 (v!2253 (underlying!168 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1855 (v!2253 (underlying!168 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1855 (v!2253 (underlying!168 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun e!34928 () Bool)

(declare-fun tp_is_empty!2279 () Bool)

(declare-fun array_inv!973 (array!3480) Bool)

(declare-fun array_inv!974 (array!3482) Bool)

(assert (=> b!53532 (= e!34927 (and tp!7278 tp_is_empty!2279 (array_inv!973 (_keys!3584 newMap!16)) (array_inv!974 (_values!1947 newMap!16)) e!34928))))

(declare-fun b!53533 () Bool)

(declare-fun e!34933 () Bool)

(assert (=> b!53533 (= e!34921 e!34933)))

(declare-fun mapNonEmpty!2507 () Bool)

(declare-fun mapRes!2508 () Bool)

(declare-fun tp!7276 () Bool)

(declare-fun e!34924 () Bool)

(assert (=> mapNonEmpty!2507 (= mapRes!2508 (and tp!7276 e!34924))))

(declare-fun mapValue!2508 () ValueCell!796)

(declare-fun mapKey!2508 () (_ BitVec 32))

(declare-fun mapRest!2508 () (Array (_ BitVec 32) ValueCell!796))

(assert (=> mapNonEmpty!2507 (= (arr!1663 (_values!1947 newMap!16)) (store mapRest!2508 mapKey!2508 mapValue!2508))))

(declare-fun b!53534 () Bool)

(declare-fun e!34923 () Bool)

(declare-fun e!34926 () Bool)

(declare-fun mapRes!2507 () Bool)

(assert (=> b!53534 (= e!34923 (and e!34926 mapRes!2507))))

(declare-fun condMapEmpty!2508 () Bool)

(declare-fun mapDefault!2508 () ValueCell!796)

