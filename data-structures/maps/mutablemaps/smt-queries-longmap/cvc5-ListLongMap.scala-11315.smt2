; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131826 () Bool)

(assert start!131826)

(declare-fun b!1542974 () Bool)

(declare-fun res!1058836 () Bool)

(declare-fun e!858633 () Bool)

(assert (=> b!1542974 (=> (not res!1058836) (not e!858633))))

(declare-datatypes ((array!102751 0))(
  ( (array!102752 (arr!49573 (Array (_ BitVec 32) (_ BitVec 64))) (size!50124 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102751)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58821 0))(
  ( (V!58822 (val!18969 Int)) )
))
(declare-datatypes ((ValueCell!17981 0))(
  ( (ValueCellFull!17981 (v!21767 V!58821)) (EmptyCell!17981) )
))
(declare-datatypes ((array!102753 0))(
  ( (array!102754 (arr!49574 (Array (_ BitVec 32) ValueCell!17981)) (size!50125 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102753)

(assert (=> b!1542974 (= res!1058836 (and (= (size!50125 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50124 _keys!618) (size!50125 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542975 () Bool)

(declare-fun e!858634 () Bool)

(declare-fun tp_is_empty!37783 () Bool)

(assert (=> b!1542975 (= e!858634 tp_is_empty!37783)))

(declare-fun res!1058837 () Bool)

(assert (=> start!131826 (=> (not res!1058837) (not e!858633))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131826 (= res!1058837 (validMask!0 mask!926))))

(assert (=> start!131826 e!858633))

(assert (=> start!131826 true))

(declare-fun e!858635 () Bool)

(declare-fun array_inv!38491 (array!102753) Bool)

(assert (=> start!131826 (and (array_inv!38491 _values!470) e!858635)))

(declare-fun array_inv!38492 (array!102751) Bool)

(assert (=> start!131826 (array_inv!38492 _keys!618)))

(declare-fun b!1542976 () Bool)

(declare-fun e!858636 () Bool)

(assert (=> b!1542976 (= e!858636 tp_is_empty!37783)))

(declare-fun b!1542977 () Bool)

(assert (=> b!1542977 (= e!858633 false)))

(declare-fun lt!665849 () Bool)

(declare-datatypes ((List!36054 0))(
  ( (Nil!36051) (Cons!36050 (h!37496 (_ BitVec 64)) (t!50755 List!36054)) )
))
(declare-fun arrayNoDuplicates!0 (array!102751 (_ BitVec 32) List!36054) Bool)

(assert (=> b!1542977 (= lt!665849 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36051))))

(declare-fun b!1542978 () Bool)

(declare-fun res!1058835 () Bool)

(assert (=> b!1542978 (=> (not res!1058835) (not e!858633))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102751 (_ BitVec 32)) Bool)

(assert (=> b!1542978 (= res!1058835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542979 () Bool)

(declare-fun mapRes!58378 () Bool)

(assert (=> b!1542979 (= e!858635 (and e!858634 mapRes!58378))))

(declare-fun condMapEmpty!58378 () Bool)

(declare-fun mapDefault!58378 () ValueCell!17981)

