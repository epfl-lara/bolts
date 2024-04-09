; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18030 () Bool)

(assert start!18030)

(declare-fun b!179389 () Bool)

(declare-fun b_free!4427 () Bool)

(declare-fun b_next!4427 () Bool)

(assert (=> b!179389 (= b_free!4427 (not b_next!4427))))

(declare-fun tp!16005 () Bool)

(declare-fun b_and!10975 () Bool)

(assert (=> b!179389 (= tp!16005 b_and!10975)))

(declare-fun mapIsEmpty!7186 () Bool)

(declare-fun mapRes!7186 () Bool)

(assert (=> mapIsEmpty!7186 mapRes!7186))

(declare-fun b!179386 () Bool)

(declare-fun res!84982 () Bool)

(declare-fun e!118190 () Bool)

(assert (=> b!179386 (=> (not res!84982) (not e!118190))))

(declare-datatypes ((V!5245 0))(
  ( (V!5246 (val!2144 Int)) )
))
(declare-datatypes ((ValueCell!1756 0))(
  ( (ValueCellFull!1756 (v!4027 V!5245)) (EmptyCell!1756) )
))
(declare-datatypes ((array!7562 0))(
  ( (array!7563 (arr!3582 (Array (_ BitVec 32) (_ BitVec 64))) (size!3890 (_ BitVec 32))) )
))
(declare-datatypes ((array!7564 0))(
  ( (array!7565 (arr!3583 (Array (_ BitVec 32) ValueCell!1756)) (size!3891 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2420 0))(
  ( (LongMapFixedSize!2421 (defaultEntry!3684 Int) (mask!8665 (_ BitVec 32)) (extraKeys!3421 (_ BitVec 32)) (zeroValue!3525 V!5245) (minValue!3525 V!5245) (_size!1259 (_ BitVec 32)) (_keys!5571 array!7562) (_values!3667 array!7564) (_vacant!1259 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2420)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!179386 (= res!84982 (validMask!0 (mask!8665 thiss!1248)))))

(declare-fun b!179387 () Bool)

(declare-fun res!84987 () Bool)

(assert (=> b!179387 (=> (not res!84987) (not e!118190))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3330 0))(
  ( (tuple2!3331 (_1!1675 (_ BitVec 64)) (_2!1675 V!5245)) )
))
(declare-datatypes ((List!2297 0))(
  ( (Nil!2294) (Cons!2293 (h!2918 tuple2!3330) (t!7149 List!2297)) )
))
(declare-datatypes ((ListLongMap!2271 0))(
  ( (ListLongMap!2272 (toList!1151 List!2297)) )
))
(declare-fun contains!1219 (ListLongMap!2271 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!798 (array!7562 array!7564 (_ BitVec 32) (_ BitVec 32) V!5245 V!5245 (_ BitVec 32) Int) ListLongMap!2271)

(assert (=> b!179387 (= res!84987 (not (contains!1219 (getCurrentListMap!798 (_keys!5571 thiss!1248) (_values!3667 thiss!1248) (mask!8665 thiss!1248) (extraKeys!3421 thiss!1248) (zeroValue!3525 thiss!1248) (minValue!3525 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3684 thiss!1248)) key!828)))))

(declare-fun b!179388 () Bool)

(declare-datatypes ((List!2298 0))(
  ( (Nil!2295) (Cons!2294 (h!2919 (_ BitVec 64)) (t!7150 List!2298)) )
))
(declare-fun arrayNoDuplicates!0 (array!7562 (_ BitVec 32) List!2298) Bool)

(assert (=> b!179388 (= e!118190 (not (arrayNoDuplicates!0 (_keys!5571 thiss!1248) #b00000000000000000000000000000000 Nil!2295)))))

(declare-fun tp_is_empty!4199 () Bool)

(declare-fun e!118188 () Bool)

(declare-fun e!118191 () Bool)

(declare-fun array_inv!2299 (array!7562) Bool)

(declare-fun array_inv!2300 (array!7564) Bool)

(assert (=> b!179389 (= e!118191 (and tp!16005 tp_is_empty!4199 (array_inv!2299 (_keys!5571 thiss!1248)) (array_inv!2300 (_values!3667 thiss!1248)) e!118188))))

(declare-fun b!179390 () Bool)

(declare-fun res!84983 () Bool)

(assert (=> b!179390 (=> (not res!84983) (not e!118190))))

(assert (=> b!179390 (= res!84983 (not (= key!828 (bvneg key!828))))))

(declare-fun b!179391 () Bool)

(declare-fun e!118187 () Bool)

(assert (=> b!179391 (= e!118187 tp_is_empty!4199)))

(declare-fun b!179392 () Bool)

(assert (=> b!179392 (= e!118188 (and e!118187 mapRes!7186))))

(declare-fun condMapEmpty!7186 () Bool)

(declare-fun mapDefault!7186 () ValueCell!1756)

