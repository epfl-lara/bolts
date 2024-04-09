; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107030 () Bool)

(assert start!107030)

(declare-fun b!1268547 () Bool)

(declare-fun e!722930 () Bool)

(declare-fun e!722929 () Bool)

(declare-fun mapRes!50605 () Bool)

(assert (=> b!1268547 (= e!722930 (and e!722929 mapRes!50605))))

(declare-fun condMapEmpty!50605 () Bool)

(declare-datatypes ((V!48771 0))(
  ( (V!48772 (val!16416 Int)) )
))
(declare-datatypes ((ValueCell!15488 0))(
  ( (ValueCellFull!15488 (v!19051 V!48771)) (EmptyCell!15488) )
))
(declare-datatypes ((array!82615 0))(
  ( (array!82616 (arr!39840 (Array (_ BitVec 32) ValueCell!15488)) (size!40377 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82615)

(declare-fun mapDefault!50605 () ValueCell!15488)

