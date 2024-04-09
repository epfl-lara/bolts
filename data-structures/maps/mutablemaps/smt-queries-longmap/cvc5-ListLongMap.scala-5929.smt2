; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77290 () Bool)

(assert start!77290)

(declare-fun b!901241 () Bool)

(declare-fun b_free!16075 () Bool)

(declare-fun b_next!16075 () Bool)

(assert (=> b!901241 (= b_free!16075 (not b_next!16075))))

(declare-fun tp!56326 () Bool)

(declare-fun b_and!26421 () Bool)

(assert (=> b!901241 (= tp!56326 b_and!26421)))

(declare-fun bm!40116 () Bool)

(declare-datatypes ((V!29503 0))(
  ( (V!29504 (val!9252 Int)) )
))
(declare-fun call!40119 () V!29503)

(declare-datatypes ((tuple2!12090 0))(
  ( (tuple2!12091 (_1!6055 (_ BitVec 64)) (_2!6055 V!29503)) )
))
(declare-datatypes ((List!17950 0))(
  ( (Nil!17947) (Cons!17946 (h!19092 tuple2!12090) (t!25319 List!17950)) )
))
(declare-datatypes ((ListLongMap!10801 0))(
  ( (ListLongMap!10802 (toList!5416 List!17950)) )
))
(declare-fun lt!407342 () ListLongMap!10801)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun apply!419 (ListLongMap!10801 (_ BitVec 64)) V!29503)

(assert (=> bm!40116 (= call!40119 (apply!419 lt!407342 key!785))))

(declare-datatypes ((array!52848 0))(
  ( (array!52849 (arr!25388 (Array (_ BitVec 32) (_ BitVec 64))) (size!25848 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!8720 0))(
  ( (ValueCellFull!8720 (v!11749 V!29503)) (EmptyCell!8720) )
))
(declare-datatypes ((array!52850 0))(
  ( (array!52851 (arr!25389 (Array (_ BitVec 32) ValueCell!8720)) (size!25849 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4456 0))(
  ( (LongMapFixedSize!4457 (defaultEntry!5468 Int) (mask!26271 (_ BitVec 32)) (extraKeys!5197 (_ BitVec 32)) (zeroValue!5301 V!29503) (minValue!5301 V!29503) (_size!2283 (_ BitVec 32)) (_keys!10277 array!52848) (_values!5488 array!52850) (_vacant!2283 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4456)

(declare-fun call!40120 () V!29503)

(declare-fun e!504575 () Bool)

(declare-fun b!901229 () Bool)

(declare-datatypes ((SeekEntryResult!8936 0))(
  ( (MissingZero!8936 (index!38114 (_ BitVec 32))) (Found!8936 (index!38115 (_ BitVec 32))) (Intermediate!8936 (undefined!9748 Bool) (index!38116 (_ BitVec 32)) (x!76780 (_ BitVec 32))) (Undefined!8936) (MissingVacant!8936 (index!38117 (_ BitVec 32))) )
))
(declare-fun lt!407345 () SeekEntryResult!8936)

(declare-fun get!13368 (ValueCell!8720 V!29503) V!29503)

(declare-fun dynLambda!1314 (Int (_ BitVec 64)) V!29503)

(assert (=> b!901229 (= e!504575 (= call!40120 (get!13368 (select (arr!25389 (_values!5488 thiss!1181)) (index!38115 lt!407345)) (dynLambda!1314 (defaultEntry!5468 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!29290 () Bool)

(declare-fun mapRes!29290 () Bool)

(declare-fun tp!56325 () Bool)

(declare-fun e!504569 () Bool)

(assert (=> mapNonEmpty!29290 (= mapRes!29290 (and tp!56325 e!504569))))

(declare-fun mapRest!29290 () (Array (_ BitVec 32) ValueCell!8720))

(declare-fun mapKey!29290 () (_ BitVec 32))

(declare-fun mapValue!29290 () ValueCell!8720)

(assert (=> mapNonEmpty!29290 (= (arr!25389 (_values!5488 thiss!1181)) (store mapRest!29290 mapKey!29290 mapValue!29290))))

(declare-fun b!901230 () Bool)

(declare-fun e!504573 () Bool)

(assert (=> b!901230 (= e!504573 (= call!40119 (zeroValue!5301 thiss!1181)))))

(declare-fun b!901231 () Bool)

(declare-fun e!504576 () Bool)

(declare-fun e!504574 () Bool)

(assert (=> b!901231 (= e!504576 (and e!504574 mapRes!29290))))

(declare-fun condMapEmpty!29290 () Bool)

(declare-fun mapDefault!29290 () ValueCell!8720)

