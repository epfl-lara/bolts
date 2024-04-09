; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110866 () Bool)

(assert start!110866)

(declare-fun b_free!29665 () Bool)

(declare-fun b_next!29665 () Bool)

(assert (=> start!110866 (= b_free!29665 (not b_next!29665))))

(declare-fun tp!104317 () Bool)

(declare-fun b_and!47883 () Bool)

(assert (=> start!110866 (= tp!104317 b_and!47883)))

(declare-fun b!1311782 () Bool)

(declare-fun res!870959 () Bool)

(declare-fun e!748322 () Bool)

(assert (=> b!1311782 (=> (not res!870959) (not e!748322))))

(declare-datatypes ((array!87741 0))(
  ( (array!87742 (arr!42346 (Array (_ BitVec 32) (_ BitVec 64))) (size!42897 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87741)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1311782 (= res!870959 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42897 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!54721 () Bool)

(declare-fun mapRes!54721 () Bool)

(assert (=> mapIsEmpty!54721 mapRes!54721))

(declare-fun b!1311783 () Bool)

(declare-fun e!748325 () Bool)

(declare-fun e!748321 () Bool)

(assert (=> b!1311783 (= e!748325 (and e!748321 mapRes!54721))))

(declare-fun condMapEmpty!54721 () Bool)

(declare-datatypes ((V!52297 0))(
  ( (V!52298 (val!17772 Int)) )
))
(declare-datatypes ((ValueCell!16799 0))(
  ( (ValueCellFull!16799 (v!20397 V!52297)) (EmptyCell!16799) )
))
(declare-datatypes ((array!87743 0))(
  ( (array!87744 (arr!42347 (Array (_ BitVec 32) ValueCell!16799)) (size!42898 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87743)

(declare-fun mapDefault!54721 () ValueCell!16799)

