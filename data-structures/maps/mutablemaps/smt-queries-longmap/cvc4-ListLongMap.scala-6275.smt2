; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80304 () Bool)

(assert start!80304)

(declare-fun b!942830 () Bool)

(declare-fun b_free!17975 () Bool)

(declare-fun b_next!17975 () Bool)

(assert (=> b!942830 (= b_free!17975 (not b_next!17975))))

(declare-fun tp!62431 () Bool)

(declare-fun b_and!29405 () Bool)

(assert (=> b!942830 (= tp!62431 b_and!29405)))

(declare-fun b!942820 () Bool)

(declare-fun res!633643 () Bool)

(declare-fun e!530138 () Bool)

(assert (=> b!942820 (=> (not res!633643) (not e!530138))))

(declare-datatypes ((V!32275 0))(
  ( (V!32276 (val!10292 Int)) )
))
(declare-datatypes ((ValueCell!9760 0))(
  ( (ValueCellFull!9760 (v!12823 V!32275)) (EmptyCell!9760) )
))
(declare-datatypes ((array!56954 0))(
  ( (array!56955 (arr!27399 (Array (_ BitVec 32) ValueCell!9760)) (size!27865 (_ BitVec 32))) )
))
(declare-datatypes ((array!56956 0))(
  ( (array!56957 (arr!27400 (Array (_ BitVec 32) (_ BitVec 64))) (size!27866 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4670 0))(
  ( (LongMapFixedSize!4671 (defaultEntry!5626 Int) (mask!27237 (_ BitVec 32)) (extraKeys!5358 (_ BitVec 32)) (zeroValue!5462 V!32275) (minValue!5462 V!32275) (_size!2390 (_ BitVec 32)) (_keys!10496 array!56956) (_values!5649 array!56954) (_vacant!2390 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4670)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13526 0))(
  ( (tuple2!13527 (_1!6773 (_ BitVec 64)) (_2!6773 V!32275)) )
))
(declare-datatypes ((List!19364 0))(
  ( (Nil!19361) (Cons!19360 (h!20510 tuple2!13526) (t!27687 List!19364)) )
))
(declare-datatypes ((ListLongMap!12237 0))(
  ( (ListLongMap!12238 (toList!6134 List!19364)) )
))
(declare-fun contains!5155 (ListLongMap!12237 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3322 (array!56956 array!56954 (_ BitVec 32) (_ BitVec 32) V!32275 V!32275 (_ BitVec 32) Int) ListLongMap!12237)

(assert (=> b!942820 (= res!633643 (contains!5155 (getCurrentListMap!3322 (_keys!10496 thiss!1141) (_values!5649 thiss!1141) (mask!27237 thiss!1141) (extraKeys!5358 thiss!1141) (zeroValue!5462 thiss!1141) (minValue!5462 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5626 thiss!1141)) key!756))))

(declare-fun b!942821 () Bool)

(declare-fun e!530136 () Bool)

(declare-fun e!530134 () Bool)

(declare-fun mapRes!32546 () Bool)

(assert (=> b!942821 (= e!530136 (and e!530134 mapRes!32546))))

(declare-fun condMapEmpty!32546 () Bool)

(declare-fun mapDefault!32546 () ValueCell!9760)

