; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78666 () Bool)

(assert start!78666)

(declare-fun b_free!16851 () Bool)

(declare-fun b_next!16851 () Bool)

(assert (=> start!78666 (= b_free!16851 (not b_next!16851))))

(declare-fun tp!58994 () Bool)

(declare-fun b_and!27491 () Bool)

(assert (=> start!78666 (= tp!58994 b_and!27491)))

(declare-fun res!618044 () Bool)

(declare-fun e!514594 () Bool)

(assert (=> start!78666 (=> (not res!618044) (not e!514594))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78666 (= res!618044 (validMask!0 mask!1881))))

(assert (=> start!78666 e!514594))

(assert (=> start!78666 true))

(declare-datatypes ((V!30777 0))(
  ( (V!30778 (val!9730 Int)) )
))
(declare-datatypes ((ValueCell!9198 0))(
  ( (ValueCellFull!9198 (v!12248 V!30777)) (EmptyCell!9198) )
))
(declare-datatypes ((array!54720 0))(
  ( (array!54721 (arr!26301 (Array (_ BitVec 32) ValueCell!9198)) (size!26761 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54720)

(declare-fun e!514595 () Bool)

(declare-fun array_inv!20506 (array!54720) Bool)

(assert (=> start!78666 (and (array_inv!20506 _values!1231) e!514595)))

(assert (=> start!78666 tp!58994))

(declare-datatypes ((array!54722 0))(
  ( (array!54723 (arr!26302 (Array (_ BitVec 32) (_ BitVec 64))) (size!26762 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54722)

(declare-fun array_inv!20507 (array!54722) Bool)

(assert (=> start!78666 (array_inv!20507 _keys!1487)))

(declare-fun tp_is_empty!19359 () Bool)

(assert (=> start!78666 tp_is_empty!19359))

(declare-fun b!916605 () Bool)

(declare-fun e!514591 () Bool)

(assert (=> b!916605 (= e!514591 false)))

(declare-fun lt!411807 () V!30777)

(declare-datatypes ((tuple2!12700 0))(
  ( (tuple2!12701 (_1!6360 (_ BitVec 64)) (_2!6360 V!30777)) )
))
(declare-datatypes ((List!18559 0))(
  ( (Nil!18556) (Cons!18555 (h!19701 tuple2!12700) (t!26180 List!18559)) )
))
(declare-datatypes ((ListLongMap!11411 0))(
  ( (ListLongMap!11412 (toList!5721 List!18559)) )
))
(declare-fun lt!411806 () ListLongMap!11411)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!549 (ListLongMap!11411 (_ BitVec 64)) V!30777)

(assert (=> b!916605 (= lt!411807 (apply!549 lt!411806 k0!1099))))

(declare-fun b!916606 () Bool)

(declare-fun res!618039 () Bool)

(assert (=> b!916606 (=> (not res!618039) (not e!514594))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!916606 (= res!618039 (and (= (size!26761 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26762 _keys!1487) (size!26761 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!30795 () Bool)

(declare-fun mapRes!30795 () Bool)

(assert (=> mapIsEmpty!30795 mapRes!30795))

(declare-fun b!916607 () Bool)

(declare-fun e!514596 () Bool)

(assert (=> b!916607 (= e!514596 tp_is_empty!19359)))

(declare-fun mapNonEmpty!30795 () Bool)

(declare-fun tp!58995 () Bool)

(declare-fun e!514593 () Bool)

(assert (=> mapNonEmpty!30795 (= mapRes!30795 (and tp!58995 e!514593))))

(declare-fun mapKey!30795 () (_ BitVec 32))

(declare-fun mapValue!30795 () ValueCell!9198)

(declare-fun mapRest!30795 () (Array (_ BitVec 32) ValueCell!9198))

(assert (=> mapNonEmpty!30795 (= (arr!26301 _values!1231) (store mapRest!30795 mapKey!30795 mapValue!30795))))

(declare-fun b!916608 () Bool)

(declare-fun res!618042 () Bool)

(assert (=> b!916608 (=> (not res!618042) (not e!514594))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54722 (_ BitVec 32)) Bool)

(assert (=> b!916608 (= res!618042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!916609 () Bool)

(declare-fun res!618040 () Bool)

(assert (=> b!916609 (=> (not res!618040) (not e!514594))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!916609 (= res!618040 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26762 _keys!1487))))))

(declare-fun b!916610 () Bool)

(declare-fun res!618043 () Bool)

(assert (=> b!916610 (=> (not res!618043) (not e!514594))))

(declare-datatypes ((List!18560 0))(
  ( (Nil!18557) (Cons!18556 (h!19702 (_ BitVec 64)) (t!26181 List!18560)) )
))
(declare-fun arrayNoDuplicates!0 (array!54722 (_ BitVec 32) List!18560) Bool)

(assert (=> b!916610 (= res!618043 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18557))))

(declare-fun b!916611 () Bool)

(assert (=> b!916611 (= e!514593 tp_is_empty!19359)))

(declare-fun b!916612 () Bool)

(assert (=> b!916612 (= e!514594 e!514591)))

(declare-fun res!618041 () Bool)

(assert (=> b!916612 (=> (not res!618041) (not e!514591))))

(declare-fun contains!4741 (ListLongMap!11411 (_ BitVec 64)) Bool)

(assert (=> b!916612 (= res!618041 (contains!4741 lt!411806 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30777)

(declare-fun minValue!1173 () V!30777)

(declare-fun getCurrentListMap!2950 (array!54722 array!54720 (_ BitVec 32) (_ BitVec 32) V!30777 V!30777 (_ BitVec 32) Int) ListLongMap!11411)

(assert (=> b!916612 (= lt!411806 (getCurrentListMap!2950 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!916613 () Bool)

(assert (=> b!916613 (= e!514595 (and e!514596 mapRes!30795))))

(declare-fun condMapEmpty!30795 () Bool)

(declare-fun mapDefault!30795 () ValueCell!9198)

(assert (=> b!916613 (= condMapEmpty!30795 (= (arr!26301 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9198)) mapDefault!30795)))))

(assert (= (and start!78666 res!618044) b!916606))

(assert (= (and b!916606 res!618039) b!916608))

(assert (= (and b!916608 res!618042) b!916610))

(assert (= (and b!916610 res!618043) b!916609))

(assert (= (and b!916609 res!618040) b!916612))

(assert (= (and b!916612 res!618041) b!916605))

(assert (= (and b!916613 condMapEmpty!30795) mapIsEmpty!30795))

(assert (= (and b!916613 (not condMapEmpty!30795)) mapNonEmpty!30795))

(get-info :version)

(assert (= (and mapNonEmpty!30795 ((_ is ValueCellFull!9198) mapValue!30795)) b!916611))

(assert (= (and b!916613 ((_ is ValueCellFull!9198) mapDefault!30795)) b!916607))

(assert (= start!78666 b!916613))

(declare-fun m!850633 () Bool)

(assert (=> mapNonEmpty!30795 m!850633))

(declare-fun m!850635 () Bool)

(assert (=> b!916605 m!850635))

(declare-fun m!850637 () Bool)

(assert (=> start!78666 m!850637))

(declare-fun m!850639 () Bool)

(assert (=> start!78666 m!850639))

(declare-fun m!850641 () Bool)

(assert (=> start!78666 m!850641))

(declare-fun m!850643 () Bool)

(assert (=> b!916608 m!850643))

(declare-fun m!850645 () Bool)

(assert (=> b!916610 m!850645))

(declare-fun m!850647 () Bool)

(assert (=> b!916612 m!850647))

(declare-fun m!850649 () Bool)

(assert (=> b!916612 m!850649))

(check-sat tp_is_empty!19359 (not b!916610) b_and!27491 (not b_next!16851) (not b!916612) (not start!78666) (not mapNonEmpty!30795) (not b!916605) (not b!916608))
(check-sat b_and!27491 (not b_next!16851))
