; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112052 () Bool)

(assert start!112052)

(declare-fun res!880809 () Bool)

(declare-fun e!756490 () Bool)

(assert (=> start!112052 (=> (not res!880809) (not e!756490))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112052 (= res!880809 (validMask!0 mask!1998))))

(assert (=> start!112052 e!756490))

(assert (=> start!112052 true))

(declare-datatypes ((V!53589 0))(
  ( (V!53590 (val!18257 Int)) )
))
(declare-datatypes ((ValueCell!17284 0))(
  ( (ValueCellFull!17284 (v!20891 V!53589)) (EmptyCell!17284) )
))
(declare-datatypes ((array!89599 0))(
  ( (array!89600 (arr!43266 (Array (_ BitVec 32) ValueCell!17284)) (size!43817 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89599)

(declare-fun e!756494 () Bool)

(declare-fun array_inv!32599 (array!89599) Bool)

(assert (=> start!112052 (and (array_inv!32599 _values!1320) e!756494)))

(declare-datatypes ((array!89601 0))(
  ( (array!89602 (arr!43267 (Array (_ BitVec 32) (_ BitVec 64))) (size!43818 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89601)

(declare-fun array_inv!32600 (array!89601) Bool)

(assert (=> start!112052 (array_inv!32600 _keys!1590)))

(declare-fun b!1327172 () Bool)

(declare-fun e!756491 () Bool)

(declare-fun tp_is_empty!36365 () Bool)

(assert (=> b!1327172 (= e!756491 tp_is_empty!36365)))

(declare-fun mapNonEmpty!56206 () Bool)

(declare-fun mapRes!56206 () Bool)

(declare-fun tp!107114 () Bool)

(assert (=> mapNonEmpty!56206 (= mapRes!56206 (and tp!107114 e!756491))))

(declare-fun mapValue!56206 () ValueCell!17284)

(declare-fun mapKey!56206 () (_ BitVec 32))

(declare-fun mapRest!56206 () (Array (_ BitVec 32) ValueCell!17284))

(assert (=> mapNonEmpty!56206 (= (arr!43266 _values!1320) (store mapRest!56206 mapKey!56206 mapValue!56206))))

(declare-fun b!1327173 () Bool)

(declare-fun e!756492 () Bool)

(assert (=> b!1327173 (= e!756494 (and e!756492 mapRes!56206))))

(declare-fun condMapEmpty!56206 () Bool)

(declare-fun mapDefault!56206 () ValueCell!17284)

