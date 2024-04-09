; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89324 () Bool)

(assert start!89324)

(declare-fun b!1023776 () Bool)

(declare-fun b_free!20329 () Bool)

(declare-fun b_next!20329 () Bool)

(assert (=> b!1023776 (= b_free!20329 (not b_next!20329))))

(declare-fun tp!72023 () Bool)

(declare-fun b_and!32587 () Bool)

(assert (=> b!1023776 (= tp!72023 b_and!32587)))

(declare-fun b!1023773 () Bool)

(declare-fun e!577009 () Bool)

(declare-fun e!577008 () Bool)

(declare-fun mapRes!37491 () Bool)

(assert (=> b!1023773 (= e!577009 (and e!577008 mapRes!37491))))

(declare-fun condMapEmpty!37491 () Bool)

(declare-datatypes ((V!36939 0))(
  ( (V!36940 (val!12075 Int)) )
))
(declare-datatypes ((ValueCell!11321 0))(
  ( (ValueCellFull!11321 (v!14645 V!36939)) (EmptyCell!11321) )
))
(declare-datatypes ((array!64126 0))(
  ( (array!64127 (arr!30871 (Array (_ BitVec 32) (_ BitVec 64))) (size!31383 (_ BitVec 32))) )
))
(declare-datatypes ((array!64128 0))(
  ( (array!64129 (arr!30872 (Array (_ BitVec 32) ValueCell!11321)) (size!31384 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5236 0))(
  ( (LongMapFixedSize!5237 (defaultEntry!5970 Int) (mask!29598 (_ BitVec 32)) (extraKeys!5702 (_ BitVec 32)) (zeroValue!5806 V!36939) (minValue!5806 V!36939) (_size!2673 (_ BitVec 32)) (_keys!11112 array!64126) (_values!5993 array!64128) (_vacant!2673 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5236)

(declare-fun mapDefault!37491 () ValueCell!11321)

