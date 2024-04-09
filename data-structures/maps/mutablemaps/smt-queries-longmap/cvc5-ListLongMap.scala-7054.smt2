; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89414 () Bool)

(assert start!89414)

(declare-fun b!1024540 () Bool)

(declare-fun b_free!20377 () Bool)

(declare-fun b_next!20377 () Bool)

(assert (=> b!1024540 (= b_free!20377 (not b_next!20377))))

(declare-fun tp!72177 () Bool)

(declare-fun b_and!32641 () Bool)

(assert (=> b!1024540 (= tp!72177 b_and!32641)))

(declare-fun tp_is_empty!24097 () Bool)

(declare-datatypes ((V!37003 0))(
  ( (V!37004 (val!12099 Int)) )
))
(declare-datatypes ((ValueCell!11345 0))(
  ( (ValueCellFull!11345 (v!14669 V!37003)) (EmptyCell!11345) )
))
(declare-datatypes ((array!64228 0))(
  ( (array!64229 (arr!30919 (Array (_ BitVec 32) (_ BitVec 64))) (size!31433 (_ BitVec 32))) )
))
(declare-datatypes ((array!64230 0))(
  ( (array!64231 (arr!30920 (Array (_ BitVec 32) ValueCell!11345)) (size!31434 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5284 0))(
  ( (LongMapFixedSize!5285 (defaultEntry!5994 Int) (mask!29643 (_ BitVec 32)) (extraKeys!5726 (_ BitVec 32)) (zeroValue!5830 V!37003) (minValue!5830 V!37003) (_size!2697 (_ BitVec 32)) (_keys!11138 array!64228) (_values!6017 array!64230) (_vacant!2697 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5284)

(declare-fun e!577589 () Bool)

(declare-fun e!577588 () Bool)

(declare-fun array_inv!23817 (array!64228) Bool)

(declare-fun array_inv!23818 (array!64230) Bool)

(assert (=> b!1024540 (= e!577588 (and tp!72177 tp_is_empty!24097 (array_inv!23817 (_keys!11138 thiss!1427)) (array_inv!23818 (_values!6017 thiss!1427)) e!577589))))

(declare-fun b!1024541 () Bool)

(declare-fun e!577586 () Bool)

(declare-fun mapRes!37574 () Bool)

(assert (=> b!1024541 (= e!577589 (and e!577586 mapRes!37574))))

(declare-fun condMapEmpty!37574 () Bool)

(declare-fun mapDefault!37574 () ValueCell!11345)

