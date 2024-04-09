; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8310 () Bool)

(assert start!8310)

(declare-fun b!54128 () Bool)

(declare-fun b_free!1761 () Bool)

(declare-fun b_next!1761 () Bool)

(assert (=> b!54128 (= b_free!1761 (not b_next!1761))))

(declare-fun tp!7384 () Bool)

(declare-fun b_and!3073 () Bool)

(assert (=> b!54128 (= tp!7384 b_and!3073)))

(declare-fun b!54132 () Bool)

(declare-fun b_free!1763 () Bool)

(declare-fun b_next!1763 () Bool)

(assert (=> b!54132 (= b_free!1763 (not b_next!1763))))

(declare-fun tp!7385 () Bool)

(declare-fun b_and!3075 () Bool)

(assert (=> b!54132 (= tp!7385 b_and!3075)))

(declare-fun b!54113 () Bool)

(declare-fun e!35325 () Bool)

(declare-fun e!35336 () Bool)

(assert (=> b!54113 (= e!35325 e!35336)))

(declare-fun mapNonEmpty!2561 () Bool)

(declare-fun mapRes!2561 () Bool)

(declare-fun tp!7386 () Bool)

(declare-fun e!35331 () Bool)

(assert (=> mapNonEmpty!2561 (= mapRes!2561 (and tp!7386 e!35331))))

(declare-datatypes ((V!2709 0))(
  ( (V!2710 (val!1193 Int)) )
))
(declare-datatypes ((ValueCell!805 0))(
  ( (ValueCellFull!805 (v!2269 V!2709)) (EmptyCell!805) )
))
(declare-fun mapValue!2562 () ValueCell!805)

(declare-datatypes ((array!3516 0))(
  ( (array!3517 (arr!1680 (Array (_ BitVec 32) (_ BitVec 64))) (size!1909 (_ BitVec 32))) )
))
(declare-datatypes ((array!3518 0))(
  ( (array!3519 (arr!1681 (Array (_ BitVec 32) ValueCell!805)) (size!1910 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!518 0))(
  ( (LongMapFixedSize!519 (defaultEntry!1973 Int) (mask!5814 (_ BitVec 32)) (extraKeys!1864 (_ BitVec 32)) (zeroValue!1891 V!2709) (minValue!1891 V!2709) (_size!308 (_ BitVec 32)) (_keys!3593 array!3516) (_values!1956 array!3518) (_vacant!308 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!330 0))(
  ( (Cell!331 (v!2270 LongMapFixedSize!518)) )
))
(declare-datatypes ((LongMap!330 0))(
  ( (LongMap!331 (underlying!176 Cell!330)) )
))
(declare-fun thiss!992 () LongMap!330)

(declare-fun mapRest!2562 () (Array (_ BitVec 32) ValueCell!805))

(declare-fun mapKey!2562 () (_ BitVec 32))

(assert (=> mapNonEmpty!2561 (= (arr!1681 (_values!1956 (v!2270 (underlying!176 thiss!992)))) (store mapRest!2562 mapKey!2562 mapValue!2562))))

(declare-fun res!30640 () Bool)

(declare-fun e!35326 () Bool)

(assert (=> start!8310 (=> (not res!30640) (not e!35326))))

(declare-fun valid!198 (LongMap!330) Bool)

(assert (=> start!8310 (= res!30640 (valid!198 thiss!992))))

(assert (=> start!8310 e!35326))

(declare-fun e!35334 () Bool)

(assert (=> start!8310 e!35334))

(assert (=> start!8310 true))

(declare-fun e!35338 () Bool)

(assert (=> start!8310 e!35338))

(declare-fun b!54114 () Bool)

(declare-fun e!35337 () Bool)

(declare-fun tp_is_empty!2297 () Bool)

(assert (=> b!54114 (= e!35337 tp_is_empty!2297)))

(declare-fun b!54115 () Bool)

(declare-fun e!35332 () Bool)

(declare-fun e!35339 () Bool)

(assert (=> b!54115 (= e!35332 e!35339)))

(declare-fun res!30637 () Bool)

(assert (=> b!54115 (=> (not res!30637) (not e!35339))))

(declare-datatypes ((tuple2!1918 0))(
  ( (tuple2!1919 (_1!969 (_ BitVec 64)) (_2!969 V!2709)) )
))
(declare-datatypes ((List!1389 0))(
  ( (Nil!1386) (Cons!1385 (h!1965 tuple2!1918) (t!4527 List!1389)) )
))
(declare-datatypes ((ListLongMap!1309 0))(
  ( (ListLongMap!1310 (toList!670 List!1389)) )
))
(declare-fun lt!21592 () ListLongMap!1309)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!641 (ListLongMap!1309 (_ BitVec 64)) Bool)

(assert (=> b!54115 (= res!30637 (contains!641 lt!21592 (select (arr!1680 (_keys!3593 (v!2270 (underlying!176 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!518)

(declare-datatypes ((tuple2!1920 0))(
  ( (tuple2!1921 (_1!970 Bool) (_2!970 LongMapFixedSize!518)) )
))
(declare-fun lt!21595 () tuple2!1920)

(declare-fun update!54 (LongMapFixedSize!518 (_ BitVec 64) V!2709) tuple2!1920)

(declare-fun get!1011 (ValueCell!805 V!2709) V!2709)

(declare-fun dynLambda!282 (Int (_ BitVec 64)) V!2709)

(assert (=> b!54115 (= lt!21595 (update!54 newMap!16 (select (arr!1680 (_keys!3593 (v!2270 (underlying!176 thiss!992)))) from!355) (get!1011 (select (arr!1681 (_values!1956 (v!2270 (underlying!176 thiss!992)))) from!355) (dynLambda!282 (defaultEntry!1973 (v!2270 (underlying!176 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!54116 () Bool)

(declare-fun e!35328 () Bool)

(declare-fun mapRes!2562 () Bool)

(assert (=> b!54116 (= e!35328 (and e!35337 mapRes!2562))))

(declare-fun condMapEmpty!2561 () Bool)

(declare-fun mapDefault!2561 () ValueCell!805)

