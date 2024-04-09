; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112110 () Bool)

(assert start!112110)

(declare-fun b!1327475 () Bool)

(declare-fun e!756748 () Bool)

(declare-fun tp_is_empty!36391 () Bool)

(assert (=> b!1327475 (= e!756748 tp_is_empty!36391)))

(declare-fun mapNonEmpty!56257 () Bool)

(declare-fun mapRes!56257 () Bool)

(declare-fun tp!107165 () Bool)

(assert (=> mapNonEmpty!56257 (= mapRes!56257 (and tp!107165 e!756748))))

(declare-datatypes ((V!53625 0))(
  ( (V!53626 (val!18270 Int)) )
))
(declare-datatypes ((ValueCell!17297 0))(
  ( (ValueCellFull!17297 (v!20904 V!53625)) (EmptyCell!17297) )
))
(declare-fun mapRest!56257 () (Array (_ BitVec 32) ValueCell!17297))

(declare-fun mapKey!56257 () (_ BitVec 32))

(declare-fun mapValue!56257 () ValueCell!17297)

(declare-datatypes ((array!89649 0))(
  ( (array!89650 (arr!43287 (Array (_ BitVec 32) ValueCell!17297)) (size!43838 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89649)

(assert (=> mapNonEmpty!56257 (= (arr!43287 _values!1320) (store mapRest!56257 mapKey!56257 mapValue!56257))))

(declare-fun b!1327476 () Bool)

(declare-fun res!880948 () Bool)

(declare-fun e!756747 () Bool)

(assert (=> b!1327476 (=> (not res!880948) (not e!756747))))

(declare-datatypes ((array!89651 0))(
  ( (array!89652 (arr!43288 (Array (_ BitVec 32) (_ BitVec 64))) (size!43839 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89651)

(assert (=> b!1327476 (= res!880948 (and (bvsle #b00000000000000000000000000000000 (size!43839 _keys!1590)) (bvslt (size!43839 _keys!1590) #b01111111111111111111111111111111)))))

(declare-fun b!1327477 () Bool)

(declare-fun res!880945 () Bool)

(assert (=> b!1327477 (=> (not res!880945) (not e!756747))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89651 (_ BitVec 32)) Bool)

(assert (=> b!1327477 (= res!880945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun res!880949 () Bool)

(assert (=> start!112110 (=> (not res!880949) (not e!756747))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112110 (= res!880949 (validMask!0 mask!1998))))

(assert (=> start!112110 e!756747))

(assert (=> start!112110 true))

(declare-fun e!756745 () Bool)

(declare-fun array_inv!32615 (array!89649) Bool)

(assert (=> start!112110 (and (array_inv!32615 _values!1320) e!756745)))

(declare-fun array_inv!32616 (array!89651) Bool)

(assert (=> start!112110 (array_inv!32616 _keys!1590)))

(declare-fun b!1327478 () Bool)

(declare-fun e!756749 () Bool)

(assert (=> b!1327478 (= e!756745 (and e!756749 mapRes!56257))))

(declare-fun condMapEmpty!56257 () Bool)

(declare-fun mapDefault!56257 () ValueCell!17297)

