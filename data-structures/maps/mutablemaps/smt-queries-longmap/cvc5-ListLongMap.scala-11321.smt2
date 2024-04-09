; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131862 () Bool)

(assert start!131862)

(declare-fun b!1543298 () Bool)

(declare-fun e!858905 () Bool)

(declare-fun tp_is_empty!37819 () Bool)

(assert (=> b!1543298 (= e!858905 tp_is_empty!37819)))

(declare-fun mapIsEmpty!58432 () Bool)

(declare-fun mapRes!58432 () Bool)

(assert (=> mapIsEmpty!58432 mapRes!58432))

(declare-fun b!1543299 () Bool)

(declare-fun e!858903 () Bool)

(assert (=> b!1543299 (= e!858903 tp_is_empty!37819)))

(declare-fun b!1543300 () Bool)

(declare-fun res!1058997 () Bool)

(declare-fun e!858906 () Bool)

(assert (=> b!1543300 (=> (not res!1058997) (not e!858906))))

(declare-datatypes ((array!102817 0))(
  ( (array!102818 (arr!49606 (Array (_ BitVec 32) (_ BitVec 64))) (size!50157 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102817)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102817 (_ BitVec 32)) Bool)

(assert (=> b!1543300 (= res!1058997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543301 () Bool)

(assert (=> b!1543301 (= e!858906 false)))

(declare-fun lt!665903 () Bool)

(declare-datatypes ((List!36066 0))(
  ( (Nil!36063) (Cons!36062 (h!37508 (_ BitVec 64)) (t!50767 List!36066)) )
))
(declare-fun arrayNoDuplicates!0 (array!102817 (_ BitVec 32) List!36066) Bool)

(assert (=> b!1543301 (= lt!665903 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36063))))

(declare-fun b!1543302 () Bool)

(declare-fun res!1058998 () Bool)

(assert (=> b!1543302 (=> (not res!1058998) (not e!858906))))

(declare-datatypes ((V!58869 0))(
  ( (V!58870 (val!18987 Int)) )
))
(declare-datatypes ((ValueCell!17999 0))(
  ( (ValueCellFull!17999 (v!21785 V!58869)) (EmptyCell!17999) )
))
(declare-datatypes ((array!102819 0))(
  ( (array!102820 (arr!49607 (Array (_ BitVec 32) ValueCell!17999)) (size!50158 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102819)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1543302 (= res!1058998 (and (= (size!50158 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50157 _keys!618) (size!50158 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun res!1058999 () Bool)

(assert (=> start!131862 (=> (not res!1058999) (not e!858906))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131862 (= res!1058999 (validMask!0 mask!926))))

(assert (=> start!131862 e!858906))

(assert (=> start!131862 true))

(declare-fun e!858904 () Bool)

(declare-fun array_inv!38517 (array!102819) Bool)

(assert (=> start!131862 (and (array_inv!38517 _values!470) e!858904)))

(declare-fun array_inv!38518 (array!102817) Bool)

(assert (=> start!131862 (array_inv!38518 _keys!618)))

(declare-fun mapNonEmpty!58432 () Bool)

(declare-fun tp!110960 () Bool)

(assert (=> mapNonEmpty!58432 (= mapRes!58432 (and tp!110960 e!858905))))

(declare-fun mapValue!58432 () ValueCell!17999)

(declare-fun mapRest!58432 () (Array (_ BitVec 32) ValueCell!17999))

(declare-fun mapKey!58432 () (_ BitVec 32))

(assert (=> mapNonEmpty!58432 (= (arr!49607 _values!470) (store mapRest!58432 mapKey!58432 mapValue!58432))))

(declare-fun b!1543303 () Bool)

(assert (=> b!1543303 (= e!858904 (and e!858903 mapRes!58432))))

(declare-fun condMapEmpty!58432 () Bool)

(declare-fun mapDefault!58432 () ValueCell!17999)

