; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110938 () Bool)

(assert start!110938)

(declare-fun b_free!29737 () Bool)

(declare-fun b_next!29737 () Bool)

(assert (=> start!110938 (= b_free!29737 (not b_next!29737))))

(declare-fun tp!104534 () Bool)

(declare-fun b_and!47955 () Bool)

(assert (=> start!110938 (= tp!104534 b_and!47955)))

(declare-fun b!1312854 () Bool)

(declare-fun res!871703 () Bool)

(declare-fun e!748865 () Bool)

(assert (=> b!1312854 (=> (not res!871703) (not e!748865))))

(declare-datatypes ((array!87883 0))(
  ( (array!87884 (arr!42417 (Array (_ BitVec 32) (_ BitVec 64))) (size!42968 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87883)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1312854 (= res!871703 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42968 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312855 () Bool)

(declare-fun res!871702 () Bool)

(assert (=> b!1312855 (=> (not res!871702) (not e!748865))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52393 0))(
  ( (V!52394 (val!17808 Int)) )
))
(declare-datatypes ((ValueCell!16835 0))(
  ( (ValueCellFull!16835 (v!20433 V!52393)) (EmptyCell!16835) )
))
(declare-datatypes ((array!87885 0))(
  ( (array!87886 (arr!42418 (Array (_ BitVec 32) ValueCell!16835)) (size!42969 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87885)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1312855 (= res!871702 (and (= (size!42969 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42968 _keys!1628) (size!42969 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1312856 () Bool)

(declare-fun res!871704 () Bool)

(assert (=> b!1312856 (=> (not res!871704) (not e!748865))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87883 (_ BitVec 32)) Bool)

(assert (=> b!1312856 (= res!871704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312857 () Bool)

(declare-fun e!748862 () Bool)

(declare-fun e!748864 () Bool)

(declare-fun mapRes!54829 () Bool)

(assert (=> b!1312857 (= e!748862 (and e!748864 mapRes!54829))))

(declare-fun condMapEmpty!54829 () Bool)

(declare-fun mapDefault!54829 () ValueCell!16835)

