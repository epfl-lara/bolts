; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80310 () Bool)

(assert start!80310)

(declare-fun b!942921 () Bool)

(declare-fun b_free!17981 () Bool)

(declare-fun b_next!17981 () Bool)

(assert (=> b!942921 (= b_free!17981 (not b_next!17981))))

(declare-fun tp!62450 () Bool)

(declare-fun b_and!29411 () Bool)

(assert (=> b!942921 (= tp!62450 b_and!29411)))

(declare-fun b!942919 () Bool)

(declare-fun res!633706 () Bool)

(declare-fun e!530192 () Bool)

(assert (=> b!942919 (=> (not res!633706) (not e!530192))))

(declare-datatypes ((V!32283 0))(
  ( (V!32284 (val!10295 Int)) )
))
(declare-datatypes ((ValueCell!9763 0))(
  ( (ValueCellFull!9763 (v!12826 V!32283)) (EmptyCell!9763) )
))
(declare-datatypes ((array!56966 0))(
  ( (array!56967 (arr!27405 (Array (_ BitVec 32) ValueCell!9763)) (size!27871 (_ BitVec 32))) )
))
(declare-datatypes ((array!56968 0))(
  ( (array!56969 (arr!27406 (Array (_ BitVec 32) (_ BitVec 64))) (size!27872 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4676 0))(
  ( (LongMapFixedSize!4677 (defaultEntry!5629 Int) (mask!27242 (_ BitVec 32)) (extraKeys!5361 (_ BitVec 32)) (zeroValue!5465 V!32283) (minValue!5465 V!32283) (_size!2393 (_ BitVec 32)) (_keys!10499 array!56968) (_values!5652 array!56966) (_vacant!2393 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4676)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13532 0))(
  ( (tuple2!13533 (_1!6776 (_ BitVec 64)) (_2!6776 V!32283)) )
))
(declare-datatypes ((List!19368 0))(
  ( (Nil!19365) (Cons!19364 (h!20514 tuple2!13532) (t!27691 List!19368)) )
))
(declare-datatypes ((ListLongMap!12243 0))(
  ( (ListLongMap!12244 (toList!6137 List!19368)) )
))
(declare-fun contains!5158 (ListLongMap!12243 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3325 (array!56968 array!56966 (_ BitVec 32) (_ BitVec 32) V!32283 V!32283 (_ BitVec 32) Int) ListLongMap!12243)

(assert (=> b!942919 (= res!633706 (contains!5158 (getCurrentListMap!3325 (_keys!10499 thiss!1141) (_values!5652 thiss!1141) (mask!27242 thiss!1141) (extraKeys!5361 thiss!1141) (zeroValue!5465 thiss!1141) (minValue!5465 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5629 thiss!1141)) key!756))))

(declare-fun mapIsEmpty!32555 () Bool)

(declare-fun mapRes!32555 () Bool)

(assert (=> mapIsEmpty!32555 mapRes!32555))

(declare-fun b!942920 () Bool)

(assert (=> b!942920 (= e!530192 false)))

(declare-fun lt!425166 () Bool)

(declare-datatypes ((List!19369 0))(
  ( (Nil!19366) (Cons!19365 (h!20515 (_ BitVec 64)) (t!27692 List!19369)) )
))
(declare-fun arrayNoDuplicates!0 (array!56968 (_ BitVec 32) List!19369) Bool)

(assert (=> b!942920 (= lt!425166 (arrayNoDuplicates!0 (_keys!10499 thiss!1141) #b00000000000000000000000000000000 Nil!19366))))

(declare-fun mapNonEmpty!32555 () Bool)

(declare-fun tp!62449 () Bool)

(declare-fun e!530187 () Bool)

(assert (=> mapNonEmpty!32555 (= mapRes!32555 (and tp!62449 e!530187))))

(declare-fun mapValue!32555 () ValueCell!9763)

(declare-fun mapRest!32555 () (Array (_ BitVec 32) ValueCell!9763))

(declare-fun mapKey!32555 () (_ BitVec 32))

(assert (=> mapNonEmpty!32555 (= (arr!27405 (_values!5652 thiss!1141)) (store mapRest!32555 mapKey!32555 mapValue!32555))))

(declare-fun e!530191 () Bool)

(declare-fun e!530188 () Bool)

(declare-fun tp_is_empty!20489 () Bool)

(declare-fun array_inv!21244 (array!56968) Bool)

(declare-fun array_inv!21245 (array!56966) Bool)

(assert (=> b!942921 (= e!530191 (and tp!62450 tp_is_empty!20489 (array_inv!21244 (_keys!10499 thiss!1141)) (array_inv!21245 (_values!5652 thiss!1141)) e!530188))))

(declare-fun b!942922 () Bool)

(declare-fun e!530189 () Bool)

(assert (=> b!942922 (= e!530188 (and e!530189 mapRes!32555))))

(declare-fun condMapEmpty!32555 () Bool)

(declare-fun mapDefault!32555 () ValueCell!9763)

