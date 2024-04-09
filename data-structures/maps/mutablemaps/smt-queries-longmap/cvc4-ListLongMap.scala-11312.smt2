; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131812 () Bool)

(assert start!131812)

(declare-fun b!1542848 () Bool)

(declare-fun e!858529 () Bool)

(declare-fun tp_is_empty!37769 () Bool)

(assert (=> b!1542848 (= e!858529 tp_is_empty!37769)))

(declare-fun b!1542849 () Bool)

(declare-fun e!858531 () Bool)

(assert (=> b!1542849 (= e!858531 false)))

(declare-fun lt!665828 () Bool)

(declare-datatypes ((array!102725 0))(
  ( (array!102726 (arr!49560 (Array (_ BitVec 32) (_ BitVec 64))) (size!50111 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102725)

(declare-datatypes ((List!36048 0))(
  ( (Nil!36045) (Cons!36044 (h!37490 (_ BitVec 64)) (t!50749 List!36048)) )
))
(declare-fun arrayNoDuplicates!0 (array!102725 (_ BitVec 32) List!36048) Bool)

(assert (=> b!1542849 (= lt!665828 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36045))))

(declare-fun res!1058772 () Bool)

(assert (=> start!131812 (=> (not res!1058772) (not e!858531))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131812 (= res!1058772 (validMask!0 mask!926))))

(assert (=> start!131812 e!858531))

(assert (=> start!131812 true))

(declare-datatypes ((V!58801 0))(
  ( (V!58802 (val!18962 Int)) )
))
(declare-datatypes ((ValueCell!17974 0))(
  ( (ValueCellFull!17974 (v!21760 V!58801)) (EmptyCell!17974) )
))
(declare-datatypes ((array!102727 0))(
  ( (array!102728 (arr!49561 (Array (_ BitVec 32) ValueCell!17974)) (size!50112 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102727)

(declare-fun e!858532 () Bool)

(declare-fun array_inv!38479 (array!102727) Bool)

(assert (=> start!131812 (and (array_inv!38479 _values!470) e!858532)))

(declare-fun array_inv!38480 (array!102725) Bool)

(assert (=> start!131812 (array_inv!38480 _keys!618)))

(declare-fun b!1542850 () Bool)

(declare-fun res!1058774 () Bool)

(assert (=> b!1542850 (=> (not res!1058774) (not e!858531))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542850 (= res!1058774 (and (= (size!50112 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50111 _keys!618) (size!50112 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542851 () Bool)

(declare-fun mapRes!58357 () Bool)

(assert (=> b!1542851 (= e!858532 (and e!858529 mapRes!58357))))

(declare-fun condMapEmpty!58357 () Bool)

(declare-fun mapDefault!58357 () ValueCell!17974)

