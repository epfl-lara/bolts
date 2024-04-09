; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13212 () Bool)

(assert start!13212)

(declare-fun b!116299 () Bool)

(declare-fun b_free!2733 () Bool)

(declare-fun b_next!2733 () Bool)

(assert (=> b!116299 (= b_free!2733 (not b_next!2733))))

(declare-fun tp!10570 () Bool)

(declare-fun b_and!7253 () Bool)

(assert (=> b!116299 (= tp!10570 b_and!7253)))

(declare-fun b!116297 () Bool)

(declare-fun b_free!2735 () Bool)

(declare-fun b_next!2735 () Bool)

(assert (=> b!116297 (= b_free!2735 (not b_next!2735))))

(declare-fun tp!10567 () Bool)

(declare-fun b_and!7255 () Bool)

(assert (=> b!116297 (= tp!10567 b_and!7255)))

(declare-fun b!116296 () Bool)

(declare-fun e!75930 () Bool)

(declare-fun tp_is_empty!2783 () Bool)

(assert (=> b!116296 (= e!75930 tp_is_empty!2783)))

(declare-fun e!75929 () Bool)

(declare-datatypes ((V!3357 0))(
  ( (V!3358 (val!1436 Int)) )
))
(declare-datatypes ((array!4570 0))(
  ( (array!4571 (arr!2166 (Array (_ BitVec 32) (_ BitVec 64))) (size!2427 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1048 0))(
  ( (ValueCellFull!1048 (v!3038 V!3357)) (EmptyCell!1048) )
))
(declare-datatypes ((array!4572 0))(
  ( (array!4573 (arr!2167 (Array (_ BitVec 32) ValueCell!1048)) (size!2428 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1004 0))(
  ( (LongMapFixedSize!1005 (defaultEntry!2713 Int) (mask!6927 (_ BitVec 32)) (extraKeys!2502 (_ BitVec 32)) (zeroValue!2580 V!3357) (minValue!2580 V!3357) (_size!551 (_ BitVec 32)) (_keys!4436 array!4570) (_values!2696 array!4572) (_vacant!551 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1004)

(declare-fun e!75927 () Bool)

(declare-fun array_inv!1313 (array!4570) Bool)

(declare-fun array_inv!1314 (array!4572) Bool)

(assert (=> b!116297 (= e!75927 (and tp!10567 tp_is_empty!2783 (array_inv!1313 (_keys!4436 newMap!16)) (array_inv!1314 (_values!2696 newMap!16)) e!75929))))

(declare-fun b!116298 () Bool)

(declare-fun e!75924 () Bool)

(assert (=> b!116298 (= e!75924 false)))

(declare-fun lt!60392 () Bool)

(declare-datatypes ((tuple2!2514 0))(
  ( (tuple2!2515 (_1!1267 Bool) (_2!1267 LongMapFixedSize!1004)) )
))
(declare-fun lt!60393 () tuple2!2514)

(declare-fun valid!469 (LongMapFixedSize!1004) Bool)

(assert (=> b!116298 (= lt!60392 (valid!469 (_2!1267 lt!60393)))))

(declare-datatypes ((Cell!798 0))(
  ( (Cell!799 (v!3039 LongMapFixedSize!1004)) )
))
(declare-datatypes ((LongMap!798 0))(
  ( (LongMap!799 (underlying!410 Cell!798)) )
))
(declare-fun thiss!992 () LongMap!798)

(declare-fun e!75925 () Bool)

(declare-fun e!75933 () Bool)

(assert (=> b!116299 (= e!75933 (and tp!10570 tp_is_empty!2783 (array_inv!1313 (_keys!4436 (v!3039 (underlying!410 thiss!992)))) (array_inv!1314 (_values!2696 (v!3039 (underlying!410 thiss!992)))) e!75925))))

(declare-fun b!116300 () Bool)

(declare-fun res!56991 () Bool)

(declare-fun e!75928 () Bool)

(assert (=> b!116300 (=> (not res!56991) (not e!75928))))

(assert (=> b!116300 (= res!56991 (valid!469 newMap!16))))

(declare-fun b!116301 () Bool)

(declare-fun e!75921 () Bool)

(assert (=> b!116301 (= e!75921 tp_is_empty!2783)))

(declare-fun mapIsEmpty!4287 () Bool)

(declare-fun mapRes!4287 () Bool)

(assert (=> mapIsEmpty!4287 mapRes!4287))

(declare-fun b!116302 () Bool)

(declare-fun res!56989 () Bool)

(assert (=> b!116302 (=> (not res!56989) (not e!75928))))

(assert (=> b!116302 (= res!56989 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6927 newMap!16)) (_size!551 (v!3039 (underlying!410 thiss!992)))))))

(declare-fun b!116303 () Bool)

(declare-fun e!75926 () Bool)

(declare-fun mapRes!4288 () Bool)

(assert (=> b!116303 (= e!75929 (and e!75926 mapRes!4288))))

(declare-fun condMapEmpty!4287 () Bool)

(declare-fun mapDefault!4288 () ValueCell!1048)

