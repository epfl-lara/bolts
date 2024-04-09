; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36804 () Bool)

(assert start!36804)

(declare-fun b!367347 () Bool)

(declare-fun res!205757 () Bool)

(declare-fun e!224814 () Bool)

(assert (=> b!367347 (=> (not res!205757) (not e!224814))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12533 0))(
  ( (V!12534 (val!4330 Int)) )
))
(declare-datatypes ((ValueCell!3942 0))(
  ( (ValueCellFull!3942 (v!6523 V!12533)) (EmptyCell!3942) )
))
(declare-datatypes ((array!21067 0))(
  ( (array!21068 (arr!9999 (Array (_ BitVec 32) ValueCell!3942)) (size!10351 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21067)

(declare-datatypes ((array!21069 0))(
  ( (array!21070 (arr!10000 (Array (_ BitVec 32) (_ BitVec 64))) (size!10352 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21069)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!367347 (= res!205757 (and (= (size!10351 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10352 _keys!658) (size!10351 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!14421 () Bool)

(declare-fun mapRes!14421 () Bool)

(assert (=> mapIsEmpty!14421 mapRes!14421))

(declare-fun b!367348 () Bool)

(declare-fun e!224812 () Bool)

(declare-fun e!224809 () Bool)

(assert (=> b!367348 (= e!224812 (and e!224809 mapRes!14421))))

(declare-fun condMapEmpty!14421 () Bool)

(declare-fun mapDefault!14421 () ValueCell!3942)

(assert (=> b!367348 (= condMapEmpty!14421 (= (arr!9999 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3942)) mapDefault!14421)))))

(declare-fun mapNonEmpty!14421 () Bool)

(declare-fun tp!28497 () Bool)

(declare-fun e!224810 () Bool)

(assert (=> mapNonEmpty!14421 (= mapRes!14421 (and tp!28497 e!224810))))

(declare-fun mapRest!14421 () (Array (_ BitVec 32) ValueCell!3942))

(declare-fun mapKey!14421 () (_ BitVec 32))

(declare-fun mapValue!14421 () ValueCell!3942)

(assert (=> mapNonEmpty!14421 (= (arr!9999 _values!506) (store mapRest!14421 mapKey!14421 mapValue!14421))))

(declare-fun b!367349 () Bool)

(declare-fun res!205752 () Bool)

(assert (=> b!367349 (=> (not res!205752) (not e!224814))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!367349 (= res!205752 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10352 _keys!658))))))

(declare-fun b!367350 () Bool)

(declare-fun tp_is_empty!8571 () Bool)

(assert (=> b!367350 (= e!224810 tp_is_empty!8571)))

(declare-fun b!367351 () Bool)

(declare-fun e!224811 () Bool)

(assert (=> b!367351 (= e!224814 e!224811)))

(declare-fun res!205754 () Bool)

(assert (=> b!367351 (=> (not res!205754) (not e!224811))))

(declare-fun lt!169362 () array!21069)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21069 (_ BitVec 32)) Bool)

(assert (=> b!367351 (= res!205754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169362 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!367351 (= lt!169362 (array!21070 (store (arr!10000 _keys!658) i!548 k0!778) (size!10352 _keys!658)))))

(declare-fun b!367352 () Bool)

(declare-fun res!205755 () Bool)

(assert (=> b!367352 (=> (not res!205755) (not e!224814))))

(assert (=> b!367352 (= res!205755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!205750 () Bool)

(assert (=> start!36804 (=> (not res!205750) (not e!224814))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36804 (= res!205750 (validMask!0 mask!970))))

(assert (=> start!36804 e!224814))

(assert (=> start!36804 true))

(declare-fun array_inv!7390 (array!21067) Bool)

(assert (=> start!36804 (and (array_inv!7390 _values!506) e!224812)))

(declare-fun array_inv!7391 (array!21069) Bool)

(assert (=> start!36804 (array_inv!7391 _keys!658)))

(declare-fun b!367353 () Bool)

(declare-fun res!205749 () Bool)

(assert (=> b!367353 (=> (not res!205749) (not e!224814))))

(declare-fun arrayContainsKey!0 (array!21069 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!367353 (= res!205749 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!367354 () Bool)

(declare-fun res!205751 () Bool)

(assert (=> b!367354 (=> (not res!205751) (not e!224814))))

(declare-datatypes ((List!5591 0))(
  ( (Nil!5588) (Cons!5587 (h!6443 (_ BitVec 64)) (t!10749 List!5591)) )
))
(declare-fun arrayNoDuplicates!0 (array!21069 (_ BitVec 32) List!5591) Bool)

(assert (=> b!367354 (= res!205751 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5588))))

(declare-fun b!367355 () Bool)

(declare-fun res!205756 () Bool)

(assert (=> b!367355 (=> (not res!205756) (not e!224814))))

(assert (=> b!367355 (= res!205756 (or (= (select (arr!10000 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10000 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!367356 () Bool)

(assert (=> b!367356 (= e!224809 tp_is_empty!8571)))

(declare-fun b!367357 () Bool)

(declare-fun res!205753 () Bool)

(assert (=> b!367357 (=> (not res!205753) (not e!224814))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!367357 (= res!205753 (validKeyInArray!0 k0!778))))

(declare-fun b!367358 () Bool)

(assert (=> b!367358 (= e!224811 false)))

(declare-fun lt!169363 () Bool)

(assert (=> b!367358 (= lt!169363 (arrayNoDuplicates!0 lt!169362 #b00000000000000000000000000000000 Nil!5588))))

(assert (= (and start!36804 res!205750) b!367347))

(assert (= (and b!367347 res!205757) b!367352))

(assert (= (and b!367352 res!205755) b!367354))

(assert (= (and b!367354 res!205751) b!367349))

(assert (= (and b!367349 res!205752) b!367357))

(assert (= (and b!367357 res!205753) b!367355))

(assert (= (and b!367355 res!205756) b!367353))

(assert (= (and b!367353 res!205749) b!367351))

(assert (= (and b!367351 res!205754) b!367358))

(assert (= (and b!367348 condMapEmpty!14421) mapIsEmpty!14421))

(assert (= (and b!367348 (not condMapEmpty!14421)) mapNonEmpty!14421))

(get-info :version)

(assert (= (and mapNonEmpty!14421 ((_ is ValueCellFull!3942) mapValue!14421)) b!367350))

(assert (= (and b!367348 ((_ is ValueCellFull!3942) mapDefault!14421)) b!367356))

(assert (= start!36804 b!367348))

(declare-fun m!364337 () Bool)

(assert (=> mapNonEmpty!14421 m!364337))

(declare-fun m!364339 () Bool)

(assert (=> b!367357 m!364339))

(declare-fun m!364341 () Bool)

(assert (=> b!367355 m!364341))

(declare-fun m!364343 () Bool)

(assert (=> b!367351 m!364343))

(declare-fun m!364345 () Bool)

(assert (=> b!367351 m!364345))

(declare-fun m!364347 () Bool)

(assert (=> b!367352 m!364347))

(declare-fun m!364349 () Bool)

(assert (=> b!367354 m!364349))

(declare-fun m!364351 () Bool)

(assert (=> b!367358 m!364351))

(declare-fun m!364353 () Bool)

(assert (=> b!367353 m!364353))

(declare-fun m!364355 () Bool)

(assert (=> start!36804 m!364355))

(declare-fun m!364357 () Bool)

(assert (=> start!36804 m!364357))

(declare-fun m!364359 () Bool)

(assert (=> start!36804 m!364359))

(check-sat (not b!367352) (not b!367351) (not b!367353) (not mapNonEmpty!14421) tp_is_empty!8571 (not b!367357) (not b!367354) (not start!36804) (not b!367358))
(check-sat)
