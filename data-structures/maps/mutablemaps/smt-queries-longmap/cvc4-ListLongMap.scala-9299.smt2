; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111182 () Bool)

(assert start!111182)

(declare-fun b_free!29981 () Bool)

(declare-fun b_next!29981 () Bool)

(assert (=> start!111182 (= b_free!29981 (not b_next!29981))))

(declare-fun tp!105265 () Bool)

(declare-fun b_and!48199 () Bool)

(assert (=> start!111182 (= tp!105265 b_and!48199)))

(declare-fun b!1315881 () Bool)

(declare-fun res!873631 () Bool)

(declare-fun e!750692 () Bool)

(assert (=> b!1315881 (=> (not res!873631) (not e!750692))))

(declare-datatypes ((array!88341 0))(
  ( (array!88342 (arr!42646 (Array (_ BitVec 32) (_ BitVec 64))) (size!43197 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88341)

(declare-datatypes ((List!30447 0))(
  ( (Nil!30444) (Cons!30443 (h!31652 (_ BitVec 64)) (t!44060 List!30447)) )
))
(declare-fun arrayNoDuplicates!0 (array!88341 (_ BitVec 32) List!30447) Bool)

(assert (=> b!1315881 (= res!873631 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30444))))

(declare-fun mapNonEmpty!55195 () Bool)

(declare-fun mapRes!55195 () Bool)

(declare-fun tp!105266 () Bool)

(declare-fun e!750694 () Bool)

(assert (=> mapNonEmpty!55195 (= mapRes!55195 (and tp!105266 e!750694))))

(declare-datatypes ((V!52717 0))(
  ( (V!52718 (val!17930 Int)) )
))
(declare-datatypes ((ValueCell!16957 0))(
  ( (ValueCellFull!16957 (v!20555 V!52717)) (EmptyCell!16957) )
))
(declare-fun mapRest!55195 () (Array (_ BitVec 32) ValueCell!16957))

(declare-fun mapKey!55195 () (_ BitVec 32))

(declare-fun mapValue!55195 () ValueCell!16957)

(declare-datatypes ((array!88343 0))(
  ( (array!88344 (arr!42647 (Array (_ BitVec 32) ValueCell!16957)) (size!43198 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88343)

(assert (=> mapNonEmpty!55195 (= (arr!42647 _values!1354) (store mapRest!55195 mapKey!55195 mapValue!55195))))

(declare-fun b!1315883 () Bool)

(declare-fun e!750691 () Bool)

(declare-fun e!750695 () Bool)

(assert (=> b!1315883 (= e!750691 (and e!750695 mapRes!55195))))

(declare-fun condMapEmpty!55195 () Bool)

(declare-fun mapDefault!55195 () ValueCell!16957)

