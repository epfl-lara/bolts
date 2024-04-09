; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72334 () Bool)

(assert start!72334)

(declare-fun res!569730 () Bool)

(declare-fun e!467537 () Bool)

(assert (=> start!72334 (=> (not res!569730) (not e!467537))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!46974 0))(
  ( (array!46975 (arr!22514 (Array (_ BitVec 32) (_ BitVec 64))) (size!22955 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46974)

(assert (=> start!72334 (= res!569730 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22955 _keys!868))))))

(assert (=> start!72334 e!467537))

(assert (=> start!72334 true))

(declare-fun array_inv!17914 (array!46974) Bool)

(assert (=> start!72334 (array_inv!17914 _keys!868)))

(declare-datatypes ((V!25523 0))(
  ( (V!25524 (val!7726 Int)) )
))
(declare-datatypes ((ValueCell!7239 0))(
  ( (ValueCellFull!7239 (v!10147 V!25523)) (EmptyCell!7239) )
))
(declare-datatypes ((array!46976 0))(
  ( (array!46977 (arr!22515 (Array (_ BitVec 32) ValueCell!7239)) (size!22956 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46976)

(declare-fun e!467541 () Bool)

(declare-fun array_inv!17915 (array!46976) Bool)

(assert (=> start!72334 (and (array_inv!17915 _values!688) e!467541)))

(declare-fun b!837584 () Bool)

(declare-fun res!569729 () Bool)

(assert (=> b!837584 (=> (not res!569729) (not e!467537))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837584 (= res!569729 (validMask!0 mask!1196))))

(declare-fun b!837585 () Bool)

(declare-fun res!569728 () Bool)

(assert (=> b!837585 (=> (not res!569728) (not e!467537))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46974 (_ BitVec 32)) Bool)

(assert (=> b!837585 (= res!569728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!837586 () Bool)

(declare-fun e!467538 () Bool)

(declare-fun tp_is_empty!15357 () Bool)

(assert (=> b!837586 (= e!467538 tp_is_empty!15357)))

(declare-fun mapIsEmpty!24635 () Bool)

(declare-fun mapRes!24635 () Bool)

(assert (=> mapIsEmpty!24635 mapRes!24635))

(declare-fun b!837587 () Bool)

(declare-fun res!569727 () Bool)

(assert (=> b!837587 (=> (not res!569727) (not e!467537))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!837587 (= res!569727 (and (= (size!22956 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22955 _keys!868) (size!22956 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!837588 () Bool)

(declare-fun e!467540 () Bool)

(assert (=> b!837588 (= e!467541 (and e!467540 mapRes!24635))))

(declare-fun condMapEmpty!24635 () Bool)

(declare-fun mapDefault!24635 () ValueCell!7239)

(assert (=> b!837588 (= condMapEmpty!24635 (= (arr!22515 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7239)) mapDefault!24635)))))

(declare-fun mapNonEmpty!24635 () Bool)

(declare-fun tp!47630 () Bool)

(assert (=> mapNonEmpty!24635 (= mapRes!24635 (and tp!47630 e!467538))))

(declare-fun mapValue!24635 () ValueCell!7239)

(declare-fun mapKey!24635 () (_ BitVec 32))

(declare-fun mapRest!24635 () (Array (_ BitVec 32) ValueCell!7239))

(assert (=> mapNonEmpty!24635 (= (arr!22515 _values!688) (store mapRest!24635 mapKey!24635 mapValue!24635))))

(declare-fun b!837589 () Bool)

(assert (=> b!837589 (= e!467540 tp_is_empty!15357)))

(declare-fun b!837590 () Bool)

(assert (=> b!837590 (= e!467537 false)))

(declare-fun lt!380547 () Bool)

(declare-datatypes ((List!16089 0))(
  ( (Nil!16086) (Cons!16085 (h!17216 (_ BitVec 64)) (t!22468 List!16089)) )
))
(declare-fun arrayNoDuplicates!0 (array!46974 (_ BitVec 32) List!16089) Bool)

(assert (=> b!837590 (= lt!380547 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16086))))

(assert (= (and start!72334 res!569730) b!837584))

(assert (= (and b!837584 res!569729) b!837587))

(assert (= (and b!837587 res!569727) b!837585))

(assert (= (and b!837585 res!569728) b!837590))

(assert (= (and b!837588 condMapEmpty!24635) mapIsEmpty!24635))

(assert (= (and b!837588 (not condMapEmpty!24635)) mapNonEmpty!24635))

(get-info :version)

(assert (= (and mapNonEmpty!24635 ((_ is ValueCellFull!7239) mapValue!24635)) b!837586))

(assert (= (and b!837588 ((_ is ValueCellFull!7239) mapDefault!24635)) b!837589))

(assert (= start!72334 b!837588))

(declare-fun m!782417 () Bool)

(assert (=> b!837590 m!782417))

(declare-fun m!782419 () Bool)

(assert (=> start!72334 m!782419))

(declare-fun m!782421 () Bool)

(assert (=> start!72334 m!782421))

(declare-fun m!782423 () Bool)

(assert (=> mapNonEmpty!24635 m!782423))

(declare-fun m!782425 () Bool)

(assert (=> b!837585 m!782425))

(declare-fun m!782427 () Bool)

(assert (=> b!837584 m!782427))

(check-sat (not b!837585) (not b!837590) (not start!72334) (not mapNonEmpty!24635) tp_is_empty!15357 (not b!837584))
(check-sat)
