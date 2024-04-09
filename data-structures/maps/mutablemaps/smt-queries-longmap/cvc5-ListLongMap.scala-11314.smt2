; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131820 () Bool)

(assert start!131820)

(declare-fun b!1542920 () Bool)

(declare-fun e!858588 () Bool)

(assert (=> b!1542920 (= e!858588 false)))

(declare-fun lt!665840 () Bool)

(declare-datatypes ((array!102741 0))(
  ( (array!102742 (arr!49568 (Array (_ BitVec 32) (_ BitVec 64))) (size!50119 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102741)

(declare-datatypes ((List!36052 0))(
  ( (Nil!36049) (Cons!36048 (h!37494 (_ BitVec 64)) (t!50753 List!36052)) )
))
(declare-fun arrayNoDuplicates!0 (array!102741 (_ BitVec 32) List!36052) Bool)

(assert (=> b!1542920 (= lt!665840 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36049))))

(declare-fun b!1542921 () Bool)

(declare-fun res!1058810 () Bool)

(assert (=> b!1542921 (=> (not res!1058810) (not e!858588))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58813 0))(
  ( (V!58814 (val!18966 Int)) )
))
(declare-datatypes ((ValueCell!17978 0))(
  ( (ValueCellFull!17978 (v!21764 V!58813)) (EmptyCell!17978) )
))
(declare-datatypes ((array!102743 0))(
  ( (array!102744 (arr!49569 (Array (_ BitVec 32) ValueCell!17978)) (size!50120 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102743)

(assert (=> b!1542921 (= res!1058810 (and (= (size!50120 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50119 _keys!618) (size!50120 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun res!1058808 () Bool)

(assert (=> start!131820 (=> (not res!1058808) (not e!858588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131820 (= res!1058808 (validMask!0 mask!926))))

(assert (=> start!131820 e!858588))

(assert (=> start!131820 true))

(declare-fun e!858591 () Bool)

(declare-fun array_inv!38487 (array!102743) Bool)

(assert (=> start!131820 (and (array_inv!38487 _values!470) e!858591)))

(declare-fun array_inv!38488 (array!102741) Bool)

(assert (=> start!131820 (array_inv!38488 _keys!618)))

(declare-fun b!1542922 () Bool)

(declare-fun res!1058809 () Bool)

(assert (=> b!1542922 (=> (not res!1058809) (not e!858588))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102741 (_ BitVec 32)) Bool)

(assert (=> b!1542922 (= res!1058809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542923 () Bool)

(declare-fun e!858589 () Bool)

(declare-fun tp_is_empty!37777 () Bool)

(assert (=> b!1542923 (= e!858589 tp_is_empty!37777)))

(declare-fun mapNonEmpty!58369 () Bool)

(declare-fun mapRes!58369 () Bool)

(declare-fun tp!110897 () Bool)

(declare-fun e!858592 () Bool)

(assert (=> mapNonEmpty!58369 (= mapRes!58369 (and tp!110897 e!858592))))

(declare-fun mapRest!58369 () (Array (_ BitVec 32) ValueCell!17978))

(declare-fun mapValue!58369 () ValueCell!17978)

(declare-fun mapKey!58369 () (_ BitVec 32))

(assert (=> mapNonEmpty!58369 (= (arr!49569 _values!470) (store mapRest!58369 mapKey!58369 mapValue!58369))))

(declare-fun b!1542924 () Bool)

(assert (=> b!1542924 (= e!858592 tp_is_empty!37777)))

(declare-fun mapIsEmpty!58369 () Bool)

(assert (=> mapIsEmpty!58369 mapRes!58369))

(declare-fun b!1542925 () Bool)

(assert (=> b!1542925 (= e!858591 (and e!858589 mapRes!58369))))

(declare-fun condMapEmpty!58369 () Bool)

(declare-fun mapDefault!58369 () ValueCell!17978)

