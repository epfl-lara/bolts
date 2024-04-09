; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36774 () Bool)

(assert start!36774)

(declare-fun mapNonEmpty!14376 () Bool)

(declare-fun mapRes!14376 () Bool)

(declare-fun tp!28452 () Bool)

(declare-fun e!224542 () Bool)

(assert (=> mapNonEmpty!14376 (= mapRes!14376 (and tp!28452 e!224542))))

(declare-datatypes ((V!12493 0))(
  ( (V!12494 (val!4315 Int)) )
))
(declare-datatypes ((ValueCell!3927 0))(
  ( (ValueCellFull!3927 (v!6508 V!12493)) (EmptyCell!3927) )
))
(declare-fun mapValue!14376 () ValueCell!3927)

(declare-datatypes ((array!21007 0))(
  ( (array!21008 (arr!9969 (Array (_ BitVec 32) ValueCell!3927)) (size!10321 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21007)

(declare-fun mapRest!14376 () (Array (_ BitVec 32) ValueCell!3927))

(declare-fun mapKey!14376 () (_ BitVec 32))

(assert (=> mapNonEmpty!14376 (= (arr!9969 _values!506) (store mapRest!14376 mapKey!14376 mapValue!14376))))

(declare-fun b!366807 () Bool)

(declare-fun res!205349 () Bool)

(declare-fun e!224539 () Bool)

(assert (=> b!366807 (=> (not res!205349) (not e!224539))))

(declare-datatypes ((array!21009 0))(
  ( (array!21010 (arr!9970 (Array (_ BitVec 32) (_ BitVec 64))) (size!10322 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21009)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21009 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!366807 (= res!205349 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun res!205346 () Bool)

(assert (=> start!36774 (=> (not res!205346) (not e!224539))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36774 (= res!205346 (validMask!0 mask!970))))

(assert (=> start!36774 e!224539))

(assert (=> start!36774 true))

(declare-fun e!224540 () Bool)

(declare-fun array_inv!7374 (array!21007) Bool)

(assert (=> start!36774 (and (array_inv!7374 _values!506) e!224540)))

(declare-fun array_inv!7375 (array!21009) Bool)

(assert (=> start!36774 (array_inv!7375 _keys!658)))

(declare-fun b!366808 () Bool)

(declare-fun res!205344 () Bool)

(assert (=> b!366808 (=> (not res!205344) (not e!224539))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!366808 (= res!205344 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10322 _keys!658))))))

(declare-fun b!366809 () Bool)

(declare-fun res!205352 () Bool)

(assert (=> b!366809 (=> (not res!205352) (not e!224539))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!366809 (= res!205352 (and (= (size!10321 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10322 _keys!658) (size!10321 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!14376 () Bool)

(assert (=> mapIsEmpty!14376 mapRes!14376))

(declare-fun b!366810 () Bool)

(declare-fun res!205348 () Bool)

(assert (=> b!366810 (=> (not res!205348) (not e!224539))))

(declare-datatypes ((List!5576 0))(
  ( (Nil!5573) (Cons!5572 (h!6428 (_ BitVec 64)) (t!10734 List!5576)) )
))
(declare-fun arrayNoDuplicates!0 (array!21009 (_ BitVec 32) List!5576) Bool)

(assert (=> b!366810 (= res!205348 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5573))))

(declare-fun b!366811 () Bool)

(declare-fun tp_is_empty!8541 () Bool)

(assert (=> b!366811 (= e!224542 tp_is_empty!8541)))

(declare-fun b!366812 () Bool)

(declare-fun e!224544 () Bool)

(assert (=> b!366812 (= e!224540 (and e!224544 mapRes!14376))))

(declare-fun condMapEmpty!14376 () Bool)

(declare-fun mapDefault!14376 () ValueCell!3927)

(assert (=> b!366812 (= condMapEmpty!14376 (= (arr!9969 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3927)) mapDefault!14376)))))

(declare-fun b!366813 () Bool)

(declare-fun res!205350 () Bool)

(assert (=> b!366813 (=> (not res!205350) (not e!224539))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!366813 (= res!205350 (validKeyInArray!0 k0!778))))

(declare-fun b!366814 () Bool)

(declare-fun res!205345 () Bool)

(assert (=> b!366814 (=> (not res!205345) (not e!224539))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21009 (_ BitVec 32)) Bool)

(assert (=> b!366814 (= res!205345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!366815 () Bool)

(declare-fun res!205347 () Bool)

(assert (=> b!366815 (=> (not res!205347) (not e!224539))))

(assert (=> b!366815 (= res!205347 (or (= (select (arr!9970 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9970 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!366816 () Bool)

(declare-fun e!224543 () Bool)

(assert (=> b!366816 (= e!224543 false)))

(declare-fun lt!169273 () Bool)

(declare-fun lt!169272 () array!21009)

(assert (=> b!366816 (= lt!169273 (arrayNoDuplicates!0 lt!169272 #b00000000000000000000000000000000 Nil!5573))))

(declare-fun b!366817 () Bool)

(assert (=> b!366817 (= e!224539 e!224543)))

(declare-fun res!205351 () Bool)

(assert (=> b!366817 (=> (not res!205351) (not e!224543))))

(assert (=> b!366817 (= res!205351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169272 mask!970))))

(assert (=> b!366817 (= lt!169272 (array!21010 (store (arr!9970 _keys!658) i!548 k0!778) (size!10322 _keys!658)))))

(declare-fun b!366818 () Bool)

(assert (=> b!366818 (= e!224544 tp_is_empty!8541)))

(assert (= (and start!36774 res!205346) b!366809))

(assert (= (and b!366809 res!205352) b!366814))

(assert (= (and b!366814 res!205345) b!366810))

(assert (= (and b!366810 res!205348) b!366808))

(assert (= (and b!366808 res!205344) b!366813))

(assert (= (and b!366813 res!205350) b!366815))

(assert (= (and b!366815 res!205347) b!366807))

(assert (= (and b!366807 res!205349) b!366817))

(assert (= (and b!366817 res!205351) b!366816))

(assert (= (and b!366812 condMapEmpty!14376) mapIsEmpty!14376))

(assert (= (and b!366812 (not condMapEmpty!14376)) mapNonEmpty!14376))

(get-info :version)

(assert (= (and mapNonEmpty!14376 ((_ is ValueCellFull!3927) mapValue!14376)) b!366811))

(assert (= (and b!366812 ((_ is ValueCellFull!3927) mapDefault!14376)) b!366818))

(assert (= start!36774 b!366812))

(declare-fun m!363977 () Bool)

(assert (=> b!366815 m!363977))

(declare-fun m!363979 () Bool)

(assert (=> b!366810 m!363979))

(declare-fun m!363981 () Bool)

(assert (=> b!366807 m!363981))

(declare-fun m!363983 () Bool)

(assert (=> b!366816 m!363983))

(declare-fun m!363985 () Bool)

(assert (=> start!36774 m!363985))

(declare-fun m!363987 () Bool)

(assert (=> start!36774 m!363987))

(declare-fun m!363989 () Bool)

(assert (=> start!36774 m!363989))

(declare-fun m!363991 () Bool)

(assert (=> mapNonEmpty!14376 m!363991))

(declare-fun m!363993 () Bool)

(assert (=> b!366813 m!363993))

(declare-fun m!363995 () Bool)

(assert (=> b!366817 m!363995))

(declare-fun m!363997 () Bool)

(assert (=> b!366817 m!363997))

(declare-fun m!363999 () Bool)

(assert (=> b!366814 m!363999))

(check-sat (not b!366807) (not b!366810) (not start!36774) (not b!366817) (not mapNonEmpty!14376) (not b!366814) tp_is_empty!8541 (not b!366816) (not b!366813))
(check-sat)
