; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11270 () Bool)

(assert start!11270)

(declare-fun b!92536 () Bool)

(declare-fun b_free!2341 () Bool)

(declare-fun b_next!2341 () Bool)

(assert (=> b!92536 (= b_free!2341 (not b_next!2341))))

(declare-fun tp!9282 () Bool)

(declare-fun b_and!5601 () Bool)

(assert (=> b!92536 (= tp!9282 b_and!5601)))

(declare-fun b!92545 () Bool)

(declare-fun b_free!2343 () Bool)

(declare-fun b_next!2343 () Bool)

(assert (=> b!92545 (= b_free!2343 (not b_next!2343))))

(declare-fun tp!9281 () Bool)

(declare-fun b_and!5603 () Bool)

(assert (=> b!92545 (= tp!9281 b_and!5603)))

(declare-fun b!92528 () Bool)

(declare-fun res!47036 () Bool)

(declare-fun e!60322 () Bool)

(assert (=> b!92528 (=> res!47036 e!60322)))

(declare-datatypes ((V!3097 0))(
  ( (V!3098 (val!1338 Int)) )
))
(declare-datatypes ((array!4144 0))(
  ( (array!4145 (arr!1970 (Array (_ BitVec 32) (_ BitVec 64))) (size!2218 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!950 0))(
  ( (ValueCellFull!950 (v!2732 V!3097)) (EmptyCell!950) )
))
(declare-datatypes ((array!4146 0))(
  ( (array!4147 (arr!1971 (Array (_ BitVec 32) ValueCell!950)) (size!2219 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!808 0))(
  ( (LongMapFixedSize!809 (defaultEntry!2418 Int) (mask!6484 (_ BitVec 32)) (extraKeys!2247 (_ BitVec 32)) (zeroValue!2305 V!3097) (minValue!2305 V!3097) (_size!453 (_ BitVec 32)) (_keys!4100 array!4144) (_values!2401 array!4146) (_vacant!453 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2298 0))(
  ( (tuple2!2299 (_1!1159 Bool) (_2!1159 LongMapFixedSize!808)) )
))
(declare-fun lt!45372 () tuple2!2298)

(declare-fun valid!358 (LongMapFixedSize!808) Bool)

(assert (=> b!92528 (= res!47036 (not (valid!358 (_2!1159 lt!45372))))))

(declare-fun b!92529 () Bool)

(declare-fun e!60320 () Bool)

(declare-fun e!60329 () Bool)

(assert (=> b!92529 (= e!60320 e!60329)))

(declare-fun res!47037 () Bool)

(assert (=> b!92529 (=> (not res!47037) (not e!60329))))

(declare-datatypes ((Cell!612 0))(
  ( (Cell!613 (v!2733 LongMapFixedSize!808)) )
))
(declare-datatypes ((LongMap!612 0))(
  ( (LongMap!613 (underlying!317 Cell!612)) )
))
(declare-fun thiss!992 () LongMap!612)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!92529 (= res!47037 (and (not (= (select (arr!1970 (_keys!4100 (v!2733 (underlying!317 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1970 (_keys!4100 (v!2733 (underlying!317 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!45374 () V!3097)

(declare-fun get!1260 (ValueCell!950 V!3097) V!3097)

(declare-fun dynLambda!366 (Int (_ BitVec 64)) V!3097)

(assert (=> b!92529 (= lt!45374 (get!1260 (select (arr!1971 (_values!2401 (v!2733 (underlying!317 thiss!992)))) from!355) (dynLambda!366 (defaultEntry!2418 (v!2733 (underlying!317 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!3589 () Bool)

(declare-fun mapRes!3590 () Bool)

(assert (=> mapIsEmpty!3589 mapRes!3590))

(declare-fun mapIsEmpty!3590 () Bool)

(declare-fun mapRes!3589 () Bool)

(assert (=> mapIsEmpty!3590 mapRes!3589))

(declare-fun b!92530 () Bool)

(declare-fun res!47041 () Bool)

(assert (=> b!92530 (=> res!47041 e!60322)))

(assert (=> b!92530 (= res!47041 (bvslt (bvadd #b00000000000000000000000000000001 (mask!6484 (_2!1159 lt!45372))) (_size!453 (v!2733 (underlying!317 thiss!992)))))))

(declare-fun b!92531 () Bool)

(declare-fun res!47035 () Bool)

(declare-fun e!60321 () Bool)

(assert (=> b!92531 (=> (not res!47035) (not e!60321))))

(declare-fun newMap!16 () LongMapFixedSize!808)

(assert (=> b!92531 (= res!47035 (valid!358 newMap!16))))

(declare-fun b!92532 () Bool)

(declare-fun e!60326 () Bool)

(assert (=> b!92532 (= e!60326 (not e!60322))))

(declare-fun res!47039 () Bool)

(assert (=> b!92532 (=> res!47039 e!60322)))

(declare-datatypes ((tuple2!2300 0))(
  ( (tuple2!2301 (_1!1160 (_ BitVec 64)) (_2!1160 V!3097)) )
))
(declare-datatypes ((List!1585 0))(
  ( (Nil!1582) (Cons!1581 (h!2173 tuple2!2300) (t!5439 List!1585)) )
))
(declare-datatypes ((ListLongMap!1521 0))(
  ( (ListLongMap!1522 (toList!776 List!1585)) )
))
(declare-fun lt!45365 () ListLongMap!1521)

(declare-fun lt!45367 () ListLongMap!1521)

(assert (=> b!92532 (= res!47039 (or (not (= lt!45365 lt!45367)) (bvsge (bvsub from!355 #b00000000000000000000000000000001) (size!2218 (_keys!4100 (v!2733 (underlying!317 thiss!992)))))))))

(declare-fun map!1228 (LongMapFixedSize!808) ListLongMap!1521)

(assert (=> b!92532 (= lt!45367 (map!1228 (_2!1159 lt!45372)))))

(declare-fun getCurrentListMap!458 (array!4144 array!4146 (_ BitVec 32) (_ BitVec 32) V!3097 V!3097 (_ BitVec 32) Int) ListLongMap!1521)

(assert (=> b!92532 (= lt!45365 (getCurrentListMap!458 (_keys!4100 (v!2733 (underlying!317 thiss!992))) (_values!2401 (v!2733 (underlying!317 thiss!992))) (mask!6484 (v!2733 (underlying!317 thiss!992))) (extraKeys!2247 (v!2733 (underlying!317 thiss!992))) (zeroValue!2305 (v!2733 (underlying!317 thiss!992))) (minValue!2305 (v!2733 (underlying!317 thiss!992))) from!355 (defaultEntry!2418 (v!2733 (underlying!317 thiss!992)))))))

(declare-fun lt!45373 () tuple2!2300)

(declare-fun lt!45381 () tuple2!2300)

(declare-fun lt!45370 () ListLongMap!1521)

(declare-fun lt!45368 () ListLongMap!1521)

(declare-fun +!131 (ListLongMap!1521 tuple2!2300) ListLongMap!1521)

(assert (=> b!92532 (= (+!131 lt!45368 lt!45381) (+!131 (+!131 lt!45370 lt!45381) lt!45373))))

(assert (=> b!92532 (= lt!45381 (tuple2!2301 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2305 (v!2733 (underlying!317 thiss!992)))))))

(declare-datatypes ((Unit!2780 0))(
  ( (Unit!2781) )
))
(declare-fun lt!45369 () Unit!2780)

(declare-fun addCommutativeForDiffKeys!50 (ListLongMap!1521 (_ BitVec 64) V!3097 (_ BitVec 64) V!3097) Unit!2780)

(assert (=> b!92532 (= lt!45369 (addCommutativeForDiffKeys!50 lt!45370 (select (arr!1970 (_keys!4100 (v!2733 (underlying!317 thiss!992)))) from!355) lt!45374 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2305 (v!2733 (underlying!317 thiss!992)))))))

(declare-fun lt!45363 () ListLongMap!1521)

(assert (=> b!92532 (= lt!45363 lt!45368)))

(assert (=> b!92532 (= lt!45368 (+!131 lt!45370 lt!45373))))

(declare-fun lt!45380 () ListLongMap!1521)

(declare-fun lt!45376 () tuple2!2300)

(assert (=> b!92532 (= lt!45363 (+!131 lt!45380 lt!45376))))

(declare-fun lt!45378 () ListLongMap!1521)

(assert (=> b!92532 (= lt!45370 (+!131 lt!45378 lt!45376))))

(assert (=> b!92532 (= lt!45376 (tuple2!2301 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2305 (v!2733 (underlying!317 thiss!992)))))))

(assert (=> b!92532 (= lt!45380 (+!131 lt!45378 lt!45373))))

(assert (=> b!92532 (= lt!45373 (tuple2!2301 (select (arr!1970 (_keys!4100 (v!2733 (underlying!317 thiss!992)))) from!355) lt!45374))))

(declare-fun lt!45379 () Unit!2780)

(assert (=> b!92532 (= lt!45379 (addCommutativeForDiffKeys!50 lt!45378 (select (arr!1970 (_keys!4100 (v!2733 (underlying!317 thiss!992)))) from!355) lt!45374 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2305 (v!2733 (underlying!317 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!95 (array!4144 array!4146 (_ BitVec 32) (_ BitVec 32) V!3097 V!3097 (_ BitVec 32) Int) ListLongMap!1521)

(assert (=> b!92532 (= lt!45378 (getCurrentListMapNoExtraKeys!95 (_keys!4100 (v!2733 (underlying!317 thiss!992))) (_values!2401 (v!2733 (underlying!317 thiss!992))) (mask!6484 (v!2733 (underlying!317 thiss!992))) (extraKeys!2247 (v!2733 (underlying!317 thiss!992))) (zeroValue!2305 (v!2733 (underlying!317 thiss!992))) (minValue!2305 (v!2733 (underlying!317 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2418 (v!2733 (underlying!317 thiss!992)))))))

(declare-fun b!92533 () Bool)

(declare-fun res!47038 () Bool)

(assert (=> b!92533 (=> (not res!47038) (not e!60321))))

(assert (=> b!92533 (= res!47038 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2218 (_keys!4100 (v!2733 (underlying!317 thiss!992)))))))))

(declare-fun b!92534 () Bool)

(declare-fun res!47034 () Bool)

(assert (=> b!92534 (=> (not res!47034) (not e!60321))))

(assert (=> b!92534 (= res!47034 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6484 newMap!16)) (_size!453 (v!2733 (underlying!317 thiss!992)))))))

(declare-fun b!92535 () Bool)

(declare-fun e!60324 () Bool)

(declare-fun tp_is_empty!2587 () Bool)

(assert (=> b!92535 (= e!60324 tp_is_empty!2587)))

(declare-fun e!60334 () Bool)

(declare-fun e!60327 () Bool)

(declare-fun array_inv!1181 (array!4144) Bool)

(declare-fun array_inv!1182 (array!4146) Bool)

(assert (=> b!92536 (= e!60327 (and tp!9282 tp_is_empty!2587 (array_inv!1181 (_keys!4100 (v!2733 (underlying!317 thiss!992)))) (array_inv!1182 (_values!2401 (v!2733 (underlying!317 thiss!992)))) e!60334))))

(declare-fun b!92537 () Bool)

(declare-fun e!60317 () Bool)

(declare-fun e!60319 () Bool)

(assert (=> b!92537 (= e!60317 (and e!60319 mapRes!3589))))

(declare-fun condMapEmpty!3590 () Bool)

(declare-fun mapDefault!3590 () ValueCell!950)

