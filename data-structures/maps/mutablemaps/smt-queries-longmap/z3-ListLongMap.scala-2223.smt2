; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36810 () Bool)

(assert start!36810)

(declare-fun b!367460 () Bool)

(declare-fun res!205835 () Bool)

(declare-fun e!224864 () Bool)

(assert (=> b!367460 (=> (not res!205835) (not e!224864))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!367460 (= res!205835 (validKeyInArray!0 k0!778))))

(declare-fun b!367462 () Bool)

(declare-fun res!205836 () Bool)

(assert (=> b!367462 (=> (not res!205836) (not e!224864))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!21079 0))(
  ( (array!21080 (arr!10005 (Array (_ BitVec 32) (_ BitVec 64))) (size!10357 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21079)

(assert (=> b!367462 (= res!205836 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10357 _keys!658))))))

(declare-fun mapIsEmpty!14430 () Bool)

(declare-fun mapRes!14430 () Bool)

(assert (=> mapIsEmpty!14430 mapRes!14430))

(declare-fun b!367463 () Bool)

(declare-fun res!205837 () Bool)

(assert (=> b!367463 (=> (not res!205837) (not e!224864))))

(assert (=> b!367463 (= res!205837 (or (= (select (arr!10005 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10005 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!367464 () Bool)

(declare-fun e!224868 () Bool)

(assert (=> b!367464 (= e!224864 e!224868)))

(declare-fun res!205843 () Bool)

(assert (=> b!367464 (=> (not res!205843) (not e!224868))))

(declare-fun lt!169375 () array!21079)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21079 (_ BitVec 32)) Bool)

(assert (=> b!367464 (= res!205843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169375 mask!970))))

(assert (=> b!367464 (= lt!169375 (array!21080 (store (arr!10005 _keys!658) i!548 k0!778) (size!10357 _keys!658)))))

(declare-fun b!367465 () Bool)

(declare-fun res!205844 () Bool)

(assert (=> b!367465 (=> (not res!205844) (not e!224864))))

(assert (=> b!367465 (= res!205844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!367466 () Bool)

(declare-fun res!205839 () Bool)

(assert (=> b!367466 (=> (not res!205839) (not e!224868))))

(declare-datatypes ((List!5594 0))(
  ( (Nil!5591) (Cons!5590 (h!6446 (_ BitVec 64)) (t!10752 List!5594)) )
))
(declare-fun arrayNoDuplicates!0 (array!21079 (_ BitVec 32) List!5594) Bool)

(assert (=> b!367466 (= res!205839 (arrayNoDuplicates!0 lt!169375 #b00000000000000000000000000000000 Nil!5591))))

(declare-fun b!367467 () Bool)

(declare-fun e!224866 () Bool)

(declare-fun e!224865 () Bool)

(assert (=> b!367467 (= e!224866 (and e!224865 mapRes!14430))))

(declare-fun condMapEmpty!14430 () Bool)

(declare-datatypes ((V!12541 0))(
  ( (V!12542 (val!4333 Int)) )
))
(declare-datatypes ((ValueCell!3945 0))(
  ( (ValueCellFull!3945 (v!6526 V!12541)) (EmptyCell!3945) )
))
(declare-datatypes ((array!21081 0))(
  ( (array!21082 (arr!10006 (Array (_ BitVec 32) ValueCell!3945)) (size!10358 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21081)

(declare-fun mapDefault!14430 () ValueCell!3945)

(assert (=> b!367467 (= condMapEmpty!14430 (= (arr!10006 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3945)) mapDefault!14430)))))

(declare-fun b!367468 () Bool)

(assert (=> b!367468 (= e!224868 (bvsgt #b00000000000000000000000000000000 (size!10357 _keys!658)))))

(declare-fun b!367469 () Bool)

(declare-fun res!205838 () Bool)

(assert (=> b!367469 (=> (not res!205838) (not e!224864))))

(assert (=> b!367469 (= res!205838 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5591))))

(declare-fun b!367470 () Bool)

(declare-fun res!205841 () Bool)

(assert (=> b!367470 (=> (not res!205841) (not e!224864))))

(declare-fun arrayContainsKey!0 (array!21079 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!367470 (= res!205841 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!367461 () Bool)

(declare-fun tp_is_empty!8577 () Bool)

(assert (=> b!367461 (= e!224865 tp_is_empty!8577)))

(declare-fun res!205840 () Bool)

(assert (=> start!36810 (=> (not res!205840) (not e!224864))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36810 (= res!205840 (validMask!0 mask!970))))

(assert (=> start!36810 e!224864))

(assert (=> start!36810 true))

(declare-fun array_inv!7394 (array!21081) Bool)

(assert (=> start!36810 (and (array_inv!7394 _values!506) e!224866)))

(declare-fun array_inv!7395 (array!21079) Bool)

(assert (=> start!36810 (array_inv!7395 _keys!658)))

(declare-fun b!367471 () Bool)

(declare-fun res!205842 () Bool)

(assert (=> b!367471 (=> (not res!205842) (not e!224864))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!367471 (= res!205842 (and (= (size!10358 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10357 _keys!658) (size!10358 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!367472 () Bool)

(declare-fun e!224867 () Bool)

(assert (=> b!367472 (= e!224867 tp_is_empty!8577)))

(declare-fun mapNonEmpty!14430 () Bool)

(declare-fun tp!28506 () Bool)

(assert (=> mapNonEmpty!14430 (= mapRes!14430 (and tp!28506 e!224867))))

(declare-fun mapRest!14430 () (Array (_ BitVec 32) ValueCell!3945))

(declare-fun mapValue!14430 () ValueCell!3945)

(declare-fun mapKey!14430 () (_ BitVec 32))

(assert (=> mapNonEmpty!14430 (= (arr!10006 _values!506) (store mapRest!14430 mapKey!14430 mapValue!14430))))

(assert (= (and start!36810 res!205840) b!367471))

(assert (= (and b!367471 res!205842) b!367465))

(assert (= (and b!367465 res!205844) b!367469))

(assert (= (and b!367469 res!205838) b!367462))

(assert (= (and b!367462 res!205836) b!367460))

(assert (= (and b!367460 res!205835) b!367463))

(assert (= (and b!367463 res!205837) b!367470))

(assert (= (and b!367470 res!205841) b!367464))

(assert (= (and b!367464 res!205843) b!367466))

(assert (= (and b!367466 res!205839) b!367468))

(assert (= (and b!367467 condMapEmpty!14430) mapIsEmpty!14430))

(assert (= (and b!367467 (not condMapEmpty!14430)) mapNonEmpty!14430))

(get-info :version)

(assert (= (and mapNonEmpty!14430 ((_ is ValueCellFull!3945) mapValue!14430)) b!367472))

(assert (= (and b!367467 ((_ is ValueCellFull!3945) mapDefault!14430)) b!367461))

(assert (= start!36810 b!367467))

(declare-fun m!364409 () Bool)

(assert (=> b!367463 m!364409))

(declare-fun m!364411 () Bool)

(assert (=> start!36810 m!364411))

(declare-fun m!364413 () Bool)

(assert (=> start!36810 m!364413))

(declare-fun m!364415 () Bool)

(assert (=> start!36810 m!364415))

(declare-fun m!364417 () Bool)

(assert (=> b!367470 m!364417))

(declare-fun m!364419 () Bool)

(assert (=> b!367464 m!364419))

(declare-fun m!364421 () Bool)

(assert (=> b!367464 m!364421))

(declare-fun m!364423 () Bool)

(assert (=> b!367466 m!364423))

(declare-fun m!364425 () Bool)

(assert (=> b!367469 m!364425))

(declare-fun m!364427 () Bool)

(assert (=> b!367460 m!364427))

(declare-fun m!364429 () Bool)

(assert (=> b!367465 m!364429))

(declare-fun m!364431 () Bool)

(assert (=> mapNonEmpty!14430 m!364431))

(check-sat (not mapNonEmpty!14430) tp_is_empty!8577 (not b!367470) (not b!367460) (not b!367464) (not start!36810) (not b!367469) (not b!367466) (not b!367465))
(check-sat)
