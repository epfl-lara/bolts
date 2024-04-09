; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131770 () Bool)

(assert start!131770)

(declare-fun mapIsEmpty!58294 () Bool)

(declare-fun mapRes!58294 () Bool)

(assert (=> mapIsEmpty!58294 mapRes!58294))

(declare-fun b!1542470 () Bool)

(declare-fun e!858215 () Bool)

(declare-fun tp_is_empty!37727 () Bool)

(assert (=> b!1542470 (= e!858215 tp_is_empty!37727)))

(declare-fun b!1542471 () Bool)

(declare-fun res!1058583 () Bool)

(declare-fun e!858213 () Bool)

(assert (=> b!1542471 (=> (not res!1058583) (not e!858213))))

(declare-datatypes ((array!102649 0))(
  ( (array!102650 (arr!49522 (Array (_ BitVec 32) (_ BitVec 64))) (size!50073 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102649)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58745 0))(
  ( (V!58746 (val!18941 Int)) )
))
(declare-datatypes ((ValueCell!17953 0))(
  ( (ValueCellFull!17953 (v!21739 V!58745)) (EmptyCell!17953) )
))
(declare-datatypes ((array!102651 0))(
  ( (array!102652 (arr!49523 (Array (_ BitVec 32) ValueCell!17953)) (size!50074 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102651)

(assert (=> b!1542471 (= res!1058583 (and (= (size!50074 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50073 _keys!618) (size!50074 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!58294 () Bool)

(declare-fun tp!110822 () Bool)

(declare-fun e!858214 () Bool)

(assert (=> mapNonEmpty!58294 (= mapRes!58294 (and tp!110822 e!858214))))

(declare-fun mapKey!58294 () (_ BitVec 32))

(declare-fun mapRest!58294 () (Array (_ BitVec 32) ValueCell!17953))

(declare-fun mapValue!58294 () ValueCell!17953)

(assert (=> mapNonEmpty!58294 (= (arr!49523 _values!470) (store mapRest!58294 mapKey!58294 mapValue!58294))))

(declare-fun b!1542472 () Bool)

(assert (=> b!1542472 (= e!858213 false)))

(declare-fun lt!665765 () Bool)

(declare-datatypes ((List!36035 0))(
  ( (Nil!36032) (Cons!36031 (h!37477 (_ BitVec 64)) (t!50736 List!36035)) )
))
(declare-fun arrayNoDuplicates!0 (array!102649 (_ BitVec 32) List!36035) Bool)

(assert (=> b!1542472 (= lt!665765 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36032))))

(declare-fun res!1058584 () Bool)

(assert (=> start!131770 (=> (not res!1058584) (not e!858213))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131770 (= res!1058584 (validMask!0 mask!926))))

(assert (=> start!131770 e!858213))

(assert (=> start!131770 true))

(declare-fun e!858216 () Bool)

(declare-fun array_inv!38455 (array!102651) Bool)

(assert (=> start!131770 (and (array_inv!38455 _values!470) e!858216)))

(declare-fun array_inv!38456 (array!102649) Bool)

(assert (=> start!131770 (array_inv!38456 _keys!618)))

(declare-fun b!1542473 () Bool)

(declare-fun res!1058585 () Bool)

(assert (=> b!1542473 (=> (not res!1058585) (not e!858213))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102649 (_ BitVec 32)) Bool)

(assert (=> b!1542473 (= res!1058585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542474 () Bool)

(assert (=> b!1542474 (= e!858216 (and e!858215 mapRes!58294))))

(declare-fun condMapEmpty!58294 () Bool)

(declare-fun mapDefault!58294 () ValueCell!17953)

