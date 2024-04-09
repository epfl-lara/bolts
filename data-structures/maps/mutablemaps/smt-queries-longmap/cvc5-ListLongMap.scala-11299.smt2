; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131730 () Bool)

(assert start!131730)

(declare-fun res!1058404 () Bool)

(declare-fun e!857917 () Bool)

(assert (=> start!131730 (=> (not res!1058404) (not e!857917))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131730 (= res!1058404 (validMask!0 mask!926))))

(assert (=> start!131730 e!857917))

(assert (=> start!131730 true))

(declare-datatypes ((V!58693 0))(
  ( (V!58694 (val!18921 Int)) )
))
(declare-datatypes ((ValueCell!17933 0))(
  ( (ValueCellFull!17933 (v!21719 V!58693)) (EmptyCell!17933) )
))
(declare-datatypes ((array!102569 0))(
  ( (array!102570 (arr!49482 (Array (_ BitVec 32) ValueCell!17933)) (size!50033 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102569)

(declare-fun e!857915 () Bool)

(declare-fun array_inv!38417 (array!102569) Bool)

(assert (=> start!131730 (and (array_inv!38417 _values!470) e!857915)))

(declare-datatypes ((array!102571 0))(
  ( (array!102572 (arr!49483 (Array (_ BitVec 32) (_ BitVec 64))) (size!50034 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102571)

(declare-fun array_inv!38418 (array!102571) Bool)

(assert (=> start!131730 (array_inv!38418 _keys!618)))

(declare-fun b!1542110 () Bool)

(declare-fun res!1058403 () Bool)

(assert (=> b!1542110 (=> (not res!1058403) (not e!857917))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102571 (_ BitVec 32)) Bool)

(assert (=> b!1542110 (= res!1058403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapNonEmpty!58234 () Bool)

(declare-fun mapRes!58234 () Bool)

(declare-fun tp!110762 () Bool)

(declare-fun e!857916 () Bool)

(assert (=> mapNonEmpty!58234 (= mapRes!58234 (and tp!110762 e!857916))))

(declare-fun mapRest!58234 () (Array (_ BitVec 32) ValueCell!17933))

(declare-fun mapValue!58234 () ValueCell!17933)

(declare-fun mapKey!58234 () (_ BitVec 32))

(assert (=> mapNonEmpty!58234 (= (arr!49482 _values!470) (store mapRest!58234 mapKey!58234 mapValue!58234))))

(declare-fun b!1542111 () Bool)

(assert (=> b!1542111 (= e!857917 false)))

(declare-fun lt!665705 () Bool)

(declare-datatypes ((List!36022 0))(
  ( (Nil!36019) (Cons!36018 (h!37464 (_ BitVec 64)) (t!50723 List!36022)) )
))
(declare-fun arrayNoDuplicates!0 (array!102571 (_ BitVec 32) List!36022) Bool)

(assert (=> b!1542111 (= lt!665705 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36019))))

(declare-fun b!1542112 () Bool)

(declare-fun e!857913 () Bool)

(declare-fun tp_is_empty!37687 () Bool)

(assert (=> b!1542112 (= e!857913 tp_is_empty!37687)))

(declare-fun b!1542113 () Bool)

(assert (=> b!1542113 (= e!857915 (and e!857913 mapRes!58234))))

(declare-fun condMapEmpty!58234 () Bool)

(declare-fun mapDefault!58234 () ValueCell!17933)

