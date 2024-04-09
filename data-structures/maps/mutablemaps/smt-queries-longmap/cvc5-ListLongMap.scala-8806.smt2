; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107096 () Bool)

(assert start!107096)

(declare-fun b_free!27565 () Bool)

(declare-fun b_next!27565 () Bool)

(assert (=> start!107096 (= b_free!27565 (not b_next!27565))))

(declare-fun tp!96922 () Bool)

(declare-fun b_and!45607 () Bool)

(assert (=> start!107096 (= tp!96922 b_and!45607)))

(declare-fun b!1269218 () Bool)

(declare-fun e!723428 () Bool)

(declare-fun e!723426 () Bool)

(declare-fun mapRes!50704 () Bool)

(assert (=> b!1269218 (= e!723428 (and e!723426 mapRes!50704))))

(declare-fun condMapEmpty!50704 () Bool)

(declare-datatypes ((V!48859 0))(
  ( (V!48860 (val!16449 Int)) )
))
(declare-datatypes ((ValueCell!15521 0))(
  ( (ValueCellFull!15521 (v!19084 V!48859)) (EmptyCell!15521) )
))
(declare-datatypes ((array!82739 0))(
  ( (array!82740 (arr!39902 (Array (_ BitVec 32) ValueCell!15521)) (size!40439 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82739)

(declare-fun mapDefault!50704 () ValueCell!15521)

