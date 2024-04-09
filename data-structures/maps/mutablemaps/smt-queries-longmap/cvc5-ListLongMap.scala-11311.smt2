; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131802 () Bool)

(assert start!131802)

(declare-fun b!1542758 () Bool)

(declare-fun e!858457 () Bool)

(declare-fun tp_is_empty!37759 () Bool)

(assert (=> b!1542758 (= e!858457 tp_is_empty!37759)))

(declare-fun b!1542759 () Bool)

(declare-fun e!858456 () Bool)

(assert (=> b!1542759 (= e!858456 tp_is_empty!37759)))

(declare-fun b!1542760 () Bool)

(declare-fun res!1058729 () Bool)

(declare-fun e!858455 () Bool)

(assert (=> b!1542760 (=> (not res!1058729) (not e!858455))))

(declare-datatypes ((array!102707 0))(
  ( (array!102708 (arr!49551 (Array (_ BitVec 32) (_ BitVec 64))) (size!50102 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102707)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102707 (_ BitVec 32)) Bool)

(assert (=> b!1542760 (= res!1058729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542761 () Bool)

(declare-fun res!1058728 () Bool)

(assert (=> b!1542761 (=> (not res!1058728) (not e!858455))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-datatypes ((V!58789 0))(
  ( (V!58790 (val!18957 Int)) )
))
(declare-datatypes ((ValueCell!17969 0))(
  ( (ValueCellFull!17969 (v!21755 V!58789)) (EmptyCell!17969) )
))
(declare-datatypes ((array!102709 0))(
  ( (array!102710 (arr!49552 (Array (_ BitVec 32) ValueCell!17969)) (size!50103 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102709)

(assert (=> b!1542761 (= res!1058728 (and (= (size!50103 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50102 _keys!618) (size!50103 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542762 () Bool)

(assert (=> b!1542762 (= e!858455 false)))

(declare-fun lt!665813 () Bool)

(declare-datatypes ((List!36044 0))(
  ( (Nil!36041) (Cons!36040 (h!37486 (_ BitVec 64)) (t!50745 List!36044)) )
))
(declare-fun arrayNoDuplicates!0 (array!102707 (_ BitVec 32) List!36044) Bool)

(assert (=> b!1542762 (= lt!665813 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36041))))

(declare-fun mapIsEmpty!58342 () Bool)

(declare-fun mapRes!58342 () Bool)

(assert (=> mapIsEmpty!58342 mapRes!58342))

(declare-fun res!1058727 () Bool)

(assert (=> start!131802 (=> (not res!1058727) (not e!858455))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131802 (= res!1058727 (validMask!0 mask!926))))

(assert (=> start!131802 e!858455))

(assert (=> start!131802 true))

(declare-fun e!858453 () Bool)

(declare-fun array_inv!38473 (array!102709) Bool)

(assert (=> start!131802 (and (array_inv!38473 _values!470) e!858453)))

(declare-fun array_inv!38474 (array!102707) Bool)

(assert (=> start!131802 (array_inv!38474 _keys!618)))

(declare-fun mapNonEmpty!58342 () Bool)

(declare-fun tp!110870 () Bool)

(assert (=> mapNonEmpty!58342 (= mapRes!58342 (and tp!110870 e!858456))))

(declare-fun mapRest!58342 () (Array (_ BitVec 32) ValueCell!17969))

(declare-fun mapValue!58342 () ValueCell!17969)

(declare-fun mapKey!58342 () (_ BitVec 32))

(assert (=> mapNonEmpty!58342 (= (arr!49552 _values!470) (store mapRest!58342 mapKey!58342 mapValue!58342))))

(declare-fun b!1542763 () Bool)

(assert (=> b!1542763 (= e!858453 (and e!858457 mapRes!58342))))

(declare-fun condMapEmpty!58342 () Bool)

(declare-fun mapDefault!58342 () ValueCell!17969)

