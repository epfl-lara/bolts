; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42134 () Bool)

(assert start!42134)

(declare-fun b_free!11659 () Bool)

(declare-fun b_next!11659 () Bool)

(assert (=> start!42134 (= b_free!11659 (not b_next!11659))))

(declare-fun tp!40998 () Bool)

(declare-fun b_and!20099 () Bool)

(assert (=> start!42134 (= tp!40998 b_and!20099)))

(declare-fun b!470105 () Bool)

(declare-fun e!275390 () Bool)

(declare-fun e!275391 () Bool)

(declare-fun mapRes!21331 () Bool)

(assert (=> b!470105 (= e!275390 (and e!275391 mapRes!21331))))

(declare-fun condMapEmpty!21331 () Bool)

(declare-datatypes ((V!18555 0))(
  ( (V!18556 (val!6588 Int)) )
))
(declare-datatypes ((ValueCell!6200 0))(
  ( (ValueCellFull!6200 (v!8875 V!18555)) (EmptyCell!6200) )
))
(declare-datatypes ((array!29907 0))(
  ( (array!29908 (arr!14374 (Array (_ BitVec 32) ValueCell!6200)) (size!14726 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29907)

(declare-fun mapDefault!21331 () ValueCell!6200)

