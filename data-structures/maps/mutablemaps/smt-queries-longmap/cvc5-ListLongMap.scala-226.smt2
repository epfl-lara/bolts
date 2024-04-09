; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4036 () Bool)

(assert start!4036)

(declare-fun b_free!943 () Bool)

(declare-fun b_next!943 () Bool)

(assert (=> start!4036 (= b_free!943 (not b_next!943))))

(declare-fun tp!4248 () Bool)

(declare-fun b_and!1755 () Bool)

(assert (=> start!4036 (= tp!4248 b_and!1755)))

(declare-fun b!29596 () Bool)

(declare-fun res!17744 () Bool)

(declare-fun e!19098 () Bool)

(assert (=> b!29596 (=> (not res!17744) (not e!19098))))

(declare-datatypes ((array!1815 0))(
  ( (array!1816 (arr!861 (Array (_ BitVec 32) (_ BitVec 64))) (size!962 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1815)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1815 (_ BitVec 32)) Bool)

(assert (=> b!29596 (= res!17744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!29597 () Bool)

(declare-fun res!17746 () Bool)

(assert (=> b!29597 (=> (not res!17746) (not e!19098))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29597 (= res!17746 (validKeyInArray!0 k!1304))))

(declare-fun b!29598 () Bool)

(declare-fun e!19099 () Bool)

(declare-fun e!19102 () Bool)

(declare-fun mapRes!1474 () Bool)

(assert (=> b!29598 (= e!19099 (and e!19102 mapRes!1474))))

(declare-fun condMapEmpty!1474 () Bool)

(declare-datatypes ((V!1555 0))(
  ( (V!1556 (val!675 Int)) )
))
(declare-datatypes ((ValueCell!449 0))(
  ( (ValueCellFull!449 (v!1764 V!1555)) (EmptyCell!449) )
))
(declare-datatypes ((array!1817 0))(
  ( (array!1818 (arr!862 (Array (_ BitVec 32) ValueCell!449)) (size!963 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1817)

(declare-fun mapDefault!1474 () ValueCell!449)

