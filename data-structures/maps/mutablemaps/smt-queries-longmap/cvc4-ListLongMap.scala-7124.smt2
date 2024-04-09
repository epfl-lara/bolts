; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90340 () Bool)

(assert start!90340)

(declare-fun b!1033563 () Bool)

(declare-fun b_free!20801 () Bool)

(declare-fun b_next!20801 () Bool)

(assert (=> b!1033563 (= b_free!20801 (not b_next!20801))))

(declare-fun tp!73504 () Bool)

(declare-fun b_and!33291 () Bool)

(assert (=> b!1033563 (= tp!73504 b_and!33291)))

(declare-fun b!1033562 () Bool)

(declare-fun e!584272 () Bool)

(declare-fun e!584274 () Bool)

(declare-fun mapRes!38264 () Bool)

(assert (=> b!1033562 (= e!584272 (and e!584274 mapRes!38264))))

(declare-fun condMapEmpty!38264 () Bool)

(declare-datatypes ((V!37567 0))(
  ( (V!37568 (val!12311 Int)) )
))
(declare-datatypes ((ValueCell!11557 0))(
  ( (ValueCellFull!11557 (v!14889 V!37567)) (EmptyCell!11557) )
))
(declare-datatypes ((array!65106 0))(
  ( (array!65107 (arr!31343 (Array (_ BitVec 32) (_ BitVec 64))) (size!31866 (_ BitVec 32))) )
))
(declare-datatypes ((array!65108 0))(
  ( (array!65109 (arr!31344 (Array (_ BitVec 32) ValueCell!11557)) (size!31867 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5708 0))(
  ( (LongMapFixedSize!5709 (defaultEntry!6228 Int) (mask!30080 (_ BitVec 32)) (extraKeys!5960 (_ BitVec 32)) (zeroValue!6064 V!37567) (minValue!6064 V!37567) (_size!2909 (_ BitVec 32)) (_keys!11405 array!65106) (_values!6251 array!65108) (_vacant!2909 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5708)

(declare-fun mapDefault!38264 () ValueCell!11557)

