; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8268 () Bool)

(assert start!8268)

(declare-fun b!52748 () Bool)

(declare-fun b_free!1677 () Bool)

(declare-fun b_next!1677 () Bool)

(assert (=> b!52748 (= b_free!1677 (not b_next!1677))))

(declare-fun tp!7133 () Bool)

(declare-fun b_and!2905 () Bool)

(assert (=> b!52748 (= tp!7133 b_and!2905)))

(declare-fun b!52763 () Bool)

(declare-fun b_free!1679 () Bool)

(declare-fun b_next!1679 () Bool)

(assert (=> b!52763 (= b_free!1679 (not b_next!1679))))

(declare-fun tp!7134 () Bool)

(declare-fun b_and!2907 () Bool)

(assert (=> b!52763 (= tp!7134 b_and!2907)))

(declare-fun tp_is_empty!2255 () Bool)

(declare-fun e!34387 () Bool)

(declare-fun e!34386 () Bool)

(declare-datatypes ((V!2653 0))(
  ( (V!2654 (val!1172 Int)) )
))
(declare-datatypes ((array!3432 0))(
  ( (array!3433 (arr!1638 (Array (_ BitVec 32) (_ BitVec 64))) (size!1867 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!784 0))(
  ( (ValueCellFull!784 (v!2229 V!2653)) (EmptyCell!784) )
))
(declare-datatypes ((array!3434 0))(
  ( (array!3435 (arr!1639 (Array (_ BitVec 32) ValueCell!784)) (size!1868 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!476 0))(
  ( (LongMapFixedSize!477 (defaultEntry!1952 Int) (mask!5779 (_ BitVec 32)) (extraKeys!1843 (_ BitVec 32)) (zeroValue!1870 V!2653) (minValue!1870 V!2653) (_size!287 (_ BitVec 32)) (_keys!3572 array!3432) (_values!1935 array!3434) (_vacant!287 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!292 0))(
  ( (Cell!293 (v!2230 LongMapFixedSize!476)) )
))
(declare-datatypes ((LongMap!292 0))(
  ( (LongMap!293 (underlying!157 Cell!292)) )
))
(declare-fun thiss!992 () LongMap!292)

(declare-fun array_inv!957 (array!3432) Bool)

(declare-fun array_inv!958 (array!3434) Bool)

(assert (=> b!52748 (= e!34386 (and tp!7133 tp_is_empty!2255 (array_inv!957 (_keys!3572 (v!2230 (underlying!157 thiss!992)))) (array_inv!958 (_values!1935 (v!2230 (underlying!157 thiss!992)))) e!34387))))

(declare-fun b!52749 () Bool)

(declare-fun e!34388 () Bool)

(assert (=> b!52749 (= e!34388 e!34386)))

(declare-fun res!29940 () Bool)

(declare-fun e!34392 () Bool)

(assert (=> start!8268 (=> (not res!29940) (not e!34392))))

(declare-fun valid!172 (LongMap!292) Bool)

(assert (=> start!8268 (= res!29940 (valid!172 thiss!992))))

(assert (=> start!8268 e!34392))

(declare-fun e!34381 () Bool)

(assert (=> start!8268 e!34381))

(assert (=> start!8268 true))

(declare-fun e!34382 () Bool)

(assert (=> start!8268 e!34382))

(declare-fun b!52750 () Bool)

(declare-fun res!29944 () Bool)

(declare-fun e!34389 () Bool)

(assert (=> b!52750 (=> (not res!29944) (not e!34389))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!52750 (= res!29944 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1867 (_keys!3572 (v!2230 (underlying!157 thiss!992)))))))))

(declare-fun b!52751 () Bool)

(declare-fun e!34385 () Bool)

(assert (=> b!52751 (= e!34385 e!34389)))

(declare-fun res!29949 () Bool)

(assert (=> b!52751 (=> (not res!29949) (not e!34389))))

(declare-datatypes ((tuple2!1862 0))(
  ( (tuple2!1863 (_1!941 (_ BitVec 64)) (_2!941 V!2653)) )
))
(declare-datatypes ((List!1364 0))(
  ( (Nil!1361) (Cons!1360 (h!1940 tuple2!1862) (t!4418 List!1364)) )
))
(declare-datatypes ((ListLongMap!1279 0))(
  ( (ListLongMap!1280 (toList!655 List!1364)) )
))
(declare-fun lt!21343 () ListLongMap!1279)

(declare-fun contains!627 (ListLongMap!1279 (_ BitVec 64)) Bool)

(assert (=> b!52751 (= res!29949 (contains!627 lt!21343 (select (arr!1638 (_keys!3572 (v!2230 (underlying!157 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1864 0))(
  ( (tuple2!1865 (_1!942 Bool) (_2!942 LongMapFixedSize!476)) )
))
(declare-fun lt!21340 () tuple2!1864)

(declare-fun newMap!16 () LongMapFixedSize!476)

(declare-fun update!41 (LongMapFixedSize!476 (_ BitVec 64) V!2653) tuple2!1864)

(declare-fun get!984 (ValueCell!784 V!2653) V!2653)

(declare-fun dynLambda!269 (Int (_ BitVec 64)) V!2653)

(assert (=> b!52751 (= lt!21340 (update!41 newMap!16 (select (arr!1638 (_keys!3572 (v!2230 (underlying!157 thiss!992)))) from!355) (get!984 (select (arr!1639 (_values!1935 (v!2230 (underlying!157 thiss!992)))) from!355) (dynLambda!269 (defaultEntry!1952 (v!2230 (underlying!157 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!52752 () Bool)

(declare-fun e!34394 () Bool)

(assert (=> b!52752 (= e!34394 tp_is_empty!2255)))

(declare-fun b!52753 () Bool)

(declare-fun e!34380 () Bool)

(assert (=> b!52753 (= e!34380 tp_is_empty!2255)))

(declare-fun b!52754 () Bool)

(assert (=> b!52754 (= e!34392 e!34385)))

(declare-fun res!29941 () Bool)

(assert (=> b!52754 (=> (not res!29941) (not e!34385))))

(declare-fun lt!21341 () ListLongMap!1279)

(assert (=> b!52754 (= res!29941 (and (= lt!21341 lt!21343) (not (= (select (arr!1638 (_keys!3572 (v!2230 (underlying!157 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1638 (_keys!3572 (v!2230 (underlying!157 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1022 (LongMapFixedSize!476) ListLongMap!1279)

(assert (=> b!52754 (= lt!21343 (map!1022 newMap!16))))

(declare-fun getCurrentListMap!364 (array!3432 array!3434 (_ BitVec 32) (_ BitVec 32) V!2653 V!2653 (_ BitVec 32) Int) ListLongMap!1279)

(assert (=> b!52754 (= lt!21341 (getCurrentListMap!364 (_keys!3572 (v!2230 (underlying!157 thiss!992))) (_values!1935 (v!2230 (underlying!157 thiss!992))) (mask!5779 (v!2230 (underlying!157 thiss!992))) (extraKeys!1843 (v!2230 (underlying!157 thiss!992))) (zeroValue!1870 (v!2230 (underlying!157 thiss!992))) (minValue!1870 (v!2230 (underlying!157 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1952 (v!2230 (underlying!157 thiss!992)))))))

(declare-fun b!52755 () Bool)

(declare-fun res!29946 () Bool)

(assert (=> b!52755 (=> (not res!29946) (not e!34389))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3432 (_ BitVec 32)) Bool)

(assert (=> b!52755 (= res!29946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3572 (v!2230 (underlying!157 thiss!992))) (mask!5779 (v!2230 (underlying!157 thiss!992)))))))

(declare-fun b!52756 () Bool)

(declare-fun mapRes!2435 () Bool)

(assert (=> b!52756 (= e!34387 (and e!34380 mapRes!2435))))

(declare-fun condMapEmpty!2436 () Bool)

(declare-fun mapDefault!2436 () ValueCell!784)

