; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131686 () Bool)

(assert start!131686)

(declare-fun b!1541785 () Bool)

(declare-fun res!1058240 () Bool)

(declare-fun e!857647 () Bool)

(assert (=> b!1541785 (=> (not res!1058240) (not e!857647))))

(declare-datatypes ((List!36013 0))(
  ( (Nil!36010) (Cons!36009 (h!37455 (_ BitVec 64)) (t!50714 List!36013)) )
))
(declare-fun noDuplicate!2674 (List!36013) Bool)

(assert (=> b!1541785 (= res!1058240 (noDuplicate!2674 Nil!36010))))

(declare-fun b!1541786 () Bool)

(declare-fun e!857643 () Bool)

(declare-fun tp_is_empty!37655 () Bool)

(assert (=> b!1541786 (= e!857643 tp_is_empty!37655)))

(declare-fun b!1541787 () Bool)

(declare-fun e!857646 () Bool)

(assert (=> b!1541787 (= e!857647 e!857646)))

(declare-fun res!1058236 () Bool)

(assert (=> b!1541787 (=> res!1058236 e!857646)))

(declare-fun contains!10036 (List!36013 (_ BitVec 64)) Bool)

(assert (=> b!1541787 (= res!1058236 (contains!10036 Nil!36010 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!58183 () Bool)

(declare-fun mapRes!58183 () Bool)

(assert (=> mapIsEmpty!58183 mapRes!58183))

(declare-fun b!1541788 () Bool)

(declare-fun res!1058238 () Bool)

(assert (=> b!1541788 (=> (not res!1058238) (not e!857647))))

(declare-datatypes ((array!102509 0))(
  ( (array!102510 (arr!49453 (Array (_ BitVec 32) (_ BitVec 64))) (size!50004 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102509)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102509 (_ BitVec 32)) Bool)

(assert (=> b!1541788 (= res!1058238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1541789 () Bool)

(assert (=> b!1541789 (= e!857646 (contains!10036 Nil!36010 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1541790 () Bool)

(declare-fun e!857648 () Bool)

(assert (=> b!1541790 (= e!857648 tp_is_empty!37655)))

(declare-fun b!1541791 () Bool)

(declare-fun res!1058239 () Bool)

(assert (=> b!1541791 (=> (not res!1058239) (not e!857647))))

(assert (=> b!1541791 (= res!1058239 (and (bvsle #b00000000000000000000000000000000 (size!50004 _keys!618)) (bvslt (size!50004 _keys!618) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!58183 () Bool)

(declare-fun tp!110711 () Bool)

(assert (=> mapNonEmpty!58183 (= mapRes!58183 (and tp!110711 e!857648))))

(declare-datatypes ((V!58649 0))(
  ( (V!58650 (val!18905 Int)) )
))
(declare-datatypes ((ValueCell!17917 0))(
  ( (ValueCellFull!17917 (v!21702 V!58649)) (EmptyCell!17917) )
))
(declare-fun mapValue!58183 () ValueCell!17917)

(declare-fun mapRest!58183 () (Array (_ BitVec 32) ValueCell!17917))

(declare-datatypes ((array!102511 0))(
  ( (array!102512 (arr!49454 (Array (_ BitVec 32) ValueCell!17917)) (size!50005 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102511)

(declare-fun mapKey!58183 () (_ BitVec 32))

(assert (=> mapNonEmpty!58183 (= (arr!49454 _values!470) (store mapRest!58183 mapKey!58183 mapValue!58183))))

(declare-fun b!1541792 () Bool)

(declare-fun res!1058241 () Bool)

(assert (=> b!1541792 (=> (not res!1058241) (not e!857647))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1541792 (= res!1058241 (and (= (size!50005 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50004 _keys!618) (size!50005 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun res!1058237 () Bool)

(assert (=> start!131686 (=> (not res!1058237) (not e!857647))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131686 (= res!1058237 (validMask!0 mask!926))))

(assert (=> start!131686 e!857647))

(assert (=> start!131686 true))

(declare-fun e!857645 () Bool)

(declare-fun array_inv!38395 (array!102511) Bool)

(assert (=> start!131686 (and (array_inv!38395 _values!470) e!857645)))

(declare-fun array_inv!38396 (array!102509) Bool)

(assert (=> start!131686 (array_inv!38396 _keys!618)))

(declare-fun b!1541793 () Bool)

(assert (=> b!1541793 (= e!857645 (and e!857643 mapRes!58183))))

(declare-fun condMapEmpty!58183 () Bool)

(declare-fun mapDefault!58183 () ValueCell!17917)

