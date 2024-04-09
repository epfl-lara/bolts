; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13834 () Bool)

(assert start!13834)

(declare-fun b!127732 () Bool)

(declare-fun b_free!2865 () Bool)

(declare-fun b_next!2865 () Bool)

(assert (=> b!127732 (= b_free!2865 (not b_next!2865))))

(declare-fun tp!11010 () Bool)

(declare-fun b_and!7897 () Bool)

(assert (=> b!127732 (= tp!11010 b_and!7897)))

(declare-fun b!127729 () Bool)

(declare-fun b_free!2867 () Bool)

(declare-fun b_next!2867 () Bool)

(assert (=> b!127729 (= b_free!2867 (not b_next!2867))))

(declare-fun tp!11012 () Bool)

(declare-fun b_and!7899 () Bool)

(assert (=> b!127729 (= tp!11012 b_and!7899)))

(declare-fun b!127722 () Bool)

(declare-fun e!83412 () Bool)

(declare-fun tp_is_empty!2849 () Bool)

(assert (=> b!127722 (= e!83412 tp_is_empty!2849)))

(declare-fun b!127723 () Bool)

(declare-fun e!83411 () Bool)

(declare-fun e!83404 () Bool)

(assert (=> b!127723 (= e!83411 e!83404)))

(declare-fun res!61732 () Bool)

(assert (=> b!127723 (=> (not res!61732) (not e!83404))))

