; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18208 () Bool)

(assert start!18208)

(declare-fun b!180950 () Bool)

(declare-fun b_free!4471 () Bool)

(declare-fun b_next!4471 () Bool)

(assert (=> b!180950 (= b_free!4471 (not b_next!4471))))

(declare-fun tp!16156 () Bool)

(declare-fun b_and!11031 () Bool)

(assert (=> b!180950 (= tp!16156 b_and!11031)))

(declare-fun mapNonEmpty!7271 () Bool)

(declare-fun mapRes!7271 () Bool)

(declare-fun tp!16157 () Bool)

(declare-fun e!119203 () Bool)

(assert (=> mapNonEmpty!7271 (= mapRes!7271 (and tp!16157 e!119203))))

(declare-datatypes ((V!5305 0))(
  ( (V!5306 (val!2166 Int)) )
))
(declare-datatypes ((ValueCell!1778 0))(
  ( (ValueCellFull!1778 (v!4057 V!5305)) (EmptyCell!1778) )
))
(declare-fun mapRest!7271 () (Array (_ BitVec 32) ValueCell!1778))

(declare-fun mapValue!7271 () ValueCell!1778)

(declare-datatypes ((array!7662 0))(
  ( (array!7663 (arr!3626 (Array (_ BitVec 32) (_ BitVec 64))) (size!3935 (_ BitVec 32))) )
))
(declare-datatypes ((array!7664 0))(
  ( (array!7665 (arr!3627 (Array (_ BitVec 32) ValueCell!1778)) (size!3936 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2464 0))(
  ( (LongMapFixedSize!2465 (defaultEntry!3711 Int) (mask!8724 (_ BitVec 32)) (extraKeys!3448 (_ BitVec 32)) (zeroValue!3552 V!5305) (minValue!3552 V!5305) (_size!1281 (_ BitVec 32)) (_keys!5609 array!7662) (_values!3694 array!7664) (_vacant!1281 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2464)

(declare-fun mapKey!7271 () (_ BitVec 32))

(assert (=> mapNonEmpty!7271 (= (arr!3627 (_values!3694 thiss!1248)) (store mapRest!7271 mapKey!7271 mapValue!7271))))

(declare-fun res!85699 () Bool)

(declare-fun e!119200 () Bool)

(assert (=> start!18208 (=> (not res!85699) (not e!119200))))

(declare-fun valid!1016 (LongMapFixedSize!2464) Bool)

(assert (=> start!18208 (= res!85699 (valid!1016 thiss!1248))))

(assert (=> start!18208 e!119200))

(declare-fun e!119199 () Bool)

(assert (=> start!18208 e!119199))

(assert (=> start!18208 true))

(declare-fun b!180948 () Bool)

(declare-fun res!85700 () Bool)

(declare-fun e!119202 () Bool)

(assert (=> b!180948 (=> (not res!85700) (not e!119202))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3374 0))(
  ( (tuple2!3375 (_1!1697 (_ BitVec 64)) (_2!1697 V!5305)) )
))
(declare-datatypes ((List!2322 0))(
  ( (Nil!2319) (Cons!2318 (h!2944 tuple2!3374) (t!7182 List!2322)) )
))
(declare-datatypes ((ListLongMap!2305 0))(
  ( (ListLongMap!2306 (toList!1168 List!2322)) )
))
(declare-fun contains!1240 (ListLongMap!2305 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!811 (array!7662 array!7664 (_ BitVec 32) (_ BitVec 32) V!5305 V!5305 (_ BitVec 32) Int) ListLongMap!2305)

(assert (=> b!180948 (= res!85700 (contains!1240 (getCurrentListMap!811 (_keys!5609 thiss!1248) (_values!3694 thiss!1248) (mask!8724 thiss!1248) (extraKeys!3448 thiss!1248) (zeroValue!3552 thiss!1248) (minValue!3552 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3711 thiss!1248)) key!828))))

(declare-fun b!180949 () Bool)

(assert (=> b!180949 (= e!119200 e!119202)))

(declare-fun res!85697 () Bool)

(assert (=> b!180949 (=> (not res!85697) (not e!119202))))

(declare-datatypes ((SeekEntryResult!607 0))(
  ( (MissingZero!607 (index!4598 (_ BitVec 32))) (Found!607 (index!4599 (_ BitVec 32))) (Intermediate!607 (undefined!1419 Bool) (index!4600 (_ BitVec 32)) (x!19785 (_ BitVec 32))) (Undefined!607) (MissingVacant!607 (index!4601 (_ BitVec 32))) )
))
(declare-fun lt!89498 () SeekEntryResult!607)

(assert (=> b!180949 (= res!85697 (and (not (is-Undefined!607 lt!89498)) (not (is-MissingVacant!607 lt!89498)) (not (is-MissingZero!607 lt!89498)) (is-Found!607 lt!89498)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7662 (_ BitVec 32)) SeekEntryResult!607)

(assert (=> b!180949 (= lt!89498 (seekEntryOrOpen!0 key!828 (_keys!5609 thiss!1248) (mask!8724 thiss!1248)))))

(declare-fun tp_is_empty!4243 () Bool)

(declare-fun e!119198 () Bool)

(declare-fun array_inv!2327 (array!7662) Bool)

(declare-fun array_inv!2328 (array!7664) Bool)

(assert (=> b!180950 (= e!119199 (and tp!16156 tp_is_empty!4243 (array_inv!2327 (_keys!5609 thiss!1248)) (array_inv!2328 (_values!3694 thiss!1248)) e!119198))))

(declare-fun b!180951 () Bool)

(assert (=> b!180951 (= e!119203 tp_is_empty!4243)))

(declare-fun b!180952 () Bool)

(declare-fun res!85698 () Bool)

(assert (=> b!180952 (=> (not res!85698) (not e!119200))))

(assert (=> b!180952 (= res!85698 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!7271 () Bool)

(assert (=> mapIsEmpty!7271 mapRes!7271))

(declare-fun b!180953 () Bool)

(assert (=> b!180953 (= e!119202 (and (= (size!3936 (_values!3694 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8724 thiss!1248))) (not (= (size!3935 (_keys!5609 thiss!1248)) (size!3936 (_values!3694 thiss!1248))))))))

(declare-fun b!180954 () Bool)

(declare-fun res!85701 () Bool)

(assert (=> b!180954 (=> (not res!85701) (not e!119202))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!180954 (= res!85701 (validMask!0 (mask!8724 thiss!1248)))))

(declare-fun b!180955 () Bool)

(declare-fun e!119197 () Bool)

(assert (=> b!180955 (= e!119197 tp_is_empty!4243)))

(declare-fun b!180956 () Bool)

(assert (=> b!180956 (= e!119198 (and e!119197 mapRes!7271))))

(declare-fun condMapEmpty!7271 () Bool)

(declare-fun mapDefault!7271 () ValueCell!1778)

