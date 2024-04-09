; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89394 () Bool)

(assert start!89394)

(declare-fun b!1024215 () Bool)

(declare-fun b_free!20357 () Bool)

(declare-fun b_next!20357 () Bool)

(assert (=> b!1024215 (= b_free!20357 (not b_next!20357))))

(declare-fun tp!72118 () Bool)

(declare-fun b_and!32621 () Bool)

(assert (=> b!1024215 (= tp!72118 b_and!32621)))

(declare-fun tp_is_empty!24077 () Bool)

(declare-fun e!577348 () Bool)

(declare-fun e!577352 () Bool)

(declare-datatypes ((V!36975 0))(
  ( (V!36976 (val!12089 Int)) )
))
(declare-datatypes ((ValueCell!11335 0))(
  ( (ValueCellFull!11335 (v!14659 V!36975)) (EmptyCell!11335) )
))
(declare-datatypes ((array!64188 0))(
  ( (array!64189 (arr!30899 (Array (_ BitVec 32) (_ BitVec 64))) (size!31413 (_ BitVec 32))) )
))
(declare-datatypes ((array!64190 0))(
  ( (array!64191 (arr!30900 (Array (_ BitVec 32) ValueCell!11335)) (size!31414 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5264 0))(
  ( (LongMapFixedSize!5265 (defaultEntry!5984 Int) (mask!29625 (_ BitVec 32)) (extraKeys!5716 (_ BitVec 32)) (zeroValue!5820 V!36975) (minValue!5820 V!36975) (_size!2687 (_ BitVec 32)) (_keys!11128 array!64188) (_values!6007 array!64190) (_vacant!2687 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5264)

(declare-fun array_inv!23799 (array!64188) Bool)

(declare-fun array_inv!23800 (array!64190) Bool)

(assert (=> b!1024215 (= e!577352 (and tp!72118 tp_is_empty!24077 (array_inv!23799 (_keys!11128 thiss!1427)) (array_inv!23800 (_values!6007 thiss!1427)) e!577348))))

(declare-fun b!1024216 () Bool)

(declare-fun e!577347 () Bool)

(assert (=> b!1024216 (= e!577347 tp_is_empty!24077)))

(declare-fun mapNonEmpty!37544 () Bool)

(declare-fun mapRes!37544 () Bool)

(declare-fun tp!72117 () Bool)

(declare-fun e!577349 () Bool)

(assert (=> mapNonEmpty!37544 (= mapRes!37544 (and tp!72117 e!577349))))

(declare-fun mapKey!37544 () (_ BitVec 32))

(declare-fun mapRest!37544 () (Array (_ BitVec 32) ValueCell!11335))

(declare-fun mapValue!37544 () ValueCell!11335)

(assert (=> mapNonEmpty!37544 (= (arr!30900 (_values!6007 thiss!1427)) (store mapRest!37544 mapKey!37544 mapValue!37544))))

(declare-fun b!1024217 () Bool)

(declare-fun e!577351 () Bool)

(assert (=> b!1024217 (= e!577351 false)))

(declare-datatypes ((SeekEntryResult!9580 0))(
  ( (MissingZero!9580 (index!40690 (_ BitVec 32))) (Found!9580 (index!40691 (_ BitVec 32))) (Intermediate!9580 (undefined!10392 Bool) (index!40692 (_ BitVec 32)) (x!91045 (_ BitVec 32))) (Undefined!9580) (MissingVacant!9580 (index!40693 (_ BitVec 32))) )
))
(declare-fun lt!450547 () SeekEntryResult!9580)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64188 (_ BitVec 32)) SeekEntryResult!9580)

(assert (=> b!1024217 (= lt!450547 (seekEntry!0 key!909 (_keys!11128 thiss!1427) (mask!29625 thiss!1427)))))

(declare-fun b!1024219 () Bool)

(assert (=> b!1024219 (= e!577349 tp_is_empty!24077)))

(declare-fun mapIsEmpty!37544 () Bool)

(assert (=> mapIsEmpty!37544 mapRes!37544))

(declare-fun b!1024220 () Bool)

(declare-fun res!685844 () Bool)

(assert (=> b!1024220 (=> (not res!685844) (not e!577351))))

(assert (=> b!1024220 (= res!685844 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1024218 () Bool)

(assert (=> b!1024218 (= e!577348 (and e!577347 mapRes!37544))))

(declare-fun condMapEmpty!37544 () Bool)

(declare-fun mapDefault!37544 () ValueCell!11335)

