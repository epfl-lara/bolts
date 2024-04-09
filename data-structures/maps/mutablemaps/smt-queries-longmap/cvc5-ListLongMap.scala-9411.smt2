; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112080 () Bool)

(assert start!112080)

(declare-fun res!880859 () Bool)

(declare-fun e!756618 () Bool)

(assert (=> start!112080 (=> (not res!880859) (not e!756618))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112080 (= res!880859 (validMask!0 mask!1998))))

(assert (=> start!112080 e!756618))

(assert (=> start!112080 true))

(declare-datatypes ((V!53609 0))(
  ( (V!53610 (val!18264 Int)) )
))
(declare-datatypes ((ValueCell!17291 0))(
  ( (ValueCellFull!17291 (v!20898 V!53609)) (EmptyCell!17291) )
))
(declare-datatypes ((array!89627 0))(
  ( (array!89628 (arr!43278 (Array (_ BitVec 32) ValueCell!17291)) (size!43829 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89627)

(declare-fun e!756616 () Bool)

(declare-fun array_inv!32609 (array!89627) Bool)

(assert (=> start!112080 (and (array_inv!32609 _values!1320) e!756616)))

(declare-datatypes ((array!89629 0))(
  ( (array!89630 (arr!43279 (Array (_ BitVec 32) (_ BitVec 64))) (size!43830 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89629)

(declare-fun array_inv!32610 (array!89629) Bool)

(assert (=> start!112080 (array_inv!32610 _keys!1590)))

(declare-fun b!1327306 () Bool)

(declare-fun e!756619 () Bool)

(declare-fun mapRes!56233 () Bool)

(assert (=> b!1327306 (= e!756616 (and e!756619 mapRes!56233))))

(declare-fun condMapEmpty!56233 () Bool)

(declare-fun mapDefault!56233 () ValueCell!17291)

