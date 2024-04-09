; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77366 () Bool)

(assert start!77366)

(declare-fun b!901841 () Bool)

(declare-fun b_free!16087 () Bool)

(declare-fun b_next!16087 () Bool)

(assert (=> b!901841 (= b_free!16087 (not b_next!16087))))

(declare-fun tp!56368 () Bool)

(declare-fun b_and!26465 () Bool)

(assert (=> b!901841 (= tp!56368 b_and!26465)))

(declare-fun b!901835 () Bool)

(declare-fun e!504995 () Bool)

(declare-datatypes ((SeekEntryResult!8942 0))(
  ( (MissingZero!8942 (index!38138 (_ BitVec 32))) (Found!8942 (index!38139 (_ BitVec 32))) (Intermediate!8942 (undefined!9754 Bool) (index!38140 (_ BitVec 32)) (x!76834 (_ BitVec 32))) (Undefined!8942) (MissingVacant!8942 (index!38141 (_ BitVec 32))) )
))
(declare-fun lt!407706 () SeekEntryResult!8942)

(declare-datatypes ((array!52876 0))(
  ( (array!52877 (arr!25400 (Array (_ BitVec 32) (_ BitVec 64))) (size!25860 (_ BitVec 32))) )
))
(declare-datatypes ((V!29519 0))(
  ( (V!29520 (val!9258 Int)) )
))
(declare-datatypes ((ValueCell!8726 0))(
  ( (ValueCellFull!8726 (v!11759 V!29519)) (EmptyCell!8726) )
))
(declare-datatypes ((array!52878 0))(
  ( (array!52879 (arr!25401 (Array (_ BitVec 32) ValueCell!8726)) (size!25861 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4468 0))(
  ( (LongMapFixedSize!4469 (defaultEntry!5480 Int) (mask!26293 (_ BitVec 32)) (extraKeys!5211 (_ BitVec 32)) (zeroValue!5315 V!29519) (minValue!5315 V!29519) (_size!2289 (_ BitVec 32)) (_keys!10293 array!52876) (_values!5502 array!52878) (_vacant!2289 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4468)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!901835 (= e!504995 (inRange!0 (index!38139 lt!407706) (mask!26293 thiss!1181)))))

(declare-fun mapNonEmpty!29314 () Bool)

(declare-fun mapRes!29314 () Bool)

(declare-fun tp!56367 () Bool)

(declare-fun e!504991 () Bool)

(assert (=> mapNonEmpty!29314 (= mapRes!29314 (and tp!56367 e!504991))))

(declare-fun mapValue!29314 () ValueCell!8726)

(declare-fun mapRest!29314 () (Array (_ BitVec 32) ValueCell!8726))

(declare-fun mapKey!29314 () (_ BitVec 32))

(assert (=> mapNonEmpty!29314 (= (arr!25401 (_values!5502 thiss!1181)) (store mapRest!29314 mapKey!29314 mapValue!29314))))

(declare-fun b!901836 () Bool)

(declare-fun e!504993 () Bool)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun dynLambda!1319 (Int (_ BitVec 64)) V!29519)

(declare-datatypes ((Option!475 0))(
  ( (Some!474 (v!11760 V!29519)) (None!473) )
))
(declare-fun get!13385 (Option!475) V!29519)

(declare-datatypes ((tuple2!12100 0))(
  ( (tuple2!12101 (_1!6060 (_ BitVec 64)) (_2!6060 V!29519)) )
))
(declare-datatypes ((List!17957 0))(
  ( (Nil!17954) (Cons!17953 (h!19099 tuple2!12100) (t!25344 List!17957)) )
))
(declare-fun getValueByKey!469 (List!17957 (_ BitVec 64)) Option!475)

(declare-datatypes ((ListLongMap!10811 0))(
  ( (ListLongMap!10812 (toList!5421 List!17957)) )
))
(declare-fun map!12303 (LongMapFixedSize!4468) ListLongMap!10811)

(assert (=> b!901836 (= e!504993 (= (dynLambda!1319 (defaultEntry!5480 thiss!1181) key!785) (get!13385 (getValueByKey!469 (toList!5421 (map!12303 thiss!1181)) key!785))))))

(declare-fun b!901837 () Bool)

(declare-fun e!504990 () Bool)

(declare-fun tp_is_empty!18415 () Bool)

(assert (=> b!901837 (= e!504990 tp_is_empty!18415)))

(declare-fun b!901838 () Bool)

(declare-fun e!504996 () Bool)

(assert (=> b!901838 (= e!504996 (and e!504990 mapRes!29314))))

(declare-fun condMapEmpty!29314 () Bool)

(declare-fun mapDefault!29314 () ValueCell!8726)

