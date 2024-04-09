; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83010 () Bool)

(assert start!83010)

(declare-fun b!968386 () Bool)

(declare-fun e!545793 () Bool)

(declare-fun e!545795 () Bool)

(declare-fun mapRes!34870 () Bool)

(assert (=> b!968386 (= e!545793 (and e!545795 mapRes!34870))))

(declare-fun condMapEmpty!34870 () Bool)

(declare-datatypes ((V!34205 0))(
  ( (V!34206 (val!11009 Int)) )
))
(declare-datatypes ((ValueCell!10477 0))(
  ( (ValueCellFull!10477 (v!13567 V!34205)) (EmptyCell!10477) )
))
(declare-datatypes ((array!59885 0))(
  ( (array!59886 (arr!28807 (Array (_ BitVec 32) ValueCell!10477)) (size!29287 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59885)

(declare-fun mapDefault!34870 () ValueCell!10477)

