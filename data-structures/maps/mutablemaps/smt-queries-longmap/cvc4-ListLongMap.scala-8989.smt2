; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108734 () Bool)

(assert start!108734)

(declare-fun b_free!28211 () Bool)

(declare-fun b_next!28211 () Bool)

(assert (=> start!108734 (= b_free!28211 (not b_next!28211))))

(declare-fun tp!99750 () Bool)

(declare-fun b_and!46287 () Bool)

(assert (=> start!108734 (= tp!99750 b_and!46287)))

(declare-fun b!1283138 () Bool)

(declare-fun res!852416 () Bool)

(declare-fun e!733118 () Bool)

(assert (=> b!1283138 (=> (not res!852416) (not e!733118))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!84721 0))(
  ( (array!84722 (arr!40858 (Array (_ BitVec 32) (_ BitVec 64))) (size!41409 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84721)

(assert (=> b!1283138 (= res!852416 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41409 _keys!1741))))))

(declare-fun b!1283139 () Bool)

(declare-fun e!733120 () Bool)

(declare-fun tp_is_empty!33851 () Bool)

(assert (=> b!1283139 (= e!733120 tp_is_empty!33851)))

(declare-fun b!1283140 () Bool)

(declare-fun res!852420 () Bool)

(assert (=> b!1283140 (=> (not res!852420) (not e!733118))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283140 (= res!852420 (validKeyInArray!0 (select (arr!40858 _keys!1741) from!2144)))))

(declare-fun b!1283141 () Bool)

(declare-fun e!733119 () Bool)

(assert (=> b!1283141 (= e!733119 tp_is_empty!33851)))

(declare-fun b!1283142 () Bool)

(declare-fun res!852418 () Bool)

(assert (=> b!1283142 (=> (not res!852418) (not e!733118))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50237 0))(
  ( (V!50238 (val!17000 Int)) )
))
(declare-datatypes ((ValueCell!16027 0))(
  ( (ValueCellFull!16027 (v!19600 V!50237)) (EmptyCell!16027) )
))
(declare-datatypes ((array!84723 0))(
  ( (array!84724 (arr!40859 (Array (_ BitVec 32) ValueCell!16027)) (size!41410 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84723)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1283142 (= res!852418 (and (= (size!41410 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41409 _keys!1741) (size!41410 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1283143 () Bool)

(declare-fun e!733117 () Bool)

(declare-fun mapRes!52334 () Bool)

(assert (=> b!1283143 (= e!733117 (and e!733119 mapRes!52334))))

(declare-fun condMapEmpty!52334 () Bool)

(declare-fun mapDefault!52334 () ValueCell!16027)

