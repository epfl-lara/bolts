; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108592 () Bool)

(assert start!108592)

(declare-fun b_free!28103 () Bool)

(declare-fun b_next!28103 () Bool)

(assert (=> start!108592 (= b_free!28103 (not b_next!28103))))

(declare-fun tp!99419 () Bool)

(declare-fun b_and!46173 () Bool)

(assert (=> start!108592 (= tp!99419 b_and!46173)))

(declare-fun b!1281355 () Bool)

(declare-fun res!851266 () Bool)

(declare-fun e!732120 () Bool)

(assert (=> b!1281355 (=> (not res!851266) (not e!732120))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84509 0))(
  ( (array!84510 (arr!40754 (Array (_ BitVec 32) (_ BitVec 64))) (size!41305 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84509)

(assert (=> b!1281355 (= res!851266 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41305 _keys!1741))))))

(declare-fun b!1281356 () Bool)

(declare-fun res!851273 () Bool)

(assert (=> b!1281356 (=> (not res!851273) (not e!732120))))

(declare-datatypes ((List!29052 0))(
  ( (Nil!29049) (Cons!29048 (h!30257 (_ BitVec 64)) (t!42599 List!29052)) )
))
(declare-fun arrayNoDuplicates!0 (array!84509 (_ BitVec 32) List!29052) Bool)

(assert (=> b!1281356 (= res!851273 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29049))))

(declare-fun b!1281357 () Bool)

(declare-fun e!732124 () Bool)

(declare-fun tp_is_empty!33743 () Bool)

(assert (=> b!1281357 (= e!732124 tp_is_empty!33743)))

(declare-fun b!1281358 () Bool)

(declare-fun e!732119 () Bool)

(declare-fun e!732122 () Bool)

(declare-fun mapRes!52166 () Bool)

(assert (=> b!1281358 (= e!732119 (and e!732122 mapRes!52166))))

(declare-fun condMapEmpty!52166 () Bool)

(declare-datatypes ((V!50093 0))(
  ( (V!50094 (val!16946 Int)) )
))
(declare-datatypes ((ValueCell!15973 0))(
  ( (ValueCellFull!15973 (v!19544 V!50093)) (EmptyCell!15973) )
))
(declare-datatypes ((array!84511 0))(
  ( (array!84512 (arr!40755 (Array (_ BitVec 32) ValueCell!15973)) (size!41306 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84511)

(declare-fun mapDefault!52166 () ValueCell!15973)

