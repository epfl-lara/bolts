; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101272 () Bool)

(assert start!101272)

(declare-fun b_free!26159 () Bool)

(declare-fun b_next!26159 () Bool)

(assert (=> start!101272 (= b_free!26159 (not b_next!26159))))

(declare-fun tp!91500 () Bool)

(declare-fun b_and!43445 () Bool)

(assert (=> start!101272 (= tp!91500 b_and!43445)))

(declare-fun b!1215696 () Bool)

(declare-fun e!690302 () Bool)

(declare-fun e!690301 () Bool)

(declare-fun mapRes!48169 () Bool)

(assert (=> b!1215696 (= e!690302 (and e!690301 mapRes!48169))))

(declare-fun condMapEmpty!48169 () Bool)

(declare-datatypes ((V!46277 0))(
  ( (V!46278 (val!15488 Int)) )
))
(declare-datatypes ((ValueCell!14722 0))(
  ( (ValueCellFull!14722 (v!18142 V!46277)) (EmptyCell!14722) )
))
(declare-datatypes ((array!78478 0))(
  ( (array!78479 (arr!37870 (Array (_ BitVec 32) ValueCell!14722)) (size!38407 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78478)

(declare-fun mapDefault!48169 () ValueCell!14722)

