; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35026 () Bool)

(assert start!35026)

(declare-fun b_free!7707 () Bool)

(declare-fun b_next!7707 () Bool)

(assert (=> start!35026 (= b_free!7707 (not b_next!7707))))

(declare-fun tp!26700 () Bool)

(declare-fun b_and!14955 () Bool)

(assert (=> start!35026 (= tp!26700 b_and!14955)))

(declare-fun b!350706 () Bool)

(declare-fun res!194497 () Bool)

(declare-fun e!214805 () Bool)

(assert (=> b!350706 (=> (not res!194497) (not e!214805))))

(declare-datatypes ((array!18865 0))(
  ( (array!18866 (arr!8935 (Array (_ BitVec 32) (_ BitVec 64))) (size!9287 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18865)

(declare-datatypes ((List!5222 0))(
  ( (Nil!5219) (Cons!5218 (h!6074 (_ BitVec 64)) (t!10368 List!5222)) )
))
(declare-fun arrayNoDuplicates!0 (array!18865 (_ BitVec 32) List!5222) Bool)

(assert (=> b!350706 (= res!194497 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5219))))

(declare-fun b!350707 () Bool)

(declare-fun e!214807 () Bool)

(declare-fun tp_is_empty!7659 () Bool)

(assert (=> b!350707 (= e!214807 tp_is_empty!7659)))

(declare-fun b!350708 () Bool)

(declare-fun e!214806 () Bool)

(assert (=> b!350708 (= e!214806 false)))

(declare-fun lt!164627 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!18865 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!350708 (= lt!164627 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!350709 () Bool)

(declare-fun res!194496 () Bool)

(assert (=> b!350709 (=> (not res!194496) (not e!214806))))

(declare-fun arrayContainsKey!0 (array!18865 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!350709 (= res!194496 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun res!194498 () Bool)

(assert (=> start!35026 (=> (not res!194498) (not e!214805))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35026 (= res!194498 (validMask!0 mask!2385))))

(assert (=> start!35026 e!214805))

(assert (=> start!35026 true))

(assert (=> start!35026 tp_is_empty!7659))

(assert (=> start!35026 tp!26700))

(declare-datatypes ((V!11189 0))(
  ( (V!11190 (val!3874 Int)) )
))
(declare-datatypes ((ValueCell!3486 0))(
  ( (ValueCellFull!3486 (v!6057 V!11189)) (EmptyCell!3486) )
))
(declare-datatypes ((array!18867 0))(
  ( (array!18868 (arr!8936 (Array (_ BitVec 32) ValueCell!3486)) (size!9288 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18867)

(declare-fun e!214808 () Bool)

(declare-fun array_inv!6586 (array!18867) Bool)

(assert (=> start!35026 (and (array_inv!6586 _values!1525) e!214808)))

(declare-fun array_inv!6587 (array!18865) Bool)

(assert (=> start!35026 (array_inv!6587 _keys!1895)))

(declare-fun b!350710 () Bool)

(declare-fun mapRes!12960 () Bool)

(assert (=> b!350710 (= e!214808 (and e!214807 mapRes!12960))))

(declare-fun condMapEmpty!12960 () Bool)

(declare-fun mapDefault!12960 () ValueCell!3486)

(assert (=> b!350710 (= condMapEmpty!12960 (= (arr!8936 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3486)) mapDefault!12960)))))

(declare-fun b!350711 () Bool)

(declare-fun e!214809 () Bool)

(assert (=> b!350711 (= e!214809 tp_is_empty!7659)))

(declare-fun b!350712 () Bool)

(assert (=> b!350712 (= e!214805 e!214806)))

(declare-fun res!194495 () Bool)

(assert (=> b!350712 (=> (not res!194495) (not e!214806))))

(declare-datatypes ((SeekEntryResult!3440 0))(
  ( (MissingZero!3440 (index!15939 (_ BitVec 32))) (Found!3440 (index!15940 (_ BitVec 32))) (Intermediate!3440 (undefined!4252 Bool) (index!15941 (_ BitVec 32)) (x!34915 (_ BitVec 32))) (Undefined!3440) (MissingVacant!3440 (index!15942 (_ BitVec 32))) )
))
(declare-fun lt!164628 () SeekEntryResult!3440)

(get-info :version)

(assert (=> b!350712 (= res!194495 (and (not ((_ is Found!3440) lt!164628)) (not ((_ is MissingZero!3440) lt!164628)) ((_ is MissingVacant!3440) lt!164628)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18865 (_ BitVec 32)) SeekEntryResult!3440)

(assert (=> b!350712 (= lt!164628 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!350713 () Bool)

(declare-fun res!194493 () Bool)

(assert (=> b!350713 (=> (not res!194493) (not e!214805))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18865 (_ BitVec 32)) Bool)

(assert (=> b!350713 (= res!194493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!350714 () Bool)

(declare-fun res!194499 () Bool)

(assert (=> b!350714 (=> (not res!194499) (not e!214805))))

(declare-fun zeroValue!1467 () V!11189)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11189)

(declare-datatypes ((tuple2!5584 0))(
  ( (tuple2!5585 (_1!2802 (_ BitVec 64)) (_2!2802 V!11189)) )
))
(declare-datatypes ((List!5223 0))(
  ( (Nil!5220) (Cons!5219 (h!6075 tuple2!5584) (t!10369 List!5223)) )
))
(declare-datatypes ((ListLongMap!4511 0))(
  ( (ListLongMap!4512 (toList!2271 List!5223)) )
))
(declare-fun contains!2336 (ListLongMap!4511 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1788 (array!18865 array!18867 (_ BitVec 32) (_ BitVec 32) V!11189 V!11189 (_ BitVec 32) Int) ListLongMap!4511)

(assert (=> b!350714 (= res!194499 (not (contains!2336 (getCurrentListMap!1788 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!350715 () Bool)

(declare-fun res!194494 () Bool)

(assert (=> b!350715 (=> (not res!194494) (not e!214805))))

(assert (=> b!350715 (= res!194494 (and (= (size!9288 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9287 _keys!1895) (size!9288 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!350716 () Bool)

(declare-fun res!194492 () Bool)

(assert (=> b!350716 (=> (not res!194492) (not e!214805))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!350716 (= res!194492 (validKeyInArray!0 k0!1348))))

(declare-fun mapIsEmpty!12960 () Bool)

(assert (=> mapIsEmpty!12960 mapRes!12960))

(declare-fun mapNonEmpty!12960 () Bool)

(declare-fun tp!26699 () Bool)

(assert (=> mapNonEmpty!12960 (= mapRes!12960 (and tp!26699 e!214809))))

(declare-fun mapValue!12960 () ValueCell!3486)

(declare-fun mapKey!12960 () (_ BitVec 32))

(declare-fun mapRest!12960 () (Array (_ BitVec 32) ValueCell!3486))

(assert (=> mapNonEmpty!12960 (= (arr!8936 _values!1525) (store mapRest!12960 mapKey!12960 mapValue!12960))))

(assert (= (and start!35026 res!194498) b!350715))

(assert (= (and b!350715 res!194494) b!350713))

(assert (= (and b!350713 res!194493) b!350706))

(assert (= (and b!350706 res!194497) b!350716))

(assert (= (and b!350716 res!194492) b!350714))

(assert (= (and b!350714 res!194499) b!350712))

(assert (= (and b!350712 res!194495) b!350709))

(assert (= (and b!350709 res!194496) b!350708))

(assert (= (and b!350710 condMapEmpty!12960) mapIsEmpty!12960))

(assert (= (and b!350710 (not condMapEmpty!12960)) mapNonEmpty!12960))

(assert (= (and mapNonEmpty!12960 ((_ is ValueCellFull!3486) mapValue!12960)) b!350711))

(assert (= (and b!350710 ((_ is ValueCellFull!3486) mapDefault!12960)) b!350707))

(assert (= start!35026 b!350710))

(declare-fun m!350817 () Bool)

(assert (=> b!350713 m!350817))

(declare-fun m!350819 () Bool)

(assert (=> b!350714 m!350819))

(assert (=> b!350714 m!350819))

(declare-fun m!350821 () Bool)

(assert (=> b!350714 m!350821))

(declare-fun m!350823 () Bool)

(assert (=> b!350709 m!350823))

(declare-fun m!350825 () Bool)

(assert (=> start!35026 m!350825))

(declare-fun m!350827 () Bool)

(assert (=> start!35026 m!350827))

(declare-fun m!350829 () Bool)

(assert (=> start!35026 m!350829))

(declare-fun m!350831 () Bool)

(assert (=> b!350716 m!350831))

(declare-fun m!350833 () Bool)

(assert (=> b!350712 m!350833))

(declare-fun m!350835 () Bool)

(assert (=> b!350708 m!350835))

(declare-fun m!350837 () Bool)

(assert (=> b!350706 m!350837))

(declare-fun m!350839 () Bool)

(assert (=> mapNonEmpty!12960 m!350839))

(check-sat tp_is_empty!7659 (not b!350712) b_and!14955 (not b!350716) (not b!350708) (not mapNonEmpty!12960) (not b_next!7707) (not b!350709) (not start!35026) (not b!350706) (not b!350713) (not b!350714))
(check-sat b_and!14955 (not b_next!7707))
