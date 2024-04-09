; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12962 () Bool)

(assert start!12962)

(declare-fun b!112861 () Bool)

(declare-fun b_free!2581 () Bool)

(declare-fun b_next!2581 () Bool)

(assert (=> b!112861 (= b_free!2581 (not b_next!2581))))

(declare-fun tp!10097 () Bool)

(declare-fun b_and!6941 () Bool)

(assert (=> b!112861 (= tp!10097 b_and!6941)))

(declare-fun b!112867 () Bool)

(declare-fun b_free!2583 () Bool)

(declare-fun b_next!2583 () Bool)

(assert (=> b!112867 (= b_free!2583 (not b_next!2583))))

(declare-fun tp!10095 () Bool)

(declare-fun b_and!6943 () Bool)

(assert (=> b!112867 (= tp!10095 b_and!6943)))

(declare-fun b!112847 () Bool)

(declare-datatypes ((Unit!3531 0))(
  ( (Unit!3532) )
))
(declare-fun e!73356 () Unit!3531)

(declare-fun Unit!3533 () Unit!3531)

(assert (=> b!112847 (= e!73356 Unit!3533)))

(declare-fun b!112848 () Bool)

(declare-fun res!55647 () Bool)

(declare-fun e!73349 () Bool)

(assert (=> b!112848 (=> (not res!55647) (not e!73349))))

(declare-datatypes ((V!3257 0))(
  ( (V!3258 (val!1398 Int)) )
))
(declare-datatypes ((array!4412 0))(
  ( (array!4413 (arr!2090 (Array (_ BitVec 32) (_ BitVec 64))) (size!2349 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1010 0))(
  ( (ValueCellFull!1010 (v!2955 V!3257)) (EmptyCell!1010) )
))
(declare-datatypes ((array!4414 0))(
  ( (array!4415 (arr!2091 (Array (_ BitVec 32) ValueCell!1010)) (size!2350 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!928 0))(
  ( (LongMapFixedSize!929 (defaultEntry!2660 Int) (mask!6844 (_ BitVec 32)) (extraKeys!2451 (_ BitVec 32)) (zeroValue!2528 V!3257) (minValue!2528 V!3257) (_size!513 (_ BitVec 32)) (_keys!4380 array!4412) (_values!2643 array!4414) (_vacant!513 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!928)

(declare-fun valid!426 (LongMapFixedSize!928) Bool)

(assert (=> b!112848 (= res!55647 (valid!426 newMap!16))))

(declare-fun mapNonEmpty!4043 () Bool)

(declare-fun mapRes!4044 () Bool)

(declare-fun tp!10098 () Bool)

(declare-fun e!73350 () Bool)

(assert (=> mapNonEmpty!4043 (= mapRes!4044 (and tp!10098 e!73350))))

(declare-datatypes ((Cell!728 0))(
  ( (Cell!729 (v!2956 LongMapFixedSize!928)) )
))
(declare-datatypes ((LongMap!728 0))(
  ( (LongMap!729 (underlying!375 Cell!728)) )
))
(declare-fun thiss!992 () LongMap!728)

(declare-fun mapKey!4044 () (_ BitVec 32))

(declare-fun mapRest!4044 () (Array (_ BitVec 32) ValueCell!1010))

(declare-fun mapValue!4044 () ValueCell!1010)

(assert (=> mapNonEmpty!4043 (= (arr!2091 (_values!2643 (v!2956 (underlying!375 thiss!992)))) (store mapRest!4044 mapKey!4044 mapValue!4044))))

(declare-fun b!112849 () Bool)

(declare-fun e!73359 () Bool)

(declare-fun tp_is_empty!2707 () Bool)

(assert (=> b!112849 (= e!73359 tp_is_empty!2707)))

(declare-fun res!55642 () Bool)

(assert (=> start!12962 (=> (not res!55642) (not e!73349))))

(declare-fun valid!427 (LongMap!728) Bool)

(assert (=> start!12962 (= res!55642 (valid!427 thiss!992))))

(assert (=> start!12962 e!73349))

(declare-fun e!73347 () Bool)

(assert (=> start!12962 e!73347))

(assert (=> start!12962 true))

(declare-fun e!73351 () Bool)

(assert (=> start!12962 e!73351))

(declare-fun mapIsEmpty!4043 () Bool)

(declare-fun mapRes!4043 () Bool)

(assert (=> mapIsEmpty!4043 mapRes!4043))

(declare-fun b!112850 () Bool)

(declare-fun e!73360 () Bool)

(assert (=> b!112850 (= e!73349 e!73360)))

(declare-fun res!55638 () Bool)

(assert (=> b!112850 (=> (not res!55638) (not e!73360))))

(declare-datatypes ((tuple2!2440 0))(
  ( (tuple2!2441 (_1!1230 (_ BitVec 64)) (_2!1230 V!3257)) )
))
(declare-datatypes ((List!1659 0))(
  ( (Nil!1656) (Cons!1655 (h!2255 tuple2!2440) (t!5841 List!1659)) )
))
(declare-datatypes ((ListLongMap!1601 0))(
  ( (ListLongMap!1602 (toList!816 List!1659)) )
))
(declare-fun lt!58458 () ListLongMap!1601)

(declare-fun lt!58451 () ListLongMap!1601)

(assert (=> b!112850 (= res!55638 (= lt!58458 lt!58451))))

(declare-fun map!1301 (LongMapFixedSize!928) ListLongMap!1601)

(assert (=> b!112850 (= lt!58451 (map!1301 newMap!16))))

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!492 (array!4412 array!4414 (_ BitVec 32) (_ BitVec 32) V!3257 V!3257 (_ BitVec 32) Int) ListLongMap!1601)

(assert (=> b!112850 (= lt!58458 (getCurrentListMap!492 (_keys!4380 (v!2956 (underlying!375 thiss!992))) (_values!2643 (v!2956 (underlying!375 thiss!992))) (mask!6844 (v!2956 (underlying!375 thiss!992))) (extraKeys!2451 (v!2956 (underlying!375 thiss!992))) (zeroValue!2528 (v!2956 (underlying!375 thiss!992))) (minValue!2528 (v!2956 (underlying!375 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2660 (v!2956 (underlying!375 thiss!992)))))))

(declare-fun b!112851 () Bool)

(declare-fun e!73355 () Bool)

(assert (=> b!112851 (= e!73355 (and e!73359 mapRes!4043))))

(declare-fun condMapEmpty!4044 () Bool)

(declare-fun mapDefault!4044 () ValueCell!1010)

