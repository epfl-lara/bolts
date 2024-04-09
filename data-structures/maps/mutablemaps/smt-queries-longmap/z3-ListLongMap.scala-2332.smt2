; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37464 () Bool)

(assert start!37464)

(declare-fun b_free!8583 () Bool)

(declare-fun b_next!8583 () Bool)

(assert (=> start!37464 (= b_free!8583 (not b_next!8583))))

(declare-fun tp!30464 () Bool)

(declare-fun b_and!15843 () Bool)

(assert (=> start!37464 (= tp!30464 b_and!15843)))

(declare-fun b!381325 () Bool)

(declare-fun res!216763 () Bool)

(declare-fun e!231837 () Bool)

(assert (=> b!381325 (=> (not res!216763) (not e!231837))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!381325 (= res!216763 (validKeyInArray!0 k0!778))))

(declare-fun b!381326 () Bool)

(declare-fun res!216766 () Bool)

(declare-fun e!231836 () Bool)

(assert (=> b!381326 (=> (not res!216766) (not e!231836))))

(declare-datatypes ((array!22355 0))(
  ( (array!22356 (arr!10643 (Array (_ BitVec 32) (_ BitVec 64))) (size!10995 (_ BitVec 32))) )
))
(declare-fun lt!178799 () array!22355)

(declare-datatypes ((List!6084 0))(
  ( (Nil!6081) (Cons!6080 (h!6936 (_ BitVec 64)) (t!11242 List!6084)) )
))
(declare-fun arrayNoDuplicates!0 (array!22355 (_ BitVec 32) List!6084) Bool)

