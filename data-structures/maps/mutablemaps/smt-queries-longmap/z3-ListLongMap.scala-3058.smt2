; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43200 () Bool)

(assert start!43200)

(declare-fun mapNonEmpty!22066 () Bool)

(declare-fun mapRes!22066 () Bool)

(declare-fun tp!42541 () Bool)

(declare-fun e!281397 () Bool)

(assert (=> mapNonEmpty!22066 (= mapRes!22066 (and tp!42541 e!281397))))

(declare-fun mapKey!22066 () (_ BitVec 32))

(declare-datatypes ((V!19179 0))(
  ( (V!19180 (val!6838 Int)) )
))
(declare-datatypes ((ValueCell!6429 0))(
  ( (ValueCellFull!6429 (v!9123 V!19179)) (EmptyCell!6429) )
))
(declare-fun mapValue!22066 () ValueCell!6429)

(declare-fun mapRest!22066 () (Array (_ BitVec 32) ValueCell!6429))

(declare-datatypes ((array!30807 0))(
  ( (array!30808 (arr!14808 (Array (_ BitVec 32) ValueCell!6429)) (size!15166 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30807)

(assert (=> mapNonEmpty!22066 (= (arr!14808 _values!1516) (store mapRest!22066 mapKey!22066 mapValue!22066))))

(declare-fun mapIsEmpty!22066 () Bool)

(assert (=> mapIsEmpty!22066 mapRes!22066))

(declare-fun b!478519 () Bool)

(declare-fun res!285561 () Bool)

(declare-fun e!281400 () Bool)

(assert (=> b!478519 (=> (not res!285561) (not e!281400))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!30809 0))(
  ( (array!30810 (arr!14809 (Array (_ BitVec 32) (_ BitVec 64))) (size!15167 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30809)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!478519 (= res!285561 (and (= (size!15166 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15167 _keys!1874) (size!15166 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun res!285559 () Bool)

(assert (=> start!43200 (=> (not res!285559) (not e!281400))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43200 (= res!285559 (validMask!0 mask!2352))))

(assert (=> start!43200 e!281400))

(assert (=> start!43200 true))

(declare-fun e!281399 () Bool)

(declare-fun array_inv!10672 (array!30807) Bool)

(assert (=> start!43200 (and (array_inv!10672 _values!1516) e!281399)))

(declare-fun array_inv!10673 (array!30809) Bool)

(assert (=> start!43200 (array_inv!10673 _keys!1874)))

(declare-fun b!478520 () Bool)

(assert (=> b!478520 (= e!281400 false)))

(declare-fun lt!217718 () Bool)

(declare-datatypes ((List!9097 0))(
  ( (Nil!9094) (Cons!9093 (h!9949 (_ BitVec 64)) (t!15311 List!9097)) )
))
(declare-fun arrayNoDuplicates!0 (array!30809 (_ BitVec 32) List!9097) Bool)

(assert (=> b!478520 (= lt!217718 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9094))))

(declare-fun b!478521 () Bool)

(declare-fun e!281398 () Bool)

(declare-fun tp_is_empty!13581 () Bool)

(assert (=> b!478521 (= e!281398 tp_is_empty!13581)))

(declare-fun b!478522 () Bool)

(declare-fun res!285560 () Bool)

(assert (=> b!478522 (=> (not res!285560) (not e!281400))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30809 (_ BitVec 32)) Bool)

(assert (=> b!478522 (= res!285560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478523 () Bool)

(assert (=> b!478523 (= e!281399 (and e!281398 mapRes!22066))))

(declare-fun condMapEmpty!22066 () Bool)

(declare-fun mapDefault!22066 () ValueCell!6429)

(assert (=> b!478523 (= condMapEmpty!22066 (= (arr!14808 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6429)) mapDefault!22066)))))

(declare-fun b!478524 () Bool)

(assert (=> b!478524 (= e!281397 tp_is_empty!13581)))

(assert (= (and start!43200 res!285559) b!478519))

(assert (= (and b!478519 res!285561) b!478522))

(assert (= (and b!478522 res!285560) b!478520))

(assert (= (and b!478523 condMapEmpty!22066) mapIsEmpty!22066))

(assert (= (and b!478523 (not condMapEmpty!22066)) mapNonEmpty!22066))

(get-info :version)

(assert (= (and mapNonEmpty!22066 ((_ is ValueCellFull!6429) mapValue!22066)) b!478524))

(assert (= (and b!478523 ((_ is ValueCellFull!6429) mapDefault!22066)) b!478521))

(assert (= start!43200 b!478523))

(declare-fun m!460729 () Bool)

(assert (=> mapNonEmpty!22066 m!460729))

(declare-fun m!460731 () Bool)

(assert (=> start!43200 m!460731))

(declare-fun m!460733 () Bool)

(assert (=> start!43200 m!460733))

(declare-fun m!460735 () Bool)

(assert (=> start!43200 m!460735))

(declare-fun m!460737 () Bool)

(assert (=> b!478520 m!460737))

(declare-fun m!460739 () Bool)

(assert (=> b!478522 m!460739))

(check-sat tp_is_empty!13581 (not b!478522) (not b!478520) (not start!43200) (not mapNonEmpty!22066))
(check-sat)
