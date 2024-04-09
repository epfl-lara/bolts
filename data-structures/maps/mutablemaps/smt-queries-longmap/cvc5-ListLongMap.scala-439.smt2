; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8258 () Bool)

(assert start!8258)

(declare-fun b!52488 () Bool)

(declare-fun b_free!1657 () Bool)

(declare-fun b_next!1657 () Bool)

(assert (=> b!52488 (= b_free!1657 (not b_next!1657))))

(declare-fun tp!7073 () Bool)

(declare-fun b_and!2877 () Bool)

(assert (=> b!52488 (= tp!7073 b_and!2877)))

(declare-fun b!52490 () Bool)

(declare-fun b_free!1659 () Bool)

(declare-fun b_next!1659 () Bool)

(assert (=> b!52490 (= b_free!1659 (not b_next!1659))))

(declare-fun tp!7071 () Bool)

(declare-fun b_and!2879 () Bool)

(assert (=> b!52490 (= tp!7071 b_and!2879)))

(declare-fun b!52478 () Bool)

(declare-fun e!34173 () Bool)

(declare-fun tp_is_empty!2245 () Bool)

(assert (=> b!52478 (= e!34173 tp_is_empty!2245)))

(declare-fun mapNonEmpty!2405 () Bool)

(declare-fun mapRes!2405 () Bool)

(declare-fun tp!7074 () Bool)

(assert (=> mapNonEmpty!2405 (= mapRes!2405 (and tp!7074 e!34173))))

(declare-datatypes ((V!2641 0))(
  ( (V!2642 (val!1167 Int)) )
))
(declare-datatypes ((ValueCell!779 0))(
  ( (ValueCellFull!779 (v!2219 V!2641)) (EmptyCell!779) )
))
(declare-fun mapValue!2406 () ValueCell!779)

(declare-fun mapKey!2406 () (_ BitVec 32))

