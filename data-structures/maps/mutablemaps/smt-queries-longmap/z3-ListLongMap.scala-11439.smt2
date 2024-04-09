; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133466 () Bool)

(assert start!133466)

(declare-fun res!1066722 () Bool)

(declare-fun e!869161 () Bool)

(assert (=> start!133466 (=> (not res!1066722) (not e!869161))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133466 (= res!1066722 (validMask!0 mask!947))))

(assert (=> start!133466 e!869161))

(assert (=> start!133466 true))

(declare-datatypes ((array!103713 0))(
  ( (array!103714 (arr!50044 (Array (_ BitVec 32) (_ BitVec 64))) (size!50595 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103713)

(declare-fun array_inv!38823 (array!103713) Bool)

(assert (=> start!133466 (array_inv!38823 _keys!637)))

(declare-datatypes ((V!59563 0))(
  ( (V!59564 (val!19342 Int)) )
))
(declare-datatypes ((ValueCell!18228 0))(
  ( (ValueCellFull!18228 (v!22091 V!59563)) (EmptyCell!18228) )
))
(declare-datatypes ((array!103715 0))(
  ( (array!103716 (arr!50045 (Array (_ BitVec 32) ValueCell!18228)) (size!50596 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103715)

(declare-fun e!869160 () Bool)

(declare-fun array_inv!38824 (array!103715) Bool)

(assert (=> start!133466 (and (array_inv!38824 _values!487) e!869160)))

(declare-fun b!1559798 () Bool)

(declare-fun res!1066720 () Bool)

(assert (=> b!1559798 (=> (not res!1066720) (not e!869161))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1559798 (= res!1066720 (and (= (size!50596 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50595 _keys!637) (size!50596 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!59151 () Bool)

(declare-fun mapRes!59151 () Bool)

(declare-fun tp!112807 () Bool)

(declare-fun e!869158 () Bool)

(assert (=> mapNonEmpty!59151 (= mapRes!59151 (and tp!112807 e!869158))))

(declare-fun mapKey!59151 () (_ BitVec 32))

(declare-fun mapRest!59151 () (Array (_ BitVec 32) ValueCell!18228))

(declare-fun mapValue!59151 () ValueCell!18228)

(assert (=> mapNonEmpty!59151 (= (arr!50045 _values!487) (store mapRest!59151 mapKey!59151 mapValue!59151))))

(declare-fun mapIsEmpty!59151 () Bool)

(assert (=> mapIsEmpty!59151 mapRes!59151))

(declare-fun b!1559799 () Bool)

(declare-fun res!1066721 () Bool)

(assert (=> b!1559799 (=> (not res!1066721) (not e!869161))))

(declare-datatypes ((List!36515 0))(
  ( (Nil!36512) (Cons!36511 (h!37958 (_ BitVec 64)) (t!51255 List!36515)) )
))
(declare-fun arrayNoDuplicates!0 (array!103713 (_ BitVec 32) List!36515) Bool)

(assert (=> b!1559799 (= res!1066721 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36512))))

(declare-fun b!1559800 () Bool)

(declare-fun res!1066719 () Bool)

(assert (=> b!1559800 (=> (not res!1066719) (not e!869161))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1559800 (= res!1066719 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50595 _keys!637)) (bvsge from!782 (size!50595 _keys!637))))))

(declare-fun b!1559801 () Bool)

(declare-fun res!1066724 () Bool)

(assert (=> b!1559801 (=> (not res!1066724) (not e!869161))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103713 (_ BitVec 32)) Bool)

(assert (=> b!1559801 (= res!1066724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1559802 () Bool)

(declare-fun tp_is_empty!38517 () Bool)

(assert (=> b!1559802 (= e!869158 tp_is_empty!38517)))

(declare-fun b!1559803 () Bool)

(assert (=> b!1559803 (= e!869161 false)))

(declare-fun lt!670854 () Bool)

(declare-datatypes ((tuple2!25158 0))(
  ( (tuple2!25159 (_1!12589 (_ BitVec 64)) (_2!12589 V!59563)) )
))
(declare-datatypes ((List!36516 0))(
  ( (Nil!36513) (Cons!36512 (h!37959 tuple2!25158) (t!51256 List!36516)) )
))
(declare-datatypes ((ListLongMap!22605 0))(
  ( (ListLongMap!22606 (toList!11318 List!36516)) )
))
(declare-fun contains!10238 (ListLongMap!22605 (_ BitVec 64)) Bool)

(assert (=> b!1559803 (= lt!670854 (contains!10238 (ListLongMap!22606 Nil!36513) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1559804 () Bool)

(declare-fun res!1066723 () Bool)

(assert (=> b!1559804 (=> (not res!1066723) (not e!869161))))

(assert (=> b!1559804 (= res!1066723 (not (contains!10238 (ListLongMap!22606 Nil!36513) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1559805 () Bool)

(declare-fun e!869162 () Bool)

(assert (=> b!1559805 (= e!869162 tp_is_empty!38517)))

(declare-fun b!1559806 () Bool)

(assert (=> b!1559806 (= e!869160 (and e!869162 mapRes!59151))))

(declare-fun condMapEmpty!59151 () Bool)

(declare-fun mapDefault!59151 () ValueCell!18228)

(assert (=> b!1559806 (= condMapEmpty!59151 (= (arr!50045 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18228)) mapDefault!59151)))))

(assert (= (and start!133466 res!1066722) b!1559798))

(assert (= (and b!1559798 res!1066720) b!1559801))

(assert (= (and b!1559801 res!1066724) b!1559799))

(assert (= (and b!1559799 res!1066721) b!1559800))

(assert (= (and b!1559800 res!1066719) b!1559804))

(assert (= (and b!1559804 res!1066723) b!1559803))

(assert (= (and b!1559806 condMapEmpty!59151) mapIsEmpty!59151))

(assert (= (and b!1559806 (not condMapEmpty!59151)) mapNonEmpty!59151))

(get-info :version)

(assert (= (and mapNonEmpty!59151 ((_ is ValueCellFull!18228) mapValue!59151)) b!1559802))

(assert (= (and b!1559806 ((_ is ValueCellFull!18228) mapDefault!59151)) b!1559805))

(assert (= start!133466 b!1559806))

(declare-fun m!1435895 () Bool)

(assert (=> mapNonEmpty!59151 m!1435895))

(declare-fun m!1435897 () Bool)

(assert (=> start!133466 m!1435897))

(declare-fun m!1435899 () Bool)

(assert (=> start!133466 m!1435899))

(declare-fun m!1435901 () Bool)

(assert (=> start!133466 m!1435901))

(declare-fun m!1435903 () Bool)

(assert (=> b!1559803 m!1435903))

(declare-fun m!1435905 () Bool)

(assert (=> b!1559801 m!1435905))

(declare-fun m!1435907 () Bool)

(assert (=> b!1559804 m!1435907))

(declare-fun m!1435909 () Bool)

(assert (=> b!1559799 m!1435909))

(check-sat (not start!133466) (not mapNonEmpty!59151) (not b!1559804) (not b!1559803) (not b!1559799) tp_is_empty!38517 (not b!1559801))
(check-sat)
