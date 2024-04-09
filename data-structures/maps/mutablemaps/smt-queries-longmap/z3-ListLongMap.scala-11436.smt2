; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133448 () Bool)

(assert start!133448)

(declare-fun b!1559555 () Bool)

(declare-fun res!1066562 () Bool)

(declare-fun e!869027 () Bool)

(assert (=> b!1559555 (=> (not res!1066562) (not e!869027))))

(declare-datatypes ((array!103677 0))(
  ( (array!103678 (arr!50026 (Array (_ BitVec 32) (_ BitVec 64))) (size!50577 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103677)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103677 (_ BitVec 32)) Bool)

(assert (=> b!1559555 (= res!1066562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1559556 () Bool)

(assert (=> b!1559556 (= e!869027 false)))

(declare-fun lt!670827 () Bool)

(declare-datatypes ((V!59539 0))(
  ( (V!59540 (val!19333 Int)) )
))
(declare-datatypes ((tuple2!25144 0))(
  ( (tuple2!25145 (_1!12582 (_ BitVec 64)) (_2!12582 V!59539)) )
))
(declare-datatypes ((List!36501 0))(
  ( (Nil!36498) (Cons!36497 (h!37944 tuple2!25144) (t!51241 List!36501)) )
))
(declare-datatypes ((ListLongMap!22591 0))(
  ( (ListLongMap!22592 (toList!11311 List!36501)) )
))
(declare-fun contains!10231 (ListLongMap!22591 (_ BitVec 64)) Bool)

(assert (=> b!1559556 (= lt!670827 (contains!10231 (ListLongMap!22592 Nil!36498) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1559557 () Bool)

(declare-fun res!1066559 () Bool)

(assert (=> b!1559557 (=> (not res!1066559) (not e!869027))))

(assert (=> b!1559557 (= res!1066559 (not (contains!10231 (ListLongMap!22592 Nil!36498) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1559558 () Bool)

(declare-fun e!869026 () Bool)

(declare-fun tp_is_empty!38499 () Bool)

(assert (=> b!1559558 (= e!869026 tp_is_empty!38499)))

(declare-fun res!1066558 () Bool)

(assert (=> start!133448 (=> (not res!1066558) (not e!869027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133448 (= res!1066558 (validMask!0 mask!947))))

(assert (=> start!133448 e!869027))

(assert (=> start!133448 true))

(declare-fun array_inv!38811 (array!103677) Bool)

(assert (=> start!133448 (array_inv!38811 _keys!637)))

(declare-datatypes ((ValueCell!18219 0))(
  ( (ValueCellFull!18219 (v!22082 V!59539)) (EmptyCell!18219) )
))
(declare-datatypes ((array!103679 0))(
  ( (array!103680 (arr!50027 (Array (_ BitVec 32) ValueCell!18219)) (size!50578 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103679)

(declare-fun e!869023 () Bool)

(declare-fun array_inv!38812 (array!103679) Bool)

(assert (=> start!133448 (and (array_inv!38812 _values!487) e!869023)))

(declare-fun b!1559559 () Bool)

(declare-fun res!1066561 () Bool)

(assert (=> b!1559559 (=> (not res!1066561) (not e!869027))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1559559 (= res!1066561 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50577 _keys!637)) (bvsge from!782 (size!50577 _keys!637))))))

(declare-fun b!1559560 () Bool)

(declare-fun res!1066560 () Bool)

(assert (=> b!1559560 (=> (not res!1066560) (not e!869027))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1559560 (= res!1066560 (and (= (size!50578 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50577 _keys!637) (size!50578 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1559561 () Bool)

(declare-fun mapRes!59124 () Bool)

(assert (=> b!1559561 (= e!869023 (and e!869026 mapRes!59124))))

(declare-fun condMapEmpty!59124 () Bool)

(declare-fun mapDefault!59124 () ValueCell!18219)

(assert (=> b!1559561 (= condMapEmpty!59124 (= (arr!50027 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18219)) mapDefault!59124)))))

(declare-fun b!1559562 () Bool)

(declare-fun res!1066557 () Bool)

(assert (=> b!1559562 (=> (not res!1066557) (not e!869027))))

(declare-datatypes ((List!36502 0))(
  ( (Nil!36499) (Cons!36498 (h!37945 (_ BitVec 64)) (t!51242 List!36502)) )
))
(declare-fun arrayNoDuplicates!0 (array!103677 (_ BitVec 32) List!36502) Bool)

(assert (=> b!1559562 (= res!1066557 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36499))))

(declare-fun b!1559563 () Bool)

(declare-fun e!869024 () Bool)

(assert (=> b!1559563 (= e!869024 tp_is_empty!38499)))

(declare-fun mapNonEmpty!59124 () Bool)

(declare-fun tp!112780 () Bool)

(assert (=> mapNonEmpty!59124 (= mapRes!59124 (and tp!112780 e!869024))))

(declare-fun mapKey!59124 () (_ BitVec 32))

(declare-fun mapRest!59124 () (Array (_ BitVec 32) ValueCell!18219))

(declare-fun mapValue!59124 () ValueCell!18219)

(assert (=> mapNonEmpty!59124 (= (arr!50027 _values!487) (store mapRest!59124 mapKey!59124 mapValue!59124))))

(declare-fun mapIsEmpty!59124 () Bool)

(assert (=> mapIsEmpty!59124 mapRes!59124))

(assert (= (and start!133448 res!1066558) b!1559560))

(assert (= (and b!1559560 res!1066560) b!1559555))

(assert (= (and b!1559555 res!1066562) b!1559562))

(assert (= (and b!1559562 res!1066557) b!1559559))

(assert (= (and b!1559559 res!1066561) b!1559557))

(assert (= (and b!1559557 res!1066559) b!1559556))

(assert (= (and b!1559561 condMapEmpty!59124) mapIsEmpty!59124))

(assert (= (and b!1559561 (not condMapEmpty!59124)) mapNonEmpty!59124))

(get-info :version)

(assert (= (and mapNonEmpty!59124 ((_ is ValueCellFull!18219) mapValue!59124)) b!1559563))

(assert (= (and b!1559561 ((_ is ValueCellFull!18219) mapDefault!59124)) b!1559558))

(assert (= start!133448 b!1559561))

(declare-fun m!1435751 () Bool)

(assert (=> start!133448 m!1435751))

(declare-fun m!1435753 () Bool)

(assert (=> start!133448 m!1435753))

(declare-fun m!1435755 () Bool)

(assert (=> start!133448 m!1435755))

(declare-fun m!1435757 () Bool)

(assert (=> mapNonEmpty!59124 m!1435757))

(declare-fun m!1435759 () Bool)

(assert (=> b!1559556 m!1435759))

(declare-fun m!1435761 () Bool)

(assert (=> b!1559555 m!1435761))

(declare-fun m!1435763 () Bool)

(assert (=> b!1559557 m!1435763))

(declare-fun m!1435765 () Bool)

(assert (=> b!1559562 m!1435765))

(check-sat tp_is_empty!38499 (not b!1559557) (not b!1559555) (not start!133448) (not b!1559562) (not b!1559556) (not mapNonEmpty!59124))
(check-sat)
