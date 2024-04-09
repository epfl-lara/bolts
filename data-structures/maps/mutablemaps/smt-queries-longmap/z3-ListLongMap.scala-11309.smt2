; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131792 () Bool)

(assert start!131792)

(declare-fun b!1542668 () Bool)

(declare-fun e!858380 () Bool)

(declare-fun e!858382 () Bool)

(declare-fun mapRes!58327 () Bool)

(assert (=> b!1542668 (= e!858380 (and e!858382 mapRes!58327))))

(declare-fun condMapEmpty!58327 () Bool)

(declare-datatypes ((V!58775 0))(
  ( (V!58776 (val!18952 Int)) )
))
(declare-datatypes ((ValueCell!17964 0))(
  ( (ValueCellFull!17964 (v!21750 V!58775)) (EmptyCell!17964) )
))
(declare-datatypes ((array!102691 0))(
  ( (array!102692 (arr!49543 (Array (_ BitVec 32) ValueCell!17964)) (size!50094 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102691)

(declare-fun mapDefault!58327 () ValueCell!17964)

(assert (=> b!1542668 (= condMapEmpty!58327 (= (arr!49543 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17964)) mapDefault!58327)))))

(declare-fun b!1542669 () Bool)

(declare-fun tp_is_empty!37749 () Bool)

(assert (=> b!1542669 (= e!858382 tp_is_empty!37749)))

(declare-fun res!1058682 () Bool)

(declare-fun e!858379 () Bool)

(assert (=> start!131792 (=> (not res!1058682) (not e!858379))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131792 (= res!1058682 (validMask!0 mask!926))))

(assert (=> start!131792 e!858379))

(assert (=> start!131792 true))

(declare-fun array_inv!38467 (array!102691) Bool)

(assert (=> start!131792 (and (array_inv!38467 _values!470) e!858380)))

(declare-datatypes ((array!102693 0))(
  ( (array!102694 (arr!49544 (Array (_ BitVec 32) (_ BitVec 64))) (size!50095 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102693)

(declare-fun array_inv!38468 (array!102693) Bool)

(assert (=> start!131792 (array_inv!38468 _keys!618)))

(declare-fun b!1542670 () Bool)

(declare-fun res!1058684 () Bool)

(assert (=> b!1542670 (=> (not res!1058684) (not e!858379))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542670 (= res!1058684 (and (= (size!50094 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50095 _keys!618) (size!50094 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!58327 () Bool)

(declare-fun tp!110855 () Bool)

(declare-fun e!858378 () Bool)

(assert (=> mapNonEmpty!58327 (= mapRes!58327 (and tp!110855 e!858378))))

(declare-fun mapRest!58327 () (Array (_ BitVec 32) ValueCell!17964))

(declare-fun mapValue!58327 () ValueCell!17964)

(declare-fun mapKey!58327 () (_ BitVec 32))

(assert (=> mapNonEmpty!58327 (= (arr!49543 _values!470) (store mapRest!58327 mapKey!58327 mapValue!58327))))

(declare-fun mapIsEmpty!58327 () Bool)

(assert (=> mapIsEmpty!58327 mapRes!58327))

(declare-fun b!1542671 () Bool)

(assert (=> b!1542671 (= e!858378 tp_is_empty!37749)))

(declare-fun b!1542672 () Bool)

(assert (=> b!1542672 (= e!858379 false)))

(declare-fun lt!665798 () Bool)

(declare-datatypes ((List!36041 0))(
  ( (Nil!36038) (Cons!36037 (h!37483 (_ BitVec 64)) (t!50742 List!36041)) )
))
(declare-fun arrayNoDuplicates!0 (array!102693 (_ BitVec 32) List!36041) Bool)

(assert (=> b!1542672 (= lt!665798 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36038))))

(declare-fun b!1542673 () Bool)

(declare-fun res!1058683 () Bool)

(assert (=> b!1542673 (=> (not res!1058683) (not e!858379))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102693 (_ BitVec 32)) Bool)

(assert (=> b!1542673 (= res!1058683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(assert (= (and start!131792 res!1058682) b!1542670))

(assert (= (and b!1542670 res!1058684) b!1542673))

(assert (= (and b!1542673 res!1058683) b!1542672))

(assert (= (and b!1542668 condMapEmpty!58327) mapIsEmpty!58327))

(assert (= (and b!1542668 (not condMapEmpty!58327)) mapNonEmpty!58327))

(get-info :version)

(assert (= (and mapNonEmpty!58327 ((_ is ValueCellFull!17964) mapValue!58327)) b!1542671))

(assert (= (and b!1542668 ((_ is ValueCellFull!17964) mapDefault!58327)) b!1542669))

(assert (= start!131792 b!1542668))

(declare-fun m!1424239 () Bool)

(assert (=> start!131792 m!1424239))

(declare-fun m!1424241 () Bool)

(assert (=> start!131792 m!1424241))

(declare-fun m!1424243 () Bool)

(assert (=> start!131792 m!1424243))

(declare-fun m!1424245 () Bool)

(assert (=> mapNonEmpty!58327 m!1424245))

(declare-fun m!1424247 () Bool)

(assert (=> b!1542672 m!1424247))

(declare-fun m!1424249 () Bool)

(assert (=> b!1542673 m!1424249))

(check-sat (not mapNonEmpty!58327) (not b!1542673) (not start!131792) tp_is_empty!37749 (not b!1542672))
(check-sat)
