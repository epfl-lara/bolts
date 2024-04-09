; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109100 () Bool)

(assert start!109100)

(declare-fun b_free!28553 () Bool)

(declare-fun b_next!28553 () Bool)

(assert (=> start!109100 (= b_free!28553 (not b_next!28553))))

(declare-fun tp!100778 () Bool)

(declare-fun b_and!46653 () Bool)

(assert (=> start!109100 (= tp!100778 b_and!46653)))

(declare-fun b!1289139 () Bool)

(declare-fun res!856394 () Bool)

(declare-fun e!736088 () Bool)

(assert (=> b!1289139 (=> (not res!856394) (not e!736088))))

(declare-datatypes ((array!85385 0))(
  ( (array!85386 (arr!41189 (Array (_ BitVec 32) (_ BitVec 64))) (size!41740 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85385)

(declare-datatypes ((List!29383 0))(
  ( (Nil!29380) (Cons!29379 (h!30588 (_ BitVec 64)) (t!42954 List!29383)) )
))
(declare-fun arrayNoDuplicates!0 (array!85385 (_ BitVec 32) List!29383) Bool)

(assert (=> b!1289139 (= res!856394 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29380))))

(declare-fun b!1289140 () Bool)

(declare-fun e!736092 () Bool)

(declare-fun e!736091 () Bool)

(declare-fun mapRes!52850 () Bool)

(assert (=> b!1289140 (= e!736092 (and e!736091 mapRes!52850))))

(declare-fun condMapEmpty!52850 () Bool)

(declare-datatypes ((V!50693 0))(
  ( (V!50694 (val!17171 Int)) )
))
(declare-datatypes ((ValueCell!16198 0))(
  ( (ValueCellFull!16198 (v!19772 V!50693)) (EmptyCell!16198) )
))
(declare-datatypes ((array!85387 0))(
  ( (array!85388 (arr!41190 (Array (_ BitVec 32) ValueCell!16198)) (size!41741 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85387)

(declare-fun mapDefault!52850 () ValueCell!16198)

