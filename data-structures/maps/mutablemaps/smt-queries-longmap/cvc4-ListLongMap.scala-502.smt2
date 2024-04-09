; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11660 () Bool)

(assert start!11660)

(declare-fun b!97396 () Bool)

(declare-fun b_free!2421 () Bool)

(declare-fun b_next!2421 () Bool)

(assert (=> b!97396 (= b_free!2421 (not b_next!2421))))

(declare-fun tp!9548 () Bool)

(declare-fun b_and!5977 () Bool)

(assert (=> b!97396 (= tp!9548 b_and!5977)))

(declare-fun b!97385 () Bool)

(declare-fun b_free!2423 () Bool)

(declare-fun b_next!2423 () Bool)

(assert (=> b!97385 (= b_free!2423 (not b_next!2423))))

(declare-fun tp!9545 () Bool)

(declare-fun b_and!5979 () Bool)

(assert (=> b!97385 (= tp!9545 b_and!5979)))

(declare-fun b!97382 () Bool)

(declare-fun e!63507 () Bool)

(declare-fun e!63514 () Bool)

(assert (=> b!97382 (= e!63507 e!63514)))

(declare-fun res!49077 () Bool)

(assert (=> b!97382 (=> (not res!49077) (not e!63514))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!3149 0))(
  ( (V!3150 (val!1358 Int)) )
))
(declare-datatypes ((tuple2!2346 0))(
  ( (tuple2!2347 (_1!1183 (_ BitVec 64)) (_2!1183 V!3149)) )
))
(declare-datatypes ((List!1608 0))(
  ( (Nil!1605) (Cons!1604 (h!2198 tuple2!2346) (t!5562 List!1608)) )
))
(declare-datatypes ((ListLongMap!1547 0))(
  ( (ListLongMap!1548 (toList!789 List!1608)) )
))
(declare-fun lt!48759 () ListLongMap!1547)

(declare-fun lt!48757 () ListLongMap!1547)

