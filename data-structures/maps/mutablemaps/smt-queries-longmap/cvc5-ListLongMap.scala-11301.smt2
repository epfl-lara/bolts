; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131742 () Bool)

(assert start!131742)

(declare-fun mapNonEmpty!58252 () Bool)

(declare-fun mapRes!58252 () Bool)

(declare-fun tp!110780 () Bool)

(declare-fun e!858007 () Bool)

(assert (=> mapNonEmpty!58252 (= mapRes!58252 (and tp!110780 e!858007))))

(declare-fun mapKey!58252 () (_ BitVec 32))

(declare-datatypes ((V!58709 0))(
  ( (V!58710 (val!18927 Int)) )
))
(declare-datatypes ((ValueCell!17939 0))(
  ( (ValueCellFull!17939 (v!21725 V!58709)) (EmptyCell!17939) )
))
(declare-datatypes ((array!102593 0))(
  ( (array!102594 (arr!49494 (Array (_ BitVec 32) ValueCell!17939)) (size!50045 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102593)

(declare-fun mapRest!58252 () (Array (_ BitVec 32) ValueCell!17939))

(declare-fun mapValue!58252 () ValueCell!17939)

(assert (=> mapNonEmpty!58252 (= (arr!49494 _values!470) (store mapRest!58252 mapKey!58252 mapValue!58252))))

(declare-fun b!1542218 () Bool)

(declare-fun e!858004 () Bool)

(assert (=> b!1542218 (= e!858004 false)))

(declare-fun lt!665723 () Bool)

(declare-datatypes ((array!102595 0))(
  ( (array!102596 (arr!49495 (Array (_ BitVec 32) (_ BitVec 64))) (size!50046 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102595)

(declare-datatypes ((List!36027 0))(
  ( (Nil!36024) (Cons!36023 (h!37469 (_ BitVec 64)) (t!50728 List!36027)) )
))
(declare-fun arrayNoDuplicates!0 (array!102595 (_ BitVec 32) List!36027) Bool)

(assert (=> b!1542218 (= lt!665723 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36024))))

(declare-fun mapIsEmpty!58252 () Bool)

(assert (=> mapIsEmpty!58252 mapRes!58252))

(declare-fun res!1058459 () Bool)

(assert (=> start!131742 (=> (not res!1058459) (not e!858004))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131742 (= res!1058459 (validMask!0 mask!926))))

(assert (=> start!131742 e!858004))

(assert (=> start!131742 true))

(declare-fun e!858003 () Bool)

(declare-fun array_inv!38429 (array!102593) Bool)

(assert (=> start!131742 (and (array_inv!38429 _values!470) e!858003)))

(declare-fun array_inv!38430 (array!102595) Bool)

(assert (=> start!131742 (array_inv!38430 _keys!618)))

(declare-fun b!1542219 () Bool)

(declare-fun res!1058457 () Bool)

(assert (=> b!1542219 (=> (not res!1058457) (not e!858004))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542219 (= res!1058457 (and (= (size!50045 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50046 _keys!618) (size!50045 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542220 () Bool)

(declare-fun e!858006 () Bool)

(declare-fun tp_is_empty!37699 () Bool)

(assert (=> b!1542220 (= e!858006 tp_is_empty!37699)))

(declare-fun b!1542221 () Bool)

(declare-fun res!1058458 () Bool)

(assert (=> b!1542221 (=> (not res!1058458) (not e!858004))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102595 (_ BitVec 32)) Bool)

(assert (=> b!1542221 (= res!1058458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542222 () Bool)

(assert (=> b!1542222 (= e!858007 tp_is_empty!37699)))

(declare-fun b!1542223 () Bool)

(assert (=> b!1542223 (= e!858003 (and e!858006 mapRes!58252))))

(declare-fun condMapEmpty!58252 () Bool)

(declare-fun mapDefault!58252 () ValueCell!17939)