(assert (=> b!381326 (= res!216766 (arrayNoDuplicates!0 lt!178799 #b00000000000000000000000000000000 Nil!6081))))

(declare-fun b!381327 () Bool)

(declare-fun e!231835 () Bool)

(declare-fun tp_is_empty!9231 () Bool)

(assert (=> b!381327 (= e!231835 tp_is_empty!9231)))

(declare-fun b!381328 () Bool)

(declare-fun res!216765 () Bool)

(assert (=> b!381328 (=> (not res!216765) (not e!231837))))

(declare-fun _keys!658 () array!22355)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!381328 (= res!216765 (or (= (select (arr!10643 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10643 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!381329 () Bool)

(declare-fun res!216760 () Bool)

(assert (=> b!381329 (=> (not res!216760) (not e!231837))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22355 (_ BitVec 32)) Bool)

(assert (=> b!381329 (= res!216760 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!381330 () Bool)

(declare-fun e!231840 () Bool)

(assert (=> b!381330 (= e!231840 true)))

(declare-datatypes ((V!13413 0))(
  ( (V!13414 (val!4660 Int)) )
))
(declare-datatypes ((tuple2!6214 0))(
  ( (tuple2!6215 (_1!3117 (_ BitVec 64)) (_2!3117 V!13413)) )
))
(declare-datatypes ((List!6085 0))(
  ( (Nil!6082) (Cons!6081 (h!6937 tuple2!6214) (t!11243 List!6085)) )
))
(declare-datatypes ((ListLongMap!5141 0))(
  ( (ListLongMap!5142 (toList!2586 List!6085)) )
))
(declare-fun lt!178795 () ListLongMap!5141)

(declare-fun lt!178794 () ListLongMap!5141)

(assert (=> b!381330 (= lt!178795 lt!178794)))

(declare-fun b!381332 () Bool)

(declare-fun res!216758 () Bool)

(assert (=> b!381332 (=> (not res!216758) (not e!231837))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4272 0))(
  ( (ValueCellFull!4272 (v!6853 V!13413)) (EmptyCell!4272) )
))
(declare-datatypes ((array!22357 0))(
  ( (array!22358 (arr!10644 (Array (_ BitVec 32) ValueCell!4272)) (size!10996 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22357)

(assert (=> b!381332 (= res!216758 (and (= (size!10996 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10995 _keys!658) (size!10996 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!381333 () Bool)

(declare-fun res!216764 () Bool)

(assert (=> b!381333 (=> (not res!216764) (not e!231837))))

(declare-fun arrayContainsKey!0 (array!22355 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!381333 (= res!216764 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!15411 () Bool)

(declare-fun mapRes!15411 () Bool)

(declare-fun tp!30465 () Bool)

(assert (=> mapNonEmpty!15411 (= mapRes!15411 (and tp!30465 e!231835))))

(declare-fun mapValue!15411 () ValueCell!4272)

(declare-fun mapRest!15411 () (Array (_ BitVec 32) ValueCell!4272))

(declare-fun mapKey!15411 () (_ BitVec 32))

(assert (=> mapNonEmpty!15411 (= (arr!10644 _values!506) (store mapRest!15411 mapKey!15411 mapValue!15411))))

(declare-fun b!381334 () Bool)

(assert (=> b!381334 (= e!231836 (not e!231840))))

(declare-fun res!216761 () Bool)

(assert (=> b!381334 (=> res!216761 e!231840)))

(declare-fun lt!178797 () Bool)

(assert (=> b!381334 (= res!216761 (or (and (not lt!178797) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!178797) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!178797)))))

(assert (=> b!381334 (= lt!178797 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!178798 () ListLongMap!5141)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13413)

(declare-fun minValue!472 () V!13413)

(declare-fun getCurrentListMap!2006 (array!22355 array!22357 (_ BitVec 32) (_ BitVec 32) V!13413 V!13413 (_ BitVec 32) Int) ListLongMap!5141)

(assert (=> b!381334 (= lt!178798 (getCurrentListMap!2006 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178796 () array!22357)

(assert (=> b!381334 (= lt!178795 (getCurrentListMap!2006 lt!178799 lt!178796 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178793 () ListLongMap!5141)

(assert (=> b!381334 (and (= lt!178794 lt!178793) (= lt!178793 lt!178794))))

(declare-fun v!373 () V!13413)

(declare-fun lt!178800 () ListLongMap!5141)

(declare-fun +!924 (ListLongMap!5141 tuple2!6214) ListLongMap!5141)

(assert (=> b!381334 (= lt!178793 (+!924 lt!178800 (tuple2!6215 k0!778 v!373)))))

(declare-datatypes ((Unit!11741 0))(
  ( (Unit!11742) )
))
(declare-fun lt!178801 () Unit!11741)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!157 (array!22355 array!22357 (_ BitVec 32) (_ BitVec 32) V!13413 V!13413 (_ BitVec 32) (_ BitVec 64) V!13413 (_ BitVec 32) Int) Unit!11741)

(assert (=> b!381334 (= lt!178801 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!157 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!824 (array!22355 array!22357 (_ BitVec 32) (_ BitVec 32) V!13413 V!13413 (_ BitVec 32) Int) ListLongMap!5141)

(assert (=> b!381334 (= lt!178794 (getCurrentListMapNoExtraKeys!824 lt!178799 lt!178796 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!381334 (= lt!178796 (array!22358 (store (arr!10644 _values!506) i!548 (ValueCellFull!4272 v!373)) (size!10996 _values!506)))))

(assert (=> b!381334 (= lt!178800 (getCurrentListMapNoExtraKeys!824 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!381335 () Bool)

(declare-fun res!216762 () Bool)

(assert (=> b!381335 (=> (not res!216762) (not e!231837))))

(assert (=> b!381335 (= res!216762 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6081))))

(declare-fun mapIsEmpty!15411 () Bool)

(assert (=> mapIsEmpty!15411 mapRes!15411))

(declare-fun b!381336 () Bool)

(declare-fun e!231834 () Bool)

(declare-fun e!231839 () Bool)

(assert (=> b!381336 (= e!231834 (and e!231839 mapRes!15411))))

(declare-fun condMapEmpty!15411 () Bool)

(declare-fun mapDefault!15411 () ValueCell!4272)

(assert (=> b!381336 (= condMapEmpty!15411 (= (arr!10644 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4272)) mapDefault!15411)))))

(declare-fun b!381337 () Bool)

(assert (=> b!381337 (= e!231839 tp_is_empty!9231)))

(declare-fun b!381338 () Bool)

(declare-fun res!216759 () Bool)

(assert (=> b!381338 (=> (not res!216759) (not e!231837))))

(assert (=> b!381338 (= res!216759 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10995 _keys!658))))))

(declare-fun res!216767 () Bool)

(assert (=> start!37464 (=> (not res!216767) (not e!231837))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37464 (= res!216767 (validMask!0 mask!970))))

(assert (=> start!37464 e!231837))

(declare-fun array_inv!7822 (array!22357) Bool)

(assert (=> start!37464 (and (array_inv!7822 _values!506) e!231834)))

(assert (=> start!37464 tp!30464))

(assert (=> start!37464 true))

(assert (=> start!37464 tp_is_empty!9231))

(declare-fun array_inv!7823 (array!22355) Bool)

(assert (=> start!37464 (array_inv!7823 _keys!658)))

(declare-fun b!381331 () Bool)

(assert (=> b!381331 (= e!231837 e!231836)))

(declare-fun res!216757 () Bool)

(assert (=> b!381331 (=> (not res!216757) (not e!231836))))

(assert (=> b!381331 (= res!216757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178799 mask!970))))

(assert (=> b!381331 (= lt!178799 (array!22356 (store (arr!10643 _keys!658) i!548 k0!778) (size!10995 _keys!658)))))

(assert (= (and start!37464 res!216767) b!381332))

(assert (= (and b!381332 res!216758) b!381329))

(assert (= (and b!381329 res!216760) b!381335))

(assert (= (and b!381335 res!216762) b!381338))

(assert (= (and b!381338 res!216759) b!381325))

(assert (= (and b!381325 res!216763) b!381328))

(assert (= (and b!381328 res!216765) b!381333))

(assert (= (and b!381333 res!216764) b!381331))

(assert (= (and b!381331 res!216757) b!381326))

(assert (= (and b!381326 res!216766) b!381334))

(assert (= (and b!381334 (not res!216761)) b!381330))

(assert (= (and b!381336 condMapEmpty!15411) mapIsEmpty!15411))

(assert (= (and b!381336 (not condMapEmpty!15411)) mapNonEmpty!15411))

(get-info :version)

(assert (= (and mapNonEmpty!15411 ((_ is ValueCellFull!4272) mapValue!15411)) b!381327))

(assert (= (and b!381336 ((_ is ValueCellFull!4272) mapDefault!15411)) b!381337))

(assert (= start!37464 b!381336))

(declare-fun m!378277 () Bool)

(assert (=> b!381334 m!378277))

(declare-fun m!378279 () Bool)

(assert (=> b!381334 m!378279))

(declare-fun m!378281 () Bool)

(assert (=> b!381334 m!378281))

(declare-fun m!378283 () Bool)

(assert (=> b!381334 m!378283))

(declare-fun m!378285 () Bool)

(assert (=> b!381334 m!378285))

(declare-fun m!378287 () Bool)

(assert (=> b!381334 m!378287))

(declare-fun m!378289 () Bool)

(assert (=> b!381334 m!378289))

(declare-fun m!378291 () Bool)

(assert (=> b!381335 m!378291))

(declare-fun m!378293 () Bool)

(assert (=> b!381325 m!378293))

(declare-fun m!378295 () Bool)

(assert (=> b!381326 m!378295))

(declare-fun m!378297 () Bool)

(assert (=> mapNonEmpty!15411 m!378297))

(declare-fun m!378299 () Bool)

(assert (=> b!381331 m!378299))

(declare-fun m!378301 () Bool)

(assert (=> b!381331 m!378301))

(declare-fun m!378303 () Bool)

(assert (=> start!37464 m!378303))

(declare-fun m!378305 () Bool)

(assert (=> start!37464 m!378305))

(declare-fun m!378307 () Bool)

(assert (=> start!37464 m!378307))

(declare-fun m!378309 () Bool)

(assert (=> b!381333 m!378309))

(declare-fun m!378311 () Bool)

(assert (=> b!381328 m!378311))

(declare-fun m!378313 () Bool)

(assert (=> b!381329 m!378313))

(check-sat (not start!37464) b_and!15843 (not b!381325) (not b_next!8583) (not b!381335) (not b!381331) tp_is_empty!9231 (not mapNonEmpty!15411) (not b!381334) (not b!381333) (not b!381326) (not b!381329))
(check-sat b_and!15843 (not b_next!8583))
