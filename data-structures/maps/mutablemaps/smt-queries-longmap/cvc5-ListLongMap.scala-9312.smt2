; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111344 () Bool)

(assert start!111344)

(declare-fun b!1317112 () Bool)

(declare-fun e!751551 () Bool)

(declare-fun tp_is_empty!35785 () Bool)

(assert (=> b!1317112 (= e!751551 tp_is_empty!35785)))

(declare-fun b!1317113 () Bool)

(declare-fun e!751550 () Bool)

(assert (=> b!1317113 (= e!751550 false)))

(declare-fun lt!586264 () Bool)

(declare-datatypes ((array!88483 0))(
  ( (array!88484 (arr!42711 (Array (_ BitVec 32) (_ BitVec 64))) (size!43262 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88483)

(declare-datatypes ((List!30476 0))(
  ( (Nil!30473) (Cons!30472 (h!31681 (_ BitVec 64)) (t!44091 List!30476)) )
))
(declare-fun arrayNoDuplicates!0 (array!88483 (_ BitVec 32) List!30476) Bool)

(assert (=> b!1317113 (= lt!586264 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30473))))

(declare-fun res!874291 () Bool)

(assert (=> start!111344 (=> (not res!874291) (not e!751550))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111344 (= res!874291 (validMask!0 mask!2019))))

(assert (=> start!111344 e!751550))

(assert (=> start!111344 true))

(declare-datatypes ((V!52817 0))(
  ( (V!52818 (val!17967 Int)) )
))
(declare-datatypes ((ValueCell!16994 0))(
  ( (ValueCellFull!16994 (v!20595 V!52817)) (EmptyCell!16994) )
))
(declare-datatypes ((array!88485 0))(
  ( (array!88486 (arr!42712 (Array (_ BitVec 32) ValueCell!16994)) (size!43263 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88485)

(declare-fun e!751549 () Bool)

(declare-fun array_inv!32221 (array!88485) Bool)

(assert (=> start!111344 (and (array_inv!32221 _values!1337) e!751549)))

(declare-fun array_inv!32222 (array!88483) Bool)

(assert (=> start!111344 (array_inv!32222 _keys!1609)))

(declare-fun b!1317114 () Bool)

(declare-fun e!751548 () Bool)

(declare-fun mapRes!55325 () Bool)

(assert (=> b!1317114 (= e!751549 (and e!751548 mapRes!55325))))

(declare-fun condMapEmpty!55325 () Bool)

(declare-fun mapDefault!55325 () ValueCell!16994)

