; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77294 () Bool)

(assert start!77294)

(declare-fun b!901325 () Bool)

(declare-fun b_free!16079 () Bool)

(declare-fun b_next!16079 () Bool)

(assert (=> b!901325 (= b_free!16079 (not b_next!16079))))

(declare-fun tp!56337 () Bool)

(declare-fun b_and!26429 () Bool)

(assert (=> b!901325 (= tp!56337 b_and!26429)))

(declare-fun b!901317 () Bool)

(declare-fun e!504641 () Bool)

(declare-datatypes ((SeekEntryResult!8938 0))(
  ( (MissingZero!8938 (index!38122 (_ BitVec 32))) (Found!8938 (index!38123 (_ BitVec 32))) (Intermediate!8938 (undefined!9750 Bool) (index!38124 (_ BitVec 32)) (x!76786 (_ BitVec 32))) (Undefined!8938) (MissingVacant!8938 (index!38125 (_ BitVec 32))) )
))
(declare-fun lt!407379 () SeekEntryResult!8938)

(declare-datatypes ((array!52856 0))(
  ( (array!52857 (arr!25392 (Array (_ BitVec 32) (_ BitVec 64))) (size!25852 (_ BitVec 32))) )
))
(declare-datatypes ((V!29507 0))(
  ( (V!29508 (val!9254 Int)) )
))
(declare-datatypes ((ValueCell!8722 0))(
  ( (ValueCellFull!8722 (v!11751 V!29507)) (EmptyCell!8722) )
))
(declare-datatypes ((array!52858 0))(
  ( (array!52859 (arr!25393 (Array (_ BitVec 32) ValueCell!8722)) (size!25853 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4460 0))(
  ( (LongMapFixedSize!4461 (defaultEntry!5470 Int) (mask!26273 (_ BitVec 32)) (extraKeys!5199 (_ BitVec 32)) (zeroValue!5303 V!29507) (minValue!5303 V!29507) (_size!2285 (_ BitVec 32)) (_keys!10279 array!52856) (_values!5490 array!52858) (_vacant!2285 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4460)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!901317 (= e!504641 (inRange!0 (index!38123 lt!407379) (mask!26273 thiss!1181)))))

(declare-fun b!901318 () Bool)

(declare-fun e!504639 () Bool)

(declare-fun e!504640 () Bool)

(assert (=> b!901318 (= e!504639 e!504640)))

(declare-fun c!95392 () Bool)

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!901318 (= c!95392 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!608648 () Bool)

(declare-fun e!504647 () Bool)

(assert (=> start!77294 (=> (not res!608648) (not e!504647))))

(declare-fun valid!1696 (LongMapFixedSize!4460) Bool)

(assert (=> start!77294 (= res!608648 (valid!1696 thiss!1181))))

(assert (=> start!77294 e!504647))

(declare-fun e!504646 () Bool)

(assert (=> start!77294 e!504646))

(assert (=> start!77294 true))

(declare-fun bm!40128 () Bool)

(declare-fun call!40131 () V!29507)

(declare-fun call!40132 () V!29507)

(assert (=> bm!40128 (= call!40131 call!40132)))

(declare-fun mapIsEmpty!29296 () Bool)

(declare-fun mapRes!29296 () Bool)

(assert (=> mapIsEmpty!29296 mapRes!29296))

(declare-fun b!901319 () Bool)

(declare-fun e!504637 () Bool)

(declare-fun e!504644 () Bool)

(assert (=> b!901319 (= e!504637 (and e!504644 mapRes!29296))))

(declare-fun condMapEmpty!29296 () Bool)

(declare-fun mapDefault!29296 () ValueCell!8722)

