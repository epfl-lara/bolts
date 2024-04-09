; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110962 () Bool)

(assert start!110962)

(declare-fun b_free!29761 () Bool)

(declare-fun b_next!29761 () Bool)

(assert (=> start!110962 (= b_free!29761 (not b_next!29761))))

(declare-fun tp!104606 () Bool)

(declare-fun b_and!47979 () Bool)

(assert (=> start!110962 (= tp!104606 b_and!47979)))

(declare-fun b!1313169 () Bool)

(declare-fun res!871913 () Bool)

(declare-fun e!749043 () Bool)

(assert (=> b!1313169 (=> (not res!871913) (not e!749043))))

(declare-datatypes ((array!87929 0))(
  ( (array!87930 (arr!42440 (Array (_ BitVec 32) (_ BitVec 64))) (size!42991 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87929)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87929 (_ BitVec 32)) Bool)

(assert (=> b!1313169 (= res!871913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!54865 () Bool)

(declare-fun mapRes!54865 () Bool)

(declare-fun tp!104605 () Bool)

(declare-fun e!749042 () Bool)

(assert (=> mapNonEmpty!54865 (= mapRes!54865 (and tp!104605 e!749042))))

(declare-datatypes ((V!52425 0))(
  ( (V!52426 (val!17820 Int)) )
))
(declare-datatypes ((ValueCell!16847 0))(
  ( (ValueCellFull!16847 (v!20445 V!52425)) (EmptyCell!16847) )
))
(declare-datatypes ((array!87931 0))(
  ( (array!87932 (arr!42441 (Array (_ BitVec 32) ValueCell!16847)) (size!42992 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87931)

(declare-fun mapKey!54865 () (_ BitVec 32))

(declare-fun mapValue!54865 () ValueCell!16847)

(declare-fun mapRest!54865 () (Array (_ BitVec 32) ValueCell!16847))

(assert (=> mapNonEmpty!54865 (= (arr!42441 _values!1354) (store mapRest!54865 mapKey!54865 mapValue!54865))))

(declare-fun b!1313170 () Bool)

(declare-fun e!749044 () Bool)

(declare-fun tp_is_empty!35491 () Bool)

(assert (=> b!1313170 (= e!749044 tp_is_empty!35491)))

(declare-fun b!1313171 () Bool)

(declare-fun res!871912 () Bool)

(assert (=> b!1313171 (=> (not res!871912) (not e!749043))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1313171 (= res!871912 (and (= (size!42992 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42991 _keys!1628) (size!42992 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!871910 () Bool)

(assert (=> start!110962 (=> (not res!871910) (not e!749043))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110962 (= res!871910 (validMask!0 mask!2040))))

(assert (=> start!110962 e!749043))

(assert (=> start!110962 tp!104606))

(declare-fun array_inv!32041 (array!87929) Bool)

(assert (=> start!110962 (array_inv!32041 _keys!1628)))

(assert (=> start!110962 true))

(assert (=> start!110962 tp_is_empty!35491))

(declare-fun e!749045 () Bool)

(declare-fun array_inv!32042 (array!87931) Bool)

(assert (=> start!110962 (and (array_inv!32042 _values!1354) e!749045)))

(declare-fun b!1313172 () Bool)

(declare-fun res!871909 () Bool)

(assert (=> b!1313172 (=> (not res!871909) (not e!749043))))

(declare-datatypes ((List!30310 0))(
  ( (Nil!30307) (Cons!30306 (h!31515 (_ BitVec 64)) (t!43923 List!30310)) )
))
(declare-fun arrayNoDuplicates!0 (array!87929 (_ BitVec 32) List!30310) Bool)

(assert (=> b!1313172 (= res!871909 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30307))))

(declare-fun b!1313173 () Bool)

(assert (=> b!1313173 (= e!749045 (and e!749044 mapRes!54865))))

(declare-fun condMapEmpty!54865 () Bool)

(declare-fun mapDefault!54865 () ValueCell!16847)

