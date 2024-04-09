; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41654 () Bool)

(assert start!41654)

(declare-fun b_free!11299 () Bool)

(declare-fun b_next!11299 () Bool)

(assert (=> start!41654 (= b_free!11299 (not b_next!11299))))

(declare-fun tp!39897 () Bool)

(declare-fun b_and!19665 () Bool)

(assert (=> start!41654 (= tp!39897 b_and!19665)))

(declare-fun b!464876 () Bool)

(declare-fun e!271639 () Bool)

(declare-fun e!271636 () Bool)

(declare-fun mapRes!20770 () Bool)

(assert (=> b!464876 (= e!271639 (and e!271636 mapRes!20770))))

(declare-fun condMapEmpty!20770 () Bool)

(declare-datatypes ((V!18075 0))(
  ( (V!18076 (val!6408 Int)) )
))
(declare-datatypes ((ValueCell!6020 0))(
  ( (ValueCellFull!6020 (v!8691 V!18075)) (EmptyCell!6020) )
))
(declare-datatypes ((array!29197 0))(
  ( (array!29198 (arr!14026 (Array (_ BitVec 32) ValueCell!6020)) (size!14378 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29197)

(declare-fun mapDefault!20770 () ValueCell!6020)

