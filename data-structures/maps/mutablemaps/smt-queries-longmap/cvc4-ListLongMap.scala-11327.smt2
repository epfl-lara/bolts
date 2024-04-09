; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131902 () Bool)

(assert start!131902)

(declare-fun mapIsEmpty!58492 () Bool)

(declare-fun mapRes!58492 () Bool)

(assert (=> mapIsEmpty!58492 mapRes!58492))

(declare-fun b!1543658 () Bool)

(declare-fun e!859205 () Bool)

(assert (=> b!1543658 (= e!859205 false)))

(declare-fun lt!665963 () Bool)

(declare-datatypes ((array!102893 0))(
  ( (array!102894 (arr!49644 (Array (_ BitVec 32) (_ BitVec 64))) (size!50195 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102893)

(declare-datatypes ((List!36078 0))(
  ( (Nil!36075) (Cons!36074 (h!37520 (_ BitVec 64)) (t!50779 List!36078)) )
))
(declare-fun arrayNoDuplicates!0 (array!102893 (_ BitVec 32) List!36078) Bool)

(assert (=> b!1543658 (= lt!665963 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36075))))

(declare-fun b!1543659 () Bool)

(declare-fun res!1059179 () Bool)

(assert (=> b!1543659 (=> (not res!1059179) (not e!859205))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58921 0))(
  ( (V!58922 (val!19007 Int)) )
))
(declare-datatypes ((ValueCell!18019 0))(
  ( (ValueCellFull!18019 (v!21805 V!58921)) (EmptyCell!18019) )
))
(declare-datatypes ((array!102895 0))(
  ( (array!102896 (arr!49645 (Array (_ BitVec 32) ValueCell!18019)) (size!50196 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102895)

(assert (=> b!1543659 (= res!1059179 (and (= (size!50196 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50195 _keys!618) (size!50196 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1543660 () Bool)

(declare-fun e!859203 () Bool)

(declare-fun tp_is_empty!37859 () Bool)

(assert (=> b!1543660 (= e!859203 tp_is_empty!37859)))

(declare-fun mapNonEmpty!58492 () Bool)

(declare-fun tp!111020 () Bool)

(declare-fun e!859206 () Bool)

(assert (=> mapNonEmpty!58492 (= mapRes!58492 (and tp!111020 e!859206))))

(declare-fun mapValue!58492 () ValueCell!18019)

(declare-fun mapKey!58492 () (_ BitVec 32))

(declare-fun mapRest!58492 () (Array (_ BitVec 32) ValueCell!18019))

(assert (=> mapNonEmpty!58492 (= (arr!49645 _values!470) (store mapRest!58492 mapKey!58492 mapValue!58492))))

(declare-fun b!1543661 () Bool)

(declare-fun res!1059177 () Bool)

(assert (=> b!1543661 (=> (not res!1059177) (not e!859205))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102893 (_ BitVec 32)) Bool)

(assert (=> b!1543661 (= res!1059177 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun res!1059178 () Bool)

(assert (=> start!131902 (=> (not res!1059178) (not e!859205))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131902 (= res!1059178 (validMask!0 mask!926))))

(assert (=> start!131902 e!859205))

(assert (=> start!131902 true))

(declare-fun e!859204 () Bool)

(declare-fun array_inv!38541 (array!102895) Bool)

(assert (=> start!131902 (and (array_inv!38541 _values!470) e!859204)))

(declare-fun array_inv!38542 (array!102893) Bool)

(assert (=> start!131902 (array_inv!38542 _keys!618)))

(declare-fun b!1543662 () Bool)

(assert (=> b!1543662 (= e!859206 tp_is_empty!37859)))

(declare-fun b!1543663 () Bool)

(assert (=> b!1543663 (= e!859204 (and e!859203 mapRes!58492))))

(declare-fun condMapEmpty!58492 () Bool)

(declare-fun mapDefault!58492 () ValueCell!18019)

