; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80340 () Bool)

(assert start!80340)

(declare-fun b!943394 () Bool)

(declare-fun b_free!18011 () Bool)

(declare-fun b_next!18011 () Bool)

(assert (=> b!943394 (= b_free!18011 (not b_next!18011))))

(declare-fun tp!62540 () Bool)

(declare-fun b_and!29441 () Bool)

(assert (=> b!943394 (= tp!62540 b_and!29441)))

(declare-fun mapNonEmpty!32600 () Bool)

(declare-fun mapRes!32600 () Bool)

(declare-fun tp!62539 () Bool)

(declare-fun e!530461 () Bool)

(assert (=> mapNonEmpty!32600 (= mapRes!32600 (and tp!62539 e!530461))))

(declare-datatypes ((V!32323 0))(
  ( (V!32324 (val!10310 Int)) )
))
(declare-datatypes ((ValueCell!9778 0))(
  ( (ValueCellFull!9778 (v!12841 V!32323)) (EmptyCell!9778) )
))
(declare-fun mapValue!32600 () ValueCell!9778)

(declare-fun mapKey!32600 () (_ BitVec 32))

(declare-fun mapRest!32600 () (Array (_ BitVec 32) ValueCell!9778))

(declare-datatypes ((array!57026 0))(
  ( (array!57027 (arr!27435 (Array (_ BitVec 32) ValueCell!9778)) (size!27901 (_ BitVec 32))) )
))
(declare-datatypes ((array!57028 0))(
  ( (array!57029 (arr!27436 (Array (_ BitVec 32) (_ BitVec 64))) (size!27902 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4706 0))(
  ( (LongMapFixedSize!4707 (defaultEntry!5644 Int) (mask!27267 (_ BitVec 32)) (extraKeys!5376 (_ BitVec 32)) (zeroValue!5480 V!32323) (minValue!5480 V!32323) (_size!2408 (_ BitVec 32)) (_keys!10514 array!57028) (_values!5667 array!57026) (_vacant!2408 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4706)

(assert (=> mapNonEmpty!32600 (= (arr!27435 (_values!5667 thiss!1141)) (store mapRest!32600 mapKey!32600 mapValue!32600))))

(declare-fun b!943390 () Bool)

(declare-fun res!633996 () Bool)

(declare-fun e!530462 () Bool)

(assert (=> b!943390 (=> (not res!633996) (not e!530462))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9045 0))(
  ( (MissingZero!9045 (index!38550 (_ BitVec 32))) (Found!9045 (index!38551 (_ BitVec 32))) (Intermediate!9045 (undefined!9857 Bool) (index!38552 (_ BitVec 32)) (x!81015 (_ BitVec 32))) (Undefined!9045) (MissingVacant!9045 (index!38553 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57028 (_ BitVec 32)) SeekEntryResult!9045)

(assert (=> b!943390 (= res!633996 (not (is-Found!9045 (seekEntry!0 key!756 (_keys!10514 thiss!1141) (mask!27267 thiss!1141)))))))

(declare-fun b!943391 () Bool)

(declare-fun e!530458 () Bool)

(declare-fun tp_is_empty!20519 () Bool)

(assert (=> b!943391 (= e!530458 tp_is_empty!20519)))

(declare-fun res!633994 () Bool)

(assert (=> start!80340 (=> (not res!633994) (not e!530462))))

(declare-fun valid!1778 (LongMapFixedSize!4706) Bool)

(assert (=> start!80340 (= res!633994 (valid!1778 thiss!1141))))

(assert (=> start!80340 e!530462))

(declare-fun e!530460 () Bool)

(assert (=> start!80340 e!530460))

(assert (=> start!80340 true))

(declare-fun b!943392 () Bool)

(declare-fun res!633995 () Bool)

(assert (=> b!943392 (=> (not res!633995) (not e!530462))))

(declare-datatypes ((tuple2!13550 0))(
  ( (tuple2!13551 (_1!6785 (_ BitVec 64)) (_2!6785 V!32323)) )
))
(declare-datatypes ((List!19388 0))(
  ( (Nil!19385) (Cons!19384 (h!20534 tuple2!13550) (t!27711 List!19388)) )
))
(declare-datatypes ((ListLongMap!12261 0))(
  ( (ListLongMap!12262 (toList!6146 List!19388)) )
))
(declare-fun contains!5167 (ListLongMap!12261 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3334 (array!57028 array!57026 (_ BitVec 32) (_ BitVec 32) V!32323 V!32323 (_ BitVec 32) Int) ListLongMap!12261)

(assert (=> b!943392 (= res!633995 (contains!5167 (getCurrentListMap!3334 (_keys!10514 thiss!1141) (_values!5667 thiss!1141) (mask!27267 thiss!1141) (extraKeys!5376 thiss!1141) (zeroValue!5480 thiss!1141) (minValue!5480 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5644 thiss!1141)) key!756))))

(declare-fun b!943393 () Bool)

(declare-fun e!530459 () Bool)

(assert (=> b!943393 (= e!530459 (and e!530458 mapRes!32600))))

(declare-fun condMapEmpty!32600 () Bool)

(declare-fun mapDefault!32600 () ValueCell!9778)

