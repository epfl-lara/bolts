; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111738 () Bool)

(assert start!111738)

(declare-fun b_free!30359 () Bool)

(declare-fun b_next!30359 () Bool)

(assert (=> start!111738 (= b_free!30359 (not b_next!30359))))

(declare-fun tp!106554 () Bool)

(declare-fun b_and!48887 () Bool)

(assert (=> start!111738 (= tp!106554 b_and!48887)))

(declare-fun b!1323399 () Bool)

(declare-fun res!878509 () Bool)

(declare-fun e!754504 () Bool)

(assert (=> b!1323399 (=> (not res!878509) (not e!754504))))

(declare-datatypes ((array!89233 0))(
  ( (array!89234 (arr!43086 (Array (_ BitVec 32) (_ BitVec 64))) (size!43637 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89233)

(declare-datatypes ((List!30742 0))(
  ( (Nil!30739) (Cons!30738 (h!31947 (_ BitVec 64)) (t!44657 List!30742)) )
))
(declare-fun arrayNoDuplicates!0 (array!89233 (_ BitVec 32) List!30742) Bool)

(assert (=> b!1323399 (= res!878509 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30739))))

(declare-fun b!1323400 () Bool)

(declare-fun e!754503 () Bool)

(declare-fun tp_is_empty!36179 () Bool)

(assert (=> b!1323400 (= e!754503 tp_is_empty!36179)))

(declare-fun b!1323401 () Bool)

(declare-fun e!754506 () Bool)

(declare-fun mapRes!55916 () Bool)

(assert (=> b!1323401 (= e!754506 (and e!754503 mapRes!55916))))

(declare-fun condMapEmpty!55916 () Bool)

(declare-datatypes ((V!53341 0))(
  ( (V!53342 (val!18164 Int)) )
))
(declare-datatypes ((ValueCell!17191 0))(
  ( (ValueCellFull!17191 (v!20792 V!53341)) (EmptyCell!17191) )
))
(declare-datatypes ((array!89235 0))(
  ( (array!89236 (arr!43087 (Array (_ BitVec 32) ValueCell!17191)) (size!43638 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89235)

(declare-fun mapDefault!55916 () ValueCell!17191)

