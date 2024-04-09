; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90152 () Bool)

(assert start!90152)

(declare-fun b!1032285 () Bool)

(declare-fun b_free!20723 () Bool)

(declare-fun b_next!20723 () Bool)

(assert (=> b!1032285 (= b_free!20723 (not b_next!20723))))

(declare-fun tp!73241 () Bool)

(declare-fun b_and!33209 () Bool)

(assert (=> b!1032285 (= tp!73241 b_and!33209)))

(declare-fun b!1032282 () Bool)

(declare-fun e!583302 () Bool)

(declare-fun e!583298 () Bool)

(declare-fun mapRes!38118 () Bool)

(assert (=> b!1032282 (= e!583302 (and e!583298 mapRes!38118))))

(declare-fun condMapEmpty!38118 () Bool)

(declare-datatypes ((V!37463 0))(
  ( (V!37464 (val!12272 Int)) )
))
(declare-datatypes ((ValueCell!11518 0))(
  ( (ValueCellFull!11518 (v!14850 V!37463)) (EmptyCell!11518) )
))
(declare-datatypes ((array!64934 0))(
  ( (array!64935 (arr!31265 (Array (_ BitVec 32) (_ BitVec 64))) (size!31783 (_ BitVec 32))) )
))
(declare-datatypes ((array!64936 0))(
  ( (array!64937 (arr!31266 (Array (_ BitVec 32) ValueCell!11518)) (size!31784 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5630 0))(
  ( (LongMapFixedSize!5631 (defaultEntry!6189 Int) (mask!30000 (_ BitVec 32)) (extraKeys!5921 (_ BitVec 32)) (zeroValue!6025 V!37463) (minValue!6025 V!37463) (_size!2870 (_ BitVec 32)) (_keys!11359 array!64934) (_values!6212 array!64936) (_vacant!2870 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5630)

(declare-fun mapDefault!38118 () ValueCell!11518)

