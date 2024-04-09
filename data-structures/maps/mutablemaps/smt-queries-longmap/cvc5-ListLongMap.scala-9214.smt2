; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110668 () Bool)

(assert start!110668)

(declare-fun b_free!29467 () Bool)

(declare-fun b_next!29467 () Bool)

(assert (=> start!110668 (= b_free!29467 (not b_next!29467))))

(declare-fun tp!103724 () Bool)

(declare-fun b_and!47685 () Bool)

(assert (=> start!110668 (= tp!103724 b_and!47685)))

(declare-fun b!1308966 () Bool)

(declare-fun res!869031 () Bool)

(declare-fun e!746838 () Bool)

(assert (=> b!1308966 (=> (not res!869031) (not e!746838))))

(declare-datatypes ((array!87357 0))(
  ( (array!87358 (arr!42154 (Array (_ BitVec 32) (_ BitVec 64))) (size!42705 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87357)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87357 (_ BitVec 32)) Bool)

(assert (=> b!1308966 (= res!869031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1308967 () Bool)

(declare-fun e!746836 () Bool)

(declare-fun tp_is_empty!35197 () Bool)

(assert (=> b!1308967 (= e!746836 tp_is_empty!35197)))

(declare-fun b!1308968 () Bool)

(declare-fun res!869032 () Bool)

(assert (=> b!1308968 (=> (not res!869032) (not e!746838))))

(declare-datatypes ((List!30094 0))(
  ( (Nil!30091) (Cons!30090 (h!31299 (_ BitVec 64)) (t!43707 List!30094)) )
))
(declare-fun arrayNoDuplicates!0 (array!87357 (_ BitVec 32) List!30094) Bool)

(assert (=> b!1308968 (= res!869032 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30091))))

(declare-fun res!869033 () Bool)

(assert (=> start!110668 (=> (not res!869033) (not e!746838))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110668 (= res!869033 (validMask!0 mask!2040))))

(assert (=> start!110668 e!746838))

(assert (=> start!110668 tp!103724))

(declare-fun array_inv!31863 (array!87357) Bool)

(assert (=> start!110668 (array_inv!31863 _keys!1628)))

(assert (=> start!110668 true))

(assert (=> start!110668 tp_is_empty!35197))

(declare-datatypes ((V!52033 0))(
  ( (V!52034 (val!17673 Int)) )
))
(declare-datatypes ((ValueCell!16700 0))(
  ( (ValueCellFull!16700 (v!20298 V!52033)) (EmptyCell!16700) )
))
(declare-datatypes ((array!87359 0))(
  ( (array!87360 (arr!42155 (Array (_ BitVec 32) ValueCell!16700)) (size!42706 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87359)

(declare-fun e!746837 () Bool)

(declare-fun array_inv!31864 (array!87359) Bool)

(assert (=> start!110668 (and (array_inv!31864 _values!1354) e!746837)))

(declare-fun b!1308969 () Bool)

(declare-fun res!869029 () Bool)

(assert (=> b!1308969 (=> (not res!869029) (not e!746838))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1308969 (= res!869029 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42705 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1308970 () Bool)

(declare-fun mapRes!54424 () Bool)

(assert (=> b!1308970 (= e!746837 (and e!746836 mapRes!54424))))

(declare-fun condMapEmpty!54424 () Bool)

(declare-fun mapDefault!54424 () ValueCell!16700)

