; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18156 () Bool)

(assert start!18156)

(declare-fun b!180622 () Bool)

(declare-fun b_free!4469 () Bool)

(declare-fun b_next!4469 () Bool)

(assert (=> b!180622 (= b_free!4469 (not b_next!4469))))

(declare-fun tp!16146 () Bool)

(declare-fun b_and!11023 () Bool)

(assert (=> b!180622 (= tp!16146 b_and!11023)))

(declare-fun mapNonEmpty!7264 () Bool)

(declare-fun mapRes!7264 () Bool)

(declare-fun tp!16147 () Bool)

(declare-fun e!118997 () Bool)

(assert (=> mapNonEmpty!7264 (= mapRes!7264 (and tp!16147 e!118997))))

(declare-datatypes ((V!5301 0))(
  ( (V!5302 (val!2165 Int)) )
))
(declare-datatypes ((ValueCell!1777 0))(
  ( (ValueCellFull!1777 (v!4055 V!5301)) (EmptyCell!1777) )
))
(declare-fun mapValue!7264 () ValueCell!1777)

(declare-fun mapRest!7264 () (Array (_ BitVec 32) ValueCell!1777))

(declare-fun mapKey!7264 () (_ BitVec 32))

(declare-datatypes ((array!7656 0))(
  ( (array!7657 (arr!3624 (Array (_ BitVec 32) (_ BitVec 64))) (size!3932 (_ BitVec 32))) )
))
(declare-datatypes ((array!7658 0))(
  ( (array!7659 (arr!3625 (Array (_ BitVec 32) ValueCell!1777)) (size!3933 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2462 0))(
  ( (LongMapFixedSize!2463 (defaultEntry!3708 Int) (mask!8713 (_ BitVec 32)) (extraKeys!3445 (_ BitVec 32)) (zeroValue!3549 V!5301) (minValue!3549 V!5301) (_size!1280 (_ BitVec 32)) (_keys!5602 array!7656) (_values!3691 array!7658) (_vacant!1280 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2462)

(assert (=> mapNonEmpty!7264 (= (arr!3625 (_values!3691 thiss!1248)) (store mapRest!7264 mapKey!7264 mapValue!7264))))

(declare-fun b!180616 () Bool)

(declare-fun res!85562 () Bool)

(declare-fun e!118998 () Bool)

(assert (=> b!180616 (=> (not res!85562) (not e!118998))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!180616 (= res!85562 (not (= key!828 (bvneg key!828))))))

(declare-fun b!180617 () Bool)

(declare-fun e!119002 () Bool)

(assert (=> b!180617 (= e!119002 (not (= (size!3933 (_values!3691 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8713 thiss!1248)))))))

(declare-fun b!180618 () Bool)

(declare-fun e!118999 () Bool)

(declare-fun tp_is_empty!4241 () Bool)

(assert (=> b!180618 (= e!118999 tp_is_empty!4241)))

(declare-fun b!180619 () Bool)

(assert (=> b!180619 (= e!118998 e!119002)))

(declare-fun res!85563 () Bool)

(assert (=> b!180619 (=> (not res!85563) (not e!119002))))

(declare-datatypes ((SeekEntryResult!606 0))(
  ( (MissingZero!606 (index!4594 (_ BitVec 32))) (Found!606 (index!4595 (_ BitVec 32))) (Intermediate!606 (undefined!1418 Bool) (index!4596 (_ BitVec 32)) (x!19758 (_ BitVec 32))) (Undefined!606) (MissingVacant!606 (index!4597 (_ BitVec 32))) )
))
(declare-fun lt!89298 () SeekEntryResult!606)

(assert (=> b!180619 (= res!85563 (and (not (is-Undefined!606 lt!89298)) (not (is-MissingVacant!606 lt!89298)) (not (is-MissingZero!606 lt!89298)) (is-Found!606 lt!89298)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7656 (_ BitVec 32)) SeekEntryResult!606)

(assert (=> b!180619 (= lt!89298 (seekEntryOrOpen!0 key!828 (_keys!5602 thiss!1248) (mask!8713 thiss!1248)))))

(declare-fun res!85561 () Bool)

(assert (=> start!18156 (=> (not res!85561) (not e!118998))))

(declare-fun valid!1015 (LongMapFixedSize!2462) Bool)

(assert (=> start!18156 (= res!85561 (valid!1015 thiss!1248))))

(assert (=> start!18156 e!118998))

(declare-fun e!119000 () Bool)

(assert (=> start!18156 e!119000))

(assert (=> start!18156 true))

(declare-fun b!180620 () Bool)

(assert (=> b!180620 (= e!118997 tp_is_empty!4241)))

(declare-fun b!180621 () Bool)

(declare-fun res!85560 () Bool)

(assert (=> b!180621 (=> (not res!85560) (not e!119002))))

(declare-datatypes ((tuple2!3372 0))(
  ( (tuple2!3373 (_1!1696 (_ BitVec 64)) (_2!1696 V!5301)) )
))
(declare-datatypes ((List!2320 0))(
  ( (Nil!2317) (Cons!2316 (h!2941 tuple2!3372) (t!7178 List!2320)) )
))
(declare-datatypes ((ListLongMap!2303 0))(
  ( (ListLongMap!2304 (toList!1167 List!2320)) )
))
(declare-fun contains!1237 (ListLongMap!2303 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!810 (array!7656 array!7658 (_ BitVec 32) (_ BitVec 32) V!5301 V!5301 (_ BitVec 32) Int) ListLongMap!2303)

(assert (=> b!180621 (= res!85560 (contains!1237 (getCurrentListMap!810 (_keys!5602 thiss!1248) (_values!3691 thiss!1248) (mask!8713 thiss!1248) (extraKeys!3445 thiss!1248) (zeroValue!3549 thiss!1248) (minValue!3549 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3708 thiss!1248)) key!828))))

(declare-fun e!119003 () Bool)

(declare-fun array_inv!2325 (array!7656) Bool)

(declare-fun array_inv!2326 (array!7658) Bool)

(assert (=> b!180622 (= e!119000 (and tp!16146 tp_is_empty!4241 (array_inv!2325 (_keys!5602 thiss!1248)) (array_inv!2326 (_values!3691 thiss!1248)) e!119003))))

(declare-fun b!180623 () Bool)

(assert (=> b!180623 (= e!119003 (and e!118999 mapRes!7264))))

(declare-fun condMapEmpty!7264 () Bool)

(declare-fun mapDefault!7264 () ValueCell!1777)

