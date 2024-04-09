; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35236 () Bool)

(assert start!35236)

(declare-fun b_free!7803 () Bool)

(declare-fun b_next!7803 () Bool)

(assert (=> start!35236 (= b_free!7803 (not b_next!7803))))

(declare-fun tp!27002 () Bool)

(declare-fun b_and!15061 () Bool)

(assert (=> start!35236 (= tp!27002 b_and!15061)))

(declare-fun b!352974 () Bool)

(declare-fun res!195804 () Bool)

(declare-fun e!216146 () Bool)

(assert (=> b!352974 (=> (not res!195804) (not e!216146))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11317 0))(
  ( (V!11318 (val!3922 Int)) )
))
(declare-datatypes ((ValueCell!3534 0))(
  ( (ValueCellFull!3534 (v!6110 V!11317)) (EmptyCell!3534) )
))
(declare-datatypes ((array!19061 0))(
  ( (array!19062 (arr!9028 (Array (_ BitVec 32) ValueCell!3534)) (size!9380 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!19061)

(declare-datatypes ((array!19063 0))(
  ( (array!19064 (arr!9029 (Array (_ BitVec 32) (_ BitVec 64))) (size!9381 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19063)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!352974 (= res!195804 (and (= (size!9380 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9381 _keys!1895) (size!9380 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!352975 () Bool)

(declare-fun e!216144 () Bool)

(declare-fun tp_is_empty!7755 () Bool)

(assert (=> b!352975 (= e!216144 tp_is_empty!7755)))

(declare-fun b!352976 () Bool)

(declare-fun res!195806 () Bool)

(assert (=> b!352976 (=> (not res!195806) (not e!216146))))

(declare-datatypes ((List!5287 0))(
  ( (Nil!5284) (Cons!5283 (h!6139 (_ BitVec 64)) (t!10443 List!5287)) )
))
(declare-fun arrayNoDuplicates!0 (array!19063 (_ BitVec 32) List!5287) Bool)

(assert (=> b!352976 (= res!195806 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5284))))

(declare-fun res!195808 () Bool)

(assert (=> start!35236 (=> (not res!195808) (not e!216146))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35236 (= res!195808 (validMask!0 mask!2385))))

(assert (=> start!35236 e!216146))

(assert (=> start!35236 true))

(assert (=> start!35236 tp_is_empty!7755))

(assert (=> start!35236 tp!27002))

(declare-fun e!216145 () Bool)

(declare-fun array_inv!6648 (array!19061) Bool)

(assert (=> start!35236 (and (array_inv!6648 _values!1525) e!216145)))

(declare-fun array_inv!6649 (array!19063) Bool)

(assert (=> start!35236 (array_inv!6649 _keys!1895)))

(declare-fun b!352977 () Bool)

(declare-fun res!195807 () Bool)

(assert (=> b!352977 (=> (not res!195807) (not e!216146))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!352977 (= res!195807 (validKeyInArray!0 k0!1348))))

(declare-fun b!352978 () Bool)

(assert (=> b!352978 (= e!216146 false)))

(declare-datatypes ((SeekEntryResult!3470 0))(
  ( (MissingZero!3470 (index!16059 (_ BitVec 32))) (Found!3470 (index!16060 (_ BitVec 32))) (Intermediate!3470 (undefined!4282 Bool) (index!16061 (_ BitVec 32)) (x!35123 (_ BitVec 32))) (Undefined!3470) (MissingVacant!3470 (index!16062 (_ BitVec 32))) )
))
(declare-fun lt!165426 () SeekEntryResult!3470)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!19063 (_ BitVec 32)) SeekEntryResult!3470)

(assert (=> b!352978 (= lt!165426 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!352979 () Bool)

(declare-fun res!195809 () Bool)

(assert (=> b!352979 (=> (not res!195809) (not e!216146))))

(declare-fun zeroValue!1467 () V!11317)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11317)

(declare-datatypes ((tuple2!5650 0))(
  ( (tuple2!5651 (_1!2835 (_ BitVec 64)) (_2!2835 V!11317)) )
))
(declare-datatypes ((List!5288 0))(
  ( (Nil!5285) (Cons!5284 (h!6140 tuple2!5650) (t!10444 List!5288)) )
))
(declare-datatypes ((ListLongMap!4577 0))(
  ( (ListLongMap!4578 (toList!2304 List!5288)) )
))
(declare-fun contains!2374 (ListLongMap!4577 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1821 (array!19063 array!19061 (_ BitVec 32) (_ BitVec 32) V!11317 V!11317 (_ BitVec 32) Int) ListLongMap!4577)

(assert (=> b!352979 (= res!195809 (not (contains!2374 (getCurrentListMap!1821 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!352980 () Bool)

(declare-fun e!216143 () Bool)

(assert (=> b!352980 (= e!216143 tp_is_empty!7755)))

(declare-fun b!352981 () Bool)

(declare-fun mapRes!13119 () Bool)

(assert (=> b!352981 (= e!216145 (and e!216144 mapRes!13119))))

(declare-fun condMapEmpty!13119 () Bool)

(declare-fun mapDefault!13119 () ValueCell!3534)

(assert (=> b!352981 (= condMapEmpty!13119 (= (arr!9028 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3534)) mapDefault!13119)))))

(declare-fun mapNonEmpty!13119 () Bool)

(declare-fun tp!27003 () Bool)

(assert (=> mapNonEmpty!13119 (= mapRes!13119 (and tp!27003 e!216143))))

(declare-fun mapRest!13119 () (Array (_ BitVec 32) ValueCell!3534))

(declare-fun mapKey!13119 () (_ BitVec 32))

(declare-fun mapValue!13119 () ValueCell!3534)

(assert (=> mapNonEmpty!13119 (= (arr!9028 _values!1525) (store mapRest!13119 mapKey!13119 mapValue!13119))))

(declare-fun b!352982 () Bool)

(declare-fun res!195805 () Bool)

(assert (=> b!352982 (=> (not res!195805) (not e!216146))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19063 (_ BitVec 32)) Bool)

(assert (=> b!352982 (= res!195805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!13119 () Bool)

(assert (=> mapIsEmpty!13119 mapRes!13119))

(assert (= (and start!35236 res!195808) b!352974))

(assert (= (and b!352974 res!195804) b!352982))

(assert (= (and b!352982 res!195805) b!352976))

(assert (= (and b!352976 res!195806) b!352977))

(assert (= (and b!352977 res!195807) b!352979))

(assert (= (and b!352979 res!195809) b!352978))

(assert (= (and b!352981 condMapEmpty!13119) mapIsEmpty!13119))

(assert (= (and b!352981 (not condMapEmpty!13119)) mapNonEmpty!13119))

(get-info :version)

(assert (= (and mapNonEmpty!13119 ((_ is ValueCellFull!3534) mapValue!13119)) b!352980))

(assert (= (and b!352981 ((_ is ValueCellFull!3534) mapDefault!13119)) b!352975))

(assert (= start!35236 b!352981))

(declare-fun m!352461 () Bool)

(assert (=> b!352978 m!352461))

(declare-fun m!352463 () Bool)

(assert (=> start!35236 m!352463))

(declare-fun m!352465 () Bool)

(assert (=> start!35236 m!352465))

(declare-fun m!352467 () Bool)

(assert (=> start!35236 m!352467))

(declare-fun m!352469 () Bool)

(assert (=> b!352977 m!352469))

(declare-fun m!352471 () Bool)

(assert (=> mapNonEmpty!13119 m!352471))

(declare-fun m!352473 () Bool)

(assert (=> b!352982 m!352473))

(declare-fun m!352475 () Bool)

(assert (=> b!352979 m!352475))

(assert (=> b!352979 m!352475))

(declare-fun m!352477 () Bool)

(assert (=> b!352979 m!352477))

(declare-fun m!352479 () Bool)

(assert (=> b!352976 m!352479))

(check-sat (not b!352978) (not start!35236) (not b!352982) b_and!15061 (not b_next!7803) (not b!352979) (not b!352977) tp_is_empty!7755 (not mapNonEmpty!13119) (not b!352976))
(check-sat b_and!15061 (not b_next!7803))
