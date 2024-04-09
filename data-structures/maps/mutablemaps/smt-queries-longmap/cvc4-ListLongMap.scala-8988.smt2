; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108728 () Bool)

(assert start!108728)

(declare-fun b_free!28205 () Bool)

(declare-fun b_next!28205 () Bool)

(assert (=> start!108728 (= b_free!28205 (not b_next!28205))))

(declare-fun tp!99732 () Bool)

(declare-fun b_and!46281 () Bool)

(assert (=> start!108728 (= tp!99732 b_and!46281)))

(declare-fun res!852334 () Bool)

(declare-fun e!733071 () Bool)

(assert (=> start!108728 (=> (not res!852334) (not e!733071))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108728 (= res!852334 (validMask!0 mask!2175))))

(assert (=> start!108728 e!733071))

(declare-fun tp_is_empty!33845 () Bool)

(assert (=> start!108728 tp_is_empty!33845))

(assert (=> start!108728 true))

(declare-datatypes ((V!50229 0))(
  ( (V!50230 (val!16997 Int)) )
))
(declare-datatypes ((ValueCell!16024 0))(
  ( (ValueCellFull!16024 (v!19597 V!50229)) (EmptyCell!16024) )
))
(declare-datatypes ((array!84709 0))(
  ( (array!84710 (arr!40852 (Array (_ BitVec 32) ValueCell!16024)) (size!41403 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84709)

(declare-fun e!733075 () Bool)

(declare-fun array_inv!30971 (array!84709) Bool)

(assert (=> start!108728 (and (array_inv!30971 _values!1445) e!733075)))

(declare-datatypes ((array!84711 0))(
  ( (array!84712 (arr!40853 (Array (_ BitVec 32) (_ BitVec 64))) (size!41404 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84711)

(declare-fun array_inv!30972 (array!84711) Bool)

(assert (=> start!108728 (array_inv!30972 _keys!1741)))

(assert (=> start!108728 tp!99732))

(declare-fun b!1283030 () Bool)

(declare-fun res!852339 () Bool)

(assert (=> b!1283030 (=> (not res!852339) (not e!733071))))

(declare-datatypes ((List!29120 0))(
  ( (Nil!29117) (Cons!29116 (h!30325 (_ BitVec 64)) (t!42671 List!29120)) )
))
(declare-fun arrayNoDuplicates!0 (array!84711 (_ BitVec 32) List!29120) Bool)

(assert (=> b!1283030 (= res!852339 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29117))))

(declare-fun b!1283031 () Bool)

(declare-fun e!733074 () Bool)

(declare-fun mapRes!52325 () Bool)

(assert (=> b!1283031 (= e!733075 (and e!733074 mapRes!52325))))

(declare-fun condMapEmpty!52325 () Bool)

(declare-fun mapDefault!52325 () ValueCell!16024)

