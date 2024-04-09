; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111098 () Bool)

(assert start!111098)

(declare-fun b_free!29897 () Bool)

(declare-fun b_next!29897 () Bool)

(assert (=> start!111098 (= b_free!29897 (not b_next!29897))))

(declare-fun tp!105014 () Bool)

(declare-fun b_and!48115 () Bool)

(assert (=> start!111098 (= tp!105014 b_and!48115)))

(declare-fun b!1314837 () Bool)

(declare-fun res!872967 () Bool)

(declare-fun e!750064 () Bool)

(assert (=> b!1314837 (=> (not res!872967) (not e!750064))))

(declare-datatypes ((array!88183 0))(
  ( (array!88184 (arr!42567 (Array (_ BitVec 32) (_ BitVec 64))) (size!43118 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88183)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88183 (_ BitVec 32)) Bool)

(assert (=> b!1314837 (= res!872967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!55069 () Bool)

(declare-fun mapRes!55069 () Bool)

(assert (=> mapIsEmpty!55069 mapRes!55069))

(declare-fun res!872965 () Bool)

(assert (=> start!111098 (=> (not res!872965) (not e!750064))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111098 (= res!872965 (validMask!0 mask!2040))))

(assert (=> start!111098 e!750064))

(assert (=> start!111098 tp!105014))

(declare-fun array_inv!32123 (array!88183) Bool)

(assert (=> start!111098 (array_inv!32123 _keys!1628)))

(assert (=> start!111098 true))

(declare-fun tp_is_empty!35627 () Bool)

(assert (=> start!111098 tp_is_empty!35627))

(declare-datatypes ((V!52605 0))(
  ( (V!52606 (val!17888 Int)) )
))
(declare-datatypes ((ValueCell!16915 0))(
  ( (ValueCellFull!16915 (v!20513 V!52605)) (EmptyCell!16915) )
))
(declare-datatypes ((array!88185 0))(
  ( (array!88186 (arr!42568 (Array (_ BitVec 32) ValueCell!16915)) (size!43119 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88185)

(declare-fun e!750062 () Bool)

(declare-fun array_inv!32124 (array!88185) Bool)

(assert (=> start!111098 (and (array_inv!32124 _values!1354) e!750062)))

(declare-fun b!1314838 () Bool)

(declare-fun res!872968 () Bool)

(assert (=> b!1314838 (=> (not res!872968) (not e!750064))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1314838 (= res!872968 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43118 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1314839 () Bool)

(declare-fun res!872966 () Bool)

(assert (=> b!1314839 (=> (not res!872966) (not e!750064))))

(declare-datatypes ((List!30397 0))(
  ( (Nil!30394) (Cons!30393 (h!31602 (_ BitVec 64)) (t!44010 List!30397)) )
))
(declare-fun arrayNoDuplicates!0 (array!88183 (_ BitVec 32) List!30397) Bool)

(assert (=> b!1314839 (= res!872966 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30394))))

(declare-fun b!1314840 () Bool)

(declare-fun e!750063 () Bool)

(assert (=> b!1314840 (= e!750062 (and e!750063 mapRes!55069))))

(declare-fun condMapEmpty!55069 () Bool)

(declare-fun mapDefault!55069 () ValueCell!16915)

