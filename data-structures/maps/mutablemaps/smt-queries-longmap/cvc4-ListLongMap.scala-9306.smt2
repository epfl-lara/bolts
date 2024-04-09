; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111274 () Bool)

(assert start!111274)

(declare-fun res!874066 () Bool)

(declare-fun e!751223 () Bool)

(assert (=> start!111274 (=> (not res!874066) (not e!751223))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111274 (= res!874066 (validMask!0 mask!2019))))

(assert (=> start!111274 e!751223))

(assert (=> start!111274 true))

(declare-datatypes ((V!52773 0))(
  ( (V!52774 (val!17951 Int)) )
))
(declare-datatypes ((ValueCell!16978 0))(
  ( (ValueCellFull!16978 (v!20578 V!52773)) (EmptyCell!16978) )
))
(declare-datatypes ((array!88419 0))(
  ( (array!88420 (arr!42683 (Array (_ BitVec 32) ValueCell!16978)) (size!43234 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88419)

(declare-fun e!751221 () Bool)

(declare-fun array_inv!32201 (array!88419) Bool)

(assert (=> start!111274 (and (array_inv!32201 _values!1337) e!751221)))

(declare-datatypes ((array!88421 0))(
  ( (array!88422 (arr!42684 (Array (_ BitVec 32) (_ BitVec 64))) (size!43235 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88421)

(declare-fun array_inv!32202 (array!88421) Bool)

(assert (=> start!111274 (array_inv!32202 _keys!1609)))

(declare-fun b!1316688 () Bool)

(declare-fun e!751220 () Bool)

(declare-fun tp_is_empty!35753 () Bool)

(assert (=> b!1316688 (= e!751220 tp_is_empty!35753)))

(declare-fun b!1316689 () Bool)

(declare-fun res!874065 () Bool)

(assert (=> b!1316689 (=> (not res!874065) (not e!751223))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88421 (_ BitVec 32)) Bool)

(assert (=> b!1316689 (= res!874065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1316690 () Bool)

(declare-fun e!751222 () Bool)

(declare-fun mapRes!55265 () Bool)

(assert (=> b!1316690 (= e!751221 (and e!751222 mapRes!55265))))

(declare-fun condMapEmpty!55265 () Bool)

(declare-fun mapDefault!55265 () ValueCell!16978)

