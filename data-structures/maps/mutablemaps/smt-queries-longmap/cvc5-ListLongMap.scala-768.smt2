; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18088 () Bool)

(assert start!18088)

(declare-fun b!179983 () Bool)

(declare-fun b_free!4447 () Bool)

(declare-fun b_next!4447 () Bool)

(assert (=> b!179983 (= b_free!4447 (not b_next!4447))))

(declare-fun tp!16071 () Bool)

(declare-fun b_and!10999 () Bool)

(assert (=> b!179983 (= tp!16071 b_and!10999)))

(declare-fun bm!18175 () Bool)

(declare-datatypes ((V!5273 0))(
  ( (V!5274 (val!2154 Int)) )
))
(declare-datatypes ((tuple2!3344 0))(
  ( (tuple2!3345 (_1!1682 (_ BitVec 64)) (_2!1682 V!5273)) )
))
(declare-datatypes ((List!2308 0))(
  ( (Nil!2305) (Cons!2304 (h!2929 tuple2!3344) (t!7164 List!2308)) )
))
(declare-datatypes ((ListLongMap!2285 0))(
  ( (ListLongMap!2286 (toList!1158 List!2308)) )
))
(declare-fun call!18178 () ListLongMap!2285)

(declare-datatypes ((ValueCell!1766 0))(
  ( (ValueCellFull!1766 (v!4039 V!5273)) (EmptyCell!1766) )
))
(declare-datatypes ((array!7606 0))(
  ( (array!7607 (arr!3602 (Array (_ BitVec 32) (_ BitVec 64))) (size!3910 (_ BitVec 32))) )
))
(declare-datatypes ((array!7608 0))(
  ( (array!7609 (arr!3603 (Array (_ BitVec 32) ValueCell!1766)) (size!3911 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2440 0))(
  ( (LongMapFixedSize!2441 (defaultEntry!3696 Int) (mask!8691 (_ BitVec 32)) (extraKeys!3433 (_ BitVec 32)) (zeroValue!3537 V!5273) (minValue!3537 V!5273) (_size!1269 (_ BitVec 32)) (_keys!5587 array!7606) (_values!3679 array!7608) (_vacant!1269 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!3346 0))(
  ( (tuple2!3347 (_1!1683 Bool) (_2!1683 LongMapFixedSize!2440)) )
))
(declare-fun lt!88901 () tuple2!3346)

(declare-fun map!1931 (LongMapFixedSize!2440) ListLongMap!2285)

(assert (=> bm!18175 (= call!18178 (map!1931 (_2!1683 lt!88901)))))

(declare-fun b!179979 () Bool)

(declare-fun e!118554 () Bool)

(declare-fun e!118555 () Bool)

(declare-fun mapRes!7222 () Bool)

(assert (=> b!179979 (= e!118554 (and e!118555 mapRes!7222))))

(declare-fun condMapEmpty!7222 () Bool)

(declare-fun thiss!1248 () LongMapFixedSize!2440)

(declare-fun mapDefault!7222 () ValueCell!1766)

