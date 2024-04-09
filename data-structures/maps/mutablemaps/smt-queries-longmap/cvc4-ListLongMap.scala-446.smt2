; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8304 () Bool)

(assert start!8304)

(declare-fun b!53934 () Bool)

(declare-fun b_free!1749 () Bool)

(declare-fun b_next!1749 () Bool)

(assert (=> b!53934 (= b_free!1749 (not b_next!1749))))

(declare-fun tp!7350 () Bool)

(declare-fun b_and!3049 () Bool)

(assert (=> b!53934 (= tp!7350 b_and!3049)))

(declare-fun b!53922 () Bool)

(declare-fun b_free!1751 () Bool)

(declare-fun b_next!1751 () Bool)

(assert (=> b!53922 (= b_free!1751 (not b_next!1751))))

(declare-fun tp!7348 () Bool)

(declare-fun b_and!3051 () Bool)

(assert (=> b!53922 (= tp!7348 b_and!3051)))

(declare-fun mapNonEmpty!2543 () Bool)

(declare-fun mapRes!2544 () Bool)

(declare-fun tp!7349 () Bool)

(declare-fun e!35203 () Bool)

(assert (=> mapNonEmpty!2543 (= mapRes!2544 (and tp!7349 e!35203))))

(declare-fun mapKey!2544 () (_ BitVec 32))

