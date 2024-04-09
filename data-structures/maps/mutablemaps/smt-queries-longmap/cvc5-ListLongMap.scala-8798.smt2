; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107048 () Bool)

(assert start!107048)

(declare-fun b!1268709 () Bool)

(declare-fun e!723065 () Bool)

(declare-fun e!723067 () Bool)

(declare-fun mapRes!50632 () Bool)

(assert (=> b!1268709 (= e!723065 (and e!723067 mapRes!50632))))

(declare-fun condMapEmpty!50632 () Bool)

(declare-datatypes ((V!48795 0))(
  ( (V!48796 (val!16425 Int)) )
))
(declare-datatypes ((ValueCell!15497 0))(
  ( (ValueCellFull!15497 (v!19060 V!48795)) (EmptyCell!15497) )
))
(declare-datatypes ((array!82649 0))(
  ( (array!82650 (arr!39857 (Array (_ BitVec 32) ValueCell!15497)) (size!40394 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82649)

(declare-fun mapDefault!50632 () ValueCell!15497)

