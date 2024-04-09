; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89610 () Bool)

(assert start!89610)

(declare-fun b!1027470 () Bool)

(declare-fun b_free!20573 () Bool)

(declare-fun b_next!20573 () Bool)

(assert (=> b!1027470 (= b_free!20573 (not b_next!20573))))

(declare-fun tp!72765 () Bool)

(declare-fun b_and!32841 () Bool)

(assert (=> b!1027470 (= tp!72765 b_and!32841)))

(declare-fun b!1027467 () Bool)

(declare-fun e!579930 () Bool)

(declare-fun e!579933 () Bool)

(declare-fun mapRes!37868 () Bool)

(assert (=> b!1027467 (= e!579930 (and e!579933 mapRes!37868))))

(declare-fun condMapEmpty!37868 () Bool)

(declare-datatypes ((V!37263 0))(
  ( (V!37264 (val!12197 Int)) )
))
(declare-datatypes ((ValueCell!11443 0))(
  ( (ValueCellFull!11443 (v!14767 V!37263)) (EmptyCell!11443) )
))
(declare-datatypes ((array!64620 0))(
  ( (array!64621 (arr!31115 (Array (_ BitVec 32) (_ BitVec 64))) (size!31629 (_ BitVec 32))) )
))
(declare-datatypes ((array!64622 0))(
  ( (array!64623 (arr!31116 (Array (_ BitVec 32) ValueCell!11443)) (size!31630 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5480 0))(
  ( (LongMapFixedSize!5481 (defaultEntry!6092 Int) (mask!29805 (_ BitVec 32)) (extraKeys!5824 (_ BitVec 32)) (zeroValue!5928 V!37263) (minValue!5928 V!37263) (_size!2795 (_ BitVec 32)) (_keys!11236 array!64620) (_values!6115 array!64622) (_vacant!2795 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5480)

(declare-fun mapDefault!37868 () ValueCell!11443)

