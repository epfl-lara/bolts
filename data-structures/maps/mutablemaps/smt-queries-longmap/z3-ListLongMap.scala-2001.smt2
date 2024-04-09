; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34996 () Bool)

(assert start!34996)

(declare-fun b_free!7677 () Bool)

(declare-fun b_next!7677 () Bool)

(assert (=> start!34996 (= b_free!7677 (not b_next!7677))))

(declare-fun tp!26609 () Bool)

(declare-fun b_and!14925 () Bool)

(assert (=> start!34996 (= tp!26609 b_and!14925)))

(declare-fun b!350211 () Bool)

(declare-fun e!214539 () Bool)

(declare-fun e!214540 () Bool)

(assert (=> b!350211 (= e!214539 e!214540)))

(declare-fun res!194135 () Bool)

(assert (=> b!350211 (=> (not res!194135) (not e!214540))))

(declare-datatypes ((SeekEntryResult!3430 0))(
  ( (MissingZero!3430 (index!15899 (_ BitVec 32))) (Found!3430 (index!15900 (_ BitVec 32))) (Intermediate!3430 (undefined!4242 Bool) (index!15901 (_ BitVec 32)) (x!34865 (_ BitVec 32))) (Undefined!3430) (MissingVacant!3430 (index!15902 (_ BitVec 32))) )
))
(declare-fun lt!164538 () SeekEntryResult!3430)

(get-info :version)