(declare-datatypes ((array!3412 0))(
  ( (array!3413 (arr!1628 (Array (_ BitVec 32) (_ BitVec 64))) (size!1857 (_ BitVec 32))) )
))
(declare-datatypes ((array!3414 0))(
  ( (array!3415 (arr!1629 (Array (_ BitVec 32) ValueCell!779)) (size!1858 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!466 0))(
  ( (LongMapFixedSize!467 (defaultEntry!1947 Int) (mask!5772 (_ BitVec 32)) (extraKeys!1838 (_ BitVec 32)) (zeroValue!1865 V!2641) (minValue!1865 V!2641) (_size!282 (_ BitVec 32)) (_keys!3567 array!3412) (_values!1930 array!3414) (_vacant!282 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!466)

(declare-fun mapRest!2405 () (Array (_ BitVec 32) ValueCell!779))

(assert (=> mapNonEmpty!2405 (= (arr!1629 (_values!1930 newMap!16)) (store mapRest!2405 mapKey!2406 mapValue!2406))))

(declare-fun b!52479 () Bool)

(declare-fun e!34176 () Bool)

(assert (=> b!52479 (= e!34176 false)))

(declare-datatypes ((tuple2!1854 0))(
  ( (tuple2!1855 (_1!937 (_ BitVec 64)) (_2!937 V!2641)) )
))
(declare-datatypes ((List!1360 0))(
  ( (Nil!1357) (Cons!1356 (h!1936 tuple2!1854) (t!4402 List!1360)) )
))
(declare-datatypes ((ListLongMap!1273 0))(
  ( (ListLongMap!1274 (toList!652 List!1360)) )
))
(declare-fun lt!21295 () ListLongMap!1273)

(declare-fun map!1017 (LongMapFixedSize!466) ListLongMap!1273)

(assert (=> b!52479 (= lt!21295 (map!1017 newMap!16))))

(declare-fun lt!21294 () ListLongMap!1273)

(declare-datatypes ((Cell!282 0))(
  ( (Cell!283 (v!2220 LongMapFixedSize!466)) )
))
(declare-datatypes ((LongMap!282 0))(
  ( (LongMap!283 (underlying!152 Cell!282)) )
))
(declare-fun thiss!992 () LongMap!282)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!361 (array!3412 array!3414 (_ BitVec 32) (_ BitVec 32) V!2641 V!2641 (_ BitVec 32) Int) ListLongMap!1273)

(assert (=> b!52479 (= lt!21294 (getCurrentListMap!361 (_keys!3567 (v!2220 (underlying!152 thiss!992))) (_values!1930 (v!2220 (underlying!152 thiss!992))) (mask!5772 (v!2220 (underlying!152 thiss!992))) (extraKeys!1838 (v!2220 (underlying!152 thiss!992))) (zeroValue!1865 (v!2220 (underlying!152 thiss!992))) (minValue!1865 (v!2220 (underlying!152 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1947 (v!2220 (underlying!152 thiss!992)))))))

(declare-fun b!52480 () Bool)

(declare-fun res!29826 () Bool)

(assert (=> b!52480 (=> (not res!29826) (not e!34176))))

(assert (=> b!52480 (= res!29826 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5772 newMap!16)) (_size!282 (v!2220 (underlying!152 thiss!992)))))))

(declare-fun b!52481 () Bool)

(declare-fun e!34179 () Bool)

(assert (=> b!52481 (= e!34179 tp_is_empty!2245)))

(declare-fun b!52482 () Bool)

(declare-fun e!34177 () Bool)

(declare-fun e!34171 () Bool)

(assert (=> b!52482 (= e!34177 e!34171)))

(declare-fun mapIsEmpty!2405 () Bool)

(assert (=> mapIsEmpty!2405 mapRes!2405))

(declare-fun b!52483 () Bool)

(declare-fun e!34175 () Bool)

(assert (=> b!52483 (= e!34171 e!34175)))

(declare-fun b!52484 () Bool)

(declare-fun res!29824 () Bool)

(assert (=> b!52484 (=> (not res!29824) (not e!34176))))

(declare-fun valid!166 (LongMapFixedSize!466) Bool)

(assert (=> b!52484 (= res!29824 (valid!166 newMap!16))))

(declare-fun b!52485 () Bool)

(declare-fun e!34170 () Bool)

(assert (=> b!52485 (= e!34170 tp_is_empty!2245)))

(declare-fun mapIsEmpty!2406 () Bool)

(declare-fun mapRes!2406 () Bool)

(assert (=> mapIsEmpty!2406 mapRes!2406))

(declare-fun b!52486 () Bool)

(declare-fun e!34178 () Bool)

(assert (=> b!52486 (= e!34178 tp_is_empty!2245)))

(declare-fun res!29823 () Bool)

(assert (=> start!8258 (=> (not res!29823) (not e!34176))))

(declare-fun valid!167 (LongMap!282) Bool)

(assert (=> start!8258 (= res!29823 (valid!167 thiss!992))))

(assert (=> start!8258 e!34176))

(assert (=> start!8258 e!34177))

(assert (=> start!8258 true))

(declare-fun e!34181 () Bool)

(assert (=> start!8258 e!34181))

(declare-fun mapNonEmpty!2406 () Bool)

(declare-fun tp!7072 () Bool)

(assert (=> mapNonEmpty!2406 (= mapRes!2406 (and tp!7072 e!34179))))

(declare-fun mapRest!2406 () (Array (_ BitVec 32) ValueCell!779))

(declare-fun mapValue!2405 () ValueCell!779)

(declare-fun mapKey!2405 () (_ BitVec 32))

(assert (=> mapNonEmpty!2406 (= (arr!1629 (_values!1930 (v!2220 (underlying!152 thiss!992)))) (store mapRest!2406 mapKey!2405 mapValue!2405))))

(declare-fun b!52487 () Bool)

(declare-fun e!34172 () Bool)

(assert (=> b!52487 (= e!34172 (and e!34170 mapRes!2405))))

(declare-fun condMapEmpty!2405 () Bool)

(declare-fun mapDefault!2405 () ValueCell!779)

