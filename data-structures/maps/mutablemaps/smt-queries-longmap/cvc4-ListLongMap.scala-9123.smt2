; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109562 () Bool)

(assert start!109562)

(declare-fun b_free!29015 () Bool)

(declare-fun b_next!29015 () Bool)

(assert (=> start!109562 (= b_free!29015 (not b_next!29015))))

(declare-fun tp!102164 () Bool)

(declare-fun b_and!47115 () Bool)

(assert (=> start!109562 (= tp!102164 b_and!47115)))

(declare-fun b!1297117 () Bool)

(declare-fun res!862127 () Bool)

(declare-fun e!740059 () Bool)

(assert (=> b!1297117 (=> (not res!862127) (not e!740059))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86287 0))(
  ( (array!86288 (arr!41640 (Array (_ BitVec 32) (_ BitVec 64))) (size!42191 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86287)

(assert (=> b!1297117 (= res!862127 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42191 _keys!1741))))))

(declare-fun b!1297118 () Bool)

(declare-fun e!740058 () Bool)

(declare-fun tp_is_empty!34655 () Bool)

(assert (=> b!1297118 (= e!740058 tp_is_empty!34655)))

(declare-fun b!1297119 () Bool)

(declare-fun e!740060 () Bool)

(assert (=> b!1297119 (= e!740060 tp_is_empty!34655)))

(declare-fun b!1297120 () Bool)

(declare-fun res!862125 () Bool)

(assert (=> b!1297120 (=> (not res!862125) (not e!740059))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51309 0))(
  ( (V!51310 (val!17402 Int)) )
))
(declare-datatypes ((ValueCell!16429 0))(
  ( (ValueCellFull!16429 (v!20003 V!51309)) (EmptyCell!16429) )
))
(declare-datatypes ((array!86289 0))(
  ( (array!86290 (arr!41641 (Array (_ BitVec 32) ValueCell!16429)) (size!42192 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86289)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1297120 (= res!862125 (and (= (size!42192 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42191 _keys!1741) (size!42192 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53543 () Bool)

(declare-fun mapRes!53543 () Bool)

(declare-fun tp!102165 () Bool)

(assert (=> mapNonEmpty!53543 (= mapRes!53543 (and tp!102165 e!740060))))

(declare-fun mapRest!53543 () (Array (_ BitVec 32) ValueCell!16429))

(declare-fun mapKey!53543 () (_ BitVec 32))

(declare-fun mapValue!53543 () ValueCell!16429)

(assert (=> mapNonEmpty!53543 (= (arr!41641 _values!1445) (store mapRest!53543 mapKey!53543 mapValue!53543))))

(declare-fun b!1297121 () Bool)

(declare-fun e!740062 () Bool)

(assert (=> b!1297121 (= e!740062 (and e!740058 mapRes!53543))))

(declare-fun condMapEmpty!53543 () Bool)

(declare-fun mapDefault!53543 () ValueCell!16429)

