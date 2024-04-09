; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131622 () Bool)

(assert start!131622)

(declare-fun res!1058061 () Bool)

(declare-fun e!857340 () Bool)

(assert (=> start!131622 (=> (not res!1058061) (not e!857340))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131622 (= res!1058061 (validMask!0 mask!926))))

(assert (=> start!131622 e!857340))

(assert (=> start!131622 true))

(declare-datatypes ((V!58607 0))(
  ( (V!58608 (val!18889 Int)) )
))
(declare-datatypes ((ValueCell!17901 0))(
  ( (ValueCellFull!17901 (v!21686 V!58607)) (EmptyCell!17901) )
))
(declare-datatypes ((array!102439 0))(
  ( (array!102440 (arr!49422 (Array (_ BitVec 32) ValueCell!17901)) (size!49973 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102439)

(declare-fun e!857342 () Bool)

(declare-fun array_inv!38367 (array!102439) Bool)

(assert (=> start!131622 (and (array_inv!38367 _values!470) e!857342)))

(declare-datatypes ((array!102441 0))(
  ( (array!102442 (arr!49423 (Array (_ BitVec 32) (_ BitVec 64))) (size!49974 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102441)

(declare-fun array_inv!38368 (array!102441) Bool)

(assert (=> start!131622 (array_inv!38368 _keys!618)))

(declare-fun b!1541416 () Bool)

(declare-fun e!857338 () Bool)

(declare-fun mapRes!58123 () Bool)

(assert (=> b!1541416 (= e!857342 (and e!857338 mapRes!58123))))

(declare-fun condMapEmpty!58123 () Bool)

(declare-fun mapDefault!58123 () ValueCell!17901)

(assert (=> b!1541416 (= condMapEmpty!58123 (= (arr!49422 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17901)) mapDefault!58123)))))

(declare-fun mapNonEmpty!58123 () Bool)

(declare-fun tp!110651 () Bool)

(declare-fun e!857339 () Bool)

(assert (=> mapNonEmpty!58123 (= mapRes!58123 (and tp!110651 e!857339))))

(declare-fun mapKey!58123 () (_ BitVec 32))

(declare-fun mapRest!58123 () (Array (_ BitVec 32) ValueCell!17901))

(declare-fun mapValue!58123 () ValueCell!17901)

(assert (=> mapNonEmpty!58123 (= (arr!49422 _values!470) (store mapRest!58123 mapKey!58123 mapValue!58123))))

(declare-fun b!1541417 () Bool)

(declare-fun tp_is_empty!37623 () Bool)

(assert (=> b!1541417 (= e!857338 tp_is_empty!37623)))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun b!1541418 () Bool)

(assert (=> b!1541418 (= e!857340 (and (= (size!49973 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!49974 _keys!618) (size!49973 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011) (not (= (size!49974 _keys!618) (bvadd #b00000000000000000000000000000001 mask!926)))))))

(declare-fun b!1541419 () Bool)

(assert (=> b!1541419 (= e!857339 tp_is_empty!37623)))

(declare-fun mapIsEmpty!58123 () Bool)

(assert (=> mapIsEmpty!58123 mapRes!58123))

(assert (= (and start!131622 res!1058061) b!1541418))

(assert (= (and b!1541416 condMapEmpty!58123) mapIsEmpty!58123))

(assert (= (and b!1541416 (not condMapEmpty!58123)) mapNonEmpty!58123))

(get-info :version)

(assert (= (and mapNonEmpty!58123 ((_ is ValueCellFull!17901) mapValue!58123)) b!1541419))

(assert (= (and b!1541416 ((_ is ValueCellFull!17901) mapDefault!58123)) b!1541417))

(assert (= start!131622 b!1541416))

(declare-fun m!1423427 () Bool)

(assert (=> start!131622 m!1423427))

(declare-fun m!1423429 () Bool)

(assert (=> start!131622 m!1423429))

(declare-fun m!1423431 () Bool)

(assert (=> start!131622 m!1423431))

(declare-fun m!1423433 () Bool)

(assert (=> mapNonEmpty!58123 m!1423433))

(check-sat (not start!131622) (not mapNonEmpty!58123) tp_is_empty!37623)
(check-sat)
