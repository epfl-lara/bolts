; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110942 () Bool)

(assert start!110942)

(declare-fun b_free!29741 () Bool)

(declare-fun b_next!29741 () Bool)

(assert (=> start!110942 (= b_free!29741 (not b_next!29741))))

(declare-fun tp!104546 () Bool)

(declare-fun b_and!47959 () Bool)

(assert (=> start!110942 (= tp!104546 b_and!47959)))

(declare-fun b!1312902 () Bool)

(declare-fun res!871733 () Bool)

(declare-fun e!748894 () Bool)

(assert (=> b!1312902 (=> (not res!871733) (not e!748894))))

(declare-datatypes ((array!87891 0))(
  ( (array!87892 (arr!42421 (Array (_ BitVec 32) (_ BitVec 64))) (size!42972 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87891)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1312902 (= res!871733 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42972 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312903 () Bool)

(declare-fun res!871735 () Bool)

(assert (=> b!1312903 (=> (not res!871735) (not e!748894))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87891 (_ BitVec 32)) Bool)

(assert (=> b!1312903 (= res!871735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312904 () Bool)

(declare-fun res!871732 () Bool)

(assert (=> b!1312904 (=> (not res!871732) (not e!748894))))

(declare-datatypes ((V!52397 0))(
  ( (V!52398 (val!17810 Int)) )
))
(declare-datatypes ((ValueCell!16837 0))(
  ( (ValueCellFull!16837 (v!20435 V!52397)) (EmptyCell!16837) )
))
(declare-datatypes ((array!87893 0))(
  ( (array!87894 (arr!42422 (Array (_ BitVec 32) ValueCell!16837)) (size!42973 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87893)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1312904 (= res!871732 (and (= (size!42973 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42972 _keys!1628) (size!42973 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!871734 () Bool)

(assert (=> start!110942 (=> (not res!871734) (not e!748894))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110942 (= res!871734 (validMask!0 mask!2040))))

(assert (=> start!110942 e!748894))

(assert (=> start!110942 tp!104546))

(declare-fun array_inv!32027 (array!87891) Bool)

(assert (=> start!110942 (array_inv!32027 _keys!1628)))

(assert (=> start!110942 true))

(declare-fun tp_is_empty!35471 () Bool)

(assert (=> start!110942 tp_is_empty!35471))

(declare-fun e!748891 () Bool)

(declare-fun array_inv!32028 (array!87893) Bool)

(assert (=> start!110942 (and (array_inv!32028 _values!1354) e!748891)))

(declare-fun b!1312905 () Bool)

(declare-fun e!748893 () Bool)

(declare-fun mapRes!54835 () Bool)

(assert (=> b!1312905 (= e!748891 (and e!748893 mapRes!54835))))

(declare-fun condMapEmpty!54835 () Bool)

(declare-fun mapDefault!54835 () ValueCell!16837)

