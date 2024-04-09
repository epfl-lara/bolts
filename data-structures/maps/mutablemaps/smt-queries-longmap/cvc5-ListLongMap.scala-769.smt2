; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18110 () Bool)

(assert start!18110)

(declare-fun b!180184 () Bool)

(declare-fun b_free!4453 () Bool)

(declare-fun b_next!4453 () Bool)

(assert (=> b!180184 (= b_free!4453 (not b_next!4453))))

(declare-fun tp!16093 () Bool)

(declare-fun b_and!11005 () Bool)

(assert (=> b!180184 (= tp!16093 b_and!11005)))

(declare-fun b!180182 () Bool)

(declare-fun e!118700 () Bool)

(declare-fun tp_is_empty!4225 () Bool)

(assert (=> b!180182 (= e!118700 tp_is_empty!4225)))

(declare-fun b!180183 () Bool)

(declare-fun e!118694 () Bool)

(declare-fun e!118702 () Bool)

(assert (=> b!180183 (= e!118694 e!118702)))

(declare-datatypes ((V!5281 0))(
  ( (V!5282 (val!2157 Int)) )
))
(declare-datatypes ((tuple2!3356 0))(
  ( (tuple2!3357 (_1!1688 (_ BitVec 64)) (_2!1688 V!5281)) )
))
(declare-datatypes ((List!2312 0))(
  ( (Nil!2309) (Cons!2308 (h!2933 tuple2!3356) (t!7168 List!2312)) )
))
(declare-datatypes ((ListLongMap!2291 0))(
  ( (ListLongMap!2292 (toList!1161 List!2312)) )
))
(declare-fun lt!89050 () ListLongMap!2291)

(declare-fun call!18209 () ListLongMap!2291)

(assert (=> b!180183 (= lt!89050 call!18209)))

(declare-fun res!85362 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun contains!1230 (ListLongMap!2291 (_ BitVec 64)) Bool)

(assert (=> b!180183 (= res!85362 (not (contains!1230 lt!89050 key!828)))))

(assert (=> b!180183 (=> res!85362 e!118702)))

(declare-datatypes ((ValueCell!1769 0))(
  ( (ValueCellFull!1769 (v!4044 V!5281)) (EmptyCell!1769) )
))
(declare-datatypes ((array!7620 0))(
  ( (array!7621 (arr!3608 (Array (_ BitVec 32) (_ BitVec 64))) (size!3916 (_ BitVec 32))) )
))
(declare-datatypes ((array!7622 0))(
  ( (array!7623 (arr!3609 (Array (_ BitVec 32) ValueCell!1769)) (size!3917 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2446 0))(
  ( (LongMapFixedSize!2447 (defaultEntry!3699 Int) (mask!8697 (_ BitVec 32)) (extraKeys!3436 (_ BitVec 32)) (zeroValue!3540 V!5281) (minValue!3540 V!5281) (_size!1272 (_ BitVec 32)) (_keys!5591 array!7620) (_values!3682 array!7622) (_vacant!1272 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2446)

(declare-fun e!118696 () Bool)

(declare-fun e!118699 () Bool)

(declare-fun array_inv!2313 (array!7620) Bool)

(declare-fun array_inv!2314 (array!7622) Bool)

(assert (=> b!180184 (= e!118696 (and tp!16093 tp_is_empty!4225 (array_inv!2313 (_keys!5591 thiss!1248)) (array_inv!2314 (_values!3682 thiss!1248)) e!118699))))

(declare-fun bm!18205 () Bool)

(declare-fun call!18208 () ListLongMap!2291)

(declare-fun map!1936 (LongMapFixedSize!2446) ListLongMap!2291)

(assert (=> bm!18205 (= call!18208 (map!1936 thiss!1248))))

(declare-fun b!180185 () Bool)

(declare-fun mapRes!7234 () Bool)

(assert (=> b!180185 (= e!118699 (and e!118700 mapRes!7234))))

(declare-fun condMapEmpty!7234 () Bool)

(declare-fun mapDefault!7234 () ValueCell!1769)

