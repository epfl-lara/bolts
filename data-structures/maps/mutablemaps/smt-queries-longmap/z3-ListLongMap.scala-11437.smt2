; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133454 () Bool)

(assert start!133454)

(declare-fun b!1559637 () Bool)

(declare-fun e!869068 () Bool)

(declare-fun tp_is_empty!38505 () Bool)

(assert (=> b!1559637 (= e!869068 tp_is_empty!38505)))

(declare-fun mapNonEmpty!59133 () Bool)

(declare-fun mapRes!59133 () Bool)

(declare-fun tp!112789 () Bool)

(assert (=> mapNonEmpty!59133 (= mapRes!59133 (and tp!112789 e!869068))))

(declare-datatypes ((V!59547 0))(
  ( (V!59548 (val!19336 Int)) )
))
(declare-datatypes ((ValueCell!18222 0))(
  ( (ValueCellFull!18222 (v!22085 V!59547)) (EmptyCell!18222) )
))
(declare-fun mapValue!59133 () ValueCell!18222)

(declare-datatypes ((array!103689 0))(
  ( (array!103690 (arr!50032 (Array (_ BitVec 32) ValueCell!18222)) (size!50583 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103689)

(declare-fun mapKey!59133 () (_ BitVec 32))

(declare-fun mapRest!59133 () (Array (_ BitVec 32) ValueCell!18222))

(assert (=> mapNonEmpty!59133 (= (arr!50032 _values!487) (store mapRest!59133 mapKey!59133 mapValue!59133))))

(declare-fun b!1559638 () Bool)

(declare-fun res!1066614 () Bool)

(declare-fun e!869072 () Bool)

(assert (=> b!1559638 (=> (not res!1066614) (not e!869072))))

(declare-datatypes ((array!103691 0))(
  ( (array!103692 (arr!50033 (Array (_ BitVec 32) (_ BitVec 64))) (size!50584 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103691)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103691 (_ BitVec 32)) Bool)

(assert (=> b!1559638 (= res!1066614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1559639 () Bool)

(declare-fun e!869071 () Bool)

(declare-fun e!869070 () Bool)

(assert (=> b!1559639 (= e!869071 (and e!869070 mapRes!59133))))

(declare-fun condMapEmpty!59133 () Bool)

(declare-fun mapDefault!59133 () ValueCell!18222)

(assert (=> b!1559639 (= condMapEmpty!59133 (= (arr!50032 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18222)) mapDefault!59133)))))

(declare-fun b!1559640 () Bool)

(declare-fun res!1066612 () Bool)

(assert (=> b!1559640 (=> (not res!1066612) (not e!869072))))

(declare-datatypes ((tuple2!25148 0))(
  ( (tuple2!25149 (_1!12584 (_ BitVec 64)) (_2!12584 V!59547)) )
))
(declare-datatypes ((List!36505 0))(
  ( (Nil!36502) (Cons!36501 (h!37948 tuple2!25148) (t!51245 List!36505)) )
))
(declare-datatypes ((ListLongMap!22595 0))(
  ( (ListLongMap!22596 (toList!11313 List!36505)) )
))
(declare-fun contains!10233 (ListLongMap!22595 (_ BitVec 64)) Bool)

(assert (=> b!1559640 (= res!1066612 (not (contains!10233 (ListLongMap!22596 Nil!36502) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1559641 () Bool)

(declare-fun res!1066616 () Bool)

(assert (=> b!1559641 (=> (not res!1066616) (not e!869072))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1559641 (= res!1066616 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50584 _keys!637)) (bvsge from!782 (size!50584 _keys!637))))))

(declare-fun b!1559642 () Bool)

(assert (=> b!1559642 (= e!869072 false)))

(declare-fun lt!670836 () Bool)

(assert (=> b!1559642 (= lt!670836 (contains!10233 (ListLongMap!22596 Nil!36502) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1559643 () Bool)

(declare-fun res!1066613 () Bool)

(assert (=> b!1559643 (=> (not res!1066613) (not e!869072))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1559643 (= res!1066613 (and (= (size!50583 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50584 _keys!637) (size!50583 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1559636 () Bool)

(declare-fun res!1066615 () Bool)

(assert (=> b!1559636 (=> (not res!1066615) (not e!869072))))

(declare-datatypes ((List!36506 0))(
  ( (Nil!36503) (Cons!36502 (h!37949 (_ BitVec 64)) (t!51246 List!36506)) )
))
(declare-fun arrayNoDuplicates!0 (array!103691 (_ BitVec 32) List!36506) Bool)

(assert (=> b!1559636 (= res!1066615 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36503))))

(declare-fun res!1066611 () Bool)

(assert (=> start!133454 (=> (not res!1066611) (not e!869072))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133454 (= res!1066611 (validMask!0 mask!947))))

(assert (=> start!133454 e!869072))

(assert (=> start!133454 true))

(declare-fun array_inv!38815 (array!103691) Bool)

(assert (=> start!133454 (array_inv!38815 _keys!637)))

(declare-fun array_inv!38816 (array!103689) Bool)

(assert (=> start!133454 (and (array_inv!38816 _values!487) e!869071)))

(declare-fun mapIsEmpty!59133 () Bool)

(assert (=> mapIsEmpty!59133 mapRes!59133))

(declare-fun b!1559644 () Bool)

(assert (=> b!1559644 (= e!869070 tp_is_empty!38505)))

(assert (= (and start!133454 res!1066611) b!1559643))

(assert (= (and b!1559643 res!1066613) b!1559638))

(assert (= (and b!1559638 res!1066614) b!1559636))

(assert (= (and b!1559636 res!1066615) b!1559641))

(assert (= (and b!1559641 res!1066616) b!1559640))

(assert (= (and b!1559640 res!1066612) b!1559642))

(assert (= (and b!1559639 condMapEmpty!59133) mapIsEmpty!59133))

(assert (= (and b!1559639 (not condMapEmpty!59133)) mapNonEmpty!59133))

(get-info :version)

(assert (= (and mapNonEmpty!59133 ((_ is ValueCellFull!18222) mapValue!59133)) b!1559637))

(assert (= (and b!1559639 ((_ is ValueCellFull!18222) mapDefault!59133)) b!1559644))

(assert (= start!133454 b!1559639))

(declare-fun m!1435799 () Bool)

(assert (=> b!1559638 m!1435799))

(declare-fun m!1435801 () Bool)

(assert (=> b!1559640 m!1435801))

(declare-fun m!1435803 () Bool)

(assert (=> mapNonEmpty!59133 m!1435803))

(declare-fun m!1435805 () Bool)

(assert (=> start!133454 m!1435805))

(declare-fun m!1435807 () Bool)

(assert (=> start!133454 m!1435807))

(declare-fun m!1435809 () Bool)

(assert (=> start!133454 m!1435809))

(declare-fun m!1435811 () Bool)

(assert (=> b!1559642 m!1435811))

(declare-fun m!1435813 () Bool)

(assert (=> b!1559636 m!1435813))

(check-sat (not start!133454) (not b!1559640) tp_is_empty!38505 (not b!1559638) (not b!1559636) (not b!1559642) (not mapNonEmpty!59133))
(check-sat)