(declare-datatypes ((array!4232 0))(
  ( (array!4233 (arr!2010 (Array (_ BitVec 32) (_ BitVec 64))) (size!2260 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!970 0))(
  ( (ValueCellFull!970 (v!2796 V!3149)) (EmptyCell!970) )
))
(declare-datatypes ((array!4234 0))(
  ( (array!4235 (arr!2011 (Array (_ BitVec 32) ValueCell!970)) (size!2261 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!848 0))(
  ( (LongMapFixedSize!849 (defaultEntry!2479 Int) (mask!6574 (_ BitVec 32)) (extraKeys!2300 (_ BitVec 32)) (zeroValue!2362 V!3149) (minValue!2362 V!3149) (_size!473 (_ BitVec 32)) (_keys!4169 array!4232) (_values!2462 array!4234) (_vacant!473 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!652 0))(
  ( (Cell!653 (v!2797 LongMapFixedSize!848)) )
))
(declare-datatypes ((LongMap!652 0))(
  ( (LongMap!653 (underlying!337 Cell!652)) )
))
(declare-fun thiss!992 () LongMap!652)

(assert (=> b!97382 (= res!49077 (and (= lt!48759 lt!48757) (not (= (select (arr!2010 (_keys!4169 (v!2797 (underlying!337 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2010 (_keys!4169 (v!2797 (underlying!337 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!848)

(declare-fun map!1251 (LongMapFixedSize!848) ListLongMap!1547)

(assert (=> b!97382 (= lt!48757 (map!1251 newMap!16))))

(declare-fun getCurrentListMap!470 (array!4232 array!4234 (_ BitVec 32) (_ BitVec 32) V!3149 V!3149 (_ BitVec 32) Int) ListLongMap!1547)

(assert (=> b!97382 (= lt!48759 (getCurrentListMap!470 (_keys!4169 (v!2797 (underlying!337 thiss!992))) (_values!2462 (v!2797 (underlying!337 thiss!992))) (mask!6574 (v!2797 (underlying!337 thiss!992))) (extraKeys!2300 (v!2797 (underlying!337 thiss!992))) (zeroValue!2362 (v!2797 (underlying!337 thiss!992))) (minValue!2362 (v!2797 (underlying!337 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2479 (v!2797 (underlying!337 thiss!992)))))))

(declare-fun b!97383 () Bool)

(declare-fun res!49078 () Bool)

(assert (=> b!97383 (=> (not res!49078) (not e!63507))))

(assert (=> b!97383 (= res!49078 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2260 (_keys!4169 (v!2797 (underlying!337 thiss!992)))))))))

(declare-fun b!97384 () Bool)

(declare-fun e!63513 () Bool)

(assert (=> b!97384 (= e!63513 (and (= (size!2261 (_values!2462 (v!2797 (underlying!337 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6574 (v!2797 (underlying!337 thiss!992))))) (= (size!2260 (_keys!4169 (v!2797 (underlying!337 thiss!992)))) (size!2261 (_values!2462 (v!2797 (underlying!337 thiss!992))))) (bvslt (mask!6574 (v!2797 (underlying!337 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun tp_is_empty!2627 () Bool)

(declare-fun e!63500 () Bool)

(declare-fun e!63510 () Bool)

(declare-fun array_inv!1207 (array!4232) Bool)

(declare-fun array_inv!1208 (array!4234) Bool)

(assert (=> b!97385 (= e!63510 (and tp!9545 tp_is_empty!2627 (array_inv!1207 (_keys!4169 newMap!16)) (array_inv!1208 (_values!2462 newMap!16)) e!63500))))

(declare-fun b!97386 () Bool)

(declare-fun res!49081 () Bool)

(assert (=> b!97386 (=> (not res!49081) (not e!63507))))

(assert (=> b!97386 (= res!49081 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6574 newMap!16)) (_size!473 (v!2797 (underlying!337 thiss!992)))))))

(declare-fun b!97387 () Bool)

(declare-fun e!63508 () Bool)

(assert (=> b!97387 (= e!63508 tp_is_empty!2627)))

(declare-fun b!97388 () Bool)

(assert (=> b!97388 (= e!63514 e!63513)))

(declare-fun res!49076 () Bool)

(assert (=> b!97388 (=> (not res!49076) (not e!63513))))

(declare-datatypes ((tuple2!2348 0))(
  ( (tuple2!2349 (_1!1184 Bool) (_2!1184 LongMapFixedSize!848)) )
))
(declare-fun lt!48762 () tuple2!2348)

(assert (=> b!97388 (= res!49076 (and (_1!1184 lt!48762) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!2959 0))(
  ( (Unit!2960) )
))
(declare-fun lt!48763 () Unit!2959)

(declare-fun e!63511 () Unit!2959)

(assert (=> b!97388 (= lt!48763 e!63511)))

(declare-fun c!16492 () Bool)

(declare-fun contains!804 (ListLongMap!1547 (_ BitVec 64)) Bool)

(assert (=> b!97388 (= c!16492 (contains!804 lt!48757 (select (arr!2010 (_keys!4169 (v!2797 (underlying!337 thiss!992)))) from!355)))))

(declare-fun update!145 (LongMapFixedSize!848 (_ BitVec 64) V!3149) tuple2!2348)

(declare-fun get!1293 (ValueCell!970 V!3149) V!3149)

(declare-fun dynLambda!377 (Int (_ BitVec 64)) V!3149)

(assert (=> b!97388 (= lt!48762 (update!145 newMap!16 (select (arr!2010 (_keys!4169 (v!2797 (underlying!337 thiss!992)))) from!355) (get!1293 (select (arr!2011 (_values!2462 (v!2797 (underlying!337 thiss!992)))) from!355) (dynLambda!377 (defaultEntry!2479 (v!2797 (underlying!337 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!3733 () Bool)

(declare-fun mapRes!3733 () Bool)

(assert (=> mapIsEmpty!3733 mapRes!3733))

(declare-fun b!97390 () Bool)

(declare-fun e!63502 () Bool)

(assert (=> b!97390 (= e!63502 tp_is_empty!2627)))

(declare-fun mapNonEmpty!3733 () Bool)

(declare-fun tp!9546 () Bool)

(declare-fun e!63506 () Bool)

(assert (=> mapNonEmpty!3733 (= mapRes!3733 (and tp!9546 e!63506))))

(declare-fun mapValue!3733 () ValueCell!970)

(declare-fun mapRest!3734 () (Array (_ BitVec 32) ValueCell!970))

(declare-fun mapKey!3733 () (_ BitVec 32))

(assert (=> mapNonEmpty!3733 (= (arr!2011 (_values!2462 newMap!16)) (store mapRest!3734 mapKey!3733 mapValue!3733))))

(declare-fun mapIsEmpty!3734 () Bool)

(declare-fun mapRes!3734 () Bool)

(assert (=> mapIsEmpty!3734 mapRes!3734))

(declare-fun b!97391 () Bool)

(declare-fun Unit!2961 () Unit!2959)

(assert (=> b!97391 (= e!63511 Unit!2961)))

(declare-fun b!97392 () Bool)

(declare-fun e!63509 () Bool)

(assert (=> b!97392 (= e!63509 tp_is_empty!2627)))

(declare-fun b!97393 () Bool)

(declare-fun e!63501 () Bool)

(declare-fun e!63503 () Bool)

(assert (=> b!97393 (= e!63501 e!63503)))

(declare-fun b!97394 () Bool)

(declare-fun res!49080 () Bool)

(assert (=> b!97394 (=> (not res!49080) (not e!63507))))

(declare-fun valid!384 (LongMapFixedSize!848) Bool)

(assert (=> b!97394 (= res!49080 (valid!384 newMap!16))))

(declare-fun b!97395 () Bool)

(declare-fun e!63504 () Bool)

(assert (=> b!97395 (= e!63504 (and e!63509 mapRes!3734))))

(declare-fun condMapEmpty!3733 () Bool)

(declare-fun mapDefault!3733 () ValueCell!970)