(declare-datatypes ((V!3445 0))(
  ( (V!3446 (val!1469 Int)) )
))
(declare-datatypes ((array!4716 0))(
  ( (array!4717 (arr!2232 (Array (_ BitVec 32) (_ BitVec 64))) (size!2497 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1081 0))(
  ( (ValueCellFull!1081 (v!3138 V!3445)) (EmptyCell!1081) )
))
(declare-datatypes ((array!4718 0))(
  ( (array!4719 (arr!2233 (Array (_ BitVec 32) ValueCell!1081)) (size!2498 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1070 0))(
  ( (LongMapFixedSize!1071 (defaultEntry!2803 Int) (mask!7069 (_ BitVec 32)) (extraKeys!2580 (_ BitVec 32)) (zeroValue!2664 V!3445) (minValue!2664 V!3445) (_size!584 (_ BitVec 32)) (_keys!4540 array!4716) (_values!2786 array!4718) (_vacant!584 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!860 0))(
  ( (Cell!861 (v!3139 LongMapFixedSize!1070)) )
))
(declare-datatypes ((LongMap!860 0))(
  ( (LongMap!861 (underlying!441 Cell!860)) )
))
(declare-fun thiss!992 () LongMap!860)

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!2578 0))(
  ( (tuple2!2579 (_1!1299 (_ BitVec 64)) (_2!1299 V!3445)) )
))
(declare-datatypes ((List!1723 0))(
  ( (Nil!1720) (Cons!1719 (h!2322 tuple2!2578) (t!6106 List!1723)) )
))
(declare-datatypes ((ListLongMap!1691 0))(
  ( (ListLongMap!1692 (toList!861 List!1723)) )
))
(declare-fun lt!66119 () ListLongMap!1691)

(declare-fun contains!881 (ListLongMap!1691 (_ BitVec 64)) Bool)

(assert (=> b!127723 (= res!61732 (contains!881 lt!66119 (select (arr!2232 (_keys!4540 (v!3139 (underlying!441 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!1070)

(declare-datatypes ((tuple2!2580 0))(
  ( (tuple2!2581 (_1!1300 Bool) (_2!1300 LongMapFixedSize!1070)) )
))
(declare-fun lt!66118 () tuple2!2580)

(declare-fun update!185 (LongMapFixedSize!1070 (_ BitVec 64) V!3445) tuple2!2580)

(declare-fun get!1459 (ValueCell!1081 V!3445) V!3445)

(declare-fun dynLambda!418 (Int (_ BitVec 64)) V!3445)

(assert (=> b!127723 (= lt!66118 (update!185 newMap!16 (select (arr!2232 (_keys!4540 (v!3139 (underlying!441 thiss!992)))) from!355) (get!1459 (select (arr!2233 (_values!2786 (v!3139 (underlying!441 thiss!992)))) from!355) (dynLambda!418 (defaultEntry!2803 (v!3139 (underlying!441 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!127724 () Bool)

(declare-fun res!61728 () Bool)

(declare-fun e!83415 () Bool)

(assert (=> b!127724 (=> (not res!61728) (not e!83415))))

(assert (=> b!127724 (= res!61728 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7069 newMap!16)) (_size!584 (v!3139 (underlying!441 thiss!992)))))))

(declare-fun b!127725 () Bool)

(assert (=> b!127725 (= e!83404 (and (= (size!2498 (_values!2786 (v!3139 (underlying!441 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!7069 (v!3139 (underlying!441 thiss!992))))) (= (size!2497 (_keys!4540 (v!3139 (underlying!441 thiss!992)))) (size!2498 (_values!2786 (v!3139 (underlying!441 thiss!992))))) (bvslt (mask!7069 (v!3139 (underlying!441 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun b!127726 () Bool)

(declare-fun e!83417 () Bool)

(declare-fun e!83414 () Bool)

(assert (=> b!127726 (= e!83417 e!83414)))

(declare-fun mapNonEmpty!4531 () Bool)

(declare-fun mapRes!4531 () Bool)

(declare-fun tp!11011 () Bool)

(declare-fun e!83408 () Bool)

(assert (=> mapNonEmpty!4531 (= mapRes!4531 (and tp!11011 e!83408))))

(declare-fun mapRest!4532 () (Array (_ BitVec 32) ValueCell!1081))

(declare-fun mapValue!4531 () ValueCell!1081)

(declare-fun mapKey!4531 () (_ BitVec 32))

(assert (=> mapNonEmpty!4531 (= (arr!2233 (_values!2786 newMap!16)) (store mapRest!4532 mapKey!4531 mapValue!4531))))

(declare-fun b!127727 () Bool)

(declare-fun res!61731 () Bool)

(assert (=> b!127727 (=> (not res!61731) (not e!83415))))

(assert (=> b!127727 (= res!61731 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2497 (_keys!4540 (v!3139 (underlying!441 thiss!992)))))))))

(declare-fun res!61734 () Bool)

(assert (=> start!13834 (=> (not res!61734) (not e!83415))))

(declare-fun valid!508 (LongMap!860) Bool)

(assert (=> start!13834 (= res!61734 (valid!508 thiss!992))))

(assert (=> start!13834 e!83415))

(declare-fun e!83410 () Bool)

(assert (=> start!13834 e!83410))

(assert (=> start!13834 true))

(declare-fun e!83403 () Bool)

(assert (=> start!13834 e!83403))

(declare-fun b!127728 () Bool)

(assert (=> b!127728 (= e!83410 e!83417)))

(declare-fun e!83416 () Bool)

(declare-fun array_inv!1371 (array!4716) Bool)

(declare-fun array_inv!1372 (array!4718) Bool)

(assert (=> b!127729 (= e!83403 (and tp!11012 tp_is_empty!2849 (array_inv!1371 (_keys!4540 newMap!16)) (array_inv!1372 (_values!2786 newMap!16)) e!83416))))

(declare-fun b!127730 () Bool)

(assert (=> b!127730 (= e!83415 e!83411)))

(declare-fun res!61729 () Bool)

(assert (=> b!127730 (=> (not res!61729) (not e!83411))))

(declare-fun lt!66120 () ListLongMap!1691)

(assert (=> b!127730 (= res!61729 (and (= lt!66120 lt!66119) (not (= (select (arr!2232 (_keys!4540 (v!3139 (underlying!441 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2232 (_keys!4540 (v!3139 (underlying!441 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1388 (LongMapFixedSize!1070) ListLongMap!1691)

(assert (=> b!127730 (= lt!66119 (map!1388 newMap!16))))

(declare-fun getCurrentListMap!533 (array!4716 array!4718 (_ BitVec 32) (_ BitVec 32) V!3445 V!3445 (_ BitVec 32) Int) ListLongMap!1691)

(assert (=> b!127730 (= lt!66120 (getCurrentListMap!533 (_keys!4540 (v!3139 (underlying!441 thiss!992))) (_values!2786 (v!3139 (underlying!441 thiss!992))) (mask!7069 (v!3139 (underlying!441 thiss!992))) (extraKeys!2580 (v!3139 (underlying!441 thiss!992))) (zeroValue!2664 (v!3139 (underlying!441 thiss!992))) (minValue!2664 (v!3139 (underlying!441 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2803 (v!3139 (underlying!441 thiss!992)))))))

(declare-fun b!127731 () Bool)

(declare-fun e!83406 () Bool)

(assert (=> b!127731 (= e!83406 tp_is_empty!2849)))

(declare-fun e!83405 () Bool)

(assert (=> b!127732 (= e!83414 (and tp!11010 tp_is_empty!2849 (array_inv!1371 (_keys!4540 (v!3139 (underlying!441 thiss!992)))) (array_inv!1372 (_values!2786 (v!3139 (underlying!441 thiss!992)))) e!83405))))

(declare-fun b!127733 () Bool)

(assert (=> b!127733 (= e!83416 (and e!83406 mapRes!4531))))

(declare-fun condMapEmpty!4531 () Bool)

(declare-fun mapDefault!4532 () ValueCell!1081)

