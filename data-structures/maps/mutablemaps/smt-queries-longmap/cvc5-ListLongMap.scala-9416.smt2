; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112140 () Bool)

(assert start!112140)

(declare-fun res!881069 () Bool)

(declare-fun e!756915 () Bool)

(assert (=> start!112140 (=> (not res!881069) (not e!756915))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112140 (= res!881069 (validMask!0 mask!1998))))

(assert (=> start!112140 e!756915))

(assert (=> start!112140 true))

(declare-datatypes ((V!53649 0))(
  ( (V!53650 (val!18279 Int)) )
))
(declare-datatypes ((ValueCell!17306 0))(
  ( (ValueCellFull!17306 (v!20914 V!53649)) (EmptyCell!17306) )
))
(declare-datatypes ((array!89683 0))(
  ( (array!89684 (arr!43303 (Array (_ BitVec 32) ValueCell!17306)) (size!43854 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89683)

(declare-fun e!756919 () Bool)

(declare-fun array_inv!32627 (array!89683) Bool)

(assert (=> start!112140 (and (array_inv!32627 _values!1320) e!756919)))

(declare-datatypes ((array!89685 0))(
  ( (array!89686 (arr!43304 (Array (_ BitVec 32) (_ BitVec 64))) (size!43855 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89685)

(declare-fun array_inv!32628 (array!89685) Bool)

(assert (=> start!112140 (array_inv!32628 _keys!1590)))

(declare-fun b!1327692 () Bool)

(declare-fun e!756918 () Bool)

(declare-fun mapRes!56287 () Bool)

(assert (=> b!1327692 (= e!756919 (and e!756918 mapRes!56287))))

(declare-fun condMapEmpty!56287 () Bool)

(declare-fun mapDefault!56287 () ValueCell!17306)