(declare-datatypes ((V!2701 0))(
  ( (V!2702 (val!1190 Int)) )
))
(declare-datatypes ((array!3504 0))(
  ( (array!3505 (arr!1674 (Array (_ BitVec 32) (_ BitVec 64))) (size!1903 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!802 0))(
  ( (ValueCellFull!802 (v!2263 V!2701)) (EmptyCell!802) )
))
(declare-datatypes ((array!3506 0))(
  ( (array!3507 (arr!1675 (Array (_ BitVec 32) ValueCell!802)) (size!1904 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!512 0))(
  ( (LongMapFixedSize!513 (defaultEntry!1970 Int) (mask!5809 (_ BitVec 32)) (extraKeys!1861 (_ BitVec 32)) (zeroValue!1888 V!2701) (minValue!1888 V!2701) (_size!305 (_ BitVec 32)) (_keys!3590 array!3504) (_values!1953 array!3506) (_vacant!305 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!324 0))(
  ( (Cell!325 (v!2264 LongMapFixedSize!512)) )
))
(declare-datatypes ((LongMap!324 0))(
  ( (LongMap!325 (underlying!173 Cell!324)) )
))
(declare-fun thiss!992 () LongMap!324)

(declare-fun mapValue!2544 () ValueCell!802)

(declare-fun mapRest!2544 () (Array (_ BitVec 32) ValueCell!802))

(assert (=> mapNonEmpty!2543 (= (arr!1675 (_values!1953 (v!2264 (underlying!173 thiss!992)))) (store mapRest!2544 mapKey!2544 mapValue!2544))))

(declare-fun b!53918 () Bool)

(declare-fun res!30533 () Bool)

(declare-fun e!35197 () Bool)

(assert (=> b!53918 (=> (not res!30533) (not e!35197))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!53918 (= res!30533 (validMask!0 (mask!5809 (v!2264 (underlying!173 thiss!992)))))))

(declare-fun mapIsEmpty!2543 () Bool)

(declare-fun mapRes!2543 () Bool)

(assert (=> mapIsEmpty!2543 mapRes!2543))

(declare-fun b!53919 () Bool)

(declare-fun e!35193 () Bool)

(declare-fun e!35201 () Bool)

(assert (=> b!53919 (= e!35193 e!35201)))

(declare-fun b!53920 () Bool)

(declare-fun e!35202 () Bool)

(declare-fun tp_is_empty!2291 () Bool)

(assert (=> b!53920 (= e!35202 tp_is_empty!2291)))

(declare-fun res!30537 () Bool)

(declare-fun e!35194 () Bool)

(assert (=> start!8304 (=> (not res!30537) (not e!35194))))

(declare-fun valid!194 (LongMap!324) Bool)

(assert (=> start!8304 (= res!30537 (valid!194 thiss!992))))

(assert (=> start!8304 e!35194))

(assert (=> start!8304 e!35193))

(assert (=> start!8304 true))

(declare-fun e!35204 () Bool)

(assert (=> start!8304 e!35204))

(declare-fun b!53921 () Bool)

(declare-fun res!30541 () Bool)

(assert (=> b!53921 (=> (not res!30541) (not e!35194))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!53921 (= res!30541 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1903 (_keys!3590 (v!2264 (underlying!173 thiss!992)))))))))

(declare-fun newMap!16 () LongMapFixedSize!512)

(declare-fun e!35192 () Bool)

(declare-fun array_inv!983 (array!3504) Bool)

(declare-fun array_inv!984 (array!3506) Bool)

(assert (=> b!53922 (= e!35204 (and tp!7348 tp_is_empty!2291 (array_inv!983 (_keys!3590 newMap!16)) (array_inv!984 (_values!1953 newMap!16)) e!35192))))

(declare-fun mapIsEmpty!2544 () Bool)

(assert (=> mapIsEmpty!2544 mapRes!2544))

(declare-fun b!53923 () Bool)

(declare-fun res!30538 () Bool)

(assert (=> b!53923 (=> (not res!30538) (not e!35197))))

(assert (=> b!53923 (= res!30538 (and (= (size!1904 (_values!1953 (v!2264 (underlying!173 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5809 (v!2264 (underlying!173 thiss!992))))) (= (size!1903 (_keys!3590 (v!2264 (underlying!173 thiss!992)))) (size!1904 (_values!1953 (v!2264 (underlying!173 thiss!992))))) (bvsge (mask!5809 (v!2264 (underlying!173 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1861 (v!2264 (underlying!173 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1861 (v!2264 (underlying!173 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!53924 () Bool)

(declare-fun e!35198 () Bool)

(assert (=> b!53924 (= e!35194 e!35198)))

(declare-fun res!30542 () Bool)

(assert (=> b!53924 (=> (not res!30542) (not e!35198))))

(declare-datatypes ((tuple2!1906 0))(
  ( (tuple2!1907 (_1!963 (_ BitVec 64)) (_2!963 V!2701)) )
))
(declare-datatypes ((List!1384 0))(
  ( (Nil!1381) (Cons!1380 (h!1960 tuple2!1906) (t!4510 List!1384)) )
))
(declare-datatypes ((ListLongMap!1303 0))(
  ( (ListLongMap!1304 (toList!667 List!1384)) )
))
(declare-fun lt!21556 () ListLongMap!1303)

(declare-fun lt!21557 () ListLongMap!1303)

(assert (=> b!53924 (= res!30542 (and (= lt!21556 lt!21557) (not (= (select (arr!1674 (_keys!3590 (v!2264 (underlying!173 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1674 (_keys!3590 (v!2264 (underlying!173 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1044 (LongMapFixedSize!512) ListLongMap!1303)

(assert (=> b!53924 (= lt!21557 (map!1044 newMap!16))))

(declare-fun getCurrentListMap!374 (array!3504 array!3506 (_ BitVec 32) (_ BitVec 32) V!2701 V!2701 (_ BitVec 32) Int) ListLongMap!1303)

(assert (=> b!53924 (= lt!21556 (getCurrentListMap!374 (_keys!3590 (v!2264 (underlying!173 thiss!992))) (_values!1953 (v!2264 (underlying!173 thiss!992))) (mask!5809 (v!2264 (underlying!173 thiss!992))) (extraKeys!1861 (v!2264 (underlying!173 thiss!992))) (zeroValue!1888 (v!2264 (underlying!173 thiss!992))) (minValue!1888 (v!2264 (underlying!173 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1970 (v!2264 (underlying!173 thiss!992)))))))

(declare-fun b!53925 () Bool)

(assert (=> b!53925 (= e!35203 tp_is_empty!2291)))

(declare-fun b!53926 () Bool)

(assert (=> b!53926 (= e!35198 e!35197)))

(declare-fun res!30534 () Bool)

(assert (=> b!53926 (=> (not res!30534) (not e!35197))))

(declare-fun contains!638 (ListLongMap!1303 (_ BitVec 64)) Bool)

(assert (=> b!53926 (= res!30534 (contains!638 lt!21557 (select (arr!1674 (_keys!3590 (v!2264 (underlying!173 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1908 0))(
  ( (tuple2!1909 (_1!964 Bool) (_2!964 LongMapFixedSize!512)) )
))
(declare-fun lt!21559 () tuple2!1908)

(declare-fun update!51 (LongMapFixedSize!512 (_ BitVec 64) V!2701) tuple2!1908)

(declare-fun get!1006 (ValueCell!802 V!2701) V!2701)

(declare-fun dynLambda!279 (Int (_ BitVec 64)) V!2701)

(assert (=> b!53926 (= lt!21559 (update!51 newMap!16 (select (arr!1674 (_keys!3590 (v!2264 (underlying!173 thiss!992)))) from!355) (get!1006 (select (arr!1675 (_values!1953 (v!2264 (underlying!173 thiss!992)))) from!355) (dynLambda!279 (defaultEntry!1970 (v!2264 (underlying!173 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!53927 () Bool)

(declare-fun e!35196 () Bool)

(declare-fun e!35190 () Bool)

(assert (=> b!53927 (= e!35196 (and e!35190 mapRes!2544))))

(declare-fun condMapEmpty!2544 () Bool)

(declare-fun mapDefault!2544 () ValueCell!802)

