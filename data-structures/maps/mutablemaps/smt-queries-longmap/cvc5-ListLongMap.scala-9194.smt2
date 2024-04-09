; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110548 () Bool)

(assert start!110548)

(declare-fun b_free!29347 () Bool)

(declare-fun b_next!29347 () Bool)

(assert (=> start!110548 (= b_free!29347 (not b_next!29347))))

(declare-fun tp!103363 () Bool)

(declare-fun b_and!47565 () Bool)

(assert (=> start!110548 (= tp!103363 b_and!47565)))

(declare-fun b!1307203 () Bool)

(declare-fun e!745939 () Bool)

(declare-fun tp_is_empty!35077 () Bool)

(assert (=> b!1307203 (= e!745939 tp_is_empty!35077)))

(declare-fun b!1307204 () Bool)

(declare-fun res!867808 () Bool)

(declare-fun e!745937 () Bool)

(assert (=> b!1307204 (=> (not res!867808) (not e!745937))))

(declare-datatypes ((array!87129 0))(
  ( (array!87130 (arr!42040 (Array (_ BitVec 32) (_ BitVec 64))) (size!42591 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87129)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87129 (_ BitVec 32)) Bool)

(assert (=> b!1307204 (= res!867808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54244 () Bool)

(declare-fun mapRes!54244 () Bool)

(assert (=> mapIsEmpty!54244 mapRes!54244))

(declare-fun res!867807 () Bool)

(assert (=> start!110548 (=> (not res!867807) (not e!745937))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110548 (= res!867807 (validMask!0 mask!2040))))

(assert (=> start!110548 e!745937))

(assert (=> start!110548 tp!103363))

(declare-fun array_inv!31779 (array!87129) Bool)

(assert (=> start!110548 (array_inv!31779 _keys!1628)))

(assert (=> start!110548 true))

(assert (=> start!110548 tp_is_empty!35077))

(declare-datatypes ((V!51873 0))(
  ( (V!51874 (val!17613 Int)) )
))
(declare-datatypes ((ValueCell!16640 0))(
  ( (ValueCellFull!16640 (v!20238 V!51873)) (EmptyCell!16640) )
))
(declare-datatypes ((array!87131 0))(
  ( (array!87132 (arr!42041 (Array (_ BitVec 32) ValueCell!16640)) (size!42592 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87131)

(declare-fun e!745938 () Bool)

(declare-fun array_inv!31780 (array!87131) Bool)

(assert (=> start!110548 (and (array_inv!31780 _values!1354) e!745938)))

(declare-fun b!1307202 () Bool)

(declare-fun res!867806 () Bool)

(assert (=> b!1307202 (=> (not res!867806) (not e!745937))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1307202 (= res!867806 (and (= (size!42592 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42591 _keys!1628) (size!42592 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1307205 () Bool)

(declare-fun res!867805 () Bool)

(assert (=> b!1307205 (=> (not res!867805) (not e!745937))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1307205 (= res!867805 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42591 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1307206 () Bool)

(declare-fun res!867809 () Bool)

(assert (=> b!1307206 (=> (not res!867809) (not e!745937))))

(declare-datatypes ((List!30009 0))(
  ( (Nil!30006) (Cons!30005 (h!31214 (_ BitVec 64)) (t!43622 List!30009)) )
))
(declare-fun arrayNoDuplicates!0 (array!87129 (_ BitVec 32) List!30009) Bool)

(assert (=> b!1307206 (= res!867809 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30006))))

(declare-fun b!1307207 () Bool)

(declare-fun e!745936 () Bool)

(assert (=> b!1307207 (= e!745938 (and e!745936 mapRes!54244))))

(declare-fun condMapEmpty!54244 () Bool)

(declare-fun mapDefault!54244 () ValueCell!16640)

