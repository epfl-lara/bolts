; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18092 () Bool)

(assert start!18092)

(declare-fun b!180051 () Bool)

(declare-fun b_free!4451 () Bool)

(declare-fun b_next!4451 () Bool)

(assert (=> b!180051 (= b_free!4451 (not b_next!4451))))

(declare-fun tp!16084 () Bool)

(declare-fun b_and!11003 () Bool)

(assert (=> b!180051 (= tp!16084 b_and!11003)))

(declare-fun b!180045 () Bool)

(declare-fun e!118611 () Bool)

(declare-fun tp_is_empty!4223 () Bool)

(assert (=> b!180045 (= e!118611 tp_is_empty!4223)))

(declare-fun b!180046 () Bool)

(declare-fun e!118618 () Bool)

(declare-fun e!118615 () Bool)

(assert (=> b!180046 (= e!118618 e!118615)))

(declare-fun c!32236 () Bool)

(declare-datatypes ((V!5277 0))(
  ( (V!5278 (val!2156 Int)) )
))
(declare-datatypes ((ValueCell!1768 0))(
  ( (ValueCellFull!1768 (v!4041 V!5277)) (EmptyCell!1768) )
))
(declare-datatypes ((array!7614 0))(
  ( (array!7615 (arr!3606 (Array (_ BitVec 32) (_ BitVec 64))) (size!3914 (_ BitVec 32))) )
))
(declare-datatypes ((array!7616 0))(
  ( (array!7617 (arr!3607 (Array (_ BitVec 32) ValueCell!1768)) (size!3915 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2444 0))(
  ( (LongMapFixedSize!2445 (defaultEntry!3698 Int) (mask!8693 (_ BitVec 32)) (extraKeys!3435 (_ BitVec 32)) (zeroValue!3539 V!5277) (minValue!3539 V!5277) (_size!1271 (_ BitVec 32)) (_keys!5589 array!7614) (_values!3681 array!7616) (_vacant!1271 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!3352 0))(
  ( (tuple2!3353 (_1!1686 Bool) (_2!1686 LongMapFixedSize!2444)) )
))
(declare-fun lt!88918 () tuple2!3352)

(assert (=> b!180046 (= c!32236 (_1!1686 lt!88918))))

(declare-fun b!180048 () Bool)

(declare-fun e!118613 () Bool)

(declare-fun e!118620 () Bool)

(assert (=> b!180048 (= e!118613 e!118620)))

(declare-fun res!85303 () Bool)

(assert (=> b!180048 (=> (not res!85303) (not e!118620))))

(declare-datatypes ((SeekEntryResult!600 0))(
  ( (MissingZero!600 (index!4568 (_ BitVec 32))) (Found!600 (index!4569 (_ BitVec 32))) (Intermediate!600 (undefined!1412 Bool) (index!4570 (_ BitVec 32)) (x!19690 (_ BitVec 32))) (Undefined!600) (MissingVacant!600 (index!4571 (_ BitVec 32))) )
))
(declare-fun lt!88919 () SeekEntryResult!600)

(assert (=> b!180048 (= res!85303 (and (not (is-Undefined!600 lt!88919)) (is-MissingVacant!600 lt!88919)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun thiss!1248 () LongMapFixedSize!2444)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7614 (_ BitVec 32)) SeekEntryResult!600)

(assert (=> b!180048 (= lt!88919 (seekEntryOrOpen!0 key!828 (_keys!5589 thiss!1248) (mask!8693 thiss!1248)))))

(declare-fun mapNonEmpty!7228 () Bool)

(declare-fun mapRes!7228 () Bool)

(declare-fun tp!16083 () Bool)

(assert (=> mapNonEmpty!7228 (= mapRes!7228 (and tp!16083 e!118611))))

(declare-fun mapKey!7228 () (_ BitVec 32))

(declare-fun mapValue!7228 () ValueCell!1768)

(declare-fun mapRest!7228 () (Array (_ BitVec 32) ValueCell!1768))

(assert (=> mapNonEmpty!7228 (= (arr!3607 (_values!3681 thiss!1248)) (store mapRest!7228 mapKey!7228 mapValue!7228))))

(declare-fun bm!18187 () Bool)

(declare-datatypes ((tuple2!3354 0))(
  ( (tuple2!3355 (_1!1687 (_ BitVec 64)) (_2!1687 V!5277)) )
))
(declare-datatypes ((List!2310 0))(
  ( (Nil!2307) (Cons!2306 (h!2931 tuple2!3354) (t!7166 List!2310)) )
))
(declare-datatypes ((ListLongMap!2289 0))(
  ( (ListLongMap!2290 (toList!1160 List!2310)) )
))
(declare-fun call!18191 () ListLongMap!2289)

(declare-fun map!1933 (LongMapFixedSize!2444) ListLongMap!2289)

(assert (=> bm!18187 (= call!18191 (map!1933 thiss!1248))))

(declare-fun b!180049 () Bool)

(declare-fun e!118614 () Bool)

(declare-fun e!118612 () Bool)

(assert (=> b!180049 (= e!118614 (and e!118612 mapRes!7228))))

(declare-fun condMapEmpty!7228 () Bool)

(declare-fun mapDefault!7228 () ValueCell!1768)

