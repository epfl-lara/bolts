; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82856 () Bool)

(assert start!82856)

(declare-fun b_free!18955 () Bool)

(declare-fun b_next!18955 () Bool)

(assert (=> start!82856 (= b_free!18955 (not b_next!18955))))

(declare-fun tp!65994 () Bool)

(declare-fun b_and!30461 () Bool)

(assert (=> start!82856 (= tp!65994 b_and!30461)))

(declare-fun b!966059 () Bool)

(declare-fun res!646764 () Bool)

(declare-fun e!544621 () Bool)

(assert (=> b!966059 (=> (not res!646764) (not e!544621))))

(declare-datatypes ((array!59589 0))(
  ( (array!59590 (arr!28659 (Array (_ BitVec 32) (_ BitVec 64))) (size!29139 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59589)

(declare-datatypes ((List!20016 0))(
  ( (Nil!20013) (Cons!20012 (h!21174 (_ BitVec 64)) (t!28387 List!20016)) )
))
(declare-fun arrayNoDuplicates!0 (array!59589 (_ BitVec 32) List!20016) Bool)

(assert (=> b!966059 (= res!646764 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20013))))

(declare-fun mapIsEmpty!34639 () Bool)

(declare-fun mapRes!34639 () Bool)

(assert (=> mapIsEmpty!34639 mapRes!34639))

(declare-fun b!966061 () Bool)

(declare-fun e!544620 () Bool)

(declare-fun e!544623 () Bool)

(assert (=> b!966061 (= e!544620 (and e!544623 mapRes!34639))))

(declare-fun condMapEmpty!34639 () Bool)

(declare-datatypes ((V!34001 0))(
  ( (V!34002 (val!10932 Int)) )
))
(declare-datatypes ((ValueCell!10400 0))(
  ( (ValueCellFull!10400 (v!13490 V!34001)) (EmptyCell!10400) )
))
(declare-datatypes ((array!59591 0))(
  ( (array!59592 (arr!28660 (Array (_ BitVec 32) ValueCell!10400)) (size!29140 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59591)

(declare-fun mapDefault!34639 () ValueCell!10400)

