; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90610 () Bool)

(assert start!90610)

(declare-fun b!1035825 () Bool)

(declare-fun b_free!20875 () Bool)

(declare-fun b_next!20875 () Bool)

(assert (=> b!1035825 (= b_free!20875 (not b_next!20875))))

(declare-fun tp!73759 () Bool)

(declare-fun b_and!33393 () Bool)

(assert (=> b!1035825 (= tp!73759 b_and!33393)))

(declare-fun b!1035824 () Bool)

(declare-fun e!585825 () Bool)

(declare-fun e!585824 () Bool)

(assert (=> b!1035824 (= e!585825 (not e!585824))))

(declare-fun res!691626 () Bool)

(assert (=> b!1035824 (=> (not res!691626) (not e!585824))))

(declare-datatypes ((V!37667 0))(
  ( (V!37668 (val!12348 Int)) )
))
(declare-datatypes ((ValueCell!11594 0))(
  ( (ValueCellFull!11594 (v!14929 V!37667)) (EmptyCell!11594) )
))
(declare-datatypes ((array!65272 0))(
  ( (array!65273 (arr!31417 (Array (_ BitVec 32) (_ BitVec 64))) (size!31946 (_ BitVec 32))) )
))
(declare-datatypes ((array!65274 0))(
  ( (array!65275 (arr!31418 (Array (_ BitVec 32) ValueCell!11594)) (size!31947 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5782 0))(
  ( (LongMapFixedSize!5783 (defaultEntry!6269 Int) (mask!30165 (_ BitVec 32)) (extraKeys!5999 (_ BitVec 32)) (zeroValue!6103 V!37667) (minValue!6105 V!37667) (_size!2946 (_ BitVec 32)) (_keys!11455 array!65272) (_values!6292 array!65274) (_vacant!2946 (_ BitVec 32))) )
))
(declare-fun lt!456760 () LongMapFixedSize!5782)

(declare-fun valid!2131 (LongMapFixedSize!5782) Bool)

(assert (=> b!1035824 (= res!691626 (valid!2131 lt!456760))))

(declare-fun thiss!1427 () LongMapFixedSize!5782)

(declare-fun lt!456758 () V!37667)

(assert (=> b!1035824 (= lt!456760 (LongMapFixedSize!5783 (defaultEntry!6269 thiss!1427) (mask!30165 thiss!1427) (bvand (extraKeys!5999 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6103 thiss!1427) lt!456758 (_size!2946 thiss!1427) (_keys!11455 thiss!1427) (_values!6292 thiss!1427) (_vacant!2946 thiss!1427)))))

(declare-datatypes ((tuple2!15836 0))(
  ( (tuple2!15837 (_1!7928 (_ BitVec 64)) (_2!7928 V!37667)) )
))
(declare-datatypes ((List!22034 0))(
  ( (Nil!22031) (Cons!22030 (h!23232 tuple2!15836) (t!31246 List!22034)) )
))
(declare-datatypes ((ListLongMap!13873 0))(
  ( (ListLongMap!13874 (toList!6952 List!22034)) )
))
(declare-fun -!528 (ListLongMap!13873 (_ BitVec 64)) ListLongMap!13873)

(declare-fun getCurrentListMap!3958 (array!65272 array!65274 (_ BitVec 32) (_ BitVec 32) V!37667 V!37667 (_ BitVec 32) Int) ListLongMap!13873)

(assert (=> b!1035824 (= (-!528 (getCurrentListMap!3958 (_keys!11455 thiss!1427) (_values!6292 thiss!1427) (mask!30165 thiss!1427) (extraKeys!5999 thiss!1427) (zeroValue!6103 thiss!1427) (minValue!6105 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6269 thiss!1427)) #b1000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3958 (_keys!11455 thiss!1427) (_values!6292 thiss!1427) (mask!30165 thiss!1427) (bvand (extraKeys!5999 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6103 thiss!1427) lt!456758 #b00000000000000000000000000000000 (defaultEntry!6269 thiss!1427)))))

(declare-datatypes ((Unit!33871 0))(
  ( (Unit!33872) )
))
(declare-fun lt!456759 () Unit!33871)

(declare-fun lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!10 (array!65272 array!65274 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!37667 V!37667 V!37667 Int) Unit!33871)

(assert (=> b!1035824 (= lt!456759 (lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!10 (_keys!11455 thiss!1427) (_values!6292 thiss!1427) (mask!30165 thiss!1427) (extraKeys!5999 thiss!1427) (bvand (extraKeys!5999 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6103 thiss!1427) (minValue!6105 thiss!1427) lt!456758 (defaultEntry!6269 thiss!1427)))))

(declare-fun dynLambda!2002 (Int (_ BitVec 64)) V!37667)

(assert (=> b!1035824 (= lt!456758 (dynLambda!2002 (defaultEntry!6269 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!585827 () Bool)

(declare-fun e!585830 () Bool)

(declare-fun tp_is_empty!24595 () Bool)

(declare-fun array_inv!24131 (array!65272) Bool)

(declare-fun array_inv!24132 (array!65274) Bool)

(assert (=> b!1035825 (= e!585827 (and tp!73759 tp_is_empty!24595 (array_inv!24131 (_keys!11455 thiss!1427)) (array_inv!24132 (_values!6292 thiss!1427)) e!585830))))

(declare-fun mapIsEmpty!38409 () Bool)

(declare-fun mapRes!38409 () Bool)

(assert (=> mapIsEmpty!38409 mapRes!38409))

(declare-fun res!691625 () Bool)

(assert (=> start!90610 (=> (not res!691625) (not e!585825))))

(assert (=> start!90610 (= res!691625 (valid!2131 thiss!1427))))

(assert (=> start!90610 e!585825))

(assert (=> start!90610 e!585827))

(assert (=> start!90610 true))

(declare-fun mapNonEmpty!38409 () Bool)

(declare-fun tp!73760 () Bool)

(declare-fun e!585828 () Bool)

(assert (=> mapNonEmpty!38409 (= mapRes!38409 (and tp!73760 e!585828))))

(declare-fun mapRest!38409 () (Array (_ BitVec 32) ValueCell!11594))

(declare-fun mapValue!38409 () ValueCell!11594)

(declare-fun mapKey!38409 () (_ BitVec 32))

(assert (=> mapNonEmpty!38409 (= (arr!31418 (_values!6292 thiss!1427)) (store mapRest!38409 mapKey!38409 mapValue!38409))))

(declare-fun b!1035826 () Bool)

(declare-fun e!585826 () Bool)

(assert (=> b!1035826 (= e!585830 (and e!585826 mapRes!38409))))

(declare-fun condMapEmpty!38409 () Bool)

(declare-fun mapDefault!38409 () ValueCell!11594)

