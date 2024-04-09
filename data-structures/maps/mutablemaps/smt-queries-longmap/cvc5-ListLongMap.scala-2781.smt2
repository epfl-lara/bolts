; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40582 () Bool)

(assert start!40582)

(declare-fun b_free!10585 () Bool)

(declare-fun b_next!10585 () Bool)

(assert (=> start!40582 (= b_free!10585 (not b_next!10585))))

(declare-fun tp!37574 () Bool)

(declare-fun b_and!18611 () Bool)

(assert (=> start!40582 (= tp!37574 b_and!18611)))

(declare-fun b!447137 () Bool)

(declare-fun res!265614 () Bool)

(declare-fun e!262581 () Bool)

(assert (=> b!447137 (=> (not res!265614) (not e!262581))))

(declare-datatypes ((array!27615 0))(
  ( (array!27616 (arr!13250 (Array (_ BitVec 32) (_ BitVec 64))) (size!13602 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27615)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17003 0))(
  ( (V!17004 (val!6006 Int)) )
))
(declare-datatypes ((ValueCell!5618 0))(
  ( (ValueCellFull!5618 (v!8257 V!17003)) (EmptyCell!5618) )
))
(declare-datatypes ((array!27617 0))(
  ( (array!27618 (arr!13251 (Array (_ BitVec 32) ValueCell!5618)) (size!13603 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27617)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!447137 (= res!265614 (and (= (size!13603 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13602 _keys!709) (size!13603 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!447138 () Bool)

(declare-fun e!262579 () Bool)

(declare-fun tp_is_empty!11923 () Bool)

(assert (=> b!447138 (= e!262579 tp_is_empty!11923)))

(declare-fun b!447139 () Bool)

(declare-fun e!262578 () Bool)

(declare-fun mapRes!19518 () Bool)

(assert (=> b!447139 (= e!262578 (and e!262579 mapRes!19518))))

(declare-fun condMapEmpty!19518 () Bool)

(declare-fun mapDefault!19518 () ValueCell!5618)

