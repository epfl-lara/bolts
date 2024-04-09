; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111100 () Bool)

(assert start!111100)

(declare-fun b_free!29899 () Bool)

(declare-fun b_next!29899 () Bool)

(assert (=> start!111100 (= b_free!29899 (not b_next!29899))))

(declare-fun tp!105019 () Bool)

(declare-fun b_and!48117 () Bool)

(assert (=> start!111100 (= tp!105019 b_and!48117)))

(declare-fun b!1314861 () Bool)

(declare-fun res!872981 () Bool)

(declare-fun e!750076 () Bool)

(assert (=> b!1314861 (=> (not res!872981) (not e!750076))))

(declare-datatypes ((array!88187 0))(
  ( (array!88188 (arr!42569 (Array (_ BitVec 32) (_ BitVec 64))) (size!43120 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88187)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52609 0))(
  ( (V!52610 (val!17889 Int)) )
))
(declare-datatypes ((ValueCell!16916 0))(
  ( (ValueCellFull!16916 (v!20514 V!52609)) (EmptyCell!16916) )
))
(declare-datatypes ((array!88189 0))(
  ( (array!88190 (arr!42570 (Array (_ BitVec 32) ValueCell!16916)) (size!43121 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88189)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1314861 (= res!872981 (and (= (size!43121 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43120 _keys!1628) (size!43121 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!872980 () Bool)

(assert (=> start!111100 (=> (not res!872980) (not e!750076))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111100 (= res!872980 (validMask!0 mask!2040))))

(assert (=> start!111100 e!750076))

(assert (=> start!111100 tp!105019))

(declare-fun array_inv!32125 (array!88187) Bool)

(assert (=> start!111100 (array_inv!32125 _keys!1628)))

(assert (=> start!111100 true))

(declare-fun tp_is_empty!35629 () Bool)

(assert (=> start!111100 tp_is_empty!35629))

(declare-fun e!750077 () Bool)

(declare-fun array_inv!32126 (array!88189) Bool)

(assert (=> start!111100 (and (array_inv!32126 _values!1354) e!750077)))

(declare-fun b!1314862 () Bool)

(declare-fun res!872984 () Bool)

(assert (=> b!1314862 (=> (not res!872984) (not e!750076))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1314862 (= res!872984 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43120 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1314863 () Bool)

(declare-fun res!872983 () Bool)

(assert (=> b!1314863 (=> (not res!872983) (not e!750076))))

(declare-datatypes ((List!30398 0))(
  ( (Nil!30395) (Cons!30394 (h!31603 (_ BitVec 64)) (t!44011 List!30398)) )
))
(declare-fun arrayNoDuplicates!0 (array!88187 (_ BitVec 32) List!30398) Bool)

(assert (=> b!1314863 (= res!872983 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30395))))

(declare-fun b!1314864 () Bool)

(declare-fun e!750080 () Bool)

(declare-fun mapRes!55072 () Bool)

(assert (=> b!1314864 (= e!750077 (and e!750080 mapRes!55072))))

(declare-fun condMapEmpty!55072 () Bool)

(declare-fun mapDefault!55072 () ValueCell!16916)

