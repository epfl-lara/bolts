; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133830 () Bool)

(assert start!133830)

(declare-fun b!1564384 () Bool)

(declare-fun res!1069582 () Bool)

(declare-fun e!871941 () Bool)

(assert (=> b!1564384 (=> (not res!1069582) (not e!871941))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!104399 0))(
  ( (array!104400 (arr!50386 (Array (_ BitVec 32) (_ BitVec 64))) (size!50937 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104399)

(assert (=> b!1564384 (= res!1069582 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50937 _keys!637)) (bvsge from!782 (size!50937 _keys!637))))))

(declare-fun b!1564385 () Bool)

(declare-fun res!1069581 () Bool)

(assert (=> b!1564385 (=> (not res!1069581) (not e!871941))))

(declare-datatypes ((List!36733 0))(
  ( (Nil!36730) (Cons!36729 (h!38176 (_ BitVec 64)) (t!51587 List!36733)) )
))
(declare-fun arrayNoDuplicates!0 (array!104399 (_ BitVec 32) List!36733) Bool)

(assert (=> b!1564385 (= res!1069581 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36730))))

(declare-fun b!1564386 () Bool)

(declare-fun res!1069583 () Bool)

(assert (=> b!1564386 (=> (not res!1069583) (not e!871941))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104399 (_ BitVec 32)) Bool)

(assert (=> b!1564386 (= res!1069583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1564387 () Bool)

(assert (=> b!1564387 (= e!871941 false)))

(declare-fun lt!671970 () Bool)

(declare-datatypes ((V!60035 0))(
  ( (V!60036 (val!19519 Int)) )
))
(declare-datatypes ((tuple2!25348 0))(
  ( (tuple2!25349 (_1!12684 (_ BitVec 64)) (_2!12684 V!60035)) )
))
(declare-datatypes ((List!36734 0))(
  ( (Nil!36731) (Cons!36730 (h!38177 tuple2!25348) (t!51588 List!36734)) )
))
(declare-datatypes ((ListLongMap!22795 0))(
  ( (ListLongMap!22796 (toList!11413 List!36734)) )
))
(declare-fun contains!10334 (ListLongMap!22795 (_ BitVec 64)) Bool)

(assert (=> b!1564387 (= lt!671970 (contains!10334 (ListLongMap!22796 Nil!36731) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1564388 () Bool)

(declare-fun e!871942 () Bool)

(declare-fun tp_is_empty!38871 () Bool)

(assert (=> b!1564388 (= e!871942 tp_is_empty!38871)))

(declare-fun b!1564389 () Bool)

(declare-fun res!1069580 () Bool)

(assert (=> b!1564389 (=> (not res!1069580) (not e!871941))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18405 0))(
  ( (ValueCellFull!18405 (v!22268 V!60035)) (EmptyCell!18405) )
))
(declare-datatypes ((array!104401 0))(
  ( (array!104402 (arr!50387 (Array (_ BitVec 32) ValueCell!18405)) (size!50938 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104401)

(assert (=> b!1564389 (= res!1069580 (and (= (size!50938 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50937 _keys!637) (size!50938 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun res!1069578 () Bool)

(assert (=> start!133830 (=> (not res!1069578) (not e!871941))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133830 (= res!1069578 (validMask!0 mask!947))))

(assert (=> start!133830 e!871941))

(assert (=> start!133830 true))

(declare-fun array_inv!39081 (array!104399) Bool)

(assert (=> start!133830 (array_inv!39081 _keys!637)))

(declare-fun e!871939 () Bool)

(declare-fun array_inv!39082 (array!104401) Bool)

(assert (=> start!133830 (and (array_inv!39082 _values!487) e!871939)))

(declare-fun mapIsEmpty!59685 () Bool)

(declare-fun mapRes!59685 () Bool)

(assert (=> mapIsEmpty!59685 mapRes!59685))

(declare-fun b!1564390 () Bool)

(declare-fun res!1069579 () Bool)

(assert (=> b!1564390 (=> (not res!1069579) (not e!871941))))

(assert (=> b!1564390 (= res!1069579 (not (contains!10334 (ListLongMap!22796 Nil!36731) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1564391 () Bool)

(declare-fun e!871943 () Bool)

(assert (=> b!1564391 (= e!871939 (and e!871943 mapRes!59685))))

(declare-fun condMapEmpty!59685 () Bool)

(declare-fun mapDefault!59685 () ValueCell!18405)

(assert (=> b!1564391 (= condMapEmpty!59685 (= (arr!50387 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18405)) mapDefault!59685)))))

(declare-fun b!1564392 () Bool)

(assert (=> b!1564392 (= e!871943 tp_is_empty!38871)))

(declare-fun mapNonEmpty!59685 () Bool)

(declare-fun tp!113611 () Bool)

(assert (=> mapNonEmpty!59685 (= mapRes!59685 (and tp!113611 e!871942))))

(declare-fun mapValue!59685 () ValueCell!18405)

(declare-fun mapRest!59685 () (Array (_ BitVec 32) ValueCell!18405))

(declare-fun mapKey!59685 () (_ BitVec 32))

(assert (=> mapNonEmpty!59685 (= (arr!50387 _values!487) (store mapRest!59685 mapKey!59685 mapValue!59685))))

(assert (= (and start!133830 res!1069578) b!1564389))

(assert (= (and b!1564389 res!1069580) b!1564386))

(assert (= (and b!1564386 res!1069583) b!1564385))

(assert (= (and b!1564385 res!1069581) b!1564384))

(assert (= (and b!1564384 res!1069582) b!1564390))

(assert (= (and b!1564390 res!1069579) b!1564387))

(assert (= (and b!1564391 condMapEmpty!59685) mapIsEmpty!59685))

(assert (= (and b!1564391 (not condMapEmpty!59685)) mapNonEmpty!59685))

(get-info :version)

(assert (= (and mapNonEmpty!59685 ((_ is ValueCellFull!18405) mapValue!59685)) b!1564388))

(assert (= (and b!1564391 ((_ is ValueCellFull!18405) mapDefault!59685)) b!1564392))

(assert (= start!133830 b!1564391))

(declare-fun m!1439597 () Bool)

(assert (=> b!1564387 m!1439597))

(declare-fun m!1439599 () Bool)

(assert (=> b!1564385 m!1439599))

(declare-fun m!1439601 () Bool)

(assert (=> start!133830 m!1439601))

(declare-fun m!1439603 () Bool)

(assert (=> start!133830 m!1439603))

(declare-fun m!1439605 () Bool)

(assert (=> start!133830 m!1439605))

(declare-fun m!1439607 () Bool)

(assert (=> mapNonEmpty!59685 m!1439607))

(declare-fun m!1439609 () Bool)

(assert (=> b!1564390 m!1439609))

(declare-fun m!1439611 () Bool)

(assert (=> b!1564386 m!1439611))

(check-sat (not b!1564386) tp_is_empty!38871 (not b!1564390) (not b!1564387) (not mapNonEmpty!59685) (not b!1564385) (not start!133830))
(check-sat)
