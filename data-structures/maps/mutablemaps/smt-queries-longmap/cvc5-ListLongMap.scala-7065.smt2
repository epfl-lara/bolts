; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89480 () Bool)

(assert start!89480)

(declare-fun b!1025630 () Bool)

(declare-fun b_free!20443 () Bool)

(declare-fun b_next!20443 () Bool)

(assert (=> b!1025630 (= b_free!20443 (not b_next!20443))))

(declare-fun tp!72376 () Bool)

(declare-fun b_and!32707 () Bool)

(assert (=> b!1025630 (= tp!72376 b_and!32707)))

(declare-fun b!1025629 () Bool)

(declare-fun e!578382 () Bool)

(declare-fun tp_is_empty!24163 () Bool)

(assert (=> b!1025629 (= e!578382 tp_is_empty!24163)))

(declare-fun e!578380 () Bool)

(declare-fun e!578379 () Bool)

(declare-datatypes ((V!37091 0))(
  ( (V!37092 (val!12132 Int)) )
))
(declare-datatypes ((ValueCell!11378 0))(
  ( (ValueCellFull!11378 (v!14702 V!37091)) (EmptyCell!11378) )
))
(declare-datatypes ((array!64360 0))(
  ( (array!64361 (arr!30985 (Array (_ BitVec 32) (_ BitVec 64))) (size!31499 (_ BitVec 32))) )
))
(declare-datatypes ((array!64362 0))(
  ( (array!64363 (arr!30986 (Array (_ BitVec 32) ValueCell!11378)) (size!31500 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5350 0))(
  ( (LongMapFixedSize!5351 (defaultEntry!6027 Int) (mask!29698 (_ BitVec 32)) (extraKeys!5759 (_ BitVec 32)) (zeroValue!5863 V!37091) (minValue!5863 V!37091) (_size!2730 (_ BitVec 32)) (_keys!11171 array!64360) (_values!6050 array!64362) (_vacant!2730 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5350)

(declare-fun array_inv!23849 (array!64360) Bool)

(declare-fun array_inv!23850 (array!64362) Bool)

(assert (=> b!1025630 (= e!578379 (and tp!72376 tp_is_empty!24163 (array_inv!23849 (_keys!11171 thiss!1427)) (array_inv!23850 (_values!6050 thiss!1427)) e!578380))))

(declare-fun b!1025631 () Bool)

(declare-fun e!578377 () Bool)

(declare-fun mapRes!37673 () Bool)

(assert (=> b!1025631 (= e!578380 (and e!578377 mapRes!37673))))

(declare-fun condMapEmpty!37673 () Bool)

(declare-fun mapDefault!37673 () ValueCell!11378)

