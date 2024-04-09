; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111110 () Bool)

(assert start!111110)

(declare-fun b_free!29909 () Bool)

(declare-fun b_next!29909 () Bool)

(assert (=> start!111110 (= b_free!29909 (not b_next!29909))))

(declare-fun tp!105050 () Bool)

(declare-fun b_and!48127 () Bool)

(assert (=> start!111110 (= tp!105050 b_and!48127)))

(declare-fun b!1314981 () Bool)

(declare-fun e!750152 () Bool)

(declare-fun tp_is_empty!35639 () Bool)

(assert (=> b!1314981 (= e!750152 tp_is_empty!35639)))

(declare-fun b!1314982 () Bool)

(declare-fun e!750155 () Bool)

(assert (=> b!1314982 (= e!750155 tp_is_empty!35639)))

(declare-fun res!873059 () Bool)

(declare-fun e!750151 () Bool)

(assert (=> start!111110 (=> (not res!873059) (not e!750151))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111110 (= res!873059 (validMask!0 mask!2040))))

(assert (=> start!111110 e!750151))

(assert (=> start!111110 tp!105050))

(declare-datatypes ((array!88207 0))(
  ( (array!88208 (arr!42579 (Array (_ BitVec 32) (_ BitVec 64))) (size!43130 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88207)

(declare-fun array_inv!32133 (array!88207) Bool)

(assert (=> start!111110 (array_inv!32133 _keys!1628)))

(assert (=> start!111110 true))

(assert (=> start!111110 tp_is_empty!35639))

(declare-datatypes ((V!52621 0))(
  ( (V!52622 (val!17894 Int)) )
))
(declare-datatypes ((ValueCell!16921 0))(
  ( (ValueCellFull!16921 (v!20519 V!52621)) (EmptyCell!16921) )
))
(declare-datatypes ((array!88209 0))(
  ( (array!88210 (arr!42580 (Array (_ BitVec 32) ValueCell!16921)) (size!43131 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88209)

(declare-fun e!750153 () Bool)

(declare-fun array_inv!32134 (array!88209) Bool)

(assert (=> start!111110 (and (array_inv!32134 _values!1354) e!750153)))

(declare-fun b!1314983 () Bool)

(declare-fun mapRes!55087 () Bool)

(assert (=> b!1314983 (= e!750153 (and e!750155 mapRes!55087))))

(declare-fun condMapEmpty!55087 () Bool)

(declare-fun mapDefault!55087 () ValueCell!16921)

