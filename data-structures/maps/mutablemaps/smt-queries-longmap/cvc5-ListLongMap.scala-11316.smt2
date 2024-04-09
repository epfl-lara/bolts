; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131832 () Bool)

(assert start!131832)

(declare-fun b!1543028 () Bool)

(declare-fun res!1058864 () Bool)

(declare-fun e!858681 () Bool)

(assert (=> b!1543028 (=> (not res!1058864) (not e!858681))))

(declare-datatypes ((array!102763 0))(
  ( (array!102764 (arr!49579 (Array (_ BitVec 32) (_ BitVec 64))) (size!50130 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102763)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58829 0))(
  ( (V!58830 (val!18972 Int)) )
))
(declare-datatypes ((ValueCell!17984 0))(
  ( (ValueCellFull!17984 (v!21770 V!58829)) (EmptyCell!17984) )
))
(declare-datatypes ((array!102765 0))(
  ( (array!102766 (arr!49580 (Array (_ BitVec 32) ValueCell!17984)) (size!50131 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102765)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1543028 (= res!1058864 (and (= (size!50131 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50130 _keys!618) (size!50131 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1543029 () Bool)

(declare-fun e!858678 () Bool)

(declare-fun tp_is_empty!37789 () Bool)

(assert (=> b!1543029 (= e!858678 tp_is_empty!37789)))

(declare-fun b!1543030 () Bool)

(declare-fun e!858679 () Bool)

(assert (=> b!1543030 (= e!858679 tp_is_empty!37789)))

(declare-fun mapIsEmpty!58387 () Bool)

(declare-fun mapRes!58387 () Bool)

(assert (=> mapIsEmpty!58387 mapRes!58387))

(declare-fun mapNonEmpty!58387 () Bool)

(declare-fun tp!110915 () Bool)

(assert (=> mapNonEmpty!58387 (= mapRes!58387 (and tp!110915 e!858679))))

(declare-fun mapKey!58387 () (_ BitVec 32))

(declare-fun mapRest!58387 () (Array (_ BitVec 32) ValueCell!17984))

(declare-fun mapValue!58387 () ValueCell!17984)

(assert (=> mapNonEmpty!58387 (= (arr!49580 _values!470) (store mapRest!58387 mapKey!58387 mapValue!58387))))

(declare-fun res!1058863 () Bool)

(assert (=> start!131832 (=> (not res!1058863) (not e!858681))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131832 (= res!1058863 (validMask!0 mask!926))))

(assert (=> start!131832 e!858681))

(assert (=> start!131832 true))

(declare-fun e!858682 () Bool)

(declare-fun array_inv!38497 (array!102765) Bool)

(assert (=> start!131832 (and (array_inv!38497 _values!470) e!858682)))

(declare-fun array_inv!38498 (array!102763) Bool)

(assert (=> start!131832 (array_inv!38498 _keys!618)))

(declare-fun b!1543031 () Bool)

(assert (=> b!1543031 (= e!858681 false)))

(declare-fun lt!665858 () Bool)

(declare-datatypes ((List!36057 0))(
  ( (Nil!36054) (Cons!36053 (h!37499 (_ BitVec 64)) (t!50758 List!36057)) )
))
(declare-fun arrayNoDuplicates!0 (array!102763 (_ BitVec 32) List!36057) Bool)

(assert (=> b!1543031 (= lt!665858 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36054))))

(declare-fun b!1543032 () Bool)

(declare-fun res!1058862 () Bool)

(assert (=> b!1543032 (=> (not res!1058862) (not e!858681))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102763 (_ BitVec 32)) Bool)

(assert (=> b!1543032 (= res!1058862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543033 () Bool)

(assert (=> b!1543033 (= e!858682 (and e!858678 mapRes!58387))))

(declare-fun condMapEmpty!58387 () Bool)

(declare-fun mapDefault!58387 () ValueCell!17984)

