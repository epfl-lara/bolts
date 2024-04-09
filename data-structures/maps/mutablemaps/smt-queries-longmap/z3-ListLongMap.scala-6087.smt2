; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78660 () Bool)

(assert start!78660)

(declare-fun b_free!16845 () Bool)

(declare-fun b_next!16845 () Bool)

(assert (=> start!78660 (= b_free!16845 (not b_next!16845))))

(declare-fun tp!58976 () Bool)

(declare-fun b_and!27485 () Bool)

(assert (=> start!78660 (= tp!58976 b_and!27485)))

(declare-fun mapNonEmpty!30786 () Bool)

(declare-fun mapRes!30786 () Bool)

(declare-fun tp!58977 () Bool)

(declare-fun e!514539 () Bool)

(assert (=> mapNonEmpty!30786 (= mapRes!30786 (and tp!58977 e!514539))))

(declare-datatypes ((V!30769 0))(
  ( (V!30770 (val!9727 Int)) )
))
(declare-datatypes ((ValueCell!9195 0))(
  ( (ValueCellFull!9195 (v!12245 V!30769)) (EmptyCell!9195) )
))
(declare-fun mapRest!30786 () (Array (_ BitVec 32) ValueCell!9195))

(declare-fun mapValue!30786 () ValueCell!9195)

(declare-fun mapKey!30786 () (_ BitVec 32))

