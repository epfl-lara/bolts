; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14714 () Bool)

(assert start!14714)

(declare-fun b!139368 () Bool)

(declare-fun b_free!3013 () Bool)

(declare-fun b_next!3013 () Bool)

(assert (=> b!139368 (= b_free!3013 (not b_next!3013))))

(declare-fun tp!11510 () Bool)

(declare-fun b_and!8709 () Bool)

(assert (=> b!139368 (= tp!11510 b_and!8709)))

(declare-fun b!139378 () Bool)

(declare-fun b_free!3015 () Bool)

(declare-fun b_next!3015 () Bool)

(assert (=> b!139378 (= b_free!3015 (not b_next!3015))))

(declare-fun tp!11511 () Bool)

(declare-fun b_and!8711 () Bool)

(assert (=> b!139378 (= tp!11511 b_and!8711)))

(declare-fun b!139366 () Bool)

(declare-fun res!66679 () Bool)

(declare-fun e!90866 () Bool)

(assert (=> b!139366 (=> (not res!66679) (not e!90866))))

(declare-datatypes ((V!3545 0))(
  ( (V!3546 (val!1506 Int)) )
))
(declare-datatypes ((array!4880 0))(
  ( (array!4881 (arr!2306 (Array (_ BitVec 32) (_ BitVec 64))) (size!2578 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1118 0))(
  ( (ValueCellFull!1118 (v!3271 V!3545)) (EmptyCell!1118) )
))
(declare-datatypes ((array!4882 0))(
  ( (array!4883 (arr!2307 (Array (_ BitVec 32) ValueCell!1118)) (size!2579 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1144 0))(
  ( (LongMapFixedSize!1145 (defaultEntry!2936 Int) (mask!7274 (_ BitVec 32)) (extraKeys!2691 (_ BitVec 32)) (zeroValue!2786 V!3545) (minValue!2786 V!3545) (_size!621 (_ BitVec 32)) (_keys!4695 array!4880) (_values!2919 array!4882) (_vacant!621 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1144)

(declare-fun valid!550 (LongMapFixedSize!1144) Bool)

(assert (=> b!139366 (= res!66679 (valid!550 newMap!16))))

(declare-fun mapIsEmpty!4809 () Bool)

(declare-fun mapRes!4810 () Bool)

(assert (=> mapIsEmpty!4809 mapRes!4810))

(declare-fun b!139367 () Bool)

(declare-fun e!90875 () Bool)

(declare-fun tp_is_empty!2923 () Bool)

(assert (=> b!139367 (= e!90875 tp_is_empty!2923)))

(declare-fun e!90874 () Bool)

(declare-datatypes ((Cell!932 0))(
  ( (Cell!933 (v!3272 LongMapFixedSize!1144)) )
))
(declare-datatypes ((LongMap!932 0))(
  ( (LongMap!933 (underlying!477 Cell!932)) )
))
(declare-fun thiss!992 () LongMap!932)

(declare-fun e!90867 () Bool)

(declare-fun array_inv!1425 (array!4880) Bool)

(declare-fun array_inv!1426 (array!4882) Bool)

(assert (=> b!139368 (= e!90874 (and tp!11510 tp_is_empty!2923 (array_inv!1425 (_keys!4695 (v!3272 (underlying!477 thiss!992)))) (array_inv!1426 (_values!2919 (v!3272 (underlying!477 thiss!992)))) e!90867))))

(declare-fun b!139369 () Bool)

(declare-fun e!90864 () Bool)

(declare-fun e!90873 () Bool)

(assert (=> b!139369 (= e!90864 e!90873)))

(declare-fun res!66677 () Bool)

(assert (=> b!139369 (=> (not res!66677) (not e!90873))))

(declare-datatypes ((tuple2!2670 0))(
  ( (tuple2!2671 (_1!1345 (_ BitVec 64)) (_2!1345 V!3545)) )
))
(declare-datatypes ((List!1758 0))(
  ( (Nil!1755) (Cons!1754 (h!2361 tuple2!2670) (t!6338 List!1758)) )
))
(declare-datatypes ((ListLongMap!1739 0))(
  ( (ListLongMap!1740 (toList!885 List!1758)) )
))
(declare-fun lt!73002 () ListLongMap!1739)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!918 (ListLongMap!1739 (_ BitVec 64)) Bool)

(assert (=> b!139369 (= res!66677 (contains!918 lt!73002 (select (arr!2306 (_keys!4695 (v!3272 (underlying!477 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2672 0))(
  ( (tuple2!2673 (_1!1346 Bool) (_2!1346 LongMapFixedSize!1144)) )
))
(declare-fun lt!73004 () tuple2!2672)

(declare-fun update!207 (LongMapFixedSize!1144 (_ BitVec 64) V!3545) tuple2!2672)

(declare-fun get!1530 (ValueCell!1118 V!3545) V!3545)

(declare-fun dynLambda!440 (Int (_ BitVec 64)) V!3545)

(assert (=> b!139369 (= lt!73004 (update!207 newMap!16 (select (arr!2306 (_keys!4695 (v!3272 (underlying!477 thiss!992)))) from!355) (get!1530 (select (arr!2307 (_values!2919 (v!3272 (underlying!477 thiss!992)))) from!355) (dynLambda!440 (defaultEntry!2936 (v!3272 (underlying!477 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!139370 () Bool)

(declare-fun e!90868 () Bool)

(assert (=> b!139370 (= e!90868 e!90874)))

(declare-fun b!139371 () Bool)

(declare-fun e!90872 () Bool)

(assert (=> b!139371 (= e!90867 (and e!90872 mapRes!4810))))

(declare-fun condMapEmpty!4809 () Bool)

(declare-fun mapDefault!4810 () ValueCell!1118)

