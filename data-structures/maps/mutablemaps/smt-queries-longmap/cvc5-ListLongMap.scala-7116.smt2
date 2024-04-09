; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90234 () Bool)

(assert start!90234)

(declare-fun b!1032774 () Bool)

(declare-fun b_free!20749 () Bool)

(declare-fun b_next!20749 () Bool)

(assert (=> b!1032774 (= b_free!20749 (not b_next!20749))))

(declare-fun tp!73333 () Bool)

(declare-fun b_and!33235 () Bool)

(assert (=> b!1032774 (= tp!73333 b_and!33235)))

(declare-fun b!1032772 () Bool)

(declare-fun e!583669 () Bool)

(declare-fun tp_is_empty!24469 () Bool)

(assert (=> b!1032772 (= e!583669 tp_is_empty!24469)))

(declare-fun b!1032773 () Bool)

(declare-fun res!690278 () Bool)

(declare-fun e!583668 () Bool)

(assert (=> b!1032773 (=> (not res!690278) (not e!583668))))

(declare-datatypes ((V!37499 0))(
  ( (V!37500 (val!12285 Int)) )
))
(declare-datatypes ((ValueCell!11531 0))(
  ( (ValueCellFull!11531 (v!14863 V!37499)) (EmptyCell!11531) )
))
(declare-datatypes ((array!64994 0))(
  ( (array!64995 (arr!31291 (Array (_ BitVec 32) (_ BitVec 64))) (size!31812 (_ BitVec 32))) )
))
(declare-datatypes ((array!64996 0))(
  ( (array!64997 (arr!31292 (Array (_ BitVec 32) ValueCell!11531)) (size!31813 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5656 0))(
  ( (LongMapFixedSize!5657 (defaultEntry!6202 Int) (mask!30030 (_ BitVec 32)) (extraKeys!5934 (_ BitVec 32)) (zeroValue!6038 V!37499) (minValue!6038 V!37499) (_size!2883 (_ BitVec 32)) (_keys!11375 array!64994) (_values!6225 array!64996) (_vacant!2883 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5656)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1032773 (= res!690278 (validMask!0 (mask!30030 thiss!1427)))))

(declare-fun mapIsEmpty!38172 () Bool)

(declare-fun mapRes!38172 () Bool)

(assert (=> mapIsEmpty!38172 mapRes!38172))

(declare-fun mapNonEmpty!38172 () Bool)

(declare-fun tp!73334 () Bool)

(declare-fun e!583665 () Bool)

(assert (=> mapNonEmpty!38172 (= mapRes!38172 (and tp!73334 e!583665))))

(declare-fun mapValue!38172 () ValueCell!11531)

(declare-fun mapKey!38172 () (_ BitVec 32))

(declare-fun mapRest!38172 () (Array (_ BitVec 32) ValueCell!11531))

(assert (=> mapNonEmpty!38172 (= (arr!31292 (_values!6225 thiss!1427)) (store mapRest!38172 mapKey!38172 mapValue!38172))))

(declare-fun res!690277 () Bool)

(assert (=> start!90234 (=> (not res!690277) (not e!583668))))

(declare-fun valid!2089 (LongMapFixedSize!5656) Bool)

(assert (=> start!90234 (= res!690277 (valid!2089 thiss!1427))))

(assert (=> start!90234 e!583668))

(declare-fun e!583667 () Bool)

(assert (=> start!90234 e!583667))

(assert (=> start!90234 true))

(declare-fun e!583666 () Bool)

(declare-fun array_inv!24051 (array!64994) Bool)

(declare-fun array_inv!24052 (array!64996) Bool)

(assert (=> b!1032774 (= e!583667 (and tp!73333 tp_is_empty!24469 (array_inv!24051 (_keys!11375 thiss!1427)) (array_inv!24052 (_values!6225 thiss!1427)) e!583666))))

(declare-fun b!1032775 () Bool)

(assert (=> b!1032775 (= e!583665 tp_is_empty!24469)))

(declare-fun b!1032776 () Bool)

(assert (=> b!1032776 (= e!583666 (and e!583669 mapRes!38172))))

(declare-fun condMapEmpty!38172 () Bool)

(declare-fun mapDefault!38172 () ValueCell!11531)