(declare-datatypes ((array!54708 0))(
  ( (array!54709 (arr!26295 (Array (_ BitVec 32) ValueCell!9195)) (size!26755 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54708)

(assert (=> mapNonEmpty!30786 (= (arr!26295 _values!1231) (store mapRest!30786 mapKey!30786 mapValue!30786))))

(declare-fun b!916524 () Bool)

(declare-fun res!617989 () Bool)

(declare-fun e!514537 () Bool)

(assert (=> b!916524 (=> (not res!617989) (not e!514537))))

(declare-datatypes ((array!54710 0))(
  ( (array!54711 (arr!26296 (Array (_ BitVec 32) (_ BitVec 64))) (size!26756 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54710)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54710 (_ BitVec 32)) Bool)

(assert (=> b!916524 (= res!617989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!30786 () Bool)

(assert (=> mapIsEmpty!30786 mapRes!30786))

(declare-fun b!916525 () Bool)

(declare-fun res!617990 () Bool)

(assert (=> b!916525 (=> (not res!617990) (not e!514537))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!916525 (= res!617990 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26756 _keys!1487))))))

(declare-fun b!916526 () Bool)

(declare-fun res!617988 () Bool)

(assert (=> b!916526 (=> (not res!617988) (not e!514537))))

(declare-datatypes ((List!18554 0))(
  ( (Nil!18551) (Cons!18550 (h!19696 (_ BitVec 64)) (t!26175 List!18554)) )
))
(declare-fun arrayNoDuplicates!0 (array!54710 (_ BitVec 32) List!18554) Bool)

(assert (=> b!916526 (= res!617988 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18551))))

(declare-fun b!916527 () Bool)

(declare-fun e!514541 () Bool)

(declare-fun tp_is_empty!19353 () Bool)

(assert (=> b!916527 (= e!514541 tp_is_empty!19353)))

(declare-fun b!916528 () Bool)

(declare-fun e!514542 () Bool)

(assert (=> b!916528 (= e!514542 (and e!514541 mapRes!30786))))

(declare-fun condMapEmpty!30786 () Bool)

(declare-fun mapDefault!30786 () ValueCell!9195)

(assert (=> b!916528 (= condMapEmpty!30786 (= (arr!26295 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9195)) mapDefault!30786)))))

(declare-fun res!617987 () Bool)

(assert (=> start!78660 (=> (not res!617987) (not e!514537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78660 (= res!617987 (validMask!0 mask!1881))))

(assert (=> start!78660 e!514537))

(assert (=> start!78660 true))

(declare-fun array_inv!20504 (array!54708) Bool)

(assert (=> start!78660 (and (array_inv!20504 _values!1231) e!514542)))

(assert (=> start!78660 tp!58976))

(declare-fun array_inv!20505 (array!54710) Bool)

(assert (=> start!78660 (array_inv!20505 _keys!1487)))

(assert (=> start!78660 tp_is_empty!19353))

(declare-fun b!916529 () Bool)

(declare-fun e!514538 () Bool)

(assert (=> b!916529 (= e!514538 false)))

(declare-fun lt!411788 () V!30769)

(declare-datatypes ((tuple2!12694 0))(
  ( (tuple2!12695 (_1!6357 (_ BitVec 64)) (_2!6357 V!30769)) )
))
(declare-datatypes ((List!18555 0))(
  ( (Nil!18552) (Cons!18551 (h!19697 tuple2!12694) (t!26176 List!18555)) )
))
(declare-datatypes ((ListLongMap!11405 0))(
  ( (ListLongMap!11406 (toList!5718 List!18555)) )
))
(declare-fun lt!411789 () ListLongMap!11405)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!546 (ListLongMap!11405 (_ BitVec 64)) V!30769)

(assert (=> b!916529 (= lt!411788 (apply!546 lt!411789 k0!1099))))

(declare-fun b!916530 () Bool)

(declare-fun res!617986 () Bool)

(assert (=> b!916530 (=> (not res!617986) (not e!514537))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!916530 (= res!617986 (and (= (size!26755 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26756 _keys!1487) (size!26755 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916531 () Bool)

(assert (=> b!916531 (= e!514539 tp_is_empty!19353)))

(declare-fun b!916532 () Bool)

(assert (=> b!916532 (= e!514537 e!514538)))

(declare-fun res!617985 () Bool)

(assert (=> b!916532 (=> (not res!617985) (not e!514538))))

(declare-fun contains!4738 (ListLongMap!11405 (_ BitVec 64)) Bool)

(assert (=> b!916532 (= res!617985 (contains!4738 lt!411789 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30769)

(declare-fun minValue!1173 () V!30769)

(declare-fun getCurrentListMap!2947 (array!54710 array!54708 (_ BitVec 32) (_ BitVec 32) V!30769 V!30769 (_ BitVec 32) Int) ListLongMap!11405)

(assert (=> b!916532 (= lt!411789 (getCurrentListMap!2947 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(assert (= (and start!78660 res!617987) b!916530))

(assert (= (and b!916530 res!617986) b!916524))

(assert (= (and b!916524 res!617989) b!916526))

(assert (= (and b!916526 res!617988) b!916525))

(assert (= (and b!916525 res!617990) b!916532))

(assert (= (and b!916532 res!617985) b!916529))

(assert (= (and b!916528 condMapEmpty!30786) mapIsEmpty!30786))

(assert (= (and b!916528 (not condMapEmpty!30786)) mapNonEmpty!30786))

(get-info :version)

(assert (= (and mapNonEmpty!30786 ((_ is ValueCellFull!9195) mapValue!30786)) b!916531))

(assert (= (and b!916528 ((_ is ValueCellFull!9195) mapDefault!30786)) b!916527))

(assert (= start!78660 b!916528))

(declare-fun m!850579 () Bool)

(assert (=> b!916532 m!850579))

(declare-fun m!850581 () Bool)

(assert (=> b!916532 m!850581))

(declare-fun m!850583 () Bool)

(assert (=> b!916524 m!850583))

(declare-fun m!850585 () Bool)

(assert (=> b!916529 m!850585))

(declare-fun m!850587 () Bool)

(assert (=> b!916526 m!850587))

(declare-fun m!850589 () Bool)

(assert (=> start!78660 m!850589))

(declare-fun m!850591 () Bool)

(assert (=> start!78660 m!850591))

(declare-fun m!850593 () Bool)

(assert (=> start!78660 m!850593))

(declare-fun m!850595 () Bool)

(assert (=> mapNonEmpty!30786 m!850595))

(check-sat b_and!27485 (not b!916532) (not start!78660) (not b_next!16845) (not b!916526) tp_is_empty!19353 (not b!916524) (not b!916529) (not mapNonEmpty!30786))
(check-sat b_and!27485 (not b_next!16845))
