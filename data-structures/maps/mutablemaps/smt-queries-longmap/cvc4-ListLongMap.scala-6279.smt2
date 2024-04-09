; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80328 () Bool)

(assert start!80328)

(declare-fun b!943219 () Bool)

(declare-fun b_free!17999 () Bool)

(declare-fun b_next!17999 () Bool)

(assert (=> b!943219 (= b_free!17999 (not b_next!17999))))

(declare-fun tp!62504 () Bool)

(declare-fun b_and!29429 () Bool)

(assert (=> b!943219 (= tp!62504 b_and!29429)))

(declare-fun b!943216 () Bool)

(declare-fun res!633891 () Bool)

(declare-fun e!530352 () Bool)

(assert (=> b!943216 (=> (not res!633891) (not e!530352))))

(declare-datatypes ((V!32307 0))(
  ( (V!32308 (val!10304 Int)) )
))
(declare-datatypes ((ValueCell!9772 0))(
  ( (ValueCellFull!9772 (v!12835 V!32307)) (EmptyCell!9772) )
))
(declare-datatypes ((array!57002 0))(
  ( (array!57003 (arr!27423 (Array (_ BitVec 32) ValueCell!9772)) (size!27889 (_ BitVec 32))) )
))
(declare-datatypes ((array!57004 0))(
  ( (array!57005 (arr!27424 (Array (_ BitVec 32) (_ BitVec 64))) (size!27890 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4694 0))(
  ( (LongMapFixedSize!4695 (defaultEntry!5638 Int) (mask!27257 (_ BitVec 32)) (extraKeys!5370 (_ BitVec 32)) (zeroValue!5474 V!32307) (minValue!5474 V!32307) (_size!2402 (_ BitVec 32)) (_keys!10508 array!57004) (_values!5661 array!57002) (_vacant!2402 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4694)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!943216 (= res!633891 (validMask!0 (mask!27257 thiss!1141)))))

(declare-fun mapNonEmpty!32582 () Bool)

(declare-fun mapRes!32582 () Bool)

(declare-fun tp!62503 () Bool)

(declare-fun e!530350 () Bool)

(assert (=> mapNonEmpty!32582 (= mapRes!32582 (and tp!62503 e!530350))))

(declare-fun mapRest!32582 () (Array (_ BitVec 32) ValueCell!9772))

(declare-fun mapKey!32582 () (_ BitVec 32))

(declare-fun mapValue!32582 () ValueCell!9772)

(assert (=> mapNonEmpty!32582 (= (arr!27423 (_values!5661 thiss!1141)) (store mapRest!32582 mapKey!32582 mapValue!32582))))

(declare-fun b!943217 () Bool)

(declare-fun e!530354 () Bool)

(declare-fun tp_is_empty!20507 () Bool)

(assert (=> b!943217 (= e!530354 tp_is_empty!20507)))

(declare-fun mapIsEmpty!32582 () Bool)

(assert (=> mapIsEmpty!32582 mapRes!32582))

(declare-fun b!943218 () Bool)

(declare-fun e!530349 () Bool)

(assert (=> b!943218 (= e!530349 (and e!530354 mapRes!32582))))

(declare-fun condMapEmpty!32582 () Bool)

(declare-fun mapDefault!32582 () ValueCell!9772)

