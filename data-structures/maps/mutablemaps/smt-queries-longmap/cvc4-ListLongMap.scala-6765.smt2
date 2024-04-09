; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84918 () Bool)

(assert start!84918)

(declare-fun b!991857 () Bool)

(declare-fun res!663060 () Bool)

(declare-fun e!559510 () Bool)

(assert (=> b!991857 (=> (not res!663060) (not e!559510))))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(declare-datatypes ((V!36141 0))(
  ( (V!36142 (val!11735 Int)) )
))
(declare-datatypes ((ValueCell!11203 0))(
  ( (ValueCellFull!11203 (v!14312 V!36141)) (EmptyCell!11203) )
))
(declare-datatypes ((array!62689 0))(
  ( (array!62690 (arr!30185 (Array (_ BitVec 32) ValueCell!11203)) (size!30665 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62689)

(declare-fun mask!2471 () (_ BitVec 32))

(declare-datatypes ((array!62691 0))(
  ( (array!62692 (arr!30186 (Array (_ BitVec 32) (_ BitVec 64))) (size!30666 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62691)

(assert (=> b!991857 (= res!663060 (and (= (size!30665 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30666 _keys!1945) (size!30665 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011)))))

(declare-fun b!991858 () Bool)

(declare-fun e!559508 () Bool)

(declare-fun e!559511 () Bool)

(declare-fun mapRes!37125 () Bool)

(assert (=> b!991858 (= e!559508 (and e!559511 mapRes!37125))))

(declare-fun condMapEmpty!37125 () Bool)

(declare-fun mapDefault!37125 () ValueCell!11203)

