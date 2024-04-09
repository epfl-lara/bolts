; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112182 () Bool)

(assert start!112182)

(declare-fun b_free!30541 () Bool)

(declare-fun b_next!30541 () Bool)

(assert (=> start!112182 (= b_free!30541 (not b_next!30541))))

(declare-fun tp!107261 () Bool)

(declare-fun b_and!49201 () Bool)

(assert (=> start!112182 (= tp!107261 b_and!49201)))

(declare-fun mapNonEmpty!56350 () Bool)

(declare-fun mapRes!56350 () Bool)

(declare-fun tp!107260 () Bool)

(declare-fun e!757231 () Bool)

(assert (=> mapNonEmpty!56350 (= mapRes!56350 (and tp!107260 e!757231))))

(declare-datatypes ((V!53705 0))(
  ( (V!53706 (val!18300 Int)) )
))
(declare-datatypes ((ValueCell!17327 0))(
  ( (ValueCellFull!17327 (v!20935 V!53705)) (EmptyCell!17327) )
))
(declare-datatypes ((array!89765 0))(
  ( (array!89766 (arr!43344 (Array (_ BitVec 32) ValueCell!17327)) (size!43895 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89765)

(declare-fun mapValue!56350 () ValueCell!17327)

(declare-fun mapKey!56350 () (_ BitVec 32))

(declare-fun mapRest!56350 () (Array (_ BitVec 32) ValueCell!17327))

(assert (=> mapNonEmpty!56350 (= (arr!43344 _values!1320) (store mapRest!56350 mapKey!56350 mapValue!56350))))

(declare-fun b!1328083 () Bool)

(declare-fun res!881272 () Bool)

(declare-fun e!757232 () Bool)

(assert (=> b!1328083 (=> (not res!881272) (not e!757232))))

(declare-datatypes ((array!89767 0))(
  ( (array!89768 (arr!43345 (Array (_ BitVec 32) (_ BitVec 64))) (size!43896 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89767)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89767 (_ BitVec 32)) Bool)

(assert (=> b!1328083 (= res!881272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun res!881270 () Bool)

(assert (=> start!112182 (=> (not res!881270) (not e!757232))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112182 (= res!881270 (validMask!0 mask!1998))))

(assert (=> start!112182 e!757232))

(declare-fun e!757233 () Bool)

(declare-fun array_inv!32655 (array!89765) Bool)

(assert (=> start!112182 (and (array_inv!32655 _values!1320) e!757233)))

(assert (=> start!112182 true))

(declare-fun array_inv!32656 (array!89767) Bool)

(assert (=> start!112182 (array_inv!32656 _keys!1590)))

(assert (=> start!112182 tp!107261))

(declare-fun tp_is_empty!36451 () Bool)

(assert (=> start!112182 tp_is_empty!36451))

(declare-fun b!1328084 () Bool)

(declare-fun e!757230 () Bool)

(assert (=> b!1328084 (= e!757233 (and e!757230 mapRes!56350))))

(declare-fun condMapEmpty!56350 () Bool)

(declare-fun mapDefault!56350 () ValueCell!17327)

