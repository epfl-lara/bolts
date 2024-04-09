; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90154 () Bool)

(assert start!90154)

(declare-fun b!1032302 () Bool)

(declare-fun b_free!20725 () Bool)

(declare-fun b_next!20725 () Bool)

(assert (=> b!1032302 (= b_free!20725 (not b_next!20725))))

(declare-fun tp!73246 () Bool)

(declare-fun b_and!33211 () Bool)

(assert (=> b!1032302 (= tp!73246 b_and!33211)))

(declare-fun b!1032300 () Bool)

(declare-fun e!583316 () Bool)

(declare-fun e!583320 () Bool)

(declare-fun mapRes!38121 () Bool)

(assert (=> b!1032300 (= e!583316 (and e!583320 mapRes!38121))))

(declare-fun condMapEmpty!38121 () Bool)

(declare-datatypes ((V!37467 0))(
  ( (V!37468 (val!12273 Int)) )
))
(declare-datatypes ((ValueCell!11519 0))(
  ( (ValueCellFull!11519 (v!14851 V!37467)) (EmptyCell!11519) )
))
(declare-datatypes ((array!64938 0))(
  ( (array!64939 (arr!31267 (Array (_ BitVec 32) (_ BitVec 64))) (size!31785 (_ BitVec 32))) )
))
(declare-datatypes ((array!64940 0))(
  ( (array!64941 (arr!31268 (Array (_ BitVec 32) ValueCell!11519)) (size!31786 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5632 0))(
  ( (LongMapFixedSize!5633 (defaultEntry!6190 Int) (mask!30003 (_ BitVec 32)) (extraKeys!5922 (_ BitVec 32)) (zeroValue!6026 V!37467) (minValue!6026 V!37467) (_size!2871 (_ BitVec 32)) (_keys!11360 array!64938) (_values!6213 array!64940) (_vacant!2871 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5632)

(declare-fun mapDefault!38121 () ValueCell!11519)

