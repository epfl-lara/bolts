; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111038 () Bool)

(assert start!111038)

(declare-fun b_free!29837 () Bool)

(declare-fun b_next!29837 () Bool)

(assert (=> start!111038 (= b_free!29837 (not b_next!29837))))

(declare-fun tp!104834 () Bool)

(declare-fun b_and!48055 () Bool)

(assert (=> start!111038 (= tp!104834 b_and!48055)))

(declare-fun b!1314081 () Bool)

(declare-fun res!872482 () Bool)

(declare-fun e!749615 () Bool)

(assert (=> b!1314081 (=> (not res!872482) (not e!749615))))

(declare-datatypes ((array!88071 0))(
  ( (array!88072 (arr!42511 (Array (_ BitVec 32) (_ BitVec 64))) (size!43062 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88071)

(declare-datatypes ((List!30361 0))(
  ( (Nil!30358) (Cons!30357 (h!31566 (_ BitVec 64)) (t!43974 List!30361)) )
))
(declare-fun arrayNoDuplicates!0 (array!88071 (_ BitVec 32) List!30361) Bool)

(assert (=> b!1314081 (= res!872482 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30358))))

(declare-fun b!1314082 () Bool)

(declare-fun e!749611 () Bool)

(declare-fun tp_is_empty!35567 () Bool)

(assert (=> b!1314082 (= e!749611 tp_is_empty!35567)))

(declare-fun b!1314083 () Bool)

(declare-fun res!872480 () Bool)

(assert (=> b!1314083 (=> (not res!872480) (not e!749615))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((V!52525 0))(
  ( (V!52526 (val!17858 Int)) )
))
(declare-datatypes ((ValueCell!16885 0))(
  ( (ValueCellFull!16885 (v!20483 V!52525)) (EmptyCell!16885) )
))
(declare-datatypes ((array!88073 0))(
  ( (array!88074 (arr!42512 (Array (_ BitVec 32) ValueCell!16885)) (size!43063 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88073)

(assert (=> b!1314083 (= res!872480 (and (= (size!43063 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43062 _keys!1628) (size!43063 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1314084 () Bool)

(declare-fun e!749612 () Bool)

(assert (=> b!1314084 (= e!749612 tp_is_empty!35567)))

(declare-fun res!872479 () Bool)

(assert (=> start!111038 (=> (not res!872479) (not e!749615))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111038 (= res!872479 (validMask!0 mask!2040))))

(assert (=> start!111038 e!749615))

(assert (=> start!111038 tp!104834))

(declare-fun array_inv!32089 (array!88071) Bool)

(assert (=> start!111038 (array_inv!32089 _keys!1628)))

(assert (=> start!111038 true))

(assert (=> start!111038 tp_is_empty!35567))

(declare-fun e!749613 () Bool)

(declare-fun array_inv!32090 (array!88073) Bool)

(assert (=> start!111038 (and (array_inv!32090 _values!1354) e!749613)))

(declare-fun b!1314085 () Bool)

(declare-fun mapRes!54979 () Bool)

(assert (=> b!1314085 (= e!749613 (and e!749612 mapRes!54979))))

(declare-fun condMapEmpty!54979 () Bool)

(declare-fun mapDefault!54979 () ValueCell!16885)

