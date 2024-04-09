; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112058 () Bool)

(assert start!112058)

(declare-fun res!880818 () Bool)

(declare-fun e!756536 () Bool)

(assert (=> start!112058 (=> (not res!880818) (not e!756536))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112058 (= res!880818 (validMask!0 mask!1998))))

(assert (=> start!112058 e!756536))

(assert (=> start!112058 true))

(declare-datatypes ((V!53597 0))(
  ( (V!53598 (val!18260 Int)) )
))
(declare-datatypes ((ValueCell!17287 0))(
  ( (ValueCellFull!17287 (v!20894 V!53597)) (EmptyCell!17287) )
))
(declare-datatypes ((array!89609 0))(
  ( (array!89610 (arr!43271 (Array (_ BitVec 32) ValueCell!17287)) (size!43822 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89609)

(declare-fun e!756538 () Bool)

(declare-fun array_inv!32603 (array!89609) Bool)

(assert (=> start!112058 (and (array_inv!32603 _values!1320) e!756538)))

(declare-datatypes ((array!89611 0))(
  ( (array!89612 (arr!43272 (Array (_ BitVec 32) (_ BitVec 64))) (size!43823 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89611)

(declare-fun array_inv!32604 (array!89611) Bool)

(assert (=> start!112058 (array_inv!32604 _keys!1590)))

(declare-fun mapIsEmpty!56215 () Bool)

(declare-fun mapRes!56215 () Bool)

(assert (=> mapIsEmpty!56215 mapRes!56215))

(declare-fun mapNonEmpty!56215 () Bool)

(declare-fun tp!107123 () Bool)

(declare-fun e!756539 () Bool)

(assert (=> mapNonEmpty!56215 (= mapRes!56215 (and tp!107123 e!756539))))

(declare-fun mapKey!56215 () (_ BitVec 32))

(declare-fun mapRest!56215 () (Array (_ BitVec 32) ValueCell!17287))

(declare-fun mapValue!56215 () ValueCell!17287)

(assert (=> mapNonEmpty!56215 (= (arr!43271 _values!1320) (store mapRest!56215 mapKey!56215 mapValue!56215))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun b!1327208 () Bool)

(assert (=> b!1327208 (= e!756536 (and (= (size!43822 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43823 _keys!1590) (size!43822 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011) (= (size!43823 _keys!1590) (bvadd #b00000000000000000000000000000001 mask!1998)) (bvsgt #b00000000000000000000000000000000 (size!43823 _keys!1590))))))

(declare-fun b!1327209 () Bool)

(declare-fun e!756537 () Bool)

(declare-fun tp_is_empty!36371 () Bool)

(assert (=> b!1327209 (= e!756537 tp_is_empty!36371)))

(declare-fun b!1327210 () Bool)

(assert (=> b!1327210 (= e!756539 tp_is_empty!36371)))

(declare-fun b!1327211 () Bool)

(assert (=> b!1327211 (= e!756538 (and e!756537 mapRes!56215))))

(declare-fun condMapEmpty!56215 () Bool)

(declare-fun mapDefault!56215 () ValueCell!17287)

