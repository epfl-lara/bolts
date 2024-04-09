; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110944 () Bool)

(assert start!110944)

(declare-fun b_free!29743 () Bool)

(declare-fun b_next!29743 () Bool)

(assert (=> start!110944 (= b_free!29743 (not b_next!29743))))

(declare-fun tp!104551 () Bool)

(declare-fun b_and!47961 () Bool)

(assert (=> start!110944 (= tp!104551 b_and!47961)))

(declare-fun mapIsEmpty!54838 () Bool)

(declare-fun mapRes!54838 () Bool)

(assert (=> mapIsEmpty!54838 mapRes!54838))

(declare-fun b!1312926 () Bool)

(declare-fun e!748907 () Bool)

(declare-fun tp_is_empty!35473 () Bool)

(assert (=> b!1312926 (= e!748907 tp_is_empty!35473)))

(declare-fun res!871748 () Bool)

(declare-fun e!748910 () Bool)

(assert (=> start!110944 (=> (not res!871748) (not e!748910))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110944 (= res!871748 (validMask!0 mask!2040))))

(assert (=> start!110944 e!748910))

(assert (=> start!110944 tp!104551))

(declare-datatypes ((array!87895 0))(
  ( (array!87896 (arr!42423 (Array (_ BitVec 32) (_ BitVec 64))) (size!42974 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87895)

(declare-fun array_inv!32029 (array!87895) Bool)

(assert (=> start!110944 (array_inv!32029 _keys!1628)))

(assert (=> start!110944 true))

(assert (=> start!110944 tp_is_empty!35473))

(declare-datatypes ((V!52401 0))(
  ( (V!52402 (val!17811 Int)) )
))
(declare-datatypes ((ValueCell!16838 0))(
  ( (ValueCellFull!16838 (v!20436 V!52401)) (EmptyCell!16838) )
))
(declare-datatypes ((array!87897 0))(
  ( (array!87898 (arr!42424 (Array (_ BitVec 32) ValueCell!16838)) (size!42975 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87897)

(declare-fun e!748908 () Bool)

(declare-fun array_inv!32030 (array!87897) Bool)

(assert (=> start!110944 (and (array_inv!32030 _values!1354) e!748908)))

(declare-fun b!1312927 () Bool)

(declare-fun res!871751 () Bool)

(assert (=> b!1312927 (=> (not res!871751) (not e!748910))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87895 (_ BitVec 32)) Bool)

(assert (=> b!1312927 (= res!871751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312928 () Bool)

(declare-fun res!871749 () Bool)

(assert (=> b!1312928 (=> (not res!871749) (not e!748910))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1312928 (= res!871749 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42974 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312929 () Bool)

(assert (=> b!1312929 (= e!748908 (and e!748907 mapRes!54838))))

(declare-fun condMapEmpty!54838 () Bool)

(declare-fun mapDefault!54838 () ValueCell!16838)

