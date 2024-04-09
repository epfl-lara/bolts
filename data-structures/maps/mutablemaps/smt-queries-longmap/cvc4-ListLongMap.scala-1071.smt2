; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22124 () Bool)

(assert start!22124)

(declare-fun b!230004 () Bool)

(declare-fun b_free!6179 () Bool)

(declare-fun b_next!6179 () Bool)

(assert (=> b!230004 (= b_free!6179 (not b_next!6179))))

(declare-fun tp!21679 () Bool)

(declare-fun b_and!13095 () Bool)

(assert (=> b!230004 (= tp!21679 b_and!13095)))

(declare-fun b!229996 () Bool)

(declare-fun e!149253 () Bool)

(declare-fun e!149245 () Bool)

(assert (=> b!229996 (= e!149253 e!149245)))

(declare-fun res!113177 () Bool)

(assert (=> b!229996 (=> (not res!113177) (not e!149245))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!7701 0))(
  ( (V!7702 (val!3065 Int)) )
))
(declare-datatypes ((ValueCell!2677 0))(
  ( (ValueCellFull!2677 (v!5081 V!7701)) (EmptyCell!2677) )
))
(declare-datatypes ((array!11324 0))(
  ( (array!11325 (arr!5381 (Array (_ BitVec 32) ValueCell!2677)) (size!5714 (_ BitVec 32))) )
))
(declare-datatypes ((array!11326 0))(
  ( (array!11327 (arr!5382 (Array (_ BitVec 32) (_ BitVec 64))) (size!5715 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3254 0))(
  ( (LongMapFixedSize!3255 (defaultEntry!4286 Int) (mask!10172 (_ BitVec 32)) (extraKeys!4023 (_ BitVec 32)) (zeroValue!4127 V!7701) (minValue!4127 V!7701) (_size!1676 (_ BitVec 32)) (_keys!6340 array!11326) (_values!4269 array!11324) (_vacant!1676 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3254)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!229996 (= res!113177 (inRange!0 index!297 (mask!10172 thiss!1504)))))

(declare-datatypes ((Unit!7030 0))(
  ( (Unit!7031) )
))
(declare-fun lt!115765 () Unit!7030)

(declare-fun e!149250 () Unit!7030)

(assert (=> b!229996 (= lt!115765 e!149250)))

(declare-fun c!38152 () Bool)

(declare-datatypes ((tuple2!4518 0))(
  ( (tuple2!4519 (_1!2269 (_ BitVec 64)) (_2!2269 V!7701)) )
))
(declare-datatypes ((List!3466 0))(
  ( (Nil!3463) (Cons!3462 (h!4110 tuple2!4518) (t!8433 List!3466)) )
))
(declare-datatypes ((ListLongMap!3445 0))(
  ( (ListLongMap!3446 (toList!1738 List!3466)) )
))
(declare-fun lt!115762 () ListLongMap!3445)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun contains!1605 (ListLongMap!3445 (_ BitVec 64)) Bool)

(assert (=> b!229996 (= c!38152 (contains!1605 lt!115762 key!932))))

(declare-fun getCurrentListMap!1261 (array!11326 array!11324 (_ BitVec 32) (_ BitVec 32) V!7701 V!7701 (_ BitVec 32) Int) ListLongMap!3445)

(assert (=> b!229996 (= lt!115762 (getCurrentListMap!1261 (_keys!6340 thiss!1504) (_values!4269 thiss!1504) (mask!10172 thiss!1504) (extraKeys!4023 thiss!1504) (zeroValue!4127 thiss!1504) (minValue!4127 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4286 thiss!1504)))))

(declare-fun b!229997 () Bool)

(declare-fun res!113179 () Bool)

(declare-datatypes ((SeekEntryResult!941 0))(
  ( (MissingZero!941 (index!5934 (_ BitVec 32))) (Found!941 (index!5935 (_ BitVec 32))) (Intermediate!941 (undefined!1753 Bool) (index!5936 (_ BitVec 32)) (x!23425 (_ BitVec 32))) (Undefined!941) (MissingVacant!941 (index!5937 (_ BitVec 32))) )
))
(declare-fun lt!115760 () SeekEntryResult!941)

(assert (=> b!229997 (= res!113179 (= (select (arr!5382 (_keys!6340 thiss!1504)) (index!5937 lt!115760)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!149244 () Bool)

(assert (=> b!229997 (=> (not res!113179) (not e!149244))))

(declare-fun b!229998 () Bool)

(declare-fun e!149257 () Bool)

(declare-fun tp_is_empty!6041 () Bool)

(assert (=> b!229998 (= e!149257 tp_is_empty!6041)))

(declare-fun b!229999 () Bool)

(declare-fun e!149247 () Bool)

(declare-fun call!21369 () Bool)

(assert (=> b!229999 (= e!149247 (not call!21369))))

(declare-fun b!230000 () Bool)

(declare-fun e!149249 () Unit!7030)

(declare-fun Unit!7032 () Unit!7030)

(assert (=> b!230000 (= e!149249 Unit!7032)))

(declare-fun b!230001 () Bool)

(declare-fun e!149251 () Bool)

(declare-fun e!149255 () Bool)

(declare-fun mapRes!10231 () Bool)

(assert (=> b!230001 (= e!149251 (and e!149255 mapRes!10231))))

(declare-fun condMapEmpty!10231 () Bool)

(declare-fun mapDefault!10231 () ValueCell!2677)

