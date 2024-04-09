; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106932 () Bool)

(assert start!106932)

(declare-fun b!1267931 () Bool)

(declare-fun e!722429 () Bool)

(declare-fun e!722430 () Bool)

(declare-fun mapRes!50509 () Bool)

(assert (=> b!1267931 (= e!722429 (and e!722430 mapRes!50509))))

(declare-fun condMapEmpty!50509 () Bool)

(declare-datatypes ((V!48699 0))(
  ( (V!48700 (val!16389 Int)) )
))
(declare-datatypes ((ValueCell!15461 0))(
  ( (ValueCellFull!15461 (v!19023 V!48699)) (EmptyCell!15461) )
))
(declare-datatypes ((array!82507 0))(
  ( (array!82508 (arr!39791 (Array (_ BitVec 32) ValueCell!15461)) (size!40328 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82507)

(declare-fun mapDefault!50509 () ValueCell!15461)

