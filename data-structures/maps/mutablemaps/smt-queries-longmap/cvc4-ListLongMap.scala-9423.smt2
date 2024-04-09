; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112186 () Bool)

(assert start!112186)

(declare-fun b_free!30545 () Bool)

(declare-fun b_next!30545 () Bool)

(assert (=> start!112186 (= b_free!30545 (not b_next!30545))))

(declare-fun tp!107272 () Bool)

(declare-fun b_and!49205 () Bool)

(assert (=> start!112186 (= tp!107272 b_and!49205)))

(declare-fun b!1328131 () Bool)

(declare-fun e!757264 () Bool)

(declare-fun tp_is_empty!36455 () Bool)

(assert (=> b!1328131 (= e!757264 tp_is_empty!36455)))

(declare-fun b!1328132 () Bool)

(declare-fun e!757263 () Bool)

(assert (=> b!1328132 (= e!757263 tp_is_empty!36455)))

(declare-fun b!1328133 () Bool)

(declare-fun res!881300 () Bool)

(declare-fun e!757260 () Bool)

(assert (=> b!1328133 (=> (not res!881300) (not e!757260))))

(declare-datatypes ((V!53709 0))(
  ( (V!53710 (val!18302 Int)) )
))
(declare-datatypes ((ValueCell!17329 0))(
  ( (ValueCellFull!17329 (v!20937 V!53709)) (EmptyCell!17329) )
))
(declare-datatypes ((array!89773 0))(
  ( (array!89774 (arr!43348 (Array (_ BitVec 32) ValueCell!17329)) (size!43899 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89773)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89775 0))(
  ( (array!89776 (arr!43349 (Array (_ BitVec 32) (_ BitVec 64))) (size!43900 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89775)

(assert (=> b!1328133 (= res!881300 (and (= (size!43899 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43900 _keys!1590) (size!43899 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1328134 () Bool)

(declare-fun res!881302 () Bool)

(assert (=> b!1328134 (=> (not res!881302) (not e!757260))))

(declare-datatypes ((List!30893 0))(
  ( (Nil!30890) (Cons!30889 (h!32098 (_ BitVec 64)) (t!44906 List!30893)) )
))
(declare-fun arrayNoDuplicates!0 (array!89775 (_ BitVec 32) List!30893) Bool)

(assert (=> b!1328134 (= res!881302 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30890))))

(declare-fun b!1328135 () Bool)

(declare-fun res!881299 () Bool)

(assert (=> b!1328135 (=> (not res!881299) (not e!757260))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89775 (_ BitVec 32)) Bool)

(assert (=> b!1328135 (= res!881299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1328136 () Bool)

(declare-fun e!757261 () Bool)

(declare-fun mapRes!56356 () Bool)

(assert (=> b!1328136 (= e!757261 (and e!757264 mapRes!56356))))

(declare-fun condMapEmpty!56356 () Bool)

(declare-fun mapDefault!56356 () ValueCell!17329)

