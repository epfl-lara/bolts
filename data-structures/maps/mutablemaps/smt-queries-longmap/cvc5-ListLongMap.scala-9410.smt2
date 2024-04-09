; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112066 () Bool)

(assert start!112066)

(declare-fun res!880827 () Bool)

(declare-fun e!756557 () Bool)

(assert (=> start!112066 (=> (not res!880827) (not e!756557))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112066 (= res!880827 (validMask!0 mask!1998))))

(assert (=> start!112066 e!756557))

(assert (=> start!112066 true))

(declare-datatypes ((V!53601 0))(
  ( (V!53602 (val!18261 Int)) )
))
(declare-datatypes ((ValueCell!17288 0))(
  ( (ValueCellFull!17288 (v!20895 V!53601)) (EmptyCell!17288) )
))
(declare-datatypes ((array!89615 0))(
  ( (array!89616 (arr!43273 (Array (_ BitVec 32) ValueCell!17288)) (size!43824 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89615)

(declare-fun e!756556 () Bool)

(declare-fun array_inv!32605 (array!89615) Bool)

(assert (=> start!112066 (and (array_inv!32605 _values!1320) e!756556)))

(declare-datatypes ((array!89617 0))(
  ( (array!89618 (arr!43274 (Array (_ BitVec 32) (_ BitVec 64))) (size!43825 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89617)

(declare-fun array_inv!32606 (array!89617) Bool)

(assert (=> start!112066 (array_inv!32606 _keys!1590)))

(declare-fun b!1327232 () Bool)

(declare-fun e!756558 () Bool)

(declare-fun tp_is_empty!36373 () Bool)

(assert (=> b!1327232 (= e!756558 tp_is_empty!36373)))

(declare-fun b!1327233 () Bool)

(declare-fun res!880826 () Bool)

(assert (=> b!1327233 (=> (not res!880826) (not e!756557))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89617 (_ BitVec 32)) Bool)

(assert (=> b!1327233 (= res!880826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1327234 () Bool)

(declare-fun res!880825 () Bool)

(assert (=> b!1327234 (=> (not res!880825) (not e!756557))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1327234 (= res!880825 (and (= (size!43824 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43825 _keys!1590) (size!43824 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1327235 () Bool)

(assert (=> b!1327235 (= e!756557 (bvsgt #b00000000000000000000000000000000 (size!43825 _keys!1590)))))

(declare-fun b!1327236 () Bool)

(declare-fun e!756559 () Bool)

(assert (=> b!1327236 (= e!756559 tp_is_empty!36373)))

(declare-fun mapIsEmpty!56221 () Bool)

(declare-fun mapRes!56221 () Bool)

(assert (=> mapIsEmpty!56221 mapRes!56221))

(declare-fun b!1327237 () Bool)

(assert (=> b!1327237 (= e!756556 (and e!756559 mapRes!56221))))

(declare-fun condMapEmpty!56221 () Bool)

(declare-fun mapDefault!56221 () ValueCell!17288)

