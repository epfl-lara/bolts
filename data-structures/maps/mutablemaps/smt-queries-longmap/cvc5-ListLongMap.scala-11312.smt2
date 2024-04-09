; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131808 () Bool)

(assert start!131808)

(declare-fun b!1542812 () Bool)

(declare-fun res!1058755 () Bool)

(declare-fun e!858502 () Bool)

(assert (=> b!1542812 (=> (not res!1058755) (not e!858502))))

(declare-datatypes ((array!102717 0))(
  ( (array!102718 (arr!49556 (Array (_ BitVec 32) (_ BitVec 64))) (size!50107 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102717)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102717 (_ BitVec 32)) Bool)

(assert (=> b!1542812 (= res!1058755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapNonEmpty!58351 () Bool)

(declare-fun mapRes!58351 () Bool)

(declare-fun tp!110879 () Bool)

(declare-fun e!858501 () Bool)

(assert (=> mapNonEmpty!58351 (= mapRes!58351 (and tp!110879 e!858501))))

(declare-datatypes ((V!58797 0))(
  ( (V!58798 (val!18960 Int)) )
))
(declare-datatypes ((ValueCell!17972 0))(
  ( (ValueCellFull!17972 (v!21758 V!58797)) (EmptyCell!17972) )
))
(declare-fun mapRest!58351 () (Array (_ BitVec 32) ValueCell!17972))

(declare-fun mapValue!58351 () ValueCell!17972)

(declare-fun mapKey!58351 () (_ BitVec 32))

(declare-datatypes ((array!102719 0))(
  ( (array!102720 (arr!49557 (Array (_ BitVec 32) ValueCell!17972)) (size!50108 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102719)

(assert (=> mapNonEmpty!58351 (= (arr!49557 _values!470) (store mapRest!58351 mapKey!58351 mapValue!58351))))

(declare-fun b!1542814 () Bool)

(declare-fun res!1058756 () Bool)

(assert (=> b!1542814 (=> (not res!1058756) (not e!858502))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542814 (= res!1058756 (and (= (size!50108 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50107 _keys!618) (size!50108 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542815 () Bool)

(declare-fun tp_is_empty!37765 () Bool)

(assert (=> b!1542815 (= e!858501 tp_is_empty!37765)))

(declare-fun b!1542816 () Bool)

(assert (=> b!1542816 (= e!858502 false)))

(declare-fun lt!665822 () Bool)

(declare-datatypes ((List!36046 0))(
  ( (Nil!36043) (Cons!36042 (h!37488 (_ BitVec 64)) (t!50747 List!36046)) )
))
(declare-fun arrayNoDuplicates!0 (array!102717 (_ BitVec 32) List!36046) Bool)

(assert (=> b!1542816 (= lt!665822 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36043))))

(declare-fun b!1542817 () Bool)

(declare-fun e!858499 () Bool)

(declare-fun e!858498 () Bool)

(assert (=> b!1542817 (= e!858499 (and e!858498 mapRes!58351))))

(declare-fun condMapEmpty!58351 () Bool)

(declare-fun mapDefault!58351 () ValueCell!17972)

