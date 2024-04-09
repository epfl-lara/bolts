; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77154 () Bool)

(assert start!77154)

(declare-fun b!900160 () Bool)

(declare-fun b_free!16049 () Bool)

(declare-fun b_next!16049 () Bool)

(assert (=> b!900160 (= b_free!16049 (not b_next!16049))))

(declare-fun tp!56235 () Bool)

(declare-fun b_and!26387 () Bool)

(assert (=> b!900160 (= tp!56235 b_and!26387)))

(declare-fun res!608031 () Bool)

(declare-fun e!503836 () Bool)

(assert (=> start!77154 (=> (not res!608031) (not e!503836))))

(declare-datatypes ((array!52788 0))(
  ( (array!52789 (arr!25362 (Array (_ BitVec 32) (_ BitVec 64))) (size!25822 (_ BitVec 32))) )
))
(declare-datatypes ((V!29467 0))(
  ( (V!29468 (val!9239 Int)) )
))
(declare-datatypes ((ValueCell!8707 0))(
  ( (ValueCellFull!8707 (v!11732 V!29467)) (EmptyCell!8707) )
))
(declare-datatypes ((array!52790 0))(
  ( (array!52791 (arr!25363 (Array (_ BitVec 32) ValueCell!8707)) (size!25823 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4430 0))(
  ( (LongMapFixedSize!4431 (defaultEntry!5447 Int) (mask!26220 (_ BitVec 32)) (extraKeys!5172 (_ BitVec 32)) (zeroValue!5276 V!29467) (minValue!5276 V!29467) (_size!2270 (_ BitVec 32)) (_keys!10244 array!52788) (_values!5463 array!52790) (_vacant!2270 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4430)

(declare-fun valid!1686 (LongMapFixedSize!4430) Bool)

(assert (=> start!77154 (= res!608031 (valid!1686 thiss!1181))))

(assert (=> start!77154 e!503836))

(declare-fun e!503837 () Bool)

(assert (=> start!77154 e!503837))

(assert (=> start!77154 true))

(declare-fun b!900158 () Bool)

(declare-fun e!503838 () Bool)

(declare-datatypes ((SeekEntryResult!8925 0))(
  ( (MissingZero!8925 (index!38070 (_ BitVec 32))) (Found!8925 (index!38071 (_ BitVec 32))) (Intermediate!8925 (undefined!9737 Bool) (index!38072 (_ BitVec 32)) (x!76687 (_ BitVec 32))) (Undefined!8925) (MissingVacant!8925 (index!38073 (_ BitVec 32))) )
))
(declare-fun lt!406704 () SeekEntryResult!8925)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!900158 (= e!503838 (inRange!0 (index!38071 lt!406704) (mask!26220 thiss!1181)))))

(declare-fun b!900159 () Bool)

(declare-fun e!503833 () Bool)

(declare-fun tp_is_empty!18377 () Bool)

(assert (=> b!900159 (= e!503833 tp_is_empty!18377)))

(declare-fun e!503832 () Bool)

(declare-fun array_inv!19874 (array!52788) Bool)

(declare-fun array_inv!19875 (array!52790) Bool)

(assert (=> b!900160 (= e!503837 (and tp!56235 tp_is_empty!18377 (array_inv!19874 (_keys!10244 thiss!1181)) (array_inv!19875 (_values!5463 thiss!1181)) e!503832))))

(declare-fun b!900161 () Bool)

(declare-fun e!503839 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52788 (_ BitVec 32)) Bool)

(assert (=> b!900161 (= e!503839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10244 thiss!1181) (mask!26220 thiss!1181)))))

(declare-fun b!900162 () Bool)

(declare-fun e!503835 () Bool)

(assert (=> b!900162 (= e!503835 e!503839)))

(declare-fun res!608036 () Bool)

(assert (=> b!900162 (=> res!608036 e!503839)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!900162 (= res!608036 (not (validMask!0 (mask!26220 thiss!1181))))))

(declare-datatypes ((tuple2!12072 0))(
  ( (tuple2!12073 (_1!6046 (_ BitVec 64)) (_2!6046 V!29467)) )
))
(declare-datatypes ((List!17930 0))(
  ( (Nil!17927) (Cons!17926 (h!19072 tuple2!12072) (t!25289 List!17930)) )
))
(declare-datatypes ((ListLongMap!10783 0))(
  ( (ListLongMap!10784 (toList!5407 List!17930)) )
))
(declare-fun contains!4414 (ListLongMap!10783 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2650 (array!52788 array!52790 (_ BitVec 32) (_ BitVec 32) V!29467 V!29467 (_ BitVec 32) Int) ListLongMap!10783)

(assert (=> b!900162 (contains!4414 (getCurrentListMap!2650 (_keys!10244 thiss!1181) (_values!5463 thiss!1181) (mask!26220 thiss!1181) (extraKeys!5172 thiss!1181) (zeroValue!5276 thiss!1181) (minValue!5276 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5447 thiss!1181)) (select (arr!25362 (_keys!10244 thiss!1181)) (index!38071 lt!406704)))))

(declare-datatypes ((Unit!30555 0))(
  ( (Unit!30556) )
))
(declare-fun lt!406703 () Unit!30555)

(declare-fun lemmaValidKeyInArrayIsInListMap!243 (array!52788 array!52790 (_ BitVec 32) (_ BitVec 32) V!29467 V!29467 (_ BitVec 32) Int) Unit!30555)

(assert (=> b!900162 (= lt!406703 (lemmaValidKeyInArrayIsInListMap!243 (_keys!10244 thiss!1181) (_values!5463 thiss!1181) (mask!26220 thiss!1181) (extraKeys!5172 thiss!1181) (zeroValue!5276 thiss!1181) (minValue!5276 thiss!1181) (index!38071 lt!406704) (defaultEntry!5447 thiss!1181)))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52788 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!900162 (arrayContainsKey!0 (_keys!10244 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!406705 () Unit!30555)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52788 (_ BitVec 64) (_ BitVec 32)) Unit!30555)

(assert (=> b!900162 (= lt!406705 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10244 thiss!1181) key!785 (index!38071 lt!406704)))))

(declare-fun b!900163 () Bool)

(declare-fun e!503834 () Bool)

(declare-fun mapRes!29239 () Bool)

(assert (=> b!900163 (= e!503832 (and e!503834 mapRes!29239))))

(declare-fun condMapEmpty!29239 () Bool)

(declare-fun mapDefault!29239 () ValueCell!8707)

