; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112174 () Bool)

(assert start!112174)

(declare-fun res!881222 () Bool)

(declare-fun e!757172 () Bool)

(assert (=> start!112174 (=> (not res!881222) (not e!757172))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112174 (= res!881222 (validMask!0 mask!1998))))

(assert (=> start!112174 e!757172))

(assert (=> start!112174 true))

(declare-datatypes ((V!53693 0))(
  ( (V!53694 (val!18296 Int)) )
))
(declare-datatypes ((ValueCell!17323 0))(
  ( (ValueCellFull!17323 (v!20931 V!53693)) (EmptyCell!17323) )
))
(declare-datatypes ((array!89751 0))(
  ( (array!89752 (arr!43337 (Array (_ BitVec 32) ValueCell!17323)) (size!43888 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89751)

(declare-fun e!757173 () Bool)

(declare-fun array_inv!32649 (array!89751) Bool)

(assert (=> start!112174 (and (array_inv!32649 _values!1320) e!757173)))

(declare-datatypes ((array!89753 0))(
  ( (array!89754 (arr!43338 (Array (_ BitVec 32) (_ BitVec 64))) (size!43889 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89753)

(declare-fun array_inv!32650 (array!89753) Bool)

(assert (=> start!112174 (array_inv!32650 _keys!1590)))

(declare-fun b!1327998 () Bool)

(declare-fun e!757170 () Bool)

(declare-fun tp_is_empty!36443 () Bool)

(assert (=> b!1327998 (= e!757170 tp_is_empty!36443)))

(declare-fun b!1327999 () Bool)

(assert (=> b!1327999 (= e!757172 false)))

(declare-fun lt!590738 () Bool)

(declare-datatypes ((List!30888 0))(
  ( (Nil!30885) (Cons!30884 (h!32093 (_ BitVec 64)) (t!44901 List!30888)) )
))
(declare-fun arrayNoDuplicates!0 (array!89753 (_ BitVec 32) List!30888) Bool)

(assert (=> b!1327999 (= lt!590738 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30885))))

(declare-fun mapIsEmpty!56338 () Bool)

(declare-fun mapRes!56338 () Bool)

(assert (=> mapIsEmpty!56338 mapRes!56338))

(declare-fun b!1328000 () Bool)

(declare-fun e!757171 () Bool)

(assert (=> b!1328000 (= e!757173 (and e!757171 mapRes!56338))))

(declare-fun condMapEmpty!56338 () Bool)

(declare-fun mapDefault!56338 () ValueCell!17323)

