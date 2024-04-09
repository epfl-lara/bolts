; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19010 () Bool)

(assert start!19010)

(declare-fun b!187274 () Bool)

(declare-fun b_free!4609 () Bool)

(declare-fun b_next!4609 () Bool)

(assert (=> b!187274 (= b_free!4609 (not b_next!4609))))

(declare-fun tp!16639 () Bool)

(declare-fun b_and!11245 () Bool)

(assert (=> b!187274 (= tp!16639 b_and!11245)))

(declare-fun b!187272 () Bool)

(declare-fun e!123265 () Bool)

(declare-fun e!123268 () Bool)

(assert (=> b!187272 (= e!123265 e!123268)))

(declare-fun res!88572 () Bool)

(assert (=> b!187272 (=> (not res!88572) (not e!123268))))

(declare-datatypes ((V!5489 0))(
  ( (V!5490 (val!2235 Int)) )
))
(declare-datatypes ((ValueCell!1847 0))(
  ( (ValueCellFull!1847 (v!4146 V!5489)) (EmptyCell!1847) )
))
(declare-datatypes ((array!7978 0))(
  ( (array!7979 (arr!3764 (Array (_ BitVec 32) (_ BitVec 64))) (size!4082 (_ BitVec 32))) )
))
(declare-datatypes ((array!7980 0))(
  ( (array!7981 (arr!3765 (Array (_ BitVec 32) ValueCell!1847)) (size!4083 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2602 0))(
  ( (LongMapFixedSize!2603 (defaultEntry!3821 Int) (mask!8966 (_ BitVec 32)) (extraKeys!3558 (_ BitVec 32)) (zeroValue!3662 V!5489) (minValue!3662 V!5489) (_size!1350 (_ BitVec 32)) (_keys!5772 array!7978) (_values!3804 array!7980) (_vacant!1350 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2602)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!187272 (= res!88572 (validMask!0 (mask!8966 thiss!1248)))))

(declare-datatypes ((Unit!5641 0))(
  ( (Unit!5642) )
))
(declare-fun lt!92691 () Unit!5641)

(declare-fun e!123260 () Unit!5641)

(assert (=> b!187272 (= lt!92691 e!123260)))

(declare-fun c!33608 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3472 0))(
  ( (tuple2!3473 (_1!1746 (_ BitVec 64)) (_2!1746 V!5489)) )
))
(declare-datatypes ((List!2401 0))(
  ( (Nil!2398) (Cons!2397 (h!3032 tuple2!3472) (t!7301 List!2401)) )
))
(declare-datatypes ((ListLongMap!2403 0))(
  ( (ListLongMap!2404 (toList!1217 List!2401)) )
))
(declare-fun contains!1311 (ListLongMap!2403 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!860 (array!7978 array!7980 (_ BitVec 32) (_ BitVec 32) V!5489 V!5489 (_ BitVec 32) Int) ListLongMap!2403)

(assert (=> b!187272 (= c!33608 (contains!1311 (getCurrentListMap!860 (_keys!5772 thiss!1248) (_values!3804 thiss!1248) (mask!8966 thiss!1248) (extraKeys!3558 thiss!1248) (zeroValue!3662 thiss!1248) (minValue!3662 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3821 thiss!1248)) key!828))))

(declare-fun b!187273 () Bool)

(assert (=> b!187273 (= e!123268 (and (= (size!4083 (_values!3804 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8966 thiss!1248))) (= (size!4082 (_keys!5772 thiss!1248)) (size!4083 (_values!3804 thiss!1248))) (bvsge (mask!8966 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3558 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun tp_is_empty!4381 () Bool)

(declare-fun e!123261 () Bool)

(declare-fun e!123267 () Bool)

(declare-fun array_inv!2425 (array!7978) Bool)

(declare-fun array_inv!2426 (array!7980) Bool)

(assert (=> b!187274 (= e!123267 (and tp!16639 tp_is_empty!4381 (array_inv!2425 (_keys!5772 thiss!1248)) (array_inv!2426 (_values!3804 thiss!1248)) e!123261))))

(declare-fun res!88570 () Bool)

(declare-fun e!123264 () Bool)

(assert (=> start!19010 (=> (not res!88570) (not e!123264))))

(declare-fun valid!1062 (LongMapFixedSize!2602) Bool)

(assert (=> start!19010 (= res!88570 (valid!1062 thiss!1248))))

(assert (=> start!19010 e!123264))

(assert (=> start!19010 e!123267))

(assert (=> start!19010 true))

(declare-fun b!187275 () Bool)

(declare-fun e!123259 () Bool)

(assert (=> b!187275 (= e!123259 tp_is_empty!4381)))

(declare-fun b!187276 () Bool)

(declare-fun mapRes!7547 () Bool)

(assert (=> b!187276 (= e!123261 (and e!123259 mapRes!7547))))

(declare-fun condMapEmpty!7547 () Bool)

(declare-fun mapDefault!7547 () ValueCell!1847)

