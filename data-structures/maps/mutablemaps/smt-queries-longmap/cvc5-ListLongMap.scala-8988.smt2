; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108724 () Bool)

(assert start!108724)

(declare-fun b_free!28201 () Bool)

(declare-fun b_next!28201 () Bool)

(assert (=> start!108724 (= b_free!28201 (not b_next!28201))))

(declare-fun tp!99719 () Bool)

(declare-fun b_and!46277 () Bool)

(assert (=> start!108724 (= tp!99719 b_and!46277)))

(declare-fun res!852286 () Bool)

(declare-fun e!733045 () Bool)

(assert (=> start!108724 (=> (not res!852286) (not e!733045))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108724 (= res!852286 (validMask!0 mask!2175))))

(assert (=> start!108724 e!733045))

(declare-fun tp_is_empty!33841 () Bool)

(assert (=> start!108724 tp_is_empty!33841))

(assert (=> start!108724 true))

(declare-datatypes ((V!50225 0))(
  ( (V!50226 (val!16995 Int)) )
))
(declare-datatypes ((ValueCell!16022 0))(
  ( (ValueCellFull!16022 (v!19595 V!50225)) (EmptyCell!16022) )
))
(declare-datatypes ((array!84701 0))(
  ( (array!84702 (arr!40848 (Array (_ BitVec 32) ValueCell!16022)) (size!41399 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84701)

(declare-fun e!733043 () Bool)

(declare-fun array_inv!30967 (array!84701) Bool)

(assert (=> start!108724 (and (array_inv!30967 _values!1445) e!733043)))

(declare-datatypes ((array!84703 0))(
  ( (array!84704 (arr!40849 (Array (_ BitVec 32) (_ BitVec 64))) (size!41400 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84703)

(declare-fun array_inv!30968 (array!84703) Bool)

(assert (=> start!108724 (array_inv!30968 _keys!1741)))

(assert (=> start!108724 tp!99719))

(declare-fun b!1282958 () Bool)

(declare-fun res!852280 () Bool)

(assert (=> b!1282958 (=> (not res!852280) (not e!733045))))

(declare-datatypes ((List!29117 0))(
  ( (Nil!29114) (Cons!29113 (h!30322 (_ BitVec 64)) (t!42668 List!29117)) )
))
(declare-fun arrayNoDuplicates!0 (array!84703 (_ BitVec 32) List!29117) Bool)

(assert (=> b!1282958 (= res!852280 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29114))))

(declare-fun b!1282959 () Bool)

(declare-fun e!733041 () Bool)

(declare-fun mapRes!52319 () Bool)

(assert (=> b!1282959 (= e!733043 (and e!733041 mapRes!52319))))

(declare-fun condMapEmpty!52319 () Bool)

(declare-fun mapDefault!52319 () ValueCell!16022)