(assert (=> b!350211 (= res!194135 (and (not ((_ is Found!3430) lt!164538)) (not ((_ is MissingZero!3430) lt!164538)) ((_ is MissingVacant!3430) lt!164538)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((array!18813 0))(
  ( (array!18814 (arr!8909 (Array (_ BitVec 32) (_ BitVec 64))) (size!9261 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18813)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18813 (_ BitVec 32)) SeekEntryResult!3430)

(assert (=> b!350211 (= lt!164538 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun res!194132 () Bool)

(assert (=> start!34996 (=> (not res!194132) (not e!214539))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34996 (= res!194132 (validMask!0 mask!2385))))

(assert (=> start!34996 e!214539))

(assert (=> start!34996 true))

(declare-fun tp_is_empty!7629 () Bool)

(assert (=> start!34996 tp_is_empty!7629))

(assert (=> start!34996 tp!26609))

(declare-datatypes ((V!11149 0))(
  ( (V!11150 (val!3859 Int)) )
))
(declare-datatypes ((ValueCell!3471 0))(
  ( (ValueCellFull!3471 (v!6042 V!11149)) (EmptyCell!3471) )
))
(declare-datatypes ((array!18815 0))(
  ( (array!18816 (arr!8910 (Array (_ BitVec 32) ValueCell!3471)) (size!9262 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18815)

(declare-fun e!214538 () Bool)

(declare-fun array_inv!6564 (array!18815) Bool)

(assert (=> start!34996 (and (array_inv!6564 _values!1525) e!214538)))

(declare-fun array_inv!6565 (array!18813) Bool)

(assert (=> start!34996 (array_inv!6565 _keys!1895)))

(declare-fun b!350212 () Bool)

(assert (=> b!350212 (= e!214540 false)))

(declare-fun lt!164537 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18813 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!350212 (= lt!164537 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!12915 () Bool)

(declare-fun mapRes!12915 () Bool)

(assert (=> mapIsEmpty!12915 mapRes!12915))

(declare-fun b!350213 () Bool)

(declare-fun res!194139 () Bool)

(assert (=> b!350213 (=> (not res!194139) (not e!214539))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!350213 (= res!194139 (and (= (size!9262 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9261 _keys!1895) (size!9262 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!350214 () Bool)

(declare-fun res!194138 () Bool)

(assert (=> b!350214 (=> (not res!194138) (not e!214540))))

(declare-fun arrayContainsKey!0 (array!18813 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!350214 (= res!194138 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!350215 () Bool)

(declare-fun res!194136 () Bool)

(assert (=> b!350215 (=> (not res!194136) (not e!214539))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!350215 (= res!194136 (validKeyInArray!0 k0!1348))))

(declare-fun b!350216 () Bool)

(declare-fun res!194133 () Bool)

(assert (=> b!350216 (=> (not res!194133) (not e!214539))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18813 (_ BitVec 32)) Bool)

(assert (=> b!350216 (= res!194133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!350217 () Bool)

(declare-fun e!214535 () Bool)

(assert (=> b!350217 (= e!214535 tp_is_empty!7629)))

(declare-fun mapNonEmpty!12915 () Bool)

(declare-fun tp!26610 () Bool)

(assert (=> mapNonEmpty!12915 (= mapRes!12915 (and tp!26610 e!214535))))

(declare-fun mapKey!12915 () (_ BitVec 32))

(declare-fun mapRest!12915 () (Array (_ BitVec 32) ValueCell!3471))

(declare-fun mapValue!12915 () ValueCell!3471)

(assert (=> mapNonEmpty!12915 (= (arr!8910 _values!1525) (store mapRest!12915 mapKey!12915 mapValue!12915))))

(declare-fun b!350218 () Bool)

(declare-fun res!194137 () Bool)

(assert (=> b!350218 (=> (not res!194137) (not e!214539))))

(declare-fun zeroValue!1467 () V!11149)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11149)

(declare-datatypes ((tuple2!5566 0))(
  ( (tuple2!5567 (_1!2793 (_ BitVec 64)) (_2!2793 V!11149)) )
))
(declare-datatypes ((List!5206 0))(
  ( (Nil!5203) (Cons!5202 (h!6058 tuple2!5566) (t!10352 List!5206)) )
))
(declare-datatypes ((ListLongMap!4493 0))(
  ( (ListLongMap!4494 (toList!2262 List!5206)) )
))
(declare-fun contains!2327 (ListLongMap!4493 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1779 (array!18813 array!18815 (_ BitVec 32) (_ BitVec 32) V!11149 V!11149 (_ BitVec 32) Int) ListLongMap!4493)

(assert (=> b!350218 (= res!194137 (not (contains!2327 (getCurrentListMap!1779 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!350219 () Bool)

(declare-fun e!214537 () Bool)

(assert (=> b!350219 (= e!214537 tp_is_empty!7629)))

(declare-fun b!350220 () Bool)

(assert (=> b!350220 (= e!214538 (and e!214537 mapRes!12915))))

(declare-fun condMapEmpty!12915 () Bool)

(declare-fun mapDefault!12915 () ValueCell!3471)

(assert (=> b!350220 (= condMapEmpty!12915 (= (arr!8910 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3471)) mapDefault!12915)))))

(declare-fun b!350221 () Bool)

(declare-fun res!194134 () Bool)

(assert (=> b!350221 (=> (not res!194134) (not e!214539))))

(declare-datatypes ((List!5207 0))(
  ( (Nil!5204) (Cons!5203 (h!6059 (_ BitVec 64)) (t!10353 List!5207)) )
))
(declare-fun arrayNoDuplicates!0 (array!18813 (_ BitVec 32) List!5207) Bool)

(assert (=> b!350221 (= res!194134 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5204))))

(assert (= (and start!34996 res!194132) b!350213))

(assert (= (and b!350213 res!194139) b!350216))

(assert (= (and b!350216 res!194133) b!350221))

(assert (= (and b!350221 res!194134) b!350215))

(assert (= (and b!350215 res!194136) b!350218))

(assert (= (and b!350218 res!194137) b!350211))

(assert (= (and b!350211 res!194135) b!350214))

(assert (= (and b!350214 res!194138) b!350212))

(assert (= (and b!350220 condMapEmpty!12915) mapIsEmpty!12915))

(assert (= (and b!350220 (not condMapEmpty!12915)) mapNonEmpty!12915))

(assert (= (and mapNonEmpty!12915 ((_ is ValueCellFull!3471) mapValue!12915)) b!350217))

(assert (= (and b!350220 ((_ is ValueCellFull!3471) mapDefault!12915)) b!350219))

(assert (= start!34996 b!350220))

(declare-fun m!350457 () Bool)

(assert (=> b!350212 m!350457))

(declare-fun m!350459 () Bool)

(assert (=> mapNonEmpty!12915 m!350459))

(declare-fun m!350461 () Bool)

(assert (=> b!350215 m!350461))

(declare-fun m!350463 () Bool)

(assert (=> b!350221 m!350463))

(declare-fun m!350465 () Bool)

(assert (=> b!350218 m!350465))

(assert (=> b!350218 m!350465))

(declare-fun m!350467 () Bool)

(assert (=> b!350218 m!350467))

(declare-fun m!350469 () Bool)

(assert (=> start!34996 m!350469))

(declare-fun m!350471 () Bool)

(assert (=> start!34996 m!350471))

(declare-fun m!350473 () Bool)

(assert (=> start!34996 m!350473))

(declare-fun m!350475 () Bool)

(assert (=> b!350214 m!350475))

(declare-fun m!350477 () Bool)

(assert (=> b!350216 m!350477))

(declare-fun m!350479 () Bool)

(assert (=> b!350211 m!350479))

(check-sat tp_is_empty!7629 (not b!350214) (not b!350212) (not start!34996) (not mapNonEmpty!12915) (not b!350218) (not b!350216) (not b_next!7677) (not b!350211) b_and!14925 (not b!350215) (not b!350221))
(check-sat b_and!14925 (not b_next!7677))
