; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36690 () Bool)

(assert start!36690)

(declare-fun b!365968 () Bool)

(declare-fun e!224111 () Bool)

(declare-fun tp_is_empty!8505 () Bool)

(assert (=> b!365968 (= e!224111 tp_is_empty!8505)))

(declare-fun b!365969 () Bool)

(declare-fun e!224113 () Bool)

(assert (=> b!365969 (= e!224113 tp_is_empty!8505)))

(declare-fun b!365970 () Bool)

(declare-fun res!204733 () Bool)

(declare-fun e!224110 () Bool)

(assert (=> b!365970 (=> (not res!204733) (not e!224110))))

(declare-datatypes ((array!20935 0))(
  ( (array!20936 (arr!9936 (Array (_ BitVec 32) (_ BitVec 64))) (size!10288 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20935)

(declare-datatypes ((List!5562 0))(
  ( (Nil!5559) (Cons!5558 (h!6414 (_ BitVec 64)) (t!10720 List!5562)) )
))
(declare-fun arrayNoDuplicates!0 (array!20935 (_ BitVec 32) List!5562) Bool)

(assert (=> b!365970 (= res!204733 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5559))))

(declare-fun res!204740 () Bool)

(assert (=> start!36690 (=> (not res!204740) (not e!224110))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36690 (= res!204740 (validMask!0 mask!970))))

(assert (=> start!36690 e!224110))

(assert (=> start!36690 true))

(declare-datatypes ((V!12445 0))(
  ( (V!12446 (val!4297 Int)) )
))
(declare-datatypes ((ValueCell!3909 0))(
  ( (ValueCellFull!3909 (v!6489 V!12445)) (EmptyCell!3909) )
))
(declare-datatypes ((array!20937 0))(
  ( (array!20938 (arr!9937 (Array (_ BitVec 32) ValueCell!3909)) (size!10289 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20937)

(declare-fun e!224109 () Bool)

(declare-fun array_inv!7348 (array!20937) Bool)

(assert (=> start!36690 (and (array_inv!7348 _values!506) e!224109)))

(declare-fun array_inv!7349 (array!20935) Bool)

(assert (=> start!36690 (array_inv!7349 _keys!658)))

(declare-fun b!365971 () Bool)

(declare-fun res!204741 () Bool)

(assert (=> b!365971 (=> (not res!204741) (not e!224110))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20935 (_ BitVec 32)) Bool)

(assert (=> b!365971 (= res!204741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!365972 () Bool)

(declare-fun res!204737 () Bool)

(assert (=> b!365972 (=> (not res!204737) (not e!224110))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!365972 (= res!204737 (and (= (size!10289 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10288 _keys!658) (size!10289 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!365973 () Bool)

(declare-fun res!204734 () Bool)

(assert (=> b!365973 (=> (not res!204734) (not e!224110))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!365973 (= res!204734 (or (= (select (arr!9936 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9936 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!365974 () Bool)

(assert (=> b!365974 (= e!224110 (bvsgt #b00000000000000000000000000000000 (size!10288 _keys!658)))))

(declare-fun mapNonEmpty!14313 () Bool)

(declare-fun mapRes!14313 () Bool)

(declare-fun tp!28389 () Bool)

(assert (=> mapNonEmpty!14313 (= mapRes!14313 (and tp!28389 e!224113))))

(declare-fun mapKey!14313 () (_ BitVec 32))

(declare-fun mapRest!14313 () (Array (_ BitVec 32) ValueCell!3909))

(declare-fun mapValue!14313 () ValueCell!3909)

(assert (=> mapNonEmpty!14313 (= (arr!9937 _values!506) (store mapRest!14313 mapKey!14313 mapValue!14313))))

(declare-fun b!365975 () Bool)

(declare-fun res!204736 () Bool)

(assert (=> b!365975 (=> (not res!204736) (not e!224110))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!365975 (= res!204736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!20936 (store (arr!9936 _keys!658) i!548 k0!778) (size!10288 _keys!658)) mask!970))))

(declare-fun b!365976 () Bool)

(assert (=> b!365976 (= e!224109 (and e!224111 mapRes!14313))))

(declare-fun condMapEmpty!14313 () Bool)

(declare-fun mapDefault!14313 () ValueCell!3909)

(assert (=> b!365976 (= condMapEmpty!14313 (= (arr!9937 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3909)) mapDefault!14313)))))

(declare-fun mapIsEmpty!14313 () Bool)

(assert (=> mapIsEmpty!14313 mapRes!14313))

(declare-fun b!365977 () Bool)

(declare-fun res!204738 () Bool)

(assert (=> b!365977 (=> (not res!204738) (not e!224110))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!365977 (= res!204738 (validKeyInArray!0 k0!778))))

(declare-fun b!365978 () Bool)

(declare-fun res!204739 () Bool)

(assert (=> b!365978 (=> (not res!204739) (not e!224110))))

(assert (=> b!365978 (= res!204739 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10288 _keys!658))))))

(declare-fun b!365979 () Bool)

(declare-fun res!204735 () Bool)

(assert (=> b!365979 (=> (not res!204735) (not e!224110))))

(declare-fun arrayContainsKey!0 (array!20935 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!365979 (= res!204735 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(assert (= (and start!36690 res!204740) b!365972))

(assert (= (and b!365972 res!204737) b!365971))

(assert (= (and b!365971 res!204741) b!365970))

(assert (= (and b!365970 res!204733) b!365978))

(assert (= (and b!365978 res!204739) b!365977))

(assert (= (and b!365977 res!204738) b!365973))

(assert (= (and b!365973 res!204734) b!365979))

(assert (= (and b!365979 res!204735) b!365975))

(assert (= (and b!365975 res!204736) b!365974))

(assert (= (and b!365976 condMapEmpty!14313) mapIsEmpty!14313))

(assert (= (and b!365976 (not condMapEmpty!14313)) mapNonEmpty!14313))

(get-info :version)

(assert (= (and mapNonEmpty!14313 ((_ is ValueCellFull!3909) mapValue!14313)) b!365969))

(assert (= (and b!365976 ((_ is ValueCellFull!3909) mapDefault!14313)) b!365968))

(assert (= start!36690 b!365976))

(declare-fun m!363429 () Bool)

(assert (=> b!365970 m!363429))

(declare-fun m!363431 () Bool)

(assert (=> b!365977 m!363431))

(declare-fun m!363433 () Bool)

(assert (=> b!365973 m!363433))

(declare-fun m!363435 () Bool)

(assert (=> mapNonEmpty!14313 m!363435))

(declare-fun m!363437 () Bool)

(assert (=> b!365971 m!363437))

(declare-fun m!363439 () Bool)

(assert (=> start!36690 m!363439))

(declare-fun m!363441 () Bool)

(assert (=> start!36690 m!363441))

(declare-fun m!363443 () Bool)

(assert (=> start!36690 m!363443))

(declare-fun m!363445 () Bool)

(assert (=> b!365975 m!363445))

(declare-fun m!363447 () Bool)

(assert (=> b!365975 m!363447))

(declare-fun m!363449 () Bool)

(assert (=> b!365979 m!363449))

(check-sat (not b!365977) (not start!36690) (not b!365975) (not b!365970) tp_is_empty!8505 (not b!365979) (not mapNonEmpty!14313) (not b!365971))
(check-sat)
